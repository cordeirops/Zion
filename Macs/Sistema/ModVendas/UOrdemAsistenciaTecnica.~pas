unit UOrdemAsistenciaTecnica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, ExtCtrls, StdCtrls, Mask, TFlatEditUnit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxControls, cxContainer, cxEdit, cxGroupBox,
  Buttons, Grids, DBGrids, ComCtrls, DBCtrls, DBColorEdit, DB, cxCheckBox,
  UFrmBusca, EditFloat, ColorEditFloat, ColorMaskEdit, FashionPanel, Menus,
  frxClass, FR_DSet, FR_DBSet, UMzrNfe, FR_Class, RpDefine, RpBase, RpSystem, TypInfo;

type
   XTiposGenericos = (Obra, EquipamentoProduto, EquipamentoServico, Servico, FormaPagamento);
   
type
  TFOrdemAssitenciaTecnica = class(TFPadrao)
    PConsulta: TPanel;
    PExp: TPanel;
    LBCONEXAO: TLabel;
    PBExport: TProgressBar;
    DBGridConsulta: TDBGrid;
    PBotoesConsulta: TPanel;
    BtnNovo: TBitBtn;
    BtnApagar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnRelatorio: TBitBtn;
    BtnFiltrar: TBitBtn;
    BtnFechaPed: TBitBtn;
    cxGroupBox1: TcxGroupBox;
    CBFILTRO: TcxComboBox;
    cxGroupBox2: TcxGroupBox;
    CBORDEM: TcxComboBox;
    GBPLACA: TcxGroupBox;
    EDNum: TFlatEdit;
    EDCliente1: TFlatEdit;
    EdFiscal: TFlatEdit;
    EdMaxRegistro: TFlatEdit;
    EDFISCALNFSE: TFlatEdit;
    cxGroupBox5: TcxGroupBox;
    Label33: TLabel;
    Label35: TLabel;
    edDtInicial: TMaskEdit;
    edDtFinal: TMaskEdit;
    RadioGroup1: TRadioGroup;
    rbAbertura: TRadioButton;
    rbFechamento: TRadioButton;
    PCadastro: TPanel;
    GBPRINCIPALCADASTRO: TcxGroupBox;
    Label40: TLabel;
    Label34: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label18: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    LEstoque: TLabel;
    LSaldoEstoque: TLabel;
    LLocal: TLabel;
    LCst: TLabel;
    LProduto: TLabel;
    pPesqBarraInterno: TPanel;
    Label28: TLabel;
    EDCodBarra: TEdit;
    pPesquisaRapida: TPanel;
    LPesquisa: TLabel;
    Label30: TLabel;
    EDCodFab: TColorMaskEdit;
    cxGroupBox3: TcxGroupBox;
    DBGrid2: TDBGrid;
    BtnProcProd: TBitBtn;
    EDQuantidade: TColorEditFloat;
    EDDesc: TColorEditFloat;
    EDValUnit: TColorEditFloat;
    EDTotal: TColorEditFloat;
    BtnInsertProd: TBitBtn;
    BtnDeleteProd: TBitBtn;
    PListaProdutos: TPanel;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Label60: TLabel;
    Label64: TLabel;
    Label62: TLabel;
    Label61: TLabel;
    Label63: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    EDesricaoServico: TEdit;
    ETotalServItem: TColorEditFloat;
    BtnInserir: TBitBtn;
    BBExcluir: TBitBtn;
    FrmEquipe: TFrmBusca;
    EValorServ: TColorEditFloat;
    EQtdServ: TColorEditFloat;
    EDescServ: TColorEditFloat;
    cxGroupBox4: TcxGroupBox;
    DBGrid4: TDBGrid;
    cbTerceiros: TCheckBox;
    edCustoTerceiros: TColorEditFloat;
    EdDescTOrdem: TColorEditFloat;
    EdTotalOrd: TColorEditFloat;
    PTOPCADASTRO: TPanel;
    Shape9: TShape;
    Shape10: TShape;
    Shape12: TShape;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnDadosAdic: TBitBtn;
    BitBtn1: TBitBtn;
    FrmCliente: TFrmBusca;
    EdObsFinanceira: TEdit;
    PListaClientes: TPanel;
    DBGListaCliente: TDBGrid;
    FrmObra: TFrmBusca;
    FrmFormaPagamento: TFrmBusca;
    Label1: TLabel;
    EdDtAbertura: TColorMaskEdit;
    Label4: TLabel;
    Shape4: TShape;
    Label13: TLabel;
    EdNumero: TEdit;
    TbsAbertura: TTabSheet;
    MDadosAbertura: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    btnConsultarProdutos: TBitBtn;
    Label8: TLabel;
    PFinanceiro: TPanel;
    PBanco: TPanel;
    Label115: TLabel;
    DBGCTA: TDBGrid;
    FPFinanceiro: TFashionPanel;
    Label25: TLabel;
    lbCredito: TLabel;
    BtnFatOSAssist: TBitBtn;
    BtnMoedaCancelar: TBitBtn;
    CBPagamento: TComboBox;
    FrmConta: TFrmBusca;
    FrmFormPag: TFrmBusca;
    FrmContaServ: TFrmBusca;
    Panel7: TPanel;
    LTextoBusca: TLabel;
    EdDtFech: TColorMaskEdit;
    CBGeraFinanceiro: TCheckBox;
    Panel2: TPanel;
    Label24: TLabel;
    edTotalRecebido: TColorEditFloat;
    PMenuRelOSAssist: TPopupMenu;
    mnuCompFechOSAssist: TMenuItem;
    Fsrel: TfrReport;
    FSDSRel: TfrDBDataSet;
    FSDSServicos: TfrDBDataSet;
    FSDSEquipamento: TfrDBDataSet;
    FSDSProdutos: TfrDBDataSet;
    Panel1: TPanel;
    Label9: TLabel;
    edTotalProdutos: TColorEditFloat;
    Panel3: TPanel;
    Label10: TLabel;
    edTotalServicos: TColorEditFloat;
    RvSystem1: TRvSystem;
    BtnRecorrencia: TBitBtn;
    BtnCancelamentos: TBitBtn;
    RightClickMenu: TPopupMenu;
    mnuConsultasdeNFe: TMenuItem;
    mnuCancelamentodeNFE: TMenuItem;
    RecuperadadosdaNF: TMenuItem;
    mnuReimprimirNfe: TMenuItem;
    VisualizarDanfe1: TMenuItem;
    LabelRec: TLabel;
    edQtdRecorrencia: TColorEditFloat;
    LabelRecMeses: TLabel;
    MObs: TMemo;
    Label5: TLabel;
    EdClassificacao: TEdit;
    Label6: TLabel;
    BtnServico: TBitBtn;
    pGenerico: TPanel;
    GridGenerico: TDBGrid;
    EdEquipamentoProduto: TColorMaskEdit;
    EdEquipamentoServico: TEdit;
    BtnEquipProd: TBitBtn;
    BtnEquipServ: TBitBtn;
    Label11: TLabel;
    BtnCadObra: TBitBtn;
    BtnCadEquipProd: TBitBtn;
    BtnCadEquipServ: TBitBtn;
    EdContatoCliente: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure DBGListaClienteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGListaClienteDblClick(Sender: TObject);
    procedure FrmClienteEdDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmClienteEdDescricaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmClienteBTNOPENClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure FrmObraBTNOPENClick(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmFormaPagamentoBTNOPENClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodFabEnter(Sender: TObject);
    procedure EDCodFabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodFabKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnInsertProdEnter(Sender: TObject);
    procedure BtnInsertProdExit(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure EDQuantidadeExit(Sender: TObject);
    procedure EDDescExit(Sender: TObject);
    procedure EDValUnitExit(Sender: TObject);
    procedure EDTotalExit(Sender: TObject);
    procedure ColorMaskEdit1Enter(Sender: TObject);
    procedure ColorMaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LCBEquipamentoProdutoDropDown(Sender: TObject);
    procedure BtnDeleteProdClick(Sender: TObject);
    procedure btnConsultarProdutosClick(Sender: TObject);
    procedure LCBEquipamentoServicosDropDown(Sender: TObject);
    procedure LCBEquipamentoServicosKeyPress(Sender: TObject; var Key: Char);
	 //pesquisa codigo equipe
	 Procedure PesquisaCodigoEquipe(codigo: String);
    procedure FrmEquipeEDCodigoExit(Sender: TObject);
    procedure FrmEquipeEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure DbServicoClassificacaoExit(Sender: TObject);
    procedure CBFILTROClick(Sender: TObject);
    procedure EDNumEnter(Sender: TObject);
    procedure EDNumExit(Sender: TObject);
    procedure EDNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCliente1Enter(Sender: TObject);
    procedure EDCliente1Exit(Sender: TObject);
    procedure EDCliente1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcProdClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnInserirClick(Sender: TObject);
    procedure FrmEquipeBTNOPENClick(Sender: TObject);
    procedure BBExcluirClick(Sender: TObject);
    Procedure RemoverServico;
    procedure EValorServExit(Sender: TObject);
    procedure EDescServExit(Sender: TObject);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure BtnFatOSAssistClick(Sender: TObject);
    procedure FrmFormPagBTNOPENClick(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaServBTNOPENClick(Sender: TObject);
    procedure EdFiscalEnter(Sender: TObject);
    procedure EdFiscalExit(Sender: TObject);
    procedure EdFiscalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnApagarClick(Sender: TObject);
    procedure mnuCompFechOSAssistClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure edDtInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDtFinalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbTerceirosClick(Sender: TObject);
    procedure BtnDeleteProdEnter(Sender: TObject);
    procedure BtnDeleteProdExit(Sender: TObject);
    procedure BtnInserirEnter(Sender: TObject);
    procedure BBExcluirEnter(Sender: TObject);
    procedure BBExcluirExit(Sender: TObject);
    procedure BtnInserirExit(Sender: TObject);
    procedure RvSystem1BeforePrint(Sender: TObject);
    procedure RvSystem1Print(Sender: TObject);
    procedure RvSystem1PrintHeader(Sender: TObject);
    procedure EdDescTProdExit(Sender: TObject);
    procedure EdtotalProdExit(Sender: TObject);
    procedure EdDescTServExit(Sender: TObject);
    procedure EdTotalservExit(Sender: TObject);
    procedure FrmObraEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFormaPagamentoEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmVendedorEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFormPagExit(Sender: TObject);
    procedure BtnRecorrenciaClick(Sender: TObject);
    procedure BtnCancelamentosClick(Sender: TObject);
    procedure VisualizarDanfe1Click(Sender: TObject);
    procedure mnuReimprimirNfeClick(Sender: TObject);
    procedure RecuperadadosdaNFClick(Sender: TObject);
    procedure mnuCancelamentodeNFEClick(Sender: TObject);
    procedure BtnServicoClick(Sender: TObject);
    procedure FrmObraEdDescricaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridGenericoCellClick(Column: TColumn);
    procedure GridGenericoDblClick(Sender: TObject);
    procedure GridGenericoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdEquipamentoProdutoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdEquipamentoServicoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnEquipServClick(Sender: TObject);
    procedure BtnEquipProdClick(Sender: TObject);
    procedure EdClassificacaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdClassificacaoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCadObraClick(Sender: TObject);
    procedure BtnCadEquipProdClick(Sender: TObject);
    procedure BtnCadEquipServClick(Sender: TObject);
    procedure FrmObraEnter(Sender: TObject);
//    procedure mnuConsultasdeNFeClick(Sender: TObject);
//    procedure mnuVisualizarDanfeClick(Sender: TObject);
  private
    { Private declarations }
       Function CancelLanOrd(CodPedido: String): Boolean;    
    	//Procedure para atualizar informações da grade
		Procedure AtualizaGridConsulta(FILTRO: String);
       //Seleciona Cliente e fecha lista
       Function SelecionaClienteLista : Boolean;
		//Limpa os edits geral da os
		Procedure LimpaLabelsOrdem;
       //procedure para limpar os labels e textos da seleção de produtos
		Procedure LimpaCamposProd;
		//Grava Ordem
		Function GravaOrdem: Boolean;
		//Gera Nova Ordem
		Function AbreNovaOrdem: Boolean;
		//Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
		Function RetornaNumPed: Integer;
       //Função responsável por inserir as contas do plano de acordo com a forma de pagamento
       Function EscreveContas: Boolean;
       //Busca/Consulta dados de cabeçalho da Ordem
		Function ConsultaOrdem: Boolean;
		//FILTRA OS REGISTROS DE PRODUTOS E SERVIÇOS PERTENCENTES A ORDEM
		Procedure FiltraSlave;
	 	//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
		Procedure EscreveLabelsPROD;
		//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
		Procedure EscreveLabelsSERV;
		//Função Para calcular desconto da ordem
		Function EfetuaDesconto(OrigemDesconto: String; TipoDesconto: String): Boolean;
       //procedure para filtrar e inserir preços de serviço
       Procedure FiltraOrdem(XSql: String);
       Function FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
		procedure FiltraOrdemData(xDataInicial, xDataFinal, xSituacao:String);
       Procedure LimpaCamposServ;
       Procedure ImpCompModelo18;
	//Comprovante de OS numero 18 - Cabecalho
	Procedure ImpCompModelo18_Cabecalho;
	//Comprovante de OS numero 18 - Cabecalho do cliente
	Procedure ImpCompModelo18_Cabecalho_Cliente;
	//Comprovante de OS numero 18 - Cabecalho de produtos
	Procedure ImpCompModelo18_Cabecalho_Produtos;
	//Comprovante de OS numero 18 - Imprime os dados de Produto
	Procedure ImpCompModelo18_ItemdeProduto;
	//Comprovante de OS numero 18 - Imprime os dados de Serviços
	Procedure ImpCompModelo18_ItemdeServicos;
	//Comprovante de OS numero 18 - Imprime os dados de Forma de Pagamento
	Procedure ImpCompModelo18_FormadePagamento;
	//Comprovante de OS numero 18 - Imprime os dados de rodapé
	Procedure ImpCompModelo18_Rodape;   
   Procedure PrintImage(RVSystem: TRvSystem; Row, Col, ImageWidth, ImageHeight: Double; Bitmap: TBitmap; FileName: String = '');
   procedure ImpCompModelo18_Cabecalho_Servicos;
   Procedure CalcPercentProd;
   //
   procedure EscreveClassificacao(XCodSubservico: Integer);
   //
   //Edmar - 12/11/2015 - função que faz a busca generica recebendo como parametro o tipo que será buscado
   function MostraPainelGenerico: Boolean;
   procedure EscondePainelGenerico;
   //
   function BuscaGenerica(XTermo: String; XCampoPesquisa: String): Integer;
   //
   procedure SelecionaGenerico(XCodigo: Integer);
   //
   function CadastraEquipamento(XDescricao: String): Integer;
  public
    { Public declarations }
  end;

var
  FOrdemAssitenciaTecnica: TFOrdemAssitenciaTecnica;
  XCampo: String;
  //Variáveis para armazenar códigos de pks
  XCodOrdemOS, XCodClienteOS, XCodObraOS, XCodFormaPagamentoOS, XcodVendedorOS, XCOD_CONTA, XCOD_CONTASERV, XCodEquipamentoProduto, XCodEquipamentoServico: Integer;
  //Variáveis para armazenar totalizadores
  XVLRTPROD, XVLRTSERV, XVLRTOTAL, XVLR_CREDITO_OS, XVLRTPROD_SEMDESCONTO, XVLRTSERV_SEMDESCONTO, XVLRTOTAL_SEMDESCONTO: Real;
  //Variáveis de controle de fk
  XCOD_ESTOQUE, XCOD_SERVICOCLASSIFICACAO: integer;
   XCONTROLECONSULTA: Boolean; //DJ 02/12/2009: Indica se esta acontecendo uma consulta
  XCodTmpEstoque: String;
  XLinha: Double;
  XtipoImp: String; //Define o tipo de impressão 'MEIA' ou 'INTEIRA' Meia Pagina ou Pagina inteira de A4
  xPesquisaDesc, xPesquisaCtrlInt, xPesquisaCodFabr: Boolean;
  XTipoProc: Smallint; //0 = procura normal 1=procura pelo nome
  XPESPROD: Integer; // pesquisa de produto 1 - codigo de barra, 0 - controle interno, 2 - codigo do fabricante, 3 - descricao
  Xcop, XNovaPag, xcont, xContaLinha,XQuantServicosImprimir,XQuantProdutosImprimir: Integer;
  XTipo: XTiposGenericos;  
implementation

uses UDmServ, UMenu, UDMPessoa, UCliente, UDMMacs, Alxor32, AlxMessage,
  UCadEquipamento, UFormPag, UDMFinanc, UMDO, UFuncionario, UDMEstoque,
  USenha, UConsProduto, UServico, UProduto, UCadEquipe, UDMConta, UDMCaixa,
  UDmBanco, UConsPlncta, UDMGEOGRAFIA, URecorrenciaOs, UDMEntrada,
  UDMSaida;

{$R *.dfm}
//Função utilizada para retornar o numero corrente para o pedido e incremantar na empresa
Function TFOrdemAssitenciaTecnica.RetornaNumPed: Integer;
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

//Função responsável por inserir as contas do plano de acordo com a forma de pagamento
Function TFOrdemAssitenciaTecnica.EscreveContas: Boolean;
Begin
   Try
       //BUSCA CONTAS PADRÕES
       If FrmFormPag.EdDescricao.Text = 'À VISTA'
       Then Begin //Busca contas para À VISTA
           If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString <> ''
           Then Begin //se existir uma conta padrao configurada
               XCOD_CONTA := DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
               FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTA), '');
               FrmConta.EDCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               FrmConta.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
               XCOD_CONTA := -1;
               FrmConta.EDCodigo.Text := '';
               FrmConta.EdDescricao.Text := '';
           End;
           If DMMACS.TLoja.FieldByName('PLNCTASERV').AsString <> ''
           Then Begin //se existir uma conta padrao configurada
               XCOD_CONTASERV := DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger;
               FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTASERV), '');
               FrmContaServ.EDCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               FrmContaServ.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
               XCOD_CONTASERV := -1;
               FrmContaServ.EDCodigo.Text := '';
               FrmContaServ.EdDescricao.Text := '';
           End;
       End
       Else Begin //Busca conta para À Prazo
           If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString <> ''
           Then Begin //se existir uma conta padrao configurada
               XCOD_CONTA := DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
               FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCod_Conta), '');
               FrmConta.EDCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               FrmConta.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
               XCOD_CONTA := -1;
               FrmConta.EDCodigo.Text := '';
               FrmConta.EdDescricao.Text := '';
           End;
           If DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsString <> ''
           Then Begin //se existir uma conta padrao configurada
               XCOD_CONTASERV := DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
               FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCOD_CONTASERV), '');
               FrmContaServ.EDCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               FrmContaServ.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
           End
           Else Begin
               XCOD_CONTASERV := -1;
               FrmContaServ.EDCodigo.Text := '';
               FrmContaServ.EdDescricao.Text := '';
           End;
       End;
   Except
       Result:=False;
   End;
End;
//Gera Nova Ordem
Function TFOrdemAssitenciaTecnica.AbreNovaOrdem: Boolean;
Var
	XNumero: Integer;
Begin
	Result:=True;
   Try
   	//Prepara componentes para nova inserção
       LimpaLabelsOrdem;

   	//Retorna numero do proximo generator
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('   select gen_id(gen_ordem_id, 0) as codigo from rdb$database ');
       MDO.QConsulta.Open;
       XCodOrdemOS:=MDO.QConsulta.FieldByName('codigo').AsInteger+1;
       
   	//insere em banco de dados a ordem preliminar
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' insert into ordem(ordem.box, ordem.cod_cliente, ordem.cod_formpag, ordem.cod_funcionario, ordem.cod_loja, ordem.cod_usuario, ');
       MDO.Query.SQL.Add('             ordem.cod_vendedor, ordem.numero, ordem.status, ordem.localat, ordem.dtabert, ordem.HRABERT) ');
       MDO.Query.SQL.Add('             values(:BOX, :COD_CLIENTE, :cod_formpag, :cod_funcionario, :cod_loja, :cod_usuario, ');
       MDO.Query.SQL.Add('             :cod_vendedor, :numero, :status, :localat, :DtAbertura, :HRABERT) ');
       MDO.Query.ParamByName('BOX').AsString:='';
       MDO.Query.ParamByName('COD_CLIENTE').AsInteger:=XCodClienteOS;
       MDO.Query.ParamByName('cod_formpag').AsInteger:=-1;
       MDO.Query.ParamByName('cod_funcionario').AsInteger:=-1;
       MDO.Query.ParamByName('cod_loja').AsString:=FMenu.LCODLOJA.Caption;
       MDO.Query.ParamByName('cod_usuario').AsInteger:=-1;
       MDO.Query.ParamByName('cod_vendedor').AsInteger:=-1;
       XNumero:=RetornaNumPed;
       MDO.Query.ParamByName('numero').AsInteger:=XNumero;
       MDO.Query.ParamByName('status').AsString:='ABERTO';
       MDO.Query.ParamByName('LOCALAT').AsString:='Não';
       MDO.Query.ExecSQL;
       
       EdNumero.Text:=IntToStr(XNumero);
       MDO.Transac.CommitRetaining;

       FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '');
       XCodFormaPagamentoOS:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormaPagamento.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormaPagamento.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   	FrmFormaPagamento.Repaint;
   Except
       MDO.Transac.RollbackRetaining;
   	Result:=False;
   End;
End;

procedure TFOrdemAssitenciaTecnica.FormActivate(Sender: TObject);
begin
  inherited;
  	//Alex: 26/06/2015 - Inicializa variáveis de uso geral
	Caption:='Ordem de Serviço de Assitência Técnica' ;
	FMenu.XTIPOBOLTO := '';
   FMenu.XRemessaGarantia := False;
   FMenu.XSimplesRemessa := False;
   FMenu.XOutrosEnt := False;
   FMenu.XDevolucao := False;
   XTipoProc := 0; //0 = procura de produtos normal 1=procura pelo nome
   FMenu.TIPOREL := ''; //demarca para não ocorrer caso de reimpressão de nota por erro
   If FileExists('C:\MZR\Arquivos\LayoutGrid\OrdemAssistencia.lgm') Then
		DBGridConsulta.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\OrdemAssistencia.lgm');
	FiltraOrdem('');

   //Verifica e Ativa a forma de 
	if (DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '1') then
   begin
       pPesquisaRapida.TabOrder := 1;
		pPesquisaRapida.Visible := True;
       pPesquisaRapida.BringToFront;
       pPesquisaRapida.Enabled := True;
       pPesqBarraInterno.Visible := False;
       pPesqBarraInterno.SendToBack;
       pPesqBarraInterno.Enabled := False;
   end else
   begin
       pPesqBarraInterno.TabOrder := 1;
    	//
       pPesqBarraInterno.Visible := True;
    	pPesqBarraInterno.BringToFront;
       pPesqBarraInterno.Enabled := True;
       //
		pPesquisaRapida.Visible := False;
       pPesquisaRapida.SendToBack;
       pPesquisaRapida.Enabled := False;
   end;


   PConsulta.Visible := True;
   PConsulta.BringToFront;
   PCadastro.Visible := False;
	PCadastro.SendToBack;
   edCustoTerceiros.Text := '0,00';
   edCustoTerceiros.Enabled := False;
end;
//Grava Ordem
Function TFOrdemAssitenciaTecnica.GravaOrdem: Boolean;
Var
	XNumero: Integer;
   XStatus: String;
Begin
	Result:=True;
   //Validações
   If XCodClienteOS=-1
   Then Begin
       MessageDlg('É preciso informar um cliente.', mtWarning, [mbOK], 0);
       Result:=False;
       Exit;
   End;

   if XCodObraOS = -1 then
   begin
       MessageDlg('É preciso selecionar uma Obra.', mtWarning, [mbOK], 0);
       Result:=False;
       Exit;
   end;
   
   If XCodFormaPagamentoOS=-1
   Then Begin
       MessageDlg('É preciso informar uma forma de pagamento.', mtWarning, [mbOK], 0);
       Result:=False;
       Exit;
   End;

   try
   	//insere em banco de dados a ordem preliminar
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' UPDATE ORDEM SET ORDEM.BOX=:BOX, ORDEM.COD_CLIENTE=:COD_CLIENTE,  ORDEM.COD_EQUIPAMENTO=:COD_OBRA, ORDEM.PROBREC=:PROBLEMA, ');
       MDO.Query.SQL.Add('     ORDEM.COD_FORMPAG=:COD_FORMPAG, ORDEM.COD_LOJA=:COD_LOJA, ORDEM.COD_TABELAPRECO=:COD_TABELAPRECO, ORDEM.HRABERT=:HRABERT, ');
       MDO.Query.SQL.Add('     ORDEM.COD_USUARIO=:COD_USUARIO, ORDEM.COD_VENDEDOR=:COD_VENDEDOR,  ORDEM.DTABERT=:DTABERT, ORDEM.DTPREV=:DTPREV, ORDEM.TIPOPAG = :PAGAMENTO, ');
       MDO.Query.SQL.Add('     ORDEM.DTENTREGA=:DTENTREGA, ORDEM.DESCONTO=:DESCONTO, ORDEM.CONTATO=:CONTATO,  ORDEM.TOTPROD=:TOTPROD, ORDEM.TOTORD=:TOTORD, ');
       MDO.Query.SQL.Add('     ORDEM.TOTSERV=:TOTSERV, ORDEM.DESCSERV=:DESCSERV, ORDEM.DESCPROD=:DESCPROD, ORDEM.EDIT=:EDIT, ORDEM.NUMERO=:NUMERO, ');
       MDO.Query.SQL.Add('     ORDEM.OBSERVACAO=:OBSERVACAO, ORDEM.VLRADIANTAMENTO=:VLRADIANTAMENTO, ORDEM.TOTAJUDANTE=:TOTAJUDANTE, ORDEM.MARK=:MARK, ORDEM.STATUS=:STATUS  ');
       MDO.Query.SQL.Add(' WHERE ORDEM.COD_ORDEM=:CODIGO ');
       MDO.Query.ParamByName('codigo').AsInteger:=XCodOrdemOS;
       MDO.Query.ParamByName('cod_cliente').AsInteger:=XCodClienteOS;
       MDO.Query.ParamByName('cod_obra').AsInteger:=XCodObraOS;
       MDO.Query.ParamByName('cod_formpag').AsInteger:=XCodFormaPagamentoOS;
       MDO.Query.ParamByName('cod_loja').AsString:=FMenu.LCODLOJA.Caption;
       MDO.Query.ParamByName('cod_usuario').AsString:=FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('cod_vendedor').AsInteger:=XCodVendedorOS;
       MDO.Query.ParamByName('EDIT').AsString:='0';
       MDO.Query.ParamByName('numero').AsString:=EdNumero.Text;
       MDO.Query.ParamByName('observacao').AsString:=MObs.Text;
       MDO.Query.ParamByName('Problema').AsString:=MDadosAbertura.Text;       
       MDO.Query.ParamByName('contato').AsString:=EdContatoCliente.Text;
       MDO.Query.ParamByName('PAGAMENTO').AsString := 'Carteira';
       If EdDtAbertura.Text='  /  /    ' Then
       	MDO.Query.ParamByName('dtabert').AsString:=''
       Else
       	MDO.Query.ParamByName('dtabert').AsString:=EdDtAbertura.Text;
       MDO.Query.ParamByName('HRABERT').AsString:=TimeToStr(Now);
       MDO.Query.ParamByName('desconto').AsCurrency:=EdDescTOrdem.ValueNumeric;
       MDO.Query.ParamByName('totord').AsCurrency:=EdTotalOrd.ValueNumeric;
       MDO.Query.ParamByName('TOTSERV').AsCurrency:=XVLRTSERV;
       MDO.Query.ParamByName('TOTPROD').AsCurrency:=XVLRTPROD;
       MDO.Query.ParamByName('MARK').AsString := '';
       MDO.Query.ParamByName('STATUS').AsString := 'ABERTO';       
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       DMServ.IBT.CommitRetaining;
   Except
       MDO.Transac.RollbackRetaining;
       Result:=False;
   End;
End;

//Procedure para atualizar informações da grade
Procedure TFOrdemAssitenciaTecnica.AtualizaGridConsulta(FILTRO: String);
Begin
    Try
    	If (StrToInt(EdMaxRegistro.Text) <0)
       Then Begin
    		MessageDlg('Verifique o campo que informa o número máximo de registro a serem retornados.', mtWarning, [mbOK], 0);
       	EdMaxRegistro.SetFocus;
    	End;
    Except
       EdMaxRegistro.Text:='';
    End;
    DMServ.WOrdemDesp.Close;
    DMServ.WOrdemDesp.SQL.Clear;
    If (EdMaxRegistro.Text<>'') and (EdMaxRegistro.Text<>'0') Then
    	DMServ.WOrdemDesp.SQL.Add('select   FIRST '+EdMaxRegistro.Text+' * from VWORDEM ')
    Else
    	DMServ.WOrdemDesp.SQL.Add(' select  * from VWORDEM ');
    DMServ.WOrdemDesp.SQL.Add(' Left join equipamento on  vwordem.cod_equipamento = equipamento.cod_equipamento ');
    DMServ.WOrdemDesp.SQL.Add(' WHERE (vwordem.COD_LOJA=' + FMenu.LCODLOJA.Caption + ') ');
    DMServ.WOrdemDesp.SQL.Add(' AND (vwordem.COD_ORDEM IS NOT NULL) ');

    //FILTRO PARA EDIT'S
    If FILTRO = 'NUMERO' Then
        DMServ.WOrdemDesp.SQL.Add(' AND (vwordem.numero = ' + #39 + TRIM(EDNum.Text) + #39+')')
    Else
        If FILTRO = 'CLIENTE' Then
        	DMServ.WOrdemDesp.SQL.Add(' AND(upper (VWordem.cliente)) like (upper (' + #39 + TRIM(EDCliente1.Text) + '%' + #39 + '))')
        Else
            If FILTRO = 'NUMFISCAL' Then
            	DMServ.WOrdemDesp.SQL.Add(' AND (vwordem.numfiscal = ' + #39 + TRIM(EdFiscal.Text) + #39+')')
            Else
               IF FILTRO = 'NFSE' Then
                   DMServ.WOrdemDesp.SQL.Add(' AND (vwordem.numfiscalnfse = ' + #39 + TRIM(EdFiscalNfse.Text) + #39+')')
               Else
                	FILTRO := '';


    If FILTRO = ''
    Then Begin
       //FILTRO COMBO
        If CBFILTRO.Text = 'ABERTAS' Then
            DMServ.WOrdemDesp.SQL.Add(' AND (vwordem.STATUS=' + #39 + 'ABERTO' + #39 + ')')
        Else
            If CBFILTRO.Text = 'FECHADAS' Then
                DMServ.WOrdemDesp.SQL.Add(' AND (vwordem.STATUS=' + #39 + 'FECHADO' + #39 + ')')
            Else
                If CBFILTRO.Text = 'TERMINADAS' Then
                    DMServ.WOrdemDesp.SQL.Add(' AND (vwordem.STATUS=' + #39 + 'TERMINADO' + #39 + ')')
                Else
                    If CBFILTRO.Text = 'NFE2' Then
                        DMServ.WOrdemDesp.SQL.Add(' AND (vwordem.FISCO=' + #39 + 'NFE2' + #39 + ')')
                    Else
                        If CBFILTRO.Text = 'CANCELADO' Then
                            DMServ.WOrdemDesp.SQL.Add(' AND (vwordem.STATUS=' + #39 + 'CANCELADO' + #39 + ')');
    End;
    //ORDENAÇÃO COMBO
    If CBORDEM.Text = 'NUMERO' Then //ordenar pelo número
        DMServ.WOrdemDesp.SQL.Add(' ORDER BY vwordem.NUMERO, vwordem.STATUS DESC, vwordem.BOX, vwordem.DTABERT DESC')
    Else
        If CBORDEM.Text = 'CLIENTE' Then //ordenar pelo cliente
            DMServ.WOrdemDesp.SQL.Add(' ORDER BY vwordem.CLIENTE, vwordem.STATUS DESC,vwordem.BOX,vwordem.DTABERT DESC')
        Else
            If CBORDEM.Text = 'DATA' Then //ordenar pela data
                DMServ.WOrdemDesp.SQL.Add(' ORDER BY vwordem.DTABERT DESC, vwordem.STATUS DESC, vwordem.BOX')
            Else
    			If CBORDEM.Text = 'FISCAL' Then //ordenar pelo box
        			DMServ.WOrdemDesp.SQL.Add(' ORDER BY vwordem.numfiscal, vwordem.PLACA, vwordem.STATUS DESC, vwordem.STATUS, vwordem.DTABERT DESC');
    DMServ.WOrdemDesp.SQL.Text;
    DMServ.WOrdemDesp.Open;
End;


procedure TFOrdemAssitenciaTecnica.DBGListaClienteKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	FrmClienteEdDescricaoKeyUp(sender, key, shift);
end;

procedure TFOrdemAssitenciaTecnica.DBGListaClienteDblClick(
  Sender: TObject);
begin
  inherited;
	SelecionaClienteLista;
end;

//Seleciona Cliente e fecha lista
Function TFOrdemAssitenciaTecnica.SelecionaClienteLista : Boolean;
Begin
	Try
   	//Se pressionado Enter, confirma a nova busca
       XCodClienteOS:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
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
   Except

   End;
End;

procedure TFOrdemAssitenciaTecnica.FrmClienteEdDescricaoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If (PListaClientes.Visible=False) and (key<>Vk_F2)  and (key<>Vk_F3)
   Then Begin
   	If FrmCliente.EdDescricao.Text<>''
       Then Begin
           PListaClientes.Visible:=True;
           PListaClientes.BringToFront;
           DMPESSOA.WCliente.Close;
           DMPESSOA.WCliente.SQL.Clear;
           DMPESSOA.WCliente.SQL.Add(' Select * from vwcliente order by vwcliente.nome ');
           DMPESSOA.WCliente.Open;
   	End;
   End;
end;

procedure TFOrdemAssitenciaTecnica.FrmClienteEdDescricaoKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
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
       If XCodClienteOS=-1
       Then Begin
           //Se codigo cliente não definido zera dados dos clientes
           FrmCliente.EdDescricao.Text:='';
       End
       Else Begin
       	//Se existe um codigo de cliente definido, retorna a estas informações
       	If FiltraTabela(DMPESSOA.TALX, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCodClienteOS), '')=True
           Then Begin
               FrmCliente.EdDescricao.Text:=DMPESSOA.TALX.FieldByName('nome').AsString;
           End;
       End;
       PListaClientes.Visible:=False;
   End;
	If (Key<>VK_UP) and (Key<>VK_DOWN)  and (Key<>VK_RETURN)  and (Key<>VK_ESCAPE) Then
		DMPESSOA.WCliente.Locate('nome', FrmCliente.EdDescricao.Text, [loPartialKey,loCaseInsensitive]);

end;

procedure TFOrdemAssitenciaTecnica.FrmClienteBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
   	If DMPESSOA.WCliente.FieldByName('ATUALIZAR').AsString='1' Then
       	MessageDlg('AS INFORMAÇÕES DO CLIENTE NECESSITAM SER ATUALIZADAS', mtWarning, [mbOK], 0);
       XCodClienteOS:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
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

       //Edmar - 06/02/2015 - Busca pela conta vencidas do cliente selecionado
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' SELECT FIRST(1) CTARECEBER.COD_CTARECEBER FROM CTARECEBER ');
       DMMACS.TALX.SQL.Add(' LEFT JOIN PARCELACR ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
       DMMACS.TALX.SQL.Add(' WHERE (CTARECEBER.COD_CLIENTE = :CLIENTE) AND (PARCELACR.DTVENC <= :DATA) AND (PARCELACR.FECH = ''N'')');
       DMMACS.TALX.ParamByName('CLIENTE').AsInteger := XCodClienteOS;
       DMMACS.TALX.ParamByName('DATA').AsDate := Now;
       DMMACS.TALX.Open;

       
       if not DMMACS.TALX.IsEmpty then
       	Mensagem(' I N F O R M A Ç Ã O ', 'O cliente selecionado possui contas vencidas!!!', '', 1, 1, False, 'I');
   End
   Else Begin
       XCodClienteOS:=-1;
       FrmCliente.EDCodigo.Text:='';
       FrmCliente.EDCodigo.Hint := '';
       FrmCliente.EdDescricao.Text:='';
       EdObsFinanceira.Text:='';
   End;
end;

procedure TFOrdemAssitenciaTecnica.BtnNovoClick(Sender: TObject);
begin
  inherited;
   //LimpaLabelsAces;
	LimpaLabelsOrdem;
   AbreNovaOrdem;
   FiltraSlave;
   PConsulta.Visible:=False;
   PCadastro.Visible:=True;
   PCadastro.BringToFront;
   FrmCliente.EdDescricao.SetFocus;
   XCodClienteOS := -1;
   XCodObraOS := -1;
   XCodEquipamentoProduto := -1;
   XCodEquipamentoServico := -1;

   PageControl1.TabIndex := 0;
   EscondePainelGenerico;      
end;
//Limpa os edits geral da os
Procedure TFOrdemAssitenciaTecnica.LimpaLabelsOrdem;
Begin
   XCodOrdemOS := -1;
	XCodClienteOS := -1;
   XCodObraOS := -1;
   XCodFormaPagamentoOS := -1;

   EdNumero.Text := '';
   EdDtAbertura.Text:=DateToStr(Date());   
   FrmCliente.EDCodigo.Text := '';
	FrmCliente.EdDescricao.Text:='';
   EdObsFinanceira.Text:='';
   FrmObra.EDCodigo.Text:='';
   FrmObra.EdDescricao.Text:='';
   FrmFormaPagamento.EDCodigo.Text:='';
   FrmFormaPagamento.EdDescricao.Text:='';
   EdContatoCliente.Text := '';

   MDadosAbertura.Lines.Clear;
   MObs.Lines.Clear;

   EdDescTOrdem.ValueNumeric := 0;
   EdTotalOrd.ValueNumeric := 0;

   LimpaCamposProd;
   LimpaCamposServ;
End;

procedure TFOrdemAssitenciaTecnica.FrmObraBTNOPENClick(Sender: TObject);
begin
  inherited;
	if (XCodClienteOS = -1 ) Then
     Exit;

  	//Edmar - 04/12/2014 - Antes de abrir a tela de equipamento, filtra buscando
   //o cliente para que na tela de equipamento mostre somentes os equipamento do cliente da OS
	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCodClienteOS), '');
	FMenu.XTIPOBOLTO:='357';
   If AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected'
   Then Begin
       XCodObraOS:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
 		FrmObra.EDCodigo.Text:=DMPESSOA.TEquip.FieldByName('PLACA').AsString;
       FrmObra.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
   End
   Else Begin
       if XCodObraOS=-1
       then begin
         //XCOD_EQUIPAMENTO:=-1;
         FrmObra.EDCodigo.Text:='';
         FrmObra.EdDescricao.Text:='';
         FrmObra.EDCodigo.SetFocus;
       end;
   End;
   FMenu.XTIPOBOLTO:='';   
   FrmObra.Repaint;
end;

procedure TFOrdemAssitenciaTecnica.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
       XCodFormaPagamentoOS:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormaPagamento.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormaPagamento.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   	FrmFormaPagamento.Repaint;
   End
   Else Begin
       XCodFormaPagamentoOS:=-1;
       FrmFormaPagamento.EDCodigo.Text:='';
       FrmFormaPagamento.EdDescricao.Text:='';
   End;
end;

procedure TFOrdemAssitenciaTecnica.FrmFormaPagamentoBTNOPENClick(
  Sender: TObject);
begin
  inherited;
	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
       XCodFormaPagamentoOS:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormaPagamento.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormaPagamento.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   	FrmFormaPagamento.Repaint;
   End
   Else Begin
       XCodFormaPagamentoOS:=-1;
       FrmFormaPagamento.EDCodigo.Text:='';
       FrmFormaPagamento.EdDescricao.Text:='';
   End;
end;

procedure TFOrdemAssitenciaTecnica.BtnGravarClick(Sender: TObject);
begin
   If GravaOrdem=True
   Then Begin
       PCadastro.Visible:=False;
       PConsulta.Visible:=True;
       PConsulta.BringToFront;
		AtualizaGridConsulta('');
   End;
end;

procedure TFOrdemAssitenciaTecnica.BtnConsultarClick(Sender: TObject);
begin
  //inherited;
   If ConsultaOrdem=True
   Then Begin
   	//Se a OS foi devidamente encontrada ativa o painel de cadastro/alteração
       PConsulta.Visible:=False;
       PCadastro.Visible:=True;
       PCadastro.BringToFront;
       FrmCliente.EdDescricao.SetFocus;

       XCodEquipamentoProduto := -1;
       XCodEquipamentoServico := -1;
       
       PageControl1.TabIndex := 0;
       EscondePainelGenerico;       
   End
   Else Begin
   	//Se a OS não foi devidamente encontrada desativa o painel de cadastro/alteração
       PCadastro.Visible:=False;
       PConsulta.Visible:= True;
       PConsulta.BringToFront;
       EDNum.SetFocus;
   End;
end;
//Busca/Consulta dados de cabeçalho da Ordem
Function TFOrdemAssitenciaTecnica.ConsultaOrdem: Boolean;
Begin
	Try
   	Result:=True;
       MDO.Transac.CommitRetaining;
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select ordem.COD_ORDEM, ordem.COD_EQUIPAMENTO, ordem.cod_cliente, vwcliente.nome as cliente,  ordem.cod_formpag, formpag.descricao AS FORMAPAGAMENTO, ');
       MDO.QConsulta.SQL.Add('        ordem.cod_funcionario, ordem.cod_loja, ordem.edit, ordem.cod_usuario, ordem.cod_vendedor, vwfuncionario.nome AS vendedor, ');
       MDO.QConsulta.SQL.Add('        ordem.numero, ordem.status, ordem.localat, ordem.cod_vendedor, ordem.dtabert, ordem.HRABERT, ordem.dtprev, ordem.dtentrega, ');
       MDO.QConsulta.SQL.Add('        ordem.desconto, ORDEM.CONTATO, ordem.totprod, ordem.totord, ordem.totserv, ordem.descserv, ordem.probrec, ');
       MDO.QConsulta.SQL.Add('        ordem.descprod, ordem.observacao, contato ');
       MDO.QConsulta.SQL.Add(' from ordem ');
       MDO.QConsulta.SQL.Add(' left join vwordem on ordem.cod_ordem = vwordem.cod_ordem ');
       MDO.QConsulta.SQL.Add(' left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente ');
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
           XCodOrdemOS:=MDO.QConsulta.FieldByName('cod_ordem').AsInteger;
           XCodFormaPagamentoOS:=MDO.QConsulta.FieldByName('cod_formpag').AsInteger;
           XCodObraOS:=MDO.QConsulta.FieldByName('cod_equipamento').AsInteger;
           XCodClienteOS:=MDO.QConsulta.FieldByName('cod_cliente').AsInteger;
           XcodVendedorOS:=MDO.QConsulta.FieldByName('cod_vendedor').AsInteger;

           //Forma de Pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCodFormaPagamentoOS), '')=True
           Then Begin
               FrmFormaPagamento.EDCodigo.Text:=DMFINANC.TFormPag.FieldByname('COD_INTERNO').AsString;
               FrmFormaPagamento.EdDescricao.Text:=DMFINANC.TFormPag.FieldByname('DESCRICAO').AsString;
           End
           Else Begin
               XCodFormaPagamentoOS:=-1;
               FrmFormaPagamento.EDCodigo.Text:='';
               FrmFormaPagamento.EdDescricao.Text:='';
			End;
			//Obra
           If FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_equipamento', IntToStr(XCodObraOS), '')=True
           Then Begin
               FrmObra.EDCodigo.Text:=DMPESSOA.TEquip.FieldByname('placa').AsString;
               FrmObra.EdDescricao.Text:=DMPESSOA.TEquip.FieldByname('DESCRICAO').AsString;
           End
           Else Begin
               XCodObraOS:=-1;
               FrmObra.EDCodigo.Text:='';
               FrmObra.EdDescricao.Text:='';
			End;
			//Cliente
           FrmCliente.EdDescricao.Text:=MDO.QConsulta.FieldByName('CLIENTE').AsString;
           If FiltraTabela(DMMACS.TALX, 'cliente', 'cod_cliente', IntToStr(XCodClienteOS), '') Then
               EdObsFinanceira.Text:=DMPESSOA.TCliente.FieldByName('OBSFINANCEIRA').AsString;
           //Outras Informações
           MObs.Text:=MDO.QConsulta.FieldByName('observacao').AsString;
           MDadosAbertura.Text:=MDO.QConsulta.FieldByName('probrec').AsString;
			EdContatoCliente.Text:=MDO.QConsulta.FieldByName('contato').AsString;
           EdDtAbertura.Text:=MDO.QConsulta.FieldByName('dtabert').AsString;
           EdNumero.Text:=MDO.QConsulta.FieldByName('numero').AsString;
           EdDescTOrdem.ValueNumeric:=MDO.QConsulta.FieldByName('desconto').AsCurrency;
           EdTotalOrd.ValueNumeric:=MDO.QConsulta.FieldByName('totord').AsCurrency;
           FiltraSlave;
           LimpaCamposProd;
           LimpaCamposServ;
           Try
               //Altera na OS a função de EDIT que marca a OS como sendo usada
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' update ordem set ordem.EDIT=''1'' where ordem.cod_ordem=:codigo ');
               MDO.Query.ParamByName('codigo').AsInteger:=XCodOrdemOS;
               MDO.Query.ExecSQL;
               MDO.Transac.CommitRetaining;
               DMServ.IBT.CommitRetaining;
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

//FILTRA OS REGISTROS DE PRODUTOS E SERVIÇOS PERTENCENTES A ORDEM
Procedure TFOrdemAssitenciaTecnica.FiltraSlave;
Var
    XDESCMOEDA: real;
Begin
    FrmCliente.Repaint;
    FrmEquipe.Repaint;
 	 //TRABALHA COM PRODUTOS DA ORDEM
    //CALCULA TOTAL
    DMESTOQUE.TSlave.Close;
    DMESTOQUE.TSlave.SQL.Clear;
    DMESTOQUE.TSlave.SQL.Add(' SELECT SUM(ITPRODORD.TOTAL) AS TOTAL, SUM(ITPRODORD.VLRUNIT * ITPRODORD.QTD) SEM_DESCONTO FROM ITPRODORD WHERE ITPRODORD.COD_ORDEM = :CODORDEM ');
    DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger := XCodOrdemOS;
    DMESTOQUE.TSlave.Open;
    XVLRTPROD := DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
    XVLRTPROD_SEMDESCONTO := DMESTOQUE.TSlave.FieldByName('SEM_DESCONTO').AsCurrency;

    //INSERE COMANDOS PARA FILTRAR
    DMESTOQUE.TSlave.Close;
    DMESTOQUE.TSlave.SQL.Clear;
    DMESTOQUE.TSlave.SQL.Add('Select itprodord.cod_itprodord, unidade.sigla_unid as UNIDADE, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
    DMESTOQUE.TSlave.SQL.Add('itprodord.desconto, itprodord.data, itprodord.cod_funcionario, itprodord.vlrunit, subproduto.contrint, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, itprodord.operacao,');
    DMESTOQUE.TSlave.SQL.Add(' itprodord.baseicms, itprodord.vlricms, itprodord.aliqicms, cst.cod_sit_trib, itprodord.descnf as DESCONTONF, equipamento.cod_equipamento, equipamento.placa, equipamento.descricao as Equipamento, ');
    DMESTOQUE.TSlave.sql.Add('subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL1').AsString + ' AS PRIMCOD, subproduto.' + DMMACS.TLoja.FieldByName('CODPRODREL2').AsString + ' AS SEGCOD ');
    DMESTOQUE.TSlave.SQL.Add('From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
    DMESTOQUE.TSlave.SQL.Add('left join equipamento on itprodord.cod_tabelafaixapreco = equipamento.cod_equipamento ');
    DMESTOQUE.TSlave.SQL.Add('left join cst ON itprodord.cod_cst = cst.cod_cst ');
    DMESTOQUE.TSlave.SQL.Add('Left Join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
    DMESTOQUE.TSlave.SQL.Add('Where itprodord.cod_ordem = :CODORDEM ');
    DMESTOQUE.TSlave.ParamByName('CODORDEM').AsInteger := XCodOrdemOS;
    DMESTOQUE.TSlave.SQL.Add('order by itprodord.cod_itprodord desc');
    DMESTOQUE.TSlave.Open;

    //TRABALHANDO COM DESPESAS   
    DMESTOQUE.Alx2.Close;
    DMESTOQUE.Alx2.SQL.Clear;
    DMESTOQUE.Alx2.SQL.Add(' SELECT SUM(DESPADIC.VLRTOTFIN) AS VLRTOTFIN, SUM(DESPADIC.VLRFINAL * DESPADIC.QTD) SEM_DESCONTO FROM DESPADIC WHERE (DESPADIC.GERADOR=''ORDEM'') AND (DESPADIC.COD_GERADOR=:COD_GERADOR) ');
    DMESTOQUE.Alx2.ParamByName('COD_GERADOR').AsInteger := XCodOrdemOS;
    DMESTOQUE.Alx2.Open;
    XVLRTSERV := DMESTOQUE.Alx2.FieldByName('VLRTOTFIN').AsCurrency;
    XVLRTSERV_SEMDESCONTO := DMESTOQUE.Alx2.FieldByName('SEM_DESCONTO').AsCurrency;

    DMESTOQUE.Alx3.Close;
    DMESTOQUE.Alx3.SQL.Clear;
    DMESTOQUE.Alx3.SQL.Add(' SELECT DESPADIC.COD_DESPADIC, SUBSERVICO.COD_SUBSERVICO, SUBSERVICO.DESCRICAO SERVICO, DESPADIC.DESPESA COMPLEMENTO, EQUIPAMENTO.COD_EQUIPAMENTO, ');
    DMESTOQUE.Alx3.SQL.Add(' EQUIPAMENTO.DESCRICAO EQUIPAMENTO, DESPADIC.UNIDADE SERV_TERCEIRO, DESPADIC.VLRREAL CUSTO, DESPADIC.QTD, DESPADIC.VLRFINAL VALOR, ');
    DMESTOQUE.Alx3.SQL.Add(' DESPADIC.DESCONTO, DESPADIC.VLRTOTFIN VALOR_TOTAL, DESPADIC.INTRECORRENCIA RECORRENCIA, EQUIPE.COD_EQUIPE, EQUIPE.DESCRICAO EQUIPE ');
    DMESTOQUE.Alx3.SQL.Add(' FROM DESPADIC ');
    DMESTOQUE.Alx3.SQL.Add(' LEFT JOIN EQUIPE ON DESPADIC.COD_EQUIPE = EQUIPE.COD_EQUIPE ');
    DMESTOQUE.Alx3.SQL.Add(' LEFT JOIN EQUIPAMENTO ON DESPADIC.COD_EQUIP = EQUIPAMENTO.COD_EQUIPAMENTO ');
    DMESTOQUE.Alx3.SQL.Add(' LEFT JOIN SUBSERVICO ON DESPADIC.COD_SERVICO = SUBSERVICO.COD_SUBSERVICO ');
    DMESTOQUE.Alx3.SQL.Add(' where (despadic.cod_gerador= :cod) and (despadic.gerador=' + #39 + 'ORDEM' + #39 + ')');
    DMESTOQUE.Alx3.SQL.Add(' order by despadic.cod_despadic desc');
    DMESTOQUE.Alx3.ParamByName('cod').AsInteger := XCodOrdemOS;
    DMESTOQUE.Alx3.Open;

    //FILTRA DESPESAS
    DMESTOQUE.TDesp.Close;
    DMESTOQUE.TDesp.SQL.Clear;
    DMESTOQUE.TDesp.SQL.Add('select despadic.*, equipe.cod_equipe, equipe.descricao ');
    DMESTOQUE.TDesp.SQL.Add('From despadic ');
    DMESTOQUE.TDesp.SQL.Add('LEFT JOIN EQUIPE ON DESPADIC.COD_EQUIPE = EQUIPE.COD_EQUIPE');
    DMESTOQUE.TDesp.SQL.Add('Where (despadic.gerador=' + #39 + 'ORDEM' + #39 + ') AND (despadic.cod_gerador=:COD_GERADOR)');
    DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger := XCodOrdemOS;
    DMESTOQUE.TDesp.SQL.Add('order by despadic.cod_despadic desc');
    DMESTOQUE.TDesp.Open;

    //ATRIBUI TOTAL VENDIDO SEM DESCONTO À VARIAVEL
    XVLRTOTAL := XVLRTPROD + XVLRTSERV;
    XVLRTOTAL_SEMDESCONTO := XVLRTPROD_SEMDESCONTO + XVLRTSERV_SEMDESCONTO;

    EdTotalOrd.ValueNumeric := XVLRTOTAL;
    //
    EfetuaDesconto('GERAL', 'TOTAL');
End;

procedure TFOrdemAssitenciaTecnica.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   FiltraSlave;
	// se nao possui servico e nem produtos eh exibido a mensagem - SEGUNDO SOLICITAÇÃO É OBRIGATORIO PODER GRAVAR SEM SERVICO
   If (DMESTOQUE.TSlave.IsEmpty) and (DMESTOQUE.TDesp.IsEmpty) {and (DMESTOQUE.TSlaveServ.IsEmpty)}
   Then Begin
   	If Mensagem('   A T E N Ç Ã O   ','A Ordem de Serviço atual não possui produtos e serviços inclusos. Deseja apagá-la ?','',2,3,false,'A')=2
       Then Begin
	    	//Apaga ORDEM
			FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCodOrdemOS), '');
			Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº '+DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.TOrd.FieldByName('TOTORD').AsString);
			DMServ.TOrd.Delete;

          	//Confirma Transação
          	DMSERV.IBT.CommitRetaining;
          	//atualiza vew
           AtualizaGridConsulta('');
           PCadastro.Visible:=False;
           PConsulta.Visible:=true;
           PConsulta.BringToFront;
           Exit;
		End;
   End;
   Try
   	//insere em banco de dados a ordem preliminar
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' update ordem set ordem.EDIT=:EDIT Where ordem.cod_ordem=:codigo ');
       MDO.Query.ParamByName('codigo').AsInteger:=XCodOrdemOS;
       MDO.Query.ParamByName('EDIT').AsString:='0';
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       DMServ.IBT.CommitRetaining;
   Except
       MDO.Transac.RollbackRetaining;
   End;
   PCadastro.Visible:=False;
   PConsulta.Visible:=True;
   PConsulta.BringToFront;
   AtualizaGridConsulta('');
end;

procedure TFOrdemAssitenciaTecnica.DBGridConsultaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
    If (DMServ.WOrdemDesp.FieldByName('STATUS').AsString = 'ABERTO') Then
    Begin
       DBGridConsulta.Canvas.Font.Color := clRed;
       DBGridConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    End;
    If (DMServ.WOrdemDesp.FieldByName('STATUS').AsString <> 'ABERTO')
    Then Begin
    	DBGridConsulta.Canvas.Font.Color := clPurple;
    	DBGridConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    End;
end;

procedure TFOrdemAssitenciaTecnica.DBGridConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If (shift = [ssCtrl]) And (key = 83)
	Then Begin
   	Try
       	If Not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') Then
                ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
           DBGridConsulta.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\OrdemAssistencia.lgm');
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
        Except
            Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
        End;
	End;

end;

procedure TFOrdemAssitenciaTecnica.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
	If PConsulta.Visible = True
   Then Begin
   	If (Key = VK_Down) Then
            DMServ.WOrdemDesp.Next;
       If (Key = VK_Up) Then
            DMServ.WOrdemDesp.Prior;
   End;

   //Edmar - 12/09/2014 - Abre Tela de Consultar Produto na ordem de serviço a pedido da BS
   //solicitação 188
   If Key=VK_F10
   Then Begin
		btnConsultarProdutosClick(sender);
   End;

   //botão GRAVAR
   If Key = vk_f5 Then
   	If PCadastro.Visible Then
       	BtnGravar.Click;

	//botão CANCELAR
   If Key = vk_f7 Then
   	If PCadastro.Visible Then
       	BtnCancelar.Click;

   // CTRL + D -> eh o comando para desbloquear a ordem de servico caso tenha ocorrido algum problema
   // qdo estava sendo consultadd e caiu energia, ou foi pressionado F4 (por exemplo) e nao passou pelo
   // botão GRAVAR ou CANCELAR que liberar a ordem
   If (shift = [ssCtrl]) And (key = 68)
   Then Begin
       // faz o filtro na tabela para verificar se ela esta realmente bloqueada
        FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByname('cod_ordem').AsString, '');

       // se ela nao estiver bloqueada eh exibida a msg e finalizada a operação
       If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
       Then Begin
       	If Mensagem('   A T E N Ç Ã O   ', 'Deseja desbloquear a Ordem nº ' + DMServ.WOrdemDesp.FieldByName('numero').AsString + ' ?', '', 2, 3, false, 'A') = 2
           Then Begin
               // abre formulario de senha
               AbrirForm(TFSenha, FSenha, 0);

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
   //controle de botões
   //botão novo
   If Key = vk_f4 Then
        If PConsulta.Visible Then
            BtnNovo.Click;

   //botão apagar
   If Key = vk_f8 Then
        If PConsulta.Visible Then
            BtnApagar.Click;

   //botão consultar
   If Key = vk_f6 Then
        If PConsulta.Visible Then
            BtnConsultar.Click;
   //FOCUS EM LOCALIZAR
   If Key = vk_f2 Then
        If PConsulta.Visible
        Then Begin
            AtualizaGridConsulta('ORIGEM');
            EDNum.SetFocus;
   End;
  	inherited;
end;

//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFOrdemAssitenciaTecnica.EscreveLabelsPROD;
Begin
 	//Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
   If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '') = False Then
   	Exit;
   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
   If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '') = False Then
   	Exit;
   //Filtra tabela de CST
	FiltraTabela(DMEstoque.TCST, 'CST', 'COD_CST', DMEstoque.TSubProd.FieldByName('COD_CST').AsString, '');
   // por questao de garantia o codigo de estoque do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
   XCOD_ESTOQUE := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
   // nao está selecionando apenas valores á prazo
   If DMMACS.TLoja.FieldByName('tipovenda').AsString = '0'
   Then Begin
		If (EDQuantidade.ValueNumeric >= DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString <> '')
		Then Begin //caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
			If FrmFormaPagamento.EdDescricao.Text = 'À VISTA'
			Then Begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
				EDValUnit.Text := FormatCurr('0.00', DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency);
           End
			Else Begin
				EDValUnit.Text := FormatCurr('0.00', DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
           End;
       End
       Else Begin
			If FrmFormaPagamento.EdDescricao.Text = 'À VISTA'
			Then Begin
				EDValUnit.Text := FormatCurr('0.00', DMEstoque.WSimilar.FieldByName('VENDVARV').AsCurrency);
			End
			Else Begin
				EDValUnit.Text := FormatCurr('0.00', DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency);
           End;
       End;
   End
   // forçando venda a prazo
   Else Begin
		If (EDQuantidade.ValueNumeric >= DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString <> '')
       Then Begin //caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
			EDValUnit.Text := FormatCurr('0.00', DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
		End
		Else Begin
			EDValUnit.Text := FormatCurr('0.00', DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency);
		End;
   End;
   //Passa os valores do produto selecionado para as labels
	LProduto.Caption := DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
	If DMEstoque.TSubProd.FieldByName('Marca').asstring <> '' Then
		LProduto.Caption := LProduto.Caption + '     Marca: ' + dMEstoque.TSubProd.FieldByName('Marca').asstring;
	If DMEstoque.TSubProd.FieldByName('LOCALESTANTE').asstring <> '' Then
		LLocal.Caption := 'Estante: ' + DMEstoque.TSubProd.FieldByName('LOCALESTANTE').asstring;
	LEstoque.Caption := FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency);
	LSaldoEstoque.Caption := FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency);
	If DMESTOQUE.TCST.FieldByName('VENDA').AsString = '1' Then
		LCst.Caption := 'C.S.T.: ' + DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString + '/Venda'
	Else
		LCst.Caption := 'C.S.T.: ' + DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString + '/Não Venda';

   EDQuantidade.Text := '1,00';
End;

//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFOrdemAssitenciaTecnica.EscreveLabelsSERV;
Begin
   XCOD_SERVICOCLASSIFICACAO := DMServ.WSubserv.FieldByName('cod_subservico').AsInteger;
   //Filtra os possíveis equipamentos do cliente para selecção e atrelar junto aos produtos e serviços
   DMFINANC.TAlxMoeda.Close;
   DMFINANC.TAlxMoeda.Sql.Clear;
   DMFINANC.TAlxMoeda.SQL.Add(' select equipamento.cod_equipamento, equipamento.placa, equipamento.descricao from equipamento where (equipamento.cod_cliente=:Cliente) and (equipamento.agulha=''EQUIP'') ');
   DMFINANC.TAlxMoeda.ParamByName('cliente').AsInteger := XCodClienteOS;
   DMFINANC.TAlxMoeda.Open;
   If EQtdServ.ValueNumeric<=0 Then
   	EQtdServ.ValueNumeric:=1;;
   If EValorServ.ValueNumeric<=0 Then
		EValorServ.ValueNumeric:=DMServ.WSubServ.FieldByName('vlrfinal').AsCurrency;
End;

procedure TFOrdemAssitenciaTecnica.EDCodFabEnter(Sender: TObject);
begin
  inherited;
	DMESTOQUE.WSimilar.Close;
   DMESTOQUE.WSimilar.SQL.Clear;
   DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
   DMESTOQUE.WSimilar.Open;
end;
procedure TFOrdemAssitenciaTecnica.EDCodFabKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
    str: String;
Begin
   Inherited;
    If DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '0'
    Then Begin
       // ALEX - 21/05/2009: pressionar Ctrl+P chama painel de busca de produtos pelo nome
        If (shift = [ssCtrl]) And (key = 78)
            Then Begin
            If XTipoProc = 0
                Then Begin
                XTipoProc := 1;
                PListaProdutos.Visible := true;
                PListaProdutos.BringToFront;
            End
            Else Begin
                XTipoProc := 0;
                PListaProdutos.Visible := False;
            End;
        End;
  // End;

        If XTipoProc = 1
            Then Begin
            If Key = Vk_Down
                Then Begin
                DMESTOQUE.WSimilar.Next;
            End;
            If Key = Vk_UP
                Then Begin
                DMESTOQUE.WSimilar.Prior;
            End;
        End;

        If Key = VK_Return
        Then Begin
            If XTipoProc = 0
                Then Begin
           //TIPO DE BUSCA
                If XPESPROD = 1 Then
                    str := 'CODBARRA'
                Else
                    If XPESPROD = 2 Then
                        str := 'CODFABRICANTE'
                    Else
                        If XPESPROD = 3 Then
                            str := 'DESCRICAO'
                        Else
                            str := 'CONTRINT';

             {Edmar - 14/08/2014 - Trecho comentado pois não é mais usado esse metodo para busca
           //Paulo 12/07/2011: Busca o produto pelo código conforme determinado na config loja
                If DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CI' Then
                Begin
                    If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', UpperCase(EDCodFab.Text), '') = True
                        Then Begin
                        EscreveLabelsPROD;
                        EDCodFab.Text := '';
                        EDQuantidade.Text := '1,00';

                  // EDQuantidade.SetFocus;
                    End
                    Else Begin
                        LimpaCamposProd;
                        LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
                    End;
                End;
                If DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CF' Then
                Begin
                    If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', UpperCase(EDCodFab.Text), '') = True
                        Then Begin
                        EscreveLabelsPROD;
                        EDCodFab.Text := '';
                        EDQuantidade.Text := '1,00';
                  // EDQuantidade.SetFocus;
                    End
                    Else Begin
                        LimpaCamposProd;
                        LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
                    End;
                End;
                If DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'CB' Then
                Begin
                    If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', UpperCase(EDCodFab.Text), '') = True
                        Then Begin
                        EscreveLabelsPROD;
                        EDCodFab.Text := '';
                        EDQuantidade.Text := '1,00';
                  // EDQuantidade.SetFocus;
                    End
                    Else Begin
                        LimpaCamposProd;
                        LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
                    End;
                End;}

           //Paulo 12/07/2011: Se não existe config na loja
                If (DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'NC') Then
                Begin
                    If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', UpperCase(EDCodFab.Text), '') = True
                        Then Begin
                        EscreveLabelsPROD;
                        EDCodFab.Text := '';
                        EDQuantidade.Text := '1,00';
                  // EDQuantidade.SetFocus;
                    End
                    Else Begin
                        If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', UpperCase(EDCodFab.Text), '') = True
                            Then Begin
                            EscreveLabelsPROD;
                            EDCodFab.Text := '';
                            EDQuantidade.Text := '1,00';
                      // EDQuantidade.SetFocus;
                        End
                        Else Begin
                            If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', UpperCase(EDCodFab.Text), '') = True
                                Then Begin
                                EscreveLabelsPROD;
                                EDCodFab.Text := '';
                                EDQuantidade.Text := '1,00';
                        //   EDQuantidade.SetFocus;
                            End
                            Else Begin
                                If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'DESCRICAO', UpperCase(EDCodFab.Text), '') = True
                                    Then Begin
                                    EscreveLabelsPROD;
                                    EDCodFab.Text := '';
                                    EDQuantidade.Text := '1,00';
                              //   EDQuantidade.SetFocus;
                                End
                                Else Begin
                                    LimpaCamposProd;
                                    LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
                                End;
                            End;
                        End;
                    End;
                End;
            End
            Else Begin
                str := EDCodFab.Text;
                If str[1] = '.'
                    Then Begin
                    EDCodFab.Text := TiraCaracterEmPosicao(str, 1);
                    FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA=' + FMenu.LCODLOJA.Caption + ') AND (upper(CODFABRICANTE) like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
                End
                Else Begin
                    FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA=' + FMenu.LCODLOJA.Caption + ') AND (upper(DESCRICAO) like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
                End;
            End;
        End;
    End;
    If Key=Vk_F2
    Then Begin
          DMESTOQUE.WSimilar.Close;
          DMESTOQUE.WSimilar.SQL.Clear;
          DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR where (vwsimilar.descricao like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
          DMESTOQUE.WSimilar.Open;
		   XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
          //EscreveLabelsPROD;
          //EDCodFab.Text := '';
          EDQuantidade.Text := '1,00';
    End;
end;

Procedure TFOrdemAssitenciaTecnica.LimpaCamposServ;
Begin
   ETotalServItem.Text := '0,00';
   EValorServ.Text := '0,00';
   EQtdServ.Text := '0,00';
   edCustoTerceiros.Text := '0,00';
   edQtdRecorrencia.Text := '0';
   edCustoTerceiros.Enabled := False;
   EDesricaoServico.Clear;
   FrmEquipe.EDCodigo.Clear;
   FrmEquipe.EdDescricao.Clear;
   EdEquipamentoServico.Text := '';
   XCodEquipamentoServico := -1;
   XCOD_SERVICOCLASSIFICACAO := -1;
   EdClassificacao.Text := '';
   cbTerceiros.Checked := False;
End;

//procedure destinada a limpar os campos de inserção de produtos
Procedure TFOrdemAssitenciaTecnica.LimpaCamposProd;
Begin
    EDCodFab.Clear;
    EDQuantidade.Text := '0,00';
    EDValUnit.Text := '0,00';
    EDDesc.Text := '0,00';
    EDTotal.Text := '0,00';
    LEstoque.Caption := '';
    LSaldoEstoque.Caption := '';
    LProduto.Caption := '';
    LLocal.Caption := '';
    LCst.Caption := '';
    EdEquipamentoProduto.Text := '';
    XCodEquipamentoProduto := -1;
    //Edmar - 24/03/2015 - Verifica qual é o tipo de pesquisa que está ativo
    if pPesqBarraInterno.Visible then
    	EDCodBarra.Text := ''
    else
    	EDCodFab.Text := '';
End;


procedure TFOrdemAssitenciaTecnica.EDCodFabKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	PListaProdutos.Visible := True;
   PListaProdutos.BringToFront;

   //Edmar - 15/08/2014 - Se foi informado uma letra, filtra a lista
   if Length(EDCodFab.Text) = 1 then
      EDCodFabEnter(sender);
      
   if (Key = VK_ESCAPE) OR (EDCodFab.Text = '') then
   begin
      EDCodFabEnter(sender);

      PListaProdutos.Visible := False;
      PListaProdutos.SendToBack;
      EDCodFab.Text := '';
      lPesquisa.Caption := 'Pesquisa:';

      xPesquisaDesc := False;
      xPesquisaCtrlInt := False;
      xPesquisaCodFabr := False;

      LimpaCamposProd;

      Exit;
   End;

   If Key = Vk_Return then
   begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
      DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodTmpEstoque;
      DMESTOQUE.WSimilar.Open;

      If Not DMESTOQUE.WSimilar.IsEmpty then
  	   begin
      		EscreveLabelsPROD;
      		PListaProdutos.Visible := False;
	        PListaProdutos.SendToBack;           
      		EDCodFab.Text := '';
      		EDQuantidade.Text := '1,00';
      end
      else
      		MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);

      EDCodFabEnter(sender);
      Exit;
   End;

    If Key = Vk_Down then
    begin
        DMESTOQUE.WSimilar.Next;
        XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

        Exit;
    End;

    if Key = Vk_UP then
    begin
        DMESTOQUE.WSimilar.Prior;
        XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

        Exit;
    end;
    
 	if DMESTOQUE.WSimilar.Locate('DESCRICAO', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) then
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

       DMESTOQUE.WSimilar.Locate('DESCRICAO', EDCodFab.Text, [loCaseInsensitive, loPartialKey]);

   	lPesquisa.Caption := 'Descrição:';
		XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

       Exit;
   end;

   if DMESTOQUE.WSimilar.Locate('CODFABRICANTE', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) then
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

       DMESTOQUE.WSimilar.Locate('CODFABRICANTE', EDCodFab.Text, [loCaseInsensitive, loPartialKey]);

       lPesquisa.Caption := 'Cod. Fabricante:';
       XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

       Exit;
   end;

   if DMESTOQUE.WSimilar.Locate('CONTRINT', EDCodFab.Text, [loCaseInsensitive, loPartialKey]) then
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

       DMESTOQUE.WSimilar.Locate('CONTRINT', EDCodFab.Text, [loCaseInsensitive, loPartialKey]);

       lPesquisa.Caption := 'Ctrl. Interno:';
       XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;

       Exit;
   end;
   
   XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
   lPesquisa.Caption := 'Fora de Pesquisa';

end;

procedure TFOrdemAssitenciaTecnica.BtnInsertProdEnter(Sender: TObject);
begin
  inherited;
    BtnInsertProd.Font.Color := clRed;
    BtnInsertProd.Font.Style := [fsBold];
end;

procedure TFOrdemAssitenciaTecnica.BtnInsertProdExit(Sender: TObject);
begin
  inherited;
    BtnInsertProd.Font.Color := clWindowText;
    BtnInsertProd.Font.Style := [];
end;

//Função Para calcular desconto da ordem
Function TFOrdemAssitenciaTecnica.EfetuaDesconto(OrigemDesconto: String; TipoDesconto: String): Boolean;
Begin
   //CALCULA DESCONTOS
   EdDescTOrdem.ValueNumeric := ((XVLRTOTAL_SEMDESCONTO - EdTotalOrd.ValueNumeric) * 100) / XVLRTOTAL_SEMDESCONTO;
End;

procedure TFOrdemAssitenciaTecnica.BtnInsertProdClick(Sender: TObject);
Var
    XEstReserv, xestfisico, xqnt: real;
    xcod_item: Integer;
Begin
    Inherited;
    //Valida se foi encontrado algum produto
    If LProduto.Caption = ''
        Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Selecione um Produto antes de Inserir.', '', 1, 1, False, 'a');
        EDCodFab.SetFocus;
        Exit;
    End;

    //Valida quanto a quantidade
    If EDQuantidade.ValueNumeric <= 0
        Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'O Produto não pode ser inserido a lista com quantidade inferior a 1 (um).', '', 1, 1, False, 'a');
        EDQuantidade.SetFocus;
        Exit;
    End;

    //Valida quanto ao valor unitario do produto
    If EDValUnit.ValueNumeric <= 0
        Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'O Produto não pode ser inserido a lista com o Valor Unitário igual ou inferior a 0 (zero).', '', 1, 1, False, 'a');
        EDValUnit.SetFocus;
        Exit;
    End;

    //Valida quanto ao valor total do produto
    If EDTotal.ValueNumeric <= 0
        Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o Valor Total igual ou inferior a 0 (zero).', '', 1, 1, False, 'a');
        EDTotal.SetFocus;
        Exit;
    End;
   //Valida quanto a CST
    If DMESTOQUE.TCST.FieldByName('VENDA').AsString <> '1'
        Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'O produto selecionado possui um C.S.T que não esta marcado para venda, verifique o seu produto (código de situação tributária).', '', 1, 1, False, 'a');
        Exit;
    End;

    // limpando a variavel utilizada como paramtro para verificar se o usuario tem permissao para vender itens abaixo da margem de segurança
    FMenu.TIPOREL := '';

    //Valida quanto ao estoque físico (verifca se ha estoque suficiente
    If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString = '1'
        Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
        If DMMacs.TLoja.FieldByName('VENDESTNEG').AsString = '0'
            Then Begin
            If LEstoque.Caption <> ''
            Then Begin
                If EDQuantidade.ValueNumeric > StrToFloat(TiraPonto(LEstoque.caption))
                    Then Begin //o estoque que esta sendo negociado é maior que o estoque físico e segundo configuraçãoes isto não é permitido
                    Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação', '', 1, 1, False, 'a');
                    EDQuantidade.SetFocus;
                    FiltraSlave;
                   //Chama função para calcular descontos
                    EfetuaDesconto('GERAL', 'PERCENTO');
                    Exit;
                End;
            End
            Else Begin
                Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação', '', 1, 1, False, 'a');
                EDQuantidade.SetFocus;
                FiltraSlave;
               //Chama função para calcular descontos
                EfetuaDesconto('GERAL', 'PERCENTO');
                Exit;
            End;
        End;
    End;
    //Tenta gravar as informações
    Try
       //Inserir Produto a lista do pedido
        DMSERV.TPOrd.Close;
        DMSERV.TPOrd.SQL.Clear;
        DMSERV.TPOrd.SQL.Add('insert into itprodord');
        DMSERV.TPOrd.SQL.Add('(COD_ESTOQUE, COD_ORDEM, QTD, VLRUNIT, DESCONTO, TOTAL,');
        DMSERV.TPOrd.SQL.Add('DATA, COD_FUNCIONARIO, COD_CST, VALCUSTO, COEFDIV, VALCOMP, LUCMOE, LUCPER, VALREP,');
        DMSERV.TPOrd.SQL.Add('NUMREQ, QTDRET, COMISSAO, VLRVENDBD, LUCREL, OPERACAO, ALIQICMS, BASEICMS,');
        DMSERV.TPOrd.SQL.Add('VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI, REDUCBASEICMS, VLRICMSSUBS, COD_TABELAFAIXAPRECO)');
        DMSERV.TPOrd.SQL.Add('values');
        DMSERV.TPOrd.SQL.Add('(:COD_ESTOQUE, :COD_ORDEM, :QTD, :VLRUNIT, :DESCONTO,');
        DMSERV.TPOrd.SQL.Add(':TOTAL, :DATA, :COD_FUNCIONARIO, :COD_CST, :VALCUSTO, :COEFDIV, :VALCOMP, :LUCMOE,');
        DMSERV.TPOrd.SQL.Add(':LUCPER, :VALREP, :NUMREQ, :QTDRET, :COMISSAO, :VLRVENDBD, :LUCREL,');
        DMSERV.TPOrd.SQL.Add(':OPERACAO, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRIPI, :ALIQIPI,');
        DMSERV.TPOrd.SQL.Add(':REDUCBASEICMS, :VLRICMSSUBS, :COD_TABELAFAIXAPRECO)');
        CalcLuc(EDTotal.ValueNumeric, EDDesc.ValueNumeric, EDQuantidade.ValueNumeric);
        DMSERV.TPOrd.ParamByName('ALIQICMS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency;
        DMSERV.TPOrd.ParamByName('ALIQIPI').AsCurrency := 0;
        DMSERV.TPOrd.ParamByName('BASEICMS').AsCurrency := EDTotal.ValueNumeric;
        DMSERV.TPOrd.ParamByName('BASEICMSSUBS').AsCurrency := 0;
        DMSERV.TPOrd.ParamByName('COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
        DMSERV.TPOrd.ParamByName('COD_FUNCIONARIO').AsInteger := XCOD_VENDEDOR;
        DMSERV.TPOrd.ParamByName('COD_CST').AsInteger := DMEstoque.TCST.FieldByName('COD_CST').AsInteger;
        DMSERV.TPOrd.ParamByName('COD_ORDEM').AsInteger := XCodOrdemOS;
        DMSERV.TPOrd.ParamByName('COD_TABELAFAIXAPRECO').AsInteger := XCodEquipamentoProduto;
        DMSERV.TPOrd.ParamByName('COEFDIV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
        If DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency <> 0
            Then Begin
            DMSERV.TPOrd.ParamByName('LUCMOE').AsCurrency := (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency);
            If (EDTotal.ValueNumeric <> 0)
                Then Begin
                DMSERV.TPOrd.ParamByName('LUCMOE').AsCurrency := EDTotal.ValueNumeric - (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency);
                DMSERV.TPOrd.ParamByName('LUCPER').AsCurrency := ((EDTotal.ValueNumeric - (DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency / DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency)) * 100) / EDTotal.ValueNumeric;
            End;
        End
        Else Begin
            DMSERV.TPOrd.ParamByName('LUCMOE').AsCurrency := 0;
        End;
        DMSERV.TPOrd.ParamByName('DATA').AsDateTime := Date();
        DMSERV.TPOrd.ParamByName('DESCONTO').AsCurrency := EDDesc.ValueNumeric;
        DMSERV.TPOrd.ParamByName('OPERACAO').AsString := 'VND';
        DMSERV.TPOrd.ParamByName('QTD').AsCurrency := EDQuantidade.ValueNumeric;
        DMSERV.TPOrd.ParamByName('QTDRET').AsCurrency := EDQuantidade.ValueNumeric;
        DMSERV.TPOrd.ParamByName('REDUCBASEICMS').AsCurrency := 0;
        DMSERV.TPOrd.ParamByName('TOTAL').AsCurrency := EDTotal.ValueNumeric;
        DMSERV.TPOrd.ParamByName('VALCOMP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency * EDQuantidade.ValueNumeric;
        DMSERV.TPOrd.ParamByName('VALCUSTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
        DMSERV.TPOrd.ParamByName('VALREP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
        DMSERV.TPOrd.ParamByName('VLRICMS').AsCurrency := (EDTotal.ValueNumeric * DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency) / 100;
        DMSERV.TPOrd.ParamByName('VLRICMSSUBS').AsCurrency := 0;
        DMSERV.TPOrd.ParamByName('VLRIPI').AsCurrency := 0;
        DMSERV.TPOrd.ParamByName('VLRUNIT').AsCurrency := EDValUnit.ValueNumeric;
        Try
			 DMSERV.TPOrd.Sql.Text;        
            DMSERV.TPOrd.ExecSQL;
            DMServ.IBT.CommitRetaining;
            Try
         		 //Atualiza Estoque
                If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE',  IntToStr(XCOD_ESTOQUE), '')
                Then Begin
                	DMEstoque.TEstoque.edit;
                	DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency := DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency - EDQuantidade.ValueNumeric;
                	DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString := '1';
                	DMESTOQUE.TEstoque.Post;
                	DMESTOQUE.TransacEstoque.CommitRetaining;
                End
                Else Begin
					MessageDlg('O estoque não foi  atualizado. Verifique!', mtWarning, [mbOK], 0);
                End;
            Except
                DMESTOQUE.TransacEstoque.RollbackRetaining;
                MessageDlg('O ESTOQUE NÃO FOI ATUALIZADO', mtWarning, [mbOK], 0);
            End;
        Except
            DMServ.IBT.RollbackRetaining;
            MessageDlg('O ITEM NÃO FOI INSERIDO A LISTA', mtWarning, [mbOK], 0);
        End;
    Except
        MessageDlg('OCORRERAM PROBLEMAS AO INSERIR O ITEM. VERIFIQUE!', mtWarning, [mbOK], 0);
    End;
 	 //limpa labels de seleção
    LimpaCamposProd;
    //Filtra slaves e calcula total
    FiltraSlave;
    //Chama função para calcular descontos
    EfetuaDesconto('GERAL', 'PERCENTO');

    //Edmar - 24/03/2015 - Verifica qual é o tipo de pesquisa que está ativo
    if pPesqBarraInterno.Visible then
    	EDCodBarra.SetFocus
    else
    	EDCodFab.SetFocus;
end;

procedure TFOrdemAssitenciaTecnica.EDQuantidadeExit(Sender: TObject);
begin
  inherited;
    If (EDQuantidade.ValueNumeric <> 0) And (EDValUnit.ValueNumeric <> 0)
        Then Begin
        CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
        EDTotal.ValueNumeric := AlxCalculo;
    End;
end;

procedure TFOrdemAssitenciaTecnica.EDDescExit(Sender: TObject);
begin
  inherited;
    If (EDQuantidade.ValueNumeric <> 0) And (EDValUnit.ValueNumeric <> 0)
        Then Begin
        CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
        EDTotal.ValueNumeric := AlxCalculo;
    End;
end;

procedure TFOrdemAssitenciaTecnica.EDValUnitExit(Sender: TObject);
begin
  inherited;
    If (EDQuantidade.ValueNumeric <> 0) And (EDValUnit.ValueNumeric <> 0)
        Then Begin
        CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
        EDTotal.ValueNumeric := AlxCalculo;
    End;
end;

procedure TFOrdemAssitenciaTecnica.EDTotalExit(Sender: TObject);
begin
  inherited;
    CalcPercent(0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric) - EDTotal.ValueNumeric, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
    EDDesc.ValueNumeric := AlxPercento;
end;

procedure TFOrdemAssitenciaTecnica.ColorMaskEdit1Enter(Sender: TObject);
begin
  inherited;
	DMESTOQUE.WSimilar.Close;
   DMESTOQUE.WSimilar.SQL.Clear;
   DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
   DMESTOQUE.WSimilar.Open;
end;

procedure TFOrdemAssitenciaTecnica.ColorMaskEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
    str: String;
Begin
   Inherited;
    If DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '0'
    Then Begin
    	// ALEX - 21/05/2009: pressionar Ctrl+P chama painel de busca de produtos pelo nome
       If (shift = [ssCtrl]) And (key = 78)
       Then Begin
       	If XTipoProc = 0
           Then Begin
                XTipoProc := 1;
                PListaProdutos.Visible := true;
                PListaProdutos.BringToFront;
           End
           Else Begin
           	XTipoProc := 0;
               PListaProdutos.Visible := False;
           End;
       End;
       If XTipoProc = 1
       Then Begin
            If Key = Vk_Down
                Then Begin
                DMESTOQUE.WSimilar.Next;
            End;
            If Key = Vk_UP
                Then Begin
                DMESTOQUE.WSimilar.Prior;
            End;
       End;

       If Key = VK_Return
       Then Begin
            If XTipoProc = 0
            Then Begin
                If XPESPROD = 1 Then
                    str := 'CODBARRA'
                Else
                    If XPESPROD = 2 Then
                        str := 'CODFABRICANTE'
                    Else
                        If XPESPROD = 3 Then
                            str := 'DESCRICAO'
                        Else
                            str := 'CONTRINT';
            	 //Paulo 12/07/2011: Se não existe config na loja
            	 If (DMMacs.Tloja.FieldByName('FOCUITEMOS').AsString = 'NC') Then
                Begin
                    If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', UpperCase(EDCodFab.Text), '') = True
                        Then Begin
                        EscreveLabelsPROD;
                        EDCodFab.Text := '';
                        EDQuantidade.Text := '1,00';
                    End
                    Else Begin
                        If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', UpperCase(EDCodFab.Text), '') = True
                            Then Begin
                            EscreveLabelsPROD;
                            EDCodFab.Text := '';
                            EDQuantidade.Text := '1,00';
                      // EDQuantidade.SetFocus;
                        End
                        Else Begin
                            If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', UpperCase(EDCodFab.Text), '') = True
                                Then Begin
                                EscreveLabelsPROD;
                                EDCodFab.Text := '';
                                EDQuantidade.Text := '1,00';

                            End
                            Else Begin
                                If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'DESCRICAO', UpperCase(EDCodFab.Text), '') = True
                                    Then Begin
                                    EscreveLabelsPROD;
                                    EDCodFab.Text := '';
                                    EDQuantidade.Text := '1,00';
                              //   EDQuantidade.SetFocus;
                                End
                                Else Begin
                                    LimpaCamposProd;
                                    LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
                                End;
                            End;
                        End;
                    End;
                End;
            End
            Else Begin
                str := EDCodFab.Text;
                If str[1] = '.'
                    Then Begin
                    EDCodFab.Text := TiraCaracterEmPosicao(str, 1);
                    FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA=' + FMenu.LCODLOJA.Caption + ') AND (upper(CODFABRICANTE) like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
                End
                Else Begin
                    FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_LOJA', '', ' (COD_LOJA=' + FMenu.LCODLOJA.Caption + ') AND (upper(DESCRICAO) like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
                End;
            End;
        End;
    End;
    If Key=Vk_F2
    Then Begin
          DMESTOQUE.WSimilar.Close;
          DMESTOQUE.WSimilar.SQL.Clear;
          DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR where (vwsimilar.descricao like upper(' + #39 + EDCodFab.Text + '%' + #39 + '))  AND (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
          DMESTOQUE.WSimilar.Open;
		   XCodTmpEstoque := DBGrid1.Columns[0].Field.Text;
          //EscreveLabelsPROD;
          //EDCodFab.Text := '';
          EDQuantidade.Text := '1,00';
    End;
end;

procedure TFOrdemAssitenciaTecnica.LCBEquipamentoProdutoDropDown(
  Sender: TObject);
Var Value : Variant;
begin
end;

procedure TFOrdemAssitenciaTecnica.BtnDeleteProdClick(Sender: TObject);
begin
  inherited;
    If DMESTOQUE.TSlave.RecordCount <> 0
    Then Begin //caso a tabela esteja vasia não pode apagar
        DMServ.TAlx1.Close;
        DMServ.TAlx1.SQL.Clear;
        DMServ.TAlx1.SQL.Add('select * from estoque');
        DMServ.TAlx1.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
        DMServ.TAlx1.SQL.Add('where estoque.cod_estoque = :codigo');
        DMServ.TAlx1.ParamByName('codigo').AsInteger := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
        DMServ.TAlx1.Open;

     	 // verifica o tamanho do produto para colocar abreviação se necessario
        If Length(DMServ.TAlx1.FieldByname('descricao').AsString) > 20
        Then Begin
        	 // se clicar em não, o produto naum sera apagado
            If Mensagem('   A T E N Ç Ã O   ', 'Deseja realmente apagar o produto ' + Copy(DMServ.TAlx1.FieldByname('descricao').AsString, 0, 20) + '. ?', '', 2, 3, false, 'I') = 3 Then
                Exit;
        End
        Else Begin
        	 // se clicar em não, o produto naum sera apagado
            If Mensagem('   A T E N Ç Ã O   ', 'Deseja realmente apagar o produto ' + DMServ.TAlx1.FieldByname('descricao').AsString + ' ?', '', 2, 3, false, 'I') = 3 Then
                Exit;
        End;

        //NESSE TRECHO VAMOS REMOVER O ITEM E RETORNAR ESTOQUE
        FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
        FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
        FiltraTabela(DMSERV.TPOrd, 'ITPRODORD', 'COD_ITPRODORD', DMESTOQUE.TSlave.FieldByName('COD_ITPRODORD').AsString, '');
        FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMESTOQUE.TSlave.FieldByName('COD_EQUIPAMENTO').AsString, '');

     	 //VOLTA VALORES AS LABELS
        EscreveLabelsPROD;
        EDQuantidade.ValueNumeric := DMESTOQUE.TSlave.FieldByName('QTD').Value;
        EDValUnit.ValueNumeric := DMESTOQUE.TSlave.FieldByName('VLRUNIT').Value;
        EDDesc.ValueNumeric := DMESTOQUE.TSlave.FieldByName('DESCONTO').Value;
        EDTotal.ValueNumeric := DMESTOQUE.TSlave.FieldByName('TOTAL').Value;
        XCodEquipamentoProduto := DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
        EdEquipamentoProduto.Text := DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;

        Try
            //Atualiza Estoque
            DMEstoque.TEstoque.edit;
            DMEstoque.TEstoque.FieldByName('ESTFISICO').Value := DMEstoque.TEstoque.FieldByName('ESTFISICO').Value + DMServ.TPOrd.FieldByName('QTD').Value;
            DMEstoque.TEstoque.FieldByName('ESTRESERV').Value := DMEstoque.TEstoque.FieldByName('ESTRESERV').Value - DMServ.TPOrd.FieldByName('QTD').Value;
            DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString := '1';
            DMEstoque.TEstoque.Post;

            //APAGA ITEM
            DMSERV.TPOrd.Delete;
            DMServ.IBT.CommitRetaining;
            DMESTOQUE.TransacEstoque.CommitRetaining;
        Except
        	MessageDlg('Verifique se o estoque do item foi atualizado corretamente.', mtWarning, [mbOK], 0);
           DMServ.IBT.RollbackRetaining;
           DMESTOQUE.TransacEstoque.RollbackRetaining;
        End;

      	 //Filtra registros escrsavos
        FiltraSlave;
     	 //Chama função para calcular descontos
        EfetuaDesconto('GERAL', 'PERCENTO');
     	 //Panel2.OnEnter(Sender);
        EDQuantidade.SetFocus;
    End;
    DMESTOQUE.WSimilar.Close;
    DMESTOQUE.WSimilar.SQL.Clear;
    DMESTOQUE.WSimilar.SQL.Add(' SELECT * FROM VWSIMILAR ');
    DMESTOQUE.WSimilar.Open;
end;

procedure TFOrdemAssitenciaTecnica.btnConsultarProdutosClick(
  Sender: TObject);
begin
  inherited;
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' SELECT  subproduto.codcomposto, subproduto.codbarra, subproduto.descricao,');
   DMESTOQUE.Alx.SQL.Add('         subproduto.codprodfabr, subproduto.fabricante, subproduto.marca,');
   DMESTOQUE.Alx.SQL.Add('         subproduto.localestante, subproduto.cod_interno, subproduto.contrint,');
   DMESTOQUE.Alx.SQL.Add('         subproduto.classificacao, estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,');
   DMESTOQUE.Alx.SQL.Add('         estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav,');
   DMESTOQUE.Alx.SQL.Add('         estoque.vendvarv, estoque.VLRBONIFIC');
   DMESTOQUE.Alx.SQL.Add('         from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.Alx.SQL.Add('         WHERE (ESTOQUE.COD_LOJA=:CODLOJA) ');
   DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   DMESTOQUE.Alx.Open;
   AbrirForm(TFConsProduto, FConsProduto, 1);
end;

procedure TFOrdemAssitenciaTecnica.LCBEquipamentoServicosDropDown(
  Sender: TObject);
  var Value:Variant;
begin
  inherited;

end;

procedure TFOrdemAssitenciaTecnica.LCBEquipamentoServicosKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
end;

//pesquisa codigo equipe
Procedure TFOrdemAssitenciaTecnica.PesquisaCodigoEquipe(codigo: String);
Begin
   // letras maiusculas
    codigo := Trim(UpperCase(codigo));

    If codigo <> ''
        Then Begin
       // seleciona equipe que tiver o mesmo codigo
        DMServ.Alx.Close;
        DMServ.Alx.SQL.Clear;
        DMServ.Alx.SQL.Add(' select * from equipe ');
        DMServ.Alx.SQL.Add(' where equipe.cod_equipe = :codigo ');
        DMServ.Alx.ParamByName('codigo').AsString := codigo;
        DMServ.Alx.Open;

        If Not DMServ.Alx.IsEmpty
            Then Begin
            FrmEquipe.EdDescricao.Text := DMServ.Alx.FieldByname('descricao').AsString;
            BtnInserir.SetFocus;
        End
        Else Begin
            FrmEquipe.EdDescricao.Text := '';
            FrmEquipe.EDCodigo.SelectAll;
            //FrmEquipe.EDCodigo.SetFocus;
        End;
        FrmCliente.Repaint;
        FrmEquipe.Repaint;
    End;
End;

procedure TFOrdemAssitenciaTecnica.FrmEquipeEDCodigoExit(Sender: TObject);
begin
  inherited;
    If FrmEquipe.EDCodigo.Text <> ''
        Then Begin
        PesquisaCodigoEquipe(FrmEquipe.EDCodigo.Text);
    End
    Else Begin
        FrmEquipe.EdDescricao.Text := '';
    End;
end;

procedure TFOrdemAssitenciaTecnica.FrmEquipeEDCodigoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
    FrmEquipe.EDCodigoKeyPress(Sender, Key);

    If Not (key In ['0'..'9', #8, #13]) Then
        Key := #0;

    If Key = #13
        Then Begin
        If FrmEquipe.EDCodigo.Text <> ''
            Then Begin
            PesquisaCodigoEquipe(FrmEquipe.EDCodigo.Text);
        End;
    End;
    FrmEquipe.EDCodigoKeyPress(Sender, Key);
end;

procedure TFOrdemAssitenciaTecnica.DbServicoClassificacaoExit(
  Sender: TObject);
begin
  inherited;
   EscreveLabelsServ;
end;

//Função para retornar dados de filtro Ordem de Serviços
Procedure TFOrdemAssitenciaTecnica.FiltraOrdem(XSql: String);
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

           {
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
           end;}
       end;
       {
       If CbFiltroPagamentos.Text<>'TODAS'
       Then Begin
       	XFiltro:=XFiltro+' AND (VWORDEM.FORMAPAG = '+#39+CbFiltroPagamentos.Text+#39+') ';
       End;   }

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
       DMServ.WOrdemDesp.SQL.Add(' SELECT VWORDEM.COD_CLIENTE, EQUIPAMENTO.DESCRICAO AS OBRA, VWORDEM.COD_VENDEDOR, FORMPAG.DESCRICAO AS FORMPAG, VWORDEM.STATUS, VWORDEM.COD_ORDEM, ');
       DMServ.WOrdemDesp.SQL.Add(' VWORDEM.NUMERO, VWORDEM.CLIENTE, VWORDEM.DTABERT, VWORDEM.DTFECH, VWORDEM.TOTAL, ORDEM.LOCALAT, ORDEM.TIPOPAG ');
       DMServ.WOrdemDesp.SQL.Add(' FROM VWORDEM ');
       DMServ.WOrdemDesp.SQL.Add(' LEFT JOIN ORDEM ON VWORDEM.COD_ORDEM = ORDEM.COD_ORDEM ');
       DMServ.WOrdemDesp.SQL.Add(' LEFT JOIN VWCLIENTE ON VWORDEM.COD_CLIENTE = VWCLIENTE.COD_CLIENTE ');
       DMServ.WOrdemDesp.SQL.Add(' LEFT JOIN CLIENTE ON VWORDEM.COD_VENDEDOR = CLIENTE.COD_CLIENTE ');
       DMServ.WOrdemDesp.SQL.Add(' LEFT JOIN PESSOA ON CLIENTE.COD_PESSOA = PESSOA.COD_PESSOA ');
       DMServ.WOrdemDesp.SQL.Add(' LEFT JOIN FORMPAG ON ORDEM.COD_FORMPAG = FORMPAG.COD_FORMPAG ');
       DMServ.WOrdemDesp.SQL.Add(' LEFT JOIN EQUIPAMENTO ON ORDEM.COD_EQUIPAMENTO = EQUIPAMENTO.COD_EQUIPAMENTO ');
       DMServ.WOrdemDesp.SQL.Add(XFiltro + ' ' + XAux + ' ' + XSql + ' ' + XOrdem);
       //DMServ.WOrdemDesp.SQL.Add(XFiltro + ' ' + XSql + ' ' + XOrdem);       
       DMServ.WOrdemDesp.SQL.text;
       DMServ.WOrdemDesp.Open;

		DBGridConsulta.DataSource:=DMServ.DWOrdemDesp;
   Except
   End;
End;

procedure TFOrdemAssitenciaTecnica.CBFILTROClick(Sender: TObject);
begin
  inherited;
  FiltraOrdem('');
end;

procedure TFOrdemAssitenciaTecnica.EDNumEnter(Sender: TObject);
begin
  inherited;
	If EDNum.Text = 'Número' then
   	EDNum.Text := ''
   Else
   	EDNum.SelectAll;
   EDNum.Font.Color := clBlack;
end;

procedure TFOrdemAssitenciaTecnica.EDNumExit(Sender: TObject);
begin
  inherited;
   if Trim(EdNum.Text) = '' then
        EDNum.Text := 'Número';
   EDNum.Font.Color := clGray;
end;

procedure TFOrdemAssitenciaTecnica.EDNumKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TFOrdemAssitenciaTecnica.EDCliente1Enter(Sender: TObject);
begin
  inherited;
     if EDCliente1.Text = 'CLIENTE' then
         EDCliente1.Text := ''
     Else
     	  EDCliente1.SelectAll;
     EDCliente1.Font.Color := clBlack;
end;

procedure TFOrdemAssitenciaTecnica.EDCliente1Exit(Sender: TObject);
begin
  inherited;
   If Trim(EDCliente1.Text) = '' then
        EDCliente1.Text := 'CLIENTE';
   EDCliente1.Font.Color := clGray;
end;

procedure TFOrdemAssitenciaTecnica.EDCliente1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
		If Key=VK_RETURN
       Then Begin
           If (EDCliente1.Text<>'') and (EDCliente1.Text<>'CLIENTE')
           Then Begin
               FiltraOrdem(' (UPPER (VWORDEM.CLIENTE)) LIKE (UPPER ('+#39+TRIM(EDCliente1.Text)+'%'+#39+'))');
           End;
       End;
       If Key=VK_ESCAPE
       Then Begin
           FiltraOrdem('');
       End;
end;

procedure TFOrdemAssitenciaTecnica.BtnProcProdClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFProduto, FProduto, 1)='Selected'
  Then Begin
    If true Then
    Begin
      XCOD_ESTOQUE:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
      EscreveLabelsPROD;
    End;
  End;
end;

procedure TFOrdemAssitenciaTecnica.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
 //Caso este codigo seja alterado, o mesmo codigo em edcodfabkeyup no bloco de tratamento de para ENTER (RETURN) tbm deve ser alterado
   //Refiltra a tabela vwsimilar de acordo com registro escolhido
    DMESTOQUE.WSimilar.Close;
    DMESTOQUE.WSimilar.SQL.Clear;
    DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where vwsimilar.cod_estoque=:Codigo');
    DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodTmpEstoque;
    DMESTOQUE.WSimilar.Open;
    If Not DMESTOQUE.WSimilar.IsEmpty
        Then Begin
        EscreveLabelsPROD;
        PListaProdutos.Visible := False;
        EDCodFab.Text := '';
        EDQuantidade.Text := '1,00';
        EDQuantidade.SetFocus;
    End
    Else Begin
        MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);
    End;

    EDCodFabEnter(sender);
end;

procedure TFOrdemAssitenciaTecnica.DBGrid1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key = Vk_Return then
		DBGrid1DblClick(sender);
end;

procedure TFOrdemAssitenciaTecnica.BtnInserirClick(Sender: TObject);
Var xcod_despesa: Integer;
begin
  inherited;
    Inherited;
    // É necesario informar a descricao de uma equipe
    if XCOD_SERVICOCLASSIFICACAO = -1 then
    begin
        Mensagem('   A T E N Ç Ã O   ', 'É necessário selecionar o serviço.', '', 1, 1, false, 'I');
        EdClassificacao.SetFocus;
        Exit;
    end;

    FiltraTabela(DMServ.TSubserv, 'SUBSERVICO', 'COD_SUBSERVICO', IntToStr(XCOD_SERVICOCLASSIFICACAO), '');
    if (DMServ.TSubserv.FieldByName('RECORRENCIA').AsString = '1') AND (edQtdRecorrencia.ValueNumeric = 0) then
    begin
       If MessageDlg(' Este serviço pede que seja informado a quantidade de meses de Recorrência. Deseja continuar sem informar a RECORRÊNCIA? ', mtConfirmation, [mbYes, mbNo], 0) = mrno
       Then Begin
           edQtdRecorrencia.SetFocus;
           Exit;
       End;
    end;
    
    // Se o servico nao possuir valor eh exibido uma mensagem para o
    //usuario se ele tem certeza que deseja inserir um servico sem valor
    If EValorServ.ValueNumeric = 0 Then
        Mensagem('   A T E N Ç Ã O   ', 'O valor unitário do serviço é igual a ZERO! ', '', 1, 1, false, 'I');

    // eh necessario selecionar uma equipe p serviço
    If (FrmEquipe.EDCodigo.Text = '') OR (FrmEquipe.EdDescricao.Text = '')
        Then Begin
        Mensagem('   A T E N Ç Ã O   ', 'Selecione uma equipe', '', 1, 1, false, 'I');
        FrmEquipe.EDCodigo.SetFocus;
        Exit;
    End;

    If EQtdServ.ValueNumeric = 0
        Then Begin
        Mensagem('   A T E N Ç Ã O   ', 'A quantidade do serviços é igual a ZERO! ', '', 1, 1, false, 'I');
       //ETotalServItem.SetFocus;
       //Exit;
    End;

    //Paulo 30/06/2011: Não deixa inserir um serviço com o valor zerado
    If ETotalServItem.ValueNumeric = 0
        Then Begin
        Mensagem('   A T E N Ç Ã O   ', 'O valor total do serviço é igual a ZERO! ', '', 1, 1, false, 'I');
    End;
    If ( (edQtdRecorrencia.ValueNumeric <> 0) And (EdDtAbertura.Text = '  /  /    ') )
        Then Begin
        Mensagem('   A T E N Ç Ã O   ', 'A recorrência não pode ser gravada sem data de abertura! ', '', 1, 1, false, 'I');
        exit;
    End;

    FiltraTabela(DMESTOQUE.TDesp, 'DESPADIC', 'COD_GERADOR', '', '(COD_GERADOR = ' + IntToStr(XCodOrdemOS) + ') AND (GERADOR = ' + #39 + 'ORDEM' + #39 + ')');

    Try
        DMServ.IBT.CommitRetaining;
        DMServ.Alx.Close;
        DMServ.Alx.SQL.Clear;
        DMServ.Alx.SQL.Add(' insert into despadic(COD_GERADOR, GERADOR, DESPESA, QTD, VLRREAL, VLRFINAL, VLRTOTFIN, DESCONTO, MARCA, ');
        DMServ.Alx.SQL.Add('UNIDADE, COD_EQUIPE, COD_FUNCIONARIO, CST, COMISSAO, CLASSIFICACAO, COD_SERVICO, COD_EQUIP, INTRECORRENCIA, RECATIVA, DATAREC ) ');
        DMServ.Alx.SQL.Add('values(:COD_GERADOR, :GERADOR, :DESPESA, :QTD, :VLRREAL, :VLRFINAL, :VLRTOTFIN, :DESCONTO, :MARCA, ');
        DMServ.Alx.SQL.Add(':UNIDADE, :COD_EQUIPE, :COD_FUNCIONARIO, :CST, :COMISSAO, :CLASSIFICACAO, :COD_SERVICO, :COD_EQUIP, :INTRECORRENCIA, :RECATIVA,:DATAREC) ');
        DMServ.Alx.ParamByName('COD_GERADOR').AsInteger := XCodOrdemOS;
        DMServ.Alx.ParamByName('GERADOR').AsString := 'ORDEM';
        DMServ.Alx.ParamByName('DESPESA').AsString := EDesricaoServico.Text;
        DMServ.Alx.ParamByName('QTD').AsCurrency := EQtdServ.ValueNumeric;
        DMServ.Alx.ParamByName('VLRFINAL').AsCurrency := EValorServ.ValueNumeric;
        DMServ.Alx.ParamByName('VLRTOTFIN').AsCurrency := ETotalServItem.ValueNumeric;
        DMServ.Alx.ParamByName('DESCONTO').AsCurrency := EDescServ.ValueNumeric;
        DMServ.Alx.ParamByName('COD_EQUIPE').AsString := FrmEquipe.EDCodigo.Text;
        DMServ.Alx.ParamByName('COD_FUNCIONARIO').AsInteger := XCOD_VENDEDOR;
        DMServ.Alx.ParamByName('COD_SERVICO').AsInteger := XCOD_SERVICOCLASSIFICACAO;
        DMServ.Alx.ParamByName('CST').AsString := '041';
        DMServ.Alx.ParamByName('COMISSAO').AsFloat := 0;//StrToFloat(lbComissaoServ.Caption);
        DMServ.Alx.ParamByName('COD_EQUIP').AsInteger := XCodEquipamentoServico;
        //Angelo - 11/09/2015 - Recorrência na prestação do serviço
        //TODO   - Verificar se já existe recorrência para o mesmo serviço(mesmo serviço no msmo equipamento)
        if (edQtdRecorrencia.ValueInteger > 0) Then
        begin
          DMServ.Alx.ParamByName('INTRECORRENCIA').AsInteger := edQtdRecorrencia.ValueInteger;
          DMServ.Alx.ParamByName('RECATIVA').AsString := '1';
          DMServ.Alx.ParamByName('DATAREC').AsDateTime := IncMonth(StrToDate(EdDtAbertura.Text),edQtdRecorrencia.ValueInteger);
        end else
        begin
          DMServ.Alx.ParamByName('INTRECORRENCIA').AsInteger := 0;
          DMServ.Alx.ParamByName('RECATIVA').AsString := '0';
          DMServ.Alx.ParamByName('DATAREC').AsDateTime := Date;
        end;        
       //Paulo 31/10/2011: Para identificar se o serviço é de terceiros ou não
        If (cbTerceiros.Checked = true) Then
            DMServ.Alx.ParamByName('UNIDADE').AsString := '1'
        Else
            DMServ.Alx.ParamByName('UNIDADE').AsString := '0';
        DMServ.Alx.ParamByName('VLRREAL').AsCurrency := edCustoTerceiros.ValueNumeric;

        DMServ.Alx.ExecSQL;
        DMServ.IBT.CommitRetaining;

    Except
        On E: Exception Do
        Begin
            If E.Message = 'attempt to store duplicate value (visible to active transactions) in unique index "DESPADIC_IDX1"'
                Then Begin
                Try
                    DMServ.IBT.RollbackRetaining;
                 	 //Jônatas 12/06/2013
                 	 //pega o valor do gerador e armazena em XCOD
                    DMMACS.TALX.Close;
                    DMMACS.TALX.SQL.Clear;
                    DMMACS.TALX.SQL.Add('  select gen_id(GEN_DESPADIC_ID, 0) as codigo from rdb$database ');
                    DMMACS.TALX.Open;
                 	 //Incrementa o gerador para fazer a Chave primária ser válida na inserção
                    xcod_despesa := DMMACS.TALX.FieldByName('codigo').AsInteger + 100;
                    DMMACS.TALX.Close;
                    DMMACS.TALX.SQL.Clear;
                    DMMACS.TALX.SQL.Add('SET GENERATOR GEN_DESPADIC_ID TO ' + IntToStr(xcod_despesa));
                    DMMACS.TALX.ExecSQL;
                    DMMACS.Transaction.CommitRetaining;
                    DMServ.IBT.CommitRetaining;
                    ShowMessage('Um erro foi encontrado e corrigido. Tente novamente.');
                 	 //Jônatas 26/09/2013 - Não limpar os campos da tela, mas fazer as refiltragens pra garantir que ão foram feitas alterações erradas
                    FiltraSlave;
                 	 //Chama função para calcular descontos
                    EfetuaDesconto('GERAL', 'PERCENTO');
                    EDesricaoServico.SetFocus;
                    Exit;

                Except
                    ShowMessage('Falha ao gerar código do serviço.' + #13 + ' Foi encontrado um erro ao inserir o serviço. Entre em contato com o suporte e informe oerro ocorrido');
                    DMMACS.Transaction.RollbackRetaining;
                    DMServ.IBT.RollbackRetaining;
                End;
            End
            Else Begin
                MessageDlg('O ITEM NÃO PODE SER INSERIDO. VERIFIQUE!' + #13 + 'Erro: 1348', mtWarning, [mbOK], 0);
                DMServ.IBT.RollbackRetaining;
                FiltraSlave;
               //Chama função para calcular descontos
                EfetuaDesconto('GERAL', 'PERCENTO');
                Exit;
            End;
        End;
    End;
    DMESTOQUE.TransacEstoque.CommitRetaining;
    DMServ.IBT.CommitRetaining;

    FiltraSlave;
    //Chama função para calcular descontos
    EfetuaDesconto('GERAL', 'PERCENTO');
    LimpaCamposServ;
//    EfetuaCalculoISS;
  //  RetemIss;
    XCOD_SERVICOCLASSIFICACAO := -1;
    EDesricaoServico.SetFocus;
end;

procedure TFOrdemAssitenciaTecnica.FrmEquipeBTNOPENClick(Sender: TObject);
begin
  inherited;
    FrmEquipe.BTNOPENClick(Sender);
    If AbrirForm(TFCadEquipe, FCadEquipe, 1) = 'Selected'
        Then Begin
        FrmEquipe.EDCodigo.Text := DMPESSOA.TALX1.fieldbyname('Cod_Equipe').AsString;
        FrmEquipe.EdDescricao.Hint := DMPESSOA.TALX1.fieldbyname('descricao').AsString;
        FrmEquipe.EdDescricao.Text := DMPESSOA.TALX1.fieldbyname('descricao').AsString;
        BtnInserir.SetFocus;
       // RetornaComissao(DMPESSOA.TALX1.fieldbyname('cod_responsavel').AsInteger);
    End
    Else Begin
        FrmEquipe.EDCodigo.Text := '';
        FrmEquipe.EdDescricao.Hint := '';
        FrmEquipe.EdDescricao.Text := '';
    End;
end;

procedure TFOrdemAssitenciaTecnica.BBExcluirClick(Sender: TObject);
begin
  inherited;
   if DMServ.TOrd.FieldByName('EXPORTADO').AsString <> '#' then
   begin
       {
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.sql.Add('select * from despadic');
       MDO.QConsulta.sql.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
       MDO.QConsulta.sql.Add('where despadic.cod_despadic= :cod');
       MDO.QConsulta.ParamByName('cod').AsString := DMESTOQUE.Alx3.fieldbyname('COD_DESPADIC').AsString;
       MDO.QConsulta.Open;
       }
       FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', DMESTOQUE.Alx3.FieldByName('COD_EQUIPE').AsString, '');
       {
       if Length(MDO.QConsulta.FieldByName('DESPESA').AsString) > 20 then
       begin
           if Mensagem('   A T E N Ç Ã O   ', 'Deseja realmente excluir o serviço ' + #39 + Copy(MDO.QConsulta.FieldByname('DESPESA').AsString, 0, 20) + #39 + '. ?', '', 2, 3, false, 'I') = 3 Then
               Exit;
       end
       else begin
           if Mensagem('   A T E N Ç Ã O   ', 'Deseja realmente excluir o serviço ' + #39 + MDO.QConsulta.FieldByname('DESPESA').AsString + #39 + ' ?', '', 2, 3, false, 'I') = 3 Then
               Exit;
       end;
       }
       if Mensagem('   A T E N Ç Ã O   ', 'Deseja realmente excluir o serviço ' + #39 + DMESTOQUE.Alx3.fieldbyname('SERVICO').AsString + #39 + ' ?', '', 2, 3, false, 'I') = 3 Then
           Exit;
                
       //volta valores do serviço para as grids de edição
       //servico
       XCOD_SERVICOCLASSIFICACAO := DMESTOQUE.Alx3.FieldByName('COD_SUBSERVICO').AsInteger;
       EdClassificacao.Text := DMESTOQUE.Alx3.FieldByName('SERVICO').AsString;
       //complemento
       EDesricaoServico.Text := DMESTOQUE.Alx3.FieldByName('COMPLEMENTO').AsString;
       //equipamento
       XCodEquipamentoServico := DMESTOQUE.Alx3.FieldByName('COD_EQUIPAMENTO').AsInteger;
       EdEquipamentoServico.Text := DMESTOQUE.Alx3.FieldByName('EQUIPAMENTO').AsString;
       //valores
       edCustoTerceiros.ValueNumeric := DMESTOQUE.Alx3.FieldByName('CUSTO').AsCurrency;
       EQtdServ.Text := DMESTOQUE.Alx3.FieldByName('QTD').AsString;
       EValorServ.Text := DMESTOQUE.Alx3.FieldByName('VALOR').AsString;
       EDescServ.Text := DMESTOQUE.Alx3.FieldByName('DESCONTO').AsString;
       ETotalServItem.Text := DMESTOQUE.Alx3.FieldByName('VALOR_TOTAL').AsString;
       //recorrencia
       edQtdRecorrencia.Text := DMESTOQUE.Alx3.FieldByName('RECORRENCIA').AsString;
       //equipe
       FrmEquipe.EDCodigo.Text := DMESTOQUE.Alx3.FieldByName('COD_EQUIPE').AsString;
       FrmEquipe.EdDescricao.Text := DMESTOQUE.Alx3.FieldByName('EQUIPE').AsString;
       //serviços de terceiro
       if Trim(DMESTOQUE.Alx3.FieldByName('SERV_TERCEIRO').AsString) = '1' then
           cbTerceiros.Checked := True
       else
           cbTerceiros.Checked := False;

       RemoverServico;

       try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add('UPDATE ORDEM SET totprod=:totprod,totserv=:totserv,desconto=:desconto,descserv=:descserv, descprod=:descprod,totord=:totord');
           MDO.Query.SQL.Add('WHERE cod_ordem=:cod_ordem');
           MDO.Query.ParamByName('cod_ordem').AsInteger:=XCodOrdemOS;
           MDO.Query.ParamByName('desconto').AsCurrency:=EdDescTOrdem.ValueNumeric;
           MDO.Query.ParamByName('totord').AsCurrency:=EdTotalOrd.ValueNumeric;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
       except
           MDO.Transac.RollbackRetaining;
       end;
   end
   else begin
       if Mensagem('   A T E N Ç Ã O   ', 'Deseja remover TODOS os SERVIÇOS da lista?', '', 2, 3, false, 'I') = 3 Then
           Exit;

       DMESTOQUE.Alx3.First;
       //exclui serviço/despesa do banco
       MDO.Query.Close;
       MDO.Query.SQL.clear;
       MDO.Query.sql.Add('delete from despadic where (despadic.cod_gerador= :cod_ordem)');
       MDO.Query.SQL.Add('and despadic.cod_despadic= :cod_despesa');
       MDO.Query.ParamByName('cod_ordem').AsInteger := XCodOrdemOS;
       MDO.Query.ParamByName('cod_despesa').AsInteger := DMESTOQUE.Alx3.fieldbyname('COD_DESPADIC').AsInteger;
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       FiltraSlave;

       //Chama função para calcular descontos
       EfetuaDesconto('GERAL', 'PERCENTO');
   end;
end;
Procedure TFOrdemAssitenciaTecnica.RemoverServico;
Var
    XAPAGA: Integer; //controla para que sejama apagados todos os serviços da ordem exportada
Begin
    Inherited;
    XAPAGA := 0; 

    If XAPAGA = 0
        Then Begin
        //exclui serviço/despesa do banco
        MDO.Query.close;
        MDO.Query.SQL.clear;
        MDO.Query.sql.Add('delete from despadic where (despadic.cod_gerador= :cod_ordem)');
        MDO.Query.SQL.Add('and despadic.cod_despadic= :cod_despesa');
        MDO.Query.ParamByName('cod_ordem').AsInteger := XCodOrdemOS;
        MDO.Query.ParamByName('cod_despesa').AsInteger := DMESTOQUE.Alx3.fieldbyname('COD_DESPADIC').AsInteger;
        MDO.Query.ExecSQL;
        MDO.Transac.CommitRetaining;

        FiltraSlave;
          //Chama função para calcular descontos
        EfetuaDesconto('GERAL', 'PERCENTO');

    End
    Else Begin
          //exclui serviço/despesa do banco
        MDO.Query.close;
        MDO.Query.SQL.clear;
        MDO.Query.sql.Add('delete from despadic where (despadic.cod_gerador= :cod1)');
          //DMESTOQUE.Alx.SQL.Add('and despadic.cod_despadic= :cod2');
        MDO.Query.ParamByName('cod1').AsInteger := XCodOrdemOS;
     //     DMESTOQUE.Alx.ParamByName('cod2').AsInteger:=DMESTOQUE.Alx3.fieldbyname('COD_DESPADIC').AsInteger;
        MDO.Query.ExecSQL;
        MDO.transac.CommitRetaining;

        FiltraSlave;
          //Chama função para calcular descontos
        EfetuaDesconto('GERAL', 'PERCENTO');
    End;
End;


procedure TFOrdemAssitenciaTecnica.EValorServExit(Sender: TObject);
begin
  inherited;
  ETotalServItem.ValueNumeric := (EValorServ.ValueNumeric * EQtdServ.ValueNumeric);
end;

procedure TFOrdemAssitenciaTecnica.EDescServExit(Sender: TObject);
begin
  inherited;
    ETotalServItem.ValueNumeric := (EValorServ.ValueNumeric * EQtdServ.ValueNumeric);
    ETotalServItem.ValueNumeric := (ETotalServItem.ValueNumeric - ((ETotalServItem.ValueNumeric / 100) * EDescServ.ValueNumeric));
end;

procedure TFOrdemAssitenciaTecnica.BtnFechaPedClick(Sender: TObject);
begin
  inherited;
    //EFETUA CONTROLE DE ACESSO
    If ControlAccess('FECHORD', 'M') = False Then
        Exit;
    // repassando valor do cidgo da ordem para variavel
    XCodOrdemOS := DMServ.WOrdemDesp.FieldByname('cod_ordem').AsInteger;
    // BUSCANDO DADOS DA ORDEM
    If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('cod_ordem').AsString, '')=False
    Then Begin
        Mensagem('    A T E N Ç Ã O   ', 'A ORDEM não esta diponível para ser faturada. Reinicie o sistema e tente novamente.', '', 1, 1, false, 'I');
        Exit;
    End;

    // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
    If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
    Then Begin
        Mensagem('    A T E N Ç Ã O   ', 'A ORDEM ESTÁ SENDO USADA NO MOMENTO.' + #13 + 'Use Ctrl+D para destravar', '', 1, 1, false, 'I');
        Exit;
    End;
    If DMServ.TOrd.FieldByName('STATUS').AsString <> 'ABERTO'
        Then Begin
        Mensagem('    A T E N Ç Ã O   ', 'A ORDEM PRECISA ESTAR EM ABERTO PARA PODER SER FECHADA.', '', 1, 1, false, 'I');
        Exit;
    End;
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

    If DMServ.TOrd.IsEmpty
        Then Begin
        Mensagem('A T E N Ç Ã O', 'Não existe nenhuma ordem a ser fechada!', '', 1, 1, False, 'a');
        Exit;
    End;

//  If ((DMServ.TOrd.FieldByName('TOTPROD').AsCurrency = 0)and(DMServ.TOrd.FieldByName('TOTSERV').AsCurrency = 0) )
    if (DMServ.TOrd.FieldByName('TOTORD').AsCurrency = 0) then
    begin
        Mensagem('OPÇÃO BLOQUEADA', 'Esta ordem não contém produto ou serviços. Por isso não pode ser fechada!', '', 1, 1, False, 'i');
        Exit;
    end;

    If DMServ.TOrd.FieldByName('STATUS').AsString <> 'FECHADO'
        Then Begin
        If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente fechar a ordem de serviço ' + DMServ.TOrd.FieldByName('NUMERO').AsString, '', 2, 3, False, 'C') = 2
            Then Begin
           // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
            If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
                Then Begin
                Mensagem('A T E N Ç Ã O   ', 'A ordem está sendo usada no momento.' + #13 + 'Use Ctrl+D para destravar', '', 1, 1, false, 'I');
                Exit;
            End
            Else Begin
                DMServ.TOrd.Edit;
                DMServ.TOrd.FieldByName('EDIT').AsString := '1';
                DMServ.TOrd.Post;
                DMServ.IBT.CommitRetaining;
            End;

            CBGeraFinanceiro.Checked := False;
            CBGeraFinanceiro.Visible := False;

            CBPagamento.Text := 'Carteira';

            //Edmar - 16/02/2015 - atribui o total da ordem no campo
            edTotalRecebido.ValueNumeric := DMServ.TOrd.FieldByName('TOTORD').AsCurrency;
            edTotalProdutos.ValueNumeric := DMServ.TOrd.FieldByName('TOTPROD').AsCurrency;
            edTotalServicos.ValueNumeric := DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;

            {SOLICITAÇÃO 245}
            //Edmar - 21/01/2015 - Busca verificando se a pessoa possui crédito de antecipação
            MDO.QAlx1.Close;
            MDO.QAlx1.SQL.Clear;
            MDO.QAlx1.SQL.Add(' SELECT PESSOA.VLRCREDITO CREDITO FROM VWCLIENTE ');
            MDO.QAlx1.SQL.Add(' LEFT JOIN PESSOA ON PESSOA.COD_PESSOA = VWCLIENTE.COD_PESSOA ');
            MDO.QAlx1.SQL.Add(' WHERE (VWCLIENTE.COD_CLIENTE = :CLIENTE) AND (PESSOA.VLRCREDITO IS NOT NULL) AND (PESSOA.VLRCREDITO > 0) ');
            MDO.QAlx1.ParamByName('CLIENTE').AsInteger := DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger;
            MDO.QAlx1.Open;

            XVLR_CREDITO_OS := MDO.QAlx1.FieldByName('CREDITO').AsCurrency;

            lbCredito.Caption := 'O cliente possuí R$ '+FormatFloat('###,###,##0.00', MDO.QAlx1.FieldByName('CREDITO').AsCurrency)+' de crédito de antecipação.';

            EscreveContas;
            PFinanceiro.Visible := True;
            PFinanceiro.BringToFront; 

           //LIMPA VALORES ANTIGOS
            FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCodOrdemOS), '');
            If ControlAccess('GERAFINANC', '') = True Then
                CBGeraFinanceiro.Visible := true;

        //FORMA DE PAGAMENTO
            XCodFormaPagamentoOS := DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
            If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '') = True
                Then Begin
                XCodFormaPagamentoOS := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
                FrmFormPag.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
                FrmFormPag.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
            End
            Else Begin
                XCOD_FORMPAG := -1;
                FrmFormPag.EDCodigo.Text := '';
                FrmFormPag.EdDescricao.Text := '';
            End;

            If DMServ.TOrd.FieldByName('DTFECH').AsString <> '' Then
                EdDtFech.Text := DMServ.TOrd.FieldByName('DTFECH').AsString
            Else
                EdDtFech.Text := DateToStr(Date());
            FrmFormPag.EDCodigo.SetFocus;

            FrmFormPag.Refresh;
            FrmConta.EDCodigo.SetFocus;
            FrmContaServ.EDCodigo.SetFocus;
        	 //PConsulta.Enabled := False;
        	 //PCadastro.Enabled := False;
            CBPagamento.SetFocus;
            FPFinanceiro.Refresh;
        End;
    End;

end;

procedure TFOrdemAssitenciaTecnica.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
  PFinanceiro.Visible := False;
  PCadastro.Visible := False;
  PConsulta.Visible := true;
  PConsulta.BringToFront;

  // BUSCANDO DADOS DA ORDEM
  //FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsString, '');

  // EDITANDO ORDEM DE SERVICO PARA LIBERAR SEU USO CASO SEJA NECESSARIO
  Try
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('UPDATE ORDEM SET EDIT=:EDIT WHERE COD_ORDEM=:COD');
    MDO.Query.ParamByName('COD').AsInteger := DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;
    MDO.Query.ParamByName('EDIT').AsString := '0';
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
  Except
    MDO.Transac.RollbackRetaining;
  End;
end;

//Fecha Ordem(joga no financeiro)
Function TFOrdemAssitenciaTecnica.FechaOrd(CODPEDIDO: String; DTFECH: String) : Boolean;
Var
	 ATUFINANC: Boolean; //controle financeiro foram efetivados
   XVLRDESP:Real;//O VLR DAS DESPESAS É DIV POR DOIS ENTRE PROD E SERV.
Begin
	//inicializa as variaveis como true, caso encontre erro na passagem da função eslas passaram a false
   FechaOrd:=True;
   ATUFINANC:=True;
     // Tenta filtrar a ordem
     If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.TOrd.FieldByName('COD_ORDEM').AsString, '') = True
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
				If FecConta('ORDEM', XCodOrdemOS, DMServ.TOrd.FieldByName('TOTORD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency, XCOD_CONTA, -1 , StrToDate(EdDtFech.Text))=True
               Then Begin
                   ATUFINANC:=True;
               End
               Else begin
                   ATUFINANC:=False;
               End;
           End
           Else Begin
               //Filtra Forma de Pagamento
               If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCodFormaPagamentoOS), '') = True
               Then Begin // Encontrou forma de pagamento, continua processo
                   //verifica moeda padrão para lançamento
                       If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                       Then Begin // caso o pedido tenha sido feito à vista deve-se lançar o valor direto no caixa
                           If CBPagamento.Text='Cheque'
                           Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
                               If LancChEnt(XCOD_CONTA, -1, 'Fech. Ordem'+DMServ.TOrd.FieldByName('NUMERO').AsString+' - Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, Date(), '', DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, '', '', 0, '', '', 'ORDEM', IntToStr(XCodOrdemOS))=True
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
                           If LancConta('ORDEM', StrToInt(CodPedido), DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency-DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency+XVLRDESP, XCOD_CONTA, -1, -1, 'Fech. Ordem de Serviço '+DMServ.TOrd.FieldByName('NUMERO').AsString, XCodFormaPagamentoOS, DMServ.TOrd.FieldByName('NUMERO').AsString, 'O', Date(), 0, EdDtFech.Text, DMServ.TOrd.FieldByName('numfiscal').AsString)=True
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
               DMServ.TOrd.FieldByName('STATUS').AsString:='FECHADO';
               DMServ.TOrd.FieldByName('LOCALAT').AsString:='Sim';
               DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger:=XCodFormPag;
               //DMServ.TOrd.FieldByName('DTENTREGA').AsString:=DBDATAENTREGA.Text;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               DMServ.TOrd.FieldByName('DTFECH').AsString:=EdDtFech.Text;
               DMServ.TOrd.FieldByName('TIPOPAG').AsString:=CBPagamento.Text;
               //DMServ.TOrd.FieldByName('HRENTREGA').AsString:=DBHORAENTREGA.Text;
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
       //If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='MENSAL'
       //Then Begin
           //Se a fatura for mensal abrimos a tela de fatura, porém a fatura não será obrigatória
         //  FaturaOSMensal(StrToInt(CODPEDIDO));
       //End;
   End
   Else Begin //else de filtragem de pedido
       FechaOrd:=false;
   End;
End;



procedure TFOrdemAssitenciaTecnica.BtnFatOSAssistClick(Sender: TObject);

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

   XCodOrdemOS:=DMSERV.TOrd.FIELDBYNAME('COD_ORDEM').AsInteger;

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
		If Mensagem('C O N F I R M A Ç Ã O', 'A Impressora esta pronta?'  , '', 2, 3, False, 'c')= 2
       Then Begin
       	FiltraTabela(DMServ.WOrdemDesp, 'VWORDEM', 'COD_ORDEM', IntToStr(XCodOrdemOS), '');
           //AbreFiscal;
           //REGISTRA COMANDO DO USUARIO
           Registra('ORDEM DE SERVIÇO', 'NF', DMServ.WOrdemDesp.FieldByName('dtabert').AsString, 'Nº '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString, 'Valor: '+DMServ.WOrdemDesp.FieldByName('total').AsString);
       End;
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
   FiltraTabela(DMServ.WOrdemDesp,'VWORDEM','COD_ORDEM',IntToStr(XCodOrdemOS),'');
   //CompdeAbertura1Click(Sender);
   //CompdeFechamento1Click(sender);
   FiltraOrdem('');

   //Paulo 15/02/2012: Para imprimir recibo caso for a vista
   //if CBImpRecibo.Checked = true then
      //ImpRecibo(XCodOrdemOS);
end;

procedure TFOrdemAssitenciaTecnica.FrmFormPagBTNOPENClick(Sender: TObject);
begin
  inherited;
   If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCodFormaPagamentoOS:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       XCodFormPag:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormPag.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormPag.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
       //Paulo 15/02/2012: mostra o checkbox para imprimir o recibo somente se for à vista
       {if FrmFormPag.EdDescricao.Text = 'À VISTA' then
           CBImpRecibo.Visible:=true
       else
           CBImpRecibo.Visible:=false;}
   End;

end;

procedure TFOrdemAssitenciaTecnica.FrmContaBTNOPENClick(Sender: TObject);
Var Oper : Char;
begin
  inherited;
 // FrmContaServ.BTNOPENClick(Sender);
    Oper := 'C';
    XTIPO_CONTA := 'C';
    FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = ' + FMenu.LCODEMPRESA.Caption + ') AND (NATUREZA = ' + #39 + Oper + #39 + ') AND (TIPO=' + #39 + 'N' + #39 +') ORDER BY CLASSIFICACAO');
    If AbrirForm(TFConsPlnCta, FConsPlnCta, 1) = 'Selected'
        Then Begin
        XCOD_CONTA := DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
        FrmConta.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
        FrmConta.EDCodigo.text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
    End;
    FrmContaServ.Repaint;
    FrmContaServ.Refresh;

end;

procedure TFOrdemAssitenciaTecnica.FrmContaServBTNOPENClick(
  Sender: TObject);
  Var Oper : Char;
  begin
  inherited;
 // FrmContaServ.BTNOPENClick(Sender);
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

procedure TFOrdemAssitenciaTecnica.EdFiscalEnter(Sender: TObject);
begin
  inherited;
	If EDFiscal.Text = 'FISCAL' then
   	EDFiscal.Text := ''
   Else
   	EDFiscal.SelectAll;
   EDFiscal.Font.Color := clBlack;
end;

procedure TFOrdemAssitenciaTecnica.EdFiscalExit(Sender: TObject);
begin
  inherited;
   if Trim(EdFiscal.Text) = '' then
        EdFiscal.Text := 'Número';
   EdFiscal.Font.Color := clGray;
end;

procedure TFOrdemAssitenciaTecnica.EdFiscalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
		If Key=VK_RETURN
       Then Begin
           If (EDFiscal.Text<>'') and (EDFiscal.Text<>'FISCAL')
           Then Begin
               FiltraOrdem('(VWORDEM.NUMFISCAL  = '+#39+TRIM(EDFiscal.Text)+#39+') ');
           End;
       End;
       If Key=VK_ESCAPE
       Then Begin
           FiltraOrdem('');
       End;
end;

procedure TFOrdemAssitenciaTecnica.BtnApagarClick(Sender: TObject);
begin
  inherited;
    Inherited;
   //EFETUA CONTROLE DE ACESSO
    If ControlAccess('EXCORD', 'M') = False Then
        Exit;

    FiltraTabela(DMSERV.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');

    If DMSERV.TOrd.IsEmpty Then Begin
        Mensagem('    A T E N Ç Ã O   ', 'A ORDEM JÁ FOI REMOVIDA.', '', 1, 1, false, 'I');
        AtualizaGridConsulta('');
        Exit;
    End;

    XCodOrdemOS := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;

   // BUSCANDO DADOS DA ORDEM
    FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(XCodOrdemOS), '');

   // caso o campo tiver valendo 1 eh pq a ordem jah esta sendo usada
    If DMServ.TOrd.FieldByName('EDIT').AsString = '1'
        Then Begin
        Mensagem('    A T E N Ç Ã O   ', 'A ORDEM ESTÁ SENDO USADA NO MOMENTO.' + #13 + 'Use Ctrl+D para destravar', '', 1, 1, false, 'I');
        AtualizaGridConsulta('');
        Exit;
    End
    Else Begin
        DMServ.TOrd.Edit;
        DMServ.TOrd.FieldByName('EDIT').AsString := '1';
        DMServ.TOrd.Post;
        DMServ.TOrd.ApplyUpdates;
        DMServ.IBT.CommitRetaining;
    End;

    If (DMServ.WOrdemDesp.FieldByName('STATUS').AsString <> 'TERMINADA') And (DMServ.WOrdemDesp.FieldByName('STATUS').AsString <> 'FECHADA')
        Then Begin //se passar pelas restrições de apagamento da ordem
        If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'DESEJA APAGAR A ORDEM DE SERVIÇO ' + #13 + 'Nº ' + DMServ.WOrdemDesp.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2
            Then Begin

        //Filtra registros do pedido
            FiltraSlave;
           //VERIFICA SE EXISTEM ITENS NA ORDEM, ELA SOMENTE PODERÁ SER APAGADA SE ESTIVER SEM ITENS
            If (Not DMESTOQUE.TSlave.IsEmpty) Or (Not DMESTOQUE.TDesp.IsEmpty) {Or (Not DMESTOQUE.TSlaveServ.IsEmpty)}
                Then Begin
                Mensagem('OPÇÃO BLOQUEADA', 'ANTES DE REMOVER ESTA ORDEM É NECESSÁRIO REMOVER TODOS OS PRODUTOS E SERVIÇOS DA ORDEM ' + 'Nº ' + DMServ.WOrdemDesp.FieldByName('NUMERO').AsString + '.', '', 1, 1, False, 'a');
                DMServ.TOrd.Edit;
                DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                DMServ.TOrd.Post;
                DMServ.TOrd.ApplyUpdates;
                DMServ.IBT.CommitRetaining;
                AtualizaGridConsulta('ORIGEM');
                Exit;
            End;

           //REGISTRA COMANDO DO USUARIO
            Try
                Registra('ORDEM', 'APAGAR/CANCELAR', DMServ.TOrd.FieldByName('DTABERT').AsString, 'Nº ' + DMServ.TOrd.FieldByName('NUMERO').AsString, 'Valor: ' + DMServ.TOrd.FieldByName('TOTORD').AsString);
            Except
            End;

            Try

          //Apaga ORDEM
                FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');
                DMServ.TOrd.Delete;

            //Confirma Tranzaçào
                DMSERV.IBT.CommitRetaining;

            //atualiza view
                AtualizaGridConsulta('ORIGEM');
            Except
            //caso não conseguiu executar as tranzações acima retorna as informações anteriores
                DMSERV.IBT.RollbackRetaining
            End;
        End
        Else Begin
            DMServ.TOrd.Edit;
            DMServ.TOrd.FieldByName('EDIT').AsString := '0';
            DMServ.TOrd.Post;
            DMServ.TOrd.ApplyUpdates;
            DMServ.IBT.CommitRetaining;
            AtualizaGridConsulta('ORIGEM');
        End;
    End;
end;

procedure TFOrdemAssitenciaTecnica.mnuCompFechOSAssistClick(
  Sender: TObject);
Var Cod_Tmp : Integer;
begin
   XCodOrdemOS :=  DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;

   RVSystem1.SystemPreview.FormState := wsMaximized;
   RVSystem1.DefaultDest := rdPreview; { poderia ser rdPrinter para impressora    }
   RVSystem1.SystemPReview.RulerType := rtBothCm; // Para mostrar a reguá n preview
   RVSystem1.Execute;
end;

procedure TFOrdemAssitenciaTecnica.FiltraOrdemData(xDataInicial, xDataFinal, xSituacao:String);
begin
	DMServ.WOrdemDesp.Close;
   DMServ.WOrdemDesp.SQL.Clear;
   DMServ.WOrdemDesp.SQL.Add('SELECT * FROM VWORDEM');

   //Edmar - 07/04/2014 - Condições diferentes para diferentes situações
   if xSituacao = 'ABERT' then
   begin
   	DMServ.WOrdemDesp.SQL.Add('where vwordem.dtabert between :dtIni and :dtFin');
       DMServ.WOrdemDesp.SQL.Add('order by dtabert');
   end
   else
   begin
		DMServ.WOrdemDesp.SQL.Add('where vwordem.dtfech between :dtIni and :dtFin');
       DMServ.WOrdemDesp.SQL.Add('order by dtfech');
   end;

   DMServ.WOrdemDesp.ParamByName('dtIni').AsString := xDataInicial;
   DMServ.WOrdemDesp.ParamByName('dtFin').AsString := xDataFinal;

   //Edmar - 07/04/2014 - Libera dados
   DMServ.WOrdemDesp.Open;
end;

procedure TFOrdemAssitenciaTecnica.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
PMenuRelOSAssist.Popup(Left+PConsulta.left+PBotoesConsulta.left+ BtnRelatorio.Left, top+PConsulta.Top+PBotoesConsulta.top+BtnRelatorio.Top+BtnRelatorio.Height);

end;

procedure TFOrdemAssitenciaTecnica.edDtInicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	if key = vk_return then
   begin
   	//Edmar - 07/02/2014 - Teste se foi informado as duas datas
   	if (edDtInicial.Text <> '  /  /    ') and (edDtFinal.Text <> '  /  /    ') then
       begin
       	//Edmar - 07/02/2014 - Verifica se pesquisa por data de abertura ou de fechamento
           //e passa a informação correspondente
       	if(rbAbertura.Checked) then
           	FiltraOrdemData(edDtInicial.Text, edDtFinal.Text, 'ABERT')
           else
           	FiltraOrdemData(edDtInicial.Text, edDtFinal.Text, 'FECH')
       end;
  	end
   else
   if key = vk_escape then
       AtualizaGridConsulta('');
end;

procedure TFOrdemAssitenciaTecnica.edDtFinalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	if key = vk_return then
   begin
   	//Edmar - 07/02/2014 - Teste se foi informado as duas datas
   	if (edDtInicial.Text <> '  /  /    ') and (edDtFinal.Text <> '  /  /    ') then
       begin
       	//Edmar - 07/02/2014 - Verifica se pesquisa por data de abertura ou de fechamento
           //e passa a informação correspondente
       	if(rbAbertura.Checked) then
           	FiltraOrdemData(edDtInicial.Text, edDtFinal.Text, 'ABERT')
           else
           	FiltraOrdemData(edDtInicial.Text, edDtFinal.Text, 'FECH')
       end;
  	end
   else
   if key = vk_escape then
       AtualizaGridConsulta('');
end;

procedure TFOrdemAssitenciaTecnica.cbTerceirosClick(Sender: TObject);
begin
  inherited;
  if (cbTerceiros.Checked = True) Then
  Begin
    edCustoTerceiros.Text := '0,00';
	 edCustoTerceiros.Enabled := True;
  End Else
  Begin
    edCustoTerceiros.Text := '0,00';
    edCustoTerceiros.Enabled := False;
  End;
end;

procedure TFOrdemAssitenciaTecnica.BtnDeleteProdEnter(Sender: TObject);
begin
  inherited;
    BtnDeleteProd.Font.Color := clRed;
    BtnDeleteProd.Font.Style := [fsBold];
end;

procedure TFOrdemAssitenciaTecnica.BtnDeleteProdExit(Sender: TObject);
begin
  inherited;
    BtnDeleteProd.Font.Color := clWindowText;
    BtnDeleteProd.Font.Style := [];
end;

procedure TFOrdemAssitenciaTecnica.BtnInserirEnter(Sender: TObject);
begin
  inherited;
    BtnInserir.Font.Color := clRed;
    BtnInserir.Font.Style := [fsBold];
end;

procedure TFOrdemAssitenciaTecnica.BBExcluirEnter(Sender: TObject);
begin
  inherited;
    BBExcluir.Font.Color := clRed;
    BBExcluir.Font.Style := [fsBold];
end;

procedure TFOrdemAssitenciaTecnica.BBExcluirExit(Sender: TObject);
begin
  inherited;
  BBExcluir.Font.Color := clWindowText;
  BBExcluir.Font.Style := [];
end;

procedure TFOrdemAssitenciaTecnica.BtnInserirExit(Sender: TObject);
begin
  inherited;
  BtnInserir.Font.Color := clWindowText;
  BtnInserir.Font.Style := [];
end;

Procedure TFOrdemAssitenciaTecnica.PrintImage(RVSystem: TRvSystem; Row, Col, ImageWidth, ImageHeight: Double; Bitmap: TBitmap; FileName: String = '');
Var
    Calc, L1, C1, L2, C2: Double;
    InternalBitmap: TBitmap;
Begin
try
    InternalBitmap := TBitmap.Create;
    Try
        If Not Assigned(Bitmap) Then Begin
            InternalBitmap.LoadFromFile(FileName);
        End Else Begin
            InternalBitmap.Assign(Bitmap);
        End;
        With RVSystem.BaseReport Do Begin
            If ImageWidth <= 0.0 Then Begin
                Calc := ImageHeight * (InternalBitmap.Width / XDPI) / (InternalBitmap.Height / YDPI);
                C1 := Col; L1 := Row; C2 := Col + Calc; L2 := Row + ImageHeight;
            End Else If ImageHeight <= 0.0 Then Begin
                Calc := ImageWidth * (InternalBitmap.Height / YDPI) / (InternalBitmap.Width / XDPI);
                C1 := Col; L1 := Row; C2 := Col + ImageWidth; L2 := Row + Calc;
            End Else Begin
                C1 := Col; L1 := Row; C2 := Col + ImageWidth; L2 := Row + ImageHeight;
            End;
            PrintBitmapRect(C1, L1, C2, L2, InternalBitmap);
        End;
    Finally
        InternalBitmap.Free;
    End;
except

end;
End;


//Comprovante de OS numero 18 - Cabecalho
Procedure TFOrdemAssitenciaTecnica.ImpCompModelo18_Cabecalho;
Var
    Bitmap: TBitmap;
Begin
    try
       with RvSystem1.BaseReport do
       begin
           try
               Bitmap := TBitmap.Create;
               Bitmap.LoadFromFile('logoEmpresa.bmp');
               PrintImage(RVSystem1, XLinha, 0.3, 2.8, 1.0, Bitmap);
           except
           end;

           {******************}
           {******************}
           {* PRIMEIRA LINHA *}
           {******************}
           {******************}
           //centro (telefone principal)
           SetFont('Arial', 15);
           Bold := True;
           //PrintXY(3.7, XLinha + 0.2, FormataTelefone(MDO.Query.FieldByName('TEL1').AsString));
           PrintCenter((MDO.Query.FieldByName('TEL1').AsString), (PageWidth/2)+0.3);

           {*****************}
           {*****************}
           {* SEGUNDA LINHA *}
           {*****************}
           {*****************}
           //centro (telefone secundário)
           NewLine;
           XLinha := XLinha + 0.2;
           //PrintXY(3.7, XLinha + 0.2, FormataTelefone(MDO.Query.FieldByName('TEL2').AsString));
           PrintCenter((MDO.Query.FieldByName('TEL2').AsString), (PageWidth/2)+0.3);

           {******************}
           {******************}
           {* TERCEIRA LINHA *}
           {******************}
           {******************}
           //centro endereço completo da empresa
           SetFont('Arial', 11);
           Bold := True;
           NewLine;
           XLinha := XLinha + 0.2;
           PrintCenter(MDO.Query.FieldByName('ENDERECO').AsString+' - '+MDO.Query.FieldByName('NUMERO').AsString, (PageWidth/2)+0.3);
           SetFont('Arial', 10);
           Bold := True;           
           //direita número da ordem de serviço
           PrintRight('OS Nº'+ DMServ.TOrd.FieldByName('NUMERO').AsString, PageWidth - 0.5);

           {******************}
           {******************}
           {** QUARTA LINHA **}
           {******************}
           {******************}
           //centro bairro, cidade e uf da empresa
           SetFont('Arial', 11);
           Bold := True;           
           NewLine;
           XLinha := XLinha + 0.2;
           PrintCenter(MDO.Query.FieldByName('BAIRRO').AsString+' - '+MDO.Query.FieldByName('CIDADE').AsString+' - '+MDO.Query.FieldByName('UF').AsString, (PageWidth/2)+0.3);

           //direta status da OS
           SetFont('Arial', 10);           
           Bold := False;
           PrintRight(DMServ.TOrd.FieldByName('STATUS').AsString, PageWidth - 0.5);

           {******************}
           {******************}
           {** QUINTA LINHA **}
           {******************}
           {******************}           
           NewLine;
           XLinha := XLinha + 0.2;           
           PrintRight('Abertura: ' + DMServ.TOrd.FieldByName('DTABERT').AsString + ' - Fechamento:' + DMServ.TOrd.FieldByName('DTFECH').AsString + ' [18]', PageWidth - 0.4);

           NewLine;
           XLinha := XLinha + 0.3;
           
           MoveTo(0.3, XLinha);
           LineTo(PageWidth - 0.3, XLinha);
           NewLine;
        End;
	 Except
    End;
End;



//Comprovante de OS numero 18 - Cabecalho do cliente
Procedure TFOrdemAssitenciaTecnica.ImpCompModelo18_Cabecalho_Cliente;
Var
    Bitmap: TBitmap;
Begin
    Try
        With RvSystem1.BaseReport Do
        Begin
           //1º LINHA
           SetFont('Arial', 9);
           Bold := True;
           PrintLeft('Cliente: ', 0.3);
           PrintLeft('CPF:', 3.6);
           PrintLeft('Tel.: ', 6.1);

           Bold := False;
           PrintLeft(Copy(MDO.QAlx1.FieldByName('NOME').AsString, 0, 32), 0.8);
           PrintLeft(MDO.QAlx1.FieldByName('CPFCNPJ').AsString, 3.9);
           PrintLeft(MDO.QAlx1.FieldByName('FONE').AsString, 6.4);

           //2º LINHA
           NewLine;
           SetFont('Arial', 9);
           Bold := True;
           PrintLeft('Endereço:', 0.3);
           PrintLeft('Bairro: ', 3.6);
           PrintLeft('Cidade:', 6.1);
           Bold:=False;
           PrintLeft(MDO.QAlx1.FieldByName('ENDERECO').AsString+'-'+MDO.QAlx1.FieldByName('NUMERO').AsString, 1.0);
           PrintLeft(MDO.QAlx1.FieldByName('BAIRRO').AsString, 4.0);
           PrintLeft(MDO.QAlx1.FieldByName('CIDADE').AsString+'-'+MDO.QAlx1.FieldByName('UF_ESTADO').AsString, 6.6);

           NewLine;
           XLinha := XLinha + 0.5;
            
           MoveTo(0.3, XLinha);
           LineTo(PageWidth - 0.3, XLinha);
           NewLine;
        End;
    Except

    End;
End;


//Comprovante de OS numero 18 - Imprime os dados de Produto
Procedure TFOrdemAssitenciaTecnica.ImpCompModelo18_ItemdeProduto;
Begin
    Try
        With RvSystem1.BaseReport Do
        Begin
            SetFont('Arial', 8);
            Bold := False;
            PrintLeft(DMESTOQUE.TSlave.FieldByName('CONTRINT').AsString, 0.3);
            PrintLeft('| ', 1.0);
            PrintLeft(Copy(DMESTOQUE.TSlave.FieldByName('CODPRODFABR').AsString, 1, 10), 1.1);
            PrintLeft('|', 1.8);
            PrintLeft(Copy(DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString, 1, 44), 1.9);
            PrintLeft('|', 4.6);
            PrintLeft(Copy(DMESTOQUE.TSlave.FieldByName('EQUIPAMENTO').AsString, 1, 19), 4.7);
            PrintLeft('|', 5.9);
            PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency), PageWidth - 1.7);
            PrintLeft('|', 6.6);
            PrintLeft(DMESTOQUE.TSlave.FieldByName('QTD').AsString, 6.8);
            PrintLeft('|', 7.1);
            PrintRight(FormatFloat('#,###0.00', DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency), PageWidth - 0.4);
            SetFont('Arial', 5);
            NewLine;
            
            XVLRTPROD := XVLRTPROD + DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;            
        End;
	 Except
    End;
End;



//Comprovante de OS numero 18 - Cabecalho de produtos
Procedure TFOrdemAssitenciaTecnica.ImpCompModelo18_Cabecalho_Produtos;
Begin
    Try
        With RvSystem1.BaseReport Do
        Begin
            SetFont('Arial', 11);
            Bold := True;
            PrintLeft ('Cd. Int.:', 0.3);
            PrintLeft ('| Cd. Fab.:', 1.0);
            PrintLeft ('| Descrição:', 1.8);
            PrintLeft ('|', 4.6);
            PrintLeft ('Equipamento: ', 4.7);
            PrintLeft ('|', 5.9);            
            PrintRight('V. Unit:', PageWidth - 1.7);
            PrintLeft ('|', 6.6);
            PrintLeft ('Qtd.:', 6.7);
            PrintLeft ('|', 7.1);
            PrintRight('V. Total:', PageWidth - 0.4);
        End;
	 Except
    End;
End;

//Edmar - 11/07/2014 - Imprime cabeçalho de serviços
procedure TFOrdemAssitenciaTecnica.ImpCompModelo18_Cabecalho_Servicos;
begin
    With RvSystem1.BaseReport Do
    Begin
        If Not MDO.QAlx2.IsEmpty Then
        Begin
            SetFont('Arial', 11);
            Bold := True;
            PrintLeft ('Código:', 0.3);
            PrintLeft ('| Eq.:', 1.0);
            PrintLeft ('| Serviço:', 1.4);
            PrintLeft ('| Equipamento: ', 3.4);
            PrintLeft ('|', 5.9);
            PrintRight('V. Unit:', PageWidth - 1.7);
            PrintLeft ('|', 6.6);
            PrintLeft ('Qtd:', 6.7);
            PrintLeft ('|', 7.1);
            PrintRight('V. Total:', PageWidth - 0.4);
            NewLine;
        end;
    end;
end;


//Comprovante de OS numero 18 - Imprime os dados de Serviços
Procedure TFOrdemAssitenciaTecnica.ImpCompModelo18_ItemdeServicos;
var
   XStartIndex: Integer;
Begin
   try
       with RvSystem1.BaseReport Do
       begin           
           XStartIndex := 0;
           SetFont('Arial', 8);
           Bold := False;
           PrintLeft(MDO.QAlx2.FieldByName('COD_DESPADIC').AsString, 0.3);
           PrintLeft('|', 1.0);
           PrintLeft(MDO.QAlx2.FieldByName('COD_EQUIPE').AsString, 1.1);
           PrintLeft('|', 1.4);
           PrintLeft(Copy(MDO.QAlx2.FieldByName('SERVICO').AsString, 1, 44), 1.5);
           PrintLeft('|', 3.4);
           PrintLeft(Copy(MDO.QAlx2.FieldByName('EQUIP').AsString, 1, 38), 3.5);
           PrintLeft('|', 5.9);
           PrintRight(FormatFloat('#,###0.00', MDO.QAlx2.FieldByName('VLRFINAL').AsCurrency), PageWidth - 1.7);
           PrintLeft('|', 6.6);
           PrintLeft(MDO.QAlx2.FieldByName('QTD').AsString, 6.8);           
           PrintLeft('|', 7.1);
           PrintRight(FormatFloat('#,###0.00',  MDO.QAlx2.FieldByName('VLRTOTFIN').AsCurrency), PageWidth - 0.4);
           //Edmar - 07/05/2014 - Adicionado o incremento da váriavel para o calculo de desconto correto.
           XVLRTSERV := XVLRTSERV + MDO.QAlx2.FieldByName('VLRTOTFIN').AsCurrency;
           //IMPRIME COMPLEMENTO
           if (Trim(MDO.QAlx2.FieldByName('DESPESA').AsString) <> '') then
           begin
               SetFont('Arial', 6);
               Bold := False;
               NewLine;
               PrintLeft(CopySemCortarPalavra(MDO.QAlx2.FieldByName('DESPESA').AsString, 80, 0, XStartIndex), 1.5);//LINHA 1
               if (Length(Trim(MDO.QAlx2.FieldByName('DESPESA').AsString)) > 80) then
               begin
                   NewLine;
                   PrintLeft(Trim(CopySemCortarPalavra(MDO.QAlx2.FieldByName('DESPESA').AsString, 80, XStartIndex, XStartIndex)), 1.5);//LINHA 2
               end;
           end;
        End;
	except
   end;
End;

//Comprovante de OS numero 18 - Imprime os dados de Forma de Pagamento
Procedure TFOrdemAssitenciaTecnica.ImpCompModelo18_FormadePagamento;
Var
	Xtag, lnh: Integer;
   xTotalOrdem : Real;
Begin
    Try
        With RvSystem1.BaseReport Do
        Begin
        	//Controle de Linha meia pagina pagina inteira
           If (XtipoImp='MEIA') //Se numero de itens inferior a 11
           Then Begin
               for Xtag := xContaLinha  to 14  do
               begin
                   NewLine;
               end;
           End;

           PrintLeft  ('____________________________________________________________', 0.3);
           PrintCenter('____________________________________________________________', PageWidth / 2);
           PrintRight ('____________________________________________________________', PageWidth - 0.3);
           
           NewLine;
           xcont := xcont + 1;
           SetFont('Arial', 9);
           Bold := True;

           PrintLeft('Forma de Pagamento: ', 0.3);
           PrintLeft('Desc. R$: ', 3.3);
           SetFont('Arial', 11);
           Bold := True;

           PrintLeft('Total Ordem R$: ', 5.7);
           Bold:=False;

           SetFont('Arial', 9);
           PrintLeft(DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString, 1.7);
    		If Not(DMServ.TOrd.fieldByName('DESCONTO').AsCurrency > 0) Then
            	PrintLeft('0,00', 3.9)
    		Else
           Begin
               xTotalOrdem := DMServ.TOrd.fieldByName('TOTORD').AsCurrency/(1-(DMServ.TOrd.fieldByName('DESCONTO').AsCurrency/100));
        	    PrintLeft(FormatFloat('####,##0.00', (xTotalOrdem - DMServ.TOrd.fieldByName('TOTORD').AsCurrency)), 3.9);
           End;
           SetFont('Arial', 11);
           Bold := True;
    		XVLRTOTAL := DMServ.TOrd.fieldByName('TOTORD').AsCurrency;
           PrintRight(FormatFloat('####,##0.00', XVLRTOTAL), PageWidth - 0.5);
           
           //Edmar - 07/05/2014 - Zera as variaveis de total devido ao calculo incorreto do desconto
           XVLRTPROD := 0;
           XVLRTSERV := 0;

           XLinha := XLinha + 0.3;

           Bold := False;
           
           PrintLeft  ('____________________________________________________________', 0.3);
           PrintCenter('____________________________________________________________', PageWidth / 2);
           PrintRight ('____________________________________________________________', PageWidth - 0.3);
        End;
	 Except
    End;
End;


//Comprovante de OS numero 18
Procedure TFOrdemAssitenciaTecnica.ImpCompModelo18;
Var
    XtotalProd: Real;
    XQtdPagina: String;
Begin
    Try
        XLinha := 0.1;
        //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
        If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = False Then
            Exit;

        //BUSCA AS INFORMAÇÕES NECESSÁRIAS PARA A EMPRESA
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add(' SELECT EMPRESA.FONE TEL1, EMPRESA.TEL0800 TEL2, EMPRESA.ENDERECO, EMPRESA.NUMERO, ');
        MDO.Query.SQL.Add(' EMPRESA.BAIRRO, CIDADE.NOME CIDADE, ESTADO.UF_ESTADO UF ');
        MDO.Query.SQL.Add(' FROM EMPRESA ');
        MDO.Query.SQL.Add(' LEFT JOIN CIDADE ON EMPRESA.COD_CIDADE = CIDADE.COD_CIDADE ');
        MDO.Query.SQL.Add(' LEFT JOIN ESTADO ON CIDADE.COD_ESTADO = ESTADO.COD_ESTADO ');
        MDO.Query.SQL.Add(' WHERE EMPRESA.COD_EMPRESA = :EMPRESA ');
        MDO.Query.ParamByName('EMPRESA').AsInteger := DMMACS.TEmpresa.FieldByName('COD_EMPRESA').AsInteger;
        MDO.Query.Open;
        
        //Alex 25/04/2014: busca mecanico responsavel
        FiltraTabela(DMESTOQUE.TDesp, 'DESPADIC', 'COD_GERADOR', DMServ.TOrd.FieldByName('COD_ORDEM').AsString, 'AND(GERADOR=' + #39 + 'ORDEM' + #39 + ')');
        FiltraTabela(DMPESSOA.TEquipe, 'EQUIPE', 'COD_EQUIPE', DMESTOQUE.TDesp.FieldByName('COD_EQUIPE').AsString, '');

        //Seleciona o cliente da OS
        MDO.QAlx1.Close;
        MDO.QAlx1.SQL.Clear;
        MDO.QAlx1.SQL.Add(' SELECT PESSOA.COD_PESSOA, CLIENTE.COD_CLIENTE, PESSOA.NOME,  PESSOA.CPFCNPJ, PESSOA.TELREL FONE, PESSOA.ENDERECO, ');
        MDO.QAlx1.SQL.Add(' PESSOA.ENDNUMERO NUMERO, PESSOA.BAIRRO, CIDADE.NOME AS CIDADE, ESTADO.UF_ESTADO ');
        MDO.QAlx1.SQL.Add(' FROM CLIENTE ');
        MDO.QAlx1.SQL.Add(' LEFT JOIN PESSOA ON (CLIENTE.COD_PESSOA=PESSOA.COD_PESSOA) ');
        MDO.QAlx1.SQL.Add(' LEFT JOIN CIDADE ON (PESSOA.COD_CIDADE=CIDADE.COD_CIDADE) ');
        MDO.QAlx1.SQL.Add(' LEFT JOIN ESTADO ON (ESTADO.COD_ESTADO=CIDADE.COD_ESTADO) ');
        MDO.QAlx1.SQL.Add(' WHERE CLIENTE.COD_CLIENTE = :COD_CLIENTE ');
        MDO.QAlx1.ParamByName('COD_CLIENTE').AsInteger := DMServ.WOrdemDesp.FieldByName('cod_cliente').AsInteger;
        MDO.QAlx1.Open;
        
        //Alex 04/05/2014: Verifica a quantidade de itens a serem impressos
        DMFINANC.TAlx.Close;
        DMFINANC.TAlx.SQL.Clear;
        DMFINANC.TAlx.SQL.Add(' Select count(despadic.cod_despadic) as qtd from despadic where (despadic.gerador=''ORDEM'') and (despadic.cod_gerador=:codigo)');
        DMFINANC.TAlx.ParamByName('codigo').AsString:=DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString;
        DMFINANC.TAlx.Open;
        XQuantServicosImprimir:=DMFINANC.TAlx.FieldByName('qtd').AsInteger;
        DMFINANC.TAlx.Close;
        DMFINANC.TAlx.SQL.Clear;
        DMFINANC.TAlx.SQL.Add(' Select count(itprodord.cod_itprodord) as qtd from itprodord where (itprodord.cod_ordem = :codigo) ');
        DMFINANC.TAlx.ParamByName('codigo').AsString:=DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString;
        DMFINANC.TAlx.Open;

        DMESTOQUE.TSlave.Close;
        DMESTOQUE.TSlave.SQL.Clear;

        DMESTOQUE.TSlave.SQL.Add(' SELECT SUBPRODUTO.CONTRINT, SUBPRODUTO.CODPRODFABR, SUBPRODUTO.DESCRICAO, EQUIPAMENTO.DESCRICAO EQUIPAMENTO, ');
        DMESTOQUE.TSlave.SQL.Add(' ITPRODORD.VLRUNIT, ITPRODORD.QTD, ITPRODORD.TOTAL FROM ITPRODORD ');
        DMESTOQUE.TSlave.SQL.Add(' LEFT JOIN EQUIPAMENTO ON EQUIPAMENTO.COD_EQUIPAMENTO = ITPRODORD.COD_TABELAFAIXAPRECO ');
        DMESTOQUE.TSlave.SQL.Add(' LEFT JOIN ESTOQUE ON ESTOQUE.COD_ESTOQUE = ITPRODORD.COD_ESTOQUE ');
        DMESTOQUE.TSlave.SQL.Add(' LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
        DMESTOQUE.TSlave.SQL.Add(' WHERE ITPRODORD.COD_ORDEM = :ORDEM ');
        DMESTOQUE.TSlave.ParamByName('ORDEM').AsInteger := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
        DMESTOQUE.TSlave.Open;

        MDO.QAlx2.Close;
        MDO.QAlx2.SQL.Clear;
    	 MDO.QAlx2.SQL.Add(' SELECT DESPADIC.*, EQUIPE.COD_EQUIPE, EQUIPE.DESCRICAO AS DESC_EQUIPE, EQUIPAMENTO.DESCRICAO AS EQUIP, SUBSERVICO.DESCRICAO SERVICO ');
    	 MDO.QAlx2.SQL.Add(' FROM DESPADIC ');
    	 MDO.QAlx2.SQL.Add(' LEFT JOIN EQUIPAMENTO ON (EQUIPAMENTO.COD_EQUIPAMENTO=DESPADIC.COD_EQUIP) ');
    	 MDO.QAlx2.SQL.Add(' LEFT JOIN EQUIPE ON DESPADIC.COD_EQUIPE = EQUIPE.COD_EQUIPE ');
    	 MDO.QAlx2.SQL.Add(' LEFT JOIN SUBSERVICO ON SUBSERVICO.COD_SUBSERVICO = DESPADIC.COD_SERVICO ');
    	 MDO.QAlx2.SQL.Add(' WHERE (DESPADIC.GERADOR = ''ORDEM'') AND (DESPADIC.COD_GERADOR = :COD_GERADOR) ');
    	 MDO.QAlx2.ParamByName('COD_GERADOR').AsInteger := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
    	 MDO.QAlx2.SQL.Add('order by despadic.cod_despadic desc');
    	 MDO.QAlx2.Open;

        DMSERV.TOrd.Close;
        DMSERV.TOrd.SQL.Clear;
        DMSERV.TOrd.SQL.Add('SELECT * FROM ORDEM WHERE ORDEM.COD_ORDEM=:ORDEM');
        DMSERV.TOrd.ParamByName('ORDEM').AsInteger := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
        DMSERV.TOrd.Open;
        
        //Zerando os totalizadores
        XVLRTPROD := 0;
        XVLRTSERV := 0;
        XVLRTOTAL := 0;

        XQuantProdutosImprimir:=DMFINANC.TAlx.FieldByName('qtd').AsInteger;
        //Alex 02/05/2014: Verifica o tipo da pagina a ser usada na impressão
        //If (XQuantProdutosImprimir+XQuantServicosImprimir) >= 16 Then
        	XtipoImp:='INTEIRA';
        //Else
          //	XtipoImp:='MEIA';

        //Repassa para o componente de memo a observação da OS
        //MObsOrdem.Lines.Clear;
		 //MObsOrdem.lines.Add(DMServ.TOrd.FieldByName('OBSORDEM').AsString);
        With RvSystem1.BaseReport Do
        Begin
        	XQtdPagina:='';
        	//While PMenuRelOSAssist.Tag<2 do
           Begin
				 xContaLinha:=0;//Variavel para controle de linhas de produtos e serviços
                XtotalProd := 0;
                PMenuRelOSAssist.Tag:=PMenuRelOSAssist.Tag+1;
                //Imprime cabeçalho da Empresa
                ImpCompModelo18_Cabecalho;
                //Alex 25/04/2014: Cabeçalho da OS para clientes:
                ImpCompModelo18_Cabecalho_Cliente;
                XLinha := XLinha + 0.3;
                xcont := 1;
                //Alex 01/05/2014 - Se a tabela de produtos não estiver vazia, imprime os produtos
                If Not DMESTOQUE.TSlave.IsEmpty Then
                Begin
                    //Alex 01/05/2014 - Imprime o cabeçalho de produtos
                    ImpCompModelo18_Cabecalho_Produtos;
                    XLinha := XLinha + 0.3;                    
                    NewLine;
                    xcont := xcont + 1;
                    //Alex 01/05/2014 - Imprime todos os produtos da tabela
                    DMESTOQUE.TSlave.First;
                    While Not DMESTOQUE.TSlave.Eof Do
                    Begin
                        //Alex 01/05/2014 - Imprime a linha de produtos
                        ImpCompModelo18_ItemdeProduto;
                        XLinha := XLinha + 0.2;
                        xContaLinha:=xContaLinha+1;
                        xcont := xcont + 1;
                        DMESTOQUE.TSlave.Next;
                    End;
                End;
                NewLine;
                XLinha := XLinha + 0.3;                
           	 SetFont('Arial', 8);
                Bold := True;
            	 PrintLeft('Total de Produtos: R$', 5.9);
                PrintRight(FormatFloat('####,##0.00', XVLRTPROD), PageWidth - 0.4);
                NewLine;
                NewLine;
                //Alex 01/05/2014: dados de SERVIÇOS
                If Not MDO.QAlx2.IsEmpty Then
                Begin
                    ImpCompModelo18_Cabecalho_Servicos;
                    xcont := xcont + 1;
                    MDO.QAlx2.First;
                    While Not MDO.QAlx2.Eof Do
                    Begin
                        //Alex 01/05/2014 - Imprime itens de serviços
                        ImpCompModelo18_ItemdeServicos;
                        xContaLinha:=xContaLinha+1;
                        xcont := xcont + 1;
                        NewLine;
                        XLinha := XLinha + 0.2;                        
                        MDO.QAlx2.Next;
                    End;
                End;
                NewLine;
                XLinha := XLinha + 0.3;
                SetFont('Arial', 8);
                Bold := True;
            	 PrintLeft('Total de Serviços: R$', 5.9);
                PrintRight(FormatFloat('####,##0.00', XVLRTSERV), PageWidth - 0.4);
                NewLine;
                
                ImpCompModelo18_FormadePagamento;
                ImpCompModelo18_Rodape;

                If PMenuRelOSAssist.Tag=2 Then
                   Exit;//comando para sair do loop
                If XtipoImp='MEIA'
                Then Begin
                    //XLinha := (PageHeight / 2) + 0.1;
                    //MoveTo(0, PageHeight / 2);
                    //LineTo(PageWidth, PageHeight / 2);
                    //MoveTo(0, PageHeight / 2);
                    //LineTo(PageWidth, PageHeight / 2);
                    //MoveTo(0, PageHeight / 2);
                    //LineTo(PageWidth, PageHeight / 2);
				End
               Else Begin
        			XLinha := 0.3;
               	NewPage;
               End;
           End;
        End;
        
    Except
    End;
End;

procedure TFOrdemAssitenciaTecnica.RvSystem1BeforePrint(Sender: TObject);
begin
  inherited;
    With Sender As TBaseReport Do
    Begin
        SetPaperSize(DMPAPER_A4, 0, 0);
    End;
end;

procedure TFOrdemAssitenciaTecnica.RvSystem1Print(Sender: TObject);
begin
  inherited;
  ImpCompModelo18;
end;

procedure TFOrdemAssitenciaTecnica.RvSystem1PrintHeader(Sender: TObject);
begin
  inherited;
//ImpCompModelo18;
end;


procedure TFOrdemAssitenciaTecnica.EdDescTProdExit(Sender: TObject);
begin
  inherited;
   // Quando eh informado o valor de desconto do total dos produtos em "%" eh efetuado calculo para cada produto da ordem
{    If (EdtotalProd.ValueNumeric = 0) And (EdDescTProd.ValueNumeric <> 0)
        Then Begin
        Mensagem('A T E N Ç Ã O !', 'Não há produtos na Ordem para conceder desconto.', '', 1, 1, False, 'a');
        EdDescTProd.ValueNumeric := 0;
        Exit;
    End;
    CalcPercentProd;
    EfetuaDesconto('PRODUTO', 'PERCENTO');}
end;

procedure TFOrdemAssitenciaTecnica.EdtotalProdExit(Sender: TObject);
begin
  inherited;
{    If XVLRTPROD <> EdtotalProd.ValueNumeric
        Then Begin
        CalcPercent(0, XVLRTPROD - EdtotalProd.ValueNumeric, XVLRTPROD, 'D');
        DMServ.TOrd.edit;
        DMServ.TOrd.FieldByName('DESCPROD').AsCurrency := AlxPercento;
        EdDescTProd.ValueNumeric := AlxPercento;
    End
    Else Begin
        FiltraSlave;
        XCONTROLECONSULTA := true;
        DMServ.TOrd.edit;
        DMServ.TOrd.FieldByName('DESCPROD').AsCurrency := 0;
        EdtotalProd.ValueNumeric := XVLRTPROD;
        EdDescTProd.ValueNumeric := 0;
    End;
   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
    EdTotalOrd.ValueNumeric := EdTotalserv.ValueNumeric + EdtotalProd.ValueNumeric + EdTotDesp.ValueNumeric;
    EdTotalOrd.ValueNumeric := EdTotalOrd.ValueNumeric;
    CalcPercent(0, (XVLRTPROD + XVLRTSERV + EdTotDesp.ValueNumeric) - (EdtotalProd.ValueNumeric + EdTotalserv.ValueNumeric + EdTotDesp.ValueNumeric), (XVLRTPROD + XVLRTSERV + EdTotDesp.ValueNumeric), 'D');
    EdDescTOrdem.ValueNumeric := AlxPercento;}
end;

procedure TFOrdemAssitenciaTecnica.EdDescTServExit(Sender: TObject);
begin
  inherited;
{    If (EdTotalserv.ValueNumeric = 0) And (EdDescTServ.ValueNumeric <> 0)
        Then Begin
        Mensagem('A T E N Ç Ã O !', 'Não há serviços na ordem para conceder desconto!', '', 1, 1, False, 'a');
        EdDescTServ.ValueNumeric := 0;
        Exit;
    End;
    EfetuaDesconto('SERVICO', 'PERCENTO');}
end;

procedure TFOrdemAssitenciaTecnica.EdTotalservExit(Sender: TObject);
begin
  inherited;
{    If XVLRTSERV <> EdTotalserv.ValueNumeric
        Then Begin
        CalcPercent(0, XVLRTSERV - EdtotalServ.ValueNumeric, XVLRTSERV, 'D');
        DMServ.TOrd.edit;
        DMServ.TOrd.FieldByName('DESCSERV').AsCurrency := AlxPercento;
        EdDescTServ.ValueNumeric := AlxPercento;
    End
    Else Begin
        FiltraSlave;
        DMServ.TOrd.edit;
        DMServ.TOrd.FieldByName('DESCSERV').AsCurrency := 0;
        EdtotalServ.ValueNumeric := XVLRTSERV;
        EdDescTServ.ValueNumeric := 0;
    End;
   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
    EdTotalOrd.ValueNumeric := EdTotalserv.ValueNumeric + EdtotalProd.ValueNumeric + EdTotDesp.ValueNumeric;
    EdTotalOrd.ValueNumeric := EdTotalOrd.ValueNumeric;
    CalcPercent(0, (XVLRTPROD + XVLRTSERV + EdTotDesp.ValueNumeric) - (EdtotalProd.ValueNumeric + EdTotalserv.ValueNumeric + EdTotDesp.ValueNumeric), (XVLRTPROD + XVLRTSERV + EdTotDesp.ValueNumeric), 'D');
    EdDescTOrdem.ValueNumeric := AlxPercento; }
end;

Procedure TFOrdemAssitenciaTecnica.CalcPercentProd;
Begin
   // soh efetua calculo se tiver vendedor relacionado á ordem
    If XCOD_VENDEDOR > 0
        Then Begin
       // busca todos os produtos relacionados á ordem
        FiltraTabela(DMServ.TPOrd, 'ITPRODORD', 'COD_ORDEM', IntToStr(XCodOrdemOS), '');
        If Not DMServ.TPOrd.IsEmpty
            Then Begin
            DMServ.TPOrd.First;
            While Not DMServ.TPOrd.Eof Do
            Begin
                DMServ.TPOrd.Edit;
                DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency := (DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency - (DMSERV.TPOrd.FieldByName('COMISSAO').AsCurrency));
                DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency := (DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency - (DMSERV.TPOrd.FieldByName('TOTAL').AsCurrency));
                DMServ.TPOrd.Post;
           	 // proximo produto
                DMServ.TPOrd.Next;
            End;
        End;
   	 // filtra servicos da ordem de servico
        DMServ.Alx.Close;
        DMServ.Alx.SQL.Clear;
        DMServ.Alx.SQL.Add('select sum(itservord.comissao) as TOTAL_SERV from itservord');
        DMServ.Alx.SQL.Add('where itservord.cod_ordem = :codigo');
        DMServ.Alx.ParamByName('codigo').AsInteger := XCodOrdemOS;
        DMServ.Alx.Open;
    End;
End;


procedure TFOrdemAssitenciaTecnica.FrmObraEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    If (FrmObra.EDCodigo.SelLength > 0) And Not (KEY = 8) And Not (KEY = 13) Then
    Begin
        FrmObra.EDCodigo.Text := '';
    End;

    If (Length(FrmObra.EDCodigo.Text) = 3) And Not (KEY = 8) Then Begin
        FrmObra.EDCodigo.Text := FrmObra.EDCodigo.Text + '-';
        FrmObra.EDCodigo.SelStart := 4;
    End;
    If key = 13
        Then Begin
        If FrmObra.EDCodigo.Text <> '' Then
        Begin
          MDO.QConsulta.Close;
          MDO.QConsulta.SQL.Clear;
          MDO.QConsulta.SQL.Add('SELECT * FROM EQUIPAMENTO ');
          MDO.QConsulta.SQL.Add('WHERE UPPER (EQUIPAMENTO.PLACA) LIKE UPPER (' + #39 + FrmObra.EDCodigo.Text + #39 + ')  AND ((EQUIPAMEnTO.ATIVO=' + #39 + '1' + #39 + ') OR (EQUIPAMEnTO.ATIVO IS NULL) or (EQUIPAMEnTO.ATIVO=' + #39 + 'S' + #39 + ') ) '); //Jônatas 23/08/2013 - Alterado pois estava com erro
          MDO.QConsulta.SQL.Add('and equipamento.agulha=:OBRA AND EQUIPAMENTO.COD_CLIENTE=:CLIENTE');
          MDO.QConsulta.ParamByName('CLIENTE').AsInteger := XCodClienteOS;
          MDO.QConsulta.ParamByName('OBRA').AsString := 'OBRA';
          MDO.QConsulta.Open;
          MDO.QConsulta.First;
          if Not(MDO.QConsulta.Eof) Then
          Begin
            XCodObraOS:=MDO.QConsulta.FieldByName('COD_EQUIPAMENTO').AsInteger;
 		     FrmObra.EDCodigo.Text:=MDO.QConsulta.FieldByName('PLACA').AsString;
            FrmObra.EdDescricao.Text:=MDO.QConsulta.FieldByName('DESCRICAO').AsString;
          End Else
          	 FrmObra.EDCodigo.Text := IntToStr(XCodObraOS);
        End;
    End;
end;


procedure TFOrdemAssitenciaTecnica.FrmFormaPagamentoEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
Var codigo : String;
begin
  inherited;
    codigo := Trim(UpperCase(FrmFormaPagamento.EDCodigo.Text));
    If ( (codigo <> '') and ( key = 13)) Then
    Begin
     MDO.QConsulta.Close;
     MDO.QConsulta.SQL.Clear;
     MDO.QConsulta.SQL.Add('SELECT * FROM FORMPAG WHERE FORMPAG.COD_INTERNO =:CODIGO');
     MDO.QConsulta.ParamByName('CODIGO').AsInteger:= StrToInt(codigo);
     MDO.QConsulta.Open;
     MDO.QConsulta.First;
     If Not(MDO.QConsulta.Eof) Then
     Begin
       XCodFormaPagamentoOS := MDO.QConsulta.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormaPagamento.EDCodigo.Text := MDO.QConsulta.FieldByName('COD_INTERNO').AsString;
       FrmFormaPagamento.EdDescricao.Text := MDO.QConsulta.FieldByName('DESCRICAO').AsString;
     End Else
     Begin
       FrmFormaPagamento.EDCodigo.Text := IntToStr(XCodFormaPagamentoOS);
     End;
       FrmFormaPagamento.Repaint;
    End;
end;

procedure TFOrdemAssitenciaTecnica.FrmVendedorEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
Var codigo : String;
begin
  inherited;
{    codigo := Trim(UpperCase(FrmVendedor.EDCodigo.Text));
    If ( (codigo <> '') and ( key = 13)) Then
    Begin
     MDO.QConsulta.Close;
     MDO.QConsulta.SQL.Clear;
     MDO.QConsulta.SQL.Add('select funcionario.cod_interno, pessoa.nome from funcionario');
     MDO.QConsulta.SQL.Add('left join pessoa on funcionario.cod_pessoa=pessoa.cod_pessoa where funcionario.cod_interno=:codigo');     
     MDO.QConsulta.ParamByName('CODIGO').AsInteger:= StrToInt(codigo);
     MDO.QConsulta.Open;
     MDO.QConsulta.First;
     If Not(MDO.QConsulta.Eof) Then
     Begin
       XcodVendedorOS := MDO.QConsulta.FieldByName('COD_INTERNO').AsInteger;
       FrmVendedor.EDCodigo.Text := MDO.QConsulta.FieldByName('COD_INTERNO').AsString;
       FrmVendedor.EdDescricao.Text := MDO.QConsulta.FieldByName('NOME').AsString;
     End Else
     Begin
       FrmVendedor.EDCodigo.Text := IntToStr(XcodVendedorOS);
     End;
       FrmVendedor.Repaint;
    End;
}
end;

procedure TFOrdemAssitenciaTecnica.FrmFormPagExit(Sender: TObject);
begin
  inherited;
   EscreveContas;
end;

procedure TFOrdemAssitenciaTecnica.BtnRecorrenciaClick(Sender: TObject);
begin
  inherited;
  AbrirForm(TFRecorrenciaOs, FRecorrenciaOs, 0);
end;

Function TFOrdemAssitenciaTecnica.CancelLanOrd(CodPedido: String): Boolean;
Var
    xcod_chequerec: String;
Begin
   //Inicia resultado como falso
    Result := True;

 //filtra loja para capturar as configurações
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
 //filtra DADOS DA VIEW
    DMServ.WOrdemDesp.Close;
    DMServ.WOrdemDesp.SQL.Clear;
    DMServ.WOrdemDesp.SQL.Add('SELECT * FROM vwordem WHERE COD_ORDEM=:CODIGO');
    DMServ.WOrdemDesp.ParamByName('CODIGO').AsString := CodPedido;
    DMServ.WOrdemDesp.Open;
    If DMServ.WOrdemDesp.IsEmpty
        Then Begin
        MessageDlg('O Registro de ordem não foi encontrado', mtWarning, [mbOK], 0);
        Exit;
    End;
    FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', CodPedido, '');
    FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '');

    If DMServ.TOrd.FieldByName('TipoPag').AsString <> 'Multiplo'
        Then Begin
    //SE A FORMA DE PAGAMENTO FOR DIFERENTE DE MULTIPLO

  //CONTROLE QUE DELETA TODA A MOVIMENTAÇÃO QUANDO UMA ORDEM É FECHADO COM CHEQUE E É À VISTA.

        FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')');

        XCampo := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

       //seleciona cheques para serem apagados
        DMCAIXA.TAlx.close;
        DMCAIXA.TAlx.SQL.Clear;
        DMCAIXA.TAlx.SQL.Add('select * from chequerec');
        DMCAIXA.TAlx.SQL.Add('where chequerec.cod_movbanco = :CODMOV');
        DMCAIXA.TAlx.ParamByName('CODMOV').AsString := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;
        DMCAIXA.TAlx.Open;

        If Not DMCAIXA.TAlx.IsEmpty
            Then Begin
            xcod_chequerec := DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
         //seleciona lançamentos de caixa para serem deletados
            DMCAIXA.TLanCaixa.Close;
            DMCAIXA.TLanCaixa.SQL.Clear;
            DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
            DMCAIXA.TLanCaixa.SQL.Add('where ((lancaixa.tipogerador=' + #39 + 'LCHR' + #39 + ') or (lancaixa.tipogerador=' + #39 + 'DCHR' + #39 + ') or (lancaixa.tipogerador=' + #39 + 'MCHR' + #39 + ') AND (lancaixa.cod_gerador =:CODLANCA))');
            DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString := DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
            DMCAIXA.TLanCaixa.Open;
            DMCAIXA.TLanCaixa.First;

         //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
            If (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) And (FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')') = false)
                Then Begin //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
                LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' Cli. ' + DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST' + DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');

            End;


         //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
            If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
                Then Begin
                While Not DMCAIXA.TLanCaixa.Eof Do
                Begin
                    DMCAIXA.TLanCaixa.Delete;
                    DMCAIXA.TLanCaixa.ApplyUpdates;

                End;
            End;

         //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
            If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + xcod_chequerec + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')') = true
                Then Begin
                DMBANCO.TMovBanco.Delete;
                DMBANCO.TMovBanco.ApplyUpdates;
            End;


         //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
            If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMServ.TOrd.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'ORDEM' + #39 + ')') = true
                Then Begin
                DMBANCO.TMovBanco.Delete;
                DMBANCO.TMovBanco.ApplyUpdates;
            End;


         //apaga cheques ligados ao pedido de venda
            If Not DMCAIXA.TAlx.IsEmpty
                Then Begin
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
            End;
        End;

     //VERIRIFA SE A OS FOI À VISTA
        If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA'
            Then Begin
         //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
            DMCAIXA.TLanCaixa.Close;
            DMCAIXA.TLanCaixa.SQL.Clear;
            DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR=' + #39 + 'ORDSERV' + #39 + ') AND (COD_GERADOR=:CODPEDIDO)');
            DMCAIXA.TLanCaixa.ParamByName('CODPEDIDO').AsString := CodPedido;
            DMCAIXA.TLanCaixa.Open;
            DMCAIXA.TLanCaixa.First;
            If Not DMCAIXA.TLanCaixa.IsEmpty
                Then Begin //se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
                While Not DMCAIXA.TLanCaixa.Eof Do Begin
                    If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' Cli. ' + DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST' + DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1') = True Then
                        MDO.Transac.CommitRetaining
                   //DMCAIXA.IBT.CommitRetaining
                    Else
                        Result := False;
                    DMCAIXA.TLanCaixa.Next;
                End;
            End;


            If DMServ.TOrd.FieldByName('TIPOPAG').AsString = 'Cartão'
                Then Begin
                If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTPROD' + #39 + ')') = true
                    Then Begin
                    DMBANCO.TMovBanco.Delete;
                    DMBANCO.TMovBanco.ApplyUpdates;
                End;
                If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMServ.WOrdemDesp.FieldByname('COD_ORDEM').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'TOTSERV' + #39 + ')') = true
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
            If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', '', ' (TIPOGERADOR = ' + #39 + 'ORD' + #39 + ') AND (COD_GERADOR=' + CodPedido + ')') = True
                Then Begin //se foi encontrado alguma conta
             //FILTRA PARCELAS
                If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_CTARECEBER', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsString, '') = True
                    Then Begin //se foi encontrado alguma conta
                 //PARA CADA PARCELA VERIFICA SE ESTA FECHADA
                    DMCONTA.TParcCR.First;
                    While Not DMCONTA.TParcCR.Eof Do
                    Begin
                     //deleta lançamentos de caixa caso seja forma de pagamento carteira.
                        If DMServ.WOrdemDesp.FieldByName('TIPOPAG').AsString = 'Carteira'
                            Then Begin
                            FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '', '(lancaixa.tipogerador=' + #39 + 'CTAR' + #39 + ') AND (lancaixa.cod_gerador =' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39')');
                            While Not DMCAIXA.TLanCaixa.Eof
                                Do Begin
                                If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. O.S. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' Cli. ' + DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TOS', StrToInt(CodPedido), 'Carteira', 'S', 'EST' + DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1') = True Then
                                    MDO.Transac.CommitRetaining
                                //DMCAIXA.IBT.CommitRetaining
                                Else
                                    Result := False;
                                DMCAIXA.TLanCaixa.Next;
                            End;
                        End;

                      //filtra movimentação bancaria da parcela em questão
                        FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + IntToStr(DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsInteger) + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39')');
                      //filtra cheque da parcela
                        FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', '', '(COD_MOVBANCO = ' + #39 + IntToStr(DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger) + #39 + ')');

                      //variável utilizada para apos apagar a movimentação bancaria sejam apagados os cheques ligados as parcelas
                        XCampo := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;

                      //filtra os lançamentos de caixa ligados a parcela
                        FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', '', '(lancaixa.tipogerador=' + #39 + 'LCHR' + #39 + ') or (lancaixa.tipogerador=' + #39 + 'DCHR' + #39 + ') or (lancaixa.tipogerador=' + #39 + 'MCHR' + #39 + ') AND (lancaixa.cod_gerador =' + #39 + IntToStr(DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsInteger) + #39')');

                        If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' (TIPOGERADOR=' + #39 + 'CTARCH' + #39 + ') AND (COD_GERADOR=' + DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsString + ')') = True
                            Then Begin
                            //se o codigo de abertura do caixa atual for diferente do codigo de lançamento de caixa da ordem e este cheque foi movimentado em caixa faz o estorno
                            If (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption) And (FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')') = false)
                                Then Begin //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
                                LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. fech. Ped. ' + DMSAIDA.TPedV.FieldByName('NUMPED').AsString + ' Cli. ' + DMSAIDA.WPedV.FieldByName('NOMECLI').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TPEDV', StrToInt(CodPedido), 'Carteira', 'S', 'EST' + DMSAIDA.TPedV.FieldByName('NUMPED').AsString, Date(), '1');
                            End;
                            DMCAIXA.IBT.CommitRetaining;
                            MDO.Transac.CommitRetaining;

                            DMCAIXA.TLanCaixa.First;

                            While Not DMCAIXA.TLanCaixa.Eof Do
                                //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
                                If (DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption) And (DMCAIXA.TLanCaixa.FieldByName('COD_GERADOR').AsString = DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString)
                                    Then Begin
                                    If ((DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'LCHR') Or (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'MCHR') Or (DMCAIXA.TLanCaixa.FieldByName('TIPOGERADOR').AsString = 'DCHR'))
                                        Then Begin
                                        DMCAIXA.TLanCaixa.Delete;
                                        DMCAIXA.TLanCaixa.ApplyUpdates;
                                    End;
                                End
                                Else
                                    dmcaixa.TLanCaixa.Next;

                            DMCAIXA.IBT.CommitRetaining;
                        End;

                            //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em conta corrente
                        If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + IntToStr(DMBANCO.TChequeRec.FieldByname('COD_CHEQUEREC').AsInteger) + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')') = true
                            Then Begin
                            DMBANCO.TMovBanco.First;
                            While Not DMBANCO.TMovBanco.Eof Do
                                DMBANCO.TMovBanco.Delete;
                            DMBANCO.TMovBanco.ApplyUpdates;
                                   //end;
                            DMBANCO.TMovBanco.Next;
                        End;
                        DMBANCO.IBT.CommitRetaining;

                            //DELETA MOVIMENTAÇÕES BANCARIAS DESTE PEDIDO caso tenha sido movimentado em caixa
                        If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', '(COD_GERADOR = ' + #39 + DMCONTA.TParcCR.FieldByname('COD_PARCELACR').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + ')') = true
                            Then Begin
                            DMBANCO.TMovBanco.Delete;
                            DMBANCO.TMovBanco.ApplyUpdates;
                        End;
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
        DMCAIXA.TLanCaixa.SQL.Add('where (lancaixa.tipogerador=' + #39 + 'ORDEMENT' + #39 + ') AND (lancaixa.cod_gerador =:CODLANCA)');
        DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString := DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
        DMCAIXA.TLanCaixa.Open;
        DMCAIXA.TLanCaixa.First;

        //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
        If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption = false
            Then Begin //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
            LanCaixa(-1, DateToStr(Date()), DMCAIXA.TLanCaixa.fieldByName('COD_PLNCTAFIL').AsInteger, 'Cancel. fech. Ped. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' Cli. ' + DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEMENTEST', StrToInt(CodPedido), 'Carteira', 'S', 'EST' + DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
        End;


        //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
        If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
            Then Begin
            While Not DMCAIXA.TLanCaixa.Eof Do
            Begin
                DMCAIXA.TLanCaixa.Delete;
                DMCAIXA.TLanCaixa.ApplyUpdates;

            End;
        End;

       //TROCO - Verifica extorno para troco
       //verifica se foi dado lançamentos de troco
       //seleciona lançamentos de caixa para serem deletados
        DMCAIXA.TLanCaixa.Close;
        DMCAIXA.TLanCaixa.SQL.Clear;
        DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA');
        DMCAIXA.TLanCaixa.SQL.Add('where (lancaixa.tipogerador=' + #39 + 'ORDEMTRO' + #39 + ') AND (lancaixa.cod_gerador =:CODLANCA)');
        DMCAIXA.TLanCaixa.ParamByName('CODLANCA').AsString := DMCAIXA.TAlx.FieldByName('COD_CHEQUEREC').AsString;
        DMCAIXA.TLanCaixa.Open;
        DMCAIXA.TLanCaixa.First;

        //se o codigo de abertura do caixa autal for diferente do codigo de lançamento de caixa do pedido e este cheque foi movimentado em caixa faz o estorno
        If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString <> FMenu.LABCAIXA.Caption = false
            Then Begin //só faz o estorno se foi movimentado em caixa, caso contrário não faz estorno
            LanCaixa(-1, DateToStr(Date()), DMCAIXA.TLanCaixa.fieldByName('COD_PLNCTAFIL').AsInteger, 'Cancel. fech. Ped. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' Cli. ' + DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ORDEMTROEST', StrToInt(CodPedido), 'Carteira', 'S', 'EST' + DMServ.TOrD.FieldByName('NUMERO').AsString, Date(), '1');
        End;
        
        //se o codigo de abertura de caixa atual for igual ao codigo de abertura de caixa do lançamento do pedido apaga os lançamentos
        If DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString = FMenu.LABCAIXA.Caption
            Then Begin
            While Not DMCAIXA.TLanCaixa.Eof Do
            Begin
                DMCAIXA.TLanCaixa.Delete;
                DMCAIXA.TLanCaixa.ApplyUpdates;
            End;
        End;

        MessageDlg('OS LANÇAMENTO EFETUADOS EM CHEQUE E A PRAZO NÃO SERÃO CANCELADOS', mtWarning, [mbOK], 0);
    End;
    Try
        DMCONTA.IBT.CommitRetaining;
        DMBANCO.IBT.CommitRetaining;
        DMCAIXA.IBT.CommitRetaining;
        MDO.Transac.CommitRetaining;
    Except
    End;
End;

procedure TFOrdemAssitenciaTecnica.BtnCancelamentosClick(Sender: TObject);
Var XCodPedidoTroca: String;
begin
    FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');
    FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '');

    If ((DMServ.TOrd.FieldByName('numfiscal').AsString <> '0') And (DMServ.TOrd.FieldByName('numfiscal').AsString <> '')) or (DMServ.TFiscOrd.FieldByName('NFSE_STATUSGERAL').AsString='1')
        Then Begin
        Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Esta O.S. Passou por uma impressão fiscal e não pode mais ter seu fechamento cancelado.', '', 1, 1, False, 'a');
        Exit;
    End;

    If DMServ.WOrdemDesp.FieldByName('STATUS').AsString <> 'FECHADO'
        Then Begin
        Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'A ORDEM DE SERVIÇO NÃO ENCONTRA-SE FECHADA!' + #13 + 'PRESSIONE O BOTÃO CONSULTAR PARA ALTERAR AS INFORMAÇÕES.', '', 1, 1, False, 'a');
        Exit;
    End;

 //EFETUA CONTROLE DE ACESSO
    If ControlAccess('CANCPEDFECH', 'M') = False Then
        Exit;

    If Mensagem('A T E N Ç Ã O', 'DESEJA EFETUAR O CANCELAMENTO DA ORDEM DE SERVIÇO:' + #13 + 'Nº ' + DMServ.WOrdemDesp.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2
        Then Begin

       // verifica se o caixa estah aberto
        If DMCAIXA.VerifAbCaixa = false
            Then Begin
            Mensagem('   A T E N Ç Ã O   ', 'CAIXA FECHADO. A ORDEM DE SERVIÇO NÃO PODE SER CANCELADA.', '', 1, 1, false, 'I');
            Exit;
        End;

        XCodPedidoTroca := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString;

        If FiltraTabela(DMServ.WOrdemDesp, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '') = True
            Then Begin
           //REGISTRA COMANDO DO USUARIO
            Registra('ORDEM', 'C. FECH ORD', DMServ.WOrdemDesp.FieldByName('DTABERT').AsString, 'Nº ' + DMServ.TOrd.FieldByName('NUMERO').AsString + '-' + DMServ.WOrdemDesp.FieldByName('CLIENTE').AsString, 'Vlr:' + DMServ.TOrd.FieldByName('totord').AsString + '-' + DMServ.WOrdemDesp.FieldByName('equipamento').AsString);
            If DMServ.WOrdemDesp.FieldByName('TIPOPAG').AsString = 'Multiplo'
                Then Begin
                DMServ.TOrd.EDIT;
                DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
                DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                DMServ.TOrd.Post;
                Try
                    DMESTOQUE.TransacEstoque.CommitRetaining;
                    DMENTRADA.IBT.CommitRetaining;
                    DMSAIDA.IBT.CommitRetaining;
                    MessageDlg('Esta Ordem foi fechada com a opção Multipla para pagamento. Ela será gravada com status de aberto, porém seus lançamentos financeiros não serão cancelados.', mtWarning, [mbOK], 0);
                Except
                    DMESTOQUE.TransacEstoque.RollbackRetaining;
                    DMENTRADA.IBT.RollbackRetaining;
                    DMSAIDA.IBT.RollbackRetaining;
                End;
                If FiltraTabela(DMServ.WOrdemDesp, 'VWORDEM', 'COD_ORDEM', XCodPedidoTroca, '') = True
                    Then Begin
                    BtnConsultar.Click;
                End;
            End
            Else Begin
                If CancelLanOrd(XCodPedidoTroca) = True
                    Then Begin //Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
                    DMServ.TOrd.EDIT;
                    DMServ.TOrd.FieldByName('STATUS').AsString := 'ABERTO';
                    DMServ.TOrd.FieldByName('EDIT').AsString := '0';
                    DMServ.TOrd.Post;
                End;

                try
                    //Edmar - 18/02/2015 - Ao cancelar o fechamento, verifica se o cliente possuí um valor de crédito em seu nome
                    if FiltraTabela(DMFINANC.TCredito, 'CREDITO', 'COD_GERADOR', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, ' AND (TIPOGERADOR = ''LANCTRC'') ') then
                    begin
                       //filtra a view do cliente para buscar o codigo da pessoa
                       FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.WOrdemDesp.FieldByName('COD_CLIENTE').AsString, '');

                       //atualiza o credito da pessoa se o valor atribuido na pessoa for maior ou igual ao valor do credito real
                        DMPESSOA.TALX.Close;
                       DMPESSOA.TALX.SQL.Clear;
                       DMPESSOA.TALX.SQL.Add(' UPDATE PESSOA SET PESSOA.VLRCREDITO = PESSOA.VLRCREDITO - :VALOR WHERE (PESSOA.COD_PESSOA = :PESSOA) AND (PESSOA.VLRCREDITO >= :VALOR) ');
                       DMPESSOA.TALX.ParamByName('VALOR').AsCurrency := DMFINANC.TCredito.FieldByName('VALOR').AsCurrency;
                       DMPESSOA.TALX.ParamByName('PESSOA').AsInteger := DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger;
                       DMPESSOA.TALX.ExecSQL;

                       //Deleta o registro de crédito da ordem de serviço geradora
                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' DELETE FROM CREDITO WHERE (CREDITO.COD_CREDITO = :CODIGO) ');
                       MDO.Query.ParamByName('CODIGO').AsInteger := DMFINANC.TCredito.FieldByName('COD_CREDITO').AsInteger;
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
                
                DMServ.IBT.CommitRetaining;
                DMServ.WOrdemDesp.Close;
                DMServ.WOrdemDesp.SQL.Clear;
                DMServ.WOrdemDesp.SQL.Add('select * from vwordem where vwordem.cod_ordem=:ordem');
                DMServ.WOrdemDesp.ParamByName('ordem').AsInteger := StrToInt(XCodPedidoTroca);
                DMServ.WOrdemDesp.Open;
    			 DBGridConsulta.DataSource := DMServ.DWOrdemDesp;
                DMServ.WOrdemDesp.first;
                if not(DMServ.WOrdemDesp.Eof)
                Then Begin
                  BtnConsultar.Click;
               End;
            End;
        End
        Else Begin
            Exit;
        End;
    End;
end;

procedure TFOrdemAssitenciaTecnica.VisualizarDanfe1Click(Sender: TObject);
begin
  inherited;
   DMESTOQUE.Alx5.Close;
   DMESTOQUE.Alx5.SQL.Clear;
   DMESTOQUE.Alx5.SQL.Add('select docfisord.numdocfis from docfisord where docfisord.cod_ordem = :ordem');
   DMESTOQUE.Alx5.ParamByName('ordem').AsInteger := DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger;
   DMESTOQUE.Alx5.Open;
   if DMESTOQUE.Alx5.IsEmpty then
   begin
     Mensagem('A T E N Ç Ã O ', 'Essa Nfe ainda não foi gerada. Escolha uma ordem válida.', '', 1,1, false, 'A');
     Exit;
   end else
   begin
    FMzrNfe := TFMzrNFe.Create(FMzrNfe);
    FMzrNfe.SetInFiscal('', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger, 0, 'ORDEM', '', 1, '', '', '', 0, 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    FMzrNfe.DanfeVisualizar;
    FMzrNfe := Nil;
   end;
end;

procedure TFOrdemAssitenciaTecnica.mnuReimprimirNfeClick(Sender: TObject);
begin
  inherited;

If DMServ.WOrdemDesp.FieldByName('STATUS').AsString = 'ABERTO'
    Then Begin
    Mensagem('OPÇÃO BLOQUEADA', 'PARA EFETUAR A IMPRESSÃO FISCAL O PEDIDO DEVE ESTAR FECHADO.' + #13 + 'Antes de fechar confira todas as informações do pedido.', '', 1, 1, False, 'a');
    Exit;
End;
If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, '') = True
    Then Begin
    If Mensagem('A T E N Ç Ã O', 'DESEJA IMPRIMIR O DOCUMENTO FISCAL PARA O PEDIDO:' + #13 + 'Nº ' + DMServ.WOrdemDesp.FieldByName('NUMERO').AsString + '?', '', 2, 3, False, 'c') = 2
        Then Begin
        FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');

        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF')
        	Or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
				OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe')
   				OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe')
            Then Begin
            DMServ.TFiscOrd.Close;
            DMServ.TFiscOrd.SQL.Clear;
            DMServ.TFiscOrd.SQL.Add(' Select * from docfisord where docfisord.cod_ordem=:Codigo ');
            DMServ.TFiscOrd.ParamByName('Codigo').AsInteger := DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsInteger;
            DMServ.TFiscOrd.Open;
            If Not DMServ.TFiscOrd.IsEmpty
                Then Begin
                If (DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger = 1) Or (DMServ.TFiscOrd.FieldByName('NFESTATUS').AsInteger = 3)
                    Then Begin
                   //Se Documento Fiscal Enviado ou Cancelado
                    MessageDlg('Esta O.S já gerou uma Nota Fiscal Eletrônica enviada e recebida pelo sefaz. Sendo assim não pode mais ser transmitida.', mtWarning, [mbOK], 0);
                    Exit;
                End;
            End;

          //REIMPRIME NOTA FISCAL
            FMenu.TIPOREL := 'RNF';
            If MessageDlg('Impressora NF Pronta?', mtConfirmation, [mbYes, mbNo], 0) = mryes
                Then Begin
                FMenu.TIPOREL := 'NF';
                Registra('ORDEM DE SERVIÇO', 'NF', DMServ.WOrdemDesp.FieldByName('dtabert').AsString, 'Nº ' + DMServ.WOrdemDesp.FieldByName('NUMERO').AsString, 'Valor: ' + DMServ.WOrdemDesp.FieldByName('total').AsString);
            End;
        End;
    End;
End;

end;

procedure TFOrdemAssitenciaTecnica.RecuperadadosdaNFClick(Sender: TObject);
Var XChaveNfe: String;
begin
    If FiltraTabela(DMServ.TFiscOrd, 'docfisord', 'cod_ordem', DMServ.WOrdemDesp.FieldByName('cod_ordem').AsString, '') = True
        Then Begin
        If DMServ.TFiscOrd.FieldByName('nfestatus').AsInteger = 2
            Then Begin
            If Mensagem('Confirmação do usuário', 'Deseja realmente Retornar os dados para a Ordem de Número ' + DMServ.WOrdemDesp.FieldByName('numero').AsString + '?', '', 2, 3, False, 'c') = 2
                Then Begin
                If InputQuery('Chave de Acesso', 'Informe a Chave de Acesso da NFe para recuperar os Dados', XChaveNfe) = True
                    Then Begin
                    if DMServ.TFiscOrd.FieldByName('MODELONF').AsString = '65' then
                    	XEmiteNFCe := True
                    else
                    	XEmiteNFCe := False;
                    FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
                    FMzrNfe.SetInFiscal(XChaveNfe, DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger, DMServ.WOrdemDesp.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'RETORNADADOS', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                    FMzrNfe.ShowModal;
                End;
            End;
        End
        Else Begin
            MessageDlg('Os dados não podem ser recuperados devido ao fato que a OS esta marcada como NFe enviada e homologada' + #13 + #10 + 'NFeStatus = 1 ou 3', mtWarning, [mbOK], 0);
        End;
    End;
end;

procedure TFOrdemAssitenciaTecnica.mnuCancelamentodeNFEClick(
  Sender: TObject);
begin
  inherited;
    If DMServ.WOrdemDesp.FieldByName('STATUS').AsString = 'CANCELADO'
        Then Begin
        MessageDlg('NFe já cancelada', mtWarning, [mbOK], 0);
    End
    Else Begin
   	 if DMServ.WOrdemDesp.FieldByName('numfiscal').AsString = '' then
        begin
          MessageDlg('Documento fiscal da Ordem '+DMServ.WOrdemDesp.FieldByName('NUMERO').AsString+' não foi emitido corretamente.', mtWarning, [mbOK], 0);
          Exit;
        end;
        If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente cancelar a Nota Fiscal Eletrônica Nº ' + DMServ.WOrdemDesp.FieldByName('numfiscal').AsString + '?', '', 2, 3, False, 'c') = 2
            Then Begin
       	 if FiltraTabela(DMServ.TFiscOrd, 'DOCFISORD', 'COD_ORDEM', DMServ.WOrdemDesp.FieldByName('COD_ORDEM').AsString, ' AND (MODELONF = ''65'')') then
            	XEmiteNFCe := True
            else
           	XEmiteNFCe := False;
            FMzrNfe := TFMzrNFe.Create(FMzrNfe); //cria o formulario de transmissão da Nfe
            FMzrNfe.SetInFiscal('', DMServ.WOrdemDesp.FieldByName('cod_ordem').AsInteger, DMServ.WOrdemDesp.FieldByName('cod_cliente').AsInteger, 'ORDEM', 'CANCELAR', 1, '', '', '', DMServ.WOrdemDesp.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            FMzrNfe.ShowModal;
        End;
    End;

end;

{
MoveTo(0.3, XLinha); //Xlinha = 1.5
LineTo(PageWidth - 0.5, XLinha);
}
procedure TFOrdemAssitenciaTecnica.ImpCompModelo18_Rodape;
begin
   with RvSystem1.BaseReport do
   begin
       SetFont('Arial', 10);
       Bold := True;
       NewLine;
       NewLine;
       PrintLeft('Check-in', 0.3);//PROBREC
       PrintLeft('Observação', PageWidth / 2);//OBSERVACAO
       NewLine;

       XLinha := XLinha + 1.0;

       //O CHECKIN E A OBSERVAÇÃO VAI TER QUATRO LINHAS E FONTE 8
       SetFont('Arial', 8);
       Bold := False;       
       //imprime as linhas do checkin e da observação (copia 43 caracteres por linha)
       PrintLeft(Copy(DMSERV.TOrd.FieldByName('PROBREC').AsString, 0, 57), 0.3);//CHECK-IN
       PrintLeft(Copy(DMSERV.TOrd.FieldByName('OBSERVACAO').AsString, 0, 57), PageWidth / 2);//OBSERVACAO
       NewLine;
       //
       PrintLeft(Copy(DMSERV.TOrd.FieldByName('PROBREC').AsString, 58, 57), 0.3);//CHECK-IN
       PrintLeft(Copy(DMSERV.TOrd.FieldByName('OBSERVACAO').AsString, 58, 57), PageWidth / 2);//OBSERVACAO
       NewLine;
       //
       PrintLeft(Copy(DMSERV.TOrd.FieldByName('PROBREC').AsString, 115, 57), 0.3);//CHECK-IN
       PrintLeft(Copy(DMSERV.TOrd.FieldByName('OBSERVACAO').AsString, 115, 57), PageWidth / 2);//OBSERVACAO
       NewLine;
       //
       PrintLeft(Copy(DMSERV.TOrd.FieldByName('PROBREC').AsString, 172, 57), 0.3);//CHECK-IN
       PrintLeft(Copy(DMSERV.TOrd.FieldByName('OBSERVACAO').AsString, 172, 57), PageWidth / 2);//OBSERVACAO
       NewLine;                     

       PrintLeft  ('____________________________________________________________', 0.3);
       PrintCenter('____________________________________________________________', PageWidth / 2);
       PrintRight ('____________________________________________________________', PageWidth - 0.3);
       
       NewLine;
       NewLine;
       NewLine;
       NewLine;
       NewLine;       
       Bold := True;       
       PrintCenter('_________________________________________________', PageWidth / 2);
       xcont := xcont + 1;
       NewLine;

       PrintCenter(MDO.QAlx1.FieldByName('NOME').AsString, PageWidth / 2);
   end;
end;

procedure TFOrdemAssitenciaTecnica.BtnServicoClick(Sender: TObject);
begin
  inherited;
   XCOD_SERVICOCLASSIFICACAO := -1;

   FiltraTabela(DMServ.TSubserv, 'SUBSERVICO', '', '', '');
   if AbrirForm(TFServico, FServico, 1) = 'Selected' then
   begin
       XCOD_SERVICOCLASSIFICACAO := DMServ.WSubServ.FieldByName('COD_SUBSERVICO').AsInteger;
       EscreveClassificacao(XCOD_SERVICOCLASSIFICACAO);  
   end
   else begin
       EdClassificacao.Text := '';
   end;
end;

procedure TFOrdemAssitenciaTecnica.EscreveClassificacao(XCodSubservico: Integer);
begin
   try
       if FiltraTabela(DMServ.TSubserv, 'SUBSERVICO', 'COD_SUBSERVICO', IntToStr(XCodSubservico), '') then
       begin
           EdClassificacao.Text := DMServ.TSubserv.FieldByName('DESCRICAO').AsString;
           edCustoTerceiros.ValueNumeric := 0;
           EValorServ.ValueNumeric := DMServ.TSubserv.FieldByName('VLRFINAL').AsCurrency;
           EQtdServ.ValueNumeric := 1;
           ETotalServItem.ValueNumeric := EValorServ.ValueNumeric;
       end
       else
           MessageDlg('Serviço não foi localizado.', mtWarning, [mbOK], 0);
   except
   end;
end;

function TFOrdemAssitenciaTecnica.MostraPainelGenerico: Boolean;
begin
   Result := False;
   //GridGenerico.DataSource := DMMACS.DSALX;

   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   
   if XTipo = Obra then
   begin
       DMMACS.TALX.SQL.Add(' SELECT COD_EQUIPAMENTO, DESCRICAO FROM EQUIPAMENTO ');
       DMMACS.TALX.SQL.Add(' WHERE (EQUIPAMENTO.AGULHA = ''OBRA'') AND (EQUIPAMENTO.COD_CLIENTE = :CLIENTE) ');
       DMMACS.TALX.SQL.Add(' ORDER BY DESCRICAO ');
       DMMACS.TALX.ParamByName('CLIENTE').AsInteger := XCodClienteOS;
       DMMACS.TALX.Open;

       GridGenerico.Columns[1].Width := 400;

       pGenerico.Top := 119;
       pGenerico.Left := 457;

       Result := True;
   end;
   if (XTipo = EquipamentoProduto) OR (XTipo = EquipamentoServico) then
   begin
       DMMACS.TALX.SQL.Add(' SELECT COD_EQUIPAMENTO, DESCRICAO FROM EQUIPAMENTO ');
       DMMACS.TALX.SQL.Add(' WHERE (EQUIPAMENTO.AGULHA = ''EQUIP'') AND (EQUIPAMENTO.COD_CLIENTE = :CLIENTE) ');
       DMMACS.TALX.SQL.Add(' ORDER BY DESCRICAO ');       
       DMMACS.TALX.ParamByName('CLIENTE').AsInteger := XCodClienteOS;
       DMMACS.TALX.Open;

       GridGenerico.Columns[1].Width := 400;
   end;
   if (XTipo = EquipamentoProduto) then
   begin
       pGenerico.Top := 309;
       pGenerico.Left := 366;
          
       Result := True;
   end;

   if (XTipo = EquipamentoServico) then
   begin
       pGenerico.Top := 309;
       pGenerico.Left := 538;
       
       Result := True;
   end;

   if (XTipo = Servico) then
   begin
       DMMACS.TALX.SQL.Add(' SELECT SUBSERVICO.COD_SUBSERVICO, SUBSERVICO.DESCRICAO, SUBSERVICO.VLRFINAL FROM SUBSERVICO ');
       DMMACS.TALX.Open;

       GridGenerico.Columns[1].Width := 300;
       GridGenerico.Columns[2].Width := 100;

       pGenerico.Top := 309;
       pGenerico.Left := 42;

       Result := True;
   end;
         
   GridGenerico.Columns[0].Visible := False;

   pGenerico.Visible := True;
   pGenerico.BringToFront;
end;

procedure TFOrdemAssitenciaTecnica.EscondePainelGenerico;
begin
   //
   pGenerico.Visible := False;
   pGenerico.SendToBack;
end;

function TFOrdemAssitenciaTecnica.BuscaGenerica(XTermo: String; XCampoPesquisa: String): Integer;
begin
   try
       if DMMACS.TALX.Locate(XCampoPesquisa, XTermo, [loCaseInsensitive, loPartialKey])
       then begin
           Result := StrToInt(GridGenerico.Columns[0].Field.Text);
       end
       else Begin
           if  StrToInt(GridGenerico.Columns[0].Field.Text)>0 Then
               Result := StrToInt(GridGenerico.Columns[0].Field.Text)
           else
               Result := -1;
       End;
   Except
       Result := -1;
   End;

//   Result := StrToInt(GridGenerico.Columns[0].Field.Text);
end;

procedure TFOrdemAssitenciaTecnica.FrmObraEdDescricaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   xTipo := Obra;
   if not pGenerico.Visible then
       MostraPainelGenerico;
    
   if (Key = VK_ESCAPE) OR (FrmObra.EdDescricao.Text = '') then
   begin
       EscondePainelGenerico;
       FrmObra.EdDescricao.Text := '';
       Exit;
   end;

   if Key = Vk_Down then
   begin
       DMMACS.TALX.Next;
       XCodObraOS := StrToInt(GridGenerico.Columns[0].Field.Text);

       Exit;
    End;

    if Key = Vk_UP then
    begin
       DMMACS.TALX.Prior;
       XCodObraOS := StrToInt(GridGenerico.Columns[0].Field.Text);

       Exit;
    end;

    if Key = VK_RETURN then
    begin
       SelecionaGenerico(XCodObraOS);
       
       EscondePainelGenerico;    
    end;

    XCodObraOS := BuscaGenerica(FrmObra.EdDescricao.Text, 'DESCRICAO');
    if XCodObraOS = -1 then
       FrmObra.EdDescricao.Font.Color := clRed
    else
       FrmObra.EdDescricao.Font.Color := clBlack;    
end;

procedure TFOrdemAssitenciaTecnica.GridGenericoCellClick(Column: TColumn);
begin
  inherited;
   if XTipo = Obra then
       XCodObraOS := StrToInt(GridGenerico.Columns[0].Field.Text);
   if XTipo = EquipamentoProduto then
       XCodEquipamentoProduto := StrToInt(GridGenerico.Columns[0].Field.Text);
   if XTipo = EquipamentoServico then
       XCodEquipamentoServico := StrToInt(GridGenerico.Columns[0].Field.Text);
end;

procedure TFOrdemAssitenciaTecnica.SelecionaGenerico(XCodigo: Integer);
begin
   //
   try
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' SELECT EQUIPAMENTO.PLACA, EQUIPAMENTO.DESCRICAO FROM EQUIPAMENTO WHERE EQUIPAMENTO.COD_EQUIPAMENTO = :EQUIPAMENTO ');
       MDO.Query.ParamByName('EQUIPAMENTO').AsInteger := XCodigo;
       MDO.Query.Open;

       if XTipo = Obra then
       begin
           XCodObraOS := XCodigo;
 		    FrmObra.EDCodigo.Text := MDO.Query.FieldByName('PLACA').AsString;
           FrmObra.EdDescricao.Text := MDO.Query.FieldByName('DESCRICAO').AsString;
       end;

       if XTipo = EquipamentoProduto then
       begin
           XCodEquipamentoProduto := XCodigo;
           
           EdEquipamentoProduto.Text := MDO.Query.FieldByName('DESCRICAO').AsString;
       end;
       
       if XTipo = EquipamentoServico then
       begin
           XCodEquipamentoServico := XCodigo;

           EdEquipamentoServico.Text := MDO.Query.FieldByName('DESCRICAO').AsString;
       end;       
   except
   end;
end;

procedure TFOrdemAssitenciaTecnica.GridGenericoDblClick(Sender: TObject);
begin
  inherited;
   SelecionaGenerico(StrToInt(GridGenerico.Columns[0].Field.Text));
end;

procedure TFOrdemAssitenciaTecnica.GridGenericoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = VK_RETURN then
       SelecionaGenerico(StrToInt(GridGenerico.Columns[0].Field.Text));
end;

procedure TFOrdemAssitenciaTecnica.EdEquipamentoProdutoKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   xTipo := EquipamentoProduto;
   if not pGenerico.Visible then
       MostraPainelGenerico;
    
   if (Key = VK_ESCAPE) OR (EdEquipamentoProduto.Text = '') then
   begin
       EscondePainelGenerico;
       EdEquipamentoProduto.Text := '';
       Exit;
   end;

   if Key = Vk_Down then
   begin
       DMMACS.TALX.Next;
       XCodEquipamentoProduto := StrToInt(GridGenerico.Columns[0].Field.Text);

       Exit;
    End;

    if Key = Vk_UP then
    begin
       DMMACS.TALX.Prior;
       XCodEquipamentoProduto := StrToInt(GridGenerico.Columns[0].Field.Text);

       Exit;
    end;

    if Key = VK_RETURN then
    begin
       SelecionaGenerico(XCodEquipamentoProduto);
       
       EscondePainelGenerico;    
    end;

    XCodEquipamentoProduto := BuscaGenerica(EdEquipamentoProduto.Text, 'DESCRICAO');
end;

procedure TFOrdemAssitenciaTecnica.EdEquipamentoServicoKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   xTipo := EquipamentoServico;
   if not pGenerico.Visible then
       MostraPainelGenerico;
    
   if (Key = VK_ESCAPE) OR (EdEquipamentoServico.Text = '') then
   begin
       EscondePainelGenerico;
       EdEquipamentoServico.Text := '';
       XCodEquipamentoServico := -1;
       Exit;
   end;

   if Key = Vk_Down then
   begin
       DMMACS.TALX.Next;
       XCodEquipamentoServico := StrToInt(GridGenerico.Columns[0].Field.Text);

       Exit;
    End;

    if Key = Vk_UP then
    begin
       DMMACS.TALX.Prior;
       XCodEquipamentoServico := StrToInt(GridGenerico.Columns[0].Field.Text);

       Exit;
    end;

    if Key = VK_RETURN then
    begin
       SelecionaGenerico(XCodEquipamentoServico);
       
       EscondePainelGenerico;    
    end;

    XCodEquipamentoServico := BuscaGenerica(EdEquipamentoServico.Text, 'DESCRICAO');
end;

procedure TFOrdemAssitenciaTecnica.BtnEquipServClick(Sender: TObject);
begin
  inherited;
   if (XCodClienteOS = -1 ) Then
     Exit;

  	//Edmar - 04/12/2014 - Antes de abrir a tela de equipamento, filtra buscando
   //o cliente para que na tela de equipamento mostre somentes os equipamento do cliente da OS
	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCodClienteOS), '');
	FMenu.XTIPOBOLTO:='355';
   if AbrirForm(TFCadEquipamento, FCadEquipamento, 1) = 'Selected' then
   begin
       XCodEquipamentoServico := DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
       EdEquipamentoServico.Text := DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
       EdEquipamentoServico.SetFocus;
   end
   else begin
       if XCodEquipamentoServico = -1 then
       begin
           EdEquipamentoServico.Text := '';
           EdEquipamentoServico.SetFocus;
       end;
   end;
   FMenu.XTIPOBOLTO:='';
end;

procedure TFOrdemAssitenciaTecnica.BtnEquipProdClick(Sender: TObject);
begin
  inherited;
   if (XCodClienteOS = -1 ) Then
     Exit;

  	//Edmar - 04/12/2014 - Antes de abrir a tela de equipamento, filtra buscando
   //o cliente para que na tela de equipamento mostre somentes os equipamento do cliente da OS
	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCodClienteOS), '');
	FMenu.XTIPOBOLTO:='355';
   if AbrirForm(TFCadEquipamento, FCadEquipamento, 1) = 'Selected' then
   begin
       XCodEquipamentoProduto := DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsInteger;
       EdEquipamentoProduto.Text := DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
       EdEquipamentoProduto.SetFocus;
   end
   else begin
       if XCodEquipamentoProduto = -1 then
       begin
           EdEquipamentoProduto.Text := '';
           EdEquipamentoProduto.SetFocus;
       end;
   end;
   FMenu.XTIPOBOLTO:='';
end;

procedure TFOrdemAssitenciaTecnica.EdClassificacaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   xTipo := Servico;
   if not pGenerico.Visible then
       MostraPainelGenerico;
    
   if (Key = VK_ESCAPE) OR (EdClassificacao.Text = '') then
   begin
       EscondePainelGenerico;
       EdClassificacao.Text := '';
       Exit;
   end;
   
   if Key = Vk_Down then
   begin
       DMMACS.TALX.Next;
       XCOD_SERVICOCLASSIFICACAO := StrToInt(GridGenerico.Columns[0].Field.Text);

       Exit;
    End;

    if Key = Vk_UP then
    begin
       DMMACS.TALX.Prior;
       XCOD_SERVICOCLASSIFICACAO := StrToInt(GridGenerico.Columns[0].Field.Text);

       Exit;
    end;

    if Key = VK_RETURN then
    begin
       EscreveClassificacao(XCOD_SERVICOCLASSIFICACAO);
       
       EscondePainelGenerico;    
    end;

    XCOD_SERVICOCLASSIFICACAO := BuscaGenerica(EdClassificacao.Text, 'DESCRICAO');
end;

procedure TFOrdemAssitenciaTecnica.EdClassificacaoExit(Sender: TObject);
begin
  inherited;
   EscondePainelGenerico;
end;

procedure TFOrdemAssitenciaTecnica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   //Edmar - 05/05/2015 - se estiver cadastrando ou consultando um item, chamo o evento do botão cancelar
	if PCadastro.Visible = True then
   begin
   	BtnCancelar.Click;
       Exit;
   End;   
   Inherited;
end;

procedure TFOrdemAssitenciaTecnica.BtnCadObraClick(Sender: TObject);
begin
  inherited;
   if (XCodClienteOS = -1 ) then
   begin
       MessageDlg('A Obra não pode ser cadastrada pois um cliente não foi selecionado.', mtWarning, [mbOK], 0);
       Exit;
   end;
   
   if Trim(FrmObra.EdDescricao.Text) = '' then
   begin
       MessageDlg('Uma Obra não pode ser cadastrada com a descrição vazia.', mtWarning, [mbOK], 0);
       Exit;
   end;

   MDO.QConsulta.Close;
   MDO.QConsulta.SQL.Clear;
   MDO.QConsulta.SQL.Add(' SELECT * FROM EQUIPAMENTO WHERE (UPPER(EQUIPAMENTO.DESCRICAO) = UPPER(:EQUIPE)) AND (EQUIPAMENTO.COD_CLIENTE = :CLIENTE) ');
   MDO.QConsulta.ParamByName('EQUIPE').AsString := FrmObra.EdDescricao.Text;
   MDO.QConsulta.ParamByName('CLIENTE').AsInteger := XCodClienteOS;
   MDO.QConsulta.Open;

   if not MDO.QConsulta.IsEmpty then
   begin
       MessageDlg('Uma Obra com o mesmo Nome foi encontrada para esse Cliente. Não será possível cadastrá-la.', mtWarning, [mbOK], 0);       
       Exit;
   end;

   if Mensagem(' A T E N Ç Ã O ', 'Deseja cadastrar a Obra '+QuotedStr(FrmObra.EdDescricao.Text)+'?', '', 2, 3, False, 'A') = 2 then
   begin
       try
           XCodObraOS := StrToInt(RetornaValorValido('EQUIPAMENTO', 'COD_EQUIPAMENTO'));
           
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' INSERT INTO EQUIPAMENTO (COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, PLACA, AGULHA, ATIVO) ');
           MDO.Query.SQL.Add(' VALUES ');
           MDO.Query.SQL.Add(' (:COD_EQUIPAMENTO, :CLIENTE, :DESCRICAO, :COD_INTERNO, ''OBRA'', ''1'') ');
           MDO.Query.ParamByName('COD_EQUIPAMENTO').AsInteger := XCodObraOS;
           MDO.Query.ParamByName('CLIENTE').AsInteger := XCodClienteOS;
           MDO.Query.ParamByName('DESCRICAO').AsString := UpperCase(FrmObra.EdDescricao.Text);
           MDO.Query.ParamByName('COD_INTERNO').AsString := FrmObra.EDCodigo.Text;
           MDO.Query.ExecSQL;
           
           MDO.Transac.CommitRetaining;

           FrmObra.EdDescricao.Font.Color := clBlack;             
       except
           MessageDlg('Obra não foi cadastrada. Por favor cadastre manualmente.', mtWarning, [mbOK], 0);
           XCodObraOS := -1;
           MDO.Transac.RollbackRetaining;
       end;
   end;
end;

procedure TFOrdemAssitenciaTecnica.BtnCadEquipProdClick(Sender: TObject);
begin
  inherited;
   XCodEquipamentoProduto := CadastraEquipamento(EdEquipamentoProduto.Text);
end;

procedure TFOrdemAssitenciaTecnica.BtnCadEquipServClick(Sender: TObject);
begin
  inherited;
   XCodEquipamentoServico := CadastraEquipamento(EdEquipamentoServico.Text);
end;

function TFOrdemAssitenciaTecnica.CadastraEquipamento(XDescricao: String): Integer;
var
   XEquipamento: Integer;
begin
   //
   if (XCodClienteOS = -1 ) then
   begin
       MessageDlg('O Equipamento não pode ser cadastrada pois um cliente não foi selecionado.', mtWarning, [mbOK], 0);
       Exit;
   end;

   if Trim(XDescricao) = '' then
   begin
       MessageDlg('Um Equipamento não pode ser cadastrado com a descrição vazia.', mtWarning, [mbOK], 0);
       Exit;
   end;

   if Mensagem(' A T E N Ç Ã O ', 'Deseja cadastrar a Equipamento '+QuotedStr(XDescricao)+'?', '', 2, 3, False, 'A') = 2 then
   begin
       try
           XEquipamento := StrToInt(RetornaValorValido('EQUIPAMENTO', 'COD_EQUIPAMENTO'));

           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' INSERT INTO EQUIPAMENTO (COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, AGULHA, ATIVO) ');
           MDO.Query.SQL.Add(' VALUES ');
           MDO.Query.SQL.Add(' (:COD_EQUIPAMENTO, :CLIENTE, :DESCRICAO, ''EQUIP'', ''1'') ');
           MDO.Query.ParamByName('COD_EQUIPAMENTO').AsInteger := XEquipamento;
           MDO.Query.ParamByName('CLIENTE').AsInteger := XCodClienteOS;
           MDO.Query.ParamByName('DESCRICAO').AsString := UpperCase(XDescricao);
           MDO.Query.ExecSQL;
           
           MDO.Transac.CommitRetaining;
           
           Result := XEquipamento;
       except
           MessageDlg('Obra não foi cadastrada. Por favor cadastre manualmente.', mtWarning, [mbOK], 0);
           Result := -1;
           MDO.Transac.RollbackRetaining;
       end;
   end;
end;

procedure TFOrdemAssitenciaTecnica.FrmObraEnter(Sender: TObject);
begin
  inherited;
   FrmObra.EdDescricao.SetFocus;
end;

End.

