unit UNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XMLDoc, XMLIntf, xmldom, mscorlib_TLB,
  System_TLB, ComCtrls, ComObj, TDadosNFe, ExtCtrls, Buttons, StdCtrls,
  DrLabel, jpeg, Mask, DBCtrls, Grids, DBGrids, cxPC, cxControls,ShellApi,
  QuickRpt, QRCtrls, FR_DSet, FR_DBSet, FR_Class, FR_Shape,
  FR_BarC, EditFloat, ColorMaskEdit, IdIOHandler, IdIOHandlerSocket,
  IdSSLOpenSSL, IdMessage, IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  UPadrao;

type
  TFNFe = Class(TFPadrao)
    Panel2: TPanel;
    DBPV: TDBGrid;
    DBPL: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    LVai: TLabel;
    LVolta: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LQtd: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBCod: TEdit;
    DBCliente: TEdit;
    PageControl: TcxPageControl;
    TGerarLote: TcxTabSheet;
    TConfere: TcxTabSheet;
    DBAceita: TDBGrid;
    DBErro: TDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    LStatus: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    FSDanfe: TfrReport;
    FSDBDanfe: TfrDBDataSet;
    frBarCodeObject1: TfrBarCodeObject;
    frShapeObject1: TfrShapeObject;
    tConsultas: TTimer;
    PInutilizacao: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edAno: TFloatEdit;
    edNumInicial: TFloatEdit;
    edNumFinal: TFloatEdit;
    Label11: TLabel;
    Label12: TLabel;
    edJustificativa: TColorMaskEdit;
    Label13: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Label14: TLabel;
    Label15: TLabel;
    btnInutilizar: TBitBtn;
    Label16: TLabel;
    edCNPJ: TColorMaskEdit;
    btnFechar: TBitBtn;
    Label17: TLabel;
    ShapeFundo01: TShape;
    ImgFundo01: TImage;
    ImgFimTitulo01: TImage;
    LDescTitulo01: TDRLabel;
    PBotoes01: TPanel;
    BtnFecha01: TSpeedButton;
    PAguarde: TPanel;
    Label3: TLabel;
    LBStatusAguarde: TLabel;
    Image2: TImage;
    procedure FormActivate(Sender: TObject);
    procedure DBCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LVoltaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure TConfereExit(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tConsultasTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInutilizarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);

  private
    { Private declarations } 

   XCODPED: Integer;  //armazena codigo do pedido para recalculos fiscais e updates
   XTIPOPED :String; //atf - 11/02/2009: tipo de pedido PC ou PV

   NrRecibo, XMLAssinado: String;
   chaveNFe: Array of String; // array com as chaves das nfe
   XTentativas: Integer;
   XConsulta: Boolean; // atf - 28/03/2009: ser for consulta de pedido
   XAtivo: Boolean; // atf - 30/03/2009: se tela esta ativa
   XTipoEmissao :Integer; // atf - 27/07/2009: tipo de emissao
   XInutilizacao: Boolean; // inutilizar numeracao
   XCancelamento :Boolean; // cancelamento de nota fiscal

   XLogAtivo: Boolean; // atf - 04/04/2009: verifica se log esta ativo
   XLogNmArquivo: String; // atf - 04/04/2009: nome do arquivo de log
   XLogInfo: String; // atf - 04/04/2009: informações contidas no log

   XAuxEnvio :Boolean; //atf - 28/07/2009: se estiver como true não incrementara numero fiscal em empresa

   procedure AbreLog(nome:String);
   procedure SetInfoLog(texto:String);
   procedure FechaLog;

    //seta o status no painel de aguarde
    procedure StatusAguarde(str:String);

    procedure Enviar;
    procedure EnviarGerar;
    procedure ResetaFiscal;
    procedure ConsultaPedido;
    procedure Zerar;

  public
    { Public declarations }
    Xokcompra:Boolean; //true c foi td ok pedido de compra    

    XTpAmb: Integer; // guarda o tipo de ambiente q esta trabalhando (1-producao, 2-homologacao)
    XUF: WideString; // estado que esta emitindo nota fiscal (estado do registro) ex: PR

    XDir: String; // diretorio das NFe

    XNomeCertificado :WideString; // guarda o nome do certificado

    XLicenca :WideString; // guarde numero da licença de uso da biblioteca

    XSerie :WideString; // serie da nfe

    XModelo :Widestring; // modelo da nfe

    XResultado :Boolean; // resultado de operações realizadas

    procedure AtualizaGrid;

    procedure AtualizaPainel;

    function SalvarXMLEnvio(chave,xml:String):String; //retorna caminho

    function gerarDocAuxiliar(codigo:Integer; tipo:String):String;

    procedure verificarSerie;

    //estado do mouse true ocupado, false disponivel
    procedure EstadoMouse(const Estado:Boolean);

    function BuscarProtocoloXML(const xml:String):String;
    // retorna status da situação
    function ConsultarSituacaoNFe(ws:Widestring; tipoAmbiente:Integer; chaveNFe:String; out retWS:WideString; out protocolo:WideString; out msg:WideString):Integer;

    function EnviarXMLNFe(xml:WideString; out recibo:WideString; out xmlAss:WideString; out retWS:WideString; out msg:WideString):Boolean;

    function BuscaProtocoloAutorizacao(var ws:WideString;var xml:WideString; var ambiente:Integer; var recibo:WideString;  out procNFe:WideString;  out retWS:WideString; out msg:WideString):Integer;

    // gerar XML, realizar validação e enviar (retornando true caso td esteja correto, com chave da NF-e e nº do recibo)
   function GerarNFe(var nfe:TNFe; out chave:WideString; out xml:WideString; out msg:WideString):Boolean;


    // validar nfe
    function ValidarNFe(out nfe:TNFe; out msg:WideString):Boolean;

    // verifica se o diretorio existe no sistema // caso nao o cria
    procedure verificaDiretorio(const dir: String);

    //tirar acentos da string  - CrtEsp passar true para tirar caracteres especiais para formatacao no xml
    function TirarAcentos(CrtEsp:Boolean; str:WideString):WideString;

    // pega o nome do certificado
    function Certificado(const XOpen:Boolean):String;   // pasar true se deseja escolher um novo certificado

    // assina XML
    function AssinarXML(const XML:WideString; const TipoNFe:WideString; out XMLAssinado:WideString):Boolean;

    // gera chave de acesso da NFe
    function ChaveAcesso(const cUF, ano, mes, CNPJ, modelo, serie, numero, codigoSeguranca:WideString; out cNF, cDV, chaveNFe:Widestring):Boolean;

    // gerar lote com id passado, e os ids das notas fiscais no Array // retornando true caso criado com sucesso o lote
    function GerarLote(const idLote:String; const nfeIDArray : Array of String):Boolean;

    // buscar XML a partir do id // caso true se tudo esta correto
    function AbrirEnviNFe(const idNFe:String; out XMLEnviNFe:IXMLNode):Boolean;

    //validar XML  passa o xml a ser validado e o tipo
    function ValidarXML(const tmpXML:Widestring; const tipoXML:Integer):Boolean;

    // enviar lote
    function EnviarLote(const idLote:String):Boolean;

    // ler arquivo resposta de envio de lote
    function LerRespostaLoteNFe(const idLote:String; out msg:String; out nrRecibo:String):Boolean;

    // ler pedido de resposta de envio de lote
    function LerPedidoLoteNFe(const nrRecibo:String; out msg:String; out status:String):Boolean;

    // gravar retorno de envio de lote
    function GravarRetornoLote(const idLote:String; const cabXML:WideString; const retXML:WideString):Boolean;

    // gravar pedido de processamento de lote
    function GravarPedidoLote(const nrRecibo:String; const cabXML:WideString; const retXML:WideString):Boolean;

    // consultar processo de lote
    function ConsultarLote(const idLote:String; out msg:String):Boolean;

    // verifica as notas que estao corretas // se voltar false verificar Array com as chave das notas com erros
    function ConferirRetornoLote(const nrRecibo:String; out msg:String; out erroIDNFeArray:TStrings; out erroMsgNFeArray:TStrings; out chaveNFeArray:TStrings; out nrProtNFeArray:TStrings):Boolean;

    // pedido de cancelamento NFe
    function CancelarNFe(const chaveNFe:String; const tipoAmbiente:Integer; const nrProtocolo:String; const justificativa:String; out msg:String):Boolean;

    // grava retorno pedido de cancelamento
    function GravaRtCanNFe(const nrProtocolo:String; const cabXML:WideString; const retXML:WideString):Boolean;

    // ler resposta de pedido de cancelamento
    function LerCancNFe(const nrProtocolo:String; out newNrProtocolo:String; out msg:String):Boolean;

    //deletar arquivo
    function DeleteArquivo(caminho :String):Boolean;

    // verificar tamanho do xml a partir do texto
    function VerificarTamArquivo(arquivo: string): Boolean;

    // gerar clase NFE a partir do pedido
    function Gerar(out chave:WideString; out xml:WideString;out msg:WideString):Boolean;

    // gerar nfe a partir da devolucao
    //function GerarDevolucao(out chave:WideString; out msg:WideString):Boolean;

    //gera entrada de nfe a partir do código pedido de compra
    //function GerarEntrada(XCodPedCompra:Integer;out msg:WideString):Boolean;

    // true mostrar painel de aguarde
    procedure PainelAguarde(mostrar :Boolean);

    // true serviço em operação
    function ConsultarStatusServico(const scan:Boolean; out msgerro:String):Boolean;

    //pedido de inutilizacao
   function Inutilizacao(ano:WideString; NumNFInicial:String; NumNFFinal:String; CNPJ:String; Justificativa:String; out msg:String):Boolean;

   //gravar retorno de inutilizacao
   function GravaRtInutNFe(const NrSalvar:String; const cabXML:WideString; const retXML:WideString):Boolean;
   
   //ler pedido de inutilização
   function LerRetInuNFe(const NmArquivo:String; out msg:String; out newNrProtocolo:String):Boolean;

    //atf - 11/02/2009:  busca proximo numero fiscal para nfe
    function BuscaProximoNumeroFiscal(NumInicial:Integer):Integer;

    //atf - 11/02/2009: numero pedido / tipo
    procedure SetPedido(tipoEmissao, CodigoPedido:Integer; XTipo:String);

    // atf - 28/03/2009:  numero pedido / tipo
    procedure SetConsulta(CodigoPedido:Integer; XTipo:String);

    //atf - 20/07/2009: seta como inutilização
    procedure SetInutilizacao(tipo:String);

    //atf - 31/07/2009: seta como inutilização
    procedure SetCancelamento(codigo:Integer;tipo:String);

    // atf - 25/03/2009: confere retorno do webservice
    procedure ConfereRetorno;

    // atf - 23/07/2009: visualizar DANFE
    procedure VisualizarDANFE(codigo:Integer; Tipo:String);

  end;

var
  FNFe: TFNFe;

implementation

uses NFe_Util_TLB, Math, UValidacaoNFe, Alxor32, UDMEstoque, AlxMessage,
  UDMSaida, UFiscal, DB, UDMMacs, UMenu, UDMPessoa, UDMEntrada,
  UDMGEOGRAFIA, TypInfo;

{$R *.dfm}

//estado do mouse true como ocupado
procedure TFNFe.EstadoMouse(const Estado:Boolean);
  begin
     if Estado = True then
          Screen.Cursor := CrHourGlass
       else
          Screen.Cursor := CrDefault;
  end;



function TFNFe.EnviarXMLNFe(xml:WideString; out recibo:WideString; out xmlAss:WideString; out retWS:WideString; out msg:WideString):Boolean;

    ///
    ///                 O contribuinte deve formar os lote de acordo com o leiaute.
    ///
    ///    Entradas:
    ///
    ///            siglaUF: Sigla da UF do WS chamado
    ///            SVAN - SEFAZ Virtual do Ambiente Nacional, atende CE, ES, MA, PA, PI, PR e RN.
    ///            SVRS - SEFAZ Virtual do Rio Grande do Sul, atende AC, AL, AM, AP, MS, PB, RJ, RR, SC, SE e TO.
    ///            SCAN - Sistema de Contingência do Ambiente Nacional, deve ser ativada pela UF interessada.
    ///
    ///                NFe: XML da NF-e
    ///
    ///       tipoAmbiente: Código do tipo de ambiente = 1-Produção / 2-Homologação
    ///    nomeCertificado: Nome do titular do certificado a ser utlizado na conexão SSL
    ///                  Ex.: "CN=NFe - Associacao NF-e:99999090910270, C=BR, L=PORTO ALEGRE, O=Teste Projeto NFe RS, OU=Teste Projeto NFe RS, S=RS"
    ///
    ///           msgDados: XML da NF-e para transmissão ao WS  (não deve ser assinada)
    ///
    ///    proxy ,usuario e senha: deve ser informado nos casos em que é necessário o uso de proxy
    ///
    ///    proxy := 'http://proxyserver:port';    // verificar com o cliente qual é o endereço do servidor proxy e a porta https, a porta padrão do https é 443, assim teríamos algo do tipo 'http://192.168.15.1:443'
    ///    usuario := 'nome usuario';
    ///    senha  := 'senha';
    ///
    ///    licenca: chave da licença de uso para ambiente de produção.
    ///
    ///
    ///   Retornos:
    ///
    ///           EnviaNFeSCAN: código do resultado da chamada do WS
    ///              1 - Erro: tipoXML ,tipoXML,inválido (fora do intervalor 0-18)
    ///              2 - Erro: arquivo de Schema XML ,nome do arquivo, não localizado
    ///              3 - Erro: XML mal formado
    ///              4 - Erro: XML não atende Schema XML
    ///              5 - Erro: não previsto
    ///              6 - Erro: a versão da NF-e diverge da versão suportada pela DLL (1.10)
    ///              7 - Nenhum Certificado Selecionado
    ///              8 - Nenhum certificado válido foi encontrado com o nome informado
    ///              9 - Erro Inesperado: "+ex.Message
    ///             10 - Selecionado um Certificado de PF
    ///             11 - Certificado selecionado não tem CNPJ/CPF
    ///             12 - Certificado digital não tem chave privada
    ///             -----------------------Erro Assinatura Digital--------------------------
    ///             13 - Erro: Problema ao acessar o certificado digital - ,exceção,
    ///             14 - Certificado digital inexistente para ,nome,
    ///             15 - XML mal formado + exceção
    ///             16 - A tag de assinatura ,RefUri, inexiste
    ///             17 - A tag de assinatura ,RefUri, não é unica
    ///             18 - Erro Ao assinar o documento - ID deve ser string ,RefUri(Atributo),
    ///             19 - Erro: Ao assinar o documento - ,exceção,
    ///             -----------------------Erro Chamada WS ----------------------------------
    ///             20 - codigo do ambiente inválido
    ///             21 - sigla da UF inválida
    ///             22 - a UF não oferece o serviço
    ///             23 - Arquivo com a URL do WS não localizados
    ///             24 - Erro não tratado de abertura/tratamento Arquivo ws.xml
    ///             25 - Erro de validação de Schema
    ///             26 - Nenhum Certificado Selecionado
    ///             27 - Nenhum certificado válido foi encontrado com o nome informado
    ///             28 - Erro Inesperado no acesso ao certificado digital: "+ex.Message
    ///             29 - Erro: Time-out ao chamar o WS
    ///             30 - Erro: exceção do biblioteca criptográfica
    ///             31 - Erro: conectividade
    ///             32 - Aplicação não licenciada para o CNPJ ,CNPJEmissor,
    ///             33 - Erro: inesperado ao tratar o código de retorno do WS
    ///             --------------------------------------------------------------------------
    ///             34 - Erro: O CNPJ informado tem tamanho diferente de 14 - ,[ ]n,
    ///             35 - Erro: A licença informada tem tamanho diferente de 128 - ,[ ],
    ///             36 - Erro: O arquivo não deve ser asssinado
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
    ///           msgDados: XML com o lote de NF-e para transmissão ao WS
    ///           msgCabec: XML do cabeçalho enviado ao WS (útil para depuração)
    ///           msgRetWS: XML de resposta do WS
    ///        NFeAssinada: XML da NF-e assinada
    ///       msgResultado: literal do resultado da chamada do WS EnviaLote

var

Util:NFe_Util_Interface;
i : integer;
cabMsg, DadosMsg : WideString;

begin

   Result := False;

  if (xml <> '')  then
  begin
      Util := CoUtil.Create;

      EstadoMouse(True);

       If XTipoEmissao <> 3
       Then Begin
           i:= Util.EnviaNFe(xml, recibo, XNomeCertificado, cabMsg, DadosMsg, retWS, msg,  xmlAss, '', '', '', XLicenca);
       End
       Else begin
           i := Util.EnviaNFeSCAN('SCAN', xml, recibo, XNomeCertificado, cabMsg, DadosMsg, retWS, msg,  xmlAss, '', '', '', XLicenca);
       End;
      EstadoMouse(False);

      GravarRetornoLote(recibo, DadosMsg, retWS);

      //
      //
      //  o envio da NF-e é um processo assíncrono, assim é necessário buscar o resultado do processamento da NF-e
      //  com o uso da BuscaNFeSCAN
      //
      if i <> 103 then
          msg := 'Falha na chamada do WS...' + #13 + msg
      else
        begin
          Result := True;
        end;

      Util := nil;
  end
  else
      msg := 'XML não encontrado.';
end;

function TFNFe.ConsultarSituacaoNFe(ws:Widestring; tipoAmbiente:Integer; chaveNFe:String; out retWS:WideString; out protocolo:WideString; out msg:WideString):Integer;
var
    Util:NFe_Util_Interface;
    i : integer;
    cabMsg, DadosMsg :WideString;
    Fsaida: TextFile;
    vXMLDoc: TXMLDocument;
    NodePai: IXMLNode;
Begin
  Result := -1;
  if (chaveNFe <> '')
  then begin
    Util := CoUtil.Create;
    retWS :='';
    cabMsg :='';
    DadosMsg := '';
    EstadoMouse(True);
    If XTipoEmissao <> 3
    Then Begin
       i:= Util.ConsultaNF(ws, tipoAmbiente, XNomeCertificado, cabMsg, DadosMsg, retWS, msg, chaveNFe, '', '', '');
    End
    Else Begin
       i:= Util.ConsultaNFSCAN('SCAN', tipoAmbiente, XNomeCertificado, cabMsg, DadosMsg, retWS, msg, chaveNFe, '', '', '');
    End;

    EstadoMouse(False);

     DadosMsg := TirarAcentos(False, DadosMsg);
     verificaDiretorio(XDir+'consSitNfe');
     AssignFile(Fsaida, XDir+'consSitNfe\'+chaveNFe+'-ped-sit.xml');
     Rewrite(Fsaida);
     Write(Fsaida, DadosMsg);
     CloseFile(Fsaida);

     retWS := TirarAcentos(False, retWS);
     verificaDiretorio(XDir+'retconsSitNfe');
     AssignFile(Fsaida, XDir+'retconsSitNfe\'+chaveNFe+'-sit.xml');
     Rewrite(Fsaida);
     Write(Fsaida, retWS);
     CloseFile(Fsaida);

      // Cria a variável baseada no TXMLDocument
        vXMLDoc := TXMLDocument.Create(self);
       Try

           vXMLDoc.Active := False;
           vXMLDoc.XML.Text := retWS;
           vXMLDoc.Active := True;

        // Aqui eu peço para encontrar a Tag <>>
        NodePai := vXMLDoc.DocumentElement.ChildNodes.FindNode('infProt');;

        Result := StrToInt(NodePai.childNodes['cStat'].Text);
        msg := NodePai.childNodes['xMotivo'].Text;
        protocolo := NodePai.childNodes['nProt'].Text;

      Except
         Result := -1;
         If Length(msg) = 0 Then
           msg := 'Falha na leitura da resposta do WebService.';
       end;

       Util := nil;

 End
 Else
   msg := 'Chave informada não válida.';

End;

function TFNFe.BuscaProtocoloAutorizacao(var ws:WideString;var xml:WideString; var ambiente:Integer; var recibo:WideString;  out procNFe:WideString;  out retWS:WideString; out msg:WideString):Integer;

            //
            //  Classe para Buscar NF-e
            //
            //  Entrada:
            //
            //         NFeAssinada - NF-e transmitida (com assinatura Digital)
            //         nroRecibo - número do recibo de entrega a ser consultado
            //         nomeCertificado - nome do Certificado a ser utilizado na conexão SSL
            //         proxy
            //         usuario
            //         senha
            //         licenca
            //      
            //  Retornos:
            //
            //         procNFe      - procNFe (NFe + protocolo de autorização)
            //         msgCabec     - mensagem de cabeçalho utilizado
            //         msgDados     - mensagem enviado ao WS
            //         msgRetWS     - mensagem de retorno do WS
            //         msgResultado - mensagem de Resultado
            //
            //            
            //
            //  cria mensagens de entrada, retorno, cabeçalho e resultado da chamada desta classe
            //
            //  Retorno     0 - OK
            {          1	Erro: tipoXML ,tipoXML,inválido (fora do intervalor 0-18)
                        2	Erro: arquivo de Schema XML ,nome do arquivo, não localizado
                        3	Erro: XML mal formado
                        4	Erro: XML não atende Schema XML
                        5	Erro: não previsto
                        6	Erro: XML com caracteres de identificação de codificação UTF-8/16/32/7
	
                        7	Erro: Tipo Ambiente informado ,, diverge do tpAmb da NF-e entrada:,,
                        8	Erro: tag tpAmb inexistente no NF-e de entrada 
                        9	Erro: UF informada (,,) diverge do cUF do emitente da NF-e entrada (,,)
                        10	Erro: tag cUF do emitente inexistente no NF-e de entrada
                        11	Erro: tag CNPJ do emitente não localizada no arquivo de entrada
    	
                        12	Erro: codigo do ambiente inválido
                        13	Erro: sigla da UF inválida
                        14	Erro: a UF não oferece o serviço
                        15	Erro: Arquivo com a URL do WS não localizados
                        16	Erro não tratado de abertura/tratamento Arquivo ws.xml
                        17	Erro de validação de Schema
	
                        18	Erro: Nenhum Certificado Selecionado
                        19	Erro: Nenhum certificado válido foi encontrado com o nome informado
                        20	Erro Inesperado no acesso ao certificado digital: "+ex.Message
	
                        21	Erro: Time-out ao chamar o WS
                        22	Erro: exceção do biblioteca criptográfica
                        23	Erro: conectividade
	
                        24	Erro: tipoXML ,tipoXML,inválido (fora do intervalor 0-18)
                        25	Erro: arquivo de Schema XML ,nome do arquivo, não localizado
                        26	Erro: XML mal formado
                        27	Erro: XML não atende Schema XML
                        28	Erro: não previsto
                        29	Erro: XML com caracteres de identificação de codificação UTF-8/16/32/7
	
                        30	Erro: tag cStat não localizado na mensagem de retorno
                        31	Erro: tag xMotivo não localizado na mensagem de retorno
                        32	Erro: <DigestValue> da NF-e  diverge do <digVal> do protocolo
                        33	Erro: Busca do lote =,recibo,, mas não existe protocolo para o a NF-e com chave de acesso ,,
                        34	Erro: inesperado ao tratar o XML do retorno do WS
                        35	Erro: tag cStat não localizado no Protocolo de retorno (protNFe)
                        36	Erro: tag xMotivo não localizado no Protocolo de retorno (protNFe)



                        105 - Lote em processamento

                        106 - Lote não localizado

                        100 - NF-e Autorizada

                        2xx - rejeição do WS

                        }

var

Util:NFe_Util_Interface;
i : integer;
cabMsg, DadosMsg :WideString;

begin
   Result := -1;
   msg := '';
  if (recibo <> '')  then
  begin
      Util := CoUtil.Create;
      retWS := '';
      cabMsg := '';
      EstadoMouse(True);
      If XTipoEmissao <> 3
      Then Begin
           i:= Util.BuscaNFe(ambiente, ws, xml, recibo, procNFe, XNomeCertificado, cabMsg, DadosMsg, retWS, msg, '', '', '', XLicenca);
      End
      Else Begin
           i:= Util.BuscaNFeSCAN('SCAN', ambiente, ws, xml, recibo, procNFe, XNomeCertificado, cabMsg, DadosMsg, retWS, msg, '', '', '', XLicenca);
      End;

      EstadoMouse(False);

      GravarPedidoLote(recibo, DadosMsg, retWS);

      Result := i;

      Util := nil;
  end
  else
      msg := 'Número do Recibo inexistente...';
end;



function TFNFe.SalvarXMLEnvio(chave,xml:String):String;
var
   Fsaida: TextFile;
Begin
  verificaDiretorio(XDir+'enviNFe');
   AssignFile(Fsaida, XDir+'enviNFe\'+chave+'-enviNFe.xml');
   Rewrite(Fsaida);
   Write(Fsaida, xml);
   CloseFile(Fsaida);

   Result := XDir+'enviNFe\'+chave+'-enviNFe.xml';
End;

procedure TFNFe.verificarSerie;
Begin
  If XTipoEmissao <> 3
  Then Begin
    //pega o número de série em empresa
     if DMMACS.TEmpresa.FieldByName('NFESERIE').AsString <> '' then
        XSerie := DMMACS.TEmpresa.FieldByName('NFESERIE').AsString
     else
        XSerie := '0';
  End
  Else Begin
     //pega o número de série no SCAN em empresa
     if DMMACS.TEmpresa.FieldByName('NFESERIESCAN').AsString <> '' then
        XSerie := DMMACS.TEmpresa.FieldByName('NFESERIESCAN').AsString
     else
        XSerie := '900';    
  End;

End;

function TFNFe.gerarDocAuxiliar(codigo:Integer; tipo:String):String;
var
  xml :TStringList;
  codPessoa, cont :Integer;
Begin
   Result := '';

   xml := TStringList.Create;

   xml.Add('<?xml version="1.0" encoding="UTF-8"?>');
   xml.Add('<outrasInfDANFe>');

   If tipo = 'PV'
    Then Begin
       FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA' , IntToStr(codigo), '');
       FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', IntToStr(codigo), '');
       FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE',DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsString,'');
       codPessoa := DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsInteger;
    End
    Else Begin
       FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', IntToStr(codigo), '');
       FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', IntToStr(codigo), '');
       FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC', DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsString, '');
       codPessoa := DMPESSOA.TFornecedor.FieldByName('COD_PESSOA').AsInteger;
    End;

   //verificar se no xml esta true para aparecer hora de saida
    If FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('horasaida') <> nil
    Then Begin
       If UpperCase(Trim(FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('horasaida').Text)) = 'TRUE'
       Then Begin
           If tipo = 'PV'
           Then Begin
               xml.Add(#9 + '<horasaida>' + FormatDateTime('hh:mm', DMSAIDA.TFiscPV.FieldByName('HORASAID').AsDateTime) + '</horasaida>');
           End
           Else Begin
               xml.Add(#9 + '<horasaida>' + FormatDateTime('hh:mm', DMENTRADA.TFiscPC.FieldByName('HORASAID').AsDateTime) + '</horasaida>');
           End;
       End;
    End;

    //verificar se no xml esta marcado fone emitente
    If FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('foneEmitente') <> nil
    Then Begin
       If Length(Trim(FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('foneEmitente').Text)) > 0
       Then Begin
           xml.Add(#9 + '<FoneEmitente>' + FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('foneEmitente').Text + '</FoneEmitente>');
       End;
    End;  

    // localiza pessoa Juridica de acordo com PESSOA
    If FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', IntToStr(codPessoa), '')
    Then Begin
       xml.Add(#9 + '<nomefantasiadest>' + DMPESSOA.TPessoaJ.FieldByName('RAZAO_SOCIAL').AsString + '</nomefantasiadest>');
    End;

    If tipo = 'PV'
    Then Begin
       xml.Add(#9 + '<codigodest>' + DMPESSOA.TCliente.FieldByName('COD_INTERNO').AsString + '</codigodest>');
    End
    Else Begin
       xml.Add(#9 + '<codigodest>' + DMPESSOA.TFornecedor.FieldByName('COD_INTERNO').AsString + '</codigodest>');
    End;        

    If FiltraTabela(DMPESSOA.TEmail, 'EMAIL', 'COD_PESSOA', IntToStr(codPessoa), '')
    Then Begin
       xml.Add(#9 + '<emaildest>' + DMPESSOA.TEmail.FieldByName('EMAIL').AsString  + '</emaildest>');
    End;

    //verificar se foi informado local do logotipo
    If FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('logotipo') <> nil
    Then Begin
       If Length(Trim(FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('logotipo').Text)) > 0
       Then Begin
           xml.Add(#9 + '<logotipo>' + FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('logotipo').Text + '</logotipo>');
       End;
    End;

    //verificar se esta configurado para aparecer faturas
    If FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('faturas') <> nil
    Then Begin
       If UpperCase(Trim(FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('faturas').Text)) = 'TRUE'
       Then Begin
           If tipo = 'PV'
           Then Begin
               xml.Add(#9 + '<fatura>');
               //atf - 22/01/2009:   insere sql necessária para filtrar parcelas da conta
               DMMacs.TALX.Close;
               DMMacs.TALX.sql.Clear;
               DMMacs.TALX.SQL.Add('SELECT parcelacr.dtvenc, parcelacr.NUMPARC, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
               DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador='+#39+'PEDVENDA'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) ');
               DMMacs.TALX.ParamByName('CODGERADOR').AsInteger := codigo;
               DMMacs.TALX.Open;
               cont := 0;
               while not DMMACS.TALX.Eof do
               Begin
                   cont := cont+1;
                   xml.Add(#9 + #9 + '<Parcela' + IntToStr(cont) + '>');
                   xml.Add(#9 + #9 + #9 + '<nPar>' + IntToStr(cont) + '</nPar>');
                   xml.Add(#9 + #9 + #9 + '<cFatura>' + DMMacs.TALX.FieldByName('NUMPARC').AsString + '</cFatura>');
                   xml.Add(#9 + #9 + #9 + '<nValor>' + FormatFloat('0.00', DMMacs.TALX.FieldByName('valor').AsCurrency) + '</nValor>');
                   xml.Add(#9 + #9 + #9 + '<dVencto>' + DMMacs.TALX.FieldByName('dtvenc').AsString + '</dVencto>');
                   xml.Add(#9 + #9 + '</Parcela' + IntToStr(cont) + '>');
                   DMMACS.TALX.Next;
               End;
               xml.Add(#9 + '</fatura>');
           End;
       End;
    End;      
   xml.Add('</outrasInfDANFe>');

    If tipo = 'PV'
    Then Begin
       Result := XDir+'enviNFe\'+DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString+'-enviNFedanfe.xml';
    End
    Else Begin
       Result := XDir+'enviNFe\'+DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString+'-enviNFedanfe.xml';
    End;

    xml.SaveToFile(Result);

End;

// gerar XML, realizar validação e enviar (retornando true caso td esteja correto, com chave da NF-e e nº do recibo)
function TFNFe.GerarNFe(var nfe:TNFe; out chave:WideString; out xml:WideString; out msg:WideString):Boolean;
var
    i, f, codST, modFrete, XTotal, XTotalMed: Integer;
    Util:NFe_Util_Interface;
    PISOutros, PISST, COFINSOutros, COFINSST: Boolean; // ver em PIS outros
    Fsaida: TextFile;
    XMLAss: WideString;
    XDados : TIde;
    XEmit : TEmitente;
    XDest : TDestinatario;
    XProd : TProd;
    XImposto: TImposto;
    XTotalNfe: TTotalICMS;
    XTransporte: TTransporte;
    cUF,  CNPJ, modelo,ano, mes, serie, numero, codigoSeguranca, cNF, cDV, chaveNFe: WideString;

    ano_aux, mes_aux, dia_aux:word;

    //novo
    emit, dest, referenciada, ide, produtos, totalICMS, total: String;

    lacre, vol, reboque, veicTransp, retTransp, transporta, transportador: String;

    produto, ICMS, codPIS, PIS, codCOFINS, COFINS, imposto, detalheproduto, detalhe, especifico, adicionais: String;

    final :String;

    auxiliar :String;
begin
{ALEX TODO O COMENTADO FAZ PARTE

    Util := CoUtil.Create;

    XDados := nfe.Dados;
    XEmit := nfe.Emitente;
    XDest := nfe.Destinatario;

   // gerar chave
   DecodeDate(XDados.DtEmissao, ano_aux, mes_aux, dia_aux);
   cUF := IntToStr(XDados.UFCodigo);
   ano := Copy(IntToStr(ano_aux), 3, 2);
   mes := IntToStr(mes_aux);
   CNPJ := XEmit.CNPJ;
   modelo := XModelo;
   serie := XSerie;
//   numero := IntToStr(XDados.NumeroDocFisc);

     //pegar no xml
    If FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('codigoSeguranca') <> nil
    Then Begin
       codigoSeguranca := Trim(FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('codigoSeguranca').Text);
       If Length(codigoSeguranca) = 0 Then
           codigoSeguranca := 'ORION';
    End
    Else Begin
       codigoSeguranca := 'ORION';
    End;

   if not ChaveAcesso(cUF, ano, mes, CNPJ, modelo, serie, numero, codigoSeguranca, cNF, cDV, chaveNFe) then begin
       msg := 'Erro na geração da chave de acesso da NFe!';
       Result := False;
       Exit;
   end;

       referenciada := '';
       If Length(XDados.NFeRef) > 1 Then
           referenciada := Util.NFeRef(XDados.NFeRef);

       //DADOS IDENTIFICADOR
       ide := Util.identificador(XDados.UFCodigo, StrToInt(cUF), XDados.NatuOpera, XDados.FormaPagam,
//                   XDados.modelo, StrToInt(serie), XDados.NumeroDocFisc, XDados.DtEmissao, XDados.DtSaiEnt,
//                   XDados.TipoDocFisc, XDados.MunicipioCodigo, referenciada, XDados.TipoImpressao,
//                   XDados.TipoEmissao, StrToInt(cDV), XDados.TipoAmb, XDados.finNFe, XDados.procEmi, XDados.VersaoAplicativo);

       /// DADOS DO EMITENTE
       {alex faz parte
       emit := Util.emitente(CNPJ, '', XEmit.Nome, XEmit.NomeFantasia, XEmit.Logradouro, XEmit.Numero, XEmit.Complemento, XEmit.Bairro, XEmit.CodigoMunicipio, XEmit.NomeMunicipio, XEmit.UF, XEmit.CEP, XEmit.CodigoPais, XEmit.NomePais, XEmit.Telefone, XEmit.IE, XEmit.IEST, '', '');
                      }
        //DADOS DESTINATÁRIO
        {alex faz parte
       dest := Util.destinatario(XDest.CNPJ, XDest.CPF, XDest.Nome, XDest.Logradouro, XDest.Numero, XDest.Complemento, XDest.Bairro, XDest.CodigoMunicipio, XDest.NomeMunicipio, XDest.UF, XDest.CEP, XDest.CodigoPais, XDest.NomePais, XDest.Telefone, XDest.IE, XDest.ISUFRAMA);
                       }
   // pega a qtd de produtos do array
   //alex faz parteXTotal := Length(nfe.Produtos);

   {alex  todo o comentado abaixo faz parte
   detalhe := '';

   for i := 1 to Xtotal do begin

       especifico := '';
       produto := '';
       ICMS := '';
       COFINS := '';
       PIS := '';
       imposto := '';
       detalheproduto := '';


        XProd := nfe.Produtos[i-1].Produto;
        XImposto := nfe.Produtos[i-1].Imposto;

          //DADOS ESPECIFICOS
           if XProd.Medicamento <> nil then begin
               XTotalMed := Length(XProd.Medicamento);
               for f := 0 to XTotalMed-1 do begin
                   especifico := especifico + Util.med(XProd.Medicamento[f].NmLote, XProd.Medicamento[f].QntLote,
                                   XProd.Medicamento[f].DtFabricacao, XProd.Medicamento[f].DtValidade, XProd.Medicamento[f].ValorMaxCons);
                end;
            end;

          //DETALHE PRODUTO
          produto := Util.produto(XProd.CodigoProduto, XProd.GTIN, XProd.Descricao,
                           XProd.CodigoNCM, XProd.CodigoEXTIPI, XProd.Genero, XProd.CFOP,
                           XProd.UnidadeComercial, XProd.QntComercial, XProd.ValorUnitario,
                           XProd.ValorBruto, XProd.GTIN, XProd.UnidadeTributavel, XProd.QntTributavel,
                           XProd.ValorUnitTribut, XProd.ValorFrete, XProd.ValorSeguro, XProd.ValorDesconto, '', especifico);

       //Tributação pelo ICMS
       codST := XImposto.ICMS.CodigoST;
       auxiliar := '';
       case codST of
           0 : auxiliar := '00';//Tributada Integralmente
           1 : auxiliar := '10';//Tributada e com cobrança do ICMS por substituição tributária
           2 : auxiliar := '20';//Com Redução de base de calculo
           3 : auxiliar := '30';//Isenta ou não tributada e com cobrança do ICMS por substituição tributaria
           4 : auxiliar := '40';//Isenta
           5 : auxiliar := '40';//Não tributada
           6 : auxiliar := '40';//Suspensão
           7 : auxiliar := '51';//Diferimento
           8 : auxiliar := '60';//ICMS cobrado anteriormente por substituição tributária
           9 : auxiliar := '70';//Com redução de base de cálculo e cobrança do ICMS por substituição tributária;
           else begin
               codST := 10;
               auxiliar := '90';//Outros
           end;
       end;

         //DADOS ICMS

         ICMS := Util.icms('0', auxiliar, XImposto.ICMS.ModDetBC, XImposto.ICMS.PercRedBC, XImposto.ICMS.ValorBC, XImposto.ICMS.AliquotaICMS, XImposto.ICMS.ValorICMS, XImposto.ICMS.ModBDST, XImposto.ICMS.PercValorST, XImposto.ICMS.PercRedST, XImposto.ICMS.ValorBCST , XImposto.ICMS.AliquotaST , XImposto.ICMS.ValorST);


            //-----------------------------------
            /// parte de II ( Dados do Imposto de Importação )
            //---------------------------------

            //Dados do PIS
               // Ebb - (PIS)
              // NodeNivelEbb := NodeNivelEb.ChildNodes['PIS'];

            //1 - PIS tributada pela alíquota
            //2 - PIS tributado por Qtde
            //3 - PIS não tributado
            //4 - PIS outras operações

            case XImposto.PIS.CodigoPIS of
               1 : codPIS := '01';
               2 : codPIS := '03';
               3 : codPIS := '04';
            End;

            PIS := Util.PIS(codPIS, XImposto.PIS.ValorBC, XImposto.PIS.AliquotaPer, XImposto.PIS.Valor, XImposto.PIS.QntVend, XImposto.PIS.AliquotaReais);


               //       Dados do COFINS


               // Ebd - (COFINS)
               //NodeNivelEbd := NodeNivelEb.ChildNodes['COFINS'];

               // 1 -  CONFINS TRIBUTADA Aliquota
               // 2 -  CONFINS TRIBUTADA por Qtde
               // 3 -  CONFINS não TRIBUTADA
               // 4 -  CONFINS outras operações

               Case XImposto.COFINS.CodigoCOFINS of
                   1 : codCOFINS := '01';
                   2 : codCOFINS := '03';
                   3 : codCOFINS := '04';
                   Else Begin
                      codCOFINS := '99';
                   End;
               End;

               COFINS := Util.COFINS(codCOFINS, XImposto.COFINS.ValorBC, XImposto.COFINS.AliquotaPer, XImposto.COFINS.Valor, XImposto.COFINS.QntVend, XImposto.COFINS.AliquotaReais);


          //DADOS DO IMPOSTO
          imposto := '';
          imposto := Util.imposto(ICMS, '', '', PIS, '', COFINS, '', '');

          //DADOS ACIDIONAIS PRODUTO
          adicionais := '';
          adicionais := Util.infAdProd(nfe.Produtos[i-1].InfAdicional);

          //DADOS DETALHE
          detalhe := detalhe + Util.detalhe(i, produto, imposto, adicionais);

        end;    //-- fim do laço das tags do produto


        XTotalNfe := nfe.Total;
        //Valores totais da NF-e
        totalICMS := Util.totalICMS(XTotalNfe.VlrBCICMS, XTotalNfe.VlrICMS, XTotalNfe.VlrBCST, XTotalNfe.VlrtST,
                           XTotalNfe.VlrProdServ, XTotalNfe.VlrFrete, XTotalNfe.VlrSeguro, XTotalNfe.VlrDesconto,
                           XTotalNfe.VlrII, XTotalNfe.VlrIPI, XTotalNfe.VlrPIS, XTotalNfe.VlrCOFINS, XTotalNfe.VlrDespesa,
                           XTotalNfe.VlrTotal);
        total := Util.total(totalICMS, '', '');


       XTransporte := nfe.Transporte;

      //Dados dos transportes da NF-e

       //Modalidade do frete
       //0 - por conta do emitente;
       //1 - por conta do destinatario

       modFrete := XTransporte.ModFrete;

       transporta := '';
       retTransp := '';
       veicTransp := '';
       lacre := '';
       vol := '';
       reboque := '';
       transportador := '';
       if XTransporte.Transportador <> nil then begin

           //Dados do transportador
           transporta := Util.transporta(XTransporte.Transportador.CNPJ, XTransporte.Transportador.CPF, XTransporte.Transportador.Nome,
                           XTransporte.Transportador.IE, XTransporte.Transportador.Endereco, XTransporte.Transportador.Municipio,
                           XTransporte.Transportador.UF);

           //   Dados do veiculo
           if XTransporte.Veiculo <> nil then begin
               veicTransp := Util.veicTransp(XTransporte.Veiculo.placa, XTransporte.Veiculo.UF, XTransporte.Veiculo.RNTC);
           end;

           //Dados do reboque
           if XTransporte.Reboque <> nil then begin

               reboque := Util.reboque(XTransporte.Reboque.placa, XTransporte.Reboque.UF, XTransporte.Reboque.RNTC);

           end;

           // grupo de volumes
           if XTransporte.Volume <> nil then begin
              if XTransporte.Volume.Lacres <> nil
              then begin
                    for i:=0 to Length(XTransporte.Volume.Lacres)-1 do begin
                       lacre := lacre + Util.lacres(XTransporte.Volume.Lacres[i].Numero);
                    end;
              end;
              vol := '';
              vol := Util.vol(XTransporte.Volume.QntVol, XTransporte.Volume.Especie, XTransporte.Volume.Marca,
                           XTransporte.Volume.NumeracaoVol, XTransporte.Volume.PesoLiquido, XTransporte.Volume.PesoBruto, lacre);
            end;


         end;//-------------------FIM-------------------

         transportador := Util.transportador(IntToStr(modFrete), transporta, retTransp, veicTransp, reboque, vol);


     If Length(nfe.InfAdicionais) > 1 Then
       adicionais := Util.infAdic(nfe.InfAdicionaisFisco, nfe.InfAdicionais, '', '', '')
     Else
       adicionais := '';

     final := Util.NFe('1.10', chaveNFe, ide, emit, '', dest, '', '', detalhe, total, transportador, '', adicionais, '', '');

     verificaDiretorio(XDir+'TMP');
     AssignFile(Fsaida, XDir+'TMP\'+chaveNFe+'-enviNFe.xml');
     Rewrite(Fsaida);
     Write(Fsaida, final);
     CloseFile(Fsaida);


     {
     if not AssinarXML(final, 'infNFe', XMLAss) then begin
        msg:='Falha na assinatura do XML.';
        Result := False;
        Exit;
     end;
}
     { faz parte
     chave := chaveNFe;
     xml := final;
     Result := True;
      }
end;




// assinar xml com certificado
function TFNFe.AssinarXML(const XML:WideString; const TipoNFe:WideString; out XMLAssinado:WideString):Boolean;
var
Util:NFe_Util_Interface;
i:integer;
vXMLDoc: TXMLDocument;
mensagem,nome:WideString;
  ///  1.Assinar: Assinatura Digital XML no padrão do Projeto NF-e
    ///
    ///
    ///    Entradas:
    ///     XMLString: string XML a ser assinada
    ///     RefUri : Referência da URI a ser assinada (Ex. infNFe
    ///     X509Cert : certificado digital a ser utilizado na assinatura digital
    ///
    ///    Retornos:
    ///
    ///      Assinar : código do resultado
    ///
    ///              0 - Assinatura realizada com sucesso
    ///              1 - Erro: Problema ao acessar o certificado digital - %exceção%
    ///              2 - Certificado digital inexistente para %nome%
    ///              3 - XML mal formado + exceção
    ///              4 - A tag de assinatura %RefUri% inexiste
    ///              5 - A tag de assinatura %RefUri% não é unica
    ///              6 - Erro Ao assinar o documento - ID deve ser string %RefUri(Atributo)%
    ///              7 - Erro: Ao assinar o documento - %exceção%
    ///
    ///      XMLStringAssinado : string XML assinada
    ///
    ///      msgResultado      : Literal da mensagem resultado
begin
    Util := CoUtil.Create;
    if XML <> '' then
    begin
       EstadoMouse(False);
       i:= Util.Assinar(XML, TipoNFe, Certificado(False), XMLAssinado, mensagem);
       EstadoMouse(False);
       if i <> 0 then begin
           MessageDlg( 'Processo de assinatura falhou...'+mensagem, mtInformation, [mbOk], 0);
           Util := nil;
       end else begin
           Util := nil;
           Result := True;
           Exit;
       end;
   end else begin
       MessageDlg( 'Documento XML para assinatura não informado...', mtInformation, [mbOk], 0);
       Result := False;
       Exit;
  end;

  Result := False;

end;

// verifica se a pasta existe no sistema
   procedure TFNFe.verificaDiretorio(const dir: String);
   var
   Diretorio: String;
   begin
       //Diretorio := ExtractFilePath(Application.ExeName)+''+dir;
       if not DirectoryExists(dir) then begin
           ForceDirectories(dir);
           //ShowMessage('O diretorio '+Diretorio+' foi criado com sucesso!');
       end;
   end;


// pega o nome do certificado
function TFNFe.Certificado(const XOpen:Boolean):String;
var
Util:NFe_Util_Interface;
i:integer;
mensagem,nome:WideString;
begin
   if (XNomeCertificado = '') or (XOpen = True) then
   begin
       nome := '';
       Util := CoUtil.Create;
       i:= Util.PegaNomeCertificado(nome, mensagem);
       if i > 1 then
           MessageDlg( 'Ocorreu uma falha no acesso ao repositório de certificados digitais...'+#13+#13+mensagem, mtInformation, [mbOk], 0)
       else
      begin
           if i = 0 then
           //MessageDlg( 'Certificado selecionado:'#13+#13+nome, mtInformation, [mbOk], 0)
           else
               //MessageDlg( 'O Certificado:'#13+#13+nome+#13+#13+'foi localizado no repósitorio de certificados!', mtInformation, [mbOk], 0);
           end;
        XNomeCertificado := nome;
       end;
   Result := XNomeCertificado;   // volta o nome do certificado

end;


//gerar chave de acessso!!
function TFNFe.ChaveAcesso(const cUF, ano, mes, CNPJ, modelo, serie, numero, codigoSeguranca:WideString; out cNF, cDV, chaveNFe:Widestring):Boolean;
var
    i: Integer;
    Util:NFe_Util_Interface;
    msgResultado: WideString;
begin
    Util := CoUtil.Create;
    EstadoMouse(True);
    i:= Util.CriaChaveNFe(cUF, ano, mes, CNPJ, modelo, serie, numero, codigoSeguranca, msgResultado, cNF, cDV, chaveNFe);
    EstadoMouse(False);
    if i > 0 then begin
        ShowMessage('Erro na criação da chave: '+msgResultado);
        Result := False;
        Exit;
    end;

    Result := True;

end;

function TFNFe.GerarLote(const idLote:String; const nfeIDArray : Array of String):Boolean;
var
  qtdeErros, i, tamArray: Integer;
  Util:NFe_Util_Interface;
  tmpXMLDoc,vXMLLote: TXMLDocument;
  tmpXML: IXMLNode;
  teste: WideString;
begin

    vXMLLote := TXMLDocument.Create(self);
       Try
       With vXMLLote do begin
               Active := True;
               Version := '1.0';
               Encoding := 'UTF-8';
           //Tipo Nota Fiscal Eletronica
           AddChild('enviNFe','http://www.portalfiscal.inf.br/nfe');
           //Tipo Versao da NF-e
           ChildNodes['enviNFe'].Attributes['versao'] := '1.10';
           // id do lote
           ChildNodes['enviNFe'].AddChild('idLote').NodeValue := idLote;

           tamArray := Length(nfeIDArray);

           // vare o array add todas as notas no lote
           for i := 0 to tamArray-1 do begin
               //teste := nfeIDArray[i-1];
               if not AbrirEnviNFe(nfeIDArray[i], tmpXML) then begin
                  Result := False;
                  Exit;
               end;

               ChildNodes['enviNFe'].ChildNodes.Add(tmpXML);

           end;

           // valida o xml
           if not ValidarXML(vXMLLote.XML.Text,2) then begin
               Result := False;
               Exit;
           end;

           verificaDiretorio(XDir+'loteNFe');
           // salva o xml no pasta de NFe\nfeLote
           vXMLLote.SaveToFile(XDir+'loteNFe\'+idLote+'-env-lote.xml');

           Result :=  True;

       end;
       finally
           vXMLLote.Free;
       end;

end;
// abre nfe xml a partir de id informado e a retorna
function TFNFe.AbrirEnviNFe(const idNFe:String; out XMLEnviNFe:IXMLNode):Boolean;
var
  tmpXMLDoc: TXMLDocument;
begin

   // tirar espaços
   //idNFe := Trim(idNFe);

  // verificar se é válido o id
 if (Trim(idNFe) <> '') or (Length(idNFe) = 44) then begin

    // Cria a variável baseada no TXMLDocument
    tmpXMLDoc := TXMLDocument.Create(self);

    try
    With tmpXMLDoc do begin

       // Le conteúdo do arquivo XML informado
       tmpXMLDoc.LoadFromFile(XDir+'enviNFe\'+idNFe+'-enviNFe.xml');

       // ADICIONA A NOTA na variavel
       XMLEnviNFe := tmpXMLDoc.DocumentElement;


       //validação

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


// validação de schemas
function TFNFe.ValidarXML(const tmpXML:Widestring; const tipoXML:Integer):Boolean;
var
Util:NFe_Util_Interface;
qtdeErros, i:integer;
vXMLDoc: TXMLDocument;
msg,RetWS: WideString;
     ///  10. ValidaXML:  Valida Schema XML
    ///
    ///    Entradas:
    ///
    ///                XML: Mensagem XML a ser validada
    ///            tipoXML: 0 - cabeçalho (cabecMsg_v1.02)
    ///                     1 - NF-e (nfe_v1.10.xsd)
    ///                     2 - Envio de Lote de NF-e (enviNFe_v1.10.xsd)
    ///                     3 - Retorno Lote de NF-e (retEnviNFe_v1.10.xsd)
    ///                     4 - Busca Resultado de NF-e (consReciNFe_v1.10.xsd)
    ///                     5 - Retorno de Resultado de NF-e (retConsReciNFe_v1.10.xd)
    ///                     6 - Cancelamento de NF-e (cancNFe_v1.07.xsd)
    ///                     7 - Retorno de Cancelamento de NF-e (retCancNFe_v1.07.xsd)
    ///                     8 - Inutilizacao de Numeração de NF-e (inutNFe_v1.07.xsd)
    ///                     9 - Retorno de Inutilização de NF-e (retInutNFe_v1.07.xsd)
    ///                    10 - Consulta Situação de NF-e (consSitNFe_v1.07.xsd)
    ///                    11 - Retorno de Consulta Situação de NF-e (retConsSitNFe_v1.07.xsd)
    ///                    12 - Consulta Status de Serviço (consStatServ_v1.07.xsd)
    ///                    13 - Retorno de Consulta Status de Serviço (retConsStatServ_v1.07.xsd)
    ///                    14 - Consulta Cadastro de Contribuintes (consCad_v1.01.xsd)
    ///                    15 - Retorno da Consulta Cadastro de Contribuintes (retConsCad_v1.01.xsd)
    ///
    ///    Retornos:
    ///
    ///           ValidaXML: código do resultado Validação
    ///                      0 - OK - mensagem XML válida
    ///                      1 - Erro: tipoXML %tipoXML%inválido (fora do intervalor 0-15)
    ///                      2 - Erro: arquivo de Schema XML %nome do arquivo% não localizado
    ///                      3 - Erro: XML mal formado
    ///                      4 - Erro: XML não atende Schema XML
    ///                      5 - Erro: não previsto
    ///       msgResultado: literal do resultado da chamada do ValidaXML
    ///          qtdeErros: qtde de erros de validação
    ///            erroXML: Erros de XML encontrados
    ///
begin
       // valida parametros passados
       if (tmpXML <> '') or  (tipoXML >= 0) then
       begin
           qtdeErros:=0;
           Util := CoUtil.Create;
           EstadoMouse(True);
           i:= Util.ValidaXML(tmpXML,tipoXML, msg, qtdeErros, RetWS);
           EstadoMouse(False);
           if i <> 0 then
           begin
               MessageDlg( 'Falha na validação XML...'+ #13+ #13+'Qtde de Erros: '+inttostr( qtdeErros) + #13+RetWS, mtError, [mbOk], 0);
               Result := False;
               Exit;
           end
           else  begin
               Result := True;
           Util := nil;
           end;
     end else
       Result := False;
end;

// enviar lote
function TFNFe.EnviarLote(const idLote:String):Boolean;
var
  qtdeErros, i: Integer;
  Util:NFe_Util_Interface;
  tmpXMLDoc: TXMLDocument;
  XML, msg, RetWS, nomeCertificado, mensagem,cabMsg, proxy,usuario,senha: WideString;
  Fsaida: TextFile;
begin

       // verifica se o lote existe
       if not FileExists(XDir+'loteNFe\'+Trim(idLote)+'-env-lote.xml') then begin
           Result := False;
           Exit;
       end;

       // Cria a variável baseada no TXMLDocument
       tmpXMLDoc := TXMLDocument.Create(self);

       // Le conteúdo do arquivo XML informado
       tmpXMLDoc.LoadFromFile(XDir+'loteNFe\'+Trim(idLote)+'-env-lote.xml');

       XML := tmpXMLDoc.XML.Text;


       // faz a validação do xml  -- ja é feito qnd é gerado

       // envia o lote
       Util := CoUtil.Create;

       EstadoMouse(True);
       i:= Util.EnviaLote(XUF, XTpAmb, XNomeCertificado, cabMsg, XML, retWS, msg, proxy, usuario, senha);
       EstadoMouse(False);

       if i > 1 then begin
           MessageDlg( 'Erro na chamada do WS...'+#13+#13+msg, mtError, [mbOk], 0);
           Util := nil;
           Result := False;
           Exit;
       end;

     // pasa parametros para gravar a msg de retorno
     if not GravarRetornoLote(idLote, XML, retWS) then begin
        //erro na gravação de retorno
        Result := False;
       Exit;
     end;

     Result := True;

end;

// ler arquivo resposta a partir do id do lote
function TFNFe.LerRespostaLoteNFe(const idLote:String; out msg:String; out nrRecibo:String):Boolean;
var
  tmpXMLDoc: TXMLDocument;
begin

  // verificar se é válido o idLote
 if (Trim(idLote) <> '') or (Length(idLote) > 0) then begin

    // Cria a variável baseada no TXMLDocument
    tmpXMLDoc := TXMLDocument.Create(self);

    try
    With tmpXMLDoc do begin

        // verifica se a resposta do lote existe
       if not FileExists(XDir+'retEnviNFe\'+Trim(idLote)+'-ret.xml') then begin
           msg := 'Mensagem de retorno de lote não encontrado!';
           Result := False;
           Exit;
       end;

       // abre o arquivo na variavel
       tmpXMLDoc.LoadFromFile(XDir+'retEnviNFe\'+Trim(idLote)+'-ret.xml');

       // valida o xml
       if not ValidarXML(tmpXMLDoc.XML.Text, 3) then begin
           Result := False;
           msg:='Erro na validação do arquivo recebido';
           Exit;
       end;

       //As mensagens recebidas com erro geram uma mensagem de erro. Nas demais hipóteses
        //será retornado um recibo com número, data, hora local de recebimento e tempo médio de
        //resposta do serviço nos últimos 5 minutos.

        //O número do recibo gerado pelo Portal da Secretaria de Fazenda Estadual será a chave de
        //acesso do serviço de consulta ao resultado do processamento do lote.


       // SE ESTIVER TUDO OK
       {
        • a identificação do ambiente;
        • a versão do aplicativo;
        • o código 103 e o literal “Lote recebido com Sucesso”;
        • o código da UF que atendeu a solicitação;
        • o número do recibo (vide item 5.5), com data, hora local de recebimento da
        mensagem;
        • tempo médio de resposta do serviço de processamento dos lotes nos últimos 5
        minutos (vide detalhamento da forma de cálculo no item 5.7 do manual de integração).

       Caso ocorra algum problema de validação, o aplicativo deverá retornar uma mensagem com
        as seguintes informações:
        • a identificação do ambiente;
        • a versão do aplicativo;
        • o código e a respectiva mensagem de erro (vide a tabela do item 5.1.1); }



       msg :='Status '+tmpXMLDoc.ChildNodes['retEnviNFe'].ChildNodes['cStat'].Text+': '+tmpXMLDoc.ChildNodes['retEnviNFe'].ChildNodes['xMotivo'].Text;

       // verifica se o estatus eh 103 // se entra no if quer dizer q nao eh e o lote nao foi aceito
       if tmpXMLDoc.ChildNodes['retEnviNFe'].ChildNodes['cStat'].Text <> '103' then
       begin
          Result := False;
          Exit;
       end;

       //pega o numero do recibo
       if not (tmpXMLDoc.ChildNodes['retEnviNFe'].ChildNodes['infRec'].ChildNodes['nRec'].Text = '') then begin
           nrRecibo := tmpXMLDoc.ChildNodes['retEnviNFe'].ChildNodes['infRec'].ChildNodes['nRec'].Text;
           Result := True;
           Exit;
       end;

       Result := False;

      end;
       finally
           tmpXMLDoc.Free;
       end;


   end else begin
       msg := 'Id de lote inválido!';
       Result := False;

     end;
end;

// ler pedido de resposta de envio de lote
function TFNFe.LerPedidoLoteNFe(const nrRecibo:String; out msg:String; out status:String):Boolean;
var
  tmpXMLDoc: TXMLDocument;
  //erroNFeArray: Array of String;
begin

  // verificar se é válido o idLote
 if (Trim(nrRecibo) <> '') or (Length(nrRecibo) > 0) then begin

    // Cria a variável baseada no TXMLDocument
    tmpXMLDoc := TXMLDocument.Create(self);

    try
    With tmpXMLDoc do begin

        // verifica se a resposta do lote existe
       if not FileExists(XDir+'retPedNFe\'+Trim(nrRecibo)+'-pro-rec.xml') then begin
           msg := 'Mensagem de retorno de lote não encontrado!';
           Result := False;
           Exit;
       end;

       // abre o arquivo na variavel
       tmpXMLDoc.LoadFromFile(XDir+'retPedNFe\'+Trim(nrRecibo)+'-pro-rec.xml');



       // valida o xml
       if not ValidarXML(tmpXMLDoc.XML.Text, 5) then begin
           Result := False;
           msg:='Erro na validação do arquivo recebido';
           Exit;
       end;
       {
       Lote processado - cStat=104, com os resultados individuais de processamento das
        NF-e;
        • Lote em processamento – cStat=105, o aplicativo do contribuinte deverá fazer uma
        nova consulta;
        • Lote não localizado - cStat=106, o aplicativo do contribuinte deverá providenciar o
        reenvio da mensagem;
        • Recibo ou CNPJ do requisitante com problemas - cStat= 248 ou 223, o aplicativo
        do contribuinte deverá sanar o problema; }


       status := tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['cStat'].Text;

       msg := tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['xMotivo'].Text;

       // verifica se o estatus eh 104 (OK) 
       if tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['cStat'].Text = '104' then
       begin
          Result := True;
          Exit;
       end;

       //pega o numero do recibo
       //nrRecibo := tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['nRec'].Text;

       //msg := 'Lote '+idLote+' recebido com sucesso. Numero recibo: '+nrRecibo;

       Result := False;

      end;
       finally
           tmpXMLDoc.Free;
       end;


   end else begin
       msg := 'Id de lote inválido!';
       Result := False;

     end;
end;


// grava retorno de envio de lote
function TFNFe.GravarRetornoLote(const idLote:String; const cabXML:WideString; const retXML:WideString):Boolean;
var
Fsaida: TextFile;
XML: WideString;
begin

   XML := cabXML;
   XML := TirarAcentos(False, XML);
   verificaDiretorio(XDir+'retEnviNFe');
   AssignFile(Fsaida, XDir+'retEnviNFe\'+idLote+'-ped-ret.xml');
   Rewrite(Fsaida);
   Write(Fsaida, XML);
   CloseFile(Fsaida);


     XML := retXML;
    if (Trim(idLote) <> '') then begin

       //XML := TirarAcentos(False, retXML);

      XML := TirarAcentos(False, XML);
      try

       verificaDiretorio(XDir+'retEnviNFe');

       AssignFile(Fsaida, XDir+'retEnviNFe\'+idLote+'-ret.xml');
       Rewrite(Fsaida);
       Write(Fsaida, XML);
       CloseFile(Fsaida);

       Result := True;
      Except
         Result := False;
       end;
     end
      else
       Result := False;

end;

// gravar resposta pedido de processamento de lote
function TFNFe.GravarPedidoLote(const nrRecibo:String; const cabXML:WideString; const retXML:WideString):Boolean;
var
Fsaida: TextFile;
XML: WideString;
begin

   XML := cabXML;
   XML := TirarAcentos(False, XML);
   verificaDiretorio(XDir+'pedNFe');
   AssignFile(Fsaida, XDir+'pedNFe\'+nrRecibo+'-ped-rec.xml');
   Rewrite(Fsaida);
   Write(Fsaida, XML);
   CloseFile(Fsaida);

    XML := retXML;
    if (Trim(nrRecibo) <> '') then begin
      try

       XML := TirarAcentos(False, XML);

       verificaDiretorio(XDir+'retPedNFe');

       AssignFile(Fsaida, XDir+'retPedNFe\'+nrRecibo+'-pro-rec.xml');
       Rewrite(Fsaida);
       Write(Fsaida, XML);
       CloseFile(Fsaida);

       Result := True;
      Except
         Result := False;
       end;
     end
      else
       Result := False;

end;

// consultar lote
function TFNFe.ConsultarLote(const idLote:String; out msg:String):Boolean;
var
Util:NFe_Util_Interface;
i, f: integer;
recibo: String;
retWS,DadosMsg, siglaUF, cabMsg,nrRecibo,mensagem: WideString;
begin

   // pega o numero do recibo a partir da ultima resposta do processamento de lote
   if not LerRespostaLoteNFe(idLote, msg, recibo) then begin
      Result := False;
      Exit;
   end;

   nrRecibo := recibo;

   // verifica se número de recibo é valido
   if Length(Trim(nrRecibo)) <> 15 then begin
       msg := 'Numero de recibo Inválido!';
       Result := False;
       Exit;
   end;

  Util := CoUtil.Create;

  retWS :='';
  cabMsg :='';
  msg :='';


  EstadoMouse(True);
  i:= Util.BuscaLote(XUF, XTpAmb, XNomeCertificado, cabMsg, DadosMsg, retWS, mensagem, nrRecibo , '', '', '');
  EstadoMouse(False);

  msg := mensagem;

  if i <> 0 then begin
      MessageDlg( 'Erro na chamada do WS...'+#13+#13+msg, mtError, [mbOk], 0);
       Util := nil;
       Result := False;
       Exit;
  end;

  // grava retorno de resposta
  if not GravarPedidoLote(recibo,DadosMsg, retWS) then begin
       msg := 'O arquivo de respota não pode ser gravado.';
       Result := False;
       Exit;
  end;

  Result := True;

end;

 // verifica as notas que estao corretas // se voltar false verificar Array com as chave das notas com erros
function TFNFe.ConferirRetornoLote(const nrRecibo:String; out msg:String; out erroIDNFeArray:TStrings; out erroMsgNFeArray:TStrings; out chaveNFeArray:TStrings; out nrProtNFeArray:TStrings):Boolean;
var
   NodePai, NodeTmp: IXMLNode;
   tam, erro: Integer;
   tmpXMLDoc : TXMLDocument;
begin

    // Cria a variável baseada no TXMLDocument
    tmpXMLDoc := TXMLDocument.Create(self);
    // cria as variaveis baseadas no TStringList
    erroIDNFeArray:=TStringList.Create;
    erroMsgNFeArray:=TStringList.Create;
    chaveNFeArray:=TStringList.Create;
    nrProtNFeArray:=TStringList.Create;

    try
    With tmpXMLDoc do begin

        // verifica se a resposta do lote existe
      // if not FileExists(XDir+'retPedNFe\'+Trim(nrRecibo)+'-pro-rec.xml') then begin
      //     msg := 'Mensagem de retorno de lote não encontrado!';
      //     Result:= False;
      //     Exit;
      // end;

       tmpXMLDoc.Active := False;
       tmpXMLDoc.XML.Text := nrRecibo;
       tmpXMLDoc.Active := True;

       // abre o arquivo na variavel
       //tmpXMLDoc.LoadFromFile(XDir+'retPedNFe\'+Trim(nrRecibo)+'-pro-rec.xml');

       // verifica se o código do retorno é 104 para prosseguir
       if (tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['cStat'].Text <> '104') then
       begin
           msg := 'O lote não foi aceito!'+#13+'Status: '+tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['cStat'].Text+#13+'Motivo: '+tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['xMotivo'].Text;
           Result := False;
           Exit;
       end;

       // procura ocorrencia da tag <protNFe>
       NodePai := tmpXMLDoc.DocumentElement.ChildNodes.FindNode('protNFe');

       //nó usado no loop
        NodeTmp := NodePai;
        //posiciona no primeiro elemento encontrado
        NodeTmp.ChildNodes.First;
        repeat

           if NodeTmp.ChildNodes['infProt'].ChildNodes['cStat'].Text <> '100' then begin
               //add chave da NFe com erro
               erroIDNFeArray.Add(NodeTmp.ChildNodes['infProt'].ChildNodes['chNFe'].Text);
               //add motivo do erro da NFe
               erroMsgNFeArray.Add(NodeTmp.ChildNodes['infProt'].ChildNodes['xMotivo'].Text);

           end else begin

               //add chave da NFe
               chaveNFeArray.Add(NodeTmp.ChildNodes['infProt'].ChildNodes['chNFe'].Text);
               //add numero do protocolo
               nrProtNFeArray.Add(NodeTmp.ChildNodes['infProt'].ChildNodes['nProt'].Text);

           end;

           // posicionar na proxima ocorencia (se houver)
           NodeTmp := NodeTmp.NextSibling;

       until NodeTmp = nil;   // caso nao encontrar sair do loop

       if erroIDNFeArray.Count = 0 then begin
           msg := 'Todas as '+IntToStr(chaveNFeArray.Count)+' NFe foram aceitas!';
           Result := True;
           Exit;
       end;

       if chaveNFeArray.Count = 0 then begin
           msg := 'Todas as '+IntToStr(erroIDNFeArray.Count)+' NFe estão com erro!';
           Result := True;
           Exit;
       end;

       msg := IntToStr(chaveNFeArray.Count+erroIDNFeArray.Count)+' NFe encontradas sendo que '+IntToStr(chaveNFeArray.Count)+' estão corretas e '+ IntToStr(erroIDNFeArray.Count)+' estão com erro!';

       Result := True;

    end;
       finally
           tmpXMLDoc.Free;
       end;
end;

function TFNFe.BuscarProtocoloXML(const xml:String):String;
var
   NodePai, NodeTmp: IXMLNode;
   tam, erro: Integer;
   tmpXMLDoc : TXMLDocument;
   texto :WideString;
begin

    Result := '';
  Try
    // Cria a variável baseada no TXMLDocument
    tmpXMLDoc := TXMLDocument.Create(self);
    texto := xml;
    try
    With tmpXMLDoc do begin
      Try
       tmpXMLDoc.Active := False;
       tmpXMLDoc.XML.Text := texto;
       tmpXMLDoc.Active := True;
      Except

      End;

       // verifica se o código do retorno é 104 para prosseguir
       //if (tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['cStat'].Text <> '104') then
      // begin
      //     Exit;
       //end;

       // procura ocorrencia da tag <protNFe>
       NodePai := tmpXMLDoc.DocumentElement.ChildNodes.FindNode('protNFe');

       //nó usado no loop
        NodeTmp := NodePai;

       if Trim(NodeTmp.ChildNodes['infProt'].ChildNodes['cStat'].Text) = '100'
       then begin
          //add numero do protocolo
           Result := NodeTmp.ChildNodes['infProt'].ChildNodes['nProt'].Text;
       end;

    end;
       finally
           tmpXMLDoc.Free;
       end;

   Except

   End;
end;

// pedido de cancelamento
function TFNFe.CancelarNFe(const chaveNFe:String; const tipoAmbiente:Integer; const nrProtocolo:String; const justificativa:String; out msg:String):Boolean;
var
Util:NFe_Util_Interface;
i: integer;
retWS, DadosMsg, siglaUF, cabMsg, mensagem,chave,protocolo,jus: WideString;
Fsaida: TextFile;
begin

   // verifica se número de chave é valido
   if Length(Trim(chaveNFe)) <> 44 then begin
       msg := 'Numero de chave Inválido!';
       Result := False;
       Exit;
   end;

   // verifica se número de protocolo é valido
   if Length(Trim(nrProtocolo)) <> 15 then begin
       msg := 'Numero de protocolo Inválido!';
       Result := False;
       Exit;
   end;

  Util := CoUtil.Create;
  chave := chaveNFe;
  protocolo := nrProtocolo;
  jus := justificativa;
  msg := mensagem;
  retWS :='';
  cabMsg :='';
  msg :='';
  mensagem:='';
  EstadoMouse(True);
  i:= Util.CancelaNF(XUF, tipoAmbiente, XNomeCertificado, cabMsg, DadosMsg, retWS, mensagem, chave, protocolo, jus,  '', '', '', XLicenca);

  chave := chaveNFe;
  msg := mensagem;
  EstadoMouse(False);


  if i <> 0 then begin
       msg:='Erro na chamada do WS...'+#13+#13+msg;
       Util := nil;
       Result := False;
       Exit;
  end;

  //gravar pedido de cancelamento
   verificaDiretorio(XDir+'pedCancNFe');
   AssignFile(Fsaida, XDir+'pedCancNFe\'+nrProtocolo+'-ped-can.xml');
   Rewrite(Fsaida);
   Write(Fsaida, DadosMsg);
   CloseFile(Fsaida);


  // grava retorno de resposta
  if not GravaRtCanNFe(nrProtocolo, DadosMsg, retWS) then begin
       msg := 'O arquivo de respota não pode ser gravado.';
       Result := False;
       Exit;
  end;

  Result := True;

end;

// grava retorno de pedido de cancelamento
function TFNFe.GravaRtCanNFe(const nrProtocolo:String; const cabXML:WideString; const retXML:WideString):Boolean;
var
Fsaida: TextFile;
XML: WideString;
begin
   XML := cabXML;
   XML := TirarAcentos(False, XML);
   verificaDiretorio(XDir+'cancNFe');
   AssignFile(Fsaida, XDir+'cancNFe\'+nrProtocolo+'-ped-can.xml');
   Rewrite(Fsaida);
   Write(Fsaida, XML);
   CloseFile(Fsaida);

     XML := retXML;
    if (Trim(nrProtocolo) <> '') then begin

      XML := TirarAcentos(False, XML);
      try

       verificaDiretorio(XDir+'retCancNFe');
       AssignFile(Fsaida, XDir+'retCancNFe\'+nrProtocolo+'-can.xml');
       Rewrite(Fsaida);
       Write(Fsaida, XML);
       CloseFile(Fsaida);

       Result := True;
      Except
         Result := False;
       end;
     end
      else
       Result := False;

end;

// ler resposta de pedido de cancelamento
function TFNFe.LerCancNFe(const nrProtocolo:String; out newNrProtocolo:String; out msg:String):Boolean;
var
  tmpXMLDoc: TXMLDocument;
begin

  // verificar se é válido o idLote
 if (Trim(nrProtocolo) <> '') or (Length(nrProtocolo) > 0) then begin

    // Cria a variável baseada no TXMLDocument
    tmpXMLDoc := TXMLDocument.Create(self);

    try
    With tmpXMLDoc do begin

        // verifica se a resposta do lote existe
       if not FileExists(XDir+'retCancNFe\'+Trim(nrProtocolo)+'-can.xml') then begin
           msg := 'Arquivo de retorno de cancelamento não encontrado!';
           Result := False;
           Exit;
       end;

       // abre o arquivo na variavel
       tmpXMLDoc.LoadFromFile(XDir+'retCancNFe\'+Trim(nrProtocolo)+'-can.xml');



       // valida o xml
       if not ValidarXML(tmpXMLDoc.XML.Text, 7) then begin
           Result := False;
           msg:='Erro na validação do arquivo de resposta de cancelamento!';
           Exit;
       end; 

       msg :='Status '+tmpXMLDoc.ChildNodes['retCancNFe'].ChildNodes['infCanc'].ChildNodes['cStat'].Text+': '+tmpXMLDoc.ChildNodes['retCancNFe'].ChildNodes['infCanc'].ChildNodes['xMotivo'].Text;

       // verifica se o estatus eh 101 (OK) // se entra no if quer dizer q nao eh e o cancelamento nao foi aceito
       if tmpXMLDoc.ChildNodes['retCancNFe'].ChildNodes['infCanc'].ChildNodes['cStat'].Text <> '101' then
       begin
          Result := False;
          Exit;
       end;

       //pega o numero do recibo
       //nrRecibo := tmpXMLDoc.ChildNodes['retConsReciNFe'].ChildNodes['nRec'].Text;

       //msg := 'Lote '+idLote+' recebido com sucesso. Numero recibo: '+nrRecibo;

       newNrProtocolo := tmpXMLDoc.ChildNodes['retCancNFe'].ChildNodes['infCanc'].ChildNodes['nProt'].Text;

       Result := True;

      end;
       finally
           tmpXMLDoc.Free;
       end;


   end else begin
       msg := 'Numero de protocolo inválido!';
       Result := False;
     end;
end;

// tirar acentos // colocar true para codigos especiais (ui!)
function TFNFe.TirarAcentos(CrtEsp:Boolean; str:WideString):WideString;
var i:integer;
begin
   for i:=1 to length(str) do
   begin
     case Byte(str[i]) of
       192..198:str[i] := 'A';
       199:str[i] := 'C';
       200..203:str[i] := 'E';
       204..207:str[i] := 'I';
       208:str[i] := 'D';
       209:str[i] := 'N';
       210..214:str[i] := 'O';
       217..220:str[i] := 'U';
       221:str[i] := 'Y';
       224..230:str[i] := 'a';
       231:str[i] := 'c';
       232..235:str[i] := 'e';
       236..239:str[i] := 'i';
       241:str[i] := 'n';
       242..246:str[i] := 'o';
       249..252:str[i] := 'u';
       253:str[i] := 'y';
       255:str[i] := 'y';
     end;
   end;

   //remover espaços duplicados
   str  := StringReplace(str, '  ', ' ',[rfReplaceAll]);

   if  CrtEsp then begin
       str  := StringReplace(str, '&', '&amp;',[rfReplaceAll]);
       str  := StringReplace(str, '<', '&lt;',[rfReplaceAll]);
       str  := StringReplace(str, '>', '&gt;',[rfReplaceAll]);
       str  := StringReplace(str, '"', '&quot;',[rfReplaceAll]);
       str  := StringReplace(str, #39, '&#39;',[rfReplaceAll]);
   end;

   result := str;
end;

// validar nfe
function TFNFe.ValidarNFe(out nfe:TNFe; out msg:WideString):Boolean;
var
tam, i, f:Integer;
ant:Integer;
begin

   Result := False;

    msg:= 'Dados Nota Fiscal: ';

    if nfe.Dados = nil then begin
        msg := 'Informacaçoes da nota fiscal não encontrado';
        Exit;
    end;

    if ((nfe.Dados.UFCodigo > 100) or (nfe.Dados.UFCodigo < 10)) then begin
         msg := msg+' codigo uf incorreto: ' + IntToStr(nfe.Dados.UFCodigo);
        Exit;
    end;

{     if nfe.Dados.NumeroDocFisc <= 0 then begin
        msg := msg+' numero nota fiscal incorreto: ' + IntToStr(nfe.Dados.NumeroDocFisc);
        Result := False;
        Exit;
     end;
 }
{    if not ValidaTam(nfe.Dados.NatuOpera,1,60)
    then begin
        msg := msg+' natureza de operação incorreto: ' + nfe.Dados.NatuOpera;
        Exit;
     end;
 }
    if nfe.Dados.DtEmissao = 0 then begin
        msg := 'Data de emissao incorreta: ' + FormatDateTime('dd/mm/yyyy', nfe.Dados.DtEmissao);
        Exit;
    end;

    if nfe.Dados.DtSaiEnt = 0 then begin
        nfe.Dados.DtSaiEnt := EncodeDate(1899, 12, 30); // data em branco
    end;

    msg:= 'Dados do Emitente: ';
    //trechos abaixo apresentaram erros
    if nfe.Emitente = nil then begin
        msg := 'Informaçoes do emitente nao encontrado';
        Exit;
    end;


    if nfe.Emitente.CNPJ <> '' then begin
       nfe.Emitente.CNPJ := ValidaCNPJ(nfe.Emitente.CNPJ);
       if nfe.Emitente.CNPJ = '' then begin
          msg := msg+' CNPJ incorreto: ' + nfe.Emitente.CNPJ;
          Exit;
       end;
    end else if nfe.Emitente.CPF <> '' then begin
       nfe.Emitente.CPF := ValidaCPF(nfe.Emitente.CPF);
       if nfe.Emitente.CPF = '' then begin
          msg := msg+' CPF incorreto: ' + nfe.Emitente.CPF;
          Exit;
       end;
    end else begin
          msg := msg+' CPF ou CNPJ incorretos.';
          Exit;
    end;

    if nfe.Emitente.IE <> '' then begin
         nfe.Emitente.IE := ValidaIE(nfe.Emitente.IE);
    end else begin
        nfe.Emitente.IE := '';
    end;

    nfe.Emitente.Nome := UpperCase(nfe.Emitente.Nome);
   { if not ValidaTam(nfe.Emitente.Nome, 1,60) then begin
        msg := msg+' nome incorreto: ' + nfe.Emitente.Nome;
        Exit;
    end;   }

    nfe.Emitente.NomeFantasia := UpperCase(nfe.Emitente.NomeFantasia);
    {if not ValidaTam(nfe.Emitente.NomeFantasia,1,60) then begin
        msg := msg+' nome fantasia incorreto: ' + nfe.Emitente.NomeFantasia;
        Exit;
    end;

    nfe.Emitente.Logradouro := UpperCase(nfe.Emitente.Logradouro);
    if not ValidaTam(nfe.Emitente.Logradouro,1,60) then begin
         msg := msg+' logradouro incorreto: ' + nfe.Emitente.Logradouro;
        Exit;
    end;

    if not ValidaTam(nfe.Emitente.Numero,1,60) then begin
        nfe.Emitente.Numero := 'S/N';
    end;

    if nfe.Emitente.Complemento <> '' then begin
       ValidaTam(nfe.Emitente.Complemento,1,60);
    end;

    if not ValidaTam(nfe.Emitente.Bairro,1,60) then begin
        msg := msg+' bairro incorreto: ' + nfe.Emitente.Bairro;
        Exit;
    end;

    if not ValidaTamObg(nfe.Emitente.CodigoMunicipio,7) then begin
        msg := msg+' codigo municipio incorreto: ' + nfe.Emitente.CodigoMunicipio;
        Exit;
    end;

    nfe.Emitente.NomeMunicipio := UpperCase(ValidaAcentos(nfe.Emitente.NomeMunicipio));
    if nfe.Emitente.NomeMunicipio = '' then begin
        msg := msg+' nome municipio incorreto: ' + nfe.Emitente.NomeMunicipio;
        Exit;
    end;

    if not ValidaTamObg(nfe.Emitente.UF, 2) then begin
        msg := msg + ' UF incorreto: ' + nfe.Emitente.UF;
        Exit;
    end;

    if nfe.Emitente.CEP <> '' then begin
       nfe.Emitente.CEP := TirarCarct01(nfe.Emitente.CEP);
       if not ValidaTamObg(nfe.Emitente.CEP, 8) then begin
           msg := msg+' CEP incorreto: ' + nfe.Emitente.CEP;
           Exit;
       end;
    end;

    // pais

    //fone

    msg:= 'Dados do Destinatario: ';

    if nfe.Destinatario = nil then begin
        msg := 'Informações do destinatário não encontrado.';
        Exit;
    end;

    if nfe.Destinatario.CNPJ <> '' then begin
       nfe.Destinatario.CNPJ := ValidaCNPJ(nfe.Destinatario.CNPJ);
       if nfe.Destinatario.CNPJ = '' then begin
          msg := msg+' CNPJ incorreto: ' + nfe.Destinatario.CNPJ;
          Exit;
       end;
    end else if nfe.Destinatario.CPF <> '' then begin
       nfe.Destinatario.CPF := ValidaCPF(nfe.Destinatario.CPF);
       if nfe.Destinatario.CPF = '' then begin
          msg := msg+' CPF incorreto: ' + nfe.Destinatario.CPF;
          Exit;
       end;
    end else begin
          msg := msg+' CPF ou CNPJ incorretos.';
          Exit;
    end;

    if nfe.Destinatario.IE <> '' then begin
         nfe.Destinatario.IE := ValidaIE(nfe.Destinatario.IE);
    end else begin
        nfe.Destinatario.IE := '';
    end;

    if nfe.Destinatario.ISUFRAMA <> ''
    Then begin
         if not ValidaTamObg(nfe.Destinatario.ISUFRAMA, 9)
         then begin
            msg := msg + ' Inscrição SUFRAMA Incorreto: ' + nfe.Destinatario.ISUFRAMA;
            Exit;
         End;
    End;

    if not ValidaTam(nfe.Destinatario.Nome, 1,60) then begin
        msg := msg + ' nome incorreto: ' + nfe.Destinatario.Nome;
        Exit;
    end;

    if not ValidaTam(nfe.Destinatario.Logradouro, 1,60) then begin
         msg := msg+' logradouro incorreto: ' + nfe.Destinatario.Logradouro;
        Exit;
    end;

    if ValidaTam(nfe.Destinatario.Numero, 1,60) then begin
         nfe.Destinatario.Numero := 'S/N';
    end;

    if nfe.Destinatario.Complemento <> '' then begin
       ValidaTam(nfe.Destinatario.Complemento, 1, 60);
    end;

    if not ValidaTam(nfe.Destinatario.Bairro, 1,60) then begin
        msg := msg+' bairro incorreto: ' + nfe.Destinatario.Bairro;
        Exit;
    end;

    if not ValidaTamObg(nfe.Destinatario.CodigoMunicipio, 7) then begin
        msg := msg+' codigo municipio incorreto: ' + nfe.Destinatario.CodigoMunicipio;
        Exit;
    end;

    nfe.Destinatario.NomeMunicipio := UpperCase(ValidaAcentos(nfe.Destinatario.NomeMunicipio));

    if not ValidaTamObg(nfe.Destinatario.UF, 2) then begin
        msg := msg+'UF endereco incorreto : ' + nfe.Destinatario.UF;
        Exit;
    end;

    if nfe.Destinatario.CEP <> '' then begin
       nfe.Destinatario.CEP := TirarCarct01(nfe.Destinatario.CEP);
       if not ValidaTamObg(nfe.Destinatario.CEP, 8) then begin
           msg := msg+' CEP incorreto: ' + nfe.Destinatario.CEP;
           Exit;
       end;
    end;


    if nfe.Produtos = nil then begin
        msg := 'Informações de produtos não encontrado.';
        Exit;
    end;


    tam := Length(nfe.Produtos);

    for i:=0 to tam-1 do begin

        // verifica se item foi informado
       if nfe.Produtos[i] <> nil then begin

          // verfica se foi informado o produto
          if nfe.Produtos[i].Produto <> nil then begin
                    // codigo do produto
                   if not ValidaTam(nfe.Produtos[i].Produto.CodigoProduto, 1,60) then begin
                       msg := 'Codigo Produto do item '+IntToStr(i+1) + ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota não encontrado ou está incorreto: ' + nfe.Produtos[i].Produto.CodigoProduto;
                       Exit;
                   end;

                   if not ValidaTam(nfe.Produtos[i].Produto.CodigoBarra, 1,14) then begin
                       msg := 'Codigo de Barra do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota não encontrado ou está incorreto: ' + nfe.Produtos[i].Produto.CodigoBarra;
                       Exit;
                   end;

                   if not ValidaTam(nfe.Produtos[i].Produto.Descricao, 1,120) then begin
                       msg := 'Descicao Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota não encontrado ou está incorreto: ' + nfe.Produtos[i].Produto.Descricao;
                       Exit;
                   end;

                   if nfe.Produtos[i].Produto.CodigoNCM <> '' then begin
                       nfe.Produtos[i].Produto.CodigoNCM := TirarCarct01(nfe.Produtos[i].Produto.CodigoNCM);
                       if not ValidaTamObg(nfe.Produtos[i].Produto.CodigoNCM,8) then begin
                           msg := 'Codigo NCM Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' +' da nota nao encontrado ou está incorreto: ' + nfe.Produtos[i].Produto.CodigoNCM;
                           Exit;
                       end;
                   end;
                   
                   //valida codigo EXTIPI
                   if nfe.Produtos[i].Produto.CodigoEXTIPI <> '' then begin
                       if not ValidaTamObg(nfe.Produtos[i].Produto.CodigoEXTIPI, 3) then begin
                           msg := 'Codigo EXTIPI Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' +' da nota nao encontrado ou está incorreto: ' + nfe.Produtos[i].Produto.CodigoEXTIPI;
                           Exit;
                       end;
                   end;

                   //valida genero
                   if nfe.Produtos[i].Produto.Genero < 0 then begin
                       msg := 'Genero Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' +' da nota nao encontrado ou está incorreto: ' + IntToStr(nfe.Produtos[i].Produto.Genero);
                       Exit;
                   end;

                   if nfe.Produtos[i].Produto.CFOP < 1000 then begin
                           nfe.Produtos[i].Produto.CFOP := ant;
                   end;
                   ant := nfe.Produtos[i].Produto.CFOP;

                   if not ValidaTam(nfe.Produtos[i].Produto.UnidadeComercial, 1,6) then begin
                       msg := 'Unidade Comercial Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota nao encontrado ou está incorreto: ' + nfe.Produtos[i].Produto.UnidadeComercial;
                       Exit;
                   end;

                   If nfe.Produtos[i].Produto.QntComercial <= 0
                   Then Begin
                       msg := 'Quantidade Comercial do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - '
                           + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Produto.QntComercial);
                       Exit;
                   End;

                   If nfe.Produtos[i].Produto.ValorUnitario <= 0
                   Then Begin
                       msg := 'Valor Unitario do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - '
                           + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Produto.ValorUnitario);
                       Exit;
                   End;

                   If nfe.Produtos[i].Produto.ValorBruto <= 0
                   Then Begin
                       msg := 'Valor Bruto do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') '
                               + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Produto.ValorBruto);
                       Exit;
                   End;

                   if not ValidaTam(nfe.Produtos[i].Produto.GTIN, 1, 14) then begin
                       msg := 'GTIN do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota nao encontrado ou está incorreto: ' + nfe.Produtos[i].Produto.GTIN;
                       Exit;
                   end;

                   if not ValidaTam(nfe.Produtos[i].Produto.UnidadeTributavel, 1, 14) then begin
                       msg := 'Unidade Tributavel do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota nao encontrado ou está incorreto: ' + nfe.Produtos[i].Produto.UnidadeTributavel;
                       Exit;
                   end;

                   If nfe.Produtos[i].Produto.ValorFrete < 0
                   Then Begin
                       msg := 'Valor Frete do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') '
                               + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Produto.ValorFrete);
                       Exit;
                   End;

                   If nfe.Produtos[i].Produto.ValorSeguro < 0
                   Then Begin
                       msg := 'Valor Seguro do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') '
                               + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Produto.ValorSeguro);
                       Exit;
                   End;

                   If nfe.Produtos[i].Produto.ValorDesconto < 0
                   Then Begin
                       msg := 'Valor Desconto do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') '
                               + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Produto.ValorDesconto);
                       Exit;
                   End;

           //  VALIDAÇÃO DE MEDICAMENTO 
            if nfe.Produtos[i].Produto.Medicamento <> nil
               then begin
               for f := 0 to Length(nfe.Produtos[i].Produto.Medicamento)-1 do begin

                   if not ValidaTam(nfe.Produtos[i].Produto.Medicamento[f].NmLote, 1, 20) then begin
                       msg := 'Número do Lote do Medicamento do produto '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota Incorreta: ' + nfe.Produtos[i].Produto.Medicamento[f].NmLote;
                       Exit;
                   end;

                   if nfe.Produtos[i].Produto.Medicamento[f].QntLote <= 0 then begin
                       msg := 'Quantidade do Lote do Medicamento do produto '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota Incorreta: ' + FloatToStr(nfe.Produtos[i].Produto.Medicamento[f].QntLote);
                       Exit;
                   end;

                   if nfe.Produtos[i].Produto.Medicamento[f].DtFabricacao = 0 then begin
                       msg := 'Data de Fabricao do Medicamento do produto '+IntToStr(i+1)+ ' da nota Incorreta: ' + FormatDateTime('dd/mm/yyyy', nfe.Produtos[i].Produto.Medicamento[f].DtFabricacao);
                       Exit;
                   end;

                   if nfe.Produtos[i].Produto.Medicamento[f].DtValidade < Date() then begin
                       msg := 'Data de Validade do Medicamento do produto '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota Incorreta: ' + FormatDateTime('dd/mm/yyyy', nfe.Produtos[i].Produto.Medicamento[f].DtValidade);
                       Exit;
                   end;

                   if nfe.Produtos[i].Produto.Medicamento[f].ValorMaxCons <= 0 then begin
                       msg := 'Valor do lote do Medicamento do produto '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota Incorreta: ' + FloatToStr(nfe.Produtos[i].Produto.Medicamento[f].ValorMaxCons);
                       Exit;
                   end;
                end;
            end;

           end
           else begin
               msg := 'Produto '+IntToStr(i+1)+ ' da nota nao encontrado!';
               Exit;
           end;

           // verfica se foi informado o imposto
           if nfe.Produtos[i].Imposto <> nil then begin
               if nfe.Produtos[i].Imposto.ICMS <> nil then begin             //  ICMSS

                   if nfe.Produtos[i].Imposto.ICMS.ModDetBC >= 0
                   then begin

                       If nfe.Produtos[i].Imposto.ICMS.PercRedBC < 0
                       Then Begin
                           msg := 'Percentual da Redução de Cálculo do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') '
                                   + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Imposto.ICMS.PercRedBC);
                           Exit;
                       End;

                       If nfe.Produtos[i].Imposto.ICMS.ValorBC < 0
                       Then Begin
                           msg := 'Valor da Base de Cálculo do ICMS do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') '
                                   + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Imposto.ICMS.ValorBC);
                           Exit;
                       End;

                       If nfe.Produtos[i].Imposto.ICMS.AliquotaICMS < 0
                       Then Begin
                           msg := 'Alíquota do ICMS do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') '
                                   + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Imposto.ICMS.AliquotaICMS);
                           Exit;
                       End;

                       If nfe.Produtos[i].Imposto.ICMS.ValorICMS < 0
                       Then Begin
                           msg := 'Valor do ICMS do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') '
                                   + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Imposto.ICMS.ValorICMS);
                           Exit;
                       End;

                   end
                   else begin
                       msg := 'ModBDST do ICMS do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota nao encontrado: ' + IntToStr(nfe.Produtos[i].Imposto.ICMS.ModBDST);
                       Exit;
                   End;

                       If nfe.Produtos[i].Imposto.ICMS.PercValorST < 0
                       Then Begin
                           msg := 'Percentual de valor de margem e Valor Adicionado do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') '
                                   + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Imposto.ICMS.PercValorST);
                           Exit;
                       End;

                       If nfe.Produtos[i].Imposto.ICMS.PercRedST < 0
                       Then Begin
                           msg := 'Percentual de valor de margem e valor adicionado do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') '
                                   + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Imposto.ICMS.PercRedST);
                           Exit;
                       End;

                       If nfe.Produtos[i].Imposto.ICMS.ValorBCST < 0
                       Then Begin
                           msg := 'Base de Cálculo do ICMS ST do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') '
                                   + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Imposto.ICMS.ValorBCST);
                           Exit;
                       End;

                       If nfe.Produtos[i].Imposto.ICMS.AliquotaST < 0
                       Then Begin
                           msg := 'Percentual do ICMS ST do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') '
                                   + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Imposto.ICMS.AliquotaST);
                           Exit;
                       End;

                       If nfe.Produtos[i].Imposto.ICMS.ValorST < 0
                       Then Begin
                           msg := 'Valor do ICMS ST devido do Produto do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') '
                                   + ' da nota nao encontrado ou está incorreto: ' + FloatToStr(nfe.Produtos[i].Imposto.ICMS.ValorST);
                           Exit;
                       End; 

                  //nfe.Produtos[i].Imposto.ICMS.PercValorST := ValidaDois(nfe.Produtos[i].Imposto.ICMS.PercValorST);
                       //nfe.Produtos[i].Imposto.ICMS.PercRedST := ValidaDois(nfe.Produtos[i].Imposto.ICMS.PercRedST);
                       //nfe.Produtos[i].Imposto.ICMS.ValorBCST := ValidaDois(nfe.Produtos[i].Imposto.ICMS.ValorBCST);
                       //nfe.Produtos[i].Imposto.ICMS.AliquotaST:= ValidaDois(nfe.Produtos[i].Imposto.ICMS.AliquotaST);
                       //nfe.Produtos[i].Imposto.ICMS.ValorST := ValidaDois(nfe.Produtos[i].Imposto.ICMS.ValorST);

               end else begin
                   // se nao axar o ICMS criar e deixar como não tributado
                   nfe.Produtos[i].Imposto.ICMS := TICMS.Create;
                   nfe.Produtos[i].Imposto.ICMS.CodigoST := 5;

                   nfe.Produtos[i].Imposto.ICMS.PercRedST := 0;
                   nfe.Produtos[i].Imposto.ICMS.PercRedBC := 0;
                   nfe.Produtos[i].Imposto.ICMS.ValorBC := 0;
                   nfe.Produtos[i].Imposto.ICMS.AliquotaICMS := 0;
                   nfe.Produtos[i].Imposto.ICMS.ValorICMS := 0;

                   nfe.Produtos[i].Imposto.ICMS.PercValorST := 0;
                   nfe.Produtos[i].Imposto.ICMS.PercRedST := 0;
                   nfe.Produtos[i].Imposto.ICMS.ValorBCST := 0;
                   nfe.Produtos[i].Imposto.ICMS.AliquotaST:= 0;
                   nfe.Produtos[i].Imposto.ICMS.ValorST := 0;

               end;


               if nfe.Produtos[i].Imposto.PIS <> nil then begin     //  PIS

                       //nfe.Produtos[i].Imposto.PIS.ValorBC := ValidaDois(nfe.Produtos[i].Imposto.PIS.ValorBC);
                       //nfe.Produtos[i].Imposto.PIS.AliquotaPer := ValidaDois(nfe.Produtos[i].Imposto.PIS.AliquotaPer);

                      // nfe.Produtos[i].Imposto.PIS.AliquotaReais := ValidaQuatro(nfe.Produtos[i].Imposto.PIS.AliquotaReais);
                      // nfe.Produtos[i].Imposto.PIS.QntVend := ValidaQuatro(nfe.Produtos[i].Imposto.PIS.QntVend);

                      // nfe.Produtos[i].Imposto.PIS.Valor := ValidaDois(nfe.Produtos[i].Imposto.PIS.Valor);

               end else begin
                   // se nao axar o PIS criar e deixar como não tributado
                   nfe.Produtos[i].Imposto.PIS := TPIS.Create;
                   nfe.Produtos[i].Imposto.PIS.CodigoPIS := 4;

                   nfe.Produtos[i].Imposto.PIS.ValorBC := 0;
                   nfe.Produtos[i].Imposto.PIS.AliquotaPer := 0;

                   nfe.Produtos[i].Imposto.PIS.AliquotaReais := 0;
                   nfe.Produtos[i].Imposto.PIS.QntVend := 0;

                   nfe.Produtos[i].Imposto.PIS.Valor := 0;

               end;

               if nfe.Produtos[i].Imposto.PISST <> nil then begin     //  PISST

                       //nfe.Produtos[i].Imposto.PISST.ValorBC := ValidaDois(nfe.Produtos[i].Imposto.PISST.ValorBC);
                      // nfe.Produtos[i].Imposto.PISST.AliquotaPerc := ValidaDois(nfe.Produtos[i].Imposto.PISST.AliquotaPerc);

                      // nfe.Produtos[i].Imposto.PISST.AliquotaReais := ValidaQuatro(nfe.Produtos[i].Imposto.PISST.AliquotaReais);
                      // nfe.Produtos[i].Imposto.PISST.QntVend := ValidaQuatro(nfe.Produtos[i].Imposto.PISST.QntVend);

                      // nfe.Produtos[i].Imposto.PISST.Valor := ValidaDois(nfe.Produtos[i].Imposto.PISST.Valor);

               end;

               //else begin
               //    msg := 'PISST do item '+IntToStr(i+1)+ ' da nota nao encontrado!';
               //    Result := False;
               //    Exit;
               //end;


               if nfe.Produtos[i].Imposto.COFINS <> nil then begin     //  COFINS

                     //  nfe.Produtos[i].Imposto.COFINS.ValorBC := ValidaDois(nfe.Produtos[i].Imposto.COFINS.ValorBC);
                      // nfe.Produtos[i].Imposto.COFINS.AliquotaPer := ValidaDois(nfe.Produtos[i].Imposto.COFINS.AliquotaPer);

                      // nfe.Produtos[i].Imposto.COFINS.AliquotaReais := ValidaQuatro(nfe.Produtos[i].Imposto.COFINS.AliquotaReais);
                      // nfe.Produtos[i].Imposto.COFINS.QntVend := ValidaQuatro(nfe.Produtos[i].Imposto.COFINS.QntVend);

                      // nfe.Produtos[i].Imposto.COFINS.Valor := ValidaDois(nfe.Produtos[i].Imposto.COFINS.Valor);

               end else begin
                   // se nao axar o COFINS criar e deixar como não tributado
                   nfe.Produtos[i].Imposto.COFINS := TCOFINS.Create;
                   nfe.Produtos[i].Imposto.COFINS.CodigoCOFINS := 3;

                   nfe.Produtos[i].Imposto.COFINS.ValorBC := 0;
                   nfe.Produtos[i].Imposto.COFINS.AliquotaPer := 0;

                   nfe.Produtos[i].Imposto.COFINS.AliquotaReais := 0;
                   nfe.Produtos[i].Imposto.COFINS.QntVend := 0;

                   nfe.Produtos[i].Imposto.COFINS.Valor := 0;

               end;


               if nfe.Produtos[i].Imposto.COFINSST <> nil then begin     //  COFINSST

                       nfe.Produtos[i].Imposto.COFINSST.ValorBC := ValidaDois(nfe.Produtos[i].Imposto.COFINSST.ValorBC);
                       nfe.Produtos[i].Imposto.COFINSST.AliquotaPerc := ValidaDois(nfe.Produtos[i].Imposto.COFINSST.AliquotaPerc);

                       nfe.Produtos[i].Imposto.COFINSST.AliquotaReais := ValidaQuatro(nfe.Produtos[i].Imposto.COFINSST.AliquotaReais);
                       nfe.Produtos[i].Imposto.COFINSST.QntVend := ValidaQuatro(nfe.Produtos[i].Imposto.COFINSST.QntVend);

                       nfe.Produtos[i].Imposto.COFINSST.Valor := ValidaDois(nfe.Produtos[i].Imposto.COFINSST.Valor);

               end;

               // else begin
               //    msg := 'COFINSST do item '+IntToStr(i+1)+ ' da nota nao encontrado!';
               //    Result := False;
               //    Exit;
               //end;


               if nfe.Produtos[i].Imposto.ISSQN <> nil then begin     //  COFINS

                       //nfe.Produtos[i].Imposto.ISSQN.ValorBC := ValidaDois(nfe.Produtos[i].Imposto.ISSQN.ValorBC);
                       //nfe.Produtos[i].Imposto.ISSQN.Aliquota := ValidaDois(nfe.Produtos[i].Imposto.ISSQN.Aliquota);
                       //nfe.Produtos[i].Imposto.ISSQN.Valor := ValidaDois(nfe.Produtos[i].Imposto.ISSQN.Valor);

                        if not ValidaTam(nfe.Produtos[i].Imposto.ISSQN.CodListServ,3, 4) then begin
                             msg := 'Codigo de Servico do ISSQN do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota nao encontrado!';
                            Exit;
                        end;

                        if not ValidaTamObg(nfe.Produtos[i].Imposto.ISSQN.CodigoMunicipio,  7) then begin
                            msg := 'Codigo do Municipio do ISSQN do item '+IntToStr(i+1)+ ' (Cod Int: ' + nfe.Produtos[i].Produto.CodigoProduto + ' - ' + nfe.Produtos[i].Produto.Descricao + ') ' + ' da nota nao encontrado!';
                            Exit;
                        end;
               end;

           end else begin
               msg := 'Imposto do item '+IntToStr(i+1)+ ' da nota não encontrado!';
               Exit;
           end;

           if nfe.Produtos[i].InfAdicional <> '' then begin
               ValidaTam(nfe.Produtos[i].InfAdicional,  1, 500);
           end;


       end else begin
           msg := 'Item '+IntToStr(i+1)+ ' da nota nao encontrado!';
           Exit;
       end;
    end;
       }
       if nfe.Total <> nil then begin
           {
           nfe.Total.VlrBCICMS := ValidaDois(nfe.Total.VlrBCICMS);
           nfe.Total.VlrICMS := ValidaDois(nfe.Total.VlrICMS);
           nfe.Total.VlrBCST := ValidaDois(nfe.Total.VlrBCST);
           nfe.Total.VlrtST := ValidaDois(nfe.Total.VlrtST);
           nfe.Total.VlrProdServ := ValidaDois(nfe.Total.VlrProdServ);   //hauhauahauhauhauhauahauhauahauhauahauahauha
           nfe.Total.VlrSeguro := ValidaDois(nfe.Total.VlrSeguro);
           nfe.Total.VlrDesconto := ValidaDois(nfe.Total.VlrDesconto);
           nfe.Total.VlrII := ValidaDois(nfe.Total.VlrII);
           nfe.Total.VlrIPI := ValidaDois(nfe.Total.VlrIPI);
           nfe.Total.VlrPIS := ValidaDois(nfe.Total.VlrPIS);
           nfe.Total.VlrCOFINS := ValidaDois(nfe.Total.VlrCOFINS);
           nfe.Total.VlrFrete := ValidaDois(nfe.Total.VlrFrete);
           nfe.Total.VlrDespesa := ValidaDois(nfe.Total.VlrDespesa);
           nfe.Total.VlrTotal := ValidaDois(nfe.Total.VlrTotal);}

       end else begin

           msg := 'Valores Totais da nota não informados!';
           Exit;

       end;

       {if nfe.Transporte <> nil then begin

           if nfe.Transporte.Transportador <> nil then begin

               if nfe.Transporte.Transportador.CNPJ <> '' then
                   nfe.Transporte.Transportador.CNPJ := ValidaCNPJ(nfe.Transporte.Transportador.CNPJ);

                if nfe.Transporte.Transportador.CPF <> '' then
                   nfe.Transporte.Transportador.CPF := ValidaCPF(nfe.Transporte.Transportador.CPF);

                if not ValidaTam(nfe.Transporte.Transportador.Nome, 1, 60) then begin
                    msg := 'Nome do Transportador Incorreto: ' + nfe.Transporte.Transportador.Nome;
                    Exit;
                end;

                if not ValidaTam(nfe.Transporte.Transportador.IE,  2,14) then begin
                     nfe.Transporte.Transportador.IE := ValidaIE(nfe.Transporte.Transportador.IE);
                end;

                if not ValidaTam(nfe.Transporte.Transportador.Endereco,  1,60) then begin
                    msg := 'Endereço do Transportador Incorreto: ' + nfe.Transporte.Transportador.Endereco;
                    Exit;
                end;

                if not ValidaTam(nfe.Transporte.Transportador.Municipio, 1,60) then begin
                    msg := 'Munícipio do Transportador Incorreto. Verifique se o Transportador possui a cidade cadastrada. ' + nfe.Transporte.Transportador.Municipio;
                    Exit;
                end;

                if not ValidaTamObg(nfe.Transporte.Transportador.UF, 2) then begin
                    msg := 'UF do Transportador incorreto: ' + nfe.Transporte.Transportador.UF;
                    Exit;
                end;

           end;


           /// VERIFICAR
           if nfe.Transporte.ICMS <> nil then begin

                 //nfe.Transporte.ICMS.ValorServico := ValidaDois(nfe.Transporte.ICMS.ValorServico);
                 //nfe.Transporte.ICMS.ValorBC := ValidaDois(nfe.Transporte.ICMS.ValorBC);
                 //nfe.Transporte.ICMS.Aliquota := ValidaDois(nfe.Transporte.ICMS.Aliquota);
                 //nfe.Transporte.ICMS.ValorICMS := ValidaDois(nfe.Transporte.ICMS.ValorICMS);

                if NOT ValidaTamObg(nfe.Transporte.ICMS.CFOP, 4) then begin
                    msg := 'CFOP do ICMS de transporte Incorreto: ' + nfe.Transporte.ICMS.CFOP;
                    Exit;
                end;

                if NOT ValidaTamObg(nfe.Transporte.ICMS.CodigoMunicipio,  7) then begin
                    msg := 'Codigo municipio do ICSM de transporte Incorreto: ' + nfe.Transporte.ICMS.CodigoMunicipio;
                    Exit;
                end;   
           end;

           if nfe.Transporte.Veiculo <> nil then begin
                nfe.Transporte.Veiculo.placa := ValidaIE(nfe.Transporte.Veiculo.placa); //ValidaTam(nfe.Transporte.Veiculo.placa,1,8);
                if nfe.Transporte.Veiculo.placa = '' then begin
                    msg := 'Placa do veiculo de transporte Incorreto: ' + nfe.Transporte.Veiculo.placa;
                    Exit;
                end;

                if not ValidaTamObg(nfe.Transporte.Veiculo.UF,  2) then begin
                    msg := 'UF do Veiculo de transporte Incorreto: ' + nfe.Transporte.Veiculo.UF;
                    Exit;
                end;

                if nfe.Transporte.Veiculo.RNTC <> '' then begin
                    if NOT ValidaTam(nfe.Transporte.Veiculo.RNTC,  1, 20) then begin
                        msg := 'RNTC do Veiculo de transporte Incorreto: ' + nfe.Transporte.Veiculo.RNTC;
                        Exit;
                    end;
                end;

           end;

           if nfe.Transporte.Reboque <> nil then begin
                if NOT ValidaTam(nfe.Transporte.Reboque.placa,  1, 8) then begin
                     msg := 'Placa do Reboque de transporte Incorreto: ' + nfe.Transporte.Reboque.placa;
                    Exit;
                end;

                if NOT ValidaTamObg(nfe.Transporte.Reboque.UF, 2) then begin
                     msg := 'UF do Reboque de transporte Incorreto: ' + nfe.Transporte.Reboque.UF;
                    Exit;
                end;

                if nfe.Transporte.Reboque.RNTC <> '' then begin
                    if not ValidaTam(nfe.Transporte.Reboque.RNTC,  1, 20) then begin
                         msg := 'RNTC do Reboque de transporte Incorreto: ' + nfe.Transporte.Reboque.RNTC;
                        Exit;
                    end;
                end;


           end;

           if nfe.Transporte.Volume <> nil then begin

              // nfe.Transporte.Volume.QntVol := ValidaTam(nfe.Transporte.Volume.QntVol,0,15);
               //nfe.Transporte.Volume.Especie := ValidaTam(nfe.Transporte.Volume.Especie,0,60);
              // nfe.Transporte.Volume.Marca := ValidaTam(nfe.Transporte.Volume.Marca,0,60);
              // nfe.Transporte.Volume.NumeracaoVol := ValidaTam(nfe.Transporte.Volume.NumeracaoVol,0,60);

              // nfe.Transporte.Volume.PesoLiquido := ValidaTres(nfe.Transporte.Volume.PesoLiquido); // ValidaTam(nfe.Transporte.Volume.PesoLiquido,0,15);
               //nfe.Transporte.Volume.PesoBruto := ValidaTres(nfe.Transporte.Volume.PesoBruto); //ValidaTam(nfe.Transporte.Volume.PesoBruto,0,15);
                     // validar

           end;


       end else begin
           // se nao for informado transporte deixar por conta do destinatario
           nfe.Transporte := TTransporte.Create;
           nfe.Transporte.ModFrete := 0;
       end;







  Result := True;

   msg := '';
       }


end;

function TFNFe.Gerar(out chave:WideString; out xml:WideString;out msg:WideString):Boolean;
var
   nfe : TNFe;   //classe com dados da nfe
   i,tamArray :Integer;
   XVALORPROD: Real;
   XCFOP: STring;
   XFora: Boolean;
Util:NFe_Util_Interface;
begin
      SetInfoLog('VERIFICAR ARQUIVO DE CONFIGURAÇÃO....');
      If not FMenu.XArquivoConfiguracao
      Then Begin
           SetInfoLog('  ARQUIVO DE CONFIGURAÇÃO DO SISTEMA NÃO ENCONTRADO');
           msg := ' ARQUIVO DE CONFIGURAÇÃO DO SISTEMA NÃO ENCONTRADO';
           Result := False;
           Exit;
      End;

     SetInfoLog('');
     SetInfoLog('GERAR CLASSE NFE COM OS DADOS');

      XCFOP:= '';

      nfe := TNFe.Create;

      //dados gerais

      SetInfoLog('DADOS GERAIS:');

      nfe.Dados := TIde.Create;

      SetInfoLog('UF: 41');
      nfe.Dados.UFCodigo := 41; //padrão paraná

      nfe.Dados.modelo := 55;

      If FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('formatoDANFE') <> nil
      Then Begin
       If FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('formatoDANFE').Text = '2'
       Then Begin
           nfe.Dados.TipoImpressao := 2;
       End
       Else Begin
           nfe.Dados.TipoImpressao := 1;
       End;
      End
      Else Begin
       nfe.Dados.TipoImpressao := 1;
      End;

      nfe.Dados.TipoEmissao := XTipoEmissao;

      nfe.Dados.finNFe := 1;

     //busca todas as informações do cliente/fornecedor
     If XTIPOPED = 'PV'
     Then Begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('select pessoa.cpfcnpj, pessoa.nome, pessoa.endereco, pessoa.bairro,');
        DMESTOQUE.Alx.SQL.Add('cidade.nome as NOMECIDADE, cidade.cod_ibge, estado.uf_estado from cliente');  //é necessário acrescentar nesta sql o campo cod_ibge após atualizar o banco com o cod_ibge
        DMESTOQUE.Alx.SQL.Add('left join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa');
        DMESTOQUE.Alx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade');
        DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
        DMESTOQUE.Alx.SQL.Add('where cliente.cod_pessoa = '+IntToStr(DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsInteger));
        DMESTOQUE.Alx.Open;
     End
     Else If XTIPOPED = 'PC'
     Then Begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('select pessoa.cpfcnpj, pessoa.nome, pessoa.endereco, pessoa.bairro,');
        DMESTOQUE.Alx.SQL.Add('cidade.nome as NOMECIDADE, cidade.cod_ibge, estado.uf_estado from fornecedor');  //é necessário acrescentar nesta sql o campo cod_ibge após atualizar o banco com o cod_ibge
        DMESTOQUE.Alx.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
        DMESTOQUE.Alx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade');
        DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
        DMESTOQUE.Alx.SQL.Add('where fornecedor.cod_fornec = '+IntToStr(DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger));
        DMESTOQUE.Alx.Open;
     End;

      SetInfoLog('ESTADO DE DESTINO: ' + DMESTOQUE.Alx.FieldByName('uf_estado').AsString);

       // verifica se emitente é do msm do estado do destinatario
       if DMESTOQUE.Alx.FieldByName('uf_estado').AsString = 'PR'
       then begin // dentro do estado
           FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.fieldByName('CFOPINTERNO').AsString, ''); //filtra para buscar a cfop
           XFora := False;
           SetInfoLog('BUSCAR CFOP INTERNO EM LOJA');
       end
       else begin  //fora do estado
           FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.fieldByName('CFOPEXTERNO').AsString, ''); //filtra para buscar a cfop
           XFora := True;
           SetInfoLog('BUSCAR CFOP EXTERNO EM LOJA');
       end;

     If XTIPOPED = 'PV'
     Then Begin

       DMSAIDA.TFiscPV.Edit;
       // se o CFOP no docFisSaida estiver vazio ou nulo setar o CFOP configurado em loja
       if ((Trim(DMSAIDA.TFiscPV.FieldByName('COD_CFOP').AsString) = '') or (DMSAIDA.TFiscPV.FieldByName('COD_CFOP').AsInteger = 0)) then
           DMSAIDA.TFiscPV.FieldByName('COD_CFOP').AsInteger := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       DMSAIDA.TFiscPV.FieldByName('NFESERIE').AsInteger := StrToInt(XSerie);
       DMSAIDA.TFiscPV.Post;
       DMSAIDA.IBT.CommitRetaining;

        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('select docfissaida.numdocfis, formpag.descricao, cfop.descricao as DESCCFOP, cfop.cfop from docfissaida');
        DMESTOQUE.Alx.SQL.Add('left join cfop on docfissaida.cod_cfop = cfop.cod_cfop');
        DMESTOQUE.Alx.SQL.Add('left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
        DMESTOQUE.Alx.SQL.Add('left join formpag on pedvenda.cod_formpag = formpag.cod_formpag');
        DMESTOQUE.Alx.SQL.Add('where docfissaida.cod_pedido= :cod');
        DMESTOQUE.Alx.ParamByName('cod').AsString := DMSAIDA.TPedV.fieldByName('cod_pedvenda').AsString;
        DMESTOQUE.Alx.Open;

     End
     Else If XTIPOPED = 'PC'
     Then Begin

       DMENTRADA.TFiscPC.Edit;
       // se o CFOP no docFisSaida estiver vazio ou nulo setar o CFOP configurado em loja
       if Trim(DMENTRADA.TFiscPC.FieldByName('COD_CFOP').AsString) = '' then
           DMENTRADA.TFiscPC.FieldByName('COD_CFOP').AsInteger := DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       DMENTRADA.TFiscPC.FieldByName('NFESERIE').AsInteger := StrToInt(XSerie);
       DMENTRADA.TFiscPC.Post;
       DMENTRADA.IBT.CommitRetaining;

        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('select docfis.numdocfis, formpag.descricao, cfop.descricao as DESCCFOP, cfop.cfop from docfis');
        DMESTOQUE.Alx.SQL.Add('left join cfop on docfis.cod_cfop = cfop.cod_cfop');
        DMESTOQUE.Alx.SQL.Add('left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
        DMESTOQUE.Alx.SQL.Add('left join formpag on pedcompra.cod_formpag = formpag.cod_formpag');
        DMESTOQUE.Alx.SQL.Add('where docfis.cod_pedido= :cod');
        DMESTOQUE.Alx.ParamByName('cod').AsString := DMENTRADA.TPedC.fieldByName('cod_pedcomp').AsString;
        DMESTOQUE.Alx.Open;

     End;

      XCFOP := DMESTOQUE.Alx.fieldByName('cfop').AsString;
      SetInfoLog('CFOP DA NOTA ' + DMESTOQUE.Alx.fieldByName('cfop').AsString + ': ' + DMESTOQUE.Alx.fieldByName('DESCCFOP').AsString);

      nfe.Dados.NatuOpera:= DMESTOQUE.Alx.fieldByName('DESCCFOP').AsString; //descrição da CFOP
      SetInfoLog('FORMA DE PAGAMENTO: ' + DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString);

      //forma de pagamento 0 - a vista  1- a prazo
      if DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString <> 'À VISTA'
      then begin
         nfe.Dados.FormaPagam:= 1;
      end
      else begin
         nfe.Dados.FormaPagam:= 0
      end;

      //numero do documento fiscal
      nfe.Dados.NumeroDocFisc := DMESTOQUE.Alx.fieldByName('NUMDOCFIS').AsInteger; 
      SetInfoLog('NUMERO DOCUMENTO FISCAL: ' + DMESTOQUE.Alx.fieldByName('NUMDOCFIS').AsString);

      SetInfoLog('DATA DE EMISSÃO: ' + FormatDateTime('dd/mm/yyyy', Date()));
      nfe.Dados.DtEmissao := Date(); //data automática

     If XTIPOPED = 'PV'
     Then Begin
        SetInfoLog('DOCUMENTO FISCAL DE SAIDA: 1');
        nfe.Dados.TipoDocFisc := 1; //saída
     End
     Else If XTIPOPED = 'PC'
     Then Begin
        SetInfoLog('DOCUMENTO FISCAL DE ENTRADA: 0');
        nfe.Dados.TipoDocFisc := 0; //entrada
     End;

      //filtra cidade
      FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
      FiltraTabela(DMGEOGRAFIA.TCidade,'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');

      nfe.Dados.MunicipioCodigo := DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsString; //padrão toledo
      SetInfoLog('MUNICIPIO DE ENVIO: ' + DMGEOGRAFIA.TCidade.FieldByName('COD_CIDADE').AsString + ' IBGE: ' + DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsString);

      SetInfoLog('TIPO DE AMBIENTE: ' + IntToStr(XTpAmb));
      nfe.Dados.TipoAmb := XTpAmb; 
      
      //versão do macs
      If FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('versaoAplicativo') <> nil
      Then Begin
           nfe.Dados.VersaoAplicativo := FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('versaoAplicativo').Text;
      End
      Else Begin
           nfe.Dados.VersaoAplicativo := '4.1.50';
      End;
      SetInfoLog('VERSAO DO SISTEMA: ' + nfe.Dados.VersaoAplicativo);


     If XTIPOPED = 'PC'
     Then Begin
       //atf - 20/01/2009:  filtra docfissaida ref ao pedvenda da nota d compra p/ setar nota fiscal referenciada
       if Trim(DMENTRADA.TPedC.FieldByName('NUMDEV').AsString) <> ''
       then begin
           FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'NUMPED' ,DMENTRADA.TPedC.FieldByName('NUMDEV').AsString, '');
           FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', DMSAIDA.TPedV.fieldByName('cod_pedvenda').AsString, '');
           If  (not DMSAIDA.TFiscPV.IsEmpty) and (Length(DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString) = 44)
           Then begin
               nfe.Dados.NFeRef := DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString;
           End;
       end;
     End;


      //emitente
      SetInfoLog('');
      SetInfoLog('DADOS DO EMITENTE:');

      nfe.Emitente := TEmitente.Create;

      SetInfoLog('CNPJ: ' + DMMACS.TEmpresa.FieldByName('CNPJ').AsString);
      nfe.Emitente.CNPJ := DMMACS.TEmpresa.FieldByName('CNPJ').AsString; //CNPJ do emitente

      SetInfoLog('NOME: ' + DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString);
      nfe.Emitente.Nome := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString; //razão social do emitente

      SetInfoLog('NOME FANTASIA: ' + DMMACS.TEmpresa.FieldByName('FANTASIA').AsString);
      nfe.Emitente.NomeFantasia := DMMACS.TEmpresa.FieldByName('FANTASIA').AsString; //nome fantasia do emitente

      SetInfoLog('LOGRADOURO: ' + DMMACS.TEmpresa.FieldByName('ENDERECO').AsString);
      nfe.Emitente.Logradouro := DMMACS.TEmpresa.FieldByName('ENDERECO').AsString; //endereço do emitente

      SetInfoLog('NUMERO: ' + DMMACS.TEmpresa.FieldByName('NUMERO').AsString);
      nfe.Emitente.Numero := DMMACS.TEmpresa.FieldByName('NUMERO').AsString; //padrão por não possuir campo no banco

      nfe.Emitente.Complemento := ''; //padrão por não ter o campo no banco

      SetInfoLog('BAIRRO: ' + DMMACS.TEmpresa.FieldByName('BAIRRO').AsString);
      nfe.Emitente.Bairro := DMMACS.TEmpresa.FieldByName('BAIRRO').AsString; //bairro do emitente

      SetInfoLog('IBGE: ' + DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsString);
      nfe.Emitente.CodigoMunicipio := DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsString; //padrão toledo, mas após rodar o programa de atualização do IBGE, pode ser feita comparação

      SetInfoLog('NOME DO MUNICIPIO: ' + DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString);
      nfe.Emitente.NomeMunicipio := DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString; //padrão mas pode ser realizada a comparação

      SetInfoLog('UF: ' + DMGEOGRAFIA.WCidade.FieldByName('UF').AsString);
      nfe.Emitente.UF := DMGEOGRAFIA.WCidade.FieldByName('UF').AsString; //UF do emitente

      SetInfoLog('CEP: ' + DMMACS.TEmpresa.FieldByName('CEP').AsString);
      nfe.Emitente.CEP := DMMACS.TEmpresa.FieldByName('CEP').AsString; //CEP do emitente

      SetInfoLog('IE: ' + DMMACS.TEmpresa.FieldByName('INSC_EST').AsString);
      nfe.Emitente.IE := DMMACS.TEmpresa.FieldByName('INSC_EST').AsString; //insrição estadual do emitente

      If Trim(DMMACS.TEmpresa.FieldByName('CAD_SRF').AsString) <> ''
      Then Begin
           SetInfoLog('IEST: ' + DMMACS.TEmpresa.FieldByName('CAD_SRF').AsString);
           nfe.Emitente.IEST := DMMACS.TEmpresa.FieldByName('CAD_SRF').AsString;
      End;


      //destinatario
      SetInfoLog('');
      SetInfoLog('DADOS DO DESTINATARIO');

     If XTIPOPED = 'PV'
     Then Begin

        //busca todas as informações do cliente
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('select pessoa.cpfcnpj, pessoa.nome, pessoa.cod_pessoa, pessoa.endereco, pessoa.bairro, pessoa.ENDNUMERO,');
        DMESTOQUE.Alx.SQL.Add('cidade.nome as NOMECIDADE, cidade.cod_ibge, estado.uf_estado, cliente.suframa from cliente');  //é necessário acrescentar nesta sql o campo cod_ibge após atualizar o banco com o cod_ibge
        DMESTOQUE.Alx.SQL.Add('left join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa');
        DMESTOQUE.Alx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade');
        DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
        DMESTOQUE.Alx.SQL.Add('where cliente.cod_cliente = '+IntToStr(DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsInteger));
        DMESTOQUE.Alx.Open;

     End
     Else If XTIPOPED = 'PC'
     Then Begin

        //busca todas as informações do cliente
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('select pessoa.cpfcnpj, pessoa.nome, pessoa.cod_pessoa, pessoa.endereco, pessoa.bairro, pessoa.ENDNUMERO,');
        DMESTOQUE.Alx.SQL.Add('cidade.nome as NOMECIDADE, cidade.cod_ibge, estado.uf_estado from fornecedor');  //é necessário acrescentar nesta sql o campo cod_ibge após atualizar o banco com o cod_ibge
        DMESTOQUE.Alx.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
        DMESTOQUE.Alx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade');
        DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
        DMESTOQUE.Alx.SQL.Add('where fornecedor.cod_fornec = ' + IntToStr(DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger));
        DMESTOQUE.Alx.Open;

     End;

     //filtra pessoaj para verificar se é pessoa juridica
    DMESTOQUE.Alx4.Close;
    DMESTOQUE.Alx4.SQL.Clear;
    DMESTOQUE.Alx4.SQL.Add('select * from pessoaj');
    DMESTOQUE.Alx4.SQL.Add('where pessoaj.COD_PESSOA = :CODPESSOA');
    DMESTOQUE.Alx4.ParamByName('CODPESSOA').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PESSOA').AsInteger;
    DMESTOQUE.Alx4.Open;

     nfe.Destinatario := TDestinatario.Create;

      //se estiver vazio significa q é pessoa física
      if DMESTOQUE.Alx4.IsEmpty
      then begin
           SetInfoLog('CPF: ' + DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString);
           nfe.Destinatario.CPF := DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString; //cpf do destinatário
      end
      else begin
           SetInfoLog('CNPJ: ' + DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString);
           nfe.Destinatario.CNPJ := DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString; //cnpj do destinatário
      end;

      SetInfoLog('NOME: ' + DMESTOQUE.Alx.FieldByName('NOME').AsString);
      nfe.Destinatario.Nome := DMESTOQUE.Alx.FieldByName('NOME').AsString; //nome do destinatário

      SetInfoLog('ENDERECO: ' + DMESTOQUE.Alx.FieldByName('ENDERECO').AsString);
      nfe.Destinatario.Logradouro := DMESTOQUE.Alx.FieldByName('ENDERECO').AsString; //endereço do destinatário

      SetInfoLog('BAIRRO: ' + DMESTOQUE.Alx.FieldByName('BAIRRO').AsString);
      nfe.Destinatario.Bairro := DMESTOQUE.Alx.FieldByName('BAIRRO').AsString; //bairro do destinatário

      If Trim(DMESTOQUE.Alx.FieldByName('ENDNUMERO').AsString) = ''
      Then Begin
           SetInfoLog('NUMERO: S/N');
           nfe.Destinatario.Numero := 'S/N'; //padrão por não conter campo no banco de dados
      End
      Else Begin
           SetInfoLog('NUMERO: ' + DMESTOQUE.Alx.FieldByName('ENDNUMERO').AsString);
           nfe.Destinatario.Numero := Trim(DMESTOQUE.Alx.FieldByName('ENDNUMERO').AsString); // numero
      End;

      SetInfoLog('CODIGO IBGE: ' + DMESTOQUE.Alx.FieldByName('COD_IBGE').AsString);
      nfe.Destinatario.CodigoMunicipio := DMESTOQUE.Alx.FieldByName('COD_IBGE').AsString; //codigo do ibge do destinatário

      SetInfoLog('CIDADE: ' + DMESTOQUE.Alx.FieldByName('NOMECIDADE').AsString);
      nfe.Destinatario.NomeMunicipio := DMESTOQUE.Alx.FieldByName('NOMECIDADE').AsString; //nome da cidade do destinatário

      SetInfoLog('UF: ' + DMESTOQUE.Alx.FieldByName('UF_ESTADO').AsString);
      nfe.Destinatario.UF := DMESTOQUE.Alx.FieldByName('UF_ESTADO').AsString; //uf do estado do destinatário

      if not DMESTOQUE.Alx4.IsEmpty
      then begin
           SetInfoLog('IE: ' + DMESTOQUE.Alx4.FieldByName('INSC_EST').AsString);
           nfe.Destinatario.IE := DMESTOQUE.Alx4.FieldByName('INSC_EST').AsString; //I.E. do destinatário
      end;

      nfe.Destinatario.ISUFRAMA := '';
     If XTIPOPED = 'PV'
     Then Begin
        If Length(DMESTOQUE.Alx.FieldByName('SUFRAMA').AsString) > 0 // atf - 14/04/2009: se possuir inscrição no suframa
        Then Begin
             SetInfoLog('SUFRAMA: ' + DMESTOQUE.Alx.FieldByName('SUFRAMA').AsString);
             nfe.Destinatario.ISUFRAMA := DMESTOQUE.Alx.FieldByName('SUFRAMA').AsString;
        End;
     End;


      //produtos
      SetInfoLog('');
      SetInfoLog('DADOS DOS PRODUTOS');
      If XTIPOPED = 'PV'
      Then Begin

        DMESTOQUE.Alx3.Close;
        DMESTOQUE.Alx3.SQL.Clear;
        DMESTOQUE.Alx3.SQL.Add(' select cst.cod_cst, cst.cod_sit_trib, ');
        DMESTOQUE.Alx3.SQL.Add(' subproduto.contrint, subproduto.codbarra, subproduto.descricao, subproduto.cod_unidcompra, ');
        DMESTOQUE.Alx3.SQL.Add(' subproduto.ncm, subproduto.cod_cst, subproduto.cod_subproduto, estoque.cod_estoque, subproduto.cod_unidvenda, ');
        DMESTOQUE.Alx3.SQL.Add(' estoque.cod_subprod, estoque.cofins, estoque.icms, estoque.pis, estoque.reducbase, ');
        DMESTOQUE.Alx3.SQL.Add(' itenspedven.aliqicms, itenspedven.aliqipi, itenspedven.baseicms, itenspedven.baseicmssubs, ');
        DMESTOQUE.Alx3.SQL.Add(' itenspedven.cod_estoque, itenspedven.cod_lote, itenspedven.qtdeprod, itenspedven.cod_pedven, ');
        DMESTOQUE.Alx3.SQL.Add(' itenspedven.valortotal, itenspedven.valunit, itenspedven.vlricms, ');
        DMESTOQUE.Alx3.SQL.Add(' itenspedven.vlripi,  itenspedven.reducbaseicms, itenspedven.vlricmssubs, itenspedven.cfop, itenspedven.ipnmva, itenspedven.TIPOLISTA');
        DMESTOQUE.Alx3.SQL.Add('from itenspedven');
        DMESTOQUE.Alx3.SQL.Add(' left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
        DMESTOQUE.Alx3.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
        DMESTOQUE.Alx3.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst');
        DMESTOQUE.Alx3.SQL.Add('where itenspedven.cod_pedven = :COD');

     End
     Else If XTIPOPED = 'PC'
     Then Begin

        DMESTOQUE.Alx3.Close;
        DMESTOQUE.Alx3.SQL.Clear;
        DMESTOQUE.Alx3.SQL.Add(' select cst.cod_cst, cst.cod_sit_trib, ');
        DMESTOQUE.Alx3.SQL.Add(' subproduto.contrint, subproduto.codbarra, subproduto.descricao, subproduto.cod_unidcompra, ');
        DMESTOQUE.Alx3.SQL.Add(' subproduto.ncm, subproduto.cod_cst, subproduto.cod_subproduto, estoque.cod_estoque, subproduto.cod_unidvenda, ');
        DMESTOQUE.Alx3.SQL.Add(' estoque.cod_subprod, estoque.cofins, estoque.icms, estoque.pis, estoque.reducbase, ');
        DMESTOQUE.Alx3.SQL.Add(' itenspedc.aliqicms, itenspedc.aliqipi, itenspedc.baseicms, itenspedc.baseicmssubs, ');
        DMESTOQUE.Alx3.SQL.Add(' itenspedc.cod_estoque, itenspedc.cod_lote, itenspedc.qtdeprod, itenspedc.cod_pedcompra, ');
        DMESTOQUE.Alx3.SQL.Add(' itenspedc.valortotal, itenspedc.valunit, itenspedc.vlricms, ');
        DMESTOQUE.Alx3.SQL.Add(' itenspedc.vlripi,  itenspedc.reducbaseicms, itenspedc.vlricmssubs, subproduto.classificacao as tipolista');
        DMESTOQUE.Alx3.SQL.Add('from itenspedc');
        DMESTOQUE.Alx3.SQL.Add(' left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
        DMESTOQUE.Alx3.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
        DMESTOQUE.Alx3.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst');
        DMESTOQUE.Alx3.SQL.Add('where itenspedc.cod_pedcompra = :COD');

     End;

     DMESTOQUE.Alx3.ParamByName('COD').AsString := IntToStr(XCODPED);
     DMESTOQUE.Alx3.Open;

      //varre array buscando número de produtos
     tamArray := 0;
     DMESTOQUE.Alx3.First;
     while not  DMESTOQUE.Alx3.Eof do
     begin
        tamArray := tamArray+1;
        DMESTOQUE.Alx3.Next;
     end;

     SetInfoLog('NUMERO DE PRODUTOS: ' + IntToStr(tamArray));

      //set tamanho do array para add os produtos
      SetLength(nfe.Produtos, tamArray);

      // volta a primeira ocorrencia
      DMESTOQUE.Alx3.First;

      XVALORPROD := 0;

      for i:= 0 to tamArray-1 do begin

           SetInfoLog('');
           nfe.Produtos[i] := TItem.Create;

           SetInfoLog('NUMERO DO ITEM: ' + IntToStr(i+1));
           nfe.Produtos[i].NmItem := i+1;

           nfe.Produtos[i].Produto := TProd.Create;

           SetInfoLog('CODIGO DO PRODUTO: ' + DMESTOQUE.Alx3.FieldByName('CONTRINT').AsString);
           nfe.Produtos[i].Produto.CodigoProduto := DMESTOQUE.Alx3.FieldByName('CONTRINT').AsString; //controle interno do produto

           SetInfoLog('CODIGO DE BARRA: ' + DMESTOQUE.Alx3.FieldByName('CODBARRA').AsString);
           nfe.Produtos[i].Produto.CodigoBarra := DMESTOQUE.Alx3.FieldByName('CODBARRA').AsString; //codigo de barra do produto

           SetInfoLog('DESCRIÇÃO: ' + DMESTOQUE.Alx3.FieldByName('DESCRICAO').AsString);
           nfe.Produtos[i].Produto.Descricao := DMESTOQUE.Alx3.FieldByName('DESCRICAO').AsString; //descrição do produto

           SetInfoLog('NCM: ' + DMESTOQUE.Alx3.FieldByName('NCM').AsString);
           nfe.Produtos[i].Produto.CodigoNCM := DMESTOQUE.Alx3.FieldByName('NCM').AsString; //nomenclatura comum do mercosul


           Try
               If XTIPOPED = 'PV'
               Then Begin
                   nfe.Produtos[i].Produto.CFOP := StrToInt(DMESTOQUE.Alx3.FieldByName('CFOP').AsString);
               End
               Else If XTIPOPED = 'PC'
               Then Begin
                   nfe.Produtos[i].Produto.CFOP := StrToInt(XCFOP);
               End;
           Except
               SetInfoLog('CODIGO DO PRODUTO: ' + DMESTOQUE.Alx3.FieldByName('CONTRINT').AsString + '(' + DMESTOQUE.Alx3.FieldByName('DESCRICAO').AsString + ') ESTA COM UM CFOP INVALIDO.');
               msg := 'CODIGO DO PRODUTO: ' + DMESTOQUE.Alx3.FieldByName('CONTRINT').AsString + '(' + DMESTOQUE.Alx3.FieldByName('DESCRICAO').AsString + ') ESTA COM UM CFOP INVALIDO.';
               Result := False;
               Exit;
           End;
           SetInfoLog('CFOP: ' + IntToStr(nfe.Produtos[i].Produto.CFOP));

           //filtrar pelo unidade de venda
           DMESTOQUE.TUnidade.Close;
           DMESTOQUE.TUnidade.SQL.Clear;
           DMESTOQUE.TUnidade.SQL.Add('select * from unidade');
           DMESTOQUE.TUnidade.SQL.Add('where unidade.cod_unidade = '+IntToStr(DMESTOQUE.Alx3.FieldByName('COD_UNIDVENDA').AsInteger));
           DMESTOQUE.TUnidade.Open;

           SetInfoLog('UNIDADE COMERCIAL: ' + DMESTOQUE.TUnidade.FieldByName('SIGLA_UNID').AsString);
           nfe.Produtos[i].Produto.UnidadeComercial := DMESTOQUE.TUnidade.FieldByName('SIGLA_UNID').AsString; //sigla da unidade vendida do produto

           SetInfoLog('QUANTIDADE COMERCIAL: ' + DMESTOQUE.Alx3.FieldByName('QTDEPROD').AsString);
           nfe.Produtos[i].Produto.QntComercial := DMESTOQUE.Alx3.FieldByName('QTDEPROD').AsCurrency; //quantidade vendida do produto

           SetInfoLog('VALOR UNITARIO: ' + DMESTOQUE.Alx3.FieldByName('VALUNIT').AsString);
           nfe.Produtos[i].Produto.ValorUnitario := DMESTOQUE.Alx3.FieldByName('VALUNIT').AsCurrency; //valor unitario de venda do produto

           SetInfoLog('VALOR BRUTO: ' + DMESTOQUE.Alx3.FieldByName('VALORTOTAL').AsString);
           nfe.Produtos[i].Produto.ValorBruto := DMESTOQUE.Alx3.FieldByName('VALORTOTAL').AsCurrency; //valor total do produto

           XVALORPROD:= XVALORPROD + DMESTOQUE.Alx3.FieldByName('VALORTOTAL').AsCurrency;

           SetInfoLog('GTIN (CODIGO BARRA): ' + DMESTOQUE.Alx3.FieldByName('CODBARRA').AsString);
           nfe.Produtos[i].Produto.GTIN := DMESTOQUE.Alx3.FieldByName('CODBARRA').AsString; //codigo de barra do produto

           SetInfoLog('UNIDADE TRIBUTAVEL: ' + DMESTOQUE.TUnidade.FieldByName('SIGLA_UNID').AsString);
           nfe.Produtos[i].Produto.UnidadeTributavel := nfe.Produtos[i].Produto.UnidadeComercial; //sigla da unidade tributável do produto

           SetInfoLog('QUANTIDADE TRIBUTAVEL: ' + DMESTOQUE.Alx3.FieldByName('QTDEPROD').AsString);
           nfe.Produtos[i].Produto.QntTributavel :=  nfe.Produtos[i].Produto.QntComercial; //qtd vendida do produto

           SetInfoLog('VALOR UNITARIO TRIBUTAVEL: ' + DMESTOQUE.Alx3.FieldByName('VALUNIT').AsString);
           nfe.Produtos[i].Produto.ValorUnitTribut := nfe.Produtos[i].Produto.ValorUnitario; //valor unitario do produto




           //medicamento

           {SetLength(nfe.Produtos[i].Produto.Medicamento, 1);

           nfe.Produtos[i].Produto.Medicamento[0] := TMed.Create;

           nfe.Produtos[i].Produto.Medicamento[0].NmLote := DMESTOQUE.Alx3.FieldByName('LOTE').AsString; //descrição do lote

           nfe.Produtos[i].Produto.Medicamento[0].QntLote := DMESTOQUE.Alx3.FieldByName('QTD').AsString; //quantidade de produtos em estoque deste lote

           nfe.Produtos[i].Produto.Medicamento[0].DtFabricacao := DMESTOQUE.Alx3.FieldByName('FABRICACAO').AsString; //data de fabricação do lote

           nfe.Produtos[i].Produto.Medicamento[0].DtValidade := DMESTOQUE.Alx3.FieldByName('VENCIMENTO').AsString; //data de vencimento do lote

           nfe.Produtos[i].Produto.Medicamento[0].ValorMaxCons := '20.00'; }


           //impostos

           nfe.Produtos[i].Imposto := TImposto.Create;

           //ICMS
           nfe.Produtos[i].Imposto.ICMS := TICMS.Create;

           nfe.Produtos[i].Imposto.ICMS.CodigoST := DMESTOQUE.Alx3.FieldByName('COD_CST').AsInteger - 1; // código da situação tributaria
           SetInfoLog('CODIGO ST: ' + IntToStr(nfe.Produtos[i].Imposto.ICMS.CodigoST));

           SetInfoLog('MODALIDADE DE DETERMINAÇÃO DA BC: 0');
           nfe.Produtos[i].Imposto.ICMS.ModDetBC := 0; // modalidade de determinação da BC

           // modalidade de determinação da BC ST
           If (UpperCase(DMESTOQUE.Alx3.FieldByName('TIPOLISTA').AsString) = 'P')
           Then Begin
                nfe.Produtos[i].Imposto.ICMS.ModBDST := 2;
           End
           Else If (UpperCase(DMESTOQUE.Alx3.FieldByName('TIPOLISTA').AsString) = 'N')
           Then Begin
                nfe.Produtos[i].Imposto.ICMS.ModBDST := 1;
           End
           Else If (UpperCase(DMESTOQUE.Alx3.FieldByName('TIPOLISTA').AsString) = 'T')
           Then Begin
                nfe.Produtos[i].Imposto.ICMS.ModBDST := 3;        // tem o 4 q é com margem de valor agregado
           End
           Else Begin

                nfe.Produtos[i].Imposto.ICMS.ModBDST := 0; // modalidade de determinação da BC ST
           End;
           SetInfoLog('MODALIDADE DE DETERMINAÇÃO DA BC ST: ' + DMESTOQUE.Alx3.FieldByName('TIPOLISTA').AsString + ' = ' + IntToStr(nfe.Produtos[i].Imposto.ICMS.ModBDST));

                                                                                     //buscar em empresa
           nfe.Produtos[i].Imposto.ICMS.PercRedBC := DMESTOQUE.Alx3.FieldByName('REDUCBASE').AsCurrency; //percentual de redução
           SetInfoLog('PERCENTUAL DE REDUÇÃO: ' + DMESTOQUE.Alx3.FieldByName('REDUCBASE').AsString);

           nfe.Produtos[i].Imposto.ICMS.ValorBC := DMESTOQUE.Alx3.FieldByName('BASEICMS').AsCurrency; //base de calculo icms
           SetInfoLog('BASE DE CALCULO DO ICMS: ' + DMESTOQUE.Alx3.FieldByName('BASEICMS').AsString);

           nfe.Produtos[i].Imposto.ICMS.AliquotaICMS := DMESTOQUE.Alx3.FieldByName('ALIQICMS').AsCurrency; //aliquota icms
           SetInfoLog('ALIQUOTA DO ICMS: ' + DMESTOQUE.Alx3.FieldByName('ALIQICMS').AsString);

           DMGEOGRAFIA.TAlx.Close;
           DMGEOGRAFIA.TAlx.SQL.Clear;
           DMGEOGRAFIA.TAlx.SQL.Add('select * from estado where upper(estado.uf_estado) = upper(' + #39 + DMESTOQUE.Alx.FieldByName('UF_ESTADO').AsString + #39 + ')');
           DMGEOGRAFIA.TAlx.Open;


           If XTIPOPED = 'PV'
           Then Begin
               SetInfoLog('PERCENTUAL DE MARGEM DE VALOR AGREGADO: ' + DMESTOQUE.Alx3.FieldByName('IPNMVA').AsString);
               nfe.Produtos[i].Imposto.ICMS.PercValorST := DMESTOQUE.Alx3.FieldByName('IPNMVA').AsCurrency;
           End;

           SetInfoLog('VALOR DO ICMS: ' + DMESTOQUE.Alx3.FieldByName('VLRICMS').AsString);
           nfe.Produtos[i].Imposto.ICMS.ValorICMS := DMESTOQUE.Alx3.FieldByName('VLRICMS').AsCurrency; //valor do icms

           SetInfoLog('PERCENTUAL DE REDUÇÃO NA BASE ST: ' + DMESTOQUE.Alx3.FieldByName('REDUCBASE').AsString);
           nfe.Produtos[i].Imposto.ICMS.PercRedST := DMESTOQUE.Alx3.FieldByName('REDUCBASE').AsCurrency; //parcentual de redução do icms de ST

           SetInfoLog('BASE DE CÁLCULO ST: ' + DMESTOQUE.Alx3.FieldByName('BASEICMSSUBS').AsString);
           nfe.Produtos[i].Imposto.ICMS.ValorBCST := DMESTOQUE.Alx3.FieldByName('BASEICMSSUBS').AsCurrency; // base de calculo icms de ST

           SetInfoLog('ALIQUOTA ICMS ST: ' + DMESTOQUE.Alx3.FieldByName('ALIQICMS').AsString);
           nfe.Produtos[i].Imposto.ICMS.AliquotaST := DMESTOQUE.Alx3.FieldByName('ALIQICMS').AsCurrency; //aliquota icms

           SetInfoLog('VALOR ICMS ST: ' + DMESTOQUE.Alx3.FieldByName('VLRICMSSUBS').AsString);
           nfe.Produtos[i].Imposto.ICMS.ValorST := DMESTOQUE.Alx3.FieldByName('VLRICMSSUBS').AsCurrency; // valor de icms de ST



           SetInfoLog('PIS COM VALOR ' + DMESTOQUE.Alx3.FieldByName('PIS').AsString);
           //PIS
           nfe.Produtos[i].Imposto.PIS := TPIS.Create;

           nfe.Produtos[i].Imposto.PIS.CodigoPIS := 3; // esta como nao tributado

           nfe.Produtos[i].Imposto.PIS.PISOutros := False; // esta como nao tributado

           nfe.Produtos[i].Imposto.PIS.ValorBC := DMESTOQUE.Alx3.FieldByName('PIS').AsCurrency;  // esta como nao tributado

           nfe.Produtos[i].Imposto.PIS.AliquotaPer := DMESTOQUE.Alx3.FieldByName('PIS').AsCurrency;  // esta como nao tributado

           nfe.Produtos[i].Imposto.PIS.AliquotaReais := DMESTOQUE.Alx3.FieldByName('PIS').AsCurrency;  // esta como nao tributado

           nfe.Produtos[i].Imposto.PIS.QntVend := DMESTOQUE.Alx3.FieldByName('PIS').AsCurrency; // esta como nao tributado

           nfe.Produtos[i].Imposto.PIS.Valor := DMESTOQUE.Alx3.FieldByName('PIS').AsCurrency;  // esta como nao tributado


           SetInfoLog('CONFINS COM TODOS VALORES ZERADOS');
           //cofins
           nfe.Produtos[i].Imposto.COFINS := TCOFINS.Create;

           nfe.Produtos[i].Imposto.COFINS.CodigoCOFINS := 3;     // esta como nao tributado

           nfe.Produtos[i].Imposto.COFINS.ValorBC := 0;   // esta como nao tributado

           nfe.Produtos[i].Imposto.COFINS.AliquotaPer := 0;  // esta como nao tributado

           nfe.Produtos[i].Imposto.COFINS.AliquotaReais := 0;   // esta como nao tributado

           nfe.Produtos[i].Imposto.COFINS.QntVend := 0;  // esta como nao tributado

           nfe.Produtos[i].Imposto.COFINS.Valor := 0;  // esta como nao tributado


           //verifica se for sementes incluir informações de lote
            If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
            Then Begin
               DMESTOQUE.Alx5.Close;
               DMESTOQUE.Alx5.SQL.Clear;
               DMESTOQUE.Alx5.SQL.Add('SELECT * FROM LOTE WHERE LOTE.COD_LOTE=:COD_LOTE');
               DMESTOQUE.Alx5.ParamByName('COD_LOTE').AsInteger := DMESTOQUE.Alx3.FieldByName('cod_lote').AsInteger;
               DMESTOQUE.Alx5.Open;

               If not DMESTOQUE.Alx5.IsEmpty
               Then Begin
                   nfe.Produtos[i].InfAdicional := 'Lote: ' + DMESTOQUE.Alx5.FieldByName('LOTE').AsString + ' - Venc: ' + DMESTOQUE.Alx5.FieldByName('VENCIMENTO').AsString;
               End
               Else Begin
                   nfe.Produtos[i].InfAdicional := '';
               End;
            End;


           //passa p/ proxima linha
           DMESTOQUE.Alx3.Next;
      end;

      DMESTOQUE.Alx3.First;


      DMESTOQUE.Alx5.Close;
      DMESTOQUE.Alx5.SQL.Clear;

      If XTIPOPED = 'PV'
      Then Begin

          DMESTOQUE.Alx5.SQL.Add('select docfissaida.baseicms, docfissaida.vlricms, docfissaida.bascalsubs, docfissaida.vlrtotdocnf, pedvenda.descmoe,');
          DMESTOQUE.Alx5.SQL.Add('docfissaida.vlricmsubs, docfissaida.vlrfrete, docfissaida.vlrseg, docfissaida.vlroutrasdesp,');
          DMESTOQUE.Alx5.SQL.Add('docfissaida.freteconta, docfissaida.placa, docfissaida.ufplaca, docfissaida.quantfrete, docfissaida.especiefrete, docfissaida.marcafrete, docfissaida.pesobruto, docfissaida.pesoliq, docfissaida.cod_transp, docfissaida.NUMCONHEC, docfissaida.ANTT ');
          DMESTOQUE.Alx5.SQL.Add('from docfissaida');
          DMESTOQUE.Alx5.SQL.Add('left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
          DMESTOQUE.Alx5.SQL.Add('where docfissaida.cod_pedido= :cod');

       End
       Else If XTIPOPED = 'PC'
       Then Begin

          DMESTOQUE.Alx5.SQL.Add('select docfis.baseicms, docfis.vlricms, docfis.bascalsubs, docfis.vlrtotdocnf, pedcompra.descmoe,');
          DMESTOQUE.Alx5.SQL.Add('docfis.vlricmsubs, docfis.vlrfrete, docfis.vlrseg, docfis.vlroutrasdesp');
          DMESTOQUE.Alx5.SQL.Add('from docfis');
          DMESTOQUE.Alx5.SQL.Add('left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
          DMESTOQUE.Alx5.SQL.Add('where docfis.cod_pedido= :cod');

      End;

      DMESTOQUE.Alx5.ParamByName('cod').AsInteger := XCODPED;
      DMESTOQUE.Alx5.Open;

      SetInfoLog('');
      SetInfoLog('TOTAL DA NOTA:');

      nfe.Total := TTotalICMS.Create;

      SetInfoLog('BASE DE ICMS: ' + DMESTOQUE.Alx5.fieldByName('BASEICMS').AsString);
      nfe.Total.VlrBCICMS := DMESTOQUE.Alx5.fieldByName('BASEICMS').AsCurrency; //base de calculo de icms

      SetInfoLog('VALOR DO ICMS: ' + DMESTOQUE.Alx5.fieldByName('VLRICMS').AsString);
      nfe.Total.VlrICMS := DMESTOQUE.Alx5.fieldByName('VLRICMS').AsCurrency; //valor do icms

      SetInfoLog('BASE CALCULO ST: ' + DMESTOQUE.Alx5.fieldByName('BASCALSUBS').AsString);
      nfe.Total.VlrBCST := DMESTOQUE.Alx5.fieldByName('BASCALSUBS').AsCurrency; //base de calculo de icms de ST

      SetInfoLog('VALOR ST: ' + DMESTOQUE.Alx5.fieldByName('VLRICMSUBS').AsString);
      nfe.Total.VlrtST := DMESTOQUE.Alx5.fieldByName('VLRICMSUBS').AsCurrency; //valor de calculo de icms de ST

      SetInfoLog('VALOR TOTAL PRODUTOS E SERVIÇOS: ' + FloatToStr(XVALORPROD));
      nfe.Total.VlrProdServ := XVALORPROD; //soma do valor total dos produtos

      SetInfoLog('VALOR DO FRETE: ' + DMESTOQUE.Alx5.fieldByName('VLRFRETE').AsString);
      nfe.Total.VlrFrete := DMESTOQUE.Alx5.fieldByName('VLRFRETE').AsCurrency; //valor de frete direto do pedido de venda

      SetInfoLog('VALOR DO SEGURO: ' + DMESTOQUE.Alx5.fieldByName('VLRSEG').AsString);
      nfe.Total.VlrSeguro := DMESTOQUE.Alx5.fieldByName('VLRSEG').AsCurrency; //valor do seguro

      SetInfoLog('VALOR DO DESCONTO: ' + DMESTOQUE.Alx5.fieldByName('DESCMOE').AsString);
      nfe.Total.VlrDesconto := DMESTOQUE.Alx5.fieldByName('DESCMOE').AsCurrency; //valor do desconto direto do pedido de venda

      SetInfoLog('VALOR DO II: 0.00   (PASSANDO COMO ZERO VERIFICAR)');
      nfe.Total.VlrII := 0; //dados do imposto de importação, zero

      SetInfoLog('VALOR DO PIS: 0.00   (PASSANDO COMO ZERO VERIFICAR)');
      nfe.Total.VlrPIS := 0; //não tributado

      SetInfoLog('VALOR DO COFINS: 0.00   (PASSANDO COMO ZERO VERIFICAR)');
      nfe.Total.VlrCOFINS := 0; // não tributado

      SetInfoLog('VALOR DAS DESPESAS: ' + DMESTOQUE.Alx5.fieldByName('VLROUTRASDESP').AsString);
      nfe.Total.VlrDespesa := DMESTOQUE.Alx5.fieldByName('VLROUTRASDESP').AsCurrency; //outras despesas

      SetInfoLog('VALOR TOTAL: ' + DMESTOQUE.Alx5.fieldByName('VLRTOTDOCNF').AsString);
      nfe.Total.VlrTotal := DMESTOQUE.Alx5.fieldByName('VLRTOTDOCNF').AsCurrency; //valor total da nota fiscal



      //transporte
      nfe.Transporte := TTransporte.Create;

      If XTIPOPED = 'PV'
      Then Begin

          If DMESTOQUE.Alx5.fieldByName('FRETECONTA').AsString = '1'
          Then Begin
               SetInfoLog('');
               SetInfoLog('TRANSPORTE POR CONTA DO EMITENTE');
               SetInfoLog('');

               nfe.Transporte.ModFrete := 0;

          End
          Else Begin
               SetInfoLog('');
               SetInfoLog('TRANSPORTE POR CONTA DO DESTINATARIO');
               SetInfoLog('');

               nfe.Transporte.ModFrete := 1;
          End;

          // atf - 13/04/2009: se tiver transportadora
         If DMESTOQUE.Alx5.fieldByName('COD_TRANSP').AsInteger > 0
         Then Begin
              FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', DMSAIDA.TFiscPV.FieldByName('COD_TRANSP').AsString, '');
              // atf - 13/04/2009:   se encontrar transportadora
              If not DMPESSOA.WFornecedor.IsEmpty
              Then Begin
                   nfe.Transporte.Transportador := TTransportadora.Create;

                   //filtra pessoaj para verificar se o cliente é pessoa juridica
                    DMGEOGRAFIA.TAlx.Close;
                    DMGEOGRAFIA.TAlx.SQL.Clear;
                    DMGEOGRAFIA.TAlx.SQL.Add('select * from pessoaj');
                    DMGEOGRAFIA.TAlx.SQL.Add('where pessoaj.COD_PESSOA = :CODPESSOA');
                    DMGEOGRAFIA.TAlx.ParamByName('CODPESSOA').AsInteger := DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsInteger;
                    DMGEOGRAFIA.TAlx.Open;

                    //se estiver vazio significa q é um cliente pessoa física
                    if DMGEOGRAFIA.TAlx.IsEmpty
                    then begin
                         SetInfoLog('CPF: ' + DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString);
                         nfe.Transporte.Transportador.CPF := DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString; //cpf do transportador
                    end
                    else begin
                         SetInfoLog('CNPJ: ' + DMPESSOA.TAlx.FieldByName('CPFCNPJ').AsString);
                         nfe.Transporte.Transportador.CNPJ := DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString; //cnpj do transportador

                         If Length(Trim(DMGEOGRAFIA.TAlx.FieldByName('INSC_EST').AsString)) > 0
                         Then Begin
                              SetInfoLog('IE: ' + DMGEOGRAFIA.TAlx.FieldByName('INSC_EST').AsString);
                              nfe.Transporte.Transportador.IE := DMGEOGRAFIA.TAlx.FieldByName('INSC_EST').AsString;
                         End;
                    end;

                   SetInfoLog('Nome: ' + DMPESSOA.WFornecedor.FieldByName('NOME').AsString );
                   nfe.Transporte.Transportador.Nome := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;

                   SetInfoLog('ENDEREÇO: ' + DMPESSOA.WFornecedor.FieldByName('ENDERECO').AsString );
                   nfe.Transporte.Transportador.Endereco := DMPESSOA.WFornecedor.FieldByName('ENDERECO').AsString;

                    FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', DMPESSOA.WFornecedor.FieldByName('COD_CIDADE').AsString, '');

                   nfe.Transporte.Transportador.Municipio := DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
                   nfe.Transporte.Transportador.UF := DMGEOGRAFIA.WCidade.FieldByName('UF').AsString;
              End;
         End;


         If Length(DMESTOQUE.Alx5.fieldByName('PLACA').AsString) = 8
         Then Begin
             nfe.Transporte.Veiculo := TVeiculo.Create;

             SetInfoLog('PLACA: ' + DMESTOQUE.Alx5.fieldByName('PLACA').AsString);
             nfe.Transporte.Veiculo.placa := DMESTOQUE.Alx5.fieldByName('PLACA').AsString;

             SetInfoLog('UFPLACA: ' + DMESTOQUE.Alx5.fieldByName('UFPLACA').AsString);
             nfe.Transporte.Veiculo.UF := DMESTOQUE.Alx5.fieldByName('UFPLACA').AsString;

             SetInfoLog('ANTT: ' + DMESTOQUE.Alx5.fieldByName('ANTT').AsString);
             nfe.Transporte.Veiculo.RNTC := DMESTOQUE.Alx5.fieldByName('ANTT').AsString;
         End;


         nfe.Transporte.Volume := TVolume.Create;

         nfe.Transporte.Volume.QntVol := DMESTOQUE.Alx5.fieldByName('QUANTFRETE').AsCurrency;
         nfe.Transporte.Volume.Especie := DMESTOQUE.Alx5.fieldByName('ESPECIEFRETE').AsString;
         nfe.Transporte.Volume.Marca := DMESTOQUE.Alx5.fieldByName('MARCAFRETE').AsString;
         nfe.Transporte.Volume.NumeracaoVol := DMESTOQUE.Alx5.fieldByName('NUMCONHEC').AsString;
         nfe.Transporte.Volume.PesoLiquido := DMESTOQUE.Alx5.fieldByName('PESOLIQ').AsCurrency;
         nfe.Transporte.Volume.PesoBruto := DMESTOQUE.Alx5.fieldByName('PESOBRUTO').AsCurrency;
      End
      Else Begin
           SetInfoLog('');
           SetInfoLog('TRANSPORTE POR CONTA DO EMITENTE');
           SetInfoLog('');

           nfe.Transporte.ModFrete := 0;
      End;

     SetInfoLog('');
     If XTIPOPED = 'PV'
     Then Begin
       nfe.InfAdicionais := DMSAIDA.TFiscPV.FieldByName('obs').AsString + ';' + DMSAIDA.TFiscPV.FieldByName('obs2').AsString;
     End
     Else If XTIPOPED = 'PC'
     Then Begin
       nfe.InfAdicionais := DMENTRADA.TFiscPC.FieldByName('obs').AsString;
     End;

     ValidaTam(nfe.InfAdicionais, 0, 2000);
     nfe.InfAdicionaisFisco := '';
     SetInfoLog('INFORMAÇÕES ADICIONAIS: ' + nfe.InfAdicionais + nfe.InfAdicionaisFisco);


      SetInfoLog('');
      SetInfoLog('REALIZANDO VALIDAÇÃO DA NOTA FISCAL ELETRONICA');
      // validar a nfe criada
      If Not ValidarNFe(nfe, msg)
      Then Begin
           Result := False;
           Exit;
      End;

      // gerar nfe
      If GerarNFe(nfe, chave, xml, msg)
      Then Begin
           Result := True;
      End
      Else begin
           Result := False;
      End;
end;


procedure TFNFe.Enviar;
var
   XCODFISC, XNUMPED: Integer;  //armazena numero de documento fiscal
   chave, xml, msg, xmlAss, recibo, protocolo : WideString;
   nfe : TNFe;
   status :Integer;
begin

    try

     StatusAguarde('Verificando Documento Fiscal ...');
     SetInfoLog('VERICANDO DOCUMENTO FISCAL DO PEDIDO');

     If XTIPOPED = 'PV'
     Then Begin

       If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', IntToStr(XCODPED), '')=False
       Then Begin
           SetInfoLog('DOCUMENTO FISCAL NAO ENCONTRADO');
           //INSERE NOVO DOCUMENTO FISCAL, caso o pedido ainda não tenha
           XCODFISC:=InserReg(DMSAIDA.TFiscPV, 'DOCFIS', 'COD_DOCFISC');
           DMSAIDA.TFiscPV.FieldByName('COD_DOCFISC').AsInteger:=XCODFISC;
           DMSAIDA.TFiscPV.FieldByName('COD_PEDIDO').AsInteger := XCODPED;
           DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := -1;
           DMSAIDA.TFiscPV.FieldByName('CFOPPEDIDO').AsString :='0';// atf - 14/04/2009: deixar como default para não pegar cfop da nota.. pegar em loja
           DMSAIDA.TFiscPV.FieldByName('FRETECONTA').AsString := '2'; // atf - 14/04/2009: default frete por conta do destinatário
           DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency := DMSAIDA.TPedV.FieldByName('VALOR').AsCurrency;
           DMSAIDA.TFiscPV.Post;
           DMSAIDA.IBT.CommitRetaining;
           SetInfoLog('NOVO DOCUMENTO FISCAL CODIGO PK: ' + DMSAIDA.TFiscPV.FieldByName('COD_DOCFISC').AsString);
           If not FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', IntToStr(XCODPED), '')
           then begin
              SetInfoLog('DOCUMENTO FISCAL DA NOTA NÃO ENCONTRADO');
              Mensagem('   A T E N Ç Ã O   ','Documento Fiscal da Nota não encontrado!','',1,1,false,'I');
              Exit;
           end;
       End;

     End
     Else If XTIPOPED = 'PC'
     Then Begin

        //filtra documentos fiscais para verificar se o pedido ja tem docfiscal ou não
       If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', IntToStr(XCODPED)  , '')=False
       Then Begin
           SetInfoLog('DOCUMENTO FISCAL NAO ENCONTRADO');
           //INSERE NOVO DOCUMENTO FISCAL, caso o pedido ainda não tenha
           XCODFISC:=InserReg(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFISC');
           DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger:=XCODFISC;
           DMENTRADA.TFiscPC.FieldByName('COD_PEDIDO').AsInteger:=XCODPED;
           DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := -1;
           DMENTRADA.TFiscPC.Post;
           SetInfoLog('NOVO DOCUMENTO FISCAL CODIGO PK: ' + DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsString);
           DMENTRADA.IBT.CommitRetaining;
           If not FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', IntToStr(XCODPED), '')
           then begin
              SetInfoLog('DOCUMENTO FISCAL DA NOTA NÃO ENCONTRADO');
              Mensagem('   A T E N Ç Ã O   ','Documento Fiscal da Nota não encontrado!','',1,1,false,'I');
              Exit;
           end;
       End;

     End;


     If XTIPOPED = 'PV'
     Then Begin
       //filtra pedido de venda para ser marcado para o lote
       FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(XCODPED), '');
       status := DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger;
     End
     Else If XTIPOPED = 'PC'
     Then Begin
       //filtra pedido de venda para ser marcado para o lote
       FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', IntToStr(XCODPED), '');
       status := DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger;
     End;

     If status <> 5
     Then Begin
       If XTIPOPED = 'PV'
       Then Begin
           StatusAguarde('Verificando cálculos fiscais ...');
           SetInfoLog('');
           SetInfoLog('REALIZANDO CÁLCULO FISCAL DO DOCUMENTO');
           If RecalcFiscal(XTIPOPED, StrToInt(IntToStr(XCODPED))) = False
           Then begin
               SetInfoLog('ERRO DE CALCULO FISCAL');
               Exit;
           End;
        End;
     End;

     FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');

     If XTIPOPED = 'PV'
     Then Begin
       //filtra pedido de venda para ser marcado para o lote
       FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(XCODPED), '');
     End
     Else If XTIPOPED = 'PC'
     Then Begin
       //filtra pedido de venda para ser marcado para o lote
       FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', IntToStr(XCODPED), '');
     End;

     If status <> 5
     Then Begin
         //atf - 11/02/2009: busca numero fiscal
         StatusAguarde('Verificando Número Fiscal ...');
         SetInfoLog('');
         IF XTipoEmissao <> 3 Then
           XNUMPED := BuscaProximoNumeroFiscal(DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger)
         Else
           XNUMPED := BuscaProximoNumeroFiscal(DMMACS.TEmpresa.FieldByName('PROXNUMSCAN').AsInteger);

         if XNUMPED <= 0 then
            Exit;

         SetInfoLog('GRAVA NUMERO FISCAL A TABELA DE DOCUMENTO FISCAL');

         If XTIPOPED = 'PV'
         Then Begin

           DMSAIDA.TFiscPV.Edit;
           DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString:=IntToStr(XNUMPED);
           DMSAIDA.TFiscPV.FieldByName('DTEMISSAO').AsDateTime:=Date();
           DMSAIDA.TFiscPV.FieldByName('SERIE').AsString:=XSerie;
           DMSAIDA.TFiscPV.FieldByName('DTENTSAID').AsDateTime:=Date();
           DMSAIDA.TFiscPV.FieldByName('HORASAID').AsDateTime:=Time();
           DMSAIDA.TFiscPV.FieldByName('NFEAMBIENTE').AsInteger := XTpAmb;
           DMSAIDA.TFiscPV.FieldByName('NFETPEMIS').AsInteger := XTipoEmissao;
           DMSAIDA.TFiscPV.Post;
           DMSAIDA.IBT.CommitRetaining;

           SetInfoLog('GRAVA NUMERO FISCAL E FISCO (NFe) EM PEDIDO DE VENDA');
           DMSAIDA.TPedV.Edit;
           DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString:=IntToStr(XNUMPED);
           DMSAIDA.TPedV.FieldByName('FISCO').AsString:='NFe';
           DMSAIDA.TPedV.Post;
           DMSAIDA.IBT.CommitRetaining;

         End
         Else If XTIPOPED = 'PC'
         Then Begin

             DMENTRADA.TFiscPC.Edit;
             DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString:=IntToStr(XNUMPED);
             DMENTRADA.TFiscPC.FieldByName('DTEMISSAO').AsDateTime:=Date();
             DMENTRADA.TFiscPC.FieldByName('SERIE').AsString:=XSerie;
             DMENTRADA.TFiscPC.FieldByName('DTENTSAID').AsDateTime:=Date();
             DMENTRADA.TFiscPC.FieldByName('HORASAID').AsDateTime:=Time();
             DMENTRADA.TFiscPC.FieldByName('NFEAMBIENTE').AsInteger := XTpAmb;
             DMENTRADA.TFiscPC.FieldByName('NFETPEMIS').AsInteger := XTipoEmissao;
             DMENTRADA.TFiscPC.Post;
             DMENTRADA.IBT.CommitRetaining;

             DMENTRADA.TPedC.Edit;
             DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString:=IntToStr(XNUMPED);
             DMENTRADA.TPedC.FieldByName('FISCO').AsString := 'NFe';
             DMENTRADA.TPedC.Post;
             DMENTRADA.IBT.CommitRetaining;

         End;

         StatusAguarde('Gerar e Validar XML da nota ...');
         // gerar  chave se voltar false cancelar
         if not Gerar(chave, xml, msg) then begin
           ResetaFiscal;
           Mensagem('   A T E N Ç Ã O   ','Falha no envio da NF-e. Mensagem retorno: '+#13+msg,'',1,1,false,'I');
           Exit;
         end;

         //armazena as informações
         If XTIPOPED = 'PV'
         Then Begin

             DMSAIDA.TFiscPV.Edit;
             DMSAIDA.TFiscPV.FieldByName('NFEXML').AsString := xml;
             DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString := chave;
             DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 0;
             DMSAIDA.TFiscPV.Post;
             DMSAIDA.IBT.CommitRetaining;

         End
         Else If XTIPOPED = 'PC'
         Then Begin

             DMENTRADA.TFiscPC.Edit;
             DMENTRADA.TFiscPC.FieldByName('NFEXML').AsString := xml;
             DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString := chave;
             DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := 0;
             DMENTRADA.TFiscPC.Post;
             DMENTRADA.IBT.CommitRetaining;

         End;
     End
     Else Begin    // se ja foi gerada anteriormente

       If XTIPOPED = 'PV'
       Then Begin
           xml := DMSAIDA.TFiscPV.FieldByName('NFEXML').AsString;
           chave := DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString;
       End
       Else If XTIPOPED = 'PC'
       Then Begin
           xml := DMENTRADA.TFiscPC.FieldByName('NFEXML').AsString;
           chave := DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString;
       End;

     End;

     If XTipoEmissao in [1, 3]
     Then Begin

         StatusAguarde('Enviando NF-e...');
         // enviar xml
         If not EnviarXMLNFe(xml, recibo, xmlAss, protocolo, msg)
         Then Begin
           If status <> 5
           Then Begin
               ResetaFiscal;
           End;
           Mensagem('   A T E N Ç Ã O   ','Falha no envio da NF-e. Mensagem retorno: '+#13+msg,'',1,1,false,'I');
           Exit;
         end;

         SalvarXMLEnvio(chave, xmlAss);
         XMLAssinado := xmlAss;
         NrRecibo := recibo;

         //armazena as informações
         If XTIPOPED = 'PV'
         Then Begin

             DMSAIDA.TFiscPV.Edit;
             DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString := recibo;
             DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 4;
             DMSAIDA.TFiscPV.Post;
             DMSAIDA.IBT.CommitRetaining;

             DMSAIDA.TFiscPV.Edit;
             DMSAIDA.TFiscPV.FieldByName('NFEXML').AsString := xmlAss;
             DMSAIDA.TFiscPV.FieldByName('XMLAUTORIZACAO').AsString := protocolo;
             DMSAIDA.TFiscPV.Post;
             DMSAIDA.IBT.CommitRetaining;

         End
         Else If XTIPOPED = 'PC'
         Then Begin

             DMENTRADA.TFiscPC.Edit;
             DMENTRADA.TFiscPC.FieldByName('NFERECIBO').AsString := recibo;
             DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := 4;
             DMENTRADA.TFiscPC.Post;
             DMENTRADA.IBT.CommitRetaining;

             DMENTRADA.TFiscPC.Edit;
             DMENTRADA.TFiscPC.FieldByName('NFEXML').AsString := xmlAss;
             DMENTRADA.TFiscPC.FieldByName('XMLAUTORIZACAO').AsString := protocolo;
             DMENTRADA.TFiscPC.Post;
             DMENTRADA.IBT.CommitRetaining;

         End;

         If status <> 5
         Then
           XAuxEnvio := False
         Else
           XAuxEnvio := True;

           StatusAguarde('Consultando Lote no WebService');
           // atf - 25/03/2009: zerar tentativas e iniciar timer
           XTentativas := 0;
           tConsultas.Enabled := True;

     End
     Else Begin

       SalvarXMLEnvio(chave, xml);

       If XTIPOPED = 'PV'
       Then Begin

           DMSAIDA.TFiscPV.Edit;
           DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 5;
           DMSAIDA.TFiscPV.Post;
           DMSAIDA.IBT.CommitRetaining;

           DMSAIDA.IBT.CommitRetaining;

       End
       Else If XTIPOPED = 'PC'
       Then Begin

           DMENTRADA.TFiscPC.Edit;
           DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := 5;
           DMENTRADA.TFiscPC.Post;
           DMENTRADA.IBT.CommitRetaining;

           DMENTRADA.IBT.CommitRetaining;

       End;

        try
           //incrementa um em empresa
            DMMACS.TEmpresa.Edit;
           If XTIPOPED = 'PV'
           Then Begin
             DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger := DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsInteger + 1;
           End
           Else If XTIPOPED = 'PC'
           Then Begin
               DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger := DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsInteger + 1;
           End;
           DMMACS.TEmpresa.Post;
           DMMACS.Transaction.CommitRetaining;
        Except
           MessageDlg( 'Não foi possível incrementar automaticamente o próximo número fiscal em empresa. Por favor faça manualamente.', mtError, [mbOk], 0);
        End;

        If XTIPOPED = 'PV'
        Then Begin
           VisualizarDANFE(DMSAIDA.TFiscPV.FieldByName('COD_PEDIDO').AsInteger, XTIPOPED);
        End
        Else If XTIPOPED = 'PC'
        Then Begin
           VisualizarDANFE(DMENTRADA.TFiscPC.FieldByName('COD_PEDIDO').AsInteger, XTIPOPED);
        End;
        
     End;

    Except
       //On E: Exception Do
       // begin
         ShowMessage('Erro não previsto na tentativa de enviar a NF-e.');
          ResetaFiscal;
       // end;
    End;

end;

procedure TFNFe.FormActivate(Sender: TObject);
var
   msg, chave, protocolo, justificativa, novoProtocolo:string;
   status, ambiente :Integer;
   controle:boolean;     // controle  nfe
begin
   FMenu.XNFe:=1;
   Panel2.BringToFront;

   If XInutilizacao
   Then Begin
       edCNPJ.Text := ValidaAcentos(DMMACS.TEmpresa.FieldByName('CNPJ').AsString);
       edAno.Text := Copy(FormatDateTime('yyyy-mm-dd', Date()), 3, 2);
       edNumInicial.ValueInteger := 0;
       edNumFinal.ValueInteger := 0;
       edJustificativa.Text := '';
       Memo1.Lines.Clear;
       Memo2.Lines.Clear;
       PInutilizacao.BringToFront;
       edAno.SetFocus;
       Exit;
   End;

   If XCancelamento
   Then Begin
       PainelAguarde(True);
       StatusAguarde('Verificando Documento Fiscal ...');

       // atf - 28/03/2009: filtra empresa
       FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');

       If XTIPOPED = 'PV'
       Then Begin
         //filtra pedido de venda para ser marcado para o lote
         FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(XCODPED), '');

         // atf - 28/03/2009: filtra documento fiscal
         If not FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', IntToStr(XCODPED), '')
         then begin
            PainelAguarde(False);
            Mensagem('   A T E N Ç Ã O   ','Documento Fiscal da Nota não encontrado!','',1,1,false,'I');
            Exit;
         end;

         status := DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger;
         chave := DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString;
         protocolo:= DMSAIDA.TFiscPV.FieldByName('NFEPROTOCOLO').AsString;
         XTipoEmissao := DMSAIDA.TFiscPV.FieldByName('NFETPEMIS').AsInteger;
         ambiente := DMSAIDA.TFiscPV.FieldByName('NFEAMBIENTE').AsInteger;
       End
       Else If XTIPOPED = 'PC'
       Then Begin

         //filtra pedido de venda para ser marcado para o lote
         FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', IntToStr(XCODPED), '');

         // atf - 28/03/2009: filtra documento fiscal
         If not FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', IntToStr(XCODPED), '')
         then begin
           PainelAguarde(False);
            Mensagem('   A T E N Ç Ã O   ','Documento Fiscal da Nota não encontrado!','',1,1,false,'I');
            Exit;
         end;


         status := DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger;
         chave := DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString;
         protocolo:= DMENTRADA.TFiscPC.FieldByName('NFEPROTOCOLO').AsString;
         XTipoEmissao := DMENTRADA.TFiscPC.FieldByName('NFETPEMIS').AsInteger;
         ambiente := DMENTRADA.TFiscPC.FieldByName('NFEAMBIENTE').AsInteger;
       End;

        StatusAguarde('Validando os dados ...');
       //valida os dados
        if status <> 1
        then begin
           PainelAguarde(False);
           Mensagem('   A T E N Ç Ã O   ', 'A nota não foi enviada!','',1,1,false,'I');
           Exit;
        end;
        if (Length(chave)<> 44)
        then begin
           PainelAguarde(False);
           Mensagem('   A T E N Ç Ã O   ', 'Chave de Acesso da nota não encontrada ou inválida!','',1,1,false,'I');
           Exit;
        end;
        if (Length(protocolo)<> 15)
        then begin
           PainelAguarde(False);
           Mensagem('   A T E N Ç Ã O   ', 'Número de protocolo da nota não encontrada ou inválida. Realize uma consulta da situação da NF-e e tente novamente.','',1,1,false,'I');
           Exit;
        end;
        StatusAguarde('Aguardando..');
        // pede ao usuario justificativa
        controle := True;
        while controle do
        begin
            justificativa := '';
            controle := InputQuery('A t e n ç ã o !','INFORME A JUSTIFICATIVA DO CANCELAMENTO:', justificativa);
            if controle
            then begin
               if Length(justificativa) < 15
               then begin
                   Mensagem('   A T E N Ç Ã O   ', 'Informe uma justificativa com pelo menos 15 (quinze) caracteres.','',1,1,false,'I');
                   controle := True;
               end else
                   controle := False;
            end
            else Begin
               PainelAguarde(False);
               Exit; // usuario cancelou
            End;
        end;

        justificativa := ValidaAcentos(justificativa);
        StatusAguarde('Realizando pedido de cancelamento..');
        // faz o cancelamento da nfe
        if CancelarNFe(chave, ambiente, protocolo, justificativa, msg)
        then begin
           StatusAguarde('Análisando resposta..');
           //faz leitura do arquivo de resposta do cancelamento
           if LerCancNFe(protocolo, novoProtocolo, msg)
           then begin
               // VER SE PRECISA CANCELAR EM ALGUM OUTRO LUGA
               XResultado := True;
               If XTIPOPED = 'PV'
               Then Begin
                   DMSAIDA.TFiscPV.Edit;
                   DMSAIDA.TFiscPV.FieldByName('NFEPROTOCOLO').AsString := novoProtocolo;
                   DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 3;
                   DMSAIDA.TFiscPV.Post;
                   DMSAIDA.IBT.CommitRetaining;
               End
               Else If XTIPOPED = 'PC'
               Then Begin
                   DMENTRADA.TFiscPC.Edit;
                   DMENTRADA.TFiscPC.FieldByName('NFEPROTOCOLO').AsString := novoProtocolo;
                   DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := 3;
                   DMENTRADA.TFiscPC.Post;
                   DMENTRADA.IBT.CommitRetaining;
               End;
               PainelAguarde(False);
               Mensagem('   A T E N Ç Ã O   ', 'Nota Fiscal Cancelada.'+#13+'Mensagem Retorno: '+msg,'',1,1,false,'I');
               Exit;
           end
           else begin
              PainelAguarde(False);
              Mensagem('   A T E N Ç Ã O   ', 'Não foi possível cancelar a nota.'+#13+'Erro: '+msg,'',1,1,false,'I');
              Exit;
           end;
        end
        else begin
           PainelAguarde(False);
           Mensagem('   A T E N Ç Ã O   ', 'Não foi possível cancelar a nota.'+#13+'Erro: '+msg,'',1,1,false,'I');
           Exit;
        end;
   End;

  If XAtivo
  Then Begin

     // atf - 04/04/2009: abre log com numero do pedido
     AbreLog(IntToStr(XCODPED));

     PainelAguarde(True);  

     SetInfoLog('TIPO DE AMBIENTE: ' + DMMACS.TLoja.FieldByName('NFEPROHOMO').AsString);
     XTpAmb := DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger; // buscar em banco

     If (FMenu.LCODUSUARIO.Caption<>'111522') and (XTpAmb = 2)
     then begin
       If Not XConsulta
       Then
           Mensagem('   A T E N Ç Ã O   ', 'Somente suporte poderá enviar NFe em ambiente de homologação.','',1,1,false,'I')
       Else
           Mensagem('   A T E N Ç Ã O   ', 'Somente suporte poderá realizar consultas de NFe em ambiente de homologação.','',1,1,false,'I');
       PainelAguarde(False);
       Exit;
     end;

     If ((XTpAmb = 2) And (not XConsulta))
     Then Begin
        SetInfoLog('OPERANDO EM MODO HOMOLOGAÇÃO');
        If Mensagem('   A T E N Ç Ã O   ','OPERANDO EM MODO HOMOLOGAÇÃO TODAS AS NOTAS ENVIADAS NÃO SERÃO VÁLIDAS.'+#13+#13+'Deseja Continuar?','',2,3,false,'A')=3
        Then Begin
            SetInfoLog('USUARIO CANCELOU ENVIO');
            PainelAguarde(False);
            Exit;
        end;
     End;

     SetInfoLog('CERTIFICAÇÃO: ' + DMMACS.TLoja.FieldByName('NFECERTIFICACAO').AsString);
     XNomeCertificado := DMMACS.TLoja.FieldByName('NFECERTIFICACAO').AsString; // buscar em banco

     SetInfoLog('UF DE ENVIO: ' + 'PR' );
     XUF := 'PR'; // buscar em banco

     SetInfoLog('LICENÇA DE USO: ' + DMMACS.TLoja.FieldByName('NFELICENSA').AsString);
     XLicenca := DMMACS.TLoja.FieldByName('NFELICENSA').AsString; // buscar em banco 

     //pega o Rnúmero de série em empresa
     if DMMACS.TEmpresa.FieldByName('NFESERIE').AsString <> '' then
        XSerie := DMMACS.TEmpresa.FieldByName('NFESERIE').AsString
     else
        XSerie := '0';

     SetInfoLog('NUMERO DE SERIE: ' + XSerie);

     XModelo := '55';
     SetInfoLog('NUMERO MODELO NFE: ' + XModelo);

     SetInfoLog('');
     SetInfoLog('VERIFICA SE PEDIDO É VÁLIDO');
    if XCODPED <= 0
    then begin
        Mensagem('   A T E N Ç Ã O   ','Código de Pedido Inválido!','',1,1,false,'I');
        PainelAguarde(False);
        Exit;
    end;

    SetInfoLog('NUMERO DO PEDIDO: ' + IntToStr(XCODPED));

    SetInfoLog('TIPO DE PEDIDO: ' + XTIPOPED);
    If XTIPOPED = ''
    Then Begin
        Mensagem('   A T E N Ç Ã O   ','Tipo de Pedido Inválido!','',1,1,false,'I');
        PainelAguarde(False);
        Exit;
    End;


    StatusAguarde('Consultando Status do Serviço');

    SetInfoLog('');

   If XTipoEmissao <> 3
   Then Begin
     If Not ConsultarStatusServico(false, msg)
     Then Begin
         Mensagem('   A T E N Ç Ã O   ','Servidor não está em operação. Tente mais tarde.'+#13+'Descrição do Status: '+msg,'',1,1,false,'I');
         PainelAguarde(False);
         Exit;
     End;
   End
   Else Begin
     If Not ConsultarStatusServico(true, msg)
     Then Begin
         Mensagem('   A T E N Ç Ã O   ','Servidor não está em operação. Tente mais tarde.'+#13+'Descrição do Status: '+msg,'',1,1,false,'I');
         PainelAguarde(False);
         Exit;
     End;

   End;

   //
   // atf - 28/03/2009: qnd nao for pedido de consulta
   //
   If Not XConsulta
   Then Begin
     verificarSerie;
     SetInfoLog('');
     Enviar;

   End
   Else Begin

        ConsultaPedido;
        
   End;

   //
   // atf - 28/03/2009: se timer não estiver ativado...
   //
   If (XTentativas = -1)
   Then Begin
   
     PainelAguarde(False);
     XCODPED := 0;
     XTIPOPED := '';

   End;
 End;


end;

procedure TFNFe.AtualizaGrid;
begin
     //atualiza grid de pedidos não marcados para gerar lote
     DMESTOQUE.Alx1.Close;
     DMESTOQUE.Alx1.SQL.Clear;
     DMESTOQUE.Alx1.SQL.Add('select * from pedvenda');
     DMESTOQUE.Alx1.SQL.Add('left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido');
     DMESTOQUE.Alx1.SQL.Add('where pedvenda.situacao ='+#39+'FECHADO'+#39+'');
     DMESTOQUE.Alx1.SQL.Add('and pedvenda.faturado = 1');
     DMESTOQUE.Alx1.SQL.Add('and (pedvenda.mark is null or pedvenda.mark = '+#39+''+#39+' or pedvenda.mark = '+#39+'Z'+#39+')');
     DMESTOQUE.Alx1.SQL.Add('and (docfissaida.nfestatus is null or docfissaida.nfestatus <> 1)');

     //atualiza grid de pedidos marcados para gerar lote
     DMESTOQUE.Alx2.Close;
     DMESTOQUE.Alx2.SQL.Clear;
     DMESTOQUE.Alx2.SQL.Add('select * from pedvenda');
     DMESTOQUE.Alx2.SQL.Add('left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido');
     DMESTOQUE.Alx2.SQL.Add('where pedvenda.mark = '+#39+'B'+#39+'');
     
end;

//atualiza labels do painel
procedure TFNFe.AtualizaPainel;
begin

     if not DMESTOQUE.Alx1.IsEmpty
     then begin
          LVai.Enabled:=true;
     end
     else begin
          LVai.Enabled:=false;
     end;

     if not DMESTOQUE.Alx2.IsEmpty
     then begin
          LVolta.Enabled:=true;
          BitBtn4.Enabled :=true;
     end
     else begin
          LVolta.Enabled:=false;
          BitBtn4.Enabled :=false;
     end;

end;

procedure TFNFe.DBCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = 13
     then begin
          AtualizaGrid;

          DMESTOQUE.Alx1.SQL.Add('and pedvenda.numped = '+#39+DBCod.Text+#39+'');

          DMESTOQUE.Alx1.Open;
          DMESTOQUE.Alx2.Open;
     end;

     if Key = 27
     then begin
         AtualizaGrid;
         DMESTOQUE.Alx1.Open;
         DMESTOQUE.Alx2.Open;
     end;
     AtualizaPainel;
end;

procedure TFNFe.DBClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = 13
     then begin
          AtualizaGrid;
          DMESTOQUE.Alx1.SQL.Add('and (upper (pedvenda.nomecli)) like (upper('+#39+DBCliente.Text+'%'+#39+'))');
          DMESTOQUE.Alx1.Open;
          DMESTOQUE.Alx2.Open;
     end;

     if Key = 27
     then begin
         AtualizaGrid;
         DMESTOQUE.Alx1.Open;
         DMESTOQUE.Alx2.Open;
     end;
     AtualizaPainel;
end;

// click voltar
procedure TFNFe.LVoltaClick(Sender: TObject);
begin

     PainelAguarde(True);

     StatusAguarde('Removendo XML da nota');

     FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', DMESTOQUE.Alx2.FieldByName('COD_PEDVENDA').AsString, '');

     //chama função q deleta a XML
     DeleteArquivo(XDir+'enviNFe\'+DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString+'-enviNFe.xml');

     FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', DMESTOQUE.Alx2.fieldByName('COD_PEDVENDA').AsString, '');

     if not DMSAIDA.TFiscPV.IsEmpty
     then begin
       DMSAIDA.TFiscPV.Edit;
       DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString:='';
       DMSAIDA.TFiscPV.Post;
       DMSAIDA.IBT.CommitRetaining;
     end;

     DMMACS.TEmpresa.Edit;
     DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger-1;
     DMMACS.TEmpresa.Post;
     DMMACS.Transaction.CommitRetaining;

     DMSAIDA.TPedV.Edit;
     DMSAIDA.TPedV.FieldByName('MARK').AsString:='';
     DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString:='';
     DMSAIDA.TPedV.FieldByName('FISCO').AsString:='';
     DMSAIDA.TPedV.Post;
     DMSAIDA.IBT.CommitRetaining;
     StatusAguarde('Atualizando Grid');
     AtualizaGrid;
     DMESTOQUE.Alx1.Open;
     DMESTOQUE.Alx2.Open;
     AtualizaPainel;

     LQtd.Caption:=IntToStr(StrToInt(LQtd.Caption)-1);

     PainelAguarde(False);

end;

 // deletar arquivo
function TFNFe.DeleteArquivo(caminho :String):Boolean;
begin
     if not FileExists(caminho) then begin
         Result:= False;
         Exit;
     end;

     Result := DeleteFile(caminho);

end;

// verificar se o arquivo nao excedeu o tamanho maximo
function TFNFe.VerificarTamArquivo(arquivo: string): Boolean;
var
   tam : Double;
   str: String;
const
    KBYTE = SizeOf(Byte) shl 10;
begin
with TFileStream.Create(arquivo, fmOpenRead or fmShareExclusive) do
   try
     try

       str := FloatToStrF(Size / KBYTE,ffNumber,6,2);

       tam := StrToFloat(str);

       if tam <= 500  then
           Result := True;
   
     except
         Result := False;
     end;      

   Finally
       Free;
   end;

end;

// qnd cria o form
procedure TFNFe.FormCreate(Sender: TObject);
begin
   XDir:='';
   If FMenu.XmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('diretorio') <> nil Then
       XDir := FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('diretorio').Text;
   If Length(XDir) = 0 Then
       XDir := 'C:\mzr\Arquivos\NFe\'
   Else
       XDir := 'C:\mzr\Arquivos\NFe\';

   XTpAmb := DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger; // buscar em banco
   XNomeCertificado := DMMACS.TLoja.FieldByName('NFECERTIFICACAO').AsString; // buscar em banco
   XUF := 'PR'; // buscar em banco
   XLicenca := DMMACS.TLoja.FieldByName('NFELICENSA').AsString; // buscar em banco
   //pega o número de série em empresa
   if DMMACS.TEmpresa.FieldByName('NFESERIE').AsString <> '' then
       XSerie := DMMACS.TEmpresa.FieldByName('NFESERIE').AsString
   else
       XSerie := '0';

   XModelo := '55';
   Zerar;
end;

// click enviar lote  

procedure TFNFe.EnviarGerar;
var
   msg, status, teste: String;
   tamArray, tam,i: Integer;
   XNUMLOTE: String;
   XOk: Boolean;
   ErroChave, ErroMotivo, OkChave, OkProtoloco:TStrings;
begin

  { PainelAguarde(True);

   StatusAguarde('Verificando Pedidos no Lote');
   if DMESTOQUE.Alx2.IsEmpty then begin
       PainelAguarde(False);
       Mensagem('   A T E N Ç Ã O   ','Não há nenhum pedido no lote.','',1,1,false,'I');
       Exit;
   end;

   StatusAguarde('Consultando Status do Serviço');
   if not ConsultarStatusServico(msg)
   then begin
      PainelAguarde(False);
       LStatus.Caption := msg;
       Mensagem('   A T E N Ç Ã O   ','Servidor não está em operação. Tente mais tarde.','',1,1,false,'I');
       Exit;
   end;
   LStatus.Caption := msg;     }


  { StatusAguarde('Gerando Número do Lote');
   // pegar numero do lote e add mais um

   DMMACS.TEmpresa.Close;
   DMMACS.TEmpresa.SQL.Clear;
   DMMACS.TEmpresa.SQL.Clear;
   DMMACS.TEmpresa.SQL.Add('select * from empresa');
   DMMACS.TEmpresa.Open;
   XCodLote := DMMACS.TEmpresa.FieldByName('NFEPROXLOTE').AsString;
   DMMACS.TEmpresa.Edit;
   DMMACS.TEmpresa.FieldByName('NFEPROXLOTE').AsString := IntToStr(StrToInt(XCodLote)+1);
   DMMACS.TEmpresa.Post;
   DMMACS.Transaction.CommitRetaining;

   tamArray := 0;           }
    {
     DMESTOQUE.Alx2.Close;
     DMESTOQUE.Alx2.SQL.Clear;
     DMESTOQUE.Alx2.SQL.Add('select * from pedvenda');
     DMESTOQUE.Alx2.SQL.Add('left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido');
     DMESTOQUE.Alx2.SQL.Add('where pedvenda.situacao ='+#39+'B'+#39+'');
     DMESTOQUE.Alx2.Open;   }

   StatusAguarde('Gerando Lote do Pedido...');
   // passa campos da tabela
   //DMESTOQUE.Alx2.First;
   //while not  DMESTOQUE.Alx2.Eof do
   //begin
     //filtra tabela DOCFISSAIDA pelo codigo do pedido
     //DMSAIDA.TFiscPV.Close;
     //DMSAIDA.TFiscPV.SQL.Clear;
     //DMSAIDA.TFiscPV.SQL.Add('select * from DOCFISSAIDA');
     //DMSAIDA.TFiscPV.SQL.Add('where DOCFISSAIDA.cod_pedido = '+IntToStr(DMESTOQUE.Alx2.FieldByName('COD_PEDVENDA').AsInteger));
     //DMSAIDA.TFiscPV.Open;
     {
     tamArray := tamArray+1;
     SetLength(chaveNFe, tamArray);
     // pega o numero da chave
     chaveNFe[tamArray-1] := DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString;
     // SETA Nº LOTE
     DMSAIDA.TFiscPV.Edit;
     DMSAIDA.TFiscPV.FieldByName('NFELOTE').AsString:=XCodLote;
     //DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger:=1;
     DMSAIDA.TFiscPV.Post;
     DMSAIDA.IBT.CommitRetaining;

     //proxima ocorrencia
     //DMESTOQUE.Alx2.Next;
   //end;
    StatusAguarde('Gerando Lote a partir das Chaves NFe');
   //gerar o lote a partir das chaves
   if GerarLote(XCodLote, chaveNFe)then begin
       StatusAguarde('Enviando Lote para WebService');
       //enviar o lote
       if EnviarLote(XCodLote) then begin
           StatusAguarde('Lendo Respota do WebService');
           // ler arquivo de reposta
           if LerRespostaLoteNFe(XCodLote, msg, NrRecibo)then begin
              // setar o número de recibo nas notas
              // passa campos da tabela
               //DMESTOQUE.Alx2.First;
               //while not  DMESTOQUE.Alx2.Eof do
               //begin
                 //filtra tabela DOCFISSAIDA pelo codigo do pedido
                 //DMSAIDA.TFiscPV.Close;
                 //DMSAIDA.TFiscPV.SQL.Clear;
                 //DMSAIDA.TFiscPV.SQL.Add('select * from DOCFISSAIDA');
                 //DMSAIDA.TFiscPV.SQL.Add('where DOCFISSAIDA.cod_pedido = '+IntToStr(DMESTOQUE.Alx2.FieldByName('COD_PEDVENDA').AsInteger));
                 //DMSAIDA.TFiscPV.Open;

                 // SETA Nº RECIBO
                 DMSAIDA.TFiscPV.Edit;
                 DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString:=NrRecibo;
                 DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger:=4;
                 DMSAIDA.TFiscPV.Post;
                 DMSAIDA.IBT.CommitRetaining;

                 //proxima ocorrencia
                 //DMESTOQUE.Alx2.Next;
               //end;
           end else begin
               //PainelAguarde(False);
               ResetaFiscal;
               Mensagem('   A T E N Ç Ã O   ','O lote foi recusado.'+#13+'Erro: '+msg,'',1,1,false,'I');
               Exit;
           end;
       end else begin
           //PainelAguarde(False);
           ResetaFiscal;
           Mensagem('   A T E N Ç Ã O   ','O lote não pode ser enviado.'+#13+'Verifique sua conexão e o status do Web Service.'+#13+'Se o problema persistir consulte o suporte.','',1,1,false,'I');
           Exit;
       end;
   end else begin
      //PainelAguarde(False);
      ResetaFiscal;
      Mensagem('   A T E N Ç Ã O   ','Não foi possível gerar o lote. Tente novamente.'+#13+'Se o problema persistir consulte o suporte e informe as possíveis causas do erro.','',1,1,false,'I');
      Exit;
   end;

   //XOk := False;

   StatusAguarde('Consultando Lote no WebService');  

   // atf - 25/03/2009: zerar tentativas e iniciar timer
   XTentativas := 0;
   tConsultas.Enabled := True;

   {
   While not XOk do
   begin
       // pedido de consulta status do lote
       if not ConsultarLote(XCodLote, msg) then begin
          //PainelAguarde(False);
          Mensagem('   A T E N Ç Ã O   ','Não foi possível fazer a consulta do lote.'+#13+'Verifique sua conexão e o status do Web Service.'+#13+'Se o problema persistir consulte o suporte.'+#13+msg,'',1,1,false,'I');
          Exit;
       end;

       //ler arquivo de pedido de consulta de status de lote
       if LerPedidoLoteNFe(NrRecibo, msg, status) then begin
           StatusAguarde('Conferindo retorno do WebService');
           XOk := True;
           if ConferirRetornoLote(NrRecibo, msg, ErroChave, ErroMotivo, OkChave, OkProtoloco) then begin

               // verifica notas com erro
               if (ErroChave <> nil) and (ErroChave.Count <> 0) then begin
                     //pega o tamanho do array com as chaves
                     tam := ErroChave.Count-1;
                     // varre todo o array
                     for i:=0 to tam do begin
                       //filtra tabela DOCFISSAIDA pela chave
                       //DMSAIDA.TFiscPV.Close;
                       //DMSAIDA.TFiscPV.SQL.Clear;
                       //DMSAIDA.TFiscPV.SQL.Add('select * from DOCFISSAIDA');
                       //DMSAIDA.TFiscPV.SQL.Add('where DOCFISSAIDA.NFECHAVE = '+#39+ErroChave[i]+#39);
                       //DMSAIDA.TFiscPV.Open;

                      // if not DMSAIDA.TFiscPV.IsEmpty then begin
                           // SETA Nº STATUS e ERRO


                           DMSAIDA.TFiscPV.Edit;
                           DMSAIDA.TFiscPV.FieldByName('NFEERRO').AsString:=ErroMotivo[i];
                           DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger:=2;
                            DMSAIDA.TFiscPV.FieldByName('NFELOTE').AsString:='';
                            //DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString := '';
                            DMSAIDA.TFiscPV.FieldByName('NFESERIE').AsInteger := -1;
                            DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString:='';
                           DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger:=-1;
                           DMSAIDA.TFiscPV.Post;
                           DMSAIDA.IBT.CommitRetaining;

                           Mensagem('   A T E N Ç Ã O   ',ErroMotivo[i],'',1,1,false,'I');

                           //DMMACS.TEmpresa.Edit;
                           //DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger-1;
                           //DMMACS.TEmpresa.Post;
                           //DMMACS.Transaction.CommitRetaining;

                      // end;
                    end;
              end;
              StatusAguarde('Verificando Notas enviadas');
              // verifica notas ok
               if (OkChave <> nil) and (OkChave.Count <> 0)then begin
                     //pega o tamanho do array com as chaves
                     tam := OkChave.Count-1;
                     // varre todo o array
                     for i:=0 to tam do begin
                       //filtra tabela DOCFISSAIDA pela chave
                       //DMSAIDA.TFiscPV.Close;
                      // DMSAIDA.TFiscPV.SQL.Clear;
                       //DMSAIDA.TFiscPV.SQL.Add('select * from DOCFISSAIDA');
                       //DMSAIDA.TFiscPV.SQL.Add('where DOCFISSAIDA.NFECHAVE = '+#39+OkChave[i]+#39);
                      // DMSAIDA.TFiscPV.Open;

                       //if not DMSAIDA.TFiscPV.IsEmpty then begin
                           // SETA Nº STATUS e PROTOCOLO
                           DMSAIDA.TFiscPV.Edit;
                           DMSAIDA.TFiscPV.FieldByName('NFEPROTOCOLO').AsString:=OkProtoloco[i];
                           DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger:=1;
                           DMSAIDA.TFiscPV.Post;
                           DMSAIDA.IBT.CommitRetaining;

                            BitBtn7.Click;
                       //end;
                    end;

              end;
              //Mensagem('   A T E N Ç Ã O   ',msg,'',1,1,false,'I');
           end else begin
              // PainelAguarde(False);
               //Mensagem('   A T E N Ç Ã O   ',msg,'',1,1,false,'I');
               Exit;
           end;
       end else begin
           // esta em processo
           if status = '105' then begin
                StatusAguarde('Aguardando Lote em Processo no WebService');
                XOk := False;
           end else begin
               Mensagem('   A T E N Ç Ã O   ','Lote recusado.'+#13+'Motivo: '+msg,'',1,1,false,'I');
               XOk := True;
               Exit;
           end;
       end;
   end;    }

  // StatusAguarde('Atualizando Grid');

   //BitBtn7.Enabled := True;
   {
   PageControl.ActivePage := TConfere;

   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add('select * from docfissaida');
   DMESTOQUE.Alx3.SQL.Add('left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
   DMESTOQUE.Alx3.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
   DMESTOQUE.Alx3.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
   DMESTOQUE.Alx3.SQL.Add('where docfissaida.nfestatus = 1');
   DMESTOQUE.Alx3.SQL.Add('and docfissaida.nfelote = :NUM');
   DMESTOQUE.Alx3.ParamByName('NUM').AsString:=XCodLote;
   DMESTOQUE.Alx3.Open;

   DBAceita.DataSource:=DMESTOQUE.DSAlx3;

   DMESTOQUE.Alx4.Close;
   DMESTOQUE.Alx4.SQL.Clear;
   DMESTOQUE.Alx4.SQL.Add('select * from docfissaida');
   DMESTOQUE.Alx4.SQL.Add('left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
   DMESTOQUE.Alx4.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
   DMESTOQUE.Alx4.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
   DMESTOQUE.Alx4.SQL.Add('where docfissaida.nfestatus = 2');
   DMESTOQUE.Alx4.SQL.Add('and docfissaida.nfelote = :NUM');
   DMESTOQUE.Alx4.ParamByName('NUM').AsString:=XCodLote;
   DMESTOQUE.Alx4.Open;

   DBErro.DataSource:=DMESTOQUE.DSAlx4;
   PainelAguarde(False);    }
end;

procedure TFNFe.PainelAguarde(mostrar :Boolean);
begin
   if mostrar then begin
     PAguarde.BringToFront;
     PAguarde.Visible:=true;
     PAguarde.Refresh;
     PageControl.Enabled := False;
     bitbtn8.SendToBack;
     PageControl.Refresh;
   end
   else begin
     PAguarde.SendToBack;
     PAguarde.Visible:=false;
     PageControl.Enabled := True;
     PageControl.Refresh;
     StatusAguarde('');
     bitbtn8.BringToFront;
   end;
end;

// click em cancelar
procedure TFNFe.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

//consultar status do serviço
function TFNFe.ConsultarStatusServico(const scan:Boolean; out msgerro:String):Boolean;
    ///  4. ConsultaStatus: Consulta Situação do Web Service de Recepção de NF-e
    ///
    ///    Entradas:
    ///
    ///            siglaUF: Sigla da UF do WS chamado
    ///       tipoAmbiente: Código do tipo de ambiente = 1-Produção / 2-Homologação
    ///    nomeCertificado: Nome do titular do certificado a ser utlizado na conexão SSL
    ///
    ///    proxy ,usuario e senha: deve ser informado nos casos em que é necessário o uso de proxy
    ///
    ///    IMPORTANTE: funcionamento ignorado por falta de testes
    ///
    ///   Retornos:
    ///
    ///      ConsultaStatus: código do resultado da chamada do WS
    ///                      0 - OK
    ///                      1 - codigo do ambiente inválido
    ///                      2 - sigla da UF inválida
    ///                      3 - a UF nÃ£o oferece o serviço
    ///                      4 - Arquivo com a URL do WS não localizados
    ///                      5 - Erro não tratado de abertura/tratamento Arquivo ws.xml
    ///                      6 - Erro de validação de Schema
    ///                      7 - Nenhum Certificado Selecionado
    ///                      8 - Nenhum certificado vÃ¡lido foi encontrado com o nome informado
    ///                      9 - Erro Inesperado no acesso ao certificado digital: "+ex.Message
    ///                     10 - Erro: Time-out ao chamar o WS
    ///                     11 - Erro: exceção do biblioteca criptográfica
    ///                     12 - Erro: conectividade
    ///           msgCabec: XML do cabeçalho enviado ao WS (útil para depuração)
    ///           msgDados: XML do pedido de consulta Status enviado ao WS
    ///           msgRetWS: XML de resposta do WS
    ///       msgResultado: literal do resultado da chamada do WS Consulta Status
    /// 

var

Util:NFe_Util_Interface;
i, tpAmb : integer;
msg, retWS,cabMsg, dadosMsg, aux: WideString;
  Fsaida: TextFile;
XML: WideString;
vXMLDoc: TXMLDocument;
    NodePai: IXMLNode;
begin

   aux := FormatDateTime('yyyyMMdd', Date()) + FormatDateTime('hhmmss', Time());

   If not XLogAtivo then
       AbreLog('status servidor: ' + aux);

// atf - 04/04/2009:
SetInfoLog('VERIFICAR STATUS DO SERVIDOR');

  Util := CoUtil.Create;
  retWS :='';
  cabMsg :='';
  dadosMsg :='';
  msg :='';                
  Screen.Cursor := CrHourGlass;
  If scan
  Then Begin
       i:= Util.ConsultaStatusSCAN('SCAN', XUF, XTpAmb, XNomeCertificado, cabMsg, DadosMsg, retWS, msg, '', '', '');
  End
  Else Begin
       i:= Util.ConsultaStatus(XUF, XTpAmb, XNomeCertificado, cabMsg, DadosMsg, retWS, msg, '', '', '');
  End;
  Screen.Cursor := CrDefault;

  if i > 1 then begin
       Util := nil;
      Result := False;
      Exit;
  end;



      retWS := TirarAcentos(False, retWS);
      DadosMsg := TirarAcentos(False, DadosMsg);
      try

       verificaDiretorio(XDir+'retConsStatServ');
       verificaDiretorio(XDir+'consStatServ');

       //SetInfoLog('ARQUIVO XML DE PEDIDO DE CONSULTA : ' + XDir+'consStatServ\' + aux + '.xml');
       AssignFile(Fsaida, XDir+'consStatServ\' + aux + '.xml');
       Rewrite(Fsaida);
       Write(Fsaida, DadosMsg);
       CloseFile(Fsaida);

       //SetInfoLog('ARQUIVO XML DO RETORNO CONSULTA : ' + XDir+'retConsStatServ\' + aux + '.xml');
       AssignFile(Fsaida, XDir+'retConsStatServ\' + aux + '.xml');
       Rewrite(Fsaida);
       Write(Fsaida, retWS);
       CloseFile(Fsaida);

        // Cria a variável baseada no TXMLDocument
        vXMLDoc := TXMLDocument.Create(self);

        // Le conteúdo do arquivo XML informado
        vXMLDoc.LoadFromFile(XDir+'retConsStatServ\' + aux + '.xml');

        // Aqui eu peço para encontrar a Tag <>>
        NodePai := vXMLDoc.DocumentElement;

        SetInfoLog('STATUS DE RETORNO DO SERVIDOR : ' + NodePai.childNodes['cStat'].Text);

        if  Trim(NodePai.childNodes['cStat'].Text) = '107'
        then begin
            Result := True;
        end
        else begin
            Result := False;
        end;

        SetInfoLog('MOTIVO: ' + NodePai.childNodes['xMotivo'].Text);

        msgerro := NodePai.childNodes['xMotivo'].Text;
      Except
         Result := False;

       end;
       Util := nil;
end;

// click botao consultar status
procedure TFNFe.BitBtn3Click(Sender: TObject);
var
   msg :String;
begin

   ConsultarStatusServico(false, msg);
   LStatus.Caption := msg;

end;

//abrir xml
procedure TFNFe.BitBtn4Click(Sender: TObject);
var caminho: string;
begin
    FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', DMESTOQUE.Alx2.FieldByName('COD_PEDVENDA').AsString, '');
    caminho := XDir+'enviNFe\'+DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString+'-enviNFe.xml';
    if (fileExists(caminho)) then
       ShellExecute(Handle, nil, Pchar(caminho), nil, nil, SW_SHOWNORMAL);

end;
//abrir xml resposta
procedure TFNFe.BitBtn6Click(Sender: TObject);
var caminho: string;
begin
    FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', DMESTOQUE.Alx2.FieldByName('COD_PEDVENDA').AsString, '');
    caminho := XDir+'retPedNFe\'+DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString+'-pro-rec.xml';
    if (fileExists(caminho)) then
       ShellExecute(Handle, nil, Pchar(caminho), nil, nil, SW_SHOWNORMAL);

end;

procedure TFNFe.BitBtn7Click(Sender: TObject);
{var
   cont :Integer;
   caminho, visualizador, danfeAux : String; }
begin

   VisualizarDANFE(DMSAIDA.TFiscPV.FieldByName('COD_PEDIDO').AsInteger, 'PV');

       {
     If ((FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('unidanfe') <> nil ) And (Length(FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('unidanfe').Text) > 0))
      Then Begin
           visualizador := FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('unidanfe').Text;
      End
      Else Begin
           Mensagem('   A T E N Ç Ã O   ','Endereço do visualizador da DANFE não encontrado.','',1,1,false,'I');
           Close;
      End;

     //FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', XView.FieldByName('COD_PEDVENDA').AsString, '');

     if DMSAIDA.TFiscPV.IsEmpty then begin
         Mensagem('   A T E N Ç Ã O   ','Não há nenhum XML para o pedido selecionado.','',1,1,false,'I');
         Close;
     end;

    caminho := XDir+'enviNFe\'+DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString+'-enviNFe.xml';
    danfeAux := gerarDocAuxiliar(DMSAIDA.TFiscPV.FieldByName('COD_PEDIDO').AsInteger, 'PV');
    If Not (fileExists(caminho))
    Then Begin
       caminho := SalvarXMLEnvio(DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString, DMSAIDA.TFiscPV.FieldByName('NFEXML').AsString);
       If Not (fileExists(caminho))
       Then begin
           Mensagem('   A T E N Ç Ã O   ','Arquivo XML não encontrado.','',1,1,false,'I');
       End;
    end;
    ShellExecute(Handle, nil, PChar(visualizador), Pchar('a=' + caminho + ' au=' + danfeAux), nil, SW_SHOWNORMAL);
          }

   {  if DMESTOQUE.Alx3.IsEmpty then begin
       PainelAguarde(False);
       Mensagem('   A T E N Ç Ã O   ','Não há nenhuma nota selecionada.','',1,1,false,'I');
       Exit;
   end;           }

    //atf - 15/01/2009: SETA NA TABELA TMP DESC1 COMO 1 DE SAIDA PARA APARECER NO RELATORIO DA DANFE
     {
      XAtivo := False;

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
      DMESTOQUE.Alx.SQL.Add('estoque.cod_subprod, subproduto.descricao,lote.lote,lote.vencimento,');
      DMESTOQUE.Alx.SQL.Add('subproduto.'+ DMMACS.TLoja.FieldByName('CODPRODREL1').AsString +' as contrint, subproduto.cod_cst, subproduto.cod_unidvenda, subproduto.ncm, subproduto.marca, cst.cod_sit_trib,');
      DMESTOQUE.Alx.SQL.Add('unidade.sigla_unid, pedvenda.numped, itenspedven.tipolista, itenspedven.IPNPMC, itenspedven.DESCPRO, itenspedven.BASEICMS, itenspedven.VLRICMS , itenspedven.BASEICMSSUBS, itenspedven.VLRICMSSUBS , itenspedven.MVADESTINO');
      DMESTOQUE.Alx.SQL.Add('from itenspedven');
      DMESTOQUE.Alx.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
      DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
      DMESTOQUE.Alx.SQL.Add('left join cst on subproduto.cod_cst = cst.cod_cst');
      DMESTOQUE.Alx.SQL.Add('left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
      DMESTOQUE.Alx.SQL.Add('left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
      DMESTOQUE.Alx.SQL.Add('left join lote on itenspedven.cod_lote = lote.cod_lote');
      DMESTOQUE.Alx.SQL.Add('where pedvenda.cod_pedvenda = :COD');
      DMESTOQUE.Alx.ParamByName('COD').AsInteger := DMSAIDA.TPedV.FieldByName('cod_pedvenda').AsInteger;
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
      DMESTOQUE.Alx1.ParamByName('COD').AsInteger := DMSAIDA.TPedV.FieldByName('cod_pedvenda').AsInteger;
      DMESTOQUE.Alx1.Open;
      
     FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

     //atf - 22/01/2009:   insere sql necessária para filtrar parcelas da conta
     DMMacs.TALX.Close;
     DMMacs.TALX.sql.Clear;
     DMMacs.TALX.SQL.Add('SELECT parcelacr.dtvenc, parcelacr.NUMPARC, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
     DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador='+#39+'PEDVENDA'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) ');
     DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:=DMESTOQUE.Alx1.FieldByName('cod_pedvenda').AsInteger;
     DMMacs.TALX.Open;


     // atf - 13/04/2009: dados de transporte
     DMESTOQUE.Alx2.Close;
     DMESTOQUE.Alx2.sql.Clear;
     DMESTOQUE.Alx2.SQL.Add('select pessoa.nome, pessoa.cpfcnpj, pessoa.endereco, cidade.nome as nomecidade, estado.uf_estado as uf, pessoaj.insc_est');
     DMESTOQUE.Alx2.SQL.Add('from fornecedor');
     DMESTOQUE.Alx2.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
     DMESTOQUE.Alx2.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
     DMESTOQUE.Alx2.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
     DMESTOQUE.Alx2.SQL.Add('left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa');
     DMESTOQUE.Alx2.SQL.Add('left join docfissaida on fornecedor.cod_fornec = docfissaida.cod_transp');
     DMESTOQUE.Alx2.SQL.Add('where docfissaida.cod_pedido = :CODGERADOR');
     DMESTOQUE.Alx2.ParamByName('CODGERADOR').AsInteger := DMESTOQUE.Alx1.FieldByName('cod_pedvenda').AsInteger;
     DMESTOQUE.Alx2.Open;


     //atf - 22/01/2009: Assume parcelas em campo blob de loja para após ser passado em relatório
     DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP1').AsString:='';
     DMMACS.TLoja.Post;
     DMMACS.TALX.First;
     cont := 0;
     while not DMMACS.TALX.Eof do
     Begin
         DMMACS.TLoja.Edit;
         if (cont = 2) or (cont = 5) or (cont = 8)then
            DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+DMMacs.TALX.FieldByName('NUMPARC').AsString+'    '+DMMacs.TALX.FieldByName('dtvenc').AsString+' / '+DMMacs.TALX.FieldByName('cobranca').AsString+'   -  '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+#13
         else
            DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+DMMacs.TALX.FieldByName('NUMPARC').AsString+'    '+DMMacs.TALX.FieldByName('dtvenc').AsString+' / '+DMMacs.TALX.FieldByName('cobranca').AsString+'   -  '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+'  //   ';
         DMMACS.TLoja.Post;
         cont:=cont+1;
         DMMACS.TALX.Next;
     End;

     If DMMACS.TALX.IsEmpty
     Then Begin
          DMMACS.TLoja.Edit;
          DMMACS.TLoja.FieldByName('TMP1').AsString := DMESTOQUE.Alx1.FieldByName('DTFECH').AsString + ' / Á VISTA  - R$ ' + DMESTOQUE.Alx1.FieldByName('VLRTOTDOCNF').AsString;
          DMMACS.TLoja.Post;
     End;

     DMMACS.Transaction.CommitRetaining;


      FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMESTOQUE.Alx1.FieldByName('COD_PESSOA').AsString, '');

     if DMESTOQUE.Alx.IsEmpty then begin
         Mensagem('   A T E N Ç Ã O   ','Não há nenhuma DANFE para o pedido selecionado.','',1,1,false,'I');
         Exit;
     end;

     // atf - 30/03/2009: se estiver em ambiente de homologação deverá aparecer na nota "SEM VALOR FISCAL"
    // If (XTpAmb = 2)
     //Then Begin
         // FSDanfe.LoadFromFile('C:\Orion\MACS\Rel\FrfDANFESemValorFiscal.frf');
     //End
     //Else Begin

     // atf - 21/05/2009: se a empresa não for sementes (Tolemed!)
     If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString<>'SEMENTES') Then
          FSDanfe.LoadFromFile('C:\Orion\MACS\Rel\FrfDANFE.frf')
     Else
         FSDanfe.LoadFromFile('C:\Orion\MACS\Rel\FrfDANFE2.frf');


     //End;

     FSDanfe.ShowReport;

     verificaDiretorio(XDir+'DANFE');

     FSDanfe.SaveToFile(XDir+'DANFE\' + DMESTOQUE.Alx1.FieldByName('NFECHAVE').AsString + '.FRP');


      DMMACS.TMP.SQL.Clear;
      DMMACS.TMP.SQL.Add('DELETE FROM TMP');
      DMMACS.TMP.ExecSQL;
      DMMACS.Transaction.CommitRetaining; }
     //Clipboard.AsText:=DBRichEdit1.Text;

end;

//click botao OK
procedure TFNFe.BitBtn8Click(Sender: TObject);
begin
    PainelAguarde(True);
    // passa campos da tabela
   DMESTOQUE.Alx2.First;
   while not  DMESTOQUE.Alx2.Eof do
   begin
     //filtra tabela DOCFISSAIDA pelo codigo do pedido

     FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', DMESTOQUE.Alx2.FieldByName('COD_PEDVENDA').AsString, '');

     FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', DMESTOQUE.Alx2.fieldByName('COD_PEDVENDA').AsString, '');

     DMESTOQUE.Alx.Close;
     DMESTOQUE.Alx.SQL.Clear;
     DMESTOQUE.Alx.SQL.Add('update PEDVENDA set pedvenda.mark = '+#39+''+#39+' where pedvenda.mark = '+#39+'B'+#39+' ');
     DMESTOQUE.Alx.ExecSQL;
     DMESTOQUE.TransacEstoque.CommitRetaining;

     if not DMSAIDA.TFiscPV.IsEmpty
     then begin
       DMSAIDA.TFiscPV.Edit;
       DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString:='';
       DMSAIDA.TFiscPV.Post;
       DMSAIDA.IBT.CommitRetaining;
     end;

     if not DMSAIDA.TPedV.IsEmpty
     then begin
       DMSAIDA.TPedV.Edit;
       DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString:='';
       DMSAIDA.TPedV.FieldByName('FISCO').AsString:='';
       DMSAIDA.TPedV.Post;
       DMSAIDA.IBT.CommitRetaining;
     end;


     //descrementa um em empresa
     DMMACS.TEmpresa.Edit;
     DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger-1;
     DMMACS.TEmpresa.Post;
     DMMACS.Transaction.CommitRetaining;

     //proxima ocorrencia
     DMESTOQUE.Alx2.Next;
   end;
   PainelAguarde(False);
   //FMenu.XNFe:=0;
   Close;
end;

// onExit no Conferencia
procedure TFNFe.TConfereExit(Sender: TObject);
begin
   PainelAguarde(True);
    // passa campos da tabela
   DMESTOQUE.Alx2.First;
   while not  DMESTOQUE.Alx2.Eof do
   begin
     //filtra tabela DOCFISSAIDA pelo codigo do pedido

     FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', DMESTOQUE.Alx2.FieldByName('COD_PEDVENDA').AsString, '');

     FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', DMESTOQUE.Alx2.fieldByName('COD_PEDVENDA').AsString, '');

     DMESTOQUE.Alx.Close;
     DMESTOQUE.Alx.SQL.Clear;
     DMESTOQUE.Alx.SQL.Add('update PEDVENDA set pedvenda.mark = '+#39+' '+#39+' where pedvenda.mark = '+#39+'B'+#39+' ');
     DMESTOQUE.Alx.ExecSQL;
     DMESTOQUE.TransacEstoque.CommitRetaining;

     //proxima ocorrencia
     DMESTOQUE.Alx2.Next;
   end;

   AtualizaGrid;

     DMESTOQUE.Alx1.Open;
     DMESTOQUE.Alx2.Open;

     DBPV.DataSource:=DMESTOQUE.DSAlx1;
     DBPL.DataSource:=DMESTOQUE.DSAlx2;

     AtualizaPainel;

     LQtd.Caption:='0';

   PainelAguarde(False);
end;

//click botao abrir XML nfe aceita
procedure TFNFe.BitBtn9Click(Sender: TObject);
var caminho :STring;
begin
    caminho := XDir+'enviNFe\'+DMESTOQUE.Alx3.FieldByName('NFECHAVE').AsString+'-enviNFe.xml';
    if (fileExists(caminho)) then
       ShellExecute(Handle, nil, Pchar(caminho), nil, nil, SW_SHOWNORMAL);
end;

//click ver xml resposta do lote selecionado
procedure TFNFe.BitBtn10Click(Sender: TObject);
var caminho :STring;
begin
   FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', DMESTOQUE.Alx3.FieldByName('COD_PEDVENDA').AsString, '');
    caminho := XDir+'retPedNFe\'+DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString+'-pro-rec.xml';
    if (fileExists(caminho)) then
       ShellExecute(Handle, nil, Pchar(caminho), nil, nil, SW_SHOWNORMAL);
end;

//pedido de inutilizacao
function TFNFe.Inutilizacao(ano:WideString; NumNFInicial:String; NumNFFinal:String; CNPJ:String; Justificativa:String; out msg:String):Boolean;
        ///  9 . InutilizaNroNF:  Inutiliza númeração de NF-e
        ///
        ///    Entradas:
        ///
        ///            siglaUF: Sigla da UF do WS chamado
        ///       tipoAmbiente: Código do tipo de ambiente = 1-Produção / 2-Homologação
        ///    nomeCertificado: Nome do titular do certificado a ser utlizado na conexão SSL  e assinatura do pedido
        ///                ano: ano de inutilização
        ///               CNPJ: CNPJ do emissor
        ///             modelo: modelo da NF-e
        ///         nroInicial: primeiro número da faixa
        ///           nroFinal: último número da faixa
        ///            licenca: chave da licença de uso
        /// 
        ///      justificativa: Justificativa de cancelamento    ///            licenca: chave da licença de uso da aplicação
        ///              
        ///    proxy ,usuario e senha: deve ser informado nos casos em que é necessário o uso de proxy
        ///
        ///    IMPORTANTE: funcionamento ignorado por falta de testes
        /// 
        ///   Retornos:
        /// 
        ///       inutilizaNroNF: código do resultado da chamada do WS
        ///                      0 - OK
        ///                      1 - codigo do ambiente inválido
        ///                      2 - sigla da UF inválida
        ///                      3 - a UF não oferece o serviço
        ///                      4 - Arquivo com a URL dos WS não localizados
        ///                      5 - Erro não tratado de abertura/tratamento Arquivo ws.xml
        ///                      6 - Erro de validação de Schema
        ///                      7 - Nenhum Certificado Selecionado
        ///                      8 - Nenhum certificado válido foi encontrado com o nome informado
        ///                      9 - Erro Inesperado no acesso ao certificado digital: "+ex.Message
        ///                     10 - Erro: Time-out ao chamar o WS
        ///                     11 - Erro: exceção do biblioteca criptográfica
        ///                     12 - Erro: conectividade
        ///                     13 - aplicação não licenciada
        ///                     14 - Erro: Problema ao acessar o certificado digital - %exceção%
        ///                     15 - Certificado digital inexistente para %nome%
        ///                     16 - XML mal formado + exceção
        ///                     17 - A tag de assinatura %RefUri% inexiste
        ///                     18 - A tag de assinatura %RefUri% não é unica
        ///                     19 - Erro Ao assinar o documento - ID deve ser string %RefUri(Atributo)%
        ///                     20 - Erro: Ao assinar o documento - %exceção%
        ///                     21 - Erro: O ano deve ter 2 posições
        ///                     22 - Erro: CNPJ informado inválido
        ///                     23 - Erro: Modelo inválido diferente de 55
        ///                     24 - Erro: Serie inválida
        ///                     25 - Erro: Número inicial da faixa inválido
        ///                     26 - Erro: Número Final da faixa inválido
        ///                     27 - Erro: Número Final menor que número inicial da faixa
        ///                     28 - Erro: A justificativa deve ter pelo menos 15 posições
        ///                     29 - Erro: O nome do titular do certificado deve ser informado
        /// 
        ///           msgCabec: XML do cabeçalho enviado ao WS (útil para depuração)
        ///           msgDados: XML com o pedido de consulta de resultado de processamento de lote
        ///           msgRetWS: XML de resposta do WS
        ///       msgResultado: literal do resultado da chamada do WS EnviaLote
        ///
var
Util:NFe_Util_Interface;
i : integer;
cUF, cabMsg, DadosMsg, retWS,a,b,c,d,e :WideString;
NomeSalvar:String;
tmpXMLDoc: TXMLDocument;
NodePai: IXMLNode;
begin

  //ano := Copy(FormatDateTime('yyyy-mm-dd', Date()), 3, 2);
  retWS :='';
  cabMsg :='';
  dadosMsg :='';
  msg :='';

  // valida numeros fiscais
  NumNFInicial := ValidaNumeroNF(NumNFInicial);
  NumNFFinal := ValidaNumeroNF(NumNFFinal);
  if (Length(NumNFInicial) < 1 ) or (Length(NumNFInicial) < 1 )
  then begin
      msg := 'Número Inicial ou Final Inválido.';
      Result := False;
      Exit;
  end;
  //valida CNPJ
  CNPJ := ValidaCNPJ(CNPJ);
  if CNPJ = ''
  then begin
      msg := 'CNPJ incorreto ou inválido.';
      Result := False;
      Exit;
  end;
  Util := CoUtil.Create;
  a := NumNFInicial;
  b:=NumNFFinal;
  c:=CNPJ;
  d:=Justificativa;
  cUF := copy('12,27,13,16,29,23,53,32,52,21,31,50,51,15,25,26,22,41,33,24,11,14,43,42,28,35,17',pos(XUF,'AC,AL,AM,AP,BA,CE,DF,ES,GO,MA,MG,MS,MT,PA,PB,PE,PI,PR,RJ,RN,RO,RR,RS,SC,SE,SP,TO'),2);
  EstadoMouse(True);
  If XTIPOPED <> 'SCAN'
  Then Begin
       i:= Util.InutilizaNroNF(XUF, XTpAmb, Certificado(False), cabMsg, DadosMsg, retWS, e, cUF, ano, c, XModelo, XSerie, a, b, d, '', '', '', XLicenca);
  End
  Else Begin
       i:= Util.InutilizaNroNFSCAN(XUF, XTpAmb, Certificado(False), cabMsg, DadosMsg, retWS, e, cUF, ano, c, XModelo, XSerie, a, b, d, '', '', '', XLicenca);
  End;
  EstadoMouse(False);
  msg := e;
  if i > 1 then begin
      msg := 'Erro na chamada do WS...'+#13+#13+msg;
      Result:=False;
      GravaRtInutNFe(NomeSalvar, DadosMsg, retWS);
  end else begin

       NomeSalvar := ano+CNPJ+XModelo+XSerie+NumNFInicial+NumNFFinal;

        // gravar retorno de inutilizacao
        if not GravaRtInutNFe(NomeSalvar, DadosMsg, retWS)
        then begin
             msg := 'O arquivo de respota não pode ser gravado.';
             Result := False;
        end else begin
          // Cria a variável baseada no TXMLDocument
          tmpXMLDoc := TXMLDocument.Create(self);
          try
          With tmpXMLDoc do begin
              // verifica se a resposta do lote existe
             if not FileExists(XDir+'retInutNFe\'+NomeSalvar+'-inu.xml') then begin
                 msg := 'Arquivo de retorno de inutilização não encontrado!';
                 Result := False;
                 Exit;
             end;

             // abre o arquivo na variavel
             tmpXMLDoc.LoadFromFile(XDir+'retInutNFe\'+NomeSalvar+'-inu.xml');

             // Aqui eu peço para encontrar a Tag <infInut>>
             NodePai := tmpXMLDoc.DocumentElement.ChildNodes.FindNode('infInut'); //childNodes['infInut']; //.ChildNodes.FindNode('infInut');
             NodePai.XML;
             msg :='Status '+NodePai.childNodes['cStat'].Text+': '+NodePai.childNodes['xMotivo'].Text;

             // verifica se o estatus eh 102 (OK)
             if NodePai.childNodes['cStat'].Text <> '102' then
             begin
                Result := False;
                Exit;
             end;

             Result := True;

            end;
             finally
                 tmpXMLDoc.Free;
             end;
        end;
  end;
  Util := nil;
end;

//gravar retorno de inutilizacao de nfe
function TFNFe.GravaRtInutNFe(const NrSalvar:String; const cabXML:WideString; const retXML:WideString):Boolean;
var
Fsaida: TextFile;
XML: WideString;
begin

   XML := cabXML;
   XML := TirarAcentos(False, XML);
   verificaDiretorio(XDir+'inutNFe');
   AssignFile(Fsaida, XDir+'inutNFe\'+NrSalvar+'-ped-inu.xml');
   Rewrite(Fsaida);
   Write(Fsaida, XML);
   CloseFile(Fsaida);

   Memo1.Lines.Add('Arquivo: ' + XDir+'inutNFe\'+NrSalvar+'-ped-inu.xml');
   Memo1.Lines.Add('');
   Memo1.Lines.Add(XML);

     XML := retXML;
    if (Trim(NrSalvar) <> '') then begin

      XML := TirarAcentos(False, XML);
      try    

       verificaDiretorio(XDir+'retInutNFe');
       AssignFile(Fsaida, XDir+'retInutNFe\'+NrSalvar+'-inu.xml');
       Rewrite(Fsaida);
       Write(Fsaida, XML);
       CloseFile(Fsaida);

       Memo2.Lines.Add('Arquivo: ' + XDir+'retInutNFe\'+NrSalvar+'-inu.xml');
       Memo2.Lines.Add('');
       Memo2.Lines.Add(XML);

       Result := True;
      Except
         Result := False;
       end;
     end
      else
       Result := False;

end;

function TFNFe.LerRetInuNFe(const NmArquivo:String; out msg:String; out newNrProtocolo:String):Boolean;
var tmpXMLDoc: TXMLDocument;
    NodePai: IXMLNode;
    //pj, modelo, serie, nfeinicio, nfefinal, data, protocolo: WideString;
begin

    // Cria a variável baseada no TXMLDocument
    tmpXMLDoc := TXMLDocument.Create(self);

    try
    With tmpXMLDoc do begin
        // verifica se a resposta do lote existe
       if not FileExists(XDir+'retInutNFe\'+NmArquivo+'-inu.xml') then begin
           msg := 'Arquivo de retorno de inutilização não encontrado!';
           Result := False;
           Exit;
       end;

       // abre o arquivo na variavel
       tmpXMLDoc.LoadFromFile(XDir+'retInutNFe\'+NmArquivo+'-inu.xml');

       // valida o xml
       if not ValidarXML(tmpXMLDoc.XML.Text, 9) then begin
           Result := False;
           msg:='Erro na validação do arquivo de resposta de inutilização.';
           Exit;
       end;

       // Aqui eu peço para encontrar a Tag <infInut>>
       NodePai := tmpXMLDoc.DocumentElement.childNodes['infInut'];

       msg :='Status '+NodePai.childNodes['cStat'].Text+': '+NodePai.childNodes['xMotivo'].Text;

       // verifica se o estatus eh 102 (OK)
       if NodePai.childNodes['cStat'].Text <> '102' then
       begin
          Result := False;
          Exit;
       end;

       newNrProtocolo := NodePai.childNodes['nProt'].Text;

       Result := True;

      end;
       finally
           tmpXMLDoc.Free;
       end;

end;

//seta o status no painel de aguarde
procedure TFNFe.StatusAguarde(str:String);
begin
    LBStatusAguarde.Caption := str;
    PAguarde.Refresh;
    fnfe.refresh;
end;

{
function TFNFe.GerarEntrada(XCodPedCompra:Integer;out msg:WideString):Boolean;
var
   XCODFISC, XNUMPED: Integer;  //armazena numero de documento fiscal
   chave: WideString;
   nfe : TNFe;
   status, teste: String;
   //chaveNFe: Array of String; // array com as chaves das nfe
   tamArray, tam,i: Integer;
   XNUMLOTE: String;
   XOk: Boolean;
   ErroChave, ErroMotivo, OkChave, OkProtoloco:TStrings;
begin

     

     //filtra documentos fiscais para verificar se o pedido ja tem docfiscal ou não
     If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', IntToStr(XCODPED)  , '')=False
     Then Begin
         //INSERE NOVO DOCUMENTO FISCAL, caso o pedido ainda não tenha
         XCODFISC:=InserReg(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFISC');
         DMENTRADA.TFiscPC.FieldByName('COD_DOCFISC').AsInteger:=XCODFISC;
         DMENTRADA.TFiscPC.FieldByName('COD_PEDIDO').AsInteger:=XCODPED;
         DMENTRADA.TFiscPC.Post;
         DMENTRADA.IBT.CommitRetaining;
     End;

     //faz todo recálculo fiscal
     //If RecalcFiscal('PC', StrToInt(IntToStr(XCODPED)))=false
     //Then begin
     //    Result := False;
    //     msg := 'Erro de cálculo fiscal. Tente novamente, se o problema persistir, entre em contato com suporte.';
     //    Exit;
     //End;

     FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
     //filtra pedido de venda para ser marcado para o lote
     FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', IntToStr(XCODPED), '');

     //VERIFICA SE NÃO HÁ NENHUM DOCFISC COM MSM NUMPED E SERIE
     {DMSAIDA.TAlx.Close;
     DMSAIDA.TAlx.SQL.Clear;
     DMSAIDA.TAlx.SQL.Add('select docfissaida.cod_docfisc');
     DMSAIDA.TAlx.SQL.Add('from docfissaida');
     DMSAIDA.TAlx.SQL.Add('where docfissaida.nfeserie = :SERIE and docfissaida.numdocfis = :NUMPED');
     DMSAIDA.TAlx.ParamByName('SERIE').AsString := XSerie;
     DMSAIDA.TAlx.ParamByName('NUMPED').AsString :=DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
     DMSAIDA.TAlx.Open;

     if not DMSAIDA.TAlx.IsEmpty
     then begin
         DMMACS.TEmpresa.Edit;
         while not DMSAIDA.TAlx.IsEmpty
         do BEGIN

             DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger := DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger+1;

             DMSAIDA.TAlx.Close;
             DMSAIDA.TAlx.SQL.Clear;
             DMSAIDA.TAlx.SQL.Add('select docfissaida.cod_docfisc');
             DMSAIDA.TAlx.SQL.Add('from docfissaida');
             DMSAIDA.TAlx.SQL.Add('where docfissaida.nfeserie = :SERIE and docfissaida.numdocfis = :NUMPED');
             DMSAIDA.TAlx.ParamByName('SERIE').AsString := XSerie;
             DMSAIDA.TAlx.ParamByName('NUMPED').AsString :=DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
             DMSAIDA.TAlx.Open;
         END;
         DMMACS.TEmpresa.Post;
     end;      }
     {

     StatusAguarde('Verificando Número Fiscal ...');

     XNUMPED := BuscaProximoNumeroFiscal(DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger);

     if XNUMPED <=0
     then begin
        msg := '';
        PainelAguarde(False);
        Exit;
     end;

     //Grava Numero fiscal a tabela de documento fiscal
     DMENTRADA.TFiscPC.Edit;
     DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString:=IntToStr(XNUMPED);
     DMENTRADA.TFiscPC.FieldByName('DTEMISSAO').AsDateTime:=Date();
     DMENTRADA.TFiscPC.FieldByName('SERIE').AsString:='A';
     DMENTRADA.TFiscPC.FieldByName('DTENTSAID').AsDateTime:=Date();
     DMENTRADA.TFiscPC.FieldByName('HORASAID').AsDateTime:=Time();
     DMENTRADA.TFiscPC.FieldByName('NFEAMBIENTE').AsInteger := XTpAmb;
     DMENTRADA.TFiscPC.Post;
     DMENTRADA.IBT.CommitRetaining;

     DMENTRADA.TPedC.Edit;
     DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString:=IntToStr(XNUMPED);
     DMENTRADA.TPedC.FieldByName('FISCO').AsString := 'NFe';
     DMENTRADA.TPedC.Post;
     DMENTRADA.IBT.CommitRetaining;

     //incrementa um em empresa
     //DMMACS.TEmpresa.Edit;
     //DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger+1;
     //DMMACS.TEmpresa.Post;
     //DMMACS.Transaction.CommitRetaining;

     // gerar chave se voltar false cancelar
     if not GerarDevolucao(chave, msg) then begin
           Result := False;

           DMENTRADA.TFiscPC.Edit;
           DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString:='';
           DMENTRADA.TFiscPC.Post;
           DMENTRADA.IBT.CommitRetaining;

           DMENTRADA.TPedC.Edit;
           DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString:='';
           DMENTRADA.TPedC.FieldByName('FISCO').AsString:='';
           DMENTRADA.TPedC.Post;
           DMENTRADA.IBT.CommitRetaining;

           msg := 'Ao gerar o XML de envio ocorreu o seguinte erro: '+#13+msg;
           PainelAguarde(false);
           Exit;
     end;

     //filtra tabela DOCFIS pelo codigo do pedido
     FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', IntToStr(XCODPED), '');
     //DMENTRADA.TFiscPC.Close;
     //DMENTRADA.TFiscPC.SQL.Clear;
     //DMENTRADA.TFiscPC.SQL.Add('select * from DOCFIS');
     //DMENTRADA.TFiscPC.SQL.Add('where DOCFIS.cod_pedido = '+IntToStr(XCODPED));
     //DMENTRADA.TFiscPC.Open;

     //filtra tabela DOCFISSAIDA pelo codigo do pedido
     DMENTRADA.TFiscPC.Edit;
     DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString:=chave; //DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger:=0;
     DMENTRADA.TFiscPC.Post;
     DMENTRADA.IBT.CommitRetaining;

     //  ENVIAR PARA A RECEITA      AQUI --------------------------------------------------------------

  // if not ConsultarStatusServico(msg)
  // then begin
     //  msg := 'Servidor não está em operação. Tente mais tarde.';
     //  Exit;
   //end;

   // pegar numero do lote e add mais um

   DMMACS.TEmpresa.Close;
   DMMACS.TEmpresa.SQL.Clear;
   DMMACS.TEmpresa.SQL.Clear;
   DMMACS.TEmpresa.SQL.Add('select * from empresa');
   DMMACS.TEmpresa.Open;
   XCodLote := DMMACS.TEmpresa.FieldByName('NFEPROXLOTE').AsString;
   DMMACS.TEmpresa.Edit;
   DMMACS.TEmpresa.FieldByName('NFEPROXLOTE').AsString := IntToStr(StrToInt(XCodLote)+1);
   DMMACS.TEmpresa.Post;
   DMMACS.Transaction.CommitRetaining;

   tamArray := 1;


     //SETA TAMANHO DO ARRAY
     SetLength(chaveNFe, tamArray);
     // pega o numero da chave
     chaveNFe[tamArray-1] := DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString;
     // SETA Nº LOTE
     DMENTRADA.TFiscPC.Edit;
     DMENTRADA.TFiscPC.FieldByName('NFELOTE').AsString:=XCodLote;
     DMENTRADA.TFiscPC.Post;
     //DMENTRADA.IBT.CommitRetaining;

   //gerar o lote a partir das chaves
   if GerarLote(XCodLote, chaveNFe)then begin

       //enviar o lote
       if EnviarLote(XCodLote) then begin

           // ler arquivo de reposta
           if LerRespostaLoteNFe(XCodLote, msg, NrRecibo)then begin
              // setar o número de recibo nas notas
              // passa campos da tabela

                 // SETA Nº RECIBO
                 DMENTRADA.TFiscPC.Edit;
                 DMENTRADA.TFiscPC.FieldByName('NFERECIBO').AsString:=NrRecibo;
                 DMENTRADA.TFiscPC.Post;
                 //DMENTRADA.IBT.CommitRetaining;

           end else begin
               Result := False;

               DMENTRADA.TFiscPC.Edit;
               DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString:='';
               DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString:='';
               DMENTRADA.TFiscPC.FieldByName('NFELOTE').AsString:='';
               DMENTRADA.TFiscPC.Post;
               DMENTRADA.IBT.CommitRetaining;

               DMENTRADA.TPedC.Edit;
               DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString:='';
               DMENTRADA.TPedC.FieldByName('FISCO').AsString:='';
               DMENTRADA.TPedC.Post;
               DMENTRADA.IBT.CommitRetaining;
              PainelAguarde(false);
               msg := 'O lote foi recusado.'+#13+'Erro: '+msg;
               Exit;
           end;
       end else begin
           Result := False;

           DMENTRADA.TFiscPC.Edit;
           DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString:='';
           DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString:='';
           DMENTRADA.TFiscPC.FieldByName('NFELOTE').AsString:='';
           DMENTRADA.TFiscPC.Post;
           DMENTRADA.IBT.CommitRetaining;

           DMENTRADA.TPedC.Edit;
           DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString:='';
           DMENTRADA.TPedC.FieldByName('FISCO').AsString:='';
           DMENTRADA.TPedC.Post;
           DMENTRADA.IBT.CommitRetaining;
           PainelAguarde(false);
           msg := 'O lote não pode ser enviado.'+#13+'Verifique sua conexão e o status do Web Service.'+#13+'Se o problema persistir consulte o suporte.';
           Exit;
       end;
   end else begin
      Result := False;
      DMENTRADA.TFiscPC.Edit;
     DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString:='';
     DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString:='';
     DMENTRADA.TFiscPC.FieldByName('NFELOTE').AsString:='';
     DMENTRADA.TFiscPC.Post;
     DMENTRADA.IBT.CommitRetaining;

     DMENTRADA.TPedC.Edit;
     DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString:='';
     DMENTRADA.TPedC.FieldByName('FISCO').AsString:='';
     DMENTRADA.TPedC.Post;
     DMENTRADA.IBT.CommitRetaining;
      PainelAguarde(false);
      msg := 'Não foi possível gerar o lote. Tente novamente.'+#13+'Se o problema persistir consulte o suporte e informe as possíveis causas do erro.';
      Exit;
   end;

   msg := '';

   XOk := False;

   While not XOk do
   begin
       // pedido de consulta status do lote
       if not ConsultarLote(XCodLote, msg) then begin
          Result := False;

          DMENTRADA.TFiscPC.Edit;
         DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString:='';
         DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString:='';
         DMENTRADA.TFiscPC.FieldByName('NFELOTE').AsString:='';
         DMENTRADA.TFiscPC.Post;
         DMENTRADA.IBT.CommitRetaining;

         DMENTRADA.TPedC.Edit;
         DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString:='';
         DMENTRADA.TPedC.FieldByName('FISCO').AsString:='';
         DMENTRADA.TPedC.Post;
         DMENTRADA.IBT.CommitRetaining;
          PainelAguarde(false);
          msg := 'Não foi possível fazer a consulta do lote.'+#13+'Verifique sua conexão e o status do Web Service.'+#13+'Se o problema persistir consulte o suporte.';
          Exit;
       end;

       //ler arquivo de pedido de consulta de status de lote
       if LerPedidoLoteNFe(NrRecibo, msg, status) then begin
           XOk := True;
           if ConferirRetornoLote(NrRecibo, msg, ErroChave, ErroMotivo, OkChave, OkProtoloco) then begin

               // verifica notas com erro
               if (ErroChave <> nil) and (ErroChave.Count <> 0) then begin
                     //pega o tamanho do array com as chaves
                     tam := ErroChave.Count-1;
                     // varre todo o array
                     for i:=0 to tam do begin
                           // SETA Nº STATUS e ERRO
                           DMENTRADA.TFiscPC.Edit;
                           DMENTRADA.TFiscPC.FieldByName('NFEERRO').AsString:=ErroMotivo[i];
                           msg := ErroMotivo[i];
                           DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger:=2;
                           DMENTRADA.TFiscPC.FieldByName('NFESERIE').AsInteger:=-1;
                           DMENTRADA.TFiscPC.Post;
                           DMENTRADA.IBT.CommitRetaining;
                           PainelAguarde(false);
                           Result := False;
                    end;
              end;
              // verifica notas ok
               if (OkChave <> nil) and (OkChave.Count <> 0)then begin
                     //pega o tamanho do array com as chaves
                     tam := OkChave.Count-1;
                     // varre todo o array
                     for i:=0 to tam do begin

                           // SETA Nº STATUS e PROTOCOLO
                           DMENTRADA.TFiscPC.Edit;
                           DMENTRADA.TFiscPC.FieldByName('NFEPROTOCOLO').AsString:=OkProtoloco[i];
                           DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger:=1;
                           DMENTRADA.TFiscPC.FieldByName('NFESERIE').AsInteger:=DMMACS.TEmpresa.FieldByName('NFESERIE').AsInteger;
                           DMENTRADA.TFiscPC.Post;
                           DMENTRADA.IBT.CommitRetaining;
                           msg := '';//'Lote Enviado com Sucesso!';
                           PainelAguarde(false);
                           Result := True;
                    end;

              end;
           end else begin
               PainelAguarde(false);
               Result := False;
               Exit;
           end;
       end else begin
           // esta em processo
           if status = '105' then begin
                XOk := False;
           end else begin
               Result := False;

               DMENTRADA.TFiscPC.Edit;
               DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString:='';
               DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString:='';
               DMENTRADA.TFiscPC.FieldByName('NFELOTE').AsString:='';
               DMENTRADA.TFiscPC.Post;
               DMENTRADA.IBT.CommitRetaining;

               DMENTRADA.TPedC.Edit;
               DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString:='';
               DMENTRADA.TPedC.FieldByName('FISCO').AsString:='';
               DMENTRADA.TPedC.Post;
               DMENTRADA.IBT.CommitRetaining;
               PainelAguarde(false);
               msg := 'Lote recusado.'+#13+'Motivo: '+msg;
               XOk := True;
               Exit;
           end;
       end;
   end;

end;  }

   {
 function TFNFe.GerarDevolucao(out chave:WideString; out msg:WideString):Boolean;
var
   nfe : TNFe;   //classe com dados da nfe
   i,tamArray :Integer;
   XVALORPROD: Real;
   XCFOP: Integer;
   xml :String;
begin

      XCFOP := 0;

      DMENTRADA.TPedC.Close;
      DMENTRADA.TPedC.SQL.Clear;
      DMENTRADA.TPedC.SQL.Add('select * from pedcompra');
      DMENTRADA.TPedC.SQL.Add('where pedcompra.cod_pedcomp = '+IntToStr(XCODPED));
      DMENTRADA.TPedC.Open;

      nfe := TNFe.Create;

      //dados gerais

      nfe.Dados := TIde.Create;

      nfe.Dados.UFCodigo := 41; //padrão paraná

       If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', DMENTRADA.TPedC.fieldByName('cod_pedcomp').AsString, '')
       Then Begin
           // entrou!!
       End;


       //          --- verificar---------    A T E N Ç Ã O ! ! !


      //busca todas as informações do cliente
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select pessoa.cpfcnpj, pessoa.nome, pessoa.endereco, pessoa.bairro,');
      DMESTOQUE.Alx.SQL.Add('cidade.nome as NOMECIDADE, cidade.cod_ibge, estado.uf_estado from fornecedor');  //é necessário acrescentar nesta sql o campo cod_ibge após atualizar o banco com o cod_ibge
      DMESTOQUE.Alx.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
      DMESTOQUE.Alx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade');
      DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
      DMESTOQUE.Alx.SQL.Add('where fornecedor.cod_fornec = '+IntToStr(DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger));
      DMESTOQUE.Alx.Open;

       // verifica se emitente é do msm do estado do destinatario
       if DMESTOQUE.Alx.FieldByName('uf_estado').AsString = 'PR'
       then begin // dentro do estado
           FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.fieldByName('CFOPINTERNO').AsString, ''); //filtra para buscar a cfop
       end
       else begin  //fora do estado
           FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.fieldByName('CFOPEXTERNO').AsString, ''); //filtra para buscar a cfop
       end;


       DMENTRADA.TFiscPC.Edit;
       //DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString:=DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
       // se o CFOP no docFisSaida estiver vazio ou nulo setar o CFOP configurado em loja
       if Trim(DMENTRADA.TFiscPC.FieldByName('COD_CFOP').AsString) = '' then
           DMENTRADA.TFiscPC.FieldByName('COD_CFOP').AsInteger:=DMESTOQUE.TCFOP.FieldByName('COD_CFOP').AsInteger;
       DMENTRADA.TFiscPC.Post;
       DMENTRADA.IBT.CommitRetaining;

      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select docfis.numdocfis, formpag.descricao, cfop.descricao as DESCCFOP, cfop.cfop from docfis');
      DMESTOQUE.Alx.SQL.Add('left join cfop on docfis.cod_cfop = cfop.cod_cfop');
      DMESTOQUE.Alx.SQL.Add('left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
      DMESTOQUE.Alx.SQL.Add('left join formpag on pedcompra.cod_formpag = formpag.cod_formpag');
      DMESTOQUE.Alx.SQL.Add('where docfis.cod_pedido= :cod');
      DMESTOQUE.Alx.ParamByName('cod').AsString:=DMENTRADA.TPedC.fieldByName('cod_pedcomp').AsString;
      DMESTOQUE.Alx.Open;

      XCFOP := DMESTOQUE.Alx.fieldByName('cfop').AsInteger;

      nfe.Dados.NatuOpera:= DMESTOQUE.Alx.fieldByName('DESCCFOP').AsString; //descrição da CFOP

      //forma de pagamento 0 - a vista  1- a prazo
      if DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString <> 'À VISTA'
      then begin
         nfe.Dados.FormaPagam:= 1;
      end
      else begin
         nfe.Dados.FormaPagam:= 0
      end;
      //numero do documento fiscal
      nfe.Dados.NumeroDocFisc := DMESTOQUE.Alx.fieldByName('NUMDOCFIS').AsInteger; //numero do documento fiscal em docfissaida

      nfe.Dados.DtEmissao := Date(); //data automática

      nfe.Dados.TipoDocFisc := 0; //entrada

      //filtra cidade
      FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
      FiltraTabela(DMGEOGRAFIA.TCidade,'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');

      nfe.Dados.MunicipioCodigo := DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsString; //padrão toledo

      nfe.Dados.TipoAmb := XTpAmb; //padrão

      nfe.Dados.VersaoAplicativo := '2.7'; //versão do macs

     //NUMDEV     XView.FieldByName('NUMDEV').AsInteger

     if  (not DMSAIDA.TFiscPV.IsEmpty) and (Length(DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString) = 44)
     then begin


      nfe.Dados.NFeRef := DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString;

      //nfe.Dados.NFeRefInfo := 'Devolucao Mercadoria';

     end;
       //          --- verificar---------    A T E N Ç Ã O ! ! !

      //emitente

      nfe.Emitente := TEmitente.Create;

      nfe.Emitente.CNPJ := DMMACS.TEmpresa.FieldByName('CNPJ').AsString; //CNPJ do emitente

      nfe.Emitente.Nome := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString; //razão social do emitente

      nfe.Emitente.NomeFantasia := DMMACS.TEmpresa.FieldByName('FANTASIA').AsString; //nome fantasia do emitente

      nfe.Emitente.Logradouro := DMMACS.TEmpresa.FieldByName('ENDERECO').AsString; //endereço do emitente

      nfe.Emitente.Numero := '0'; //padrão por não possuir campo no banco

      nfe.Emitente.Complemento := ''; //padrão por não ter o campo no banco

      nfe.Emitente.Bairro := DMMACS.TEmpresa.FieldByName('BAIRRO').AsString; //bairro do emitente



      nfe.Emitente.CodigoMunicipio := DMGEOGRAFIA.TCidade.FieldByName('COD_IBGE').AsString; //padrão toledo, mas após rodar o programa de atualização do IBGE, pode ser feita comparação

      nfe.Emitente.NomeMunicipio := DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString; //padrão mas pode ser realizada a comparação

      nfe.Emitente.UF := DMGEOGRAFIA.WCidade.FieldByName('UF').AsString; //UF do emitente

      nfe.Emitente.CEP := DMMACS.TEmpresa.FieldByName('CEP').AsString; //CEP do emitente

      nfe.Emitente.IE := DMMACS.TEmpresa.FieldByName('INSC_EST').AsString; //insrição estadual do emitente

       //          --- verificar---------    A T E N Ç Ã O ! ! !

      //destinatario

      //busca todas as informações do cliente
      {DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select pessoa.cpfcnpj, pessoa.nome, pessoa.cod_pessoa, pessoa.endereco, pessoa.bairro,');
      DMESTOQUE.Alx.SQL.Add('cidade.nome as NOMECIDADE, cidade.cod_ibge, estado.uf_estado from cliente');  //é necessário acrescentar nesta sql o campo cod_ibge após atualizar o banco com o cod_ibge
      DMESTOQUE.Alx.SQL.Add('left join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa');
      DMESTOQUE.Alx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade');
      DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
      DMESTOQUE.Alx.SQL.Add('where cliente.cod_cliente = '+IntToStr(DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger));
      DMESTOQUE.Alx.Open;     }
                {
      //busca todas as informações do cliente
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select pessoa.cpfcnpj, pessoa.nome, pessoa.cod_pessoa, pessoa.endereco, pessoa.bairro,');
      DMESTOQUE.Alx.SQL.Add('cidade.nome as NOMECIDADE, cidade.cod_ibge, estado.uf_estado from fornecedor');  //é necessário acrescentar nesta sql o campo cod_ibge após atualizar o banco com o cod_ibge
      DMESTOQUE.Alx.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
      DMESTOQUE.Alx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade');
      DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
      DMESTOQUE.Alx.SQL.Add('where fornecedor.cod_fornec = '+IntToStr(DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger));
      DMESTOQUE.Alx.Open;

      //filtra pessoaj para verificar se o cliente é pessoa juridica
      DMESTOQUE.Alx4.Close;
      DMESTOQUE.Alx4.SQL.Clear;
      DMESTOQUE.Alx4.SQL.Add('select * from pessoaj');
      DMESTOQUE.Alx4.SQL.Add('where pessoaj.COD_PESSOA = :CODPESSOA');
      DMESTOQUE.Alx4.ParamByName('CODPESSOA').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PESSOA').AsInteger;
      DMESTOQUE.Alx4.Open;
      nfe.Destinatario := TDestinatario.Create;

      //se estiver vazio significa q é um cliente pessoa física
      if DMESTOQUE.Alx4.IsEmpty
      then begin
           nfe.Destinatario.CPF := DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString; //cpf do destinatário
      end
      else begin
           nfe.Destinatario.CNPJ := DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString; //cnpj do destinatário
      end;

      nfe.Destinatario.Nome := DMESTOQUE.Alx.FieldByName('NOME').AsString; //nome do destinatário

      nfe.Destinatario.Logradouro := DMESTOQUE.Alx.FieldByName('ENDERECO').AsString; //endereço do destinatário

      nfe.Destinatario.Bairro := DMESTOQUE.Alx.FieldByName('BAIRRO').AsString; //bairro do destinatário

      nfe.Destinatario.Numero := '0'; //padrão por não conter campo no banco de dados

      nfe.Destinatario.CodigoMunicipio := DMESTOQUE.Alx.FieldByName('COD_IBGE').AsString; //codigo do ibge do destinatário
//      nfe.Destinatario.CodigoMunicipio := '4127700';

      nfe.Destinatario.NomeMunicipio := DMESTOQUE.Alx.FieldByName('NOMECIDADE').AsString; //nome da cidade do destinatário

      nfe.Destinatario.UF := DMESTOQUE.Alx.FieldByName('UF_ESTADO').AsString; //uf do estado do destinatário

      if not DMESTOQUE.Alx4.IsEmpty
      then begin
           nfe.Destinatario.IE := DMESTOQUE.Alx4.FieldByName('INSC_EST').AsString; //I.E. do destinatário
      end;

      //produtos

      DMESTOQUE.Alx3.Close;
      DMESTOQUE.Alx3.SQL.Clear;
      DMESTOQUE.Alx3.SQL.Add(' select cst.cod_cst, cst.cod_sit_trib, ');
      DMESTOQUE.Alx3.SQL.Add(' subproduto.contrint, subproduto.codbarra, subproduto.descricao, subproduto.cod_unidcompra, ');
      DMESTOQUE.Alx3.SQL.Add(' subproduto.ncm, subproduto.cod_cst, subproduto.cod_subproduto, estoque.cod_estoque, subproduto.cod_unidvenda, ');
      DMESTOQUE.Alx3.SQL.Add(' estoque.cod_subprod, estoque.cofins, estoque.icms, estoque.pis, estoque.reducbase, ');
      DMESTOQUE.Alx3.SQL.Add(' itenspedc.aliqicms, itenspedc.aliqipi, itenspedc.baseicms, itenspedc.baseicmssubs, ');
      DMESTOQUE.Alx3.SQL.Add(' itenspedc.cod_estoque, itenspedc.cod_lote, itenspedc.qtdeprod, itenspedc.cod_pedcompra, ');
      DMESTOQUE.Alx3.SQL.Add(' itenspedc.valortotal, itenspedc.valunit, itenspedc.vlricms, ');
      DMESTOQUE.Alx3.SQL.Add(' itenspedc.vlripi,  itenspedc.reducbaseicms, itenspedc.vlricmssubs');
      DMESTOQUE.Alx3.SQL.Add('from itenspedc');
      DMESTOQUE.Alx3.SQL.Add(' left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
      DMESTOQUE.Alx3.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
      DMESTOQUE.Alx3.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst');
      DMESTOQUE.Alx3.SQL.Add('where itenspedc.cod_pedcompra = :COD');
      DMESTOQUE.Alx3.ParamByName('COD').AsString:=IntToStr(XCODPED);
      DMESTOQUE.Alx3.Open;


      //varre array buscando número de produtos
     tamArray := 0;
     DMESTOQUE.Alx3.First;
     while not  DMESTOQUE.Alx3.Eof do
     begin
        tamArray := tamArray+1;
        DMESTOQUE.Alx3.Next;
     end;

      //set tamanho do array para add os produtos
      SetLength(nfe.Produtos, tamArray);

      // volta a primeira ocorrencia
      DMESTOQUE.Alx3.First;

      XVALORPROD:=0;

      for i:= 0 to tamArray-1 do begin

           nfe.Produtos[i] := TItem.Create;

           nfe.Produtos[i].NmItem := i+1;

           nfe.Produtos[i].Produto := TProd.Create;

           nfe.Produtos[i].Produto.CodigoProduto := DMESTOQUE.Alx3.FieldByName('CONTRINT').AsString; //controle interno do produto

           nfe.Produtos[i].Produto.CodigoBarra := DMESTOQUE.Alx3.FieldByName('CODBARRA').AsString; //codigo de barra do produto

           nfe.Produtos[i].Produto.Descricao := DMESTOQUE.Alx3.FieldByName('DESCRICAO').AsString; //descrição do produto

           nfe.Produtos[i].Produto.CodigoNCM := DMESTOQUE.Alx3.FieldByName('NCM').AsString; //nomenclatura comum do mercosul

           nfe.Produtos[i].Produto.CFOP := XCFOP;

           //filtrar pelo unidade de compra
           DMESTOQUE.TUnidade.Close;
           DMESTOQUE.TUnidade.SQL.Clear;
           DMESTOQUE.TUnidade.SQL.Add('select * from unidade');
           DMESTOQUE.TUnidade.SQL.Add('where unidade.cod_unidade = '+IntToStr(DMESTOQUE.Alx3.FieldByName('COD_UNIDCOMPRA').AsInteger));
           DMESTOQUE.TUnidade.Open;

           nfe.Produtos[i].Produto.UnidadeComercial := DMESTOQUE.TUnidade.FieldByName('SIGLA_UNID').AsString; //sigla da unidade vendida do produto

           nfe.Produtos[i].Produto.QntComercial := DMESTOQUE.Alx3.FieldByName('QTDEPROD').AsCurrency; //quantidade vendida do produto

           nfe.Produtos[i].Produto.ValorUnitario := DMESTOQUE.Alx3.FieldByName('VALUNIT').AsCurrency; //valor unitario de venda do produto

           nfe.Produtos[i].Produto.ValorBruto := DMESTOQUE.Alx3.FieldByName('VALORTOTAL').AsCurrency; //valor total do produto

           XVALORPROD:= XVALORPROD + DMESTOQUE.Alx3.FieldByName('VALORTOTAL').AsCurrency;

           nfe.Produtos[i].Produto.GTIN := DMESTOQUE.Alx3.FieldByName('CODBARRA').AsString; //codigo de barra do produto

           //filtrar pelo unidade de venda
           DMESTOQUE.TUnidade.Close;
           DMESTOQUE.TUnidade.SQL.Clear;
           DMESTOQUE.TUnidade.SQL.Add('select * from unidade');
           DMESTOQUE.TUnidade.SQL.Add('where unidade.cod_unidade = '+IntToStr(DMESTOQUE.Alx3.FieldByName('COD_UNIDVENDA').AsInteger));
           DMESTOQUE.TUnidade.Open;

           nfe.Produtos[i].Produto.UnidadeTributavel := DMESTOQUE.TUnidade.FieldByName('SIGLA_UNID').AsString; //sigla da unidade tributável do produto

           nfe.Produtos[i].Produto.QntTributavel :=  DMESTOQUE.Alx3.FieldByName('QTDEPROD').AsCurrency; //qtd vendida do produto

           nfe.Produtos[i].Produto.ValorUnitTribut := DMESTOQUE.Alx3.FieldByName('VALUNIT').AsCurrency; //valor unitario do produto

           //medicamento

           {SetLength(nfe.Produtos[i].Produto.Medicamento, 1);

           nfe.Produtos[i].Produto.Medicamento[0] := TMed.Create;

           nfe.Produtos[i].Produto.Medicamento[0].NmLote := DMESTOQUE.Alx3.FieldByName('LOTE').AsString; //descrição do lote

           nfe.Produtos[i].Produto.Medicamento[0].QntLote := DMESTOQUE.Alx3.FieldByName('QTD').AsString; //quantidade de produtos em estoque deste lote

           nfe.Produtos[i].Produto.Medicamento[0].DtFabricacao := DMESTOQUE.Alx3.FieldByName('FABRICACAO').AsString; //data de fabricação do lote

           nfe.Produtos[i].Produto.Medicamento[0].DtValidade := DMESTOQUE.Alx3.FieldByName('VENCIMENTO').AsString; //data de vencimento do lote

           nfe.Produtos[i].Produto.Medicamento[0].ValorMaxCons := '20.00'; }

           //impostos    {
            {
           nfe.Produtos[i].Imposto := TImposto.Create;

           //ICMS
           nfe.Produtos[i].Imposto.ICMS := TICMS.Create;

           nfe.Produtos[i].Imposto.ICMS.CodigoST := DMESTOQUE.Alx3.FieldByName('COD_CST').AsInteger - 1; // código da situação tributaria

           nfe.Produtos[i].Imposto.ICMS.ModDetBC := 0;


           nfe.Produtos[i].Imposto.ICMS.PercRedBC := DMESTOQUE.Alx3.FieldByName('REDUCBASE').AsCurrency; //percentual de redução

           nfe.Produtos[i].Imposto.ICMS.ValorBC := DMESTOQUE.Alx3.FieldByName('BASEICMS').AsCurrency; //base de calculo icms

           nfe.Produtos[i].Imposto.ICMS.AliquotaICMS := DMESTOQUE.Alx3.FieldByName('ALIQICMS').AsCurrency; //aliquota icms

           nfe.Produtos[i].Imposto.ICMS.ValorICMS := DMESTOQUE.Alx3.FieldByName('VLRICMS').AsCurrency; //valor do icms


           nfe.Produtos[i].Imposto.ICMS.PercRedST := DMESTOQUE.Alx3.FieldByName('REDUCBASEICMS').AsCurrency; //parcentual de redução do icms de ST

           nfe.Produtos[i].Imposto.ICMS.ValorBCST := DMESTOQUE.Alx3.FieldByName('BASEICMSSUBS').AsCurrency; // base de calculo icms de ST

           nfe.Produtos[i].Imposto.ICMS.AliquotaST := DMESTOQUE.Alx3.FieldByName('ALIQICMS').AsCurrency;; //aliquota icms

           nfe.Produtos[i].Imposto.ICMS.ValorST := DMESTOQUE.Alx3.FieldByName('VLRICMSSUBS').AsCurrency; // valor de icms de ST



           //PIS
           nfe.Produtos[i].Imposto.PIS := TPIS.Create;

           nfe.Produtos[i].Imposto.PIS.CodigoPIS := 3; // esta como nao tributado

           nfe.Produtos[i].Imposto.PIS.PISOutros := False; // esta como nao tributado

           nfe.Produtos[i].Imposto.PIS.ValorBC := DMESTOQUE.Alx3.FieldByName('PIS').AsCurrency;  // esta como nao tributado

           nfe.Produtos[i].Imposto.PIS.AliquotaPer := DMESTOQUE.Alx3.FieldByName('PIS').AsCurrency;  // esta como nao tributado

           nfe.Produtos[i].Imposto.PIS.AliquotaReais := DMESTOQUE.Alx3.FieldByName('PIS').AsCurrency;  // esta como nao tributado

           nfe.Produtos[i].Imposto.PIS.QntVend := DMESTOQUE.Alx3.FieldByName('PIS').AsCurrency; // esta como nao tributado

           nfe.Produtos[i].Imposto.PIS.Valor := DMESTOQUE.Alx3.FieldByName('PIS').AsCurrency;  // esta como nao tributado

           //cofins
           nfe.Produtos[i].Imposto.COFINS := TCOFINS.Create;

           nfe.Produtos[i].Imposto.COFINS.CodigoCOFINS := 3;     // esta como nao tributado

           nfe.Produtos[i].Imposto.COFINS.ValorBC := 0;   // esta como nao tributado

           nfe.Produtos[i].Imposto.COFINS.AliquotaPer := 0;  // esta como nao tributado

           nfe.Produtos[i].Imposto.COFINS.AliquotaReais := 0;   // esta como nao tributado

           nfe.Produtos[i].Imposto.COFINS.QntVend := 0;  // esta como nao tributado

           nfe.Produtos[i].Imposto.COFINS.Valor := 0;  // esta como nao tributado



           //CONFINSST


           //passa p/ proxima linha
           DMESTOQUE.Alx3.Next;
      end;

      DMESTOQUE.Alx3.First;

      DMESTOQUE.Alx5.Close;
      DMESTOQUE.Alx5.SQL.Clear;
      DMESTOQUE.Alx5.SQL.Add('select docfis.baseicms, docfis.vlricms, docfis.bascalsubs, docfis.vlrtotdocnf, pedcompra.descmoe,');
      DMESTOQUE.Alx5.SQL.Add('docfis.vlricmsubs, docfis.vlrfrete, docfis.vlrseg, docfis.vlroutrasdesp');
      DMESTOQUE.Alx5.SQL.Add('from docfis');
      DMESTOQUE.Alx5.SQL.Add('left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
      DMESTOQUE.Alx5.SQL.Add('where docfis.cod_pedido= :cod');
      DMESTOQUE.Alx5.ParamByName('cod').AsInteger:=XCODPED;
      DMESTOQUE.Alx5.Open;

      nfe.Total := TTotalICMS.Create;

      nfe.Total.VlrBCICMS := DMESTOQUE.Alx5.fieldByName('BASEICMS').AsCurrency; //base de calculo de icms

      nfe.Total.VlrICMS := DMESTOQUE.Alx5.fieldByName('VLRICMS').AsCurrency; //valor do icms

      nfe.Total.VlrBCST := DMESTOQUE.Alx5.fieldByName('BASCALSUBS').AsCurrency; //base de calculo de icms de ST

      nfe.Total.VlrtST := DMESTOQUE.Alx5.fieldByName('VLRICMSUBS').AsCurrency; //valor de calculo de icms de ST

      nfe.Total.VlrProdServ := XVALORPROD; //soma do valor total dos produtos

      nfe.Total.VlrFrete := DMESTOQUE.Alx5.fieldByName('VLRFRETE').AsCurrency; //valor de frete direto do pedido de venda

      nfe.Total.VlrSeguro := DMESTOQUE.Alx5.fieldByName('VLRSEG').AsCurrency; //valor do seguro

      nfe.Total.VlrDesconto := DMESTOQUE.Alx5.fieldByName('DESCMOE').AsCurrency; //valor do desconto direto do pedido de venda

      nfe.Total.VlrII := 0; //dados do imposto de importação, zero

      nfe.Total.VlrPIS := 0; //não tributado

      nfe.Total.VlrCOFINS := 0; // não tributado

      nfe.Total.VlrDespesa := DMESTOQUE.Alx5.fieldByName('VLROUTRASDESP').AsCurrency; //outras despesas

      nfe.Total.VlrTotal := DMESTOQUE.Alx5.fieldByName('VLRTOTDOCNF').AsCurrency; //valor total da nota fiscal

      //transporte
      nfe.Transporte := TTransporte.Create;

      nfe.Transporte.ModFrete := 0;

      //
      // validar a nfe criada
      //
      if not ValidarNFe(nfe, msg) then begin
           Result := False;
           Exit;
      end;
      //
      // gerar nfe
      // voltando a chave caso true
      //
      if GerarNFe(nfe, chave, xml, msg) then begin
           Result := True;
      end else begin
           Result := False;
      end;
end;    }
//
//atf - 11/02/2009: busca proximo numero fiscal se voltar zero ocorreu alguma falha
//
function TFNFe.BuscaProximoNumeroFiscal(NumInicial:Integer):Integer;
var
   xok :Boolean;
   xnum :integer;
   aux, aux1 :boolean;
begin
     //
     // VERIFICA SE NÃO HÁ NENHUM DOCFISC COM MSM NUMPED E SERIE
     //
     // atf - 11/02/2009:   verifica proximo numero disponivel
     //

     SetInfoLog('BUSCA PROXIMO NUMERO FISCAL');

   try
     xok   := TRUE;
     xnum  := NumInicial;

     SetInfoLog('NUMERO INICIAL EM EMPRESA: ' + IntToStr(NumInicial));

     DMSAIDA.TAlx.Close;
     DMSAIDA.TAlx.SQL.Clear;
     DMSAIDA.TAlx.SQL.Add('select docfissaida.cod_docfisc');
     DMSAIDA.TAlx.SQL.Add('from docfissaida');
     DMSAIDA.TAlx.SQL.Add('where docfissaida.nfeserie = :SERIE and docfissaida.numdocfis = :NUMPED and docfissaida.nfestatus in (1,3) and docfissaida.NFEAMBIENTE = :AMBIENTE');
     DMSAIDA.TAlx.ParamByName('SERIE').AsString := XSerie;
     DMSAIDA.TAlx.ParamByName('AMBIENTE').AsInteger := XTpAmb;
     DMSAIDA.TAlx.ParamByName('NUMPED').AsString := IntToStr(xnum);
     DMSAIDA.TAlx.Open;

     DMPESSOA.TAux1.Close;
     DMPESSOA.TAux1.SQL.Clear;
     DMPESSOA.TAux1.SQL.Add('select docfis.cod_docfisc');
     DMPESSOA.TAux1.SQL.Add('from docfis');
     DMPESSOA.TAux1.SQL.Add('where docfis.nfeserie = :SERIE and docfis.numdocfis = :NUMPED and docfis.nfestatus in (1,3) and docfis.NFEAMBIENTE = :AMBIENTE');
     DMPESSOA.TAux1.ParamByName('SERIE').AsString := XSerie;
     DMPESSOA.TAux1.ParamByName('AMBIENTE').AsInteger := XTpAmb;
     DMPESSOA.TAux1.ParamByName('NUMPED').AsString := IntToStr(xnum);
     DMPESSOA.TAux1.Open;

     aux  := DMSAIDA.TAlx.IsEmpty;
     aux1 := DMPESSOA.TAux1.IsEmpty;

     if (not aux) or (not aux1)
     then begin
         while (not aux) or (not aux1)
         do BEGIN

            SetInfoLog('ENCONTRADO OCORRENCIAS DO NUMERO ' + IntToStr(xnum) + ' BUSCAR POR ' + IntToStr(xnum + 1));

             xnum := xnum + 1;


             DMSAIDA.TAlx.Close;
             DMSAIDA.TAlx.SQL.Clear;
             DMSAIDA.TAlx.SQL.Add('select docfissaida.cod_docfisc');
             DMSAIDA.TAlx.SQL.Add('from docfissaida');
             DMSAIDA.TAlx.SQL.Add('where docfissaida.nfeserie = :SERIE and docfissaida.numdocfis = :NUMPED and docfissaida.nfestatus in (1,3) and docfissaida.NFEAMBIENTE = :AMBIENTE');
             DMSAIDA.TAlx.ParamByName('SERIE').AsString := XSerie;
             DMSAIDA.TAlx.ParamByName('AMBIENTE').AsInteger := XTpAmb;
             DMSAIDA.TAlx.ParamByName('NUMPED').AsString :=IntToStr(xnum);
             DMSAIDA.TAlx.Open;


             DMPESSOA.TAux1.Close;
             DMPESSOA.TAux1.SQL.Clear;
             DMPESSOA.TAux1.SQL.Add('select docfis.cod_docfisc');
             DMPESSOA.TAux1.SQL.Add('from docfis');
             DMPESSOA.TAux1.SQL.Add('where docfis.nfeserie = :SERIE and docfis.numdocfis = :NUMPED and docfis.nfestatus in (1,3) and docfis.NFEAMBIENTE = :AMBIENTE');
             DMPESSOA.TAux1.ParamByName('SERIE').AsString := XSerie;
             DMPESSOA.TAux1.ParamByName('AMBIENTE').AsInteger := XTpAmb;
             DMPESSOA.TAux1.ParamByName('NUMPED').AsString := IntToStr(xnum);
             DMPESSOA.TAux1.Open;

             aux := DMSAIDA.TAlx.IsEmpty;
             aux1 := DMPESSOA.TAux1.IsEmpty;
         END;

     end;

      if xnum > 99999999
      then begin
          Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Número Fiscal execedeu o limite permitido.'+#13+'Contate o suporte para maiores informações.', '', 1, 1, False, 'a');
          Result := -1;
          Exit;
      end;

      Result := xnum;

      SetInfoLog('NUMERO A SER USADO: ' + IntToStr(xnum));


   Except
        Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Ocorreu uma falha na tentativa de buscar número fiscal.'+#13+'Se o problema persistir contate o Suporte.', '', 1, 1, False, 'a');
        Result := -1;
   end;

end;

//atf - 11/02/2009: numero pedido / tipo
procedure TFNFe.SetPedido(tipoEmissao, CodigoPedido:Integer; XTipo:String);
begin
    if CodigoPedido > 0 then
        XCODPED := CodigoPedido
    else
        XCODPED := 0;

    if (XTipo = 'PV') or (XTipo = 'PC') then
        XTIPOPED := XTipo
    else
        XTIPOPED := '';

    XConsulta := False;

    If tipoEmissao in [1..5]
    Then Begin
       XTipoEmissao := tipoEmissao;
    End
    Else Begin
       XTipoEmissao := 0;
    End;          

    XAtivo := True;

end;


//atf - 11/02/2009: numero pedido / tipo
procedure TFNFe.SetConsulta(CodigoPedido:Integer; XTipo:String);
begin

    SetPedido(0, CodigoPedido, XTipo);

    XConsulta := True;

end;

procedure TFNFe.FormKeyPress(Sender: TObject; var Key: Char);
begin
    //if (Key = 27)
end;

procedure TFNFe.ResetaFiscal;
begin
   Try
   //busca todas as informações do cliente/fornecedor
     If XTIPOPED = 'PV'
     Then Begin

        DMSAIDA.TFiscPV.Edit;
        DMSAIDA.TFiscPV.FieldByName('NFELOTE').AsString:='';
        DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString:='';
        DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString := '';
        DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString:='';
        DMSAIDA.TFiscPV.FieldByName('NFESERIE').AsInteger := -1;
        DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger:=-1;
        DMSAIDA.TFiscPV.Post;
        DMSAIDA.IBT.CommitRetaining;

        DMSAIDA.TPedV.Edit;
         DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString:='';
         DMSAIDA.TPedV.FieldByName('FISCO').AsString:='';
         DMSAIDA.TPedV.Post;
         DMSAIDA.IBT.CommitRetaining;
     End
     Else If XTIPOPED = 'PC'
     Then Begin
           DMENTRADA.TFiscPC.Edit;
           DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString:='';
           DMENTRADA.TFiscPC.FieldByName('NFELOTE').AsString:='';
           DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString := '';
           DMENTRADA.TFiscPC.FieldByName('NFERECIBO').AsString:='';
           DMENTRADA.TFiscPC.FieldByName('NFESERIE').AsInteger := -1;
           DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger:=-1;
           DMENTRADA.TFiscPC.Post;
           DMENTRADA.IBT.CommitRetaining;

           DMENTRADA.TPedC.Edit;
           DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString:='';
           DMENTRADA.TPedC.FieldByName('FISCO').AsString:='';
           DMENTRADA.TPedC.Post;
           DMENTRADA.IBT.CommitRetaining;
     End;
    Except
       //On E: Exception Do
       //Begin
           SetInfoLog('Falha a resetar fiscal.');
       //End;
    End;
   
end;

procedure TFNFe.tConsultasTimer(Sender: TObject);
var
   msg, procNFe, retWS, recibo, ws, xmlAss: WideString;
   //chaveNFe: Array of String; // array com as chaves das nfe
   ambiente, retorno, status: Integer;
begin

// atf - 28/03/2009: esta apenas para PV

   // atf - 25/03/2009: realizar 6 tentativas no webservice
   If (XTentativas < 6 )
   Then Begin

        XTentativas := XTentativas + 1;

       StatusAguarde('Realizando consulta.. (' + IntToStr(XTentativas)  +'/6)');


          //armazena as informações
         If XTIPOPED = 'PV'
         Then Begin

               ws := XUF;
               recibo := DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString;
               ambiente := DMSAIDA.TFiscPV.FieldByName('NFEAMBIENTE').AsInteger;
               xmlAss := DMSAIDA.TFiscPV.FieldByName('NFEXML').AsString;
               status := DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger;
               XTipoEmissao := DMSAIDA.TFiscPV.FieldByName('NFETPEMIS').AsInteger;

         End
         Else If XTIPOPED = 'PC'
         Then Begin

               ws := XUF;
               recibo := DMENTRADA.TFiscPC.FieldByName('NFERECIBO').AsString;
               ambiente := DMENTRADA.TFiscPC.FieldByName('NFEAMBIENTE').AsInteger;
               xmlAss := DMENTRADA.TFiscPC.FieldByName('NFEXML').AsString;
               status := DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger;
               XTipoEmissao := DMENTRADA.TFiscPC.FieldByName('NFETPEMIS').AsInteger;

         End;

         retorno := BuscaProtocoloAutorizacao(ws, xmlAss, ambiente, recibo, procNFe, retWS, msg);

         If retorno <> 105
         Then Begin

           If retorno = 100     //autorizado
           Then Begin

             tConsultas.Enabled := False;

             If XTIPOPED = 'PV'
             Then Begin

                 DMSAIDA.TFiscPV.Edit;
                 DMSAIDA.TFiscPV.FieldByName('NFEPROTOCOLO').AsString := BuscarProtocoloXML(procNFe);
                 DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 1;
                 DMSAIDA.TFiscPV.Post;
                 DMSAIDA.IBT.CommitRetaining;

                 DMSAIDA.TFiscPV.Edit;
                 DMSAIDA.TFiscPV.FieldByName('XMLAUTORIZACAO').AsString := procNFe;
                 DMSAIDA.TFiscPV.Post;
                 DMSAIDA.IBT.CommitRetaining;

             End
             Else If XTIPOPED = 'PC'
             Then Begin

                 DMENTRADA.TFiscPC.Edit;
                 DMENTRADA.TFiscPC.FieldByName('NFEPROTOCOLO').AsString := BuscarProtocoloXML(procNFe);;
                 DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := 1;
                 DMENTRADA.TFiscPC.Post;
                 DMENTRADA.IBT.CommitRetaining;

                 DMENTRADA.TFiscPC.Edit;
                 DMENTRADA.TFiscPC.FieldByName('XMLAUTORIZACAO').AsString := procNFe;
                 DMENTRADA.TFiscPC.Post;
                 DMENTRADA.IBT.CommitRetaining;

             End;

             If not XConsulta
             Then Begin
               If not XAuxEnvio
               Then Begin
                 try
                     //incrementa um em empresa
                      DMMACS.TEmpresa.Edit;
                     IF XTipoEmissao <> 3
                     Then Begin
                       If XTIPOPED = 'PV'
                       Then Begin
                         DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger := DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsInteger + 1;
                       End
                       Else If XTIPOPED = 'PC'
                       Then Begin
                           DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger := DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsInteger + 1;
                       End;
                     End
                     Else Begin
                       If XTIPOPED = 'PV'
                       Then Begin
                         DMMACS.TEmpresa.FieldByName('PROXNUMSCAN').AsInteger := DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsInteger + 1;
                       End
                       Else If XTIPOPED = 'PC'
                       Then Begin
                         DMMACS.TEmpresa.FieldByName('PROXNUMSCAN').AsInteger := DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsInteger + 1;
                       End;
                     End;
                     DMMACS.TEmpresa.Post;
                     DMMACS.Transaction.CommitRetaining;
                  Except
                     MessageDlg( 'Não foi possível incrementar automaticamente o próximo número fiscal em empresa. Por favor faça manualamente.', mtError, [mbOk], 0);
                  End;
               End;
             End
             Else Begin
               MessageDlg( 'Por Favor, verifique o próximo número fiscal em empresa.', mtInformation, [mbOk], 0);
             End;

              StatusAguarde('Emitindo DANFE...');

                If XTIPOPED = 'PV'
                Then Begin
                   VisualizarDANFE(DMSAIDA.TFiscPV.FieldByName('COD_PEDIDO').AsInteger, XTIPOPED);
                End
                Else If XTIPOPED = 'PC'
                Then Begin
                   VisualizarDANFE(DMENTRADA.TFiscPC.FieldByName('COD_PEDIDO').AsInteger, XTIPOPED);
                End;

              PainelAguarde(False);
              Zerar;

              Close;

           End
           Else Begin
           
             tConsultas.Enabled := False;

             If XTIPOPED = 'PV'
             Then Begin

                 DMSAIDA.TFiscPV.Edit;
                 DMSAIDA.TFiscPV.FieldByName('NFEERRO').AsString := msg;
                 DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 2;
                 DMSAIDA.TFiscPV.Post;
                 DMSAIDA.IBT.CommitRetaining;

                 DMSAIDA.TPedV.Edit;
                 DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString:='';
                 DMSAIDA.TPedV.FieldByName('FISCO').AsString:='';
                 DMSAIDA.TPedV.Post;
                 DMSAIDA.IBT.CommitRetaining;

             End
             Else If XTIPOPED = 'PC'
             Then Begin

                 DMENTRADA.TFiscPC.Edit;
                 DMENTRADA.TFiscPC.FieldByName('NFEERRO').AsString := msg;
                 DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := 2;
                 DMENTRADA.TFiscPC.Post;
                 DMENTRADA.IBT.CommitRetaining;

                 DMENTRADA.TPedC.Edit;
                 DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString:='';
                 DMENTRADA.TPedC.FieldByName('FISCO').AsString:='';
                 DMENTRADA.TPedC.Post;
                 DMENTRADA.IBT.CommitRetaining;
                 
             End; 

             if retorno > 100 then
               MessageDlg( 'NF-e não autorizada, verifique o código de erro/rejeição do WS:'+#13+#13+inttostr(retorno)+' - '+msg, mtError, [mbOk], 0)
             else
               MessageDlg( 'Falha na chamada do Web Service, verifique o código de erro:'+#13+#13+inttostr(retorno)+' - '+msg, mtError, [mbOk], 0);

             PainelAguarde(False);
             Zerar;
           End;
         End
         Else Begin
               StatusAguarde('Aguardando.. Lote em Processo.');
         End;

   End
   Else Begin
         // atf - 25/03/2009:  deixar status para realizar nova consulta posteriormente
         tConsultas.Enabled := False;
         Mensagem('   A T E N Ç Ã O   ', 'Número de tentativas de consulta ao WebService excedido.'+#13+'Lote deve estar em processo, tente realizar uma nova consulta mais tarde.','',1,1,false,'I');
         MessageDlg( 'Verefique o próximo número fiscal em empresa!', mtInformation, [mbOK], 0);
         PainelAguarde(False);
         Zerar;
   End;
end;

//atf - 31/07/2009: seta como inutilização
procedure TFNFe.SetCancelamento(codigo:Integer;tipo:String);
Begin
   If ((tipo = 'PV') or (tipo = 'PC'))
   Then
       XCancelamento := True
   Else
       XCancelamento := False;

   XTIPOPED := tipo;
   XCODPED := codigo;

End;

procedure TFNFe.ConfereRetorno;
var
   msg, status, teste: String;
   chaveNFe: Array of String; // array com as chaves das nfe
   tamArray, tam,i: Integer;
   XNUMLOTE: String;
   ErroChave, ErroMotivo, OkChave, OkProtoloco:TStrings;
begin
     StatusAguarde('Conferindo retorno do WebService');

             if ConferirRetornoLote(NrRecibo, msg, ErroChave, ErroMotivo, OkChave, OkProtoloco)
             then begin

                tConsultas.Enabled := False;

                StatusAguarde('Verificando Notas enviadas');

                If (XTIPOPED = 'PV')
                Then Begin

                     // verifica notas com erro
                     if (ErroChave <> nil) and (ErroChave.Count <> 0) then begin
                           //pega o tamanho do array com as chaves
                           tam := ErroChave.Count-1;
                           // varre todo o array
                           for i:=0 to tam do begin

                                 DMSAIDA.TFiscPV.Edit;
                                 DMSAIDA.TFiscPV.FieldByName('NFEERRO').AsString:=ErroMotivo[i];
                                 DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger:=2;
                                 //DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').
                                                                //DMSAIDA.TFiscPV.FieldByName('NFELOTE').AsString:='';
                                  //DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString := '';
                                  //DMSAIDA.TFiscPV.FieldByName('NFESERIE').AsInteger := -1;
                                  //DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString:='';
                                 //DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger:=-1; 
                                 DMSAIDA.TFiscPV.Post;
                                 DMSAIDA.IBT.CommitRetaining;

                                 Mensagem('   A T E N Ç Ã O   ',ErroMotivo[i],'',1,1,false,'I');

                          end;
                    end;


                    // verifica notas ok
                     if (OkChave <> nil) and (OkChave.Count <> 0)then begin
                           //pega o tamanho do array com as chaves
                           tam := OkChave.Count-1;
                           // varre todo o array
                           for i:=0 to tam do begin
                                 // SETA Nº STATUS e PROTOCOLO
                                 DMSAIDA.TFiscPV.Edit;
                                 DMSAIDA.TFiscPV.FieldByName('NFEPROTOCOLO').AsString:=OkProtoloco[i];
                                 DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger:=1;
                                 DMSAIDA.TFiscPV.Post;
                                 DMSAIDA.IBT.CommitRetaining;

                                 try
                                    //incrmeenta um em empresa
                                         DMMACS.TEmpresa.Edit;
                                         DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger := DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsInteger + 1;
                                         DMMACS.TEmpresa.Post;
                                         DMMACS.Transaction.CommitRetaining;
                                    Except

                                    End;

                                  StatusAguarde('Emitindo DANFE...');

                                  BitBtn7.Click;
                          end;

                    end;
                End;
             end else begin
                 tConsultas.Enabled := False;
             end;

             PainelAguarde(False);
             XCODPED := 0;
             XTIPOPED := '';
end;

// atf - 28/03/2009: consultar pedido na receita
procedure TFNFe.ConsultaPedido;
var
   retWS, msg, protocolo :WideString;
   status :Integer;
Begin

     StatusAguarde('Verificando Documento Fiscal ...');

     // atf - 28/03/2009: filtra empresa
     FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');

     If XTIPOPED = 'PV'
     Then Begin
       //filtra pedido de venda para ser marcado para o lote
       FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(XCODPED), '');

       // atf - 28/03/2009: filtra documento fiscal
       If not FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', IntToStr(XCODPED), '')
       then begin
          Mensagem('   A T E N Ç Ã O   ','Documento Fiscal da Nota não encontrado!','',1,1,false,'I');
          Exit;
       end;

       // atf - 28/03/2009: pega número do recibo
       NrRecibo := DMSAIDA.TFiscPV.FieldByName('NFERECIBO').AsString;
       XTipoEmissao := DMSAIDA.TFiscPV.FieldByName('NFETPEMIS').AsInteger;
     End
     Else If XTIPOPED = 'PC'
     Then Begin

       //filtra pedido de venda para ser marcado para o lote
       FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', IntToStr(XCODPED), '');

       // atf - 28/03/2009: filtra documento fiscal
       If not FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', IntToStr(XCODPED), '')
       then begin
          Mensagem('   A T E N Ç Ã O   ','Documento Fiscal da Nota não encontrado!','',1,1,false,'I');
          Exit;
       end;

       // atf - 28/03/2009: pega número do recibo
       NrRecibo := DMENTRADA.TFiscPC.FieldByName('NFERECIBO').AsString;
       XTipoEmissao := DMENTRADA.TFiscPC.FieldByName('NFETPEMIS').AsInteger;
     End;

     // atf - 28/03/2009: verifica se número de recibo é valido
     if Length(Trim(nrRecibo)) <> 15 then begin
         Mensagem('   A T E N Ç Ã O   ','O número do recibo da Nota é inválido!','',1,1,false,'I');
         Exit;
     end;


     If XTIPOPED = 'PV'
     Then Begin
       If DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger = 4
       Then Begin
           // atf - 25/03/2009: zerar tentativas e iniciar timer
           XTentativas := 0;
           tConsultas.Enabled := True;
       End
       Else Begin
           status := ConsultarSituacaoNFe(XUF, DMSAIDA.TFiscPV.FieldByName('NFEAMBIENTE').AsInteger, DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString, retWS, protocolo, msg);
           If status = 100  // autorizado o uso da NF-e
           Then Begin
               If DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger <> 1
               Then Begin
                   Try
                     DMSAIDA.TFiscPV.Edit;
                     DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 1;
                     DMSAIDA.TFiscPV.Post;
                     DMSAIDA.IBT.CommitRetaining;
                   Except
                       ShowMessage('Não foi possível atualizar o status no banco.');
                   End;
               End;
           End
           Else If status = 101  // cancelamento de NF-e homologado
           Then Begin
               If DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger <> 2
               Then Begin
                   Try
                     DMSAIDA.TFiscPV.Edit;
                     DMSAIDA.TFiscPV.FieldByName('NFESTATUS').AsInteger := 2;
                     DMSAIDA.TFiscPV.Post;
                     DMSAIDA.IBT.CommitRetaining;
                   Except
                       ShowMessage('Não foi possível atualizar o status no banco.');
                   End;
               End;
           End;
           If status in [100, 101]
           Then Begin
               If Length(protocolo) <> 0
               Then Begin
                   IF DMSAIDA.TFiscPV.FieldByName('NFEPROTOCOLO').AsString <> protocolo
                   Then Begin
                       Try
                         DMSAIDA.TFiscPV.Edit;
                         DMSAIDA.TFiscPV.FieldByName('NFEPROTOCOLO').AsString := protocolo;
                         DMSAIDA.TFiscPV.Post;
                         DMSAIDA.IBT.CommitRetaining;
                       Except
                           ShowMessage('Não foi possível atualizar o número do protocolo no banco.');
                       End;
                   End;
               End;
           End;
       End;
     End
     Else If XTIPOPED = 'PC'
     Then Begin
       If DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger = 4
       Then Begin
           // atf - 25/03/2009: zerar tentativas e iniciar timer
           XTentativas := 0;
           tConsultas.Enabled := True;
       End
       Else Begin
           status := ConsultarSituacaoNFe(XUF, DMENTRADA.TFiscPC.FieldByName('NFEAMBIENTE').AsInteger, DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString, retWS, protocolo, msg);
           If status = 100  // autorizado o uso da NF-e
           Then Begin
               If DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger <> 1
               Then Begin
                   Try
                     DMENTRADA.TFiscPC.Edit;
                     DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := 1;
                     DMENTRADA.TFiscPC.Post;
                     DMENTRADA.IBT.CommitRetaining;
                   Except
                       ShowMessage('Não foi possível atualizar o status no banco.');
                   End;
               End;
           End
           Else If status = 101  // cancelamento de NF-e homologado
           Then Begin
               If DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger <> 2
               Then Begin
                   Try
                     DMENTRADA.TFiscPC.Edit;
                     DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger := 2;
                     DMENTRADA.TFiscPC.Post;
                     DMENTRADA.IBT.CommitRetaining;
                   Except
                       ShowMessage('Não foi possível atualizar o status no banco.');
                   End;
               End;
           End;
           If status in [100, 101]
           Then Begin
               If Length(protocolo) <> 0
               Then Begin
                   IF DMENTRADA.TFiscPC.FieldByName('NFEPROTOCOLO').AsString <> protocolo
                   Then Begin
                       Try
                         DMENTRADA.TFiscPC.Edit;
                         DMENTRADA.TFiscPC.FieldByName('NFEPROTOCOLO').AsString := protocolo;
                         DMENTRADA.TFiscPC.Post;
                         DMENTRADA.IBT.CommitRetaining;
                       Except
                           ShowMessage('Não foi possível atualizar o número do protocolo no banco.');
                       End;
                   End;
               End;
           End;
       End;
     End;

     Mensagem('   A T E N Ç Ã O   ','Mensagem retorno: ' + IntToStr(status) + ' - ' + msg,'',1,1,false,'I');
End;


procedure TFNFe.AbreLog(nome:String);
var
  Arquivo: TextFile;
begin   

     verificaDiretorio(XDir + 'LOG\');

     XLogAtivo := True;

     XLogNmArquivo := XDir + 'LOG\log_' + nome + '_' + FormatDateTime('dd.mm.yyy', Date()) + '_' + FormatDateTime('hh.nn.ss', Time()) + '.txt';


     XLogInfo := FormatDateTime('hh.nn.ss', Time()) + ' INICIO DO LOG NO DIA: ' + FormatDateTime('dd.mm.yyy', Date());

     AssignFile(Arquivo, XLogNmArquivo);
     {$I-}
     Reset(Arquivo);
     {$I+}
     if IOResult = 0 then
         Append(Arquivo)
     else
         Rewrite(Arquivo);

     try
        Writeln(Arquivo, '--------------------------------------------');
         Writeln(Arquivo, XLogInfo);
         Writeln(Arquivo, '--------------------------------------------');
         Writeln(Arquivo, '');
     finally
         CloseFile(Arquivo);
     End;
End;

procedure TFNFe.SetInfoLog(texto:String);
var
  Arquivo: TextFile;
Begin

     XLogInfo := FormatDateTime('hh.nn.ss', Time()) + ': ' +texto;

   AssignFile(Arquivo, XLogNmArquivo);
   {$I-}
   Reset(Arquivo);
   {$I+}
   if IOResult = 0 then
       Append(Arquivo)
   else
       Rewrite(Arquivo);

   try
		Writeln(Arquivo, XLogInfo);
   finally
  		CloseFile(Arquivo);
   End;

End;


procedure TFNFe.FechaLog;
var
  Arquivo: TextFile;
begin

   XLogInfo := FormatDateTime('hh.nn.ss', Time()) + ' FINAL DO LOG ';

   AssignFile(Arquivo, XLogNmArquivo);
   {$I-}
   Reset(Arquivo);
   {$I+}
   if IOResult = 0 then
       Append(Arquivo)
   else
       Rewrite(Arquivo);

   try
      Writeln(Arquivo, '');
      Writeln(Arquivo, '--------------------------------------------');
		Writeln(Arquivo, XLogInfo);
       Writeln(Arquivo, '--------------------------------------------');
   finally
  		CloseFile(Arquivo);
   End;

   XLogAtivo := False;
   
end;

procedure TFNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If XLogAtivo
     Then Begin
         FechaLog;
     End;

     FMenu.XNFe := 0;
end;


procedure TFNFe.Zerar;
Begin

   XCODPED := 0;

   XTIPOPED := '';

   tConsultas.Enabled := False;

   XTentativas := -1;

   XConsulta := False;

   XInutilizacao := False;

   XCancelamento := False;

   XTipoEmissao := 0;

   XAuxEnvio := False;

   XResultado := False;

End;

//atf - 20/07/2009: seta como inutilização
procedure TFNFe.SetInutilizacao(tipo:String);
Begin

   XInutilizacao := True;

   XTIPOPED := tipo;

   If XTIPOPED = 'SCAN'
   Then Begin
       XTipoEmissao := 3;
       verificarSerie;
   End;

End;

procedure TFNFe.btnInutilizarClick(Sender: TObject);
var
   msg, ano :String;
begin

   If Length(edCNPJ.Text) <> 14
   Then Begin
      Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Informe um CNPJ!', '', 1, 1, false, 'i');
      edCNPJ.SetFocus;
      Exit;
   End;

   If edAno.ValueInteger = 0
   Then Begin
      Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Informe um ano!', '', 1, 1, false, 'i');
      edAno.SetFocus;
      Exit;
   End;

   If edNumInicial.ValueInteger = 0
   Then Begin
      Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Informe um número inicial!', '', 1, 1, false, 'i');
      edNumInicial.SetFocus;
      Exit;
   End;

   If edNumFinal.ValueInteger = 0
   Then Begin
      Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Informe um número final!', '', 1, 1, false, 'i');
      edNumFinal.SetFocus;
      Exit;
   End;

   If Length(edJustificativa.Text) < 15
   Then Begin
      Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Informe uma justificativa!', '', 1, 1, false, 'i');
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
        Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Verifique mensagem de retorno. Falha na inutilização: ' + #13 + msg, '', 1, 1, false, 'i');
        edNumInicial.SetFocus;
     End
     Else begin
         Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Verifique mensagem de retorno. ' + #13 + msg, '', 1, 1, false, 'i');
         edNumInicial.ValueInteger := 0;
         edNumFinal.ValueInteger := 0;
         edJustificativa.Text := '';
         edNumInicial.SetFocus;
     End;
   End;
end;

procedure TFNFe.btnFecharClick(Sender: TObject);
begin
   Close;
end;

// atf - 23/07/2009: visualizar DANFE
procedure TFNFe.VisualizarDANFE(codigo:Integer; Tipo:String);
var
    //cont :Integer;
    caminho, visualizador, danfeAux : String;
begin

  // verificar se a nota foi enviada
  If Tipo = 'PV'
  Then Begin
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select docfissaida.cod_pedido from docfissaida where docfissaida.cod_pedido = :COD and (docfissaida.nfestatus = 1 or docfissaida.nfestatus = 5)');
      DMESTOQUE.Alx.ParamByName('COD').AsInteger := codigo;
      DMESTOQUE.Alx.Open;
  End
  Else Begin
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select docfis.cod_pedido from docfis where docfis.cod_pedido = :COD and (docfis.nfestatus = 1 or docfis.nfestatus = 5)');
      DMESTOQUE.Alx.ParamByName('COD').AsInteger := codigo;
      DMESTOQUE.Alx.Open;
  End;

   if DMESTOQUE.Alx.IsEmpty then begin
       Mensagem('   A T E N Ç Ã O   ','Não há nenhuma DANFE para o pedido selecionado.','',1,1,false,'I');
       Exit;
   end;

  If not FMenu.XArquivoConfiguracao
  Then Begin
     Mensagem('   A T E N Ç Ã O   ','Arquivo de configuração do Sistema não encontrado.','',1,1,false,'I');
     Exit;
  End;

  If ((FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('unidanfe') <> nil ) And (Length(FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('unidanfe').Text) > 0))
  Then Begin
       visualizador := FMenu.xmlConfig.ChildNodes['config'].ChildNodes['nfe'].ChildNodes.FindNode('unidanfe').Text;
  End
  Else Begin
       Mensagem('   A T E N Ç Ã O   ','Endereço do visualizador da DANFE não encontrado.','',1,1,false,'I');
       Exit;
  End;

  If Tipo = 'PV'
  Then Begin

     FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', IntToStr(codigo), '');
     if DMSAIDA.TFiscPV.IsEmpty then begin
         Mensagem('   A T E N Ç Ã O   ','Não há nenhum XML para o pedido selecionado.','',1,1,false,'I');
         Exit;
     end;

     caminho := XDir + 'enviNFe\' + DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString + '-enviNFe.xml';
      danfeAux := gerarDocAuxiliar(codigo, 'PV');
      If Not (fileExists(caminho))
      Then Begin
         caminho := SalvarXMLEnvio(DMSAIDA.TFiscPV.FieldByName('NFECHAVE').AsString, DMSAIDA.TFiscPV.FieldByName('NFEXML').AsString);
         If Not (fileExists(caminho))
         Then begin
             Mensagem('   A T E N Ç Ã O   ','Arquivo XML não encontrado.','',1,1,false,'I');
             Exit;
         End;
      end;

  End
  Else Begin

     FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', IntToStr(codigo), '');
     if DMENTRADA.TFiscPC.IsEmpty then begin
         Mensagem('   A T E N Ç Ã O   ','Não há nenhum XML para o pedido selecionado.','',1,1,false,'I');
         Exit;
     end;

     caminho := XDir+'enviNFe\'+DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString+'-enviNFe.xml';
      danfeAux := gerarDocAuxiliar(codigo, 'PC');
      If Not (fileExists(caminho))
      Then Begin
         caminho := SalvarXMLEnvio(DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString, DMENTRADA.TFiscPC.FieldByName('NFEXML').AsString);
         If Not (fileExists(caminho))
         Then begin
             Mensagem('   A T E N Ç Ã O   ','Arquivo XML não encontrado.','',1,1,false,'I');
             Exit;
         End;
      end;
  End;

  ShellExecute(Handle, nil, PChar(visualizador), Pchar('a=' + caminho + ' au=' + danfeAux), nil, SW_SHOWNORMAL);

End;

End.


