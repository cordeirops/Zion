// MMMMMM          MMMMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRRRRRRRRRRRRRRRRRRRR
// MMMMMMM        MMMMMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRRRRRRRRRRRRRRRRRRRR
// MMMMMMMM      MMMMMMMM                ZZZZZZZ       RRRR              RRRR
// MMMM MMMM    MMMM MMMM           ZZZZZZZZZ          RRRRRRRRRRRRRRRRRRRRRR
// MMMM  MMMM  MMMM  MMMM       ZZZZZZZZZ              RRRRRRRRRRRRRRRRRRRRRR
// MMMM   MMMMMMMM   MMMM    ZZZ                       RRRR        RRRRR
// MMMM    MMMMMMM   MMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRR         RRRRR
// MMMM    MMMMMM    MMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRR            RRRRRR
unit Alxor32;

{ *************************************************************************** }
// Unidade de funções Estáticas Auxiliares para os sistemas da Órion Software
// CRIAÇÃO      : 03/09/2002
// CRIADOR      : Alex Arlati Mazur
// DIREITOS     : Os direitos estão reservados a MZR Sistemas e Contabilidade
// LINK         : MZR Zion
// ATUALIZAQÇÃO : 11/12/2014
// VERSÃO       : 4.03.3
{ *************************************************************************** }
interface

Uses
  SysUtils, Classes, Forms, Windows, IBQuery, IBDataBase, UMenu, DB, Buttons, TLHelp32,
  AlxMessage, UDMMACS, UDMEntrada, UDMCONTA, messages, UDMCaixa, UDMESTOQUE, UAbCaixa, UCtaReceber, UCtasPagar, UPadraoContas, ULancTroco,
  UDmBanco, UDMSaida, UDMFINANC, wininet, midaslib, UDMGEOGRAFIA, UDMPESSOA, XMLDoc, XMLIntf, xmldom, ULanChEntr, ULanCHSaida, Dialogs, UDmServ, UDmFiscal, StdCtrls,
  Printers, Registry, ShellAPI, URLMON, DBClient, SynCrtSock;

type
  xTypeManual = (pagamentos, controlesaidaitens, manutencao, fluxograma, primeirospassos, suporte, cliente, usuario, estoque, correcaoestoque, fichatecnica, ordemproducao, aberturacaixa,
    lancamentocaixa, aberturabanco, lancamentobanco, contaspagar, contasreceber, pedidocompra, importacaoxml, faturacompra,
    escrituranfeentrada, nfeentrada, devolucaonfecompra, solicitacaocompra, pedidovenda, osassistencia, osmecanica, faturasaidas,
    nfesaida, nfeoutrassaidas, nfedevolucaovenda, nfse, expedicao, orcamentonormal, orcamentomecanica,
    erronfe108, erronfe110, erronfe151, erronfe204, erronfe237, erronfe246, erronfe272, erronfe327, erronfe328, erronfe518, erronfe531,
    erronfe539, erronfe590, erronfe591, erronfe750, erronfe778, erronfe796, boletoregistro);

  { ****************************
    **DECLARAÇÃO DE VARIAVEIS  **
    ***************************** }
Var
  xCod_PedidoPagamento: Integer;
  xTipoPedidoPagamento: String;
  xResultadoPagamento: Boolean;
  XPATHEXE_CEPRUA: String;
  XmlCaminhoBanco: TXMLDocument; // Variaveis para controle de nodos do xml acima
  XUrlNoticias: String; // Variavel para armazenar urlda noticia selecionada
  AlxPercento, AlxValor, AlxCalculo: Real; // CalcPercent
  AlxLUCMOE, AlxLUCPER, AlxIMPFED, AlxIMPEST, AlxCOMISS, AlxOUTROS, AlxDESCIMP, AlxDESCVALREP, AlxLUCBRUTO, ALXLUCREAL, ALXLUCBONIFIC: Real; // UTILIZADAS PARA PROCEDURE CALCLUC
  XAlxResult: Boolean; // variável de uso externo que podem ser utilizados em oputros fomulário para comunicação
  DIASATRASO: String; // Variavel utilizada para acumular o Nº de dias em atraso do cliente
  XBaseSubs: Real; // base de substituição tributaria
  XVlrICMS_Subs: Real; // VALOR ICMS Substituição
  XVlrIcms: Real; // valor de ICMS
  XTabItem: TIBQuery; // Variavel que irá armazenar o nome da tabela de itens para controlar de forma genérica
  XExiste: Boolean; // se o arquivo de relatorio da nota fiscal jah existir, a variavel recebe true para liberar a condição que busca o arquivo correto
  // ACUMULA ERROS EM UM TEXT FILE
  XErros: TextFile;
  XInterestadual: Boolean; // Define se a operação de venda é dentro do estado de origem (False) Fora do Estado (True)
  XMva, XAliqInternaEstDest, XAliqInterEstDest: Real; // mva utilizado para calculo fiscal
  // Edmar - 20/08/2014 - Variaveis de controle para calculo st
  XClienteConsumidorFinal, XClienteIE: Boolean;
  XEmiteNFCe, XNFCeComCpf, xEnvioContingencia, xOperacaoInterna: Boolean;
  xTipoEmissao: String;
  XNomeConsumidor, XCpfConsumidor: String;
  XUfOrigem, XUfDestino, XUf: String;
  XClientedoSimples, XEstadoIsentoST, XEmpresaInustria: Boolean;
  XMvaEstado, XAliqIcms, XAlqIntDestinatario, XAliqExtDestinatario, XAliqSt: Real;
  XCSTInterestadual, xCodCst, XCodCstST, xCod_Pessoa: Integer;

  XEmitIndustria, XDestIndustria: Boolean; // - 28/03/2009: variavel utilizada para vefificar se a empresa é industria e se o destinatário é industria
  XDestSuframa: Boolean; // - 14/04/2009: se destinatario possuir codigo suframa

  XVlrTotNota: Real; // variavel que recebe o valor total dos itens das notas fiscais vindo do faturar
  XRetorno: String; // DJ 10/03/2010: Variavel utilizada para controlar o resultado do procedimento ManipulaSring;

  // VARIAVEIS USADAS NAS MAIS DIVERSAS FUNÇÕES PARA VALIDAR INSCRIÇÃO ESTADUAL
  // ***************************************************
  p, d, b, i, soma, n: Integer;
  nro: array [1 .. 09] of byte;
  dig: SmallInt;
  NumMod: word;
  die: string;
  s: string;
  XCalcImpostos: Integer; // variavel auxiliar para verificar se os impostos devem ser calculados ou não
  // ***************************************************
  // Paulo 02/08/2010: Variaveis para uso do R60
  XCuponFim, XVendBruta, XTotGeral, XNserie, XNequip, XModelo: String;
  XTipoReg, XReinicio, XReducZ, XCuponIn, XDataRZ: String;
  XCancel, XDesconto, XSubTrib, XAlq1, XAlq2, XAlq3, XAlq4, XAlq5: String;
  XInsencao, XIncidencia, XAlqServ: String;
  XVlr1, XVlr2, XVlr3, XVlr4, XVlr5: String;
  Flag: Boolean;
  XAlx: Integer;
  // Variaveis utilizados para controles de pagamento

  // fim de variaveis de controle de pagamento
  { *************************
    **DECLARAÇÃO DE FUNÇÕES **
    ************************** }
  // Alex 19/05/2017: Função Utilizada para iniciar o método de pamentos
Function IniciaPagamento(xModulo: String; xCodigoModulo: Integer): Boolean;
// Alex 31/05/2017: Cancelar os Pagamentos feitos e reabrir pedido
Function IniciaCancelamento(xModulo: String; xCodigoModulo: Integer): Boolean;
// Alex 31/05/2017: Verifica se os lançamentos podem realmente ser cancelados
Function IniciaCancelamentoVerificaPossibilidade: Boolean;
// Alex 31/05/2017: Reabre o pedido
Function IniciaCancelamentoReabrePedido: Boolean;
// Alex 31/05/2017: Verifica se os lançamentos podem realmente ser cancelados
Function IniciaCancelamentoRegitraUsuario: Boolean;
// Alex 31/05/2017: Cancela possiveis pagamentos em dinheiro no caixa
Function IniciaCancelamentoDinheiro: Boolean;
// Alex 31/05/2017: Cancela possiveis troco em dinheiro no caixa
Function IniciaCancelamentoTrocoDinheiro: Boolean;
// Função utilizada para inserir registro de item de custos final de produto
Function InserirItemCustoProduto(xCodigoEstoque, xCodigoItem: Integer; xValorCusto, xQuantidadeDisponivel: Real; xData: TDateTime; xTipo: String): Boolean;
// Função utualizada para criar um novo custo de estoque quando não existir custo disponivel para a venda
Function InserirItemCustoProdutoNegativo(xCodigoEstoque, xCodigoItemPedido: Integer; xQuantidadeSaida: Real; xTipo: String): Boolean;
// Alex: 07/03/2019 - Função utilizada para desabilitar lançamento de custo para o item
Function DesativaItemCustoProduto(xCodigoItem: Integer; xTipo: String): Boolean;
// Edmar - 08/03/2019 - Função que busca os custos ativos para o estoque e dá a saída necessária
Function AplicaSaidaCustoEstoque(xCodigoEstoque: Integer; xCodigoItemPedido: Integer; xTipo: String; xQuantidadeSaida: Real): Boolean;
// Edmar - 08/03/2019 - Desfaz a atualização do estoque do custo que ocorre quando o item foi inserido
Function DesfazSaidaCustoEstoque(xCodigoItemPedido: Integer; xTipoGerador: String): Boolean;
// Alex 31/05/2017: Cancela possiveis pagamentos em banco
Function IniciaCancelamentoBanco: Boolean;
// Alex 31/05/2017: Cancela possiveis pagamentos em cheques
Function IniciaCancelamentoCheques: Boolean;
// Alex 31/05/2017: Cancela possiveis pagamentos em Duplicatas
Function IniciaCancelamentoDuplicatas: Boolean;
// Verifica se o caixa escolhido esta e retorna o codigo de abcaixa
Function VerificaCaixaAberto(xVerificaCodigoCaixa: Integer): Integer;
// Verifica se o BANCO escolhido esta e retorna o codigo de ABBANCP
Function VerificaBancoAberto(xVerificaCodigoCaixa: Integer): Integer;
// Função Utilizada para retornar um cálculo especifico em string com 4 casas após a virgula
Function RetornaCalculoPreciso4Casas(xValorPrincipal: String; xValorOperador: String; xOperador: String): String;
// Função utiliza para anexar copiar e colar um arquivo da pasta origem para a pasta destino
procedure PastaDocumentosPessoaAnexar(xArquivoOrigem: String; xPastaDestino: String);
// Função usada para recuperar o caminho da pasta de documentos da pessoa
Function PastaDocumentosPessoaCriar(xCodigoPessoaDocumentos: Integer): Boolean;
// Função usada para recuperar o caminho da pasta de documentos da pessoa
Function PastaDocumentosPessoaRecupera(xCodigoPessoaDocumentos: Integer): String;
// Função Utilizada para abrir pastas de documentos de pessoas
Function PastaDocumentosPessoaAbrir(xCaminhoDocumentos: String): Boolean;
// Função utilizada para verificar conexão do ibdatabase com o banco
Function CheckConexaoBanco(XDataBase: TIBDatabase): Boolean;
// Função generica para abrir e recuperar dados da posicao do menu de atalhos
Function AbrePosicaoMenuAtalho(Arquivo: String; Posicao: String): Integer;
// Função generica para salvar a posicao do menu de atalhos
Function SalvaPosicaoMenuAtalho(Arquivo: String; Top: Integer; Left: Integer): Boolean;
// Função para alterar a pagina principal do internet explorer
Function HPPrincipal(APage: string): Boolean;
// Função utilizada para ler o nome da impressora padrao
Function GetPadraoImp: Boolean;
// Função utilizada para retornar impressora padrão
Function RetPadraoImp: Boolean;
// Função para alterar a impressora atual
Function SetDefaultPrinter(PrinterName: string): Boolean;
// Função utilizada para editar os dados em loja referente ao bloqueio do sistema
Function EfetuaBloqueio: Boolean;
// Função utilizada para Aplicar o bloqueio do sistema
Function AplicaBloqueio: Boolean;
// Informa o Diretorio de Sistema do windows
function SystemDir: String;
// Função que retorna a versao do windows
Function GetWindowsVersion: string;
// Retorna o tipo de conexão com a Internet
Function VerificaNet: Integer;
// valida cnpj
Function ValidaCGC(const s: string): Boolean; { Função Utilizada p/ Validar CGC }
// valida cpf
Function ValidCPF(const s: string): Boolean; { Função Utilizada p/ Validar CPF }
// valida inscrição estadual
Function Valida_InscEstadual(const IE, Uf: string): Boolean;
Function AbrirForm(Tipo: TComponentClass; Formulario: TForm; TypeForm: Integer): String; { Função Utilizada p/ Abrir o Formulario }
Function CheckRelation(Chave: String; ValorChave: String; Tabelas: array of String; NumTabs: Integer): Boolean; // Verivica a existencia de referencias da tabela mestre nas outras tabelas através da chave
Function CheckRelationPes(ValorChave: String; Tabelas: array of TIBQuery; NumTabs: Integer): Boolean; // Verivica se determinada pessoa se encontra referenciada com outra tabela mestre
// Passa parametro para lançamento em caixa (cod_moeda: codigo da moeda referenciada refeData: Data de Lançamento; COD_PLNCTA: Cód Plano de Contas; HISTORICO:String; Valor:Real; TipoGera: Operação que gerou lançamento COD_GERA; código desta operação TIPO: Carteira/Dinheiro; TipoCai:E/S
Function LanCaixa(COD_MOEDA: Integer; Data: String; COD_PLNCTA: Integer; HISTORICO: String; Valor: Real; TipoGera: String; COD_GERA: Integer; Tipo: String; TipoCai: String; DOCLANC: String; XDTREFER: TDateTime; ESTRU: Char): Boolean;
// Verifica na tabela se determinado campo já existe cadastrado
function VerifExitVal(Xtabela: String; XPK: STRING; XVALORPK: STRING; Xcampo: String; XValor: String): Boolean;
// Verifica na tabela de similares se determinado similar X Produtopo já existe cadastrado
Function VerifExitSim(XValorSim: String; XValorProd: String): Boolean;
// Função utilizada para remover pontos "." de uma string
function TiraPonto(Valor: String): String;
// Função utilizada para remover zeros "0" de uma string
function TiraZerosEsquerda(Valor: String): String;

// Função utilizada para verificar se o usuário em questão pode acessar o formulario passado
function VerifAcessForm(Formu: String): Boolean;
// Função utilizada para calcular o próximo cod. interno da tabela
function UltCodInt(Xtabela: String; TIPOCONSULT: String): String;
// Sleciona determinado registro na tabela e retorna true se encontrou
Function SelectRegistro(Xtabela, Xcampo, XValor: String): Boolean;
// Função Utilizada para concatenar determinado nº de zeros a esquerda de uma string
Function ConcatZero(Variavel: String; NCasas: Integer): String;
// Função Utilizada para converter um tempo em decimal. Ex: 02:45 = 2,75. 02:30 = 2,5. 02,15 = 2,25
Function ConverteTempoDecimal(EntradaTempo: String): Real;
// Função Utilizada para concatenar determinado nº espaços em branco
Function ConcatEspaco(Variavel: String; NCasas: Integer): String;
// Função Utilizada para concatenar determinado nº espaços em branco a esquerda
Function ConcatEspacoDir(Variavel: String; NCasas: Integer): String;
// Filtra uma tquery através dos registros passados
Function FiltraTabela(Xtabela: TIBQuery; XSqlTabela, Xcampo, XValor: String; XSQLAux: String): Boolean;
// Verifica na tabela se já existe um determinado produto com o mesmo código para mesma loja
// function VerifExitProd(Xtabela: String; XVALORPK:STRING; XCAMPO: STRING; XValor:String):Boolean;
// Função Utilizada para fazer lançamentos automáticos em contas a pagar e receber
Function LancConta(Pedido: String; CODPEDIDO: Integer; CodPessoa: Integer; Cobranca: String; ValorProd: Real; ValorServ: Real; CodConta: Integer; CodContaServ: Integer; CodCota: Integer; HISTORICO: String; CodFormPag: Integer; Documento: String; GERADOR: String; Data: TDateTime; COMIS: Real;
  DATAREF: String; NumFiscal: String): Boolean;
// Função Utilizada para inserir novo registro e atualizar tabela de códigos
Function Inserir(Xtabela: TIBQuery; XSqlTabela: String; XPK: String): Integer;
// Função Utilizada para controlar a inserção de novo registro para que não haja replicação de códigos
Function InserReg(Xtabela: TIBQuery; XSqlTabela: String; XPK: String): Integer;
// Função Utilizada para controlar o código da pk da tabela sem efetuar a inserção
Function InserCodPk(Xtabela: TIBQuery; XSqlTabela: String; XPK: String): Integer;
// Funçao de lançamento em movimentação bancária
Function LanBanco(COD_CTACOR: Integer; COD_PLNCTA: Integer; HISTORICO: String; Valor: Real; TipoGera: String; COD_GERA: Integer; TIPOOP: String; COD_USUARIO: Integer; Cobranca: STRING; FECH: Char; DTVENC: STRING; NUMCH: String; DTLANC: STRING; ESTRU: String; DTREF: STRING): Boolean;
// Retorna a diferenca de dias entre duas datas
function DifDias(DataVenc: TDateTime; DataAtual: TDateTime; CARENCIA: Real): String;
// {Retorna a quantidade de dias uteis entre duas datas}
function DifDateUtil(dataini, datafin: string): Integer;
// {Retorna a diferença entre duas horas}
function DifHora(Inicio, Fim: String): String;
// Calcula juros composto para um determinado nº de parcelas
Function JurCompPar(XValor: Real; XJuros: Real; NumParc: Integer): Real;
// Função utilizada para somar de um valor em uma strin que se inicia com String e termina com numero ( Nº Cheque)
function INCSTRNUM(INC: Integer; STR: String): String;
// Funçao de lançamento de cheque a receber
Function LanCHRec(STATUS: STRING; CODBANCO: Integer; CODMOVBANCO: Integer; NUMAG: String; NUMCONTA: String; PORTADOR: String; FONE: String): Boolean;
// Função utilizada para efetuar o controle de acesso do usuário (Caso True o usuário esta liberado)
function ControlAccess(RESTRICAO: STRING; OPCAO: STRING): Boolean;
// Função utilizada para conectar a base de dados correspondente ao qrquivo gdb setado
Function ConectBd(XBD: TDataModule): Boolean;
// Função Utilizada para fazer lançamentos automáticos em controle de cheques
Function LancChEnt(COD_PLNCTA: Integer; COD_PLNCTASERV: Integer; HISTORICO: String; DTVENC: TDateTime; NUMCH: String; VlrProd: Real; vlrServ: Real; NumAgencia: String; NUMCONTA: String; COD_BANCO: Integer; PORTADOR: String; FonePort: String; TIPOGERADOR: String; COD_GERADOR: String): Boolean;
// Função Utilizada para fazer lançamentos automáticos em controle de cheques Emitidos
Function LancChSai(COD_PLNCTA: Integer; HISTORICO: String; DTVENC: TDateTime; Valor: Real; COD_CONTACOR: Integer; TIPOGERADOR: String; COD_GERADOR: String; Destinatario: string): Boolean;
// Função Utilizada para verificar se o cliente possui ctas atrazadas com numero de dias superior ao estabelecido em banco
Function VerificBloqCli(COD_CLIENTE: String): Boolean;
// FUNÇÃO PARA CALCULAR O ULTIMO DIGITO VERIFICADOR DE UM CODIGO EAN13
function CalculaDigEAN13(Cod: String): String;
// Função utilizada para definir a Impressora padrao
Function PadraoImp(imp: String): Boolean;
// Função utilizada para verificar se determinada fonte esta instalada no Windows
Function FonteExiste(Fonte: STring): Boolean;
// RETORNA DIRETORIO DO WINDOWS
function WindowsDir: String;
// Encontra o nome do usuario na rede
function UserNamerede: String;
// Descobre a nome da empresa registrada no windows
Function GetUserCompany: String;
// Pega o nome do computador através do Registry. (Não esqueça de adicionar a unit Registry ao seu projeto)
function getcomputer: string;
// Descobre o N de serie do Hd
Function SerialNum(FDrive: String): String;
// Função utilizada para remover algum caracter da string
function TiraCaracter(Valor: String; XCaracter: String): String;
// Função utilizada para remover algum caracter da string
function SubtituiCaracter(Valor: String; XCaracterremover, XCaracterInserir: String): String;
// Retorna o ultimo dia do mes
function UltDiaMes(Mes: Integer; Ano: Integer): Integer;
// Retona valor truncado
Function LexTrunca(Valor: Real; Casas: Integer): Real;
// Passa parametro para Lançamento em Crediario de cliente
Function LanCredito(xCod_Pessoa, XCOD_GERADOR: Integer; xTipoGerador, XTIPOPES, XTIPOCRED, XDOCUMENTO, xData: String; XValor: Real): Boolean;
// Função utilizada para habilitar a porta 3050 para Firebird
Function Habilita3050: Boolean;
// Função utilizada para recalcular os impostos fiscais de pedido de venda ou odem de serviço
// XTipo (PV Pedido de Venda, OS Ordem de Serviço), XCodigo (Codigo chave primaria da tabela)
Function RecalcFiscal(xTipo: String; XCodigo: Integer): Boolean;
// busca MVA(margem de valor agregado) do estado do cliente
Function BuscaMVA(Tipo: string; XCodigo: Integer): Real;
// busca dados fiscais do pedido de venda ou ordem de servico
Function BuscaDadosFiscais(Tipo: string; XCodigo: Integer): Real;
// realiza os primeiros calculos em cada item de pedido de venda ou ordem de servico
Function CalculaProdutos(XCodigo: Integer; Tipo: string): Boolean;
// faz as verificações da nota fiscal e arquivo de relatorio
Function AnaliseDados(xTipo: String; XCod_pedido: Integer): Boolean;
// faz a verificação completa da nota fiscal antes de ser impressa como dados do cliente, estado, cidade e produtos
Function Verifica_NotaFiscal(xTipo: String; XCodigo: Integer; XArqExistente: Boolean): Boolean;
// função usada para repassar ao arquivo TXT os dados invalidos
Function EscreveTXT(XTitulo, Descricao: String): Boolean;
// verifica se eh necessario rgistrar o nome do produto no arquivo TXT. Se XLibera for diferente de '1' eh pq eh necessario registrar produto
Function RegistraProdutoTXT(XLibera, XProduto, XCod_Produto: string): Boolean;
// Função utilizada para recalcular os impostos fiscais das ordens de serviço
Function RecalcFiscalOS(xTipo: String; XCodigo: Integer): Boolean;
// Função utilizada para fechar conta
Function FecConta(Tipo: String; Cod_Pedido: Integer; Valor: Real; ValorProd: Real; ValorServ: Real; Cod_ContaProd: Integer; Cod_ContaServ: Integer; Data: TDateTime): Boolean;
// tira caracter em determinada posiç~sao
Function TiraCaracterEmPosicao(Valor: String; Posicao: Integer): String;
// Paulo 16/05/2010:Função para retornar o tamanho do arquivo
function Extrair_Tamanho_Arquivo(Arquivo: string): Integer;
// Função Utilizada para cancelar itens de venda, onde a nota foi cancelada e os itens deve ser devolvidos
Function CancelaItensVenda(CodigoPedido: Integer): Boolean;
// Função Utilizada para cancelar itens de compra, onde a nota foi cancelada e os itens devem ser devolvidos
Function CancelaItensCompra(CodigoPedido: Integer): Boolean;
// Paulo 18/11/2010: Função Utilizada para cancelar itens da ordem, onde a nota foi cancelada e os itens deve ser devolvidos
Function CancelaItensOrdem(CodigoPedido: Integer): Boolean;
// Função utilizada para acessar ou configurar caminho de acesso ao banco pelo xml de acesso
Function RecuperaCaminhoBancoXml: String;
// Função utilizada para inicializar a carta de correção eletronica
Function IniciaCCe(CodigoPedido: Integer; Tipo: String): Boolean;
// Paulo 03/04/2012: Reconecta a Base de Dados
procedure ConexaoBaseDados;
// Alex - 02/01/2015: Função generica para lançar itens de entrada ou saida para correção
function LancaEstoqueCorrecaoGeneric(xOperacao: String; xQtde: Real; xCodEstoque: Integer; xHistorico: String): Boolean;
// Função utilizada para acessar ou configurar caminho de acesso ao banco de exportação pelo xml de acesso
Function RecuperaCaminhoBancoExportaXml: String;
// Paulo 15/02/2011: Tira acento das palavras
Function TiraAcentos(xTexto: string): String;
// Paulo 14/06/2011: Função Utilizada para concatenar determinado nº de zeros a direita de uma string
Function ConcatZeroDir(Variavel: String; NCasas: Integer): String;
// Incrementa numero do controle de proximo numero do contas a recerber
Function ProxDocCtaReceber: Boolean;
// Limpa query de mdo preparando para nova sql
Function MdoQueryClear: Boolean;
// Limpa query de mdo preparando para nova sql
Function MdoQConsultaClear: Boolean;
// Edmar - 26/11/2013 - busca a posição de uma determinada string
Function StrPosicao(iString, fString: String; xOcorrencia: Integer): Integer;
// Edmar - 23/07/2014 - Função usada para verificar se um processo está em execução
Function VerificaProcesso(xPath: String): Boolean;
// Edmar - 24/07/2014 - Função usada para retornar o ultimo valor válido de determinada tabela e campo
Function RetornaValorValido(Xtabela, Xcampo: String): String;
// Edmar - 10/11/2014 - função usada para atualizar preço do produto baseado em seus componentes
Function AtualizaValorCustoProduto(xCodProduto, xCodComponente: Integer): Boolean;
// Atualiza valor de custo do produto acabado, tendo como base o proprio produto acabado
Function AtualizaValorCustoProduto_BaseProdutoAcabado(xCodProduto: Integer): Boolean;
// Edmar - 18/03/2015 - função auxiliar para validar a chave de acesso da nfe
Function ValidarChaveNFe(const ChaveNFe: string): Boolean;
// Função que retorna true se o usuario logado possui filtros de data para os pedidos
function buscadatafiltrousuario: Boolean;
// Função que retorna true se o usuario que mostrar pedidos fechados
function buscafechadofiltrousuario: Boolean;
// Função que grava os dados de datas de filtro e fechamento para o usuario
function gravaconfigsusuario(xFechado: Integer; xdata01, xdata02: String): Boolean;
//
function FormataTelefone(xTelefone: String): String;
function CopySemCortarPalavra(Texto: String; Tamanho: Integer; StartIndex: Integer; out OutTamanho: Integer): String;
// Alex: 04/03/2016 - Função genérica para transformar itens de veículo de entrada de um pedido de venda em nota fiscal de entrada
Function GeraNFEntradaVeiculos(xCodPedVenda: Integer): Boolean;
// Alex: 04/03/2016 - Função genérica para ajustar o cabeçalho  do pedido de compra
Function GeraNFEntradaVeiculos_Cabecalho(xCodPedVenda: Integer; xCodPedCompra: Integer): Boolean;
// Alex: 04/03/2016 - Função genérica para inserir itens no pedido de compra
Function GeraNFEntradaVeiculos_Itens(xCodPedVenda: Integer; xCodPedCompra: Integer): Boolean;
// Alex: 04/03/2016 - Função genérica para remover os itens no pedido de compra
Function GeraNFEntradaVeiculos_RemoveItens(xCodPedVenda: Integer; xCodPedCompra: Integer): Boolean;
// Alex: 04/03/2016 - Função genérica para adicionar os itens no pedido de compra
Function GeraNFEntradaVeiculos_AdicionaItens(xCodPedVenda: Integer; xCodPedCompra: Integer): Boolean;
// Alex: 04/03/2016 - Função genérica para retornar o cst/csosn válido para venda
Function GeraNFEntradaVeiculos_Retornacst: Integer;
// Alex: 04/03/2016 - Função genérica para retornar com o valor total dos veículos de entrada
Function GeraNFEntradaVeiculos_RetornaTotalVeiculos(xCodPedVenda: Integer): Real;
//
function ExtraiNumeros(Texto: String): String;

{ ****************************
  **DECLARAÇÃO DE PROCEDURES **
  ***************************** }
Procedure TransReg(Tabela: TIBQuery; Transaction: TIBTransaction; TipoTransac: Char); { Procedure utilizada para realizar transações nos registro de uma determinada tabela (Apaga/Cancela/Grava) }
// Utilizado para efetuar calculos em percentual, é passado valores = 0,00 para parametros
// que devem retornar valores válidos, aquele que não for 0 é o parametro utilizado como ref.
// se for passado mais de um valor <> de 0, somente o último será levado em conta
// calculo é o valor ou moeda em questão e sempre deverá ser passado, tipo "D" decrementa do calculo "J" incrementa no calculo
Procedure CalcPercent(Percento: Real; Valor: Real; Calculo: Real; Tipo: Char);
// CALCULA LUCRATIVIDADE DE PRODUTO NA VENDA
Procedure CalcLuc(XVALVEND: Real; XDESC: Real; QTD: Real);
// REGISTRA OS PRINCIPAIS COMANDOS DADO PELO USUÁRIO NO SISTEMA
Procedure Registra(Modulo: String; Comando: String; DataMod: String; Texto: String; Field1: String);
// PROCEDURE P/ ENVIAR EMAIL
procedure EnviaEmail;
// Função para desconectar banco
Function DesconectBanco: Boolean;
// DJ 05/03/2010: Gera script para atualizacao de banco de dados
Procedure GeraScriptVisualizacao;
// DJ 05/03/2010: Seleciona dados de tabelas onde tem que trazer todo seu conteudo
Procedure SelecArqScriptTot(XTable: String);
// Procedure utilizada para verificar a existencia e criar o diretório conform configuração
procedure VerificaDiretorio(const dir: String);
// DJ 08/03/2010: Transfere arquivos de atualizacao via ftp
Procedure TransferenciaFtp;
// DJ 05/03/2010: Seleciona dados das tabelas comparando seus valores
Procedure ComparaTables(XTable: String; Xcampo: String; XValorParam: String);
// DJ 10/03/2010: Procedimento para atualizar banco de dados
Procedure AtualizaBanco;
// DJ 15/03/2010:Encontra valores para chaves primarias
Procedure EncontraChavePrim(XTable: String; Xcampo: String);
// DJ 06/04/2010:Procura dados para subproduto
Procedure PreparaSubproduto;
// DJ 06/04/2010: Seleciona arquivos para produto
Procedure PreparaProduto;
// DJ 06/04/2010:Encontra parametros para subprodutos
Procedure EncontraParSubpro(XCST: String; XECF: String; XProduto: String);
// DJ 06/04/2010:Encontra parametros para subprodutos
Procedure EncontraParProd(XGRUPO: String; XSUBGRUPO: String);
// Paulo 11/05/10: Verifica se existe o txt no ftp.
Procedure VerificaArquivo;
// Paulo 11/05/2010: Rele o txt em seguida adiciona novas atualizações
Procedure ReescreveArquivo;
// Paulo 16/05/2010:Substitui o arquivo atual no ftp por um txt em branco
Procedure ZeraArquivo;
// Paulo 19/05/2010: Verifica se o arquivo está vazio
Procedure VerificaArquivoVazio;
// Paulo 30/07/2010: Retorna os dados da impressora ECF
Procedure Retorna_Dados_Ecf;
// Paulo 02/08/2010: Salva os dados recolhidos na tabela R60
Procedure Insere_R60_Banco;
// Paulo 11/08/2010: Para atualizar a tabela R60 caso o usuario esteja consultando pelo CadReduçãoZ
Procedure Atualiza_R60_Banco;
// Edmar - 20/08/2014 - função que inicializa variaveis para calculo da st (dados estado)
Function InicializaVarUF(XCod_pedido: Integer; Xtabela: String): Boolean;
// Edmar - 20/08/2014 - Função que verifica o tipo de cliente para calculo da st
Function VerificaTipoCliente(xCod: Integer): Boolean;
// Edmar - 20/08/2014 - função que atualiza o cst ou csosn
Function AtualizaCstCsosn(XCod_pedido: Integer; Xtabela: String): Boolean;
// Edmar - 20/08/2014 - calculo os valores de st
Function CalculoIcmsSubstituicaoIndustriasSimples(xTab: TIBQuery; Xtabela: String): Boolean;
{ Procedure Utilizada p/ Abrir o help on line }
Procedure AbrirHelp(xHelp: xTypeManual);
procedure WinInet_HttpGet(const Url: string; Stream: TStream);
procedure GetQrCode(Width, Height: word; const Data: String; StreamImage: TMemoryStream);
Function ValidarEmail(EMailIn: string): Boolean;
function RecuperaAliqInterestadual(xOrigem, xDestino: String): Real;
function RecuperaAliqInternaIcms(xOrigem: String): Real;
function RecuperaAliqInterestadualUF(XUf: String): Real;
// Relaiza cálculos de lucrativade do produto baseado na compra e venda
Procedure CalculoLucrativadeProduto(xCodEstoque: Integer);

// Cassiano Baltazar - 09/01/1990: Função para retornar as informações do CNPJ
function Get(AUrl, AHeader: SockString): string;
function GetCNPJInfo(const ACNPJ: string): TClientDataSet;

function FilterJustAlphaNum(const AValue: String): String;
function GetPlacaInfo(const APlaca: string): TClientDataSet;

implementation

uses
  SynCommons, IdMessage, UPrecoServ, Math, UFechaConta, UDMExporta, UnitDeclaracoes,
  Alxorprn, UCadReducaoZ, UMDO, UCartaCorrecaoEletronica, UDMFAST, PngImage, HTTPApp,
  Variants, TypInfo, StrUtils, UPagamento;

type
  TQrImage_ErrCorrLevel = (L, M, Q, H);

const
  UrlGoogleQrCode = 'http://image-charts.com/chart?chs=%dx%d&cht=qr&chld=%s&chl=%s';
  QrImgCorrStr: array [TQrImage_ErrCorrLevel] of string = ('L', 'M', 'Q', 'H');

  { *************************
    **DECLARAÇÃO DE FUNÇÕES **
    ************************** }
  // Alex 19/05/2017: Função Utilizada para iniciar o método de pamentos
Function IniciaPagamento(xModulo: String; xCodigoModulo: Integer): Boolean;
Begin
  Try
    xResultadoPagamento := False;
    xCod_PedidoPagamento := xCodigoModulo;
    xTipoPedidoPagamento := xModulo;
    xControleFechaTela := False;

    // Controla as possibilidades de abrir pagamentos
    MDO.Transac.CommitRetaining;
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    If xTipoPedidoPagamento = 'PEDVENDA'
    Then
    Begin
      MDO.Query.SQL.Add(' select vwpedv.cod_pedvenda, pedvenda.EDIT as USO, vwpedv.cod_cliente as CodigoCliente, vwpedv.nomecli as cliente, vwpedv.cod_vendedor as CodigoVendedor, vwpedv.numped as NumeroDocumento,  ');
      MDO.Query.SQL.Add(' vwpedv.cod_formpag as CodigoFormaPagamento, vwpedv.situacao as SITUACAO, vwpedv.cod_pedvenda as CODIGO, vwpedv.numped as NUMERO, vwpedv.valor AS TOTAL from vwpedv ');
      MDO.Query.SQL.Add(' left join pedvenda on vwpedv.cod_pedvenda = pedvenda.cod_pedvenda where vwpedv.cod_pedvenda = :codigo  ');
      MDO.Query.ParamByName('CODIGO').AsInteger := xCod_PedidoPagamento;
      xTipoGerador := 'PEDVENDA';
    End;
    If xTipoPedidoPagamento = 'ORDEM'
    Then
    Begin
      MDO.Query.SQL.Add('   select vwordem.cod_ordem, ordem.Edit as USO,  vwordem.cod_cliente as CodigoCliente, vwordem.cliente as cliente, vwordem.cod_vendedor as CodigoVendedor, vwordem.numero as NumeroDocumento, ');
      MDO.Query.SQL.Add('    vwordem.formapag as CodigoFormaPagamento, vwordem.status as SITUACAO, vwordem.cod_ordem as CODIGO, vwordem.numero as NUMERO, vwordem.total  AS TOTAL, ordem.totprod as TOTALPRODUTO, ordem.totserv as TOTALSERVICO ');
      MDO.Query.SQL.Add('    from vwordem ');
      MDO.Query.SQL.Add('    left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
      MDO.Query.SQL.Add('    where vwordem.cod_ordem = :codigo ');
      MDO.Query.ParamByName('CODIGO').AsInteger := xCod_PedidoPagamento;
      xTipoGerador := 'ORDEM';
    End;
    MDO.Query.SQL.Text;
    MDO.Query.Open;
    If MDO.Query.FieldByName('SITUACAO').AsString <> 'ABERTO'
    Then
    Begin
      MessageDlg('Somente pedidos ABERTOS, podem receber pagamentos.', mtWarning, [mbOK], 0);
      xControleFechaTela := True;
    End;
    If MDO.Query.FieldByName('USO').AsString = '1'
    Then
    Begin
      MessageDlg('O pedido selecionado para pagamento, se encontra em uso por outro terminal.' + #13 + 'Use Ctrl+D para desbloquear.', mtWarning, [mbOK], 0);
      xControleFechaTela := True;
    End;

    If xControleFechaTela = False Then
      Fpagamento.Showmodal;
  Except

  End;
End;

// Verifica se o caixa escolhido esta e retorna o codigo de abcaixa
Function VerificaCaixaAberto(xVerificaCodigoCaixa: Integer): Integer;
Begin
  Try
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('SELECT * FROM ABCAIXA WHERE (COD_CAIXA=:CODCAIXA) AND (FECHADO=' + #39 + 'N' + #39 + ')');
    DMCAIXA.TAlx.ParamByName('CODCAIXA').AsInteger := xVerificaCodigoCaixa;
    DMCAIXA.TAlx.Open;
    If NOT DMCAIXA.TAlx.IsEmpty
    Then
    Begin
      Result := DMCAIXA.TAlx.FieldByName('COD_ABCAIXA').AsInteger;
    End
    Else
    Begin
      Result := -1
    End;
  Except
    Result := -1
  End;
End;

// Verifica se o BANCO escolhido esta e retorna o codigo de ABBANCP
Function VerificaBancoAberto(xVerificaCodigoCaixa: Integer): Integer;
Begin
  Try
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add(' SELECT * FROM abbanco WHERE (abbanco.cod_ctacor=:CODCAIXA) AND (abbanco.fechado=' + #39 + 'N' + #39 + ')');
    DMCAIXA.TAlx.ParamByName('CODCAIXA').AsInteger := xVerificaCodigoCaixa;
    DMCAIXA.TAlx.Open;
    If NOT DMCAIXA.TAlx.IsEmpty
    Then
    Begin
      Result := DMCAIXA.TAlx.FieldByName('cod_ctacor').AsInteger;
    End
    Else
    Begin
      Result := -1
    End;
  Except
    Result := -1
  End;
End;

// Alex 31/05/2017: Cancela possiveis pagamentos em Duplicatas
Function IniciaCancelamentoDuplicatas: Boolean;
Var
  xCodigoTmp: Integer;
Begin
  Try
    Result := True;
    // Verifica se temos parcelas baixadas
    MDO.QView.Close;
    MDO.QView.SQL.Clear;
    MDO.QView.SQL.Add(' Select * FROM vwparcr ');
    MDO.QView.SQL.Add(' left join ctareceber on vwparcr.cod_ctareceber = ctareceber.cod_ctareceber ');
    MDO.QView.SQL.Add('  WHERE (ctareceber.cod_gerador=:Codigo) AND (vwparcr.fech=''S'') AND ');
    If xTipoPedidoPagamento = 'PEDVENDA' Then
      MDO.QView.SQL.Add(' (ctareceber.tipogerador=''PEDVENDA'') ')
    Else
      MDO.QView.SQL.Add(' (ctareceber.tipogerador=''ORDEM'') ');
    MDO.QView.ParamByName('Codigo').AsInteger := xCod_PedidoPagamento;
    MDO.QView.Open;
    If not MDO.QView.IsEmpty
    Then
    Begin
      MessageDlg('Foram encontradas duplicatas, cartões ou cheques já baixados que não podem ser apagadas.' + #13 + #10 + 'Verifique e faça a correção manualmente!', mtWarning, [mbOK], 0);
    End;
    // Apaga parcelas em aberto
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' Delete from parcelacr where exists (select * from ctareceber where (ctareceber.cod_ctareceber = parcelacr.cod_ctareceber) and ');
    If xTipoPedidoPagamento = 'PEDVENDA' Then
      MDO.Query.SQL.Add(' (ctareceber.tipogerador=''PEDVENDA'') ')
    Else
      MDO.Query.SQL.Add(' (ctareceber.tipogerador=''ORDEM'') ');
    MDO.Query.SQL.Add(' 		and (ctareceber.cod_gerador=:Codigo)) and (parcelacr.fech=''N'') ');
    MDO.Query.ParamByName('Codigo').AsInteger := xCod_PedidoPagamento;
    MDO.Query.ExecSQL;
  Except
    Result := False
  End;
End;

// Alex 31/05/2017: Cancela possiveis pagamentos em dinheiro no caixa
Function IniciaCancelamentoDinheiro: Boolean;
Var
  xTmpCodigoAbCaixa: Integer;
Begin
  Try
    Result := True;
    MDO.QView.Close;
    MDO.QView.SQL.Clear;
    MDO.QView.SQL.Add(' Select * from lancaixa ');
    MDO.QView.SQL.Add(' Left join abcaixa on lancaixa.cod_abcaixa = abcaixa.cod_abcaixa ');
    MDO.QView.SQL.Add(' where (lancaixa.cod_gerador = :CodigoPedido) and (lancaixa.tipcai=''E'') ');
    If xTipoPedidoPagamento = 'PEDVENDA' Then
      MDO.QView.SQL.Add(' and (lancaixa.tipogerador = ''PEDVENDA'')')
    else
      MDO.QView.SQL.Add(' and (lancaixa.tipogerador = ''ORDEM'')');
    MDO.QView.ParamByName('CodigoPedido').AsInteger := xCod_PedidoPagamento;
    MDO.QView.Open;

    If not(MDO.QView.IsEmpty)
    Then
    Begin
      xTmpCodigoAbCaixa := VerificaCaixaAberto(MDO.QView.FieldByName('cod_caixa').AsInteger);
      if xTmpCodigoAbCaixa = -1
      Then
      Begin
        MessageDlg('Ocorreram pagamentos em caixa que não podem ser estornados.', mtWarning, [mbOK], 0);
      End
      Else
      Begin
        // LANÇA EM CAIXA
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add(' insert into lancaixa (DTLANC, DTREFER, COD_PLNCTAFIL, ESTRU, HISTORICO, VALOR, SALDOANT, TIPOGERADOR, COD_GERADOR, ');
        MDO.Query.SQL.Add('                       TIPO, TIPCAI, COD_ABCAIXA, COD_USUARIO, DOC) ');
        MDO.Query.SQL.Add('        values (:DTLANC, :DTREFER, :COD_PLNCTAFIL, :ESTRU, :HISTORICO, :VALOR, :SALDOANT, :TIPOGERADOR, :COD_GERADOR, ');
        MDO.Query.SQL.Add('                       :TIPO, :TIPCAI, :COD_ABCAIXA, :COD_USUARIO, :DOC) ');
        MDO.Query.ParamByName('DTLANC').AsString := DateToStr(Date());
        MDO.Query.ParamByName('DTREFER').AsDateTime := MDO.QView.FieldByName('DTREFER').AsDateTime;
        MDO.Query.ParamByName('COD_PLNCTAFIL').AsInteger := MDO.QView.FieldByName('COD_PLNCTAFIL').AsInteger;
        MDO.Query.ParamByName('ESTRU').AsString := '1';
        MDO.Query.ParamByName('HISTORICO').AsString := 'Cancelamento Pgto ' + MDO.QView.FieldByName('HISTORICO').AsString;
        MDO.Query.ParamByName('VALOR').AsCurrency := MDO.QView.FieldByName('VALOR').AsCurrency;
        MDO.Query.ParamByName('SALDOANT').AsCurrency := 0;
        MDO.Query.ParamByName('TIPOGERADOR').AsString := MDO.QView.FieldByName('TIPOGERADOR').AsString;
        MDO.Query.ParamByName('COD_GERADOR').Value := MDO.QView.FieldByName('COD_GERADOR').Value;
        MDO.Query.ParamByName('TIPO').AsString := 'Carteira';
        MDO.Query.ParamByName('TIPCAI').AsString := 'S';
        MDO.Query.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
        MDO.Query.ParamByName('DOC').AsString := MDO.QView.FieldByName('DOC').AsString;
        MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := xTmpCodigoAbCaixa;
        MDO.Query.ExecSQL;
      End;
    End;

  Except
    Result := False;
  End;
End;

// Alex: 27/02/2019 - Função utilizada para inserir registro de item de custos final de produto
Function InserirItemCustoProduto(xCodigoEstoque, xCodigoItem: Integer; xValorCusto, xQuantidadeDisponivel: Real; xData: TDateTime; xTipo: String): Boolean;
var
  xEstoqueRestante: Real;
Begin
  Try
    Result := True;
    // Antes de criar o registro tradicional de CUSTOESTOQUEEMPRESA, verifica se existe algum registro
    // negativo (ordenando pelos mais antigos) ativo.
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add(' SELECT * FROM CUSTOESTOQUEEMPRESA ');
    DMESTOQUE.Alx.SQL.Add(' WHERE (CUSTOESTOQUEEMPRESA.COD_ESTOQUE = :COD_ESTOQUE) AND (CUSTOESTOQUEEMPRESA.ATIVO = 1) ');
    DMESTOQUE.Alx.SQL.Add(' AND (CUSTOESTOQUEEMPRESA.QUANTIDADEDISPONIVELVENDA < 0) ');
    DMESTOQUE.Alx.SQL.Add(' ORDER BY CUSTOESTOQUEEMPRESA.DATA ASC ');
    DMESTOQUE.Alx.ParamByName('COD_ESTOQUE').AsInteger := xCodigoEstoque;
    DMESTOQUE.Alx.Open;
    DMESTOQUE.Alx.First;

    if not DMESTOQUE.Alx.IsEmpty then
    begin
      xEstoqueRestante := xQuantidadeDisponivel;
      // Existindo, abatemos a quantidade comprada no estoque do custo e atualizamos valor de custo
      while not DMESTOQUE.Alx.Eof do
      begin
        if xEstoqueRestante > 0 then
        begin
          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add(' UPDATE CUSTOESTOQUEEMPRESA SET ');
          MDO.Query.SQL.Add(' QUANTIDADEDISPONIVELVENDA = QUANTIDADEDISPONIVELVENDA + :QTDE, ');
          MDO.Query.SQL.Add(' VALORUNITARIOCUSTO = :VALOR_CUSTO ');
          MDO.Query.SQL.Add(' WHERE COD_CUSTOESTOQUEEMPRESA = :COD_CUSTOESTOQUE ');
          MDO.Query.ParamByName('QTDE').AsCurrency := xEstoqueRestante;
          MDO.Query.ParamByName('VALOR_CUSTO').AsCurrency := xValorCusto;
          MDO.Query.ParamByName('COD_CUSTOESTOQUE').AsInteger := DMESTOQUE.Alx.FieldByName('COD_CUSTOESTOQUEEMPRESA').AsInteger;
          MDO.Query.ExecSQL;

          // Salvamos o registro atualizado em custoitempedido para quando precisarmos excluir o item, a quantidade e o custo serão retornados
          DMESTOQUE.Alx5.Close;
          DMESTOQUE.Alx5.SQL.Clear;
          DMESTOQUE.Alx5.SQL.Add(' INSERT INTO CUSTOITEMPEDIDO (COD_CUSTOESTOQUEEMPRESA, COD_GERADOR, TIPOGERADOR, QUANTIDADE, VALORCUSTOANTERIOR) ');
          DMESTOQUE.Alx5.SQL.Add(' VALUES (:COD_CUSTO, :COD_ITEM, :TIPO, :QTDE, :VALORCUSTO) ');
          DMESTOQUE.Alx5.ParamByName('COD_CUSTO').AsFloat := DMESTOQUE.Alx.FieldByName('COD_CUSTOESTOQUEEMPRESA').AsInteger;
          DMESTOQUE.Alx5.ParamByName('COD_ITEM').AsFloat := xCodigoItem;
          DMESTOQUE.Alx5.ParamByName('TIPO').AsString := xTipo;
          DMESTOQUE.Alx5.ParamByName('QTDE').AsFloat := xEstoqueRestante;
          DMESTOQUE.Alx5.ParamByName('VALORCUSTO').AsCurrency := DMESTOQUE.Alx.FieldByName('VALORUNITARIOCUSTO').AsCurrency;
          DMESTOQUE.Alx5.ExecSQL;

          xEstoqueRestante := 0;
        end;

        DMESTOQUE.Alx.Next;
      end;
    end
    else
    begin
      // Não existindo, segue o processo normal.
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' insert into CUSTOESTOQUEEMPRESA ');
      MDO.Query.SQL.Add('   (COD_ESTOQUE, COD_ITEM, VALORUNITARIOCUSTO, ');
      MDO.Query.SQL.Add('    QUANTIDADEDISPONIVELVENDA, DATA, ATIVO, TIPOGERADOR) ');
      MDO.Query.SQL.Add(' values ');
      MDO.Query.SQL.Add('   (:COD_ESTOQUE, :COD_ITEM, :VALORUNITARIOCUSTO, ');
      MDO.Query.SQL.Add('    :QUANTIDADEDISPONIVELVENDA, :DATA, :ATIVO, :TIPOGERADOR) ');
      MDO.Query.ParamByName('COD_ESTOQUE').Value := xCodigoEstoque;
      MDO.Query.ParamByName('COD_ITEM').Value := xCodigoItem;
      MDO.Query.ParamByName('VALORUNITARIOCUSTO').Value := xValorCusto;
      MDO.Query.ParamByName('QUANTIDADEDISPONIVELVENDA').Value := xQuantidadeDisponivel;
      MDO.Query.ParamByName('DATA').AsDate := xData;
      MDO.Query.ParamByName('ATIVO').AsInteger := 1;
      MDO.Query.ParamByName('TIPOGERADOR').AsString := xTipo;
      MDO.Query.ExecSQL;

      // Apenas quando for compra, vamos atualizar o custo
      // do PRODUTO com o valor recém salvo
      if (xTipo = 'PEDCOMPRA') then
      begin
        DMESTOQUE.Alx5.Close;
        DMESTOQUE.Alx5.SQL.Clear;
        DMESTOQUE.Alx5.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.VALCUSTONFE = :VALOR_CUSTO WHERE ESTOQUE.COD_ESTOQUE = :COD_ESTOQUE ');
        DMESTOQUE.Alx5.ParamByName('VALOR_CUSTO').AsCurrency := xValorCusto;
        DMESTOQUE.Alx5.ParamByName('COD_ESTOQUE').AsInteger := xCodigoEstoque;
        DMESTOQUE.Alx5.ExecSQL;
      end;
    end;
  Except
    MessageDlg('Erro ao lançar custos do item comprado.' + #13 + #10 + 'Verifique o histórico do item e efetue a correção dos valores manualmente', mtWarning, [mbOK], 0);
    Result := False;
  End;
End;

Function InserirItemCustoProdutoNegativo(xCodigoEstoque, xCodigoItemPedido: Integer; xQuantidadeSaida: Real; xTipo: String): Boolean;
begin
  {
    3. Não existindo (ou seja, estoque =< 0), cria-se um novo registro em CUSTOESTOQUEEMPRESA armazenando a data
    atual, a quantidade vendida * (-1) e o valor do custo salvo no PRODUTO;
  }
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add(' SELECT ESTOQUE.VALCUSTONFE FROM ESTOQUE WHERE ESTOQUE.COD_ESTOQUE = :COD_ESTOQUE ');
  MDO.QConsulta.ParamByName('COD_ESTOQUE').AsInteger := xCodigoEstoque;
  MDO.QConsulta.Open;

  InserirItemCustoProduto(xCodigoEstoque, xCodigoItemPedido, MDO.QConsulta.FieldByName('VALCUSTONFE').AsCurrency,
    xQuantidadeSaida * (-1), Date(), xTipo);

  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add(' SELECT GEN_ID(GEN_CUSTOESTOQUEEMPRESA_ID, 0) AS CODIGO FROM RDB$DATABASE ');
  MDO.QConsulta.Open;

  { 3.1. Usa esse registro recém criado para referencia do item vendido (CUSTOITEMPEDIDO) }
  MDO.QAlx1.Close;
  MDO.QAlx1.SQL.Clear;
  MDO.QAlx1.SQL.Add(' INSERT INTO CUSTOITEMPEDIDO (COD_CUSTOESTOQUEEMPRESA, COD_GERADOR, TIPOGERADOR, QUANTIDADE) ');
  MDO.QAlx1.SQL.Add(' VALUES (:COD_CUSTO, :COD_ITEM, :TIPO, :QTDE) ');
  MDO.QAlx1.ParamByName('COD_CUSTO').AsFloat := MDO.QConsulta.FieldByName('CODIGO').AsInteger;
  MDO.QAlx1.ParamByName('COD_ITEM').AsFloat := xCodigoItemPedido;
  MDO.QAlx1.ParamByName('TIPO').AsString := xTipo;
  MDO.QAlx1.ParamByName('QTDE').AsFloat := xQuantidadeSaida;
  MDO.QAlx1.ExecSQL;
end;

// Edmar - 08/03/2019 - Função que busca os custos ativos para o estoque e dá a saída necessária.
// Quando o estoque não for suficiente, busca do proximo (nunca deixar negativo)
Function AplicaSaidaCustoEstoque(xCodigoEstoque: Integer; xCodigoItemPedido: Integer; xTipo: String; xQuantidadeSaida: Real): Boolean;
var
  xEstoqueRestante, xQuantidadeAtualizada, xQuantidadeUtilizada, xValorTotalCusto: Real;
  xI: Integer;
Begin
  try
    Result := True;
    xValorTotalCusto := 0;
    xI := 0;
    // Busca os custos mais antigos e ativos
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' SELECT * FROM CUSTOESTOQUEEMPRESA ');
    MDO.QConsulta.SQL.Add(' INNER JOIN VWSIMILAR ON VWSIMILAR.COD_ESTOQUE = CUSTOESTOQUEEMPRESA.COD_ESTOQUE ');
    MDO.QConsulta.SQL.Add(' WHERE (CUSTOESTOQUEEMPRESA.ATIVO = ''1'') AND (CUSTOESTOQUEEMPRESA.QUANTIDADEDISPONIVELVENDA > 0) ');
    MDO.QConsulta.SQL.Add(' AND (CUSTOESTOQUEEMPRESA.COD_ESTOQUE = :COD_ESTOQUE) ');
    MDO.QConsulta.SQL.Add(' ORDER BY CUSTOESTOQUEEMPRESA.DATA ');
    MDO.QConsulta.ParamByName('COD_ESTOQUE').AsInteger := xCodigoEstoque;
    MDO.QConsulta.Open;
    MDO.QConsulta.First;

    try
      if MDO.QConsulta.IsEmpty then
      begin
        {
          3. Não existindo (ou seja, estoque =< 0), cria-se um novo registro em CUSTOESTOQUEEMPRESA armazenando a data
          atual, a quantidade vendida * (-1) e o valor do custo salvo no PRODUTO;
        }
        InserirItemCustoProdutoNegativo(xCodigoEstoque, xCodigoItemPedido, xQuantidadeSaida, xTipo);
      end
      else
      begin
        xEstoqueRestante := xQuantidadeSaida;
        while not MDO.QConsulta.Eof do
        begin
          if (xEstoqueRestante > 0) then
          begin
            if (MDO.QConsulta.FieldByName('QUANTIDADEDISPONIVELVENDA').AsFloat < xEstoqueRestante) then
            begin
              xEstoqueRestante := xEstoqueRestante - MDO.QConsulta.FieldByName('QUANTIDADEDISPONIVELVENDA').AsFloat;
              xQuantidadeUtilizada := MDO.QConsulta.FieldByName('QUANTIDADEDISPONIVELVENDA').AsFloat;
              xQuantidadeAtualizada := 0;
            end
            else
            begin
              xQuantidadeUtilizada := xEstoqueRestante;
              xQuantidadeAtualizada := MDO.QConsulta.FieldByName('QUANTIDADEDISPONIVELVENDA').AsFloat - xEstoqueRestante;
              xEstoqueRestante := 0;
            end;

            xValorTotalCusto := xValorTotalCusto + MDO.QConsulta.FieldByName('VALORUNITARIOCUSTO').AsCurrency;
            xI := xI + 1;

            // atualiza a quantidade disponivel de venda
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add(' UPDATE CUSTOESTOQUEEMPRESA SET QUANTIDADEDISPONIVELVENDA = :QTDE WHERE COD_CUSTOESTOQUEEMPRESA = :CODIGO ');
            MDO.Query.ParamByName('QTDE').AsFloat := xQuantidadeAtualizada;
            MDO.Query.ParamByName('CODIGO').AsInteger := MDO.QConsulta.FieldByName('COD_CUSTOESTOQUEEMPRESA').AsInteger;
            MDO.Query.ExecSQL;

            if xCodigoItemPedido > 0 then
            begin
              // Cria o registro de qual custo foi utilizado pelo item
              MDO.QAlx1.Close;
              MDO.QAlx1.SQL.Clear;
              MDO.QAlx1.SQL.Add(' INSERT INTO CUSTOITEMPEDIDO (COD_CUSTOESTOQUEEMPRESA, COD_GERADOR, TIPOGERADOR, QUANTIDADE) ');
              MDO.QAlx1.SQL.Add(' VALUES (:COD_CUSTO, :COD_ITEM, :TIPO, :QTDE) ');
              MDO.QAlx1.ParamByName('COD_CUSTO').AsFloat := MDO.QConsulta.FieldByName('COD_CUSTOESTOQUEEMPRESA').AsInteger;
              MDO.QAlx1.ParamByName('COD_ITEM').AsFloat := xCodigoItemPedido;
              MDO.QAlx1.ParamByName('TIPO').AsString := xTipo;
              MDO.QAlx1.ParamByName('QTDE').AsFloat := xQuantidadeUtilizada;
              MDO.QAlx1.ExecSQL;
            end;
          end;
          MDO.QConsulta.Next;
        end;

        // se ainda restou estoque,  cria-se um novo registro em CUSTOESTOQUEEMPRESA armazenando a data
        // atual, a quantidade vendida * (-1) e o valor do custo salvo no PRODUTO;
        if (xEstoqueRestante > 0) then
        begin
          InserirItemCustoProdutoNegativo(xCodigoEstoque, xCodigoItemPedido, xEstoqueRestante, xTipo);
        end;
      end;
    except
      on E: Exception do
      begin
        // MDO.Transac.RollbackRetaining;
        MessageDlg('Não foi possivel aplicar o custo para o item ' + E.Message, mtWarning, [mbOK], 0);
        Result := False;
      end;
    end;
  except
    on E: Exception do
    begin
      // MDO.Transac.RollbackRetaining;
      MessageDlg('Não foi possivel aplicar o custo para o item ' + E.Message, mtWarning, [mbOK], 0);
      Result := False;
    end;
  end;
end;

// Retorna o estoque que foi retirado do CustoEstoqueEmpresa
Function DesfazSaidaCustoEstoque(xCodigoItemPedido: Integer; xTipoGerador: String): Boolean;
Begin
  try
    Result := True;
    // busca os custoitempedido para o item atual
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' SELECT * FROM CUSTOITEMPEDIDO ');
    MDO.QConsulta.SQL.Add(' WHERE (CUSTOITEMPEDIDO.COD_GERADOR = :CODIGO) AND (CUSTOITEMPEDIDO.TIPOGERADOR = :TIPO) ');
    MDO.QConsulta.ParamByName('CODIGO').AsInteger := xCodigoItemPedido;
    MDO.QConsulta.ParamByName('TIPO').AsString := xTipoGerador;
    MDO.QConsulta.Open;
    MDO.QConsulta.First;

    while not MDO.QConsulta.Eof do
    begin
      // atualiza retornando a quantidade disponivel de venda
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' UPDATE CUSTOESTOQUEEMPRESA SET QUANTIDADEDISPONIVELVENDA = QUANTIDADEDISPONIVELVENDA + :QTDE ');
      MDO.Query.SQL.Add(' WHERE COD_CUSTOESTOQUEEMPRESA = :CODIGO ');
      MDO.Query.ParamByName('QTDE').AsFloat := MDO.QConsulta.FieldByName('QUANTIDADE').AsFloat;
      MDO.Query.ParamByName('CODIGO').AsInteger := MDO.QConsulta.FieldByName('COD_CUSTOESTOQUEEMPRESA').AsInteger;
      MDO.Query.ExecSQL;

      MDO.QConsulta.Next;
    end;

    // remove os registros de custo do item
    MDO.QAlx1.Close;
    MDO.QAlx1.SQL.Clear;
    MDO.QAlx1.SQL.Add(' DELETE FROM CUSTOITEMPEDIDO ');
    MDO.QAlx1.SQL.Add(' WHERE (CUSTOITEMPEDIDO.COD_GERADOR = :CODIGO) AND (CUSTOITEMPEDIDO.TIPOGERADOR = :TIPO) ');
    MDO.QAlx1.ParamByName('CODIGO').AsInteger := xCodigoItemPedido;
    MDO.QAlx1.ParamByName('TIPO').AsString := xTipoGerador;
    MDO.QAlx1.ExecSQL;

    // remove os possiveis registros de CUSTOESTOQUEEMPRESA criados por ordem ou venda
    if (xTipoGerador = 'ORDEM') OR (xTipoGerador = 'PEDVENDA') then
    begin
      MDO.QAlx2.Close;
      MDO.QAlx2.SQL.Clear;
      MDO.QAlx2.SQL.Add(' DELETE FROM CUSTOESTOQUEEMPRESA ');
      MDO.QAlx2.SQL.Add(' WHERE (CUSTOESTOQUEEMPRESA.COD_ITEM = :COD_ITEM) AND (CUSTOESTOQUEEMPRESA.TIPOGERADOR = :GERADOR) ');
      MDO.QAlx2.ParamByName('COD_ITEM').AsInteger := xCodigoItemPedido;
      MDO.QAlx2.ParamByName('GERADOR').AsString := xTipoGerador;
      MDO.QAlx2.ExecSQL;
    end;
  except
    Result := False;
  end;
end;

// Alex: 07/03/2019 - Função utilizada para desabilitar lançamento de custo para o item
Function DesativaItemCustoProduto(xCodigoItem: Integer; xTipo: String): Boolean;
Begin
  Try
    Result := True;
    // recuperamos o registro de CUSTOITEMPEDIDO para retornamos
    // os valores anteriores para o CUSTOESTOQUEEMPRESA
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' SELECT * FROM CUSTOITEMPEDIDO ');
    MDO.QConsulta.SQL.Add(' WHERE (COD_GERADOR = :COD_ITEM) AND (TIPOGERADOR = :TIPO) ');
    MDO.QConsulta.ParamByName('COD_ITEM').AsInteger := xCodigoItem;
    MDO.QConsulta.ParamByName('TIPO').AsString := xTipo;
    MDO.QConsulta.Open;
    MDO.QConsulta.First;

    // quando existir algum registro, realiza o retorno
    if not MDO.QConsulta.IsEmpty then
    begin
      while not MDO.QConsulta.Eof do
      begin
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add(' UPDATE CUSTOESTOQUEEMPRESA SET QUANTIDADEDISPONIVELVENDA = QUANTIDADEDISPONIVELVENDA - :QTDE, ');
        MDO.Query.SQL.Add(' VALORUNITARIOCUSTO = :VALOR_CUSTO ');
        MDO.Query.SQL.Add(' WHERE COD_CUSTOESTOQUEEMPRESA = :COD_CUSTO ');
        MDO.Query.ParamByName('COD_CUSTO').AsInteger := MDO.QConsulta.FieldByName('COD_CUSTOESTOQUEEMPRESA').AsInteger;
        MDO.Query.ParamByName('QTDE').AsFloat := MDO.QConsulta.FieldByName('QUANTIDADE').AsFloat;
        MDO.Query.ParamByName('VALOR_CUSTO').AsCurrency := MDO.QConsulta.FieldByName('VALORCUSTOANTERIOR').AsCurrency;
        MDO.Query.ExecSQL;

        MDO.QConsulta.Next;
      end;

      // remove os registros de custo do item
      MDO.QAlx1.Close;
      MDO.QAlx1.SQL.Clear;
      MDO.QAlx1.SQL.Add(' DELETE FROM CUSTOITEMPEDIDO ');
      MDO.QAlx1.SQL.Add(' WHERE (CUSTOITEMPEDIDO.COD_GERADOR = :CODIGO) AND (CUSTOITEMPEDIDO.TIPOGERADOR = :TIPO) ');
      MDO.QAlx1.ParamByName('CODIGO').AsInteger := xCodigoItem;
      MDO.QAlx1.ParamByName('TIPO').AsString := xTipo;
      MDO.QAlx1.ExecSQL;
    end;

    // desativa algum possivel CUSTOESTOQUEEMPRESA do item
    MDO.QAlx2.Close;
    MDO.QAlx2.SQL.Clear;
    MDO.QAlx2.SQL.Add(' UPDATE CUSTOESTOQUEEMPRESA SET ATIVO = 0 ');
    MDO.QAlx2.SQL.Add(' WHERE (COD_ITEM = :CODIGOITEM) AND (TIPOGERADOR = :TIPO) ');
    MDO.QAlx2.ParamByName('CODIGOITEM').AsInteger := xCodigoItem;
    MDO.QAlx2.ParamByName('TIPO').AsString := xTipo;
    MDO.QAlx2.ExecSQL;
  Except
    MessageDlg('Erro ao desativar os custos do item comprado.' + #13 + #10 + 'Verifique o histórico do item e efetue a correção dos valores manualmente', mtWarning, [mbOK], 0);
    Result := False;
  End;
End;

// Alex 31/05/2017: Cancela possiveis troco em dinheiro no caixa
Function IniciaCancelamentoTrocoDinheiro: Boolean;
Var
  xTmpCodigoAbCaixa: Integer;
Begin
  Try
    Result := True;
    MDO.QView.Close;
    MDO.QView.SQL.Clear;
    MDO.QView.SQL.Add(' Select * from lancaixa ');
    MDO.QView.SQL.Add(' Left join abcaixa on lancaixa.cod_abcaixa = abcaixa.cod_abcaixa ');
    MDO.QView.SQL.Add(' where (lancaixa.cod_gerador = :CodigoPedido) and (lancaixa.tipcai=''S'') ');
    If xTipoPedidoPagamento = 'PEDVENDA' Then
      MDO.QView.SQL.Add(' and (lancaixa.tipogerador = ''PEDVENDA'')')
    else
      MDO.QView.SQL.Add(' and (lancaixa.tipogerador = ''ORDEM'')');
    MDO.QView.ParamByName('CodigoPedido').AsInteger := xCod_PedidoPagamento;
    MDO.QView.Open;

    If not(MDO.QView.IsEmpty)
    Then
    Begin
      xTmpCodigoAbCaixa := VerificaCaixaAberto(MDO.QView.FieldByName('cod_caixa').AsInteger);
      if xTmpCodigoAbCaixa = -1
      Then
      Begin
        MessageDlg('Ocorreram pagamentos em caixa que não podem ser estornados.', mtWarning, [mbOK], 0);
      End
      Else
      Begin
        // LANÇA EM CAIXA
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add(' insert into lancaixa (DTLANC, DTREFER, COD_PLNCTAFIL, ESTRU, HISTORICO, VALOR, SALDOANT, TIPOGERADOR, COD_GERADOR, ');
        MDO.Query.SQL.Add('                       TIPO, TIPCAI, COD_ABCAIXA, COD_USUARIO, DOC) ');
        MDO.Query.SQL.Add('        values (:DTLANC, :DTREFER, :COD_PLNCTAFIL, :ESTRU, :HISTORICO, :VALOR, :SALDOANT, :TIPOGERADOR, :COD_GERADOR, ');
        MDO.Query.SQL.Add('                       :TIPO, :TIPCAI, :COD_ABCAIXA, :COD_USUARIO, :DOC) ');
        MDO.Query.ParamByName('DTLANC').AsString := DateToStr(Date());
        MDO.Query.ParamByName('DTREFER').AsDateTime := MDO.QView.FieldByName('DTREFER').AsDateTime;
        MDO.Query.ParamByName('COD_PLNCTAFIL').AsInteger := MDO.QView.FieldByName('COD_PLNCTAFIL').AsInteger;
        MDO.Query.ParamByName('ESTRU').AsString := '1';
        MDO.Query.ParamByName('HISTORICO').AsString := 'Cancelamento Troco ' + MDO.QView.FieldByName('HISTORICO').AsString;
        MDO.Query.ParamByName('VALOR').AsCurrency := MDO.QView.FieldByName('VALOR').AsCurrency;
        MDO.Query.ParamByName('SALDOANT').AsCurrency := 0;
        MDO.Query.ParamByName('TIPOGERADOR').AsString := MDO.QView.FieldByName('TIPOGERADOR').AsString;
        MDO.Query.ParamByName('COD_GERADOR').Value := MDO.QView.FieldByName('COD_GERADOR').Value;
        MDO.Query.ParamByName('TIPO').AsString := 'Carteira';
        MDO.Query.ParamByName('TIPCAI').AsString := 'E';
        MDO.Query.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
        MDO.Query.ParamByName('DOC').AsString := MDO.QView.FieldByName('DOC').AsString;
        MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := xTmpCodigoAbCaixa;
        MDO.Query.ExecSQL;
      End;
    End;
  Except
    Result := False;
  End;
End;

// Alex 31/05/2017: Cancela possiveis pagamentos em banco
Function IniciaCancelamentoBanco: Boolean;
Var
  xTmpCodigoAbCaixa: Integer;
Begin
  Try
    Result := True;
    MDO.QView.Close;
    MDO.QView.SQL.Clear;
    MDO.QView.SQL.Add('  Select * from movbanco ');
    MDO.QView.SQL.Add('   Left join abbanco on movbanco.cod_abbanco = abbanco.cod_abbanco ');
    MDO.QView.SQL.Add('   where (movbanco.cod_gerador = :CodigoPedido) ');
    If xTipoPedidoPagamento = 'PEDVENDA' Then
      MDO.QView.SQL.Add('   and (movbanco.tipogerador = ''PEDVENDA'') ')
    Else
      MDO.QView.SQL.Add('   and (movbanco.tipogerador = ''ORDEM'') ');
    MDO.QView.ParamByName('CodigoPedido').AsInteger := xCod_PedidoPagamento;
    MDO.QView.Open;

    If not(MDO.QView.IsEmpty)
    Then
    Begin
      xTmpCodigoAbCaixa := VerificaBancoAberto(MDO.QView.FieldByName('cod_ctacor').AsInteger);
      if xTmpCodigoAbCaixa = -1
      Then
      Begin
        MessageDlg('Ocorreram pagamentos em banco que não podem ser estornados.', mtWarning, [mbOK], 0);
      End
      Else
      Begin
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add(' insert into movbanco(COD_CTACOR, HORALANC, DTLANC, DTREF, ESTRU, DTMOV, ');
        MDO.Query.SQL.Add(' COD_PLNCTA, HISTORICO, NUMCHEQUE, COD_USUARIO, VALOR, TIPOOP, ');
        MDO.Query.SQL.Add(' COBRANCA, DTVenc, Fech, TIPOGERADOR, COD_GERADOR, COD_ABBANCO) ');
        MDO.Query.SQL.Add(' values(:COD_CTACOR, :HORALANC, :DTLANC, :DTREF, :ESTRU, :DTMOV, ');
        MDO.Query.SQL.Add(' :COD_PLNCTA, :HISTORICO, :NUMCHEQUE, :COD_USUARIO, :VALOR, :TIPOOP, ');
        MDO.Query.SQL.Add(' :COBRANCA, :DTVenc, :Fech, :TIPOGERADOR, :COD_GERADOR, :COD_ABBANCO) ');
        MDO.Query.ParamByName('COD_CTACOR').AsInteger := MDO.QView.FieldByName('COD_CTACOR').AsInteger;
        MDO.Query.ParamByName('HORALANC').AsString := TimeToStr(Time()); // TimeToStr(TIME());
        MDO.Query.ParamByName('DTLANC').AsString := DateToStr(Date()); // Date();
        MDO.Query.ParamByName('DTREF').AsString := MDO.QView.FieldByName('DTREF').AsString; // '';// MDO.QView.FieldByName('DTREF').AsDateTime;
        MDO.Query.ParamByName('ESTRU').AsString := '1'; // '1';
        MDO.Query.ParamByName('DTMOV').AsString := DateToStr(Date()); // MDO.QView.FieldByName('DTMOV').AsString;
        MDO.Query.ParamByName('COD_PLNCTA').AsString := MDO.QView.FieldByName('COD_PLNCTA').AsString; // MDO.QView.FieldByName('COD_PLNCTA').AsInteger;
        MDO.Query.ParamByName('HISTORICO').AsString := MDO.QView.FieldByName('HISTORICO').AsString; // ' Estorno de Pagamento ';
        MDO.Query.ParamByName('NUMCHEQUE').AsString := MDO.QView.FieldByName('NUMCHEQUE').AsString; // '';//MDO.QView.FieldByName('NUMCHEQUE').AsString;
        MDO.Query.ParamByName('COD_USUARIO').AsString := MDO.QView.FieldByName('COD_USUARIO').AsString; // FMenu.LCODUSUARIO.Caption;
        MDO.Query.ParamByName('VALOR').AsString := MDO.QView.FieldByName('VALOR').AsString; // MDO.QView.FieldByName('VALOR').AsCurrency;
        MDO.Query.ParamByName('TIPOOP').AsString := 'SAIDA'; // 'SAIDA';
        MDO.Query.ParamByName('COBRANCA').AsString := 'T. BANCO'; // 'T. BANCO';
        MDO.Query.ParamByName('DTVenc').AsString := MDO.QView.FieldByName('DTVenc').AsString; // MDO.QView.FieldByName('DTVenc').AsString;
        MDO.Query.ParamByName('Fech').AsString := 'S'; // 'S';
        MDO.Query.ParamByName('TIPOGERADOR').AsString := 'CANCPAG'; // 'C.PAGAMENTO';
        MDO.Query.ParamByName('COD_GERADOR').AsString := MDO.QView.FieldByName('COD_GERADOR').AsString; // MDO.QView.FieldByName('COD_GERADOR').AsInteger;
        MDO.Query.ParamByName('COD_ABBANCO').AsInteger := xTmpCodigoAbCaixa; // 1;//xTmpCodigoAbCaixa;
        MDO.Query.SQL.Text;
        MDO.Query.ExecSQL;
      End;
    End;

  Except
    Result := False;
  End;
End;

// Alex 31/05/2017: Cancela possiveis pagamentos em cheques
Function IniciaCancelamentoCheques: Boolean;
Var
  xTmpCodigoMovBanco: String;
Begin
  Try
    Result := True;

    // FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
    If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (Cobranca = ' + #39 + 'Cheque' + #39 + ') And (TIPOGERADOR = ' + #39 + xTipoPedidoPagamento + #39 + ') AND (COD_GERADOR=' + IntToStr(xCod_PedidoPagamento) + ')') = True
    Then
    Begin // se foi encontrado alguma conta
      // FILTRA PARCELAS
      If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '') = True
      Then
      Begin // se foi encontrado alguma conta
        // PARA CADA PARCELA VERIFICA SE ESTA FECHADA
        DMCONTA.TParcCR.First;
        While Not DMCONTA.TParcCR.Eof Do
        Begin
          // filtra movimentação bancaria da parcela em questão
          FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + IntToStr(DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsInteger) + #39 + ') AND (TIPOGERADOR = ' + #39 + 'PCHR' + #39')');
          // filtra cheque da parcela
          FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', '', '(COD_MOVBANCO = ' + #39 + IntToStr(DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger) + #39 + ')');

          // variável utilizada para apos apagar a movimentação bancaria sejam apagados os cheques ligados as parcelas
          xTmpCodigoMovBanco := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

          // filtra os lançamentos de caixa ligados a parcela
          FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '', '(lancaixa.tipogerador=' + #39 + 'PCHR' + #39 + ')  AND (lancaixa.cod_gerador =' + #39 + IntToStr(DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsInteger) + #39')');

          If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR=' + #39 + 'PCHR' + #39 + ') AND (COD_GERADOR=' + DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString + ')') = True
          Then
          Begin
            // se o codigo de abertura do caixa atual for diferente do codigo de lançamento de caixa da ordem e este cheque foi movimentado em caixa faz o estorno
            If (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) And
              (FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'PCHR' + #39 + ')') = False)
            Then
            Begin // só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
              LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.FieldByName('PLNCTA_SAICXCORR').AsInteger, 'Estorno Pagamento em Cheque ', DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'CPGTO', DMBANCO.TChequeRec.FieldByName('cod_chequerec').AsInteger, 'Carteira', 'S', 'ESTORNO', Date(), '1');
            End
            Else
            Begin
              // se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
              If (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption) And (DMCAIXA.TLanCaixa.FieldByName('COD_GERADOR').AsString = DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString)
              Then
              Begin
                If ((DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'PCHR'))
                Then
                Begin
                  DMCAIXA.TLanCaixa.Delete;
                End;
              End;
            End;

            // Delete movimento bancário
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add(' Delete from movbanco Where (movbanco.tipogerador=''PCHR'') and (movbanco.cod_gerador=:Codigo) ');
            MDO.Query.ParamByName('Codigo').AsString := DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString;
            MDO.Query.ExecSQL;

            // Deleta cheque recebido
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add(' delete from chequerec where cod_movbanco= :CODIGO ');
            MDO.Query.ParamByName('CODIGO').AsString := xTmpCodigoMovBanco;
            MDO.Query.ExecSQL;

            // Deleta parcela da conta a receber
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add(' delete from parcelacr where parcelacr.cod_parcelacr=:Codigo ');
            MDO.Query.ParamByName('CODIGO').AsString := DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString;
            MDO.Query.ExecSQL;

            DMCONTA.TParcCR.Next;
          End;
          DMCAIXA.IBT.CommitRetaining;
          Result := True;
        End;
      End;
    End;
    MDO.Transac.CommitRetaining;
    { //Verifique cheques recebidos e movimentados
      MDO.QView.Close;
      MDO.QView.SQL.Clear;
      MDO.QView.SQL.Add('  Select * from vwchequerec ');
      MDO.QView.SQL.Add('  left join movbanco on vwchequerec.cod_movbanco = movbanco.cod_movbanco ');
      MDO.QView.SQL.Add('  where (movbanco.cod_gerador=:Codigo) ');
      If xTipoPedidoPagamento='PEDVENDA' Then
      MDO.QView.SQL.Add('   and (movbanco.tipogerador = ''PEDVENDA'') ')
      Else
      MDO.QView.SQL.Add('   and (movbanco.tipogerador = ''ORDEM'') ');
      MDO.QView.ParamByName('Codigo').AsInteger := xCod_PedidoPagamento;
      MDO.QView.Open;

      If not (MDO.QView.IsEmpty)
      Then Begin
      MessageDlg('Ocorreram pagamentos em cheque que não podem ser estornados.', mtWarning, [mbOK], 0);
      End; }
  Except
    Result := False;
  End;
End;

// Alex 31/05/2017: Verifica se os lançamentos podem realmente ser cancelados
Function IniciaCancelamentoRegitraUsuario: Boolean;
Var
  xCodigoTmp: Integer;
Begin
  Try
    Result := True;
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' Select max(registro.cod_registro) as CODIGO from registro ');
    MDO.Query.Open;
    xCodigoTmp := MDO.Query.FieldByName('CODIGO').AsInteger;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' INSERT INTO REGISTRO (COD_REGISTRO, DATA, HORA, COD_USUARIO, USUARIO, MODULO, COMANDO, DT_MODULO, TEXTO, FIELD1) ');
    MDO.Query.SQL.Add('               VALUES (:COD_REGISTRO, :DATA, :HORA, :COD_USUARIO, :USUARIO, :MODULO, :COMANDO, :DT_MODULO, :TEXTO, :FIELD1) ');
    MDO.Query.ParamByName('COD_REGISTRO').AsInteger := xCodigoTmp;
    MDO.Query.ParamByName('DATA').AsDate := Date();
    MDO.Query.ParamByName('HORA').AsTime := Time();
    MDO.Query.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
    MDO.Query.ParamByName('USUARIO').AsString := FMenu.EdUsuario.Text;
    MDO.Query.ParamByName('MODULO').AsString := xTipoPedidoPagamento;
    MDO.Query.ParamByName('COMANDO').AsString := 'CANCELAR PAGAMENTO';
    MDO.Query.ParamByName('DT_MODULO').AsString := MDO.QView.FieldByName('DATA').AsString;
    MDO.Query.ParamByName('TEXTO').AsString := 'Nº ' + MDO.QView.FieldByName('NUMERO').AsString;
    MDO.Query.ParamByName('FIELD1').AsString := 'Valor ' + MDO.QView.FieldByName('TOTAL').AsString;
    MDO.Query.ExecSQL;
  Except
    Result := False;
  End;
End;

// Alex 31/05/2017: Reabre o pedido
Function IniciaCancelamentoReabrePedido: Boolean;
Begin
  Try
    Result := True;
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    If xTipoPedidoPagamento = 'ORDEM' Then
      MDO.Query.SQL.Add(' update ordem set ordem.status=''ABERTO'' where ordem.cod_ordem = :Codigo ')
    Else
      MDO.Query.SQL.Add(' update pedvenda set pedvenda.situacao = ''ABERTO'' where pedvenda.cod_pedvenda = :Codigo ');
    MDO.Query.ParamByName('Codigo').AsInteger := xCod_PedidoPagamento;
    MDO.Query.ExecSQL;
  Except
    Result := False;
  End;
End;

// Alex 31/05/2017: Verifica se os lançamentos podem realmente ser cancelados
Function IniciaCancelamentoVerificaPossibilidade: Boolean;
Begin
  Try
    Result := True;
    // Confirmamos os commits de ordem de serviços e venda
    DmServ.IBT.CommitRetaining;
    DmSaida.IBT.CommitRetaining;
    MDO.Transac.CommitRetaining;
    // Seleciona o pedido
    MDO.QView.Close;
    MDO.QView.SQL.Clear;
    If xTipoPedidoPagamento = 'ORDEM'
    Then
    Begin
      MDO.QView.SQL.Add(' Select ordem.Edit as USO, vwordem.cod_ordem as codigo,  vwordem.status as Situacao, vwordem.numero as Numero, vwordem.total as Total, vwordem.dtfech as data from vwordem ');
      MDO.QView.SQL.Add(' left join ordem on vwordem.cod_ordem = ordem.cod_ordem Where vwordem.cod_ordem = :Codigo  ');
    End
    Else
    Begin
      MDO.QView.SQL.Add(' Select pedvenda.EDIT as USO, vwpedv.cod_pedvenda as codigo, vwpedv.numped as Numero,  vwpedv.situacao as Situacao, vwpedv.valor as Total, vwpedv.dtpedven as data from vwpedv ');
      MDO.QView.SQL.Add(' left join pedvenda on vwpedv.cod_pedvenda = pedvenda.cod_pedvenda  Where vwpedv.cod_pedvenda = :Codigo ');
    End;
    MDO.QView.ParamByName('codigo').AsInteger := xCod_PedidoPagamento;
    MDO.QView.Open;
    If not MDO.QView.IsEmpty
    Then
    Begin
      If (MDO.QView.FieldByName('Situacao').AsString = 'ABERTO')
      Then
      Begin
        MessageDlg('O Pedido selecionado já esta aberto', mtWarning, [mbOK], 0);
        Result := False;
        Exit;
      End;
    End
    Else
    Begin
      Result := False;
    End;
  Except
    Result := False;
  End;
End;

// Alex 31/05/2017: Cancelar os Pagamentos feitos e reabrir pedido
Function IniciaCancelamento(xModulo: String; xCodigoModulo: Integer): Boolean;
Begin
  Try
    xResultadoPagamento := False;
    xCod_PedidoPagamento := xCodigoModulo;
    xTipoPedidoPagamento := xModulo;

    // Verifica se o pedido pode ser cancelado o fechamento
    If IniciaCancelamentoVerificaPossibilidade = True
    Then
    Begin
      // Registra o Usuário que esta cancelando o pedido
      If IniciaCancelamentoRegitraUsuario = True Then
        xResultadoPagamento := True;
      // =>Cancela Pagamentos em Dinheiro
      If IniciaCancelamentoDinheiro = True Then
        xResultadoPagamento := True;

      // =>Cancela Duplicatas
      If IniciaCancelamentoDuplicatas = True Then
        xResultadoPagamento := True;
      // =>Cancela Cheques
      // =>Cancela Banco
      If IniciaCancelamentoBanco = True Then
        xResultadoPagamento := True;
      // =>Cancela Débito
      // =>Cancela Créditos

      // =>Cancela Troco em cheque
      If IniciaCancelamentoCheques = True Then
        xResultadoPagamento := True;

      // =>Cancela Troco em Dinheiro
      If IniciaCancelamentoTrocoDinheiro = True Then
        xResultadoPagamento := True;

      // Reabre os pedidos
      If IniciaCancelamentoReabrePedido = True Then
        xResultadoPagamento := True;

      If xResultadoPagamento = True
      Then
      Begin
        MDO.Transac.CommitRetaining;
        DmServ.IBT.CommitRetaining;
        DmSaida.IBT.CommitRetaining;
      end
      Else
      Begin
        MDO.Transac.RollbackRetaining;
      End;
    End;

  Except

  End;
End;

// Função Utilizada para abrir pastas de documentos de pessoas
Function PastaDocumentosPessoaRecupera(xCodigoPessoaDocumentos: Integer): String;
Begin
  Try
    MDO.Transac.CommitRetaining;
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('  Select pessoa.caminhodocs from pessoa where pessoa.cod_pessoa=:codigo ');
    MDO.Query.ParamByName('codigo').AsInteger := xCodigoPessoaDocumentos;
    MDO.Query.Open;
    If not MDO.Query.IsEmpty
    then
    begin
      Result := MDO.Query.FieldByName('caminhodocs').AsString;
    end
    Else
    Begin
      Result := '';
    end;
  Except
    Result := '';
  End;
End;

// Função utiliza para anexar copiar e colar um arquivo da pasta origem para a pasta destino
procedure PastaDocumentosPessoaAnexar(xArquivoOrigem: String; xPastaDestino: String);
var
  NomeArquivo: String;
begin
  If not FileExists(xArquivoOrigem)
  Then
  Begin
    MessageDlg('O arquivo a ser anexado não foi mais encontrado.', mtWarning, [mbOK], 0);
    Exit;
  End;
  If not DirectoryExists(xPastaDestino)
  Then
  Begin
    MessageDlg('A Pasta para anexar o documento não foi mais encontrada.', mtWarning, [mbOK], 0);
    Exit;
  End;
  NomeArquivo := ExtractFileName(xArquivoOrigem);
  CopyFile(PChar(xArquivoOrigem), PChar(xPastaDestino + '\' + ExtractFileName(xArquivoOrigem)), False);
end;

// Função Utilizada para criar pastas de documentos de pessoas
Function PastaDocumentosPessoaCriar(xCodigoPessoaDocumentos: Integer): Boolean;
Var
  xCaminhoCompleto: String;
Begin
  Try
    Result := True;
    // 1 - VERIFICAMOS SE A PASTA PRINCIPAL FOI CRIADA
    If DMMACS.TLoja.FieldByName('CAMINHODOCS').AsString = ''
    Then
    Begin
      MessageDlg('Configure a pasta principal dos documentos em Loja', mtWarning, [mbOK], 0);
      Result := False;
    End
    Else
    Begin
      MDO.Transac.CommitRetaining;
      // Buscamos o nome da pessoa
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' select pessoa.nome from pessoa where pessoa.cod_pessoa=:codigo ');
      MDO.Query.ParamByName('codigo').AsInteger := xCodigoPessoaDocumentos;
      MDO.Query.Open;
      If not MDO.Query.IsEmpty
      Then
      Begin
        xCaminhoCompleto := DMMACS.TLoja.FieldByName('CAMINHODOCS').AsString + '/' + MDO.Query.FieldByName('nome').AsString;

        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add(' update pessoa set pessoa.caminhodocs = :caminho where pessoa.cod_pessoa=:codigo ');
        MDO.Query.ParamByName('codigo').AsInteger := xCodigoPessoaDocumentos;
        MDO.Query.ParamByName('caminho').AsString := xCaminhoCompleto;
        MDO.Query.ExecSQL;
        MDO.Transac.CommitRetaining;

        VerificaDiretorio(xCaminhoCompleto);
      End
      Else
      Begin
        Result := False;
      End;
    End;
  Except
    Result := False;
  End;
End;

// Função Utilizada para retornar um cálculo especifico em string com 4 casas após a virgula
Function RetornaCalculoPreciso4Casas(xValorPrincipal: String; xValorOperador: String; xOperador: String): String;
Begin
  Try
    XBaseSubs := 0;
    XVlrICMS_Subs := 0;
    Try
      XBaseSubs := 0;
      XBaseSubs := StrToFloat(xValorPrincipal);
    Except
      XBaseSubs := 0;
    End;
    Try
      XVlrICMS_Subs := 0;
      XVlrICMS_Subs := StrToFloat(xValorOperador);
    Except
      XVlrICMS_Subs := 0;
    End;
    If xOperador = '-' Then
      Result := FormatFloat('0.0000', XBaseSubs - XVlrICMS_Subs);
    If xOperador = '+' Then
      Result := FormatFloat('0.0000', XBaseSubs + XVlrICMS_Subs);
  Except
    Result := '0';
  End;
End;

// Função Utilizada para abrir pastas de documentos de pessoas
Function PastaDocumentosPessoaAbrir(xCaminhoDocumentos: String): Boolean;
Begin
  Try
    if not DirectoryExists(xCaminhoDocumentos) then
      ForceDirectories(xCaminhoDocumentos);
    ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath(xCaminhoDocumentos + '\')), nil, nil, SW_SHOWMAXIMIZED);
  Except
    Result := False;
  End;
End;

// Função que grava os dados de datas de filtro e fechamento para o usuario
function gravaconfigsusuario(xFechado: Integer; xdata01, xdata02: String): Boolean;
Begin
  Try
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' update usuario set usuario.filtrapeddata01=:Data01, usuario.filtrapeddata02=:Data02, usuario.filtrapedfechado=:Fechado where usuario.codusuario=:codigo');
    MDO.Query.ParamByName('Data01').AsString := xdata01;
    MDO.Query.ParamByName('Data01').AsString := xdata02;
    MDO.Query.ParamByName('Fechado').AsInteger := xFechado;
    MDO.Query.ParamByName('codigo').AsString := FMenu.LCODUSUARIO.Caption;
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
    DMMACS.Transaction.CommitRetaining;
  Except
    Result := False;
  End;
End;

// Função que retorna true se o usuario logado possui filtros de data para os pedidos
function buscadatafiltrousuario: Boolean;
Begin
  Try
    If FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', FMenu.LCODUSUARIO.Caption, '')
    Then
    Begin
      Result := True;
      If ((DMMACS.TUsuario.FieldByName('FILTRAPEDDATA01').AsString <> '') or (DMMACS.TUsuario.FieldByName('FILTRAPEDDATA01').AsString <> '  /  /   ')) and
        ((DMMACS.TUsuario.FieldByName('FILTRAPEDDATA02').AsString <> '') or (DMMACS.TUsuario.FieldByName('FILTRAPEDDATA02').AsString <> '  /  /   ')) Then
        Result := True
      Else
        Result := False;
    End
    Else
    Begin
      Result := False;
    End;
  Except
    ;
    Result := False;
  End;
End;

// Função que retorna true se o usuario que mostrar pedidos fechados
function buscafechadofiltrousuario: Boolean;
Begin
  Try
    If FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', FMenu.LCODUSUARIO.Caption, '')
    Then
    Begin
      If (DMMACS.TUsuario.FieldByName('FILTRAPEDFECHADO').AsInteger = 0) Then
        Result := False
      Else
        Result := True;
    End
    Else
    Begin
      Result := False;
    End;
  Except
    ;
    Result := False;
  End;
End;

// Função utilizada para verificar conexão do ibdatabase com o banco
Function CheckConexaoBanco(XDataBase: TIBDatabase): Boolean;
Begin
  Result := True;

  Try
    If XDataBase.TestConnected = True Then
      Result := True
    Else
      Result := False;
  Except
    Result := False;
  End;
End;

// Paulo 03/04/2012: Reconecta a Base de Dados
procedure ConexaoBaseDados;
begin
  FMenu.ListBox.Clear;
  // Conecta Data Modules
  Application.CreateForm(TDMMacs, DMMACS);
  ConectBd(DMMACS);
  Application.CreateForm(TDMPessoa, DMPessoa);
  ConectBd(DMPessoa);
  Application.CreateForm(TDMGeografia, DMGeografia);
  ConectBd(DMGeografia);
  Application.CreateForm(TDMBANCO, DMBANCO);
  ConectBd(DMBANCO);
  Application.CreateForm(TDMFINANC, DMFINANC);
  ConectBd(DMFINANC);
  Application.CreateForm(TDMCaixa, DMCAIXA);
  ConectBd(DMCAIXA);
  Application.CreateForm(TDMConta, DMCONTA);
  ConectBd(DMCONTA);
  Application.CreateForm(TDMEstoque, DMESTOQUE);
  ConectBd(DMESTOQUE);
  Application.CreateForm(TDMSERV, DmServ);
  ConectBd(DmServ);
  Application.CreateForm(TDMEntrada, DMEntrada);
  ConectBd(DMEntrada);
  Application.CreateForm(TDMSaida, DmSaida);
  ConectBd(DmSaida);
  Application.CreateForm(TDMFISCAL, DMFISCAL);
  ConectBd(DMFISCAL);
end;

// Relaiza cálculos de lucrativade do produto baseado na compra e venda
Procedure CalculoLucrativadeProduto(xCodEstoque: Integer);
Var
  Y, Z, ST, b, X, XBaseCalc, XCredICMSFrete: Real;
Begin
  Try
    FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', '', '');
    If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(xCodEstoque), '')
    Then
    Begin
      // CALCULA BASE DE CALCULO P/ LUCRO REAL/PRESUMIDO
      XBaseCalc := DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency - ((DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency * DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsCurrency) / 100) +
        ((DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency * DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsCurrency) / 100);
      // CALCULA CREDITO DE ICMS P/ FRETE
      XCredICMSFrete := ((Y * DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency) / 100);
      // CALCULANDO CUSTOS ADICIONAIS PARA (VALREP)
      If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString = 'SIMPLES'
      Then
      Begin
        X := (DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency * (DMESTOQUE.TSubprod.FieldByName('IPIPROD').AsCurrency) / 100);
        Y := (DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency * (DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency) / 100);
        Z := (DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency * (DMESTOQUE.TSubprod.FieldByName('EMBPROD').AsCurrency) / 100);
        ST := (DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency * (DMESTOQUE.TEstoque.FieldByName('PIS').AsCurrency) / 100);
      End
      Else
      Begin
        X := (XBaseCalc * (DMESTOQUE.TSubprod.FieldByName('IPIPROD').AsCurrency) / 100);
        Y := (XBaseCalc * (DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency) / 100);
        Z := (XBaseCalc * (DMESTOQUE.TSubprod.FieldByName('EMBPROD').AsCurrency) / 100);
        ST := (XBaseCalc * (DMESTOQUE.TEstoque.FieldByName('PIS').AsCurrency) / 100);
      End;
      // CALCULANDO VALOR DE REPOSIÇÃO (VALREP)
      If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString = 'SIMPLES'
      Then
      Begin
        DMESTOQUE.TEstoque.Edit;
        DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency + (X + Y + Z + ST);
        DMESTOQUE.TEstoque.Post;
      End
      Else
      Begin
        If DMMACS.TEmpresa.FieldByName('CREDITAIPI').AsString = '1'
        Then
        Begin
          // Empresa possui credito IPI
          DMESTOQUE.TEstoque.Edit;
          DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency := XBaseCalc + Y - XCredICMSFrete + ST;
          DMESTOQUE.TEstoque.Post;
        End
        Else
        Begin
          // Empresa nao possui credito IPI
          DMESTOQUE.TEstoque.Edit;
          DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency := XBaseCalc + Y + X - XCredICMSFrete + ST;
          DMESTOQUE.TEstoque.Post;
        End;
      End;

      // Valor do Produto com Valor de Reposição + os Impostos
      b := (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency);
      DMESTOQUE.TEstoque.Edit;
      DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsCurrency := ((DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency / b) - 1) * 100;
      DMESTOQUE.TEstoque.Post;
    End;
  Except
  End;
End;

// Função utilizada para inicializar a carta de correção eletronica
Function IniciaCCe(CodigoPedido: Integer; Tipo: String): Boolean;
Begin
  Try
    Result := True;
    FCartaCorrecaoEletronica := TFCartaCorrecaoEletronica.Create(FCartaCorrecaoEletronica); // cria o formulario
    FMenu.XCCe_Cod_pedido := CodigoPedido;
    FMenu.XCCe_TipoGerador := Tipo;
    // Buscamos os dados da nota
    DMMACS.TAlx.Close;
    DMMACS.TAlx.SQL.Clear;
    If Tipo = 'ORDEM'
    Then
    Begin
      DMMACS.TAlx.SQL.Add(' Select docfisord.nfechave, docfisord.numdocfis, vwordem.cliente as PESSOA, vwordem.status as SITUACAO from docfisord ');
      DMMACS.TAlx.SQL.Add(' Left join vwordem on docfisord.cod_ordem = vwordem.cod_ordem ');
      DMMACS.TAlx.SQL.Add(' where (docfisord.cod_ordem=:codigo) and (docfisord.nfeserie<>''999'')  and (docfisord.tipodocfis=''3'')  and (vwordem.status=''FECHADO'') AND (docfisord.MODELONF = ''55'')');
    End;
    If Tipo = 'COMPRA'
    Then
    Begin
      DMMACS.TAlx.SQL.Add(' Select docfis.nfechave, docfis.numdocfis, vwpedc.nome as PESSOA, vwpedc.situacao as SITUACAO from docfis ');
      DMMACS.TAlx.SQL.Add(' Left join vwpedc on docfis.cod_pedido = vwpedc.cod_pedcomp ');
      DMMACS.TAlx.SQL.Add(' where (docfis.cod_pedido=:codigo) and (docfis.nfeserie<>''999'')  and (docfis.tipodocfis=''3'') and (vwpedc.SITUACAO=''FECHADO'')');
    End;
    If Tipo = 'PEDV'
    Then
    Begin
      DMMACS.TAlx.SQL.Add(' Select docfissaida.nfechave, docfissaida.numdocfis, vwpedv.nomecli as PESSOA, vwpedv.situacao as SITUACAO from docfissaida');
      DMMACS.TAlx.SQL.Add(' Left join vwpedv on docfissaida.cod_pedido = vwpedv.cod_pedvenda');
      DMMACS.TAlx.SQL.Add(' where (docfissaida.cod_pedido=:codigo) and (docfissaida.nfeserie<>''999'') and (docfissaida.tipodocfis=''3'') and (vwpedv.situacao=''FECHADO'') AND (DOCFISSAIDA.MODELONF = ''55'')');
    End;
    DMMACS.TAlx.ParamByName('codigo').AsInteger := CodigoPedido;
    DMMACS.TAlx.Open;
    If not DMMACS.TAlx.IsEmpty
    Then
    Begin
      // Verifica sequencia carta
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' select max(cce.nsequencia) AS SEQ from cce where (cce.tipogerador=:Tipo) and (cce.cod_gerador=:Codigo) ');
      DMESTOQUE.Alx.ParamByName('Tipo').AsString := Tipo;
      DMESTOQUE.Alx.ParamByName('Codigo').AsInteger := CodigoPedido;
      DMESTOQUE.Alx.Open;
      FCartaCorrecaoEletronica.EdNumeroNota.Text := DMMACS.TAlx.FieldByName('numdocfis').AsString;
      FCartaCorrecaoEletronica.EdChaveNota.Text := DMMACS.TAlx.FieldByName('nfechave').AsString;
      FCartaCorrecaoEletronica.EdDtNota.Text := DateToStr(Date());
      FCartaCorrecaoEletronica.EdPessoa.Text := DMMACS.TAlx.FieldByName('Pessoa').AsString;
      FCartaCorrecaoEletronica.EdNumeroCarta.Text := IntToStr(DMESTOQUE.Alx.FieldByName('SEQ').AsInteger + 1);
      FCartaCorrecaoEletronica.MTexto.Lines.Clear;
      FCartaCorrecaoEletronica.Showmodal;
    End
    Else
    Begin
      MessageDlg('Este pedido não gerou nota fiscal válida para Cartas de Correção Eletrônica', mtWarning, [mbOK], 0);
      Try
        FCartaCorrecaoEletronica := nil;
      Except
      End;
    End;
  Except
    Result := False;
  End;
End;

// Função utilizada para acessar ou configurar caminho de acesso ao banco pelo xml de acesso
Function RecuperaCaminhoBancoXml: String;
Var
  NodeNivelA, NodeNivelB, NodeNivelC, NodeNivelD: IXMLNode;
  XFlag: Integer;
Begin
  If FileExists(ExtractFilePath(Application.EXEName) + '\caminhobanco.xml')
  Then
  Begin
    // Caso o arquivo de config do caminho existir
    FMenu.XmlCaminhoBanco.LoadFromFile(ExtractFilePath(Application.EXEName) + '\caminhobanco.xml');
    If FMenu.XmlCaminhoBanco.ChildNodes['config'].ChildNodes.FindNode('caminho') <> nil
    Then
    Begin
      Result := FMenu.XmlCaminhoBanco.ChildNodes['config'].ChildNodes.FindNode('caminho').Text;
    End
    Else
    Begin
      XFlag := 1;
      While XFlag = 1 do
      Begin
        InputQuery('Informe o caminho do banco:', 'Caminho:', FMenu.XTRILL);
        // Conecta DataBases e Transactions
        Try
          DMMACS.Transaction.Active := False;
          DMMACS.DataBase.Connected := False;
          DMMACS.DataBase.DatabaseName := FMenu.XTRILL;
          DMMACS.DataBase.Connected := True;
          Result := FMenu.XTRILL;
          XFlag := 0;
          // GRAVA RESULTADO
          NodeNivelA := FMenu.XmlCaminhoBanco.DocumentElement;
          NodeNivelA.AddChild('caminho').NodeValue := Result;
          FMenu.XmlCaminhoBanco.SaveToFile(ExtractFilePath(Application.EXEName) + '\caminhobanco.xml');
        Except
          If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Caminho inválido para o banco de dados. Tentar novamente', '', 2, 3, False, 'c') = 2
          Then
          Begin
            XFlag := 0;
            FMenu.XTRILL := 'FALSE';
          End;
        End;
      End;
    End;
  End
  Else
  Begin
    // Seleciona o local correto
    XFlag := 1;
    While XFlag = 1 do
    Begin
      InputQuery('Informe o caminho do banco:', 'Caminho:', FMenu.XTRILL);
      // Conecta DataBases e Transactions
      Try
        DMMACS.Transaction.Active := False;
        DMMACS.DataBase.Connected := False;
        DMMACS.DataBase.DatabaseName := FMenu.XTRILL;
        DMMACS.DataBase.Connected := True;
        Result := FMenu.XTRILL;
        XFlag := 0;
      Except
        If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Caminho inválido para o banco de dados. Tentar novamente', '', 2, 3, False, 'c') = 2
        Then
        Begin
          XFlag := 0;
          FMenu.XTRILL := 'FALSE';
          Result := FMenu.XTRILL;
        End;
      End;
    End;
    // Caso o arquivo de config não existir
    FMenu.XmlCaminhoBanco.Active := True;
    FMenu.XmlCaminhoBanco.Version := '1.0';
    FMenu.XmlCaminhoBanco.Encoding := 'UTF-8';
    FMenu.XmlCaminhoBanco.AddChild('config');
    // A - Dados Config
    NodeNivelA := FMenu.XmlCaminhoBanco.DocumentElement;
    NodeNivelA.AddChild('caminho').NodeValue := Result;
    FMenu.XmlCaminhoBanco.SaveToFile(ExtractFilePath(Application.EXEName) + '\caminhobanco.xml');
  End;
End;

// Alex - 02/01/2015: Função generica para lançar itens de entrada ou saida para correção
function LancaEstoqueCorrecaoGeneric(xOperacao: String; xQtde: Real; xCodEstoque: Integer; xHistorico: String): Boolean;
var
  xCodLanc, xQtdeAnterior: Real;
begin
  try
    // SQL para buscar qual é o atual estoque fisico do produto
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('SELECT ESTOQUE.ESTFISICO EST FROM ESTOQUE WHERE ESTOQUE.COD_ESTOQUE = :ESTOQUE');
    DMESTOQUE.Alx.ParamByName('ESTOQUE').AsInteger := xCodEstoque;
    DMESTOQUE.Alx.Open;
    {
      //se a operação foi saida para correção
      if xOperacao = 'S' then//soma o estoque fisico a quantidade de saida para buscar o estoque anterior
      xQtdeAnterior := DMESTOQUE.Alx.FieldByName('EST').AsCurrency  + xQtde
      else
      //caso contrario, subtrai
      xQtdeAnterior := DMESTOQUE.Alx.FieldByName('EST').AsCurrency - xQtde;
    }
    // se a operação foi saida para correção
    if xOperacao = 'S' then // soma o estoque fisico a quantidade de saida para buscar o estoque anterior
      xQtdeAnterior := DMESTOQUE.Alx.FieldByName('EST').AsCurrency + xQtde
    else // caso contrario, subtrai
      // CASO O ESTOQUE SEJA 0, DEIXA ESTE VALOR COMO ESTOQUE ANTERIOR
      if DMESTOQUE.Alx.FieldByName('EST').AsCurrency = 0 then
        xQtdeAnterior := 0
      else
        xQtdeAnterior := DMESTOQUE.Alx.FieldByName('EST').AsCurrency - xQtde;

    if xOperacao = 'E' then
    begin // Edmar - 28/10/2014 - lançamento para estoque de entrada de produto
      xCodLanc := InserReg(DMEntrada.TLancEnt, 'LANCENT', 'COD_LANENT');
      DMEntrada.TLancEnt.FieldByName('COD_LANENT').AsCurrency := xCodLanc;
      DMEntrada.TLancEnt.FieldByName('COD_ESTOQUE').AsInteger := xCodEstoque;
      DMEntrada.TLancEnt.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
      DMEntrada.TLancEnt.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
      DMEntrada.TLancEnt.FieldByName('MOTIVO').AsString := xHistorico;
      DMEntrada.TLancEnt.FieldByName('DT_LANCAMENTO').AsDateTime := Date();
      DMEntrada.TLancEnt.FieldByName('DT_ESTOQUE').AsDateTime := Date();
      DMEntrada.TLancEnt.FieldByName('QUANTIDADE').AsCurrency := xQtde;
      DMEntrada.TLancEnt.FieldByName('QTDANT').AsCurrency := xQtdeAnterior;
      DMEntrada.TLancEnt.Post;
    end
    else
    begin // lançamento para estoque de saída de produto
      xCodLanc := InserReg(DmSaida.TLancSai, 'LANCSAI', 'COD_LANCSAI');
      DmSaida.TLancSai.FieldByName('COD_LANCSAI').AsCurrency := xCodLanc;
      DmSaida.TLancSai.FieldByName('COD_ESTOQUE').AsInteger := xCodEstoque;
      DmSaida.TLancSai.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
      DmSaida.TLancSai.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
      DmSaida.TLancSai.FieldByName('MOTIVO').AsString := xHistorico;
      DmSaida.TLancSai.FieldByName('DT_LANCAMENTO').AsDateTime := Date();
      DmSaida.TLancSai.FieldByName('DT_ESTOQUE').AsDateTime := Date();
      DmSaida.TLancSai.FieldByName('QUANTIDADE').AsCurrency := xQtde;
      DmSaida.TLancSai.FieldByName('QTDANT').AsCurrency := xQtdeAnterior;

      DmSaida.TLancSai.Post;
    end;
  except
    On E: Exception do
    begin
      Raise Exception.Create(E.Message);
    end;
  end;
end;

// Função utilizada para acessar ou configurar caminho de acesso ao banco de exportação pelo xml de acesso
Function RecuperaCaminhoBancoExportaXml: String;
Var
  NodeNivelA, NodeNivelB, NodeNivelC, NodeNivelD: IXMLNode;
  XFlag: Integer;
Begin
  If FileExists(ExtractFilePath(Application.EXEName) + '\caminhobanco.xml')
  Then
  Begin
    // Caso o arquivo de config do caminho existir
    FMenu.XmlCaminhoBanco.LoadFromFile(ExtractFilePath(Application.EXEName) + '\caminhobanco.xml');
    If FMenu.XmlCaminhoBanco.ChildNodes['config'].ChildNodes.FindNode('caminhoExporta') <> nil
    Then
    Begin
      Result := FMenu.XmlCaminhoBanco.ChildNodes['config'].ChildNodes.FindNode('caminhoExporta').Text;
    End
    Else
    Begin
      XFlag := 1;
      While XFlag = 1 do
      Begin
        InputQuery('Informe o caminho do banco:', 'Caminho:', Result);
        // Conecta DataBases e Transactions
        Try
          DMMACS.Transaction.Active := False;
          DMMACS.DataBase.Connected := False;
          DMMACS.DataBase.DatabaseName := Result;
          DMMACS.DataBase.Connected := True;
          XFlag := 0;
          // GRAVA RESULTADO
          NodeNivelA := FMenu.XmlCaminhoBanco.DocumentElement;
          NodeNivelA.AddChild('caminhoExporta').NodeValue := Result;
          FMenu.XmlCaminhoBanco.SaveToFile(ExtractFilePath(Application.EXEName) + '\caminhobanco.xml');
        Except
          If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Caminho inválido para o banco de dados. Tentar novamente', '', 2, 3, False, 'c') = 2
          Then
          Begin
            XFlag := 0;
            FMenu.XTRILL := 'FALSE';
          End;
        End;
      End;
    End;
  End
  Else
  Begin
    // Seleciona o local correto
    XFlag := 1;
    While XFlag = 1 do
    Begin
      InputQuery('Informe o caminho do banco:', 'Caminho:', Result);
      // Conecta DataBases e Transactions
      Try
        DMMACS.Transaction.Active := False;
        DMMACS.DataBase.Connected := False;
        DMMACS.DataBase.DatabaseName := Result;
        DMMACS.DataBase.Connected := True;
        XFlag := 0;
      Except
        If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Caminho inválido para o banco de dados. Tentar novamente', '', 2, 3, False, 'c') = 2
        Then
        Begin
          XFlag := 0;
          FMenu.XTRILL := 'FALSE';
        End;
      End;
    End;
    // Caso o arquivo de config não existir
    FMenu.XmlCaminhoBanco.Active := True;
    FMenu.XmlCaminhoBanco.Version := '1.0';
    FMenu.XmlCaminhoBanco.Encoding := 'UTF-8';
    FMenu.XmlCaminhoBanco.AddChild('config');
    // A - Dados Config
    NodeNivelA := FMenu.XmlCaminhoBanco.DocumentElement;
    NodeNivelA.AddChild('caminhoExporta').NodeValue := Result;
    FMenu.XmlCaminhoBanco.SaveToFile(ExtractFilePath(Application.EXEName) + '\caminhobanco.xml');
  End;
End;

// Função Utilizada para cancelar itens de compra, onde a nota foi cancelada e os itens devem ser devolvidos
Function CancelaItensCompra(CodigoPedido: Integer): Boolean;
Var
  XCODLANEST: Integer;
Begin
  Result := True;
  Try
    If FiltraTabela(DMEntrada.TPedC, 'PEDCOMPRA', 'cod_pedcomp', IntToStr(CodigoPedido), '') = True
    Then
    Begin
      // REGISTRA COMANDO DO USUARIO
      Registra('PEDIDO COMPRA', 'CANCELA NFe', DMEntrada.TPedC.FieldByName('DTPEDCOMP').AsString, 'Nº ' + DMEntrada.TPedC.FieldByName('NUMPED').AsString + ' - ' + DMEntrada.WPedc.FieldByName('NOME').AsString,
        'Vlr:' + DMEntrada.TPedC.FieldByName('VALOR').AsString + '-' + DMEntrada.WPedc.FieldByName('FORMPAG').AsString);
      // INSERE COMANDOS PARA FILTRAR
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' Select itenspedc.cod_itenspedc, itenspedc.cod_pedcompra, itenspedc.cod_estoque, itenspedc.qtdeprod, itenspedc.valortotal, ');
      DMESTOQUE.Alx.SQL.Add(' itenspedc.descpro, itenspedc.valunit, subproduto.descricao, subproduto.marca, subproduto.CONTRINT, itenspedc.data ');
      DMESTOQUE.Alx.SQL.Add(' From itenspedc left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add(' Left Join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
      DMESTOQUE.Alx.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
      DMESTOQUE.Alx.SQL.Add(' Where pedcompra.cod_pedcomp = :CODPEDVENDA ');
      DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsInteger := CodigoPedido;
      DMESTOQUE.Alx.Open;
      DMESTOQUE.Alx.First;
      While Not DMESTOQUE.Alx.Eof do
      Begin
        // LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
        FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsString, '');
        FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsString, '');
        FiltraTabela(DMEntrada.TItemPC, 'itenspedc', 'cod_itenspedc', DMESTOQUE.Alx.FieldByName('cod_itenspedc').AsString, '');
        XCODLANEST := InserReg(DmSaida.TLancSai, 'lancsai', 'cod_lancsai');
        DmSaida.TLancSai.FieldByName('cod_lancsai').AsInteger := XCODLANEST;
        DmSaida.TLancSai.FieldByName('COD_ESTOQUE').AsString := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString;
        DmSaida.TLancSai.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
        DmSaida.TLancSai.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
        DmSaida.TLancSai.FieldByName('NUMNOTA').AsString := 'CLD NFE-' + DMEntrada.TPedC.FieldByName('NUMPED').AsString;
        DmSaida.TLancSai.FieldByName('MOTIVO').AsString := 'Cancelamento de NFe ref. Pedido: ' + DMEntrada.TPedC.FieldByName('NUMPED').AsString + '/Fornecedor: ' + DMEntrada.WPedc.FieldByName('NOME').AsString;
        DmSaida.TLancSai.FieldByName('DT_LANCAMENTO').AsString := DateToStr(Date());
        DmSaida.TLancSai.FieldByName('DT_ESTOQUE').AsString := DateToStr(Date());
        DmSaida.TLancSai.FieldByName('QUANTIDADE').AsString := DMEntrada.TItemPC.FieldByName('QTDEPROD').AsString;
        DmSaida.TLancSai.FieldByName('QTDANT').AsString := DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
        DmSaida.TLancSai.Post;
        DMESTOQUE.TEstoque.Edit;
        DMESTOQUE.TEstoque.FieldByName('ESTFISICO').Value := DMESTOQUE.TEstoque.FieldByName('ESTFISICO').Value - DmSaida.TLancSai.FieldByName('QUANTIDADE').AsCurrency;
        DMESTOQUE.TEstoque.Post;
        DMESTOQUE.TransacEstoque.CommitRetaining;
        DMESTOQUE.Alx.Next;
      End;
      DMESTOQUE.TransacEstoque.CommitRetaining;
      DMESTOQUE.TransacEstoque.CommitRetaining;
      DMEntrada.IBT.CommitRetaining;
    End;
  Except
    Result := False;
  End;
End;

// Função Utilizada para cancelar itens de venda, onde a nota foi cancelada e os itens deve ser devolvidos
Function CancelaItensVenda(CodigoPedido: Integer): Boolean;
Var
  XCODLANEST: Integer;
Begin
  Result := True;
  Try
    If FiltraTabela(DmSaida.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(CodigoPedido), '') = True
    Then
    Begin
      // REGISTRA COMANDO DO USUARIO
      Registra('PEDIDO VENDA', 'CANCELA NFe', DmSaida.TPedV.FieldByName('DTPEDVEN').AsString, 'Nº ' + DmSaida.TPedV.FieldByName('NUMPED').AsString + '-' + DmSaida.TPedV.FieldByName('NOMECLI').AsString, 'Vlr:' + DmSaida.TPedV.FieldByName('VALOR').AsString + '-' + DmSaida.WPedV.FieldByName('FORMPAG')
        .AsString);
      // INSERE COMANDOS PARA FILTRAR
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('Select itenspedven.cod_itenspedven, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod, ItensPedVen.ValorTotal, ');
      DMESTOQUE.Alx.SQL.Add('itenspedven.descpro, itenspedven.cod_funcionario, pessoa.nome, itenspedven.valunit, subproduto.descricao, subproduto.marca, subproduto.CONTRINT, itenspedven.data, itenspedven.operacao ');
      DMESTOQUE.Alx.SQL.Add('From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add('Left Join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
      DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
      DMESTOQUE.Alx.SQL.Add('Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
      DMESTOQUE.Alx.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
      DMESTOQUE.Alx.SQL.Add('Where PEDVENDA.cod_pedvenda = :CODPEDVENDA ');
      DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsInteger := CodigoPedido;
      DMESTOQUE.Alx.Open;
      DMESTOQUE.Alx.First;
      While Not DMESTOQUE.Alx.Eof do
      Begin
        If DMESTOQUE.Alx.FieldByName('OPERACAO').AsString <> 'DVL'
        Then
        Begin
          // LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
          FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsString, '');
          FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsString, '');
          FiltraTabela(DmSaida.TItemPV, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMESTOQUE.Alx.FieldByName('COD_ITENSPEDVEN').AsString, '');
          DmSaida.TItemPV.Edit;
          DmSaida.TItemPV.FieldByName('OPERACAO').AsString := 'DVL';
          DmSaida.TItemPV.FieldByName('COMISSAO').AsCurrency := 0;
          DmSaida.TItemPV.Post;
          XCODLANEST := InserReg(DMEntrada.TLancEnt, 'LANCENT', 'COD_LANENT');
          DMEntrada.TLancEnt.FieldByName('COD_LANENT').AsInteger := XCODLANEST;
          DMEntrada.TLancEnt.FieldByName('COD_ESTOQUE').AsString := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString;
          DMEntrada.TLancEnt.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
          DMEntrada.TLancEnt.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
          DMEntrada.TLancEnt.FieldByName('NUMNOTA').AsString := 'CLD NFE-' + DmSaida.TPedV.FieldByName('NUMPED').AsString;
          DMEntrada.TLancEnt.FieldByName('MOTIVO').AsString := 'Cancelamento de NFe ref. Pedido: ' + DmSaida.TPedV.FieldByName('NUMPED').AsString + '/Cliente: ' + DmSaida.TPedV.FieldByName('NOMECLI').AsString;
          DMEntrada.TLancEnt.FieldByName('DT_LANCAMENTO').AsString := DateToStr(Date());
          DMEntrada.TLancEnt.FieldByName('DT_ESTOQUE').AsString := DateToStr(Date());
          If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString = '1' then
            DMEntrada.TLancEnt.FieldByName('QUANTIDADE').AsString := DmSaida.TItemPV.FieldByName('QTDENTREGUE').AsString
          Else
            DMEntrada.TLancEnt.FieldByName('QUANTIDADE').AsString := DmSaida.TItemPV.FieldByName('QTDEPROD').AsString;
          DMEntrada.TLancEnt.FieldByName('QTDANT').AsString := DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
          DMEntrada.TLancEnt.Post;
          {
            DMESTOQUE.TEstoque.Edit;
            DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency;
            DMESTOQUE.TEstoque.POST;
            DMESTOQUE.TransacEstoque.CommitRetaining;
          }
          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.ESTFISICO = ESTOQUE.ESTFISICO + :ESTOQUE WHERE ESTOQUE.COD_ESTOQUE = :COD_ESTOQUE ');
          MDO.Query.ParamByName('ESTOQUE').Value := DMEntrada.TLancEnt.FieldByName('QUANTIDADE').AsCurrency;
          MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsInteger;
          MDO.Query.ExecSQL;
        End;
        DMESTOQUE.Alx.Next;
      End;
      DMESTOQUE.TransacEstoque.CommitRetaining;
      MDO.Transac.CommitRetaining;
      DMESTOQUE.TransacEstoque.CommitRetaining;
      DMEntrada.IBT.CommitRetaining;
      DmSaida.IBT.CommitRetaining;
    End;
  Except
    Result := False;
  End;
End;

// Paulo 18/11/2010: Função Utilizada para cancelar itens da ordem, onde a nota foi cancelada e os itens deve ser devolvidos
Function CancelaItensOrdem(CodigoPedido: Integer): Boolean;
Var
  XCODLANEST: Integer;
Begin
  Result := True;
  Try
    If FiltraTabela(DmServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(CodigoPedido), '') = True
    Then
    Begin
      // REGISTRA COMANDO DO USUARIO
      Registra('ORDEM SERVICO', 'CANCELA NFe', DmServ.WOrdem.FieldByName('DTABERT').AsString, 'Nº ' + DmServ.WOrdem.FieldByName('NUMERO').AsString + '-' + DmServ.WOrdem.FieldByName('CLIENTE').AsString, 'Vlr:' + DmServ.WOrdem.FieldByName('TOTAL').AsString + '-' + DmServ.WOrdem.FieldByName('FORMAPAG')
        .AsString);
      // INSERE COMANDOS PARA FILTRAR
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.qtd, itprodord.total,');
      DMESTOQUE.Alx.SQL.Add('itprodord.desconto, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, subproduto.CONTRINT, itprodord.data, itprodord.operacao');
      DMESTOQUE.Alx.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque');
      DMESTOQUE.Alx.SQL.Add('Left Join ordem on itprodord.cod_ordem = ordem.cod_ordem');
      DMESTOQUE.Alx.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
      DMESTOQUE.Alx.SQL.Add('Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario');
      DMESTOQUE.Alx.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA');
      DMESTOQUE.Alx.SQL.Add('Where ordem.cod_ordem = :CODORDEM ');
      DMESTOQUE.Alx.ParamByName('CODORDEM').AsInteger := CodigoPedido;
      DMESTOQUE.Alx.Open;
      DMESTOQUE.Alx.First;
      While Not DMESTOQUE.Alx.Eof do
      Begin
        If DMESTOQUE.Alx.FieldByName('OPERACAO').AsString <> 'DVL'
        Then
        Begin
          // LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
          FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsString, '');
          FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsString, '');
          FiltraTabela(DmServ.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.Alx.FieldByName('COD_ITPRODORD').AsString, '');
          DmServ.TPOrd.Edit;
          DmServ.TPOrd.FieldByName('OPERACAO').AsString := 'DVL';
          DmServ.TPOrd.FieldByName('COMISSAO').AsCurrency := 0;
          DmServ.TPOrd.Post;
          XCODLANEST := InserReg(DMEntrada.TLancEnt, 'LANCENT', 'COD_LANENT');
          DMEntrada.TLancEnt.FieldByName('COD_LANENT').AsInteger := XCODLANEST;
          DMEntrada.TLancEnt.FieldByName('COD_ESTOQUE').AsString := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString;
          DMEntrada.TLancEnt.FieldByName('COD_LOJA').AsString := FMenu.LCODLOJA.Caption;
          DMEntrada.TLancEnt.FieldByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
          DMEntrada.TLancEnt.FieldByName('NUMNOTA').AsString := 'CLD NFE-' + DmServ.WOrdem.FieldByName('NUMERO').AsString;
          DMEntrada.TLancEnt.FieldByName('MOTIVO').AsString := 'Cancelamento de NFe ref. Pedido: ' + DmServ.WOrdem.FieldByName('NUMERO').AsString + '/Cliente: ' + DmServ.WOrdem.FieldByName('CLIENTE').AsString;
          DMEntrada.TLancEnt.FieldByName('DT_LANCAMENTO').AsString := DateToStr(Date());
          DMEntrada.TLancEnt.FieldByName('DT_ESTOQUE').AsString := DateToStr(Date());
          DMEntrada.TLancEnt.FieldByName('QUANTIDADE').AsString := DmServ.TPOrd.FieldByName('QTD').AsString;
          DMEntrada.TLancEnt.FieldByName('QTDANT').AsString := DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsString;
          DMEntrada.TLancEnt.Post;
          {
            DMESTOQUE.TEstoque.Edit;
            DMEstoque.TEstoque.FieldByName('ESTFISICO').Value:=DMEstoque.TEstoque.FieldByName('ESTFISICO').Value+DMENTRADA.TLancENT.FieldByName('QUANTIDADE').AsCurrency;
            DMESTOQUE.TEstoque.POST;
            DMESTOQUE.TransacEstoque.CommitRetaining;
          }
          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.ESTFISICO = ESTOQUE.ESTFISICO + :ESTOQUE WHERE ESTOQUE.COD_ESTOQUE = :COD_ESTOQUE ');
          MDO.Query.ParamByName('ESTOQUE').Value := DMEntrada.TLancEnt.FieldByName('QUANTIDADE').AsCurrency;
          MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsInteger;
          MDO.Query.ExecSQL;
        End;
        DMESTOQUE.Alx.Next;
      End;
      DMESTOQUE.TransacEstoque.CommitRetaining;
      MDO.Transac.CommitRetaining;
      DMESTOQUE.TransacEstoque.CommitRetaining;
      DMEntrada.IBT.CommitRetaining;
      DmServ.IBT.CommitRetaining;
    End;
  Except
    Result := False;
  End;
End;

// Função generica para salvar a posicao do menu de atalhos
Function AbrePosicaoMenuAtalho(Arquivo: String; Posicao: String): Integer;
Var
  XLinha, XEndArquivo: String;
  xTexto: TextFile;
  XNumLinha: Integer;
Begin
  XEndArquivo := ExtractFilePath(Application.EXEName);
  XEndArquivo := XEndArquivo + PChar(Arquivo);
  // VERIFICA SE O QRQUIVO INFORMADO EXISTE
  IF FileExists(XEndArquivo)
  Then
  Begin
    // CARREGA ARQUIVO TXT DE PREÇOS
    AssignFile(xTexto, XEndArquivo);
{$I-}
    Reset(xTexto);
{$I+}
    // INICIA ATUALIZAÇÃO
    XNumLinha := 1;
    While not Eof(xTexto) Do
    Begin
      ReadLN(xTexto, XLinha);
      If (XNumLinha = 1) and (Posicao = 'TOP')
      Then
      Begin
        Try
          StrToInt(XLinha);
          Result := StrToInt(XLinha);
        Except
          Result := 0
        End;
      End;
      If (XNumLinha = 2) and (Posicao = 'LEFT')
      Then
      Begin
        Try
          StrToInt(XLinha);
          Result := StrToInt(XLinha);
        Except
          Result := 0
        End;
      End;
      XNumLinha := XNumLinha + 1;
    End;
    CloseFile(xTexto);
  End
  Else
  Begin
    Result := 0;
  End;
End;

// Função generica para abrir e recuperar dados da posicao do menu de atalhos
Function SalvaPosicaoMenuAtalho(Arquivo: String; Top: Integer; Left: Integer): Boolean;
Var
  XLinha, XEndArquivo: String;
  xTexto: TextFile;
Begin
  XEndArquivo := ExtractFilePath(Application.EXEName);
  XEndArquivo := XEndArquivo + PChar(Arquivo);
  // Apaga o arquivo Intentario de Estoque
  If FileExists(XEndArquivo) then
    DeleteFile(PChar(XEndArquivo));

  // CRIA ARQUIVO TXT PARA INVENTÁRIO DE ESTOQUE
  AssignFile(xTexto, PChar(XEndArquivo));
{$I-}
  Reset(xTexto);
{$I+}
  if IOResult = 0 then
    Append(xTexto)
  else
    Rewrite(xTexto);
  // Escreve Linha de Top
  Writeln(xTexto, IntToStr(Top));
  // Escreve Linha de Left
  Writeln(xTexto, IntToStr(Left));
  CloseFile(xTexto);
End;

// Função para destruir formularios criados na abertura
Function DestroiForms: Boolean;
Begin
  {
    Application.CreateForm(TFMenu, FMenu);
    Application.des CreateForm(TFSplash, FSplash);
    //Application.CreateForm(TFExpImpXML, FExpImpXML);
    // Application.CreateForm(TFPadrao1, FPadrao1);
    //Application.CreateForm(TFLoginCE, FLoginCE);
    //Application.CreateForm(TFWebBrowser, FWebBrowser);
    FSplash.LVERSAO.Caption:=XVERSION;
    FSplash.LVERSAO2.Caption:=XVERSION;
    FMenu.LVersao.Caption:=XVERSION;
    FMenu.LVersao.Hint:=XDTVERSION;
    FMenu.LVersao2.Caption:=XVERSION;
    FMenu.LVersao2.Hint:=XDTVERSION;
    FSplash.Show;
    FSplash.Update;

    FSplash.SpProgress.Width:=0;
    FSplash.SpProgress2.Width:=0;
    //CRIA DMMACS
    FSplash.LArquivos.Caption:='Carregando Configurações';
    Try
    Application.CreateForm(TDMMACS, DMMACS);
    Except
    On E:Exception do
    Begin
    MessageDlg('Erro ao abrir DMMacs: '+E.Message, mtError, [mbOK], 0);
    Application.Terminate;
    end;
    End;

    // PASSO 1 DE CONEXÃO
    //SE FOR ENCONTRADO UM DBMACS.GDB NO MESMO ENDEREÇO DO EXEC O SIS SE CONECTARÁ A ELES
    XFLAG:=0;

    XPATHEXE:=ExtractFilePath(Application.ExeName);
    IF FileExists(XPATHEXE+'DBMACS.GDB')
    Then Begin
    XFLAG:=1;
    FMenu.XTRILL:=XPATHEXE+'DBMACS.GDB';
    End;

    //PASSO 2 DE CONEXAO
    //SE FOR NECESSÁRIO UTILIZAR - SE DA TRILL QUE DEVE ESTAR NO MESMO LOCAL DO EXE
    If XFLAG=0
    Then Begin
    XPATHEXE:=ExtractFilePath(Application.ExeName);
    IF NOT FileExists(XPATHEXE+'TRILL.GDB')
    Then Begin
    MessageDlg('Falha trill em junção', mtError, [mbOK], 0);
    End
    Else Begin
    //TENTA SE CONECTAR AO TRILL QUE DEVE ESTAR NO MESMO LOCAL DO EXE
    Try
    //Conecta DataBases e Transactions
    DMMACS.IBTTRILL.Active:=False;
    DMMACS.DBTrill.Connected:=False;
    DMMACS.DBTrill.DatabaseName:=XPATHEXE+'TRILL.GDB';
    DMMACS.DBTrill.Connected:=True;
    DMMACS.IBTTRILL.Active:=True;
    DMMACS.BASE.Active:=True;
    Except
    MessageDlg('Falha trill', mtError, [mbOK], 0);
    End;
    FMenu.XCOUNRECORD:=0;
    //Mostra todas as bases de dados cadastradas e válidas
    DMMACS.BASE.Close;
    DMMACS.BASE.SQL.Clear;
    DMMACS.BASE.SQL.Add('SELECT * FROM BASE');
    DMMACS.BASE.Open;

    While Not DMMACS.BASE.Eof do
    Begin
    FMenu.XTRILL:=DMMACS.BASE.FIELDBYNAME('ENDFILE').AsString;
    IF FileExists(FMenu.XTRILL)
    Then Begin
    DMMACS.BASE.Edit;
    DMMACS.BASE.FieldByName('SHOW').AsString:='1';
    DMMACS.BASE.Post;
    FMenu.XCOUNRECORD:=FMENU.XCOUNRECORD+1;
    End
    Else Begin
    DMMACS.BASE.Edit;
    DMMACS.BASE.FieldByName('SHOW').AsString:='0';
    DMMACS.BASE.Post;
    End;
    DMMACS.BASE.Next;
    End;

    //agora mostra somente os registros válidos onde foram encontrado bases
    DMMACS.BASE.ApplyUpdates;
    DMMACS.IBTTRILL.CommitRetaining;
    DMMACS.BASE.Close;
    DMMACS.BASE.SQL.Clear;
    DMMACS.BASE.SQL.Add('SELECT * FROM BASE where SHOW=1');
    DMMACS.BASE.Open;

    //se conter apenas um registro ele pega automaticamente este
    If FMENU.XCOUNRECORD=1
    Then Begin
    FMenu.XTRILL:=DMMACS.BASE.FieldByName('RUMOR').AsString;
    FMenu.XSERVER:=DMMACS.BASE.FieldByName('SERVER').AsString;
    If FMenu.XSERVER<>'' Then
    FMenu.XTRILL:=FMenu.XSERVER+':'+FMenu.XTRILL;
    ConectBd(DMMACS);
    End
    Else Begin
    If DMMACS.BASE.RecordCount<>0
    Then Begin
    Application.CreateForm(TFAcessBase, FAcessBase);
    FAcessBase.ShowModal;
    End;
    End;
    End;
    End;
    If (DMMACS.BASE.RecordCount<>0) or (XFLAG=1)
    Then Begin
    FSplash.SpProgress.Width:=0;
    FSplash.SpProgress2.Width:=0;
    FSplash.SpProgress.Update;
    FSplash.Update;

    //CRIA DMMACS
    FSplash.LArquivos.Caption:='Carregando Configurações';
    //reconecta macs
    ConectBd(DMMacs);
    //CRIA MENU e DMPessoa
    FSplash.LArquivos.Caption:='Carregando Módulo de Pessoas';
    Application.CreateForm(TDMPESSOA, DMPESSOA);
    ConectBd(DMPessoa);
    FSplash.SpProgress.Width:=FSplash.SpProgress.Width+32;
    FSplash.SpProgress2.Width:=FSplash.SpProgress.Width;
    FSplash.SpProgress.Update;
    FSplash.Update;

    //CRIA DMGEOGRAFIA
    FSplash.LArquivos.Caption:='Carregando Módulo Geográfico';
    Application.CreateForm(TDMGeografia, DMGeografia);
    ConectBd(DMGeografia);
    FSplash.SpProgress.Width:=FSplash.SpProgress.Width+20;
    FSplash.SpProgress2.Width:=FSplash.SpProgress.Width-20;
    FSplash.SpProgress.Update;
    FSplash.Update;

    //CRIA DMbancos
    FSplash.LArquivos.Caption:='Carregando Módulo Financeiro';
    Application.CreateForm(TDMBanco, DMBanco);
    Application.CreateForm(TDMFINANC, DMFINANC);
    ConectBd(DMBANCO);
    ConectBd(DMFINANC);

    FSplash.SpProgress.Width:=FSplash.SpProgress.Width+20;
    FSplash.SpProgress2.Width:=FSplash.SpProgress.Width-35;
    FSplash.SpProgress.Update;
    FSplash.Update;

    //CRIA DMcaixa
    FSplash.LArquivos.Caption:='Carregando Módulo de Caixa';
    Application.CreateForm(TDMCaixa, DMCaixa);
    ConectBd(DMCaixa);
    FSplash.SpProgress.Width:=FSplash.SpProgress.Width+20;
    FSplash.SpProgress2.Width:=FSplash.SpProgress.Width-45;
    FSplash.SpProgress.Update;
    FSplash.Update;

    //CRIA DMconta
    FSplash.LArquivos.Caption:='Carregando Contas';
    Application.CreateForm(TDMConta, DMConta);
    ConectBd(DMConta);
    FSplash.SpProgress.Width:=FSplash.SpProgress.Width+20;
    FSplash.SpProgress2.Width:=FSplash.SpProgress.Width-60;
    FSplash.SpProgress.Update;
    FSplash.Update;

    //CRIA DMEstoque
    FSplash.LArquivos.Caption:='Carregando Módulo de Estoque';
    Application.CreateForm(TDMEstoque, DMEstoque);
    ConectBd(DMEstoque);
    FSplash.SpProgress.Width:=FSplash.SpProgress.Width+74;
    FSplash.SpProgress2.Width:=FSplash.SpProgress.Width-30;
    FSplash.SpProgress.Update;
    FSplash.Update;

    //CRIA DMSERVICO
    FSplash.LArquivos.Caption:='Carregando Módulo de Serviços';
    Application.CreateForm(TDMSERV, DMSERV);
    ConectBd(DMSERV);
    FSplash.SpProgress.Width:=FSplash.SpProgress.Width+20;
    FSplash.SpProgress2.Width:=FSplash.SpProgress.Width-20;
    FSplash.SpProgress.Update;
    FSplash.Update;

    //CRIA DMEXPORTA
    FSplash.LArquivos.Caption:='Carregando Módulo de Exportações';
    Application.CreateForm(TDMExporta, DMExporta);

    //CRIA DMEntrada
    FSplash.LArquivos.Caption:='Carregando Módulos de Entradas';
    Application.CreateForm(TDMEntrada, DMEntrada);
    ConectBd(DMEntrada);
    FSplash.SpProgress.Width:=FSplash.SpProgress.Width+20;
    FSplash.SpProgress2.Width:=FSplash.SpProgress.Width-15;
    FSplash.SpProgress.Update;
    FSplash.Update;

    //CRIA DMSaida
    FSplash.LArquivos.Caption:='Carregando Módulo de Saídas';
    Application.CreateForm(TDMSaida, DMSaida);
    Application.CreateForm(TDMFISCAL, DMFiscal);
    ConectBd(DMSaida);
    ConectBd(DMFISCAL);
    FSplash.SpProgress.Width:=FSplash.SpProgress.Width+30;
    FSplash.SpProgress2.Width:=FSplash.SpProgress.Width-15;
    FSplash.SpProgress.Update;
    FSplash.Update;
    END;
    //CRIA FGERENCIADOR
    FSplash.LArquivos.Caption:='Carregando Gerenciador do Sistema';
    Application.CreateForm(TFGERENCIADOR, FGERENCIADOR);
  }
End;

// Função para desconectar banco
Function DesconectBanco: Boolean;
Begin
  Try
    // Data modules sem uso de MDO
    DMFISCAL.DBFiscal.Close;
    DMFISCAL.Destroy;
    DMPessoa.DBPessoa.Close;
    DMPessoa.Destroy;
    DMGeografia.IBDB.Close;
    DMGeografia.Destroy;
    DMFINANC.DataBase.Close;
    DMFINANC.Destroy;
    DmSaida.IBDB.Close;
    DmSaida.Destroy;
    DMBANCO.IBDB.Close;
    DMBANCO.Destroy;
    DMESTOQUE.DBEstoque.Close;
    DMESTOQUE.Destroy;
    DMCAIXA.IBDB.Close;
    DMCAIXA.Destroy;
    DMCONTA.IBDB.Close;
    DMCONTA.Destroy;
    DMEntrada.IBDB.Close;
    DMEntrada.Destroy;
    DMMACS.DBTrill.Close;
    DMMACS.DataBase.Close;
    DMMACS.Destroy;
    // DMEXPORTA.DBExporta.Close;
    // DMEXPORTA.Destroy;
    // Data Modules com uso de MDO
    MDO.DB.Close;
    MDO.DB.Destroy;
    DMFAST.MDODataBase.Close;
    DMFAST.Destroy;
    DmServ.DbServ.Close;
    DmServ.Destroy;
  Except
    // MessageDlg('Base de dados não pode ser fechada', mtWarning, [mbOK], 0);
  End;
End;

// Função utilizada para fechar conta (TIPO=C para compra, TIPO=V para vendas e ordens de serviços)
Function FecConta(Tipo: String; Cod_Pedido: Integer; Valor: Real; ValorProd: Real; ValorServ: Real; Cod_ContaProd: Integer; Cod_ContaServ: Integer; Data: TDateTime): Boolean;
Begin
  // CRIA FORMULARIO
  Application.CreateForm(TFFechaConta, FFechaConta);

  // PASSA VARIAVEIS
  FFechaConta.xTipo := Tipo;
  FFechaConta.XCod_pedido := Cod_Pedido;
  FFechaConta.XValor := Valor;
  FFechaConta.XCod_ContaProd := Cod_ContaProd;
  FFechaConta.XCod_ContaServ := Cod_ContaServ;
  FFechaConta.XValorProd := ValorProd;
  FFechaConta.XValorServ := ValorServ;

  // APAGA TODOS OS REGISTROS DA TABELA TEMPORARIA
  DMMACS.TMP.Close;
  DMMACS.TMP.SQL.Clear;
  DMMACS.TMP.SQL.Add('DELETE FROM TMP');
  DMMACS.TMP.ExecSQL;
  DMMACS.Transaction.CommitRetaining;
  FFechaConta.Showmodal;
  // passa resultado
  Result := XAlxResult;
  // FFechaConta.EdTotal.ValueNumeric

End;

// busca dados fiscais do pedido de venda ou ordem de servico
Function BuscaDadosFiscais(Tipo: string; XCodigo: Integer): Real;
begin
  { If Tipo = 'PV'
    Then Begin
    // busca todos os dados fiscais do pedido de venda
    DMSAIDA.TFiscPV.Close;
    DMSAIDA.TFiscPV.SQL.Clear;
    DMSAIDA.TFiscPV.SQL.Add('select * from docfissaida where docfissaida.cod_pedido = :codigo');
    DMSAIDA.TFiscPV.ParamByName('codigo').AsInteger := XCodigo;
    DMSAIDA.TFiscPV.Open;

    // valor total dos produtos do pedido de venda para fazer a diferenca com o total da nota fiscal de pedido de venda
    DMFINANC.TAlx.Close;
    DMFINANC.TAlx.SQL.Clear;
    DMFINANC.TAlx.SQL.Add('select sum(itenspedven.valortotal) as TOTAL');
    DMFINANC.TAlx.SQL.Add('from itenspedven');
    DMFINANC.TAlx.SQL.Add('where (itenspedven.cod_pedven = :codigo)');
    DMFINANC.TAlx.ParamByName('codigo').AsInteger := XCodigo;
    DMFINANC.TAlx.Open;

    // DADOS DO PEDIDO DE VENDA
    FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',IntToStr(XCodigo),'');
    End
    Else Begin
    // busca todos os dados fiscais de ordem de servico
    DMServ.TFiscOrd.Close;
    DMServ.TFiscOrd.SQL.Clear;
    DMServ.TFiscOrd.SQL.Add('select * from DOCFISORD where DOCFISORD.COD_ORDEM = :codigo');
    DMServ.TFiscOrd.ParamByName('codigo').AsInteger := XCodigo;
    DMServ.TFiscOrd.Open;

    // total de produtos da OS
    DMESTOQUE.Alx3.Close;
    DMESTOQUE.Alx3.SQL.Clear;
    DMESTOQUE.Alx3.SQL.Add('select sum(itprodord.total) AS TOTAL_PRODUTO');
    DMESTOQUE.Alx3.SQL.Add('FROM itprodord where itprodord.cod_ordem = :codigo');
    DMESTOQUE.Alx3.ParamByName('codigo').AsInteger := XCodigo;
    DMESTOQUE.Alx3.Open;

    // total de serviço da OS
    DMESTOQUE.Alx4.Close;
    DMESTOQUE.Alx4.SQL.Clear;
    DMESTOQUE.Alx4.SQL.Add('select sum(itservord.total) AS TOTAL_SERV');
    DMESTOQUE.Alx4.SQL.Add('from itservord where itservord.cod_ordem = :codigo');
    DMESTOQUE.Alx4.ParamByName('codigo').AsInteger := XCodigo;
    DMESTOQUE.Alx4.Open;

    // total de despesas da OS
    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('select sum(despadic.vlrtotfin) AS TOTAL_DESPESA from despadic');
    DMESTOQUE.Alx1.SQL.Add('where despadic.cod_gerador = :codigo');
    DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := XCodigo;
    DMESTOQUE.Alx1.Open;

    // TOTAL DAS CONTAS DA OS
    XValorTotal := DMESTOQUE.Alx3.FieldByName('TOTAL_PRODUTO').AsCurrency + DMESTOQUE.Alx4.FieldByName('TOTAL_SERV').AsCurrency + DMESTOQUE.Alx1.FieldByName('TOTAL_DESPESA').AsCurrency;

    // TOTAL DOS PRODUTOS DA ORDEM
    FILTRATABELA(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCodigo),'');
    End;

    // verifica se eh pra pedido de venda ou OS
    If Tipo='PV'
    Then Begin
    // base de substituição                                                                                                                                                                                                                                                               TOTAL DOS PRODUTOS - TOTAL DA ORDEM
    XBaseSubs := DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency + DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency + DMSAIDA.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency + DMSAIDA.TFiscPV.FieldByName('VLRSEG').AsCurrency + DMSAIDA.TFiscPV.FieldByName('VLROUTRASDESP').AsCurrency + (DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency - DMSAIDA.TPedV.FieldByName('VALOR').AsCurrency);
    End
    Else Begin
    // base de substituição                                                                                                                                                                                                                                                              TOTAL DE PRODUTOS, SERVICO E DESPESAS - TOTAL DA ORDEM
    XBaseSubs := DMESTOQUE.Alx3.FieldByName('TOTAL_PRODUTO').AsCurrency + DMServ.TFiscOrd.FieldByName('VLRFRETE').AsCurrency + DMServ.TFiscOrd.FieldByName('VLRTOTIPI').AsCurrency + DMServ.TFiscOrd.FieldByName('VLRSEG').AsCurrency + DMServ.TFiscOrd.FieldByName('VLROUTRASDESP').AsCurrency + (XValorTotal - DMServ.TOrd.FieldByName('TOTORD').AsCurrency);
    End;

    // busca MVA(margem de valor agregado) do estado do cliente e soma o total da base de substituição
    XBaseSubs := XBaseSubs + (XBaseSubs * (BuscaMVA(Tipo,XCodigo)/100));

    If Tipo = 'PV'
    Then Begin
    // VALOR ICMS SUBSTITUICAO
    XVlrICMS_Subs := (XBaseSubs * (DMPESSOA.TALX.FieldByName('ALIQINTERNA').AsCurrency / 100)) - DMESTOQUE.Alx2.FieldByName('VLR_ICMS').AsCurrency;
    End
    Else Begin
    // VALOR ICMS SUBSTITUICAO
    XVlrICMS_Subs := (XBaseSubs * (DMPESSOA.TALX.FieldByName('ALIQINTERNA').AsCurrency / 100)) - DMESTOQUE.Alx2.FieldByName('VLR_ICMS').AsCurrency;
    End; }
end;

// busca MVA(margem de valor agregado) do estado do cliente
Function BuscaMVA(Tipo: string; XCodigo: Integer): Real;
begin
  DMPessoa.TAlx.Close;
  DMPessoa.TAlx.SQL.Clear;

  // verifica se eh pra pedido de venda ou OS
  If Tipo = 'PV'
  Then
  Begin
    DMPessoa.TAlx.SQL.Add('select * from pedvenda');
    DMPessoa.TAlx.SQL.Add('left join vwcliente on pedvenda.cod_cliente = vwcliente.cod_cliente');
  End
  Else
  Begin
    DMPessoa.TAlx.SQL.Add('select * from ordem');
    DMPessoa.TAlx.SQL.Add('left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente');
  End;
  DMPessoa.TAlx.SQL.Add('left join cidade on vwcliente.cod_cidade = cidade.cod_cidade');
  DMPessoa.TAlx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');

  // verifica se eh pra pedido de venda ou OS
  If Tipo = 'PV'
  Then
  Begin
    DMPessoa.TAlx.SQL.Add('where pedvenda.cod_pedvenda = :codigo');
    DMPessoa.TAlx.ParamByName('codigo').AsInteger := XCodigo;
  End
  Else
  Begin
    DMPessoa.TAlx.SQL.Add('where ordem.cod_ordem = :codigo');
    DMPessoa.TAlx.ParamByName('codigo').AsInteger := XCodigo;
  End;
  DMPessoa.TAlx.Open;

  Result := DMPessoa.TAlx.FieldByName('MVA').AsCurrency;

end;

// realiza os primeiros calculos em cada item de pedido de venda ou ordem de servico
Function CalculaProdutos(XCodigo: Integer; Tipo: string): Boolean;
var
  XValorTotICMSST: Double;
  CFOPINTSER, CFOPEXTSERV, CFOPINT_ST, CFOPEXT_ST, CFOPINT_NORMAL, CFOPEXT_NORMAL: String;
begin
  Try
    // PROCURA OS CFOPS CORRETOS PARA INSERIR NOS ITENS

    // 01-CFOP DENTRO DO ESTADO COM SUBSTITUIÇÃO
    DMMACS.TAlx.Close;
    DMMACS.TAlx.SQL.Clear;
    DMMACS.TAlx.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
    DMMACS.TAlx.ParamByName('codigo').AsString := DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsString;
    DMMACS.TAlx.Open;
    If not DMMACS.TAlx.IsEmpty
    Then
    Begin
      CFOPINT_ST := DMMACS.TAlx.FieldByName('CFOP').AsString;
    End
    Else
    Begin
      Result := False;
      MessageDlg('Configure o CFOP Interno com S.T.', mtWarning, [mbOK], 0);
    End;
    // 02-CFOP FORA DO ESTADO COM SUBSTITUIÇÃO
    DMMACS.TAlx.Close;
    DMMACS.TAlx.SQL.Clear;
    DMMACS.TAlx.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
    DMMACS.TAlx.ParamByName('codigo').AsString := DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsString;
    DMMACS.TAlx.Open;
    If not DMMACS.TAlx.IsEmpty
    Then
    Begin
      CFOPEXT_ST := DMMACS.TAlx.FieldByName('CFOP').AsString;
    End
    Else
    Begin
      Result := False;
      MessageDlg('Configure o CFOP Externo com S.T.', mtWarning, [mbOK], 0);
    End;
    // 03-CFOP DENTRO DO ESTADO SEM SUBSTITUIÇÃO
    DMMACS.TAlx.Close;
    DMMACS.TAlx.SQL.Clear;
    DMMACS.TAlx.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
    DMMACS.TAlx.ParamByName('codigo').AsString := DMMACS.TLoja.FieldByName('CFOPINTERNO').AsString;
    DMMACS.TAlx.Open;
    If not DMMACS.TAlx.IsEmpty
    Then
    Begin
      CFOPINT_NORMAL := DMMACS.TAlx.FieldByName('CFOP').AsString;
    End
    Else
    Begin
      Result := False;
      MessageDlg('Configure o CFOP Interno sem S.T.', mtWarning, [mbOK], 0);
    End;
    // 04-CFOP FORA DO ESTADO SEM SUBSTITUIÇÃO
    DMMACS.TAlx.Close;
    DMMACS.TAlx.SQL.Clear;
    DMMACS.TAlx.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
    DMMACS.TAlx.ParamByName('codigo').AsString := DMMACS.TLoja.FieldByName('CFOPEXTERNO').AsString;
    DMMACS.TAlx.Open;
    If not DMMACS.TAlx.IsEmpty
    Then
    Begin
      CFOPEXT_NORMAL := DMMACS.TAlx.FieldByName('CFOP').AsString;
    End
    Else
    Begin
      Result := False;
      MessageDlg('Configure o CFOP Externo sem S.T.', mtWarning, [mbOK], 0);
    End;
    // 05-CFOP DENTRO DO ESTADO PARA SERVIÇOS
    DMMACS.TAlx.Close;
    DMMACS.TAlx.SQL.Clear;
    DMMACS.TAlx.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
    DMMACS.TAlx.ParamByName('codigo').AsString := DMMACS.TLoja.FieldByName('CFOPINTSERV').AsString;
    DMMACS.TAlx.Open;
    If not DMMACS.TAlx.IsEmpty
    Then
    Begin
      CFOPINTSER := DMMACS.TAlx.FieldByName('CFOP').AsString;
    End
    Else
    Begin
      Result := False;
      MessageDlg('Configure o CFOP Interno Para Serviços', mtWarning, [mbOK], 0);
    End;
    // 06-CFOP FORA DO ESTADO PARA SERVIÇOS
    DMMACS.TAlx.Close;
    DMMACS.TAlx.SQL.Clear;
    DMMACS.TAlx.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
    DMMACS.TAlx.ParamByName('codigo').AsString := DMMACS.TLoja.FieldByName('CFOPEXTSERV').AsString;
    DMMACS.TAlx.Open;
    If not DMMACS.TAlx.IsEmpty
    Then
    Begin
      CFOPINTSER := DMMACS.TAlx.FieldByName('CFOP').AsString;
    End
    Else
    Begin
      Result := False;
      MessageDlg('Configure o CFOP Externo Para Serviços', mtWarning, [mbOK], 0);
    End;

    FMenu.XEncontrouST := False;
    // se for pedido de venda
    If Tipo = 'PV'
    Then
    Begin
      // busca
      DmSaida.TItemPV.Close;
      DmSaida.TItemPV.SQL.Clear;
      if FMenu.XPedFatura = ''
      then
      begin
        DmSaida.TItemPV.SQL.Add('select * from itenspedven where itenspedven.cod_pedven = :codigo');
        DmSaida.TItemPV.ParamByName('codigo').AsInteger := XCodigo;
      end
      else
      begin
        DmSaida.TItemPV.SQL.Add('select * from itenspedven where itenspedven.cod_pedven in (' + FMenu.XPedFatura + ')');
      end;
      DmSaida.TItemPV.Open;

      // busca a aliquota interna do estado do cliente
      BuscaMVA('PV', XCodigo);

      // - 30/03/2009:  busca total do valor dos produtos com ST
      DMESTOQUE.Alx1.Close;
      DMESTOQUE.Alx1.SQL.Clear;
      DMESTOQUE.Alx1.SQL.Add('select sum(itenspedven.valortotal) as TOTAL from  itenspedven');
      DMESTOQUE.Alx1.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
      DMESTOQUE.Alx1.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
      DMESTOQUE.Alx1.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst ');

      if FMenu.XPedFatura = ''
      then
      begin
        DMESTOQUE.Alx1.SQL.Add(' where itenspedven.cod_pedven = :Codigo and cst.substituicao = :CODSUBS');
        DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := XCodigo;
      end
      else
      begin
        DMESTOQUE.Alx1.SQL.Add(' where itenspedven.cod_pedven in(' + FMenu.XPedFatura + ') and cst.substituicao = :CODSUBS');
        // DMESTOQUE.Alx1.ParamByName('codigo').AsString := FMenu.XPedFatura;
      end;
      // DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsInteger;
      DMESTOQUE.Alx1.ParamByName('CODSUBS').AsString := '1';
      DMESTOQUE.Alx1.Open;

      XValorTotICMSST := DMESTOQUE.Alx1.FieldByName('TOTAL').AsCurrency;

      DmSaida.TItemPV.First;
      While Not DmSaida.TItemPV.Eof do
      begin
        DMESTOQUE.Alx1.Close;
        DMESTOQUE.Alx1.SQL.Clear;
        DMESTOQUE.Alx1.SQL.Add(' Select cst.substituicao, estoque.mediabaseicmst, estoque.mediavlricmst, estoque.ipi_vnd, estoque.pmc, estoque.mva, estoque.REDUCBASE, subproduto.CLASSIFICACAO from subproduto ');
        DMESTOQUE.Alx1.SQL.Add(' Left Join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
        DMESTOQUE.Alx1.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst ');
        DMESTOQUE.Alx1.SQL.Add(' where estoque.cod_estoque = :Codigo');
        DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := DmSaida.TItemPV.FieldByName('COD_ESTOQUE').AsInteger;
        DMESTOQUE.Alx1.Open;

        // SELECIONA CST PARA O ITEM DE VENDA
        DMESTOQUE.Alx2.Close;
        DMESTOQUE.Alx2.SQL.Clear;
        DMESTOQUE.Alx2.SQL.Add('  Select cst.substituicao from cst ');
        DMESTOQUE.Alx2.SQL.Add('   where cst.cod_cst = :Codigo ');
        DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := DmSaida.TItemPV.FieldByName('COD_CST').AsInteger;
        DMESTOQUE.Alx2.Open;

        If DMESTOQUE.TCFOP.FieldByName('devolucao').AsString = '1'
        Then
        Begin
          // SE O CFOP FOR DE DEVOLUÇÃO O SISTEMA DEVE PERMANECER PARA OS PRODUTOS CFOP DE DEVOLUÇÃO QUE É O MESMO DO DOCUMENTO FISCAL
          DmSaida.TItemPV.Edit;
          DmSaida.TItemPV.FieldByName('CFOP').AsString := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
          DmSaida.TItemPV.Post;
        End
        Else
        Begin
          If not DMESTOQUE.Alx2.IsEmpty
          Then
          Begin
            // VERIFICA SE NA LOJA ESTA CONFIGURADO PARA INSERIR AUROMATICAMENTE OS ITENS DE SUBSTITUIÇÃO TRIBUTÁRIA
            If (DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsString = '')
            Then
            Begin
              MessageDlg('O Sistema identificou que este pedido possui itens com Substituição tributária. Porém não existe CFOP de substituição tributária cadastrada em loja, por favor ferifique!', mtWarning, [mbOK], 0);
              Result := False;
            End;
            // VERIFICA SE NA LOJA ESTA CONFIGURADO PARA INSERIR AUROMATICAMENTE OS ITENS DE SUBSTITUIÇÃO TRIBUTÁRIA
            If (DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsString = '')
            Then
            Begin
              MessageDlg('O Sistema identificou que este pedido possui itens com Substituição tributária. Porém não existe CFOP de substituição tributária cadastrada em loja, por favor ferifique!', mtWarning, [mbOK], 0);
              Result := False;
            End;
            Result := False;
            // ADICIONA CFOP CORRETA PARA O ITEM DE ACORDO COM ST E DESTINO
            If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
            Then
            Begin
              // Adiciona CFOP para fora do estado
              If DMESTOQUE.Alx2.FieldByName('SUBSTITUICAO').AsString = '1'
              Then
              Begin
                // CFOP para fora do estado e em caso de substituição tributaria
                DmSaida.TItemPV.Edit;
                DmSaida.TItemPV.FieldByName('CFOP').AsString := CFOPEXT_ST;
                DmSaida.TItemPV.Post;
              End
              Else
              Begin
                // CFOP para fora do estado e em caso de substituição tributaria
                DmSaida.TItemPV.Edit;
                DmSaida.TItemPV.FieldByName('CFOP').AsString := CFOPEXT_NORMAL;
                DmSaida.TItemPV.Post;
              End;
            End
            Else
            Begin
              // Adiciona CFOP para fora do estado
              If DMESTOQUE.Alx2.FieldByName('SUBSTITUICAO').AsString = '1'
              Then
              Begin
                // CFOP para fora do estado e em caso de substituição tributaria
                DmSaida.TItemPV.Edit;
                DmSaida.TItemPV.FieldByName('CFOP').AsString := CFOPINT_ST;
                DmSaida.TItemPV.Post;
              End
              Else
              Begin
                // CFOP para fora do estado e em caso de substituição tributaria
                DmSaida.TItemPV.Edit;
                DmSaida.TItemPV.FieldByName('CFOP').AsString := CFOPEXT_NORMAL;
                DmSaida.TItemPV.Post;
              End;
            End;

          End;
        End;
        DmSaida.TItemPV.Edit;
        DmSaida.TItemPV.FieldByName('BASEICMS').AsCurrency := 0;
        DmSaida.TItemPV.FieldByName('vlricms').AsCurrency := 0;
        DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := 0;
        DmSaida.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := 0;

        //
        // - 05/04/2009:  CÁLCULO DE IPI       ---------------
        //
        // - 30/03/2009:  se empresa for normal
        If (FMenu.XTributaEmpresa = 'NORMAL') // And (Fmenu.XTributaCliente='NORMAL')
        Then
        Begin
          If DMESTOQUE.Alx1.FieldByName('IPI_VND').AsCurrency > 0
          Then
          Begin
            DmSaida.TItemPV.FieldByName('VLRIPI').AsCurrency := (DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency * DMESTOQUE.Alx1.FieldByName('IPI_VND').AsCurrency) / 100;
          End
          Else
          Begin
            DmSaida.TItemPV.FieldByName('VLRIPI').AsCurrency := 0;
          End;
        End;

        // - 07/04/2009: verifica se estado de destino é isento de ST
        FiltraTabela(DMGeografia.TEstado, 'ESTADO', 'UF_ESTADO', FMenu.XEstadoDestino, '');

        // - 21/05/2009:GRAVA ALIQUOTA INTERESTADUAL DO ESTADO DE DESTINO
        DmSaida.TItemPV.FieldByName('MVADESTINO').AsCurrency := XAliqInterEstDest;

        If DMGeografia.TEstado.FieldByName('ISENTOST').AsString <> '1'
        Then
        Begin

          //
          // CALCULOS DE BASE ICMS   ------------------------------------
          //

          // - 04/04/2009: industrica para industria
          If ((XEmitIndustria) And (XDestIndustria))
          Then
          Begin

            If (FMenu.XTributaEmpresa = 'SIMPLES')
            Then
            Begin
              DmSaida.TItemPV.FieldByName('BASEICMS').AsCurrency := 0; // DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency;
              DmSaida.TItemPV.FieldByName('vlricms').AsCurrency := 0; // (DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency * DMMACS.TEmpresa.FieldByName('ALIQICMS').AsCurrency)/100;;
            End
            Else If (FMenu.XTributaEmpresa = 'NORMAL')
            Then
            Begin
              DmSaida.TItemPV.FieldByName('BASEICMS').AsCurrency := DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency;
              DmSaida.TItemPV.FieldByName('vlricms').AsCurrency := (DmSaida.TItemPV.FieldByName('BASEICMS').AsCurrency * XAliqInterEstDest) / 100;
            End;

            // - 30/03/2009:  não precisa fazer calculos ICMS ST
            DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := 0;
            DmSaida.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := 0;

          End
          Else If ((XEmitIndustria) And (not XDestIndustria))
          Then
          Begin
            If (FMenu.XTributaEmpresa = 'SIMPLES')
            Then
            Begin
              // - 30/03/2009: calcula ICMS Operação Proprio
              DmSaida.TItemPV.FieldByName('BASEICMS').AsCurrency := 0; // XValorTotICMSST;;
              DmSaida.TItemPV.FieldByName('vlricms').AsCurrency := 0; // (DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency * DMMACS.TEmpresa.FieldByName('ALIQICMS').AsCurrency)/100;

              // ICMS ST
              If XValorTotICMSST > 0
              Then
              Begin
                DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := ((DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency * XMva) / 100) + DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency; // XValorTotICMSST * XMva)/100;
                DmSaida.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := ((DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency * XAliqInternaEstDest) / 100) - DmSaida.TItemPV.FieldByName('vlricms').AsCurrency;
              End;

            End
            Else If (FMenu.XTributaEmpresa = 'NORMAL')
            Then
            Begin
              // - 30/03/2009: calcula ICMS Operação Proprio
              DmSaida.TItemPV.FieldByName('BASEICMS').AsCurrency := DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency;
              DmSaida.TItemPV.FieldByName('vlricms').AsCurrency := (DmSaida.TItemPV.FieldByName('BASEICMS').AsCurrency * XAliqInterEstDest) / 100;

              // ICMS ST
              DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := (((DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency + DmSaida.TItemPV.FieldByName('VLRIPI').AsCurrency) * XMva) / 100) + DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency + DmSaida.TItemPV.FieldByName('VLRIPI')
                .AsCurrency;
              If DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency > 0
              Then
                DmSaida.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := ((DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency * XAliqInternaEstDest) / 100) - DmSaida.TItemPV.FieldByName('vlricms').AsCurrency
              Else
                DmSaida.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := 0;
            End;
          End
          Else
          Begin
            // CALCULA ICMS DE OPERAÇÃO
            // NORMAL P NORMAL
            // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
            If (FMenu.XTributaEmpresa = 'NORMAL') And (FMenu.XTributaCliente = '1')
            Then
            Begin
              // Calcula somente fora do estado
              If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
              Then
              Begin
                DmSaida.TItemPV.FieldByName('BASEICMS').AsCurrency := DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency;
                DmSaida.TItemPV.FieldByName('vlricms').AsCurrency := (DmSaida.TItemPV.FieldByName('BASEICMS').AsCurrency * XAliqInterEstDest) / 100;
              End;
            End;

            If (FMenu.XTributaEmpresa = 'SIMPLES')
            Then
            Begin
              // filtraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'UF_ESTADO', Fmenu.XEstadoOrigem, '');
              // If (Fmenu.XTributaCliente='NORMAL')
              // Then Begin
              // Calcula dentro e fora do estado // com a aliquota de ICMS em empresa quando for Substituição
              If DMESTOQUE.Alx1.FieldByName('SUBSTITUICAO').AsString = '1'
              Then
              Begin
                DmSaida.TItemPV.FieldByName('BASEICMS').AsCurrency := DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency;
                DmSaida.TItemPV.FieldByName('vlricms').AsCurrency := (DmSaida.TItemPV.FieldByName('BASEICMS').AsCurrency * DMMACS.TEmpresa.FieldByName('ICMS').AsCurrency) / 100; // DMGEOGRAFIA.TEstado.FieldByName('ALIQINTERNA').AsCurrency)/100;
              End
              Else
              Begin
                DmSaida.TItemPV.FieldByName('BASEICMS').AsCurrency := 0;
                DmSaida.TItemPV.FieldByName('vlricms').AsCurrency := 0;
              End;
              // End
              // Else Begin
              // DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency := 0;
              // DMSAIDA.TItemPV.FieldByName('vlricms').AsCurrency := 0;
              // End;
            End;

            // CALCULA PARA PRODUTOS COM SUBSTITUIÇÃO TRIBUTÁRIO
            If DMESTOQUE.Alx1.FieldByName('SUBSTITUICAO').AsString = '1'
            Then
            Begin
              FMenu.XEncontrouST := True;
              If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'SEMENTES')
              Then
              Begin
                If FMenu.XEstadoOrigem = FMenu.XEstadoDestino
                Then
                Begin
                  DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := DMESTOQUE.Alx1.FieldByName('mediabaseicmst').AsCurrency * DmSaida.TItemPV.FieldByName('qtdeprod').AsCurrency;
                  DmSaida.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := DMESTOQUE.Alx1.FieldByName('mediavlricmst').AsCurrency * DmSaida.TItemPV.FieldByName('qtdeprod').AsCurrency;
                End;
              End
              Else
              Begin

                // Efetua calculos de acordo com a tributação da empresa
                // SIMPLES P SIMPLES
                // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
                If (FMenu.XTributaEmpresa = 'SIMPLES') And (FMenu.XTributaCliente = '1')
                Then
                Begin
                  // Calcula somente fora do estado
                  // If Fmenu.XEstadoOrigem<>Fmenu.XEstadoDestino
                  // Then Begin
                  // DMESTOQUE.Alx1.FieldByName('PMC').AsCurrency;
                  // DMESTOQUE.Alx1.FieldByName('MVA').AsCurrency;
                  // DMESTOQUE.Alx1.FieldByName('REDUCBASE').AsCurrency;
                  If ((UpperCase(DMESTOQUE.Alx1.FieldByName('CLASSIFICACAO').AsString) = 'P')
                    or (UpperCase(DMESTOQUE.Alx1.FieldByName('CLASSIFICACAO').AsString) = 'N')
                    or (UpperCase(DMESTOQUE.Alx1.FieldByName('CLASSIFICACAO').AsString) = 'T'))
                  Then
                  Begin

                    DmSaida.TItemPV.FieldByName('TIPOLISTA').AsString := UpperCase(DMESTOQUE.Alx1.FieldByName('CLASSIFICACAO').AsString);

                    // - 04/04/2009: SE O VALOR DE PREÇO MAXIMO CONSUMIDOR FOR MAIOR QUE ZERO
                    If DMESTOQUE.Alx1.FieldByName('PMC').AsCurrency > 0
                    Then
                    Begin
                      DmSaida.TItemPV.FieldByName('IPNPMC').AsCurrency := DMESTOQUE.Alx1.FieldByName('PMC').AsCurrency;
                      DmSaida.TItemPV.FieldByName('IPNMVA').AsCurrency := DMESTOQUE.Alx1.FieldByName('MVA').AsCurrency;
                      // - 04/04/2009:      calcular base ST com o PMC
                      DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := (DMESTOQUE.Alx1.FieldByName('PMC').AsCurrency * DmSaida.TItemPV.FieldByName('QTDEPROD').AsCurrency);

                      If DMESTOQUE.Alx1.FieldByName('REDUCBASE').AsCurrency > 0
                      Then
                      Begin
                        DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency - ((DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency * DMESTOQUE.Alx1.FieldByName('REDUCBASE').AsCurrency) / 100);
                      End;

                    End
                    Else
                    Begin
                      // - 04/04/2009: quando PMC for igual a zero calcular com a base de redução (em estoque)
                      DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := (DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency * XMva) / 100 + DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency;
                      DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency - ((DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency * DMESTOQUE.Alx1.FieldByName('REDUCBASE').AsCurrency) / 100);
                    End;
                  End
                  Else
                  Begin
                    DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := (DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency * XMva) / 100 + DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency;

                    // - 04/04/2009: SE O VALOR DE PREÇO MAXIMO CONSUMIDOR FOR MAIOR QUE ZERO
                    If DMESTOQUE.Alx1.FieldByName('REDUCBASE').AsCurrency > 0
                    Then
                    Begin
                      // - 04/04/2009: quando PMC for igual a zero calcular com a base de redução (em estoque)
                      DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := (DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency * XMva) / 100 + DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency;
                      DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency - ((DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency * DMESTOQUE.Alx1.FieldByName('REDUCBASE').AsCurrency) / 100);
                      // DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency + ((DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency * XAliqInternaEstDest)/100);
                    End;
                  End;
                  DmSaida.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := (DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency * XAliqInternaEstDest) / 100;

                  DmSaida.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := DmSaida.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency - DmSaida.TItemPV.FieldByName('vlricms').AsCurrency;

                End;
              End;

              // SIMPLES P NORMAL
              // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
              If (FMenu.XTributaEmpresa = 'SIMPLES') And (FMenu.XTributaCliente = '1')
              Then
              Begin
                // Calcula somente fora do estado
                If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
                Then
                Begin
                  DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency + ((DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency * XMva) / 100);
                  DmSaida.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := (DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency * XAliqInternaEstDest) / 100;
                End;
              End;

              // NORMAL P NORMAL
              // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
              If (FMenu.XTributaEmpresa = 'NORMAL') And (FMenu.XTributaCliente = '1')
              Then
              Begin
                // Calcula somente fora do estado
                If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
                Then
                Begin
                  DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency := DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency + ((DmSaida.TItemPV.FieldByName('VALORTOTAL').AsCurrency * XMva) / 100);
                  DmSaida.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := ((DmSaida.TItemPV.FieldByName('baseicmssubs').AsCurrency * XAliqInternaEstDest) / 100) - DmSaida.TItemPV.FieldByName('vlricms').AsCurrency;
                End;
              End;

            End;

            // ---------fim-----
          End;

        End; // final estado isento ST

        DmSaida.TItemPV.Post;
        DmSaida.TItemPV.Next;
      end;
      DmSaida.IBT.CommitRetaining;

    End
    Else
    Begin
      // ADICIONE CFOP PARA OS SERVIÇOS
      DMESTOQUE.TDesp.Close;
      DMESTOQUE.TDesp.SQL.Clear;
      DMESTOQUE.TDesp.SQL.Add('select * from despadic');
      DMESTOQUE.TDesp.SQL.Add('where (despadic.cod_gerador= :cod) and (despadic.gerador=' + #39 + 'ORDEM' + #39 + ')');
      DMESTOQUE.TDesp.SQL.Add('order by despadic.cod_despadic desc');
      DMESTOQUE.TDesp.ParamByName('cod').AsInteger := XCodigo;
      DMESTOQUE.TDesp.Open;
      If not DMESTOQUE.TDesp.IsEmpty
      Then
      Begin
        DMESTOQUE.TDesp.First;
        While NOT DMESTOQUE.TDesp.Eof do
        Begin
          If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
          Then
          Begin
            // Adiciona CFOP Externo para serviços
            DMESTOQUE.TDesp.Edit;
            DMESTOQUE.TDesp.FieldByName('CFOP').AsString := CFOPEXTSERV;
            DMESTOQUE.TDesp.Post;
          End
          Else
          Begin
            // Adiciona CFOP Interno para serviços
            DMESTOQUE.TDesp.Edit;
            DMESTOQUE.TDesp.FieldByName('CFOP').AsString := CFOPINTSER;
            DMESTOQUE.TDesp.Post;
          End;
          DMESTOQUE.TDesp.Next;
        End;
      End;

      // busca
      DmServ.TPOrd.Close;
      DmServ.TPOrd.SQL.Clear;
      DmServ.TPOrd.SQL.Add('select * from itprodord where itprodord.cod_ordem = :codigo');
      DmServ.TPOrd.ParamByName('codigo').AsInteger := XCodigo;
      DmServ.TPOrd.Open;

      // busca a aliquota interna do estado do cliente
      BuscaMVA('OS', XCodigo);

      While Not DmServ.TPOrd.Eof do
      begin
        // SELECIONA CST PARA O ITEM DE VENDA
        DMESTOQUE.Alx1.Close;
        DMESTOQUE.Alx1.SQL.Clear;
        DMESTOQUE.Alx1.SQL.Add('  Select cst.substituicao from cst ');
        DMESTOQUE.Alx1.SQL.Add('   where cst.cod_cst = :Codigo ');
        DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := DmServ.TPOrd.FieldByName('COD_CST').AsInteger;
        DMESTOQUE.Alx1.Open;

        If DMESTOQUE.TCFOP.FieldByName('devolucao').AsString = '1'
        Then
        Begin
          // SE O CFOP FOR DE DEVOLUÇÃO O SISTEMA DEVE PERMANECER PARA OS PRODUTOS CFOP DE DEVOLUÇÃO QUE É O MESMO DO DOCUMENTO FISCAL
          DmServ.TPOrd.Edit;
          DmServ.TPOrd.FieldByName('CFOP').AsString := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
          DmServ.TPOrd.Post;
        End
        Else
        Begin
          If not DMESTOQUE.Alx1.IsEmpty
          Then
          Begin
            // VERIFICA SE NA LOJA ESTA CONFIGURADO PARA INSERIR AUROMATICAMENTE OS ITENS DE SUBSTITUIÇÃO TRIBUTÁRIA
            If (DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsString = '')
            Then
            Begin
              MessageDlg('O Sistema identificou que esta ordem possui itens com Substituição tributária. Porém não existe CFOP de substituição tributária cadastrada em loja, por favor ferifique!', mtWarning, [mbOK], 0);
              Result := False;
            End;
            // VERIFICA SE NA LOJA ESTA CONFIGURADO PARA INSERIR AUROMATICAMENTE OS ITENS DE SUBSTITUIÇÃO TRIBUTÁRIA
            If (DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsString = '')
            Then
            Begin
              MessageDlg('O Sistema identificou que esta ordem possui itens com Substituição tributária. Porém não existe CFOP de substituição tributária cadastrada em loja, por favor ferifique!', mtWarning, [mbOK], 0);
              Result := False;
            End;
            Result := False;
            // ADICIONA CFOP CORRETA PARA O ITEM DE ACORDO COM ST E DESTINO
            If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
            Then
            Begin
              // Adiciona CFOP para fora do estado
              If DMESTOQUE.Alx1.FieldByName('SUBSTITUICAO').AsString = '1'
              Then
              Begin
                // CFOP para fora do estado e em caso de substituição tributaria
                DmServ.TPOrd.Edit;
                DmServ.TPOrd.FieldByName('CFOP').AsString := CFOPEXT_ST;
                DmServ.TPOrd.Post;
              End
              Else
              Begin
                // CFOP para fora do estado e em caso de substituição tributaria
                DmServ.TPOrd.Edit;
                DmServ.TPOrd.FieldByName('CFOP').AsString := CFOPEXT_NORMAL;
                DmServ.TPOrd.Post;
              End;
            End
            Else
            Begin
              // Adiciona CFOP para fora do estado
              If DMESTOQUE.Alx1.FieldByName('SUBSTITUICAO').AsString = '1'
              Then
              Begin
                // CFOP para fora do estado e em caso de substituição tributaria
                DmServ.TPOrd.Edit;
                DmServ.TPOrd.FieldByName('CFOP').AsString := CFOPINT_ST;
                DmServ.TPOrd.Post;
              End
              Else
              Begin
                // CFOP para fora do estado e em caso de substituição tributaria
                DmServ.TPOrd.Edit;
                DmServ.TPOrd.FieldByName('CFOP').AsString := CFOPEXT_NORMAL;
                DmServ.TPOrd.Post;
              End;
            End;

          End;
        End;
        DmServ.TPOrd.Edit;
        DmServ.TPOrd.FieldByName('BASEICMS').AsCurrency := 0;
        DmServ.TPOrd.FieldByName('vlricms').AsCurrency := 0;
        DmServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := 0;
        DmServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := 0;
        DmServ.TPOrd.Post;

        // CALCULA ICMS DE OPERAÇÃO
        // NORMAL P NORMAL
        // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
        If (FMenu.XTributaEmpresa = 'NORMAL') And (FMenu.XTributaCliente = '1')
        Then
        Begin
          // Calcula somente fora do estado
          If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
          Then
          Begin
            DmServ.TPOrd.Edit;
            DmServ.TPOrd.FieldByName('BASEICMS').AsCurrency := DmServ.TPOrd.FieldByName('TOTAL').AsCurrency;
            DmServ.TPOrd.FieldByName('vlricms').AsCurrency := (DmServ.TPOrd.FieldByName('BASEICMS').AsCurrency * XAliqInterEstDest) / 100;
            DmServ.TPOrd.Post;
          End;
        End;

        // CALCULA PARA PRODUTOS COM SUBSTITUIÇÃO TRIBUTÁRIO
        If DMESTOQUE.Alx1.FieldByName('SUBSTITUICAO').AsString = '1'
        Then
        Begin
          // FMenu.XEncontrouST:=True;
          // Efetua calculos de acordo com a tributação da empresa
          // SIMPLES P SIMPLES
          // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
          If (FMenu.XTributaEmpresa = 'SIMPLES') And (FMenu.XTributaCliente = '1')
          Then
          Begin
            // Calcula somente fora do estado
            If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
            Then
            Begin
              DmServ.TPOrd.Edit;
              DmServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := (DmServ.TPOrd.FieldByName('TOTAL').AsCurrency * XMva) / 100;
              DmServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := (DmServ.TPOrd.FieldByName('baseicmssubs').AsCurrency * XAliqInternaEstDest) / 100;
              DmServ.TPOrd.Post;
            End;
          End;

          // SIMPLES P NORMAL
          // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
          If (FMenu.XTributaEmpresa = 'SIMPLES') And (FMenu.XTributaCliente = '1')
          Then
          Begin
            // Calcula somente fora do estado
            If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
            Then
            Begin
              DmServ.TPOrd.Edit;
              DmServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := DmServ.TPOrd.FieldByName('TOTAL').AsCurrency + ((DmServ.TPOrd.FieldByName('VALORTOTAL').AsCurrency * XMva) / 100);
              DmServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := (DmServ.TPOrd.FieldByName('baseicmssubs').AsCurrency * XAliqInternaEstDest) / 100;
              DmServ.TPOrd.Post;
            End;
          End;

          // NORMAL P NORMAL
          // - 14/04/2009: alterado para a mercescan
          // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
          If (FMenu.XTributaEmpresa = 'NORMAL') And (FMenu.XTributaCliente = '1')
          Then
          Begin
            // Calcula somente fora do estado
            If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
            Then
            Begin
              DmServ.TPOrd.Edit;
              DmServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := DmServ.TPOrd.FieldByName('TOTAL').AsCurrency + ((DmServ.TPOrd.FieldByName('TOTAL').AsCurrency * XMva) / 100);
              DmServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := ((DmServ.TPOrd.FieldByName('baseicmssubs').AsCurrency * XAliqInternaEstDest) / 100) - DmServ.TPOrd.FieldByName('vlricms').AsCurrency;
              DmServ.TPOrd.Post;
            End;
          End;
          If FMenu.XEstadoOrigem = FMenu.XEstadoDestino
          Then
          Begin
            DmServ.TPOrd.Edit;
            DmServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := DMESTOQUE.TEstoque.FieldByName('mediabaseicmst').AsCurrency * DmServ.TPOrd.FieldByName('qtd').AsCurrency;
            DmServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('mediavlricmst').AsCurrency * DmServ.TPOrd.FieldByName('qtd').AsCurrency;
            DmServ.TPOrd.Post;
          End;

          FMenu.XEncontrouST := True; // encontrou cst com substituição tributaria nos produtos da ordem de serviço
        End;
        DmServ.TPOrd.Next;
      end;
      DmServ.IBT.CommitRetaining;
      DMESTOQUE.TransacEstoque.CommitRetaining;
    End;
    Result := True;
  Except
    MessageDlg('erro ao recalcular produtos', mtWarning, [mbOK], 0);
    Result := False;
  End;
end;

// função usada para repassar ao arquivo TXT os dados invalidos
Function EscreveTXT(XTitulo, Descricao: String): Boolean;
Var
  XLinha: String;
begin
  XLinha := XTitulo + ': ' + Descricao;
  // GRAVA DADOS
  Writeln(XErros, XLinha);
end;

// verifica se eh necessario rgistrar o nome do produto no arquivo TXT. Se XLibera for diferente de '1' eh pq eh necessario registrar produto
Function RegistraProdutoTXT(XLibera, XProduto, XCod_Produto: string): Boolean;
var
  XCodigo: string;
  XLinha: String;
begin
  If XLibera <> '1'
  Then
  Begin
    Writeln(XErros, '');

    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

    FiltraTabela(DMESTOQUE.TSubprod, 'SUBPRODUTO', 'COD_SUBPRODUTO', XCod_Produto, '');

    If DMMACS.TLoja.FieldByName('CODPRODREL1').AsString <> ''
    Then
    Begin
      If DMMACS.TLoja.FieldByName('CODPRODREL1').AsString = 'CODCOMPOSTO' Then
        XCodigo := DMESTOQUE.TSubprod.FieldByName('CODCOMPOSTO').AsString;

      If DMMACS.TLoja.FieldByName('CODPRODREL1').AsString = 'CODBARRA' Then
        XCodigo := DMESTOQUE.TSubprod.FieldByName('CODBARRA').AsString;

      If DMMACS.TLoja.FieldByName('CODPRODREL1').AsString = 'CODPRODFABR' Then
        XCodigo := DMESTOQUE.TSubprod.FieldByName('CODPRODFABR').AsString;

      If DMMACS.TLoja.FieldByName('CODPRODREL1').AsString = 'COD_INTERNO' Then
        XCodigo := DMESTOQUE.TSubprod.FieldByName('COD_INTERNO').AsString;

      If DMMACS.TLoja.FieldByName('CODPRODREL1').AsString = 'CONTRINT' Then
        XCodigo := DMESTOQUE.TSubprod.FieldByName('CONTRINT').AsString;
    End
    Else
    Begin
      XCodigo := DMESTOQUE.TSubprod.FieldByName('CONTRINT').AsString;
    End;

    XLinha := XCodigo + ' - ' + 'PRODUTO: ' + XProduto;
    // GRAVA DADOS
    Writeln(XErros, XLinha);
  End;
end;

// faz a verificação completa da nota fiscal antes de ser impressa como dados do cliente, estado, cidade e produtos
Function Verifica_NotaFiscal(xTipo: String; XCodigo: Integer; XArqExistente: Boolean): Boolean;
var
  XTipoPessoa: string; // se eh pessoa fisica ou juridica
  XVerificado: string; // se ateh o final das verificações a variavel ainda nao possuir nenhum valor, todos os dados estão validos
  XProduto: string; // passa  por todos os produtos e a cada um eh feito verificação dos dados necessarios. Serve para liberar o nome do produto como titulo e logo em seguida os dados incorretos
  XLinha: String;
begin
  XVerificado := '';
  XTipoPessoa := '';
  XProduto := '';

  // se o arquivo jah existe eh repassado outro paramettro
  If XArqExistente = True
  Then
  Begin
    // se o arquivo existe o mesmo eh aberto para vizualização do usuario
    DeleteFile('C:\MZR\Arquivos\Notas Fiscais\Erro Nota Fiscal.TXT');

    // CARREGA ARQUIVO TXT DA NOTA FISCAL
    AssignFile(XErros, 'C:\MZR\Arquivos\Notas Fiscais\Erro Nota Fiscal.TXT');
{$I-}
  End
  Else
  Begin
    // se o arquivo existe o mesmo eh aberto para vizualização do usuario
    DeleteFile('C:\MZR\Arquivos\Notas Fiscais\ErroPedido.TXT');

    // CARREGA ARQUIVO TXT DA NOTA FISCAL
    AssignFile(XErros, 'C:\MZR\Arquivos\Notas Fiscais\ErroPedido.TXT');
{$I-}
  End;

{$I-}
  Reset(XErros);
{$I+}
  If IOResult = 0 then
    Append(XErros)
  Else
    Rewrite(XErros);

  // DADOS LOJA
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

  // DADOS DA EMPRESA
  FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', DMMACS.TLoja.FieldByName('COD_EMPRESA').AsString, '');

  // só filtra pedidos e ordens se não for fatura
  If FMenu.XPedFatura = ''
  then
  begin
    If xTipo = 'PV'
    Then
    Begin
      // Filtra pedido de venda
      FiltraTabela(DmSaida.TPedV, 'pedvenda', 'cod_pedvenda', IntToStr(XCodigo), '');
    End
    Else
    Begin
      // Filtra Ordem de Seerviço
      FiltraTabela(DmServ.TOrd, 'ordem', 'cod_ordem', IntToStr(XCodigo), '');
    End;
  end;

  // RAZAO SOCIAL DA EMPRESA COMO TITULO
  XLinha := 'Empresa: ' + DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  // CNPJ
  XLinha := 'CNPJ: ' + DMMACS.TEmpresa.FieldByName('CNPJ').AsString;
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  // ENDERECO
  XLinha := 'Endereço: ' + DMMACS.TEmpresa.FieldByName('ENDERECO').AsString;
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  XLinha := '';
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  // SEPARANDO TITULO DO RESTANTE DA PAGINA
  XLinha := '-----------------------------------------------------------------------------------';
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  XLinha := 'DADOS INVÁLIDOS DA LOJA';
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  XLinha := '';
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  // VERIFICA O TIPO DO ENQUADRAMENTO DA EMPRESA
  If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString = ''
  Then
  Begin
    // função usada para repassar ao arquivo TXT os dados invalidos
    EscreveTXT('Enquadramento tributário da empresa', 'não cadastrado: (SIMPLES, LUCRO REAL, LUCRO PRESUMIDO)');
    XVerificado := '1';
    Result := False;
  End
  Else
  Begin
    // VERIFICA SE A EMPRESA CADASTRADA É OPTANDE DO SIMPLES
    If DMMACS.TEmpresa.FieldByName('TIPOEMPRESANF').AsString = 'SIMPLES' Then
      FMenu.XTributaEmpresa := 'SIMPLES'
    Else
      FMenu.XTributaEmpresa := 'NORMAL';

    // - 30/03/2009: se empresa for industria
    If DMMACS.TEmpresa.FieldByName('INDUSTRIA').AsString = '1' Then
      XEmitIndustria := True
    Else
      XEmitIndustria := False;

  End;

  // Verifica estado de origem Estado da empresa
  DMMACS.TAlx.Close;
  DMMACS.TAlx.SQL.Clear;
  DMMACS.TAlx.SQL.Add(' select * from empresa ');
  DMMACS.TAlx.SQL.Add(' left join cidade on empresa.cod_cidade = cidade.cod_cidade ');
  DMMACS.TAlx.SQL.Add(' left join estado on cidade.cod_estado = estado.cod_estado ');
  DMMACS.TAlx.SQL.Add(' where empresa.cod_empresa = :COD_EMPRESA ');
  DMMACS.TAlx.ParamByName('COD_EMPRESA').AsString := FMenu.LCODEMPRESA.Caption;
  DMMACS.TAlx.Open;
  If DMMACS.TAlx.FieldByName('UF_ESTADO').AsString <> ''
  Then
  Begin
    FMenu.XEstadoOrigem := DMMACS.TAlx.FieldByName('UF_ESTADO').AsString;
    FMenu.XDecreto := DMMACS.TAlx.FieldByName('TXT_SUBSTITUICAO').AsString;
  End
  Else
  Begin
    FMenu.XEstadoOrigem := '';
    // função usada para repassar ao arquivo TXT os dados invalidos
    EscreveTXT('Estado de Origem', 'não cadastrado');
    XVerificado := '1';
    Result := False;
    Exit;
  End;

  // codigo fiscal de operação interno
  If DMMACS.TLoja.FieldByName('CFOPINTERNO').AsString = ''
  Then
  Begin
    // função usada para repassar ao arquivo TXT os dados invalidos
    EscreveTXT('C.F.O.P Interno', 'não cadastrado');
    XVerificado := '1';
    Result := False;
  End
  Else
  Begin
    Result := True;
  End;

  // codigo fiscal de operação interestadual
  If DMMACS.TLoja.FieldByName('CFOPEXTERNO').AsString = ''
  Then
  Begin
    // função usada para repassar ao arquivo TXT os dados invalidos
    EscreveTXT('C.F.O.P Interestadual', 'não cadastrado');
    XVerificado := '1';
    Result := False;
  End
  Else
  Begin
    // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
    If XVerificado <> '1'
    Then
    Begin
      Result := True;
    End;
  End;

  XLinha := '';
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  // SEPARANDO TITULO DO RESTANTE DA PAGINA
  XLinha := '-----------------------------------------------------------------------------------';
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  if FMenu.XPedFatura = ''
  then
  begin
    If xTipo = 'PV'
    Then
    Begin
      // DADOS DO CLIENTE
      FiltraTabela(DMPessoa.TCliente, 'CLIENTE', 'COD_CLIENTE', DmSaida.TPedV.FieldByName('cod_cliente').AsString, '');
    End
    Else
    Begin
      // DADOS DO CLIENTE
      FiltraTabela(DMPessoa.TCliente, 'CLIENTE', 'COD_CLIENTE', DmServ.TOrd.FieldByName('cod_cliente').AsString, '');
    End;
  end
  else
  begin
    If xTipo = 'PV'
    Then
    Begin
      // DADOS DO CLIENTE
      FiltraTabela(DMPessoa.TCliente, 'CLIENTE', 'COD_CLIENTE', FMenu.XCodCLiFatura, '');
    End
    Else
    Begin
      // DADOS DO CLIENTE
      FiltraTabela(DMPessoa.TCliente, 'CLIENTE', 'COD_CLIENTE', FMenu.XCodCLiFatura, '');
    End;
  end;

  {
    Edmar - 10/03/2015 - Troca a marcação do cliente ser contribuiente de ICMS para numeração padrão
    1 - Contribuiente
    2 - Isento
    9 - Não Contribuinte
    //verifica se o cliente é contribuinte de ICMS
    if DMPESSOA.TCliente.FieldByName('CONTRIBICMS').AsString='1' then
    Fmenu.XTributaCliente := 'NORMAL'
    else
    Fmenu.XTributaCliente := 'SIMPLES';
  }

  FMenu.XTributaCliente := DMPessoa.TCliente.FieldByName('CONTRIBICMS').AsString;

  // - 14/04/2009: verificar se cliente possui codigo SUFRAMA
  if Length(DMPessoa.TCliente.FieldByName('SUFRAMA').AsString) > 0 then
    XDestSuframa := True
  else
    XDestSuframa := False;

  // para informar os parametros ao arquivo TXT foi necessario fazer essa separação.
  // Primeiro que, por exemplo, Nome da tabela pessoa e Nome da tabela cidade são iguais e não tem como separar.
  // Outra que tem a necessidade de separar tabela pessoa fisica e pessoa juridica
  // PRIMEIRO VERIFICA SE O CLIENTE EH PESSOA FISICA

  If FiltraTabela(DMPessoa.TPessoaF, 'PESSOAF', 'COD_PESSOA', DMPessoa.TCliente.FieldByName('COD_PESSOA').AsString, '') = True
  Then
  Begin
    // seleciona todos os dados de cliente, cidade e estado
    DMPessoa.TAlx.Close;
    DMPessoa.TAlx.SQL.Clear;
    If xTipo = 'PV' Then
      DMPessoa.TAlx.SQL.Add('select pedvenda.cod_pedvenda, ')
    Else
      DMPessoa.TAlx.SQL.Add('select ordem.cod_ordem as cod_pedvenda, ');
    DMPessoa.TAlx.SQL.Add('vwcliente.cod_cliente, pessoa.cod_pessoa, cidade.cod_cidade, estado.cod_estado, estado.txt_substituicao, vwcliente.nome as CLIENTE, pessoa.CPFCNPJ,');
    DMPessoa.TAlx.SQL.Add('pessoa.endereco, pessoa.endnumero, pessoaf.cod_pessoaf, pessoa.bairro, pessoa.cep, pessoaf.rg, cidade.nome as CIDADE, estado.uf_estado, estado.mva, estado.aliqinterestaual, estado.aliqinterna, pessoa.telrel ');
    If xTipo = 'PV'
    Then
    Begin
      DMPessoa.TAlx.SQL.Add('from pedvenda ');
      DMPessoa.TAlx.SQL.Add('left join vwcliente on pedvenda.cod_cliente = vwcliente.cod_cliente ');
    End
    Else
    Begin
      DMPessoa.TAlx.SQL.Add('from ordem ');
      DMPessoa.TAlx.SQL.Add('left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente ');
    End;
    // verificar se não vai dar problema por causa do cliente
    DMPessoa.TAlx.SQL.Add('left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
    DMPessoa.TAlx.SQL.Add('left join pessoaf on vwcliente.cod_pessoa = pessoaf.cod_pessoa ');
    DMPessoa.TAlx.SQL.Add('left join cidade on vwcliente.cod_cidade = cidade.cod_cidade ');
    DMPessoa.TAlx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado ');
    if FMenu.XPedFatura = ''
    then
    begin
      If xTipo = 'PV' Then
        DMPessoa.TAlx.SQL.Add('where pedvenda.cod_pedvenda = :codigo ')
      Else
        DMPessoa.TAlx.SQL.Add('where ordem.cod_ordem = :codigo ');

      DMPessoa.TAlx.ParamByName('codigo').AsInteger := XCodigo;
    end
    else
    begin
      DMPessoa.TAlx.SQL.Add('where pedvenda.cod_pedvenda in (' + FMenu.XPedFatura + ')');
    end;
    DMPessoa.TAlx.Open;
    XTipoPessoa := 'PF';

    // - 30/03/2009: pessoa fisica nao pode ser industria
    XDestIndustria := False;
  End
  Else
  Begin
    // seleciona todos os dados de cliente, cidade e estado
    DMPessoa.TAlx.Close;
    DMPessoa.TAlx.SQL.Clear;
    If xTipo = 'PV' Then
      DMPessoa.TAlx.SQL.Add('select pedvenda.cod_pedvenda, ')
    Else
      DMPessoa.TAlx.SQL.Add('select ordem.cod_ordem as cod_pedvenda, ');

    DMPessoa.TAlx.SQL.Add('vwcliente.cod_cliente, pessoa.cod_pessoa, cidade.cod_cidade, estado.cod_estado, estado.txt_substituicao, vwcliente.nome as CLIENTE, pessoa.CPFCNPJ, ');
    DMPessoa.TAlx.SQL.Add('pessoa.endereco, pessoa.endnumero, pessoa.bairro, pessoa.cep, pessoaj.insc_mun, pessoaj.insc_est, pessoaj.razao_social , cidade.nome as CIDADE, estado.mva, estado.aliqinterestaual, estado.aliqinterna, estado.uf_estado, pessoa.telrel, pessoaj.industria');
    If xTipo = 'PV'
    Then
    Begin
      DMPessoa.TAlx.SQL.Add('from pedvenda ');
      DMPessoa.TAlx.SQL.Add('left join vwcliente on pedvenda.cod_cliente = vwcliente.cod_cliente ');
    End
    Else
    Begin
      DMPessoa.TAlx.SQL.Add('from ordem ');
      DMPessoa.TAlx.SQL.Add('left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente ');
    End;
    // verificar se não vai dar problema por causa do cliente
    DMPessoa.TAlx.SQL.Add('left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
    DMPessoa.TAlx.SQL.Add('left join pessoaj on vwcliente.cod_pessoa = pessoaj.cod_pessoa ');
    DMPessoa.TAlx.SQL.Add('left join cidade on vwcliente.cod_cidade = cidade.cod_cidade ');
    DMPessoa.TAlx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado ');
    if FMenu.XPedFatura = ''
    then
    begin
      If xTipo = 'PV' Then
        DMPessoa.TAlx.SQL.Add('where pedvenda.cod_pedvenda = :codigo ')
      Else
        DMPessoa.TAlx.SQL.Add('where ordem.cod_ordem = :codigo ');

      DMPessoa.TAlx.ParamByName('codigo').AsInteger := XCodigo;
    end
    else
    begin
      DMPessoa.TAlx.SQL.Add('where pedvenda.cod_pedvenda in (' + FMenu.XPedFatura + ')');
    end;
    DMPessoa.TAlx.Open;

    XTipoPessoa := 'PJ';

    // - 30/03/2009: se destinatario for empresa
    If DMPessoa.TAlx.FieldByName('INDUSTRIA').AsString = '1' Then
      XDestIndustria := True
    Else
      XDestIndustria := False;

  End;

  XLinha := 'DADOS INVÁLIDOS DO CLIENTE:';
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  XLinha := '';
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  // se for pessoa fisica
  If XTipoPessoa = 'PF'
  Then
  Begin
    // nome do cliente
    If DMPessoa.TAlx.FieldByName('CLIENTE').AsString = ''
    Then
    Begin
      // função usada para repassar ao arquivo TXT os dados invalidos
      EscreveTXT('Nome', 'não cadastrado');
      XVerificado := '1';
      Result := False;
    End
    Else
    Begin
      // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
      If XVerificado <> '1'
      Then
      Begin
        Result := True;
      End;
    End;

    // verifica se o cliente possui CPF
    If DMPessoa.TAlx.FieldByName('CPFCNPJ').AsString = ''
    Then
    Begin
      // retorna true pq se for em branco o cpf tah liberado, soh nao pode se for invalido
      // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
      If XVerificado <> '1'
      Then
      Begin
        Result := True;
      End;
    End
    Else
    Begin
      // função para validar CPF da pessoa fisica
      If (ValidCPF(DMPessoa.TAlx.FieldByName('CPFCNPJ').AsString) = False)
      Then
      Begin
        // função usada para repassar ao arquivo TXT os dados invalidos
        EscreveTXT('CPF', 'inválido');
        XVerificado := '1';
        Result := False;
      End
      Else
      Begin
        // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
        If XVerificado <> '1'
        Then
        Begin
          Result := True;
        End;
      End;
    End;

    // verifica se o cliente possui RG
    If (DMPessoa.TAlx.FieldByName('RG').AsString = '')
    Then
    Begin
      // retorna true pq se for em branco o rg tah liberado
      // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
      If XVerificado <> '1'
      Then
      Begin
        Result := True;
      End;
    End;
  End
  Else
  Begin
    // verifica razão social
    If (DMPessoa.TAlx.FieldByName('razao_social').AsString = '')
    Then
    Begin
      // função usada para repassar ao arquivo TXT os dados invalidos
      EscreveTXT('Razão Social', 'não cadastrada');
      XVerificado := '1';
      Result := False;
    End
    Else
    Begin
      // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
      If XVerificado <> '1'
      Then
      Begin
        Result := True;
      End;
    End;

    // verifcando cnpj
    If DMPessoa.TAlx.FieldByName('CPFCNPJ').AsString = ''
    Then
    Begin
      // retorna true pq se for em branco o cnpj tah liberado, soh nao pode se for invalido
      // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
      If XVerificado <> '1'
      Then
      Begin
        Result := True;
      End;
    End
    Else
    Begin
      If (ValidaCGC(DMPessoa.TAlx.FieldByName('CPFCNPJ').AsString) = False)
      Then
      Begin
        // função usada para repassar ao arquivo TXT os dados invalidos
        EscreveTXT('CNPJ', 'inválido');
        XVerificado := '1';
        Result := False;
      End;
      // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
      If XVerificado <> '1'
      Then
      Begin
        Result := True;
      End;
    End;

    // ALEX: 09/01/2009 - O Código abaixo validando a Insc. Estadual foi comentada pq apresentava muitos esrros no cliente
    { If DMPESSOA.TALX.FieldByName('INSC_EST').AsString = ''
      Then Begin
      // retorna true pq se for em branco a inscrição estadual tah liberado, soh nao pode se for invalido
      // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
      If XVerificado <> '1'
      Then Begin
      Result := true;
      End;
      End
      Else Begin
      If Valida_InscEstadual(DMPESSOA.TALX.FieldByName('INSC_EST').AsString,DMPESSOA.TALX.FieldByName('UF_ESTADO').AsString) = false
      Then Begin
      // função usada para repassar ao arquivo TXT os dados invalidos
      EscreveTXT('Inscrição Estadual','inválida');
      XVerificado := '1';
      Result := false;
      End;
      // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
      If XVerificado <> '1'
      Then Begin
      Result := true;
      End;
      End; }
  End;

  // valida cidade
  If (DMPessoa.TAlx.FieldByName('CIDADE').AsString = '')
  Then
  Begin
    // função usada para repassar ao arquivo TXT os dados invalidos
    EscreveTXT('Cidade', 'não cadastrada');
    XVerificado := '1';
    Result := False;
  End
  Else
  Begin
    // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
    If XVerificado <> '1'
    Then
    Begin
      Result := True;
    End;
  End;

  // valida sigla estado
  If (DMPessoa.TAlx.FieldByName('uf_estado').AsString = '')
  Then
  Begin
    // função usada para repassar ao arquivo TXT os dados invalidos
    EscreveTXT('Sigla Estado', 'não cadastrada');
    XVerificado := '1';
    Result := False;
  End
  Else
  Begin
    DMGeografia.TAlx.Close;
    DMGeografia.TAlx.SQL.Clear;
    DMGeografia.TAlx.SQL.Add('select * from estado where upper(estado.uf_estado) = upper(' + #39 + DMPessoa.TAlx.FieldByName('uf_estado').AsString + #39 + ')');
    DMGeografia.TAlx.Open;

    If DMGeografia.TAlx.IsEmpty
    Then
    Begin
      // função usada para repassar ao arquivo TXT os dados invalidos
      EscreveTXT('Sigla Estado', 'inexistente');
      XVerificado := '1';
      Result := False;
    End;

    // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
    If XVerificado <> '1'
    Then
    Begin
      Result := True;
    End;
  End;

  If DMPessoa.TAlx.FieldByName('uf_estado').AsString <> ''
  Then
  Begin
    FMenu.XEstadoDestino := DMPessoa.TAlx.FieldByName('uf_estado').AsString;
    FMenu.XProtocolo := DMPessoa.TAlx.FieldByName('TXT_SUBSTITUICAO').AsString;
    XMva := DMPessoa.TAlx.FieldByName('MVA').AsCurrency;

    // If (DMMACS.TEmpresa.FieldByName('CAD_SRF').AsString = '' )
    // Then Begin
    // se empresa possuir inscrição subs tributária pegar em empresa CAd
    XAliqInternaEstDest := DMPessoa.TAlx.FieldByName('aliqinterna').AsCurrency;

    XAliqInterEstDest := DMPessoa.TAlx.FieldByName('aliqinterestaual').AsCurrency;
    // End
    // Else Begin
    // XAliqInternaEstDest = DMMACS.TEmpresa.FieldByName('ICMS').
    // XAliqInterEstDest
    // End;

    If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino Then
      FMenu.XCST := DMMACS.TAlx.FieldByName('cst_externa').AsString
    Else
      FMenu.XCST := DMMACS.TAlx.FieldByName('cst_interna').AsString;
  End
  Else
  Begin
    FMenu.XEstadoDestino := '';
    // função usada para repassar ao arquivo TXT os dados invalidos
    EscreveTXT('Estado de Destino', 'Cliente sem estado cadastrado');
    XVerificado := '1';
    Result := False;
  End;

  XLinha := '';
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  // SEPARANDO TITULO DO RESTANTE DA PAGINA
  XLinha := '-----------------------------------------------------------------------------------';
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  XLinha := 'ERROS DE PRODUTO:';
  // GRAVA DADOS
  Writeln(XErros, XLinha);

  // BUSCA TODAS AS INFORMAÇÕES DOS PRODUTOS DO PEDIDO ATUAL
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  If xTipo = 'PV'
  Then
  Begin
    DMESTOQUE.Alx.SQL.Add('select * from itenspedven');
    DMESTOQUE.Alx.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
  End
  Else
  Begin
    DMESTOQUE.Alx.SQL.Add(' select * from itprodord ');
    DMESTOQUE.Alx.SQL.Add(' left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
  End;

  DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
  if FMenu.XPedFatura = ''
  then
  begin
    If xTipo = 'PV' Then
      DMESTOQUE.Alx.SQL.Add('where itenspedven.cod_pedven = :codigo')
    Else
      DMESTOQUE.Alx.SQL.Add('where itprodord.cod_ordem = :codigo');
    DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCodigo;
  end
  else
  begin
    DMESTOQUE.Alx.SQL.Add('where itenspedven.cod_pedven in (' + FMenu.XPedFatura + ')');
  end;
  DMESTOQUE.Alx.Open;

  // primeiro registro
  DMESTOQUE.Alx.First;

  // enquanto nao for o final dos itens e nao foi encontrado nenhuma irregularidade nos produtos a analise de produto eh prosseguida
  While not(DMESTOQUE.Alx.Eof) do
  begin
    // eh necessario ter pelo menos o nome do produto
    If DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString <> ''
    Then
    Begin
      // codigo situação tributaria
      If (DMESTOQUE.Alx.FieldByName('COD_CST').AsString = '')
      Then
      Begin

        // TEM ESSE COMANDO PARA SEPARAR UM PRODUTO DE OUTRO
        XLinha := '';
        // GRAVA DADOS
        Write(XErros, XLinha);

        // verifica se eh necessario rgistrar o nome do produto no arquivo TXT. Se XLibera estiver valendo '1' eh pq eh necessario registrar produto
        RegistraProdutoTXT(XProduto, DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, DMESTOQUE.Alx.FieldByName('COD_SUBPRODUTO').AsString);
        // função usada para repassar ao arquivo TXT os dados invalidos
        EscreveTXT('   Código Situação Tributária', 'não encontrado no produto');
        XProduto := '1';
        Result := False;
      End
      Else
      Begin
        // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
        If (XProduto <> '1') and (XVerificado <> '1')
        Then
        Begin
          Result := True;
        End;
      End;
      { O NCM FOI COMENTADO ATÉ O USO DA NF ELETRONICA
        // Nomenclatura comum do Mercosul
        If (DMESTOQUE.Alx.FieldByName('NCM').AsString = '')
        Then Begin
        If XProduto = ''
        Then Begin
        // TEM ESSE COMANDO PARA SEPARAR UM PRODUTO DE OUTRO
        XLinha := '';
        // GRAVA DADOS
        Write(XErros, XLinha);
        End;

        // verifica se eh necessario rgistrar o nome do produto no arquivo TXT. Se XLibera estiver valendo '1' eh pq eh necessario registrar produto
        RegistraProdutoTXT(XProduto,DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString,DMESTOQUE.Alx.FieldByName('COD_SUBPRODUTO').AsString);
        // função usada para repassar ao arquivo TXT os dados invalidos
        EscreveTXT('   Nomenclatura Comum Mercosul(NCM)','não encontrado no produto');
        XProduto := '1';
        Result := false;
        End
        Else Begin
        // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
        If (XProduto <> '1') and (XVerificado <> '1')
        Then Begin
        Result := true;
        End;
        End;
      }
      // codigo unidade de venda
      If (DMESTOQUE.Alx.FieldByName('COD_UNIDVENDA').AsString = '')
      Then
      Begin
        If XProduto = ''
        Then
        Begin
          // TEM ESSECOMANDO PARA SEPARAR UM PRODUTO DE OUTRO
          XLinha := '';
          // GRAVA DADOS
          Write(XErros, XLinha);
        End;

        // verifica se eh necessario rgistrar o nome do produto no arquivo TXT. Se XLibera estiver valendo '1' eh pq eh necessario registrar produto
        RegistraProdutoTXT(XProduto, DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, DMESTOQUE.Alx.FieldByName('COD_SUBPRODUTO').AsString);
        // função usada para repassar ao arquivo TXT os dados invalidos
        EscreveTXT('   Cód. Unid. Venda', 'não encontrado no produto');
        XProduto := '1';
        Result := False;
      End
      Else
      Begin
        // se estiver valendo 1 eh pq jah foi encontrado produto com irregularidade. Caso a variavel naum tenha nenhum valor, eh permitido ela retornar TRUE
        If (XProduto <> '1') and (XVerificado <> '1')
        Then
        Begin
          Result := True;
        End;
      End;
    End
    Else
    Begin
      EscreveTXT('Notificação', 'O produto de Ctrl. Interno nº' + #39 + DMESTOQUE.Alx.FieldByName('CONTRINT').AsString + #39 + ' não possui descrição.');
    End;

    XProduto := '';
    // proximo item do pedido
    DMESTOQUE.Alx.Next;
  end;

  // fechando arquivo TXT
  CloseFile(XErros);

end;

// faz as verificações da nota fiscal e arquivo de relatorio
Function AnaliseDados(xTipo: String; XCod_pedido: Integer): Boolean;
begin

  If xTipo = 'PV'
  Then
  Begin
    // VERIFICA INFORMAÇÕES NECESSÁRIAS PARA CONTROLES DE CÁLCULOS FISCAIS
    If FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '') = True
    Then
    Begin
      // Localiza o caixa em questão para verificar se suas configurações são de Nota Fiscal
      If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString <> 'NF')
      Then
      Begin
        Result := True;
        Exit;
      End;
    End;

    // VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
    if FMenu.XPedFatura = ''
    then
    begin
      If FiltraTabela(DmSaida.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFISC', '', '(cod_pedido=' + #39 + IntToStr(XCod_pedido) + #39 + ')') = True
      Then
      Begin
        XExiste := True;
      End
      Else
      Begin
        XExiste := False;
      End;
    end
    else
    begin
      DMMACS.TAlx.Close;
      DMMACS.TAlx.SQL.Clear;
      DMMACS.TAlx.SQL.Add('select docfiscfatura.cod_docfiscal, docfiscfatura.cod_pedido from docfiscfatura');
      DMMACS.TAlx.SQL.Add('where docfiscfatura.cod_pedido in (' + FMenu.XPedFatura + ')');
      DMMACS.TAlx.Open;

      If FiltraTabela(DmSaida.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFISC', '', '(COD_DOCFISC=' + DMMACS.TAlx.FieldByName('COD_DOCFISCAL').AsString + ')') = True
      Then
      Begin
        XExiste := True;
      End
      Else
      Begin
        XExiste := False;
      End;

    end;
  End
  Else
  Begin
    // VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
    If FiltraTabela(DmServ.TFiscOrd, 'docfisord', 'cod_docfiscord', '', '(cod_ordem=' + #39 + IntToStr(XCod_pedido) + #39 + ')') = True
    Then
    Begin
      XExiste := True;
    End
    Else
    Begin
      XExiste := False;
    End;
  End;

  If ((FMenu.XNFe = 0) or (FMenu.XNFe = 1))
  then
  begin
    // faz a verificação completa da nota fiscal antes de ser impressa como dados do cliente, estado, cidade e produtos
    If Verifica_NotaFiscal(xTipo, XCod_pedido, XExiste) = False
    Then
    Begin
      Result := False;
      If Mensagem('   A T E N Ç Ã O   ', 'O pedido atual apresenta irregularidades que impedem a geração da nota fiscal. Deseja abrir o relatório ?', '', 2, 3, False, 'I') = 2
      Then
      Begin
        // se o arquivo jah existe eh repassado outro paramettro
        If XExiste = True
        Then
        Begin
          // se o arquivo existe o mesmo eh aberto para vizualização do usuario
          If FileExists('C:\MZR\Arquivos\Notas Fiscais\Erro Nota Fiscal.TXT') Then
            ShellExecute(Application.HANDLE, 'open', PChar('C:\MZR\Arquivos\Notas Fiscais\Erro Nota Fiscal.TXT'), nil, nil, SW_SHOWNORMAL);
        End
        Else
        Begin
          // se o arquivo existe o mesmo eh aberto para vizualização do usuario
          If FileExists('C:\MZR\Arquivos\Notas Fiscais\Erro Pedido.TXT') Then
            ShellExecute(Application.HANDLE, 'open', PChar('C:\MZR\Arquivos\Notas Fiscais\Erro Pedido.TXT'), nil, nil, SW_SHOWNORMAL);
        End;
      End;
      Result := False;
    End
    Else
    Begin
      Result := True;
    End;
  end;
end;

// Função utilizada para recalcular os impostos fiscais de pedido de venda ou odem de serviço
// XTipo (PV Pedido de Venda, OS Ordem de Serviço), XCodigo (Codigo chave primaria da tabela)
Function RecalcFiscal(xTipo: String; XCodigo: Integer): Boolean;
Var
  XVlrIcmsSub: Real; // Variavel para acumular Valores de Icms de Substituição Tributaria;
  XBaseIcms: Real; // armazena valor de base de icms para produto que nao tiverem substituição tributaria
  XValorTotICMSST: Real; // - 30/03/2009: armanzena valor total dos produtos ST
  XDadosAdicionais, XDadosAdicionais2: String;
  xbasest, xvlrst: Real; // - 14/04/2009: variáveis que armazenam o valor da base e valor de substituição para nota fiscal da mercescan
Begin
  Try
    XCalcImpostos := 1;
    // Verifica se todas as informações necessárias para recálculo estão configuradas
    // Caso não esteja emite relatório
    DeleteFile('C:\MZR\Arquivos\Notas Fiscais\Erro Nota Fiscal.TXT');
    DeleteFile('C:\MZR\Arquivos\Notas Fiscais\Erro Pedido.TXT');
    // verifica se já existe documento fiscal e valida informações
    If AnaliseDados(xTipo, XCodigo) = False
    Then
    Begin
      Result := False;
      Exit;
    End
    Else
    Begin
      If xTipo = 'PV'
      Then
      Begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('  select * FROM docfissaida ');
        DMESTOQUE.Alx.SQL.Add('  left join pedvenda on docfissaida.cod_pedido = pedvenda.cod_pedvenda ');
        DMESTOQUE.Alx.SQL.Add('   WHERE pedvenda.cod_pedvenda=:codigo ');
        DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCodigo;
        DMESTOQUE.Alx.Open;
        If not DMESTOQUE.Alx.IsEmpty
        Then
        Begin
          DMESTOQUE.TCFOP.Close;
          DMESTOQUE.TCFOP.SQL.Clear;
          DMESTOQUE.TCFOP.SQL.Add('SELECT * FROM CFOP WHERE CFOP.COD_CFOP=:CODIGO');
          DMESTOQUE.TCFOP.ParamByName('CODIGO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_CFOP').AsInteger;
          DMESTOQUE.TCFOP.Open;
          If DMESTOQUE.TCFOP.IsEmpty
          Then
          Begin
            if FMenu.XNFe = 0 Then
              MessageDlg('Informe CFOP para continuar', mtWarning, [mbOK], 0);
          End
          Else
          Begin
            If (DMESTOQUE.TCFOP.FieldByName('NCI').AsString = '1')
            Then
            Begin
              MessageDlg('CFOP marcada para não calcular impostos, informar manualmente!', mtWarning, [mbOK], 0);
              XCalcImpostos := 0;
            end;
          End;
        End;
      End;
      If XCalcImpostos = 1
      Then
      Begin
        // Inicializa as variaveis com valor zero
        XVlrIcms := 0;
        XVlrIcmsSub := 0;
        XBaseSubs := 0;
        XVlrICMS_Subs := 0;
      End;

      // VERIFICA INFORMAÇÕES NECESSÁRIAS PARA CONTROLES DE CÁLCULOS FISCAIS
      If FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '') = True
      Then
      Begin
        // Localiza o caixa em questão para verificar se suas configurações são de Nota Fiscal
        // - 13/03/2009:
        If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString = 'NF') OR
          ((DMCAIXA.TCaixa.FieldByName('tipocupom').AsString = 'ECF') And (DMCAIXA.TCaixa.FieldByName('EMITNF').AsString = '1'))
        Then
        begin
          // realiza os primeiros calculos em cada item de pedido de venda ou ordem de servico
          If CalculaProdutos(XCodigo, xTipo) = False
          Then
          Begin
            Result := False;
            Exit;
          End;
          // totalizando os valores fiscais
          If xTipo = 'PV'
          Then
          Begin
            // busca todos os dados fiscais do pedido de venda
            DmSaida.TFiscPV.Close;
            DmSaida.TFiscPV.SQL.Clear;
            if FMenu.XPedFatura = ''
            then
            begin
              DmSaida.TFiscPV.SQL.Add('select * from docfissaida where docfissaida.cod_pedido = :codigo');
              DmSaida.TFiscPV.ParamByName('codigo').AsInteger := XCodigo;
            end
            else
            begin
              DMEntrada.TAlx.Close;
              DMEntrada.TAlx.SQL.Clear;
              DMEntrada.TAlx.SQL.Add('select docfiscfatura.cod_docfiscal from docfiscfatura');
              DMEntrada.TAlx.SQL.Add('where docfiscfatura.cod_pedido in (' + FMenu.XPedFatura + ')');
              DMEntrada.TAlx.Open;

              DmSaida.TFiscPV.SQL.Add('select * from docfissaida where docfissaida.cod_docfisc=' + DMEntrada.TAlx.FieldByName('cod_docfiscal').AsString);
            end;
            DmSaida.TFiscPV.Open;

            If XCalcImpostos = 1
            Then
            Begin
              // ZERA VALORES FISCAIS
              DmSaida.TFiscPV.Edit;
              DmSaida.TFiscPV.FieldByName('BASEICMS').AsCurrency := 0;
              DmSaida.TFiscPV.FieldByName('vlricms').AsCurrency := 0;
              DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency := 0;
              DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := 0;
              DmSaida.TFiscPV.Post;

              XDadosAdicionais := '';
              XDadosAdicionais2 := '';

              // busca dados fiscais do pedido de venda ou ordem de servico
              BuscaDadosFiscais(xTipo, XCodigo);

              // - 30/03/2009:  busca total do valor dos produtos com ST
              DMESTOQUE.Alx1.Close;
              DMESTOQUE.Alx1.SQL.Clear;
              DMESTOQUE.Alx1.SQL.Add('select sum(itenspedven.valortotal) as TOTAL from  itenspedven');
              DMESTOQUE.Alx1.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
              DMESTOQUE.Alx1.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
              DMESTOQUE.Alx1.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst ');

              if FMenu.XPedFatura = ''
              then
              begin
                DMESTOQUE.Alx1.SQL.Add(' where itenspedven.cod_pedven = :Codigo and cst.substituicao = :CODSUBS');
                DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := XCodigo;
              end
              else
              begin
                DMESTOQUE.Alx1.SQL.Add(' where itenspedven.cod_pedven in(' + FMenu.XPedFatura + ') and cst.substituicao = :CODSUBS');
              end;
              // DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsInteger;
              DMESTOQUE.Alx1.ParamByName('CODSUBS').AsString := '1';
              DMESTOQUE.Alx1.Open;

              XValorTotICMSST := DMESTOQUE.Alx1.FieldByName('TOTAL').AsCurrency;

              // TOTAIS DOS ITENS
              DMESTOQUE.Alx3.Close;
              DMESTOQUE.Alx3.SQL.Clear;
              DMESTOQUE.Alx3.SQL.Add(' select sum(itenspedven.valortotal) AS TOTAL_ITENS, sum(itenspedven.vlripi) as TOTAL_IPI, ');
              DMESTOQUE.Alx3.SQL.Add(' SUM(itenspedven.BASEICMS) AS TOTAL_BASEICMS, SUM(itenspedven.VLRICMS) AS TOTAL_ICMS, ');
              DMESTOQUE.Alx3.SQL.Add(' SUM(itenspedven.BASEICMSSUBS) AS TOTAL_BASEST, SUM(itenspedven.VLRICMSSUBS) AS TOTAL_ST from itenspedven ');
              DMESTOQUE.Alx3.SQL.Add(' left join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
              DMESTOQUE.Alx3.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
              DMESTOQUE.Alx3.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst ');

              if FMenu.XPedFatura = ''
              then
              begin
                DMESTOQUE.Alx3.SQL.Add(' Where (itenspedven.cod_pedven = :codigo) ');
                DMESTOQUE.Alx3.ParamByName('codigo').AsInteger := XCodigo;
              end
              else
              begin
                DMESTOQUE.Alx3.SQL.Add('Where itenspedven.cod_pedven in (' + FMenu.XPedFatura + ')');
              end;

              DMESTOQUE.Alx3.Open;

              // EFETUA CALCULO FISCAL PARA O TOTAL DA NF

              // CALCULA ICMS DE OPERAÇÃO
              DMFINANC.TAlx.Close;
              DMFINANC.TAlx.SQL.Clear;
              DMFINANC.TAlx.SQL.Add(' select sum(itenspedven.valortotal) AS TOTAL_ITENS, sum(itenspedven.vlripi) as TOTAL_IPI from itenspedven ');
              DMFINANC.TAlx.SQL.Add(' left join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
              DMFINANC.TAlx.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
              DMFINANC.TAlx.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst ');

              if FMenu.XPedFatura = ''
              then
              begin
                DMFINANC.TAlx.SQL.Add(' Where (itenspedven.cod_pedven = :codigo) ');
                DMFINANC.TAlx.ParamByName('codigo').AsInteger := XCodigo;
              end
              else
              begin
                DMFINANC.TAlx.SQL.Add('Where itenspedven.cod_pedven in (' + FMenu.XPedFatura + ')');
              end;

              DMFINANC.TAlx.Open;

              XVlrTotNota := DMESTOQUE.Alx3.FieldByName('TOTAL_ITENS').AsCurrency;

              If XDestSuframa
              Then
              Begin
                // - 30/03/2009:    se possuir codigo no suframa não calcular IPI
                DmSaida.TFiscPV.Edit;
                DmSaida.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency := 0;
                DmSaida.TFiscPV.Post;
              End
              Else
              Begin
                // - 30/03/2009:    grava total de IPI dos produtos
                DmSaida.TFiscPV.Edit;
                DmSaida.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency := DMESTOQUE.Alx3.FieldByName('TOTAL_IPI').AsCurrency;
                DmSaida.TFiscPV.Post;
              End;


              // ------------------


              // CALCULA PARA PRODUTOS COM SUBSTITUIÇÃO TRIBUTÁRIO
              // If XValorTotICMSST > 0
              // Then Begin
              // DMSAIDA.TFiscPV.Edit;
              // DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := (XValorTotICMSST * XMva)/100;
              // DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := (((DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency + XValorTotICMSST) * XAliqInternaEstDest)/100) - DMSAIDA.TItemPV.FieldByName('vlricms').AsCurrency;
              // DMSAIDA.TFiscPV.Post;
              // End;

              // End
              // Else Begin
              // ----------------------
              // - 07/04/2009: verifica se estado de destino é isento de ST
              FiltraTabela(DMGeografia.TEstado, 'ESTADO', 'UF_ESTADO', FMenu.XEstadoDestino, '');

              If Not DMFINANC.TAlx.IsEmpty
              Then
              Begin

                // - 30/03/2009: industria para industrica
                If ((XEmitIndustria) And (XDestIndustria))
                Then
                Begin
                  If (FMenu.XTributaEmpresa = 'SIMPLES')
                  Then
                  Begin
                    // - 30/03/2009: calcula ICMS Operação Proprio
                    DmSaida.TFiscPV.Edit;
                    // DMSAIDA.TFiscPV.FieldByName('BASEICMS').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency;
                    DmSaida.TFiscPV.FieldByName('BASEICMS').AsCurrency := DMESTOQUE.Alx3.FieldByName('TOTAL_BASEICMS').AsCurrency;
                    DmSaida.TFiscPV.FieldByName('vlricms').AsCurrency := (DmSaida.TFiscPV.FieldByName('BASEICMS').AsCurrency * DMMACS.TEmpresa.FieldByName('ALIQICMS').AsCurrency) / 100;
                    DmSaida.TFiscPV.Post;
                  End
                  Else If (FMenu.XTributaEmpresa = 'NORMAL')
                  Then
                  Begin
                    DmSaida.TFiscPV.Edit;
                    // DMSAIDA.TFiscPV.FieldByName('BASEICMS').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency;
                    DmSaida.TFiscPV.FieldByName('BASEICMS').AsCurrency := DMESTOQUE.Alx3.FieldByName('TOTAL_BASEICMS').AsCurrency;
                    DmSaida.TFiscPV.FieldByName('vlricms').AsCurrency := (DmSaida.TFiscPV.FieldByName('BASEICMS').AsCurrency * XAliqInterEstDest) / 100;
                    DmSaida.TFiscPV.Post;
                  End;

                End
                // - 30/03/2009: industria p/ nao industria
                Else If ((XEmitIndustria) And (not XDestIndustria))
                Then
                Begin

                  If (FMenu.XTributaEmpresa = 'SIMPLES')
                  Then
                  Begin
                    // - 30/03/2009: calcula ICMS Operação Proprio
                    DmSaida.TFiscPV.Edit;
                    // DMSAIDA.TFiscPV.FieldByName('BASEICMS').AsCurrency := XValorTotICMSST; //DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency;
                    DmSaida.TFiscPV.FieldByName('BASEICMS').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency;
                    DmSaida.TFiscPV.FieldByName('vlricms').AsCurrency := (DmSaida.TFiscPV.FieldByName('BASEICMS').AsCurrency * DMMACS.TEmpresa.FieldByName('ICMS').AsCurrency) / 100;
                    DmSaida.TFiscPV.Post;
                  End
                  Else If (FMenu.XTributaEmpresa = 'NORMAL')
                  Then
                  Begin
                    DmSaida.TFiscPV.Edit;
                    // DMSAIDA.TFiscPV.FieldByName('BASEICMS').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency;
                    DmSaida.TFiscPV.FieldByName('BASEICMS').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency;
                    DmSaida.TFiscPV.FieldByName('vlricms').AsCurrency := (DmSaida.TFiscPV.FieldByName('BASEICMS').AsCurrency * XAliqInterEstDest) / 100;
                    DmSaida.TFiscPV.Post;
                  End;

                End
                Else
                Begin
                  // NORMAL PARA NORMAL
                  // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
                  If (FMenu.XTributaEmpresa = 'NORMAL') and (FMenu.XTributaCliente = '1')
                  Then
                  Begin
                    // Calcula somente fora do estado
                    If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
                    Then
                    Begin
                      DmSaida.TFiscPV.Edit;
                      // DMSAIDA.TFiscPV.FieldByName('BASEICMS').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency;
                      DmSaida.TFiscPV.FieldByName('BASEICMS').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency;
                      DmSaida.TFiscPV.FieldByName('vlricms').AsCurrency := (DmSaida.TFiscPV.FieldByName('BASEICMS').AsCurrency * XAliqInterEstDest) / 100;
                      DmSaida.TFiscPV.Post;
                    End;
                  End;

                  If (FMenu.XTributaEmpresa = 'SIMPLES')
                  Then
                  Begin
                    If DMESTOQUE.Alx3.FieldByName('TOTAL_BASEICMS').AsCurrency > 0
                    Then
                    Begin
                      IF Trim(XDadosAdicionais) <> '' Then
                        XDadosAdicionais := XDadosAdicionais + #13;

                      XDadosAdicionais := XDadosAdicionais + 'B.C. ICMS Operação: R$ ' + FormatFloat('#,##0.00', DMESTOQUE.Alx3.FieldByName('TOTAL_BASEICMS').AsCurrency) + #13 + 'Vlr ICMS Operação: R$ ' + FormatFloat('#,##0.00', DMESTOQUE.Alx3.FieldByName('TOTAL_ICMS').AsCurrency);
                    End;
                  End;
                End;
              End;

              // CALCULA ICMS DE SUBSTITUIÇÃO TRIBUTÁRIA
              DMFINANC.TAlx.Close;
              DMFINANC.TAlx.SQL.Clear;
              DMFINANC.TAlx.SQL.Add(' select sum(itenspedven.valortotal) AS TOTAL_ITENS from itenspedven ');
              DMFINANC.TAlx.SQL.Add(' left join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
              DMFINANC.TAlx.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
              DMFINANC.TAlx.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst ');

              if FMenu.XPedFatura = ''
              then
              begin
                DMFINANC.TAlx.SQL.Add(' Where (cst.substituicao='#39 + '1' + #39 + ') and (itenspedven.cod_pedven = :codigo) ');
                DMFINANC.TAlx.ParamByName('codigo').AsInteger := XCodigo;
              end
              else
              begin
                DMFINANC.TAlx.SQL.Add('Where (cst.substituicao='#39 + '1' + #39 + ') and (itenspedven.cod_pedven in (' + FMenu.XPedFatura + '))');
              end;

              DMFINANC.TAlx.Open;
              If Not DMFINANC.TAlx.IsEmpty
              Then
              Begin
                // - 30/03/2009: industria para industrica
                If ((XEmitIndustria) And (XDestIndustria))
                Then
                Begin
                  // - 30/03/2009: calcula ICMS ST
                  DmSaida.TFiscPV.Edit;
                  DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency := 0;
                  DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := 0;
                  DmSaida.TFiscPV.Post;

                End
                // - 30/03/2009: industria p/ nao industria
                Else If ((XEmitIndustria) And (not XDestIndustria))
                Then
                Begin
                  If DMGeografia.TEstado.FieldByName('ISENTOST').AsString <> '1'
                  Then
                  Begin
                    If (FMenu.XTributaEmpresa = 'SIMPLES')
                    Then
                    Begin
                      // - 30/03/2009: calcula ICMS ST
                      DmSaida.TFiscPV.Edit;
                      // DMSAIDA.TFiscPV.FieldByName('bascalsubs').AsCurrency := (((DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency + DMSAIDA.TFiscPV.FieldByName('vlroutrasdesp').AsCurrency + DMSAIDA.TFiscPV.FieldByName('vlrseg').AsCurrency + DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency + DMSAIDA.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency) * XMva)/100) + DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency ;
                      DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency := DMESTOQUE.Alx3.FieldByName('TOTAL_BASEST').AsCurrency;
                      // + ((( DMSAIDA.TFiscPV.FieldByName('vlroutrasdesp').AsCurrency + DMSAIDA.TFiscPV.FieldByName('vlrseg').AsCurrency + DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency + DMSAIDA.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency) * XMva)/100) + DMESTOQUE.Alx3.fieldByName('TOTAL_BASEST').AsCurrency ;
                      If DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency > 0
                      Then
                      Begin
                        DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := ((DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency * XAliqInternaEstDest) / 100) - DmSaida.TFiscPV.FieldByName('vlricms').AsCurrency;
                      End
                      Else
                      Begin
                        DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := 0;
                      End;
                      DmSaida.TFiscPV.Post;
                    End
                    Else If (FMenu.XTributaEmpresa = 'NORMAL')
                    Then
                    Begin
                      DmSaida.TFiscPV.Edit;
                      // DMSAIDA.TFiscPV.FieldByName('bascalsubs').AsCurrency := (((DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency + DMSAIDA.TFiscPV.FieldByName('vlroutrasdesp').AsCurrency + DMSAIDA.TFiscPV.FieldByName('vlrseg').AsCurrency + DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency + DMSAIDA.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency) * XMva)/100) + DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency + DMSAIDA.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency;
                      DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency :=
                        (((DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency + DmSaida.TFiscPV.FieldByName('vlroutrasdesp').AsCurrency + DmSaida.TFiscPV.FieldByName('vlrseg').AsCurrency + DmSaida.TFiscPV.FieldByName('VLRFRETE').AsCurrency + DmSaida.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency) *
                        XMva) / 100) + DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency + DmSaida.TFiscPV.FieldByName('vlroutrasdesp').AsCurrency + DmSaida.TFiscPV.FieldByName('vlrseg').AsCurrency + DmSaida.TFiscPV.FieldByName('VLRFRETE').AsCurrency + DmSaida.TFiscPV.FieldByName('VLRTOTIPI')
                        .AsCurrency;

                      If DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency > 0
                      Then
                        DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := ((DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency * XAliqInternaEstDest) / 100) - DmSaida.TFiscPV.FieldByName('vlricms').AsCurrency
                      Else
                        DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := 0;

                      DmSaida.TFiscPV.Post;
                    End;
                  End
                  Else
                  Begin
                    // - 30/03/2009: ESTADO É ISENTO ST NÃO CALCULA ST
                    DmSaida.TFiscPV.Edit;
                    DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency := 0;
                    DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := 0;
                    DmSaida.TFiscPV.Post;
                  End;
                End
                Else
                Begin
                  // Efetua calculos de acordo com a tributação da empresa
                  // SIMPLES P SIMPLES
                  // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
                  If (FMenu.XTributaEmpresa = 'SIMPLES') And (FMenu.XTributaCliente = '1') And (not XDestIndustria)
                  Then
                  Begin
                    If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'SEMENTES')
                    Then
                    Begin
                      /// Calcula somente fora do estado
                      If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
                      Then
                      Begin

                        DmSaida.TFiscPV.Edit;
                        DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency := ((DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency) * XMva) / 100;
                        DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency;
                        DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := (DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency * XAliqInternaEstDest) / 100;

                        if DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency > 0 Then
                          DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency - DMESTOQUE.Alx3.FieldByName('TOTAL_ICMS').AsCurrency;

                        DmSaida.TFiscPV.Post;

                      End;
                    End
                    Else
                    Begin
                      DmSaida.TFiscPV.Edit;
                      DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency := DMESTOQUE.Alx3.FieldByName('TOTAL_BASEST').AsCurrency;
                      DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := DMESTOQUE.Alx3.FieldByName('TOTAL_ST').AsCurrency;

                      // if DMSAIDA.TFiscPV.FieldByName('vlricmsubs').AsCurrency > 0 Then
                      // DMSAIDA.TFiscPV.FieldByName('vlricmsubs').AsCurrency := DMSAIDA.TFiscPV.FieldByName('vlricmsubs').AsCurrency - DMESTOQUE.Alx3.fieldByName('TOTAL_ICMS').AsCurrency;

                      DmSaida.TFiscPV.Post;

                    End; {
                      End
                      Else Begin

                      {
                      // - 04/04/2009:  calcula media de base ST e media de valor ST a partir do estoque para informar em dados adicionais
                      // ST COMPRAA
                      DMESTOQUE.Alx5.Close;
                      DMESTOQUE.Alx5.SQL.Clear;
                      DMESTOQUE.Alx5.SQL.Add('select sum(estoque.mediabaseicmst * itenspedven.qtdeprod) as VALOR_BASEST, sum(estoque.mediavlricmst * itenspedven.qtdeprod) as VALOR_ST');
                      DMESTOQUE.Alx5.SQL.Add('from estoque, itenspedven');
                      DMESTOQUE.Alx5.SQL.Add('WHERE estoque.cod_estoque = itenspedven.cod_estoque AND itenspedven.cod_pedven = :CODIGO');

                      if FMenu.XPedFatura = ''
                      then begin
                      DMESTOQUE.Alx5.ParamByName('CODIGO').AsInteger := XCodigo;
                      end
                      else begin
                      DMESTOQUE.Alx5.ParamByName('CODIGO').AsString := FMenu.XPedFatura;
                      end;
                      DMESTOQUE.Alx5.Open;

                      If ((not DMESTOQUE.Alx5.IsEmpty) and (DMESTOQUE.Alx5.FieldByName('VALOR_BASEST').AsCurrency > 0))
                      Then Begin
                      DMSAIDA.TFiscPV.Edit;
                      DMSAIDA.TFiscPV.FieldByName('obs2').AsString := 'B/C ST: R$ ' + FormatFloat('#,##0.00', DMESTOQUE.Alx5.FieldByName('VALOR_BASEST').AsCurrency) + #13 + 'Valor ST: R$ ' + FormatFloat('#,##0.00', DMESTOQUE.Alx5.FieldByName('VALOR_ST').AsCurrency) + #13;
                      DMSAIDA.TFiscPV.Post;
                      End;
                      End; }
                  End;

                  // SIMPLES P NORMAL
                  // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
                  If (FMenu.XTributaEmpresa = 'SIMPLES') And (FMenu.XTributaCliente = '1') And (not XDestIndustria)
                  Then
                  Begin
                    // Calcula somente fora do estado
                    If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
                    Then
                    Begin
                      DmSaida.TFiscPV.Edit;
                      // DMSAIDA.TFiscPV.FieldByName('bascalsubs').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency+((DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency * XMva)/100);
                      DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency := DMESTOQUE.Alx3.FieldByName('TOTAL_BASEST').AsCurrency;
                      DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := (DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency * XAliqInternaEstDest) / 100;

                      if DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency > 0 Then
                        DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency - DMESTOQUE.Alx3.FieldByName('TOTAL_ICMS').AsCurrency;

                      DmSaida.TFiscPV.Post;
                    End;
                  End;
                  // NORMAL P NORMAL
                  // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
                  If (FMenu.XTributaEmpresa = 'NORMAL') And (FMenu.XTributaCliente = '1')
                  Then
                  Begin
                    // Calcula somente fora do estado
                    If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
                    Then
                    Begin
                      DmSaida.TFiscPV.Edit;
                      // DMSAIDA.TFiscPV.FieldByName('bascalsubs').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency+((DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency * XMva)/100);
                      DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency := DMESTOQUE.Alx3.FieldByName('TOTAL_BASEST').AsCurrency; // + ((DMESTOQUE.Alx3.fieldByName('TOTAL_BASEST').AsCurrency * XMva)/100);
                      DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := ((DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency * XAliqInternaEstDest) / 100) - DmSaida.TFiscPV.FieldByName('vlricms').AsCurrency;
                      DmSaida.TFiscPV.Post;
                    End;
                  End;
                End;
              End;
            End;

            If DmSaida.TFiscPV.FieldByName('vlroutrasdesp').AsCurrency > 0
            Then
            Begin
              IF Trim(XDadosAdicionais) <> '' Then
                XDadosAdicionais := XDadosAdicionais + #13;
              XDadosAdicionais := XDadosAdicionais + 'DESPESA ACESSORIA RELATIVA A TAXA BANCARIA';
            End;

            {
              If DMSAIDA.TFiscPV.FieldByName('QUANTFRETE').AsCurrency > 0
              Then Begin
              IF Trim(XDadosAdicionais) <> '' Then
              XDadosAdicionais := XDadosAdicionais + #13;
              XDadosAdicionais := XDadosAdicionais + DMSAIDA.TFiscPV.FieldByName('QUANTFRETE').AsString + ' ' + DMSAIDA.TFiscPV.FieldByName('ESPECIEFRETE').AsString;

              End; }

            // XDadosAdicionais := 'B.C. ICMS Operação ' + DMSAIDA.TFiscPV.FieldByName('BASEICMS').AsString + #13 + 'Vlr ICMS Operação ' + DMSAIDA.TFiscPV.FieldByName('vlricms').AsString;

            // - 30/03/2009:SE EMPRESA FOR SIMPLES verificar se há produtos Totalmente Tributados (000)
            If XCalcImpostos = 1
            Then
            Begin
              If (FMenu.XTributaEmpresa = 'SIMPLES')
              Then
              Begin
                IF XDadosAdicionais2 <> '' Then
                  XDadosAdicionais2 := XDadosAdicionais2 + #13;

                // - 08/04/2009: se estdo for isento de ST permitir credito de todos os produtos
                If DMGeografia.TEstado.FieldByName('ISENTOST').AsString = '1'
                Then
                Begin
                  if (DmSaida.WPedV.FieldByName('valor').AsCurrency > 0)
                  Then
                  Begin
                    IF XDadosAdicionais2 <> '' Then
                      XDadosAdicionais2 := XDadosAdicionais2 + #13;
                    XDadosAdicionais2 := XDadosAdicionais2 + ' -Permite aproveit. crédito de ICMS valor de R$ ' + FormatFloat('#,##0.00', (DmSaida.WPedV.FieldByName('valor').AsCurrency * DMMACS.TEmpresa.FieldByName('ALIQICMS').AsCurrency) / 100) + ' corresp. aliq. ' +
                      DMMACS.TEmpresa.FieldByName('ALIQICMS').AsString + '% nos termos Art. 23LC123/2006.'
                  End;
                End
                Else
                Begin
                  DMESTOQUE.Alx1.Close;
                  DMESTOQUE.Alx1.SQL.Clear;
                  DMESTOQUE.Alx1.SQL.Add('select sum(itenspedven.valortotal) as TOTAL from  itenspedven');
                  DMESTOQUE.Alx1.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
                  DMESTOQUE.Alx1.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
                  DMESTOQUE.Alx1.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst ');

                  if FMenu.XPedFatura = ''
                  then
                  begin
                    DMESTOQUE.Alx1.SQL.Add(' where itenspedven.cod_pedven = :Codigo and cst.cod_sit_trib = :CODSUBS');
                    DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := XCodigo;
                  end
                  else
                  begin
                    DMESTOQUE.Alx1.SQL.Add(' where itenspedven.cod_pedven in (' + FMenu.XPedFatura + ') and cst.cod_sit_trib = :CODSUBS');
                  end;
                  // DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsInteger;
                  DMESTOQUE.Alx1.ParamByName('CODSUBS').AsString := '000';
                  DMESTOQUE.Alx1.Open;

                  If (not DMESTOQUE.Alx1.IsEmpty)
                  Then
                  Begin
                    If ((XEmitIndustria) And (XDestIndustria))
                    Then
                    Begin // - 30/03/2009:       industria p/ industria calcular sobre total dos produtos
                      if (DmSaida.WPedV.FieldByName('valor').AsCurrency > 0)
                      Then
                      Begin
                        IF XDadosAdicionais2 <> '' Then
                          XDadosAdicionais2 := XDadosAdicionais2 + #13;
                        XDadosAdicionais2 := XDadosAdicionais2 + ' -Permite aproveit. crédito de ICMS valor de R$ ' + FormatFloat('#,##0.00', (DmSaida.WPedV.FieldByName('valor').AsCurrency * DMMACS.TEmpresa.FieldByName('ALIQICMS').AsCurrency) / 100) + ' corresp. aliq. ' +
                          DMMACS.TEmpresa.FieldByName('ALIQICMS').AsString + '% nos termos Art. 23LC123/2006.'
                      End;
                    End
                    Else
                    Begin
                      if (DMESTOQUE.Alx1.FieldByName('TOTAL').AsCurrency > 0)
                      Then
                      Begin
                        IF XDadosAdicionais2 <> '' Then
                          XDadosAdicionais2 := XDadosAdicionais2 + #13;
                        XDadosAdicionais2 := XDadosAdicionais2 + '-Permite aproveit. crédito de ICMS valor de R$ ' + FormatFloat('#,##0.00', (DMESTOQUE.Alx1.FieldByName('TOTAL').AsCurrency * DMMACS.TEmpresa.FieldByName('ALIQICMS').AsCurrency) / 100) + ' corresp. aliq. ' +
                          DMMACS.TEmpresa.FieldByName('ALIQICMS').AsString + '% nos termos Art. 23LC123/2006.';
                      End;
                    End;
                  End;
                End;
              End; //

              // - 08/04/2009:  se em empresa estiver marcado para  nao calcular imposto
              If DMMACS.TEmpresa.FieldByName('NCI').AsString = '1'
              Then
              Begin
                // - 08/04/2009: zerar todos os valores de imposto
                DmSaida.TFiscPV.Edit;
                DmSaida.TFiscPV.FieldByName('bascalsubs').AsCurrency := 0;
                DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency := 0;
                DmSaida.TFiscPV.FieldByName('BASEICMS').AsCurrency := 0;
                DmSaida.TFiscPV.FieldByName('vlricms').AsCurrency := 0;
                DmSaida.TFiscPV.Post;
              End;

              if FMenu.XPedFatura = ''
              then
              begin // se vem do pedido de venda

                If (FMenu.XTributaEmpresa = 'SIMPLES')
                Then
                Begin
                  If Trim(XDadosAdicionais2) <> '' Then
                    XDadosAdicionais2 := XDadosAdicionais2 + #13;
                  XDadosAdicionais2 := XDadosAdicionais2 + '-Doc. emitido por empresa optante pelo Simples Nacional.';
                End;

                If (DMMACS.TEmpresa.FieldByName('NCI').AsString <> '1')
                Then
                Begin
                  FiltraTabela(DMGeografia.TEstado, 'ESTADO', 'UF_ESTADO', FMenu.XEstadoDestino, '');

                  XDadosAdicionais2 := XDadosAdicionais2 + #13 + '-' + DMGeografia.TEstado.FieldByName('TXT_SUBSTITUICAO').AsString;
                End;
                // XEstadoDestino

                // - 30/03/2009: industria para industrica
                If ((XEmitIndustria) And (XDestIndustria))
                Then
                Begin
                  DmSaida.TFiscPV.Edit;
                  DmSaida.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency := DmSaida.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency + DmSaida.TFiscPV.FieldByName('vlroutrasdesp').AsCurrency + DmSaida.TFiscPV.FieldByName('vlrseg').AsCurrency + DmSaida.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency;
                  If DmSaida.TFiscPV.FieldByName('FRETECOMP').AsString = '1' Then
                    DmSaida.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency := DmSaida.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency + DmSaida.TFiscPV.FieldByName('vlrfrete').AsCurrency;

                  // If (Fmenu.XTributaEmpresa='SIMPLES')
                  // Then Begin
                  // DMSAIDA.TFiscPV.FieldByName('obs').AsString :=  XDadosAdicionais;// + 'B.C. ICMS Operação: R$ ' + DMSAIDA.TFiscPV.FieldByName('BASEICMS').AsString + #13 + 'Vlr ICMS Operação: R$ ' + DMSAIDA.TFiscPV.FieldByName('vlricms').AsString;;
                  // End;
                  DmSaida.TFiscPV.Post;

                  IF Trim(XDadosAdicionais) <> '' Then
                    XDadosAdicionais := XDadosAdicionais + #13;

                  XDadosAdicionais := XDadosAdicionais + 'Mercadoria destinada Industria p/ Industria.';

                End
                // - 30/03/2009: industria p/ nao industria
                Else If ((XEmitIndustria) And (not XDestIndustria))
                Then
                Begin
                  DmSaida.TFiscPV.Edit;
                  DmSaida.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency := DmSaida.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency + DmSaida.TFiscPV.FieldByName('vlroutrasdesp').AsCurrency + DmSaida.TFiscPV.FieldByName('vlrseg').AsCurrency + DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency +
                    DmSaida.TFiscPV.FieldByName('VLRTOTIPI').AsCurrency;
                  If DmSaida.TFiscPV.FieldByName('FRETECOMP').AsString = '1' Then
                    DmSaida.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency := DmSaida.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency + DmSaida.TFiscPV.FieldByName('vlrfrete').AsCurrency;

                  If (FMenu.XTributaEmpresa = 'SIMPLES')
                  Then
                  Begin
                    // - 04/04/2009: se estdo no for isento mostr msg em ddos dicionis
                    If DMGeografia.TEstado.FieldByName('ISENTOST').AsString <> '1' Then
                      XDadosAdicionais := XDadosAdicionais + 'B.C. ICMS Operação: R$ ' + DmSaida.TFiscPV.FieldByName('BASEICMS').AsString + #13 + 'Vlr ICMS Operação: R$ ' + DmSaida.TFiscPV.FieldByName('vlricms').AsString;
                    // - 08/04/2009: zerar valorres de Operação para que soh apareção nos dados adicionais (neste cadso icms de op nao vai destacado nos campos correspondentes)
                    DmSaida.TFiscPV.FieldByName('BASEICMS').AsCurrency := 0;
                    DmSaida.TFiscPV.FieldByName('vlricms').AsCurrency := 0;
                  End;
                  DmSaida.TFiscPV.Post;
                End
                Else
                Begin
                  DmSaida.TFiscPV.Edit;
                  DmSaida.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency := DmSaida.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency + DmSaida.TFiscPV.FieldByName('vlroutrasdesp').AsCurrency + DmSaida.TFiscPV.FieldByName('vlrseg').AsCurrency + DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency;
                  If DmSaida.TFiscPV.FieldByName('FRETECOMP').AsString = '1' Then
                    DmSaida.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency := DmSaida.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency + DmSaida.TFiscPV.FieldByName('vlrfrete').AsCurrency;
                  DmSaida.TFiscPV.Post;
                End;

                // - 13/04/2009: se estiver marcado para gerar dados adicionais
                If DmSaida.TFiscPV.FieldByName('GERARDADOSADIC').AsString <> '1'
                Then
                Begin
                  DmSaida.TFiscPV.Edit;
                  DmSaida.TFiscPV.FieldByName('obS').AsString := XDadosAdicionais;
                  DmSaida.TFiscPV.FieldByName('obs2').AsString := XDadosAdicionais2;
                  DmSaida.TFiscPV.Post;
                End;

              end
              else
              begin // se vem do faturar calculo de soma de produtos diferenciado

                DmSaida.TFiscPV.Edit;
                DmSaida.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency := XVlrTotNota + DmSaida.TFiscPV.FieldByName('vlroutrasdesp').AsCurrency + DmSaida.TFiscPV.FieldByName('vlrseg').AsCurrency + DmSaida.TFiscPV.FieldByName('vlricmsubs').AsCurrency;
                If DmSaida.TFiscPV.FieldByName('FRETECOMP').AsString = '1' Then
                  DmSaida.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency := DmSaida.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency + DmSaida.TFiscPV.FieldByName('vlrfrete').AsCurrency;
                DmSaida.TFiscPV.Post;

              end;
            End; // end para o xcalculo=1
          End
          Else
          Begin // começa recálculos para ordens de serviço

            // =================================================//
            // =============== O R D E M =======================//
            // =================================================//

            FiltraTabela(DmServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCodigo), '');

            // busca todos os dados fiscais do pedido da ordem
            DmServ.TFiscOrd.Close;
            DmServ.TFiscOrd.SQL.Clear;
            if FMenu.XPedFatura = ''
            Then
            begin
              DmServ.TFiscOrd.SQL.Add('select * from docfisord where docfisord.cod_ordem = :codigo');
              DmServ.TFiscOrd.ParamByName('codigo').AsInteger := XCodigo;
            end
            else
            begin
              // DMSAIDA.TFiscPV.SQL.Add('select * from docfissaida where docfissaida.cod_pedido  in ('+FMenu.XPedFatura+')');
            end;
            DmServ.TFiscOrd.Open;

            // ZERA VALORES FISCAIS
            DmServ.TFiscOrd.Edit;
            DmServ.TFiscOrd.FieldByName('BASEICMS').AsCurrency := 0;
            DmServ.TFiscOrd.FieldByName('vlricms').AsCurrency := 0;
            DmServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency := 0;
            DmServ.TFiscOrd.FieldByName('vlricmsubs').AsCurrency := 0;
            DmServ.TFiscOrd.Post;

            // busca dados fiscais do pedido de venda ou ordem de servico
            BuscaDadosFiscais(xTipo, XCodigo);

            // EFETUA CALCULO FISCAL PARA O TOTAL DA NF

            // CALCULA ICMS DE OPERAÇÃO
            DMFINANC.TAlx.Close;
            DMFINANC.TAlx.SQL.Clear;
            DMFINANC.TAlx.SQL.Add('  select sum(itprodord.total) AS TOTAL_ITENS from itprodord ');
            DMFINANC.TAlx.SQL.Add('   left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
            DMFINANC.TAlx.SQL.Add('   left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
            DMFINANC.TAlx.SQL.Add('   left join cst on subproduto.cod_cst = cst.cod_cst ');

            if FMenu.XPedFatura = ''
            then
            begin
              DMFINANC.TAlx.SQL.Add('   Where (itprodord.cod_ordem = :codigo) and (cst.substituicao='#39 + '1' + #39 + ')  ');
              DMFINANC.TAlx.ParamByName('codigo').AsInteger := XCodigo;
            end
            else
            begin
              // DMSAIDA.TFiscPV.SQL.Add('Where (itprodord.cod_ordem in ('+FMenu.XPedFatura+')');
            end;
            DMFINANC.TAlx.Open;
            If Not DMFINANC.TAlx.IsEmpty
            Then
            Begin
              // NORMAL PARA NORMAL OU NORMAL PARA SIMPLES
              // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
              If (FMenu.XTributaEmpresa = 'NORMAL') and (FMenu.XTributaCliente = '1')
              Then
              Begin
                // Calcula INDIFERENTE SE É DENTRO OU FORA DO ESTADO
                // If Fmenu.XEstadoOrigem<>Fmenu.XEstadoDestino
                // Then Begin
                // - 14/04/2009: alterado para mercescan
                DmServ.TFiscOrd.Edit;
                DmServ.TFiscOrd.FieldByName('BASEICMS').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency;
                DmServ.TFiscOrd.FieldByName('vlricms').AsCurrency := (DmServ.TFiscOrd.FieldByName('BASEICMS').AsCurrency * XAliqInterEstDest) / 100;
                DmServ.TFiscOrd.Post;
                // End;
              End;
            End;

            // CALCULA ICMS DE SUBSTITUIÇÃO TRIBUTÁRIA

            // NORMAL P NORMAL OU SIMPLES
            // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
            If (FMenu.XTributaEmpresa = 'NORMAL') And (FMenu.XTributaCliente = '1')
            Then
            Begin
              DMFINANC.TAlx.Close;
              DMFINANC.TAlx.SQL.Clear;
              // DMFINANC.TAlx.SQL.Add('  select sum(itprodord.total) AS TOTAL_ITENS, sum(itprodord.baseicmssubs) AS TOTAL_BASE_ST, sum(itprodord.vlricmssubs) AS TOTAL_vlr_ST from itprodord ');
              DMFINANC.TAlx.SQL.Add('   select estoque.mediabaseicmst, estoque.mediavlricmst, itprodord.qtd from itprodord');
              DMFINANC.TAlx.SQL.Add('   left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
              DMFINANC.TAlx.SQL.Add('   left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
              DMFINANC.TAlx.SQL.Add('   left join cst on subproduto.cod_cst = cst.cod_cst ');
              if FMenu.XPedFatura = ''
              then
              begin
                DMFINANC.TAlx.SQL.Add(' Where (cst.substituicao='#39 + '1' + #39 + ') and (itprodord.cod_ordem = :codigo) ');
                DMFINANC.TAlx.ParamByName('codigo').AsInteger := XCodigo;
              end;
              DMFINANC.TAlx.Open;
              DMFINANC.TAlx.First;

              // Calcula DENTRO E FORA DO ESTADO
              // If Fmenu.XEstadoOrigem<>Fmenu.XEstadoDestino
              // Then Begin
              // - 14/04/2009: alterado para mercescan
              xbasest := 0;
              xvlrst := 0;
              while not DMFINANC.TAlx.Eof do // - 14/04/2009: calcula base e vlr de icms de substituiçao produto a produto.
              begin
                xbasest := xbasest + (DMFINANC.TAlx.FieldByName('MEDIABASEICMST').AsCurrency * DMFINANC.TAlx.FieldByName('QTD').AsCurrency);
                xvlrst := xvlrst + (DMFINANC.TAlx.FieldByName('MEDIAVLRICMST').AsCurrency * DMFINANC.TAlx.FieldByName('QTD').AsCurrency);
                DMFINANC.TAlx.Next;
              end;

              // - 14/04/2009: alterado para mercescan
              DmServ.TFiscOrd.Edit;
              DmServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency := xbasest;
              DmServ.TFiscOrd.FieldByName('vlricmsubs').AsCurrency := xvlrst;
              // DMServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency+((DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency * XMva)/100);
              // DMServ.TFiscOrd.FieldByName('vlricmsubs').AsCurrency := ((DMServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency * XAliqInternaEstDest)/100)-DMServ.TFiscOrd.FieldByName('vlricms').AsCurrency;
              DmServ.TFiscOrd.Post;
              // End;
            End;

            // Efetua calculos de acordo com a tributação da empresa
            // SIMPLES P SIMPLES
            If (FMenu.XTributaEmpresa = 'SIMPLES')
            Then
            Begin
              DMFINANC.TAlx.Close;
              DMFINANC.TAlx.SQL.Clear;
              DMFINANC.TAlx.SQL.Add('  select sum(itprodord.total) AS TOTAL_ITENS, sum(itprodord.baseicmssubs) AS TOTAL_BASE_ST, sum(itprodord.vlricmssubs) AS TOTAL_vlr_ST from itprodord ');
              // DMFINANC.TAlx.SQL.Add('   select estoque.mediabaseicmst, estoque.mediavlricmst, itprodord.qtd from itprodord');
              DMFINANC.TAlx.SQL.Add('   left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
              DMFINANC.TAlx.SQL.Add('   left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
              DMFINANC.TAlx.SQL.Add('   left join cst on subproduto.cod_cst = cst.cod_cst ');
              if FMenu.XPedFatura = ''
              then
              begin
                DMFINANC.TAlx.SQL.Add(' Where (cst.substituicao='#39 + '1' + #39 + ') and (itprodord.cod_ordem = :codigo) ');
                DMFINANC.TAlx.ParamByName('codigo').AsInteger := XCodigo;
              end;
              DMFINANC.TAlx.Open;
              DMFINANC.TAlx.First;

              If Not DMFINANC.TAlx.IsEmpty
              Then
              Begin

                // Calcula somente fora do estado
                If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
                Then
                Begin
                  { DMServ.TFiscOrd.Edit;
                    DMServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency := (DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency * XMva)/100;
                    DMServ.TFiscOrd.FieldByName('vlricmsubs').AsCurrency := (DMServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency * XAliqInternaEstDest)/100;
                    DMServ.TFiscOrd.Post; }
                End
                Else
                Begin
                  DmServ.TFiscOrd.Edit;
                  DmServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency := (DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency * XMva) / 100;
                  DmServ.TFiscOrd.FieldByName('vlricmsubs').AsCurrency := (DmServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency * XAliqInternaEstDest) / 100;
                  DmServ.TFiscOrd.Post;
                End;
              End;

              // SIMPLES P NORMAL
              // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
              If (FMenu.XTributaEmpresa = 'SIMPLES') And (FMenu.XTributaCliente = '1')
              Then
              Begin
                // Calcula somente fora do estado
                If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
                Then
                Begin
                  { DMServ.TFiscOrd.Edit;
                    DMServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency+((DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency * XMva)/100);
                    DMServ.TFiscOrd.FieldByName('vlricmsubs').AsCurrency := (DMServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency * XAliqInternaEstDest)/100;
                    DMServ.TFiscOrd.Post; }
                End;
              End;

            End;

            { // - 13/03/2009: cálculo de despesas
              DMESTOQUE.TDesp.Close;
              DMESTOQUE.TDesp.SQL.Clear;
              DMESTOQUE.TDesp.SQL.Add('select sum(despadic.VLRTOTFIN) AS TOTAL');
              DMESTOQUE.TDesp.SQL.Add('From despadic ');
              DMESTOQUE.TDesp.SQL.Add('Where (despadic.gerador='+#39+'ORDEM'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
              DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=XCodigo;
              DMESTOQUE.TDesp.Open; }

            // - 13/03/2009: verificar se está certo colocar neste campo o vlr total das despesas
            DmServ.TFiscOrd.Edit;
            DmServ.TFiscOrd.FieldByName('VLRTOTSERV').AsCurrency := DmServ.TOrd.FieldByName('TOTSERV').AsCurrency;
            DmServ.TFiscOrd.Post;

            // - 13/03/2009:  se tiver valor de ISS setado em empresa calcular sobre despesas da ordem
            If (DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency > 0)
            Then
            Begin

              DmServ.TFiscOrd.Edit;

              // - 13/03/2009: se valor de despesas for maior que zero Calcular
              if DMESTOQUE.TDesp.FieldByName('TOTAL').AsCurrency > 0
              Then
              Begin
                // - 13/03/2009:    regra de três:  (total de despesas * ISS)/100
                DmServ.TFiscOrd.FieldByName('VLRTOTISS').AsCurrency := (DMESTOQUE.TDesp.FieldByName('TOTAL').AsCurrency * DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency) / 100;
              End
              Else
              Begin
                DmServ.TFiscOrd.FieldByName('VLRTOTISS').AsCurrency := 0;
              End;

              DmServ.TFiscOrd.Post;

            End;

            DmServ.IBT.CommitRetaining;

            // - 13/03/2009: verificar se está certo colocar neste campo o vlr total dos produtos
            DmServ.TFiscOrd.Edit;
            DmServ.TFiscOrd.FieldByName('VLRTOTPROD').AsCurrency := DmServ.TOrd.FieldByName('totprod').AsCurrency;
            DmServ.TFiscOrd.Post;

            FiltraTabela(DmServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCodigo), '');
            FiltraTabela(DmServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', DmServ.TOrd.FieldByName('COD_ORDEM').AsString, '');
            DmServ.TFiscOrd.Edit;
            // RETORNAR ESTE COMENTARIO AJUSTANDO PARA MERCESCAN, SALOMÃO E BARONI
            {
              // - 13/03/2009: add total de ISS    e serviços
              If (Fmenu.XTributaEmpresa='NORMAL') and (Fmenu.XTributaCliente='NORMAL')
              Then Begin
              DMServ.TFiscOrd.FieldByName('vlrtotdocnf').AsCurrency := DMServ.TOrd.FieldByName('totprod').AsCurrency + DMServ.TFiscOrd.FieldByName('vlroutrasdesp').AsCurrency + DMServ.TFiscOrd.FieldByName('vlrseg').AsCurrency +
              end;
              If (Fmenu.XTributaEmpresa='NORMAL') and (Fmenu.XTributaCliente='SIMPLES')
              Then Begin
              DMServ.TFiscOrd.FieldByName('vlrtotdocnf').AsCurrency := DMServ.TOrd.FieldByName('totprod').AsCurrency + DMServ.TFiscOrd.FieldByName('vlroutrasdesp').AsCurrency + DMServ.TFiscOrd.FieldByName('vlrseg').AsCurrency +
              end;
              if DMESTOQUE.TDesp.FieldByName('TOTAL').AsCurrency > 0
              Then Begin
            }
            DmServ.TFiscOrd.FieldByName('vlrtotdocnf').AsCurrency := DmServ.TOrd.FieldByName('totprod').AsCurrency + DmServ.TFiscOrd.FieldByName('VLRTOTSERV').AsCurrency + DmServ.TFiscOrd.FieldByName('vlroutrasdesp').AsCurrency + DmServ.TFiscOrd.FieldByName('vlrseg').AsCurrency;
            If DmServ.TFiscOrd.FieldByName('FRETECOMP').AsString = '1' Then
              DmServ.TFiscOrd.FieldByName('vlrtotdocnf').AsCurrency := DmServ.TFiscOrd.FieldByName('vlrtotdocnf').AsCurrency + DmServ.TFiscOrd.FieldByName('vlrfrete').AsCurrency;

            DmServ.TFiscOrd.Post;
            DmServ.IBT.CommitRetaining;

          End;
          // CONFIRMANDO DADOS
          DmSaida.IBT.CommitRetaining;
          DmServ.IBT.CommitRetaining;
        End
        Else
        Begin
          Mensagem('OPÇÃO BLOQUEADA', 'O Caixa selecionado não emite Nota Fiscal', '', 1, 1, False, 'a');
        End;
      End;
      Result := True;
    End;
  Except
    Result := False;
  End;
End;

// Função utilizada para recalcular os impostos fiscais das ordens de serviço
Function RecalcFiscalOS(xTipo: String; XCodigo: Integer): Boolean;
Var
  XVlrIcmsSub: Real; // Variavel para acumular Valores de Icms de Substituição Tributaria;
  XBaseIcms: Real; // armazena valor de base de icms para produto que nao tiverem substituição tributaria
  XCalcImpostos: Integer; // variavel auxiliar para verificar se os impostos devem ser calculados ou não
  XValorTotICMSST: Real; // - 30/03/2009: armanzena valor total dos produtos ST
  XDadosAdicionais, XDadosAdicionais2: String;
  xbasest, xvlrst: Real; // - 14/04/2009: variáveis que armazenam o valor da base e valor de substituição para nota fiscal da mercescan
Begin
  Try
    XCalcImpostos := 1;

    // Verifica se todas as informações necessárias para recálculo estão configuradas
    // Caso não esteja emite relatório
    DeleteFile('C:\MZR\Arquivos\Notas Fiscais\Erro Nota Fiscal.TXT');
    DeleteFile('C:\MZR\Arquivos\Notas Fiscais\Erro Pedido.TXT');
    // verifica se já existe documento fiscal e valida informações
    If AnaliseDados(xTipo, XCodigo) = False
    Then
    Begin
      Result := False;
      MessageDlg('As informações Fiscais não foram lançadas. Cancele o fechamento da ordem, consulte e clique no botão fiscal para acessar as informações.', mtWarning, [mbOK], 0);
      Exit;
    End
    Else
    Begin
      If XCalcImpostos = 1
      Then
      Begin
        // Inicializa as variaveis com valor zero
        XVlrIcms := 0;
        XVlrIcmsSub := 0;
        XBaseSubs := 0;
        XVlrICMS_Subs := 0;
      End;

      // VERIFICA INFORMAÇÕES NECESSÁRIAS PARA CONTROLES DE CÁLCULOS FISCAIS
      If FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '') = True
      Then
      Begin
        // Localiza o caixa em questão para verificar se suas configurações são de Nota Fiscal
        // - 13/03/2009:
        If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString = 'NF') OR
          ((DMCAIXA.TCaixa.FieldByName('tipocupom').AsString = 'ECF') And (DMCAIXA.TCaixa.FieldByName('EMITNF').AsString = '1'))
        Then
        begin
          // realiza os primeiros calculos em cada item de pedido de venda ou ordem de servico
          If CalculaProdutos(XCodigo, xTipo) = False
          Then
          Begin
            Result := False;
            Exit;
          End;
          // totalizando os valores fiscais
          // começa recálculos para ordens de serviço

          // =================================================//
          // =============== O R D E M =======================//
          // =================================================//

          FiltraTabela(DmServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCodigo), '');

          // busca todos os dados fiscais do pedido da ordem
          DmServ.TFiscOrd.Close;
          DmServ.TFiscOrd.SQL.Clear;
          DmServ.TFiscOrd.SQL.Add('select * from docfisord where docfisord.cod_ordem = :codigo');
          DmServ.TFiscOrd.ParamByName('codigo').AsInteger := XCodigo;
          DmServ.TFiscOrd.Open;

          If DmServ.TFiscOrd.IsEmpty
          Then
          Begin
            MessageDlg('A Nota Fiscal não pode ser impressa, As informações fiscais não foram geradas. Cancele o fechamento da ordem, consulte e clique no botão fiscal para gerar as informações do fiscal.', mtWarning, [mbOK], 0);
            Result := False;
            Exit;
          End;
          // ZERA VALORES FISCAIS
          DmServ.TFiscOrd.Edit;
          DmServ.TFiscOrd.FieldByName('BASEICMS').AsCurrency := 0;
          DmServ.TFiscOrd.FieldByName('vlricms').AsCurrency := 0;
          DmServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency := 0;
          DmServ.TFiscOrd.FieldByName('vlricmsubs').AsCurrency := 0;
          DmServ.TFiscOrd.Post;

          // EFETUA CALCULO FISCAL PARA O TOTAL DA NF

          // CALCULA ICMS DE OPERAÇÃO
          DMFINANC.TAlx.Close;
          DMFINANC.TAlx.SQL.Clear;
          DMFINANC.TAlx.SQL.Add('  select sum(itprodord.total) AS TOTAL_ITENS from itprodord ');
          DMFINANC.TAlx.SQL.Add('   left join cst on itprodord.cod_cst = cst.cod_cst ');
          DMFINANC.TAlx.SQL.Add('   Where (itprodord.cod_ordem = :codigo) and (cst.substituicao='#39 + '0' + #39 + ')  ');
          DMFINANC.TAlx.ParamByName('codigo').AsInteger := XCodigo;
          DMFINANC.TAlx.Open;
          If Not DMFINANC.TAlx.IsEmpty
          Then
          Begin
            // NORMAL PARA NORMAL OU NORMAL PARA SIMPLES
            // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
            If (FMenu.XTributaEmpresa = 'NORMAL') and (FMenu.XTributaCliente = '1')
            Then
            Begin
              // Calcula INDIFERENTE SE É DENTRO OU FORA DO ESTADO
              // If Fmenu.XEstadoOrigem<>Fmenu.XEstadoDestino
              // Then Begin
              // - 14/04/2009: alterado para mercescan
              DmServ.TFiscOrd.Edit;
              DmServ.TFiscOrd.FieldByName('BASEICMS').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency - ((DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency * DmServ.TOrd.FieldByName('descprod').AsCurrency) / 100);
              DmServ.TFiscOrd.FieldByName('vlricms').AsCurrency := (DmServ.TFiscOrd.FieldByName('BASEICMS').AsCurrency * XAliqInterEstDest) / 100;
              DmServ.TFiscOrd.Post;
              // End;
            End;
          End;

          // CALCULA ICMS DE SUBSTITUIÇÃO TRIBUTÁRIA

          // NORMAL P NORMAL OU SIMPLES
          // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
          If (FMenu.XTributaEmpresa = 'NORMAL') And (FMenu.XTributaCliente = '1')
          Then
          Begin
            DMFINANC.TAlx.Close;
            DMFINANC.TAlx.SQL.Clear;
            DMFINANC.TAlx.SQL.Add('   select estoque.mediabaseicmst, estoque.mediavlricmst, itprodord.qtd from itprodord');
            DMFINANC.TAlx.SQL.Add('   left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
            DMFINANC.TAlx.SQL.Add('   left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
            DMFINANC.TAlx.SQL.Add('   left join cst on subproduto.cod_cst = cst.cod_cst ');
            DMFINANC.TAlx.SQL.Add(' Where (cst.substituicao='#39 + '1' + #39 + ') and (itprodord.cod_ordem = :codigo) ');
            DMFINANC.TAlx.ParamByName('codigo').AsInteger := XCodigo;
            DMFINANC.TAlx.Open;
            DMFINANC.TAlx.First;

            // Calcula DENTRO E FORA DO ESTADO
            // If Fmenu.XEstadoOrigem<>Fmenu.XEstadoDestino
            // Then Begin
            // - 14/04/2009: alterado para mercescan
            xbasest := 0;
            xvlrst := 0;
            while not DMFINANC.TAlx.Eof do // - 14/04/2009: calcula base e vlr de icms de substituiçao produto a produto.
            begin
              xbasest := xbasest + (DMFINANC.TAlx.FieldByName('MEDIABASEICMST').AsCurrency * DMFINANC.TAlx.FieldByName('QTD').AsCurrency);
              xvlrst := xvlrst + (DMFINANC.TAlx.FieldByName('MEDIAVLRICMST').AsCurrency * DMFINANC.TAlx.FieldByName('QTD').AsCurrency);
              DMFINANC.TAlx.Next;
            end;

            // - 14/04/2009: alterado para mercescan
            DmServ.TFiscOrd.Edit;
            DmServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency := xbasest;
            DmServ.TFiscOrd.FieldByName('vlricmsubs').AsCurrency := xvlrst;
            // DMServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency+((DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency * XMva)/100);
            // DMServ.TFiscOrd.FieldByName('vlricmsubs').AsCurrency := ((DMServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency * XAliqInternaEstDest)/100)-DMServ.TFiscOrd.FieldByName('vlricms').AsCurrency;
            DmServ.TFiscOrd.Post;
            // End;
          End;

          // Efetua calculos de acordo com a tributação da empresa
          // SIMPLES P SIMPLES
          If (FMenu.XTributaEmpresa = 'SIMPLES')
          Then
          Begin
            DMFINANC.TAlx.Close;
            DMFINANC.TAlx.SQL.Clear;
            DMFINANC.TAlx.SQL.Add('  select sum(itprodord.total) AS TOTAL_ITENS, sum(itprodord.baseicmssubs) AS TOTAL_BASE_ST, sum(itprodord.vlricmssubs) AS TOTAL_vlr_ST from itprodord ');
            // DMFINANC.TAlx.SQL.Add('   select estoque.mediabaseicmst, estoque.mediavlricmst, itprodord.qtd from itprodord');
            DMFINANC.TAlx.SQL.Add('   left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
            DMFINANC.TAlx.SQL.Add('   left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
            DMFINANC.TAlx.SQL.Add('   left join cst on subproduto.cod_cst = cst.cod_cst ');
            if FMenu.XPedFatura = ''
            then
            begin
              DMFINANC.TAlx.SQL.Add(' Where (cst.substituicao='#39 + '1' + #39 + ') and (itprodord.cod_ordem = :codigo) ');
              DMFINANC.TAlx.ParamByName('codigo').AsInteger := XCodigo;
            end;
            DMFINANC.TAlx.Open;
            DMFINANC.TAlx.First;

            If Not DMFINANC.TAlx.IsEmpty
            Then
            Begin
              // Calcula somente fora do estado
              If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
              Then
              Begin
                { DMServ.TFiscOrd.Edit;
                  DMServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency := (DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency * XMva)/100;
                  DMServ.TFiscOrd.FieldByName('vlricmsubs').AsCurrency := (DMServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency * XAliqInternaEstDest)/100;
                  DMServ.TFiscOrd.Post; }
              End
              Else
              Begin
                DmServ.TFiscOrd.Edit;
                DmServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency := (DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency * XMva) / 100;
                DmServ.TFiscOrd.FieldByName('vlricmsubs').AsCurrency := (DmServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency * XAliqInternaEstDest) / 100;
                DmServ.TFiscOrd.Post;
              End;
            End;

            // SIMPLES P NORMAL
            // Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
            If (FMenu.XTributaEmpresa = 'SIMPLES') And (FMenu.XTributaCliente = '1')
            Then
            Begin
              // Calcula somente fora do estado
              If FMenu.XEstadoOrigem <> FMenu.XEstadoDestino
              Then
              Begin
                { DMServ.TFiscOrd.Edit;
                  DMServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency := DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency+((DMFINANC.TAlx.FieldByName('TOTAL_ITENS').AsCurrency * XMva)/100);
                  DMServ.TFiscOrd.FieldByName('vlricmsubs').AsCurrency := (DMServ.TFiscOrd.FieldByName('bascalsubs').AsCurrency * XAliqInternaEstDest)/100;
                  DMServ.TFiscOrd.Post; }
              End;
            End;

          End;

          { // - 13/03/2009: cálculo de despesas
            //comandos comentados pq o sistema deve pegar sobre o valor dos serviços com desconto
            DMESTOQUE.TDesp.Close;
            DMESTOQUE.TDesp.SQL.Clear;
            DMESTOQUE.TDesp.SQL.Add('select sum(despadic.VLRTOTFIN) AS TOTAL');
            DMESTOQUE.TDesp.SQL.Add('From despadic ');
            DMESTOQUE.TDesp.SQL.Add('Where (despadic.gerador='+#39+'ORDEM'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
            DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=XCodigo;
            DMESTOQUE.TDesp.Open; }

          // - 13/03/2009: verificar se está certo colocar neste campo o vlr total das despesas
          DmServ.TFiscOrd.Edit;
          DmServ.TFiscOrd.FieldByName('VLRTOTSERV').AsCurrency := DmServ.TOrd.FieldByName('TOTSERV').AsCurrency;
          DmServ.TFiscOrd.Post;

          // - 13/03/2009:  se tiver valor de ISS setado em empresa calcular sobre despesas da ordem
          If (DmServ.TOrd.FieldByName('TOTSERV').AsCurrency > 0)
          Then
          Begin
            DmServ.TFiscOrd.Edit;
            // - 13/03/2009:    regra de três:  (total de despesas * ISS)/100
            DmServ.TFiscOrd.FieldByName('VLRTOTISS').AsCurrency := (DmServ.TOrd.FieldByName('TOTSERV').AsCurrency * DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency) / 100;
            DmServ.TFiscOrd.Post;
          End
          Else
          Begin
            DmServ.TFiscOrd.Edit;
            DmServ.TFiscOrd.FieldByName('VLRTOTISS').AsCurrency := 0;
            DmServ.TFiscOrd.Post;
          End;
          DmServ.IBT.CommitRetaining;

          // - 13/03/2009: verificar se está certo colocar neste campo o vlr total dos produtos
          DmServ.TFiscOrd.Edit;
          DmServ.TFiscOrd.FieldByName('VLRTOTPROD').AsCurrency := DmServ.TOrd.FieldByName('totprod').AsCurrency;
          DmServ.TFiscOrd.Post;

          FiltraTabela(DmServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCodigo), '');
          FiltraTabela(DmServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', DmServ.TOrd.FieldByName('COD_ORDEM').AsString, '');
          DmServ.TFiscOrd.Edit;
          // RETORNAR ESTE COMENTARIO AJUSTANDO PARA MERCESCAN, SALOMÃO E BARONI
          {
            // - 13/03/2009: add total de ISS    e serviços
            If (Fmenu.XTributaEmpresa='NORMAL') and (Fmenu.XTributaCliente='NORMAL')
            Then Begin
            DMServ.TFiscOrd.FieldByName('vlrtotdocnf').AsCurrency := DMServ.TOrd.FieldByName('totprod').AsCurrency + DMServ.TFiscOrd.FieldByName('vlroutrasdesp').AsCurrency + DMServ.TFiscOrd.FieldByName('vlrseg').AsCurrency +
            end;
            If (Fmenu.XTributaEmpresa='NORMAL') and (Fmenu.XTributaCliente='SIMPLES')
            Then Begin
            DMServ.TFiscOrd.FieldByName('vlrtotdocnf').AsCurrency := DMServ.TOrd.FieldByName('totprod').AsCurrency + DMServ.TFiscOrd.FieldByName('vlroutrasdesp').AsCurrency + DMServ.TFiscOrd.FieldByName('vlrseg').AsCurrency +
            end;
            if DMESTOQUE.TDesp.FieldByName('TOTAL').AsCurrency > 0
            Then Begin
          }
          DmServ.TFiscOrd.FieldByName('vlrtotdocnf').AsCurrency := DmServ.TOrd.FieldByName('totprod').AsCurrency + DmServ.TFiscOrd.FieldByName('VLRTOTSERV').AsCurrency + DmServ.TFiscOrd.FieldByName('vlroutrasdesp').AsCurrency + DmServ.TFiscOrd.FieldByName('vlrseg').AsCurrency;
          If DmServ.TFiscOrd.FieldByName('FRETECOMP').AsString = '1' Then
            DmServ.TFiscOrd.FieldByName('vlrtotdocnf').AsCurrency := DmServ.TFiscOrd.FieldByName('vlrtotdocnf').AsCurrency + DmServ.TFiscOrd.FieldByName('vlrfrete').AsCurrency;

          DmServ.TFiscOrd.Post;
          DmServ.IBT.CommitRetaining;

          // CONFIRMANDO DADOS
          DmSaida.IBT.CommitRetaining;
          DmServ.IBT.CommitRetaining;
        End
        Else
        Begin
          Mensagem('OPÇÃO BLOQUEADA', 'O Caixa selecionado não emite Nota Fiscal', '', 1, 1, False, 'a');
        End;
      End;
      Result := True;
    End;
  Except
    Result := False;
  End;
End;

// Função para alterar a pagina principal do internet explorer
Function HPPrincipal(APage: string): Boolean;
Var
  Reg: TRegistry;
  XTxtEmail: TextFile;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    Reg.OpenKey('Software\Microsoft\Internet Explorer\Main', False);
    try
      Reg.WriteString('Start Page', APage);
      Result := True;
      AssignFile(XTxtEmail, 'C:\hpgoogle.ctr');
      Rewrite(XTxtEmail);
      Writeln(XTxtEmail, '@#@%$#@#');
      CloseFile(XTxtEmail);
    finally
      Reg.CloseKey;
      Result := False;
    end;
  finally
    Reg.Free;
  end;
end;

// Função utilizada para habilitar a porta 3050 para Firebird
Function Habilita3050: Boolean;
var
  Reg: TRegistry;
  CtrlSet: string;
Begin
  Try
    Result := True;
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    Reg.OpenKey('SYSTEM\Select', False);
    CtrlSet := FormatFloat('000', Reg.ReadInteger('Current'));
    Reg.CloseKey;
    // Libera a porta 3050 usada pelo Firebird
    Reg.OpenKey('SYSTEM\ControlSet' + CtrlSet + '\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List', True);
    if (not Reg.ValueExists('3050:TCP')) then
      Reg.WriteString('3050:TCP', '3050:TCP:*:Enabled:Firebird');
    Reg.CloseKey;
    Reg.Free;
  Except
    Result := False;
  End;
End;

// Retona valor truncado
Function LexTrunca(Valor: Real; Casas: Integer): Real;
Begin
  Result := Valor;
End;

// Descobre o N de serie do Hd
Function SerialNum(FDrive: String): String;
Var
  Serial: DWord;
  DirLen, Flags: DWord;
  DLabel: Array [0 .. 11] of Char;
begin
  Try
    GetVolumeInformation(PChar(FDrive + ':\'), DLabel, 12, @Serial, DirLen, Flags, nil, 0);
    Result := IntToHex(Serial, 8);
  Except
    Result := '';
  end;
end;

// Pega o nome do computador através do Registry. (Não esqueça de adicionar a unit Registry ao seu projeto)
function getcomputer: string;
var
  registro: TRegistry;
begin
  registro := TRegistry.Create;
  registro.RootKey := HKEY_LOCAL_MACHINE;
  registro.OpenKey('System\CurrentControlSet\Services\VXD\VNETSUP', False);
  Result := registro.readstring('ComputerName');
end;

// Descobre a nome da empresa registrada no windows
Function GetUserCompany: String;
var
  Reg: TRegIniFile;
begin
  Reg := TRegIniFile.Create('SOFTWARE\MICROSOFT\MS SETUP (ACME)\');
  Result := Reg.readstring('USER INFO', 'DefCompany', '');
  Reg.Free;
end;

// Encontra o nome do usuario na rede
function UserNamerede: String;
var
  lpBuffer: Array [0 .. 20] of Char;
  nSize: DWord;
  Achou: Boolean;
  erro: DWord;
begin
  nSize := 120;
  Achou := GetUserName(lpBuffer, nSize);
  if (Achou)
  then
  begin
    Result := lpBuffer;
  end
  else
  begin
    erro := GetLastError();
    Result := IntToStr(erro);
  end;
end;

// Informa o Diretorio de Sistema do windows
function SystemDir: String;
{ Retorna o subdiretorio system do windows }
Var
  Buffer: Array [0 .. 144] of Char;
Begin
  GetSystemDirectory(Buffer, 144);
  Result := StrPas(Buffer);
End;

// Função que retorna a versao do windows
Function GetWindowsVersion: string;
var
  // windows api structure
  VersionInfo: TOSVersionInfo;
begin
  // get size of the structure
  VersionInfo.dwOSVersionInfoSize := SizeOf(VersionInfo);
  // populate the struct using api call
  GetVersionEx(VersionInfo);
  // platformid gets the core platform
  // major and minor versions also included.
  with VersionInfo do
  begin
    case dwPlatformid of
      0:
        begin
          Result := 'Windows 3.11';
        end; // end 0

      1:
        begin
          case dwMinorVersion of
            0:
              Result := 'Windows 95';
            10:
              begin
                if (szCSDVersion[1] = 'A') then
                  Result := 'Windows 98 SE'
                else
                  Result := 'Windows 98';
              end;
            90:
              Result := 'Windows Millenium';
          else
            Result := 'Unknown Version';
          end;
        end;

      2:
        begin
          case dwMajorVersion of
            3:
              Result := 'Windows NT';
            4:
              Result := 'Windows NT';
            5:
              begin
                case dwMinorVersion of
                  0:
                    Result := 'Windows 2000';
                  1:
                    Result := 'Windows XP';
                end;
              end;
          else
            Result := 'Unknown Version';
          end;
        end;
    else
      Result := 'Unknown Platform';
    end;
  end;
end;

// RETORNA DIRETORIO DO WINDOWS
function WindowsDir: String;
{ Retorna o diretorio onde o windows está instalado }
Var
  Buffer: Array [0 .. 144] of Char;
Begin
  GetWindowsDirectory(Buffer, 144);
  Result := StrPas(Buffer);
End;

// Retorna o tipo de conexão com a Internet
Function VerificaNet: Integer;
var
  Flags: DWord;
  XResult: Boolean;
begin
  XResult := InternetGetConnectedState(@Flags, 0);
  if XResult
  then
  begin
    if (Flags and INTERNET_CONNECTION_MODEM) = INTERNET_CONNECTION_MODEM then
      Result := 1;
    if (Flags and INTERNET_CONNECTION_LAN) = INTERNET_CONNECTION_LAN then
      Result := 2;
    if (Flags and INTERNET_CONNECTION_PROXY) = INTERNET_CONNECTION_PROXY then
      Result := 3;
    if (Flags and INTERNET_CONNECTION_MODEM_BUSY) = INTERNET_CONNECTION_MODEM_BUSY then
      Result := 4
  End
  else
  Begin
    Result := 0;
  end;
end;

// Função utilizada para verificar se determinada fonte esta instalada no Windows
Function FonteExiste(Fonte: STring): Boolean;
begin
  with Screen.Fonts do
    Result := IndexOf(Trim(Fonte)) > 0;
end;

// Função utilizada para ler o nome da impressora padrao
Function GetPadraoImp: Boolean;
Begin
  if (Printer.PrinterIndex >= 0)
  then
  begin
    FMenu.XNOMEIMPPADRAO := Printer.Printers[Printer.PrinterIndex];
  end
  else
  begin
    FMenu.XNOMEIMPPADRAO := 'VAZIO';
  end;
End;

// Função utilizada para retornar impressora padrão
Function PadraoImp;
Var
  Tam, X: byte;
  Achei: Boolean;
  LBImp: TListBox;
Begin
  // Tamanho a string com o nome da impressora
  Tam := Length(imp);
  // limpa list box
  FMenu.ListBox.Items.Clear;
  // list box recebe impressoras instaladas
  FMenu.ListBox.Items := Printer.Printers;
  // variavel de controle de localizacao da impressora
  Achei := False;
  // varre a list box a procura da impressora desejada
  for X := 0 to FMenu.ListBox.Items.count - 1 do
  Begin
    FMenu.ListBox.Items.Text;
    If (copy(FMenu.ListBox.Items[X], 1, Tam) = imp)
    Then
    Begin
      Achei := True;
      // impressora padrao recebe o mesmo indice quando impressora é encontrada
      Printer.PrinterIndex := X;
    End;
  End;
  // retorna variavel de controle
  Result := Achei;
End;

// Função utilizada para retornar impressora padrão
Function RetPadraoImp: Boolean;
Var
  Tam, X: byte;
  Achei: Boolean;
  LBImp: TListBox;
Begin
  // Tamanho a string com o nome da impressora
  Tam := Length(FMenu.XNOMEIMPPADRAO);
  // limpa list box
  FMenu.ListBox.Items.Clear;
  // list box recebe impressoras instaladas
  FMenu.ListBox.Items := Printer.Printers;
  // variavel de controle de localizacao da impressora
  Achei := False;
  // varre a list box a procura da impressora desejada
  for X := 0 to FMenu.ListBox.Items.count - 1 do
  Begin
    FMenu.ListBox.Items.Text;
    If (copy(FMenu.ListBox.Items[X], 1, Tam) = FMenu.XNOMEIMPPADRAO)
    Then
    Begin
      Achei := True;
      // impressora padrao recebe o mesmo indice quando impressora é encontrada
      Printer.PrinterIndex := X;
    End;
  End;
  // retorna variavel de controle
  Result := Achei;
End;

Function SetDefaultPrinter(PrinterName: String): Boolean;
var
  ResStr: array [0 .. 255] of Char;
begin
  StrPCopy(ResStr, PrinterName);
  WriteProfileString('windows', 'device', ResStr);
  StrCopy(ResStr, 'windows');
  SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, Longint(@ResStr));
  { var
    I: Integer;
    Device : PChar;
    Driver : Pchar;
    Port : Pchar;
    HdeviceMode: Thandle;
    aPrinter : TPrinter;
    begin
    Printer.PrinterIndex := -1;
    getmem(Device, 255);
    getmem(Driver, 255);
    getmem(Port, 255);
    aPrinter := TPrinter.create;

    for I := 0 to Printer.printers.Count-1 do
    begin
    if Printer.printers[i] = PrinterName then
    begin
    aprinter.printerindex := i;
    aPrinter.getprinter(device, driver, port, HdeviceMode);
    StrCat(Device, ',');
    StrCat(Device, Driver );
    StrCat(Device, Port );
    WriteProfileString('windows', 'device', Device);
    StrCopy( Device, 'windows');
    SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, Longint(@Device));
    end;
    end;
    Freemem(Device, 255);
    Freemem(Driver, 255);
    Freemem(Port, 255);
    aPrinter.Free; }
end;

// Função utilizada para Aplicar o bloqueio do sistema
Function AplicaBloqueio: Boolean;
Begin
  { Place thread code here }
  // Função responsável por verificar se o cliente usuario do sistema esta com a conta bloqueada
  // 1 - Liberado
  // 2 - Mensagem
  // 3 - Bloqueio
  Try
    Result := True;
    if DMMACS.TLoja.FieldByName('senhasuporte').AsString = '2' then
    begin
      // se retorno for 2 apresentar apenas mensagem
      MessageDlg(DMMACS.TLoja.FieldByName('loginsuporte').AsString, mtWarning, [mbOK], 0);
      Result := True;
    end;

    if (DMMACS.TLoja.FieldByName('senhasuporte').AsString = '3')
      OR (DMMACS.TLoja.FieldByName('senhasuporte').AsString = '4') then
    begin
      MessageDlg(DMMACS.TLoja.FieldByName('LOGINSUPORTE').AsString, mtWarning, [mbOK], 0);
      Result := False;
    End;
  Except
  End;
End;

// Função utilizada para editar os dados em loja referente ao bloqueio do sistema
Function EfetuaBloqueio: Boolean;
Begin
  { Place thread code here }
  // Função responsável por verificar se o cliente usuario do sistema esta com a conta bloqueada
  // 1 - Liberado
  // 2 - Mensagem
  // 3 - Bloqueio
  Try
    // PASSO 01
    // Desconecta tudo
    DMMACS.TBloqueio.Active := False;
    DMMACS.DbBloqueio.Connected := False;
    DMMACS.DbBloqueio.Connected := True;
    DMMACS.TBloqueio.Active := True;
    DMMACS.QBloqueio.Close;
    DMMACS.QBloqueio.SQL.Clear;
    DMMACS.QBloqueio.SQL.Add(' SELECT * FROM CLIENTEB ');
    DMMACS.QBloqueio.SQL.Add(' WHERE CLIENTEB.CNPJ=:CHAVE ');
    DMMACS.QBloqueio.ParamByName('CHAVE').AsString := DMMACS.TEmpresa.FieldByName('cnpj').AsString;
    DMMACS.QBloqueio.Open;
    If DMMACS.QBloqueio.IsEmpty
    Then
    Begin
      // Sem controle remoto, então passamos ao banco que o controle deve ser feito pelo keygenerator
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' update loja set  loja.loginsuporte=:login, loja.senhasuporte=:Senha  ');
      MDO.Query.ParamByName('Senha').AsString := 'KEY';
      MDO.Query.ParamByName('login').AsString := '';
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    End
    Else
    Begin
      // Sem controle remoto, então passamos ao banco que o controle deve ser feito pelo keygenerator
      // Sem controle remoto, então passamos ao banco que o controle deve ser feito pelo keygenerator
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' update loja set  loja.loginsuporte=:login, loja.senhasuporte=:Senha  ');
      MDO.Query.ParamByName('Senha').AsString := copy(DMMACS.QBloqueio.FieldByName('STATUSBLOQUEIO').AsString, 0, 50);
      MDO.Query.ParamByName('login').AsString := copy(DMMACS.QBloqueio.FieldByName('MENSAGEM').AsString, 0, 50);
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    End;
  Except

  End;
End;

// FUNÇÃO PARA CALCULAR O ULTIMO DIGITO VERIFICADOR DE UM CODIGO EAN13
function CalculaDigEAN13(Cod: String): String;
  function Par(Cod: Integer): Boolean;
  begin
    Result := Cod Mod 2 = 0;
  end;

var
  i, SomaPar, SomaImpar: Integer;
begin
  SomaPar := 0;
  SomaImpar := 0;
  for i := 1 to 12 do
    if Par(i) then
      SomaPar := SomaPar + StrToInt(Cod[i])
    else
      SomaImpar := SomaImpar + StrToInt(Cod[i]);
  SomaPar := SomaPar * 3;
  i := 0;
  while i < (SomaPar + SomaImpar) do
    INC(i, 10);
  Result := IntToStr(i - (SomaPar + SomaImpar));
end;

// Função Utilizada para verificar se o cliente possui ctas atrazadas com numero de dias superior ao estabelecido em banco
Function VerificBloqCli(COD_CLIENTE: String): Boolean;
Begin
  Result := False;
  DIASATRASO := '0';
  // INSERE SQL PARA FILTRAR CONFIGURAÇÕES DE LOJA
  DMMACS.TLoja.Close;
  DMMACS.TLoja.SQL.Clear;
  DMMACS.TLoja.SQL.Add('SELECT * FROM loja where loja.cod_loja=:CODLOJA');
  DMMACS.TLoja.ParamByName('CODLOJA').AsString := FMenu.LCODLOJA.Caption;
  DMMACS.TLoja.Open;
  // VEERIFICA SE DIAS DE INTERVALO MAIOR QUE ZERO, SE IGUAL OU MENOR A ZERO O SISTEMA NÃO DEVE FAZER CONTROLE
  If DMMACS.TLoja.FieldByName('DIASBLOQCLI').AsInteger > 0
  Then
  Begin
    DMFINANC.TAlx.Close;
    DMFINANC.TAlx.SQL.Clear;
    DMFINANC.TAlx.SQL.Add('Select * from  vwparcr where (vwparcr.cod_cliente=:CODCLI) And (vwparcr.dtvenc<=:DATAATU) And (vwparcr.fech<>' + #39 + 'S' + #39 + ') And (vwparcr.cod_formpag is not null) And (vwparcr.cod_loja is not null) ORDER BY vwparcr.dtvenc');
    DMFINANC.TAlx.ParamByName('CODCLI').AsString := COD_CLIENTE;
    DMFINANC.TAlx.ParamByName('DATAATU').AsDateTime := Date() - DMMACS.TLoja.FieldByName('DIASBLOQCLI').AsInteger;
    DMFINANC.TAlx.SQL.Text;
    DMFINANC.TAlx.Open;
    If DMFINANC.TAlx.IsEmpty Then
      Result := False
    Else
      Result := True;
    // Verifica a quantidade de dias em atraso
    DMFINANC.TAlx.First; // como esta ordenado o primeiro registro deve conter o atraso mais antigo
    DIASATRASO := DifDias(DMFINANC.TAlx.FieldByName('DTVENC').AsDateTime, Date(), 0)
  End;
End;

// Função utilizada para conectar a base de dados correspondente ao qrquivo gdb setado
Function ConectBd(XBD: TDataModule): Boolean;
Var
  i: Integer;
  Desc: String;
  XFLHMODULO: Integer;
Begin
  XFLHMODULO := 0; // controla falha de abertura em módulos
  Result := False;
  // ** D M  M A C S**//
  If XBD = DMMACS
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      DMMACS.Transaction.Active := False;
      DMMACS.Transaction.Active := False;
      DMMACS.IBTCodigo.Active := False;
      DMMACS.DataBase.Connected := False;
    Except
    End;
    Try
      DMMACS.DataBase.DatabaseName := FMenu.XTRILL;
      DMMACS.DataBase.Connected := True;
      DMMACS.Transaction.Active := True;
      DMMACS.IBTCodigo.Active := True;
      DMMACS.IBTCodigo.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Desc := ' DMMacs';
  End;
  // ** D M  M D O **//
  If XBD = MDO
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      MDO.Transac.Active := False;
      MDO.DB.Connected := False;

    Except
    End;
    Try
      MDO.DB.DatabaseName := FMenu.XTRILL;
      MDO.DB.Connected := True;
      MDO.Transac.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Desc := ' MDO';
  End;

  // ** D M  F A S T **//
  If XBD = DMFAST
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      DMFAST.MDOTrans.Active := False;
      DMFAST.MDODataBase.Connected := False;
    Except
    End;
    Try
      DMFAST.MDODataBase.DatabaseName := FMenu.XTRILL;
      DMFAST.MDODataBase.Connected := True;
      DMFAST.MDOTrans.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Desc := ' DMFAST';
  End;

  // ** D M  F I S C A L**//
  If XBD = DMFISCAL
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      DMFISCAL.IBTFISCAL.Active := False;
      DMFISCAL.DBFiscal.Connected := False;
    Except
    End;
    Try
      DMFISCAL.DBFiscal.DatabaseName := FMenu.XTRILL;
      DMFISCAL.DBFiscal.Connected := True;
      DMFISCAL.IBTFISCAL.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Desc := ' DMFiscal';
  End;

  // ** D M  B A N C O**//
  If XBD = DMBANCO
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      DMBANCO.IBT.Active := False;
      DMBANCO.IBDB.Connected := False;
    Except
    End;
    Try
      DMBANCO.IBDB.DatabaseName := FMenu.XTRILL;
      DMBANCO.IBDB.Connected := True;
      DMBANCO.IBT.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Desc := ' DMBanco';
  End;
  // ** D M  C A I X A**//
  If XBD = DMCAIXA
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      DMCAIXA.IBT.Active := False;
      DMCAIXA.IBDB.Connected := False;
    except
    End;
    Try
      DMCAIXA.IBDB.DatabaseName := FMenu.XTRILL;
      DMCAIXA.IBDB.Connected := True;
      DMCAIXA.IBT.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Desc := ' DMCaixa';
  End;
  // ** D M  C O N T A**//
  If XBD = DMCONTA
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      DMCONTA.IBT.Active := False;
      DMCONTA.IBDB.Connected := False;
    Except
    End;
    Try
      DMCONTA.IBDB.DatabaseName := FMenu.XTRILL;
      DMCONTA.IBDB.Connected := True;
      DMCONTA.IBT.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Desc := ' DMConta';
  End;
  // ** D M  E N T R A D A **//
  If XBD = DMEntrada
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      DMEntrada.IBT.Active := False;
      DMEntrada.IBDB.Connected := False;
    Except
    End;
    Try
      DMEntrada.IBDB.DatabaseName := FMenu.XTRILL;
      DMEntrada.IBDB.Connected := True;
      DMEntrada.IBT.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Desc := ' Entrada';
  End;
  // ** D M  ESTOQUE**//
  If XBD = DMESTOQUE
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      DMESTOQUE.TransacEstoque.Active := False;
      DMESTOQUE.TransacEstoque.Active := False;
      DMESTOQUE.DBEstoque.Connected := False;
    Except
    End;
    Try
      DMESTOQUE.DBEstoque.DatabaseName := FMenu.XTRILL;
      DMESTOQUE.DBEstoque.Connected := True;
      DMESTOQUE.TransacEstoque.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Desc := ' DMEstoque';
  End;
  // ** D M  financ**//
  If XBD = DMFINANC
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      DMFINANC.Transaction.Active := False;
      DMFINANC.DataBase.Connected := False;
    Except
    End;
    Try
      DMFINANC.DataBase.DatabaseName := FMenu.XTRILL;
      DMFINANC.DataBase.Connected := True;
      DMFINANC.Transaction.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Desc := ' DMFinanc';
  End;
  // ** D M  G E O G R A F I A**//
  If XBD = DMGeografia
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      DMGeografia.IBT.Active := False;
      DMGeografia.IBDB.Connected := False;
    Except
    End;
    Try
      DMGeografia.IBDB.DatabaseName := FMenu.XTRILL;
      DMGeografia.IBDB.Connected := True;
      DMGeografia.IBT.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Desc := ' DMGeografia';
  End;
  // ** D M  PESSOA**//
  If XBD = DMPessoa
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      DMPessoa.TransacPessoa.Active := False;
      DMPessoa.DBPessoa.Connected := False;
    Except
    End;
    Try
      DMPessoa.DBPessoa.DatabaseName := FMenu.XTRILL;
      DMPessoa.DBPessoa.Connected := True;
      DMPessoa.TransacPessoa.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Try

      DMPessoa.IBTRUA.Active := False;
      DMPessoa.DBRUA.Connected := False;

      XPATHEXE_CEPRUA := ExtractFilePath(Application.EXEName);
      IF FileExists(XPATHEXE_CEPRUA + 'CEPRUA.GDB')
      Then
      Begin
        DMPessoa.DBRUA.DatabaseName := XPATHEXE_CEPRUA + 'CEPRUA.GDB';
        DMPessoa.DBRUA.Connected := True;
        DMPessoa.IBTRUA.Active := True;
      End;
    Except

    End;
    Desc := ' DMPessoa';
  End;
  // ** D M  SAIDA**//
  If XBD = DmSaida
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      DmSaida.IBT.Active := False;
      DmSaida.IBDB.Connected := False;
    Except
    End;
    Try
      DmSaida.IBDB.DatabaseName := FMenu.XTRILL;
      DmSaida.IBDB.Connected := True;
      DmSaida.IBT.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Desc := ' DMSaida';
  End;
  // ** D M  SERV**//
  If XBD = DmServ
  Then
  Begin
    // Conecta DataBases e Transactions
    Try
      DmServ.IBT.Active := False;
      DmServ.DbServ.Connected := False;
    Except
    End;
    Try
      DmServ.DbServ.DatabaseName := FMenu.XTRILL;
      DmServ.DbServ.Connected := True;
      DmServ.IBT.Active := True;
    Except
      XFLHMODULO := 1;
    End;
    Desc := ' DMServ';
  End;

  // SOMENTE TENTA ABRIR TABELAS SE ABRIU DATAMODULE
  IF XFLHMODULO = 0
  Then
  Begin
    // conecta tabelas
    for i := 0 to XBD.ComponentCount - 1 do
    Begin
      If XBD.Components[i] is TIBQuery then
      begin
        If TIBQuery(XBD.Components[i]).Tag = 3 Then
          Desc := Desc;

        If XBD.Components[i].Tag <> 5
        Then
        Begin // se o tag for diferente de 5 significa que a tabela deve ser ativada
          Try
            TIBQuery(XBD.Components[i]).Active := True;
          Except
            FMenu.ListBox.Items.Add('FALHA: ' + Desc + '-' + TIBQuery(XBD.Components[i]).Name);
            FMenu.ListBox.Visible := True;
          END;
        End;
      end;
    End;
  END
  ELSE
  BEGIN
    FMenu.ListBox.Items.Add('FALHA EM MÓDULO: ' + Desc);
  END;
  Result := True;
  If XFLHMODULO = 1
  Then
  Begin
    Result := False;
    Mensagem('A T E N Ç Ã O', 'Falha ao conectar o banco de dados. Verfique no menu!', '', 1, 1, False, 'a');
    FMenu.ListBox.Visible := True;
  End;
End;

// Função utilizada para efetuar o controle de acesso do usuário (Caso True o usuário esta liberado)
function ControlAccess(RESTRICAO: STRING; OPCAO: STRING): Boolean;
Begin
  Try
    // PASSA COMANDO DE SQL PARA FILTRAR O ESQUEMA DE ACESSO DE ACORDO COM USAUÁRIO
    DMMACS.TSelect.Close;
    DMMACS.TSelect.SQL.Clear;
    DMMACS.TSelect.SQL.Add(' select * from usuario ');
    DMMACS.TSelect.SQL.Add(' left join lojacesso ON lojacesso.cod_usuario = usuario.codusuario ');
    DMMACS.TSelect.SQL.Add(' where (usuario.codusuario=:CODUSER) ');
    DMMACS.TSelect.ParamByName('CODUSER').AsString := FMenu.LCODUSUARIO.Caption;
    DMMACS.TSelect.Open;
    // CASO A TABELA ESTIVER VAZIA
    If DMMACS.TSelect.IsEmpty
    Then
    BEGIN
      // SE A TABELA ESTIVER VAZIA E O USUARIO NAO FOR ADMINISTRADOR O ACESSO É NEGADO
      If FMenu.LCODUSUARIO.Caption = '111522' Then
        Result := True
      Else
        Result := False;

      If DMMACS.TSelect.FieldByName('ADM').AsString = '1'
      Then
      Begin // Se o usuario é administrado ele tem acesso a tudo
        Result := True;
      End

    End
    Else
    Begin
      // SE A TABELA NÃO ESTIVER VAZIA É VERIFICADO A PERMISSÃO DO USUÁRIO
      if DMMACS.TSelect.FieldByName('ADM').AsString = '1' then
      begin // Se o usuario é administrado ele tem acesso a tudo
        Result := True;
      end
      else
      begin
        // Edmar - 19/08/2015 - Se a restrição for para SOMENTE_ADMINISTRADOR
        // já retorna falso pois como não passou na condição acima
        if RESTRICAO = 'SOMENTE_ADMINISTRADOR' then
          Result := False
        else // senão, verifica qual a restrição
          if DMMACS.TSelect.FieldByName(RESTRICAO).AsString = '1' Then
            Result := True
          else
            Result := False;
      End;
    End;
  Except
    Result := False;
  End;

  // Se resultado for falso e o tipo de restrição permitir passar mensagens
  If (Result = False) AND (OPCAO = 'M') Then
    Mensagem('OPÇÃO BLOQUEADA', 'Sua conta de usuário não permite que você acesse esta opção!', 'Ao configurar sua conta de acesso o administrador do sistema não lhe permitiu acesso a este item. Somente o administrador pode lhe fornecer este acesso. ', 1, 1, True, 'i');
End;

// Calcula juros composto para um determinado nº de parcelas
Function JurCompPar(XValor: Real; XJuros: Real; NumParc: Integer): Real;
Var
  i: Integer;
  Calculo: Real;
Begin
  Try
    If NumParc = 0 Then
      Result := 0;
    If XJuros = 0 Then
      Result := 0;
    If XValor = 0 Then
      Result := 0;

    Calculo := XValor;
    For i := 1 to NumParc do
    Begin
      Calculo := Calculo + ((Calculo * XJuros) / 100);
    End;
    Result := Calculo;
  Except
    Result := 0;
  End;
End;

// {Retorna a diferença entre duas horas}
function DifHora(Inicio, Fim: String): String;
var
  FIni, FFim: TDateTime;
begin
  FIni := StrTotime(Inicio);
  FFim := StrTotime(Fim);
  If (Inicio > Fim)
  then
  begin
    Result := TimeToStr((StrTotime('23:59:59') - FIni) + FFim);
  end
  else
  begin
    Result := TimeToStr(FFim - FIni);
  end;
end;

// {Retorna a quantidade de dias uteis entre duas datas}
function DifDateUtil(dataini, datafin: string): Integer;
var
  a, b, c: TDateTime;
  ct, s: Integer;
begin
  if StrToDate(datafin) < StrToDate(dataini)
  then
  begin
    Result := 0;
    Exit;
  end;
  ct := 0;
  s := 1;
  a := StrToDate(datafin);
  b := StrToDate(dataini);
  if a > b
  then
  begin
    c := a;
    a := b;
    b := c;
    s := 1;
  end;
  a := a + 1;
  while (dayofweek(a) <> 2) and (a <= b) do
  begin
    if dayofweek(a) in [2 .. 6]
    then
    begin
      INC(ct);
    end;
    a := a + 1;
  end;
  ct := ct + round((5 * int((b - a) / 7)));
  a := a + (7 * int((b - a) / 7));
  while a <= b do
  begin
    if dayofweek(a) in [2 .. 6]
    then
    begin
      INC(ct);
    end;
    a := a + 1;
  end;
  if ct < 0
  then
  begin
    ct := 0;
  end;
  Result := s * ct;
end;

// Retorna o ultimo dia do mes
function UltDiaMes(Mes: Integer; Ano: Integer): Integer;
Var
  DataTeste: String;
begin
  DataTeste := '31/' + IntToStr(Mes) + '/' + IntToStr(Ano);
  Try
    StrToDate(DataTeste);
    Result := 31;
  Except
    Try
      DataTeste := '30/' + IntToStr(Mes) + '/' + IntToStr(Ano);
      StrToDate(DataTeste);
      Result := 30;
    Except
      Try
        DataTeste := '29/' + IntToStr(Mes) + '/' + IntToStr(Ano);
        StrToDate(DataTeste);
        Result := 29;
      Except
        Try
          DataTeste := '28/' + IntToStr(Mes) + '/' + IntToStr(Ano);
          StrToDate(DataTeste);
          Result := 28;
        Except
          Result := 27;
        End;
      End;
    End;
  End;
end;

// Retorna a diferenca de dias entre duas datas
function DifDias(DataVenc: TDateTime; DataAtual: TDateTime; CARENCIA: Real): String;
Var
  Data: TDateTime;
  dia, Mes, Ano: word;
begin
  if DataAtual < DataVenc
  Then
  Begin
    Result := '0';
  end
  else
  begin
    Data := DataAtual - DataVenc;
    DecodeDate(Data, Ano, Mes, dia);
    Result := FloatToStr(Data - CARENCIA);
  end;
end;

// Função Utilizada para controlar a inserção de novo registro para que não haja replicação de códigos
Function InserReg(Xtabela: TIBQuery; XSqlTabela: String; XPK: String): Integer;
Var
  Flag, CodigoPk: Integer;
Begin
  Flag := 0;
  While Flag = 0 Do
  Begin
    CodigoPk := Inserir(Xtabela, XSqlTabela, XPK);
    // Verifica se o código para a pk já não se encontra cadastrado
    If CodigoPk > 0
    Then
    Begin
      If SelectRegistro(XSqlTabela, XPK, IntToStr(CodigoPk)) = True
      Then
      Begin
        Inserir(Xtabela, XSqlTabela, XPK);
      End
      Else
      Begin
        Xtabela.Cancel;
        Xtabela.Insert;
        Xtabela.FieldByName(XPK).AsInteger := CodigoPk;
        Flag := 1;
      End;
    End;
  End;
  InserReg := CodigoPk;
End;

// Função Utilizada para controlar o código da pk da tabela sem efetuar a inserção
Function InserCodPk(Xtabela: TIBQuery; XSqlTabela: String; XPK: String): Integer;
Var
  CodigoPk: Integer;
Begin
  DMMACS.TCodigo.Close;
  DMMACS.TCodigo.Open; // é necessário fechar e abrir para atualizar a tabela em caso de transações da rede

  CodigoPk := DMMACS.TCodigo.FieldByName(XPK).AsInteger; // recebe o código para pk

  // Atualiza a tabela código
  DMMACS.TCodigo.Edit;
  DMMACS.TCodigo.FieldByName(XPK).AsInteger := DMMACS.TCodigo.FieldByName(XPK).AsInteger + 1;
  DMMACS.TCodigo.Post;
  DMMACS.IBTCodigo.CommitRetaining;

  InserCodPk := CodigoPk;
End;

// Função Utilizada para inserir novo registro e atualizar tabela de códigos
Function Inserir(Xtabela: TIBQuery; XSqlTabela: String; XPK: String): Integer;
Begin
  DMMACS.TCodigo.Close;
  DMMACS.TCodigo.Open; // é necessário fechar e abrir para atualizar a tabela em caso de transações da rede
  If DMMACS.TCodigo.FieldByName(XPK).AsInteger = 0 Then
    Inserir := 1
  Else
    Inserir := DMMACS.TCodigo.FieldByName(XPK).AsInteger; // recebe o código para pk

  // Atualiza a tabela código
  DMMACS.TCodigo.Edit;
  DMMACS.TCodigo.FieldByName(XPK).AsInteger := DMMACS.TCodigo.FieldByName(XPK).AsInteger + 1;
  DMMACS.TCodigo.Post;
  DMMACS.IBTCodigo.CommitRetaining;
End;

// Função Utilizada para fazer lançamentos automáticos em controle de cheques Recebidos
Function LancChEnt(COD_PLNCTA: Integer; COD_PLNCTASERV: Integer; HISTORICO: String; DTVENC: TDateTime; NUMCH: String; VlrProd: Real; vlrServ: Real; NumAgencia: String; NUMCONTA: String; COD_BANCO: Integer; PORTADOR: String; FonePort: String; TIPOGERADOR: String; COD_GERADOR: String): Boolean;
Begin
  If not Assigned(FLanChEntr)
  Then
  Begin // Verifica se o formulário já foi criado
    Application.CreateForm(TFLanChEntr, FLanChEntr); // cria formulario
    If VerifAcessForm('FLanChEntr') = True
    Then
    Begin
      Try
        // Paulo 02/11/2011: verifica se o caixa estah aberto
        If DMCAIXA.VerifAbCaixa = False
        Then
        Begin
          Mensagem('   A T E N Ç Ã O   ', 'CAIXA FECHADO. O ADIANTAMENTO NÃO PODE SER EFETUADO.', '', 1, 1, False, 'a');
          Result := False;
          Exit;
        End;
        // informa valores as variáveis para lançarem no formulário
        XCHLancAut := True;
        XChCod_PlnCta := COD_PLNCTA;
        XChCod_PlnCtaServ := COD_PLNCTASERV;
        XChHistorico := HISTORICO;
        XChVlrProd := VlrProd;
        XChvlrServ := vlrServ;
        XChDtVencimento := DTVENC;
        XChTipoGerador := TIPOGERADOR;
        XChCod_Gerador := COD_GERADOR;
        XChNumCheque := NUMCH;
        // abre formulario
        FLanChEntr.Showmodal;

        If FMenu.LancChEnt = True Then
          Result := True
        Else
          Result := False;

      Finally
        FLanChEntr.Free;
        FLanChEntr := nil;
      End;
    End
    Else
    Begin
      Mensagem('Acesso ao Formulário Bloqueado', 'O usuário informado no momento do acesso ao sistema, não possui permissão para acessar esta tela!', '', 1, 1, False, 'a');
    End;
  end
  else
  Begin
    If VerifAcessForm('FLancChEnt') = True
    Then
    Begin
      Try
        // informa valores as variáveis para lançarem no formulário
        // informa valores as variáveis para lançarem no formulário
        XCHLancAut := True;
        XChCod_PlnCta := COD_PLNCTA;
        XChCod_PlnCtaServ := COD_PLNCTASERV;
        XChHistorico := HISTORICO;
        XChVlrProd := VlrProd;
        XChvlrServ := vlrServ;
        XChDtVencimento := DTVENC;
        XChTipoGerador := TIPOGERADOR;
        XChCod_Gerador := COD_GERADOR;
        XChNumCheque := NUMCH;

        // abre formulario
        FLanChEntr.Showmodal;

        If FMenu.LancChEnt = True Then
          Result := True
        Else
          Result := False;

      Except
        Application.CreateForm(TFLanChEntr, FLanChEntr); // cria formulario
        FLanChEntr.Showmodal;
        If FMenu.LancChEnt = True Then
          Result := True
        Else
          Result := False;
      End;
    End
    Else
    Begin
      Mensagem('Acesso ao Formulário Bloqueado', 'O usuário informado no momento do acesso ao sistema, não possui permissão para acessar esta tela!', '', 1, 1, False, 'a');
    End;
  End;
End;

// Função Utilizada para fazer lançamentos automáticos em controle de cheques Emitidos
Function LancChSai(COD_PLNCTA: Integer; HISTORICO: String; DTVENC: TDateTime; Valor: Real; COD_CONTACOR: Integer; TIPOGERADOR: String; COD_GERADOR: String; Destinatario: string): Boolean;
Begin
  If not Assigned(FLanCHSaida)
  Then
  Begin // Verifica se o formulário já foi criado
    Application.CreateForm(TFLanCHSaida, FLanCHSaida); // cria formulario
    If VerifAcessForm('FLanCHSaida') = True
    Then
    Begin
      Try
        // Paulo 02/11/2011: verifica se o caixa estah aberto
        If DMCAIXA.VerifAbCaixa = False
        Then
        Begin
          Mensagem('   A T E N Ç Ã O   ', 'CAIXA FECHADO. O ADIANTAMENTO NÃO PODE SER EFETUADO.', '', 1, 1, False, 'a');
          Result := False;
          Exit;
        End;
        // informa valores as variáveis para lançarem no formulário
        XCHSLancAut := True;
        XChSCod_PlnCta := COD_PLNCTA;
        XChSHistorico := HISTORICO;
        XChSValor := Valor;
        XChSDtVencimento := DTVENC;
        XChSTipoGerador := TIPOGERADOR;
        XChSCod_Gerador := COD_GERADOR;
        XChSCtaCor := COD_CONTACOR;
        XChDestinatario := Destinatario;
        // abre formulario
        FLanCHSaida.Showmodal;

        If FMenu.LancChSai = True Then
          Result := True
        Else
          Result := False;

      Finally
        FLanCHSaida.Free;
        FLanCHSaida := nil;
      End;
    End
    Else
    Begin
      Mensagem('Acesso ao Formulário Bloqueado', 'O usuário informado no momento do acesso ao sistema, não possui permissão para acessar esta tela!', '', 1, 1, False, 'a');
    End;
  end
  else
  Begin
    If VerifAcessForm('FLanCHSaida') = True
    Then
    Begin
      Try
        // informa valores as variáveis para lançarem no formulário
        // informa valores as variáveis para lançarem no formulário
        XCHSLancAut := True;
        XChSCod_PlnCta := COD_PLNCTA;
        XChSHistorico := HISTORICO;
        XChSValor := Valor;
        XChSDtVencimento := DTVENC;
        XChSTipoGerador := TIPOGERADOR;
        XChSCod_Gerador := COD_GERADOR;
        XChSCtaCor := COD_CONTACOR;
        XChDestinatario := Destinatario;

        // abre formulario
        FLanCHSaida.Showmodal;

        If FMenu.LancChSai = True Then
          Result := True
        Else
          Result := False;

      Except
        Application.CreateForm(TFLanCHSaida, FLanCHSaida); // cria formulario
        FLanCHSaida.Showmodal;
        If FMenu.LancChSai = True Then
          Result := True
        Else
          Result := False;
      End;
    End
    Else
    Begin
      Mensagem('Acesso ao Formulário Bloqueado', 'O usuário informado no momento do acesso ao sistema, não possui permissão para acessar esta tela!', '', 1, 1, False, 'a');
    End;
  End;
End;

// Função Utilizada para fazer lançamentos automáticos em contas a pagar e receber
Function LancConta(Pedido: String; CODPEDIDO: Integer; CodPessoa: Integer; Cobranca: String; ValorProd: Real; ValorServ: Real; CodConta: Integer; CodContaServ: Integer; CodCota: Integer; HISTORICO: String; CodFormPag: Integer; Documento: String; GERADOR: String; Data: TDateTime; COMIS: Real;
  DATAREF: String; NumFiscal: String): Boolean;
Var
  Tipo: TComponentClass;
  Formulario: TForm;
Begin
  // Paulo 02/11/2011: verifica se o caixa estah aberto
  If DMCAIXA.VerifAbCaixa = False
  Then
  Begin
    Mensagem('   A T E N Ç Ã O   ', 'CAIXA FECHADO. O ADIANTAMENTO NÃO PODE SER EFETUADO.', '', 1, 1, False, 'a');
    Result := False;
    Exit;
  End;
  // verifica qual o tipo do pedido para que se determine qual o formulário será usado
  If (Pedido = 'PEDVENDA') or (Pedido = 'ORDEM') or (Pedido = 'FATPEDV')
  Then
  Begin
    Tipo := TFCtaReceber;
    Formulario := FCtaReceber;
  End
  Else
  Begin
    Tipo := TFCtaPagar;
    Formulario := FCtaPagar;
  End;
  If not Assigned(Formulario)
  Then
  Begin // Verifica se o formulário já foi criado
    Application.CreateForm(Tipo, Formulario); // cria formulario
    If VerifAcessForm(Formulario.Name) = True
    Then
    Begin
      Try
        // informa valores as variáveis para lançarem no formulário
        XLancAut := True;
        XCODPEDIDO := CODPEDIDO;
        xCod_Pessoa := CodPessoa;
        XCobranca := Cobranca;
        XDATAPED := Data;
        XDATAREF := DATAREF;
        AlxValor := ValorProd + ValorServ;
        XValorProd := ValorProd;
        XValorServ := ValorServ;
        XCod_Conta := CodConta;
        XCod_ContaServ := CodContaServ;
        XCod_Cota := CodCota;
        xHistorico := HISTORICO;
        XCod_FormPag := CodFormPag;
        XDOCUMENTO := Documento;
        XNumFiscal := NumFiscal;
        XPedido := Pedido;
        XGERADOR := GERADOR;
        XPERCOMIS := (COMIS * 100) / AlxValor;
        // abre formulario
        Formulario.Showmodal;

        If FMenu.LancAutConta = True Then
          Result := True
        Else
          Result := False;
      Finally
        FMenu.xLancConta := False;
        FMenu.xLancConta := False;
        Formulario.Free;
        Formulario := nil;
      End;
    End
    Else
    Begin
      Mensagem('Acesso ao Formulário Bloqueado', 'O usuário informado no momento do acesso ao sistema, não possui permissão para acessar esta tela!', '', 1, 1, False, 'a');
    End;
  end
  else
  Begin
    If VerifAcessForm(Formulario.Name) = True
    Then
    Begin
      Try
        // informa valores as variáveis para lançarem no formulário
        XLancAut := True;
        XCODPEDIDO := CODPEDIDO;
        xCod_Pessoa := CodPessoa;
        XCobranca := Cobranca;
        AlxValor := ValorProd;
        XCod_Conta := CodConta;
        XCod_Cota := CodCota;
        XDATAPED := Data;
        xHistorico := HISTORICO;
        XCod_FormPag := CodFormPag;
        XDOCUMENTO := Documento;
        XNumFiscal := NumFiscal;
        // abre formulario
        Formulario.Showmodal;
        If FMenu.LancAutConta = True Then
          Result := True
        Else
          Result := False;

      Except
        Application.CreateForm(Tipo, Formulario);
        Formulario.Showmodal;
        If FMenu.LancAutConta = True Then
          Result := True
        Else
          Result := False;
      End;
    End
    Else
    Begin
      Mensagem('Acesso ao Formulário Bloqueado', 'O usuário informado no momento do acesso ao sistema, não possui permissão para acessar esta tela!', '', 1, 1, False, 'a');
    End;
  End;

End;

Function InicializaVarUF(XCod_pedido: Integer; Xtabela: String): Boolean;
begin
  Result := True;
  Try
    // Edmar - 25/02/2015 - Valida se a empresa é do tipo industria
    if DMMACS.TEmpresa.FieldByName('INDUSTRIA').AsString = '1' then
      XEmpresaInustria := True
    else
      XEmpresaInustria := False;

    Result := True;
    // Selecao para UF de Origem, cliente usuario
    DMMACS.TAlx.Close;
    DMMACS.TAlx.SQL.Clear;
    DMMACS.TAlx.SQL.Add(' select vwcidade.uf, estado.aliqinterna, Estado.cod_cstinterestadual from empresa ');
    DMMACS.TAlx.SQL.Add(' left Join vwcidade on empresa.cod_cidade = vwcidade.cod_cidade ');
    DMMACS.TAlx.SQL.Add(' left join estado on vwcidade.cod_estado = estado.cod_estado ');
    DMMACS.TAlx.Open;
    If DMMACS.TAlx.IsEmpty
    Then
    Begin
      Result := False;
    End
    Else
    Begin
      If DMMACS.TAlx.FieldByName('UF').AsString = ''
      Then
      Begin
        Result := False;
      End
      Else
      Begin
        Result := True;
        XUfOrigem := DMMACS.TAlx.FieldByName('UF').AsString;
        XCodCstST := DMMACS.TAlx.FieldByName('cod_cstinterestadual').AsInteger; // caso a venda seja dentro do estado, já assumimos o cst de st
      End;
    End;

    // UF PARA DESTINO, CLIENTE OU FORNECEDOR
    DMMACS.TAlx.Close;
    DMMACS.TAlx.SQL.Clear;
    // SQL PARA PEDIDO DE VENDA
    If Xtabela = 'PEDV'
    Then
    Begin
      DMMACS.TAlx.SQL.Add(' Select vwcidade.uf, estado.mva,  Estado.cod_cstinterestadual, estado.MVAFORASIMPLES, estado.COD_CSTINTERESTADUAL as CST, cliente.consumidor, estado.CST_INTERNA, ESTADO.CST_EXTERNA, ESTADO.TXT_SUBSTITUICAO, ');
      DMMACS.TAlx.SQL.Add(' ESTADO.ALIQINTERNA, ESTADO.aliqinterestaual,ESTADO.isentost, cliente.cod_pessoa from vwcliente ');
      DMMACS.TAlx.SQL.Add(' left join vwpedv on vwcliente.cod_cliente = vwpedv.cod_cliente ');
      DMMACS.TAlx.SQL.Add(' Left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade ');
      DMMACS.TAlx.SQL.Add(' left join cliente on vwcliente.cod_cliente = cliente.cod_cliente ');
      DMMACS.TAlx.SQL.Add(' Left join estado on vwcidade.cod_estado = estado.cod_estado  ');
      DMMACS.TAlx.SQL.Add(' where vwpedv.cod_pedvenda=:codigo ');
    End;

    // SQL PARA ORDEM DE SERVIÇO
    If Xtabela = 'ORDEM'
    Then
    Begin
      DMMACS.TAlx.SQL.Add(' Select vwcidade.uf, estado.ISENTOST, estado.mva,  Estado.cod_cstinterestadual, estado.MVAFORASIMPLES, estado.COD_CSTINTERESTADUAL as CST, cliente.consumidor, estado.CST_INTERNA, ESTADO.CST_EXTERNA, ');
      DMMACS.TAlx.SQL.Add(' ESTADO.TXT_SUBSTITUICAO, ESTADO.ALIQINTERNA, ESTADO.aliqinterestaual, vwcliente.cod_pessoa from vwcliente ');
      DMMACS.TAlx.SQL.Add(' left join vwordem on vwcliente.cod_cliente = vwordem.cod_cliente ');
      DMMACS.TAlx.SQL.Add(' Left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade ');
      DMMACS.TAlx.SQL.Add(' left join cliente on vwcliente.cod_cliente = cliente.cod_cliente ');
      DMMACS.TAlx.SQL.Add(' Left join estado on vwcidade.cod_estado = estado.cod_estado  ');
      DMMACS.TAlx.SQL.Add(' where vwordem.cod_ordem=:codigo ');
    End;

    // SQL PARA ORCAMENTO
    If Xtabela = 'ORC'
    Then
    Begin
      DMMACS.TAlx.SQL.Add(' Select vwcidade.uf, estado.mva,  Estado.cod_cstinterestadual, estado.MVAFORASIMPLES, estado.COD_CSTINTERESTADUAL as CST, cliente.consumidor, cliente.cod_pessoa, ');
      DMMACS.TAlx.SQL.Add(' estado.CST_INTERNA, ESTADO.CST_EXTERNA, ESTADO.TXT_SUBSTITUICAO, ESTADO.ALIQINTERNA, ESTADO.aliqinterestaual, ESTADO.isentost, cliente.simplesnacional ');
      DMMACS.TAlx.SQL.Add(' from vwcliente ');
      DMMACS.TAlx.SQL.Add(' left join orcamento on orcamento.cod_cliente = vwcliente.cod_cliente ');
      DMMACS.TAlx.SQL.Add(' left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade ');
      DMMACS.TAlx.SQL.Add(' left join cliente on vwcliente.cod_cliente = cliente.cod_cliente ');
      DMMACS.TAlx.SQL.Add(' left join estado on vwcidade.cod_estado = estado.cod_estado ');
      DMMACS.TAlx.SQL.Add(' where orcamento.cod_orcamento = :codigo ');
    End;

    // SQL PARA PEDIDO DE COMPRA (ENTRADAS
    If Xtabela = 'PEDC'
    Then
    Begin
      DMMACS.TAlx.SQL.Add(' select vwcidade.uf, estado.ISENTOST, estado.mva,  Estado.cod_cstinterestadual, estado.MVAFORASIMPLES, estado.COD_CSTINTERESTADUAL as CST, estado.CST_INTERNA, ESTADO.CST_EXTERNA, ESTADO.TXT_SUBSTITUICAO, ');
      DMMACS.TAlx.SQL.Add(' ESTADO.ALIQINTERNA, ESTADO.aliqinterestaual, vwfornec.cod_pessoa from vwfornec ');
      DMMACS.TAlx.SQL.Add(' left join vwpedc on vwfornec.cod_fornec = vwpedc.cod_fornec ');
      DMMACS.TAlx.SQL.Add(' left join vwcidade on vwfornec.cod_cidade = vwcidade.cod_cidade ');
      DMMACS.TAlx.SQL.Add(' Left join estado on vwcidade.cod_estado = estado.cod_estado ');
      DMMACS.TAlx.SQL.Add(' where vwpedc.cod_pedcomp = :codigo ');
    End;

    DMMACS.TAlx.ParamByName('codigo').AsInteger := XCod_pedido;
    DMMACS.TAlx.SQL.Text;
    DMMACS.TAlx.Open;

    xCod_Pessoa := DMMACS.TAlx.FieldByName('cod_pessoa').AsInteger;

    If (Xtabela = 'PEDV') or (Xtabela = 'ORDEM') or (Xtabela = 'ORC') then
    begin
      // Pauulo 26/10/2010: Verifica se o estado é isento st
      If DMMACS.TAlx.FieldByName('isentost').AsString = '1' Then
        XEstadoIsentoST := True
      Else
        XEstadoIsentoST := False;

      If DMMACS.TAlx.FieldByName('consumidor').AsString = 'S' Then
        XClienteConsumidorFinal := True
      Else
        XClienteConsumidorFinal := False;
    end;

    XUf := DMMACS.TAlx.FieldByName('UF').AsString;
    If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') Then
      XUf := XUfOrigem;

    If DMMACS.TAlx.IsEmpty Then
      Result := False;

    If XUf <> ''
    Then
    Begin
      Result := True;

      XUfDestino := DMMACS.TAlx.FieldByName('UF').AsString;

      If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') Then
        XUfDestino := XUf;

      VerificaTipoCliente(xCod_Pessoa);

      If XClientedoSimples = True Then
        XMvaEstado := DMMACS.TAlx.FieldByName('MVA').AsCurrency
      Else
        XMvaEstado := DMMACS.TAlx.FieldByName('MVAFORASIMPLES').AsCurrency;

      XAliqIcms := DMMACS.TEmpresa.FieldByName('IMPEST').AsCurrency; // Atribui como aliquota de icms do estado de origem (DAS)
      XAlqIntDestinatario := DMMACS.TAlx.FieldByName('ALIQINTERNA').AsCurrency;
      XAliqExtDestinatario := DMMACS.TAlx.FieldByName('aliqinterestaual').AsCurrency;
      XAliqSt := DMMACS.TAlx.FieldByName('ALIQINTERNA').AsCurrency;
      If XUfOrigem <> XUfDestino
      Then
      Begin
        If (XClienteConsumidorFinal = False) or (XClienteIE = True) Then
          XCodCstST := DMMACS.TAlx.FieldByName('cod_cstinterestadual').AsInteger; // caso a venda fora do do estado, já assumimos o cst de st de fora do estado
        XCSTInterestadual := DMMACS.TAlx.FieldByName('CST').AsInteger;
        If XCSTInterestadual <= 0 Then
          XCSTInterestadual := xCodCst;
      End;
    End
    else
      XUfDestino := XUfOrigem;

    XUfOrigem := UpperCase(XUfOrigem);
    XUfDestino := UpperCase(XUfDestino);
  except

  end;
end;

Function VerificaTipoCliente(xCod: Integer): Boolean;
begin
  Try
    DMPessoa.TALX1.Close;
    DMPessoa.TALX1.SQL.Clear;
    DMPessoa.TALX1.SQL.Add(' Select pessoaj.INDUSTRIA, pessoaj.insc_est, cliente.consumidor, cliente.SIMPLESNACIONAL from vwcliente ');
    DMPessoa.TALX1.SQL.Add(' left Join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
    DMPessoa.TALX1.SQL.Add(' Left Join pessoaj on pessoa.cod_pessoa=pessoaj.cod_pessoa ');
    DMPessoa.TALX1.SQL.Add(' Left Join cliente on vwcliente.cod_cliente=cliente.cod_cliente ');
    DMPessoa.TALX1.SQL.Add(' Where vwcliente.cod_pessoa = :codigo ');
    DMPessoa.TALX1.ParamByName('codigo').AsInteger := xCod_Pessoa; // xCod_Pessoa;
    DMPessoa.TALX1.Open;

    If not DMPessoa.TALX1.IsEmpty
    Then
    Begin
      If DMPessoa.TALX1.FieldByName('consumidor').AsString = 'S' Then
        XClienteConsumidorFinal := True
      Else
        XClienteConsumidorFinal := False;

      If DMPessoa.TALX1.FieldByName('insc_est').AsString <> '' Then
        XClienteIE := True
      Else
        XClienteIE := False;

      // Outra variável para controlar se o cliente é do simples ou não
      If DMPessoa.TALX1.FieldByName('SIMPLESNACIONAL').AsString = 'S' Then
        XClientedoSimples := True
      Else
        XClientedoSimples := False;

      Result := True;
    End
    Else
    Begin
      Result := False;
    End;
  Except
    ;
  End;
end;

Function AtualizaCstCsosn(XCod_pedido: Integer; Xtabela: String): Boolean;
begin
  Result := True;
  Try
    // OS ITENS DEVEM ESTAR CADASTRADOS COM CST <> DE CST COM ST PARA SOMENTE FAZER A CONVERSÃO CASO OCORRAM OS CASOS <> DO ABAIXO
    If ((XUfOrigem = XUfDestino) and (XClienteConsumidorFinal = True)) OR ((XUfOrigem <> XUfDestino) and (XClienteIE = False) and (XClienteConsumidorFinal = True)) Then
      Exit; // se venda dentro do estado para consumidor final ou cliente sem inscrição estadual não alteramos os cst

    DmSaida.TAlx.Close;
    DmSaida.TAlx.SQL.Clear;
    // Edmar - 20/08/2014 - Update diferente dependendo a tabela
    if Xtabela = 'ORC' then
      DmSaida.TAlx.SQL.Add('update itprodorc set itprodorc.cod_cst = :cst Where itprodorc.cod_orcamento = :pedido');

    if Xtabela = 'PEDV' then
      DmSaida.TAlx.SQL.Add(' update itenspedven set itenspedven.cod_cst = :cst Where itenspedven.cod_pedven = :pedido ');

    if Xtabela = 'ORDEM' then
      DmSaida.TAlx.SQL.Add(' update itprodord set itprodord.cod_cst = :cst Where itprodord.cod_ordem = :pedido ');

    DmSaida.TAlx.ParamByName('pedido').AsInteger := XCod_pedido;
    DmSaida.TAlx.ParamByName('cst').AsInteger := XCodCstST;
    DmSaida.TAlx.ExecSQL;
    DmSaida.IBT.CommitRetaining;
  Except
    Result := False;
  End;
end;

Function CalculoIcmsSubstituicaoIndustriasSimples(xTab: TIBQuery; Xtabela: String): Boolean;
var
  xVlrTotal: Real;
begin
  Try
    Result := True;
    xTab.Edit;
    // Calcula somente fora do estado os caso a empresa esteja marcado como industria, ai calculamos dentro e fora do estado
    If (XUfOrigem <> XUfDestino) or (XEmpresaInustria = True) then
    Begin
      if Xtabela = 'ORC' then
      begin
        xVlrTotal := xTab.FieldByName('vlrunit').AsCurrency * xTab.FieldByName('qtd').AsCurrency;
        /// /////////////////////////////////////////////////////
        // ****************************************************//
        // *** EXECUTA CALCULOS REFERENTE A BASE DE CALCULO ***//
        // ****************************************************//
        /// /////////////////////////////////////////////////////

        If XMvaEstado > 1 Then
          xTab.FieldByName('baseicmssubs').AsCurrency := (xVlrTotal) + ((xVlrTotal) * XMvaEstado) / 100
        Else
          xTab.FieldByName('baseicmssubs').AsCurrency := (xVlrTotal);

        // Edmar - 29/09/2014 - fora do estado consumidor final com inscrição estadual
        // base de calculo = mesmo valor dos produtos
        If (XUfOrigem <> XUfDestino) and (XClienteConsumidorFinal = True) and (XClienteIE = True) then
        begin
          // Edmar - 29/09/2014 - Consumidor final com inscrição estadual possui
          // o MVA igual ao valor total dos produtos
          XMvaEstado := xVlrTotal;
          xTab.FieldByName('baseicmssubs').AsCurrency := xVlrTotal;
        end;

        // Edmar - 29/09/2014 - fora do estado revenda (não consumidor final) sendo ou não simples nacional
        // base de calculo = valor dos produtos + MVA%
        if ((XUfOrigem <> XUfDestino) and (not XClienteConsumidorFinal)) or (XClientedoSimples) then
          xTab.FieldByName('BASEICMSSUBS').AsCurrency := xVlrTotal + (xVlrTotal * (XMvaEstado / 100));

        /// //////////////////////////////////////////////////////
        // *****************************************************//
        // *** FINALIZA CALCULOS REFERENTE A BASE DE CALCULO ***//
        // *****************************************************//
        /// //////////////////////////////////////////////////////

        /// ///////////////////////////////////////////////////////
        // ******************************************************//
        // *** EXECUTA CALCULOS REFERENTE AO VALOR DE ICMS ST ***//
        // ******************************************************//
        /// ///////////////////////////////////////////////////////

        If (XUfOrigem = XUfDestino) and (XClienteConsumidorFinal = False) then
        Begin
          // Dentro do Estado Cliente Revenda (Vlr Créd. Icms aplicado sobre DAS), (BC ST = V. PRODUTOS * MVA), ( VLR ST = (BC ST*ALIQ INTERNA)-(PRODUTOS*ALIQ INTERNA)
          xTab.FieldByName('VLRICMSSUBS').AsCurrency := ((xTab.FieldByName('baseicmssubs').AsCurrency * XAlqIntDestinatario) / 100) - (((xVlrTotal) * XAlqIntDestinatario) / 100);
        End
        else
        Begin
          // Edmar - 29/09/2014 - consumidor final com inscrição estadual
          // valor icms st = valor dos produtos * (aliq. interna - aliq. interestadual)
          If (XUfOrigem <> XUfDestino) and (XClienteConsumidorFinal = True) and (XClienteIE = True) then
            xTab.FieldByName('VLRICMSSUBS').AsCurrency :=
              (xVlrTotal * (XAlqIntDestinatario - XAliqExtDestinatario) / 100);

          // Edmar - 29/09/2014 - fora do estado revenda (não consumidor final) sendo ou não simples nacional
          // valor icms st = (base de calculo * aliq. st) - ((produtos - desconto) * (aliq. interestadual))
          if ((XUfOrigem <> XUfDestino) and (not XClienteConsumidorFinal)) or (XClientedoSimples) then
            xTab.FieldByName('VLRICMSSUBS').AsCurrency :=
              (xTab.FieldByName('BASEICMSSUBS').AsCurrency * (XAliqSt) / 100) - (xTab.FieldByName('VLRTOTAL').AsCurrency * (XAliqExtDestinatario) / 100);
        end;
        /// ////////////////////////////////////////////////////////
        // *******************************************************//
        // *** FINALIZA CALCULOS REFERENTE AO VALOR DE ICMS ST ***//
        // *******************************************************//
        /// ////////////////////////////////////////////////////////
      End;

      if Xtabela = 'PEDV' then
      begin

        /// /////////////////////////////////////////////////////
        // ****************************************************//
        // *** EXECUTA CALCULOS REFERENTE A BASE DE CALCULO ***//
        // ****************************************************//
        /// /////////////////////////////////////////////////////

        If XMvaEstado > 1 Then
          xTab.FieldByName('baseicmssubs').AsCurrency := (xTab.FieldByName('valortotal').AsCurrency { - xTab.FieldByName('descnf').AsCurrency } ) + ((xTab.FieldByName('valortotal').AsCurrency { - xTab.FieldByName('descnf').AsCurrency } ) * XMvaEstado) / 100
        else
          xTab.FieldByName('baseicmssubs').AsCurrency := (xTab.FieldByName('valortotal').AsCurrency { - xTab.FieldByName('descnf').AsCurrency } );

        // Edmar - 29/09/2014 - fora do estado consumidor final com inscrição estadual
        // base de calculo = mesmo valor dos produtos
        If (XUfOrigem <> XUfDestino) and (XClienteConsumidorFinal = True) and (XClienteIE = True) then
        begin
          // Edmar - 29/09/2014 - Consumidor final com inscrição estadual possui
          // o MVA igual ao valor total dos produtos
          XMvaEstado := xTab.FieldByName('valortotal').AsCurrency;
          xTab.FieldByName('baseicmssubs').AsCurrency := (xTab.FieldByName('valortotal').AsCurrency);
        end;

        // Edmar - 29/09/2014 - fora do estado revenda (não consumidor final) sendo ou não simples nacional
        // base de calculo = valor dos produtos + MVA%
        if ((XUfOrigem <> XUfDestino) and ((not XClienteConsumidorFinal)) or (XClientedoSimples)) then
          xTab.FieldByName('BASEICMSSUBS').AsCurrency := xTab.FieldByName('valortotal').AsCurrency + (xTab.FieldByName('valortotal').AsCurrency * (XMvaEstado / 100));

        /// //////////////////////////////////////////////////////
        // *****************************************************//
        // *** FINALIZA CALCULOS REFERENTE A BASE DE CALCULO ***//
        // *****************************************************//
        /// //////////////////////////////////////////////////////

        /// ///////////////////////////////////////////////////////
        // ******************************************************//
        // *** EXECUTA CALCULOS REFERENTE AO VALOR DE ICMS ST ***//
        // ******************************************************//
        /// ///////////////////////////////////////////////////////

        If (XUfOrigem = XUfDestino) and (XClienteConsumidorFinal = False) then
        Begin
          // Dentro do Estado Cliente Revenda (Vlr Créd. Icms aplicado sobre DAS), (BC ST = V. PRODUTOS * MVA), ( VLR ST = (BC ST*ALIQ INTERNA)-(PRODUTOS*ALIQ INTERNA)
          xTab.FieldByName('VLRICMSSUBS').AsCurrency := ((xTab.FieldByName('baseicmssubs').AsCurrency * XAlqIntDestinatario) / 100) - (((xTab.FieldByName('valortotal').AsCurrency) * XAliqExtDestinatario) / 100);
        End
        else
        Begin
          // Edmar - 29/09/2014 - consumidor final com inscrição estadual
          // valor icms st = valor dos produtos * (aliq. interna - aliq. interestadual)
          If (XUfOrigem <> XUfDestino) and (XClienteConsumidorFinal = True) and (XClienteIE = True) then
            xTab.FieldByName('VLRICMSSUBS').AsCurrency :=
              (xTab.FieldByName('valortotal').AsCurrency * (XAlqIntDestinatario - XAliqExtDestinatario) / 100);

          // Edmar - 29/09/2014 - fora do estado revenda (não consumidor final) sendo ou não simples nacional
          // valor icms st = (base de calculo * aliq. st) - ((produtos - desconto) * (aliq. interestadual))
          if ((XUfOrigem <> XUfDestino) and (not XClienteConsumidorFinal)) or (XClientedoSimples) then
            xTab.FieldByName('VLRICMSSUBS').AsCurrency :=
              (xTab.FieldByName('BASEICMSSUBS').AsCurrency * (XAliqSt) / 100) - ((xTab.FieldByName('valortotal').AsCurrency { - xTab.FieldByName('descnf').AsCurrency } ) * (XAliqExtDestinatario) / 100);
        end;

        /// ////////////////////////////////////////////////////////
        // *******************************************************//
        // *** FINALIZA CALCULOS REFERENTE AO VALOR DE ICMS ST ***//
        // *******************************************************//
        /// ////////////////////////////////////////////////////////
      End;
    end; // Edmar - 21/08/2014 - end da condição uf destino uf origem

    xTab.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
    If (XCSTInterestadual > 0) and (FMenu.XTributaEmpresa = 'NORMAL') Then
      xTab.FieldByName('COD_CST').AsInteger := XCSTInterestadual;
    xTab.FieldByName('APLICARST').AsString := '1';
    xTab.Post;

    // Alex 01/08/2014: Se o estado for isento ele zera os valores substituidos
    If (XEstadoIsentoST = True) or ((XClienteConsumidorFinal = True) AND (XClienteIE = False)) Then
    Begin
      xTab.Edit;
      xTab.FieldByName('baseicmssubs').AsCurrency := 0;
      xTab.FieldByName('VLRICMSSUBS').AsCurrency := 0;
      xTab.FieldByName('IPNMVA').AsCurrency := 0; // XMvaEstado;
      xTab.FieldByName('APLICARST').AsString := '0';
      xTab.Post;
    End;
  Except
    Result := False;
  End;
end;

// Filtra uma tquery através dos registros passados
Function FiltraTabela(Xtabela: TIBQuery; XSqlTabela, Xcampo, XValor: String; XSQLAux: String): Boolean;
Var
  XSql: String; // Armazena o conteúdao da sql para verificar se a mesma não se encontra vazia
Begin

  Try
    If (Xcampo = '')
    Then
    Begin
      Xtabela.Close;
      Xtabela.SQL.Clear;
      Xtabela.SQL.Add('SELECT * FROM ' + XSqlTabela);
      Xtabela.Open;
    End
    Else
    Begin
      Xtabela.Close;
      Xtabela.SQL.Clear;
      If XValor <> '' Then
        Xtabela.SQL.Add('SELECT * FROM ' + XSqlTabela + ' Where (' + Xcampo + ' = ' + #39 + XValor + #39 + ')');

      If (XSQLAux <> '')
      Then
      Begin // passa sql auxiliar se o valor em branco vai passar apenas a sql auxiliar
        If XValor = '' Then
          Xtabela.SQL.Add('SELECT * FROM ' + XSqlTabela + ' Where ' + XSQLAux)
        Else
          Xtabela.SQL.Add(XSQLAux);
      End;

      XSql := Xtabela.SQL.Text;
      If XSql <> ''
      Then
      Begin // se não foi passado nada para consulta prepara uma consuilta para retornar tabela vazia
        Try
          Xtabela.Prepare;
          Xtabela.Open;
        except
          Result := False;
        End;
      End
      Else
      Begin
        Result := False;
      End;
    End;
    If not Xtabela.IsEmpty Then
      Result := True
    Else
      Result := False;
  Except
  End;
End;

// Função Utilizada para converter um tempo em decimal. Ex: 02:45 = 2,75. 02:30 = 2,5. 02,15 = 2,25
Function ConverteTempoDecimal(EntradaTempo: String): Real;
Var
  EntradaHorasString, HorasString, MinutosString, resultadofinal: String;
  decimal_minutos, final_double: Real;
Begin
  Try
    EntradaHorasString := EntradaTempo;
    HorasString := copy(EntradaHorasString, 0, 2);
    MinutosString := copy(EntradaHorasString, 4, 2);
    decimal_minutos := (StrToFloat(MinutosString)) / 60;
    MinutosString := FloatToStr(decimal_minutos);
    resultadofinal := (HorasString) + (copy(MinutosString, 2, 3));
    final_double := StrToFloat(resultadofinal);
    Result := final_double;
  Except
    Result := 0;
  End;
End;

// Função Utilizada para concatenar determinado nº de zeros a esquerda de uma string
Function ConcatZero(Variavel: String; NCasas: Integer): String;
Var
  i: Integer;
  XZeros: String;
Begin
  For i := Length(Variavel) + 1 To NCasas Do
  Begin
    XZeros := XZeros + '0';
  End;
  Result := XZeros + Variavel;
End;

// Paulo 14/06/2011: Função Utilizada para concatenar determinado nº de zeros a direita de uma string
Function ConcatZeroDir(Variavel: String; NCasas: Integer): String;
Var
  i: Integer;
  XZeros: String;
Begin
  For i := Length(Variavel) + 1 To NCasas Do
  Begin
    XZeros := XZeros + '0';
  End;
  Result := Variavel + XZeros;
End;

// Função Utilizada para concatenar determinado nº espaços em branco
Function ConcatEspaco(Variavel: String; NCasas: Integer): String;
Var
  i: Integer;
  XZeros: String;
Begin
  If Length(Variavel) >= NCasas
  Then
  Begin
    Result := copy(Variavel, 0, NCasas);
  End
  Else
  Begin
    For i := Length(Variavel) + 1 To NCasas Do
    Begin
      XZeros := XZeros + ' ';
    End;
    Result := XZeros + Variavel;
  End;
End;

// Função Utilizada para concatenar determinado nº espaços em branco a esquerda
Function ConcatEspacoDir(Variavel: String; NCasas: Integer): String;
Var
  i: Integer;
  XZeros: String;
Begin
  For i := Length(Variavel) + 1 To NCasas Do
  Begin
    XZeros := XZeros + ' ';
  End;
  Result := Variavel + XZeros;
End;

// Função utilizada para calcular o próximo cod. interno da tabela
function UltCodInt(Xtabela: String; TIPOCONSULT: String): String;
Begin
  If SelectRegistro('LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption) = True
  Then
  Begin
    // verifica se o tipo deve se baziar em produto ou pessoa
    If TIPOCONSULT = 'PES'
    Then
    Begin
      // Filtra a tabela a fim de consultar e encontrar o maior codigo interno da tabela
      DMMACS.TAlx.Close;
      DMMACS.TAlx.SQL.Clear;
      DMMACS.TAlx.SQL.Add('SELECT MAX(COD_INTERNO) AS INTERNO FROM ' + Xtabela);
      DMMACS.TAlx.Open;
      If SelectRegistro('EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption) = True
      Then
      Begin
        If DMMACS.TSelect.FieldByName('ZEROCODPESSOA').AsString = '1'
        Then
        Begin
          If DMMACS.TAlx.FieldByName('INTERNO').AsString = '' Then
            Result := ConcatZero('1', DMMACS.TSelect.FieldByName('NCASASZEROPES').AsInteger)
          Else
            Result := ConcatZero(IntToStr(StrToInt(DMMACS.TAlx.FieldByName('INTERNO').AsString) + 1), DMMACS.TSelect.FieldByName('NCASASZEROPES').AsInteger);
        End
        Else
        Begin
          If DMMACS.TAlx.FieldByName('INTERNO').AsString = '' Then
            Result := '1'
          Else
            Result := IntToStr(StrToInt(DMMACS.TAlx.FieldByName('INTERNO').AsString) + 1);
        End;
      End;
    End;
    If TIPOCONSULT = 'SUBPROD'
    Then
    Begin
      // Filtra a tabela a fim de consultar e encontrar o maior codigo interno da tabela
      DMMACS.TAlx.Close;
      DMMACS.TAlx.SQL.Clear;
      DMMACS.TAlx.SQL.Add('SELECT MAX(COD_INTERNO) AS INTERNO FROM SubProduto Join estoque on estoque.cod_subprod = subproduto.cod_subproduto ');
      DMMACS.TAlx.SQL.Add('Where estoque.cod_loja = :CodLoja');
      DMMACS.TAlx.ParamByName('CodLoja').AsString := FMenu.LCODLOJA.Caption;
      DMMACS.TAlx.Open;

      If DMMACS.TAlx.FieldByName('INTERNO').AsString = '' Then
        Result := ConcatZero('1', DMMACS.TSelect.FieldByName('NCASASZEROPROD').AsInteger)
      Else
        Result := ConcatZero(IntToStr(StrToInt(DMMACS.TAlx.FieldByName('INTERNO').AsString) + 1), DMMACS.TSelect.FieldByName('NCASASZEROPROD').AsInteger);
    End;
    // SE FOR DO TIPO DE CODIGO PARA GRUPO E SUBGRUPO
    If TIPOCONSULT = 'GRUPO'
    Then
    Begin
      // Filtra a tabela a fim de consultar e encontrar o maior codigo interno da tabela
      DMMACS.TAlx.Close;
      DMMACS.TAlx.SQL.Clear;
      DMMACS.TAlx.SQL.Add('SELECT MAX(COD_INTERNO) AS INTERNO FROM ' + Xtabela);
      DMMACS.TAlx.Open;
      // VERIFIQUE SE NECESSITA INCORPORAR ZEROS AO CÓDIGO
      If DMMACS.TAlx.FieldByName('INTERNO').AsString = '' Then
        Result := ConcatZero('1', 3)
      Else
        Result := ConcatZero(IntToStr(StrToInt(DMMACS.TAlx.FieldByName('INTERNO').AsString) + 1), 3);
    End;
  End;
End;

// Seleciona determinado registro na tabela e retorna true se encontrou
Function SelectRegistro(Xtabela, Xcampo, XValor: String): Boolean;
Begin
  DMMACS.TSelect.Close;
  DMMACS.TSelect.SQL.Clear;
  DMMACS.TSelect.SQL.Add('Select * From ' + Xtabela + ' Where ' + Xcampo + ' = ' + XValor);
  Try
    DMMACS.TSelect.Open;
  Except
    Result := False;
  End;

  If Not DMMACS.TSelect.IsEmpty Then
    Result := True
  Else
    Result := False;
End;

// Função utilizada para verificar se o usuário em questão pode acessar o formulario passado
function VerifAcessForm(Formu: String): Boolean;
Begin
  Result := True;
End;

// tira caracter em determinada posiç~sao
function TiraCaracterEmPosicao(Valor: String; Posicao: Integer): String;
Var
  i: byte;
Begin
  Delete(Valor, Posicao, 1);
  TiraCaracterEmPosicao := Valor;
end;

// Função utilizada para remover zeros "0" de uma string
function TiraZerosEsquerda(Valor: String): String;
Var
  i: byte;
  xResultadoTiraZeros: String;
  xEncontrouNumero: Boolean;
Begin
  xResultadoTiraZeros := '';
  xEncontrouNumero := False;

  For i := 1 to Length(Valor) Do
  Begin
    If ((Valor[i] <> '0') or (xEncontrouNumero = True))
    Then
    Begin
      xResultadoTiraZeros := xResultadoTiraZeros + Valor[i];
      xEncontrouNumero := True;
    End;
  end;
  Result := xResultadoTiraZeros;
end;

// Função utilizada para remover pontos "." de uma string
function TiraPonto(Valor: String): String;
Var
  i: byte;
Begin
  For i := 1 to Length(Valor) Do
  Begin
    If (Valor[i] = '.') Then
      Delete(Valor, i, 1);
  end;
  TiraPonto := Valor;
end;

// Função utilizada para remover algum caracter da string
function TiraCaracter(Valor: String; XCaracter: String): String;
Var
  i: byte;
Begin
  For i := 1 to Length(Valor) Do
  Begin
    If (Valor[i] = XCaracter) Then
      Delete(Valor, i, 1);
  end;
  TiraCaracter := Valor;
end;

// Função utilizada para remover algum caracter da string
function SubtituiCaracter(Valor: String; XCaracterremover, XCaracterInserir: String): String;
Var
  i: byte;
  NovaString: String;
Begin
  For i := 1 to Length(Valor) Do
  Begin
    If (Valor[i] = XCaracterremover) Then
      NovaString := NovaString + XCaracterInserir
    else
      NovaString := NovaString + Valor[i];
  end;
  SubtituiCaracter := NovaString;
end;

// Função utilizada para somar de um valor em uma strin que se inicia com String e termina com numero ( Nº Cheque)
function INCSTRNUM(INC: Integer; STR: String): String;
Var
  STRL, STRN: STRING;
  i, Flag: Integer;
Begin
  STRL := '';
  STRN := '';
  Flag := 0;
  For i := 1 to Length(STR) Do
  Begin
    If not(STR[i] IN ['0' .. '9'])
    Then
    Begin // a letra em questão não é um numero
      If Flag = 1
      Then
      Begin // se depois de ter encontrado uma strin numerica voltou a encontrar uma string literal, junta as duas como strin literal e zera a numérica
        Flag := 0;
        STRL := STRL + STRN + STR[i];
        STRN := '';
      End
      Else
      Begin
        STRL := STRL + STR[i];
      End;
    End
    Else
    Begin
      Flag := 1;
      STRN := STRN + STR[i];
    End;
  end;
  // Efetua o teste para verificar se a string numérica passa
  Try
    StrToInt(STRN);
  Except
    STRN := '0';
  End;
  Result := STRL + (IntToStr(StrToInt(STRN) + INC));
end;

// Verifica na tabela de similares se determinado similar X Produtopo já existe cadastrado
Function VerifExitSim(XValorSim: String; XValorProd: String): Boolean;
Begin
  DMMACS.TExiste.Close;
  DMMACS.TExiste.SQL.Clear;
  DMMACS.TExiste.SQL.Add('SELECT * FROM SUBPRODUTO WHERE (COD_INTERNO = ' + XValorSim + ') AND (COD_PRODUTO = ' + XValorProd + ' )');
  DMMACS.TExiste.Open;

  If not DMMACS.TExiste.IsEmpty Then
    Result := True
  Else
    Result := False;
End;

// Verifica na tabela se já existe um determinado produto com o mesmo código para mesma loja
{ ***    function VerifExitProd(Xtabela: String; XVALORPK:STRING; XCAMPO: STRING; XValor:String):Boolean;
  Begin
  If Xtabela=UpperCase('produto')
  Then Begin
  DMEstoque.Alx.close;
  DMEstoque.Alx.SQL.Clear;
  DMEstoque.Alx.SQL.Add(' Select * from produto left join subproduto on produto.cod_produto = subproduto.cod_produto');
  DMEstoque.Alx.SQL.Add(' left join estoque on subproduto.cod_subproduto = estoque.cod_subprod');
  DMEstoque.Alx.SQL.Add(' left join loja on loja.cod_loja = estoque.cod_loja WHERE ');
  DMEstoque.Alx.SQL.Add(' ('+XCAMPO+' = '+XVALOR+') AND (COD_PRODUTO<>'+XVALORPK+') And (COD_LOJA='+FMenu.LCODLOJA.Caption+')');
  DMEstoque.Alx.Open;
  End
  Else Begin
  DMEstoque.Alx.close;
  DMEstoque.Alx.SQL.Clear;
  DMEstoque.Alx.SQL.Add(' Select * from subproduto left join estoque on subproduto.cod_subproduto = estoque.cod_subprod');
  DMEstoque.Alx.SQL.Add(' left join loja on loja.cod_loja = estoque.cod_loja WHERE ');
  DMEstoque.Alx.SQL.Add(' (COD_INTERNO = '+XVALOR+') AND (COD_SUBPRODUTO<>'+XVALORPK+') And (COD_LOJA='+FMenu.LCODLOJA.Caption+')');
  DMEstoque.Alx.Open;
  End;

  If not DMEstoque.Alx.IsEmpty Then
  Result:=True
  Else
  REsult:=False;
  End;*** }

// Verifica na tabela se determinado campo já existe cadastrado
function VerifExitVal(Xtabela: String; XPK: STRING; XVALORPK: STRING; Xcampo: String; XValor: String): Boolean;
Begin
  DMMACS.TExiste.Close;
  DMMACS.TExiste.SQL.Clear;
  DMMACS.TExiste.SQL.Add('SELECT * FROM ' + Xtabela + ' WHERE (' + Xtabela + '.' + Xcampo + ' = ' + XValor + ') AND (' + Xtabela + '.' + XPK + '<>' + XVALORPK + ')');
  DMMACS.TExiste.SQL.Text;
  DMMACS.TExiste.Open;

  If NOT DMMACS.TExiste.IsEmpty Then
    Result := True
  Else
    Result := False;
End;

// Funçao de lançamento de cheque a receber
Function LanCHRec(STATUS: STRING; CODBANCO: Integer; CODMOVBANCO: Integer; NUMAG: String; NUMCONTA: String; PORTADOR: String; FONE: String): Boolean;
Var
  Cod_CH: Integer;
Begin
  TRY
    // Paulo 02/11/2011: verifica se o caixa estah aberto
    If DMCAIXA.VerifAbCaixa = False
    Then
    Begin
      Mensagem('   A T E N Ç Ã O   ', 'CAIXA FECHADO. O ADIANTAMENTO NÃO PODE SER EFETUADO.', '', 1, 1, False, 'a');
      Result := False;
      Exit;
    End;
    // limpa tabelas
    DMBANCO.TChequeRec.Close;
    DMBANCO.TChequeRec.SQL.Clear;
    DMBANCO.TChequeRec.SQL.Add(' SELECT * FROM chequerec ');
    DMBANCO.TChequeRec.Open;

    DMBANCO.TMovBanco.Close;
    DMBANCO.TMovBanco.SQL.Clear;
    DMBANCO.TMovBanco.SQL.Add(' SELECT * FROM MOVBANCO ');
    DMBANCO.TMovBanco.Open;

    If STATUS = 'INSERT'
    THEN
    Begin
      Cod_CH := InserReg(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC');
      DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsInteger := Cod_CH;
      DMBANCO.TChequeRec.Post
    End;
    DMBANCO.TChequeRec.Edit;
    DMBANCO.TChequeRec.FieldByName('COD_BANCO').AsInteger := CODBANCO;
    DMBANCO.TChequeRec.FieldByName('COD_MOVBANCO').AsInteger := CODMOVBANCO;
    DMBANCO.TChequeRec.FieldByName('NUMAGENCIA').AsString := NUMAG;
    DMBANCO.TChequeRec.FieldByName('NUMCONTA').AsString := NUMCONTA;
    DMBANCO.TChequeRec.FieldByName('EMITENTE').AsString := PORTADOR;
    DMBANCO.TChequeRec.FieldByName('FONE').AsString := FONE;
    DMBANCO.TChequeRec.Post;
    DMBANCO.TChequeRec.ApplyUpdates;
    Result := True;
  Except
    Result := False;
  End;
END;

// Funçao de lançamento em movimentação bancária
Function LanBanco(COD_CTACOR: Integer; COD_PLNCTA: Integer; HISTORICO: String; Valor: Real; TipoGera: String; COD_GERA: Integer; TIPOOP: String; COD_USUARIO: Integer; Cobranca: STRING; FECH: Char; DTVENC: STRING; NUMCH: String; DTLANC: STRING; ESTRU: String; DTREF: STRING): Boolean;
Var
  Cod_Mov: Integer;
Begin
  TRY
    Result := True;
    // Paulo 02/11/2011: verifica se o caixa estah aberto
    If FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR', IntToStr(COD_CTACOR), '') = True
    Then
    Begin
      If DMBANCO.VerifAbBanco = False
      Then
      Begin
        Mensagem('   A T E N Ç Ã O   ', 'BANCO FECHADO. O LANÇAMENTO NÃO PODE SER EFETUADO.', '', 1, 1, False, 'a');
        Result := False;
        Exit;
      End;
    End;

    // CALCULA SALDO EM CTA

    If FiltraTabela(DMBANCO.WMovB, 'VWMOVBANCO', 'COD_MOVBANCO', '', ' (COD_CTACOR = ' + #39 + DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString + #39 + ') AND (FECH=' + #39 + 'S' + #39 + ')  AND ((VER<>' + #39 + '1' + #39 + ') OR (VER IS NULL)) Order By VWMOVBANCO.COD_MOVBANCO DESC')
    Then
    Begin
      // TOTALIZA MOVIMENTOS DE ENTRADA
      DMBANCO.TAlx.Close;
      DMBANCO.TAlx.SQL.Clear;
      DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = ' + #39 + DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString + #39 + ') AND (TIPOOP=' + #39 + 'ENTRADA' + #39 + ')   AND (FECH=' + #39 + 'S' + #39 + ')   AND ((VER<>' + #39 + '1' + #39 +
        ') OR (VER IS NULL)) ');
      DMBANCO.TAlx.Open;

      // TOTALIZA MOVIMENTOS DE SAIDA
      DMBANCO.TAlx.Close;
      DMBANCO.TAlx.SQL.Clear;
      DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = ' + #39 + DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString + #39 + ') AND (TIPOOP=' + #39 + 'SAIDA' + #39 + ')   AND (FECH=' + #39 + 'S' + #39 + ')  AND ((VER<>' + #39 + '1' + #39 +
        ') OR (VER IS NULL)) ');
      DMBANCO.TAlx.Open;
    End;
    If FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR', IntToStr(COD_CTACOR), '') = True
    Then
    Begin
      If DMBANCO.VerifAbBanco = False
      Then
      Begin
        Mensagem('OPÇÃO BLOQUEADA', 'B A N C O    F E C H A D O !', '', 1, 1, False, 'i');
        Result := False;
        Exit;
      End;
    End
    Else
    Begin
      Mensagem('OPÇÃO BLOQUEADA', 'C O N T A   C O R R E N T E   N Ã O   E N C O N T R A D A !', '', 1, 1, False, 'i');
      Result := False;
      Exit;
    End;
    FMenu.LancAutConta := False;
    Try
      // PRIMEIRA TENTATIVA DE INSERIR O MOVIMENTO BANCÁRIO
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' insert into movbanco(COD_CTACOR, HORALANC, DTLANC, DTREF, ESTRU, DTMOV, ');
      MDO.Query.SQL.Add('                      COD_PLNCTA, HISTORICO, NUMCHEQUE, COD_USUARIO, VALOR, TIPOOP, ');
      MDO.Query.SQL.Add('                      COBRANCA, DTVenc, Fech, TIPOGERADOR, COD_GERADOR, COD_ABBANCO) ');
      MDO.Query.SQL.Add('             values(:COD_CTACOR, :HORALANC, :DTLANC, :DTREF, :ESTRU, :DTMOV, ');
      MDO.Query.SQL.Add('                    :COD_PLNCTA, :HISTORICO, :NUMCHEQUE, :COD_USUARIO, :VALOR, :TIPOOP, ');
      MDO.Query.SQL.Add('                      :COBRANCA, :DTVenc, :Fech, :TIPOGERADOR, :COD_GERADOR, :COD_ABBANCO) ');
      MDO.Query.ParamByName('COD_CTACOR').AsInteger := COD_CTACOR;
      MDO.Query.ParamByName('HORALANC').AsDateTime := Time();
      MDO.Query.ParamByName('DTLANC').AsString := DTLANC;
      MDO.Query.ParamByName('DTREF').AsString := DTREF;
      MDO.Query.ParamByName('ESTRU').AsString := ESTRU;
      MDO.Query.ParamByName('DTMOV').AsString := DTLANC;
      MDO.Query.ParamByName('COD_PLNCTA').AsInteger := COD_PLNCTA;
      MDO.Query.ParamByName('HISTORICO').AsString := copy(HISTORICO, 0, 200);
      MDO.Query.ParamByName('NUMCHEQUE').AsString := NUMCH;
      MDO.Query.ParamByName('COD_USUARIO').AsInteger := COD_USUARIO;
      MDO.Query.ParamByName('VALOR').AsCurrency := Valor;
      MDO.Query.ParamByName('TIPOOP').AsString := TIPOOP;
      MDO.Query.ParamByName('COBRANCA').AsString := Cobranca;
      MDO.Query.ParamByName('DTVenc').AsString := DTVENC;
      MDO.Query.ParamByName('Fech').AsString := FECH;
      MDO.Query.ParamByName('TIPOGERADOR').AsString := TipoGera;
      MDO.Query.ParamByName('COD_GERADOR').AsInteger := COD_GERA;
      MDO.Query.ParamByName('COD_ABBANCO').AsString := FMenu.LABBANCO.Caption;
      MDO.Query.ExecSQL;

      FMenu.LancAutConta := True;
    Except
      on E: Exception do
      begin
        if (E.Message = 'attempt to store duplicate value (visible to active transactions) in unique index "IDX_MOVBANCO_CODMOVBANCO"')
        then
        begin
          Try
            MDO.Transac.RollbackRetaining;
            // pega o valor do gerador e armazena em XCOD
            MDO.QConsulta.Close;
            MDO.QConsulta.SQL.Clear;
            MDO.QConsulta.SQL.Add('  Select max(movbanco.cod_movbanco) as codigo from movbanco ');
            MDO.QConsulta.Open;
            // Incrementa o gerador para fazer a Chave primária ser válida na inserção
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add('SET GENERATOR GEN_MOVBANCO_ID TO ' + IntToStr(MDO.QConsulta.FieldByName('codigo').AsInteger + 100));
            MDO.Query.ExecSQL;
            MDO.Transac.CommitRetaining;
            Try
              // SEGUNDA TENTATIVA DE INSERIR O MOVIMENTO BANCARIO
              MDO.Query.Close;
              MDO.Query.SQL.Clear;
              MDO.Query.SQL.Add(' insert into movbanco(COD_CTACOR, HORALANC, DTLANC, DTREF, ESTRU, DTMOV, ');
              MDO.Query.SQL.Add('                      COD_PLNCTA, HISTORICO, NUMCHEQUE, COD_USUARIO, VALOR, TIPOOP, ');
              MDO.Query.SQL.Add('                      COBRANCA, DTVenc, Fech, TIPOGERADOR, COD_GERADOR, COD_ABBANCO) ');
              MDO.Query.SQL.Add('             values(:COD_CTACOR, :HORALANC, :DTLANC, :DTREF, :ESTRU, :DTMOV, ');
              MDO.Query.SQL.Add('                    :COD_PLNCTA, :HISTORICO, :NUMCHEQUE, :COD_USUARIO, :VALOR, :TIPOOP, ');
              MDO.Query.SQL.Add('                      :COBRANCA, :DTVenc, :Fech, :TIPOGERADOR, :COD_GERADOR, :COD_ABBANCO) ');
              MDO.Query.ParamByName('COD_CTACOR').AsInteger := COD_CTACOR;
              MDO.Query.ParamByName('HORALANC').AsDateTime := Time();
              MDO.Query.ParamByName('DTLANC').AsString := DTLANC;
              MDO.Query.ParamByName('DTREF').AsString := DTREF;
              MDO.Query.ParamByName('ESTRU').AsString := ESTRU;
              MDO.Query.ParamByName('DTMOV').AsString := DateToStr(Date());
              MDO.Query.ParamByName('COD_PLNCTA').AsInteger := COD_PLNCTA;
              MDO.Query.ParamByName('HISTORICO').AsString := copy(HISTORICO, 0, 200);
              MDO.Query.ParamByName('NUMCHEQUE').AsString := NUMCH;
              MDO.Query.ParamByName('COD_USUARIO').AsInteger := COD_USUARIO;
              MDO.Query.ParamByName('VALOR').AsCurrency := Valor;
              MDO.Query.ParamByName('TIPOOP').AsString := TIPOOP;
              MDO.Query.ParamByName('COBRANCA').AsString := Cobranca;
              MDO.Query.ParamByName('DTVenc').AsString := DTVENC;
              MDO.Query.ParamByName('Fech').AsString := FECH;
              MDO.Query.ParamByName('TIPOGERADOR').AsString := TipoGera;
              MDO.Query.ParamByName('COD_GERADOR').AsInteger := COD_GERA;
              MDO.Query.ParamByName('COD_ABBANCO').AsString := FMenu.LABBANCO.Caption;
              MDO.Query.ExecSQL;

              FMenu.LancAutConta := True;
            Except
              ShowMessage('Falha 5567: Erro na segunda tentativa de inserir o movimento bancário.' + #13 + ' Foi encontrado um erro ao inserir o movimento bancário. Entre em contato com o suporte e informe o erro ocorrido');
              MDO.Transac.RollbackRetaining;
            End;
          Except
            ShowMessage('Falha 5571: Erro ao gerar código do  movimento banário.' + #13 + ' Foi encontrado um erro ao inserir o movimento bancário. Entre em contato com o suporte e informe o erro ocorrido');
            MDO.Transac.RollbackRetaining;
          End;
        End
        else
          // Edmar - 02/07/2014 - erro por não achar chave primaria de movbanco por não haver nenhuma movimentação
          if E.Message = 'validation error for column COD_MOVBANCO, value "*** null ***"' then
          begin // Edmar - 02/07/2014 - Alterada SQL adicionando a chave primária com valor 1
            try
              // TOTALIZA MOVIMENTOS DE ENTRADA
              DMBANCO.TAlx.Close;
              DMBANCO.TAlx.SQL.Clear;
              DMBANCO.TAlx.SQL.Add('SELECT MAX(MOVBANCO.COD_MOVBANCO) AS COD FROM MOVBANCO');
              DMBANCO.TAlx.Open;

              MDO.Query.Close;
              MDO.Query.SQL.Clear;
              MDO.Query.SQL.Add(' insert into movbanco(COD_MOVBANCO, COD_CTACOR, HORALANC, DTLANC, DTREF, ESTRU, DTMOV, ');
              MDO.Query.SQL.Add('                      COD_PLNCTA, HISTORICO, NUMCHEQUE, COD_USUARIO, VALOR, TIPOOP, ');
              MDO.Query.SQL.Add('                      COBRANCA, DTVenc, Fech, TIPOGERADOR, COD_GERADOR, COD_ABBANCO) ');
              MDO.Query.SQL.Add('             values(:MOVBANCO, :COD_CTACOR, :HORALANC, :DTLANC, :DTREF, :ESTRU, :DTMOV, ');
              MDO.Query.SQL.Add('                    :COD_PLNCTA, :HISTORICO, :NUMCHEQUE, :COD_USUARIO, :VALOR, :TIPOOP, ');
              MDO.Query.SQL.Add('                      :COBRANCA, :DTVenc, :Fech, :TIPOGERADOR, :COD_GERADOR, :COD_ABBANCO) ');
              MDO.Query.ParamByName('MOVBANCO').AsInteger := DMBANCO.TAlx.FieldByName('COD').AsInteger + 1;
              MDO.Query.ParamByName('COD_CTACOR').AsInteger := COD_CTACOR;
              MDO.Query.ParamByName('HORALANC').AsDateTime := Time();
              MDO.Query.ParamByName('DTLANC').AsString := DTLANC;
              MDO.Query.ParamByName('DTREF').AsString := DTREF;
              MDO.Query.ParamByName('ESTRU').AsString := ESTRU;
              MDO.Query.ParamByName('DTMOV').AsString := DateToStr(Date());
              MDO.Query.ParamByName('COD_PLNCTA').AsInteger := COD_PLNCTA;
              MDO.Query.ParamByName('HISTORICO').AsString := copy(HISTORICO, 0, 200);
              MDO.Query.ParamByName('NUMCHEQUE').AsString := NUMCH;
              MDO.Query.ParamByName('COD_USUARIO').AsInteger := COD_USUARIO;
              MDO.Query.ParamByName('VALOR').AsCurrency := Valor;
              MDO.Query.ParamByName('TIPOOP').AsString := TIPOOP;
              MDO.Query.ParamByName('COBRANCA').AsString := Cobranca;
              MDO.Query.ParamByName('DTVenc').AsString := DTVENC;
              MDO.Query.ParamByName('Fech').AsString := FECH;
              MDO.Query.ParamByName('TIPOGERADOR').AsString := TipoGera;
              MDO.Query.ParamByName('COD_GERADOR').AsInteger := COD_GERA;
              MDO.Query.ParamByName('COD_ABBANCO').AsString := FMenu.LABBANCO.Caption;
              MDO.Query.ExecSQL;

              FMenu.LancAutConta := True;
            except
              MessageDlg('Erro: 5615 - Falha na segunda tentativa de inserir a movimentação bancária.' + #13 + 'Entre em contato com o suporte e informe o erro ocorrido!', mtWarning, [mbOK], 0);
              MDO.Transac.RollbackRetaining;
              Exit;
            end;
          end
          else
          begin
            MessageDlg('Erro: 5577 - Erro ao inserir movimento bancário', mtWarning, [mbOK], 0);
            MessageDlg(E.Message, mtWarning, [mbOK], 0);
            MDO.Transac.RollbackRetaining;
            Exit;
          End;
      End;
    End;
  Except
    Result := False;
  End;
End;

// Passa parametro para Lançamento em Crediario de cliente
Function LanCredito(xCod_Pessoa, XCOD_GERADOR: Integer; xTipoGerador, XTIPOPES, XTIPOCRED, XDOCUMENTO, xData: String; XValor: Real): Boolean;
Var
  Cod_Lanc: Integer;
  XSaldo: Real;
Begin
  Result := True;
  Try
    // Paulo 02/11/2011: verifica se o caixa estah aberto
    If DMCAIXA.VerifAbCaixa = False
    Then
    Begin
      Mensagem('   A T E N Ç Ã O   ', 'CAIXA FECHADO. O ADIANTAMENTO NÃO PODE SER EFETUADO.', '', 1, 1, False, 'a');
      Result := False;
      Exit;
    End;
    If XTIPOPES = 'CLI'
    Then
    Begin
      If FiltraTabela(DMPessoa.TCliente, 'CLIENTE', 'COD_CLIENTE', IntToStr(xCod_Pessoa), '') = True
      Then
      Begin
        FiltraTabela(DMPessoa.TPessoa, 'PESSOA', 'COD_PESSOA', DMPessoa.TCliente.FieldByName('COD_PESSOA').AsString, '');
      End;
    end
    Else
    Begin
      If FiltraTabela(DMPessoa.TFornecedor, 'FORNECEDOR', 'COD_FORNEC', IntToStr(xCod_Pessoa), '') = True
      Then
      Begin
        FiltraTabela(DMPessoa.TPessoa, 'PESSOA', 'COD_PESSOA', DMPessoa.TFornecedor.FieldByName('COD_PESSOA').AsString, '');
      End;
    end;
    DMFINANC.TCredito.Close;
    DMFINANC.TCredito.SQL.Clear;
    DMFINANC.TCredito.SQL.Add('Select * from CREDITO');
    DMFINANC.TCredito.Open;

    // Localiza a maior chave primária
    DMFINANC.TAlx.Close;
    DMFINANC.TAlx.SQL.Clear;
    DMFINANC.TAlx.SQL.Add('select max(credito.cod_credito) as CODIGO from credito');
    DMFINANC.TAlx.Open;
    Cod_Lanc := DMFINANC.TAlx.FieldByName('CODIGO').AsInteger + 1;

    // Insere registro
    DMFINANC.TAlx.Close;
    DMFINANC.TAlx.SQL.Clear;
    DMFINANC.TAlx.SQL.Add(' insert into CREDITO ');
    DMFINANC.TAlx.SQL.Add('   (COD_CREDITO, COD_PESSOA, COD_GERADOR, TIPOPES, TIPOCRED, VALOR, SALDO, ');
    DMFINANC.TAlx.SQL.Add('    DOCUMENTO, DATA, TIPOGERADOR) ');
    DMFINANC.TAlx.SQL.Add(' values ');
    DMFINANC.TAlx.SQL.Add('   (:COD_CREDITO, :COD_PESSOA, :COD_GERADOR, :TIPOPES, :TIPOCRED, :VALOR, ');
    DMFINANC.TAlx.SQL.Add('    :SALDO, :DOCUMENTO, :DATA, :TIPOGERADOR)');
    DMFINANC.TAlx.ParamByName('COD_CREDITO').AsInteger := Cod_Lanc;
    DMFINANC.TAlx.ParamByName('COD_PESSOA').AsInteger := xCod_Pessoa;
    DMFINANC.TAlx.ParamByName('COD_GERADOR').AsInteger := XCOD_GERADOR;
    DMFINANC.TAlx.ParamByName('TIPOPES').AsString := XTIPOPES;
    DMFINANC.TAlx.ParamByName('TIPOCRED').AsString := XTIPOCRED;
    DMFINANC.TAlx.ParamByName('VALOR').AsCurrency := XValor;
    DMFINANC.TAlx.ParamByName('SALDO').AsCurrency := DMPessoa.TPessoa.FieldByName('VLRCREDITO').AsCurrency;
    DMFINANC.TAlx.ParamByName('DOCUMENTO').AsString := XDOCUMENTO;
    DMFINANC.TAlx.ParamByName('DATA').AsString := xData;
    DMFINANC.TAlx.ParamByName('TIPOGERADOR').AsString := xTipoGerador;
    DMFINANC.TAlx.ExecSQL;
    DMFINANC.Transaction.CommitRetaining;
  Except
    Result := False;
  End;

End;

// Limpa query de mdo preparando para nova sql
Function MdoQueryClear: Boolean;
Begin
  Try
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
  Except

  End;
End;

// Limpa query de mdo preparando para nova sql
Function MdoQConsultaClear: Boolean;
Begin
  Try
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
  Except

  End;
End;

// Incrementa numero do controle de proximo numero do contas a recerber
Function ProxDocCtaReceber: Boolean;
Begin
  Result := True;
  Try
    MDO.QLoja.Close;
    MDO.QLoja.SQL.Clear;
    MDO.QLoja.SQL.Add(' update loja set loja.proxdocctarec=:Incremento ');
    MDO.QLoja.ParamByName('Incremento').AsString := INCSTRNUM(1, DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString);
    MDO.QLoja.ExecSQL;
    Try
      MDO.TransacLoja.CommitRetaining;
    Except
    End;
  Except
    Result := False;
  End;
End;

// Passa parametro para Lançamento em Caixa
Function LanCaixa(COD_MOEDA: Integer; Data: String; COD_PLNCTA: Integer; HISTORICO: String; Valor: Real; TipoGera: String; COD_GERA: Integer; Tipo: String; TipoCai: String; DOCLANC: String; XDTREFER: TDateTime; ESTRU: Char): Boolean;
Var
  XCod_CaixaLancaixa: Integer;
Begin
  Result := True;
  Try
    // Tratamento especifo para casos de transferencia
    If COD_MOEDA > 0
    Then
    Begin
      XCod_CaixaLancaixa := COD_MOEDA;
      // verifica se o caixa esta aberto
      DMCAIXA.TAlx.Close;
      DMCAIXA.TAlx.SQL.Clear;
      DMCAIXA.TAlx.SQL.Add('SELECT * FROM ABCAIXA WHERE (COD_CAIXA=:CODCAIXA) AND (FECHADO=' + #39 + 'N' + #39 + ')');
      DMCAIXA.TAlx.ParamByName('CODCAIXA').AsInteger := XCod_CaixaLancaixa;
      DMCAIXA.TAlx.Open;
      If DMCAIXA.TAlx.IsEmpty
      Then
      Begin
        // O Caixa não esta aberto pede se quer abrir o caixa
        Mensagem('A T E N Ç Ã O ', 'O Caixa escolhido não se encontra aberto. Para realizar a maioria das operações financeiras é obrigado que o caixa esteja aberto!', '', 1, 1, False, 'a');
        Result := False;
        Exit;
      End
      Else
      Begin
        XCod_CaixaLancaixa := DMCAIXA.TAlx.FieldByName('COD_ABCAIXA').AsInteger;
      End;
    End
    Else
    Begin
      // VERIFICA SE O CAIXA ESTA ABERTO
      If DMCAIXA.VerifAbCaixa = False
      Then
      Begin
        Mensagem('A T E N Ç Ã O ', 'O Caixa se Encontra Fechado!', '', 1, 1, False, 'a');
        Result := False;
        Exit;
      End
      Else
      Begin
        XCod_CaixaLancaixa := StrToInt(FMenu.LABCAIXA.Caption);
      End;
    End;
    // Descobre o saldo atual do caixa
    CalcCaixa;
    // Efetua lançamento com o codigo de abertura estipulado
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' insert into lancaixa (DTLANC, DTREFER, COD_PLNCTAFIL, ESTRU, HISTORICO, VALOR, SALDOANT, TIPOGERADOR, COD_GERADOR, ');
    MDO.Query.SQL.Add('                       TIPO, TIPCAI, COD_ABCAIXA, COD_USUARIO, DOC) ');
    MDO.Query.SQL.Add('        values (:DTLANC, :DTREFER, :COD_PLNCTAFIL, :ESTRU, :HISTORICO, :VALOR, :SALDOANT, :TIPOGERADOR, :COD_GERADOR, ');
    MDO.Query.SQL.Add('                       :TIPO, :TIPCAI, :COD_ABCAIXA, :COD_USUARIO, :DOC) ');
    MDO.Query.ParamByName('DTLANC').AsString := Data;
    MDO.Query.ParamByName('DTREFER').AsDateTime := XDTREFER;
    MDO.Query.ParamByName('COD_PLNCTAFIL').Value := COD_PLNCTA;
    MDO.Query.ParamByName('ESTRU').AsString := ESTRU;
    MDO.Query.ParamByName('HISTORICO').AsString := copy(HISTORICO, 0, 200);
    MDO.Query.ParamByName('VALOR').AsCurrency := Valor;
    MDO.Query.ParamByName('SALDOANT').AsCurrency := SaldoAtu + SaldoIni;
    MDO.Query.ParamByName('TIPOGERADOR').AsString := TipoGera;
    MDO.Query.ParamByName('COD_GERADOR').Value := COD_GERA;
    MDO.Query.ParamByName('TIPO').AsString := Tipo;
    If TipoCai = '' Then
      MDO.Query.ParamByName('TIPCAI').AsString := 'X'
    Else
      MDO.Query.ParamByName('TIPCAI').AsString := TipoCai;
    MDO.Query.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
    MDO.Query.ParamByName('DOC').AsString := copy(DOCLANC, 0, 25);
    MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := XCod_CaixaLancaixa;

    If DOCLANC = ''
    Then
    Begin
      Try
        MDO.Query.ParamByName('DOC').AsString := DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString;
        ProxDocCtaReceber; // incrementa numero do ctas a receber
      Except
      End;
    End;
    Try
      MDO.Query.ExecSQL;
      MDO.Query.Transaction.CommitRetaining; // Edmar - 02/04/2014 - Faltava um commit na transação
      Result := True;
      FMenu.LancCaixa := True;
      // Se executou, marca como true e finaliza
    Except
      Result := False;
    End;
  Except
    Result := False;
    FMenu.LancCaixa := False;
  End;
End;

// Verivica a existencia de referencias da tabela mestre nas outras tabelas através da chave
Function CheckRelation(Chave: String; ValorChave: String; Tabelas: array of String; NumTabs: Integer): Boolean;
Var
  i: Integer;
Begin
  CheckRelation := False;
  i := 0;
  While i < NumTabs do
  Begin
    Try
      If SelectRegistro(Tabelas[i], Chave, ValorChave) = True Then
        CheckRelation := True;
    Except
    End;
    i := i + 1;
  End;
End;

// Verivica se determinada pessoa se encontra referenciada com outra tabela mestre
Function CheckRelationPes(ValorChave: String; Tabelas: array of TIBQuery; NumTabs: Integer): Boolean;
Var
  i: Integer;
Begin
  CheckRelationPes := False;
  i := 0;
  While i < NumTabs do
  Begin
    Try
      If Tabelas[i].FieldByName('COD_PESSOA').AsString = ValorChave Then
        CheckRelationPes := True;
    Except
    End;
    i := i + 1;
  End;
End;

{ Função Utilizada p/ Validar CGC }
Function ValidaCGC(const s: string): Boolean;
var
  aDig: array [1 .. 14] of byte;
  i, Resto: byte;
  DV1, DV2: byte;
  Total1, Total2: Integer;
Begin
  Result := False;
  if Length(s) = 14
  then
  Begin
    for i := 1 to 14 do
      Try
        aDig[i] := StrToInt(s[i]);
      Except
        aDig[i] := 0;
      end;
    Total1 := aDig[1] * 5 + aDig[2] * 4 + aDig[3] * 3 + aDig[4] * 2 + aDig[5] * 9 + aDig[6] * 8 + aDig[7] * 7 + aDig[8] * 6 + aDig[9] * 5 + aDig[10] * 4 + aDig[11] * 3 + aDig[12] * 2;
    Resto := Total1 mod 11;
    if Resto > 1 then
      DV1 := 11 - Resto
    else
      DV1 := 0;
    Total2 := aDig[1] * 6 + aDig[2] * 5 + aDig[3] * 4 + aDig[4] * 3 + aDig[5] * 2 + aDig[6] * 9 + aDig[7] * 8 + aDig[8] * 7 + aDig[9] * 6 + aDig[10] * 5 + aDig[11] * 4 + aDig[12] * 3 + DV1 * 2;
    Resto := Total2 mod 11;
    if Resto > 1 then
      DV2 := 11 - Resto
    else
      DV2 := 0;
    if (DV1 = aDig[13]) and (DV2 = aDig[14]) then
      Result := True;
  end;
end;

const
  OrdZero = Ord('0');

Function AllTrim(const s: string): string;
var
  i, L: Integer;
begin
  L := Length(s);
  i := 1;
  while (i <= L) and (s[i] <= ' ') do
    INC(i);
  if i > L then
    Result := ''
  else
  begin
    while s[L] <= ' ' do
      Dec(L);
    Result := copy(s, i, L - i + 1);
  end;
end;

Function Empty(const s: String): Boolean;
var
  aux: string;
begin
  aux := AllTrim(s);
  if Length(aux) = 0 then
    Result := True
  else
    Result := False;
end;

Function IsNumero(const s: string): Boolean;
var
  i: byte;
begin
  Result := False;
  for i := 1 to Length(s) do
    if not(s[i] in ['0' .. '9']) then
      Exit;
  Result := True;
end;

{ chInt - Converte um caracter numérico para o valor inteiro correspondente. }
function CharToInt(ch: Char): ShortInt;
begin
  Result := Ord(ch) - OrdZero;
end;

{ intCh = Converte um valor inteiro (de 0 a 9) para o caracter numérico correspondente. }
function IntToChar(int: ShortInt): Char;
begin
  Result := Chr(int + OrdZero);
end;

// valida inscrição estadual de minas gerais
Function ValidaInscEst_MG(const iemg: string): Boolean;
var
  npos, i: byte;
  ptotal, psoma: Integer;
  dig1, dig2: string[1];
  IE, insc: string;
  nresto: SmallInt;
begin
  Result := True;
  IE := AllTrim(iemg);
  if (Empty(IE)) then
    Exit;
  if copy(IE, 1, 2) = 'PR' then
    Exit;
  if copy(IE, 1, 5) = 'ISENT' then
    Exit;
  Result := False;
  If (Trim(iemg) = '.') Then
    Exit;
  if (Length(IE) <> 13) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  dig1 := copy(IE, 12, 1);
  dig2 := copy(IE, 13, 1);
  insc := copy(IE, 1, 3) + '0' + copy(IE, 4, 8);
  // CALCULA DIGITO 1
  npos := 12;
  i := 1;
  ptotal := 0;
  while npos > 0 do
  begin
    INC(i);
    psoma := CharToInt(insc[npos]) * i;
    IF psoma >= 10 then
      psoma := psoma - 9;
    INC(ptotal, psoma);
    IF i = 2 then
      i := 0;
    Dec(npos);
  end;
  nresto := ptotal mod 10;
  if nresto = 0 then
    nresto := 10;
  nresto := 10 - nresto;
  if nresto <> CharToInt(dig1[1]) then
    Exit;
  // CALCULA DIGITO 2
  npos := 12;
  i := 1;
  ptotal := 0;
  while npos > 0 do
  begin
    INC(i);
    if i = 12 then
      i := 2;
    INC(ptotal, CharToInt(IE[npos]) * i);
    Dec(npos);
  end;
  nresto := ptotal mod 11;
  if (nresto = 0) or (nresto = 1) then
    nresto := 11;
  nresto := 11 - nresto;
  if nresto <> CharToInt(dig2[1]) then
    Exit;
  Result := True;
end;

Function ValidaInscEst_AC(const IE: string): Boolean; // 99.999.999/999-99
begin
  Result := False;
  if (Length(IE) <> 13) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  b := 4;
  soma := 0;
  for i := 1 to 11 do
  begin
    INC(soma, CharToInt(IE[i]) * b);
    Dec(b);
    if b = 1 then
      b := 9;
  end;
  dig := 11 - (soma mod 11);
  if (dig >= 10) then
    dig := 0;
  Result := (IntToChar(dig) = IE[12]);
  if not Result then
    Exit;

  b := 5;
  soma := 0;
  for i := 1 to 12 do
  begin
    INC(soma, CharToInt(IE[i]) * b);
    Dec(b);
    if b = 1 then
      b := 9;
  end;
  dig := 11 - (soma mod 11);
  if (dig >= 10) then
    dig := 0;
  Result := (IntToChar(dig) = IE[13]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DE ALAGOAS
Function ValidaInscEst_AL(const IE: string): Boolean; // 24XNNNNND
begin
  Result := False;
  if (Length(IE) <> 9) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  if copy(IE, 1, 2) <> '24' then
    Exit;
  b := 9;
  soma := 0;
  for i := 1 to 08 do
  begin
    INC(soma, CharToInt(IE[i]) * b);
    Dec(b);
  end;
  soma := soma * 10;
  dig := soma - trunc(soma / 11) * 11;
  if dig = 10 then
    dig := 0;
  Result := (IntToChar(dig) = IE[09]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DO AMAZONAS
Function ValidaInscEst_AM(const IE: string): Boolean; // 99.999.999-9
begin
  Result := False;
  if (Length(IE) <> 9) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  b := 9;
  soma := 0;
  for i := 1 to 08 do
  begin
    INC(soma, CharToInt(IE[i]) * b);
    Dec(b);
  end;
  if soma < 11 then
    dig := 11 - soma
  else
  begin
    i := (soma mod 11);
    if i <= 1 then
      dig := 0
    else
      dig := 11 - i;
  end;
  Result := (IntToChar(dig) = IE[09]);
end;

// VALIDA INSCRIÇÃO ESTADUAL
Function ValidaInscEst_AP(const IE: string): Boolean; // 999999999
begin
  Result := False;
  if (Length(IE) <> 9) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  p := 0;
  d := 0;
  i := StrToInt(copy(IE, 1, 8));
  if (i >= 03000001) and (i <= 03017000)
  then
  begin
    p := 5;
    d := 0;
  end
  else
    if (i >= 03017001) and (i <= 03019022)
  Then
  begin
    p := 9;
    d := 1;
  end;
  b := 9;
  soma := p;
  for i := 1 to 08 do
  begin
    INC(soma, CharToInt(IE[i]) * b);
    Dec(b);
  end;
  dig := 11 - (soma mod 11);
  if dig = 10 then
    dig := 0
  else
    if dig = 11 then
    dig := d;
  Result := (IntToChar(dig) = IE[09]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DA BAHIA
Function ValidaInscEst_BA(const IE: string): Boolean; // 999999-99
begin
  Result := False;
  if (Length(IE) <> 8) AND (Length(IE) <> 9) then
    Exit;

  // inscrição estadual com oito digitos
  if Length(IE) = 8 then
  begin
    die := copy(IE, 1, 8);
    if not IsNumero(die) then
      Exit;

    for i := 1 to 8 do
      nro[i] := CharToInt(die[i]);
    if nro[1] in [0, 1, 2, 3, 4, 5, 8] then
      NumMod := 10
    else
      NumMod := 11;

    // calculo segundo
    b := 7;
    soma := 0;
    for i := 1 to 06 do
    begin
      INC(soma, (nro[i] * b));
      Dec(b);
    end;
    i := soma mod NumMod;
    if NumMod = 10
    Then
    Begin
      if i = 0 then
        dig := 0
      else
        dig := NumMod - i;
    end
    else
    begin
      if i <= 1 then
        dig := 0
      else
        dig := NumMod - i;
    end;
    Result := (dig = nro[8]);
    if not Result then
      Exit;

    // calculo segundo
    b := 8;
    soma := 0;
    for i := 1 to 06 do
    begin
      INC(soma, (nro[i] * b));
      Dec(b);
    end;
    INC(soma, (nro[8] * 2));
    i := soma mod NumMod;
    if NumMod = 10
    then
    begin
      if i = 0 then
        dig := 0
      else
        dig := NumMod - i;
    end
    else
    begin
      if i <= 1 then
        dig := 0
      else
        dig := NumMod - i;
    end;
    Result := (dig = nro[7]);
  end;

  // inscrição estadual com nove digitos
  if Length(IE) = 9 then
  begin
    die := copy(IE, 1, 9);
    if not IsNumero(die) then
      Exit;

    // busca modulo para calculo
    for i := 1 to 9 do
      nro[i] := CharToInt(die[i]);
    if nro[1] in [0, 1, 2, 3, 4, 5, 8] then
      NumMod := 10
    else
      NumMod := 11;

    // calculo segundo dv
    b := 8;
    soma := 0;
    for i := 1 to 07 do
    begin
      INC(soma, (nro[i] * b));
      Dec(b);
    end;
    i := soma mod NumMod;
    if NumMod = 10
    Then
    Begin
      if i = 0 then
        dig := 0
      else
        dig := NumMod - i;
    end
    else
    begin
      if i <= 1 then
        dig := 0
      else
        dig := NumMod - i;
    end;
    Result := (dig = nro[9]);

    if not Result then
      Exit;

    // calculo primeiro dv
    b := 9;
    soma := 0;
    for i := 1 to 09 do
    begin
      if i <> 8 then
      begin
        INC(soma, (nro[i] * b));
        Dec(b);
      end;
    end;

    i := soma mod NumMod;
    if NumMod = 10
    then
    begin
      if i = 0 then
        dig := 0
      else
        dig := NumMod - i;
    end
    else
    begin
      if i <= 1 then
        dig := 0
      else
        dig := NumMod - i;
    end;
    Result := (dig = nro[8]);
  end;
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DO CEARA
Function ValidaInscEst_CE(const IE: string): Boolean; // 999999999
begin
  Result := False;
  if (Length(IE) > 9) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  die := IE;
  if Length(IE) < 9 then
  begin
    repeat
      die := '0' + die;
    until Length(die) = 9;
  end;
  for i := 1 to 9 do
    nro[i] := CharToInt(die[i]);
  b := 9;
  soma := 0;
  for i := 1 to 08 do
  begin
    INC(soma, (nro[i] * b));
    Dec(b);
  end;
  dig := 11 - (soma mod 11);
  if dig >= 10 then
    dig := 0;
  Result := (dig = nro[9]);
end;

Function ValidaInscEst_DF(const IE: string): Boolean; // 0000000000000
var
  xAux, xSoma, xDig, xI: Integer;
  xChar: Char;
begin
  Result := True;
  try
    Result := True;
    if Length(IE) <> 13 then
    begin
      Result := False;
      Exit;
    end;

    if copy(IE, 0, 2) <> '07' then
    begin
      Result := False;
      Exit;
    end;

    xAux := 4;
    xSoma := 0;

    for xI := 1 to 11 do
    begin
      xSoma := xSoma + CharToInt(IE[xI]) * xAux;
      xAux := xAux - 1;
      if (xAux = 1) then
        xAux := 9;
    end;

    xDig := 11 - (xSoma MOD 11);
    if (xDig >= 10) then
      xDig := 0;

    if xDig <> CharToInt(IE[12]) then
    begin
      Result := False;
      Exit;
    end;

    xAux := 5;
    xSoma := 0;
    for xI := 1 to 12 do
    begin
      xSoma := xSoma + CharToInt(IE[xI]) * xAux;
      xAux := xAux - 1;
      if (xAux = 1) then
        xAux := 9;
    end;

    xDig := 11 - (xSoma MOD 11);
    if xDig >= 10 then
      xDig := 0;

    Result := (xDig = CharToInt(IE[13]));
  except
    Result := False;
  end;
end;

Function ValidaInscEst_RO(const IE: string): Boolean;
var
  i, X, Y, Z, j: Integer;
  s: string;
begin
  i := 1;
  Y := 6;
  X := 0;
  Z := 0;
  j := 0;
  for j := 1 to Length(Trim(IE)) do
  begin
    if IE[j] in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'] then
      s := s + IE[j];
  end;

  if not Length(s) <> 14 then
  begin
    for i := 1 to (14 - Length(Trim(s))) do
      s := '0' + Trim(s)
  end;

  for i := 1 to (Length(s) - 1) do
  begin
    X := StrToInt(s[i]) * Y;
    Z := Z + X;

    if Y > 2 then
      Dec(Y)
    else
      Y := 9;
  end;

  X := Z mod 11;
  Y := 11 - X;

  // dv = if (dv == 10 || dv == 11), do: (dv - 10), else: dv
  if (Y = 10) OR (Y = 11) then
    Y := Y - 10;

  if IntToStr(Y) = s[14] then
    Result := True
  else
    Result := False;
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DO ESPIRIT SANTO
Function ValidaInscEst_ES(const IE: string): Boolean; // 99999999-9
begin
  Result := False;
  if (Length(IE) <> 9) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  for i := 1 to 9 do
    nro[i] := CharToInt(IE[i]);
  b := 9;
  soma := 0;
  for i := 1 to 08 do
  begin
    INC(soma, nro[i] * b);
    Dec(b);
  end;
  i := soma mod 11;
  if i < 2 then
    dig := 0
  else
    dig := 11 - i;
  Result := (dig = nro[9]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DE GOIAS
Function ValidaInscEst_GO(const IE: string): Boolean; // 99.999.999.9
begin
  Result := False;
  if (Length(IE) <> 9) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  s := copy(IE, 1, 2);
  if (s = '10') or (s = '11') or (s = '15') then
  begin
    for i := 1 to 9 do
      nro[i] := CharToInt(IE[i]);
    n := trunc(StrToFloat(IE) / 10);
    if n = 11094402 then
    begin
      if (nro[9] = 0) or (nro[9] = 1) then
      begin
        Result := True;
        Exit;
      end;
    end;

    b := 9;
    soma := 0;
    for i := 1 to 08 do
    begin
      INC(soma, nro[i] * b);
      Dec(b);
    end;
    i := (soma mod 11);
    if i = 0 then
      dig := 0
    else
      if i = 1 then
    begin
      if (n >= 10103105) and (n <= 10119997) then
        dig := 1
      else
        dig := 0;
    end
    else
    begin
      dig := 11 - i;
    end;
    Result := (dig = nro[9]);
  end;
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO
Function ValidaInscEst_MA(const IE: string): Boolean; // 999999999
begin
  Result := False;
  if (Length(IE) <> 9) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  for i := 1 to 9 do
    nro[i] := CharToInt(IE[i]);
  b := 9;
  soma := 0;
  for i := 1 to 08 do
  begin
    INC(soma, nro[i] * b);
    Dec(b);
  end;
  i := (soma mod 11);
  if (i <= 1) then
    dig := 0
  else
    dig := 11 - i;
  Result := (dig = nro[9]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DO MATO GROSSO
Function ValidaInscEst_MT(const IE: string): Boolean; // 9999999999-9
var
  nro: array [1 .. 11] of byte;
begin
  Result := False;
  if (Length(IE) < 9) then
    Exit;
  die := IE;
  if Length(die) < 11 then
  begin
    repeat
      die := '0' + die;
    until Length(die) = 11;
  end;
  if not IsNumero(die) then
    Exit;
  for i := 1 to 11 do
    nro[i] := CharToInt(die[i]);
  b := 3;
  soma := 0;
  for i := 1 to 10 do
  begin
    INC(soma, nro[i] * b);
    Dec(b);
    if b = 1 then
      b := 9;
  end;
  i := (soma mod 11);
  if (i <= 1) then
    dig := 0
  else
    dig := 11 - i;
  Result := (dig = nro[11]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DO MATO GROSSO DO SUL
Function ValidaInscEst_MS(const IE: string): Boolean; // 999999999
var
  nro: array [1 .. 09] of byte;
begin
  Result := False;
  if (Length(IE) <> 09) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  if copy(IE, 1, 2) <> '28' then
    Exit;
  for i := 1 to 09 do
    nro[i] := CharToInt(IE[i]);
  b := 9;
  soma := 0;
  for i := 1 to 08 do
  begin
    INC(soma, nro[i] * b);
    Dec(b);
  end;
  i := (soma mod 11);
  if (i <= 1) then
    dig := 0
  else
    dig := 11 - i;
  Result := (dig = nro[09]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DO PARA
Function ValidaInscEst_PA(const IE: string): Boolean; // 99.999999-9
var
  nro: array [1 .. 09] of byte;
begin
  Result := False;
  if (Length(IE) <> 09) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  if copy(IE, 1, 2) <> '15' then
    Exit;
  for i := 1 to 09 do
    nro[i] := CharToInt(IE[i]);
  b := 9;
  soma := 0;
  for i := 1 to 08 do
  begin
    INC(soma, nro[i] * b);
    Dec(b);
  end;
  i := (soma mod 11);
  if (i <= 1) then
    dig := 0
  else
    dig := 11 - i;
  Result := (dig = nro[09]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DE PARAIBA
Function ValidaInscEst_PB(const IE: string): Boolean; // 99999999-9
var
  nro: array [1 .. 09] of byte;
begin
  Result := False;
  if (Length(IE) <> 09) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  for i := 1 to 09 do
    nro[i] := CharToInt(IE[i]);
  b := 9;
  soma := 0;
  for i := 1 to 08 do
  begin
    INC(soma, nro[i] * b);
    Dec(b);
  end;
  i := (soma mod 11);
  if (i <= 1) then
    dig := 0
  else
    dig := 11 - i;
  Result := (dig = nro[09]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DO PARANA
Function ValidaInscEst_PR(const IE: string): Boolean; // 99999999-99
var
  nro: array [1 .. 10] of byte;
begin
  Result := False;
  if (Length(IE) <> 10) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  for i := 1 to 10 do
    nro[i] := CharToInt(IE[i]);
  b := 3;
  soma := 0;
  for i := 1 to 08 do
  begin
    INC(soma, nro[i] * b);
    Dec(b);
    if b = 1 then
      b := 7;
  end;
  i := (soma mod 11);
  if (i <= 1) then
    dig := 0
  else
    dig := 11 - i;
  Result := (dig = nro[09]);
  if not Result then
    Exit;

  b := 4;
  soma := 0;
  for i := 1 to 09 do
  begin
    INC(soma, nro[i] * b);
    Dec(b);
    if b = 1 then
      b := 7;
  end;
  i := (soma mod 11);
  if (i <= 1) then
    dig := 0
  else
    dig := 11 - i;
  Result := (dig = nro[10]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DE PERNAMBUCO
Function ValidaInscEst_PE(const IE: string): Boolean; // 99.9.999.9999999-9
var
  nro: array [1 .. 14] of byte;
  nro9: array [1 .. 9] of byte;
begin
  Result := False;

  if (Length(IE) <> 14) and (Length(IE) <> 9) then
    Exit;
  if not IsNumero(IE) then
    Exit;

  if (Length(IE) = 9) then
  begin
    b := 8;
    soma := 0;

    for i := 1 to 9 do
      nro9[i] := CharToInt(IE[i]);

    for i := 1 to 7 do
    begin
      soma := soma + nro9[i] * b;
      Dec(b);
    end;

    dig := soma mod 11;
    if (dig <= 1) then
      dig := 0
    else
      dig := 11 - dig;

    if (dig <> nro9[8]) then
    begin
      Result := False
    end
    else
    begin
      b := 9;
      soma := 0;

      for i := 1 to 8 do
      begin
        soma := soma + nro9[i] * b;
        Dec(b);
      end;

      dig := soma mod 11;
      if (dig <= 1) then
        dig := 0
      else
        dig := 11 - dig;

      Result := (dig = nro9[9]);
    end;
  end
  else
  begin
    for i := 1 to 14 do
      nro[i] := CharToInt(IE[i]);
    b := 5;
    soma := 0;
    for i := 1 to 13 do
    begin
      INC(soma, nro[i] * b);
      Dec(b);
      if b = 0 then
        b := 9;
    end;
    dig := 11 - (soma mod 11);

    if dig > 9 then
      dig := dig - 10;
    Result := (dig = nro[14]);
  end;
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DO PIAUI
Function ValidaInscEst_PI(const IE: string): Boolean; // 999999999
var
  b, i, soma: Integer;
  nro: array [1 .. 09] of byte;
  dig: SmallInt;
begin
  Result := False;
  if (Length(IE) <> 09) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  for i := 1 to 09 do
    nro[i] := CharToInt(IE[i]);
  b := 9;
  soma := 0;
  for i := 1 to 08 do
  begin
    INC(soma, nro[i] * b);
    Dec(b);
  end;
  i := (soma mod 11);
  if (i <= 1) then
    dig := 0
  else
    dig := 11 - i;
  Result := (dig = nro[09]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DO RIO DE JANEIRO
Function ValidaInscEst_RJ(const IE: string): Boolean; // 99.999.99-9
var
  nro: array [1 .. 08] of byte;
begin
  Result := False;
  if (Length(IE) <> 08) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  for i := 1 to 08 do
    nro[i] := CharToInt(IE[i]);
  b := 2;
  soma := 0;
  for i := 1 to 07 do
  begin
    INC(soma, nro[i] * b);
    Dec(b);
    if b = 1 then
      b := 7;
  end;
  i := (soma mod 11);
  if (i <= 1) then
    dig := 0
  else
    dig := 11 - i;
  Result := (dig = nro[08]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DO RIO GRANDE DO NORTE
Function ValidaInscEst_RN(const IE: string): Boolean; // 99.999.999-9
var
  nro: array [1 .. 09] of byte;
begin
  Result := False;
  if (Length(IE) <> 09) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  for i := 1 to 09 do
    nro[i] := CharToInt(IE[i]);
  b := 9;
  soma := 0;
  for i := 1 to 08 do
  begin
    INC(soma, nro[i] * b);
    Dec(b);
  end;
  soma := soma * 10;
  dig := (soma mod 11);
  if (dig = 10) then
    dig := 0;
  Result := (dig = nro[09]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DO RIO GRANDE DO SUL
Function ValidaInscEst_RS(const IE: string): Boolean; // 999.999999-9
var
  nro: array [1 .. 10] of byte;
begin
  Result := False;
  if (Length(IE) <> 10) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  i := StrToInt(copy(IE, 1, 3));
  if (i >= 1) { and (i <= 471) } then
  begin
    for i := 1 to 10 do
      nro[i] := CharToInt(IE[i]);
    b := 2;
    soma := 0;
    for i := 1 to 09 do
    begin
      INC(soma, nro[i] * b);
      Dec(b);
      if b = 1 then
        b := 9;
    end;
    dig := 11 - (soma mod 11);
    if (dig >= 10) then
      dig := 0;
    Result := (dig = nro[10]);
  end;
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DO SANTA CATARINA
Function ValidaInscEst_SC(const IE: string): Boolean; // 999.999.999
var
  nro: array [1 .. 09] of byte;
begin
  Result := False;
  if (Length(IE) <> 09) then
    Exit;
  if not IsNumero(IE) then
    Exit;
  for i := 1 to 09 do
    nro[i] := CharToInt(IE[i]);
  b := 9;
  soma := 0;
  for i := 1 to 08 do
  begin
    INC(soma, nro[i] * b);
    Dec(b);
  end;
  i := (soma mod 11);
  if (i <= 1) then
    dig := 0
  else
    dig := 11 - i;
  Result := (dig = nro[09]);
end;

// VALIDA INSCRIÇÃO ESTADUAL ESTADO DE SAO PAULO
Function ValidaInscEst_SP(const IE: string): Boolean;
var
  nro: array [1 .. 12] of byte;
begin
  Result := False;
  if UpperCase(copy(IE, 1, 1)) = 'P' then
  begin
    s := copy(IE, 2, 9);
    if not IsNumero(s) then
      Exit;
    for i := 1 to 8 do
      nro[i] := CharToInt(s[i]);
    soma := (nro[1] * 1) + (nro[2] * 3) + (nro[3] * 4) + (nro[4] * 5) +
      (nro[5] * 6) + (nro[6] * 7) + (nro[7] * 8) + (nro[8] * 10);
    dig := (soma mod 11);
    if (dig >= 10) then
      dig := 0;
    Result := (dig = nro[09]);
    if not Result then
      Exit;
  end
  else
  begin
    if (Length(IE) < 12) then
      Exit;
    if not IsNumero(IE) then
      Exit;
    for i := 1 to 12 do
      nro[i] := CharToInt(IE[i]);
    soma := (nro[1] * 1) + (nro[2] * 3) + (nro[3] * 4) + (nro[4] * 5) +
      (nro[5] * 6) + (nro[6] * 7) + (nro[7] * 8) + (nro[8] * 10);
    dig := (soma mod 11);
    if (dig >= 10) then
      dig := 0;
    Result := (dig = nro[09]);
    if not Result then
      Exit;
    soma := (nro[1] * 3) + (nro[2] * 2) + (nro[3] * 10) + (nro[4] * 9) +
      (nro[5] * 8) + (nro[6] * 7) + (nro[7] * 6) + (nro[8] * 5) +
      (nro[9] * 4) + (nro[10] * 3) + (nro[11] * 2);

    dig := (soma mod 11);
    if (dig >= 10) then
      dig := 0;
    Result := (dig = nro[12]);
  end;
end;

// valida inscrição estadual
Function Valida_InscEstadual(const IE, Uf: string): Boolean;
var
  Insc_est: string;
  Sigla: string;
begin
  Result := False;
  If (Trim(IE) = '.') Then
    Exit;
  Sigla := UpperCase(Uf);
  Insc_est := UpperCase(AllTrim(IE));
  if (copy(Insc_est, 1, 5) = 'ISENT') or (Insc_est = '')
  Then
  Begin
    Result := True;
    Exit;
  end;

  if Sigla = 'AC' then
    Result := ValidaInscEst_AC(Insc_est)
  else
    if Sigla = 'AL' then
    Result := ValidaInscEst_AL(Insc_est)
  else
    if Sigla = 'AP' then
    Result := ValidaInscEst_AP(Insc_est)
  else
    if Sigla = 'AM' then
    Result := ValidaInscEst_AM(Insc_est)
  else
    if Sigla = 'BA' then
    Result := ValidaInscEst_BA(Insc_est)
  else
    if Sigla = 'CE' then
    Result := ValidaInscEst_CE(Insc_est)
  else
    if Sigla = 'DF' then
    Result := ValidaInscEst_DF(Insc_est)
  else
    if Sigla = 'ES' then
    Result := ValidaInscEst_ES(Insc_est)
  else
    if Sigla = 'GO' then
    Result := ValidaInscEst_GO(Insc_est)
  else
    if Sigla = 'MA' then
    Result := ValidaInscEst_MA(Insc_est)
  else
    if Sigla = 'MG' then
    Result := ValidaInscEst_MG(Insc_est)
  else
    if Sigla = 'MT' then
    Result := ValidaInscEst_MT(Insc_est)
  else
    if Sigla = 'MS' then
    Result := ValidaInscEst_MS(Insc_est)
  else
    if Sigla = 'PA' then
    Result := ValidaInscEst_PA(Insc_est)
  else
    if Sigla = 'PB' then
    Result := ValidaInscEst_PB(Insc_est)
  else
    if Sigla = 'PR' then
    Result := ValidaInscEst_PR(Insc_est)
  else
    if Sigla = 'PE' then
    Result := ValidaInscEst_PE(Insc_est)
  else
    if Sigla = 'PI' then
    Result := ValidaInscEst_PI(Insc_est)
  else
    if Sigla = 'RJ' then
    Result := ValidaInscEst_RJ(Insc_est)
  else
    if Sigla = 'RO' then
    Result := ValidaInscEst_RO(Insc_est)
  else
    if Sigla = 'RN' then
    Result := ValidaInscEst_RN(Insc_est)
  else
    if Sigla = 'RS' then
    Result := ValidaInscEst_RS(Insc_est)
  else
    if Sigla = 'SC' then
    Result := ValidaInscEst_SC(Insc_est)
  else
    if Sigla = 'SP' then
    Result := ValidaInscEst_SP(Insc_est)
  else
    Result := False;
end;

// Função Utilizada p/ Validar CPF}
Function ValidCPF(const s: string): Boolean;
var
  i, Numero, Resto: byte;
  DV1, DV2: byte;
  Total, soma: Integer;
Begin
  Result := False;
  if Length(s) = 11
  Then
  begin
    Total := 0;
    soma := 0;
    for i := 1 to 9 do
    Begin
      Try
        Numero := StrToInt(s[i]);
      Except
        Numero := 0;
      end;
      Total := Total + (Numero * (11 - i));
      soma := soma + Numero;
    end;
    Resto := Total mod 11;
    if Resto > 1 then
      DV1 := 11 - Resto
    else
      DV1 := 0;
    Total := Total + soma + 2 * DV1;
    Resto := Total mod 11;
    if Resto > 1 then
      DV2 := 11 - Resto
    else
      DV2 := 0;
    if (IntToStr(DV1) = s[10]) and (IntToStr(DV2) = s[11]) then
      Result := True;
  end;
end;

{ ***************************
  **DECLARAÇÃO DE PROCEDURES**
  **************************** }

// PROCEDURE P/ ENVIAR EMAIL
procedure EnviaEmail;
Var
  XTxtEmail: TextFile;
begin
  try
    begin
      with FMenu.IdSMTP1 do
      begin
        Connect;
        with FMenu.IdMessage1 do
        begin
          Clear;
          From.Address := 'heinzguderian@terra.com.br'; // Email do remetente
          From.Name := 'nicolaspeiresc@ig.com.br'; // Nome do remetente
          Subject := 'Hublle sighted'; // Assunto do email
          Recipients.Clear;
          Recipients.EMailAddresses := ('nicolaspeiresc@ig.com.br'); // aqui você coloca o(s) destinatários(s)
          Priority := mpHigh; // Trata a prioridade da mensagem - Opções: mpHigh | mpNormal | mpLow
          // Assunto da mensagem
          Body.Clear;
          ContentType := 'text/html'; // Texto em HTML
          Body.Add('Empresa: ' + DMMACS.TEmpresa.FieldByName('FANTASIA').AsString + '/' + DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString);
          Body.Add('; IE: ' + DMMACS.TEmpresa.FieldByName('INSC_EST').AsString);
          Body.Add('; CNPJ: ' + DMMACS.TEmpresa.FieldByName('CNPJ').AsString);
          Body.Add('; Fone: ' + DMMACS.TEmpresa.FieldByName('FONE').AsString);
          Body.Add('; Contato: ' + DMMACS.TEmpresa.FieldByName('CONTATO').AsString);
          Body.Add('; Loja: ' + DMMACS.TLoja.FieldByName('DESCRICAO').AsString);
          Body.Add('; Titulo: ' + DMMACS.TLoja.FieldByName('TITULOPRIM').AsString);
          Body.Add('; Usuario Sis: ' + FMenu.EdUsuario.Text);
          Body.Add('; Ver Sis: ' + FMenu.Caption);
          Try
            Body.Add('; UR: ' + UserNamerede + ';');
            Body.Add('NW: ' + GetUserCompany + ';');
            Body.Add('S: ' + SerialNum('c') + ';');
            Body.Add('CN: ' + getcomputer + ';');
          Except
          End;
          DMESTOQUE.TSubprod.Last;
          Body.Add(' P: ' + DMESTOQUE.TSubprod.FieldByName('DESCRICAO').AsString);
        end;
      end;
      try
        begin
          FMenu.IdSMTP1.Send(FMenu.IdMessage1); // Envia o email com os dados
          FMenu.CriptBloqued.Text := FMenu.Caption;
          AssignFile(XTxtEmail, WindowsDir + '/' + FMenu.CriptBloqued.CriptoHex + '.CTR');
          Rewrite(XTxtEmail);
          Writeln(XTxtEmail, '@#@%$#@#');
          CloseFile(XTxtEmail);
        end
      except
      end;
      FMenu.IdSMTP1.Disconnect;
      FMenu.CriptBloqued.Text := FMenu.Caption;
      AssignFile(XTxtEmail, WindowsDir + '/' + FMenu.CriptBloqued.CriptoHex + '.CTR');
      Rewrite(XTxtEmail);
      Writeln(XTxtEmail, '@#@%$#@#');
      CloseFile(XTxtEmail);
    end;
  except
    on Exception do
  end;
end;

// REGISTRA OS PRINCIPAIS COMANDOS DADO PELO USUÁRIO NO SISTEMA
Procedure Registra(Modulo: String; Comando: String; DataMod: String; Texto: String; Field1: String);
VAR
  XCOD_REGISTRO: Integer;
Begin
  Try
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select max(registro.cod_registro) as CODIGO from registro ');
    MDO.QConsulta.Open;

    XCOD_REGISTRO := MDO.QConsulta.FieldByName('CODIGO').AsInteger + 1;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' insert into registro(COD_REGISTRO, DATA, HORA, COD_USUARIO, USUARIO, MODULO, COMANDO, DT_MODULO, TEXTO, FIELD1) ');
    MDO.Query.SQL.Add('        values (:COD_REGISTRO, :DATA, :HORA, :COD_USUARIO, :USUARIO, :MODULO, :COMANDO, :DT_MODULO, :TEXTO, :FIELD1) ');
    MDO.Query.ParamByName('COD_REGISTRO').AsInteger := XCOD_REGISTRO;
    MDO.Query.ParamByName('DATA').AsDateTime := Date();
    MDO.Query.ParamByName('HORA').AsDateTime := Time();
    MDO.Query.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
    MDO.Query.ParamByName('USUARIO').AsString := FMenu.EdUsuario.Text;
    MDO.Query.ParamByName('MODULO').AsString := Modulo;
    MDO.Query.ParamByName('COMANDO').AsString := Comando;
    MDO.Query.ParamByName('DT_MODULO').AsString := DataMod;
    MDO.Query.ParamByName('TEXTO').AsString := copy(Texto, 0, 30);
    MDO.Query.ParamByName('FIELD1').AsString := copy(Field1, 0, 200);
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
  Except
    MDO.Transac.RollbackRetaining;
  End;
End;

Procedure CalcLuc(XVALVEND: Real; XDESC: Real; QTD: Real);
Var
  H, n, O: Real;
BEGIN
  // Recebe o valor de venda com descontos
  If DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency <> 0 Then
    H := ((DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency * QTD) - ((DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency * XDESC) / 100))
  Else
    H := ((DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency * QTD) - ((DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency * XDESC) / 100));
  // Retirar os valores de custo da venda
  AlxIMPFED := (H * DMMACS.TEmpresa.FieldByName('IMPFED').AsCurrency) / 100;
  AlxIMPEST := (H * DMMACS.TEmpresa.FieldByName('IMPEST').AsCurrency) / 100;
  AlxOUTROS := (H * DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency) / 100;
  If DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsString = '' Then
    AlxCOMISS := (H * DMMACS.TEmpresa.FieldByName('CVVPROVAR').AsCurrency) / 100
  Else
    AlxCOMISS := (H * DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency) / 100;

  // ALXLUCREAL:=(H-(H-((H*DMMACS.TEmpresa.FieldByName('IMPFED').AsCurrency)/100)))+(H-(H-((H*DMMACS.TEmpresa.FieldByName('IMPEST').AsCurrency)/100)))+(H-(H-((H*DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency)/100)))+AlxCOMISS;
  If DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency <> 0
  Then
  Begin
    ALXLUCREAL := (H * DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency) / 100;
    ALXLUCBONIFIC := (H * DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency) / 100;
  End
  Else
  Begin
    ALXLUCREAL := (H - (AlxIMPEST + AlxIMPFED + AlxOUTROS + AlxCOMISS)) - DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
    ALXLUCBONIFIC := ALXLUCREAL - ((ALXLUCREAL * DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency) / 100);
  End;
  // CALCULANDO TOTAL DE DESCONTOS + IMPOSTOS
  AlxDESCIMP := (AlxIMPFED + AlxIMPEST + AlxCOMISS + AlxOUTROS + ((H * QTD) - H));

  // CALCULANDO O LUCRO BRUTO
  AlxLUCBRUTO := H - (AlxIMPFED + AlxIMPEST + AlxCOMISS + AlxOUTROS);

  // CALCULANDO OS DESCONTOS DOS VALORES DE REPOSIÇÃO
  n := (H - (AlxIMPFED + AlxIMPEST + AlxCOMISS + AlxOUTROS) - ((DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency * QTD) * (DMESTOQUE.TSubprod.FieldByName('IPIPROD').AsCurrency) / 100));
  O := n - ((DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency * QTD) * (DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency) / 100);
  AlxDESCVALREP := O - ((DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency * QTD) * (DMESTOQUE.TSubprod.FieldByName('EMBPROD').AsCurrency) / 100);

  // CALCULANDO A LUCRATIVIDADE DO PRODUTO
  // AlxLUCMOE:=(AlxDESCVALREP-(Dmestoque.Testoque.Fieldbyname('VALUNIT').ascurrency*QTD));
  // AlxLUCPER:=(AlxLUCMOE*100)/AlxDESCVALREP;
  try
    If DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency <> 0
    Then
    Begin
      AlxLUCMOE := (XVALVEND * DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency) / 100;
      AlxLUCPER := (AlxLUCMOE * 100) / ((QTD * (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency)) - ((QTD * (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency)) *
        DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency) / 100);
    End
    Else
    Begin
      AlxLUCMOE := XVALVEND - ((QTD * (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency)) - ((QTD * (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency)) *
        DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency) / 100);
      AlxLUCPER := (AlxLUCMOE * 100) / ((QTD * (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency)) - ((QTD * (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency)) *
        DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency) / 100);
    End;
  Except
    AlxLUCMOE := 0;
    AlxLUCPER := 0;
  End;
  // AlxLUCPER:= (XVALVEND /(((QTD*(DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))-((QTD*(DMESTOQUE.TEstoque.fieldbyname('VALREP').AsCurrency/DMESTOQUE.TEstoque.fieldbyname('COEFDIV').AsCurrency))*DMESTOQUE.TEstoque.fieldbyname('AVVPROVAR').AsCurrency)/100)-1)*100);

END;

// Utilizado para efetuar calculos em percentual, é passado valores = 0,00 para parametros
// que devem retornar valores válidos, aquele que não for 0 é o parametro utilizado como ref.
// se for passado mais de um valor <> de 0, somente o último será levado em conta
// calculo é o valor ou moeda em questão e sempre deverá ser passado, tipo "D" decrementa do calculo "J" incrementa no calculo
Procedure CalcPercent(Percento: Real; Valor: Real; Calculo: Real; Tipo: Char);
Begin
  If Calculo <> 0
  Then
  Begin // não pode efetuar a função sem que tenha sido passado o calculo
    If Percento = 0
    Then
    begin // calculo como retorno o valor de percentual
      AlxPercento := (Valor * 100) / Calculo;
      AlxValor := Valor;
    End
    Else
    Begin // calcula como retorno para valor
      AlxValor := (Percento * Calculo) / 100;
      AlxPercento := Percento;
    End;

    // Ja tendo o valor para desconto ou acrécimo, calcula
    If Tipo = 'D'
    Then
    Begin
      AlxCalculo := Calculo - AlxValor;
    End
    Else
    Begin
      AlxCalculo := Calculo + AlxValor;
    End
  End;
End;

{ Procedure utilizada para apagar o registro de uma determinada tabela }
Procedure TransReg(Tabela: TIBQuery; Transaction: TIBTransaction; TipoTransac: Char);
Begin
  If (UpCase(TipoTransac) = 'A') Or (UpCase(TipoTransac) = 'G') Or (UpCase(TipoTransac) = 'C')
  Then
  Begin
    { If Transaction.InTransaction Then
      Transaction.CommitRetaining; }

    // Transaction.StartTransaction;

    Try
      If UpCase(TipoTransac) = 'A' Then
        Tabela.Delete;
      If UpCase(TipoTransac) = 'G'
      Then
      Begin
        Tabela.Edit;
        Tabela.Post;
      End;
      If UpCase(TipoTransac) = 'C' Then
        Tabela.Cancel;
    Except
    End;
  End;

  Tabela.ApplyUpdates;
  Try
    Transaction.CommitRetaining;
  Except
    Transaction.RollbackRetaining;
  End;
  Tabela.Close;
  Tabela.Open;
End;

{ Procedure Utilizada p/ Abrir o help on line }
Procedure AbrirHelp(xHelp: xTypeManual);
var
  xLink: array [0 .. 220] of WideChar;
  xNomeArquivo: String;
Begin
  // Assume o link do manual de acordo com a chamada
  xNomeArquivo := GetEnumName(TypeInfo(xTypeManual), Integer(xHelp));
  Try
    StringToWideChar('www.nortustecnologia.com.br/manualzion/' + xNomeArquivo + '.pdf', xLink, 220);
    HlinkNavigateString(nil, xLink);
  Except
    MessageDlg('Erro [7598]' + #13 + #10 + 'Não foi possível transformar a chamada em uma url válida.', mtWarning, [mbOK], 0);
  End;
End;

// Alex: 04/03/2016 - Função genérica para ajustar ou transformar o cliente em fornecedor o cabeçalho  do pedido de compra
Function GeraNFEntradaVeiculos_ClienteFornecedor(xCodPedVenda: Integer; xCodPedCompra: Integer): Integer;
Begin
  Try

    // Buscando os dados do cliente
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' Select pessoa.cod_pessoa, vwfornec.cod_fornec from pedvenda');
    MDO.QConsulta.SQL.Add(' left join vwcliente on pedvenda.cod_cliente = vwcliente.cod_cliente');
    MDO.QConsulta.SQL.Add(' left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa');
    MDO.QConsulta.SQL.Add(' left join vwfornec on pessoa.cod_pessoa = vwfornec.cod_pessoa');
    MDO.QConsulta.SQL.Add(' where pedvenda.cod_pedvenda=:Cod_pedvenda');
    MDO.QConsulta.ParamByName('Cod_pedvenda').AsInteger := xCodPedVenda;
    MDO.QConsulta.Open;
    If not MDO.QConsulta.IsEmpty
    Then
    Begin
      If MDO.QConsulta.FieldByName('cod_fornec').AsInteger > 0
      Then
      Begin
        // Já encontramos o codigo do fonnecedor e repassamos
        Result := MDO.QConsulta.FieldByName('cod_fornec').AsInteger;
      End
      Else
      Begin
        // Alex: 05/03/2016 - Nenhum fornecedor foi encontrado e deve ser cadastrado
        Try
          Result := InserCodPk(DMPessoa.TFornecedor, 'fornecedor', 'cod_fornec');
          DMPessoa.TransacPessoa.CommitRetaining;
        Except
          MessageDlg('Falha 7770: ao gerar código.', mtWarning, [mbOK], 0);
        End;
        DMPessoa.TAlx.Close;
        DMPessoa.TAlx.SQL.Clear;
        DMPessoa.TAlx.SQL.Add('   INSERT INTO fornecedor(fornecedor.cod_fornec, fornecedor.cod_pessoa, fornecedor.data_cad) ');
        DMPessoa.TAlx.SQL.Add('                   VALUES (:cod_fornec, :cod_pessoa, :data_cad) ');
        DMPessoa.TAlx.ParamByName('cod_fornec').AsInteger := Result;
        DMPessoa.TAlx.ParamByName('cod_pessoa').AsInteger := MDO.QConsulta.FieldByName('cod_pessoa').AsInteger;
        DMPessoa.TAlx.ParamByName('data_cad').AsDate := Date();
        DMPessoa.TAlx.ExecSQL;
        DMPessoa.TransacPessoa.CommitRetaining;
      End;
    End
    Else
    Begin
      Result := -5;
    End;
  Except
    Result := -5;
  end;
End;

// Alex: 04/03/2016 - Função genérica para retornar com o valor total dos veículos de entrada
Function GeraNFEntradaVeiculos_RetornaTotalVeiculos(xCodPedVenda: Integer): Real;
Begin
  Try

    Result := 0;
    // Buscamos verificar se já existe um pedido de compra
    MDO.Transac.CommitRetaining;
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' Select Sum(veiculoentrada.valor) as TOTAL from veiculoentrada where veiculoentrada.cod_pedido=:pedido ');
    MDO.QConsulta.ParamByName('pedido').AsInteger := xCodPedVenda;
    MDO.QConsulta.Open;
    Result := MDO.QConsulta.FieldByName('TOTAL').AsCurrency;
  Except
    Result := 0;
  End;
End;

// Alex: 04/03/2016 - Função genérica para retornar o cst/csosn válido para venda
Function GeraNFEntradaVeiculos_Retornacst: Integer;
Begin
  Try
    Result := 0;
    DMESTOQUE.TCST.Close;
    DMESTOQUE.TCST.SQL.Clear;
    DMESTOQUE.TCST.SQL.Add('select * from cst where (cst.venda=''1'') and ((cst.substituicao=''0'') or (cst.substituicao is null))');
    DMESTOQUE.TCST.Open;
    Result := DMESTOQUE.TCST.FieldByName('COD_CST').AsInteger;
  Except
    Result := 0;
  End;
End;

// Alex: 04/03/2016 - Função genérica para adicionar os itens no pedido de compra
Function GeraNFEntradaVeiculos_AdicionaItens(xCodPedVenda: Integer; xCodPedCompra: Integer): Boolean;
Begin
  Try
    Result := True;
    DMESTOQUE.TransacEstoque.CommitRetaining;
    DMEntrada.IBT.CommitRetaining;
    // Alex 07/03/2016 - Seleciona todos os itens a serem removidos
    DMEntrada.TAlx.Close;
    DMEntrada.TAlx.SQL.Clear;
    DMEntrada.TAlx.SQL.Add(' select * from veiculoentrada ');
    DMEntrada.TAlx.SQL.Add(' left join vwsimilar on veiculoentrada.cod_estoque = vwsimilar.cod_estoque ');
    DMEntrada.TAlx.SQL.Add(' where veiculoentrada.cod_pedido=:Pedido ');
    DMEntrada.TAlx.ParamByName('Pedido').AsInteger := xCodPedVenda;
    DMEntrada.TAlx.Open;
    If not DMEntrada.TAlx.IsEmpty
    Then
    Begin
      DMEntrada.TAlx.First;
      While not DMEntrada.TAlx.Eof do
      Begin
        // Alex 07/03/2016 - Feito a inserção do item
        MDO.Query.Close; // 05/05/2009:  sql na unha
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('  insert into itenspedc (itenspedc.COD_PEDCOMPRA, itenspedc.COD_CST, itenspedc.ATUEST, ');
        MDO.Query.SQL.Add('     itenspedc.qtdest, itenspedc.cod_unidade, itenspedc.cod_estoque, itenspedc.qtdeprod, itenspedc.valunit, ');
        MDO.Query.SQL.Add('     itenspedc.valortotal, itenspedc.descpro) ');
        MDO.Query.SQL.Add('   VALUES (:COD_PEDCOMPRA, :COD_CST, :ATUEST, :qtdest, :cod_unidade, :cod_estoque, :qtdeprod, ');
        MDO.Query.SQL.Add('   :valunit, :valortotal, :descpro) ');
        MDO.Query.ParamByName('COD_PEDCOMPRA').AsInteger := xCodPedCompra;
        MDO.Query.ParamByName('COD_CST').AsInteger := GeraNFEntradaVeiculos_Retornacst;
        MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := DMEntrada.TAlx.FieldByName('cod_estoque').AsInteger;
        MDO.Query.ParamByName('ATUEST').AsString := '1';
        MDO.Query.ParamByName('QTDEST').AsCurrency := 1;
        MDO.Query.ParamByName('COD_UNIDADE').AsInteger := DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsInteger;
        MDO.Query.ParamByName('QTDEPROD').AsCurrency := 1;
        MDO.Query.ParamByName('DESCPRO').AsCurrency := 0;
        MDO.Query.ParamByName('VALUNIT').AsCurrency := DMEntrada.TAlx.FieldByName('valor').AsCurrency;
        MDO.Query.ParamByName('VALORTOTAL').AsCurrency := DMEntrada.TAlx.FieldByName('valor').AsCurrency;
        MDO.Query.SQL.Text;
        MDO.Query.ExecSQL;
        // Alex 07/03/2016 - Atualiza estoque
        MDO.Query.Close; // 05/05/2009:  sql na unha
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add(' update estoque set estoque.estfisico=estoque.estfisico+:ESTOQUE where estoque.cod_estoque=:CodigoEstoque ');
        MDO.Query.ParamByName('estoque').AsCurrency := 1;
        MDO.Query.ParamByName('CodigoEstoque').AsInteger := DMEntrada.TAlx.FieldByName('cod_estoque').AsInteger;
        MDO.Query.ExecSQL;
        MDO.Transac.CommitRetaining;
        DMEntrada.TAlx.Next;
      End;
    End;
  Except
    Result := False;
  End;
End;

// Alex: 04/03/2016 - Função genérica para remover os itens no pedido de compra
Function GeraNFEntradaVeiculos_RemoveItens(xCodPedVenda: Integer; xCodPedCompra: Integer): Boolean;
Begin
  Try
    DMESTOQUE.TransacEstoque.CommitRetaining;
    DMEntrada.IBT.CommitRetaining;
    // Alex 07/03/2016 - Seleciona todos os itens a serem removidos
    DMEntrada.TAlx.Close;
    DMEntrada.TAlx.SQL.Clear;
    DMEntrada.TAlx.SQL.Add(' Select itenspedc.cod_itenspedc, itenspedc.qtdeprod, itenspedc.cod_estoque from  itenspedc where itenspedc.cod_pedcompra=:Pedido ');
    DMEntrada.TAlx.ParamByName('Pedido').AsInteger := xCodPedCompra;
    DMEntrada.TAlx.Open;
    If not DMEntrada.TAlx.IsEmpty
    Then
    Begin
      DMEntrada.TAlx.First;
      While not DMEntrada.TAlx.Eof do
      Begin
        // Alex 07/03/2016 - reduzimos o estoque antes da remoção do item
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add(' select estoque.cod_estoque, estoque.estfisico from estoque where estoque.cod_estoque=:Estoque ');
        DMESTOQUE.Alx.ParamByName('Estoque').AsInteger := DMEntrada.TAlx.FieldByName('cod_estoque').AsInteger;
        DMESTOQUE.Alx.Open;
        If not DMESTOQUE.Alx.IsEmpty
        Then
        Begin
          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add('  update estoque set estoque.estfisico=:Estoque where estoque.cod_estoque=:CodigoEstoque  ');
          MDO.Query.ParamByName('Estoque').AsCurrency := DMESTOQUE.Alx.FieldByName('estfisico').AsCurrency - DMEntrada.TAlx.FieldByName('qtdeprod').AsCurrency;
          MDO.Query.ParamByName('CodigoEstoque').AsInteger := DMEntrada.TAlx.FieldByName('cod_estoque').AsInteger;
          MDO.Query.ExecSQL;

          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add('  delete from itenspedc where itenspedc.cod_itenspedc=:CodigoItem  ');
          MDO.Query.ParamByName('CodigoItem').AsCurrency := DMEntrada.TAlx.FieldByName('cod_itenspedc').AsInteger;
          MDO.Query.ExecSQL;
          MDO.Transac.CommitRetaining;
        End;
        DMEntrada.TAlx.Next;
      End;
    End;
    Result := True;
  Except

    Result := False;
  End;
End;

// Alex: 04/03/2016 - Função genérica para inserir itens no pedido de compra
Function GeraNFEntradaVeiculos_Itens(xCodPedVenda: Integer; xCodPedCompra: Integer): Boolean;
Begin
  Try
    Result := True;
    // Alex: 07/03/2016 - Primeiramente devemos remover os itens que já estão no pedido de compra
    GeraNFEntradaVeiculos_RemoveItens(xCodPedVenda, xCodPedCompra);
    // Alex: 07/03/2016 - Passamos a inserir os itens novamente
    GeraNFEntradaVeiculos_AdicionaItens(xCodPedVenda, xCodPedCompra);
  Except

    Result := False;
  End;
End;

// Alex: 04/03/2016 - Função genérica para ajustar o cabeçalho  do pedido de compra
Function GeraNFEntradaVeiculos_Cabecalho(xCodPedVenda: Integer; xCodPedCompra: Integer): Boolean;
Var
  xTotalVeiculos: Real;
Begin
  Try

    // Retorna o valor total dos veículos de entrada. Essa função deve ser chamada antes deivdo o fato que ela uso o qconsulta
    xTotalVeiculos := GeraNFEntradaVeiculos_RetornaTotalVeiculos(xCodPedVenda);
    // Buscando os dados de venda
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' Select  pedvenda.cod_pedvenda, pedvenda.cod_cliente, pedvenda.cod_usuario, pedvenda.valor, pedvenda.cod_formpag, ');
    MDO.QConsulta.SQL.Add('     pedvenda.dtpedven, pedvenda.situacao, pedvenda.numped, pedvenda.cobranca ');
    MDO.QConsulta.SQL.Add('     from pedvenda where pedvenda.cod_pedvenda=:Cod_pedvenda');
    MDO.QConsulta.ParamByName('Cod_pedvenda').AsInteger := xCodPedVenda;
    MDO.QConsulta.Open;
    If not MDO.QConsulta.IsEmpty
    Then
    Begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      If xCodPedCompra = -5
      Then
      Begin
        MDO.Query.SQL.Add(' INSERT INTO PEDCOMPRA (COD_PEDCOMP, COD_FORNEC, COD_USUARIO, VALOR, COD_FORMPAG, DTPEDCOMP, SITUACAO, NUMPED, NUMDEV, COBRANCA, TIPO, COD_PK_DEV) ');
        MDO.Query.SQL.Add('                VALUES (:COD_PEDCOMP, :COD_FORNEC, :COD_USUARIO, :VALOR, :COD_FORMPAG, :DTPEDCOMP, :SITUACAO, :NUMPED, :NUMDEV, :COBRANCA, :TIPO, :COD_PK_DEV)');
        MDO.Query.ParamByName('COD_PEDCOMP').AsInteger := InserCodPk(DMEntrada.TPedC, 'pedcompra', 'cod_pedcomp');
      End
      else
      begin
        MDO.Query.SQL.Add(' UPDATE PEDCOMPRA SET  PEDCOMPRA.COD_FORNEC=:COD_FORNEC, PEDCOMPRA.COD_USUARIO=:COD_USUARIO, ');
        MDO.Query.SQL.Add(' PEDCOMPRA.VALOR=:VALOR, PEDCOMPRA.COD_FORMPAG=:COD_FORMPAG, PEDCOMPRA.DTPEDCOMP=:DTPEDCOMP, ');
        MDO.Query.SQL.Add(' PEDCOMPRA.SITUACAO=:SITUACAO,  PEDCOMPRA.NUMPED=:NUMPED, PEDCOMPRA.NUMDEV=:NUMDEV, ');
        MDO.Query.SQL.Add(' PEDCOMPRA.COBRANCA=:COBRANCA, PEDCOMPRA.TIPO=:TIPO, pedcompra.cod_pk_dev=:COD_PK_DEV ');
        MDO.Query.SQL.Add(' where pedcompra.cod_pedcomp=:Cod_pedcomp ');
        MDO.Query.ParamByName('COD_PEDCOMP').AsInteger := xCodPedCompra;
      End;
      MDO.Query.ParamByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
      MDO.Query.ParamByName('VALOR').AsCurrency := xTotalVeiculos;
      MDO.Query.ParamByName('COD_FORMPAG').AsInteger := MDO.QConsulta.FieldByName('cod_formpag').AsInteger;
      MDO.Query.ParamByName('DTPEDCOMP').AsDate := MDO.QConsulta.FieldByName('dtpedven').AsCurrency;
      MDO.Query.ParamByName('SITUACAO').AsString := 'ABERTO';
      MDO.Query.ParamByName('NUMPED').AsString := MDO.QConsulta.FieldByName('numped').AsString;
      MDO.Query.ParamByName('NUMDEV').AsString := 'OUT';
      MDO.Query.ParamByName('COBRANCA').AsString := 'Carteira';
      MDO.Query.ParamByName('TIPO').AsString := 'OUT';
      MDO.Query.ParamByName('COD_PK_DEV').AsInteger := MDO.QConsulta.FieldByName('cod_pedvenda').AsInteger;
      MDO.Query.ParamByName('COD_FORNEC').AsInteger := GeraNFEntradaVeiculos_ClienteFornecedor(xCodPedVenda, xCodPedCompra);
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
      Result := True;
    End
    Else
    Begin
      Result := False;
      MDO.Transac.RollbackRetaining;
    End;
  Except

    Result := False;
  End
End;

// Alex: 04/03/2016 - Função genérica para transformar itens de veículo de entrada de um pedido de venda em nota fiscal de entrada
Function GeraNFEntradaVeiculos(xCodPedVenda: Integer): Boolean;
Var
  xcodigocompra: Integer;
Begin
  Try
    Result := True;
    // Buscamos verificar se já existe um pedido de compra
    MDO.Transac.CommitRetaining;
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' Select pedcompra.cod_pedcomp from pedcompra where (pedcompra.COD_PK_DEV=:CodigoVenda) and (pedcompra.NUMDEV=''OUT'') ');
    MDO.QConsulta.ParamByName('CodigoVenda').AsInteger := xCodPedVenda;
    MDO.QConsulta.Open;
    If MDO.QConsulta.IsEmpty
    Then
    Begin
      // NOVO - Nenhum pedido foi encontrado e deve ser criado
      If GeraNFEntradaVeiculos_Cabecalho(xCodPedVenda, -5) = True Then
        GeraNFEntradaVeiculos_Itens(xCodPedVenda, -5);
    End
    Else
    Begin
      // EDITAR - Um pedido foi encontrado e deve ser editado
      xcodigocompra := MDO.QConsulta.FieldByName('cod_pedcomp').AsInteger;
      If GeraNFEntradaVeiculos_Cabecalho(xCodPedVenda, xcodigocompra) = True Then
        GeraNFEntradaVeiculos_Itens(xCodPedVenda, xcodigocompra);
    End;

  Except
    Result := False;
  End;
End;

{ Procedure Utilizada p/ Abrir o Formulario }
Function AbrirForm(Tipo: TComponentClass; Formulario: TForm; TypeForm: Integer): String;
Begin
  // quando nao passa por essa condição eh pq o formulario esta aberto. Pra isso vah em Project - Options - e remover o formulario do lado esquerdo
  If not Assigned(Formulario)
  Then
  Begin
    Application.CreateForm(Tipo, Formulario);
    If VerifAcessForm(Formulario.Name) = True
    Then
    Begin
      Try
        Case TypeForm Of
          0:
            Begin
              Formulario.Tag := 10; // CADASTRAR
              Formulario.Showmodal;
            End;

          1:
            Begin
              Formulario.Tag := 20; // SELECIONAR
              Formulario.Showmodal;
            End;
        End;
        If FMenu.SelectedForm = True Then // Se o formulario ativo levou o evento click do botão selecionar
          AbrirForm := 'Selected'
        Else
          AbrirForm := 'NotSelected';
      Finally
        If TypeForm <> 3
        Then
        Begin
          Formulario.Release;
          Formulario.Free;
          Formulario := nil;
        End;
      End;
    End
    Else
    Begin
      Mensagem('Acesso ao Formulário Bloqueado', 'O usuário informado no momento do acesso ao sistema, não possui permissão para acessar esta tela!', '', 1, 1, False, 'a');
    End;
  end
  else
  Begin
    If VerifAcessForm(Formulario.Name) = True
    Then
    Begin
      Try
        Case TypeForm Of
          0:
            Begin
              Formulario.Tag := 10; // CADASTRAR
              Formulario.Showmodal;
            End;

          1:
            Begin
              Formulario.Tag := 20; // SELECIONAR
              Formulario.Showmodal;
              If FMenu.SelectedForm = True Then // Se o formulario ativo levou o evento click do botão selecionar
                AbrirForm := 'Selected'
              Else
                AbrirForm := 'NotSelected';
            End;
        End;
      Except
        Application.CreateForm(Tipo, Formulario);
        Formulario.Showmodal;
      End;
    End
    Else
    Begin
      Mensagem('Acesso ao Formulário Bloqueado', 'O usuário informado no momento do acesso ao sistema, não possui permissão para acessar esta tela!', '', 1, 1, False, 'a');
    End;
  End;
End;

// Paulo 11/05/10: Verifica se existe o txt no ftp.
Procedure VerificaArquivo;
var
  LineFtp, dirDowFTP, ArquivoFtp: String;
Begin
  LineFtp := '';
  // dirDowFTP é da onde ele envia o arquivo
  dirDowFTP := '';
  LineFtp := 'C:\MZR\Arquivos\AtualizaBanco\Downloads\Atualiza.txt';
  dirDowFTP := DMMACS.TLoja.FieldByName('DIRUPFTP').AsString;
  ArquivoFtp := 'Atualiza.TXT';

  if (FileExists(LineFtp)) then
    DeleteFile('C:\MZR\Arquivos\AtualizaBanco\Downloads\Atualiza.txt');

  if (not(FileExists(LineFtp))) then
  begin
    with FMenu.IdFTP1 do
      try
        // Conectando ao servidor
        Username := DMMACS.TLoja.FieldByName('USERNAMEFTP').AsString;
        Password := FMenu.Cripto.CriptoHexToText(DMMACS.TLoja.FieldByName('PASSWORDFTP').AsString);
        Host := DMMACS.TLoja.FieldByName('HOSTFTP').AsString;
        Connect;
        // Conectando ao diretorio onde estao os arquivos
        ChangeDir(dirDowFTP);
      except
        MessageBox(0, 'Erro na transferencia dos arquivos, não foi possivel conectar com servidor!', 'Atenção', MB_ICONWARNING or MB_OK);
      end;
    try
      begin
        try
          // Comando para download do arquivo
          // FMenu.IdFTP1.Get(ArquivoFtp, LineFtp);
          FMenu.IdFTP1.Get(ArquivoFtp, LineFtp, True);

        Except
          // Se não encontrar nenhum arquivo no ftp ele vai gerar um script novo

        End;
      end;
    finally
      // Disconecta do servidor
      FMenu.IdFTP1.Disconnect;
      VerificaArquivoVazio;

    end;

  end;
end;

// Paulo 16/05/2010:Função para retornar o tamanho do arquivo
function Extrair_Tamanho_Arquivo(Arquivo: string): Integer;
Begin

  With TFileStream.Create(Arquivo, fmOpenRead or fmShareExclusive) do
    Try
      Result := Size;
    Finally
      Free;
    End;
End;

// Paulo 19/05/2010: Verifica se o arquivo está vazio
Procedure VerificaArquivoVazio;
var
  XArquivo1: String;
  XTamArq: Integer;
begin
  // Retorna se o arquivo esta vazio ou não
  XArquivo1 := ('C:\MZR\Arquivos\AtualizaBanco\Downloads\Atualiza.txt');
  XTamArq := Extrair_Tamanho_Arquivo(XArquivo1);

  // Verifica se está vazio
  if (XTamArq = 0) then
  Begin
    GeraScriptVisualizacao;
  end;
  if (not(XTamArq = 0)) then
  begin
    ReescreveArquivo;
  end;
end;

// Paulo 11/05/2010: Rele o txt em seguida adiciona novas atualizações
Procedure ReescreveArquivo;
var
  XArquivoVelho, XArquivoNovo, XArquivo: TextFile;
  XConteudo1, XArq, XArqNovo, Xtabela, XConteudo, XLinha: String;
  VetorLinhas: array [1 .. 10000] of String;
  XCont, xI: Integer;

begin
  // Abre o arquivo txt
  AssignFile(XArquivo, 'C:\MZR\Arquivos\AtualizaBanco\Downloads\Atualiza.txt');

  Reset(XArquivo);
  xI := 1;
  XCont := 1;
  while not Eof(XArquivo) do
  begin
    // Percorre as linhas do txt
    ReadLN(XArquivo, XLinha);
    Xtabela := '';
    XConteudo := '';

    Xtabela := copy(XLinha, 1, 10);
    if (Xtabela = 'SUBPRODUTO') then
    begin
      XConteudo := AnsiUpperCase(copy(XLinha, 1, 1005));
      // Armazena as linhas em um vetor
      VetorLinhas[xI] := XConteudo;
      xI := xI + 1;
      XCont := XCont + 1;
      ReadLN(XArquivo, XLinha);
      XConteudo := AnsiUpperCase(copy(XLinha, 1, 1005));
      // Armazena as linhas em um vetor
      VetorLinhas[xI] := XConteudo;
      xI := xI + 1;
      XCont := XCont + 1;

    end;
    Xtabela := copy(XLinha, 1, 7);
    if (Xtabela = 'ESTOQUE') then
    begin
      XConteudo := AnsiUpperCase(copy(XLinha, 1, 1002));
      // Armazena as linhas em um vetor
      VetorLinhas[xI] := XConteudo;
      xI := xI + 1;
      XCont := XCont + 1;
    end;

  end;
  CloseFile(XArquivo);
  // Aqui criar um txt com as atualizações novas
  GeraScriptVisualizacao;

  XArq := 'C:\MZR\Arquivos\AtualizaBanco\Upload\Atualiza.txt';
  XArqNovo := 'C:\MZR\Arquivos\AtualizaBanco\Upload\AtualizaAux.txt';

  // Copia o txt atual para outro arquivo temporario
  CopyFile(PChar(XArq), PChar(XArqNovo), True);

  XLinha := '';
  XConteudo1 := '';

  AssignFile(XArquivoNovo, 'C:\MZR\Arquivos\AtualizaBanco\Upload\Atualiza.txt');
  AssignFile(XArquivoVelho, 'C:\MZR\Arquivos\AtualizaBanco\Upload\AtualizaAux.txt');
  Append(XArquivoNovo);
  Append(XArquivoVelho);
  Reset(XArquivoNovo);
  Reset(XArquivoVelho);
  Rewrite(XArquivoNovo);

  // Ler as linhas do arquivo temporario e as copias para um arquivo novo
  while not Eof(XArquivoVelho) do
  begin
    ReadLN(XArquivoVelho, XLinha);
    XConteudo1 := copy(XLinha, 1, 1005);
    Writeln(XArquivoNovo, XConteudo1);

    // quando chegar no final ele adicionará as valores que foram armazenados no vetor
    if Eof(XArquivoVelho) then
    begin
      for xI := 1 to XCont do
      begin
        XLinha := VetorLinhas[xI];
        Writeln(XArquivoNovo, XLinha);
        XLinha := '';
      end;

    end
  end;

  // fecha os dois arquivos e depois apaga o arquivo temporario
  CloseFile(XArquivoNovo);
  CloseFile(XArquivoVelho);
  DeleteFile('C:\MZR\Arquivos\AtualizaBanco\Upload\AtualizaAux.txt');
end;

// Paulo 16/05/2010:Substitui o arquivo atual no ftp por um txt em branco
Procedure ZeraArquivo;
var
  LineFtp2, XArq, XArqNovo, LineFtp, dirDowFTP, ArquivoFtp: String;
begin
  // é usado o diretório upload
  LineFtp := '';
  dirDowFTP := '';
  LineFtp := 'C:\MZR\Arquivos\AtualizaBanco\Upload\Atualiza.txt';
  dirDowFTP := DMMACS.TLoja.FieldByName('DIRDOWFTP').AsString;
  ArquivoFtp := 'Atualiza.TXT';

  // deleta o arquivo atual e cria um arquivo vazio
  DeleteFile('C:\MZR\Arquivos\AtualizaBanco\Upload\Atualiza.txt');
  FileClose(FileCreate('C:\MZR\Arquivos\AtualizaBanco\Upload\Atualiza.txt'));

  with FMenu.IdFTP1 do
    try
      // Conectando ao servidor
      Username := DMMACS.TLoja.FieldByName('USERNAMEFTP').AsString;
      Password := FMenu.Cripto.CriptoHexToText(DMMACS.TLoja.FieldByName('PASSWORDFTP').AsString);
      Host := DMMACS.TLoja.FieldByName('HOSTFTP').AsString;
      Connect;
      // Conectando ao diretorio onde estao os arquivos
      ChangeDir(dirDowFTP);
    except
      MessageBox(0, 'Erro na transferencia dos arquivos, não foi possivel conectar com servidor!', 'Atenção', MB_ICONWARNING or MB_OK);
    end;
  try
    begin
      try
        // Comando para upload arquivo
        FMenu.IdFTP1.Delete(ArquivoFtp);
        FMenu.IdFTP1.Put(LineFtp, ArquivoFtp);

      Except
      End;
    end;
  finally
    // Disconecta do servidor
    FMenu.IdFTP1.Disconnect;
  end;

end;

// DJ 05/03/2010: Gera Script para atualizacao de banco de dados e salva em LOCAL
Procedure GeraScriptVisualizacao;
var
  xTexto: TextFile;
  XLinha: String;
  XLinha1: String;
  XLinha2: String;
Begin
  // DJ 05/03/2010: Seleciona dados da tabela CST
  SelecArqScriptTot('cst');
  // Apaga o arquivo atualiza
  If FileExists('C:\MZR\Arquivos\AtualizaBanco\Upload\Atualiza.TXT') then
    DeleteFile('C:\MZR\Arquivos\AtualizaBanco\Upload\Atualiza.TXT');

  // Cria arquivo txt para Script de Atualizacao
  AssignFile(xTexto, 'C:\MZR\Arquivos\AtualizaBanco\Upload\Atualiza.TXT');
{$I-}
  Reset(xTexto);
{$I+}
  if IOResult = 0 then
    Append(xTexto)
  else
    Rewrite(xTexto);
  DMESTOQUE.Alx.First;
  While Not DMESTOQUE.Alx.Eof do
  Begin
    XLinha := ConcatEspacoDir('CST', 5);
    XLinha := XLinha + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_CST').AsInteger), 7);
    XLinha := XLinha + ConcatEspacoDir((DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString), 101);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('COD_SIT_TRIB').AsString, 11);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('INDICEECF').AsString, 3);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('SUBSTITUICAO').AsString, 2);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('REDUCAO').AsString, 2);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('VENDA').AsString, 2);
    DMESTOQUE.Alx.Next;
    Writeln(xTexto, XLinha);
    XLinha := '';
  End;

  // Seleciona arquivos da tabela unidade
  SelecArqScriptTot('unidade');
  DMESTOQUE.Alx.First;
  While Not DMESTOQUE.Alx.Eof do
  Begin
    XLinha := ConcatEspacoDir('UNIDADE', 9);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('ARREDONDAR').AsString, 2);
    XLinha := XLinha + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_UNIDADE').AsInteger), 7);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('DESC_UNID').AsString, 30);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('SIGLA_UNID').AsString, 4);
    DMESTOQUE.Alx.Next;
    Writeln(xTexto, XLinha);
    XLinha := '';
  End;

  // Seleciona arquivos da tabela subgrupoprod
  SelecArqScriptTot('subgrupoprod');
  DMESTOQUE.Alx.First;
  While Not DMESTOQUE.Alx.Eof do
  Begin
    XLinha := ConcatEspacoDir('SUBGRUPOPROD', 14);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('COD_INTERNO').AsString, 12);
    XLinha := XLinha + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_SUBGRUPOPROD').AsInteger), 7);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, 102);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('TIPO').AsString, 2);
    DMESTOQUE.Alx.Next;
    Writeln(xTexto, XLinha);
    XLinha := '';
  End;

  // Seleciona arquivos da tabela grupoprod
  SelecArqScriptTot('grupoprod');
  DMESTOQUE.Alx.First;
  While Not DMESTOQUE.Alx.Eof do
  Begin
    XLinha := ConcatEspacoDir('GRUPOPROD', 11);
    XLinha := XLinha + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_GRUPOPROD').AsInteger), 7);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('COD_INTERNO').AsString, 13);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, 101);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('TIPO').AsString, 3);
    DMESTOQUE.Alx.Next;
    Writeln(xTexto, XLinha);
    XLinha := '';
  End;

  // Seleciona arquivos da tabela produto
  SelecArqScriptTot('produto');
  DMESTOQUE.Alx.First;
  While Not DMESTOQUE.Alx.Eof do
  Begin
    PreparaProduto;
    XLinha := ConcatEspacoDir('PRODUTO', 9);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('APLICACAO').AsString, 102);
    XLinha := XLinha + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_CST').AsInteger), 7);
    XLinha := XLinha + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_GRUPOPROD').AsInteger), 7);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('COD_INTERNO').AsString, 12);
    XLinha := XLinha + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_LOJA').AsInteger), 7);
    XLinha := XLinha + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_PRODUTO').AsInteger), 7);
    XLinha := XLinha + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_SUBGRUPOPROD').AsInteger), 7);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('COMPPRAZO').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('COMPVISTA').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('CUSTOVENDA').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, 102);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('QTDCOMP').AsFloat), 7);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('QTDVEND').AsFloat), 7);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VENDPRAZO').AsFloat), 7);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VENDVISTA').AsFloat), 7);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx2.FieldByName('GRUPOPROD').AsString, 100);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx2.FieldByName('SUBGRUPOPROD').AsString, 100);
    DMESTOQUE.Alx.Next;
    Writeln(xTexto, XLinha);
    XLinha := '';
  End;

  // Paulo 24/05/2010: dividi os dados de subproduto em duas linhas
  // Seleciona arquivos da tabela subproduto
  SelecArqScriptTot('subproduto');
  DMESTOQUE.Alx.First;
  While Not DMESTOQUE.Alx.Eof do
  Begin
    PreparaSubproduto;
    XLinha1 := ConcatEspacoDir('SUBPRODUTO', 12);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('ALTURA').AsString, 12);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('ANVISA').AsString, 27);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('ATESTGAR').AsString, 12);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('ATESTVAL').AsString, 27);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('ATIVO').AsString, 3);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('BALANCA').AsString, 3);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('CLASSIFICACAO').AsString, 32);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('CODBARRA').AsString, 32);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('CODCOMPOSTO').AsString, 22);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('CODEAN1').AsString, 17);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('CODPRODFABR').AsString, 27);
    XLinha1 := XLinha1 + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_CST').AsInteger), 7);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('COD_INTERNO').AsString, 12);
    XLinha1 := XLinha1 + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_PRODUTO').AsInteger), 7);
    XLinha1 := XLinha1 + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_SUBPRODUTO').AsInteger), 7);
    XLinha1 := XLinha1 + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_UNIDCOMPRA').AsInteger), 7);
    XLinha1 := XLinha1 + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_UNIDVENDA').AsInteger), 7);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('COMPOSICAO').AsString, 42);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('CONTRINT').AsString, 17);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('COR').AsString, 17);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx2.FieldByName('DESCRICAO').AsString, 100);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx2.FieldByName('COD_SIT_TRIB').AsString, 6);
    XLinha1 := XLinha1 + ConcatEspacoDir(DMESTOQUE.Alx2.FieldByName('INDICEECF').AsString, 6);

    Writeln(xTexto, XLinha1);
    XLinha := '';

    XLinha2 := XLinha2 + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('DENSIDADE').AsInteger), 7);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('DESCCUPOM').AsString, 62);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, 62);
    XLinha2 := XLinha2 + ConcatEspacoDir(DateTimeToStr(DMESTOQUE.Alx.FieldByName('DTCAD').AsDateTime), 12);
    XLinha2 := XLinha2 + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('EMBPROD').AsFloat), 12);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('ESPECIFICACAO').AsString, 102);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('FABRICANTE').AsString, 62);
    XLinha2 := XLinha2 + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('GERMI').AsFloat), 12);
    XLinha2 := XLinha2 + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('IPIPROD').AsFloat), 7);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('LARGURA').AsString, 12);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('LOCALESTANTE').AsString, 12);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('LOTE').AsString, 12);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('MARCA').AsString, 42);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('MARK').AsString, 3);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('MINSAUDE').AsString, 27);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('MOTIVO').AsString, 42);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('NCM').AsString, 12);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('OBSFISCAL').AsString, 62);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('PENEIRA').AsString, 12);
    XLinha2 := XLinha2 + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('PESOBRUTO').AsFloat), 7);
    XLinha2 := XLinha2 + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('PESOLIQ').AsFloat), 7);
    XLinha2 := XLinha2 + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('PUREZA').AsFloat), 12);
    XLinha2 := XLinha2 + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('QTDATC').AsFloat), 11);
    XLinha2 := XLinha2 + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('QUANTGARANTIA').AsFloat), 7);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('SAFRA').AsString, 12);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('TIPOGARANTIA').AsString, 12);
    XLinha2 := XLinha2 + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('USOCONSUMO').AsString, 3);

    DMESTOQUE.Alx.Next;
    Writeln(xTexto, XLinha2);
    XLinha2 := '';
  End;

  // Seleciona arquivos da tabela estoque
  SelecArqScriptTot('estoque');
  DMESTOQUE.Alx.First;
  While Not DMESTOQUE.Alx.Eof do
  Begin
    XLinha := ConcatEspacoDir('ESTOQUE', 9);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('ACRECIMO').AsFloat), 5);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('ATUALIZAR').AsString, 3);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('AVPPROAT').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('AVPPROVAR').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', (DMESTOQUE.Alx.FieldByName('AVVPROAT').AsFloat)), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', (DMESTOQUE.Alx.FieldByName('AVVPROVAR').AsFloat)), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', (DMESTOQUE.Alx.FieldByName('BONIFICACAO').AsFloat)), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('CLNC').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsInteger), 7);
    XLinha := XLinha + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_LOJA').AsInteger), 7);
    XLinha := XLinha + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_SUBPROD').AsInteger), 7);
    XLinha := XLinha + ConcatEspacoDir(IntToStr(DMESTOQUE.Alx.FieldByName('COD_USUARIOALT').AsInteger), 7);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('COEFDIV').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('COFINS').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('CONTAGEM').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('CONTSOC').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('CVPPROAT').AsFloat), 7);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('CVPPROVAR').AsFloat), 7);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('CVVPROAT').AsFloat), 7);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('CVVPROVAR').AsFloat), 7);
    XLinha := XLinha + ConcatEspacoDir(DateTimeToStr(DMESTOQUE.Alx.FieldByName('DATAATU').AsDateTime), 12);
    XLinha := XLinha + ConcatEspacoDir(DateTimeToStr(DMESTOQUE.Alx.FieldByName('DATAOFERTA').AsDateTime), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('DESCONTO').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(DateTimeToStr(DMESTOQUE.Alx.FieldByName('DTCAD').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('ESTANTCONT').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('ESTCALC').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('ESTFISICO').AsFloat), 10);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('ESTINI').AsFloat), 10);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('ESTMAX').AsFloat), 10);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('ESTMIN').AsFloat), 10);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('ESTPED').AsFloat), 10);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('ESTRESERV').AsFloat), 10);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('ESTSALDO').AsFloat), 10);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('ESTSIMULADO').AsFloat), 10);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('FRETE').AsFloat), 10);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('GERACOMIS').AsFloat), 10);
    XLinha := XLinha + ConcatEspacoDir(TimeToStr(DMESTOQUE.Alx.FieldByName('HORAATU').AsDateTime), 10);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('ICMS').AsFloat), 10);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('IMPEXP').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('IMPREND').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('INDICE').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('IPI_VND').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('LUCRATIVIDADE').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('MARGEMSEG').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('MEDIABASEICMST').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('MEDIAVLRICMST').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('MOD').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('MVA').AsFloat), 5);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('OUTROS').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('PERCMARGSEG').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('PIS').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('PMC').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('PRECOOFERTA').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('QUANT2').AsFloat), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('REDUCBASE').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(DateTimeToStr(DMESTOQUE.Alx.FieldByName('ULTCOMPRA').AsDateTime), 12);
    XLinha := XLinha + ConcatEspacoDir(DateTimeToStr(DMESTOQUE.Alx.FieldByName('ULTVENDA').AsDateTime), 12);
    {
      XLinha:=XLinha+ConcatEspacoDir(FormatFloat('0.00',DMESTOQUE.Alx.FieldByName('ULTVLR_VNDPVAR').AsFloat),16);
      XLinha:=XLinha+ConcatEspacoDir(FormatFloat('0.00',DMESTOQUE.Alx.FieldByName('ULTVLR_VNDVATAC').AsFloat),16);
      XLinha:=XLinha+ConcatEspacoDir(FormatFloat('0.00',DMESTOQUE.Alx.FieldByName('ULTVLR_VNDVVAR').AsFloat),16);
      XLinha:=XLinha+ConcatEspacoDir(FormatFloat('0.00',DMESTOQUE.Alx.FieldByName('ULTVLR_VPATAC').AsFloat),16);
    }
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VALCUSDESP').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VALCUSTO').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VALOREST').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VALREP').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VALUNIT').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(DateTimeToStr(DMESTOQUE.Alx.FieldByName('VENCIMENTOOFERTA').AsDateTime), 12);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VENDATAP').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VENDATAV').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VENDVARP').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VENDVARV').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VLRBONIFIC').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VLRCOMPSD').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VLRUNITCOMP').AsFloat), 16);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('CONTRINT').AsString, 17);
    XLinha := XLinha + ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, 62);
    DMESTOQUE.Alx.Next;
    Writeln(xTexto, XLinha);
  End;

  // Salva relatorio .txt para script
  CloseFile(xTexto);
  DMESTOQUE.Alx3.Close;
  DMESTOQUE.Alx3.SQL.Clear;
  DMESTOQUE.Alx3.SQL.Add('update estoque set ATUALIZAR = ' + #13 + '0' + #13);
  DMESTOQUE.Alx3.SQL.Text;
  DMESTOQUE.Alx3.ExecSQL;
  // DMESTOQUE.Alx3.Post;
  DMESTOQUE.TransacEstoque.CommitRetaining;
  DMESTOQUE.Alx3.Open;

  // DJ 05/04/2010: Atualiza data da ultima alteracao
  DMMACS.TLoja.Edit;
  DMMACS.TLoja.FieldByName('DATAFTP').AsDateTime := Date;
  DMMACS.TLoja.Post;
  DMMACS.Transaction.CommitRetaining;
End;

// DJ 06/04/2010: Seleciona arquivos para subproduto
Procedure PreparaSubproduto;
Begin
  DMESTOQUE.Alx2.Close;
  DMESTOQUE.Alx2.SQL.Clear;
  DMESTOQUE.Alx2.SQL.Add('select cst.cod_sit_trib,produto.descricao,cst.indiceecf');
  DMESTOQUE.Alx2.SQL.Add(' from subproduto left join cst on subproduto.cod_cst = cst.cod_cst ');
  DMESTOQUE.Alx2.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
  DMESTOQUE.Alx2.SQL.Add(' where subproduto.cod_subproduto = :s');
  DMESTOQUE.Alx2.ParamByName('S').AsInteger := DMESTOQUE.Alx.FieldByName('COD_SUBPRODUTO').AsInteger;
  DMESTOQUE.Alx2.Open;
End;

// DJ 06/04/2010: Seleciona arquivos para produto
Procedure PreparaProduto;
Begin
  DMESTOQUE.Alx2.Close;
  DMESTOQUE.Alx2.SQL.Clear;
  DMESTOQUE.Alx2.SQL.Add('select grupoprod.descricao as grupoprod, subgrupoprod.descricao as subgrupoprod from produto ');
  DMESTOQUE.Alx2.SQL.Add(' join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod');
  DMESTOQUE.Alx2.SQL.Add(' join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');
  DMESTOQUE.Alx2.SQL.Add(' where produto.cod_produto = :c');
  DMESTOQUE.Alx2.ParamByName('C').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PRODUTO').AsInteger;
  DMESTOQUE.Alx2.Open;
End;

// DJ 05/03/2010: Seleciona dados das tabelas para gerar script
Procedure SelecArqScriptTot(XTable: String);
var
  XTeste: String;
Begin
  XTeste := '1';
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  DMESTOQUE.Alx.SQL.Add('Select * from ' + XTable);
  if (XTable = 'subproduto') Then
    DMESTOQUE.Alx.SQL.Add(' right join estoque on subproduto.cod_subproduto = estoque.cod_subprod');
  if (XTable = 'estoque') Then
    DMESTOQUE.Alx.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
  if ((XTable = 'estoque') or (XTable = 'subproduto')) Then
    DMESTOQUE.Alx.SQL.Add(' where estoque.atualizar = ' + #39 + '1' + #39);
  DMESTOQUE.Alx.SQL.Text;
  DMESTOQUE.Alx.Open;
End;

// Dj 08/03/2010: Transfere arquivos via ftp
procedure TransferenciaFtp;
var
  DirecDownFtp, DirecUpFtp, ArquivoFtp, LineFtp, dirDowFTP, dirUpFTP, RepliFtp, Line2Ftp, NameFtp: String;

Begin
  if (FileExists('C:\MZR\Arquivos\AtualizaBanco\sincro.txt')) Then
  Begin
    // Zera valores antes de começar o upload(download)via ftp
    DirecDownFtp := '';
    NameFtp := '';
    LineFtp := '';
    dirDowFTP := '';
    dirUpFTP := '';
    RepliFtp := '';
    // Pasta onde sera manipulado o arquivo no disco rigido
    DirecDownFtp := 'C:\MZR\Arquivos\AtualizaBanco\Downloads';
    DirecUpFtp := 'C:\MZR\Arquivos\AtualizaBanco\Upload';
    // Pasta onde sera manipulado o arquivo no ftp
    dirDowFTP := DMMACS.TLoja.FieldByName('DIRDOWFTP').AsString;
    dirUpFTP := DMMACS.TLoja.FieldByName('DIRUPFTP').AsString;
    // Arquivo para download
    ArquivoFtp := 'Atualiza.TXT';

    // Se nao existe pasta fisica de destino dos arquivos, cria pasta
    if not DirectoryExists('C:\MZR\Arquivos\AtualizaBanco\Downloads\') then
      CreateDir('C:\MZR\Arquivos\AtualizaBanco\Downloads\');
    if not DirectoryExists('C:\MZR\Arquivos\AtualizaBanco\Upload\') then
      CreateDir('C:\MZR\Arquivos\AtualizaBanco\Upload\');

    // (Download de arquivo)
    if (DMMACS.TLoja.FieldByName('RECEBEARQFTP').AsString = '1') Then
    Begin
      // Caminho onde sera gravado o arquivo
      LineFtp := 'C:\MZR\Arquivos\AtualizaBanco\Downloads\Atualiza.txt';
      // Se o diretorio nao existir
      if not(DirectoryExists(DirecDownFtp)) Then
      Begin
        ShowMessage('ERRO 217 ' + #13 + ' CONTACTE O ADMINISTRADOR DO SISTEMA');
        Abort;
      End;
      // Se o arquivo ja existe, substitui
      if (FileExists(LineFtp)) then
        DeleteFile('C:\MZR\Arquivos\AtualizaBanco\Downloads\Atualiza.txt');

      if not(FileExists(LineFtp)) then
      Begin
        with FMenu.IdFTP1 do
          try
            // Conectando ao servidor
            Username := DMMACS.TLoja.FieldByName('USERNAMEFTP').AsString;
            Password := FMenu.Cripto.CriptoHexToText(DMMACS.TLoja.FieldByName('PASSWORDFTP').AsString);
            Host := DMMACS.TLoja.FieldByName('HOSTFTP').AsString;
            Connect;
            // Conectando ao diretorio onde estao os arquivos
            ChangeDir(dirDowFTP);
          except
            MessageBox(0, 'Erro na transferencia dos arquivos, não foi possivel conectar com servidor!', 'Atenção', MB_ICONWARNING or MB_OK);
          end;
        try
          begin
            try
              // Comando para download do arquivo
              FMenu.IdFTP1.Get(ArquivoFtp, LineFtp, False);
              // DJ 17/03/2010: Procedimento para escrever os dados no banco
              AtualizaBanco;
              // DJ 07/04/2010: Rele o arquivo texto para evitar problemas com conexão
              // AtualizaBanco;
              MessageBox(0, 'Informações atualizadas com sucesso!', 'Atenção', MB_ICONWARNING or MB_OK);

            Except
              // Em caso de erros na transferencia do arquivo, tentar transferir
              // novamente pode ser apenas um problema de conexao com o servidor
              // MessageBox(0, 'Erro na transferencia dos arquivos, não foi possivel fazer download de arquivos!', 'Atenção!', MB_ICONWARNING or MB_OK);
            End;
          end;
        finally
          // Disconecta do servidor
          FMenu.IdFTP1.Disconnect;
          ZeraArquivo;
        end;

      End;
    End;

    if (DMMACS.TLoja.FieldByName('CRIAARQFTP').AsString = '1') Then
    Begin
      if (DMMACS.TLoja.FieldByName('DIRUPFTP').AsString <> '') Then

        // Paulo 11/05/2010: Ele vai verificar se existe ou não o txt no ftp
        VerificaArquivo;

      // Upload de arquivo
      // Diretorio onde esta o arquivo para upload
      Line2Ftp := ('C:\MZR\Arquivos\AtualizaBanco\Upload\Atualiza.txt');

      with FMenu.IdFTP1 Do
        Try
          // Dados de acesso ao servidor
          Username := DMMACS.TLoja.FieldByName('USERNAMEFTP').AsString;
          Password := FMenu.Cripto.CriptoHexToText(DMMACS.TLoja.FieldByName('PASSWORDFTP').AsString);
          Host := DMMACS.TLoja.FieldByName('HOSTFTP').AsString;
          // Conecta com o servidor
          Connect;
          // Procura diretorio a manipular
          ChangeDir(dirUpFTP);
        Except
          MessageBox(0, 'Erro na transferencia dos arquivos, não conecta com servidor!', 'Atenção!', MB_ICONWARNING or MB_OK);
        End;
      Try
        // Comando de upload
        FMenu.IdFTP1.Delete(ArquivoFtp);
        FMenu.IdFTP1.Put(Line2Ftp, ArquivoFtp, False);
        // FMenu.IdFTP1.PU Get(ArquivoFtp, LineFtp, false);
        MessageBox(0, 'Arquivos criados com sucesso!', 'Atenção!', MB_ICONWARNING or MB_OK);

        // Ajusta data para da ultima transferencia
        DMMACS.TLoja.Edit;
        DMMACS.TLoja.FieldByName('DATAFTP').AsDateTime := Date;
        DMMACS.TLoja.Post;
        DMMACS.Transaction.CommitRetaining;
      Except
        // Em caso de erros na transferencia do arquivo, tentar transferir
        // novamente. Pode ser apenas um problema de conexao com o servidor
        MessageBox(0, 'Erro na transferencia dos arquivos, não foi possivel enviar arquivos!', 'Atenção!', MB_ICONWARNING or MB_OK);
      End;

      // Desconecta do servidor
      FMenu.IdFTP1.Disconnect;

    End;

    { DJ 09/03/2010: DOCUMENTAÇÃO DA FUNÇÃO TRANSFERENCIA FTP
      SUMARIO:
      C:\MZR\Arquivos\AtualizaBanco\Downloads\ = Arquivos baixados do ftp
      C:\MZR\Arquivos\AtualizaBanco\Upload\ = Arquivos para enviar ao ftp
      ftp.dominio.com\XDirUpFTP = Diretório no ftp onde serao enviados os arquivos
      ftp.dominio.com\XDirDowFTP = Diretório no ftp de onde serao baixados os arquivos
      BANCO DE DADOS:
      TLOJA.DirDowFTP = Diretorio onde esta o arquivo para download no FTP
      TLOJA.DirUpFTP = Diretorio para onde sera enviado o arquivo FTP
      TLOJA.HostFTP = Endereço FTP
      TLOJA.PasswordFTP = Senha criptografada FTP
      TLOJA.UsernameFTP = Usuario FTP
      TLOJA.AtualizaBanco = Se = 1 entao atualiza banco
      OBS:
      -XDirDowFTP, XDirUpFTP e HostFTP(endereço FTP) tem seus valores definidos na aba
      SINCRONISMO no FConfigLoja.
      -XDirDowFTP e XDirUpFTP equivalem as variáveis XDirDowFTP e XDirUpFTP que são
      passadas no ConfigLoja,devem ser mudados cada vez que for implementado em alguma loja
      que necessite de atualização ou quando a loja que ja o utiliza muda seu ftp;
      -Os componentes que trabalham com a transferencia serão FMenu.IdFTP1 e FMenu.IdAntiFreeze1;
      -O fato de o FTP se conectar e desconectar duas vezes na funcao não eh redundante, eh para ter
      controle no caso de erros e não acabar ficando conectado após o processo;
      -Pode dar erro por culpa de problemas na conexão.
      -Nome dos arquivos e diretorios fisicos dos arquivos não necessitam ser mudados.
      -Para funcionar direito o sistema por segurança é bom criar o diretório
      C:\MZR\Arquivos\AtualizaBanco\ e dentro dele os diretorios DOWNLOADS e UPLOAD(Dosi primeiros enrdereços do sumário),
      no começo da função ele verifica se existe os diretórios e os cria mas é somente por
      segurança caso o usuario apague os tais, mas pode ocorrer erros na função por isso eh
      bom eles jah estarem criados.
      -Download e upload tem dois TRY cada um o primeiro trata de problemas na conexao e o segundo nas transferencias.

      Ex:
      *Dominio FTP = ftp.dominio.com
      *XDirUpFTP ou XDirDowFTP = Diretorio onde vao os arquivos ftp
    }
  End;
End;

// DJ 10/03/2010: Seleciona dados das tabelas comparando seus valores
Procedure ComparaTables(XTable: String; Xcampo: String; XValorParam: String);
var
  XTeste: String;
Begin
  try

    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('Select * from ' + XTable);
    DMESTOQUE.Alx1.SQL.Add(' where ' + XTable + '.' + Xcampo + ' = :parametro');
    DMESTOQUE.Alx1.ParamByName('PARAMETRO').AsString := XValorParam;
    DMESTOQUE.Alx1.Open;

  except

  end;

End;

// Paulo 19/05/2010: Seleciona dados para comparar valores da tabela cst
Procedure ComparaTables1(XTable: String; Xcampo: String; XValorParam: String; XCampo1: String; XValor1: String);
var
  XTeste: String;
Begin

  try

    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('Select * from ' + XTable);
    DMESTOQUE.Alx1.SQL.Add(' where ' + XTable + '.' + Xcampo + ' = :parametro ');
    DMESTOQUE.Alx1.SQL.Add(' and ' + XTable + '.' + XCampo1 + ' = :parametro1 ');
    DMESTOQUE.Alx1.ParamByName('PARAMETRO').AsString := XValorParam;
    DMESTOQUE.Alx1.ParamByName('PARAMETRO1').AsString := XValor1;
    DMESTOQUE.Alx1.Open;

  except

  end;

End;

// DJ 15/03/2010:Encontra valores para chaves primarias
Procedure EncontraChavePrim(XTable: String; Xcampo: String);
var
  XControl: Integer;
Begin
  DMMACS.TCodigo.Close;
  DMMACS.TCodigo.SQL.Clear;
  DMMACS.TCodigo.SQL.Add('select * from codigo');
  DMMACS.TCodigo.Open;
  XControl := 0;
  // DJ -  Vai testando se existe codigo para o campo necessario, se exite var incrementando ate achar um valor valido
  While (XControl <> 1) do
  Begin
    DMESTOQUE.Alx1.Close;
    DMESTOQUE.Alx1.SQL.Clear;
    DMESTOQUE.Alx1.SQL.Add('Select * from ' + XTable);
    DMESTOQUE.Alx1.SQL.Add(' where ' + XTable + '.' + Xcampo + ' = :parametro');
    DMESTOQUE.Alx1.ParamByName('PARAMETRO').AsInteger := DMMACS.TCodigo.FieldByName(Xcampo).AsInteger;
    DMESTOQUE.Alx1.Open;
    if (not(DMESTOQUE.Alx1.IsEmpty)) Then
    Begin
      XControl := 0;
      DMMACS.TCodigo.Edit;
      DMMACS.TCodigo.FieldByName(Xcampo).AsInteger := DMMACS.TCodigo.FieldByName(Xcampo).AsInteger + 1;
      DMMACS.TCodigo.Post;
      DMMACS.Transaction.CommitRetaining;
    End
    Else
      XControl := 1;
  End;
End;

// DJ 10/03/2010: Procedimento para atualizar banco de dados
Procedure AtualizaBanco;
var
  xTexto: TextFile;
  XValor1, XLinha, Xcampo, XValor, XTable, XControleEst, XCST, XProduto, XGRUPO, XSUBGRUPO, XECF: String;
  XCodProd, xAux: Integer;
Begin
  // DJ - Abre o arquivo de texto
  AssignFile(xTexto, 'C:\MZR\Arquivos\AtualizaBanco\Downloads\Atualiza.TXT');
  Reset(xTexto);

  // Percorre as linhas do arquivo
  While Not Eof(xTexto) do
  Begin
    ReadLN(xTexto, XLinha);
    XTable := '';
    XValor := '';
    XValor1 := '';

    // Testes e atualizacoes de CST
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    XTable := copy(XLinha, 1, 3);
    XValor := AnsiUpperCase(copy(XLinha, 114, 10));
    XValor1 := AnsiUpperCase(copy(XLinha, 125, 3));
    IF (XTable = 'CST') Then
    Begin
      ComparaTables1('CST', 'COD_SIT_TRIB', Trim(XValor), 'INDICEECF', Trim(XValor1));
      // Se arquivo ja existe entao insere no banco senao update(atualiza)
      if ((XTable = 'CST') and (DMESTOQUE.Alx1.IsEmpty)) Then
      begin
        DMESTOQUE.Alx.SQL.Add('insert into cst(COD_CST,DESCRICAO,COD_SIT_TRIB,INDICEECF,SUBSTITUICAO,REDUCAO,VENDA)');
        DMESTOQUE.Alx.SQL.Add(' values(:COD_CST,:DESCRICAO,:COD_SIT_TRIB,:INDICEECF,:SUBSTITUICAO,:REDUCAO,:VENDA)');
        EncontraChavePrim('CST', 'COD_CST');
        DMESTOQUE.Alx.ParamByName('COD_CST').AsInteger := DMMACS.TCodigo.FieldByName('cod_cst').AsInteger;
      End
      Else
      Begin
        if ((XTable = 'CST') and (not(DMESTOQUE.Alx1.IsEmpty))) Then
        begin
          DMESTOQUE.Alx.SQL.Add('update cst set DESCRICAO = :DESCRICAO, COD_SIT_TRIB = :COD_SIT_TRIB,');
          DMESTOQUE.Alx.SQL.Add('INDICEECF = :INDICEECF, SUBSTITUICAO = :SUBSTITUICAO, REDUCAO = :REDUCAO, VENDA = :VENDA ');
          DMESTOQUE.Alx.SQL.Add(' where cst.cod_sit_trib = :COD_SIT_TRIB');
          DMESTOQUE.Alx.SQL.Add(' AND cst.indiceecf = :INDICEECF');
        End;
      End;
      DMESTOQUE.Alx.ParamByName('DESCRICAO').AsString := AnsiUpperCase(Trim(copy(XLinha, 13, 101)));
      DMESTOQUE.Alx.ParamByName('COD_SIT_TRIB').AsString := Trim(copy(XLinha, 114, 11));
      DMESTOQUE.Alx.ParamByName('INDICEECF').AsString := Trim(copy(XLinha, 125, 3));
      DMESTOQUE.Alx.ParamByName('SUBSTITUICAO').AsString := Trim(copy(XLinha, 128, 2));
      DMESTOQUE.Alx.ParamByName('REDUCAO').AsString := Trim(copy(XLinha, 130, 2));
      DMESTOQUE.Alx.ParamByName('VENDA').AsString := Trim(copy(XLinha, 132, 2));
    End;

    // Zera valores de controle
    XTable := '';
    XValor := '';

    // Testes e atualizacoes de unidade
    XTable := copy(XLinha, 1, 7);
    XValor := AnsiUpperCase(copy(XLinha, 49, 4));
    if (XTable = 'UNIDADE') Then
    Begin
      ComparaTables('UNIDADE', 'SIGLA_UNID', Trim(XValor));
      if ((XTable = 'UNIDADE') and (DMESTOQUE.Alx1.IsEmpty)) Then
      begin
        DMESTOQUE.Alx.SQL.Add('insert into Unidade (ARREDONDAR,COD_UNIDADE,DESC_UNID,SIGLA_UNID)');
        DMESTOQUE.Alx.SQL.Add(' values(:ARREDONDAR,:COD_UNIDADE,:DESC_UNIDADE,:SIGLA_UNID)');
        DMESTOQUE.Alx.ParamByName('COD_UNIDADE').AsInteger := StrToInt(Trim(copy(XLinha, 12, 7)));
        EncontraChavePrim('UNIDADE', 'COD_UNIDADE');
        DMESTOQUE.Alx.ParamByName('COD_UNIDADE').AsInteger := DMMACS.TCodigo.FieldByName('COD_UNIDADE').AsInteger;
      End
      Else
      Begin
        if ((XTable = 'UNIDADE') and (not(DMESTOQUE.Alx1.IsEmpty))) Then
        begin
          DMESTOQUE.Alx.SQL.Add('update Unidade set ARREDONDAR = :ARREDONDAR, DESC_UNID = :DESC_UNIDADE,');
          DMESTOQUE.Alx.SQL.Add('SIGLA_UNID = :SIGLA_UNID where UNIDADE.SIGLA_UNID = :SIGLA_UNID');
        End;
      End;
      DMESTOQUE.Alx.ParamByName('ARREDONDAR').AsString := Trim(copy(XLinha, 10, 2));
      DMESTOQUE.Alx.ParamByName('DESC_UNIDADE').AsString := AnsiUpperCase(Trim(copy(XLinha, 19, 30)));
      DMESTOQUE.Alx.ParamByName('SIGLA_UNID').AsString := Trim(copy(XLinha, 49, 4));
    End;

    XTable := '';
    XValor := '';

    // Testes e atualizacoes de subgrupoprod
    XTable := copy(XLinha, 1, 12);
    XValor := AnsiUpperCase(copy(XLinha, 34, 102));
    if (XTable = 'SUBGRUPOPROD') Then
    Begin
      ComparaTables('SUBGRUPOPROD', 'DESCRICAO', Trim(XValor));
      if ((XTable = 'SUBGRUPOPROD') and (DMESTOQUE.Alx1.IsEmpty)) Then
      begin
        DMESTOQUE.Alx.SQL.Add('insert into SUBGRUPOPROD(COD_INTERNO,COD_SUBGRUPOPROD,DESCRICAO,TIPO)');
        DMESTOQUE.Alx.SQL.Add(' values(:COD_INTERNO,:COD_SUBGRUPOPROD,:DESCRICAO,:TIPO)');
        DMESTOQUE.Alx.ParamByName('COD_SUBGRUPOPROD').AsInteger := StrToInt(Trim(copy(XLinha, 27, 7)));
        EncontraChavePrim('SUBGRUPOPROD', 'COD_SUBGRUPOPROD');
        DMESTOQUE.Alx.ParamByName('COD_SUBGRUPOPROD').AsInteger := DMMACS.TCodigo.FieldByName('COD_SUBGRUPOPROD').AsInteger;
      End
      Else
      Begin
        if ((XTable = 'SUBGRUPOPROD') and (not(DMESTOQUE.Alx1.IsEmpty))) Then
        begin
          DMESTOQUE.Alx.SQL.Add('update SUBGRUPOPROD set COD_INTERNO = :COD_INTERNO, DESCRICAO = :DESCRICAO,');
          DMESTOQUE.Alx.SQL.Add('TIPO = :TIPO where SUBGRUPOPROD.DESCRICAO = :DESCRICAO');
        End;
      End;
      DMESTOQUE.Alx.ParamByName('COD_INTERNO').AsString := Trim(copy(XLinha, 15, 12));
      DMESTOQUE.Alx.ParamByName('DESCRICAO').AsString := AnsiUpperCase(Trim(copy(XLinha, 34, 102)));
      DMESTOQUE.Alx.ParamByName('TIPO').AsString := Trim(copy(XLinha, 136, 2));
    End;

    XTable := '';
    XValor := '';

    // Testes e atualizacoes de grupoprod
    XTable := copy(XLinha, 1, 9);
    XValor := AnsiUpperCase(copy(XLinha, 32, 101));
    if (XTable = 'GRUPOPROD') Then
    Begin
      ComparaTables('GRUPOPROD', 'DESCRICAO', Trim(XValor));
      if ((XTable = 'GRUPOPROD') and (DMESTOQUE.Alx1.IsEmpty)) Then
      begin
        DMESTOQUE.Alx.SQL.Add('insert into GRUPOPROD(COD_GRUPOPROD,COD_INTERNO,DESCRICAO,TIPO)');
        DMESTOQUE.Alx.SQL.Add(' values(:COD_GRUPOPROD,:COD_INTERNO,:DESCRICAO,:TIPO)');
        DMESTOQUE.Alx.ParamByName('COD_GRUPOPROD').AsInteger := StrToInt(Trim(copy(XLinha, 12, 7)));
        EncontraChavePrim('GRUPOPROD', 'COD_GRUPOPROD');
        DMESTOQUE.Alx.ParamByName('COD_GRUPOPROD').AsInteger := DMMACS.TCodigo.FieldByName('COD_GRUPOPROD').AsInteger;
      End
      Else
      Begin
        if ((XTable = 'GRUPOPROD') and (not(DMESTOQUE.Alx1.IsEmpty))) Then
        begin
          DMESTOQUE.Alx.SQL.Add('update GRUPOPROD set COD_INTERNO = :COD_INTERNO, DESCRICAO = :DESCRICAO,');
          DMESTOQUE.Alx.SQL.Add('TIPO = :TIPO where GRUPOPROD.DESCRICAO = :DESCRICAO');
        End;
      End;
      DMESTOQUE.Alx.ParamByName('COD_INTERNO').AsString := Trim(copy(XLinha, 19, 13));
      DMESTOQUE.Alx.ParamByName('DESCRICAO').AsString := AnsiUpperCase(Trim(copy(XLinha, 32, 101)));
      DMESTOQUE.Alx.ParamByName('TIPO').AsString := Trim(copy(XLinha, 133, 3));
    End;

    XTable := '';
    XValor := '';

    // Testes e atualizacoes de produto
    XTable := copy(XLinha, 1, 7);
    XValor := AnsiUpperCase(copy(XLinha, 207, 102));
    if (XTable = 'PRODUTO') Then
    Begin
      ComparaTables('PRODUTO', 'DESCRICAO', Trim(XValor));
      XGRUPO := AnsiUpperCase(copy(XLinha, 337, 100));
      XSUBGRUPO := AnsiUpperCase(copy(XLinha, 437, 100));
      EncontraParProd(Trim(XGRUPO), Trim(XSUBGRUPO));
      if ((XTable = 'PRODUTO') and (DMESTOQUE.Alx1.IsEmpty)) Then
      begin
        DMESTOQUE.Alx.SQL.Add('insert into PRODUTO(APLICACAO,COD_CST,COD_GRUPOPROD,COD_INTERNO,COD_LOJA,COD_PRODUTO,COD_SUBGRUPOPROD,');
        DMESTOQUE.Alx.SQL.Add('COMPPRAZO,COMPVISTA,CUSTOVENDA,DESCRICAO,QTDCOMP,QTDVEND,VENDPRAZO,VENDVISTA)');
        DMESTOQUE.Alx.SQL.Add(' values (:APLICACAO,:COD_CST,:COD_GRUPOPROD,:COD_INTERNO,:COD_LOJA,:COD_PRODUTO,:COD_SUBGRUPOPROD,');
        DMESTOQUE.Alx.SQL.Add(':COMPPRAZO,:COMPVISTA,:CUSTOVENDA,:DESCRICAO,:QTDCOMP,:QTDVEND,:VENDPRAZO,:VENDVISTA)');
        DMESTOQUE.Alx.ParamByName('COD_PRODUTO').AsInteger := StrToInt(Trim(copy(XLinha, 145, 7)));
        EncontraChavePrim('PRODUTO', 'COD_PRODUTO');
        DMESTOQUE.Alx.ParamByName('COD_PRODUTO').AsInteger := DMMACS.TCodigo.FieldByName('COD_PRODUTO').AsInteger;
      End
      Else
      Begin
        if ((XTable = 'PRODUTO') and (not(DMESTOQUE.Alx1.IsEmpty))) Then
        begin
          DMESTOQUE.Alx.SQL.Add('update PRODUTO set APLICACAO = :APLICACAO,COD_CST = :COD_CST,COD_GRUPOPROD = :COD_GRUPOPROD,COD_INTERNO = :COD_INTERNO,COD_LOJA = :COD_LOJA,COD_SUBGRUPOPROD = :COD_SUBGRUPOPROD,');
          DMESTOQUE.Alx.SQL.Add('COMPPRAZO = :COMPPRAZO,COMPVISTA = :COMPVISTA,CUSTOVENDA = :CUSTOVENDA,DESCRICAO = :DESCRICAO,QTDCOMP = :QTDCOMP,QTDVEND = :QTDVEND,VENDPRAZO = :VENDPRAZO,VENDVISTA = :VENDVISTA');
          DMESTOQUE.Alx.SQL.Add(' where PRODUTO.DESCRICAO = :DESCRICAO');
        End;
      End;
      DMESTOQUE.Alx.ParamByName('APLICACAO').AsString := Trim(copy(XLinha, 10, 102));
      DMESTOQUE.Alx.ParamByName('COD_CST').AsInteger := StrToInt(Trim(copy(XLinha, 112, 7)));
      DMESTOQUE.Alx.ParamByName('COD_GRUPOPROD').AsInteger := DMESTOQUE.Alx3.FieldByName('COD_GRUPOPROD').AsInteger;
      DMESTOQUE.Alx.ParamByName('COD_INTERNO').AsString := Trim(copy(XLinha, 126, 12));
      DMESTOQUE.Alx.ParamByName('COD_LOJA').AsInteger := DMMACS.TLoja.FieldByName('COD_LOJA').AsInteger;
      DMESTOQUE.Alx.ParamByName('COD_SUBGRUPOPROD').AsInteger := DMESTOQUE.Alx4.FieldByName('COD_SUBGRUPOPROD').AsInteger;
      DMESTOQUE.Alx.ParamByName('COMPPRAZO').AsFloat := StrToFloat(Trim(copy(XLinha, 159, 16)));
      DMESTOQUE.Alx.ParamByName('COMPVISTA').AsFloat := StrToFloat(Trim(copy(XLinha, 175, 16)));
      DMESTOQUE.Alx.ParamByName('CUSTOVENDA').AsFloat := StrToFloat(Trim(copy(XLinha, 191, 16)));
      DMESTOQUE.Alx.ParamByName('DESCRICAO').AsString := AnsiUpperCase(Trim(copy(XLinha, 207, 102)));
      DMESTOQUE.Alx.ParamByName('QTDCOMP').AsFloat := StrToFloat(Trim(copy(XLinha, 309, 7)));
      DMESTOQUE.Alx.ParamByName('QTDVEND').AsFloat := StrToFloat(Trim(copy(XLinha, 316, 7)));
      DMESTOQUE.Alx.ParamByName('VENDPRAZO').AsFloat := StrToFloat(Trim(copy(XLinha, 323, 7)));
      DMESTOQUE.Alx.ParamByName('VENDVISTA').AsFloat := StrToFloat(Trim(copy(XLinha, 330, 7)));
    End;

    XTable := '';
    XValor := '';

    // Testes e atualizacoes de subproduto
    XTable := copy(XLinha, 1, 10);
    XValor := AnsiUpperCase(copy(XLinha, 316, 17));
    if (XTable = 'SUBPRODUTO') Then
    Begin
      ComparaTables('SUBPRODUTO', 'CONTRINT', Trim(XValor));
      XCST := AnsiUpperCase(copy(XLinha, 450, 6));
      XECF := AnsiUpperCase(copy(XLinha, 456, 6));
      XProduto := AnsiUpperCase(copy(XLinha, 350, 100));
      EncontraParSubpro(Trim(XCST), Trim(XECF), Trim(XProduto));
      XCodProd := DMESTOQUE.Alx4.FieldByName('COD_PRODUTO').AsInteger;
      if ((XTable = 'SUBPRODUTO') and (DMESTOQUE.Alx1.IsEmpty)) Then
      begin
        DMESTOQUE.Alx.SQL.Add('insert into SUBPRODUTO(ALTURA,ANVISA,ATESTGAR,ATESTVAL,ATIVO,BALANCA,CLASSIFICACAO,');
        DMESTOQUE.Alx.SQL.Add('CODBARRA,CODCOMPOSTO,CODEAN1,CODPRODFABR,COD_CST,COD_INTERNO,COD_PRODUTO,COD_SUBPRODUTO,COD_UNIDCOMPRA,');
        DMESTOQUE.Alx.SQL.Add('COD_UNIDVENDA,COMPOSICAO,CONTRINT,COR,DENSIDADE,DESCCUPOM,DESCRICAO,DTCAD,EMBPROD,ESPECIFICACAO,');
        DMESTOQUE.Alx.SQL.Add('FABRICANTE,GERMI,IPIPROD,LARGURA,LOCALESTANTE,LOTE,MARCA,MARK,MINSAUDE,MOTIVO,NCM,OBSFISCAL,PENEIRA,');
        DMESTOQUE.Alx.SQL.Add('PESOBRUTO,PESOLIQ,PUREZA,QTDATC,QUANTGARANTIA,SAFRA,TIPOGARANTIA,USOCONSUMO)');
        DMESTOQUE.Alx.SQL.Add(' values (:ALTURA,:ANVISA,:ATESTGAR,:ATESTVAL,:ATIVO,:BALANCA,:CLASSIFICACAO,');
        DMESTOQUE.Alx.SQL.Add(':CODBARRA,:CODCOMPOSTO,:CODEAN1,:CODPRODFABR,:COD_CST,:COD_INTERNO,:COD_PRODUTO,:COD_SUBPRODUTO,:COD_UNIDCOMPRA,');
        DMESTOQUE.Alx.SQL.Add(':COD_UNIDVENDA,:COMPOSICAO,:CONTRINT,:COR,:DENSIDADE,:DESCCUPOM,:DESCRICAO,:DTCAD,:EMBPROD,:ESPECIFICACAO,');
        DMESTOQUE.Alx.SQL.Add(':FABRICANTE,:GERMI,:IPIPROD,:LARGURA,:LOCALESTANTE,:LOTE,:MARCA,:MARK,:MINSAUDE,:MOTIVO,:NCM,:OBSFISCAL,:PENEIRA,');
        DMESTOQUE.Alx.SQL.Add(':PESOBRUTO,:PESOLIQ,:PUREZA,:QTDATC,:QUANTGARANTIA,:SAFRA,:TIPOGARANTIA,:USOCONSUMO)');
        DMESTOQUE.Alx.ParamByName('COD_SUBPRODUTO').AsInteger := StrToInt(Trim(copy(XLinha, 253, 7)));
        EncontraChavePrim('SUBPRODUTO', 'COD_SUBPRODUTO');
        DMESTOQUE.Alx.ParamByName('COD_SUBPRODUTO').AsInteger := DMMACS.TCodigo.FieldByName('COD_SUBPRODUTO').AsInteger;
        DMESTOQUE.Alx.ParamByName('COD_PRODUTO').AsInteger := XCodProd;
      End
      Else
      Begin
        if ((XTable = 'SUBPRODUTO') and (not(DMESTOQUE.Alx1.IsEmpty)))
        Then
        begin
          DMESTOQUE.Alx.SQL.Add('update SUBPRODUTO set ALTURA = :ALTURA,ANVISA = :ANVISA,ATESTGAR = :ATESTGAR,ATESTVAL = :ATESTVAL,ATIVO = :ATIVO,BALANCA = :BALANCA,CLASSIFICACAO = :CLASSIFICACAO,');
          DMESTOQUE.Alx.SQL.Add('CODBARRA = :CODBARRA,CODCOMPOSTO = :CODCOMPOSTO,CODEAN1 = :CODEAN1,CODPRODFABR = :CODPRODFABR,COD_CST = :COD_CST,COD_INTERNO = :COD_INTERNO,COD_PRODUTO = :COD_PRODUTO,COD_UNIDCOMPRA = :COD_UNIDCOMPRA,');
          DMESTOQUE.Alx.SQL.Add('COD_UNIDVENDA = :COD_UNIDVENDA,COMPOSICAO = :COMPOSICAO,CONTRINT = :CONTRINT,COR = :COR,DENSIDADE = :DENSIDADE,DESCCUPOM = :DESCCUPOM,DESCRICAO = :DESCRICAO,DTCAD = :DTCAD,EMBPROD = :EMBPROD,ESPECIFICACAO = :ESPECIFICACAO,');
          DMESTOQUE.Alx.SQL.Add('FABRICANTE = :FABRICANTE,GERMI = :GERMI,IPIPROD = :IPIPROD,LARGURA = :LARGURA,LOCALESTANTE = :LOCALESTANTE,LOTE = :LOTE,MARCA = :MARCA,MARK = :MARK,MINSAUDE = :MINSAUDE,MOTIVO = :MOTIVO,NCM = :NCM,OBSFISCAL = :OBSFISCAL,PENEIRA = :PENEIRA,');
          DMESTOQUE.Alx.SQL.Add('PESOBRUTO = :PESOBRUTO,PESOLIQ = :PESOLIQ,PUREZA = :PUREZA,QTDATC =:QTDATC,QUANTGARANTIA = :QUANTGARANTIA,SAFRA = :SAFRA,TIPOGARANTIA = :TIPOGARANTIA,USOCONSUMO = :USOCONSUMO');
          DMESTOQUE.Alx.SQL.Add(' where SUBPRODUTO.CONTRINT = :CONTRINT');
        End;
      End;
      DMESTOQUE.Alx.ParamByName('ALTURA').AsString := Trim(copy(XLinha, 13, 12));
      DMESTOQUE.Alx.ParamByName('ANVISA').AsString := Trim(copy(XLinha, 25, 27));
      DMESTOQUE.Alx.ParamByName('ATESTGAR').AsString := Trim(copy(XLinha, 52, 12));
      DMESTOQUE.Alx.ParamByName('ATESTVAL').AsString := Trim(copy(XLinha, 64, 27));
      DMESTOQUE.Alx.ParamByName('ATIVO').AsString := Trim(copy(XLinha, 91, 3));
      DMESTOQUE.Alx.ParamByName('BALANCA').AsString := Trim(copy(XLinha, 94, 3));
      DMESTOQUE.Alx.ParamByName('CLASSIFICACAO').AsString := Trim(copy(XLinha, 97, 32));
      DMESTOQUE.Alx.ParamByName('CODBARRA').AsString := Trim(copy(XLinha, 129, 32));
      DMESTOQUE.Alx.ParamByName('CODCOMPOSTO').AsString := Trim(copy(XLinha, 161, 22));
      DMESTOQUE.Alx.ParamByName('CODEAN1').AsString := Trim(copy(XLinha, 183, 17));
      DMESTOQUE.Alx.ParamByName('CODPRODFABR').AsString := Trim(copy(XLinha, 200, 27));
      DMESTOQUE.Alx.ParamByName('COD_CST').AsInteger := DMESTOQUE.Alx3.FieldByName('cod_cst').AsInteger;
      DMESTOQUE.Alx.ParamByName('COD_INTERNO').AsString := Trim(copy(XLinha, 234, 12));
      DMESTOQUE.Alx.ParamByName('COD_PRODUTO').AsInteger := XCodProd;
      DMESTOQUE.Alx.ParamByName('COD_UNIDCOMPRA').AsInteger := StrToInt(Trim(copy(XLinha, 260, 7)));
      DMESTOQUE.Alx.ParamByName('COD_UNIDVENDA').AsInteger := StrToInt(Trim(copy(XLinha, 267, 7)));
      DMESTOQUE.Alx.ParamByName('COMPOSICAO').AsString := Trim(copy(XLinha, 274, 42));
      DMESTOQUE.Alx.ParamByName('CONTRINT').AsString := Trim(copy(XLinha, 316, 17));
      DMESTOQUE.Alx.ParamByName('COR').AsString := Trim(copy(XLinha, 333, 17));

      ReadLN(xTexto, XLinha);

      DMESTOQUE.Alx.ParamByName('DENSIDADE').AsInteger := StrToInt(Trim(copy(XLinha, 1, 7)));
      DMESTOQUE.Alx.ParamByName('DESCCUPOM').AsString := Trim(copy(XLinha, 8, 62));
      DMESTOQUE.Alx.ParamByName('DESCRICAO').AsString := AnsiUpperCase(Trim(copy(XLinha, 70, 62)));
      DMESTOQUE.Alx.ParamByName('DTCAD').AsDateTime := StrToDateTime(Trim(copy(XLinha, 132, 12)));
      DMESTOQUE.Alx.ParamByName('EMBPROD').AsFloat := StrToFloat(Trim(copy(XLinha, 144, 12)));
      DMESTOQUE.Alx.ParamByName('ESPECIFICACAO').AsString := Trim(copy(XLinha, 156, 102));
      DMESTOQUE.Alx.ParamByName('FABRICANTE').AsString := Trim(copy(XLinha, 258, 62));
      DMESTOQUE.Alx.ParamByName('GERMI').AsFloat := StrToFloat(Trim(copy(XLinha, 320, 12)));
      DMESTOQUE.Alx.ParamByName('IPIPROD').AsFloat := StrToFloat(Trim(copy(XLinha, 332, 7)));
      DMESTOQUE.Alx.ParamByName('LARGURA').AsString := Trim(copy(XLinha, 339, 12));
      DMESTOQUE.Alx.ParamByName('LOCALESTANTE').AsString := Trim(copy(XLinha, 351, 12));
      DMESTOQUE.Alx.ParamByName('LOTE').AsString := Trim(copy(XLinha, 363, 12));
      DMESTOQUE.Alx.ParamByName('MARCA').AsString := Trim(copy(XLinha, 375, 42));
      DMESTOQUE.Alx.ParamByName('MARK').AsString := Trim(copy(XLinha, 417, 3));
      DMESTOQUE.Alx.ParamByName('MINSAUDE').AsString := Trim(copy(XLinha, 420, 27));
      DMESTOQUE.Alx.ParamByName('MOTIVO').AsString := Trim(copy(XLinha, 447, 42));
      DMESTOQUE.Alx.ParamByName('NCM').AsString := Trim(copy(XLinha, 489, 12));
      DMESTOQUE.Alx.ParamByName('OBSFISCAL').AsString := Trim(copy(XLinha, 501, 62));
      DMESTOQUE.Alx.ParamByName('PENEIRA').AsString := Trim(copy(XLinha, 563, 12));
      DMESTOQUE.Alx.ParamByName('PESOBRUTO').AsFloat := StrToFloat(Trim(copy(XLinha, 575, 7)));
      DMESTOQUE.Alx.ParamByName('PESOLIQ').AsFloat := StrToFloat(Trim(copy(XLinha, 582, 7)));
      DMESTOQUE.Alx.ParamByName('PUREZA').AsFloat := StrToFloat(Trim(copy(XLinha, 589, 12)));
      DMESTOQUE.Alx.ParamByName('QTDATC').AsFloat := StrToFloat(Trim(copy(XLinha, 601, 11)));
      DMESTOQUE.Alx.ParamByName('QUANTGARANTIA').AsFloat := StrToFloat(Trim(copy(XLinha, 612, 7)));
      DMESTOQUE.Alx.ParamByName('SAFRA').AsString := Trim(copy(XLinha, 619, 12));
      DMESTOQUE.Alx.ParamByName('TIPOGARANTIA').AsString := Trim(copy(XLinha, 631, 12));
      DMESTOQUE.Alx.ParamByName('USOCONSUMO').AsString := Trim(copy(XLinha, 643, 3));

    End;

    XTable := '';
    XValor := '';

    // Testes e atualizacoes de estoque
    XTable := copy(XLinha, 1, 7);
    XValor := AnsiUpperCase(copy(XLinha, 859, 17));
    if (XTable = 'ESTOQUE') Then
    Begin
      XValor := AnsiUpperCase(copy(XLinha, 859, 17));
      DMESTOQUE.Alx1.Close;
      DMESTOQUE.Alx1.SQL.Clear;
      DMESTOQUE.Alx1.SQL.Add('select * from subproduto');
      DMESTOQUE.Alx1.SQL.Add(' where subproduto.contrint = :contrint');
      DMESTOQUE.Alx1.ParamByName('CONTRINT').AsString := Trim(XValor);
      DMESTOQUE.Alx1.Open;
      xAux := DMESTOQUE.Alx1.FieldByName('COD_SUBPRODUTO').AsInteger;

      DMESTOQUE.Alx2.Close;
      DMESTOQUE.Alx2.SQL.Clear;
      DMESTOQUE.Alx2.SQL.Add('Select * from estoque where estoque.cod_subprod = :codsub');
      DMESTOQUE.Alx2.ParamByName('CODSUB').AsInteger := xAux;
      DMESTOQUE.Alx2.Open;

      DMESTOQUE.Alx1.SQL.Text;
      DMESTOQUE.Alx1.RecordCount;
      if ((XTable = 'ESTOQUE') and (DMESTOQUE.Alx2.IsEmpty)) Then
      begin
        DMESTOQUE.Alx.SQL.Add('insert into ESTOQUE(ACRECIMO,ATUALIZAR,AVPPROAT,AVPPROVAR,AVVPROAT,AVVPROVAR,BONIFICACAO,CLNC,');
        DMESTOQUE.Alx.SQL.Add('COD_ESTOQUE,COD_LOJA,COD_SUBPROD,COD_USUARIOALT,COEFDIV,COFINS,CONTAGEM,CONTSOC,CVPPROAT,CVPPROVAR,');
        DMESTOQUE.Alx.SQL.Add('CVVPROAT,CVVPROVAR,DATAATU,DATAOFERTA,DESCONTO,DTCAD,ESTANTCONT,ESTINI,ESTMAX,');
        DMESTOQUE.Alx.SQL.Add('ESTMIN,ESTPED,ESTRESERV,ESTSALDO,ESTSIMULADO,FRETE,GERACOMIS,HORAATU,ICMS,IMPEXP,IMPREND,INDICE,IPI_VND,');
        DMESTOQUE.Alx.SQL.Add('LUCRATIVIDADE,MARGEMSEG,MEDIABASEICMST,MEDIAVLRICMST,MOD,MVA,OUTROS,PERCMARGSEG,PIS,PMC,PRECOOFERTA,');
        DMESTOQUE.Alx.SQL.Add('QUANT2,REDUCBASE,ULTCOMPRA,ULTVENDA,VALCUSDESP,');
        DMESTOQUE.Alx.SQL.Add('VALCUSTO,VALOREST,VALREP,VALUNIT,VENCIMENTOOFERTA,VENDATAP,VENDATAV,VENDVARP,VENDVARV,');
        DMESTOQUE.Alx.SQL.Add('VLRBONIFIC,VLRCOMPSD,VLRUNITCOMP)');
        DMESTOQUE.Alx.SQL.Add(' values (:ACRECIMO,:ATUALIZAR,:AVPPROAT,:AVPPROVAR,:AVVPROAT,:AVVPROVAR,:BONIFICACAO,:CLNC,');
        DMESTOQUE.Alx.SQL.Add(':COD_ESTOQUE,:COD_LOJA,:COD_SUBPROD,:COD_USUARIOALT,:COEFDIV,:COFINS,:CONTAGEM,:CONTSOC,:CVPPROAT,:CVPPROVAR,');
        DMESTOQUE.Alx.SQL.Add(':CVVPROAT,:CVVPROVAR,:DATAATU,:DATAOFERTA,:DESCONTO,:DTCAD,:ESTANTCONT,:ESTINI,:ESTMAX,');
        DMESTOQUE.Alx.SQL.Add(':ESTMIN,:ESTPED,:ESTRESERV,:ESTSALDO,:ESTSIMULADO,:FRETE,:GERACOMIS,:HORAATU,:ICMS,:IMPEXP,:IMPREND,:INDICE,:IPI_VND,');
        DMESTOQUE.Alx.SQL.Add(':LUCRATIVIDADE,:MARGEMSEG,:MEDIABASEICMST,:MEDIAVLRICMST,:MOD,:MVA,:OUTROS,:PERCMARGSEG,:PIS,:PMC,:PRECOOFERTA,');
        DMESTOQUE.Alx.SQL.Add(':QUANT2,:REDUCBASE,:ULTCOMPRA,:ULTVENDA,:VALCUSDESP,');
        DMESTOQUE.Alx.SQL.Add(':VALCUSTO,:VALOREST,:VALREP,:VALUNIT,:VENCIMENTOOFERTA,:VENDATAP,:VENDATAV,:VENDVARP,:VENDVARV,');
        DMESTOQUE.Alx.SQL.Add(':VLRBONIFIC,:VLRCOMPSD,:VLRUNITCOMP)');
        DMESTOQUE.Alx.ParamByName('COD_ESTOQUE').AsInteger := StrToInt(Trim(copy(XLinha, 98, 7)));
        EncontraChavePrim('ESTOQUE', 'COD_ESTOQUE');
        DMESTOQUE.Alx.ParamByName('COD_ESTOQUE').AsInteger := DMMACS.TCodigo.FieldByName('COD_ESTOQUE').AsInteger;
        DMESTOQUE.Alx.ParamByName('COD_SUBPROD').AsInteger := xAux;
        DMESTOQUE.Alx.ParamByName('COD_LOJA').AsInteger := DMMACS.TLoja.FieldByName('COD_LOJA').AsInteger;
      End
      Else
      Begin
        if ((XTable = 'ESTOQUE') and (NOT(DMESTOQUE.Alx1.IsEmpty))) Then
        begin
          DMESTOQUE.Alx.SQL.Add(' update ESTOQUE set ACRECIMO = :ACRECIMO,ATUALIZAR = :ATUALIZAR,AVPPROAT = :AVPPROAT,AVPPROVAR = :AVPPROVAR,AVVPROAT = :AVVPROAT,AVVPROVAR = :AVVPROVAR,BONIFICACAO = :BONIFICACAO,CLNC = :CLNC,');
          DMESTOQUE.Alx.SQL.Add('COD_USUARIOALT = :COD_USUARIOALT,COEFDIV = :COEFDIV,COFINS = :COFINS,CONTAGEM = :CONTAGEM,CONTSOC = :CONTSOC,CVPPROAT = :CVPPROAT,CVPPROVAR = :CVPPROVAR,');
          DMESTOQUE.Alx.SQL.Add('CVVPROAT = :CVVPROAT,CVVPROVAR  = :CVVPROVAR,DATAATU = :DATAATU,DATAOFERTA = :DATAOFERTA,DESCONTO = :DESCONTO,DTCAD = :DTCAD,ESTANTCONT = :ESTANTCONT,ESTINI = :ESTINI,ESTMAX = :ESTMAX,');
          DMESTOQUE.Alx.SQL.Add('ESTMIN = :ESTMIN,ESTPED = :ESTPED,ESTRESERV = :ESTRESERV,ESTSALDO = :ESTSALDO,ESTSIMULADO = :ESTSIMULADO,FRETE = :FRETE,GERACOMIS = :GERACOMIS,HORAATU = :HORAATU,ICMS = :ICMS,IMPEXP = :IMPEXP,IMPREND = :IMPREND,INDICE = :INDICE,IPI_VND = :IPI_VND,');
          DMESTOQUE.Alx.SQL.Add('LUCRATIVIDADE = :LUCRATIVIDADE,MARGEMSEG = :MARGEMSEG,MEDIABASEICMST = :MEDIABASEICMST,MEDIAVLRICMST = :MEDIAVLRICMST,MOD = :MOD,MVA = :MVA,OUTROS = :OUTROS,PERCMARGSEG = :PERCMARGSEG,PIS = :PIS,PMC = :PMC,PRECOOFERTA = :PRECOOFERTA,');
          DMESTOQUE.Alx.SQL.Add('QUANT2 = :QUANT2,REDUCBASE = :REDUCBASE,ULTCOMPRA = :ULTCOMPRA,ULTVENDA = :ULTVENDA,VALCUSDESP = :VALCUSDESP,');
          DMESTOQUE.Alx.SQL.Add('VALCUSTO = :VALCUSTO,VALOREST = :VALOREST,VALREP = :VALREP,VALUNIT = :VALUNIT,VENCIMENTOOFERTA = :VENCIMENTOOFERTA,VENDATAP = :VENDATAP,VENDATAV = :VENDATAV,VENDVARP = :VENDVARP,VENDVARV = :VENDVARV,');
          DMESTOQUE.Alx.SQL.Add('VLRBONIFIC = :VLRBONIFIC,VLRCOMPSD = :VLRCOMPSD,VLRUNITCOMP = :VLRUNITCOMP');
          DMESTOQUE.Alx.SQL.Add(' where ESTOQUE.COD_SUBPROD = :COD_SUBPROD');
          DMESTOQUE.Alx.ParamByName('COD_SUBPROD').AsInteger := xAux;
        End;
      End;
      DMESTOQUE.Alx.ParamByName('ACRECIMO').AsFloat := StrToFloat(Trim(copy(XLinha, 10, 5)));
      DMESTOQUE.Alx.ParamByName('ATUALIZAR').AsString := '0';
      DMESTOQUE.Alx.ParamByName('AVPPROAT').AsFloat := StrToFloat(Trim(copy(XLinha, 18, 12)));
      DMESTOQUE.Alx.ParamByName('AVPPROVAR').AsFloat := StrToFloat(Trim(copy(XLinha, 30, 12)));
      DMESTOQUE.Alx.ParamByName('AVVPROAT').AsFloat := StrToFloat(Trim(copy(XLinha, 42, 12)));
      DMESTOQUE.Alx.ParamByName('AVVPROVAR').AsFloat := StrToFloat(Trim(copy(XLinha, 54, 12)));
      DMESTOQUE.Alx.ParamByName('BONIFICACAO').AsFloat := StrToFloat(Trim(copy(XLinha, 66, 16)));
      DMESTOQUE.Alx.ParamByName('CLNC').AsFloat := StrToFloat(Trim(copy(XLinha, 82, 16)));
      DMESTOQUE.Alx.ParamByName('COD_USUARIOALT').AsInteger := StrToInt(Trim(copy(XLinha, 119, 7)));
      DMESTOQUE.Alx.ParamByName('COEFDIV').AsFloat := StrToFloat(Trim(copy(XLinha, 126, 12)));
      DMESTOQUE.Alx.ParamByName('COFINS').AsFloat := StrToFloat(Trim(copy(XLinha, 138, 12)));
      DMESTOQUE.Alx.ParamByName('CONTAGEM').AsFloat := StrToFloat(Trim(copy(XLinha, 150, 12)));
      DMESTOQUE.Alx.ParamByName('CONTSOC').AsFloat := StrToFloat(Trim(copy(XLinha, 162, 12)));
      DMESTOQUE.Alx.ParamByName('CVPPROAT').AsFloat := StrToFloat(Trim(copy(XLinha, 174, 7)));
      DMESTOQUE.Alx.ParamByName('CVPPROVAR').AsFloat := StrToFloat(Trim(copy(XLinha, 181, 7)));
      DMESTOQUE.Alx.ParamByName('CVVPROAT').AsFloat := StrToFloat(Trim(copy(XLinha, 188, 7)));
      DMESTOQUE.Alx.ParamByName('CVVPROVAR').AsFloat := StrToFloat(Trim(copy(XLinha, 195, 7)));
      DMESTOQUE.Alx.ParamByName('DATAATU').AsDateTime := StrToDateTime(Trim(copy(XLinha, 202, 12)));
      DMESTOQUE.Alx.ParamByName('DATAOFERTA').AsDateTime := StrToDateTime(Trim(copy(XLinha, 214, 12)));
      DMESTOQUE.Alx.ParamByName('DESCONTO').AsFloat := StrToFloat(Trim(copy(XLinha, 226, 12)));
      DMESTOQUE.Alx.ParamByName('DTCAD').AsDateTime := StrToDateTime(Trim(copy(XLinha, 238, 12)));
      DMESTOQUE.Alx.ParamByName('ESTANTCONT').AsFloat := StrToFloat(Trim(copy(XLinha, 250, 12)));
      {
        DMESTOQUE.Alx.ParamByName('ESTCALC').AsFloat := StrToFloat(Trim(Copy(XLinha,262,12)));
        DMESTOQUE.Alx.ParamByName('ESTFISICO').AsFloat := StrToFloat(Trim(Copy(XLinha,274,10)));
      }
      DMESTOQUE.Alx.ParamByName('ESTINI').AsFloat := StrToFloat(Trim(copy(XLinha, 284, 10)));
      DMESTOQUE.Alx.ParamByName('ESTMAX').AsFloat := StrToFloat(Trim(copy(XLinha, 294, 10)));
      DMESTOQUE.Alx.ParamByName('ESTMIN').AsFloat := StrToFloat(Trim(copy(XLinha, 304, 10)));
      DMESTOQUE.Alx.ParamByName('ESTPED').AsFloat := StrToFloat(Trim(copy(XLinha, 314, 10)));
      DMESTOQUE.Alx.ParamByName('ESTRESERV').AsFloat := StrToFloat(Trim(copy(XLinha, 324, 10)));
      DMESTOQUE.Alx.ParamByName('ESTSALDO').AsFloat := StrToFloat(Trim(copy(XLinha, 334, 10)));
      DMESTOQUE.Alx.ParamByName('ESTSIMULADO').AsFloat := StrToFloat(Trim(copy(XLinha, 344, 10)));
      DMESTOQUE.Alx.ParamByName('FRETE').AsFloat := StrToFloat(Trim(copy(XLinha, 354, 10)));
      DMESTOQUE.Alx.ParamByName('GERACOMIS').AsFloat := StrToFloat(Trim(copy(XLinha, 364, 10)));
      DMESTOQUE.Alx.ParamByName('HORAATU').AsDateTime := StrToDateTime(Trim(copy(XLinha, 374, 10)));
      DMESTOQUE.Alx.ParamByName('ICMS').AsFloat := StrToFloat(Trim(copy(XLinha, 384, 10)));
      DMESTOQUE.Alx.ParamByName('IMPEXP').AsFloat := StrToFloat(Trim(copy(XLinha, 394, 12)));
      DMESTOQUE.Alx.ParamByName('IMPREND').AsFloat := StrToFloat(Trim(copy(XLinha, 406, 12)));
      DMESTOQUE.Alx.ParamByName('INDICE').AsFloat := StrToFloat(Trim(copy(XLinha, 418, 12)));
      DMESTOQUE.Alx.ParamByName('IPI_VND').AsFloat := StrToFloat(Trim(copy(XLinha, 430, 16)));
      DMESTOQUE.Alx.ParamByName('LUCRATIVIDADE').AsFloat := StrToFloat(Trim(copy(XLinha, 446, 12)));
      DMESTOQUE.Alx.ParamByName('MARGEMSEG').AsFloat := StrToFloat(Trim(copy(XLinha, 458, 16)));
      DMESTOQUE.Alx.ParamByName('MEDIABASEICMST').AsFloat := StrToFloat(Trim(copy(XLinha, 474, 16)));
      DMESTOQUE.Alx.ParamByName('MEDIAVLRICMST').AsFloat := StrToFloat(Trim(copy(XLinha, 490, 16)));
      DMESTOQUE.Alx.ParamByName('MOD').AsFloat := StrToFloat(Trim(copy(XLinha, 506, 16)));
      DMESTOQUE.Alx.ParamByName('MVA').AsFloat := StrToFloat(Trim(copy(XLinha, 522, 5)));
      DMESTOQUE.Alx.ParamByName('OUTROS').AsFloat := StrToFloat(Trim(copy(XLinha, 527, 16)));
      DMESTOQUE.Alx.ParamByName('PERCMARGSEG').AsFloat := StrToFloat(Trim(copy(XLinha, 543, 16)));
      DMESTOQUE.Alx.ParamByName('PIS').AsFloat := StrToFloat(Trim(copy(XLinha, 559, 12)));
      DMESTOQUE.Alx.ParamByName('PMC').AsFloat := StrToFloat(Trim(copy(XLinha, 571, 16)));
      DMESTOQUE.Alx.ParamByName('PRECOOFERTA').AsFloat := StrToFloat(Trim(copy(XLinha, 587, 16)));
      DMESTOQUE.Alx.ParamByName('QUANT2').AsFloat := StrToFloat(Trim(copy(XLinha, 603, 12)));
      DMESTOQUE.Alx.ParamByName('REDUCBASE').AsFloat := StrToFloat(Trim(copy(XLinha, 615, 16)));
      DMESTOQUE.Alx.ParamByName('ULTCOMPRA').AsDateTime := StrToDateTime(Trim(copy(XLinha, 631, 12)));
      DMESTOQUE.Alx.ParamByName('ULTVENDA').AsDateTime := StrToDateTime(Trim(copy(XLinha, 643, 12)));
      {
        DMESTOQUE.Alx.ParamByName('ULTVLR_VNDPVAR').AsFloat := StrToFloat(Trim(Copy(XLinha,655,16)));
        DMESTOQUE.Alx.ParamByName('ULTVLR_VNDVATAC').AsFloat := StrToFloat(Trim(Copy(XLinha,671,16)));
        DMESTOQUE.Alx.ParamByName('ULTVLR_VNDVVAR').AsFloat := StrToFloat(Trim(Copy(XLinha,687,16)));
        DMESTOQUE.Alx.ParamByName('ULTVLR_VPATAC').AsFloat := StrToFloat(Trim(Copy(XLinha,703,16)));
      }
      DMESTOQUE.Alx.ParamByName('VALCUSDESP').AsFloat := StrToFloat(Trim(copy(XLinha, 655, 16)));
      DMESTOQUE.Alx.ParamByName('VALCUSTO').AsFloat := StrToFloat(Trim(copy(XLinha, 671, 16)));
      DMESTOQUE.Alx.ParamByName('VALOREST').AsFloat := StrToFloat(Trim(copy(XLinha, 687, 16)));
      DMESTOQUE.Alx.ParamByName('VALREP').AsFloat := StrToFloat(Trim(copy(XLinha, 703, 16)));
      DMESTOQUE.Alx.ParamByName('VALUNIT').AsFloat := StrToFloat(Trim(copy(XLinha, 719, 16)));
      DMESTOQUE.Alx.ParamByName('VENCIMENTOOFERTA').AsDateTime := StrToDateTime(Trim(copy(XLinha, 735, 12)));
      DMESTOQUE.Alx.ParamByName('VENDATAP').AsFloat := StrToFloat(Trim(copy(XLinha, 747, 16)));
      DMESTOQUE.Alx.ParamByName('VENDATAV').AsFloat := StrToFloat(Trim(copy(XLinha, 763, 16)));
      DMESTOQUE.Alx.ParamByName('VENDVARP').AsFloat := StrToFloat(Trim(copy(XLinha, 779, 16)));
      DMESTOQUE.Alx.ParamByName('VENDVARV').AsFloat := StrToFloat(Trim(copy(XLinha, 795, 16)));
      DMESTOQUE.Alx.ParamByName('VLRBONIFIC').AsFloat := StrToFloat(Trim(copy(XLinha, 811, 16)));
      DMESTOQUE.Alx.ParamByName('VLRCOMPSD').AsFloat := StrToFloat(Trim(copy(XLinha, 827, 16)));
      DMESTOQUE.Alx.ParamByName('VLRUNITCOMP').AsFloat := StrToFloat(Trim(copy(XLinha, 843, 16)));
    End;

    // Paulo 19/05/2010: verifica se a linha esta em branco
    if (XTable = '') then
    begin
      Continue;
    end;
    // Executa SQL para cada tabela e salva em banco
    DMESTOQUE.Alx.ExecSQL;
    DMESTOQUE.TransacEstoque.CommitRetaining;
  End;

  // DJ 05/04/2010: Atualiza data da ultima alteracao
  DMESTOQUE.TransacEstoque.CommitRetaining;
  DMMACS.TLoja.Edit;
  DMMACS.TLoja.FieldByName('DATAFTP').AsDateTime := Date;
  DMMACS.TLoja.Post;
  DMMACS.Transaction.CommitRetaining;

  // Fecha relatorio .txt
  CloseFile(xTexto);
End;

// DJ 06/04/2010:Encontra parametros para subprodutos
Procedure EncontraParSubpro(XCST: String; XECF: String; XProduto: String);
Begin
  DMESTOQUE.Alx3.Close;
  DMESTOQUE.Alx3.SQL.Clear;
  DMESTOQUE.Alx3.SQL.Add('select cst.cod_cst from cst where cst.cod_sit_trib = :cod and cst.indiceecf = :ecf');
  DMESTOQUE.Alx3.ParamByName('COD').AsString := XCST;
  DMESTOQUE.Alx3.ParamByName('ECF').AsString := XECF;
  DMESTOQUE.Alx3.Open;

  DMESTOQUE.Alx4.Close;
  DMESTOQUE.Alx4.SQL.Clear;
  DMESTOQUE.Alx4.SQL.Add('select cod_produto from produto where produto.descricao = :desc');
  DMESTOQUE.Alx4.ParamByName('DESC').AsString := XProduto;
  DMESTOQUE.Alx4.Open;
End;

// DJ 06/04/2010:Encontra parametros para subprodutos
Procedure EncontraParProd(XGRUPO: String; XSUBGRUPO: String);
Begin
  DMESTOQUE.Alx3.Close;
  DMESTOQUE.Alx3.SQL.Clear;
  DMESTOQUE.Alx3.SQL.Add('select grupoprod.cod_grupoprod from grupoprod where grupoprod.descricao = :GRUPO');
  DMESTOQUE.Alx3.ParamByName('GRUPO').AsString := XGRUPO;
  DMESTOQUE.Alx3.Open;

  DMESTOQUE.Alx4.Close;
  DMESTOQUE.Alx4.SQL.Clear;
  DMESTOQUE.Alx4.SQL.Add('select subgrupoprod.cod_subgrupoprod from subgrupoprod where subgrupoprod.descricao = :subgrupo');
  DMESTOQUE.Alx4.ParamByName('SUBGRUPO').AsString := XSUBGRUPO;
  DMESTOQUE.Alx4.Open;
End;

// Paulo 30/07/2010: Retorna os dados da impressora ECF
Procedure Retorna_Dados_Ecf;
var
  XArquivo: TextFile;
  XLocalArq, XHora, XTitulo, XLinha: String;
  XRed, XConta, XFlag1: Integer;
  XAck, XSt1, XSt2, XSt3: Integer;
begin

  XLocalArq := '';
  XDataRZ := '';
  XNserie := '';
  XNequip := '';
  XModelo := '';
  XCuponFim := '';
  XReducZ := '';
  XVendBruta := '';
  XTotGeral := '';
  XTipoReg := '';
  XCancel := '';
  XDesconto := '';
  XSubTrib := '';
  XInsencao := '';
  XIncidencia := '';
  XAlqServ := '';
  XAlq1 := '';
  XAlq2 := '';
  XAlq3 := '';
  XAlq4 := '';
  XAlq5 := '';
  XVlr1 := '';
  XVlr2 := '';
  XVlr3 := '';
  XVlr4 := '';
  XVlr5 := '';
  XFlag1 := 0;
  XRed := 0;

  // Paulo 18/08/2010: Verifica se a impressora esta ligada.

  XAlx := Bematech_FI_VerificaImpressoraLigada();

  if (XAlx <> 1) then
  begin
    If XAlx = 0 Then
      Mensagem('ATENÇÃO', 'Erro de comunicação com impressora , não será possível gerar o relatório de redução Z', '', 1, 1, False, 'I');
    If XAlx = -4 Then
      Mensagem('ATENÇÃO', 'O arquivo de inicialização BemaFI32.ini não foi encontrado no diretório de sistema do Windows. não será possível gerar o relatório de redução Z', '', 1, 1, False, 'I');
    If XAlx = -5 Then
      Mensagem('ATENÇÃO', 'Erro ao Abrir a porta de comunicação com Impressora. não será possível gerar o relatório de redução Z', '', 1, 1, False, 'I');
    If XAlx = -6 Then
      Mensagem('ATENÇÃO', 'Impressora ECF desligada ou desconectada , não será possível gerar o relatório de redução Z', '', 1, 1, False, 'I');
  end
  Else
  Begin

    // Paulo 30/08/2010: Verifica se tem redução Z pendente
    XAlx := Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD('1');
    XAlx := Bematech_FI_VerificaEstadoImpressoraMFD(XAck, XSt1, XSt2, XSt3);
    // PAulo 30/08/2010: Se Tiver Efetua o fechamento, senão continua o processo normal
    if (XSt3 = 66) then
    begin
      Mensagem('ATENÇÃO', 'Consta uma redução Z pendente, verifique a impressora para continuar', '', 1, 1, False, 'I');

      XAlx := Bematech_FI_FechamentoDoDia();

      XRed := 1;
    end;

    // *******************INICIO DO PROCESSO DE CAPTURA PARA 60M***************************
    if (XRed = 1) then
    begin
      Bematech_FI_RelatorioTipo60Mestre();

      XLocalArq := 'C:\Retorno.txt';

      // Paulo 09/05/2011: Verifica se foi criado o Retorno.txt
      if (not(FileExists(XLocalArq))) then
      begin
        Mensagem('ATENÇÃO', 'Não foi encontrado o arquivo de retorno da Redução Z, Entre em contato com o suporte para corrigir o problema', '', 1, 1, False, 'E');
        Exit;
      end;

      AssignFile(XArquivo, 'C:\Retorno.txt');
      Reset(XArquivo);

      // Extrai os dados do Arquivo de Retorno
      while not Eof(XArquivo) do
      begin
        ReadLN(XArquivo, XLinha);
        XTitulo := '';
        XTitulo := copy(XLinha, 1, 27);

        if (XTitulo = 'Data de emissão...........:') then
        begin
          XDataRZ := Trim((copy(XLinha, 28, 25)));
          XDataRZ := (copy(XDataRZ, 1, 6) + '20' + copy(XDataRZ, 7, 2));
          XLinha := '';
        end;

        if (XTitulo = 'Número de série...........:') then
        begin
          XNserie := Trim((copy(XLinha, 28, 25)));
          XLinha := '';
        end;

        if (XTitulo = 'Número do equipamento.....:') then
        begin
          XNequip := ((copy(XLinha, 50, 3)));
          XLinha := '';
        end;

        if (XTitulo = 'Modelo do documento fiscal:') then
        begin
          XModelo := Trim((copy(XLinha, 28, 25)));
          XLinha := '';
        end;

        if (XTitulo = 'COO inicial...............:') then
        begin
          XCuponIn := (Trim((copy(XLinha, 28, 25))));
          XLinha := '';
        end;

        if (XTitulo = 'COO final.................:') then
        begin
          XCuponFim := (Trim((copy(XLinha, 28, 25))));
          XLinha := '';
        end;

        if (XTitulo = 'Contador de reduções......:') then
        begin
          XReducZ := (Trim((copy(XLinha, 28, 25))));
          XLinha := '';
        end;

        if (XTitulo = 'Reinicio de Operação......:') then
        begin
          XReinicio := (Trim((copy(XLinha, 28, 25))));
          XLinha := '';
        end;

        if (XTitulo = 'Venda Bruta...............:') then
        begin
          XVendBruta := (Trim((copy(XLinha, 28, 25))));
          XVendBruta := TiraPonto(XVendBruta);
          XLinha := '';
        end;

        if (XTitulo = 'Totalizador geral.........:') then
        begin
          XTotGeral := (Trim((copy(XLinha, 28, 25))));
          XTotGeral := TiraPonto(XTotGeral);
          XLinha := '';
        end;
      end;
      CloseFile(XArquivo);

      // *****************************FIM DO PROCESSO DE CAPTURA PARA 60M******************************

      // *****************************ÌNICIO DO PROCESSO DE CAPTURA PARA 60A****************************
      Bematech_FI_RelatorioTipo60Analitico();

      XLocalArq := 'C:\Retorno.txt';

      // Paulo 09/05/2011: Verifica se foi criado o Retorno.txt
      if (not(FileExists(XLocalArq))) then
      begin
        Mensagem('ATENÇÃO', 'Não foi encontrado o arquivo de retorno da Redução Z, entre em contato com o suporte para corrigir o problema', '', 1, 1, False, 'E');
        Exit;
      end;

      AssignFile(XArquivo, 'C:\Retorno.txt');
      Reset(XArquivo);

      while not Eof(XArquivo) do
      begin
        ReadLN(XArquivo, XLinha);
        XTitulo := '';

        XTitulo := copy(XLinha, 1, 2);
        if (XTitulo = 'Ca') then
        begin
          XCancel := Trim((copy(XLinha, 28, 25)));
          XCancel := TiraPonto(XCancel);
          XLinha := '';
        end;
        if (XTitulo = 'De') then
        begin
          XDesconto := Trim((copy(XLinha, 28, 25)));
          XDesconto := TiraPonto(XDesconto);
          XLinha := '';
        end;
        if (XTitulo = 'F.') then
        begin
          XSubTrib := Trim((copy(XLinha, 28, 25)));
          XSubTrib := TiraPonto(XSubTrib);
          XLinha := '';
        end;
        if (XTitulo = 'I.') then
        begin
          XInsencao := Trim((copy(XLinha, 28, 25)));
          XInsencao := TiraPonto(XInsencao);
          XLinha := '';
        end;
        if (XTitulo = 'N.') then
        begin
          XIncidencia := Trim((copy(XLinha, 28, 25)));
          XIncidencia := TiraPonto(XIncidencia);
          XLinha := '';
        end;
        // Para Aliquotas
        if TryStrToInt(XTitulo, XAlx) then
        begin
          if (XFlag1 = 0) then
          begin
            XAlq1 := XTitulo;
            XVlr1 := Trim((copy(XLinha, 28, 25)));
            XVlr1 := TiraPonto(XVlr1);
          end;
          if (XFlag1 = 1) then
          begin
            XAlq2 := XTitulo;
            XVlr2 := Trim((copy(XLinha, 28, 25)));
            XVlr2 := TiraPonto(XVlr2);
          end;
          if (XFlag1 = 2) then
          begin
            XAlq3 := XTitulo;
            XVlr3 := Trim((copy(XLinha, 28, 25)));
            XVlr3 := TiraPonto(XVlr3);
          end;
          if (XFlag1 = 3) then
          begin
            XAlq4 := XTitulo;
            XVlr4 := Trim((copy(XLinha, 28, 25)));
            XVlr4 := TiraPonto(XVlr4);
          end;
          if (XFlag1 = 4) then
          begin
            XAlq5 := XTitulo;
            XVlr5 := Trim((copy(XLinha, 28, 25)));
            XVlr5 := TiraPonto(XVlr5);
          end;
          XFlag1 := XFlag1 + 1;
          XLinha := ''
        end;
        if (XTitulo = 'IS') then
        begin
          XAlqServ := Trim((copy(XLinha, 28, 25)));
          XAlqServ := TiraPonto(XAlqServ);
          XLinha := '';
        end;
      end;
      CloseFile(XArquivo);
      // Paulo 04/05/2011: Caso os valores retornarem em branco imediatamente é adicionado como '0'
      if (XVlr1 = '') then
        XVlr1 := '0';
      if (XVlr2 = '') then
        XVlr1 := '0';
      if (XVlr3 = '') then
        XVlr3 := '0';
      if (XVlr4 = '') then
        XVlr4 := '0';
      if (XVlr5 = '') then
        XVlr5 := '0';

      // *****************************FIM DO PROCESSO DE CAPTURA PARA 60A*******************************

      // Paulo 11/08/2010: Verifica se ja foi tirado Redução Z pela dt de emissão e numero de série
      DMMACS.TAlx.Close;
      DMMACS.TAlx.SQL.Clear;
      DMMACS.TAlx.SQL.Add('SELECT dtemissao,numserie FROM R60 where dtemissao = :ULTIMAREDZ and numserie = :NUMSERIE');
      DMMACS.TAlx.ParamByName('ULTIMAREDZ').AsDate := StrToDate(XDataRZ);
      DMMACS.TAlx.ParamByName('NUMSERIE').AsString := XNserie;
      DMMACS.TAlx.Open;
      if (DMMACS.TAlx.IsEmpty) then
      begin
        MessageBox(0, 'Ainda não consta nenhum registro referente a Redução Z do dia anterior.' + #13 + #10 + 'Por favor verifique a impressora e clique para continuar.', 'Redução Z', MB_ICONINFORMATION or MB_OK);
        XRed := 1;
      end
      else
      begin
        MessageBox(0, 'Já consta uma Redução Z para essa data! ', 'Redução Z', MB_ICONINFORMATION or MB_OK);
        Exit;
      end;

      // Paulo 02/08/2010: Valida se conseguiu retornar todas as informações Para 60M
      if ((XNserie = '') or (XNequip = '') or (XModelo = '') or (XDataRZ = '') or (XReducZ = '') or (XCuponFim = '') or (XVendBruta = '') or (XTotGeral = '')) then
      begin
        MessageBox(0, 'Não foi possível retornar dados da Redução Z. Verifique impressora ECF! ', 'Erro Redução Z', MB_ICONERROR or MB_OK);

      end;

      // Paulo 02/08/2010: Verifica se ja foi feita a coleta dessa Redução Z
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('SELECT NCONTFIM,NCONTREDZ FROM R60 WHERE NCONTREDZ = :REDUCZ');
      DMESTOQUE.Alx.ParamByName('REDUCZ').AsInteger := XAlx;
      DMESTOQUE.Alx.Open;

      if (XAlx = StrToInt(XReducZ)) then
      begin
        MessageBox(0, 'Relatório de Redução Z já emitida', 'Redução Z', MB_ICONINFORMATION or MB_OK);
        Exit;
      end;
    end;
    if (XRed = 1) then
    begin
      XEdiT := False;
      AbrirForm(TFCadReducaoZ, FCadReducaoZ, 1);
    end
    else
    begin
      Mensagem('ATENÇÃO', 'Não consta nenhuma redução Z para ser retirada', '', 1, 1, False, 'I');
    end;
  End;

end;

// Paulo 02/08/2010: Salva os dados recolhidos na tabela R60
Procedure Insere_R60_Banco;
var
  xCod: Integer;
begin
  TRY
    // Paulo 03/08/2010: REtorna com a pk da tabela R60
    xCod := InserReg(DMFISCAL.TR60, 'R60', 'COD_R60');
    DMFISCAL.TR60.Close;
    DMFISCAL.TR60.SQL.Clear;
    DMFISCAL.TR60.SQL.Add('insert into r60(COD_R60, DTEMISSAO, NUMSERIE, NUMORDEM, MODELODOC, NCONTINI, NCONTFIM, NCONTREDZ, VLRVNDBRUTA, VLRTGERAL, CONTREINICIO,');
    DMFISCAL.TR60.SQL.Add('CANCELAMENTO, DESCONTO, SUBTRIBUTARIA, ALQ01,ALQ02,ALQ03,ALQ04,ALQ05,IMP01,IMP02,IMP03,IMP04,IMP05,VLRTPARC01,VLRTPARC02,VLRTPARC03,VLRTPARC04,VLRTPARC05)');
    DMFISCAL.TR60.SQL.Add(' values(:COD_R60, :DTEMISSAO, :NUMSERIE, :NUMORDEM, :MODELODOC, :NCONTINI, :NCONTFIM, :NCONTREDZ, :VLRVNDBRUTA, :VLRTGERAL, :CONTREINICIO,');
    DMFISCAL.TR60.SQL.Add(' :CANCELAMENTO, :DESCONTO, :SUBTRIBUTARIA, :ALQ01,:ALQ02,:ALQ03,:ALQ04,:ALQ05,:IMP01,:IMP02,:IMP03,:IMP04,:IMP05,:VLRTPARC01,:VLRTPARC02,:VLRTPARC03,:VLRTPARC04,:VLRTPARC05)');
    // Paulo 02/08/2010: Dados do 60M
    DMFISCAL.TR60.ParamByName('COD_R60').AsInteger := xCod;
    DMFISCAL.TR60.ParamByName('DTEMISSAO').AsDate := StrToDate(XDataRZ);
    DMFISCAL.TR60.ParamByName('NUMSERIE').AsString := XNserie;
    DMFISCAL.TR60.ParamByName('NUMORDEM').AsString := XNequip;
    if (XModelo = '') then
    begin
      DMFISCAL.TR60.ParamByName('MODELODOC').AsString := '2D';
    end
    else
    begin
      DMFISCAL.TR60.ParamByName('MODELODOC').AsString := XModelo;
    end;
    DMFISCAL.TR60.ParamByName('NCONTINI').AsInteger := StrToInt(XCuponIn);
    DMFISCAL.TR60.ParamByName('NCONTFIM').AsInteger := StrToInt(XCuponFim);
    DMFISCAL.TR60.ParamByName('NCONTREDZ').AsInteger := StrToInt(XReducZ);
    DMFISCAL.TR60.ParamByName('VLRVNDBRUTA').AsFloat := StrToFloat(XVendBruta);
    DMFISCAL.TR60.ParamByName('VLRTGERAL').AsFloat := StrToFloat(XTotGeral);
    DMFISCAL.TR60.ParamByName('CONTREINICIO').AsInteger := StrToInt(XReinicio);
    // Paulo 03/08/2010: Dados do 60A
    DMFISCAL.TR60.ParamByName('CANCELAMENTO').AsFloat := StrToFloat(XCancel);
    DMFISCAL.TR60.ParamByName('DESCONTO').AsFloat := StrToFloat(XDesconto);
    DMFISCAL.TR60.ParamByName('SUBTRIBUTARIA').AsFloat := StrToFloat(XSubTrib);
    // Para as aliquotas

    DMFISCAL.TR60.ParamByName('ALQ01').AsFloat := StrToFloat(XAlq1);
    DMFISCAL.TR60.ParamByName('ALQ02').AsFloat := StrToFloat(XAlq2);
    DMFISCAL.TR60.ParamByName('ALQ03').AsFloat := StrToFloat(XAlq3);
    DMFISCAL.TR60.ParamByName('ALQ04').AsFloat := StrToFloat(XAlq4);
    DMFISCAL.TR60.ParamByName('ALQ05').AsFloat := StrToFloat(XAlq5);

    DMFISCAL.TR60.ParamByName('IMP01').AsFloat := XImp1;
    DMFISCAL.TR60.ParamByName('IMP02').AsFloat := XImp2;
    // Trechos abaixo comentados por Paulo em 04/08/2010
    // Os tratamentos abaixo são feitos no UCadReduçãoZ na hora que é aberto
    {
      if(XVlr3 = '0,00')then
      begin
      if(XInsencao <> '0,00')then
      begin
      DMFiscal.TR60.ParamByName('ALQ03').AsFloat:= 000;
      DMFiscal.TR60.ParamByName('IMP03').AsFloat:=StrToFloat(XInsencao);
      end;
      if(XIncidencia <> '0,00')then
      begin
      DMFiscal.TR60.ParamByName('ALQ03').AsFloat:= 000;
      DMFiscal.TR60.ParamByName('IMP03').AsFloat:=StrToFloat(XIncidencia);
      end;
      if(XAlqServ <> '0,00')then
      begin
      DMFiscal.TR60.ParamByName('ALQ03').AsFloat:= 000;
      DMFiscal.TR60.ParamByName('IMP03').AsFloat:=StrToFloat(XAlqServ);
      end;
      end;
    }
    DMFISCAL.TR60.ParamByName('IMP03').AsFloat := XImp3;
    {
      if(XVlr4 = '0,00')then
      begin
      if(XInsencao <> '0,00')then
      begin
      DMFiscal.TR60.ParamByName('ALQ04').AsFloat:= 000;
      DMFiscal.TR60.ParamByName('IMP04').AsFloat:=StrToFloat(XInsencao);
      end;
      if(XIncidencia <> '0,00')then
      begin
      DMFiscal.TR60.ParamByName('ALQ04').AsFloat:= 000;
      DMFiscal.TR60.ParamByName('IMP04').AsFloat:=StrToFloat(XIncidencia);
      end;
      if(XAlqServ <> '0,00')then
      begin
      DMFiscal.TR60.ParamByName('ALQ04').AsFloat:= 000;
      DMFiscal.TR60.ParamByName('IMP04').AsFloat:=StrToFloat(XAlqServ);
      end;
      end;
    }
    DMFISCAL.TR60.ParamByName('IMP04').AsFloat := XImp4;
    {
      if(XVlr5 = '0,00')then
      begin
      if(XInsencao <> '0,00')then
      begin
      DMFiscal.TR60.ParamByName('ALQ05').AsFloat:= 000;
      DMFiscal.TR60.ParamByName('IMP05').AsFloat:=StrToFloat(XInsencao);
      end;
      if(XIncidencia <> '0,00')then
      begin
      DMFiscal.TR60.ParamByName('ALQ05').AsFloat:= 000;
      DMFiscal.TR60.ParamByName('IMP05').AsFloat:=StrToFloat(XIncidencia);
      end;
      if(XAlqServ <> '0,00')then
      begin
      DMFiscal.TR60.ParamByName('ALQ05').AsFloat:= 000;
      DMFiscal.TR60.ParamByName('IMP05').AsFloat:=StrToFloat(XAlqServ);
      end;
      end;
    }
    DMFISCAL.TR60.ParamByName('IMP05').AsFloat := XImp5;
    DMFISCAL.TR60.ParamByName('VLRTPARC01').AsFloat := StrToFloat(XVlr1);
    DMFISCAL.TR60.ParamByName('VLRTPARC02').AsFloat := StrToFloat(XVlr2);
    DMFISCAL.TR60.ParamByName('VLRTPARC03').AsFloat := StrToFloat(XVlr3);
    DMFISCAL.TR60.ParamByName('VLRTPARC04').AsFloat := StrToFloat(XVlr4);
    DMFISCAL.TR60.ParamByName('VLRTPARC05').AsFloat := StrToFloat(XVlr5);

    DMFISCAL.TR60.ExecSQL;
    DMFISCAL.IBTFISCAL.CommitRetaining;
    {
      if(XEdiT = true)then
      begin
      MessageBox(0, 'Dados cadastrados com sucesso!', 'Redução Z', MB_ICONINFORMATION or MB_OK);
      end;
    }
  EXCEPT
    MessageDlg('Ocorreu um erro na validação dos dados, verifique os dados informados.', mtWarning, [mbOK], 0);
    AbrirForm(TFCadReducaoZ, FCadReducaoZ, 1);
  END;
  XAlx := Bematech_FI_AberturaDoDia('0', '0');
  Mensagem('ReduçãoZ', 'Dados adicionados com sucesso!!', '', 1, 1, False, 'I');
end;

// Paulo 11/08/2010: Para atualizar a tabela R60 caso o usuario esteja consultando pelo CadReduçãoZ
Procedure Atualiza_R60_Banco;
begin
  try
    DMFISCAL.TAlx.Close;
    DMFISCAL.TAlx.SQL.Clear;
    DMFISCAL.TAlx.SQL.Add('update R60 set R60.numordem = :NUMORDEM, R60.ncontredz = :REDCZ, R60.ncontini = :CUPOMINI, R60.ncontfim = :CUPOMFIM, R60.contreinicio = :REINICIO,');
    DMFISCAL.TAlx.SQL.Add('R60.cancelamento = :CANCELAMENTO, R60.subtributaria = :SUBTRIB, R60.desconto = :DESCONTO, R60.vlrvndbruta = :VNDBRUTA, R60.vlrtgeral = :VLRTOTAL,');
    DMFISCAL.TAlx.SQL.Add('R60.alq01 = :ALQ1, R60.alq02 = :ALQ2, R60.alq03 = :ALQ3, R60.alq04 = :ALQ4, R60.alq05 = :ALQ5, R60.vlrtparc01 = :VLR1, R60.vlrtparc02 = :VLR2,');
    DMFISCAL.TAlx.SQL.Add('R60.vlrtparc03 = :VLR3, R60.vlrtparc04 = :VLR4, R60.vlrtparc05 = :VLR5, R60.imp01 = :IMP1, R60.imp02 = :IMP2, R60.imp03 = :IMP3, R60.imp04 = :IMP4, R60.imp05 = :IMP5');
    DMFISCAL.TAlx.SQL.Add('where R60.dtemissao = :DTEMISSAO');
    DMFISCAL.TAlx.ParamByName('NUMORDEM').AsString := XNequip;
    DMFISCAL.TAlx.ParamByName('REDCZ').AsInteger := StrToInt(XReducZ);
    DMFISCAL.TAlx.ParamByName('CUPOMINI').AsInteger := StrToInt(XCuponIn);
    DMFISCAL.TAlx.ParamByName('CUPOMFIM').AsInteger := StrToInt(XCuponFim);
    DMFISCAL.TAlx.ParamByName('REINICIO').AsInteger := StrToInt(XReinicio);
    DMFISCAL.TAlx.ParamByName('CANCELAMENTO').AsFloat := StrToFloat(XCancel);
    DMFISCAL.TAlx.ParamByName('SUBTRIB').AsFloat := StrToFloat(XSubTrib);
    DMFISCAL.TAlx.ParamByName('DESCONTO').AsFloat := StrToFloat(XDesconto);
    DMFISCAL.TAlx.ParamByName('VNDBRUTA').AsFloat := StrToFloat(XVendBruta);
    DMFISCAL.TAlx.ParamByName('VLRTOTAL').AsFloat := StrToFloat(XTotGeral);
    DMFISCAL.TAlx.ParamByName('ALQ1').AsFloat := StrToFloat(XAlq1);
    DMFISCAL.TAlx.ParamByName('ALQ2').AsFloat := StrToFloat(XAlq2);
    DMFISCAL.TAlx.ParamByName('ALQ3').AsFloat := StrToFloat(XAlq3);
    DMFISCAL.TAlx.ParamByName('ALQ4').AsFloat := StrToFloat(XAlq4);
    DMFISCAL.TAlx.ParamByName('ALQ5').AsFloat := StrToFloat(XAlq5);
    DMFISCAL.TAlx.ParamByName('VLR1').AsFloat := StrToFloat(XVlr1);
    DMFISCAL.TAlx.ParamByName('VLR2').AsFloat := StrToFloat(XVlr2);
    DMFISCAL.TAlx.ParamByName('VLR3').AsFloat := StrToFloat(XVlr3);
    DMFISCAL.TAlx.ParamByName('VLR4').AsFloat := StrToFloat(XVlr4);
    DMFISCAL.TAlx.ParamByName('VLR5').AsFloat := StrToFloat(XVlr5);
    DMFISCAL.TAlx.ParamByName('IMP1').AsFloat := XImp1;
    DMFISCAL.TAlx.ParamByName('IMP2').AsFloat := XImp2;
    DMFISCAL.TAlx.ParamByName('IMP3').AsFloat := XImp3;
    DMFISCAL.TAlx.ParamByName('IMP4').AsFloat := XImp4;
    DMFISCAL.TAlx.ParamByName('IMP5').AsFloat := XImp5;
    DMFISCAL.TAlx.ParamByName('DTEMISSAO').AsDate := StrToDate(XDataRZ);
    DMFISCAL.TAlx.ExecSQL;
    DMFISCAL.IBTFISCAL.CommitRetaining;
  except
    MessageDlg('Ocorreu um erro na validação dos dados, verifique os dados informados.', mtWarning, [mbOK], 0);
    AbrirForm(TFCadReducaoZ, FCadReducaoZ, 1);
  end;

end;

// Paulo 15/02/2011: Tira acento das palavras
function TiraAcentos(xTexto: string): String;
const
  XLetraA = 'áéíóúàèìòùâêîôûäëïöüãõñçÁÉÍÓÚÀÈÌÒÙÂÊÎÔÛÄËÏÖÜÃÕÑÇºª';
  XLetraB = 'aeiouaeiouaeiouaeiouaoncAEIOUAEIOUAEIOUAEIOUAONCoa';
var
  i: Integer;
begin
  for i := 1 to Length(XLetraA) do
    xTexto := StringReplace(xTexto, XLetraA[i], XLetraB[i], [rfReplaceAll]);

  Result := xTexto;
end;

function StrPosicao(iString, fString: String; xOcorrencia: Integer): Integer;
var
  xLetra, xOcorr, xResultado, xPos: Integer;
  stringCopiada: string;
begin
  xOcorr := 0;
  for xLetra := 1 to Length(fString) do
  begin
    stringCopiada := '';
    stringCopiada := copy(fString, xLetra, Length(iString));
    if iString = stringCopiada then
    begin
      xOcorr := xOcorr + 1;
      if xOcorr = xOcorrencia then
      begin
        xResultado := xLetra;
      end;
    end;
  end;
  Result := xResultado;
end;

// Edmar - 23/07/2014 - Função usada para verificar se um processo está em execução
function VerificaProcesso(xPath: String): Boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(xPath)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(xPath))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

// Edmar - 24/07/2014 - Função usada para retornar o ultimo valor válido de determinada tabela e campo
Function RetornaValorValido(Xtabela, Xcampo: String): String;
begin
  try
    DMESTOQUE.Alx5.Close;
    DMESTOQUE.Alx5.SQL.Clear;
    DMESTOQUE.Alx5.SQL.Add('SELECT MAX(CAST(' + Xcampo + ' as INTEGER)) VALIDO FROM ' + Xtabela);
    DMESTOQUE.Alx5.Open;

    Result := IntToStr(DMESTOQUE.Alx5.FieldByName('VALIDO').AsInteger + 1);
  except
    Result := '-1';
  end;
end;

// Atualiza valor de custo do produto acabado, tendo como base o proprio produto acabado
Function AtualizaValorCustoProduto_BaseProdutoAcabado(xCodProduto: Integer): Boolean;
Begin
  Result := True;
  Try
    // Localizamos um item de materia prima para chamar a outra funcção
    DMESTOQUE.Alx2.Close;
    DMESTOQUE.Alx2.SQL.Clear;
    DMESTOQUE.Alx2.SQL.Add('  SELECT itemfichatecnica.cod_estoque  FROM itemfichatecnica ');
    DMESTOQUE.Alx2.SQL.Add('   left join fichatecnica on itemfichatecnica.cod_fichatecnica = fichatecnica.cod_setor ');
    DMESTOQUE.Alx2.SQL.Add('   WHERE (FICHATECNICA.cod_estoque = :FICHA) ');
    DMESTOQUE.Alx2.ParamByName('FICHA').AsInteger := xCodProduto;
    DMESTOQUE.Alx2.Open;
    If not(DMESTOQUE.Alx2.IsEmpty)
    Then
    Begin
      AtualizaValorCustoProduto(-1, DMESTOQUE.Alx2.FieldByName('COD_ESTOQUE').AsInteger);
    End;

  Except
    Result := False;
  End;

End;

// Atualiza valor de custo do produto acabado, tendo como base um item de materia prima
Function AtualizaValorCustoProduto(xCodProduto, xCodComponente: Integer): Boolean;
var
  xValorCusto: Real;
  xRespostaConfirmacao: Integer;
begin
  if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'INDUSTRIA' then
  begin
    if xCodComponente <> -1 then
    begin
      If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Atualizar valores de custo de todos os produtos que utilizam esse componente?', '', 2, 3, False, 'c') = 2
      Then
      Begin
        // Edmar - 07/11/2014 - recalcula o valor de custo dos produtos atrelados ao componente
        // busca os produtos atrelado a essa componente
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add(' SELECT FICHATECNICA.COD_ESTOQUE PRODUTO FROM FICHATECNICA ');
        DMESTOQUE.Alx.SQL.Add(' LEFT JOIN ITEMFICHATECNICA ON ITEMFICHATECNICA.COD_FICHATECNICA = FICHATECNICA.COD_SETOR ');
        DMESTOQUE.Alx.SQL.Add(' WHERE ITEMFICHATECNICA.COD_ESTOQUE = :ESTOQUE ');
        DMESTOQUE.Alx.ParamByName('ESTOQUE').AsInteger := xCodComponente;

        DMESTOQUE.Alx.Open;
        DMESTOQUE.Alx.First;
        // Se encontrou produtos a serem atualizados, percorreremos todos atualizando seus custos
        While not DMESTOQUE.Alx.Eof do
        Begin
          // Alex: 17/03/2017 - Retornamos o custo total de componentes do produto a ser atualizado
          DMESTOQUE.Alx1.Close;
          DMESTOQUE.Alx1.SQL.Clear;
          DMESTOQUE.Alx1.SQL.Add('  Select sum(itemfichatecnica.quantidade * estoque.vlrcompsd) as custo from itemfichatecnica ');
          DMESTOQUE.Alx1.SQL.Add('   left join fichatecnica on itemfichatecnica.cod_fichatecnica = fichatecnica.cod_setor ');
          DMESTOQUE.Alx1.SQL.Add('   left join estoque on itemfichatecnica.cod_estoque = estoque.cod_estoque ');
          DMESTOQUE.Alx1.SQL.Add('    where fichatecnica.cod_estoque=:FichaTecnica ');
          DMESTOQUE.Alx1.ParamByName('FichaTecnica').AsString := DMESTOQUE.Alx.FieldByName('PRODUTO').AsString;
          DMESTOQUE.Alx1.Open;

          If FiltraTabela(DMESTOQUE.TEstoque, 'Estoque', 'COD_ESTOQUE', DMESTOQUE.Alx.FieldByName('PRODUTO').AsString, '') = True
          Then
          Begin
            DMESTOQUE.TEstoque.Edit;
            DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsCurrency;
            DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency := DMESTOQUE.Alx1.FieldByName('custo').AsCurrency;
            DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency := DMESTOQUE.Alx1.FieldByName('custo').AsCurrency;
            DMESTOQUE.TEstoque.Post;
            Try
              DMESTOQUE.TransacEstoque.CommitRetaining;
            Except
            end;
            Try
              CalculoLucrativadeProduto(DMESTOQUE.Alx.FieldByName('PRODUTO').AsInteger);
            Except
            end;
          End;
          DMESTOQUE.Alx.Next;
        end;
        Mensagem(' I N F O R M A Ç Ã O ', 'Valor de custo atualizado com sucesso!', '', 1, 1, False, 'I');
      End;
    end;
  end;
end;

function ValidarChaveNFe(const ChaveNFe: string): Boolean;
const
  PESO: Array [0 .. 43] of Integer = (4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 0);
var
  Retorno: Boolean;
  aChave: Array [0 .. 43] of Char;
  soma: Integer;
  Verif: Integer;
  i: Integer;
begin
  Result := True;

  try
    if (ChaveNFe = '') OR (ChaveNFe = '0') then
    begin
      Result := False;
      Exit;
    end;

    if not Length(ChaveNFe) = 44 then
      Result := False;

    StrPCopy(aChave, StringReplace(ChaveNFe, ' ', '', [rfReplaceAll]));
    soma := 0;

    for i := Low(aChave) to High(aChave) do
      soma := soma + (StrToInt(aChave[i]) * PESO[i]);

    if soma = 0 then
      Result := False;

    soma := soma - (11 * (trunc(soma / 11)));
    if (soma = 0) or (soma = 1) then
      Verif := 0
    else
      Verif := 11 - soma;

    Result := Verif = StrToInt(aChave[43]);
  except
    Result := False;
  end;
end;

procedure WinInet_HttpGet(const Url: string; Stream: TStream);
const
  BuffSize = 1024 * 1024;
var
  hInter: HINTERNET;
  UrlHandle: HINTERNET;
  BytesRead: DWord;
  Buffer: Pointer;
begin
  hInter := InternetOpen('', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  if Assigned(hInter) then
  begin
    Stream.Seek(0, 0);
    GetMem(Buffer, BuffSize);
    try
      UrlHandle := InternetOpenUrl(hInter, PChar(Url), nil, 0, INTERNET_FLAG_RELOAD, 0);
      if Assigned(UrlHandle) then
      begin
        repeat
          InternetReadFile(UrlHandle, Buffer, BuffSize, BytesRead);
          if BytesRead > 0 then
            Stream.WriteBuffer(Buffer^, BytesRead);
        until BytesRead = 0;
        InternetCloseHandle(UrlHandle);
      end;
    finally
      FreeMem(Buffer);
    end;
    InternetCloseHandle(hInter);
  end
end;

procedure GetQrCode(Width, Height: word; const Data: string; StreamImage: TMemoryStream);
var
  EncodedURL: String;
begin
  EncodedURL := Format(UrlGoogleQrCode, [Width, Height, 'L', HTTPEncode(Data)]);
  WinInet_HttpGet(EncodedURL, StreamImage);
end;

function FormataTelefone(xTelefone: String): String;
var
  s: string;
  Tam: Integer;
begin
  s := StringReplace(Trim(TrimRight(TrimLeft(TiraCaracter(TiraCaracter(TiraCaracter(xTelefone, '-'), ')'), '(')))), ' ', EmptyStr, [rfReplaceAll]);
  Tam := Length(s);

  case Tam of
    8: // Ex: 37212121
      begin
        Result := copy(s, 1, 4) + '-' + copy(s, 5, 4);
      end;
    10: // Ex: 3237212121 = (32) 3721-2121
      begin
        Result := '(' + copy(s, 1, 2) + ') ' + copy(s, 3, 4) + '-' + copy(s, 7, 4);
      end;
    11: // Ex: 13237212121 = +1(32) 3721-2121
      begin
        Result := '+' + copy(s, 1, 1) + '(' + copy(s, 2, 2) + ') ' + copy(s, 4, 4) + '-' + copy(s, 8, 4);
      end;
    12: // Ex: 553237212121 = +55(32) 3721-2121
      begin
        Result := '+' + copy(s, 1, 2) + '(' + copy(s, 3, 2) + ') ' + copy(s, 5, 4) + '-' + copy(s, 9, 4);
      end;
  else
    Result := s;
  end;
end;

function ValidarEmail(EMailIn: string): Boolean;
const
  CaraEsp: array [1 .. 40] of string[1] =
    ('!', '#', '$', '%', '¨', '&', '*',
    '(', ')', '+', '=', '§', '¬', '¢', '¹', '²',
    '³', '£', '´', '`', 'ç', 'Ç', ',', ';', ':',
    '<', '>', '~', '^', '?', '/', '', '|', '[', ']', '{', '}',
    'º', 'ª', '°');
var
  i, cont: Integer;
  EMail: ShortString;
begin
  EMail := EMailIn;
  Result := True;
  cont := 0;
  if EMail <> '' then
  begin
    if (Pos('@', EMail) <> 0) and (Pos('.', EMail) <> 0) then // existe @ .
    begin
      if (Pos('@', EMail) = 1) or (Pos('@', EMail) = Length(EMail)) or (Pos('.', EMail) = 1) or (Pos('.', EMail) = Length(EMail)) or (Pos(' ', EMail) <> 0) then
        Result := False
      else
      begin // @ seguido de . e vice-versa
        if (abs(Pos('@', EMail) - Pos('.', EMail)) = 1) then
          Result := False
        else
        begin
          for i := 1 to 40 do // se existe Caracter Especial
          begin
            if Pos(CaraEsp[i], EMail) <> 0 then
              Result := False;
          end;

          for i := 1 to Length(EMail) do
          begin // se existe apenas 1 @
            if EMail[i] = '@' then
              cont := cont + 1; // . seguidos de .
            if (EMail[i] = '.') and (EMail[i + 1] = '.') then
              Result := False;
          end;

          // . no f, 2ou+ @, . no i, - no i, _ no i
          if (cont >= 2) or (EMail[Length(EMail)] = '.')
            or (EMail[1] = '.') or (EMail[1] = '_')
            or (EMail[1] = '-') then
            Result := False;
          // @ seguido de COM e vice-versa
          if (abs(Pos('@', EMail) - Pos('com', EMail)) = 1) then
            Result := False;
          // @ seguido de - e vice-versa
          if (abs(Pos('@', EMail) - Pos('-', EMail)) = 1) then
            Result := False;
          // @ seguido de _ e vice-versa
          if (abs(Pos('@', EMail) - Pos('_', EMail)) = 1) then
            Result := False;
        end;
      end;
    end;
  end
  else
    Result := False;
end;

function CopySemCortarPalavra(Texto: String; Tamanho: Integer; StartIndex: Integer; out OutTamanho: Integer): String;
begin
  if (Length(Texto) > Tamanho) then
  begin
    while ((copy(Texto, StartIndex + Tamanho, 1) <> ' ') and (Tamanho < Length(Texto))) do
    begin
      INC(Tamanho);
    end;
  end;
  OutTamanho := Tamanho;
  Result := copy(Texto, StartIndex, Tamanho);
end;

// Edmar - 19/01/2016 - Função auxiliar para recuperar a aliquota que deve
// ser usada no calculo do ICMS da UF de destino
function RecuperaAliqInterestadual(xOrigem, xDestino: String): Real;
const
  xEstadosDestino: Array [1 .. 21] of string = ('AC', 'AM', 'RO', 'RR', 'PA', 'AP', 'TO', 'MT', 'MS', 'GO',
    'DF', 'MA', 'PI', 'CE', 'RN', 'PB', 'PE', 'AL', 'SE', 'BA', 'ES');
var
  xSul, xSudeste: Boolean;
begin
  Result := 0;

  if xOrigem = xDestino then
    Exit;

  xSul := False;
  xSudeste := False;

  // verifica se o estado de origem está incluso no array
  case AnsiIndexStr(UpperCase(xOrigem), ['PR', 'SC', 'RS', 'SP', 'RJ', 'MG']) of
    0, 1, 2:
      xSul := True;
    3, 4, 5:
      xSudeste := True;
  end;

  // se a origem for sul ou sudeste
  if (xSul) OR (xSudeste) then
  begin
    // verifica se o destino está entre os incluidos no Array.
    if AnsiIndexText(UpperCase(xDestino), xEstadosDestino) <> -1 then
    begin
      Result := 7;
      Exit;
    end;
  end;

  Result := 12;
end;

function RecuperaAliqInternaIcms(xOrigem: String): Real;
begin
  //
  Result := 0;
  try
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' SELECT ESTADO.ALIQINTERNA ALIQ FROM ESTADO WHERE ESTADO.UF_ESTADO = :ORIGEM ');
    MDO.QConsulta.ParamByName('ORIGEM').AsString := xOrigem;
    MDO.QConsulta.Open;

    if not MDO.QConsulta.IsEmpty then
      Result := MDO.QConsulta.FieldByName('ALIQ').AsCurrency
    else
      Result := 0;
  except
    Result := 0;
  end;
end;

function RecuperaAliqInterestadualUF(XUf: String): Real;
begin
  //
  Result := 0;
  try
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' SELECT ESTADO.ALIQINTERESTAUAL ALIQ FROM ESTADO ');
    MDO.QConsulta.SQL.Add(' WHERE ESTADO.UF_ESTADO = :UF ');
    MDO.QConsulta.ParamByName('UF').AsString := XUf;
    MDO.QConsulta.Open;

    if not MDO.QConsulta.IsEmpty then
      Result := MDO.QConsulta.FieldByName('ALIQ').AsCurrency
    else
      Result := 0;
  except
    Result := 0;
  end;
end;

procedure VerificaDiretorio(const dir: String);
var
  Diretorio: String;
begin
  if not DirectoryExists(dir)
  then
  begin
    ForceDirectories(dir);
  end;
end;

function ExtraiNumeros(Texto: String): String;
var
  nI: Integer;
  TextoLimpo: String;
begin
  TextoLimpo := '';
  for nI := 1 to Length(Texto) do
  begin
    if Texto[nI] in ['0' .. '9', ','] then
      TextoLimpo := TextoLimpo + Texto[nI];
  end;
  Result := TextoLimpo;
end;

// Cassiano Baltazar - 09/01/1990: Função para retornar as informações do CNPJ
function Get(AUrl, AHeader: SockString): string;
var
  OStatus: Integer;
  OHeader: PSockString;
begin
  Result := UTF8ToString(TWinHTTP.Get(AUrl, AHeader, True, @OHeader, @OStatus));
  if ((OStatus <> 200) and (OStatus <> 199)) then
    raise Exception.Create('Erro no Get - Response: ' + Result);
end;

function GetCNPJInfo(const ACNPJ: string): TClientDataSet;
const
  Url = 'https://receitaws.com.br/v1/cnpj/%s';
var
  GetResultado: string;
  Json: Variant;
begin
  GetResultado := Get(Format(url, [ExtraiNumeros(ACNPJ)]), '');

  Json := _Json(StringToUTF8(GetResultado));
  if ((Json.Exists('status')) and (Json.Exists('message')) and (Json.status = 'ERROR')) then
    raise Exception.Create('Erro ao buscar o CNPJ! Erro: ' + Json.message);

  Result := TClientDataSet.Create(Application);
  Result.FieldDefs.Add('nome', ftString, 255);
  Result.FieldDefs.Add('fantasia', ftString, 255);
  Result.FieldDefs.Add('abertura', ftString, 255);
  Result.FieldDefs.Add('cep', ftString, 255);
  Result.FieldDefs.Add('bairro', ftString, 255);
  Result.FieldDefs.Add('logradouro', ftString, 255);
  Result.FieldDefs.Add('numero', ftString, 255);
  Result.FieldDefs.Add('municipio', ftString, 255);
  Result.FieldDefs.Add('uf', ftString, 255);
  Result.FieldDefs.Add('porte', ftString, 255);
  Result.FieldDefs.Add('email', ftString, 255);
  Result.FieldDefs.Add('telefone', ftString, 255);
  Result.FieldDefs.Add('inscricao_estadual', ftString, 255);
  Result.FieldDefs.Add('codigo_municipio', ftString, 255);
  Result.FieldDefs.Add('codigo_uf', ftString, 255);
  Result.CreateDataSet;

  Result.Append;
  if Json.Exists('nome') then
    Result.FieldByName('nome').Value := Json.nome;
  if Json.Exists('fantasia') then
    Result.FieldByName('fantasia').Value := Json.fantasia;
  if Json.Exists('abertura') then
    Result.FieldByName('abertura').Value := Json.abertura;
  if Json.Exists('cep') then
    Result.FieldByName('cep').Value := Json.cep;
  if Json.Exists('bairro') then
    Result.FieldByName('bairro').Value := Json.bairro;
  if Json.Exists('logradouro') then
    Result.FieldByName('logradouro').Value := Json.logradouro;
  if Json.Exists('numero') then
    Result.FieldByName('numero').Value := Json.numero;
  if Json.Exists('municipio') then
    Result.FieldByName('municipio').Value := Json.municipio;
  if Json.Exists('uf') then
    Result.FieldByName('uf').Value := Json.uf;
  if Json.Exists('porte') then
    Result.FieldByName('porte').Value := Json.porte;
  if Json.Exists('email') then
    Result.FieldByName('email').Value := Json.email;
  if Json.Exists('telefone') then
    Result.FieldByName('telefone').Value := Json.telefone;
  if Json.Exists('inscricao_estadual') then
    Result.FieldByName('inscricao_estadual').Value := Json.inscricao_estadual;

  if Json.Exists('ibge') then
  begin
    if Json.ibge.Exists('codigo_municipio') then
      Result.FieldByName('codigo_municipio').Value := Json.ibge.codigo_municipio;
    if Json.ibge.Exists('codigo_uf') then
      Result.FieldByName('codigo_uf').Value := Json.ibge.codigo_uf;
  end;

  Result.Post;
end;

function FilterJustAlphaNum(const AValue: String): String;
const
  CHARS = ['0'..'9', 'a'..'z', 'A'..'Z'];
var
  I: Integer;
  Valor: String;
begin
  Valor := Trim(AValue);
  for I := 1 to Length(Valor) do
    if (Valor[I] in CHARS) then
      Result := Result + Valor[I];

  Result := Trim(Result);
end;

function GetPlacaInfo(const APlaca: string): TClientDataSet;
const
  Url = 'https://wdapi.com.br/placas/%s/%s';
  Token = '243b63ed539ad2c0b6af58c2f00137b9';
var
  GetResultado: string;
  Json: Variant;
begin
  GetResultado := Get(Format(url, [FilterJustAlphaNum(APlaca), Token]), '');

  Json := _Json(StringToUTF8(GetResultado));
  if ((Json.Exists('status')) and (Json.Exists('message')) and (Json.status = 'ERROR')) then
    raise Exception.Create('Erro ao buscar o CNPJ! Erro: ' + Json.message);

  Result := TClientDataSet.Create(Application);
  Result.FieldDefs.Add('MARCA', ftString, 255);
  Result.FieldDefs.Add('MODELO', ftString, 255);
  Result.FieldDefs.Add('MARCAMODELO', ftString, 255);
  Result.FieldDefs.Add('ANO', ftString, 255);
  Result.FieldDefs.Add('COR', ftString, 255);
  Result.FieldDefs.Add('CHASSI', ftString, 255);
  Result.FieldDefs.Add('MOTOR', ftString, 255);
  Result.CreateDataSet;

  Result.Append;
  if Json.Exists('MARCA') then
    Result.FieldByName('MARCA').Value := Json.MARCA;
  if Json.Exists('MODELO') then
    Result.FieldByName('MODELO').Value := Json.MODELO;
  if Json.Exists('MARCAMODELO') then
    Result.FieldByName('MARCAMODELO').Value := Json.MARCAMODELO;
  if Json.Exists('ANO') then
    Result.FieldByName('ANO').Value := Json.ANO;
  if Json.Exists('COR') then
    Result.FieldByName('COR').Value := Json.COR;
  if Json.Exists('EXTRA') then
  begin
    if Json.Exists('CHASSI') then
      Result.FieldByName('CHASSI').Value := Json.EXTRA.CHASSI;
    if Json.Exists('MOTOR') then
      Result.FieldByName('MOTOR').Value := Json.EXTRA.MOTOR;
  end;
  
  Result.Post;
end;

end.
