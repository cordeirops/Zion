Unit UPadraoFiscal;

Interface

Uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, EditFloat,
    ColorEditFloat, Mask, ColorMaskEdit, ComCtrls, Grids, DBGrids,
    FashionPanel, IBQuery, Printers, Winspool, frxClass, NFe_Util_2G_TLB,
  TFlatEditUnit, TFlatComboBoxUnit;

Type
    TFPadraoFiscal = Class(TFPadrao)
        Panel1: TPanel;
        Shape1: TShape;
        LNomePessoa: TLabel;
        EdNumeroFiscal: TColorEditFloat;
        Label1: TLabel;
        BtnProcuraPessoa: TBitBtn;
        Shape2: TShape;
        LCpfCnpj: TLabel;
        Shape3: TShape;
        LMunicipio: TLabel;
        LUF: TLabel;
        Shape4: TShape;
        LInscEstadual: TLabel;
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
        Shape39: TShape;
        LCodIbge: TLabel;
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
    cbConsumidorFinal: TCheckBox;
    PFalha: TPanel;
    ShErro: TShape;
    EdErro: TEdit;
        Procedure FormActivate(Sender: TObject);
        Procedure BtnProcuraPessoaClick(Sender: TObject);
        Procedure EdErroClick(Sender: TObject);
        Procedure SpeedButton1Click(Sender: TObject);
        Procedure EdFreteContaKeyPress(Sender: TObject; Var Key: Char);
        Procedure EdBaseICMSSTExit(Sender: TObject);
        Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
        Procedure CBFreteNFClick(Sender: TObject);
        Procedure EdVlrFreteExit(Sender: TObject);
        Procedure BtnProcuraTranspClick(Sender: TObject);
        Procedure BitBtn1Click(Sender: TObject);
        Procedure BitBtn2Click(Sender: TObject);
        Procedure FormKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure BitBtn3Click(Sender: TObject);
        Procedure EdVlrIcmsExit(Sender: TObject);
        Procedure PCDadosAdicionaisChange(Sender: TObject);
        Procedure PCReservadosFiscoChange(Sender: TObject);
        Procedure BtnImprimirClick(Sender: TObject);
        Procedure PCDadosAdicionaisExit(Sender: TObject);
        Procedure PCReservadosFiscoExit(Sender: TObject);
        Procedure EdDtsaidaEntradaExit(Sender: TObject);
        Procedure BtnAlterarPeriodoClick(Sender: TObject);
        Procedure EdNumeroFiscalExit(Sender: TObject);
        Procedure BtnAbreLoteClick(Sender: TObject);
        Procedure Panel1Exit(Sender: TObject);
        Procedure BtnCancelaLoteClick(Sender: TObject);
        Procedure BtnLoteOkClick(Sender: TObject);
        Procedure EdNumNFeExit(Sender: TObject);
        Procedure EdPlacaVeiculoKeyDown(Sender: TObject; Var Key: Word;
            Shift: TShiftState);
        Procedure EdPlacaVeiculoKeyPress(Sender: TObject; Var Key: Char);
    procedure DbGridServicosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
      procedure DbGridServicosDblClick(Sender: TObject);
      procedure cbRetIssExit(Sender: TObject);
      procedure btnSetaPadraoClick(Sender: TObject);
    procedure btnInsereChaveClick(Sender: TObject);
    procedure EdOutrasDespesasExit(Sender: TObject);
    procedure cbTipoDocumentoChange(Sender: TObject);
    procedure cbConsumidorFinalClick(Sender: TObject);
      private
    { Private declarations }
    //Função que chama todas as demais atualizando os dados na tela
        Function Atualiza: Boolean;
    //Função para inicializar variáveis
        Function InicializaVar: Boolean;
    //Função para iniciar as variaveis de uf de origem e destino
        //Function InicializaVarUF: Boolean;
    //Função Utilizada para registrar no memo de falhas os erros e falhas na validação
        Function RegistraFalha(Texto: String): Boolean;
    //Função utilizada para escrever Pessoa (Cliente/Fornecedor)
        Function EscrevePessoa: Boolean;
    //Função utilizada para escrever todos os itens de produto
        Function EscreveItensProduto: Boolean;
    //Função utilizada para escrever todos os itens de Serviço/Desepesas adicionais
        Function EscreveItensServ: Boolean;
    //Função para validar os serviços (Despesas adicionais)
        Function ValidaDespadic: Boolean;
    //Função para validar os produtos
        Function ValidaProdutos: Boolean;
    //Função para verificar a configuração dos cfops em loja para produtos
        Function VerificaCfopProdutoLoja: Boolean;
    //Função para validar os CFOP de produtos conforme localização de comercialização e CST
        Function ValidaCfopProdutos: Boolean;
	//Função para Atualizar o cst/csosn de acordo com o situação e operação ocorrida
//	     Function AtualizaCstCsosn: Boolean;
    //Função Utilizada para atualizar aliquota e valor total da tributação para cada item na nota
        Function AtualizaValorTotalTributacaoItem: Boolean;
    //Função para validar C.S.T. dos produtos
        Function ValidaCstProdutos: Boolean;
    //Função para Escrever os CFOPS usados na NF
        Function EscreveCfops: Boolean;
    // Função para validar dados fiscais da empresa
        Function ValidaDadosEmpresa: boolean;
    //Função utilizada para validar os dados reservados ao fisco
        Function ValidaReservadoFisco: Boolean;
    //Função utilizada para validar os dados adicionais
        Function ValidaDadosAdicionais: Boolean;
    //Função utilizada para Selecionar as tabelas Master (pedido de venda, pedido de compra e ordem)
        Function SelecionaTabelasPedidos: Boolean;
    //Função para validar UN dos produtos
        Function ValidaUNProdutos: Boolean;
    //Função para validar NCM dos produtos
        Function ValidaNCMProdutos: Boolean;
    // Função para validar a numeração da NF
        Function ValidaNumNf: boolean;
    //Função utilizada para Calcular e dividir o desconto proporcialmente da NF entre todos os produtos
        Function CalcDescProdutosNf: Boolean;
    //Função utilizada para Calcular e dividir o desconto proporcialmente da NF entre os serviços
        Function CalcDescServicosNf: Boolean;
    //Função utilizada para Calcular e total da Nota Fiscal
        Function CalcTotalNF: Boolean;
    //Função utilizada para Calcular Impostos da NF
        Function CalcImpostosNF: Boolean;
    //Função utilizada para Calcular Impostos de cada item de produto da NF
        Function CalcImpostosProdutosNF: Boolean;
		 //Função utilizada para Calcular Icms Substituição Tributária Industrias do Simples
//		 Function CalculoIcmsSubstituicaoInsustriasSimples: Boolean;
		 //Função utilizada para Calcular Icms Substituição Tributária para empresas normais
		 Function CalculoIcmsSubstituicaoEmpresaNormal: Boolean;
		 //funcção utilizada em pedido de compra para zerar os icms negatrivos
		 Function ZeraIcmsNegativosProdutosNF: Boolean;

    //Função utilizada para efetuar calculo de rateio de Substituição Tributária entre os Itens de entrada
        Function RateioStEntrada: Boolean;
    //Função utilizada para efetuar o rateio de valor e base icms para pedidos de compra
        Function RateioValorBaseIcms: Boolean;
    //Função utilizada para efetuar o rateio de diferimento de icms entre os itens tributados
        Function RateioDiferimento: Boolean;
    //Função utilizada para limpar os labels e edits de transportadora
        Procedure LimpaLabelTransp;
    //Função utilizada para limpar os valores de edits de impostos
        Procedure LimpaValoresImpostos;
    //Função utilizada para localizar o codigo (chave primaria) do periodo para lançar os documentos fiscais
        Function BuscaPeriodoFiscal: Boolean;
    //Função utilizada para enviar nota fiscal para impressão
        Function ImpNf: Boolean;
    //Função utilizada para enviar nota fiscal eletronica para o servidor da receita
        Function ImpNfe: Boolean;
    //Função utilizada para devolver o proximo numero da nota fiscal de saida que seja valido
        Function NfProxnumero: Integer;
    //Função para retornar o próximo numero fiscal válido a impressão
        Function NfProxnumeroNF: Integer;
    //Função utilizada para setar configurações de impressora
        Function NFSetImpressora: Boolean;
    //Imprime cabeçalho em Nota Fiscal
        Function NFCabecalho: Boolean;
    //Seleciona e Imprime a Fatura de Nf da Ordem de Serviço
        Function NFFatura(XTipoOp: Integer): Boolean;
  //Imprime Produtos em Nota Fiscal de Ordem de Serviço
        Function NFProdutos: Boolean;
    //Imprime Despesas em Nota Fiscal
        Function NFDespesas: Boolean;
    //Imprime Impostos marcados com x em Nota Fiscal
        Function NFImpostosX: Boolean;
    //Imprime Impostos calculados em Nota Fiscal
        Function NFImpostos: Boolean;
    //Imprime Transportador em Nota Fiscal
        Function NFTransportadora: Boolean;
    //Imprime Dados Adicionais em Nota Fiscal
        Function NFDadosAdicionais: Boolean;
    //Imprime Dados de Reservado ao fisco
        Function NFReservadoFisco: Boolean;
    //Função Utilizada para imprimir determinado campo
        Function ImpCampo(XCampo: String; XValor: String; XTipoCampo: Char): Boolean;
    //Função Utilizada para calcular as medias de base e valor de icmssubstituição tributária, tendo como base operações de entrada
        Function CalcMediaSubstituicaoTributaria(CodigoEstoque: Integer): Boolean;
    //Procedure utilizada para setar a pagina (papel) atual um novo tamanho
        Procedure SetPrinterPage_9x(Largura, Altura: LongInt);
    //Uma procedure diferente para mudar o tamanho do papel em tprinter
        Procedure SetPrinterPage_Xp(PaperSize, Comp, Alt: integer);
    //função complementar da Verifica impressora Online
        Function VerImpressoraONLINE: Cardinal;
    //Função para remover quebras de linhas dos memos de dados adicionais (enter)
        Function RemoveQuebraLinha(sString: String): String;
    //função para ler a impressora corrente
        Function GetCurrentPrinterHandle: THandle;
    //Paulo 05/03/2011: Mostra a fatura
        Function MostraFatura: Boolean;
    //Paulo 23/09/2011: Função utilizada para escrever todos os itens de Produtos de Consumo
        Function EscreveItensConsumo: Boolean;
    //Paulo 23/09/2011: Função para validar os CFOP de produtos consumo conforme localização de comercialização e CST
        Function ValidaCfopConsumo: Boolean;
    //Edmar - 05/12/2013 - Função utilizada para validar serviços da Nfse
    	 function validaNfse: boolean;
    //Edmar - 12/12/2013 - Função usada para enviar Nfe
    	 function enviaNfe: Boolean;
    //Edmar - 12/12/2013 - Função usada para enviar Nfse
    	 function enviaNfse: Boolean;
    //Edmar - 22/01/2014 - Função usada para verificar se o cliente possui e-mail
        function VerificarEmailTomador(xCodGerador: string):boolean;
    //Edmar - 12/03/2015 - função auxiliar pra fazer dados de devolução
    	 function ValidaDevolucao:Boolean;
    //Edmar - 06/05/2015 - função auxiliar para fazer o rateio do frete do item
    	 function RateioFrete: Boolean;
    //Edmar - 07/05/2015 - função auxiliar para fazer o rateior das despesas acessórias do produtos
    	 function RateioOutDespesas: Boolean;
    //Edmar - 11/06/2015 - função auxiliar para atualizar o tipo do cliente
    	 function AtualizaClienteConsumidor: Boolean;
    public
    { Public declarations }
        //XUfOrigem, XUfDestino: String; //Armazena UF de Origem (Estado da Empresa Usuário) e UF Destino (Estado do cliente ou do fornecedor)
        XCodCstST: Integer;
        xValorTotal, xValorIss: Double;
    End;

Var
    FPadraoFiscal: TFPadraoFiscal;
    XTipo: String; //esta tela é publica para vendas compras e ordens, este campo define se é PEDV PEDC ou ORDEM
    XCod_Pedido: Integer; // Armazena temporariamente qual o código (chave primária) do pedido de venda, pedido de compra ou Ordem de serviço sendo trabalhada
    XCod_Pessoa: Integer; //Armazena temporariamente o código (chave Primária) do cliente ou fornecedor
    XCod_Transp: Integer; // Armazena temporariamente a chave primaria da transportadora
    XValidado: Boolean; //Variavel para controle do formulario, se ela se apresentar verdadeira significa que todas as informações estão Ok
    XCFOP_OP, XCFOP_ST, XCFOP_SERV, XCFOP_MATCONSUMO, XCFOP_PERSONALIZADO: Boolean; //Variáveis para controlar se foram encontradas cfops de operação própria, de substituição e/ ou serviços, e/ou materias de consumo próprio
    XEmpresaTributaST, XEmpresaInustria, XClientedoSimples, {XClienteConsumidorFinal,} XClienteIE: Boolean; //Variavel de controle para determinar se a empresa usuaria do sistema tributa icms de substituição tributária nos impostos da nota ou não
    XCstReducao: Boolean; // Variável para controlar se existe item com codigo de substituição tributária com redução na base de calculo
  //Variáveis para armazenar os Cfops de Entrada
    XCFOPINTDEVPROPRIA, XCFOPEXTDEVPROPRIA, XCFOPINTSTPC, XCFOPEXTSTPC, XCFOPINTPC, XCFOPEXTPC, XCFOPMATCONSUMO, XCFOPMATCONSUMOEXT, XCFOPFRETEINT, XCFOPFRETEEXT: String;
  //Variáveis para armazena os cfop de saida
    XCFOPINTERNO, XCFOPEXTERNO, XCFOPINTERNOCST, XCFOPEXPERTOCST, XCFOPINTSIMPREMESSA, XCFOPEXTSIMPREMESSA: String;
  //Edmar - 23/09/2014 - Armaze o cfop especifico para o produto
  	 XCFOPPERSONALIZADO: String;
  //Variáveis para armazena os cfop de Serviços
    XCfopIntServ, XCfopExtServ: String;
  //Variaveis que definem qual cfop será usado realmente na Nota, disponibilizamos 3 cfops, XCFOP1 = Produto St, XCFOP2 = Produto Op, XCFOP3 = Serviços
    XCFOP1, XCFOP2, XCFOP3: String;
    XCod_Cfop1, XCod_Cfop2, XCod_Cfop3: Integer; //Seleciona os codigos chave primaria para os cfops
  //Variaveis vinda do estado
    XTxtProtocolo: String;
  //Variavel para armazenar chave primária de cst do estado de destino
    XCSTInterestadual: Integer;
    XMvaEstado, XAlqIntDestinatario, XAliqExtDestinatario, XAliqIcms, XAuxBaseIcmsSubstituicao, XAuxVlrIcmsSubstituicao, XAuxIcmsOp: Real;
  //Variaveis Totoalizadoras para produtos
    XTotalProdSemDesc, XTotalProdComDesc: Real;
  //Variaveis Totoalizadoras para servicos
    XAliqIss, XTotalServSemDesc, XTotalServComDesc, xValorTotalServico: Real;
  //Variáveis Totalizadores para NF
    XTotalNF: Real;
  //Variavel de Total de Impostos
    XVlrBaseIcmsOp, XVlrBaseIcmsSt, XVlrIcmsOp, XVlrIcmsSt, XvlrIpi, XVlrAliquotaTotTributa: Real;
    XValorTotalAproxTributacaoEstadual, XValorTotalAproxTributacaoNacional, XAliqTotTribEstadual, XAliqTotTribNacional: Real;
	 //Variáveis abaixo para controle de credito de icms
    XOperacaoCreditoIcms: Boolean;
    XAliquotaCreditoIcms, XValorCreditoIcms: Real;

  //Variáveis para armazenar temporariamente a media de base e valor de icms substituição tributária para casos em que o icms st não é calculado na nf devendo ser apenas incluida em dados adicionais
    XMediaBaseST, XMediaValorST: Real;
  //Variaveis para armazenar temporariamente o nome das tabelas para uso generico
    XTabItemProd, XTabFiscal: TIbQuery;
  //Variavel para pegar o Código do periodo para inserir no documento fiscal
    XCod_Perido_Fiscal: Integer;
    XCFOPOUTROS1, XNomePeriodoFiscal: String;
    XDtIniPeriodo, XDtFimPeriodo: TDate;
    XQTDPAG: Integer; //Variavel que determina a quantidade de paginas a serem impressas na nota
    XNUMLIN, XQTDITEMIMPPAG, XQTDPAGIMP: Integer; //Variavel para controle de linhas para impressão da nota fiscal
    XDadosAdicionaisReimp: Boolean; //Variavel para controlar os dados adicionais em caso de reimpressão... garante que os dados adicionais virão da tabela de documentos fiscais apenas quando ativar o formulario e não possibilitando a edição dos mesmos
    XCuponProx: String; //Paulo 10/08/2010 PAra controle do cupom fiscal
    XAlx, XConta: Integer; //Paulo 10/08/2010 PAra controle do cupom fiscal
    XImpLig: Boolean; //Paulo 23/08/2010: Para verificar se a impressora esta ligada
    XNumECF: String; //Variável utilizada para armazenar numero do cupom fiscal, caso seja a reimpressão de um cupom fiscal para NFe, se não for esta variavel fica em branco
    XEstadoIsentoST: Boolean;
    XFaturaNF, XNatOp: String; //Paulo 11/11/2010: Para a natOp de ordem aparecer com o nome do serviço
    XServicoOp: Boolean; //Paulo 11/11/2010: Para controle na elaboração do xml
    XChaveFiscalNFeXml: String; //Jônatas 29/07/2013 - Armazena a chave da NFe para passar de um form pro outro
    XAtualizaNota: Integer; //Jônatas 31/07/2013 - Verifica se foi pressionado o botão de atualizar(BitBtn2) para controle do edit DtsaidaEntrada
    XrefNfe, XNumNFeComp, XNFeChaveComp: String;//Paulo 01/12/2010: Para armazenar a chave da nfe que será feito o complemento    

Implementation

Uses Alxor32, UDMSaida, UDmServ, UDMEntrada, UDMMacs, Math, UFORNECEDOR,
    UCliente, UDMEstoque, UMenu, UDMPessoa, UDMGEOGRAFIA, UFiscal,
    AlxMessage, UDMCaixa, UDMConta, UPeriodoFiscal, USenha, DB,
    UMzrNfe, UCadCFOP, UPedidoPadrao, Alxorprn, UnitDeclaracoes,
    UValidacaoNFe, UPedCompra, UOrdemMec, UFServico, UMzrNFSe,
  UEscolhaServico, ComObj, UMDO;

{$R *.dfm}

Function TFPadraoFiscal.GetCurrentPrinterHandle: THandle;
Var
    Device, Driver, Port: Array[0..255] Of char;
    hDeviceMode: THandle;
Begin
    Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
    If Not OpenPrinter(@Device, Result, Nil) Then
        RaiseLastWin32Error;
End;

//Função para remover quebras de linhas dos memos de dados adicionais (enter)

Function TFPadraoFiscal.RemoveQuebraLinha(sString: String): String;
Var i: Integer;
    s: String;
Begin
 //  #13#10
    For i := 1 To Length(sString) Do
    Begin
        If (Copy(sString, i, 1) = chr(13)) Or (Copy(sString, i, 1) = chr(10)) Then
            s := s + ' '
        Else
            s := s + Copy(sString, i, 1);
    End;
    Result := s;
End;
//função complementar da Verifica impressora Online

Function TFPadraoFiscal.VerImpressoraONLINE: Cardinal;
Var
    hPrinter: THandle;
    pInfo: PPrinterInfo2;
    bytesNeeded: DWORD;
Begin
    hprinter := GetCurrentPrinterHandle;
    Try
        Winspool.GetPrinter(hPrinter, 2, Nil, 0, @bytesNeeded);
        pInfo := AllocMem(bytesNeeded);
        Try
            Winspool.GetPrinter(hPrinter, 2, pInfo, bytesNeeded, @bytesNeeded);
            Result := pInfo^.Status;
        Finally
            FreeMem(pInfo);
        End;
    Finally
        ClosePrinter(hPrinter);
    End;
End;

//Procedure utilizada para setar a pagina (papel) atual um novo tamanho

Procedure TFPadraoFiscal.SetPrinterPage_9x(Largura, Altura: LongInt);
Var
    Device: Array[0..255] Of char;
    Driver: Array[0..255] Of char;
    Port: Array[0..255] Of char;
    hDMode: THandle;
    PDMode: PDEVMODE;
Begin
    Printer.GetPrinter(Device, Driver, Port, hDMode);
    If hDMode <> 0 Then Begin
        pDMode := GlobalLock(hDMode);
        If pDMode <> Nil Then Begin
            pDMode^.dmFields := pDMode^.dmFields Or DM_PAPERSIZE;
            pDMode^.dmPaperSize := DMPAPER_USER;
            pDMode^.dmPaperWidth := Largura;
            pDMode^.dmPaperLength := Altura;
            GlobalUnlock(hDMode);
        End;
        GLobalFree(hDMode);
    End;
End;

//Uma procedure diferente para mudar o tamanho do papel em tprinter

Procedure SetPrinterPage_Xp(PaperSize, Comp, Alt: integer);
Var
    ADevice, ADriver, APort: Array[0..255] Of char;
    DeviceMode: THandle;
    M: PDevMode;
    s: String;
Begin
   // Força o uso de Printer. Se esta linha for removida, a primeira
   // invocação falha. Bug da VCL
    S := Printer.Printers[Printer.PrinterIndex];
   // Pega dados da impressora atual
    Printer.GetPrinter(ADevice, ADriver, APort, DeviceMode);
   // Pega um ponteiro para DEVMODE
    M := GlobalLock(DeviceMode);
    Try
        If M <> Nil Then
        Begin
           // Muda tamanho do papel
            M^.dmFields := DM_PAPERSIZE;
            If PaperSize = DMPAPER_USER Then
                M^.dmFields := M^.dmFields Or DM_PAPERLENGTH Or DM_PAPERWIDTH;
            M^.dmPaperLength := Alt;
            M^.dmPaperWidth := Comp;
            M^.dmPaperSize := PaperSize; //
           // Atualiza
            Printer.SetPrinter(ADevice, ADriver, APort, DeviceMode);
        End;
    Finally
        GlobalUnlock(DeviceMode);
    End;
End;
//Paulo 01/12/2010: Para selecionar a chave da nota que será feito o complemento
Procedure TFPadraoFiscal.BtnLoteOkClick(Sender: TObject);
Begin
    Inherited;
    XNFeChaveComp := DMSAIDA.TAlx.FieldByName('CHAVE').AsString;
    XNumNFeComp := DMSAIDA.TAlx.FieldByName('NUMFISCAL').AsString;

    PComplementar.SendToBack;
    PComplementar.Visible := False;
End;

Procedure TFPadraoFiscal.BtnCancelaLoteClick(Sender: TObject);
Begin
    Inherited;
    PComplementar.SendToBack;
    PComplementar.Visible := False;
    EdNumNFe.Text := '';
    EdClienteNfe.text := '';
    EdValorNfe.ValueNumeric := 0.00;
End;

Procedure TFPadraoFiscal.Panel1Exit(Sender: TObject);
Begin
    Inherited;
    If PComplementar.Visible = False Then
End;

//Função Utilizada para calcular as medias de base e valor de icmssubstituição tributária, tendo como base operações de entrada

Function TFPadraoFiscal.CalcMediaSubstituicaoTributaria(CodigoEstoque: Integer): Boolean;
Begin
    Try
        Result := True;
        If CodigoEstoque <> 0
            Then Begin
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add(' select  Sum(itenspedc.qtdeprod) as Quantidade, Sum(itenspedc.vlricmssubs) as VlrSubstituicao, Sum(itenspedc.baseicmssubs) As BaseSubstituicao from itenspedc where (itenspedc.cod_estoque=:Codigo) ');
            DMESTOQUE.Alx.ParamByName('Codigo').AsInteger := CodigoEstoque;
            DMESTOQUE.Alx.Open;
            If Not DMESTOQUE.Alx.IsEmpty
                Then Begin
                If DMESTOQUE.Alx.FieldByName('Quantidade').AsCurrency > 0
                    Then Begin
                    XMediaBaseST := DMESTOQUE.Alx.FieldByName('BaseSubstituicao').AsCurrency / DMESTOQUE.Alx.FieldByName('Quantidade').AsCurrency;
                    XMediaValorST := DMESTOQUE.Alx.FieldByName('VlrSubstituicao').AsCurrency / DMESTOQUE.Alx.FieldByName('Quantidade').AsCurrency;
                End
                Else Begin
                    XMediaBaseST := DMESTOQUE.Alx.FieldByName('BaseSubstituicao').AsCurrency;
                    XMediaValorST := DMESTOQUE.Alx.FieldByName('VlrSubstituicao').AsCurrency;
                End;
            End
            Else Begin
                XMediaBaseST := 0;
                XMediaValorST := 0;
            End;
        End
        Else Begin
            XMediaBaseST := 0;
            XMediaValorST := 0;
        End;
    Except
        Result := False;
    End;
End;
//Função Utilizada para imprimir determinado campo

Function TFPadraoFiscal.ImpCampo(XCampo: String; XValor: String; XTipoCampo: Char): Boolean;
Var
    LinhaImp: String;
    XValorMoeda: Real;
    I: Integer;
Begin
   //Localiza o campo a ser impresso
    If FiltraTabela(DMMACS.TNF, 'NF', 'CAMPO', XCampo, '') = True
        Then Begin
        If XTipoCampo = 'S'
            Then Begin
            XValor := XValor;
            If DMMACS.TNF.FieldByName('ALINHAR').AsString = 'D'
                Then Begin
                For I := Length(XValor) To DMMACS.TNF.FieldByName('TAMANHO').AsInteger Do
                    If DMMACS.TNF.FieldByName('ALINHAR').AsString = 'D' Then
                        XValor := ' ' + XValor;

                LinhaImp := XValor;
            End
            Else Begin
                LinhaImp := XValor;
            End;
        End;
        If XTipoCampo = 'M'
            Then Begin
            Try
                If XValor = '' Then
                    XValor := '0';
                XValorMoeda := StrToFloat(TiraPonto(XValor));
            Except
                XValorMoeda := 0;
            End;
            XValor := FormatFloat('0.00', XValorMoeda);
            For I := Length(XValor) To DMMACS.TNF.FieldByName('TAMANHO').AsInteger Do
                If DMMACS.TNF.FieldByName('ALINHAR').AsString = 'D' Then
                    XValor := ' ' + XValor
                Else
                    XValor := XValor + ' ';

            LinhaImp := XValor;
        End;
        Printer.Canvas.Font.Size := DMMACS.TNF.FieldByName('FONTE').AsInteger;
        Try
            Printer.Canvas.TextOut(DMMACS.TNF.FieldByName('COLUNA').AsInteger, DMMACS.TNF.FieldByName('LINHA').AsInteger + XNUMLIN, LinhaImp);
        Except

        End;
    End;
End;

//Imprime Transportador em Nota Fiscal

Function TFPadraoFiscal.NFTransportadora: Boolean;
Begin
    Try
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
    Except
        RegistraFalha('   Falha: Erro ao imprimir transportadora');
        Result := False;
    End;
End;

//Imprime Impostos marcados com x em Nota Fiscal

Function TFPadraoFiscal.NFImpostosX: Boolean;
Begin
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
    If (XTipo = 'ORDEM')
        Then Begin
        ImpCampo('Vlr. ISS', 'X,XX', 'S');
        ImpCampo('Vlr. Tot. Serv.', 'X,XX', 'S');
    End;
End;
//Imprime Produtos em Nota Fiscal

Function TFPadraoFiscal.NfProdutos: Boolean;
Begin
    Result := True;
    Try
       //IMPRIME PRODUTOS DA NF
        While Not DMESTOQUE.TSlave.Eof Do
        Begin
            ImpCampo('Cód. Produto', DMESTOQUE.TSlave.FieldByName('CODIGO').AsString, 'S');
            ImpCampo('Produto', DMESTOQUE.TSlave.FieldByName('PRODUTO').AsString, 'S');
            ImpCampo('Desc. Prod.', DMESTOQUE.TSlave.FieldByName('DESCONTO').AsString, 'M');
            ImpCampo('CFOP Prod.', DMESTOQUE.TSlave.FieldByName('CFOP').AsString, 'S');
            ImpCampo('S.T. Prod.', DMESTOQUE.TSlave.FieldByName('COD_SIT_TRIB').AsString, 'S');
            ImpCampo('Unid. Prod.', DMESTOQUE.TSlave.FieldByName('UNIDADE').AsString, 'S');
            ImpCampo('Quant. Prod.', DMESTOQUE.TSlave.FieldByName('QUANTIDADE').AsString, 'M');
            ImpCampo('Vlr. Unit. Prod.', DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsString, 'M');
            ImpCampo('Vlt. Tot. Prod.', DMESTOQUE.TSlave.FieldByName('TOTAL').AsString, 'M');
            ImpCampo('Aliq. ICMS Prod.', DMESTOQUE.TSlave.FieldByName('ICMS').AsString, 'M');
            XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
            XQTDITEMIMPPAG := XQTDITEMIMPPAG + 1;
            DMESTOQUE.TSlave.Next;
            If XQTDITEMIMPPAG = DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger Then
                Exit;
        End;
    Except
        Result := False;
    End;
End;

//Função utilizada para devolver o proximo numero da nota fiscal de saida que seja valido
Function TFPadraoFiscal.NfProxnumeroNF: Integer;
Var
    XMaiorNumPV, XMaiorNumPC, XMaiorNumOS: Integer;
Begin
    Try
        Result := -1; //Posiciona para Nf numero 01
        XMaiorNumPV := 0;
        XMaiorNumPC := 0;
        XMaiorNumOS := 0;

       //procura maior numero por tabela
       //VENDA
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        If ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) Then
   //Nota fiscal normal
            DMMACS.TALX.SQL.Add(' select max(docfissaida.numdocfisint) as numero from docfissaida where (docfissaida.nfestatus is null) and (docfissaida.tipodocfis=''2'') ');
        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
        	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
           	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
            Then Begin
           	//Nota fiscal eletronica
           	//MODO SCAN / MODO NORMAL
            	if DMMACS.TLoja.FieldByName('MODODEEMISSAONFE').AsString = 'SCAN' Then
            		DMMACS.TALX.SQL.Add(' select max(docfissaida.numdocfisint) as numero from docfissaida  where (docfissaida.NFESERIE=''999'') and (docfissaida.tipodocfis=''3'') and ((docfissaida.nfestatus=''1'') or (docfissaida.nfestatus=''3'')  or (docfissaida.nfestatus=''4''))')
            	else
               begin
                	DMMACS.TALX.SQL.Add(' SELECT MAX(DOCFISSAIDA.NUMDOCFISINT) AS NUMERO FROM DOCFISSAIDA ');
                	DMMACS.TALX.SQL.Add(' WHERE ((DOCFISSAIDA.NFESERIE <> ''999'') OR (DOCFISSAIDA.NFESERIE IS NULL)) ');
                	DMMACS.TALX.SQL.Add(' AND ((DOCFISSAIDA.NFESTATUS = ''1'') OR (DOCFISSAIDA.NFESTATUS = ''3'')  OR (DOCFISSAIDA.NFESTATUS = ''4'')) ');
                   //Edmar - 21/07/2015 - adiciona uma condição para verificar se o cliente
                   //é consumidor final ou não. busca de modelos diferentes conforme o caso
                   if XEmiteNFCe then
                   	DMMACS.TALX.SQL.Add(' AND (DOCFISSAIDA.MODELONF = ''65'') ')
                   else
                   	DMMACS.TALX.SQL.Add(' AND (DOCFISSAIDA.MODELONF = ''55'') ');
               end;
        End;
        DMMACS.TALX.SQL.Text;
        DMMACS.TALX.Open;
        If DMMACS.TALX.FieldByName('NUMERO').AsString <> '' Then
            XMaiorNumPV := DMMACS.TALX.FieldByName('NUMERO').AsInteger
        Else
            XMaiorNumPV := 0;

       //ORDEM DE SERVIÇO
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        If ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) Then
   //Nota fiscal normal
            DMMACS.TALX.SQL.Add('  select max(docfisord.numdocfisint) as numero from docfisord where (docfisord.nfestatus is null) and (docfisord.tipodocfis=''2'') ');
        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
        	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
           	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
            Then Begin
        		//Nota fiscal eletronica
           	//MODO SCAN / MODO NORMAL
            	if DMMACS.TLoja.FieldByName('MODODEEMISSAONFE').AsString = 'SCAN' Then
               	DMMACS.TALX.SQL.Add(' select max(docfisord.numdocfisint) as numero from docfisord  where (docfisord.NFESERIE=''999'') and (docfisord.tipodocfis=''3'') and ((docfisord.nfestatus=''1'') or (docfisord.nfestatus=''3'')  or (docfisord.nfestatus=''4''))')
            	else
               begin
                	DMMACS.TALX.SQL.Add(' SELECT MAX(DOCFISORD.NUMDOCFISINT) AS NUMERO FROM DOCFISORD ');
                	DMMACS.TALX.SQL.Add(' WHERE ((DOCFISORD.NFESERIE <> ''999'') OR (DOCFISORD.NFESERIE IS NULL)) AND (DOCFISORD.TIPODOCFIS = ''3'') ');
                	DMMACS.TALX.SQL.Add(' AND ((DOCFISORD.NFESTATUS = ''1'') OR (DOCFISORD.NFESTATUS = ''3'')  OR (DOCFISORD.NFESTATUS = ''4'')) ');
                   //Edmar - 21/07/2015 - adiciona uma condição para verificar se o cliente
                   //é consumidor final ou não. busca de modelos diferentes conforme o caso
                   if XEmiteNFCe then
                   	DMMACS.TALX.SQL.Add(' AND (DOCFISORD.MODELONF = ''65'') ')
                   else
                   	DMMACS.TALX.SQL.Add(' AND (DOCFISORD.MODELONF = ''55'') ');                   
               end;
        End;
        DMMACS.TALX.Open;
        If DMMACS.TALX.FieldByName('numero').AsString <> '' Then
            XMaiorNumOS := DMMACS.TALX.FieldByName('numero').AsInteger
        Else
            XMaiorNumOS := 0;

       //PEDCOMPRA
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        If ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) Then
            DMMACS.TALX.SQL.Add(' select max(docfis.numdocfiscint) as numero from docfis where (docfis.EMISSAOPROPRIA=''1'') and (docfis.nfestatus is null)');
        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
        	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
           	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
            Then Begin
           //MODO SCAN / MODO NORMAL
            If DMMACS.TLoja.FieldByName('MODODEEMISSAONFE').AsString = 'SCAN'
                Then Begin
                DMMACS.TALX.SQL.Add('  select max(docfis.numdocfiscint) as numero from docfis where (docfis.NFESERIE=''999'') and (docfis.EMISSAOPROPRIA=''1'') and (docfis.tipodocfis=''3'') and ((docfis.nfestatus=''1'') or (docfis.nfestatus=''3'')  or (docfis.nfestatus=''4'')) ');
            End
            Else Begin
                DMMACS.TALX.SQL.Add(' SELECT MAX(DOCFIS.NUMDOCFISCINT) AS NUMERO FROM DOCFIS ');
                DMMACS.TALX.SQL.Add(' WHERE ((DOCFIS.NFESERIE <> ''999'') OR (DOCFIS.NFESERIE IS NULL)) AND (DOCFIS.EMISSAOPROPRIA = ''1'') ');
                DMMACS.TALX.SQL.Add(' AND (DOCFIS.TIPODOCFIS = ''3'') AND ((DOCFIS.NFESTATUS = ''1'') OR (DOCFIS.NFESTATUS = ''3'') OR (DOCFIS.NFESTATUS = ''4'')) ');
                //Edmar - 21/07/2015 - adiciona uma condição para verificar se o cliente
                //é consumidor final ou não. busca de modelos diferentes conforme o caso
                if XEmiteNFCe then
                	DMMACS.TALX.SQL.Add(' AND (DOCFIS.MODELONF = ''65'') ')
                else
                	DMMACS.TALX.SQL.Add(' AND (DOCFIS.MODELONF = ''55'') ');
            End;
        End;
        DMMACS.TALX.Open;
        If DMMACS.TALX.FieldByName('numero').AsString <> '' Then
            XMaiorNumPC := DMMACS.TALX.FieldByName('numero').AsInteger
        Else
            XMaiorNumPC := 0;


       //MAIOR NUMERO
        If XMaiorNumPV > XMaiorNumPC Then
            Result := XMaiorNumPV
        Else
            Result := XMaiorNumPC;

        If XMaiorNumOS > Result Then
            Result := XMaiorNumOS;

       //VALIDA SEQUENCIA DE NOTAS
        If Result > 1
            Then Begin
        //Saida
            DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;
            If ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) Then
                DMMACS.TALX.SQL.Add(' select docfissaida.numdocfisint as numero from docfissaida where (docfissaida.numdocfisint=:numero) and (docfissaida.nfestatus is null) and (docfissaida.tipodocfis=''2'')');
            if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
               	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
               		OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
            begin
                DMMACS.TALX.SQL.Add(' SELECT DOCFISSAIDA.NUMDOCFISINT AS NUMERO FROM DOCFISSAIDA ');
                DMMACS.TALX.SQL.Add(' WHERE (DOCFISSAIDA.NUMDOCFISINT=:NUMERO) AND (DOCFISSAIDA.TIPODOCFIS=''3'') ');
                DMMACS.TALX.SQL.Add(' AND ((DOCFISSAIDA.NFESTATUS=''1'') OR (DOCFISSAIDA.NFESTATUS=''3'') OR (DOCFISSAIDA.NFESTATUS=''4'')) ');
                //Edmar - 21/07/2015 - adiciona uma condição para verificar se o cliente
                //é consumidor final ou não. busca de modelos diferentes conforme o caso
                if XEmiteNFCe then
                	DMMACS.TALX.SQL.Add(' AND (DOCFISSAIDA.MODELONF = ''65'') ')
                else
                	DMMACS.TALX.SQL.Add(' AND (DOCFISSAIDA.MODELONF = ''55'') ');                
            end;
            DMMACS.TALX.ParamByName('numero').AsInteger := Result;
            DMMACS.TALX.Open;
            If DMMACS.TALX.IsEmpty
                Then Begin
            //ORDEM DE SERVIÇOS
                DMMACS.TALX.Close;
                DMMACS.TALX.SQL.Clear;
                If ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) Then
                    DMMACS.TALX.SQL.Add(' select docfisord.numdocfisint as numero from docfisord where (docfisord.numdocfisint=:numero) and (docfisord.nfestatus is null) and (docfisord.tipodocfis=''2'')');
                If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
               	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
               		OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
                begin
                    DMMACS.TALX.SQL.Add(' SELECT DOCFISORD.NUMDOCFISINT AS NUMERO FROM DOCFISORD WHERE (DOCFISORD.NUMDOCFISINT=:NUMERO) AND (DOCFISORD.TIPODOCFIS=''3'') ');
                	 //Edmar - 21/07/2015 - adiciona uma condição para verificar se o cliente
                	 //é consumidor final ou não. busca de modelos diferentes conforme o caso
                	 if XEmiteNFCe then
                	 	DMMACS.TALX.SQL.Add(' AND (DOCFISORD.MODELONF = ''65'') ')
                	 else
                    	DMMACS.TALX.SQL.Add(' AND (DOCFISORD.MODELONF = ''55'') ');
                end;
                DMMACS.TALX.ParamByName('numero').AsInteger := Result;
                DMMACS.TALX.Open;
                If DMMACS.TALX.IsEmpty
                    Then Begin
                   //PEDIDO DE COMPRA
                    DMMACS.TALX.Close;
                    DMMACS.TALX.SQL.Clear;
                    If ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')) Then
                        DMMACS.TALX.SQL.Add(' select docfis.numdocfiscint as numero from docfis where docfis.numdocfiscint=:numero and (docfis.nfestatus is null)');
                    If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
               		OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
               			OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
                    begin
                        DMMACS.TALX.SQL.Add(' SELECT DOCFIS.NUMDOCFISCINT AS NUMERO FROM DOCFIS ');
                        DMMACS.TALX.SQL.Add(' WHERE (DOCFIS.NUMDOCFISCINT=:NUMERO) AND (DOCFIS.TIPODOCFIS = ''3'') ');
                        DMMACS.TALX.SQL.Add(' AND ((DOCFIS.NFESTATUS = ''1'') OR (DOCFIS.NFESTATUS = ''3'')  OR (DOCFIS.NFESTATUS = ''4'')) ');
                	 	 //Edmar - 21/07/2015 - adiciona uma condição para verificar se o cliente
                	 	 //é consumidor final ou não. busca de modelos diferentes conforme o caso
                	 	 if XEmiteNFCe then
                	 		DMMACS.TALX.SQL.Add(' AND (DOCFIS.MODELONF = ''65'') ')
                	 	 else
                    		DMMACS.TALX.SQL.Add(' AND (DOCFIS.MODELONF = ''55'') ');
                    end;
                    DMMACS.TALX.ParamByName('numero').AsInteger := Result;
                    DMMACS.TALX.Open;
                    If (DMMACS.TALX.IsEmpty) And (Result <> 1) Then
                        RegistraFalha('Falha na sequência de numeração das Notas Fiscais. o número ' + IntToStr(result) + ' não foi impresso/enviado');

                End;
            End;
        End;
        Result := Result + 1; //Incrementa numeração
    Except
        Result := 1;
    End;
End;

//Função utilizada para devolver o proximo numero da nota fiscal de saida que seja valido

Function TFPadraoFiscal.NfProxnumero: Integer;
Begin
    Result := -1;
    Try
    //Numeração específica para ECF
        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') And (XTipo = 'PEDV')
            Then Begin
            EdNumeroFiscal.Enabled := False;
            If (XImpLig = true) Then
            Begin
                For XConta := 1 To 6 Do
                    XCuponProx := XCuponProx + ' ';
                Bematech_FI_NumeroCupom(XCuponProx);
                XAlx := StrToInt(XCuponProx);
                XCuponProx := IntToStr(XAlx + 1);
                NfProxnumero := StrToInt(XCuponProx);
            End
            Else Begin
                RegistraFalha('ECF: Impressora de cupom fiscal desligada. Lique e clique em atualizar');
            End;
        End
        Else Begin
            EdNumeroFiscal.Enabled := True;
            If (FMenu.TIPOAUX <> 'ECF') And (FMenu.TIPOREL = 'RNF') And ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF'))
                Then Begin
            //Se o tipo for de reimpressão para nota fiscal normal e eletronica, pegamos o numero corrente da nota caso não encontre busca proximo numero
                If XTipo = 'PEDV'
                    Then Begin
                    DMMACS.TALX.Close;
                    DMMACS.TALX.SQL.Clear;
                    DMMACS.TALX.SQL.Add(' select * from docfissaida where docfissaida.cod_pedido=:codigo ');
                    DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_Pedido;
                    DMMACS.TALX.Open;
                    If (DMMACS.TALX.IsEmpty) Or (DMMACS.TALX.FieldByName('numdocfis').AsString = '') Then
                        Result := NfProxnumeroNF //Caso o documento ainda não tenha numeração o sistema busca o próximo
                    Else
                        Result := DMMACS.TALX.FieldByName('numdocfis').AsInteger; //Respassa o numero atual;
                End;
                If XTipo = 'PEDC'
                    Then Begin
                    DMMACS.TALX.Close;
                    DMMACS.TALX.SQL.Clear;
                    DMMACS.TALX.SQL.Add(' select * from docfis where docfis.cod_pedido=:codigo ');
                    DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_Pedido;
                    DMMACS.TALX.Open;
                    If (DMMACS.TALX.IsEmpty) Or (DMMACS.TALX.FieldByName('numdocfis').AsString = '') Then
                        Result := NfProxnumeroNF //Caso o documento ainda não tenha numeração o sistema busca o próximo
                    Else
                        Result := DMMACS.TALX.FieldByName('numdocfis').AsInteger; //Respassa o numero atual;
                End;

                If XTipo = 'ORDEM'
                    Then Begin
                    DMMACS.TALX.Close;
                    DMMACS.TALX.SQL.Clear;
                    DMMACS.TALX.SQL.Add('  select * from docfisord where docfisord.cod_ordem=:codigo ');
                    DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_Pedido;
                    DMMACS.TALX.Open;
                    If DMMACS.TALX.IsEmpty Then
                        Result := NfProxnumeroNF //Caso o documento ainda não tenha numeração o sistema busca o próximo
                    Else
                        Result := DMMACS.TALX.FieldByName('numdocfis').AsInteger; //Respassa o numero atual;
                End;
            End;
            If (FMenu.TIPOREL <> 'RNF') And ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe'))
            	Then
                Result := NfProxnumeroNF; //Caso o documento ainda não tenha numeração o sistema busca o próximo
            If ((FMenu.TIPOAUX = 'ECF') And (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
            	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
               	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe'))
            Then Begin
    //O Sistema irá impremir um nota derivada de ecf (de um pedido que já gerou ecf)
                Result := NfProxnumeroNF;
            End;
        End;
    Except
        Result := -1;
    End;
End;

//Uma procedure diferente para mudar o tamanho do papel em tprinter

Procedure TFPadraoFiscal.SetPrinterPage_Xp(PaperSize, Comp, Alt: integer);
Var
    ADevice, ADriver, APort: Array[0..255] Of char;
    DeviceMode: THandle;
    M: PDevMode;
    s: String;
Begin
   // Força o uso de Printer. Se esta linha for removida, a primeira
   // invocação falha. Bug da VCL
    S := Printer.Printers[Printer.PrinterIndex];
   // Pega dados da impressora atual
    Printer.GetPrinter(ADevice, ADriver, APort, DeviceMode);
   // Pega um ponteiro para DEVMODE
    M := GlobalLock(DeviceMode);
    Try
        If M <> Nil Then
        Begin
           // Muda tamanho do papel
            M^.dmFields := DM_PAPERSIZE;
            If PaperSize = DMPAPER_USER Then
                M^.dmFields := M^.dmFields Or DM_PAPERLENGTH Or DM_PAPERWIDTH;
            M^.dmPaperLength := Alt;
            M^.dmPaperWidth := Comp;
            M^.dmPaperSize := PaperSize; //
           // Atualiza
            Printer.SetPrinter(ADevice, ADriver, APort, DeviceMode);
        End;
    Finally
        GlobalUnlock(DeviceMode);
    End;
End;

//Função utilizada para setar configurações de impressora

Function TFPadraoFiscal.NFSetImpressora: Boolean;
Begin
    Result := True;
    Try
        If Not (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')
            Then Begin
           //Seleciona impressora padrão
            If (PadraoImp(DMMACS.TLoja.FieldByName('NFIMP').AsString) = False) Or (DMMACS.TLoja.FieldByName('NFIMP').AsString = '') Then
                FMenu.PrintDialog1.Execute;
           //SETA TAMANHO DA FOLHA
            If (DMMACS.TLoja.FieldByName('NFTAMPAPCOL').AsInteger > 0) And (DMMACS.TLoja.FieldByName('NFTAMPAPLIN').AsInteger > 0)
                Then Begin
                If (GetWindowsVersion = 'Windows XP') Or (GetWindowsVersion = 'Windows 2000') Or (GetWindowsVersion = 'Windows NT') Then
                    SetPrinterPage_Xp(DMPAPER_USER, DMMACS.TLoja.FieldByName('NFTAMPAPCOL').AsInteger, DMMACS.TLoja.FieldByName('NFTAMPAPLIN').AsInteger)
                Else
                    SetPrinterPage_9x(DMMACS.TLoja.FieldByName('NFTAMPAPCOL').AsInteger, DMMACS.TLoja.FieldByName('NFTAMPAPLIN').AsInteger);
            End;

           //SETA IMPRESSORA PADRAO
            If (PadraoImp(DMMACS.TLoja.FieldByName('NFIMP').AsString) = False) Or (DMMACS.TLoja.FieldByName('NFIMP').AsString = '')
                Then Begin
                FMenu.PrintDialog1.Execute;
            End;
           //Se a impressora estiver sendo usada
            If Printer.Printing
                Then Begin
                Mensagem('ATENÇÃO', 'A impressora esta sendo usada!', '', 1, 1, False, 'a');
                Result := False;
            End;
            If (GetWindowsVersion = 'Windows XP')
                Then Begin
                If VerImpressoraONLINE > 0
                    Then Begin
                    Mensagem('ATENÇÃO', 'IMPRESSORA OFF-LINE. Por favor, verifique a impressora!', '', 1, 1, False, 'a');
                    Result := False;
                End;
            End;
        End
        Else Begin
            Result := True;
        End;
    Except
        Result := False;
    End;
End;
//Imprime cabeçalho em Nota Fiscal

Function TFPadraoFiscal.NFCabecalho: Boolean;
Begin
    Result := True;
    Try
    //Seleciona informações ainda necessárias
        DMPESSOA.TALX.Close;
        DMPESSOA.TALX.SQL.Clear;
        If FMenu.XNotaEntrada = True Then
            DMPESSOA.TALX.SQL.Add(' select * from vwfornec left join pessoa on vwfornec.cod_pessoa = pessoa.cod_pessoa where vwfornec.cod_fornec=:codigo')
        Else
            DMPESSOA.TALX.SQL.Add(' select * from vwcliente  left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa where vwcliente.cod_cliente=:codigo ');
        DMPESSOA.TALX.ParamByName('codigo').AsInteger := XCod_Pessoa;
        DMPESSOA.TALX.Open;

        If FMenu.XNotaEntrada = True
            Then Begin
            ImpCampo('X - Entrada', 'X', 'S'); //Se for apenas impressão marca apenas com X
        End
        Else Begin
            If FMenu.TIPOREL = 'RNF' Then
                ImpCampo('X - Saida', '.X.', 'S') //Se for reimpressão marca com os pontinhos para sabermos
            Else
                ImpCampo('X - Saida', 'X', 'S'); //Se for apenas impressão marca apenas com X
        End;

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
    Except
        Result := False;
    End;
End;

//Seleciona e Imprime a Fatura de Nf da Ordem de Serviço

Function TFPadraoFiscal.NFFatura(XTipoOp: Integer): Boolean;
Var
    I, XCod_tmp: Integer;
Begin
    I := 1;
    XCod_tmp := 1;
    Result := True;
    Try
		//prepara a tabela tmp
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('delete from tmp');
       DMMACS.TMP.ExecSQL;
       DMMACS.Transaction.CommitRetaining;

    	if (XTipo = 'PEDV') Then
       	if (FMenu.XSimplesRemessa = True) Or (FMenu.XRemessaGarantia = true) Or (FMenu.XDevolucao = True) Or (FMenu.XOutrosFisc = True) Then
           	Exit; //Devoluções e remessas de garantia não devem imprimir o faturamento

		//prepara a tabela tmp
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('select * from tmp');
       DMMACS.TMP.Open;

       If (XTipo = 'ORDEM') Then
       begin
       	//filtra wordem
           DMServ.WOrdem.Close;
           DMServ.WOrdem.SQL.Clear;
           DMServ.WOrdem.SQL.Add('select * from vwordem where vwordem.cod_ordem=:codigo');
           DMServ.WOrdem.ParamByName('codigo').AsInteger := XCod_Pedido;
           DMServ.WOrdem.Open;

           FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', IntToStr(XCod_Pedido), '');

           //VERIFICA SE A FORMA DE PAGAMENTO EH MULTIPLO
           If DMServ.WOrdem.FieldByName('TIPOPAG').AsString <> 'Multiplo'
           Then Begin
               //Tenta encontras a Forma de pagamento
                If DMServ.WOrdem.FieldByName('formapag').AsString = 'À VISTA'
                    Then Begin
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
                        If Not DMCAIXA.TLanCaixa.IsEmpty Then
                            DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency;
                    //End;
                    DMMACS.TMP.Post;
                    XCod_tmp := XCod_tmp + 1;
                End
                Else Begin
                   //filtra contas a receber
                    DMCONTA.TCtaR.Close;
                    DMCONTA.TCtaR.SQL.Clear;
                    DMCONTA.TCtaR.SQL.Add('select * from ctareceber where (ctareceber.cod_gerador=:CodGerador) and (ctareceber.tipogerador=' + #39 + 'ORD' + #39 + ')');
                    DMCONTA.TCtaR.ParamByName('CodGerador').AsInteger := XCod_Pedido;
                    DMCONTA.TCtaR.Open;
                    If Not DMCONTA.TCtaR.IsEmpty
                        Then Begin
                       //seleciona as parcelas do ctas a receber
                        DMCONTA.TParcCR.Close;
                        DMCONTA.TParcCR.SQL.Clear;
                        DMCONTA.TParcCR.SQL.Add('select * from parcelacr where parcelacr.cod_ctareceber=:ctareceber');
                        DMCONTA.TParcCR.ParamByName('ctareceber').AsInteger := DMCONTA.TCtaR.fieldbyname('cod_ctareceber').AsInteger;
                        DMCONTA.TParcCR.Open;
                        If Not DMCONTA.TParcCR.IsEmpty
                            Then Begin
                           //percorre todas as tabelas capturando valor e vencimento
                            DMCONTA.TParcCR.First;
                            While Not DMCONTA.TParcCR.Eof Do
                            Begin
                                DMMACS.TMP.Insert;
                                DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
                                DMMACS.TMP.FieldByName('DESC1').AsString := DMCONTA.TParcCR.FieldByName('dtvenc').AsString;
                                If DMMACS.TLoja.FieldByName('SERVNFE').AsString <> '1' Then
                                    DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMCONTA.TParcCR.FieldByName('valor').AsCurrency
                                Else
                                    DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMCONTA.TParcCR.FieldByName('valorprod').AsCurrency;
                                DMMACS.TMP.Post;
                                XCod_tmp := XCod_tmp + 1;
                                DMCONTA.TParcCR.Next;
                            End;
                        End;
                    End;
                End;
            End
            Else Begin
               //LOCALIZA EM CAIXA ALGUMA ENTRADA
                DMCAIXA.TAlx.Close;
                DMCAIXA.TAlx.SQL.Clear;
                DMCAIXA.TAlx.SQL.Add('SELECT lancaixa.valor FROM lancaixa WHERE (lancaixa.cod_gerador=:CODIGO) AND (lancaixa.tipogerador=' + #39 + 'ORDEMENT' + #39 + ')');
                DMCAIXA.TAlx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
                DMCAIXA.TAlx.Open;
                If Not DMCAIXA.TAlx.IsEmpty
                    Then Begin
                    DMMACS.TMP.Insert;
                    DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
                    DMMACS.TMP.FieldByName('DESC1').AsString := 'Entrada';
                    DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMCAIXA.TAlx.FieldByName('valor').AsCurrency;
                    DMMACS.TMP.Post;
                    XCod_tmp := XCod_tmp + 1;
                End;
               //LOCALIZA CONTAS A PRAZO
                DMCAIXA.TAlx.Close;
                DMCAIXA.TAlx.SQL.Clear;
                DMCAIXA.TAlx.SQL.Add(' SELECT parcelacr.valor, parcelacr.dtvenc FROM parcelacr ');
                DMCAIXA.TAlx.SQL.Add(' LEFT JOIN ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
                DMCAIXA.TAlx.SQL.Add(' WHERE (ctareceber.cod_gerador=:Codigo) and (ctareceber.tipogerador=' + #39'ORD' + #39 + ')');
                DMCAIXA.TAlx.ParamByName('codigo').AsInteger := XCod_Pedido;
                DMCAIXA.TAlx.Open;
                If Not DMCAIXA.TAlx.IsEmpty
                    Then Begin
                    DMMACS.TMP.Insert;
                    DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
                    DMMACS.TMP.FieldByName('DESC1').AsString := DMCAIXA.TAlx.FieldByName('dtvenc').AsString;
                    DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMCAIXA.TAlx.FieldByName('valor').AsCurrency;
                    DMMACS.TMP.Post;
                    XCod_tmp := XCod_tmp + 1;
                End;
               //LOCALIZA CHEQUES
                DMCAIXA.TAlx.Close;
                DMCAIXA.TAlx.SQL.Clear;
                DMCAIXA.TAlx.SQL.Add(' SELECT movbanco.valor, movbanco.dtvenc FROM movbanco ');
                DMCAIXA.TAlx.SQL.Add(' LEFT join chequerec ON movbanco.cod_movbanco = chequerec.cod_movbanco ');
                DMCAIXA.TAlx.SQL.Add(' where (movbanco.tipogerador=' + #39 + 'ORDEM' + #39 + ') and (movbanco.cod_gerador=cod_gerador) ');
                DMCAIXA.TAlx.ParamByName('codigo').AsInteger := XCod_Pedido;
                DMCAIXA.TAlx.Open;
                If Not DMCAIXA.TAlx.IsEmpty
                    Then Begin
                    DMMACS.TMP.Insert;
                    DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
                    DMMACS.TMP.FieldByName('DESC1').AsString := DMCAIXA.TAlx.FieldByName('dtvenc').AsString;
                    DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMCAIXA.TAlx.FieldByName('valor').AsCurrency;
                    DMMACS.TMP.Post;
                    XCod_tmp := XCod_tmp + 1;
                End;
            End;
        End;

        If (XTipo = 'PEDV') Then
        Begin
           //filtra wpedv
            DMSAIDA.WPedV.Close;
            DMSAIDA.WPedV.SQL.Clear;
            DMSAIDA.WPedV.SQL.Add(' select * from vwpedv where vwpedv.cod_pedvenda=:codigo ');
            DMSAIDA.WPedV.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMSAIDA.WPedV.Open;

           //Tenta encontras a Forma de pagamento
            If DMSAIDA.WPedV.FieldByName('formpag').AsString = 'À VISTA'
                Then Begin
               //Paulo 11/03/2011: Filtra os lançamento de caixa
                DMCAIXA.TLanCaixa.Close;
                DMCAIXA.TLanCaixa.SQL.Clear;
                DMCAIXA.TLanCaixa.SQL.Add('select * from lancaixa lc where lc.cod_gerador=:CODGERADOR and lc.tipogerador = ''PEDVENDA''');
                DMCAIXA.TLanCaixa.ParamByName('CODGERADOR').AsInteger := XCod_Pedido;
                DMCAIXA.TLanCaixa.Open;

                If Not DMCAIXA.TLanCaixa.IsEmpty
                    Then Begin
                    DMMACS.TMP.Insert;
                    DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
                    DMMACS.TMP.FieldByName('DESC1').AsString := 'À VISTA';
                    DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMCAIXA.TLanCaixa.FieldByName('valor').AsCurrency;
                    DMMACS.TMP.Post;
                    XCod_tmp := XCod_tmp + 1;
                End;
            End
            Else Begin
               //filtra contas a receber
                DMCONTA.TCtaR.Close;
                DMCONTA.TCtaR.SQL.Clear;
                DMCONTA.TCtaR.SQL.Add('select * from ctareceber where (ctareceber.cod_gerador=:CodGerador) and (ctareceber.tipogerador=' + #39 + 'PEDVENDA' + #39 + ')');
                DMCONTA.TCtaR.ParamByName('CodGerador').AsInteger := XCod_Pedido;
                DMCONTA.TCtaR.Open;
                If Not DMCONTA.TCtaR.IsEmpty
                    Then Begin
                   //seleciona as parcelas do ctas a receber
                    DMCONTA.TParcCR.Close;
                    DMCONTA.TParcCR.SQL.Clear;
                    DMCONTA.TParcCR.SQL.Add('select * from parcelacr where parcelacr.cod_ctareceber=:ctareceber');
                    DMCONTA.TParcCR.ParamByName('ctareceber').AsInteger := DMCONTA.TCtaR.fieldbyname('cod_ctareceber').AsInteger;
                    DMCONTA.TParcCR.Open;
                    If Not DMCONTA.TParcCR.IsEmpty
                        Then Begin
                       //percorre todas as tabelas capturando valor e vencimento
                        DMCONTA.TParcCR.First;
                        While Not DMCONTA.TParcCR.Eof Do
                        Begin
                            DMMACS.TMP.Insert;
                            DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
                            DMMACS.TMP.FieldByName('DESC1').AsString := DMCONTA.TParcCR.FieldByName('dtvenc').AsString;
                            DMMACS.TMP.FieldByName('VLR1').AsCurrency := DMCONTA.TParcCR.FieldByName('valor').AsCurrency;
                            DMMACS.TMP.Post;
                            XCod_tmp := XCod_tmp + 1;
                            DMCONTA.TParcCR.Next;
                        End;
                    End;
                End;
            End;
        End;

		 If (XTipo = 'PEDC') Then
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
                   DMMACS.TMP.ParamByName('COD').AsInteger := DMCONTA.TAlx.FieldByName('COD_IMPNFEFINANC').AsInteger;
                   DMMACS.TMP.ParamByName('DESC').AsString := DMCONTA.TAlx.FieldByName('DT_VENCIMENTO').AsString;
                   DMMACS.TMP.ParamByName('VLR').AsCurrency := DMCONTA.TAlx.FieldByName('VLR_PARCELA').AsCurrency;
                   DMMACS.TMP.ExecSQL;
//                   DMMACS.TMP.Transaction.CommitRetaining;
					DMMACS.Transaction.CommitRetaining;
                   DMCONTA.TAlx.Next;
               end;
           end
           else
           begin//Edmar - 07/04/2014 - Se estiver vazio, popula com À VISTA
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

        If XTipoOp = 0
            Then Begin
            DMMACS.TMP.First;
            While Not DMMACS.TMP.Eof Do
            Begin
                ImpCampo('Fat. Vencimento 0' + IntToStr(I), DMMACS.TMP.FieldByName('DESC1').AsString, 'S');
                ImpCampo('Fat. Valor 0' + IntToStr(I), DMMACS.TMP.FieldByName('VLR1').AsString, 'M');
                DMMACS.TMP.Next;
                I := I + 1;
            End;
        End;
    Except
        Result := False;
    End;
End;

//Imprime Despesas em Nota Fiscal

Function TFPadraoFiscal.NFDespesas: Boolean;
Begin
    Result := True;
    Try
        If XTipo = 'ORDEM'
            Then Begin
        //IMPRIME Despesas DA NF
            While Not DMESTOQUE.TSlaveServ.Eof Do
            Begin
                ImpCampo('Desc. Desp.', DMESTOQUE.TSlaveServ.FieldByName('SERVICO').AsString, 'S');
                ImpCampo('Vlr. Desc. Desp.', DMESTOQUE.TSlaveServ.FieldByName('DESCONTO').AsString, 'M');
                ImpCampo('Qnt. Desp.', DMESTOQUE.TSlaveServ.FieldByName('QTD').AsString, 'M');
                ImpCampo('Vlr. Unit. Desp.', DMESTOQUE.TSlaveServ.FieldByName('VLRUNIT').AsString, 'M');
                ImpCampo('Vlt. Tot. Desp.', DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsString, 'M');

                XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINDESP').AsInteger;
                XQTDITEMIMPPAG := XQTDITEMIMPPAG + 1;

                DMESTOQUE.TSlaveServ.Next;

                If XQTDITEMIMPPAG = DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger Then
                    Exit;
            End;
        End;
    Except
        Result := False;
    End;
End;

//Imprime Impostos calculados em Nota Fiscal

Function TFPadraoFiscal.NFImpostos: Boolean;
Begin
    Result := True;
    Try
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
        If XTotalProdSemDesc <> XTotalProdComDesc Then
            ImpCampo('Linha Desc. Produto', 'Desconto em produtos R$ ' + FormatFloat('0.00', (XTotalProdSemDesc - XTotalProdComDesc)), 'S');

        ImpCampo('Vlr. Tot. Prod.', EdTotalProdutos.Text, 'M');

       //verifica desconto para serviço
        If XTotalServSemDesc <> XTotalServComDesc Then
            ImpCampo('Linha Desc. Serviço', 'Desconto em serviço R$ ' + FormatFloat('0.00', (XTotalServSemDesc - XTotalServComDesc)), 'S');

        ImpCampo('Vlr. Tot. Serv.', EdVlrServicos.Text, 'M');

        If (EdVlrIss.ValueNumeric > 0)
            Then Begin
           //se houver iss para mprimir
            ImpCampo('Vlr. ISS', EdVlrIss.Text, 'M');
        End;
    Except
        Result := False;
    End;
End;

//Imprime Dados Adicionais em Nota Fiscal

Function TFPadraoFiscal.NFDadosAdicionais: Boolean;
Var
    XAuxLinAdic: Integer;
    XLinhaTexto: String;
Begin
    Result := True;
    Try
    //IMPRIME TODAS AS LINHAS DE DADOS ADICIONAIS
        If MDadosAdicionais.Text <> ''
            Then Begin
            For XAuxLinAdic := 0 To MDadosAdicionais.Lines.Count Do
            Begin
                XLinhaTexto := '';
                XLinhaTexto := MDadosAdicionais.Lines[XAuxLinAdic];
                ImpCampo('Dados Adicionais', XLinhaTexto, 'S');
                XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
            End;
        End;
            
       //IMPRIME NUMERO DA NOTA FISCAL NO RODAPE DA NOTA
        ImpCampo('Nº NF Rodapé', EdNumeroFiscal.Text, 'S');
    Except
        RegistraFalha('   Falha: erro ao imprimir dados adicionais');
        Result := False;
    End;
End;

//Imprime Dados de Reservado ao fisco

Function TFPadraoFiscal.NFReservadoFisco: Boolean;
Var
    XAuxLinAdic: Integer;
    XLinhaTexto: String;
Begin
    Result := True;
    Try
    //IMPRIME TODAS AS LINHAS DE Reservado ao fisco
        If MReservadosFisco.Text <> ''
            Then Begin
            For XAuxLinAdic := 0 To MReservadosFisco.Lines.Count Do
            Begin
                XLinhaTexto := '';
                XLinhaTexto := Trim(MReservadosFisco.Lines[XAuxLinAdic]);
                ImpCampo('Reservado ao Fisco', XLinhaTexto, 'S');
                XNUMLIN := XNUMLIN + DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
            End;
        End;
    Except
        RegistraFalha('   Falha: erro ao imprimir dados de reservado ao fisco');
        Result := False;
    End;
// 	ImpCampo('Reservado ao Fisco', 'teste', 'S')
End;

//Função utilizada para enviar nota fiscal para impressão

Function TFPadraoFiscal.ImpNfe: Boolean;
Var
    XImpNfeFormPagamento: String;
Begin
    Result := True;
    Try
       //Localiza forma de pagamento
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        If XTipo = 'ORDEM' Then
            DMMACS.TALX.SQL.Add(' SELECT vwordem.formapag as pagamento FROM vwordem WHERE vwordem.cod_ordem=:CODIGO ');
        If XTipo = 'PEDV' Then
            DMMACS.TALX.SQL.Add(' select vwpedv.formpag as pagamento  From vwpedv Where vwpedv.cod_pedvenda=:Codigo ');
        If XTipo = 'PEDC'
            Then Begin
            DMMACS.TALX.SQL.Add(' Select vwpedc.formpag as pagamento  From vwpedc Where vwpedc.cod_pedcomp=:Codigo ');
            If FMenu.XNotaEntrada = True
                Then Begin
                FMenu.TIPOREL := '';
                FMenu.TIPOAUX := 'ENTNFPROP';
                FMenu.XNotaEntrada := True;
            End
        End;
        DMMACS.TALX.ParamByName('Codigo').AsInteger := XCod_Pedido;
        DMMACS.TALX.Open;
        If DMMACS.TALX.IsEmpty Then
            XImpNfeFormPagamento := 'À VISTA'
        Else
            XImpNfeFormPagamento := DMMACS.TALX.FieldByName('pagamento').AsString;


        FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
        FMzrNfe.SetInFiscal(XNomePeriodoFiscal, XCod_Pedido, XCod_Pessoa, XTipo, 'EMITIR', 1, LCfop.Caption, LNatOp.Caption, XImpNfeFormPagamento, EdNumeroFiscal.ValueInteger, StrToDate(EdDtEmissao.Text), LCodIbge.caption, LMunicipio.Caption, LUF.Caption, EdBaseICMS.ValueNumeric, EdVlrIcms.ValueNumeric, EdVlrIpi.ValueNumeric, EdBaseICMSST.ValueNumeric, EdVlrIcmsST.ValueNumeric, EdTotalProdutos.ValueNumeric, EdVlrFrete.ValueNumeric, EdVlrSeguro.ValueNumeric, EdDesconto.ValueNumeric, EdOutrasDespesas.ValueNumeric, EdTotalNotaFiscal.ValueNumeric, XValorTotalAproxTributacaoNacional);
        FMzrNfe.ShowModal;
    Except
        Result := False;
    End;
End;

//Função utilizada para enviar nota fiscal para impressão

Function TFPadraoFiscal.ImpNf: Boolean;
Begin
    Result := True;
    Try
        If Mensagem('Confirmação do usuário', 'Impressora pronta', '', 2, 3, False, 'c') = 2
            Then Begin
        //Paulo 11/08/2010: busca o numero do cupom
            If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') Then
            Begin
                If (XImpLig = true) Then
                Begin
                    For XConta := 1 To 6 Do
                        XCuponProx := XCuponProx + ' ';
                    Bematech_FI_NumeroCupom(XCuponProx);
                    XAlx := StrToInt(XCuponProx);
                    XCuponProx := IntToStr(XAlx + 1);
                    EdNumeroFiscal.Text := XCuponProx;
                End;
            End;
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
            If (Not DMESTOQUE.Alx.IsEmpty) Or (Not DMESTOQUE.Alx1.IsEmpty)
                Then Begin
               //Foi encontrado o numero como sendo já impresso
                If Mensagem('Confirmação do usuário', 'O Numero ' + EdNumeroFiscal.Text + ' já foi impresso. O Sistema pode utilizar o próximo numero disponivel?' + #13 + 'Número Disponível: ' + IntToStr(NfProxnumero) + #13 + 'Clique em Sim para utilizar o Número: ' + IntToStr(NfProxnumero) + ' ou Não para usar o Número: ' + EdNumeroFiscal.Text, '', 2, 3, False, 'c') = 2
                    Then Begin
                    EdNumeroFiscal.Text := IntToStr(NfProxnumero);
                End;
            End;
           //Paulo 10/08/2010: Mostrar o Número do Cupom fiscal
            If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') Then
            Begin
                If (XImpLig = true) Then
                Begin
                    For XConta := 1 To 6 Do
                        XCuponProx := XCuponProx + ' ';
                    Bematech_FI_NumeroCupom(XCuponProx);
                    XAlx := StrToInt(XCuponProx);
                    XCuponProx := IntToStr(XAlx + 1);
                    EdNumeroFiscal.Text := XCuponProx;
                End;
            End;
           //Defini impressora para NF e seta as configurações
            If NFSetImpressora = True
                Then Begin
               //ALEX: 09/03/2009 - VERIFICA SE O NUMERO DA NOTA FISCAL NÃO ESTA VAZIA
                If EdNumeroFiscal.ValueNumeric <= 0
                    Then Begin
                    Mensagem('ATENÇÃO', 'O Número da Nota Fiscal não foi atribuído pelo sistema.', '', 1, 1, false, 'a');
                    If Mensagem('CONFIRMAÇÃO', 'Deseja atribuir uma nova numeração para a nota fiscal e continuar a impressão?' + #13 + 'Número Disponível: ' + IntToStr(NfProxnumero), '', 1, 1, false, 'a') = 2
                        Then Begin
                        EdNumeroFiscal.Text := IntToStr(NfProxnumero)
                    End
                    Else Begin
                        Result := False;
                        Exit;
                    End;
                End
                Else Begin
                //Paulo 04/08/2010: Para impressão caso seja ECF
                    If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') Then
                    Begin
                        If (XImpLig = true) Then
                        Begin
                            ECF(XCod_Pedido, 'PEDVENDA');
                        End;
                    End;

                    If (XImpLig = false) Then
                    Begin
                    //INICIA IMPRESSÃO
                        Printer.BeginDoc;
                    //Posiciona Itens de impressão no inicio da pagina
                        DMESTOQUE.TSlave.First;
                        DMESTOQUE.TSlaveServ.First;
                        XQTDPAGIMP := 1; //Inicializa variavel para controle da qtd de paginas impressas
                        While XQTDPAGIMP <= XQTDPAG Do // Enquanto a quantidade de paginas impressas for menos ou igual a quantidade de paginas que devem ser impressas
                        Begin
                            XNUMLIN := 0; //Variavel utilizada para incremento de linhas na impressão... quando houver casos de várias linhas no mesmo bloco

                           //CABEÇALHO
                            If NFCabecalho = False Then
                                Result := False;

              //FATURA
                            If XTipo = 'ORDEM' Then
                                NFFatura(0);

              //PRODUTOS
                            XNUMLIN := DMMACS.TLoja.FieldByName('NFENTLINPROD').AsInteger;
                            XQTDITEMIMPPAG := 0;
                            If NFProdutos = False Then
                                Result := False;

                            If XTipo = 'ORDEM'
                                Then Begin
                               //DESPESAS ADICIONAIS
                                If Not DMESTOQUE.TSlaveServ.IsEmpty
                                    Then Begin
                                    XQTDITEMIMPPAG := 0;
                                    XNUMLIN := 0;
                                    If NFDespesas = False Then
                                        Result := False;
                                End;
                            End;

                           //controle para final de pagina
                            XNUMLIN := 0;
                            If XQTDPAGIMP <> XQTDPAG
                                Then Begin
                                NFImpostosX; //se não for a ultima pagina o sistema imprime XXXX nos valores de impostos
                            End
                            Else Begin
                            //Se ultima pagina sistema imprime os impostos
                                If NFImpostos = False Then
                                    Result := False;
                            End;

                           //Transportadora
                            XNUMLIN := 0;
                            If NFTransportadora = False Then
                                Result := False;

                           //Dados Adicionais
                            XNUMLIN := 0;
                            If NFDadosAdicionais = False Then
                                Result := False;

                           //Dados Fiscais
                            XNUMLIN := 0;
                            If XQTDPAGIMP = XQTDPAG
                                Then Begin
                                If NFReservadoFisco = False Then
                                    Result := False;

                            End;
                           //Incrementa paginas impressas e caso seja necessário envia comando para nova pagina de impressão
                            XQTDPAGIMP := XQTDPAGIMP + 1;
                            If XQTDPAGIMP <= XQTDPAG Then
                                Printer.NewPage;
                        End;
                    //FINALIZA IMPRESSÃO
                        Printer.EndDoc;
                    End;
                End;
            End;
        End
        Else Begin
            RegistraFalha('   Impressão: é preciso logar com o caixa para verificar o tipo de impressão');
            Result := False;
            Exit;
        End;
    Except
        RegistraFalha('   Impressão: falha desconhecida');
        Result := False;
    End;
End;
//Função utilizada para validar os dados adicionais

Function TFPadraoFiscal.ValidaDadosAdicionais: Boolean;
Var
    XQTDITEM, XQTDDESP: Integer;
    XQtdPagDesp: Integer;
Begin
    Result := True;
    If XTipo = 'PEDC'
    Then Begin
        If FMenu.XNotaEntrada = True
        Then Begin
            MDadosAdicionais.Lines.Clear;
            MDadosAdicionais.Lines.Text := DMENTRADA.TFiscPC.FieldByName('OBS').AsString;
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add(' Select count(itenspedc.cod_itenspedc) as quant from itenspedc where itenspedc.cod_pedcompra=:codigo ');
            DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
            DMESTOQUE.Alx.Open;
            XQTDITEM := DMESTOQUE.Alx.FieldByName('quant').AsInteger;
            If DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger > 0
                Then Begin
                XQTDPAG := (Round(XQTDITEM / DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger));
            End
            Else Begin
                XQTDPAG := 0;
                RegistraFalha('   Configurações de nota: O número de itens de produtos a serem impressos na nota fiscal, não foi devidamente configurado ');
            End;
            If XQTDPAG < (XQTDITEM / DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger)
                Then Begin
                XQTDPAG := XQTDPAG + 1;
            End;
           //ADICIONA O CAMPO DESCRITO NO DADOS ADICIONAIS DE CONFIGURAÇÃO DE LOJA
           // Texto comentado e inserido em reservados ao fisco MDadosAdicionais.Lines.Text:=DMMACS.TLoja.FieldByName('NFDADOSADIC').AsString;
            Exit; //pedidos de compra não geram dados adicionais
        End
        Else Begin
            Exit; //pedidos de compra não geram dados adicionais
        End;
    End;
    Try
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
        If XTipo = 'PEDV' Then
            DMESTOQUE.Alx.SQL.Add(' Select count(itenspedven.cod_itenspedven) as quant from itenspedven where itenspedven.cod_pedven=:codigo ');
        If XTipo = 'ORDEM' Then
            DMESTOQUE.Alx.SQL.Add(' Select count(itprodord.cod_itprodord) as quant from itprodord where itprodord.cod_ordem=:codigo ');
        If XTipo = 'PEDC' Then
            DMESTOQUE.Alx.SQL.Add(' Select count(itenspedc.cod_itenspedc) as quant from itenspedc where itenspedc.cod_pedcompra=:codigo ');
        DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
        DMESTOQUE.Alx.Open;
        XQTDITEM := DMESTOQUE.Alx.FieldByName('quant').AsInteger;
        XQTDDESP := 0;
       //Define numero de paginas para produtos
        If DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger > 0
            Then Begin
            XQTDPAG := (Round(XQTDITEM / DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger));
        End
        Else Begin
            XQTDPAG := 0;
            RegistraFalha('   Configurações de nota: O número de itens de produtos a serem impressos na nota fiscal, não foi devidamente configurado ');
        End;
        If XQTDPAG < (XQTDITEM / DMMACS.TLoja.FieldByName('NFITMAXPROD').AsInteger)
            Then Begin
            XQTDPAG := XQTDPAG + 1;
        End;

        If XTipo = 'ORDEM'
        Then Begin
           //Define numero de paginas para serviços/despesas
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add(' Select count(despadic.COD_DESPADIC) as QUANT from despadic where (despadic.GERADOR=''ORDEM'') AND (despadic.COD_gerador=:codigo) ');
            DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
            DMESTOQUE.Alx.Open;
            XQTDDESP := DMESTOQUE.Alx.FieldByName('quant').AsInteger;
            If DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger > 0
                Then Begin
                XQtdPagDesp := (Round(XQTDDESP / DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger));
                If XQtdPagDesp < (XQTDDESP / DMMACS.TLoja.FieldByName('NFITMAXDESP').AsInteger)
                    Then Begin
                    XQtdPagDesp := XQtdPagDesp + 1;
                End;
            End
            Else Begin
                XQtdPagDesp := 0;
                RegistraFalha('   Configurações de nota: O número de itens de produtos a serem impressos na nota fiscal, não foi devidamente configurado ');
            End;

           //Se numero de paginas de despesas for superior a de produtos... a quantidade de pagina de serviços passa a ser o total de paginas a ser impresso
            If XQtdPagDesp > XQTDPAG Then
                XQTDPAG := XQtdPagDesp;
        End;

       ///////////////////////////////////////////
       // FIM DE CONTROLE DE NUMERACAO DE PAGINA
       ///////////////////////////////////////////

        If (FMenu.TIPOREL <> 'RNF')
            Then Begin
        //Caso não seja reimpressão
            If xtipo = 'ORDEM'
                Then Begin
               ////////////////////////
               // DADOS ADICIONAIS 02
               ////////////////////////
               //IMPRIME DADOS DO VEICULO SELECIONADO
                If DMMACS.TLoja.FieldByName('NFIMPDADOSVEICULO').AsString = '1'
                    Then Begin
                    DMPESSOA.TEquip.Close;
                    DMPESSOA.TEquip.SQL.Clear;
                    DMPESSOA.TEquip.SQL.Add(' SELECT * FROM equipamento WHERE equipamento.cod_equipamento=:CODIGO ');
                    DMPESSOA.TEquip.ParamByName('CODIGO').AsInteger := DMServ.TOrd.FieldByName('COD_EQUIPAMENTO').AsInteger;
                    DMPESSOA.TEquip.Open;
                    If Not DMPESSOA.TEquip.IsEmpty
                        Then Begin
                        MDadosAdicionais.Lines.Text := 'Placa: ' + DMPESSOA.TEquip.FieldByName('PLACA').AsString + ' - Frota: ' + DMPESSOA.TEquip.FieldByName('NUM_FROTA').AsString + ' - Km Atual:' + DMServ.TOrd.FieldByName('TOTKM').AsString;
                    End;
                End;

            End;
           ////////////////////////
           // DADOS ADICIONAIS 01
           ///////////////////////

           //ADICIONA O CAMPO DESCRITO NO DADOS ADICIONAIS DE CONFIGURAÇÃO DE LOJA
           //Texto transferido para a parte do reservado ao fisco...MDadosAdicional01.Lines.Text:=DMMACS.TLoja.FieldByName('NFDADOSADIC').AsString;
           //ADICIONA OBSERVAÇÃO NORMAL DA ORDEM
            If (xtipo = 'ORDEM') And (DMMACS.TLoja.FieldByName('NFIMPOBS').AsString = '1') Then
                MDadosAdicionais.Lines.Add(DMServ.TOrd.FieldByName('OBSERVACAO').AsString);

        End
        Else Begin
           //Efetua este procedimento apenas quando o formulario é ativado
            DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;
            If XTipo = 'PEDV' Then
                DMMACS.TALX.SQL.Add(' select * from docfissaida where docfissaida.cod_pedido=:codigo ');
            If XTipo = 'ORDEM' Then
                DMMACS.TALX.SQL.Add(' select * from docfisord where docfisord.cod_ordem=:codigo ');
            DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMMACS.TALX.Open;
           //Caso seja reimpressao o sistema vai pegar os dados adicionais antigos que já estão gravado na tabela
            If XDadosAdicionaisReimp = True
            Then Begin
                If DMMACS.TALX.IsEmpty
                    Then Begin
                   //Caso não tenha retornado valores pede para o usuario informar manualmente
                    MessageDlg('O Sistema não capturou os dados adicionais da Nota, por favor informe manualmente', mtWarning, [mbOK], 0);
                End
                Else Begin
                   //insere as informações antigas
                    MDadosAdicionais.Lines.Text := DMMACS.TALX.FieldByName('dadosad01').AsString;
                   //Reimpressão de ECF para NFe
                    If ((FMenu.TIPOAUX = 'ECF') And ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe'))) And (XNumECF <> '') Then
                        If DMSAIDA.TPedV.FieldByName('FISCO').AsString <> 'NFE2' Then
                            MDadosAdicionais.Lines.Add('Cfe cupom fiscal n° ' + XNumECF); //Se for reimpressão de ECF para nfe devemos adicionar o numero do cupom referente na nf
                End;
                XDadosAdicionaisReimp := False;
            End
            Else Begin
               //ADICIONA TODOS OS MEMOS DE DADOS ADICIONAIS PARA O DADOS ADICIONAL PRINCIPAL
               //insere as informações antigas
                MDadosAdicionais.Lines.Text := DMMACS.TALX.FieldByName('dadosad01').AsString;
                //If ((FMenu.TIPOAUX = 'ECF') And (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')) And (XNumECF <> '') Then
                If ((FMenu.TIPOAUX = 'ECF') And ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe'))) And (XNumECF <> '') Then                
                    MDadosAdicionais.Lines.Add('Cfe cupom fiscal n° ' + XNumECF); //Se for reimpressão de ECF para nfe devemos adicionar o numero do cupom referente na nf

            End;
        End;
    Except
        RegistraFalha('   Dados Adicionais: Os dados adicionais não foram gerados de acordo');
        Result := False;
    End;
End;


//Função utilizada para validar os dados reservados ao fisco

Function TFPadraoFiscal.ValidaReservadoFisco: Boolean;
Begin
    Result := True;
    Try
        MReservadosFisco.Lines.Clear;
        If (XTipo = 'PEDV') Or (XTipo = 'ORDEM')
        Then Begin
            If (FMenu.XSimplesRemessa = True) Or (FMenu.XRemessaGarantia = True) Or (FMenu.XDevolucao = True) Or (FMenu.XOutrosFisc = True) Then
                Exit; // Se for remessa garantia ou devolução sai da validação
        	 //Verifica se ocorreu casos de substituição tributária
            If XCFOP_ST = True
            Then Begin
                MReservadosFisco.Lines.Text := XTxtProtocolo;
            	 //DE EMPRESA SIMPLE PARA SIMPLES
                If (FMenu.XTributaEmpresa = 'SIMPLES') //And (FMenu.XTributaCliente = 'SIMPLES')
                    Then Begin
                //para estao de Destino e Origem Iguais
                    If XUfOrigem = XUfDestino Then
                        MReservadosFisco.Lines.Add(FMenu.XDecreto)
                    Else
                        MReservadosFisco.Lines.Add(XTxtProtocolo); ////Para fora do Estado
                End;
             	 //DE EMPRESA SIMPLE PARA NORMAL
                If (FMenu.XTributaEmpresa = 'SIMPLES') //And (FMenu.XTributaCliente = 'NORMAL')
                Then Begin
                	 //para estao de Destino e Origem Iguais
                    If XUfOrigem = XUfDestino Then
                        MReservadosFisco.Lines.Add(FMenu.XDecreto)
                    Else
                        MReservadosFisco.Lines.Add(XTxtProtocolo);
                End;
             	 //DE EMPRESA NORMAL
                If (FMenu.XTributaEmpresa = 'NORMAL')
                    Then Begin
                //para estao de Destino e Origem Iguais
                    If XUfOrigem = XUfDestino Then
                        MReservadosFisco.Lines.Add(FMenu.XDecreto)
                    Else
                        MReservadosFisco.Lines.Add(XTxtProtocolo);
                End;
                If ((XTipo = 'PEDV') And (XEmpresaInustria=True)) or ((XTipo = 'PEDV') And (FMenu.XTributaEmpresa = 'NORMAL')) And (XUfOrigem <> XUfDestino)
                    Then Begin
                    MReservadosFisco.Lines.Clear;
                    MReservadosFisco.Lines.Add(XTxtProtocolo); ////Para fora do Estado
                End
                Else Begin
                    MReservadosFisco.Lines.Add('Base de Cálculo ICMS S.T. R$ ' + FloatToStr(XVlrBaseIcmsSt));
                    MReservadosFisco.Lines.Add('Valor de ICMS S.T. R$ ' + FloatToStr(XVlrIcmsSt));
                End;
            End;
            //Alex 27/06/2014: Verifica se o cst utilizado permite credito de icms
            If XOperacaoCreditoIcms=True
            Then Begin
            	MReservadosFisco.Lines.Add('PERMITE APROVEITAMENTO DE CRÉDITO DE ICMS DE '+FormatFloat('0.00', XAliquotaCreditoIcms)+'% NO VALOR APROXIMADO DE R$ ' + FormatFloat('0.00', XValorCreditoIcms)+'.');
            End;
        End;
        MReservadosFisco.Lines.Add(DMMACS.TLoja.FieldByName('NFDADOSADIC').AsString);
//        MReservadosFisco.Lines.Add('Tributos totais estimados nesta nota fiscal (Lei 12.741/2012): ' + FormatFloat('0.00', XVlrAliquotaTotTributa) + '% R$ ' + FormatFloat('0.00', XValorTotalAproxTributacao) + '. Com base no IBPT');
        MReservadosFisco.Lines.Add('Tributos aproximados (Lei 12.741/2012): ' + FormatFloat('0.00',XAliqTotTribNacional)+'% R$ '+ FormatFloat('0.00', XValorTotalAproxTributacaoNacional)+' Federal e '+ FormatFloat('0.00',XAliqTotTribEstadual )+'% R$ '+ FormatFloat('0.00', XValorTotalAproxTributacaoEstadual)+' Estadual  Fonte: IBPT');
       //Paulo 15/12/2010: Adiciona obs fiscal dos produtos
        If (XTipo = 'ORDEM') Or (XTipo = 'PEDV') Then
        Begin
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            If XTipo = 'PEDV' Then
            Begin
                DMESTOQUE.Alx.SQL.Add(' select distinct(subproduto.obsfiscal) from subproduto');
                DMESTOQUE.Alx.SQL.Add(' left join estoque on estoque.cod_subprod = subproduto.cod_subproduto');
                DMESTOQUE.Alx.SQL.Add(' left join itenspedven on itenspedven.cod_estoque = estoque.cod_estoque ');
                DMESTOQUE.Alx.SQL.Add(' where itenspedven.cod_pedven=:codigo and subproduto.obsfiscal <> ''''');
            End;
            If XTipo = 'ORDEM' Then
            Begin
                DMESTOQUE.Alx.SQL.Add(' select distinct(subproduto.obsfiscal)  from subproduto ');
                DMESTOQUE.Alx.SQL.Add(' left join estoque on estoque.cod_subprod = subproduto.cod_subproduto');
                DMESTOQUE.Alx.SQL.Add(' left join itprodord on itprodord.cod_estoque = estoque.cod_estoque');
                DMESTOQUE.Alx.SQL.Add(' where itprodord.cod_ordem=:codigo and subproduto.obsfiscal <> ''''');
            End;

            DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger := XCod_Pedido;
            DMESTOQUE.Alx.Open;
            DMESTOQUE.Alx.First;
            While Not DMESTOQUE.alx.Eof Do
            Begin
                MReservadosFisco.Lines.Add(DMESTOQUE.Alx.FieldByName('obsfiscal').AsString);
                DMESTOQUE.Alx.Next;
            End;
        End;
    Except
        Result := False;
        RegistraFalha('   Reservados ao Fisco: Falha ao gerar reservados ao fisco');
    End;
End;
//Função utilizada para efetuar o rateio de valor e base icms para pedidos de compra

Function TFPadraoFiscal.RateioValorBaseIcms: Boolean;
Var
    XRatPercentual, XRatVlrTotProd, XTotRegistros, XVlrDiferencaBase, XVlrRateioBase, XVlrDiferencaValor, XVlrRateioValor, XVlrInserido: Real;
Begin
    Result := True;
    Try
        If (EdBaseICMS.ValueNumeric = XVlrBaseIcmsOp) And (EdVlrIcms.ValueNumeric = XVlrIcmsOp)
            Then Begin
            MessageDlg('Existem produtos com redução na base de cálculo de Icms. Verifique a base', mtInformation, [mbOK], 0);
            EdBaseICMS.ReadOnly := False;
            EdVlrIcms.ReadOnly := False;
        End
        Else Begin
            XRatPercentual := 0;
            XRatVlrTotProd := 0;
            XTotRegistros := 0;
            XVlrDiferencaBase := 0;
            XVlrDiferencaValor := 0;
            XVlrDiferencaValor := 0;
            XVlrRateioValor := 0;

           //verifica os totais a serem rateados de valor e de base de icms
            If EdBaseICMS.ValueNumeric < XVlrBaseIcmsOp
                Then Begin //CASO A BASE DE ICMS TENHA SIDO DIMINUIDA
                XVlrDiferencaBase := XVlrBaseIcmsOp - EdBaseICMS.ValueNumeric;
            End;
            If EdBaseICMS.ValueNumeric > XVlrBaseIcmsOp
                Then Begin //CASO A BASE DE ICMS TENHA SIDO ACRESCIDA
                XVlrDiferencaBase := EdBaseICMS.ValueNumeric - XVlrBaseIcmsOp;
            End;
            If EdVlrIcms.ValueNumeric < XVlrIcmsOp
                Then Begin // CASO O VALOR  DE ICMS TENHA SIDO DIMINUIDO
                XVlrDiferencaValor := XVlrIcmsOp - EdVlrIcms.ValueNumeric;
            End;
            If EdVlrIcms.ValueNumeric > XVlrIcmsOp
                Then Begin // CASO O VALOR TENHA SIDO ACRESCIDO
                XVlrDiferencaValor := EdVlrIcms.ValueNumeric - XVlrIcmsOp;
            End;

           //Verifica se o total de item com redução na base
            DMENTRADA.TAlx.Close;
            DMENTRADA.TAlx.SQL.Clear;
            DMENTRADA.TAlx.SQL.Add('  Select Sum(itenspedc.valortotal) as TOTALBASE, sum(itenspedc.descnf) AS descnf   from itenspedc ');
            DMENTRADA.TAlx.SQL.Add('   left join cst ON itenspedc.cod_cst = cst.cod_cst ');
            DMENTRADA.TAlx.SQL.Add('    where ((cst.substituicao<>''1'') OR (cst.substituicao IS NULL)) AND (itenspedc.cod_pedcompra=:Pedido) ');
            DMENTRADA.TAlx.ParamByName('Pedido').AsInteger := XCod_Pedido;
            DMENTRADA.TAlx.Open;
            XRatVlrTotProd := DMENTRADA.TAlx.FieldByName('TOTALBASE').AsCurrency - DMENTRADA.TAlx.FieldByName('descnf').AsCurrency;
            XVlrRateioBase := XVlrDiferencaBase;
            XVlrRateioValor := XVlrDiferencaValor;

            If XRatVlrTotProd > 0
                Then Begin
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
                While Not DMENTRADA.TItemPC.Eof Do
                Begin
                    If DMENTRADA.TItemPC.RecNo = DMENTRADA.TItemPC.RecordCount
                        Then Begin
                       //Se for a ultima linha aplica-se toda a diferença restante de valores

                        DMENTRADA.TItemPC.Edit;
                       //CASO A BASE DE ICMS TENHA SIDO DIMINUIDA
                        If EdBaseICMS.ValueNumeric < XVlrBaseIcmsOp Then
                            DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency := DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency - XVlrDiferencaBase;

                       //CASO A BASE DE ICMS TENHA SIDO ACRESCIDA
                        If EdBaseICMS.ValueNumeric > XVlrBaseIcmsOp Then
                            DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency := DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency + XVlrDiferencaBase;

                       // CASO O VALOR  DE ICMS TENHA SIDO DIMINUIDO
                        If EdVlrIcms.ValueNumeric < XVlrIcmsOp Then
                            DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency := DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency - XVlrDiferencaValor;

                       // CASO O VALOR TENHA SIDO ACRESCIDO
                        If EdVlrIcms.ValueNumeric > XVlrIcmsOp Then
                            DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency := DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency + XVlrDiferencaValor;

                        DMENTRADA.TItemPC.Post;
                    End
                    Else Begin
                       //Se não for ultima linha aplica se a diferença proporcional
                       //Verifica o percentual que equivale o total do item para o total geral de redução

                        XRatPercentual := ((DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency - DMENTRADA.TItemPC.FieldByName('descnf').AsCurrency) * 100) / XRatVlrTotProd;

                        DMENTRADA.TItemPC.Edit;
                       //CASO A BASE DE ICMS TENHA SIDO DIMINUIDA
                        If EdBaseICMS.ValueNumeric < XVlrBaseIcmsOp
                            Then Begin
                            XVlrInserido := (XVlrRateioBase * XRatPercentual) / 100;
                            DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency := DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency - (XVlrRateioBase * XRatPercentual) / 100;
                        End;

                       //CASO A BASE DE ICMS TENHA SIDO ACRESCIDA
                        If EdBaseICMS.ValueNumeric > XVlrBaseIcmsOp
                            Then Begin
                            XVlrInserido := (XVlrRateioBase * XRatPercentual) / 100;
                            DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency := DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency + (XVlrRateioBase * XRatPercentual) / 100;
                        End;
                       //repassa os valores inseridos para suas variaveis que guardam a diferença
                        XVlrDiferencaBase := XVlrDiferencaBase - XVlrInserido;
                       // CASO O VALOR  DE ICMS TENHA SIDO DIMINUIDO
                        If EdVlrIcms.ValueNumeric < XVlrIcmsOp
                            Then Begin
                            XVlrInserido := (XVlrRateioValor * XRatPercentual) / 100;
                            DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency := DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency - (XVlrRateioValor * XRatPercentual) / 100;
                        End;

                       // CASO O VALOR TENHA SIDO ACRESCIDO
                        If EdVlrIcms.ValueNumeric > XVlrIcmsOp
                            Then Begin
                            XVlrInserido := (XVlrRateioValor * XRatPercentual) / 100;
                            DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency := DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency + (XVlrRateioValor * XRatPercentual) / 100;
                        End;

                        DMENTRADA.TItemPC.Post;
                    End;
                   //repassa os valores inseridos para suas variaveis que guardam a diferença
                    XVlrDiferencaValor := XVlrDiferencaValor - XVlrInserido;
                    DMENTRADA.TItemPC.Next;
                End;
                Try
                    DMENTRADA.IBT.CommitRetaining;
                    EscreveItensProduto;
                Except
                    DMENTRADA.IBT.RollbackRetaining;
                    Result := False;
                    RegistraFalha('   Falha: Falha ao efetuar rateio de Valor e Base de Icms')
                End;
            End;
        End;
    Except
        Result := False;
        RegistraFalha('   Falha: Falha ao efetuar rateio de Valor e Base de Icms')
    End;
End;

//Função utilizada para efetuar o rateio de diferimento de icms entre os itens tributados

Function TFPadraoFiscal.RateioDiferimento: Boolean;
Var
    XRatDiferValor, XRatSaldoVlr, XRatVlrTotProd, XRatPercentual, XRatVlrDiminuir: Real;
    XTotRegistros: Integer;
Begin
    Result := True;
    Try
        If (EdVlrIcms.ValueNumeric <> XVlrIcmsOp)
            Then Begin
            XRatDiferValor := 0;
            XRatSaldoVlr := 0;
            XRatPercentual := 0;
            XRatVlrDiminuir := 0;
            If EdVlrIcms.ValueNumeric < XVlrIcmsOp
                Then Begin
                XRatDiferValor := XVlrIcmsOp - EdVlrIcms.ValueNumeric;
                XRatSaldoVlr := XVlrIcmsOp - EdVlrIcms.ValueNumeric;
            End;
           //Verifica se o total de item com redução na base
            DMENTRADA.TAlx.Close;
            DMENTRADA.TAlx.SQL.Clear;
            DMENTRADA.TAlx.SQL.Add(' Select Sum(itenspedc.valortotal) as TOTALBASE from itenspedc ');
            DMENTRADA.TAlx.SQL.Add('  where (exists(select * from cst where (cst.cod_cst = itenspedc.cod_cst) and (cst.SUBSTITUICAO<>''1''))) AND (itenspedc.cod_pedcompra=:Pedido) ');
            DMENTRADA.TAlx.ParamByName('Pedido').AsInteger := XCod_Pedido;
            DMENTRADA.TAlx.Open;
            XRatVlrTotProd := DMENTRADA.TAlx.FieldByName('TOTALBASE').AsCurrency;
            If XRatVlrTotProd > 0
                Then Begin
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
                While Not DMENTRADA.TItemPC.Eof Do
                Begin
                   //Verifica o percentual que equivale o total do item para o total geral de redução
                    XRatPercentual := (DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency * 100) / XRatVlrTotProd;
                    If XRatDiferValor <> 0
                        Then Begin
                        XRatVlrDiminuir := (XRatDiferValor * XRatPercentual) / 100;
                        DMENTRADA.TItemPC.Edit;
                        If XTotRegistros = DMENTRADA.TItemPC.RecNo Then
                            DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency := DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency - XRatSaldoVlr
                        Else
                            DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency := DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency - XRatVlrDiminuir;
                        DMENTRADA.TItemPC.Post;
                        XRatSaldoVlr := XRatSaldoVlr - XRatVlrDiminuir;
                    End;
                    DMENTRADA.TItemPC.Next;
                End;
                Try
                    DMENTRADA.IBT.CommitRetaining;
                    EscreveItensProduto;
                Except
                    DMENTRADA.IBT.RollbackRetaining;
                    Result := False;
                    RegistraFalha('   Falha: Falha ao efetuar rateio Diferimento de Icms')
                End;
            End
            Else Begin
                Result := False;
                RegistraFalha('   Rateio de Diferimento de Icms: Total de produtos Tributados retornou zero ');
            End;
        End;
    Except
        Result := False;
        RegistraFalha('   Falha: Falha ao efetuar rateio Diferimento de Icms');
    End;
End;
//Função utilizada para localizar o codigo (chave primaria) do periodo para lançar os documentos fiscais

Function TFPadraoFiscal.BuscaPeriodoFiscal: Boolean;
Begin
    Result := True;
    LPeriodoFiscal.Caption := 'Período Fiscal Não Definido';
    XNomePeriodoFiscal := '';
    Try
  //Sql para localizar todos os periodos fiscais em aberto
        DMMACS.TPeriodoFiscal.Close;
        DMMACS.TPeriodoFiscal.SQL.Clear;
        DMMACS.TPeriodoFiscal.SQL.Add(' Select * from periodofiscal where (periodofiscal.fechado=''N'')');
        DMMACS.TPeriodoFiscal.Open;
        DMMACS.TPeriodoFiscal.Last;
        If DMMACS.TPeriodoFiscal.RecordCount > 1
            Then Begin
            LPeriodoFiscal.Caption := 'Período Fiscal Não Definido';
            XNomePeriodoFiscal := '';
            Result := False;
            RegistraFalha('   Período Fiscal: Foi encontrado mais de um período fiscal em aberto');
        End
        Else Begin
            If Not DMMACS.TPeriodoFiscal.IsEmpty
                Then Begin
                XCod_Perido_Fiscal := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
                LPeriodoFiscal.Caption := 'Período Fiscal: ' + DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
                XNomePeriodoFiscal := DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
               //Repassa os Intervalos de data
                Try
                    XDtIniPeriodo := DMMACS.TPeriodoFiscal.FieldByName('DTINICIAL').AsDateTime;
                    XDtFimPeriodo := DMMACS.TPeriodoFiscal.FieldByName('DTFINAL').AsDateTime;
                Except
                    Result := False;
                    RegistraFalha('   Período Fiscal: Falha ao identificar o intervalo de datas no período, procure suporte técnico');
                End;
            End
            Else Begin
                LPeriodoFiscal.Caption := 'Período Fiscal Não Definido';
                XNomePeriodoFiscal := '';
                Result := False;
                RegistraFalha('   Período Fiscal: Não foi encontrado período fiscal, inicialize o período fiscal');
            End;
        End;
    Except
        Result := False;
        RegistraFalha('   Período Fiscal: Falha ao inserir a nota fiscal dentro de um período fiscal. Verifique suporte técnico');
    End;
End;

//Função utilizada para efetuar calculo de rateio de Substituição Tributária entre os Itens de entrada

Function TFPadraoFiscal.RateioStEntrada: Boolean;
Var
    XRateioVlrProduto, XRateioBaseIcmsSt, XRateioVlrIcmSt, XRateioSaldoVlrIcmsSt, XRateioSaldoBaseIcmsSt, XRateioPercento: Real;
Begin
    Result := True;
    EdBaseICMSST.ReadOnly := False;
    EdVlrIcmsST.ReadOnly := False;
    If XImportNfe = 0
    Then Begin //Jônatas 04/10/2013 - se for importação XML, não é pra mostrar a mensagem. 0 = manual, 1=importação
        If XCFOP_ST = True
        Then Begin
           //Sql para descobrir todos os itens com Substituição Tributária
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add(' Select Sum(itenspedc.valortotal) as TOTAL from itenspedc ');
            DMESTOQUE.Alx.SQL.Add(' Left join cst on itenspedc.cod_cst=cst.cod_cst ');
            DMESTOQUE.Alx.SQL.Add(' Where (cst.substituicao=''1'') and (itenspedc.cod_pedcompra=:codigo) ');
            DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMESTOQUE.Alx.Open;
            If Not DMESTOQUE.Alx.IsEmpty
            Then Begin
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
                If Not DMENTRADA.TItemPC.IsEmpty
                Then Begin
                    XRateioBaseIcmsSt := EdBaseICMSST.ValueNumeric;
                    XRateioVlrIcmSt := EdVlrIcmsST.ValueNumeric;
                    XRateioSaldoVlrIcmsSt := XRateioVlrIcmSt;
                    XRateioSaldoBaseIcmsSt := XRateioBaseIcmsSt;
                    DMENTRADA.TItemPC.Last;
                    DMENTRADA.TItemPC.First;
                    While Not DMENTRADA.TItemPC.Eof Do
                    Begin
                       //Descobre percentual para rateio
                        XRateioPercento := (DMENTRADA.TItemPC.FieldByName('valortotal').AsCurrency * 100) / XRateioVlrProduto;
                        If (EdBaseICMSST.ValueNumeric <= 0)
                        Then Begin
                            DMENTRADA.TItemPC.Edit;
                            DMENTRADA.TItemPC.FieldByName('baseicmssubs').AsCurrency := 0;
                            DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency := 0;
                            DMENTRADA.TItemPC.Post;
                        End
                        Else Begin
                            If DMENTRADA.TItemPC.RecNo=DMENTRADA.TItemPC.RecordCount
                            Then Begin
                                DMENTRADA.TItemPC.Edit;
                                DMENTRADA.TItemPC.FieldByName('baseicmssubs').AsCurrency := XRateioSaldoBaseIcmsSt;
                                DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency := XRateioSaldoVlrIcmsSt;
                                DMENTRADA.TItemPC.Post;
                            End
                            Else Begin
                                DMENTRADA.TItemPC.Edit;
                                DMENTRADA.TItemPC.FieldByName('baseicmssubs').AsCurrency := (XRateioBaseIcmsSt * XRateioPercento) / 100;
                                DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency := (XRateioVlrIcmSt * XRateioPercento) / 100;
                                DMENTRADA.TItemPC.Post;
                            End;
                            XRateioSaldoVlrIcmsSt := XRateioSaldoVlrIcmsSt-DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency;
                            XRateioSaldoBaseIcmsSt := XRateioSaldoBaseIcmsSt-DMENTRADA.TItemPC.FieldByName('baseicmssubs').AsCurrency;
                        End;
                        DMENTRADA.TItemPC.Next;
                    End;
                End;

            End;
            Try
                DMENTRADA.IBT.CommitRetaining;
            Except
                DMENTRADA.IBT.RollbackRetaining;
                Result := False;
                RegistraFalha('   Falha: Falha ao efetuar ratrio de Substituição tributária aos itens')
            End;
            //Efetua nova filtragem e escrita dos produtos na tela após rateio
            EscreveItensProduto;
        End;
    End
	 Else Begin
    	//Alex - Se tiver importando deveremos apenas repassar aos edits os valores
       //Sql para descobrir todos os itens com Substituição Tributária
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' Select Sum(itenspedc.baseicmssubs) as BCST, Sum(itenspedc.vlricmssubs) as VST from itenspedc');
       DMESTOQUE.Alx.SQL.Add(' Where (itenspedc.cod_pedcompra=:codigo) ');
       DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
       DMESTOQUE.Alx.Open;
       If Not DMESTOQUE.Alx.IsEmpty
       Then Begin
      		XVlrBaseIcmsSt := DMESTOQUE.Alx.FieldByName('BCST').AsCurrency;
      		XVlrIcmsSt := DMESTOQUE.Alx.FieldByName('VST').AsCurrency;
           EdBaseICMSST.ValueNumeric := XVlrBaseIcmsSt;
           EdVlrIcmsST.ValueNumeric := XVlrIcmsSt;
       End;
    End;
End;

//funcção utilizada em pedido de compra para zerar os icms negatrivos
Function TFPadraoFiscal.ZeraIcmsNegativosProdutosNF: Boolean;
Begin
    Result := True;
    Try
        //seta todas as bases de icms e aliquota para 0
        DMENTRADA.TAlx.Close;
        DMENTRADA.TAlx.SQL.Clear;
        DMENTRADA.TAlx.SQL.Add(' update itenspedc set itenspedc.baseicms=0, itenspedc.vlricms=0 where (itenspedc.baseicms<0) or (itenspedc.vlricms<0) and (itenspedc.cod_pedcompra=:codigo) ');
        DMENTRADA.TAlx.ParamByName('codigo').AsInteger := XCod_Pedido;
        DMENTRADA.TAlx.ExecSQL;
        DMENTRADA.IBT.CommitRetaining;
    Except
    	Result:=False
    End;
End;

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
Function TFPadraoFiscal.CalculoIcmsSubstituicaoEmpresaNormal: Boolean;
Begin
	Try
      Result:=True;
      //SIMPLES P NORMAL
      //Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
      If (Fmenu.XTributaEmpresa = 'SIMPLES') And (Fmenu.XTributaCliente = '1')
      Then Begin
      		//Calcula somente fora do estado
           If XUfOrigem <> XUfDestino
           Then Begin
              DMSAIDA.TItemPV.Edit;
              DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := (XTabItemProd.FieldByName('valortotal').AsCurrency - XTabItemProd.FieldByName('descnf').AsCurrency) + (((DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency - XTabItemProd.FieldByName('descnf').AsCurrency) * XMvaEstado) / 100);
              DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := (XTabItemProd.FieldByName('baseicmssubs').AsCurrency * XAlqIntDestinatario) / 100;
              DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
              If XCSTInterestadual > 0 Then
                  DMSAIDA.TItemPV.FieldByName('COD_CST').AsInteger := XCSTInterestadual;
              DMSAIDA.TItemPV.FieldByName('APLICARST').AsString := '1';
              DMSAIDA.TItemPV.Post;
           End;
      End;
      //NORMAL P NORMAL
      // - 14/04/2009: alterado para a mercescan
      If (Fmenu.XTributaEmpresa = 'NORMAL')
      Then Begin
         //Calcula somente fora do estado
          If XUfOrigem <> XUfDestino
          Then Begin
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
              	XAuxBaseIcmsSubstituicao := (DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency - DMSAIDA.TItemPV.FieldByName('descnf').AsCurrency);
              	//Aplica Mva
              	XAuxBaseIcmsSubstituicao := XAuxBaseIcmsSubstituicao + ((XAuxBaseIcmsSubstituicao * XMvaEstado) / 100);
               //VALOR ICMS SUBSTITUIÇÃO
              	XAuxVlrIcmsSubstituicao := 0;
              	XAuxIcmsOp := 0;
               //Calcula Valor do icms operação propria para descontar do Substituido
              	XAuxIcmsOp := (DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency - DMSAIDA.TItemPV.FieldByName('descnf').AsCurrency);
              	XAuxIcmsOp := (XAuxIcmsOp * XAliqExtDestinatario) / 100;
              	XAuxVlrIcmsSubstituicao := ((XAuxBaseIcmsSubstituicao * XAlqIntDestinatario)) / 100;
               //Desconta do valor de icms substituição o que já foi pago como icms operação propria   EdTotalProdutos.ValueNumeric*XAliqExtDestinatario)/100);
              	XAuxVlrIcmsSubstituicao := XAuxVlrIcmsSubstituicao - XAuxIcmsOp;
             	//Fim de calculo em variaveis
              	DMSAIDA.TItemPV.Edit; // TOTAL PRODUTOS - DESCONTO + (((TOTAL PRODUTOS - DESCONTO) * XMvaEstado)/100);
              	DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := XAuxBaseIcmsSubstituicao;
              	DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := XAuxVlrIcmsSubstituicao;
              	DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
              	DMSAIDA.TItemPV.FieldByName('COD_CST').AsInteger := XCSTInterestadual;
              	DMSAIDA.TItemPV.FieldByName('APLICARST').AsString := '1';
              	DMSAIDA.TItemPV.Post;
			End;
      	End;
      	If XUfOrigem = XUfDestino
      	Then Begin
          If CalcMediaSubstituicaoTributaria(DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsInteger) = True
          Then Begin
              DMSAIDA.TItemPV.Edit;
              DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := XMediaBaseST * DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency;
              DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := XMediaValorST * DMSAIDA.TItemPV.FieldByName('qtdeprod').AsCurrency;
              DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := 0;
              DMSAIDA.TItemPV.FieldByName('APLICARST').AsString := '0';
              DMSAIDA.TItemPV.Post;
          End;
      End;
      //Paulo 26/10/2010 - 158: Se o estado for isento ele zera os valores substituidos
      If XEstadoIsentoST = true Then
      Begin
          DMSAIDA.TItemPV.Edit;
          DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := 0;
          DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := 0;
          DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
          DMSAIDA.TItemPV.FieldByName('APLICARST').AsString := '0';
          DMSAIDA.TItemPV.Post;
      End;
   Except
   	Result:=False;
   End;
End;

//Função utilizada para Calcular Impostos de cada item de produto da NF
Function TFPadraoFiscal.CalcImpostosProdutosNF: Boolean;
Var
    XAuxBaseIcmsSubstituicao, XAuxVlrIcmsSubstituicao, XAuxIcmsOp: Real;
Begin
    Result := True;
    If XTipo = 'PEDV'
    Then Begin
    //Se for devolução ou remessa para garantia o sistema deve pular o calculo de impostos
        If (FMenu.XSimplesRemessa = True) Or (FMenu.XRemessaGarantia = True) {Or (FMenu.XDevolucao = True)} Or (FMenu.XOutrosFisc = True) Or (FMenu.TIPOAUX = 'ECF') Or (FMenu.XComplementacao = True) Then
            Exit
        else begin
        	if FMenu.XDevolucao = True then//Edmar - 16/03/2015 - Se for devolução, zera os impostos dos itens
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
           end;
        end;
    End;
    Try
  		 //Define Sql para selecionar os itens (Itens de Pedido de compra não passam por este prodesso)
        If XTipo = 'PEDV'
        Then Begin
            Try
            	 //Se o processo for operação de venda normal
                If ((FMenu.XRemessaGarantia = false) And (FMenu.XSimplesRemessa = False) And (fmenu.XDevolucao = False) And (fmenu.XOutrosFisc = False) And (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'ECF')) And (DMMACS.TEmpresa.FieldByName('CONTICMS').AsString <> '1') And (FMenu.XComplementacao = False)
                Then Begin
                   //seta todas as bases de icms e aliquota para 0
                    DMSAIDA.TAlx.Close;
                    DMSAIDA.TAlx.SQL.Clear;
                    DMSAIDA.TAlx.SQL.Add(' UpDate itenspedven set itenspedven.baseicms=0, itenspedven.vlricms=0, itenspedven.aliqicms=0 where (itenspedven.cod_pedven=:codigo) ');
                    DMSAIDA.TAlx.ParamByName('codigo').AsInteger := XCod_Pedido;
                    DMSAIDA.TAlx.ExecSQL;
                    DMSAIDA.IBT.CommitRetaining;
                End;
            Except
                RegistraFalha('   Falha cálculo icms: Falha ao recalcular icms dos produtos');
                Result := False;
            End;
            DMSAIDA.TItemPV.Close;
            DMSAIDA.TItemPV.SQL.Clear;
            DMSAIDA.TItemPV.SQL.Add(' select * from itenspedven ');
            DMSAIDA.TItemPV.SQL.Add('  left join cst ON itenspedven.cod_cst = cst.cod_cst WHERE itenspedven.cod_pedven=:codigo ');
            DMSAIDA.TItemPV.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMSAIDA.TItemPV.Open;
        End;
        If XTipo = 'ORDEM'
        Then Begin
            Try
               //seta todas as bases de icms e aliquota para 0
                DMServ.Alx.Close;
                DMServ.Alx.SQL.Clear;
                DMServ.Alx.SQL.Add(' UpDate itprodord set itprodord.baseicms=0, itprodord.vlricms=0, itprodord.aliqicms=0 where (itprodord.cod_ordem=:codigo) ');
                DMServ.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
                DMServ.Alx.ExecSQL;
                DMServ.IBT.CommitRetaining;
            Except
                RegistraFalha('   Falha cálculo icms: Falha ao recalcular icms dos produtos');
                Result := False;
            End;
            DMServ.TPOrd.Close;
            DMServ.TPOrd.SQL.Clear;
            DMServ.TPOrd.SQL.Add(' select * from itprodord ');
            DMServ.TPOrd.SQL.Add('   left join cst ON itprodord.cod_cst = cst.cod_cst where (itprodord.cod_ordem=:codigo) ');
            DMServ.TPOrd.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMServ.TPOrd.Open;
        End;

        //Seleciona total de itens com substituição tributária
        DMESTOQUE.Alx1.Close;
        DMESTOQUE.Alx1.SQL.Clear;
        If XTipo = 'PEDV'
            Then Begin
            DMESTOQUE.Alx1.SQL.Add(' select sum(itenspedven.valortotal) as TOTAL, SUM(itenspedven.descnf) as DESNF from  itenspedven ');
            DMESTOQUE.Alx1.SQL.Add('  left join cst on itenspedven.cod_cst = cst.cod_cst ');
            DMESTOQUE.Alx1.SQL.Add('  where (itenspedven.cod_pedven=:Codigo)  and (cst.substituicao=''1'')');
        End;
        If XTipo = 'ORDEM'
            Then Begin
            DMESTOQUE.Alx1.SQL.Add(' select sum(itprodord.total) as TOTAL, SUM(itprodord.descnf) as DESNF from itprodord ');
            DMESTOQUE.Alx1.SQL.Add(' left join cst on itprodord.cod_cst = cst.cod_cst ');
            DMESTOQUE.Alx1.SQL.Add(' where (itprodord.cod_ordem=:Codigo)  and (cst.substituicao=''1'')')
        End;
        DMESTOQUE.Alx1.ParamByName('CODIGO').AsInteger := XCod_Pedido;
        DMESTOQUE.Alx1.Open;

        If Not DMESTOQUE.Alx1.IsEmpty
        Then Begin
            XVlrBaseIcmsSt := DMESTOQUE.Alx1.FieldByName('TOTAL').AsCurrency - DMESTOQUE.Alx1.FieldByName('DESNF').AsCurrency;
        End;
       //INICIA CONTROL PARA PEDIDO DE VENDA
        If XTipo = 'PEDV'
        Then Begin
            DMSAIDA.TItemPV.First;
            While Not DMSAIDA.TItemPV.Eof Do
            Begin
                DMESTOQUE.Alx1.Close;
                DMESTOQUE.Alx1.SQL.Clear;
                DMESTOQUE.Alx1.SQL.Add('  Select cst.substituicao, cst.APROVEITACREDITO, estoque.mediabaseicmst, estoque.mediavlricmst, estoque.ipi_vnd, estoque.pmc, estoque.mva, estoque.REDUCBASE, subproduto.CLASSIFICACAO ');
                DMESTOQUE.Alx1.SQL.Add('   from itenspedven ');
                DMESTOQUE.Alx1.SQL.Add('   left join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
                DMESTOQUE.Alx1.SQL.Add('   left join Subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
                DMESTOQUE.Alx1.SQL.Add('   left join cst on itenspedven.cod_cst = cst.cod_cst ');
                DMESTOQUE.Alx1.SQL.Add('   where itenspedven.cod_itenspedven = :Codigo ');
                DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := XTabItemProd.FieldByName('cod_itenspedven').AsInteger;
                DMESTOQUE.Alx1.SQL.Text;
                DMESTOQUE.Alx1.Open;
                If Not DMESTOQUE.Alx1.IsEmpty
                Then Begin
                    DMSAIDA.TItemPV.Edit;
                    DMSAIDA.TItemPV.FieldByName('baseicmssubs').AsCurrency := 0;
                    DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency := 0;
                    DMSAIDA.TItemPV.Post;
                    If DMESTOQUE.Alx1.FieldByName('SUBSTITUICAO').AsString = '1'
                    Then Begin
                    	 //As funções abaixo chamam funcções especificas para cada tipo de empresa e são implementadas apenas para vendas
                    	 If (XEmpresaInustria=True)
                        Then Begin
                            //CalculoIcmsSubstituicaoInsustriasSimples;
							 CalculoIcmsSubstituicaoIndustriasSimples(DMSAIDA.TItemPV, XTipo);                            
                        End
                        Else Begin
                            CalculoIcmsSubstituicaoEmpresaNormal;
                        End;
                    End
                    Else Begin
                       //Se item não for de substituição
                       //SIMPLES P SIMPLES ITEM DE SUBSTITUIÇÃO
                        If ((Fmenu.XTributaEmpresa = 'NORMAL')) And (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'ECF') And (DMESTOQUE.TCST.FieldByName('ISENTA').AsString <> '1') And (DMMACS.TEmpresa.FieldByName('CONTICMS').AsString <> '1')
                        Then Begin
                            DMSAIDA.TItemPV.Edit;
                            DMSAIDA.TItemPV.FieldByName('ALIQICMS').AsCurrency := XAliqIcms;
                            If DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency > 0 Then
                            //calculo com redução na base de cálculo
                                DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency := DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency - (((DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency - DMSAIDA.TItemPV.FieldByName('descnf').AsCurrency) * DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency) / 100)
                            Else
                                DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency := DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency - DMSAIDA.TItemPV.FieldByName('descnf').AsCurrency;

                            DMSAIDA.TItemPV.FieldByName('VLRICMS').AsCurrency := (DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency * XAliqIcms) / 100;
                            DMSAIDA.TItemPV.Post;
                        End;
                        //Alex 27/06/2014: Se o cst ou csosn permitir aproveitamento de crédito
                        If DMESTOQUE.Alx1.FieldByName('APROVEITACREDITO').AsString='1'
                        Then Begin
                            DMSAIDA.TItemPV.Edit;
                            DMSAIDA.TItemPV.FieldByName('ICMSCREDALIQ').AsCurrency := XAliqIcms;
                            DMSAIDA.TItemPV.FieldByName('ICMSCREDVALOR').AsCurrency := ((DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency - DMSAIDA.TItemPV.FieldByName('descnf').AsCurrency) * XAliqIcms) / 100;
                            DMSAIDA.TItemPV.Post;
    						 XOperacaoCreditoIcms:=	True;
    						 XAliquotaCreditoIcms:=XAliqIcms ;
                            XValorCreditoIcms:=XValorCreditoIcms + DMSAIDA.TItemPV.FieldByName('ICMSCREDVALOR').AsCurrency;
                        End;
                    End;
                End;
                DMSAIDA.TItemPV.Next;
            End;
            DMSAIDA.IBT.CommitRetaining;
        End;
       //INICIA CONTROL PARA PEDIDO DE VENDA
        If XTipo = 'ORDEM'
        Then Begin
            DMServ.TPOrd.First;
            While Not DMServ.TPOrd.Eof Do
            Begin
                DMESTOQUE.Alx1.Close;
                DMESTOQUE.Alx1.SQL.Clear;
                DMESTOQUE.Alx1.SQL.Add('   Select cst.substituicao,  cst.APROVEITACREDITO, estoque.mediabaseicmst, estoque.mediavlricmst, estoque.ipi_vnd, estoque.pmc, estoque.mva, estoque.REDUCBASE, subproduto.CLASSIFICACAO ');
                DMESTOQUE.Alx1.SQL.Add('   from itprodord ');
                DMESTOQUE.Alx1.SQL.Add('   left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
                DMESTOQUE.Alx1.SQL.Add('   left join Subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
                DMESTOQUE.Alx1.SQL.Add('   left join cst on itprodord.cod_cst = cst.cod_cst ');
                DMESTOQUE.Alx1.SQL.Add('   where itprodord.cod_itprodord = :Codigo ');
                DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := XTabItemProd.FieldByName('cod_itprodord').AsInteger;
                DMESTOQUE.Alx1.SQL.Text;
                DMESTOQUE.Alx1.Open;

                If Not DMESTOQUE.Alx1.IsEmpty
                Then Begin
                    DMServ.TPOrd.Edit;
                    DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := 0;
                    DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := 0;
                    DMServ.TPOrd.Post;
                    If DMESTOQUE.Alx1.FieldByName('SUBSTITUICAO').AsString = '1'
                    Then Begin
                       //SIMPLES P NORMAL
                       //Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
                        If (XEmpresaInustria=True) or (Fmenu.XTributaEmpresa = 'SIMPLES') And (Fmenu.XTributaCliente = '1')
                        Then Begin
                           //Calcula somente fora do estado
                            If (XUfOrigem <> XUfDestino)  or (XEmpresaInustria=True)
                                Then Begin
                                DMServ.TPOrd.Edit;
								 If XMvaEstado>1 Then
                                	DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := (DMServ.TPOrd.FieldByName('TOTAL').AsCurrency - DMServ.TPOrd.FieldByName('descnf').AsCurrency) + (((DMServ.TPOrd.FieldByName('TOTAL').AsCurrency - DMServ.TPOrd.FieldByName('descnf').AsCurrency) * XMvaEstado) / 100)
								 Else
                                	DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := (DMServ.TPOrd.FieldByName('TOTAL').AsCurrency - DMServ.TPOrd.FieldByName('descnf').AsCurrency);
                                DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := (DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency * XAliqInternaEstDest) / 100;
                                DMServ.TPOrd.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
                                If (XCSTInterestadual > 0) and (Fmenu.XTributaEmpresa = 'NORMAL') Then
                                    DMServ.TPOrd.FieldByName('COD_CST').AsInteger := XCSTInterestadual;
                                DMServ.TPOrd.FieldByName('APLICARST').AsString := '1';
                                DMServ.TPOrd.Post;
                            End;
                            //Alex 27/06/2014: Se o cst ou csosn permitir aproveitamento de crédito
                            If DMESTOQUE.Alx1.FieldByName('APROVEITACREDITO').AsString='1'
                            Then Begin
                                DMServ.TPOrd.Edit;
                                DMServ.TPOrd.FieldByName('ICMSCREDALIQ').AsCurrency := XAliqIcms;
                                DMServ.TPOrd.FieldByName('ICMSCREDVALOR').AsCurrency := ((DMServ.TPOrd.FieldByName('VALORTOTAL').AsCurrency - DMServ.TPOrd.FieldByName('descnf').AsCurrency) * XAliqIcms) / 100;
								 If DMServ.TPOrd.FieldByName('ICMSCREDVALOR').AsCurrency <=  DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency Then
                                	DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency-DMServ.TPOrd.FieldByName('ICMSCREDVALOR').AsCurrency
                                Else
									DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency:=0;
                                DMServ.TPOrd.Post;
                                XOperacaoCreditoIcms:=	True;
                                XAliquotaCreditoIcms:=XAliqIcms ;
                                XValorCreditoIcms:=XValorCreditoIcms + DMServ.TPOrd.FieldByName('ICMSCREDVALOR').AsCurrency;
                            End;
                        End;

                       //NORMAL P NORMAL
                       // - 14/04/2009: alterado para a mercescan
                       //Edmar - 11/03/2015 - Alterado a marcação do cliente de NORMAL OU SIMPLES para 1 (contribuiente de ICMS)
                       If (Fmenu.XTributaEmpresa = 'NORMAL') And (Fmenu.XTributaCliente = '1')
                       Then Begin
                            //Calcula somente fora do estado
                            If XUfOrigem <> XUfDestino
                            Then Begin
                                DMServ.TPOrd.Edit;
                                DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := (DMServ.TPOrd.FieldByName('TOTAL').AsCurrency - DMServ.TPOrd.FieldByName('descnf').AsCurrency) + (((DMServ.TPOrd.FieldByName('TOTAL').AsCurrency - DMServ.TPOrd.FieldByName('descnf').AsCurrency) * XMvaEstado) / 100);
                                DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := ((DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency * XAlqIntDestinatario) / 100) - DMServ.TPOrd.FieldByName('vlricms').AsCurrency;
                                DMServ.TPOrd.FieldByName('APLICARST').AsString := '1';
                                DMServ.TPOrd.Post;
                            End;
                        End;
                        If XUfOrigem = XUfDestino
                        Then Begin
                            If CalcMediaSubstituicaoTributaria(DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsInteger) = True
                                Then Begin
                                DMServ.TPOrd.Edit;
                                DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := XMediaBaseST * DMServ.TPOrd.FieldByName('qtd').AsCurrency;
                                DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := XMediaValorST * DMServ.TPOrd.FieldByName('qtd').AsCurrency;
                                DMServ.TPOrd.FieldByName('APLICARST').AsString := '0';
                                DMServ.TPOrd.Post;
                            End
                            Else Begin
                                DMServ.TPOrd.Edit;
                                DMServ.TPOrd.FieldByName('baseicmssubs').AsCurrency := 0;
                                DMServ.TPOrd.FieldByName('VLRICMSSUBS').AsCurrency := 0;
                                DMServ.TPOrd.FieldByName('APLICARST').AsString := '0';
                                DMServ.TPOrd.Post;
                            End;
                        End;
                       //Quando p produto for de substituição tributária sua base de icms e seu valor de icms devem ser zerados
                        DMServ.TPOrd.Edit;
                        DMServ.TPOrd.FieldByName('ALIQICMS').AsCurrency := 0;
                        DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency := 0;
                        DMServ.TPOrd.FieldByName('VLRICMS').AsCurrency := 0;
                        DMServ.TPOrd.Post;
                    End
                    Else Begin
                       //Se item não for de substituição
                       //SIMPLES P SIMPLES ITEM DE SUBSTITUIÇÃO
                        If (Fmenu.XTributaEmpresa = 'NORMAL')
                        Then Begin
                            DMServ.TPOrd.Edit;
                            DMServ.TPOrd.FieldByName('ALIQICMS').AsCurrency := XAliqIcms;
                            DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency := DMServ.TPOrd.FieldByName('TOTAL').AsCurrency - DMServ.TPOrd.FieldByName('descnf').AsCurrency;
                            DMServ.TPOrd.FieldByName('VLRICMS').AsCurrency := ((DMServ.TPOrd.FieldByName('TOTAL').AsCurrency - DMServ.TPOrd.FieldByName('descnf').AsCurrency) * XAliqIcms) / 100;
                            DMServ.TPOrd.Post;
                        End;
                        //Alex 27/06/2014: Se o cst ou csosn permitir aproveitamento de crédito
                        If DMESTOQUE.Alx1.FieldByName('APROVEITACREDITO').AsString='1'
                        Then Begin
                            DMServ.TPOrd.Edit;
                            DMServ.TPOrd.FieldByName('ICMSCREDALIQ').AsCurrency := XAliqIcms;
                            DMServ.TPOrd.FieldByName('ICMSCREDVALOR').AsCurrency := ((DMServ.TPOrd.FieldByName('TOTAL').AsCurrency - DMServ.TPOrd.FieldByName('descnf').AsCurrency) * XAliqIcms) / 100;
                            DMServ.TPOrd.Post;
    						 XOperacaoCreditoIcms:=	True;
    						 XAliquotaCreditoIcms:=XAliqIcms ;
                            XValorCreditoIcms:=XValorCreditoIcms + DMServ.TPOrd.FieldByName('ICMSCREDVALOR').AsCurrency;
                        End;
                    End;
                End;
                DMServ.TPOrd.Next;
            End;
            DMServ.IBT.CommitRetaining;
        End;
    Except
        RegistraFalha('   Item de Produto: Falha ao calcular impostos para algum item de Produto da NF');
        Result := False;
    End;
End;

//Função utilizada para Calcular Impostos da NF

Function TFPadraoFiscal.CalcImpostosNF: Boolean;
Begin
 //Inicializa Variaveis
    XVlrBaseIcmsOp := 0;
    XVlrIcmsOp := 0;
    XvlrIpi := 0;
 	 //Para pedido de compra apenas somamos os valores do itens
    If XTipo = 'PEDC'
    Then Begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add(' select sum(itenspedc.baseicms) as baseicms, sum(itenspedc.vlricms) as vlricms, sum(itenspedc.vlripi) as vlripi from itenspedc where itenspedc.cod_pedcompra=:codigo ');
        DMESTOQUE.Alx.ParamByName('Codigo').AsInteger := XCod_Pedido;
        DMESTOQUE.Alx.Open;
        If Not DMESTOQUE.Alx.IsEmpty
        Then Begin
        	 If DMMACS.TEmpresa.FieldByName('TIPOEMPRESANF').AsString='SIMPLES' Then
            	XVlrBaseIcmsOp := DMESTOQUE.Alx.FieldByName('baseicms').AsCurrency
            Else
            	XVlrBaseIcmsOp := DMESTOQUE.Alx.FieldByName('baseicms').AsCurrency + EdVlrFrete.ValueNumeric + EdVlrSeguro.ValueNumeric;
			 If XVlrBaseIcmsOp<0 Then
            	XVlrBaseIcmsOp:=0;
            XVlrIcmsOp := DMESTOQUE.Alx.FieldByName('vlricms').AsCurrency;
            XvlrIpi := DMESTOQUE.Alx.FieldByName('vlripi').AsCurrency;
            EdBaseICMS.ValueNumeric := XVlrBaseIcmsOp;
            EdVlrIcms.ValueNumeric := XVlrIcmsOp;
            EdVlrIpi.ValueNumeric := XvlrIpi;
        End;
    End;
 	 //Calculo para ordem de serviços
    If XTipo = 'ORDEM'
    Then Begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('  select sum(itprodord.baseicms) as baseicms, sum(itprodord.vlricms) as vlricms, sum(itprodord.vlripi) as vlripi, sum(itprodord.baseicmssubs) as BaseST, sum(itprodord.vlricmssubs) as ValorST from itprodord where itprodord.cod_ordem=:codigo ');
        DMESTOQUE.Alx.ParamByName('Codigo').AsInteger := XCod_Pedido;
        DMESTOQUE.Alx.Open;
        If Not DMESTOQUE.Alx.IsEmpty
            Then Begin
            XVlrBaseIcmsSt := DMESTOQUE.Alx.FieldByName('BaseST').AsCurrency;
            XVlrIcmsSt := DMESTOQUE.Alx.FieldByName('ValorST').AsCurrency;
            XVlrBaseIcmsOp := DMESTOQUE.Alx.FieldByName('baseicms').AsCurrency + EdVlrFrete.ValueNumeric + EdVlrSeguro.ValueNumeric;
            XVlrIcmsOp := DMESTOQUE.Alx.FieldByName('vlricms').AsCurrency;
            XvlrIpi := DMESTOQUE.Alx.FieldByName('vlripi').AsCurrency;
            EdBaseICMS.ValueNumeric := XVlrBaseIcmsOp;
            EdVlrIcms.ValueNumeric := XVlrIcmsOp;
            EdVlrIpi.ValueNumeric := XvlrIpi;
            If XUfOrigem <> XUfDestino
                Then Begin
                EdVlrIcmsST.ValueNumeric := XVlrIcmsSt;
                EdBaseICMSST.ValueNumeric := XVlrBaseIcmsSt;
            End
            Else Begin
                EdVlrIcmsST.Text := '';
                EdBaseICMSST.Text := '';
            End;
        End;
        If (DMMACS.TLoja.FieldByName('SERVNFE').AsString <> '1') Or (DMMACS.TLoja.FieldByName('SERVNFE').AsString = '')
            Then Begin
            If XTotalServComDesc <> 0
            Then Begin
              	EdVlrIss.ValueNumeric := DMServ.TOrd.FieldByName('TOTISS').AsCurrency;
             	EdVlrServicos.ValueNumeric := DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;
               if DMServ.TOrd.FieldByName('RT_ISS').AsString = '1' then
               	cbRetIss.Text := 'SIM'
               else
					cbRetIss.Text := 'NÃO';

            End;
        End;
    End;
 //Calculo para pedido de venda
    If XTipo = 'PEDV'
    Then Begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('  select sum(itenspedven.baseicms) as baseicms, sum(itenspedven.vlricms) as vlricms, sum(itenspedven.vlripi) as vlripi, sum(itenspedven.baseicmssubs) as BaseST, sum(itenspedven.vlricmssubs) as ValorST, sum(itenspedven.descnf) as DESCNF ');
        DMESTOQUE.Alx.SQL.Add('          from itenspedven where itenspedven.cod_pedven=:codigo');
        DMESTOQUE.Alx.ParamByName('Codigo').AsInteger := XCod_Pedido;
        DMESTOQUE.Alx.Open;
        If Not DMESTOQUE.Alx.IsEmpty
        Then Begin
            XVlrBaseIcmsSt := DMESTOQUE.Alx.FieldByName('BaseST').AsCurrency;
            XVlrIcmsSt := DMESTOQUE.Alx.FieldByName('ValorST').AsCurrency;
            XVlrBaseIcmsOp := DMESTOQUE.Alx.FieldByName('baseicms').AsCurrency + EdVlrFrete.ValueNumeric + EdVlrSeguro.ValueNumeric;
            XVlrIcmsOp := DMESTOQUE.Alx.FieldByName('vlricms').AsCurrency;
            XvlrIpi := DMESTOQUE.Alx.FieldByName('vlripi').AsCurrency;
            EdBaseICMS.ValueNumeric := XVlrBaseIcmsOp;
            EdVlrIcms.ValueNumeric := XVlrIcmsOp;
            EdVlrIpi.ValueNumeric := XvlrIpi;

           //Paulo 26/10/2010 - 158: Se o estado for isento ele zera os valores substituidos
            If XEstadoIsentoST = true Then
            Begin
                XVlrBaseIcmsSt := 0;
                XVlrIcmsSt := 0;
            End;

            If (fmenu.XSimplesRemessa = False) And (fmenu.XRemessaGarantia = False) And (FMenu.XDevolucao = False) And (FMenu.XOutrosFisc = False) //And (FMenu.XComplementacao = False)
                Then Begin
                If (XUfOrigem <> XUfDestino) or  (XEmpresaInustria=True)
                    Then Begin
                    EdVlrIcmsST.ValueNumeric := XVlrIcmsSt;
                    EdBaseICMSST.ValueNumeric := XVlrBaseIcmsSt;
                End
                Else Begin
                    EdVlrIcmsST.Text := '';
                    EdBaseICMSST.Text := '';
                End;
            End;
        End;
        If XTotalServComDesc <> 0
        Then Begin
            EdVlrIss.ValueNumeric := (xValorTotalServico * XAliqIss) / 100;
            If cbRetIss.Text='SIM' Then
               EdVlrServicos.ValueNumeric := xValorTotalServico - EdVlrIss.ValueNumeric
            Else
               EdVlrServicos.ValueNumeric := xValorTotalServico;
        End;
        //Verifica Caso Especial de Empresa Normal para Fora do estado
        If ((Fmenu.XTributaEmpresa = 'NORMAL') OR (XEmpresaInustria=True) And (DMMACS.TEmpresa.FieldByName('CONTICMS').AsString <> '1'))
        Then Begin
           //Calcula somente fora do estado
            If (XUfOrigem <> XUfDestino)
            Then Begin
                //EdBaseICMS.ValueNumeric := EdTotalProdutos.ValueNumeric;
                //EdVlrIcms.ValueNumeric := ((EdTotalProdutos.ValueNumeric * XAliqExtDestinatario) / 100);
                EdBaseICMS.ValueNumeric := XVlrBaseIcmsOp;
                EdVlrIcms.ValueNumeric :=  XVlrIcmsOp; 
            End;
        End;
    End;

    If XTipo <> 'PEDC'
        Then Begin
        If (fmenu.XSimplesRemessa = False) And (fmenu.XRemessaGarantia = False) And (FMenu.XDevolucao = False) and (FMenu.XOutrosFisc = False)
            Then Begin
           //VERIFICA AS CONDIÇÕES DE CADASTRO DA EMPRESA... DEPENDENDO DO ENQUADRAMENTO ELAS NÃO TOTALIZARAM NO CORPO DA NOTA ICMS OU ICMS ST
            If XEmpresaTributaST = False
                Then Begin
               {XVlrBaseIcmsSt:=0; //este trecho foi comentado pq eh necessário haver a base e valor mesmo que seja no sistema de rateio pela compra
               XVlrIcmsSt:=0;
               EdVlrIcmsST.ValueNumeric:=0;
               EdBaseICMSST.ValueNumeric:=0;}
            End;
           //SE A EMPRESA FOR OPTANTE DO SIMPLES NÃO IMPRIME BASE NEM VALOR DE ICMS
            If (FMenu.XTributaEmpresa = 'SIMPLES') and (XEmpresaInustria=False)
                Then Begin
                XVlrBaseIcmsOp := 0;
                XVlrIcmsOp := 0;
                EdBaseICMS.ValueNumeric := 0;
                EdVlrIcms.ValueNumeric := 0;
            End;
        End
        Else Begin
            EdVlrIcms.ValueNumeric := XVlrIcmsOp;
            EdVlrIcmsST.ValueNumeric := XVlrIcmsSt;
            EdBaseICMS.ValueNumeric := XVlrBaseIcmsOp;
            EdBaseICMSST.ValueNumeric := XVlrBaseIcmsSt;
        End;
    End;

    If (fmenu.XSimplesRemessa) OR (fmenu.XRemessaGarantia) or (FMenu.XDevolucao) then
    begin
    	EdVlrIcms.ValueNumeric := 0;
      	EdVlrIcmsST.ValueNumeric := 0;
      	EdBaseICMS.ValueNumeric := 0;
      	EdBaseICMSST.ValueNumeric := 0;
    end;
End;


//Função utilizada para limpar os valores de edits de impostos

Procedure TFPadraoFiscal.LimpaValoresImpostos;
Begin
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
End;
//Função utilizada para limpar os labels e edits de transportadora

Procedure TFPadraoFiscal.LimpaLabelTransp;
Begin
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
End;

// Função para validar a numeração da NF

Function TFPadraoFiscal.ValidaNumNf: boolean;
Begin
    //Valida Numero fiscal para não ser em branco
    If (EdNumeroFiscal.ValueInteger = 0) And (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'ECF')
        Then Begin
        XValidado := False;
        RegistraFalha('   Número Fiscal: É necessário informar o numero fiscal para prosseguir');
    End;

    If XTipo = 'PEDC'
        Then Begin
        DMMACS.TALX.close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add('  Select * from docfis ');
        DMMACS.TALX.SQL.Add('  left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp ');
        DMMACS.TALX.SQL.Add('  where (docfis.cod_pedido<>:Codigo) and (docfis.numdocfis=:NUMFISCAL) and (pedcompra.cod_fornec=:FORNECEDOR) ');
        DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_Pedido;
        DMMACS.TALX.ParamByName('FORNECEDOR').AsInteger := XCod_Pessoa;
        DMMACS.TALX.ParamByName('NUMFISCAL').AsString := EdNumeroFiscal.Text;
        DMMACS.TALX.Open;
        If Not DMMACS.TALX.IsEmpty
            Then Begin
            XValidado := False;
            RegistraFalha('   Número Fiscal: Existe outra nota fiscal para este mesmo fornecedor com esta numeração. Clique em Atualizar e após substitua a numeração por um número válido');
        End;
    End;
    If ((XTipo = 'PEDV') Or (XTipo = 'ORDEM') Or (FMenu.XNotaEntrada = True)) And ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe'))
        Then Begin
         //Saida
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Then
            DMMACS.TALX.SQL.Add(' select docfissaida.numdocfisint as numero from docfissaida where (docfissaida.numdocfisint=:numero) and (docfissaida.tipodocfis=''2'')');
        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
        	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
           	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') Then
            DMMACS.TALX.SQL.Add(' select docfissaida.numdocfisint as numero from docfissaida where (docfissaida.numdocfisint=:numero) and (docfissaida.tipodocfis=''3'') and ((docfissaida.nfestatus=''1'') or (docfissaida.nfestatus=''3'')  or (docfissaida.nfestatus=''4''))');
        DMMACS.TALX.ParamByName('numero').AsInteger := EdNumeroFiscal.ValueInteger - 1;
        DMMACS.TALX.Open;
        If DMMACS.TALX.IsEmpty
            Then Begin
             //ORDEM DE SERVIÇOS
            DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;
            If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Then
                DMMACS.TALX.SQL.Add(' select docfisord.numdocfisint as numero from docfisord where (docfisord.numdocfisint=:numero)  and (docfisord.tipodocfis=''2'')');
            If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
            	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
               	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') Then
                DMMACS.TALX.SQL.Add(' select docfisord.numdocfisint as numero from docfisord where (docfisord.numdocfisint=:numero) and (docfisord.tipodocfis=''3'')');
            DMMACS.TALX.ParamByName('numero').AsInteger := EdNumeroFiscal.ValueInteger - 1;
            DMMACS.TALX.Open;
            If DMMACS.TALX.IsEmpty
                Then Begin
                 //PEDIDO DE COMPRA
                DMMACS.TALX.Close;
                DMMACS.TALX.SQL.Clear;
                If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Then
                    DMMACS.TALX.SQL.Add(' select docfis.numdocfisCint as numero from docfis where docfis.numdocfisCint=:numero');
                If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
                	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
                   	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') Then
                    DMMACS.TALX.SQL.Add(' select docfis.numdocfisCint as numero from docfis where (docfis.numdocfisCint=:numero) and (docfis.tipodocfis=''1'') and ((docfis.nfestatus=''1'') or (docfis.nfestatus=''3'')  or (docfis.nfestatus=''4'')) ');
                DMMACS.TALX.ParamByName('numero').AsInteger := EdNumeroFiscal.ValueInteger - 1;
                DMMACS.TALX.Open;
                If (DMMACS.TALX.IsEmpty) And (EdNumeroFiscal.ValueInteger <> 1) Then
                    RegistraFalha('Falha na sequência de numeração das Notas Fiscais. o número ' + IntToStr(EdNumeroFiscal.ValueInteger - 1) + ' não foi impresso/enviado');

            End;
        End;
    End;
End;

// Função para validar dados fiscais da empresa

Function TFPadraoFiscal.ValidaDadosEmpresa: boolean;
Begin
    Result := True;
    DMMACS.Transaction.CommitRetaining;
 //FILTRA EMPRESA PARA INICIALIZAR VALORES, EM NENHUM MOMENTO MAIS DEVE SER FILTRADA A LOJA DENTRO DO FISCAL
    If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = False
        Then Begin
        RegistraFalha('  Empresa não cadastrada no sistema');
        Result := False;
        Exit;
    End;
 //FILTRA LOJA PARA INICIALIZAR VALORES, EM NENHUM MOMENTO MAIS DEVE SER FILTRADA A LOJA DENTRO DO FISCAL
    If FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '') = False
        Then Begin
        Result := False;
        RegistraFalha('  Loja não cadastrada no sistema');
        Exit;
    End;
   //VERIFICA O TIPO DO ENQUADRAMENTO DA EMPRESA
    If DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString = ''
        Then Begin
        Result := false;
        RegistraFalha('  Empresa: Tipo da empresa não cadastrado');
    End
    Else Begin
        //VERIFICA SE A EMPRESA CADASTRADA É OPTANDE DO SIMPLES
        If DMMACS.TEmpresa.FieldByName('TIPOEMPRESANF').AsString = 'SIMPLES' Then
            Fmenu.XTributaEmpresa := 'SIMPLES'
        Else
            Fmenu.XTributaEmpresa := 'NORMAL';

        //VERIFICA SE A EMPRESA calcula substituição tributária
        If DMMACS.TEmpresa.FieldByName('NCI').AsString = '1' Then
            XEmpresaTributaST := True
        Else
            XEmpresaTributaST := False;

        // - 30/03/2009: se empresa for industria
        If DMMACS.TEmpresa.FieldByName('INDUSTRIA').AsString = '1' Then
            XEmitIndustria := True
        Else
            XEmitIndustria := False;
    End;
 //verifica se a empresa esta com o CRT cadastrado
    If DMMACS.TEmpresa.FieldByName('CRT').AsString = ''
        Then Begin
        Result := false;
        RegistraFalha('  Empresa: CRT não cadastrado');
    End;
 //verifica se a empresa esta com o Valor total aproximado dos tributos devidamente preenchidos
    If DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTA').AsCurrency = 0
        Then Begin
        Result := false;
        RegistraFalha('  Empresa: Valor Total Aproximado das Tributações não cadastrado');
    End;
End;

//Função para Escrever os CFOPS usados na NF

Function TFPadraoFiscal.EscreveCfops: Boolean;
Begin
 //Inicializa Valores de CFOP em branco que significa que não foi encontrado
    Result := True;
    XCFOP1 := '';
    XCFOP2 := '';
    XCFOP3 := '';    
    Lcfop.Caption := '';
    LNatOp.Caption := '';

   //Verificações apenas para pedido de venda e ordens de serviço
                                
    If (XTipo = 'PEDV') Or (XTipo = 'ORDEM')
    Then Begin
        If (FMenu.XComplementacao = True) OR (FMenu.XOutrosFisc = true)
        Then Begin
            If (FMenu.XOutrosFisc = true) Or (FMenu.XComplementacao = True) Then
            Begin
                AbrirForm(TFCadCFOP, FCadCFOP, 1);
            End;
            XCFOP1 := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
            LNatOp.Caption := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
        End;
        If FMenu.TIPOAUX = 'ECF'
        Then Begin
            XCFOP1 := '5929'; //Cfop para reimpressão de ecf
            LNatOp.Caption := 'Venda com Cupom Fiscal';
        End
        Else Begin
           //Verificação para Cfop de Operação Própria
            If XCFOP_OP = True
                Then Begin
                If XUfOrigem <> XUfDestino Then
                    XCFOP1 := XCFOPEXTERNO
                Else
                    XCFOP1 := XCFOPINTERNO;
            End;
           //Verificação para Cfop de Subst. Tributária
            If XCFOP_ST = True
                Then Begin
                If XUfOrigem <> XUfDestino Then
                    XCFOP2 := XCFOPEXPERTOCST
                Else
                    XCFOP2 := XCFOPINTERNOCST;
            End;
           //Verificação para Cfop de Serviços
            If XCFOP_SERV = True
                Then Begin
                If XUfOrigem <> XUfDestino Then
                    XCFOP3 := XCfopExtServ
                Else
                    XCFOP3 := XCfopIntServ;
            End;
            
            if XCFOP_PERSONALIZADO then
            begin
            	XCFOP3 := XCFOPPERSONALIZADO
            end;
        End;
    End;
   //Verificações apenas para pedido de compra
    If (XTipo = 'PEDC')
    Then Begin
       //Verificação para Cfop de Operação Própria
        If XCFOP_OP = True
            Then Begin
            If XUfOrigem <> XUfDestino Then
                XCFOP1 := XCFOPEXTPC
            Else
                XCFOP1 := XCFOPINTPC;
        End;
       //Verificação para Cfop de  de Subst. Tributária
        If XCFOP_ST = True
            Then Begin
            If XUfOrigem <> XUfDestino Then
                XCFOP2 := XCFOPEXTSTPC
            Else
                XCFOP2 := XCFOPINTSTPC;
        End;
       //Verifica para entradas de devolução com nota fiscal propria
    End;
   //Escreve Cfops Verificadas, manter nesta ordem para garantir que a prioridade de impressão seja para venda com substituição tributaria, venda normal e por ultimo serviços
    If XCFOP3 <> ''
        Then Begin
        LCfop.Caption := XCFOP3;
        If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', XCFOP3, '') = True Then
            LNatOp.Caption := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
    End;
    If XCFOP1 <> ''
        Then Begin
        If (XCFOP3 <> '') Then
            LCfop.Caption := XCFOP1 + '/' + LCfop.Caption
        Else
            LCfop.Caption := XCFOP1;

        If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', XCFOP1, '') = True Then
            LNatOp.Caption := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
    End;
    If XCFOP2 <> ''
        Then Begin
        If (XCFOP3 <> '') Or (XCFOP3 <> '') Then
            LCfop.Caption := XCFOP2 + '/' + LCfop.Caption
        Else
            LCfop.Caption := XCFOP2;

        If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', XCFOP2, '') = True Then
            LNatOp.Caption := DMESTOQUE.TCFOP.FieldByName('DESCRICAO').AsString;
    End;
    If (XCFOP1 <> '') And (XCFOP2 <> '') And (XCFOP3 = '')
        Then Begin
        LCfop.Caption := XCFOP2 + '/' + XCFOP1;
    End;

   //Valida se informações foram preenchidas
    If Lcfop.Caption = ''
        Then Begin
        RegistraFalha('   CFOP: Cfop não inserida a NF, ocorreu falha ao validar cfops necessárias, verifique as configurações em loja para CFOP');
        Result := False;
    End;
    
    If LNatOp.Caption = ''
        Then Begin
        RegistraFalha('   CFOP: Natureza de operação não registrada, possivel problema esteja no cadastro de CFOP. Verifique no cadastro se o CFOP informado possui descrição');
        Result := False;
    End;
    If FMenu.TIPOAUX <> 'ECF'
        Then Begin
       //Apos termos as cfops selecionadas iremos buscar o codigo chave primaria de cada uma
        If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', XCFOP1, '') = True Then
            XCod_Cfop1 := DMESTOQUE.TCfop.FieldByName('COD_CFOP').AsInteger
        Else
            XCod_Cfop1 := -1;
        If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', XCFOP2, '') = True Then
            XCod_Cfop2 := DMESTOQUE.TCfop.FieldByName('COD_CFOP').AsInteger
        Else
            XCod_Cfop2 := -1;
        If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', XCFOP3, '') = True Then
            XCod_Cfop3 := DMESTOQUE.TCfop.FieldByName('COD_CFOP').AsInteger
        Else
            XCod_Cfop3 := -1;

       //Verifica se não foi encontrado codigo de chave primaria para cfop informado na tela
        If Not (FMenu.XOutrosFisc = true) Then //Paulo 19/07/2010:para tipo de operação outros
            If ((XCFOP1 <> '') And (XCod_Cfop1 = -1)) Or ((XCFOP2 <> '') And (XCod_Cfop2 = -1)) Or ((XCFOP3 <> '') And (XCod_Cfop3 = -1))
                Then Begin
                Result := False;
                RegistraFalha('   CFOP: Não foi localizado em banco de dados cfop correspondente. Reinicie o aplicativo');
            End;
    End;
End;

//Função Utilizada para registrar no memo de falhas os erros e falhas na validação

Function TFPadraoFiscal.RegistraFalha(Texto: String): Boolean;
Begin
    Result := True;
    Try
        PFalha.Visible := True;
        PFalha.BringToFront;
        EdErro.Visible := True;
        ShErro.Visible := True;
        EdErro.Text := 'Falha Crítica na validação. Nota Fiscal inválida. [Para detalhes clique aqui...]';
        MErros.Lines.Add(Texto);
    Except
        Result := False;
    End;
End;

//Função para iniciar as variaveis de uf de origem e destino

{Function TFPadraoFiscal.InicializaVarUF: Boolean;
Var XUf: String;
Begin
    Result := True;
    Try 
  		 //Selecao para UF de Origem, cliente usuario
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
        DMMACS.TALX.SQL.Add(' select vwcidade.uf, estado.aliqinterna, Estado.cod_cstinterestadual from empresa ');
        DMMACS.TALX.SQL.Add(' Left Join vwcidade on empresa.cod_cidade = vwcidade.cod_cidade ');
        DMMACS.TALX.SQL.Add('  left join estado on vwcidade.cod_estado = estado.cod_estado ');
        DMMACS.TALX.Open;
        If DMMACS.TALX.IsEmpty
        Then Begin
            Result := False;
        End
        Else Begin
            If DMMACS.TALX.FieldByName('UF').AsString = ''
            Then Begin
                Result := False;
            End
            Else Begin
                Result := True;
                XUfOrigem := DMMACS.TALX.FieldByName('UF').AsString;
                XCodCstST := DMMACS.TALX.FieldByName('cod_cstinterestadual').AsInteger;// caso a venda seja dentro do estado, já assumimos o cst de st
            End;
        End;

    	 //Caso o resultado já seja falho, Uf da empresa usuaria esta irregular
        If Result = False Then
            RegistraFalha('   Cabeçalho: Empresa Usuária do sistema se apresenta com irregularidade de UF');

    	 //UF PARA DESTINO, CLIENTE OU FORNECEDOR
        DMMACS.TALX.Close;
        DMMACS.TALX.SQL.Clear;
    	 //SQL PARA PEDIDO DE VENDA
        If XTipo = 'PEDV'
        Then Begin
            DMMACS.TALX.SQL.Add(' Select vwcidade.uf, estado.mva,  Estado.cod_cstinterestadual, estado.MVAFORASIMPLES, estado.COD_CSTINTERESTADUAL as CST, cliente.consumidor, estado.CST_INTERNA, ESTADO.CST_EXTERNA, ESTADO.TXT_SUBSTITUICAO, ');
            DMMACS.TALX.SQL.Add(' ESTADO.ALIQINTERNA, ESTADO.aliqinterestaual,ESTADO.isentost from vwcliente ');
            DMMACS.TALX.SQL.Add(' left join vwpedv on vwcliente.cod_cliente = vwpedv.cod_cliente ');
            DMMACS.TALX.SQL.Add(' left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade ');
            DMMACS.TALX.SQL.Add(' left join cliente on vwcliente.cod_cliente = cliente.cod_cliente ');
            DMMACS.TALX.SQL.Add(' left join estado on vwcidade.cod_estado = estado.cod_estado  ');
            DMMACS.TALX.SQL.Add(' where vwpedv.cod_pedvenda=:codigo ');
        End;

    	 //SQL PARA PEDIDO DE VENDA
        If XTipo = 'ORDEM'
        Then Begin
            DMMACS.TALX.SQL.Add(' Select vwcidade.uf, estado.ISENTOST, estado.mva,  Estado.cod_cstinterestadual, estado.MVAFORASIMPLES, estado.COD_CSTINTERESTADUAL as CST, cliente.consumidor, estado.CST_INTERNA, ESTADO.CST_EXTERNA, ');
            DMMACS.TALX.SQL.Add(' ESTADO.TXT_SUBSTITUICAO, ESTADO.ALIQINTERNA, ESTADO.aliqinterestaual from vwcliente ');
            DMMACS.TALX.SQL.Add(' left join vwordem on vwcliente.cod_cliente = vwordem.cod_cliente ');
            DMMACS.TALX.SQL.Add(' Left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade ');
            DMMACS.TALX.SQL.Add(' left join cliente on vwcliente.cod_cliente = cliente.cod_cliente ');
            DMMACS.TALX.SQL.Add('     Left join estado on vwcidade.cod_estado = estado.cod_estado  ');
            DMMACS.TALX.SQL.Add(' where vwordem.cod_ordem=:codigo ');
        End;

    	 //SQL PARA PEDIDO DE COMPRA (ENTRADAS
        If XTipo = 'PEDC'
        Then Begin
            DMMACS.TALX.SQL.Add('   Select vwcidade.uf, estado.ISENTOST, estado.mva,  Estado.cod_cstinterestadual, estado.MVAFORASIMPLES, estado.COD_CSTINTERESTADUAL as CST, estado.CST_INTERNA, ESTADO.CST_EXTERNA, ESTADO.TXT_SUBSTITUICAO, ');
            DMMACS.TALX.SQL.Add('    ESTADO.ALIQINTERNA, ESTADO.aliqinterestaual from vwfornec ');
            DMMACS.TALX.SQL.Add('    left join vwpedc on vwfornec.cod_fornec = vwpedc.cod_fornec ');
            DMMACS.TALX.SQL.Add('    Left join vwcidade on vwfornec.cod_cidade = vwcidade.cod_cidade ');
            DMMACS.TALX.SQL.Add('    Left join estado on vwcidade.cod_estado = estado.cod_estado ');
            DMMACS.TALX.SQL.Add('    where vwpedc.cod_pedcomp=:codigo ');
        End;
        DMMACS.TALX.ParamByName('codigo').AsInteger := XCod_Pedido;
        DMMACS.TALX.SQL.Text;
        DMMACS.TALX.Open;

        If (XTipo = 'PEDV') or (XTipo = 'ORDEM') then
        begin
        	 //Pauulo 26/10/2010: Verifica se o estado é isento st
            If DMMACS.TALX.FieldByName('isentost').AsString = '1' Then
                XEstadoIsentoST := true
            Else
                XEstadoIsentoST := false;
                
            If DMMACS.TALX.FieldByName('consumidor').AsString = 'S' Then
            	XClienteConsumidorFinal:=True
            Else
            	XClienteConsumidorFinal:=False;
        End;

        XUf := DMMACS.TALX.FieldByName('UF').AsString;
        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') Then
        Begin
            XUf := XUfOrigem;
        End;
        If DMMACS.TALX.IsEmpty
            Then Begin
            Result := False;
            RegistraFalha('   Cabeçalho: Cliente/Fornecedor se apresenta com irregularidade de UF');
        End;
        If XUf = ''
            Then Begin
            Result := False;
            RegistraFalha('   Cabeçalho: Cliente/Fornecedor se apresenta com irregularidade de UF');
        End
        Else Begin
            Result := True;
            XUfDestino := DMMACS.TALX.FieldByName('UF').AsString;
            If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') Then
            Begin
                XUfDestino := XUf;
            End;

           //passa variaveis para Impostos
            XTxtProtocolo := DMMACS.TALX.FieldByName('TXT_SUBSTITUICAO').AsString;
            If XClientedoSimples=True Then
            	XMvaEstado := DMMACS.TALX.FieldByName('MVA').AsCurrency
            Else
            	XMvaEstado := DMMACS.TALX.FieldByName('MVAFORASIMPLES').AsCurrency;
            //Caso o cliente seja consumidor final o mva passa ser = 1 para base de calculo ser igual ao total dos itens
{            If (XClienteConsumidorFinal=True) and (XEmpresaInustria=True) Then
               XMvaEstado :=1;
 }
{            XAliqIcms := DMMACS.TEmpresa.FieldByName('IMPEST').AsCurrency; //Atribui como aliquota de icms do estado de origem (DAS)
            XAlqIntDestinatario := DMMACS.TALX.FieldByName('ALIQINTERNA').AsCurrency;
            XAliqExtDestinatario := DMMACS.TALX.FieldByName('aliqinterestaual').AsCurrency;
            If XUfOrigem <> XUfDestino
            Then Begin
            	 If (XClienteConsumidorFinal=False) or (XClienteIE=True) Then
                	XCodCstST := DMMACS.TALX.FieldByName('cod_cstinterestadual').AsInteger;// caso a venda fora do do estado, já assumimos o cst de st de fora do estado
                XCSTInterestadual := DMMACS.TALX.FieldByName('CST').AsInteger;
                If XCSTInterestadual <= 0 Then
                    XCSTInterestadual := XCodCst;
            End;
        End;
    Except
        Result := False;
    End;
End;}

//Função para verificar a configuração dos cfops em loja para produtos
Function TFPadraoFiscal.VerificaCfopProdutoLoja: Boolean;
Begin
    Result := True;
   //Paulo 21/07/2010: Somente para outros
    XCFOPOUTROS1 := DMEstoque.TCFOP.fieldByName('CFOP').AsString;

   //Paulo 01/12/2011: Verifica se a loja está configurada para cfop de entrada de emissão própria
    If (FMenu.XOutrosEnt = True) Then
    Begin
    	//Edmar - 08/05/2015 - Se for outras entradas e uma devolução, busca o CFOP de devolução de venda
    	if FMenu.XDevolucao then
       begin
       	if (DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPDENTRO').AsInteger <> 0) OR (DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPFORA').AsInteger <> 0) then
           begin
           	if XUfOrigem <> XUfDestino Then
               begin
                   FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPFORA').AsString, '');
                   XCFOPOUTROS1 := DMESTOQUE.Alx.FieldByName('CFOP').AsString;
               end
               else begin
                   FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPDENTRO').AsString, '');
                   XCFOPOUTROS1 := DMESTOQUE.Alx.FieldByName('CFOP').AsString;
               end;
           end;
       end
       else begin
       	if (DMMACS.TLoja.FieldByName('EMISSAOPROPDENTRO').AsInteger <> 0) Or (DMMACS.TLoja.FieldByName('EMISSAOPROPDENTRO').AsInteger <> 0) then
           begin
               if XUfOrigem <> XUfDestino Then
               begin
                   FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('EMISSAOPROPFORA').AsString, '');
                   XCFOPOUTROS1 := DMESTOQUE.Alx.FieldByName('CFOP').AsString;
               end
               else begin
                   FiltraTabela(DMESTOQUE.Alx, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('EMISSAOPROPDENTRO').AsString, '');
                   XCFOPOUTROS1 := DMESTOQUE.Alx.FieldByName('CFOP').AsString;
               end;
           end;
       end;
    End;

    Try
       //ENTRADAS
        If (FMenu.XOutrosEnt = False) Then
        Begin
           //Entrada: Interno S.T.
            If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPINTSTPC').AsString, '') = False
                Then Begin
                RegistraFalha('  Loja não configurada para CFOP interno de Entradas com Substituição Tributária');
                Result := False;
            End
            Else Begin
                XCFOPINTSTPC := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
            End;
           //Entrada: Interno Operação Propria
            If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPINTPC').AsString, '') = False
                Then Begin
                RegistraFalha('  Loja não configurada para CFOP interno de Entradas com Icms de Operação Própria');
                Result := False;
            End
            Else Begin
                XCFOPINTPC := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
            End;

           //Entradas: Externo S.T.
            If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPEXTSTPC').AsString, '') = False
                Then Begin
                RegistraFalha('  Loja não configurada para CFOP Externo de Entradas com Substituição Tributária');
                Result := False;
            End
            Else Begin
                XCFOPEXTSTPC := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
            End;
           //Entradas: Externo O.P.
            If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPEXTPC').AsString, '') = False
                Then Begin
                RegistraFalha('  Loja não configurada para CFOP Externo de Entradas com Substituição Tributária');
                Result := False;
            End
            Else Begin
                XCFOPEXTPC := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
            End;

           //Entradas: Produtos de consumo próprio
            If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPMATCONSUMO').AsString, '') = False
                Then Begin
                RegistraFalha('  Loja não configurada para CFOP de entrada de materiais de uso e consumo ');
                Result := False;
            End
            Else Begin
                XCFOPMATCONSUMO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
            End;

           //Entradas: Produtos de consumo próprio Externos
            If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPMATCONSUMOEXT').AsString, '') = False
                Then Begin
                RegistraFalha('  Loja não configurada para CFOP de entrada de materiais de uso e consumo de fora do estado');
                Result := False;
            End
            Else Begin
                XCFOPMATCONSUMOEXT := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
            End;

           //Entradas: Produtos de fretes interno
            If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPFRETEINT').AsString, '') = False
                Then Begin
                RegistraFalha('  Loja não configurada para CFOP de entrada de frete de uso e consumo de dentro do estado');
                Result := False;
            End
            Else Begin
                XCFOPFRETEINT := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
            End;

           //Entradas: Produtos de fretes Externo
            If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPFRETEEXT').AsString, '') = False
                Then Begin
                RegistraFalha('  Loja não configurada para CFOP de entrada de frete de uso e consumo de fora do estado');
                Result := False;
            End
            Else Begin
                XCFOPFRETEEXT := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
            End;
        //Entradas de devolução de venda com uso de nota de entrada própria para dentro do estado
            If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPDENTRO').AsString, '') = False
                Then Begin
                RegistraFalha('  Loja não configurada para CFOP de entrada de devolução de venda de mercadoria para dentro do estado');
                Result := False;
            End
            Else Begin
                XCFOPINTDEVPROPRIA := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
            End;
        //Entradas de devolução de venda com uso de nota de entrada própria para fora do estado
            If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPFORA').AsString, '') = False
                Then Begin
                RegistraFalha('  Loja não configurada para CFOP de entrada de devolução de venda de mercadoria para fora do estado');
                Result := False;
            End
            Else Begin
                XCFOPEXTDEVPROPRIA := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
            End;
        End;

       //Paulo 20/07/2010: para outras entradas
        If FMenu.XOutrosEnt = True
            Then Begin
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
        End;

        If FMenu.TIPOAUX = 'ECF'
            Then Begin
            XCFOPINTERNO := '5929';
            XCFOPEXTERNO := '5929';
        End
        Else Begin
           //SAIDAS
            If (FMenu.XRemessaGarantia = False) And (FMenu.XDevolucao = False) And (FMenu.XSimplesRemessa = False) And (FMenu.XOutrosFisc = False) And (FMenu.XNotaEntrada = False) And (FMenu.XComplementacao = False)
                Then Begin
               //Saídas: Interno S.T.
                If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPINTERNOCST').AsString, '') = False
                    Then Begin
                    RegistraFalha('  Loja não configurada para CFOP interno de Entradas com Substituição Tributária');
                    Result := False;
                End
                Else Begin
                    XCFOPINTERNOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                End;
               //Saidas: Interno Operação Propria
                If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPINTERNO').AsString, '') = False
                    Then Begin
                    RegistraFalha('  Loja não configurada para CFOP interno de Entradas com Icms de Operação Própria');
                    Result := False;
                End
                Else Begin
                    XCFOPINTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                End;
               //Saidas: Externo S.T.
                If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPEXPERTOCST').AsString, '') = False
                    Then Begin
                    RegistraFalha('  Loja não configurada para CFOP Externo de Entradas com Substituição Tributária');
                    Result := False;
                End
                Else Begin
                    XCFOPEXPERTOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                End;

               //Saidas Externo OP
                If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPEXTERNO').AsString, '') = False
                    Then Begin
                    RegistraFalha('  Loja não configurada para CFOP Externo de Entradas com Substituição Tributária');
                    Result := False;
                End
                Else Begin
                    XCFOPEXTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                End;
            End
            Else Begin
               //OUTRAS SAIDAS
               //DEVOLUÇÕES
                If FMenu.XDevolucao = True
                    Then Begin
                   //Saídas: Interno S.T.
                    If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPINTDEVOLUCST').AsString, '') = False
                        Then Begin
                        RegistraFalha('  Loja não configurada para CFOP interno de Devolução com Substituição Tributária');
                        Result := False;
                    End
                    Else Begin
                        XCFOPINTERNOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                    End;
                   //Saidas: Interno Operação Propria
                    If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPINTDEVOLUC').AsString, '') = False
                        Then Begin
                        RegistraFalha('  Loja não configurada para CFOP interno de Devolucao com Icms de Operação Própria');
                        Result := False;
                    End
                    Else Begin
                        XCFOPINTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                    End;
                   //Saidas: Externo S.T.
                    If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPEXTDEVOLUCST').AsString, '') = False
                        Then Begin
                        RegistraFalha('  Loja não configurada para CFOP Externo de Devolução com Substituição Tributária');
                        Result := False;
                    End
                    Else Begin
                        XCFOPEXPERTOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                    End;

                   //Saidas Externo OP
                    If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPEXTDEVOLUC').AsString, '') = False
                        Then Begin
                        RegistraFalha('  Loja não configurada para CFOP Externo de Devolução com Icms de Operação Própria');
                        Result := False;
                    End
                    Else Begin
                        XCFOPEXTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                    End;
                End;
               //REMESSA GARANTIA
                If FMenu.XRemessaGarantia = True
                    Then Begin
                   //Saídas: Interno S.T.
                    If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPINTGARANTIA').AsString, '') = False
                        Then Begin
                        RegistraFalha('  Loja não configurada para CFOP interno de Devolução com Substituição Tributária');
                        Result := False;
                    End
                    Else Begin
                        XCFOPINTERNOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                    End;
                   //Saidas: Interno Operação Propria
                    If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPINTGARANTIA').AsString, '') = False
                        Then Begin
                        RegistraFalha('  Loja não configurada para CFOP interno de Devolucao com Icms de Operação Própria');
                        Result := False;
                    End
                    Else Begin
                        XCFOPINTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                    End;
                   //Saidas: Externo S.T.
                    If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPEXTGARANTIA').AsString, '') = False
                        Then Begin
                        RegistraFalha('  Loja não configurada para CFOP Externo de Devolução com Substituição Tributária');
                        Result := False;
                    End
                    Else Begin
                        XCFOPEXPERTOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                    End;

                   //Saidas Externo OP
                    If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPEXTGARANTIA').AsString, '') = False
                        Then Begin
                        RegistraFalha('  Loja não configurada para CFOP Externo de Devolução com Icms de Operação Própria');
                        Result := False;
                    End
                    Else Begin
                        XCFOPEXTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                    End;
                End;
               //SIMPLES REMESSA
                If FMenu.XSimplesRemessa = True
                    Then Begin
                   //Saídas: Interno S.T.
                    If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPINTSIMPREMESSA').AsString, '') = False
                        Then Begin
                        RegistraFalha('  Loja não configurada para CFOP interno de Simples Remessa');
                        Result := False;
                    End
                    Else Begin
                        XCFOPINTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                        XCFOPINTERNOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                    End;
                   //Saidas: Interno Operação Propria
                    If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPEXTSIMPREMESSA').AsString, '') = False
                        Then Begin
                        RegistraFalha('  Loja não configurada para CFOP Externo de Simples Remessa');
                        Result := False;
                    End
                    Else Begin
                        XCFOPEXTERNO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                        XCFOPEXPERTOCST := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                    End;
                End;

               //OUTRAS OPERAÇÕES
                If (FMenu.XOutrosFisc = True) Or (FMenu.TIPOAUX = 'ENTNFPROP') Or (FMenu.XComplementacao = True)
                    Then Begin
                   //Saídas: Interno
                    XCFOPINTERNO := XCFOPOUTROS1;
                   //Saídas: Externo
                    XCFOPEXTERNO := XCFOPOUTROS1;
                   //saídas: Interno cst
                    XCFOPINTERNOCST := XCFOPOUTROS1;
                   //Saídas: Externo
                    XCFOPEXPERTOCST := XCFOPOUTROS1;
                End;
            End;
        End;
       //Cfop utilizado para impressão de notas fiscais de entrada quando ocorreu uma devolução de venda e é usado nota fiscal propria para emissão da entrada
        If (FMenu.XNotaEntrada = True) And (FMenu.TIPOAUX <> 'ENTNFPROP')
            Then Begin
            XCFOPINTPC := XCFOPINTDEVPROPRIA;
            XCFOPINTSTPC := XCFOPINTDEVPROPRIA;
            XCFOPEXTPC := XCFOPEXTDEVPROPRIA;
            XCFOPEXTSTPC := XCFOPEXTDEVPROPRIA;
        End;
    Except

        RegistraFalha('  CFOP: Erro ao verificar CFOPs em loja');
        Result := False;
    End;


End;
//Função para validar NCM dos produtos

Function TFPadraoFiscal.ValidaNCMProdutos: Boolean;
Begin
    Result := True;
    Try
    //Verifica se impressão de NFe
        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'NFe')
        	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'NFCe')
           	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'NFe-NFCe') Then
            Exit; //Se não for NFe sai da função
        If XTipo = 'PEDV'
            Then Begin
           //SQL para verificar algum item sem codigo para substituição tributária
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add(' select subproduto.contrint, subproduto.NCM,  subproduto.descricao from itenspedven ');
            DMESTOQUE.Alx.SQL.Add('  left join vwsimilar on itenspedven.cod_estoque = vwsimilar.cod_estoque ');
            DMESTOQUE.Alx.SQL.Add('  left join subproduto on subproduto.cod_subproduto = vwsimilar.cod_subproduto');
            DMESTOQUE.Alx.SQL.Add('  Where (itenspedven.cod_pedven=:codigo) ');
            DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMESTOQUE.Alx.Open;
        End;
        If XTipo = 'ORDEM'
            Then Begin
           //SQL para verificar algum item sem codigo para substituição tributária
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add('  select subproduto.contrint, subproduto.NCM,  subproduto.descricao from itprodord ');
            DMESTOQUE.Alx.SQL.Add('  left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
            DMESTOQUE.Alx.SQL.Add('  left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
            DMESTOQUE.Alx.SQL.Add('  Where (itprodord.cod_ordem=:codigo) ');
            DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMESTOQUE.Alx.Open;
        End;
        If XTipo = 'PEDC'
            Then Begin
           //SQL para verificar algum item sem codigo para substituição tributária
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add('  select subproduto.contrint, subproduto.NCM,  subproduto.descricao from itenspedc ');
            DMESTOQUE.Alx.SQL.Add('    left join vwsimilar on itenspedc.cod_estoque = vwsimilar.cod_estoque ');
            DMESTOQUE.Alx.SQL.Add('    left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
            DMESTOQUE.Alx.SQL.Add('    Where (itenspedc.cod_pedcompra=:codigo) and ((itenspedc.consumo is null) or (itenspedc.consumo <> ''1'')) ');
            DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMESTOQUE.Alx.Open;
        End;
        If Not (DMESTOQUE.Alx.IsEmpty) And Not (DMESTOQUE.Alx.FieldByName('NCM').AsString = '')
            Then Begin
            DMESTOQUE.Alx.First;
            While Not DMESTOQUE.Alx.Eof Do
            Begin
                If Length(DMESTOQUE.Alx.FieldByName('NCM').AsString) < 8
                    Then Begin
                    Result := False;
                    RegistraFalha('  NCM: Inválido (Tamanho < 8) para: ' + DMESTOQUE.Alx.FieldByName('contrint').AsString + '-' + DMESTOQUE.Alx.FieldByName('descricao').AsString);
                End
                Else Begin
                    If FiltraTabela(DMESTOQUE.TNcm, 'NCM', 'NCM', DMESTOQUE.Alx.FieldByName('ncm').AsString, '') = False
                        Then Begin
                        Result := False;
                        RegistraFalha('  NCM: Inválido para: ' + DMESTOQUE.Alx.FieldByName('contrint').AsString + '-' + DMESTOQUE.Alx.FieldByName('descricao').AsString);
                    End;
                End;
                DMESTOQUE.Alx.Next;
            End;
        End;
    Except
        Result := False;
    End;
End;
//Função para validar UN dos produtos

Function TFPadraoFiscal.ValidaUNProdutos: Boolean;
Begin
    Result := True;
    Try
    //SQL para verificar algum item sem codigo para substituição tributária
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        If XTipo = 'ORDEM'
            Then Begin
            DMESTOQUE.Alx.SQL.Add('  select subproduto.cod_unidvenda AS UN from itprodord ');
            DMESTOQUE.Alx.SQL.Add('   left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
            DMESTOQUE.Alx.SQL.Add('   left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
            DMESTOQUE.Alx.SQL.Add('   left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
            DMESTOQUE.Alx.SQL.Add('   Where ((unidade.sigla_unid='''') or (unidade.sigla_unid is null))  and (itprodord.cod_ordem=:codigo) ');
        End;
        If XTipo = 'PEDV'
            Then Begin
            DMESTOQUE.Alx.SQL.Add(' select subproduto.cod_unidvenda AS UN, subproduto.NCM from itenspedven ');
            DMESTOQUE.Alx.SQL.Add('  left join vwsimilar on itenspedven.cod_estoque = vwsimilar.cod_estoque ');
            DMESTOQUE.Alx.SQL.Add('  left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
            DMESTOQUE.Alx.SQL.Add('  left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
            DMESTOQUE.Alx.SQL.Add('  Where ((unidade.sigla_unid='''') or (unidade.sigla_unid is null))  and (itenspedven.cod_pedven=:codigo) ');
        End;
        If XTipo = 'PEDC'
            Then Begin
            DMESTOQUE.Alx.SQL.Add('  select subproduto.cod_unidvenda AS UN from itenspedc ');
            DMESTOQUE.Alx.SQL.Add('  left join vwsimilar on itenspedc.cod_estoque = vwsimilar.cod_estoque ');
            DMESTOQUE.Alx.SQL.Add('  left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
            DMESTOQUE.Alx.SQL.Add('  left join unidade on subproduto.cod_unidcompra = unidade.cod_unidade ');
            DMESTOQUE.Alx.SQL.Add('  Where ((unidade.sigla_unid='''') or (unidade.sigla_unid is null))  and (itenspedc.cod_pedcompra=:codigo) ');
        End;
        DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
        DMESTOQUE.Alx.Open;
        If Not (DMESTOQUE.Alx.IsEmpty) And Not (DMESTOQUE.Alx.FieldByName('UN').AsString = '')
            Then Begin
            RegistraFalha('  U.N.: Foram encontrado(s) produto(s) sem Sigla de Unidade');
            DMESTOQUE.Alx.First;
            While Not DMESTOQUE.Alx.Eof Do
            Begin
                RegistraFalha('     - Produto: ' + DMESTOQUE.Alx.FieldByName('contrint').AsString + ' ' + DMESTOQUE.Alx.FieldByName('descricao').AsString);
                DMESTOQUE.Alx.Next;
            End;
            RegistraFalha('  Verifique o U.N. para cada um destes produtos no cadastro de produtos');
            Result := False;
        End;
    Except
        Result := False;
    End;
End;
//Função para validar C.S.T. dos produtos

Function TFPadraoFiscal.ValidaCstProdutos: Boolean;
Begin
    Result := True;
    Try
    //SQL para verificar algum item sem codigo para substituição tributária
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        If XTipo = 'ORDEM'
            Then Begin
            DMESTOQUE.Alx.SQL.Add(' select vwsimilar.contrint, vwsimilar.descricao from itprodord ');
            DMESTOQUE.Alx.SQL.Add(' left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
            DMESTOQUE.Alx.SQL.Add(' left join cst on itprodord.cod_cst =cst.cod_cst ');
            DMESTOQUE.Alx.SQL.Add(' Where ((cst.cod_sit_trib='''') or (cst.cod_sit_trib is null))  and (itprodord.cod_ordem=:codigo) ');
        End;
        If XTipo = 'PEDV'
            Then Begin
            DMESTOQUE.Alx.SQL.Add(' select vwsimilar.contrint, vwsimilar.descricao from itenspedven ');
            DMESTOQUE.Alx.SQL.Add(' left join vwsimilar on itenspedven.cod_estoque = vwsimilar.cod_estoque ');
            DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedven.cod_cst =cst.cod_cst ');
            DMESTOQUE.Alx.SQL.Add(' Where ((cst.cod_sit_trib='''') or (cst.cod_sit_trib is null))  and (itenspedven.cod_pedven=:codigo) ');
        End;
        If XTipo = 'PEDC'
            Then Begin
            DMESTOQUE.Alx.SQL.Add(' select vwsimilar.contrint, vwsimilar.descricao from itenspedc ');
            DMESTOQUE.Alx.SQL.Add(' left join vwsimilar on itenspedc.cod_estoque = vwsimilar.cod_estoque ');
            DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedc.cod_cst =cst.cod_cst ');
            DMESTOQUE.Alx.SQL.Add(' Where ((cst.cod_sit_trib='''') or (cst.cod_sit_trib is null))  and (itenspedc.cod_pedcompra=:codigo) ');
        End;
        DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
        DMESTOQUE.Alx.Open;
        If Not DMESTOQUE.Alx.IsEmpty
            Then Begin
            RegistraFalha('  C.S.T.: Foram encontrado(s) produto(s) sem código de substituição tributária');
            DMESTOQUE.Alx.First;
            While Not DMESTOQUE.Alx.Eof Do
            Begin
                RegistraFalha('     - Produto: ' + DMESTOQUE.Alx.FieldByName('contrint').AsString + ' ' + DMESTOQUE.Alx.FieldByName('descricao').AsString);
                DMESTOQUE.Alx.Next;
            End;
            RegistraFalha('  Verifique o C.S.T. para cada um destes produtos no cadastro de produtos');
            RegistraFalha('  Após apague e insirá novamente o item na lista de produtos do pedido');
            Result := False;
        End;
    Except
        Result := False;
    End;
End;




//Função Utilizada para atualizar aliquota e valor total da tributação para cada item na nota

Function TFPadraoFiscal.AtualizaValorTotalTributacaoItem: Boolean;
Var
//    XAliqAplicada: Real;
    XOrigemNacional: Boolean;
//    XAuxTotal: Real;
	 xAuxTotalEstadual, xAuxTotalNacional: Real;
    xAliqEstadual, xAliqNacional: Real;
Begin
    Try
        Result := True;
//        XAliqAplicada := 0;
        xAuxTotalNacional := 0;
        xAuxTotalEstadual := 0;

        DMESTOQUE.TSlave.First;
        While Not DMESTOQUE.TSlave.Eof Do
        Begin
        //Verifica se o item é importado ou nacional
            If copy(DMESTOQUE.TSlave.FieldByName('COD_SIT_TRIB').AsString, 0, 1) = '0' Then
                XOrigemNacional := True
            Else
                XOrigemNacional := False;
           //Seleciona o ncm do item em questão
            DMESTOQUE.TNcm.Close;
            DMESTOQUE.TNcm.SQL.Clear;
            DMESTOQUE.TNcm.SQL.Add(' Select * from ncm where ncm.ncm=:ncm');
            DMESTOQUE.TNcm.ParamByName('ncm').AsString := DMESTOQUE.TSlave.FieldByName('ncm').AsString;
            DMESTOQUE.TNcm.Open;
            
            If (Not DMESTOQUE.TNcm.IsEmpty)
                Then Begin
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
                 	xAliqNacional := DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTANAC').AsCurrency
               else
                  	xAliqNacional := DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTA').AsCurrency;

            	//Se o ncm possui a aliquota estadual, usa ela. senão usa o que está cadastrado na empresa
            	if DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTAEST').AsCurrency > 0 then
               	xAliqEstadual := DMESTOQUE.TNcm.FieldByName('ALIQTOTALTRIBUTAEST').AsCurrency
               else
                  	xAliqEstadual := DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTA').AsCurrency;
            End
            Else Begin
            	//se não econtrou item de ncm para o produto, pegamos a aliquota da tabela empresa
                xAliqNacional := DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTA').AsCurrency;
                xAliqEstadual := DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTA').AsCurrency;
            End;
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
            if XTipo = 'PEDV'
                Then Begin
                If FiltraTabela(DMSAIDA.TItemPV, 'itenspedven', 'cod_itenspedven', DMESTOQUE.TSlave.FieldByName('CodigoItem').AsString, '')
                    Then Begin
                    DMSAIDA.TItemPV.Edit;
                    DMSAIDA.TItemPV.FieldByName('VALORTOTALTRIBUTA').AsCurrency := (DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency * xAliqNacional) / 100;
                    DMSAIDA.TItemPV.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency := (DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency * xAliqEstadual) / 100;                    
//                    DMSAIDA.TItemPV.FieldByName('ALIQUOTATOTALTRIBUTA').AsCurrency := XAliqAplicada;
                    DMSAIDA.TItemPV.Post;
                    xAuxTotalNacional := xAuxTotalNacional + DMSAIDA.TItemPV.FieldByName('VALORTOTALTRIBUTA').AsCurrency;
                    xAuxTotalEstadual := xAuxTotalEstadual + DMSAIDA.TItemPV.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency;                    
                End
                Else Begin
                    RegistraFalha('   Valor Total das Tributações: Falha ao ataulizar Item:' + DMESTOQUE.TSlave.FieldByName('contrint').AsString);
                End;
            End;
            If XTipo = 'PEDC'
                Then Begin
                If FiltraTabela(DMENTRADA.TItemPC, 'itenspedc', 'cod_itenspedc', DMESTOQUE.TSlave.FieldByName('CodigoItem').AsString, '')
                    Then Begin
                    DMENTRADA.TItemPC.Edit;
                    DMENTRADA.TItemPC.FieldByName('VALORTOTALTRIBUTA').AsCurrency := (DMENTRADA.TItemPC.FieldByName('valortotal').AsCurrency * xAliqNacional) / 100;
                    DMENTRADA.TItemPC.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency := (DMENTRADA.TItemPC.FieldByName('valortotal').AsCurrency * xAliqEstadual) / 100;
//                    DMENTRADA.TItemPC.FieldByName('ALIQUOTATOTALTRIBUTA').AsCurrency := XAliqAplicada;
                    DMENTRADA.TItemPC.Post;
                    xAuxTotalNacional := xAuxTotalNacional + DMENTRADA.TItemPC.FieldByName('VALORTOTALTRIBUTA').AsCurrency;
                    xAuxTotalEstadual := xAuxTotalEstadual + DMENTRADA.TItemPC.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency;
                End
                Else Begin
                    RegistraFalha('   Valor Total das Tributações: Falha ao ataulizar Item:' + DMESTOQUE.TSlave.FieldByName('contrint').AsString);
                End;
            End;
            If XTipo = 'ORDEM'
                Then Begin
                If FiltraTabela(DMServ.TPOrd, 'itprodord', 'cod_itprodord', DMESTOQUE.TSlave.FieldByName('CodigoItem').AsString, '')
                    Then Begin
                    DMServ.TPOrd.Edit;
                    DMServ.TPOrd.FieldByName('VALORTOTALTRIBUTA').AsCurrency := (DMServ.TPOrd.FieldByName('total').AsCurrency * xAliqNacional) / 100;
                    DMServ.TPOrd.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency := (DMServ.TPOrd.FieldByName('total').AsCurrency * xAliqEstadual) / 100;
//                    DMServ.TPOrd.FieldByName('ALIQUOTATOTALTRIBUTA').AsCurrency := XAliqAplicada;
                    DMServ.TPOrd.Post;
                    xAuxTotalNacional := xAuxTotalNacional + DMServ.TPOrd.FieldByName('VALORTOTALTRIBUTA').AsCurrency;
                    xAuxTotalEstadual := xAuxTotalEstadual + DMServ.TPOrd.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency;
                End
                Else Begin
                    RegistraFalha('   Valor Total das Tributações: Falha ao atualizar Item:' + DMESTOQUE.TSlave.FieldByName('contrint').AsString);
                End;
            End;
            DMESTOQUE.TSlave.Next;
        End;

        XValorTotalAproxTributacaoNacional := xAuxTotalNacional;
        XValorTotalAproxTributacaoEstadual := xAuxTotalEstadual;

        If XTipo = 'PEDV' Then
            DMSAIDA.IBT.CommitRetaining;
        If XTipo = 'PEDC' Then
            DMENTRADA.IBT.CommitRetaining;
        If XTipo = 'ORDEM' Then
            DMServ.IBT.CommitRetaining;
    Except
        Result := False;
        RegistraFalha('   Valor Total das Tributações: Falha ao atualizar valores');
    End;
End;

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
Function TFPadraoFiscal.ValidaCfopProdutos: Boolean;
Begin
    Result := True;

    Try
  //CONTROLE PARA ALTERAÇÃO DE CFOPS
       //COMANDOS PARA PEDIDO DE VENDA
        If XTipo = 'PEDV'
            Then Begin
            DMSAIDA.TItemPV.Close;
            DMSAIDA.TItemPV.SQL.Clear;
            DMSAIDA.TItemPV.SQL.Add(' select * from itenspedven where (itenspedven.cod_pedven=:Pedido) ');
            DMSAIDA.TItemPV.ParamByName('Pedido').AsInteger := XCod_Pedido;
            DMSAIDA.TItemPV.Open;
            If Not DMSAIDA.TItemPV.IsEmpty
                Then Begin
                DMSAIDA.TItemPV.First;
                While Not DMSAIDA.TItemPV.Eof Do
                Begin
                    DMESTOQUE.TCST.Close;
                    DMESTOQUE.TCST.SQL.Clear;
                    DMESTOQUE.TCST.SQL.Add(' select * from cst where (cst.cod_cst = :cst)');
                    DMESTOQUE.TCST.ParamByName('cst').AsString := DMSAIDA.TItemPV.FieldByName('cod_cst').AsString;
                    DMESTOQUE.TCST.Open;
                    If Not DMESTOQUE.TCST.IsEmpty
                        Then Begin
                        //Edmar - 24/09/2014 - Filtra VWSIMLAR buscando o codigo do subproduto
                        FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsString, '');
                        //Edmar - 24/09/2014 - Filtra SUBPRODUTO buscando o cfop do produto
                        FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '');

                        //Edmar - 24/09/2014 - Testa se o produto possui cfop especifico
                        if (DMESTOQUE.TSubProd.FieldByName('cod_cfopforaestado').AsString <> '') AND
                        		(DMESTOQUE.TSubProd.FieldByName('cod_cfopdentroestado').AsString <> '-1') then
                        begin//se possuir faz o cfop correto dependendo o estado destino
                        	 DMSAIDA.TItemPV.Edit;
                            If XUfOrigem <> XUfDestino Then
                               FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMESTOQUE.TSubProd.FieldByName('cod_cfopforaestado').AsString, '')
                            else
                               FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMESTOQUE.TSubProd.FieldByName('cod_cfopdentroestado').AsString, '');

                            if XCFOPPERSONALIZADO <> DMESTOQUE.TCFOP.FieldByName('CFOP').AsString then
								XCFOPPERSONALIZADO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;

                            DMSAIDA.TItemPV.FieldByName('CFOP').AsString := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                            DMSAIDA.TItemPV.Post;
                        end
                        else begin//se não possuir cfop especifico faz o procedimento padrão
                            If DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString = '1'
                                Then Begin
                                DMSAIDA.TItemPV.Edit;
                                If XUfOrigem <> XUfDestino Then
                                    DMSAIDA.TItemPV.FieldByName('CFOP').AsString := XCFOPEXPERTOCST
                                Else
                                    DMSAIDA.TItemPV.FieldByName('CFOP').AsString := XCFOPINTERNOCST;
                                DMSAIDA.TItemPV.Post;
                            End
                            Else Begin
                                DMSAIDA.TItemPV.Edit;
                                If XUfOrigem <> XUfDestino Then
                                    DMSAIDA.TItemPV.FieldByName('CFOP').AsString := XCFOPEXTERNO
                                Else
                                    DMSAIDA.TItemPV.FieldByName('CFOP').AsString := XCFOPINTERNO;
                                DMSAIDA.TItemPV.Post;
                            End;
                        end;
                    End
                    Else Begin
                        Result := False;
                        RegistraFalha('   CFOP: Item de venda sem C.S.T ');
                    End;
                    DMSAIDA.TItemPV.Next;
                End;
                Try
                    DMSAIDA.IBT.CommitRetaining;
                Except
                    Result := False;
                    RegistraFalha('   CFOP: Falha na transação ao atualizar cfop dos itens de produtos relacionados');
                End;
            End;
        End;
       //COMANDOS PARA PEDIDO DE COMPRA
        If XTipo = 'PEDC'
            Then Begin
            DMENTRADA.TItemPC.Close;
            DMENTRADA.TItemPC.SQL.Clear;
            DMENTRADA.TItemPC.SQL.Add(' select * from itenspedc where (itenspedc.cod_pedcompra=:Pedido) ');
            DMENTRADA.TItemPC.ParamByName('Pedido').AsInteger := XCod_Pedido;
            DMENTRADA.TItemPC.Open;
            If Not DMENTRADA.TItemPC.IsEmpty
                Then Begin
                DMENTRADA.TItemPC.First;
                While Not DMENTRADA.TItemPC.Eof Do
                Begin
                //Seleciona subproduto para verificar se o item é um item de consumo proprio ou não
                    DMESTOQUE.Alx5.Close;
                    DMESTOQUE.Alx5.SQL.Clear;
                    DMESTOQUE.Alx5.SQL.Add(' select subproduto.usoconsumo from estoque ');
                    DMESTOQUE.Alx5.SQL.Add(' left join  subproduto on estoque.cod_subprod=subproduto.cod_subproduto ');
                    DMESTOQUE.Alx5.SQL.Add(' where estoque.cod_estoque=:cod_estoque ');
                    DMESTOQUE.Alx5.ParamByName('cod_estoque').AsString := DMENTRADA.TItemPC.FieldByName('cod_estoque').AsString;
                    DMESTOQUE.Alx5.Open;

                    DMESTOQUE.TCST.Close;
                    DMESTOQUE.TCST.SQL.Clear;
                    DMESTOQUE.TCST.SQL.Add(' select * from cst where (cst.cod_cst = :cst)');
                    DMESTOQUE.TCST.ParamByName('cst').AsString := DMENTRADA.TItemPC.FieldByName('cod_cst').AsString;
                    DMESTOQUE.TCST.Open;
                    If Not DMESTOQUE.TCST.IsEmpty
                        Then Begin
                        If (DMESTOQUE.Alx5.FieldByName('usoconsumo').AsString = '1') Or (DMESTOQUE.Alx5.FieldByName('usoconsumo').AsString = '2')
                            Then Begin
                            If (DMESTOQUE.Alx5.FieldByName('usoconsumo').AsString = '1')
                                Then Begin
                               //CASO O ITEM SEJA DE CONSUMO PROPRIA DA EMPRESA, RECEBE CFOP DIFERENCIADO
                                DMENTRADA.TItemPC.Edit;
                                If XUfOrigem <> XUfDestino Then
                                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCFOPMATCONSUMOEXT
                                Else
                                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCFOPMATCONSUMO;
                                DMENTRADA.TItemPC.Post;
                            End;
                            If (DMESTOQUE.Alx5.FieldByName('usoconsumo').AsString = '2')
                                Then Begin
                               //CASO O ITEM SEJA DE CONSUMO PROPRIA DA EMPRESA, RECEBE CFOP DIFERENCIADO
                                DMENTRADA.TItemPC.Edit;
                                If XUfOrigem <> XUfDestino Then
                                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCFOPFRETEEXT
                                Else
                                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCFOPFRETEINT;
                                DMENTRADA.TItemPC.Post;
                            End;

                        End
                        Else Begin
                        //CASO NÃO SEJA ITEM DE CONSUMO PROPRIO DA EMPRESA, RECEBE CFOP DE ENTRADA NORMAL
                            If DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString = '1'
                                Then Begin
                                DMENTRADA.TItemPC.Edit;
                                If XUfOrigem <> XUfDestino Then
                                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCFOPEXTSTPC
                                Else
                                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCFOPINTSTPC;
                                DMENTRADA.TItemPC.Post;
                            End
                            Else Begin
                                DMENTRADA.TItemPC.Edit;
                                If XUfOrigem <> XUfDestino Then
                                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCFOPEXTPC
                                Else
                                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCFOPINTPC;
                                DMENTRADA.TItemPC.Post;
                            End;
                        End;
                    End
                    Else Begin
                        Result := False;
                        RegistraFalha('   CFOP: Item de compra sem C.S.T ');
                    End;
                   //Aproveitamos este laço de retição para atualizarmos o valor aproximado de tributos para o item
                    If XValorTotalAproxTributacaoNacional > 0
                        Then Begin
                        DMENTRADA.TItemPC.Edit;
                        DMENTRADA.TItemPC.FieldByName('VALORTOTALTRIBUTA').AsCurrency := (DMENTRADA.TItemPC.FieldByName('valortotal').AsCurrency * XValorTotalAproxTributacaoNacional) / 100;
                        DMENTRADA.TItemPC.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency := (DMENTRADA.TItemPC.FieldByName('valortotal').AsCurrency * XValorTotalAproxTributacaoEstadual) / 100;                        
                        DMENTRADA.TItemPC.Post;
                    End;

                    DMENTRADA.TItemPC.Next;
                End;
                Try
                    DMENTRADA.IBT.CommitRetaining;
                Except
                    Result := False;
                    RegistraFalha('   CFOP: Falha na transação ao atualizar cfop dos itens de produtos relacionados');
                End;
            End;
        End;
       //COMANDOS PARA ORDENS DE SERVIÇO
        If XTipo = 'ORDEM'
            Then Begin
            DMServ.TPOrd.Close;
            DMServ.TPOrd.SQL.Clear;
            DMServ.TPOrd.SQL.Add(' select * from itprodord where (itprodord.cod_ordem=:Pedido) ');
            DMServ.TPOrd.ParamByName('Pedido').AsInteger := XCod_Pedido;
            DMServ.TPOrd.Open;
            If Not DMServ.TPOrd.IsEmpty
                Then Begin
                DMServ.TPOrd.First;
                While Not DMServ.TPOrd.Eof Do
                Begin
                    DMESTOQUE.TCST.Close;
                    DMESTOQUE.TCST.SQL.Clear;
                    DMESTOQUE.TCST.SQL.Add(' select * from cst where (cst.cod_cst = :cst)');
                    DMESTOQUE.TCST.ParamByName('cst').AsString := DMServ.TPOrd.FieldByName('cod_cst').AsString;
                    DMESTOQUE.TCST.Open;
                    If Not DMESTOQUE.TCST.IsEmpty
                        Then Begin
                        //Edmar - 23/09/2014 - Filtra VWSIMLAR buscando o codigo do subproduto
                        FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMServ.TPOrd.FieldByName('COD_ESTOQUE').AsString, '');
                        //Edmar - 23/09/2014 - Filtra SUBPRODUTO buscando o cfop do produto
                        FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '');

                        //Edmar - 23/09/2014 - Testa se o produto possui cfop especifico
                        if (DMESTOQUE.TSubProd.FieldByName('cod_cfopforaestado').AsString <> '') AND
                        		(DMESTOQUE.TSubProd.FieldByName('cod_cfopdentroestado').AsString <> '-1') then
                        begin//se possuir faz o cfop correto dependendo o estado destino
                        	 DMServ.TPOrd.Edit;
                            If XUfOrigem <> XUfDestino Then
                               FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMESTOQUE.TSubProd.FieldByName('cod_cfopforaestado').AsString, '')
                            else
                               FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMESTOQUE.TSubProd.FieldByName('cod_cfopdentroestado').AsString, '');

                            if XCFOPPERSONALIZADO <> DMESTOQUE.TCFOP.FieldByName('CFOP').AsString then
								XCFOPPERSONALIZADO := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;

                            DMServ.TPOrd.FieldByName('CFOP').AsString := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
                            DMServ.TPOrd.Post;
                        end
                        else begin//se não possuir cfop especifico faz o procedimento padrão
                              If DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString = '1'
                                  Then Begin
                                  DMServ.TPOrd.Edit;
                                  If XUfOrigem <> XUfDestino Then
                                      DMServ.TPOrd.FieldByName('CFOP').AsString := XCFOPEXPERTOCST
                                  Else
                                      DMServ.TPOrd.FieldByName('CFOP').AsString := XCFOPINTERNOCST;
                                  DMServ.TPOrd.Post;
                              End
                              Else Begin
                                  DMServ.TPOrd.Edit;
                                  If XUfOrigem <> XUfDestino Then
                                      DMServ.TPOrd.FieldByName('CFOP').AsString := XCFOPEXTERNO
                                  Else
                                      DMServ.TPOrd.FieldByName('CFOP').AsString := XCFOPINTERNO;
                                  DMServ.TPOrd.Post;
                              End;
                            end;
                    End
                    Else Begin
                        Result := False;
                        RegistraFalha('   CFOP: Item de venda sem C.S.T ');
                    End;
                    DMServ.TPOrd.Next;
                End;
                Try
                    DMServ.IBT.CommitRetaining;
                Except
                    DMServ.IBT.RollbackRetaining;
                    Result := False;
                    RegistraFalha('   CFOP: Falha na transação ao atualizar cfop dos itens de produtos relacionados');
                End;
            End;
        End;
    Except
        RegistraFalha('   CFOP: Falha ao atualizar cfop dos itens de produtos relacionados');
        RegistraFalha('      Este problema somente pode ser solucionado por meio de intervenção técnica');
        Result := False;
        exit;
    End;
    Try
  //CONTROLE PARA VERIFICAÇÃO DA EXISTENCIA DE CFOPS
       //COMANDOS PARA PEDIDO DE VENDA
        If XTipo = 'PEDV'
            Then Begin
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
            If DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 Then
                XCFOP_ST := True
            Else
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
            If DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 Then
                XCFOP_OP := True
            Else
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
            If DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 Then
                XCFOP_PERSONALIZADO := True
            Else
                XCFOP_PERSONALIZADO := False;
        End;
       //COMANDOS PARA ORDEM DE SERVIÇOS
        If XTipo = 'ORDEM'
            Then Begin
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
            If DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 Then
                XCFOP_ST := True
            Else
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
            If DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 Then
                XCFOP_OP := True
            Else
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
            If DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 Then
                XCFOP_PERSONALIZADO := True
            Else
                XCFOP_PERSONALIZADO := False;
        End;
       //COMANDOS PARA PEDIDO DE COMPRA
        If XTipo = 'PEDC'
            Then Begin
        //Verifica CFOP  para substituição tributaria
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add(' select count(itenspedc.cod_itenspedc) as CONT from itenspedc ');
            DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedc.cod_cst =cst.cod_cst ');
            DMESTOQUE.Alx.SQL.Add(' where (cst.substituicao=''1'') and (itenspedc.cod_pedcompra=:codigo) ');
            DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMESTOQUE.Alx.Open;
            If DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 Then
                XCFOP_ST := True
            Else
                XCFOP_ST := False;

        //Verifica CFOP  para icms operação propria
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add(' select count(itenspedc.cod_itenspedc) as CONT from itenspedc ');
            DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedc.cod_cst =cst.cod_cst ');
            DMESTOQUE.Alx.SQL.Add(' where ((cst.substituicao<>''1'') or (cst.substituicao is null)) and (itenspedc.cod_pedcompra=:codigo) ');
            DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMESTOQUE.Alx.Open;
            If DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 Then
                XCFOP_OP := True
            Else
                XCFOP_OP := False;
        End;
       //COMANDOS PARA ORDENS DE SERVIÇO
    Except
        RegistraFalha('   CFOP: Falha ao selecionar cfops');
        Result := False;
    End;
    Try
  //CONTROLE PARA VERIFICAÇÃO DA EXISTENCIA DE CST COM REDUÇÃO NA BASE DE CALCULO
       //COMANDOS PARA PEDIDO DE COMPRA
        If XTipo = 'PEDC'
            Then Begin
        //Verifica CFOP  para substituição tributaria
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add(' select count(itenspedc.cod_itenspedc) as CONT from itenspedc ');
            DMESTOQUE.Alx.SQL.Add(' left join cst on itenspedc.cod_cst =cst.cod_cst ');
            DMESTOQUE.Alx.SQL.Add(' where (cst.REDUCAO=''1'') and (itenspedc.cod_pedcompra=:codigo) ');
            DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMESTOQUE.Alx.Open;
            If DMESTOQUE.Alx.FieldByName('CONT').AsInteger > 0 Then
                XCstReducao := True
            Else
                XCstReducao := False;
        End;
    Except
        RegistraFalha('   CST: Falha ao selecionar CST');
        Result := False;
    End;
End;

//Função para validar os produtos

Function TFPadraoFiscal.ValidaProdutos: Boolean;
Begin
    Result := True;


   //Verifica UN (unidades de venda e compra) para produtos
    If ValidaUNProdutos = False Then
        Result := False;


   //Verifica CST para produtos
    If ValidaCstProdutos = False Then
        Result := False;

   //Verificações de Configuração de CFOP
    If VerificaCfopProdutoLoja = False
        Then Begin
        Result := False;
    //Exit;//abandona função caso os cfops não forem encontrados;
    End;

   //Verificações de Configuração de CFOP
    If ValidaCfopProdutos = False
        Then Begin
        Result := False;
      //	Exit;//abandona função caso os cfops não forem encontrados;
    End;

   //Valida NCM
    If ValidaNCMProdutos = False
        Then Begin
        Result := False;
    End;

End;

//Função para validar os serviços (Despesas adicionais)

Function TFPadraoFiscal.ValidaDespadic: Boolean;
Begin
    Result := True;
    Try
        XCfopIntServ := '';
        XCfopExtServ := '';
       //13/03/2009: se em empresa estiver setado o ISS imprimir campos  relacionados
        If (DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency <= 0)
            Then Begin
            RegistraFalha('  Empresa não configurada com aliquota de ISS');
            Result := False;
            Exit;
        End;
       //verifica se a loja possui as devidas configurações de cfop para serviços
        If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPINTSERV').AsString, '') = False
            Then Begin
            RegistraFalha('  Loja não configurada para CFOP interno de Serviços');
            Result := False;
            Exit;
        End
        Else Begin
            XCfopIntServ := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
        End;
        If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMMACS.TLoja.FieldByName('CFOPEXTSERV').AsString, '') = False
            Then Begin
            RegistraFalha('  Loja não configurada para CFOP externo de Serviços');
            Result := False;
            Exit;
        End
        Else Begin
            XCfopExtServ := DMESTOQUE.TCFOP.FieldByName('CFOP').AsString;
        End;

        Try
            DMESTOQUE.Alx.Close;
            DMESTOQUE.Alx.SQL.Clear;
            DMESTOQUE.Alx.SQL.Add('update despadic set despadic.cfop=:cfop, despadic.ALIQISSQN=:ALIQ');
            DMESTOQUE.Alx.SQL.Add('Where (despadic.gerador=' + #39 + XTipo + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)');
            DMESTOQUE.Alx.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
            DMESTOQUE.Alx.ParamByName('ALIQ').AsCurrency := DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency;
           //Efetua tratamento das cfops de serviço conforme origem do cliente ou fornecedor
            If XUfOrigem <> XUfDestino Then
                DMESTOQUE.Alx.ParamByName('cfop').AsString := XCfopExtServ //como as duas ufs são diferentes aplica - se o cfop para outros estados
            Else
                DMESTOQUE.Alx.ParamByName('cfop').AsString := XCfopIntServ; //como as duas ufs são iguais aplica - se o cfop para dentro do estado
            DMESTOQUE.Alx.ExecSQL;
            DMESTOQUE.TransacEstoque.CommitRetaining;
            XAliqIss := DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency;
        Except
            DMESTOQUE.TransacEstoque.RollbackRetaining;
            Result := False;
            RegistraFalha('  Ocorreu falha ao atualizar Cfops dos serviços');
        End;
    Except
        RegistraFalha('  - Erro ao validar CFOPs de serviços');
        Result := False;
    End;
End;

//Função para inicializar variáveis

Function TFPadraoFiscal.InicializaVar: Boolean;
Var
    SaidaEntrada: String;
Begin
    Result := True;
    Try
        If BuscaPeriodoFiscal = False Then
            Result := False;

       //Inicializa variáveis de controle de CFOP (para verifica se cfop foi encontrada ou não)
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
        XEmiteNFCe := False;

        if XTipo = 'PEDC' then
        	XCod_Pedido := DMENTRADA.WPedc.FieldByName('cod_pedcomp').AsInteger;
        if XTipo = 'PEDV' then
        	XCod_Pedido := DMSAIDA.WPedv.FieldByName('cod_pedvenda').AsInteger;
        if XTipo = 'ORDEM' then
        	XCod_Pedido := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;

        If EscrevePessoa = False Then
        	XValidado := False;

       //Inicializa checkbox de entrada saida
        cbentrada.Checked := False;
        cbentrada.Checked := False;
       //Inicializa os edits de substituição como somente leitura, ja que posteriormente ele poderá ser editavel
        EdBaseICMSST.ReadOnly := True;
       //EdVlrIcmsST.ReadOnly:=True;
       //Inicializa o codigo do pedido de acordo com a tabela correta e a view selecionada
        If XTipo = 'PEDC'
        Then Begin
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
            EdVlrIcmsST.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency;
            EdBaseICMSST.ValueNumeric := DMESTOQUE.Alx.FieldByName('valorBaseSt').AsCurrency;
            EdVlrFrete.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency;
            CBFreteNF.Checked := True;
            EdOutrasDespesas.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLROUTROS').AsCurrency;
        End;
        If XTipo = 'PEDV'
        Then Begin
            XCod_Pedido := DMSAIDA.WPedv.FieldByName('cod_pedvenda').AsInteger;
            If ((FMenu.TIPOAUX = 'ECF') And ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
            										OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
                                                   	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe'))) Then
                If DMSAIDA.WPedv.FieldByName('FISCO').AsString <> 'NFE2' Then
                    XNumECF := DMSAIDA.WPedv.FieldByName('NUMFISCAL').AsString //Se for primeira tentativa de reimpressão de ecf
                Else
                    XNumECF := DMSAIDA.TPedV.FieldByName('NUMECF').AsString //Se não for primeira tentativa de reimpressão de ecf
            Else
                XNumECF := ''; //Se não for reimpressão de ECF para nfe devemos zerar ou limpar o numero de ecf
           //DETERMINA O PROXIMO NUMERO FISCAL A SER IMPRESSO
            EdNumeroFiscal.Text := IntToStr(NfProxnumero);
            EdVlrIcmsST.ValueNumeric := DMSAIDA.TPedV.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency;
            EdBaseICMSST.ValueNumeric := DMSAIDA.TPedV.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency;
            EdVlrFrete.ValueNumeric := DMSAIDA.TPedV.FieldByName('VLRFRETE').AsCurrency;
            CBFreteNF.Checked := True;
            EdOutrasDespesas.ValueNumeric := DMSAIDA.TPedV.FieldByName('VLROUTROS').AsCurrency;
            EdVlrIpi.ValueNumeric := DMSAIDA.TPedV.FieldByName('VLRIPI').AsCurrency;

            XTabFiscal := DMSAIDA.TFiscPV;
            XTabItemProd := DMSAIDA.TItemPV;
            cbsaida.Checked := True; //Marca Nf como saida
            //Verifica se a empresa usuária é industria para assim aplicar os calculos corretos
            If DMMACS.TEmpresa.FieldByName('INDUSTRIA').AsString = '1' Then
            	XEmpresaInustria:=True
            Else
            	XEmpresaInustria:=False;

        End;
        If XTipo = 'ORDEM'
            Then Begin
            XCod_Pedido := DMServ.WOrdem.FieldByName('cod_ordem').AsInteger;
           //DETERMINA O PROXIMO NUMERO FISCAL A SER IMPRESSO
            EdNumeroFiscal.Text := IntToStr(NfProxnumero);
            EdNumeroFiscal.Enabled := True;
            XTabItemProd := DMServ.TPOrd;
            XTabFiscal := DMServ.TFiscOrd;
            cbsaida.Checked := True; //Marca Nf como saida
        End;

       //inicializa datas
        EdDtEmissao.Text := DateToStr(Date());
        If XTipo = 'PEDC'
            Then Begin
            DMENTRADA.TPedC.Close;
            DMENTRADA.TPedC.SQL.Clear;
            DMENTRADA.TPedC.SQL.Add(' Select * from pedcompra where pedcompra.cod_pedcomp=:codigo ');
            DMENTRADA.TPedC.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMENTRADA.TPedC.Open;
            If Not DMENTRADA.TPedC.IsEmpty
                Then Begin
                If XAtualizaNota <> 1 Then //Jônatas 31/07/2013 - manter a data do edit DtSaidaEntrada para não ter que trocar toda vez que atualizar
                    EdDtsaidaEntrada.Text := DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsString;
                EdNumeroFiscal.Text := DMENTRADA.TPedC.FieldByName('NUMFISCAL').AsString;
                If FMenu.XNotaEntrada = True Then
                    EdNumeroFiscal.Text := IntToStr(NfProxnumero);
                EdVlrFrete.ValueNumeric := DMENTRADA.TPedC.FieldByName('vlrfrete').AsCurrency;
                CBFreteNF.Checked := True;
                If DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency > 0
                    Then Begin
                    EdVlrFrete.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency;
                    CBFreteNF.Checked := True;
                End;
               //Paulo 12/05/2011: Se não for NFe poder mudar a númeração
                If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'NFe')
                	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
                   	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')Then
                    EdNumeroFiscal.Enabled := True;
            End
            Else Begin
                If XAtualizaNota <> 1 Then //Jônatas 31/07/2013 - manter a data do edit DtSaidaEntrada para não ter que trocar toda vez que atualizar
                    EdDtsaidaEntrada.Text := DateToStr(Date());
            End
        End
        Else Begin
            EdDtsaidaEntrada.Text := DateToStr(Date());
        End;
        EdHoraSaida.Text := TimeToStr(Time());

       //Se o numero fiscal retornado for -1 houve falha na inserção do numero fiscal
        If EdNumeroFiscal.Text = '-1'
            Then Begin
            EdNumeroFiscal.Text := IntToStr(NfProxnumero);
            MessageDlg('Verique se o Sistema capturou corretamente a numeração', mtWarning, [mbOK], 0);
        End;

        //Edmar - 14/05/2015 - atribui a aliquota do icms para o calculos dos icms dos produtos
        XAliqIcms := DMMACS.TEmpresa.FieldByName('ICMS').AsCurrency;

       //Valida Codigo do pedido
        If XCod_Pedido <= 0 Then
            RegistraFalha('  Cabeçalho: Pedido sem código, tente gravar o pedido e consultar novamente');
    Except
        RegistraFalha('  FALHA CRÍTICA AO INICIALIZAR VARIÁVEIS. Reinicie o sistema, se o problema persistir chame suporte técnico no sistema');
    End;
End;

//Função que chama todas as demais atualizando os dados na tela

Function TFPadraoFiscal.Atualiza: Boolean;
{var
  xUtil_NFSe_DLL: OleVariant;}
Begin
	 //Inicializa variavel de controle geral de validação como True, indicando que a validação ocorreu com sucesso
    //prepara memo de erros

    If FMenu.XTIPOBOLTO = 'PEDC' Then
        XTipo := 'PEDC';
    If FMenu.XTIPOBOLTO = 'PEDV' Then
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
    //verifica dados da empresa
    If ValidaDadosEmpresa = False Then
        Result := False;

    {if EscrevePessoa = False Then
        XValidado := False;}

    If DMMACS.TLoja.FieldByName('SERVNFE').AsString = '0' then
    begin
    	if (xExisteServ) and (XTipo = 'ORDEM') then
    	begin
      		//Edmar - 05/12/2013 - Valida serviços da nfse
      		if not validaNfse then
	         	XValidado := false;
    	end;
    end;

    If InicializaVar = False Then
        XValidado := False;

    If InicializaVarUF(XCod_Pedido, XTipo) = False Then
    begin
        RegistraFalha('   Cabeçalho: Empresa Usuária do sistema se apresenta com irregularidade de UF');
        
        if DMMACS.TALX.IsEmpty then
            RegistraFalha('   Cabeçalho: Cliente/Fornecedor se apresenta com irregularidade de UF');

        if XUf = '' then
        	 RegistraFalha('   Cabeçalho: Cliente/Fornecedor se apresenta com irregularidade de UF');
            
        XValidado := False;
    end;

    // Atualiza cst ou csosn dos itens se necessário
    IF XEmpresaInustria=True Then
       AtualizaCstCsosn(XCod_Pedido, XTipo);

   //Valida Dados de Produto
	XValorCreditoIcms:=0;
   If ValidaProdutos = False Then
        Result := False;

   //Calcula Impostos individualmente para cada item
    If XTipo <> 'PEDC'
    Then Begin
    //Pedidos de compra possuem tratamento diferente para os itens
        CalcDescProdutosNf;
       //Paulo 10/03/2011: Se não permitir serviços não escreve os itens de serviço
        If DMMACS.TLoja.FieldByName('SERVNFE').AsString = '0' Then
            CalcDescServicosNf;

        If CalcImpostosProdutosNF = False Then
            Result := False;
    End 
    Else Begin
        ZeraIcmsNegativosProdutosNF;
    End;

    //Rateio de Substituição Tributária
    If XTipo = 'PEDC'
        Then Begin
       //Calcula Impostos totais para a NF, importante neste momento para verificar a base de icms
        CalcDescProdutosNf;
        CalcImpostosNF;
        If RateioStEntrada = False Then
            Result := False;
       //Paulo 23/09/2011: Escreve os itens de produtos
        EscreveItensConsumo;
    End;

    if FMenu.TIPOREL <> 'NFSE' then
    begin
    	If EscreveItensProduto = False Then
        	XValidado := False;
    	If AtualizaValorTotalTributacaoItem = False Then
        	XValidado := False;
   	//Repetimos o escreve itens para pegar as alterações feitas na atualização do AtualizaValorTotalTributacaoItem
    	If EscreveItensProduto = False Then
       	 XValidado := False;
    end;

    //Paulo 10/03/2011: Se não permitir serviços não escreve os itens de serviço
    If (DMMACS.TLoja.FieldByName('SERVNFE').AsString <> '1') Or (DMMACS.TLoja.FieldByName('SERVNFE').AsString = '')
        Then Begin
        If EscreveItensServ = False Then
            XValidado := False;
    End;


    If EscreveCfops = False Then
        XValidado := False;
    //Calcula Impostos totais para a NF
    If CalcImpostosNF = False Then
        Result := False;

    //chama função que efetua o somatorio de todas as variaveis principais para obter o calculo total da NF
    If CalcTotalNF = False Then
        Result := False;

    If (XImpLig = false) Then
    Begin
        ValidaDadosAdicionais;
    End;

    If ValidaReservadoFisco = False Then
        XValidado := False;

    if not ValidaDevolucao then
        XValidado := False;

    If XFlagNfe = 1 Then
    Begin
        EdNumeroFiscal.Text := IntToStr(XNumfiscNFe);
        EdNumeroFiscal.Enabled := False;
        XFlagNfe := 0;
    End;

    //Edmar - 10/06/2014 - Testa se emite NFS-e e é ordem de serviço e faz teste da DLL
    if (DMMACS.TLoja.FieldByName('GERANFSE').AsString = '1') AND (XTipo = 'ORDEM') then
    begin
        try
        	//Edmar - 10/06/2014 - Tenta instanciar a DLL
           //xUtil_NFSe_DLL := CreateOleObject('NFSe_Util.util');

           if not FileExists('NFSe_Util.dll') then
           	RegistraFalha('  Para envio da NFS-e é necessário que a DLL esteja registrada. Contate o suporte!');
               
        except//Edmar - 10/06/2014 - Se der erro quer dizer que ela não existe
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
		if (Trim(LNomePessoa.Caption) = 'CONSUMIDOR') AND (EdTotalNotaFiscal.ValueNumeric > DMMACS.TEmpresa.FieldByName('VALOR_MAX_NFCE').AsCurrency) then
       begin
           RegistraFalha(' - Falha: A NFC-e excedeu o valor máximo (R$'+DMMACS.TEmpresa.FieldByName('VALOR_MAX_NFCE').AsString+'). Favor selecionar um Cliente válido.');
       end;
	end;
    
    //Paulo 05/03/2011: Mostra a fatura
    MostraFatura;
End;

//Função utilizada para escrever todos os itens de Serviço/Desepesas adicionais

Function TFPadraoFiscal.EscreveItensServ: Boolean;
var
xdesc:double;
Begin

    Result := True;

    Try
        If CalcDescServicosNf = False Then
            Result := False;
        If ValidaDespadic = True 
        Then Begin
            DMESTOQUE.TSlaveServ.Close;
            DMESTOQUE.TSlaveServ.SQL.Clear;
            DMESTOQUE.TSlaveServ.SQL.Add(' Select docfisord.vlrtotserv, despadic.descnf, despadic.cod_despadic CodigoDespesa, despadic.despesa as servico,despadic.cst , despadic.nfse_status STATUS, despadic.nfse_codservico CodigoServicoNfse,');
            DMESTOQUE.TSlaveServ.SQL.Add(' despadic.cfop, despadic.qtd,despadic.unidade UN, despadic.desconto Desconto, despadic.vlrfinal AS ValorUnit, despadic.vlrtotfin as Total, servico_nfse.descricao DescricaoServico, docfisord.nfse_numerodocumento NumDoc, ');
            DMESTOQUE.TSlaveServ.SQL.Add(' ordem.totserv, ordem.descserv, despadic.vlrfinal from despadic ');
            DMESTOQUE.TSlaveServ.SQL.Add('left join servico_nfse on servico_nfse.num_servico = despadic.nfse_codservico');
            DMESTOQUE.TSlaveServ.SQL.Add('left join docfisord on docfisord.cod_ordem = despadic.cod_gerador ');
            DMESTOQUE.TSlaveServ.SQL.Add('left join ordem on ordem.cod_ordem = docfisord.cod_ordem ');
            DMESTOQUE.TSlaveServ.SQL.Add('Where (despadic.gerador=' + #39 + XTipo + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)');
            DMESTOQUE.TSlaveServ.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
            DMESTOQUE.TSlaveServ.Open;

            If Not DMESTOQUE.TSlaveServ.IsEmpty
                Then Begin
                XCFOP_SERV := True;
                If DMMACS.TLoja.FieldByName('IMPEDIRSERVICOS').AsString = '1'
                    Then Begin
                    XValidado := False;
                    RegistraFalha('Serviços: Existe uma configuração em loja que impede a existência de serviços nesta NF');
                End;
            End;
        End
        Else Begin
            Result := False;
        End;
        DbGridServicos.DataSource := DMESTOQUE.DSSlaveServ;

    Except
        Result := False;
    End;

End;

//Paulo 23/09/2011: Função utilizada para escrever todos os itens de Produtos de Consumo

Function TFPadraoFiscal.EscreveItensConsumo;
Begin
    DMESTOQUE.TRel.Close;
    DMESTOQUE.TRel.SQL.Clear;
    DMESTOQUE.TRel.SQL.Add('Select despadic.despesa as consumo,despadic.cst ,despadic.cfop, despadic.qtd,despadic.unidade, despadic.desconto, despadic.vlrfinal AS vlrunit, despadic.vlrtotfin as TOTAL from despadic ');
    DMESTOQUE.TRel.SQL.Add('Where (despadic.gerador=''CONSUMOPC'') AND (despadic.cod_gerador=:COD_GERADOR)');
    DMESTOQUE.TRel.ParamByName('COD_GERADOR').AsInteger := XCod_Pedido;
    DMESTOQUE.TRel.Open;

    DbGridConsumo.DataSource := DMESTOQUE.DRel;

    If ValidaCfopConsumo = true Then
        Result := True
    Else
        Result := False;
End;

//Função utilizada para Calcular e total da Nota Fiscal

Function TFPadraoFiscal.CalcTotalNF: Boolean;
Var
    XFrete: Real;
Begin
 //Insere numero do documento fiscal
    If XTipo = 'PEDC'
        Then Begin
       //EdNumeroFiscal.Text:=DMENTRADA.TPedC.FieldByName('numfiscal').AsString;
        If FMenu.XNotaEntrada = True Then
            EdNumeroFiscal.Text := IntToStr(NfProxnumero);
    End;
    If CBFreteNF.Checked = True Then
        XFrete := EdVlrFrete.ValueNumeric
    Else
        XFrete := 0;
   //Soma todas as Variáveis
    If (XTipo = 'PEDC')
    Then Begin
        XTotalNF := XTotalProdComDesc + XTotalServComDesc + XVlrIcmsSt + XFrete + XvlrIpi + EdOutrasDespesas.ValueNumeric //Se for pedido de compra soma o St
    End
    Else Begin
    //Caso esteja marcado para ignorar o uso de serviços executa a segunda condição
        {If (DMMACS.TLoja.FieldByName('SERVNFE').AsString <> '1') Or (DMMACS.TLoja.FieldByName('SERVNFE').AsString = null) Then //Jônatas 16/08/2013 - Mudado pra OR e =null
            XTotalNF := EdVlrIcmsST.ValueNumeric + XTotalProdComDesc + XTotalServComDesc + XFrete + XvlrIpi + EdOutrasDespesas.ValueNumeric //se for venda não soma st
        Else}
            XTotalNF := EdVlrIcmsST.ValueNumeric + XTotalProdComDesc + XFrete + XvlrIpi + EdOutrasDespesas.ValueNumeric; //se for venda não soma st
    End;
    //XVlrAliquotaTotTributa := (100 * XValorTotalAproxTributacao) / XTotalProdSemDesc; { TODO : Jônatas 16/08/2013 - Caso não haja produtos dá erro de divisão por 0 }

    try
    	XAliqTotTribEstadual := (100 * XValorTotalAproxTributacaoEstadual) / XTotalProdSemDesc;
    	XAliqTotTribNacional := (100 * XValorTotalAproxTributacaoNacional) / XTotalProdSemDesc;
    except
    end;
    
    EdTotalNotaFiscal.ValueNumeric := XTotalNF;
End;

//Função utilizada para Selecionar as tabelas Master (pedido de venda, pedido de compra e ordem)

Function TFPadraoFiscal.SelecionaTabelasPedidos: Boolean;
Begin
    Result := True;
    If XTipo = 'PEDV'
        Then Begin
        If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(XCod_Pedido), '') = False
            Then Begin
            Result := False;
            RegistraFalha('  Seleção: Falha ao selecionar dados do pedido de venda');
        End;
    End;
    If XTipo = 'PEDC'
        Then Begin
        If FiltraTabela(DMENTRADA.TPedC, 'pedcompra', 'cod_pedcomp', IntToStr(XCod_Pedido), '') = False
            Then Begin
            Result := False;
            RegistraFalha('  Seleção: Falha ao selecionar dados do pedido de compra');
        End;
    End;
    If XTipo = 'ORDEM'
        Then Begin
        If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCod_Pedido), '') = False
            Then Begin
            Result := False;
            RegistraFalha('  Seleção: Falha ao selecionar dados do pedido de ordem');
        End;
       //Filtra se o pedido tem serviço cadastrado
        If (FiltraTabela(DMSAIDA.TAlx, 'DESPADIC', 'COD_GERADOR', IntToStr(XCod_Pedido), '')) = True
            Then Begin
            XServicoOp := True;
        End;
    End;
End;

//Função utilizada para Calcular e dividir o desconto proporcialmente da NF entre os serviços

Function TFPadraoFiscal.CalcDescServicosNf: Boolean;
Var
    XTotalDescont, XPercDesconto, xValorTotalDesconto: Real;
Begin
    Result := True;
    Try
        XTotalServSemDesc := 0;
        XTotalServComDesc := 0;
        xValorTotalDesconto := 0;
        xValorTotalServico := 0;
        If XTipo = 'ORDEM'
        Then Begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('select despadic.cod_despadic, despadic.vlrtotfin, despadic.vlrfinal, despadic.qtd from despadic where (despadic.GERADOR=''ORDEM'') AND (DESPADIC.COD_GERADOR=:Codigo)  AND ((despadic.nfse_status<>'+'1'+') or (despadic.nfse_status is null))');
        DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
        DMESTOQUE.Alx.Open;

        DMESTOQUE.Alx.First;
        while not DMESTOQUE.Alx.Eof do
        begin
        	XTotalDescont := 0;
        	XTotalServSemDesc := DMESTOQUE.Alx.fieldbyName('vlrfinal').AsCurrency * DMESTOQUE.Alx.fieldbyName('qtd').AsCurrency;
			XTotalServComDesc := DMESTOQUE.Alx.fieldbyName('vlrtotfin').AsCurrency;

           XTotalDescont := XTotalServSemDesc - XTotalServComDesc;

           DMESTOQUE.Alx1.Close;
           DMESTOQUE.alx1.SQL.Clear;
           DMESTOQUE.Alx1.SQL.Add('update despadic set despadic.descnf = :desc where cod_despadic = :cod');
           DMESTOQUE.Alx1.ParamByName('desc').AsCurrency := XTotalDescont;
           DMESTOQUE.Alx1.ParamByName('cod').AsString := DMESTOQUE.Alx.FieldByName('cod_despadic').AsString;

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
        End;
    Except
        Result := False;
        RegistraFalha('   Falha ao calcular desconto proporcional da nota aos serviços');
    End;
End;


//Função utilizada para Calcular e dividir o desconto proporcialmente da NF entre todos os produtos

Function TFPadraoFiscal.CalcDescProdutosNf: Boolean;
Var
    XTotalDescont, XPercDesconto: Real;
Begin
    XTotalDescont := 0;
    //Soma Total de Produtos Para NF sem os descontos
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    If XTipo = 'PEDV'
        Then Begin
        DMESTOQUE.Alx.SQL.Add(' Select sum(itenspedven.valortotal) as TOTAL from itenspedven where itenspedven.cod_pedven=:codigo ');
    End;
    If XTipo = 'ORDEM'
        Then Begin
        DMESTOQUE.Alx.SQL.Add('  Select sum(itprodord.total) as TOTAL from itprodord where itprodord.cod_ordem=:codigo ');
    End;

    If XTipo = 'PEDC'
        Then Begin
        DMESTOQUE.Alx.SQL.Add(' Select sum(itenspedc.valortotal) as TOTAL from itenspedc where itenspedc.cod_pedcompra=:codigo ');
        //Verifica o Total de produto para a nota com desconto;
        XTotalProdComDesc := DMENTRADA.TPedC.FieldByName('valor').AsCurrency;
    End;

    DMESTOQUE.Alx.ParamByName('codigo').AsInteger := XCod_Pedido;
    DMESTOQUE.Alx.Open;
    If Not DMESTOQUE.Alx.IsEmpty
        Then Begin
        If XTipo = 'PEDV' Then
            XTotalProdComDesc := DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency - DMSAIDA.TPedV.FieldByName('descmoe').AsCurrency; //Verifica o Total de produto para a nota com desconto;
        If XTipo = 'ORDEM' Then
            XTotalProdComDesc := DMServ.tOrd.FieldByName('totprod').AsCurrency; //Verifica o Total de produto para a nota com desconto;
        If XTipo = 'PEDC' Then
            XTotalProdComDesc := DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency - DMENTRADA.TPedC.FieldByName('descmoe').AsCurrency; //Verifica o Total de produto para a nota com desconto;

        XTotalProdSemDesc := DMESTOQUE.Alx.FieldByName('TOTAL').AsCurrency;
        EdTotalProdutos.ValueNumeric := XTotalProdSemDesc;
        EdDesconto.ValueNumeric := XTotalDescont;
    End;

    //Verifica diferença entre o total de produtos sem descontos para o com descontos para ratear diferença entre os produtos
    If XTotalProdSemDesc <> XTotalProdComDesc
    Then Begin
        CalcPercent(0, XTotalProdSemDesc - XTotalProdComDesc, XTotalProdSemDesc, 'D');
        XPercDesconto := AlxPercento;
        XTotalDescont := XTotalProdSemDesc - XTotalProdComDesc;
  		 //EdDesconto.ValueNumeric:=XTotalDescont;
        EdDesconto.ValueNumeric := XTotalDescont;
        If XTipo = 'PEDV'
            Then Begin
            DMSAIDA.TItemPV.Close;
            DMSAIDA.TItemPV.sql.Clear;
            DMSAIDA.TItemPV.SQL.Add(' Select * from itenspedven where itenspedven.cod_pedven=:codigo order by itenspedven.valortotal ');
            DMSAIDA.TItemPV.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMSAIDA.TItemPV.Open;
            DMSAIDA.TItemPV.Last;
            DMSAIDA.TItemPV.First;
            While Not DMSAIDA.TItemPV.Eof Do
            Begin
                If DMSAIDA.TItemPV.RecNo = DMSAIDA.TItemPV.RecordCount
                    Then Begin
                    DMSAIDA.TItemPV.Edit;
                    DMSAIDA.TItemPV.FieldByName('DESCNF').AsCurrency := XTotalDescont;
                    DMSAIDA.TItemPV.Post;
                    If (DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency > 0) And (XTotalDescont > 0)
                        Then Begin
                        DMSAIDA.TItemPV.Edit;
                        DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency := DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency - XTotalDescont;
                        DMSAIDA.TItemPV.FieldByName('vlricms').AsCurrency := (DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency * DMSAIDA.TItemPV.FieldByName('aliqicms').AsCurrency) / 100;
                        DMSAIDA.TItemPV.Post;
                    End;
                End
                Else Begin
                    DMSAIDA.TItemPV.Edit;
                    DMSAIDA.TItemPV.FieldByName('DESCNF').AsCurrency := (DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency * XPercDesconto) / 100;
                    DMSAIDA.TItemPV.Post;
                    If (DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency > 0) And (DMSAIDA.TItemPV.FieldByName('DESCNF').AsCurrency > 0)
                        Then Begin
                        DMSAIDA.TItemPV.Edit;
                        DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency := DMSAIDA.TItemPV.FieldByName('valortotal').AsCurrency - DMSAIDA.TItemPV.FieldByName('DESCNF').AsCurrency;
                        DMSAIDA.TItemPV.FieldByName('vlricms').AsCurrency := (DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency * DMSAIDA.TItemPV.FieldByName('aliqicms').AsCurrency) / 100;
                        DMSAIDA.TItemPV.Post;
                    End;
                End;
                XTotalDescont := XTotalDescont - DMSAIDA.TItemPV.FieldByName('DESCNF').AsCurrency;
                DMSAIDA.TItemPV.Next;
            End;
            Try
                DMSAIDA.IBT.CommitRetaining;
            Except
                DMSAIDA.IBT.RollbackRetaining;
                Result := False;
                RegistraFalha('   Falha ao calcular desconto proporcional da nota aos produtos');
            End;
        End;
        If XTipo = 'ORDEM'
            Then Begin
            DMServ.TPOrd.Close;
            DMServ.TPOrd.sql.Clear;
            DMServ.TPOrd.SQL.Add(' Select * from itprodord where itprodord.cod_ordem=:codigo order by itprodord.total ');
            DMServ.TPOrd.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMServ.TPOrd.Open;
            DMServ.TPOrd.Last;
            DMServ.TPOrd.First;
            While Not DMServ.TPOrd.Eof Do
            Begin
                If DMServ.TPOrd.RecNo = DMServ.TPOrd.RecordCount
                    Then Begin
                    DMServ.TPOrd.Edit;
                    DMServ.TPOrd.FieldByName('DESCNF').AsCurrency := XTotalDescont;
                    DMServ.TPOrd.Post;
                    If (DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency > 0) And (DMServ.TPOrd.FieldByName('DESCNF').AsCurrency > 0)
                        Then Begin
                        DMServ.TPOrd.Edit;
                        DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency := DMServ.TPOrd.FieldByName('total').AsCurrency - DMServ.TPOrd.FieldByName('DESCNF').AsCurrency;
                        DMServ.TPOrd.FieldByName('vlricms').AsCurrency := (DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency * DMServ.TPOrd.FieldByName('aliqicms').AsCurrency) / 100;
                        DMServ.TPOrd.Post;
                    End;
                End
                Else Begin
                    DMServ.TPOrd.Edit;
                    DMServ.TPOrd.FieldByName('DESCNF').AsCurrency := (DMServ.TPOrd.FieldByName('total').AsCurrency * XPercDesconto) / 100;
                    DMServ.TPOrd.Post;
                    If (DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency > 0) And (DMServ.TPOrd.FieldByName('DESCNF').AsCurrency > 0)
                        Then Begin
                        DMServ.TPOrd.Edit;
                        DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency := DMServ.TPOrd.FieldByName('total').AsCurrency - DMServ.TPOrd.FieldByName('DESCNF').AsCurrency;
                        DMServ.TPOrd.FieldByName('vlricms').AsCurrency := (DMServ.TPOrd.FieldByName('BASEICMS').AsCurrency * DMServ.TPOrd.FieldByName('aliqicms').AsCurrency) / 100;
                        DMServ.TPOrd.Post;
                    End;
                End;
                XTotalDescont := XTotalDescont - DMServ.TPOrd.FieldByName('DESCNF').AsCurrency;
                DMServ.TPOrd.Next;
            End;
            Try
                DMSAIDA.IBT.CommitRetaining;
            Except
                DMSAIDA.IBT.RollbackRetaining;
                Result := False;
                RegistraFalha('   Falha ao calcular desconto proporcional da nota aos produtos');
            End;
        End;

        If XTipo = 'PEDC'
            Then Begin
            DMENTRADA.TItemPC.Close;
            DMENTRADA.TItemPC.sql.Clear;
            DMENTRADA.TItemPC.SQL.Add('  Select * from  itenspedc where itenspedc.cod_pedcompra=:codigo order by itenspedc.valortotal ');
            DMENTRADA.TItemPC.ParamByName('codigo').AsInteger := XCod_Pedido;
            DMENTRADA.TItemPC.Open;
            DMENTRADA.TItemPC.Last;
            DMENTRADA.TItemPC.First;
            While Not DMENTRADA.TItemPC.Eof Do
            Begin
                If DMENTRADA.TItemPC.RecNo = DMENTRADA.TItemPC.RecordCount
                Then Begin
                    DMENTRADA.TItemPC.Edit;
                    DMENTRADA.TItemPC.FieldByName('DESCNF').AsCurrency := XTotalDescont;
                    DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency := DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency - ((DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency * XPercDesconto) / 100);
                    DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency := DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency - XTotalDescont;
                    DMENTRADA.TItemPC.Post;
                End
                Else Begin
                    DMENTRADA.TItemPC.Edit;
                    DMENTRADA.TItemPC.FieldByName('DESCNF').AsCurrency := (DMENTRADA.TItemPC.FieldByName('valortotal').AsCurrency * XPercDesconto) / 100;
                    DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency := DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency - ((DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency * XPercDesconto) / 100);
                    DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency := DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency - ((DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency * XPercDesconto) / 100);
                    DMENTRADA.TItemPC.Post;
                End;
                If (DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency<0) or (DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency<0)
                Then Begin
                    DMENTRADA.TItemPC.Edit;
                    DMENTRADA.TItemPC.FieldByName('vlricms').AsCurrency := 0;
                    DMENTRADA.TItemPC.FieldByName('baseicms').AsCurrency := 0;
                    DMENTRADA.TItemPC.Post;
                End;
                XTotalDescont := XTotalDescont - DMENTRADA.TItemPC.FieldByName('DESCNF').AsCurrency;
                DMENTRADA.TItemPC.Next;
            End;
            Try
                DMENTRADA.IBT.CommitRetaining;
            Except
                DMENTRADA.IBT.RollbackRetaining;
                Result := False;
                RegistraFalha('   Falha ao calcular desconto proporcional da nota aos produtos');
            End;
        End;
    End;

    CalcTotalNF;
End;

//Função utilizada para escrever todos os itens de produto

Function TFPadraoFiscal.EscreveItensProduto: Boolean;
Begin
    Result := True;
    Try
        If DMMACS.TLoja.FieldByName('CODPRODREL1').AsString = ''
        Then Begin
            RegistraFalha('   - Informe o Código 1 de produtos para relatórios em loja');
            Result := False;
            Exit;
        End;
       //Verifica Total de Produtos e descontos do mesmo
       //seleciona Produtos
        DMESTOQUE.TSlave.Close;
        DMESTOQUE.TSlave.SQL.Clear;

        If XTipo = 'PEDV'
        Then Begin
            DMESTOQUE.TSlave.SQL.Add('  Select itenspedven.cod_itenspedven as CodigoItem, subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' as CODIGO, subproduto.CONTRINT, subproduto.CODBARRA, vwsimilar.descricao as PRODUTO, itenspedven.descpro AS desconto, itenspedven.DESCNF as DESCONTONF, itenspedven.cfop, ');
            DMESTOQUE.TSlave.SQL.Add('         subproduto.ncm, itenspedven.REDUCBASE, itenspedven.baseicmssubs, itenspedven.vlricmssubs, itenspedven.ipnmva, cst.COD_SIT_TRIB, unidade.sigla_unid AS UNIDADE, Itenspedven.qtdeprod as QUANTIDADE, itenspedven.valunit AS VLRUNIT, ');
            DMESTOQUE.TSlave.SQL.Add('         itenspedven.ALIQUOTATOTALTRIBUTA, subproduto.cod_subproduto, cst.APROVEITACREDITO, itenspedven.ICMSCREDALIQ, itenspedven.ICMSCREDVALOR, subproduto.anp, itenspedven.ALIQ_DEVOLVIDO, itenspedven.valorfrete, itenspedven.VALORDESP, ');
            DMESTOQUE.TSlave.SQL.Add('         itenspedven.valortotal as TOTAL, itenspedven.aliqipi, itenspedven.vlripi, itenspedven.aliqicms as ICMS, itenspedven.baseicms, itenspedven.aplicarst, itenspedven.vlricms, subproduto.gerarpiscofins, cst.SUBSTITUICAO,  itenspedven.valortotaltributa ');
            DMESTOQUE.TSlave.SQL.Add('         from itenspedven ');
            DMESTOQUE.TSlave.SQL.Add('         Left Join vwsimilar on itenspedven.cod_estoque = vwsimilar.cod_estoque ');
            DMESTOQUE.TSlave.SQL.Add('         left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
            DMESTOQUE.TSlave.SQL.Add('         left join cst on itenspedven.cod_cst = cst.cod_cst ');
            DMESTOQUE.TSlave.SQL.Add('         left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
            DMESTOQUE.TSlave.SQL.Add('  where itenspedven.cod_pedven=:codigo ');
        End;
        If XTipo = 'ORDEM'
        Then Begin
            DMESTOQUE.TSlave.SQL.Add('  Select itprodord.cod_itprodord as CodigoItem, subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' as CODIGO, subproduto.CONTRINT, subproduto.CODBARRA, vwsimilar.descricao as PRODUTO, itprodord.desconto, itprodord.cfop, itprodord.valortotaltributa, ');
            DMESTOQUE.TSlave.SQL.Add('          subproduto.ncm, cst.COD_SIT_TRIB, unidade.sigla_unid AS UNIDADE,itprodord.DESCNF as DESCONTONF, itprodord.qtd as QUANTIDADE, itprodord.vlrunit AS VLRUNIT, subproduto.gerarpiscofins, cst.SUBSTITUICAO, subproduto.cod_subproduto, subproduto.anp, ');
            DMESTOQUE.TSlave.SQL.Add('          itprodord.ICMSCREDALIQ, itprodord.ICMSCREDVALOR, itprodord.valorfrete, itprodord.VALORDESP, ');
            DMESTOQUE.TSlave.SQL.Add('          itprodord.total as TOTAL, itprodord.aliqipi, itprodord.vlripi, itprodord.aliqicms as ICMS,  itprodord.baseicms, itprodord.vlricms, itprodord.REDUCBASEICMS as REDUCBASE, itprodord.aplicarst, itprodord.ALIQUOTATOTALTRIBUTA, cst.APROVEITACREDITO  ');
            DMESTOQUE.TSlave.SQL.Add('          from itprodord ');
            DMESTOQUE.TSlave.SQL.Add('          Left Join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
            DMESTOQUE.TSlave.SQL.Add('          left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
            DMESTOQUE.TSlave.SQL.Add('          left join cst on itprodord.cod_cst = cst.cod_cst ');
            DMESTOQUE.TSlave.SQL.Add('          left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
            DMESTOQUE.TSlave.SQL.Add('   where itprodord.cod_ordem=:codigo');
        End;
        If XTipo = 'PEDC'
        Then Begin
            DMESTOQUE.TSlave.SQL.Add('  Select itenspedc.cod_itenspedc as CodigoItem, subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' as CODIGO, subproduto.CONTRINT, subproduto.CODBARRA, vwsimilar.descricao as PRODUTO, itenspedc.descpro as desconto, itenspedc.cfop, ');
            DMESTOQUE.TSlave.SQL.Add('           subproduto.ncm, itenspedc.reducbaseicms as REDUCBASE, itenspedc.baseicmssubs, itenspedc.vlricmssubs, cst.COD_SIT_TRIB, unidade.sigla_unid AS UNIDADE, itenspedc.qtdeprod as QUANTIDADE, itenspedc.valunit AS VLRUNIT, ');
            DMESTOQUE.TSlave.SQL.Add('           itenspedc.ALIQUOTATOTALTRIBUTA, subproduto.cod_subproduto, cst.APROVEITACREDITO, itenspedc.aliq_devolvido,  itenspedc.valorfrete, itenspedc.VALORDESP, ');
            DMESTOQUE.TSlave.SQL.Add('           itenspedc.valortotal as TOTAL, itenspedc.DESCNF as DESCONTONF, itenspedc.aliqipi, itenspedc.vlripi, itenspedc.aliqicms as ICMS, itenspedc.baseicms, itenspedc.vlricms, subproduto.gerarpiscofins, itenspedc.valortotaltributa ');
            DMESTOQUE.TSlave.SQL.Add('           from itenspedc ');
            DMESTOQUE.TSlave.SQL.Add('           Left Join vwsimilar on itenspedc.cod_estoque = vwsimilar.cod_estoque ');
            DMESTOQUE.TSlave.SQL.Add('           left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
            DMESTOQUE.TSlave.SQL.Add('           left join cst on itenspedc.cod_cst = cst.cod_cst ');
            DMESTOQUE.TSlave.SQL.Add('           left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
            DMESTOQUE.TSlave.SQL.Add('    where itenspedc.cod_pedcompra=:codigo and ((itenspedc.consumo is null) or (itenspedc.consumo <> 1)) ');
        End;
        DMESTOQUE.TSlave.ParamByName('codigo').AsInteger := XCod_Pedido;
        DMESTOQUE.TSlave.Open;

        DbGridProdutos.DataSource := DMESTOQUE.DSSlave;
    Except
        RegistraFalha('   - Erro ao selecionar os itens de produtos');
        Result := False;
    End;
End;

//Paulo 23/09/2011: Função para validar os CFOP de produtos consumo conforme localização de comercialização e CST

Function TFPadraoFiscal.ValidaCfopConsumo: Boolean;
Begin
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
    If Not DMENTRADA.TItemPC.IsEmpty
        Then Begin
        DMENTRADA.TItemPC.First;
        While Not DMENTRADA.TItemPC.Eof Do
        Begin
            DMESTOQUE.TCST.Close;
            DMESTOQUE.TCST.SQL.Clear;
            DMESTOQUE.TCST.SQL.Add(' select * from cst where (cst.cod_cst = :cst)');
            DMESTOQUE.TCST.ParamByName('cst').AsString := DMENTRADA.TItemPC.FieldByName('cod_cst').AsString;
            DMESTOQUE.TCST.Open;
            If Not DMESTOQUE.TCST.IsEmpty Then
            Begin
                DMENTRADA.TItemPC.Edit;
                If XUfOrigem <> XUfDestino Then
                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCFOPMATCONSUMOEXT
                Else
                    DMENTRADA.TItemPC.FieldByName('CFOP').AsString := XCFOPMATCONSUMO;
                DMENTRADA.TItemPC.Post;
            End
            Else Begin
                Result := False;
                RegistraFalha('   CFOP: Item de compra sem C.S.T ');
            End;
            DMENTRADA.TItemPC.Next;
        End;
        Try
            DMENTRADA.IBT.CommitRetaining;
        Except
            Result := False;
            RegistraFalha('   CFOP: Falha na transação ao atualizar cfop dos itens de produtos relacionados');
        End;
    End;
End;

//Função utilizada para escrever Pessoa (Cliente/Fornecedor)

Function TFPadraoFiscal.EscrevePessoa: Boolean;
Begin
   Result := True;
	Try
       //SELECIONA O CODIGO DO CLIENTE OU FORNECEDOR DE ACORDO COM A TABELA DE COMPRA, VENDA OU ORDEM
        If XTipo = 'PEDV' then
            XCod_Pessoa := DMSAIDA.WPedV.FieldByName('COD_CLIENTE').AsInteger;

        If XTipo = 'ORDEM' then
            XCod_Pessoa := DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;

        If XTipo = 'PEDC' then
            XCod_Pessoa := DMENTRADA.WPedc.FieldByName('COD_FORNEC').AsInteger;

       //SELECIONA O CLIENTE OU FORNECEDOR DE ACORDO COM O CODIGO DA PESSOA
        If (XTipo = 'PEDV') Or (XTipo = 'ORDEM') then
        begin
            DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;
            DMMACS.TALX.SQL.Add(' SELECT VWCLIENTE.NOME, PESSOAJ.COD_PESSOAJ, PESSOAJ.RAZAO_SOCIAL, VWCLIENTE.CPFCNPJ, CIDADE.UFEMBARQUE, ');
            DMMACS.TALX.SQL.Add(' CLIENTE.CONTRIBICMS, CLIENTE.SUFRAMA, PESSOAJ.INDUSTRIA, VWCLIENTE.CIDADE, VWCIDADE.UF, CIDADE.LOCALEMBARQUE, ');
            DMMACS.TALX.SQL.Add(' CIDADE.COD_IBGE, PESSOA.CEP, PESSOAJ.INSC_EST, PESSOA.EMAILPADRAO, CLIENTE.CREDENCIAL AS CADPRO, CLIENTE.CONSUMIDOR, ');
            DMMACS.TALX.SQL.Add(' CLIENTE.SIMPLESNACIONAL, PESSOA.ESTRANGEIRO, ESTADO.CODBACEN CODPAIS, ESTADO.NOMEPAIS, PESSOA.ENDERECO, PESSOA.BAIRRO, ');
            DMMACS.TALX.SQL.Add(' PEDVENDA.NOMECLI NOMECLIPED, PEDVENDA.CPFCNPJ CPFCNPJPED ');
            DMMACS.TALX.SQL.Add(' FROM VWCLIENTE ');
            DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOA ON VWCLIENTE.COD_PESSOA = PESSOA.COD_PESSOA ');
            DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOA.COD_PESSOA=PESSOAJ.COD_PESSOA ');
            DMMACS.TALX.SQL.Add(' LEFT JOIN CLIENTE ON VWCLIENTE.COD_CLIENTE=CLIENTE.COD_CLIENTE ');
            DMMACS.TALX.SQL.Add(' LEFT JOIN VWCIDADE ON VWCLIENTE.COD_CIDADE = VWCIDADE.COD_CIDADE ');
            DMMACS.TALX.SQL.Add(' LEFT JOIN CIDADE ON VWCLIENTE.COD_CIDADE = CIDADE.COD_CIDADE ');
            DMMACS.TALX.SQL.Add(' LEFT JOIN ESTADO ON CIDADE.COD_ESTADO = ESTADO.COD_ESTADO ');
            DMMACS.TALX.SQL.Add(' LEFT JOIN PEDVENDA ON VWCLIENTE.COD_CLIENTE = PEDVENDA.COD_CLIENTE AND PEDVENDA.COD_PEDVENDA = :VENDA ');
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

        		Fmenu.XTributaCliente := DMMACS.TALX.FieldByName('CONTRIBICMS').AsString;

               //Outra variável para controlar se o cliente é do simples ou não
               if DMMACS.TALX.FieldByName('SIMPLESNACIONAL').AsString = 'S' Then
               	XClientedoSimples:=True
               else
               	XClientedoSimples:=False;

               //Outra variável para controlar se o cliente é do simples ou não
               if DMMACS.TALX.FieldByName('insc_est').AsString <> '' then
                	XClienteIE:=True
               else begin
                	XClienteIE:=False;

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
                If DMMACS.TALX.FieldByName('INDUSTRIA').AsString = '1' Then
                    XDestIndustria := True
                Else
                    XDestIndustria := False;

                //Edmar - 11/03/2015 - Valida se o cliente é contribuinte de ICMS e se foi informado IE
                if (Fmenu.XTributaCliente = '1') AND (XClienteIE = False) then
                begin
					RegistraFalha('  Destinatário: É obrigatório informar a inscrição estadual do cliente.');
					XValidado := False;                   
                end;

                if (Fmenu.XTributaCliente = '2') AND (XClienteIE = True) then
                begin
					RegistraFalha('  Destinatário: O Cliente é isento de ICMS. Neste caso não deve-se informar sua inscrição estadual.');
					XValidado := False;                   
                end;

                XEmiteNFCe := XClienteConsumidorFinal;

                //Edmar - 01/07/2015 - Se o tipo do cupom for NFe, o cliente não é consumidor final
                if DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe' then
                	XEmiteNFCe := False;

				 //Edmar - 01/07/2015 - se o tipo do cupom fo NFCe, marca o cliente como consumidor
                if DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe' then
                	XEmiteNFCe := True;                
            End;
        End
        Else Begin
            DMMACS.TALX.Close;
            DMMACS.TALX.SQL.Clear;
            DMMACS.TALX.SQL.Add(' SELECT VWFORNEC.NOME, VWFORNEC.CPFCNPJ, PESSOAJ.COD_PESSOAJ, PESSOAJ.RAZAO_SOCIAL, VWFORNEC.CIDADE, CIDADE.UFEMBARQUE, ');
            DMMACS.TALX.SQL.Add(' VWCIDADE.UF, CIDADE.COD_IBGE, PESSOAJ.INSC_EST, PESSOA.ESTRANGEIRO, ESTADO.CODBACEN CODPAIS, ESTADO.NOMEPAIS, CIDADE.LOCALEMBARQUE, ');
            DMMACS.TALX.SQL.Add(' PESSOA.ENDERECO, PESSOA.BAIRRO FROM VWFORNEC ');
            DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOA ON VWFORNEC.COD_PESSOA = PESSOA.COD_PESSOA ');
            DMMACS.TALX.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOA.COD_PESSOA=PESSOAJ.COD_PESSOA ');
            DMMACS.TALX.SQL.Add(' LEFT JOIN VWCIDADE ON VWFORNEC.COD_CIDADE = VWCIDADE.COD_CIDADE ');
            DMMACS.TALX.SQL.Add(' LEFT JOIN CIDADE ON VWFORNEC.COD_CIDADE = CIDADE.COD_CIDADE ');
            DMMACS.TALX.SQL.Add(' LEFT JOIN ESTADO ON CIDADE.COD_ESTADO = ESTADO.COD_ESTADO ');
            DMMACS.TALX.SQL.Add(' WHERE VWFORNEC.COD_FORNEC = :CODIGO ');
            DMMACS.TALX.ParamByName('CODIGO').AsInteger := XCod_Pessoa;
            DMMACS.TALX.Open;
        End;
        
        If DMMACS.TALX.IsEmpty
            Then Begin
           //Se não encontrou o cliente/fornecedor, passar informações em branco
            If (XTipo = 'PEDV') Or (XTipo = 'ORDEM')
                Then Begin
                LNomePessoa.Caption := 'Cliente não selecionado';
                RegistraFalha('  Cabeçalho: A Nota fiscal precisa de um cliente selecionado');
            End
            Else Begin
                LNomePessoa.Caption := 'Fornecedor não selecionado';
                RegistraFalha('  Cabeçalho: A Nota fiscal precisa de um fornecedor selecionado');
            End;
            LCpfCnpj.Caption := '';
            LUF.Caption := '';
            LMunicipio.Caption := '';
            LInscEstadual.Caption := '';
            LCodIbge.Caption := '';
            Result := False;
        End
        Else Begin
        	//VERIFICA SE O CLIENTE/FORNECEDOR É PESSOA FISICA OU PESSOA JURIDICO SE O COD_PESSOAJ RETORNAR NULO SIGNIFICA QUE É PESSOA FISICA
            If DMMACS.TALX.FieldByName('cod_pessoaj').AsInteger <> 0 then
            begin
                //identificado como pessoa jurídica
                If DMMACS.TALX.FieldByName('razao_social').AsString = ''
                    Then Begin
                //se não foi encontrado razão social para pessoal invalída sistuação
                    LNomePessoa.Caption := 'Razão social em branco';
                    Result := False;
                    RegistraFalha('  Cabeçalho: O Cliente/Fornecedor foi identificado como pessoa Jurídica, Porém o mesmo não possui razão social');
                End
                Else Begin
                //se encontrou pessoa juridica com razão social
                    LNomePessoa.Caption := 'Fantasia: ' + DMMACS.TALX.FieldByName('nome').AsString + #13#10;
                    LNomePessoa.Caption := LNomePessoa.Caption + 'Razão Social: ' + DMMACS.TALX.FieldByName('razao_social').AsString;
                End;
            End
            Else Begin
            	if (DMMACS.TALX.FieldByName('NOME').AsString = '') AND (XCod_Pessoa <> DMMACS.TLoja.FieldByName('cod_consumidor').AsInteger) then
               {(Trim(DMMACS.TALX.FieldByName('NOME').AsString) <> 'CONSUMIDOR')}
               begin
                   //se não foi encontrado razão social para pessoal invalída sistuação
                   LNomePessoa.Caption := 'Cliente/Fornecedor sem nome';
                   Result := False;
                   RegistraFalha('  Cabeçalho: O Cliente/Fornecedor foi apresentado sem nome');
               end
               else
               	if XTipo = 'PEDV' then
                   	LNomePessoa.Caption := DMMACS.TALX.FieldByName('NOMECLIPED').AsString
                   else
                   	LNomePessoa.Caption := DMMACS.TALX.FieldByName('NOME').AsString;                   
            End;

            //valida cpf cnpj
            If (XTipo = 'PEDC') OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'ECF') Then
            Begin
            	if (DMMACS.TALX.FieldByName('ESTRANGEIRO').AsString <> 'S') AND (XCod_Pessoa <> DMMACS.TLoja.FieldByName('cod_consumidor').AsInteger) then
               {(Trim(DMMACS.TALX.FieldByName('NOME').AsString) <> 'CONSUMIDOR')} 
               begin
                   if (ValidaCGC(TirarCarct01(Trim(DMMACS.TALX.FieldByName('CPFCNPJ').AsString))) = False) And (ValidCPF(TirarCarct01(Trim(DMMACS.TALX.FieldByName('CPFCNPJ').AsString))) = False) then
                   begin
                       LCpfCnpj.Caption := 'CPF/CNPJ Inválido';
                       Result := False;
                       RegistraFalha('  Cabeçalho: CPF/CNPJ Inválido, verifique no cadastro');
                   end
                   else begin
                       LCpfCnpj.Caption := Trim(DMMACS.TALX.FieldByName('CPFCNPJ').AsString);
                   end;
               end
               else
               	if XTipo = 'PEDV' then
            			LCpfCnpj.Caption := Trim(DMMACS.TALX.FieldByName('CPFCNPJPED').AsString)
                   else
            			LCpfCnpj.Caption := Trim(DMMACS.TALX.FieldByName('CPFCNPJ').AsString);
            End;

            If (Valida_InscEstadual(DMMACS.TALX.FieldByName('insc_est').AsString, DMMACS.TALX.FieldByName('UF').AsString) = False) And (DMMACS.TALX.FieldByName('insc_est').AsString <> '') And (UpperCase(DMMACS.TALX.FieldByName('insc_est').AsString) <> 'ISENTO')
            Then Begin
                LInscEstadual.Caption := 'Insc. Estadual Inválida';
                Result := False;
                If DMMACS.TALX.FieldByName('UF').AsString <> '' Then
                    RegistraFalha('  Cabeçalho: Inscrição Estadual inválida. (A I.E. deve ser válida ou em branco)');
            End
            Else Begin
                If DMMACS.TALX.FieldByName('insc_est').AsString = ''
                    Then Begin
                    If XTipo <> 'PEDC'
                        Then Begin
                        If DMMACS.TALX.FieldByName('CADPRO').AsString = '' Then
                            LInscEstadual.Caption := 'ISENTO'
                        Else
                            LInscEstadual.Caption := DMMACS.TALX.FieldByName('CADPRO').AsString;
                    End
                    Else Begin
                        LInscEstadual.Caption := 'ISENTO';
                    End;
                End
                Else Begin
                    LInscEstadual.Caption := DMMACS.TALX.FieldByName('insc_est').AsString;
                End;
            End;

           //Paulo 09/08/2010: Esta parte é para definir a UF e Cidade de acordo com a loja
            If (XTipo = 'PEDV') And (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') Then
            Begin
                If (XImpLig = true) Then
                Begin
                    DMPESSOA.TALX.Close;
                    DMPESSOA.TALX.SQL.Clear;
                    DMPESSOA.TALX.SQL.Add('select nome from cidade inner join empresa on cidade.cod_cidade = empresa.cod_cidade');
                    DMPESSOA.TALX.Open;

                    LUF.Caption := XUfOrigem;
                    LMunicipio.Caption := DMPESSOA.TALX.FieldByName('NOME').AsString;
                End;
            End;

           if (XTipo = 'PEDC') Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString <> 'ECF') Then
           begin
               //Edmar - 11/06/2015 - Só valida o endereço do cliente se não for consumidor final
               //quando NFC-e não é obrigatório informar os dados de endereço
               if not XEmiteNFCe then
               begin
               	if (DMMACS.TALX.FieldByName('UF').AsString = '') then
               	begin
                   	LUF.Caption := 'UF não selecionado';
                   	Result := False;
                   	RegistraFalha('  Cabeçalho: Selecione a Cidade/Estado para a pessoa');
               	end
               	else
                   	LUF.Caption := DMMACS.TALX.FieldByName('UF').AsString;

               	If (DMMACS.TALX.FieldByName('CIDADE').AsString = '') then
               	begin
                   	LMunicipio.Caption := 'Cidade não selecionada';
                   	Result := False;
                   	RegistraFalha('  Cabeçalho: Selecione a Cidade/Estado para a pessoa');
               	end
               	else
                   	LMunicipio.Caption := DMMACS.TALX.FieldByName('CIDADE').AsString;

                   if DMMACS.TALX.FieldByName('ENDERECO').AsString = '' then
                   begin
                       RegistraFalha('  Cabeçalho: Informe o endereço da pessoa');
                       Result := False;
                   end;

                   if (DMMACS.TALX.FieldByName('BAIRRO').AsString = '') then
                   begin
                       RegistraFalha('  Cabeçalho: Informe o bairro da pessoa');
                       Result := False;
                   end;

           		if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
                   	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
               			OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
		            begin
               		if (DMMACS.TALX.FieldByName('COD_IBGE').AsString = '') then
               		begin
                   		LCodIbge.Caption := 'IBGE Inv.';
                   		Result := False;
                   		RegistraFalha('  Cabeçalho: Selecione o código IBGE para a cidade do destino');
               		end
               		else
                   		LCodIbge.Caption := DMMACS.TALX.FieldByName('COD_IBGE').AsString;
           		end
           		else
               		LCodIbge.Caption := '';
               end
               else begin
               	LCodIbge.Caption := DMMACS.TALX.FieldByName('COD_IBGE').AsString;               
               	LMunicipio.Caption := DMMACS.TALX.FieldByName('CIDADE').AsString;
                   LUF.Caption := DMMACS.TALX.FieldByName('UF').AsString;                   
               end;
           end;
                      
           {If (DMMACS.TALX.FieldByName('NOME').AsString = '') AND (DMMACS.TALX.FieldByName('NOME').AsString <> 'CONSUMIDOR') then
           begin
                LCpfCnpj.Caption := 'CPF/CNPJ Inválido';
                Result := False;
                RegistraFalha('  Cabeçalho: CPF/CNPJ Inválido, verifique no cadastro');
           End;}

           //Edmar - VALIDAÇÕES PARA CLIENTE ESTRANGEIRO
			if (DMMACS.TALX.FieldByName('ESTRANGEIRO').AsString = 'S') AND
            		((DMMACS.TALX.FieldByName('CODPAIS').AsString = '') OR (DMMACS.TALX.FieldByName('NOMEPAIS').AsString = '')) then
           begin
               Result := False;
            	RegistraFalha('  Cabeçalho: Informe o Nome e o Código Bacen do País (no cadastro de Estado) do Cliente Estrangeiro.');
           end;

			if (DMMACS.TALX.FieldByName('ESTRANGEIRO').AsString = 'S') AND
            		((DMMACS.TALX.FieldByName('UFEMBARQUE').AsString = '') OR (DMMACS.TALX.FieldByName('LOCALEMBARQUE').AsString = '')) then
           begin
               Result := False;
           	RegistraFalha('  Cabeçalho: Informe o UF e o Local de Embarque (no cadastro de Cidade) do Cliente Estrangeiro.');
           end;
           //

           //Edmar - 10/06/2015 - Valida se cliente é consumidor final
           cbConsumidorFinal.Checked := XEmiteNFCe;
            
			if XEmiteNFCe then
           	cbTipoDocumento.Text := 'NFC-e'
           else
           	cbTipoDocumento.Text := 'NF-e';
             
           if (XEmiteNFCe) AND
           	(((DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1) AND (DMMACS.TLoja.FieldByName('CSC_NFCEPROD').AsString = ''))
               	OR
                   ((DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 2) AND (DMMACS.TLoja.FieldByName('CSC_NFCEHOMO').AsString = ''))) then
           begin
               RegistraFalha('  Cabeçalho: Para emitir NFC-e, é necessário informar o CSC (código de segurança do contribuiente) no cadastro Loja.');
               Result := False;
           end;

           if (XEmiteNFCe) AND
           	(((DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 1) AND (DMMACS.TLoja.FieldByName('IDCSC_NFCEPROD').AsString = ''))
               	OR
                   ((DMMACS.TLoja.FieldByName('NFEPROHOMO').AsInteger = 2) AND (DMMACS.TLoja.FieldByName('IDCSC_NFCEHOMO').AsString = ''))) then
           begin
               RegistraFalha('  Cabeçalho: Para emitir NFC-e, é necessário informar o Id do CSC (código de segurança do contribuiente) no cadastro Loja.');
               Result := False;
           end;
        end;
   except
   	Result := False;
   end;
End;

Procedure TFPadraoFiscal.FormActivate(Sender: TObject);
var
   UtilNfe:NFe_Util_2G_Interface;
Begin
    Inherited;
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
    Try
    	If XTipo = 'ORDEM'
       Then Begin
          DMESTOQUE.Alx1.Close;
          DMESTOQUE.Alx1.SQL.Clear;
          DMESTOQUE.Alx1.SQL.Add('select * from itprodord where itprodord.cod_ordem = :cod_ordem');
          DMESTOQUE.Alx1.ParamByName('cod_ordem').AsInteger := XCod_Pedido;
          DMESTOQUE.Alx1.Open;
          If DMESTOQUE.Alx1.IsEmpty
          Then Begin
              xExisteProd := false;
          End;
       End;
    Except
        Showmessage('Erro ao verificar produtos para tela do fiscal.');
        xExisteProd := false;
    End;

    //Edmar - 09/12/2013 - Testa se há serviços na nota
    Try
        DMESTOQUE.Alx2.Close;
        DMESTOQUE.Alx2.SQL.Clear;
        DMESTOQUE.Alx2.SQL.Add('select * from despadic where (despadic.GERADOR=''ORDEM'') AND (DESPADIC.COD_GERADOR=:Codigo) AND ((despadic.nfse_status<>''1'') or (despadic.nfse_status is null))');
        DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := XCod_Pedido;
        DMESTOQUE.Alx2.Open;
        if DMESTOQUE.Alx2.IsEmpty then
        	xExisteServ := false;
    Except
        showmessage('Erro ao verificar serviços para tela do fiscal.');
        xExisteServ := false;
    End;

    edIss.Text := DMMACS.TEmpresa.fieldbyName('issqn').AsString;

    //Edmar - 05/12/2013 - Limpa e popula combo box reter iss
    cbRetIss.Clear;
    cbRetIss.Items.Add('SIM');
    cbRetIss.Items.Add('NÃO');
    cbRetIss.Text:='NÃO';

    PComplementar.SendToBack;
    PComplementar.Visible := False;
	 //Paulo 15/12/2011:para tipo de operação entrada outros
    if (FMenu.XOutrosEnt = True) AND (((DMMACS.TLoja.FieldByName('EMISSAOPROPDENTRO').AsInteger = 0) OR (DMMACS.TLoja.FieldByName('EMISSAOPROPFORA').AsInteger = 0))
    		AND ((DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPDENTRO').AsInteger = 0) OR (DMMACS.TLoja.FieldByName('COD_DEVNOTAPROPFORA').AsInteger = 0))) then
    	AbrirForm(TFCadCFOP, FCadCFOP, 1);

   //Paulo 22/07/2010:para tipo de operação outros
    if (FMenu.XOutrosFisc = true) Or (FMenu.XComplementacao = True) Then
    begin
       AbrirForm(TFCadCFOP, FCadCFOP, 1);
    end;

   //PAulo 01/12/2010: Somente para Complemento, usuario informa dados da nota que será feito o complemento
    If (FMenu.XComplementacao = True) Then
    Begin
    	 MessageDlg('Notas Fiscais Complementares possuem regras específicas, inclusive na questão dos produtos inseridos a NFe.'+#13+#10+'Consulte o manual do contribuinte em caso de dúvidas.', mtWarning, [mbOK], 0);
        PComplementar.BringToFront;
        PComplementar.Visible := True;
    End;

    If FMenu.LCODUSUARIO.Caption = '111522' Then
        BtnImprimir.Visible := True
    Else
        BtnImprimir.Visible := False;

    If (FMenu.TIPOREL = 'RNF') or (FMenu.TIPOREL = 'NFSE') Then
        XDadosAdicionaisReimp := True;

    Top := 0;
    XServicoOp := False;
    XImpLig := False;
   //Paulo 23/08/2010: PAra verificar se a impressora está ligada ou conectada
    If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') Then
    Begin
        XAlx := Bematech_FI_VerificaImpressoraLigada();
        If (XAlx <> 1) Then
        Begin
            XImpLig := False;
        End
        Else Begin
            XImpLig := True;
        End;
    End;

    Atualiza;
    
   //CalcImpostosNF;
   //CalcTotalNF;

End;

Procedure TFPadraoFiscal.BtnProcuraPessoaClick(Sender: TObject);
Begin
    Inherited;
    If XTipo = 'PEDC'
        Then Begin
        AbrirForm(TFFornecedor, FFornecedor, 1);
        If ((FMenu.TIPOAUX = 'ECF')
        	Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
        		OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
               	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
                   	Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF'))
            Then Begin
        //Paulo 07/06/2011:Este é um caso de reimpressão de de um cupom fiscal como NFe, assim o sistema irá assimilar o cliente selecionado como cliente do pedido em questão (Usado quando necessário substituir o cliente "Consumidor" tipicamente utilizado no caso de ECF para um cliente cadastrado para ser usado em NFe)
            If MessageDlg('Você solicitou a alteração do Cliente para o pedido atual. Deseja prosseguir a alteração?' + #13 + #10 + 'Cliente: ' + DMPESSOA.WFornecedor.FieldByName('NOME').AsString, mtConfirmation, [mbYes, mbNo], 0) = MrYes
                Then Begin
                DMENTRADA.TPedC.Edit;
                DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
                DMENTRADA.TPedC.Post;
                DMENTRADA.IBT.CommitRetaining;
                XCod_Pessoa := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
                FiltraTabela(DMENTRADA.WPedc, 'VWPEDC', 'COD_PEDCOMP', IntToStr(DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger), '');

            End;
        End;
        EscrevePessoa;
    End
    Else Begin
        AbrirForm(TFCliente, FCliente, 1);
        If ((FMenu.TIPOAUX = 'ECF')
        	Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
        		OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
               	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
                   	Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF'))
            Then Begin
        //Este é um caso de reimpressão de de um cupom fiscal como NFe, assim o sistema irá assimilar o cliente selecionado como cliente do pedido em questão (Usado quando necessário substituir o cliente "Consumidor" tipicamente utilizado no caso de ECF para um cliente cadastrado para ser usado em NFe)
            If MessageDlg('Você solicitou a alteração do Cliente para o pedido atual. Deseja prosseguir a alteração?' + #13 + #10 + 'Cliente: ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, mtConfirmation, [mbYes, mbNo], 0) = MrYes
                Then Begin
                DMSAIDA.TPedV.Edit;
                DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsInteger := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
                DMSAIDA.TPedV.FieldByName('NOMECLI').AsString := DMPESSOA.WCliente.FieldByName('NOME').AsString;
                DMSAIDA.TPedV.FieldByName('CPFCNPJ').AsString := DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
                DMSAIDA.TPedV.Post;
                DMSAIDA.IBT.CommitRetaining;
                XCod_Pessoa := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
                FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString, '');
            End;
        End;
        EscrevePessoa;
    End;
    Atualiza;
End;

Procedure TFPadraoFiscal.EdErroClick(Sender: TObject);
Begin
    Inherited;
    PErro.Visible := True;
    PErro.BringToFront;
End;

Procedure TFPadraoFiscal.SpeedButton1Click(Sender: TObject);
Begin
    Inherited;
    PErro.Visible := False;
End;

Procedure TFPadraoFiscal.EdFreteContaKeyPress(Sender: TObject;
    Var Key: Char);
Begin
    Inherited;
    If (Key <> '1') And (Key <> '2') And (Key <> #8) Then
        Key := #0;
End;

Procedure TFPadraoFiscal.EdBaseICMSSTExit(Sender: TObject);
Begin
    Inherited;
    If XTipo = 'PEDC'
    Then Begin
       If RateioStEntrada = False Then
            RegistraFalha('   Falha rateio Substituição Tributária');
       //Paulo 14/12/2011: Calcula os impostos e o total da nota
        CalcImpostosNF;
        CalcTotalNF;
    End;
End;

Procedure TFPadraoFiscal.FormClose(Sender: TObject;
    Var Action: TCloseAction);
Begin
    FMenu.TIPOREL := ''; //marca para garantir que não haverá reimpressão
    EdChaveNFE.Text := '';
    Inherited;
    Try
        Action := caFree;
        FPadrao := Nil;
    Except
    End;
End;

Procedure TFPadraoFiscal.CBFreteNFClick(Sender: TObject);
Begin
    Inherited;
   //Efetua calculo do total da nota
    CalcTotalNF
End;

Procedure TFPadraoFiscal.EdVlrFreteExit(Sender: TObject);
Begin
    Inherited;
   //Efetua calculo do total da nota
    CalcImpostosNF;
    CalcTotalNF;
    //Edmar - 06/05/2015 - Processa o valor do frete proporcionalmente aos itens    
    if not RateioFrete then
    	RegistraFalha(' Falha ao calcular o rateio do Frete.');
End;

Procedure TFPadraoFiscal.BtnProcuraTranspClick(Sender: TObject);
Begin
    Inherited;
    FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', ' ORDER BY NOME'); //LIBERA TODOS OS REGISTROS PARA CONSULTA
    If AbrirForm(TFFornecedor, FFornecedor, 1) = 'Selected'
        Then Begin
        XCod_Transp := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
        LTransportadora.Caption := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
        LTranspCpfCnpj.Caption := DMPESSOA.WFornecedor.FieldByName('cpfcnpj').AsString;
        LTranspEndereco.Caption := DMPESSOA.WFornecedor.FieldByName('endereco').AsString;
        LTranspMunicipio.Caption := DMPESSOA.WFornecedor.FieldByName('cidade').AsString;
    End
    Else Begin
        XCOD_TRANSP := -1;
        LimpaLabelTransp;
    End;
End;

Procedure TFPadraoFiscal.BitBtn1Click(Sender: TObject);
Begin
    Inherited;
    XCod_Transp := -1;
    LimpaLabelTransp;
End;

Procedure TFPadraoFiscal.BitBtn2Click(Sender: TObject);
Begin
    Inherited;
    XAtualizaNota := 1; //Jônatas 31/07/2013 - manter a data do edit DtSaidaEntrada para não ter que trocar toda vez que atualizar
    OnActivate(sender);
    XAtualizaNota := 0; //Jônatas 31/07/2013 - manter a data do edit DtSaidaEntrada para não ter que trocar toda vez que atualizar
End;

Procedure TFPadraoFiscal.FormKeyDown(Sender: TObject; Var Key: Word;
    Shift: TShiftState);
Begin
    Inherited;
    If Key = Vk_f9 Then
        Atualiza;

    If Key = VK_f5 Then
        BitBtn3Click(sender);
End;

Procedure TFPadraoFiscal.BitBtn3Click(Sender: TObject);
var
FMzrNfse: TFMzrNFSe;
xTexto: String;
Begin
    Inherited;
    DMESTOQUE.Alx2.Open;
    //Valida quando a data e o período
    EdDtsaidaEntrada.OnExit(sender); // Efetua o tratamento do intervalo de datas { TODO : verificar a atualização do campo dtsaidaentrada para saber o porque de não ficar ok }
    If (StrToDate(EdDtsaidaEntrada.Text) < XDtIniPeriodo) Or (StrToDate(EdDtsaidaEntrada.Text) > XDtFimPeriodo)
    Then Begin
        XValidado := False;
        RegistraFalha('   Período Fiscal: A Data de Saída/Entrada deve ficar no intervalo permitido pelo período Fiscal (' + DateToStr(XDtIniPeriodo) + ' - ' + DateToStr(XDtFimPeriodo));
    End;

    //Edmar - 07/01/2014 - Testa se deve mostrar os serviços no fiscal
	if (DMMACS.TLoja.FieldByName('GERANFSE').AsString = '1')
   then begin
   	//Valida NF quanto ao numero
    	ValidaNumNf;
    	if FMenu.TIPOREL <> 'NFSE'
       then begin
       	if xExisteProd
           then begin
           	//Edmar - 11/03/2014 - Testa se é pedido de compra e não mostra mensagem de confirmação
				if (XTipo = 'PEDC') or (XTipo = 'PEDV') then
               	enviaNfe
               else
               begin
               	if Mensagem('CONFIRMAÇÃO NF-e', 'Deseja enviar a nota fiscal de produtos?', '', 2, 3, false, 'c')=2 then
               		enviaNfe;
               end;
        	end;
    	end;
    	//Edmar - 06/12/2013 - Testa se existe serviços e for ordem inicia o envio da nfse
    	if (xExisteServ) and (XTipo = 'ORDEM') then
       begin
			if Mensagem('CONFIRMAÇÃO NFS-e', 'Deseja enviar a nota fiscal de serviços?', '', 2, 3, false, 'c')=2 then
           	enviaNfse;
    	end;
   end
   else begin
   	ValidaNumNf;
    	if xExisteProd then
    		enviaNfe;
   end;
End;

Procedure TFPadraoFiscal.EdVlrIcmsExit(Sender: TObject);
Begin
    Inherited;
    If XTipo = 'PEDC'
        Then Begin
        If (EdBaseICMS.ValueNumeric <> XVlrBaseIcmsOp) Or (EdVlrIcms.ValueNumeric <> XVlrIcmsOp)
            Then Begin
           //Efetua rateio de de icms caso haja redução na base de calculo
            RateioValorBaseIcms
        End;
    End;

    DMESTOQUE.Alx5.Close;
    DMESTOQUE.Alx5.SQL.Clear;
    DMESTOQUE.Alx5.SQL.Add('update empresa set empresa.issqn = :iss');
    DMESTOQUE.Alx5.ParamByName('iss').AsCurrency := edIss.ValueNumeric;

    DMESTOQUE.Alx5.ExecSQL;
//    dmestoque.alx5.Transaction.CommitRetaining;
    DMESTOQUE.TransacEstoque.CommitRetaining;

End;

Procedure TFPadraoFiscal.PCDadosAdicionaisChange(Sender: TObject);
Begin
    Inherited;
    ValidaDadosAdicionais;
End;

Procedure TFPadraoFiscal.PCReservadosFiscoChange(Sender: TObject);
Begin
    Inherited;
    ValidaReservadoFisco;
End;

Procedure TFPadraoFiscal.BtnImprimirClick(Sender: TObject);
Begin
    Inherited;
    //Verifica se o caixa é emitente de nota fiscal
    DMCAIXA.TCaixa.Close;
    DMCAIXA.TCaixa.SQL.Clear;
    DMCAIXA.TCaixa.SQL.Add(' Select * from caixa where caixa.cod_caixa=:codigo ');
    DMCAIXA.TCaixa.ParamByName('codigo').AsString := FMenu.LCODCAIXA.Caption;
    DMCAIXA.TCaixa.Open;
    If Not DMCAIXA.TCaixa.IsEmpty
        Then Begin
       //IMPRIME NOTA FISCAL NORMAL
        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF')
            Then Begin
            If ImpNf = False
                Then Begin
                MessageDlg('A Nota Fiscal foi registrada e numerada no sistema, porém a impressão não ocorreu com sucesso!' + #13 + #10 + 'Clique em reimprimir', mtWarning, [mbOK], 0);
            End;
        End;
        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
        	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
           	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
            Then Begin
            FMenu.TIPOREL := 'NF';
            If ImpNfe = False
                Then Begin
                MessageDlg('A Nota Fiscal foi registrada e numerada no sistema, porém a impressão não ocorreu com sucesso!' + #13 + #10 + 'Clique em reimprimir', mtWarning, [mbOK], 0);
            End;
        End;
        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')
            Then Begin
            If ImpNf = False
                Then Begin
                MessageDlg('A Nota Fiscal foi registrada e numerada no sistema, porém a impressão não ocorreu com sucesso!' + #13 + #10 + 'Clique em reimprimir', mtWarning, [mbOK], 0);
            End;
        End;
    End;
End;

Procedure TFPadraoFiscal.PCDadosAdicionaisExit(Sender: TObject);
Begin
    Inherited;
//    PCDadosAdicionais.ActivePage := TabSheet1;
End;

Procedure TFPadraoFiscal.PCReservadosFiscoExit(Sender: TObject);
Begin
    Inherited;
//    PCReservadosFisco.ActivePage := TabSheet5;
End;

Procedure TFPadraoFiscal.EdDtsaidaEntradaExit(Sender: TObject);
Begin
    Inherited;
    If (StrToDate(EdDtsaidaEntrada.Text) < XDtIniPeriodo) Or (StrToDate(EdDtsaidaEntrada.Text) > XDtFimPeriodo)
        Then Begin
        Mensagem('   A T E N Ç Ã O   ', 'Período Fiscal: A Data de Saída/Entrada deve ficar no intervalo permitido pelo período Fiscal (' + DateToStr(XDtIniPeriodo) + ' - ' + DateToStr(XDtFimPeriodo), '', 1, 1, false, 'I');
    End;
End;

Procedure TFPadraoFiscal.BtnAlterarPeriodoClick(Sender: TObject);
Begin
    Inherited;
    //AbrirForm(TFSENHA, FSENHA, 0);
    //repassa resultado da tela de autenticação de senha para as variáveis de controle
    //If XAlxResult=True
    //Then Begin
    If AbrirForm(TFPeriodoFiscal, FPeriodoFiscal, 1) = 'Selected'
        Then Begin
        XCod_Perido_Fiscal := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
        LPeriodoFiscal.Caption := 'Período Fiscal: ' + DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
        XNomePeriodoFiscal := DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
           //Repassa os Intervalos de data
        Try
            XDtIniPeriodo := DMMACS.TPeriodoFiscal.FieldByName('DTINICIAL').AsDateTime;
            XDtFimPeriodo := DMMACS.TPeriodoFiscal.FieldByName('DTFINAL').AsDateTime;
        Except
            XValidado := False;
            RegistraFalha('   Período Fiscal: Falha ao identificar o intervalo de datas no período, procure suporte técnico');
        End;
    End;
  //End;
End;

Procedure TFPadraoFiscal.EdNumeroFiscalExit(Sender: TObject);
Begin
    Inherited;
    ValidaNumNf;
End;

Procedure TFPadraoFiscal.BtnAbreLoteClick(Sender: TObject);
Begin
    Inherited;
    If XTipo = 'PEDC'
        Then Begin
        AbrirForm(TFFornecedor, FFornecedor, 1);

    End
    Else Begin
        AbrirForm(TFCliente, FCliente, 1);
        EdClienteNfe.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
    End;
End;

Procedure TFPadraoFiscal.EdNumNFeExit(Sender: TObject);
Begin
    Inherited;
    If XTipo = 'PEDV'
        Then Begin
        DMSAIDA.TAlx.Close;
        DMSAIDA.TAlx.SQL.Clear;
        DMSAIDA.TAlx.SQL.Add('select docfissaida.nfechave AS CHAVE, pedvenda.nomecli, pedvenda.numfiscal, pedvenda.valor');
        DMSAIDA.TAlx.SQL.Add('from pedvenda');
        DMSAIDA.TAlx.SQL.Add('left join docfissaida on pedvenda.cod_pedvenda=docfissaida.cod_pedido');
        DMSAIDA.TAlx.SQL.Add('where docfissaida.numdocfis = :NUM ');
        DMSAIDA.TAlx.ParamByName('NUM').AsString := EdNumNFe.Text;
        DMSAIDA.TAlx.Open;
        If Not DMSAIDA.TAlx.IsEmpty
            Then Begin
            If DMSAIDA.TAlx.FieldByName('CHAVE').AsString = ''
                Then Begin
                DMSAIDA.TAlx.Close;
                DMSAIDA.TAlx.SQL.Clear;
                DMSAIDA.TAlx.SQL.Add(' select docfisord.nfechave AS CHAVE, vwcliente.nome as nomecli, ordem.numfiscal, ordem.totord as VALOR');
                DMSAIDA.TAlx.SQL.Add(' from ordem ');
                DMSAIDA.TAlx.SQL.Add(' left join docfisord on ordem.cod_ordem=docfisord.cod_ordem ');
                DMSAIDA.TAlx.SQL.Add(' left join vwcliente on ordem.cod_cliente=vwcliente.cod_cliente ');
                DMSAIDA.TAlx.SQL.Add(' where docfisord.numdocfis= :NUM ');
                DMSAIDA.TAlx.ParamByName('NUM').AsString := EdNumNFe.Text;
                DMSAIDA.TAlx.Open;
                If Not DMSAIDA.TAlx.IsEmpty
                    Then Begin
                    If DMSAIDA.TAlx.FieldByName('CHAVE').AsString = ''
                        Then Begin
                        MessageDlg('A Chave da Nota Fiscal não foi encontrada. Sem ela a NFe não será aceita no Sefaz. 	' + #13 + 'Comunique o Suporte para corrigir o problema', mtWarning, [mbOK], 0);
                    End
                    Else Begin
                        EdClienteNfe.Text := DMSAIDA.TAlx.FieldByName('nomecli').AsString;
                        EdValorNfe.ValueNumeric := DMSAIDA.TAlx.FieldByName('valor').AsFloat;
                    End;
                End;
            End
            Else Begin
                EdClienteNfe.Text := DMSAIDA.TAlx.FieldByName('nomecli').AsString;
                EdValorNfe.ValueNumeric := DMSAIDA.TAlx.FieldByName('valor').AsFloat;
            End;
        End
        Else Begin
            MessageDlg('Nota Fiscal não encontrada!', mtWarning, [mbOK], 0);
        End;
    End;
End;

//Paulo 05/03/2011: Mostra a fatura

Function TFPadraoFiscal.MostraFatura: Boolean;
Var
    i, XCod_aux: Integer;
    XvlrParcProd: Real;
Begin
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
    If Not DMMACS.TMP.IsEmpty
        Then Begin
        DMMACS.TMP.First;
        While Not DMMACS.TMP.Eof Do
        Begin
            If I = 6
                Then Begin
                LbFaturaNF.Lines.Text := LbFaturaNF.Lines.Text + '  ' + DMMACS.TMP.FieldByName('DESC1').AsString + ' - R$' + FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency);
                LbFaturaNF.Lines.Add('');
                I := 0;
            End
            Else Begin
                If I = 1 Then
                    LbFaturaNF.Lines.Text := LbFaturaNF.Lines.Text + DMMACS.TMP.FieldByName('DESC1').AsString + ' - R$' + FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency)
                Else
                    LbFaturaNF.Lines.Text := LbFaturaNF.Lines.Text + '  ' + DMMACS.TMP.FieldByName('DESC1').AsString + ' - R$' + FormatFloat('0.00', DMMACS.TMP.FieldByName('VLR1').AsCurrency);
            End;
            I := I + 1;
            DMMACS.TMP.Next;
        End;
        FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
    End;
//      LbFaturaNF.Caption:='Fatura: '+DMMACS.TLoja.FieldByName('tmp1').AsString;
End;

Procedure TFPadraoFiscal.EdPlacaVeiculoKeyDown(Sender: TObject;
    Var Key: Word; Shift: TShiftState);
Begin
    Inherited;
    If (Length(EdPlacaVeiculo.Text) = 3) And Not (KEY = 8) Then Begin
        EdPlacaVeiculo.Text := EdPlacaVeiculo.Text + '-';
        EdPlacaVeiculo.SelStart := 4;
    End;
End;

Procedure TFPadraoFiscal.EdPlacaVeiculoKeyPress(Sender: TObject;
    Var Key: Char);
Begin
    Inherited;
  // EdPlacaVeiculoKeyPress(Sender, Key);

    If Not (key In ['a'..'z', 'A'..'Z', '0'..'9', #8, #13])
        Then
        Key := #0
    Else Begin // ['A'..'Z','a'..'z'
        If Length(EdPlacaVeiculo.Text) < 4 Then
            If Not (key In ['a'..'z', 'A'..'Z', #8, #13]) Then
                Key := #0;
        If (Length(EdPlacaVeiculo.Text) > 3) Then
            If Not (key In ['0'..'9', #8, #13]) Then
                Key := #0
    End;

    EdPlacaVeiculo.Repaint;
End;

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
             if DMMACS.TEmpresa.FieldByName('nfse_codtributacaomunicipal').AsString = '' then
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
             if DMMACS.TALX.FieldByName('cep').AsString = '' then
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

         if not VerificarEmailTomador(DMServ.TAlx3.FieldByName('cod_gerador').AsString) then
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
         end;
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
		DbGridServicos.DefaultDrawDataCell(Rect, DbGridServicos.Columns[datacol].Field, State);
   except
   end;
end;

procedure TFPadraoFiscal.DbGridServicosDblClick(Sender: TObject);
begin
  inherited;
	AbrirForm(TFEscolhaServico, FEscolhaServico, 1);
  	if FMenu.xServico <> ''
   then begin
  		try
  			DMServ.Alx.Close;
       	dmserv.Alx.SQL.Clear;
       	DMServ.Alx.SQL.Add('update despadic set despadic.nfse_codservico = :codser where despadic.cod_despadic = :coddesp');
       	DMServ.alx.ParamByName('codser').AsString := FMenu.xServico;
           Try
       		DMServ.Alx.ParamByName('coddesp').AsString := DMESTOQUE.TSlaveServ.fieldbyname('CodigoDespesa').AsString;
           Except
				MessageDlg('Atualize o Banco de dados para corrigir uma falha:'+#13+#10+'Campo Codigo da Despesa (serviço) não encontrado.', mtWarning, [mbOK], 0);
           End;

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
    If XValidado = True
        Then Begin
        {FMenu.XDevolucao := False;
        FMenu.XOutrosEnt := False;}
        Try
        	 //Edmar - 20/03/2015 - Se for NF-e de devolução, passa o chave do campo para a variavel auxiliar
			 if FMenu.XOutrosEnt OR FMenu.XDevolucao then
				FMenu.XChaveNFe := EdChaveNFE.Text;
            EdChaveNFE.Text := '';   
//            PCDadosAdicionais.ActivePage := TabSheet1;
//            PCReservadosFisco.ActivePage := TabSheet5;
            If (FMenu.XComplementacao = True) Then
            Begin
                MDadosAdicionais.Text := '';
                MDadosAdicionais.Text := 'NOTA FISCAL COMPLEMENTAR REFERENTE A NFE ' + XNumNFeComp + ' CHAVE ' + XNFeChaveComp + '';
            End;

            If XTipo = 'PEDC'
                Then Begin
                DMENTRADA.TPedC.Edit;
                DMENTRADA.TPedC.FieldByName('FISCO').AsString := 'NF';
                DMENTRADA.TPedC.FieldByName('numfiscal').AsString := EdNumeroFiscal.Text;
                if FMenu.XDevolucao then
                    DMENTRADA.TPedC.FieldByName('NUMDEV').AsString := 'DEV'
                else
                	if FMenu.XOutrosEnt = True Then
                   	DMENTRADA.TPedC.FieldByName('NUMDEV').AsString := 'OUT';
                {If FMenu.XOutrosEnt = True Then
                    DMENTRADA.TPedC.FieldByName('NUMDEV').AsString := 'OUT';}
                If EdVlrFrete.ValueNumeric > 0 Then
                    DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency := EdVlrFrete.ValueNumeric
                Else
                    DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency := 0;

               //Repassa valores para a tabela de pedidos
                DMENTRADA.TPedC.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency := EdVlrIcmsST.ValueNumeric;
                DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency := EdVlrFrete.ValueNumeric;
                DMENTRADA.TPedC.FieldByName('VLROUTROS').AsCurrency := EdOutrasDespesas.ValueNumeric;
                DMENTRADA.TPedC.FieldByName('VLRIPI').AsCurrency := EdVlrIpi.ValueNumeric;

                DMENTRADA.TPedC.Post;

                DMENTRADA.TFiscPC.Close;
                DMENTRADA.TFiscPC.SQL.Clear;
                DMENTRADA.TFiscPC.SQL.Add(' Select * from docfis where docfis.cod_pedido=:Codigo ');
                DMENTRADA.TFiscPC.ParamByName('Codigo').AsInteger := XCod_Pedido;
                DMENTRADA.TFiscPC.Open;
                If DMENTRADA.TFiscPC.IsEmpty Then
                    InserReg(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFISC') //INSERE NOVO DOCUMENTO FISCAL
                Else
                    DMENTRADA.TFiscPC.Edit;

               //Marca no fiscal caso seja uma nota de emissão propria, se for uma nota de devolução é emissão propria da empresa
                If FMenu.XNotaEntrada = True Then
                    DMENTRADA.TFiscPC.FieldByName('EMISSAOPROPRIA').AsString := '1'
                Else
                    DMENTRADA.TFiscPC.FieldByName('EMISSAOPROPRIA').AsString := '0';

                XTabFiscal.FieldByName('NUMDOCFIS').AsString := EdNumeroFiscal.Text;
                XTabFiscal.FieldByName('NFECHAVE').AsString := XChaveFiscalNFeXml; //Jônatas 26/07/2013 - Grava a chave da NFe
                XTabFiscal.FieldByName('TIPODOCFIS').AsString := '3'; //Jônatas 01/08/2013 - Inserir o tipo de documento fiscal(3=NFe)
				 If FMenu.xSerieNfe='' Then
                	FMenu.xSerieNfe:='1';
                XTabFiscal.FieldByName('SERIE').AsString := FMenu.xSerieNfe; //'1';
                if XEmiteNFCe then
                	XTabFiscal.FieldByName('MODELONF').AsString := '65'
                else
                	XTabFiscal.FieldByName('MODELONF').AsString := '55';
                XTabFiscal.FieldByName('numdocfiscint').AsInteger := EdNumeroFiscal.ValueInteger;
                XTabFiscal.FieldByName('COD_PEDIDO').AsInteger := XCod_Pedido;
                XTabFiscal.FieldByName('obs').AsString := RemoveQuebraLinha(TiraAcentos(MDadosAdicionais.Text));
            End;

            If XTipo = 'PEDV'
                Then Begin
                DMSAIDA.TPedV.Edit;
               //Efetua controles para marcações de tipo de impressão
                If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') Then
                Begin
                    DMSAIDA.TPedV.FieldByName('FISCO').AsString := 'ECF';
                End
                Else Begin
                	if XEmiteNFCe then
                    	DMSAIDA.TPedV.FieldByName('FISCO').AsString := 'NFCe'
                   else
                    	DMSAIDA.TPedV.FieldByName('FISCO').AsString := 'NF';
                End;

                DMSAIDA.TPedV.FieldByName('numfiscal').AsString := EdNumeroFiscal.Text;
                DMSAIDA.TPedV.FieldByName('NUMECF').AsString := XNumECF;
                DMSAIDA.TPedV.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency := EdVlrIcmsST.ValueNumeric;
                DMSAIDA.TPedV.FieldByName('VLRFRETE').AsCurrency := EdVlrFrete.ValueNumeric;
                DMSAIDA.TPedV.FieldByName('VLROUTROS').AsCurrency := EdOutrasDespesas.ValueNumeric;
                DMSAIDA.TPedV.FieldByName('VLRIPI').AsCurrency := EdVlrIpi.ValueNumeric;
                If FMenu.XDevolucao = True Then
                    DMSAIDA.TPedV.FieldByName('TIPO').AsString := 'DEV';
                If FMenu.XRemessaGarantia = True Then
                    DMSAIDA.TPedV.FieldByName('TIPO').AsString := 'GAR';
                If FMenu.XSimplesRemessa = True Then
                    DMSAIDA.TPedV.FieldByName('TIPO').AsString := 'REM';
                If FMenu.XOutrosFisc = True Then
                    DMSAIDA.TPedV.FieldByName('TIPO').AsString := 'OUT';

                DMSAIDA.TPedV.Post;

                DMSAIDA.TFiscPV.Close;
                DMSAIDA.TFiscPV.SQL.Clear;
                DMSAIDA.TFiscPV.SQL.Add('  Select * from docfissaida where docfissaida.cod_pedido=:Codigo ');
                DMSAIDA.TFiscPV.ParamByName('Codigo').AsInteger := XCod_Pedido;
                DMSAIDA.TFiscPV.Open;
                If DMSAIDA.TFiscPV.IsEmpty Then
                    InserReg(DMSAIDA.TFiscPV, 'docfissaida', 'cod_docfisc') //INSERE NOVO DOCUMENTO FISCAL
                Else
                    DMSAIDA.TFiscPV.Edit;
                XTabFiscal.FieldByName('numdocfis').AsString := EdNumeroFiscal.Text;
                XTabFiscal.FieldByName('SERIE').AsString := '1';
                XTabFiscal.FieldByName('numdocfisint').AsString := EdNumeroFiscal.Text;
                XTabFiscal.FieldByName('COD_PEDIDO').AsInteger := XCod_Pedido;
                XTabFiscal.FieldByName('RESERVFISC01').AsString := RemoveQuebraLinha(MReservadosFisco.Text);
                XTabFiscal.FieldByName('dadosad01').AsString := RemoveQuebraLinha(TiraAcentos(MDadosAdicionais.Text));
                If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') Then
                    XTabFiscal.FieldByName('TIPOIMPFISC').AsString := 'NF';
                If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFE')
                	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
               		OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')Then
                    XTabFiscal.FieldByName('TIPOIMPFISC').AsString := 'NFE';
            End;
            If XTipo = 'ORDEM'
                Then Begin
                If Not DMESTOQUE.TSlaveServ.IsEmpty
                    Then Begin
                    XServicoOp := True;
                End;
                DMServ.TOrd.Edit;
                if XEmiteNFCe then
                	DMServ.TOrd.FieldByName('FISCO').AsString := 'NFCe'
                else
                	DMServ.TOrd.FieldByName('FISCO').AsString := 'NF';
                DMServ.TOrd.FieldByName('numfiscal').AsString := EdNumeroFiscal.Text;
                DMServ.TOrd.Post;

                DMServ.TFiscOrd.Close;
                DMServ.TFiscOrd.SQL.Clear;
                DMServ.TFiscOrd.SQL.Add('  Select * from docfisord where docfisord.cod_ordem=:Codigo ');
                DMServ.TFiscOrd.ParamByName('Codigo').AsInteger := XCod_Pedido;
                DMServ.TFiscOrd.Open;
                If DMServ.TFiscOrd.IsEmpty Then
                    InserReg(DMServ.TFiscOrd, 'docfisord', 'cod_docfiscord') //INSERE NOVO DOCUMENTO FISCAL
                Else
                    DMServ.TFiscOrd.Edit;
                XTabFiscal.FieldByName('numdocfis').AsString := EdNumeroFiscal.Text;
                XTabFiscal.FieldByName('SERIE').AsString := '1';
                XTabFiscal.FieldByName('numdocfisint').AsString := EdNumeroFiscal.Text;
                XTabFiscal.FieldByName('COD_ORDEM').AsInteger := XCod_Pedido;
                XTabFiscal.FieldByName('dadosad01').AsString := RemoveQuebraLinha(TiraAcentos(MDadosAdicionais.Text));
                XTabFiscal.FieldByName('VLRTOTSERV').AsCurrency := EdVlrServicos.ValueNumeric;
                XTabFiscal.FieldByName('VLRTOTISS').AsCurrency := EdVlrIss.ValueNumeric;
                XTabFiscal.FieldByName('RESERVFISC01').AsString := RemoveQuebraLinha(MReservadosFisco.Text);
            End;
           //Define Tipo de Operação Fiscal
            If (XTipo = 'PEDV') And (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') Then
            Begin
                XTabFiscal.FieldByName('TIPODOCFIS').AsString := '1'; //ecf
                XTabFiscal.FieldByName('SERIE').AsString := 'ECF';
            End
            Else Begin
                If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF'
                    Then Begin
                    XTabFiscal.FieldByName('TIPODOCFIS').AsString := '2'; //Nota Fiscal Normal
                    XTabFiscal.FieldByName('MODELONF').AsString := '1'; //Nota Fiscal Eletronica
                End;
                If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
                	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
                   	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
                    Then Begin
                    XTabFiscal.FieldByName('TIPODOCFIS').AsString := '3'; //Nota Fiscal Eletronica

                	 if XEmiteNFCe then
                    	XTabFiscal.FieldByName('MODELONF').AsString := '65'
                	 else
                    	XTabFiscal.FieldByName('MODELONF').AsString := '55'; //Nota Fiscal Eletronica
                End;
            End;
            XTabFiscal.FieldByName('NFESERIE').AsString := DMMACS.TEmpresa.FieldByName('NFESERIE').AsString;
            XTabFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger := XCod_Perido_Fiscal;
            XTabFiscal.FieldByName('DTEMISSAO').AsString := EdDtEmissao.Text;
            XTabFiscal.FieldByName('DTENTSAID').AsString := EdDtsaidaEntrada.Text;
            XTabFiscal.FieldByName('HORASAID').AsString := EdHoraSaida.Text;
            XTabFiscal.FieldByName('COD_CFOP').AsInteger := XCod_Cfop1;
            XTabFiscal.FieldByName('COD_CFOP1').AsInteger := XCod_Cfop2;
            XTabFiscal.FieldByName('COD_CFOP2').AsInteger := XCod_Cfop3;
            XTabFiscal.FieldByName('COD_TRANSP').AsInteger := XCod_Transp;
            //Edmar - 18/06/2015 - busca os valores do documento fiscal da propria tela
            //não mais das variavéis auxiliares
            XTabFiscal.FieldByName('BASEICMS').AsCurrency := EdBaseICMS.ValueNumeric;//XVlrBaseIcmsOp;
            XTabFiscal.FieldByName('VLRICMS').AsCurrency := EdVlrIcms.ValueNumeric;//XVlrIcmsOp;
            XTabFiscal.FieldByName('BASCALSUBS').AsCurrency := EdBaseICMSST.ValueNumeric;//XVlrBaseIcmsSt;
            XTabFiscal.FieldByName('VLRICMSUBS').AsCurrency := EdVlrIcmsST.ValueNumeric;//XVlrIcmsSt;
            XTabFiscal.FieldByName('VLRDESCONTO').AsCurrency := EdDesconto.ValueNumeric;
            XTabFiscal.FieldByName('VLRTOTPROD').AsCurrency := EdTotalProdutos.ValueNumeric;
            XTabFiscal.FieldByName('VLRTOTDOCNF').AsCurrency := EdTotalNotaFiscal.ValueNumeric;//XTotalNF;
            XTabFiscal.FieldByName('VALORTOTALTRIBUTA').AsCurrency := XValorTotalAproxTributacaoNacional;
            XTabFiscal.FieldByName('VALORTOTALTRIBUTAESTADUAL').AsCurrency := XValorTotalAproxTributacaoEstadual;            
            XTabFiscal.FieldByName('ALIQUOTATOTALTRIBUTA').AsCurrency := XVlrAliquotaTotTributa;
           //Verifica Caso Especial de Empresa Normal para Fora do estado
           // - 14/04/2009: alterado para a mercescan
            If (Fmenu.XTributaEmpresa = 'NORMAL')
                Then Begin
               //Calcula somente fora do estado
                If XUfOrigem <> XUfDestino
                    Then Begin
                    XTabFiscal.FieldByName('BASEICMS').AsCurrency := EdBaseICMS.ValueNumeric;
                    XTabFiscal.FieldByName('VLRICMS').AsCurrency := EdVlrIcms.ValueNumeric;
                    XTabFiscal.FieldByName('BASCALSUBS').AsCurrency := EdBaseICMSST.ValueNumeric;
                    XTabFiscal.FieldByName('VLRICMSUBS').AsCurrency := EdVlrIcmsST.ValueNumeric;
                    XTabFiscal.FieldByName('VLRTOTDOCNF').AsCurrency := EdTotalNotaFiscal.ValueNumeric;
                End;
            End;
            XTabFiscal.FieldByName('VLRFRETE').AsCurrency := EdVlrFrete.ValueNumeric;
            XTabFiscal.FieldByName('FRETECONTA').AsString := EdFreteConta.Text;
            XTabFiscal.FieldByName('VLRSEG').AsCurrency := EdVlrSeguro.ValueNumeric;
            XTabFiscal.FieldByName('VLRTOTIPI').AsCurrency := XvlrIpi;
            XTabFiscal.FieldByName('VLROUTRASDESP').AsCurrency := EdOutrasDespesas.ValueNumeric;
            If CBFreteNF.Checked = True Then
                XTabFiscal.FieldByName('FRETECOMP').AsString := '1'
            Else
                XTabFiscal.FieldByName('FRETECOMP').AsString := '0';
            XTabFiscal.FieldByName('NUMCONHEC').AsString := EdNumVeiculo.Text;
            XTabFiscal.FieldByName('VLROUTRASDESP').AsCurrency := EdOutrasDespesas.ValueNumeric;
            XTabFiscal.FieldByName('QUANTFRETE').AsCurrency := EdQuantidadeVeiculo.ValueNumeric;
            XTabFiscal.FieldByName('ESPECIEFRETE').AsString := EdEspecieVeiculo.Text;
            XTabFiscal.FieldByName('MARCAFRETE').AsString := EdMarcaVeiculo.Text;
            XTabFiscal.FieldByName('PLACA').AsString := EdPlacaVeiculo.Text;
            XTabFiscal.FieldByName('UFPLACA').AsString := EdUFVeiculo.Text;
            XTabFiscal.FieldByName('PESOBRUTO').AsCurrency := EdPesoBrutoVeiculo.ValueNumeric;
            XTabFiscal.FieldByName('PESOLIQ').AsCurrency := EdPesoLiquidoVeiculo.ValueNumeric;
            XTabFiscal.Post;

            If XTipo = 'PEDC' Then
                DMENTRADA.IBT.CommitRetaining;
            If XTipo = 'PEDV' Then
                DMSAIDA.IBT.CommitRetaining;
            If XTipo = 'ORDEM' Then
                DMServ.IBT.CommitRetaining;

           //IMPRESSÃO NOTA FISCAL
            If (XTipo = 'PEDV') Or (XTipo = 'ORDEM') Or (FMenu.XNotaEntrada = True)
                Then Begin
               //Verifica se o caixa é emitente de nota fiscal
                DMCAIXA.TCaixa.Close;
                DMCAIXA.TCaixa.SQL.Clear;
                DMCAIXA.TCaixa.SQL.Add(' Select * from caixa where caixa.cod_caixa=:codigo ');
                DMCAIXA.TCaixa.ParamByName('codigo').AsString := FMenu.LCODCAIXA.Caption;
                DMCAIXA.TCaixa.Open;
                If Not DMCAIXA.TCaixa.IsEmpty
                    Then Begin
                   //IMPRIME NOTA FISCAL NORMAL
                    If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF')
                        Then Begin
                        If ImpNf = False
                            Then Begin
                            MessageDlg('A Nota Fiscal foi registrada e numerada no sistema, porém a impressão não ocorreu com sucesso!' + #13 + #10 + 'Clique em reimprimir', mtWarning, [mbOK], 0);
                        End;
                    End;
                   //Paulo 04/08/2010:IMPRIME CUPOM FISCAL
                    If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')
                        Then Begin
                        If ImpNf = False
                            Then Begin
                            MessageDlg('A Nota Fiscal foi registrada e numerada no sistema, porém a impressão não ocorreu com sucesso!' + #13 + #10 + 'Clique em reimprimir', mtWarning, [mbOK], 0);
                        End;
                    End;
                    If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
                    	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
                    		OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
                        Then Begin
                        If ImpNfe = False
                            Then Begin
                            MessageDlg('A Nota Fiscal foi registrada e numerada no sistema, porém a impressão não ocorreu com sucesso!' + #13 + #10 + 'Clique em reimprimir', mtWarning, [mbOK], 0);
                        End;
                    End;
                End;
            End;
            EdChaveNFE.Text := '';    
            Close;
        Except
            Mensagem('OPÇÃO BLOQUEADA', 'Erro ao gravar a Nota Fiscal. Reinicie o aplicativo', '', 1, 1, False, 'a');
        End;
    End
    Else Begin
        Mensagem('OPÇÃO BLOQUEADA', 'O Sistema não pode salvar os dados fiscais com validação negativa. Verifique o roda-pé em vermelho', '', 1, 1, False, 'a');
    End;
end;

function TFPadraoFiscal.enviaNfse: Boolean;
var
xDadAdc, xDadAdcImp: string;
xI: integer;
xValorTributacao:Real;
begin
    if xValidado then
    begin       
    if FMenu.TIPOREL <> 'NFSE' then
    begin
         Try
           //Paulo 17/04/2012: Salva dados no docfisord
           DMServ.TFiscOrd.Close;
           DMServ.TFiscOrd.SQL.Clear;
           DMServ.TFiscOrd.SQL.Add('  Select * from docfisord where docfisord.cod_ordem=:Codigo ');
           DMServ.TFiscOrd.ParamByName('Codigo').AsInteger := XCod_Pedido;
           DMServ.TFiscOrd.Open;
           If DMServ.TFiscOrd.IsEmpty Then
               InserReg(DMServ.TFiscOrd, 'docfisord', 'cod_docfiscord') //INSERE NOVO DOCUMENTO FISCAL
           Else
               DMServ.TFiscOrd.Edit;

           //XTabFiscal.FieldByName('numdocfis').AsString := EdNumeroFiscal.Text;
           XTabFiscal.FieldByName('SERIE').AsString := '1';
           XTabFiscal.FieldByName('NUMDOCANT').AsString := 'NFSE';
           XTabFiscal.FieldByName('numdocfisint').AsString := EdNumeroFiscal.Text;
           XTabFiscal.FieldByName('COD_ORDEM').AsInteger := XCod_Pedido;
			XTabFiscal.FieldByName('VLRTOTSERV').AsCurrency := xValorTotalServico;
           XTabFiscal.FieldByName('VLRTOTISS').AsCurrency := EdVlrIss.ValueNumeric;
           XTabFiscal.FieldByName('VLRTOTDOCNF').AsCurrency := EdTotalNotaFiscal.ValueNumeric;
           XTabFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger := XCod_Perido_Fiscal;
           XTabFiscal.FieldByName('DTEMISSAO').AsString := EdDtEmissao.Text;
           XTabFiscal.FieldByName('DTENTSAID').AsString := EdDtsaidaEntrada.Text;
           XTabFiscal.FieldByName('HORASAID').AsString := EdHoraSaida.Text;
           XTabFiscal.FieldByName('DADOSAD01').AsString := RemoveQuebraLinha(TiraAcentos(MDadosAdicionais.Text));
           XTabFiscal.FieldByName('NFSE_STATUSGERAL').AsString := '3';//atribui status geral Nfse (3 - erro, 1 - enviada)
           if cbRetIss.Text = 'SIM' THEN//Edmar - 20/12/2013 - Testa se deve ou não reter o ISS
               XTabFiscal.FieldByName('RETER_ISS').AsString := '1'
           else
               XTabFiscal.FieldByName('RETER_ISS').AsString := '2';

           //Edmar - 02/05/2014 - Faz o calculo referente ao valor aproximado dos tributos da nfse
			xValorTributacao := (EdVlrServicos.ValueNumeric * DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTANFSE').AsCurrency) / 100;
           xDadAdcImp := 'Valor Aproximado da Tributação de '+DMMACS.TEmpresa.FieldByName('VALORTOTALTRIBUTANFSE').AsString+'%. R$ '+FormatFloat('######0.00', xValorTributacao);

           XTabFiscal.FieldByName('IMPOSTONFSE').AsString := xDadAdcImp;
           XTabFiscal.Post;
           DMServ.TOrd.Edit;
           DMServ.TOrd.FieldByName('STATUSNFSE').AsString := '3';
           DMServ.TOrd.Post;

           DMServ.IBT.CommitRetaining;
         Except
           DMServ.IBT.RollbackRetaining;
         End;
    end;
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

    FMzrNFSe := TFMzrNFSe.Create(FMzrNFSe); //cria o formulario de transmissão da Nfe

	 if xDadAdcImp = '' then
    begin
    	XTabFiscal.Open;
       xDadAdcImp := XTabFiscal.FieldByName('IMPOSTONFSE').AsString;
    end;

    XSetCodigoDestinatario := DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;
    XSetCodigoPedido := XCod_Pedido;
    FMzrNFSe.Inicia(StrToInt(EdNumeroFiscal.Text), DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger, XCod_Pedido, LPeriodoFiscal.Caption, xValorTotalServico, EdVlrServicos.ValueNumeric, xValorTotalServico, xDadAdcImp, xDadAdc, 'IMP');
	 FMzrNFSe.ShowModal;
    Close;
  end
  else
  	Mensagem('OPÇÃO BLOQUEADA', 'O Sistema não pode salvar os dados fiscais com validação negativa. Verifique o roda-pé em vermelho', '', 1, 1, False, 'A');
end;

procedure TFPadraoFiscal.cbRetIssExit(Sender: TObject);
begin
  inherited;
    If cbRetIss.Text='SIM' Then
       EdVlrServicos.ValueNumeric := DMServ.tOrd.FieldByName('totserv').AsCurrency - EdVlrIss.ValueNumeric //xValorTotalServico - EdVlrIss.ValueNumeric
    Else
       EdVlrServicos.ValueNumeric := DMServ.tOrd.FieldByName('totserv').AsCurrency;//xValorTotalServico;
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
		Mensagem(' A V I S O ', 'Não existe nenhum serviço marcado como padrão. Verifique.', '', 1, 1, False, 'a');
   
  try
  DMESTOQUE.TSlaveServ.First;
  
  while not DMESTOQUE.TSlaveServ.Eof do
  begin
  	DMServ.Alx.Close;
  	DMServ.Alx.SQL.Clear;
  	DMServ.Alx.SQL.Add('update despadic set despadic.nfse_codservico = :codser where despadic.cod_despadic = :coddesp');
  	DMServ.alx.ParamByName('codser').AsString := xServicoPadrao;
  	DMServ.Alx.ParamByName('coddesp').AsString := DMESTOQUE.TSlaveServ.fieldbyname('CodigoDespesa').AsString;

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
       DMServ.TAlx2.SQL.Add(' select email.email, pessoa.emailpadrao from ordem ');
       DMServ.TAlx2.SQL.Add(' left join cliente on cliente.cod_cliente = ordem.cod_cliente ');
       DMServ.TAlx2.SQL.Add(' left join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa ');
       DMServ.TAlx2.SQL.Add(' left join email on email.cod_pessoa = pessoa.cod_pessoa ');
       DMServ.TAlx2.SQL.Add(' where ordem.cod_ordem = :ORDEM ');
       DMServ.TAlx2.ParamByName('ordem').AsInteger := XCod_Pedido;
       DMServ.TAlx2.Open;

       if (DMServ.TAlx2.FieldByName('email').AsString = '') and (DMServ.TAlx2.FieldByName('emailpadrao').AsString = '') then
       	Result := false;
   end;
end;
function TFPadraoFiscal.ValidaDevolucao: Boolean;
begin
	Result := True;

   //Edmar - 12/03/2015 - se a nf for de devolução
	if {FMenu.XOutrosEnt OR} FMenu.XDevolucao then
   begin 
   	{EdChaveNFE.Visible := True;
       btnInsereChave.Visible := True;}
       PChaveAcesso.Visible := True;

       //Edmar - 18/03/2015 - busca a chave de acesso da devolução pelo pedido de venda, se houver
		if {(FMenu.XDevolucao) AND }(XTipo = 'PEDV') then
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
       end;

       //busca a chave de acesso da devolução pelo pedido de compra, se houver
       if {(FMenu.XOutrosEnt) AND }(XTipo = 'PEDC') then
       begin
       	if (EdChaveNFE.Text =  '') or (EdChaveNFE.Text =  '0') then//apenas se a chave não foi selecionada
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
               if (EdChaveNFE.Text =  '') or (EdChaveNFE.Text =  '0') then
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
           if not FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'COD_PEDVENDA', DMENTRADA.TAlx.FieldByName('COD_PK_DEV').AsString, '') AND
           		not FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', DMENTRADA.TAlx.FieldByName('COD_PK_DEV').AsString, '') then
           begin
               //printa mensagem no rodapé e retorna falso
               RegistraFalha('  Pedido: A devolução não possuí um pedido de venda ou ordem de serviço referenciado.');
               Result := False;
           end;
       end;

       //verifica se a chave de acesso de devolução está selecionada
       if (EdChaveNFE.Text = '') OR (EdChaveNFE.Text = '0') then
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
	xXChave: String;
begin
  inherited;
	EdChaveNFE.Text := '';
   //Edmar - 18/03/2015 - abre janela para informar a chave de devolução
	InputQuery('Chave NF-e', 'Por favor, informe a chave de acesso da NF-e que gerou esta devolução.', xXChave);

   EdChaveNFE.Text := xXChave;
   FMenu.XChaveNFe := xXChave;
   
   OnActivate(sender);
end;

function TFPadraoFiscal.RateioFrete: Boolean;
var
	XValorTotalProdutos: Real;
begin
	Result := True;   
	{if EdVlrFrete.ValueNumeric > 0 then
   begin }
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

           EscreveItensProduto;
       except
       	MDO.Transac.RollbackRetaining;
       	Result := False;
   	end;
   //end;
end;

function TFPadraoFiscal.RateioOutDespesas: Boolean;
var
	XValorTotalProdutos: Real;
begin
	Result := True;   
	{if EdOutrasDespesas.ValueNumeric > 0 then
   begin }
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
           MDO.Query.ParamByName('OUTDESP').AsCurrency := EdOutrasDespesas.ValueNumeric;
           MDO.Query.ParamByName('PEDIDO').AsInteger := XCod_Pedido;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;

           EscreveItensProduto;
       except
       	MDO.Transac.RollbackRetaining;
       	Result := False;
   	end;
   //end;
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
   	cbConsumidorFinal.Checked := False
   else
   	if UpperCase(cbTipoDocumento.Text) = 'NFC-E' then
			cbConsumidorFinal.Checked := True;
end;

procedure TFPadraoFiscal.cbConsumidorFinalClick(Sender: TObject);
begin
  inherited;
	//Edmar - 10/06/2015 - Ao mudar o check box muda também o texto
	if not cbConsumidorFinal.Checked then
		cbTipoDocumento.Text := 'NF-e'
   else
   	cbTipoDocumento.Text := 'NFC-e';

   XEmiteNFCe := cbConsumidorFinal.Checked;

   if XEmiteNFCe then
   	MessageDlg('Essa venda irá gerar uma NFC-e!', mtWarning, [mbOK], 0)
   else
   	MessageDlg('Essa venda irá gerar uma NF-e!', mtWarning, [mbOK], 0);
       
   AtualizaClienteConsumidor;
end;

function TFPadraoFiscal.AtualizaClienteConsumidor: Boolean;
begin
	//Edmar - 11/06/2015 - Só atualiza o tipo do cliente caso a operação seja PV ou OS
   if (XTipo = 'PEDV') OR (XTipo = 'ORDEM') then
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
       	On E : Exception do
           begin
           	ShowMessage('Não foi possível atualizar o Cliente. Reinicie o sistema e tente novamente.'+#13#10+E.Message);
           	MDO.Transac.RollbackRetaining;
           end;
   	end;
	end;
end;

End.

