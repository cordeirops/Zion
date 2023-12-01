unit UOrdemLoca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  ExtCtrls, UFrmBusca, Mask, ColorMaskEdit, DB, EditFloat, ColorEditFloat,
  ComCtrls, DBCtrls, FashionPanel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxControls, cxContainer, cxEdit, cxGroupBox, Menus, FR_DSet, FR_DBSet,
  FR_Class, QRCtrls, QuickRpt, TFlatButtonUnit, frxClass, frxDBSet,
  TFlatRadioButtonUnit;

type
  TFOrdemLoca = class(TFCadPadrao)
    FrmCliente: TFrmBusca;
    EdObsFinanceira: TEdit;
    Label22: TLabel;
    EdData: TColorMaskEdit;
    MObs: TMemo;
    LTextoBusca: TLabel;
    FrmVendedor: TFrmBusca;
    ColorMaskEdit1: TColorMaskEdit;
    ColorMaskEdit2: TColorMaskEdit;
    Shape4: TShape;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    PAcessorios: TPanel;
    Label4: TLabel;
    DBGAcessorios: TDBGrid;
    EdBuscaAcessorio: TEdit;
    EdQuantAcessorio: TColorEditFloat;
    Label5: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    LAcessorio: TLabel;
    PListaClientes: TPanel;
    DBGListaCliente: TDBGrid;
    EdTabela_TabelaFaixa: TEdit;
    BtnTabelaPreco: TBitBtn;
    PTabelaPreco: TPanel;
    DBGTabelaPreco: TDBGrid;
    EdNumero: TEdit;
    Label13: TLabel;
    cxGroupBox1: TcxGroupBox;
    CBFILTRO: TcxComboBox;
    cxGroupBox2: TcxGroupBox;
    CBORDEM: TcxComboBox;
    GBPLACA: TcxGroupBox;
    EDNum: TFlatEdit;
    EDCliente1: TFlatEdit;
    Label15: TLabel;
    EdDescProdutos: TColorEditFloat;
    Label14: TLabel;
    EdValorProdutos: TColorEditFloat;
    Label16: TLabel;
    EdValorOrd2: TColorEditFloat;
    PListaAcessorios: TPanel;
    DBGListaAcessorios: TDBGrid;
    Label7: TLabel;
    EdResponsavelRetirada: TEdit;
    FrmFormaPagamento: TFrmBusca;
    FrmObra: TFrmBusca;
    Shape6: TShape;
    Fsrel: TfrReport;
    FSDSRel: TfrDBDataSet;
    PmRelatorio: TPopupMenu;
    CompdeAbertura1: TMenuItem;
    FSDSEquipamento: TfrDBDataSet;
    PopupMenu1: TPopupMenu;
    PFinanceiro: TPanel;
    PBanco: TPanel;
    Label115: TLabel;
    DBGCTA: TDBGrid;
    FPFinanceiro: TFashionPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    BtnMoedaOK: TBitBtn;
    BtnMoedaCancelar: TBitBtn;
    CBPagamento: TComboBox;
    FrmFormPag: TFrmBusca;
    DBDATAENTREGA: TColorMaskEdit;
    DBHORAENTREGA: TColorMaskEdit;
    FrmContaServ: TFrmBusca;
    Panel7: TPanel;
    Label29: TLabel;
    EdDtFech: TColorMaskEdit;
    BtnCancelamentos: TBitBtn;
    Shape7: TShape;
    PItensdeRetorno: TPanel;
    DBGItensdeRetorno: TDBGrid;
    Shape10: TShape;
    Label25: TLabel;
    Shape11: TShape;
    Label30: TLabel;
    Panel2: TPanel;
    Shape8: TShape;
    Label19: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    EdDtInicialRetornoFiltro: TDateTimePicker;
    EdDtFinalRetornoFiltro: TDateTimePicker;
    CbFiltroDataItensRetorno: TCheckBox;
    Panel3: TPanel;
    Shape9: TShape;
    Label23: TLabel;
    Label24: TLabel;
    EdContrintFiltroItemRetorno: TFlatEdit;
    EdDescricaoFiltroItemRetorno: TFlatEdit;
    Panel5: TPanel;
    Shape12: TShape;
    Label31: TLabel;
    Shape13: TShape;
    Label32: TLabel;
    Shape14: TShape;
    Label33: TLabel;
    Shape15: TShape;
    Label34: TLabel;
    FSDSacessorios: TfrDBDataSet;
    GroupBox2: TGroupBox;
    EdLocCodCli: TFlatEdit;
    EdLocNomeCli: TFlatEdit;
    CBImpRecibo: TCheckBox;
    QRReciboLocacao: TQuickRep;
    QRBand6: TQRBand;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRLabel84: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRShape38: TQRShape;
    QRLabel88: TQRLabel;
    QRShape39: TQRShape;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRDBText64: TQRDBText;
    QRLabel95: TQRLabel;
    QRDBText65: TQRDBText;
    QRLabel96: TQRLabel;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRLabel97: TQRLabel;
    QRDBText68: TQRDBText;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QrlVlrImportancia: TQRLabel;
    QRVLRSimples: TQRLabel;
    QRDBText69: TQRDBText;
    QRRDocumento: TQRRichText;
    QRDataRec1: TQRLabel;
    AdicionarAcessrio1: TMenuItem;
    BtCancelaBaixaAdiantamento: TBitBtn;
    BtBaixaAdiantamento: TBitBtn;
    EdVlrAdiantamento: TColorEditFloat;
    Label37: TLabel;
    Label38: TLabel;
    lbSaldo: TLabel;
    Produtoslocados1: TMenuItem;
    Label39: TLabel;
    EdTxEntrega: TColorEditFloat;
    Label40: TLabel;
    btnExpedicao: TBitBtn;
    Button4: TButton;
    CompdeFechamento1: TMenuItem;
    FSFORMPAG: TfrDBDataSet;
    EdBuscaProduto: TEdit;
    Label3: TLabel;
    DbFaixaPreco: TDBLookupComboBox;
    Label10: TLabel;
    EdVlrUnitProd: TColorEditFloat;
    LEstoqueAtual: TLabel;
    LProduto: TLabel;
    pData: TPanel;
    Label8: TLabel;
    Label35: TLabel;
    Label9: TLabel;
    Label41: TLabel;
    EdDtSaida: TDateTimePicker;
    EdHrSaida: TMaskEdit;
    EdDtRetorno: TDateTimePicker;
    edHrRetorno: TMaskEdit;
    pQtdeRetorno: TPanel;
    Label43: TLabel;
    Label44: TLabel;
    edQtdeRetorno: TColorEditFloat;
    edQtdeConsumida: TColorEditFloat;
    Label11: TLabel;
    CBItemRetiradoEstoque: TCheckBox;
    BtnInsertProd: TBitBtn;
    BtnDeleteProd: TBitBtn;
    DBGProdutos: TDBGrid;
    EdVlrTotProd: TColorEditFloat;
    Label21: TLabel;
    pDias: TPanel;
    Label36: TLabel;
    EdNumeroDias: TColorEditFloat;
    pQtdeSaida: TPanel;
    Label42: TLabel;
    edQtdeSaida: TColorEditFloat;
    PListaProdutos: TPanel;
    DBGListaProdutos: TDBGrid;
    pHrSaida: TPanel;
    pItensProduto: TPanel;
    edQtdeHrSaida: TColorEditFloat;
    Label45: TLabel;
    pHrRetorno: TPanel;
    edQtdeHrRetorno: TColorEditFloat;
    Label46: TLabel;
    edQtdeHrConsumidas: TColorEditFloat;
    Label47: TLabel;
    cbControleHora: TCheckBox;
    EdQuantProd: TColorEditFloat;
    Label6: TLabel;
    PAdicionaAcessorios: TPanel;
    DBGAcessoriosReservados: TDBGrid;
    PAdicionaQuantidadeReserva: TPanel;
    Label12: TLabel;
    EdQuantidadeAcessorioInserido: TFloatEdit;
    Button3: TButton;
    Button1: TButton;
    Button2: TButton;
    frxRel: TfrxReport;
    ContratoLocao1: TMenuItem;
    frxEmpresa: TfrxDBDataset;
    frxCliente: TfrxDBDataset;
    frxOrdem: TfrxDBDataset;
    frxItens: TfrxDBDataset;
    frxCidade: TfrxDBDataset;
    frxLoja: TfrxDBDataset;
    frxProdPromissoria: TfrxDBDataset;
    frxFinanceiro: TfrxDBDataset;
    cxGroupBox3: TcxGroupBox;
    CbFiltroPagamentos: TcxComboBox;
    frxTmp: TfrxDBDataset;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    Label48: TLabel;
    Shape5: TShape;
    pInfoRetorno: TPanel;
    lProdutoRetorno: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    btnCancelarAtu: TBitBtn;
    btnAtualizar: TBitBtn;
    edVlrUnitAtu: TColorEditFloat;
    edVlrTotalAtu: TColorEditFloat;
    DBLookupComboBox1: TDBLookupComboBox;
    Label57: TLabel;
    pCtrlHoras: TPanel;
    Label58: TLabel;
    edQtdeHoraSaidaAtu: TColorEditFloat;
    pCtrlHoras2: TPanel;
    edQtdeHoraRetornoAtu: TColorEditFloat;
    Label59: TLabel;
    edQtdeHoraConsumidaAtu: TColorEditFloat;
    Label60: TLabel;
    pDiasQtde: TPanel;
    Label51: TLabel;
    edDiasAtu: TColorEditFloat;
    edQtdeAtu: TColorEditFloat;
    Label50: TLabel;
    pCtrlDtHora: TPanel;
    Label53: TLabel;
    edDtSaidaAtu: TDateTimePicker;
    Label54: TLabel;
    edHrSaidaAtu: TMaskEdit;
    Label55: TLabel;
    Label56: TLabel;
    edDtRetornoAtu: TDateTimePicker;
    edHrRetornoAtu: TMaskEdit;
    pQtdeSaidaAtu: TPanel;
    Label61: TLabel;
    edQtdeSaidaAtu: TColorEditFloat;
    pCtrlDesgaste: TPanel;
    Label62: TLabel;
    Label63: TLabel;
    edQtdeRetornoAtu: TColorEditFloat;
    edQtdeConsumidaAtu: TColorEditFloat;
    btnLiberar: TBitBtn;
    BtnFechaPed: TBitBtn;
    pmCancelamentos: TPopupMenu;
    CancelarFechamento1: TMenuItem;
    CancelarFatura1: TMenuItem;
    cxGroupBox4: TcxGroupBox;
    rbTodas: TFlatRadioButton;
    rbSim: TFlatRadioButton;
    rbNao: TFlatRadioButton;
    BtnOrdemdeServico: TBitBtn;
    BtnItensretornados: TBitBtn;
    Label64: TLabel;
    cbBonificacao: TCheckBox;
    cbCancelamento: TCheckBox;
    RightClickMenu: TPopupMenu;
    mnuConsultasdeNFe: TMenuItem;
    mnuVisualizarDanfe: TMenuItem;
    mnuCancelamentodeNFE: TMenuItem;
    cbNfse: TCheckBox;
    mnuImpNfse: TMenuItem;
    EdVlrIss: TColorEditFloat;
    Label65: TLabel;
    cbRtIss: TCheckBox;
    RecuperadadosdaNFSe1: TMenuItem;
    BtnSelecionaOrdem: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FrmClienteBTNOPENClick(Sender: TObject);
    procedure FrmClienteEdDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmClienteEdDescricaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmVendedorBTNOPENClick(Sender: TObject);
    procedure FrmVendedorEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdBuscaProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdBuscaProdutoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGListaProdutosDblClick(Sender: TObject);
    procedure DBGListaProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure DbFaixaPrecoExit(Sender: TObject);
    procedure BtnTabelaPrecoClick(Sender: TObject);
    procedure DBGTabelaPrecoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDtSaidaExit(Sender: TObject);
    procedure EdVlrUnitProdExit(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure DBGAcessoriosReservadosDblClick(Sender: TObject);
    procedure EdQuantidadeAcessorioInseridoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure DBGAcessoriosReservadosKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnDeleteProdClick(Sender: TObject);
    procedure EdBuscaAcessorioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdBuscaAcessorioKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FrmFormaPagamentoBTNOPENClick(Sender: TObject);
    procedure FrmFormaPagamentoEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmObraBTNOPENClick(Sender: TObject);
    procedure FrmObraEDCodigoExit(Sender: TObject);
    procedure CompdeAbertura1Click(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure DBGProdutosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure MarcarcomoRetirado1Click(Sender: TObject);
    procedure DesmarcarcomoRetirado1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CBFILTROExit(Sender: TObject);
    procedure CBFILTROClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure CBORDEMClick(Sender: TObject);
    procedure CBORDEMExit(Sender: TObject);
    procedure EDNumEnter(Sender: TObject);
    procedure EDNumExit(Sender: TObject);
    procedure EDCliente1Enter(Sender: TObject);
    procedure EDCliente1Exit(Sender: TObject);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure FrmFormPagBTNOPENClick(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure PConsultaExit(Sender: TObject);
    procedure BtnCancelamentosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnItensretornadosClick(Sender: TObject);
    procedure BtnOrdemdeServicoClick(Sender: TObject);
    procedure EdDtInicialRetornoFiltroExit(Sender: TObject);
    procedure EdDtFinalRetornoFiltroExit(Sender: TObject);
    procedure CbFiltroDataItensRetornoExit(Sender: TObject);
    procedure EdDescricaoFiltroItemRetornoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdContrintFiltroItemRetornoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGItensdeRetornoDblClick(Sender: TObject);
    procedure DBGItensdeRetornoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGItensdeRetornoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdLocCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdLocNomeCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdLocNomeCliEnter(Sender: TObject);
    procedure EdLocCodCliEnter(Sender: TObject);
    procedure EdLocCodCliExit(Sender: TObject);
    procedure EdLocNomeCliExit(Sender: TObject);
    procedure EDCliente1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure AdicionarAcessrio1Click(Sender: TObject);
    procedure DBGProdutosDblClick(Sender: TObject);
    procedure EdDescProdutosExit(Sender: TObject);
    procedure EdDtRetornoExit(Sender: TObject);
    procedure EdValorOrd2Exit(Sender: TObject);
    procedure BtBaixaAdiantamentoClick(Sender: TObject);
    procedure BtCancelaBaixaAdiantamentoClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Produtoslocados1Click(Sender: TObject);
    procedure EdTxEntregaExit(Sender: TObject);
    procedure btnExpedicaoClick(Sender: TObject);
    procedure CompdeFechamento1Click(Sender: TObject);
    procedure edHrRetornoExit(Sender: TObject);
    procedure EdHrSaidaExit(Sender: TObject);
    procedure edQtdeRetornoExit(Sender: TObject);
    procedure DBGListaClienteDblClick(Sender: TObject);
    procedure DBGListaClienteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbControleHoraClick(Sender: TObject);
    procedure edQtdeHrRetornoExit(Sender: TObject);
    procedure ContratoLocao1Click(Sender: TObject);
    procedure EdBuscaAcessorioEnter(Sender: TObject);
    procedure DBGListaAcessoriosDblClick(Sender: TObject);
    procedure DBGListaAcessoriosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdBuscaAcessorioExit(Sender: TObject);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure CbFiltroPagamentosClick(Sender: TObject);
    procedure CbFiltroPagamentosExit(Sender: TObject);
    procedure FrmFormPagBTNMINUSClick(Sender: TObject);
    procedure btnCancelarAtuClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure edQtdeAtuExit(Sender: TObject);
    procedure edDtRetornoAtuExit(Sender: TObject);
    procedure edHrRetornoAtuExit(Sender: TObject);
    procedure edDtSaidaAtuExit(Sender: TObject);
    procedure edQtdeHoraRetornoAtuExit(Sender: TObject);
    procedure edQtdeRetornoAtuExit(Sender: TObject);
    procedure btnLiberarClick(Sender: TObject);
    procedure CancelarFechamento1Click(Sender: TObject);
    procedure CancelarFatura1Click(Sender: TObject);
    procedure rbTodasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGTabelaPrecoDblClick(Sender: TObject);
    procedure DbFaixaPrecoDropDown(Sender: TObject);
    procedure DBLookupComboBox1DropDown(Sender: TObject);
    procedure edVlrUnitAtuExit(Sender: TObject);
    procedure FrmContaServBTNOPENClick(Sender: TObject);
    procedure cbBonificacaoClick(Sender: TObject);
    procedure cbCancelamentoClick(Sender: TObject);
    Function AbreFiscal: Boolean;
    procedure mnuImpNfseClick(Sender: TObject);
    function EfetuaCalculoISS: Boolean;
    Function RetemIss: Boolean;
    procedure mnuVisualizarDanfeClick(Sender: TObject);
    procedure mnuCancelamentodeNFEClick(Sender: TObject);
    procedure RecuperadadosdaNFSe1Click(Sender: TObject);
    procedure BtnSelecionaOrdemClick(Sender: TObject);

  private
    { Private declarations }
    xCodTabFaixaPreco:string;
    xCtrlDesgaste: Boolean;
  public
    { Public declarations }
    //Seleciona Cliente e fecha lista
    Function SelecionaClienteLista : Boolean;
    //Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
    Procedure EscreveLabelsPROD;
    //Limpa os edits de produtos
    Procedure LimpaLabelsPROD;
    //Seleciona Informações referente a faixa de preço de locação selecionada
    Procedure SelecInfoFaixaPreco;
    //Seleciona Tabela de Preços para o cliente
    Function SelecionaTabelaPrecoCliente : Boolean;
    //Seleciona acessorios marcados para inserção
    Procedure FiltraAcessoriosParaInsercao;
    //Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
    Function RetornaNumPed: Integer;
    //Gera Nova Ordem
    Function AbreNovaOrdem: Boolean;
    //Grava Ordem
    Function GravaOrdem: Boolean;
    //Função para retornar dados de filtro Ordem de Serviços
    Procedure FiltraOrdem(XSql: String);
    //Filtra Equipamentos e Acessórios locados
    Procedure FiltraSlave;
    //Filtra Itens de retorno
    Procedure FiltraItensRetorno;
    //Função Responsável por aplicar Descontos nos produtos tendo como base o campo em percentual
    Function AplicaDescProdBasePercento: Boolean;
    //Busca/Consulta dados de cabeçalho da Ordem
    Function ConsultaOrdem: Boolean;
    //Zera marcação de acessorios
    Procedure ZeraMarcaAcessorios;
    //Limpa os edits de acessorios
    Procedure LimpaLabelsAces;
    //Filtra as tabelas e escreve em edits e labels as informações dos acessorios selecionado
    Procedure EscreveLabelsACES;
    //Fecha Ordem(joga no financeiro)
    Function FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
    //Funcção utilizada para controlar e fetuar a fatura de OS
	 Procedure FaturaOSMensal(XCodigoFaturaMensal:Integer);
    //Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
    Function CancelLanOrd(CodPedido: String):Boolean;
    //Paulo 15/02/2012: Imprime recibo para ordem locação
	 Procedure ImpRecibo(CODORDEM:INTEGER);
    //Função Para calcular desconto da ordem
    Function EfetuaDesconto(OrigemDesconto: String; TipoDesconto: String): Boolean;
    //Função para calcular o valor total do item a ser inserido
    Function CalculaTotalItem: Boolean;
    //Edmar - 24/06/2014 - procedure usada para esconder ou mostrar controle de desgaste e datas
    Procedure EscondeMostraPaineis;
    //Alex 19/11/2014 - Função para popular a combobox de filtro com informações de forma de pagamento
	 Function PopulaFormasdePagamento: Boolean;
    //Edmar - 30/01/2015 - Procedimento usado para calcular os totais do itens no momento do retorno
    //onde o mesmo deve ser atualido com as informações de retorno
    Procedure CalculaTotalItemRetorno;
    //função auxiliar para gerar o log da retirada da ordem
    function AdicionaLogOperacao(xOperacao: String; XORDEM: String): Boolean;
    //
    procedure FecharOrdemDeServico;
    procedure InsereAcessorios(xCodOrdem, xCodEstoque : Integer);
    Function validCurrency(const s: string) : boolean;
    procedure preparaDespesas(numOs : Integer);


  end;
  

var
  FOrdemLoca: TFOrdemLoca;
  XCodOrdem, XCodCliente, XCodVendedor, XCodTabela, XCodFaixa: Integer;
  XCodTmpEstoque, XCodTmpServico: String;
  XValorOrdem,XSubTotProdutos: Real;
  XCOD_ACESSORIO: Integer;
  XCOD_OBRA, XCOD_CONTA, XCOD_CONTASERV: Integer;
  xcod_chequerec: sTRING;
  XFiltroItensretorno: String;
  XVLRTPROD, XTotalDesconto: Real;
  XQtdDiasTabela: Integer;//Quantidade de dias na faixa de tabela selecionada
  XVlrMedioDiaTabela: Real;//Valor medio pago ao dia de locação para a tabela selecionada
  XVLRADIANT: Real;
  XCOD_ITEM_PROD_ORD: Integer;
  xAliquotaIss: Real;

implementation

uses UCliente, UDMPessoa, Alxor32, UFuncionario, UProduto, UDMEstoque,
  UDMMacs, UDmServ, UMDO, UMenu, AlxMessage, USenha, UPadrao,
  UCadAcessorios, UFormPag, UDMFinanc, UCadEquipamento, UDMGEOGRAFIA,
  UDMConta, UConsPlncta, UDMCaixa, UDmBanco, UDMEntrada, UDMSaida,
  URelOrdemLocaMensal, URelPadraoped, UExpedicao, UFaturaOrdemMensal, Math,
  UFiscalOrdem, UFServico, UPadraoFiscal, UMzrNfe, UMzrNFSe;

{$R *.dfm}

//Alex 19/11/2014 - Função para popular a combobox de filtro com informações de forma de pagamento
Function TFOrdemLoca.PopulaFormasdePagamento: Boolean;
Begin
	Try
       CbFiltroPagamentos.Properties.Items.Clear;
       CbFiltroPagamentos.Properties.Items.Add('TODAS');
       CbFiltroPagamentos.Properties.Items.Add('MENSAL');
       CbFiltroPagamentos.Text:='TODAS';
       Result:=True;
       DMFINANC.TFormPag.Close;
       DMFINANC.TFormPag.SQL.Clear;
       DMFINANC.TFormPag.SQL.Add('select * from formpag order by formpag.descricao');
       DMFINANC.TFormPag.Open;
       If not DMFINANC.TFormPag.IsEmpty
       Then Begin
           DMFINANC.TFormPag.First;
           While not DMFINANC.TFormPag.Eof do
           Begin
		    	CbFiltroPagamentos.Properties.Items.Add(DMFINANC.TFormPag.FieldByName('descricao').AsString);
               DMFINANC.TFormPag.Next;
           End;
       End;
   Except
   	Result:=False;
   End;
End;

//Função utilizada para controlar e fetuar a fatura de OS
Procedure TFOrdemLoca.FaturaOSMensal(XCodigoFaturaMensal:Integer);
Begin
	Try
       FMenu.XCodSlave:=XCodigoFaturaMensal;
       FMenu.LancAutConta := True;
		AbrirForm(TFFaturaOrdemMensal, FFaturaOrdemMensal, 0);
       DMServ.IBT.CommitRetaining;
       FiltraOrdem('');
   Except
   End;
End;

//Função Para calcular desconto da ordem
Function TFOrdemLoca.EfetuaDesconto(OrigemDesconto: String; TipoDesconto: String): Boolean;
Begin
	//se nao tiver nenhum desconto zerar o desconto de produto
   If DMESTOQUE.TSlave.IsEmpty Then
		EdDescProdutos.ValueNumeric := 0;

	//CALCULA DESCONTOS
   //PRODUTOS
	If (OrigemDesconto='PRODUTO') or (OrigemDesconto='GERAL')
   Then Begin
   	If XVLRTPROD<>0
       Then Begin
           //Efetua desconto somente para serviços
           If TipoDesconto='PERCENTO' Then
               EdValorOrd2.ValueNumeric:=XVLRTPROD-(EdDescProdutos.ValueNumeric*XVLRTPROD)/100
           Else
               EdDescProdutos.ValueNumeric:=((XVLRTPROD-EdValorProdutos.ValueNumeric)*100)/XVLRTPROD;
       End
       Else Begin
			EdValorProdutos.ValueNumeric:=0;
			EdValorProdutos.ValueNumeric:=0;
			EdValorOrd2.ValueNumeric:=0
       End;
   End;
End;

//Seleciona acessorios marcados para inserção
Procedure TFOrdemLoca.FiltraAcessoriosParaInsercao;
Begin
	Try
       DMESTOQUE.TransacEstoque.CommitRetaining;
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' Select subproduto.cod_subproduto,  subproduto.pureza, vwsimilar.contrint, vwsimilar.descricao, vwsimilar.estfisico from vwsimilar ');
       DMESTOQUE.Alx.SQL.Add(' left join subproduto on vwsimilar.cod_subproduto=subproduto.cod_subproduto ');
       DMESTOQUE.Alx.SQL.Add(' where subproduto.usoconsumo=''5'' ');
       DMESTOQUE.Alx.Open;
   Except
   End
End;


//Seleciona Informações referente a faixa de preço de locação selecionada
Procedure TFOrdemLoca.SelecInfoFaixaPreco;
Begin
	Try
       DMMACS.Transaction.CommitRetaining;
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' Select * from tabelafaixapreco ');
       DMMACS.TALX.SQL.Add(' Left join tabela_preco on tabelafaixapreco.cod_tabelapreco = tabela_preco.cod_tabelapreco ');
       DMMACS.TALX.SQL.Add(' left join faixa_preco on tabelafaixapreco.cod_faixapreco = faixa_preco.cod_faixapreco ');
       DMMACS.TALX.SQL.Add(' where (tabelafaixapreco.cod_faixapreco=:FaixaPreco) and (tabelafaixapreco.cod_tabelapreco=:TabelaPreco) and (tabelafaixapreco.cod_estoque=:estoque) ');
       DMMACS.TALX.ParamByName('FaixaPreco').AsInteger:=XCodFaixa;
       DMMACS.TALX.ParamByName('TabelaPreco').AsInteger:=XCodTabela;
       DMMACS.TALX.ParamByName('estoque').AsInteger:=XCOD_ESTOQUE;
       DMMACS.TALX.Open;
       If Not DMMACS.TALX.IsEmpty Then
       begin
           EdVlrUnitProd.ValueNumeric := DMMACS.TALX.FieldByName('preco').AsCurrency;
           edVlrUnitAtu.ValueNumeric := DMMACS.TALX.FieldByName('preco').AsCurrency;
       end
		else begin
           EdVlrUnitProd.ValueNumeric := 0;
           edVlrUnitAtu.ValueNumeric := 0;
       end;

       XQtdDiasTabela:=DMMACS.TALX.FieldByName('QTDDIAS').AsInteger;
       If XQtdDiasTabela>0 Then
       	XVlrMedioDiaTabela:=DMMACS.TALX.FieldByName('PRECO').AsCurrency/XQtdDiasTabela
       Else
			XQtdDiasTabela:=0;

   	//Edmar - 06/01/2014 - Armazena o código correto da tabela de preços
       xCodTabFaixaPreco := DMMACS.TALX.FieldByName('cod_tabelafaixapreco').AsString;
   Except
       EdVlrUnitProd.ValueNumeric:=0;
		XVlrMedioDiaTabela:=0;       
       XQtdDiasTabela:=0;
   End;
End;

//Limpa os edits de produtos
Procedure TFOrdemLoca.LimpaLabelsPROD;
Begin
   XCOD_ESTOQUE:=-1;
   XCodTmpEstoque:='';
   LProduto.Caption:='';
   LEstoqueAtual.Caption:='';
   EdQuantProd.ValueNumeric:=0;
   EdVlrUnitProd.ValueNumeric:=0;
   EdVlrTotProd.ValueNumeric:=0;
   EdDtSaida.Date:=Date();
   EdDtRetorno.Date:=Date();
   DbFaixaPreco.KeyField:='';
   EdHrSaida.Text := '  :  ';   
   edHrRetorno.Text := '  :  ';
   DbFaixaPreco.ListField:='';
   PListaProdutos.Visible:=False;
   CBItemRetiradoEstoque.Checked:=False;
   EdBuscaProduto.Text:='';
   edQtdeSaida.Text := '0,00';
   edQtdeRetorno.Text := '0,00';
   edQtdeConsumida.Text := '0,00';
   edQtdeHrSaida.Text := '0,00';
   edQtdeHrRetorno.Text := '0,00';
   edQtdeHrConsumidas.Text := '0,00';
   cbControleHora.Checked := False; 
End;

//Limpa os edits de acessorios
Procedure TFOrdemLoca.LimpaLabelsAces;
Begin
   XCOD_ACESSORIO:=-1;
   LAcessorio.Caption := '';
   EdBuscaAcessorio.Text := '';
   PListaProdutos.Visible:=False;
End;

//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFOrdemLoca.EscreveLabelsPROD;
Begin
	//Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
		Exit;
   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
   	Exit;
   //Filtra tabela de CST
	If FiltraTabela(DMEstoque.TCST, 'CST', 'COD_CST', DMEstoque.TSubProd.FieldByName('COD_CST').AsString, '')=False Then
   	Exit;
   // por questao de garantia o codigo de estoque do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
   XCOD_ESTOQUE := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;

   EdHrSaida.Text := TimeToStr(Time());

   //Seleciona todas as faixas disponíveis
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add(' Select * from faixa_preco');
   DMESTOQUE.Alx1.Open;
   DbFaixaPreco.ListSource:=DMESTOQUE.DSAlx1;
   DbFaixaPreco.KeyField:='COD_FAIXAPRECO';
   DbFaixaPreco.ListField:='DESCRICAO';

	//Passa os valores do produto selecionado para as labels
   LProduto.Caption:=DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
   LEstoqueAtual.Caption:='Estoque Atual: '+DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString;
   If  DMEstoque.TSubProd.FieldByName('Marca').asstring<>'' Then
       LProduto.Caption:=LProduto.Caption+'     Marca: '+dMEstoque.TSubProd.FieldByName('Marca').asstring;

   xCtrlDesgaste := False;
End;

//Filtra as tabelas e escreve em edits e labels as informações dos acessorios selecionado
Procedure TFOrdemLoca.EscreveLabelsACES;
Begin
	//Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.Alx5.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
		Exit;
   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.Alx5.FieldByName('COD_ESTOQUE').AsString, '')=False Then
   	Exit;
   // por questao de garantia o codigo de estoque do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
   XCOD_ACESSORIO := DMEstoque.Alx5.FieldByName('COD_ESTOQUE').AsInteger;

	//Passa os valores do produto selecionado para as labels
   LAcessorio.Caption:=DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
End;

//Seleciona Tabela de Preços para o cliente
Function TFOrdemLoca.SelecionaTabelaPrecoCliente : Boolean;
Var
	XFlag: Integer;
Begin
   EdTxEntrega.Text := '0,00';
   EdDescProdutos.Text := '0,00';
	Try
       DMPESSOA.TCliente.Close;
       DMPESSOA.TCliente.SQL.Clear;
       DMPESSOA.TCliente.SQL.Add(' Select * from cliente where cliente.cod_cliente=:Codigo ');
       DMPESSOA.TCliente.ParamByName('Codigo').AsInteger:=XCodCliente;
       DMPESSOA.TCliente.Open;
       If not DMPESSOA.TCliente.IsEmpty
       Then Begin
           //Edmar - 11/02/2014 - Atribui desconto padrão do cliente para a OS
           EdDescProdutos.ValueNumeric := DMPESSOA.TCliente.FieldByName('DESCONTO').AsCurrency;

           //Edmar - 11/02/2014 - Verifica se deve ser cobrado taxa de entrega
           if DMPESSOA.TCliente.FieldByName('TAXAENTREGA').AsString = '1' then
           begin
           	EdTxEntrega.Visible := true;
           	Label39.Visible := true;
           end
           else
           begin
  	           	EdTxEntrega.Visible := false;
           	Label39.Visible := false;
           end;

           //Atualiza as tabelas de estoque
           DMESTOQUE.TransacEstoque.CommitRetaining;
           //Seleciona as Tabelas disponiveis
           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add(' Select * from tabela_preco where tabela_preco.cod_tabelapreco=:codigo ');
           DMESTOQUE.Alx.ParamByName('codigo').AsInteger:=DMPESSOA.TCliente.FieldByName('cod_tabpreco').AsInteger;
           DMESTOQUE.Alx.Open;
           If not DMESTOQUE.Alx.IsEmpty
           Then Begin
               XCodTabela:=DMESTOQUE.alx.FieldByName('cod_tabelapreco').asinteger;
               EdTabela_TabelaFaixa.Text:=DMESTOQUE.Alx.FieldByName('descricao').AsString;
           End
           Else Begin
               XCodTabela:=-1;
               EdTabela_TabelaFaixa.Text:='';
           End;
       End;
   Except
   End;
End;

//Seleciona Cliente e fecha lista
Function TFOrdemLoca.SelecionaClienteLista : Boolean;
Begin
	Try
   	//Se pressionado Enter, confirma a nova busca
       XCodCliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       FrmCliente.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('nome').AsString;
       PListaClientes.Visible:=False;
       DMPESSOA.TCliente.Close;
       DMPESSOA.TCliente.SQL.Clear;
       DMPESSOA.TCliente.SQL.Add(' Select * from cliente where cliente.cod_cliente=:Codigo ');
       DMPESSOA.TCliente.ParamByName('Codigo').AsInteger:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       DMPESSOA.TCliente.Open;
       If not DMPESSOA.TCliente.IsEmpty Then
           EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
       Else
           EdObsFinanceira.Text:='';
       SelecionaTabelaPrecoCliente;
   Except

   End;
End;

procedure TFOrdemLoca.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Ordem de Serviço' ;
  	EdTxEntrega.Visible := false;
  	Label39.Visible := false;
   PItensdeRetorno.Visible:=False;
   PAcessorios.BringToFront;
   PCadastro.Visible:=False;
   PTabelaPreco.Visible:=False;
   PConsulta.Visible:=True;
   PConsulta.BringToFront;
   PListaClientes.Top:=146;
   PListaClientes.Left:=14;
   BtnItensretornados.Font.Style:=([]);
   BtnOrdemdeServico.Font.Style:=([fsbold]);
   XView:=DMServ.WOrdemDesp;
   DBGridCadastroPadrao.DataSource:=DMServ.DWOrdemDesp;
   If FileExists('C:\MZR\Arquivos\LayoutGrid\OrdemLoc.lgm') Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\OrdemLoc.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\ItemOrdemLoc.lgm') Then
       DBGProdutos.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ItemOrdemLoc.lgm');
   xCtrlDesgaste := False;
   PopulaFormasdePagamento;
   FiltraOrdem('');
   cbNfse.Visible := False;
   //cbNfse.BringToFront;
   cbBonificacao.Checked := False;
   cbCancelamento.Checked := False;
   If ControlAccess('GERABONIF', 'M')=False Then
      cbBonificacao.Visible := False;
   If ControlAccess('GERACANC', 'M')=False Then
      cbCancelamento.Visible := False;
   //ISS Caso gere NFSE
	xAliquotaIss := DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency;
   cbRtIss.Checked := False;

   FMenu.XCodOrdemVinculo := -1;
   FMenu.SelectedForm := False;//inicia com false para dizer que o botão selecionar não foi pressionado
   //Edmar - 19/08/2015 - verifica o tipo do formulário para posicionar
   //a grid corretamente e mostrar ou não o botão para seleção
 	if Tag = 20 then//form de seleção
       BtnSelecionaOrdem.Visible := True
   else
       BtnSelecionaOrdem.Visible := False;
end;

procedure TFOrdemLoca.FrmClienteBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
   	If DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString='1' Then
       	MessageDlg('AS INFORMAÇÕES DO CLIENTE NECESSITAM SER ATUALIZADAS', mtWarning, [mbOK], 0);
       XCodCliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
       DMPESSOA.TCliente.Close;
       DMPESSOA.TCliente.SQL.Clear;
       DMPESSOA.TCliente.SQL.Add(' Select * from cliente where cliente.cod_cliente=:Codigo ');
       DMPESSOA.TCliente.ParamByName('Codigo').AsInteger:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       DMPESSOA.TCliente.Open;
       If not DMPESSOA.TCliente.IsEmpty Then
           EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString
       Else
           EdObsFinanceira.Text:='';
       SelecionaTabelaPrecoCliente;

       //Edmar - 06/02/2015 - Busca pela conta vencidas do cliente selecionado
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' SELECT FIRST(1) CTARECEBER.COD_CTARECEBER FROM CTARECEBER ');
       DMMACS.TALX.SQL.Add(' LEFT JOIN PARCELACR ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
       DMMACS.TALX.SQL.Add(' WHERE (CTARECEBER.COD_CLIENTE = :CLIENTE) AND (PARCELACR.DTVENC <= :DATA) AND (PARCELACR.FECH = ''N'')');
       DMMACS.TALX.ParamByName('CLIENTE').AsInteger := XCodCliente;
       DMMACS.TALX.ParamByName('DATA').AsDate := Now;
       DMMACS.TALX.Open;

       if not DMMACS.TALX.IsEmpty then
       	Mensagem(' I N F O R M A Ç Ã O ', 'O cliente selecionado possui contas vencidas!!!', '', 1, 1, False, 'I');
   End
   Else Begin
       XCodCliente:=-1;
       FrmCliente.EDCodigo.Text:='';
       FrmCliente.EDCodigo.Hint := '';
       FrmCliente.EdDescricao.Text:='';
       EdObsFinanceira.Text:='';
   End;
end;

procedure TFOrdemLoca.FrmClienteEdDescricaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If (PListaClientes.Visible=False) and (key<>Vk_F2)  and (key<>Vk_F3)
   Then Begin
   	If FrmCliente.EdDescricao.Text<>''
       Then Begin
           PListaClientes.Visible:=True;
           PListaClientes.BringToFront;
           PListaClientes.Top:=52;
           DMPESSOA.WCliente.Close;
           DMPESSOA.WCliente.SQL.Clear;
           DMPESSOA.WCliente.SQL.Add(' Select * from vwcliente order by vwcliente.nome ');
           DMPESSOA.WCliente.Open;
   	End;
   End;
end;

procedure TFOrdemLoca.FrmClienteEdDescricaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key=VK_UP Then
       DMPESSOA.WCliente.Prior;
   If Key=VK_DOWN Then
       DMPESSOA.WCliente.Next;
   If Key=VK_RETURN
   Then Begin
       SelecionaClienteLista;
   End;
   If Key=VK_ESCAPE
   Then Begin
   	//Se Pressionado Esc, retorna a busca anterior
       If XCodCliente=-1
       Then Begin
           //Se codigo cliente não definido zera dados dos clientes
           FrmCliente.EdDescricao.Text:='';
       End
       Else Begin
       	//Se existe um codigo de cliente definido, retorna a estas informações
       	If FiltraTabela(DMPESSOA.TALX, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCodCliente), '')=True
           Then Begin
               FrmCliente.EdDescricao.Text:=DMPESSOA.TALX.FieldByName('nome').AsString;
           End;
       End;
       PListaClientes.Visible:=False;
   End;
	If (Key<>VK_UP) and (Key<>VK_DOWN)  and (Key<>VK_RETURN)  and (Key<>VK_ESCAPE) Then
		DMPESSOA.WCliente.Locate('nome', FrmCliente.EdDescricao.Text, [loPartialKey,loCaseInsensitive]);
end;

procedure TFOrdemLoca.FrmVendedorBTNOPENClick(Sender: TObject);
begin
  inherited;
    If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
    Then Begin
       XCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
    	FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
    	FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
    End
    Else Begin
       XCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;    
    	FrmVendedor.EDCodigo.Text:='';
    	FrmVendedor.EdDescricao.Text:='';
    End;
end;

procedure TFOrdemLoca.FrmVendedorEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin//se enter
   	If FrmVendedor.EDCodigo.Text<>''
       Then Begin
	        If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', FrmVendedor.EDCodigo.Text, '')=True
           Then Begin
	            XCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
	            FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
	            FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
           End
           Else Begin
               XCodVendedor:=-1;
	            FrmVendedor.EDCodigo.Text:='';
	            FrmVendedor.EdDescricao.Text:='';
           End;
       End;
   End;
end;

procedure TFOrdemLoca.EdBuscaProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If (Key=Vk_f2) and (key<>Vk_F3)
   Then Begin
       If AbrirForm(TFProduto, FProduto, 1)='Selected'
       Then Begin
       	If EdQuantProd.Text<>''
           Then Begin
               XCOD_ESTOQUE:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
               EscreveLabelsPROD;
               PListaProdutos.Visible:=False;
               If EdQuantProd.ValueNumeric=0 Then
                   EdQuantProd.ValueNumeric:=1;
               DbFaixaPreco.SetFocus;
               
               EscondeMostraPaineis;
           End;
       End;
   End;
end;

procedure TFOrdemLoca.EdBuscaProdutoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	If PListaProdutos.Visible=False
   Then Begin
   	If EdBuscaProduto.Text<>''
       Then Begin
           PListaProdutos.Visible:=True;
           PListaProdutos.BringToFront;
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add(' select * from vwsimilar ');
           DMESTOQUE.WSimilar.SQL.Add(' left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
           DMESTOQUE.WSimilar.SQL.Add(' where subproduto.usoconsumo<>''5''  order by vwsimilar.descricao ');
           DMESTOQUE.WSimilar.Open;
       End;
   End;
   If Key=Vk_ESCAPE
   Then Begin
       PListaProdutos.Visible:=False;
       LimpaLabelsPROD;
   End;
   If Key<>Vk_Return
   Then Begin
   	If (Key=VK_down) or (Key=VK_Up)
       Then Begin
       	If (Key=VK_down) Then
               DMESTOQUE.WSimilar.Next;
       	If (Key=VK_Up) Then
               DMESTOQUE.WSimilar.Prior;
       End
       Else Begin
           If DMESTOQUE.WSimilar.Locate('descricao', UpperCase(EdBuscaProduto.Text),[loPartialKey])=false
           Then Begin
               If DMESTOQUE.WSimilar.Locate('contrint', UpperCase(EdBuscaProduto.Text),[loPartialKey])=false
               Then Begin
                   XCodTmpEstoque:=DBGListaProdutos.Columns[0].Field.Text;
               End;
           End
           Else Begin
               XCodTmpEstoque:=DBGListaProdutos.Columns[0].Field.Text;
           End;
       End;
   End
   Else Begin
   	If EdBuscaProduto.Text<>''
       Then Begin
           XCodTmpEstoque:=DBGListaProdutos.Columns[0].Field.Text;
           If XCodTmpEstoque<>''
           Then Begin
               DMESTOQUE.WSimilar.Close;
               DMESTOQUE.WSimilar.SQL.Clear;
               DMESTOQUE.WSimilar.SQL.Add('  select * from vwsimilar ');
               DMESTOQUE.WSimilar.SQL.Add('  left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
               DMESTOQUE.WSimilar.SQL.Add('  where (subproduto.usoconsumo<>'+#39+'5'+#39+')  and (vwsimilar.cod_estoque=:codigo)' );
               DMESTOQUE.WSimilar.ParamByName('codigo').AsString:=XCodTmpEstoque;
               DMESTOQUE.WSimilar.Open;

               If not DMESTOQUE.WSimilar.IsEmpty
               Then Begin
                   XCOD_ESTOQUE:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
                   EscreveLabelsPROD;
                   PListaProdutos.Visible:=False;
                   If EdQuantProd.ValueNumeric=0 Then
                       EdQuantProd.ValueNumeric:=1;
                   If XCOD_ESTOQUE>0 Then
                       DbFaixaPreco.SetFocus;

                   EscondeMostraPaineis;
               End
               Else Begin
                   XCOD_ESTOQUE:=-1;
                   LimpaLabelsPROD;
               End;
           End;
       End;
   End;
end;

procedure TFOrdemLoca.DBGListaProdutosDblClick(Sender: TObject);
begin
  inherited;
    XCOD_ESTOQUE:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
    EscreveLabelsPROD;
    PListaProdutos.Visible:=False;
    If EdQuantProd.ValueNumeric=0 Then
       EdQuantProd.ValueNumeric:=1;
    If XCOD_ESTOQUE>0 Then
       DbFaixaPreco.SetFocus;
end;

procedure TFOrdemLoca.DBGListaProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
       XCOD_ESTOQUE:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
       EscreveLabelsPROD;
       PListaProdutos.Visible:=False;
       If EdQuantProd.ValueNumeric=0 Then
           EdQuantProd.ValueNumeric:=1;
       If XCOD_ESTOQUE>0 Then
           DbFaixaPreco.SetFocus;
   End;
end;

//Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
Function TFOrdemLoca.RetornaNumPed: Integer;
Var
	XFlag: Integer;
   XNumOrdem: String;
Begin
   Result:=-1;
   XFlag:=-1;
   Try
      //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
      FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
      //Recebe o Código de vendas
      If DMMacs.TEmpresa.FieldByName('PROX_OS').AsString='' Then
      		XNumOrdem:='1'
      Else
         	XNumOrdem:=DMMacs.TEmpresa.FieldByName('PROX_OS').AsString;

      While XFlag=-1 do
      Begin
      		If FiltraTabela(DMMACS.TALX, 'VWORDEM', 'numero', XNumOrdem, '')=True
           Then Begin
               XNumOrdem:=IntToStr((StrToInt(XNumOrdem)+1));
           End
           Else Begin
               XFlag:=1;
           End;
      End;
      //Incrementa o codigo de vendas em Empresa
      DMMACS.TEmpresa.Edit;
      DMMacs.TEmpresa.FieldByName('PROX_OS').AsString:=IntToStr(StrToInt(XNumOrdem)+1);
      DMMACS.TEmpresa.Post;
      //Atualiza e confirma os Dados de empresa
      try
           DMMacs.Transaction.CommitRetaining;
      except
           DMMacs.Transaction.RollbackRetaining;
      end;
      Result:=StrToInt(XNumOrdem);
   Except
      Result:=StrToInt(XNumOrdem);
   End;
End;

//Busca/Consulta dados de cabeçalho da Ordem
Function TFOrdemLoca.ConsultaOrdem: Boolean;
Begin
	Try
   	Result:=True;
       MDO.Transac.CommitRetaining;
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select ordem.cod_ordem, Ordem.Edit, ordem.geranfse, ordem.status, ordem.totiss, ordem.rt_iss, ordem.cod_equipamento, ordem.cod_cliente, ordem.cod_formpag, ordem.cod_vendedor, ordem.cod_funcionario, ');
       MDO.QConsulta.SQL.Add(' ordem.observacao, ordem.numero, ordem.desconto, ordem.descserv, ordem.descprod, ordem.dtabert, ordem.totord, ordem.totprod, ordem.totserv, ordem.VLRADIANTAMENTO, ');
       MDO.QConsulta.SQL.Add(' vwcliente.nome, formpag.cod_interno as CIFormPag, formpag.descricao as Formpag, ordem.contato, ordem.cod_tabelapreco, ordem.TOTAJUDANTE, ');
       MDO.QConsulta.SQL.Add(' vwfuncionario.cod_interno as CIVendedor, vwfuncionario.nome as vendedor, equipamento.cod_equipamento, equipamento.marca, ');
       MDO.QConsulta.SQL.Add(' equipamento.modelo, equipamento.ano, equipamento.descricao as Cilindro, equipamento.cor as MCilindro, ');
       MDO.QConsulta.SQL.Add(' equipamento.chassimotor as Mancal,  equipamento.concessionaria as Biela, equipamento.motor as Comando, ');
       MDO.QConsulta.SQL.Add(' equipamento.num_frota as Combustivel ');
       MDO.QConsulta.SQL.Add(' from ordem ');
       MDO.QConsulta.SQL.Add(' left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente ');
       MDO.QConsulta.SQL.Add(' left join equipamento ON ordem.cod_equipamento = equipamento.cod_equipamento ');
       MDO.QConsulta.SQL.Add(' left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
       MDO.QConsulta.SQL.Add(' left join vwfuncionario on ordem.cod_vendedor = vwfuncionario.cod_func ');
       MDO.QConsulta.SQL.Add(' where ordem.cod_ordem=:codigo ');
       MDO.QConsulta.ParamByName('codigo').AsInteger:=DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
       MDO.QConsulta.Open;
       If not MDO.QConsulta.IsEmpty
       Then Begin
       	//VERIFICA SE A OS ESTA EM EDIÇÃO POR OUTRO TERMINAL
           // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
           If MDO.QConsulta.FieldByName('EDIT').AsString = '1'
           Then Begin
               Mensagem('    A T E N Ç Ã O   ','A Ordem de Serviços selecionada está sendo usada por outro terminal.'+#13+'Use as teclas ctrl+D para desbloquear','',1,1,false,'I');
               Result:=False;
               Exit;
           End;
           If MDO.QConsulta.FieldByName('STATUS').AsString = 'FECHADO'
           Then Begin
               Mensagem('    A T E N Ç Ã O   ','A Ordem de Serviços selecionada está Fechada e não pode ser consultada.','',1,1,false,'I');
               Result:=False;
               Exit;
           End;
       	//Repassa as chaves estrangeiras
           XCodOrdem:=MDO.QConsulta.FieldByName('cod_ordem').AsInteger;
           XCodCliente:=MDO.QConsulta.FieldByName('cod_cliente').AsInteger;
           XCOD_OBRA:=MDO.QConsulta.FieldByName('cod_equipamento').AsInteger;
           XCodFormPag:=MDO.QConsulta.FieldByName('cod_formpag').AsInteger;
           //Forma de Pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCodFormPag), '')=True
           Then Begin
               FrmFormaPagamento.EDCodigo.Text:=DMFINANC.TFormPag.FieldByname('COD_INTERNO').AsString;
               FrmFormaPagamento.EdDescricao.Text:=DMFINANC.TFormPag.FieldByname('DESCRICAO').AsString;
           End
           Else Begin
               FrmFormaPagamento.EDCodigo.Text:='';
               FrmFormaPagamento.EdDescricao.Text:='';
			End;
			//Obra
           If FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_equipamento', IntToStr(XCOD_OBRA), '')=True
           Then Begin
               FrmObra.EDCodigo.Text:=DMPESSOA.TEquip.FieldByname('placa').AsString;
               FrmObra.EdDescricao.Text:=DMPESSOA.TEquip.FieldByname('DESCRICAO').AsString;
           End
           Else Begin
               FrmObra.EDCodigo.Text:='';
               FrmObra.EdDescricao.Text:='';
			End;
           //Tabela Preço
           DMMACS.TALX.close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' select * from tabela_preco where tabela_preco.cod_tabelapreco=:codigo');
           DMMACS.TALX.ParamByName('codigo').AsInteger:=MDO.QConsulta.FieldByName('cod_tabelapreco').AsInteger;
           DMMACS.TALX.Open;
           If DMMACS.TALX.IsEmpty
           Then Begin
               EdTabela_TabelaFaixa.Text:='';
               XCodTabela:=-1;
           End
           Else Begin
               EdTabela_TabelaFaixa.Text:=DMMACS.TALX.FieldByName('DESCRICAO').AsString;
               XCodTabela:=DMMACS.TALX.FieldByName('cod_tabelapreco').AsInteger;
           End;

           XCodVendedor:=MDO.QConsulta.FieldByName('cod_vendedor').AsInteger;
           If FiltraTabela(DMMACS.TALX, 'cliente', 'cod_cliente', IntToStr(XCodCliente), '') Then
               EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString;

           FrmCliente.EdDescricao.Text:=MDO.QConsulta.FieldByName('nome').AsString;
           MObs.Text:=MDO.QConsulta.FieldByName('observacao').AsString;
           EdResponsavelRetirada.Text:=MDO.QConsulta.FieldByName('contato').AsString;           
           EdData.Text:=MDO.QConsulta.FieldByName('dtabert').AsString;
           EdNumero.Text:=MDO.QConsulta.FieldByName('numero').AsString;
           FrmVendedor.EDCodigo.Text:=MDO.QConsulta.FieldByName('CIVendedor').AsString;
           FrmVendedor.EdDescricao.Text:=MDO.QConsulta.FieldByName('vendedor').AsString;
           EdDescProdutos.ValueNumeric:=MDO.QConsulta.FieldByName('desconto').AsCurrency;
           //EdVlrTotProd.ValueNumeric:=MDO.QConsulta.FieldByName('totprod').AsCurrency;
           EdValorOrd2.ValueNumeric:=MDO.QConsulta.FieldByName('totord').AsCurrency;
           EdTxEntrega.ValueNumeric:=MDO.QConsulta.FieldByName('TOTAJUDANTE').AsCurrency;
           Label40.Caption:=MDO.QConsulta.FieldByName('TOTAJUDANTE').AsString;

           if (MDO.QConsulta.FieldByName('RT_ISS').AsString <> '2') Then
           cbRtIss.checked := True;

           EdVlrIss.Text := FormatFloat('0.00',MDO.QConsulta.FieldByName('TOTISS').AsCurrency);
           if(MDO.QConsulta.FieldByName('GERANFSE').AsString='1')Then
             cBNfse.Checked := True
           else
			  cBNfse.Checked := False;

          	//Paulo 11/07/2011: Informa o valor de adiantamento(entrada)
          	EdVlrAdiantamento.ValueNumeric:= MDO.QConsulta.FieldByName('VLRADIANTAMENTO').AsCurrency;
          	XVLRADIANT:=MDO.QConsulta.FieldByName('VLRADIANTAMENTO').AsCurrency;
          	lbSaldo.Caption:=FormatFloat('0.00',(MDO.QConsulta.FieldByName('TOTORD').AsCurrency-MDO.QConsulta.FieldByName('VLRADIANTAMENTO').AsCurrency));
          	if MDO.QConsulta.FieldByName('VLRADIANTAMENTO').AsCurrency = 0 then
          	begin
             EdVlrAdiantamento.ReadOnly:=False;
             BtCancelaBaixaAdiantamento.Enabled:=False;
             BtBaixaAdiantamento.Enabled:=True;
          	end
          	else begin
             EdVlrAdiantamento.ReadOnly:=True;
             BtCancelaBaixaAdiantamento.Enabled:=True;
             BtBaixaAdiantamento.Enabled:=False;
          	end;
           FiltraSlave;
           LimpaLabelsPROD;
           LimpaLabelsAces;
           Try
               //Altera na OS a função de EDIT que marca a OS como sendo usada
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' update ordem set ordem.EDIT=''1'' where ordem.cod_ordem=:codigo ');
               MDO.Query.ParamByName('codigo').AsInteger:=XCodOrdem;
               MDO.Query.ExecSQL;
               MDO.Transac.CommitRetaining;
           Except
           End;
       End
       Else Begin
			MessageDlg('Esta Ordem de Serviços já foi apagada!', mtWarning, [mbOK], 0);
           Result:=False;
       End;
       PListaClientes.Visible:=False;
       PListaProdutos.Visible:=False;
   Except

   End;
End;

//Gera Nova Ordem
Function TFOrdemLoca.AbreNovaOrdem: Boolean;
Var
	XNumero: Integer;
Begin
	Result:=True;
   Try
   	//Prepara componentes para nova inserção
       EdData.Text:=DateToStr(Date());
       FrmCliente.EdDescricao.Text:='';
       XCodVendedor:=-1;
       FrmVendedor.EDCodigo.Text:='';
       FrmVendedor.EdDescricao.Text:='';
       MObs.Lines.Clear;
       EdTabela_TabelaFaixa.Text:='';
       FrmObra.EDCodigo.Text:='';
       FrmObra.EdDescricao.Text:='';
       XCOD_OBRA:=-1;
       EdResponsavelRetirada.Text:='';
       FrmFormaPagamento.EDCodigo.Text:='';
       FrmFormaPagamento.EdDescricao.Text:='';
       XCodFormPag:=-1;
       XVLRADIANT:=0;

   	//Retorna numero do proximo generator
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('   select gen_id(gen_ordem_id, 0) as codigo from rdb$database ');
       MDO.QConsulta.Open;
       XCodOrdem:=MDO.QConsulta.FieldByName('codigo').AsInteger+1;
   	//insere em banco de dados a ordem preliminar
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' insert into ordem(ordem.box, ordem.cod_cliente, ordem.cod_formpag, ordem.cod_funcionario, ordem.cod_loja, ordem.cod_usuario, ');
       MDO.Query.SQL.Add('             ordem.cod_vendedor, ordem.numero, ordem.status, ordem.localat, ordem.dtabert, ordem.HRABERT, ordem.GERANFSE) ');
       MDO.Query.SQL.Add('             values(:BOX, :COD_CLIENTE, :cod_formpag, :cod_funcionario, :cod_loja, :cod_usuario, ');
       MDO.Query.SQL.Add('             :cod_vendedor, :numero, :status, :localat, :DtAbertura, :HRABERT, :GERANFSE) ');
       MDO.Query.ParamByName('BOX').AsString:='';
       MDO.Query.ParamByName('COD_CLIENTE').AsInteger:=XCodCliente;
       MDO.Query.ParamByName('cod_formpag').AsInteger:=-1;
       MDO.Query.ParamByName('cod_funcionario').AsInteger;
       MDO.Query.ParamByName('cod_loja').AsString:=FMenu.LCODLOJA.Caption;
       MDO.Query.ParamByName('cod_usuario').AsString:=FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('cod_vendedor').AsInteger:=XCodVendedor;
       XNumero:=RetornaNumPed;
       MDO.Query.ParamByName('numero').AsInteger:=XNumero;
       MDO.Query.ParamByName('status').AsString:='ABERTO';
       MDO.Query.ParamByName('LOCALAT').AsString:='Não';
       MDO.Query.ParamByName('DtAbertura').AsString:=EdData.Text;
       MDO.Query.ParamByName('HRABERT').AsString:=TimeToStr(Now);
       MDO.Query.ParamByName('GERANFSE').AsString:='0';
       MDO.Query.ExecSQL;
       EdNumero.Text:=IntToStr(XNumero);
       MDO.Transac.CommitRetaining;
       PListaClientes.Visible:=False;
       PListaProdutos.Visible:=False;
       FiltraSlave;
   Except
       MDO.Transac.RollbackRetaining;
   	Result:=False;
   End;
End;

procedure TFOrdemLoca.BtnNovoClick(Sender: TObject);
begin
  //inherited;
   EdTxEntrega.Visible := false;
   Label39.Visible := false;
   Label40.Caption := '';
	EdTxEntrega.Text := '0,00';
	EdDescProdutos.Text := '0,00';
   EdVlrAdiantamento.Text := '0,00';
   LimpaLabelsPROD;
   LimpaLabelsAces;
   AbreNovaOrdem;
   PConsulta.Visible:=False;
   PCadastro.Visible:=True;
   PCadastro.BringToFront;
   FrmCliente.EdDescricao.SetFocus;
   EdHrSaida.Text:=TimeToStr(Time());
   XCodCliente := -1;
	pInfoRetorno.Visible := False;
   pInfoRetorno.SendToBack;   
end;

procedure TFOrdemLoca.BtnConsultarClick(Sender: TObject);
begin
  EdTxEntrega.Text := '0,00';
  EdDescProdutos.Text := '0,00';
  //inherited;
  DMPESSOA.TCliente.Close;
  DMPESSOA.TCliente.SQL.Clear;
  DMPESSOA.TCliente.SQL.Add(' Select * from cliente where cliente.cod_cliente=:Codigo ');
  DMPESSOA.TCliente.ParamByName('Codigo').AsInteger:= XView.fieldByName('cod_cliente').AsInteger;
  DMPESSOA.TCliente.Open;
   //Edmar - 11/02/2014 - Verifica se deve ser cobrado taxa de entrega
   if  DMPESSOA.TCliente.FieldByName('TAXAENTREGA').AsString = '1' then
   begin
       EdTxEntrega.Visible := true;
       Label39.Visible := true;
   end
   else
   begin
       EdTxEntrega.Visible := false;
       Label39.Visible := false;
   end;

   LimpaLabelsPROD;
   If ConsultaOrdem=True
   Then Begin
   	//Se a OS foi devidamente encontrada ativa o painel de cadastro/alteração
       PConsulta.Visible:=False;
       PCadastro.Visible:=True;
       PCadastro.BringToFront;
       FrmCliente.EdDescricao.SetFocus;
   End
   Else Begin
   	//Se a OS não foi devidamente encontrada desativa o painel de cadastro/alteração
       PCadastro.Visible:=False;
       PConsulta.Visible:= True;
       PConsulta.BringToFront;
       EDNum.SetFocus;
   End;
	pInfoRetorno.Visible := False;
   pInfoRetorno.SendToBack;   
end;

procedure TFOrdemLoca.DbFaixaPrecoExit(Sender: TObject);
begin
  inherited;
  if (LProduto.Caption <> '') OR (lProdutoRetorno.Caption <> '') then
  begin
   XCodFaixa:=DMESTOQUE.Alx1.FieldByName('COD_FAIXAPRECO').AsInteger;
   SelecInfoFaixaPreco;
  end;
end;

procedure TFOrdemLoca.BtnTabelaPrecoClick(Sender: TObject);
begin
  inherited;
   DMMACS.TALX.close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select * from tabela_preco ');
   DMMACS.TALX.Open;
   DBGTabelaPreco.DataSource:=DMMACS.DSALX;
   PTabelaPreco.Visible:=True;
   PTabelaPreco.BringToFront;
   DBGTabelaPreco.SetFocus;
end;

procedure TFOrdemLoca.DBGTabelaPrecoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       PTabelaPreco.Visible:=False;
       XCodTabela:=DMMACS.TALX.FieldByName('cod_tabelapreco').AsInteger;
       EdTabela_TabelaFaixa.Text:=DMMACS.TALX.FieldByName('descricao').AsString;
       BtnTabelaPreco.SetFocus;
   End;
   If Key=VK_ESCAPE
   Then Begin
       PTabelaPreco.Visible:=False;
       BtnTabelaPreco.SetFocus;
   End;
end;

procedure TFOrdemLoca.EdDtSaidaExit(Sender: TObject);
begin
  inherited;
  if LProduto.Caption <> '' then
  begin
	EdDtRetorno.Date:=EdDtSaida.Date+DMESTOQUE.Alx1.FieldByName('qtddias').AsInteger;
   CalculaTotalItem;
  end;
end;
//Função para calcular o valor total do item a ser inserido
Function TFOrdemLoca.CalculaTotalItem: Boolean;
Var
	Dias, xHoraSaida, xHoraRetorno: Integer;
Begin
	EdNumeroDias.ValueInteger := 0;//Edmar - 10/01/2014 - Zera o número de dias
	//Verifica intervalo de dias
   Dias:=StrToInt(DifDias(EdDtSaida.Date, EdDtRetorno.Date, 0));
   EdNumeroDias.ValueInteger:=Dias;

   if EdNumeroDias.ValueInteger = 0 then
   	EdNumeroDias.ValueInteger := 1;

   EdVlrTotProd.ValueNumeric := EdVlrTotProd.ValueNumeric;
	//Edmar - 10/01/2014 - Testa se foi informado hora de retorno
   //verificação necessario para eliminar uma mensagem de erro desnecessaria
   if edHrRetorno.Text = '  :  ' then
		EdVlrTotProd.ValueNumeric := (EdNumeroDias.ValueNumeric*XVlrMedioDiaTabela)*EdQuantProd.ValueNumeric
   else
   begin
  		xHoraSaida := StrToInt(Copy(EdHrSaida.Text, 1, 2));//Edmar - 10/01/2014 - Extratifica hora de saida
		xHoraRetorno := StrToInt(Copy(edHrRetorno.Text, 1, 2));//Edmar - 10/01/2014 - Extratifica hora de retorno

       //Edmar - 10/01/2014 - Teste se a saida e o retorno foi feito no mesmo dia
       // e testa se o equipamento foi retornado antes do meio dia
		if (EdDtRetorno.Date = EdDtSaida.Date) and (xHoraRetorno < 13) then
   	begin
       	//EdNumeroDias.ValueNumeric := EdNumeroDias.ValueNumeric + 1;
			EdNumeroDias.ValueNumeric := EdNumeroDias.ValueNumeric - 0.5;
   		EdVlrTotProd.ValueNumeric := (EdNumeroDias.ValueNumeric*XVlrMedioDiaTabela)*EdQuantProd.ValueNumeric;
       end
       else
       begin
	        //Edmar - 10/01/2014 - Testa se o produto saiu antes do meio dia e retornou depois do meio dia
           // e calcula como mais meio dia na quantidade total de dias.
  			if (xHoraRetorno > 12) and (xHoraSaida < 12) and (EdDtRetorno.Date > EdDtSaida.Date) then
           begin
		       		//Edmar - 06/01/2013 - Recalcular valor do produto caso ele tenha sido retirado de manhã e devolvido a tarde.
           		EdNumeroDias.ValueNumeric := EdNumeroDias.ValueNumeric + 1;
   				EdNumeroDias.ValueNumeric := EdNumeroDias.ValueNumeric - 0.5;
   				EdVlrTotProd.ValueNumeric := (EdNumeroDias.ValueNumeric*XVlrMedioDiaTabela)*EdQuantProd.ValueNumeric;
           end
           else
           begin
           	//Edmar - 10/01/2014 - Se saiu a tarde e retornou de manhã do outro dia, tira meio do numero total de dias
               if (xHoraSaida > 12) and (xHoraRetorno < 13) and (EdDtRetorno.Date > EdDtSaida.Date) then
               begin
	            	//EdNumeroDias.ValueNumeric := EdNumeroDias.ValueNumeric + 1;
   				EdNumeroDias.ValueNumeric := EdNumeroDias.ValueNumeric - 0.5;
   				EdVlrTotProd.ValueNumeric := (EdNumeroDias.ValueNumeric*XVlrMedioDiaTabela)*EdQuantProd.ValueNumeric;
               end
           	else
           		EdVlrTotProd.ValueNumeric := (EdNumeroDias.ValueNumeric*XVlrMedioDiaTabela)*EdQuantProd.ValueNumeric;
			end;
       end;
   end;
   EdVlrTotProd.ValueNumeric := EdVlrTotProd.ValueNumeric;
End;

procedure TFOrdemLoca.EdVlrUnitProdExit(Sender: TObject);
begin
  inherited;
  if EdVlrUnitProd.ValueNumeric < 0 then
  begin
		Mensagem('   A T E N Ç Ã O   ','O valor de unitário do item está negativo. Por favor verifique!','',1,1,false,'I');

       EdVlrUnitProd.SetFocus;
  end
  else
  begin
	   if not (FiltraTabela(DMESTOQUE.Alx, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, 'AND (CTRL_DESGASTE = ''1'')'))
    OR not (cbControleHora.Checked) then
    Begin
      XQtdDiasTabela:= EdNumeroDias.ValueInteger;
      If XQtdDiasTabela>0 Then
        XVlrMedioDiaTabela:= EdVlrUnitProd.ValueNumeric/XQtdDiasTabela
      Else
        XQtdDiasTabela:=0;
      CalculaTotalItem;
    End;
  end;
//	EdVlrTotProd.ValueNumeric:=EdVlrUnitProd.ValueNumeric*EdQuantProd.ValueNumeric;
end;

procedure TFOrdemLoca.BtnInsertProdClick(Sender: TObject);
begin
  inherited;
	//CalculaTotalItem;
  	FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', IntToStr(XCOD_ESTOQUE), '');

   if (DMMacs.TLoja.FieldByName('VENDESTNEG').AsString = '0') And (EdQuantProd.ValueNumeric > DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency) then
   begin
		Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação.', '', 1, 1, False, 'a');
		Exit;
	End;

   EdBuscaProduto.Enabled:=True;
  	//VALIDAÇÕES
	If XCOD_ESTOQUE=-1
   Then Begin
   	MessageDlg('Por favor, selecione novamente o produto a ser inserido.', mtInformation, [mbOK], 0);
       Exit;
   End;
	If EdVlrTotProd.ValueNumeric<=0 Then
   	MessageDlg('Por favor, verifique o valor total do produto. O produto esta sendo inserido com valor zero.', mtInformation, [mbOK], 0);

   //INSERE O ITEM A LISTA
   Try 
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('insert into itprodord ');
       MDO.Query.SQL.Add('(COD_ESTOQUE, COD_ORDEM, QTD, VLRUNIT, DESCONTO, TOTAL, ');
       MDO.Query.SQL.Add('DATA, DTRETIRADA,HRRETIRADA, DTRETORNO, COD_FUNCIONARIO, COD_CST, VALCUSTO, COEFDIV, VALCOMP, LUCMOE, LUCPER, VALREP, ');
       MDO.Query.SQL.Add('NUMREQ, QTDRET, COMISSAO, VLRVENDBD, LUCREL, OPERACAO, ALIQICMS, BASEICMS, ');
       MDO.Query.SQL.Add('VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI, REDUCBASEICMS, VLRICMSSUBS,DATA_GARANTIA, KMGARANTIA, COD_TABELAFAIXAPRECO, HRRETORNO, DESGASTE_SAIDA, DESGASTE_RETORNO, DESGASTE_CONSUMIDO, ');
       MDO.Query.SQL.Add('QTDE_HORA_SAIDA, QTDE_HORA_RETORNO, QTDE_HORA_CONSUMIDA, CTRL_HORA, IMPRESSONFSE) ');
       MDO.Query.SQL.Add(' values ');
       MDO.Query.SQL.Add('(:COD_ESTOQUE, :COD_ORDEM, :QTD, :VLRUNIT, :DESCONTO, ');
       MDO.Query.SQL.Add(':TOTAL, :DATA, :DTRETIRADA,:HRRETIRADA, :DTRETORNO, :COD_FUNCIONARIO, :COD_CST, :VALCUSTO, :COEFDIV, :VALCOMP, :LUCMOE, ');
       MDO.Query.SQL.Add(':LUCPER, :VALREP, :NUMREQ, :QTDRET, :COMISSAO, :VLRVENDBD, :LUCREL, ');
       MDO.Query.SQL.Add(':OPERACAO, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRIPI, :ALIQIPI, ');
       MDO.Query.SQL.Add(':REDUCBASEICMS, :VLRICMSSUBS, :DATA_GARANTIA, :KMGARANTIA, :COD_TABELAFAIXAPRECO, :HRRET, :DESG_SAIDA, :DESG_RET, :DESG_CON, ');
			MDO.Query.SQL.Add(':HRSAIDA, :HRRETORNO, :HRCONSUMIDA, :CTRL, :IMPRESSONFSE) ');

       MDO.Query.ParamByName('ALIQICMS').AsCurrency := 0;
       MDO.Query.ParamByName('ALIQIPI').AsCurrency := 0;
       MDO.Query.ParamByName('BASEICMS').AsCurrency := 0;
       MDO.Query.ParamByName('BASEICMSSUBS').AsCurrency := 0;
       MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
       MDO.Query.ParamByName('COD_FUNCIONARIO').AsInteger := XCOD_VENDEDOR;
       MDO.Query.ParamByName('COD_CST').AsInteger := -1;
       MDO.Query.ParamByName('COD_ORDEM').AsInteger := XCodOrdem;
       MDO.Query.ParamByName('COEFDIV').AsCurrency := 0;
       MDO.Query.ParamByName('LUCMOE').AsCurrency := 0;
       MDO.Query.ParamByName('DATA').AsString := EdData.Text;
       MDO.Query.ParamByName('DATA_GARANTIA').AsString := EdData.Text;
       MDO.Query.ParamByName('DTRETIRADA').AsDate := EdDtSaida.Date;
	    	MDO.Query.ParamByName('HRRETIRADA').AsString := EdHrSaida.Text;
       MDO.Query.ParamByName('DTRETORNO').AsDate := EdDtRetorno.Date;
       MDO.Query.ParamByName('OPERACAO').AsString := 'VND';
       MDO.Query.ParamByName('QTD').AsCurrency := EdQuantProd.ValueNumeric;
       MDO.Query.ParamByName('DESG_SAIDA').AsCurrency := edQtdeSaida.ValueNumeric;
       MDO.Query.ParamByName('DESG_RET').AsCurrency := edQtdeRetorno.ValueNumeric;
       MDO.Query.ParamByName('DESG_CON').AsCurrency := edQtdeConsumida.ValueNumeric;
       MDO.Query.ParamByName('HRSAIDA').AsCurrency := StrToCurr(edQtdeHrSaida.Text);
       MDO.Query.ParamByName('HRRETORNO').AsCurrency := StrToCurr(edQtdeHrRetorno.Text);
       MDO.Query.ParamByName('HRCONSUMIDA').AsCurrency := StrToCurr(edQtdeHrConsumidas.Text);
       MDO.Query.ParamByName('IMPRESSONFSE').AsString := '0';
       //Edmar - 09/07/2014 - Se for controle de hora faz a marcação
		if cbControleHora.Checked then
       	MDO.Query.ParamByName('CTRL').AsString := '1'
       else
       	MDO.Query.ParamByName('CTRL').AsString := '0';
                  
   	if (edHrRetorno.Text = '  :  ') then
			MDO.Query.ParamByName('HRRET').AsString := ''
       else
       	MDO.Query.ParamByName('HRRET').AsString := edHrRetorno.Text;

       If CBItemRetiradoEstoque.Checked=False Then
       	MDO.Query.ParamByName('qtdret').AsInteger:=-1000//Se não foi retirado
       Else
       	MDO.Query.ParamByName('qtdret').AsInteger:=-2000;//Se já foi retirado

       MDO.Query.ParamByName('TOTAL').AsCurrency := EdVlrTotProd.ValueNumeric;
       MDO.Query.ParamByName('VALCOMP').AsCurrency := 0;
       MDO.Query.ParamByName('VALCUSTO').AsCurrency := 0;
       MDO.Query.ParamByName('VALREP').AsCurrency := 0;
       MDO.Query.ParamByName('VLRICMS').AsCurrency := 0;
       MDO.Query.ParamByName('VLRICMSSUBS').AsCurrency := 0;
       MDO.Query.ParamByName('VLRIPI').AsCurrency := 0;
       //Edmar - 06/01/2014 - Linha comentada para corrigir o código da tabela de faixa de preço incorreta
       //MDO.Query.ParamByName('COD_TABELAFAIXAPRECO').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_FAIXAPRECO').AsInteger;
       MDO.Query.ParamByName('COD_TABELAFAIXAPRECO').AsString := xCodTabFaixaPreco;
       MDO.Query.ParamByName('VLRUNIT').AsCurrency := EdVlrUnitProd.ValueNumeric;
       Try
       	MDO.Query.ExecSQL;
           mdo.Transac.CommitRetaining;
           //Insere os acessórios relacionados ao produto
           InsereAcessorios(xCodOrdem, XCOD_ESTOQUE);
           FiltraSlave;
           //Alex: 13/01/2015 - Comentado codigo abaixo, não atualizamos mais estoque da telas de OS, somente da tela de expedição
           {
           Try
       		//Atualiza Estoque se o combo box estiver checkado
               //if CBItemRetiradoEstoque.Checked then Edmar - 09/01/2014 - Trecho comentado para retornar a dar baixa no estoque
               //begin
               //end;
           Except
               DMESTOQUE.TransacEstoque.RollbackRetaining;
               MessageDlg('O ESTOQUE NÃO FOI ATUALIZADO', mtWarning, [mbOK], 0);
           End;}
       Except
           mdo.Transac.CommitRetaining;
           MessageDlg('O ITEM NÃO FOI INSERIDO A LISTA', mtWarning, [mbOK], 0);
       End;
       EfetuaCalculoISS;
       XCOD_ESTOQUE:=-1;
       LimpaLabelsPROD;
       EdBuscaProduto.SetFocus;
   Except
   End;
end;
//ANGELO - 22/06/2015 - Busca acessórios relacionados ao estoque e insere na ordem
procedure TFOrdemLoca.InsereAcessorios(xCodOrdem, xCodEstoque : Integer);
Begin
 	MDO.QConsulta.close;
   MDO.QConsulta.SQL.Clear;
   MDO.QConsulta.SQL.Add('SELECT * FROM ACESSORIOS WHERE ACESSORIOS.COD_ESTOQUE=:COD_ESTOQUE');
   MDO.QConsulta.ParamByName('COD_ESTOQUE').AsInteger := xCodEstoque;
   MDO.QConsulta.Open;
		MDO.QConsulta.First;
   if Not(MDO.QConsulta.Eof) Then
   Begin
     //SE O ITEM ADICIONADO POSSUI ACESSÓRIOS
     If Mensagem('   A T E N Ç Ã O   ','O item adicionado possui acessórios. Deseja inserí-los?','',2,3,false,'A')=2 Then
     Begin
       Try
         //Percorra os acessórios e adicione na ordem
			  While Not (MDO.QConsulta.Eof) do
         Begin
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add('insert into itprodord');
           MDO.Query.SQL.Add('(COD_ESTOQUE, COD_ORDEM, QTD, VLRUNIT, DESCONTO, TOTAL,');
           MDO.Query.SQL.Add('DATA, DTRETIRADA, DTRETORNO, COD_FUNCIONARIO, COD_CST, VALCUSTO, COEFDIV, VALCOMP, LUCMOE, LUCPER, VALREP,');
           MDO.Query.SQL.Add('NUMREQ, QTDRET, COMISSAO, VLRVENDBD, LUCREL, OPERACAO, ALIQICMS, BASEICMS,');
           MDO.Query.SQL.Add('VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI, REDUCBASEICMS, VLRICMSSUBS,DATA_GARANTIA, KMGARANTIA,IMPRESSONFSE )');
           MDO.Query.SQL.Add('values');
           MDO.Query.SQL.Add('(:COD_ESTOQUE, :COD_ORDEM, :QTD, :VLRUNIT, :DESCONTO,');
           MDO.Query.SQL.Add(':TOTAL, :DATA, :DTRETIRADA, :DTRETORNO, :COD_FUNCIONARIO, :COD_CST, :VALCUSTO, :COEFDIV, :VALCOMP, :LUCMOE,');
           MDO.Query.SQL.Add(':LUCPER, :VALREP, :NUMREQ, :QTDRET, :COMISSAO, :VLRVENDBD, :LUCREL,');
           MDO.Query.SQL.Add(':OPERACAO, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRIPI, :ALIQIPI,');
           MDO.Query.SQL.Add(':REDUCBASEICMS, :VLRICMSSUBS, :DATA_GARANTIA, :KMGARANTIA, :IMPRESSONFSE)');
           MDO.Query.ParamByName('ALIQICMS').AsCurrency := 0;
           MDO.Query.ParamByName('ALIQIPI').AsCurrency := 0;
           MDO.Query.ParamByName('BASEICMS').AsCurrency := 0;
           MDO.Query.ParamByName('BASEICMSSUBS').AsCurrency := 0;
           MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := MDO.QConsulta.FieldByName('COD_EQUIPAMENTO').AsInteger;
           MDO.Query.ParamByName('COD_FUNCIONARIO').AsInteger := XCOD_VENDEDOR;
           MDO.Query.ParamByName('COD_CST').AsInteger := -1;
           MDO.Query.ParamByName('COD_ORDEM').AsInteger := XCodOrdem;
           MDO.Query.ParamByName('COEFDIV').AsCurrency := 0;
           MDO.Query.ParamByName('LUCMOE').AsCurrency := 0;
           //MDO.Query.ParamByName('DATA').AsString := '01/01/1900';
           MDO.Query.ParamByName('OPERACAO').AsString := 'ACES';
           MDO.Query.ParamByName('QTD').AsCurrency := MDO.QConsulta.FieldByName('QUANTIDADE').AsCurrency;
           MDO.Query.ParamByName('TOTAL').AsCurrency := 0;
           MDO.Query.ParamByName('VALCOMP').AsCurrency := 0;
           MDO.Query.ParamByName('VALCUSTO').AsCurrency := 0;
           MDO.Query.ParamByName('VALREP').AsCurrency := 0;
           MDO.Query.ParamByName('VLRICMS').AsCurrency := 0;
           MDO.Query.ParamByName('VLRICMSSUBS').AsCurrency := 0;
           MDO.Query.ParamByName('VLRIPI').AsCurrency := 0;
           MDO.Query.ParamByName('VLRUNIT').AsCurrency := 0;
           MDO.Query.ParamByName('IMPRESSONFSE').AsString := '0';
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
           MDO.QConsulta.Next;
         End;
       Except;
         MDO.Transac.RollbackRetaining;
       End;
     End;
   End;  
End;

procedure TFOrdemLoca.DBGAcessoriosReservadosDblClick(Sender: TObject);
begin
  inherited;
   PAdicionaQuantidadeReserva.Visible:=True;
   PAdicionaQuantidadeReserva.BringToFront;
   EdQuantidadeAcessorioInserido.ValueNumeric:=0;
   EdQuantidadeAcessorioInserido.SetFocus;
end;

procedure TFOrdemLoca.EdQuantidadeAcessorioInseridoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
   	Try
           MdoQueryClear;
           mdo.Query.SQL.Add(' update subproduto set subproduto.pureza=:Quantidade where subproduto.cod_subproduto=:codigo ');
           MDO.Query.ParamByName('Quantidade').AsCurrency:=EdQuantidadeAcessorioInserido.ValueNumeric;
           MDO.Query.ParamByName('codigo').AsCurrency:=DMESTOQUE.Alx.FieldByName('cod_subproduto').AsCurrency;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
           PAdicionaQuantidadeReserva.Visible:=False;
           DBGAcessoriosReservados.SetFocus;
           FiltraAcessoriosParaInsercao;
       Except
           MDO.Transac.RollbackRetaining;
       	MessageDlg('Item não adicionado', mtWarning, [mbOK], 0);
           PAdicionaQuantidadeReserva.Visible:=False;
           DBGAcessoriosReservados.SetFocus;
       End;
   End;

   If Key=VK_ESCAPE
   Then Begin
       PAdicionaQuantidadeReserva.Visible:=False;
       DBGAcessoriosReservados.SetFocus;
   End;

end;

procedure TFOrdemLoca.DBGAcessoriosReservadosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_DELETE
   Then Begin
   	If MessageDlg('Zerar o Acessório selecionado?', mtConfirmation, [mbYes, mbNo], 0)=mryes
       Then Begin
           Try
               MdoQueryClear;
               mdo.Query.SQL.Add(' update subproduto set subproduto.pureza=:Quantidade where subproduto.cod_subproduto=:codigo ');
               MDO.Query.ParamByName('Quantidade').AsCurrency:=0;
               MDO.Query.ParamByName('codigo').AsCurrency:=DMESTOQUE.Alx.FieldByName('cod_subproduto').AsCurrency;
               MDO.Query.ExecSQL;
               MDO.Transac.CommitRetaining;
               PAdicionaQuantidadeReserva.Visible:=False;
               DBGAcessoriosReservados.SetFocus;
               FiltraAcessoriosParaInsercao;
           Except
               MDO.Transac.RollbackRetaining;
               MessageDlg('Item não adicionado', mtWarning, [mbOK], 0);
               PAdicionaQuantidadeReserva.Visible:=False;
               DBGAcessoriosReservados.SetFocus;
           End;
       End;
   End;
end;

procedure TFOrdemLoca.Button2Click(Sender: TObject);
begin
  inherited;
   	Try
           MdoQueryClear;
           mdo.Query.SQL.Add(' update subproduto set subproduto.pureza=:Quantidade ');
           MDO.Query.ParamByName('Quantidade').AsCurrency:=0;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
           PAdicionaAcessorios.Visible:=False;
		    PAdicionaAcessorios.SendToBack;           
//           DBGAcessoriosReservados.SetFocus;
           FiltraAcessoriosParaInsercao;
       Except
           MDO.Transac.RollbackRetaining;
       	MessageDlg('Item não adicionado', mtWarning, [mbOK], 0);
           PAdicionaAcessorios.Visible:=False;
		    PAdicionaAcessorios.SendToBack;           
           DBGAcessoriosReservados.SetFocus;
       End;
end;

//Filtra Itens de retorno
Procedure TFOrdemLoca.FiltraItensRetorno;
Begin
	Try
   	//SELECIONA TODOS OS ACESSORIOS INSERIDOS
       DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add('  Select itprodord.cod_itprodord, ordem.numero, ordem.cod_ordem, vwcliente.cod_cliente, vwcliente.nome, itprodord.cod_ordem, itprodord.cod_estoque, itprodord.qtd, itprodord.total, ');
       DMESTOQUE.TSlave.SQL.Add('   itprodord.vlrunit, subproduto.descricao, subproduto.contrint, itprodord.qtdret, itprodord.dtretirada, itprodord.dtretorno ');
       DMESTOQUE.TSlave.SQL.Add('   From itprodord ');
       DMESTOQUE.TSlave.SQL.Add('   left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TSlave.SQL.Add('   left join ordem ON itprodord.cod_ordem = ordem.cod_ordem ');
       DMESTOQUE.TSlave.SQL.Add('   left join vwcliente ON ordem.cod_cliente = vwcliente.cod_cliente ');
       DMESTOQUE.TSlave.SQL.Add('   Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.TSlave.SQL.Add(' Where (itprodord.operacao<>''ACES'') and (ordem.status<>''FECHADO'') and ((itprodord.qtdret=-1000) or (itprodord.qtdret=-2000)  or (itprodord.qtdret=-5000)) '+XFiltroItensretorno);
       DMESTOQUE.TSlave.SQL.Text;
       DMESTOQUE.TSlave.Open;
       DBGItensdeRetorno.DataSource:=DMESTOQUE.DSSlave;
   Except
   End;
End;
//Filtra Equipamentos e Acessórios locados
Procedure TFOrdemLoca.FiltraSlave;
Begin
	Try
		DMESTOQUE.TransacEstoque.CommitRetaining;
   	//CALCULA SUBTOTAL PRODUTOS
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' Select sum(itprodord.total) as SUBTOTALPRODUTOS ');
       DMESTOQUE.Alx.SQL.Add(' From itprodord ');
       DMESTOQUE.Alx.SQL.Add(' Where itprodord.cod_ordem = :CODORDEM ');
       DMESTOQUE.Alx.ParamByName('CODORDEM').AsInteger:=XCodOrdem;
       DMESTOQUE.Alx.Open;
       XSubTotProdutos:=DMESTOQUE.Alx.FieldByName('SUBTOTALPRODUTOS').AsCurrency;
	  	XVLRTPROD:=DMESTOQUE.Alx.FieldByName('SUBTOTALPRODUTOS').AsCurrency;

   	//SELECIONA TODOS OS ACESSORIOS INSERIDOS
       DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque, itprodord.qtd, itprodord.total, itprodord.desgaste_saida, itprodord.desgaste_retorno, itprodord.desgaste_consumido, subproduto.contrint, ');
       DMESTOQUE.TSlave.SQL.Add('itprodord.vlrunit, subproduto.descricao, subproduto.marca, subproduto.contrint, subproduto.LOCALESTANTE, itprodord.qtdret, itprodord.dtretirada, itprodord.dtretorno, itprodord.hrretirada, itprodord.hrretorno, ');
		DMESTOQUE.TSlave.SQL.Add(' itprodord.qtde_hora_consumida, itprodord.qtde_hora_retorno, itprodord.qtde_hora_saida, itprodord.ctrl_hora ');
       DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.TSlave.SQL.Add(' Where (itprodord.cod_ordem = :CODORDEM) and (itprodord.operacao<>''ACES'') ');
       DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCodOrdem;
       DMESTOQUE.TSlave.SQL.Add('order by itprodord.cod_itprodord desc');
       DMESTOQUE.TSlave.Open;
       DBGProdutos.DataSource:=DMESTOQUE.DSSlave;
       //SELECIONA TODOS OS SERVIÇOS
       DMESTOQUE.TSlaveServ.Close;
       DMESTOQUE.TSlaveServ.SQL.Clear;
       DMESTOQUE.TSlaveServ.SQL.Add(' Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque, itprodord.qtd, itprodord.total, ');
       DMESTOQUE.TSlaveServ.SQL.Add(' itprodord.vlrunit, subproduto.descricao, subproduto.contrint ');
       DMESTOQUE.TSlaveServ.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TSlaveServ.SQL.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.TSlaveServ.SQL.Add(' Where (itprodord.cod_ordem = :CODORDEM) and (itprodord.operacao=''ACES'') ');
       DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsInteger:=XCodOrdem;
       DMESTOQUE.TSlaveServ.SQL.Add(' order by itprodord.cod_itprodord desc');
       DMESTOQUE.TSlaveServ.SQL.Text;
       DMESTOQUE.TSlaveServ.Open;
       DBGAcessorios.DataSource:=DMESTOQUE.DSSlaveServ;
       //Repassa os descontos aplicados
       AplicaDescProdBasePercento;
   Except

   End;

End;

//Função Responsável por aplicar Descontos nos produtos tendo como base o campo em percentual
Function TFOrdemLoca.AplicaDescProdBasePercento: Boolean;
Begin
	Try
   	If (XSubTotProdutos>0) and (EdDescProdutos.ValueNumeric>0) Then
       	EdValorProdutos.ValueNumeric:=XSubTotProdutos-((XSubTotProdutos*EdDescProdutos.ValueNumeric) /100)
       Else
           EdValorProdutos.ValueNumeric:=XSubTotProdutos;
       //Repassa somatorio para edits de totais de ordem
       EdValorOrd2.ValueNumeric:=EdValorProdutos.ValueNumeric+EdTxEntrega.ValueNumeric;
       EdValorProdutos.ValueNumeric:=XSubTotProdutos;
      	lbSaldo.Caption:=FormatFloat('0.00',(EdValorOrd2.ValueNumeric-XVLRADIANT));
   Except
       EdValorProdutos.ValueNumeric:=0;
   End;
End;
//Zera marcação de acessorios
Procedure TFOrdemLoca.ZeraMarcaAcessorios;
Begin
	try
       MdoQueryClear;
       MDO.Query.SQL.Add(' update subproduto set subproduto.pureza=0 ');
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
   Except
   End;
End;
procedure TFOrdemLoca.Button1Click(Sender: TObject);
Var
	XResultado: Integer;
begin
  inherited;
   XResultado:=1;
  	//Seleciona todos os itens de acessorios marcados para serem inseridos
	DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' Select vwsimilar.contrint, vwsimilar.cod_estoque, vwsimilar.descricao, vwsimilar.estfisico, subproduto.pureza from vwsimilar');
   DMESTOQUE.Alx.SQL.Add(' left join subproduto on vwsimilar.cod_subproduto=subproduto.cod_subproduto ');
   DMESTOQUE.Alx.SQL.Add(' where (subproduto.usoconsumo=''5'') and (subproduto.pureza>0)');
   DMESTOQUE.Alx.Open;
   DMESTOQUE.Alx.First;
   While not DMESTOQUE.Alx.Eof do
   Begin
   	//insere os itens de ordem como acessorios um a um
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('insert into itprodord');
       MDO.Query.SQL.Add('(COD_ESTOQUE, COD_ORDEM, QTD, VLRUNIT, DESCONTO, TOTAL,');
       MDO.Query.SQL.Add('DATA, COD_FUNCIONARIO, COD_CST, VALCUSTO, COEFDIV, VALCOMP, LUCMOE, LUCPER, VALREP,'); 
       MDO.Query.SQL.Add('NUMREQ, QTDRET, COMISSAO, VLRVENDBD, LUCREL, OPERACAO, BASEICMS,');
       MDO.Query.SQL.Add('VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI, REDUCBASEICMS, VLRICMSSUBS,DATA_GARANTIA,KMGARANTIA)');
       MDO.Query.SQL.Add('values');
       MDO.Query.SQL.Add('(:COD_ESTOQUE, :COD_ORDEM, :QTD, :VLRUNIT, :DESCONTO,');
       MDO.Query.SQL.Add(':TOTAL, :DATA, :COD_FUNCIONARIO, :COD_CST, :VALCUSTO, :COEFDIV, :VALCOMP, :LUCMOE,');
       MDO.Query.SQL.Add(':LUCPER, :VALREP, :NUMREQ, :QTDRET, :COMISSAO, :VLRVENDBD, :LUCREL,');
       MDO.Query.SQL.Add(':OPERACAO, :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRIPI, :ALIQIPI,');
       MDO.Query.SQL.Add(':REDUCBASEICMS, :VLRICMSSUBS, :DATA_GARANTIA, :KMGARANTIA)');
       MDO.Query.ParamByName('ALIQIPI').AsCurrency := 0;
       MDO.Query.ParamByName('BASEICMS').AsCurrency := 0;
       MDO.Query.ParamByName('BASEICMSSUBS').AsCurrency := 0;
       MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := DMESTOQUE.Alx.FieldByName('cod_estoque').AsInteger;
       MDO.Query.ParamByName('COD_FUNCIONARIO').AsInteger := XCOD_VENDEDOR;
       MDO.Query.ParamByName('COD_CST').AsString := '0';
       MDO.Query.ParamByName('COD_ORDEM').AsInteger := XCodOrdem;
       MDO.Query.ParamByName('COEFDIV').AsCurrency := 0;
       MDO.Query.ParamByName('DATA').AsString:= EdData.Text;
       MDO.Query.ParamByName('OPERACAO').AsString :='ACES';
       MDO.Query.ParamByName('QTD').AsCurrency := DMESTOQUE.Alx.FieldByName('PUREZA').AsCurrency;
       MDO.Query.ParamByName('TOTAL').AsCurrency := 0;
       MDO.Query.ParamByName('VALCOMP').AsCurrency := 0;
       MDO.Query.ParamByName('VALCUSTO').AsCurrency := 0;
       MDO.Query.ParamByName('VALREP').AsCurrency := 0;
       MDO.Query.ParamByName('VLRICMS').AsCurrency := 0;
       MDO.Query.ParamByName('VLRICMSSUBS').AsCurrency := 0;
       MDO.Query.ParamByName('VLRIPI').AsCurrency := 0;
       MDO.Query.ParamByName('VLRUNIT').AsCurrency := 0;
       Try
       	MDO.Query.ExecSQL;
           Try
               //ANGELO - 22/06/2015 - O estoque somente deve ser atualizado na retirada dos itens
       		//Atualiza Estoque
               //MdoQueryClear;
               //MDO.Query.SQL.Add(' update estoque set estoque.estfisico=estoque.estfisico-:Estoque where estoque.cod_estoque=:codigo ');
               //MDO.Query.ParamByName('Estoque').AsCurrency:=DMESTOQUE.Alx.FieldByName('PUREZA').AsCurrency;
               //MDO.Query.ParamByName('codigo').AsCurrency:=DMESTOQUE.Alx.FieldByName('cod_estoque').AsInteger;
               //MDO.Query.ExecSQL;
           Except
               XResultado:=0;
               //MessageDlg('O ESTOQUE NÃO FOI ATUALIZADO', mtWarning, [mbOK], 0);
           End;
       Except
           XResultado:=0;
           MessageDlg('O ITEM NÃO FOI INSERIDO A LISTA', mtWarning, [mbOK], 0);
       End;
       DMESTOQUE.Alx.Next;
   End;
   
   If XResultado=1 Then
       MDO.Transac.CommitRetaining
   Else
       MDO.Transac.RollbackRetaining;
       
   PAdicionaAcessorios.Visible:=False;
   PAdicionaAcessorios.SendToBack;
   FiltraSlave;
end;

//Função para retornar dados de filtro Ordem de Serviços
Procedure TFOrdemLoca.FiltraOrdem(XSql: String);
Var
	XAux, XFiltro, XOrdem: String;
Begin
	Try
       //Verifica Filtros
       if XSql<>''then
			XFiltro := ' WHERE (VWORDEM.NUMERO IS NOT NULL) '
      	else begin
           If CBFILTRO.Text='ABERTAS' Then
               XFiltro:=' WHERE ((VWORDEM.STATUS='+#39+'ABERTO'+#39+') OR (VWORDEM.STATUS='+#39+'RETORNADO'+#39+')) ';
           If CBFILTRO.Text='FECHADAS' Then
               XFiltro:=' WHERE (VWORDEM.STATUS='+#39+'FECHADO'+#39+') ';

           //Edmar - 03/02/2015 - Novos filtros adicionados
           if CBFILTRO.Text='LIBERADAS' then
               XFiltro:=' WHERE (VWORDEM.STATUS= ''LIBERADO'') ';

       	if CBFILTRO.Text='RETIRADAS' then
           	XFiltro:=' WHERE (VWORDEM.STATUS = ''RETIRADO'') ';
               
       	if CBFILTRO.Text='RETORNADAS' then
           	XFiltro:=' WHERE (VWORDEM.STATUS = ''RETORNADO'') ';

       	if CBFILTRO.Text='BONIFICADAS' then
           	XFiltro:=' WHERE (VWORDEM.STATUS = ''BONIFICAÇÃO'') ';

       	if CBFILTRO.Text='ANULADAS' then
           	XFiltro:=' WHERE (VWORDEM.STATUS = ''ANULADA'') ';

           if CBFILTRO.Text = 'TODAS' then
           begin
           	if rbSim.Checked then
           		XFiltro := ' WHERE (ORDEM.LOCALAT = ''Sim'') ';
               if rbNao.Checked then
               	XFiltro := ' WHERE (ORDEM.LOCALAT = ''Não'') ';
           end
           else begin
           	if rbSim.Checked then
           		XFiltro := XFiltro +  ' AND (ORDEM.LOCALAT = ''Sim'') ';
               if rbNao.Checked then
               	XFiltro := XFiltro +  ' AND (ORDEM.LOCALAT = ''Não'') ';
           end;
       end;

       If CbFiltroPagamentos.Text<>'TODAS'
       Then Begin
       	XFiltro:=XFiltro+' AND (VWORDEM.FORMAPAG = '+#39+CbFiltroPagamentos.Text+#39+') ';
       End;

       //Verifica Ordenação
   	If CBORDEM.Text='+ RECENTE' Then
           XOrdem:=' order by vwordem.cod_ordem DESC, vwordem.cliente ';
   	If CBORDEM.Text='NUMERO' Then
           XOrdem:=' order by vwordem.numero, vwordem.cliente, vwordem.cod_ordem desc ';
   	If CBORDEM.Text='CLIENTE' Then
           XOrdem:=' order by vwordem.CLIENTE, vwordem.numero, vwordem.cod_ordem desc ';
   	If CBORDEM.Text='DATA' Then
           XOrdem:=' order by vwordem.dtabert, vwordem.numero, vwordem.cliente, vwordem.cod_ordem desc ';
       if XSql<>''then
           XAux:='AND'
       else
           XAux:='';
       {
       if (CBFILTRO.Text='TODAS') and (XSql<>'') then
          XAux:='where';
       }
       dmserv.WOrdemDesp.Close;
       DMServ.WOrdemDesp.SQL.Clear;
       DMServ.WOrdemDesp.SQL.Add('   select vwordem.cod_cliente, equipamento.descricao AS OBRA, vwordem.COD_VENDEDOR, formpag.descricao as FORMPAG, vwordem.status, vwordem.cod_ordem, ');
       DMServ.WOrdemDesp.SQL.Add('      vwordem.numero, vwordem.cliente, vwordem.dtabert, vwordem.dtfech, vwordem.total, ordem.localat ');
       DMServ.WOrdemDesp.SQL.Add('       from vwordem ');
       DMServ.WOrdemDesp.SQL.Add('       left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
       DMServ.WOrdemDesp.SQL.Add('       Left join vwcliente on vwordem.cod_cliente = vwcliente.cod_cliente ');
       DMServ.WOrdemDesp.SQL.Add('       left join cliente on vwordem.cod_vendedor = cliente.cod_cliente ');
       DMServ.WOrdemDesp.SQL.Add('       left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
       DMServ.WOrdemDesp.SQL.Add('       left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
       DMServ.WOrdemDesp.SQL.Add('       left join equipamento ON ordem.cod_equipamento = equipamento.cod_equipamento ');
       DMServ.WOrdemDesp.SQL.Add(XFiltro + ' ' + XAux + ' ' + XSql + ' ' + XOrdem);
       //DMServ.WOrdemDesp.SQL.Add(XFiltro + ' ' + XSql + ' ' + XOrdem);       
       DMServ.WOrdemDesp.SQL.text;
       DMServ.WOrdemDesp.Open;

		DBGridCadastroPadrao.DataSource:=DMServ.DWOrdemDesp;
   Except
   End;
End;

procedure TFOrdemLoca.BtnCancelarClick(Sender: TObject);
begin
  inherited;
	// se nao possui servico e nem produtos eh exibido a mensagem - SEGUNDO SOLICITAÇÃO É OBRIGATORIO PODER GRAVAR SEM SERVICO
   If (DMESTOQUE.TSlave.IsEmpty) and (DMESTOQUE.TSlaveServ.IsEmpty)
   Then Begin
   	If Mensagem('   A T E N Ç Ã O   ','A Ordem de Serviço atual não possui produtos e serviços inclusos. Deseja apagá-la ?','',2,3,false,'A')=2
       Then Begin
	    	//Apaga ORDEM
			FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCodOrdem), '');
			Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.TOrd.FieldByName('TOTORD').AsString);
			DMServ.TOrd.Delete;
           
          	//Confirma Transação
          	DMSERV.IBT.CommitRetaining;
          	//atualiza vew
           FiltraOrdem('');
           PCadastro.Visible:=False;
           PConsulta.Visible:=true;
           PConsulta.BringToFront;
           BtnItensretornados.Font.Style:=([]);
           BtnOrdemdeServico.Font.Style:=([fsbold]);
           Exit;
		End;
   End;
   Try
   	//insere em banco de dados a ordem preliminar
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' update ordem set ordem.EDIT=:EDIT Where ordem.cod_ordem=:codigo ');
       MDO.Query.ParamByName('codigo').AsInteger:=XCodOrdem;
       MDO.Query.ParamByName('EDIT').AsString:='0';
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       DMServ.IBT.CommitRetaining;
   Except
       MDO.Transac.RollbackRetaining;
   End;

   xCtrlDesgaste := False;
   PCadastro.Visible:=False;
   PConsulta.Visible:=True;
   PConsulta.BringToFront;

end;

//Grava Ordem
Function TFOrdemLoca.GravaOrdem: Boolean;
Var
	XNumero: Integer;
   XStatus: String;
Begin
	Result:=True;
   //Validações
   If XCodTabela=-1
   Then Begin
       MessageDlg('É preciso informar uma tabela de preço.', mtWarning, [mbOK], 0);
       Result:=False;
       Exit;
   End;
	//Angelo 07/08/2015 - Somente retém ISS se o cliente for pessoa Jurídica
   if (cbRtIss.checked) Then
   Begin
     MDO.QConsulta.Close;
     MDO.QConsulta.SQL.Clear;
     MDO.QConsulta.SQL.Add('select pessoa.cpfcnpj, cliente.* from pessoa ');
     MDO.QConsulta.SQL.Add('left join cliente on cliente.cod_pessoa=pessoa.cod_pessoa ');
     MDO.QConsulta.SQL.Add('where cliente.cod_cliente=:cod_cliente ');
     MDO.QConsulta.ParamByName('cod_cliente').AsInteger := XCodCliente;
     MDO.QConsulta.Open;
     MDO.QConsulta.First;
     If Not(MDO.QConsulta.Eof) Then
     Begin
       if Not (ValidaCGC(MDO.QConsulta.FieldByName('cpfcnpj').AsString)) Then
       Begin
         Mensagem('Atenção', 'Não é possível reter iss para pessoa física!', '', 1, 1, false, 'i');
         Exit;
       End;
     End;
   End;

   Try
       //verificamos se os itens da OS já foram retirados para marcarmos ela como retronado
       MdoQConsultaClear;
       MDO.QConsulta.SQL.Add(' Select itprodord.cod_itprodord from itprodord where ((itprodord.qtdret<>-2000)) and (itprodord.cod_ordem=:codigo) ');
       MDO.QConsulta.ParamByName('codigo').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_ordem').AsInteger;
       MDO.QConsulta.Open;
       If MDO.QConsulta.IsEmpty
       Then Begin
           XStatus:='RETIRADO';
       End
       Else Begin
           //verificamos se os itens da OS já foram retirados para marcarmos ela como retronado
           MdoQConsultaClear;
           MDO.QConsulta.SQL.Add(' Select itprodord.cod_itprodord from itprodord where ((itprodord.qtdret<>-5000)) and (itprodord.cod_ordem=:codigo) ');
           MDO.QConsulta.ParamByName('codigo').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_ordem').AsInteger;
           MDO.QConsulta.Open;
           If MDO.QConsulta.IsEmpty
           Then Begin
               XStatus:='RETORNADO';
           End
           Else Begin
               XStatus:='ABERTO';
           End;
       End;
   	//insere em banco de dados a ordem preliminar
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       {
       MDO.Query.SQL.Add(' update ordem set ordem.box=:box, ordem.cod_cliente=:cod_cliente,  ordem.cod_equipamento=:cod_obra, ');
       MDO.Query.SQL.Add('         ordem.cod_formpag=:cod_formpag, ordem.cod_loja=:cod_loja, ordem.cod_tabelapreco=:COD_TABELAPRECO, ');
       MDO.Query.SQL.Add('         ordem.cod_usuario=:cod_usuario, ordem.cod_vendedor=:cod_vendedor,  ordem.dtabert=:dtabert,');
       MDO.Query.SQL.Add('         ordem.desconto=:desconto, ORDEM.CONTATO=:CONTATO,  ordem.totprod=:totprod, ordem.totord=:totord, ');
       MDO.Query.SQL.Add('         ordem.EDIT=:EDIT, ordem.numero=:numero, ordem.observacao=:observacao, ordem.status=:status, ordem.VLRADIANTAMENTO=:VLRADIANTAMENTO, ordem.TOTAJUDANTE=:TOTAJUDANTE, ordem.mark=:mark ');
       MDO.Query.SQL.Add('         Where ordem.cod_ordem=:codigo ');
       }

       MDO.Query.SQL.Add(' update ordem set ordem.box=:box, ordem.cod_cliente=:cod_cliente,  ordem.cod_equipamento=:cod_obra, ');
       MDO.Query.SQL.Add('         ordem.cod_formpag=:cod_formpag, ordem.cod_loja=:cod_loja, ordem.cod_tabelapreco=:COD_TABELAPRECO, ');
       MDO.Query.SQL.Add('         ordem.cod_usuario=:cod_usuario, ordem.cod_vendedor=:cod_vendedor,  ordem.dtabert=:dtabert,');
       MDO.Query.SQL.Add('         ordem.desconto=:desconto, ORDEM.CONTATO=:CONTATO,  ordem.totprod=:totprod, ordem.totord=:totord, ');
       MDO.Query.SQL.Add('         ordem.EDIT=:EDIT, ordem.numero=:numero, ordem.observacao=:observacao, ordem.VLRADIANTAMENTO=:VLRADIANTAMENTO, ordem.TOTAJUDANTE=:TOTAJUDANTE, ordem.mark=:mark,ordem.geranfse=:geranfse, TOTISS=:TOTISS, RT_ISS =:RT_ISS ');
       MDO.Query.SQL.Add('         Where ordem.cod_ordem=:codigo ');

       MDO.Query.ParamByName('codigo').AsInteger:=XCodOrdem;
       MDO.Query.ParamByName('cod_cliente').AsInteger:=XCodCliente;
       MDO.Query.ParamByName('cod_obra').AsInteger:=XCOD_OBRA;
       MDO.Query.ParamByName('cod_formpag').AsInteger:=XCodFormPag;
       MDO.Query.ParamByName('cod_loja').AsString:=FMenu.LCODLOJA.Caption;
       MDO.Query.ParamByName('cod_usuario').AsString:=FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('cod_vendedor').AsInteger:=XCodVendedor;
       MDO.Query.ParamByName('COD_TABELAPRECO').AsInteger:=XCodTabela;
       MDO.Query.ParamByName('EDIT').AsString:='0';
       MDO.Query.ParamByName('numero').AsString:=EdNumero.Text;
       MDO.Query.ParamByName('observacao').AsString:=MObs.Text;
//       MDO.Query.ParamByName('status').AsString:=XStatus;
       MDO.Query.ParamByName('contato').AsString:=EdResponsavelRetirada.Text;
       MDO.Query.ParamByName('dtabert').AsString:=EdData.Text;
       MDO.Query.ParamByName('totprod').AsCurrency:=EdValorOrd2.ValueNumeric;
       MDO.Query.ParamByName('TOTAJUDANTE').AsCurrency:=EdTxEntrega.ValueNumeric;
       MDO.Query.ParamByName('desconto').AsCurrency:=EdDescProdutos.ValueNumeric;
       MDO.Query.ParamByName('totord').AsCurrency:=EdValorOrd2.ValueNumeric;
       MDO.Query.ParamByName('VLRADIANTAMENTO').AsCurrency:= EdVlrAdiantamento.ValueNumeric;
       MDO.Query.ParamByName('TOTAJUDANTE').AsCurrency:= EdTxEntrega.ValueNumeric;
       MDO.Query.ParamByName('MARK').AsString := '';
       if (cBNfse.checked) then
       	MDO.Query.ParamByName('GERANFSE').AsString := '1'
       else
       	MDO.Query.ParamByName('GERANFSE').AsString := '0';
        MDO.Query.ParamByName('TOTISS').AsCurrency := EdVlrIss.ValueNumeric;
       if (cbRtIss.checked) Then
         MDO.Query.ParamByName('RT_ISS').AsString := '1'
       else
         MDO.Query.ParamByName('RT_ISS').AsString := '2';

       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       DMServ.IBT.CommitRetaining;
       BtnItensretornados.Font.Style:=([]);
       BtnOrdemdeServico.Font.Style:=([fsbold]);
   Except
       MDO.Transac.RollbackRetaining;
       Result:=False;
   End;
End;

procedure TFOrdemLoca.BtnGravarClick(Sender: TObject);
begin
//  inherited;
   If GravaOrdem=True
   Then Begin
       PCadastro.Visible:=False;
       PConsulta.Visible:=True;
       PConsulta.BringToFront;
       xCtrlDesgaste := False;
       FiltraOrdem('');
   End;
end;

procedure TFOrdemLoca.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\OrdemLoc.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdemLoca.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   if (DMServ.WOrdemDesp.FieldByName('STATUS').AsString='ABERTO')
   Then Begin
       DBGridCadastroPadrao.Canvas.Font.Color := clRed;
       DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;

   if (DMServ.WOrdemDesp.FieldByName('STATUS').AsString='LIBERADO')
   Then Begin
       DBGridCadastroPadrao.Canvas.Font.Color := clGray;
       DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
   
   if (DMServ.WOrdemDesp.FieldByName('STATUS').AsString='RETIRADO')
   Then Begin
       DBGridCadastroPadrao.Canvas.Font.Color := clGreen;
       DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
   
	if (DMServ.WOrdemDesp.FieldByName('STATUS').AsString='RETORNADO') then
   //if (DMServ.WOrdemDesp.FieldByName('STATUS').AsString = 'FECHADO') then
   begin
       DBGridCadastroPadrao.Canvas.Font.Color := clNavy;
       DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;

procedure TFOrdemLoca.Button3Click(Sender: TObject);
begin
  inherited;
	AbrirForm(TFCadAcessorios, FCadAcessorios, 1);
	FiltraAcessoriosParaInsercao;
end;

procedure TFOrdemLoca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   // CTRL + D -> eh o comando para desbloquear a ordem de servico caso tenha ocorrido algum problema
   // qdo estava sendo consultada e caiu energia, ou foi pressionado F4 (por exemplo) e nao passou pelo
   // botão GRAVAR ou CANCELAR que liberar a ordem
   If (shift=[ssCtrl]) and (key = 68)
   Then Begin
       // faz o filtro na tabela para verificar se ela esta realmente bloqueada
       FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMServ.WOrdemDesp.FieldByname('cod_ordem').AsString,'');

       // se ela nao estiver bloqueada eh exibida a msg e finalizada a operação
       If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
       Then Begin
           If Mensagem('   A T E N Ç Ã O   ','Deseja desbloquear a Ordem nº ' + DMServ.WOrdemDesp.FieldByName('numero').AsString + ' ?','',2,3,false,'A')=2
           Then Begin

               // abre formulario de senha
               AbrirForm(TFSenha,FSenha,0);

               // caso tenha informado os dados do administrador correto, a OS eh liberada
               If XAlxResult = true
               Then Begin
                   // liberando a ordem para consulta
                   DMServ.TOrd.Edit;
                   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                   DMServ.TOrd.Post;
                   DMServ.TOrd.ApplyUpdates;
                   DMServ.IBT.CommitRetaining;
               End;
           End;
       End;
   End;

   if (Key = VK_F9) AND (PConsulta.Visible) then
       BtnSelecionaOrdem.Click;
end;

procedure TFOrdemLoca.BtnDeleteProdClick(Sender: TObject);
begin
  inherited;
	If FiltraTabela(DMESTOQUE.TEstoque, 'estoque', 'cod_estoque', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '')
   Then Begin
       Try
           //Atualiza Estoque
//           DMEstoque.TEstoque.Insert;
			{Edmar - 29/01/2015 - O estoque não é mais atualiza no hora de retirar o item
			todo o tratamento agora é feito na tela de expedição
           DMEstoque.TEstoque.Edit;
           DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency;
           DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
           DMESTOQUE.TEstoque.Post;
           }

       	MDO.Query.Close;
       	MDO.Query.SQL.Clear;
       	MDO.Query.SQL.Add(' Delete from itprodord where itprodord.cod_itprodord=:codigo ');
           MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_itprodord').AsInteger;
           MDO.Query.ExecSQL;

           DMESTOQUE.TransacEstoque.CommitRetaining;
           MDO.Transac.CommitRetaining;
       Except
           DMESTOQUE.TransacEstoque.RollbackRetaining;
           MDO.Transac.Rollback;
           MessageDlg('O ESTOQUE NÃO FOI ATUALIZADO', mtWarning, [mbOK], 0);
       End;
       //XCOD_ESTOQUE:=-1;

       //Paulo 16/02/2012: Reescreve as label com o produto excluido
       XCOD_ESTOQUE:=DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
       FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', IntToStr(XCOD_ESTOQUE),'');
       EscreveLabelsPROD;
       EdVlrUnitProd.Text:=FormatFloat('#,###0.00',DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency);
       EdDtSaida.Date:=DMESTOQUE.TSlave.FieldByName('DTRETIRADA').AsDateTime;
       EdDtRetorno.Date:=DMESTOQUE.TSlave.FieldByName('DTRETORNO').AsDateTime;
       EdHrSaida.Text:=DMESTOQUE.TSlave.FieldByName('HRRETIRADA').AsString;
       edHrRetorno.Text := DMESTOQUE.TSlave.FieldByName('HRRETORNO').AsString;
       EdQuantProd.Text:=DMESTOQUE.TSlave.FieldByName('QTD').AsString;
       EdVlrTotProd.Text:=FormatFloat('#,###0.00',DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency);
       edQtdeSaida.Text := FormatFloat('#,###0.00',DMESTOQUE.TSlave.FieldByName('DESGASTE_SAIDA').AsCurrency);
       edQtdeRetorno.Text := FormatFloat('#,###0.00',DMESTOQUE.TSlave.FieldByName('DESGASTE_RETORNO').AsCurrency);
       edQtdeConsumida.Text := FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('DESGASTE_CONSUMIDO').AsCurrency);
       edQtdeHrSaida.Text := FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('QTDE_HORA_SAIDA').AsCurrency);
       edQtdeHrRetorno.Text := FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('QTDE_HORA_RETORNO').AsCurrency);
       edQtdeHrConsumidas.Text := FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('QTDE_HORA_CONSUMIDA').AsCurrency);

       //Edmar - 24/06/2014 - Filtra buscando se o produto selecionado fará controle de desgaste
       if FiltraTabela(DMESTOQUE.Alx, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, 'AND (CTRL_DESGASTE = ''1'')') OR
			(DMESTOQUE.TSlave.FieldByName('CTRL_HORA').AsString = '1') then
           xCtrlDesgaste := True
       else
           xCtrlDesgaste := False;

       EscondeMostraPaineis;
       
       FiltraSlave;
       DbFaixaPreco.SetFocus;
       EfetuaCalculoISS;
       RetemIss;
   End;
end;

procedure TFOrdemLoca.EdBuscaAcessorioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If (Key=Vk_f2) and (key<>Vk_F3)
   Then Begin
       If AbrirForm(TFCadAcessorios, FCadAcessorios, 1)='Selected'
       Then Begin
       	If EdQuantAcessorio.Text<>''
           Then Begin
               XCOD_ACESSORIO:={ DMESTOQUE.Alx5.FieldByName('COD_ESTOQUE').AsInteger; //}DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
               //EscreveLabelsPROD;
               PListaAcessorios.Visible:=False;
               If EdQuantAcessorio.ValueNumeric=0 Then
                   EdQuantAcessorio.ValueNumeric:=1;
               EdQuantAcessorio.SetFocus;
           End;
       End;
   End;
end;

procedure TFOrdemLoca.EdBuscaAcessorioKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	If PListaAcessorios.Visible=False
   Then Begin
   	If EdQuantAcessorio.Text<>''
       Then Begin
           PListaAcessorios.Top:=240;
           PListaAcessorios.Left:=580;
           PListaAcessorios.Visible:=True;
           PListaAcessorios.BringToFront;
           DMESTOQUE.Alx5.Close;
           DMESTOQUE.Alx5.SQL.Clear;
           DMESTOQUE.Alx5.SQL.Add(' select * from vwsimilar ');
           DMESTOQUE.Alx5.SQL.Add(' left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
           DMESTOQUE.Alx5.SQL.Add(' where subproduto.usoconsumo=''5'' order by vwsimilar.descricao  ');
           DMESTOQUE.Alx5.Open;
       End;
   End;
   If Key=Vk_ESCAPE
   Then Begin
       PListaAcessorios.Visible:=False;
       LimpaLabelsAces;
   End;
   If Key<>Vk_Return
   Then Begin
   	If (Key=VK_down) or (Key=VK_Up)
       Then Begin
       	If (Key=VK_down) Then
               //DMESTOQUE.WSimilar.Next;
               DMESTOQUE.Alx5.Next;
       	If (Key=VK_Up) Then
               //DMESTOQUE.WSimilar.Prior;
               DMESTOQUE.Alx5.Prior;
       End
       Else Begin
           If DMESTOQUE.Alx5.Locate('descricao', UpperCase(EdBuscaAcessorio.Text),[loPartialKey])=false
           Then Begin
               If DMESTOQUE.Alx5.Locate('contrint', UpperCase(EdBuscaAcessorio.Text),[loPartialKey])=false
               Then Begin
                   XCodTmpEstoque:=DBGListaAcessorios.Columns[0].Field.Text;
               End;
           End
           Else Begin
               XCodTmpEstoque:=DBGListaAcessorios.Columns[0].Field.Text;
           End;
       End;
   End
   Else Begin
   	If EdBuscaAcessorio.Text<>''
       Then Begin
           XCodTmpEstoque:=DBGListaAcessorios.Columns[0].Field.Text;
           If XCodTmpEstoque<>''
           Then Begin
               DMESTOQUE.Alx5.Close;
               DMESTOQUE.Alx5.SQL.Clear;
               DMESTOQUE.Alx5.SQL.Add('  select * from vwsimilar ');
               DMESTOQUE.Alx5.SQL.Add('  left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
               DMESTOQUE.Alx5.SQL.Add('  where (subproduto.usoconsumo='+#39+'5'+#39+')  and (vwsimilar.cod_estoque=:codigo)' );
               DMESTOQUE.Alx5.ParamByName('codigo').AsString:=XCodTmpEstoque;
               DMESTOQUE.Alx5.Open;
               If not DMESTOQUE.Alx5.IsEmpty
               Then Begin
                   XCOD_ACESSORIO:=DMESTOQUE.Alx5.FieldByName('COD_ESTOQUE').AsInteger;
                   EscreveLabelsACES;
                   PListaAcessorios.Visible:=False;
                   If EdQuantAcessorio.ValueNumeric=0 Then
                       EdQuantAcessorio.ValueNumeric:=1;
                   If XCOD_ACESSORIO>0 Then
                       EdQuantAcessorio.SetFocus;
               End
               Else Begin
                   XCOD_ACESSORIO:=-1;
                   LimpaLabelsAces;
               End;
           End;
       End;
   End;

end;
   Function TFOrdemLoca.validCurrency(const s: string) : boolean;
   var
   i : byte;
   begin
       Result := false;
       for i := 1 to length(s) do
       if not (s[i] in ['0'..'9']) then
           exit;
       Result := true;
   end;

procedure TFOrdemLoca.BitBtn2Click(Sender: TObject);
Var xValorLocAcess : Real;
    xValorLocInf : String;
begin
  inherited;
   XCOD_ACESSORIO := DMESTOQUE.Alx4.FieldByName('cod_estoque').AsInteger;
   If XCOD_ACESSORIO>0
   Then Begin
		//Angelo - 08/07/2015 - Verifica se o acessório possui valor de locação e armazena o valor informado
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('SELECT VALORLOCA FROM ACESSORIOS WHERE COD_EQUIPAMENTO=:EQUIP');
       MDO.QConsulta.ParamByName('EQUIP').AsInteger := XCOD_ACESSORIO;
       MDO.QConsulta.Open;
       MDO.QConsulta.First;
       xValorLocAcess := 0;
		if (MDO.QConsulta.FieldByName('VALORLOCA').AsString = '1') Then
       Begin
         repeat
           if not InputQuery('VALOR DE LOCAÇÃO', 'O acessório possui valor de locação. Informe o valor a ser cobrado no formato 9999,99 ', xValorLocInf)
    	      then ShowMessage('Valor inválido! O acessório não será inserido!');
  		  until validCurrency(tiraCaracter(xValorLocInf,','));
         if ( Not(validCurrency(tiraCaracter(xValorLocInf,','))) or (xValorLocInf='') ) Then
           Exit;
         xValorLocAcess := StrToCurr(xValorLocInf);
       end;
       //INSERE O ITEM A LISTA
       Try

           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add('insert into itprodord');
           MDO.Query.SQL.Add('(COD_ESTOQUE, COD_ORDEM, QTD, VLRUNIT, DESCONTO, TOTAL,');
           MDO.Query.SQL.Add('DATA, DTRETIRADA, DTRETORNO, COD_FUNCIONARIO, COD_CST, VALCUSTO, COEFDIV, VALCOMP, LUCMOE, LUCPER, VALREP,');

           MDO.Query.SQL.Add('NUMREQ, QTDRET, COMISSAO, VLRVENDBD, LUCREL, OPERACAO, ALIQICMS, BASEICMS,');
           MDO.Query.SQL.Add('VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI, REDUCBASEICMS, VLRICMSSUBS,DATA_GARANTIA, KMGARANTIA)');
           MDO.Query.SQL.Add('values');
           MDO.Query.SQL.Add('(:COD_ESTOQUE, :COD_ORDEM, :QTD, :VLRUNIT, :DESCONTO,');
           MDO.Query.SQL.Add(':TOTAL, :DATA, :DTRETIRADA, :DTRETORNO, :COD_FUNCIONARIO, :COD_CST, :VALCUSTO, :COEFDIV, :VALCOMP, :LUCMOE,');
           MDO.Query.SQL.Add(':LUCPER, :VALREP, :NUMREQ, :QTDRET, :COMISSAO, :VLRVENDBD, :LUCREL,');
           MDO.Query.SQL.Add(':OPERACAO, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRIPI, :ALIQIPI,');
           MDO.Query.SQL.Add(':REDUCBASEICMS, :VLRICMSSUBS, :DATA_GARANTIA, :KMGARANTIA)');
           MDO.Query.ParamByName('ALIQICMS').AsCurrency := 0;
           MDO.Query.ParamByName('ALIQIPI').AsCurrency := 0;
           MDO.Query.ParamByName('BASEICMS').AsCurrency := 0;
           MDO.Query.ParamByName('BASEICMSSUBS').AsCurrency := 0;
           MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := XCOD_ACESSORIO;
           MDO.Query.ParamByName('COD_FUNCIONARIO').AsInteger := XCOD_VENDEDOR;
           MDO.Query.ParamByName('COD_CST').AsInteger := -1;
           MDO.Query.ParamByName('COD_ORDEM').AsInteger := XCodOrdem;
           MDO.Query.ParamByName('COEFDIV').AsCurrency := 0;
           MDO.Query.ParamByName('LUCMOE').AsCurrency := 0;
           //MDO.Query.ParamByName('DATA').AsString := '01/01/1900';
           MDO.Query.ParamByName('OPERACAO').AsString := 'ACES';
           MDO.Query.ParamByName('QTD').AsCurrency := EdQuantAcessorio.ValueNumeric;
           MDO.Query.ParamByName('TOTAL').AsCurrency := EdQuantAcessorio.ValueNumeric * xValorLocAcess;
           MDO.Query.ParamByName('VALCOMP').AsCurrency := 0;
           MDO.Query.ParamByName('VALCUSTO').AsCurrency := 0;
           MDO.Query.ParamByName('VALREP').AsCurrency := 0;
           MDO.Query.ParamByName('VLRICMS').AsCurrency := 0;
           MDO.Query.ParamByName('VLRICMSSUBS').AsCurrency := 0;
           MDO.Query.ParamByName('VLRIPI').AsCurrency := 0;
           MDO.Query.ParamByName('VLRUNIT').AsCurrency := xValorLocAcess;
           Try
               MDO.Query.ExecSQL;
               mdo.Transac.CommitRetaining;
               FiltraSlave;
               //ANGELO - 19/06/2015 - NÃO É MAIS NECESSÁRIO ATUALIZAR ESTOQUE NA CRIAÇÃO DA ORDEM
               {Try
                   //Atualiza Estoque
                   DMEstoque.TEstoque.edit;
                   DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency-EdQuantAcessorio.ValueNumeric;
                   DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
                   DMESTOQUE.TEstoque.Post;
                   DMESTOQUE.TransacEstoque.CommitRetaining;
               Except
                   DMESTOQUE.TransacEstoque.RollbackRetaining;
                   MessageDlg('O ESTOQUE NÃO FOI ATUALIZADO', mtWarning, [mbOK], 0);
               End; }
           Except
               mdo.Transac.CommitRetaining;
               MessageDlg('O ITEM NÃO FOI INSERIDO A LISTA', mtWarning, [mbOK], 0);
           End;
           XCOD_ACESSORIO:=-1;
           LimpaLabelsAces;
           EdBuscaAcessorio.SetFocus;
       Except
       End;
   End;
end;

procedure TFOrdemLoca.BitBtn3Click(Sender: TObject);
begin
  inherited;
	If FiltraTabela(DMESTOQUE.TEstoque, 'estoque', 'cod_estoque', DMESTOQUE.TSlaveServ.FieldByName('COD_ESTOQUE').AsString, '')
   Then Begin
       Try
           //ANGELO - 22-06/2015 - Estoque só é atualizado na retirada dos produtos
           //Atualiza Estoque
           //DMEstoque.TEstoque.edit;
           //DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+DMESTOQUE.TSlaveServ.FieldByName('QTD').AsCurrency;
           //DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
           //DMESTOQUE.TEstoque.Post;
           
       	MDO.Query.Close;
       	MDO.Query.SQL.Clear;
       	MDO.Query.SQL.Add(' Delete from itprodord where itprodord.cod_itprodord=:codigo ');
           MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.TSlaveServ.FieldByName('cod_itprodord').AsInteger;
           MDO.Query.ExecSQL;

           //DMESTOQUE.TransacEstoque.CommitRetaining;
           MDO.Transac.CommitRetaining;
       Except
           //DMESTOQUE.TransacEstoque.RollbackRetaining;
           MDO.Transac.Rollback;
           //MessageDlg('O ESTOQUE NÃO FOI ATUALIZADO', mtWarning, [mbOK], 0);
       End;
       XCOD_ACESSORIO:=-1;
       LimpaLabelsAces;
       FiltraSlave;
       EdBuscaAcessorio.SetFocus;
   End;

end;

procedure TFOrdemLoca.FrmFormaPagamentoBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
       XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormaPagamento.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormaPagamento.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   	FrmFormaPagamento.Repaint;
   End
   Else Begin
       XCodFormPag:=-1;
       FrmFormaPagamento.EDCodigo.Text:='';
       FrmFormaPagamento.EdDescricao.Text:='';
   End;
end;

procedure TFOrdemLoca.FrmFormaPagamentoEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       if FrmFormaPagamento.EDCodigo.Text<>''
       Then Begin
       	//seleciona a forma de pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', FrmFormaPagamento.EDCodigo.Text, '')
           Then Begin
               XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
              	FrmFormaPagamento.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
               FrmFormaPagamento.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
              XCodFormPag:=-1;
              FrmFormaPagamento.EDCodigo.Text:='';
              FrmFormaPagamento.EdDescricao.Text:='';
           End;
       End;
   End; 
end;

procedure TFOrdemLoca.FrmObraBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//Edmar - 04/12/2014 - Antes de abrir a tela de equipamento, filtra buscando
   //o cliente para que na tela de equipamento mostre somentes os equipamento do cliente da OS
	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCodCliente), '');
   
   If AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected'
   Then Begin
       XCOD_OBRA:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
 		FrmObra.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('PLACA').AsString;
       FrmObra.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
   End
   Else Begin
       if XCOD_OBRA=-1
       then begin
         //XCOD_EQUIPAMENTO:=-1;
         FrmObra.EDCodigo.Text:='';
         FrmObra.EdDescricao.Text:='';
         FrmObra.EDCodigo.SetFocus;
       end;
   End;
   FrmObra.Repaint;
end;

procedure TFOrdemLoca.FrmObraEDCodigoExit(Sender: TObject);
begin
  inherited;
  If FrmObra.EDCodigo.Text = ''
  then begin
       XCOD_OBRA:=-1;
       FrmObra.EDCodigo.Text:='';
       FrmObra.EdDescricao.Text:='';
  end;
end;

procedure TFOrdemLoca.CompdeAbertura1Click(Sender: TObject);
Var
	ContParc, Cod_Tmp: Integer;
   Xdesc1, Xdesc2, Xdesc3: String;
begin
  inherited;
  // FSDSRel.DataSet := DMESTOQUE.TSlave;
  // FSRel.Dataset := FSDSRel;

  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELABERTORD', 'M')=False Then
  		Exit;

   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

   //FILTRA DADOS PARA CABEÇALHO DA ORDEM
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add(' Select ordem.cod_ordem, ordem.totajudante, pessoa.nome, pessoaj.razao_social, pessoa.cpfcnpj, vwcidade.nome as cidade, ');
   DMServ.Alx.SQL.Add(' vwcidade.uf AS UF_ESTADO, pessoa.CEP, pessoa.bairro, pessoa.telrel, pessoa.endereco, pessoa.endnumero ');
   DMServ.Alx.SQL.Add(' from ordem ');
   DMServ.Alx.SQL.Add(' Left Join cliente on ordem.cod_cliente = cliente.cod_cliente ');
   DMServ.Alx.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
   DMServ.Alx.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
   DMServ.Alx.SQL.Add(' left join vwcidade on pessoa.cod_cidade = vwcidade.cod_cidade where ordem.cod_ordem=:codigo ');
   DMServ.Alx.ParamByName('codigo').AsInteger:=DMSERV.WOrdemDesp.FieldByNAme('COD_ORDEM').AsInteger;
   DMServ.Alx.Open;
   //FILTRA CLIENTE PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSERV.WOrdemDesp.FieldByNAme('COD_CLIENTE').AsString, '')=False
   Then Begin
   	MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
		Exit;
   End;

   //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '')=False
   Then Begin
   	MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK], 0);
   	Exit;
   End;
   //FILTRA PESSOA JURIDICA CASO EXISTA UMA PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TPessoaj, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');


   //FILTRA CIDADE DA EMPRESA
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByNAme('COD_CIDADE').AsString, '');

   //FILTRA ESTADO DA EMPRESA
   FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

   //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

   //FILTRA ORDEM PARA IMPRESSÃO
   If FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.WOrdemDesp.FieldByNAme('COD_ORDEM').AsString, '')=False Then
   	Exit;

   //FILTRA EQUIPAMENTO PARA IMPRESSÃO - obra
   If DMSERV.TOrd.FieldByNAme('COD_EQUIPAMENTO').AsString<>'' Then
      FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMSERV.TOrd.FieldByNAme('COD_EQUIPAMENTO').AsString, '');


   //FILTRA FORMA DE PAGAMENTO
   FiltraTabela(DMFINANC.TFormPag , 'FORMPAG', 'COD_FORMPAG', DMSERV.TOrd.FieldByNAme('COD_FORMPAG').AsString, '');

   //VENDEDOR
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(DMSERV.WOrdemDesp.FieldByNAme('cod_vendedor').AsInteger) , '');

   XCodOrdem:=DMSERV.WOrdemDesp.fieldbyname('COD_ORDEM').AsInteger;

   //FILTRA PRODUTOS, SERVIÇOS E DESPESAS
   //Paulo 24/01/2012: seleciona apenas os esquipamentos
   DMESTOQUE.TSlave.Close;
   DMESTOQUE.TSlave.SQL.Clear;
   DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque, itprodord.qtd, itprodord.total, ');
   DMESTOQUE.TSlave.SQL.Add('itprodord.vlrunit, subproduto.descricao, subproduto.marca, subproduto.contrint, subproduto.LOCALESTANTE, ');
   DMESTOQUE.TSlave.SQL.Add('itprodord.dtretirada, itprodord.hrretirada, itprodord.dtretorno, itprodord.hrretorno, itprodord.qtdret, itprodord.desgaste_saida, subproduto.ctrl_desgaste, ');
	DMESTOQUE.TSlave.SQL.Add('itprodord.ctrl_hora, itprodord.qtde_hora_saida ');
   DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TSlave.SQL.Add(' Where (itprodord.cod_ordem = :CODORDEM) and (itprodord.operacao <> :OPERACAO) ');
   DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCodOrdem;
   DMESTOQUE.TSlave.ParamByName('OPERACAO').AsString:='ACES';
   //DMESTOQUE.TSlave.SQL.Add('  order by itprodord.operacao  desc ');
   DMESTOQUE.TSlave.Open;
   If DMESTOQUE.TSlave.IsEmpty Then
   	MessageDlg('OS sem itens de locação', mtWarning, [mbOK], 0);

   //Paulo 24/01/2012: seleciona apenas os acessórios
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque, itprodord.qtd, itprodord.total, ');
   DMESTOQUE.TRel.SQL.Add('itprodord.vlrunit, subproduto.descricao,  itprodord.dtretirada,itprodord.hrretirada, itprodord.dtretorno, itprodord.hrretorno, itprodord.qtdret  ');
   DMESTOQUE.TRel.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.TRel.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TRel.SQL.Add(' Where (itprodord.cod_ordem = :CODORDEM) and (itprodord.operacao = :OPERACAO)  ');
   DMESTOQUE.TRel.ParamByName('CODORDEM').AsInteger:=XCodOrdem;
   DMESTOQUE.TRel.ParamByName('OPERACAO').AsString:='ACES';
   //DMESTOQUE.TRel.SQL.Add('  order by itprodord.operacao  desc ');
   DMESTOQUE.TRel.Open;
   If DMESTOQUE.TRel.IsEmpty Then
   	MessageDlg('OS sem acessórios', mtWarning, [mbOK], 0);



   // se a atividade for EQUIPE, eh selecionado as despesas
   If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE') and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='6')
   Then Begin
       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add('select despadic.cod_gerador, despadic.despesa, equipe.cod_equipe, equipe.descricao from despadic');
       DMESTOQUE.Alx4.SQL.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
       DMESTOQUE.Alx4.SQL.Add('where despadic.cod_gerador = :codigo');
       DMESTOQUE.Alx4.ParamByName('codigo').AsInteger := XCodOrdem;
       DMESTOQUE.Alx4.Open;
   End;


   //a situação financeira será gerado na tabela tmp para ser impressa
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' delete from tmp ');
   DMMACS.TMP.ExecSQL;
   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
   DMMACS.TMP.Open;

   Cod_Tmp:=1;
   If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
   Then Begin
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
       DMMACS.TMP.FieldByName('DESC1').AsString:='À Vista';
       if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger <> 10 then
       begin
           DMMACS.TMP.FieldByName('DESC2').AsString:=DMServ.TOrd.FieldByName('TIPOPAG').AsString;
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMServ.TOrd.FieldByName('totord').AsCurrency;
       end
       else begin
           DMMACS.TMP.FieldByName('OBS').AsString:=DMServ.TOrd.FieldByName('TIPOPAG').AsString;
           DMMACS.TMP.FieldByName('DESC3').AsString:=FormatFloat('#,###0.00', DMServ.TOrd.FieldByName('totord').AsCurrency);
       end;
       DMMACS.TMP.Post;
       Cod_Tmp:=Cod_Tmp+1;
	End
   Else Begin
       //insere sql necessária para filtrar parcelas da conta
       DMMacs.TALX.Close;
       DMMacs.TALX.sql.Clear;
       DMMacs.TALX.SQL.Add('SELECT parcelacr.dtvenc, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
       DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador='+#39+'ORD'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) ');
       DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:= XCodOrdem;
       DMMacs.TALX.Open;

       //Assume parcelas em campo blob de loja para após ser passado em relatóri
       Xdesc1:='';
       Xdesc2:='';
       Xdesc3:='';

       DMMACS.TALX.First;
       ContParc:=0;
       while not DMMACS.TALX.Eof do
       Begin
           //Paulo 28/06/2011: Para armazenar as parcelas somente p/ o modelo 10
           if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10 then
           begin
               Xdesc1:=Xdesc1+DMMacs.TALX.FieldByName('dtvenc').AsString+#13;
               Xdesc2:=Xdesc2+DMMacs.TALX.FieldByName('cobranca').AsString+#13;
               Xdesc3:=Xdesc3+FormatFloat('#,###0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+#13;
           end
           else begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
               DMMACS.TMP.FieldByName('DESC1').AsString:=DMMacs.TALX.FieldByName('dtvenc').AsString;
               DMMACS.TMP.FieldByName('DESC2').AsString:=DMMacs.TALX.FieldByName('cobranca').AsString;
               DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMMacs.TALX.FieldByName('valor').AsCurrency;
               DMMACS.TMP.Post;
               Cod_Tmp:=Cod_Tmp+1;
           end;
           DMMACS.TALX.Next;
           ContParc:=ContParc+1;
       End;
       //Paulo 28/06/2011: Para armazenar as parcelas somente p/ o modelo 10
       if DMMACS.TLoja.FieldByName('MODELOORDEM').AsInteger = 10 then
       begin
             DMMACS.TMP.Insert;
             DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
             DMMACS.TMP.FieldByName('DESC1').AsString:=Xdesc1;
             DMMACS.TMP.FieldByName('OBS').AsString:=Xdesc2;
             DMMACS.TMP.FieldByName('DESC3').AsString:=Xdesc3;
             DMMACS.TMP.Post;
       end;
   End;

   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('select parcelacr.dtvenc, parcelacr.valor, parcelacr.cobranca from ctareceber ');
   DMCONTA.TAlx.SQL.Add(' left join parcelacr on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
   DMCONTA.TAlx.SQL.Add(' where ctareceber.cod_gerador = :codigo ');
   DMCONTA.TAlx.ParamByName('CODIGO').AsInteger := XCodOrdem;
   DMCONTA.TAlx.Open;

   FSFORMPAG.DataSet := DMCONTA.TAlx;
   Fsrel.Dataset := FSFORMPAG;

   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
   DMMACS.TMP.Open;
   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrFAbertLocacao.frf');
   FSRel.ShowReport;    
end;

procedure TFOrdemLoca.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
  PmRelatorio.Popup(Left+PConsulta.left+Painel.left+ BtnRelatorio.Left, top+PConsulta.Top+Painel.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;

procedure TFOrdemLoca.DBGProdutosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
      if DMESTOQUE.TSlave.FieldByName('qtdret').AsString='-2000'
      then begin
           DBGProdutos.Canvas.Font.Color := clGreen;
           DBGProdutos.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      End
      Else Begin
           DBGProdutos.Canvas.Font.Color := clBlack;
           DBGProdutos.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      End;
end;

procedure TFOrdemLoca.MarcarcomoRetirado1Click(Sender: TObject);
begin
  inherited;
  	Try
       MdoQueryClear;
       MDO.Query.SQL.Add('update itprodord set itprodord.qtdret=''-2000'' where itprodord.cod_itprodord=:codigo');
       MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_itprodord').AsInteger;
       MDO.Query.ExecSQL;
       MDO.Query.Transaction.CommitRetaining; 
       FiltraSlave;
   Except
   End;

end;

procedure TFOrdemLoca.DesmarcarcomoRetirado1Click(Sender: TObject);
begin
  inherited;
  	Try
       MdoQueryClear;
       MDO.Query.SQL.Add('update itprodord set itprodord.qtdret=''-1000'' where itprodord.cod_itprodord=:codigo');
       MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_itprodord').AsInteger;
       MDO.Query.ExecSQL;
       MDO.Query.Transaction.CommitRetaining;
       FiltraSlave;
   Except
   End;
end;

procedure TFOrdemLoca.BitBtn1Click(Sender: TObject);
begin
  inherited;
   If DMServ.WOrdemDesp.FieldByName('STATUS').AsString='FECHADO'
   Then Begin
       MessageDlg('Esta Ordem já esta fechada!', mtInformation, [mbOK], 0);
       Exit;
   End;
	If MessageDlg('Deseja realmente marcar a OS como Retirada pelo Cliente?', mtWarning, [mbYes, mbNo], 0)=mryes
   Then Begin
       Try
           MdoQueryClear;
           MDO.Query.SQL.Add(' update itprodord set itprodord.qtdret=''-2000'' where itprodord.cod_ordem=:codigo ');
           MDO.Query.ParamByName('codigo').AsInteger:=DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger;
           MDO.Query.ExecSQL;
           MdoQueryClear;
           MDO.Query.SQL.Add(' update ordem Set ordem.status=''RETIRADO'' where ordem.cod_ordem=:Codigo ');
           MDO.Query.ParamByName('codigo').AsInteger:=DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger;
           MDO.Query.ExecSQL;

           MDO.Query.Transaction.CommitRetaining;
           FiltraOrdem('');
       Except
       End;
   End;
end;

procedure TFOrdemLoca.CBFILTROExit(Sender: TObject);
begin
  inherited;
   FiltraOrdem('');
end;

procedure TFOrdemLoca.CBFILTROClick(Sender: TObject);
begin
  inherited;
   FiltraOrdem('');
end;

procedure TFOrdemLoca.BitBtn4Click(Sender: TObject);
begin
  inherited;
   If DMServ.WOrdemDesp.FieldByName('STATUS').AsString='FECHADO'
   Then Begin
       MessageDlg('Esta Ordem já esta fechada!', mtInformation, [mbOK], 0);
       Exit;
   End;
	If MessageDlg('Deseja realmente marcar a OS como Retornada pelo Cliente?', mtWarning, [mbYes, mbNo], 0)=mryes
   Then Begin
       Try
           MdoQueryClear;
           MDO.Query.SQL.Add(' update itprodord set itprodord.qtdret=''-5000'' where itprodord.cod_ordem=:codigo ');
           MDO.Query.ParamByName('codigo').AsInteger:=DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger;
           MDO.Query.ExecSQL;
           MdoQueryClear;
           MDO.Query.SQL.Add(' update ordem Set ordem.status=''RETORNADO'' where ordem.cod_ordem=:Codigo ');
           MDO.Query.ParamByName('codigo').AsInteger:=DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger;
           MDO.Query.ExecSQL;
           MDO.Query.Transaction.CommitRetaining;

           // estrutura de repetição para retornar ao estoque todos os itens retirados para o cliente
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add(' Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.qtd, itprodord.cod_estoque, subproduto.contrint from itprodord ');
           MDO.QConsulta.SQL.Add(' Left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
           MDO.QConsulta.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
           MDO.QConsulta.SQL.Add(' Where (itprodord.cod_ordem = :CODORDEM) ');
           MDO.QConsulta.ParamByName('codigo').AsInteger:=DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger;
           MDO.QConsulta.Open;
           If not MDO.QConsulta.IsEmpty
           Then Begin
               LancaEstoqueCorrecaoGeneric('E', MDO.QConsulta.FieldByName('qtd').AsCurrency,  MDO.QConsulta.FieldByName('cod_ordem').AsInteger, 'Retorno de Locação OS: '+DMServ.WOrdemDesp.FieldByName('numero').AsString + ' Item: ');
               MDO.QConsulta.Next;
           End;
           FiltraOrdem('');
       Except
       End;
   End;
end;

procedure TFOrdemLoca.CBORDEMClick(Sender: TObject);
begin
  inherited;
   FiltraOrdem('');
end;

procedure TFOrdemLoca.CBORDEMExit(Sender: TObject);
begin
  inherited;
   FiltraOrdem('');
end;

procedure TFOrdemLoca.EDNumEnter(Sender: TObject);
begin
  inherited;
	If EDNum.Text = 'Número' then
   	EDNum.Text := ''
   Else
   	EDNum.SelectAll;
   EDNum.Font.Color := clBlack;
end;

procedure TFOrdemLoca.EDNumExit(Sender: TObject);
begin
  inherited;
   if Trim(EdNum.Text) = '' then
        EDNum.Text := 'Número';
   EDNum.Font.Color := clGray;
end;

procedure TFOrdemLoca.EDCliente1Enter(Sender: TObject);
begin
  inherited;
     if EDCliente1.Text = 'Cliente' then
         EDCliente1.Text := ''
     Else
     	  EDCliente1.SelectAll;
     EDCliente1.Font.Color := clBlack;
end;

procedure TFOrdemLoca.EDCliente1Exit(Sender: TObject);
begin
  inherited;
   If Trim(EDCliente1.Text) = '' then
        EDCliente1.Text := 'Cliente';
   EDCliente1.Font.Color := clGray;
end;

procedure TFOrdemLoca.BtnFechaPedClick(Sender: TObject);
begin
  inherited;   
   if DMServ.WOrdemDesp.FieldByName('STATUS').AsString = 'FECHADO' then
   begin
   	Mensagem(' I N F O R M A Ç Ã O ', 'Esta Ordem já se encontra fechada!', '', 1, 1, False, 'I');
       Exit;
   end;

   if DMServ.WOrdemDesp.FieldByName('STATUS').AsString <> 'RETORNADO' then
   begin
   	Mensagem(' I N F O R M A Ç Ã O ', 'Apenas Ordens de Serviço retornadas poderão ser fechadas!', '', 1, 1, False, 'I');
       Exit;
   end;   
   //

   //EFETUA CONTROLE DE ACESSO
   if ControlAccess('FECHORD', 'M')=False Then
  		Exit;

   if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente fechar a ordem de serviço '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+'?', '', 2, 3, False, 'C') = 2 then
   begin
   	try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE ORDEM SET ORDEM.STATUS = ''FECHADO'' WHERE ORDEM.COD_ORDEM = :ORDEM ');
           MDO.Query.ParamByName('ORDEM').AsInteger := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
           MDO.Query.ExecSQL;

			if DMServ.WOrdemDesp.FieldByName('LOCALAT').AsString <> 'Sim' then
           begin
           	if DMServ.WOrdemDesp.FieldByName('FORMPAG').AsString = 'MENSAL' then
                   FaturaOSMensal(DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger)
               else begin
                    if DMServ.WOrdemDesp.FieldByName('LOCALAT').AsString <> 'Sim' then
                       //BtnFechaPedClick(sender)
                       FecharOrdemDeServico
                    else
                        Mensagem(' I N F O R M A Ç Ã O ', 'Esta O.S. não pode ser faturada novamente.', '', 1, 1, False, 'I');
               end;
           end;

           MDO.Transac.CommitRetaining;

           FiltraOrdem('');
       except
           Mensagem(' A T E N Ç Ã O ', 'Não foi possível fechar a Ordem de Serviço. Reinicie o sistema e tente novamente.', '', 1, 1, False, 'A');
           MDO.Transac.RollbackRetaining;
       end;
   end;
end;

procedure TFOrdemLoca.FrmFormPagBTNOPENClick(Sender: TObject);
begin
  inherited;
   If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCodFormPag:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormPag.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormPag.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
       //Paulo 15/02/2012: mostra o checkbox para imprimir o recibo somente se for à vista
       if FrmFormPag.EdDescricao.Text = 'À VISTA' then
           CBImpRecibo.Visible:=true
       else
           CBImpRecibo.Visible:=false;
   End;
end;

procedure TFOrdemLoca.FrmContaBTNOPENClick(Sender: TObject);
Var
	Oper: Char;
begin
  inherited;
   Oper:='C';

   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'C';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCOD_CONTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmContaServ.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
   FrmContaServ.Refresh;
end;

//Fecha Ordem(joga no financeiro)
Function TFOrdemLoca.FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
Var
	 ATUFINANC: Boolean; //controle financeiro foram efetivados
   XVLRDESP:Real;//O VLR DAS DESPESAS É DIV POR DOIS ENTRE PROD E SERV.
Begin
	//inicializa as variaveis como true, caso encontre erro na passagem da função eslas passaram a false
   FechaOrd:=True;
   ATUFINANC:=True;
     // Tenta filtrar a ordem
     If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '') = True
     Then Begin
         XVLRDESP:=DMServ.TOrd.FIELDBYNAME('TOTDESP').AsCurrency/2;
         //Filtra loja
         FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

         //***********************************************
         // INICIO DE PROCESSO PARA CONTROLE FINANCEIRO **
         //***********************************************
         //Filtra cliente
         FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.TOrd.FIELDBYNAME('COD_CLIENTE').AsString, '');
         If (DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString<>'MENSAL')
         Then Begin
       	If CBPagamento.Text='Multiplo'
           Then Begin
           	//tenta validar a data
           	Try
               	StrToDate(EdDtFech.Text);
               Except
               	MessageDlg('Por favor, verifique a data de fechamento. Ela não passou na validação', mtWarning, [mbOK], 0);
                   EdDtFech.SetFocus;
               End;
               //tenta fechar as contas
				If FecConta('ORDEM', XCodOrdem, DMServ.TOrd.FieldByName('TOTORD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency, XCOD_CONTA, -1 , StrToDate(EdDtFech.Text))=True
               Then Begin
                   ATUFINANC:=True;
               End
               Else begin
                   ATUFINANC:=False;
               End;
           End
           Else Begin
               //Filtra Forma de Pagamento
               If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCodFormPag), '') = True
               Then Begin // Encontrou forma de pagamento, continua processo
                   //verifica moeda padrão para lançamento
                       If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                       Then Begin // caso o pedido tenha sido feito à vista deve-se lançar o valor direto no caixa
                           If CBPagamento.Text='Cheque'
                           Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
                               If LancChEnt(XCOD_CONTA, -1, 'Fech. Ordem'+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, Date(), '', DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, '', '', 0, '', '', 'ORDEM', IntToStr(XCodOrdem))=True
                               Then  ////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               Else//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                           End;
                           If CBPagamento.Text = 'Cartão'
                           Then Begin
                               If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCOD_CONTA,'(Produtos) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, 'TOTPROD',StrToInt(CodPedido), 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                               Then  Begin////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                                   exit;
                               End;
                               If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCOD_CONTA,'(Serviços) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, 'TOTSERV',StrToInt(CodPedido), 'ORDSERV',StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                               Then  Begin////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                           End;
                           If (CBPagamento.Text <> 'Cheque') and (CBPagamento.Text <> 'Cartão')
                           Then Begin
                               //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A PRODUTOS
                               If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, '(Produtos) Fech. Ordem Serv. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, 'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                               //REALIZA LANÇAMENTOS EM CAIXA REFERENTE A SERVIÇOS
                               If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, '(Serviços) Fech. Ordem Serv. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, 'ORDSERV', StrToInt(CodPedido), CBPagamento.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(EdDtFech.Text), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                           End;
                       End
                       Else Begin//Não é à vista
                           If LancConta('ORDEM', StrToInt(CodPedido), DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, XCOD_CONTA, -1, -1, 'Fech. Ordem de Serviço '+DMServ.TOrd.FieldByName('NUMERO').AsString, XCodFormPag, DMServ.TOrd.FieldByName('NUMERO').AsString, 'O', Date(), 0, EdDtFech.Text, DMServ.TOrd.FieldByName('numfiscal').AsString)=True
                           Then Begin
                               ATUFINANC:=True;
                           End
                           Else Begin
                               ATUFINANC:=False;
                           End;
                       End;
               End
               Else Begin //não esncontrou forma de pagamento, processo inválido retornar informações
                   ATUFINANC:=False;
               End;
       	End;
       End
       Else Begin
         	ATUFINANC:=True;
       End;
       
       //Verifica se todas as atualizações foram possíveis
       If ATUFINANC=True
       Then Begin //então tenta-se confirmar operação
       	Try
   			//calcula comissão
   			//CalcComisTotVend;
           	//FECHA PEDIDO
               DMServ.TOrd.Edit;
//             DMServ.TOrd.FieldByName('STATUS').AsString:='FECHADO';
               DMServ.TOrd.FieldByName('LOCALAT').AsString:='Sim';
               DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger:=XCodFormPag;
               DMServ.TOrd.FieldByName('DTENTREGA').AsString:=DBDATAENTREGA.Text;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               DMServ.TOrd.FieldByName('DTFECH').AsString:=EdDtFech.Text;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               DMServ.TOrd.FieldByName('HRENTREGA').AsString:=DBHORAENTREGA.Text;
               DMServ.TOrd.FieldByName('COMISSAO').AsCurrency:=0;
               DMServ.TOrd.Post;
               DMServ.TOrd.ApplyUpdates;

               //EFETUA TRANSAÇÕES
               DMServ.IBT.CommitRetaining;
               DMBANCO.IBT.CommitRetaining;
               DMCAIXA.IBT.CommitRetaining;
               MDO.Transac.CommitRetaining;
               Try
                   MdoQueryClear;
                   MDO.Query.SQL.Add(' UPDATE ORDEM SET ORDEM.LOCALAT = ''Sim'' WHERE ORDEM.COD_ORDEM = :ORDEM');
                   MDO.Query.ParamByName('ORDEM').AsString:=CODPEDIDO;
                   MDO.Query.ExecSQL;
                   MDO.Transac.CommitRetaining;
               Except

               End;
				Mensagem('INFORMAÇÃO AO USUÁRIO', 'ORDEM DE SERVIÇO FATURADA COM SUCESSO!', '', 1, 1, false, 'a');
               //Função para abrir gaveta
               //ecfOpenGaveta;

               //Atualiza ordens na tela de consulta
               FiltraOrdem('');
           Except
				Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
				DMCAIXA.IBT.RollbackRetaining;
				DMServ.IBT.RollbackRetaining;
               DMBANCO.IBT.RollbackRetaining;
               MDO.Transac.RollbackRetaining;
           End;
       End
       Else Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
           DMCAIXA.IBT.RollbackRetaining;
			DMServ.IBT.RollbackRetaining;
       End;
       If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='MENSAL'
       Then Begin
           //Se a fatura for mensal abrimos a tela de fatura, porém a fatura não será obrigatória
           FaturaOSMensal(StrToInt(CODPEDIDO));
       End;
   End
   Else Begin //else de filtragem de pedido
       FechaOrd:=false;
   End;
End;

procedure TFOrdemLoca.BtnMoedaOKClick(Sender: TObject);
var
   XCodPedidoGerador :Integer; // - 16/03/2009: guarda codigo do pedido
   XFlag : Boolean; // - 13/03/2009: verifica se deve imprimir NF depois do cupom conforme configurado em caixa
   XNumAuxECF:String; // - 16/03/2009: armazena numero auxiliar cupom
   xMotivoCanc : String;
begin
  inherited;
   //valida quanto a forma de pagamento
	If CBPagamento.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe se o pagamento será feito em carteira ou cheque!', '', 1, 1, False, 'i');
       CBPagamento.SetFocus;
       Exit;
   End;

   //valida quanto a data de entrega
	If DBDataEntrega.Text='  /  /    '
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe a data de entrega do equipamento/Veículo ao cliente!', '', 1, 1, False, 'i');
       DBDataEntrega.SetFocus;
       Exit;
   End;

   //valida quanto a hora de entrega
	If DBHoraEntrega.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe a hora de entrega do equipamento/Veículo ao cliente!', '', 1, 1, False, 'i');
       DBHoraEntrega.SetFocus;
       Exit;
   End;

   //valida quanto a Conta
	If XCOD_CONTA=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmContaServ.EDCodigo.SetFocus;
       Exit;
   End;

   //Valida Quanto a conta
   If Not FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', '', '', 'Where (COD_FILIAL='+FMenu.LCODEMPRESA.Caption+') And (CLASSIFICACAO='+FrmContaServ.EDCodigo.Text+')')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta válida para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmContaServ.EDCodigo.SetFocus;
       Exit;
   End;

   //valida quanto a forma de pagamento
	If XCodFormPag=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma forma de pagamento para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmFormPag.EDCodigo.SetFocus;
       Exit;
   End;

   XCodPedidoGerador := DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;

   XCodOrdem:=DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;

   //Se for cancelamento ou bonificação
   Try
     MDO.Query.Close;
     MDO.Query.SQL.Clear;
     if (cbBonificacao.Checked) Then
     Begin
       MDO.Query.SQL.Add('UPDATE ORDEM SET ORDEM.STATUS=:STATUS WHERE ORDEM.COD_ORDEM=:ORDEM');
       MDO.Query.ParamByName('ORDEM').AsInteger := XCodOrdem;
       MDO.Query.ParamByName('STATUS').AsString := 'BONIFICAÇÃO';
     End Else if (cbCancelamento.Checked) Then
     Begin
  	    repeat
         InputQuery('CANCELAMENTO DA ORDEM DE SERVIÇO', 'Informe o motivo do cancelamento', xMotivoCanc);
  	    until xMotivoCanc <> '';
       MDO.Query.SQL.Add('UPDATE ORDEM SET ORDEM.STATUS=:STATUS WHERE ORDEM.COD_ORDEM=:ORDEM');
       MDO.Query.ParamByName('ORDEM').AsInteger := XCodOrdem;
       MDO.Query.ParamByName('STATUS').AsString := 'ANULADA';
     End;
     MDO.Query.ExecSQL;
     MDO.Transac.CommitRetaining;
   Except
     MDO.Transac.RollbackRetaining;
   End;



   //Permite que uma OS seja Cancelada ou Marcada como bonificação sem gerar financeiro
   if Not(cbBonificacao.Checked Or cbCancelamento.Checked) Then
     FechaOrd(DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, EdDtFech.Text);
   XFlag := True; // - 13/03/2009: deixar como true caso não for ECF poderá ser emitido NF igual

   // - 13/03/2009: add para impressoa de cupom fiscal
   If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF'
   Then Begin
       // - 13/03/2009: se em caixa estiver configurado para emitir NF apos ECF
       If DMCAIXA.TCaixa.FieldByName('EMITNF').AsString='1'
       Then Begin
         If Mensagem('A T E N Ç Ã O', 'Deseja Imprimir Nota Fiscal para o pedido'+#13+'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 3
         Then Begin
                XFlag := False;
         End;
       End;
   End;
   // - 13/03/2009: verificação p/ imprimir NF
   If ((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF') or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe') or((DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF') And (XFlag)))
   Then Begin
       //Atualiza o Valor da NF
       FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
       FMenu.TIPOREL := 'NF';
       //Imprime NOTA Fiscal
       {if (MDO.QConsulta.FieldByName('GERANFSE').AsString = '1') then
       Begin
		  If Mensagem('C O N F I R M A Ç Ã O', 'A Impressora esta pronta?'  , '', 2, 3, False, 'c')= 2
         Then
         Begin
           FiltraTabela(DMServ.WOrdemDesp, 'VWORDEM', 'COD_ORDEM', IntToStr(XCodOrdem), '');
           //AbreFiscal;
           //REGISTRA COMANDO DO USUARIO
           Registra('ORDEM DE SERVIÇO', 'NF', DMServ.WOrdemDesp.FieldByName('dtabert').AsString, 'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.WOrdemDesp.FieldByName('total').AsString);
         End;
       End;}
   End;

    //     FIM  ---------------------

   PFinanceiro.Visible:=False;
   // BUSCANDO DADOS DA ORDEM
   DMServ.TOrd.Close;
   DMServ.TOrd.Open;
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString,'');

   // EDITANDO ORDEM DE SERVICO PARA LIBERAR SEU USO CASO SEJA NECESSARIO
   DMServ.TOrd.Edit;
   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
   DMServ.TOrd.Post;
   DMServ.IBT.CommitRetaining;

   //Atualiza View da tela de Consulta
   FiltraOrdem('');
   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;

   //Paulo 10/08/2011: Para imprimir o Comp da OS
   FiltraTabela(DMServ.WOrdemDesp,'VWORDEM','COD_ORDEM',IntToStr(XCodOrdem),'');
   //CompdeAbertura1Click(Sender);
   CompdeFechamento1Click(sender);
   FiltraOrdem('');

   //Paulo 15/02/2012: Para imprimir recibo caso for a vista
   if CBImpRecibo.Checked = true then
      ImpRecibo(XCodOrdem);
end;

procedure TFOrdemLoca.PConsultaExit(Sender: TObject);
begin
//  inherited;

end;

//Função utilizada para cancelar/estornar todos os lançamentos emitidos por uma determinada OS
Function TFOrdemLoca.CancelLanOrd(CodPedido: String):Boolean;
begin
   //Inicia resultado como falso
   Result:=True;

	//filtra loja para capturar as configurações
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//filtra DADOS DA VIEW
	DMServ.WOrdemDesp.Close;
	DMServ.WOrdemDesp.SQL.Clear;
	DMServ.WOrdemDesp.SQL.Add('SELECT * FROM vwordem WHERE COD_ORDEM=:CODIGO');
	DMServ.WOrdemDesp.ParamByName('CODIGO').AsString:=CodPedido;
	DMServ.WOrdemDesp.Open;
   If DMServ.WOrdemDesp.IsEmpty
   Then Begin
   	MessageDlg('O Registro de ordem não foi encontrado', mtWarning, [mbOK], 0);
       Exit;
   End;
   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', CodPedido, '');
   FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '');

   If DMServ.TOrd.FieldByName('TipoPag').AsString<>'Multiplo'
   Then Begin
   	//SE A FORMA DE PAGAMENTO FOR DIFERENTE DE MULTIPLO

		//CONTROLE QUE DELETA TODA A MOVIMENTAÇÃO QUANDO UMA ORDEM É FECHADO COM CHEQUE E É À VISTA.

       FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')');

       XCampo:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

       //seleciona cheques para serem apagados
       DMCAIXA.TAlx.close;
       DMCAIXA.TAlx.SQL.Clear;
       DMCAIXA.TAlx.SQL.Add('select * from chequerec');
       DMCAIXA.TAlx.SQL.Add('where chequerec.cod_movbanco = :CODMOV');
       DMCAIXA.TAlx.ParamByName('CODMOV').AsString:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;
       DMCAIXA.TAlx.Open;

       IF NOT DMCAIXA.TAlx.IsEmpty
       then begin
         xcod_chequerec:= DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
         //seleciona lançamentos de caixa para serem deletados
         DMCAIXA.TLanCaixa.Close;
         DMCAIXA.TLanCaixa.SQL.Clear;
         DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
         DMCAIXA.TLanCaixa.SQL.Add('where ((lancaixa.tipogerador='+#39+'LCHR'+#39+') or (lancaixa.tipogerador='+#39+'DCHR'+#39+') or (lancaixa.tipogerador='+#39+'MCHR'+#39+') AND (lancaixa.cod_gerador =:CODLANCA))');
         DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString:=DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
         DMCAIXA.TLanCaixa.Open;
         DMCAIXA.TLanCaixa.First;

         //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
         IF (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= false)
         THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
              LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
              MDO.Transac.CommitRetaining;
         end;


         //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
         If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
         then begin
              while not DMCAIXA.TLanCaixa.Eof do
              begin
                DMCAIXA.TLanCaixa.Delete;
                DMCAIXA.TLanCaixa.ApplyUpdates;

              end;
         end;

         //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
         If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + xcod_chequerec + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= true
         Then Begin
                 DMBANCO.TMovBanco.Delete;
                 DMBANCO.TMovBanco.ApplyUpdates;
         End;


         //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
         If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.TOrd.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')')= true
         Then Begin
             DMBANCO.TMovBanco.Delete;
             DMBANCO.TMovBanco.ApplyUpdates;
         End;


         //apaga cheques ligados ao pedido de venda
         if not DMCAIXA.TAlx.IsEmpty
         then begin
            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('delete from chequerec where cod_movbanco= :CODIGO');
            DMBANCO.TChequeRec.ParamByName('CODIGO').AsString:=XCampo;
            DMBANCO.TChequeRec.ExecSQL;
            DMBANCO.IBT.CommitRetaining;
            DMBANCO.TChequeRec.Open;
            DMBANCO.TChequeRec.Close;
            DMBANCO.TChequeRec.SQL.Clear;
            DMBANCO.TChequeRec.SQL.Add('select * from chequerec');
            DMBANCO.TChequeRec.Open;
         end;
     END;

     //VERIRIFA SE A OS FOI À VISTA
     If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
     Then Begin
         //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
         DMCAIXA.TLanCaixa.Close;
         DMCAIXA.TLanCaixa.SQL.Clear;
         DMCAIXA.TLanCaixa.SQL.Add(' SELECT * FROM LANCAIXA WHERE (TIPOGERADOR='+#39+'ORDSERV'+#39+') AND (COD_GERADOR=:CODPEDIDO) ');
         DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsString:=CodPedido;
         DMCAIXA.TLanCaixa.Open;
         DMCAIXA.TLanCaixa.First;
         
         If Not DMCAIXA.TLanCaixa.IsEmpty
         Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
           while not DMCAIXA.TLanCaixa.Eof do begin
               If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1')= True Then
                    MDO.Transac.CommitRetaining
                   //DMCAIXA.IBT.CommitRetaining
               Else
                   Result:=False;
               DMCAIXA.TLanCaixa.Next;
           end;
         End;
         
         If DMServ.TOrd.FieldByName('TIPOPAG').AsString = 'Cartão'
         Then Begin
             If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTPROD' + #39 + ')')= true
             Then Begin
                 DMBANCO.TMovBanco.Delete;
                 DMBANCO.TMovBanco.ApplyUpdates;
             End;
             If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTSERV' + #39 + ')')= true
             Then Begin
                 DMBANCO.TMovBanco.Delete;
                 DMBANCO.TMovBanco.ApplyUpdates;
             End;
             DMBANCO.IBT.CommitRetaining;
         End;
     End
     Else Begin
          //SE A VENDA NÃO FOI À VISTA
          //FILTRA CTA RECEBER PARA LOCALIZAR LANÇAMENTOS
          If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = '+#39+'ORD'+#39+') AND (COD_GERADOR='+CodPedido+')')=True
          Then Begin//se foi encontrado alguma conta
             //FILTRA PARCELAS
             If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '')=True
             Then Begin//se foi encontrado alguma conta
                 //PARA CADA PARCELA VERIFICA SE ESTA FECHADA
                 DMCONTA.TParcCR.First;
                 While not DMCONTA.TParcCR.Eof do
                 Begin
                     //deleta lançamentos de caixa caso seja forma de pagamento carteira.
                     if DMServ.WOrdem.FieldByName('TIPOPAG').AsString = 'Carteira'
                     then begin
                     		FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '','(lancaixa.tipogerador='+#39+'CTAR'+#39+') AND (lancaixa.cod_gerador =' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39')');
                          	while not DMCAIXA.TLanCaixa.Eof
                          	do begin
                           	If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1')= True Then
                                    MDO.Transac.CommitRetaining
                               	//DMCAIXA.IBT.CommitRetaining
                             	Else
                               	Result:=False;
                             	DMCAIXA.TLanCaixa.Next;
                          	end;
                      end;
                      //filtra movimentação bancaria da parcela em questão
                      FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + IntToStr(DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsInteger) + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39')');
                      //filtra cheque da parcela
                      FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', '', '(COD_MOVBANCO = ' + #39 + IntToStr(DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger) + #39 +')');

                      //variável utilizada para apos apagar a movimentação bancaria sejam apagados os cheques ligados as parcelas
                      XCampo:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

                      //filtra os lançamentos de caixa ligados a parcela
                      FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '','(lancaixa.tipogerador='+#39+'LCHR'+#39+') or (lancaixa.tipogerador='+#39+'DCHR'+#39+') or (lancaixa.tipogerador='+#39+'MCHR'+#39+') AND (lancaixa.cod_gerador =' + #39 + IntToStr(DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsInteger) + #39')');
                         If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR='+#39+'CTARCH'+#39+') AND (COD_GERADOR='+DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString+')')=True
                         Then Begin
                            //se o codigo de abertura do caixa atual for diferente do codigo de lançamento de caixa da ordem e este cheque foi movimentado em caixa faz o estorno
                            IF (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) and (FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= false)
                            THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
                                LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEM', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString, Date(), '1');
                            end;
                            DMCAIXA.IBT.CommitRetaining;
                            MDO.Transac.CommitRetaining;
                                DMCAIXA.TLanCaixa.First;

                                while not DMCAIXA.TLanCaixa.Eof do
                                //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
                                If (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption) AND (DMCAIXA.TLanCaixa.FieldByName('COD_GERADOR').AsString = DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString)
                                then begin
                                      if ((DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'LCHR') OR (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'MCHR') or (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'DCHR'))
                                      THEN BEGIN
                                        DMCAIXA.TLanCaixa.Delete;
                                        DMCAIXA.TLanCaixa.ApplyUpdates;
                                      END;
                                end
                                else
                                dmcaixa.TLanCaixa.Next;
                            DMCAIXA.IBT.CommitRetaining;
                            MDO.Transac.CommitRetaining;
                         End;

                            //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
                            If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + IntToStr(DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsInteger) + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')= true
                               Then Begin
                               DMBANCO.TMovBanco.First;
                                   while not DMBANCO.TMovBanco.Eof do
                                       DMBANCO.TMovBanco.Delete;
                                       DMBANCO.TMovBanco.ApplyUpdates;
                                   //end;
                               DMBANCO.TMovBanco.Next;
                               End;
                            DMBANCO.IBT.CommitRetaining;  

                            //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
                            If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ')')= true
                            Then Begin
                               DMBANCO.TMovBanco.Delete;
                               DMBANCO.TMovBanco.ApplyUpdates;
                            End;
                            DMBANCO.IBT.CommitRetaining;


                     //apaga cheques ligados a ordem

                      DMBANCO.TChequeRec.Close;
                      DMBANCO.TChequeRec.SQL.Clear;
                      DMBANCO.TChequeRec.SQL.Add('delete from chequerec where cod_movbanco= :CODIGO');
                      DMBANCO.TChequeRec.ParamByName('CODIGO').AsString:=XCampo;
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
               End;
             End;
             DMCONTA.TCtaR.Delete;
             DMCONTA.TCtaR.ApplyUpdates;
             Result := true;
          End;
     End;
   End
   Else Begin
   	//SE A FORMA DE PAGAMENTO FOR IGUAL A MULTIPLO

       //ENTRADA - verifica entrada
       //verifica se foi dado lançamentos de entrada
       //seleciona lançamentos de caixa para serem deletados
        DMCAIXA.TLanCaixa.Close;
        DMCAIXA.TLanCaixa.SQL.Clear;
        DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
        DMCAIXA.TLanCaixa.SQL.Add('where (lancaixa.tipogerador='+#39+'ORDEMENT'+#39+') AND (lancaixa.cod_gerador =:CODLANCA)');
        DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString:=DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
        DMCAIXA.TLanCaixa.Open;
        DMCAIXA.TLanCaixa.First;

        //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
        IF DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption= false
        THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
            LanCaixa(-1, DateToStr(Date()), DMCAIXA.TLanCaixa.fieldByName('COD_PLNCTAFIL').AsInteger, 'Cancel. fech. Ped. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEMENTEST', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
        end;


        //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
        If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
        then begin
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
        DMCAIXA.TLanCaixa.SQL.Add('where (lancaixa.tipogerador='+#39+'ORDEMTRO'+#39+') AND (lancaixa.cod_gerador =:CODLANCA)');
        DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString:=DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
        DMCAIXA.TLanCaixa.Open;
        DMCAIXA.TLanCaixa.First;

        //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
        IF DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption= false
        THEN BEGIN //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
            LanCaixa(-1, DateToStr(Date()), DMCAIXA.TLanCaixa.fieldByName('COD_PLNCTAFIL').AsInteger, 'Cancel. fech. Ped. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEMTROEST', StrToInt(CodPedido), 'Carteira', 'S', 'EST'+DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
        end;    
        //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
        If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
        then begin
            while not DMCAIXA.TLanCaixa.Eof do
            begin
              DMCAIXA.TLanCaixa.Delete;
              DMCAIXA.TLanCaixa.ApplyUpdates;
            end;
        end;

		 MessageDlg('OS LANÇAMENTO EFETUADOS EM CHEQUE E A PRAZO NÃO SERÃO CANCELADOS', mtWarning, [mbOK], 0);
   End;
   Try
           DMCONTA.IBT.CommitRetaining;
           DMBANCO.IBT.CommitRetaining;
           DMCAIXA.IBT.CommitRetaining;
           MDO.Transac.CommitRetaining;
	Except
   End;
   //CANCELA FATURA DE PAGAMENTOS DE SERVIÇOS
   If CodPedido<>''
   Then Begin
   	//LANCAMENTOS EM CAIXA
   	DMMACS.TALX.Close;
   	DMMACS.TALX.SQL.Clear;
   	DMMACS.TALX.SQL.Add(' Select * from lancaixa where (lancaixa.tipogerador=''FATURA'') AND (lancaixa.cod_gerador=:CODIGO) ');
   	DMMACS.TALX.ParamByName('CODIGO').AsString:=CodPedido;
   	DMMACS.TALX.Open;
       DMMACS.TALX.First;
       While not DMMACS.TALX.Eof do
       Begin
           DMCAIXA.TAbCaixa.Close;
           DMCAIXA.TAbCaixa.SQL.Clear;
           DMCAIXA.TAbCaixa.SQL.Add('Select * from abcaixa where (abcaixa.cod_abcaixa=:codabcaixa)');
           DMCAIXA.TAbCaixa.ParamByName('codabcaixa').AsInteger:=DMMACS.TALX.FieldByName('cod_abcaixa').AsInteger;
           DMCAIXA.TAbCaixa.Open;
           If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
           Then Begin
				MessageDlg('O Lançamento: '+DMMACS.TALX.FieldByName('historico').AsString+' não pode ser cancelado devido ao caixa estar fechado', mtWarning, [mbOK], 0);
           End
           Else Begin
				If FiltraTabela(DMCAIXA.TLanCaixa, 'lancaixa', 'cod_lanc', DMMACS.TALX.FieldByName('cod_lanc').AsString, '')
               Then Begin
                   DMCAIXA.TLanCaixa.Delete;
                   DMCAIXA.IBT.CommitRetaining;
               End;
           End;
           DMMACS.TALX.next;
       End;
       //LANCAMENTOS EM CONTAS A PAGAR
   	DMMACS.TALX.Close;
   	DMMACS.TALX.SQL.Clear;
   	DMMACS.TALX.SQL.Add(' Select parcelacp.cod_parcelacp from parcelacp ');
   	DMMACS.TALX.SQL.Add(' Left Join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar ');
   	DMMACS.TALX.SQL.Add(' Where (ctapagar.tipogerador=''FATURA'') and (ctapagar.cod_gerador=:codigogerador) and (parcelacp.fech=''N'') ');
   	DMMACS.TALX.ParamByName('codigogerador').AsString:=CodPedido;
   	DMMACS.TALX.Open;
       DMMACS.TALX.First;
       While not DMMACS.TALX.Eof do
       Begin
           If FiltraTabela(DMCONTA.TParcCP, 'parcelacp', 'cod_parcelacp', DMMACS.TALX.FieldByName('cod_parcelacp').AsString, '')
           Then Begin
               DMCONTA.TParcCP.Delete;
               DMCONTA.IBT.CommitRetaining;
           End;
           DMMACS.TALX.next;
       End;
   End; 
end;

procedure TFOrdemLoca.BtnCancelamentosClick(Sender: TObject);
begin
	pmCancelamentos.Popup(Left + PConsulta.left + Painel.left + BtnCancelamentos.Left, top + PConsulta.Top + Painel.top + BtnCancelamentos.Top + BtnCancelamentos.Height);
end;

procedure TFOrdemLoca.FormCreate(Sender: TObject);
begin
  inherited;
   //limpa as labels para desabilitar alguns componentes já linkado a tabelas
   LimpaLabelsPROD;
end;

procedure TFOrdemLoca.DBGProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGProdutos.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ItemOrdemLoc.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdemLoca.BtnItensretornadosClick(Sender: TObject);
begin
  inherited;
   PItensdeRetorno.Visible:=True;
   PItensdeRetorno.BringToFront;
   BtnItensretornados.Font.Style:=([fsbold]);
   BtnOrdemdeServico.Font.Style:=([]);
   If FileExists('C:\MZR\Arquivos\LayoutGrid\ItemRetornoOrdemLoc.lgm') Then
       DBGItensdeRetorno.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ItemRetornoOrdemLoc.lgm');   
   EdDtInicialRetornoFiltro.Date:=FMenu.XDtFiltro01;
   EdDtFinalRetornoFiltro.Date:=FMenu.XDtFiltro02;
   If FMenu.XFiltroDataItensRetorno=True Then
       CbFiltroDataItensRetorno.Checked:=True
   Else
       CbFiltroDataItensRetorno.Checked:=False;
   XFiltroItensretorno:=' ORDER BY itprodord.qtdret DESC ';
   FiltraItensRetorno;
end;

procedure TFOrdemLoca.BtnOrdemdeServicoClick(Sender: TObject);
begin
  inherited;
   PItensdeRetorno.Visible:=False;
   PConsulta.Visible:=True;
   PConsulta.BringToFront;
   BtnItensretornados.Font.Style:=([]);
   BtnOrdemdeServico.Font.Style:=([fsbold]);
   FiltraOrdem('');
end;

procedure TFOrdemLoca.EdDtInicialRetornoFiltroExit(Sender: TObject);
begin
  inherited;
   FMenu.XDtFiltro01:=EdDtInicialRetornoFiltro.Date;
end;

procedure TFOrdemLoca.EdDtFinalRetornoFiltroExit(Sender: TObject);
begin
  inherited;
   FMenu.XDtFiltro02:=EdDtFinalRetornoFiltro.Date;
end;

procedure TFOrdemLoca.CbFiltroDataItensRetornoExit(Sender: TObject);
begin
  inherited;
   If CbFiltroDataItensRetorno.Checked=True Then
       FMenu.XFiltroDataItensRetorno:=True
   Else
       FMenu.XFiltroDataItensRetorno:=False;   
end;

procedure TFOrdemLoca.EdDescricaoFiltroItemRetornoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=vk_return
   Then Begin
       XFiltroItensretorno:='  and (upper(subproduto.descricao) like '+#39+UpperCase(EdDescricaoFiltroItemRetorno.Text)+'%'+#39+')  order by subproduto.descricao, itprodord.qtdret DESC ';
       FiltraItensRetorno;
   End;
   If Key=vk_Escape
   Then Begin
       XFiltroItensretorno:='  order by subproduto.descricao, itprodord.qtdret DESC  ';
       FiltraItensRetorno;
   End;
end;

procedure TFOrdemLoca.EdContrintFiltroItemRetornoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=vk_return
   Then Begin
       XFiltroItensretorno:='  and (upper(subproduto.contrint) like '+#39+UpperCase(EdContrintFiltroItemRetorno.Text)+'%'+#39+')  order by subproduto.contrint, itprodord.qtdret DESC  ';
       FiltraItensRetorno;
   End;
   If Key=vk_Escape
   Then Begin
       XFiltroItensretorno:='  order by subproduto.contrint, itprodord.qtdret DESC  ';
       FiltraItensRetorno;
   End;
end;

procedure TFOrdemLoca.DBGItensdeRetornoDblClick(Sender: TObject);
begin
  inherited;
      if DMESTOQUE.TSlave.FieldByName('qtdret').AsString='-5000'
      Then begin
         //RETORNADOS -> RETIRADO: Marca o item retornado como retirado
         If Mensagem('C O N F I R M A Ç Ã O', 'Marcar o item '+DMESTOQUE.TSlave.FieldByName('descricao').AsString+' da OS Numero '+DMESTOQUE.TSlave.FieldByName('numero').AsString+' como retirado?'  , '', 2, 3, False, 'c')= 2
         Then Begin
             Try
                 //Atualizamo o item para informar que ele já foi retirado
                 MdoQueryClear;
                 MDO.Query.SQL.Add(' update itprodord set itprodord.qtdret=-2000 where itprodord.cod_itprodord=:Codigo ');
                 MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_itprodord').AsInteger;
                 MDO.Query.ExecSQL;
                 MDO.Transac.CommitRetaining;
                 //verificamos se os itens da OS já foram retirados para marcarmos ela como retirada
                 MdoQConsultaClear;
                 MDO.QConsulta.SQL.Add(' Select itprodord.cod_itprodord from itprodord where ((itprodord.qtdret=-5000) or (itprodord.qtdret=-1000)) and (itprodord.cod_ordem=:codigo) ');
                 MDO.QConsulta.ParamByName('codigo').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_ordem').AsInteger;
                 MDO.QConsulta.Open;
                 If MDO.QConsulta.IsEmpty
                 Then Begin
                     Try
                         //Todos os itens da OS foram marcados como retornados, assim marcamos a OS como Retornada
                         MdoQueryClear;
                         MDO.Query.SQL.Add(' update ordem Set ordem.status=''RETIRADO'' where ordem.cod_ordem=:Codigo ');
                         MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_ordem').AsInteger;
                         MDO.Query.ExecSQL;
                         MDO.Transac.CommitRetaining;
                     Except
                         MDO.Transac.RollbackRetaining;
                     End;
                 End;
                 FiltraItensRetorno;
             Except
                 MessageDlg('O Item não foi marcado como retirado.', mtWarning, [mbOK], 0);
                 MDO.Transac.RollbackRetaining;
             End;
         End;
      End
      Else Begin
         //RETIRADO -> RETORNADOS: Marca o item retornado como retirado
         If Mensagem('C O N F I R M A Ç Ã O', 'Marcar o item '+DMESTOQUE.TSlave.FieldByName('descricao').AsString+' da OS Numero '+DMESTOQUE.TSlave.FieldByName('numero').AsString+' como retornado?'  , '', 2, 3, False, 'c')= 2
         Then Begin
             Try
                 //Atualizamo o item para informar que ele já foi retornado
                 MdoQueryClear;
                 MDO.Query.SQL.Add(' update itprodord set itprodord.qtdret=-5000 where itprodord.cod_itprodord=:Codigo ');
                 MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_itprodord').AsInteger;
                 MDO.Query.ExecSQL;
                 MDO.Transac.CommitRetaining;
                 //verificamos se os itens da OS já foram retornados para marcarmos ela como retronado
                 MdoQConsultaClear;
                 MDO.QConsulta.SQL.Add(' Select itprodord.cod_itprodord from itprodord where ((itprodord.qtdret=-2000) or (itprodord.qtdret=-1000)) and (itprodord.cod_ordem=:codigo) ');
                 MDO.QConsulta.ParamByName('codigo').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_ordem').AsInteger;
                 MDO.QConsulta.Open;
                 If MDO.QConsulta.IsEmpty
                 Then Begin
                     Try
                         //Todos os itens da OS foram marcados como retornados, assim marcamos a OS como Retornada
                         MdoQueryClear;
                         MDO.Query.SQL.Add(' update ordem Set ordem.status=''RETORNADO'' where ordem.cod_ordem=:Codigo ');
                         MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_ordem').AsInteger;
                         MDO.Query.ExecSQL;
                         MDO.Transac.CommitRetaining;
                     Except
                         MDO.Transac.RollbackRetaining;
                     End;
                 End;
                 FiltraItensRetorno;
             Except
                 MessageDlg('O Item não foi marcado como retornado.', mtWarning, [mbOK], 0);
                 MDO.Transac.RollbackRetaining;
             End;
         End;
      End;
end;

procedure TFOrdemLoca.DBGItensdeRetornoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
      if DMESTOQUE.TSlave.FieldByName('qtdret').AsString='-2000'
      then begin
           DBGItensdeRetorno.Canvas.Font.Color := clGreen;
           DBGItensdeRetorno.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      End
      Else Begin
            if DMESTOQUE.TSlave.FieldByName('qtdret').AsString='-5000'
            then begin
                 DBGItensdeRetorno.Canvas.Font.Color := clNavy;
                 DBGItensdeRetorno.DefaultDrawColumnCell(Rect, DataCol, Column, State);
            End
            Else Begin
                 DBGItensdeRetorno.Canvas.Font.Color := clBlack;
                 DBGItensdeRetorno.DefaultDrawColumnCell(Rect, DataCol, Column, State);
            End;
      End;
end;

procedure TFOrdemLoca.DBGItensdeRetornoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGItensdeRetorno.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ItemRetornoOrdemLoc.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdemLoca.EdLocCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  		//Paulo 26/01/2012: Filtra as ordems pelo cod do cliente
		Try
           If Key=VK_RETURN
           Then Begin//pressionado enter, consultar
               XFiltroItensretorno:='  and (upper(vwcliente.cod_cliente) like '+#39+UpperCase(EdLocCodCli.Text)+'%'+#39+')';
       		FiltraItensRetorno;
           End;
           If Key=VK_ESCAPE
           Then Begin //pressionado esc, liberar
               XFiltroItensretorno:='';
       		FiltraItensRetorno;
           End;
       Except
       End;
end;

procedure TFOrdemLoca.EdLocNomeCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
        //Paulo 26/01/2012: Filtra as ordems pelo nome do cliente
		Try
           If Key=VK_RETURN
           Then Begin//pressionado enter, consultar
               XFiltroItensretorno:='  and (upper(vwcliente.nome) like '+#39+UpperCase(EdLocNomeCli.Text)+'%'+#39+')';
       		FiltraItensRetorno;
           End;
           If Key=VK_ESCAPE
           Then Begin //pressionado esc, liberar
               XFiltroItensretorno:='';
       		FiltraItensRetorno;
           End;
       Except
       End;
end;

procedure TFOrdemLoca.EdLocNomeCliEnter(Sender: TObject);
begin
  inherited;
		if EdLocNomeCli.Text = 'Nome' then
         EdLocNomeCli.Text := ''
       Else
           EdLocNomeCli.SelectAll;
       EdLocNomeCli.Font.Color := clBlack;
end;

procedure TFOrdemLoca.EdLocCodCliEnter(Sender: TObject);
begin
  inherited;
		if EdLocCodCli.Text = 'Cod' then
         EdLocCodCli.Text := ''
       Else
           EdLocCodCli.SelectAll;
       EdLocCodCli.Font.Color := clBlack;
end;

procedure TFOrdemLoca.EdLocCodCliExit(Sender: TObject);
begin
  inherited;
		If Trim(EdLocCodCli.Text) = '' then
            EdLocCodCli.Text := 'Cod';
       EdLocCodCli.Font.Color := clGray;
end;

procedure TFOrdemLoca.EdLocNomeCliExit(Sender: TObject);
begin
  inherited;
		If Trim(EdLocNomeCli.Text) = '' then
            EdLocNomeCli.Text := 'Nome';
       EdLocNomeCli.Font.Color := clGray;
end;

procedure TFOrdemLoca.EDCliente1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
		If Key=VK_RETURN
       Then Begin
           If (EDCliente1.Text<>'') and (EDCliente1.Text<>'Cliente')
           Then Begin
               FiltraOrdem(' (UPPER (VWORDEM.CLIENTE)) LIKE (UPPER ('+#39+TRIM(EDCliente1.Text)+'%'+#39+'))');
           End;
       End;
       If Key=VK_ESCAPE
       Then Begin
           FiltraOrdem('');
       End;
end;

procedure TFOrdemLoca.EDNumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
		If Key=VK_RETURN
       Then Begin
           If (EDNum.Text<>'') and (EDNum.Text<>'Número')
           Then Begin
               FiltraOrdem('(VWORDEM.NUMERO  = '+#39+TRIM(EDNum.Text)+#39+') ');
           End;
       End;
       If Key=VK_ESCAPE
       Then Begin
           FiltraOrdem('');
       End;
end;

//Paulo 15/02/2012: Imprime recibo para ordem locação
Procedure TFOrdemLoca.ImpRecibo(CODORDEM:INTEGER);
Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

	 //PREPARA SQL
    DMFinanc.TAlx.Close;
    DMFinanc.TAlx.SQL.Clear;
    DMFinanc.TAlx.SQL.Add('select vwordem.numero, vwordem.total, vwordem.cliente, vwcliente.cpfcnpj,');
    DMFinanc.TAlx.SQL.Add('vwcliente.endereco, vwcliente.endnumero, vwcliente.cidade, vwcliente.uf_estado');
    DMFinanc.TAlx.SQL.Add('from vwordem');
    DMFinanc.TAlx.SQL.Add('left join vwcliente on vwordem.cod_cliente = vwcliente.cod_cliente');
    DMFinanc.TAlx.SQL.Add('where vwordem.cod_ordem = :CODORDEM');
    DMFinanc.TAlx.ParamByName('CODORDEM').AsInteger:=CODORDEM;
    DMFinanc.TAlx.Open;
    If Not DMFINANC.TAlx.IsEmpty
    Then Begin
    	XValorOrdem:=DMFinanc.TAlx.FieldByName('TOTAL').AsCurrency;
       
    	//recebe o nº dos documentos e seus vencimentos pra imprimir no recibo grande cm valor final
    	QRRDocumento.Lines.Clear;
    	//QRRDocumento.Lines.Text:=XDOCPARC;
    	//QRFinalSimples.Preview;

    	QRReciboLocacao.Preview;
    end;
End;

procedure TFOrdemLoca.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR
  Data: Integer;
  Mes:String;
  Year, Month, Day:word;
begin
  // inherited;
	Try
   	Data := DayOfWeek(Date());{Volta um número inteiro que representa o dia da semana}
    	DecodeDate(Date(), Year, Month, Day);
    	Case Month of
      		1:Mes:='Janeiro';
      		2:Mes:='Fevereiro';
      		3:Mes:='Março';
      		4:Mes:='Abril';
      		5:Mes:='Maio';
      		6:Mes:='Junho';
      		7:Mes:='Julho';
      		8:Mes:='Agosto';
      		9:Mes:='Setembro';
      		10:Mes:='Outubro';
      		11:Mes:='Novembro';
      		12:Mes:='Dezembro';
    	End;
   Except
   end;
   If FiltraTabela(DMMACS.TALX, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '')
   Then begin
   	//QRLabel76.Caption:=DMMACS.TALX.FieldByName('NOME').AsString+', '+ IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
       QRLabel92.Caption:=DMMACS.TALX.FieldByName('NOME').AsString+', '+ IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
   end
   Else begin
   	//QRLabel76.Caption:=IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
       QRLabel92.Caption:=IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
   end;          

   //Paulo 15/02/2012: Escreve o valor por extenso
   FMenu.Extenso.Numero:= FormatFloat('0.00', (XValorOrdem));
   QrlVlrImportancia.Caption:=UpperCase(FMenu.Extenso.Extenso);

   QRVLRSimples.Caption:= FormatFloat('0.00', (XValorOrdem));
   QRDataRec1.Caption:=TimeToStr(Time());
   //QRDataRec4.Caption:=TimeToStr(Time());

end;

procedure TFOrdemLoca.AdicionarAcessrio1Click(Sender: TObject);
begin
  inherited;
   PAdicionaAcessorios.Visible:=True;
   PAdicionaAcessorios.BringToFront;
   ZeraMarcaAcessorios;
   FiltraAcessoriosParaInsercao;
end;

procedure TFOrdemLoca.DBGProdutosDblClick(Sender: TObject);
begin
  inherited;
	//BtnDeleteProdClick(Sender);
	//EdBuscaProduto.Enabled:=False;

   //armazena o código do item na ordem para posterior atualização
   XCOD_ITEM_PROD_ORD := DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsInteger;
   
   //Edmar - 30/01/2015 - Retorna as informações para o painel de edição

   //busca o estoque do produto atualizado
	If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '') then
   begin
       //Edmar - 30/01/2015 - Reescreve as labels do produto que deve ser alterado
       XCOD_ESTOQUE:=DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
       FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', IntToStr(XCOD_ESTOQUE),'');

       //Informações básicas do items
		lProdutoRetorno.Caption := DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
       edVlrUnitAtu.Text:=FormatFloat('#,###0.00',DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency);
       edQtdeAtu.Text:=DMESTOQUE.TSlave.FieldByName('QTD').AsString;
       edVlrTotalAtu.Text:=FormatFloat('#,###0.00',DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency);

       //Controle por data e hora
       edDtSaidaAtu.Date:=DMESTOQUE.TSlave.FieldByName('DTRETIRADA').AsDateTime;
       edHrSaidaAtu.Text:=DMESTOQUE.TSlave.FieldByName('HRRETIRADA').AsString;
       
       edDtRetornoAtu.Date:=DMESTOQUE.TSlave.FieldByName('DTRETORNO').AsDateTime;
       edHrRetornoAtu.Text := DMESTOQUE.TSlave.FieldByName('HRRETORNO').AsString;
       
       //Controle por desgaste
       edQtdeSaidaAtu.Text := FormatFloat('#,###0.00',DMESTOQUE.TSlave.FieldByName('DESGASTE_SAIDA').AsCurrency);
       edQtdeRetornoAtu.Text := FormatFloat('#,###0.00',DMESTOQUE.TSlave.FieldByName('DESGASTE_RETORNO').AsCurrency);
       edQtdeConsumidaAtu.Text := FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('DESGASTE_CONSUMIDO').AsCurrency);

       //Controle por hora usadas
       edQtdeHoraSaidaAtu.Text := FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('QTDE_HORA_SAIDA').AsCurrency);
       edQtdeHoraRetornoAtu.Text := FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('QTDE_HORA_RETORNO').AsCurrency);
       edQtdeHoraConsumidaAtu.Text := FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('QTDE_HORA_CONSUMIDA').AsCurrency);
   end;

   if (DMESTOQUE.TSlave.FieldByName('CTRL_HORA').AsString = '1') then
   begin
   	pCtrlHoras.Visible := True;
       pCtrlHoras.BringToFront;        
       pCtrlHoras2.Visible := True;
       pCtrlHoras2.BringToFront;

       //Edmar - 02/02/2015 - Tab Order dinamico
       pCtrlHoras.TabOrder  := 2;
       pCtrlHoras2.TabOrder := 4;
       //
       pDiasQtde.Visible := False;
       pDiasQtde.SendToBack;
       pCtrlDtHora.Visible := False;
       pCtrlDtHora.SendToBack;
       //
       pQtdeSaidaAtu.Visible := False;
       pQtdeSaidaAtu.SendToBack;
       pCtrlDesgaste.Visible := False;
       pCtrlDesgaste.SendToBack;
       CalculaTotalItemRetorno;
   end
   else begin
   	if FiltraTabela(DMESTOQUE.Alx, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, 'AND (CTRL_DESGASTE = ''1'')') then
       begin
       	pQtdeSaidaAtu.Visible := True;
           pQtdeSaidaAtu.BringToFront;
           pCtrlDesgaste.Visible := True;
           pCtrlDesgaste.BringToFront;

           //Edmar - 02/02/2015 - Tab Order dinamico
           pQtdeSaidaAtu.TabOrder := 2;
           pCtrlDesgaste.TabOrder := 4;

           //
           pDiasQtde.Visible := False;
           pDiasQtde.SendToBack;
           pCtrlDtHora.Visible := False;
           pCtrlDtHora.SendToBack;
           //
           pCtrlHoras.Visible := False;
           pCtrlHoras.SendToBack;
           pCtrlHoras2.Visible := False;
           pCtrlHoras2.SendToBack;
       end
       else begin
           pDiasQtde.Visible := True;
           pDiasQtde.BringToFront;
           pCtrlDtHora.Visible := True;
           pCtrlDtHora.BringToFront;

           //Edmar - 02/02/2015 - Tab Order dinamico
           pDiasQtde.TabOrder   := 2;
           pCtrlDtHora.TabOrder := 4;

           //
           pCtrlHoras.Visible := False;
           pCtrlHoras.SendToBack;
           pCtrlHoras2.Visible := False;
           pCtrlHoras2.SendToBack;
           //
           pQtdeSaidaAtu.Visible := False;
           pQtdeSaidaAtu.SendToBack;
           pCtrlDesgaste.Visible := False;
           pCtrlDesgaste.SendToBack;
           //
           SelecInfoFaixaPreco;
           edVlrUnitAtu.ValueNumeric := EdVlrUnitProd.ValueNumeric;
           //
           CalculaTotalItemRetorno;
       end;
   end;


   //Seleciona todas as faixas disponíveis
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add(' Select * from faixa_preco');
   DMESTOQUE.Alx1.Open;
   DBLookupComboBox1.ListSource:=DMESTOQUE.DSAlx1;
   DBLookupComboBox1.KeyField:='COD_FAIXAPRECO';
   DBLookupComboBox1.ListField:='DESCRICAO';
   
//   CalculaTotalItemRetorno;
   //
	pInfoRetorno.Visible := True;
   pInfoRetorno.BringToFront;
   pItensProduto.SendToBack;
   DBLookupComboBox1.SetFocus;  
end;

procedure TFOrdemLoca.CalculaTotalItemRetorno;
Var
	Dias, xHoraSaida, xHoraRetorno: Integer;
Begin
	edDiasAtu.ValueInteger := 0;//Edmar - 30/01/2015 - Zera o número de dias
   //verifica se a data de retorno é menor que a data de saida
   //seta quantidade de dias com 0 e aborta o processo
   if edDtRetornoAtu.Date < edDtSaidaAtu.Date then
   	Exit;

   //Verifica intervalo de dias
   Dias := Ceil(StrToFloat(DifDias(edDtSaidaAtu.Date, edDtRetornoAtu.Date, 0)));
   edDiasAtu.ValueInteger:=Dias;
           
   if edDiasAtu.ValueInteger = 0 then
   	edDiasAtu.ValueInteger := 1;

   edVlrTotalAtu.ValueNumeric := edVlrTotalAtu.ValueNumeric;
	//Edmar - 10/01/2014 - Testa se foi informado hora de retorno
   //verificação necessario para eliminar uma mensagem de erro desnecessaria
   if edHrRetornoAtu.Text = '  :  ' then
		edVlrTotalAtu.ValueNumeric := (edDiasAtu.ValueNumeric*XVlrMedioDiaTabela)*edQtdeAtu.ValueNumeric
   else
   begin
  		xHoraSaida := StrToInt(Copy(edHrSaidaAtu.Text, 1, 2));//Edmar - 10/01/2014 - Extratifica hora de saida
		xHoraRetorno := StrToInt(Copy(edHrRetornoAtu.Text, 1, 2));//Edmar - 10/01/2014 - Extratifica hora de retorno

       //Edmar - 10/01/2014 - Teste se a saida e o retorno foi feito no mesmo dia
       // e testa se o equipamento foi retornado antes do meio dia
		if (edDtRetornoAtu.Date = edDtSaidaAtu.Date) and (xHoraRetorno < 13) then
   	begin
       	//EdNumeroDias.ValueNumeric := EdNumeroDias.ValueNumeric + 1;
			edDiasAtu.ValueNumeric := edDiasAtu.ValueNumeric - 0.5;
   		edVlrTotalAtu.ValueNumeric := (edDiasAtu.ValueNumeric*XVlrMedioDiaTabela)*edQtdeAtu.ValueNumeric;
       end
       else
       begin
	        //Edmar - 10/01/2014 - Testa se o produto saiu antes do meio dia e retornou depois do meio dia
           // e calcula como mais meio dia na quantidade total de dias.
  			if (xHoraRetorno > 12) and (xHoraSaida < 12) and (edDtRetornoAtu.Date > edDtSaidaAtu.Date) then
           begin
           	//Edmar - 06/01/2013 - Recalcular valor do produto caso ele tenha sido retirado de manhã e devolvido a tarde.
           	edDiasAtu.ValueNumeric := edDiasAtu.ValueNumeric + 1;
               edDiasAtu.ValueNumeric := edDiasAtu.ValueNumeric - 0.5;
               edVlrTotalAtu.ValueNumeric := (edDiasAtu.ValueNumeric*XVlrMedioDiaTabela)*edQtdeAtu.ValueNumeric;
           end
           else
           begin
           	//Edmar - 10/01/2014 - Se saiu a tarde e retornou de manhã do outro dia, tira meio do numero total de dias
               if (xHoraSaida > 12) and (xHoraRetorno < 13) and (edDtRetornoAtu.Date > edDtSaidaAtu.Date) then
               begin
	            	//EdNumeroDias.ValueNumeric := EdNumeroDias.ValueNumeric + 1;
   				edDiasAtu.ValueNumeric := edDiasAtu.ValueNumeric - 0.5;
   				edVlrTotalAtu.ValueNumeric := (edDiasAtu.ValueNumeric*XVlrMedioDiaTabela)*edQtdeAtu.ValueNumeric;
               end
           	else
           		edVlrTotalAtu.ValueNumeric := (edDiasAtu.ValueNumeric*XVlrMedioDiaTabela)*edQtdeAtu.ValueNumeric;
			end;
       end;
   end;
   edVlrTotalAtu.ValueNumeric := edVlrTotalAtu.ValueNumeric;
end;

procedure TFOrdemLoca.EdDescProdutosExit(Sender: TObject);
begin
  inherited;
try
	if (EdValorProdutos.ValueNumeric = 0) and (EdDescProdutos.ValueNumeric <> 0)
  	then begin
       Mensagem('A T E N Ç Ã O !', 'Não há produtos na Ordem para conceder desconto.', '', 1, 1, False, 'a');
       EdDescProdutos.ValueNumeric := 0;
       Exit;
  	end;

   EfetuaDesconto('PRODUTO', 'PERCENTO');
    EfetuaCalculoISS;
	 RetemIss;
  	lbSaldo.Caption:=FormatFloat('0.00',(EdValorOrd2.ValueNumeric-MDO.QConsulta.FieldByName('VLRADIANTAMENTO').AsCurrency));

except
end;
end;

procedure TFOrdemLoca.EdDtRetornoExit(Sender: TObject);
begin
  inherited;
   CalculaTotalItem;
end;

procedure TFOrdemLoca.EdValorOrd2Exit(Sender: TObject);
begin
  inherited;
try
   If XVLRTPROD<>EdValorOrd2.ValueNumeric
   Then Begin
		CalcPercent(0, XVLRTPROD-EdValorOrd2.ValueNumeric, XVLRTPROD , 'D');
		EdDescProdutos.ValueNumeric:=AlxPercento;
       //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
       //EdValorOrd2.ValueNumeric:=XVLRTPROD;
   End
   Else Begin
       FiltraSlave;
       EdValorOrd2.ValueNumeric:=XVLRTPROD;
       EdValorProdutos.ValueNumeric:=XVLRTPROD;
		EdDescProdutos.ValueNumeric:=0;
   End;
    EfetuaCalculoISS;
  	lbSaldo.Caption:=FormatFloat('0.00',(EdValorOrd2.ValueNumeric-MDO.QConsulta.FieldByName('VLRADIANTAMENTO').AsCurrency));
except
end;
end;

procedure TFOrdemLoca.BtBaixaAdiantamentoClick(Sender: TObject);
var
   ATUFINANC:Boolean;
   Xcod_cta:Integer;
begin
  inherited;
      ATUFINANC:=False;
      if (EdVlrAdiantamento.ValueNumeric <= 0)then
      begin
          Mensagem('OPÇÃO BLOQUEADA', 'Adiantamento não pode ser efetuado com valores nulos.', ' ', 1, 1, true, 'a');
          Exit;
      end;

      //Paulo 12/07/2011: Verifica se ja tem adiantamento lançado
      if (XVLRADIANT > 0) then
      begin
          Mensagem('OPÇÃO BLOQUEADA', 'Já existe adiantamento para essa ordem.', ' ', 1, 1, true, 'a');
          Exit;
      end;

      //Paulo 13/07/2011: Verifica se o valor do adiantamento é maior do que o valor total
      if (EdVlrAdiantamento.ValueNumeric > EdValorOrd2.ValueNumeric) then
      begin
          Mensagem('OPÇÃO BLOQUEADA', 'O valor do adiantamento não pode ser maior que o valor total.', ' ', 1, 1, true, 'a');
          Exit;
      end;

      //Paulo 12/07/2011: verifica se o caixa estah aberto
      If DMCAIXA.VerifAbCaixa = false
      Then Begin
           Mensagem('   A T E N Ç Ã O   ','CAIXA FECHADO. O ADIANTAMENTO NÃO PODE SER EFETUADO.','',1,1,false,'a');
           Exit;
      End;
      //Filtra loja
      FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
      //***********************************************
      // INICIO DE PROCESSO PARA CONTROLE FINANCEIRO **
      //***********************************************
      //Filtra cliente
      FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCodCliente), '');
      Xcod_cta:=DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger;
      If LanCaixa(-1, DateToStr(Date()), Xcod_cta, 'Adiantamento Ordem Serv. '+EdNumero.Text+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString,  EdVlrAdiantamento.ValueNumeric, 'ADORDSERV', XCodOrdem, 'Carteira', 'E', EdNumero.Text, Date(), '1')=True
      Then Begin//informa que a atualização do financeiro foi efetivada
         ATUFINANC:=True;
      End
      Else Begin//informa que a finalização do financeiro falhou
         ATUFINANC:=False;
      End;  

      //Verifica se todas as atualizações foram possíveis
      If ATUFINANC=True
      Then Begin //então tenta-se confirmar operação
			Try
               //Paulo 11/07/2011: Salva o valor do adiantamento
               If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCodOrdem), '')
               Then Begin
               	DMServ.TOrd.Edit;
               	DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency:=EdVlrAdiantamento.ValueNumeric;
               	DMServ.TOrd.Post;
               	DMServ.TOrd.ApplyUpdates;
                   DMServ.IBT.CommitRetaining;
               End;
               XVLRADIANT:=EdVlrAdiantamento.ValueNumeric;
               EdVlrAdiantamento.ReadOnly:=True;
               //Paulo 12/07/2011: Calcula o valor do saldo
               lbSaldo.Caption:=FormatFloat('0.00',(EdValorOrd2.ValueNumeric - EdVlrAdiantamento.ValueNumeric));
               BtBaixaAdiantamento.Enabled:=False;
               BtCancelaBaixaAdiantamento.Enabled:=True;

               //EFETUA TRANSAÇÕES
               DMServ.IBT.CommitRetaining;
               MDO.Transac.CommitRetaining;
               //DMCAIXA.IBT.CommitRetaining;
               Mensagem('INFORMAÇÃO AO USUÁRIO', 'ADIANTAMENTO LANÇADO COM SUCESSO!', '', 1, 1, false, 'i');
           Except
               Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao lançar adiantamento da ordem de serviço.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
               //DMCAIXA.IBT.RollbackRetaining;
               MDO.Transac.RollbackRetaining;
               DMServ.IBT.RollbackRetaining;
           End;
       End
       Else Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar a ordem de serviço, os dados serão mantidos e a ordem aberto.', 'Ocorreram problemas ao gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
           DMCAIXA.IBT.RollbackRetaining;
           DMServ.IBT.RollbackRetaining;
           EdVlrAdiantamento.ReadOnly:=False;
       End;
end;

procedure TFOrdemLoca.BtCancelaBaixaAdiantamentoClick(Sender: TObject);
var
   XatAd:Boolean;
begin
  inherited;
       XatAd:=False;
       //Paulo 11/07/2011: Cancela lançamento de adiantamento
       If Mensagem('A T E N Ç Ã O', 'DESEJA EFETUAR O CANCELAMENTO DO ADIANTAMENTO DA ORDEM DE SERVIÇO:'+#13+'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
       Then Begin
           // verifica se o caixa estah aberto
           If DMCAIXA.VerifAbCaixa = false
           Then Begin
               Mensagem('   A T E N Ç Ã O   ','CAIXA FECHADO. O ADIANTAMENTO NÃO PODE SER CANCELADO.','',1,1,false,'I');
               Exit;
           End;

           //Filtra cliente
           FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCodCliente), '');
           //filtra loja para capturar as configurações
           FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');


           //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
           DMCAIXA.TLanCaixa.Close;
           DMCAIXA.TLanCaixa.SQL.Clear;
           DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR='+#39+'ADORDSERV'+#39+') AND (COD_GERADOR=:CODPEDIDO) AND (VALOR=:VALOR)');
           DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsInteger:=XCodOrdem;
           DMCAIXA.TLanCaixa.ParamByName('VALOR').AsCurrency:= EdVlrAdiantamento.ValueNumeric;
           DMCAIXA.TLanCaixa.Open;
           DMCAIXA.TLanCaixa.First;
           If Not DMCAIXA.TLanCaixa.IsEmpty
           Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
               If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. Adiantamento de O.S. '+EdNumero.Text+' Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TADOS', XCodOrdem, 'Carteira', 'S', 'EST'+EdNumero.Text, Date(), '1')= True Then
               begin
                   //DMCAIXA.IBT.CommitRetaining;
                   MDO.Transac.CommitRetaining;
                   XatAd:=True;
               end
               Else begin
                   MDO.Transac.RollbackRetaining;
                   XatAd:=False;
               end;
           End;
           If XatAd=True
           Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
               //Paulo 11/07/2011: Salva o valor do adiantamento
               If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCodOrdem), '')
               Then Begin
                   DMServ.TOrd.EDIT;
                   DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency:=0;
                   DMServ.TOrd.Post;
                   DMServ.IBT.CommitRetaining;
               End;
               EdVlrAdiantamento.Text:='0,00';
               XVLRADIANT:=0;
               lbSaldo.Caption:=EdValorOrd2.Text;
               EdVlrAdiantamento.ReadOnly:=False;
               BtBaixaAdiantamento.Enabled:=True;
               BtCancelaBaixaAdiantamento.Enabled:=False;
           End;
       End;
end;
 // Mauro - 11/10/2012
 // Relação Mensal da Ordem de Locação
procedure TFOrdemLoca.Button4Click(Sender: TObject);
begin
  //inherited;
  	if DMServ.WOrdemDesp.FieldByName('FORMPAG').AsString = 'MENSAL' then
   	FaturaOSMensal(DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger)
   else begin
        if DMServ.WOrdemDesp.FieldByName('LOCALAT').AsString <> 'Sim' then
   	    //BtnFechaPedClick(sender)
           FecharOrdemDeServico
        else
            Mensagem(' I N F O R M A Ç Ã O ', 'Esta O.S. não pode ser faturada novamente.', '', 1, 1, False, 'I');
   end;
end;

procedure TFOrdemLoca.Produtoslocados1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   FMenu.TIPOREL:='RELPRODORDEM';
   FMenu.TIPOAUX:='ORDEM';   
 	AbrirForm(TFRelPadraoPed, FRelPadraoPed, 0);
end;

procedure TFOrdemLoca.EdTxEntregaExit(Sender: TObject);
begin
  inherited;
   FiltraSlave;
end;

procedure TFOrdemLoca.btnExpedicaoClick(Sender: TObject);
begin
  inherited;
      AbrirForm(TFExpedicao, FExpedicao, 0);
end;

procedure TFOrdemLoca.CompdeFechamento1Click(Sender: TObject);
Var
	ContParc, Cod_Tmp: Integer;
   Xdesc1, Xdesc2, Xdesc3: String;
begin
  inherited;
  // FSDSRel.DataSet := DMESTOQUE.TSlave;
  // FSRel.Dataset := FSDSRel;

  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELABERTORD', 'M')=False Then
  		Exit;

   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

   //FILTRA DADOS PARA CABEÇALHO DA ORDEM
   DMServ.Alx.Close;
   DMServ.Alx.SQL.Clear;
   DMServ.Alx.SQL.Add(' Select ordem.cod_ordem, ordem.totajudante, pessoa.nome, pessoaj.razao_social, pessoa.cpfcnpj, vwcidade.nome as cidade, ');
   DMServ.Alx.SQL.Add(' vwcidade.uf AS UF_ESTADO, pessoa.CEP, pessoa.bairro, pessoa.telrel, pessoa.endereco, pessoa.endnumero ');
   DMServ.Alx.SQL.Add(' from ordem ');
   DMServ.Alx.SQL.Add(' Left Join cliente on ordem.cod_cliente = cliente.cod_cliente ');
   DMServ.Alx.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
   DMServ.Alx.SQL.Add(' left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa ');
   DMServ.Alx.SQL.Add(' left join vwcidade on pessoa.cod_cidade = vwcidade.cod_cidade where ordem.cod_ordem=:codigo ');
   DMServ.Alx.ParamByName('codigo').AsInteger:=DMSERV.WOrdemDesp.FieldByNAme('COD_ORDEM').AsInteger;
   DMServ.Alx.Open;
   //FILTRA CLIENTE PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSERV.WOrdemDesp.FieldByNAme('COD_CLIENTE').AsString, '')=False
   Then Begin
   	MessageDlg('Verifique o cliente para a ordem', mtWarning, [mbOK], 0);
		Exit;
   End;

   //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '')=False
   Then Begin
   	MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK], 0);
   	Exit;
   End;
   //FILTRA PESSOA JURIDICA CASO EXISTA UMA PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TPessoaj, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');


   //FILTRA CIDADE DA EMPRESA
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByNAme('COD_CIDADE').AsString, '');

   //FILTRA ESTADO DA EMPRESA
   FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

   //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

   //FILTRA ORDEM PARA IMPRESSÃO
   If FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.WOrdemDesp.FieldByNAme('COD_ORDEM').AsString, '')=False Then
   	Exit;

   //FILTRA EQUIPAMENTO PARA IMPRESSÃO - obra
   If DMSERV.TOrd.FieldByNAme('COD_EQUIPAMENTO').AsString<>'' Then
      FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMSERV.TOrd.FieldByNAme('COD_EQUIPAMENTO').AsString, '');


   //FILTRA FORMA DE PAGAMENTO
   FiltraTabela(DMFINANC.TFormPag , 'FORMPAG', 'COD_FORMPAG', DMSERV.TOrd.FieldByNAme('COD_FORMPAG').AsString, '');

   //VENDEDOR
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(DMSERV.WOrdemDesp.FieldByNAme('cod_vendedor').AsInteger) , '');

   XCodOrdem:=DMSERV.WOrdemDesp.fieldbyname('COD_ORDEM').AsInteger;

   //FILTRA PRODUTOS, SERVIÇOS E DESPESAS
   //Paulo 24/01/2012: seleciona apenas os esquipamentos
   DMESTOQUE.TSlave.Close;
   DMESTOQUE.TSlave.SQL.Clear;
   DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque, itprodord.qtd, itprodord.total, ');
   DMESTOQUE.TSlave.SQL.Add('itprodord.vlrunit, subproduto.descricao, subproduto.marca, subproduto.contrint, subproduto.LOCALESTANTE, subproduto.ctrl_desgaste, ');
   DMESTOQUE.TSlave.SQL.Add('itprodord.dtretirada, itprodord.hrretirada, itprodord.dtretorno, itprodord.hrretorno, itprodord.qtdret, itprodord.desgaste_saida, itprodord.desgaste_consumido, itprodord.desgaste_retorno, ');
	DMESTOQUE.TSlave.SQL.Add('itprodord.ctrl_hora, itprodord.qtde_hora_saida, itprodord.qtde_hora_retorno, itprodord.qtde_hora_consumida ');
   DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TSlave.SQL.Add(' Where (itprodord.cod_ordem = :CODORDEM) and (itprodord.operacao <> :OPERACAO) ');
   DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger:=XCodOrdem;
   DMESTOQUE.TSlave.ParamByName('OPERACAO').AsString:='ACES';
   //DMESTOQUE.TSlave.SQL.Add('  order by itprodord.operacao  desc ');
   DMESTOQUE.TSlave.Open;
   If DMESTOQUE.TSlave.IsEmpty Then
   	MessageDlg('OS sem itens de locação', mtWarning, [mbOK], 0);

   //Paulo 24/01/2012: seleciona apenas os acessórios
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('Select itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque, itprodord.qtd, itprodord.total, ');
   DMESTOQUE.TRel.SQL.Add('itprodord.vlrunit, subproduto.descricao,  itprodord.dtretirada,itprodord.hrretirada, itprodord.dtretorno, itprodord.hrretorno, itprodord.qtdret  ');
   DMESTOQUE.TRel.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.TRel.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TRel.SQL.Add(' Where (itprodord.cod_ordem = :CODORDEM) and (itprodord.operacao = :OPERACAO)  ');
   DMESTOQUE.TRel.ParamByName('CODORDEM').AsInteger:=XCodOrdem;
   DMESTOQUE.TRel.ParamByName('OPERACAO').AsString:='ACES';
   //DMESTOQUE.TRel.SQL.Add('  order by itprodord.operacao  desc ');
   DMESTOQUE.TRel.Open;
   If DMESTOQUE.TRel.IsEmpty Then
   	MessageDlg('OS sem acessórios', mtWarning, [mbOK], 0);



   // se a atividade for EQUIPE, eh selecionado as despesas
   If (DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE') and (DMMACS.TLoja.FieldByName('MODELOORDEM').AsString='6')
   Then Begin
       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add('select despadic.cod_gerador, despadic.despesa, equipe.cod_equipe, equipe.descricao from despadic');
       DMESTOQUE.Alx4.SQL.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
       DMESTOQUE.Alx4.SQL.Add('where despadic.cod_gerador = :codigo');
       DMESTOQUE.Alx4.ParamByName('codigo').AsInteger := XCodOrdem;
       DMESTOQUE.Alx4.Open;
   End;
   /////////////
   //FINANCEIRO
   ////////////

   //a situação financeira será gerado na tabela tmp para ser impressa
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' delete from tmp ');
   DMMACS.TMP.ExecSQL;
   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' SELECT * FROM TMP ');
   DMMACS.TMP.Open;

   Cod_Tmp:=1;
   If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
   Then Begin
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
       DMMACS.TMP.FieldByName('DESC1').AsString:=DMServ.TOrd.FieldByName('dtfech').AsString;
       DMMACS.TMP.FieldByName('DESC2').AsString:='À VISTA';
       DMMACS.TMP.FieldByName('DESC3').AsString:='';
       DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMServ.TOrd.FieldByName('totord').AsCurrency;
       DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMServ.TOrd.FieldByName('totord').AsCurrency;
       DMMACS.TMP.FieldByName('DATA1').AsString:=DMServ.TOrd.FieldByName('dtfech').AsString;
       DMMACS.TMP.Post;
       DMMACS.Transaction.CommitRetaining;
       
       Cod_Tmp:=Cod_Tmp+1;
       DMCONTA.IBT.CommitRetaining;
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add('  Select tmp.desc1 as DTVENC, tmp.desc2 AS COBRANCA, tmp.vlr1 AS VALOR, tmp.desc3 AS PERIODO, tmp.data1 AS DTDEBITO, TMP.vlr2 AS VALORPG ');
       DMCONTA.TAlx.SQL.Add('  from tmp ');
       DMCONTA.TAlx.Open;
       FSFORMPAG.DataSet := DMCONTA.TAlx;
       Fsrel.Dataset := FSFORMPAG;
       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrFFechaLocacao.frf');
       FSRel.ShowReport;
	End
   Else Begin
	    // 01. Verificamos se a os em questão é mensal e possui fatura
       DMMacs.TALX.Close;
       DMMacs.TALX.sql.Clear;
       DMMacs.TALX.SQL.Add('  Select parcelacr.cod_parcelacr, ctareceber.cod_ctareceber, periodofatura.cod_periodofatura, periodofatura.dtini, periodofatura.dtfim, ');
       DMMacs.TALX.SQL.Add('          parcelacr.dtvenc, parcelacr.valor, parcelacr.dtdebito, parcelacr.valorpg, parcelacr.cobranca ');
       DMMacs.TALX.SQL.Add('   from parcelacr ');
       DMMacs.TALX.SQL.Add('   left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
       DMMacs.TALX.SQL.Add('   left join periodofatura on ctareceber.cod_gerador = periodofatura.cod_periodofatura ');
       DMMacs.TALX.SQL.Add('   left join vwordem on periodofatura.cod_ordem = vwordem.cod_ordem ');
       //DMMacs.TALX.SQL.Add('   Where  (vwordem.formapag=''MENSAL'')  and (vwordem.status=''FECHADO'') and (ctareceber.tipogerador=''FOS'') and (periodofatura.cod_ordem=:CODGERADOR) ');
       DMMacs.TALX.SQL.Add('   Where  (vwordem.formapag=''MENSAL'') and (ctareceber.tipogerador=''FOS'') and (periodofatura.cod_ordem=:CODGERADOR) ');
       DMMACS.TALX.SQL.Add(' ORDER BY PARCELACR.DTVENC DESC ');       
       DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:= XCodOrdem;
       DMMACS.TALX.Open;
       If not DMMACS.TALX.IsEmpty then
       begin
           ContParc:=0;
           DMMACS.TALX.First;
           while not DMMACS.TALX.Eof do
           Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
               DMMACS.TMP.FieldByName('DESC1').AsString:=DMMacs.TALX.FieldByName('dtvenc').AsString;
               DMMACS.TMP.FieldByName('DESC2').AsString:=DMMacs.TALX.FieldByName('cobranca').AsString;
               DMMACS.TMP.FieldByName('DESC3').AsString:=DMMacs.TALX.FieldByName('dtini').AsString+' - '+DMMacs.TALX.FieldByName('dtfim').AsString;
               DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMMacs.TALX.FieldByName('valor').AsCurrency;
               DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMMacs.TALX.FieldByName('valorPG').AsCurrency;
               DMMACS.TMP.FieldByName('DATA1').AsDateTime:=DMMacs.TALX.FieldByName('DTDEBITO').AsCurrency;
               DMMACS.TMP.Post;
               Cod_Tmp:=Cod_Tmp+1;
               DMMACS.TALX.Next;
               ContParc:=ContParc+1;
           End;
           DMMACS.Transaction.CommitRetaining;
           DMCONTA.IBT.CommitRetaining;
           DMCONTA.TAlx.Close;
           DMCONTA.TAlx.SQL.Clear;
           DMCONTA.TAlx.SQL.Add('  Select tmp.desc1 as DTVENC, tmp.desc2 AS COBRANCA, tmp.vlr1 AS VALOR, tmp.desc3 AS PERIODO, tmp.data1 AS DTDEBITO, TMP.vlr2 AS VALORPG ');
           DMCONTA.TAlx.SQL.Add('  from tmp ');
           DMCONTA.TAlx.Open;
           FSFORMPAG.DataSet := DMCONTA.TAlx;
           Fsrel.Dataset := FSFORMPAG;
           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrFFechaLocacao.frf');
           FSRel.ShowReport;
       End
       Else Begin
           // 01. Verificamos se a os em questão é mensal e possui fatura
           DMMacs.TALX.Close;
           DMMacs.TALX.sql.Clear;
           DMMacs.TALX.SQL.Add('    Select parcelacr.cod_parcelacr, ctareceber.cod_ctareceber,  parcelacr.dtvenc, parcelacr.valor, parcelacr.dtdebito, parcelacr.valorpg, parcelacr.cobranca ');
           DMMacs.TALX.SQL.Add('       from parcelacr ');
           DMMacs.TALX.SQL.Add('       left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
           DMMacs.TALX.SQL.Add('       left join vwordem on ctareceber.cod_gerador = vwordem.cod_ordem ');
           DMMacs.TALX.SQL.Add('       Where (vwordem.cod_ordem=:CODGERADOR) and (ctareceber.tipogerador = ''ORD'') ');
           DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:= XCodOrdem;
           DMMACS.TALX.Open;
           If not DMMACS.TALX.IsEmpty then
           begin
               ContParc:=0;
               DMMACS.TALX.First;
               while not DMMACS.TALX.Eof do
               Begin
                   DMMACS.TMP.Insert;
                   DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
                   DMMACS.TMP.FieldByName('DESC1').AsString:=DMMacs.TALX.FieldByName('dtvenc').AsString;
                   DMMACS.TMP.FieldByName('DESC2').AsString:=DMMacs.TALX.FieldByName('cobranca').AsString;
                   DMMACS.TMP.FieldByName('DESC3').AsString:='';
                   DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMMacs.TALX.FieldByName('valor').AsCurrency;
                   DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMMacs.TALX.FieldByName('valorPG').AsCurrency;
                   DMMACS.TMP.FieldByName('DATA1').AsDateTime:=DMMacs.TALX.FieldByName('DTDEBITO').AsCurrency;
                   DMMACS.TMP.Post;
                   Cod_Tmp:=Cod_Tmp+1;
                   DMMACS.TALX.Next;
                   ContParc:=ContParc+1;
               End;
               DMMACS.Transaction.CommitRetaining;
               DMCONTA.IBT.CommitRetaining;
               DMCONTA.TAlx.Close;
               DMCONTA.TAlx.SQL.Clear;
               DMCONTA.TAlx.SQL.Add('  Select tmp.desc1 as DTVENC, tmp.desc2 AS COBRANCA, tmp.vlr1 AS VALOR, tmp.desc3 AS PERIODO, tmp.data1 AS DTDEBITO, TMP.vlr2 AS VALORPG ');
               DMCONTA.TAlx.SQL.Add('  from tmp ');
               DMCONTA.TAlx.Open;
               FSFORMPAG.DataSet := DMCONTA.TAlx;
               Fsrel.Dataset := FSFORMPAG;
               FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrFFechaLocacao.frf');
               FSRel.ShowReport;
           End
           else begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=Cod_Tmp;
               DMMACS.TMP.FieldByName('DESC1').AsString := '-';
               DMMACS.TMP.FieldByName('DESC2').AsString := '-';
               DMMACS.TMP.FieldByName('DESC3').AsString := '-';
               DMMACS.TMP.FieldByName('VLR1').AsCurrency := 0;
               DMMACS.TMP.FieldByName('VLR2').AsCurrency := 0;
               DMMACS.TMP.FieldByName('DATA1').AsString := '';
               DMMACS.TMP.Post;
               DMMACS.Transaction.CommitRetaining;
               //
               DMCONTA.IBT.CommitRetaining;
               DMCONTA.TAlx.Close;
               DMCONTA.TAlx.SQL.Clear;
               DMCONTA.TAlx.SQL.Add('  Select tmp.desc1 as DTVENC, tmp.desc2 AS COBRANCA, tmp.vlr1 AS VALOR, tmp.desc3 AS PERIODO, tmp.data1 AS DTDEBITO, TMP.vlr2 AS VALORPG ');
               DMCONTA.TAlx.SQL.Add('  from tmp ');
               DMCONTA.TAlx.Open;
               FSFORMPAG.DataSet := DMCONTA.TAlx;
               Fsrel.Dataset := FSFORMPAG;
               FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrFFechaLocacao.frf');
           	FSRel.ShowReport;
           end;
       End;
   End;
end;

procedure TFOrdemLoca.edHrRetornoExit(Sender: TObject);
begin
  inherited;
	if not (FiltraTabela(DMESTOQUE.Alx, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, 'AND (CTRL_HORA = ''1'')')) then
  		CalculaTotalItem;
end;

procedure TFOrdemLoca.EdHrSaidaExit(Sender: TObject);
begin
  inherited;
	if not (FiltraTabela(DMESTOQUE.Alx, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, 'AND (CTRL_HORA = ''1'')')) then
  		CalculaTotalItem;
end;

procedure TFOrdemLoca.EscondeMostraPaineis;
begin
	if FiltraTabela(DMESTOQUE.Alx, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, 'AND (CTRL_DESGASTE = ''1'')') then
   begin
    	cbControleHora.Checked := False;//Edmar - 09/07/2014 - Desmarca CheckBox de controle por hora


   	//Edmar - 24/06/2014 - Mostra novos paineis de controle de saida e retorno de desgaste
    	pQtdeSaida.Visible := True;
    	pQtdeSaida.BringToFront;
    	pQtdeRetorno.Visible := True;
    	pQtdeRetorno.BringToFront;

    	//Edmar - 09/07/2014 - TabOrder dinamico
    	pQtdeSaida.TabOrder := 3;
    	pQtdeRetorno.TabOrder := 4;

    	//Edmar - 24/06/2014 - Esconde paineis de controle de data e hora
    	pData.Visible := False;
    	pData.SendToBack;
    	pDias.Visible := False;
    	pDias.SendToBack;
    	pHrSaida.Visible := False;
    	pHrSaida.SendToBack;
    	pHrRetorno.Visible := False;
    	pHrRetorno.SendToBack;

   end
   else begin

       FiltraTabela(DMESTOQUE.Alx, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString,'');
   	if DMESTOQUE.Alx.FieldByName('CTRL_HORA').AsString = '1' then
       begin
           cbControleHora.Checked := True;//Edmar - 09/07/2014 - Marca CheckBox de controle por hora

           //Edmar - 09/07/2014 - Mostra os paineis referente ao controle por hora
           pHrRetorno.Visible := True;
           pHrRetorno.BringToFront;
           pHrSaida.Visible := True;
           pHrSaida.BringToFront;

           //Edmar - 09/07/2014 - TabOrder dinamico
           pHrSaida.TabOrder := 3;
           pHrRetorno.TabOrder := 4;

           //Edmar - 09/07/2014 - Esconde o restante dos paineis
           pDias.Visible := False;
           pDias.SendToBack;
           pData.Visible := False;
           pData.SendToBack;
           pQtdeSaida.Visible := False;
           pQtdeSaida.SendToBack;
           pQtdeRetorno.Visible := False;
           pQtdeRetorno.SendToBack;
       end
      	else begin
    		cbControleHora.Checked := False;//Edmar - 09/07/2014 - Desmarca CheckBox de controle por hora
                  
         	//Edmar - 09/07/2014 - Mostra os paineis padrões da ordem de locação
         	pDias.Visible := True;
         	pDias.BringToFront;
         	pData.Visible := True;
         	pData.BringToFront;

         	//Edmar - 09/07/2014 - TabOrder dinâmico
         	pDias.TabOrder := 3;
         	pData.TabOrder := 4;

         	//Edmar - 09/07/2014 - Esconde paines de controle desgaste e hora
         	pQtdeSaida.Visible := False;
         	pQtdeSaida.SendToBack;
         	pQtdeRetorno.Visible := False;
         	pQtdeRetorno.SendToBack;
         	pHrSaida.Visible := False;
         	pHrSaida.SendToBack;
         	pHrRetorno.Visible := False;
       	pHrRetorno.SendToBack;
      end;
   end;
end;

procedure TFOrdemLoca.edQtdeRetornoExit(Sender: TObject);
begin
  inherited;
  if xCtrlDesgaste then
  begin
  	edQtdeConsumida.ValueNumeric := edQtdeSaida.ValueNumeric - edQtdeRetorno.ValueNumeric;
   if edQtdeConsumida.ValueNumeric < 0 then
   begin
		Mensagem('   A T E N Ç Ã O   ','O valor de retorno é maior que o valor de saída. Por favor verifique!','',1,1,false,'I');

       edQtdeRetorno.SetFocus;
       edQtdeConsumida.Text := '0,00';
   end;
   
   EdVlrTotProd.ValueNumeric := EdVlrUnitProd.ValueNumeric * edQtdeConsumida.ValueNumeric;

   //xCtrlDesgaste := False;
  end;
end;

procedure TFOrdemLoca.DBGListaClienteDblClick(Sender: TObject);
begin
  inherited;
	SelecionaClienteLista;
end;

procedure TFOrdemLoca.DBGListaClienteKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	FrmClienteEdDescricaoKeyUp(sender, key, shift);
end;

procedure TFOrdemLoca.cbControleHoraClick(Sender: TObject);
begin
  inherited;
	if cbControleHora.Checked then
   begin
   	//Edmar - 09/07/2014 - Mostra os paineis referente ao controle por hora
   	pHrSaida.Visible := True;
       pHrSaida.BringToFront;
       pHrRetorno.Visible := True;
       pHrRetorno.BringToFront;

       //Edmar - 09/07/2014 - TabOrder dinamico
       pHrSaida.TabOrder := 3;
       pHrRetorno.TabOrder := 4;       

       //Edmar - 09/07/2014 - Esconde o restante dos paineis
    	pDias.Visible := False;
       pDias.SendToBack;
       pData.Visible := False;
       pData.SendToBack;
       pQtdeSaida.Visible := False;
       pQtdeSaida.SendToBack;
       pQtdeRetorno.Visible := False;
       pQtdeRetorno.SendToBack;
	end;

   if not cbControleHora.Checked then
   begin
       //Edmar - 09/07/2014 - Mostra o restante dos paineis
    	pDias.Visible := True;
       pDias.BringToFront;
       pData.Visible := True;
       pData.BringToFront;

       //Edmar - 09/07/2014 - TabOrder dinamico
       pDias.TabOrder := 3;
       pData.TabOrder := 4;

       //Edmar - 09/07/2014 - Esconde controle por hora
   	pHrSaida.Visible := False;
       pHrSaida.SendToBack;
       pHrRetorno.Visible := False;
       pHrRetorno.SendToBack;
	end;
   
   BtnInsertProd.TabOrder := 5;
   BtnDeleteProd.TabOrder := 6;
end;

procedure TFOrdemLoca.edQtdeHrRetornoExit(Sender: TObject);
begin
  inherited;
	if xCtrlDesgaste then
   begin
   	edQtdeHrConsumidas.ValueNumeric := edQtdeHrRetorno.ValueNumeric - edQtdeHrSaida.ValueNumeric;

       if edQtdeHrConsumidas.ValueNumeric < 0 then
       begin
           Mensagem('   A T E N Ç Ã O   ','O valor de retorno é maior que o valor de saída. Por favor verifique!','',1,1,false,'I');

           edQtdeHrRetorno.SetFocus;
           edQtdeHrConsumidas.Text := '0,00';
       end;

       EdVlrTotProd.ValueNumeric := EdVlrUnitProd.ValueNumeric * edQtdeHrConsumidas.ValueNumeric;
       CalculaTotalItem;
   end;
end;

procedure TFOrdemLoca.ContratoLocao1Click(Sender: TObject);
var
	xNrContratoValido: Integer;
   xValorPromissoria: Real;
begin
   inherited;
   try
       DMServ.Alx.Close;
       DMServ.Alx.SQL.Clear;
       DMServ.Alx.SQL.Add('SELECT ORDEM.NRCONTRATO FROM ORDEM WHERE ORDEM.cod_ordem = :ORDEM');
       DMServ.Alx.ParamByName('ORDEM').AsInteger := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
       DMServ.Alx.Open;

       if DMServ.Alx.FieldByName('NRCONTRATO').AsString = '' then
       begin
           DMServ.Alx.Close;
           DMServ.Alx.SQL.Clear;
           DMServ.Alx.SQL.Add('SELECT MAX(ORDEM.NRCONTRATO) NRCONTRATO FROM ORDEM');
           DMServ.Alx.Open;

           xNrContratoValido := DMServ.Alx.FieldByName('NRCONTRATO').AsInteger;

           try
               DMServ.Alx.Close;
               DMServ.Alx.SQL.Clear;
               DMServ.Alx.SQL.Add('UPDATE ORDEM SET ORDEM.NRCONTRATO = :NR WHERE ORDEM.COD_ORDEM = :ORDEM');
               DMServ.Alx.ParamByName('NR').AsInteger := xNrContratoValido + 1;
               DMServ.Alx.ParamByName('ORDEM').AsInteger := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;

               DMServ.Alx.ExecSQL;
               DMServ.IBT.CommitRetaining;
           except
               MessageDlg('Erro ao gravar número do contrato', mtError, [mbOK], 0);
               DMServ.IBT.CommitRetaining;
           end;
       end;

       //Edmar - 23/07/2014 - Empresa
       FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');

       //Edmar - 23/07/2014 - Cliente
       FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.WOrdemDesp.FieldByName('COD_CLIENTE').AsString, '');

       //Edmar - 23/07/2014 - Cidade empresa
       FiltraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
       frxCidade.DataSet := DMGEOGRAFIA.WCidade;

       //Edmar - 23/07/2014 - Informações da ordem
       DMServ.Alx.Close;
       DMServ.Alx.SQL.Clear;
       DMServ.Alx.SQL.Add(' select ordem.dtabert ABERTURA, equipamento.descricao OBRA, ordem.contato, formpag.descricao FORMAPAGAMENTO, ');
       DMServ.Alx.SQL.Add(' usuario.login USUARIO, vwfuncionario.nome VENDEDOR, ordem.totord TOTAL, ordem.NRCONTRATO from ordem ');
       DMServ.Alx.SQL.Add(' left join equipamento on equipamento.cod_equipamento = ordem.cod_equipamento ');
       DMServ.Alx.SQL.Add(' left join formpag on formpag.cod_formpag = ordem.cod_formpag ');
       DMServ.Alx.SQL.Add(' left join usuario on usuario.codusuario = ordem.cod_usuario ');
       DMServ.Alx.SQL.Add(' left join vwfuncionario on ordem.cod_vendedor = vwfuncionario.cod_func ');
       DMServ.Alx.SQL.Add(' where ordem.cod_ordem = :ORDEM ');
       DMServ.Alx.ParamByName('ORDEM').AsInteger := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
       DMServ.Alx.Open;

       //Edmar - 23/07/2014 - Itens da ordem
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' select itprodord.qtd, subproduto.descricao, itprodord.total, itprodord.dtretorno, faixa_preco.descricao TIPO from ordem ');
       DMESTOQUE.TRel.SQL.Add(' left join itprodord on itprodord.cod_ordem = ordem.cod_ordem ');
       DMESTOQUE.TRel.SQL.Add(' left join estoque on estoque.cod_estoque = itprodord.cod_estoque ');
       DMESTOQUE.TRel.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
       DMESTOQUE.TRel.SQL.Add(' left join tabelafaixapreco on tabelafaixapreco.cod_tabelafaixapreco = itprodord.cod_tabelafaixapreco ');
       DMESTOQUE.TRel.SQL.Add(' left join faixa_preco on faixa_preco.cod_faixapreco = tabelafaixapreco.cod_faixapreco ');
       DMESTOQUE.TRel.SQL.Add(' where (ordem.cod_ordem = :ORDEM)');
       DMESTOQUE.TRel.ParamByName('ORDEM').AsInteger := DMSERV.WOrdemDesp.FieldByNAme('COD_ORDEM').AsInteger;
       DMESTOQUE.TRel.Open;

       {DMESTOQUE.TRel.Last;
       //
       if DMESTOQUE.TRel.RecordCount > 15 then
       begin
           Mensagem('   A T E N Ç Ã O   ','O contrato não pode ser gerado com mais de 15 itens!','',1,1,false,'I');

           Exit;
       end;}

       DMESTOQUE.TRel.First;



       //Edmar - 12/08/2014 - Filtra buscando a descrição detalhada do produto para a promissoria
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' select subproduto.descricao, subproduto.marca, subproduto.localestante, subproduto.especificacao, estoque.vlrunitcomp VALOR from itprodord ');
       DMESTOQUE.Alx.SQL.Add(' left join estoque on estoque.cod_estoque = itprodord.cod_estoque ');
       DMESTOQUE.Alx.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
       DMESTOQUE.Alx.SQL.Add(' where (itprodord.cod_ordem = :ORDEM) and (itprodord.operacao <> ''ACES'')');
       DMESTOQUE.Alx.ParamByName('ORDEM').AsInteger := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
       DMESTOQUE.Alx.Open;


       xValorPromissoria := 0;
       DMESTOQUE.Alx.First;
       while not DMESTOQUE.Alx.Eof do
       begin
           xValorPromissoria := xValorPromissoria + DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;

           DMESTOQUE.Alx.Next;
       end;

       //Edmar - 12/08/2014 - Converte e salva o valor por extenso da dívida
       FMenu.Extenso.Numero := FormatFloat('#####0.00', xValorPromissoria);

       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('DELETE FROM TMP');
       DMMACS.TALX.ExecSQL;
       DMMACS.Transaction.CommitRetaining;

       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('INSERT INTO TMP (DESC500, VLR1) VALUES(:EXT, :VLR) ');
       DMMACS.TALX.ParamByName('EXT').AsString := FMenu.Extenso.Extenso;
       DMMACS.TALX.ParamByName('VLR').AsCurrency := xValorPromissoria;
       DMMACS.TALX.ExecSQL;
       DMMACS.Transaction.CommitRetaining;

       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('SELECT * FROM TMP');
       DMMACS.TMP.Open;

       frxTmp.DataSet := DMMACS.TMP;

       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' select parcelacr.dtvenc VENCIMENTO from ctareceber ');
       DMFINANC.TAlx.SQL.Add(' left join parcelacr on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
       DMFINANC.TAlx.SQL.Add(' where ctareceber.cod_gerador = :ORDEM ');
       DMFINANC.TAlx.ParamByName('ORDEM').AsInteger := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
       DMFINANC.TAlx.Open;

       frxRel.LoadFromFile('C:\MZR\MACS\Rel\FrfContratoLocacao.fr3');
       frxRel.ShowReport();
   except
   	on E : Exception do
       	ShowMessage('Erro ao gerar Contrato de Locação '+E.Message);
   end;
end;

procedure TFOrdemLoca.EdBuscaAcessorioEnter(Sender: TObject);
begin
  inherited;
   DMESTOQUE.Alx5.Close ;
   DMESTOQUE.Alx5.SQL.Clear;
   DMESTOQUE.Alx5.SQL.Add(' select * from vwsimilar ');
   DMESTOQUE.Alx5.SQL.Add(' left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
   DMESTOQUE.Alx5.SQL.Add(' where subproduto.usoconsumo=''5'' order by vwsimilar.descricao  ');
   DMESTOQUE.Alx5.Open;
end;

procedure TFOrdemLoca.DBGListaAcessoriosDblClick(Sender: TObject);
begin
  inherited;
   XCodTmpEstoque := DBGListaAcessorios.Columns[0].Field.Text;

   DMESTOQUE.Alx4.Close;
   DMESTOQUE.Alx4.SQL.Clear;
   DMESTOQUE.Alx4.SQL.Add('  select * from vwsimilar ');
   DMESTOQUE.Alx4.SQL.Add('  left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
   DMESTOQUE.Alx4.SQL.Add('  where (subproduto.usoconsumo='+#39+'5'+#39+')  and (vwsimilar.cod_estoque=:codigo)' );
   DMESTOQUE.Alx4.ParamByName('codigo').AsString:=XCodTmpEstoque;
   DMESTOQUE.Alx4.Open;
   If not DMESTOQUE.Alx4.IsEmpty
   Then Begin
       XCOD_ACESSORIO:=DMESTOQUE.Alx4.FieldByName('COD_ESTOQUE').AsInteger;
       EscreveLabelsACES;
       PListaAcessorios.Visible:=False;
       If EdQuantAcessorio.ValueNumeric=0 Then
           EdQuantAcessorio.ValueNumeric:=1;
       If XCOD_ACESSORIO>0 Then
           EdQuantAcessorio.SetFocus;
   End
   Else Begin
       XCOD_ACESSORIO:=-1;
       LimpaLabelsAces;
   End;
end;

procedure TFOrdemLoca.DBGListaAcessoriosKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key = Vk_Return then
   	DBGListaAcessoriosDblClick(Sender);
end;

procedure TFOrdemLoca.EdBuscaAcessorioExit(Sender: TObject);
begin
  inherited;
	if EdBuscaAcessorio.Text = '' then
   begin
   	PListaAcessorios.Visible := False;
       PListaAcessorios.SendToBack;
   end;
end;

procedure TFOrdemLoca.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
  PFinanceiro.Visible := False;
  PCadastro.Visible := False;
  PConsulta.Visible := true;
  PConsulta.BringToFront;

//  TravarPaines(False);

  // BUSCANDO DADOS DA ORDEM
  FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, '');

  // EDITANDO ORDEM DE SERVICO PARA LIBERAR SEU USO CASO SEJA NECESSARIO
  DMServ.TOrd.Edit;
  DMServ.TOrd.FieldByName('EDIT').AsString := '0';
  DMServ.TOrd.Post;
  DMServ.IBT.CommitRetaining;
end;

procedure TFOrdemLoca.CbFiltroPagamentosClick(Sender: TObject);
begin
  inherited;
   FiltraOrdem('');
end;

procedure TFOrdemLoca.CbFiltroPagamentosExit(Sender: TObject);
begin
  inherited;
   FiltraOrdem('');
end;

procedure TFOrdemLoca.FrmFormPagBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmFormPag.BTNMINUSClick(Sender); 
end;

procedure TFOrdemLoca.btnCancelarAtuClick(Sender: TObject);
begin
  inherited;
	pItensProduto.BringToFront;
   pInfoRetorno.SendToBack;
   pInfoRetorno.Visible := False;
   FiltraSlave;
end;

procedure TFOrdemLoca.btnAtualizarClick(Sender: TObject);
begin
  inherited;
	//Edmar - 30/01/2015 - Executa update para atualizar o item da ordem com suas novas informações
	MDO.Query.Close;
   MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add(' UPDATE ITPRODORD SET QTD = :QTD, VLRUNIT = :VLRUNIT, TOTAL = :TOTAL, DTRETIRADA = :DTRET, HRRETIRADA = :HRRET, ');
   MDO.Query.SQL.Add(' DTRETORNO = :DTRETORNO, HRRETORNO = :HRRET, DESGASTE_SAIDA = :DESG_SAIDA, DESGASTE_RETORNO = :DESG_RET, DESGASTE_CONSUMIDO = :DESG_CON, ');
   MDO.Query.SQL.Add(' QTDE_HORA_SAIDA = :HRSAIDA, QTDE_HORA_RETORNO = :HRRETORNO, QTDE_HORA_CONSUMIDA = :HRCONSUMIDA ');
   MDO.Query.SQL.Add(' WHERE (ITPRODORD.COD_ITPRODORD = :COD_ITEM) ');

   //passagem de parametros
	MDO.Query.ParamByName('QTD').AsInteger := edQtdeAtu.ValueInteger;
   MDO.Query.ParamByName('VLRUNIT').AsCurrency := edVlrUnitAtu.ValueNumeric;
   MDO.Query.ParamByName('TOTAL').AsCurrency := edVlrTotalAtu.ValueNumeric;
   
   //controle de data e hora
	MDO.Query.ParamByName('DTRET').AsDate := edDtSaidaAtu.Date;
   if edHrSaidaAtu.Text = '  :  ' then
       MDO.Query.ParamByName('HRRET').AsString := ''
   else
       MDO.Query.ParamByName('HRRET').AsString := edHrSaidaAtu.Text;
       
   MDO.Query.ParamByName('DTRETORNO').AsDate := edDtRetornoAtu.Date;
   if edHrRetornoAtu.Text = '  :  ' then
       MDO.Query.ParamByName('HRRETORNO').AsString := ''
   else
       MDO.Query.ParamByName('HRRETORNO').AsString := edHrRetornoAtu.Text;

   //controle por desgate
	MDO.Query.ParamByName('DESG_SAIDA').AsCurrency := StrToCurr(edQtdeSaidaAtu.Text);
   MDO.Query.ParamByName('DESG_RET').AsCurrency := StrToCurr(edQtdeRetornoAtu.Text);
   MDO.Query.ParamByName('DESG_CON').AsCurrency := StrToCurr(edQtdeConsumidaAtu.Text);

   //controle por horas de uso
   MDO.Query.ParamByName('HRSAIDA').AsCurrency := StrToCurr(edQtdeHoraSaidaAtu.Text);
   MDO.Query.ParamByName('HRRETORNO').AsCurrency := StrToCurr(edQtdeHoraRetornoAtu.Text);
   MDO.Query.ParamByName('HRCONSUMIDA').AsCurrency := StrToCurr(edQtdeHoraConsumidaAtu.Text);

   //
   MDO.Query.ParamByName('COD_ITEM').AsInteger := XCOD_ITEM_PROD_ORD;

   try
   	MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       //ANGELO - 22/06/2015 - Verifica ser for controle de desgaste
       MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;
       MDO.QAlx1.SQL.Add('SELECT SUBPRODUTO.CTRL_DESGASTE, ORDEM.STATUS FROM SUBPRODUTO ');
			MDO.QAlx1.SQL.Add('LEFT join ESTOQUE ON (SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD) ');
       MDO.QAlx1.SQL.Add('LEFT join ITPRODORD ON (ITPRODORD.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE) ');
       MDO.QAlx1.SQL.Add('LEFT JOIN ORDEM ON (ITPRODORD.COD_ORDEM = ORDEM.COD_ORDEM) WHERE ITPRODORD.COD_ITPRODORD = :COD ');
       MDO.QAlx1.ParamByName('COD').AsInteger := XCOD_ITEM_PROD_ORD;
       MDO.QAlx1.Open;

       //ANGELO - 19/06/2015 - SE O PRODUTO RETORNADO DESGASTOU POR COMPLETO REMOVA DO ESTOQUE
  		if (
       	(MDO.QAlx1.FieldByName('CTRL_DESGASTE').AsString='1')AND
           (StrToCurr(edQtdeRetornoAtu.Text) <= 0)AND
           (MDO.QAlx1.FieldByName('STATUS').AsString='RETORNADO')
           ) Then
       Begin
         Try
           MDO.QAlx1.Close;
           MDO.QAlx1.SQL.Clear;
           MDO.QAlx1.SQL.Add('SELECT COD_ESTOQUE,QTD, COD_ORDEM FROM ITPRODORD WHERE COD_ITPRODORD=:COD');
           MDO.QAlx1.ParamByName('COD').AsInteger := XCOD_ITEM_PROD_ORD;
           MDO.QAlx1.Open;
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.ESTFISICO = ESTOQUE.ESTFISICO - :QUANTIDADE WHERE ESTOQUE.COD_ESTOQUE = :ESTOQUE ');
           MDO.Query.ParamByName('QUANTIDADE').AsCurrency := MDO.QAlx1.FieldByName('QTD').AsCurrency;
           MDO.Query.ParamByName('ESTOQUE').AsCurrency := MDO.QAlx1.FieldByName('COD_ESTOQUE').AsCurrency;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
				//lança agora uma entrada de correção para cada item
           LancaEstoqueCorrecaoGeneric('S', MDO.QAlx1.FieldByName('QTD').AsCurrency,
           MDO.QAlx1.FieldByName('COD_ESTOQUE').AsInteger, 'Itens não retornados na Ordem de Serviço Número '+MDO.QAlx1.FieldByName('COD_ORDEM').AsString);
           Mensagem(' A T E N Ç Ã O ', 'O item não possuia quantidade de retorno e foi removido do estoque!', '', 1, 1, False, 'I');
         Except
         	MDO.Transac.RollbackRetaining;
         End;
       End;
   except
       MDO.Transac.RollbackRetaining;
   end;
	 btnCancelarAtu.Click;
end;

procedure TFOrdemLoca.edQtdeAtuExit(Sender: TObject);
begin
  inherited;
	CalculaTotalItemRetorno;
end;

procedure TFOrdemLoca.edDtRetornoAtuExit(Sender: TObject);
begin
  inherited;
	CalculaTotalItemRetorno;
end;

procedure TFOrdemLoca.edHrRetornoAtuExit(Sender: TObject);
begin
  inherited;
	CalculaTotalItemRetorno;
end;

procedure TFOrdemLoca.edDtSaidaAtuExit(Sender: TObject);
begin
  inherited;
	if lProdutoRetorno.Caption <> '' then
  	begin
		edDtRetornoAtu.Date := edDtSaidaAtu.Date + DMESTOQUE.Alx1.FieldByName('qtddias').AsInteger;
   	CalculaTotalItemRetorno;
  	end;
end;

procedure TFOrdemLoca.edQtdeHoraRetornoAtuExit(Sender: TObject);
begin
  inherited;
	edQtdeHoraConsumidaAtu.ValueNumeric := edQtdeHoraRetornoAtu.ValueNumeric - edQtdeHoraSaidaAtu.ValueNumeric;

   if edQtdeHoraConsumidaAtu.ValueNumeric < 0 then
   begin
       Mensagem(' A T E N Ç Ã O ', 'O valor de retorno é maior que o valor de saída. Por favor verifique!', '', 1, 1, False, 'I');

       edQtdeHoraRetornoAtu.SetFocus;
       edQtdeHoraConsumidaAtu.Text := '0,00';
   end;

   edVlrTotalAtu.ValueNumeric := edVlrUnitAtu.ValueNumeric * edQtdeHoraConsumidaAtu.ValueNumeric;
end;

procedure TFOrdemLoca.edQtdeRetornoAtuExit(Sender: TObject);
begin
  inherited;
  	edQtdeConsumidaAtu.ValueNumeric := edQtdeSaidaAtu.ValueNumeric - edQtdeRetornoAtu.ValueNumeric;
   if edQtdeConsumidaAtu.ValueNumeric < 0 then
   begin
		Mensagem('   A T E N Ç Ã O   ','O valor de retorno é maior que o valor de saída. Por favor verifique!','',1,1,false,'I');

       edQtdeRetornoAtu.SetFocus;
       edQtdeConsumidaAtu.Text := '0,00';
   end;
   
   edVlrTotalAtu.ValueNumeric := edVlrUnitAtu.ValueNumeric * edQtdeConsumidaAtu.ValueNumeric;
end;

procedure TFOrdemLoca.btnLiberarClick(Sender: TObject);
begin
  inherited;
   //Edmar - 16/02/2015 - Se a ordem já estiver liberada, lança uma mensagem de confirmação se deseja liberar novamente
   if (DMServ.WOrdemDesp.FieldByName('STATUS').AsString = 'LIBERADO') then
   begin
  		if Mensagem(' I N F O R M A Ç Ã O ', 'A O.S selecionada já se encontra liberada. Deseja libera-la novamente?', '', 2, 3, False, 'I') <> 2 then
   		Exit;
   end;
   
   //Edmar - 16/02/2015 - Só libera a ordem de serviço se ela não estiver retirada ou retornada ou fechada
 	if (DMServ.WOrdemDesp.FieldByName('STATUS').AsString = 'ABERTO') OR (DMServ.WOrdemDesp.FieldByName('STATUS').AsString = 'LIBERADO') then
   begin
       {
   	AbrirForm(TFSENHA, FSENHA, 0);

       if XAlxResult then
       begin
       }
       try
           if not AdicionaLogOperacao('LIBERADO', DMServ.WOrdemDesp.FieldByName('NUMERO').AsString) then
           begin
               Mensagem(' A T E N Ç Ã O ', 'Não foi possível inserir o log da expedição. Por favor, para fins de auditoria reinicie o sistema e tente novamente', '', 1, 1, False, 'A');
               MDO.Transac.RollbackRetaining;
               Exit;
           end;

           MDO.QAlx1.Close;
           MDO.QAlx1.SQL.Clear;
           MDO.QAlx1.SQL.Add(' UPDATE ORDEM SET ORDEM.STATUS = :STATUS WHERE ORDEM.COD_ORDEM = :COD_ORDEM ');
           MDO.QAlx1.ParamByName('STATUS').AsString := 'LIBERADO';
           MDO.QAlx1.ParamByName('COD_ORDEM').AsInteger := DMServ.WOrdemDesp.FieldByname('COD_ORDEM').AsInteger;
           MDO.QAlx1.ExecSQL;

           MDO.Transac.CommitRetaining;
       except
           Mensagem(' A T E N Ç Ã O ', 'Não foi possível atualizar o status da Ordem de Serviço. Por favor, reinicie o sistema e tente novamente', '', 1, 1, False, 'A');
           MDO.Transac.RollbackRetaining;
       end;

       FiltraOrdem('');
       //end;
	end;
end;

function TFOrdemLoca.AdicionaLogOperacao(xOperacao, XORDEM: String): Boolean;
begin
	Result := False;
	try
   	//Edmar - 16/02/2015 - Busca o ultimo código usado
       DMServ.TAlx2.Close;
       DMServ.TAlx2.SQL.Clear;
       DMServ.TAlx2.SQL.Add(' SELECT MAX(COD_CONTROLE) FROM CONTROLA_EXPEDICAO ');
       DMServ.TAlx2.Open;

       //Edmar - 16/02/2015 - Insere o registro com as informações da operação
       //para fins de auditoria
       MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;
       MDO.QAlx1.SQL.Add(' INSERT INTO CONTROLA_EXPEDICAO (COD_CONTROLE, COD_USUARIO, NUM_ORDEM, DATA_HORA, OPERACAO) VALUES (:PK, :USUARIO, :ORDEM, :DATAHORA, :OPERACAO) ');
       MDO.QAlx1.ParamByName('PK').AsInteger := DMServ.TAlx2.FieldByName('MAX').AsInteger + 1;
       MDO.QAlx1.ParamByName('USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
       MDO.QAlx1.ParamByName('ORDEM').AsString := XORDEM;
       MDO.QAlx1.ParamByName('DATAHORA').AsDateTime := Now();
       MDO.QAlx1.ParamByName('OPERACAO').AsString := xOperacao;
       MDO.QAlx1.ExecSQL;

		Result := True;       
   except
   	Result := False;
   end;
end;

procedure TFOrdemLoca.FecharOrdemDeServico;
begin
//EFETUA CONTROLE DE ACESSO
   If ControlAccess('FECHORD', 'M')=False Then
  		Exit;

   // repassando valor do cidgo da ordem para variavel
   XCodOrdem := DMServ.WOrdemDesp.FieldByname('cod_ordem').AsInteger;
   {
   // BUSCANDO DADOS DA ORDEM
   FiltraTabela(DMServ.TOrd,'ORDEM','COD_ORDEM',IntToStr(XCodOrdem),'');

   // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
   If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ORDEM ESTÁ SENDO USADA NO MOMENTO.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
       Exit;
   End;}

   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

  	If DMServ.WOrdemDesp.IsEmpty
   Then Begin
		Mensagem('A T E N Ç Ã O', 'Não existe nenhuma ordem a ser fechada!', '', 1, 1, False, 'a');
       Exit;
   End;

   If DMServ.WOrdemDesp.FieldByName('TOTAL').AsCurrency<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Esta ordem não contém produto ou serviços. Por isso não pode ser fechada!', '', 1, 1, False, 'i');
       Exit;
   End;
   
   If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente faturar a ordem de serviço '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+'?', '', 2, 3, False, 'C')=2
   Then Begin
       // BUSCANDO DADOS DA ORDEM
       FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCodOrdem), '');
       
       // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
       If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
       Then Begin
           Mensagem('    A T E N Ç Ã O   ','A ordem está sendo usada no momento.'+#13+'Use Ctrl+D para destravar','',1,1,false,'I');
           Exit;
       End
       Else Begin       	
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE ORDEM SET ORDEM.EDIT = ''1'' WHERE ORDEM.COD_ORDEM = :ORDEM ');
           MDO.Query.ParamByName('ORDEM').AsInteger := XCodOrdem;
           MDO.Query.ExecSQL;
           
           MDO.Transac.CommitRetaining;
       End;

       CBPagamento.Text := 'Carteira';
       //LIMPA VALORES ANTIGOS
       FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');
       //FORMA DE PAGAMENTO
       XCodCliente:=DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
       If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '')=True
       Then Begin
           XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
           FrmFormPag.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
           FrmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
                  XCodFormPag:=-1;
           FrmFormPag.EDCodigo.Text:='';
           FrmFormPag.EdDescricao.Text:='';
       End;

       //Paulo 15/02/2012: mostra o checkbox para imprimir o recibo somente se for à vista
       if FrmFormPag.EdDescricao.Text = 'À VISTA' then
           CBImpRecibo.Visible:=true
       else
           CBImpRecibo.Visible:=false;

       XCOD_CONTA:=-1;
       FrmContaServ.EdDescricao.Text:='';
       FrmContaServ.EDCodigo.Text:='';
       DBDATAENTREGA.Clear;
       DBDATAENTREGA.Text:=DateTostr(Date());
       DBHORAENTREGA.Text:=TimeTostr(Time());
       If DMServ.TOrd.FieldByName('DTFECH').AsString<>'' Then
           EdDtFech.Text:=DMServ.TOrd.FieldByName('DTFECH').AsString
       Else
           EdDtFech.Text:=DateToStr(Date());
       //BUSCA CONTAS PADRÕES
       If DMServ.WOrdemDesp.FieldByName('STATUS').AsString='FORMAPAG'
       Then Begin//Busca contas para À VISTA
           //PRODUTO
           If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
           Then Begin//se existir uma conta padrao configurada
               XCOD_CONTA:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
               FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTA), '');
               FrmContaServ.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
               XCOD_CONTA:=-1;
               FrmContaServ.EDCodigo.Text:='';
               FrmContaServ.EdDescricao.Text:='';
           End;
       End
       Else Begin//Busca conta para À Prazo
           //PRODUTO
           If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
           Then Begin//se existir uma conta padrao configurada
               XCOD_CONTA:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
               FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCod_Conta), '');
               FrmContaServ.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               FrmContaServ.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
               XCOD_CONTA:=-1;
               FrmContaServ.EDCodigo.Text:='';
               FrmContaServ.EdDescricao.Text:='';
           End;
       End;
       PFinanceiro.Visible:=True;
       PFinanceiro.Enabled:=True;
       PFinanceiro.BringToFront;
   End;
	//End;
end;

procedure TFOrdemLoca.CancelarFechamento1Click(Sender: TObject);
Var
	XCodPedidoTroca: String;
begin
  inherited;
   FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');
	If DMServ.WOrdemDesp.FieldByName('STATUS').AsString<>'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO','A ORDEM DE SERVIÇO NÃO SE ENCONTRADA FECHADA!'+#13+'PRESSIONE O BOTÃO CONSULTAR PARA ALTERAR AS INFORMAÇÕES.', '', 1, 1, False, 'a');
       Exit;
   End;

	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CANCPEDFECH', 'M')=False Then
  		Exit;

	If Mensagem('A T E N Ç Ã O', 'DESEJA EFETUAR O CANCELAMENTO DA ORDEM DE SERVIÇO:'+#13+'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
       // verifica se o caixa estah aberto
       If DMCAIXA.VerifAbCaixa = false
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','CAIXA FECHADO. A ORDEM DE SERVIÇO NÃO PODE SER CANCELADA.','',1,1,false,'I');
           Exit;
       End;
       XCodPedidoTroca:=DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString;
       If FiltraTabela(DMServ.WOrdemDesp, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
       Then Begin
           //REGISTRA COMANDO DO USUARIO
           Registra('ORDEM', 'C. FECH ORD', DMServ.WOrdemDesp.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString+'-'+DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, 'Vlr:'+DMServ.TOrd.FieldByName('totord').AsString+'-'+DMServ.WOrdemDesp.FieldByName('equipamento').AsString);
			If DMServ.WOrdemDesp.FieldByName('TIPOPAG').AsString='Multiplo'
           Then Begin
               DMServ.TOrd.EDIT;
               DMServ.TOrd.FieldByName('STATUS').AsString:='RETORNADO';
               DMServ.TOrd.FieldByName('EDIT').AsString := '0';
               DMServ.TOrd.Post;
               Try
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMENTRADA.IBT.CommitRetaining;
                   DMSAIDA.IBT.CommitRetaining;
                   DMServ.IBT.CommitRetaining;                   
		           	MessageDlg('Esta Ordem foi fechada com a opção Multipla para pagamento. Ela será gravada com status de aberto, porém seus lançamentos financeiros não serão cancelados.', mtWarning, [mbOK], 0);
               Except
                   DMESTOQUE.TransacEstoque.RollbackRetaining;
                   DMENTRADA.IBT.RollbackRetaining;
                   DMSAIDA.IBT.RollbackRetaining;
               End;
               If FiltraTabela(DMServ.WOrdemDesp, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
               Then Begin
                   MDO.Transac.CommitRetaining;
                   BtnConsultar.Click;
               End;
           End
           Else Begin
               //Edmar - 02/03/2015 - Só cancela o lançamento da conta se a OS não for mensal
               {if DMServ.WOrdemDesp.FieldByName('FORMAPAG').AsString <> 'MENSAL' then
               begin}
               	MDO.Query.Close;
                   MDO.Query.SQL.Clear;
                   MDO.Query.SQL.Add(' UPDATE ORDEM SET ORDEM.STATUS = ''RETORNADO'', ORDEM.EDIT = ''0'' WHERE ORDEM.COD_ORDEM = :ORDEM ');
                   MDO.Query.ParamByName('ORDEM').AsString := XCodPedidoTroca;
                   MDO.Query.ExecSQL;
                   {
                   DMServ.TOrd.EDIT;
                   DMServ.TOrd.FieldByName('STATUS').AsString:='RETORNADO';
                   DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                   DMServ.TOrd.Post;
                   }
               //end;

               Try 
               	//COMMIT'S
                   DMESTOQUE.TransacEstoque.CommitRetaining;
                   DMENTRADA.IBT.CommitRetaining;
                   DMSAIDA.IBT.CommitRetaining;
                   DMServ.IBT.CommitRetaining;
                   MDO.Transac.CommitRetaining;
               Except
                   DMESTOQUE.TransacEstoque.RollbackRetaining;
                   DMENTRADA.IBT.RollbackRetaining;
                   DMSAIDA.IBT.RollbackRetaining;
					DMFINANC.Transaction.RollbackRetaining;
                   MDO.Transac.RollbackRetaining;                                      
               End;
               If FiltraTabela(DMServ.WOrdemDesp, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '')=True
               Then Begin
                   MDO.Transac.CommitRetaining;
                   BtnConsultar.Click;
               End;
           End;
       End
       Else Begin
			Exit;
       End;
   End;
end;

procedure TFOrdemLoca.CancelarFatura1Click(Sender: TObject);
begin
  inherited;
	If Mensagem('A T E N Ç Ã O', 'Deseja cancelar a fatura da Ordem de Serviço '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+'?'  , '', 2, 3, False, 'c')= 2 then
   begin
   	try
           FiltraTabela(DMServ.WOrdemDesp, 'VWORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');
           //Edmar - 05/03/2015 - Teremos duas situação quando ao cancelamento da fatura
           //se a ordem não for do tipo MENSAL, devemos alterar o faturamento da mesmo (Localat) para "Não",
           //cancelar o financeiro e não alterar seu status
           if DMServ.WOrdemDesp.FieldByName('FORMAPAG').AsString <> 'MENSAL' then
           begin
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' UPDATE ORDEM SET LOCALAT = ''Não'' WHERE ORDEM.COD_ORDEM = :ORDEM ');
               MDO.Query.ParamByName('ORDEM').AsInteger := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
               MDO.Query.ExecSQL;

               CancelLanOrd(DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString);

               MDO.Transac.CommitRetaining;
               FiltraOrdem('');
           end
           else begin
               //se a ordem for do tipo MENSAL, abre-se a tela de fatura de OS na aba que permite cancelar a fatura
               //Na tela de Fatura de período quando cancelarmos a fatura de um período, o sistema tem que verificar se este era o único período a caso não
               //reste nenhum outro período, o sistema deve marcar o localat como "Não", se existirem outros períodos não se altera este marcador.
               Try
                   FMenu.XCodSlave := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
                   FMenu.XTipoRel := 'CANCFAT';
                   AbrirForm(TFFaturaOrdemMensal, FFaturaOrdemMensal, 0);
                   FMenu.XTipoRel := '';
                   DMServ.IBT.CommitRetaining;
                   FiltraOrdem('');
               Except
               End;
           end;
       except
           On E : Exception do
           begin
               MessageDlg('Não foi possível cancelar a fatura da Ordem de Serviço.'+#13+E.Message, mtWarning, [mbOK], 0);
               MDO.Transac.Rollback;
           end;
       end;
  	end;
end;

procedure TFOrdemLoca.rbTodasClick(Sender: TObject);
begin
  inherited;
	FiltraOrdem('');
end;

procedure TFOrdemLoca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	{If PCadastro.Visible=true
   Then Begin
   	MessageDlg('Use o botão gravar ou cancelar!', mtWarning, [mbOK], 0);
       Action:=caNone;
       Exit;
   End;}
  inherited;

end;

procedure TFOrdemLoca.DBGTabelaPrecoDblClick(Sender: TObject);
begin
  inherited;
  PTabelaPreco.Visible:=False;
  XCodTabela:=DMMACS.TALX.FieldByName('cod_tabelapreco').AsInteger;
  EdTabela_TabelaFaixa.Text:=DMMACS.TALX.FieldByName('descricao').AsString;
  BtnTabelaPreco.SetFocus;
end;

//Angelo - 22/06/2015 - Workaround para abrir todos os itens do DbFaixaPreco
procedure TFOrdemLoca.DbFaixaPrecoDropDown(Sender: TObject);
Var Value : Variant;
begin
  inherited;
  Try
    Value := DbFaixaPreco.KeyValue;
    DbFaixaPreco.KeyValue := 20;
    DbFaixaPreco.KeyValue := Value;
  Except
  End;
end;

procedure TFOrdemLoca.DBLookupComboBox1DropDown(Sender: TObject);
Var Value : Variant;
begin
  inherited;
  Try
    Value := DBLookupComboBox1.KeyValue;
    DBLookupComboBox1.KeyValue := 20;
    DBLookupComboBox1.KeyValue := Value;
  Except
  End;
end;

//Angelo - 30/06/2015 - Permite ajuste do valor cobrado na locação do item
procedure TFOrdemLoca.edVlrUnitAtuExit(Sender: TObject);
begin
  inherited;
  FiltraTabela(DMESTOQUE.Alx, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '');
  if ( (DMESTOQUE.Alx.FieldByName('CTRL_HORA').AsString<>'1' ) and (DMESTOQUE.Alx.FieldByName('CTRL_DESGASTE').AsString<>'1' ) ) Then
  Begin
    XQtdDiasTabela:= EdDiasAtu.ValueInteger;
    If XQtdDiasTabela>0 Then
      XVlrMedioDiaTabela:= EdVlrUnitAtu.ValueNumeric/XQtdDiasTabela
    Else
      XQtdDiasTabela:=0;
  CalculaTotalItemRetorno;    
  End;
end;

procedure TFOrdemLoca.FrmContaServBTNOPENClick(Sender: TObject);
Var Oper : Char;
begin
  inherited;
  //FrmContaServ.BTNOPENClick(Sender);
    Oper := 'C';
    XTIPO_CONTA := 'C';
    FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = ' + FMenu.LCODEMPRESA.Caption + ') AND (NATUREZA = ' + #39 + Oper + #39 + ') AND (TIPO=' + #39 + 'N' + #39 +') ORDER BY CLASSIFICACAO');
    If AbrirForm(TFConsPlnCta, FConsPlnCta, 1) = 'Selected'
        Then Begin
        XCOD_CONTASERV := DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
        FrmContaServ.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
        FrmContaServ.EDCodigo.text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
    End;
    FrmContaServ.Repaint;
    FrmContaServ.Refresh;
end;

procedure TFOrdemLoca.cbBonificacaoClick(Sender: TObject);
begin
  inherited;
  CbCancelamento.Checked := False;
end;

procedure TFOrdemLoca.cbCancelamentoClick(Sender: TObject);
begin
  inherited;
  cbBonificacao.Checked := False;
end;

Function TFOrdemLoca.AbreFiscal: Boolean;
Begin
    Result := True;
    Try
        DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;
        AbrirForm(TFFiscalOrdem, FFiscalOrdem, 0);
    Except
        Result := False;
    End
End;

//Angelo 03/08/2015 - Cria as despesas de acordo com os itens locadas para emitir NFSE
procedure TFOrdemLoca.preparaDespesas(numOs : Integer);
var xTotalDesp : Real;
Begin
  xTotalDesp := 0;
  Try
    //Remove as despesas cadastradas anteriormente
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('DELETE FROM DESPADIC WHERE DESPADIC.GERADOR =:GERADOR AND DESPADIC.COD_GERADOR=:COD_ORDEM');
    MDO.Query.ParamByName('GERADOR').AsString := 'ORDEM';
    MDO.Query.ParamByName('COD_ORDEM').AsInteger := NumOs;
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
  Except
    MDO.Transac.RollbackRetaining;
  End;
    //Crie uma despesa para cada um dos produtos locados
  	 MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT itprodord.*, subproduto.descricao  FROM ITPRODORD ');
    MDO.QConsulta.SQL.Add('left join estoque on (itprodord.cod_estoque=estoque.cod_estoque) ');
    MDO.QConsulta.SQL.Add('left join subproduto on (estoque.cod_subprod=subproduto.cod_subproduto) ');
    MDO.QConsulta.SQL.Add('WHERE ITPRODORD.COD_ORDEM =:COD_ORDEM');
    MDO.QConsulta.ParamByName('COD_ORDEM').AsInteger := numOs;
    MDO.QConsulta.Open;
    MDO.QConsulta.First;
    While Not(MDO.QConsulta.Eof) Do
    Begin
      Try
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('INSERT INTO DESPADIC ( COD_GERADOR,GERADOR,DESPESA,QTD, ');
        MDO.Query.SQL.Add('VLRREAL,VLRFINAL,VLRTOTFIN,DESCONTO, ');
        MDO.Query.SQL.Add('COD_EQUIPE,COD_FUNCIONARIO,aliqissqn,CST) ');
        MDO.Query.SQL.Add('VALUES (:COD_GERADOR,:GERADOR,:DESPESA,:QTD, ');
        MDO.Query.SQL.Add(':VLRREAL,:VLRFINAL,:VLRTOTFIN,:DESCONTO, ');
        MDO.Query.SQL.Add(':COD_EQUIPE,:COD_FUNCIONARIO,:aliqissqn,:CST) ');
        MDO.Query.ParamByName('COD_GERADOR').AsInteger := numOs;
        MDO.Query.ParamByName('GERADOR').AsString := 'ORDEM';
        MDO.Query.ParamByName('DESPESA').AsString := MDO.QConsulta.FieldByName('DESCRICAO').AsString;
        MDO.Query.ParamByName('QTD').AsFloat := MDO.QConsulta.fieldByName('QTD').AsFloat;
        MDO.Query.ParamByName('VLRREAL').AsCurrency := MDO.QConsulta.fieldByName('VLRUNIT').asCurrency;
        MDO.Query.ParamByName('VLRFINAL').AsCurrency := MDO.QConsulta.fieldByName('VLRUNIT').asCurrency;
        MDO.Query.ParamByName('VLRTOTFIN').AsCurrency := MDO.QConsulta.fieldByName('TOTAL').asCurrency;
        MDO.Query.ParamByName('DESCONTO').AsCurrency := MDO.QConsulta.fieldByName('DESCONTO').asCurrency;
        MDO.Query.ParamByName('COD_EQUIPE').AsInteger := -1;
        MDO.Query.ParamByName('COD_FUNCIONARIO').AsInteger := MDO.QConsulta.fieldByName('COD_FUNCIONARIO').AsInteger;
        MDO.Query.ParamByName('aliqissqn').AsCurrency := DMMACS.TEmpresa.FieldByName('ISSQN').AsCurrency;
        MDO.Query.ParamByName('CST').AsString := '041';
        MDO.Query.ExecSQL;
        MDO.Transac.CommitRetaining;
      Except
        MDO.Transac.RollbackRetaining;
      End;
      xTotalDesp := xTotalDesp + MDO.QConsulta.fieldByName('TOTAL').asCurrency;
      MDO.QConsulta.Next;
    End;
    Try
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('UPDATE ORDEM SET ORDEM.TOTSERV=:TOTSERV WHERE ORDEM.COD_ORDEM=:ORDEM');
      MDO.Query.ParamByName('TOTSERV').AsCurrency := xTotalDesp;
      MDO.Query.ParamByName('ORDEM').AsInteger:= numOs;
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    Except
      MDO.Transac.RollbackRetaining;
    End;
End;


function TFOrdemLoca.EfetuaCalculoISS: Boolean;
begin
	EdVlrIss.ValueNumeric := EdValorProdutos.ValueNumeric * (xAliquotaIss / 100);
end;

function TFOrdemLoca.RetemIss: Boolean;
begin
    if cbRtIss.Checked then
    begin
   	EdValorOrd2.ValueNumeric := EdValorProdutos.ValueNumeric +EdVlrIss.ValueNumeric
   end;
end;

procedure TFOrdemLoca.mnuImpNfseClick(Sender: TObject);
begin
  inherited;
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add('SELECT * FROM DOCFISORD WHERE DOCFISORD.COD_ORDEM=:ORDEM ');
  MDO.QConsulta.ParamByName('ORDEM').AsInteger := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
  MDO.QConsulta.Open;
  If Not MDO.QConsulta.IsEmpty
  Then
  Begin
    If (MDO.QConsulta.FieldByName('nfse_statusgeral').AsString = '1') Then
    Begin
      //Se Documento Fiscal Enviado ou Cancelado
      MessageDlg('Esta O.S já gerou uma Nota Fiscal Eletrônica enviada e recebida pelo sefaz. Sendo assim não pode mais ser transmitida.', mtWarning, [mbOK], 0);
      Exit;
    End;
    FMenu.TIPOREL := 'NFSE';
  End
  Else
  	 FMenu.TIPOREL := 'NFSER';

  DMServ.WOrdem.Close;
  DMServ.WOrdem.SQL.Clear;
  DMServ.WOrdem.SQL.Add('SELECT * FROM VWORDEM WHERE VWORDEM.COD_ORDEM=:COD');
  DMServ.WOrdem.ParamByName('COD').AsInteger := DMServ.WOrdemDesp.fieldByName('cod_ordem').asInteger;
  DMServ.WOrdem.Open;

  DMServ.TOrd.Close;
  DMServ.TOrd.SQL.Clear;
  DMServ.TOrd.SQL.Add('SELECT * FROM ORDEM WHERE ORDEM.COD_ORDEM=:COD');
  DMServ.TOrd.ParamByName('COD').AsInteger := DMServ.WOrdemDesp.fieldByName('cod_ordem').asInteger;
  DMServ.TOrd.Open;

  FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
  preparaDespesas(DMServ.WOrdemDesp.fieldByName('cod_ordem').asInteger);
  If Mensagem('C O N F I R M A Ç Ã O', 'A Impressora esta pronta?'  , '', 2, 3, False, 'c')= 2 Then
  Begin
    AbreFiscal;
    //REGISTRA COMANDO DO USUARIO
    Registra('ORDEM DE SERVIÇO', 'NF', DMServ.WOrdemDesp.FieldByName('dtabert').AsString, 'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.WOrdemDesp.FieldByName('total').AsString);
  End;
end;

procedure TFOrdemLoca.mnuVisualizarDanfeClick(Sender: TObject);
begin
   inherited;
	FMzrNFSe := TFMzrNFSe.Create(FMzrNFSe);

   FMzrNFSe.VisualizaNfse(DMServ.WOrdem.FieldByName('cod_ordem').AsInteger);
end;

procedure TFOrdemLoca.mnuCancelamentodeNFEClick(Sender: TObject);
begin
   Inherited;   
   DMESTOQUE.Alx5.Close;
   DMESTOQUE.Alx5.SQL.Clear;
   DMESTOQUE.Alx5.SQL.Add('select docfisord.nfse_numerodocumento from docfisord where docfisord.cod_ordem = :ordem');
   DMESTOQUE.Alx5.ParamByName('ordem').AsInteger := DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger;
   DMESTOQUE.Alx5.Open;

   if DMESTOQUE.Alx5.IsEmpty then
   begin
   	Mensagem('A T E N Ç Ã O ', 'Essa Nfse ainda não foi gerada. Escolha uma ordem válida.', '', 1,1, false, 'A');
       Exit;
   end
   else begin
	   If Mensagem('A T E N Ç Ã O', 'DESEJA REALMENTE CANCELAR A NFS-E DE NÚMERO '+DMESTOQUE.Alx5.FieldByName('nfse_numerodocumento').AsString, '', 2, 3, False, 'c') = 2 then
		   FMzrNFSe.CancelarNFSe(DMESTOQUE.Alx5.FieldByName('nfse_numerodocumento').AsString);
	end;
end;

procedure TFOrdemLoca.RecuperadadosdaNFSe1Click(Sender: TObject);
var
   xNumNfse: String;
begin
  inherited;
  	//Edmar - 26/03/2014 - Se for equiplano a mensagem é outra
	if DMMACS.TLoja.FieldByName('nfseadministradora').AsString = 'EQUIPLANO' then
   begin
		If InputQuery('Número documento', 'Informe o número RPS da NFS-e que deseja retornar', xNumNfse) = True then
   	begin
   		FMzrNFSe.RetornaDadosNfse(DMServ.WOrdemDesp.FieldByName('cod_ordem').AsString, xNumNfse);
   	end;
   end
   else begin
		If InputQuery('Número documento', 'Informe o número da NFS-e que deseja retornar', xNumNfse) = True then
   	begin
   		FMzrNFSe.RetornaDadosNfse(DMServ.WOrdemDesp.FieldByName('cod_ordem').AsString, xNumNfse);
   	end;
   end;
end;

procedure TFOrdemLoca.BtnSelecionaOrdemClick(Sender: TObject);
begin
  inherited;
   FMenu.SelectedForm := True;
   FMenu.XCodOrdemVinculo := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
   Close;
end;

End.





