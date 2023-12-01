// MMMMMM          MMMMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRRRRRRRRRRRRRRRRRRRR
// MMMMMMM        MMMMMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRRRRRRRRRRRRRRRRRRRR
// MMMMMMMM      MMMMMMMM                ZZZZZZZ       RRRR              RRRR
// MMMM MMMM    MMMM MMMM           ZZZZZZZZZ          RRRRRRRRRRRRRRRRRRRRRR
// MMMM  MMMM  MMMM  MMMM       ZZZZZZZZZ              RRRRRRRRRRRRRRRRRRRRRR
// MMMM   MMMMMMMM   MMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRR         RRRRR
// MMMM    MMMMMM    MMMM    ZZZZZZZZZZZZZZZZZZZZZZ    RRRR            RRRRRR
unit Alxorprn;
{****************************************************************************************}
//Unidade de funções Estáticas Auxiliares de impressão para os sistemas da Órion Software
//Ciação     : 26/09/2003
//Criador    : Alex Arlati Mazur
//Direitos   : Os direitos estão reservados a Órion Software Ltda
//Link       : Orion Macs
//Atualização: 15/10/2008
//Versão     : 2.66
{***************************************************************************}
interface

uses
  SysUtils, Classes, Forms, Dialogs, Windows, IBQuery, IBDataBase, DB, Buttons,
    AlxMessage,
  messages, Printers, UDMEstoque, UMenu, Alxor32, UDMMacs, Graphics,
    UDMSaida,
  UDMCaixa, UPedVenda, abarra, ComObj, Excelxp, Winspool, URelEstoque,
    UnitDeclaracoes,
  RpBase, RpSystem, RpDefine, RpRave;

//FUNÇÕES DA ECF SCHALTER
// Vende Item
function ecfVenda_Item(codigo: string; descricao: string; qtdeItemInt: string;
  qtdeItemFrac: string; valor: string; taxa: integer): integer; stdcall; external
  'dll32phi.dll';
// Imprimi cabeçalho
function ecfImpCab(byTipo: integer): integer; stdcall; external 'dll32phi.dll';
// Cancela Venda ou ainda cancela o cupom não fiscal
function ecfCancVenda(operador: string): integer; stdcall; external
  'dll32phi.dll';
// Cancela item em qualquer posicao do cupom
function ecfCancItemDef(item: string; descricao: string): integer; stdcall;
  external 'dll32phi.dll';
// cancela o último cupom fiscal ou não fiscal emitido
function ecfCancDoc(operador: string): integer; stdcall; external
  'dll32phi.dll';
// Enviado sempre apos a impressao do cabecalho
function ecfInicCupomNFiscal(byTipo: integer): integer; stdcall; external
  'dll32phi.dll';
// serve para realizar o pagamento assim como para cancelar o último pagamento realizado
function ecfPagamento(tipo: integer; pos: string; valor: string; linhaMens:
  integer): integer; stdcall; external 'dll32phi.dll';
// serve para realizar um pagamento à vista assim como para cancelar o último pagamento à vista realizado
function ecfPagCancPag(tipo: integer; descr: string; valor: string; mens:
  integer; linhaMens: integer): integer; stdcall; external 'dll32phi.dll';
// serve para realizar um pagamento à prazo assim como para cancelar o último pagamento à prazo realizado.
function ecfPrazoCancPrazo(tipo: integer; descr: string; valor: string; mens:
  integer; linhaMens: integer): integer; stdcall; external 'dll32phi.dll';
// totaliza todas as operações feitas até o comando, e ainda eh permitido continuação da transação
function ecfSubTotal: integer; stdcall; external 'dll32phi.dll';
// serve para realizar um desconto ou acréscimo no subtotal
function ecfCancAcresDescSubTotal(acres: integer; tipo: integer; descr: string;
  valor: string): integer; stdcall; external 'dll32phi.dll';
// calculos para fechamento do cupom, imprimindo o TOTAL, o TROCO e o rodape do cupom. É obrigatoria para concluir com sucesso o cupom
function ecfFimTrans(operador: string): integer; stdcall; external
  'dll32phi.dll';
// Leitura X
function ecfLeituraX(operador: string): integer; stdcall; external
  'dll32phi.dll';
// Redução Z
function ecfReducaoZ(operador: string): integer; stdcall; external
  'dll32phi.dll';
// Autentica
function ecfAutentica(szLinha: string): integer; stdcall; external
  'dll32phi.dll';
// Programa forma de pagamento
function ecfPayPatterns(szPosTab: string; szTitulo: string): integer; stdcall;
  external 'dll32phi.dll';
// FUNÇÃO DE VENDA
function ecfVendaItem3d(codigo: string; descricao: string; qtde: string; valor:
  string; taxa: integer; unidade: string; digito: string): integer; stdcall;
  external 'dll32phi.dll';
//Este comando fornece o status de uma determinada forma de pagamento.
function ecfStatusPayTypes(posicao: integer): PChar; stdcall; external
  'dll32phi.dll';
// Cancela ultimo Item
function ecfCancItem(descricao: string): integer; stdcall; external
  'dll32phi.dll';
//Abre gaveta
function ecfAbreGaveta(): integer; stdcall; external 'dll32phi.dll';
// Status da impressora
function ecfStatusImp(): PChar; stdcall; external 'dll32phi.dll';
// fornece informações do cupom
function ecfStatusCupom(flag_geral: integer): PChar; stdcall; external
  'dll32phi.dll';
// faz desconto ou cancelamento de desconto
function ecfDescItem(tipo: integer; descr: string; valor: string): integer;
  stdcall; external 'dll32phi.dll';
//Função responsável por emitir Cupom Fiscal de Determinada saída
function Ecf_GeraMensagemPromocional(XCOD_EMISSOR: Integer): Boolean;
//função pra imprimir cheque em ctas_pagar e emitissão de cheque
function Imprimir_Cheque(XContador: integer): boolean;
// seleciona configuração da pagina pra cheque
function ConfigPag_Cheque: boolean;
// retorna a descrição do mes conforme o numero
function Retorna_Mes(Num_Mes: integer): string;
// converte para maiusculo a primeira letra de cada palavra
function ConverteMaiuscula(Texto: string): string;
// seleciona configurações do cheque
function Config_Cheque: boolean;
// seleciona os itens de configuração do cheque
function ItensConfig_Cheque: string;
// filtra tabelas pra selecionar a cidade da loja
function Select_Cidade: string;
// preenche com X o restante da linha do cheque
function Preenche_Linha(num_caracter: integer): string;
// retorna o numero de clientes que estão com conta atrasada em um determinado periodo
function RetornaNumCliente(Data_ini: string; Data_Fim: string): integer;
// retorna o numero de fornecedores que estão no ctas a pagar
function RetornaNumFornecedores(Data_ini: string; Data_Fim: string): integer;
// Função responsável por emitir Nota Fiscal De Ordens de Serviço
function NFOS(COD_PEDIDO: Integer): Boolean;
//Imprime Dados Adicionais em Nota Fiscal DE Ordem de serviços
function NFDadosAdicionaisOS: Boolean;
//Imprime Dados do Fisco em Nota Fiscal para OS
function NFFiscoOS: Boolean;
//Imprime Impostos calculados em Nota Fiscal de os
function NFImpostosOS: Boolean;
//Imprime Produtos em Nota Fiscal de Ordem de Serviço
function NFProdutosOS: Boolean;
//Dj 15/12/2009: Gera relatorio do espelho da NF passando como parametro a tabela a que se refere PEDC, PEDV ou ORDEM
procedure GeraRelEspelhoNf(XTABELA3: string; XCODDOC: Integer);
//
procedure BuscaInfoClienteModelo2(xCodCliente: string);

{****************************
**DECLARAÇÃO DE VARIAVEIS  **
*****************************}
var
  //VARIAVEIS UTILIZADA EM IMPRESSÃO DE ETIQEUTEAS DE PRODUTO TIPO PERSONALIZADAS
  XALTPAG, XLARGPAG, XQTDETQPAG, XLINHAINI, XCOLUNAINI, XQTDCOLPAG,
    XLARGCODBARRA, XCOMPCODBARRA, XINTERVLIN, XINTERVCOL, XTAMFONTE, XTAMDESC:
    Integer;
  XTXTPERSONALIZADO: string;
  ////////
  //VARIAVEIS UTILIZADAS EM IMPRESSAO DE NF
  XNUMLIN, XImpDup, XQTDPAG, XQTDPAGIMP, XQTDITEMIMPPAG, XQTDITEM,
    XQTDDESPIMPPAG, XQTDDESP: Integer;
  XTipoNF: string;
  XLinAdicinais: Integer;
  XAuxLinAdic: Integer;
  XTotProdNF, XTotServNF: Real; //Armazena total de Produtos da nf
  //ACUMULA ERROS EM UM TEXT FILE
  XErros: TextFile;
  //VARIAVEIS PARA CONTROLE DE ECF DIRETO DLL BEMA
  iRetorno: Integer; // Variável com o retorno da função
  bRetornoEstendido: boolean;
  XLOOP: Integer;
  XTipoECF: string; //- 16/03/2009: tipo de ECF (OS, PEDVENDA..)

  XCPFCNPJ: string; // Armazena CPF/CNPJ DO CLIENTE
  XRetorno: integer;
    // eh o retorno que a função Codigo_Retorno traz para a variavel para futura verificação
  XInteiro: integer; // possui a parte do inteira do numero
  XDecimal: integer; // possui as casas decimais de um numero
  MODELO_IMPRESSORA: string; // tipo da impressora: elgin ou bematech
  PORTA_IMPRESSORA: string; // COM1, COM2 etc...
  XERRO_FUNCAO: BOOLEAN;
    // SERVE PARA COMPARAR O RESULTADO DAS FUNÇÕES, SE VERDADEIRA OU FALSA
  Executa: array[0..512] of Char; // VARIAVEL DE COMANDO PARA A IMPRESSORA SWEDA
  Resposta: string; // recebe resultado de todas as funções
  XVLRDESC: string; // valor do desconto ou acrescimo
  XNum_Fiscal: string; // possui o numero da proxima nota fiscal
  XValor_Fechamento: string; // valor do acrescimo ou desconto
  XTOTDESC: Real; //irá armazenar o desconto em moeda
  XTOTCLIENTE: integer; // armazena a qtde de clientes inadimplentes
  XTOTFORNEC: INTEGER;
    // armazena a qtde de fornecedores que a empresa ainda possui pendencias
  XNumNotaFiscal: string;
    //Armazena temporariamente o numero da nota fiscal para impressão
  XCodigoPedido: Integer;
  XMENS: string;
  XNOMECLI: string; //Nome do Cliente para mensagem
  XINFPROCON: string; // informações do procon
  XTABELAAUX: string;
  //XLinImp, XColImp, XNumPagina: Smallint;//Variaveis para controle de impressao de comprovante
  //XNovaPagina : Boolean;
  xCod_FaturaConta: Integer;
  xCodPlnCtaVista, xCodPlnCtaPrazo: Integer;
    //variaveis utilizadas para marcar o codigo das contas de compra a prazo e compra a vista
  {************************
  **DECLARAÇÃO DE FUNÇÕES**
  *************************}

function LexAbreCupom(CPF: string): Boolean;
function LexVerificaImp: Boolean;
function Analisa_iRetorno: Boolean;
function Retorno_Impressora: Boolean;
//   Function LexVendItem:Boolean;
   //Função para retornar o nome da impressora padrão
function GetDefaultPrinterName: string;

{****************************
**DECLARAÇÃO DE PROCEDURES **
*****************************}
  //Procedure utilizada para imprimir etiquetas de produtos no formato 2 Colunas por 12 Linhas com papel de 15Cm de largura 30.05 Cm de Comprimento
  //Levando em consideração que a tabela utilizada é: DMESTOQUE.TREL sendo necessário os seguintes campos renomeados
  //CODFAB - Código Fabricante;  MARCA - marca do subproduto; DESCR - Descrição do Similar; PRECO - Preço a ser impresso; CODCOMPOSTO - Código Composto do produto; CODBARRA - Este valor será transformado em código de barras ( todos os valores pode m ser substituidos por outros porém estes campos devem existir
  //QTD - Qunatidade lançada e o mesmo Nº de etiquetas a ser impressa
  //O valor Passado a procedure EAN13:   iNDICA SE O CÓDIGO DE BARRAS DA TABELA E TIPO EAN13 OU NÃO
procedure PrnEtiq2X12(EAN13: Boolean; CODBAR: INTEGER; QTD: Integer);
//Procedure utilizada para mudar a impressora padrão do windows e depois retornar
procedure mudaimpressoraPadrao(PrinterName: string);
//Mostra tamanho do papel
procedure MostraTamPapel;
function PegaTamanhoPapel(dmPaperSize: word): string;
procedure MostraDevMode(const M: TDevMode);

//Procedure utilizada para imprimir etiquetas de produtos no formato personalizado em banco
//Levando em consideração que a tabela utilizada é: DMESTOQUE.TREL sendo necessário os seguintes campos renomeados
//CODFAB - Código Fabricante;  MARCA - marca do subproduto; DESCR - Descrição do Similar; PRECO - Preço a ser impresso; CODCOMPOSTO - Código Composto do produto; CODBARRA - Este valor será transformado em código de barras ( todos os valores pode m ser substituidos por outros porém estes campos devem existir
//QTD - Qunatidade lançada e o mesmo Nº de etiquetas a ser impressa
//O valor Passado a procedure EAN13:   iNDICA SE O CÓDIGO DE BARRAS DA TABELA E TIPO EAN13 OU NÃO
procedure PrnEtiqPerson02(EAN13: Boolean; CODBAR: INTEGER; XQTD: Integer);

//Procedure utilizada para imprimir etiquetas de produtos no formato personalizado em banco
//Levando em consideração que a tabela utilizada é: DMESTOQUE.TREL sendo necessário os seguintes campos renomeados
//CODFAB - Código Fabricante;  MARCA - marca do subproduto; DESCR - Descrição do Similar; PRECO - Preço a ser impresso; CODCOMPOSTO - Código Composto do produto; CODBARRA - Este valor será transformado em código de barras ( todos os valores pode m ser substituidos por outros porém estes campos devem existir
//QTD - Qunatidade lançada e o mesmo Nº de etiquetas a ser impressa
//O valor Passado a procedure EAN13:   iNDICA SE O CÓDIGO DE BARRAS DA TABELA E TIPO EAN13 OU NÃO
procedure PrnEtiqPerson(EAN13: Boolean; CODBAR: INTEGER; XQTD: Integer);
//Procedure utilizada para imprimir etiquetas de produtos no formato personalizado em banco
//Levando em consideração que a tabela utilizada é: DMESTOQUE.TREL sendo necessário os seguintes campos renomeados
//CODFAB - Código Fabricante;  MARCA - marca do subproduto; DESCR - Descrição do Similar; PRECO - Preço a ser impresso; CODCOMPOSTO - Código Composto do produto; CODBARRA - Este valor será transformado em código de barras ( todos os valores pode m ser substituidos por outros porém estes campos devem existir
//QTD - Qunatidade lançada e o mesmo Nº de etiquetas a ser impressa
//O valor Passado a procedure EAN13:   iNDICA SE O CÓDIGO DE BARRAS DA TABELA E TIPO EAN13 OU NÃO
procedure PrnEtiqT3C(EAN13: Boolean; CODBAR: INTEGER; QTD: Integer);
procedure PrnEtiqZ2C(EAN13: Boolean; CODBAR: INTEGER; QTD: Integer);
//Impressão de etiquetas tipo joias 1 coluna impressora argox
procedure PrnEtiqA1C(EAN13: Boolean; CODBAR: INTEGER; QTD: Integer);

//Paulo 10/12/2010: Para impressão de etiquetas para Ótica
procedure PrnEtiqPersonalOtica(EAN13: Boolean; CODBAR: INTEGER; XQTD: Integer);

//Seta como impressora padrao o valor referente em TLoja('PARAMETRO IMPRESSAO')
function SetImp(IMPRESSAO: string): Boolean;
//Função responsável por emitir Cupom Não Fiscal de Determinada saída
function CUPOM(COD_EMISSOR: Integer; TipoEmissor: string): Boolean;
//Função responsável por emitir Cupom Fiscal de Determinada saída
function ECF(COD_EMISSOR: Integer; TipoEmissor: string): Boolean;
//Função responsável por emitir Nota Fiscal de Determinada saída
function NF(COD_PEDIDO: Integer; TipoNF: string; Fatura: Boolean): Boolean;
//Filtra os registros necessarios para impressao da NF
function SelectTableNF(COD_PEDIDO: Integer; TipoNF: string): Boolean;
//Função Utilizada para imprimir determinado campo
function ImpCampo(XCampo: string; XValor: string; XTipoCampo: Char): Boolean;
//Procedure utilizada para setar valores configurados em banco para impressão de etiquetas de produto tipo personalizado
procedure GetValEtqProdPerson;
//Procedure utilizada para setar a pagina (papel) atual um novo tamanho
procedure SetPrinterPage_9x(Largura, Altura: LongInt);
//Uma procedure diferente para mudar o tamanho do papel em tprinter
procedure SetPrinterPage_Xp(PaperSize, Comp, Alt: integer);
//Procedure utilizada para atualizar as informa'c~oes da impressora Forca a captura das propriedades passadas para a impressora padrao
procedure SetarImpressora;
//Verifica se a impressora esta on-line
function VerImpressoraONLINE: Cardinal;
//função complementar da Verifica impressora Online
function GetCurrentPrinterHandle: THandle;
//Imprime (exporta) para o excell o confronto entre contas a pagar e receber agrupados em vencimentos de 30/60/90/120 e mais de 120 dias
procedure ImpRelCtaPR306090120;
//Imprime o confronto entre contas a pagar e receber agrupados em vencimentos de 30/60/90/120 e mais de 120 dias de forma resumida
procedure ImpRelResCtaPR306090120;
//Verifica se ocorreu algum erro ao enviar comonado para impressora de cupom fiscal
//Imprime Relatorio de todas as contas a pagar e a receber agrupadas por mes
procedure ImpRelCtaPRVencMes;
//Caso erro em ECF
function ErroECF: Boolean;
//Imprime cabeçalho em Nota Fiscal
function NFCabecalho: Boolean;
//Imprime cabeçalho em Nota Fiscal de Ordem de Serviço
function NFCabecalhoOS: Boolean;
//Seleciona e Imprime a Fatura da Ordem de Serviço
function NFFaturaOS(Cod_Ordem: Integer; XSQLTabela: string; XCONTROLEREL:
  Integer): Boolean;
//Imprime Produtos em Nota Fiscal
function NFProdutos: Boolean;
//Imprime Serviços em Nota Fiscal
function NFServicos: Boolean;
//Imprime Despesas em Nota Fiscal
function NFDespesas: Boolean;
//Imprime Impostos calculados em Nota Fiscal
function NFImpostos: Boolean;
//Imprime Impostos marcados com x em Nota Fiscal
function NFImpostosX: Boolean;
//Imprime Transportador em Nota Fiscal
function NFTransportadora: Boolean;
//Imprime Dados Adicionais em Nota Fiscal
function NFDadosAdicionais: Boolean;
//Imprime Dados do Fisco em Nota Fiscal
function NFFisco: Boolean;
//Função Utilizada para imprimir comprovante do pedido direto pelo modo de canvas
function ImpPedCanvas: Boolean;
//Função Utilizada para imprimir Orden de Servico direto pelo modo de canvas
function ImpOrdCanvas(Tipo: string): Boolean;
//Procedure utilizada para setar valores configurados em banco para impressão de comprovante de vendas em matricial
procedure GetValPedCanvas;
//Procedure utilizada para imprimir duplicatas no formato personalizado
procedure PrnDupPerson(XQTD: Integer; XTIPO: Integer; XCODCTA: Integer);
// Usada para LeituraX nas impressoras
function LeituraX: Boolean;
// Redução Z
function ReducaoZ: Boolean;
// Abre porta impressora
function ecfAbrePorta: Boolean;
// Fecha POrta impressora
function FechaPorta: Boolean;
// Função recebimento
function Recebimento: Boolean;
// Função autenticar
function Autenticar: Boolean;
// Função Abre cupom
function ecfAbreCupom: Boolean;
// cANCELA cUPOM
function ecfCancelaCupom: boolean;
// função para leitura X
function ecf_LeituraX: Boolean;
// analisa retorno bematech
//   Procedure Analisa_iRetorno;
// FUNCTION VENDE ITEM
function ecfVendeItem(Codigo: string; Descricao: string; Qtde: string;
  ValorUnit: string; IndiceAliquota: string; Unidade: string; Digito: string;
  Desconto: string): integer;
// FUNÇÇÃO INICIA FECHAMENTO
function ecfIniciaFechamento(XTOTDESC: Real): boolean;
// Function pagar cupom
function ecfPaga_Cupom(COD_EMISSOR: Integer; XVALOR: Real): BOOLEAN;
// Procedure para forma de pagamento
function ecfForma_Pagamento(COD_EMISSOR: INTEGER): integer;
// Procedimento para fechar cupom, imprimir total troco
function ecfFecha_Cupom(XMENS: string): boolean;
// Procedimento para selecionar a parte inteira do valor
function Numero_Inteiro: string;
// Procedure que seleciona apenas a parte fracionaria de um valor, casas decimais
function Casas_Decimais: string;
// procedure para abrir gaveta
function ecfOpenGaveta: Boolean;
// verifica o estado do papel da impressora
procedure Status_Papel;
// lança as informações da impressora
function Status_Cupom: string;
// Cada função da elgin traz um retorno, esse codigo eh comparado e exibido a descrição
function Codigo_Retorno(Codigo: integer): Boolean;
// Seleciona todos os dados do caixa
function Dados_Caixa(COD_CAIXA: string): boolean;
// Verifica estado da impressora
procedure Status_Impressora;
// procedimento para vender item no emulador
procedure Vende_Item_Emulador;
// Procedure para cancelar ultimo item das impressoras
procedure Cancela_Ultimo_Item;
//DJ 16/12/2009: Pesquisa dados de uma cfop para espelhoNF
procedure PesquisaDadosCFOP(XTABELA2: string; XCAMPO: string; XCODDOC: Integer);
// Procedure para iniciar fechamento de venda do emulador
function Inicia_Fechamento_Emulador(VALOR_DESCONTO: string): boolean;
//Função utilizada para substituir algum caracter da string por outro
function SubstituiCaracter(Valor: string; XCaracApag: string; XCaracInsert:
  string): string;
// Function pagar cupom emulador
function PagaCupom_Emulador(EdVlrPag: string): boolean;
// função para localizar palavra
function Localiza_palavra(Texto: string; localizar: string): boolean;
// função para apagar item de qualquer posição
function Cancela_Item_Pos(posicao: integer): boolean;
// Função utilizada para buscar o CARACTER indicado
function Procura_Caracter(Valor: string; Caracter: string): string;
// Função para verificar a impressora, se o usuario possui ou nao
function Verifica_Impressora: boolean;
// função para implementar o numero do cupom fiscal
function Verifica_CupomFiscal: boolean;
// Função para gerar comprovante de faturamento
function ImpReciboFatura(Cliente: string; Endereco: string; Valor: string;
  ValorPorExtenso: string; Historico: string; CodPessoa: string; Parcela: string):
  Boolean;
//Função para gerar comprovante do faturamente de varias faturas (FaturaContas)
function ImpReciboFaturaContas(COD_GERADOR: Integer; TIPOGERADOR: string;
  TIPOOP: string): Boolean;
//Função para imprimir comprovantes de faturas do FaturaCOnta
function ImpComprovanteFaturas: Boolean;
//Matheus - 16/03/2016 - Função para imprimir comprovante de faturas do FaturaContaResumido
function ImpComprovanteFaturasResumido: Boolean;
//Função para imprimir dados da faturas
function ImpComprovanteFaturasDados: Boolean;
//Matheus - 16/03/2016 - Função Utilizada para imprimir dados resumidos da fatura
function ImpComprovanteFaturasDadosResumido: Boolean;
//Função para filtrar os dados dos servicos
function ImpComprovanteFaturasFiltraServicos(CODIGO: Integer): Boolean;
//Função para filtrar os dados dos produtos
function ImpComprovanteFaturasFiltraProdutos(CODIGO: Integer): Boolean;
//Função para filtrar os itens pelo cod_ordem
function FiltraItens(COD_CONTAS: Integer): Boolean;
//Função para imprimir o cabeçãlho dos Produtos
function ImpComprovanteFaturasCabecalhoItens: Boolean;
//Função para imprimir o cabeçãlho dos Serviços
function ImpComprovanteFaturasCabecalhoFaturas: Boolean;
//Edmar - 16/05/2014 - Imprimi cabeçalho dos dados financeiros em aberto
function ImpComprovanteFaturasCabecalhoFinancAbert: Boolean;
//Edmar - 16/05/2014 - Filtra parcelas em aberto
procedure FiltraFinancAbert;
//Alex 28/11/2014 - Imprime relatorio geral de movimentações financeiras
function ImpRelGMovFinanceiras: Boolean;
//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Pedido de Venda Sintetico
function ImpRelGMovFinanceiras_PVSintetico: Boolean;
//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Pedido de Venda Sintetico
function ImpRelGMovFinanceiras_PCSintetico: Boolean;
//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Lançamento de Caixas
function ImpRelGMovFinanceiras_CaixaSintetico: Boolean;
//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Conta Corrente
function ImpRelGMovFinanceiras_CtaCorrente: Boolean;
//Alex 01/12/2014 - Função para retornar o Saldo correto do caixa para o relatório
function ImpRelGMovFinanceiras_CaixaSintetico_Saldo(xCodCaixa: Integer): Real;
//Alex 01/12/2014 - Função para retornar o Saldo correto da cta corrente para o relatório
function ImpRelGMovFinanceiras_CtaCorrente_Saldo(xCodCaixa: Integer): Real;
//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Filtros aplicados
function ImpRelGMovFinanceiras_Filtros: Boolean;
//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Ordens de Serviço Sintetico
function ImpRelGMovFinanceiras_OSSintetico: Boolean;
//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Recebimentos Sintetico
function ImpRelGMovFinanceiras_RecebimentosSintetico: Boolean;
//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Pagamentos Sintetico
function ImpRelGMovFinanceiras_PagamentosSintetico: Boolean;
//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Pagamentos de compras Sintetico
function ImpRelGMovFinanceiras_PagamentosComprasSintetico: Boolean;
//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Estoque Sintetico
function ImpRelGMovFinanceiras_EstoqueSintetico: Boolean;

function NovaPagina: Boolean;
procedure Imprime(RVRel: TRVSystem; Linha: Double; Coluna: Double; Texto:
  string; Fonte: string; TamFonte: Integer; CorFonte: TColor; Tipo: Boolean);
procedure PrintImage(RVSystem: TRvSystem; Row, Col, ImageWidth, ImageHeight:
  Double; Bitmap: TBitmap; FileName: string = '');

implementation

uses Variants, UDMConta, UDMPessoa, UDMGEOGRAFIA, UDMFinanc, UDMEntrada,
  UDmServ, UEcf, UDMFiscal, UCadReducaoZ, UDmBanco, USweda, Math,
  UPedidoPadrao, URelGeralMovimentacoesFinanceiras;

{//FUNÇÃO UTILIZADA P/ VENDER ITEM
  Function LexVendItem: Boolean;
  Begin
   iRetorno := Bematech_FI_VendeItem( Edit1.Text, Edit2.Text, Edit3.Text,
               sTipoQtde, Edit4.Text, iDecimal, Edit5.Text,
               sTipoDesconto, Edit6.Text );

    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
  End; }
// Function pagar cupom emulador
function PagaCupom_Emulador(EdVlrPag: string): boolean;
begin
  // verifica se o usuario possui impressora ou nao
  if Verifica_Impressora = false then
  begin
    Exit;
  end
  else
  begin

    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      Bematech_FI_EfetuaFormaPagamento('Dinheiro', '2,00');
    end;
    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      ecfPagamento(0, '1', '2500', 3);
    end;
    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin
      // Formatando a variavel XTOTDESC para selecionar somente 2 casas depois da virgula
      XVLRDESC := FloatToStrF(StrToFloat(EdVlrPag), ffFixed, 4, 2);

      StrPCopy(Executa, #27 + '.10' + '01' +
        ConcatZero(SubstituiCaracter(XVLRDESC, ',', ''), 12) +
        '{DINHEIRO                                                                          }');
      Resposta := EnviaComando(Executa);

      // função para localizar a palavra ERRO. Se encontrar exibe a msg p o usuario
      if localiza_palavra(Resposta, 'ERRO') = true then
      begin
        Mensagem('   S W E D A   ', Resposta, '', 1, 1, False, 'E');
      end;
    end;
  end;
end;

// Verifica estado da impressora
procedure Status_Impressora;
var
  aux, XNum: string;
  XPapel: integer;
begin
  if (MODELO_IMPRESSORA = 'BEMATECH') then
  begin
    XRetorno := Bematech_FI_MonitoramentoPapel(XPapel);

    if XPapel >= 65 then
      Mensagem('   B E M A T E C H   ', 'Pouco Papel.', '', 1, 1, False, 'E');
  end;

  // a variavel aux recebe o valor q a função retorna em binario
  if (MODELO_IMPRESSORA = 'ELGIN') then
  begin
    aux := ecfStatusImp;

    // a variavel XNum recebe soh a quinta posicao da variavel aux
    XNum := Copy(aux, 6, 1);
    // Se o resultado for 0, ainda há papel
    if XNum = '1' then
    begin
      Mensagem('N O T I F I C A Ç Ã O', 'Papel proximo do fim!', '', 1, 1, False,
        'C');
    end;
    XNum := copy(aux, 3, 5);
    if (XNum = '113') or (XNum = '108') then
    begin
      if Mensagem(' A T E N Ç Ã O ', 'ERRO: 113' + #13 + #13 +
        'DESCRIÇÃO: Fechamento do dia não realizado.' + #13 + #13 +
        'Deseja realizar a operação?', '', 2, 3, False, 'E') = 3 then
      begin
        Exit;
      end
      else
      begin
        ecfReducaoZ('0123');
      end;
    end;
  end;
end;

// procedimento para vender item no emulador
procedure Vende_Item_Emulador;
begin

  // verifica se o usuario possui impressora ou nao
  if Verifica_Impressora = false then
  begin
    Exit;
  end
  else
  begin

    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      XRetorno := Bematech_FI_VendeItem('1234567890123', 'TESTE DE VENDA', '01',
        'I', '1', 2, '2,00', '$', '0,00');
    end;
    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      // FUNÇÃO VENDE ITEM
      XRetorno := ecfVendaItem3d('20', 'PRODUTO TESTE', '001,000', '200', 1,
        'UN', '3');

      if XRetorno <> 0 then
      begin
        if Codigo_Retorno(XRetorno) = false then
          ecfCancVenda('0005');
        Exit;
      end;
    end;
    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin
      StrPCopy(Executa, #27 +
        '.0112345678912340001000000000500000000000500TESTE DE VENDA ORION    T02}');
      Resposta := EnviaComando(Executa);

      // função para localizar a palavra ENCERRADA. Se encontrar exibe a msg p o usuario
      if localiza_palavra(Resposta, 'ENCERRADA') = true then
      begin
        if Mensagem('   S W E D A   ', Resposta + #13 + #13 +
          'Deseja cancelar cupom?', '', 2, 3, False, 'E') = 3 then
        begin
          Exit;
        end
        else
        begin
          StrPCopy(Executa, #27 + '.05}');
          Resposta := EnviaCOmando(Executa);
        end;
      end;
      if (localiza_palavra(Resposta, 'ENCERRAR O DIA') = true) then
      begin
        if Mensagem('   S W E D A   ',
          'DESCRIÇÃO: Fechamento do dia não efetuado.' + #13 + #13 +
          'Deseja realizar a operação?', '', 2, 3, False, 'E') = 3 then
        begin
          Exit;
        end
        else
        begin
          ecfReducaoZ('0123');
        end;
      end;
      if localiza_palavra(Resposta, '.-P002') = TRUE then
      begin
        Mensagem('   S W E D A   ', 'É necessario abrir porta da impressora.',
          '', 1, 1, False, 'A');
      end;
    end;
  end;
end;

// Procedure para cancelar ultimo item das impressoras
procedure Cancela_Ultimo_Item;
begin

  // verifica se o usuario possui impressora ou nao
  if Verifica_Impressora = false then
  begin
    Exit;
  end
  else
  begin

    // fUNÇÃO PARA CANCELAR ULTIMO ITEM
    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      Bematech_FI_CancelaItemAnterior();
    end;
    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      XRetorno := ecfCancItem('Item Cancelado');
      if XRetorno <> 0 then
      begin
        Codigo_Retorno(XRetorno);
      end;
    end;
    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin
      StrPCopy(Executa, #27 + '.04');
      Resposta := EnviaComando(Executa);

      // função para localizar a palavra ERRO. Se encontrar exibe a msg p o usuario
      if localiza_palavra('ERRO', Resposta) = true then
      begin
        Mensagem('   S W E D A   ', Resposta, '', 1, 1, False, 'E');
      end;
      if (localiza_palavra(Resposta, 'ENCERRAR O DIA') = true) then
      begin
        Mensagem('   S W E D A   ',
          'Efetue o encerramento do dia com a Redução Z.', '', 1, 1, False, 'A');
      end;

    end;
  end;
end;

// Procedure para iniciar fechamento de venda do emulador
function Inicia_Fechamento_Emulador(VALOR_DESCONTO: string): boolean;
var
  XAux: string;
  XCod: integer;
begin

  // verifica se o usuario possui impressora ou nao
  if Verifica_Impressora = false then
  begin
    Exit;
  end
  else
  begin

    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      // FUNÇÃO INICIA FECHAMENTO
      XTOTDESC := (((StrToFloat(VALOR_DESCONTO) / 100) * 5.00));

      // Formatando a variavel XTOTDESC para selecionar somente 2 casas depois da virgula
      XAux := FloatToStrF(XTOTDESC, ffFixed, 4, 2);

      // enquanto houver virgula, fica rodando ate retirar todas da variavel XAux
      while pos(',', XAux) > 0 do
        Delete(XAux, pos(',', XAux), 1);

      if StrToInt(XAux) > 0 then
        // a variavel XCod recebe o retorno da funçã e verifica o caodigo na função Codigo_Retorno
        XCod := ecfCancAcresDescSubTotal(0, 0, 'Desconto: ', XAux);
      if XCod <> 0 then
      begin
        if Codigo_Retorno(XCod) = false then
          Exit;
      end
      else
        // a variavel XCod recebe o retorno da funçã e verifica o caodigo na função Codigo_Retorno
        XCod := ecfCancAcresDescSubTotal(1, 0, 'Acrescimo: ', XAux);
      if XCod <> 0 then
      begin
        if Codigo_Retorno(XCod) = false then
          Exit;
      end;
    end;
    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin
      // Formatando a variavel XTOTDESC para selecionar somente 2 casas depois da virgula
      XVLRDESC := FloatToStrF(StrToFloat(VALOR_DESCONTO), ffFixed, 4, 2);

      if (XVLRDESC > '0') then
      begin
        // DESCONTO NO ITEM
        StrPCopy(Executa, #27 + '.03' + 'Desconto  ' +
          ConcatZero(SubstituiCaracter(XVLRDESC, ',', ''), 12) + 'S}');
        Resposta := EnviaComando(Executa);

        // função para localizar palavra
        if (localiza_palavra(Resposta, 'ERRO')) = TRUE then
        begin
          Mensagem('   S W E D A   ', Resposta, '', 1, 1, False, 'E');
        end;
      end;
      if (XVLRDESC < '0') then
      begin
        // remove o sinal negativo do valor
        XVLRDESC := SubstituiCaracter(XVLRDESC, '-', '');
        // efetua o acrescimo no valor
        StrPCopy(Executa, #27 + '.1151' + ConcatZero(XVLRDESC, 15) + 'S}');
        Resposta := EnviaComando(Executa);

        // função para localizar a palavra ERRO. Se encontrar exibe a msg p o usuario
        if localiza_palavra(Resposta, 'ERRO') = true then
        begin
          Mensagem('   S W E D A   ', Resposta, '', 1, 1, False, 'E');
        end;
      end;
    end;
  end;
end;

// função para apagar item de qualquer posição
function Cancela_Item_Pos(posicao: integer): boolean;
begin

  // verifica se o usuario possui impressora ou nao
  if Verifica_Impressora = false then
  begin
    Exit;
  end
  else
  begin

    // FUNÇÃO CANCELA ITEM GENERICO
    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      Bematech_FI_CancelaItemGenerico(IntToStr(posicao));
    end;
    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      XRetorno := ecfCancItemDef(IntToStr(posicao), 'Item Cancelado!');
      if XRetorno <> 0 then
      begin
        Codigo_Retorno(XRetorno);
      end;
    end;

    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin
      StrPCopy(Executa, #27 + '.04' + IntToStr(posicao) + '}');
      Resposta := EnviaComando(Executa);

      if (localiza_palavra(Resposta, 'ERRO') = TRUE) then
      begin
        Mensagem('   S W E D A   ', Resposta, '', 1, 1, False, 'E');
      end;
    end;
  end;
end;

//Função utilizada para substituir algum caracter da string por outro
function SubstituiCaracter(Valor: string; XCaracApag: string; XCaracInsert:
  string): string;
var
  I: byte;
begin
  Result := '';
  for I := 1 to Length(Valor) do
  begin
    if (Valor[I] = XCaracApag) then
    begin
      Result := Result + XCaracInsert;
    end
    else
    begin
      Result := Result + Valor[i];
    end;
  end;
  SubstituiCaracter := Result;
end;

// seleciona dados do caixa
function Dados_Caixa(COD_CAIXA: string): boolean;
begin
  DMCAIXA.TCaixa.Close;
  DMCAIXA.TCaixa.SQL.Clear;
  DMCAIXA.TCaixa.SQL.Add('select * from caixa');
  DMCAIXA.TCaixa.SQL.Add('where caixa.cod_caixa = :codigo');
  DMCAIXA.TCaixa.ParamByName('codigo').AsString := COD_CAIXA;
  DMCAIXA.TCaixa.Open;

  if DMCAIXA.TCaixa.FieldByName('COD_CAIXA').AsInteger <> 0 then
  begin
    MODELO_IMPRESSORA :=
      DMCAIXA.TCaixa.FieldByName('MODELO_IMPRESSORA').AsString;
    PORTA_IMPRESSORA := DMCAIXA.TCaixa.FieldByName('PORTACUPOM').AsString;
  end
  else
  begin
    MODELO_IMPRESSORA := '';
    PORTA_IMPRESSORA := '';
  end;
end;

// seleciona o indice de pagamento ou programa o novo pagamento
function ecfForma_Pagamento(COD_EMISSOR: integer): integer;
var
  XIndice, posicao, ult_indice, num_posicao: integer;
  Nome_Pgto: string;
begin

  Result := -1;

  if (MODELO_IMPRESSORA = 'BEMATECH') then
  begin
    {      If DMESTOQUE.Alx.FieldByName('PAGAMENTO').AsString='À VISTA'
       Then Begin
            //Se a forma de pagamento for a deve - se descobrir a forma de pagamento
            If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAICA', '', '(TIPOGERADOR='+#39+'PEDVENDA'+#39+') AND (COD_GERADOR='+IntToStr(COD_EMISSOR)+')')=True
            Then Begin
                If DMCAIXA.TLanCaixa.FieldByName('TIPO').AsString='Carteira' Then//SE LANÇAMENTO FOI A VISTA TIPO CARTEIRA LANÇAMENTO É DINHEIRO
                    Result:= 1;
                If DMCAIXA.TLanCaixa.FieldByName('TIPO').AsString='Cheque' Then//PROGRAMA PAGAMENTO PARA CHEQUE
                    Result := FMenu.MPF.ProgramaFormaPagamento('CHEQUE');
                If DMCAIXA.TLanCaixa.FieldByName('TIPO').AsString='Cartão' Then//PROGRAMA PAGAMENTO PARA CARTÃO
                    Result:= FMenu.MPF.ProgramaFormaPagamento('CARTÃO');
            End;
       End
       Else Begin
       If DMESTOQUE.Alx.FieldByName('PAGAMENTO').AsString<>'À VISTA'
       Then begin
            //CASO O PAGAMENTO NÃO TENHA SIDO FEITO A VISTA PASSA FORMA DE PAGAMENTO
                       If DMESTOQUE.Alx.FieldByName('PAGFISC').AsString<>'' Then
                Result := FMenu.MPF.ProgramaFormaPagamento(DMESTOQUE.Alx.FieldByName('PAGFISC').AsString)
            Else
                Result := FMenu.MPF.ProgramaFormaPagamento('Duplicata');
       End;}
  end;
  if (MODELO_IMPRESSORA = 'ELGIN') then
  begin

    Result := 1;

    {       for XIndice:= 0 to 19 do
           Begin

               // a variavel recebe o nome do pagamento, atraves da função, conforme o numero do indice
               Nome_Pgto := ecfStatusPayTypes(XIndice);

               //excluindo as letras desnecessarias que Nome_pgto possui, a variavel posicao recebe o numero do indice correto
               posicao := Pos(DMESTOQUE.Alx.FieldByName('PAGAMENTO').AsString, Nome_Pgto);
               if posicao > 0
               Then Begin
                   Result := XIndice;
                   Exit;
               End;
           End;
           // Se caso XPAGAMENTO não tiver valor, o nome do pagamento informado eh cadastrado com o proximo indice disponivel
           If Result = -1
           Then Begin
               //ult_indice := ult_indice + 1;
               ult_indice := 1;
               XRetorno := 1;
               // LAÇO PRA ENCONTRAR PROXIMO INDICE DISPONIVEL E CADASTRAR O NOVO PAGAMENTO
               while XRetorno <> 0 do
               begin
                   // a variavel recebe o tipo de retorno da função
                   XRetorno := ecfPayPatterns(IntToStr(ult_indice), DMESTOQUE.Alx.FieldByName('PAGAMENTO').AsString);

                   if XRetorno = 0
                   THEN BEGIN
                       // programa o novo tipo de pagamento
                       XRetorno := ecfPayPatterns(IntToStr(ult_indice), DMESTOQUE.Alx.FieldByName('PAGAMENTO').AsString);
                       if XRetorno <> 0
                       Then begin
                           Codigo_Retorno(XRetorno);
                           ecfCancVenda('0005');
                           Exit;
                       end;
                       // se caso foi programado o tipo de pagamento, eh repassado o valor do indice p result
                       Result := ult_indice;
                       Exit;
                   END;
                   ult_indice := ult_indice + 1;

                   If (ult_indice = 20)
                   Then begin
                       Mensagem(' A T E N Ç Ã O ', 'As 20 Formas de Pagamento já estão cadastradas. Entre en contato com o técnico responsável.', '', 1, 1, False, 'E');
                       Exit;
                   End;
               end;
           End;   }
  end;
end;

// abre gaveta
function ecfOpenGaveta: Boolean;
begin

  // verifica se o usuario possui impressora ou nao
  if Verifica_Impressora = false then
  begin
    Exit;
  end
  else
  begin

    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      Bematech_FI_AcionaGaveta();
    end;
    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      // Função para abrir gaveta
      XRetorno := ecfAbreGaveta;

      if XRetorno <> 0 then
      begin
        Codigo_Retorno(XRetorno);
        //               ecfCancVenda('0005');
        //               Mensagem('   E L G I N   ', 'Cupom fiscal cancelado.', '', 1, 1, False, 'C');
        result := false;
        Exit;
      end;
    end;
    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin
      // ABRE GAVETA DA SWEDA
      StrPCopy(Executa, #27 + '.21}');
      Resposta := EnviaComando(Executa);

      // função para localizar a palavra ERRO. Se encontrar exibe a msg p o usuario
      if localiza_palavra('ERRO', Resposta) = true then
      begin
        Mensagem('   S W E D A   ', Resposta, '', 1, 1, False, 'E');
      end;
    end;
  end;
end;

// Cada função da elgin traz um retorno, esse codigo eh comparado e exibido a descrição
function Codigo_Retorno(Codigo: integer): Boolean;
var
  descricao: string;
begin
  case Codigo of
    00: descricao := 'Comando Ok';
    01: descricao := 'Erro de checksum';
    02: descricao := 'Timeout RX';
    03: descricao := 'Memória insuficiente';
    04: descricao := 'Impressora fora de linha ou desligada';
    10: descricao := 'Erro de sobreposição';
    11: descricao := 'Erro de paridade';
    12: descricao := 'Erro de sobreposição e paridade';
    13: descricao := 'Erro de formato';
    14: descricao := 'Erro de sobreposição e formato';
    15: descricao := 'Erro de paridade e sobreposição';
    16: descricao := 'Erro de sobreposição, paridade e fomato';
    20: descricao := 'Erro no cadastro de bancos';
    21: descricao := 'Banco não cadastrado';
    22: descricao := 'Moeda não cadastrada';
    23: descricao := 'Extenso excedido';
    65: descricao := 'Em venda';
    66: descricao := 'Limite de cabeçalho alcançado';
    68: descricao := 'Cabeçalho impresso';
    69: descricao := 'Não começou venda';
    70: descricao := 'Valor inválido';
    73: descricao := 'Valor a menor';
    74: descricao := 'Valor a maior';
    78: descricao := 'Número máximo de Redução Z alcançado';
    79: descricao := 'Erro de comunicação';
    80: descricao := 'Palavra reservada';
    81: descricao := 'Papel próximo do fim';
    82: descricao := 'Data não localizada';
    84: descricao := 'Erro de memoria fiscal';
    85: descricao := 'Perda da RAM';
    86: descricao := 'Não houve pagamento';
    87: descricao := 'Cupom já totalizado';
    88: descricao := 'Não pode cancelar venda';
    89: descricao := 'Comando não completo';
    90: descricao := 'Cupom aberto';
    91: descricao := 'Não há cupom a cancelar';
    92: descricao := 'Tabela de taxa não inicializada';
    94: descricao := 'Seleção de taxa inválida';
    95: descricao := 'Cancelamento inválido';
    96: descricao := 'Nada a retificar';
    97: descricao := 'Redução não localizada';
    98: descricao := 'Cabeçalho não carregado';
    99: descricao := 'Impressora em intervenção técnica';
    100: descricao := 'Impressora em período de venda';
    101: descricao := 'Somente com intervenção técnica';
    102: descricao := 'Desconto inválido';
    103: descricao := 'Limite de linhas alcançado';
    104: descricao := 'Somente após o total';
    105: descricao := 'Dados inválidos';
    106: descricao := 'Alteração de taxa não disponível';
    107: descricao := 'Comando inválido';
    108: descricao := 'Não houve o fechamento do dia';
    109: descricao := 'Erro irrecuperável';
    110: descricao := 'Alteração inválida';
    111: descricao := 'Data já alterada';
    112: descricao := 'Alíquota não carregada';
    113: descricao := 'Fechamento diário não realizado';
    114: descricao := 'Abertura do dia inválido';
    115: descricao := 'Fechamento já realizado';
    116: descricao := 'Ajuste somente de +/- 1';
    117: descricao := 'Acréscimo inválido';
    118: descricao := 'Pagamento incompleto';
    121: descricao := 'Erro de gravação na memória fiscal';
    126: descricao := 'Comando fora de sequência';
    127: descricao := 'Autenticação sem papel';
    132: descricao := 'Queda de energia';
    133: descricao := 'Data inválida';
    134: descricao := 'Item fora da caixa';
    135: descricao := 'Item não vendido';
    136: descricao := 'Parâmetro errado';
    137: descricao := 'Limite de valor ultrapassado';
    138: descricao := 'Relógio fora de operação';
    139: descricao := 'Pagamento não definido';
    140: descricao := 'Limite de autenticação excedido';
    141: descricao := 'Comando inválido';
    142: descricao := 'Posição já programada';
    143: descricao := 'Posição inexistente';
    144: descricao := 'Cupom vinculado pendente';
    145: descricao := 'Excesso de documentos vinculado';
    147: descricao := 'Em horario já solicitado';
    148: descricao := 'Oscilador do relógio desativado ';
    149: descricao := 'Formas de pagamento não inicializadas';
    150: descricao := 'Inscrição Estadual inválida';
    151: descricao := 'Extenso excedido';
    152: descricao := 'Cupom está com subtotal zerado';
    153: descricao := 'Codificação do GT já programada';
    154: descricao := 'Não há vinculados a cupom';
    155: descricao := 'Redução não permitida';
    156: descricao := 'Caracter repetido na codificação do GT';
    157: descricao := 'Caracter proibido na codificação do GT';
  end;
  // eh feito
  if (Codigo > 00) and (Codigo < 157) and (Codigo <> 81) and (Codigo <> 108) and
    (Codigo <> 113) and (Codigo <> 68) then
  begin
    Mensagem(' A T E N Ç Ã O ', 'ERRO: ' + IntToStr(Codigo) + #13 + #13 +
      'DESCRIÇÃO: ' + descricao, '', 1, 1, False, 'E');
    Result := false;
  end;
  if (Codigo = 81) then
  begin
    Mensagem('   E L G I N   ', descricao, '', 1, 1, False, 'A');
    Result := true;
  end;
  // se nao foi feito o fechamento do dia, eh exibido a msg e pede p usuario se deseja efetuar a operação.
  if (Codigo = 108) or (Codigo = 113) then
  begin
    if Mensagem('   E L G I N   ', 'ERRO: ' + IntToStr(Codigo) + #13 +
      'DESCRIÇÃO: ' + descricao + #13 + #13 + 'Deseja realizar a Redução Z ?', '',
      2, 3, False, 'E') = 3 then
    begin
      result := false;
      Exit;
    end
    else
    begin
      // FUNÇÃO P REDUÇÃO Z
      ecfReducaoZ('0123');

      Mensagem('   E L G I N   ', 'Reinicie seu cupom.', '', 1, 1, False, 'A');

      Result := false;
    end;
  end
  else
  begin
    Result := true;
  end;
end;

function Status_Cupom: string;
var
  XAux: PChar;
  XValor: string;
  XConta: integer;
  XNumeroCupom: string;
begin
  if (MODELO_IMPRESSORA = 'BEMATECH') then
  begin
    for XConta := 1 to 6 do
      XNumeroCupom := XNumeroCupom + ' ';
    // busca o numero do cupom atual
    Bematech_FI_NumeroCupom(XNumeroCupom);

    Mensagem('N O T I F I C A Ç Ã O', 'O número do Cupom atual é: ' +
      XNumeroCupom, '', 1, 1, False, 'C');
  end;
  if (MODELO_IMPRESSORA = 'ELGIN') then
  begin
    // a variavel recebe todas as informações da impressora que a função repassa
    XAux := ecfStatusCupom(0);

    // a variavel recebe o numero do cupom
    XValor := Copy(XAux, 6, 6);

    Mensagem('N O T I F I C A Ç Ã O', 'Número do Cupom: ' + XValor, '', 1, 1,
      False, 'C');
  end;
end;

// Procedimento para selecionar a parte inteira do valor
function Numero_Inteiro: string;
begin
  // seleciona apenas a parte inteiro do numero
  Result :=
    IntToStr(Trunc(StrToFloat(DMESTOQUE.TSlave.FieldByname('QTD').AsString)));
end;

//verifica o estado do papel da impressora
procedure Status_Papel;
var
  aux, XNum: string;
  XPapel: integer;
begin

  // verifica se o usuario possui impressora ou nao
  if Verifica_Impressora = false then
  begin
    Exit;
  end
  else
  begin

    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      XRetorno := Bematech_FI_MonitoramentoPapel(XPapel);

      if XPapel >= 65 then
        Mensagem('   B E M A T E C H   ', 'Pouco Papel.', '', 1, 1, False, 'E');

      {           if FMenu.MPF.PoucoPapel then
              ShowMessage(FMenu.MPF.MSG);
          If FMenu.MPF.ST1>=64 Then
              Mensagem('   B E M A T E C H   ', 'Pouco Papel.', '', 1, 1, False, 'E');}
    end;
    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      // a variavel aux recebe o valor q a função retorna em binario
      aux := ecfStatusImp;

      // a variavel XNum recebe soh a quinta posicao da variavel aux
      XNum := Copy(aux, 5, 1);
      // Se o resultado for 0, ainda há papel
      if XNum = '0' then
      begin
        Mensagem('   E L G I N   ', 'Papel Sufuciente na impressora!', '', 1, 1,
          False, 'C');
      end
      else
      begin
        Mensagem('   E L G I N   ', 'Pouco Papel.', '', 1, 1, False, 'E');
      end;
    end;

    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin
      // função para buscar o status da impressora
      StrPCopy(Executa, #27 + '.23}');
      Resposta := EnviaComando(Executa);

      // função que verifica na string Resposta se existe o sinal negativo. Se tiver é pq o papel está proximo do fim
      if Procura_Caracter(Resposta, '-') = '-' then
      begin
        Mensagem('   S W E D A   ', 'Substitua o papel.', '', 1, 1, False, 'A');
      end
      else
      begin
        Mensagem('   S W E D A   ', 'Papel Sufuciente na impressora!', '', 1, 1,
          False, 'C');
      end;
    end;
  end;
end;

// Função utilizada para buscar o CARACTER indicado
function Procura_Caracter(Valor: string; Caracter: string): string;
var
  I: byte;
begin
  for I := 1 to Length(Valor) do
  begin
    if (Valor[I] = Caracter) then
    begin
      Result := '-';
      Exit;
    end
    else
    begin
      Result := Result + Valor[I];
    end;
  end;
end;

// Função para verificar a impressora, se o usuario possui ou nao
function Verifica_Impressora: boolean;
begin
  if (MODELO_IMPRESSORA = '') then
  begin
    if DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF' then
      Mensagem(' A T E N Ç Ã O',
        'SUAS CONFIGURAÇÕES SÃO PARA IMPRIMIR ECF, PORÉM NÃO HÁ IMPRESSORA DEFINIDA PARA O USUÁRIO ATUAL.',
        '', 1, 1, False, 'E');
    Result := false;
  end
  else
    result := true;
end;

// se não ocorreu nenhum problema durante os processos do cupom fiscal, os valores abaixo são definitivamente inseridos nos campos
function Finaliza_CupomFiscal(CodGerador: Integer): boolean;
var
  cNumeroCupom: string;
  iConta: Integer;
begin

  ///
 ///   PEDVENDA
 ///

  if (XTipoECF = 'PEDVENDA') then
  begin

    DMSAIDA.TPedV.Close;
    DMSAIDA.TPedV.SQL.Clear;
    DMSAIDA.TPedV.SQL.Add('update PEDVENDA set FISCO = :FISCO, NUMFISCAL = :NUMFISCAL');
    DMSAIDA.TPedV.SQL.Add('where COD_PEDVENDA = :OLD_COD_PEDVENDA');

    DMSAIDA.TPedV.ParamByName('OLD_COD_PEDVENDA').AsInteger := CodGerador;
    DMSAIDA.TPedV.ParamByName('FISCO').AsString := 'ECF';

    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      for iConta := 1 to 6 do
        cNumeroCupom := cNumeroCupom + ' ';
      iRetorno := Bematech_FI_NumeroCupom(cNumeroCupom);
      Analisa_iRetorno();
      // Procedure que analisa o retorno da Impressora
      Retorno_Impressora();
      DMSAIDA.TPedV.ParamByName('NUMFISCAL').AsString := cNumeroCupom;
    end;

    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      DMSAIDA.TPedV.ParamByName('NUMFISCAL').AsString := XNum_Fiscal;
    end;

    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin

    end;

    Result := True;

    try
      DMSAIDA.TPedV.ExecSQL;
      DMSAIDA.IBT.CommitRetaining;
    except
      Result := False;
    end;

  end;

  ///
  ///   ORDEM
  ///

  if (XTipoECF = 'ORDEM') then
  begin

    //16/03/2009: fazer sql manual

    DMServ.TOrd.Close;
    DMServ.TOrd.SQL.Clear;
    DMServ.TOrd.SQL.Add('update ORDEM set FISCO = :FISCO, NUMFISCAL = :NUMFISCAL');
    DMServ.TOrd.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');

    DMServ.TOrd.ParamByName('OLD_COD_ORDEM').AsInteger := CodGerador;
    DMServ.TOrd.ParamByName('FISCO').AsString := 'ECF';

    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      for iConta := 1 to 6 do
        cNumeroCupom := cNumeroCupom + ' ';
      iRetorno := Bematech_FI_NumeroCupom(cNumeroCupom);
      Analisa_iRetorno();
      // Procedure que analisa o retorno da Impressora
      Retorno_Impressora();
      DMServ.TOrd.ParamByName('NUMFISCAL').AsString := cNumeroCupom;
    end;

    Result := True;

    try
      DMServ.TOrd.ExecSQL;
      DMServ.IBT.CommitRetaining;
    except
      Result := False;
    end;

  end;

end;

// função para implementar o numero do cupom fiscal no banco de dados
function Verifica_CupomFiscal: boolean;
var
  XAux: PChar;
begin
  if (MODELO_IMPRESSORA = 'ELGIN') then
  begin
    // a variavel recebe todas as informações da impressora que a função repassa
    XAux := ecfStatusCupom(0);

    // a variavel recebe o numero do cupom
    XNum_Fiscal := Copy(XAux, 6, 6);
  end;

end;

// Procedure que seleciona apenas a parte fracionaria de um valor, casas decimais
function Casas_Decimais: string;
var
  XString: string;
begin
  //   XString := FloatToStr(Frac(StrToFloat(IntToStr(DMESTOQUE.TSlave.FieldByName('QTD').AsInteger))));
  XString :=
    FloatToStr(Frac(StrToFloat(DMESTOQUE.TSlave.FieldByName('QTD').AsString)));

  XString := copy(XString, 3, 5);

  if Length(XString) = 3 then
  begin
    Result := ',' + XString;
  end;
  if Length(XString) = 2 then
  begin
    Result := ',' + XString + '0';
  end;
  if Length(XString) = 1 then
  begin
    Result := ',' + XString + '00';
  end;
  if Length(XString) = 0 then
  begin
    Result := '';
  end;
end;

// Função para iniciar fechamento
function ecfIniciaFechamento(XTOTDESC: Real): boolean;
var
  XAcreDesc, XVlrDesconto, XTipoAcreDesc: string;
  XVALOR_PAGO, XValor_Pago_Formatado: string;
  iConta, I: Integer;
  XDescontoReal, XVlrReal: string;
begin
  if (MODELO_IMPRESSORA = 'BEMATECH') then
  begin

    XTipoAcreDesc := '$'; //Determina que o tipo do desconto é em moeda

    //Rotina para pegar o total do pedido de acordo com a impressora
         //Inicio para descobrir o total do pedido
    for iConta := 1 to 14 do
      XVALOR_PAGO := XVALOR_PAGO + ' ';

    iRetorno := Bematech_FI_SubTotal(XVALOR_PAGO);
    if iRetorno <> 1 then
    begin
      //se não foi possivel capturar fecha com valor calculado pelo sistemas
      XVALOR_PAGO := FormatFloat('0.00',
        DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency);
    end
    else
    begin
      for I := 1 to 14 do
      begin
        XValor_Pago_Formatado := XValor_Pago_Formatado + XVALOR_PAGO[I];
        if I = 12 then
          XValor_Pago_Formatado := XValor_Pago_Formatado + ',';
      end;
      try
        StrToFloat(XValor_Pago_Formatado);
      except
        XValor_Pago_Formatado := FormatFloat('0.00',
          DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency);
      end;
    end;
    //Final do descobrir total do pedido

    // Verifica se é Acréscimo ou Desconto: 'A' para Acréscimo - 'D' para Desconto
    if DMESTOQUE.Alx.FieldByName('DESCONTO').AsCurrency > 0 then
    begin
      //Se não foi aplicado desconto no pedido o sistema deve calcular o total do pedido de acordo com o total gerado pela imptessora fiscal
      XAcreDesc := 'D';
      XDescontoReal := FormatFloat('0.00', StrToFloat(XValor_Pago_Formatado));
      XDescontoReal := FormatFloat('0.00',
        DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency);
      XDescontoReal := FormatFloat('0.00', (StrToFloat(XValor_Pago_Formatado) -
        DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency));
      XVlrReal := FormatFloat('0.00', (StrToFloat(XValor_Pago_Formatado) -
        StrToFloat(XDescontoReal)));
      XRetorno := Bematech_FI_FechaCupom('Dinheiro', 'D', '$', XDescontoReal,
        XVlrReal, XMENS);
    end
    else
    begin
      XRetorno := Bematech_FI_FechaCupomResumido(pchar('Dinheiro'),
        pchar(XMENS));
    end;
    Result := true;
  end;
  if (MODELO_IMPRESSORA = 'ELGIN') then
  begin

    // Formatando a variavel XTOTDESC para selecionar somente 2 casas depois da virgula
    XValor_Fechamento := FloatToStrF(XTOTDESC, ffFixed, 4, 2);

    // enquanto houver virgula, fica rodando ate retirar todas da variavel XAux
    while pos(',', XValor_Fechamento) > 0 do //REMOVE TODOS OS ","
      Delete(XValor_Fechamento, pos(',', XValor_Fechamento), 1);

    if StrToInt(XValor_Fechamento) > 0 then
    begin
      // a variavel XCod recebe o retorno da funçã e verifica o caodigo na função Codigo_Retorno
      XRetorno := ecfCancAcresDescSubTotal(0, 0, 'Desconto: ',
        XValor_Fechamento);
      if XRetorno <> 0 then
      begin
        if Codigo_Retorno(XRetorno) = false then
          ecfCancVenda('0005');
        result := false;
        Exit;
      end
      else
        Result := true;
    end;
    if StrToInt(XValor_Fechamento) < 0 then
    begin
      // função para efetuar acrescimo no valor total
      XRetorno := ecfCancAcresDescSubTotal(1, 0, 'Acrescimo: ',
        SubstituiCaracter(XValor_Fechamento, '-', ''));
      if XRetorno <> 0 then
      begin
        if Codigo_Retorno(XRetorno) = false then
          ecfCancVenda('0005');
        Result := false;
        Exit;
      end
      else
        Result := true;
    end;
  end;
  if (MODELO_IMPRESSORA = 'SWEDA') then
  begin
    // Formatando a variavel XTOTDESC para selecionar somente 2 casas depois da virgula
    XVLRDESC := FloatToStrF(XTOTDESC, ffFixed, 4, 2);

    if (XVLRDESC > '0') then
    begin
      // DESCONTO NO ITEM
      StrPCopy(Executa, #27 + '.03' + '          ' +
        ConcatZero(SubstituiCaracter(XVLRDESC, ',', ''), 12) + 'S}');
      Resposta := EnviaComando(Executa);
    end;
    if (XVLRDESC < '0') then
    begin
      // remove o sinal negativo do valor
      XVLRDESC := SubstituiCaracter(XVLRDESC, '-', '');
      // efetua o acrescimo no valor
      StrPCopy(Executa, #27 + '.1151' + ConcatZero(SubstituiCaracter(XVLRDESC,
        ',', ''), 15) + 'S}');
      Resposta := EnviaComando(Executa);
      Result := true;
    end;
  end;

end;

function ecfPaga_Cupom(COD_EMISSOR: Integer; XVALOR: Real): BOOLEAN;
var
  aux, iConta, I: INTEGER;
  XPos_pgto, XVALOR_PAGO, XValor_Pago_Formatado: string;
  XDescontoReal: string;
begin

  if (MODELO_IMPRESSORA = 'BEMATECH') then
  begin
    //A função abaixo é utilizada para descobrir o total do pedido de acordo com a impressora
       //Inicio de função
    for iConta := 1 to 14 do
      XVALOR_PAGO := XVALOR_PAGO + ' ';
    iRetorno := Bematech_FI_SubTotal(XVALOR_PAGO);
    if iRetorno <> 1 then
    begin
      //se não foi possivel capturar fecha com valor calculado pelo sistemas
      XVALOR_PAGO := FormatFloat('0.00', XVALOR);
    end
    else
    begin
      for I := 1 to 14 do
      begin
        XValor_Pago_Formatado := XValor_Pago_Formatado + XVALOR_PAGO[I];
        if I = 12 then
          XValor_Pago_Formatado := XValor_Pago_Formatado + ',';
      end;
      try
        StrToFloat(XValor_Pago_Formatado);
      except
        XValor_Pago_Formatado := FormatFloat('0.00', XVALOR);
      end;
    end;
    //Final de função para descobrir o total do pedido de acordo com a impressora
    if XTOTDESC > 0 then
    begin
      //Caso tenho ocorrido um desconto devemos ajustar o valor final de acordo com este desconto
      XValor_Pago_Formatado := FloatToStr(StrToFloat(XValor_Pago_Formatado) -
        XTOTDESC);
    end;
    // FUNÇÃO DA DLL PARA EFETUAR PAGAMENTO
    if DMESTOQUE.Alx.FieldByName('PAGFISC').AsString <> '' then
      XRetorno :=
        Bematech_FI_EfetuaFormaPagamento(DMESTOQUE.Alx.FieldByName('PAGFISC').AsString, XValor_Pago_Formatado)
    else
      XRetorno := Bematech_FI_EfetuaFormaPagamento('DINHEIRO',
        XValor_Pago_Formatado);
    if XRetorno <> 1 then
    begin
      Result := False;
      // Tenta efetuar como dinheiro
      XRetorno := Bematech_FI_EfetuaFormaPagamento('Dinheiro',
        XValor_Pago_Formatado);
      if XRetorno <> 1 then
      begin
        Result := False;
        MessageDlg('Falha no efetuar forma de pagamento', mtWarning, [mbOK], 0);
      end
      else
      begin
        Result := True;
      end;
    end
    else
    begin
      Result := True;
    end;
    Bematech_FI_SubTotal(XVALOR_PAGO);

    {      If DMMACS.TLoja.FieldByName('ECFTRUNC').AsInteger=1 Then
           FMenu.MPF.PagaCupom(COD_EMISSOR, XVLRTOTCUPOM, '')
       Else
           FMenu.MPF.PagaCupom(COD_EMISSOR, XVTTRUNCCUPOM, '');}
  end;
  if (MODELO_IMPRESSORA = 'ELGIN') then
  begin
    // FUNÇÃO PARA EFETUAR PAGAMENTO
    XRetorno := ecfPagamento(0, 'Dinheiro',
      SubstituiCaracter(FormatFloat('0.00', XVALOR - XTOTDESC), ',', ''), 2);

    if XRetorno <> 0 then
    begin
      Codigo_Retorno(XRetorno);
      ecfCancVenda('0005');
      Mensagem('N O T I F I C A Ç Ã O', 'Cupom fiscal cancelado.', '', 1, 1,
        False, 'C');
      result := false;
    end
    else
    begin
      Result := True;
    end;
  end;

end;

// Função para vender item
function ecfVendeItem(Codigo: string; Descricao: string; Qtde: string;
  ValorUnit: string; IndiceAliquota: string; Unidade: string; Digito: string;
  Desconto: string): integer;
var
  XTipoQtde, XTipoDesc: string;
  XFracao: real;
  XQtde, XValor: integer;
  //ELGIN
  XCodigoElgin: LPSTR;
  XDescricaoElgin: LPSTR;
  XQuantElgin: LPSTR;
  XPrecoElgin: LPSTR;
  XUnidElgin: LPSTR;
  XDigitoElgin: LPSTR;
begin
  if (MODELO_IMPRESSORA = 'BEMATECH') then
  begin
    // Tipo de Desconto: $ para real
    XTipoDesc := '$';

    //  Verifica o Tipo da Quantidade: 'I' para Inteira ou 'F' para Fracionária
    Qtde := FormatFloat('0.000', StrToFloat(Qtde));
    // se o parametro QTDE tiver as casa decimais como 000, então eh passado o XTipoQtde como inteiro
    XFracao := frac(StrToFloat(Qtde));
      // seleciona soh a parte fracionaria do numero
    if XFracao = 000
      {// ou seja, se for = 000 pode passar o XTipoQtde como inteiro} then
    begin
      Qtde := floattostr(trunc(StrToFloat(Qtde)));
      XTipoQtde := 'I';
    end
    else
    begin
      XTipoQtde := 'F';
    end;

    // REMOVE OS ESPAÇOS
    IndiceAliquota := SubstituiCaracter(IndiceAliquota, ' ', '');

    // SE NAO TIVER INDICE CADASTRADO, FICA COMO ISENTO
    if IndiceAliquota = '' then
      IndiceAliquota := 'II';

    //Imprime produto em cupom fiscal

    XRetorno := Bematech_FI_VendeItem(Codigo, copy(Descricao, 0, 28),
      IndiceAliquota, XTipoQtde, Qtde, 2, ValorUnit, XTipoDesc, Desconto);
    if XRetorno <> 1 then
      Result := 0
    else
      Result := 1;
  end;
  if (MODELO_IMPRESSORA = 'ELGIN') then
  begin
    // antes de enviar par a dll, eh feito essa verificação pra nao mandar a variavel em branco. Todas as demais jah tem tratamento
    if (Unidade = '') or (Length(Unidade) < 2) then
    begin
      Unidade := 'UN';
    end;
    //Formata Valores
    Digito := '2';
    XCodigoElgin := PChar(Codigo);
    XDescricaoElgin := PChar(Descricao);
    XQuantElgin := pchar(ConcatZero(FormatFloat('0.000', StrToFloat(Qtde)), 7));
    XPrecoElgin := PChar(SubstituiCaracter(FormatFloat('0.00',
      StrToFloat(ValorUnit)), ',', ''));
    XDigitoElgin := PChar(Digito);
    XUnidElgin := PChar(Unidade);
    // FUNÇÃO DE VENDA PARA ELGIN
    XRetorno := ecfVendaItem3d(XCodigoElgin, XDescricaoElgin, XQuantElgin,
      XPrecoElgin, StrToInt(Trim(IndiceAliquota)), XUnidElgin, XDigitoElgin);
    if XRetorno <> 0 then
    begin
      // função que verifica o tipo de retorno da função anterior
      if (Codigo_Retorno(XRetorno) = false) then
      begin
        // caso retorne algum erro eh cancelada a impressão
        ecfCancVenda('0005');
        result := 0; // result = false
        Mensagem('N O T I F I C A Ç Ã O', 'Cupom fiscal cancelado.', '', 1, 1,
          False, 'C');
      end;
    end
    else
    begin
      Result := 1;
    end;
    //VERIFICA NECESSIDADE DE DESCONTO NO PRODUTO
    if StrToFloat(Desconto) > 0 then
    begin
      // FUNÇÃO  DE DESCONTO EM PRODUTO
      XRetorno := ecfDescItem(0, 'Desconto:', SubstituiCaracter(Desconto, ',',
        ''));
      if XRetorno <> 0 then
      begin
        // função que verifica o tipo de retorno da função anterior
        if (Codigo_Retorno(XRetorno) = false) then
        begin
          // caso retorne algum erro eh cancelada a impressão
          ecfCancVenda('0005');
          result := 0; // result = false
          Mensagem('N O T I F I C A Ç Ã O', 'Cupom fiscal cancelado.', '', 1, 1,
            False, 'C');
        end;
      end
      else
        Result := 1;
    end;
  end;
  if (MODELO_IMPRESSORA = 'SWEDA') then
  begin
    // a variavel recebe o valor sem virgula
    XQtde := StrToInt(SubstituiCaracter(Qtde, ',', ''));
    // XQtde recebe o valor quantidade sem 0
    XQtde := StrToInt(SubstituiCaracter(IntToStr(XQtde), '0', ''));
    ValorUnit := FormatFloat('0.00', StrToFloat(ValorUnit));
    // a variavel Valor recebe o valor sem virgula
    XValor := StrToInt(SubstituiCaracter(ValorUnit, ',', ''));

    // REMOVE OS ESPAÇOS
    IndiceAliquota := SubstituiCaracter(IndiceAliquota, ' ', '');

    // SE O PRODUTO NAO TIVER INDICE CADASTRADO, FICA COMO ISENTO
    if IndiceAliquota = '' then
      IndiceAliquota := 'II';

    if (IndiceAliquota <> 'II') or (IndiceAliquota <> 'FF') or (IndiceAliquota <>
      'NN') then
    begin
      IndiceAliquota := 'T' + IndiceAliquota;
    end
    else
    begin
      IndiceAliquota := ConcatEspacoDir(IndiceAliquota, 3);
    end;

    // Executa recebe todos os dados em PChar e eh enviado para a função EnviaComando
    StrPCopy(Executa, #27 + '.01' + ConcatEspaco(Codigo, 13) +
      ConcatZero(SubstituiCaracter(FormatFloat('0.000', StrToFloat(Qtde)), ',',
      ''), 7) + ConcatZero(SubstituiCaracter(FormatFloat('0.00',
      StrToFloat(ValorUnit)), ',', ''), 9) + ConcatZero(IntToStr(XQtde * XValor),
      12) + ConcatEspacoDir(Descricao, 24) + IndiceAliquota + '}');
    Resposta := EnviaComando(Executa);
  end;

end;

// função para cancelar cupom
function ecfCancelaCupom: boolean;
begin
  // verifica se o usuario possui impressora ou nao
  if Verifica_Impressora = false then
  begin
    Exit;
  end
  else
  begin

    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      XRetorno := Bematech_FI_CancelaCupom();
    end;
    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      XRetorno := ecfCancDoc(FMenu.EdUsuario.Text);
      if XRetorno <> 0 then
      begin
        XRetorno := ecfCancVenda('0');
          // parametro tem que ser registro do operador, número do terminal... coloquei esse ai
        if XRetorno <> 0 then
          Codigo_Retorno(XRetorno);
      end;
    end;
    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin
      StrPCopy(Executa, #27 + '.05}');
      Resposta := EnviaCOmando(Executa);

      // função para localizar a palavra ERRO. Se encontrar exibe a msg p o usuario
      if localiza_palavra(Resposta, 'ERRO') = true then
      begin
        Mensagem('   S W E D A   ', Resposta, '', 1, 1, False, 'E');
      end;
      if localiza_palavra(Resposta, '.-P002') = TRUE then
      begin
        Mensagem('   S W E D A   ', 'É necessario abrir porta da impressora.',
          '', 1, 1, False, 'A');
      end;
      if (localiza_palavra(Resposta, 'ENCERRAR O DIA') = true) then
      begin
        if Mensagem('   S W E D A   ',
          'DESCRIÇÃO: Fechamento do dia não efetuado.' + #13 + #13 +
          'Deseja realizar a operação?', '', 2, 3, False, 'E') = 3 then
        begin
          Exit;
        end
        else
        begin
          StrPCopy(Executa, #27 + '.14S040208}');
          Resposta := EnviaComando(Executa);

          if localiza_palavra(Resposta, 'ERRO') = TRUE then
          begin
            Mensagem('   S W E D A   ', Resposta, '', 1, 1, False, 'A');
          end
          else
          begin
            Mensagem('   S W E D A   ', 'Redução Z realizada com sucesso', '',
              1, 1, False, 'C');
          end;
        end;
      end;
    end;
  end;
end;

// função para leitura X
function ecf_LeituraX: Boolean;
begin
  if (MODELO_IMPRESSORA = 'BEMATECH') then
  begin
    XRetorno := Bematech_FI_LeituraX();
  end;
  if (MODELO_IMPRESSORA = 'ELGIN') then
  begin
    //implementar para elgin
    XRetorno := ecfLeituraX('0123');
    if XRetorno <> 0 then
    begin
      // função que verifica o tipo de erro
      Codigo_Retorno(XRetorno);
    end
    else
    begin
    end;
  end;
  if (MODELO_IMPRESSORA = 'SWEDA') then
  begin
    StrPCopy(Executa, #27 + '.13S');
    Resposta := EnviaComando(Executa);
  end;
end;

// função para abrir cupom
function ecfAbreCupom: Boolean;
begin
  // verifica se o usuario possui impressora ou nao
  if Verifica_Impressora = false then
  begin
    Exit;
  end
  else
  begin

    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      // BUSCA DADOS DA TABELA CLIENTE REFERENTE AO CLIENTE ATRELADO A VENDA
      FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
        DMESTOQUE.Alx.FieldByName('COD_CLIENTE').AsString, '');

      // BUSCA DADOA DA TABELA PESSOA EM RELAÇÃO AO LCIENTE RECEM SELECIONADO
      FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
        DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsString, '');

      // se o cpfcnpj for valido, seu valor eh repassado para DLL, caso contraario sera impressor cabecalho sem CPFCNPJ
      if (ValidCPF(DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString) = True) or
        (ValidaCGC(DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString) = True) then
        XRetorno :=
          Bematech_FI_AbreCupom(DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString)
      else
        XRetorno := Bematech_FI_AbreCupom('');
      if XRetorno <> 1 then
      begin
        Result := false;
        Mensagem('   B E M A T E C H   ', 'Erro ao abrir cupom.', '', 1, 1,
          False, 'E');
        Exit;
      end
      else
      begin
        Result := true;
      end;
    end;
    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      // FUNÇÃO PARA ELGIN IMPRIMIR CABECALHO
      XRetorno := ecfImpCab(0);

      // diferente de 68 pq eh erro de cabecalho jah impresso. daí pula p baixo que exibe msg diferente
      if (XRetorno <> 0) and (XRetorno <> 68) then
      begin
        if Codigo_Retorno(XRetorno) = false then
          ecfCancVenda('0005');
        Mensagem('   E L G I N   ', 'Cupom fiscal cancelado.', '', 1, 1, False,
          'C');
        Result := false;
        Exit;
      end;
      if (XRetorno = 68) then
      begin
        ecfCancVenda('0005');
        Mensagem('   E L G I N   ',
          'Para não haver duplicidade de Nº Fiscal, o cabeçalho já impresso foi cancelado.',
          '', 1, 1, False, 'A');
        Result := false;
        Exit;
      end;

      {           // Função utilizada sempre apos a impressao do cabecalho
                 ecfInicCupomNFiscal(1);}
      Result := true;
    end;
    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin
      // abrir cupom fiscal
      StrPCopy(Executa, #27 + '.17                    }');
      Resposta := EnviaCOmando(Executa);

      // função para localizar a palavra ERRO, ENCERRADA, -.P002. Se encontrar exibe a msg p o usuario
      if localiza_palavra(Resposta, 'OPERACAO NAO ENCERRADA') = true then
      begin
        if Mensagem('   S W E D A   ', 'OPERAÇÃO NÃO ENCERRADA' + #13 + #13 +
          'Deseja cancelar cupom?', '', 2, 3, False, 'E') = 3 then
        begin
          Exit;
        end
        else
        begin
          // cancelar cupom fiscal
          StrPCopy(Executa, #27 + '.05}');
          Resposta := EnviaCOmando(Executa);

          // se caso a função cancelar cupom traga como resultado a frase ENCERRAR DIA, é obrigatorio fazer a redução Z
          if localiza_palavra(Resposta, 'ENCERRAR O DIA') = true then
          begin
            // Executa a redução Z caso for encontrado a frase ENCERRAR O DIA
            if Mensagem('   S W E D A   ', 'É necessário executar a Redução Z.'
              + #13 + #13 + 'Deseja continuar?', '', 2, 3, False, 'E') = 3 then
            begin
              Exit;
            end
            else
            begin
              // executa a redução Z
              StrPCopy(Executa, #27 + '.14S040208}');
              Resposta := EnviaComando(Executa);
              // essa função procura em RESPOSTA se tem o sinal '+'. Se encontrou eh pq foi realizado a redução Z com sucesso, caso contrario houve algum problema e eh exibido ao usuario
              if Procura_Caracter(Resposta, '+') = '-' then
              begin
                Mensagem('   S W E D A   ', 'Redução Z efetuada com sucesso.',
                  '', 1, 1, False, 'C');
              end
              else
              begin
                // se houve algum problema, é exibido a msg e nao tenta nem abrir + a porta, sai direto
                Mensagem('   S W E D A   ', Resposta, '', 1, 1, False, 'E');
                Exit;
              end;
            end;
          end;
          // abrir cupom fiscal
          StrPCopy(Executa, #27 + '.17                    }');
          Resposta := EnviaCOmando(Executa);

          // essa função procura em RESPOSTA se tem o sinal '+'. Se encontrou eh pq foi aberto o cupom com sucesso, caso contrario houve algum problema e eh exibido ao usuario
          if Procura_Caracter(Resposta, '+') = '-' then
          begin
            //Mensagem('   S W E D A   ', 'Cupom Fiscal Aberto', '', 1, 1, False, 'C');
            Exit;
          end
          else
          begin
            // se tiver algum erro, eh exibido ao usuario
            Mensagem('   S W E D A   ', Resposta + #13 + #13 +
              'Não foi possível abrir cupom.', '', 1, 1, False, 'E');
          end;
        end;
      end;
      // .-P002 é pq a porta não foi aberta
      if localiza_palavra(Resposta, '.-P002') = TRUE then
      begin
        Mensagem('   S W E D A   ', 'É necessario abrir porta da impressora.',
          '', 1, 1, False, 'A');
      end;
      // se caso a função cancelar cupom traga como resultado a frase ENCERRAR DIA, é obrigatorio fazer a redução Z
      if (localiza_palavra(Resposta, 'ENCERRAR O DIA') = true) then
      begin
        if Mensagem('   S W E D A   ',
          'DESCRIÇÃO: Fechamento do dia não efetuado.' + #13 + #13 +
          'Deseja realizar efetuar a Redução Z?', '', 2, 3, False, 'E') = 3 then
        begin
          // se o usuario clcou em NÃO, apenas não executa a operação
          Exit;
        end
        else
        begin
          // efetua a redução Z
          StrPCopy(Executa, #27 + '.14S040208}');
          Resposta := EnviaComando(Executa);

          if localiza_palavra(Resposta, 'ERRO') = TRUE then
          begin
            Mensagem('   S W E D A   ', Resposta, '', 1, 1, False, 'E');
            Exit;
          end
          else
          begin
            // abrir cupom fiscal
            StrPCopy(Executa, #27 + '.17                    }');
            Resposta := EnviaCOmando(Executa);
            if localiza_palavra(Resposta, 'ERRO') = TRUE then
            begin
              Mensagem('   S W E D A   ', 'Não foi possivel abrir cupom.' + #13
                + #13 + Resposta, '', 1, 1, False, 'E');
              Exit;
            end;
          end;
        end;
      end;
    end;
  end;
end;

// função para leitura X
function LeituraX: Boolean;
begin

  // verifica se o usuario possui impressora ou nao
  if Verifica_Impressora = false then
  begin
    Exit;
  end
  else
  begin

    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      ecf_LeituraX;
    end;

    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      //implementar para elgin
      XRetorno := ecfLeituraX('0123');
      if XRetorno <> 0 then
      begin
        // função que verifica o tipo de erro
        Codigo_Retorno(XRetorno);
      end
      else
      begin
        Mensagem('   E L G I N   ', 'Leitura X realizada com sucesso!', '', 1,
          1, False, 'C');
      end;
    end;

    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin
      StrPCopy(Executa, #27 + '.13S}');
      Resposta := EnviaComando(Executa);

      // função para localizar a palavra ERRO. Se encontrar exibe a msg p o usuario
      if localiza_palavra(Resposta, 'ERRO') = true then
      begin
        Mensagem('   S W E D A   ', Resposta, '', 1, 1, False, 'E');
      end;

      if localiza_palavra(Resposta, '.-P002') = TRUE then
      begin
        Mensagem('   S W E D A   ', 'É necessario abrir porta da impressora.',
          '', 1, 1, False, 'A');
      end;

    end;
  end;
end;

//Localiza palabra e retorna verdadeiro caso a encontrar
function Localiza_palavra(Texto: string; localizar: string): boolean;
begin
  // passa todo o texto para letra maiuscula, assim não ocorre problema de diferenças de letra maisucula e minuscula
  texto := AnsiUpperCase(texto);
  localizar := AnsiUpperCase(localizar);

  XRetorno := Pos(localizar, Texto);
  if XRetorno > 0 then
  begin
    Result := true;
  end
  else
    Result := false;
end;

// fecha cupom
function ecfFecha_Cupom(XMENS: string): boolean;
begin
  // verifica se o usuario possui impressora ou nao
  if Verifica_Impressora = false then
  begin
    Exit;
  end
  else
  begin
    Result := True;
    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      XRetorno := Bematech_FI_TerminaFechamentoCupom(XMENS);
      if XRetorno <> 1 then
      begin
        Result := false;
        Mensagem('   BEMATECH   ', 'Erro ao finalizar cupom.', '', 1, 1, False,
          'A');
        Exit;
      end
      else
      begin

      end;
    end;

    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      XRetorno := ecfFimTrans(FMenu.LCODCAIXA.Caption);
      if XRetorno <> 0 then
      begin
        Codigo_Retorno(XRetorno);
        ecfCancVenda('0005');
        Mensagem('N O T I F I C A Ç Ã O', 'Cupom fiscal cancelado.', '', 1, 1,
          False, 'C');
        result := false;
        Exit;
      end;
    end;

    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin
      // função para fechar cupom - ConcatEspaço contatena as 20 casas com a mensagem
      StrPCopy(Executa, #27 + '.12NN0' + ConcatEspaco(XMENS, 40) + '}');
      Resposta := EnviaComando(Executa);

      // função para localizar a palavra ERRO. Se encontrar exibe a msg p o usuario
      if localiza_palavra('ERRO', Resposta) = true then
      begin
        Mensagem('   S W E D A   ', Resposta, '', 1, 1, False, 'E');
      end;
    end;
  end;
end;

// função para autenticar
function Autenticar: Boolean;
begin
  if (MODELO_IMPRESSORA = 'BEMATECH') then
  begin
    //     	FMenu.MPF.Autenticar;
  end;
  if (MODELO_IMPRESSORA = 'ELGIN') then
  begin
    // FUNÇÃO PARA ELGIN
    ecfAutentica('AUTENTICAÇÃO');
  end;

end;

function Recebimento: Boolean;
begin
  if (MODELO_IMPRESSORA = 'BEMATECH') then
  begin
    //      	FMenu.MPF.Recebimento(EdIndicRec.ValueInteger, EdVlrRec.ValueNumeric);
  end;
  if (MODELO_IMPRESSORA = 'ELGIN') then
  begin
    // IMPLEMENTAR FUNÇÃO PARA ELGIN

  end;
end;

function FechaPorta: Boolean;
begin
  if (MODELO_IMPRESSORA = 'BEMATECH') or (MODELO_IMPRESSORA = 'SWEDA') then
  begin
    Mensagem('N O T I F I C A Ç Ã O', 'Porta Fechada!', '', 1, 1, False, 'C');
  end;
  if (MODELO_IMPRESSORA = 'SWEDA') then
  begin

  end;

end;

// função para abrir porta da impressora
function ecfAbrePorta: Boolean;
begin
  // verifica se o usuario possui impressora ou nao
  if Verifica_Impressora = false then
  begin
    Exit;
  end
  else
  begin

    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      Result := true;
    end;
    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      Result := TRUE;
    end;
    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin
      // ABRE PORTA SERIAL DA SWEDA
      if (PORTA_IMPRESSORA = 'COM1') then
      begin
        XERRO_FUNCAO := AbrePorta(1, 5);
        if (XERRO_FUNCAO = false) then
          Mensagem('   S W E D A   ', 'Porta COM1 não aberta.', '', 1, 1, False,
            'E');
      end;
      if (PORTA_IMPRESSORA = 'COM2') then
      begin
        XERRO_FUNCAO := AbrePorta(2, 5);
        if (XERRO_FUNCAO = false) then
          Mensagem('   S W E D A   ', 'Porta COM2 não aberta.', '', 1, 1, False,
            'E');
      end;
      if (PORTA_IMPRESSORA = 'COM3') then
      begin
        XERRO_FUNCAO := AbrePorta(3, 5);
        if (XERRO_FUNCAO = false) then
          Mensagem('   S W E D A   ', 'Porta COM3 não aberta.', '', 1, 1, False,
            'E');
      end;
      if (PORTA_IMPRESSORA = 'COM4') then
      begin
        XERRO_FUNCAO := AbrePorta(4, 5);

        if (XERRO_FUNCAO = false) then
          Mensagem('   S W E D A   ', 'Porta COM4 não aberta.', '', 1, 1, False,
            'E');
      end;
    end;
  end;
end;

// função para redução Z
function ReducaoZ: Boolean;
begin

  // verifica se o usuario possui impressora ou nao
  if Verifica_Impressora = false then
  begin
    Exit;
  end
  else
  begin

    if (MODELO_IMPRESSORA = 'BEMATECH') then
    begin
      XRetorno := Bematech_FI_ReducaoZ('', '');
      if XRetorno = 1 then
        Mensagem('   B E M A T E C H   ', 'Redução Z realizada com sucesso!',
          '', 1, 1, False, 'C')
      else
        Mensagem('   B E M A T E C H   ', 'Ocorreu erro ao realizar Redução Z!',
          '', 1, 1, False, 'A');
    end;

    if (MODELO_IMPRESSORA = 'ELGIN') then
    begin
      // FUNÇÃO PARA ELGIN
      XRetorno := ecfReducaoZ('0123');
      if XRetorno <> 0 then
      begin
        // função que verifica o tipo de erro
        Codigo_Retorno(XRetorno);
      end
      else
      begin
        Mensagem('   E L G I N   ', 'Redução Z realizada com sucesso!', '', 1,
          1, False, 'C');
      end;
    end;

    if (MODELO_IMPRESSORA = 'SWEDA') then
    begin
      StrPCopy(Executa, #27 + '.14S040208}');
      Resposta := EnviaComando(Executa);

      if localiza_palavra(Resposta, '.-P002') = TRUE then
      begin
        Mensagem('   S W E D A   ', 'É necessario abrir porta da impressora.',
          '', 1, 1, False, 'A');
        Exit;
      end;

      // função para localizar a palavra ERRO. Se encontrar exibe a msg p o usuario
      if localiza_palavra(Resposta, 'ERRO') = true then
      begin
        Mensagem('   S W E D A   ', Resposta, '', 1, 1, False, 'E');
      end
      else
      begin
        Mensagem('   S W E D A   ', 'Redução Z realizada com sucesso!', '', 1,
          1, False, 'C');
      end;
    end;
  end;
end;

//Função Utilizada para imprimir comprovante do pedido direto pelo modo de canvas
function ImpPedCanvas: Boolean;
var
  Linha, Tamanho, LimImp, I: Integer;
  Coluna: Integer;
  COLIMP: Integer;
  IncLine: Integer; //incremento de linha
  XBarra: string; //Separadores de paragrafo
begin
  //RECEBE VALORES CONFIGURADOS EM BANCO
  try
    SetarImpressora; //força valores de impresao
    GetValEtqProdPerson;
    Printer.PageHeight;
    Printer.PageWidth;
    //seta quantidade de colunas e linhas para impressão no papel e impressora corrente
    if (GetWindowsVersion = 'Windows XP') or (GetWindowsVersion = 'Windows 2000')
      or (GetWindowsVersion = 'Windows NT') then
      SetPrinterPage_Xp(DMPAPER_USER, XLARGPAG, XALTPAG)
    else
      SetPrinterPage_9x(XLARGPAG, XALTPAG);

    Tamanho := Printer.Canvas.TextWidth('A');
    Coluna := XCOLUNAINI;
    Linha := XLINHAINI;
    LimImp := 0;
    XTotProdNF := 0;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.' + #13 +
      'Se o problema continuar reinicie o computador e a impressora.', '', 1, 1,
      false, 'i');
  end;
  try
    Printer.BeginDoc;
    Printer.canvas.pen.width := 1;
    Tamanho := Printer.Canvas.TextWidth('a');
    //Printer.Canvas.Font.name:='Courier New ';
    //Printer.Canvas.Font.Size:=10;
    //Imprime Cabeçalho
    Printer.Canvas.TextOut(Coluna, Linha,
      DMMACS.TLoja.FieldByName('TITULOPRIM').AsString);
    Linha := Linha + XINTERVLIN;
    //Printer.Canvas.Font.Size:=8;
    Printer.Canvas.TextOut(COLUNA, Linha,
      DMMACS.TLoja.FieldByName('TITULOSEC').AsString);
    for I := 0 to XCOMPCODBARRA do
      XBarra := XBarra + '= ';
    Linha := Linha + XINTERVLIN;
    Printer.Canvas.TextOut(COLUNA, Linha, XBarra);
    //////////////////
    ///IMPRIME CLIENTE
    //////////////////
    Linha := Linha + XINTERVLIN;
    Printer.Canvas.TextOut(COLUNA, Linha, 'Cliente: ' +
      DMESTOQUE.Alx.FieldByName('NOMECLI').AsString);
    Coluna := Coluna + (Tamanho * 70);
    Printer.Canvas.TextOut(COLUNA, Linha, 'CPF: ' +
      DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString);
    Coluna := COLUNA + (Tamanho * 35);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Nº Ped.: ' +
      DMESTOQUE.Alx.FieldByName('NUMPED').AsString);
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(XCOLUNAINI, Linha, 'Endereço: ' +
      DMESTOQUE.Alx.FieldByName('ENDERECO').AsString);
    Coluna := Coluna + (Tamanho * 70);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Cidade: ' +
      DMESTOQUE.Alx.FieldByName('NOME').AsString);
    Coluna := COLUNA + (Tamanho * 35);
    Printer.Canvas.TextOut(COLUNA, Linha, 'DT Pedido: ' +
      DMESTOQUE.Alx.FieldByName('DTPEDVEN').AsString);
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(COLUNA, Linha, 'Endereço de Entrega: ' +
      DMESTOQUE.Alx.FieldByName('endentraga').AsString);
    Linha := Linha + XINTERVLIN;
    Printer.Canvas.TextOut(COLUNA, Linha, 'Vendedor: ' +
      DMEstoque.Alx1.FieldByName('nome').AsString);
    Coluna := Coluna + (Tamanho * 105);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Impressão: ' + DateToStr(Date()));
    Coluna := XCOLUNAINI;
    Linha := Linha + XINTERVLIN;
    Printer.Canvas.TextOut(COLUNA, Linha, XBarra);
    Coluna := XCOLUNAINI;
    Linha := Linha + XINTERVLIN;
    //Imprime Cabecalho de produtos
    Printer.Canvas.TextOut(COLUNA, Linha, 'Codigo: ');
    Coluna := Coluna + (Tamanho * 20);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Quant.: ');
    Coluna := Coluna + (Tamanho * 8);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Und.: ');
    Coluna := Coluna + (Tamanho * 6);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Produto: ');
    Coluna := Coluna + (Tamanho * 40);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Marca: ');
    Coluna := Coluna + (Tamanho * 26);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Vlr. Unit.: ');
    Coluna := Coluna + (Tamanho * 10);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Desc.(%)');
    Coluna := Coluna + (Tamanho * 15);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Total:');
    //               Linha:=Linha+XINTERVLIN;
               //Imprime Produtos
    DMESTOQUE.TSlave.First;
    while not DMESTOQUE.TSlave.Eof do
    begin
      Coluna := XCOLUNAINI;
      Linha := Linha + XINTERVLIN;
      Printer.Canvas.TextOut(COLUNA, Linha,
        DMESTOQUE.TSlave.FieldByName('PRIMCOD').AsString);
      Coluna := (XCOLUNAINI + (Tamanho * 26)) -
        (length(DMESTOQUE.TSlave.FieldByName('QTDEPROD').AsString) * Tamanho);
      Printer.Canvas.TextOut(COLUNA, Linha,
        DMESTOQUE.TSlave.FieldByName('QTDEPROD').AsString);
      Coluna := XCOLUNAINI + (Tamanho * 28);
      Printer.Canvas.TextOut(COLUNA, Linha,
        DMESTOQUE.TSlave.FieldByName('SIGLA_UNID').AsString);
      Coluna := XCOLUNAINI + (Tamanho * 34);
      Printer.Canvas.TextOut(COLUNA, Linha,
        DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString);
      Coluna := XCOLUNAINI + (Tamanho * 74);
      Printer.Canvas.TextOut(COLUNA, Linha,
        DMESTOQUE.TSlave.FieldByName('MARCA').AsString);
      Coluna := (XCOLUNAINI + (Tamanho * 108)) - (length(FormatFloat('0.00',
        DMESTOQUE.TSlave.FieldByName('VALUNIT').AsCurrency)) * Tamanho);
      Printer.Canvas.TextOut(COLUNA, Linha, FormatFloat('0.00',
        DMESTOQUE.TSlave.FieldByName('VALUNIT').AsCurrency));
      Coluna := (XCOLUNAINI + (Tamanho * 118)) - (length(FormatFloat('0.00',
        DMESTOQUE.TSlave.FieldByName('DESCPRO').AsCurrency)) * Tamanho);
      Printer.Canvas.TextOut(COLUNA, Linha, FormatFloat('0.00',
        DMESTOQUE.TSlave.FieldByName('DESCPRO').AsCurrency));
      Coluna := (XCOLUNAINI + (Tamanho * 130)) - (length(FormatFloat('0.00',
        DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency)) * Tamanho);
      Printer.Canvas.TextOut(COLUNA, Linha, FormatFloat('0.00',
        DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency));
      if fmenu.XPedFatura = '' then
      begin
        XTotProdNF := XTotProdNF +
          DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;
      end
      else
      begin
        XTotProdNF := DMSAIDA.TFiscPV.FieldByName('vlrtotdocnf').AsCurrency;
      end;
      DMESTOQUE.TSlave.Next;
    end;
    Linha := Linha + XINTERVLIN;
    XBarra := '';
    for I := 0 to XQTDCOLPAG do
      XBarra := XBarra + '- ';
    Printer.Canvas.TextOut(XCOLUNAINI, Linha, XBarra);
    Linha := Linha + XINTERVLIN;
    IncLine := Linha;
    Printer.Canvas.TextOut(XCOLUNAINI, Linha,
      DMESTOQUE.ALX.FieldByName('Descricao').AsString);
    Coluna := (XCOLUNAINI + (Tamanho * 131)) - (length('Produtos: ' +
      FormatFloat('0.00', XTotProdNF)) * Tamanho);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Produtos: ' + FormatFloat('0.00',
      XTotProdNF));
    Linha := Linha + XINTERVLIN;
    Coluna := (XCOLUNAINI + (Tamanho * 131)) - (length('Desc. (%): ' +
      FormatFloat('0.00', XTotProdNF -
      DMESTOQUE.Alx.FieldByName('Valor').AsCurrency)) * Tamanho);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Desc. (%): ' + FormatFloat('0.00',
      XTotProdNF - DMESTOQUE.Alx.FieldByName('Valor').AsCurrency));
    Linha := Linha + XINTERVLIN;
    Coluna := (XCOLUNAINI + (Tamanho * 129)) - (length('TOTAL: ' +
      FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('Valor').AsCurrency)) *
      Tamanho);
    Printer.Canvas.TextOut(COLUNA, Linha, 'TOTAL: ' + FormatFloat('0.00',
      DMESTOQUE.Alx.FieldByName('Valor').AsCurrency));
    //Imprime Parcelas
    if not DMMACS.TALX.IsEmpty then
    begin
      Linha := IncLine;
      Coluna := XCOLUNAINI;
      DMMACS.TALX.First;
      while not DMMACS.TALX.Eof do
      begin
        Linha := Linha + XINTERVLIN;
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMMACS.TALX.FieldByName('dtvenc').AsString + '  /  ' +
          DMMACS.TALX.FieldByName('cobranca').AsString + '  -  R$ ' +
          FormatFloat('0.00', DMMACS.TALX.FieldByName('valor').AsCurrency));
        DMMACS.TALX.Next;
      end;
    end;
    //Imprime Rodape
    Linha := Linha + XINTERVLIN;
    Printer.Canvas.TextOut(XCOLUNAINI, Linha, XBarra);
    Linha := Linha + XINTERVLIN;
    Coluna := XQTDETQPAG - Round((Length(FMenu.XRODAPE1) * Tamanho) / 2);
    Printer.Canvas.TextOut(Coluna, Linha, FMenu.XRODAPE1);
    Linha := Linha + XINTERVLIN;
    Coluna := XQTDETQPAG - Round((Length(FMenu.XRODAPE2) * Tamanho) / 2);
    Printer.Canvas.TextOut(Coluna, Linha, FMenu.XRODAPE2);
    Printer.enddoc;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.' + #13 +
      'Se o problema continuar reinicie o computador e a impressora.', '', 1, 1,
      false, 'i');
  end;
end;

//Função Utilizada para imprimir Orden de Servico direto pelo modo de canvas
function ImpOrdCanvas(Tipo: string): Boolean;
var
  Linha, Tamanho, LinImp, I, UltLinha: Integer;
  Coluna: Integer;
  COLIMP: Integer;
  IncLine: Integer; //incremento de linha
  XBarra: string; //Separadores de paragrafo
  XLinAuxImp01, XLinAuxImp02: string;
    //Linhas auxiliares para imprimir campos memo
begin
  //RECEBE VALORES CONFIGURADOS EM BANCO
  try
    SetarImpressora; //força valores de impresao
    GetValEtqProdPerson;
    Printer.PageHeight;
    Printer.PageWidth;
    //seta quantidade de colunas e linhas para impressão no papel e impressora corrente
    if (GetWindowsVersion = 'Windows XP') or (GetWindowsVersion = 'Windows 2000')
      or (GetWindowsVersion = 'Windows NT') then
      SetPrinterPage_Xp(DMPAPER_USER, XLARGPAG, XALTPAG)
    else
      SetPrinterPage_9x(XLARGPAG, XALTPAG);

    Tamanho := Printer.Canvas.TextWidth('A');
    Coluna := XCOLUNAINI;
    Linha := XLINHAINI;
    LinImp := 0;
    XTotProdNF := 0;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.' + #13 +
      'Se o problema continuar reinicie o computador e a impressora.', '', 1, 1,
      false, 'i');
  end;
  try
    Printer.BeginDoc;
    Printer.canvas.pen.width := 1;
    Tamanho := Printer.Canvas.TextWidth('a');
    ///////////////////
    //Imprime Cabeçalho
    ///////////////////
    //1º linha
    Printer.Canvas.TextOut(Coluna, Linha,
      DMMACS.TLoja.FieldByName('DESCRICAO').AsString);
    Coluna := Coluna + (Tamanho * 80);
    if Tipo = 'ABERTURA' then
      Printer.Canvas.TextOut(Coluna, Linha, 'O.S. ABERT.')
    else
      Printer.Canvas.TextOut(Coluna, Linha, 'O.S. FECH.');
    Coluna := Coluna + (Tamanho * 43);
    Printer.Canvas.TextOut(Coluna, Linha, 'Impresso:');
    //2º linha
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(Coluna, Linha, 'CNPJ: ' +
      DMMACS.TEmpresa.FieldByName('CNPJ').AsString);
    Coluna := (Coluna + (Tamanho * 89)) -
      (length(DMServ.Tord.FieldByName('NUMERO').AsString) * Tamanho);
    Printer.Canvas.TextOut(Coluna, Linha,
      DMServ.Tord.FieldByName('NUMERO').AsString);
    Coluna := XCOLUNAINI + (Tamanho * 122);
    Printer.Canvas.TextOut(Coluna, Linha, DateToStr(Date()));
    //3º linha
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(Coluna, Linha, 'Endereço: ' +
      DMMACS.TEmpresa.FieldByName('ENDERECO').AsString);
    Coluna := (Coluna + (Tamanho * 80));
    Printer.Canvas.TextOut(Coluna, Linha, 'Atendimento:');
    Coluna := XCOLUNAINI + (Tamanho * 124);
    Printer.Canvas.TextOut(Coluna, Linha, TimeToStr(Time()));
    //4º linha
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(Coluna, Linha, 'Bairro: ' +
      DMMACS.TEmpresa.FieldByName('BAIRRO').AsString);
    Coluna := (Coluna + (Tamanho * 88)) -
      (length(DMServ.Tord.FieldByName('LOCALAT').AsString) * Tamanho);
    Printer.Canvas.TextOut(Coluna, Linha,
      DMServ.TOrd.FieldByName('LOCALAT').AsString);
    //5º LINHA
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(Coluna, Linha, 'Fone: ' +
      DMMACS.TEmpresa.FieldByName('FONE').AsString);
    Coluna := (XCOLUNAINI + (Tamanho * 129)) -
      (length(DMServ.Tord.FieldByName('STATUS').AsString) * Tamanho);
    Printer.Canvas.TextOut(Coluna, Linha,
      DMServ.TOrd.FieldByName('STATUS').AsString);
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    for I := 0 to XCOMPCODBARRA do
      XBarra := XBarra + '= ';
    Printer.Canvas.TextOut(COLUNA, Linha, XBarra);

    /////////////////
    //Imprime Cliente
    /////////////////
    Linha := Linha + XINTERVLIN;
    Printer.Canvas.TextOut(COLUNA, Linha, 'Cliente: ' +
      DMPESSOA.TPessoa.FieldByName('NOME').AsString);
    Coluna := Coluna + (Tamanho * 70);
    Printer.Canvas.TextOut(COLUNA, Linha, 'CPF: ' +
      DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString);
    Coluna := COLUNA + (Tamanho * 35);
    Printer.Canvas.TextOut(COLUNA, Linha, 'FONE: ' +
      DMPESSOA.TPessoa.FieldByName('TELREL').AsString);
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(XCOLUNAINI, Linha, 'Endereço: ' +
      DMPESSOA.TPessoa.FieldByName('ENDERECO').AsString);
    Coluna := Coluna + (Tamanho * 70);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Cidade: ' +
      DMGEOGRAFIA.TCidade.FieldByName('NOME').AsString);
    Coluna := COLUNA + (Tamanho * 35);
    Printer.Canvas.TextOut(COLUNA, Linha, 'CEP: ' +
      DMPESSOA.TPessoa.FieldByName('CEP').AsString);
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(COLUNA, Linha, 'Endereço de Entrega: ' +
      DMPESSOA.TCliente.FieldByName('ENDENTRAGA').AsString);
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(COLUNA, Linha, XBarra);
    Linha := Linha + XINTERVLIN;
    /////////////////////
    //Imprime equipamento
    /////////////////////
    //1º Linha
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(COLUNA, Linha, 'Equipamento: ' +
      DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString);
    //2º Linha
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(XCOLUNAINI, Linha, 'Marca: ' +
      DMPESSOA.TEquip.FieldByName('MARCA').AsString);
    Coluna := Coluna + (Tamanho * 50);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Modelo: ' +
      DMPESSOA.TEquip.FieldByName('MODELO').AsString);
    Coluna := COLUNA + (Tamanho * 35);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Motor: ' +
      DMPESSOA.TEquip.FieldByName('MOTOR').AsString);
    //2º Linha
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(XCOLUNAINI, Linha, 'Km/Hs: ' +
      DMPESSOA.TEquip.FieldByName('KMATUAL').AsString);
    Coluna := Coluna + (Tamanho * 50);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Ano Fabr.: ' +
      DMPESSOA.TEquip.FieldByName('ANO').AsString);
    Coluna := COLUNA + (Tamanho * 35);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Ano Motor: ' +
      DMPESSOA.TEquip.FieldByName('ANOMOTOR').AsString);
    //3º Linha
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(XCOLUNAINI, Linha, 'Placa: ' +
      DMPESSOA.TEquip.FieldByName('PLACA').AsString);
    Coluna := Coluna + (Tamanho * 50);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Chassi: ' +
      DMPESSOA.TEquip.FieldByName('ANO').AsString);
    Coluna := COLUNA + (Tamanho * 35);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Chassi Motor: ');
    //4º Linha
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(XCOLUNAINI, Linha, 'Nível Comb.: ');
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(COLUNA, Linha, XBarra);
    Linha := Linha + XINTERVLIN;
    if Tipo = 'ABERTURA' then
    begin
      ///////////////////////////
      //COMPROVANTE DE ABERTURA
      ///////////////////////////
      IncLine := Linha;
      //Problema Reclamado
      Printer.Canvas.TextOut(COLUNA, Linha, 'Problema Reclamado: ');
      XLinAuxImp01 := DMServ.TOrd.FieldByName('PROBREC').AsString;
      Linha := Linha + XINTERVLIN;
      I := Length(XLinAuxImp01);
      LinImp := 0;
      while LinImp <= I do
      begin
        XLinAuxImp02 := copy(XLinAuxImp01, LinImp, 40);
        LinImp := LinImp + 40;
        Printer.Canvas.TextOut(COLUNA, Linha, XLinAuxImp02);
        Linha := Linha + XINTERVLIN;
      end;
      UltLinha := Linha;
      //Solução Apresentada
      Coluna := Coluna + (Tamanho * 41);
      Linha := IncLine;
      Printer.Canvas.TextOut(COLUNA, Linha, 'Solução Apresentada: ');
      XLinAuxImp01 := DMServ.TOrd.FieldByName('SOLUCAO').AsString;
      Linha := Linha + XINTERVLIN;
      I := Length(XLinAuxImp01);
      LinImp := 0;
      while LinImp <= I do
      begin
        XLinAuxImp02 := copy(XLinAuxImp01, LinImp, 40);
        LinImp := LinImp + 40;
        Printer.Canvas.TextOut(COLUNA, Linha, XLinAuxImp02);
        Linha := Linha + XINTERVLIN;
      end;
      if UltLinha < Linha then
        UltLinha := Linha;
      //Observações
      Coluna := Coluna + (Tamanho * 41);
      Linha := IncLine;
      Printer.Canvas.TextOut(COLUNA, Linha, 'Observações: ');
      XLinAuxImp01 := DMServ.TOrd.FieldByName('OBSERVACAO').AsString;
      Linha := Linha + XINTERVLIN;
      I := Length(XLinAuxImp01);
      LinImp := 0;
      while LinImp <= I do
      begin
        XLinAuxImp02 := copy(XLinAuxImp01, LinImp, 40);
        LinImp := LinImp + 40;
        Printer.Canvas.TextOut(COLUNA, Linha, XLinAuxImp02);
        Linha := Linha + XINTERVLIN;
      end;
      if UltLinha < Linha then
        UltLinha := Linha;
      Linha := UltLinha;
    end;
    XBarra := '';
    for I := 0 to XQTDCOLPAG do
      XBarra := XBarra + '- ';
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(COLUNA, Linha, XBarra);
    Linha := Linha + XINTERVLIN;

    ///////////////////////////
    //COMPROVANTE DE FECHAMENTO
    ///////////////////////////

    ///////////////////////////////
    //Imprime de produtos
    ///////////////////////////////
    if not DMESTOQUE.TSlave.IsEmpty then
    begin
      Printer.Canvas.TextOut(COLUNA, Linha, 'Produtos ');
      Linha := Linha + XINTERVLIN;
      //Imprime Cabecalho de produtos
      Printer.Canvas.TextOut(COLUNA, Linha, 'Codigo: ');
      Coluna := Coluna + (Tamanho * 20);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Quant.: ');
      Coluna := Coluna + (Tamanho * 8);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Und.: ');
      Coluna := Coluna + (Tamanho * 6);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Produto: ');
      Coluna := Coluna + (Tamanho * 40);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Marca: ');
      Coluna := Coluna + (Tamanho * 26);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Vlr. Unit.: ');
      Coluna := Coluna + (Tamanho * 10);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Desc.(%)');
      Coluna := Coluna + (Tamanho * 15);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Total:');
      Linha := Linha + XINTERVLIN;
      //Imprime Produtos
      DMESTOQUE.TSlave.First;
      while not DMESTOQUE.TSlave.Eof do
      begin
        Coluna := XCOLUNAINI;
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMESTOQUE.TSlave.FieldByName('PRIMCOD').AsString);
        Coluna := (XCOLUNAINI + (Tamanho * 26)) -
          (length(DMESTOQUE.TSlave.FieldByName('QTD').AsString) * Tamanho);
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMESTOQUE.TSlave.FieldByName('QTD').AsString);
        Coluna := XCOLUNAINI + (Tamanho * 28);
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMESTOQUE.TSlave.FieldByName('UNIDADE').AsString);
        Coluna := XCOLUNAINI + (Tamanho * 34);
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString);
        Coluna := XCOLUNAINI + (Tamanho * 74);
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMESTOQUE.TSlave.FieldByName('MARCA').AsString);
        Coluna := (XCOLUNAINI + (Tamanho * 108)) - (length(FormatFloat('0.00',
          DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency)) * Tamanho);
        Printer.Canvas.TextOut(COLUNA, Linha, FormatFloat('0.00',
          DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency));
        Coluna := (XCOLUNAINI + (Tamanho * 118)) - (length(FormatFloat('0.00',
          DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency)) * Tamanho);
        Printer.Canvas.TextOut(COLUNA, Linha, FormatFloat('0.00',
          DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency));
        Coluna := (XCOLUNAINI + (Tamanho * 130)) - (length(FormatFloat('0.00',
          DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency)) * Tamanho);
        Printer.Canvas.TextOut(COLUNA, Linha, FormatFloat('0.00',
          DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency));
        XTotProdNF := XTotProdNF +
          DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
        DMESTOQUE.TSlave.Next;
      end;
    end;
    //////////////////
    //IMPRIME SERVIÇOS
    //////////////////
    if not DMESTOQUE.TSlaveServ.IsEmpty then
    begin
      Linha := Linha + XINTERVLIN;
      Coluna := XCOLUNAINI;
      Printer.Canvas.TextOut(COLUNA, Linha, 'Serviços ');
      Linha := Linha + XINTERVLIN;
      //Imprime Cabecalho de Servicos
      Printer.Canvas.TextOut(COLUNA, Linha, 'Cod. Item: ');
      Coluna := Coluna + (Tamanho * 20);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Quant.: ');
      Coluna := Coluna + (Tamanho * 8);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Und.: ');
      Coluna := Coluna + (Tamanho * 6);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Serviço: ');
      Coluna := Coluna + (Tamanho * 66);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Vlr. Unit.: ');
      Coluna := Coluna + (Tamanho * 10);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Desc.(%)');
      Coluna := Coluna + (Tamanho * 15);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Total:');
      Linha := Linha + XINTERVLIN;
      //Imprime Servicos
      DMESTOQUE.TSlaveServ.First;
      while not DMESTOQUE.TSlaveServ.Eof do
      begin
        Coluna := XCOLUNAINI;
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMESTOQUE.TSlaveServ.FieldByName('cod_itservord').AsString);
        Coluna := (XCOLUNAINI + (Tamanho * 26)) -
          (length(DMESTOQUE.TSlaveServ.FieldByName('QTD').AsString) * Tamanho);
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMESTOQUE.TSlaveServ.FieldByName('QTD').AsString);
        Coluna := XCOLUNAINI + (Tamanho * 28);
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMESTOQUE.TSlaveServ.FieldByName('UNIDADE').AsString);
        Coluna := XCOLUNAINI + (Tamanho * 34);
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMESTOQUE.TSlaveServ.FieldByName('DESCRICAO').AsString);
        Coluna := (XCOLUNAINI + (Tamanho * 108)) - (length(FormatFloat('0.00',
          DMESTOQUE.TSlaveServ.FieldByName('VLRUNIT').AsCurrency)) * Tamanho);
        Printer.Canvas.TextOut(COLUNA, Linha, FormatFloat('0.00',
          DMESTOQUE.TSlaveServ.FieldByName('VLRUNIT').AsCurrency));
        Coluna := (XCOLUNAINI + (Tamanho * 118)) - (length(FormatFloat('0.00',
          DMESTOQUE.TSlaveServ.FieldByName('DESCONTO').AsCurrency)) * Tamanho);
        Printer.Canvas.TextOut(COLUNA, Linha, FormatFloat('0.00',
          DMESTOQUE.TSlaveServ.FieldByName('DESCONTO').AsCurrency));
        Coluna := (XCOLUNAINI + (Tamanho * 130)) - (length(FormatFloat('0.00',
          DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency)) * Tamanho);
        Printer.Canvas.TextOut(COLUNA, Linha, FormatFloat('0.00',
          DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency));
        XTotProdNF := XTotProdNF +
          DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;
        DMESTOQUE.TSlaveServ.Next;
      end;
    end;
    ///////////////////
    //IMPRIME DESPESAS
    ///////////////////
    if not DMESTOQUE.TSlaveServ.IsEmpty then
    begin
      Linha := Linha + XINTERVLIN;
      Coluna := XCOLUNAINI;
      Printer.Canvas.TextOut(COLUNA, Linha, 'Desepesas Adicionais ');
      Linha := Linha + XINTERVLIN;
      //Imprime Cabecalho de Servicos
      Printer.Canvas.TextOut(COLUNA, Linha, 'Cod. Item: ');
      Coluna := Coluna + (Tamanho * 20);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Quant.: ');
      Coluna := Coluna + (Tamanho * 8);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Und.: ');
      Coluna := Coluna + (Tamanho * 6);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Serviço: ');
      Coluna := Coluna + (Tamanho * 66);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Vlr. Unit.: ');
      Coluna := Coluna + (Tamanho * 10);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Desc.(%)');
      Coluna := Coluna + (Tamanho * 15);
      Printer.Canvas.TextOut(COLUNA, Linha, 'Total:');
      Linha := Linha + XINTERVLIN;
      //Imprime Servicos
      DMESTOQUE.TDesp.First;
      while not DMESTOQUE.TDesp.Eof do
      begin
        Coluna := XCOLUNAINI;
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsString);
        Coluna := (XCOLUNAINI + (Tamanho * 26)) -
          (length(DMESTOQUE.TDesp.FieldByName('QTD').AsString) * Tamanho);
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMESTOQUE.TDesp.FieldByName('QTD').AsString);
        Coluna := XCOLUNAINI + (Tamanho * 28);
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMESTOQUE.TDesp.FieldByName('UNIDADE').AsString);
        Coluna := XCOLUNAINI + (Tamanho * 34);
        Printer.Canvas.TextOut(COLUNA, Linha,
          DMESTOQUE.TDesp.FieldByName('DESPESA').AsString);
        Coluna := (XCOLUNAINI + (Tamanho * 108)) - (length(FormatFloat('0.00',
          DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency)) * Tamanho);
        Printer.Canvas.TextOut(COLUNA, Linha, FormatFloat('0.00',
          DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency));
        Coluna := (XCOLUNAINI + (Tamanho * 118)) - (length(FormatFloat('0.00',
          DMESTOQUE.TDesp.FieldByName('DESCONTO').AsCurrency)) * Tamanho);
        Printer.Canvas.TextOut(COLUNA, Linha, FormatFloat('0.00',
          DMESTOQUE.TDesp.FieldByName('DESCONTO').AsCurrency));
        Coluna := (XCOLUNAINI + (Tamanho * 130)) - (length(FormatFloat('0.00',
          DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency)) * Tamanho);
        Printer.Canvas.TextOut(COLUNA, Linha, FormatFloat('0.00',
          DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency));
        XTotProdNF := XTotProdNF +
          DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency;
        DMESTOQUE.TDesp.Next;
      end;
    end;
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI;
    Printer.Canvas.TextOut(COLUNA, Linha, XBarra);
    Linha := Linha + XINTERVLIN;
    Printer.Canvas.TextOut(COLUNA, Linha, 'Responsável: ' +
      DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString + ' - ' +
      DMPESSOA.VWFuncionario.FieldByName('NOME').AsString);
    Linha := Linha + XINTERVLIN;
    Printer.Canvas.TextOut(COLUNA, Linha, 'Total de Produtos: ' +
      FormatFloat('00.00', DMServ.TOrd.FieldByName('TOTPROD').AsCurrency));
    if Tipo <> 'ABERTURA' then
    begin
      //fechamento
      Printer.Canvas.TextOut(COLUNA + (Tamanho * 60), Linha, 'Entrada    Data: '
        + DMServ.TOrd.FieldByName('DTABERT').AsString);
      Printer.Canvas.TextOut(COLUNA + (Tamanho * 95), Linha, 'Entrega    Data: '
        + DMServ.TOrd.FieldByName('DTENTREGA').AsString);
    end
    else
    begin
      //abertura
      Printer.Canvas.TextOut(COLUNA + (Tamanho * 60), Linha,
        'Previsão de    Data: ' + DMServ.TOrd.FieldByName('DTPREV').AsString);
      Printer.Canvas.TextOut(COLUNA + (Tamanho * 95), Linha,
        'Entrada        Data: ' + DMServ.TOrd.FieldByName('DTABERT').AsString);
    end;
    Linha := Linha + XINTERVLIN;
    Printer.Canvas.TextOut(COLUNA, Linha, 'Total de Serviços: ' +
      FormatFloat('00.00', DMServ.TOrd.FieldByName('TOTSERV').AsCurrency));
    Coluna := XCOLUNAINI;
    if Tipo <> 'ABERTURA' then
    begin
      //Fechamento
      Printer.Canvas.TextOut(COLUNA + (Tamanho * 69), Linha, 'Hora: ' +
        DMServ.TOrd.FieldByName('HRABERT').AsString);
      Printer.Canvas.TextOut(COLUNA + (Tamanho * 104), Linha, 'Hora: ' +
        DMServ.TOrd.FieldByName('HRENTREGA').AsString)
    end
    else
    begin
      //abertura
      Printer.Canvas.TextOut(COLUNA + (Tamanho * 62), Linha,
        'Entrega      Hora: ' + DMServ.TOrd.FieldByName('HRPREV').AsString);
      Printer.Canvas.TextOut(COLUNA + (Tamanho * 106), Linha, 'Hora: ' +
        DMServ.TOrd.FieldByName('HRABERT').AsString);
    end;
    Linha := Linha + XINTERVLIN;
    Printer.Canvas.TextOut(COLUNA, Linha, 'Descontos: ' + FormatFloat('00.00',
      DMServ.TOrd.FieldByName('DESCONTO').AsCurrency));
    Linha := Linha + XINTERVLIN;
    Printer.Canvas.TextOut(COLUNA, Linha, 'TOTAL: ' + FormatFloat('00.00',
      DMServ.TOrd.FieldByName('TOTORD').AsCurrency));
    Linha := Linha + XINTERVLIN;
    Linha := Linha + XINTERVLIN;
    if Tipo = 'ABERTURA' then
    begin
      //Imprime texto de abertura
      XLinAuxImp01 := DMMACS.TLoja.FieldByName('TXTABERTORD').AsString;
      I := Length(XLinAuxImp01);
      LinImp := 0;
      while LinImp <= I do
      begin
        XLinAuxImp02 := copy(XLinAuxImp01, LinImp, 80);
        LinImp := LinImp + 80;
        Coluna := XQTDETQPAG - Round((Length(Trim(XLinAuxImp02)) * Tamanho) /
          2);
        Printer.Canvas.TextOut(COLUNA, Linha, XLinAuxImp02);
        Linha := Linha + XINTERVLIN;
      end;
    end
    else
    begin
      //Imprime texto de fechamento
      XLinAuxImp01 := DMMACS.TLoja.FieldByName('TXTFECHORD').AsString;
      I := Length(XLinAuxImp01);
      LinImp := 0;
      while LinImp <= I do
      begin
        XLinAuxImp02 := copy(XLinAuxImp01, LinImp, 80);
        LinImp := LinImp + 80;
        Coluna := XQTDETQPAG - Round((Length(Trim(XLinAuxImp02)) * Tamanho) /
          2);
        Printer.Canvas.TextOut(COLUNA, Linha, XLinAuxImp02);
        Linha := Linha + XINTERVLIN;
      end;
    end;
    Coluna := XCOLUNAINI;
    Linha := Linha + (XINTERVLIN * 3);
    Printer.Canvas.TextOut(COLUNA, Linha,
      '____________________________________________');
    Coluna := XCOLUNAINI + (Tamanho * 89);
    Printer.Canvas.TextOut(COLUNA, Linha,
      '____________________________________________');
    Linha := Linha + XINTERVLIN;
    Coluna := XCOLUNAINI + (TamAnho * 15);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Cliente/Responsável            ');
    Coluna := XCOLUNAINI + (Tamanho * 108);
    Printer.Canvas.TextOut(COLUNA, Linha, 'Conferente');
    Linha := Linha + XINTERVLIN;
    //Imprime Rodape
    Printer.Canvas.TextOut(XCOLUNAINI, Linha, XBarra);
    Linha := Linha + XINTERVLIN;
    Coluna := XQTDETQPAG - Round((Length(FMenu.XRODAPE1) * Tamanho) / 2);
    Printer.Canvas.TextOut(Coluna, Linha, FMenu.XRODAPE1);
    Linha := Linha + XINTERVLIN;
    Coluna := XQTDETQPAG - Round((Length(FMenu.XRODAPE2) * Tamanho) / 2);
    Printer.Canvas.TextOut(Coluna, Linha, FMenu.XRODAPE2);
    Printer.enddoc;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.' + #13 +
      'Se o problema continuar reinicie o computador e a impressora.', '', 1, 1,
      false, 'i');
  end;
end;

//Função para retornar o nome da impressora padrão
function GetDefaultPrinterName: string;
begin
  if (Printer.PrinterIndex >= 0) then
  begin
    Result := Printer.Printers[Printer.PrinterIndex];
  end
  else
  begin
    Result := 'null';
  end;
end;

//FUNÇAO RETORNA MSN DAECF
function Retorno_Impressora: Boolean;
var
  iACK, iST1, iST2, iST3: Integer;
begin
  iACK := 0;
  iST1 := 0;
  iST2 := 0;
  iST3 := 0;
  if (bRetornoEstendido = true) then
    iRetorno := Bematech_FI_RetornoImpressoraMFD(iACK, iST1, iST2, iST3)
  else
    iRetorno := Bematech_FI_RetornoImpressora(iACK, iST1, iST2);

  if iACK = 21 then
  begin
    Application.MessageBox('A Impressora retornou NAK. O programa será abortado!', 'Erro', MB_IconError + MB_OK);
    Result := False;
    Exit;
  end
  else
  begin
    if (bRetornoEstendido = true) then
      Application.MessageBox(pchar('ACK = 6, ST1 = ' + inttostr(iSt1) +
        ', ST2 = ' + inttostr(iSt2) +
        ', ST3 = ' + inttostr(iSt3)), 'Retorno da Impressora', MB_IconInformation
          + MB_OK);
  end;
  if (iACK = 6) then
  begin
    // Verifica ST1
    if iST1 >= 128 then
    begin
      iST1 := iST1 - 128;
      MessageDlg('FIM DE PAPEL!', mtWarning, [mbOK], 0);
      Result := False;
    end;
    if iST1 >= 64 then
    begin
      iST1 := iST1 - 64;
      MessageDlg('POUCO PAPEL!', mtWarning, [mbOK], 0);
    end;
    if iST1 >= 32 then
    begin
      iST1 := iST1 - 32;
    end;
    if iST1 >= 16 then
    begin
      iST1 := iST1 - 16;
      MessageDlg('IMPRESSORA COM ERRO!', mtWarning, [mbOK], 0);
      Result := FALSE;
    end;
    if iST1 >= 8 then
    begin
      iST1 := iST1 - 8;
    end;
    if iST1 >= 4 then
    begin
      iST1 := iST1 - 4;
      MessageDlg('COMANDO INEXISTENTE!', mtWarning, [mbOK], 0);
      Result := FALSE;
    end;
    if iST1 >= 2 then
    begin
      iST1 := iST1 - 2;
    end;
    if iST1 >= 1 then
    begin
      iST1 := iST1 - 1;
      MessageDlg('Nº DE PARÂMETRO INVÁLIDO!', mtWarning, [mbOK], 0);
      Result := FALSE;
    end;

    // Verifica ST2
    if iST2 >= 128 then
    begin
      iST2 := iST2 - 128;
      MessageDlg('TIPO DE PARAMETRO INVÁLIDO!', mtWarning, [mbOK], 0);
      Result := False;
    end;
    if iST2 >= 64 then
    begin
      iST2 := iST2 - 64;
      MessageDlg('MEMÓRIA FISCAL CHEIA!', mtWarning, [mbOK], 0);
      Result := FALSE;
    end;
    if iST2 >= 32 then
    begin
      iST2 := iST2 - 32;
      Result := FALSE;
    end;
    if iST2 >= 16 then
    begin
      iST2 := iST2 - 16;
      MessageDlg('ALIQUOTA NÃO PROGRAMADA!', mtWarning, [mbOK], 0);
      Result := False;
    end;
    if iST2 >= 8 then
    begin
      iST2 := iST2 - 8;
      MessageDlg('ALIQUOTAS CHEIAS!', mtWarning, [mbOK], 0);
      Result := False;
    end;
    if iST2 >= 4 then
    begin
      iST2 := iST2 - 4;
      MessageDlg('CANCELAMENTO NÃO PERMITIDO!', mtWarning, [mbOK], 0);
      Result := FALSE;
    end;
    if iST2 >= 2 then
    begin
      iST2 := iST2 - 2;
      MessageDlg('CGC/IE NÃO PROGRAMADOS!', mtWarning, [mbOK], 0);
    end;
    if iST2 >= 1 then
    begin
      iST2 := iST2 - 1;
      MessageDlg('COMANDO NÃO EXECUTADO!', mtWarning, [mbOK], 0);
      Result := fALSE;
    end;
  end;
end;

//FUNÇAO UTILIZADA PARA ANALIZAR RETORNO DA ECF
function Analisa_iRetorno: Boolean;
begin
  if iRetorno = 0 then
    Application.MessageBox('Erro de Comunicação !', 'Erro', MB_IconError +
      MB_OK);

  if iRetorno = -1 then
    Application.MessageBox('Erro de Execução na Função. Verifique!', 'Erro',
      MB_IconError + MB_OK);

  if iRetorno = -2 then
    Application.MessageBox('Parâmetro Inválido !', 'Erro', MB_IconError +
      MB_OK);

  if iRetorno = -3 then
    Application.MessageBox('Alíquota não programada !', 'Atenção',
      MB_IconInformation + MB_OK);

  if iRetorno = -4 then
    Application.MessageBox('Arquivo BemaFI32.INI não encontrado. Verifique!',
      'Atenção',
      MB_IconInformation + MB_OK);
  if iRetorno = -5 then
    Application.MessageBox('Erro ao Abrir a Porta de Comunicação', 'Erro',
      MB_IconError + MB_OK);
  if iRetorno = -6 then
    Application.MessageBox('Impressora Desligada ou Desconectada', 'Atenção',
      MB_IconInformation + MB_OK);

  if iRetorno = -7 then
    Application.MessageBox('Banco Não Cadastrado no Arquivo BemaFI32.ini',
      'Atenção',
      MB_IconInformation + MB_OK);
  if iRetorno = -8 then
    Application.MessageBox('Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt', 'Erro',
      MB_IconError + MB_OK);
  if iRetorno = -18 then
    Application.MessageBox('Não foi possível abrir arquivo INTPOS.001 !',
      'Atenção',
      MB_IconInformation + MB_OK);

  if iRetorno = -19 then
    Application.MessageBox('Parâmetro diferentes !', 'Atenção',
      MB_IconInformation + MB_OK);

  if iRetorno = -20 then
    Application.MessageBox('Transação cancelada pelo Operador !', 'Atenção',
      MB_IconInformation + MB_OK);

  if iRetorno = -21 then
    Application.MessageBox('A Transação não foi aprovada !', 'Atenção',
      MB_IconInformation + MB_OK);

  if iRetorno = -22 then
    Application.MessageBox('Não foi possível terminal a Impressão !', 'Atenção',
      MB_IconInformation + MB_OK);

  if iRetorno = -23 then
    Application.MessageBox('Não foi possível terminal a Operação !', 'Atenção',
      MB_IconInformation + MB_OK);

  if iRetorno = -24 then
    Application.MessageBox('Forma de pagamento não programada.', 'Atenção',
      MB_IconInformation + MB_OK);

  if iRetorno = -25 then
    Application.MessageBox('Totalizador não fiscal não programado.', 'Atenção',
      MB_IconInformation + MB_OK);

  if iRetorno = -26 then
    Application.MessageBox('Transação já Efetuada !', 'Atenção',
      MB_IconInformation + MB_OK);

  if iRetorno = -28 then
    Application.MessageBox('Não há Informações para serem Impressas !',
      'Atenção',
      MB_IconInformation + MB_OK);
end;

//Função utilizada p/ verificar status da impressora
function LexVerificaImp: Boolean;
begin
  iRetorno := Bematech_FI_VerificaImpressoraLigada();
  if iRetorno = -6 then
  begin
    Application.MessageBox('A Impressora se encontra DESLIGADA.', 'Atenção',
      MB_IconInformation + MB_OK);
    Result := False;
  end
  else
  begin
    Application.MessageBox('A Impressora se encontra LIGADA.', 'Atenção',
      MB_IconInformation + MB_OK);
    Result := True;
  end;

  Analisa_iRetorno;
  Retorno_Impressora;
end;

//Função Utilizada para Abrir a ECF direto pela dll bematech
function LexAbreCupom(CPF: string): Boolean;
begin
  try
    if ValidCPF(CPF) = True then
    begin
      iRetorno := Bematech_FI_AbreCupom(Pchar(''));
      Analisa_iRetorno();
      Retorno_Impressora();
    end
    else
    begin
      iRetorno := Bematech_FI_AbreCupom(CPF);
      Analisa_iRetorno();
      Retorno_Impressora();
    end;
  except
    Result := False;
  end;
end;

function PegaTamanhoPapel(dmPaperSize: word): string;
begin
  Result := 'Desconhecido';
  // Verifica ALGUNS TAMANHOS POSSÍVEIS. Existem outros, veja DEVMODE
  case dmPaperSize of
    DMPAPER_USER: Result := 'Definido pelo usuário';
    DMPAPER_LETTER: Result := 'Letter, 8 1/2- by 11-inches';
    DMPAPER_LEGAL: Result := 'Legal, 8 1/2- by 14-inches';
    DMPAPER_A4: Result := 'A4 Sheet, 210- by 297-millimeters';
  end;
end;

procedure MostraDevMode(const M: TDevMode);
begin
  // Mostra o valor de alguns campos
  with M do
  begin
    // Mostra nome da impressora
    FMenu.ListBox.Items.Add('Nome:' + dmDeviceName);
    // Verifica se campo tamanho do papel esta preenchido e mostra
    if dmFields and DM_PAPERSIZE <> 0 then
      FMenu.ListBox.Items.Add(PegaTamanhoPapel(dmPaperSize));
    if dmFields and DM_PAPERLENGTH <> 0 then
      FMenu.ListBox.Items.Add(Format('Altura:%d', [dmPaperLength]));
    if dmFields and DM_PAPERWIDTH <> 0 then
      FMenu.ListBox.Items.Add(Format('Comprimento:%d', [dmPaperWidth]));
  end;
end;

//Mostra tamanho do papel
procedure MostraTamPapel;
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
  if M <> nil then
    MostraDevMode(M^);
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
    //           GlobalFree(DeviceMode);
  end;
end;

//Imprime cabeçalho em Nota Fiscal
function NFCabecalho: Boolean;
var
  I: Integer;
begin
  Result := True;
  try
    if XTipoNF = 'SAIDA' then
    begin
      ImpCampo('X - Saida', 'X', 'S');
      ImpCampo('Numero', XNumNotaFiscal, 'S');
      ;
      ImpCampo('Natureza', DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString,
        'S');
      ImpCampo('CFOP', DMESTOQUE.TCFOP.FieldByName('CFOP').AsString, 'S');
      // 				 ImpCampo('IE Subs.', DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString, 'S');
      if FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA',
        DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '') = True then
      begin
        ImpCampo('Nome', DMPESSOA.TCliente.FieldByName('COD_INTERNO').AsString +
          '-' + DMPESSOA.TPessoaJ.FieldByName('RAZAO_SOCIAL').AsString, 'S');
      end
      else
      begin
        ImpCampo('Nome', DMPESSOA.TCliente.FieldByName('COD_INTERNO').AsString +
          '-' + DMPESSOA.TPessoa.FieldByName('Nome').AsString, 'S');
      end;

      ImpCampo('CPF/CNPJ', DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString,
        'S');

      //imprime data de emissão da nota fiscal
      if FMenu.XPedFatura = '' then
      begin
        ImpCampo('Data Emissao',
          DMSAIDA.TFiscPV.FieldByName('DTEMISSAO').AsString, 'S');
      end
      else
      begin
        ImpCampo('Data Emissao', DateToStr(Date()), 'S');
      end;

      ImpCampo('Endereco', DMPESSOA.TPessoa.FieldByName('ENDERECO').AsString,
        'S');
      ImpCampo('Bairro', DMPESSOA.TPessoa.FieldByName('BAIRRO').AsString, 'S');
      ImpCampo('CEP', DMPESSOA.TPessoa.FieldByName('CEP').AsString, 'S');

      //imprime data da fatura
      if FMenu.XPedFatura = '' then
      begin
        ImpCampo('Data Saida', DMSAIDA.TFiscPV.FieldByName('DTENTSAID').AsString,
          'S');
      end
      else
      begin
        ImpCampo('Data Saida', DateToStr(Date()), 'S');
      end;

      if not DMGEOGRAFIA.TCidade.IsEmpty then
        ImpCampo('Municipio', DMGEOGRAFIA.TCidade.FieldByName('NOME').AsString,
          'S');
      ImpCampo('Fone', DMPESSOA.TPessoa.FieldByName('TELREL').AsString, 'S');
      if not DMGEOGRAFIA.TEstado.IsEmpty then
        ImpCampo('UF', DMGEOGRAFIA.TEstado.FieldByName('UF_ESTADO').AsString,
          'S');
      if not DMPESSOA.TPessoaJ.IsEmpty then
        ImpCampo('IE', DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString, 'S');

      //imprime hora da fatura
      if FMenu.XPedFatura = '' then
      begin
        ImpCampo('Hora Saida', DMSAIDA.TFiscPV.FieldByName('HORASAID').AsString,
          'S');
      end
      else
      begin
        ImpCampo('Hora Saida', TimeToStr(time()), 'S');
      end;

      //IMPRIME DUPLICATAS EM FATURAMENTOS
      if (DMESTOQUE.TCFOP.FieldByName('DEVOLUCAO').AsString <> '1') or
        (DMESTOQUE.TCFOP.FieldByName('DEVOLUCAO').AsString = NULL) then
      begin
        //SE O CFOP USADO NÃO FOR DE DEVOLUÇÃO
        I := 1;
        if XImpDup = 1 then
        begin
          DMCONTA.WParR.First;
          while not DMCONTA.WParR.Eof do
          begin
            ImpCampo('Fat. Vencimento 0' + IntToStr(I),
              DMCONTA.WParR.FieldByName('DTVENC').AsString, 'S');
            ImpCampo('Fat. Valor 0' + IntToStr(I),
              DMCONTA.WParR.FieldByName('VALOR').AsString, 'M');
            DMCONTA.WParR.Next;
            I := I + 1;
          end;
          //IMPRIME DUPLICATAS NO ESTILO SEQUENCIAL
          XNUMLIN := DMMACS.TLoja.FieldByName('NFENTLINRECIBO').AsInteger;
          DMCONTA.WParR.First;
          while not DMCONTA.WParR.Eof do
          begin
            ImpCampo('Venc. Duplicata',
              DMCONTA.WParR.FieldByName('DTVENC').AsString, 'S');
            ImpCampo('Valor Duplicata',
              DMCONTA.WParR.FieldByName('VALOR').AsString, 'M');
            if DMCONTA.WParR.FieldByName('COBRANCA').AsString = 'CARTEIRA' then
              ImpCampo('Local Cob. Duplicata', 'NA EMPRESA', 'S')
            else
              ImpCampo('Local Cob. Duplicata', 'COB. BANCÁRIA', 'S');

            DMCONTA.WParR.Next;
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINRECIBO').AsInteger;
          end;
        end
        else
        begin
          ImpCampo('Fat. Vencimento 01', FormatDateTime('dd/mm/yyyy', Date()) +
            ' - À VISTA', 'S');
          ImpCampo('Fat. Valor 01',
            DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsString, 'M');
        end;
      end;
    end;
    if XTipoNF = 'OS' then
    begin
      if FMenu.TIPOREL = 'RNF' then
        ImpCampo('X - Saida', '.X.', 'S')
      else
        ImpCampo('X - Saida', 'X', 'S');
      ImpCampo('Numero', XNumNotaFiscal, 'S');
      ;
      ImpCampo('Natureza', DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString,
        'S');
      ImpCampo('CFOP', DMESTOQUE.TCFOP.FieldByName('CFOP').AsString, 'S');
      ///					ImpCampo('IE Subs.', DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString, 'S');

                     //ImpCampo('Nome', DMPESSOA.TCliente.FieldByName('COD_INTERNO').AsString+'-'+ DMPESSOA.TPessoa.FieldByName('Nome').AsString, 'S');

      if FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA',
        DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '') = True then
      begin
        ImpCampo('Nome', DMPESSOA.TCliente.FieldByName('COD_INTERNO').AsString +
          '-' + DMPESSOA.TPessoaJ.FieldByName('RAZAO_SOCIAL').AsString, 'S');
      end
      else
      begin
        ImpCampo('Nome', DMPESSOA.TCliente.FieldByName('COD_INTERNO').AsString +
          '-' + DMPESSOA.TPessoa.FieldByName('Nome').AsString, 'S');
      end;

      ImpCampo('CPF/CNPJ', DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString,
        'S');
      ImpCampo('Data Emissao', DMServ.TFiscOrd.FieldByName('DTEMISSAO').AsString,
        'S');
      ImpCampo('Endereco', DMPESSOA.TPessoa.FieldByName('ENDERECO').AsString,
        'S');
      ImpCampo('Bairro', DMPESSOA.TPessoa.FieldByName('BAIRRO').AsString, 'S');
      ImpCampo('CEP', DMPESSOA.TPessoa.FieldByName('CEP').AsString, 'S');
      ImpCampo('Data Saida', DMServ.TFiscOrd.FieldByName('DTENTSAID').AsString,
        'S');
      if not DMGEOGRAFIA.TCidade.IsEmpty then
        ImpCampo('Municipio', DMGEOGRAFIA.TCidade.FieldByName('NOME').AsString,
          'S');
      ImpCampo('Fone', DMPESSOA.TPessoa.FieldByName('TELREL').AsString, 'S');
      if not DMGEOGRAFIA.TEstado.IsEmpty then
        ImpCampo('UF', DMGEOGRAFIA.TEstado.FieldByName('UF_ESTADO').AsString,
          'S');
      if not DMPESSOA.TPessoaJ.IsEmpty then
        ImpCampo('IE', DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString, 'S');
      ImpCampo('Hora Saida', DMServ.TFiscOrd.FieldByName('HORASAID').AsString,
        'S');
      //IMPRIME DUPLICATAS EM FATURAMENTOS
      I := 1;

      DMCONTA.TParcCR.Close;
      DMCONTA.TParcCR.SQL.Clear;
      DMCONTA.TParcCR.SQL.Add('select * from parcelacr');
      DMCONTA.TParcCR.SQL.Add('left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber');
      DMCONTA.TParcCR.SQL.Add('where ctareceber.cod_gerador = :COD');
      DMCONTA.TParcCR.ParamByName('COD').AsString :=
        DMServ.TFiscOrd.FieldByName('cod_ordem').AsString;
      DMCONTA.TParcCR.Open;

      DMCONTA.TParcCR.First;
      while not DMCONTA.TParcCR.Eof do
      begin
        ImpCampo('Fat. Vencimento 0' + IntToStr(I),
          DMCONTA.TParcCR.FieldByName('DTVENC').AsString, 'S');
        ImpCampo('Fat. Valor 0' + IntToStr(I),
          DMCONTA.TParcCR.FieldByName('VALOR').AsString, 'M');
        DMCONTA.TParcCR.Next;
        I := I + 1;
      end;
      //IMPRIME DUPLICATAS NO ESTILO SEQUENCIAL
      XNUMLIN := DMMACS.TLoja.FieldByName('NFENTLINRECIBO').AsInteger;
      DMCONTA.TParcCR.First;
      while not DMCONTA.TParcCR.Eof do
      begin
        ImpCampo('Venc. Duplicata',
          DMCONTA.TParcCR.FieldByName('DTVENC').AsString, 'S');
        ImpCampo('Valor Duplicata',
          DMCONTA.TParcCR.FieldByName('VALOR').AsString, 'M');
        if DMCONTA.TParcCR.FieldByName('COBRANCA').AsString = 'CARTEIRA' then
          ImpCampo('Local Cob. Duplicata', 'NA EMPRESA', 'S')
        else
          ImpCampo('Local Cob. Duplicata', 'COB. BANCÁRIA', 'S');

        DMCONTA.TParcCR.Next;
        XNUMLIN := XNUMLIN +
          DMMACS.TLoja.FieldByName('NFENTLINRECIBO').AsInteger;
      end;
    end;
    if XTipoNF = 'ENTRADA' then
    begin
      ImpCampo('X - Entrada', 'X', 'S');
      ImpCampo('Numero', XNumNotaFiscal, 'S');
      ;
      ImpCampo('Natureza', DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString,
        'S');
      ImpCampo('CFOP', DMESTOQUE.TCFOP.FieldByName('CFOP').AsString, 'S');
      ///					ImpCampo('IE Subs.', DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString, 'S');
      ImpCampo('Nome', DMPESSOA.TPessoa.FieldByName('Nome').AsString, 'S');
      ImpCampo('CPF/CNPJ', DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString,
        'S');
      ImpCampo('Data Emissao',
        DMENTRADA.TFiscPC.FieldByName('DTEMISSAO').AsString, 'S');
      ImpCampo('Endereco', DMPESSOA.TPessoa.FieldByName('ENDERECO').AsString,
        'S');
      ImpCampo('Bairro', DMPESSOA.TPessoa.FieldByName('BAIRRO').AsString, 'S');
      ImpCampo('CEP', DMPESSOA.TPessoa.FieldByName('CEP').AsString, 'S');
      ImpCampo('Data Saida', DMENTRADA.TFiscPC.FieldByName('dtentsaid').AsString,
        'S');
      if not DMGEOGRAFIA.TCidade.IsEmpty then
        ImpCampo('Municipio', DMGEOGRAFIA.TCidade.FieldByName('NOME').AsString,
          'S');
      ImpCampo('Fone', DMPESSOA.TPessoa.FieldByName('TELREL').AsString, 'S');
      if not DMGEOGRAFIA.TEstado.IsEmpty then
        ImpCampo('UF', DMGEOGRAFIA.TEstado.FieldByName('UF_ESTADO').AsString,
          'S');
      if not DMPESSOA.TPessoaJ.IsEmpty then
        ImpCampo('IE', DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString, 'S');
      ImpCampo('Hora Saida', DMENTRADA.TFiscPC.FieldByName('HORASAID').AsString,
        'S');
    end;
  except
    Result := False;
  end;
end;

//Seleciona e Imprime a Fatura da Ordem de Serviço
function NFFaturaOS(Cod_Ordem: Integer; XSQLTabela: string; XCONTROLEREL:
  Integer): Boolean;
var
  I, XCod_tmp, XAUX: Integer;
  XTIPOPAG, XFORMAPAG, XTIPOGER, XTABELA, XPARCELA, XCODIGO: string;
begin
  {         ImpCampo('Fat. Vencimento 0'+IntToStr(I), DMMACS.TMP.FieldByName('DESC1').AsString, 'S');
           ImpCampo('Fat. Valor 0'+IntToStr(I), DMMACS.TMP.FieldByName('VLR1').AsString, 'M');
           }

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
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add('select * from tmp');
    DMMACS.TMP.Open;

    //DJ 18/12/2009: Adaptado para ser usado em espelhoNF emitindo tambem pedvenda e pedcompra
    if (XSQLTabela = 'ORDEM') then
    begin
      XTIPOPAG := DMServ.WOrdem.FieldByName('TIPOPAG').AsString;
      XFORMAPAG := DMServ.WOrdem.FieldByName('formapag').AsString;
      XTIPOGER := 'ORD';
      XTABELA := 'ctareceber';
      XPARCELA := 'parcelacr';
      XCODIGO := 'cod_ctareceber';
    end
    else
    begin
      if (XSQLTabela = 'PEDCOMPRA') then
      begin
        XTIPOPAG := DMENTRADA.WPedc.FieldByName('cobranca').AsString;
        XFORMAPAG := DMENTRADA.WPedc.FieldByName('formpag').AsString;
        XTIPOGER := 'PEDCOMPRA';
        XTABELA := 'ctapagar';
        XPARCELA := 'parcelacp';
        XCODIGO := 'cod_ctapagar';
      end
      else
      begin
        if (XSQLTabela = 'PEDVENDA') then
          XTIPOPAG := DMSAIDA.WPedV.FieldByName('cobranca').AsString;
        XFORMAPAG := DMSAIDA.WPedV.FieldByName('formpag').AsString;
        XTIPOGER := 'PEDVENDA';
        XTABELA := 'ctareceber';
        XPARCELA := 'parcelacr';
        XCODIGO := 'cod_ctareceber';
      end;
    end;

    //VERIFICA SE A FORMA DE PAGAMENTO EH MULTIPLO
    if (XTIPOPAG <> 'Multiplo') then
    begin
      //Tenta encontras a Forma de pagamento
      if (XFORMAPAG = 'À VISTA') then
      begin
        DMMACS.TMP.Insert;
        DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
        DMMACS.TMP.FieldByName('DESC1').AsString := 'À VISTA';
        DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
          DMServ.TFiscOrd.FieldByName('VLRTOTDOCNF').AsCurrency;
        //DJ 18/12/2009: Controla se 1 = fatura ou se 2 = CFOP, utilizado na unit geraRelatorioNF
        DMMACS.TMP.FieldByName('INT2').AsInteger := 1;
        DMMACS.TMP.Post;
        XCod_tmp := XCod_tmp + 1;
      end
      else
      begin
        //filtra contas a receber
        DMCONTA.TCtaR.Close;
        DMCONTA.TCtaR.SQL.Clear;
        DMCONTA.TCtaR.SQL.Add('select * from ' + XTABELA + ' where (' + XTABELA +
          '.cod_gerador=:CodGerador) and (' + XTABELA + '.tipogerador=' + #39 +
          XTIPOGER + #39 + ')');
        DMCONTA.TCtaR.ParamByName('CodGerador').AsInteger := Cod_Ordem;
        DMCONTA.TCtaR.Open;
        if not DMCONTA.TCtaR.IsEmpty then
        begin
          //seleciona as parcelas do ctas a receber
          DMCONTA.TParcCR.Close;
          DMCONTA.TParcCR.SQL.Clear;
          DMCONTA.TParcCR.SQL.Add('select * from ' + XPARCELA + ' where ' +
            XPARCELA + '.' + XCODIGO + '=:ctareceber');
          if (XTABELA = 'ctareceber') then
            XAUX := DMCONTA.TCtaR.fieldbyname('cod_ctareceber').AsInteger
          else
            XAUX := DMCONTA.TCtaR.fieldbyname('cod_ctapagar').AsInteger;
          DMCONTA.TParcCR.ParamByName('ctareceber').AsInteger := XAUX;
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
              DMMACS.TMP.FieldByName('INT2').AsInteger := 1;
              DMMACS.TMP.Post;
              XCod_tmp := XCod_tmp + 1;
              DMCONTA.TParcCR.Next;
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
      DMCAIXA.TAlx.SQL.Add('SELECT lancaixa.valor FROM lancaixa WHERE (lancaixa.cod_gerador=:CODIGO) AND (lancaixa.tipogerador=' + #39 + XTIPOGER + #39 + ')');
      DMCAIXA.TAlx.ParamByName('CODIGO').AsInteger := Cod_Ordem;
      DMCAIXA.TAlx.Open;
      if not DMCAIXA.TAlx.IsEmpty then
      begin
        DMMACS.TMP.Insert;
        DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
        DMMACS.TMP.FieldByName('DESC1').AsString := 'Entrada';
        DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
          DMCAIXA.TAlx.FieldByName('valor').AsCurrency;
        DMMACS.TMP.FieldByName('INT2').AsInteger := 1;
        DMMACS.TMP.Post;
        XCod_tmp := XCod_tmp + 1;

      end;
      //LOCALIZA CONTAS A PRAZO
      DMCAIXA.TAlx.Close;
      DMCAIXA.TAlx.SQL.Clear;
      DMCAIXA.TAlx.SQL.Add(' SELECT ' + XPARCELA + '.valor, ' + XPARCELA +
        '.dtvenc FROM ' + XPARCELA);
      DMCAIXA.TAlx.SQL.Add(' LEFT JOIN ' + XTABELA + ' ON ' + XPARCELA + '.' +
        XCODIGO + ' = ' + XTABELA + '.' + XCODIGO);
      DMCAIXA.TAlx.SQL.Add(' WHERE (' + XTABELA + '.cod_gerador=:Codigo) and (c'
        + XTABELA + '.tipogerador=' + #39 + XTIPOGER + #39 + ')');
      DMCAIXA.TAlx.ParamByName('codigo').AsInteger := Cod_Ordem;
      DMCAIXA.TAlx.Open;
      if not DMCAIXA.TAlx.IsEmpty then
      begin
        DMMACS.TMP.Insert;
        DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
        DMMACS.TMP.FieldByName('DESC1').AsString :=
          DMCAIXA.TAlx.FieldByName('dtvenc').AsString;
        DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
          DMCAIXA.TAlx.FieldByName('valor').AsCurrency;
        DMMACS.TMP.FieldByName('INT2').AsInteger := 1;
        DMMACS.TMP.Post;
        XCod_tmp := XCod_tmp + 1;
      end;
      //LOCALIZA CHEQUES
      DMCAIXA.TAlx.Close;
      DMCAIXA.TAlx.SQL.Clear;
      DMCAIXA.TAlx.SQL.Add(' SELECT movbanco.valor, movbanco.dtvenc FROM movbanco ');
      DMCAIXA.TAlx.SQL.Add(' LEFT join chequerec ON movbanco.cod_movbanco = chequerec.cod_movbanco ');
      DMCAIXA.TAlx.SQL.Add(' where (movbanco.tipogerador=' + #39 + XTIPOGER + #39
        + ') and (movbanco.cod_gerador=cod_gerador) ');
      DMCAIXA.TAlx.ParamByName('codigo').AsInteger := Cod_Ordem;
      DMCAIXA.TAlx.Open;
      if not DMCAIXA.TAlx.IsEmpty then
      begin
        DMMACS.TMP.Insert;
        DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
        DMMACS.TMP.FieldByName('DESC1').AsString :=
          DMCAIXA.TAlx.FieldByName('dtvenc').AsString;
        DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
          DMCAIXA.TAlx.FieldByName('valor').AsCurrency;
        DMMACS.TMP.FieldByName('INT2').AsInteger := 1;
        DMMACS.TMP.Post;
        XCod_tmp := XCod_tmp + 1;
      end;

    end;

    //seleciona as faturas a serem impressas
    DMCONTA.IBT.CommitRetaining;
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add('select * from tmp where tmp.int2 = 1');
    DMMACS.TMP.Open;

    DMMACS.TMP.First;
    if (XCONTROLEREL = 1) then
    begin
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

//Imprime cabeçalho em Nota Fiscal de Ordem de Serviço
function NFCabecalhoOS: Boolean;
var
  XCSTNormal, XCstSubst: Boolean;
begin
  Result := True;
  try
    if FMenu.TIPOREL = 'RNF' then
      ImpCampo('X - Saida', '.X.', 'S')
    else
      ImpCampo('X - Saida', 'X', 'S');
    ImpCampo('Numero', XNumNotaFiscal, 'S');
    ;
    //Seleciona para verificar se exite item de cst normal
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' Select cst.substituicao from itprodord ');
    DMMACS.TALX.SQL.Add(' Left Join cst on itprodord.cod_cst = cst.cod_cst ');
    DMMACS.TALX.SQL.Add(' Where ((cst.substituicao=' + #39 + '0' + #39 +
      ') or (cst.substituicao is null)) and (itprodord.cod_ordem=:codigo) ');
    DMMACS.TALX.ParamByName('CODIGO').AsInteger :=
      DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
    DMMACS.TALX.Open;
    if DMMACS.TALX.IsEmpty then
      XCSTNormal := False
    else
      XCSTNormal := True;

    //verificar se o cfop é unico ou com substituição
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' Select cst.substituicao from itprodord ');
    DMMACS.TALX.SQL.Add(' Left Join cst on itprodord.cod_cst = cst.cod_cst ');
    DMMACS.TALX.SQL.Add(' Where (cst.substituicao=' + #39 + '1' + #39 +
      ') and (itprodord.cod_ordem=:codigo) ');
    DMMACS.TALX.ParamByName('CODIGO').AsInteger :=
      DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger;
    DMMACS.TALX.Open;

    if DMMACS.TALX.IsEmpty then
      XCstSubst := False
    else
      XCstSubst := True;

    //CFOP NORMAL
    if (XCstSubst = False) then
    begin
      //uso normal de cfop
      ImpCampo('Natureza', DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString,
        'S');
      ImpCampo('CFOP', DMESTOQUE.TCFOP.FieldByName('CFOP').AsString, 'S');
    end;

    //CFOP NORMAL + SUBSTITUIÇÃO
    if (XCSTNormal = true) and (XCstSubst = True) then
    begin
      //uso de cfop normal com substituição tributária
      //Busca a cfop de substituição
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
      if Fmenu.XEstadoOrigem <> Fmenu.XEstadoDestino then
        DMMACS.TALX.ParamByName('codigo').AsInteger :=
          DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsInteger
          //para cfop fora do estado
      else
        DMMACS.TALX.ParamByName('codigo').AsInteger :=
          DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsInteger;
          //para cfop fora do estado
      DMMACS.TALX.Open;
      if DMMACS.TALX.IsEmpty then
      begin
        //SE NÃO ENCONTROU O CFOP DE SUBSITUIÇÃO, IMPRIME SOMENTE O NORMAL
        ImpCampo('Natureza', DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString,
          'S');
        ImpCampo('CFOP', DMESTOQUE.TCFOP.FieldByName('CFOP').AsString, 'S');
      end
      else
      begin
        //SE ENCONTROU O CFOP DE SUBSITUIÇÃO IMPRIME OS DOIS
        ImpCampo('Natureza', DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString +
          '/' + DMMACS.TALX.FieldByName('DESCRICAO').AsString, 'S');
        ImpCampo('CFOP', DMESTOQUE.TCFOP.FieldByName('CFOP').AsString + '/' +
          DMMACS.TALX.FieldByName('CFOP').AsString, 'S');
      end;
    end;

    //APENAS CFOP DE SUBSTITUIÇÃO
    if (XCSTNormal = False) and (XCstSubst = True) then
    begin
      //uso de cfop apenas de substituição tributária
      //Busca a cfop de substituição
      DMMACS.TALX.Close;
      DMMACS.TALX.SQL.Clear;
      DMMACS.TALX.SQL.Add(' Select * from cfop where cfop.cod_cfop=:codigo ');
      if Fmenu.XEstadoOrigem <> Fmenu.XEstadoDestino then
        DMMACS.TALX.ParamByName('codigo').AsInteger :=
          DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsInteger
          //para cfop fora do estado
      else
        DMMACS.TALX.ParamByName('codigo').AsInteger :=
          DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsInteger;
          //para cfop fora do estado
      DMMACS.TALX.Open;
      if DMMACS.TALX.IsEmpty then
      begin
        //SE NÃO ENCONTROU O CFOP DE SUBSITUIÇÃO, IMPRIME SOMENTE O NORMAL
        ImpCampo('Natureza', DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString,
          'S');
        ImpCampo('CFOP', DMESTOQUE.TCFOP.FieldByName('CFOP').AsString, 'S');
      end
      else
      begin
        //SE ENCONTROU O CFOP DE SUBSITUIÇÃO IMPRIME OS DOIS
        ImpCampo('Natureza', DMMACS.TALX.FieldByName('DESCRICAO').AsString,
          'S');
        ImpCampo('CFOP', DMMACS.TALX.FieldByName('CFOP').AsString, 'S');
      end;
    end;

    ///					ImpCampo('IE Subs.', DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString, 'S');

    //ImpCampo('Nome', DMPESSOA.TCliente.FieldByName('COD_INTERNO').AsString+'-'+ DMPESSOA.TPessoa.FieldByName('Nome').AsString, 'S');

    if FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA',
      DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '') = True then
    begin
      ImpCampo('Nome', DMPESSOA.TCliente.FieldByName('COD_INTERNO').AsString +
        '-' + DMPESSOA.TPessoaJ.FieldByName('RAZAO_SOCIAL').AsString, 'S');
    end
    else
    begin
      ImpCampo('Nome', DMPESSOA.TCliente.FieldByName('COD_INTERNO').AsString +
        '-' + DMPESSOA.TPessoa.FieldByName('Nome').AsString, 'S');
    end;

    ImpCampo('CPF/CNPJ', DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString, 'S');
    ImpCampo('Data Emissao', DMServ.TFiscOrd.FieldByName('DTEMISSAO').AsString,
      'S');
    ImpCampo('Endereco', DMPESSOA.TPessoa.FieldByName('ENDERECO').AsString,
      'S');
    ImpCampo('Bairro', DMPESSOA.TPessoa.FieldByName('BAIRRO').AsString, 'S');
    ImpCampo('CEP', DMPESSOA.TPessoa.FieldByName('CEP').AsString, 'S');
    ImpCampo('Data Saida', DMServ.TFiscOrd.FieldByName('DTENTSAID').AsString,
      'S');
    if not DMGEOGRAFIA.TCidade.IsEmpty then
      ImpCampo('Municipio', DMGEOGRAFIA.TCidade.FieldByName('NOME').AsString,
        'S');
    ImpCampo('Fone', DMPESSOA.TPessoa.FieldByName('TELREL').AsString, 'S');
    if not DMGEOGRAFIA.TEstado.IsEmpty then
      ImpCampo('UF', DMGEOGRAFIA.TEstado.FieldByName('UF_ESTADO').AsString,
        'S');
    if not DMPESSOA.TPessoaJ.IsEmpty then
      ImpCampo('IE', DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString, 'S');
    ImpCampo('Hora Saida', DMServ.TFiscOrd.FieldByName('HORASAID').AsString,
      'S');
  except
    Result := False;
  end;
end;

//Imprime Produtos em Nota Fiscal de Ordem de Serviço
function NFProdutosOS: Boolean;
begin
  Result := True;
  try
    //IMPRIME PRODUTOS DA NF
    while not DMServ.TPOrd.Eof do
    begin
      //PARA CADA ITEM DE VENDA SELECIONA O PRODUTO DO MESMO
      FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE',
        DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsString, '');
      //PARA CADA ITEM DE VENDA SELECIONA O LOTE REFERENTE
      FiltraTabela(DMESTOQUE.TEstoqueLote, 'ESTOQUELOTE', 'COD_ESTOQUE',
        DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsString, '');
      //PARA CADA ITEM DE VENDA SELECIONA O PRODUTO REFERENTE
      FiltraTabela(DMESTOQUE.TProduto, 'PRODUTO', 'COD_PRODUTO',
        DMESTOQUE.WSimilar.FieldByName('COD_PRODUTO').AsString, '');
      //PARA CADA ITEM DE VENDA SELECIONA O SUBPRODUTO REFERENTE
      FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO',
        DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '');
      //PARA CADA ITEM DE VENDA SELECIONA O CST REFERENTE
      FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_CST',
        DMEstoque.TSubProd.FieldByName('COD_CST').AsString, '');
      //PARA CADA ITEM DE VENDA SELECIONA A UNIDADE REFERENTE
      FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE',
        DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString, '');

      ImpCampo('Cód. Produto',
        DMESTOQUE.TSubProd.FieldByName(DMMACS.TLoja.FieldByName('CODPRODREL1').AsString).AsString, 'S');
      ImpCampo('Produto', DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString,
        'S');
      ImpCampo('Desc. Prod.', DMServ.TPOrd.FieldByName('DESCONTO').AsString,
        'M');
      ImpCampo('CFOP Prod.', DMESTOQUE.TCFOP.FieldByName('CFOP').AsString, 'S');
      //Tratamento para cst
      if DMESTOQUE.TCST.FieldByName('substituicao').AsString = '1' then
      begin
        ImpCampo('S.T. Prod.', FMenu.XCST, 'S');
      end
      else
      begin
        ImpCampo('S.T. Prod.',
          DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString, 'S');
      end;
      ImpCampo('Unid. Prod.',
        DMESTOQUE.TUnidade.FieldByName('SIGLA_UNID').AsString, 'S');
      ImpCampo('Quant. Prod.', DMServ.TPOrd.FieldByName('QTD').AsString, 'M');
      ImpCampo('Vlr. Unit. Prod.', DMServ.TPOrd.FieldByName('vlrunit').AsString,
        'M');
      ImpCampo('Vlt. Tot. Prod.', DMServ.TPOrd.FieldByName('total').AsString,
        'M');
      ImpCampo('Aliq. ICMS Prod.', DMServ.TPOrd.FieldByName('aliqicms').AsString,
        'M');
      XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
      XQTDITEMIMPPAG := XQTDITEMIMPPAG + 1;
      DMServ.TPOrd.Next;
      if XQTDITEMIMPPAG = DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger then
        Exit;
    end;
  except
    Result := False;
  end;
end;

//Imprime Produtos em Nota Fiscal
function NFProdutos: Boolean;
begin
  Result := True;
  try
    if XTipoNF = 'SAIDA' then
    begin
      //IMPRIME PRODUTOS DA NF
      while not DMSAIDA.TItemPV.Eof do
      begin
        //PARA CADA ITEM DE VENDA SELECIONA O PRODUTO DO MESMO
        FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE',
          DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA O LOTE REFERENTE
        FiltraTabela(DMESTOQUE.TEstoqueLote, 'ESTOQUELOTE', 'COD_ESTOQUE',
          DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA O PRODUTO REFERENTE
        FiltraTabela(DMESTOQUE.TProduto, 'PRODUTO', 'COD_PRODUTO',
          DMESTOQUE.WSimilar.FieldByName('COD_PRODUTO').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA O SUBPRODUTO REFERENTE
        FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO',
          DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA O CST REFERENTE
        FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_CST',
          DMEstoque.TSubProd.FieldByName('COD_CST').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA A UNIDADE REFERENTE
        FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE',
          DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString, '');

        ImpCampo('Cód. Produto',
          DMESTOQUE.TSubProd.FieldByName(DMMACS.TLoja.FieldByName('CODPRODREL1').AsString).AsString, 'S');
        ImpCampo('Produto', DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString,
          'S');
        //Sleciona lote
        DMMACS.TLote.Close;
        DMMACS.TLote.SQL.Clear;
        DMMACS.TLote.SQL.Add(' select * from lote where lote.cod_lote = :codigo ');
        DMMACS.TLote.ParamByName('CODIGO').AsString :=
          DMSAIDA.TItemPV.FieldByName('COD_LOTE').AsString;
        DMMACS.TLote.Open;
        if not DMMACS.TLote.IsEmpty then
          ImpCampo('Lote Prod.',
            IntToStr(DMMACS.TLote.FieldByName('NUMERO').AsInteger), 'S');
        ImpCampo('Desc. Prod.', DMSAIDA.TItemPV.FieldByName('DESCPRO').AsString,
          'M');
        ImpCampo('CFOP Prod.', DMESTOQUE.TCFOP.FieldByName('CFOP').AsString,
          'S');
        //Tratamento para cst
        if DMESTOQUE.TCST.FieldByName('substituicao').AsString = '1' then
        begin
          ImpCampo('S.T. Prod.', FMenu.XCST, 'S');
        end
        else
        begin
          ImpCampo('S.T. Prod.',
            DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString, 'S');
        end;
        ImpCampo('Unid. Prod.',
          DMESTOQUE.TUnidade.FieldByName('SIGLA_UNID').AsString, 'S');
        ImpCampo('Quant. Prod.',
          DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsString, 'M');
        ImpCampo('Vlr. Unit. Prod.',
          DMSAIDA.TItemPV.FieldByName('VALUNIT').AsString, 'M');
        ImpCampo('Vlt. Tot. Prod.',
          DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsString, 'M');
        ImpCampo('Aliq. ICMS Prod.',
          DMSAIDA.TItemPV.FieldByName('ALIQICMS').AsString, 'M');
        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
        XQTDITEMIMPPAG := XQTDITEMIMPPAG + 1;
        DMSAIDA.TItemPV.Next;
        if XQTDITEMIMPPAG = DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger
          then
          Exit;
      end;
    end;
    if XTipoNF = 'OS' then
    begin
      //IMPRIME PRODUTOS DA NF
      while not DMServ.TPOrd.Eof do
      begin
        //PARA CADA ITEM DE VENDA SELECIONA O PRODUTO DO MESMO
        FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE',
          DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA O LOTE REFERENTE
        FiltraTabela(DMESTOQUE.TEstoqueLote, 'ESTOQUELOTE', 'COD_ESTOQUE',
          DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA O PRODUTO REFERENTE
        FiltraTabela(DMESTOQUE.TProduto, 'PRODUTO', 'COD_PRODUTO',
          DMESTOQUE.WSimilar.FieldByName('COD_PRODUTO').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA O SUBPRODUTO REFERENTE
        FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO',
          DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA O CST REFERENTE
        FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_CST',
          DMEstoque.TSubProd.FieldByName('COD_CST').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA A UNIDADE REFERENTE
        FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE',
          DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString, '');

        ImpCampo('Cód. Produto',
          DMESTOQUE.TSubProd.FieldByName(DMMACS.TLoja.FieldByName('CODPRODREL1').AsString).AsString, 'S');
        ImpCampo('Produto', DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString,
          'S');
        ImpCampo('Desc. Prod.', DMServ.TPOrd.FieldByName('DESCONTO').AsString,
          'M');
        ImpCampo('CFOP Prod.', DMESTOQUE.TCFOP.FieldByName('CFOP').AsString,
          'S');
        //Tratamento para cst
        if DMESTOQUE.TCST.FieldByName('substituicao').AsString = '1' then
        begin
          ImpCampo('S.T. Prod.', FMenu.XCST, 'S');
        end
        else
        begin
          ImpCampo('S.T. Prod.',
            DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString, 'S');
        end;
        ImpCampo('Unid. Prod.',
          DMESTOQUE.TUnidade.FieldByName('SIGLA_UNID').AsString, 'S');
        ImpCampo('Quant. Prod.', DMServ.TPOrd.FieldByName('QTD').AsString, 'M');
        ImpCampo('Vlr. Unit. Prod.',
          DMServ.TPOrd.FieldByName('vlrunit').AsString, 'M');
        ImpCampo('Vlt. Tot. Prod.', DMServ.TPOrd.FieldByName('total').AsString,
          'M');
        ImpCampo('Aliq. ICMS Prod.',
          DMServ.TPOrd.FieldByName('aliqicms').AsString, 'M');
        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
        XQTDITEMIMPPAG := XQTDITEMIMPPAG + 1;
        DMServ.TPOrd.Next;
        if XQTDITEMIMPPAG = DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger
          then
          Exit;
      end;
    end;
    if XTipoNF = 'ENTRADA' then
    begin
      //IMPRIME PRODUTOS DA NF
      while not DMENTRADA.TItemPC.Eof do
      begin
        //PARA CADA ITEM DE VENDA SELECIONA O PRODUTO DO MESMO
        FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE',
          DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA O LOTE REFERENTE
        FiltraTabela(DMESTOQUE.TEstoqueLote, 'ESTOQUELOTE', 'COD_ESTOQUE',
          DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA O PRODUTO REFERENTE
        FiltraTabela(DMESTOQUE.TProduto, 'PRODUTO', 'COD_PRODUTO',
          DMESTOQUE.WSimilar.FieldByName('COD_PRODUTO').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA O SUBPRODUTO REFERENTE
        FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO',
          DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA O CST REFERENTE
        FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_CST',
          DMESTOQUE.TProduto.FieldByName('COD_CST').AsString, '');
        //PARA CADA ITEM DE VENDA SELECIONA A UNIDADE REFERENTE
        FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE',
          DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString, '');
        //Paulo 26/11/2010: Seleciona o numero do lote
        FiltraTabela(DMMACS.TLote, 'LOTE', 'COD_LOTE',
          IntToStr(DMESTOQUE.TEstoqueLote.FieldByName('COD_LOTE').AsInteger), '');

        ImpCampo('Cód. Produto',
          DMESTOQUE.TSubProd.FieldByName(DMMACS.TLoja.FieldByName('CODPRODREL1').AsString).AsString, 'S');
        ImpCampo('Produto', DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString,
          'S');
        ImpCampo('Lote Prod.',
          IntToStr(DMMACS.TLote.FieldByName('NUMERO').AsInteger), 'S');
        ImpCampo('Desc. Prod.',
          DMENTRADA.TItemPC.FieldByName('DESCPRO').AsString, 'M');
        ImpCampo('CFOP Prod.', DMESTOQUE.TCFOP.FieldByName('CFOP').AsString,
          'S');
        ImpCampo('S.T. Prod.',
          DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString, 'S');
        ImpCampo('Unid. Prod.',
          DMESTOQUE.TUnidade.FieldByName('SIGLA_UNID').AsString, 'S');
        ImpCampo('Quant. Prod.',
          DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsString, 'M');
        ImpCampo('Vlr. Unit. Prod.',
          DMENTRADA.TItemPC.FieldByName('VALUNIT').AsString, 'M');
        ImpCampo('Vlt. Tot. Prod.',
          DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsString, 'M');
        ImpCampo('Aliq. ICMS Prod.',
          DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsString, 'M');
        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
        XQTDITEMIMPPAG := XQTDITEMIMPPAG + 1;
        DMENTRADA.TItemPC.Next;
        if XQTDITEMIMPPAG = DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger
          then
          Exit;
      end;
    end;
  except
    Result := False;
  end;
end;

//Imprime Serviços em Nota Fiscal
function NFServicos: Boolean;
begin

end;

//Imprime Despesas em Nota Fiscal
function NFDespesas: Boolean;
begin
  Result := True;
  try

    if XTipoNF = 'OS' then
    begin
      //IMPRIME Despesas DA NF
      while not DMESTOQUE.TDesp.Eof do
      begin
        ImpCampo('Desc. Desp.', DMESTOQUE.TDesp.FieldByName('DESPESA').AsString,
          'S');
        ImpCampo('Vlr. Desc. Desp.',
          DMESTOQUE.TDesp.FieldByName('DESCONTO').AsString, 'M');

        ImpCampo('Qnt. Desp.', DMESTOQUE.TDesp.FieldByName('QTD').AsString,
          'M');
        ImpCampo('Vlr. Unit. Desp.',
          DMESTOQUE.TDesp.FieldByName('vlrfinal').AsString, 'M');
        ImpCampo('Vlt. Tot. Desp.',
          DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsString, 'M');

        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINDESP').AsInteger;
        XQTDITEMIMPPAG := XQTDITEMIMPPAG + 1;

        DMESTOQUE.TDesp.Next;

        if XQTDITEMIMPPAG = DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger
          then
          Exit;
      end;
    end;
  except
    Result := False;
  end;
end;

//Imprime Impostos calculados em Nota Fiscal de os
function NFImpostosOS: Boolean;
var
  XCalcImpostos: Integer;
begin
  XCalcImpostos := 1;
  Result := True;
  try
    ImpCampo('Base ICMS', DMServ.TFiscOrd.FieldByName('baseicms').AsString,
      'M');
    ImpCampo('Vlr. ICMS', DMServ.TFiscOrd.FieldByName('vlricms').AsString, 'M');

    if FMenu.XEstadoOrigem <> FMenu.XEstadoDestino then
    begin
      ImpCampo('Base ICMS Subs.',
        DMServ.TFiscOrd.FieldByName('BASCALSUBS').AsString, 'M');
      ImpCampo('Vlr. ICMS Subs.',
        DMServ.TFiscOrd.FieldByName('VLRICMSUBS').AsString, 'M');
    end;
    ImpCampo('Vlr. Frete', DMServ.TFiscOrd.FieldByName('VLRFRETE').AsString,
      'M');
    ImpCampo('Vlr. Seguro', DMServ.TFiscOrd.FieldByName('VLRSEG').AsString,
      'M');
    ImpCampo('Outras Desp.',
      DMServ.TFiscOrd.FieldByName('VLROUTRASDESP').AsString, 'M');
    ImpCampo('Vlr Tot. IPI', DMServ.TFiscOrd.FieldByName('VLRTOTIPI').AsString,
      'M');
    ImpCampo('Vlt Tot. NF', DMServ.TFiscOrd.FieldByName('vlrtotdocnf').AsString,
      'M');

    //verifica e imprime decontos para produtos
    if XTotProdNF <> DMServ.tOrd.FieldByName('totprod').AsCurrency then
    begin
      ImpCampo('Linha Desc. Produto', 'Desconto em produtos R$ ' +
        FormatFloat('0.00', (XTotProdNF -
        DMServ.tOrd.FieldByName('totprod').AsCurrency)), 'S');
      ImpCampo('Vlr. Tot. Prod.',
        FloatToStr((DMServ.TOrd.FieldByName('totprod').AsCurrency)), 'M');
    end
    else
    begin
      ImpCampo('Vlr. Tot. Prod.', FloatToStr(XTotProdNF), 'M');
    end;

    //verifica desconto para serviço
    if XTotServNF <> DMServ.tOrd.FieldByName('totserv').AsCurrency then
    begin
      ImpCampo('Linha Desc. Serviço', 'Desconto em serviço R$ ' +
        FormatFloat('0.00', (XTotServNF -
        DMServ.tOrd.FieldByName('totserv').AsCurrency)), 'S');
      ImpCampo('Vlr. Tot. Serv.',
        FloatToStr(DMServ.TOrd.FieldByName('totserv').AsCurrency), 'M');
    end
    else
    begin
      ImpCampo('Vlr. Tot. Serv.', FloatToStr(XTotServNF), 'M');
    end;

    //13/03/2009: se em empresa estiver setado o ISS imprimir campos  relacionados
    if (DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency > 0) then
    begin
      //13/03/2009: imprime valor do ISS
      ImpCampo('Vlr. ISS', DMServ.TFiscOrd.FieldByName('VLRTOTISS').AsString,
        'M');
    end;
  except
    Result := False;
  end;
end;

//Imprime Impostos calculados em Nota Fiscal
function NFImpostos: Boolean;
begin
  Result := True;
  try
    if XTipoNF = 'SAIDA' then
    begin
      ImpCampo('Base ICMS', DMSAIDA.TFiscPV.FieldByName('baseicms').AsString,
        'M');
      ImpCampo('Vlr. ICMS', DMSAIDA.TFiscPV.FieldByName('vlricms').AsString,
        'M');

      if FMenu.XEstadoOrigem <> FMenu.XEstadoDestino then
      begin
        ImpCampo('Base ICMS Subs.',
          DMSAIDA.TFiscPV.FieldByName('BASCALSUBS').AsString, 'M');
        ImpCampo('Vlr. ICMS Subs.',
          DMSAIDA.TFiscPV.FieldByName('VLRICMSUBS').AsString, 'M');
      end
      else
      begin
        if XCalcImpostos = 0 then
        begin
          //se o sistema estiver configurado para não calcular imposto... imprime a ST conforme o usuario cadastrou
          ImpCampo('Base ICMS Subs.',
            DMSAIDA.TFiscPV.FieldByName('BASCALSUBS').AsString, 'M');
          ImpCampo('Vlr. ICMS Subs.',
            DMSAIDA.TFiscPV.FieldByName('VLRICMSUBS').AsString, 'M');
        end;
      end;
      ImpCampo('Vlr. Frete', DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsString,
        'M');
      ImpCampo('Vlr. Seguro', DMSAIDA.TFiscPV.FieldByName('VLRSEG').AsString,
        'M');
      ImpCampo('Outras Desp.',
        DMSAIDA.TFiscPV.FieldByName('VLROUTRASDESP').AsString, 'M');
      ImpCampo('Vlr Tot. IPI', DMSAIDA.TFiscPV.FieldByName('VLRTOTIPI').AsString,
        'M');
      ImpCampo('Vlt Tot. NF',
        DMSAIDA.TFiscPV.FieldByName('vlrtotdocnf').AsString, 'M');

      if FMenu.XPedFatura = '' {//caso seja direto do pedido de venda} then
      begin
        DMESTOQUE.TCFOP.Close;
        DMESTOQUE.TCFOP.SQL.Clear;
        DMESTOQUE.TCFOP.SQL.Add('SELECT * FROM CFOP WHERE CFOP.COD_CFOP=:CODIGO');
        DMESTOQUE.TCFOP.ParamByName('CODIGO').AsInteger :=
          DMSAIDA.TFiscPV.FieldByName('COD_CFOP').AsInteger;
        DMESTOQUE.TCFOP.Open;
        if DMESTOQUE.TCFOP.IsEmpty then
        begin
          MessageDlg('Informe CFOP para continuar', mtWarning, [mbOK], 0);
        end;

        //verifica e imprime decontos para produtos
        if XTotProdNF <> DMSAIDA.WPedV.FieldByName('VALOR').AsCurrency then
        begin
          if XCalcImpostos <> 0 then
          begin
            ImpCampo('Linha Desc. Produto', 'Desconto em produtos R$ ' +
              FormatFloat('0.00', XTotProdNF -
              DMSAIDA.WPedV.FieldByName('VALOR').AsCurrency), 'S');
            ImpCampo('Vlr. Tot. Prod.', FloatToStr(XTotProdNF - (XTotProdNF -
              DMSAIDA.WPedV.FieldByName('VALOR').AsCurrency)), 'M');
          end
          else
          begin
            ImpCampo('Vlr. Tot. Prod.',
              FloatToStr(DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency),
              'M');
          end;
        end
        else
        begin
          ImpCampo('Vlr. Tot. Prod.', FloatToStr(XTotProdNF), 'M');
        end;

      end
      else
      begin //caso seja apartir do faturar
        //verifica e imprime decontos para produtos
        if XTotProdNF <> FMenu.XValorFatura then
        begin
          ImpCampo('Linha Desc. Produto', 'Desconto em produtos R$ ' +
            FormatFloat('0.00', XTotProdNF -
            DMSAIDA.WPedV.FieldByName('VALOR').AsCurrency), 'S');
          ImpCampo('Vlr. Tot. Prod.', FloatToStr(XTotProdNF - (XTotProdNF -
            DMSAIDA.WPedV.FieldByName('VALOR').AsCurrency)), 'M');
        end
        else
        begin
          ImpCampo('Vlr. Tot. Prod.', FLOATTOSTR(XTotProdNF), 'M');
        end;
      end;
    end;
    if XTipoNF = 'OS' then
    begin
      ImpCampo('Base ICMS', DMServ.TFiscOrd.FieldByName('baseicms').AsString,
        'M');
      ImpCampo('Vlr. ICMS', DMServ.TFiscOrd.FieldByName('vlricms').AsString,
        'M');

      if FMenu.XEstadoOrigem <> FMenu.XEstadoDestino then
      begin
        ImpCampo('Base ICMS Subs.',
          DMServ.TFiscOrd.FieldByName('BASCALSUBS').AsString, 'M');
        ImpCampo('Vlr. ICMS Subs.',
          DMServ.TFiscOrd.FieldByName('VLRICMSUBS').AsString, 'M');
      end;
      ImpCampo('Vlr. Frete', DMServ.TFiscOrd.FieldByName('VLRFRETE').AsString,
        'M');
      ImpCampo('Vlr. Seguro', DMServ.TFiscOrd.FieldByName('VLRSEG').AsString,
        'M');
      ImpCampo('Outras Desp.',
        DMServ.TFiscOrd.FieldByName('VLROUTRASDESP').AsString, 'M');
      ImpCampo('Vlr Tot. IPI', DMServ.TFiscOrd.FieldByName('VLRTOTIPI').AsString,
        'M');
      ImpCampo('Vlt Tot. NF',
        DMServ.TFiscOrd.FieldByName('vlrtotdocnf').AsString, 'M');

      //verifica e imprime decontos para produtos
      if XTotProdNF <> DMServ.tOrd.FieldByName('totprod').AsCurrency then
      begin
        ImpCampo('Linha Desc. Produto', 'Desconto em produtos R$ ' +
          FormatFloat('0.00', (XTotProdNF -
          DMServ.tOrd.FieldByName('totprod').AsCurrency)), 'S');
        ImpCampo('Vlr. Tot. Prod.', FloatToStr(XTotProdNF -
          (DMServ.TOrd.FieldByName('totprod').AsCurrency)), 'M');
      end
      else
      begin
        ImpCampo('Vlr. Tot. Prod.', FloatToStr(XTotProdNF), 'M');
      end;

      //verifica desconto para serviço
      if XTotServNF <> DMServ.tOrd.FieldByName('totserv').AsCurrency then
      begin
        ImpCampo('Linha Desc. Serviço', 'Desconto em serviço R$ ' +
          FormatFloat('0.00', (XTotServNF -
          DMServ.tOrd.FieldByName('totserv').AsCurrency)), 'S');
        ImpCampo('Vlr. Tot. Serv.',
          FloatToStr(DMServ.TOrd.FieldByName('totserv').AsCurrency), 'M');
      end
      else
      begin
        ImpCampo('Vlr. Tot. Serv.', FloatToStr(XTotServNF), 'M');
      end;

      //13/03/2009: se em empresa estiver setado o ISS imprimir campos  relacionados
      if (DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency > 0) then
      begin
        //13/03/2009: imprime valor do ISS
        ImpCampo('Vlr. ISS', DMServ.TFiscOrd.FieldByName('VLRTOTISS').AsString,
          'M');
      end;
    end;
    if XTipoNF = 'ENTRADA' then
    begin
      ImpCampo('Base ICMS', DMENTRADA.TFiscPC.FieldByName('BASEICMS').AsString,
        'M');
      ImpCampo('Vlr. ICMS', DMENTRADA.TFiscPC.FieldByName('VLRICMS').AsString,
        'M');
      ImpCampo('Base ICMS Subs.',
        DMENTRADA.TFiscPC.FieldByName('BASCALSUBS').AsString, 'M');
      ImpCampo('Vlr. ICMS Subs.',
        DMENTRADA.TFiscPC.FieldByName('VLRICMSUBS').AsString, 'M');
      ImpCampo('Vlr. Tot. Prod.', FloatToStr(XTotProdNF), 'M');
      ImpCampo('Vlr. Frete', DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsString,
        'M');
      ImpCampo('Vlr. Seguro', DMENTRADA.TFiscPC.FieldByName('VLRSEG').AsString,
        'M');
      ImpCampo('Outras Desp.',
        DMENTRADA.TFiscPC.FieldByName('VLROUTRASDESP').AsString, 'M');
      ImpCampo('Vlr Tot. IPI',
        DMENTRADA.TFiscPC.FieldByName('VLRTOTIPI').AsString, 'M');
      ImpCampo('Vlt Tot. NF', DMENTRADA.WPedc.FieldByName('VALOR').AsString,
        'M');
      //verifica e imprime decontos para produtos
      if XTotProdNF <> DMENTRADA.WPedc.FieldByName('VALOR').AsCurrency then
      begin
        ImpCampo('Linha Desc. Produto', 'Desconto em produtos R$ ' +
          FormatFloat('0.00', XTotProdNF -
          DMENTRADA.WPedc.FieldByName('VALOR').AsCurrency), 'S');
      end;
    end;
  except
    Result := False;
  end;
end;

//Imprime Impostos marcados com x em Nota Fiscal
function NFImpostosX: Boolean;
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
  if (XTipoNF = 'OS') then
  begin
    ImpCampo('Vlr. ISS', 'X,XX', 'S');
    ImpCampo('Vlr. Tot. Serv.', 'X,XX', 'S');
  end;
end;

//Imprime Transportador em Nota Fiscal
function NFTransportadora: Boolean;
begin
  if XTipoNF = 'SAIDA' then
  begin
    ImpCampo('Nome Transp.', DMPESSOA.TALX.FieldByName('NOME').AsString, 'S');
    ImpCampo('Frete por Conta',
      DMSAIDA.TFiscPV.FieldByName('FRETECONTA').AsString, 'S');
    ImpCampo('Placa Veiculo', DMSAIDA.TFiscPV.FieldByName('PLACA').AsString,
      'S');
    ImpCampo('UF Veiculo', DMSAIDA.TFiscPV.FieldByName('UFPLACA').AsString,
      'S');
    ImpCampo('CPF/CNPJ Transp.', DMPESSOA.TALX.FieldByName('CPFCNPJ').AsString,
      'S');
    ImpCampo('Endereco Transp.', DMPESSOA.TALX.FieldByName('ENDERECO').AsString,
      'S');
    ImpCampo('Municipio Transp.', DMPESSOA.TALX.FieldByName('CIDADE').AsString,
      'S');
    ImpCampo('UF Transp.', DMPESSOA.TALX.FieldByName('UF').AsString, 'S');
    ImpCampo('IE Transp.', DMPESSOA.TALX1.FieldByName('insc_est').AsString,
      'S');
    ImpCampo('Quant. Transp.',
      DMSAIDA.TFiscPV.FieldByName('QUANTFRETE').AsString, 'S');
    ImpCampo('Especie Transp.',
      DMSAIDA.TFiscPV.FieldByName('ESPECIEFRETE').AsString, 'S');
    ImpCampo('Marca Transp.', DMSAIDA.TFiscPV.FieldByName('MARCAFRETE').AsString,
      'S');
    ImpCampo('Numero Transp.', DMSAIDA.TFiscPV.FieldByName('NUMCONHEC').AsString,
      'S');
    ImpCampo('Peso Bruto Transp.',
      DMSAIDA.TFiscPV.FieldByName('PESOBRUTO').AsString, 'S');
    ImpCampo('Peso Liquido Transp.',
      DMSAIDA.TFiscPV.FieldByName('PESOLIQ').AsString, 'S');
  end;
  if XTipoNF = 'OS' then
  begin
    ImpCampo('Nome Transp.', DMPESSOA.TALX.FieldByName('NOME').AsString, 'S');
    ImpCampo('Frete por Conta',
      DMServ.TFiscOrd.FieldByName('FRETECONTA').AsString, 'S');
    ImpCampo('Placa Veiculo', DMServ.TFiscOrd.FieldByName('PLACA').AsString,
      'S');
    ImpCampo('UF Veiculo', DMServ.TFiscOrd.FieldByName('UFPLACA').AsString,
      'S');
    ImpCampo('CPF/CNPJ Transp.', DMPESSOA.TALX.FieldByName('CPFCNPJ').AsString,
      'S');
    ImpCampo('Endereco Transp.', DMPESSOA.TALX.FieldByName('ENDERECO').AsString,
      'S');
    ImpCampo('Municipio Transp.', DMPESSOA.TALX.FieldByName('CIDADE').AsString,
      'S');
    ImpCampo('UF Transp.', DMPESSOA.TALX.FieldByName('UF').AsString, 'S');
    ImpCampo('IE Transp.', DMPESSOA.TALX1.FieldByName('insc_est').AsString,
      'S');
    ImpCampo('Quant. Transp.',
      DMServ.TFiscOrd.FieldByName('QUANTFRETE').AsString, 'S');
    ImpCampo('Especie Transp.',
      DMServ.TFiscOrd.FieldByName('ESPECIEFRETE').AsString, 'S');
    ImpCampo('Marca Transp.', DMServ.TFiscOrd.FieldByName('MARCAFRETE').AsString,
      'S');
    ImpCampo('Numero Transp.', DMServ.TFiscOrd.FieldByName('NUMCONHEC').AsString,
      'S');
    ImpCampo('Peso Bruto Transp.',
      DMServ.TFiscOrd.FieldByName('PESOBRUTO').AsString, 'S');
    ImpCampo('Peso Liquido Transp.',
      DMServ.TFiscOrd.FieldByName('PESOLIQ').AsString, 'S');
  end;
  if XTipoNF = 'ENTRADA' then
  begin
    ImpCampo('Nome Transp.', DMPESSOA.TALX.FieldByName('NOME').AsString, 'S');
    ImpCampo('Frete por Conta',
      DMENTRADA.TFiscPC.FieldByName('FRETECONTA').AsString, 'S');
    ImpCampo('Placa Veiculo', DMENTRADA.TFiscPC.FieldByName('PLACA').AsString,
      'S');
    ImpCampo('UF Veiculo', DMENTRADA.TFiscPC.FieldByName('UFPLACA').AsString,
      'S');
    ImpCampo('CPF/CNPJ Transp.', DMPESSOA.TALX.FieldByName('CPFCNPJ').AsString,
      'S');
    ImpCampo('Endereco Transp.', DMPESSOA.TALX.FieldByName('ENDERECO').AsString,
      'S');
    ImpCampo('Municipio Transp.', DMPESSOA.TALX.FieldByName('CIDADE').AsString,
      'S');
    ImpCampo('UF Transp.', DMPESSOA.TALX.FieldByName('UF').AsString, 'S');
    ImpCampo('IE Transp.', DMPESSOA.TALX1.FieldByName('insc_est').AsString,
      'S');
    ImpCampo('Quant. Transp.',
      DMENTRADA.TFiscPC.FieldByName('QUANTFRETE').AsString, 'S');
    ImpCampo('Especie Transp.',
      DMENTRADA.TFiscPC.FieldByName('ESPECIEFRETE').AsString, 'S');
    ImpCampo('Marca Transp.',
      DMENTRADA.TFiscPC.FieldByName('MARCAFRETE').AsString, 'S');
    ImpCampo('Numero Transp.',
      DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString, 'S');
    ImpCampo('Peso Bruto Transp.',
      DMENTRADA.TFiscPC.FieldByName('PESOBRUTO').AsString, 'S');
    ImpCampo('Peso Liquido Transp.',
      DMENTRADA.TFiscPC.FieldByName('PESOLIQ').AsString, 'S');
  end;
end;

//Imprime Dados Adicionais em Nota Fiscal
function NFDadosAdicionais: Boolean;
var
  XAux: Integer;
begin
  Result := True;
  XNUMLIN := 0;
  if XTipoNF = 'SAIDA' then
  begin
    XAux := (Round(XQTDITEM /
      DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger));
    if XAux < (XQTDITEM / DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger)
      then
      XAux := XAux + 1;

    // IF FMenu.XEncontrouST = True

  end;
  if XTipoNF = 'OS' then
  begin
    XAux := (Round(XQTDITEM /
      DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger));
    if XAux < (XQTDITEM / DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger)
      then
      XAux := XAux + 1;
  end;

  if XTipoNF = 'ENTRADA' then
  begin
    XAux := (Round(XQTDITEM /
      DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger));
    if XAux < (XQTDITEM / DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger)
      then
      XAux := XAux + 1;
  end;
  if (XAux <> 1) then
    ImpCampo('Dados Adicionais', 'FOLHA: ' + IntToStr(XQTDPAGIMP) + '/' +
      IntToStr(XAux), 'S');
  //IMPRIME CAMPO DE DADOS ADICIONAIS EM LOJA

  XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
  //ImpCampo('Dados Adicionais', DMMACS.TLoja.FieldByName('NFDADOSADIC').AsString, 'S');
  //XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
  FMenu.MAux.Lines.Clear;
  if XTipoNF = 'SAIDA' then
    FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO',
      IntToStr(XCodigoPedido), '');
  if FMenu.XPedFatura = '' then
  begin
    FMenu.MAux.Lines.Text := DMSAIDA.TFiscPV.FieldByName('OBS').AsString;
  end
  else
  begin
    //       FMenu.MAux.Lines.Text:='Ped:'+FMenu.XPedFatura;
  end;

  if FMenu.XEncontrouST = True then
  begin
    if FMenu.XPedFatura = '' then
    begin
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' SELECT * FROM CFOP WHERE CFOP.COD_CFOP=:CODIGO');
      //seta cfop interno ou externo caso tenha substituição tributaria de algum produto
      if FMenu.XEstadoOrigem = FMenu.XEstadoDestino then
      begin
        DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger :=
          DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsInteger;
      end
      else
      begin
        DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger :=
          DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsInteger;
      end;
    end
    else
    begin
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' SELECT * FROM CFOP WHERE CFOP.CFOP=:CODIGO');
      //seta cfop interno ou externo caso tenha substituição tributaria de algum produto
      if FMenu.XEstadoOrigem = FMenu.XEstadoDestino then
      begin
        DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger :=
          DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsInteger;
      end
      else
      begin
        DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger :=
          DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsInteger;
      end;
    end;

    DMESTOQUE.Alx.Open;
    if not DMESTOQUE.Alx.IsEmpty then
    begin
      XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
      //             ImpCampo('Dados Adicionais', 'CFOP Subtituição Tributária: '+ DMESTOQUE.Alx.FieldByName('cfop').AsString+ ' - '+DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, 'S');
      ImpCampo('Dados Adicionais', '. ' +
        DMESTOQUE.Alx.FieldByName('cfop').AsString + ' - ' +
        DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, 'S');
    end;
    {XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
    ImpCampo('Dados Adicionais', 'Base de Cálculo ICMS S.T. R$ '+ DMSAIDA.TFiscPV.FieldByName('baseicms').AsString, 'M');
    XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
    ImpCampo('Dados Adicionais', 'Valor de ICMS S.T. R$ '+ DMSAIDA.TFiscPV.FieldByName('vlricms').AsString, 'M');}
  end;

  if XTipoNF = 'OS' then
    FMenu.MAux.Lines.Text := DMServ.TFiscOrd.FieldByName('OBS').AsString;
  if XTipoNF = 'ENTRADA' then
    FMenu.MAux.Lines.Text := DMENTRADA.TFiscPC.FieldByName('OBS').AsString;
  if DMServ.TOrd.FieldByName('numfiscalaux').AsString <> '' then
  begin
    ImpCampo('Dados Adicionais', 'Nota Fiscal Ref.: ' +
      DMServ.TOrd.FieldByName('numfiscalaux').AsString, 'S');
    XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
  end;

  for XAuxLinAdic := 0 to FMenu.MAux.Lines.Count do
  begin
    ImpCampo('Dados Adicionais', FMenu.MAux.Lines[XAuxLinAdic], 'S');
    XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
  end;
  if XTipoNF = 'SAIDA' then
    ImpCampo('Nº NF Rodapé', DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString,
      'S');

  if (FMenu.XEncontrouST = True) and
    (DMESTOQUE.TCFOP.FieldByName('DEVOLUCAO').AsString <> '1') then
  begin
    if FMenu.XEstadoOrigem = FMenu.XEstadoDestino {//dentro do estado} then
    begin
      if FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP',
        DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsString, '') = True then
      begin
        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
        ImpCampo('Dados Adicionais', DMESTOQUE.Alx.FieldByName('cfop').AsString +
          '-' + DMESTOQUE.Alx.FieldByName('descricao').AsString, 'S');
      end;
    end;
    if FMenu.XEstadoOrigem <> FMenu.XEstadoDestino {//fora do estado} then
    begin
      if FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP',
        DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsString, '') = True then
      begin
        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
        ImpCampo('Dados Adicionais', DMESTOQUE.Alx.FieldByName('cfop').AsString +
          '-' + DMESTOQUE.Alx.FieldByName('descricao').AsString, 'S');
      end;
    end;
  end;

  if XTipoNF = 'OS' then
  begin
    ImpCampo('Nº NF Rodapé', DMServ.TFiscOrd.FieldByName('NUMDOCFIS').AsString,
      'S');
  end;
  if XTipoNF = 'ENTRADA' then
    ImpCampo('Nº NF Rodapé', DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString,
      'S');
  //					ImpCampo('Dados Adicionais', DMSAIDA.TFiscPV.FieldByName('NUMCONHEC').AsString, 'S');
end;

//Imprime Dados Adicionais em Nota Fiscal DE Ordem de serviços
function NFDadosAdicionaisOS: Boolean;
var
  XAux: Integer;
begin
  Result := True;
  XNUMLIN := 0;
  //Define a quantidade de espaçamentos para as linhas de dados adicionais
  XAux := (Round(XQTDITEM / DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger));
  if XAux < (XQTDITEM / DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger) then
    XAux := XAux + 1;

  //CASO HAJA MAIS DE UMA PAGINA A SER IMPRESSA O SISTEMA IMPRIME A QUANTIDADE DE PAGINAS
  if (XAux <> 1) then
    ImpCampo('Dados Adicionais', 'FOLHA: ' + IntToStr(XQTDPAGIMP) + '/' +
      IntToStr(XAux), 'S');

  //IMPRIME CAMPO DE DADOS ADICIONAIS EM LOJA
  XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;

  FMenu.MAux.Lines.Clear;
  //IMPRIME DADOS ADICIONAIS 01
  FMenu.MAux.Lines.Text := DMServ.TFiscOrd.FieldByName('DADOSAD01').AsString;
  if FMenu.MAux.Lines.Text <> '' then
  begin
    for XAuxLinAdic := 0 to FMenu.MAux.Lines.Count do
    begin
      ImpCampo('Dados Adicionais', FMenu.MAux.Lines[XAuxLinAdic], 'S');
      XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
    end;
  end;
  //IMPRIME DADOS ADICIONAIS 02
  FMenu.MAux.Lines.Text := DMServ.TFiscOrd.FieldByName('DADOSAD02').AsString;
  if FMenu.MAux.Lines.Text <> '' then
  begin
    for XAuxLinAdic := 0 to FMenu.MAux.Lines.Count do
    begin
      ImpCampo('Dados Adicionais', FMenu.MAux.Lines[XAuxLinAdic], 'S');
      XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
    end;
  end;
  //IMPRIME OBSERVAÇÃO NORMAL DA ORDEM
  if DMMACS.TLoja.FieldByName('NFIMPOBS').AsString = '1' then
  begin
    FMenu.MAux.Lines.Text := DMServ.TOrd.FieldByName('OBSERVACAO').AsString;
    if FMenu.MAux.Lines.Text <> '' then
    begin
      for XAuxLinAdic := 0 to FMenu.MAux.Lines.Count do
      begin
        ImpCampo('Dados Adicionais', FMenu.MAux.Lines[XAuxLinAdic], 'S');
        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
      end;
    end;
  end;

  //IMPRIME DADOS ADICIONAIS 03
  FMenu.MAux.Lines.Text := DMServ.TFiscOrd.FieldByName('DADOSAD03').AsString;
  if FMenu.MAux.Lines.Text <> '' then
  begin
    for XAuxLinAdic := 0 to FMenu.MAux.Lines.Count do
    begin
      ImpCampo('Dados Adicionais', FMenu.MAux.Lines[XAuxLinAdic], 'S');
      XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
    end;
  end;
  //IMPRIME DADOS ADICIONAIS 04
  FMenu.MAux.Lines.Text := DMServ.TFiscOrd.FieldByName('DADOSAD04').AsString;
  if FMenu.MAux.Lines.Text <> '' then
  begin
    for XAuxLinAdic := 0 to FMenu.MAux.Lines.Count do
    begin
      ImpCampo('Dados Adicionais', FMenu.MAux.Lines[XAuxLinAdic], 'S');
      XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
    end;
  end;
  //IMPRIME NUMER DA NOTA NO RODAPE DA NOTA
  ImpCampo('Nº NF Rodapé', DMServ.TFiscOrd.FieldByName('NUMDOCFIS').AsString,
    'S');
  XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
  //se o sistema encontrou algum produto tributado deve-se inserir em dados adicionais o cfop do mesmo
  {If FMenu.XEncontrouST=True
  Then Begin
       if FMenu.XEstadoOrigem = FMenu.XEstadoDestino //dentro do estado
       then begin
            If FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsString, '')=True
            Then Begin
                 ImpCampo('Dados Adicionais', DMESTOQUE.Alx.FieldByName('cfop').AsString+'-'+DMESTOQUE.Alx.FieldByName('descricao').AsString, 'S');
                 XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
            end;
       end;
       if FMenu.XEstadoOrigem <> FMenu.XEstadoDestino //fora do estado
       then begin
            If FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsString, '')=True
            Then Begin
                 ImpCampo('Dados Adicionais', DMESTOQUE.Alx.FieldByName('cfop').AsString+'-'+DMESTOQUE.Alx.FieldByName('descricao').AsString, 'S');
                 XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
            end;
       end;
  End;}
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
      ImpCampo('Dados Adicionais', 'Placa: ' +
        DMPESSOA.TEquip.FieldByName('PLACA').AsString + ' - Frota: ' +
        DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString + ' - Km Atual:' +
        DMServ.TOrd.FieldByName('TOTKM').AsString, 'S');
      XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
    end;
  end;
  FMenu.MAux.Lines.Text := DMServ.TFiscOrd.FieldByName('DADOSAD04').AsString;
  for XAuxLinAdic := 0 to FMenu.MAux.Lines.Count do
  begin
    ImpCampo('Dados Adicionais', FMenu.MAux.Lines[XAuxLinAdic], 'S');
    XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
  end;
end;

//Imprime Dados do Fisco em Nota Fiscal para OS
function NFFiscoOS: Boolean;
var
  XAux: Integer;
begin
  try
    XNUMLIN := 0;
    if XTipoNF = 'OS' then
    begin
      if FMenu.XEncontrouST = True then
      begin
        //DE EMPRESA SIMPLE PARA SIMPLES
        if (FMenu.XTributaEmpresa = 'SIMPLES')
          {// And (FMenu.XTributaCliente='SIMPLES')} then
        begin
          //para estao de Destino e Origem Iguais
          if FMenu.XEstadoOrigem = FMenu.XEstadoDestino then
          begin
            ImpCampo('Reservado ao Fisco', FMenu.XDecreto, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end
          else
          begin
            //Para fora do Estado
            ImpCampo('Reservado ao Fisco', FMenu.XProtocolo, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end;
        end;

        //DE EMPRESA SIMPLE PARA NORMAL
        if (FMenu.XTributaEmpresa = 'SIMPLES')
          {// And (FMenu.XTributaCliente='NORMAL')} then
        begin
          //para estao de Destino e Origem Iguais
          if FMenu.XEstadoOrigem = FMenu.XEstadoDestino then
          begin
            ImpCampo('Reservado ao Fisco', FMenu.XDecreto, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end
          else
          begin
            //Para fora do Estado
            ImpCampo('Reservado ao Fisco', FMenu.XProtocolo, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end;
        end;

        //DE EMPRESA NORMAL
        if (FMenu.XTributaEmpresa = 'NORMAL') then
        begin
          //para estao de Destino e Origem Iguais
          if FMenu.XEstadoOrigem = FMenu.XEstadoDestino then
          begin
            ImpCampo('Reservado ao Fisco', FMenu.XDecreto, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end
          else
          begin
            //Para fora do Estado
            ImpCampo('Reservado ao Fisco', FMenu.XProtocolo, 'S');
            //XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
            //Sete caso devemos imprimir no reservado ao fisco apenas as informações de ICMS Operação
            //ImpCampo('Reservado ao Fisco', 'Base de Cálculo ICMS R$ '+ DMServ.TFiscOrd.FieldByName('baseicms').AsString, 'S');
            //XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
            //ImpCampo('Reservado ao Fisco', 'Valor de ICMS R$ '+ DMServ.TFiscOrd.FieldByName('vlricms').AsString, 'S');
          end;
        end;
      end;
      if FMenu.XEncontrouST = True then
      begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add(' SELECT * FROM CFOP WHERE CFOP.COD_CFOP=:CODIGO');
        DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger :=
          DMMACS.TLoja.FieldByName('cod_cfopauto').AsInteger;
        DMESTOQUE.Alx.Open;
        { If Not DMESTOQUE.Alx.IsEmpty
         Then Begin
              XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
              ImpCampo('Reservado ao Fisco', 'CFOP Subtituição Tributária: '+ DMESTOQUE.Alx.FieldByName('cfop').AsString+ ' - '+DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, 'S');
         End; }
        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
        ImpCampo('Reservado ao Fisco', 'Base de Cálculo ICMS S.T. R$ ' +
          DMServ.TFiscOrd.FieldByName('bascalsubs').AsString, 'S');
        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
        ImpCampo('Reservado ao Fisco', 'Valor de ICMS S.T. R$ ' +
          DMServ.TFiscOrd.FieldByName('vlricmsubs').AsString, 'S');
      end;
    end;
    Result := True;
  except
    Result := False;
  end;
end;

//Imprime Dados do Fisco em Nota Fiscal
function NFFisco: Boolean;
var
  XAux: Integer;
begin
  try
    XNUMLIN := 0;
    if XTipoNF = 'SAIDA' then
    begin
      //só imprime decreto e dados fiscais se encontrou algum produto com s.t.
      if FMenu.XEncontrouST = True then
      begin
        //DE EMPRESA SIMPLE PARA SIMPLES
        if (FMenu.XTributaEmpresa = 'SIMPLES')
          {//And (FMenu.XTributaCliente='SIMPLES')} then
        begin
          //para estao de Destino e Origem Iguais
          if FMenu.XEstadoOrigem = FMenu.XEstadoDestino then
          begin
            ImpCampo('Reservado ao Fisco', FMenu.XDecreto, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end
          else
          begin
            //Para fora do Estado
            ImpCampo('Reservado ao Fisco', FMenu.XProtocolo, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end;
        end;

        //DE EMPRESA SIMPLE PARA NORMAL
        if (FMenu.XTributaEmpresa = 'SIMPLES')
          {//And (FMenu.XTributaCliente='NORMAL')} then
        begin
          //para estao de Destino e Origem Iguais
          if FMenu.XEstadoOrigem = FMenu.XEstadoDestino then
          begin
            ImpCampo('Reservado ao Fisco', FMenu.XDecreto, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end
          else
          begin
            //Para fora do Estado
            ImpCampo('Reservado ao Fisco', FMenu.XProtocolo, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end;
        end;

        //DE EMPRESA NORMAL
        if (FMenu.XTributaEmpresa = 'NORMAL') then
        begin
          //para estao de Destino e Origem Iguais
          if FMenu.XEstadoOrigem = FMenu.XEstadoDestino then
          begin
            ImpCampo('Reservado ao Fisco', FMenu.XDecreto, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end
          else
          begin
            //Para fora do Estado
            ImpCampo('Reservado ao Fisco', FMenu.XProtocolo, 'S');
            //XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
            //Sete caso devemos imprimir no reservado ao fisco apenas as informações de ICMS Operação
            //ImpCampo('Reservado ao Fisco', 'Base de Cálculo ICMS R$ '+ DMSAIDA.TFiscPV.FieldByName('baseicms').AsString, 'M');
            //XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
            //ImpCampo('Reservado ao Fisco', 'Valor de ICMS R$ '+ DMSAIDA.TFiscPV.FieldByName('vlricms').AsString, 'M');
          end;
        end;

        if FMenu.XEncontrouST = True then
        begin
          DMESTOQUE.Alx.Close;
          DMESTOQUE.Alx.SQL.Clear;
          DMESTOQUE.Alx.SQL.Add(' SELECT * FROM CFOP WHERE CFOP.COD_CFOP=:CODIGO');
          DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger :=
            DMMACS.TLoja.FieldByName('cod_cfopauto').AsInteger;
          DMESTOQUE.Alx.Open;
          { If Not DMESTOQUE.Alx.IsEmpty
           Then Begin
                XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
                ImpCampo('Reservado ao Fisco', 'CFOP Subtituição Tributária: '+ DMESTOQUE.Alx.FieldByName('cfop').AsString+ ' - '+DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, 'S');
           End; }
          XNUMLIN := XNUMLIN +
            DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          ImpCampo('Reservado ao Fisco', 'Base de Cálculo ICMS S.T. : R$ ' +
            DMSAIDA.TFiscPV.FieldByName('baseicms').AsString, 'S');
          XNUMLIN := XNUMLIN +
            DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          ImpCampo('Reservado ao Fisco', 'Valor de ICMS S.T. : R$ ' +
            DMSAIDA.TFiscPV.FieldByName('vlricms').AsString, 'S');
        end;

      end;
    end;
    if XTipoNF = 'OS' then
    begin
      if FMenu.XEncontrouST = True then
      begin
        //DE EMPRESA SIMPLE PARA SIMPLES
        if (FMenu.XTributaEmpresa = 'SIMPLES')
          {//And (FMenu.XTributaCliente='SIMPLES')} then
        begin
          //para estao de Destino e Origem Iguais
          if FMenu.XEstadoOrigem = FMenu.XEstadoDestino then
          begin
            ImpCampo('Reservado ao Fisco', FMenu.XDecreto, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end
          else
          begin
            //Para fora do Estado
            ImpCampo('Reservado ao Fisco', FMenu.XProtocolo, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end;
        end;

        //DE EMPRESA SIMPLE PARA NORMAL
        if (FMenu.XTributaEmpresa = 'SIMPLES')
          {//And (FMenu.XTributaCliente='NORMAL')} then
        begin
          //para estao de Destino e Origem Iguais
          if FMenu.XEstadoOrigem = FMenu.XEstadoDestino then
          begin
            ImpCampo('Reservado ao Fisco', FMenu.XDecreto, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end
          else
          begin
            //Para fora do Estado
            ImpCampo('Reservado ao Fisco', FMenu.XProtocolo, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end;
        end;

        //DE EMPRESA NORMAL
        if (FMenu.XTributaEmpresa = 'NORMAL') then
        begin
          //para estao de Destino e Origem Iguais
          if FMenu.XEstadoOrigem = FMenu.XEstadoDestino then
          begin
            ImpCampo('Reservado ao Fisco', FMenu.XDecreto, 'S');
            XNUMLIN := XNUMLIN +
              DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          end
          else
          begin
            //Para fora do Estado
            ImpCampo('Reservado ao Fisco', FMenu.XProtocolo, 'S');
            //XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
            //Sete caso devemos imprimir no reservado ao fisco apenas as informações de ICMS Operação
            //ImpCampo('Reservado ao Fisco', 'Base de Cálculo ICMS R$ '+ DMServ.TFiscOrd.FieldByName('baseicms').AsString, 'S');
            //XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
            //ImpCampo('Reservado ao Fisco', 'Valor de ICMS R$ '+ DMServ.TFiscOrd.FieldByName('vlricms').AsString, 'S');
          end;
        end;
      end;
      if FMenu.XEncontrouST = True then
      begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add(' SELECT * FROM CFOP WHERE CFOP.COD_CFOP=:CODIGO');
        DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger :=
          DMMACS.TLoja.FieldByName('cod_cfopauto').AsInteger;
        DMESTOQUE.Alx.Open;
        { If Not DMESTOQUE.Alx.IsEmpty
         Then Begin
              XNUMLIN:=XNUMLIN+DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
              ImpCampo('Reservado ao Fisco', 'CFOP Subtituição Tributária: '+ DMESTOQUE.Alx.FieldByName('cfop').AsString+ ' - '+DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString, 'S');
         End; }
        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
        ImpCampo('Reservado ao Fisco', 'Base de Cálculo ICMS S.T. R$ ' +
          DMServ.TFiscOrd.FieldByName('bascalsubs').AsString, 'S');
        XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
        ImpCampo('Reservado ao Fisco', 'Valor de ICMS S.T. R$ ' +
          DMServ.TFiscOrd.FieldByName('vlricmsubs').AsString, 'S');
      end;
    end;
    Result := True;
  except
    Result := False;
  end;
end;

//Verifica se a impressora esta on-line

//função complementar da Verifica impressora Online
function VerImpressoraONLINE: Cardinal;
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

function GetCurrentPrinterHandle: THandle;
var
  Device, Driver, Port: array[0..255] of char;
  hDeviceMode: THandle;
begin
  Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
  if not OpenPrinter(@Device, Result, nil) then
    RaiseLastWin32Error;
end;

//Verifica se ocorreu algum erro ao enviar comonado para impressora de cupom fiscal
function ErroECF: Boolean;
var
  ST2: Integer;
  R: Boolean;
begin
  //   St2:=FMenu.MPF.ST2;
  R := False;
  if ST2 >= 128 then
    ST2 := ST2 - 128;
  if ST2 >= 64 then
    St2 := St2 - 64;
  if ST2 >= 32 then
    ST2 := ST2 - 32;
  if ST2 >= 16 then
    St2 := St2 - 16;
  if St2 >= 8 then
    St2 := St2 - 8;
  if St2 >= 4 then
    St2 := St2 - 4;
  if St2 >= 2 then
    St2 := St2 - 2;
  if St2 >= 1 then
    R := True;
  ErroECF := R;
end;

//Filtra os registros necessarios para impressao da NF
function SelectTableNF(COD_PEDIDO: Integer; TipoNF: string): Boolean;
begin
  Result := False;
  //FILTRA TABELAS P/ OS
  if TipoNF = 'OS' then
  begin
    Result := True;
    if FiltraTabela(DMServ.TOrd, 'ordem', 'cod_ordem', IntToStr(COD_PEDIDO), '')
      = False then
    begin
      Mensagem('A T E N Ç Ã O!',
        'O Pedido de Venda relacionado não foi encontrado!' + #13 +
        'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;
    //DOCUMENTO FISCAL DEVENDAS
    if FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem',
      IntToStr(COD_PEDIDO), '') = False then
    begin
      Mensagem('A T E N Ç Ã O!',
        'O Documento Fiscal de Venda relacionado não foi encontrado!' + #13 +
        'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;
    //CALCULA O TOTAL DE PRODUTOS
    DMSAIDA.TAlx.Close;
    DMSAIDA.TAlx.SQL.Clear;
    DMSAIDA.TAlx.SQL.Add(' select SUM(itprodord.total) as total from itprodord ');
    DMSAIDA.TAlx.SQL.Add(' Where  itprodord.cod_ordem=:CODPEDVEND');
    DMSAIDA.TAlx.ParamByName('CODPEDVEND').AsInteger := COD_PEDIDO;
    DMSAIDA.TAlx.Open;
    if not DMSAIDA.TAlx.IsEmpty then
    begin
      XTotProdNF := DMSAIDA.TAlx.FieldByName('TOTAL').AsCurrency;
    end;
    //ITEMS DO PEDIDO DE VENDA
    DMServ.TPOrd.Close;
    DMServ.TPOrd.SQL.Clear;
    DMServ.TPOrd.SQL.Add('  select * from itprodord left join vwsimilar on itprodord.cod_estoque=vwsimilar.cod_estoque ');
    DMServ.TPOrd.SQL.Add('   Where itprodord.cod_ordem=:CODPEDVEND order by vwsimilar.descricao ');
    DMServ.TPOrd.ParamByName('CODPEDVEND').AsInteger := COD_PEDIDO;
    DMServ.TPOrd.Open;

    // 13/03/2009: qnt despesas
    DMESTOQUE.TDesp.Close;
    DMESTOQUE.TDesp.SQL.Clear;
    DMESTOQUE.TDesp.SQL.Add('select count(despadic.cod_gerador) AS QTDDESP');
    DMESTOQUE.TDesp.SQL.Add('From despadic ');
    DMESTOQUE.TDesp.SQL.Add('Where (despadic.gerador=' + #39 + 'ORDEM' + #39 +
      ') AND (despadic.cod_gerador=:COD_GERADOR)');
    DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger := COD_PEDIDO;
    DMESTOQUE.TDesp.Open;
    XQTDDESP := DMESTOQUE.TDesp.FieldByName('QTDDESP').AsInteger;

    //ALEX - 01/06/2009: Soma o total de servicos
    DMESTOQUE.TDesp.Close;
    DMESTOQUE.TDesp.SQL.Clear;
    DMESTOQUE.TDesp.SQL.Add('select sum(despadic.vlrtotfin) AS TOTAL');
    DMESTOQUE.TDesp.SQL.Add('From despadic ');
    DMESTOQUE.TDesp.SQL.Add('Where (despadic.gerador=' + #39 + 'ORDEM' + #39 +
      ') AND (despadic.cod_gerador=:COD_GERADOR)');
    DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger := COD_PEDIDO;
    DMESTOQUE.TDesp.Open;
    XTotServNF := DMESTOQUE.TDesp.FieldByName('TOTAL').AsInteger;

    // 13/03/2009:  FILTRA DESPESAS DA ORDEM
    DMESTOQUE.TDesp.Close;
    DMESTOQUE.TDesp.SQL.Clear;
    DMESTOQUE.TDesp.SQL.Add('select despadic.cod_gerador, despadic.despesa, despadic.gerador, despadic.qtd, despadic.vlrfinal, despadic.cod_equipe, DESPADIC.COD_DESPADIC,');
    DMESTOQUE.TDesp.SQL.Add('DESPADIC.VLRREAL, DESPADIC.LUCMOE, DESPADIC.LUCPER, DESPADIC.DESCONTO, DESPADIC.MARCA, DESPADIC.UNIDADE, DESPADIC.VLRTOTFIN');
    DMESTOQUE.TDesp.SQL.Add('From despadic ');
    DMESTOQUE.TDesp.SQL.Add('Where (despadic.gerador=' + #39 + 'ORDEM' + #39 +
      ') AND (despadic.cod_gerador=:COD_GERADOR)');
    DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger := COD_PEDIDO;
    DMESTOQUE.TDesp.SQL.Add('order by despadic.cod_despadic desc');
    DMESTOQUE.TDesp.Open;

    if ((DMServ.TPOrd.IsEmpty) and (DMESTOQUE.TDesp.IsEmpty))
      {//           	If FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_PEDVEN', IntToStr(COD_PEDIDO), ' Order by ')=False} then
    begin
      Mensagem('A T E N Ç Ã O!',
        'Os Itens de Venda relacionados não foram encontrados!' + #13 +
        'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;

    //VERIFICA QTD DE ITENS DE VENDA
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add(' select count(itprodord.cod_itprodord) AS QTDITEM from itprodord ');
    DMESTOQUE.Alx.SQL.Add(' where itprodord.cod_ordem=:CODPEDVEND ');
    DMESTOQUE.Alx.ParamByName('CODPEDVEND').AsInteger := COD_PEDIDO;
    DMESTOQUE.Alx.Open;
    XQTDITEM := DMESTOQUE.Alx.FieldByName('QTDITEM').AsInteger;
    //ClIENTE DE VENDA
    if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
      DMServ.TOrd.FieldByName('COD_CLIENTE').AsString, '') = False then
    begin
      Mensagem('A T E N Ç Ã O!',
        'O Cliente relacionado com o documento fiscal não foi encontrado!' + #13 +
        'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;
    //PESSOA DO CLIENTE
    if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
      DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsString, '') = False then
    begin
      Mensagem('A T E N Ç Ã O!',
        'A Pessoa relacionado ao cliente do documento fiscal não foi encontrada!' + #13
        + 'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;
    //PESSOA FISICA DO CLIENTE
    FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA',
      DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '');

    //PESSOA JURIDICA DO CLIENTE
    FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA',
      DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '');

    //CIDADE DO CLIENTE
    FiltraTabela(DMGEOGRAFIA.TCIDADE, 'CIDADE', 'COD_CIDADE',
      DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString, '');

    //ESTADO DO CLIENTE
    FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO',
      DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

    //TRANSPORTADOR DA NOTA
    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    DMPESSOA.TALX.SQL.Add(' SELECT Pessoa.Cod_Pessoa, estado.uf_estado AS UF, vwfornec.nome,  vwfornec.cpfcnpj, vwfornec.endereco, cidade.nome AS CIDADE FROM vwfornec ');
    DMPESSOA.TALX.SQL.Add('         left join pessoa ON vwfornec.cod_pessoa = pessoa.cod_pessoa ');
    DMPESSOA.TALX.SQL.Add('         Left join cidade on pessoa.cod_cidade = cidade.cod_cidade ');
    DMPESSOA.TALX.SQL.Add('         left join estado on cidade.cod_estado = estado.cod_estado');
    DMPESSOA.TALX.SQL.Add('			where vwfornec.cod_fornec=:COD_FORNEC ');
    DMPESSOA.TALX.ParamByName('COD_FORNEC').AsInteger :=
      DMServ.TFiscOrd.FieldByName('COD_TRANSP').AsInteger;
    DMPESSOA.TALX.Open;

    //TRANSPORTADOR DA NOTA
    DMPESSOA.TALX1.Close;
    DMPESSOA.TALX1.SQL.Clear;
    DMPESSOA.TALX1.SQL.Add(' SELECT * FROM PessoaJ ');
    DMPESSOA.TALX1.SQL.Add('			where PESSOAJ.COD_PESSOA=:COD_PESSOA ');
    DMPESSOA.TALX1.ParamByName('COD_PESSOA').AsInteger :=
      DMPESSOA.TALX.FieldByName('COD_PESSOA').AsInteger;
    DMPESSOA.TALX1.Open;

    //CFOP DE VENDA
    if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
      DMServ.TFiscOrd.FieldByName('COD_CFOP').AsString, '') = False then
    begin
      Mensagem('A T E N Ç Ã O!',
        'O C.F.O.P. relacionado ao documento fiscal não foi encontrado!' + #13 +
        'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;

    //Ctas a Receber
    if FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_GERADOR',
      DMServ.TFiscOrd.FieldByName('cod_ordem').AsString,
      ' AND (CTARECEBER.TIPOGERADOR=' + #39 + 'ORDEM' + #39 + ')') = True then
    begin
      //DUPLICATAS DE VENDA
      if FiltraTabela(DMCONTA.WParR, 'vwparcr', 'COD_CTARECEBER',
        DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '') = True then
      begin
        XImpDup := 1;
      end
      else
      begin
        XImpDup := 0;
      end;
    end
    else
    begin
      XImpDup := 0;
    end;
  end;
  //FILTRA TABELAS P/ SAIDAS
  if TipoNF = 'SAIDA' then
  begin
    Result := True;
    if FMenu.XPedFatura = '' then
    begin
      if FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA',
        IntToStr(COD_PEDIDO), '') = False then
      begin
        Mensagem('A T E N Ç Ã O!',
          'O Pedido de Venda relacionado não foi encontrado!' + #13 +
          'A impressao será cancelada!', '', 1, 1, false, 'i');
        Printer.Abort;
        Result := False;
        Exit;
      end;
    end
    else
    begin
      DMSAIDA.TPedV.Close;
      DMSAIDA.TPedV.SQL.Clear;
      DMSAIDA.TPedV.SQL.Add('select * from pedvenda');
      DMSAIDA.TPedV.SQL.Add('where pedvenda.cod_pedvenda in (' + FMenu.XPedFatura
        + ')');
      DMSAIDA.TPedV.Open;

      if DMSAIDA.TPedV.IsEmpty then
      begin
        Mensagem('A T E N Ç Ã O!',
          'O Pedido de Venda relacionado não foi encontrado!' + #13 +
          'A impressao será cancelada!', '', 1, 1, false, 'i');
        Printer.Abort;
        Result := False;
        Exit;
      end;
    end;

    //DOCUMENTO FISCAL DE VENDAS
    if FMenu.XPedFatura = '' then
    begin
      if FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO',
        IntToStr(COD_PEDIDO), '') = False then
      begin
        Mensagem('A T E N Ç Ã O!',
          'O Documento Fiscal de Venda relacionado não foi encontrado!' + #13 +
          'A impressao será cancelada!', '', 1, 1, false, 'i');
        Printer.Abort;
        Result := False;
        Exit;
      end;
    end
    else
    begin
      DMMACS.TDocFiscFatura.Close;
      DMMACS.TDocFiscFatura.SQL.Clear;
      DMMACS.TDocFiscFatura.SQL.Add('Select * from docfiscfatura');
      DMMACS.TDocFiscFatura.SQL.Add('where docfiscfatura.cod_pedido in (' +
        FMenu.XPedFatura + ')');
      DMMACS.TDocFiscFatura.Open;

      DMSAIDA.TFiscPV.Close;
      DMSAIDA.TFiscPV.SQL.Clear;
      DMSAIDA.TFiscPV.SQL.Add('select * from docfissaida');
      DMSAIDA.TFiscPV.SQL.Add('where docfissaida.cod_docfisc = ' +
        DMMACS.TDocFiscFatura.fieldByName('cod_docfiscal').AsString);
      DMSAIDA.TFiscPV.Open;

      if DMSAIDA.TFiscPV.IsEmpty then
      begin
        Mensagem('A T E N Ç Ã O!',
          'O Documento Fiscal de Venda relacionado não foi encontrado!' + #13 +
          'A impressao será cancelada!', '', 1, 1, false, 'i');
        Printer.Abort;
        Result := False;
        Exit;
      end;
    end;
    //CALCULA O TOTAL DE PRODUTOS
    DMSAIDA.TAlx.Close;
    DMSAIDA.TAlx.SQL.Clear;
    DMSAIDA.TAlx.SQL.Add(' select SUM(ItensPedVen.ValorTotal) as total from itenspedven');

    if FMenu.XPedFatura = '' then
    begin
      DMSAIDA.TAlx.SQL.Add(' Where itenspedven.cod_pedven=:CODPEDVEND');
      DMSAIDA.TAlx.ParamByName('CODPEDVEND').AsInteger := COD_PEDIDO;
    end
    else
    begin
      DMSAIDA.TAlx.SQL.Add('where itenspedven.cod_pedven in (' + FMenu.XPedFatura
        + ')');
    end;

    DMSAIDA.TAlx.Open;
    if not DMSAIDA.TAlx.IsEmpty then
    begin
      XTotProdNF := DMSAIDA.TAlx.FieldByName('TOTAL').AsCurrency;
    end;
    //ITEMS DO PEDIDO DE VENDA
    DMSAIDA.TItemPV.Close;
    DMSAIDA.TItemPV.SQL.Clear;
    DMSAIDA.TItemPV.SQL.Add(' select * from itenspedven left join vwsimilar on itenspedven.cod_estoque=vwsimilar.cod_estoque');

    if FMenu.XPedFatura = '' then
    begin
      DMSAIDA.TItemPV.SQL.Add(' Where itenspedven.cod_pedven=:CODPEDVEND order by vwsimilar.descricao');
      DMSAIDA.TItemPV.ParamByName('CODPEDVEND').AsInteger := COD_PEDIDO;
    end
    else
    begin
      DMSAIDA.TItemPV.SQL.Add('where itenspedven.cod_pedven in (' +
        FMenu.XPedFatura + ')');
    end;

    DMSAIDA.TItemPV.Open;
    if DMSAIDA.TItemPV.IsEmpty
      {//           	If FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_PEDVEN', IntToStr(COD_PEDIDO), ' Order by ')=False} then
    begin
      Mensagem('A T E N Ç Ã O!',
        'Os Itens de Venda relacionados não foram encontrados!' + #13 +
        'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;
    //VERIFICA QTD DE ITENS DE VENDA
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select count(itenspedven.cod_itenspedven) AS QTDITEM from itenspedven');

    if FMenu.XPedFatura = '' then
    begin
      DMESTOQUE.Alx.SQL.Add(' where itenspedven.cod_pedven=:CODPEDVEND ');
      DMESTOQUE.Alx.ParamByName('CODPEDVEND').AsInteger := COD_PEDIDO;
    end
    else
    begin
      DMESTOQUE.Alx.SQL.Add('where itenspedven.cod_pedven in (' +
        FMenu.XPedFatura + ')');
    end;

    DMESTOQUE.Alx.Open;
    XQTDITEM := DMESTOQUE.Alx.FieldByName('QTDITEM').AsInteger;

    //ClIENTE DE VENDA
    if FMenu.XPedFatura = '' then
    begin
      if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
        DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsString, '') = False then
      begin
        Mensagem('A T E N Ç Ã O!',
          'O Cliente relacionado com o documento fiscal não foi encontrado!' + #13
          + 'A impressao será cancelada!', '', 1, 1, false, 'i');
        Printer.Abort;
        Result := False;
        Exit;
      end;
    end
    else
    begin
      if FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE',
        FMenu.XCodCLiFatura, '') = False then
      begin
        Mensagem('A T E N Ç Ã O!',
          'O Cliente relacionado com o documento fiscal não foi encontrado!' + #13
          + 'A impressao será cancelada!', '', 1, 1, false, 'i');
        Printer.Abort;
        Result := False;
        Exit;
      end;
    end;

    //PESSOA DO CLIENTE
    if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
      DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsString, '') = False then
    begin
      Mensagem('A T E N Ç Ã O!',
        'A Pessoa relacionado ao cliente do documento fiscal não foi encontrada!' + #13
        + 'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;
    //PESSOA FISICA DO CLIENTE
    FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA',
      DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '');

    //PESSOA JURIDICA DO CLIENTE
    FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA',
      DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '');

    //CIDADE DO CLIENTE
    FiltraTabela(DMGEOGRAFIA.TCIDADE, 'CIDADE', 'COD_CIDADE',
      DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString, '');

    //ESTADO DO CLIENTE
    FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO',
      DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

    //TRANSPORTADOR DA NOTA
    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    DMPESSOA.TALX.SQL.Add(' SELECT Pessoa.Cod_Pessoa, estado.uf_estado AS UF, vwfornec.nome,  vwfornec.cpfcnpj, vwfornec.endereco, cidade.nome AS CIDADE FROM vwfornec ');
    DMPESSOA.TALX.SQL.Add('         left join pessoa ON vwfornec.cod_pessoa = pessoa.cod_pessoa ');
    DMPESSOA.TALX.SQL.Add('         Left join cidade on pessoa.cod_cidade = cidade.cod_cidade ');
    DMPESSOA.TALX.SQL.Add('         left join estado on cidade.cod_estado = estado.cod_estado');
    DMPESSOA.TALX.SQL.Add('			where vwfornec.cod_fornec=:COD_FORNEC ');
    DMPESSOA.TALX.ParamByName('COD_FORNEC').AsInteger :=
      DMSAIDA.TFiscPV.FieldByName('COD_TRANSP').AsInteger;
    DMPESSOA.TALX.Open;

    //TRANSPORTADOR DA NOTA
    DMPESSOA.TALX1.Close;
    DMPESSOA.TALX1.SQL.Clear;
    DMPESSOA.TALX1.SQL.Add(' SELECT * FROM PessoaJ ');
    DMPESSOA.TALX1.SQL.Add('			where PESSOAJ.COD_PESSOA=:COD_PESSOA ');
    DMPESSOA.TALX1.ParamByName('COD_PESSOA').AsInteger :=
      DMPESSOA.TALX.FieldByName('COD_PESSOA').AsInteger;
    DMPESSOA.TALX1.Open;

    //CFOP DE VENDA
    if FMenu.XPedFatura = '' then
    begin
      if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
        DMSAIDA.TFiscPV.FieldByName('COD_CFOP').AsString, '') = False then
      begin
        Mensagem('A T E N Ç Ã O!',
          'O C.F.O.P. relacionado ao documento fiscal não foi encontrado!' + #13 +
          'A impressao será cancelada!', '', 1, 1, false, 'i');
        Printer.Abort;
        Result := False;
        Exit;
      end;
    end
    else
    begin
      if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
        DMMACS.TLoja.FieldByName('CFOPINTERNO').AsString, '') = False then
      begin
        Mensagem('A T E N Ç Ã O!',
          'O C.F.O.P. relacionado ao documento fiscal não foi encontrado!' + #13 +
          'A impressao será cancelada!', '', 1, 1, false, 'i');
        Printer.Abort;
        Result := False;
        Exit;
      end;
    end;

    //Ctas a Receber
    if FMenu.XPedFatura = '' then
    begin
      if FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_GERADOR',
        DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString,
        ' AND (CTARECEBER.TIPOGERADOR=' + #39 + 'PEDVENDA' + #39 + ')') = True
        then
      begin
        //DUPLICATAS DE VENDA
        if FiltraTabela(DMCONTA.WParR, 'vwparcr', 'COD_CTARECEBER',
          DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '') = True then
        begin
          XImpDup := 1;
        end
        else
        begin
          XImpDup := 0;
        end;
      end
      else
      begin
        XImpDup := 0;
      end;
    end
    else
    begin
      if FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'NUMDOC',
        IntToStr(DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsInteger - 1),
        ' AND (CTARECEBER.TIPOGERADOR=' + #39 + 'PEDVENDA' + #39 + ')') = True
        then
      begin
        //DUPLICATAS DE VENDA
        if FiltraTabela(DMCONTA.WParR, 'vwparcr', 'COD_CTARECEBER',
          DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '') = True then
        begin
          XImpDup := 1;
        end
        else
        begin
          XImpDup := 0;
        end;
      end
      else
      begin
        XImpDup := 0;
      end;

    end;
  end;
  //FILTRA TABELAS DE ENTRADA
  if TipoNF = 'ENTRADA' then
  begin
    Result := True;
    if FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'cod_pedcomp',
      IntToStr(COD_PEDIDO), '') = False then
    begin
      Mensagem('A T E N Ç Ã O!',
        'O Pedido de Compra relacionado não foi encontrado!' + #13 +
        'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;
    //DOCUMENTO FISCAL DE COMPRAS
    if FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO',
      IntToStr(COD_PEDIDO), '') = False then
    begin
      Mensagem('A T E N Ç Ã O!',
        'O Documento Fiscal de Compra relacionado não foi encontrado!' + #13 +
        'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;
    //CALCULA O TOTAL DE PRODUTOS
    DMENTRADA.TAlx.Close;
    DMENTRADA.TAlx.SQL.Clear;
    DMENTRADA.TAlx.SQL.Add(' select SUM(itenspedc.ValorTotal) AS TOTAL from itenspedc left join vwsimilar on itenspedc.cod_estoque=vwsimilar.cod_estoque');
    DMENTRADA.TAlx.SQL.Add(' Where itenspedc.cod_pedcompra=:CODPEDVEND');
    DMENTRADA.TAlx.ParamByName('CODPEDVEND').AsInteger := COD_PEDIDO;
    DMENTRADA.TAlx.Open;
    if not DMENTRADA.TAlx.IsEmpty then
    begin
      XTotProdNF := DMENTRADA.TAlx.FieldByName('TOTAL').AsCurrency;
    end;
    //ITEMS DO PEDIDO DE COMPRA
    DMENTRADA.TItemPC.Close;
    DMENTRADA.TItemPC.SQL.Clear;
    DMENTRADA.TItemPC.SQL.Add(' select * from itenspedc left join vwsimilar on itenspedc.cod_estoque=vwsimilar.cod_estoque');
    DMENTRADA.TItemPC.SQL.Add(' Where itenspedc.cod_pedcompra=:CODPEDVEND order by vwsimilar.descricao');
    DMENTRADA.TItemPC.ParamByName('CODPEDVEND').AsInteger := COD_PEDIDO;
    DMENTRADA.TItemPC.Open;
    if DMENTRADA.TItemPC.IsEmpty
      {//           	If FiltraTabela(DMSAIDA.TItemPV, 'ITENSPEDVEN', 'COD_PEDVEN', IntToStr(COD_PEDIDO), ' Order by ')=False} then
    begin
      Mensagem('A T E N Ç Ã O!',
        'Os Itens de Compra relacionados não foram encontrados!' + #13 +
        'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;
    //VERIFICA QTD DE ITENS DE VENDA
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select count(itenspedc.cod_itenspedc) AS QTDITEM from itenspedc');
    DMESTOQUE.Alx.SQL.Add(' where itenspedc.cod_pedcompra=:CODPEDVEND ');
    DMESTOQUE.Alx.ParamByName('CODPEDVEND').AsInteger := COD_PEDIDO;
    DMESTOQUE.Alx.Open;
    XQTDITEM := DMESTOQUE.Alx.FieldByName('QTDITEM').AsInteger;
    //ClIENTE DE VENDA
    if FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC',
      DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsString, '') = False then
    begin
      Mensagem('A T E N Ç Ã O!',
        'O Fornecedor relacionado com o documento fiscal não foi encontrado!' + #13
        + 'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;
    //PESSOA DO CLIENTE
    if FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
      DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsString, '') = False then
    begin
      Mensagem('A T E N Ç Ã O!',
        'A Pessoa relacionado ao cliente do documento fiscal não foi encontrada!' + #13
        + 'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;
    //PESSOA FISICA DO CLIENTE
    FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA',
      DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '');

    //PESSOA JURIDICA DO CLIENTE
    FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA',
      DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '');

    //CIDADE DO CLIENTE
    FiltraTabela(DMGEOGRAFIA.TCIDADE, 'CIDADE', 'COD_CIDADE',
      DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString, '');

    //ESTADO DO CLIENTE
    FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO',
      DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

    //TRANSPORTADOR DA NOTA
    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    DMPESSOA.TALX.SQL.Add(' SELECT Pessoa.Cod_Pessoa, estado.uf_estado AS UF, vwfornec.nome,  vwfornec.cpfcnpj, vwfornec.endereco, cidade.nome AS CIDADE FROM vwfornec ');
    DMPESSOA.TALX.SQL.Add('         left join pessoa ON vwfornec.cod_pessoa = pessoa.cod_pessoa ');
    DMPESSOA.TALX.SQL.Add('         Left join cidade on pessoa.cod_cidade = cidade.cod_cidade ');
    DMPESSOA.TALX.SQL.Add('         left join estado on cidade.cod_estado = estado.cod_estado');
    DMPESSOA.TALX.SQL.Add('			where vwfornec.cod_fornec=:COD_FORNEC ');
    DMPESSOA.TALX.ParamByName('COD_FORNEC').AsInteger :=
      DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsInteger;
    DMPESSOA.TALX.Open;

    //TRANSPORTADOR DA NOTA
    DMPESSOA.TALX1.Close;
    DMPESSOA.TALX1.SQL.Clear;
    DMPESSOA.TALX1.SQL.Add(' SELECT * FROM PessoaJ ');
    DMPESSOA.TALX1.SQL.Add('			where PESSOAJ.COD_PESSOA=:COD_PESSOA ');
    DMPESSOA.TALX1.ParamByName('COD_PESSOA').AsInteger :=
      DMPESSOA.TALX.FieldByName('COD_PESSOA').AsInteger;
    DMPESSOA.TALX1.Open;

    //CFOP DE VENDA
    if FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP',
      DMENTRADA.TFiscPC.FieldByName('COD_CFOP').AsString, '') = False then
    begin
      Mensagem('A T E N Ç Ã O!',
        'O C.F.O.P. relacionado ao documento fiscal não foi encontrado!' + #13 +
        'A impressao será cancelada!', '', 1, 1, false, 'i');
      Printer.Abort;
      Result := False;
      Exit;
    end;
    {
    //Ctas a Receber
    If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_GERADOR', DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString, ' AND (CTARECEBER.TIPOGERADOR='+#39+'PEDVENDA'+#39+')')=True
    Then Begin
        //DUPLICATAS DE VENDA
        If FiltraTabela(DMCONTA.WParR, 'vwparcr', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '')=True
        Then Begin
            XImpDup:=1;
        End
        Else Begin
            XImpDup:=0;
        End;
    End
    Else Begin
        XImpDup:=0;
    End;}
  end;
end;

//Função Utilizada para imprimir determinado campo
function ImpCampo(XCampo: string; XValor: string; XTipoCampo: Char): Boolean;
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
        XValorMoeda := StrToFloat(XValor);
      except
        XValorMoeda := 0;
        //                   Writeln(XErros, 'Campo: '+XCampo + 'Valor: '+xvalor);
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
      //               Writeln(XErros, 'Campo: '+XCampo + 'Valor: '+xvalor);
    end;
  end;
end;

//Função responsável por emitir Nota Fiscal De Ordens de Serviço
function NFOS(COD_PEDIDO: Integer): Boolean;
var
  I: Integer;
  XAux: string; // 16/03/2009: string auxiliar
begin
  // função para recalcular nota fiscal
  if RecalcFiscalOs('OS', COD_PEDIDO) = false then
  begin
    Mensagem('   A T E N Ç Ã O   ',
      'Erro de cálculo fiscal. Tente novamente, mas se o problema persistir, entre em contato com suporte.',
      '', 1, 1, false, 'I');
    Result := false;
    Exit;
  end
  else
  begin
    // 16/03/2009: se em caixa estiver configurado para emitir NF apos ECF
    if (DMCAIXA.TCaixa.FieldByName('EMITNF').AsString = '1') then
    begin
      try
        // 16/03/2009: filtra ordem
        DMServ.TOrd.Close;
        DMServ.TOrd.SQL.Clear;
        DMServ.TOrd.SQL.Add('select * from ordem');
        DMServ.TOrd.SQL.Add('where ordem.COD_ORDEM = ' + #39 +
          IntToStr(COD_PEDIDO) + #39);
        //DMServ.TOrd.ParamByName('OLD_COD_ORDEM').AsInteger := COD_PEDIDO;
        DMServ.TOrd.Open;

        // 16/03/2009: verificar realmente se foi impresso o ECF do pedido
        if (DMServ.TOrd.FieldByName('FISCO').AsString = 'ECF') then
        begin
          // 16/03/2009: recuperar numero fiscal  e  passar para numfiscal auxiliar
          XAux := DMServ.TOrd.FieldByName('NUMFISCAL').AsString;

          DMServ.TOrd.Close;
          DMServ.TOrd.SQL.Clear;
          DMServ.TOrd.SQL.Add('update ORDEM set NUMFISCALAUX = :NUMFISCALAUX');
          DMServ.TOrd.SQL.Add('where COD_ORDEM = :OLD_COD_ORDEM');
          DMServ.TOrd.ParamByName('OLD_COD_ORDEM').AsInteger := COD_PEDIDO;
          DMServ.TOrd.ParamByName('NUMFISCALAUX').AsString := XAux;
          DMServ.TOrd.ExecSQL;
          DMServ.IBT.CommitRetaining;
        end;
      except
        MessageDlg('Não foi possível imprimir a Nota Fiscal do Pedido.',
          mtWarning, [mbOK], 0);
        Result := false;
        DMServ.IBT.RollbackRetaining;
        Exit;
      end;
    end;
  end;
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  //SETA IMPRESSORA PADRAO
  if PadraoImp(DMMACS.TLoja.FieldByName('NFIMP').AsString) = False then
  begin
    FMenu.PrintDialog1.Execute;
  end;
  //SETA TAMANHO DA FOLHA
  if (DMMACS.TLoja.FieldByName('NFTAMPAPCOL').AsInteger > 0) and
    (DMMACS.TLoja.FieldByName('NFTAMPAPLIN').AsInteger > 0) then
  begin
    if (GetWindowsVersion = 'Windows XP') or (GetWindowsVersion = 'Windows 2000')
      or (GetWindowsVersion = 'Windows NT') then
      SetPrinterPage_Xp(DMPAPER_USER,
        DMMACS.TLoja.FieldByName('NFTAMPAPCOL').AsInteger,
        DMMACS.TLoja.FieldByName('NFTAMPAPLIN').AsInteger)
    else
      SetPrinterPage_9x(DMMACS.TLoja.FieldByName('NFTAMPAPCOL').AsInteger,
        DMMACS.TLoja.FieldByName('NFTAMPAPLIN').AsInteger);
  end;

  //SETA IMPRESSORA PADRAO
  if PadraoImp(DMMACS.TLoja.FieldByName('NFIMP').AsString) = False then
  begin
    FMenu.PrintDialog1.Execute;
  end;

  try
    if Printer.Printing then
    begin
      Mensagem('ATENÇÃO', 'A impressora esta sendo usada!', '', 1, 1, False,
        'a');
      if Mensagem('ATENÇÃO', 'Deseja cancelar a impressão corrente?', '', 1, 1,
        False, 'c') = 2 then
        Printer.Abort;
    end;
  except
    Mensagem('ATENÇÃO',
      'Ocorreu algum problema com o mecanismo ou instalação da impressora!', '',
      1, 1, False, 'a');
    Exit;
  end;
  try
    if VerImpressoraONLINE > 0 then
    begin
      Mensagem('ATENÇÃO',
        'IMPRESSORA OFF-LINE. Por favor, verifique a impressora!', '', 1, 1, False,
        'a');
      Exit;
    end;
  except
    Mensagem('ATENÇÃO',
      'Ocorreu algum problema com o mecanismo ou instalação da impressora!', '',
      1, 1, False, 'a');
    Exit;
  end;

  //ALEX: 09/03/2009 - ZERA O NUMERO DA NOTA FISCAL A SER IMPRESSA PARA CONTROLE
  //FILTRA REGISTRO DAS TABELAS DE ACORDO COM O NECESSARIO
  if SelectTableNF(COD_PEDIDO, 'OS') = False then
    Exit;
  //INICIA IMPRESSAO
  try
    Printer.BeginDoc;
    //determina o mesmo valor do tipo nf para outras funções
    XTipoNF := 'OS';
    //ALEX: 09/03/2009 - Refiltra a tabela empresa para garantir os dados necessário da mesma
    if FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA',
      FMenu.LCODEMPRESA.Caption, '') = True then
    begin
      if FMenu.TIPOREL <> 'RNF' then
      begin
        //Se a NF não for reimpressão
        //Grava Numero fiscal a tabela de documento fiscal
        //ALEX: 28/01/2009 - Antes de inserir um numero fiscal verifica se o mesmo já não foi impresso ou esta registrado na tabela
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add(' select * from docfisord where (docfisord.numdocfis=:numero) and (docfisord.cod_docfiscord=:codigo) ');
        DMESTOQUE.Alx.ParamByName('NUMERO').AsString :=
          DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
        DMESTOQUE.Alx.ParamByName('codigo').AsString :=
          DMServ.TFiscOrd.FieldByName('cod_docfiscord').AsString;
        DMESTOQUE.Alx.Open;
        if not DMESTOQUE.Alx.IsEmpty then
        begin
          Mensagem('ATENÇÃO',
            'O processo de impressão da nota fiscal foi cancelado!' + #13 +
            'A Numeração indicada para impressão (' +
            DMMACS.TEmpresa.FieldByName('PROX_NF').AsString +
            ') já foi utilizada. Altere a numeração nas configurações do sistema',
            '', 1, 1, false, 'a');
          Printer.Abort;
          Exit;
        end;
        DMServ.TFiscOrd.Edit;
        DMServ.TFiscOrd.FieldByName('NUMDOCFIS').AsString :=
          DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
        DMServ.TFiscOrd.Post;
        DMServ.IBT.CommitRetaining;
        XNumNotaFiscal := DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
        DMMACS.TEmpresa.Edit;
        DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger :=
          DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger + 1;
        DMMACS.TEmpresa.Post;
        DMMACS.Transaction.CommitRetaining;
      end
      else
      begin
        //ALEZ: 09/03/2009 - O Sistema esta reimprimindo, devemos verificar o numero da nota fiscal
        if FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem',
          IntToStr(COD_PEDIDO), '') = True then
          XNumNotaFiscal := DMServ.TFiscOrd.FieldByName('NUMDOCFIS').AsString
        else
          XNumNotaFiscal := '';
      end;
    end
    else
    begin
      Mensagem('ATENÇÃO',
        'As informações de configuração da empresa não foram encontrados.', '', 1,
        1, false, 'a');
      Printer.Abort;
      Exit;
    end;

    FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', IntToStr(COD_PEDIDO),
      '');
    //ALEX: 09/03/2009 - VERIFICA SE O NUMERO DA NOTA FISCAL NÃO ESTA VAZIA
    if XNumNotaFiscal = '' then
    begin
      Mensagem('ATENÇÃO',
        'O Número da Nota Fiscal não foi atribuído pelo sistema.', '', 1, 1, false,
        'a');
      if Mensagem('CONFIRMAÇÃO',
        'Deseja atribuir uma nova numeração para a nota fiscal e continuar a impressão?' + #13
        + 'Nova numeração: ' + DMMACS.TEmpresa.FieldByName('PROX_NF').AsString,
        '', 1, 1, false, 'a') = 2 then
      begin
        DMServ.TFiscOrd.Edit;
        DMServ.TFiscOrd.FieldByName('NUMDOCFIS').AsString :=
          DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
        DMServ.TFiscOrd.Post;
        DMServ.IBT.CommitRetaining;
        XNumNotaFiscal := DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
        DMMACS.TEmpresa.Edit;
        DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger :=
          DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger + 1;
        DMMACS.TEmpresa.Post;
        DMMACS.Transaction.CommitRetaining;
      end
      else
      begin
        Printer.Abort;
        Exit;
      end;
    end;
    FMenu.XIMPFISC := True; //Determina a quantidade de Paginas a serem impressas
    XQTDPAG := (Round(XQTDITEM /
      DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger));
    if XQTDPAG < (XQTDITEM / DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger)
      then
    begin
      XQTDPAG := XQTDPAG + 1;
    end;

    try
      // 13/03/2009: verifica qnt despesa
      if (DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger > 0) then
      begin
        if (XQTDPAG < (XQTDDESP /
          DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger)) then
        begin
          XQTDPAG := (Round(XQTDDESP /
            DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger));
          if XQTDPAG < (XQTDDESP /
            DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger) then
          begin
            XQTDPAG := XQTDPAG + 1;
          end;
        end;
      end;
    except
    end;
    //posiciona produtos e despesas no primeiro registro do cursor
    DMServ.TPOrd.First;
    DMESTOQUE.TDesp.First;
    //Imprime a Quantidade de Paginas necessarias
    XQTDPAGIMP := 1;
    while XQTDPAGIMP <= XQTDPAG do
    begin
      XNUMLIN := 0;
      if NFCabecalhoOS = False then
        FMenu.XIMPFISC := False;

      //IMPRIME FATURA
      NFFaturaOS(COD_PEDIDO, 'ORDEM', 1);

      //PRODUTOS
      XNUMLIN := DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
      XQTDITEMIMPPAG := 0;
      if NFProdutosOS = False then
        FMenu.XIMPFISC := False;

      if NFServicos = False then
        FMenu.XIMPFISC := False;

      // 13/03/2009: se em empresa estiver setado o ISS imprimir despesas
      //If (DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency > 0 ) And (TipoNF='OS')
      // 14/04/2009:    SE POSSUIR DESPESAS E FOR OS
      if (XQTDDESP > 0) then
      begin
        XQTDITEMIMPPAG := 0;
        XNUMLIN := 0;
        if NFDespesas = False then
          FMenu.XIMPFISC := False;
      end;

      XNUMLIN := 0;
      if XQTDPAGIMP <> XQTDPAG then
      begin
        NFImpostosX;
      end
      else
      begin
        if NFImpostosOS = False then
          FMenu.XIMPFISC := False;
      end;
      XNUMLIN := 0;
      if NFTransportadora = False then
        FMenu.XIMPFISC := False;

      XNUMLIN := 0;
      if NFDadosAdicionaisOS = False then
        FMenu.XIMPFISC := False;

      XNUMLIN := 0;
      if XQTDPAGIMP = XQTDPAG then
      begin
        if NFFiscoOS = False then
          FMenu.XIMPFISC := False;
      end;

      XQTDPAGIMP := XQTDPAGIMP + 1;
      if XQTDPAGIMP <= XQTDPAG then
        Printer.NewPage;
    end;

    //FINALIZA IMPRESSAO
    if FMenu.XIMPFISC = True then
      Printer.EndDoc;

    if FMenu.XIMPFISC = True then
    begin
      if FMenu.XPedFatura = '' then
      begin
        Result := True;
        if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(COD_PEDIDO),
          '') = True then
        begin
          //se filtra o pedido impresso mara-lo
          DMServ.TOrd.Edit;
          // 16/03/2009:  ser foi impresso um ECF // marcar como impresso as duas e jogar o numero da NF na auxiliar
          if (DMServ.TOrd.FieldByName('FISCO').AsString = 'ECF') then
          begin
            DMServ.TOrd.FieldByName('FISCO').AsString := 'ECF/NF';
          end
          else
          begin
            DMServ.TOrd.FieldByName('FISCO').AsString := 'NF';

          end;
          DMServ.TOrd.FieldByName('NUMFISCAL').AsString :=
            DMServ.TFiscOrd.FieldByName('NUMDOCFIS').AsString;
          DMServ.TOrd.Post;
          DMServ.IBT.CommitRetaining;
        end
        else
        begin
          ShowMessage('O Pedido não foi marcado como impresso!');
        end;
      end
    end
    else
    begin
      Mensagem('A T E N Ç Ã O',
        'Verifique se a Nota Fiscal foi devidamente impresso. Este pedido não foi marcado como impresso, entre em contato com a equipe de suporte!' + #13
        + 'Verifique o arquivo C:\erronf.txt', '', 1, 1, False, 'a');
    end;
  except
    Mensagem('ATENÇÃO', 'Por favor, verifique a impressora!', '', 1, 1, False,
      'a');
    Printer.EndDoc;
    Exit;
  end;
end;

//Função responsável por emitir Nota Fiscal de Determinada saída
function NF(COD_PEDIDO: Integer; TipoNF: string; Fatura: Boolean): Boolean;
var
  I: Integer;
  XAux: string; // 16/03/2009: string auxiliar
begin
  try
    // ou seja, apenas para pedido de venda e ordem d servico
    if TipoNF = 'SAIDA' then
    begin
      // função para recalcular nota fiscal
      if RecalcFiscal('PV', COD_PEDIDO) = false then
      begin
        Mensagem('   A T E N Ç Ã O   ',
          'Erro de cálculo fiscal. Tente novamente, mas se o problema persistir, entre em contato com suporte.',
          '', 1, 1, false, 'I');
        Result := false;
        Exit;
      end;
      FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption,
        '');
      //SETA IMPRESSORA PADRAO
      if PadraoImp(DMMACS.TLoja.FieldByName('NFIMP').AsString) = False then
      begin
        FMenu.PrintDialog1.Execute;
      end;
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
      if PadraoImp(DMMACS.TLoja.FieldByName('NFIMP').AsString) = False then
      begin
        FMenu.PrintDialog1.Execute;
      end;

      try
        if Printer.Printing then
        begin
          Mensagem('ATENÇÃO', 'A impressora esta sendo usada!', '', 1, 1, False,
            'a');
          if Mensagem('ATENÇÃO', 'Deseja cancelar a impressão corrente?', '', 1,
            1, False, 'c') = 2 then
            Printer.Abort;
        end;
      except
        Mensagem('ATENÇÃO',
          'Ocorreu algum problema com o mecanismo ou instalação da impressora!',
          '', 1, 1, False, 'a');
        Exit;
      end;
      try
        if VerImpressoraONLINE > 0 then
        begin
          Mensagem('ATENÇÃO',
            'IMPRESSORA OFF-LINE. Por favor, verifique a impressora!', '', 1, 1,
            False, 'a');
          Exit;
        end;
      except
        Mensagem('ATENÇÃO',
          'Ocorreu algum problema com o mecanismo ou instalação da impressora!',
          '', 1, 1, False, 'a');
        Exit;
      end;

      //ALEX: 09/03/2009 - ZERA O NUMERO DA NOTA FISCAL A SER IMPRESSA PARA CONTROLE
      //FILTRA REGISTRO DAS TABELAS DE ACORDO COM O NECESSARIO
      if SelectTableNF(COD_PEDIDO, TipoNF) = False then
        Exit;
      //INICIA IMPRESSAO
      try
        Printer.BeginDoc;
        //determina o mesmo valor do tipo nf para outras funções
        XTipoNF := TipoNF;
        //ALEX: 09/03/2009 - Refiltra a tabela empresa para garantir os dados necessário da mesma
        if FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA',
          FMenu.LCODEMPRESA.Caption, '') = True then
        begin
          if XTipoNF = 'SAIDA' then
          begin
            if FMenu.TIPOREL <> 'RNF' then
            begin
              //Se a NF não for reimpressão
              //Grava Numero fiscal a tabela de documento fiscal

              DMSAIDA.TFiscPV.Edit;
              DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString :=
                DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
              DMSAIDA.TFiscPV.Post;
              DMSAIDA.IBT.CommitRetaining;
              XNumNotaFiscal := DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;

              //incrementa um em empresa
              DMMACS.TEmpresa.Edit;
              DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger :=
                DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger + 1;
              DMMACS.TEmpresa.Post;
              DMMACS.Transaction.CommitRetaining;
            end
            else
            begin
              XNumNotaFiscal :=
                DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString;
            end;
          end;
          if XTipoNF = 'OS' then
          begin
            if FMenu.TIPOREL <> 'RNF' then
            begin
              //Se a NF não for reimpressão
              //Grava Numero fiscal a tabela de documento fiscal
              //ALEX: 28/01/2009 - Antes de inserir um numero fiscal verifica se o mesmo já não foi impresso ou esta registrado na tabela
              DMESTOQUE.Alx.Close;
              DMESTOQUE.Alx.SQL.Clear;
              DMESTOQUE.Alx.SQL.Add(' select * from docfisord where (docfisord.numdocfis=:numero) and (docfisord.cod_docfiscord=:codigo) ');
              DMESTOQUE.Alx.ParamByName('NUMERO').AsString :=
                DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
              DMESTOQUE.Alx.ParamByName('codigo').AsString :=
                DMServ.TFiscOrd.FieldByName('cod_docfiscord').AsString;
              DMESTOQUE.Alx.Open;
              if not DMESTOQUE.Alx.IsEmpty then
              begin
                Mensagem('ATENÇÃO',
                  'O processo de impressão da nota fiscal foi cancelado!' + #13 +
                  'A Numeração indicada para impressão (' +
                  DMMACS.TEmpresa.FieldByName('PROX_NF').AsString +
                  ') já foi utilizada. Altere a numeração nas configurações do sistema',
                  '', 1, 1, false, 'a');
                Printer.Abort;
                Exit;
              end;
              DMServ.TFiscOrd.Edit;
              DMServ.TFiscOrd.FieldByName('NUMDOCFIS').AsString :=
                DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
              DMServ.TFiscOrd.Post;
              DMServ.IBT.CommitRetaining;
              XNumNotaFiscal := DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
              DMMACS.TEmpresa.Edit;
              DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger :=
                DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger + 1;
              DMMACS.TEmpresa.Post;
              DMMACS.Transaction.CommitRetaining;

            end
            else
            begin
              //ALEZ: 09/03/2009 - O Sistema esta reimprimindo, devemos verificar o numero da nota fiscal
              if FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem',
                IntToStr(COD_PEDIDO), '') = True then
                XNumNotaFiscal :=
                  DMServ.TFiscOrd.FieldByName('NUMDOCFIS').AsString
              else
                XNumNotaFiscal := '';
            end;
          end;
          if XTipoNF = 'ENTRADA' then
          begin
            //Grava Numero fiscal a tabela de documento fiscal
            DMENTRADA.TFiscPC.Edit;
            DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString :=
              DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
            DMENTRADA.TFiscPC.Post;
            DMENTRADA.IBT.CommitRetaining;
            XNumNotaFiscal := DMMACS.TEmpresa.FieldByName('PROX_NF').AsString;
            DMMACS.TEmpresa.Edit;
            DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger :=
              DMMACS.TEmpresa.FieldByName('PROX_NF').AsInteger + 1;
            DMMACS.TEmpresa.Post;
            DMMACS.Transaction.CommitRetaining;

          end;
        end
        else
        begin
          Mensagem('ATENÇÃO',
            'As informações de configuração da empresa não foram encontrados.',
            '', 1, 1, false, 'a');
          Printer.Abort;
          Exit;
        end;

        //FILTRA NOVAMENTE O DOCUMENTO FISCAL
        if FMenu.XPedFatura = '' then
        begin
          if XTipoNF = 'SAIDA' then
            FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO',
              IntToStr(COD_PEDIDO), '');
          if XTipoNF = 'OS' then
            FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem',
              IntToStr(COD_PEDIDO), '');
          if XTipoNF = 'ENTRADA' then
            FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO',
              IntToStr(COD_PEDIDO), '');
        end
        else
        begin
          if XTipoNF = 'SAIDA' then
            DMSAIDA.TAlx.Close;
          DMSAIDA.TAlx.SQL.Clear;
          DMSAIDA.TAlx.SQL.Add('select * from docfiscfatura where docfiscfatura.cod_pedido in (' + FMenu.XPedFatura + ')');
          DMSAIDA.TAlx.Open;

          FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFISC',
            DMSAIDA.TAlx.fieldByName('cod_docfiscal').AsString, '');
        end;
        //ALEX: 09/03/2009 - VERIFICA SE O NUMERO DA NOTA FISCAL NÃO ESTA VAZIA
        if XNumNotaFiscal = '' then
        begin
          Mensagem('ATENÇÃO',
            'O Número da Nota Fiscal não foi atribuído pelo sistema.', '', 1, 1,
            false, 'a');
          Printer.Abort;
          Exit;
        end;
        //Determina a quantidade de Paginas a serem impressas
        if (TipoNF = 'SAIDA') or (TipoNF = 'OS') then
        begin
          XQTDPAG := (Round(XQTDITEM /
            DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger));
          if XQTDPAG < (XQTDITEM /
            DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger) then
          begin
            XQTDPAG := XQTDPAG + 1;
          end;

          try
            // 13/03/2009: verifica qnt despesa
            if (DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger > 0) then
            begin
              if (XQTDPAG < (XQTDDESP /
                DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger)) then
              begin
                XQTDPAG := XQTDPAG + 1;
              end;
            end;
          except
          end;
        end
        else
        begin
          XQTDPAG := (Round(XQTDITEM /
            DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger));
          if XQTDPAG < (XQTDITEM /
            DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger) then
            XQTDPAG := XQTDPAG + 1;
        end;
        FMenu.XIMPFISC := True;
        if TipoNF = 'SAIDA' then
          DMSAIDA.TItemPV.First;
        if TipoNF = 'OS' then
          DMServ.TPOrd.First;
        if TipoNF = 'ENTRADA' then
          DMENTRADA.TItemPC.First;

        //Imprime a Quantidade de Paginas necessarias
        XQTDPAGIMP := 1;
        while XQTDPAGIMP <= XQTDPAG do
        begin
          XNUMLIN := 0;
          if NFCabecalho = False then
            FMenu.XIMPFISC := False;

          //PRODUTOS
          XNUMLIN := DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
          XQTDITEMIMPPAG := 0;
          if NFProdutos = False then
            FMenu.XIMPFISC := False;

          if NFServicos = False then
            FMenu.XIMPFISC := False;

          // 13/03/2009: se em empresa estiver setado o ISS imprimir despesas
          //If (DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency > 0 ) And (TipoNF='OS')
          // 14/04/2009:    SE POSSUIR DESPESAS E FOR OS
          if (XQTDDESP > 0) and (TipoNF = 'OS') then
          begin

            XQTDITEMIMPPAG := 0;
            XNUMLIN := 0;

            if NFDespesas = False then
              FMenu.XIMPFISC := False;
          end;

          XNUMLIN := 0;
          if XQTDPAGIMP <> XQTDPAG then
          begin
            NFImpostosX;
          end
          else
          begin
            if NFImpostos = False then
              FMenu.XIMPFISC := False;
          end;
          XNUMLIN := 0;
          if NFTransportadora = False then
            FMenu.XIMPFISC := False;

          XNUMLIN := 0;
          XCodigoPedido := COD_PEDIDO;
          if NFDadosAdicionais = False then
            FMenu.XIMPFISC := False;

          XNUMLIN := 0;
          if XQTDPAGIMP = XQTDPAG then
          begin
            if NFFisco = False then
              FMenu.XIMPFISC := False;
          end;

          XQTDPAGIMP := XQTDPAGIMP + 1;
          if XQTDPAGIMP <= XQTDPAG then
            Printer.NewPage;
        end;

        //FINALIZA IMPRESSAO
        if FMenu.XIMPFISC = True then
          Printer.EndDoc;

        if FMenu.XIMPFISC = True then
        begin
          if FMenu.XPedFatura = '' then
          begin
            if XTipoNF = 'SAIDA' then
            begin
              Result := True;
              if FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA',
                IntToStr(COD_PEDIDO), '') = True then
              begin
                //se filtra o pedido impresso mara-lo
                DMSAIDA.TPedV.Edit;
                DMSAIDA.TPedV.FieldByName('FISCO').AsString := 'NF';
                DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString :=
                  DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString;
                DMSAIDA.TPedV.Post;
                DMSAIDA.IBT.CommitRetaining;
              end
              else
              begin
                ShowMessage('O Pedido não foi marcado como impresso!');
              end;
            end;
            if XTipoNF = 'OS' then
            begin
              Result := True;
              if FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM',
                IntToStr(COD_PEDIDO), '') = True then
              begin
                //se filtra o pedido impresso mara-lo
                DMServ.TOrd.Edit;
                // 16/03/2009:  ser foi impresso um ECF // marcar como impresso as duas e jogar o numero da NF na auxiliar
                if (DMServ.TOrd.FieldByName('FISCO').AsString = 'ECF') then
                begin
                  DMServ.TOrd.FieldByName('FISCO').AsString := 'ECF/NF';
                end
                else
                begin
                  DMServ.TOrd.FieldByName('FISCO').AsString := 'NF';

                end;
                DMServ.TOrd.FieldByName('NUMFISCAL').AsString :=
                  DMServ.TFiscOrd.FieldByName('NUMDOCFIS').AsString;
                try
                  DMServ.TOrd.FieldByName('NUMFISCALINT').AsInteger :=
                    DMServ.TOrd.FieldByName('NUMFISCAL').AsInteger;
                except
                  DMServ.TOrd.FieldByName('NUMFISCALINT').AsInteger := 0;
                end;
                DMServ.TOrd.Post;
                DMServ.IBT.CommitRetaining;
              end
              else
              begin
                ShowMessage('O Pedido não foi marcado como impresso!');
              end;
            end;
            if XTipoNF = 'ENTRADA' then
            begin
              Result := True;
              if FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP',
                IntToStr(COD_PEDIDO), '') = True then
              begin
                //se filtra o pedido impresso mara-lo
                DMENTRADA.TPedC.Edit;
                DMENTRADA.TPedC.FieldByName('FISCO').AsString := 'NF';
                DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString :=
                  DMENTRADA.TFiscPC.FieldByName('NUMDOCFIS').AsString;
                DMENTRADA.TPedC.Post;
                DMENTRADA.IBT.CommitRetaining;
              end
              else
              begin
                ShowMessage('O Pedido não foi marcado como impresso!');
              end;
            end;
          end
            {else begin
                 If XTipoNF='SAIDA'
                 Then Begin
                     Result:=True;

                     DMSAIDA.TPedV.Close;
                     DMSAIDA.TPedV.SQL.Clear;
                     DMSAIDA.TPedV.SQL.Add('select * from pedvenda where pedvenda.cod_pedvenda in ('+FMenu.XPedFatura+')');
                     DMSAIDA.TPedV.Open;
                     DMSAIDA.TPedV.First;

                     while not DMSAIDA.TPedV.Eof
                     do Begin
                         DMSAIDA.TPedV.Edit;
                         DMSAIDA.TPedV.FieldByName('FISCO').AsString:='NF';
                         DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString:=DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString;
                         DMSAIDA.TPedV.Next;
                     End;
                     DMSAIDA.TPedV.Post;
                     DMSAIDA.IBT.CommitRetaining;}
           //      end;
           //End;
        end
        else
        begin
          Mensagem('A T E N Ç Ã O',
            'Verifique se a Nota Fiscal foi devidamente impresso. Este pedido não foi marcado como impresso, entre em contato com a equipe de suporte!' + #13
            + 'Verifique o arquivo C:\erronf.txt', '', 1, 1, False, 'a');
        end;
      except
        Mensagem('ATENÇÃO', 'Por favor, verifique a impressora!', '', 1, 1,
          False, 'a');
        Printer.EndDoc;
        Exit;
      end;
    end;
  except
  end;
  //ALEX: 09/03/2009 - ESTE COMANDO SERVE PAA DESMARCAR O TIPO DE RELATÓRIO PARA NÃO DAR PROBLRMAS COM REIMPRESSÕES DE CÓDIGOS
  FMenu.TIPOREL := '';
end;

//Função responsável por emitir Cupom Fiscal de Determinada saída
function Ecf_GeraMensagemPromocional(XCOD_EMISSOR: Integer): Boolean;
var
  I: Integer;
begin
  if DMESTOQUE.Alx.FieldByName('PAGAMENTO').AsString = 'À VISTA' then
  begin
    //Prepara Mensagem
    //Controla Mensagem configurada em banco
    XMENS := DMMACS.TLoja.FieldByName('FRASEECF').AsString + XNOMECLI;
    if Length(XMENS) > 47 then
    begin
      if Length(XMENS) > 94 then
      begin
        XMENS := copy(XMENS, 0, 94);
      end
      else
      begin
        for I := Length(XMENS) to 94 do
        begin
          XMENS := XMENS + ' ';
        end;
      end;
    end
    else
    begin
      for I := Length(XMENS) to 47 do
      begin
        XMENS := XMENS + ' ';
      end;
    end;
    //Controla informações procon
    XINFPROCON := DMMACS.TLoja.fieldbyname('www_procon').AsString + ' ' +
      DMMACS.TLoja.fieldbyname('fone_procon').AsString + ' ' +
      DMMACS.TLoja.fieldbyname('end_procon').AsString;
    if XINFPROCON <> '  ' then
    begin
      if Length(XINFPROCON) > 47 then
      begin
        if Length(XINFPROCON) > 94 then
        begin
          XINFPROCON := copy(XINFPROCON, 0, 94);
        end
        else
        begin
          for I := Length(XINFPROCON) to 94 do
          begin
            XINFPROCON := XINFPROCON + ' ';
          end;
        end;
      end
      else
      begin
        for I := Length(XINFPROCON) to 47 do
        begin
          XINFPROCON := XINFPROCON + ' ';
        end;
      end;
    end;

    if length(DMESTOQUE.Alx.FieldByName('NOMECLI').AsString) >= 37 then
    begin
      XNOMECLI := 'Cliente: ' +
        copy(DMESTOQUE.Alx.FieldByName('NOMECLI').AsString, 1, 37) + '.';
    end
    else
    begin
      XNOMECLI := 'Cliente: ' +
        ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('NOMECLI').AsString, 39);
    end;
    XMENS := XMENS + XNOMECLI + XINFPROCON;

    // FUNÇÃO PARA FECHAR CUPOM
    if ecfFecha_Cupom(XMENS) = false then
    begin
      Exit;
    end;
  end
  else
  begin

    if length(DMESTOQUE.Alx.FieldByName('NOMECLI').AsString) >= 38 then
    begin
      XNOMECLI := 'Cliente: ' +
        copy(DMESTOQUE.Alx.FieldByName('NOMECLI').AsString, 1, 38) + '.';
    end
    else
    begin
      XNOMECLI := 'Cliente: ' +
        ConcatEspacoDir(DMESTOQUE.Alx.FieldByName('NOMECLI').AsString, 39);
    end;

    //Controla Mensagem configurada em banco
    XMENS := DMMACS.TLoja.FieldByName('FRASEECF').AsString;
    if Length(XMENS) > 47 then
    begin
      if Length(XMENS) > 94 then
      begin
        XMENS := copy(XMENS, 0, 94);
      end
      else
      begin
        for I := Length(XMENS) to 94 do
        begin
          XMENS := XMENS + ' ';
        end;
      end;
    end
    else
    begin
      for I := Length(XMENS) to 47 do
      begin
        XMENS := XMENS + ' ';
      end;
    end;

    //Controla informações procon
    XINFPROCON := DMMACS.TLoja.fieldbyname('www_procon').AsString + ' ' +
      DMMACS.TLoja.fieldbyname('fone_procon').AsString + ' ' +
      DMMACS.TLoja.fieldbyname('end_procon').AsString;
    if XINFPROCON <> '' then
    begin
      if Length(XINFPROCON) > 47 then
      begin
        if Length(XINFPROCON) > 94 then
        begin
          XINFPROCON := copy(XINFPROCON, 0, 94);
        end
        else
        begin
          for I := Length(XINFPROCON) to 94 do
          begin
            XINFPROCON := XINFPROCON + ' ';
          end;
        end;
      end
      else
      begin
        for I := Length(XINFPROCON) to 47 do
        begin
          XINFPROCON := XINFPROCON + ' ';
        end;
      end;
    end;

    XMENS := XMENS + XNOMECLI + XINFPROCON;

    //VERIFICA AS DATAS DE VENCIMENTO
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add(' Select parcelacr.dtvenc, parcelacr.valor From parcelacr ');
    DMCAIXA.TAlx.SQL.Add(' Left Join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
    DMCAIXA.TAlx.SQL.Add(' Where (parcelacr.fech<>' + #39 + 'S' +
      #39') and (ctareceber.tipogerador=' + #39 + 'PEDVENDA' + #39 +
      ') And (ctareceber.cod_gerador=:CODGERADOR) ');
    DMCAIXA.TAlx.ParamByName('CODGERADOR').AsInteger := XCOD_EMISSOR;
    DMCAIXA.TAlx.Open;
    XNOMECLI := '';
    if not DMCAIXA.TAlx.IsEmpty then
    begin
      XMENS := XMENS + '(VENCIMENTO - VALOR)                            ';
      DMCAIXA.TAlx.First;
      while not DMCAIXA.TAlx.Eof do
      begin
        XNOMECLI := XNOMECLI + '(' + DMCAIXA.TAlx.FieldByNAme('DTVENC').AsString
          + ' - ' + FormatFloat('0.00',
          DMCAIXA.TAlx.FieldByNAme('VALOR').AsCurrency) + ') ';
        if Length(XNOMECLI) > 35 then
        begin
          for I := Length(XNOMECLI) to 47 do
          begin
            XNOMECLI := XNOMECLI + ' ';
          end;
          XMENS := XMENS + XNOMECLI;
          XNOMECLI := '';
        end;
        DMCAIXA.TAlx.Next;
      end;
      if Length(XNOMECLI) > 47 then
      begin
        XNOMECLI := copy(XNOMECLI, 0, 47);
      end
      else
      begin
        for I := Length(XNOMECLI) to 47 do
        begin
          XNOMECLI := XNOMECLI + ' ';
        end;
      end;
      XMENS := XMENS + XNOMECLI;
      XMENS := XMENS + ConcatEspacoDir('            ', 48);
    end;

    XMENS := copy(XMENS, 1, 384);

    if ecfFecha_Cupom(XMENS) = false then
    begin
      Exit;
    end;
  end;
end;

//Função responsável por emitir Cupom Fiscal de Determinada saída
function ECF(COD_EMISSOR: Integer; TipoEmissor: string): Boolean;
var
  XDESCPROD: Real; // Desconto em reais no produto
  XVLRUNIT: Real; // Vlr Unitário do Produto
  XCPFCNPJ: string; // Armazena CPF/CNPJ DO CLIENTE
  XENCONTRAITEM: Boolean; //Determina se a Tabela mestre possui itens a imprimir
  XPAGAMENTO: Integer; //Armazena Indice para forma de pagamento
  XVLRPG: Real; //Armazena o vlr total pago
  XMENS: string; // Mensagem de final de cupom
  XCPF: string; //Cpf para Mensagem
  I: Integer; //Contador
  XVLRTOTCUPOM, XVlrProdCupom: Real;
    //armazena o total do cupom em arredondamento
  XVTTRUNCCUPOM, XVTTRUNCPROD, XQTDTRUNC, XVLRUNITTRUNC: Extended;
    ////armazena o total do cupom em truncamento
begin
  FMenu.XIMPFISC := True;
  //VERIFICA DESCONTO EM MOEDA PARA TABELA MESTRE
  XTOTDESC := 0;
  XVLRTOTCUPOM := 0;
  XVlrProdCupom := 0;
  XVTTRUNCCUPOM := 0;
  XVTTRUNCPROD := 0;
  // Verifica o estado atual da impressora
  Status_Impressora;

  //FILTRA LOJA
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

  // 16/03/2009:
  XTipoECF := TipoEmissor;

  /////////////////////////
  //TOTALIZA TOTAL DE ITENS
  /////////////////////////
  DMESTOQUE.TSlave.Close;
  DMESTOQUE.TSlave.SQL.Clear;
  //Para Venda
  if TipoEmissor = 'PEDVENDA' then
  begin
    DMESTOQUE.TSlave.SQL.Add(' Select sum(itenspedven.valortotal) AS TOTALITEM From itenspedven ');
    DMESTOQUE.TSlave.SQL.Add('  where itenspedven.cod_pedven=:CODMESTRE');
  end;
  //Para Ordem
  if TipoEmissor = 'ORDEM' then
  begin
    DMESTOQUE.TSlave.SQL.Add(' select sum(itprodord.total) AS TOTALITEM From itprodord ');
    DMESTOQUE.TSlave.SQL.Add('  where itprodord.cod_ordem=:CODMESTRE');
  end;
  //PASSA PARAMETRO DO CODIGO DA TABELA MESTRE
  DMESTOQUE.TSlave.ParamByName('CODMESTRE').AsInteger := COD_EMISSOR;
  DMESTOQUE.TSlave.Open;
  //para serviços em ordem
  if TipoEmissor = 'ORDEM' then
  begin
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add(' select sum(itservord.total) AS TOTALITEM From itservord ');
    DMESTOQUE.Alx.SQL.Add(' where itservord.cod_itservord=:CODMESTRE ');
    //PASSA PARAMETRO DO CODIGO DA TABELA MESTRE
    DMESTOQUE.Alx.ParamByName('CODMESTRE').AsInteger := COD_EMISSOR;
    DMESTOQUE.Alx.Open;
  end;

  //////////////
  //FILTRA ITENS
  //////////////
  XENCONTRAITEM := True;
  DMESTOQUE.TSlave.Close;
  DMESTOQUE.TSlave.SQL.Clear;
  //Para Venda
  if TipoEmissor = 'PEDVENDA' then
  begin
    DMESTOQUE.TSlave.SQL.Add(' Select subproduto.cod_subproduto as CODPROD, unidade.sigla_unid as UNIDADE, itenspedven.valunit AS VLRUNIT, cst.indiceecf, ');
    //Verifica se a empresa utiliza Descrição para Cupom
    DMESTOQUE.TSlave.SQL.Add('  SUBPRODUTO.especificacao, Subproduto.DESCRICAO As DESCRICAO, ');
    DMESTOQUE.TSlave.SQL.Add('        itenspedven.valortotal AS TOTAL,  itenspedven.qtdeprod AS QTD, itenspedven.descpro AS DESCONTO From itenspedven ');
    DMESTOQUE.TSlave.SQL.Add('        left join estoque on estoque.cod_estoque=itenspedven.cod_estoque ');
    DMESTOQUE.TSlave.SQL.Add('        left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
    DMESTOQUE.TSlave.SQL.Add('        left join cst on cst.cod_cst = subproduto.cod_cst ');
    DMESTOQUE.TSlave.SQL.Add('        left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
    DMESTOQUE.TSlave.SQL.Add('  where itenspedven.cod_pedven=:CODMESTRE');
  end;
  //Para Ordem
  if TipoEmissor = 'ORDEM' then
  begin
    DMESTOQUE.TSlave.SQL.Add(' Select distinct subproduto.cod_subproduto as CODPROD, cst.indiceecf,unidade.sigla_unid as UNIDADE, ');
    DMESTOQUE.TSlave.SQL.Add('  SUBPRODUTO.especificacao, Subproduto.DESCRICAO As DESCRICAO, ');
    DMESTOQUE.TSlave.SQL.Add('        itprodord.total, itprodord.vlrunit AS VLRUNIT, itprodord.qtd AS QTD, itprodord.desconto From itprodord ');
    DMESTOQUE.TSlave.SQL.Add('        left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
    DMESTOQUE.TSlave.SQL.Add('        left  join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
    DMESTOQUE.TSlave.SQL.Add('        left  join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
    DMESTOQUE.TSlave.SQL.Add('        left join cst on cst.cod_cst = subproduto.cod_cst ');
    DMESTOQUE.TSlave.SQL.Add('  where itprodord.cod_ordem=:CODMESTRE');

    // 13/03/2009: filtra despesas
    DMESTOQUE.TDesp.Close;
    DMESTOQUE.TDesp.SQL.Clear;
    DMESTOQUE.TDesp.SQL.Add('select despadic.COD_DESPADIC, despadic.cod_gerador, despadic.despesa, despadic.gerador, despadic.qtd, despadic.vlrfinal, despadic.cod_equipe, DESPADIC.COD_DESPADIC,');
    DMESTOQUE.TDesp.SQL.Add('DESPADIC.VLRREAL, DESPADIC.LUCMOE, DESPADIC.LUCPER, DESPADIC.DESCONTO, DESPADIC.MARCA, DESPADIC.UNIDADE, DESPADIC.VLRTOTFIN');
    DMESTOQUE.TDesp.SQL.Add('From despadic ');
    DMESTOQUE.TDesp.SQL.Add('Where (despadic.gerador=' + #39 + 'ORDEM' + #39 +
      ') AND (despadic.cod_gerador=:COD_GERADOR)');
    DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger := COD_EMISSOR;
    DMESTOQUE.TDesp.SQL.Add('order by despadic.cod_despadic desc');
    DMESTOQUE.TDesp.Open;

  end;
  //PASSA PARAMETRO DO CODIGO DA TABELA MESTRE
  DMESTOQUE.TSlave.ParamByName('CODMESTRE').AsInteger := COD_EMISSOR;
  DMESTOQUE.TSlave.Open;
  //SE NÃO ENCONTRAR ITENS
  if DMESTOQUE.TSlave.IsEmpty then
  begin
    XENCONTRAITEM := False;
    // 13/03/2009: se for ordem e tiver depesas deixar passar
    if ((TipoEmissor = 'ORDEM') and (not DMESTOQUE.TDesp.IsEmpty)) then
    begin
      XENCONTRAITEM := True;
    end;
  end;

  //SE NÃO FOI ENCONTRADO ITEM A IMPRIMIR PASSA MENSAGEM E ABANDONA
  if XENCONTRAITEM = False then
  begin
    Mensagem('A T E N Ç Ã O', 'Não foram encontrados itens a serem impressos!',
      '', 1, 1, False, 'I');
    ECF := False;
    Exit;
  end;

  //////////////////////
  //FILTRA TABELA MESTRE
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  //SELECIONA VENDA
  if TipoEmissor = 'PEDVENDA' then
  begin
    DMESTOQUE.Alx.SQL.Add('Select pedvenda.cod_pedvenda, PEDVENDA.COD_CLIENTE, pedvenda.valor AS TOTAL, pedvenda.desconto AS DESCONTO, pedvenda.NomeCli, pedvenda.cpfcnpj, formpag.descricao as PAGAMENTO, formpag.DESCFISC as PAGFISC ');
    DMESTOQUE.Alx.SQL.Add('from pedvenda');
    DMESTOQUE.Alx.SQL.Add('Left join formpag ON formpag.cod_formpag=PedVenda.cod_formpag ');
    DMESTOQUE.Alx.SQL.Add('Where pedvenda.cod_pedvenda=:CODMESTRE ');
  end;
  //SELECIONA ORDEM
  if TipoEmissor = 'ORDEM' then
  begin
    DMESTOQUE.Alx.SQL.Add(' Select ordem.totord AS TOTAL, vwcliente.cpfcnpj, ordem.cod_cliente, formpag.descricao as PAGAMENTO, formpag.DESCFISC as PAGFISC, vwcliente.nome as NomeCli, Ordem.desconto');
    DMESTOQUE.Alx.SQL.Add(' from ordem');
    DMESTOQUE.Alx.SQL.Add(' Left join formpag ON formpag.cod_formpag=ordem.cod_formpag ');
    DMESTOQUE.Alx.SQL.Add(' left join vwcliente on vwcliente.cod_cliente = ordem.cod_cliente ');
    DMESTOQUE.Alx.SQL.Add(' Where Ordem.cod_ordem=:CODMESTRE ');
  end;
  //PASSA PARAMETRO DO CODIGO DA TABELA MESTRE
  DMESTOQUE.Alx.ParamByName('CODMESTRE').AsInteger := COD_EMISSOR;
  DMESTOQUE.Alx.Open;
  //SE NÃO FOI ENCONTRADO ITEM A IMPRIMIR PASSA MENSAGEM E ABANDONA
  if DMESTOQUE.Alx.IsEmpty then
  begin
    Mensagem('A T E N Ç Ã O', ' Os dados de cabeçalho não foram encontrados!',
      '', 1, 1, False, 'I');
    ECF := False;
    Exit;
  end;

  /////////////////////
  //DEFINE E ABRE PORTA
  /////////////////////
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

  if (MODELO_IMPRESSORA = '') then
  begin
    Mensagem(' A T E N Ç Ã O ', 'Não há nenhuma impressora selecionada.', '', 1,
      1, False, 'E');
    Exit;
  end;

  // VERIFICA O NUMERO DO CUPOM FISCAL E EH INSERIDO NA FUNÇÃO FINALIZA_CUPOMFISC
  Verifica_CupomFiscal;

  // função abre porta
  if ecfAbrePorta = false then
  begin
    if (MODELO_IMPRESSORA <> 'SWEDA') then
    begin
      Mensagem('   A T E N Ç Ã O   ', 'Erro ao abrir porta.', '', 1, 1, False,
        'E');
      Exit;
    end;
    EXIT;
  end
  else
  begin
    try
      if (ValidCPF(DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString) = True) or
        (ValidaCGC(DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString) = True) then
      begin
        XCPFCNPJ := DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString;
      end
      else
      begin
        XCPFCNPJ := '';
      end;
    except
      XCPFCNPJ := '';
    end;
    // abre cupom
    if ecfAbreCupom = false then
    begin
      Exit;
    end
    else
    begin
      /////////////
      //VENDE ITENS
      /////////////
      DMESTOQUE.TSlave.First;
      while not DMESTOQUE.TSlave.Eof do
      begin
        XDESCPROD := (DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency *
          DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency) -
          DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
        if XDESCPROD < 0 then
        begin
          XDESCPROD := 0;
          //Caso o desconto seja negativo significa que foi cobrado um vlr superior ao do banco de dados, então o vlr unitário deve ser corrigido
          XVLRUNIT := DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency /
            DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
          XVLRUNITTRUNC := DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency /
            DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
        end
        else
        begin
          XVLRUNIT := DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency;
          XVLRUNITTRUNC := DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency;
        end;

        // Função Vende Item - A função ecfAliquota informa o indice aliquota conforme o produto - as funções Numero Inteiro e Casas Decimais retornam a quant. com 7 numeros -
        if ecfVendeItem(DMESTOQUE.TSlave.FieldByName('CODPROD').AsString,
          DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString,
          DMESTOQUE.TSlave.FieldByname('QTD').AsString, FormatFloat('0.00',
          XVLRUNIT), DMESTOQUE.TSlave.FieldByName('indiceecf').AsString,
          DMESTOQUE.TSlave.FieldByName('UNIDADE').AsString, '3',
          FormatFloat('0.00', XDESCPROD)) = 0 then
          Exit;

        if DMMACS.TLoja.FieldByName('ECFTRUNC').AsInteger = 1 then
        begin
          XVlrProdCupom := (DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency *
            XVLRUNIT) - XDESCPROD;
          XVLRTOTCUPOM := XVLRTOTCUPOM + XVlrProdCupom;
        end
        else
        begin
          XVTTRUNCPROD := Trunc(((DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency
            * XVLRUNITTRUNC) - XDESCPROD) * 100) / 100;
          XVTTRUNCCUPOM := XVTTRUNCCUPOM + XVTTRUNCPROD;
        end;

        DMESTOQUE.TSlave.Next;
      end;

      ///
      ///    DESPESAS      -      INICIO
      ///

        // 13/03/2009: imprimir DESPESAS
      if TipoEmissor = 'ORDEM' then
      begin

        //IMPRIME Despesas DA ECF
        DMESTOQUE.TDesp.First;
        while not DMESTOQUE.TDesp.Eof do
        begin

          XDESCPROD := (DMESTOQUE.TDesp.FieldByName('vlrfinal').AsCurrency *
            DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency) -
            DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency;
          if XDESCPROD < 0 then
          begin
            XDESCPROD := 0;
            //Caso o desconto seja negativo significa que foi cobrado um vlr superior ao do banco de dados, então o vlr unitário deve ser corrigido
            XVLRUNIT := DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency /
              DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency;
            XVLRUNITTRUNC := DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency
              / DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency;
          end
          else
          begin
            XVLRUNIT := DMESTOQUE.TDesp.FieldByName('vlrfinal').AsCurrency;
            XVLRUNITTRUNC := DMESTOQUE.TDesp.FieldByName('vlrfinal').AsCurrency;
          end;

          // 13/03/2009:      verificar

      // Função Vende Item - A função ecfAliquota informa o indice aliquota conforme o produto - as funções Numero Inteiro e Casas Decimais retornam a quant. com 7 numeros -
          if ecfVendeItem(DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsString,
            DMESTOQUE.TDesp.FieldByName('DESPESA').AsString,
            DMESTOQUE.TDesp.FieldByName('QTD').AsString, FormatFloat('0.00',
            XVLRUNIT), DMMACS.TLoja.FieldByName('ECFINDICEALIQSERV').AsString,
            DMESTOQUE.TDesp.FieldByName('UNIDADE').AsString, '0',
            FormatFloat('0.00', XDESCPROD)) = 0 then
            Exit;

          if DMMACS.TLoja.FieldByName('ECFTRUNC').AsInteger = 1 then
          begin
            XVlrProdCupom := (DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency *
              XVLRUNIT) - XDESCPROD;
            XVLRTOTCUPOM := XVLRTOTCUPOM + XVlrProdCupom;
          end
          else
          begin
            XVTTRUNCPROD := Trunc(((DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency
              * XVLRUNITTRUNC) - XDESCPROD) * 100) / 100;
            XVTTRUNCCUPOM := XVTTRUNCCUPOM + XVTTRUNCPROD;
          end;
          DMESTOQUE.TDesp.Next;
        end;

      end;

      ///
        ///    DESPESAS     -     FIM
        ///

        ////////////////
        //FINALIZA CUPOM
        ////////////////
      Ecf_GeraMensagemPromocional(COD_EMISSOR);
      ecfIniciaFechamento(0);
    end;

    if FMenu.XIMPFISC = True then
    begin
      // - 17/03/2009:  add p/ ordem
      if (FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA',
        IntToStr(COD_EMISSOR), '') = True) or (FiltraTabela(DMServ.TOrd, 'ORDEM',
        'COD_ORDEM', IntToStr(COD_EMISSOR), '') = True) then
      begin
        //filtra para verificar o código do equipamento emissor
        FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA',
          FMenu.LCODCAIXA.Caption, '');
        Finaliza_CupomFiscal(COD_EMISSOR);
      end
      else
      begin
        Mensagem('A T E N Ç Ã O', 'O pedido não foi marcado como impresso.', '',
          1, 1, False, 'a');
      end;
    end
    else
    begin
      Mensagem('A T E N Ç Ã O',
        'Verifique se o Cupom foi devidamente impresso. Este pedido não foi marcado como impresso, entre em contato com a equipe de suporte!',
        '', 1, 1, False, 'a');
    end;
  end;
end;

//Função responsável por emitir Cupom Não Fiscal de Determinada saída
function CUPOM(COD_EMISSOR: Integer; TipoEmissor: string): Boolean;
var
  XTOTDESC: Real; //irá armazenar o desconto em moeda
  XDESCPROD: Real; // Desconto em reais no produto
  XVLRUNIT: Real; // Vlr Unitário do Produto
  XCPFCNPJ: string; // Armazena CPF/CNPJ DO CLIENTE
  XENCONTRAITEM: Boolean; //Determina se a Tabela mestre possui itens a imprimir
  XPAGAMENTO: Integer; //Armazena Indice para forma de pagamento
  XVLRPG: Real; //Armazena o vlr total pago
  // FMENU.XIMPFISC Se = True ao final indica que tudo ocorreu perfeitamente
  XMENS: string; // Mensagem de final de cupom
  XNOMECLI: string; //Nome do Cliente para mensagem
  XCPF: string; //Cpf para Mensagem
  I: Integer; //Contador
begin
  FMenu.XIMPFISC := True;
  //VERIFICA DESCONTO EM MOEDA PARA TABELA MESTRE
  XTOTDESC := 0;
  DMESTOQUE.TSlave.Close;
  DMESTOQUE.TSlave.SQL.Clear;

  /////////////////////////
  //TOTALIZA TOTAL DE ITENS
  /////////////////////////
  //Para Venda
  if TipoEmissor = 'PEDVENDA' then
  begin
    DMESTOQUE.TSlave.SQL.Add(' Select sum(itenspedven.valortotal) AS TOTALITEM From itenspedven ');
    DMESTOQUE.TSlave.SQL.Add('  where itenspedven.cod_pedven=:CODMESTRE');
  end;
  //Para Ordem
  if TipoEmissor = 'ORDEM' then
  begin
    DMESTOQUE.TSlave.SQL.Add(' select sum(itprodord.total) AS TOTALITEM From itprodord ');
    DMESTOQUE.TSlave.SQL.Add('  where itprodord.cod_ordem==:CODMESTRE');
  end;
  //PASSA PARAMETRO DO CODIGO DA TABELA MESTRE
  DMESTOQUE.TSlave.ParamByName('CODMESTRE').AsInteger := COD_EMISSOR;
  DMESTOQUE.TSlave.Open;
  XTOTDESC := XTOTDESC + DMESTOQUE.TSlave.FieldByName('TOTALITEM').AsCurrency;
  //para serviços em ordem
  if TipoEmissor = 'ORDEM' then
  begin
    DMESTOQUE.TSlave.Close;
    DMESTOQUE.TSlave.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add(' select sum(itservord.total) AS TOTALITEM From itservord ');
    DMESTOQUE.Alx.SQL.Add(' where itservord.cod_itservord=:CODMESTRE ');
    //PASSA PARAMETRO DO CODIGO DA TABELA MESTRE
    DMESTOQUE.Alx.ParamByName('CODMESTRE').AsInteger := COD_EMISSOR;
    DMESTOQUE.Alx.Open;
    XTOTDESC := XTOTDESC + DMESTOQUE.Alx.FieldByName('TOTALITEM').AsCurrency;
  end;
  //////////////
  //FILTRA ITENS
  //////////////
  XENCONTRAITEM := True;
  DMESTOQUE.TSlave.Close;
  DMESTOQUE.TSlave.SQL.Clear;
  //Para Venda
  if TipoEmissor = 'PEDVENDA' then
  begin
    DMESTOQUE.TSlave.SQL.Add(' Select subproduto.cod_subproduto as CODPROD, itenspedven.valunit AS VLRUNIT, subproduto.descricao, cst.indiceecf, ');
    DMESTOQUE.TSlave.SQL.Add('        itenspedven.valortotal AS TOTAL,  itenspedven.qtdeprod AS QTD, itenspedven.descpro AS DESCONTO From itenspedven ');
    DMESTOQUE.TSlave.SQL.Add('        left join estoque on estoque.cod_estoque=itenspedven.cod_estoque ');
    DMESTOQUE.TSlave.SQL.Add('        left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
    DMESTOQUE.TSlave.SQL.Add('        left join cst on cst.cod_cst = subproduto.cod_cst ');
    DMESTOQUE.TSlave.SQL.Add('  where itenspedven.cod_pedven=:CODMESTRE');
  end;
  //Para Ordem
  if TipoEmissor = 'ORDEM' then
  begin
    DMESTOQUE.TSlave.SQL.Add(' Select subproduto.cod_subproduto as CODPROD, subproduto.descricao, cst.indiceecf, ');
    DMESTOQUE.TSlave.SQL.Add('        itprodord.total, itprodord.vlrunit AS VLRUNIT, itprodord.qtd AS QTD, itprodord.desconto From itprodord ');
    DMESTOQUE.TSlave.SQL.Add('        left join estoque on estoque.cod_estoque=itprodord.cod_estoque ');
    DMESTOQUE.TSlave.SQL.Add('        left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
    DMESTOQUE.TSlave.SQL.Add('        left join cst on cst.cod_cst = subproduto.cod_cst ');
    DMESTOQUE.TSlave.SQL.Add('  where itprodord.cod_ordem=:CODMESTRE');
  end;
  //PASSA PARAMETRO DO CODIGO DA TABELA MESTRE
  DMESTOQUE.TSlave.ParamByName('CODMESTRE').AsInteger := COD_EMISSOR;
  DMESTOQUE.TSlave.Open;
  //SE NÃO ENCONTRAR ITENS
  if DMESTOQUE.TSlave.IsEmpty then
    XENCONTRAITEM := False;

  //SE NÃO FOI ENCONTRADO ITEM A IMPRIMIR PASSA MENSAGEM E ABANDONA
  if XENCONTRAITEM = False then
  begin
    Mensagem('A T E N Ç Ã O', 'Não foram encontrados itens a serem impressos!',
      '', 1, 1, False, 'I');
    CUPOM := False;
    Exit;
  end;

  //////////////////////
  //FILTRA TABELA MESTRE
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  //SELECIONA VENDA
  if TipoEmissor = 'PEDVENDA' then
  begin
    DMESTOQUE.Alx.SQL.Add(' Select pedvenda.valor AS TOTAL, pedvenda.desconto AS DESCONTO, pedvenda.NomeCli, pedvenda.cpfcnpj, formpag.descricao as PAGAMENTO, formpag.DESCFISC as PAGFISC from pedvenda ');
    DMESTOQUE.Alx.SQL.Add(' Left join formpag ON formpag.cod_formpag=PedVenda.cod_formpag ');
    DMESTOQUE.Alx.SQL.Add(' Where pedvenda.cod_pedvenda=:CODMESTRE ');
  end;
  //SELECIONA ORDEM
  if TipoEmissor = 'ORDEM' then
  begin
    DMESTOQUE.Alx.SQL.Add(' Select ordem.totord AS TOTAL, vwcliente.cpfcnpj, formpag.descricao as PAGAMENTO from ordem ');
    DMESTOQUE.Alx.SQL.Add(' Left join formpag ON formpag.cod_formpag=ordem.cod_formpag ');
    DMESTOQUE.Alx.SQL.Add('  left join vwcliente on vwcliente.cod_cliente = ordem.cod_cliente ');
    DMESTOQUE.Alx.SQL.Add(' Where Ordem.cod_ordem=:CODMESTRE ');
  end;
  //PASSA PARAMETRO DO CODIGO DA TABELA MESTRE
  DMESTOQUE.Alx.ParamByName('CODMESTRE').AsInteger := COD_EMISSOR;
  DMESTOQUE.Alx.Open;
  //SE NÃO FOI ENCONTRADO ITEM A IMPRIMIR PASSA MENSAGEM E ABANDONA
  if DMESTOQUE.Alx.IsEmpty then
  begin
    Mensagem('A T E N Ç Ã O', ' Os dados de cabeçalho não foram encontrados!',
      '', 1, 1, False, 'I');
    CUPOM := False;
    Exit;
  end
  else
  begin
    XTOTDESC := StrToFloat(formatFloat('0.00', XTOTDESC)) -
      StrToFloat(formatFloat('0.00',
      DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency));
  end;
  XTOTDESC := DMESTOQUE.Alx.FieldByName('DESCONTO').AsCurrency;

  /////////////////////
  //DEFINE E ABRE PORTA
  /////////////////////
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  //   FMenu.MPF.Porta:=DMMACS.TLoja.FieldByName('PORTAECF').AsString;
  {   If FMenu.MPF.AbrePorta=True
     Then Begin
         ////////////////
         //VERIFICA PAPEL
         ////////////////
         FMenu.MPF.PoucoPapel;
         If FMenu.MPF.ST1>=64
         Then Begin
             If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'O Sistema identificou a necessidade de trocar a bubina de papel.'+#13+'A leitura X deve Ser impressa, Deseja fazer isso agora?', '', 2, 3, False, 'c')= 2
             Then Begin
                 FMenu.XIMPFISC:=False;
                 If FMenu.MPF.LeituraX=True Then
                     ShowMessage('Leitura X executada!')
                 Else
                     ShowMessage('A Leitura X Não foi impressa! Provável falta de papel')
             End;
             Exit;
         End;
         ////////////
         //ABRE CUPOM
         ////////////
         Try
             StrToFloat(DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString);
             If (ValidCPF(DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString)=True) Or (ValidaCGC(DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString)=True)
             Then Begin
                 XCPFCNPJ:=DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString;
             End
             Else Begin
                 XCPFCNPJ:='';
             End;
         Except
             XCPFCNPJ:='';
         End;
         If FMenu.MPF.AbreCupom(XCPFCNPJ)=True
         Then Begin
             /////////////
             //VENDE ITENS
             /////////////
             DMESTOQUE.TSlave.First;
             While not DMESTOQUE.TSlave.Eof do
             Begin
                 XDESCPROD:=(DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency*DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency)-DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
                 If XDESCPROD<0
                 Then Begin
                     XDESCPROD:=0;
                     //Caso o desconto seja negativo significa que foi cobrado um vlr superior ao do banco de dados, então o vlr unitário deve ser corrigido
                     XVLRUNIT:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency/DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
                 End
                 Else Begin
                     XVLRUNIT:=DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency;
                 End;
                 FMenu.MPF.VendeItem(2, DMESTOQUE.TSlave.FieldByName('CODPROD').AsString, DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString, DMESTOQUE.TSlave.FieldByName('INDICEECF').AsString, DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency, XVLRUNIT, XDESCPROD, 1);
                 If ErroECF=True
                 Then Begin
                     FMenu.XIMPFISC:=False;
                     If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Ocorreram problemas ao imprimir um produto. Informações incorretas.'+#13+'Deseja Cancelar o Cupom Fiscal?', '', 2, 3, False, 'c')= 2
                     Then Begin
                         FMenu.MPF.VendeItem(2, '01', 'Produto cancela cupom', 'II', 1, 1, 0, 1);
                         if FMenu.MPF.CancelaCupom
                         then Begin
                             ShowMessage('Cupom Cancelado');
                             Exit;
                         End;
                     End;
                 end;
                 DMESTOQUE.TSlave.Next;
             End;
             ////////////////////////////
             //INICIA FECHAMENTO DE CUPOM
             ////////////////////////////
             If XTOTDESC>=0 Then
                 FMenu.MPF.IniciaFechamento(0, XTOTDESC)//Aplicado como Desconto
             Else
                 FMenu.MPF.IniciaFechamento(1, XTOTDESC);//Aplicado como Acrécimo
             If ErroECF=True
             Then Begin
                 ShowMessage('Cupom Paralisado em Desconto!');
                 FMenu.XIMPFISC:=False;
             End;
             ////////////
             //PAGAMENTO
             ////////////
             If DMESTOQUE.Alx.FieldByName('PAGAMENTO').AsString='À VISTA'
             Then Begin
                 //Se a forma de pagamento for a deve - se descobrir a forma de pagamento
                 If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAICA', '', '(TIPOGERADOR='+#39+'PEDVENDA'+#39+') AND (COD_GERADOR='+IntToStr(COD_EMISSOR)+')')=True
                 Then Begin
                     If DMCAIXA.TLanCaixa.FieldByName('TIPO').AsString='Carteira' Then//SE LANÇAMENTO FOI A VISTA TIPO CARTEIRA LANÇAMENTO É DINHEIRO
                         XPAGAMENTO:=1;
                     If DMCAIXA.TLanCaixa.FieldByName('TIPO').AsString='Cheque' Then//PROGRAMA PAGAMENTO PARA CHEQUE
                         XPAGAMENTO:=FMenu.MPF.ProgramaFormaPagamento('CHEQUE');
                     If DMCAIXA.TLanCaixa.FieldByName('TIPO').AsString='Cartão' Then//PROGRAMA PAGAMENTO PARA CARTÃO
                         XPAGAMENTO:=FMenu.MPF.ProgramaFormaPagamento('CARTÃO');
                 End;
             End
             Else Begin
                 //CASO O PAGAMENTO NÃO TENHA SIDO FEITO A VISTA PASSA FORMA DE PAGAMENTO
                 If DMESTOQUE.Alx.FieldByName('PAGFISC').AsString<>'' Then
                     XPAGAMENTO:=FMenu.MPF.ProgramaFormaPagamento(DMESTOQUE.Alx.FieldByName('PAGFISC').AsString)
                 Else
                     XPAGAMENTO:=FMenu.MPF.ProgramaFormaPagamento('Duplicata')
             End;
             If ErroECF=True
             Then Begin
                 XPAGAMENTO:=1;
             END;
             FMenu.MPF.PagaCupom(XPAGAMENTO, DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency, '');
             If ErroECF=True
             Then Begin
                 ShowMessage('Cupom Paralisado em Pagamento!');
                 FMenu.XIMPFISC:=False;
             End;
             /////////////
             //FECHA CUPOM
             /////////////
             If DMESTOQUE.Alx.FieldByName('PAGAMENTO').AsString='À VISTA'
             Then Begin
                 FMenu.MPF.FechaCupom(' '+DMMACS.TLoja.FieldByName('FRASEECF').AsString);
             End
             Else Begin
                 //Prepara Mensagem
                 //Controla Mensagem configurada em banco
                 XMENS:=DMMACS.TLoja.FieldByName('FRASEECF').AsString+XNOMECLI;
                 If Length(XMENS)>47
                 Then Begin
                     If Length(XMENS)>94
                     Then Begin
                         XMENS:=copy(XMENS, 0, 94);
                     End
                     Else Begin
                         For I:=Length(XMENS) To 94 do
                         Begin
                             XMENS:=XMENS+' ';
                         End;
                     End;
                 End
                 Else Begin
                     For I:=Length(XMENS) To 47 do
                     Begin
                         XMENS:=XMENS+' ';
                     End;
                 End;

                 XNOMECLI:= 'Cliente: '+DMESTOQUE.Alx.FieldByName('CPFCNPJ').AsString+'-'+UpperCase(DMESTOQUE.Alx.FieldByName('NOMECLI').AsString);

                 If Length(XNOMECLI)>47
                 Then Begin
                     XNOMECLI:=copy(XNOMECLI, 0, 47);
                 End
                 Else Begin
                     For I:=Length(XNOMECLI) To 47 do
                     Begin
                         XNOMECLI:=XNOMECLI+' ';
                     End;
                 End;
                 XMENS:=XMENS+XNOMECLI;

                 //VERIFICA AS DATAS DE VENCIMENTO
                 DMCAIXA.TAlx.Close;
                 DMCAIXA.TAlx.SQL.Clear;
                 DMCAIXA.TAlx.SQL.Add(' Select parcelacr.dtvenc, parcelacr.valor From parcelacr ');
                 DMCAIXA.TAlx.SQL.Add(' Left Join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
                 DMCAIXA.TAlx.SQL.Add(' Where (parcelacr.fech<>'+#39+'S'+#39') and (ctareceber.tipogerador='+#39+'PEDVENDA'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) ');
                 DMCAIXA.TAlx.ParamByName('CODGERADOR').AsInteger:=COD_EMISSOR;
                 DMCAIXA.TAlx.Open;
                 XNOMECLI:='';
                 If Not DMCAIXA.TAlx.IsEmpty
                 Then Begin
                     XMENS:=XMENS+'(VENCIMENTO - VALOR)                            ';
                     DMCAIXA.TAlx.First;
                     While Not DMCAIXA.TAlx.Eof Do
                     Begin
                         XNOMECLI:=XNOMECLI+'('+DMCAIXA.TAlx.FieldByNAme('DTVENC').AsString+' - '+FormatFloat('0.00', DMCAIXA.TAlx.FieldByNAme('VALOR').AsCurrency)+') ';
                         If Length(XNOMECLI)>35
                         Then Begin
                             For I:=Length(XNOMECLI) To 47 do
                             Begin
                                 XNOMECLI:=XNOMECLI+' ';
                             End;
                             XMENS:=XMENS+XNOMECLI;
                             XNOMECLI:='';
                         end;
                         DMCAIXA.TAlx.Next;
                     End;
                     If Length(XNOMECLI)>47
                     Then Begin
                         XNOMECLI:=copy(XNOMECLI, 0, 47);
                     End
                     Else Begin
                         For I:=Length(XNOMECLI) To 47 do
                         Begin
                             XNOMECLI:=XNOMECLI+' ';
                         End;
                     End;
                     XMENS:=XMENS+XNOMECLI;
                     XMens:=XMENS+'                                                ';
                     XMens:=XMENS+'      Ass.:_____________________________________';
                 End;
                 FMenu.MPF.FechaCupom(' '+XMENS);
             End;
             If ErroECF=True
             Then Begin
                 FMenu.MPF.FechaCupom('');
                 If ErroECF=True
                 Then Begin
                     FMenu.XIMPFISC:=False;
                     ShowMessage('O Cupom não foi fechado!');
                 End;
             End;
         End
         Else Begin
             ShowMessage('Não foi possivel abrir o Cupom Fiscal');
             FMenu.XIMPFISC:=False;
         End;
     End
     Else Begin
         FMenu.XIMPFISC:=False;
         ShowMessage('Não foi possível abrir a porta de comunicação com a impressora!');
     End;
     If FMenu.XIMPFISC=True
     Then Begin
         If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(COD_EMISSOR), '') = True
         Then Begin
             //filtra para verificar o código do equipamento emissor
             FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
             //se filtra o pedido impresso mara-lo
             DMSAIDA.TPedV.Edit;
             DMSAIDA.TPedV.FieldByName('FISCO').AsString:='ECF';
             DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString:=FMenu.MPF.NumeroCupom;
             If DMCAIXA.TCaixa.FieldByName('COD_EQUIPFISC').AsString<>'' Then
                 DMSAIDA.TPedV.FieldByName('COD_EQUIPFISC').AsString:=DMCAIXA.TCaixa.FieldByName('COD_EQUIPFISC').AsString;
             DMSAIDA.TPedV.Post;
             DMSAIDA.IBT.CommitRetaining;
  {				If DMCAIXA.TCaixa.FieldByName('COD_EQUIPFISC').AsString='' Then
                 MessageDlg('Não foi possível registrar o equipamento de emissão fiscal. Anote '+#13+#10+'o Nº do Pedido e entre em contato com o suporte técnico', mtWarning, [mbOK], 0);
         End
         Else Begin
             ShowMessage('O Pedido não foi marcado como impresso!');
         End;
     End
     Else Begin
         MessageDlg('Verifique se o Cupom foi devidamente impresso!', mtWarning, [mbOK], 0);
         MessageDlg('Este pedido não foi marcado como impresso, entre em contato com a equipe de suporte!', mtWarning, [mbOK], 0);
     End;}
end;

//Imprime Relatorio de todas as contas a pagar e a receber agrupadas por mes
procedure ImpRelCtaPRVencMes;
begin
  DMMACS.TLoja.Edit;
  DMMACS.TLoja.FieldByName('TMP1').AsString := 'Consultado:' + #13 +
    'Lançamento de Contas a Receber/Pagar' + #13 +
    'Lançamentos em Banco e Cheques';
  DMMACS.TLoja.Post;
  DMMACS.Transaction.CommitRetaining;
  //APAGA REGISTROS DA TABERLA TMP
  DMCONTA.TAlx.Close;
  DMCONTA.TAlx.SQL.Clear;
  DMCONTA.TAlx.SQL.Add('DELETE FROM TMP ');
  DMCONTA.TAlx.ExecSQL;
  //ZERA CODIGO PARA TABELA TMP
  DMMACS.TCodigo.Edit;
  DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger := 1;
  DMMACS.TCodigo.Post;
  DMMACS.IBTCodigo.CommitRetaining;
  DMCONTA.IBT.CommitRetaining;
  //SELECIONA CTAS A RECEBER
  DMCONTA.TAlx.Close;
  DMCONTA.TAlx.SQL.Clear;
  DMCONTA.TAlx.SQL.Add('SELECT Distinct extract(month from VWPARCR.dtvenc) AS MES, extract(year from VWPARCR.dtvenc) AS ANO from VWPARCR WHERE (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') AND ((FECH<>' + #39 + 'S' + #39 +
    ')  OR (FECH IS NULL))  and (VWPARCR.dtvenc Is not Null)');
  DMCONTA.TAlx.Open;
  DMCONTA.TAlx.RecordCount;
  DMCONTA.TAlx.First;
  //INSERE CTAS A RECEBER EM TEMPORARIO
  while not DMCONTA.TAlx.Eof do
  begin
    try
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('INT1').AsInteger :=
        DMCONTA.TAlx.FieldByName('MES').AsInteger;
      DMMACS.TMP.FieldByName('DESC2').AsString :=
        DMCONTA.TAlx.FieldByName('ANO').AsString;
      DMMACS.TMP.Post;
    except
    end;
    DMCONTA.TAlx.Next;
  end;
  try
    DMMACS.Transaction.CommitRetaining;
  except
  end;
  //SELECIONA CTAS A PAGAR
  try
    DMCONTA.TAlx.Close;
    DMCONTA.TAlx.SQL.Clear;
    DMCONTA.TAlx.SQL.Add('SELECT Distinct extract(month from VWPARCP.dtvenc) AS MES, extract(year from VWPARCP.dtvenc) AS ANO from VWPARCP WHERE (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') AND ((FECH<>' + #39 + 'S' + #39 +
      ')  OR (FECH IS NULL))  and (VWPARCP.dtvenc Is not Null)');
    DMCONTA.TAlx.Open;
    DMCONTA.TAlx.RecordCount;
    DMCONTA.TAlx.First;
  except
  end;
  //INSERE CTAS A PAGAR EM TEMPORARIO
  try
    while not DMCONTA.TAlx.Eof do
    begin
      try
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add('SELECT * FROM TMP WHERE TMP.INT1=:DESC1 AND TMP.DESC2=:DESC2');
        DMMACS.TALX.ParamByName('DESC1').AsInteger :=
          DMCONTA.TAlx.FieldByName('MES').AsInteger;
        DMMACS.TALX.ParamByName('DESC2').AsString :=
          DMCONTA.TAlx.FieldByName('ANO').AsString;
        DMMACS.TALX.Open;
      except
      end;
      if DMMACS.TALX.IsEmpty then
      begin
        //se naum encontrou nenhuma outra data inclui a do contas a pagar
        try
          DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP,
            'TMP', 'COD_TMP');
          DMMACS.TMP.FieldByName('INT1').AsString :=
            DMCONTA.TAlx.FieldByName('MES').AsString;
          DMMACS.TMP.FieldByName('DESC2').AsString :=
            DMCONTA.TAlx.FieldByName('ANO').AsString;
          DMMACS.TMP.Post;
        except
        end;
      end;
      DMCONTA.TAlx.Next;
    end;
  except
  end;
  DMMACS.Transaction.CommitRetaining;
  //SELECIONA CHEQUES RECEBIDOS
  DMCONTA.TAlx.Close;
  DMCONTA.TAlx.SQL.Clear;
  DMCONTA.TAlx.SQL.Add('SELECT Distinct extract(month from vwchequerec.dtvenc) AS MES, extract(year from vwchequerec.dtvenc) AS ANO from vwchequerec  WHERE (FECH<>' + #39 + 'S' + #39 +
    ') or (FECH is null)  and (vwchequerec.dtvenc Is not Null) ');
  DMCONTA.TAlx.Open;
  DMCONTA.TAlx.First;
  //INSERE CHEQUES RECEBIDOS EM TEMPORARIO
  while not DMCONTA.TAlx.Eof do
  begin
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add('SELECT * FROM TMP WHERE TMP.INT1=:DESC1 AND TMP.DESC2=:DESC2');
    DMMACS.TALX.ParamByName('DESC1').AsInteger :=
      DMCONTA.TAlx.FieldByName('MES').AsInteger;
    DMMACS.TALX.ParamByName('DESC2').AsString :=
      DMCONTA.TAlx.FieldByName('ANO').AsString;
    DMMACS.TALX.Open;
    if DMMACS.TALX.IsEmpty then
    begin
      //se naum encontrou nenhuma outra data inclui a do contas a pagar
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('INT1').AsString :=
        DMCONTA.TAlx.FieldByName('MES').AsString;
      DMMACS.TMP.FieldByName('DESC2').AsString :=
        DMCONTA.TAlx.FieldByName('ANO').AsString;
      DMMACS.TMP.Post;
    end;
    DMCONTA.TAlx.Next;
  end;
  DMMACS.Transaction.CommitRetaining;
  //SELECIONA MOVIMENTOS BANCÁRIOS
  DMCONTA.TAlx.Close;
  DMCONTA.TAlx.SQL.Clear;
  DMCONTA.TAlx.SQL.Add('SELECT Distinct extract(month from vwmovbanco.dtvenc) AS MES, extract(year from vwmovbanco.dtvenc) AS ANO from vwmovbanco  WHERE (FECH<>' + #39 + 'S' + #39 +
    ') or (FECH is null)  and (vwmovbanco.dtvenc Is not Null)');
  DMCONTA.TAlx.Open;
  DMCONTA.TAlx.First;
  //INSERE MOVIMENTOS BANÇARIOS EM TEMPORARIO
  while not DMCONTA.TAlx.Eof do
  begin
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add('SELECT * FROM TMP WHERE TMP.INT1=:DESC1 AND TMP.DESC2=:DESC2');
    DMMACS.TALX.ParamByName('DESC1').AsInteger :=
      DMCONTA.TAlx.FieldByName('MES').AsInteger;
    DMMACS.TALX.ParamByName('DESC2').AsString :=
      DMCONTA.TAlx.FieldByName('ANO').AsString;
    DMMACS.TALX.Open;
    if DMMACS.TALX.IsEmpty then
    begin
      //se naum encontrou nenhuma outra data inclui a do contas a pagar
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('INT1').AsString :=
        DMCONTA.TAlx.FieldByName('MES').AsString;
      DMMACS.TMP.FieldByName('DESC2').AsString :=
        DMCONTA.TAlx.FieldByName('ANO').AsString;
      DMMACS.TMP.Post;
    end;
    DMCONTA.TAlx.Next;
  end;
  DMMACS.Transaction.CommitRetaining;
  ///////////////////////////////
  //VERIFICA CONTAS PARA CADA ANO
  ///////////////////////////////
  DMMACS.TMP.Close;
  DMMACS.TMP.SQL.Clear;
  DMMACS.TMP.SQL.Add('SELECT * FROM TMP');
  DMMACS.TMP.Open;
  DMMACS.TMP.First;
  while not DMMACS.TMP.Eof do
  begin
    ///////////////////////
    //SOMA CONTAS A PAGAR
    ///////////////////////
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add('SELECT SUM(VWPARCP.VALOR) AS TOTAL FROM VWPARCP WHERE (COD_LOJA = :CODLOJA) AND ((FECH<>' + #39 + 'S' + #39 +
      ')  OR (FECH IS NULL)) AND (extract(month FROM vwparcp.dtvenc)=:MES) AND (extract(YEAR FROM vwparcp.dtvenc)=:ANO) AND ( vwparcp.dtvenc Is not Null) ');
    DMMACS.TALX.ParamByName('CODLOJA').AsString := FMenu.LCODLOJA.Caption;
    DMMACS.TALX.ParamByName('MES').AsString :=
      DMMACS.TMP.FieldByName('INT1').AsString;
    DMMACS.TALX.ParamByName('ANO').AsString :=
      DMMACS.TMP.FieldByName('DESC2').AsString;
    DMMACS.TALX.Open;
    DMMACS.TMP.Edit;
    DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
      DMMACS.TALX.FieldByName('TOTAL').AsCurrency;
    DMMACS.TMP.Post;
    ///////////////////////
    //SOMA CONTAS A RECEBER
    ///////////////////////
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add('SELECT SUM(VWPARCR.VALOR) AS TOTAL FROM VWPARCR WHERE (COD_LOJA = :CODLOJA) AND ((FECH<>' + #39 + 'S' + #39 +
      ')  OR (FECH IS NULL)) AND (extract(month FROM vwparcr.dtvenc)=:MES) AND (extract(YEAR FROM vwparcr.dtvenc)=:ANO) AND (vwparcr.dtvenc Is not Null) ');
    DMMACS.TALX.ParamByName('CODLOJA').AsString := FMenu.LCODLOJA.Caption;
    DMMACS.TALX.ParamByName('MES').AsInteger :=
      DMMACS.TMP.FieldByName('INT1').AsInteger;
    DMMACS.TALX.ParamByName('ANO').AsString :=
      DMMACS.TMP.FieldByName('DESC2').AsString;
    DMMACS.TALX.Open;
    DMMACS.TMP.Edit;
    DMMACS.TMP.FieldByName('VLR2').AsCurrency :=
      DMMACS.TALX.FieldByName('TOTAL').AsCurrency;
    DMMACS.TMP.Post;
    /////////////////////////
    //SOMA CHEQUES RECEBIDOS/
    /////////////////////////
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    //           DMMACS.TALX.SQL.Add('SELECT SUM(VWPARCR.VALOR)     AS TOTAL FROM VWPARCR     WHERE ((FECH<>'+#39+'S'+#39+')  OR (FECH IS NULL)) AND (extract(month FROM vwparcr.dtvenc    )=:MES) AND (extract(YEAR FROM vwparcr.dtvenc    )=:ANO) AND (vwparcr.dtvenc     Is not Null) ');
    DMMACS.TALX.SQL.Add(' SELECT SUM(vwchequerec.valor) AS TOTAL FROM vwchequerec ');
    DMMACS.TALX.SQL.Add(' left join movbanco on vwchequerec.cod_movbanco = movbanco.cod_movbanco ');
    DMMACS.TALX.SQL.Add(' WHERE ((vwchequerec.FECH<>' + #39 + 'S' + #39 +
      ')  OR (vwchequerec.FECH IS NULL)) AND (extract(month FROM vwchequerec.dtvenc)=:MES) AND (extract(YEAR FROM vwchequerec.dtvenc)=:ANO) AND (vwchequerec.dtvenc IS NOT NULL) and ((movbanco.cod_gerador<0) or (movbanco.cod_gerador is null))');
    DMMACS.TALX.ParamByName('MES').AsInteger :=
      DMMACS.TMP.FieldByName('INT1').AsInteger;
    DMMACS.TALX.ParamByName('ANO').AsString :=
      DMMACS.TMP.FieldByName('DESC2').AsString;
    DMMACS.TALX.Open;
    DMMACS.TMP.Edit;
    DMMACS.TMP.FieldByName('VLR2').AsCurrency :=
      DMMACS.TMP.FieldByName('VLR2').AsCurrency +
      DMMACS.TALX.FieldByName('TOTAL').AsCurrency;
    DMMACS.TMP.Post;
    /////////////////////////////
    //SOMA MOV BANCARIOS A ENTRAR
    /////////////////////////////
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' SELECT SUM(vwmovbanco.valor) AS TOTAL FROM vwmovbanco ');
    DMMACS.TALX.SQL.Add(' left join movbanco on vwmovbanco.cod_movbanco = movbanco.cod_movbanco ');
    DMMACS.TALX.SQL.Add(' WHERE ((movbanco.FECH<>' + #39 + 'S' + #39 +
      ')  OR (movbanco.FECH IS NULL)) AND (extract(month FROM vwmovbanco.dtvenc)=:MES) AND (extract(YEAR FROM vwmovbanco.dtvenc)=:ANO) AND (vwmovbanco.tipoop=' + #39
      + 'ENTRADA' + #39 +
      ') and ((movbanco.cod_gerador<0) or (movbanco.cod_gerador is null))');
    DMMACS.TALX.ParamByName('MES').AsInteger :=
      DMMACS.TMP.FieldByName('INT1').AsInteger;
    DMMACS.TALX.ParamByName('ANO').AsString :=
      DMMACS.TMP.FieldByName('DESC2').AsString;
    DMMACS.TALX.Open;
    DMMACS.TMP.Edit;
    DMMACS.TMP.FieldByName('VLR2').AsCurrency :=
      DMMACS.TMP.FieldByName('VLR2').AsCurrency +
      DMMACS.TALX.FieldByName('TOTAL').AsCurrency;
    DMMACS.TMP.Post;
    ///////////////////////////
    //SOMA MOV BANCARIOS A SAIR
    ///////////////////////////
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add('SELECT SUM(vwmovbanco.valor) AS TOTAL FROM vwmovbanco WHERE ((FECH<>' + #39 + 'S' + #39 +
      ')  OR (FECH IS NULL)) AND (extract(month FROM vwmovbanco.dtvenc)=:MES) AND (extract(YEAR FROM vwmovbanco.dtvenc)=:ANO) AND (vwmovbanco.tipoop=' + #39
      + 'SAIDA' + #39 + ')');
    DMMACS.TALX.ParamByName('MES').AsInteger :=
      DMMACS.TMP.FieldByName('INT1').AsInteger;
    DMMACS.TALX.ParamByName('ANO').AsString :=
      DMMACS.TMP.FieldByName('DESC2').AsString;
    DMMACS.TALX.Open;
    DMMACS.TMP.Edit;
    DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
      DMMACS.TMP.FieldByName('VLR1').AsCurrency +
      DMMACS.TALX.FieldByName('TOTAL').AsCurrency;
    DMMACS.TMP.Post;
    DMMACS.TMP.Next;
  end;
  DMMACS.Transaction.CommitRetaining;
  DMMACS.TMP.Close;
  DMMACS.TMP.SQL.Clear;
  DMMACS.TMP.SQL.Add('SELECT * FROM TMP order by desc2, INT1');
  DMMACS.TMP.Open;
  if not DMMACS.TMP.IsEmpty then
    FMenu.QRResumo.Preview
  else
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Relatório retonou em branco!', '', 1, 1,
      False, 'a');
end;

//Imprime (exporta) para o excell o confronto entre contas a pagar e receber agrupados em vencimentos de 30/60/90/120 e mais de 120 dias
procedure ImpRelCtaPR306090120;
var
  I: Integer;
  Icid: Integer;
  XLOOP: Integer;
  DT1, DT2: TDateTime;
  XTOTCPDIAS, XTOTCPREL, XTOTCRREL, XTOTCRDIAS: Real;
begin
  FMenu.PComunica.Caption := 'Aguarde...';
  FMenu.PComunica.Visible := True;
  FMenu.PComunica.BringToFront;
  FMenu.PComunica.Refresh;

  DMMACS.TMP.Close;
  DMMACS.TMP.SQL.Clear;
  DMMACS.TMP.SQL.Add(' DELETE FROM TMP ');
  DMMACS.TMP.ExecSQL;
  DMMACS.Transaction.CommitRetaining;
  DMMACS.TMP.Close;
  DMMACS.TMP.SQL.Clear;
  DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
  DMMACS.TMP.Open;
  I := 1;

  //LOOP UTILIZADO PARA CONTROLAR AS QUEBRAS DE +120/120+90/60/30 DIAS
  for XLOOP := 1 to 10 do
  begin
    //VENCIDOS + DE 120 DIAS
    if XLOOP = 1 then
      DT1 := (Date() - 124);
    //VENCIDOS A 120 DIAS
    if XLOOP = 2 then
    begin
      DT1 := (Date() - 123);
      DT2 := (Date() - 93);
    end;
    //VENCIDOS A 90 DIAS
    if XLOOP = 3 then
    begin
      DT1 := (Date() - 92);
      DT2 := (Date() - 62);
    end;
    //VENCIDOS A 60 DIAS
    if XLOOP = 4 then
    begin
      DT1 := (Date() - 61);
      DT2 := (Date() - 31);
    end;
    //VENCIDOS A 30 DIAS
    if XLOOP = 5 then
    begin
      DT1 := (Date() - 30);
      DT2 := (Date());
    end;
    //VENCENDO EM 30 DIAS
    if XLOOP = 6 then
    begin
      DT1 := (Date() + 1);
      DT2 := (Date() + 31);
    end;
    //VENCENDO EM 60 DIAS
    if XLOOP = 7 then
    begin
      DT1 := (Date() + 32);
      DT2 := (Date() + 62);
    end;
    //VENCENDO EM 90 DIAS
    if XLOOP = 8 then
    begin
      DT1 := (Date() + 63);
      DT2 := (Date() + 93);
    end;
    //VENCENDO EM 120 DIAS
    if XLOOP = 9 then
    begin
      DT1 := (Date() + 94);
      DT2 := (Date() + 124);
    end;
    //VENCENDO EM + DE 120 DIAS
    if XLOOP = 10 then
    begin
      DT1 := (Date() + 125);
    end;

    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('COD_TMP').AsInteger := I;
    I := I + 1;
    DMMACS.TMP.FieldByName('INT1').AsInteger := 1;
    if XLOOP = 1 then
      DMMACS.TMP.FieldByName('DESC1').AsString :=
        '[+ DE 120 DIAS] - Vcidas. a + de 120 dias [<=' + DateToStr(DT1) + ']';
    if XLOOP = 2 then
      DMMACS.TMP.FieldByName('DESC1').AsString :=
        '[120 DIAS] - Vcidas. a 120 dias [>=' + DateToStr(DT1) + ']/[<=' +
        DateToStr(DT2) + ']';
    if XLOOP = 3 then
      DMMACS.TMP.FieldByName('DESC1').AsString :=
        '[90 DIAS] - Vcidas. a 90 dias [>=' + DateToStr(DT1) + ']/[<=' +
        DateToStr(DT2) + ']';
    if XLOOP = 4 then
      DMMACS.TMP.FieldByName('DESC1').AsString :=
        '[60 DIAS] - Vcidas. a 60 dias [>=' + DateToStr(DT1) + ']/[<=' +
        DateToStr(DT2) + ']';
    if XLOOP = 5 then
      DMMACS.TMP.FieldByName('DESC1').AsString :=
        '[30 DIAS] - Vcidas. a 30 dias [>=' + DateToStr(DT1) + ']/[<=' +
        DateToStr(DT2) + ']';
    if XLOOP = 6 then
      DMMACS.TMP.FieldByName('DESC1').AsString :=
        '[30 DIAS] - Vmento. em 30 dias [>=' + DateToStr(DT1) + ']/[<=' +
        DateToStr(DT2) + ']';
    if XLOOP = 7 then
      DMMACS.TMP.FieldByName('DESC1').AsString :=
        '[60 DIAS] - Vmento. em 60 dias [>=' + DateToStr(DT1) + ']/[<=' +
        DateToStr(DT2) + ']';
    if XLOOP = 8 then
      DMMACS.TMP.FieldByName('DESC1').AsString :=
        '[90 DIAS] - Vmento. em 90 dias [>=' + DateToStr(DT1) + ']/[<=' +
        DateToStr(DT2) + ']';
    if XLOOP = 9 then
      DMMACS.TMP.FieldByName('DESC1').AsString :=
        '[120 DIAS] - Vmento em 120 dias [>=' + DateToStr(DT1) + ']/[<=' +
        DateToStr(DT2) + ']';
    if XLOOP = 10 then
      DMMACS.TMP.FieldByName('DESC1').AsString :=
        '[+ de 120 DIAS] - Vmento em + de 120 dias [>=' + DateToStr(DT1) + ']';

    DMMACS.TMP.Post;
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('COD_TMP').AsInteger := I;
    I := I + 1;
    DMMACS.TMP.FieldByName('INT1').AsInteger := 2;
    DMMACS.TMP.FieldByName('DESC1').AsString := 'Contas a Receber';
    DMMACS.TMP.Post;

    //FILTRA CONTAS A RECEBER
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' select * From vwparcr where ');
    if XLOOP = 1 then
      DMMACS.TALX.SQL.Add(' (vwparcr.dtvenc<=:DT1) ');
    if XLOOP = 10 then
      DMMACS.TALX.SQL.Add(' (vwparcr.dtvenc>=:DT1) ');

    if (XLOOP <> 1) and (XLOOP <> 10) then
    begin
      DMMACS.TALX.SQL.Add(' (vwparcr.dtvenc>=:DT1) AND (vwparcr.dtvenc<=:DT2) ');
      DMMACS.TALX.ParamByName('DT2').AsDate := DT2;
    end;

    DMMACS.TALX.SQL.Add(' and (vwparcr.cod_loja=:CODLOJA)  AND (vwparcr.fech<>'
      + #39 + 'S' + #39 + ')');
    DMMACS.TALX.SQL.Add('  order by vwparcr.dtvenc ');
    DMMACS.TALX.ParamByName('DT1').AsDate := DT1;
    DMMACS.TALX.ParamByName('CODLOJA').AsString := FMenu.LCODLOJA.Caption;
    DMMACS.TALX.SQL.Text;
    DMMACS.TALX.Open;
    while not DMMACS.TALX.Eof do
    begin
      DMMACS.TMP.Insert;
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := I;
      I := I + 1;
      DMMACS.TMP.FieldByName('DESC2').AsString :=
        DMMACS.TALX.FieldByName('NUMPARC').AsString;
      DMMACS.TMP.FieldByName('DESC1').AsString :=
        DMMACS.TALX.FieldByName('NOME').AsString;
      DMMACS.TMP.FieldByName('DATA1').AsString :=
        DMMACS.TALX.FieldByName('DTVENC').AsString;
      DMMACS.TMP.FieldByName('DATA2').AsString :=
        DMMACS.TALX.FieldByName('DTLANC').AsString;
      DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
        DMMACS.TALX.FieldByName('VALOR').AsCurrency;
      DMMACS.TMP.FieldByName('INT1').AsInteger := 0;
      DMMACS.TMP.Post;
      XTOTCRDIAS := XTOTCRDIAS + DMMACS.TALX.FieldByName('VALOR').AsCurrency;
      XTOTCRREL := XTOTCRREL + DMMACS.TALX.FieldByName('VALOR').AsCurrency;
      DMMACS.TALX.Next;
    end;
    //Imprime total de vencidos p/ ctas a pagar
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('COD_TMP').AsInteger := I;
    I := I + 1;
    DMMACS.TMP.FieldByName('VLR1').AsCurrency := XTOTCRDIAS;
    DMMACS.TMP.FieldByName('INT1').AsCurrency := 3;
    DMMACS.TMP.Post;

    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('COD_TMP').AsInteger := I;
    I := I + 1;
    DMMACS.TMP.FieldByName('DESC1').AsString := 'Contas a Pagar';
    DMMACS.TMP.FieldByName('INT1').AsCurrency := 2;
    DMMACS.TMP.Post;

    //FILTRA CONTAS A PAGAR
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' select * From vwparcp where ');
    if XLOOP = 1 then
      DMMACS.TALX.SQL.Add(' (vwparcp.dtvenc<=:DT1) ');
    if XLOOP = 10 then
      DMMACS.TALX.SQL.Add(' (vwparcp.dtvenc>=:DT1) ');

    if (XLOOP <> 1) and (XLOOP <> 10) then
    begin
      DMMACS.TALX.SQL.Add(' (vwparcp.dtvenc>=:DT1) AND (vwparcp.dtvenc<=:DT2) ');
      DMMACS.TALX.ParamByName('DT2').AsDate := DT2;
    end;
    DMMACS.TALX.SQL.Add(' and (vwparcp.cod_loja=:CODLOJA)  AND (vwparcp.fech<>'
      + #39 + 'S' + #39 + ')');
    DMMACS.TALX.SQL.Add('  order by vwparcp.dtvenc ');
    DMMACS.TALX.ParamByName('DT1').AsDate := DT1;
    DMMACS.TALX.ParamByName('CODLOJA').AsString := FMenu.LCODLOJA.Caption;
    DMMACS.TALX.SQL.Text;
    DMMACS.TALX.Open;

    while not DMMACS.TALX.Eof do
    begin
      DMMACS.TMP.Insert;
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := I;
      I := I + 1;
      DMMACS.TMP.FieldByName('DESC2').AsString :=
        DMMACS.TALX.FieldByName('NUMPARC').AsString;
      DMMACS.TMP.FieldByName('DESC1').AsString :=
        DMMACS.TALX.FieldByName('NOME').AsString;
      DMMACS.TMP.FieldByName('DATA1').AsString :=
        DMMACS.TALX.FieldByName('DTVENC').AsString;
      DMMACS.TMP.FieldByName('DATA2').AsString :=
        DMMACS.TALX.FieldByName('DTLANC').AsString;
      DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
        DMMACS.TALX.FieldByName('VALOR').AsCurrency;
      DMMACS.TMP.FieldByName('INT1').AsInteger := 0;
      DMMACS.TMP.Post;
      XTOTCPDIAS := XTOTCPDIAS + DMMACS.TALX.FieldByName('VALOR').AsCurrency;
      XTOTCPREL := XTOTCPREL + DMMACS.TALX.FieldByName('VALOR').AsCurrency;
      DMMACS.TALX.Next;
    end;
    //Imprime total de vencidos p/ ctas a pagar
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('COD_TMP').AsInteger := I;
    I := I + 1;
    DMMACS.TMP.FieldByName('VLR1').AsCurrency := XTOTCPDIAS;
    DMMACS.TMP.FieldByName('INT1').AsInteger := 3;
    DMMACS.TMP.Post;
    //Imprime total de vencidos a 120 dias p/ ctas a receber - ctas a pagar
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('COD_TMP').AsInteger := I;
    I := I + 1;
    DMMACS.TMP.FieldByName('VLR1').AsCurrency := XTOTCRDIAS - XTOTCPDIAS;
    DMMACS.TMP.FieldByName('INT1').AsInteger := 4;
    DMMACS.TMP.Post;
    XTOTCPDIAS := 0;
    XTOTCRDIAS := 0;
  end;
  DMMACS.TMP.Insert;
  DMMACS.TMP.FieldByName('COD_TMP').AsInteger := I;
  I := I + 1;
  DMMACS.TMP.FieldByName('DESC1').AsString := 'TOTAL:';
  DMMACS.TMP.FieldByName('INT1').AsInteger := 5;
  DMMACS.TMP.Post;
  DMMACS.TMP.Insert;
  DMMACS.TMP.FieldByName('COD_TMP').AsInteger := I;
  I := I + 1;
  DMMACS.TMP.FieldByName('INT1').AsInteger := 6;
  DMMACS.TMP.FieldByName('DESC1').AsString := 'Receber:';
  DMMACS.TMP.FieldByName('VLR1').AsCurrency := XTOTCRREL;
  DMMACS.TMP.Post;
  DMMACS.TMP.Insert;
  DMMACS.TMP.FieldByName('COD_TMP').AsInteger := I;
  I := I + 1;
  DMMACS.TMP.FieldByName('INT1').AsInteger := 6;
  DMMACS.TMP.FieldByName('DESC1').AsString := 'Pagar:';
  DMMACS.TMP.FieldByName('VLR1').AsCurrency := XTOTCPREL;
  DMMACS.TMP.Post;
  DMMACS.TMP.Insert;
  DMMACS.TMP.FieldByName('COD_TMP').AsInteger := I;
  I := I + 1;
  DMMACS.TMP.FieldByName('INT1').AsInteger := 7;
  DMMACS.TMP.FieldByName('DESC1').AsString := 'Saldo:';
  DMMACS.TMP.FieldByName('VLR1').AsCurrency := XTOTCRREL - XTOTCPREL;
  DMMACS.TMP.Post;
  try
    FMenu.PComunica.Visible := False;
  except
    FMenu.PComunica.Visible := False;
  end;

  DMMACS.Transaction.CommitRetaining;

  DMMACS.TRel.Close;
  DMMACS.TRel.SQL.Clear;
  DMMACS.TRel.SQL.Add(' Select * from tmp ');
  DMMACS.TRel.Open;
  if not DMMACS.TRel.IsEmpty then
  begin
    DMMACS.FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfResumoCta_PR.frf');
    DMMACS.FSRel.ShowReport;
  end
  else
  begin
    Mensagem('INFORMAÇÃO AO USUÁRIO', 'O relatório retornou sem informações!',
      '', 1, 1, False, 'i');
  end;
end;

// retorna o numero de clientes que estão com conta atrasada em um determinado periodo
function RetornaNumCliente(Data_ini: string; Data_Fim: string): integer;
begin
  DMPESSOA.TALX.Close;
  DMPESSOA.TALX.SQL.Clear;
  DMPESSOA.TALX.SQL.Add('select count(distinct ctareceber.cod_cliente) AS NUMERO');
  DMPESSOA.TALX.SQL.Add('from ctareceber');
  DMPESSOA.TALX.SQL.Add('left join parcelacr on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber');
  DMPESSOA.TALX.SQL.Add('left join formpag on ctareceber.cod_formpag = formpag.cod_formpag');

  // verifica se tem data de inicio e data fim
  if (Data_ini <> '') and (Data_Fim <> '') then
  begin
    DMPESSOA.TALX.SQL.Add('where (parcelacr.dtvenc between :data1 and :data2)');
    DMPESSOA.TALX.ParamByName('DATA1').AsString := Data_ini;
    DMPESSOA.TALX.ParamByName('DATA2').AsString := Data_Fim;
  end;
  // verifica se tem soh a data de inicio
  if (Data_ini <> '') and (Data_Fim = '') then
  begin
    DMPESSOA.TALX.SQL.Add('where (parcelacr.dtvenc <= :data1)');
    DMPESSOA.TALX.ParamByName('DATA1').AsString := Data_ini;
  end;
  // verifica se tem soh a data final
  if (Data_ini = '') and (Data_Fim <> '') then
  begin
    DMPESSOA.TALX.SQL.Add('where (parcelacr.dtvenc >= :data2)');
    DMPESSOA.TALX.ParamByName('DATA2').AsString := Data_Fim;
  end;

  DMPESSOA.TALX.SQL.Add('AND (parcelacr.fech <> ' + #39 + 'S' + #39 + ')');
  DMPESSOA.TALX.SQL.Add('AND (formpag.cod_loja=:CODLOJA)');
  DMPESSOA.TALX.ParamByName('CODLOJA').AsString := FMenu.LCODLOJA.Caption;
  DMPESSOA.TALX.Open;

  // armazena a qtde de clientes inadimplentes
  XTOTCLIENTE := XTOTCLIENTE + DMPESSOA.TALX.FieldByName('NUMERO').AsInteger;

  // TOTAL DE CLIENTES QUE POSSUEM CONTAS ATRASADAS
  Result := DMPESSOA.TALX.FieldByName('NUMERO').AsInteger;

end;

// retorna o numero de fornecedores que estão no ctas a pagar
function RetornaNumFornecedores(Data_ini: string; Data_Fim: string): integer;
begin
  DMPESSOA.TALX.Close;
  DMPESSOA.TALX.SQL.Clear;
  DMPESSOA.TALX.SQL.Add('select count(distinct ctapagar.cod_fornec) AS NUMERO');
  DMPESSOA.TALX.SQL.Add('from ctapagar');
  DMPESSOA.TALX.SQL.Add('left join parcelacp on ctapagar.cod_ctapagar = parcelacp.cod_ctapagar');
  DMPESSOA.TALX.SQL.Add('left join formpag on ctapagar.cod_formpag = formpag.cod_formpag');

  // verifica se tem data de inicio e data fim
  if (Data_ini <> '') and (Data_Fim <> '') then
  begin
    DMPESSOA.TALX.SQL.Add('where (parcelacp.dtvenc between :data1 and :data2)');
    DMPESSOA.TALX.ParamByName('DATA1').AsString := Data_ini;
    DMPESSOA.TALX.ParamByName('DATA2').AsString := Data_Fim;
  end;
  // verifica se tem soh a data de inicio
  if (Data_ini <> '') and (Data_Fim = '') then
  begin
    DMPESSOA.TALX.SQL.Add('where (parcelacp.dtvenc <= :data1)');
    DMPESSOA.TALX.ParamByName('DATA1').AsString := Data_ini;
  end;
  // verifica se tem soh a data final
  if (Data_ini = '') and (Data_Fim <> '') then
  begin
    DMPESSOA.TALX.SQL.Add('where (parcelacp.dtvenc >= :data2)');
    DMPESSOA.TALX.ParamByName('DATA2').AsString := Data_Fim;
  end;

  DMPESSOA.TALX.SQL.Add('AND (parcelacp.fech <> ' + #39 + 'S' + #39 + ')');
  DMPESSOA.TALX.SQL.Add('AND (formpag.cod_loja=:CODLOJA)');
  DMPESSOA.TALX.ParamByName('CODLOJA').AsString := FMenu.LCODLOJA.Caption;
  DMPESSOA.TALX.Open;

  // armazena a qtde de fornecedores que a empresa ainda possui pendencias
  XTOTFORNEC := XTOTFORNEC + DMPESSOA.TALX.FieldByName('NUMERO').AsInteger;

  // TOTAL DE CLIENTES QUE POSSUEM CONTAS ATRASADAS
  Result := DMPESSOA.TALX.FieldByName('NUMERO').AsInteger;
end;

//Imprime o confronto entre contas a pagar e receber agrupados em vencimentos de 30/60/90/120 e mais de 120 dias de forma resumida
procedure ImpRelResCtaPR306090120;
var
  DT1, DT2: TDateTime;
  XTOTREC, XTOTPAG, XTOTGREC, XTOTGPAG: Real;
begin
  XTOTREC := 0;
  XTOTPAG := 0;
  XTOTGREC := 0;
  XTOTGPAG := 0;
  XTOTCLIENTE := 0;
  XTOTFORNEC := 0;
  FMenu.PComunica.Caption := 'Aguarde...';
  FMenu.PComunica.Visible := True;
  FMenu.PComunica.BringToFront;
  FMenu.PComunica.Refresh;
  //APAGA REGISTROS DA TABERLA TMP
  DMMACS.TALX.Close;
  DMMACS.TAlx.SQL.Clear;
  DMMACS.TAlx.SQL.Add('DELETE FROM TMP ');
  DMMACS.TAlx.ExecSQL;
  //ZERA CODIGO PARA TABELA TMP
  DMMACS.TCodigo.Edit;
  DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger := 1;
  DMMACS.TCodigo.Post;
  DMMACS.IBTCodigo.CommitRetaining;
  //LOOP UTILIZADO PARA CONTROLAR AS QUEBRAS DE +120/120+90/60/30 DIAS
  for XLOOP := 1 to 10 do
  begin
    //VENCIDOS + DE 120 DIAS
    if XLOOP = 1 then
      DT1 := (Date() - 124);
    //VENCIDOS A 120 DIAS
    if XLOOP = 2 then
    begin
      DT1 := (Date() - 123);
      DT2 := (Date() - 93);
    end;
    //VENCIDOS A 90 DIAS
    if XLOOP = 3 then
    begin
      DT1 := (Date() - 92);
      DT2 := (Date() - 62);
    end;
    //VENCIDOS A 60 DIAS
    if XLOOP = 4 then
    begin
      DT1 := (Date() - 61);
      DT2 := (Date() - 31);
    end;
    //VENCIDOS A 30 DIAS
    if XLOOP = 5 then
    begin
      DT1 := (Date() - 30);
      DT2 := (Date());
    end;
    //VENCENDO EM 30 DIAS
    if XLOOP = 6 then
    begin
      DT1 := (Date() + 1);
      DT2 := (Date() + 31);
    end;
    //VENCENDO EM 60 DIAS
    if XLOOP = 7 then
    begin
      DT1 := (Date() + 32);
      DT2 := (Date() + 62);
    end;
    //VENCENDO EM 90 DIAS
    if XLOOP = 8 then
    begin
      DT1 := (Date() + 63);
      DT2 := (Date() + 93);
    end;
    //VENCENDO EM 120 DIAS
    if XLOOP = 9 then
    begin
      DT1 := (Date() + 94);
      DT2 := (Date() + 124);
    end;
    //VENCENDO EM + DE 120 DIAS
    if XLOOP = 10 then
    begin
      DT1 := (Date() + 125);
    end;
    if XLOOP = 1 then
    begin
      //TITULOS DE VENCIDA
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('DESC2').AsString := 'CTAS. VENCIDAS';
      DMMACS.TMP.FieldByName('VLR1').AsCurrency := 0;
      DMMACS.TMP.FieldByName('VLR2').AsCurrency := 0;
      DMMACS.TMP.Post;

      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('DESC2').AsString := '+ DE 120 DIAS ';
      DMMACS.TMP.FieldByName('DESC1').AsString := '[<=' + DateToStr(DT1) + ']';
      // retorna o numero de clientes que estão com conta atrasada em um determinado periodo
      DMMACS.TMP.FieldByName('INT1').AsInteger :=
        RetornaNumCliente(DateToStr(DT1), '');
      // retorna o numero de fornecedores que estão no ctas a pagar
      DMMACS.TMP.FieldByName('INT2').AsInteger :=
        RetornaNumFornecedores(DateToStr(DT1), '');
      DMMACS.TMP.Post;
    end;
    if XLOOP = 2 then
    begin
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('DESC2').AsString := '120 DIAS ';
      DMMACS.TMP.FieldByName('DESC1').AsString := '[>=' + DateToStr(DT1) +
        ' E <=' + DateToStr(DT2) + ']';
      // retorna o numero de clientes que estão com conta atrasada em um determinado periodo
      DMMACS.TMP.FieldByName('INT1').AsInteger :=
        RetornaNumCliente(DateToStr(DT1), DateToStr(DT2));
      // retorna o numero de fornecedores que estão no ctas a pagar
      DMMACS.TMP.FieldByName('INT2').AsInteger :=
        RetornaNumFornecedores(DateToStr(DT1), DateToStr(DT2));
      DMMACS.TMP.Post;
    end;
    if XLOOP = 3 then
    begin
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('DESC2').AsString := '90 DIAS ';
      DMMACS.TMP.FieldByName('DESC1').AsString := '[>=' + DateToStr(DT1) +
        ' E <=' + DateToStr(DT2) + ']';
      // retorna o numero de clientes que estão com conta atrasada em um determinado periodo
      DMMACS.TMP.FieldByName('INT1').AsInteger :=
        RetornaNumCliente(DateToStr(DT1), DateToStr(DT2));
      // retorna o numero de fornecedores que estão no ctas a pagar
      DMMACS.TMP.FieldByName('INT2').AsInteger :=
        RetornaNumFornecedores(DateToStr(DT1), DateToStr(DT2));
      DMMACS.TMP.Post;
    end;
    if XLOOP = 4 then
    begin
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('DESC2').AsString := '60 DIAS ';
      DMMACS.TMP.FieldByName('DESC1').AsString := '[>=' + DateToStr(DT1) +
        ' E <=' + DateToStr(DT2) + ']';
      // retorna o numero de clientes que estão com conta atrasada em um determinado periodo
      DMMACS.TMP.FieldByName('INT1').AsInteger :=
        RetornaNumCliente(DateToStr(DT1), DateToStr(DT2));
      // retorna o numero de fornecedores que estão no ctas a pagar
      DMMACS.TMP.FieldByName('INT2').AsInteger :=
        RetornaNumFornecedores(DateToStr(DT1), DateToStr(DT2));
      DMMACS.TMP.Post;
    end;
    if XLOOP = 5 then
    begin
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('DESC2').AsString := '30 DIAS ';
      DMMACS.TMP.FieldByName('DESC1').AsString := '[>=' + DateToStr(DT1) +
        ' E <=' + DateToStr(DT2) + ']';
      // retorna o numero de clientes que estão com conta atrasada em um determinado periodo
      DMMACS.TMP.FieldByName('INT1').AsInteger :=
        RetornaNumCliente(DateToStr(DT1), DateToStr(DT2));
      // retorna o numero de fornecedores que estão no ctas a pagar
      DMMACS.TMP.FieldByName('INT2').AsInteger :=
        RetornaNumFornecedores(DateToStr(DT1), DateToStr(DT2));
      DMMACS.TMP.Post;
    end;
    if XLOOP = 6 then
    begin
      //INSERE TOTAI PARA VENCIDAS
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('DESC2').AsString := 'Parc. vencidas:';
      DMMACS.TMP.FieldByName('VLR1').AsCurrency := XTOTREC;
      DMMACS.TMP.FieldByName('VLR2').AsCurrency := XTOTPAG;
      // NUMERO DE CLIENTE INADIMPLENTE
      DMMACS.TMP.FieldByName('INT1').AsInteger := XTOTCLIENTE;
      // total de fornecedores que estão relacionados as cntas a pagar da empresa
      DMMACS.TMP.FieldByName('INT2').AsInteger := XTOTFORNEC;
      DMMACS.TMP.Post;

      // SELECIONA O PRIMEIRO REGISTRO
      FiltraTabela(DMMACS.TMP, 'TMP', 'COD_TMP', '1', '');
      // repassando para o primeiro registro do banco o total de contas a receber que jah foram vencidas para que seja feito o calculo de porcentagem de inadimplencia
      DMMACS.TMP.Edit;
      // subtotal do contas a pagar
      DMMACS.TMP.FieldByName('VLR4').AsCurrency := XTOTPAG;
      // subtotal do contas a receber
      DMMACS.TMP.FieldByName('VLR6').AsCurrency := XTOTREC;
      DMMACS.TMP.Post;
      DMMACS.Transaction.CommitRetaining;

      XTOTREC := 0;
      XTOTPAG := 0;
      XTOTCLIENTE := 0;
      XTOTFORNEC := 0;

      // eh colocado duas vezes para separar uma linha no relatorio
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.Post;
      //TITULOS DE VENCENDO
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('DESC2').AsString := 'CTAS. VENCENDO';
      DMMACS.TMP.FieldByName('VLR1').AsCurrency := 0;
      DMMACS.TMP.FieldByName('VLR2').AsCurrency := 0;
      DMMACS.TMP.Post;

      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('DESC2').AsString := '30 DIAS ';
      DMMACS.TMP.FieldByName('DESC1').AsString := '[>=' + DateToStr(DT1) +
        ' E <=' + DateToStr(DT2) + ']';
      // retorna o numero de clientes que estão com conta atrasada em um determinado periodo
      DMMACS.TMP.FieldByName('INT1').AsInteger :=
        RetornaNumCliente(DateToStr(DT1), DateToStr(DT2));
      // retorna o numero de fornecedores que estão no ctas a pagar
      DMMACS.TMP.FieldByName('INT2').AsInteger :=
        RetornaNumFornecedores(DateToStr(DT1), DateToStr(DT2));
      DMMACS.TMP.Post;
    end;
    if XLOOP = 7 then
    begin
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('DESC2').AsString := '60 DIAS ';
      DMMACS.TMP.FieldByName('DESC1').AsString := '[>=' + DateToStr(DT1) + '/<='
        + DateToStr(DT2) + ']';
      // retorna o numero de clientes que estão com conta atrasada em um determinado periodo
      DMMACS.TMP.FieldByName('INT1').AsInteger :=
        RetornaNumCliente(DateToStr(DT1), DateToStr(DT2));
      // retorna o numero de fornecedores que estão no ctas a pagar
      DMMACS.TMP.FieldByName('INT2').AsInteger :=
        RetornaNumFornecedores(DateToStr(DT1), DateToStr(DT2));
      DMMACS.TMP.Post;
    end;
    if XLOOP = 8 then
    begin
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('DESC2').AsString := '90 DIAS ';
      DMMACS.TMP.FieldByName('DESC1').AsString := '[>=' + DateToStr(DT1) + '/<='
        + DateToStr(DT2) + ']';
      // retorna o numero de clientes que estão com conta atrasada em um determinado periodo
      DMMACS.TMP.FieldByName('INT1').AsInteger :=
        RetornaNumCliente(DateToStr(DT1), DateToStr(DT2));
      // retorna o numero de fornecedores que estão no ctas a pagar
      DMMACS.TMP.FieldByName('INT2').AsInteger :=
        RetornaNumFornecedores(DateToStr(DT1), DateToStr(DT2));
      DMMACS.TMP.Post;
    end;
    if XLOOP = 9 then
    begin
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('DESC2').AsString := '120 DIAS ';
      DMMACS.TMP.FieldByName('DESC1').AsString := '[>=' + DateToStr(DT1) +
        ' E <=' + DateToStr(DT2) + ']';
      // retorna o numero de clientes que estão com conta atrasada em um determinado periodo
      DMMACS.TMP.FieldByName('INT1').AsInteger :=
        RetornaNumCliente(DateToStr(DT1), DateToStr(DT2));
      // retorna o numero de fornecedores que estão no ctas a pagar
      DMMACS.TMP.FieldByName('INT2').AsInteger :=
        RetornaNumFornecedores(DateToStr(DT1), DateToStr(DT2));
      DMMACS.TMP.Post;
    end;
    if XLOOP = 10 then
    begin
      DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
        'COD_TMP');
      DMMACS.TMP.FieldByName('DESC2').AsString := '+ de 120 DIAS ';
      DMMACS.TMP.FieldByName('DESC1').AsString := '[>=' + DateToStr(DT1) + ']';
      // retorna o numero de clientes que estão com conta atrasada em um determinado periodo
      DMMACS.TMP.FieldByName('INT1').AsInteger := RetornaNumCliente('',
        DateToStr(DT2));
      // retorna o numero de fornecedores que estão no ctas a pagar
      DMMACS.TMP.FieldByName('INT2').AsInteger := RetornaNumFornecedores('',
        DateToStr(DT2));
      DMMACS.TMP.Post;
    end;
    //FILTRA CONTAS A RECEBER
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' select SUM(VWPARCR.VALOR) AS TOTAL From vwparcr where ');
    if XLOOP = 1 then
      DMMACS.TALX.SQL.Add(' (vwparcr.dtvenc<=:DT1) ');
    if XLOOP = 10 then
      DMMACS.TALX.SQL.Add(' (vwparcr.dtvenc>=:DT1) ');

    if (XLOOP <> 1) and (XLOOP <> 10) then
    begin
      DMMACS.TALX.SQL.Add(' (vwparcr.dtvenc>=:DT1) AND (vwparcr.dtvenc<=:DT2) ');
      DMMACS.TALX.ParamByName('DT2').AsDate := DT2;
    end;

    DMMACS.TALX.SQL.Add(' and (vwparcr.cod_loja=:CODLOJA)  AND (vwparcr.fech<>'
      + #39 + 'S' + #39 + ')');
    DMMACS.TALX.ParamByName('DT1').AsDate := DT1;
    DMMACS.TALX.ParamByName('CODLOJA').AsString := FMenu.LCODLOJA.Caption;
    DMMACS.TALX.Open;
    DMMACS.TMP.Edit;
    DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
      DMMacs.TALX.FieldByName('TOTAL').AsCurrency;
    DMMACS.TMP.FieldByName('VLR3').AsCurrency :=
      DMMACS.TALX.FieldByName('TOTAL').AsCurrency;
    DMMACS.TMP.Post;
    XTOTREC := XTOTREC + DMMacs.TALX.FieldByName('TOTAL').AsCurrency;
    XTOTGREC := XTOTGREC + DMMacs.TALX.FieldByName('TOTAL').AsCurrency;

    //Imprime total de vencidos p/ ctas a pagar
    //FILTRA CONTAS A PAGAR
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' select SUM(VWPARCP.VALOR) AS TOTAL From vwparcp where ');
    if XLOOP = 1 then
      DMMACS.TALX.SQL.Add(' (vwparcp.dtvenc<=:DT1) ');
    if XLOOP = 10 then
      DMMACS.TALX.SQL.Add(' (vwparcp.dtvenc>=:DT1) ');

    if (XLOOP <> 1) and (XLOOP <> 10) then
    begin
      DMMACS.TALX.SQL.Add(' (vwparcp.dtvenc>=:DT1) AND (vwparcp.dtvenc<=:DT2) ');
      DMMACS.TALX.ParamByName('DT2').AsDate := DT2;
    end;
    DMMACS.TALX.SQL.Add(' and (vwparcp.cod_loja=:CODLOJA)  AND (vwparcp.fech<>'
      + #39 + 'S' + #39 + ')');
    DMMACS.TALX.ParamByName('DT1').AsDate := DT1;
    DMMACS.TALX.ParamByName('CODLOJA').AsString := FMenu.LCODLOJA.Caption;
    DMMACS.TALX.SQL.Text;
    DMMACS.TALX.Open;
    DMMACS.TMP.Edit;
    DMMACS.TMP.FieldByName('VLR2').AsCurrency :=
      DMMACS.TALX.FieldByName('TOTAL').AsCurrency;
    DMMACS.TMP.Post;
    XTOTPAG := XTOTPAG + DMMacs.TALX.FieldByName('TOTAL').AsCurrency;
    XTOTGPAG := XTOTGPAG + DMMacs.TALX.FieldByName('TOTAL').AsCurrency;
  end;
  //INSERE TOTAI PARA VENCENDO
  DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
    'COD_TMP');
  DMMACS.TMP.FieldByName('DESC2').AsString := 'Parc. vencendo:';
  DMMACS.TMP.FieldByName('VLR1').AsCurrency := XTOTREC;
  DMMACS.TMP.FieldByName('VLR2').AsCurrency := XTOTPAG;
  // NUMERO DE CLIENTES INADINPLENTES
  DMMACS.TMP.FieldByName('INT1').AsCurrency := XTOTCLIENTE;
  // total de fornecedores que estão relacionados as cntas a pagar da empresa
  DMMACS.TMP.FieldByName('INT2').AsInteger := XTOTFORNEC;
  DMMACS.TMP.Post;
  //INSERE TOTAI GERAL
  DMMACS.TMP.FieldByName('COD_TMP').AsInteger := InserReg(DMMACS.TMP, 'TMP',
    'COD_TMP');
  DMMACS.TMP.FieldByName('DESC2').AsString := 'TOTAL GERAL:';
  DMMACS.TMP.FieldByName('VLR1').AsCurrency := XTOTGREC;
  DMMACS.TMP.FieldByName('VLR2').AsCurrency := XTOTGPAG;
  DMMACS.TMP.Post;

  // SELECIONA O PRIMEIRO REGISTRO
  FiltraTabela(DMMACS.TMP, 'TMP', 'COD_TMP', '1', '');
  // total geral das ctas a receber
  DMMACS.TMP.Edit;
  DMMACS.TMP.FieldByName('VLR7').AsCurrency := XTOTGREC;
  DMMACS.TMP.FieldByName('VLR5').AsCurrency := XTOTGPAG;
  DMMACS.TMP.Post;

  // SELECIONA NONO REGISTRO - CTAS VENCENDO
  FiltraTabela(DMMACS.TMP, 'TMP', 'COD_TMP', '9', '');
  DMMACS.TMP.Edit;
  // subtotal do contas a pagar que ainda estão para vencer
  DMMACS.TMP.FieldByName('VLR4').AsCurrency := XTOTPAG;
  // subtotal do contas  a receber que ainda estão para vencer
  DMMACS.TMP.FieldByName('VLR5').AsCurrency := XTOTREC;
  DMMACS.TMP.Post;
  DMMACS.Transaction.CommitRetaining;

  DMMACS.TRel.Close;
  DMMACS.TRel.SQL.Clear;
  DMMACS.TRel.SQL.Add('SELECT * FROM TMP ORDER BY TMP.COD_TMP');
  DMMACS.TRel.Open;
  FMenu.PComunica.Visible := False;

  // relatorio de clientes e fornecedores inadimplentes
  if FMenu.TIPOREL = 'INADIMPLENCIA' then
    DMMACS.FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelInadimplencia.frf')
  else
    DMMACS.FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfResCtasPR.frf');

  DMMACS.FSRel.ShowReport;
end;

//Procedure utilizada para atualizar as informações da impressora Forca a captura das propriedades passadas para a impressora padrao
procedure SetarImpressora;
var
  Device, Driver, Port: array[0..255] of char;
  hDMode: THandle;
begin
  try
    Printer.GetPrinter(Device, Driver, Port, hDMode);
  finally
    GlobalUnlock(hDMode);
  end;
end;

//Procedure utilizada para setar a pagina (papel) atual um novo tamanho
procedure SetPrinterPage_9x(Largura, Altura: LongInt);
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

//Procedure utilizada para setar valores configurados em banco para impressão de etiquetas de produto tipo personalizado
procedure GetValEtqProdPerson;
begin
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  if FiltraTabela(DMMACS.TEtqProd, 'ETQPROD', 'COD_ETQPROD',
    DMMACS.TLoja.FieldByName('COD_ETQPROD').AsString, '') = True then
  begin
    XTAMFONTE := DMMACS.TEtqProd.FieldByName('TAMFONTE').AsInteger;
    XTAMDESC := DMMACS.TEtqProd.FieldByName('TAMDESC').AsInteger;
    XINTERVCOL := DMMACS.TEtqProd.FieldByName('INTERVCOL').AsInteger;
    XINTERVLIN := DMMACS.TEtqProd.FieldByName('INTERVLINHA').AsInteger;
    XCOMPCODBARRA := DMMACS.TEtqProd.FieldByName('COMPCODBARRA').AsInteger;
    XLARGCODBARRA := DMMACS.TEtqProd.FieldByName('LARGCODBARRA').AsInteger;
    XQTDCOLPAG := DMMACS.TEtqProd.FieldByName('QTDCOLPAG').AsInteger;
    XCOLUNAINI := DMMACS.TEtqProd.FieldByName('COLUNAINI').AsInteger;
    XLINHAINI := DMMACS.TEtqProd.FieldByName('LINHAINI').AsInteger;
    XQTDETQPAG := DMMACS.TEtqProd.FieldByName('QTDETQPAG').AsInteger;
    XLARGPAG := DMMACS.TEtqProd.FieldByName('LARGPAG').AsInteger;
    XALTPAG := DMMACS.TEtqProd.FieldByName('ALTPAG').AsInteger;
    XTXTPERSONALIZADO :=
      DMMACS.TEtqProd.FieldByName('TEXTOPERSONALIZADO').AsString;
  end
  else
  begin
    Mensagem('A T E N Ç Ã O',
      'Não existe configuração para impressão da etiqueta. Verifique em configuração de loja!',
      '', 1, 1, true, 'i');
    Exit;
  end;
end;

//Procedure utilizada para setar valores configurados em banco para impressão de duplicata personalizada
procedure GetValEtqDupPerson;
begin
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  if FiltraTabela(DMMACS.TConfigDup, 'CONFIGDUP', 'COD_CONFIGDUP',
    DMMACS.TLoja.FieldByName('COD_DUPPERSONAL').AsString, '') = True then
  begin
    XTAMFONTE := DMMACS.TConfigDup.FieldByName('TAMFONTE').AsInteger;
    XTAMDESC := DMMACS.TConfigDup.FieldByName('TAMDESC').AsInteger;
    XINTERVCOL := DMMACS.TConfigDup.FieldByName('INTERVCOL').AsInteger;
    XINTERVLIN := DMMACS.TConfigDup.FieldByName('INTERVLINHA').AsInteger;
    XCOMPCODBARRA := DMMACS.TConfigDup.FieldByName('COMPCODBARRA').AsInteger;
    XLARGCODBARRA := DMMACS.TConfigDup.FieldByName('LARGCODBARRA').AsInteger;
    XQTDCOLPAG := DMMACS.TConfigDup.FieldByName('QTDCOLPAG').AsInteger;
    XCOLUNAINI := DMMACS.TConfigDup.FieldByName('COLUNAINI').AsInteger;
    XLINHAINI := DMMACS.TConfigDup.FieldByName('LINHAINI').AsInteger;
    XQTDETQPAG := DMMACS.TConfigDup.FieldByName('QTDETQPAG').AsInteger;
    XLARGPAG := DMMACS.TConfigDup.FieldByName('LARGPAG').AsInteger;
    XALTPAG := DMMACS.TConfigDup.FieldByName('ALTPAG').AsInteger;
  end
  else
  begin
    Mensagem('A T E N Ç Ã O',
      'Não existe configuração para impressão da duplicata. Verifique em configuração de loja!',
      '', 1, 1, true, 'i');
    Exit;
  end;
end;

//Procedure utilizada para setar valores configurados em banco para impressão
procedure GetValPedCanvas;
begin
  FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
  if FiltraTabela(DMMACS.TEtqProd, 'ETQPROD', 'COD_ETQPROD',
    DMMACS.TLoja.FieldByName('COD_IMPMAT').AsString, '') = True then
  begin
    XINTERVCOL := DMMACS.TEtqProd.FieldByName('INTERVCOL').AsInteger;
    XINTERVLIN := DMMACS.TEtqProd.FieldByName('INTERVLINHA').AsInteger;
    XCOMPCODBARRA := DMMACS.TEtqProd.FieldByName('COMPCODBARRA').AsInteger;
    XLARGCODBARRA := DMMACS.TEtqProd.FieldByName('LARGCODBARRA').AsInteger;
    XQTDCOLPAG := DMMACS.TEtqProd.FieldByName('QTDCOLPAG').AsInteger;
    XCOLUNAINI := DMMACS.TEtqProd.FieldByName('COLUNAINI').AsInteger;
    XLINHAINI := DMMACS.TEtqProd.FieldByName('LINHAINI').AsInteger;
    XQTDETQPAG := DMMACS.TEtqProd.FieldByName('QTDETQPAG').AsInteger;
    XLARGPAG := DMMACS.TEtqProd.FieldByName('LARGPAG').AsInteger;
    XALTPAG := DMMACS.TEtqProd.FieldByName('ALTPAG').AsInteger;
  end
  else
  begin
    Mensagem('A T E N Ç Ã O',
      'Não existe configuração para impressão do comprovante. Verifique em configuração de loja!',
      '', 1, 1, true, 'i');
    Exit;
  end;
end;

//Procedure utilizada para mudar a impressora padrão do windows e depois retornar
procedure mudaimpressoraPadrao(PrinterName: string);
var
  I: Integer;
  Device: PChar;
  Driver: Pchar;
  Port: Pchar;
  HdeviceMode: Thandle;
  aPrinter: TPrinter;
begin
  Printer.PrinterIndex := -1;
  getmem(Device, 255);
  getmem(Driver, 255);
  getmem(Port, 255);
  aPrinter := TPrinter.create;
  for I := 0 to Printer.printers.Count - 1 do
  begin
    if Printer.printers[i] = PrinterName then
    begin
      aprinter.printerindex := i;
      aPrinter.getprinter
        (device, driver, port, HdeviceMode);
      StrCat(Device, ',');
      StrCat(Device, Driver);
      StrCat(Device, Port);
      WriteProfileString('windows', 'device', Device);
      StrCopy(Device, 'windows');
      SendMessage(HWND_BROADCAST, WM_WININICHANGE,
        0, Longint(@Device));
    end;
  end;
  Freemem(Device, 255);
  Freemem(Driver, 255);
  Freemem(Port, 255);
  aPrinter.Free;
end;

//Seta como impressora padrao o valor referente em TLoja('PARAMETRO IMPRESSAO')
function SetImp(IMPRESSAO: string): Boolean;
var
  Tam: Byte; //Recebe o tamanho do nome da impressora
  Flag: Byte; //variavel de controle
  NomeImp: string; //receberá o nome da impressora a ser definida como padrao
  I: Byte;
begin
  Flag := 0; //Se em algum momento flag ser = 1 significa que ocorreu algum erro
  NomeImp := '';
  try
    if IMPRESSAO = 'ETIQPROD' then
    begin //SETAR IMPRESSORA PARA IMPRESSÃO DE ETIQUETAS DE PRODUTO\
      if FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption,
        '') = True then
        NomeImp := DMMACS.TLoja.FieldByName('IMPETIQ').AsString
      else
        Flag := 1;
    end;

    Tam := length(NomeImp);
    FMenu.ListBox.Items.Clear;
    FMenu.ListBox.Items := printer.printers;
    //percorre todas as impressoras instaladas para encontrar a impressora procurada e seta-la como padrao
    for I := 0 to FMenu.ListBox.Items.Count - 1 do
    begin
      if (Copy(FMenu.ListBox.Items[I], 1, Tam) = NomeImp) then
      begin
        Printer.PrinterIndex := I;
      end;
    end;
    if FMenu.ListBox.Items.Count = 0 then
      Flag := 1;

    if Flag = 1 then
    begin
      Mensagem('A T E N Ç Ã O',
        'Falha ao setar impressora padrão para esta operação!',
        'O sistema macs permite configurar um tipo de impressora para cada tipo de operações de impressão. Verifique, se o nome da impressora cadastrada na loja para esta operação, corresponde ao nome de alguma impressora instalada no sistema operacional',
        1, 1, true, 'i');
      SetImp := False;
    end
    else
    begin
      SetImp := True;
    end;
  except
    Mensagem('A T E N Ç Ã O',
      'Falha ao setar impressora padrão para esta operação!',
      'O sistema macs permite configurar um tipo de impressora para cada tipo de operações de impressão. Verifique, se o nome da impressora cadastrada na loja para esta operação, corresponde ao nome de alguma impressora instalada no sistema operacional',
      1, 1, true, 'i');
  end;
end;

//Procedure utilizada para imprimir etiquetas de produtos no formato personalizado em banco
//Levando em consideração que a tabela utilizada é: DMESTOQUE.TREL sendo necessário os seguintes campos renomeados
//CODFAB - Código Fabricante;  MARCA - marca do subproduto; DESCR - Descrição do Similar; PRECO - Preço a ser impresso; CODCOMPOSTO - Código Composto do produto; CODBARRA - Este valor será transformado em código de barras ( todos os valores pode m ser substituidos por outros porém estes campos devem existir
//QTD - Qunatidade lançada e o mesmo Nº de etiquetas a ser impressa
//O valor Passado a procedure EAN13:   iNDICA SE O CÓDIGO DE BARRAS DA TABELA E TIPO EAN13 OU NÃO
procedure PrnEtiqT3C(EAN13: Boolean; CODBAR: INTEGER; QTD: Integer);
var
  QtdEt, NumCop, ContEt: Integer;
  Tamanho, LimImp: Integer;
  NumCol, Coluna, EntrCol: Integer;
  CodBarraImp: string;
begin
  //seta quantidade de colunas e linhas para impressão no papel e impressora corrente
  Tamanho := Printer.Canvas.TextWidth('A');
  NumCol := 1;
  LimImp := 0;
  ContEt := 0;
  try
    Printer.BeginDoc;
    Printer.canvas.pen.width := 5;
    Printer.Canvas.Font.name := 'VERDANA';
    Printer.Canvas.Font.Size := 6;
    //Deve-se imprimir etiquetas para cada registro
    DMESTOQUE.TRel.First;
    DMESTOQUE.TRel.RecordCount;
    while not DMESTOQUE.TRel.Eof do
    begin
      NumCop := 0;
      if QTD >= 0 then
        QtdEt := QTD
      else
        QtdEt := DMESTOQUE.TRel.FieldByName('QTD').AsInteger +
          DMESTOQUE.TRel.FieldByName('QTDEEXP').AsInteger;

      //Enquanto a quantidade de Cópias impressas for menor que a Quantidade a ser impressa
      while NumCop < QtdEt do
      begin
        if numcol = 1 then
        begin
          Coluna := 0;
        end;
        if NumCol = 2 then
        begin
          Coluna := 280;
        end;
        if NumCol = 3 then
        begin
          Coluna := 560;
        end;

        Printer.Canvas.Font.Size := 8;
        //Verifica se deve Imprimir preço
        if DMMACS.TLoja.FieldByName('IEPRECO').AsString = '1' then
        begin
          if DMESTOQUE.TRel.FieldByName('PRECO').AsString <> '' then
            Printer.Canvas.TextOut(Coluna + 5, 10, 'R$ ' + FormatFloat('0.00',
              DMESTOQUE.TRel.FieldByName('PRECO').Value))
          else
            Printer.Canvas.TextOut(Coluna + 5, 10, 'R$ 0,00');
        end;
        Printer.Canvas.Font.Size := 6;
        //IMPRIME CTRL INTERNO
        Printer.Canvas.TextOut(Coluna + 5, 120,
          DMESTOQUE.TRel.FieldByName('CONTRINT').AsString);
        //Verifica se deve Imprimir descricao
        if DMMACS.TLoja.FieldByName('IEDESC').AsString = '1' then
          Printer.Canvas.TextOut(Coluna + 5, 140,
            DMESTOQUE.TRel.FieldByName('DESCR').AsString);

        CodBarraImp := '';
        //Verifica se deve Imprimir em código de barras o Cód de barras ou o Codigo do fabricante
        if CODBAR = 0 then
        begin
          //usara campo código de barras
          if Length(Trim(DMESTOQUE.TRel.FieldByName('CODBARRA').AsString)) = 13
            then
          begin //imprimir codigo de barra
            CodBarraImp := DMESTOQUE.TRel.FieldByName('CODBARRA').AsString;
          end
          else
          begin //codigo do fab
            CodBarraImp := DMESTOQUE.TRel.FieldByName('CODBARRA').AsString;
          end
        end
        else
        begin
          //usará campo código do fabricante
          CodBarraImp := DMESTOQUE.TRel.FieldByName('CODFAB').AsString;
        end;
        Printer.Canvas.TextOut(Coluna + 15, 90, CodBarraImp);
        if Length(TRIM(CodBarraImp)) = 13 then
        begin //IMPRIME EM FORMATO EAN 13
          CodBarraImp := Copy(CodBarraImp, 0, 12);
          FMenu.PrnEan13.Codigo := CODBARRAIMP;
          FMenu.PrnEan13.CorBarra := clBlack;
          FMenu.PrnEan13.CorEspaco := clWhite;
          FMenu.PrnEan13.Largura := 2;
          FMenu.PrnEan13.Comprimento := 6;
          FMenu.PrnEan13.LinhaPrinter := 40;
          FMenu.PrnEan13.ColunaPrinter := Coluna + 5;
          FMenu.PrnEan13.Execute;
        end;
        if Length(TRIM(CodBarraImp)) = 8 then
        begin //IMPRIME EM FORMATO EAN 8
          CodBarraImp := Copy(CodBarraImp, 0, 7);
          FMenu.PrnEan8.Codigo := CODBARRAIMP;
          FMenu.PrnEan8.CorBarra := clBlack;
          FMenu.PrnEan8.CorEspaco := clWhite;
          FMenu.PrnEan8.Largura := 1;
          FMenu.PrnEan8.Comprimento := 2;
          FMenu.PrnEan8.LinhaPrinter := 40;
          FMenu.PrnEan8.ColunaPrinter := COLUNA + 5;
          FMenu.PrnEan8.Execute;
        end;
        //atualiza o nº de cópias impressas
        NumCop := NumCop + 1;
        ContEt := ContEt + 1;
        if NumCol = 3 then
        begin
          NumCol := 0;
          if QtdEt > ContEt then
            Printer.NewPage;
        end;
        NumCol := NumCol + 1;
      end;
      //PULA PARA O PRÓXIMO REGISTRO
      DMESTOQUE.TRel.Next;
    end;
    Printer.enddoc;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.', '', 1,
      1, false, 'i');
  end;
end;

//Procedure utilizada para imprimir etiquetas de produtos no formato personalizado em banco
//Levando em consideração que a tabela utilizada é: DMESTOQUE.TREL sendo necessário os seguintes campos renomeados
//CODFAB - Código Fabricante;  MARCA - marca do subproduto; DESCR - Descrição do Similar; PRECO - Preço a ser impresso; CODCOMPOSTO - Código Composto do produto; CODBARRA - Este valor será transformado em código de barras ( todos os valores pode m ser substituidos por outros porém estes campos devem existir
//QTD - Qunatidade lançada e o mesmo Nº de etiquetas a ser impressa
//O valor Passado a procedure EAN13:   iNDICA SE O CÓDIGO DE BARRAS DA TABELA E TIPO EAN13 OU NÃO
procedure PrnEtiqZ2C(EAN13: Boolean; CODBAR: INTEGER; QTD: Integer);
var
  QtdEt, NumCop, ContEt: Integer;
  Tamanho, LimImp: Integer;
  NumCol, Coluna, EntrCol: Integer;
  CodBarraImp: string;
begin
  //seta quantidade de colunas e linhas para impressão no papel e impressora corrente
  Tamanho := Printer.Canvas.TextWidth('A');
  NumCol := 1;
  LimImp := 0;
  ContEt := 0;
  try
    Printer.BeginDoc;
    //Printer.canvas.pen.width:=5;
    Printer.Canvas.Font.name := 'VERDANA';
    Printer.Canvas.Font.Size := 6;
    //Deve-se imprimir etiquetas para cada registro
    DMESTOQUE.TRel.First;
    DMESTOQUE.TRel.RecordCount;
    while not DMESTOQUE.TRel.Eof do
    begin
      NumCop := 0;
      if QTD >= 0 then
        QtdEt := QTD
      else
        QtdEt := DMESTOQUE.TRel.FieldByName('QTD').AsInteger +
          DMESTOQUE.TRel.FieldByName('QTDEEXP').AsInteger;

      //Enquanto a quantidade de Cópias impressas for menor que a Quantidade a ser impressa
      while NumCop < QtdEt do
      begin
        if numcol = 1 then
        begin
          Coluna := 3;
        end;
        if NumCol = 2 then
        begin
          Coluna := 435;
        end;
        Printer.Canvas.Font.Size := 8;
        //Verifica se deve Imprimir preço
        if DMMACS.TLoja.FieldByName('IEPRECO').AsString = '1' then
        begin
          if DMESTOQUE.TRel.FieldByName('PRECO').AsString <> '' then
            Printer.Canvas.TextOut(Coluna + 5, 10, 'R$ ' + FormatFloat('0.00',
              DMESTOQUE.TRel.FieldByName('PRECO').Value))
          else
            Printer.Canvas.TextOut(Coluna + 5, 10, 'R$ 0,00');
        end;
        if DMMacs.Tloja.FieldByName('IEPRECOPRAZO').AsInteger = 1 then
        begin
          if DMESTOQUE.TRel.FieldByName('PRECOPRAZO').AsString <> '' then
            Printer.Canvas.TextOut(Coluna + 200, 10, 'R$ ' + FormatFloat('0.00',
              DMESTOQUE.TRel.FieldByName('PRECOPRAZO').Value))
          else
            Printer.Canvas.TextOut(Coluna + 200, 10, 'R$ 0,00');
        end;
        Printer.Canvas.Font.Size := 6;
        //IMPRIME CTRL INTERNO
        Printer.Canvas.TextOut(Coluna, 120,
          DMESTOQUE.TRel.FieldByName('CONTRINT').AsString);
        //Verifica se deve Imprimir descricao
        if DMMACS.TLoja.FieldByName('IEDESC').AsString = '1' then
          Printer.Canvas.TextOut(Coluna + 5, 140,
            Copy(DMESTOQUE.TRel.FieldByName('DESCR').AsString, 1, 35));

        CodBarraImp := '';
        //Verifica se deve Imprimir em código de barras o Cód de barras ou o Codigo do fabricante
        if CODBAR = 0 then
        begin
          //usara campo código de barras
          if Length(Trim(DMESTOQUE.TRel.FieldByName('CODBARRA').AsString)) = 13
            then
          begin //imprimir codigo de barra
            CodBarraImp := DMESTOQUE.TRel.FieldByName('CODBARRA').AsString;
          end
          else
          begin //codigo do fab
            CodBarraImp := DMESTOQUE.TRel.FieldByName('CODBARRA').AsString;
          end
        end
        else
        begin
          //usará campo código do fabricante
          CodBarraImp := DMESTOQUE.TRel.FieldByName('CODFAB').AsString;
        end;
        Printer.Canvas.TextOut(Coluna + 100, 120, CodBarraImp);
        if Length(TRIM(CodBarraImp)) = 13 then
        begin
          CodBarraImp := Copy(CodBarraImp, 0, 12);
          FMenu.PrnEan13.Codigo := CodBarraImp;
          FMenu.PrnEan13.Tipo := cdEAN13;
          FMenu.PrnEan13.CorBarra := clBlack;
          FMenu.PrnEan13.CorEspaco := clWhite;
          FMenu.PrnEan13.Largura := 3;
          FMenu.PrnEan13.Comprimento := 10;
          FMenu.PrnEan13.LinhaPrinter := 40;
          FMenu.PrnEan13.ColunaPrinter := Coluna + 5;
          FMenu.PrnEan13.Execute;
        end;
        if Length(TRIM(CodBarraImp)) = 8 then
        begin //IMPRIME EM FORMATO EAN 8
          CodBarraImp := Copy(CodBarraImp, 0, 7);
          FMenu.PrnEan8.Codigo := CODBARRAIMP;
          FMenu.PrnEan8.CorBarra := clBlack;
          FMenu.PrnEan8.CorEspaco := clWhite;
          FMenu.PrnEan8.Largura := 3;
          FMenu.PrnEan8.Comprimento := 8;
          FMenu.PrnEan8.LinhaPrinter := 40;
          FMenu.PrnEan8.ColunaPrinter := COLUNA + 5;
          FMenu.PrnEan8.Execute;
        end;
        //atualiza o nº de cópias impressas
        NumCop := NumCop + 1;
        ContEt := ContEt + 1;
        if NumCol = 2 then
        begin
          NumCol := 0;
          if QtdEt > ContEt then
            Printer.NewPage;
        end;
        NumCol := NumCol + 1;
      end;
      //PULA PARA O PRÓXIMO REGISTRO
      DMESTOQUE.TRel.Next;
    end;
    Printer.enddoc;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.', '', 1,
      1, false, 'i');
  end;
end;

//ARGOX OS - 214 PLUS 1 ETIQUETA TIPO JOIAS
//Procedure utilizada para imprimir etiquetas de produtos no formato personalizado em banco
//Levando em consideração que a tabela utilizada é: DMESTOQUE.TREL sendo necessário os seguintes campos renomeados
//CODFAB - Código Fabricante;  MARCA - marca do subproduto; DESCR - Descrição do Similar; PRECO - Preço a ser impresso; CODCOMPOSTO - Código Composto do produto; CODBARRA - Este valor será transformado em código de barras ( todos os valores pode m ser substituidos por outros porém estes campos devem existir
//QTD - Qunatidade lançada e o mesmo Nº de etiquetas a ser impressa
//O valor Passado a procedure EAN13:   iNDICA SE O CÓDIGO DE BARRAS DA TABELA E TIPO EAN13 OU NÃO
procedure PrnEtiqA1C(EAN13: Boolean; CODBAR: INTEGER; QTD: Integer);
var
  QtdEt, NumCop, ContEt: Integer;
  Tamanho, LimImp, I: Integer;
  CodBarraImp: string;
begin
  //seta quantidade de colunas e linhas para impressão no papel e impressora corrente
  LimImp := 0;
  ContEt := 0;
  try
    SetarImpressora; //força valores de impresao
    Printer.PageHeight;
    Printer.PageWidth;
    //inicia impressão
    Printer.BeginDoc;
    Tamanho := Printer.Canvas.TextWidth('A');
    //Deve-se imprimir etiquetas para cada registro
    DMESTOQUE.TRel.First;
    DMESTOQUE.TRel.RecordCount;
    while not DMESTOQUE.TRel.Eof do
    begin
      NumCop := 0;
      if QTD >= 0 then
        QtdEt := QTD
      else
        QtdEt := DMESTOQUE.TRel.FieldByName('QTD').AsInteger +
          DMESTOQUE.TRel.FieldByName('QTDEEXP').AsInteger;

      //Enquanto a quantidade de Cópias impressas for menor que a Quantidade a ser impressa
      while NumCop < QtdEt do
      begin
        //Printer.canvas.pen.width:=5;
        Printer.Canvas.Font.name := 'VERDANA';
        Printer.Canvas.Font.Size := 8;
        //melhor coluna é 10
        Printer.Canvas.TextOut(1, 2,
          Copy(DMESTOQUE.TRel.FieldByName('DESCR').AsString, 0, 16));
          //Descrição do item
        if Trim(DMESTOQUE.TRel.FieldByName('COR').AsString) = '' then
          Printer.Canvas.TextOut(1, 52, 'R$ ' + FormatFloat('0.00',
            DMESTOQUE.TRel.FieldByName('PRECOPRAZO').AsCurrency)) //Valor a Prazo
        else
          Printer.Canvas.TextOut(1, 52, 'RX ' +
            Copy(DMESTOQUE.TRel.FieldByName('COR').AsString, 0, 16)); //rx
        Printer.Canvas.TextOut(1, 135,
          Copy(DMESTOQUE.TRel.FieldByName('ESPECIFICACAO').AsString, 0, 16));
          //Especificação
        Printer.Canvas.TextOut(1, 180, 'REF.:' +
          Copy(DMESTOQUE.TRel.FieldByName('contrint').AsString, 0, 12));
          //controle interno

        NumCop := NumCop + 1;
        ContEt := ContEt + 1;
        Printer.NewPage;
      end;
      //PULA PARA O PRÓXIMO REGISTRO
      DMESTOQUE.TRel.Next;
    end;
    //Printer.EndDoc;
    Sleep(500);
    Printer.Abort;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.', '', 1,
      1, false, 'i');
  end;
end;

// seleciona configuração da pagina pra cheque
function ConfigPag_Cheque: boolean;
begin
  XTAMFONTE := DMMACS.TItensCheque.FieldByName('TAMANHO_FONTE').AsInteger;
  XINTERVLIN := DMMACS.TConfigCheque.FieldByName('ENT_LINHA').AsInteger;
  XLINHAINI := DMMACS.TConfigCheque.FieldByName('LINHA_INI').AsInteger;
  XLARGPAG := DMMACS.TConfigCheque.FieldByName('LARGPAG').AsInteger;
  XALTPAG := DMMACS.TConfigCheque.FieldByName('ALTPAG').AsInteger;
  XQTDETQPAG := DMMACS.TConfigCheque.FieldByName('qtdchequepag').AsInteger;

  if (InttoStr(XTAMFONTE) = '') or (InttoStr(XINTERVLIN) = '') or
    (InttoStr(XLINHAINI) = '') or (InttoStr(XLARGPAG) = '') or (InttoStr(XALTPAG) =
    '') then
  begin
    Mensagem('   A T E N Ç Ã O   ',
      'As configurações de páginas não estão atualizadas. Verifique:' + #13 +
      '* Tamanho da fonte;' + #13 + '* Entre linhas;' + #13 + '* Linha inicial' +
      #13 + '* Largura ou altura da página;', '', 1, 1, false, 'E');
    Result := false;
    Exit;
  end
  else
    Result := true;
end;

// preenche com X o restante da linha q eh informado o valor por extenso
function Preenche_Linha(num_caracter: integer): string;
begin
  while (num_caracter < 75) do
  begin
    Result := Result + 'Xx';
    num_caracter := num_caracter + 2;
  end;
  Result := Result;
end;

// seleciona configurações do cheque
function Config_Cheque: boolean;
begin
  DMMACS.TConfigCheque.Close;
  DMMACS.TConfigCheque.SQL.Clear;
  DMMACS.TConfigCheque.SQL.Add('select * from configcheque');
  DMMACS.TConfigCheque.SQL.Add('where configcheque.cod_configcheque = :codigo ');
  DMMACS.TConfigCheque.ParamByName('codigo').AsString :=
    DMMACS.TLoja.FieldByName('cod_configcheque').AsString;
  DMMACS.TConfigCheque.Open;
  Result := true;
end;

// retorna a descrição do mes conforme o numero
function Retorna_Mes(Num_Mes: integer): string;
begin
  case Num_Mes of
    01: Result := 'Janeiro';
    02: Result := 'Fevereiro';
    03: Result := 'Março';
    04: Result := 'Abril';
    05: Result := 'Maio';
    06: Result := 'Junho';
    07: Result := 'Julho';
    08: Result := 'Agosto';
    09: Result := 'Setembro';
    10: Result := 'Outubro';
    11: Result := 'Novembro';
    12: Result := 'Dezembro';
  end;
end;

// converte para maiusculo a primeira letra de cada palavra
function ConverteMaiuscula(Texto: string): string;
var
  contador: integer;
  Linha: string;
begin
  Result := '';
  Texto := Trim(Texto);
  repeat
    Contador := Pos(' ', Texto);
    if (Contador <= 0) then
      Contador := Length(Texto) + 1;
    Linha := UpperCase(Copy(Texto, 1, Contador - 1));
    if (Length(Linha) <= 2) or (Linha = 'DAS') or (Linha = 'DOS') then
    begin
      Result := Result + Copy(Texto, 1, Contador - 1)
    end
    else
    begin
      Result := Result + UpperCase(Texto[1]) + Lowercase(Copy(Texto, 2, Contador
        - 2));
    end;
    Delete(Texto, 1, Contador);
    if (Texto <> '') then
    begin
      Result := Result + ' ';
    end;

  until (Texto = '');
end;

// seleciona os itens de configuração do cheque
function ItensConfig_Cheque: string;
begin
  DMBANCO.TAlx.Close;
  DMBANCO.TAlx.SQL.Clear;
  DMBANCO.TAlx.SQL.Add('select * from ITENSCONFIG_CHEQUE where ITENSCONFIG_CHEQUE.cod_configcheque = :codigo');
  DMBANCO.TAlx.ParamByName('codigo').AsString :=
    DMMACS.TConfigCheque.FieldByName('cod_configcheque').AsString;
  DMBANCO.TAlx.Open;
end;

// filtra tabelas pra selecionar a cidade da loja
function Select_Cidade: string;
begin
  DMMACS.TRel.Close;
  DMMACS.TRel.SQL.Clear;
  DMMACS.TRel.SQL.Add('SELECT loja.cod_empresa, loja.descricao, loja.cod_loja, loja.www_procon, loja.fone_procon, loja.end_procon, empresa.cod_empresa, empresa.cod_cidade, cidade.cod_cidade, cidade.nome AS CIDADE');
  DMMACS.TRel.SQL.Add('from loja');
  DMMACS.TRel.SQL.Add('left join empresa on empresa.cod_empresa = loja.cod_empresa');
  DMMACS.TRel.SQL.Add('left join cidade on cidade.cod_cidade = empresa.cod_cidade');
  DMMACS.TRel.SQL.Add('where loja.cod_loja = ' + FMenu.LCODLOJA.Caption);
  DMMACS.TRel.Open;
end;

// função pra imprimir cheque em ctas_pagar e emitissão de cheque
function Imprimir_Cheque(XContador: integer): boolean;
var
  Linha, Tamanho, LimImp: Integer;
  Coluna: Integer;
  COLIMP: Integer;
  Year, Month, Day: word; // dia, mes e ano do computador
  XVlrCampo: string; // Armazena temporariamente o valor do campo a ser impresso
  num_caracter: integer; //recebe o numero de caracteres do valor por extenso
  X: string;
    // variavel usada para preencher o restante da linha logo apos o valor por extenso
  num_cheque: integer;
  XLinha: integer;
begin
  //   Try
  num_cheque := 1;

  // seleciona loja
  FiltraTabela(DMMACS.TLoja, 'loja', 'cod_loja', FMenu.LCODLOJA.Caption, '');

  // seleciona configurações do cheque
  if Config_Cheque = false then
    Exit;

  // seleciona os itens de configuração do cheque
  ItensConfig_Cheque;

  // seleciona configuração da pagina pra cheque
  if ConfigPag_Cheque = false then
    Exit;

  //força valores de impressao
  SetarImpressora;
  Printer.PageHeight;
  Printer.PageWidth;

  if (GetWindowsVersion = 'Windows XP') or (GetWindowsVersion = 'Windows 2000')
    or (GetWindowsVersion = 'Windows NT') then
  begin
    SetPrinterPage_Xp(DMPAPER_USER, XLARGPAG, XALTPAG)
  end
  else
  begin
    SetPrinterPage_9x(XLARGPAG, XALTPAG);
  end;
  Tamanho := Printer.Canvas.TextWidth('A');
  Coluna := 1;
  Linha := XLINHAINI;
  LimImp := 0;
  {   Except
        Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!'+#13+'Verifique se a impressora esta ligada e devidamente configurada.'+#13+'Se o problema continuar reinicie o computador e a impressora.', '' , 1, 1, false, 'i');
        Exit;
     End;
     Try}
  Printer.BeginDoc;
  Printer.canvas.pen.width := 5;

  // seleciona os itens de configuração do cheque
  ItensConfig_Cheque;

  // filtra tabelas e seleciona a cidade da loja
  Select_Cidade;

  // move para o primeiro registro
  DMESTOQUE.TRel.First;
  // num_cheque eh um contador - XQTDETQPAG eh o numero de cheques a ser impresso
  while num_cheque <= XContador do
  begin

    //controla avanço de nova página
    if num_cheque > 3 then
    begin
      Coluna := 1;
      Linha := XLINHAINI;
      Printer.NewPage;
      { o maximo de cheques por folha eh 3. Se o numero atual de impressão for maior que 3, o XQTDETQPAG recebe a diferença do numero total menos 3 e o num_cheque(que eh o contador) volta a ser 1}
      XContador := XContador - 3;
      num_cheque := 1;
    end;
    if num_cheque > 1 then
    begin
      Linha := Linha + XINTERVLIN;
      LimImp := LimImp + 1;
    end;

    // todos os itens de impressão tem seus valores repassados para DLL
    if not DMBANCO.TAlx.IsEmpty then
    begin
      DMBANCO.TAlx.First;
      while not DMBANCO.TAlx.Eof do
      begin
        // retorna dia, mes e ano p as seguintes variaveis
        DecodeDate(Date(), Year, Month, Day);

        Printer.Canvas.Font.Name :=
          DMMACS.TItensCheque.FieldByName('NOME_FONTE').AsString;
        Printer.Canvas.Font.Size :=
          DMMACS.TItensCheque.FieldByName('TAMANHO_FONTE').AsInteger;

        //BUSCA VALOR A SER IMPRESSO
        if DMBANCO.TAlx.FieldByName('CAMPO').AsString = 'Valor extenso' then
        begin
          // Formata valor extenso
          FMenu.Extenso.Numero := FormatFloat('0.00',
            StrToFloat(DMESTOQUE.TRel.FieldByName('VALOR').AsString));
          // função para converter a primeira letra de cada palavra para maiusculo
          XVlrCampo := ConverteMaiuscula(FMenu.Extenso.Extenso);
          // recebe o numero de caracteres do valor por extenso
          num_caracter := Length(XVlrCampo);
          // se for menor que 75 caracteres eh escrito somente na primeira linha e preenchido com X se for necessario
          if (75 - num_caracter) < 75 then
          begin
            // valor por extenso com X nas demais casas - A função Preenche_Linha retorna os X's
            XVlrCampo := XVlrCampo + ' ' + Preenche_Linha(num_caracter);
          end;
        end;
        if DMBANCO.TAlx.FieldByName('CAMPO').AsString = 'Valor' then
          XVlrCampo := 'R$ ' + FormatFloat('0.00',
            StrToFloat(DMESTOQUE.TRel.FieldByName('VALOR').AsString));
        if DMBANCO.TAlx.FieldByName('CAMPO').AsString = 'Cidade' then
          XVlrCampo := DMMACS.TRel.FieldByName('CIDADE').AsString;
        if DMBANCO.TAlx.FieldByName('CAMPO').AsString = 'Destinatário' then
          XVlrCampo := DMESTOQUE.TRel.FieldByname('DESTINATARIO').AsString;
        if DMBANCO.TAlx.FieldByName('CAMPO').AsString = 'Dia' then
        begin
          if Length(IntToStr(Day)) = 1 then
          begin
            XVlrCampo := '0' + IntToStr(Day);
          end
          else
          begin
            XVlrCampo := IntToStr(Day);
          end;
        end;
        if DMBANCO.TAlx.FieldByName('CAMPO').AsString = 'Mês' then
        begin
          if Length(IntToStr(Month)) = 1 then
          begin
            XVlrCampo := '0' + IntToStr(Month);
          end
          else
          begin
            XVlrCampo := IntToStr(Month);
          end;
          // função para retornar o nome do mes
          XVlrCampo := Retorna_Mes(StrToInt(XVlrCampo));
        end;
        if DMBANCO.TAlx.FieldByName('CAMPO').AsString = 'Ano' then
          XVlrCampo := IntToStr(Year);
        Printer.Canvas.TextOut(COLIMP +
          DMBANCO.TAlx.FieldByName('COLUNA').AsInteger, Linha +
          DMBANCO.TAlx.FieldByName('LINHA').AsInteger, COPY(XVlrCampo, 1,
          DMBANCO.TAlx.FieldByName('TAMANHO_CAMPO').AsInteger));
        DMBANCO.TAlx.Next;
      end;
    end
    else
    begin
      Mensagem('   A T E N Ç Ã O   ',
        'Os itens não estão configurados para impressão de cheque.', '', 1, 1,
        false, 'E');
      Exit;
    end;
    num_cheque := num_cheque + 1;
    DMESTOQUE.TRel.Next;
  end;
  Printer.enddoc;
  Mensagem('   A T E N Ç Ã O   ', 'cheque(s) enviados para impressora.', '', 1,
    1, false, 'a');
  {   Except
         Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!'+#13+'Verifique se a impressora esta ligada e devidamente configurada.'+#13+'Se o problema continuar reinicie o computador e a impressora.', '' , 1, 1, false, 'i');
     End;}
end;

//Procedure utilizada para imprimir etiquetas de produtos no formato pre definido para as impressoras termicas metrologic com bubina de 3 colunas
//Levando em consideração que a tabela utilizada é: DMESTOQUE.TREL sendo necessário os seguintes campos renomeados
//CODFAB - Código Fabricante;  MARCA - marca do subproduto; DESCR - Descrição do Similar; PRECO - Preço a ser impresso; CODCOMPOSTO - Código Composto do produto; CODBARRA - Este valor será transformado em código de barras ( todos os valores pode m ser substituidos por outros porém estes campos devem existir
//QTD - Qunatidade lançada e o mesmo Nº de etiquetas a ser impressa
//O valor Passado a procedure EAN13:   iNDICA SE O CÓDIGO DE BARRAS DA TABELA E TIPO EAN13 OU NÃO
procedure PrnEtiqPerson02(EAN13: Boolean; CODBAR: INTEGER; XQTD: Integer);
var
  xNomeImpressoraPadrao, xNomeImpressoraEtiqueta: string;
    //recebe nome da impressora padrão
  QtdEt, NumCop, ContEt: Integer;
  Linha, Tamanho, LimImp: Integer;
  Coluna: Integer;
  CodBarraImp: string;
    // O código a ser impresso em formato barra (Cód. barra ou Fabricante)
  COLIMP: Integer;
  XVlrCampo: string; // Armazena temporariamente o valor do campo a ser impresso
begin
  //RECEBE VALORES CONFIGURADOS EM BANCO
  try

    xNomeImpressoraPadrao := GetDefaultPrinterName;
      //capturamos o nome da impressora padro atual para retornar ap/s operaço
    //Seleciona configurações de etiquetas para recuperar o nome da etiqueta configurada
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' select * from etqprod where etqprod.cod_etqprod = :codigo ');
    DMMACS.TALX.ParamByName('codigo').AsString :=
      DMMACS.TLoja.FieldByName('COD_ETQPROD').AsString;
    DMMACS.TALX.Open;
    if not DMMACS.TALX.IsEmpty then
    begin
      if DMMACS.TALX.FieldByName('NOMEIMPRESSORA').AsString <> '' then
      begin
        xNomeImpressoraEtiqueta :=
          DMMACS.TALX.FieldByName('NOMEIMPRESSORA').AsString;
        mudaimpressoraPadrao(xNomeImpressoraEtiqueta);
          //se temos uma impressora configurada para etiquetas, setamos ela como padro
      end
      else
      begin
        FMenu.PrintDialog1.Execute;
        //MessageDlg('Nenhum nome para a impressora de etiqueta foi definido, o sistema usará a impressora padrão.', mtWarning, [mbOK], 0);
      end;
    end
    else
    begin
      MessageDlg('Nenhuma configuração de etiqueta foi encontrada', mtWarning,
        [mbOK], 0);
    end;

    SetarImpressora; //força valores de impresao
    GetValEtqProdPerson;
    Printer.PageHeight;
    Printer.PageWidth;
    //seta quantidade de colunas e linhas para impressão no papel e impressora corrente
    //If (GetWindowsVersion='Windows XP') Or  (GetWindowsVersion='Windows 2000') Or  (GetWindowsVersion='Windows NT') Then
    //SetPrinterPage_Xp(DMPAPER_USER, XLARGPAG, XALTPAG)
    //Else
    //SetPrinterPage_9x(XLARGPAG, XALTPAG);

    Tamanho := Printer.Canvas.TextWidth('A');
    Coluna := 1;
    Linha := XLINHAINI;
    LimImp := 0;
    ContEt := 0;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao coletar dados da impressora!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.' + #13 +
      'Se o problema continuar reinicie o computador e a impressora.', '', 1, 1,
      false, 'i');
  end;
  try
    Printer.BeginDoc;
    Printer.canvas.pen.width := 5;
    //Deve-se imprimir etiquetas para cada registro
    DMESTOQUE.TRel.Last;
    DMESTOQUE.TRel.RecordCount;
    DMESTOQUE.TRel.First;
    while not DMESTOQUE.TRel.Eof do
    begin
      NumCop := 0;
      if XQTD >= 0 then
        QtdEt := XQTD
      else
        QtdEt := DMESTOQUE.TRel.FieldByName('QTD').AsInteger;
          //+DMESTOQUE.TRel.FieldByName('QTDEEXP').AsInteger;
      //Enquanto a quantidade de Cópias impressas for menor que a Quantidade a ser impressa
      while NumCop <= QtdEt do
      begin
        //controla avanço de nova página se já estiver ultrapassado o numero de etiquetas por página
        if ContEt >= XQTDETQPAG then
        begin
          ContEt := 0;
          Coluna := 1;
          Linha := XLINHAINI;

          MessageDlg('Nova Pagina'+#13+#10+
                       'Linha setada = ' + IntToStr(Linha) +#13+#10+
                       'Linha Configurada etqprod.Linha = ' + DMMACS.TALX.FieldByName('LINHA').AsString +#13+#10+
                       'Cont. Etiquetas = ' + IntToStr(ContEt) + #13+#10+
                       'Cont. Etiquetas Pag. = ' +  IntToStr(XQTDETQPAG)
                       , mtWarning, [mbOK], 0);
          Printer.NewPage;
        end;
        if Coluna > XQTDCOLPAG then
        begin
          Linha := Linha + XINTERVLIN;
          LimImp := LimImp + 1;
          Coluna := 1;
          MessageDlg('Coluna > xQtdCoPag'+#13+#10+
                       'Linha = ' + IntToStr(Linha)+#13+#10+
                       'Intervalo Linha = ' + IntToStr(XINTERVLIN)+#13+#10+
                       'LimImp = ' + IntToStr(LimImp) +#13+#10+
                       'Coluna = ' + IntToStr(Coluna), mtWarning, [mbOK], 0);
        end;
        if Coluna = 1 then
        begin
          COLIMP := XCOLUNAINI;
        end
        else
        begin
          COLIMP := ((Coluna - 1) * XINTERVCOL) + XCOLUNAINI;
          MessageDlg('COLIMP := ((Coluna - 1) * XINTERVCOL) + XCOLUNAINI'+#13+#10+
                       'Coluna de Impressão <> 1'+#13+#10+
                       'Coluna = ' + IntToStr(COLIMP), mtWarning, [mbOK], 0);
        end;
        //VERIFIK TODOS OS CAMPOS NECESSARIOS A IMPRIMIR
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add('select * from itensetqprod where itensetqprod.cod_etqprod=:CODETQ');
        DMMACS.TALX.ParamByName('CODETQ').AsString :=
          DMMACS.TLoja.FieldByName('COD_ETQPROD').AsString;
        DMMACS.TALX.Open;
        if not DMMACS.TALX.IsEmpty then
        begin
          DMMACS.TALX.First;
          while not DMMACS.TALX.Eof do
          begin
            Printer.Canvas.Font.Name :=
              DMMACS.TALX.FieldByName('NOMEFONTE').AsString;
            Printer.Canvas.Font.Size :=
              DMMACS.TALX.FieldByName('FONTE').AsInteger;
            //BUSCA VALOR A SER IMPRESSO
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Cód. Fabricante'
              then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('CODFAB').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Data' then
            begin
              // subbstitui o caracter '/' (barra) por espaço e copia somente o mes e ano
              XVlrCampo :=
                Copy(SubstituiCaracter(DMESTOQUE.TRel.FieldByName('DTCAD').AsString, '/', ''), 3, Length(DMESTOQUE.TRel.FieldByName('DTCAD').AsString));
            end;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Cód. Composto' then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('CODCOMPOSTO').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Ctrl. Interno' then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('contrint').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Cód. Barras' then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('CODBARRA').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Marca' then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('MARCA').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Desc. Produtos' then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('DESCR').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Preço Vista' then
            begin
              if DMMACS.TLoja.FieldByName('DESCETIQUETA').AsInteger = 1 then
                XVlrCampo := 'À VISTA: R$ ' + FormatFloat('0.00',
                  DMESTOQUE.TRel.FieldByName('PRECO').AsCurrency)
              else
                XVlrCampo := 'R$ ' + FormatFloat('0.00',
                  DMESTOQUE.TRel.FieldByName('PRECO').AsCurrency);
            end;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Preço Prazo' then
            begin
              if DMMACS.TLoja.FieldByName('DESCETIQUETA').AsInteger = 1 then
                XVlrCampo := 'À PRAZO: R$ ' + FormatFloat('0.00',
                  DMESTOQUE.TRel.FieldByName('PRECOPRAZO').AsCurrency)
              else
                XVlrCampo := 'R$ ' + FormatFloat('0.00',
                  DMESTOQUE.TRel.FieldByName('PRECOPRAZO').AsCurrency);
            end;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Composição' then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('COMPOSICAO').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Altura x Largura'
              then
            begin
              XVlrCampo := DMESTOQUE.TRel.FieldByName('LARGURA').AsString + ' x '
                + DMESTOQUE.TRel.FieldByName('ALTURA').AsString;
            end;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Classificação' then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('CLASSIFICACAO').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Fabricante' then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('FABRICANTE').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Texto personalizado'
              then
              XVlrCampo := XTXTPERSONALIZADO;

            //Verifica c campo comum ou tipo barra
            if DMMACS.TALX.FieldByName('CAMPO').AsString <> 'Barras' then
            begin
              Printer.Canvas.TextOut(COLIMP +
                DMMACS.TALX.FieldByName('COLUNA').AsInteger, Linha +
                DMMACS.TALX.FieldByName('LINHA').AsInteger, COPY(XVlrCampo, 1,
                DMMACS.TALX.FieldByName('TAMANHO').AsInteger));
            end
            else
            begin
              CodBarraImp := DMESTOQUE.TRel.FieldByName('CODBARRA').AsString;
              if (Length(TRIM(CodBarraImp)) = 13) then
              begin //IMPRIME EM FORMATO EAN 13
                CodBarraImp := Copy(CodBarraImp, 0, 12);
                FMenu.PrnEan13.Codigo := CODBARRAIMP;
                FMenu.PrnEan13.CorBarra := clBlack;
                FMenu.PrnEan13.CorEspaco := clWhite;
                FMenu.PrnEan13.Largura := XLARGCODBARRA;
                FMenu.PrnEan13.Comprimento := XCOMPCODBARRA;
                FMenu.PrnEan13.LinhaPrinter := Linha +
                  DMMACS.TALX.FieldByName('LINHA').AsInteger;
                FMenu.PrnEan13.ColunaPrinter := COLIMP +
                  DMMACS.TALX.FieldByName('COLUNA').AsInteger;
                FMenu.PrnEan13.Execute;
              end;
              if Length(TRIM(CodBarraImp)) = 8 then
              begin //IMPRIME EM FORMATO EAN 8
                CodBarraImp := Copy(CodBarraImp, 0, 7);
                FMenu.PrnEan8.Codigo := CODBARRAIMP;
                FMenu.PrnEan8.CorBarra := clBlack;
                FMenu.PrnEan8.CorEspaco := clWhite;
                FMenu.PrnEan8.Largura := XLARGCODBARRA;
                FMenu.PrnEan8.Comprimento := XCOMPCODBARRA;
                FMenu.PrnEan8.LinhaPrinter := Linha +
                  DMMACS.TALX.FieldByName('LINHA').AsInteger;
                FMenu.PrnEan8.ColunaPrinter := COLIMP +
                  DMMACS.TALX.FieldByName('COLUNA').AsInteger;
                FMenu.PrnEan8.Execute;
              end;
              if (Length(TRIM(CodBarraImp)) <> 8) and (Length(TRIM(CodBarraImp))
                <> 12) then
              begin
                FMenu.PrnCodBarra.Codigo := CODBARRAIMP;
                FMenu.PrnCodBarra.CorBarra := clBlack;
                FMenu.PrnCodBarra.CorEspaco := clWhite;
                FMenu.PrnCodBarra.Largura := XLARGCODBARRA;
                FMenu.PrnCodBarra.Comprimento := XCOMPCODBARRA;
                FMenu.PrnCodBarra.LinhaPrinter := Linha +
                  DMMACS.TALX.FieldByName('LINHA').AsInteger;
                FMenu.PrnCodBarra.ColunaPrinter := COLIMP +
                  DMMACS.TALX.FieldByName('COLUNA').AsInteger;
                FMenu.PrnCodBarra.Execute;
              end;
            end;
            DMMACS.TALX.Next;
          end;
        end
        else
        begin
          Mensagem('A T E N Ç Ã O!', 'Verifique as configurações de etiqueta!',
            '', 1, 1, false, 'i');
          Exit;
        end;
        //atualiza o nº de cópias impressas
        NumCop := NumCop + 1;
        Coluna := Coluna + 1;
        ContEt := ContEt + 1;
        if NumCop = QtdEt then
          NumCop := NumCop + 1;
      end;
      //PULA PARA O PRÓXIMO REGISTRO
      DMESTOQUE.TRel.Next;
    end;
    Printer.EndDoc;
    //Retorna impressora padrão original
    if xNomeImpressoraPadrao <> 'null' then
      mudaimpressoraPadrao(xNomeImpressoraPadrao);
  except
    //Retorna impressora padrão original
    if xNomeImpressoraPadrao <> 'null' then
      mudaimpressoraPadrao(xNomeImpressoraPadrao);

    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.' + #13 +
      'Se o problema continuar reinicie o computador e a impressora.', '', 1, 1,
      false, 'i');
  end;
end;

//Procedure utilizada para imprimir duplicatas no formato personalizado
procedure PrnDupPerson(XQTD: Integer; XTIPO: Integer; XCODCTA: Integer);
var
  QtdEt, NumCop, ContEt: Integer;
  Linha, Tamanho, LimImp: Integer;
  Coluna: Integer;
  CodBarraImp: string;
    // O código a ser impresso em formato barra (Cód. barra ou Fabricante)
  COLIMP: Integer;
  XVlrCampo: string; // Armazena temporariamente o valor do campo a ser impresso
begin
  //RECEBE VALORES CONFIGURADOS EM BANCO
  try
    SetarImpressora; //força valores de impresao
    GetValEtqDupPerson;
    Printer.PageHeight;
    Printer.PageWidth;
    //seta quantidade de colunas e linhas para impressão no papel e impressora corrente
    if (GetWindowsVersion = 'Windows XP') or (GetWindowsVersion = 'Windows 2000')
      or (GetWindowsVersion = 'Windows NT') then
      SetPrinterPage_Xp(DMPAPER_USER, XLARGPAG, XALTPAG)
    else
      SetPrinterPage_9x(XLARGPAG, XALTPAG);

    Tamanho := Printer.Canvas.TextWidth('A');
    Coluna := 1;
    Linha := XLINHAINI;
    LimImp := 0;
    ContEt := 0;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.' + #13 +
      'Se o problema continuar reinicie o computador e a impressora.', '', 1, 1,
      false, 'i');
  end;
  try
    Printer.BeginDoc;
    Printer.canvas.pen.width := 5;
    //VERIFIK ITENS A SEREM IMPRESSOS
    DMESTOQUE.TRel.Close;
    DMESTOQUE.TRel.SQL.Clear;
    DMESTOQUE.TRel.SQL.Add('SELECT distinct(parcelacr.cod_parcelacr), CLIENTE.COD_INTERNO, parcelacr.dtvenc, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, ');
    DMESTOQUE.TRel.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome, ');
    DMESTOQUE.TRel.SQL.Add('CtaReceber.NumDoc, CtaReceber.DTLanc, cidade.nome, estado.uf_estado ');
    DMESTOQUE.TRel.SQL.Add('FROM parcelacr join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
    DMESTOQUE.TRel.SQL.Add('JOIN cliente on cliente.cod_cliente = ctareceber.cod_cliente ');
    DMESTOQUE.TRel.SQL.Add('join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
    DMESTOQUE.TRel.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
    DMESTOQUE.TRel.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');

    if XTIPO = 1 then
    begin //neste caso deve ser impresso todas as parcelas
      DMESTOQUE.TRel.SQL.Add('Where ctareceber.cod_ctareceber=:CODCTARECEBER ');
      DMESTOQUE.TRel.ParamByName('CODCTARECEBER').AsInteger := XCODCTA;
    end;
    if XTIPO = 0 then
    begin
      //neste caso deve ser impresso apenas a parcela referente selecionada na view
      DMESTOQUE.TRel.SQL.Add('Where parcelacr.COD_PARCELACR=:CODCTARECEBER ');
      DMESTOQUE.TRel.ParamByName('CODCTARECEBER').AsInteger := XCODCTA;
    end;
    if XTIPO = 2 then
    begin //neste caso deve ser impresso as parcelas ateh a dt selencionaa
      DMESTOQUE.TRel.SQL.Add('Where (ctareceber.cod_CLIENTE=:CODCTARECEBER) ');
      DMESTOQUE.TRel.SQL.Add('And (parcelacr.DTVENC<=:DTVENC)  AND ((FECH<>' +
        #39 + 'S' + #39 + ')  OR (FECH IS NULL)) ');
      DMESTOQUE.TRel.ParamByName('CODCTARECEBER').AsInteger := XCODCTA;
      DMESTOQUE.TRel.ParamByName('DTVENC').AsDateTime :=
        DMCONTA.WParR.FieldByName('DTVENC').AsDateTime;
    end;
    if XTIPO = 3 then
    begin //neste caso deve ser impresso as parcelas ateh a parcela selecionada
      DMESTOQUE.TRel.SQL.Add('Where (PARCELACR.MARK=' + #39 + 'I' + #39 + ') ');
    end;
    DMESTOQUE.TRel.SQL.Add(' AND ((FECH<>' + #39 + 'S' + #39 +
      ')  OR (FECH IS NULL)) ');
    DMESTOQUE.TRel.Open;

    //Deve-se imprimir etiquetas para cada registro
    DMESTOQUE.TRel.First;
    DMESTOQUE.TRel.RecordCount;
    while not DMESTOQUE.TRel.Eof do
    begin
      NumCop := 0;
      QtdEt := XQTD;
      //Enquanto a quantidade de Cópias impressas for menor que a Quantidade a ser impressa
      while NumCop <= QtdEt do
      begin
        //controla avanço de nova página se já estiver ultrapassado o numero de etiquetas por página
        if ContEt >= XQTDETQPAG then
        begin
          ContEt := 0;
          Coluna := 1;
          Linha := XLINHAINI;
          Printer.NewPage;
        end;
        if Coluna > XQTDCOLPAG then
        begin
          Linha := Linha + XINTERVLIN;
          LimImp := LimImp + 1;
          Coluna := 1;
        end;
        if Coluna = 1 then
        begin
          COLIMP := XCOLUNAINI;
        end
        else
        begin
          COLIMP := ((Coluna - 1) * XINTERVCOL) + XCOLUNAINI;
        end;
        //VERIFIK TODOS OS CAMPOS NECESSARIOS A IMPRIMIR
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add('select * from itensdupperson where itensdupperson.cod_dupperson=:CODETQ');
        DMMACS.TALX.ParamByName('CODETQ').AsString :=
          DMMACS.TLoja.FieldByName('cod_duppersonal').AsString;
        DMMACS.TALX.Open;
        if not DMMACS.TALX.IsEmpty then
        begin
          DMMACS.TALX.First;
          while not DMMACS.TALX.Eof do
          begin
            Printer.Canvas.Font.Name :=
              DMMACS.TALX.FieldByName('NOMEFONTE').AsString;
            Printer.Canvas.Font.Size :=
              DMMACS.TALX.FieldByName('FONTE').AsInteger;
            //BUSCA VALOR A SER IMPRESSO
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Nome' then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('NOME').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Codigo' then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('COD_INTERNO').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'N. Documento' then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('NumDoc').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Prestacao' then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('numparc').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Juro' then
              XVlrCampo := FormatFloat('0.00',
                DMMACS.TLoja.FieldByName('JUROS').AsCurrency);
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Vencimento' then
              XVlrCampo := DMESTOQUE.TRel.FieldByName('dtvenc').AsString;
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Valor' then
              XVlrCampo := 'R$ ' + FormatFloat('0.00',
                DMESTOQUE.TRel.FieldByName('valor').AsCurrency);
            if DMMACS.TALX.FieldByName('CAMPO').AsString = 'Textos' then
            begin
              XVlrCampo := DMESTOQUE.TRel.FieldByName('valExt').AsString;
            end;

            if DMMACS.TALX.FieldByName('TAMANHO').AsInteger <> 0 then
              Printer.Canvas.TextOut(COLIMP +
                DMMACS.TALX.FieldByName('COLUNA').AsInteger, Linha +
                DMMACS.TALX.FieldByName('LINHA').AsInteger, COPY(XVlrCampo, 1,
                DMMACS.TALX.FieldByName('TAMANHO').AsInteger))
            else
              Printer.Canvas.TextOut(COLIMP +
                DMMACS.TALX.FieldByName('COLUNA').AsInteger, Linha +
                DMMACS.TALX.FieldByName('LINHA').AsInteger, XVlrCampo);
            DMMACS.TALX.next;
          end;
        end
        else
        begin
          Mensagem('A T E N Ç Ã O!', 'Verifique as configurações de etiqueta!',
            '', 1, 1, false, 'i');
          Exit;
        end;
        //atualiza o nº de cópias impressas
        NumCop := NumCop + 1;
        Coluna := Coluna + 1;
        ContEt := ContEt + 1;
        if NumCop = QtdEt then
          NumCop := NumCop + 1;
      end;
      //PULA PARA O PRÓXIMO REGISTRO
      DMESTOQUE.TRel.Next;
    end;
    Printer.enddoc;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.' + #13 +
      'Se o problema continuar reinicie o computador e a impressora.', '', 1, 1,
      false, 'i');
  end;
end;

//Paulo 10/12/2010: PAra impressão de etiquetas para Ótica
procedure PrnEtiqPersonalOtica(EAN13: Boolean; CODBAR: INTEGER; XQTD: Integer);
var
  QtdEt, NumCop, ContEt: Integer;
  Linha, Tamanho, LimImp: Integer;
  Coluna: Integer;
  CodBarraImp: string;
    // O código a ser impresso em formato barra (Cód. barra ou Fabricante)
  COLIMP: Integer;
  IncLine: Integer; //incremento de linha
begin
  //RECEBE VALORES CONFIGURADOS EM BANCO
  try
    SetarImpressora; //força valores de impresao
    Tamanho := Printer.Canvas.TextWidth('A');
    Coluna := 1;
    Linha := 280;
    LimImp := 0;
    ContEt := 0;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.' + #13 +
      'Se o problema continuar reinicie o computador e a impressora.', '', 1, 1,
      false, 'i');
  end;
  try
    Printer.BeginDoc;
    Printer.canvas.pen.width := 5;
    Printer.Canvas.Font.name := 'Arial';
    Printer.Canvas.Font.Size := 8 + XTAMFONTE;
    //Deve-se imprimir etiquetas para cada registro
    DMESTOQUE.TRel.First;
    DMESTOQUE.TRel.RecordCount;
    while not DMESTOQUE.TRel.Eof do
    begin
      IncLine := 0;
      NumCop := 0;
      if XQTD >= 0 then
        QtdEt := XQTD
      else
        QtdEt := DMESTOQUE.TRel.FieldByName('QTD').AsInteger;
          //+DMESTOQUE.TRel.FieldByName('QTDEEXP').AsInteger;

      //Enquanto a quantidade de Cópias impressas for menor que a Quantidade a ser impressa
      while NumCop <= QtdEt do
      begin
        //controla avanço de nova página se já estiver ultrapassado o numero de etiquetas por página
        if ContEt >= 40 then
        begin
          ContEt := 0;
          Coluna := 1;
          Linha := 280;
          Printer.NewPage;
        end;
        if Coluna > 2 then
        begin
          Linha := Linha + 299;
          LimImp := LimImp + 1;
          Coluna := 1;
        end;
        if Coluna = 1 then
        begin
          COLIMP := 1200;
        end
        else
        begin
          COLIMP := COLIMP + 2300;
        end;
        //IMPRIME PRIMEIRA COLUNA
        Printer.Canvas.Font.Size := 8 + XTAMFONTE;

        CodBarraImp := '';
        //Verifica se deve Imprimir em código de barras o Cód de barras ou o Codigo do fabricante
        if CODBAR = 0 then
        begin
          //usara campo código de barras
          if Length(Trim(DMESTOQUE.TRel.FieldByName('CODBARRA').AsString)) = 13
            then
          begin //imprimir codigo de barra
            CodBarraImp := DMESTOQUE.TRel.FieldByName('CODBARRA').AsString;
          end

        end;
        Printer.Canvas.Font.Size := 8 + XTAMFONTE;

        if (Length(TRIM(CodBarraImp)) = 13) then
        begin //IMPRIME EM FORMATO EAN 13
          CodBarraImp := Copy(CodBarraImp, 0, 12);
          FMenu.PrnEan13.Codigo := Copy(CODBARRAIMP, 0, 12);
          FMenu.PrnEan13.CorBarra := clBlack;
          FMenu.PrnEan13.CorEspaco := clWhite;
          FMenu.PrnEan13.Largura := 5;
          FMenu.PrnEan13.Comprimento := 20;
          //IncLine:=IncLine+2;
          //FMenu.PrnEan13.LinhaPrinter	:= IncLine+Linha+(Tamanho*7);
          FMenu.PrnEan13.LinhaPrinter := Linha;
          FMenu.PrnEan13.ColunaPrinter := COLIMP - 80;
          FMenu.PrnEan13.Execute;
        end;

        //Paulo 13/12/2010 - Verifica se imprimi a class 2 ou o preço do produto
        if DMESTOQUE.TRel.FieldByName('COR').AsString <> '' then
        begin
          Printer.Canvas.TextOut(COLIMP + 600, (Linha * 1) + 10, 'RX-' +
            DMESTOQUE.TRel.FieldByName('COR').AsString);
          Printer.Canvas.Font.Size := 6 + XTAMFONTE;
          Printer.Canvas.TextOut(COLIMP + 600, (Linha * 1) + 80,
            Copy(DMESTOQUE.TRel.FieldByName('GRADE').AsString, 1, 13));
          Printer.Canvas.TextOut(COLIMP, IncLine + Linha,
            DMESTOQUE.TRel.FieldByName('CONTRINT').AsString);
            //Paulo 07/01/2011: Esta imprimindo o contrint, caso quiser código de barra é só mudar para a valiavel CodBarraImp
        end
        else
        begin
          Printer.Canvas.TextOut(COLIMP + 600, (Linha * 1) + 10, 'R$ ' +
            FormatFloat('0.00', DMESTOQUE.TRel.FieldByName('PRECOPRAZO').Value));
          Printer.Canvas.Font.Size := 6 + XTAMFONTE;
          Printer.Canvas.TextOut(COLIMP + 600, (Linha * 1) + 80,
            Copy(DMESTOQUE.TRel.FieldByName('GRADE').AsString, 1, 13));
          Printer.Canvas.TextOut(COLIMP, IncLine + Linha,
            DMESTOQUE.TRel.FieldByName('CONTRINT').AsString);
        end;

        Printer.canvas.font.style := [fsbold];

        //atualiza o nº de cópias impressas
        NumCop := NumCop + 1;
        Coluna := Coluna + 1;
        ContEt := ContEt + 1;
        if NumCop = QtdEt then
          NumCop := NumCop + 1;
      end;
      //PULA PARA O PRÓXIMO REGISTRO
      DMESTOQUE.TRel.Next;
    end;
    Printer.enddoc;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.' + #13 +
      'Se o problema continuar reinicie o computador e a impressora.', '', 1, 1,
      false, 'i');
  end;
end;

//Procedure utilizada para imprimir etiquetas de produtos no formato pre definido para as impressoras termicas metrologic com bubina de 3 colunas
//Levando em consideração que a tabela utilizada é: DMESTOQUE.TREL sendo necessário os seguintes campos renomeados
//CODFAB - Código Fabricante;  MARCA - marca do subproduto; DESCR - Descrição do Similar; PRECO - Preço a ser impresso; CODCOMPOSTO - Código Composto do produto; CODBARRA - Este valor será transformado em código de barras ( todos os valores pode m ser substituidos por outros porém estes campos devem existir
//QTD - Qunatidade lançada e o mesmo Nº de etiquetas a ser impressa
//O valor Passado a procedure EAN13:   iNDICA SE O CÓDIGO DE BARRAS DA TABELA E TIPO EAN13 OU NÃO
procedure PrnEtiqPerson(EAN13: Boolean; CODBAR: INTEGER; XQTD: Integer);
var
  QtdEt, NumCop, ContEt: Integer;
  Linha, Tamanho, LimImp: Integer;
  Coluna: Integer;
  CodBarraImp: string;
    // O código a ser impresso em formato barra (Cód. barra ou Fabricante)
  COLIMP: Integer;
  IncLine: Integer; //incremento de linha
begin
  //RECEBE VALORES CONFIGURADOS EM BANCO
  try
    SetarImpressora; //força valores de impresao
    GetValEtqProdPerson;
    Printer.PageHeight;
    Printer.PageWidth;
    //seta quantidade de colunas e linhas para impressão no papel e impressora corrente
    if (GetWindowsVersion = 'Windows XP') or (GetWindowsVersion = 'Windows 2000')
      or (GetWindowsVersion = 'Windows NT') then
      SetPrinterPage_Xp(DMPAPER_USER, XLARGPAG, XALTPAG)
    else
      SetPrinterPage_9x(XLARGPAG, XALTPAG);

    Tamanho := Printer.Canvas.TextWidth('A');
    Coluna := 1;
    Linha := XLINHAINI;
    LimImp := 0;
    ContEt := 0;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.' + #13 +
      'Se o problema continuar reinicie o computador e a impressora.', '', 1, 1,
      false, 'i');
  end;
  try
    Printer.BeginDoc;
    Printer.canvas.pen.width := 5;
    Printer.Canvas.Font.name := 'Arial';
    Printer.Canvas.Font.Size := 8 + XTAMFONTE;
    //Deve-se imprimir etiquetas para cada registro
    DMESTOQUE.TRel.First;
    DMESTOQUE.TRel.RecordCount;
    while not DMESTOQUE.TRel.Eof do
    begin
      IncLine := 0;
      NumCop := 0;
      if XQTD >= 0 then
        QtdEt := XQTD
      else
        QtdEt := DMESTOQUE.TRel.FieldByName('QTD').AsInteger +
          DMESTOQUE.TRel.FieldByName('QTDEEXP').AsInteger;
      //Enquanto a quantidade de Cópias impressas for menor que a Quantidade a ser impressa
      while NumCop <= QtdEt do
      begin
        //controla avanço de nova página se já estiver ultrapassado o numero de etiquetas por página
        if ContEt >= XQTDETQPAG then
        begin
          ContEt := 0;
          Coluna := 1;
          Linha := XLINHAINI;
          Printer.NewPage;
        end;
        if Coluna > XQTDCOLPAG then
        begin
          Linha := Linha + XINTERVLIN;
          LimImp := LimImp + 1;
          Coluna := 1;
        end;
        if Coluna = 1 then
        begin
          COLIMP := XCOLUNAINI;
        end
        else
        begin
          COLIMP := ((Coluna - 1) * XINTERVCOL) + XCOLUNAINI;
        end;
        //IMPRIME PRIMEIRA COLUNA
        Printer.Canvas.Font.Size := 8 + XTAMFONTE;
        //Verifica se deve Imprimir Cód Fabricante
        if DMMACS.TLoja.FieldByName('IECODFAB').AsString = '1' then
          Printer.Canvas.TextOut(COLIMP, (Linha * 1),
            DMESTOQUE.TRel.FieldByName('CODFAB').AsString);
        Printer.canvas.font.style := [fsbold];

        //Paulo 05/11/2010 - 162: Verifica se deve imprimir o campo cor da tabela subproduto
        if DMMACS.TLoja.FieldByName('IECLASS2').AsString = '1' then
          Printer.Canvas.TextOut(COLIMP, (Linha * 1),
            DMESTOQUE.TRel.FieldByName('COR').AsString);
        Printer.canvas.font.style := [fsbold];

        //Verifica se deve Imprimir preço
        if DMMACS.TLoja.FieldByName('IEPRECO').AsString = '1' then
        begin
          if DMESTOQUE.TRel.FieldByName('PRECO').AsString <> '' then
            Printer.Canvas.TextOut(COLIMP + (Tamanho * 11), (Linha * 1), '$ ' +
              FormatFloat('0.00', DMESTOQUE.TRel.FieldByName('PRECO').Value))
          else
            Printer.Canvas.TextOut(COLIMP + (Tamanho * 11), (Linha * 1),
              '$ 0,00');
        end;
        Printer.canvas.font.style := [];
        //Verifica se deve Imprimir Cód Composto
        if DMMACS.TLoja.FieldByName('IECODCOMPOSTO').AsString = '1' then
          Printer.Canvas.TextOut(COLIMP, (Linha + (Tamanho * 2)),
            DMESTOQUE.TRel.FieldByName('CODCOMPOSTO').AsString);
        if DMMACS.TLoja.FieldByName('IECONTRINT').AsString = '1' then
          Printer.Canvas.TextOut(COLIMP, (Linha + (Tamanho * 2)),
            DMESTOQUE.TRel.FieldByName('CONTRINT').AsString);
        Printer.Canvas.Font.Size := 7 + XTAMFONTE;

        //Verifica se deve Imprimir descricao
        if DMMACS.TLoja.FieldByName('IEDESC').AsString = '1' then
          Printer.Canvas.TextOut(COLIMP, (Linha + (Tamanho * 4)),
            Copy(DMESTOQUE.TRel.FieldByName('DESCR').AsString, 0, XTAMDESC));

        //Verifica se deve Imprimir a marca
        if DMMACS.TLoja.FieldByName('IEMARCA').AsString = '1' then
          Printer.Canvas.TextOut(COLIMP, (Linha + (Tamanho * 6)),
            DMESTOQUE.TRel.FieldByName('MARCA').AsString);

        Printer.Canvas.Font.Size := 6 + XTAMFONTE;
        //Verifica se deve Imprimir a classificacao
        if DMMACS.TLoja.FieldByName('IECLASS').AsString = '1' then
        begin
          Printer.Canvas.TextOut(COLIMP, Linha + (Tamanho * 8),
            DMESTOQUE.TRel.FieldByName('CLASSIFICACAO').AsString);
          IncLine := 2;
        end;
        //Verifica se deve Imprimir a Composição
        if DMMACS.TLoja.FieldByName('IECOMPOSICAO').AsString = '1' then
        begin
          Printer.Canvas.TextOut(COLIMP, IncLine + Linha + (Tamanho * 8),
            DMESTOQUE.TRel.FieldByName('COMPOSICAO').AsString);
        end;
        //Verifica se deve Imprimir a altura e largura
        if DMMACS.TLoja.FieldByName('IEALTLARG').AsString = '1' then
        begin
          Printer.Canvas.TextOut(COLIMP + 200, IncLine + Linha + (Tamanho * 8),
            DMESTOQUE.TRel.FieldByName('LARGURA').AsString + 'x' +
            DMESTOQUE.TRel.FieldByName('ALTURA').AsString);
        end;

        if (DMMACS.TLoja.FieldByName('IECOMPOSICAO').AsString = '1') or
          (DMMACS.TLoja.FieldByName('IEALTLARG').AsString = '1') then
          IncLine := IncLine + 2;

        CodBarraImp := '';
        //Verifica se deve Imprimir em código de barras o Cód de barras ou o Codigo do fabricante
        if CODBAR = 0 then
        begin
          //usara campo código de barras
          if Length(Trim(DMESTOQUE.TRel.FieldByName('CODBARRA').AsString)) = 13
            then
          begin //imprimir codigo de barra
            CodBarraImp := DMESTOQUE.TRel.FieldByName('CODBARRA').AsString;
          end
          else
          begin //codigo do fab
            CodBarraImp := DMESTOQUE.TRel.FieldByName('CODBARRA').AsString;
          end
        end
        else
        begin
          //usará campo código do fabricante
          CodBarraImp := DMESTOQUE.TRel.FieldByName('CODFAB').AsString;
        end;
        Printer.Canvas.Font.Size := 8 + XTAMFONTE;
        if (DMMACS.TLoja.FieldByName('IEBARRA').AsString = '1') then
        begin
          if (Length(TRIM(CodBarraImp)) = 13) then
          begin //IMPRIME EM FORMATO EAN 13
            CodBarraImp := Copy(CodBarraImp, 0, 12);
            FMenu.PrnEan13.Codigo := Copy(CODBARRAIMP, 0, 12);
            FMenu.PrnEan13.CorBarra := clBlack;
            FMenu.PrnEan13.CorEspaco := clWhite;
            FMenu.PrnEan13.Largura := XLARGCODBARRA;
            FMenu.PrnEan13.Comprimento := XCOMPCODBARRA;
            //IncLine:=IncLine+2;
            FMenu.PrnEan13.LinhaPrinter := IncLine + Linha + (Tamanho * 7);
            FMenu.PrnEan13.ColunaPrinter := COLIMP;
            FMenu.PrnEan13.Execute;
          end;
          if Length(TRIM(CodBarraImp)) = 8 then
          begin //IMPRIME EM FORMATO EAN 8
            CodBarraImp := Copy(CodBarraImp, 0, 7);
            FMenu.PrnEan8.Codigo := CODBARRAIMP;
            FMenu.PrnEan8.CorBarra := clBlack;
            FMenu.PrnEan8.CorEspaco := clWhite;
            FMenu.PrnEan8.Largura := XLARGCODBARRA;
            FMenu.PrnEan8.Comprimento := XCOMPCODBARRA;
            //IncLine:=IncLine+2;
            FMenu.PrnEan8.LinhaPrinter := IncLine + Linha + (Tamanho * 7);
            FMenu.PrnEan8.ColunaPrinter := COLIMP;
            FMenu.PrnEan8.Execute;
          end;
          if (Length(TRIM(CodBarraImp)) <> 8) and (Length(TRIM(CodBarraImp)) <>
            12) then
          begin
            FMenu.PrnCodBarra.Codigo := CODBARRAIMP;
            FMenu.PrnCodBarra.CorBarra := clBlack;
            FMenu.PrnCodBarra.CorEspaco := clWhite;
            FMenu.PrnCodBarra.Largura := XLARGCODBARRA;
            FMenu.PrnCodBarra.Comprimento := XCOMPCODBARRA;
            //IncLine:=IncLine+2;
            FMenu.PrnCodBarra.LinhaPrinter := IncLine + Linha + (Tamanho * 7);
            FMenu.PrnCodBarra.ColunaPrinter := COLIMP;
            FMenu.PrnCodBarra.Execute;
          end;
          if DMMACS.TLoja.FieldByName('IECLASS2').AsString = '1' then
          begin
            Printer.Canvas.Font.Size := 6 + XTAMFONTE;
            Printer.Canvas.TextOut(COLIMP, IncLine + Linha + (Tamanho * 7),
              CodBarraImp);
          end
          else
          begin
            Printer.Canvas.Font.Size := 9 + XTAMFONTE;
            Printer.Canvas.TextOut(COLIMP, IncLine + Linha + (Tamanho * 7),
              CodBarraImp);
          end;

        end;
        Printer.Canvas.Font.Size := 5 + XTAMFONTE;
        //Verifica se deve Imprimir o fabricante
        if DMMACS.TLoja.FieldByName('IEFABR').AsString = '1' then
        begin
          IncLine := IncLine + 2;
          Printer.Canvas.TextOut(COLIMP, IncLine + Linha + (Tamanho * 8),
            DMESTOQUE.TRel.FieldByName('FABRICANTE').AsString);
        end;
        Printer.Canvas.Font.Size := 8 + XTAMFONTE;
        //atualiza o nº de cópias impressas
        NumCop := NumCop + 1;
        Coluna := Coluna + 1;
        ContEt := ContEt + 1;
        if NumCop = QtdEt then
          NumCop := NumCop + 1;
      end;
      //PULA PARA O PRÓXIMO REGISTRO
      DMESTOQUE.TRel.Next;
    end;
    Printer.enddoc;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.' + #13 +
      'Se o problema continuar reinicie o computador e a impressora.', '', 1, 1,
      false, 'i');
  end;
end;

//Procedure utilizada para imprimir etiquetas de produtos no formato 2 Colunas por 12 Linhas com papel de 15Cm de largura 30.05 Cm de Comprimento
//Levando em consideração que a tabela utilizada é: DMESTOQUE.TREL sendo necessário os seguintes campos renomeados
//CODFAB - Código Fabricante; MARCA - marca do subproduto; DESCR - Descrição do Similar; PRECO - Preço a ser impresso; CODCOMPOSTO - Código Composto do produto; CODBARRA - Este valor será transformado em código de barras ( todos os valores pode m ser substituidos por outros porém estes campos devem existir
//QTD - Qunatidade lançada e o mesmo Nº de etiquetas a ser impressa
//O valor Passado a procedure EAN13:   iNDICA SE O CÓDIGO DE BARRAS DA TABELA E TIPO EAN13 OU NÃO
procedure PrnEtiq2X12(EAN13: Boolean; CODBAR: INTEGER; QTD: Integer);
var
  QtdEt, NumCop, ContEt: Integer;
  Linha, Tamanho, LimImp: Integer;
  Coluna: Integer;
  CodBarraImp: string;
    // O código a ser impresso em formato barra (Cód. barra ou Fabricante)
begin

  //seta quantidade de colunas e linhas para impressão no papel e impressora corrente
  if (GetWindowsVersion = 'Windows XP') or (GetWindowsVersion = 'Windows 2000')
    or (GetWindowsVersion = 'Windows NT') then
    SetPrinterPage_Xp(DMPAPER_USER, 1700, 3050)
  else
    SetPrinterPage_9x(1700, 3050);

  Tamanho := Printer.Canvas.TextWidth('A');
  Coluna := 1;
  Linha := 0;
  LimImp := 0;
  ContEt := 0;

  try
    Printer.BeginDoc;
    Printer.canvas.pen.width := 5;
    Printer.Canvas.Font.name := 'VERDANA';
    Printer.Canvas.Font.Size := 8;
    //				Printer.canvas.font.color:=clblue;

               //Deve-se imprimir etiquetas para cada registro
    DMESTOQUE.TRel.First;
    DMESTOQUE.TRel.RecordCount;
    while not DMESTOQUE.TRel.Eof do
    begin
      NumCop := 0;
      if QTD >= 0 then
        QtdEt := QTD
      else
        QtdEt := DMESTOQUE.TRel.FieldByName('QTD').AsInteger +
          DMESTOQUE.TRel.FieldByName('QTDEEXP').AsInteger;

      //Enquanto a quantidade de Cópias impressas for menor que a Quantidade a ser impressa
      while NumCop <= QtdEt do
      begin
        //controla avanço de nova página
        if ContEt >= 24 then
        begin
          ContEt := 0;
          Coluna := 1;
          Linha := 1;
          Printer.NewPage;
        end;

        if Coluna = 1 then
        begin
          CodBarraImp := '';
          //Verifica se deve Imprimir em código de barras o Cód de barras ou o Codigo do fabricante
          if CODBAR = 0 then
          begin
            //usara campo código de barras
            if Length(DMESTOQUE.TRel.FieldByName('CODBARRA').AsString) = 13 then
            begin //imprimir codigo de barra
              CodBarraImp := DMESTOQUE.TRel.FieldByName('CODBARRA').AsString;
              EAN13 := True;
            end
            else
            begin //codigo do fab
              CodBarraImp := DMESTOQUE.TRel.FieldByName('CODBARRA').AsString;
              EAN13 := False;
            end;
          end
          else
          begin
            //usará campo código do fabricante
            CodBarraImp := DMESTOQUE.TRel.FieldByName('CODFAB').AsString;
            EAN13 := False;
          end;
          if DMMACS.TLoja.FieldByName('IEBARRA').AsString = '1' then
          begin
            if EAN13 = False then
            begin
              Printer.Canvas.Font.Size := 7;
              Printer.Canvas.TextOut(30, Linha + (Tamanho * 4), CodBarraImp);
              FMenu.PrnCodBarra.Codigo := CODBARRAIMP;
              FMenu.PrnCodBarra.CorBarra := clBlack;
              FMenu.PrnCodBarra.CorEspaco := clWhite;
              FMenu.PrnCodBarra.Largura := 1;
              FMenu.PrnCodBarra.Comprimento := 5;
              FMenu.PrnCodBarra.LinhaPrinter := Linha + (Tamanho * 1);
              FMenu.PrnCodBarra.ColunaPrinter := 30;
              FMenu.PrnCodBarra.Execute;
            end
            else
            begin
              Printer.Canvas.Font.Size := 7;
              Printer.Canvas.TextOut(30, Linha + (Tamanho * 4), CodBarraImp);
              FMenu.PrnEan13.Codigo := Copy(CODBARRAIMP, 0, 12);
              FMenu.PrnEan13.CorBarra := clBlack;
              FMenu.PrnEan13.CorEspaco := clWhite;
              FMenu.PrnEan13.Largura := 1;
              FMenu.PrnEan13.Comprimento := 5;
              FMenu.PrnEan13.LinhaPrinter := Linha + (Tamanho * 1);
              FMenu.PrnEan13.ColunaPrinter := 30;
              FMenu.PrnEan13.Execute;
            end;
          end;
          //IMPRIME PRIMEIRA COLUNA
          Printer.Canvas.Font.Size := 8;
          //Verifica se deve Imprimir Cód Fabricante
          if DMMACS.TLoja.FieldByName('IECODFAB').AsString = '1' then
            Printer.Canvas.TextOut(20, Linha * 1,
              DMESTOQUE.TRel.FieldByName('CODFAB').AsString);

          Printer.Canvas.Font.Size := 8;
          //Verifica se deve Imprimir descricao
          if DMMACS.TLoja.FieldByName('IEDESC').AsString = '1' then
            Printer.Canvas.TextOut(10, Linha + (Tamanho * 6),
              DMESTOQUE.TRel.FieldByName('DESCR').AsString);

          //Verifica se deve Imprimir a marca
          if DMMACS.TLoja.FieldByName('IEMARCA').AsString = '1' then
            Printer.Canvas.TextOut(10, Linha + (Tamanho * 8),
              DMESTOQUE.TRel.FieldByName('MARCA').AsString);
          Printer.Canvas.Font.Size := 6;
          //Verifica se deve Imprimir a classificacao
          if DMMACS.TLoja.FieldByName('IECLASS').AsString = '1' then
            Printer.Canvas.TextOut(10, Linha + (Tamanho * 10),
              DMESTOQUE.TRel.FieldByName('CLASSIFICACAO').AsString);
          //Verifica se deve Imprimir o fabricante
          if DMMACS.TLoja.FieldByName('IEFABR').AsString = '1' then
            //Printer.Canvas.TextOut(10, Linha+(Tamanho*10), DMESTOQUE.TRel.FieldByName('FABRICANTE').AsString);

        //Verifica se deve Imprimir a Composição
            if DMMACS.TLoja.FieldByName('IECOMPOSICAO').AsString = '1' then
              Printer.Canvas.TextOut(10, Linha + (Tamanho * 12),
                DMESTOQUE.TRel.FieldByName('COMPOSICAO').AsString);

          //Verifica se deve Imprimir a altura e largura
          if DMMACS.TLoja.FieldByName('IEALTLARG').AsString = '1' then
            Printer.Canvas.TextOut(200, Linha + (Tamanho * 8),
              DMESTOQUE.TRel.FieldByName('ALTURA').AsString + 'x' +
              DMESTOQUE.TRel.FieldByName('LARGURA').AsString);

          Printer.Canvas.Font.Size := 8;
          //Verifica se deve Imprimir Cód Composto
          if DMMACS.TLoja.FieldByName('IECODCOMPOSTO').AsString = '1' then
            Printer.Canvas.TextOut(200, Linha * 1,
              DMESTOQUE.TRel.FieldByName('CODCOMPOSTO').AsString)
          else
            Printer.Canvas.TextOut(230, Linha * 1,
              DMESTOQUE.TRel.FieldByName('CONTRINT').AsString);
          //Verifica se deve Imprimir preço Vista
          if DMMACS.TLoja.FieldByName('IEPRECO').AsString = '1' then
          begin
            if DMESTOQUE.TRel.FieldByName('PRECO').AsString <> '' then
              Printer.Canvas.TextOut(230, Linha + (Tamanho * 3), 'V $ ' +
                FormatFloat('0.00', DMESTOQUE.TRel.FieldByName('PRECO').Value))
            else
              Printer.Canvas.TextOut(230, Linha + (Tamanho * 3), 'V $ 0,00');
          end;
          //Verifica se deve Imprimir preço Prazo
          if DMMACS.TLoja.FieldByName('IEPRECOPRAZO').AsString = '1' then
          begin
            if DMESTOQUE.TRel.FieldByName('PRECOPRAZO').AsString <> '' then
              Printer.Canvas.TextOut(150, Linha + (Tamanho * 3), 'P $ ' +
                FormatFloat('0.00', DMESTOQUE.TRel.FieldByName('PRECO').Value))
            else
              Printer.Canvas.TextOut(150, Linha + (Tamanho * 3), 'P $ 0,00');
          end;

          Printer.Canvas.Font.Size := 8;
          //atualiza o nº de cópias impressas
          NumCop := NumCop + 1;
          Coluna := 2;
          ContEt := ContEt + 1;
        end;
        //IMPRIME SEGUNDA COLUNA
        //Verifica Se já não imprimiu o Nº de cópias suficiente
        if (NumCop < QtdEt) and (coluna = 2) then
        begin
          CodBarraImp := '';
          //Verifica se deve Imprimir em código de barras o Cód de barras ou o Codigo do fabricante
          if CODBAR = 0 then
          begin
            //usara campo código de barras
            if Length(DMESTOQUE.TRel.FieldByName('CODBARRA').AsString) = 13 then
            begin //imprimir codigo de barra
              CodBarraImp := DMESTOQUE.TRel.FieldByName('CODBARRA').AsString;
              EAN13 := True;
            end
            else
            begin //codigo do fab
              CodBarraImp := DMESTOQUE.TRel.FieldByName('CODBARRA').AsString;
              EAN13 := False;
            end;
          end
          else
          begin
            //usará campo código do fabricante
            CodBarraImp := DMESTOQUE.TRel.FieldByName('CODFAB').AsString;
            EAN13 := False;
          end;
          if DMMACS.TLoja.FieldByName('IEBARRA').AsString = '1' then
          begin
            if EAN13 = False then
            begin
              Printer.Canvas.Font.Size := 8;
              Printer.Canvas.TextOut(30, Linha + (Tamanho * 4), CodBarraImp);
              FMenu.PrnCodBarra.Codigo := CODBARRAIMP;
              FMenu.PrnCodBarra.CorBarra := clBlack;
              FMenu.PrnCodBarra.CorEspaco := clWhite;
              FMenu.PrnCodBarra.Largura := 1;
              FMenu.PrnCodBarra.Comprimento := 5;
              FMenu.PrnCodBarra.LinhaPrinter := Linha + (Tamanho * 1);
              FMenu.PrnCodBarra.ColunaPrinter := 380;
              FMenu.PrnCodBarra.Execute;
            end
            else
            begin
              Printer.Canvas.Font.Size := 8;
              Printer.Canvas.TextOut(30, Linha + (Tamanho * 4), CodBarraImp);
              FMenu.PrnEan13.Codigo := Copy(CODBARRAIMP, 0, 12);
              FMenu.PrnEan13.CorBarra := clBlack;
              FMenu.PrnEan13.CorEspaco := clWhite;
              FMenu.PrnEan13.Largura := 1;
              FMenu.PrnEan13.Comprimento := 5;
              FMenu.PrnEan13.LinhaPrinter := Linha + (Tamanho * 1);
              FMenu.PrnEan13.ColunaPrinter := 380;
              FMenu.PrnEan13.Execute;
            end;
          end;
          Printer.Canvas.font.Size := 8;
          //Verifica se deve Imprimir Cód Fabricante
          if DMMACS.TLoja.FieldByName('IECODFAB').AsString = '1' then
            Printer.Canvas.TextOut(370, Linha * 1,
              DMESTOQUE.TRel.FieldByName('CODFAB').AsString);

          Printer.Canvas.Font.Size := 8;
          //Verifica se deve Imprimir descricao
          if DMMACS.TLoja.FieldByName('IEDESC').AsString = '1' then
            Printer.Canvas.TextOut(370, Linha + (Tamanho * 6),
              DMESTOQUE.TRel.FieldByName('DESCR').AsString);
          //Verifica se deve Imprimir a marca
          if DMMACS.TLoja.FieldByName('IEMARCA').AsString = '1' then
            Printer.Canvas.TextOut(370, Linha + (Tamanho * 8),
              DMESTOQUE.TRel.FieldByName('MARCA').AsString);
          Printer.Canvas.Font.Size := 6;
          //Verifica se deve Imprimir a classificacao
          if DMMACS.TLoja.FieldByName('IECLASS').AsString = '1' then
            Printer.Canvas.TextOut(370, Linha + (Tamanho * 10),
              DMESTOQUE.TRel.FieldByName('CLASSIFICACAO').AsString);
          //Verifica se deve Imprimir o fabricante
          if DMMACS.TLoja.FieldByName('IEFABR').AsString = '1' then
            Printer.Canvas.TextOut(370, Linha + (Tamanho * 10),
              DMESTOQUE.TRel.FieldByName('FABRICANTE').AsString);
          //Verifica se deve Imprimir a Composição
          if DMMACS.TLoja.FieldByName('IECOMPOSICAO').AsString = '1' then
            Printer.Canvas.TextOut(370, Linha + (Tamanho * 12),
              DMESTOQUE.TRel.FieldByName('COMPOSICAO').AsString);
          //Verifica se deve Imprimir a altura e largura
          if DMMACS.TLoja.FieldByName('IEALTLARG').AsString = '1' then
            Printer.Canvas.TextOut(550, Linha + (Tamanho * 8),
              DMESTOQUE.TRel.FieldByName('ALTURA').AsString + 'x' +
              DMESTOQUE.TRel.FieldByName('LARGURA').AsString);

          Printer.Canvas.Font.Size := 8;
          //Verifica se deve Imprimir Cód Composto
          if DMMACS.TLoja.FieldByName('IECODCOMPOSTO').AsString = '1' then
            Printer.Canvas.TextOut(550, Linha * 1,
              DMESTOQUE.TRel.FieldByName('CODCOMPOSTO').AsString)
          else
            Printer.Canvas.TextOut(580, Linha * 1,
              DMESTOQUE.TRel.FieldByName('CONTRINT').AsString);

          //Verifica se deve Imprimir preço
          if DMMACS.TLoja.FieldByName('IEPRECO').AsString = '1' then
          begin
            if DMESTOQUE.TRel.FieldByName('PRECO').AsString <> '' then
              Printer.Canvas.TextOut(580, Linha + (Tamanho * 3), '$ ' +
                FormatFloat('0.00', DMESTOQUE.TRel.FieldByName('PRECO').Value))
            else
              Printer.Canvas.TextOut(580, Linha + (Tamanho * 3), '$ 0,00');
          end;
          //Verifica se deve Imprimir preço Prazo
          if DMMACS.TLoja.FieldByName('IEPRECOPRAZO').AsString = '1' then
          begin
            if DMESTOQUE.TRel.FieldByName('PRECOPRAZO').AsString <> '' then
              Printer.Canvas.TextOut(500, Linha + (Tamanho * 3), 'P $ ' +
                FormatFloat('0.00', DMESTOQUE.TRel.FieldByName('PRECO').Value))
            else
              Printer.Canvas.TextOut(500, Linha + (Tamanho * 3), 'P $ 0,00');
          end;

          Printer.Canvas.Font.Size := 8;
          //atualiza o nº de cópias impressas
          NumCop := NumCop + 1;
          Coluna := 1;
          ContEt := ContEt + 1;
          Linha := Linha + 144;
          LimImp := LimImp + 1;
        end;
        if NumCop = QtdEt then
          NumCop := NumCop + 1;
      end;
      //PULA PARA O PRÓXIMO REGISTRO
      DMESTOQUE.TRel.Next;
    end;
    Printer.enddoc;
  except
    Mensagem('A T E N Ç Ã O!', 'Falha ao imprimir!' + #13 +
      'Verifique se a impressora esta ligada e devidamente configurada.', '', 1,
      1, false, 'i');
  end;
end;

//DJ 16/12/2009: Pesquisa dados de uma cfop para espelhoNF
procedure PesquisaDadosCFOP(XTABELA2: string; XCAMPO: string; XCODDOC: Integer);
begin
  DMESTOQUE.Alx1.Close;
  DMESTOQUE.Alx1.SQL.Clear;
  DMESTOQUE.Alx1.SQL.Add('select ' + XTABELA2 + '.' + XCAMPO +
    ',cfop.cfop,cfop.descricao from ' + XTABELA2 + ' left join cfop ');
  if (XTABELAAUX = 'ORDEM') then
    DMESTOQUE.Alx1.SQL.Add('on ' + XTABELA2 + '.' + XCAMPO +
      ' = cfop.cod_cfop where ' + XTABELA2 + '.cod_ordem = :numdocfis')
  else
    DMESTOQUE.Alx1.SQL.Add('on ' + XTABELA2 + '.' + XCAMPO +
      ' = cfop.cod_cfop where ' + XTABELA2 + '.cod_pedido = :numdocfis');
  DMESTOQUE.Alx1.ParamByName('numdocfis').AsInteger := XCODDOC;
  DMESTOQUE.Alx1.SQL.Text;
  DMESTOQUE.Alx1.Open;
end;

//DJ 17/12/2009: Gera um espelho da nota fiscal
procedure GeraRelEspelhoNf(XTABELA3: string; XCODDOC: Integer);
var
  XPARAM2, XCOD_CFOP, XCOD_CFOP1, XCOD_CFOP2: string;
  XDESCCFOP, XDESCCFOP1, XDESCCFOP2, XTEXTCFOP, XTEXTCODCFOP, XCODPED: string;
  XPARAMFATURA, XCONTROLE: Integer;
begin
  if (XTABELA3 = 'PEDCOMPRA') then
  begin
    XCONTROLE := 0;
    XPARAM2 := 'DOCFIS';
    XTABELAAUX := 'PEDCOMPRA';
  end
  else
    XCONTROLE := 1;

  if (XTABELA3 = 'PEDVENDA') then
  begin
    XPARAM2 := 'DOCFISSAIDA';
    XTABELAAUX := 'PEDVENDA';
  end;
  if (XTABELA3 = 'ORDEM') then
  begin
    XPARAM2 := 'DOCFISORD';
    XCONTROLE := 2;
    XTABELAAUX := 'ORDEM';
  end;

  // Busca dados da cfop
  XTEXTCFOP := '';
  XTEXTCODCFOP := '';
  PesquisaDadosCFOP(XPARAM2, 'COD_CFOP', XCODDOC);
  XCOD_CFOP := DMESTOQUE.Alx1.FieldByName('CFOP').AsString;
  XDESCCFOP := DMESTOQUE.Alx1.FieldByName('DESCRICAO').AsString;
  if (XDESCCFOP <> '') then
  begin
    XTEXTCODCFOP := (XTEXTCODCFOP + XCOD_CFOP + '/');
    XTEXTCFOP := XTEXTCFOP + XDESCCFOP + '/';
  end;
  PesquisaDadosCFOP(XPARAM2, 'COD_CFOP1', XCODDOC);
  XCOD_CFOP1 := DMESTOQUE.Alx1.FieldByName('CFOP').AsString;
  XDESCCFOP1 := DMESTOQUE.Alx1.FieldByName('DESCRICAO').AsString;
  if (XDESCCFOP1 <> '') then
  begin
    XTEXTCODCFOP := (XTEXTCODCFOP + XCOD_CFOP1 + '/');
    XTEXTCFOP := XTEXTCFOP + XDESCCFOP1 + '/';
  end;
  PesquisaDadosCFOP(XPARAM2, 'COD_CFOP2', XCODDOC);
  XCOD_CFOP2 := DMESTOQUE.Alx1.FieldByName('CFOP').AsString;
  XDESCCFOP2 := DMESTOQUE.Alx1.FieldByName('DESCRICAO').AsString;
  if (XDESCCFOP2 <> '') then
  begin
    XTEXTCODCFOP := (XTEXTCODCFOP + XCOD_CFOP2);
    XTEXTCFOP := XTEXTCFOP + XDESCCFOP2;
  end;
  //Seleciona cidade e estado da empresa
  DMESTOQUE.Alx1.Close;
  DMESTOQUE.Alx1.SQL.Clear;
  DMESTOQUE.Alx1.SQL.Add('select cidade.nome,estado.uf_estado from cidade left join empresa on empresa.cod_cidade = cidade.cod_cidade ');
  DMESTOQUE.Alx1.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado where empresa.cod_empresa = :cod_empresa');
  DMESTOQUE.Alx1.ParamByName('cod_empresa').AsInteger :=
    DMMACS.TEmpresa.FieldByName('cod_empresa').AsInteger;
  DMESTOQUE.Alx1.Open;

  //Seleciona dados do documento fiscal
  DMESTOQUE.Alx2.Close;
  DMESTOQUE.Alx2.SQL.Clear;
  if (XTABELAAUX = 'PEDCOMPRA') then
    DMESTOQUE.Alx2.SQL.Add('select * from docfis where docfis.cod_pedido = :cod_pedido')
  else
  begin
    if (XTABELAAUX = 'ORDEM') then
      DMESTOQUE.Alx2.SQL.Add('select * from docfisord where docfisord.cod_ordem = :cod_ordem')
    else
      DMESTOQUE.Alx2.SQL.Add('select * from docfissaida where docfissaida.cod_pedido = :cod_pedido');
  end;
  if (XTABELAAUX = 'ORDEM') then
    DMESTOQUE.Alx2.ParamByName('cod_ordem').AsInteger := XCODDOC
  else
    DMESTOQUE.Alx2.ParamByName('cod_pedido').AsInteger := XCODDOC;
  DMESTOQUE.Alx2.Open;

  if (XTABELAAUX = 'ORDEM') then
    XPARAMFATURA := DMESTOQUE.Alx2.FieldByName('cod_ordem').AsInteger
  else
    XPARAMFATURA := DMESTOQUE.Alx2.FieldByName('cod_pedido').AsInteger;
  DMESTOQUE.Alx4.Close;
  DMESTOQUE.Alx4.SQL.Clear;
  if (XTABELAAUX = 'ORDEM') then
  begin
    DMESTOQUE.Alx4.SQL.Add('select vwordem.formapag from vwordem right join docfisord on docfisord.cod_ordem = vwordem.cod_ordem where docfisord.cod_ordem = :numdocfis');
  end
  else
  begin
    if (XTABELAAUX = 'PEDCOMPRA') then
    begin
      DMESTOQUE.Alx4.SQL.Add('select formpag.descricao AS formapag from formpag right join vwpedc on formpag.cod_formpag = vwpedc.cod_formpag inner join docfissaida ');
      DMESTOQUE.Alx4.SQL.Add(' on docfissaida.cod_pedido = vwpedc.cod_pedcomp where docfissaida.cod_pedido = :numdocfis');
    end
    else
    begin
      DMESTOQUE.Alx4.SQL.Add('select formpag.descricao as formapag from formpag right join vwpedv on formpag.cod_formpag = vwpedv.cod_formpag inner join docfissaida ');
      DMESTOQUE.Alx4.SQL.Add('on docfissaida.cod_pedido = vwpedv.cod_pedvenda where docfissaida.cod_pedido = :numdocfis');
    end;
  end;
  if (XTABELAAUX = 'ORDEM') then
    DMESTOQUE.Alx4.ParamByName('numdocfis').AsInteger :=
      DMESTOQUE.Alx2.ParamByName('cod_ordem').AsInteger
  else
    DMESTOQUE.Alx4.ParamByName('numdocfis').AsInteger :=
      DMESTOQUE.Alx2.ParamByName('cod_pedido').AsInteger;
  DMESTOQUE.Alx4.Open;
  if (DMESTOQUE.Alx4.FieldByName('formapag').AsString <> 'À VISTA') then
    NFFaturaOS(XPARAMFATURA, XTABELA3, 0)
  else
  begin
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add('delete from tmp');
    DMMACS.TMP.ExecSQL;
    DMMACS.Transaction.CommitRetaining;
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add('select * from tmp');
    DMMACS.TMP.Open;

    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
    DMMACS.TMP.FieldByName('DESC1').AsString := 'À VISTA';
    DMMACS.TMP.FieldByName('VLR1').AsCurrency :=
      DMESTOQUE.Alx2.FieldByName('VLRTOTDOCNF').AsInteger;
    DMMACS.TMP.FieldByName('INT2').AsInteger := 1;
    DMMACS.TMP.Post;
  end;

  DMFISCAL.TAlx2.Close;
  DMFISCAL.TAlx2.SQL.Clear;
  DMFISCAL.TAlx2.SQL.Add('select * from tmp where int2 = 1');
  DMFISCAL.TAlx2.Open;

  //Insere CFOP,COD_DOFISCAL e DESCRICAO CFOP no Banco de dados
  DMMACS.TALX.Close;
  DMMACS.TALX.SQL.Clear;
  DMMACS.TALX.SQL.Add('insert into tmp(int1,int2,desc3,desc1) values (' + #39 +
    IntToStr(XCONTROLE) + #39 + ',2,' + #39 + XTEXTCFOP + #39 + ',' + #39 +
    XTEXTCODCFOP + #39 + ')');
  DMMACS.TALX.ExecSQL;
  DMMACS.Transaction.CommitRetaining;
  DMMACS.TALX.Close;

  DMMACS.TALX.Close;
  DMMACS.TALX.SQL.Clear;
  DMMACS.TALX.SQL.Add('select * from tmp where int2 = 2');
  DMMACS.TALX.Open;

  //Seleciona dados do fornecedor/cliente
  DMESTOQUE.Alx3.Close;
  DMESTOQUE.Alx3.SQL.Clear;
  if (XTABELA3 = 'PEDCOMPRA') then
  begin
    DMESTOQUE.Alx3.SQL.Add('select * from vwfornec left join pedcompra on pedcompra.cod_fornec = vwfornec.cod_fornec');
    DMESTOQUE.Alx3.SQL.Add(' join docfis on docfis.cod_pedido = pedcompra.cod_pedcomp where docfis.cod_pedido = :numdocfis');
  end
  else
  begin
    if (XTABELA3 = 'ORDEM') then
    begin
      DMESTOQUE.Alx3.SQL.Add('select * from vwcliente right join ordem on ordem.cod_cliente = vwcliente.cod_cliente');
      DMESTOQUE.Alx3.SQL.Add(' where ordem.cod_ordem = :numdocfis');
    end
    else
    begin
      DMESTOQUE.Alx3.SQL.Add('select * from vwcliente left join pedvenda on pedvenda.cod_cliente = vwcliente.cod_cliente');
      DMESTOQUE.Alx3.SQL.Add(' where pedvenda.cod_pedvenda = :numdocfis');
    end;
  end;
  DMESTOQUE.Alx3.ParamByName('numdocfis').AsInteger := XCODDOC;
  DMESTOQUE.Alx3.Close;

  //Seleciona cidade ,estado e IE do fornecedor/cliente
  DMESTOQUE.Alx4.Close;
  DMESTOQUE.Alx4.SQL.Clear;
  if (XTABELA3 = 'PEDCOMPRA') then
  begin
    DMESTOQUE.Alx4.SQL.Add('select estado.uf_estado,pessoa.cep,pessoaj.insc_est from pessoa left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa left join cidade on cidade.cod_cidade = pessoa.cod_cidade');
    DMESTOQUE.Alx4.SQL.Add(' left join estado on cidade.cod_estado = estado.cod_estado left join fornecedor on fornecedor.cod_pessoa = pessoa.cod_pessoa left join pedcompra');
    DMESTOQUE.Alx4.SQL.Add(' on fornecedor.cod_fornec = pedcompra.cod_fornec left join docfis on docfis.cod_pedido = pedcompra.cod_pedcomp where docfis.cod_pedido = :numdocfis');
  end
  else
  begin
    if (XTABELA3 = 'ORDEM') then
    begin
      DMESTOQUE.Alx4.SQL.Add('select estado.uf_estado,pessoa.cep,pessoaj.insc_est from pessoa left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
      DMESTOQUE.Alx4.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado left join cliente on cliente.cod_pessoa = pessoa.cod_pessoa left join ordem ');
      DMESTOQUE.Alx4.SQL.Add('on cliente.cod_cliente = ordem.cod_cliente inner join docfisord on docfisord.cod_ordem = ordem.cod_ordem where docfisord.cod_ordem = :numdocfis');
    end
    else
    begin
      DMESTOQUE.Alx4.SQL.Add('select estado.uf_estado,pessoa.cep,pessoaj.insc_est from pessoa left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
      DMESTOQUE.Alx4.SQL.Add(' left join estado on cidade.cod_estado = estado.cod_estado left join cliente on cliente.cod_pessoa = pessoa.cod_pessoa left join pedvenda');
      DMESTOQUE.Alx4.SQL.Add(' on cliente.cod_cliente = pedvenda.cod_cliente inner join docfissaida on docfissaida.cod_pedido = pedvenda.cod_pedvenda where docfissaida.cod_pedido = :numdocfis');
    end;
  end;
  DMESTOQUE.Alx4.ParamByName('numdocfis').AsInteger := XCODDOC;
  DMESTOQUE.Alx4.Open;

  //Seleciona dados da transportadora
  DMESTOQUE.Alx5.Close;
  DMESTOQUE.Alx5.SQL.Clear;
  if (XTABELA = 'PEDCOMPRA') then
  begin
    DMESTOQUE.Alx5.SQL.Add('select vwfornec.nome,vwfornec.endereco,vwfornec.cidade from vwfornec right join fornecedor on vwfornec.cod_fornec = fornecedor.cod_fornec');
    DMESTOQUE.Alx5.SQL.Add(' right join docfis on docfis.cod_transp = fornecedor.cod_fornec where docfis.cod_pedido = :numdocfis');
  end
  else
  begin
    if (XTABELA3 = 'ORDEM') then
    begin
      DMESTOQUE.Alx5.SQL.Add('select vwfornec.nome,vwfornec.endereco,vwfornec.cidade from vwfornec right join fornecedor on vwfornec.cod_fornec = fornecedor.cod_fornec');
      DMESTOQUE.Alx5.SQL.Add(' inner join docfisord on docfisord.cod_transp = fornecedor.cod_fornec where docfisord.cod_ordem = :numdocfis');
    end
    else
    begin
      DMESTOQUE.Alx5.SQL.Add('select vwfornec.nome,vwfornec.endereco,vwfornec.cidade from vwfornec right join fornecedor on vwfornec.cod_fornec = fornecedor.cod_fornec');
      DMESTOQUE.Alx5.SQL.Add(' join docfissaida on docfissaida.cod_transp = fornecedor.cod_fornec where docfissaida.cod_pedido = :numdocfis');
    end;
  end;
  DMESTOQUE.Alx5.ParamByName('numdocfis').AsInteger := XCODDOC;
  DMESTOQUE.Alx5.Open;

  //Seleciona UF e IE para transportadora
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  if (XTABELA3 = 'PEDCOMPRA') then
  begin
    DMESTOQUE.Alx.SQL.Add('select pessoaj.insc_est,estado.uf_estado from pessoaj right join pessoa on pessoa.cod_pessoa = pessoaj.cod_pessoa right join fornecedor');
    DMESTOQUE.Alx.SQL.Add(' on fornecedor.cod_pessoa = pessoa.cod_pessoa right join pedcompra on pedcompra.cod_fornec = fornecedor.cod_fornec right join docfis on docfis.cod_transp = fornecedor.cod_fornec right join cidade');
    DMESTOQUE.Alx.SQL.Add(' on cidade.cod_cidade = pessoa.cod_cidade right join estado on estado.cod_estado = cidade.cod_estado where docfis.cod_pedido = :numdocfis;');
  end
  else
  begin
    if (XTABELA3 = 'PEDVENDA') then
    begin
      DMESTOQUE.Alx.SQL.Add('select pessoaj.insc_est,estado.uf_estado from pessoaj right join pessoa on pessoa.cod_pessoa = pessoaj.cod_pessoa right join fornecedor on');
      DMESTOQUE.Alx.SQL.Add('fornecedor.cod_pessoa = pessoa.cod_pessoa right join docfissaida on docfissaida.cod_transp = fornecedor.cod_fornec right join cidade on');
      DMESTOQUE.Alx.SQL.Add('cidade.cod_cidade = pessoa.cod_cidade right join estado on estado.cod_estado = cidade.cod_estado where docfissaida.cod_pedido = :numdocfis');
    end
    else
    begin
      DMESTOQUE.Alx.SQL.Add('select pessoaj.insc_est,estado.uf_estado from pessoaj right join pessoa on pessoa.cod_pessoa = pessoaj.cod_pessoa right join fornecedor on');
      DMESTOQUE.Alx.SQL.Add('fornecedor.cod_pessoa = pessoa.cod_pessoa right join docfisord on docfisord.cod_transp = fornecedor.cod_fornec right join cidade on');
      DMESTOQUE.Alx.SQL.Add('cidade.cod_cidade = pessoa.cod_cidade right join estado on estado.cod_estado = cidade.cod_estado where docfisord.cod_ordem = :numdocfis');
    end;
  end;
  DMESTOQUE.Alx.ParamByName('numdocfis').AsInteger := XCODDOC;
  DMESTOQUE.Alx.Open;

  //Seleciona produtos
  DMSAIDA.TAlx.Close;
  DMSAIDA.TAlx.SQL.Clear;
  if (XTABELA3 = 'PEDCOMPRA') then
  begin
    DMSAIDA.TAlx.SQL.Add('select subproduto.' +
      DMMACS.TLoja.FieldByName('CODPRODREL1').AsString +
      ' AS BARRAS, cst.cod_sit_trib cod_cst,itenspedc.cfop,itenspedc.qtdeprod,itenspedc.valunit,itenspedc.valortotal,itenspedc.baseicms,itenspedc.vlricms,');
    DMSAIDA.TAlx.SQL.Add('itenspedc.vlripi,itenspedc.aliqicms,itenspedc.aliqipi,vwsimilar.descricao,unidade.sigla_unid from itenspedc left join pedcompra');
    DMSAIDA.TAlx.SQL.Add(' on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp right join docfis on docfis.cod_pedido = pedcompra.cod_pedcomp left join vwsimilar on vwsimilar.cod_estoque = itenspedc.cod_estoque');
    DMSAIDA.TAlx.SQL.Add(' left join unidade on unidade.cod_unidade = itenspedc.cod_unidade inner join subproduto on subproduto.cod_subproduto = vwsimilar.cod_subproduto ');
    DMSAIDA.TAlx.SQL.Add(' left join cst ON itenspedc.cod_cst = cst.cod_cst');
    DMSAIDA.TAlx.SQL.Add(' where docfis.cod_pedido =:numdocfis ');
  end
  else
  begin
    if (XTABELA3 = 'PEDVENDA') then
    begin
      DMSAIDA.TAlx.SQL.Add('select subproduto.' +
        DMMACS.TLoja.FieldByName('CODPRODREL1').AsString +
        ' AS BARRAS, cst.cod_sit_trib cod_cst,itenspedven.cfop,itenspedven.qtdeprod,itenspedven.valunit,itenspedven.valortotal,itenspedven.baseicms,itenspedven.vlricms,');
      DMSAIDA.TAlx.SQL.Add('itenspedven.vlripi,itenspedven.aliqicms,itenspedven.aliqipi,vwsimilar.descricao,unidade.sigla_unid from itenspedven left join pedvenda ');
      DMSAIDA.TAlx.SQL.Add('on itenspedven.cod_pedven = pedvenda.cod_pedvenda right join docfissaida on docfissaida.cod_pedido = pedvenda.cod_pedvenda left join vwsimilar on vwsimilar.cod_estoque = itenspedven.cod_estoque ');
      DMSAIDA.TAlx.SQL.Add('left join unidade on unidade.cod_unidade = itenspedven.cod_unidade inner join subproduto on subproduto.cod_subproduto = vwsimilar.cod_subproduto ');
      DMSAIDA.TAlx.SQL.Add(' left join cst ON itenspedven.cod_cst = cst.cod_cst');
      DMSAIDA.TAlx.SQL.Add(' where docfissaida.cod_pedido =:numdocfis ');
    end
    else
    begin
      DMSAIDA.TAlx.SQL.Add('select subproduto.' +
        DMMACS.TLoja.FieldByName('CODPRODREL1').AsString +
        ' AS BARRAS, cst.cod_sit_trib cod_cst,itprodord.cfop,itprodord.qtd AS QTDEPROD,itprodord.vlrunit AS valunit,itprodord.total AS valortotal,itprodord.baseicms,itprodord.vlricms,');
      DMSAIDA.TAlx.SQL.Add('itprodord.vlripi,itprodord.aliqicms,itprodord.aliqipi,vwsimilar.descricao,unidade.sigla_unid from itprodord left join ordem ');
      DMSAIDA.TAlx.SQL.Add('on itprodord.cod_ordem = ordem.cod_ordem right join docfisord on docfisord.cod_ordem = ordem.cod_ordem left join vwsimilar on vwsimilar.cod_estoque = itprodord.cod_estoque ');
      DMSAIDA.TAlx.SQL.Add('left join subproduto on subproduto.cod_subproduto = vwsimilar.cod_subproduto left join unidade on unidade.cod_unidade = subproduto.cod_unidvenda ');
      DMSAIDA.TAlx.SQL.Add(' left join cst ON itprodord.cod_cst = cst.cod_cst');
      DMSAIDA.TAlx.SQL.Add(' where docfisord.cod_ordem =:numdocfis ');
    end;
  end;
  DMSAIDA.TAlx.ParamByName('numdocfis').AsInteger := XCODDOC;
  DMSAIDA.TAlx.Open;

  //Seleciona serviços
  DMBANCO.TAlx.Close;
  DMBANCO.TAlx.SQL.Clear;
  DMBANCO.TAlx.SQL.Add('select despadic.despesa,despadic.qtd,despadic.vlrtotfin from despadic where despadic.cod_gerador = :numdocfis and despadic.gerador = :gerador');
  if (XTABELA3 = 'ORDEM') then
    DMBANCO.TAlx.ParamByName('numdocfis').AsInteger :=
      DMESTOQUE.Alx2.FieldByName('COD_ORDEM').AsInteger
  else
    DMBANCO.TAlx.ParamByName('numdocfis').AsInteger :=
      DMESTOQUE.Alx2.FieldByName('COD_PEDIDO').AsInteger;
  DMBANCO.TAlx.ParamByName('gerador').AsString := XTABELA3;
  DMBANCO.TAlx.Open;

end;

function ImpReciboFatura(Cliente: string; Endereco: string; Valor: string;
  ValorPorExtenso: string; Historico: string; CodPessoa: string; Parcela: string):
  Boolean;
var
  xPosEncontrada: Integer;
begin
  if FMenu.TIPOREL = 'RECIBOFATCONTAMODELO2' then
    BuscaInfoClienteModelo2(CodPessoa);

  xImpReciboCliente := Cliente;
  xImpReciboEndereco := Endereco;
  xImpReciboValor := Valor;
  xImpReciboValorExt := ValorPorExtenso;
  xImpReciboHistorico := Historico;
  //Edmar - 14/04/2014 - Copia da parcela o numero do documento
    //da posição 0 até a posição que a função achou o -
  xImpReciboParcela := Copy(Parcela, 0, StrPosicao('-', Parcela, 1) - 1);
end;

function ImpReciboFaturaContas(COD_GERADOR: Integer; TIPOGERADOR: string;
  TIPOOP: string): Boolean;
begin
  if TIPOGERADOR = 'FATURA' then
  begin
    DMCONTA.TAlx.Close;
    DMCONTA.TAlx.SQL.Clear;
    if (TIPOOP = 'CP') then
    begin
      DMCONTA.TAlx.SQL.Add('select faturaconta.cobranca, ordem.cod_usuario, faturaconta.cod_formpag, faturaconta.cod_usuario, faturaconta.desconto, ');
      DMCONTA.TAlx.SQL.Add('	faturaconta.dtfatura, faturaconta.multa, faturaconta.operacao, faturaconta.vlrtotfatura,ordem.cod_ordem, ctapagar.tipogerador as TIPOGERA,');
      DMCONTA.TAlx.SQL.Add('	parcelacp.dtref as DTREF, parcelacp.dtvenc as DTVENC, parcelacp.valor as VLRPARCELA, parcelacp.numparc as NUMPARC, ctapagar.cod_ctapagar as COD_CONTAS');
      DMCONTA.TAlx.SQL.Add('from faturaconta');
      DMCONTA.TAlx.SQL.Add('	left join itensfaturaconta on faturaconta.cod_faturaconta = itensfaturaconta.cod_faturaconta');
      DMCONTA.TAlx.SQL.Add('	left join parcelacp on itensfaturaconta.cod_parcela = parcelacp.cod_parcelacp');
      DMCONTA.TAlx.SQL.Add('	left join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar');
      DMCONTA.TAlx.SQL.Add('	left join ordem on ctapagar.cod_gerador = ordem.cod_ordem');
      DMCONTA.TAlx.SQL.Add('where (faturaconta.cod_faturaconta=:param) and (faturaconta.operacao =' + #39 + 'CP' + #39 + ')');
    end;
    if (TIPOOP = 'CR') then
    begin
      DMCONTA.TAlx.SQL.Add('select faturaconta.cobranca, ordem.cod_usuario, faturaconta.cod_formpag, faturaconta.cod_usuario, faturaconta.desconto, ctareceber.tipogerador as TIPOGERA, ');
      DMCONTA.TAlx.SQL.Add('	faturaconta.dtfatura, faturaconta.multa, faturaconta.operacao, faturaconta.vlrtotfatura,ordem.cod_ordem,  vwparcr.nome as cliente, ');
      DMCONTA.TAlx.SQL.Add('	parcelacr.dtref as DTREF, parcelacr.dtvenc as DTVENC, parcelacr.valor as VLRPARCELA, parcelacr.numparc as NUMPARC, ctareceber.cod_ctareceber as COD_CONTAS');
      DMCONTA.TAlx.SQL.Add('from faturaconta');
      DMCONTA.TAlx.SQL.Add('	left join itensfaturaconta on faturaconta.cod_faturaconta = itensfaturaconta.cod_faturaconta');
      DMCONTA.TAlx.SQL.Add('	left join parcelacr on itensfaturaconta.cod_parcela = parcelacr.cod_parcelacr');
      DMCONTA.TAlx.SQL.Add('	left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber');
      DMCONTA.TAlx.SQL.Add('	left join ordem on ctareceber.cod_gerador = ordem.cod_ordem');
      DMCONTA.TAlx.SQL.Add('  left join vwparcr on parcelacr.cod_parcelacr = vwparcr.cod_parcelacr ');
      DMCONTA.TAlx.SQL.Add('where (faturaconta.cod_faturaconta=:param) and (faturaconta.operacao =' + #39 + 'CR' + #39 + ')');
    end;
    DMCONTA.TAlx.ParamByName('param').AsInteger := COD_GERADOR;
    DMCONTA.TAlx.Open;
    DMCONTA.TAlx.First;
  end;

  if TIPOGERADOR = 'CONTAS' then
  begin
    DMCONTA.TAlx.Close;
    DMCONTA.TAlx.SQL.Clear;
    if (TIPOOP = 'CP') then
    begin
      DMCONTA.TAlx.SQL.Add('select faturaconta.cobranca, ordem.cod_usuario AS USUARIOORDEM, faturaconta.cod_formpag, faturaconta.cod_usuario, faturaconta.desconto, ');
      DMCONTA.TAlx.SQL.Add('	faturaconta.dtfatura, faturaconta.multa, faturaconta.operacao, faturaconta.vlrtotfatura,ordem.cod_ordem, ctapagar.tipogerador as TIPOGERA,');
      DMCONTA.TAlx.SQL.Add('	parcelacp.dtref as DTREF, parcelacp.dtvenc as DTVENC, parcelacp.valor as VLRPARCELA, parcelacp.numparc as NUMPARC, ctapagar.cod_ctapagar as COD_CONTAS');
      DMCONTA.TAlx.SQL.Add('from faturaconta');
      DMCONTA.TAlx.SQL.Add('	left join itensfaturaconta on faturaconta.cod_faturaconta = itensfaturaconta.cod_faturaconta');
      DMCONTA.TAlx.SQL.Add('	left join parcelacp on itensfaturaconta.cod_parcela = parcelacp.cod_parcelacp');
      DMCONTA.TAlx.SQL.Add('	left join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar');
      DMCONTA.TAlx.SQL.Add('	left join ordem on ctapagar.cod_gerador = ordem.cod_ordem');
      DMCONTA.TAlx.SQL.Add('where (parcelacp.cod_parcelacp=:param) and (faturaconta.operacao =' + #39 + 'CP' + #39 + ')');
    end;
    if (TIPOOP = 'CR') then
    begin
      {
      DMCONTA.TAlx.SQL.Add(' SELECT FATURACONTA.DTFATURA, FORMPAG.DESCRICAO, FATURACONTA.COBRANCA, FATURACONTA.VLRTOTFATURA, VWORDEM.CLIENTE, CTARECEBER.COD_USUARIO, ');
      DMCONTA.TAlx.SQL.Add(' FORMPAG.COD_FORMPAG, FATURACONTA.COD_FATURACONTA, PARCELACR.NUMPARC, PARCELACR.DTREF, PARCELACR.DTVENC, PARCELACR.DESCONTO, PARCELACR.MULTA, ');
      DMCONTA.TAlx.SQL.Add(' PARCELACR.VALOR VLRPARCELA, CTARECEBER.TIPOGERADOR TIPOGERA, CTARECEBER.COD_CTARECEBER COD_CONTAS ');
      DMCONTA.TAlx.SQL.Add(' FROM FATURACONTA ');
      DMCONTA.TAlx.SQL.Add(' LEFT JOIN ITENSFATURACONTA ON ITENSFATURACONTA.COD_FATURACONTA = FATURACONTA.COD_FATURACONTA ');
      DMCONTA.TAlx.SQL.Add(' LEFT JOIN PARCELACR ON PARCELACR.COD_PARCELACR = ITENSFATURACONTA.COD_PARCELA ');
      DMCONTA.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_CTARECEBER = PARCELACR.COD_CTARECEBER ');
      DMCONTA.TAlx.SQL.Add(' LEFT JOIN VWORDEM ON VWORDEM.COD_ORDEM = CTARECEBER.COD_GERADOR ');
      DMCONTA.TAlx.SQL.Add(' LEFT JOIN FORMPAG ON FORMPAG.COD_FORMPAG = FATURACONTA.COD_FORMPAG ');
      DMCONTA.TAlx.SQL.Add(' WHERE FATURACONTA.COD_FATURACONTA = :PARAM ');
      DMCONTA.TAlx.SQL.Add(' ORDER BY NUMPARC ');
      }

      DMCONTA.TAlx.SQL.Add(' SELECT FATURACONTA.DTFATURA, FORMPAG.DESCRICAO, FATURACONTA.COBRANCA, FATURACONTA.VLRTOTFATURA, ');
      DMCONTA.TAlx.SQL.Add(' VWORDEM.CLIENTE, CTARECEBER.COD_USUARIO, FORMPAG.COD_FORMPAG, FATURACONTA.COD_FATURACONTA, ');
      DMCONTA.TAlx.SQL.Add(' PARCELACR.NUMPARC, PARCELACR.DTREF, PARCELACR.DTVENC, PARCELACR.MULTA, ');
      DMCONTA.TAlx.SQL.Add(' PARCELACR.VALOR VLRPARCELA, CTARECEBER.TIPOGERADOR TIPOGERA, CTARECEBER.COD_CTARECEBER COD_CONTAS, ');
      DMCONTA.TAlx.SQL.Add(' (( ');
      DMCONTA.TAlx.SQL.Add(' (select COALESCE(sum(despadic.vlrtotfin), 0) from despadic where despadic.cod_gerador = VWordem.cod_ordem) ');
      DMCONTA.TAlx.SQL.Add(' + ');
      DMCONTA.TAlx.SQL.Add(' (select COALESCE(sum(itprodord.total), 0) from itprodord where itprodord.cod_ordem = VWordem.cod_ordem)) ');
      DMCONTA.TAlx.SQL.Add(' - ');
      DMCONTA.TAlx.SQL.Add(' PARCELACR.VALOR) DESCONTO ');
      DMCONTA.TAlx.SQL.Add(' FROM FATURACONTA ');
      DMCONTA.TAlx.SQL.Add(' LEFT JOIN ITENSFATURACONTA ON ITENSFATURACONTA.COD_FATURACONTA = FATURACONTA.COD_FATURACONTA ');
      DMCONTA.TAlx.SQL.Add(' LEFT JOIN PARCELACR ON PARCELACR.COD_PARCELACR = ITENSFATURACONTA.COD_PARCELA ');
      DMCONTA.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_CTARECEBER = PARCELACR.COD_CTARECEBER ');
      DMCONTA.TAlx.SQL.Add(' LEFT JOIN VWORDEM ON VWORDEM.COD_ORDEM = CTARECEBER.COD_GERADOR ');
      DMCONTA.TAlx.SQL.Add(' LEFT JOIN FORMPAG ON FORMPAG.COD_FORMPAG = FATURACONTA.COD_FORMPAG ');
      DMCONTA.TAlx.SQL.Add(' WHERE FATURACONTA.COD_FATURACONTA = :PARAM ');
      DMCONTA.TAlx.SQL.Add(' ORDER BY NUMPARC ');
    end;
    if DMCONTA.TAlx.Text <> '' then
    begin
      DMCONTA.TAlx.ParamByName('param').AsInteger := COD_GERADOR;
        //DMMACS.TALX.FieldByName('cod_faturaconta').AsInteger;
      DMCONTA.TAlx.Open;
      DMCONTA.TAlx.First;
    end;
  end;
end;

function ImpComprovanteFaturasDados: Boolean;
var
  Desconto, Multa, Valor, Total: string;
  xDesconto, xMulta, xValor, xTotal: Real;
  xTotalPago, xTotalConta: Real;
begin
  try
    if not (DMCONTA.TAlx.IsEmpty) then
    begin
      XColImp := 0;
      if DMCONTA.TAlx.FieldByName('COD_USUARIO').AsString <> '111522' then
        FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO',
          DMCONTA.TAlx.FieldByName('COD_USUARIO').AsString, '');
      FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG',
        IntToStr(DMCONTA.TAlx.FieldByName('cod_formpag').AsInteger), '');
      xTotal := DMCONTA.TAlx.FieldByName('vlrtotfatura').AsFloat;
      Total := FormatFloat('0.00', xTotal);
      //CABECALHO GERAL
      XLinImp := XLinImp + 5;
      Imprime(FMenu.RvFaturas, xLinImp, 5, 'Data da fatura: ' +
        DateToStr(DMCONTA.TAlx.FieldByName('dtfatura').AsDateTime), 'Verdana', 8,
        clBlack, false);
      if DMCONTA.TAlx.FieldByName('COD_USUARIO').AsString <> '111522' then
        Imprime(FMenu.RvFaturas, XLinImp, 50, 'Usuário: ' +
          DMMACS.TUsuario.FieldByName('LOGIN').AsString, 'Verdana', 8, clBlack,
          false)
      else
        Imprime(FMenu.RvFaturas, XLinImp, 50, 'Usuário: Mestre', 'Verdana', 8,
          clBlack, false);

      Imprime(FMenu.RvFaturas, XLinImp, 78, 'Forma Pag.: ' +
        Copy(DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString, 0, 15),
        'Verdana', 8, clBlack, false);
      Imprime(FMenu.RvFaturas, XLinImp, 127, 'Cobrança: ' +
        DMCONTA.TAlx.FieldByName('COBRANCA').AsString, 'Verdana', 8, clBlack,
        false);
      Imprime(FMenu.RvFaturas, XLinImp, 160, 'Total Fatura: ' + Total,
        'Verdana', 9, clBlack, TRUE);
      XLinImp := XLinImp + 1;
      Imprime(FMenu.RvFaturas, XLinImp, 5,
        '____________________________________________________________________________________________________________________________',
        'Verdana', 10, clBlack, true);
      XLinImp := XLinImp + 4;
      Imprime(FMenu.RvFaturas, XLinImp, 5, 'Dívida Renegociada', 'Verdana', 9,
        clBlack, TRUE);
      XLinImp := XLinImp + 1;
      ImpComprovanteFaturasCabecalhoFaturas;
      //enquanto tiver faturas
      DMCONTA.TAlx.First;
      while not (DMCONTA.TAlx.Eof) do
      begin

        xDesconto := DMCONTA.TAlx.FieldByName('DESCONTO').AsFloat;
        xMulta := DMCONTA.TAlx.FieldByName('MULTA').AsFloat;
        xValor := DMCONTA.TAlx.FieldByName('VLRPARCELA').AsFloat;
        Desconto := FormatFloat('0.00', xDesconto);
        Multa := FormatFloat('0.00', xMulta);
        Valor := FormatFloat('0.00', xValor);

        if XLinImp >= 285 then
        begin
          xNumPagina := XNumPagina + 1;
          FMenu.RvFaturas.BaseReport.NewPage;
          XLinImp := 0;
          FMenu.ImpRelCabecalhoPadrao;
          ImpComprovanteFaturasCabecalhoFaturas;
        end;

        XLinImp := XLinImp + 5;
        Imprime(FMenu.RvFaturas, xLinImp, 5,
          DMCONTA.TAlx.FieldByName('NUMPARC').AsString, 'Verdana', 8, clBlack,
          false);
        Imprime(FMenu.RvFaturas, xLinImp, 25,
          DateToStr(DMCONTA.TAlx.FieldByName('DTREF').AsDateTime), 'Verdana', 8,
          clBlack, false);
        Imprime(FMenu.RvFaturas, xLinImp, 50,
          DateToStr(DMCONTA.TAlx.FieldByName('DTVENC').AsDateTime), 'Verdana', 8,
          clBlack, false);
        Imprime(FMenu.RvFaturas, xLinImp, 84, Desconto, 'Verdana', 8, clBlack,
          false);
        Imprime(FMenu.RvFaturas, xLinImp, 107, Multa, 'Verdana', 8, clBlack,
          false);
        Imprime(FMenu.RvFaturas, xLinImp, 127, Valor, 'Verdana', 8, clBlack,
          false);
        DMCONTA.TAlx.Next;
      end;
      XLinImp := XLinImp + 2;
      Imprime(FMenu.RvFaturas, XLinImp, 5,
        '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ _',
        'Verdana', 10, clBlack, true);
    end;
    //CABECALHO ITENS ORD
    if (DMCONTA.TAlx.FieldByName('TIPOGERA').AsString = 'ORD') then
    begin
      if XColImp = 0 then
      begin
        Imprime(FMenu.RvFaturas, XLinImp, 5,
          '____________________________________________________________________________________________________________________________',
          'Verdana', 10, clBlack, true);
        XLinImp := XLinImp + 4;
        Imprime(FMenu.RvFaturas, XLinImp, 5, 'OS Prestados', 'Verdana', 9,
          clBlack, TRUE);
        XLinImp := XLinImp + 1;
        Imprime(FMenu.RvFaturas, XLinImp, 5,
          '____________________________________________________________________________________________________________________________',
          'Verdana', 10, clBlack, true);
        ImpComprovanteFaturasCabecalhoItens;
      end;
      FiltraItens(DMCONTA.TAlx.FieldByName('COD_CONTAS').AsInteger);
      while not (DMServ.TAlx2.eof) do
      begin
        ImpComprovanteFaturasFiltraProdutos(DMServ.TAlx2.FieldByName('COD_ORDEM').AsInteger);
        ImpComprovanteFaturasFiltraServicos(DMServ.TAlx2.FieldByName('COD_ORDEM').AsInteger);
        DMServ.TAlx2.Next;
      end;
    end;
    XLinImp := XLinImp + 2;
    Imprime(FMenu.RvFaturas, XLinImp, 5,
      '____________________________________________________________________________________________________________________________',
      'Verdana', 10, clBlack, true);
    XLinImp := XLinImp + 4;
    Imprime(FMenu.RvFaturas, XLinImp, 5, 'Resultado da Renegociação', 'Verdana',
      9, clBlack, TRUE);
    XLinImp := XLinImp + 1;
    Imprime(FMenu.RvFaturas, XLinImp, 5,
      '____________________________________________________________________________________________________________________________',
      'Verdana', 10, clBlack, true);
    ImpComprovanteFaturasCabecalhoFinancAbert;
    Imprime(FMenu.RvFaturas, XLinImp, 5,
      '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ _',
      'Verdana', 10, clBlack, true);

    DMCONTA.TAlx.First;
    FiltraFinancAbert;
    DMFiscal.TAlx.First;
    xTotalConta := DMFINANC.TAlx.FieldByName('VLRTOTAL').AsCurrency;
    //Edmar - 16/05/2014 - Aqui coloca o while que percorre as linhas das contas
    while not (DMFINANC.TAlx.Eof) do
    begin
      xTotalPago := xTotalPago +
        DMFINANC.TAlx.FieldByName('VLRPAGO').AsCurrency;

      if XLinImp >= 285 then
      begin
        xNumPagina := XNumPagina + 1;
        FMenu.RvFaturas.BaseReport.NewPage;
        XLinImp := 0;
        FMenu.ImpRelCabecalhoPadrao;
        ImpComprovanteFaturasCabecalhoFinancAbert;
      end;

      XLinImp := XLinImp + 5;

      Imprime(FMenu.RvFaturas, xLinImp, 5,
        DMFINANC.TAlx.FieldByName('PARCELA').AsString, 'Verdana', 8, clBlack,
        false);
      Imprime(FMenu.RvFaturas, xLinImp, 30, FormatFloat('0.00',
        DMFINANC.TAlx.FieldByName('VLRTOTAL').AsCurrency), 'Verdana', 8, clBlack,
        false);
      Imprime(FMenu.RvFaturas, xLinImp, 55,
        DMFINANC.TAlx.FieldByName('DTVENCIMENTO').AsString, 'Verdana', 8, clBlack,
        false);
      Imprime(FMenu.RvFaturas, xLinImp, 90, FormatFloat('0.00', (xTotalConta -
        xTotalPago)), 'Verdana', 8, clBlack, false);
      Imprime(FMenu.RvFaturas, xLinImp, 115,
        DMFINANC.TAlx.FieldByName('DTPAGAMENTO').AsString, 'Verdana', 8, clBlack,
        false);
      Imprime(FMenu.RvFaturas, xLinImp, 150, FormatFloat('0.00',
        DMFINANC.TAlx.FieldByName('VLRPAGO').AsCurrency), 'Verdana', 8, clBlack,
        false);
      Imprime(FMenu.RvFaturas, xLinImp, 180,
        DMFINANC.TAlx.FieldByName('COBRANCA').AsString, 'Verdana', 8, clBlack,
        false);

      DMFINANC.TAlx.Next;
    end;
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 5,
      '_________________________________________________________________________________________________________________________________',
      'Verdana', 10, clBlack, true);
    XLinImp := XLinImp + 4;
    Imprime(FMenu.RvFaturas, xLinImp, 5, 'Valor total devido pelo cliente: R$' +
      FormatFloat('0.00', (xTotalConta - xTotalPago)), 'Verdana', 8, clBlack,
      true);
    //Imprimi rodapé
    XLinImp := XLinImp + 2;
    Imprime(FMenu.RvFaturas, XLinImp, 5,
      '_________________________________________________________________________________________________________________________________',
      'Verdana', 10, clBlack, true);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, xLinImp, 80,
      'MZR Sistemas - Sistemas em gestão empresarial ', 'Verdana', 7, clBlack,
      false);
    XLinImp := XLinImp + 2;
    Imprime(FMenu.RvFaturas, xLinImp, 95, 'www.mzrsistemas.com ', 'Verdana', 7,
      clBlack, false);
  except
    Result := False;
  end;
end;

//Matheus - 16/03/2016 - Função utilizada para imprimir dados resumidos da fatura
function ImpComprovanteFaturasDadosResumido: Boolean;
var
  Desconto, Multa, Valor, Total: string;
  xDesconto, xMulta, xValor, xTotal: Real;
  xTotalPago, xTotalConta: Real;
begin
  try
    if not (DMCONTA.TAlx.IsEmpty) then
    begin
      XColImp := 0;
      if DMCONTA.TAlx.FieldByName('COD_USUARIO').AsString <> '111522' then
        FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO',
          DMCONTA.TAlx.FieldByName('COD_USUARIO').AsString, '');

      FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG',
        IntToStr(DMCONTA.TAlx.FieldByName('cod_formpag').AsInteger), '');
      DMCONTA.TAlx.First;
      xTotal := 0;

      while not (DMCONTA.TAlx.Eof) do
      begin
        xTotal := xTotal + DMCONTA.TAlx.FieldByName('VLRPARCELA').AsFloat;

        DMCONTA.TAlx.Next;
      end;

      Total := FormatFloat('0.00', xTotal);
      //CABECALHO GERAL
      XLinImp := XLinImp + 5;
      Imprime(FMenu.RvFaturas, xLinImp, 5, 'Data da fatura: ' +
        DateToStr(DMCONTA.TAlx.FieldByName('dtfatura').AsDateTime), 'Verdana', 8,
        clBlack, false);

      if DMCONTA.TAlx.FieldByName('COD_USUARIO').AsString <> '111522' then
        Imprime(FMenu.RvFaturas, XLinImp, 50, 'Usuário: ' +
          DMMACS.TUsuario.FieldByName('LOGIN').AsString, 'Verdana', 8, clBlack,
          false)
      else
        Imprime(FMenu.RvFaturas, XLinImp, 50, 'Usuário: Mestre', 'Verdana', 8,
          clBlack, false);

      Imprime(FMenu.RvFaturas, XLinImp, 78, 'Forma Pag.: ' +
        Copy(DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString, 0, 15),
        'Verdana', 8, clBlack, false);
      Imprime(FMenu.RvFaturas, XLinImp, 127, 'Cobrança: ' +
        DMCONTA.TAlx.FieldByName('COBRANCA').AsString, 'Verdana', 8, clBlack,
        false);
      Imprime(FMenu.RvFaturas, XLinImp, 160, 'Total Fatura: ' + Total,
        'Verdana', 9, clBlack, TRUE);
      XLinImp := XLinImp + 1;
      Imprime(FMenu.RvFaturas, XLinImp, 5,
        '____________________________________________________________________________________________________________________________',
        'Verdana', 10, clBlack, true);
      XLinImp := XLinImp + 4;
      Imprime(FMenu.RvFaturas, XLinImp, 5, 'Dívida Renegociada', 'Verdana', 9,
        clBlack, TRUE);
      XLinImp := XLinImp + 1;
      ImpComprovanteFaturasCabecalhoFaturas;
      //enquanto tiver faturas
      DMCONTA.TAlx.First;
      while not (DMCONTA.TAlx.Eof) do
      begin
        xDesconto := DMCONTA.TAlx.FieldByName('DESCONTO').AsFloat;
        xMulta := DMCONTA.TAlx.FieldByName('MULTA').AsFloat;
        xValor := DMCONTA.TAlx.FieldByName('VLRPARCELA').AsFloat;
        Desconto := FormatFloat('0.00', xDesconto);
        Multa := FormatFloat('0.00', xMulta);
        Valor := FormatFloat('0.00', xValor);

        if XLinImp >= 285 then
        begin
          xNumPagina := XNumPagina + 1;
          FMenu.RvFaturas.BaseReport.NewPage;
          XLinImp := 0;
          FMenu.ImpRelCabecalhoPadrao;
          ImpComprovanteFaturasCabecalhoFaturas;
        end;

        XLinImp := XLinImp + 5;
        Imprime(FMenu.RvFaturas, xLinImp, 5,
          DMCONTA.TAlx.FieldByName('NUMPARC').AsString, 'Verdana', 8, clBlack,
          false);
        Imprime(FMenu.RvFaturas, xLinImp, 25,
          DateToStr(DMCONTA.TAlx.FieldByName('DTREF').AsDateTime), 'Verdana', 8,
          clBlack, false);
        Imprime(FMenu.RvFaturas, xLinImp, 50,
          DateToStr(DMCONTA.TAlx.FieldByName('DTVENC').AsDateTime), 'Verdana', 8,
          clBlack, false);
        Imprime(FMenu.RvFaturas, xLinImp, 84, Desconto, 'Verdana', 8, clBlack,
          false);
        Imprime(FMenu.RvFaturas, xLinImp, 107, Multa, 'Verdana', 8, clBlack,
          false);
        Imprime(FMenu.RvFaturas, xLinImp, 125, Valor, 'Verdana', 8, clBlack,
          false);
        DMCONTA.TAlx.Next;
      end;
      XLinImp := XLinImp + 2;
      Imprime(FMenu.RvFaturas, XLinImp, 5,
        '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ _',
        'Verdana', 10, clBlack, true);
      //Imprimi rodapé
      XLinImp := XLinImp + 2;
      Imprime(FMenu.RvFaturas, XLinImp, 5,
        '_________________________________________________________________________________________________________________________________',
        'Verdana', 10, clBlack, true);
      XLinImp := XLinImp + 3;
      Imprime(FMenu.RvFaturas, xLinImp, 80,
        'MZR Sistemas - Sistemas em gestão empresarial ', 'Verdana', 7, clBlack,
        false);
      XLinImp := XLinImp + 2;
      Imprime(FMenu.RvFaturas, xLinImp, 95, 'www.mzrsistemas.com ', 'Verdana',
        7, clBlack, false);
    end;
  except
    Result := False;
  end;
end;

//Alex 28/11/2014 - Imprime relatorio geral de movimentações financeiras
function ImpRelGMovFinanceiras: Boolean;
begin
  try
    xNumPagina := 01;
    XNovaPagina := False;
    FMenu.ImpRelCabecalhoPadrao;
    ImpRelGMovFinanceiras_Filtros;
    //Pedido de Compra
    FRelGeralMovimentacoesFinanceiras.CBPedCompra.Checked := True;
    if FRelGeralMovimentacoesFinanceiras.CBPedCompra.Checked = True then
    begin
      ImpRelGMovFinanceiras_PCSintetico;
      if FRelGeralMovimentacoesFinanceiras.CBSeparar.Checked = True then
        ImpRelGMovFinanceiras_PagamentosComprasSintetico;
    end;
    //Pagamentos
    if FRelGeralMovimentacoesFinanceiras.CBPagamentos.Checked = True then
      ImpRelGMovFinanceiras_PagamentosSintetico;
    //Ordens de Serviço
    if FRelGeralMovimentacoesFinanceiras.CBOrdens.Checked = True then
      ImpRelGMovFinanceiras_OSSintetico;
    //Pedido de Venda
    if FRelGeralMovimentacoesFinanceiras.CbPedVenda.Checked = True then
      ImpRelGMovFinanceiras_PVSintetico;
    //Recebimentos
    if FRelGeralMovimentacoesFinanceiras.CBRecebimentos.Checked = True then
      ImpRelGMovFinanceiras_RecebimentosSintetico;
    //Estoque
    if FRelGeralMovimentacoesFinanceiras.CBEstoque.Checked = True then
      ImpRelGMovFinanceiras_EstoqueSintetico;
    //Caixa
    if FRelGeralMovimentacoesFinanceiras.CBCaixa.Checked = True then
      ImpRelGMovFinanceiras_CaixaSintetico;
    //Banco
    if FRelGeralMovimentacoesFinanceiras.CBBanco.Checked = True then
      ImpRelGMovFinanceiras_CtaCorrente;
  except
    Result := False;
    ShowMessage('Erro ao tentar imprimir Relatório Geral de Movimentações Financeiras');
  end;
end;

//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Ordens de Serviço Sintetico
function ImpRelGMovFinanceiras_OSSintetico: Boolean;
var
  XTotProdutosPrevisto, XTotServicosPrevisto, XtotalPrevisto: Real;
  XTotProdutosRealizado, XTotServicosRealizado, XtotalRealizado: Real;
  XTotalCarteira, XTotalCCartao, XTotalDCartao, XTotalCheque, XTotalOutros:
    Real;
begin
  try
    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes a OS A Vista
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select sum(ordem.totprod) as PRODUTOS, Sum(ordem.totserv) as SERVICOS, sum(ordem.totord) as TOTAL from vwordem ');
    DMServ.TAlx1.SQL.Add(' left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
    DMServ.TAlx1.SQL.Add(' where (vwordem.status=''FECHADO'') and (vwordem.dtfech between :Dt1 and :Dt2) and (vwordem.formapag=''À VISTA'') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotProdutosRealizado := DMServ.TAlx1.FieldByNAme('PRODUTOS').AsCurrency;
      XTotServicosRealizado := DMServ.TAlx1.FieldByNAme('SERVICOS').AsCurrency;
      XtotalRealizado := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes a OS A Prazo
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select sum(ordem.totprod) as PRODUTOS, Sum(ordem.totserv) as SERVICOS, sum(ordem.totord) as TOTAL from vwordem ');
    DMServ.TAlx1.SQL.Add(' left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
    DMServ.TAlx1.SQL.Add(' where (vwordem.status=''FECHADO'') and (vwordem.dtfech between :Dt1 and :Dt2) and (vwordem.formapag<>''À VISTA'') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotProdutosPrevisto := DMServ.TAlx1.FieldByNAme('PRODUTOS').AsCurrency;
      XTotServicosPrevisto := DMServ.TAlx1.FieldByNAme('SERVICOS').AsCurrency;
      XtotalPrevisto := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;

    //Alex 01/12/2014: Sql para filtrar OS  a vista em Carteira
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(ordem.totprod) as PRODUTOS, Sum(ordem.totserv) as SERVICOS, sum(ordem.totord) as TOTAL from vwordem ');
    DMServ.TAlx1.SQL.Add('   left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
    DMServ.TAlx1.SQL.Add('   where (vwordem.tipopag=''Carteira'') and (vwordem.status=''FECHADO'') and (vwordem.dtfech between :Dt1 and :Dt2) ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCarteira := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    //Alex 01/12/2014: Sql para filtrar OS  a vista em Cartões de Crédito
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(ordem.totprod) as PRODUTOS, Sum(ordem.totserv) as SERVICOS, sum(ordem.totord) as TOTAL from vwordem ');
    DMServ.TAlx1.SQL.Add('   left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
    DMServ.TAlx1.SQL.Add('   where (vwordem.tipopag=''C - Cartão'') and (vwordem.status=''FECHADO'') and (vwordem.dtfech between :Dt1 and :Dt2) ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCCartao := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    //Alex 01/12/2014: Sql para filtrar OS  a vista em Cartões de Débito
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(ordem.totprod) as PRODUTOS, Sum(ordem.totserv) as SERVICOS, sum(ordem.totord) as TOTAL from vwordem ');
    DMServ.TAlx1.SQL.Add('   left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
    DMServ.TAlx1.SQL.Add('   where (vwordem.tipopag=''D - Cartão'') and (vwordem.status=''FECHADO'') and (vwordem.dtfech between :Dt1 and :Dt2) ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalDCartao := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    //Alex 01/12/2014: Sql para filtrar OS  a vista em Cheques
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(ordem.totprod) as PRODUTOS, Sum(ordem.totserv) as SERVICOS, sum(ordem.totord) as TOTAL from vwordem ');
    DMServ.TAlx1.SQL.Add('   left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
    DMServ.TAlx1.SQL.Add('   where (vwordem.tipopag=''Cheque'') and (vwordem.status=''FECHADO'') and (vwordem.dtfech between :Dt1 and :Dt2) ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCheque := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;

    XTotalOutros := (XtotalPrevisto + XtotalRealizado) - XTotalCarteira -
      XTotalCheque - XTotalCCartao - XTotalDCartao;

    //Impressão do Resultado
    XLinImp := XLinImp + 4;
    Imprime(FMenu.RvFaturas, XLinImp, 100, 'A Prazo: ', 'Courier New', 11,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, 'A Vista: ', 'Courier New', 11,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, 'Total: ', 'Courier New', 11,
      clBlack, false);
    //Total de Ordens
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 005, '(+) Ordens de Serviço: ',
      'Courier New', 11, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XtotalPrevisto), 'Courier New', 10, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XtotalRealizado), 'Courier New', 10, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XtotalPrevisto + XtotalRealizado), 'Courier New', 10, clBlack, true);
    //Total de Produtos
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 15, 'Produtos:', 'Courier New', 11,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotProdutosPrevisto), 'Courier New', 10, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotProdutosRealizado), 'Courier New', 10, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotProdutosPrevisto + XTotProdutosRealizado), 'Courier New', 10, clBlack,
      false);
    //Total de Serviços
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 15, 'Serviços:', 'Courier New', 11,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotServicosPrevisto), 'Courier New', 10, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotServicosRealizado), 'Courier New', 10, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotServicosPrevisto + XTotServicosRealizado), 'Courier New', 10, clBlack,
      false);
    //Formas de pagamento
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Formas de Pagamento:', 'Courier New',
      09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Carteira:', 'Courier New', 09,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCarteira), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cheques:', 'Courier New', 09,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCheque), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cartão de Crédito:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCCartao), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cartão de Débito:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalDCartao), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Outros Pagamentos:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalOutros), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 5,
      '......................................................................................................................................................',
      'Verdana', 10, clBlack, true);

  except

  end;
end;

//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Pedido de Venda Sintetico
function ImpRelGMovFinanceiras_PVSintetico: Boolean;
var
  XPVSinteticoPrevisto, XPVSinteticoRealizado: Real;
  XTotalCarteira, XTotalCCartao, XTotalDCartao, XTotalCheque, XTotalOutros:
    Real;
begin
  try
    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes a OS A Vista
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(vwpedv.valor) as TOTAL from vwpedv ');
    DMServ.TAlx1.SQL.Add('   where (vwpedv.situacao=''FECHADO'') and (vwpedv.dtpedven between :Dt1 and :Dt2) and (vwpedv.formpag=''À VISTA'') and (vwpedv.tipo=''VND'') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XPVSinteticoRealizado := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency
    end;
    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes a OS A Vista
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(vwpedv.valor) as TOTAL from vwpedv ');
    DMServ.TAlx1.SQL.Add('   where (vwpedv.situacao=''FECHADO'') and (vwpedv.dtpedven between :Dt1 and :Dt2) and (vwpedv.formpag<>''À VISTA'') and (vwpedv.tipo=''VND'') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XPVSinteticoPrevisto := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;

    //Alex 01/12/2014: Sql para filtrar OS  a vista em Carteira
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(vwpedv.valor) as TOTAL from vwpedv ');
    DMServ.TAlx1.SQL.Add('   where  (vwpedv.cobranca=''Carteira'') and (vwpedv.situacao=''FECHADO'') and (vwpedv.dtpedven between :Dt1 and :Dt2) and (vwpedv.tipo=''VND'') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCarteira := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    //Alex 01/12/2014: Sql para filtrar OS  a vista em Cartões de Crédito
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(vwpedv.valor) as TOTAL from vwpedv ');
    DMServ.TAlx1.SQL.Add('   where  (vwpedv.cobranca=''C - Cartão'') and (vwpedv.situacao=''FECHADO'') and (vwpedv.dtpedven between :Dt1 and :Dt2) and (vwpedv.tipo=''VND'') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCCartao := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    //Alex 01/12/2014: Sql para filtrar OS  a vista em Cartões de Débito
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(vwpedv.valor) as TOTAL from vwpedv ');
    DMServ.TAlx1.SQL.Add('   where  (vwpedv.cobranca=''D - Cartão'') and (vwpedv.situacao=''FECHADO'') and (vwpedv.dtpedven between :Dt1 and :Dt2) and (vwpedv.tipo=''VND'') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalDCartao := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    //Alex 01/12/2014: Sql para filtrar OS  a vista em Cheques
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(vwpedv.valor) as TOTAL from vwpedv ');
    DMServ.TAlx1.SQL.Add('   where  (vwpedv.cobranca=''Cheque'') and (vwpedv.situacao=''FECHADO'') and (vwpedv.dtpedven between :Dt1 and :Dt2) and (vwpedv.tipo=''VND'') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCheque := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;

    XTotalOutros := (XPVSinteticoPrevisto + XPVSinteticoRealizado) -
      XTotalCarteira - XTotalCheque - XTotalCCartao - XTotalDCartao;

    //Impressão do Resultado
    XLinImp := XLinImp + 4;
    Imprime(FMenu.RvFaturas, XLinImp, 100, 'A Prazo: ', 'Courier New', 11,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, 'A Vista: ', 'Courier New', 11,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, 'Total: ', 'Courier New', 11,
      clBlack, false);
    //Total de PV
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 005, '(+) Pedidos de Venda: ',
      'Courier New', 11, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XPVSinteticoPrevisto), 'Courier New', 10, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XPVSinteticoRealizado), 'Courier New', 10, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XPVSinteticoPrevisto + XPVSinteticoRealizado), 'Courier New', 10, clBlack,
      true);

    //Formas de pagamento
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Formas de Pagamento:', 'Courier New',
      09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Carteira:', 'Courier New', 09,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCarteira), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cheques:', 'Courier New', 09,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCheque), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cartão de Crédito:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCCartao), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cartão de Débito:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalDCartao), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Outros Pagamentos:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalOutros), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 5,
      '......................................................................................................................................................',
      'Verdana', 10, clBlack, true);
  except

  end;
end;

//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Pedido de Venda Sintetico
function ImpRelGMovFinanceiras_PCSintetico: Boolean;
var
  XPCSinteticoPrevisto, XPCSinteticoRealizado: Real;
  XTotalCarteira, XTotalCCartao, XTotalDCartao, XTotalCheque, XTotalOutros:
    Real;
begin
  try
    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes a compras A Vista
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(vwpedc.valor) as TOTAL from vwpedc ');
    DMServ.TAlx1.SQL.Add('   where (vwpedc.dtpedcomp between :Dt1 and :Dt2) and (vwpedc.formpag=''À VISTA'') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XPcSinteticoRealizado := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency
    end;
    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes a compras A Prazo
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(vwpedc.valor) as TOTAL from vwpedc ');
    DMServ.TAlx1.SQL.Add('   where (vwpedc.dtpedcomp between :Dt1 and :Dt2) and (vwpedc.formpag<>''À VISTA'') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XPcSinteticoPrevisto := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;

    //Alex 01/12/2014: Sql para filtrar Compras em Carteira
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(vwpedc.valor) as TOTAL from vwpedc ');
    DMServ.TAlx1.SQL.Add('   where  (vwpedc.cobranca=''Carteira'') and (vwpedc.dtpedcomp between :Dt1 and :Dt2)');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCarteira := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    //Alex 01/12/2014: Sql para filtrar Compras em Cartões de Crédito
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(vwpedc.valor) as TOTAL from vwpedc ');
    DMServ.TAlx1.SQL.Add('   where  (vwpedc.cobranca=''C - Cartão'') and (vwpedc.dtpedcomp between :Dt1 and :Dt2)');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCCartao := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    //Alex 01/12/2014: Sql para filtrar Compras em Cartões de Débito
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(vwpedc.valor) as TOTAL from vwpedc ');
    DMServ.TAlx1.SQL.Add('   where  (vwpedc.cobranca=''D - Cartão'') and (vwpedc.dtpedcomp between :Dt1 and :Dt2)  ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalDCartao := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    //Alex 01/12/2014: Sql para filtrar compras em Cheques
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('  Select sum(vwpedc.valor) as TOTAL from vwpedc ');
    DMServ.TAlx1.SQL.Add('   where  (vwpedc.cobranca=''Cheque'') and (vwpedc.dtpedcomp between :Dt1 and :Dt2)  ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCheque := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;

    XTotalOutros := (XPcSinteticoPrevisto + XPcSinteticoRealizado) -
      XTotalCarteira - XTotalCheque - XTotalCCartao - XTotalDCartao;

    //Impressão do Resultado
    XLinImp := XLinImp + 4;
    Imprime(FMenu.RvFaturas, XLinImp, 100, 'A Prazo: ', 'Courier New', 11,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, 'A Vista: ', 'Courier New', 11,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, 'Total: ', 'Courier New', 11,
      clBlack, false);
    //Total de PV
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 005, '(-) Pedidos de Compra: ',
      'Courier New', 11, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XPcSinteticoPrevisto), 'Courier New', 10, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XPcSinteticoRealizado), 'Courier New', 10, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XPcSinteticoPrevisto + XPCSinteticoRealizado), 'Courier New', 10, clBlack,
      true);

    //Formas de pagamento
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Formas de Pagamento:', 'Courier New',
      09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Carteira:', 'Courier New', 09,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCarteira), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cheques:', 'Courier New', 09,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCheque), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cartão de Crédito:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCCartao), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cartão de Débito:', 'Courier New',
      10, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalDCartao), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Outros Pagamentos:', 'Courier New',
      10, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalOutros), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 5,
      '......................................................................................................................................................',
      'Verdana', 10, clBlack, true);
  except

  end;
end;

//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Estoque Sintetico
function ImpRelGMovFinanceiras_EstoqueSintetico: Boolean;
begin
  try
    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes ao Estoque
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('      Select Sum(vwsimilar.estfisico) as Estoque, Sum(vwsimilar.vlrunitcompra*vwsimilar.estfisico) as COMPRA, Sum(vwsimilar.vendvarv*vwsimilar.estfisico) AS VENDA from vwsimilar ');
    DMServ.TAlx1.SQL.Add('         WHERE (vwsimilar.cod_loja=:CodigoLoja) and ((vwsimilar.ativo = ''S'') or (vwsimilar.ATIVO is null)) and (vwsimilar.estfisico>0) ');
    DMServ.TAlx1.ParamByName('CodigoLoja').AsString := FMenu.LCODLOJA.Caption;
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      //Impressão do Resultado
      XLinImp := XLinImp + 4;
      Imprime(FMenu.RvFaturas, XLinImp, 100, 'Qtd. Est.: ', 'Courier New', 11,
        clBlack, false);
      Imprime(FMenu.RvFaturas, XLinImp, 130, 'Vlr. Compra: ', 'Courier New', 11,
        clBlack, false);
      Imprime(FMenu.RvFaturas, XLinImp, 170, 'Vlr. Venda: ', 'Courier New', 11,
        clBlack, false);
      //Total de PV
      XLinImp := XLinImp + 3;
      Imprime(FMenu.RvFaturas, XLinImp, 005, '( ) Posição Geral de Estoque: ',
        'Courier New', 11, clBlack, true);
      Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
        DMServ.TAlx1.FieldByName('Estoque').AsCurrency), 'Courier New', 10,
        clBlack, true);
      Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
        DMServ.TAlx1.FieldByName('COMPRA').AsCurrency), 'Courier New', 10,
        clBlack, true);
      Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
        DMServ.TAlx1.FieldByName('VENDA').AsCurrency), 'Courier New', 10, clBlack,
        true);
      XLinImp := XLinImp + 3;
      Imprime(FMenu.RvFaturas, XLinImp, 5,
        '......................................................................................................................................................',
        'Verdana', 10, clBlack, true);
    end;

  except

  end;
end;

//Alex 01/12/2014 - Função para retornar o Saldo correto do caixa para o relatório
function ImpRelGMovFinanceiras_CaixaSintetico_Saldo(xCodCaixa: Integer): Real;
var
  Entradas, Saidas, SaldoAnt: Real;
begin
  try
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('SELECT abcaixa.dtfecha, abcaixa.fechado, abcaixa.cod_caixa, abcaixa.saldofin, abcaixa.saldoini, HoraFecha FROM ABCAIXA Where (COD_ABCAIXA=:Caixa) Order By DTFecha Desc, HoraFecha Desc');
    DMCAIXA.TAlx.ParamByName('Caixa').AsInteger := xCodCaixa;
    DMCAIXA.TAlx.Open;

    //Mostra saldo inicial
    if DMCAIXA.TAlx.FieldByName('FECHADO').AsString = 'S' then
    begin
      Result := DMCAIXA.TAlx.FieldByName('SaldoFin').AsCurrency;
    end
    else
    begin
      SaldoIni := DMCAIXA.TAlx.FieldByName('SaldoIni').AsCurrency;

      //Calculas entradas em caixa
      DMCAIXA.TAlx.Close;
      DMCAIXA.TAlx.SQL.Clear;
      DMCAIXA.TAlx.SQL.Add('SELECT SUM(VALOR) As SOMA FROM vwlancaixa Where (TipcAI=:Tipo) And (COD_ABCAIXA=:CodigoAbCaixa)');
      DMCAIXA.TAlx.ParamByName('Tipo').AsString := 'E';
      DMCAIXA.TAlx.ParamByName('CodigoAbCaixa').AsInteger := xCodCaixa;
      DMCAIXA.TAlx.Open;
      if DMCAIXA.TAlx.FieldByName('SOMA').AsString = '' then
        Entradas := 0
      else
        Entradas := DMCAIXA.TAlx.FieldByName('SOMA').Value;

      //Calculas Saídas de caixa
      DMCAIXA.TAlx.Close;
      DMCAIXA.TAlx.SQL.Clear;
      DMCAIXA.TAlx.SQL.Add('SELECT SUM(VALOR) As SOMA FROM vwlancaixa Where (TipcAI=:Tipo)  And (COD_ABCAIXA=:CodigoAbCaixa)');
      DMCAIXA.TAlx.ParamByName('Tipo').AsString := 'S';
      DMCAIXA.TAlx.ParamByName('CodigoAbCaixa').AsInteger := xCodCaixa;
      DMCAIXA.TAlx.Open;
      if DMCAIXA.TAlx.FieldByName('SOMA').AsString = '' then
        Saidas := 0
      else
        Saidas := DMCAIXA.TAlx.FieldByName('SOMA').Value;

      //Mostra resultado de saldo na tela
      Result := SaldoIni + Entradas - Saidas;
    end;
  except
    Result := 0;
  end;
end;

//Alex 01/12/2014 - Função para retornar o Saldo correto da cta corrente para o relatório
function ImpRelGMovFinanceiras_CtaCorrente_Saldo(xCodCaixa: Integer): Real;
var
  Entradas, Saidas, SaldoAnt: Real;
begin
  try
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('  SELECT abbanco.dtfech, abbanco.fechado, abbanco.cod_ctacor, abbanco.saldofin, abbanco.saldoini FROM abbanco Where (abbanco.cod_abbanco=:Caixa) Order By abbanco.dtfech Desc ');
    DMCAIXA.TAlx.ParamByName('Caixa').AsInteger := xCodCaixa;
    DMCAIXA.TAlx.Open;

    //Mostra saldo inicial
    if DMCAIXA.TAlx.FieldByName('FECHADO').AsString = 'S' then
    begin
      Result := DMCAIXA.TAlx.FieldByName('SaldoFin').AsCurrency;
    end
    else
    begin
      SaldoIni := DMCAIXA.TAlx.FieldByName('SaldoIni').AsCurrency;

      //Calculas entradas em caixa
      DMCAIXA.TAlx.Close;
      DMCAIXA.TAlx.SQL.Clear;
      DMCAIXA.TAlx.SQL.Add('   SELECT SUM(vwmovbanco.valor) As SOMA FROM vwmovbanco Where (vwmovbanco.tipoop=:Tipo) And (vwmovbanco.cod_abbanco=:CodigoAbCaixa) ');
      DMCAIXA.TAlx.ParamByName('Tipo').AsString := 'ENTRADA';
      DMCAIXA.TAlx.ParamByName('CodigoAbCaixa').AsInteger := xCodCaixa;
      DMCAIXA.TAlx.Open;
      if DMCAIXA.TAlx.FieldByName('SOMA').AsString = '' then
        Entradas := 0
      else
        Entradas := DMCAIXA.TAlx.FieldByName('SOMA').Value;

      //Calculas Saídas de caixa
      DMCAIXA.TAlx.Close;
      DMCAIXA.TAlx.SQL.Clear;
      DMCAIXA.TAlx.SQL.Add('    SELECT SUM(vwmovbanco.valor) As SOMA FROM vwmovbanco Where (vwmovbanco.tipoop=:Tipo) And (vwmovbanco.cod_abbanco=:CodigoAbCaixa)  ');
      DMCAIXA.TAlx.ParamByName('Tipo').AsString := 'SAIDA';
      DMCAIXA.TAlx.ParamByName('CodigoAbCaixa').AsInteger := xCodCaixa;
      DMCAIXA.TAlx.Open;
      if DMCAIXA.TAlx.FieldByName('SOMA').AsString = '' then
        Saidas := 0
      else
        Saidas := DMCAIXA.TAlx.FieldByName('SOMA').Value;

      //Mostra resultado de saldo na tela
      Result := SaldoIni + Entradas - Saidas;
    end;
  except
    Result := 0;
  end;
end;

//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Conta Corrente
function ImpRelGMovFinanceiras_CtaCorrente: Boolean;
var
  XCodTmp, XCodAbcaixa: Integer;
  XVlrTotalCaixa, XResultadoCx: Real;
begin
  try
    //Prepara tabela tmp para receber pré informações
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add(' delete from tmp');
    DMMACS.TMP.ExecSQL;
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add(' Select * from tmp');
    DMMACS.TMP.Open;
    XCodTmp := 1;
    XVlrTotalCaixa := 0;
    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes ao Estoque
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('      Select * from vwctacor ');
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      while not DMServ.TAlx1.Eof do
      begin
        //Filtro abcaixas fechado para tentarmos pegar a melhor data
        DMServ.TAlx2.Close;
        DMServ.TAlx2.SQL.Clear;
        DMServ.TAlx2.SQL.Add('  Select * from abbanco where (abbanco.dtfech<=:Periodo) and (abbanco.cod_ctacor=:CodigoCaixa) and (abbanco.fechado=''S'')');
        DMServ.TAlx2.SQL.Add('   order by abbanco.dtfech desc ');
        DMServ.TAlx2.ParamByName('CodigoCaixa').AsInteger :=
          DMServ.TAlx1.FieldByName('cod_ctacor').AsInteger;
        DMServ.TAlx2.ParamByName('Periodo').AsDateTime :=
          StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
        DMServ.TAlx2.Open;
        //Filtro abcaixas aberto para tentarmos pegar a melhor data
        DMServ.TAlx3.Close;
        DMServ.TAlx3.SQL.Clear;
        DMServ.TAlx3.SQL.Add('  Select * from abbanco where (abbanco.data_abert<=:Periodo) and (abbanco.cod_ctacor=:CodigoCaixa) and (abbanco.fechado=''N'')');
        DMServ.TAlx3.SQL.Add('   order by abbanco.data_abert desc ');
        DMServ.TAlx3.ParamByName('CodigoCaixa').AsInteger :=
          DMServ.TAlx1.FieldByName('cod_ctacor').AsInteger;
        DMServ.TAlx3.ParamByName('Periodo').AsDateTime :=
          StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
        DMServ.TAlx3.Open;
        //Determina qual o melhor abcaixa a pegar
        if (DMServ.TAlx2.FieldByName('dtfech').AsDateTime >
          DMServ.TAlx3.FieldByName('data_abert').AsDateTime) then
          XCodAbcaixa := DMServ.TAlx2.FieldByName('cod_abbanco').AsInteger
        else
          XCodAbcaixa := DMServ.TAlx3.FieldByName('cod_abbanco').AsInteger;

        if not DMServ.TAlx2.IsEmpty then
        begin
          DMMACS.TMP.Insert;
          DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCodTmp;
          DMMACS.TMP.FieldByName('DESC1').AsString :=
            DMServ.TAlx1.FieldByName('DESCBANCO').AsString;
          XResultadoCx := ImpRelGMovFinanceiras_CtaCorrente_Saldo(XCodAbcaixa);
          DMMACS.TMP.FieldByName('VLR1').AsCurrency := XResultadoCx;
          DMMACS.TMP.Post;
          XVlrTotalCaixa := XVlrTotalCaixa + XResultadoCx;
        end;
        DMServ.TAlx1.Next;
      end;
      DMMACS.Transaction.CommitRetaining;
      DMMACS.TMP.Close;
      DMMACS.TMP.SQL.Clear;
      DMMACS.TMP.SQL.Add(' Select * from tmp ');
      DMMACS.TMP.Open;

      //Impressão do Resultado
      XLinImp := XLinImp + 4;
      Imprime(FMenu.RvFaturas, XLinImp, 005, '(+) Posição Geral de Bancos: ',
        'Courier New', 11, clBlack, true);
      Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
        XVlrTotalCaixa), 'Courier New', 10, clBlack, true);
      //Formas de pagamento
      XLinImp := XLinImp + 3;
      Imprime(FMenu.RvFaturas, XLinImp, 25,
        'Saldo Individual por Ctas Corrente:', 'Courier New', 09, clBlack, false);
      DMMACS.TMP.First;
      while not DMMACS.TMP.Eof do
      begin
        XLinImp := XLinImp + 3;
        Imprime(FMenu.RvFaturas, XLinImp, 25,
          DMMACS.TMP.FieldByName('DESC1').asstring, 'Courier New', 09, clBlack,
          false);
        Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
          DMMACS.TMP.FieldByName('VLR1').AsCurrency), 'Courier New', 09, clBlack,
          false);
        DMMACS.TMP.Next;
      end;
      XLinImp := XLinImp + 3;
      Imprime(FMenu.RvFaturas, XLinImp, 5,
        '......................................................................................................................................................',
        'Verdana', 10, clBlack, true);
    end;
  except

  end;
end;

//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Lançamento de Caixas
function ImpRelGMovFinanceiras_CaixaSintetico: Boolean;
var
  XCodTmp, XCodAbcaixa: Integer;
  XVlrTotalCaixa, XResultadoCx: Real;
begin
  try
    //Prepara tabela tmp para receber pré informações
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add(' delete from tmp');
    DMMACS.TMP.ExecSQL;
    DMMACS.TMP.Close;
    DMMACS.TMP.SQL.Clear;
    DMMACS.TMP.SQL.Add(' Select * from tmp');
    DMMACS.TMP.Open;
    XCodTmp := 1;
    XVlrTotalCaixa := 0;
    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes ao Estoque
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('      Select * from caixa ');
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      while not DMServ.TAlx1.Eof do
      begin
        //Filtro abcaixas fechado para tentarmos pegar a melhor data
        DMServ.TAlx2.Close;
        DMServ.TAlx2.SQL.Clear;
        DMServ.TAlx2.SQL.Add(' Select * from abcaixa where (abcaixa.dtfecha<=:Periodo) and (abcaixa.cod_caixa=:CodigoCaixa) and (abcaixa.fechado=''S'') ');
        DMServ.TAlx2.SQL.Add(' order by abcaixa.dtfecha desc ');
        DMServ.TAlx2.ParamByName('CodigoCaixa').AsInteger :=
          DMServ.TAlx1.FieldByName('cod_caixa').AsInteger;
        DMServ.TAlx2.ParamByName('Periodo').AsDateTime :=
          StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
        DMServ.TAlx2.Open;
        //Filtro abcaixas aberto para tentarmos pegar a melhor data
        DMServ.TAlx3.Close;
        DMServ.TAlx3.SQL.Clear;
        DMServ.TAlx3.SQL.Add(' Select * from abcaixa where (abcaixa.dtabertura<=:Periodo) and (abcaixa.cod_caixa=:CodigoCaixa) and (abcaixa.fechado=''N'') ');
        DMServ.TAlx3.SQL.Add(' order by abcaixa.dtabertura desc ');
        DMServ.TAlx3.ParamByName('CodigoCaixa').AsInteger :=
          DMServ.TAlx1.FieldByName('cod_caixa').AsInteger;
        DMServ.TAlx3.ParamByName('Periodo').AsDateTime :=
          StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
        DMServ.TAlx3.Open;
        //Determina qual o melhor abcaixa a pegar
        if (DMServ.TAlx2.FieldByName('dtfecha').AsDateTime >
          DMServ.TAlx3.FieldByName('dtabertura').AsDateTime) then
          XCodAbcaixa := DMServ.TAlx2.FieldByName('cod_abcaixa').AsInteger
        else
          XCodAbcaixa := DMServ.TAlx3.FieldByName('cod_abcaixa').AsInteger;

        if not DMServ.TAlx2.IsEmpty then
        begin
          DMMACS.TMP.Insert;
          DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCodTmp;
          DMMACS.TMP.FieldByName('DESC1').AsString :=
            DMServ.TAlx1.FieldByName('DESCRICAO').AsString;
          XResultadoCx :=
            ImpRelGMovFinanceiras_CaixaSintetico_Saldo(XCodAbcaixa);
          DMMACS.TMP.FieldByName('VLR1').AsCurrency := XResultadoCx;
          DMMACS.TMP.Post;
          XVlrTotalCaixa := XVlrTotalCaixa + XResultadoCx;
        end;
        DMServ.TAlx1.Next;
      end;
      DMMACS.Transaction.CommitRetaining;
      DMMACS.TMP.Close;
      DMMACS.TMP.SQL.Clear;
      DMMACS.TMP.SQL.Add(' Select * from tmp ');
      DMMACS.TMP.Open;

      //Impressão do Resultado
      XLinImp := XLinImp + 4;
      Imprime(FMenu.RvFaturas, XLinImp, 005, '(+) Posição Geral dos Caixas: ',
        'Courier New', 11, clBlack, true);
      Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
        XVlrTotalCaixa), 'Courier New', 10, clBlack, true);
      //Formas de pagamento
      XLinImp := XLinImp + 3;
      Imprime(FMenu.RvFaturas, XLinImp, 25, 'Saldo Individual de Caixas:',
        'Courier New', 09, clBlack, false);
      DMMACS.TMP.First;
      while not DMMACS.TMP.Eof do
      begin
        XLinImp := XLinImp + 3;
        Imprime(FMenu.RvFaturas, XLinImp, 25,
          DMMACS.TMP.FieldByName('DESC1').asstring, 'Courier New', 09, clBlack,
          false);
        Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
          DMMACS.TMP.FieldByName('VLR1').AsCurrency), 'Courier New', 09, clBlack,
          false);
        DMMACS.TMP.Next;
      end;

      XLinImp := XLinImp + 3;
      Imprime(FMenu.RvFaturas, XLinImp, 5,
        '......................................................................................................................................................',
        'Verdana', 10, clBlack, true);
    end;
  except

  end;
end;

//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Recebimentos Sintetico
function ImpRelGMovFinanceiras_RecebimentosSintetico: Boolean;
var
  XRecebimentosSinteticoPrevisto, XRecebimentosSinteticoRealizado, Xtotal: Real;
  XTotalCarteiraReal, XTotalCCartaoReal, XTotalDCartaoReal, XTotalChequeReal,
    XTotalOutrosReal: Real;
  XTotalCarteiraPrev, XTotalCCartaoPrev, XTotalDCartaoPrev, XTotalChequePrev,
    XTotalOutrosPrev: Real;
begin
  try
    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes os recebimentos no período
    ///////////////////////
    //BAIXADOS - REALIZADOS
    ///////////////////////
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcr.valorpg) as TOTAL from vwparcr ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcr.fech=''S'') and (vwparcr.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ')  ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XRecebimentosSinteticoRealizado :=
        DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcr.valorpg) as TOTAL from vwparcr ');
    DMServ.TAlx1.SQL.Add(' Where ((vwparcr.cobranca=''Carteira'') or (vwparcr.cobranca=''FATURA'')) and (vwparcr.fech=''S'') and (vwparcr.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ')  ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCarteiraReal := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcr.valorpg) as TOTAL from vwparcr ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcr.cobranca=''C - Cartão'') and (vwparcr.fech=''S'') and (vwparcr.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCCartaoReal := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcr.valorpg) as TOTAL from vwparcr ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcr.cobranca=''D - Cartão'') and (vwparcr.fech=''S'') and (vwparcr.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalDCartaoReal := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcr.valorpg) as TOTAL from vwparcr ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcr.cobranca=''Cheque'') and (vwparcr.fech=''S'') and (vwparcr.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ')  ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalChequeReal := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    XTotalOutrosReal := XRecebimentosSinteticoRealizado - XTotalCarteiraReal -
      XTotalCCartaoReal - XTotalDCartaoReal - XTotalChequeReal;

    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes o aos recebimentos em aberto no período
    ////////////////////////
    // PENDENTES - EM ABERTO
    ////////////////////////
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcr.valor) as TOTAL from vwparcr ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcr.fech=''N'') and (vwparcr.dtvenc between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XRecebimentosSinteticoPrevisto :=
        DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcr.valorpg) as TOTAL from vwparcr ');
    DMServ.TAlx1.SQL.Add(' Where ((vwparcr.cobranca=''Carteira'') or (vwparcr.cobranca=''FATURA'')) and (vwparcr.fech=''N'') and (vwparcr.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCarteiraPrev := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcr.valorpg) as TOTAL from vwparcr ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcr.cobranca=''C - Cartão'') and (vwparcr.fech=''N'') and (vwparcr.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCCartaoPrev := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcr.valorpg) as TOTAL from vwparcr ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcr.cobranca=''D - Cartão'') and (vwparcr.fech=''N'') and (vwparcr.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalDCartaoPrev := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcr.valorpg) as TOTAL from vwparcr ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcr.cobranca=''Cheque'') and (vwparcr.fech=''N'') and (vwparcr.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ')  ');
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalChequePrev := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    XTotalOutrosPrev := XRecebimentosSinteticoPrevisto - XTotalCarteiraPrev -
      XTotalCCartaoPrev - XTotalDCartaoPrev - XTotalChequePrev;

    //Impressão do Resultado
    XLinImp := XLinImp + 4;
    Imprime(FMenu.RvFaturas, XLinImp, 100, 'A Receber: ', 'Courier New', 11,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, 'Recebido: ', 'Courier New', 11,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, 'Total: ', 'Courier New', 11,
      clBlack, false);
    //Total de PV
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 005, '(+) Recebimentos de Clientes: ',
      'Courier New', 11, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XRecebimentosSinteticoPrevisto), 'Courier New', 10, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XRecebimentosSinteticoRealizado), 'Courier New', 10, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XRecebimentosSinteticoRealizado + XRecebimentosSinteticoPrevisto),
      'Courier New', 10, clBlack, true);

    //Formas de pagamento
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Formas de Pagamento:', 'Courier New',
      09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Carteira:', 'Courier New', 09,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalCarteiraReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalCarteiraPrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCarteiraPrev + XTotalCarteiraReal), 'Courier New', 09, clBlack,
      false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cheques:', 'Courier New', 09,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalChequeReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalChequePrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalChequePrev + XTotalChequeReal), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cartão de Crédito:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalCCartaoReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalCCartaoPrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCCartaoPrev + XTotalCCartaoReal), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cartão de Débito:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalDCartaoReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalDCartaoPrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalDCartaoPrev + XTotalDCartaoReal), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Outros Pagamentos:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalOutrosReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalOutrosPrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalOutrosPrev + XTotalOutrosReal), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 5,
      '......................................................................................................................................................',
      'Verdana', 10, clBlack, true);
  except

  end;
end;

//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Pagamentos de outras despesas Sintetico
function ImpRelGMovFinanceiras_PagamentosSintetico: Boolean;
var
  XRecebimentosSinteticoPrevisto, XRecebimentosSinteticoRealizado, Xtotal: Real;
  XTotalCarteiraReal, XTotalCCartaoReal, XTotalDCartaoReal, XTotalChequeReal,
    XTotalOutrosReal: Real;
  XTotalCarteiraPrev, XTotalCCartaoPrev, XTotalDCartaoPrev, XTotalChequePrev,
    XTotalOutrosPrev: Real;
begin
  try
    //Localiza codigo das contas de compra de mercadoria
    if FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '')
      = True then
    begin
      xCodPlnCtaVista := DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger;
      xCodPlnCtaPrazo := DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger;
      if (xCodPlnCtaVista <= 0) or (xCodPlnCtaPrazo <= 0) then
      begin
        MessageDlg('As configurações de contas para Compra de Mercadoria não foram definidas, é necessário que estas configurações em loja sejam executadas.', mtWarning, [mbOK], 0);
        Exit;
      end;
    end
    else
    begin
      MessageDlg('Não foi possível encontrar as Contas para compra de mercadoria em loja.', mtWarning, [mbOK], 0);
      Exit;
    end;
    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes os pagamentos no período
    ///////////////////////
    //BAIXADOS - REALIZADOS
    ///////////////////////
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.fech=''S'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    if FRelGeralMovimentacoesFinanceiras.CBSeparar.Checked = True then
    begin
      DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta<>:CodigoVista) and (vwparcp.cod_plncta<>:CodigoPrazo)) ');
      DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
      DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    end;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XRecebimentosSinteticoRealizado :=
        DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where ((vwparcp.cobranca=''Carteira'') or (vwparcp.cobranca=''FATURA'')) and (vwparcp.fech=''S'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    if FRelGeralMovimentacoesFinanceiras.CBSeparar.Checked = True then
    begin
      DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta<>:CodigoVista) and (vwparcp.cod_plncta<>:CodigoPrazo)) ');
      DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
      DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    end;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCarteiraReal := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.cobranca=''C - Cartão'') and (vwparcp.fech=''S'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    if FRelGeralMovimentacoesFinanceiras.CBSeparar.Checked = True then
    begin
      DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta<>:CodigoVista) and (vwparcp.cod_plncta<>:CodigoPrazo)) ');
      DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
      DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    end;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCCartaoReal := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.cobranca=''D - Cartão'') and (vwparcp.fech=''S'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    if FRelGeralMovimentacoesFinanceiras.CBSeparar.Checked = True then
    begin
      DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta<>:CodigoVista) and (vwparcp.cod_plncta<>:CodigoPrazo)) ');
      DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
      DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    end;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalDCartaoReal := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.cobranca=''Cheque'') and (vwparcp.fech=''S'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    if FRelGeralMovimentacoesFinanceiras.CBSeparar.Checked = True then
    begin
      DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta<>:CodigoVista) and (vwparcp.cod_plncta<>:CodigoPrazo)) ');
      DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
      DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    end;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalChequeReal := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    XTotalOutrosReal := XRecebimentosSinteticoRealizado - XTotalCarteiraReal -
      XTotalCCartaoReal - XTotalDCartaoReal - XTotalChequeReal;

    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes o aos recebimentos em aberto no período
    ////////////////////////
    // PENDENTES - EM ABERTO
    ////////////////////////
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valor) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.fech=''N'') and (vwparcp.dtvenc between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    if FRelGeralMovimentacoesFinanceiras.CBSeparar.Checked = True then
    begin
      DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta<>:CodigoVista) and (vwparcp.cod_plncta<>:CodigoPrazo)) ');
      DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
      DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    end;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XRecebimentosSinteticoPrevisto :=
        DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where ((vwparcp.cobranca=''Carteira'') or (vwparcp.cobranca=''FATURA'')) and (vwparcp.fech=''N'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    if FRelGeralMovimentacoesFinanceiras.CBSeparar.Checked = True then
    begin
      DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta<>:CodigoVista) and (vwparcp.cod_plncta<>:CodigoPrazo)) ');
      DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
      DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    end;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCarteiraPrev := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.cobranca=''C - Cartão'') and (vwparcp.fech=''N'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    if FRelGeralMovimentacoesFinanceiras.CBSeparar.Checked = True then
    begin
      DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta<>:CodigoVista) and (vwparcp.cod_plncta<>:CodigoPrazo)) ');
      DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
      DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    end;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCCartaoPrev := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.cobranca=''D - Cartão'') and (vwparcp.fech=''N'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    if FRelGeralMovimentacoesFinanceiras.CBSeparar.Checked = True then
    begin
      DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta<>:CodigoVista) and (vwparcp.cod_plncta<>:CodigoPrazo)) ');
      DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
      DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    end;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalDCartaoPrev := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.cobranca=''Cheque'') and (vwparcp.fech=''N'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    if FRelGeralMovimentacoesFinanceiras.CBSeparar.Checked = True then
    begin
      DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta<>:CodigoVista) and (vwparcp.cod_plncta<>:CodigoPrazo)) ');
      DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
      DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    end;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalChequePrev := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    XTotalOutrosPrev := XRecebimentosSinteticoPrevisto - XTotalCarteiraPrev -
      XTotalCCartaoPrev - XTotalDCartaoPrev - XTotalChequePrev;

    //Impressão do Resultado
    XLinImp := XLinImp + 4;
    Imprime(FMenu.RvFaturas, XLinImp, 100, 'A Pagar: ', 'Courier New', 11,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, 'Pago: ', 'Courier New', 11, clBlack,
      false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, 'Total: ', 'Courier New', 11,
      clBlack, false);
    //Total de PV
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 005, '(-) Pagamento de Outras Despesas: ',
      'Courier New', 11, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XRecebimentosSinteticoPrevisto), 'Courier New', 10, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XRecebimentosSinteticoRealizado), 'Courier New', 10, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XRecebimentosSinteticoRealizado + XRecebimentosSinteticoPrevisto),
      'Courier New', 10, clBlack, true);

    //Formas de pagamento
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Formas de Pagamento:', 'Courier New',
      09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Carteira:', 'Courier New', 09,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalCarteiraReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalCarteiraPrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCarteiraPrev + XTotalCarteiraReal), 'Courier New', 09, clBlack,
      false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cheques:', 'Courier New', 09,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalChequeReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalChequePrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalChequePrev + XTotalChequeReal), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cartão de Crédito:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalCCartaoReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalCCartaoPrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCCartaoPrev + XTotalCCartaoReal), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cartão de Débito:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalDCartaoReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalDCartaoPrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalDCartaoPrev + XTotalDCartaoReal), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Outros Pagamentos:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalOutrosReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalOutrosPrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalOutrosPrev + XTotalOutrosReal), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 5,
      '......................................................................................................................................................',
      'Verdana', 10, clBlack, true);
  except

  end;
end;

//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Pagamentos de compras Sintetico
function ImpRelGMovFinanceiras_PagamentosComprasSintetico: Boolean;
var
  XRecebimentosSinteticoPrevisto, XRecebimentosSinteticoRealizado, Xtotal: Real;
  XTotalCarteiraReal, XTotalCCartaoReal, XTotalDCartaoReal, XTotalChequeReal,
    XTotalOutrosReal: Real;
  XTotalCarteiraPrev, XTotalCCartaoPrev, XTotalDCartaoPrev, XTotalChequePrev,
    XTotalOutrosPrev: Real;
begin
  try
    //Localiza codigo das contas de compra de mercadoria
    if FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '')
      = True then
    begin
      xCodPlnCtaVista := DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger;
      xCodPlnCtaPrazo := DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger;
      if (xCodPlnCtaVista <= 0) or (xCodPlnCtaPrazo <= 0) then
      begin
        MessageDlg('As configurações de contas para Compra de Mercadoria não foram definidas, é necessário que estas configurações em loja sejam executadas.', mtWarning, [mbOK], 0);
        Exit;
      end;
    end
    else
    begin
      MessageDlg('Não foi possível encontrar as Contas para compra de mercadoria em loja.', mtWarning, [mbOK], 0);
      Exit;
    end;
    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes os pagamentos no período
    ///////////////////////
    //BAIXADOS - REALIZADOS
    ///////////////////////
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.fech=''S'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta=:CodigoVista) or (vwparcp.cod_plncta=:CodigoPrazo)) ');
    DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
    DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XRecebimentosSinteticoRealizado :=
        DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where ((vwparcp.cobranca=''Carteira'') or (vwparcp.cobranca=''FATURA'')) and (vwparcp.fech=''S'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta=:CodigoVista) or (vwparcp.cod_plncta=:CodigoPrazo)) ');
    DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
    DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCarteiraReal := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.cobranca=''C - Cartão'') and (vwparcp.fech=''S'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta=:CodigoVista) or (vwparcp.cod_plncta=:CodigoPrazo)) ');
    DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
    DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCCartaoReal := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.cobranca=''D - Cartão'') and (vwparcp.fech=''S'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta=:CodigoVista) or (vwparcp.cod_plncta=:CodigoPrazo)) ');
    DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
    DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalDCartaoReal := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.cobranca=''Cheque'') and (vwparcp.fech=''S'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta=:CodigoVista) or (vwparcp.cod_plncta=:CodigoPrazo)) ');
    DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
    DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalChequeReal := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    XTotalOutrosReal := XRecebimentosSinteticoRealizado - XTotalCarteiraReal -
      XTotalCCartaoReal - XTotalDCartaoReal - XTotalChequeReal;

    //Alex 01/12/2014: Sql para filtrar e imprimir dados referentes o aos recebimentos em aberto no período
    ////////////////////////
    // PENDENTES - EM ABERTO
    ////////////////////////
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valor) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.fech=''N'') and (vwparcp.dtvenc between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta=:CodigoVista) or (vwparcp.cod_plncta=:CodigoPrazo)) ');
    DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
    DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XRecebimentosSinteticoPrevisto :=
        DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where ((vwparcp.cobranca=''Carteira'') or (vwparcp.cobranca=''FATURA'')) and (vwparcp.fech=''N'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta=:CodigoVista) or (vwparcp.cod_plncta=:CodigoPrazo)) ');
    DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
    DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCarteiraPrev := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.cobranca=''C - Cartão'') and (vwparcp.fech=''N'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta=:CodigoVista) or (vwparcp.cod_plncta=:CodigoPrazo)) ');
    DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
    DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalCCartaoPrev := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.cobranca=''D - Cartão'') and (vwparcp.fech=''N'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta=:CodigoVista) or (vwparcp.cod_plncta=:CodigoPrazo)) ');
    DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
    DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalDCartaoPrev := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add(' Select Sum(vwparcp.valorpg) as TOTAL from vwparcp ');
    DMServ.TAlx1.SQL.Add(' Where (vwparcp.cobranca=''Cheque'') and (vwparcp.fech=''N'') and (vwparcp.dtdebito between :Dt1 and :Dt2) and (COD_LOJA = ' + #39 + FMenu.LCODLOJA.Caption + #39 + ') ');
    DMServ.TAlx1.SQL.Add('   and ((vwparcp.cod_plncta=:CodigoVista) or (vwparcp.cod_plncta=:CodigoPrazo)) ');
    DMServ.TAlx1.ParamByName('CodigoVista').AsInteger := xCodPlnCtaVista;
    DMServ.TAlx1.ParamByName('CodigoPrazo').AsInteger := xCodPlnCtaPrazo;
    DMServ.TAlx1.ParamByName('dt1').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData1.Text);
    DMServ.TAlx1.ParamByName('dt2').AsDateTime :=
      StrToDate(FRelGeralMovimentacoesFinanceiras.edData2.Text);
    DMServ.TAlx1.Open;
    if not DMServ.TAlx1.IsEmpty then
    begin
      XTotalChequePrev := DMServ.TAlx1.FieldByNAme('TOTAL').AsCurrency;
    end;
    XTotalOutrosPrev := XRecebimentosSinteticoPrevisto - XTotalCarteiraPrev -
      XTotalCCartaoPrev - XTotalDCartaoPrev - XTotalChequePrev;

    //Impressão do Resultado
    XLinImp := XLinImp + 4;
    Imprime(FMenu.RvFaturas, XLinImp, 100, 'A Pagar: ', 'Courier New', 11,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, 'Pago: ', 'Courier New', 11, clBlack,
      false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, 'Total: ', 'Courier New', 11,
      clBlack, false);
    //Total de PV
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 005, '(-) Pagamento de Fornecedores: ',
      'Courier New', 11, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XRecebimentosSinteticoPrevisto), 'Courier New', 10, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XRecebimentosSinteticoRealizado), 'Courier New', 10, clBlack, true);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XRecebimentosSinteticoRealizado + XRecebimentosSinteticoPrevisto),
      'Courier New', 10, clBlack, true);

    //Formas de pagamento
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Formas de Pagamento:', 'Courier New',
      09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Carteira:', 'Courier New', 09,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalCarteiraReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalCarteiraPrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCarteiraPrev + XTotalCarteiraReal), 'Courier New', 09, clBlack,
      false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cheques:', 'Courier New', 09,
      clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalChequeReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalChequePrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalChequePrev + XTotalChequeReal), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cartão de Crédito:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalCCartaoReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalCCartaoPrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalCCartaoPrev + XTotalCCartaoReal), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Cartão de Débito:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalDCartaoReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalDCartaoPrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalDCartaoPrev + XTotalDCartaoReal), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 25, 'Outros Pagamentos:', 'Courier New',
      09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 130, FormatFloat('###,##0.00',
      XTotalOutrosReal), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 100, FormatFloat('###,##0.00',
      XTotalOutrosPrev), 'Courier New', 09, clBlack, false);
    Imprime(FMenu.RvFaturas, XLinImp, 170, FormatFloat('###,##0.00',
      XTotalOutrosPrev + XTotalOutrosReal), 'Courier New', 09, clBlack, false);
    XLinImp := XLinImp + 3;
    Imprime(FMenu.RvFaturas, XLinImp, 5,
      '......................................................................................................................................................',
      'Verdana', 10, clBlack, true);
  except

  end;
end;

//Alex 01/12/2014 - Imprime relatorio geral de movimentações financeiras: Filtros aplicados
function ImpRelGMovFinanceiras_Filtros: Boolean;
begin
  try
    XLinImp := XLinImp + 7;
    Imprime(FMenu.RvFaturas, XLinImp, 5, 'Filtros: ' + FMenu.XDecreto,
      'Courier New', 12, clBlack, false);
    XLinImp := XLinImp + 5;
    Imprime(FMenu.RvFaturas, XLinImp, 5, FMenu.XProtocolo, 'Courier New', 12,
      clBlack, false);
    XLinImp := XLinImp + 5;
    Imprime(FMenu.RvFaturas, XLinImp, 5, FMenu.XVersaoNovidades, 'Courier New',
      12, clBlack, false);
    XLinImp := XLinImp + 5;
    Imprime(FMenu.RvFaturas, XLinImp, 5,
      '____________________________________________________________________________________________________________________________',
      'Verdana', 10, clBlack, true);
  except

  end;
end;

function ImpComprovanteFaturas: Boolean;
begin
  try
    xNumPagina := 01;
    XNovaPagina := False;
    FMenu.ImpRelCabecalhoPadrao;
    FMenu.ImpComprovanteFaturaCabecalhoCliente;
    ImpComprovanteFaturasDados;
  except
    Result := False;
    ShowMessage('Erro ao tentar imprimir Comprovante de Faturas');
  end;
end;

function ImpComprovanteFaturasResumido: Boolean;
begin
  try
    xNumPagina := 01;
    XNovaPagina := False;
    FMenu.ImpRelCabecalhoPadrao;
    FMenu.ImpComprovanteFaturaCabecalhoCliente;
    ImpComprovanteFaturasDadosResumido;
  except
    Result := False;
    ShowMessage('Erro ao tentar imprimir Comprovante de Faturas');
  end;
end;

function ImpComprovanteFaturasFiltraServicos(CODIGO: Integer): Boolean;
var
  VlrUnit, VlrTotal: string;
  xVlrUnit, xVlrTotal: Real;
begin
  try
    if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'EQUIPE' then
    begin
      //OS que usa serviços de ITServOrd
      DMServ.Alx.Close;
      DMServ.Alx.SQL.Clear;
      DMServ.Alx.SQL.Add(' Select ordem.numero, itservord.data, subservico.descricao, itservord.qtd, itservord.vlrunit, ');
      DMServ.Alx.SQL.Add(' itservord.total, ordem.cod_vendedor, subservico.cod_interno ');
      DMServ.Alx.SQL.Add(' from itservord');
      DMServ.Alx.SQL.Add(' left join ordem on itservord.cod_ordem = ordem.cod_ordem');
      DMServ.Alx.SQL.Add(' Left join subservico on itservord.cod_servico = subservico.cod_subservico');
    end
    else
    begin
      //OS que usam serviço de dados adicionais
      DMServ.Alx.Close;
      DMServ.Alx.SQL.Clear;
      DMServ.Alx.SQL.Add(' Select ordem.numero, ordem.dtfech, despadic.despesa, despadic.qtd, despadic.vlrfinal AS VLRUNIT, ');
      DMServ.Alx.SQL.Add(' despadic.vlrtotfin AS TOTAL, ordem.cod_vendedor ');
      DMServ.Alx.SQL.Add(' from despadic ');
      DMServ.Alx.SQL.Add(' left join ordem on despadic.cod_gerador = ordem.cod_ordem ');
    end;
    DMServ.Alx.SQL.Add('where ordem.cod_ordem=:param');
    DMServ.Alx.ParamByName('param').AsInteger :=
      DMServ.TAlx2.FieldByName('COD_ORDEM').AsInteger;
    DMServ.Alx.Open;
    DMServ.Alx.First;

    FiltraTabela(DMPESSOA.TFuncionario, 'FUNCIONARIO', 'COD_FUNC',
      IntToStr(DMServ.Alx.FieldByName('cod_vendedor').AsInteger), '');
    FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
      IntToStr(DMPESSOA.TFuncionario.FieldByName('COD_PESSOA').AsInteger), '');

    if DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'EQUIPE' then
    begin
      while not (DMServ.Alx.Eof) do
      begin
        xVlrUnit := DMServ.Alx.FieldByName('VLRUNIT').AsFloat;
        VlrUnit := FormatFloat('0.00', xVlrUnit);
        xVlrTotal := DMServ.Alx.FieldByName('TOTAL').AsFloat;
        VlrTotal := FormatFloat('0.00', xVlrTotal);

        if XLinImp >= 285 then
        begin
          xNumPagina := XNumPagina + 1;
          FMenu.RvFaturas.BaseReport.NewPage;
          XLinImp := 0;
          FMenu.ImpRelCabecalhoPadrao;
          ImpComprovanteFaturasCabecalhoItens;
        end;

        XLinImp := XLinImp + 4;
        Imprime(FMenu.RvFaturas, xLinImp, 5,
          FloatToStr(DMServ.Alx.FieldByName('NUMERO').AsFloat), 'Verdana', 8,
          clBlack, false);
        Imprime(FMenu.RvFaturas, xLinImp, 17,
          DMServ.Alx.FieldByName('cod_interno').AsString, 'Verdana', 8, clBlack,
          false);
        Imprime(FMenu.RvFaturas, xLinImp, 30,
          DateToStr(DMServ.Alx.FieldByName('data').AsDateTime), 'Verdana', 8,
          clBlack, false);
        Imprime(FMenu.RvFaturas, xLinImp, 50, Copy('S-' +
          DMServ.Alx.FieldByName('descricao').AsString, 0, 35), 'Verdana', 8,
          clBlack, false);
        Imprime(FMenu.RvFaturas, xLinImp, 122,
          CurrToStr(DMServ.Alx.FieldByName('qtd').AsCurrency), 'Verdana', 8,
          clBlack, false);
        Imprime(FMenu.RvFaturas, xLinImp, 140, VlrUnit, 'Verdana', 8, clBlack,
          false);
        Imprime(FMenu.RvFaturas, xLinImp, 158, VlrTotal, 'Verdana', 8, clBlack,
          false);
        Imprime(FMenu.RvFaturas, xLinImp, 180,
          DMPESSOA.TPessoa.FieldByName('NOME').AsString, 'Verdana', 8, clBlack,
          false);
        XColImp := 1;
        DMServ.Alx.Next;
      end;
    end
    else
    begin
      while not (DMServ.Alx.Eof) do
      begin
        xVlrUnit := DMServ.Alx.FieldByName('vlrunit').AsFloat;
        VlrUnit := FormatFloat('0.00', xVlrUnit);
        xVlrTotal := DMServ.Alx.FieldByName('total').AsFloat;
        VlrTotal := FormatFloat('0.00', xVlrTotal);

        if XLinImp >= 285 then
        begin
          xNumPagina := XNumPagina + 1;
          FMenu.RvFaturas.BaseReport.NewPage;
          XLinImp := 0;
          FMenu.ImpRelCabecalhoPadrao;
          ImpComprovanteFaturasCabecalhoItens;
        end;
        XLinImp := XLinImp + 4;
        Imprime(FMenu.RvFaturas, xLinImp, 5,
          FloatToStr(DMServ.Alx.FieldByName('NUMERO').AsFloat), 'Verdana', 8,
          clBlack, false);
        Imprime(FMenu.RvFaturas, xLinImp, 17, ' ', 'Verdana', 8, clBlack,
          false);
        Imprime(FMenu.RvFaturas, xLinImp, 30,
          DateToStr(DMServ.Alx.FieldByName('dtfech').AsDateTime), 'Verdana', 8,
          clBlack, false);
        Imprime(FMenu.RvFaturas, xLinImp, 50, Copy('S-' +
          DMServ.Alx.FieldByName('despesa').AsString, 0, 35), 'Verdana', 8,
          clBlack, false);
        Imprime(FMenu.RvFaturas, xLinImp, 122,
          CurrToStr(DMServ.Alx.FieldByName('qtd').AsCurrency), 'Verdana', 8,
          clBlack, false);
        Imprime(FMenu.RvFaturas, xLinImp, 140, VlrUnit, 'Verdana', 8, clBlack,
          false);
        Imprime(FMenu.RvFaturas, xLinImp, 158, VlrTotal, 'Verdana', 8, clBlack,
          false);
        Imprime(FMenu.RvFaturas, xLinImp, 180,
          DMPESSOA.TPessoa.FieldByName('NOME').AsString, 'Verdana', 8, clBlack,
          false);
        XColImp := 1;

        DMServ.Alx.Next;
      end;
    end;
  except
    Result := False;
  end;
end;

function ImpComprovanteFaturasFiltraProdutos(CODIGO: Integer): Boolean;
var
  xVlrUnit, xVlrTotal: Real;
  VlrUnit, VlrTotal: string;
begin
  try
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('Select ordem.numero ,itprodord.data, vwsimilar.descricao, itprodord.qtd, itprodord.vlrunit,');
    DMESTOQUE.Alx.SQL.Add('itprodord.total, ordem.cod_vendedor, vwsimilar.contrint');
    DMESTOQUE.Alx.SQL.Add('from itprodord');
    DMESTOQUE.Alx.SQL.Add('left join ordem on itprodord.cod_ordem = ordem.cod_ordem');
    DMESTOQUE.Alx.SQL.Add('left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque');
    DMESTOQUE.Alx.SQL.Add('where ordem.cod_ordem=:param');
    DMESTOQUE.Alx.ParamByName('param').AsInteger :=
      DMServ.TAlx2.FieldByName('COD_ORDEM').AsInteger;
    DMESTOQUE.Alx.Open;

    FiltraTabela(DMPESSOA.TFuncionario, 'FUNCIONARIO', 'COD_FUNC',
      IntToStr(DMESTOQUE.Alx.FieldByName('cod_vendedor').AsInteger), '');
    FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA',
      IntToStr(DMPESSOA.TFuncionario.FieldByName('COD_PESSOA').AsInteger), '');

    while not (DMESTOQUE.Alx.Eof) do
    begin
      xVlrUnit := DMESTOQUE.Alx.FieldByName('VLRUNIT').AsFloat;
      VlrUnit := FormatFloat('0.00', xVlrUnit);
      xVlrTotal := DMESTOQUE.Alx.FieldByName('TOTAL').AsFloat;
      VlrTotal := FormatFloat('0.00', xVlrTotal);

      if XLinImp >= 285 then
      begin
        xNumPagina := XNumPagina + 1;
        FMenu.RvFaturas.BaseReport.NewPage;
        XLinImp := 0;
        FMenu.ImpRelCabecalhoPadrao;
        ImpComprovanteFaturasCabecalhoItens;
      end;

      XLinImp := XLinImp + 4;
      Imprime(FMenu.RvFaturas, xLinImp, 5,
        FloatToStr(DMESTOQUE.Alx.FieldByName('NUMERO').AsFloat), 'Verdana', 8,
        clBlack, false);
      Imprime(FMenu.RvFaturas, xLinImp, 17,
        DMESTOQUE.Alx.FieldByName('contrint').AsString, 'Verdana', 8, clBlack,
        false);
      Imprime(FMenu.RvFaturas, xLinImp, 30,
        DateToStr(DMESTOQUE.Alx.FieldByName('data').AsDateTime), 'Verdana', 8,
        clBlack, false);
      Imprime(FMenu.RvFaturas, xLinImp, 50, Copy('P-' +
        DMESTOQUE.Alx.FieldByName('descricao').AsString, 0, 35), 'Verdana', 8,
        clBlack, false);
      Imprime(FMenu.RvFaturas, xLinImp, 122,
        CurrToStr(DMESTOQUE.Alx.FieldByName('qtd').AsCurrency), 'Verdana', 8,
        clBlack, false);
      Imprime(FMenu.RvFaturas, xLinImp, 140, VlrUnit, 'Verdana', 8, clBlack,
        false);
      Imprime(FMenu.RvFaturas, xLinImp, 158, VlrTotal, 'Verdana', 8, clBlack,
        false);
      Imprime(FMenu.RvFaturas, xLinImp, 180,
        DMPESSOA.TPessoa.FieldByName('NOME').AsString, 'Verdana', 8, clBlack,
        false);
      XColImp := 1;
      DMESTOQUE.Alx.Next;
    end;
  except
    Result := False;
  end;

end;

function FiltraItens(COD_CONTAS: Integer): Boolean;
begin
  try
    DMServ.TAlx1.Close;
    DMServ.TAlx1.SQL.Clear;
    DMServ.TAlx1.SQL.Add('Select itensfaturaconta.cod_faturaconta, itensfaturaconta.cod_itensfaturaconta');
    DMServ.TAlx1.SQL.Add('from itensfaturaconta');
    DMServ.TAlx1.SQL.Add('left join parcelacr on itensfaturaconta.cod_parcela = parcelacr.cod_parcelacr');
    DMServ.TAlx1.SQL.Add('where parcelacr.cod_ctareceber=:param');
    DMServ.TAlx1.ParamByName('param').AsInteger := COD_CONTAS;
    DMServ.TAlx1.Open;

    DMServ.TAlx2.Close;
    DMServ.TAlx2.SQL.Clear;
    DMServ.TAlx2.SQL.Add('select distinct(ordem.cod_ordem)');
    DMServ.TAlx2.SQL.Add('from itensfaturaconta');
    DMServ.TAlx2.SQL.Add('left join parcelacr on itensfaturaconta.cod_parcela = parcelacr.cod_parcelacr');
    DMServ.TAlx2.SQL.Add('left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber');
    DMServ.TAlx2.SQL.Add('left join ordem on ctareceber.cod_gerador = ordem.cod_ordem');
    DMServ.TAlx2.SQL.Add('where itensfaturaconta.cod_faturaconta=:param');
    DMServ.TAlx2.SQL.Add('order by ordem.cod_ordem');
    DMServ.TAlx2.ParamByName('param').AsInteger :=
      DMServ.TAlx1.FieldByName('cod_faturaconta').AsInteger;
    DMServ.TAlx2.Open;
    DMServ.TAlx2.First;
  except
    Result := False;
  end;
end;

function ImpComprovanteFaturasCabecalhoItens: Boolean;
begin
  XLinImp := XLinImp + 5;
  Imprime(FMenu.RvFaturas, xLinImp, 5, 'O.S. ', 'Verdana', 10, clBlack, true);
  Imprime(FMenu.RvFaturas, xLinImp, 15, 'Interno ', 'Verdana', 10, clBlack,
    true);
  Imprime(FMenu.RvFaturas, xLinImp, 35, 'Data ', 'Verdana', 10, clBlack, true);
  Imprime(FMenu.RvFaturas, xLinImp, 50, 'Descrição ', 'Verdana', 10, clBlack,
    true);
  Imprime(FMenu.RvFaturas, xLinImp, 120, 'Qtde ', 'Verdana', 10, clBlack, true);
  Imprime(FMenu.RvFaturas, xLinImp, 135, 'Vlr. Unit. ', 'Verdana', 10, clBlack,
    true);
  Imprime(FMenu.RvFaturas, xLinImp, 155, 'Vlr. Total ', 'Verdana', 10, clBlack,
    true);
  Imprime(FMenu.RvFaturas, xLinImp, 180, 'Vendedor ', 'Verdana', 10, clBlack,
    true);
  XLinImp := XLinImp + 2;
  Imprime(FMenu.RvFaturas, XLinImp, 5,
    '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ _',
    'Verdana', 10, clBlack, false);
  XLinImp := XLinImp + 2;
end;

function ImpComprovanteFaturasCabecalhoFaturas: Boolean;
begin
  Imprime(FMenu.RvFaturas, XLinImp, 5,
    '____________________________________________________________________________________________________________________________',
    'Verdana', 10, clBlack, true);
  XLinImp := XLinImp + 5;
  Imprime(FMenu.RvFaturas, xLinImp, 5, 'Parcelas ', 'Verdana', 10, clBlack,
    true);
  Imprime(FMenu.RvFaturas, xLinImp, 25, 'Data Lanç. ', 'Verdana', 10, clBlack,
    true);
  Imprime(FMenu.RvFaturas, xLinImp, 50, 'Data Venc. ', 'Verdana', 10, clBlack,
    true);
  Imprime(FMenu.RvFaturas, xLinImp, 80, 'Desconto ', 'Verdana', 10, clBlack,
    true);
  Imprime(FMenu.RvFaturas, xLinImp, 105, 'Multa ', 'Verdana', 10, clBlack,
    true);
  Imprime(FMenu.RvFaturas, xLinImp, 125, 'Valor ', 'Verdana', 10, clBlack,
    true);
  XLinImp := XLinImp + 2;
  Imprime(FMenu.RvFaturas, XLinImp, 5,
    '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ __ _ _ _ _ _ _ _',
    'Verdana', 10, clBlack, true);
end;

//Edmar - 16/05/2014 - Imprimi cabeçalho dos dados financeiros em aberto
function ImpComprovanteFaturasCabecalhoFinancAbert: Boolean;
begin
  XLinImp := XLinImp + 5;
  Imprime(FMenu.RvFaturas, xLinImp, 5, 'Parcela', 'Verdana', 10, clBlack, true);
  Imprime(FMenu.RvFaturas, xLinImp, 30, 'Valor', 'Verdana', 10, clBlack, true);
  Imprime(FMenu.RvFaturas, xLinImp, 55, 'Data Venc.', 'Verdana', 10, clBlack,
    true);
  Imprime(FMenu.RvFaturas, xLinImp, 85, 'Valor Devido', 'Verdana', 10, clBlack,
    true);
  Imprime(FMenu.RvFaturas, xLinImp, 115, 'Data Pag.', 'Verdana', 10, clBlack,
    true);
  Imprime(FMenu.RvFaturas, xLinImp, 145, 'Valor Pago', 'Verdana', 10, clBlack,
    true);
  Imprime(FMenu.RvFaturas, xLinImp, 170, 'Tipo Pagamento', 'Verdana', 10,
    clBlack, true);
  XLinImp := XLinImp + 2;
end;

procedure FiltraFinancAbert;
begin
  DMFINANC.TAlx.Close;
  DMFINANC.TAlx.SQL.Clear;
  DMFINANC.TAlx.SQL.Add('select parcelacr.numparc PARCELA, faturaconta.vlrtotfatura VLRTOTAL, parcelacr.dtvenc DTVENCIMENTO, ');
  DMFINANC.TAlx.SQL.Add('parcelacr.dtdebito DTPAGAMENTO, parcelacr.valorpg VLRPAGO, parcelacr.cobranca ');
  DMFINANC.TAlx.SQL.Add('from faturaconta ');
  DMFINANC.TAlx.SQL.Add('left join ctareceber on ctareceber.cod_gerador = faturaconta.cod_faturaconta ');
  DMFINANC.TAlx.SQL.Add('left join parcelacr on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
  DMFINANC.TAlx.SQL.Add('left join formpag on formpag.cod_formpag = ctareceber.cod_formpag ');
  DMFINANC.TAlx.SQL.Add('where (faturaconta.cod_faturaconta = :param) AND (ctareceber.TIPOGERADOR = ''FAT'') ');
  DMFINANC.TAlx.ParamByName('param').AsInteger :=
    DMCONTA.TAlx.FieldByName('cod_faturaconta').AsInteger;

  DMFINANC.TAlx.Open;
end;

function NovaPagina: Boolean;
begin
  try
    xNumPagina := XNumPagina + 1;
    FMenu.RvFaturas.BaseReport.NewPage;
    XLinImp := 0;
  except
    Result := False;
  end;
end;

procedure Imprime(RVRel: TRVSystem; Linha: Double; Coluna: Double; Texto:
  string; Fonte: string; TamFonte: Integer; CorFonte: TColor; Tipo: Boolean);
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

procedure PrintImage(RVSystem: TRvSystem; Row, Col, ImageWidth, ImageHeight:
  Double; Bitmap: TBitmap; FileName: string = '');
var
  Calc, L1, C1, L2, C2: Double;
  InternalBitmap: TBitmap;
begin
  InternalBitmap := TBitmap.Create;
  try
    if not Assigned(Bitmap) then
    begin
      InternalBitmap.LoadFromFile(FileName);
    end
    else
    begin
      InternalBitmap.Assign(Bitmap);
    end;
    //Original - RVSystem.BaseReport.PrintBitmap(Col, Row, ImageWidth, ImageHeight,InternalBitmap);
    with RVSystem.BaseReport do
    begin
      if ImageWidth <= 0.0 then
      begin
        Calc := ImageHeight * (InternalBitmap.Width / XDPI) /
          (InternalBitmap.Height / YDPI);
        C1 := Col;
        L1 := Row;
        C2 := Col + Calc;
        L2 := Row + ImageHeight;
      end
      else if ImageHeight <= 0.0 then
      begin
        Calc := ImageWidth * (InternalBitmap.Height / YDPI) /
          (InternalBitmap.Width / XDPI);
        C1 := Col;
        L1 := Row;
        C2 := Col + ImageWidth;
        L2 := Row + Calc;
      end
      else
      begin
        C1 := Col;
        L1 := Row;
        C2 := Col + ImageWidth;
        L2 := Row + ImageHeight;
      end;
      PrintBitmapRect(C1, L1, C2, L2, InternalBitmap);
    end;
  finally
    InternalBitmap.Free;
  end;
end;

//Edmar - 14/04/2014 - Usado para buscar informações personalizadas do cliente para impressão
//do recibo modelo 2 (a pedido da Baroni)
procedure BuscaInfoClienteModelo2(xCodCliente: string);
begin
  //Edmar - 14/04/2014 - SQL para buscar info do determinado cliente
  DMPESSOA.TALX.Close;
  DMPESSOA.TALX.SQL.Clear;
  DMPESSOA.TALX.SQL.Add('select pessoa.cpfcnpj, pessoa.endereco, cidade.nome, estado.uf_estado ');
  DMPESSOA.TALX.SQL.Add('from pessoa ');
  DMPESSOA.TALX.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
  DMPESSOA.TALX.SQL.Add('left join estado on estado.cod_estado = cidade.cod_estado ');
  DMPESSOA.TALX.SQL.Add('left join cliente on cliente.cod_pessoa = pessoa.cod_pessoa ');
  DMPESSOA.TALX.SQL.Add('where cliente.cod_cliente = :pessoa');
  DMPESSOA.TALX.ParamByName('pessoa').AsInteger := StrToInt(xCodCliente);
  DMPESSOA.TALX.Open;

  //Edmar - 14/04/2014 - Repassa as informações para as variaveis auxiliares
  xImpReciboCpfCnpj := DMPESSOA.TALX.FieldByName('CPFCNPJ').AsString;
  xImpReciboCidade := DMPESSOA.TALX.FieldByName('NOME').AsString;
  xImpReciboUf := DMPESSOA.TALX.FieldByName('UF_ESTADO').AsString;
end;
end.
