unit URelData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, ExtCtrls,
  StdCtrls, Buttons, jpeg, Mask, QuickRpt, RpDefine, RpRave, QRCtrls, DB,
  IBCustomDataSet, IBQuery, DrLabel, Grids, DBGrids, RpBase, RpSystem,
  EditFloat, DBCtrls, frxClass, frxDBSet;
  {
  UPadraoRelatorio, RpDefine, RpBase, RpSystem, DB, IBCustomDataSet,
  IBQuery, ExtCtrls, QuickRpt, StdCtrls, Mask, QRCtrls, FR_DSet, FR_DBSet,
  FR_Class, Buttons, Controls, Graphics, Classes, UPadraoRelatorio, RpDefine, RpBase, RpSystem, DB, IBCustomDataSet,
  IBQuery, ExtCtrls, QuickRpt, StdCtrls, Mask, QRCtrls, FR_DSet, FR_DBSet,
  FR_Class, Buttons, Controls, Graphics, Classes, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, ExtCtrls,
  StdCtrls, Buttons, jpeg, Mask, QuickRpt, RpDefine, RpRave, QRCtrls, DB,
  IBCustomDataSet, IBQuery, DrLabel, Grids, DBGrids, RpBase, RpSystem;}

type
  TFRelData = class(TFPadraoRelatorio)
    DS: TDataSource;
    QRResumoBancos: TQuickRep;
    QRBand8: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape4: TQRShape;
    QRBand9: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape5: TQRShape;
    QRBand10: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLSaldoAtu: TQRLabel;
    QRLAENTRAR: TQRLabel;
    QRLASAIR: TQRLabel;
    QRLSALDOFINAL: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand11: TQRBand;
    QRLORION: TQRLabel;
    QRShape7: TQRShape;
    QRBand12: TQRBand;
    QRLTSALDOFIM: TQRLabel;
    QRLTSAIDA: TQRLabel;
    QRLTENTRADA: TQRLabel;
    QRLTSALDO: TQRLabel;
    QRShape8: TQRShape;
    QRMR: TQuickRep;
    QRBand13: TQRBand;
    QRLabel19: TQRLabel;
    QRShape9: TQRShape;
    QRDBRichText2: TQRDBRichText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRSysData2: TQRSysData;
    QRBand14: TQRBand;
    QRDBText17: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;                                                  
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRShape10: TQRShape;
    QRBand15: TQRBand;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape11: TQRShape;
    QRBand16: TQRBand;
    QRExpr24: TQRExpr;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    PCurva: TPanel;
    RBQuantidade: TRadioButton;
    RBValor: TRadioButton;
    RBLucrat: TRadioButton;
    QRRelSinServ: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel3: TQRLabel;
    QRSysData5: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    Alx: TIBQuery;
    QRShape1: TQRShape;
    QRDBText4: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape2: TQRShape;
    QRLabel37: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRLabel41: TQRLabel;
    QRShape3: TQRShape;
    rvControleVendServ: TRvSystem;
    RdGrpGerencial: TRadioGroup;
    EdAux: TFloatEdit;
    EdAux2: TFloatEdit;
    EdAux3: TFloatEdit;
    PRelatorioGerencial: TPanel;
    CbPedidoVenda: TCheckBox;
    CbOS: TCheckBox;
    CbPedidoCompra: TCheckBox;
    dbComboBoxCaixa2: TDBLookupComboBox;
    lbCaixa: TLabel;
    DBRelPagServ: TfrxDBDataset;
    RelPagServ: TfrxReport;
    Tempresa: TfrxDBDataset;
    gbPeriodo: TGroupBox;
    Label2: TLabel;
    dblCaixa: TDBLookupComboBox;
    Label3: TLabel;
    dblPeriodoInicial: TDBLookupComboBox;
    Label5: TLabel;
    dblPeriodoFinal: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRRelSinServBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure rvControleVendServPrint(Sender: TObject);
    procedure rvControleVendServBeforePrint(Sender: TObject);
    procedure dbComboBoxCaixa2Click(Sender: TObject);
    procedure dblCaixaExit(Sender: TObject);
    procedure dblCaixaDropDown(Sender: TObject);
  private
    { Private declarations }
	 Procedure ImpSaldoCtaCor;//Imprime Saldo das Contas Correntes
	 Procedure ImpMapaResumo;//Imprime Mapa Resumo
  public
    { Public declarations }
	 //Imprime Relatório de Curva ABC de Produtos
	 Procedure ImpRelCurvaABC;
   //Imprime Relatório de vendas de veículos
   Procedure ImpRelVendaVeiculo;
	 //Imprime Relatório de produtos e serviços vendidos
	 Procedure ImpRProdVendOP;
	 //Imprime Relatório de produtos e serviços vendidos em Contas
	 Procedure ImpRProdVendOPCta;
    //Imprime Relatório de Despesas de Veículos
    Procedure ImpRDespVeiculos;
    //Imprime Relatório Sintetico de Servicos Prestados
    Procedure ImpRelSinServ;

    procedure Imprime(RVRel: TRVSystem; Linha: Double; Coluna:Double; Texto:String; Fonte:String; TamFonte:Integer; CorFonte:TColor; Tipo:Boolean);
    //MAURO - Função para imprimir Relatório de Controle Dia/Mes de Vendas e Serviços
    Function ImpRelControleDiaMesVendasServ : Boolean;
	 Function ImpRelControleDiaMesVendasServFiltraDadosServicos : Boolean;
	 Function ImpRelControleDiaMesVendasServFiltraDadosProdutos : Boolean;
    Function ImpRelControleDiaMesVendasServFiltraDadosRecebimentos : Boolean;
    Function ImpRelControleDiaMesVendasServTitulo: Boolean;
    Function ImpRelControleDiaMesVendasServCabecalho: Boolean;
    Function ImpRelControleDiaMesVendasServItensSERV: Boolean;
    Function ImpRelCaixaBS : Boolean;//Iniciar relatório de caixa específico da bs acessórios
    //Imprime os dados de totais do dia
    Function ImpRelCaixaBS_ImprimeTotalDia : Boolean;
    //Chamada da funcionalidade que trata de serviços para o dia do relatório de caixa da BS
    Function ImpRelCaixaBS_Servicos : Boolean;
    //Limpa as Variáveis utilizadas na totalização do relatório de caixa específico da bs acessórios
    Function ImpRelCaixaBSLimpaVariaveisTotal : Boolean;
    //Limpa as Variáveis utilizadas na totalização do dia do relatório de caixa específico da bs acessórios
    Function ImpRelCaixaBSLimpaVariaveisDia : Boolean;
    //Imprime os dados de totais do relatório
    Function ImpRelCaixaBS_ImprimeTotalRelatorio : Boolean;
    //Limpa as Variáveis utilizadas na linha do relatório de caixa específico da bs acessórios
    Function ImpRelCaixaBSLimpaVariaveisLinha : Boolean;
    //Imprime titulos do itens
    Function ImpRelCaixaBSTitulosItens : Boolean;
    Function ImpRelCaixaBS_SelecionaDados(Tipo: String): Boolean; //Seleciona os dados principais de produtos, serviços e recebimentos a serem tratados
     //Seleciona os valores de entrada Cartão para ordem de serviço
    Function ImpRelCaixaBS_RetornaEntradasdeOSCartao(Codigo: Integer; Tipo: String): Real;
     //Seleciona os valores de entrada Dinheiro para ordem de serviço
    Function ImpRelCaixaBS_RetornaEntradasdeOSDinheiro(Codigo: Integer; Tipo: String): Real;
     //Seleciona os valores de entrada Pix para ordem de serviço
    Function ImpRelCaixaBS_RetornaEntradasdeOSPix(Codigo: Integer; Tipo: String): Real;
    //Soma valores as variáveis de totalização
    Function ImpRelCaixaBSAcumulaVariaveisTotal : Boolean;
    //Retorna valor valores a prazo para produtos e serviços
    Function ImpRelCaixaBS_RetornaValoresPrazoRecebido: Boolean;
    Function ImpRelCaixaBS_RetornaValores(Tipo: String): Boolean; //retorna os valores referente aos recebimentos no PIX
    //Seleciona os dados principais de produtos, serviços e recebimentos a serem tratados
    Function ImpRelCaixaBS_TrataImprimeDados(Tipo: String): Boolean;
    Function ImpRelControleDiaMesVendasServItensPROD: Boolean;
    Function ImpRelControleDiaMesVendasServItensRECEB: Boolean;
    Function ImpRelControleDiaMesVendasServRodape: Boolean;
    Function SelecionaFormaPag: Boolean;
	 //Função utilizada para retornar a funçõ de itens vendidos o valor proporcional do produto em relação aos demais
	 Function RetornaAliquotaProporcaoProduto : Real;
	 //Função utilizada para retornar a funçõ de itens vendidos o valor proporcional do SERVICO  em relação aos demais
	 Function RetornaAliquotaProporcaoServico : Real;
    Function LimparValores : Boolean;
    Function CalculaDescontoServ(xCodigo: Integer): Boolean;
    Function CalculaDescontoProd(xCodigo: Integer): Boolean;
    //Jônatas 18/09/2013 - Função para Relatório Gerencial - Lancaixa
    Function ImpRelGerencialSinteticoLancaixa : Boolean;
    Function ImpRelGerencialAnaliticoLancaixa : Boolean;
    //Jônatas 18/09/2013 - Função para Relatório Gerencial - Movbanco
    Function ImpRelGerencialSinteticoMovbanco : Boolean;
    Function ImpRelGerencialAnaliticoMovbanco : Boolean;
    //Jônatas 19/06/2013 - Função para Imprimir os totais do Relatorio Gerencial
    Function ImpRelGerencialSoma : Boolean;
    Function ImpRelGerencialTotal : Boolean;
    //Jônatas 18/06/2013 - Função para Relatório Gerencial - Contas Pagas
    Function ImpRelGerencialSinteticoContasPagas : Boolean;
    Function ImpRelGerencialAnaliticoContasPagas : Boolean;
    //Jônatas 18/06/2013 - Função para Relatorio Gerencial - Compras
    Function ImpRelGerencialSinteticoCompras : Boolean;
    Function ImpRelGerencialAnaliticoCompras : Boolean;
    //Jônatas 17/06/2013 - Função para Relatório Gerencial - Produtos
    Function ImpRelGerencialAnaliticoProduto : Boolean;
    Function ImpRelGerencialSinteticoProduto : Boolean;
    //Jônatas 17/06/2013 - Função para gerar o rodapé do relatório Gerencial
    Function ImpRelGerencialRodape : Boolean;
    //Jônatas 14/06/2013 - Função para subcabeçalho do relatório gerencial
    Function ImpRelGerencialCabecalho(Tipo: Integer): Boolean;
    //Jônatas - Função para nova página do Reatório Gerencial
    Function ImpRelGerencial_NovaPagina(Tipo : Integer) : Boolean;
    //Jônatas 13/06/2013 - Funções para Relatório Gerencial - Serviços
    Function ImpRelGerencial : Boolean;
    Function ImpRelGerencialSinteticoOS : Boolean;
    Function ImpRelGerencialAnaliticoOS : Boolean;
    //MAURO - Função para gerar nova pagina
    Function NovaPagina : Boolean;
	 //Função Utilizada para Seleciona a forma de pagamento para o relatorio
	 Function SelecionaFormaPag2 : Boolean;
    //Edmar - 18/12/2013 - Função utilizada para iniciar a impressão o relatorio de lista por caixa
    function ImpRelListagemCaixa: Boolean;
    //Edmar - 18/12/2013 - Função utilizada para imprimir saldo anterior do relatorio de listagem
	 function ImpRelListagemSaldoAnterior: Boolean;
    //Edmar - 18/12/2013 - Função utilizada para imprimir entradas do relatorio de listagem
	 function ImpRelListagemEntradas: Boolean;
    //Edmar - 18/12/2013 - Função utilizada para imprimir saidas do relatorio de listagem
	 function ImpRelListagemSaidas: Boolean;
    //Edmar - 18/12/2013 - Função utilizada para imprimir do relatorio de listagem pela data escolhida
	 function ImpRelListagemSaldoFinal: Boolean;
    //Edmar - 18/12/2013 - Função utilizada para imprimir o cabeçalho do relatorio de listagem
    function ImpRelListagemCabecalho: Boolean;
	 //Edmar - 19/12/2013 - Função utilizada para imprimir o cabeçalho entradas do relatorio de listagem
    function ImpRelListagemCabecalhoEntradas: Boolean;
	 //Edmar - 19/12/2013 - Função utilizada para imprimir o cabeçalho saidas do relatorio de listagem
    function ImpRelListagemCabecalhoSaidas: Boolean;

    //MAURO FUNÇÔES REL BALANCETE
   //MAURO - 18/02/2013 - Função Padrão para Imprimir Cabecalho RAVE
   Function ImpRelCabecalho : Boolean;
   //MAURO - Função para Imprimir o cabecalho do Relatorio
   Function ImpRelBalanceteCabecalho : Boolean;
   Procedure  ImpRelCabecalhoFluxoCaixaCompleto(TipoCab : String);
   //Edmar - 16/12/2013 - Função usada para imprimir as informações de transferencias bancárias
   function ImpRelBalanceteTransBanc: Boolean;
   //Edmar - 16/12/2013 - Função utilizada para imprimir o saldo anterior
   Function ImpRelBalanceteSaldoAnterior: Boolean;
	//Alex - Função para imprimir Rodapé do Fluxo de caixa
	Procedure  ImpRelRodapeFluxoCaixaCompleto(TipoCab : String);
	//Alex - Função para imprimir os dados de Ctas a receber para fluxo de caixa completo
	Procedure  ImpRelFluxoCaixaCompletoCtasReceber(DataRelFluxoCaixa: TDate; Tipo: String);
	//Alex - Função para imprimir os dados de Ctas a pagar para reltório de recebimentos e pagamentos
	Procedure  ImpRelFluxoCaixaCompletoCtasPagar(DataRelFluxoCaixa: TDate; Tipo: String);
	//Alex - Função para imprimir os dados de Caixapara fluxo de caixa completo
	Procedure  ImpRelFluxoCaixaCompletoCaixa(DataRelFluxoCaixa: TDate; Tipo: String);
   //MAURO - Função para Imprimir o rodape do Relatorio
   Function ImpRelBalanceteRodape : Boolean;
   //MAURO - Função para Imprimir o relatorio Balancete Mensal
	Function ImpRelBalancete : Boolean;
   //Retorna o saldo de entradas para o periodo já formatado como string
   Function ImpRelBalancetePeriodoSaldoEntradas : Real;
   //Retorna o saldo de Pró labore
   Function ImpRelBalancetePeriodoSaldoPro(Var CodigoProLabore: Integer) : Real;
   //Retorna o saldo de T. Banco para o periodo já formatado como string
   Function ImpRelBalancetePeriodoSaldoTBanco : Real;
   //Retorna o saldo de Saidas para o periodo já formatado como string
   Function ImpRelBalancetePeriodoSaldoSaidas : Real;
	//Balancete mensal por período
	Function ImpRelBalancetePeriodo : Boolean;
   //ALEX - Função para Imprimir o relatorio de Fluxo de Caixa completo
	Function ImpRelFluxoCaixaCompleto : Boolean;
   //alex funcção para iniciar nova pagina relatorio de fluxo de caixa completo
   Function ImpRelFluxoCaixaCompletoIniciaNovaPagina: Boolean;
   //Alex - Função para Imprimir o relatorio Serviços prestados Agrupados por Grades + Produtos
	Function ImpRelServicosGrade : Boolean;
   //MAURO - Função para Selecionar as contas Pro Labore
   Function SelContaProLabore : Boolean;
   //MAURO - Função para Imprimir todos os lancamentos de entradas
   Function ImpRelBalanceteEntradas : Boolean;
   //MAURO - Função para Imprimir todos os lancamentos de saida
   Function ImpRelBalanceteSaidas : Boolean;
   //MAURO - Função para Imprimir todos os lancamentos banco
   Function ImpRelBalanceteBancos : Boolean;
   //MAURO - Função para Imprimir todos os lancamentos Pro labore
   Function ImpRelBalanceteOutros : Boolean;
	//MAURO - Função para filtrar os lancamentos de  entradas
   Function ImpRelBalanceteFiltraEntradas : Boolean;
   //MAURO -Função para filtrar os lancamentos de saida
   Function ImpRelBalanceteFiltraSaidas : Boolean;
   //MAURO - Função para filtrar os lancamentos de banco
   Function ImpRelBalanceteFiltraBancos : Boolean;
   //MAURO - Função para filtrar os lancamentos de Pro Labore
   Function ImpRelBalanceteFiltraOutros : Boolean;
	//Jônatas 10/06/2013 - Imprime o total das despesas pagas
	Function ImpRelServicosGrade_CustosGerais : Real;
   //Rodape geral do relatório
   Function ImpRelControleDiaMesVendasServRodapeGeral : Boolean;

   Function SomaEntradas : Boolean;
   Function SomaSaidas : Boolean;
   Function SomaBancos : Boolean;
	Function SomaOutros : Boolean;
   Function SomaOutros1 : Boolean;
   Function SomaGeral : Boolean;
   Function LimparDados : Boolean;

   Procedure FiltraPeriodos ;
   //Procedure para emitir o balancete mensal
   procedure RelBalanceteMensal;
	//Procedure para gerarl relatórios de balancete por período
	Procedure RELBALANCETEPERIODO;
	//Limpa Sql da Tabela
	Procedure LimpaSQL;
	//Abre Tabela
	Function AbreTabela: Boolean;
	//Seleciona movimentoscom o tipo
	Procedure Selectmov(Tipo:Integer);
	//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em cx
	Function ResultCaixa(XCod_ContaCX: Integer): Real;
	//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Banco
	Function ResultBanco(XCod_ContaBC: Integer):Real;
	//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Ctas Receber
	Function ResultCtaReceber(XCod_ContaCR: Integer):Real;
	//Retorna Valores em Debitos de Ctas a pagar
	Function ResultCP(XCod_ContaCP: Integer):Real;
	// GERA RELATORIO DE EQUIPE
	procedure RelatorioServicoClassificacao;
	//Relatório de comprovante de entrega de boleto
	procedure RelatorioComprovanteEntregaBoleto;
   // GERA RELATORIO DE DESPESAS POR CLASSIFICAÇÃO
   procedure RelatorioDespesasClassificacao;
   // GERA RELATORIO DE EQUIPE
   procedure RelatorioServicoClassificacaoGrafico;
   // GERA RELATORIO DE DESPESAS POR CLASSIFICAÇÃO
   procedure RelatorioDespesasClassificacaoGrafico;
   Function RetornaValorReceber(XCod_sub: Integer): Real;
   Function RetornaValorRecebido(XCod_sub:Integer): Real;
   Function RetornaValorPrestado(XCod_sub: Integer): Real;
   Function RetornaValorRecebido_a_Vista(XCod_sub: Integer): Real;
   Function RetornaDescSubServico(XCod_sub: Integer) : String;

   //Edmar - 20/07/2015 - Funções auxiliares para confecção do relatório de serviços prestados (solicitação 344)
   Function X1TotalAVista(xCodServico: Integer): Real;
   Function X2TotalAPrazo(xCodServico: Integer): Real;
   Function X4TotalAReceber(xCodServico: Integer): Real;
   Function X5TotalRecebidos(xCodServico: Integer): Real;
  end;

var
  FRelData: TFRelData;
  XCod_sub : Integer;
  XDescricaoSubServico: String;
	XTOTVNDV, XTOTVNDP, XTOTCUSTO, XTOTCOMPV, XTOTCOMPP: Real;
   XTOTSALDO, XTOTENT, XTOTSAI: Real;
	XtotMovCta: Real;
   XCodServico: Integer;
   XRetorno_desc: String;
   //Edmar - 07/04/2015 - Declaração comentada pois estava dando conflito na hora de faturar as cta receber
   //uma mesma declaração em UCtaReceber, URelData e UFaturaContas.
   //Foi deixado apenas a declaração em UMenu como padrão
{   xTipo, }xOP, xTituloRelatorio : String;
   XLinImp, XColImp, XNumPagina, XLinAddvia2: Smallint;//Variaveis para controle de impressao de comprovante
   xCodPro01, xCodPro02: Integer;//Código dos dois prolabores usados no relatorio de contas por período
   XQuantServicosImprimir, XQuantProdutosImprimir, XQuantTotalProdutosOS, XQuantRecebimentosImprimir, XQuantRecebimentosCartaoImprimir : Smallint;
   XNovaPagina, xFimData, xDados :Boolean;
   xFormaPag : String;
   xValorPrazo, xValorVista, xValorPix, xValorCartao, xValorRecebe : String;
   xValorVistaTotal, xValorPixTotal, xValorPrazoTotal, xValorCartaoTotal, xValorRecebeTotal, xTotalDia : String;//Variaveis acumuladores para os relatórios de  Relatório de vendas e recebimentos
   xValorVistaTotalGeral, xValorPixTotalGeral, xValorPrazoTotalGeral, xValorCartaoTotalGeral, xValorRecebeTotalGeral, xTotalDiaGeral : String;//Variaveis acumuladores para o final do relatório de vendas e recebimentos
   XPARCPRAZO, XPARCPIX, XPARCCARTAO, XPARCVISTA, XVALOR, XTOTAL : REAL;

   //Inicio Váriaveis abaixo se referem a variáveis utilizados no relatório da Bs Acessórios
   xBsLinhaValorVista, xBsLinhaValorPrazo, xBsLinhaValorPix, xBsLinhaValorCartao, xBsLinhaValorRecebimento  : Real;
   xBsDiaValorVista, xBsDiaValorPrazo, xBsDiaValorPix, xBsDiaValorCartao, xBsDiaValorRecebimento : Real;
   xBsTotalValorVista, xBsTotalValorPrazo, xBsTotalValorPix, xBsTotalValorCartao, xBsTotalValorRecebimento, xbsTotalPSaPagar, xbsTotalPSPago, xbsProposrionalPago : Real;
   xBsDescritivoLinha : String;
   //Fim Váriaveis abaixo se referem a variáveis utilizados no relatório da Bs Acessórios

   XDtFiltro, xDtDebito: TDate;
   xTipoPapel : String;
   xVlrEntrada,xVlrTotalEntrada,xVlrSaida,xVlrTotalSaida,xVlrDepos,xVlrCart,xVlrTotalDepos,xVlrTotalCart,xVlrOutros, xVlrTransBanc : String;
   xVlrOutros1,xVlrTotalOutros, xVlrTotalSaidaBancos, xTotalGeral : String;
   xVlrTotalOutros1,xVlrTotalBancos, xvlrSaldoDiario, xVlrSaidaBancos, xVlrOutrosTot, xVlrOutrosDiario, XvalorRecebeCartao : String;
   xvlr,XVALORENTRADA,XVALORSAIDA,XTOTALENTRADA,XTOTALSAIDA,XTOTALDEPOS,XTOTALCART,XVALORDEPOS,XVALORCART,XVALOROUTROS : REAL;
   XVALOROUTROS1,XTOTALOUTROS,XTOTALOUTROS1, XVALORSAIDABANCO, XTOTALSAIDABANCO, xValorAnterior : REAL;
   xDtImp, xOutros : Boolean;
   xCod_ProLabore1, xCod_ProLabore2 : Integer;
   XTotEntradaCarteira, XTotEntradaChequeVista, XTotSaidaChequeVista, XTotEntradaChequePrazo, XTotSaidaChequePrazo, XTotSaidaCarteira, XTotEntradaCheque, XTotSaidaCheque, XTotEntradaBoleto, XTotSaidaBoleto, XTotEntradaCartaoC, XTotSaidaCartaoC, XTotEntradaCartaoD, XTotSaidaCartaoD, XTotEntradaOutros, XTotSaidaOutros: Real;//Totalizadores de acordo com a forma de pagamento, utilizado no relatorio de recebimentos e pagamentos
   XTotalAVista, XTotalAPrazo, XTotalEntradaGer, XTotalSaidaGer : Real;
   XCodItem, XCodOrdem: Integer;
   //Jônatas 20/09/2013 - Controle de impressão de cabeçalhos para relatório gerencial analítico
   xFlagMB, xFlagCP, xFlagLC, xEscolheu: Boolean;
   XTotalEntradasDiaBalancete, XTotalSaidasDiaBalancete, xVlrTotListEntrada, xVlrTotListSaida, xVlrTotListData: Real;//Variaveis utilizadas no relatório de balancete
implementation

uses UPadrao, UDMEstoque, UMenu, UDMMacs, UMensagem, AlxMessage, UDMFinanc,
  UDmBanco, StrUtils, Math, Alxor32, UDMConta, UDmServ, UDMSaida, DateUtils,
  UDMEntrada, UMDO, URelGraficoPizza, UDMCaixa, UDMFast;

{$R *.dfm}

// GERA RELATORIO DE DESPESAS POR CLASSIFICAÇÃO
procedure TFRelData.RelatorioDespesasClassificacaoGrafico;
begin
	Try
       FMenu.TIPOREL:='RELDESPESACLASSIFICACAOGRAFICO';
       FMenu.XDtFiltro01:=StrToDate(EdDataIni.Text);
       FMenu.XDtFiltro02:=StrToDate(EdDataFim.Text);
       AbrirForm(tfrelGraficoPizza, FRelGraficoPizza, 0);
   Except

   End;
End;

// GERA RELATORIO DE EQUIPE
procedure TFRelData.RelatorioServicoClassificacaoGrafico;
begin
	Try
       FMenu.TIPOREL:='SERVICOCLASSIFICACAOGRAFICO';
       FMenu.XDtFiltro01:=StrToDate(EdDataIni.Text);
       FMenu.XDtFiltro02:=StrToDate(EdDataFim.Text);
       AbrirForm(tfrelGraficoPizza, FRelGraficoPizza, 0);
   Except

   End;
End;
// GERA RELATORIO DE DESPESAS POR CLASSIFICAÇÃO
procedure TFRelData.RelatorioDespesasClassificacao;
begin

   FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');

   FiltraTabela(DMMACS.TEmpresa,'EMPRESA','COD_EMPRESA',DMMACS.TLoja.FieldByname('cod_empresa').AsString,'');

   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('  select despadic.cod_despadic, despadic.cod_gerador, despadic.despesa, despadic.qtd, vwsubservico.descricao as classificacao, ');
   DMESTOQUE.TRel.SQL.Add('   despadic.vlrfinal, despadic.cod_equipe, despadic.vlrtotfin, pedvenda.cod_pedvenda, pedvenda.numped, pedvenda.dtpedven, pessoa.cod_pessoa, pessoa.nome, cliente.cod_cliente, cliente.cod_pessoa ');
   DMESTOQUE.TRel.SQL.Add('   from despadic ');
   DMESTOQUE.TRel.SQL.Add('   left join pedvenda on despadic.cod_gerador = pedvenda.cod_pedvenda ');
   DMESTOQUE.TRel.SQL.Add('   left join vwsubservico on despadic.cod_servico = vwsubservico.cod_subservico ');
   DMESTOQUE.TRel.SQL.Add('   left join cliente on pedvenda.cod_cliente = cliente.cod_cliente ');
   DMESTOQUE.TRel.SQL.Add('   left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
   DMESTOQUE.TRel.SQL.Add('   where (despadic.gerador = ' + #39 + 'PEDVENDA' + #39 + ') AND (pedvenda.situacao = ' + #39 + 'FECHADO' + #39 + ') ');

   // verifica se a data dos dois campos foram informadas
   If (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ')
   Then Begin
       DMESTOQUE.TRel.SQL.Add('AND ( pedvenda.dtfech Between :Data1 and :Data2 )');
       DMESTOQUE.TRel.ParamByName('data1').AsString := EdDataIni.Text;
       DMESTOQUE.TRel.ParamByName('data2').AsString := EdDataFim.Text;
   End;

   DMESTOQUE.TRel.SQL.Add('order by vwsubservico.descricao, pedvenda.cod_pedvenda');
   DMESTOQUE.TRel.Open;

   If DMESTOQUE.TRel.IsEmpty
   Then Begin
       Mensagem('   A T E N Ç Ã O   ', 'O relatório retornou vazio','',1,1,false,'I');
       Exit;
   End;

   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelDespesasporClassificacao.frf');
   FSRel.ShowReport;

end;
// GERA RELATORIO DE EQUIPE
procedure TFRelData.RelatorioServicoClassificacao;
begin

   FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');

   FiltraTabela(DMMACS.TEmpresa,'EMPRESA','COD_EMPRESA',DMMACS.TLoja.FieldByname('cod_empresa').AsString,'');

   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add(' select despadic.cod_despadic, despadic.cod_gerador, despadic.despesa, despadic.qtd, vwsubservico.descricao as classificacao, ');
   DMESTOQUE.TRel.SQL.Add(' despadic.vlrfinal, despadic.cod_equipe, despadic.vlrtotfin, ordem.cod_ordem, ordem.numero, ordem.dtabert, ');
   DMESTOQUE.TRel.SQL.Add(' equipamento.cod_equipamento, equipamento.descricao as EQUIPAMENTO, equipamento.placa, ');
   DMESTOQUE.TRel.SQL.Add(' equipamento.num_frota, pessoa.cod_pessoa, pessoa.nome, cliente.cod_cliente, cliente.cod_pessoa ');
   DMESTOQUE.TRel.SQL.Add(' from despadic ');
   DMESTOQUE.TRel.SQL.Add(' left join ordem on despadic.cod_gerador = ordem.cod_ordem ');
   DMESTOQUE.TRel.SQL.Add(' left join vwsubservico on despadic.cod_servico = vwsubservico.cod_subservico ');
   DMESTOQUE.TRel.SQL.Add(' left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento ');
   DMESTOQUE.TRel.SQL.Add(' left join cliente on ordem.cod_cliente = cliente.cod_cliente ');
   DMESTOQUE.TRel.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
   DMESTOQUE.TRel.SQL.Add('where (despadic.gerador = ' + #39 + 'ORDEM' + #39 + ') AND (ordem.STATUS = ' + #39 + 'FECHADO' + #39 + ') ');

   // verifica se a data dos dois campos foram informadas
   If (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ')
   Then Begin
       DMESTOQUE.TRel.SQL.Add('AND ( ORDEM.dtfech Between :Data1 and :Data2 )');
       DMESTOQUE.TRel.ParamByName('data1').AsString := EdDataIni.Text;
       DMESTOQUE.TRel.ParamByName('data2').AsString := EdDataFim.Text;
   End;

   DMESTOQUE.TRel.SQL.Add('order by vwsubservico.descricao, ordem.cod_ordem');
   DMESTOQUE.TRel.Open;

   If DMESTOQUE.TRel.IsEmpty
   Then Begin
       Mensagem('   A T E N Ç Ã O   ', 'O relatório retornou vazio','',1,1,false,'I');
       Exit;
   End;

   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelServicoporClassificacao.frf');
   FSRel.ShowReport;

end;

//Relatório de comprovante de entrega de boleto
procedure TFRelData.RelatorioComprovanteEntregaBoleto;
Var
	XTexto: String;
   XCont: Integer;
begin
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('   Select distinct(ctareceber.cod_ctareceber) from ctareceber ');
   // verifica se a data dos dois campos foram informadas
   If (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ')
   Then Begin
   	DMESTOQUE.TRel.SQL.Add('   where (ctareceber.dtlanc between :Dt1 and :Dt2) ');
       DMESTOQUE.TRel.ParamByName('dt1').AsString := EdDataIni.Text;
       DMESTOQUE.TRel.ParamByName('dt2').AsString := EdDataFim.Text;
   End;
   DMESTOQUE.TRel.SQL.Add(' order by ctareceber.cod_ctareceber ');
   DMESTOQUE.TRel.Open;
   If DMESTOQUE.TRel.IsEmpty
   Then Begin
       Mensagem('   A T E N Ç Ã O   ', 'O relatório retornou vazio','',1,1,false,'I');
       Exit;
   End;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('Delete from tmp ');
   DMMACS.TMP.ExecSQL;
   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' Select * from tmp ');
   DMMACS.TMP.Open;
   XTexto:='';
   DMESTOQUE.TRel.First;
   While Not DMESTOQUE.TRel.Eof do
   Begin
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add(' Select vwparcr.dtvenc,  vwparcr.nome, vwparcr.valor, vwparcr.numboleto, vwparcr.numparc from vwparcr where (vwparcr.cod_ctareceber=:codigo) and (vwparcr.fech=''N'')  order by vwparcr.dtvenc');
       DMESTOQUE.Alx1.ParamByName('codigo').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_ctareceber').AsInteger;
       DMESTOQUE.Alx1.Open;
       If not DMESTOQUE.Alx1.IsEmpty
       Then Begin
           XCont:=1;
       	DMESTOQUE.Alx1.First;
       	While Not DMESTOQUE.Alx1.Eof do
       	Begin
       		XTexto:=XTexto+IntToStr(XCont)+'º Boleto: '+DMESTOQUE.Alx1.FieldByName('numboleto').AsString+' - Venc.: '+DMESTOQUE.Alx1.FieldByName('dtvenc').AsString +' - Valor: R$ '+FormatFloat('0.00', DMESTOQUE.Alx1.FieldByName('valor').AsCurrency)+'  |  ';
               XCont:=XCont+1;
           	DMESTOQUE.Alx1.Next;
       	End;
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_ctareceber').AsInteger;
           DMMACS.TMP.FieldByName('obs').Asstring:=XTexto;
           DMMACS.TMP.FieldByName('desc1').Asstring:=copy(DMESTOQUE.Alx1.FieldbyName('nome').AsString, 0, 60);
           DMMACS.TMP.Post;
			XTexto:='';
       End;
       DMESTOQUE.TRel.Next;
   End;
   DMMACS.Transaction.CommitRetaining;
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add(' Select tmp.obs, tmp.desc1 from tmp');
   DMESTOQUE.TRel.Open;
   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompEntregaBoleto.frf');
   FSRel.ShowReport; 
end;


//Jônatas 10/06/2013
//Imprime o total das despesas pagas
Function TFRelData.ImpRelServicosGrade_CustosGerais : Real;
Begin
     Try
        DMServ.Alx.Close;
        DMServ.Alx.SQL.Clear;
        DMServ.Alx.SQL.Add(' select sum(vwparcp.valorpg) as TOTAL from vwparcp');
        DMServ.Alx.SQL.Add(' where (vwparcp.fech = '+#39+'S'+#39+')');
        DMServ.Alx.SQL.Add(' and (vwparcp.dtdebito between :Dt1 and :Dt2)');
        DMServ.Alx.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
        DMServ.Alx.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
        DMServ.Alx.Open;
        if (DMServ.Alx.FieldByName('TOTAL').AsCurrency > 0) then
            Result:=DMServ.Alx.FieldByName('TOTAL').AsCurrency
        else
            Result:=0;
     Except
        Result:= 0;
     End;
End;
//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em cx
Function TFRelData.ResultCaixa(XCod_ContaCX: Integer): Real;
Begin
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(lancaixa.valor) AS VALOR from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.ESTRU='+#39+'1'+#39+')');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
	If (EdDataFim.Text<>'  /  /    ') AND (EdDataIni.Text<>'  /  /    ')
   Then Begin
		DMCONTA.TAlx.SQL.Add(' AND ((lancaixa.dtrefer>=:DT1) And (lancaixa.dtrefer<=:DT2)) ');
		DMCONTA.TAlx.ParamByName('DT1').AsDate:=StrToDate(EdDataIni.Text);
		DMCONTA.TAlx.ParamByName('DT2').AsDate:=StrToDate(EdDataFim.Text);
   End;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   Result:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
End;

//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Banco
Function TFRelData.ResultBanco(XCod_ContaBC: Integer):Real;
Begin
   	//////////////////////////////////////
   	//PROCESSO PARA REGIME DE COMPETENCIA
       /////////////////////////////////////
       //REALIZADO
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA) AND (movbanco.fech='+#39+'S'+#39+')  AND (movbanco.ESTRU='+#39+'1'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDataFim.Text<>'  /  /    ') AND (EdDataIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTLANC>=:DT1) And (movbanco.DTLANC<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDataIni.Text);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDataFim.Text);
        End;
   	 DMCONTA.TAlx.SQL.Text;
   	 DMCONTA.TAlx.Open;
   	 Result:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;

		//EFETUA SQL PARA PREVISTOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech<>'+#39+'S'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDataFim.Text<>'  /  /    ') AND (EdDataIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTLANC>=:DT1) And (movbanco.DTLANC<=:DT2)) ');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDataIni.Text);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDataFim.Text);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
   	Result:=Result+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
End;
//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Ctas Receber
Function TFRelData.ResultCtaReceber(XCod_ContaCR: Integer):Real;
Begin
	//EFETUA SQL PARA CREDITOS NA CONTA COD_PLNCTA PARA PRODUTOS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('Select Sum(parcelacr.valorprod) AS VALOR from parcelacr ');
   DMCONTA.TAlx.SQL.Add('   left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber Where (CtaReceber.cod_plncta=:COD_CONTA) AND (parcelacr.fech<>'+#39+'S'+#39+')');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCR;
   If (EdDataFim.Text<>'  /  /    ') AND (EdDataIni.Text<>'  /  /    ')
   Then Begin
		DMCONTA.TAlx.SQL.Add(' AND ((ctareceber.dtlanc>=:DT1) And (ctareceber.dtlanc<=:DT2)) ');
		DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDataIni.Text);
		DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDataFim.Text);
   End;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   Result:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
	//EFETUA SQL PARA CREDITOS NA CONTA COD_PLNCTASERV PARA SERVIÇOS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('Select Sum(parcelacr.valorServ) AS VALOR from parcelacr ');
   DMCONTA.TAlx.SQL.Add('   left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber Where (CtaReceber.cod_plnctaServ=:COD_CONTA) AND (parcelacr.fech<>'+#39+'S'+#39+')');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCR;
   If (EdDataFim.Text<>'  /  /    ') AND (EdDataIni.Text<>'  /  /    ')
   Then Begin
		DMCONTA.TAlx.SQL.Add(' AND ((ctareceber.dtlanc>=:DT1) And (ctareceber.dtlanc<=:DT2)) ');
		DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDataIni.Text);
		DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDataFim.Text);
   End;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   Result:=Result+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
End;
//Retorna Valores em Debitos de Ctas a pagar
Function TFRelData.ResultCP(XCod_ContaCP: Integer):Real;
Begin
	//EFETUA SQL PARA DEBITOS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(vwparcp.valor) AS VALOR from vwparcp Where (vwparcp.cod_plncta=:COD_CONTA)  AND (vwparcP.fech<>'+#39+'S'+#39+')');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCP;
   If (EdDataFim.Text<>'  /  /    ') AND (EdDataIni.Text<>'  /  /    ')
   Then Begin
		DMCONTA.TAlx.SQL.Add(' AND ((vwparcp.dtlanc>=:DT1) And (vwparcp.dtlanc<=:DT2)) ');
		DMCONTA.TAlx.ParamByName('DT1').AsDate:=StrToDate(EdDataIni.Text);
		DMCONTA.TAlx.ParamByName('DT2').AsDate:=StrToDate(EdDataFim.Text);
   End;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   Result:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
End;

//Abre Tabela
Function TFRelData.AbreTabela: Boolean;
Begin
   DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.Open;
   If DMESTOQUE.TRel.IsEmpty
   Then Begin
		Mensagem('INFORMAÇÃO', ' O Relatório retornou sem informações!', '', 1, 1, False, 'I');
       Result:=False;
   End
   Else Begin
       Result:=True;
   End;
End;

//Limpa Sql da Tabela
Procedure TFRelData.LimpaSQL;
Begin
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
End;
//Imprime Relatório Analitico de OS
Procedure TFRelData.imprelSinServ;
Begin

      DMESTOQUE.TRel.Close;
      DMESTOQUE.TRel.SQL.Clear;
      DMESTOQUE.TRel.SQL.Add(' select vwordem.cod_ordem, vwordem.numero ,vwordem.dtabert, vwordem.dtfech,');
      DMESTOQUE.TRel.SQL.Add(' vwordem.equipamento, vwordem.cliente, vwordem.formapag, ordem.totprod, ordem.totserv ');
      DMESTOQUE.TRel.SQL.Add(' from vwordem');
      DMESTOQUE.TRel.SQL.Add('       left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
      DMESTOQUE.TRel.SQL.Add('where (vwordem.dtabert>=:DATA1) and (vwordem.dtabert<=:DATA2)');
      DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDate(EdDataIni.Text);
      DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDate(EdDataFim.Text);
      DMESTOQUE.TRel.SQL.Add('order by vwordem.cod_ordem');
      DMESTOQUE.TRel.Open;

      DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP1').AsString:='Dt. Ini.: '+EdDataIni.Text+' / Dt. Fin.: '+EdDataFim.Text;
      DMMACS.TLoja.FieldByName('TMP2').AsString:='Ordem/Relatórios/Relatório Analítico de Serviços Prestados';
      DMMACS.TLoja.Post;
      DMMACS.Transaction.CommitRetaining;

      QRRelSinServ.Preview;
end;

//Imprime Relatório de produtos e serviços vendidos em Contas
Procedure TFRelData.ImpRProdVendOPCta;
Var
	XCod_Tmp: Integer;
   XTotProd, XTotServ, XTotComp, XVALOR: Real;
Begin
   PComunica.Visible:=True;
   PComunica.Caption:='AGUARDE...';
   PComunica.BringToFront;
   PComunica.Refresh;
  	//APAGA REGISTROS DA TABERLA TMP
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('DELETE FROM TMP ');
   DMCONTA.TAlx.ExecSQL;
   DMCONTA.IBT.CommitRetaining;
   XCod_Tmp:=1;
   Try
       FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   	//TRABALHO PARA PRODUTOS
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:='PRODUTOS';
       DMMACS.TMP.Post;
       XCod_Tmp:=XCod_Tmp+1;
       /////////////////
       //PRODUTO A VISTA
       /////////////////
       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString, '');
       //**CAIXA**
       XVALOR:=ResultCaixa(DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger);
       //**BANCO**
       XVALOR:=xValor+ResultBanco(DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger);
       //**CTAS RECEBER**
       XVALOR:=xValor+ResultCtaReceber(DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger);
       //**CTAS PAGAR**
       XVALOR:=XValor+ResultCP(DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger);
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       DMMACS.TMP.FieldByName('DESC1').AsString:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XVALOR;
       DMMACS.TMP.Post;
       XTotProd:=XTotProd+XVALOR;
       XCod_Tmp:=XCod_Tmp+1;
       /////////////////
       //PRODUTO A PRAZO
       /////////////////
       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString, '');
       //**CAIXA**
       XVALOR:=ResultCaixa(DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger);
       //**BANCO**
       XVALOR:=XValor+ResultBanco(DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger);
       //**CTAS RECEBER**
       XVALOR:=XValor+ResultCtaReceber(DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger);
       //**CTAS PAGAR**
       XVALOR:=XValor+ResultCP(DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger);
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       DMMACS.TMP.FieldByName('DESC1').AsString:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XVALOR;
       DMMACS.TMP.Post;
       XTotProd:=XTotProd+XVALOR;
       XCod_Tmp:=XCod_Tmp+1;

       //INSERE TOTALIZADOR DE PRODUTOS
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:='=';
       DMMACS.TMP.FieldByName('DESC1').AsString:='Total para Produtos Vendidos:';
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XTotProd;
       DMMACS.TMP.Post;
       XCod_Tmp:=XCod_Tmp+1;

   	//INSERE LINHA EM BRANCO
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:='';
       DMMACS.TMP.Post;
       XCod_Tmp:=XCod_Tmp+1;

   	//TRABALHO PARA DEVOLUÇÃO
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:='DEVOLUÇÕES';
       DMMACS.TMP.Post;
       XCod_Tmp:=XCod_Tmp+1;

       /////////////////////
       //PRODUTO DEVOLVIDOS
       ////////////////////
       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTA_DEVOLUCAO').AsString, '');
       //**CAIXA**
       XVALOR:=ResultCaixa(DMMACS.TLoja.FieldByName('PLNCTA_DEVOLUCAO').AsInteger);
       //**BANCO**
       XVALOR:=XValor+ResultBanco(DMMACS.TLoja.FieldByName('PLNCTA_DEVOLUCAO').AsInteger);
       //**CTAS RECEBER**
       XVALOR:=XValor+ResultCtaReceber(DMMACS.TLoja.FieldByName('PLNCTA_DEVOLUCAO').AsInteger);
       //**CTAS PAGAR**
       XVALOR:=XValor+ResultCP(DMMACS.TLoja.FieldByName('PLNCTA_DEVOLUCAO').AsInteger);
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       DMMACS.TMP.FieldByName('DESC1').AsString:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XVALOR;
       DMMACS.TMP.Post;
		XTotProd:=XTotProd-DMMACS.TMP.FieldByName('VLR1').AsCurrency;
       XCod_Tmp:=XCod_Tmp+1;

       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:='=';
       DMMACS.TMP.FieldByName('DESC1').AsString:='Total Final para Produtos Vendidos:';
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XTotProd;
       DMMACS.TMP.Post;
       XCod_Tmp:=XCod_Tmp+1;

   	//INSERE LINHA EM BRANCO
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:='';
       DMMACS.TMP.Post;
       XCod_Tmp:=XCod_Tmp+1;

   	//TRABALHO PARA SERVIÇOS
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:='SERVIÇOS';
       DMMACS.TMP.Post;
       XCod_Tmp:=XCod_Tmp+1;

       //////////////////
       //SERVIÇOS A VISTA
       //////////////////
       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTASERV').AsString, '');
       //**CAIXA**
       XVALOR:=ResultCaixa(DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger);
       //**BANCO**
       XVALOR:=XValor+ResultBanco(DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger);
       //**CTAS RECEBER**
       XVALOR:=XValor+ResultCtaReceber(DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger);
       //**CTAS PAGAR**
       XVALOR:=XValor+ResultCP(DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger);
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       DMMACS.TMP.FieldByName('DESC1').AsString:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XVALOR;
       DMMACS.TMP.Post;
		XTotServ:=DMMACS.TMP.FieldByName('VLR1').AsCurrency;
       XCod_Tmp:=XCod_Tmp+1;

       ////////////////////
       //SERVIÇOS A PRAZO//
       ////////////////////
       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsString, '');
       //**CAIXA**
       XVALOR:=ResultCaixa(DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger);
       //**BANCO**
       XVALOR:=XValor+ResultBanco(DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger);
       //**CTAS RECEBER**
       XVALOR:=XValor+ResultCtaReceber(DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger);
       //**CTAS PAGAR**
       XVALOR:=XValor+ResultCP(DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger);
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       DMMACS.TMP.FieldByName('DESC1').AsString:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XVALOR;
       DMMACS.TMP.Post;
		XTotServ:=XTotServ+DMMACS.TMP.FieldByName('VLR1').AsCurrency;
       XCod_Tmp:=XCod_Tmp+1;

       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:='=';
       DMMACS.TMP.FieldByName('DESC1').AsString:='Total para Serviços Vendidos:';
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XTotServ;
       DMMACS.TMP.Post;
       XCod_Tmp:=XCod_Tmp+1;

   	//INSERE LINHA EM BRANCO
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:='';
       DMMACS.TMP.Post;
       XCod_Tmp:=XCod_Tmp+1;

       //TOTAL GERAL
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:='=';
       DMMACS.TMP.FieldByName('DESC1').AsString:='Total Geral de Vendas:';
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XTotServ+XTotProd;
       DMMACS.TMP.Post;
       XCod_Tmp:=XCod_Tmp+1;

   	//INSERE LINHA EM BRANCO
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:='';
       DMMACS.TMP.Post;
       XCod_Tmp:=XCod_Tmp+1;

   	//TRABALHO PARA COMPRAS
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:='COMPRAS';
       DMMACS.TMP.Post;
       XCod_Tmp:=XCod_Tmp+1;

       ///////////////////
       //COMPRAS A VISTA//
       ///////////////////
       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsString, '');
       //**CAIXA**
       XVALOR:=ResultCaixa(DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger);
       //**BANCO**
       XVALOR:=XValor+ResultBanco(DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger);
       //**CTAS RECEBER**
       XVALOR:=XValor+ResultCtaReceber(DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger);
       //**CTAS PAGAR**
       XVALOR:=XValor+ResultCP(DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger);
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       DMMACS.TMP.FieldByName('DESC1').AsString:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XVALOR;
       DMMACS.TMP.Post;
		XTotComp:=DMMACS.TMP.FieldByName('VLR1').AsCurrency;
       XCod_Tmp:=XCod_Tmp+1;

       //////////////////
       //COMPRAS A PRAZO
       //////////////////
       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsString, '');
       //**CAIXA**
       XVALOR:=ResultCaixa(DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger);
       //**BANCO**
       XVALOR:=XValor+ResultBanco(DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger);
       //**CTAS RECEBER**
       XVALOR:=XValor+ResultCtaReceber(DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger);
       //**CTAS PAGAR**
       XVALOR:=XValor+ResultCP(DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger);
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       DMMACS.TMP.FieldByName('DESC1').AsString:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XVALOR;
       DMMACS.TMP.Post;
		XTotComp:=XTotComp+DMMACS.TMP.FieldByName('VLR1').AsCurrency;
       XCod_Tmp:=XCod_Tmp+1;


       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
       DMMACS.TMP.FieldByName('DESC2').AsString:='=';
       DMMACS.TMP.FieldByName('DESC1').AsString:='Total para Produtos Comprados:';
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XTotComp;
       DMMACS.TMP.Post;
       XCod_Tmp:=XCod_Tmp+1;

       DMMACS.Transaction.CommitRetaining;

       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add('SELECT * FROM TMP order by tmp.cod_tmp');
       DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
	   		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfProdServVendaCta.frf');
      		FSRel.ShowReport;
       End;
   Finally
   	PComunica.Visible:=False;
   End;
End;

//Imprime Relatório de Despesas de Veículos
Procedure TFRelData.ImpRDespVeiculos;
Begin
   Try
   Finally
   End;
End;

//Imprime Relatório de produtos e serviços vendidos
Procedure TFRelData.ImpRProdVendOP;
Var
	XCod_Tmp: Integer;
Begin
   PComunica.Visible:=True;
   PComunica.Caption:='AGUARDE...';
   PComunica.BringToFront;
   PComunica.Refresh;
  	//APAGA REGISTROS DA TABERLA TMP
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('DELETE FROM TMP ');
   DMCONTA.TAlx.ExecSQL;
   DMCONTA.IBT.CommitRetaining;
   XCod_Tmp:=1;
   Try
   	//TRABALHA P/ ITENS DE VENDA
   	LimpaSQL;
   	FMenu.TIPOREL:='FRFPRODVENDP';
   	DMESTOQUE.TRel.SQL.Add(' Select itenspedven.cod_estoque, itenspedven.cod_itenspedven , pedvenda.numped, pedvenda.TIPO, PRODUTO.descricao AS PRODUTO, pedvenda.vlrcomis, SUBPRODUTO.CONTRINT, pedvenda.dtpedven , subproduto.codcomposto, itenspedven.qtdeprod, ');
   	DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.descricao as NOMEPRODUTO, ');
   	DMESTOQUE.TRel.SQL.Add(' subproduto.marca, itenspedven.valrep, itenspedven.valunit, itenspedven.valcomp, ');
   	DMESTOQUE.TRel.SQL.Add(' itenspedven.descpro, itenspedven.Data, itenspedven.lucper, itenspedven.lucmoe, Itenspedven.OPERACAO, itenspedven.valortotal AS TOTPROD, pedvenda.valor AS TOTVENDA, pedvenda.desconto, pedvenda.nomecli, pedvenda.cpfcnpj, itenspedven.COEFDIV, ');
   	DMESTOQUE.TRel.SQL.Add(' subproduto.codprodfabr, itenspedven.valcusto, itenspedven.comissao ');
   	DMESTOQUE.TRel.SQL.Add(' From itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
   	DMESTOQUE.TRel.SQL.Add(' left join estoque on estoque.cod_estoque=itenspedven.cod_estoque ');
   	DMESTOQUE.TRel.SQL.Add(' left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
   	DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   	DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   	DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   	DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')');
       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin
   		DMESTOQUE.TRel.SQL.Add(' AND ((pedvenda.dtpedven>=:DATA1) And (pedvenda.dtpedven<=:DATA2))');
  			DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
  			DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
       End;
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
       	DMESTOQUE.TRel.First;
       	While not DMESTOQUE.TRel.Eof do
       	Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
               DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ESTOQUE').AsInteger;
               DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMESTOQUE.TRel.FieldByName('cod_itenspedven').AsCurrency;
               DMMACS.TMP.FieldByName('DESC1').AsString:='P';
               DMMACS.TMP.FieldByName('DESC2').AsString:='VND';
               DMMACS.TMP.Post;
               XCod_Tmp:=XCod_Tmp+1;
           	DMESTOQUE.TRel.Next;
       	End;
		End;
       //TRABALHA PARA ITENS DE ORDEM
   	LimpaSQL;
   	FMenu.TIPOREL:='FRFPRODVENDO';
   	DMESTOQUE.TRel.SQL.Add('  Select itprodord.cod_estoque, itprodord.cod_itprodord, ordem.numero, PRODUTO.descricao AS PRODUTO, SUBPRODUTO.CONTRINT, subproduto.codcomposto, itprodord.qtd, subproduto.descricao as NOMEPRODUTO, ');
   	DMESTOQUE.TRel.SQL.Add('  subproduto.marca, itprodord.valrep, itprodord.vlrunit, itprodord.valcomp,  ');
   	DMESTOQUE.TRel.SQL.Add('  itprodord.desconto,  itprodord.data,  itprodord.lucper, itprodord.lucmoe, itprodord.total  AS TOTPROD, itprodord.coefdiv,  ');
   	DMESTOQUE.TRel.SQL.Add('  subproduto.codprodfabr, itprodord.valcusto  ');
   	DMESTOQUE.TRel.SQL.Add('  From itprodord left join ordem on itprodord.cod_ordem = ordem.cod_ordem  ');
   	DMESTOQUE.TRel.SQL.Add('  left join estoque on estoque.cod_estoque=itprodord.cod_estoque  ');
   	DMESTOQUE.TRel.SQL.Add('  left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod  ');
   	DMESTOQUE.TRel.SQL.Add('  left join produto on subproduto.cod_produto = produto.cod_produto  ');
   	DMESTOQUE.TRel.SQL.Add('  left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod  ');
   	DMESTOQUE.TRel.SQL.Add('  left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod  ');
   	DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')');
       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin
   		DMESTOQUE.TRel.SQL.Add(' AND ((ordem.dtfech>=:DATA1) And (ordem.dtfech<=:DATA2))');
  			DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
  			DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
       End;
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
       	DMESTOQUE.TRel.First;
       	While not DMESTOQUE.TRel.Eof do
       	Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
               DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ESTOQUE').AsInteger;
               DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.TRel.FieldByName('cod_itprodord').AsCurrency;
               DMMACS.TMP.FieldByName('DESC1').AsString:='P';
               DMMACS.TMP.FieldByName('DESC2').AsString:='ORD';
               DMMACS.TMP.Post;
               XCod_Tmp:=XCod_Tmp+1;
           	DMESTOQUE.TRel.Next;
       	End;
		End;

       //TRABALHA PARA ITENS DE SERVIÇO
   	LimpaSQL;
   	FMenu.TIPOREL:='FRFPRODVENDO';
   	DMESTOQUE.TRel.SQL.Add('  Select subservico.cod_subservico, itservord.cod_itservord ');
   	DMESTOQUE.TRel.SQL.Add('  From itservord left join ordem on itservord.cod_ordem = ordem.cod_ordem ');
   	DMESTOQUE.TRel.SQL.Add('  left join subservico on itservord.cod_servico=subservico.cod_subservico ');
   	DMESTOQUE.TRel.SQL.Add(' WHERE (ordem.cod_loja='+FMenu.LCODLOJA.Caption+')');
       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin
   		DMESTOQUE.TRel.SQL.Add(' AND ((ordem.dtfech>=:DATA1) And (ordem.dtfech<=:DATA2))');
  			DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
  			DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
       End;
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
       	DMESTOQUE.TRel.First;
       	While not DMESTOQUE.TRel.Eof do
       	Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
               DMMACS.TMP.FieldByName('INT2').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_subservico').AsInteger;
               DMMACS.TMP.FieldByName('INT3').AsCurrency:=DMESTOQUE.TRel.FieldByName('cod_itservord').AsInteger;
               DMMACS.TMP.FieldByName('DESC1').AsString:='S';
               DMMACS.TMP.FieldByName('DESC2').AsString:='ORDS';
               DMMACS.TMP.Post;
               XCod_Tmp:=XCod_Tmp+1;
           	DMESTOQUE.TRel.Next;
       	End;
		End;

       //TRABALHA PARA ITENS DE COMPRA DE DEVOLUCÃO
   	LimpaSQL;
   	FMenu.TIPOREL:='FRFPRODVENDDEV';
   	DMESTOQUE.TRel.SQL.Add('   Select itenspedc.cod_estoque, itenspedc.cod_itenspedc , pedcompra.numped, PRODUTO.descricao AS PRODUTO, SUBPRODUTO.CONTRINT, pedcompra.dtpedcomp , subproduto.codcomposto, itenspedc.qtdeprod, ');
   	DMESTOQUE.TRel.sql.Add('   subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.descricao as NOMEPRODUTO, ');
   	DMESTOQUE.TRel.SQL.Add('   subproduto.marca, itenspedc.valunit, itenspedc.valunit, ');
   	DMESTOQUE.TRel.SQL.Add('   itenspedc.descpro, itenspedc.data, itenspedc.valortotal AS TOTPROD, pedcompra.valor AS TOTVENDA, pedcompra.desconto, ');
   	DMESTOQUE.TRel.SQL.Add('   subproduto.codprodfabr, itenspedven.lucmoe AS LUCMOEV, itenspedven.qtdeprod AS QTDV, itenspedven.valcomp AS VLRFOB, itenspedven.valcusto, itenspedven.valrep, itenspedven.coefdiv ');
   	DMESTOQUE.TRel.SQL.Add('    From itenspedc left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
   	DMESTOQUE.TRel.SQL.Add('    left join estoque on estoque.cod_estoque=itenspedc.cod_estoque ');
   	DMESTOQUE.TRel.SQL.Add('    left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
   	DMESTOQUE.TRel.SQL.Add('    left join produto on subproduto.cod_produto = produto.cod_produto ');
   	DMESTOQUE.TRel.SQL.Add('    left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   	DMESTOQUE.TRel.SQL.Add('    left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   	DMESTOQUE.TRel.SQL.Add('    left join ');
   	DMESTOQUE.TRel.SQL.Add('    itenspedven on itenspedc.cod_devolucao = itenspedven.cod_itenspedven ');
   	DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')  ');
   	DMESTOQUE.TRel.SQL.Add(' AND ((pedcompra.numdev<>'+#39+''+#39+')) ');
       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin
   		DMESTOQUE.TRel.SQL.Add(' AND ((pedcompra.dtpedcomp>=:DATA1) And (pedcompra.dtpedcomp<=:DATA2))');
   		DMESTOQUE.TRel.SQL.Text;
  			DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
  			DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
       End;
   	FMenu.TIPOREL:='FRFPRODVEND';
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
       	DMESTOQUE.TRel.First;
       	While not DMESTOQUE.TRel.Eof do
       	Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
               DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ESTOQUE').AsInteger;
               DMMACS.TMP.FieldByName('VLR3').AsCurrency:=DMESTOQUE.TRel.FieldByName('cod_itenspedc').AsCurrency;
				If DMESTOQUE.TRel.FieldByName('QTDV').AsCurrency<>0
               Then Begin
               	DMMACS.TMP.FieldByName('VLR4').AsCurrency:=(DMESTOQUE.TRel.FieldByName('LUCMOEV').AsCurrency/DMESTOQUE.TRel.FieldByName('QTDV').AsCurrency)*DMESTOQUE.TRel.FieldByName('QTDEPROD').AsCurrency;
               	DMMACS.TMP.FieldByName('VLR5').AsCurrency:=DMESTOQUE.TRel.FieldByName('VLRFOB').AsCurrency/DMESTOQUE.TRel.FieldByName('QTDV').AsCurrency;
               End
               Else Begin
					DMMACS.TMP.FieldByName('VLR5').AsCurrency:=0;
               	DMMACS.TMP.FieldByName('VLR4').AsCurrency:=0;
               End;
               DMMACS.TMP.FieldByName('VLR6').AsCurrency:=DMESTOQUE.TRel.FieldByName('COEFDIV').AsCurrency;
               DMMACS.TMP.FieldByName('VLR7').AsCurrency:=DMESTOQUE.TRel.FieldByName('VALREP').AsCurrency;
               DMMACS.TMP.FieldByName('DESC1').AsString:='P';
               DMMACS.TMP.FieldByName('DESC2').AsString:='DEV';
               DMMACS.TMP.Post;
               XCod_Tmp:=XCod_Tmp+1;
           	DMESTOQUE.TRel.Next;
       	End;
		End;
		DMMACS.Transaction.CommitRetaining;
       LimpaSQL;
   	DMESTOQUE.TRel.sql.Add('     select  tmp.desc1 as PRODSERV, subservico.descricao AS SERVICO, subproduto.descricao as PRODUTO, Tmp. Desc2 as TIPO, vwsimilar.contrint, vwsimilar.descricao, ordem.numero as DOCORD, pedvenda.numped as DOCPED, vwordem.numero AS DOCSERV, ');
   	DMESTOQUE.TRel.sql.Add('     pedcompra.numdev as DOCPC, ');
   	DMESTOQUE.TRel.sql.Add('     subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.descricao as NOMEPRODUTO, ');
   	DMESTOQUE.TRel.sql.Add('     itprodord.coefdiv as COEFDIVORD, itenspedven.coefdiv as COEFDIVPED, itprodord.valcusto AS VALCUSTOORD, itenspedven.valcusto AS VALCUSTOPED, itprodord.valcusto AS VALCUSTOSERV, ');
   	DMESTOQUE.TRel.sql.Add('     vwsimilar.marca, itprodord.qtd AS QtdOrd, itenspedven.qtdeprod as QtdPed, itenspedc.qtdeprod as QTDPC, itservord.qtd as QTDSERV,  itprodord.valcomp as valcompOrd, itenspedven.valcomp as ValCompPed, itservord.vlrunitcusto AS VALCOMPSERV, ');
   	DMESTOQUE.TRel.sql.Add('     itprodord.valcusto as ValcustoOrd, itenspedven.valcusto as ValcustoPed,  itprodord.valrep as ValrepOrd, itenspedven.valrep as ValrepPed, ');
   	DMESTOQUE.TRel.sql.Add('     itprodord.desconto as DescOrd, itenspedven.descpro as DescPED, itservord.desconto AS DESCSERV, itprodord.vlrunit as VlrUnitOrd, itenspedven.valunit as VlrUnitPed, itservord.vlrunit AS VLRUNITSERV, itenspedc.valunit AS VLRUNITPC, ');
   	DMESTOQUE.TRel.sql.Add('     itprodord.total as VlrTotalOrd, itenspedven.valortotal as VlrTotalPed, itservord.total AS VLRTOTALSERV, itenspedc.valortotal as VLRTOTALPC, itprodord.lucper as LucperOrd, itenspedven.lucper as LucperPed, itservord.lucper AS LUCPERSERV, ');
   	DMESTOQUE.TRel.sql.Add('     itprodord.lucmoe as LucMoeOrd, itenspedven.lucmoe as LucMoePed, itprodord.lucmoe AS LUCMOESERV, pedvenda.dtfech as DTPED, ordem.dtfech AS DTORD, pedcompra.dtfech AS DTPC, vwordem.dtabert AS DTSERV, ');
   	DMESTOQUE.TRel.sql.Add('     itenspedven.coefdiv as COEFDIVPED, itprodord.coefdiv as COEFDIVORD, ');
   	DMESTOQUE.TRel.sql.Add('     tmp.vlr4 as LUCMOEPC, tmp.vlr5 AS VALCOMPPC, tmp.vlr6 AS COEFDIVPC, tmp.vlr7 AS VLRREPPC ');
   	DMESTOQUE.TRel.sql.Add('      from tmp ');
   	DMESTOQUE.TRel.sql.Add('      Left Join ');
   	DMESTOQUE.TRel.sql.Add('      vwsimilar on tmp.int1=vwsimilar.cod_estoque ');
   	DMESTOQUE.TRel.sql.Add('      Left join ');
   	DMESTOQUE.TRel.sql.Add('      subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
   	DMESTOQUE.TRel.sql.Add('      Left join ');
   	DMESTOQUE.TRel.sql.Add('      produto on vwsimilar.cod_produto=produto.cod_produto ');
   	DMESTOQUE.TRel.sql.Add('      left join ');
   	DMESTOQUE.TRel.sql.Add('      itenspedven on tmp.vlr1=itenspedven.cod_itenspedven ');
   	DMESTOQUE.TRel.sql.Add('      Left Join ');
   	DMESTOQUE.TRel.sql.Add('      pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
   	DMESTOQUE.TRel.sql.Add('      Left join ');
   	DMESTOQUE.TRel.sql.Add('      itprodord on tmp.vlr2=itprodord.cod_itprodord ');
   	DMESTOQUE.TRel.sql.Add('      left join ');
   	DMESTOQUE.TRel.sql.Add('      ordem on itprodord.cod_ordem = ordem.cod_ordem ');
   	DMESTOQUE.TRel.sql.Add('      left join ');
   	DMESTOQUE.TRel.sql.Add('      itenspedc ON tmp.vlr3=itenspedc.cod_itenspedc ');
   	DMESTOQUE.TRel.sql.Add('      left join ');
   	DMESTOQUE.TRel.sql.Add('      pedcompra on itenspedc.cod_pedcompra=pedcompra.cod_pedcomp ');
   	DMESTOQUE.TRel.sql.Add('      left join ');
   	DMESTOQUE.TRel.sql.Add('      itservord on tmp.int3=itservord.cod_itservord ');
   	DMESTOQUE.TRel.sql.Add('      Left join ');
   	DMESTOQUE.TRel.sql.Add('      vwordem on itservord.cod_ordem = vwordem.cod_ordem ');
   	DMESTOQUE.TRel.sql.Add('      left join ');
   	DMESTOQUE.TRel.sql.Add('      subservico on tmp.int2 = subservico.cod_subservico ');
   	DMESTOQUE.TRel.sql.Add('      Left Join ');
   	DMESTOQUE.TRel.sql.Add('      servico on subservico.cod_servico = servico.cod_servico ');
   	DMESTOQUE.TRel.sql.Add('      Order by tmp.desc1, produto.descricao, Tmp.Cod_Tmp ');
   	If AbreTabela=True
   	Then Begin
	   		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfProdServVenda.frf');
      		FSRel.ShowReport;
   	End;
   Finally
   	PComunica.Visible:=False;
   End;
End;

//Imprime Relatório de Curva ABC de Produtos
Procedure TFRelData.ImpRelCurvaABC;
Var
	XTotQtd, XTotVlr, XTotLuc: Real;//Variaveis para pegar totais por produto
   XRelQTD, XRelVLR, XRelLUC: Real;//Variaveis para pegar total para o relatório
   XPerVenda: Real;//Percentual do produto em questão referente a venda
Begin
	// Seleciona todos os produto que possuem referencia em vendas ou ordem
   DMESTOQUE.WSimilar.Close;
   DMESTOQUE.WSimilar.SQL.Clear;
   DMESTOQUE.WSimilar.SQL.Add(' Select * from vwsimilar ');
   DMESTOQUE.WSimilar.SQL.Add(' where (exists (select * from itenspedven where itenspedven.cod_estoque=vwsimilar.cod_estoque)) ');
   DMESTOQUE.WSimilar.SQL.Add(' or (exists(select * from itprodord where itprodord.cod_estoque=vwsimilar.cod_estoque))');
   DMESTOQUE.WSimilar.SQL.Add(' And (vwsimilar.cod_loja=:COD_LOJA) ');
   DMESTOQUE.WSimilar.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
   DMESTOQUE.WSimilar.Open;
   If Not DMESTOQUE.WSimilar.IsEmpty
   Then Begin
   	DMMACS.TMP.Close;
   	DMMACS.TMP.SQL.Clear;
   	DMMACS.TMP.SQL.Add('Delete from TMP');
   	DMMACS.TMP.ExecSQL;
   	DMMACS.TCodigo.Edit;
   	DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger:=1;
   	DMMACS.TCodigo.Post;
   	DMMACS.Transaction.CommitRetaining;
   	DMMACS.TMP.Close;
   	DMMACS.TMP.SQL.Clear;
   	DMMACS.TMP.SQL.Add('Select * from TMP');
   	DMMACS.TMP.open;

      	XRelQTD:=0;
      	XRelVLR:=0;
      	XRelLUC:=0;


   	//PEGA TOTAIS DO RELATÓRIO
   	//Para pedidos de venda
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' select sum(itenspedven.qtdeprod) As TotQTD, sum(itenspedven.valortotal) As TotalValor, sum(itenspedven.lucmoe) As TotalLucro From PedVenda ');
       DMFINANC.TAlx.SQL.Add(' left join itenspedven on pedvenda.cod_pedvenda = itenspedven.cod_pedven ');
       DMFINANC.TAlx.SQL.Add(' Where (PedVenda.dtfech>=:Data01) And (PedVenda.dtfech<=:Data02) ');
       DMFINANC.TAlx.ParamByName('Data01').AsDate:=StrToDate(EdDataIni.Text);
       DMFINANC.TAlx.ParamByName('Data02').AsDate:=StrToDate(EdDataFim.Text);
       DMFINANC.TAlx.Open;
       If Not DMFINANC.TAlx.IsEmpty
       Then Begin
	       	XRelQTD:=DMFINANC.TAlx.FieldByName('TotQTD').AsCurrency;
       	XRelVLR:=DMFINANC.TAlx.FieldByName('TotalValor').AsCurrency;
       	XRelLUC:=DMFINANC.TAlx.FieldByName('TotalLucro').AsCurrency;
       End;

   	//Para Ordem de Serviço
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add('select sum(itprodord.qtd) As TotQTD, sum(itprodord.total) As TotalValor, sum(itprodord.lucmoe) As TotalLucro  from Ordem ');
       DMFINANC.TAlx.SQL.Add('  left join itprodord on ordem.cod_ordem = itprodord.cod_ordem ');
       DMFINANC.TAlx.SQL.Add(' Where (ordem.dtfech>=:Data01) And (ordem.dtfech<=:Data02) ');
       DMFINANC.TAlx.ParamByName('Data01').AsDate:=StrToDate(EdDataIni.Text);
       DMFINANC.TAlx.ParamByName('Data02').AsDate:=StrToDate(EdDataFim.Text);
       DMFINANC.TAlx.Open;
       If Not DMFINANC.TAlx.IsEmpty
       Then Begin
	       	XRelQTD:=XRelQTD+DMFINANC.TAlx.FieldByName('TotQTD').AsCurrency;
       	XRelVLR:=XRelVLR+DMFINANC.TAlx.FieldByName('TotalValor').AsCurrency;
       	XRelLUC:=XRelLUC+DMFINANC.TAlx.FieldByName('TotalLucro').AsCurrency;
       End;
       //INICIA CONTAGEM PRODUTO A PRODUTO
       DMESTOQUE.WSimilar.First;
       While Not DMESTOQUE.WSimilar.Eof Do
       Begin

      		XTotQtd:=0;
       	XTotVlr:=0;
       	XTotLuc:=0;

   		//PEGA TOTAIS POR PRODUTO
   		//Para pedidos de venda
       	DMFINANC.TAlx.Close;
       	DMFINANC.TAlx.SQL.Clear;
       	DMFINANC.TAlx.SQL.Add(' select sum(itenspedven.qtdeprod) As TotQTD, sum(itenspedven.valortotal) As TotalValor, sum(itenspedven.lucmoe) As TotalLucro From PedVenda ');
       	DMFINANC.TAlx.SQL.Add(' left join itenspedven on pedvenda.cod_pedvenda = itenspedven.cod_pedven ');
       	DMFINANC.TAlx.SQL.Add(' Where (PedVenda.dtfech>=:Data01) And (PedVenda.dtfech<=:Data02) And (itenspedven.cod_estoque=:COD_ESTOQUE) ');
       	DMFINANC.TAlx.ParamByName('Data01').AsDate:=StrToDate(EdDataIni.Text);
       	DMFINANC.TAlx.ParamByName('Data02').AsDate:=StrToDate(EdDataFim.Text);
       	DMFINANC.TAlx.ParamByName('COD_ESTOQUE').AsString:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString;
       	DMFINANC.TAlx.Open;
       	If Not DMFINANC.TAlx.IsEmpty
       	Then Begin
	       		XTotQtd:=DMFINANC.TAlx.FieldByName('TotQTD').AsCurrency;
       		XTotVlr:=DMFINANC.TAlx.FieldByName('TotalValor').AsCurrency;
       		XTotLuc:=DMFINANC.TAlx.FieldByName('TotalLucro').AsCurrency;
       	End;

   		//Para ordem de serviço
       	DMFINANC.TAlx.Close;
       	DMFINANC.TAlx.SQL.Clear;
       	DMFINANC.TAlx.SQL.Add('select sum(itprodord.qtd) As TotQTD, sum(itprodord.total) As TotalValor, sum(itprodord.lucmoe) As TotalLucro  from Ordem ');
       	DMFINANC.TAlx.SQL.Add('  left join itprodord on ordem.cod_ordem = itprodord.cod_ordem ');
       	DMFINANC.TAlx.SQL.Add(' Where (ordem.dtfech>=:Data01) And (ordem.dtfech<=:Data02)  And (itprodord.cod_estoque=:COD_ESTOQUE) ');
       	DMFINANC.TAlx.ParamByName('Data01').AsDate:=StrToDate(EdDataIni.Text);
       	DMFINANC.TAlx.ParamByName('Data02').AsDate:=StrToDate(EdDataFim.Text);
       	DMFINANC.TAlx.ParamByName('COD_ESTOQUE').AsString:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString;
       	DMFINANC.TAlx.Open;
       	If Not DMFINANC.TAlx.IsEmpty
       	Then Begin
	       		XTotQtd:=XTotQtd+DMFINANC.TAlx.FieldByName('TotQTD').AsCurrency;
       		XTotVlr:=XTotVlr+DMFINANC.TAlx.FieldByName('TotalValor').AsCurrency;
       		XTotLuc:=XTotLuc+DMFINANC.TAlx.FieldByName('TotalLucro').AsCurrency;
       	End;

           If XTotLuc<>0
           Then Begin
               If RBLucrat.Checked=True Then
               	XPerVenda:=(XTotLuc*100)/XRelLUC;
           End;
           If XTotQtd<>0
           Then Begin
               If RBQuantidade.Checked=True Then
               	XPerVenda:=(XTotQtd*100)/XRelQTD;
           End;
           If XTotVlr<>0
           Then Begin
               If RBValor.Checked=True Then
               	XPerVenda:=(XTotVlr*100)/XRelVLR;
           End;

           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger;
           DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
           DMMACS.TMP.FieldByName('DESC2').AsString:=DMESTOQUE.WSimilar.FieldByName('CODFABRICANTE').AsString;
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XTotQtd;
           DMMACS.TMP.FieldByName('VLR2').AsCurrency:=XTotVlr;
           DMMACS.TMP.FieldByName('VLR3').AsCurrency:=XTotLuc;
           DMMACS.TMP.FieldByName('VLR4').AsCurrency:=XPerVenda;
           If XTotQtd>0
           Then Begin
           	DMMACS.TMP.FieldByName('VLR5').AsCurrency:=XTotVlr/XTotQtd;
           	DMMACS.TMP.FieldByName('VLR6').AsCurrency:=XTotLuc/XTotQtd;
           End;

           DMMACS.TMP.Post;

   		DMMACS.TCodigo.Edit;
   		DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger:=DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger+1;
   		DMMACS.TCodigo.Post;
           DMESTOQUE.WSimilar.Next;
       End;
   	DMMACS.Transaction.CommitRetaining;
   	DMESTOQUE.TransacEstoque.CommitRetaining;
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' Select * from tmp Where Tmp.Vlr1<>0 ');
       If RBQuantidade.Checked=True Then
       	DMESTOQUE.TRel.SQL.Add(' order by tmp.vlr1 desc');
       If RBValor.Checked=True Then
       	DMESTOQUE.TRel.SQL.Add(' order by tmp.vlr5 desc');
       If RBLucrat.Checked=True Then
       	DMESTOQUE.TRel.SQL.Add(' order by tmp.vlr6 desc');

       DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
	   		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCurvaABC.frf');
      		FSRel.ShowReport;
       End
       Else Begin
	    	Mensagem('INFORMAÇÃO AO USUÁRIO', 'O relatório retornou sem informações!', '', 1, 1, False, 'i');
       End;
   End;
End;

//Imprime Mapa Resumo
Procedure TFRelData.ImpMapaResumo;
Begin
{	If (EDData1.Text='  /  /    /') OR (EDData2.Text='  /  /    /')
   Then Begin
		MessageDlg('Por favor, informe o intervalo de datas!', mtWarning, [mbOK], 0);
       EDData1.SetFocus;
       Exit;
   End;
   TAlx.Close;
   TAlx.SQL.Clear;
   TAlx.SQL.Add('Select * From R60 Where (R60.DTEMISSAO>=:DT1) And (R60.DTEMISSAO<=:DT2)');
   TAlx.ParamByName('DT1').AsDate:=StrToDate(EDData1.Text);
   TAlx.ParamByName('DT2').AsDate:=StrToDate(EDData2.Text);
   TAlx.Open;
   TLoja.Edit;
   TLoja.FieldByName('TMP1').AsString:='Relatório retirado do Cadastro de Reduções Z'+#13+'Filtrado pela emissão de : '+EDData1.Text+' até '+EDData2.Text;
   TLoja.Post;
   QR.Preview;}
End;
//Seleciona movimentoscom o tipo
//Seleciona movimentoscom o tipo
Procedure TFRelData.Selectmov(Tipo:Integer);
Var
	XSALDO, XTOT_E, XTOT_S: Real;
Begin
    Try
		 XtotMovCta:=0;
        XSALDO:=0;
        XTOT_E:=0;
        XTOT_S:=0;
        //Seleciona todas as parcelas para loja
        If Tipo=0
        Then Begin
            If FiltraTabela(DMBANCO.WMovB, 'VWMOVBANCO', 'COD_MOVBANCO', '', ' (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (FECH='+#39+'N'+#39+')  AND ((	VER<>'+#39+'1'+#39+') OR (VER IS NULL)) Order By VWMOVBANCO.COD_MOVBANCO DESC')
            Then Begin
				 //TOTALIZA MOVIMENTOS DE ENTRADA
	             //DMBANCO.TAlx.Close;
                DMFINANC.TAlx.Close;
	             DMFINANC.TAlx.SQL.Clear;
	             DMFINANC.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'ENTRADA'+#39+') AND (FECH='+#39+'N'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
	 			 DMFINANC.TAlx.Open;
	             If DMFINANC.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_E:=0
	             Else
	             	XTOT_E:=DMFINANC.TAlx.FieldByName('TOTAL').Value;

				 //TOTALIZA MOVIMENTOS DE SAIDA
	             //DMBANCO.TAlx.Close;
                DMFINANC.TAlx.Close;
	             DMFINANC.TAlx.SQL.Clear;
	             DMFINANC.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+') AND (FECH='+#39+'N'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
	 			 DMFINANC.TAlx.Open;
	             If DMFINANC.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_S:=0
	             Else
	             	XTOT_S:=DMFINANC.TAlx.FieldByName('TOTAL').Value;
            End;
        End;
        If Tipo=1
        Then Begin
            DMBANCO.WMovB.Close;
            DMBANCO.WMovB.SQL.Clear;
            DMBANCO.WMovB.SQL.Add('SELECT * FROM VWMOVBANCO WHERE (vwMOVBANCO.COD_CTACOR=:CODCTACOR) AND (VWMOVBANCO.FECH='+#39+'N'+#39+') AND (VWMOVBANCO.DTVENC<=:DTVENC)  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL))   Order By VWMOVBANCO.COD_MOVBANCO DESC');
            DMBANCO.WMovB.ParamByName('CODCTACOR').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
            DMBANCO.WMovB.ParamByName('DTVENC').AsDate:=Date();
            DMBANCO.WMovB.SQL.Text;
            DMBANCO.WMovB.Open;
            if not DMBANCO.WMovB.IsEmpty
            Then Begin
				 //TOTALIZA MOVIMENTOS DE ENTRADA
	             //DMBANCO.TAlx.Close;
                DMFINANC.TAlx.Close;
	             DMFINANC.TAlx.SQL.Clear;
            	 DMFINANC.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (vwMOVBANCO.COD_CTACOR=:CODCTACOR) AND (VWMOVBANCO.FECH='+#39+'N'+#39+') AND (TIPOOP='+#39+'ENTRADA'+#39+')  AND (VWMOVBANCO.DTVENC<=:DTVENC)  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
            	 DMFINANC.TAlx.ParamByName('CODCTACOR').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
            	 DMFINANC.TAlx.ParamByName('DTVENC').AsDate:=Date();
	 			 DMFINANC.TAlx.Open;
	             If DMFINANC.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_E:=0
	             Else
	             	XTOT_E:=DMFINANC.TAlx.FieldByName('TOTAL').Value;

				 //TOTALIZA MOVIMENTOS DE SAIDA
	             //DMBANCO.TAlx.Close;
                DMFINANC.TAlx.Close;
	             DMFINANC.TAlx.SQL.Clear;
            	 DMFINANC.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (vwMOVBANCO.COD_CTACOR=:CODCTACOR) AND (VWMOVBANCO.FECH='+#39+'N'+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+')  AND (VWMOVBANCO.DTVENC<=:DTVENC)  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
            	 DMFINANC.TAlx.ParamByName('CODCTACOR').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
            	 DMFINANC.TAlx.ParamByName('DTVENC').AsDate:=Date();
	 			 DMFINANC.TAlx.Open;
	             If DMFINANC.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_S:=0
	             Else
	             	XTOT_S:=DMFINANC.TAlx.FieldByName('TOTAL').Value;
            End;
        End;
        If Tipo=2
        Then Begin
	         //EdTotMov.ValueNumeric:=DMBANCO.WCtaCor.FieldByNAme('Saldo').AsCurrency;
            If FiltraTabela(DMBANCO.WMovB, 'VWMOVBANCO', 'COD_MOVBANCO', '', ' (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (FECH='+#39+'S'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) AND (COD_ABBANCO='+#39+FMenu.LABBANCO.Caption+#39+') ORDER By VWMOVBANCO.COD_MOVBANCO DESC')
            Then Begin
				 //TOTALIZA MOVIMENTOS DE ENTRADA
	             //DMBANCO.TAlx.Close;
                DMFINANC.TAlx.Close;
	             DMFINANC.TAlx.SQL.Clear;
	             DMFINANC.TAlx.SQL.Add(' SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'ENTRADA'+#39+')   AND (FECH='+#39+'S'+#39+')   AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL))  AND (COD_ABBANCO='+#39+FMenu.LABBANCO.Caption+#39+')');
	 			 DMFINANC.TAlx.Open;
	             If DMFINANC.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_E:=0
	             Else
	             	XTOT_E:=DMFINANC.TAlx.FieldByName('TOTAL').Value;

				 //TOTALIZA MOVIMENTOS DE SAIDA
	             //DMBANCO.TAlx.Close;
                DMFINANC.TAlx.Close;                
	             DMFINANC.TAlx.SQL.Clear;
	             DMFINANC.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+')   AND (FECH='+#39+'S'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL))  AND (COD_ABBANCO='+#39+FMenu.LABBANCO.Caption+#39+')');
	 			 DMFINANC.TAlx.Open;
	             If DMFINANC.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_S:=0
	             Else
	             	XTOT_S:=DMFINANC.TAlx.FieldByName('TOTAL').Value;
            End;
        End;
    except
    End;
	 XSALDO:=XSaldoCta;
    XtotMovCta:=(XTOT_E-XTOT_S)+XSALDO;
End;


{Procedure TFRelData.Selectmov(Tipo:Integer);
Var
	XTOT_E, XTOT_S: Real;
Begin
    Try
        XtotMovCta:=0;
        DMBANCO.VerifAbBanco;
        //Soma Todas as Contas a ENTRAR
        If Tipo=0
        Then Begin
				 //TOTALIZA MOVIMENTOS DE ENTRADA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
	             DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'ENTRADA'+#39+') AND (FECH='+#39+'N'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
                If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       		 Then Begin
   			 	DMBANCO.TAlx.SQL.Add('  AND ((vwmovbanco.dtvenc>=:DATA1) And (VWmovbanco.dtvenc<=:DATA2)) ');
  					DMBANCO.TAlx.ParamByName('DATA1').AsDateTime:=StrToDate(EdDataIni.Text);
  					DMBANCO.TAlx.ParamByName('DATA2').AsDateTime:=StrToDate(EdDataFim.Text);
       		 End;
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_E:=0
	             Else
	             	XTOT_E:=DMBANCO.TAlx.FieldByName('TOTAL').Value;
				 XtotMovCta:=XTOT_E;
        End;
        //Soma Todas as Contas A SAIR
        If Tipo=1
        Then Begin
				 //TOTALIZA MOVIMENTOS DE SAIDA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
	             DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+') AND (FECH='+#39+'N'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
                If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       		 Then Begin
   			 	DMBANCO.TAlx.SQL.Add('  AND ((vwmovbanco.dtvenc>=:DATA1) And (VWmovbanco.dtvenc<=:DATA2))');
  					DMBANCO.TAlx.ParamByName('DATA1').AsDateTime:=StrToDate(EdDataIni.Text);
  					DMBANCO.TAlx.ParamByName('DATA2').AsDateTime:=StrToDate(EdDataFim.Text);
       		 End;
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_S:=0
	             Else
	             	XTOT_S:=DMBANCO.TAlx.FieldByName('TOTAL').Value;
		         XtotMovCta:=XTOT_S;
        End;
        If Tipo=2
        Then Begin
	         XtotMovCta:=DMBANCO.WCtaCor.FieldByNAme('Saldo').AsCurrency;
            If FiltraTabela(DMBANCO.WMovB, 'VWMOVBANCO', 'COD_MOVBANCO', '', ' (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (FECH='+#39+'S'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) Order By VWMOVBANCO.COD_MOVBANCO DESC')
            Then Begin
				 //TOTALIZA MOVIMENTOS DE ENTRADA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
	             DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'ENTRADA'+#39+')   AND (FECH='+#39+'S'+#39+')   AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_E:=0
	             Else
	             	XTOT_E:=DMBANCO.TAlx.FieldByName('TOTAL').Value;

				 //TOTALIZA MOVIMENTOS DE SAIDA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
	             DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+')   AND (FECH='+#39+'S'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_S:=0
	             Else
	             	XTOT_S:=DMBANCO.TAlx.FieldByName('TOTAL').Value;
		         XtotMovCta:=(XTOT_E-XTOT_S)+DMBANCO.WCtaCor.FieldByNAme('Saldo').AsCurrency;
            End;
        End;
    except
    End;
End;}

//Imprime Saldo das Contas Correntes
Procedure TFRelData.ImpSaldoCtaCor;
Var
	XCod_Tmp: Integer;
Begin
   PComunica.Visible:=True;
   PComunica.Caption:='AGUARDE...';
   PComunica.BringToFront;
   PComunica.Refresh;
  	//APAGA REGISTROS DA TABERLA TMP
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('DELETE FROM TMP ');
   DMCONTA.TAlx.ExecSQL;
   DMCONTA.IBT.CommitRetaining;
   XCod_Tmp:=1;
   Try
   	//TRABALHA P/ COM AS CONTAS CORRENTES
       DMBANCO.WCtaCor.Close;
       DMBANCO.WCtaCor.Open;
       DMBANCO.WCtaCor.First;
       While Not DMBANCO.WCtaCor.Eof Do
       Begin
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
           DMMACS.TMP.FieldByName('DESC1').AsString:=DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
           DMMACS.TMP.FieldByName('DESC2').AsString:=DMBANCO.WCtaCor.FieldByName('NUMCTACOR').AsString;
			XtotMovCta:=0;
			Selectmov(2);
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XtotMovCta;
			XtotMovCta:=0;           
			Selectmov(0);
           DMMACS.TMP.FieldByName('VLR2').AsCurrency:=XtotMovCta;
			XtotMovCta:=0;
			Selectmov(1);
           DMMACS.TMP.FieldByName('VLR3').AsCurrency:=XtotMovCta;

           DMMACS.TMP.Post;
           XCod_Tmp:=XCod_Tmp+1;
           DMBANCO.WCtaCor.Next;
       End;
       DMMACS.Transaction.CommitRetaining;
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add('Select * from Tmp');
       DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
       	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfSaldosCtaCor.frf');
       	FSRel.ShowReport;
       End
       Else Begin
	    	Mensagem('INFORMAÇÃO AO USUÁRIO', 'O relatório retornou sem informações!', '', 1, 1, False, 'i');
       End;
   Except
   End;
End;
procedure TFRelData.FormActivate(Sender: TObject);
var
Year, Month, Day:word;
begin
  inherited;
   RdGrpGerencial.Visible:=false;
   PCurva.Visible:=False;
   PRelatorioGerencial.Visible:=False;
   CbOS.Checked:=False;
   CbPedidoVenda.Checked:=False;
   //Edmar - 19/12/2013 - Esconde o combo box e o label do caixa. Apenas necessário
   //para o relatório Listagem de Lançamento de Caixa
   dbComboBoxCaixa2.Visible := false;
   lbCaixa.Visible := false;
   xEscolheu := false;

	DMBANCO.TAlx.Close;
	DMBANCO.TAlx.SQL.Clear;
	DMBANCO.TAlx.SQL.Add('SELECT * FROM CAIXA where caixa.cod_loja=:CODLOJA');
  	DMBANCO.TAlx.ParamByName('CODLOJA').AsInteger:=StrToInt(FMenu.LCODLOJA.Caption);
	DMBANCO.TAlx.Open;
	dbComboBoxCaixa2.ListSource:=DMBANCO.Dalx;

   If (FMenu.TIPOREL='RELOSSERVICOSGRADE') OR (FMenu.TIPOREL='RELSERVICOCLASSIFICACAOGRAFICO')  OR (FMenu.TIPOREL='RELDESPESACLASSIFICACAO')
   Then Begin
    	Caption:='Relatório de Serviços por Classificação';
   End;

   If (FMenu.TIPOREL='RELBALANCETEPERIODO')
   Then Begin
    	Caption:='Balancete de Contas por Período';
       FiltraTabela(DMCAIXA.TCaixa, 'caixa', '','','',);
       FiltraTabela(DMMACS.TALX, 'Abcaixa', '','',' (abcaixa.cod_caixa='+DMCAIXA.TCaixa.FieldByName('cod_caixa').AsString+'  order by abcaixa.dtfecha');
       FiltraTabela(DMFINANC.TALX, 'Abcaixa', '','',' (abcaixa.cod_caixa='+DMCAIXA.TCaixa.FieldByName('cod_caixa').AsString+'  order by abcaixa.dtfecha');
		dblCaixa.ListSource:=DMCAIXA.DCaixa;
       dblPeriodoInicial.ListSource := nil;
       dblPeriodoFinal.ListSource := nil;
       gbPeriodo.Visible:=True;
   End
   Else Begin
       gbPeriodo.Visible:=False;
		dblCaixa.ListSource := nil;
       dblPeriodoInicial.ListSource := nil;
       dblPeriodoFinal.ListSource := nil;
   End;

	if FMenu.TIPOREL='CURVAABC' then
   begin
		Caption:='Relatório Curva ABC';
       PCurva.Visible:=True;
       PCurva.BringToFront;
       PCurva.Repaint;
   end;

   If FMenu.TIPOREL='RELOSSERVICOSGRADE'
   Then Begin
   	PCurva.Visible:=False;
    	Caption:='Relatório de Serviços por Grade';
   End;

   If FMenu.TIPOREL='RELVENDAVEICULO'
   Then Begin
   	PCurva.Visible:=False;
    	Caption:='Relatório de Venda de Veículo';
   End;
   If FMenu.TIPOREL='FRFPRODVEND'
   Then Begin
       Caption:='Relatório de Produtos e Serviços Vendidos';
   End;
   If FMenu.TIPOREL='RELSALDOCTACOR'
   Then Begin
       Caption:='Relatório de Saldos em Cta. Corrente';
   End;
   If FMenu.TIPOREL='DEPESASVEICULOS'
   Then Begin
       Caption:='Relatório de Desdepas de Veículos';
   End;
   If FMenu.TIPOREL= 'RELSINSERV'
   Then Begin
      Caption:='OS com Produtos e Serviços';
   end;
   If FMenu.TIPOREL= 'RELSINSERV'
   Then Begin
      Caption:='OS com Produtos e Serviços';
   end;
   If FMenu.TIPOREL= 'CONTROLEDIAMESVENDSERV'
   Then Begin
      Caption:='Controle Dia/Mes de Vendas/Servicos';
      PCurva.Visible:=False;
      //MAURO - Dados para o ImpRelCabecalho padrao
      xTituloRelatorio := 'Controle Dia/Mês de Vendas e Serviços ';
      xTipoPapel := 'RETRATO';
   end;
   If FMenu.TIPOREL= 'RELBALANCETE'
   Then Begin
      Caption:='Balancete Mensal';
      PCurva.Visible:=False;
      //MAURO - Dados para o ImpRelCabecalho padrao
      xTituloRelatorio := 'Relatório de Balancete Mensal';
      xTipoPapel := 'PAISAGEM';
   end;
   //Relatório de fluxo de caixa completo
   If FMenu.TIPOREL= 'FLUXOCAIXACOMPLETO'
   Then Begin
      Caption:='Recebimentos e Pagamentos';
      PCurva.Visible:=False;
      //Alex - Dados para o ImpRelCabecalho padrao
      xTituloRelatorio := 'Relatório de Recebimentos e Pagamentos';
      xTipoPapel := 'PAISAGEM';
   end;
   		         //RELGERENCIALANALITICO
   //Jônatas 13/06/2013 - Relatório Gerencial Analítico
   If Fmenu.TIPOREL= 'RELGERENCIALANALITICO'
   Then Begin
        RdGrpGerencial.Visible:=true;
        RdGrpGerencial.BringToFront;
        PRelatorioGerencial.Visible:=True;
        PRelatorioGerencial.BringToFront;
        Caption := 'Relatório Gerencial Analítico';
        XTituloRelatorio:='Relatório Gerencial Analítico';
   End;
   //Jônatas 13/06/2013 - Relatório Gerencial Sintético
   If Fmenu.TIPOREL= 'RELGERENCIALSINTETICO'
   Then Begin
        RdGrpGerencial.Visible:=true;
        RdGrpGerencial.BringToFront;
        PRelatorioGerencial.Visible:=True;
        PRelatorioGerencial.BringToFront;
        Caption := 'Relatório Gerencial Sintético';
        XTituloRelatorio:='Relatório Gerencial Sintético';
   End;

   If Fmenu.TIPOREL= 'RELPAGSERV' then
   	Caption := 'Relatório de Pagamentos de Serviços';

	EdDataIni.Text:=DateToStr(Date());
	EdDataFim.Text:=DateToStr(Date());
	EdDataIni.SetFocus;
   FSDSRel.DataSource:=DMESTOQUE.DRel;

   if(FMenu.TIPOREL = 'LISTLANCPORCAIXA') then
   begin
  		try
       	DecodeDate(Date(), Year, Month, Day);

   		dbComboBoxCaixa2.Visible := true;
           lbCaixa.Visible := true;
       	Caption := 'Listagem de Lançamentos por Caixa';
           EdDataIni.Text := '01/'+IntToStr(Month)+'/'+IntToStr(Year);
   	except
   		showMessage('Erro ao buscar caixa para o relatório "Listagem de Lançamentos por Caixa"');
   	end;
   end;
end;

procedure TFRelData.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
     If FMenu.TIPOREL='RELBALANCETEPERIODO' Then
       RELBALANCETEPERIODO
     Else
		RelBalanceteMensal;
end;
//Procedure para gerarl relatórios de balancete por período
Procedure TFRelData.RELBALANCETEPERIODO;
Begin
	Try
		If (DMFINANC.TAlx.FieldByName('FECHADO').AsString='N') or (DMCAIXA.TAlx.FieldByName('FECHADO').AsString='N')
       Then Begin
			MessageDlg('Os dois períodos informados, devem estar fechados.', mtWarning, [mbOK], 0);
           Exit;
       End;   
   	If DMFINANC.TAlx.FieldByName('DTFECHA').AsDateTime<DMCAIXA.TAlx.FieldByName('DTABERTURA').AsDateTime
       Then Begin
			MessageDlg('Verifique o seu intervalo de períodos. O período final é mais recente que o período inicial.', mtWarning, [mbOK], 0);
           Exit;
       End;
     	PComunica.Caption:='AGUARDE...';
     	PComunica.Visible:=True;
     	PComunica.BringToFront;
     	PComunica.Update;
     	PCurva.Visible:=False;
     	//PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
     	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');  

       rvControleVendServ.SystemPreview.FormState := wsMaximized;
   	rvControleVendServ.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
   	rvControleVendServ.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
       rvControleVendServ.SystemPrinter.Orientation := poLandScape;
   	rvControleVendServ.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
   	rvControleVendServ.Execute;

       PComunica.Visible:=False;             
   Except
       PComunica.Visible:=False;
   end;
End;
//Procedure para emitir o balancete mensal
procedure TFRelData.RelBalanceteMensal;
var
	X1Avista, X2APrazo, X3Total, X4Receber, X5Recebidas: Real;
begin
     PComunica.Caption:='AGUARDE...';
     PComunica.Visible:=True;
     PComunica.BringToFront;
     PComunica.Update;
     PCurva.Visible:=False;
     //PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
     FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
     DMMACS.TLoja.Edit;
     DMMACS.TLoja.FieldByName('TMP1').AsString:='Data: '+EdDataIni.Text+' - '+EdDataFim.Text;
     If CbOS.Checked=True Then
     	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' [Trazendo resultados de OS]';
     If CbPedidoVenda.Checked=True Then
     	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' [Trazendo resultados de PV]';
     DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + ' / Data Ini.:' + EdDataIni.Text + ' - Data Fin.:' + EdDataFim.Text;
     DMMACS.TLoja.Post;

     if(FMenu.TIPOREL= 'RELPAGSERV')then
     begin
    	MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;
       MDO.QAlx1.SQL.add('select distinct(itservord.cod_servico) from itservord left join ordem on itservord.cod_ordem = ordem.cod_ordem where ordem.dtfech between :DATA1  and :DATA2 order by itservord.cod_servico');
       MDO.QAlx1.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
       MDO.QAlx1.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
       MDO.QAlx1.Open;
       MDO.QAlx1.First;

       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' delete from tmp ');
       MDO.Query.ExecSQL;

       while not MDO.QAlx1.Eof do
       begin
       	X1Avista := X1TotalAVista(MDO.QAlx1.FieldByName('COD_SERVICO').AsInteger);
          	X2APrazo := X2TotalAPrazo(MDO.QAlx1.FieldByName('COD_SERVICO').AsInteger);
          	X3Total := X1Avista + X2APrazo;
          	X4Receber := X4TotalAReceber(MDO.QAlx1.FieldByName('COD_SERVICO').AsInteger);
          	X5Recebidas := X5TotalRecebidos(MDO.QAlx1.FieldByName('COD_SERVICO').AsInteger);
           //
          	XRetorno_desc := RetornaDescSubServico(StrToInt(MDO.QAlx1.FieldByName('cod_servico').Text));

       	MDO.Query.Close;           
          	MDO.Query.SQL.Clear;
          	MDO.Query.SQL.Add(' INSERT INTO TMP (TMP.COD_TMP, TMP.VLR1, TMP.VLR2, TMP.VLR3, TMP.VLR4, TMP.VLR5, TMP.DESC1) ');
          	MDO.Query.SQL.Add(' VALUES (:COD_IT, :X1, :X2, :X3, :X4, :X5, :DESCRICAO) ');
          	MDO.Query.ParamByName('COD_IT').AsInteger := MDO.QAlx1.FieldByName('COD_SERVICO').AsInteger;
          	MDO.Query.ParamByName('X1').AsCurrency := X1Avista;
          	MDO.Query.ParamByName('X2').AsCurrency := X2APrazo;
          	MDO.Query.ParamByName('X3').AsCurrency := X3Total;
          	MDO.Query.ParamByName('X4').AsCurrency := X4Receber;
          	MDO.Query.ParamByName('X5').AsCurrency := X5Recebidas;
          	MDO.Query.ParamByName('DESCRICAO').AsString := XRetorno_desc;
          	MDO.Query.ExecSQL;
           
          	MDO.QAlx1.Next; 
       end;
       
       MDO.Transac.CommitRetaining;
       MDO.QAlx2.Close;
       MDO.QAlx2.SQL.Clear;
       MDO.QAlx2.SQL.Add(' SELECT TMP.DESC1 AS DESCRICAO, TMP.VLR1 AVISTA, TMP.VLR2 APRAZO, TMP.VLR3 TOTAL, TMP.VLR4 RECEBER, TMP.VLR5 RECEBIDO, ');
       MDO.QAlx2.SQL.Add(' SERVICO.DESCRICAO AS GRADE, SERVICO.COD_SERVICO AS COD_GRADE, TMP.COD_TMP AS SUBSERVICO  FROM TMP ');
       MDO.QAlx2.SQL.Add(' LEFT JOIN VWSUBSERVICO ON TMP.COD_TMP = VWSUBSERVICO.COD_SUBSERVICO ');
       MDO.QAlx2.SQL.Add(' LEFT JOIN SERVICO ON VWSUBSERVICO.COD_SERVICO = SERVICO.COD_SERVICO ORDER BY SERVICO.COD_SERVICO ');
       MDO.QAlx2.Open;
       DMMACS.TEmpresa.Open;
       Tempresa.DataSet := DMMACS.TEmpresa;
       DBRelPagServ.DataSet := MDO.QAlx2;
       RelPagServ.LoadFromFile('C:\MZR\MACS\Rel\FRelPagamentoServicos.fr3');
       RelPagServ.ShowReport();
	 end;

    If FMenu.TIPOREL='RELSERVICOCLASSIFICACAO'
    Then Begin
	    // GERA RELATORIO DE EQUIPE
		RelatorioServicoClassificacao;
    End;
    If FMenu.TIPOREL='RELDESPESACLASSIFICACAO'
    Then Begin
	    // GERA RELATORIO DE EQUIPE
		RelatorioDespesasClassificacao;
    End;
    If FMenu.TIPOREL='RELSERVICOCLASSIFICACAOGRAFICO'
    Then Begin
	    // GERA RELATORIO DE EQUIPE
		RelatorioServicoClassificacaoGrafico;
    End;
    If FMenu.TIPOREL='RELDESPESACLASSIFICACAOGRAFICO'
    Then Begin
	    // GERA RELATORIO DE EQUIPE
		RelatorioDespesasClassificacaoGrafico;
    End;
    If FMenu.TIPOREL='COMPROVANTEENTREGABOLETO'
    Then Begin
	    // GERA COMPROVANTES DE ENTREGAS DE BOLETO
		RelatorioComprovanteEntregaBoleto;
       Exit;
    End;
    if FMenu.TIPOREL='RELOSSERVICOSGRADE'
    then begin
       //função imprimir relatorio de venda dos veículos
       xTituloRelatorio:='Relatório de Serviços por Grade';
       rvControleVendServ.SystemPreview.FormState := wsMaximized;
   	rvControleVendServ.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
   	rvControleVendServ.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
       rvControleVendServ.SystemPrinter.Orientation := poLandScape;
   	rvControleVendServ.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
   	rvControleVendServ.Execute;
  	 End;
    if FMenu.TIPOREL='RELVENDAVEICULO'
    then begin
    	//função imprimir relatorio de venda dos veículos
   	ImpRelVendaVeiculo;
  	End;

	If FMenu.TIPOREL='RELSALDOCTACOR'
   Then Begin
   	DMMACS.TLoja.Edit;
  		DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Banco/Saldo de Ctas Corrente';
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpSaldoCtaCor;
   End;
	If FMenu.TIPOREL='FRFPRODSERVVEND'
   Then Begin
   	DMMACS.TLoja.Edit;
  		DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Compras e Vendas/Produtos e Serviços Vendidos';
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpRProdVendOP;
   End;

	If FMenu.TIPOREL='FRFPRODSERVVENDCTA'
   Then Begin
   	DMMACS.TLoja.Edit;
  		DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Compras e Vendas/Produtos e Serviços Vendidos em Contas';
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpRProdVendOPCta;
   End;
	If FMenu.TIPOREL='DEPESASVEICULOS' Then
       ImpRProdVendOPCta;

  if FMenu.TIPOREL='RELSINSERV'
   Then Begin
      RBLucrat.Visible:=false;
      impRelSinServ;
   End;
	If FMenu.TIPOREL='RELMAPARESUMO'
   Then Begin
   	DMMACS.TLoja.Edit;
  		DMMACS.TLoja.FieldByName('TMP2').AsString:='...';
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpMapaResumo;
   End;
	If FMenu.TIPOREL='CURVAABC'
   Then Begin
		DMMACS.TLoja.Edit;
       If RBQuantidade.Checked=True Then
  			DMMACS.TLoja.FieldByName('TMP1').AsString:='Curva ABC por Quantidade'+#13+DMMACS.TLoja.FieldByName('TMP1').AsString;
       If RBValor.Checked=True Then
  			DMMACS.TLoja.FieldByName('TMP1').AsString:='Curva ABC por Valor'+#13+DMMACS.TLoja.FieldByName('TMP1').AsString;
       If RBLucrat.Checked=True Then
  			DMMACS.TLoja.FieldByName('TMP1').AsString:='Curva ABC por Lucratividade'+#13+DMMACS.TLoja.FieldByName('TMP1').AsString;
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Curva ABC';
       DMMACS.TLoja.Post;
       PCurva.Visible:=True;
       PCurva.BringToFront;
   	DMMACS.TLoja.Edit;
  		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatório/Estoque/Curva ABC';
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   	ImpRelCurvaABC;//Imprime relatório de Curva ABC de Produtos
   End;
   If FMenu.TIPOREL='CONTROLEDIAMESVENDSERV'
   Then Begin
       rvControleVendServ.SystemPreview.FormState := wsMaximized;
   	rvControleVendServ.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
   	rvControleVendServ.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
   	rvControleVendServ.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
   	rvControleVendServ.Execute;
   End;
   If FMenu.TIPOREL='RELBALANCETE'
   Then Begin
       rvControleVendServ.SystemPreview.FormState := wsMaximized;
   	rvControleVendServ.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
   	rvControleVendServ.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
       rvControleVendServ.SystemPrinter.Orientation := poLandScape;
   	rvControleVendServ.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
   	rvControleVendServ.Execute;
   End;
   If FMenu.TIPOREL='FLUXOCAIXACOMPLETO'
   Then Begin
       rvControleVendServ.SystemPreview.FormState := wsMaximized;
   	rvControleVendServ.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
   	rvControleVendServ.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
       rvControleVendServ.SystemPrinter.Orientation := poPortrait;
   	rvControleVendServ.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
   	rvControleVendServ.Execute;
   End;
   //Jônatas 13/06/2013 - Relatório Gerencial Analítico
   If FMenu.TIPOREL='RELGERENCIALANALITICO'
   Then Begin
       rvControleVendServ.SystemPreview.FormState := wsMaximized;// 13/06/2013: mostra maximizado
       rvControleVendServ.DefaultDest := rdPreview;// 13/06/2013: mostrar o relatório direto
       rvControleVendServ.SystemPrinter.Units := unMM; // 13/06/2013: trabalhar com milímetros
       rvControleVendServ.SystemPreview.RulerType := rtBothCm; // 13/06/2013: mostra a régua em cima e na lateral
       rvControleVendServ.Execute;
   End;
   //Jônatas 13/06/2013 - Relatório Gerencial Sintético
   If FMenu.TIPOREL='RELGERENCIALSINTETICO'
   Then Begin
        rvControleVendServ.SystemPreview.FormState := wsMaximized;// 13/06/2013: mostra maximizado
       rvControleVendServ.DefaultDest := rdPreview;// 13/06/2013: mostrar o relatório direto
       rvControleVendServ.SystemPrinter.Units := unMM; // 13/06/2013: trabalhar com milímetros
       rvControleVendServ.SystemPreview.RulerType := rtBothCm; // 13/06/2013: mostra a régua em cima e na lateral
       rvControleVendServ.Execute;
   End;

   if(FMenu.TIPOREL = 'LISTLANCPORCAIXA') then
   begin
   	if xEscolheu then
       begin
           rvControleVendServ.SystemPreview.FormState := wsMaximized;
           rvControleVendServ.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
           rvControleVendServ.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
           rvControleVendServ.SystemPrinter.Orientation := poLandScape;
           rvControleVendServ.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
           rvControleVendServ.Execute;
       end
       else
   		showMessage('Selecione um caixa para continuar');
   end;
   PComunica.Visible:=False;
end;


procedure TFRelData.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   /////////////
   //SALDO ATUAL
   /////////////
   //ENTRADAS
	Alx.Close;
	Alx.SQL.Clear;
	Alx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.TAlx.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'ENTRADA'+#39+') AND (FECH='+#39+'S'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
	Alx.Open;
	QRLSaldoAtu.Caption:=FormatFloat('0.00', Alx.FieldByName('TOTAL').AsCurrency);
	//SAIDA
	Alx.Close;
	Alx.SQL.Clear;
	Alx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.TAlx.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+') AND (FECH='+#39+'S'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
	Alx.Open;
	QRLSaldoAtu.Caption:=FormatFloat('0.00', Alx.FieldByName('TOTAL').AsCurrency);
	QRLSaldoAtu.Caption:=FormatFloat('0.00', StrToFloat(QRLSaldoAtu.Caption)+DMBANCO.TAlx.FieldByName('SALDO').AsCurrency);
	XTOTSALDO:=XTOTSALDO+StrToFloat(QRLSaldoAtu.Caption);
   //////////////
   //A MOVIMENTAR
   //////////////
   //ENTRADAS
	Alx.Close;
	Alx.SQL.Clear;
	Alx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.TAlx.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'ENTRADA'+#39+') AND (FECH='+#39+'N'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
	Alx.Open;
	QRLAENTRAR.Caption:=FormatFloat('0.00', Alx.FieldByName('TOTAL').AsCurrency);
   XTOTENT:=XTOTENT+Alx.FieldByName('TOTAL').AsCurrency;
	//SAIDA
	Alx.Close;
	Alx.SQL.Clear;
	Alx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.TAlx.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+') AND (FECH='+#39+'N'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
	Alx.Open;
	QRLASAIR.Caption:=FormatFloat('0.00', Alx.FieldByName('TOTAL').AsCurrency);
   QRLSALDOFINAL.Caption:=FormatFloat('0.00', StrToFloat(QRLSaldoAtu.Caption)+StrToFloat(QRLAENTRAR.Caption)-StrToFloat(QRLASAIR.Caption));
   XTOTSAI:=XTOTSAI+Alx.FieldByName('TOTAL').AsCurrency;
end;

procedure TFRelData.QRBand11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   QRLTSALDO.Caption:=FormatFloat('0.00', XTOTSALDO);
   QRLTENTRADA.Caption:=FormatFloat('0.00', XTOTENT);
   QRLTSAIDA.Caption:=FormatFloat('0.00', XTOTSAI);
   QRLTSALDOFIM.Caption:=FormatFloat('0.00', XTOTSALDO+XTOTENT-XTOTSAI);
end;

//17/05/2012 - Mauro - Imprime o relatório de vendas dos veiculos
Procedure TFRelData.ImpRelVendaVeiculo;
begin
    Try
      LimpaSQL;
      DMESTOQUE.TRel.sql.Add('Select vwpedv.dtpedven as Data, vwsimilar.descricao as carro, vwsimilar.contrint as placa,');
      DMESTOQUE.TRel.sql.Add('subproduto.classificacao as ano, vwpedv.valor, vwpedv.vendedor, vwpedv.formpag, vwpedv.valor as total');
      DMESTOQUE.TRel.sql.Add('from vwpedv');
      DMESTOQUE.TRel.sql.Add('left join itenspedven on vwpedv.cod_pedvenda = itenspedven.cod_pedven');
      DMESTOQUE.TRel.sql.Add('left join funcionario on vwpedv.cod_vendedor = funcionario.cod_func');
      DMESTOQUE.TRel.sql.Add('left join vwsimilar on itenspedven.cod_estoque = vwsimilar.cod_estoque');
      DMESTOQUE.TRel.sql.Add('left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto');
      DMESTOQUE.TRel.sql.Add('left join formpag on vwpedv.cod_formpag = formpag.cod_formpag');
      If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin
   		  DMESTOQUE.TRel.SQL.Add(' Where ((vwpedv.dtpedven>=:DATA1) And (vwpedv.dtpedven<=:DATA2))');
  			DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
  			DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
      End;
      DMESTOQUE.TRel.Open;
      If AbreTabela=True
      Then begin
        FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrFVendasVeiculo.frf');
        FSRel.ShowReport;
      End;
    Except

    End;
end;
procedure TFRelData.QRRelSinServBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
      //PRODUOS
      DMESTOQUE.TSlave.Close;
      DMESTOQUE.TSlave.SQL.Clear;
      DMESTOQUE.TSlave.SQL.Add('select itprodord.cod_ordem, itprodord.qtd, itprodord.vlrunit as TProd,');
      DMESTOQUE.TSlave.SQL.Add('itprodord.total as TGeral, vwsimilar.descricao, vwsimilar.contrint');
      DMESTOQUE.TSlave.SQL.Add('from itprodord');
      DMESTOQUE.TSlave.SQL.Add('left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque');
      DMESTOQUE.TSlave.SQL.Add('where itprodord.cod_ordem=-666');
      DMESTOQUE.TSlave.Open;
      //SERVIÇO
      DMESTOQUE.TSlaveServ.Close;
      DMESTOQUE.TSlaveServ.SQL.Clear;
      DMESTOQUE.TSlaveServ.SQL.Add(' select despadic.cod_gerador, despadic.qtd, despadic.vlrfinal, despadic.vlrtotfin, ');
      DMESTOQUE.TSlaveServ.SQL.Add(' despadic.despesa ');
      DMESTOQUE.TSlaveServ.SQL.Add(' from despadic ');
      DMESTOQUE.TSlaveServ.SQL.Add(' where (despadic.cod_gerador=-666) AND (despadic.gerador=''ORDEM'') ');
      DMESTOQUE.TSlaveServ.Open;
end;

procedure TFRelData.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	If not DMESTOQUE.TRel.IsEmpty
   Then Begin
      //PRODUOS
      DMESTOQUE.TSlave.Close;
      DMESTOQUE.TSlave.SQL.Clear;
      DMESTOQUE.TSlave.SQL.Add('select itprodord.cod_ordem, itprodord.qtd, itprodord.vlrunit as TProd,');
      DMESTOQUE.TSlave.SQL.Add('itprodord.total as TGeral, vwsimilar.descricao, vwsimilar.contrint');
      DMESTOQUE.TSlave.SQL.Add('from itprodord');
      DMESTOQUE.TSlave.SQL.Add('left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque');
      DMESTOQUE.TSlave.SQL.Add('where itprodord.cod_ordem=:codigo');
      DMESTOQUE.TSlave.ParamByName('codigo').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_ordem').AsInteger;
      DMESTOQUE.TSlave.Open;
      //SERVIÇO
      DMESTOQUE.TSlaveServ.Close;
      DMESTOQUE.TSlaveServ.SQL.Clear;
      DMESTOQUE.TSlaveServ.SQL.Add(' select despadic.cod_gerador, despadic.qtd, despadic.vlrfinal, despadic.vlrtotfin, ');
      DMESTOQUE.TSlaveServ.SQL.Add(' despadic.despesa ');
      DMESTOQUE.TSlaveServ.SQL.Add(' from despadic ');
      DMESTOQUE.TSlaveServ.SQL.Add(' where (despadic.cod_gerador=:CODIGO) AND (despadic.gerador=''ORDEM'') ');
      DMESTOQUE.TSlaveServ.ParamByName('codigo').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_ordem').AsInteger;
      DMESTOQUE.TSlaveServ.Open;
   End;

end;

//Rodape geral do relatório
Function TFRelData.ImpRelControleDiaMesVendasServRodapeGeral : Boolean;
Begin
   xTotalDiaGeral:= FloatToStr(StrToFloat(xTotalDiaGeral) + StrToFloat(xValorVistaTotalGeral) + StrToFloat(xValorPixTotalGeral) + StrToFloat(xValorPrazoTotalGeral) + StrToFloat(xValorCartaoTotalGeral) + StrToFloat(xValorRecebeTotalGeral));
	XLinImp:=XLinImp+5;
   Imprime(rvControleVendServ,XLinImp,5,'_ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ _ _ _ _','Verdana',10,clBlack, true);
   XLinImp:=XLinImp+4;
	Imprime(rvControleVendServ, XLinImp,5, 'TOTAL GERAL:','Verdana',7,clBlack, true);
	Imprime(rvControleVendServ, XLinImp,100, FormatFloat('0.00', StrToFloat(xValorPixTotalGeral)) ,'Verdana',7,clBlack, true);   
	Imprime(rvControleVendServ, XLinImp,117, FormatFloat('0.00', StrToFloat(xValorVistaTotalGeral)) ,'Verdana',7,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,137, FormatFloat('0.00', StrToFloat(xValorPrazoTotalGeral)) ,'Verdana',7,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,157, FormatFloat('0.00', StrToFloat(xValorRecebeTotalGeral)) ,'Verdana',7,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,174, FormatFloat('0.00', StrToFloat(xValorCartaoTotalGeral)) ,'Verdana',7,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,190, FormatFloat('0.00', StrToFloat(xTotalDiaGeral)) ,'Verdana',7,clBlack, true);

   XLinImp:=XLinImp+1;
   Imprime(rvControleVendServ,XLinImp,5,'_ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ _ _ _ _','Verdana',10,clBlack, true);
End;

//Chamada da funcionalidade que trata de serviços para o dia do relatório de caixa da BS
Function TFRelData.ImpRelCaixaBS_Servicos : Boolean;
Begin
   try
       result := true;
   	xOP := 'SERV';
       ImpRelControleDiaMesVendasServFiltraDadosServicos;
//       XFlag:=0;
       if not DMSAIDA.TAlx.Eof
       then begin
       	If XLinImp>=280
           then begin
           	NovaPagina;
               ImpRelCabecalho;
               ImpRelControleDiaMesVendasServCabecalho;
           End;
       	XLinImp:=XLinImp+5;
           Imprime(rvControleVendServ, XLinImp,5, 'SERVIÇOS','Verdana',8,clBlack, true);
       End;
		DMSAIDA.TAlx.First;
   	While (not DMSAIDA.TAlx.Eof){ and (XFlag=0) }do
   	Begin
           XCodItem:=DMSAIDA.TAlx.FieldByName('cod_despadic').AsInteger;
           XCodOrdem:=DMSAIDA.TAlx.FieldByName('cod_ordem').AsInteger;
       	if XLinImp >=285
           then Begin
           	NovaPagina;
           	ImpRelCabecalho;
           	ImpRelControleDiaMesVendasServCabecalho;
           End;
           XLinImp:=XLinImp+4;
           SelecionaFormaPag;
           Imprime(rvControleVendServ, XLinImp,5, DateToStr(XDtFiltro),'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,25, DMSAIDA.TAlx.FieldByName('NUMERO').AsString+'/'+Copy(DMSAIDA.TAlx.FieldByName('DESCRICAO').AsString, 0, 20),'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,100, xValorPix,'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,117, xValorVista,'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,137, xValorPrazo,'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,157, '0,00','Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,174, xValorCartao,'Verdana',7,clBlack, false);
           DMSAIDA.TAlx.Next;
           XQuantServicosImprimir:= XQuantServicosImprimir-1;

           //Acumuladores gerais
           xValorVistaTotalGeral := FloatToStr(StrToFloat(xValorVistaTotalGeral)+StrToFloat(xValorVista));
           xValorPixTotalGeral := FloatToStr(StrToFloat(xValorPixTotalGeral)+StrToFloat(xValorPix));
           xValorPrazoTotalGeral := FloatToStr(StrToFloat(xValorPrazoTotalGeral)+StrToFloat(xValorPrazo));
           xValorCartaoTotalGeral := FloatToStr(StrToFloat(xValorCartaoTotalGeral)+StrToFloat(xValorCartao));

           If  XQuantServicosImprimir<=0 then
            	XFimData := True;
       End;


   Except

       Result := false;
   End;
End;

//Imprime os dados de totais do dia
Function TFRelData.ImpRelCaixaBS_ImprimeTotalDia : Boolean;
Begin
   try
       result := true;
       //Imprime totais para o dia
       If (xBsDiaValorPix <> 0) or (xBsDiaValorVista <> 0) or (xBsDiaValorPrazo <> 0) or (xBsDiaValorRecebimento <> 0) or (xBsDiaValorCartao <> 0)
       Then Begin
           XLinImp := XLinImp + 6;
           Imprime(rvControleVendServ, XLinImp,5, 'Total para o dia: ','Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,100, FormatFloat('0.00', xBsDiaValorPix)        , 'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,117, FormatFloat('0.00', xBsDiaValorVista)      , 'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,137, FormatFloat('0.00', xBsDiaValorPrazo)      , 'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,157, FormatFloat('0.00', xBsDiaValorRecebimento), 'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,174, FormatFloat('0.00', xBsDiaValorCartao)     , 'Verdana',8,clBlack, true);
           XLinImp := XLinImp + 4;
           Imprime(rvControleVendServ, XLinImp,5, '...........................................................................................................................................................................................','Verdana',8,clBlack, true);
       End;
   Except
       result := False;
   End
End;

//Imprime os dados de totais do relatório
Function TFRelData.ImpRelCaixaBS_ImprimeTotalRelatorio : Boolean;
Begin
   try
       result := true;
       //Imprime totais para o dia
       If (xBsTotalValorPix <> 0) or (xBsTotalValorVista <> 0) or (xBsTotalValorPrazo <> 0) or (xBsTotalValorRecebimento <> 0) or (xBsTotalValorCartao <> 0)
       Then Begin
           XLinImp := XLinImp + 7;
           Imprime(rvControleVendServ, XLinImp,5, 'Total para o relatório: ','Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,100, FormatFloat('0.00', xBsTotalValorPix)        , 'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,117, FormatFloat('0.00', xBsTotalValorVista)      , 'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,137, FormatFloat('0.00', xBsTotalValorPrazo)      , 'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,157, FormatFloat('0.00', xBsTotalValorRecebimento), 'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,174, FormatFloat('0.00', xBsTotalValorCartao)     , 'Verdana',8,clBlack, true);
       End;
   Except
       result := False;
   End
End;


//Chamada principal do relatório de caixa utilizado pela bs acessórios
Function TFRelData.ImpRelCaixaBS : Boolean;
Begin
   try
       result := true;
       XDtFiltro:= StrToDate(EdDataIni.Text);

       //zeramos todas as variáveis
       ImpRelCaixaBSLimpaVariaveisLinha;
       ImpRelCaixaBSLimpaVariaveisDia;
       ImpRelCaixaBSLimpaVariaveisTotal;

   	xNumPagina:=1;
   	xLinImp:=8;
       xFimData:=False;

       //imprime titulo e cabeçalho do relatorio Padrao
       ImpRelCabecalho;
       ImpRelCaixaBSTitulosItens;

       //Percorre todos os dias filtrando dia a dia
       While XDtFiltro<=StrToDate(EdDataFim.Text) do
   	Begin
           ImpRelCaixaBSLimpaVariaveisDia; // Para cada dia zeramos as váriaveis do dia

           //Seleciona os dados de Produtos Serviços e Recebimentos a serem trabalhados
           ImpRelCaixaBS_SelecionaDados('SERVICOS');
           ImpRelCaixaBS_TrataImprimeDados('SERVICOS');

           ImpRelCaixaBS_SelecionaDados('PRODUTOS');
           ImpRelCaixaBS_TrataImprimeDados('PRODUTOS');

           ImpRelCaixaBS_SelecionaDados('RECEBIMENTOS');
           ImpRelCaixaBS_TrataImprimeDados('RECEBIMENTOS');

           ImpRelCaixaBS_SelecionaDados('RECEBIMENTOSENTRADAS');
           ImpRelCaixaBS_TrataImprimeDados('RECEBIMENTOSENTRADAS');

           ImpRelCaixaBS_ImprimeTotalDia;
           XDtFiltro := IncDay(XDtFiltro, 1);
       End;
       //Imprime os dados de totais do relatório
       ImpRelCaixaBS_ImprimeTotalRelatorio;
       {
       //Enquanto não realizar o filtro por todas as datas
       While XDtFiltro<=StrToDate(EdDataFim.Text) do
   	Begin
           ImpRelCaixaBSLimpaVariaveisLinha; //Limpa Variavel da linha
           ImpRelCaixaBSLimpaVariaveisDia; //Limpa variaveis de saldo de dia

           //Chamada as funcionalidades principais do relatório

           ImpRelCaixaBS_ItensServicos; // Esta funcionalidade tratará os casos de serviços para o dia corrente
           aqui implementaremos as funcionalidades de produtos, recebimentos

           XDtFiltro := IncDay(XDtFiltro, 1);
       End;
        }
   Except
       Result := false;
   End;
End;

//Limpa as Variáveis utilizadas na linha do relatório de caixa específico da bs acessórios
Function TFRelData.ImpRelCaixaBSLimpaVariaveisLinha : Boolean;
Begin
      xBsDescritivoLinha       := '';
      xBsLinhaValorVista       := 0;
      xBsLinhaValorPrazo       := 0;
      xBsLinhaValorPix         :=0 ;
      xBsLinhaValorRecebimento := 0;
      xBsLinhaValorCartao      := 0;

End;

//Limpa as Variáveis utilizadas na totalização do dia do relatório de caixa específico da bs acessórios
Function TFRelData.ImpRelCaixaBSLimpaVariaveisDia : Boolean;
Begin
      xBsDiaValorVista       := 0;
      xBsDiaValorPrazo       := 0;
      xBsDiaValorPix         := 0;
      xBsDiaValorCartao      := 0;
      xBsDiaValorRecebimento := 0;
End;

//Soma valores as variáveis de totalização
Function TFRelData.ImpRelCaixaBSAcumulaVariaveisTotal : Boolean;
Begin
   try
       Result := true;

       //Totaliza para o dia
       xBsDiaValorVista       := xBsDiaValorVista       + xBsLinhaValorVista;
       xBsDiaValorPrazo       := xBsDiaValorPrazo       + xBsLinhaValorPrazo;
       xBsDiaValorPix         := xBsDiaValorPix         + xBsLinhaValorPix;
       xBsDiaValorCartao      := xBsDiaValorCartao      + xBsLinhaValorCartao;
       xBsDiaValorRecebimento := xBsDiaValorRecebimento + xBsLinhaValorRecebimento;

       //Totaliza variáveis geral
       xBsTotalValorVista       := xBsTotalValorVista       + xBsLinhaValorVista;
       xBsTotalValorPrazo       := xBsTotalValorPrazo       + xBsLinhaValorPrazo;
       xBsTotalValorPix         := xBsTotalValorPix         + xBsLinhaValorPix;
       xBsTotalValorCartao      := xBsTotalValorCartao      + xBsLinhaValorCartao;
       xBsTotalValorRecebimento := xBsTotalValorRecebimento + xBsLinhaValorRecebimento;
   except
       result := false;
   end;
End;
//Limpa as Variáveis utilizadas na totalização do relatório de caixa específico da bs acessórios
Function TFRelData.ImpRelCaixaBSLimpaVariaveisTotal : Boolean;
Begin
      xBsTotalValorVista       := 0;
      xBsTotalValorPrazo       := 0;
      xBsTotalValorPix         := 0;
      xBsTotalValorCartao      := 0;
      xBsTotalValorRecebimento := 0;
End;

//Imprime titulos do itens
Function TFRelData.ImpRelCaixaBSTitulosItens : Boolean;
Begin
   XLinImp:=XLinImp+5;
   Imprime(rvControleVendServ, XLinImp,5, 'DIA','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,25, 'SERV. / PROD. / RECEB.','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,100, 'PIX','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,115, 'VALOR Á','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,135, 'VALOR Á','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,153, 'RECEB.','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,172, 'CARTÃO','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,190, 'TOTAL','Verdana',10,clBlack, true);

   XLinImp:=XLinImp+4;
   	Imprime(rvControleVendServ, XLinImp,117, 'VISTA','Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,137, 'PRAZO','Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,192, 'DIA','Verdana',8,clBlack, true);

	XLinImp:=XLinImp+1;
   Imprime(rvControleVendServ,XLinImp,5,'____________________________________________________________________________________________________________________________','Verdana',10,clBlack, true);

End;

//Seleciona os dados principais de produtos, serviços e recebimentos a serem tratados
Function TFRelData.ImpRelCaixaBS_TrataImprimeDados(Tipo: String): Boolean;
Begin
   Try
       result := true;
       DMServ.TAlx1.First;
       While not DMServ.TAlx1.Eof do
       Begin
           //limpamos as variáveis de linha a cada loop
           ImpRelCaixaBSLimpaVariaveisLinha;

       	If XLinImp>=280
           then begin
           	NovaPagina;
               ImpRelCabecalho;
               ImpRelControleDiaMesVendasServCabecalho;
           End;
       	XLinImp:=XLinImp+5;
           If Tipo = 'SERVICOS'
           Then Begin
               If DMServ.TAlx1.RecNo = 1
               Then Begin
                   Imprime(rvControleVendServ, XLinImp,5, 'SERVIÇOS','Verdana',8,clBlack, true);
                   XLinImp:=XLinImp+5;
               End;
               xBsDescritivoLinha := 'OS :' + DMServ.TAlx1.FieldByName('numos').AsString + ' - ' + DMServ.TAlx1.FieldByName('nome').AsString;
               ImpRelCaixaBS_RetornaValores('SERVICOS');
           End;
           If Tipo = 'PRODUTOS'
           Then Begin
               If DMServ.TAlx1.RecNo = 1
               Then Begin
                   Imprime(rvControleVendServ, XLinImp,5, 'PRODUTOS','Verdana',8,clBlack, true);
                   XLinImp:=XLinImp+5;
               End;
               xBsDescritivoLinha := 'OS :' + DMServ.TAlx1.FieldByName('numos').AsString + ' - ' + DMServ.TAlx1.FieldByName('Nome').AsString;
               ImpRelCaixaBS_RetornaValores('PRODUTOS');
           End;
           If Tipo = 'RECEBIMENTOS'
           Then Begin
               If DMServ.TAlx1.RecNo = 1
               Then Begin
                   Imprime(rvControleVendServ, XLinImp,5, 'RECEBIMENTOS','Verdana',8,clBlack, true);
                   XLinImp:=XLinImp+5;
               End;
               xBsDescritivoLinha := 'OS :' + DMServ.TAlx1.FieldByName('numos').AsString + ' - ' + DMServ.TAlx1.FieldByName('cliente').AsString;
               ImpRelCaixaBS_RetornaValores('RECEBIMENTOS');
           End;

           If Tipo = 'RECEBIMENTOSENTRADAS'
           Then Begin
               If DMServ.TAlx1.RecNo = 1
               Then Begin
                   Imprime(rvControleVendServ, XLinImp,5, 'RECEBIMENTOS','Verdana',8,clBlack, true);
                   XLinImp:=XLinImp+5;
               End;
               xBsDescritivoLinha := 'OS :' + DMServ.TAlx1.FieldByName('numos').AsString + ' - ' + DMServ.TAlx1.FieldByName('cliente').AsString;
               ImpRelCaixaBS_RetornaValores('RECEBIMENTOSENTRADAS');
           End;

           ImpRelCaixaBSAcumulaVariaveisTotal;//Acumulamos os totais em suas variáveis
           //Imprimimos de forma genérica os dados da linha
           Imprime(rvControleVendServ, XLinImp,5, DateToStr(XDtFiltro),'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,25, Copy(xBsDescritivoLinha, 0, 20),'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,100, FormatFloat('0.00', xBsLinhaValorPix)   ,'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,117, FormatFloat('0.00', xBsLinhaValorVista) ,'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,137, FormatFloat('0.00', xBsLinhaValorPrazo) ,'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,157, FormatFloat('0.00', xBsLinhaValorRecebimento),'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,174, FormatFloat('0.00', xBsLinhaValorCartao),'Verdana',7,clBlack, false);

           DMServ.TAlx1.Next;
       End;
   Except

       result := false;
   End;
End;
//Retorna valor valores a prazo já recebidos para produtos e serviços
Function TFRelData.ImpRelCaixaBS_RetornaValoresPrazoRecebido: Boolean;
Begin
   Try
       result := true;
       DMServ.TAlx3.Close;
       DMServ.TAlx3.SQL.Clear;
       //Total Recebido
       DMServ.TAlx3.SQL.Add('  Select SUM(vwparcr.VALOR) as valor from vwparcr ');
       DMServ.TAlx3.SQL.Add(' left join vwctareceber on vwparcr.cod_ctareceber = vwctareceber.cod_ctareceber ');
       DMServ.TAlx3.SQL.Add(' left join ctareceber on vwctareceber.cod_ctareceber = ctareceber.cod_ctareceber ');
       DMServ.TAlx3.SQL.Add(' left join vwordem on ctareceber.cod_gerador = vwordem.cod_ordem ');
       DMServ.TAlx3.SQL.Add(' where (vwordem.status='+#39+'FECHADO'+#39+') AND ( vwordem.cod_ordem  = :CODIGO) and (ctareceber.tipogerador='+#39+'ORD'+#39+') ');
       DMServ.TAlx3.SQL.Add('  and (vwparcr.fech='+#39+'S'+#39+') ');
       DMServ.TAlx3.ParamByName('CODIGO').AsInteger := DMServ.TAlx1.FieldByName('codigo').AsInteger;
       DMServ.TAlx3.Open;
       xbsTotalPSPago := DMServ.TAlx3.FieldByName('valor').AsCurrency;

       DMServ.TAlx3.Close;
       DMServ.TAlx3.SQL.Clear;
       //Total Recebido
       DMServ.TAlx3.SQL.Add('  Select  SUM(vwparcr.VALOR) as valor from vwparcr ');
       DMServ.TAlx3.SQL.Add(' left join vwctareceber on vwparcr.cod_ctareceber = vwctareceber.cod_ctareceber ');
       DMServ.TAlx3.SQL.Add(' left join ctareceber on vwctareceber.cod_ctareceber = ctareceber.cod_ctareceber ');
       DMServ.TAlx3.SQL.Add(' left join vwordem on ctareceber.cod_gerador = vwordem.cod_ordem ');
       DMServ.TAlx3.SQL.Add(' where (vwordem.status='+#39+'FECHADO'+#39+') AND ( vwordem.cod_ordem  = :CODIGO) and (ctareceber.tipogerador='+#39+'ORD'+#39+') ');
       DMServ.TAlx3.ParamByName('CODIGO').AsInteger := DMServ.TAlx1.FieldByName('codigo').AsInteger;
       DMServ.TAlx3.Open;
       xbsTotalPSaPagar := DMServ.TAlx3.FieldByName('valor').AsCurrency;

       If xbsTotalPSaPagar > 0 Then
           xbsProposrionalPago :=  (xbsTotalPSPago / xbsTotalPSaPagar) * 100;
   except
   end;
end;
//Seleciona os dados principais de produtos, serviços e recebimentos a serem tratados
Function TFRelData.ImpRelCaixaBS_RetornaValores(Tipo: String): Boolean;
Begin
   Try
       result := true;

       If Tipo = 'SERVICOS'
       Then Begin
           If DMServ.TAlx1.FieldByName('Pagamento').AsString = 'Pix'
           Then Begin
               xBsLinhaValorPix := DMServ.TAlx1.FieldByName('valor').AsCurrency;
           end
           Else Begin
               If (DMServ.TAlx1.FieldByName('Pagamento').AsString = 'Cartão') or (DMServ.TAlx1.FieldByName('Pagamento').AsString = 'D-Cartão') or (DMServ.TAlx1.FieldByName('Pagamento').AsString = 'C-Cartão')
               Then Begin
                   xBsLinhaValorCartao := DMServ.TAlx1.FieldByName('valor').AsCurrency;
               end
               Else Begin
                   If (DMServ.TAlx1.FieldByName('formapagamento').AsString = 'À VISTA')
                   Then Begin
                       xBsLinhaValorVista := DMServ.TAlx1.FieldByName('valor').AsCurrency;
                   end
                   Else Begin
                       ImpRelCaixaBS_RetornaValoresPrazoRecebido;
                       xBsLinhaValorPrazo :=  DMServ.TAlx1.FieldByName('valor').AsCurrency - (DMServ.TAlx1.FieldByName('valor').AsCurrency * xbsProposrionalPago )/100;
                   end;
               End;
           End;
       End;

       If Tipo = 'PRODUTOS'
       Then Begin
           If DMServ.TAlx1.FieldByName('Pagamento').AsString = 'Pix'
           Then Begin
               xBsLinhaValorPix := DMServ.TAlx1.FieldByName('valor').AsCurrency;
           end
           Else Begin
               If (DMServ.TAlx1.FieldByName('Pagamento').AsString = 'Cartão') or (DMServ.TAlx1.FieldByName('Pagamento').AsString = 'D-Cartão') or (DMServ.TAlx1.FieldByName('Pagamento').AsString = 'C-Cartão')
               Then Begin
                   xBsLinhaValorCartao := DMServ.TAlx1.FieldByName('valor').AsCurrency;
               end
               Else Begin
                   If (DMServ.TAlx1.FieldByName('formapagamento').AsString = 'À VISTA')
                   Then Begin
                       xBsLinhaValorVista := DMServ.TAlx1.FieldByName('valor').AsCurrency;
                   end
                   Else Begin
                       ImpRelCaixaBS_RetornaValoresPrazoRecebido;
                       xBsLinhaValorPrazo := DMServ.TAlx1.FieldByName('valor').AsCurrency - (DMServ.TAlx1.FieldByName('valor').AsCurrency * xbsProposrionalPago )/100;
                   end;
               End;
           End;
       End;

       If Tipo = 'RECEBIMENTOS'
       Then Begin
           xBsLinhaValorRecebimento := DMServ.TAlx1.FieldByName('valor').AsCurrency;  
       End;

       If Tipo = 'RECEBIMENTOSENTRADAS'
       Then Begin
           If DMServ.TAlx1.FieldByName('Pagamento').AsString = 'Pix'
           Then Begin
               xBsLinhaValorPix := DMServ.TAlx1.FieldByName('valor').AsCurrency;
           end
           Else Begin
               If DMServ.TAlx1.FieldByName('Pagamento').AsString = 'Cartão'
               Then Begin
                   xBsLinhaValorCartao := DMServ.TAlx1.FieldByName('valor').AsCurrency;
               end
               else Begin
                   xBsLinhaValorVista := DMServ.TAlx1.FieldByName('valor').AsCurrency;
               end;
           End;
       End;

   Except

       Result := false;
   End;
End;

 //Seleciona os valores de entrada para ordem de serviço
Function TFRelData.ImpRelCaixaBS_RetornaEntradasdeOSDinheiro(Codigo: Integer; tipo:String): Real;
Var
   xMediaPercentualProduto, xValor: Real;
   xContador: Integer;
Begin
   Try
           result := 0;
           xMediaPercentualProduto:=0;
           xContador:=0;
           xValor := 0;
           DMServ.TAlx2.close;
           DMServ.TAlx2.SQL.Clear;
           DMServ.TAlx2.SQL.Add(' select vwparcr.cod_parcelacr as codigo, vwordem.numero as numos, vwparcr.dtdebito as data, ');
           DMServ.TAlx2.SQL.Add(' vwparcr.numparc as nome, vwordem.numero, vwordem.cliente, vwparcr.formpag  as formapagamento, parcelacr.pervlrserv, vwparcr.cobranca as pagamento, vwparcr.valorpg as valor from vwparcr ');
           DMServ.TAlx2.SQL.Add(' left join parcelacr on vwparcr.cod_parcelacr = parcelacr.cod_parcelacr ');
           DMServ.TAlx2.SQL.Add(' left join vwctareceber on vwparcr.cod_ctareceber = vwctareceber.cod_ctareceber ');
           DMServ.TAlx2.SQL.Add(' left join ctareceber on vwctareceber.cod_ctareceber = ctareceber.cod_ctareceber ');
           DMServ.TAlx2.SQL.Add(' left join vwordem on ctareceber.cod_gerador = vwordem.cod_ordem ');
           DMServ.TAlx2.SQL.Add(' where (vwordem.status='+#39+'FECHADO'+#39+') AND (vwparcr.dtdebito = :DATA) and (ctareceber.tipogerador='+#39+'ORD'+#39+') ');
           DMServ.TAlx2.SQL.Add(' and (vwparcr.dtdebito = vwparcr.dtlanc) and (ctareceber.cod_gerador=:Codigo) and (vwparcr.fech='+#39+'S'+#39+')   and ((vwparcr.cobranca='+#39+'Pix'+#39+') and (vwparcr.cobranca='+#39+'Cartão'+#39+')) ');
           DMServ.TAlx2.SQL.Add(' order by vwparcr.dtdebito ');
           DMServ.TAlx2.ParamByName('Codigo').AsInteger := Codigo;
           If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
           Then Begin
               DMServ.TAlx2.ParamByName('DATA').AsDate := XDtFiltro;
           End;
           DMServ.TAlx2.Open;
           Dmserv.TAlx2.First;
           While not DMServ.TAlx2.eof do
           Begin
               xMediaPercentualProduto := xMediaPercentualProduto + DMServ.TAlx2.FieldByName('pervlrserv').AsCurrency;
               xValor := DMServ.TAlx2.FieldByName('valor').AsCurrency;
               xContador:=xContador+1;
               DMServ.TAlx2.next;
           End;

           If xContador>0
           Then Begin
               xMediaPercentualProduto := xMediaPercentualProduto / xContador;
               if Tipo <> 'SERVICOS' Then//se for para produtos temos que tratar
                   xMediaPercentualProduto := 100 - xMediaPercentualProduto;
               if xMediaPercentualProduto < 100 Then
                   xValor := (xValor * xMediaPercentualProduto) / 100;
               Result := xValor;
           End
           else begin
               Result := 0;
           End;
   Except
       result:=0;
   end;
end;

 //Seleciona os valores de entrada em cartão para ordem de serviço
Function TFRelData.ImpRelCaixaBS_RetornaEntradasdeOSCartao(Codigo: Integer; tipo:String): Real;
Var
   xMediaPercentualProduto, xValor: Real;
   xContador: Integer;
Begin
   Try
           result := 0;
           xMediaPercentualProduto:=0;
           xContador:=0;
           xValor := 0;
           DMServ.TAlx2.close;
           DMServ.TAlx2.SQL.Clear;
           DMServ.TAlx2.SQL.Add(' select vwparcr.cod_parcelacr as codigo, vwordem.numero as numos, vwparcr.dtdebito as data, ');
           DMServ.TAlx2.SQL.Add(' vwparcr.numparc as nome, vwordem.numero, vwordem.cliente, vwparcr.formpag  as formapagamento, parcelacr.pervlrserv, vwparcr.cobranca as pagamento, vwparcr.valorpg as valor from vwparcr ');
           DMServ.TAlx2.SQL.Add(' left join parcelacr on vwparcr.cod_parcelacr = parcelacr.cod_parcelacr ');
           DMServ.TAlx2.SQL.Add(' left join vwctareceber on vwparcr.cod_ctareceber = vwctareceber.cod_ctareceber ');
           DMServ.TAlx2.SQL.Add(' left join ctareceber on vwctareceber.cod_ctareceber = ctareceber.cod_ctareceber ');
           DMServ.TAlx2.SQL.Add(' left join vwordem on ctareceber.cod_gerador = vwordem.cod_ordem ');
           DMServ.TAlx2.SQL.Add(' where (vwordem.status='+#39+'FECHADO'+#39+') AND (vwparcr.dtdebito = :DATA) and (ctareceber.tipogerador='+#39+'ORD'+#39+') ');
           DMServ.TAlx2.SQL.Add(' and (vwparcr.dtdebito = vwparcr.dtlanc) and (ctareceber.cod_gerador=:Codigo) and (vwparcr.fech='+#39+'S'+#39+')  and (vwparcr.cobranca='+#39+'Cartão'+#39+') ');
           DMServ.TAlx2.SQL.Add(' order by vwparcr.dtdebito ');
           DMServ.TAlx2.ParamByName('Codigo').AsInteger := Codigo;
           If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
           Then Begin
               DMServ.TAlx2.ParamByName('DATA').AsDate := XDtFiltro;
           End;
           DMServ.TAlx2.Open;
           Dmserv.TAlx2.First;
           While not DMServ.TAlx2.eof do
           Begin
               xMediaPercentualProduto := xMediaPercentualProduto + DMServ.TAlx2.FieldByName('pervlrserv').AsCurrency;
               xValor := xValor+DMServ.TAlx2.FieldByName('valor').AsCurrency;
               xContador:=xContador+1;
               DMServ.TAlx2.next;
           End;

           If xContador>0
           Then Begin
               xMediaPercentualProduto := xMediaPercentualProduto / xContador;
               if Tipo <> 'SERVICOS' Then//se for para produtos temos que tratar
                   xMediaPercentualProduto := 100 - xMediaPercentualProduto;
               if xMediaPercentualProduto < 100 Then
                   xValor := (xValor * xMediaPercentualProduto) / 100;
               Result := xValor;
           End
           else begin
               Result := 0;
           End;

   Except
       result:=0;
   end;
end;

 //Seleciona os valores de entrada em cartão para ordem de serviço
Function TFRelData.ImpRelCaixaBS_RetornaEntradasdeOSPix(Codigo: Integer; tipo:String): Real;
Var
   xMediaPercentualProduto, xValor: Real;
   xContador: Integer;
Begin
   Try
           result := 0;
           xMediaPercentualProduto:=0;
           xContador:=0;
           xValor := 0;
           DMServ.TAlx2.close;
           DMServ.TAlx2.SQL.Clear;
           DMServ.TAlx2.SQL.Add(' select vwparcr.cod_parcelacr as codigo, vwordem.numero as numos, vwparcr.dtdebito as data, ');
           DMServ.TAlx2.SQL.Add(' vwparcr.numparc as nome, vwordem.numero, vwordem.cliente, vwparcr.formpag  as formapagamento, parcelacr.pervlrserv, vwparcr.cobranca as pagamento, vwparcr.valorpg as valor from vwparcr ');
           DMServ.TAlx2.SQL.Add(' left join parcelacr on vwparcr.cod_parcelacr = parcelacr.cod_parcelacr ');
           DMServ.TAlx2.SQL.Add(' left join vwctareceber on vwparcr.cod_ctareceber = vwctareceber.cod_ctareceber ');
           DMServ.TAlx2.SQL.Add(' left join ctareceber on vwctareceber.cod_ctareceber = ctareceber.cod_ctareceber ');
           DMServ.TAlx2.SQL.Add(' left join vwordem on ctareceber.cod_gerador = vwordem.cod_ordem ');
           DMServ.TAlx2.SQL.Add(' where (vwordem.status='+#39+'FECHADO'+#39+') AND (vwparcr.dtdebito = :DATA) and (ctareceber.tipogerador='+#39+'ORD'+#39+') ');
           DMServ.TAlx2.SQL.Add(' and (vwparcr.dtdebito = vwparcr.dtlanc) and (ctareceber.cod_gerador=:Codigo) and (vwparcr.fech='+#39+'S'+#39+')  and (vwparcr.cobranca='+#39+'Pix'+#39+') ');
           DMServ.TAlx2.SQL.Add(' order by vwparcr.dtdebito ');
           DMServ.TAlx2.ParamByName('Codigo').AsInteger := Codigo;
           If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
           Then Begin
               DMServ.TAlx2.ParamByName('DATA').AsDate := XDtFiltro;
           End;
           DMServ.TAlx2.Open;
           Dmserv.TAlx2.First;
           While not DMServ.TAlx2.eof do
           Begin
               xMediaPercentualProduto := xMediaPercentualProduto + DMServ.TAlx2.FieldByName('pervlrserv').AsCurrency;
               xValor := DMServ.TAlx2.FieldByName('valor').AsCurrency;
               xContador:=xContador+1;
               DMServ.TAlx2.next;
           End;

           If xContador>0
           Then Begin
               xMediaPercentualProduto := xMediaPercentualProduto / xContador;
               if Tipo <> 'SERVICOS' Then//se for para produtos temos que tratar
                   xMediaPercentualProduto := 100 - xMediaPercentualProduto;
               if xMediaPercentualProduto < 100 Then
                   xValor := (xValor * xMediaPercentualProduto) / 100;
               Result := xValor;
           End
           else begin
               Result := 0;
           End;
           
   Except
       result:=0;
   end;
end;


//Seleciona os dados principais de produtos, serviços e recebimentos a serem tratados
Function TFRelData.ImpRelCaixaBS_SelecionaDados(Tipo: String): Boolean;
Begin
   Try
       result := true;

       DMServ.TAlx1.close;
       DMServ.TAlx1.SQL.Clear;
       If Tipo = 'SERVICOS'
       Then Begin
           DMServ.TAlx1.SQL.Add(' Select vwordem.cod_ordem as codigo, despadic.COD_DESPADIC  as codigo02, vwordem.numero as numos,  vwordem.dtfech as data, ');
           DMServ.TAlx1.SQL.Add(' despadic.despesa as nome, vwordem.formapag, vwordem.tipopag as pagamento, vwordem.formapag as formapagamento, despadic.vlrtotfin as Valor from despadic ');
           DMServ.TAlx1.SQL.Add(' left join vwordem on despadic.cod_gerador = vwordem.cod_ordem ');
           DMServ.TAlx1.SQL.Add(' where (vwordem.status='+#39+'FECHADO'+#39+') AND (vwordem.dtfech = :DATA) and (despadic.gerador='+#39+'ORDEM'+#39+') ');
           DMServ.TAlx1.SQL.Add(' order by vwordem.dtfech ');
       End;

       If Tipo = 'PRODUTOS'
       Then Begin
           DMServ.TAlx1.SQL.Add(' Select vwordem.cod_ordem as codigo, itprodord.COD_ITPRODORD  as codigo02,  vwordem.numero as numos, vwordem.dtfech as data, ');
           DMServ.TAlx1.SQL.Add(' vwsimilar.descricao as nome, vwordem.formapag, vwordem.tipopag as pagamento, vwordem.formapag as formapagamento,  itprodord.total as valor from itprodord ');
           DMServ.TAlx1.SQL.Add(' left join vwordem on itprodord.cod_ordem = vwordem.cod_ordem ');
           DMServ.TAlx1.SQL.Add(' left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
           DMServ.TAlx1.SQL.Add(' where (vwordem.status='+#39+'FECHADO'+#39+') AND (vwordem.dtfech = :DATA) ');
           DMServ.TAlx1.SQL.Add(' order by vwordem.dtfech');
       End;

       If Tipo = 'RECEBIMENTOS'
       Then Begin
           //retorna os recebimentos onde data de recebimento <> dt lançamento, isso  considerado lançamento a vista
           DMServ.TAlx1.SQL.Add(' select vwparcr.cod_parcelacr as codigo, vwordem.numero as numos, vwparcr.dtdebito as data, vwparcr.numparc as nome, vwordem.numero, vwordem.cliente, vwparcr.formpag  as formapagamento, vwparcr.cobranca as pagamento, vwparcr.valorpg as valor from vwparcr ');
           DMServ.TAlx1.SQL.Add(' left join vwctareceber on vwparcr.cod_ctareceber = vwctareceber.cod_ctareceber ');
           DMServ.TAlx1.SQL.Add(' left join ctareceber on vwctareceber.cod_ctareceber = ctareceber.cod_ctareceber ');
           DMServ.TAlx1.SQL.Add(' left join vwordem on ctareceber.cod_gerador = vwordem.cod_ordem ');
           DMServ.TAlx1.SQL.Add(' where (vwordem.status='+#39+'FECHADO'+#39+') AND (vwparcr.dtdebito = :DATA) and (ctareceber.tipogerador='+#39+'ORD'+#39+') ');
           DMServ.TAlx1.SQL.Add('  and (vwparcr.fech='+#39+'S'+#39+') and (vwparcr.dtdebito <> vwparcr.dtlanc) ');
           DMServ.TAlx1.SQL.Add(' order by vwparcr.dtdebito ');
       End;

       If Tipo = 'RECEBIMENTOSENTRADAS'
       Then Begin
           //retorna os recebimentos onde data de recebimento <> dt lançamento, isso  considerado lançamento a vista
           DMServ.TAlx1.SQL.Add(' select vwparcr.cod_parcelacr as codigo, vwordem.numero as numos, vwparcr.dtdebito as data, vwparcr.numparc as nome, vwordem.numero, vwordem.cliente, vwparcr.formpag  as formapagamento, vwparcr.cobranca as pagamento, vwparcr.valorpg as valor from vwparcr ');
           DMServ.TAlx1.SQL.Add(' left join vwctareceber on vwparcr.cod_ctareceber = vwctareceber.cod_ctareceber ');
           DMServ.TAlx1.SQL.Add(' left join ctareceber on vwctareceber.cod_ctareceber = ctareceber.cod_ctareceber ');
           DMServ.TAlx1.SQL.Add(' left join vwordem on ctareceber.cod_gerador = vwordem.cod_ordem ');
           DMServ.TAlx1.SQL.Add(' where (vwordem.status='+#39+'FECHADO'+#39+') AND (vwparcr.dtdebito = :DATA) and (ctareceber.tipogerador='+#39+'ORD'+#39+') ');
           DMServ.TAlx1.SQL.Add('  and (vwparcr.fech='+#39+'S'+#39+') and (vwparcr.dtdebito = vwparcr.dtlanc) ');
           DMServ.TAlx1.SQL.Add(' order by vwparcr.dtdebito ');
       End;

       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin
           DMServ.TAlx1.ParamByName('DATA').AsDate := XDtFiltro;
       End;

       //Selecionamos dados de serviços para o intervalo de data
       DMServ.TAlx1.Open;
   Except

       result := false;
   End;
End;

Function TFRelData.ImpRelControleDiaMesVendasServ : Boolean;
Var
	XLooping : Boolean;
Begin
	Try
       XDtFiltro:= StrToDate(EdDataIni.Text);
       LimparValores;
   	xNumPagina:=1;
   	xLinImp:=8;
       xFimData:=False;

       xValorVistaTotalGeral := '0,00';
       xValorPixTotalGeral := '0,00';
       xValorPrazoTotalGeral := '0,00';
       xValorCartaoTotalGeral := '0,00';
       xValorRecebeTotalGeral := '0,00';
       xTotalDiaGeral := '0,00';

       //imprime titulo e cabeçalho do relatorio Padrao
       ImpRelCabecalho;

       ImpRelControleDiaMesVendasServCabecalho;
       //Enquanto não realizar o filtro por todas as datas
       While XDtFiltro<=StrToDate(EdDataFim.Text) do
   	Begin
       	xValorVistaTotal := '0,00';
       	xValorPixTotal := '0,00';
           xValorPrazoTotal := '0,00';
           xValorCartaoTotal := '0,00';
			xValorRecebe := '0,00';
           xTotalDia := '0,00';

       	ImpRelControleDiaMesVendasServItensSERV;
           ImpRelControleDiaMesVendasServItensPROD;
           ImpRelControleDiaMesVendasServItensRECEB;
           //Se houver consulta imprime o rodapé
           If xFimData = True
           Then Begin
           	ImpRelControleDiaMesVendasServRodape;
               xFimData := False;
           End;
           XDtFiltro := IncDay(XDtFiltro, 1);
       End;
		ImpRelControleDiaMesVendasServRodapeGeral;
   Except

   End;
End;

Function TFRelData.ImpRelControleDiaMesVendasServTitulo : Boolean;
Begin
   XLinImp:=5;
   XLinImp:=XLinImp+5;
   Imprime(rvControleVendServ, XLinImp,40, 'Relatório de Controle Dia/Mês de Vendas e Serviços','Verdana',12,clBlack, true);
End;

Function TFRelData.ImpRelControleDiaMesVendasServCabecalho : Boolean;
Begin
   XLinImp:=XLinImp+5;
   Imprime(rvControleVendServ, XLinImp,5, 'DIA','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,25, 'SERV. / PROD. / RECEB.','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,100, 'PIX','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,115, 'VALOR Á','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,135, 'VALOR Á','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,153, 'RECEB.','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,172, 'CARTÃO','Verdana',8,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,190, 'TOTAL','Verdana',10,clBlack, true);

   XLinImp:=XLinImp+4;
   	Imprime(rvControleVendServ, XLinImp,117, 'VISTA','Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,137, 'PRAZO','Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,192, 'DIA','Verdana',8,clBlack, true);

	XLinImp:=XLinImp+1;
   Imprime(rvControleVendServ,XLinImp,5,'____________________________________________________________________________________________________________________________','Verdana',10,clBlack, true);

End;

Function TFRelData.ImpRelControleDiaMesVendasServItensSERV : Boolean;
Var
	xFlag: Integer;
Begin
   try
   	xOP := 'SERV';
       ImpRelControleDiaMesVendasServFiltraDadosServicos;
       XFlag:=0;
       if not DMSAIDA.TAlx.Eof
       then begin
       	If XLinImp>=280
           then begin
           	NovaPagina;
               ImpRelCabecalho;
               ImpRelControleDiaMesVendasServCabecalho;
           End;
       	XLinImp:=XLinImp+5;
           Imprime(rvControleVendServ, XLinImp,5, 'SERVIÇOS','Verdana',8,clBlack, true);
       End;
		DMSAIDA.TAlx.First;
   	While (not DMSAIDA.TAlx.Eof) and (XFlag=0) do
   	Begin
           XCodItem:=DMSAIDA.TAlx.FieldByName('cod_despadic').AsInteger;
           XCodOrdem:=DMSAIDA.TAlx.FieldByName('cod_ordem').AsInteger;
       	if XLinImp >=285
           then Begin
           	NovaPagina;
           	ImpRelCabecalho;
           	ImpRelControleDiaMesVendasServCabecalho;
           End;
           XLinImp:=XLinImp+4;
           SelecionaFormaPag;
           Imprime(rvControleVendServ, XLinImp,5, DateToStr(XDtFiltro),'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,25, DMSAIDA.TAlx.FieldByName('NUMERO').AsString+'/'+Copy(DMSAIDA.TAlx.FieldByName('DESCRICAO').AsString, 0, 20),'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,100, xValorPix,'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,117, xValorVista,'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,137, xValorPrazo,'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,157, '0,00','Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,174, xValorCartao,'Verdana',7,clBlack, false);
           DMSAIDA.TAlx.Next;
           XQuantServicosImprimir:= XQuantServicosImprimir-1;

           //Acumuladores gerais
           xValorVistaTotalGeral := FloatToStr(StrToFloat(xValorVistaTotalGeral)+StrToFloat(xValorVista));
           xValorPixTotalGeral := FloatToStr(StrToFloat(xValorPixTotalGeral)+StrToFloat(xValorPix));
           xValorPrazoTotalGeral := FloatToStr(StrToFloat(xValorPrazoTotalGeral)+StrToFloat(xValorPrazo));
           xValorCartaoTotalGeral := FloatToStr(StrToFloat(xValorCartaoTotalGeral)+StrToFloat(xValorCartao));

           If  XQuantServicosImprimir<=0 then
            	XFimData := True;
       End;
	Except

   End;
End;

Function TFRelData.ImpRelControleDiaMesVendasServItensPROD : Boolean;
Var
	xFlag: Integer;
Begin
   try
   	xOP := 'PROD';
       ImpRelControleDiaMesVendasServFiltraDadosProdutos;
       XFlag:=0;
       if not DMSAIDA.TAlx.Eof
       then begin
       	If XLinImp>=280
           then begin
           	NovaPagina;
               ImpRelCabecalho;
               ImpRelControleDiaMesVendasServCabecalho;
           End;
       	XLinImp:=XLinImp+5;
           Imprime(rvControleVendServ, XLinImp,5, 'PRODUTOS','Verdana',8,clBlack, true);
       End;
   	While (not DMSAIDA.TAlx.Eof) and (XFlag=0) do
   	Begin
           XCodItem:=DMSAIDA.TAlx.FieldByName('cod_itprodord').AsInteger;
           If  XCodItem = 8350 Then
           	XCodItem:=XCodItem;
           XCodOrdem:=DMSAIDA.TAlx.FieldByName('cod_ordem').AsInteger;
			If XLinImp>=285
           then begin
           	NovaPagina;
               ImpRelCabecalho;
               ImpRelControleDiaMesVendasServCabecalho;
           End;
           XLinImp:=XLinImp+4;
           SelecionaFormaPag;
   		Imprime(rvControleVendServ, XLinImp,5, DateToStr(XDtFiltro),'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,25, DMSAIDA.TAlx.FieldByName('NUMERO').AsString+'/'+Copy(DMSAIDA.TAlx.FieldByName('DESCRICAO').AsString, 0,20) ,'Verdana',7,clBlack, false);
                      Imprime(rvControleVendServ, XLinImp,117, xValorVista,'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,100, xValorPix,'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,117, xValorVista,'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,137, xValorPrazo,'Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,157, '0,00','Verdana',7,clBlack, false);
           Imprime(rvControleVendServ, XLinImp,174, xValorCartao,'Verdana',7,clBlack, false);
           DMSAIDA.TAlx.Next;
           XQuantProdutosImprimir:= XQuantProdutosImprimir-1;

           //Acumuladores gerais
           xValorVistaTotalGeral := FloatToStr(StrToFloat(xValorVistaTotalGeral)+StrToFloat(xValorVista));
           xValorPixTotalGeral := FloatToStr(StrToFloat(xValorPixTotalGeral)+StrToFloat(xValorPix));
           xValorPrazoTotalGeral := FloatToStr(StrToFloat(xValorPrazoTotalGeral)+StrToFloat(xValorPrazo));
           xValorCartaoTotalGeral := FloatToStr(StrToFloat(xValorCartaoTotalGeral)+StrToFloat(xValorCartao));

           If  XQuantProdutosImprimir<=0 then
               XFimData := True;
       End;
	Except
   	Result := False;
   End;

End;

Function TFRelData.ImpRelControleDiaMesVendasServItensRECEB : Boolean;
Var
	xFlag: Integer;
Begin
   try
       ImpRelControleDiaMesVendasServFiltraDadosRecebimentos;
       XFlag:=0;
       if not (DMCONTA.TAlx.IsEmpty) or not (DMFINANC.TAlx.IsEmpty)
       then begin
       	If XLinImp>=285
           then begin
           	NovaPagina;
               ImpRelCabecalho;
               ImpRelControleDiaMesVendasServCabecalho;
           End;
       	XLinImp:=XLinImp+5;
           Imprime(rvControleVendServ, XLinImp,5, 'RECEBIMENTOS','Verdana',8,clBlack, true);
       End;

       While (not DMFINANC.TAlx.Eof) and (XFlag=0) do
   	Begin
       	If XLinImp>=280
       	then begin
       		NovaPagina;
           	ImpRelCabecalho;
           	ImpRelControleDiaMesVendasServCabecalho;
       	End;
   		XLinImp:=XLinImp+4;
   		Imprime(rvControleVendServ, XLinImp,5, DateToStr(XDtFiltro),'Verdana',7,clBlack, false);
   		Imprime(rvControleVendServ, XLinImp,25, Copy(DMFINANC.TAlx.FieldByName('HISTORICO').AsString, 0, 20),'Verdana',7,clBlack, false);
   		Imprime(rvControleVendServ, XLinImp,117, '0,00','Verdana',7,clBlack, false);
       	Imprime(rvControleVendServ, XLinImp,137, '0,00','Verdana',7,clBlack, false);
       	Imprime(rvControleVendServ, XLinImp,157, FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VALOR').AsCurrency),'Verdana',7,clBlack, false);
       	Imprime(rvControleVendServ, XLinImp,174, '0,00','Verdana',7,clBlack, false);
   		DMFINANC.TAlx.Next;

       	XQuantRecebimentosCartaoImprimir:= XQuantRecebimentosCartaoImprimir-1;

       	If  XQuantRecebimentosCartaoImprimir<=0 then
           	XFimData := True;
		End;

   	While (not DMCONTA.TAlx.Eof) and (XFlag=0) do
   	Begin
       	If XLinImp>=280
       	then begin
       		NovaPagina;
           	ImpRelCabecalho;
           	ImpRelControleDiaMesVendasServCabecalho;
       	End;

   		XLinImp:=XLinImp+4;
   		Imprime(rvControleVendServ, XLinImp,5, DateToStr(XDtFiltro),'Verdana',7,clBlack, false);
   		Imprime(rvControleVendServ, XLinImp,25, Copy(DMCONTA.TAlx.FieldByName('HISTORICO').AsString, 0, 20),'Verdana',7,clBlack, false);
   		Imprime(rvControleVendServ, XLinImp,117, '0,00','Verdana',7,clBlack, false);
       	Imprime(rvControleVendServ, XLinImp,137, '0,00','Verdana',7,clBlack, false);
       	Imprime(rvControleVendServ, XLinImp,157, FormatFloat('0.00', DMCONTA.TAlx.FieldByName('VALOR').AsCurrency),'Verdana',7,clBlack, false);
       	Imprime(rvControleVendServ, XLinImp,174, '0,00','Verdana',7,clBlack, false);
   		DMCONTA.TAlx.Next;
           
       	XQuantRecebimentosImprimir:= XQuantRecebimentosImprimir-1;

       	If  XQuantRecebimentosImprimir<=0 then
           	XFimData := True;
		End;
	Except

   End;

End;

Function TFRelData.NovaPagina : Boolean;
Begin
   Try
		xNumPagina:=XNumPagina+1;
       rvControleVendServ.BaseReport.NewPage;
		XLinImp:=0;
   Except

   End;
End;

//Função utilizada para retornar a funçõ de itens vendidos o valor proporcional do produto em relação aos demais
Function TFRelData.RetornaAliquotaProporcaoProduto : Real;
Begin
	Try
       Result:=0;
       //vamos procurar saber quantos produtos temos no mesmo pedido ou OS
       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add(' select count(itprodord.cod_itprodord) AS QTD from itprodord Where itprodord.cod_ordem=:CodigoOrdem ');
       DMESTOQUE.Alx4.ParamByName('CodigoOrdem').AsInteger:=DMSaida.TAlx.FieldByName('COD_ORDEM').AsInteger;
       DMESTOQUE.Alx4.Open;
       If DMESTOQUE.Alx4.FieldByName('QTD').AsInteger>0
       Then Begin
           XQuantTotalProdutosOS:=DMESTOQUE.Alx4.FieldByName('QTD').AsInteger;
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add('    select itprodord.cod_itprodord, itprodord.total as TOTALPRODUTO, vwordem.total as TOTALORDEM  from itprodord ');
           MDO.QConsulta.SQL.Add('    left join vwordem ON itprodord.cod_ordem = vwordem.cod_ordem ');
           MDO.QConsulta.SQL.Add('    where itprodord.cod_itprodord=:codigoordem ');
           MDO.QConsulta.ParamByName('codigoordem').AsInteger:=DMSaida.TAlx.FieldByName('cod_itprodord').AsInteger;
           MDO.QConsulta.Open;
           If not MDO.QConsulta.IsEmpty
           Then Begin
               Result:=(MDO.QConsulta.FieldByName('TOTALPRODUTO').AsCurrency/MDO.QConsulta.FieldByName('TOTALORDEM').AsCurrency)*100;
           End;
       End;
   Except
       Result:=0;
   End;
End;

//Função utilizada para retornar a funçõ de itens vendidos o valor proporcional do SERVICO  em relação aos demais
Function TFRelData.RetornaAliquotaProporcaoServico : Real;
Begin
	Try
       Result:=0;
       //vamos procurar saber quantos servico temos no mesmo pedido ou OS
       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add('  select count(despadic.cod_despadic) AS QTD from despadic Where (despadic.cod_gerador=:CodigoOrdem) and (despadic.gerador=''ORDEM'') ');
       DMESTOQUE.Alx4.ParamByName('CodigoOrdem').AsInteger:=DMSaida.TAlx.FieldByName('COD_ORDEM').AsInteger;
       DMESTOQUE.Alx4.Open;
       If DMESTOQUE.Alx4.FieldByName('QTD').AsInteger>0
       Then Begin
           XQuantTotalProdutosOS:=DMESTOQUE.Alx4.FieldByName('QTD').AsInteger;
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add('        select despadic.cod_despadic, despadic.vlrtotfin as TOTALSERV, vwordem.total as TOTALORDEM  from despadic ');
           MDO.QConsulta.SQL.Add('            left join vwordem ON despadic.cod_gerador = vwordem.cod_ordem ');
           MDO.QConsulta.SQL.Add('            where (despadic.cod_despadic=:codigoordem) and (despadic.gerador=''ORDEM'') ');
           MDO.QConsulta.ParamByName('codigoordem').AsInteger:=DMSaida.TAlx.FieldByName('cod_despadic').AsInteger;
           MDO.QConsulta.Open;
           If not MDO.QConsulta.IsEmpty
           Then Begin
               Result:=(MDO.QConsulta.FieldByName('TOTALSERV').AsCurrency/MDO.QConsulta.FieldByName('TOTALORDEM').AsCurrency)*100;
           End;
       End;
   Except
       Result:=0;
   End;
End;

//Função Utilizada para Seleciona a forma de pagamento para o relatorio
Function TFRelData.SelecionaFormaPag2 : Boolean;
Begin
	Try
       Result:=True;

   Except
       Result:=False;
   End;
End;

Function TFRelData.SelecionaFormaPag : Boolean;
Var
	xTipoPag : String;
   xtotvista, xtotpix, xtotprazo, xtotcartao : Real;
   XVLRPRAZO, XVLRVISTA, XVLRPIX, XVLRCARTAO, XVLRRECEBE : REAL;
   XTotalPagoConta: real;
   X2, X3, X4: String;
   aux : String;
Begin
	if xOP = 'RECEBE'
   Then Begin
   	XVLRRECEBE := DMCONTA.TAlx.FieldByName('total').AsFloat;
       xValorRecebe := FormatFloat('0.00',XVLRRECEBE);
   End
   Else begin

		LimparValores;
  		DMServ.TAlx1.Close;
   	DMServ.TAlx1.SQL.Clear;
   	DMServ.TAlx1.SQL.Add('select parcelacr.cobranca, formpag.descricao, parcelacr.dtdebito, parcelacr.pervlrserv');
   	DMServ.TAlx1.SQL.Add('from parcelacr');
   	DMServ.TAlx1.SQL.Add('left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber');
   	DMServ.TAlx1.SQL.Add('left join formpag on ctareceber.cod_formpag = formpag.cod_formpag');
   	DMServ.TAlx1.SQL.Add('where ctareceber.cod_gerador=:param');
  		DMServ.TAlx1.ParamByName('param').AsInteger := DMSaida.TAlx.FieldByName('cod_ordem').AsInteger;
   	DMServ.TAlx1.Open;
       xDtDebito := DMServ.TAlx1.FieldByName('dtdebito').AsDateTime;
       DMServ.TAlx1.Last;
       If (XCodItem=8350) or (XCodItem=5886)  or (XCodItem=6995) Then
           xTipoPag:=xTipoPag;
   	if xOP = 'SERV'
       then begin
   		CalculaDescontoServ(DMSaida.TAlx.FieldByName('cod_ordem').AsInteger);
           XTotalPagoConta:=XVALOR;
           FMenu.XAliquota:=RetornaAliquotaProporcaoServico;
		end;
   	if xOP = 'PROD'
       then Begin
   		CalculaDescontoProd(DMSaida.TAlx.FieldByName('cod_ordem').AsInteger);
           XTotalPagoConta:=XVALOR;
           FMenu.XAliquota:=RetornaAliquotaProporcaoProduto;
       End;

   	xFormaPag := DMServ.TAlx1.FieldByName('descricao').AsString;
   	xTipoPag := DMServ.TAlx1.FieldByName('cobranca').AsString;

   	if (xFormaPag = 'À VISTA') or ((xFormaPag='') and (xTipoPag=''))
   	Then begin
       	//MAURO 11/03/2013 - Se for a vista no cartão
       	if (DMsaida.TAlx.FieldByName('TIPOPAG').AsString = 'Cartão') or (DMsaida.TAlx.FieldByName('TIPOPAG').AsString = 'CARTÃO')
           Then begin
                   XPARCCARTAO := XVALOR;
                   XVLRCARTAO := XVLRCARTAO + XPARCCARTAO;
                   xValorCartao := FormatFloat('0.00',XVLRCARTAO);
                   xtotcartao :=  StrToFloat(xValorCartaoTotal) +  StrToFloat(xValorCartao);
                   xValorCartaoTotal := FloatToStr(strtofloat(xValorCartaoTotal)+ XVLRCARTAO);
           End
           Else Begin //MAURO 11/03/2013 - Se for a vista
       	    if (DMsaida.TAlx.FieldByName('TIPOPAG').AsString = 'Pix') or (DMsaida.TAlx.FieldByName('TIPOPAG').AsString = 'PIX')
               Then begin
                   XPARCPix := XVALOR;
                   XVLRPix := XVLRPix + XPARCPix;
                   xtotpix :=  StrToFloat(xValorPIXTotal) +  StrToFloat(xValorPix);
                   xValorPix := FormatFloat('0.00',XVLRPIX);
                   xValorPixTotal := FloatToStr(strtofloat(xValorPixTotal)+ XVLRPIX);
               End
               Else Begin
                   XPARCVISTA := XVALOR;
                   XVLRVISTA := XVLRVISTA + XPARCVISTA;
                   xtotvista :=  StrToFloat(xValorVistaTotal) +  StrToFloat(xValorVista);
                   xValorVista := FormatFloat('0.00',XVLRVISTA);
                   xValorVistaTotal := FloatToStr(strtofloat(xValorVistaTotal)+ XVLRVISTA);
               End;
           End;
   	End;
   	If (xFormaPag <> 'À VISTA') and (xFormaPag<>'')
   	Then Begin
           //Se for diferente de a vista vamos verificar se tem entrada, e se tem entrada vamos tratar como a vista
  		    DMServ.TAlx3.Close;
   	    DMServ.TAlx3.SQL.Clear;
   	    DMServ.TAlx3.SQL.Add(' select sum (parcelacr.valorpg) as ValorPago ');
   	    DMServ.TAlx3.SQL.Add(' from parcelacr ');
   	    DMServ.TAlx3.SQL.Add(' left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
   	    DMServ.TAlx3.SQL.Add(' left join formpag on ctareceber.cod_formpag = formpag.cod_formpag ');
   	    DMServ.TAlx3.SQL.Add(' where (parcelacr.fech='+#393+ 'S' +#39 +' ) and (parcelacr.dtdebito = ctareceber.dtlanc) and (ctareceber.cod_gerador=:param)');
  		    DMServ.TAlx3.ParamByName('param').AsInteger := DMSaida.TAlx.FieldByName('cod_ordem').AsInteger;
   	    DMServ.TAlx3.Open;
           If not DMServ.TAlx3.IsEmpty
           Then Begin

           End
           Else Begin

           End;

   		If (xTipoPag = 'Cartão') or (xTipoPag = 'C - Cartão') or (xTipoPag = 'D - Cartão')
   		Then Begin
           	If FMenu.XAliquota>0
               Then Begin
                   DMServ.TAlx1.Close;
                   DMServ.TAlx1.SQL.Clear;
                   DMServ.TAlx1.SQL.Add(' Select ctareceber.valor as TOTAL, parcelacr.valorpg from  parcelacr ');
                   DMServ.TAlx1.SQL.Add(' left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
                   DMServ.TAlx1.SQL.Add(' where (ctareceber.cod_gerador=:CodigoOrdem) and ((ctareceber.dtlanc=:dtLancamento) and (parcelacr.dtdebito=:dtDebito)) ');
                   DMServ.TAlx1.ParamByName('CodigoOrdem').AsInteger := XCodOrdem;
                   DMServ.TAlx1.ParamByName('dtLancamento').AsDate := xDtDebito;
                   DMServ.TAlx1.ParamByName('dtDebito').AsDate := xDtDebito;
                   DMServ.TAlx1.Open;
                   XPARCCARTAO := XVALOR-((DMServ.TAlx1.FieldByName('valorpg').AsCurrency*FMenu.XAliquota)/100);
                   XVLRCARTAO := XVLRCARTAO + XPARCCARTAO;
                   xValorCartao := FormatFloat('0.00',XVLRCARTAO);
                   xtotcartao :=  StrToFloat(xValorCartaoTotal) +  StrToFloat(xValorCartao);
                   xValorCartaoTotal := FloatToStr(strtofloat(xValorCartaoTotal)+ XVLRCARTAO);
               End
               Else Begin
                   XPARCCARTAO := XVALOR;
                   XVLRCARTAO := XVLRCARTAO + XPARCCARTAO;
                   xValorCartao := FormatFloat('0.00',XVLRCARTAO);
                   xtotcartao :=  StrToFloat(xValorCartaoTotal) +  StrToFloat(xValorCartao);
                   xValorCartaoTotal := FloatToStr(strtofloat(xValorCartaoTotal)+ XVLRCARTAO);
               End;
   		End;
       	if (XDtFiltro = xDtDebito) //Se é entrada + Prazo, entra aqui
       	Then Begin
               DMServ.TAlx1.Close;
               DMServ.TAlx1.SQL.Clear;
               DMServ.TAlx1.SQL.Add(' Select ctareceber.valor as TOTAL, parcelacr.valorpg, ctareceber.dtlanc, parcelacr.dtdebito from  parcelacr ');
               DMServ.TAlx1.SQL.Add(' left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
               DMServ.TAlx1.SQL.Add(' where (ctareceber.cod_gerador=:CodigoOrdem) and ((ctareceber.dtlanc=:dtLancamento) and (parcelacr.dtdebito=:dtDebito)) ');
               DMServ.TAlx1.ParamByName('CodigoOrdem').AsInteger := XCodOrdem;
               DMServ.TAlx1.ParamByName('dtLancamento').AsDate := xDtDebito;
               DMServ.TAlx1.ParamByName('dtDebito').AsDate := xDtDebito;
               DMServ.TAlx1.Open;
           	If (FMenu.XAliquota>0) and (xTipoPag <> 'Cartão')
               Then Begin
                   If DMServ.TAlx1.FieldByName('dtlanc').AsString = DMServ.TAlx1.FieldByName('dtdebito').AsString
                   Then Begin
                       //O trecho abaixo foi comentado pq a entrada será mostrada nos recebimentos
                       //XPARCVISTA := DMServ.TAlx1.FieldByName('valorpg').AsCurrency; //XVALOR;
                       XVLRVISTA := (DMServ.TAlx1.FieldByName('valorpg').AsCurrency*FMenu.XAliquota)/100;
                       xtotvista :=  StrToFloat(xValorVistaTotal) +  StrToFloat(xValorVista);
                       xValorVista := FormatFloat('0.00',XVLRVISTA);
                       xValorVistaTotal := FloatToStr(strtofloat(xValorVistaTotal)+ XVLRVISTA);
                   end
                   Else Begin
                       XPARCPRAZO := (DMServ.TAlx1.FieldByName('TOTAL').AsCurrency*FMenu.XAliquota)/100;
                       if XPARCPRAZO>0
                       Then Begin
                           XVLRPRAZO:=XPARCPRAZO-((DMServ.TAlx1.FieldByName('valorpg').AsCurrency*FMenu.XAliquota)/100);
                           xValorPrazo := FormatFloat('0.00',XVLRPRAZO);
                           xtotprazo :=  StrToFloat(xValorPrazoTotal) +  StrToFloat(xValorPrazo);
                           xValorPrazoTotal := FloatToStr(strtofloat(xValorPrazoTotal)+ XVLRPRAZO);
                       End;
                   end;
               End
               Else Begin
               	If (xTipoPag <> 'Cartão')
                   Then Begin
                       If DMServ.TAlx1.FieldByName('dtlanc').AsString = DMServ.TAlx1.FieldByName('dtdebito').AsString
                       Then Begin
                           //O trecho abaixo foi comentado pq a entrada será mostrada nos recebimentos
                           //XPARCVISTA := DMServ.TAlx1.FieldByName('valorpg').AsCurrency; //XVALOR;
                           XVLRVISTA := (DMServ.TAlx1.FieldByName('valorpg').AsCurrency*FMenu.XAliquota)/100;
                           xtotvista :=  StrToFloat(xValorVistaTotal) +  StrToFloat(xValorVista);
                           xValorVista := FormatFloat('0.00',XVLRVISTA);
                           xValorVistaTotal := FloatToStr(strtofloat(xValorVistaTotal)+ XVLRVISTA);
                       End
                       Else Begin
                           XPARCPRAZO := DMServ.TAlx1.FieldByName('TOTAL').AsCurrency-DMServ.TAlx1.FieldByName('valorpg').AsCurrency;
                           if XPARCPRAZO>0
                           Then Begin
                               XVLRPRAZO:=XPARCPRAZO;
                               xValorPrazo := FormatFloat('0.00',XVLRPRAZO);
                               xtotprazo :=  StrToFloat(xValorPrazoTotal) +  StrToFloat(xValorPrazo);
                               xValorPrazoTotal := FloatToStr(strtofloat(xValorPrazoTotal)+ XVLRPRAZO);
                           End;
                       End;
                   End;
               	If (xTipoPag = 'Cartão')
                   Then Begin
                   	XPARCVISTA:=(DMServ.TAlx1.FieldByName('valorpg').AsCurrency*FMenu.XAliquota)/100;
                   End;
                   //O trecho abaixo foi comentado pq a entrada será mostrada nos recebimentos
                   //XPARCVISTA := DMServ.TAlx1.FieldByName('valorpg').AsCurrency; //XVALOR;
                   XVLRVISTA := XVLRVISTA + XPARCVISTA;
                   xtotvista :=  StrToFloat(xValorVistaTotal) +  StrToFloat(xValorVista);
                   xValorVista := FormatFloat('0.00',XVLRVISTA);
                   xValorVistaTotal := FloatToStr(strtofloat(xValorVistaTotal)+ XVLRVISTA);

               End;
       	End
   		Else begin //Se é a prazo, sem entradas ou cartões, entra aqui
   			If (xTipoPag <> 'Cartão') and (xTipoPag <> 'C - Cartão') and (xTipoPag <> 'D - Cartão')
   			Then Begin
                   XPARCPRAZO := XVALOR;
                   XVLRPRAZO := XVLRPRAZO + XPARCPRAZO;
                   xValorPrazo := FormatFloat('0.00',XVLRPRAZO);
                   xtotprazo :=  StrToFloat(xValorPrazoTotal) +  StrToFloat(xValorPrazo);
                   xValorPrazoTotal := FloatToStr(strtofloat(xValorPrazoTotal)+ XVLRPRAZO);
               End;
   		End;
   	End;
	End;
End;

Function TFRelData.CalculaDescontoProd(xCodigo:Integer) : Boolean;
Var
	xDESCPROD : Double;
   xDESCONTO : Double;
Begin
	DMServ.TAlx2.Close;
   DMServ.TAlx2.SQL.Clear;
   DMServ.TAlx2.SQL.Add('select ordem.descprod from ordem');
   DMServ.TAlx2.SQL.Add('where ordem.cod_ordem =:param');
   DMServ.TAlx2.ParamByName('param').AsInteger := xCodigo;
   DMServ.TAlx2.Open;

	if DMServ.TAlx2.FieldByName('descprod').AsCurrency <> 0
   Then Begin

      XVALOR := DMSAIDA.TAlx.FieldByName('total').AsFloat;
      xDESCPROD := DMSAIDA.TAlx.FieldByName('descprod').AsCurrency;
      //EValorServ.ValueNumeric-((EValorServ.ValueNumeric/100)*EDescServ.ValueNumeric));
      xDESCONTO := (XVALOR /100)*xDESCPROD;
      XVALOR := XVALOR - xDESCONTO;
   End
   Else Begin
      XVALOR := DMSAIDA.TAlx.FieldByName('total').AsFloat;
   End;
End;

Function TFRelData.CalculaDescontoServ(xCodigo:Integer) : Boolean;
Var
	xDESCSERV: Double;
   xDESCONTO : Double;
Begin
	DMServ.TAlx2.Close;
   DMServ.TAlx2.SQL.Clear;
   DMServ.TAlx2.SQL.Add('select ordem.descserv from ordem');
   DMServ.TAlx2.SQL.Add('where ordem.cod_ordem =:param');
   DMServ.TAlx2.ParamByName('param').AsInteger := xCodigo;
   DMServ.TAlx2.Open;
	if DMServ.TAlx2.FieldByName('descserv').AsCurrency <> 0
   Then Begin

      XVALOR := DMSAIDA.TAlx.FieldByName('total').AsFloat;
      xDESCSERV:= DMSAIDA.TAlx.FieldByName('descserv').AsCurrency;
      xDESCONTO := (XVALOR /100)*xDESCSERV;
      XVALOR := XVALOR - xDESCONTO;
   End
   Else Begin
      XVALOR := DMSAIDA.TAlx.FieldByName('total').AsFloat;
   End;
End;

Function TFRelData.ImpRelControleDiaMesVendasServRodape : Boolean;
Var
	xtotdia : Real;
   xtotCartao : Real;
Begin

   xtotCartao := StrToFloat(xValorCartaoTotal) + StrToFloat(XvalorRecebeCartao);
   xValorCartaoTotal := FormatFloat('0.00', xtotCartao);
   xtotdia := StrToFloat(xValorRecebeTotal)+StrToFloat(XvalorRecebeCartao)+ StrToFloat(xValorCartaoTotal)  + StrToFloat(xValorPixTotal)  + StrToFloat(xValorVistaTotal) + StrToFloat(xValorPrazoTotal);
   xTotalDia := FormatFloat('0.00', xtotdia);

	XLinImp:=XLinImp+2;
   Imprime(rvControleVendServ,XLinImp,5,'_ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ _ _ _ _','Verdana',10,clBlack, true);
   XLinImp:=XLinImp+4;
	Imprime(rvControleVendServ, XLinImp,5, 'TOTAL','Verdana',7,clBlack, true);
	Imprime(rvControleVendServ, XLinImp,100, FormatFloat('0.00', StrToFloat(xValorPixTotal)) ,'Verdana',7,clBlack, true);   
	Imprime(rvControleVendServ, XLinImp,117, FormatFloat('0.00', StrToFloat(xValorVistaTotal)) ,'Verdana',7,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,137, FormatFloat('0.00', StrToFloat(xValorPrazoTotal)) ,'Verdana',7,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,157, FormatFloat('0.00', StrToFloat(xValorRecebeTotal)) ,'Verdana',7,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,174, FormatFloat('0.00', StrToFloat(xValorCartaoTotal)) ,'Verdana',7,clBlack, true);
   Imprime(rvControleVendServ, XLinImp,190, FormatFloat('0.00', StrToFloat(xTotalDia)) ,'Verdana',7,clBlack, true);
   xValorRecebeTotalGeral := FloatToStr(StrToFloat(xValorRecebeTotalGeral)+StrToFloat(xValorRecebeTotal));

   XLinImp:=XLinImp+1;
   Imprime(rvControleVendServ,XLinImp,5,'_ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ __ _ _ _ _ _ _ _ _ _','Verdana',10,clBlack, true);

  xValorCartaoTotal := '0,00';
  xValorVistaTotal := '0,00';
  xValorPrazoTotal := '0,00';

End;

Function TFRelData.ImpRelControleDiaMesVendasServFiltraDadosServicos : Boolean;
Begin
	Try
   	Result := True;
       DMSaida.TAlx.close;
       DMSaida.TAlx.SQL.Clear;
       //seleciona os itens em dmsaida.talx
       If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'EQUIPE') AND (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'MECANICA')
       then begin
           //OS que usa serviços de ITServOrd
           DMSaida.TAlx.SQL.Add(' select itservord.cod_itservord, itservord.cod_ordem, ordem.dtfech as DATA, ordem.numero,  ');
           DMSaida.TAlx.SQL.Add('vwsubservico.descricao as DESCRICAO, itservord.total, ORDEM.descserv, ordem.tipopag');
           DMSaida.TAlx.SQL.Add('from itservord');
           DMSaida.TAlx.SQL.Add('left join ordem on itservord.cod_ordem = ordem.cod_ordem');
           DMSaida.TAlx.SQL.Add('left join vwsubservico on itservord.cod_servico = vwsubservico.cod_subservico');
       End
       Else Begin
           //OS que usam serviço de dados adicionais
           DMSaida.TAlx.SQL.Add(' select despadic.cod_despadic, despadic.cod_gerador, ordem.cod_ordem, ordem.dtfech as DATA, ordem.numero, ');
           DMSaida.TAlx.SQL.Add(' despadic.despesa as DESCRICAO, despadic.vlrtotfin as total, ORDEM.descserv, ordem.tipopag ');
           DMSaida.TAlx.SQL.Add(' from despadic ');
           DMSaida.TAlx.SQL.Add(' left join ordem on despadic.cod_gerador = ordem.cod_ordem ');
       End;
       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin
           DMSaida.TAlx.SQL.Add('Where ordem.dtfech = :DATAINI');
           DMSaida.TAlx.SQL.Add('and ordem.status = ''FECHADO''');
           DMSaida.TAlx.ParamByName('DATAINI').AsDate := XDtFiltro;
       End;
       DMSaida.TAlx.SQL.Add(' ORDER BY ordem.dtfech ');
       DMSaida.TAlx.Open;

		DMServ.Alx.Close;
       DMServ.Alx.SQL.Clear;

       //armazenamos a quantidade de registros a serem trabalhados em dmserv.alx
       If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'EQUIPE') AND (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString <> 'MECANICA')
       then begin
           //OS que usa serviços de ITServOrd
           DMServ.Alx.SQL.Add('select count(ordem.dtfech) as QuantServicos');
           DMServ.Alx.SQL.Add('from itservord');
           DMServ.Alx.SQL.Add('left join ordem on itservord.cod_ordem = ordem.cod_ordem');
           If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
           Then Begin
               DMServ.Alx.SQL.Add(' Where ordem.dtfech = :DATAINI');
               DMServ.Alx.SQL.Add(' and ordem.status = ''FECHADO''');
               DMServ.Alx.ParamByName('DATAINI').AsDate := XDtFiltro;
           End;
       End
       Else Begin
           DMServ.Alx.SQL.Add(' select count(despadic.cod_despadic) as QuantServicos ');
           DMServ.Alx.SQL.Add(' from despadic ');
           DMServ.Alx.SQL.Add(' left join ordem on despadic.cod_gerador = ordem.cod_ordem ');
           If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
           Then Begin
               DMServ.Alx.SQL.Add(' Where ordem.dtfech = :DATAINI');
               DMServ.Alx.SQL.Add(' and ordem.status = ''FECHADO''');
               DMServ.Alx.ParamByName('DATAINI').AsDate := XDtFiltro;
           End;           
       End;
       DMServ.Alx.Open;

       XQuantServicosImprimir:=DMServ.Alx.FieldByName('QuantServicos').AsInteger;

   Except
		Result:=False;
   End;
End;

Function TFRelData.ImpRelControleDiaMesVendasServFiltraDadosProdutos : Boolean;
Begin
	Try
   	Result :=True;
       DMSaida.TAlx.Close;
       DMSaida.TAlx.SQL.Clear;
       DMSaida.TAlx.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem,itprodord.total,ordem.dtfech as DATA,ordem.tipopag, ');
       DMSaida.TAlx.SQL.Add('vwsimilar.descricao as DESCRICAO,ORDEM.descprod, ordem.numero ');
       DMSaida.TAlx.SQL.Add('from itprodord');
       DMSaida.TAlx.SQL.Add('left join ordem on itprodord.cod_ordem = ordem.cod_ordem');
       DMSaida.TAlx.SQL.Add('left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque');

       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin
           DMSaida.TAlx.SQL.Add('Where ordem.dtfech = :DATAINI');
           DMSaida.TAlx.SQL.Add('and ordem.status = ''FECHADO''');
           DMSaida.TAlx.ParamByName('DATAINI').AsDate := XDtFiltro;
       End;
       DMSaida.TAlx.SQL.Add(' ORDER BY ordem.dtfech ');       
       DMSaida.TAlx.Open;

       DMServ.Alx.Close;
       DMServ.Alx.SQL.Clear;
       DMServ.Alx.SQL.Add('select count(ordem.dtfech) as QuantServicos');
       DMServ.Alx.SQL.Add('from itprodord');
       DMServ.Alx.SQL.Add('left join ordem on itprodord.cod_ordem = ordem.cod_ordem');

       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin
           DMServ.Alx.SQL.Add(' Where ordem.dtfech = :DATAINI');
           DMServ.Alx.SQL.Add(' and ordem.status = ''FECHADO''');
           DMServ.Alx.ParamByName('DATAINI').AsDate := XDtFiltro;
       End;
       DMServ.Alx.Open;
       XQuantProdutosImprimir:=DMServ.Alx.FieldByName('QuantServicos').AsInteger;
   Except
   	Result := False;

   End;
End;

Function TFRelData.ImpRelControleDiaMesVendasServFiltraDadosRecebimentos : Boolean;
Var
	XVALORTOTAL : Real;
Begin
	//MAURO - 08/03/2013 - Filtra os lançamentos de caixa para imprimir nos recebimentos
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add(' select lancaixa.historico, lancaixa.valor, lancaixa.dtlanc as data, vwparcr.dtlanc, vwparcr.dtvenc ');
   DMCONTA.TAlx.SQL.Add(' from lancaixa');
   DMCONTA.TAlx.SQL.Add(' Left Join vwparcr on lancaixa.cod_gerador = vwparcr.cod_parcelacr ');
   DMCONTA.TAlx.SQL.Add('where (lancaixa.dtlanc =:param) and (lancaixa.tipogerador= '+#39+'CTAR'+#39+')  and (lancaixa.tipcai= '+#39+'E'+#39+') and (lancaixa.tipo <> '+#39+'Cartão'+#39+' OR lancaixa.tipo <> '+#39+'CARTÃO'+#39+')  and (vwparcr.dtvenc<>vwparcr.dtlanc) ');
   DMCONTA.TAlx.ParamByName('param').AsDate := XDtFiltro;
   DMCONTA.TAlx.Open;
   DMCONTA.TAlx.First;

   //MAURO - 08/03/2013 - Filtra para buscar o numero de lançamentos e o valor acumulado do filtro acima
   DMServ.TAlx3.Close;
   DMServ.TAlx3.SQL.Clear;
   DMServ.TAlx3.SQL.Add('select sum(lancaixa.valor) as TOTALRECEBE, count(lancaixa.cod_lanc) as QuantRecebimentos');
   DMServ.TAlx3.SQL.Add('from lancaixa');
   DMServ.TAlx3.SQL.Add(' Left Join vwparcr on lancaixa.cod_gerador = vwparcr.cod_parcelacr ');
   DMServ.TAlx3.SQL.Add('where (lancaixa.dtlanc =:param) and (lancaixa.tipogerador= '+#39+'CTAR'+#39+')  and (lancaixa.tipcai= '+#39+'E'+#39+') and (lancaixa.tipo <> '+#39+'Cartão'+#39+' OR lancaixa.tipo <> '+#39+'CARTÃO'+#39+')  and (vwparcr.dtvenc<>vwparcr.dtlanc) ');
   DMServ.TAlx3.ParamByName('param').AsDate := XDtFiltro;
   DMServ.TAlx3.Open;
   DMServ.TAlx3.First;

   //MAURO - 08/03/2013 - Filtra as movimentações bancarias para imprimir nos recebimentos como cartão
   DMFINANC.TAlx.Close;
  	DMFINANC.TAlx.SQL.Clear;
   DMFINANC.TAlx.SQL.Add('select movbanco.cod_movbanco, movbanco.historico ,movbanco.valor, movbanco.dtmov');
   DMFINANC.TAlx.SQL.Add('from movbanco');
   DMFINANC.TAlx.SQL.Add('left join parcelacr on movbanco.cod_gerador = parcelacr.cod_parcelacr');
   DMFINANC.TAlx.SQL.Add('where (movbanco.dtmov =:param) and (movbanco.tipogerador= '+#39+'CTAR'+#39+')  and (movbanco.tipoop= '+#39+'ENTRADA'+#39+') and (movbanco.cobranca = '+#39+'CARTÃO'+#39+')');
   DMFINANC.TAlx.ParamByName('param').AsDate := XDtFiltro;
   DMFINANC.TAlx.Open;
   DMFINANC.TAlx.First;

   //MAURO - 08/03/2013 - Filtra para buscar o numero de lançamentos e o valor acumulado do filtro acima
   DMFINANC.TAlxMoeda.Close;
   DMFINANC.TAlxMoeda.SQL.Clear;
   DMFINANC.TAlxMoeda.SQL.Add('select sum(movbanco.valor) as TOTALRECEBECARTAO, count(movbanco.cod_movbanco) as  QuantRecebimentosCartao');
   DMFINANC.TAlxMoeda.SQL.Add('from movbanco');
   DMFINANC.TAlxMoeda.SQL.Add('where (movbanco.dtmov =:param) and (movbanco.tipogerador= '+#39+'CTAR'+#39+')  and (movbanco.tipoop= '+#39+'ENTRADA'+#39+') and (movbanco.cobranca = '+#39+'CARTÃO'+#39+')');
   DMFINANC.TAlxMoeda.ParamByName('param').AsDate := XDtFiltro;
   DMFINANC.TAlxMoeda.Open;
   DMFINANC.TAlxMoeda.First;

   //MAURO - 08/03/2013 - Passa o numero de lançamentos para as variaveis de controle
   XQuantRecebimentosImprimir:=DMServ.TAlx3.FieldByName('QuantRecebimentos').AsInteger;
   XQuantRecebimentosCartaoImprimir:=DMFINANC.TAlxMoeda.FieldByName('QuantRecebimentosCartao').AsInteger;
	XVALORTOTAL := DMServ.TAlx3.FieldByName('TOTALRECEBE').AsFloat;
   xValorRecebeTotal := FormatFloat('0.00', XVALORTOTAL);
   XvalorRecebeCartao := FormatFloat('0.00',DMFINANC.TAlxMoeda.FieldByName('TOTALRECEBECARTAO').AsFloat);

End;

procedure TFRelData.rvControleVendServPrint(Sender: TObject);
begin
  inherited;
	If FMenu.TIPOREL='CONTROLEDIAMESVENDSERV' Then
		ImpRelCaixaBS; // ImpRelControleDiaMesVendasServ;
   If FMenu.TIPOREL= 'RELBALANCETE' Then
       ImpRelBalancete;
   If FMenu.TIPOREL= 'RELBALANCETEPERIODO' Then
       ImpRelBalancetePeriodo;
   If FMenu.TIPOREL= 'FLUXOCAIXACOMPLETO' Then
       ImpRelFluxoCaixaCompleto;
   If FMenu.TIPOREL= 'RELOSSERVICOSGRADE' Then
       ImpRelServicosGrade;
    IF FMenu.TIPOREL= 'RELGERENCIALANALITICO' Then
      ImpRelGerencial;
   IF FMenu.TIPOREL= 'RELGERENCIALSINTETICO' Then
      ImpRelGerencial;
   if fmenu.TIPOREL = 'LISTLANCPORCAIXA' then
      ImpRelListagemCaixa;

End;

procedure TFRelData.rvControleVendServBeforePrint(Sender: TObject);
begin
  inherited;
	with Sender as TBaseReport do
  	begin
   	SetPaperSize(DMPAPER_A4,0,0);
	END;
end;

Procedure TFRelData.Imprime(RVRel: TRVSystem; Linha: Double; Coluna:Double; Texto:String; Fonte:String; TamFonte:Integer; CorFonte:TColor; Tipo:Boolean);
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

Function TFRelData.LimparValores : Boolean;
Begin
    xValorPrazo := '0,00';
    xValorVista := '0,00';
    xValorPix := '0,00';    
    xValorCartao := '0,00';

End;

Function TFRelData.ImpRelBalancete : Boolean;
Begin
	Try
   	xVlrTransBanc := '0';
   	xNumPagina:=01;
   	xLinImp:=8;
       XDtFiltro:= StrToDate(EdDataIni.Text);
   	XNovaPagina:=False;
       xOutros := False;//MAURO - Controle se existem/foram impressas contas pro labore
       ImpRelCabecalho;
       XTotalEntradasDiaBalancete:=0;
       XTotalSaidasDiaBalancete:=0;
       ImpRelBalanceteCabecalho;
       ImpRelBalanceteSaldoAnterior;
       While XDtFiltro<=StrToDate(EdDataFim.Text) do
       Begin
       	if XLinImp >= 200
           then Begin
           	NovaPagina;
               ImpRelCabecalho;
               ImpRelBalanceteCabecalho;
               Imprime(rvControleVendServ, 26,250, 'Saldo anterior: '+FormatFloat('#,##0.00', xValorAnterior),'Verdana',10,clBlack, true);
           End;
       	ImpRelBalanceteEntradas;
           ImpRelBalanceteSaidas;
//         ImpRelBalanceteBancos; Edmar - 19/12/2013 - Trecho comentado a pedido da Roda Solda
			ImpRelBalanceteTransBanc;
           if xOutros = True then
           	ImpRelBalanceteOutros;//ContasLabore

           //Controle para verficar teve itens nas funções acima
           if xFimData = True
           Then begin
           	SomaGeral;
           	xLinImp := xLinImp +1;
               xFimData := False;
               Imprime(rvControleVendServ, XLinImp,270, xvlrSaldoDiario,'Verdana',8,clBlack, true);
           End;
           //Imprime(rvControleVendServ, XLinImp,275, xvlrSaldoDiario,'Verdana',8,clBlack, true);
           XDtFiltro := IncDay(XDtFiltro, 1);
           xDtImp := False;

       End;
       if XLinImp >= 185
       then Begin
       	//Se não houver linha suficiente para impressão, chamamos nova pagina
           NovaPagina;
           ImpRelCabecalho;
           ImpRelBalanceteCabecalho;
       End;
       ImpRelBalanceteRodape;
       //Imprime(rvControleVendServ, XLinImp,275, xTotalGeral,'Verdana',10,clBlack, true);
       LimparDados;

   Except
      Result := False;
      ShowMessage('Erro ao tentar imprimir relatorio Balancete Mensal');
   End;

End;

//Retorna o saldo de saidas para o periodo já formatado como string
Function TFRelData.ImpRelBalancetePeriodoSaldoSaidas : Real;
Begin
	Try
       Result:=0;
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' Select Sum(vwlancaixa.valor) as saidas from vwlancaixa where (vwlancaixa.tipcai=''S'') and (vwlancaixa.cod_abcaixa=:codigo) ');
       MDO.QConsulta.ParamByName('codigo').AsInteger:=DMCAIXA.TAlx.FieldByName('cod_abcaixa').AsInteger;
       MDO.QConsulta.Open;
       Result:= MDO.QConsulta.FieldByName('saidas').AsCurrency;
   Except

   End;
End;

//Retorna o saldo de T. Banco para o periodo já formatado como string
Function TFRelData.ImpRelBalancetePeriodoSaldoTBanco : Real;
Begin
	Try
       Result:=0;
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' Select Sum(vwlancaixa.valor) as TBANCO from vwlancaixa where (vwlancaixa.tipo=''T. Banco'') and (vwlancaixa.cod_abcaixa=:codigo) ');
       MDO.QConsulta.ParamByName('codigo').AsInteger:=DMCAIXA.TAlx.FieldByName('cod_abcaixa').AsInteger;
       MDO.QConsulta.Open;
       Result:=MDO.QConsulta.FieldByName('TBANCO').AsCurrency;
   Except
   End;
End;

//Retorna o saldo de Pró labore
Function TFRelData.ImpRelBalancetePeriodoSaldoPro(Var CodigoProLabore: Integer) : Real;
Begin
	Try
       Result:=0;
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' Select Sum(vwlancaixa.valor) as PROLABORE from vwlancaixa where (vwlancaixa.cod_plnctafil=:CodigoConta) and (vwlancaixa.cod_abcaixa=:codigo) ');
       MDO.QConsulta.ParamByName('codigo').AsInteger:=DMCAIXA.TAlx.FieldByName('cod_abcaixa').AsInteger;
       MDO.QConsulta.ParamByName('CodigoConta').AsInteger:=CodigoProLabore;
       MDO.QConsulta.Open;
       Result:= MDO.QConsulta.FieldByName('PROLABORE').AsCurrency;
   Except

   End;
End;
//Retorna o saldo de entradas para o periodo já formatado como string
Function TFRelData.ImpRelBalancetePeriodoSaldoEntradas : Real;
Begin
	Try
       Result:=0;
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' Select Sum(vwlancaixa.valor) as entradas from vwlancaixa where (vwlancaixa.tipcai=''E'') and (vwlancaixa.cod_abcaixa=:codigo) ');
       MDO.QConsulta.ParamByName('codigo').AsInteger:=DMCAIXA.TAlx.FieldByName('cod_abcaixa').AsInteger;
       MDO.QConsulta.Open;
       Result:=MDO.QConsulta.FieldByName('entradas').AsCurrency;
   Except

   End;
End;

//Balancete mensal por período
Function TFRelData.ImpRelBalancetePeriodo : Boolean;
var
   xVlrPro01, xVlrPro02, xVlrEntradas, xVlrSaidas, xVlrTBanco: Real;
   xTotalEntradas, xTotalSaidas, xTotalPro01, xTotalPro02: Real;
Begin
	Try
   	xVlrTransBanc := '0';
	    xTituloRelatorio:='Balancete de Caixa por Período';
   	xNumPagina:=01;
   	xLinImp:=8;
       XDtFiltro:= StrToDate(EdDataIni.Text);
   	XNovaPagina:=False;
       xOutros := False;//MAURO - Controle se existem/foram impressas contas pro labore
       ImpRelCabecalho;
       XTotalEntradasDiaBalancete:=0;
       XTotalSaidasDiaBalancete:=0;
       xVlrTBanco:=0;
       xTotalEntradas:=0;
       xTotalSaidas:=0;
       xTotalPro01:=0;
       xTotalPro02:=0;
       ImpRelBalanceteCabecalho;
       While (DMCAIXA.TAlx.FieldByName('cod_abcaixa').AsInteger<=DMFINANC.TAlx.FieldByName('cod_abcaixa').AsInteger) do
       Begin
			XLinImp:=XLinImp+5;
           xVlrPro01:=ImpRelBalancetePeriodoSaldoPro(xCodPro01);
           xVlrPro02:=ImpRelBalancetePeriodoSaldoPro(xCodPro02);
           xVlrEntradas:=ImpRelBalancetePeriodoSaldoEntradas;
           xVlrSaidas:=ImpRelBalancetePeriodoSaldoSaidas;
           xVlrTBanco:=ImpRelBalancetePeriodoSaldoTBanco;

           xTotalPro01:=xTotalPro01+xVlrPro01;
           xTotalPro02:=xTotalPro02+xVlrPro02;
           xTotalEntradas:=xTotalEntradas+xVlrEntradas;
           xTotalSaidas:=xTotalSaidas+xVlrSaidas;
       	//falta testar o while para ver se para e imprime todos os abcaixas
           Imprime(rvControleVendServ, XLinImp,5, DMCAIXA.TAlx.fieldByName('DTABERTURA').AsString,'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,40, FormatFloat('0.00', DMCAIXA.TAlx.fieldByName('SALDOINI').AsCurrency), 'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,80, FormatFloat('0.00', xVlrEntradas), 'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,105, FormatFloat('0.00', xVlrSaidas), 'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,130, FormatFloat('0.00', xVlrTBanco),'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,160, FormatFloat('0.00', xVlrPro01),'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,190, FormatFloat('0.00', xVlrPro02),'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,230, FormatFloat('0.00', (xVlrPro01+xVlrPro02)),'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,270, FormatFloat('0.00', DMCAIXA.TAlx.fieldByName('saldofin').AsCurrency), 'Verdana',8,clBlack, true);
           DMCAIXA.TAlx.Prior;
       End;
       if XLinImp >= 185
       then Begin
       	//Se não houver linha suficiente para impressão, chamamos nova pagina
           NovaPagina;
           ImpRelCabecalho;
           ImpRelBalanceteCabecalho;
       End;

       //Totalizadores
  		XLinImp:=XLinImp+2;
   	Imprime(rvControleVendServ,XLinImp,5,'_________________________________________________________________________________________________________________________','Verdana',10,clBlack, true);
  		XLinImp:=XLinImp+5;
       Imprime(rvControleVendServ, XLinImp,80, FormatFloat('0.00', xTotalEntradas), 'Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,105, FormatFloat('0.00', xTotalSaidas), 'Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,160, FormatFloat('0.00', xTotalPro01),'Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,190, FormatFloat('0.00', xTotalPro02),'Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,230, FormatFloat('0.00', (xTotalPro01+xTotalPro02)),'Verdana',8,clBlack, true);
       LimparDados;
   Except
      Result := False;
      ShowMessage('Erro ao tentar imprimir relatorio Balancete por Período');
   End;
End;


//alex funcção para iniciar nova pagina relatorio de fluxo de caixa completo
Function TFRelData.ImpRelFluxoCaixaCompletoIniciaNovaPagina: Boolean;
Begin
	Try
   	If xLinImp>=270
       Then Begin
       	xLinImp:=xLinImp+8;
	        Imprime(rvControleVendServ,XLinImp,5,'--------------------------------------------------------------------------------------------------------------------------------------------','Verdana',10,clBlack, false);
       	//Inicializamos uma nova pagina
	        rvControleVendServ.BaseReport.NewPage;
   		xLinImp:=8;
           xNumPagina:=xNumPagina+1;
       	ImpRelCabecalho;
       End;

   Except
   End;
End;
//alex funcção para imprimir relatorio de fluxo de caixa completo
Function TFRelData.ImpRelFluxoCaixaCompleto: Boolean;
Begin
	Try
   	xNumPagina:=01;
   	xLinImp:=8;
       XDtFiltro:= StrToDate(EdDataIni.Text);
   	XNovaPagina:=False;
       xOutros := False;//MAURO - Controle se existem/foram impressas contas pro labore
      // rvControleVendServ.SystemPrinter.Orientation := poLandScape;
		xTipoPapel:='PAISAGEM';
       ImpRelCabecalho;
       //zeramos as variaveis de somatorio
   	XTotEntradaCarteira:=0;
       XTotSaidaCarteira:=0;
       XTotEntradaChequeVista:=0;
       XTotEntradaChequePrazo:=0;
       XTotSaidaChequeVista:=    0;
       XTotSaidaChequePrazo:=    0;       
       XTotEntradaBoleto:=0;
       XTotSaidaBoleto:=0;
       XTotEntradaCartaoC:=0;
       XTotSaidaCartaoC:=0;
       XTotEntradaCartaoD:=0;
       XTotSaidaCartaoD:=0;
       XTotEntradaOutros:=0;
       XTotSaidaOutros:=0;
       //***************
       //E N T R A D A S
       //***************
       ImpRelCabecalhoFluxoCaixaCompleto('ENTRADA');
       //Enquanto a daa de pesquisa for menor igual a data final
       While XDtFiltro<=StrToDate(EdDataFim.Text) do
       Begin
       	//Filtros em Ctas Receber
           ImpRelFluxoCaixaCompletoCtasReceber(XDtFiltro, 'E');
           //Filtro em Caixa
           ImpRelFluxoCaixaCompletoCaixa(XDtFiltro, 'E');

           //Incrementa um dia a data do looping
           XDtFiltro := IncDay(XDtFiltro, 1);
       End;
       ImpRelFluxoCaixaCompletoIniciaNovaPagina;
       ImpRelRodapeFluxoCaixaCompleto('ENTRADA');
       //***********
       //S A I D A S
       //***********
       XDtFiltro:= StrToDate(EdDataIni.Text);
       ImpRelFluxoCaixaCompletoIniciaNovaPagina;
       ImpRelCabecalhoFluxoCaixaCompleto('SAIDA');
       //Enquanto a daa de pesquisa for menor igual a data final
       While XDtFiltro<=StrToDate(EdDataFim.Text) do
       Begin
       	//Filtros em Ctas Receber
           ImpRelFluxoCaixaCompletoCtasPagar(XDtFiltro, 'E');
           //Filtro em Caixa
           ImpRelFluxoCaixaCompletoCaixa(XDtFiltro, 'S');

           //Incrementa um dia a data do looping
           XDtFiltro := IncDay(XDtFiltro, 1);
       End;
       ImpRelFluxoCaixaCompletoIniciaNovaPagina;       
       ImpRelRodapeFluxoCaixaCompleto('SAIDA');

       //ImpRelBalanceteRodape;
   Except
   	Result := False;
      ShowMessage('Erro ao tentar imprimir relatorio de Fluxo de Caixa Completo');
   End;

End;

//Alex - Imprime relatorios de serviços prestados agrupados por grade + Produtos
Function TFRelData.ImpRelServicosGrade : Boolean;
Var TotalServicos: Real;
XLucro: Real;
Begin
	Try
       TotalServicos:=0;
   	xNumPagina:=01;
   	xLinImp:=8;
       XDtFiltro:= StrToDate(EdDataIni.Text);
   	XNovaPagina:=False;
       xOutros := False;//MAURO - Controle se existem/foram impressas contas pro labore
       ImpRelCabecalho;
       //Filtramos os itens vendidos no intervalo de data de forma agrupado pelas grades
       DMServ.TServ.Close;
       DMServ.TServ.SQL.Clear;
       DMServ.TServ.SQL.add(' select  * from servico order by servico.descricao ');
       DMServ.TServ.Open;
       DMServ.TServ.First;
       XLinImp:=XLinImp+10;
       While not DMServ.TServ.Eof do
       Begin
           DMServ.Alx.close;
           DMServ.Alx.SQL.Clear;
           DMServ.Alx.SQL.Add(' select sum(itservord.total) AS TOTAL from itservord ');
           DMServ.Alx.SQL.Add(' Left join ordem on itservord.cod_ordem = ordem.cod_ordem ');
           DMServ.Alx.SQL.Add(' Left join subservico on itservord.cod_servico = subservico.cod_subservico ');
           DMServ.Alx.SQL.Add(' left join servico on subservico.cod_servico = servico.cod_servico ');
           DMServ.Alx.SQL.Add(' where (servico.cod_servico=:Servico) and (ordem.dtfech between :Dt1 and :Dt2) and (ordem.status=''FECHADO'') ');
           DMServ.Alx.ParamByName('Servico').AsInteger:=DMServ.TServ.FieldByName('COD_SERVICO').AsInteger;
           DMServ.Alx.ParamByName('DT1').AsDateTime:= StrToDate(EdDataIni.Text);
           DMServ.Alx.ParamByName('DT2').AsDateTime:= StrToDate(EdDataFim.Text);
           DMServ.Alx.Open;
           //Imprime linha com o resumo
	   		Imprime(rvControleVendServ, XLinImp,10, DMServ.TServ.FieldByName('DESCRICAO').AsString+' - Total: R$ '+FormatFloat('0.00',DMServ.Alx.FieldByName('TOTAL').AsCurrency) ,'Verdana',12,clBlack, False);
           TotalServicos:=TotalServicos+DMServ.Alx.FieldByName('TOTAL').AsCurrency;
	        XLinImp:=XLinImp+10;
           DMServ.TServ.Next;
       End;
       //Imprime total de produtos
       DMServ.Alx.close;
       DMServ.Alx.SQL.Clear;
       DMServ.Alx.SQL.Add(' select sum(ordem.totprod) AS TOTALPROD,  sum(vwordem.total) AS total from ordem ');
       DMServ.Alx.SQL.Add(' LEFT join vwordem ON ordem.cod_ordem = vwordem.cod_ordem ');
       DMServ.Alx.SQL.Add(' where (ordem.dtfech between :Dt1 and :Dt2) and (ordem.status=''FECHADO'') ');
       DMServ.Alx.ParamByName('DT1').AsDateTime:= StrToDate(EdDataIni.Text);
       DMServ.Alx.ParamByName('DT2').AsDateTime:= StrToDate(EdDataFim.Text);  
       DMServ.Alx.Open;
       //Imprime linha com Total do serviços
       Imprime(rvControleVendServ, XLinImp,10, 'Total de Serviços: R$ '+FormatFloat('0.00',TotalServicos) ,'Verdana',12,clBlack, true);
       XLinImp:=XLinImp+10;
       //Imprime linha com Produtos
       Imprime(rvControleVendServ, XLinImp,10, 'Produtos - Total: R$ '+FormatFloat('0.00',DMServ.Alx.FieldByName('TOTALPROD').AsCurrency) ,'Verdana',12,clBlack, false);
       XLinImp:=XLinImp+10;
       //Imprime linha com Descontos
       Imprime(rvControleVendServ, XLinImp,10, 'Descontos - Total: R$ '+FormatFloat('0.00', (DMServ.Alx.FieldByName('TOTAL').AsCurrency-(DMServ.Alx.FieldByName('TOTALPROD').AsCurrency+TotalServicos))) ,'Verdana',12,clBlack, false);
       XLinImp:=XLinImp+10;
       //Imprime linha com Produtos
       Imprime(rvControleVendServ, XLinImp,10, 'GERAL - Total: R$ '+FormatFloat('0.00',DMServ.Alx.FieldByName('TOTAL').AsCurrency) ,'Verdana',12,clBlack, true);
       XLinImp:=XLinImp+15;
		//Jônatas 10/06/2013
       //armazena o líquido para exibir depois
       xLucro:=DMServ.Alx.FieldByName('TOTAL').AsCurrency-ImpRelServicosGrade_CustosGerais;
       //Imprime o total das despesas
       Imprime(rvControleVendServ, XLinImp,10, 'CONTAS PAGAS: R$ '+FormatFloat('0.00', ImpRelServicosGrade_CustosGerais) , 'Verdana',12,clBlack, true);
       XLinImp:=XLinImp+15;
       //Imprime o lucro
       Imprime(rvControleVendServ, XLinImp,10, 'SALDO: R$ '+FormatFloat('0.00', XLucro) , 'Verdana',12,clBlack, true);
       XLinImp:=XLinImp+15;
   Except
      Result := False;
      ShowMessage('Erro ao tentar imprimir relatorio de Serviços por Grade');
   End;

End;

//Jônatas 13/06/2013 - Chama as diferentes funções de impressão de Relatório Gerencial
Function TFRelData.ImpRelGerencial : Boolean;
Begin
     //Prepara a página para fazer a impressão
     xLinImp:=8;
     XNumPagina:=1;
     ImpRelCabecalho;
     XLinImp:=XLinImp+5;
     XTotalAVista:=0;
     XTotalAPrazo:=0;
     XTotalSaidaGer:=0;
     XTotalEntradaGer:=0;
     //Imprime o Relatorio Sintético
     If FMenu.TIPOREL='RELGERENCIALSINTETICO'
     then begin
        ImpRelGerencialSinteticoOS;
        ImpRelGerencialSinteticoProduto;
        If CbPedidoCompra.Checked=True Then
        	ImpRelGerencialSinteticoCompras;
        //chamar a função pra imprimir XTotalAVista e XTotalAPrazo
        ImpRelGerencialSoma;
        ImpRelGerencialSinteticoContasPagas;
     End;
     //Imprime o Relatório Analítico
     If FMenu.TIPOREL='RELGERENCIALANALITICO'
     then begin
        ImpRelGerencialSinteticoOS;
        ImpRelGerencialAnaliticoOS;
        ImpRelGerencialSinteticoProduto;
        ImpRelGerencialAnaliticoProduto;
        If CbPedidoCompra.Checked=true
        Then Begin
            ImpRelGerencialSinteticoCompras;
            ImpRelGerencialAnaliticoCompras;
     	 End;
        ImpRelGerencialSinteticoContasPagas;
     End;
     //Imprimir o XTotalEntradaGer e o XTotalSaidaGer
     ImpRelGerencialTotal;
End;

//Jônatas 19/06/2013 - Função para exibir o somatório dos totais a vista e a prazo
Function TFRelData.ImpRelGerencialSoma : Boolean;
Begin
     Try
           XLinImp:=XLinImp+5;
           Imprime(rvControleVendServ, XLinImp,100, 'R$ '+FormatFloat('###,###,##0.00', XTotalAVista) ,'Verdana',8,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,150, 'R$ '+FormatFloat('###,###,##0.00', XTotalAPrazo) ,'Verdana',8,clBlack, true);
           XLinImp:=XLinImp+5;
     Except
           showmessage('Erro ao imprimir o somatório PARCIAL do Relatório Gerencial.');
     End;
End;

//Jônatas 19/06/2013 - Função para exibir o somatório do total de entradas e saídas
Function TFRelData.ImpRelGerencialTotal : Boolean;
Begin
     Try
           If ImpRelGerencial_NovaPagina(2)=false then
           XLinImp:=XLinImp+5;
           Imprime(rvControleVendServ, XLinImp,20, 'Total Entrada: R$ '+FormatFloat('###,###,##0.00', XTotalEntradaGer) ,'Verdana',10,clBlack, true);
           Imprime(rvControleVendServ, XLinImp,120, 'Total Saida: R$ '+FormatFloat('###,###,##0.00', XTotalSaidaGer) ,'Verdana',10,clBlack, true);
           XLinImp:=XLinImp+10;
           Imprime(rvControleVendServ, XLinImp,20, 'Saldo: R$ '+FormatFloat('###,###,##0.00', XTotalEntradaGer-XTotalSaidaGer) ,'Verdana',10,clBlack, true);
     Except
           showmessage('Erro ao imprimir o somatório TOTAL do Relatório Gerencial.');
     End;
End;

//Jônatas 18/06/2013 - Relatório Gerencial Sintético de Contas Pagas
Function TFRelData.ImpRelGerencialSinteticoContasPagas : Boolean;
Var
   XCod_tmp: Integer;
Begin
     Try

        Try
            //Apagamos o tmp para iniciarmos os trabalhos
            DMMACS.TMP.Close;
            DMMACS.TMP.SQL.Clear;
            DMMACS.TMP.SQL.Add(' Delete from tmp ');
            DMMACS.TMP.ExecSQL;
            DMMACS.Transaction.CommitRetaining;
            DMMACS.TMP.Close;
            DMMACS.TMP.SQL.Clear;
            DMMACS.TMP.SQL.Add(' Select * from tmp ');
            DMMACS.TMP.open;
            XCod_tmp:=1;
        Except
           MessageDlg('Falha: 2922 - Ocorreu um problema ao gerar um arquivo temporário. Reinicie o sistema e tente novamente.', mtWarning, [mbOK], 0);
           Exit;
        End;
        //INSERE OS CODIGOS DAS CONTAS EM TABELA TEMPORARIA
        //CONTAS A PAGAR
        //Devemos pegar todas as contas usadas em contas a pagar e inserir dentro do tmp

        //Edmar - 21/10/2013 - select abaixo foi alterado adicionando uma nova condição ((plncta.relgerencial like ''1''))
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add(' Select distinct(ctapagar.cod_plncta) from parcelacp ');
        DMMACS.TALX.SQL.Add(' Left join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar ');
        DMMACS.TALX.SQL.Add(' Left join plncta on ctapagar.cod_plncta = plncta.cod_plncta ');
        DMMACS.TALX.SQL.Add(' where (ctapagar.cod_plncta is not null) and (plncta.tipo <>''T'') and (ctapagar.cod_plncta>0) and (plncta.relgerencial like ''1'')');
        DMMACS.TALX.SQL.Add(' order by ctapagar.cod_plncta, plncta.classificacao ');
        DMMACS.TALX.Open;
        DMMACS.TALX.SQL.Text;
        DMMACS.TALX.RecordCount;
        DMMACS.TALX.First;
        While not DMMACS.TALX.Eof do
        Begin
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('cod_tmp').AsInteger:= XCod_tmp;
           DMMACS.TMP.FieldByName('INT1').AsInteger:=DMMACS.TALX.FieldByName('cod_plncta').AsInteger;
           DMMACS.TMP.Post;
           DMMACS.TALX.Next;
           XCod_tmp:=XCod_tmp+1;
        End;
        //MOVBANCO
        //Edmar - 21/10/2013 - select abaixo foi alterado adicionando uma nova condição ((plncta.relgerencial like ''1''))
        DMServ.TAlx1.Close;
        DMServ.TAlx1.SQL.Clear;
        DMServ.TAlx1.SQL.Add('Select distinct(movbanco.cod_plncta) from movbanco');
        DMServ.TAlx1.SQL.Add('left join plncta on movbanco.cod_plncta = plncta.cod_plncta');
        DMServ.TAlx1.SQL.Add('where (movbanco.cod_plncta>0) and (plncta.relgerencial like ''1'')');
        DMServ.TAlx1.SQL.Add('order by movbanco.cod_plncta');
        DMServ.TAlx1.Open;
        DMServ.TAlx1.First;
        While not DMServ.TAlx1.Eof do
        Begin
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('cod_tmp').AsInteger:= XCod_tmp;
           DMMACS.TMP.FieldByName('INT1').AsInteger:=DMServ.TAlx1.FieldByName('cod_plncta').AsInteger;
           DMMACS.TMP.Post;
           DMServ.TAlx1.Next;
           XCod_tmp:=XCod_tmp+1;
        End;

        //lancaixa
        //Edmar - 21/10/2013 - select abaixo foi alterado adicionando uma nova condição ((plncta.relgerencial like ''1''))
        DMServ.TAlx1.Close;
        DMServ.TAlx1.SQL.Clear;        
        DMServ.TAlx1.SQL.Add('Select distinct(lancaixa.cod_plnctafil) from lancaixa');
        DMServ.TAlx1.SQL.Add('left join plncta on lancaixa.cod_plnctafil = plncta.cod_plncta');
        DMServ.TAlx1.SQL.Add('where (lancaixa.cod_plnctafil>0) and (plncta.relgerencial like ''1'')');
        DMServ.TAlx1.SQL.Add('order by lancaixa.cod_plnctafil');
        DMServ.TAlx1.Open;
        DMServ.TAlx1.First;
        While not DMServ.TAlx1.Eof do
        Begin
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('cod_tmp').AsInteger:= XCod_tmp;
           DMMACS.TMP.FieldByName('INT1').AsInteger:=DMServ.TAlx1.FieldByName('cod_plnctafil').AsInteger;
           DMMACS.TMP.Post;
           DMServ.TAlx1.Next;
           XCod_tmp:=XCod_tmp+1;
        End;

        //CONFIRMAMOS AS INSERÇÕES TEMPORÁRIAS E BUSCAMOS TODOS OS CÓDIGOS INSERIDOS SEM REPETIR
        Try
           DMMACS.Transaction.CommitRetaining;
        Except
           MessageDlg('Falha: 2980 - Ocorreu um problema ao gerar um arquivo temporário. Reinicie o sistema e tente novamente.', mtWarning, [mbOK], 0);
           Exit;
        End;
        DMServ.TAlx1.Close;
        DMServ.TAlx1.SQL.Clear;
        DMServ.TAlx1.SQL.Add(' Select distinct(tmp.int1) as cod_plncta from tmp ');
        DMServ.TAlx1.SQL.Add(' Left join plncta on tmp.int1 = plncta.cod_plncta ');
        DMServ.TAlx1.SQL.Add(' order by tmp.int1, plncta.classificacao ');
        DMServ.TAlx1.Open;
        DMServ.TAlx1.First;

        XLinImp:=XLinImp+5;
        //GuardaLinha:=XLinImp;
        While not DMServ.TAlx1.Eof do
        Begin
             //Jônatas 20/09/2013 - Zerar as variáveis com os totais
             XVALORSAIDA:=0;
             XVALORENTRADA:=0;
             //setar controle de cabeçalho como true
             xFlagCP:=true;
             xFlagMB:=true;
             xFlagLC:=true;
             DMServ.TAlx2.Close;
             DMServ.Talx2.SQL.Clear;
             DMServ.TAlx2.SQL.Add(' SELECT SUM(vwparcp.valorpg) as TOTALPAGO');
             DMServ.TAlx2.SQL.Add(' FROM vwparcp');
             DMServ.TAlx2.SQL.Add(' LEFT JOIN ctapagar ON vwparcp.cod_ctapagar = ctapagar.cod_ctapagar');
             DMServ.TAlx2.SQL.Add(' WHERE (vwparcp.fech =''S'') ');
             //filtrar pela data de referência
             If RdGrpGerencial.ItemIndex=0 then
                DMServ.TAlx2.SQL.Add(' AND (vwparcp.dtrefer between :Dt1 and :Dt2) AND (vwparcp.cod_plncta =:XCODIGO)');
             //filtrar pela data de lançamento
             If RdGrpGerencial.ItemIndex=1 then
                DMServ.TAlx2.SQL.Add(' AND (vwparcp.dtdebito between :Dt1 and :Dt2) AND (vwparcp.cod_plncta =:XCODIGO)');
             DMServ.TAlx2.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
             DMServ.TAlx2.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
             DMServ.TAlx2.ParamByName('XCODIGO').AsInteger:= DMServ.TAlx1.FieldByName('cod_plncta').AsInteger;
             DMServ.TAlx2.Open;

             //Buscamos as informações do plano de contas para imprimir
             DMCONTA.TPlnCta.Close;
             DMCONTA.TPlnCta.SQL.Clear;
             DMCONTA.TPlnCta.SQL.Add(' select * from plncta where plncta.cod_plncta=:codigo ');
             DMCONTA.TPlnCta.ParamByName('codigo').AsInteger:=DMServ.TAlx1.FieldByName('cod_plncta').AsInteger;
             DMCONTA.TPlnCta.Open;
             //Incrementa a soma de saída
             XVALORSAIDA:=XVALORSAIDA+DMServ.TAlx2.FieldByName('TOTALPAGO').AsCurrency;
             if XVALORSAIDA = 0 Then
                xFlagCP:=false;
             //Incrementa o total de saida
             XTotalSaidaGer:=XTotalSaidaGer+DMServ.TAlx2.FieldByName('TOTALPAGO').AsCurrency;
             //pular de página
             ImpRelGerencial_NovaPagina(2);

             //Chama o sintético do MovBanco pra calcular parte do valor total
             ImpRelGerencialSinteticoMovbanco;

             //Chama o sintético do Lancaixa pra calcular parte do valor total
             ImpRelGerencialSinteticoLancaixa;

             //Imprime a descrição do tipo de plano de conta, após somar os valores totais de CP, MB e LC
             //Jônatas 20/09/2013 - Caso um dos flags seja verdadeiro ele imprime, pois existem valores a ser impressos
             If ((xFlagCP = true) or (xFlagMB = true) or (xFlagLC = true))
             Then Begin
                 //Imprime a descricao da conta
                 If (XVALORENTRADA-XVALORSAIDA >0) Then
                    Imprime(rvControleVendServ, XLinImp,10, '(+) '+DMCONTA.TPlnCta.FieldByName('descricao').AsString+':','Verdana',8,clBlack, true)
                 Else
                    If (XVALORENTRADA-XVALORSAIDA = 0) Then
                        Imprime(rvControleVendServ, XLinImp,10, '(0) '+DMCONTA.TPlnCta.FieldByName('descricao').AsString ,'Verdana',8,clBlack, true)
                    Else
                        Imprime(rvControleVendServ, XLinImp,10, '(-) '+DMCONTA.TPlnCta.FieldByName('descricao').AsString ,'Verdana',8,clBlack, true);
                 //Imprime somente os valroes em suas colunas
                 Imprime(rvControleVendServ, XLinImp,100, 'Entradas - R$ '+FormatFloat('###,###,##0.00', XVALORENTRADA),'Verdana',8,clBlack, true);
                 Imprime(rvControleVendServ, XLinImp,150, 'Saídas - R$ '+FormatFloat('###,###,##0.00', XVALORSAIDA),'Verdana',8,clBlack, true);

                 //chama a função analítica de contas pagas para imprimir os totais de forma detalhada
                 If FMenu.TIPOREL='RELGERENCIALANALITICO'
                 Then Begin
                    //Jônatas 20/09/2013 - Chama o analítico pra mprimir nessa ordem
                    ImpRelGerencialAnaliticoContasPagas;
                    ImpRelGerencialAnaliticoMovbanco;
                    ImpRelGerencialAnaliticoLancaixa;
                 End;
                 XLinImp:=XLinImp+5;
             End;
             DMServ.TAlx1.Next;
        End;
     Except
           showmessage('Erro ao imprimir relatório gerencial sintético de Contas Pagas');
     End;
End;

//Jônatas 18/06/2013 - Relatório Gerencial Analítico de Contas Pagas
Function TFRelData.ImpRelGerencialAnaliticoContasPagas : Boolean;
Begin
     Try
        DMServ.TAlx3.Close;
        DMServ.TAlx3.SQL.Clear;
        DMServ.TAlx3.SQL.Add('SELECT vwparcp.numparc, vwparcp.nome, vwparcp.valorpg, vwparcp.dtdebito, vwparcp.dtrefer, vwparcp.formpag');
        DMServ.TAlx3.SQL.Add(' FROM vwparcp');
        DMServ.TAlx3.SQL.Add(' LEFT join ctapagar ON vwparcp.cod_ctapagar = ctapagar.cod_ctapagar');
        DMServ.TAlx3.SQL.Add(' WHERE (vwparcp.fech ='+#39+'S'+#39+') ');
        //filtra pela data de referência
        If RdGrpGerencial.ItemIndex=0 then
              DMServ.TAlx3.SQL.Add(' AND (vwparcp.dtrefer between :Dt1 and :Dt2) AND (vwparcp.cod_plncta =:XCODIGO)');
        //filtra pela da de lançamento
        If RdGrpGerencial.ItemIndex=1 then
              DMServ.TAlx3.SQL.Add(' AND (vwparcp.dtdebito between :Dt1 and :Dt2) AND (vwparcp.cod_plncta =:XCODIGO)');
        DMServ.TAlx3.SQL.Add(' ORDER BY vwparcp.numparc');
        DMServ.TAlx3.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
        DMServ.TAlx3.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
        DMServ.TAlx3.ParamByName('XCODIGO').AsInteger:= DMServ.TAlx1.FieldByName('cod_plncta').AsInteger;
        DMServ.TAlx3.Open;
        DMServ.TAlx3.First;
        XLinImp:=XLinImp+5;
        //imprimir subcabeçalho
        ImpRelGerencialCabecalho(1);
        While not DMServ.TAlx3.Eof do
        begin
             //Chamar nova pagina
             ImpRelGerencial_NovaPagina(1);
             //Imprimir Numero
             Imprime(rvControleVendServ, XLinImp,10, 'CP ' + DMServ.TAlx3.FieldByName('numparc').AsString ,'Verdana',6,clBlack, False);
             //Imprimir Nome do cliente
             Imprime(rvControleVendServ, XLinImp,30, Copy(DMServ.TAlx3.FieldByName('nome').AsString,0,65) ,'Verdana',6,clBlack, False);
             //Imprimir a Data de referência
             Imprime(rvControleVendServ, XLinImp,125, DMServ.TAlx3.FieldByName('dtrefer').AsString ,'Verdana',6,clBlack, False);
             //Imprimir Data de fechamento
             Imprime(rvControleVendServ, XLinImp,150, DMServ.TAlx3.FieldByName('dtdebito').AsString ,'Verdana',6,clBlack, False);
             //Imprimir Total daquele produto
             Imprime(rvControleVendServ, XLinImp,175, FormatFloat('0.00',DMServ.TAlx3.FieldByName('valorpg').AsCurrency) ,'Verdana',6,clBlack, False);
             //Imprimir a forma de pagamento
             //Imprime(rvControleVendServ, XLinImp,170, DMServ.TAlx3.FieldByName('formpag').AsString ,'Verdana',6,clBlack, False);
             XLinImp:=XLinImp+5;
             DMServ.TAlx3.Next;
        end;
     Except

     End;
End;

//Jônatas 18/06/2013 - Relatório Gerencial Sintético de Compras
Function TFRelData.ImpRelGerencialSinteticoCompras : Boolean;
Begin
     Try
        //query para pegar o total a vista de compra
        DMServ.TAlx2.Close;
        DMServ.TAlx2.SQL.Clear;
        DMServ.TAlx2.SQL.Add('SELECT SUM(vwpedc.valor) as TOTALVISTA');
        DMServ.TAlx2.SQL.Add(' FROM vwpedc');
        DMServ.TAlx2.SQL.Add(' LEFT JOIN pedcompra ON vwpedc.numped = pedcompra.numped');
        DMServ.TAlx2.SQL.Add(' WHERE (vwpedc.situacao ='+#39+'FECHADO'+#39+') AND (vwpedc.formpag = '+#39+'À VISTA'+#39+')');
        DMServ.TAlx2.SQL.Add(' AND (pedcompra.dtfech between :Dt1 and :Dt2)');
        DMServ.TAlx2.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
        DMServ.TAlx2.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
        DMServ.TAlx2.Open;
        //subtrai do total a vista pra ficar com o "saldo"
        XTotalAVista:=XTotalAVista-DMServ.TAlx2.FieldByName('TOTALVISTA').AsCurrency;
        //query para pegar o total a prazo de compra
        DMServ.TAlx3.Close;
        DMServ.TAlx3.SQL.Clear;
        DMServ.TAlx3.SQL.Add('SELECT SUM(vwpedc.valor) as TOTALPRAZO');
        DMServ.TAlx3.SQL.Add(' FROM vwpedc');
        DMServ.TAlx3.SQL.Add(' LEFT JOIN pedcompra ON vwpedc.numped = pedcompra.numped');
        DMServ.TAlx3.SQL.Add(' WHERE (vwpedc.situacao ='+#39+'FECHADO'+#39+') AND (vwpedc.formpag <> '+#39+'À VISTA'+#39+')');
        DMServ.TAlx3.SQL.Add(' AND (pedcompra.dtfech between :Dt1 and :Dt2)');
        DMServ.TAlx3.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
        DMServ.TAlx3.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
        DMServ.TAlx3.Open;
        //subtrai do total a prazo pra ficar com o "saldo"
        XTotalAPrazo:=XTotalAPrazo-DMServ.TAlx3.FieldByName('TOTALPRAZO').AsCurrency;
        //Incrementa o total de saida
        XTotalSaidaGer:=XTotalSaidaGer+DMServ.TAlx2.FieldByName('TOTALVISTA').AsCurrency+DMServ.TAlx3.FieldByName('TOTALPRAZO').AsCurrency;
        //Jônatas 21/06/2013 - PULAR DE PÁGINA ANTES DE IMPRIMIR PRA NÃO FICAR NO FINAL DA PÁGINA
        If ImpRelGerencial_NovaPagina(2)=false then
           XLinImp:=XLinImp+5;
        //Imprime os Totais de produtos via COMPRA
        Imprime(rvControleVendServ, XLinImp,10, '(-) Mercadorias Compradas: R$ '+FormatFloat('###,###,##0.00', DMServ.TAlx2.FieldByName('TOTALVISTA').AsCurrency+DMServ.TAlx3.FieldByName('TOTALPRAZO').AsCurrency) ,'Verdana',8,clBlack, true);
        //Imprime linha com Total a vista
        Imprime(rvControleVendServ, XLinImp,100, 'R$ '+FormatFloat('###,###,##0.00', DMServ.TAlx2.FieldByName('TOTALVISTA').AsCurrency)+' A Vista' ,'Verdana',8,clBlack, false);
        //Imprime linha com Total a prazo
        Imprime(rvControleVendServ, XLinImp,150, 'R$ '+FormatFloat('###,###,##0.00',DMServ.TAlx3.FieldByName('TOTALPRAZO').AsCurrency)+' A Prazo' ,'Verdana',8,clBlack, false);
     Except
           showmessage('Erro ao imprimir Relatório Gerencial Sintético de Compras');
     End;
End;

//Jônatas 18/06/2013 - Relatório Gerencial Analítico de Compras
Function TFRelData.ImpRelGerencialAnaliticoCompras : Boolean;
Begin
     Try
        //query para pegar os campos necessários para a impressão das Mercadorias Compradas
        DMServ.TAlx1.Close;
        DMServ.TAlx1.SQL.Clear;
        DMServ.TAlx1.SQL.Add('SELECT vwpedc.numped, vwpedc.nome, vwpedc.valor as TOTALCOMP, vwpedc.formpag, pedcompra.dtfech as DATAFECH');
        DMServ.TAlx1.SQL.Add(' FROM vwpedc');
        DMServ.TAlx1.SQL.Add(' LEFT JOIN pedcompra ON vwpedc.numped = pedcompra.numped');
        DMServ.TAlx1.SQL.Add(' WHERE (vwpedc.situacao ='+#39+'FECHADO'+#39+')');
        DMServ.TAlx1.SQL.Add(' AND (pedcompra.dtfech between :Dt1 and :Dt2)');
        DMServ.TAlx1.SQL.Add(' ORDER BY vwpedc.numped');
        DMServ.TAlx1.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
        DMServ.TAlx1.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
        DMServ.TAlx1.Open;
        DMServ.TAlx1.First;
        xLinImp:=xLinImp+5;
        //imprime o subcabeçalho
        ImpRelGerencialCabecalho(0);
        While not DMServ.TAlx1.Eof do
        Begin
             ImpRelGerencial_NovaPagina(0);
             //Imprimir Numero
             Imprime(rvControleVendServ, XLinImp,13, DMServ.TAlx1.FieldByName('numped').AsString ,'Verdana',6,clBlack, False);
             //Imprimir Nome do cliente
             Imprime(rvControleVendServ, XLinImp,25, Copy(DMServ.TAlx1.FieldByName('nome').AsString,0,65) ,'Verdana',6,clBlack, False);
             //Imprimir Data de fechamento
             Imprime(rvControleVendServ, XLinImp,125, DMServ.TAlx1.FieldByName('DATAFECH').AsString ,'Verdana',6,clBlack, False);
             //Imprimir Total daquele produto
             Imprime(rvControleVendServ, XLinImp,150, FormatFloat('0.00',DMServ.TAlx1.FieldByName('TOTALCOMP').AsCurrency) ,'Verdana',6,clBlack, False);
             //Imprimir a forma de pagamento
             Imprime(rvControleVendServ, XLinImp,170, DMServ.TAlx1.FieldByName('formpag').AsString ,'Verdana',6,clBlack, False);
             XLinImp:=XLinImp+5;
             DMserv.TAlx1.Next;
        End;
     Except
         showmessage('Erro ao imprimir Relatório Gerencial Analítico de Compras');
     End;
End;

//Jônatas 17/06/2013 - Relatório Gerencial Analítico de Produtos
Function TFRelData.ImpRelGerencialAnaliticoProduto : Boolean;
Begin
     Try
          //query para retornar os campos necessários para a impressão
          DMServ.TAlx1.Close;
          DMServ.TAlx1.SQL.Clear;
          DMServ.TAlx1.SQL.Add(' SELECT vwordem.numero, vwordem.dtfech, vwordem.cliente, ordem.totprod as TOTALPROD, vwordem.formapag');
          DMServ.TAlx1.SQL.Add(' FROM vwordem ');
          DMServ.TAlx1.SQL.Add(' LEFT JOIN ordem ON vwordem.cod_ordem = ordem.cod_ordem');
          DMServ.TAlx1.SQL.Add(' WHERE (vwordem.status ='+#39+'FECHADO'+#39+')');
          DMServ.TAlx1.SQL.Add(' AND (vwordem.dtfech between :Dt1 and :Dt2)');
          DMServ.TAlx1.SQL.Add(' ORDER BY vwordem.numero');
          DMServ.TAlx1.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
          DMServ.TAlx1.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
          DMServ.TAlx1.Open;
          DMServ.TAlx1.First;
          XLinImp:=XLinImp+5;
          //imprime o subcabeçalho
          ImpRelGerencialCabecalho(0);
          While not DMServ.TAlx1.Eof do
          Begin
               ImpRelGerencial_NovaPagina(0);
               //Imprimir Numero
               Imprime(rvControleVendServ, XLinImp,13, 'OS '+DMServ.TAlx1.FieldByName('numero').AsString ,'Verdana',6,clBlack, False);
               //Imprimir Nome do cliente
               Imprime(rvControleVendServ, XLinImp,25, Copy(DMServ.TAlx1.FieldByName('cliente').AsString,0,65) ,'Verdana',6,clBlack, False);
               //Imprimir Data de fechamento
               Imprime(rvControleVendServ, XLinImp,125, DMServ.TAlx1.FieldByName('dtfech').AsString ,'Verdana',6,clBlack, False);
               //Imprimir Total daquele produto
               Imprime(rvControleVendServ, XLinImp,150, FormatFloat('0.00',DMServ.TAlx1.FieldByName('TOTALPROD').AsCurrency) ,'Verdana',6,clBlack, False);
               //Imprimir a forma de pagamento
               Imprime(rvControleVendServ, XLinImp,170, DMServ.TAlx1.FieldByName('formapag').AsString ,'Verdana',6,clBlack, False);
               XLinImp:=XLinImp+5;
               DMServ.TAlx1.Next;
          End;
          //query para retornar os campos necessários para a impressão
          DMServ.TAlx2.Close;
          DMServ.TAlx2.SQL.Clear;
          DMServ.TAlx2.SQL.Add(' SELECT vwpedv.numped, vwpedv.nomecli, vwpedv.valor as TOTALVEND, vwpedv.formpag, pedvenda.dtfech as DATAFECH');
          DMServ.TAlx2.SQL.Add(' FROM vwpedv');
          DMServ.TAlx2.SQL.Add(' LEFT JOIN pedvenda ON vwpedv.numped = pedvenda.numped');
          DMServ.TAlx2.SQL.Add(' WHERE (vwpedv.situacao ='+#39+'FECHADO'+#39+') AND (vwpedv.tipo = '+#39+'VND'+#39+')');
          DMServ.TAlx2.SQL.Add(' AND (pedvenda.dtfech between :Dt1 and :Dt2)');
          DMServ.TAlx2.SQL.Add(' ORDER BY vwpedv.numped');
          DMServ.TAlx2.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
          DMServ.TAlx2.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
          DMServ.TAlx2.Open;
          DMServ.TAlx2.First;
          While not DMServ.TAlx2.Eof do
          Begin
               ImpRelGerencial_NovaPagina(0);
               //Imprimir Numero
               Imprime(rvControleVendServ, XLinImp,13, 'PV '+DMServ.TAlx2.FieldByName('numped').AsString ,'Verdana',6,clBlack, False);
               //Imprimir Nome do cliente
               Imprime(rvControleVendServ, XLinImp,25, Copy(DMServ.TAlx2.FieldByName('nomecli').AsString,0,55) ,'Verdana',6,clBlack, False);
               //Imprimir Data de fechamento
               Imprime(rvControleVendServ, XLinImp,125, DMServ.TAlx2.FieldByName('DATAFECH').AsString ,'Verdana',6,clBlack, False);
               //Imprimir Total daquele produto
               Imprime(rvControleVendServ, XLinImp,150, FormatFloat('0.00',DMServ.TAlx2.FieldByName('TOTALVEND').AsCurrency) ,'Verdana',6,clBlack, False);
               //Imprimir a forma de pagamento
               Imprime(rvControleVendServ, XLinImp,170, DMServ.TAlx2.FieldByName('formpag').AsString ,'Verdana',6,clBlack, False);
               XLinImp:=XLinImp+5;
               DMServ.TAlx2.Next;
          End;
     Except
          showmessage('Erro ao imprimir Relatório Gerencial Analítico de Produtos.');
     End;
End;

//Jônatas 17/06/2013 - Relatório Gerencial Sintétic de Produtos
Function TFRelData.ImpRelGerencialSinteticoProduto : Boolean;

Var TotalVista, TotalPrazo : Real;

Begin
     Try
           If CbOS.Checked=True
           Then Begin
              //query para pegar total a vista de produtos via ORDEM
              DMServ.TAlx3.Close;
              DMServ.TAlx3.SQL.Clear;
              DMServ.TAlx3.SQL.Add('SELECT sum(ordem.totprod) as TOTALVISTA');
              DMServ.TAlx3.SQL.Add(' FROM ordem');
              DMServ.TAlx3.SQL.Add(' LEFT JOIN vwordem on ordem.cod_ordem = vwordem.cod_ordem');
              DMServ.TAlx3.SQL.Add(' WHERE (ordem.status ='+#39+'FECHADO'+#39+') and (vwordem.formapag = '+#39+'À VISTA'+#39+')');
              DMServ.TAlx3.SQL.Add(' AND (ordem.dtfech between :Dt1 and :Dt2)');
              DMServ.TAlx3.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
              DMServ.TAlx3.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
              DMServ.TAlx3.Open;
              //incrementa total a vista geral
              XTotalAVista:=XTotalAVista+DMServ.Talx3.FieldByName('TOTALVISTA').AsCurrency;
              //incrementa variável local a vista para utilizar na impressão
              TotalVista:=DMServ.Talx3.FieldByName('TOTALVISTA').AsCurrency;
              //Incrementa o total de entrada
              XTotalEntradaGer:=XTotalEntradaGer+DmServ.TAlx3.FieldByName('TOTALVISTA').AsCurrency;
              //query para pegar total a prazo de produtos via ORDEM
              DMServ.TAlx2.Close;
              DMServ.TAlx2.SQL.Clear;
              DMServ.TAlx2.SQL.Add('SELECT sum(ordem.totprod) as TOTALPRAZO');
              DMServ.TAlx2.SQL.Add(' FROM ordem');
              DMServ.TAlx2.SQL.Add(' LEFT JOIN vwordem on ordem.cod_ordem = vwordem.cod_ordem');
              DMServ.TAlx2.SQL.Add(' WHERE (ordem.status ='+#39+'FECHADO'+#39+') and (vwordem.formapag <> '+#39+'À VISTA'+#39+')');
              DMServ.TAlx2.SQL.Add(' AND (ordem.dtfech between :Dt1 and :Dt2)');
              DMServ.TAlx2.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
              DMServ.TAlx2.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
              DMServ.TAlx2.Open;
              //incrementa total a prazo geral
              XTotalAPrazo:=XTotalAPrazo+DMServ.Talx2.FieldByName('TOTALPRAZO').AsCurrency;
              //incrementa variável local a prazo para utilizar na impressão
              TotalPrazo:=DMServ.Talx2.FieldByName('TOTALPRAZO').AsCurrency;
              //Incrementa o total de entrada
              XTotalEntradaGer:=XTotalEntradaGer+DmServ.TAlx2.FieldByName('TOTALPRAZO').AsCurrency;
          End;
          If CbPedidoVenda.Checked=True
          Then Begin
              //query para pegar total a vista de produtos via VENDA
              DMServ.TAlx3.Close;
              DMServ.TAlx3.SQL.Clear;
              DMServ.TAlx3.SQL.Add('SELECT sum(vwpedv.valor) as TOTALVISTA2');
              DMServ.TAlx3.SQL.Add(' FROM vwpedv');
              DMServ.TAlx3.SQL.Add(' LEFT JOIN pedvenda ON vwpedv.numped = pedvenda.numped');
              DMServ.TAlx3.SQL.Add(' WHERE (vwpedv.situacao ='+#39+'FECHADO'+#39+') AND (vwpedv.formpag = '+#39+'À VISTA'+#39+')');
              DMServ.TAlx3.SQL.Add(' AND (vwpedv.tipo = '+#39+'VND'+#39+') AND (pedvenda.dtfech between :Dt1 and :Dt2)');
              DMServ.TAlx3.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
              DMServ.TAlx3.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
              DMServ.TAlx3.Open;
              //incrementa total a vista geral
              XTotalAVista:=XTotalAVista+DMServ.Talx3.FieldByName('TOTALVISTA2').AsCurrency;
              //incrementa variável local a vista para utilizar na impressão
              TotalVista:=TotalVista+DmServ.TAlx3.FieldByName('TOTALVISTA2').AsCurrency;
              //Incrementa o total de entrada
              XTotalEntradaGer:=XTotalEntradaGer+DmServ.TAlx3.FieldByName('TOTALVISTA2').AsCurrency;
              //query para pegar total a prazo de produtos via VENDA
              DMServ.TAlx2.Close;
              DMServ.TAlx2.SQL.Clear;
              DMServ.TAlx2.SQL.Add('SELECT sum(vwpedv.valor) as TOTALPRAZO2');
              DMServ.TAlx2.SQL.Add(' FROM vwpedv');
              DMServ.TAlx2.SQL.Add(' LEFT JOIN pedvenda ON vwpedv.numped = pedvenda.numped');
              DMServ.TAlx2.SQL.Add(' WHERE (vwpedv.situacao ='+#39+'FECHADO'+#39+') AND (vwpedv.formpag <> '+#39+'À VISTA'+#39+')');
              DMServ.TAlx2.SQL.Add(' AND (vwpedv.tipo = '+#39+'VND'+#39+') AND (pedvenda.dtfech between :Dt1 and :Dt2)');
              DMServ.TAlx2.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
              DMServ.TAlx2.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
              DMServ.TAlx2.Open;
              //incrementa total a prazo geral
              XTotalAPrazo:=XTotalAPrazo+DMServ.Talx2.FieldByName('TOTALPRAZO2').AsCurrency;
              //incrementa variável local a prazo para utilizar na impressão
              TotalPrazo:=TotalPrazo+DmServ.TAlx2.FieldByName('TOTALPRAZO2').AsCurrency;
              //Incrementa o total de entrada
              XTotalEntradaGer:=XTotalEntradaGer+DmServ.TAlx2.FieldByName('TOTALPRAZO2').AsCurrency;
          End;

          //Jônatas 21/06/2013 - PULAR DE PÁGINA ANTES DE IMPRIMIR PRA NÃO FICAR NO FINAL DA PÁGINA
          If ImpRelGerencial_NovaPagina(2)=false then
             XLinImp:=XLinImp+5;
          //Imprime os Totais de produtos via VENDA
          Imprime(rvControleVendServ, XLinImp,10, '(+) Produtos Vendidos: R$ '+FormatFloat('###,###,##0.00', TotalVista+TotalPrazo) ,'Verdana',8,clBlack, true);
          //Imprime linha com Total a vista
          Imprime(rvControleVendServ, XLinImp,100, 'R$ '+FormatFloat('###,###,##0.00', TotalVista)+' A Vista' ,'Verdana',8,clBlack, false);
          //Imprime linha com Total a prazo
          Imprime(rvControleVendServ, XLinImp,150, 'R$ '+FormatFloat('###,###,##0.00',TotalPrazo)+' A Prazo' ,'Verdana',8,clBlack, false);
     Except

     End;
End;

//Jônatas 13/06/2013 - Relatório Gerencial Analítico de Serviços
Function TFRelData.ImpRelGerencialAnaliticoOS : Boolean;

Begin
     Try
           //XNovaPagina:=true;
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add(' SELECT vwordem.numero, vwordem.dtfech, vwordem.cliente, ordem.totserv as TOTALSERV, vwordem.formapag');
           DMServ.TAlx1.SQL.Add(' FROM vwordem ');
           DMServ.TAlx1.SQL.Add(' LEFT JOIN ordem ON vwordem.cod_ordem = ordem.cod_ordem');
           DMServ.TAlx1.SQL.Add(' WHERE (vwordem.status ='+#39+'FECHADO'+#39+')');
           DMServ.TAlx1.SQL.Add(' AND (vwordem.dtfech between :Dt1 and :Dt2)');
           DMServ.TAlx1.SQL.Add(' ORDER BY vwordem.numero');
           DMServ.TAlx1.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
           DMServ.TAlx1.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
           DMServ.TAlx1.Open;
           DMServ.TAlx1.First;
           XLinImp:=XLinImp+5;
           //Impressão de um sub cabeçalho com os nomes dos campos
           ImpRelGerencialCabecalho(0);
           //Imprime os serviços
           While not DMServ.TAlx1.Eof do
           Begin
                ImpRelGerencial_NovaPagina(0);
                //Imprimir Numero
                Imprime(rvControleVendServ, XLinImp,13, DMServ.TAlx1.FieldByName('numero').AsString ,'Verdana',6,clBlack, False);
                //Imprimir Nome do cliente
                Imprime(rvControleVendServ, XLinImp,25, Copy(DMServ.TAlx1.FieldByName('cliente').AsString,0,65) ,'Verdana',6,clBlack, False);
                //Imprimir Data de fechamento
                Imprime(rvControleVendServ, XLinImp,125, DMServ.TAlx1.FieldByName('dtfech').AsString ,'Verdana',6,clBlack, False);
                //Imprimir Total daquele serviço
                Imprime(rvControleVendServ, XLinImp,150, FormatFloat('0.00',DMServ.TAlx1.FieldByName('TOTALSERV').AsCurrency) ,'Verdana',6,clBlack, False);
                //Imprimir a forma de pagamento
                Imprime(rvControleVendServ, XLinImp,170, DMServ.TAlx1.FieldByName('formapag').AsString ,'Verdana',6,clBlack, False);
                XLinImp:=XLinImp+5;
                DMServ.TAlx1.Next;
           End;
           Result:=true;
     Except
           Result:=false;
           showmessage('Erro ao tentar Imprimir Relatório Gerencial Analítico');
     End;
End;

//Jônatas 14/06/2013 - Subcabeçalho para o relatório gerencial analítico de serviços
Function TFRelData.ImpRelGerencialCabecalho(Tipo: Integer): Boolean;
Begin
     Try
           If Tipo = 1
           then begin
                If ((xFlagCP = true) or (xFlagLC = true) or (xFlagMB = true))
                Then Begin
                    Imprime(rvControleVendServ, XLinImp,10, 'Nº' ,'Verdana',6,clBlack, True);
                    Imprime(rvControleVendServ, XLinImp,30, 'Nome' ,'Verdana',6,clBlack, True);
                    Imprime(rvControleVendServ, XLinImp,125, 'Dt. Referencia' ,'Verdana',6,clBlack, True);
                    Imprime(rvControleVendServ, XLinImp,150, 'Dt. Fechamento' ,'Verdana',6,clBlack, True);
                    Imprime(rvControleVendServ, XLinImp,175, 'Total' ,'Verdana',6,clBlack, True);
                    //Imprime(rvControleVendServ, XLinImp,170, 'Pagamento' ,'Verdana',6,clBlack, True);
                    XLinImp:=XLinImp+5;
                End;
           end;
           If Tipo = 0
           then begin
                Imprime(rvControleVendServ, XLinImp,13, 'Nº' ,'Verdana',6,clBlack, True);
                Imprime(rvControleVendServ, XLinImp,25, 'Nome/Histórico' ,'Verdana',6,clBlack, True);
                Imprime(rvControleVendServ, XLinImp,125, 'Dt. Fechamento' ,'Verdana',6,clBlack, True);
                Imprime(rvControleVendServ, XLinImp,150, 'Total' ,'Verdana',6,clBlack, True);
                Imprime(rvControleVendServ, XLinImp,170, 'Pagamento' ,'Verdana',6,clBlack, True);
                XLinImp:=XLinImp+5;
           end;
     Except
           showmessage('Erro ao imprimir subcabeçalho.');
     End;
End;

//Jônatas 13/06/2013 - Relatório Gerencial Sintético de Serviços
Function TFRelData.ImpRelGerencialSinteticoOS : Boolean;

Begin
     Try
        //query para pegar o total a vista
        DMServ.TAlx2.Close;
        DMServ.TAlx2.SQL.Clear;
        DMServ.TAlx2.SQL.Add('SELECT sum(ordem.totserv) as TOTALVISTA');
        DMServ.TAlx2.SQL.Add(' FROM vwordem');
        DMServ.TAlx2.SQL.Add(' LEFT JOIN ordem ON vwordem.cod_ordem = ordem.cod_ordem');
        DMServ.TAlx2.SQL.Add(' WHERE (vwordem.status ='+#39+'FECHADO'+#39+') and (vwordem.formapag ='+#39+'À VISTA'+#39+')');
        DMServ.TAlx2.SQL.Add(' AND (vwordem.dtfech between :Dt1 and :Dt2)');
        DMServ.TAlx2.ParamByName('Dt1').AsDate:=StrToDate(EdDataIni.Text);
        DMServ.TAlx2.ParamByName('Dt2').AsDate:=StrToDate(EdDataFim.Text);
        DMServ.TAlx2.Open;
        //armazena total a vista
        XTotalAVista:=XTotalAVista+DMServ.TAlx2.FieldByname('TOTALVISTA').AsCurrency;
        //query para pegar o total a prazo
        DMServ.TAlx3.Close;
        DMServ.TAlx3.SQL.Clear;
        DMServ.TAlx3.SQL.Add('SELECT sum(ordem.totserv) as TOTALPRAZO');
        DMServ.TAlx3.SQL.Add(' FROM vwordem');
        DMServ.TAlx3.SQL.Add(' LEFT JOIN ordem ON vwordem.cod_ordem = ordem.cod_ordem');
        DMServ.TAlx3.SQL.Add(' WHERE (vwordem.status ='+#39+'FECHADO'+#39+') and (vwordem.formapag <>'+#39+'À VISTA'+#39+')');
        DMServ.TAlx3.SQL.Add(' AND (vwordem.dtfech between :Dt1 and :Dt2)');
        DMServ.TAlx3.ParamByName('Dt1').AsDate:=StrToDate(EdDataIni.Text);
        DMServ.TAlx3.ParamByName('Dt2').AsDate:=StrToDate(EdDataFim.Text);
        DMServ.TAlx3.Open;
        //XLinImp:=XLinImp+5;
        //armazena total a prazo
        XTotalAPRazo:=XTotalAPRazo+DMServ.TAlx3.FieldByName('TOTALPRAZO').AsCurrency;
        //Incrementa o total de entrada
        XTotalEntradaGer:=XTotalEntradaGer+DMServ.TAlx2.FieldByname('TOTALVISTA').AsCurrency+DMServ.TAlx3.FieldByName('TOTALPRAZO').AsCurrency;
        //Testa se não está muito no fim da página para não imprimir fora
        //Imprime o Total geral que e a soma dos serviços
        Imprime(rvControleVendServ, XLinImp,10, '(+) Serviços Prestados: R$ '+FormatFloat('###,###,##0.00',DMServ.TAlx2.FieldByName('TOTALVISTA').AsCurrency+DMServ.TAlx3.FieldByName('TOTALPRAZO').AsCurrency) ,'Verdana',8,clBlack, true);
        //Imprime linha com Total a vista
        Imprime(rvControleVendServ, XLinImp,100, 'R$ '+FormatFloat('###,###,##0.00',DMServ.TAlx2.FieldByName('TOTALVISTA').AsCurrency)+' A Vista' ,'Verdana',8,clBlack, false);
        //Imprime linha com Total a prazo
        Imprime(rvControleVendServ, XLinImp,150, 'R$ '+FormatFloat('###,###,##0.00',DMServ.TAlx3.FieldByName('TOTALPRAZO').AsCurrency)+' A Prazo' ,'Verdana',8,clBlack, false);
        Result:=true;
        ImpRelGerencialRodape;
     Except
            Result:=false;
            showmessage('Erro ao imprimir  Relatório Gerencial Sintético.');
     End;
End;

//Jônatas 14/06/2013 - Função para nova página do Reatório Gerencial Sintético de serviços
Function TFRelData.ImpRelGerencial_NovaPagina(Tipo: Integer) : Boolean;
Begin
     Try
        If XLinImp>=280
        then begin
             xNumPagina:=XNumPagina+1;
             rvControleVendServ.BaseReport.NewPage;
             //Jônatas 1706/2013 - Incluído para mostrar o rodapé caso haja renovação de página
             ImpRelGerencialRodape;
             ImpRelCabecalho;
             XLinImp:=XLinImp+5;
             {caso o sintetico tenha itens demais e necessite trocar de página
             não deve chamar o sub cabeçalho}
             If FMenu.TIPOREL='RELGERENCIALANALITICO'
             then begin
                  If Tipo = 1 then
                     ImpRelGerencialCabecalho(1);
                  If Tipo = 0 then
                     ImpRelGerencialCabecalho(0);
             End;
             Result:=true;
        End
        //Jônatas 21/06/2013 - evitar imprimir subcabeçalho no final da pagina
        Else If ((XLinImp>=270) and (FMenu.TIPOREL='RELGERENCIALANALITICO'))
        then begin
             If Tipo = 2
             then begin
                 xNumPagina:=XNumPagina+1;
                 rvControleVendServ.BaseReport.NewPage;
                 ImpRelGerencialRodape;
                 ImpRelCabecalho;
                 XLinImp:=XLinImp+5;
                 Result:=true;
             end;
        end
        Else
             Result:=false;
     Except
           Result:=false;
           showmessage('Erro ao tentar imprimir nova página d relatório gerencial.');
     End;
End;

//Jônatas 17/06/2013 - Função para gerar o rodapé do relatório Gerencial
Function TFRelData.ImpRelGerencialRodape : Boolean;
Begin
     Try
          //imprime linha divisora
          Imprime(rvControleVendServ, 285,5, '_______________________________________________________________________________________________________________________________' ,'Verdana',8,clBlack, false);
          //Captura a mensagem para o rodapé
          FMenu.MAux.Text:=DMMACS.TLoja.FieldByName('TMP3').AsString;
          //Imprime a mensagem capturada
          Imprime(rvControleVendServ, 290,65, Copy(FMenu.MAux.Text,0,48)  ,'Verdana',8,clBlack, false);
          Imprime(rvControleVendServ, 293,85, Copy(FMenu.MAux.Text,49,67)  ,'Verdana',8,clBlack, false);
     Except
          showmessage('Erro ao tentar imprimir rodapé');
     End;
End;

//MAURO - Função para imprimir cabeçalho de Relatórios RAVE
Function TFRelData.ImpRelCabecalho : Boolean;
Begin
	Try
		XLinImp:=3;
   	XLinImp:=XLinImp+5;
   	Imprime(rvControleVendServ, XLinImp,5, DMMACS.TEmpresa.fieldByName('FANTASIA').AsString + ' / ' + 'Fone :'+DMMACS.TEmpresa.fieldByName('FONE').AsString ,'Verdana',11,clBlack, true);
		if xTipoPapel = 'PAISAGEM'  // DE PÉ
   	Then Begin
   		Imprime(rvControleVendServ, XLinImp,262, 'Emissão:'+DateToStr(Date),'Verdana',7,clBlack, false);
       	XLinImp:=XLinImp+4;
   		Imprime(rvControleVendServ, XLinImp,5, 'Loja: '+DMMACS.TLoja.fieldByName('DESCRICAO').AsString,'Verdana',10,clBlack, false);
   		Imprime(rvControleVendServ, XLinImp,271, 'Hora:'+ TimeToStr(Time),'Verdana',7,clBlack, false);
   		XLinImp:=XLinImp+4;
   		Imprime(rvControleVendServ, XLinImp,282, 'Pag.: '+IntToStr(xNumPagina),'Verdana',7,clBlack, false);
       	//Titulo
   		XLinImp:=XLinImp+5;
   		Imprime(rvControleVendServ, XLinImp,50, xTituloRelatorio,'Verdana',12,clBlack, true);
   	End
   	Else Begin   // Em DEITADO
   		Imprime(rvControleVendServ, XLinImp,262, 'Emissão:'+DateToStr(Date),'Verdana',7,clBlack, false);
       	XLinImp:=XLinImp+4;
   		Imprime(rvControleVendServ, XLinImp,5, 'Loja: '+DMMACS.TLoja.fieldByName('DESCRICAO').AsString,'Verdana',10,clBlack, false);
   		Imprime(rvControleVendServ, XLinImp,271, 'Hora:'+ TimeToStr(Time),'Verdana',7,clBlack, false);
   		XLinImp:=XLinImp+4;
   		Imprime(rvControleVendServ, XLinImp,282, 'Pag.: '+IntToStr(xNumPagina),'Verdana',7,clBlack, false);
       	//Titulo
   		XLinImp:=XLinImp+5;
   		Imprime(rvControleVendServ, XLinImp-30,110, xTituloRelatorio,'Verdana',12,clBlack, true);
   	End;

   	//Filtro
		XLinImp:=XLinImp+5;
     	If FMenu.TIPOREL='RELBALANCETEPERIODO'
     	Then Begin
           Imprime(rvControleVendServ, XLinImp,5, 'Caixa: '+DMCAIXA.TCaixa.FieldByName('descricao').AsString ,'Verdana',7,clBlack, false);
   		XLinImp:=XLinImp+4;
           Imprime(rvControleVendServ, XLinImp,5,'Período: Inicial ['+DMCAIXA.TAlx.FieldByName('dtabertura').AsString+' : '+DMCAIXA.TAlx.FieldByName('dtfecha').AsString+'] - Final ['+DMFINANC.TAlx.FieldByName('dtabertura').AsString+' : '+DMCAIXA.TAlx.FieldByName('dtfecha').AsString+']' ,'Verdana',7,clBlack, false);
       End
       Else Begin
           If RdGrpGerencial.ItemIndex=0 Then
               Imprime(rvControleVendServ, XLinImp,5, 'Intervalo Dt. Referência: '+ EdDataIni.Text+' - '+EdDataFim.Text ,'Verdana',7,clBlack, false)
           Else
               Imprime(rvControleVendServ, XLinImp,5, 'Intervalo Dt. Débito: '+ EdDataIni.Text+' - '+EdDataFim.Text ,'Verdana',7,clBlack, false);
       End;
  		XLinImp:=XLinImp+2;
   	Imprime(rvControleVendServ,XLinImp,5,'_________________________________________________________________________________________________________________________','Verdana',10,clBlack, true);
	Except
       Result := False;
       ShowMessage('Erro ao tentar imprimir cabecalho do relatorio');
   End;
End;
//MAURO - Função para Imprimir o Cabecalho do Relatorio
Function TFRelData.ImpRelBalanceteCabecalho : Boolean;
Begin
	Try
   	XLinImp:=XLinImp+8;
       Imprime(rvControleVendServ, XLinImp,5, 'DATA','Verdana',10,clBlack, true);
   	Imprime(rvControleVendServ, XLinImp,40, 'SALDO ANT..','Verdana',10,clBlack, true);
   	Imprime(rvControleVendServ, XLinImp,80, 'ENTRADA','Verdana',10,clBlack, true);
   	Imprime(rvControleVendServ, XLinImp,105, 'SAÍDA','Verdana',10,clBlack, true);
     	Imprime(rvControleVendServ, XLinImp,130, 'T. BANCO','Verdana',10,clBlack, true);
   	//Selecionando todas as contas Pro Labore
   	SelContaProLabore;
       XColImp:=160;
       xCodPro01:=-1;
       xCodPro02:=-1;
   	//Imprimindo as Contas ProLabore
  	    While (not DMCONTA.TAlx.Eof)  do
   	Begin
   		Imprime(rvControleVendServ, XLinImp ,XColImp, Copy(DMCONTA.TAlx.fieldByName('descricao').AsString, 0, 13),'Verdana', 8,clBlack, true);
           If (xCodPro01=-1)
           Then Begin
               xCodPro01:=DMCONTA.TAlx.fieldByName('cod_plncta').AsInteger;
           end
           Else Begin
               If (xCodPro02=-1) Then
                   xCodPro02:=DMCONTA.TAlx.fieldByName('cod_plncta').AsInteger;
           End;

   		DMCONTA.TAlx.Next;
       	XColImp := XColImp + 30;
           xOutros := True;
       End;
     	Imprime(rvControleVendServ, XLinImp,230, 'T. RETIRADAS','Verdana',10,clBlack, true);
   	Imprime(rvControleVendServ, XLinImp,270, 'SALDO','Verdana',10,clBlack, true);
   	XLinImp:=XLinImp+5;
   	Imprime(rvControleVendServ,XLinImp,5,'_________________________________________________________________________________________________________________________','Verdana',10,clBlack, true);
	Except
       Result := False;
       ShowMessage('Erro ao Imprimir o cabecalho do relatorio');
   End;
End;

//Alex - Função para imprimir cabeçalho do fluxo de caixa
Procedure  TFRelData.ImpRelCabecalhoFluxoCaixaCompleto(TipoCab : String);
Begin
	Try
   	XLinImp:=XLinImp+5;
       If TipoCab='ENTRADA' Then
       	Imprime(rvControleVendServ, XLinImp,5, '+ RECEBIMENTOS','Verdana',8,clBlack, true)
		Else
       	Imprime(rvControleVendServ, XLinImp,5, '- PAGAMENTOS','Verdana',8,clBlack, true);
   	XLinImp:=XLinImp+5;
       Imprime(rvControleVendServ, XLinImp,10, 'Data','Verdana',8,clBlack, true);
   	Imprime(rvControleVendServ, XLinImp,30, 'Histórico','Verdana',8,clBlack, true);
   	Imprime(rvControleVendServ, XLinImp, 145, 'Cobrança','Verdana',8,clBlack, true);
   	Imprime(rvControleVendServ, XLinImp, 180, 'Valor','Verdana',8,clBlack, true);
		XLinImp:=XLinImp+1;
   	Imprime(rvControleVendServ,XLinImp,10,'.....................................................................................................................................................................................................................','Verdana',10,clBlack, false);
//   	Imprime(rvControleVendServ,XLinImp,10,'_________________________________________________________________________________________________________________________','Verdana',10,clBlack, true);
	Except
       ShowMessage('Erro ao Imprimir o cabecalho do relatorio');
   End;
End;

//Alex - Função para imprimir Rodapé do Fluxo de caixa
Procedure  TFRelData.ImpRelRodapeFluxoCaixaCompleto(TipoCab : String);
Begin
	Try
   	XLinImp:=XLinImp+5;
       If TipoCab='ENTRADA'
       Then Begin
       	Imprime(rvControleVendServ, XLinImp,10, 'Resultado das Entradas: R$ '+FormatFloat('0.00', XTotEntradaCarteira+XTotEntradaChequeVista+XTotEntradaChequePrazo+XTotEntradaBoleto+XTotEntradaCartaoC+XTotEntradaCartaoD+XTotEntradaOutros),'Verdana',10,clBlack, true);
           XLinImp:=XLinImp+4;
           Imprime(rvControleVendServ, XLinImp, 10, 'Carteria: '+FormatFloat('0.00', XTotEntradaCarteira),'Verdana',8,clBlack, FALSE);
           Imprime(rvControleVendServ, XLinImp, 60, 'Cheq. Vista: '+FormatFloat('0.00', XTotEntradaChequeVista),'Verdana',8,clBlack, FALSE);
           Imprime(rvControleVendServ, XLinImp, 120, 'Cheq. Prazo: '+FormatFloat('0.00', XTotEntradaChequePrazo),'Verdana',8,clBlack, FALSE);
           Imprime(rvControleVendServ, XLinImp, 170, 'Boletos: '+FormatFloat('0.00', XTotEntradaBoleto),'Verdana',8,clBlack, FALSE);
           XLinImp:=XLinImp+4;
           Imprime(rvControleVendServ, XLinImp, 10, 'Cartão Cred.: '+FormatFloat('0.00', XTotEntradaCartaoC),'Verdana',8,clBlack, FALSE);
           Imprime(rvControleVendServ, XLinImp, 60, 'Cartão Déb.: '+FormatFloat('0.00', XTotEntradaCartaoD),'Verdana',8,clBlack, FALSE);
           Imprime(rvControleVendServ, XLinImp, 120, 'Outros: '+FormatFloat('0.00', XTotEntradaOutros),'Verdana',8,clBlack, FALSE);
       End
		Else Begin
       	Imprime(rvControleVendServ, XLinImp,10, 'Resultado das Saídas: R$ '+FormatFloat('0.00', XTotSaidaCarteira+XTotSaidaChequeVista+XTotSaidaChequePrazo+XTotSaidaBoleto+XTotSaidaCartaoC+XTotSaidaCartaoD+XTotSaidaOutros),'Verdana',8,clBlack, true);
           XLinImp:=XLinImp+4;
           Imprime(rvControleVendServ, XLinImp, 10, 'Carteria: '+FormatFloat('0.00', XTotSaidaCarteira),'Verdana',8,clBlack, FALSE);
           Imprime(rvControleVendServ, XLinImp, 60, 'Cheq. Vista: '+FormatFloat('0.00', XTotSaidaChequeVista),'Verdana',8,clBlack, FALSE);
           Imprime(rvControleVendServ, XLinImp, 120, 'Cheq. Prazo: '+FormatFloat('0.00', XTotSaidaChequePrazo),'Verdana',8,clBlack, FALSE);
           Imprime(rvControleVendServ, XLinImp, 170, 'Boletos: '+FormatFloat('0.00', XTotSaidaBoleto),'Verdana',8,clBlack, FALSE);
           XLinImp:=XLinImp+4;
           Imprime(rvControleVendServ, XLinImp, 10, 'Cartão Cred.: '+FormatFloat('0.00', XTotSaidaCartaoC),'Verdana',8,clBlack, FALSE);
           Imprime(rvControleVendServ, XLinImp, 60, 'Cartão Déb.: '+FormatFloat('0.00', XTotSaidaCartaoD),'Verdana',8,clBlack, FALSE);
           Imprime(rvControleVendServ, XLinImp, 120, 'Outros: '+FormatFloat('0.00', XTotSaidaOutros),'Verdana',8,clBlack, FALSE);
       End;
   	XLinImp:=XLinImp+3;
//   	Imprime(rvControleVendServ,XLinImp,10,'.....................................................................................................................................................................................................................','Verdana',10,clBlack, false);
   	Imprime(rvControleVendServ,XLinImp,5,'_________________________________________________________________________________________________________________________','Verdana',10,clBlack, true);
	Except
       ShowMessage('Erro ao Imprimir o rodapé do relatorio');
   End;
End;
//Alex - Função para imprimir os dados de Ctas a receber para fluxo de caixa completo
Procedure  TFRelData.ImpRelFluxoCaixaCompletoCtasReceber(DataRelFluxoCaixa: TDate; Tipo: String);
Begin
	Try
   	//Filtramos os dados das contas a receber
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' select vwparcr.dtdebito, vwparcr.historico, vwparcr.cobranca, vwparcr.valorpg from vwparcr ');
       DMFINANC.TAlx.SQL.Add(' Where (vwparcr.dtdebito=:Data) and (vwparcr.fech=''S'')  order by vwparcr.cobranca ');
       DMFINANC.TAlx.ParamByName('Data').AsDate := DataRelFluxoCaixa;
       DMFINANC.TAlx.Open;
       If not DMFINANC.TAlx.IsEmpty
       Then Begin
           DMFINANC.TAlx.First;
           While not DMFINANC.TAlx.Eof do
           Begin
			   	XLinImp:=XLinImp+5;
               Imprime(rvControleVendServ, XLinImp,10, DMFINANC.talx.FieldByName('dtdebito').AsString,'Verdana',8, clBlack, false);
               Imprime(rvControleVendServ, XLinImp,30, Copy('Cr-'+DMFINANC.talx.FieldByName('historico').AsString, 0, 67),'Verdana',8, clBlack, false);
               Imprime(rvControleVendServ, XLinImp, 145, DMFINANC.talx.FieldByName('cobranca').AsString,'Verdana',8, clBlack, false);
               Imprime(rvControleVendServ, XLinImp, 180, FormatFloat('0.00', DMFINANC.talx.FieldByName('valorpg').AsCurrency),'Verdana',8, clBlack, false);
				//Acumula valores
               If DMFINANC.talx.FieldByName('cobranca').AsString='Carteira' Then
                   XTotEntradaCarteira:=XTotEntradaCarteira+DMFINANC.talx.FieldByName('valorpg').AsCurrency
               Else
               	If UpperCase(DMFINANC.talx.FieldByName('cobranca').AsString)='CHEQUE' Then
                   	XTotEntradaCheque:=XTotEntradaCheque+DMFINANC.talx.FieldByName('valorpg').AsCurrency
                   Else
               		If DMFINANC.talx.FieldByName('cobranca').AsString='Boleto' Then
                   		XTotEntradaBoleto:=XTotEntradaBoleto+DMFINANC.talx.FieldByName('valorpg').AsCurrency
                       Else
               			If DMFINANC.talx.FieldByName('cobranca').AsString='C - Cartão' Then
                   			XTotEntradaCartaoC:=XTotEntradaCartaoC+DMFINANC.talx.FieldByName('valorpg').AsCurrency
                           Else
                               If DMFINANC.talx.FieldByName('cobranca').AsString='Chq. Vista' Then
                                   XTotEntradaChequeVista:=XTotEntradaChequeVista+DMFINANC.talx.FieldByName('valorpg').AsCurrency
                               Else
                                   If DMFINANC.talx.FieldByName('cobranca').AsString='Chq. Prazo' Then
                                       XTotEntradaChequePrazo:=XTotEntradaChequePrazo+DMFINANC.talx.FieldByName('valorpg').AsCurrency
                                   Else
                                       If DMFINANC.talx.FieldByName('cobranca').AsString='D - Cartão' Then
                                           XTotEntradaCartaoD:=XTotEntradaCartaoD+DMFINANC.talx.FieldByName('valorpg').AsCurrency
                                       Else
                                           XTotEntradaOutros:=XTotEntradaOutros+DMFINANC.talx.FieldByName('valorpg').AsCurrency;

           DMFINANC.TAlx.Next;
			ImpRelFluxoCaixaCompletoIniciaNovaPagina;
           End;
       End;
	Except
       ShowMessage('Erro ao Imprimir os dados de ctas a receber do relatório');
   End;
End;
//Alex - Função para imprimir os dados de Ctas a pagar para relatório de recebimentos e pagamentos
Procedure  TFRelData.ImpRelFluxoCaixaCompletoCtasPagar(DataRelFluxoCaixa: TDate; Tipo: String);
Begin
	Try
   	//Filtramos os dados das contas a receber
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' select vwparcp.dtdebito, vwparcp.historico, vwparcp.cobranca, vwparcp.valorpg from vwparcp ');
       DMFINANC.TAlx.SQL.Add(' Where (vwparcp.dtdebito=:Data) and (vwparcp.fech=''S'')  order by vwparcp.cobranca ');
       DMFINANC.TAlx.ParamByName('Data').AsDate := DataRelFluxoCaixa;
       DMFINANC.TAlx.Open;
       If not DMFINANC.TAlx.IsEmpty
       Then Begin
           DMFINANC.TAlx.First;
           While not DMFINANC.TAlx.Eof do
           Begin
			   	XLinImp:=XLinImp+5;
               //Jônatas 01/08/2013 - Tamanho das fontes e posição das colunas ajustados para coincidir com outras partes do relatório
               Imprime(rvControleVendServ, XLinImp,10, DMFINANC.talx.FieldByName('dtdebito').AsString,'Verdana',8, clBlack, false);
               Imprime(rvControleVendServ, XLinImp,30, Copy('Cr-'+DMFINANC.talx.FieldByName('historico').AsString, 0, 67),'Verdana',8, clBlack, false);
               Imprime(rvControleVendServ, XLinImp, 145, DMFINANC.talx.FieldByName('cobranca').AsString,'Verdana',8, clBlack, false);
               Imprime(rvControleVendServ, XLinImp, 180, FormatFloat('0.00', DMFINANC.talx.FieldByName('valorpg').AsCurrency),'Verdana',8, clBlack, false);
				//Acumula valores
               If DMFINANC.talx.FieldByName('cobranca').AsString='Carteira' Then
                   XTotSaidaCarteira:=XTotSaidaCarteira+DMFINANC.talx.FieldByName('valorpg').AsCurrency
               Else
               	If UpperCase(DMFINANC.talx.FieldByName('cobranca').AsString)='CHEQUE' Then
                   	XTotSaidaCheque:=XTotSaidaCheque+DMFINANC.talx.FieldByName('valorpg').AsCurrency
                   Else
               		If DMFINANC.talx.FieldByName('cobranca').AsString='Boleto' Then
                   		XTotSaidaBoleto:=XTotSaidaBoleto+DMFINANC.talx.FieldByName('valorpg').AsCurrency
                       Else
               			If DMFINANC.talx.FieldByName('cobranca').AsString='C - Cartão' Then
                   			XTotSaidaCartaoC:=XTotSaidaCartaoC+DMFINANC.talx.FieldByName('valorpg').AsCurrency
                           Else
                               If DMFINANC.talx.FieldByName('cobranca').AsString='Chq. Vista' Then
                                   XTotSaidaChequeVista:=XTotSaidaChequeVista+DMFINANC.talx.FieldByName('valorpg').AsCurrency
                               Else
                                   If DMFINANC.talx.FieldByName('cobranca').AsString='Chq. Prazo' Then
                                       XTotSaidaChequePrazo:=XTotSaidaChequePrazo+DMFINANC.talx.FieldByName('valorpg').AsCurrency
                                   Else
                                       If DMFINANC.talx.FieldByName('cobranca').AsString='D - Cartão' Then
                                           XTotSaidaCartaoD:=XTotSaidaCartaoD+DMFINANC.talx.FieldByName('valorpg').AsCurrency
                                       Else
                                           XTotSaidaOutros:=XTotSaidaOutros+DMFINANC.talx.FieldByName('valorpg').AsCurrency;
               DMFINANC.TAlx.Next;
               ImpRelFluxoCaixaCompletoIniciaNovaPagina;//Jônatas 01/08/2013 - Incluído para ir para ir para uma nova página
           End;
       End;
	Except
       ShowMessage('Erro ao Imprimir os dados de ctas a pagar do relatório');
   End;
End;

//Alex - Função para imprimir os dados de Caixapara fluxo de caixa completo
Procedure  TFRelData.ImpRelFluxoCaixaCompletoCaixa(DataRelFluxoCaixa: TDate; Tipo: String);
Begin
	Try
   	//Filtramos os dados de caixa que não tenha sido gerado por ctas a pagar ou receber
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' select vwlancaixa.dtlanc, vwlancaixa.historico, vwlancaixa.tipo, vwlancaixa.valor from vwlancaixa ');
       DMFINANC.TAlx.SQL.Add(' 		 Where (vwlancaixa.dtlanc=:Data) and (vwlancaixa.tipcai='+#39+tipo+#39+') and ((vwlancaixa.tipogerador is null) or (vwlancaixa.tipogerador<>''FCCAIXA'') ');
       DMFINANC.TAlx.SQL.Add(' 		        AND (vwlancaixa.tipogerador<>''FATCP'') AND (vwlancaixa.tipogerador<>''FATCR'') AND (vwlancaixa.tipogerador<>''CTAR'') and (vwlancaixa.tipogerador<>''CTAP'') ');
       DMFINANC.TAlx.SQL.Add(' AND (vwlancaixa.tipogerador<>''LCHR'') and (vwlancaixa.tipogerador<>''LCHP'')) ');
       DMFINANC.TAlx.SQL.Add('   order by vwlancaixa.tipo ');
       DMFINANC.TAlx.ParamByName('Data').AsDate := DataRelFluxoCaixa;
       DMFINANC.TAlx.Open;
       If not DMFINANC.TAlx.IsEmpty
       Then Begin
           DMFINANC.TAlx.First;
           While not DMFINANC.TAlx.Eof do
           Begin
			   	XLinImp:=XLinImp+5;
               Imprime(rvControleVendServ, XLinImp,10, DMFINANC.talx.FieldByName('dtlanc').AsString,'Verdana',8, clBlack, false);
               Imprime(rvControleVendServ, XLinImp,30, Copy('Cx-'+DMFINANC.talx.FieldByName('historico').AsString, 0, 67),'Verdana',8, clBlack, false);
               Imprime(rvControleVendServ, XLinImp, 145, DMFINANC.talx.FieldByName('tipo').AsString,'Verdana',8, clBlack, false);
               Imprime(rvControleVendServ, XLinImp, 180, FormatFloat('0.00', DMFINANC.talx.FieldByName('valor').AsCurrency),'Verdana',8, clBlack, false);
				//Acumula valores
               If tipo='E'
               Then Begin
               	If DMFINANC.talx.FieldByName('tipo').AsString='Carteira' Then
                       XTotEntradaCarteira:=XTotEntradaCarteira+DMFINANC.talx.FieldByName('valor').AsCurrency
                   Else
               		If UpperCase(DMFINANC.talx.FieldByName('tipo').AsString)='CHEQUE' Then
                       	XTotEntradaCheque:=XTotEntradaCheque+DMFINANC.talx.FieldByName('valor').AsCurrency
                       Else
               			If DMFINANC.talx.FieldByName('tipo').AsString='Boleto' Then
                       		XTotEntradaBoleto:=XTotEntradaBoleto+DMFINANC.talx.FieldByName('valor').AsCurrency
                           Else
               				If DMFINANC.talx.FieldByName('tipo').AsString='C - Cartão' Then
                       			XTotEntradaCartaoC:=XTotEntradaCartaoC+DMFINANC.talx.FieldByName('valor').AsCurrency
                               Else
                                   If DMFINANC.talx.FieldByName('tipo').AsString='Chq. Vista' Then
                                       XTotEntradaChequeVista:=XTotEntradaChequeVista+DMFINANC.talx.FieldByName('valor').AsCurrency
                                   Else
                                       If DMFINANC.talx.FieldByName('tipo').AsString='Chq. Prazo' Then
                                           XTotEntradaChequePrazo:=XTotEntradaChequePrazo+DMFINANC.talx.FieldByName('valor').AsCurrency
                                       Else
                                           If DMFINANC.talx.FieldByName('tipo').AsString='D - Cartão' Then
                                               XTotEntradaCartaoD:=XTotEntradaCartaoD+DMFINANC.talx.FieldByName('valor').AsCurrency
                                           Else
                                               XTotEntradaOutros:=XTotEntradaOutros+DMFINANC.talx.FieldByName('valor').AsCurrency;
               End
               Else Begin
               	If DMFINANC.talx.FieldByName('tipo').AsString='Carteira' Then
                       XTotSaidaCarteira:=XTotSaidaCarteira+DMFINANC.talx.FieldByName('valor').AsCurrency
                   Else
               		If UpperCase(DMFINANC.talx.FieldByName('tipo').AsString)='CHEQUE' Then
                       	XTotSaidaCheque:=XTotSaidaCheque+DMFINANC.talx.FieldByName('valor').AsCurrency
                       Else
               			If DMFINANC.talx.FieldByName('tipo').AsString='Boleto' Then
                       		XTotSaidaBoleto:=XTotSaidaBoleto+DMFINANC.talx.FieldByName('valor').AsCurrency
                           Else
               				If DMFINANC.talx.FieldByName('tipo').AsString='C - Cartão' Then
                       			XTotSaidaCartaoC:=XTotSaidaCartaoC+DMFINANC.talx.FieldByName('valor').AsCurrency
                               Else
                                   If DMFINANC.talx.FieldByName('tipo').AsString='Chq. Vista' Then
                                       XTotSaidaChequeVista:=XTotSaidaChequeVista+DMFINANC.talx.FieldByName('valor').AsCurrency
                                   Else
                                       If DMFINANC.talx.FieldByName('tipo').AsString='Chq. Prazo' Then
                                           XTotSaidaChequePrazo:=XTotSaidaChequePrazo+DMFINANC.talx.FieldByName('valor').AsCurrency
                                       Else
                                           If DMFINANC.talx.FieldByName('tipo').AsString='D - Cartão' Then
                                               XTotSaidaCartaoD:=XTotSaidaCartaoD+DMFINANC.talx.FieldByName('valor').AsCurrency
                                           Else
                                               XTotSaidaOutros:=XTotSaidaOutros+DMFINANC.talx.FieldByName('valor').AsCurrency;
               End;
               DMFINANC.TAlx.Next;
               ImpRelFluxoCaixaCompletoIniciaNovaPagina;
           End;
       End;
	Except
       ShowMessage('Erro ao Imprimir os dados de caixa do relatório');
   End;
End;


Function TFRelData.ImpRelBalanceteRodape : Boolean;
Begin
	Try
   	XLinImp:=XLinImp+2;
   	Imprime(rvControleVendServ,XLinImp,5,'_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _','Verdana',10,clBlack, true);
       XLinImp:=XLinImp+5;
       //Imprime(rvControleVendServ, XLinImp,90, xVlrTotalDepos,'Verdana',8,clBlack, true);
       //Imprime(rvControleVendServ, XLinImp,110, xVlrTotalCart,'Verdana',8,clBlack, true);
       XLinImp:=XLinImp+5;
       Imprime(rvControleVendServ, XLinImp,5, 'TOTAL','Verdana',10,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,30, xVlrTotalEntrada,'Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,60, xVlrTotalSaida,'Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,100, FormatFloat('####0.00', StrToFloat(xVlrTransBanc)),'Verdana',8,clBlack, true);
       //Imprime(rvControleVendServ, XLinImp,100, xVlrTotalBancos,'Verdana',8,clBlack, true);
       //Imprime(rvControleVendServ, XLinImp,130, xVlrTotalSaidaBancos,'Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,140, xVlrTotalOutros,'Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,180, xVlrTotalOutros1,'Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,225, xVlrOutrosTot,'Verdana',8,clBlack, true);
       Imprime(rvControleVendServ, XLinImp,270, xTotalGeral,'Verdana',10,clBlack, true);
       XLinImp:=XLinImp+2;
   	Imprime(rvControleVendServ,XLinImp,5,'_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _','Verdana',10,clBlack, true);
		Imprime(rvControleVendServ, XLinImp+5,235, 'SALDO FINAL: ','Verdana',10,clBlack, true);
		Imprime(rvControleVendServ, XLinImp+5,276 - Length(FormatFloat('##,##0.00', xValorAnterior + StrToFloat(xTotalGeral))), FormatFloat('##,##0.00', xValorAnterior + StrToFloat(xTotalGeral)),'Verdana',10,clBlack, true);
   Except
   End;
End;

//MAURO - Função para imprimir todas os lancamentos de entradas
Function TFRelData.ImpRelBalanceteEntradas : Boolean;
Begin
	Try
		ImpRelBalanceteFiltraEntradas;
       //Se os filtros não estiverem vazios, imprimir os valores
		if not(DMENTRADA.TAlx.FieldByName('VLRCAIXA').AsFloat = 0) or not(DMServ.TAlx1.FieldByName('VLRBANCO').AsFloat = 0)
       Then Begin
       	SomaEntradas;
       	XLinImp:=XLinImp+4;           
       	Imprime(rvControleVendServ, XLinImp,5, DateToStr(XDtFiltro),'Verdana',7,clBlack, true);
       	Imprime(rvControleVendServ, XLinImp,30, xVlrEntrada,'Verdana',8,clBlack, false);
			//Controle para saber se já foi impressa essa data
       	xDtImp := True;
       	xFimData := True;
       End
       Else Begin
       	Exit;
       End;
   Except
       Result := False;
       ShowMessage('Erro ao imprimir as Entradas!!!');
   End;
end;

Function TFRelData.ImpRelBalanceteFiltraEntradas : Boolean;
Begin
	Try
   	DMENTRADA.TAlx.Close;
       DMENTRADA.TAlx.SQL.Clear;
       DMENTRADA.TAlx.SQL.Add('select SUM(lancaixa.valor) as VLRCAIXA');
       DMENTRADA.TAlx.SQL.Add('from lancaixa');
       DMENTRADA.TAlx.SQL.Add('where (lancaixa.dtlanc=:param) and (lancaixa.tipcai ='+#39+'E'+#39+')');
       DMENTRADA.TAlx.ParamByName('param').AsDate := XDtFiltro;
       DMENTRADA.TAlx.Open;

       DMServ.TAlx1.Close;
       DMServ.TAlx1.SQL.Clear;
       DMServ.TAlx1.SQL.Add('select SUM(movbanco.valor) as VLRBANCO');
       DMServ.TAlx1.SQL.Add('from movbanco');
       DMServ.TAlx1.SQL.Add('where (movbanco.dtmov=:param) and (movbanco.fech ='+#39+'S'+#39+') and (movbanco.tipoop ='+#39+'ENTRADA'+#39+')');
       DMServ.TAlx1.ParamByName('param').AsDate := XDtFiltro;
       DMServ.TAlx1.Open;

   Except
       Result := False;
       ShowMessage('Erro ao Filtrar as Entradas');
   End;
End;

Function TFRelData.SomaEntradas : Boolean;
Begin
	Try
   	XVALORENTRADA := DMENTRADA.TAlx.FieldByName('VLRCAIXA').AsFloat + DMServ.TAlx1.FieldByName('VLRBANCO').AsFloat;
   	XTOTALENTRADA := XTOTALENTRADA + XVALORENTRADA;
   	xVlrEntrada := FormatFloat('0.00', XVALORENTRADA);
   	xVlrTotalEntrada := FormatFloat('0.00', XTOTALENTRADA);
	Except
   	Result := False;
       ShowMessage('Erro ao somar as entradas!');
   End;
end;

//MAURO - Função para imprimir todas os lancamentos de saidas
Function TFRelData.ImpRelBalanceteSaidas : Boolean;
Begin
	Try
		ImpRelBalanceteFiltraSaidas;
       //Se os filtros não estiverem vazios, imprimir os valores
		if not(DMSAIDA.TAlx.FieldByName('VLRCAIXA').AsFloat = 0) or not(DMServ.TAlx2.FieldByName('VLRBANCO').AsFloat = 0)
       Then begin
       	SomaSaidas;
       	if xDtImp = False
           then begin
           	XLinImp:=XLinImp+4;
           	Imprime(rvControleVendServ, XLinImp,5, DateToStr(XDtFiltro),'Verdana',7,clBlack, true);
           	xDtImp := True;
               xFimData := True;
           End;
       Imprime(rvControleVendServ, XLinImp,60, xVlrSaida,'Verdana',8,clBlack, false);
       End;
   Except
       Result := False;
       ShowMessage('Erro ao imprimir as Saidas!!!');
   End;
end;

Function TFRelData.ImpRelBalanceteFiltraSaidas : Boolean;
Begin
	Try
   	DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('select SUM(lancaixa.valor) as VLRCAIXA');
       DMSAIDA.TAlx.SQL.Add('from lancaixa');
       DMSAIDA.TAlx.SQL.Add('where (lancaixa.dtlanc=:param) and (lancaixa.tipcai ='+#39+'S'+#39+')');
       DMSAIDA.TAlx.ParamByName('param').AsDate := XDtFiltro;
       DMSAIDA.TAlx.Open;

       DMServ.TAlx2.Close;
       DMServ.TAlx2.SQL.Clear;
       DMServ.TAlx2.SQL.Add('select SUM(movbanco.valor) as VLRBANCO');
       DMServ.TAlx2.SQL.Add('from movbanco');
       DMServ.TAlx2.SQL.Add('where (movbanco.dtmov=:param) and (movbanco.fech ='+#39+'S'+#39+') and (movbanco.tipoop ='+#39+'SAIDA'+#39+')');
       DMServ.TAlx2.ParamByName('param').AsDate := XDtFiltro;
       DMServ.TAlx2.Open;

   Except
       Result := False;
       ShowMessage('Erro ao Filtrar as Saidas');
   End;
End;


Function TFRelData.SomaSaidas : Boolean;
Begin
	Try
   	XVALORSAIDA := DMSAIDA.TAlx.FieldByName('VLRCAIXA').AsFloat + DMServ.TAlx2.FieldByName('VLRBANCO').AsFloat ;
   	XTOTALSAIDA := XTOTALSAIDA + XVALORSAIDA;
   	xVlrSaida := FormatFloat('0.00', XVALORSAIDA);
   	xVlrTotalSaida := FormatFloat('0.00', XTOTALSAIDA);
	Except
   	Result := False;
       ShowMessage('Erro ao somar as saidas!');
   End;
end;

//MAURO - Função para imprimir todas os lancamentos banco
Function TFRelData.ImpRelBalanceteBancos : Boolean;
Begin
	Try
		ImpRelBalanceteFiltraBancos;
       //Se os filtros não estiverem vazios, imprimir os valores
		if not(DMBANCO.TAlx.FieldByName('VLRCART').AsFloat = 0) or not(DMServ.TAlx3.FieldByName('VLRDEPOS').AsFloat = 0)
       Then begin
       	SomaBancos;
       	if xDtImp = False
           then begin
           	XLinImp:=XLinImp+5;
           	Imprime(rvControleVendServ, XLinImp,5, DateToStr(XDtFiltro),'Verdana',7,clBlack, true);
           	xDtImp := True;
               xFimData := True;
           End;
       Imprime(rvControleVendServ, XLinImp,90, xVlrDepos,'Verdana',8,clBlack, false);
       Imprime(rvControleVendServ, XLinImp,110, xVlrCart,'Verdana',8,clBlack, false);
       Imprime(rvControleVendServ, XLinImp,130, xVlrSaidaBancos,'Verdana',8,clBlack, false);
       End;
   Except
       Result := False;
       ShowMessage('Erro ao imprimir os lançamentos bancos!!!');
   End;
end;

Function TFRelData.ImpRelBalanceteFiltraBancos: Boolean;
Begin
	Try
   	//Consulta cartão
   	DMBANCO.TAlx.Close;
       DMBANCO.TAlx.SQL.Clear;
       DMBANCO.TAlx.SQL.Add('Select SUM(movbanco.valor) as VLRCART');
       DMBANCO.TAlx.SQL.Add('from movbanco');
       DMBANCO.TAlx.SQL.Add('where (movbanco.dtmov=:param) and (movbanco.fech ='+#39+'S'+#39+') and (movbanco.tipoop ='+#39+'ENTRADA'+#39+') and ((movbanco.cobranca ='+#39+'C - CARTÃO'+#39+') or (movbanco.cobranca ='+#39+'D - CARTÃO'+#39+'))');
       DMBANCO.TAlx.ParamByName('param').AsDate := XDtFiltro;
       DMBANCO.TAlx.Open;

       //Consulta Deposito
       DMServ.TAlx3.Close;
       DMServ.TAlx3.SQL.Clear;
       DMServ.TAlx3.SQL.Add('select SUM(movbanco.valor) as VLRDEPOS');
       DMServ.TAlx3.SQL.Add('from movbanco');
       DMServ.TAlx3.SQL.Add('where (movbanco.dtmov=:param) and (movbanco.fech ='+#39+'S'+#39+') and (movbanco.tipoop ='+#39+'ENTRADA'+#39+') and ((movbanco.cobranca <>'+#39+'C - CARTÃO'+#39+') and (movbanco.cobranca <>'+#39+'D - CARTÃO'+#39+'))');
       DMServ.TAlx3.ParamByName('param').AsDate := XDtFiltro;
       DMServ.TAlx3.Open;

       //Consulta Saidas
       DMServ.TAlx2.Close;
       DMServ.TAlx2.SQL.Clear;
       DMServ.TAlx2.SQL.Add('select SUM(movbanco.valor) as VLRSAIDA');
       DMServ.TAlx2.SQL.Add('from movbanco');
       DMServ.TAlx2.SQL.Add('where (movbanco.dtmov=:param) and (movbanco.fech ='+#39+'S'+#39+') and (movbanco.tipoop ='+#39+'SAIDA'+#39+')'); //and ((movbanco.cobranca <>'+#39+'C - CARTÃO'+#39+') and (movbanco.cobranca <>'+#39+'D - CARTÃO'+#39+'))');
       DMServ.TAlx2.ParamByName('param').AsDate := XDtFiltro;
       DMServ.TAlx2.Open;

   Except
       Result := False;
       ShowMessage('Erro ao Filtrar os lancamentos Bancos');
   End;
End;

Function TFRelData.SomaBancos : Boolean;
Var
	XTOTBANCOS : REAL;
Begin
	Try
   	XVALORDEPOS := DMServ.TAlx3.FieldByName('VLRDEPOS').AsFloat;
       XVALORCART := DMBANCO.TAlx.FieldByName('VLRCART').AsFloat;
       XVALORSAIDABANCO :=  DMServ.TAlx2.FieldByName('VLRSAIDA').AsFloat;
   	XTOTALDEPOS := XTOTALDEPOS + XVALORDEPOS;
       XTOTALCART := XTOTALCART + XVALORCART;
       XTOTALSAIDABANCO := XTOTALSAIDABANCO + XVALORSAIDABANCO;

   	xVlrDepos := FormatFloat('0.00', XVALORDEPOS);
       xVlrCart := FormatFloat('0.00', XVALORCART);
       xVlrSaidaBancos := FormatFloat('0.00', XVALORSAIDABANCO);

   	xVlrTotalDepos := FormatFloat('0.00', XTOTALDEPOS);
       xVlrTotalCart := FormatFloat('0.00', XTOTALCART);
       xVlrTotalSaidaBancos := FormatFloat('0.00', XTOTALSAIDABANCO);

       XTOTBANCOS := StrToFloat(xVlrTotalDepos)+StrToFloat(xVlrTotalCart);
       xVlrTotalBancos :=  FormatFloat('0.00', XTOTBANCOS);

	Except
   	Result := False;
       ShowMessage('Erro ao somar as entradas!');
   End;
end;

//MAURO - Função para imprimir todas os lancamentos Pro Labore
Function TFRelData.ImpRelBalanceteOutros : Boolean;
Var
	VlrOutros, VlrOutrosTot : Real;
Begin
	Try
   	VlrOutros := 0;
		ImpRelBalanceteFiltraOutros;
       if not(DMESTOQUE.Alx.FieldByName('VLRCAIXA').AsFloat = 0) or not (DMESTOQUE.Alx1.FieldByName('VLRBANCO').AsFloat = 0)
       then begin
       	SomaOutros;
           if xDtImp = False
           then begin
           	XLinImp:=XLinImp+4;
           	Imprime(rvControleVendServ, XLinImp,5, DateToStr(XDtFiltro),'Verdana',7,clBlack, true);
           	xDtImp := True;
           End;
       Imprime(rvControleVendServ, XLinImp,160-18, xVlrOutros,'Verdana',8,clBlack, false);
       xDados := True;
       End
       Else
       	xDados := False;
       if xCod_ProLabore2 <> 0
       Then Begin
       	if not(DMESTOQUE.Alx2.FieldByName('VLRCAIXA').AsFloat = 0) or not (DMESTOQUE.Alx3.FieldByName('VLRBANCO').AsFloat = 0)
           then Begin
           	SomaOutros1;
           	if xDtImp = False
           	then begin
           		XLinImp:=XLinImp+4;
           		Imprime(rvControleVendServ, XLinImp,5, DateToStr(XDtFiltro),'Verdana',7,clBlack, true);
           		xDtImp := True;
           	End;
       	Imprime(rvControleVendServ, XLinImp,200-18, xVlrOutros1,'Verdana',8,clBlack, false);
           End
           Else
           	xDados := False;
       End;
       //Se passar nas validações acima
       If xDados  = True
       then begin
       	VlrOutros := StrToFloat(xVlrOutros) + StrToFloat(xVlrOutros1);
       	xVlrOutrosDiario := FormatFloat('0.00', VlrOutros);
       	VlrOutrosTot := StrToFloat(xVlrTotalOutros) + StrToFloat(xVlrTotalOutros1);
       	xVlrOutrosTot := FormatFloat('0.00', VlrOutrosTot);
       	Imprime(rvControleVendServ, XLinImp,225, xVlrOutrosDiario,'Verdana',8,clBlack, true);
       End;

   Except
       Result := False;
       ShowMessage('Erro ao imprimir os lançamentos pro Labore!!!');
   End;
end;

Function TFRelData.ImpRelBalanceteFiltraOutros: Boolean;
Begin
	Try
   	//Consulta contas pro labore no lancaixa
   	DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select sum(lancaixa.valor) as VLRCAIXA');
       DMESTOQUE.Alx.SQL.Add('from lancaixa');
       DMESTOQUE.Alx.SQL.Add('where (lancaixa.dtlanc=:param) and (lancaixa.tipcai ='+#39+'S'+#39+') and (lancaixa.cod_plnctafil=:param1)');
       DMESTOQUE.Alx.ParamByName('param').AsDate := XDtFiltro;
       DMESTOQUE.Alx.ParamByName('param1').AsInteger := xCod_ProLabore1;
       DMESTOQUE.Alx.Open;

       //Consulta contas pro labore no movbanco
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add('select SUM(movbanco.valor) as VLRBANCO');
       DMESTOQUE.Alx1.SQL.Add('from movbanco');
       DMESTOQUE.Alx1.SQL.Add('where (movbanco.dtmov=:param) and (movbanco.fech ='+#39+'S'+#39+') and (movbanco.tipoop ='+#39+'SAIDA'+#39+') and (movbanco.cod_plncta=:param1)');
       DMESTOQUE.Alx1.ParamByName('param').AsDate := XDtFiltro;
       DMESTOQUE.Alx1.ParamByName('param1').AsInteger := xCod_ProLabore1;
       DMESTOQUE.Alx1.Open;

       if xCod_ProLabore2 <> 0
       then Begin
       	DMESTOQUE.Alx2.Close;
       	DMESTOQUE.Alx2.SQL.Clear;
       	DMESTOQUE.Alx2.SQL.Add('select sum(lancaixa.valor) as VLRCAIXA');
       	DMESTOQUE.Alx2.SQL.Add('from lancaixa');
       	DMESTOQUE.Alx2.SQL.Add('where (lancaixa.dtlanc=:param) and (lancaixa.tipcai ='+#39+'S'+#39+') and (lancaixa.cod_plnctafil=:param1)');
       	DMESTOQUE.Alx2.ParamByName('param').AsDate := XDtFiltro;
       	DMESTOQUE.Alx2.ParamByName('param1').AsInteger := xCod_ProLabore2;
       	DMESTOQUE.Alx2.Open;

       	DMESTOQUE.Alx3.Close;
       	DMESTOQUE.Alx3.SQL.Clear;
       	DMESTOQUE.Alx3.SQL.Add('select SUM(movbanco.valor) as VLRBANCO');
       	DMESTOQUE.Alx3.SQL.Add('from movbanco');
       	DMESTOQUE.Alx3.SQL.Add('where (movbanco.dtmov=:param) and (movbanco.fech ='+#39+'S'+#39+') and (movbanco.tipoop ='+#39+'SAIDA'+#39+') and (movbanco.cod_plncta=:param1)');
       	DMESTOQUE.Alx3.ParamByName('param').AsDate := XDtFiltro;
       	DMESTOQUE.Alx3.ParamByName('param1').AsInteger := xCod_ProLabore2;
       	DMESTOQUE.Alx3.Open;
       End
       Else begin

       End;

   Except
       Result := False;
       ShowMessage('Erro ao Filtrar os lancamentos Pro Labore');
   End;
End;

Function TFRelData.SomaOutros : Boolean;
Begin
	Try
   	XVALOROUTROS := DMESTOQUE.Alx.FieldByName('VLRCAIXA').AsFloat + DMESTOQUE.Alx1.FieldByName('VLRBANCO').AsFloat ;
       XTOTALOUTROS := XTOTALOUTROS + XVALOROUTROS;
       xVlrOutros := FormatFloat('0.00', XVALOROUTROS);
       xVlrTotalOutros := FormatFloat('0.00', XTOTALOUTROS);
	Except
   	Result := False;
       ShowMessage('Erro ao somar outros!');
   End;
end;

Function TFRelData.SomaOutros1 : Boolean;
Begin
	Try
   	XVALOROUTROS1 := DMESTOQUE.Alx2.FieldByName('VLRCAIXA').AsFloat + DMESTOQUE.Alx3.FieldByName('VLRBANCO').AsFloat ;
       XTOTALOUTROS1 := XTOTALOUTROS1 + XVALOROUTROS1;
       xVlrOutros1 := FormatFloat('0.00', XVALOROUTROS1);
       xVlrTotalOutros1 := FormatFloat('0.00', XTOTALOUTROS1);
	Except
   	Result := False;
       ShowMessage('Erro ao somar outros!');
   End;
end;

Function TFRelData.SomaGeral : Boolean;
Var
	XVALORGERAL, XVALORDIARIO, XVALORSAIDABANCO : Real;
Begin
	Try
   	//Comentado o texto abaixo para testes
//       XVALORDIARIO := (XVALORENTRADA + (XVALORCART+XVALORDEPOS))-(XVALORSAIDA+XVALORSAIDABANCO+(XVALOROUTROS+XVALOROUTROS1));
       XVALORDIARIO := XVALORENTRADA - XVALORSAIDA;
       xvlrSaldoDiario := FormatFloat('0.00', XVALORDIARIO);
       XTOTAL := XTOTAL + StrToFloat(xvlrSaldoDiario);
       xTotalGeral := FormatFloat('0.00', XTOTAL);
	Except
   	Result := False;
       ShowMessage('Erro ao somar GERAL!');
   End;
end;

//MAURO - Função para selecionar todas as contas Pro Labore
Function TFRelData.SelContaProLabore : Boolean;
Begin
	Try
		DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('select first 2 plncta.descricao, plncta.cod_plncta');
   	DMCONTA.TAlx.SQL.Add('from plncta');
   	DMCONTA.TAlx.SQL.Add('where classificacao LIKE '+#39+'4.3.01.03.0001.'+'%'+#39+' order by plncta.classificacao ');
   	DMCONTA.TAlx.Open;
   	DMCONTA.TAlx.First;
   	XColImp := 160;
       xCod_ProLabore1 := 	DMCONTA.TAlx.FieldByName('cod_plncta').AsInteger;
       DMCONTA.TAlx.Next;
       if DMCONTA.TAlx.FieldByName('cod_plncta').AsInteger <> xCod_ProLabore1 then
       	xCod_ProLabore2 := DMCONTA.TAlx.FieldByName('cod_plncta').AsInteger
       Else Begin
           xCod_ProLabore2 := 0;
       End;
       DMCONTA.TAlx.First;
   Except
   	Result := False;
       ShowMessage('Erro ao consultar Contas Pro Labore!!!');
   End;
End;

Function TFRelData.LimparDados : Boolean;
Begin
	XVALORENTRADA := 0;
   XTOTALENTRADA := 0;
   XVALORSAIDA := 0;
   XTOTALSAIDA := 0;
   XVALORDEPOS := 0;
   XVALORCART := 0;
   XTOTALDEPOS := 0;
   XTOTALCART := 0;
   XTOTAL := 0;
   xVlrEntrada := '';
   xVlrTotalEntrada := '';
   xVlrSaida := '';
   xVlrTotalSaida := '';
   xVlrTotalDepos := '';
   xVlrTotalCart := '';
   xVlrDepos := '';
   xVlrCart := '';

End;
//Jônatas 18/09/2013 - Função para Relatório Gerencial Analítico - Lancaixa
function TFRelData.ImpRelGerencialAnaliticoLancaixa: Boolean;
begin
    Try
        //query para pegar os campos necessários para a impressão das Mercadorias Compradas
        DMServ.TAlx2.Close;
        DMServ.TAlx2.SQL.Clear;
        DMServ.TAlx2.SQL.Add('SELECT lancaixa.doc, lancaixa.tipcai, lancaixa.historico, lancaixa.dtlanc, lancaixa.dtrefer, lancaixa.valor, lancaixa.tipo, lancaixa.tipcai');
        DMServ.TAlx2.SQL.Add(' FROM lancaixa');
        DMServ.TAlx2.SQL.Add(' WHERE (lancaixa.tipogerador is null)');
        //filtrar por data de referência
        If RdGrpGerencial.ItemIndex =0 then
           DMServ.TAlx2.SQL.Add(' AND (lancaixa.dtrefer between :Dt1 and :Dt2)  AND (lancaixa.cod_plnctafil = :COD_PLNCTA)');
        //filtrar por data de lançamento
        If RdGrpGerencial.ItemIndex =1 then
           DMServ.TAlx2.SQL.Add(' AND (lancaixa.dtlanc between :Dt1 and :Dt2)  AND (lancaixa.cod_plnctafil = :COD_PLNCTA)');
        DMServ.TAlx2.SQL.Add(' order by lancaixa.doc');
        DMServ.TAlx2.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
        DMServ.TAlx2.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
        DMServ.TAlx2.ParamByName('COD_PLNCTA').AsInteger:=DMServ.TAlx1.FieldByName('cod_plncta').AsInteger;
        DMServ.TAlx2.Open;
        DMServ.TAlx2.First; 
        //imprime o subcabeçalho
        //ImpRelGerencialCabecalho(1);
        While not DMServ.TAlx2.Eof do
        Begin
             ImpRelGerencial_NovaPagina(1);
             //Imprimir Numero
             If DMServ.TAlx2.FieldByName('tipcai').AsString='E' Then
               Imprime(rvControleVendServ, XLinImp,10, 'LC[E]' + DMServ.TAlx2.FieldByName('doc').AsString ,'Verdana',6,clBlack, False);// Jônatas 19/09/2013 - Comentado pra aproveitar espaço no relatório
             If DMServ.TAlx2.FieldByName('tipcai').AsString='S' Then
               Imprime(rvControleVendServ, XLinImp,10, 'LC[S]' + DMServ.TAlx2.FieldByName('doc').AsString ,'Verdana',6,clBlack, False);// Jônatas 19/09/2013 - Comentado pra aproveitar espaço no relatório
             If (DMServ.TAlx2.FieldByName('tipcai').AsString<>'E') AND (DMServ.TAlx2.FieldByName('tipcai').AsString<>'S') Then
               Imprime(rvControleVendServ, XLinImp,10, 'LC[O]' + DMServ.TAlx2.FieldByName('doc').AsString ,'Verdana',6,clBlack, False);// Jônatas 19/09/2013 - Comentado pra aproveitar espaço no relatório

             //Imprimir histórico do lançamento
             Imprime(rvControleVendServ, XLinImp,30, Copy(DMServ.TAlx2.FieldByName('historico').AsString,0,65) ,'Verdana',6,clBlack, False);//Jônatas 19/09/2013 - Alterada a coluna para começar ondeera o número
             //Imprimir Data de referência
             Imprime(rvControleVendServ, XLinImp,125, DMServ.TAlx2.FieldByName('dtrefer').AsString ,'Verdana',6,clBlack, False);
             //Imprimir Data de fechamento
             Imprime(rvControleVendServ, XLinImp,150, DMServ.TAlx2.FieldByName('dtlanc').AsString ,'Verdana',6,clBlack, False);
             //Imprimir Total daquele produto
             Imprime(rvControleVendServ, XLinImp,175, FormatFloat('0.00',DMServ.TAlx2.FieldByName('valor').AsCurrency) ,'Verdana',6,clBlack, False);
             //Imprimir a forma de pagamento
             //Imprime(rvControleVendServ, XLinImp,170, DMServ.TAlx2.FieldByName('tipo').AsString ,'Verdana',6,clBlack, False);
             XLinImp:=XLinImp+5;
             DMserv.TAlx2.Next;
        End;
     Except
         showmessage('Erro ao imprimir Relatório Gerencial Analítico de Lançamento de Caixa');
     End;
end;
//Jônatas 18/09/2013 - Função para Relatório Gerencial Analítico - Movbanco
function TFRelData.ImpRelGerencialAnaliticoMovbanco : Boolean;
begin
    Try
        //query para pegar os campos necessários para a impressão dos movimentos Bancários
        DMServ.TAlx2.Close;
        DMServ.TAlx2.SQL.Clear;
        DMServ.TAlx2.SQL.Add('SELECT movbanco.numcheque, movbanco.tipoop, movbanco.historico, movbanco.dtlanc, movbanco.dtref, movbanco.valor, movbanco.cobranca');
        DMServ.TAlx2.SQL.Add(' FROM movbanco');
        DMServ.TAlx2.SQL.Add(' WHERE (movbanco.tipogerador is null)');
        //filtrar por data de referência
        If RdGrpGerencial.ItemIndex =0 then
           DMServ.TAlx2.SQL.Add(' AND (movbanco.dtref between :Dt1 and :Dt2) AND (movbanco.cod_plncta = :COD_PLNCTA)');
        //filtrar por data de lançamento
        If RdGrpGerencial.ItemIndex =1 then
           DMServ.TAlx2.SQL.Add(' AND (movbanco.dtlanc between :Dt1 and :Dt2) AND (movbanco.cod_plncta = :COD_PLNCTA)');
        DMServ.TAlx2.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
        DMServ.TAlx2.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
        DMServ.TAlx2.ParamByName('COD_PLNCTA').AsInteger:=DMServ.TAlx1.FieldByName('cod_plncta').AsInteger;
        DMServ.TAlx2.Open;
        DMServ.TAlx2.First; 
        //imprime o subcabeçalho
        //ImpRelGerencialCabecalho(1);
        While not DMServ.TAlx2.Eof do
        Begin
             ImpRelGerencial_NovaPagina(1);
             //Imprimir Numero
             If DMServ.TAlx2.FieldByName('tipoop').AsString='ENTRADA' Then
                   Imprime(rvControleVendServ, XLinImp,10, 'MB[E] ' + DMServ.TAlx2.FieldByName('numcheque').AsString ,'Verdana',6,clBlack, False);//Jônatas 19/09/2013 - Comentado para aproveitar espaço no relatório
             If DMServ.TAlx2.FieldByName('tipoop').AsString='SAIDA' Then
                   Imprime(rvControleVendServ, XLinImp,10, 'MB[S] ' + DMServ.TAlx2.FieldByName('numcheque').AsString ,'Verdana',6,clBlack, False);//Jônatas 19/09/2013 - Comentado para aproveitar espaço no relatório
             If (DMServ.TAlx2.FieldByName('tipoop').AsString<>'ENTRADA') and (DMServ.TAlx2.FieldByName('tipoop').AsString<>'SAIDA') Then
                   Imprime(rvControleVendServ, XLinImp,10, 'MB[O] ' + DMServ.TAlx2.FieldByName('numcheque').AsString ,'Verdana',6,clBlack, False);//Jônatas 19/09/2013 - Comentado para aproveitar espaço no relatório

             //Imprimir histórico do lançamento
             Imprime(rvControleVendServ, XLinImp,30, Copy(DMServ.TAlx2.FieldByName('historico').AsString,0,65) ,'Verdana',6,clBlack, False);//Jônatas 19/09/2013 - Alterado a coluna para aproveitar espaço no relatório
             //Imprimir Data de referência
             Imprime(rvControleVendServ, XLinImp,125, DMServ.TAlx2.FieldByName('dtref').AsString ,'Verdana',6,clBlack, False);
             //Imprimir Data de fechamento
             Imprime(rvControleVendServ, XLinImp,150, DMServ.TAlx2.FieldByName('dtlanc').AsString ,'Verdana',6,clBlack, False);
             //Imprimir Total daquele produto
             Imprime(rvControleVendServ, XLinImp,175, FormatFloat('0.00',DMServ.TAlx2.FieldByName('valor').AsCurrency) ,'Verdana',6,clBlack, False);
             //Imprimir a forma de pagamento
             //Imprime(rvControleVendServ, XLinImp,170, DMServ.TAlx2.FieldByName('cobranca').AsString ,'Verdana',6,clBlack, False);//Jônatas 18/09/2013 - não tem forma de pagamento em movbanco
             XLinImp:=XLinImp+5;
             DMserv.TAlx2.Next;
        End;
     Except
         showmessage('Erro ao imprimir Relatório Gerencial Analítico de Movimento Bancário');
     End;
end;
//Jônatas 18/09/2013 - Função para Relatório Gerencial Sintético - Lancaixa
function TFRelData.ImpRelGerencialSinteticoLancaixa: Boolean;
begin
    Try
        //query para pegar o total a vista de compra
        DMServ.TAlx2.Close;
        DMServ.TAlx2.SQL.Clear;
        DMServ.TAlx2.SQL.Add('SELECT SUM(lancaixa.valor) as TOTALPAGO');
        DMServ.TAlx2.SQL.Add(' FROM lancaixa');
        DMServ.TAlx2.SQL.Add(' WHERE (lancaixa.tipogerador is null) And (lancaixa.tipcai = ''S'')');
        //filtrar por data de referência
        If RdGrpGerencial.ItemIndex =0 then
           DMServ.TAlx2.SQL.Add(' AND (lancaixa.dtrefer between :Dt1 and :Dt2) AND (lancaixa.cod_plnctafil = :COD_PLNCTA)');
        //filtrar por data de lançamento
        If RdGrpGerencial.ItemIndex =1 then
           DMServ.TAlx2.SQL.Add(' AND (lancaixa.dtlanc between :Dt1 and :Dt2) AND (lancaixa.cod_plnctafil = :COD_PLNCTA)');
        DMServ.TAlx2.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
        DMServ.TAlx2.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
        DMServ.TAlx2.ParamByName('COD_PLNCTA').AsInteger:=DMServ.TAlx1.FieldByName('cod_plncta').AsInteger;
        DMServ.TAlx2.Open;
        //query para pegar o total a prazo de compra
        DMServ.TAlx3.Close;
        DMServ.TAlx3.SQL.Clear;
        DMServ.TAlx3.SQL.Add('SELECT SUM(lancaixa.valor) as TOTALRECEBIDO');
        DMServ.TAlx3.SQL.Add(' FROM lancaixa');
        DMServ.TAlx3.SQL.Add(' WHERE (lancaixa.tipogerador is null) And (lancaixa.tipcai = ''E'')');
        //filtrar por data de referência
        If RdGrpGerencial.ItemIndex =0 then
           DMServ.TAlx3.SQL.Add(' AND (lancaixa.dtrefer between :Dt1 and :Dt2) AND (lancaixa.cod_plnctafil = :COD_PLNCTA)');
        //filtrar por data de lançamento
        If RdGrpGerencial.ItemIndex =1 then
           DMServ.TAlx3.SQL.Add(' AND (lancaixa.dtlanc between :Dt1 and :Dt2) AND (lancaixa.cod_plnctafil = :COD_PLNCTA)');
        DMServ.TAlx3.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
        DMServ.TAlx3.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
        DMServ.TAlx3.ParamByName('COD_PLNCTA').AsInteger:=DMServ.TAlx1.FieldByName('cod_plncta').AsInteger;
        DMServ.TAlx3.Open;

        //incrementa variáveis globais para plano de ocntas
        XVALORENTRADA:=XVALORENTRADA+DMServ.TAlx3.FieldByName('TOTALRECEBIDO').AsCurrency;
        XVALORSAIDA:=XVALORSAIDA+DMServ.TAlx2.FieldByName('TOTALPAGO').AsCurrency;;

        //Incrementa o total de saida e de entrada
        XTotalEntradaGer:=XTotalEntradaGer+DMServ.TAlx3.FieldByName('TOTALRECEBIDO').AsCurrency;
        XTotalSaidaGer:=XTotalSaidaGer+DMServ.TAlx2.FieldByName('TOTALPAGO').AsCurrency;

        //controle de cabeçalho
        If ((DMServ.TAlx3.FieldByName('TOTALRECEBIDO').AsCurrency = 0) and (DMServ.TAlx2.FieldByName('TOTALPAGO').AsCurrency = 0)) Then
            xFlagLC:= false;
     Except
           //showmessage('Erro ao imprimir Relatório Gerencial Sintético de Lançamento de Caixa');
     End;
end;
//Jônatas 18/09/2013 - Função para Relatório Gerencial Sintético - Movbanco
function TFRelData.ImpRelGerencialSinteticoMovbanco: Boolean;

begin
    Try
        //query para pegar o total a vista de ENTRADA
        DMServ.TAlx2.Close;
        DMServ.TAlx2.SQL.Clear;
        DMServ.TAlx2.SQL.Add('SELECT sum(movbanco.valor) as TOTALRECEBIDO');
        DMServ.TAlx2.SQL.Add(' FROM movbanco');
        DMServ.TAlx2.SQL.Add(' WHERE (movbanco.tipogerador is null) AND (movbanco.tipoop = ''ENTRADA'')');
        //filtrar por data de referência
        If RdGrpGerencial.ItemIndex =0 then
           DMServ.TAlx2.SQL.Add(' AND (movbanco.dtref between :Dt1 and :Dt2)  AND (movbanco.cod_plncta = :COD_PLNCTA)');
        //filtrar por data de lançamento
        If RdGrpGerencial.ItemIndex =1 then
           DMServ.TAlx2.SQL.Add(' AND (movbanco.dtlanc between :Dt1 and :Dt2)  AND (movbanco.cod_plncta = :COD_PLNCTA)');
        DMServ.TAlx2.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
        DMServ.TAlx2.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
        DMServ.TAlx2.ParamByName('COD_PLNCTA').AsInteger:=DMServ.TAlx1.FieldByName('cod_plncta').AsInteger;
        DMServ.TAlx2.Open;
        
        //Jônatas 20/09/2013 - incrementa variáveis globais para função de Plano de Contas
        XVALORENTRADA:=XVALORENTRADA+DMServ.TAlx2.FieldByName('TOTALRECEBIDO').AsCurrency;
        //Incrementa o total de entrada
        XTotalEntradaGer:=XTotalEntradaGer+DMServ.TAlx2.FieldByName('TOTALRECEBIDO').AsCurrency;

        DMServ.TAlx3.Close;
        DMServ.TAlx3.SQL.Clear;
        DMServ.TAlx3.SQL.Add('SELECT sum(movbanco.valor) as TOTALPAGO');
        DMServ.TAlx3.SQL.Add(' FROM movbanco');
        DMServ.TAlx3.SQL.Add(' WHERE (movbanco.tipogerador is null) AND (movbanco.tipoop = ''SAIDA'')');
        //filtrar por data de referência
        If RdGrpGerencial.ItemIndex =0 then
           DMServ.TAlx3.SQL.Add(' AND (movbanco.dtref between :Dt1 and :Dt2)  AND (movbanco.cod_plncta = :COD_PLNCTA)');
        //filtrar por data de lançamento
        If RdGrpGerencial.ItemIndex =1 then
           DMServ.TAlx3.SQL.Add(' AND (movbanco.dtlanc between :Dt1 and :Dt2)  AND (movbanco.cod_plncta = :COD_PLNCTA)');
        DMServ.TAlx3.ParamByName('Dt1').AsDate:= StrToDate(EdDataIni.Text);
        DMServ.TAlx3.ParamByName('Dt2').AsDate:= StrToDate(EdDataFim.Text);
        DMServ.TAlx3.ParamByName('COD_PLNCTA').AsInteger:=DMServ.TAlx1.FieldByName('cod_plncta').AsInteger;
        DMServ.TAlx3.Open;

        //Incrementa o total de saida
        XTotalSaidaGer:=XTotalSaidaGer+DMServ.TAlx3.FieldByName('TOTALPAGO').AsCurrency;

        //Jônatas 20/09/2013 - incrementa variáveis globais para função de Plano de Contas
        XVALORSAIDA:=XVALORSAIDA+DMServ.TAlx3.FieldByName('TOTALPAGO').AsCurrency;
        //controle para cabeçalhos
        if ((DMServ.TAlx2.FieldByName('TOTALRECEBIDO').AsCurrency =0) and (DMServ.TAlx3.FieldByName('TOTALPAGO').AsCurrency = 0)) Then
            xFlagMB:= false;
     Except
           //showmessage('Erro ao imprimir Relatório Gerencial Sintético de Movimento Bancário');
     End;
end;

function TFRelData.ImpRelBalanceteTransBanc: Boolean;
var
xValorMov: String;
begin
	 Alx.Close;
    Alx.SQL.Clear;
    Alx.SQL.Add('select sum(lancaixa.valor) from lancaixa ');
    Alx.SQL.Add(' where upper(lancaixa.tipo) = upper('+#39+'t. banco'+#39+')');
    Alx.SQL.Add(' and lancaixa.dtlanc = :dt');
    Alx.ParamByName('dt').AsDateTime := XDtFiltro;
    alx.Open;

    if alx.fieldbyname('sum').AsString = '' then
    	xValorMov := ''
    else
    begin
    	xValorMov := FormatFloat('#####.00', alx.fieldbyname('sum').AsCurrency);
       xVlrTransBanc := FloatToStr(StrToFloat(xVlrTransBanc) + alx.fieldbyname('sum').AsCurrency);
    end;

    Imprime(rvControleVendServ, XLinImp, 100, xValorMov,'Verdana',8,clBlack, false);
end;

function TFRelData.ImpRelBalanceteSaldoAnterior: Boolean;
begin
	DMESTOQUE.Alx5.Close;
   DMESTOQUE.Alx5.SQL.Clear;
   DMESTOQUE.Alx5.SQL.Add('select lancaixa.saldoant  from lancaixa ');
   DMESTOQUE.Alx5.SQL.Add('where lancaixa.dtlanc = :dt');
   DMESTOQUE.Alx5.ParamByName('dt').AsDateTime := XDtFiltro;
   DMESTOQUE.Alx5.Open;

   xValorAnterior := DMESTOQUE.Alx5.fieldbyname('saldoant').AsCurrency;

   Imprime(rvControleVendServ, 26,227, 'SALDO ANTERIOR: ','Verdana',10,clBlack, true);
   Imprime(rvControleVendServ, 26,275-Length(FormatFloat('##,##0.00', xValorAnterior)), FormatFloat('##,##0.00', xValorAnterior),'Verdana',10,clBlack, true);
end;                                                                                  
function TFRelData.ImpRelListagemCaixa: Boolean;

begin
	xNumPagina:=01;
   xVlrTotListEntrada := 0;
   xVlrTotListSaida := 0;
   //
	ImpRelListagemCabecalho;
   //
   ImpRelListagemSaldoAnterior;
   //
   XLinImp := XLinImp + 8;
   ImpRelListagemCabecalhoEntradas;
   ImpRelListagemEntradas;
   //
   XLinImp := XLinImp + 5;
   ImpRelListagemCabecalhoSaidas;
   ImpRelListagemSaidas;
   //
   XLinImp := XLinImp + 5;
   ImpRelListagemSaldoFinal;
end;

function TFRelData.ImpRelListagemEntradas: Boolean;
begin
   XDtFiltro := StrToDate(EdDataIni.Text);
   
   XLinImp := XLinImp + 5;

   while(XDtFiltro <= StrToDate(EdDataFim.Text)) do
   begin

   	if XLinImp >= 210 then
       begin
       	NovaPagina;
			ImpRelListagemCabecalho;
           ImpRelListagemSaldoAnterior;
           XLinImp := XLinImp + 8;
           ImpRelListagemCabecalhoEntradas;
           XLinImp := XLinImp + 5;           
       end;

   	DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select lancaixa.doc, lancaixa.tipo, lancaixa.historico, lancaixa.valor, abcaixa.cod_caixa ');
       DMESTOQUE.Alx.SQL.Add(' from lancaixa left join abcaixa on lancaixa.cod_abcaixa = abcaixa.cod_abcaixa ');
       DMESTOQUE.Alx.SQL.Add(' where lancaixa.tipcai = :tipo AND lancaixa.dtlanc = :dt and abcaixa.cod_caixa = :codCaixa ');
       DMESTOQUE.Alx.ParamByName('tipo').AsString := 'E';
       DMESTOQUE.Alx.ParamByName('dt').AsDate := XDtFiltro;
       DMESTOQUE.Alx.ParamByName('codCaixa').AsInteger := DMBANCO.TAlx.fieldbyName('cod_caixa').AsInteger;
       DMESTOQUE.Alx.Open;
              
       if DMESTOQUE.Alx.fieldbyName('historico').AsString <> '' then
       begin
			Imprime(rvControleVendServ, XLinImp,5, DMESTOQUE.Alx.fieldbyName('doc').AsString, 'Verdana',9,clBlack, false);
 			Imprime(rvControleVendServ, XLinImp,45, DMESTOQUE.Alx.fieldbyName('tipo').AsString, 'Verdana',9,clBlack, false);
  			Imprime(rvControleVendServ, XLinImp,75, DMESTOQUE.Alx.fieldbyName('historico').AsString, 'Verdana',9,clBlack, false);
  			Imprime(rvControleVendServ, XLinImp,275, FormatFloat('###,##0.00', DMESTOQUE.Alx.fieldbyName('valor').AsCurrency), 'Verdana',9,clBlack, false);
           xVlrTotListEntrada := xVlrTotListEntrada + DMESTOQUE.Alx.fieldbyname('valor').AsCurrency;

      	    XLinImp := XLinImp + 5;
       end;
       XDtFiltro := IncDay(XDtFiltro, 1);
   end;

   //Depois do looping escreve o total
   XLinImp := XLinImp + 5;
  	Imprime(rvControleVendServ, XLinImp,5, '(=) RESULTADO DAS ENTRADAS:','Verdana',10,clBlack, true);
  	Imprime(rvControleVendServ, XLinImp,270, 'R$'+FormatFloat('###,##0.00', xVlrTotListEntrada),'Verdana',10,clBlack, true);
   XLinImp := XLinImp + 3;      
	Imprime(rvControleVendServ,XLinImp,5,'_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _','Verdana',10,clBlack, true);
end;

function TFRelData.ImpRelListagemSaldoFinal: Boolean;
begin

	if XLinImp >= 210 then
	begin
   	NovaPagina;
       ImpRelListagemCabecalho;
       ImpRelListagemSaldoAnterior;
       XLinImp := XLinImp + 8;
	end;
   
  	Imprime(rvControleVendServ, XLinImp,5, '(=) SALDO EM CAIXA PARA A DATA:','Verdana',10,clBlack, true);
  	Imprime(rvControleVendServ, XLinImp,270,'R$'+FloatToStr(xVlrTotListEntrada-xVlrTotListSaida+xValorAnterior),'Verdana',10,clBlack, true);
   XLinImp := XLinImp + 3;
	Imprime(rvControleVendServ,XLinImp,5,'_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _','Verdana',10,clBlack, true);
end;

function TFRelData.ImpRelListagemSaidas: Boolean;
begin
	XDtFiltro := StrToDate(EdDataIni.Text);
   
   XLinImp := XLinImp + 5;
   
   while(XDtFiltro <= StrToDate(EdDataFim.Text)) do
   begin

   	if XLinImp >= 210 then
       begin
       	NovaPagina;
			ImpRelListagemCabecalho;
           ImpRelListagemSaldoAnterior;
           XLinImp := XLinImp + 8;
           ImpRelListagemCabecalhoSaidas;
           XLinImp := XLinImp + 5;                      
       end;
       
   	DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select lancaixa.doc, lancaixa.tipo, lancaixa.historico, lancaixa.valor, abcaixa.cod_caixa ');
       DMESTOQUE.Alx.SQL.Add(' from lancaixa left join abcaixa on lancaixa.cod_abcaixa = abcaixa.cod_abcaixa ');
       DMESTOQUE.Alx.SQL.Add(' where lancaixa.tipcai = :tipo AND lancaixa.dtlanc = :dt and abcaixa.cod_caixa = :codCaixa ');
       DMESTOQUE.Alx.ParamByName('tipo').AsString := 'S';
       DMESTOQUE.Alx.ParamByName('dt').AsDate := XDtFiltro;
       DMESTOQUE.Alx.ParamByName('codCaixa').AsInteger := DMBANCO.TAlx.fieldbyName('cod_caixa').AsInteger;
       DMESTOQUE.Alx.Open;
              
       if DMESTOQUE.Alx.fieldbyName('historico').AsString <> '' then
       begin
			Imprime(rvControleVendServ, XLinImp,5, DMESTOQUE.Alx.fieldbyName('doc').AsString, 'Verdana',9,clBlack, false);
 			Imprime(rvControleVendServ, XLinImp,45, DMESTOQUE.Alx.fieldbyName('tipo').AsString, 'Verdana',9,clBlack, false);
  			Imprime(rvControleVendServ, XLinImp,75, DMESTOQUE.Alx.fieldbyName('historico').AsString, 'Verdana',9,clBlack, false);
  			Imprime(rvControleVendServ, XLinImp,275, FormatFloat('###,##0.00', DMESTOQUE.Alx.fieldbyName('valor').AsCurrency), 'Verdana',9,clBlack, false);
           xVlrTotListSaida := xVlrTotListSaida + DMESTOQUE.Alx.fieldbyname('valor').AsCurrency;

      	    XLinImp := XLinImp + 5;
       end;
       XDtFiltro := IncDay(XDtFiltro, 1);
   end;

   XLinImp := XLinImp + 5;
  	Imprime(rvControleVendServ, XLinImp,5, '(=) RESULTADO DAS SAÍDAS:','Verdana',10,clBlack, true);
  	Imprime(rvControleVendServ, XLinImp,270,'R$'+FormatFloat('###,##0.00', xVlrTotListSaida),'Verdana',10,clBlack, true);
   XLinImp := XLinImp + 3;
	Imprime(rvControleVendServ,XLinImp,5,'_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _','Verdana',10,clBlack, true);
end;

function TFRelData.ImpRelListagemSaldoAnterior: Boolean;
begin
	DMESTOQUE.Alx5.Close;
   DMESTOQUE.Alx5.SQL.Clear;
   DMESTOQUE.Alx5.SQL.Add('select lancaixa.saldoant  from lancaixa ');
   DMESTOQUE.Alx5.SQL.Add('where lancaixa.dtlanc = :dt');
   DMESTOQUE.Alx5.ParamByName('dt').AsDateTime := StrToDate(EdDataIni.Text);
   DMESTOQUE.Alx5.Open;

   xValorAnterior := DMESTOQUE.Alx5.fieldbyname('saldoant').AsCurrency;

   Imprime(rvControleVendServ, XLinImp,5, 'SALDO ANTERIOR: R$'+FormatFloat('##,##0.00', xValorAnterior),'Verdana',10,clBlack, true);
end;

function TFRelData.ImpRelListagemCabecalho: Boolean;
begin
	xLinImp:=3;
	XLinImp:=XLinImp+5;
   Imprime(rvControleVendServ, XLinImp,5, DMMACS.TEmpresa.fieldByName('FANTASIA').AsString + ' / ' + 'Fone :'+DMMACS.TEmpresa.fieldByName('FONE').AsString ,'Verdana',11,clBlack, true);
  	Imprime(rvControleVendServ, XLinImp,260, 'Emissão:'+DateToStr(Date),'Verdana',7,clBlack, false);
   XLinImp:=XLinImp+4;
  	Imprime(rvControleVendServ, XLinImp,5, 'Loja: '+DMMACS.TLoja.fieldByName('DESCRICAO').AsString,'Verdana',10,clBlack, false);
  	Imprime(rvControleVendServ, XLinImp,269, 'Hora:'+ TimeToStr(Time),'Verdana',7,clBlack, false);
  	XLinImp:=XLinImp+4;
  	Imprime(rvControleVendServ, XLinImp,280, 'Pag.: '+IntToStr(xNumPagina),'Verdana',7,clBlack, false);
   //Titulo
  	XLinImp:=XLinImp+5;
  	Imprime(rvControleVendServ, XLinImp-3, 100, 'Listagem de Lançamentos por Caixa','Verdana',12,clBlack, true);

   //Filtro
	XLinImp:=XLinImp+5;
   If RdGrpGerencial.ItemIndex=0 Then
   	Imprime(rvControleVendServ, XLinImp,5, 'Intervalo Dt. Referência: '+ EdDataIni.Text+' - '+EdDataFim.Text ,'Verdana',7,clBlack, false)
   Else
   	Imprime(rvControleVendServ, XLinImp,5, 'Intervalo Dt. Débito: '+ EdDataIni.Text+' - '+EdDataFim.Text ,'Verdana',7,clBlack, false);

  	XLinImp:=XLinImp+2;
   Imprime(rvControleVendServ,XLinImp,5,'________________________________________________________________________________________________________________________','Verdana',10,clBlack, true);
	XLinImp := XLinImp + 5;
end;

procedure TFRelData.dbComboBoxCaixa2Click(Sender: TObject);
begin
  inherited;
	xEscolheu := true;
end;

function TFRelData.ImpRelListagemCabecalhoEntradas: Boolean;
begin
	Imprime(rvControleVendServ, XLinImp,5, '(+) ENTRADAS','Verdana',10,clBlack, true);
   XLinImp := XLinImp + 5;
 	Imprime(rvControleVendServ, XLinImp,5, 'DOCUMENTO','Verdana',10,clBlack, true);
 	Imprime(rvControleVendServ, XLinImp,45, 'TIPO','Verdana',10,clBlack, true);
  	Imprime(rvControleVendServ, XLinImp,75, 'HISTÓRICO','Verdana',10,clBlack, true);
  	Imprime(rvControleVendServ, XLinImp,275, 'VALOR','Verdana',10,clBlack, true);
end;

function TFRelData.ImpRelListagemCabecalhoSaidas: Boolean;
begin
	Imprime(rvControleVendServ, XLinImp,5, '(-) SAÍDAS','Verdana',10,clBlack, true);
   XLinImp := XLinImp + 5;
 	Imprime(rvControleVendServ, XLinImp,5, 'DOCUMENTO','Verdana',10,clBlack, true);
 	Imprime(rvControleVendServ, XLinImp,45, 'TIPO','Verdana',10,clBlack, true);
  	Imprime(rvControleVendServ, XLinImp,75, 'HISTÓRICO','Verdana',10,clBlack, true);
  	Imprime(rvControleVendServ, XLinImp,275, 'VALOR','Verdana',10,clBlack, true);
end;

function TFRelData.RetornaValorReceber(XCod_sub:Integer): Real;
Var
	Xvalor_Ret :Real;
begin
  	MDO.QAlx2.Close;
	MDO.QAlx2.SQL.Clear;
	MDO.QAlx2.SQL.Add(' select subservico.cod_subservico, sum(((parcelacr.valor / 100) * (  itservord.vlrunit * 100)) / ordem.totord )as receber ');
	MDO.QAlx2.SQL.Add(' from parcelacr');
	MDO.QAlx2.SQL.Add(' left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber');
	MDO.QAlx2.SQL.Add(' left join ordem on ctareceber.cod_gerador = ordem.cod_ordem');
	MDO.QAlx2.SQL.Add(' left join itservord on ordem.cod_ordem = itservord.cod_ordem');
	MDO.QAlx2.SQL.Add(' left join subservico on itservord.cod_servico =  subservico.cod_subservico');
	MDO.QAlx2.SQL.Add(' where subservico.cod_subservico = :COD_SER');
	MDO.QAlx2.SQL.Add(' and parcelacr.fech = ''N''');
	MDO.QAlx2.SQL.Add(' and ctareceber.tipogerador = ''ORD''');
	MDO.QAlx2.SQL.Add(' and parcelacr.dtvenc between :DATA1 and :DATA2');
	MDO.QAlx2.SQL.Add(' group by subservico.cod_subservico');
   MDO.QAlx2.ParamByName('COD_SER').AsInteger :=XCod_sub;
   MDO.QAlx2.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
	MDO.QAlx2.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
   MDO.QAlx2.Open;

   MDO.QAlx2.Open;
   
   if(MDO.QAlx2.FieldByName('RECEBER').asString= '' )then
   	begin
		    Xvalor_Ret := 0;
       end
   else
   	begin
  			Xvalor_Ret := StrToFloat(MDO.QAlx2.FieldByName('RECEBER').asString);
	 	end;

	result:= Xvalor_Ret;
end;

function TFRelData.RetornaValorRecebido(XCod_sub: Integer): Real;
begin
	Mdo.QAlx2.Close;
   Mdo.QAlx2.sql.Clear;
   Mdo.QAlx2.sql.Add(' select distinct(subservico.cod_subservico), sum(((((parcelacr.valor / 100) * parcelacr.pervlrserv) / 100) *((itservord.vlrunit * 100)/  ordem.totord))) as recebido ');
	Mdo.QAlx2.sql.Add(' from parcelacr');
	Mdo.QAlx2.sql.Add(' left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber');
	Mdo.QAlx2.sql.Add(' left join ordem on ctareceber.cod_gerador = ordem.cod_ordem');
	Mdo.QAlx2.sql.Add(' left join itservord on ordem.cod_ordem = itservord.cod_ordem');
	Mdo.QAlx2.sql.Add(' left join subservico on itservord.cod_servico =  subservico.cod_subservico');
	Mdo.QAlx2.sql.Add(' where subservico.cod_subservico = :COD_SER');
	Mdo.QAlx2.sql.Add(' and parcelacr.fech = ''S''');
	Mdo.QAlx2.sql.Add(' and ctareceber.tipogerador = ''ORD''');
	Mdo.QAlx2.sql.Add(' AND PARCELACR.DTDEBITO BETWEEN :DATA1 AND :DATA2 ');
	Mdo.QAlx2.sql.Add(' group by subservico.cod_subservico');
   Mdo.QAlx2.ParamByName('COD_SER').AsInteger :=XCod_sub;
   Mdo.QAlx2.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
	Mdo.QAlx2.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
   Mdo.QAlx2.Open;


   {if(mdo.QAlx2.FieldByName('recebido').asString= '' )then
   begin
	    Xvalor_Ret := 0;
   end
   else
   begin
  		Xvalor_Ret := StrToFloat(mdo.QAlx2.FieldByName('recebido').asString);
   end;

	result:= Xvalor_Ret;}
end;

function TFRelData.RetornaValorPrestado(XCod_sub: Integer): Real;
begin
	Mdo.QAlx2.Close;
   Mdo.QAlx2.sql.Clear;
   Mdo.QAlx2.sql.Add('select sum(i.vlrunit)as vl_prestado from ordem o ');
	Mdo.QAlx2.sql.Add('left join itservord i on o.cod_ordem = i.cod_ordem');
	Mdo.QAlx2.sql.Add('where o.dtfech between :DATA1 and :DATA2');
	Mdo.QAlx2.sql.Add('and i.cod_servico = :COD_SER');
   Mdo.QAlx2.ParamByName('COD_SER').AsInteger :=XCod_sub;
   Mdo.QAlx2.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
	Mdo.QAlx2.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
   Mdo.QAlx2.Open;
   {if mdo.QAlx2.FieldByName('vl_prestado').asString= '' then
	    Xvalor_Ret := 0
   else
  		Xvalor_Ret := StrToFloat(mdo.QAlx2.FieldByName('vl_prestado').asString);
       
	result := Xvalor_Ret;}

end;

function TFRelData.RetornaValorRecebido_a_Vista(XCod_sub: Integer): Real;
begin
   MDO.QAlx2.Close;
   MDO.QAlx2.sql.Clear;
   MDO.QAlx2.SQL.Add(' SELECT SUM(ITSERVORD.TOTAL) VL_RECEBIDO_A_VISTA FROM ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN ITSERVORD ON ORDEM.COD_ORDEM = ITSERVORD.COD_ORDEM ');
   MDO.QAlx2.SQL.Add(' WHERE ORDEM.DTFECH BETWEEN :DATA1 AND :DATA2 ');
   MDO.QAlx2.SQL.Add(' AND ITSERVORD.COD_SERVICO = :COD_SER ');
   MDO.QAlx2.SQL.Add(' AND ORDEM.COD_FORMPAG = (SELECT P.COD_FORMPAG FROM FORMPAG P WHERE P.DESCRICAO = ''À VISTA'') ');
   MDO.QAlx2.ParamByName('COD_SER').AsInteger := XCod_sub;
   MDO.QAlx2.ParamByName('DATA1').AsDate := StrToDAte(EdDataIni.Text);
	MDO.QAlx2.ParamByName('DATA2').AsDate := StrToDAte(EdDataFim.Text);
   MDO.QAlx2.Open;
{   if MDO.QAlx2.FieldByName('vl_recebido_a_vista').AsString = '' then
		Xvalor_Ret := 0
   else
		Xvalor_Ret := StrToFloat(mdo.QAlx2.FieldByName('vl_recebido_a_vista').AsString);
       
   result := Xvalor_Ret; }
end;

function TFRelData.RetornaDescSubServico(XCod_sub: Integer): String;
begin
	Mdo.QAlx2.Close;
   Mdo.QAlx2.SQL.Clear;
	Mdo.QAlx2.SQL.Add(' select subservico.descricao from subservico ');
	Mdo.QAlx2.SQL.Add(' where subservico.cod_subservico = :COD_SER ');
   Mdo.QAlx2.ParamByName('COD_SER').AsInteger :=XCod_sub;
   Mdo.QAlx2.Open;
	XDescricaoSubServico := mdo.QAlx2.FieldByName('descricao').asString;
   result := XDescricaoSubServico;  
end;

//Edmar - 20/07/2015 - Retorna o valor total do serviço prestado a vista
//ONDE DTFECH DA ORDEM FOR IGUAL AO INTERVALO DA DATA
//BUSCAR DE CTA. RECEBER ONDE DTLANC = INTERVALO DA DATA E
//DT. LANC = DT. DEBITO (CARACTERIZANDO ENTRADA A VISTA)
function TFRelData.X1TotalAVista(xCodServico: Integer): Real;
var
	XAuxAVista1, XAuxAVista2: Real;
begin   
   //retorna apenas o valor do serviço onde a ordem for a vista
   MDO.QAlx2.Close;
   MDO.QAlx2.SQL.Clear;
   MDO.QAlx2.SQL.Add(' SELECT SUM(ITSERVORD.TOTAL) AVISTA FROM ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN ITSERVORD ON ORDEM.COD_ORDEM = ITSERVORD.COD_ORDEM ');
   MDO.QAlx2.SQL.Add(' WHERE (ORDEM.DTFECH BETWEEN :DTINI AND :DTFIM) AND (ITSERVORD.COD_SERVICO = :SERVICO) ');
   MDO.QAlx2.SQL.Add(' AND (ORDEM.COD_FORMPAG = (SELECT P.COD_FORMPAG FROM FORMPAG P WHERE P.DESCRICAO = ''À VISTA'')) ');
   MDO.QAlx2.ParamByName('DTINI').AsDate := StrToDate(EdDataIni.Text);
   MDO.QAlx2.ParamByName('DTFIM').AsDate := StrToDate(EdDataFim.Text);
   MDO.QAlx2.ParamByName('SERVICO').AsInteger := xCodServico;      
   MDO.QAlx2.Open;

   XAuxAVista1 := MDO.QAlx2.FieldByName('AVISTA').AsCurrency;

   //retorna o valor do serviço onde foi gerado uma cta. receber com entrada (que caracteriza a vista)
   MDO.QAlx2.Close;
   MDO.QAlx2.SQL.Clear;
	MDO.QAlx2.SQL.Add(' SELECT DISTINCT(ITSERVORD.COD_SERVICO), SUM(((((PARCELACR.VALOR / 100) * PARCELACR.PERVLRSERV) / 100) * ((ITSERVORD.VLRUNIT * 100) /  ORDEM.TOTORD))) AVISTA FROM ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_GERADOR = ORDEM.COD_ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN PARCELACR ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN ITSERVORD ON ITSERVORD.COD_ORDEM = ORDEM.COD_ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN SUBSERVICO ON SUBSERVICO.COD_SUBSERVICO = ITSERVORD.COD_SERVICO ');
   MDO.QAlx2.SQL.Add(' WHERE (CTARECEBER.TIPOGERADOR = ''ORD'') AND (PARCELACR.FECH = ''S'') AND (ITSERVORD.COD_SERVICO = :SERVICO) ');
   MDO.QAlx2.SQL.Add(' AND (CTARECEBER.DTLANC BETWEEN :DTINI AND :DTFIM) AND (CTARECEBER.DTLANC = PARCELACR.DTDEBITO) ');
   MDO.QAlx2.SQL.Add(' GROUP BY ITSERVORD.COD_SERVICO ');
   MDO.QAlx2.ParamByName('SERVICO').AsInteger := xCodServico;
   MDO.QAlx2.ParamByName('DTINI').AsDate := StrToDate(EdDataIni.Text);
   MDO.QAlx2.ParamByName('DTFIM').AsDate := StrToDate(EdDataFim.Text);
   MDO.QAlx2.Open;

   XAuxAVista2 := MDO.QAlx2.FieldByName('AVISTA').AsCurrency;
   
   Result := XAuxAVista1 + XAuxAVista2;
end;

//Edmar - 20/07/2015 - Retorna o valor total do serviço prestado a prazo
//ONDE DTFECH DA ORDEM = INTERVALO DA DATA
//ONDE A OS NÃO FOR A VISTA
//TANTO CTA. RECEBER ABERTA OU FECHADAS E DTVENC <> DTLANC 
function TFRelData.X2TotalAPrazo(xCodServico: Integer): Real;
begin
	//
   MDO.QAlx2.Close;
   MDO.QAlx2.SQL.Clear;
   MDO.QAlx2.SQL.Add(' SELECT SUM(((((PARCELACR.VALOR / 100) * PARCELACR.PERVLRSERV) / 100) * ((ITSERVORD.VLRUNIT * 100) /  ORDEM.TOTORD))) APRAZO FROM ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_GERADOR = ORDEM.COD_ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN PARCELACR ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN ITSERVORD ON ITSERVORD.COD_ORDEM = ORDEM.COD_ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN SUBSERVICO ON SUBSERVICO.COD_SUBSERVICO = ITSERVORD.COD_SERVICO ');
   MDO.QAlx2.SQL.Add(' WHERE (CTARECEBER.TIPOGERADOR = ''ORD'') AND (ORDEM.DTFECH BETWEEN :DTINI AND :DTFIM) ');
   MDO.QAlx2.SQL.Add(' AND (ITSERVORD.COD_SERVICO = :SERVICO) AND (CTARECEBER.DTLANC <> PARCELACR.DTVENC) ');
   MDO.QAlx2.SQL.Add(' AND (ORDEM.COD_FORMPAG <> (SELECT P.COD_FORMPAG FROM FORMPAG P WHERE P.DESCRICAO = ''À VISTA'')) ');
   MDO.QAlx2.ParamByName('SERVICO').AsInteger := xCodServico;
   MDO.QAlx2.ParamByName('DTINI').AsDate := StrToDate(EdDataIni.Text);
   MDO.QAlx2.ParamByName('DTFIM').AsDate := StrToDate(EdDataFim.Text);
   MDO.QAlx2.Open;

   Result := MDO.QAlx2.FieldByName('APRAZO').AsCurrency;
end;

//Edmar - 20/07/2015 - Retorna o valor total do serviço que ainda não foram recebidos.
//ONDE PARCELACR.FECH = N e DTVENC = INTERVALO DAS DATAS
function TFRelData.X4TotalAReceber(xCodServico: Integer): Real;
begin
	//
   MDO.QAlx2.Close;
   MDO.QAlx2.SQL.Clear;
   MDO.QAlx2.SQL.Add(' SELECT SUM(((((PARCELACR.VALOR / 100) * PARCELACR.PERVLRSERV) / 100) * ((ITSERVORD.VLRUNIT * 100) /  ORDEM.TOTORD))) RECEBER FROM ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_GERADOR = ORDEM.COD_ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN PARCELACR ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN ITSERVORD ON ITSERVORD.COD_ORDEM = ORDEM.COD_ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN SUBSERVICO ON SUBSERVICO.COD_SUBSERVICO = ITSERVORD.COD_SERVICO ');
   MDO.QAlx2.SQL.Add(' WHERE (CTARECEBER.TIPOGERADOR = ''ORD'') AND (ITSERVORD.COD_SERVICO = :SERVICO) ');
   MDO.QAlx2.SQL.Add(' AND (PARCELACR.FECH = ''N'') AND (PARCELACR.DTVENC BETWEEN :DTINI AND :DTFIM) ');
   MDO.QAlx2.ParamByName('SERVICO').AsInteger := xCodServico;
   MDO.QAlx2.ParamByName('DTINI').AsDate := StrToDate(EdDataIni.Text);
   MDO.QAlx2.ParamByName('DTFIM').AsDate := StrToDate(EdDataFim.Text);
   MDO.QAlx2.Open;

   Result := MDO.QAlx2.FieldByName('RECEBER').AsCurrency;
end;

//Edmar - 20/07/2015 - Retorna o valor total do serviço que já foi recebido.
//ONDE CTARECEBER.FECH = S e DTDEBITO = INTERVALO DAS DATAS
function TFRelData.X5TotalRecebidos(xCodServico: Integer): Real;
begin
	//
   MDO.QAlx2.Close;
   MDO.QAlx2.SQL.Clear;
   MDO.QAlx2.SQL.Add(' SELECT SUM(((((PARCELACR.VALOR / 100) * PARCELACR.PERVLRSERV) / 100) * ((ITSERVORD.VLRUNIT * 100) /  ORDEM.TOTORD))) RECEBIDO FROM ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_GERADOR = ORDEM.COD_ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN PARCELACR ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN ITSERVORD ON ITSERVORD.COD_ORDEM = ORDEM.COD_ORDEM ');
   MDO.QAlx2.SQL.Add(' LEFT JOIN SUBSERVICO ON SUBSERVICO.COD_SUBSERVICO = ITSERVORD.COD_SERVICO ');
   MDO.QAlx2.SQL.Add(' WHERE (CTARECEBER.TIPOGERADOR = ''ORD'') AND (ITSERVORD.COD_SERVICO = :SERVICO) ');
   MDO.QAlx2.SQL.Add(' AND (PARCELACR.FECH = ''S'') AND (PARCELACR.DTDEBITO BETWEEN :DTINI AND :DTFIM) ');
   MDO.QAlx2.ParamByName('SERVICO').AsInteger := xCodServico;
   MDO.QAlx2.ParamByName('DTINI').AsDate := StrToDate(EdDataIni.Text);
   MDO.QAlx2.ParamByName('DTFIM').AsDate := StrToDate(EdDataFim.Text);
   MDO.QAlx2.Open;

   Result := MDO.QAlx2.FieldByName('RECEBIDO').AsCurrency;   
end;

Procedure TFRelData.FiltraPeriodos;
Var Value : Variant;
Begin
   try
       DMCAIXA.TAlx.Close;
       DMCAIXA.TAlx.SQL.Clear;
       DMCAIXA.TAlx.SQL.Add(' Select * from abcaixa where abcaixa.cod_caixa=:codigo order by abcaixa.dtabertura desc ');
       DMCAIXA.TAlx.ParamByName('codigo').AsInteger:=DMCAIXA.TCaixa.FieldByName('cod_caixa').AsInteger;
       DMCAIXA.TAlx.Open;

       DMFINANC.TALX.Close;
       DMFINANC.TALX.SQL.Clear;
       DMFINANC.TALX.SQL.Add(' Select * from abcaixa where abcaixa.cod_caixa=:codigo order by abcaixa.dtabertura desc ');
       DMFINANC.TALX.ParamByName('codigo').AsInteger:=DMCAIXA.TCaixa.FieldByName('cod_caixa').AsInteger;
       DMFINANC.TALX.Open;

       dblPeriodoInicial.ListSource := DMCAIXA.DAlx;
       dblPeriodoFinal.ListSource := DMFINANC.DSALX;
       {Try
           Value := dblPeriodoInicial.KeyValue;
           dblPeriodoInicial.KeyValue := 1;
           dblPeriodoInicial.KeyValue := Value;

           Value := dblPeriodoFinal.KeyValue;
           dblPeriodoFinal.KeyValue := 1;
           dblPeriodoFinal.KeyValue := Value;
       Except
       End; }
   Except
   end;
end;
procedure TFRelData.dblCaixaExit(Sender: TObject);
begin
  inherited;
    FiltraPeriodos;
end;

procedure TFRelData.dblCaixaDropDown(Sender: TObject);
Var Value : Variant;
begin
  inherited;
  Try
    Value := dblCaixa.KeyValue;
    dblCaixa.KeyValue := 5;
    dblCaixa.KeyValue := Value;
  Except
  End;
end;

End.

