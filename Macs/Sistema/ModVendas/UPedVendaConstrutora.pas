unit UPedVendaConstrutora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, Grids,
  DBGrids, TFlatEditUnit, UFrmBusca, Mask, EditFloat, FashionPanel,
  ComCtrls, DBCtrls, DBColorEdit, ColorEditFloat, ColorMaskEdit, Menus,
  FR_DSet, FR_DBSet, FR_Class, backup, Mapi, IBQuery, AppEvnts,
  TFlatButtonUnit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxDropDownEdit, cxCalendar, RpDefine, RpBase, RpSystem;

type
  TFPedidoVendaConstrutora = class(TFCadPadrao)
    PCliente: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdCpfCnpj: TFlatEdit;
    CbPlaca: TComboBox;
    Label5: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    BtOpenMotorista: TBitBtn;
    Shape5: TShape;
    Label7: TLabel;
    Label4: TLabel;
    GbData: TGroupBox;
    EdData: TMaskEdit;
    EdHora: TMaskEdit;
    EdNomeCli: TFlatEdit;
    BtnProcPess: TBitBtn;
    Shape7: TShape;
    Label8: TLabel;
    PProPedido: TFashionPanel;
    GroupBox3: TGroupBox;
    Panel3: TPanel;
    Label14: TLabel;
    EdCodInterno: TFlatEdit;
    Label9: TLabel;
    luzformpag: TShape;
    BtnProcProd: TBitBtn;
    Label11: TLabel;
    EdDensidade: TFloatEdit;
    Label10: TLabel;
    EdPesoBruto: TFloatEdit;
    Label12: TLabel;
    EdPesoLiqui: TFloatEdit;
    Label13: TLabel;
    Label15: TLabel;
    EDValUnit: TFloatEdit;
    EdTotal: TFloatEdit;
    Label16: TLabel;
    EdDesc: TFloatEdit;
    Label18: TLabel;
    BtnDeleteList: TBitBtn;
    BtnInsertProd: TBitBtn;
    Pvendedor: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    EdNomeVendedor: TFlatEdit;
    EDFORMPAG: TFlatEdit;
    BtnProcVend: TBitBtn;
    Shape9: TShape;
    BtnProcFormPag: TBitBtn;
    Shape10: TShape;
    EdCodVend: TEdit;
    EDCODFORMPAG: TEdit;
    EdDataVen: TMaskEdit;
    EdDescPed: TFloatEdit;
    EdDescMoeda: TFloatEdit;
    MmObs: TMemo;
    EdCodCliente: TEdit;
    GroupBox4: TGroupBox;
    BtSaida: TBitBtn;
    PCPedVenda: TPageControl;
    Produtos: TTabSheet;
    Container: TTabSheet;
    DBGProdutosPedido: TDBGrid;
    DBGContainer: TDBGrid;
    EdFrete: TFloatEdit;
    Label17: TLabel;
    PTransPlacaMoto: TPanel;
    EdNPedSaida: TEdit;
    EdPlacaSaida: TEdit;
    EdClienteSaida: TEdit;
    DBGVeiculoPatio: TDBGrid;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    PPedidoVenda: TGroupBox;
    DBGPedidoPadrao: TDBGrid;
    Label34: TLabel;
    Label35: TLabel;
    EdNPedVenda: TEdit;
    EdClienteVenda: TEdit;
    Panel7: TPanel;
    BtnTroca: TBitBtn;
    BtnFechaPed: TBitBtn;
    Label36: TLabel;
    EdValorPed: TColorEditFloat;
    Label37: TLabel;
    Bevel1: TBevel;
    LSimilar: TLabel;
    EdComiss: TFloatEdit;
    EdCodMoto: TEdit;
    PCodNomeMoto: TPanel;
    DBMotorista: TDBGrid;
    PFinanceiro: TPanel;
    FPFinanceiro: TFashionPanel;
    Label38: TLabel;
    LTotMostraCheque: TLabel;
    PChqTerceiro: TPanel;
    Shape11: TShape;
    LUZMINUS: TShape;
    LTotalChq: TDRLabel;
    DBText7: TDBText;
    BTNOPEN: TBitBtn;
    BTNMINUS: TBitBtn;
    DBGrid2: TDBGrid;
    BtnFechaChqTerc: TBitBtn;
    DBCBCHEQUE: TDBLookupComboBox;
    PMostraCta: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label39: TLabel;
    DBText3: TDBText;
    CBPagamento: TComboBox;
    FrmMoeda: TFrmBusca;
    FrmConta: TFrmBusca;
    GBFRETE: TGroupBox;
    Label45: TLabel;
    PBanco1: TPanel;
    DBGCTA1: TDBGrid;
    FrmFormPagFrete: TFrmBusca;
    CBPagamento1: TComboBox;
    PMostraCta1: TPanel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label46: TLabel;
    DBText6: TDBText;
    BtnMoedaOK: TBitBtn;
    BtnMoedaCancelar: TBitBtn;
    Panel2: TPanel;
    LTextoBusca: TLabel;
    EdDtFech: TColorMaskEdit;
    CBGeraFinanceiro: TCheckBox;
    PBanco: TPanel;
    DBGCTA: TDBGrid;
    BtnFechar: TSpeedButton;
    FSRel: TfrReport;
    TBalancaSPreco: TfrDBDataSet;
    PMRel: TPopupMenu;
    Comprovante1: TMenuItem;
    PMConsultar: TPopupMenu;
    PMApagar: TPopupMenu;
    VeculosnoPtio1: TMenuItem;
    PedidosVenda1: TMenuItem;
    VeculosnoPtio2: TMenuItem;
    PedidosdeVenda1: TMenuItem;
    DBNumPed: TFlatEdit;
    BCK: TBackupFile;
    PExp: TPanel;
    LBCONEXAO: TLabel;
    PBExport: TProgressBar;
    BtnExporta: TBitBtn;
    EdNomeMoto: TFlatEdit;
    PEndereco: TPanel;
    Shape12: TShape;
    BtIniciar: TBitBtn;
    EdEndereco: TFlatEdit;
    Label40: TLabel;
    BtProcurar: TBitBtn;
    ODProcurar: TOpenDialog;
    BtCancelar: TButton;
    BtDescompacta: TBitBtn;
    BtAluguel: TBitBtn;
    PObra: TPanel;
    ConprovanteSPreo1: TMenuItem;
    PUltCompra: TPanel;
    LHistProd: TLabel;
    LQtde: TLabel;
    LHistValor: TLabel;
    LHistData: TLabel;
    LHistNumDocumento: TLabel;
    LHistCliente: TLabel;
    PContainer: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Shape8: TShape;
    EdDtSaidaCon: TMaskEdit;
    EdTemAluguel: TEdit;
    EdDtDevolucao: TMaskEdit;
    EdValor: TFloatEdit;
    BtOpenContainer: TBitBtn;
    BtInserirCon: TBitBtn;
    EdCodCon: TEdit;
    EdDescCon: TFlatEdit;
    BtExcluirCon: TBitBtn;
    EDQuantidade: TFloatEdit;
    EdTara: TFloatEdit;
    PPesquisaObra: TPanel;
    GroupBox2: TGroupBox;
    LUZOPEN: TShape;
    EdDescObraRel: TFlatEdit;
    EdCodObraRel: TEdit;
    GroupBox5: TGroupBox;
    GroupBox7: TGroupBox;
    BtnVisualizar: TBitBtn;
    GroupBox8: TGroupBox;
    BtPesquisaObra: TBitBtn;
    CbDtInicio: TcxDateEdit;
    RelatrioObraporPerodo1: TMenuItem;
    CbDtFim: TcxDateEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    BtCancelObra: TBitBtn;
    PRel: TPanel;
    RelatrioVendas1: TMenuItem;
    CBEmpresa: TComboBox;
    Label51: TLabel;
    Label52: TLabel;
    FrmCli: TFrmBusca;
    BtGeraRel: TBitBtn;
    BtCanRel: TBitBtn;
    RGPed: TRadioGroup;
    GroupBox6: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    FSAlx: TfrReport;
    FRDSAlx: TfrDBDataSet;
    RGOrdena: TRadioGroup;
    RelatrioPermuta1: TMenuItem;
    RVRel: TRvSystem;
    RelatriodeDesempenho1: TMenuItem;
    LP: TLabel;
    Shape13: TShape;
    BtPesqObra: TBitBtn;
    EdDescricaoObra: TFlatEdit;
    Label42: TLabel;
    EdCodObra: TEdit;
    Shape6: TShape;
    BtnTransportadora: TBitBtn;
    EdNomeTrans: TFlatEdit;
    EdCodTrans: TEdit;
    Label6: TLabel;
    BtnSincronizar: TBitBtn;
    RelatrioAnalticodeVendas1: TMenuItem;
    procedure BtnNovoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnProcPessClick(Sender: TObject);
    procedure BtnTransportadoraClick(Sender: TObject);
    procedure BtOpenMotoristaClick(Sender: TObject);
    procedure BtnProcVendClick(Sender: TObject);
    procedure BtnProcFormPagClick(Sender: TObject);
    procedure BtOpenContainerClick(Sender: TObject);
    procedure BtOpenEquipamentoClick(Sender: TObject);
    procedure EdCodTransExit(Sender: TObject);
    procedure EdCodClienteExit(Sender: TObject);
    procedure CbPlacaExit(Sender: TObject);
    procedure EdCodVendExit(Sender: TObject);
    procedure EDCODFORMPAGExit(Sender: TObject);
    procedure EdTemAluguelExit(Sender: TObject);
    procedure BtInserirConClick(Sender: TObject);
    procedure DBGContainerCellClick(Column: TColumn);
    procedure EdCodConExit(Sender: TObject);
    procedure BtExcluirConClick(Sender: TObject);
    procedure BtnProcProdClick(Sender: TObject);
    procedure EdPesoBrutoExit(Sender: TObject);
    procedure EDValUnitExit(Sender: TObject);
    procedure EdDescExit(Sender: TObject);
    procedure EdCodInternoExit(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnDeleteListClick(Sender: TObject);
    procedure EdValorPedExit(Sender: TObject);
    procedure EdCodMotoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeMotoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodMotoExit(Sender: TObject);
    procedure EdNomeMotoExit(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdFreteExit(Sender: TObject);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure EdDescPedExit(Sender: TObject);
    procedure EdDescMoedaExit(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure DBGPedidoPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtnFechaClick(Sender: TObject);
    procedure EdCodClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodTransKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodVendKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCODFORMPAGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodConKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodInternoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNPedSaidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPlacaSaidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdClienteSaidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNPedVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdClienteVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnTrocaClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure Comprovante1Click(Sender: TObject);
    procedure PedidosVenda1Click(Sender: TObject);
    procedure VeculosnoPtio1Click(Sender: TObject);
    procedure PedidosdeVenda1Click(Sender: TObject);
    procedure VeculosnoPtio2Click(Sender: TObject);
    procedure DBMotoristaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMotoristaCellClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnSincronizarClick(Sender: TObject);
    procedure BtnExportaClick(Sender: TObject);
    procedure PCPedVendaChange(Sender: TObject);
    procedure DBMotoristaExit(Sender: TObject);
    procedure BtProcurarClick(Sender: TObject);
    procedure BtIniciarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtDescompactaClick(Sender: TObject);
    procedure CBPagamentoExit(Sender: TObject);
    procedure CBPagamentoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGCTAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtAluguelClick(Sender: TObject);
    procedure BtPesqObraClick(Sender: TObject);
    procedure EdCodObraExit(Sender: TObject);
    procedure ConprovanteSPreo1Click(Sender: TObject);
    procedure CbPlacaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RelatrioObraporPerodo1Click(Sender: TObject);
    procedure EdCodObraRelExit(Sender: TObject);
    procedure BtPesquisaObraClick(Sender: TObject);
    procedure BtCancelObraClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure BtCanRelClick(Sender: TObject);
    procedure RelatrioVendas1Click(Sender: TObject);
    procedure BtGeraRelClick(Sender: TObject);
    procedure FrmCliEDCodigoEnter(Sender: TObject);
    procedure FrmCliBTNMINUSClick(Sender: TObject);
    procedure FrmCliEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGVeiculoPatioDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGPedidoPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGVeiculoPatioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGProdutosPedidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGContainerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGProdutosPedidoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGContainerDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure RelatrioPermuta1Click(Sender: TObject);
    // - 05/05/2009: imprime relatórios no RAVE
    procedure Imprime(RVRel: TRVSystem; Linha: Double; Coluna:Double; Texto:String; Fonte:String; TamFonte:Integer; CorFonte:TColor; Tipo:Boolean);
    procedure linha(x: Integer; tipo :Boolean);
    procedure compara;
    procedure cabecalho;
    procedure RVRelPrint(Sender: TObject);
    procedure buscavendas;
    procedure buscacompras;
    procedure RelatriodeDesempenho1Click(Sender: TObject);
    procedure FrmCliBTNOPENClick(Sender: TObject);
    procedure LimpaTMP;
    procedure RelatrioAnalticodeVendas1Click(Sender: TObject);
    
  private
    { Private declarations }
    xcodequipa : String;
    xcodfunci : String;
    xcodcliente : String;
  public
    { Public declarations }
    TIPOAUX : String;//Armazena 'TERCEIRO' para q no form funcionario saiba o q e;
    xcodequip : String;//armazena o cod do equipamento
    xcodmoto : String;//armazena o codigo do motorista
    xcodaluguel : Integer;//armazena o seguinte codaluguel do inserreg
    xcodmotoveic : Integer;//armazena o seguinte codmotoveiculo do inserreg
    xcodequipamento : Integer;//armazena a posicao da celula
    xconpedvenda : Boolean;//verifica se e consulta pelo botao ou pela edit de produtos
    XCodVendItem : Integer;//armazena o codigo do vendedor
    xunidcompra : String;//Samuel Fabricio Wink - 29/1/2009:
    xunidvenda : String;//Samuel Fabricio Wink - 29/1/2009:
    XCod_PedVendaDev : integer;
    xcliant : String;//Samuel Fabricio Wink - 14/2/2009: guarda cos cliente para verificacoes
    xcontrolesaida : Boolean; //Controla a entrada e a saida do veiculo
    CODPEDIDO : Integer;
    xbtconsulta : Boolean;
    xconaltera :Boolean;//Samuel Fabricio Wink - 16/2/2009: se o motorista veiculo esta sendo alterado
    xseguranca : String;
    xentsaida : Boolean;//Samuel Fabricio Wink - 18/2/2009: constrola consultas para naum haver alteracoes de data e hora
    xcomdata : Boolean; //controla se for saida ou consulta
    XSQLSlave : String;
    XCOMREL : Boolean;//controla o  tipo de relatorio
    xnovo : Boolean;//verifica se e consulta ou novo
    xcodobra : String;//Samuel Fabricio Wink - 11/2/2009: guarda codigo da obra
    xcodlancdoacao : Integer;//Samuel Fabricio Wink - 13/2/2009: guarda codigodo lancaixa quando e doacao
    xtextolog : String;//Samuel Fabricio Wink - 2/3/2009: variavel q recebe a mensagem de erro para o log
    xAuxlinha: Integer; // - 05/05/2009: variável para controlar linha de impressão e quantidade de itens comprados pelo cliente
    
{****************************************************************************
***                     Samuel Fabricio Wink - 15/1/2009                  ***
***        grupo de variáveis utilizadas no processo de exportação        ***
***                         favor não utilizá-las                         ***
*****************************************************************************}
xcodclienteupdate : String;//Samuel Fabricio Wink - 15/1/2009: guarda cod_cliente
xcodaluguelupdate : String;//Samuel Fabricio Wink - 15/1/2009: guarda cod_aluguel
xcodpedvendaupdate : String;//Samuel Fabricio Wink - 15/1/2009: guarda cod_pedvenda
xcodparcelacrupdate : String;//Samuel Fabricio Wink - 15/1/2009: guarda cod_parcelacr
xcodpessoaupdate : String;//Samuel Fabricio Wink - 15/1/2009: guarda cod_pessoa
xcodfuncionarioupdate : String;//Samuel Fabricio Wink - 15/1/2009: guarda cod_func
xcodfornecedorupdate : String;//Samuel Fabricio Wink - 15/1/2009: guarda cod_fornec
xcodusuarioupdate : String;//Samuel Fabricio Wink - 15/1/2009: guarda codusuario
xcodpessoafupdate : String;//Samuel Fabricio Wink - 23/1/2009:
xcodpessoajupdate : String;//Samuel Fabricio Wink - 23/1/2009:
xcoditenspedvendaupdate : String;//Samuel Fabricio Wink - 23/1/2009:
xcodemailupdate : String;//Samuel Fabricio Wink - 23/1/2009:
xcodtelefoneupdate : String;//Samuel Fabricio Wink - 23/1/2009:
xcodequipamentoupdate : String;//Samuel Fabricio Wink - 23/1/2009:
xcodmotoveicupdate : String;//Samuel Fabricio Wink - 23/1/2009:
xcodupdate : String;//Samuel Fabricio Wink - 23/1/2009: guarda valores para update
xcodsubgrupoupdate : String;//Samuel Fabricio Wink - 27/1/2009:
xcodgrupoupdate : String;//Samuel Fabricio Wink - 27/1/2009:
xcodsubprodutoupdate : String;//Samuel Fabricio Wink - 27/1/2009:
xcodprodutoupdate : String;//Samuel Fabricio Wink - 27/1/2009:
xcodestoqueupdate : String;//Samuel Fabricio Wink - 27/1/2009:
xcodctareceberupdate : String; //Samuel Fabricio Wink - 27/1/2009:
xcodplncontaupdate : String;//Samuel Fabricio Wink - 27/1/2009:
xcodlancaixaupdate : String;//Samuel Fabricio Wink - 27/1/2009:
xcodgeradorupdate : String;//Samuel Fabricio Wink - 27/1/2009:
xcodctacorupdate : String;//Samuel Fabricio Wink - 27/1/2009:
xcodmovbancoupdate : String;//Samuel Fabricio Wink - 27/1/2009:
xcodagenciaupdate : String;//Samuel Fabricio Wink - 27/1/2009:
xcodbancoupdate : String;//Samuel Fabricio Wink - 28/1/2009:
xcodchequerecupdate : String;//Samuel Fabricio Wink - 28/1/2009:
xcodunidadeupdate : String;//Samuel Fabricio Wink - 29/1/2009:
xcodobraupdate : String;//Samuel Fabricio Wink - 11/2/2009:
xcodcaixaupdate : String;//Samuel Fabricio Wink - 5/3/2009:
xcodabcaixaupdate : String;//Samuel Fabricio Wink - 5/3/2009:
xcontrole : String;//Samuel Fabricio Wink - 22/1/2009: controla se importa ou exporta
xtbexporta : TIBQuery;//Samuel Fabricio Wink - 22/1/2009: tabela q exporta a informacao
xtbrecebe : TIBQuery;//Samuel Fabricio Wink - 22/1/2009: tabela que recebe a informacao
XImpExp: String;//Samuel Fabricio Wink - 22/1/2009: controla se e exporta ou sincroniza
xcodformpagupdate : String; //Samuel Fabricio Wink - 24/1/2009:
xforma : String;//Samuel Fabricio Wink - 22/1/2009: controla se e insert ou update
xnovocod : String;//Samuel Fabricio Wink - 23/1/2009: insere a pk do novo registro
xnovocodpessoa : String; //Samuel Fabricio Wink - 23/1/2009: insere a pk do novo registro pessoa
xcampo : String;//Samuel Fabricio Wink - 23/1/2009: campo para atualizar em codigo
xendarquivo : String; //Samuel Fabricio Wink - 26/1/2009: guarda o final do arquivo que sera enviado
xConfere :Integer; //confere se foi apagado o pedido, caso foi ai importa novamente ele, senão não
xclirel :Integer;
{****************************************************************************
***                   Samuel Fabricio Wink - 15/1/2009                    ***
*****************************************************************************}

	 //Samuel Fabricio Wink - 11/2/2009:	insere obra
    procedure obra;
    //procedure que limpa os campos do painel pedido de venda itens
    procedure LimparEdits;
    //busca as placas no bd
    procedure pesquisaplaca;
    //deleta banco para iniciar exportacao
    procedure DeletaBanco;
    //faz pesquisa container do dbgrid
    procedure pesqcontainer;
    //Samuel Fabricio Wink - 31/1/2009: descompacta
    procedure descompactabd;
    //Filtra Tabela Slave e calcula total
    Procedure FiltraSlave;
    //escreve o produto
    Procedure EscreveLabels;
    //consulta o produtoda tb itenspedvenda
    Procedure FiltraSlaveDev;
    //atualiza a grid de pedidos feitos
    procedure atualizapedido;
    //atualiza a grid pedido q ainda naum foram terminados
    procedure atualizasaida;
     //Imprime pedido
    Procedure ImpPed(COD_PEDIDO: Integer);
    //insere pessoa
    procedure pessoa;
    //insere pessoa fisica
    procedure pessoaf;
    //insere pessoajuridica
    procedure pessoaj;
    //compacta o banco e o gera
    procedure gerabancoexportacao;
    //prepara e envia o email
    procedure enviaemail;
    //insere as informacoes para o bd exporta e atualiza o bd real
    procedure insertpedvenda;
    //Samuel Fabricio Wink - 30/1/2009: exporta usuario
    procedure insertusuario;
    //insere as informacoes do equipamento
    procedure equipamento;
    //insere as informacoes de telefone
    procedure telefone;
    //insere as informacoes de email
    procedure email;
    //insere as informacoes de funcionario
    procedure funcionario;
    //Samuel Fabricio Wink - 15/1/2009: Insere as informacoes de cliente
    procedure cliente;
    //insere as informacoes de itenspedvenda
    procedure itenspedvenda;
    //Samuel Fabricio Wink - 15/1/2009: insere as informacoes do aluguel
    procedure aluguel;
    //Samuel Fabricio Wink - 15/1/2009: insere as informacoes de produto
    procedure insertproduto;
    //Samuel Fabricio Wink - 30/1/2009: importa fornecedor
    procedure importfornecedor;
    //Samuel Fabricio Wink - 30/1/2009: importa funcionario
    procedure importfuncionario;
    //Samuel Fabricio Wink - 15/1/2009: insere as informacoes do clientes alterados
    procedure insertcliente;
    //Samuel Fabricio Wink - 15/1/2009: insere as informacoes do aluguel alterados
    procedure insertaluguel;
    //Samuel Fabricio Wink - 19/1/2009: insere as informacoes de ctareceber, parcelacr e plncta
    procedure insertcontareceber;
    //Samuel Fabricio Wink - 19/1/2009: insere as informacoes de movbanco, banco, agencia, ctaor eplncta
    procedure insertbanco;
    //Samuel Fabricio Wink - 19/1/2009: insere as informacoes referentes a um lancamento de cheque
    procedure insertcheque;
    //Samuel Fabricio Wink - 29/1/2009: insere pln de contas
    procedure insertplncta;
    //Samuel Fabricio Wink - 27/1/2009: insere cheque para bd sincroniza
    procedure importcheque;
    //Samuel Fabricio Wink - 5/2/2009: delta as relacoes com o ped venda
    procedure deletapedvenda;
    //Samuel Fabricio Wink - 27/1/2009: insere cartao para bd sincroniza
    procedure importusuario;
    //Samuel Fabricio Wink - 29/1/2009: importa formas de pagamento
    procedure importformpag;
    //Samuel Fabricio Wink - 29/1/2009: importa pln de ctas
    procedure importplncta;
    //Samuel Fabricio Wink - 5/3/2009: importa parcela cr matriz
    procedure importparcelacrmatriz;
    //Samuel Fabricio Wink - 5/3/2009: importa parcela cr filial
    procedure importparcelacrfilial;
    //Samuel Fabricio Wink - 27/1/2009: insere informacoes referentes a banco em bd sincroniza
    procedure importbanco;
    //Samuel Fabricio Wink - 11/2/2009: IMPORTA OBRAS
    procedure importobras;
    //Samuel Fabricio Wink - 30/1/2009: importa ctacor
    procedure importctacor;
    //Samuel Fabricio Wink - 15/1/2009: deleta bloco pessoa
    procedure deletapessoa;
    //Samuel Fabricio Wink - 16/1/2009: insere as informacoes do lancamento de caixa
    procedure lancamentocaixa;
    //Samuel Fabricio Wink - 16/1/2009: insere as informacoesda parcela de contas a receber
    procedure parcelacr;
    //Samuel Fabricio Wink - 16/1/2009: insere as informacoes das contas a receber
    procedure ctareceber;
    //Samuel Fabricio Wink - 19/1/2009: insere usuario
	 procedure usuario;
    //Samuel Fabricio Wink - 16/1/2009: insere as informacoes do movbanco
    procedure movbanco;
    //Samuel Fabricio Wink - 16/1/2009: insere as informacoes de cheques recebidos
    procedure chequerec;
    //Samuel Fabricio Wink - 16/1/2009: insere as informacoes de conta corrente
    procedure ctacor;
    //Samuel Fabricio Wink - 16/1/2009: insere as informacoes agencia
    procedure agencia;
    //Samuel Fabricio Wink - 16/1/2009: insere as informacoes banco
    procedure banco;
    //Samuel Fabricio Wink - 19/1/2009: insere as informacoes do plncta
    procedure plncta;
    //Samuel Fabricio Wink - 19/1/2009: forca criacao de diretorio
    procedure verificadiretorio;
    //Samuel Fabricio Wink - 20/1/2009: insere registros do fornecedor
    procedure fornecedor;
    //Samuel Fabricio Wink - 20/1/2009: insere registros do pedvenda
    procedure pedvenda;
    //Samuel Fabricio Wink - 20/1/2009: insere registros do motoristaveiculo
    procedure motoristaveiculo;
    //Samuel Fabricio Wink - 20/1/2009: insere registros referentes as parcelas cr
    procedure insertparcelacr;
    //Samuel Fabricio Wink - 22/1/2009: atualiza registros no banco
	 procedure importpedvenda;
    //Samuel Fabricio Wink - 24/1/2009: importa cliente
    procedure importcliente;
    //Samuel Fabricio Wink - 24/1/2009: importa produto
    procedure importprodutos;
    //Samuel Fabricio Wink - 26/1/2009: importa contas a receber
    procedure importctarec;
    //Samuel Fabricio Wink - 26/1/2009: atualiza os produtos
    procedure sincronizaprodutos;
    //Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
    procedure subproduto;
    //Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
    procedure estoque;
    //Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
    procedure produto;
    //Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
    procedure grupo;
    //Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
    procedure subgrupo;
    //Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
    procedure cst;
    //Samuel Fabricio Wink - 24/1/2009: insere formpag
    procedure insertformpag;
    //Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
    procedure unidade;
    //Samuel Fabricio Wink - 23/1/2009: insere um novo codigo e incrementa
    procedure insercod(xdm :TIBQuery; xtabela :String);
    //Samuel Fabricio Wink - 24/1/2009:insere forma de pagamento
    procedure formpag;
    //Samuel Fabricio Wink - 6/2/2009: verifica se ctareceber é derivada de um pedvenda
    procedure verificactareceber;
    //Samuel Fabricio Wink - 11/2/2009: insere obras
    procedure insertobras;
	 //Samuel Fabricio Wink - 5/3/2009:	insere lancamentos de caixa efetuados manualmente
    procedure insertlancaixamanual;
    //Samuel Fabricio Wink - 5/3/2009: insere ou faz update de caixa
    procedure caixa;
    //Samuel Fabricio Wink - 5/3/2009: insere ou faz update de abcaixa
    procedure abcaixa;
    //Samuel Fabricio Wink - 5/3/2009: sincroniza caixa
    procedure importcaixa;
    //Samuel Fabricio Wink - 23/3/2009: deleta modulo pessoa em branco
    procedure deletamodulopessoa;
    //Samuel Fabricio Wink - 31/3/2009: gera relatório de obras por periodo
    procedure ImpObra;
    //Fecha pedido (Atualiza estoque e joga no financeiro
    Function FechaPedido(CODPEDIDO: String; DTFECH: String) : Boolean;
    //envia email
    Function SendEMail(Handle: THandle; Mail: TStrings):Cardinal;
    //Conecta banco de ddos para exportar Ordens
    Function ConectaBancoDados(XEndereco: string): boolean;
    //Filtra cheques de acordo com tmp
	 Function FiltraCheques: Boolean;
    //Samuel Fabricio Wink - 20/2/2009: retorna ultima compra
    Function RetornaUltimaVendaProd(Comando: String): Boolean;
    //Samuel Fabricio Wink - 2/3/2009: funcao que cria um log de erro
    Function GeraLogWink(xdtcriacao: TDate; xhrerro: TTime; xtexto: String): Boolean;
    // - 27/04/2009: filtra cliente para gerar relatório
    procedure filtraCliente;
    // - 27/04/2009: filtra data para gerar relatório
    procedure filtraData;
    // - 27/04/2009: filtra empresa para gerar relatório
    procedure filtraEmpresa;

  end;

var
  FPedidoVendaConstrutora: TFPedidoVendaConstrutora;

implementation

uses UCliente, Alxor32, UDMPessoa, UFuncionario, AlxMessage, UFORNECEDOR,
  UDMEstoque, UDMFinanc, UFormPag, UCadEquipamento, UMenu, UDMSaida,
  UDMMacs, DB, UProduto, UPedidoPadrao, USenha, UDMEntrada, UDMConta,
  UDMFiscal, UDMCaixa, UConsPlncta, UPedVenda, UDmBanco, Alxorprn,
  UnitDeclaracoes, UPadrao, UDMExporta, Math, UCtaReceber,
  UCadObra, UDmServ, UDMGEOGRAFIA;

{$R *.dfm}

//Samuel Fabricio Wink - 2/3/2009: função que cria um log de erro
Function TFPedidoVendaConstrutora.GeraLogWink(xdtcriacao: TDate; xhrerro: TTime; xtexto: String): Boolean;
var
  NomArquivo: String;
  Path: String;
  Arquivo: TextFile;
begin
   Path := 'C:\MZR\LogErroMacs\';
   NomArquivo := 'LogErro ' + FormatDateTime('dd.mm.yyyy',xdtcriacao) + '.txt';
	//Samuel Fabricio Wink - 2/3/2009: verifica se a pasta existe
   if not DirectoryExists(Path) then
  	begin
  		CreateDir(Path);
  	end;

   AssignFile(Arquivo, Path + NomArquivo);
   {$I-}
   Reset(Arquivo);
   {$I+}
   if IOResult = 0 then
       Append(Arquivo)
   else
       Rewrite(Arquivo);

   //Samuel Fabricio Wink - 2/3/2009: adiciona o texto e grava a informação
   try
		Writeln(Arquivo, TimeToStr(xhrerro) + '-' + xtexto);
   finally
  		CloseFile(Arquivo);
   End;
end;

//atualiza grid ped venda
procedure TFPedidoVendaConstrutora.atualizapedido;
begin
  DMSAIDA.WPedV.Close;
  DMSAIDA.WPedV.SQL.Clear;
  DMSAIDA.WPedV.SQL.Add('select * from vwpedv');
  DMSAIDA.WPedV.SQL.Add('left join motoristaveiculo on vwpedv.cod_pedvenda = motoristaveiculo.cod_pedvenda');
  DMSAIDA.WPedV.SQL.Add('where motoristaveiculo.dtsaida is not null');
  DMSAIDA.WPedV.SQL.Add('and vwpedv.situacao = :SITU');
  DMSAIDA.WPedV.ParamByName('SITU').AsString:='ABERTO';
  DMSAIDA.WPedV.SQL.Add('order by situacao, dtsaida desc, hrsaida');
  DMSAIDA.WPedV.Open;
end;

//insere mais um na tabcod
procedure TFPedidoVendaConstrutora.insercod(xdm :TIBQuery; xtabela :String);
var
   atualiza :Integer;
begin

     xdm.close;
     xdm.sql.clear;
     xdm.sql.add('select * from '+xtabela);
     xdm.SQL.Add('order by '+xcampo);
     xdm.open;
     xdm.last;

     atualiza:=xdm.FieldByName(xcampo).AsInteger;
     atualiza:=atualiza+1;


	 DMMACS.TCodigo.Edit;
   DMMACS.TCodigo.FieldByName(xcampo).AsInteger := atualiza;
   DMMACS.TCodigo.Post;
   DMMACS.IBTCodigo.CommitRetaining;

   FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');

   if xcampo = 'cod_pedvenda'
   then begin
        xcodpedvendaupdate := DMMACS.TCodigo.FieldByName(xcampo).AsString;
        xcodgeradorupdate := xcodpedvendaupdate;
   end else
   if xcampo = 'cod_itenspedven'
   then begin
        xcoditenspedvendaupdate := DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_aluguel'
   then begin
        xcodaluguelupdate := DMMACS.TCodigo.FieldByName(xcampo).AsString;
        xcodaluguel:=StrToInt(xcodaluguelupdate);
   end else
   if xcampo = 'cod_banco'
   then begin
        xcodbancoupdate := DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_caixa'
   then begin
        xcodcaixaupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_abcaixa'
   then begin
        xcodabcaixaupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_agencia'
   then begin
        xcodagenciaupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_cliente'
   then begin
        xcodclienteupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
        xcodcliente:=xcodclienteupdate;
   end else
   if xcampo = 'cod_chequerec'
   then begin
        xcodchequerecupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_ctacor'
   then begin
        xcodctacorupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_ctareceber'
   then begin
        xcodctareceberupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_email'
   then begin
        xcodemailupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_equipamento'
   then begin
        xcodequipamentoupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
        xcodequipa:=xcodequipamentoupdate;
        xcodequip:=xcodequipamentoupdate;
        xcodequipamento:=StrToInt(xcodequipamentoupdate);
   end else
   if xcampo = 'cod_estoque'
   then begin
        xcodestoqueupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_formpag'
   then begin
        xcodformpagupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_fornec'
   then begin
        xcodfornecedorupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_funcionario'
   then begin
        xcodfuncionarioupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
        xcodfunci:=xcodfuncionarioupdate;
   end else
   if xcampo = 'cod_grupoprod'
   then begin
        xcodgrupoupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_lanc'
   then begin
        xcodlancaixaupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_movbanco'
   then begin
        xcodmovbancoupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_motoristaveiculo'
   then begin
        xcodmotoveicupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
        xcodmoto:=xcodmotoveicupdate;
        xcodmotoveic:=StrToInt(xcodmotoveicupdate);
   end else
   if xcampo = 'cod_obra'
   then begin
        xcodobraupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
        xcodobra:=xcodobraupdate;
   end else
   if xcampo = 'cod_parcelacr'
   then begin
        xcodparcelacrupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_plncta'
   then begin
        xcodplncontaupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_produto'
   then begin
        xcodprodutoupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_pessoa'
   then begin
        xcodpessoaupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_pessoaf'
   then begin
        xcodpessoafupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_pessoaj'
   then begin
        xcodpessoajupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_subgrupoprod'
   then begin
        xcodsubgrupoupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_subproduto'
   then begin
        xcodsubprodutoupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_unidade'
   then begin
        xcodunidadeupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'cod_telefone'
   then begin
        xcodtelefoneupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end else
   if xcampo = 'codusuario'
   then begin
        xcodusuarioupdate:= DMMACS.TCodigo.FieldByName(xcampo).AsString;
   end;



end;

//envia email
function TFPedidoVendaConstrutora.SendEMail(Handle: THandle; Mail: TStrings):Cardinal;
type
	TAttachAccessArray = array [0..0] of TMapiFileDesc;
	PAttachAccessArray = ^TAttachAccessArray;

var
  MapiMessage: TMapiMessage;
  Receip: TMapiRecipDesc;
  Attachments: PAttachAccessArray;
  AttachCount: Integer;
  i1: integer;
  FileName: string;
  dwRet: Cardinal;
  MAPI_Session: Cardinal;
  WndList: Pointer;

begin
dwRet := MapiLogon(Handle, PChar(''), PChar(''), MAPI_LOGON_UI or MAPI_NEW_SESSION,0, @MAPI_Session);

if (dwRet <> SUCCESS_SUCCESS) then
  begin
    MessageBox(Handle,PChar('Error while trying to send email'),PChar('Error'),MB_ICONERROR or MB_OK);
  end
else
begin
  FillChar(MapiMessage, SizeOf(MapiMessage), #0);
  Attachments := nil;
  FillChar(Receip, SizeOf(Receip), #0);
  if Mail.Values['to'] <> '' then
    begin
      Receip.ulReserved := 0;
      Receip.ulRecipClass := MAPI_TO;
      Receip.lpszName :=StrNew(PChar(Mail.Values['to']));
      Receip.lpszAddress := StrNew(PChar('SMTP:' + Mail.Values['to']));
      Receip.ulEIDSize := 0;
      MapiMessage.nRecipCount := 1;
      MapiMessage.lpRecips := @Receip;
    end;

  AttachCount := 0;

  for i1 := 0 to MaxInt do
  	begin
  		if Mail.Values['attachment' + IntToStr(i1)] = ''then
  			break;

  		Inc(AttachCount);
  	end;

  if AttachCount > 0 then
    begin
      GetMem(Attachments, SizeOf(TMapiFileDesc) * AttachCount);

      for i1 := 0 to AttachCount - 1 do
        begin
          FileName := Mail.Values['attachment' +
          IntToStr(i1)];
          Attachments[i1].ulReserved := 0;
          Attachments[i1].flFlags := 0;
          Attachments[i1].nPosition := ULONG($FFFFFFFF);
          Attachments[i1].lpszPathName :=
          StrNew(PChar(FileName));
          Attachments[i1].lpszFileName :=
          StrNew(PChar(ExtractFileName(FileName)));
          Attachments[i1].lpFileType := nil;
        end;

      MapiMessage.nFileCount := AttachCount;
      MapiMessage.lpFiles := @Attachments^;

    end;

	if Mail.Values['subject'] <> '' then
		MapiMessage.lpszSubject := StrNew(PChar(Mail.Values['subject']));

	if Mail.Values['body'] <> '' then

	MapiMessage.lpszNoteText := StrNew(PChar(Mail.Values['body']));

	WndList := DisableTaskWindows(0);

	try
		Result := MapiSendMail(MAPI_Session, Handle,MapiMessage, MAPI_DIALOG, 0);

	finally
		EnableTaskWindows( WndList );
	end;

	for i1 := 0 to AttachCount - 1 do
		begin
			StrDispose(Attachments[i1].lpszPathName);
			StrDispose(Attachments[i1].lpszFileName);
  		end;

  if Assigned(MapiMessage.lpszSubject) then
  		StrDispose(MapiMessage.lpszSubject);

  if Assigned(MapiMessage.lpszNoteText) then
  		StrDispose(MapiMessage.lpszNoteText);

  if Assigned(Receip.lpszAddress) then
  		StrDispose(Receip.lpszAddress);

  if Assigned(Receip.lpszName) then
  		StrDispose(Receip.lpszName);

  MapiLogOff(MAPI_Session, Handle, 0, 0);

  end;
end;

//atualiza grid saida
procedure TFPedidoVendaConstrutora.atualizasaida;
begin
  DMSAIDA.TAlx.Close;
  DMSAIDA.TAlx.SQL.Clear;
  DMSAIDA.TAlx.SQL.Add('select * from pedvenda');
  DMSAIDA.TAlx.SQL.Add('left join motoristaveiculo on pedvenda.cod_pedvenda = motoristaveiculo.cod_pedvenda');
  DMSAIDA.TAlx.SQL.Add('left join equipamento on motoristaveiculo.cod_equipamento = equipamento.cod_equipamento');
  DMSAIDA.TAlx.SQL.Add('left join vwfuncionario on motoristaveiculo.cod_funcionario = vwfuncionario.cod_func');
  DMSAIDA.TAlx.SQL.Add('where motoristaveiculo.dtsaida is null');
  DMSAIDA.TAlx.Open;
end;

//pesquisa container
procedure TFPedidoVendaConstrutora.pesqcontainer;
begin
  DMESTOQUE.TAluguel.Close;
  DMESTOQUE.TAluguel.SQL.Clear;
  DMESTOQUE.TAluguel.SQL.Add('select * from aluguel');
  DMESTOQUE.TAluguel.SQL.Add('where cod_pedvenda = '+ XCodPedido);
  DMESTOQUE.TAluguel.Open;
end;

//procedure que limpa os campos do painel pedido de venda itens
procedure TFPedidoVendaConstrutora.LimparEdits;
begin
  EdComiss.Text := '0';
  EdCodCliente.Text:= '';
  EdCpfCnpj.Text:= '';
  EdNomeCli.Text:= '';
  EdCodTrans.Text:= '';
  EdNomeTrans.Text:= '';
  CbPlaca.Text:= '';
  EdTara.ValueInteger:= 0;
  EdCodMoto.Text:= '';
  EdNomeMoto.Text:= '';
  EdData.Text := DateToStr(Date());
  EdHora.Text := TimeToStr(Time());
  EdCodVend.Text:= '';
  EdNomeVendedor.Text:= '';
  EDCODFORMPAG.Text:= '';
  EDFORMPAG.Text:= '';
  EdDataVen.Text:= DateToStr(Date());
  EdDescPed.Text:= '';
  EdDescMoeda.Text:= '';
  EdFrete.Text:= '';
  MmObs.Text:= '';
  EdDtSaidaCon.Text:= DateToStr(Date());
  EdTemAluguel.Text:= '';
  EdDtDevolucao.Text:= '';
  EdValor.Text:= '';
  EdCodInterno.Text:= '';
  EdDensidade.Text:= '';
  EdPesoBruto.Text:= '';
  EdPesoLiqui.Text:= '';
  EDQuantidade.Text:= '';
  EDValUnit.Text:= '';
  EdDesc.Text:= '';
  EdTotal.Text:= '';
  EdCodObra.Text := '';
  EdDescricaoObra.Text := '';
  EdValorPed.Text := '0,00';
  LSimilar.Caption := 'PRODUTO NÃO ENCONTRADO';
end;

//pesquisa placa
procedure TFPedidoVendaConstrutora.pesquisaplaca;
  begin
    //Samuel Fabricio Wink - 14/01/2009: busca fornecedor responsavel pelo veiculo
    FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO', 'PLACA', CbPlaca.Text, '');
  end;

//Samuel Fabricio Wink - 31/3/2009: gera relatório de obras por periodo
procedure TFPedidoVendaConstrutora.ImpObra;
begin
	//Samuel Fabricio Wink - 1/4/2009: seta os ds
   TBalancaSPreco.DataSource := DMESTOQUE.DSAlx;

	//Filtra a loja para garantir que todos as informações estejam corretas
   If FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '')=True
   Then Begin//Se encontrou a loja
       DMMACS.TLOJA.Edit;
       DMMACS.TLoja.FieldByName('TMP2').AsString:='';
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
		FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

       //Samuel Fabricio Wink - 31/3/2009: inicia processo de pesquisa de obras
       DMEstoque.Alx.Close;
       DMEstoque.Alx.SQL.Clear;
       DMEstoque.Alx.SQL.Add('select obra.cod_interno, obra.cod_obra, obra.cod_interno as CODINTOBRA, obra.descricao, pedvenda.numped, pedvenda.cod_obra, pedvenda.vlrfrete, pedvenda.cpfcnpj,');
       DMEstoque.Alx.SQL.Add('pedvenda.cod_pedvenda, pedvenda.dtpedven, itenspedven.cod_itenspedven, itenspedven.valortotal, itenspedven.cod_pedven, itenspedven.cod_estoque,');
       DMEstoque.Alx.SQL.Add('itenspedven.qtdeprod, itenspedven.valunit, estoque.cod_estoque, estoque.cod_subprod, subproduto.cod_subproduto, subproduto.densidade,subproduto.contrint,');
       DMEstoque.Alx.SQL.Add('subproduto.descricao as descproduto, subproduto.pesoliq, subproduto.pesobruto, itenspedven.valunit, itenspedven.descpro, itenspedven.valortotal, itenspedven.data,');
       DMEstoque.Alx.SQL.Add('motoristaveiculo.cod_motoristaveiculo, motoristaveiculo.cod_pedvenda, motoristaveiculo.cod_equipamento, motoristaveiculo.cod_funcionario, motoristaveiculo.tara,');
       DMEstoque.Alx.SQL.Add('funcionario.cod_func, funcionario.cod_pessoa, pessoa.cod_pessoa, pessoa.nome, equipamento.cod_equipamento, equipamento.placa');
       DMEstoque.Alx.SQL.Add('from itenspedven');
       DMEstoque.Alx.SQL.Add('left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
       DMEstoque.Alx.SQL.Add('left join obra on pedvenda.cod_obra = obra.cod_obra');
       DMEstoque.Alx.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
       DMEstoque.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
       DMEstoque.Alx.SQL.Add('left join produto on subproduto.cod_produto = produto.cod_produto ');
       DMEstoque.Alx.SQL.Add('left join motoristaveiculo on pedvenda.cod_pedvenda = motoristaveiculo.cod_pedvenda');
       DMEstoque.Alx.SQL.Add('left join funcionario on motoristaveiculo.cod_funcionario = funcionario.cod_func');
       DMEstoque.Alx.SQL.Add('left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
       DMEstoque.Alx.SQL.Add('left join equipamento on motoristaveiculo.cod_equipamento = equipamento.cod_equipamento');
       DMEstoque.Alx.SQL.Add('where pedvenda.cod_pedvenda > 0');
       if EdCodObraRel.Text <> '' then
           DMEstoque.Alx.SQL.Add('and obra.cod_interno = ' + #39 + EdCodObraRel.Text + #39);
       if (CbDtInicio.Text <> '') and (CbDtFim.Text <> '')
       then begin
           DMEstoque.Alx.SQL.Add('and pedvenda.dtpedven between :DTINICIO and :DTFIM');
           DMEstoque.Alx.ParamByName('DTINICIO').AsDateTime := CbDtInicio.Date;
           DMEstoque.Alx.ParamByName('DTFIM').AsDateTime := CbDtFim.Date;
       end;
       if RGOrdena.ItemIndex = 0
       then begin
           DMEstoque.Alx.SQL.Add('order by obra.cod_obra, subproduto.contrint, pedvenda.cod_pedvenda');
           DMEstoque.Alx.Open;
           FSAlx.LoadFromFile('C:\MZR\MACS\Rel\FrfRelObraPeriodo.frf');
       end;
       if RGOrdena.ItemIndex = 1
       then begin
           DMEstoque.Alx.SQL.Add('order by pedvenda.dtpedven, obra.cod_obra, subproduto.contrint');
           DMEstoque.Alx.Open;
           FSAlx.LoadFromFile('C:\MZR\MACS\Rel\FrfRelObraData.frf');
       end;
       if RGOrdena.ItemIndex = 2
       then begin
           DMEstoque.Alx.SQL.Add('order by obra.cod_obra, pessoa.nome, subproduto.contrint');
           DMEstoque.Alx.Open;
           FSAlx.LoadFromFile('C:\MZR\MACS\Rel\FrfRelObraMotorista.frf');
       end;
       FSAlx.ShowReport;
   end;
end;

//Imprime pedido
Procedure TFPedidoVendaConstrutora.ImpPed(COD_PEDIDO: Integer);
Var
	I: Integer;
   xnumped : String;
   xcodfrmpag : String;
   xcodaluguel : String;
   cobranca : String;
   recebe : String;
   xtesteaux : String;
Begin
	//Samuel Fabricio Wink - 1/4/2009: seta ds
   TBalancaSPreco.DataSource := DMESTOQUE.DSSlave;
	//Filtra a loja para garantir que todos as informações estejam corretas
   If FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '')=True
   Then Begin//Se encontrou a loja
       DMMACS.TLOJA.Edit;
       DMMACS.TLoja.FieldByName('TMP2').AsString:='';
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
		FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   	//filtra itens utilizando-se da tabela tslave de dmestoque
       If XSQLTABELA='PEDVENDA'
       Then Begin//se pedido de venda
			//insere sql necessária para filtrar pedido de venda e valores necessários
           DMEstoque.Alx.Close;
           DMEstoque.Alx.SQL.Clear;
           DMEstoque.Alx.SQL.Add('SELECT pessoa.cod_pessoa, pedvenda.numped, pedvenda.cobranca, PEDVENDA.VLRFRETE, pedvenda.nomecli, cliente.endentraga, Cliente.Atacadista as atacadista, pessoa.telrel,  pessoa.BAIRRO, PESSOA.CEP, pessoa.cpfcnpj, pedvenda.obs, pessoa.endereco, ');
           DMEstoque.Alx.SQL.Add('cidade.nome, pedvenda.cod_formpag, pedvenda.dtpedven, pedvenda.descmoe, funcionario.cod_interno, funcionario.cod_func, FormPag.Descricao, PedVenda.Desconto AS DESCONTO, PedVenda.Descmoe, PedVenda.Valor, PESSOAJ.INSC_EST,');
           DMEstoque.Alx.SQL.Add('itenspedven.cod_pedven, itenspedven.cod_estoque, estoque.cod_estoque, estoque.cod_subprod, subproduto.cod_subproduto, subproduto.densidade, pedvenda.cod_pedvenda, pedvenda.vlrfrete, cliente.cod_interno as codinternocli, ');
           DMEstoque.Alx.SQL.Add('pedvenda.cod_obra, pessoa.endnumero, obra.cod_obra, obra.cod_interno as obracodinterno, obra.descricao as obradescricao');
           DMEstoque.Alx.SQL.Add('FROM pedvenda Left join cliente ON pedvenda.cod_cliente = cliente.cod_cliente ');
           DMEstoque.Alx.SQL.Add('Left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
           DMEstoque.Alx.SQL.Add('Left join funcionario ON pedvenda.cod_vendedor = funcionario.cod_func ');
           DMEstoque.Alx.SQL.Add('join FormPag ON FormPag.cod_FormPag = PedVenda.Cod_FormPag ');
           DMEstoque.Alx.SQL.Add('left join cidade ON pessoa.cod_cidade = cidade.cod_cidade ');
           DMEstoque.Alx.SQL.Add('left join telefone ON telefone.cod_pessoa = pessoa.cod_pessoa ');
           DMEstoque.Alx.SQL.Add('left join pessoaj on pessoa.cod_pessoa = pessoaj.cod_pessoa');
           DMEstoque.Alx.SQL.Add('left join itenspedven on pedvenda.cod_pedvenda = itenspedven.cod_pedven');
           DMEstoque.Alx.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
           DMEstoque.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
           DMEstoque.Alx.SQL.Add('left join obra on pedvenda.cod_obra = obra.cod_obra');
           DMEstoque.Alx.SQL.Add('Where pedvenda.cod_pedvenda=:CODPED');
           DMEstoque.Alx.ParamByName('CODPED').AsInteger:=COD_PEDIDO;
           DMEstoque.Alx.Open;
           If not DMESTOQUE.Alx.IsEmpty
           Then Begin
               xnumped := DMEstoque.Alx.FieldByName('NUMPED').AsString;
               xcodfrmpag := DMEstoque.Alx.FieldByName('COD_FORMPAG').AsString;
               cobranca := DMESTOQUE.Alx.FieldByName('COBRANCA').AsString;

               //seleciona campos restantes
                  DMESTOQUE.TMotoristaVeiculo.Close;
                  DMESTOQUE.TMotoristaVeiculo.SQL.Clear;
                  DMESTOQUE.TMotoristaVeiculo.SQL.Add('select * from motoristaveiculo');
                  DMESTOQUE.TMotoristaVeiculo.SQL.Add('where cod_pedvenda = ' + IntToStr(COD_PEDIDO));
                  DMESTOQUE.TMotoristaVeiculo.Open;
                  xcodmotoveic := DMESTOQUE.TMotoristaVeiculo.FieldByName('COD_MOTORISTAVEICULO').AsInteger;
                  xcodequipa := DMESTOQUE.TMotoristaVeiculo.FieldByName('COD_EQUIPAMENTO').AsString;
                  xcodfunci := DMESTOQUE.TMotoristaVeiculo.FieldByName('COD_FUNCIONARIO').AsString;

                  if (xcodequipa <> '')then
                   begin
                      iF FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_equipamento', xcodequipa, '')=false
                       Then Begin
                           MessageDlg('Sem veículo', mtWarning, [mbOK], 0);
                           Exit;
                       End;

                      xcodcliente := DMPESSOA.TEquip.FieldByName('COD_CLIENTE').AsString;

                      If FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'cod_fornec', xcodcliente, '')=False
                      Then Begin
                           MessageDlg('Sem Transportadora', mtWarning, [mbOK], 0);
                           Exit;
                      End;

                   end;

                  If FiltraTabela(DMPESSOA.VWFuncionario, 'vwfuncionario', 'cod_func', xcodfunci, '')=False
                  Then Begin
                       MessageDlg('Sem motorista', mtWarning, [mbOK], 0);
                       Exit;
                  End;

                  DMFINANC.TFormPag.Close;
                  DMFINANC.TFormPag.SQL.Clear;
                  DMFINANC.TFormPag.SQL.Add('select * from formpag where cod_formpag = '+ xcodfrmpag);
                  DMFINANC.TFormPag.Open;

                  if DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA' then
                   begin
                       if cobranca = 'Cheque' then
                           begin
                               FiltraTabela(DMBANCO.TMovBanco, 'movbanco', 'cod_gerador', DMESTOQUE.Alx.FieldByName('cod_pedvenda').AsString, '');
                               recebe := 'CH ' + DMBANCO.TMovBanco.FieldByName('numcheque').AsString + ' - '+ DMBANCO.TMovBanco.FieldByName('dtvenc').AsString;

                               DMMACS.TMP.Close;
                               DMMACS.TMP.SQL.Clear;
                               DMMACS.TMP.SQL.Add('delete from tmp');
                               DMMACS.TMP.ExecSQL;
                               DMMACS.Transaction.CommitRetaining;

                               FiltraTabela(DMMACS.TMP, 'tmp', '', '', '');
                               DMMACS.TMP.Edit;
                               DMMACS.TMP.FieldByName('desc3').AsString := recebe;
                               DMMACS.TMP.Post;
                               DMMACS.Transaction.CommitRetaining;
                               FiltraTabela(DMMACS.TMP, 'tmp', '', '', '');
                           end;
                   end
                  else
                   begin
                       if cobranca = 'Carteira' then
                           begin
                               FiltraTabela(DMCONTA.TCtaR, 'ctareceber', 'numdoc', xnumped, '');
                               FiltraTabela(DMCONTA.TParcCR, 'parcelacr', 'cod_ctareceber', DMCONTA.TCtaR.FieldByName('cod_ctareceber').AsString, '');

                               if not(DMCONTA.TParcCR.IsEmpty)
                               then begin
                                   DMCONTA.TParcCR.First;

                                   if DMCONTA.TParcCR.FieldByName('numboleto').AsString <> '' then
                                       begin
                                         while not(DMCONTA.TParcCR.Eof)do
                                             begin
                                                 recebe := recebe + 'BL ' + DMCONTA.TParcCR.FieldByName('numboleto').AsString + ' - ' + DMCONTA.TParcCR.FieldByName('dtvenc').AsString + ', ';
                                                 DMCONTA.TParcCR.Next;
                                             end;
                                         end
                                   else
                                       begin
                                           while not(DMCONTA.TParcCR.Eof)do
                                             begin
                                                 recebe := recebe + 'DP ' + DMCONTA.TParcCR.FieldByName('numparc').AsString + ' - ' + DMCONTA.TParcCR.FieldByName('dtvenc').AsString +', ';
                                                 DMCONTA.TParcCR.Next;
                                             end;
                                       end;
                               end;
                               DMMACS.TMP.Close;
                               DMMACS.TMP.SQL.Clear;
                               DMMACS.TMP.SQL.Add('delete from tmp');
                               DMMACS.TMP.ExecSQL;
                               DMMACS.Transaction.CommitRetaining;

                               FiltraTabela(DMMACS.TMP, 'tmp', '', '', '');
                               DMMACS.TMP.Edit;
                               DMMACS.TMP.FieldByName('desc3').AsString := recebe;
                               DMMACS.TMP.Post;
                               DMMACS.Transaction.CommitRetaining;
                               FiltraTabela(DMMACS.TMP, 'tmp', '', '', '');
                           end;
                       if cobranca = 'Cheque' then
                           begin
                               FiltraTabela(DMCONTA.TCtaR, 'ctareceber', 'numdoc', xnumped, '');
                               FiltraTabela(DMCONTA.TParcCR, 'parcelacr', 'cod_ctareceber', DMCONTA.TCtaR.FieldByName('cod_ctareceber').AsString, '');

                               if not(DMCONTA.TParcCR.IsEmpty) then
                               	DMCONTA.TParcCR.First;

                               while not(DMCONTA.TParcCR.Eof)do
                                   begin
                                       FiltraTabela(DMBANCO.TMovBanco, 'movbanco', 'cod_gerador', DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString, '');
                                       recebe := recebe + 'CH' + DMBANCO.TMovBanco.FieldByName('numcheque').AsString + '-' + DMBANCO.TMovBanco.FieldByName('numcheque').AsString + ', ';
                                       DMCONTA.TParcCR.Next;
                                   end;

                               DMMACS.TMP.Close;
                               DMMACS.TMP.SQL.Clear;
                               DMMACS.TMP.SQL.Add('delete from tmp');
                               DMMACS.TMP.ExecSQL;
                               DMMACS.Transaction.CommitRetaining;

                               FiltraTabela(DMMACS.TMP, 'tmp', '', '', '');
                               DMMACS.TMP.Edit;
                               DMMACS.TMP.FieldByName('desc3').AsString := recebe;
                               DMMACS.TMP.Post;
                               DMMACS.Transaction.CommitRetaining;
                               FiltraTabela(DMMACS.TMP, 'tmp', '', '', '');
                           end;
                   end;

                  DMPESSOA.TAux2.Close;
                  DMPESSOA.TAux2.SQL.Clear;
                  DMPESSOA.TAux2.SQL.Add('select * from aluguel');
                  DMPESSOA.TAux2.SQL.Add('left join equipamento on aluguel.cod_equipamento = equipamento.cod_equipamento');
                  DMPESSOA.TAux2.SQL.Add('where cod_pedvenda = '+ IntToStr(COD_PEDIDO));
                  DMPESSOA.TAux2.Open;

                  xtesteaux := DMPESSOA.TAux2.FieldByName('cod_aluguel').AsString;

               //Seleciona dados de pessoa juridica
               DMPESSOA.TPessoaJ.Close;
               DMPESSOA.TPessoaJ.SQL.Clear;
               DMPESSOA.TPessoaJ.SQL.Add(' Select * from pessoaj ');
               DMPESSOA.TPessoaJ.SQL.Add(' Where pessoaj.cod_pessoa=:CODFUNC ');
               DMPESSOA.TPessoaJ.ParamByName('CODFUNC').AsInteger:=DMEstoque.Alx.FieldByName('cod_pessoa').AsInteger;
               DMPESSOA.TPessoaJ.Open;

               DMEstoque.Alx1.Close;
               DMEstoque.Alx1.SQL.Clear;
               DMEstoque.Alx1.SQL.Add(' Select * from vwfuncionario ');
               DMEstoque.Alx1.SQL.Add(' Where vwfuncionario.cod_func=:CODFUNC ');
               DMEstoque.Alx1.ParamByName('CODFUNC').AsInteger:=DMEstoque.Alx.FieldByName('cod_func').AsInteger;
               DMEstoque.Alx1.Open;

               //insere sql necessária para filtrar inetns do pedido de venda
               DMESTOQUE.TSlave.close;
               DMESTOQUE.TSlave.sql.clear;
               DMESTOQUE.TSlave.sql.Add('SELECT itenspedven.operacao AS OPER, itenspedven.qtdeprod, unidade.sigla_unid, ');
               DMESTOQUE.TSlave.sql.Add('subproduto.descricao, subproduto.marca, subproduto.CONTRINT, subproduto.pesoliq, subproduto.pesobruto, itenspedven.valunit, itenspedven.descpro, itenspedven.valortotal, itenspedven.DATA ');
               DMESTOQUE.TSlave.sql.Add('FROM itenspedven join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
               DMESTOQUE.TSlave.sql.Add('join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
               DMESTOQUE.TSlave.sql.Add('join produto on subproduto.cod_produto = produto.cod_produto ');
               DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on SubProduto.cod_unidVenda = unidade.cod_unidade ');
               DMESTOQUE.TSlave.sql.Add('Where (itenspedven.cod_pedven = :CODPED) ' + 'ORDER BY Subproduto.Descricao, itenspedven.DATA');
               DMESTOQUE.TSlave.ParamByName('CODPED').AsInteger:=COD_PEDIDO;
               DMESTOQUE.TSlave.Open;

               //FILTRA DESPESAS
               DMESTOQUE.TDesp.Close;
               DMESTOQUE.TDesp.SQL.Clear;
               DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'PEDVENDA'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
               DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=COD_PEDIDO;
               DMESTOQUE.TDesp.Open;

               //VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
               FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+IntToStr(COD_PEDIDO)+#39+')');

               //insere sql necessária para filtrar parcelas da conta
               DMMacs.TALX.Close;
               DMMacs.TALX.sql.Clear;
               DMMacs.TALX.SQL.Add('SELECT parcelacr.dtvenc, parcelacr.cobranca, parcelacr.valor FROM parcelacr left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber ');
               DMMacs.TALX.SQL.Add(' Where (ctareceber.tipogerador='+#39+'PEDVENDA'+#39+') And (ctareceber.cod_gerador=:CODGERADOR) ');
               DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:=COD_PEDIDO;
               DMMacs.TALX.Open;

               //Assume parcelas em campo blob de loja para após ser passado em relatório
               DMMACS.TLoja.Edit;
               DMMACS.TLoja.FieldByName('TMP1').AsString:='';
               DMMACS.TLoja.Post;
               DMMACS.TALX.First;
               while not DMMACS.TALX.Eof do
               Begin
                   DMMACS.TLoja.Edit;
                   DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+DMMacs.TALX.FieldByName('dtvenc').AsString+'     /    '+DMMacs.TALX.FieldByName('cobranca').AsString+'     -    '+FormatFloat('0.00', DMMacs.TALX.FieldByName('valor').AsCurrency)+#13;
                   DMMACS.TLoja.Post;
                   DMMACS.TALX.Next;
               End;
               DMMACS.Transaction.CommitRetaining;

              If DMMacs.TLoja.FieldByName('IMPPED').AsString='1'
              Then Begin // o pedido deve ser impresso sem pré visualização
                 If DMMacs.TLoja.FieldByName('IMPMATRICIAL').AsString<>'1'
                 Then Begin
                   //IMPRIME ATRAVEZ DO RELATORIOS
                   //imprime o N. de cópias informado no bd
                   If DMMacs.TLoja.FieldByName('QTDCOPYPED').AsString=''
                   Then Begin
                       Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Na Configuração da loja, não foi informado o Número de cópias a ser impresso. Desta forma o sistema irá imprimir apenas 1!', '', 1, 1, False, 'a');

                       if XCOMREL = true then
                           begin
                               FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 08.01.frf');
                           end
                       else
                           begin
                               FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 08.frf');
                           end;

                       FSRel.ShowReport;

                   End
                   Else Begin
                       If DMMacs.TLoja.FieldByName('QTDCOPYPED').AsInteger>6
                       Then Begin
                           If Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Segundo configurações da loja o sistema deve imprimir mais de 6 cópias do pedido.'+#13+'Deseja realmente imprimir?', '', 2, 2, False, 'c')=2
                           Then Begin
                               For I:=0 To DMMacs.TLoja.FieldByName('QTDCOPYPED').AsInteger do
                               Begin

                                   if XCOMREL = true then
                                       begin
                                           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 08.01.frf');
                                       end
                                   else
                                       begin
                                           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 08.frf');
                                       end;

                                   FSRel.ShowReport;
                               End;
                           End;
                       End
                       Else Begin
                           For I:=1 To DMMacs.TLoja.FieldByName('QTDCOPYPED').AsInteger do
                           Begin

                               if XCOMREL = true then
                                   begin
                                       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 08.01.frf');
                                   end
                               else
                                   begin
                                       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 08.frf');
                                   end;

                               FSRel.ShowReport;
                           End;
                       End;
                   End;
                 End
                 Else Begin
                   //IMPRIME ATRAVEZ DE CANVAS
                   If Mensagem('CONFIRMAÇÃO', 'Imprimir pedido Nº '+DMEstoque.Alx.FieldByName('NUMPED').AsString, '', 2, 2, False, 'c')=2
                   Then Begin
                       ImpPedCanvas;
                   End;
                 End;
              End
              Else Begin
                 If DMMacs.TLoja.FieldByName('IMPMATRICIAL').AsString<>'1'
                 Then Begin
                   //IMPRIME ATRAVEZ DE RELATORIOS
                   If (FMenu.TIPOREL='PEDNORMAL') or (FMenu.TIPOREL='NORMAL')
                   Then Begin

                       if XCOMREL = true then
                           begin
                               FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 08.01.frf');
                           end
                       else
                           begin
                               FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompVend 08.frf');
                           end;

                       FSRel.ShowReport;
                   End;
                 End
                 Else Begin
                   //IMPRIME PELO CANVAS
                   If Mensagem('CONFIRMAÇÃO', 'Imprimir pedido Nº '+DMEstoque.Alx.FieldByName('NUMPED').AsString, '', 2, 2, False, 'c')=2
                   Then Begin
                       ImpPedCanvas;
                   End;
                 End;
              End;
              DMMACS.Transaction.RollbackRetaining;
              DMMACS.Transaction.CommitRetaining;
           End
           Else Begin
               MessageDlg('DADOS DE VENDA NÃO ENCONTRADOS', mtWarning, [mbOK], 0);
           End;
       End
       Else Begin
			//insere sql necessária para filtrar pedido de venda e valores necessários
           DMEstoque.Alx.Close;
           DMEstoque.Alx.SQL.Clear;
           DMEstoque.Alx.SQL.Add('SELECT pedcompra.numped, pedcompra.cobranca, pessoa.nome, pessoa.cpfcnpj, pessoa.endereco, ');
           DMEstoque.Alx.SQL.Add('cidade.nome, pedcompra.dtpedcomp, pedcompra.OBS, FormPag.Descricao, pedcompra.Desconto AS DESCONTO, pedcompra.Descmoe, pedcompra.valor ');
           DMEstoque.Alx.SQL.Add('FROM pedcompra Left join fornecedor ON pedcompra.cod_fornec = fornecedor.cod_fornec ');
           DMEstoque.Alx.SQL.Add('Left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
           DMEstoque.Alx.SQL.Add('join FormPag ON FormPag.cod_FormPag = pedcompra.Cod_FormPag ');
           DMEstoque.Alx.SQL.Add('left join cidade ON pessoa.cod_cidade = cidade.cod_cidade ');
           DMEstoque.Alx.SQL.Add('Where pedcompra.cod_pedcomp=:CODPED');
           DMEstoque.Alx.ParamByName('CODPED').AsInteger:=COD_PEDIDO;
           DMEstoque.Alx.Open;

           //insere sql necessária para filtrar inetns do pedido de venda
           DMESTOQUE.TSlave.close;
           DMESTOQUE.TSlave.sql.clear;
           DMESTOQUE.TSlave.sql.Add('SELECT subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
           DMESTOQUE.TSlave.sql.Add(' itenspedc.qtdeprod, unidade.sigla_unid, ');
           DMESTOQUE.TSlave.sql.Add('subproduto.descricao, subproduto.marca, itenspedc.valunit, itenspedc.descpro, itenspedc.valortotal ');
           DMESTOQUE.TSlave.sql.Add('FROM itenspedc join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
           DMESTOQUE.TSlave.sql.Add('join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
           DMESTOQUE.TSlave.sql.Add('join produto on subproduto.cod_produto = produto.cod_produto ');
           DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on Subproduto.cod_unidvenda = unidade.cod_unidade ');
           DMESTOQUE.TSlave.sql.Add('Where itenspedC.cod_pedcompra = :CODPED');
			DMESTOQUE.TSlave.ParamByName('CODPED').AsInteger:=COD_PEDIDO;
           DMESTOQUE.TSlave.Open;

           //insere sql necessária para filtrar parcelas da conta
           DMMacs.TALX.Close;
           DMMacs.TALX.sql.Clear;
           DMMacs.TALX.SQL.Add('SELECT parcelacp.dtvenc, parcelacp.cobranca, parcelacp.valor FROM parcelacp left join ctapagar on ctapagar.cod_ctapagar = parcelacp.cod_ctapagar ');
			DMMacs.TALX.SQL.Add(' Where (ctapagar.tipogerador='+#39+'PEDCOMPRA'+#39+') And (ctapagar.cod_gerador=:CODGERADOR) ');
           DMMacs.TALX.ParamByName('CODGERADOR').AsInteger:=COD_PEDIDO;
           DMMacs.TALX.Open;

	        //verifica se a tabela para pedido não esta vazia
	        If DMEstoque.Alx.IsEmpty
	        Then Begin
				Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O pedido que tentou imprimir encontra-se com falta de informações. Altere o pedido e preencha com as informações pendentes!', '', 1, 1, False, 'a');
	            Exit;
	        End;
	        //verifica se a tabela para items não esta vazia
	        If DMESTOQUE.TSlave.IsEmpty
	        Then Begin
				Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O pedido que tentou imprimir encontra-se sem items!', '', 1, 1, False, 'a');
  	            Exit;
           End;

	        FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompComp.frf');
			FSRel.ShowReport;
       End;
	End; //fim de filtra loja
End;

//Filtra Tabela Slave e calcula total
Procedure TFPedidoVendaConstrutora.FiltraSlaveDev;
Begin
	If XSQLTABELA='PEDVENDA'
   Then Begin//Se trabalhando com pedidos de venda
   EdValorPed.Text := '';
   	//INSERE COMANDOS PARA FILTRAR
 		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add('Select * From itenspedven');
		DMESTOQUE.TSlave.SQL.Add('left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.TSlave.SQL.Add('left join lote on itenspedven.cod_lote = lote.cod_lote ');
		DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
		DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
		DMESTOQUE.TSlave.SQL.Add('Where itenspedven.cod_pedven = :CODPEDVENDA ');
		DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsInteger:=XCod_PedVendaDev;
		DMESTOQUE.TSlave.Open;
       EdValorPed.Text := '';
       DMESTOQUE.TSlave.First;
       while not DMESTOQUE.TSlave.Eof do
             begin
             	EdValorPed.ValueNumeric := EdValorPed.ValueNumeric + DMESTOQUE.TSlave.FieldByName('valortotal').AsFloat;
               DMESTOQUE.TSlave.Next;
             end;
       //Samuel Fabricio Wink - 10/2/2009: soma aluguel
       FiltraTabela(DMESTOQUE.TAluguel, 'aluguel', 'cod_pedvenda', XCodPedido,'');
       DMESTOQUE.TAluguel.First;
       while not DMESTOQUE.TAluguel.Eof do
           begin
               EdValorPed.ValueNumeric := EdValorPed.ValueNumeric + DMESTOQUE.TAluguel.FieldByName('valor').AsFloat;
               DMESTOQUE.TAluguel.Next;
           end;
       //Samuel Fabricio Wink - 10/2/2009: soma frete
       EdValorPed.ValueNumeric := EdValorPed.ValueNumeric + EdFrete.ValueNumeric;
   End;
End;

//botao novo
procedure TFPedidoVendaConstrutora.BtnNovoClick(Sender: TObject);
begin
  xentsaida := true;
  xcliant := '-1';
  xconaltera := false;
  BtnFechar.Visible := false;
  xnovo := true;
  xcontrolesaida := false;
  PCadastro.BringToFront;
  PCadastro.Visible := true;
  PConsulta.SendToBack;
  PConsulta.Visible := false;
  LimparEdits;
  EdCodCliente.SetFocus;
  GbData.Caption := 'Entrada: ';

   	CODPEDIDO := InserReg(XTabela, XSQLTABELA, XPkTabela);
   	XTabela.FieldByName(XPkTabela).AsInteger:=CODPEDIDO;

   CodPedido:=XTabela.FieldByName(XPkTabela).AsInteger;
   XCodPedido:=XTabela.FieldByName(XPkTabela).AsString;
   XCod_PedVendaDev:=XTabela.FieldByName(XPkTabela).AsInteger;

   //gera novo codigo motorista veiculo
  xcodmotoveic := InserReg(DMESTOQUE.TMotoristaVeiculo, 'motoristaveiculo', 'cod_motoristaveiculo');

   //cancela o botão "X" de fechar para que o usuário possa apenas gravar ou cancelar
   BtnFecha.Visible:=False;

   Estado:='INSERT';

	//filtra tabela de empresa
	If FiltraTabela(DMMacs.TEmpresa,  'EMPRESA', '', '', '') = True
   Then Begin//se localizou a empresa
   	If XSQLTABELA='PEDVENDA'
       Then Begin //se trabalhando com pedido de venda
           //BtnAbrePAliq.Visible:=False;
      		XTabela.FieldByName('TIPO').AsString:='VND';
      		XTabela.FieldByName('COMSOBVENDA').AsString:='1';
       	If DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString='' Then
	       		XTabela.FieldByName('NUMPED').AsString:='1'
           Else
           	begin
                 //adiciona a letra P c for a filial.
                 if DMMacs.TEmpresa.FieldByName('TIPO').AsString =  'FILIAL'then
                     begin
                         XTabela.FieldByName('NUMPED').AsString := 'P' + DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString;
                         DBNumPed.Text := 'P' + DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString;
                         XCodPessoa:=DMMACS.TLoja.fieldByName('COD_CONSUMIDOR').AsInteger;
                         XTabela.FieldByName('dtpedven').AsDateTime := date();
                     end
                 else
                     begin
                         XTabela.FieldByName('NUMPED').AsString := DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString;
                         DBNumPed.Text := XTabela.FieldByName('NUMPED').AsString;
                         XCodPessoa:=DMMACS.TLoja.fieldByName('COD_CONSUMIDOR').AsInteger;
                         XTabela.FieldByName('dtpedven').AsDateTime := date();
                     end;
               end;

			If FiltraTabela(DMPESSOA.WCliente,  'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCodPessoa), '') = True Then
           	//EdCodCli.Text:=DMPESSOA.WCliente.fieldByName('COD_INTERNO').AsString;

           XTabela.FieldByName('DTPEDVEN').AsDateTime:=DATE();
   		//INSERE PRINCIPAIS CAMPOS PARA QUE ESTE PEDIDO NÃO SE PERCA COM PROBLEMAS
           XTabela.FieldByName('COD_CLIENTE').AsInteger:= XCodPessoa;
           XTabela.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
           //filtra as formas de pagamento
           FiltraTabela(DMFINANC.TFormPag,'FORMPAG', 'COD_LOJA', FMenu.LCODLOJA.Caption, ' order by Formpag.tipo desc');
           XTabela.FieldByName('COD_FORMPAG').AsInteger:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
           XTabela.FieldByName('COD_VENDEDOR').AsInteger:=DMPESSOA.TFuncionario.FieldByName('COD_FUNC').AsInteger;
           XTabela.FieldByName('SITUACAO').AsString:='ABERTO';
           XTabela.Post;
           XTabela.FieldByName('COD_PEDVENDA').AsInteger;
           DMSAIDA.IBT.CommitRetaining;
           FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(CODPEDIDO), '');
           // bloqueando registro para nao poder fechar nem consultar

           XTabela.Edit;
       End
       Else Begin

       	If DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString='' Then
	       		XTabela.FieldByName('NUMPED').AsString:='1'
           Else
	       		XTabela.FieldByName('NUMPED').AsString:=DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString;
           XTabela.FieldByName('DTPEDCOMP').AsDateTime:=DATE();
   		//INSERE PRINCIPAIS CAMPOS PARA QUE ESTE PEDIDO NÃO SE PERCA COM PROBLEMAS
           XTabela.FieldByName('COD_FORNEC').AsInteger:=DMPESSOA.TFornecedor.FieldByName('COD_FORNEC').AsInteger;
           XTabela.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
           //filtra as formas de pagamento
           FiltraTabela(DMFINANC.TFormPag,'FORMPAG', 'COD_LOJA', FMenu.LCODLOJA.Caption, ' order by FormPag.tipo');
           XTabela.FieldByName('COD_FORMPAG').AsInteger:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
           XTabela.FieldByName('SITUACAO').AsString:='ABERTO';
           XTabela.Post;
           DMENTRADA.IBT.CommitRetaining;
           FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', IntToStr(CODPEDIDO), '');
           XTabela.Edit;
       End;
		//ATUALIZA O NUM DO PEDIDO PARA Q OUTROS TERMINAIS PEGUEM O NUM CORRETO
       //Altera Nº proxima pedido de venda
       DMMacs.TEmpresa.EDIT;
       Try
	      	If XSQLTABELA='PEDVENDA' Then
	           DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString:=IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString)+1)
           Else
	           DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString:=IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString)+1)
       Except
	    End;
       Try
		    DMMacs.TEmpresa.Post;
	        DMMacs.Transaction.CommitRetaining;
       Except
		    Mensagem('ATENÇÃO', 'Não foi possível atualizar o Nº do proximo pedido. Por favor atualize manualmente!', '', 1, 1, False, 'a');
       End;
   End
   Else Begin
   	BtnCancelar.Click;
   	Exit;
   End;
   if FMenu.LCODUSUARIO.Caption <> '111522' then
   	begin
         //Samuel Fabricio Wink - 14/2/2009: seta vendedor conforme o usuario logado
         FiltraTabela(DMMACS.TUsuario, 'usuario', 'codusuario', FMenu.LCODUSUARIO.Caption, '');
         FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_func', DMMACS.TUsuario.FieldByName('cod_funcionario').AsString, '');
         FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cod_pessoa', DMPESSOA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
         EdCodVend.Text := DMPESSOA.TFuncionario.FieldByName('cod_interno').AsString;
         EdNomeVendedor.Text := DMPESSOA.TPessoa.FieldByName('nome').AsString;
       end;

   //Samuel Fabricio Wink - 14/2/2009: inicializa variavel
   //Seleciona somente os registros corretos
   FiltraSlave;
   BtnInsertProd.Tag:=1;
   //DBNumPed.SetFocus;
   CbPlaca.SetFocus;

end;

//form activate do pedido de venda
procedure TFPedidoVendaConstrutora.FormActivate(Sender: TObject);
begin
	//inicia campos de PK
  XCODPKMESTRE:=-1;
  XCodConta:=-1;
  XCodFormPag:=-1;
  XCodVendedor:=-1;
  XCodPessoa:=-1;
  XCodMoeda:=-1;
  XCodConta:=-1;
  XCodSlave:=-1;
  XCodVendItem:=-1;
  xcodobra:='';
  XTabela := DMSAIDA.TPedV;
  XTransaction := DMSAIDA.IBT;
  XTabSlave := DMSAIDA.TItemPV;
  EdDtSaidaCon.Text := DateToStr(Date());
  XView := DMSAIDA.WPedV;
  XPkTabela := 'cod_pedvenda';
  XSQLVIEW:='VWPEDV';
  XSQLTABELA := 'PEDVENDA';

  PConsulta.BringToFront;
  PCadastro.SendToBack;
  PCadastro.Visible := false;
  BtnFecha.Visible:=True;
  PEndereco.Visible := false;
  DBMotorista.Visible := False;
  PCodNomeMoto.Visible := False;

  atualizapedido;
  atualizasaida;

  // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\construtora.lgm')
   Then
       DBGPedidoPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\construtora.lgm');

   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\construtoraVeiculo.lgm')
   Then
       DBGVeiculoPatio.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\construtoraVeiculo.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\construtoraProdutos.lgm')
   Then
       DBGProdutosPedido.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\construtoraProdutos.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\construtoraConteiner.lgm')
   Then
       DBGContainer.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\construtoraConteiner.lgm');

end;

//botao cancelar
procedure TFPedidoVendaConstrutora.BtnCancelarClick(Sender: TObject);
begin
   If ControlAccess('LIBERACRED', '')=False
   Then Begin
     XLIBCRED:=True;
     If VerificBloqCli(IntToStr(XCodPessoa))=True
     Then Begin
       If Mensagem('C R É D I T O   B L O Q U E A D O', 'O Cliente informado possui Crédito Bloqueado. Para cancelar a venda é necessário excluir os itens!', '', 2, 3, False, 'c')= 2
       Then Begin
           AbrirForm(TFSENHA, FSENHA, 0);
           //repassa resultado da tela de autenticação de senha para as variáveis de controle
           If XAlxResult=True Then
               XLIBCRED:=True
           Else
               XLIBCRED:=False;
       End
       Else Begin
           XLIBCRED:=False;
       end;
     End;
     If XLIBCRED=False
     Then Begin
       Mensagem('C R É D I T O   B L O Q U E A D O', 'O Cliente informado possui Crédito Bloqueado. O Pedido não pode ser gravado com o cliente tendo crédito bloqueado!', '', 1, 1, false, 'i');
       Exit;
     End;
   end;
  PConsulta.BringToFront;
  PConsulta.Visible := true;
  PCadastro.SendToBack;
  PCadastro.Visible := false;
  BtnFechar.Visible := True;
if(xnovo = true)then
	begin
    //APAGA ITEM
     DMESTOQUE.TSlave.Close;
     DMESTOQUE.TSlave.SQL.Clear;
     DMESTOQUE.TSlave.SQL.Add('delete from itenspedven');
     DMESTOQUE.TSlave.SQL.Add('where itenspedven.cod_pedven = :CODPED');
     DMESTOQUE.TSlave.ParamByName('CODPED').AsInteger:= StrToInt(XCodPedido);
     DMESTOQUE.TSlave.ExecSQL;
     DMESTOQUE.TransacEstoque.CommitRetaining;
     //apaga aluguel
     DMESTOQUE.TAluguel.Close;
     DMESTOQUE.TAluguel.SQL.Clear;
     DMESTOQUE.TAluguel.SQL.Add('delete from aluguel');
     DMESTOQUE.TAluguel.SQL.Add('where aluguel.cod_pedvenda = :CODPED');
     DMESTOQUE.TAluguel.ParamByName('CODPED').AsInteger:= StrToInt(XCodPedido);
     DMESTOQUE.TAluguel.ExecSQL;
     DMESTOQUE.TransacEstoque.CommitRetaining;
     //apaga pedido
     DMSAIDA.TAlx.Close;
     DMSAIDA.TAlx.SQL.Clear;
     DMSAIDA.TAlx.SQL.Add('delete from pedvenda');
     DMSAIDA.TAlx.SQL.Add('where pedvenda.cod_pedvenda = :CODPED');
     DMSAIDA.TAlx.ParamByName('CODPED').AsInteger:= StrToInt(XCodPedido);
     DMSAIDA.TAlx.ExecSQL;
     DMSAIDA.IBT.CommitRetaining;

	{end
else
	begin
     FiltraTabela(DMSAIDA.TPedV, 'pedvenda', 'cod_pedvenda', XCodPedido, '');
     DMSAIDA.TPedV.Edit;
     DMSAIDA.TPedV.FieldByName('edit').AsString := '0';
     DMSAIDA.TPedV.Post;
     DMSAIDA.IBT.CommitRetaining;   }
   end;

  atualizapedido;
  atualizasaida;
end;

//botao saida de veiculos do patio
procedure TFPedidoVendaConstrutora.BtnSelecionarClick(Sender: TObject);
begin
	if xbtconsulta <> true then
   	begin
       	xentsaida := true;
       end;

  xbtconsulta := false;
  //Samuel Fabricio Wink - 14/2/2009: inicializa variavel
  xcliant := '0';
  xconaltera := true;
  xnovo := false;
  xcontrolesaida := true;
  LimparEdits;
  GbData.Caption := 'Saída: ';

          // BUSCANDO DADOS DO PEDIDO
           FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',DMSAIDA.TAlx.FieldByName('COD_PEDVENDA').AsString,'');
           if(DMSAIDA.TPedV.IsEmpty)then
           	begin
               	Mensagem('    A T E N Ç Ã O   ','Não existe nenhum veículo no pátio.','',1,1,false,'I');
                   Exit;
               end;
          { If DMMacs.Tloja.FieldByName('REDE').AsInteger=1
           Then Begin
               //Se sistema configurado para trabalhar em rede o sistema deve realizar o controle para que o mesmo pedido não seja alterado por dois usuarios ao mesmo tempo
               // caso o campo tiver valendo 1 eh pq o pedido de venda jah esta sendo usado
               If DMSAIDA.TPedV.FieldByName('EDIT').AsString = '1'
               Then Begin
                   Mensagem('    A T E N Ç Ã O   ','O pedido de venda está sendo usado no momento.','',1,1,false,'I');
                   Exit;
               End
               Else Begin
                   DMSAIDA.TPedV.Edit;
                   DMSAIDA.TPedV.FieldByName('EDIT').AsString := '1';
                   DMSAIDA.TPedV.Post;
                   DMSAIDA.IBT.CommitRetaining;
               End;
           End; }


	   //inherited;

		   If FiltraTabela(XTabela, 'PEDVENDA', 'COD_PEDVENDA', DMSAIDA.TAlx.FieldByName('COD_PEDVENDA').AsString, '')=False
          Then Begin
          		Exit;//Caso não encontrar cancelar
          End
          Else Begin
          		//atualizasaida;
               XCodPedido := DMSAIDA.TAlx.FieldByName('COD_PEDVENDA').AsString;
               XCod_PedVendaDev := DMSAIDA.TAlx.FieldByName('COD_PEDVENDA').AsInteger;
               DBNumPed.Text := DMSAIDA.TAlx.FieldByName('NUMPED').AsString;
          End;


	   //cancela o botão "X" de fechar para que o usuário possa apenas gravar ou cancelar
	   BtnFecha.Visible:=False;

	   //Filtra tabela de pedido de acordo com o registro selecionado na view
			//Atribui codigo do pedido para que não haja percas
           XCodPedido := XTabela.FieldByName('COD_PEDVENDA').AsString;
           EdDataVen.Text := XTabela.FieldByName('DTPEDVEN').AsString;
           EdDescPed.Text := XTabela.FieldByName('DESCONTO').AsString;
           EdDescMoeda.Text := XTabela.FieldByName('DESCMOE').AsString;
           EdFrete.Text := XTabela.FieldByName('VLRFRETE').AsString;
           MmObs.Text := XTabela.FieldByName('OBS').AsString;
           if FiltraTabela(DMPESSOA.TFuncionario, 'FUNCIONARIO', 'COD_FUNC', XTabela.fieldByName('COD_VENDEDOR').AsString, '') = true
           then begin
              EdCodVend.Text := DMPESSOA.VWFuncionario.FieldByName('cod_interno').AsString;
              EdNomeVendedor.Text := DMPESSOA.VWFuncionario.FieldByName('nome').AsString;
           end;
           //cliente
           If XTabela.FieldByName('COD_CLIENTE').AsString<>''
           Then Begin//Se foi informado um cliente cadastrado vai buscar na tabela
               // BUSCA DADOS CLIENTE
               FiltraTabela(DMPESSOA.WCliente,'vwcliente','COD_CLIENTE',XTabela.FieldByName('cod_cliente').AsString,'');

               XCodPessoa := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
  		         EdCodCliente.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       	       EdNomeCli.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
	             EdCpfCnpj.Text := DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;

           End
           Else Begin //se o cliente foi cadastrado na hora
       	      EdNomeCli.Text:=XTabela.FieldByName('NOMECLI').AsString;
	            EdCpfCnpj.Text:=XTabela.FieldByName('CPFCNPJ').AsString;

			      End;

           //vendedor
		 IF	SelectRegistro('VWFUNCIONARIO', 'COD_FUNC', XTABELA.FieldByName('COD_VENDEDOR').AsString) = TRUE
     then begin
			  XCodVendedor:=DMMACS.TSelect.FieldByName('COD_FUNC').AsInteger;
			  EdCodVend.Text:=DMMACS.TSelect.FieldByName('COD_INTERNO').AsString;
			  EDNOMEVENDEDOR.Text:=DMMACS.TSelect.FieldByName('NOME').AsString;
     end;
      //FORMA DE PAGAMENTO
      FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'cod_formpag', XTabela.FieldByName('COD_FORMPAG').AsString, '');
      XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
      EDCODFORMPAG.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
      EDFORMPAG.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;

	   //seleciona items do pedido
      FiltraSlave;

      //Informa outros valores
      EdValorPed.Text:=XTabela.FieldByName('VALOR').AsString;
      EdDescMoeda.Text := FormatFloat('#,##0.00',XTabela.FieldByName('DESCMOE').AsCurrency);

      FiltraTabela(DMESTOQUE.TMotoristaVeiculo, 'motoristaveiculo', 'cod_pedvenda', XCodPedido,'');
      EdTara.Text := DMESTOQUE.TMotoristaVeiculo.FieldByName('TARA').AsString;
      GbData.Caption := 'Saida: ';

      if(xcomdata = true)then
      	begin
      		EdData.Text := DMESTOQUE.TMotoristaVeiculo.FieldByName('DTENTRADA').AsString;
      		EdHora.Text := DMESTOQUE.TMotoristaVeiculo.FieldByName('HRENTRADA').AsString;
      	end
      else
      	begin
       	EdData.Text := DateToStr(Date());
      		EdHora.Text := TimeToStr(Time());
       end;
      xcodmotoveic := DMESTOQUE.TMotoristaVeiculo.FieldByName('COD_MOTORISTAVEICULO').AsInteger;
      xcodequipa := DMESTOQUE.TMotoristaVeiculo.FieldByName('COD_EQUIPAMENTO').AsString;
      xcodfunci := DMESTOQUE.TMotoristaVeiculo.FieldByName('COD_FUNCIONARIO').AsString;

      FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_equipamento', xcodequipa,'');
      CbPlaca.Text := DMPESSOA.TEquip.FieldByName('PLACA').AsString;
      xcodcliente := DMPESSOA.TEquip.FieldByName('COD_CLIENTE').AsString;

      FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'cod_fornec', xcodcliente,'');
      EdCodTrans.Text := DMPESSOA.WFornecedor.FieldByName('cod_interno').AsString;
      EdNomeTrans.Text := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;

      FiltraTabela(DMPESSOA.VWFuncionario, 'vwfuncionario', 'cod_func', xcodfunci,'');
      EdCodMoto.Text := DMPESSOA.VWFuncionario.FieldByName('cod_interno').AsString;
      EdNomeMoto.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;

      PConsulta.SendToBack;
      PConsulta.Visible := false;
      PCadastro.BringToFront;
      PCadastro.Visible := true;

      BtnFechar.Visible := false;

      EdCodCliente.SetFocus;

      //seleciona items do pedido
      FiltraSlaveDev;
      //seleciona container
      pesqcontainer;

end;

//botao que chama o form de cliente
procedure TFPedidoVendaConstrutora.BtnProcPessClick(Sender: TObject);
begin
	FiltraTabela(DMPESSOA.WCliente, 'vwcliente', '', '', '');
  if AbrirForm(TFCliente, FCliente, 1)='Selected'
  then
    begin
     EdCodCliente.Text:= DMPESSOA.WCliente.fieldbyname('cod_interno').AsString;
     EdCpfCnpj.Text:=DMPESSOA.WCliente.fieldbyname('cpfcnpj').AsString;
     EdNomeCli.Text:=DMPESSOA.WCliente.fieldbyname('nome').AsString;
     xclirel:=DMPESSOA.WCliente.fieldbyname('cod_cliente').AsInteger;
     if StrToInt(xcliant) <> 0 then
         begin
            if XCodPessoa <> StrToInt(xcliant) then
             begin
                 FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_cliente', DMPESSOA.WCliente.FieldByName('cod_cliente').AsString, '');
                 //Samuel Fabricio Wink - 14/2/2009: busca formpag
                 if DMPESSOA.TCliente.FieldByName('cod_formpag').AsString <> '' then
                     begin
                         FiltraTabela(DMFINANC.TFormPag, 'formpag', 'cod_formpag', DMPESSOA.TCliente.FieldByName('cod_formpag').AsString, '');
                         EDCODFORMPAG.Text := DMFINANC.TFormPag.FieldByName('cod_interno').AsString;
                         EDFORMPAG.Text := DMFINANC.TFormPag.FieldByName('descricao').AsString;
                         xcliant := DMPESSOA.WCliente.fieldbyname('cod_pessoa').AsString;

                     end;

                 if StrToInt(xcliant) <> 0 then
                 begin
                    if XCodPessoa <> StrToInt(xcliant) then
                     begin
                         FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_cliente', DMPESSOA.WCliente.FieldByName('cod_cliente').AsString, '');
                         //Samuel Fabricio Wink - 14/2/2009: busca formpag
                         if DMPESSOA.TCliente.FieldByName('cod_formpag').AsString <> '' then
                             begin
                                 FiltraTabela(DMFINANC.TFormPag, 'formpag', 'cod_formpag', DMPESSOA.TCliente.FieldByName('cod_formpag').AsString, '');
                                 EDCODFORMPAG.Text := DMFINANC.TFormPag.FieldByName('cod_interno').AsString;
                                 EDFORMPAG.Text := DMFINANC.TFormPag.FieldByName('descricao').AsString;
                                 xcliant := DMPESSOA.WCliente.fieldbyname('cod_pessoa').AsString;

                             end;
                     end;
             end;
             end;
         end;
    end;
  EdCodVend.SetFocus;
end;

//botao que chama o form cliente/transportadora
procedure TFPedidoVendaConstrutora.BtnTransportadoraClick(Sender: TObject);
begin
  if AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
  then
    begin
      EdCodTrans.Text:= DMPESSOA.WFornecedor.fieldbyname('cod_interno').AsString;
      EdNomeTrans.Text:=DMPESSOA.WFornecedor.fieldbyname('nome').AsString;

      //gera combo placas referente a transportadora selecionada
      CbPlaca.Clear;
      DMPESSOA.TEquip.Close;
      DMPESSOA.TEquip.SQL.Clear;
      //cod_fornecedore  nese caso vai referenciar o cod_cliente na tabela equipamento
      FiltraTabela(DMPESSOA.TFornecedor, 'fornecedor', 'cod_interno', EdCodTrans.Text, '');
      DMPESSOA.TEquip.SQL.Add('select * from equipamento where cod_cliente = '+ DMPESSOA.TFornecedor.FieldByName('cod_fornec').AsString);
      DMPESSOA.TEquip.Open;
      while not DMPESSOA.TEquip.Eof do
         begin
             CbPlaca.Items.Add(DMPESSOA.TEquip.FieldByName('placa').AsString);
             DMPESSOA.TEquip.Next;
         end;
      CbPlaca.Text := DMPESSOA.TEquip.FieldByName('placa').AsString;
      EdCodCliente.SetFocus;
    end;
end;

//botao motorista
procedure TFPedidoVendaConstrutora.BtOpenMotoristaClick(Sender: TObject);
begin
  FMenu.TIPOAUX := 'TERCEIROS';

  if AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'then
    begin
     EdCodMoto.Text := DMPESSOA.VWFuncionario.fieldbyname('cod_interno').AsString;
     EdNomeMoto.Text := DMPESSOA.VWFuncionario.fieldbyname('nome').AsString;
    end;
  //EdCodTrans.SetFocus;
  EdCodCliente.SetFocus;
  //tipoaux recebe vazio
  FMenu.TIPOAUX := '';
end;

//botao pesquisa vendedor
procedure TFPedidoVendaConstrutora.BtnProcVendClick(Sender: TObject);
begin
  FMenu.TIPOAUX := 'FUNCIONARIO';
  if AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'then
    begin
     EdCodVend.Text:= DMPESSOA.VWFuncionario.fieldbyname('cod_interno').AsString;
     EdNomeVendedor.Text:= DMPESSOA.VWFuncionario.fieldbyname('nome').AsString;
     EDCODFORMPAG.SetFocus;
    end;

  FMenu.TIPOAUX := '';
end;

//botao pesquisa forma de pagamento
procedure TFPedidoVendaConstrutora.BtnProcFormPagClick(Sender: TObject);
begin
  if AbrirForm(TFFormPag, FFormPag, 1)='Selected'then
    begin
     EDCODFORMPAG.Text:= DMFINANC.TFormPag.fieldbyname('cod_interno').AsString;
     EDFORMPAG.Text:= DMFINANC.TFormPag.fieldbyname('descricao').AsString;
     MmObs.SetFocus;
    end;
end;

//botao pesquisa equipamento container
procedure TFPedidoVendaConstrutora.BtOpenContainerClick(Sender: TObject);
var
xteste : string;
begin
  if AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected'then
    begin
      xteste := DMPESSOA.TEquip.fieldbyname('cod_equipamento').AsString;
	//Samuel Fabricio Wink - 9/2/2009: filtra equipamento
      FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_equipamento', xteste, '');
      if(DMPESSOA.TEquip.IsEmpty)then
        begin
          Mensagem('ATENÇÃO', 'Código Incorreto ou Equipamento Inexistente!!!', '', 1, 1, False, 'A');
        end
      else
        begin
        	//Samuel Fabricio Wink - 9/2/2009: filtra aluguel
        	FiltraTabela(DMESTOQUE.TAluguel, 'aluguel', 'cod_equipamento', DMPESSOA.TEquip.fieldbyname('cod_equipamento').AsString, 'and status = 1');

          if(DMESTOQUE.TAluguel.IsEmpty)then
            begin
              EdCodCon.Text:= DMPESSOA.TEquip.fieldbyname('num_frota').AsString;
              EdDescCon.Text:= DMPESSOA.TEquip.fieldbyname('descricao').AsString;
              EdTemAluguel.SetFocus;
              EdDtSaidaCon.Text := DateToStr(Date());
            end
          else
            begin
              Mensagem('ATENÇÃO', 'Código Incorreto ou Container já alugado!!!', '', 1, 1, False, 'A');
              EdCodCon.Text := '';
              EdCodCon.SetFocus;
            end;
        end;
    end;
end;

//botao placa busca em equipamento
procedure TFPedidoVendaConstrutora.BtOpenEquipamentoClick(Sender: TObject);
begin
  if AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected'
  then
    begin
     CbPlaca.Text:= DMPESSOA.TEquip.fieldbyname('placa').AsString;

     Trim(EdCodTrans.Text);
      if(EdCodTrans.Text = '')then
        begin
          pesquisaplaca;
          xcodequip := DMPESSOA.TEquip.fieldbyname('cod_equipamento').AsString;
          EdCodTrans.Text := DMPESSOA.TEquip.fieldbyname('cod_cliente').AsString;

          DMESTOQUE.Alx.Close;
          DMESTOQUE.Alx.SQL.Clear;
          DMESTOQUE.Alx.SQL.Add('select * from motoristaveiculo');
          DMESTOQUE.Alx.SQL.Add('left join vwfuncionario on motoristaveiculo.cod_funcionario = vwfuncionario.cod_func');
          DMESTOQUE.Alx.SQL.Add('where motoristaveiculo.cod_equipamento ='+xcodequip);
          DMESTOQUE.Alx.Open;
        end
      else
        begin
          pesquisaplaca;
          xcodequip := DMPESSOA.TEquip.fieldbyname('cod_equipamento').AsString;

          //busca motorista referentes a placa
          DMESTOQUE.Alx.Close;
          DMESTOQUE.Alx.SQL.Clear;
          DMESTOQUE.Alx.SQL.Add('select * from motoristaveiculo');
          DMESTOQUE.Alx.SQL.Add('left join vwfuncionario on motoristaveiculo.cod_funcionario = vwfuncionario.cod_func');
          DMESTOQUE.Alx.SQL.Add('where motoristaveiculo.cod_equipamento ='+xcodequip);
          DMESTOQUE.Alx.Open;
        end;
    end;
end;

//procura transportadora respectivo quando sai do codtransportadora
procedure TFPedidoVendaConstrutora.EdCodTransExit(Sender: TObject);
begin
  Trim(EdCodTrans.Text);
  if(EdCodTrans.Text <> '')then
    begin
      //verifica se existe o codigo cliente/transportadora
      if FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'cod_interno', EdCodTrans.Text,'') = false then
      	begin
          EdCodTrans.Text := '';
          EdNomeTrans.Text := '';
          BtnTransportadora.SetFocus;
          Mensagem('ATENÇÃO', 'Transportadora não encontrada! Cógigo incorreto!!!', '', 1, 1, False, 'A');
       end
      else
        begin
        	if cbplaca.Text = '' then
           	begin
                  EdCodTrans.Text := DMPESSOA.WFornecedor.fieldbyname('cod_interno').AsString;
                  EdNomeTrans.Text := DMPESSOA.WFornecedor.fieldbyname('nome').AsString;

                  //gera combo placas referente a transportadora selecionada
                  CbPlaca.Clear;
                  DMPESSOA.TEquip.Close;
                  DMPESSOA.TEquip.SQL.Clear;
                  //cod_fornecedore  nese caso vai referenciar o cod_cliente na tabela equipamento
                  FiltraTabela(DMPESSOA.TFornecedor, 'fornecedor', 'cod_interno', EdCodTrans.Text, '');
                  DMPESSOA.TEquip.SQL.Add('select * from equipamento where cod_cliente = '+ DMPESSOA.TFornecedor.FieldByName('cod_fornec').AsString);
                  DMPESSOA.TEquip.Open;
                  while not DMPESSOA.TEquip.Eof do
                     begin
                         CbPlaca.Items.Add(DMPESSOA.TEquip.FieldByName('placa').AsString);
                         DMPESSOA.TEquip.Next;
                     end;
                  CbPlaca.Text := DMPESSOA.TEquip.FieldByName('placa').AsString;
                  EdCodCliente.SetFocus;
               end;
        end;
    end;
end;

//quando sai da edit codcliente
procedure TFPedidoVendaConstrutora.EdCodClienteExit(Sender: TObject);
begin
  Trim(EdCodCliente.Text);
  if(EdCodCliente.Text <> '')then
    begin
      //verifica se existe o codigo cliente
      if FiltraTabela(DMPESSOA.WCliente, 'vwcliente', 'cod_interno', EdCodCliente.Text, '') = false then
        begin
          EdCodCliente.Text := '';
          EdCpfCnpj.Text := '';
          EdNomeCli.Text := '';
          BtnProcPess.SetFocus;
          Mensagem('ATENÇÃO', 'Cliente não encontrado! Código incorreto!!!', '', 1, 1, False, 'A');
        end
      else
        begin
          EdCodCliente.Text := DMPESSOA.WCliente.fieldbyname('cod_interno').AsString;
          EdCpfCnpj.Text := DMPESSOA.WCliente.fieldbyname('cpfcnpj').AsString;
          EdNomeCli.Text := DMPESSOA.WCliente.fieldbyname('nome').AsString;
          XCodPessoa := DMPESSOA.WCliente.fieldbyname('cod_pessoa').AsInteger;
          xclirel:= DMPESSOA.WCliente.fieldbyname('cod_cliente').AsInteger;

          if StrToInt(xcliant) <> 0 then
             begin
                if XCodPessoa <> StrToInt(xcliant) then
                 begin
                     FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_cliente', DMPESSOA.WCliente.FieldByName('cod_cliente').AsString, '');
                     //Samuel Fabricio Wink - 14/2/2009: busca formpag
                     if DMPESSOA.TCliente.FieldByName('cod_formpag').AsString <> '' then
                         begin
                             FiltraTabela(DMFINANC.TFormPag, 'formpag', 'cod_formpag', DMPESSOA.TCliente.FieldByName('cod_formpag').AsString, '');
                             EDCODFORMPAG.Text := DMFINANC.TFormPag.FieldByName('cod_interno').AsString;
                             EDFORMPAG.Text := DMFINANC.TFormPag.FieldByName('descricao').AsString;
                             xcliant := DMPESSOA.WCliente.fieldbyname('cod_pessoa').AsString;
                         end;
                 end;
             end;
        end;
    end;
end;

//on exit do combo placa
procedure TFPedidoVendaConstrutora.CbPlacaExit(Sender: TObject);
begin
  Trim(CbPlaca.Text);
  if(CbPlaca.Text <> '')then
    begin
       pesquisaplaca;
       xcodequip := DMPESSOA.TEquip.fieldbyname('cod_equipamento').AsString;

       if xcodequip <> '' then
       	begin
             //Samuel Fabricio Wink - 13/2/2009: busca fornecedor
             FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'cod_fornec', DMPESSOA.TEquip.fieldbyname('cod_cliente').AsString, '');
             EdCodTrans.Text := DMPESSOA.WFornecedor.FieldByName('cod_interno').AsString;
             EdNomeTrans.Text := DMPESSOA.WFornecedor.FieldByName('nome').AsString;

             //Samuel Fabricio Wink - 13/2/2009: busca tara
             FiltraTabela(DMESTOQUE.TMotoristaVeiculo, 'motoristaveiculo', 'cod_equipamento', xcodequip, '');
             DMESTOQUE.TMotoristaVeiculo.Last;
             EdTara.Text := DMESTOQUE.TMotoristaVeiculo.FieldByName('tara').AsString;

             DMESTOQUE.Alx.Close;
             DMESTOQUE.Alx.SQL.Clear;
             DMESTOQUE.Alx.SQL.Add('select distinct vwfuncionario.cod_func, vwfuncionario.nome, vwfuncionario.cod_interno from motoristaveiculo');
             DMESTOQUE.Alx.SQL.Add('left join vwfuncionario on motoristaveiculo.cod_funcionario = vwfuncionario.cod_func');
             DMESTOQUE.Alx.SQL.Add('where motoristaveiculo.cod_equipamento ='+xcodequip);
             DMESTOQUE.Alx.Open;
       	end
       else
       	begin
           	CbPlaca.Text := '';
               CbPlaca.SetFocus;
           end
    end;
end;

//ao sair do campo cod vendedor
procedure TFPedidoVendaConstrutora.EdCodVendExit(Sender: TObject);
begin
  Trim(EdCodVend.Text);
  if(EdCodVend.Text <> '')then
    begin
      if(FiltraTabela(DMPESSOA.VWFuncionario, 'vwfuncionario', 'cod_func', EdCodVend.Text, '') = false)then
        begin
        	EdCodVend.Text := '';
           EdNomeVendedor.Text := '';
           BtnProcVend.SetFocus;
          Mensagem('ATENÇÃO', 'O Código Incorreto ou Vendedor Inexistente!!!', '', 1, 1, False, 'A');
        end
      else
        begin
          EdCodVend.Text := DMPESSOA.VWFuncionario.FieldByName('cod_interno').AsString;
          EdNomeVendedor.Text := DMPESSOA.VWFuncionario.FieldByName('nome').AsString;
          EDCODFORMPAG.SetFocus;
        end;
    end;

end;

//ao sair do camo cod pagamento
procedure TFPedidoVendaConstrutora.EDCODFORMPAGExit(Sender: TObject);
begin
  Trim(EDCODFORMPAG.Text);
  if(EDCODFORMPAG.Text <> '')then
    begin
      if(FiltraTabela(DMFINANC.TFormPag, 'formpag', 'cod_interno', EDCODFORMPAG.Text, '') = false)then
        begin
        	EDCODFORMPAG.Text := '';
           EDFORMPAG.Text := '';
           BtnProcFormPag.SetFocus;
          Mensagem('ATENÇÃO', 'O Código em questão não foi encontrado!!! Favor verifique!!!', '', 1, 1, False, 'A');
        end
      else
        begin
           EDCODFORMPAG.Text := DMFINANC.TFormPag.FieldByName('cod_interno').AsString;
           EDFORMPAG.Text := DMFINANC.TFormPag.FieldByName('descricao').AsString;
        end;
    end
  else
  	begin
   	EDCODFORMPAG.Text := '';
       EDFORMPAG.Text := '';
   end;
end;

//ao sair da edit de tempo de aluguel
procedure TFPedidoVendaConstrutora.EdTemAluguelExit(Sender: TObject);
begin
  Trim(EdTemAluguel.Text);
  if(EdTemAluguel.Text = '')then
    begin
    end
  else
    begin
      EdDtDevolucao.Text := DateToStr(StrToDate(EdDtSaidaCon.Text) + StrToInt(EdTemAluguel.Text));
    end;
end;

//adicionar o aluguel do container ao pedido de venda
procedure TFPedidoVendaConstrutora.BtInserirConClick(Sender: TObject);
var
xcodcontainer : Integer;
begin
  Trim(EdCodCon.Text);
  Trim(EdTemAluguel.Text);
  Trim(EdValor.Text);
  if(EdCodCon.Text = '')then
    begin
       Mensagem('ATENÇÃO', 'Campo Código do Container vazio!!!', '', 1, 1, False, 'A');
    end
  else
    begin
      if((EdTemAluguel.Text = '') or (EdValor.Text = ''))then
        begin
          Mensagem('ATENÇÃO', 'Campo Tempo de aluguel ou Valor encontram-se vazio!!!', '', 1, 1, False, 'A');
        end
      else
        begin
          FiltraTabela(DMPESSOA.TEquip,'EQUIPAMENTO','NUM_FROTA',EdCodCon.Text,'');

          xcodcontainer := DMPESSOA.TEquip.FieldByName('cod_equipamento').AsInteger;
          //gera novo codigo aluguel
          xcodaluguel := InserReg(DMESTOQUE.TAluguel, 'aluguel', 'cod_aluguel');

          DMESTOQUE.TAluguel.Edit;
          DMESTOQUE.TAluguel.FieldByName('COD_ALUGUEL').AsInteger := xcodaluguel;
          DMESTOQUE.TAluguel.FieldByName('COD_EQUIPAMENTO').AsInteger := xcodcontainer;
          DMESTOQUE.TAluguel.FieldByName('COD_PEDVENDA').AsString := XCodPedido;
          DMESTOQUE.TAluguel.FieldByName('DTSAIDA').AsString := EdDtSaidaCon.Text;
          DMESTOQUE.TAluguel.FieldByName('TEMPOALUGUEL').AsInteger := StrToInt(EdTemAluguel.Text);
          DMESTOQUE.TAluguel.FieldByName('DTDEVOLUCAO').AsString := EdDtDevolucao.Text;
          DMESTOQUE.TAluguel.FieldByName('VALOR').AsFloat := StrToFloat(EdValor.Text);
          DMESTOQUE.TAluguel.FieldByName('STATUS').AsInteger := 1;
          DMESTOQUE.TAluguel.Post;
          DMESTOQUE.TransacEstoque.CommitRetaining;

          EdCodCon.Text := '';
          EdDescCon.Text := '';
          EdTemAluguel.Text := '';
          EdDtDevolucao.Text := '  /  /    ';
          BtnProcProd.SetFocus;
        end;
    end;
    PCPedVenda.ActivePageIndex := 1;
    PCPedVendaChange(Sender);
    FiltraSlaveDev;
end;

//selecona a linha da grid
procedure TFPedidoVendaConstrutora.DBGContainerCellClick(Column: TColumn);
begin
  xcodequipamento := DMPESSOA.TEquip.FieldByName('cod_equipamento').AsInteger;
end;

//pesquisa o numero da frota
procedure TFPedidoVendaConstrutora.EdCodConExit(Sender: TObject);
var
xcodequipamento : String;
begin
  Trim(EdCodCon.Text);
  if(EdCodCon.Text <> '')then
    begin
      xcodequipamento := DMPESSOA.TEquip.FieldByName('cod_equipamento').AsString;
      if(FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'num_frota', EdCodCon.Text, '') = false)then
        begin
        	EdCodCon.Text := '';
           EdDescCon.Text := '';
           BtOpenContainer.SetFocus;
           Mensagem('ATENÇÃO', 'Código Incorreto ou Equipamento Inexistente!!!', '', 1, 1, False, 'A');
        end
      else
        begin
          if(FiltraTabela(DMESTOQUE.TAluguel, 'aluguel', 'cod_equipamento', xcodequipamento, 'and status = 1') = false)then
            begin
            	EdCodCon.Text := DMPESSOA.TEquip.FieldByName('num_frota').AsString;
               EdDescCon.Text := DMPESSOA.TEquip.FieldByName('descricao').AsString;
               EdTemAluguel.SetFocus;
            end
          else
            begin
              Mensagem('ATENÇÃO', 'Código Incorreto ou Container já alugado!!!', '', 1, 1, False, 'A');
              EdCodCon.Text := '';
              BtOpenContainer.SetFocus;
            end;
        end;
    end;
end;

//excluir container
procedure TFPedidoVendaConstrutora.BtExcluirConClick(Sender: TObject);
begin
  FiltraTabela(DMESTOQUE.TAluguel,'ALUGUEL','COD_PEDVENDA','','aluguel.cod_pedvenda = '+XCodPedido);
  xcodequipamento := DMESTOQUE.TAluguel.FieldByName('COD_EQUIPAMENTO').AsInteger;
  DMESTOQUE.TAluguel.Close;
  DMESTOQUE.TAluguel.SQL.Clear;
  DMESTOQUE.TAluguel.SQL.Add('delete from aluguel');
  DMESTOQUE.TAluguel.SQL.Add('where cod_equipamento = :CODIGO and cod_pedvenda ='+XCodPedido);
  DMESTOQUE.TAluguel.ParamByName('CODIGO').AsInteger:= xcodequipamento;
  DMESTOQUE.TAluguel.ExecSQL;
  DMESTOQUE.TransacEstoque.CommitRetaining;
  FiltraSlaveDev;
  pesqcontainer;
end;

//procura produto
procedure TFPedidoVendaConstrutora.BtnProcProdClick(Sender: TObject);
begin
  //abre formulario de produto para seleção
  If AbrirForm(TFProduto, FProduto, 1)='Selected' Then
    Begin
      xconpedvenda := true;
      EscreveLabels;

      RetornaUltimaVendaProd('');

      if FiltraTabela(DMServ.TItensTabPreco, 'ITENS_TABPRECO', 'COD_SUBSERV', IntToStr(xclirel), '') = true
      then begin
          if FiltraTabela(DMServ.TItensTabPreco, 'ITENS_TABPRECO', 'COD_ITEMTAB', DMEstoque.TEstoque.FieldByName('cod_estoque').AsString, '') = true
          then begin
              EDValUnit.Text := DMServ.TItensTabPreco.FieldByName('vlr_prod').AsString;
          end;
      end;
    End
  Else
    Begin
      LSimilar.Caption :='PRODUTO NÃO ENCONTRADO';
    End;
end;

//Função utilizada para procurar a ultima venda do produto selecionado para o cliente selecionao
Function TFPedidoVendaConstrutora.RetornaUltimaVendaProd(Comando: String): Boolean;
Begin
	Try
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add(' select itenspedven.valunit, itenspedven.qtdeprod , itenspedven.data, pedvenda.numped from itenspedven ');
   	DMESTOQUE.Alx.SQL.Add(' left join pedvenda on itenspedven.cod_pedven=pedvenda.cod_pedvenda ');
   	DMESTOQUE.Alx.SQL.Add(' where (itenspedven.cod_estoque=:CODIGOESTOQUE) ');
		DMESTOQUE.Alx.ParamByName('CODIGOESTOQUE').AsString:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString;
       LHistProd.Caption:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
   	If (FMenu.XTIPOBOLTO<>'0') AND (FMenu.XTIPOBOLTO <> '')
       Then Begin
   		DMESTOQUE.Alx.SQL.Add('  And (pedvenda.cod_cliente=:CODIGOCLIENTE) ');

           FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_interno', EdCodCliente.Text, '');

       	DMESTOQUE.Alx.ParamByName('CODIGOCLIENTE').AsString:= DMPESSOA.TCliente.FieldByName('cod_cliente').AsString;
       	LHistCliente.Caption:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
   	End
   	Else Begin
       	LHistCliente.Caption:= 'Todos os Clientes';
   	End;
   	DMESTOQUE.Alx.SQL.Add(' Order by itenspedven.cod_itenspedven desc');
       DMESTOQUE.Alx.Open;
       DMESTOQUE.Alx.SQL.Text;
       If Not DMESTOQUE.Alx.IsEmpty
       Then Begin
           LHistNumDocumento.Caption:=DMESTOQUE.Alx.FieldByName('NUMPED').AsString;
           LHistValor.Caption:=FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VALUNIT').AsCurrency);
           LHistData.Caption:=DMESTOQUE.Alx.FieldByName('DATA').AsString;
           LQtde.Caption := DMESTOQUE.Alx.fieldbyname('qtdeprod').AsString;
           //LQuantidade.Visible := true;
           LQtde.Visible:=true;
           LHistProd.Visible:=true;
           LHistValor.Visible:=true;
           LHistData.Visible:=true;
           LHistNumDocumento.Visible:=true;
           LHistCliente.Visible:=true;
       End
       Else Begin
           LHistNumDocumento.Caption:='';
           LHistValor.Caption:='0,00';
           LHistData.Caption:='00/00/0000';
           LHistProd.Caption:='';
           LHistCliente.Caption:='';
           LQtde.Caption := '';
           //LQuantidade.Visible := false;
           LQtde.Visible:=false;
           LHistProd.Visible:=false;
           LHistValor.Visible:=false;
           LHistData.Visible:=false;
           LHistNumDocumento.Visible:=false;
           LHistCliente.Visible:=false;
       End;
   Except
       LHistNumDocumento.Caption:='';
       LHistValor.Caption:='0,00';
       LHistData.Caption:='00/00/0000';
       LHistProd.Caption:='';
       LHistCliente.Caption;
       LQtde.Caption := '';
       LQtde.Visible:=false;
       LHistProd.Visible:=false;
       LHistValor.Visible:=false;
       LHistData.Visible:=false;
       LHistNumDocumento.Visible:=false;
       LHistCliente.Visible:=false;
       //LQuantidade.Visible := false;
   End;
   If Comando='LIMPAR'
   Then Begin
       LHistNumDocumento.Caption:='';
       LHistValor.Caption:='0,00';
       LHistData.Caption:='00/00/0000';
       LHistProd.Caption:='';
       LHistCliente.Caption;
       LQtde.Caption := '';
       LQtde.Visible:=false;
       LHistProd.Visible:=false;
       LHistValor.Visible:=false;
       LHistData.Visible:=false;
       LHistNumDocumento.Visible:=false;
       LHistCliente.Visible:=false;
       //LQuantidade.Visible := false;
   End;
End;

//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFPedidoVendaConstrutora.EscreveLabels;
Begin
	//Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
   If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
		Exit;

   //Filtra tabela de produto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TProduto, 'PRODUTO', 'COD_PRODUTO', DMEstoque.WSimilar.FieldByName('COD_PRODUTO').AsString, '')=False Then
   	Exit;

   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
   If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
   	Exit;

   // por questao de garantia o codigo de estoque do produto selecionado esta sendo atribuido á variavel pois jah que ela naum eh usada em nenhum outro momento, nao tem a possibilidade de ter seu valor alterado
   XCOD_ESTOQUE := DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;

   // seleciona os dados da loja
   FiltraTabela(DMMACS.TLoja, 'LOJA','COD_LOJA', FMenu.LCODLOJA.Caption,'');

		//Se selecionado um produto diferente daquele que estava selecionado deve-se informar novo valor unitario
   	XVLRUNIT:=0;
		If XSQLTABELA='PEDVENDA' //As regras abaixo somente devem ser executadas em caso de venda
		Then Begin
           // se o campo TIPOVENDA for igual a 1, a venda esta configurada para valores a vista
           If DMMACS.TLoja.FieldByName('tipovenda').AsString = '0'
           Then Begin
               //caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
               If (EdPesoLiqui.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
               Then Begin
                   If EDFORMPAG.Text='À VISTA'
                   Then Begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
                       //Se for para utilizar uma comissão diferente para cada produto
                       If DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1' Then
                           //EdComiss.ValueNumeric:=DMEstoque.TEstoque.FieldByName('CVVPROAT').AsCurrency;
                       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
                       Then Begin
                           If DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency>0 Then
                               XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency-(DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency*DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100
                           Else
                               XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency;
                       End
                       Else Begin
                           XVLRUNIT:=(DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency);
                       End
                   End
                   Else Begin //A venda esta sendo a prazo então o preço de venda deve ser no atacado a prazo
                       //Se for para utilizar uma comissão diferente para cada produto
                       If DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1' Then
                           //EdComiss.ValueNumeric:=DMEstoque.TEstoque.FieldByName('CVPPROAT').AsCurrency;
                       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
                       Then Begin
                           If DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency>0 Then
                               XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency-(DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency*DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100
                           Else
                               XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency;
                       End
                       Else Begin
                           XVLRUNIT:=(DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
                       End;
                   End;
               End
               Else Begin//caso ocorra esta condição significa que o produto esta com quantidade igual varejo e deve ser vendido em preço de varejo
                   If EDFORMPAG.Text='À VISTA'
                   Then Begin //A venda esta sendo a vista então o preço de venda deve ser no Varejo a vista
                       //Se for para utilizar uma comissão diferente para cada produto
                       If DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1' Then
                           //EdComiss.ValueNumeric:=DMEstoque.TEstoque.FieldByName('CVVPROVAR').AsCurrency;

                       If  DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES' Then
                           XVLRUNIT:=(DMEstoque.WSimilar.FieldByName('VLRBONIFIC').AsCurrency)
                       Else
                           XVLRUNIT:=DMEstoque.WSimilar.FieldByName('VENDVARV').AsCurrency;
                   End
                   Else Begin //A venda esta sendo a prazo então o preço de venda deve ser no Varejo a prazo
                       //Se for para utilizar uma comissão diferente para cada produto
                       If DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1' Then
                           //EdComiss.ValueNumeric:=DMEstoque.TEstoque.FieldByName('CVPPROVAR').AsCurrency;

                       If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
                       Then Begin
                           If DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency>0 Then
                               XVLRUNIT:=DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency-(DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency*DMEstoque.TEstoque.FieldByName('BONIFICACAO').AsCurrency)/100
                           Else
                               XVLRUNIT:=DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency;
                       End
                       Else Begin
                           XVLRUNIT:=DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency;
                       End;
                   End;
               End;
               //Se cliente for atacadista
               If XAtacadista=True
               Then Begin
                   If EDFORMPAG.Text='À VISTA'
                   Then Begin
                           XVLRUNIT:=DMEstoque.TEstoque.FieldByName('VENDATAV').AsCurrency;
                   End
                   Else Begin
                       XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendvarv').AsCurrency;
                           XVLRUNIT:=DMEstoque.TEstoque.FieldByName('VENDATAP').AsCurrency;

                   End;
               end;
           End
           // SE O CAMPO "TIPOVENDA" ESTIVER VALENDO "0", A VENDA ESTÁ CONFIGURADA PARA VALOR A PRAZO
           Else Begin
               If (EdPesoLiqui.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
               Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
                   //Se for para utilizar uma comissão diferente para cada produto
                       XVLRUNIT:=(DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
               End
               Else Begin
                       XVLRUNIT:=DMEstoque.WSimilar.FieldByName('VENDVARP').AsCurrency;
               End;

               //Se cliente for atacadista
               If XAtacadista=True
               Then Begin
                   XVLRUNIT:=DMEstoque.TEstoque.FieldByName('vendvarv').AsCurrency;
                       XVLRUNIT:=DMEstoque.TEstoque.FieldByName('VENDATAP').AsCurrency;
               End;
           End;
   	End
		Else Begin
	   		XVLRUNIT:=DMEstoque.TEstoque.FieldByName('VALUNIT').AsCurrency;//INSERE VALOR UNITARIO DE COMPRA DO PRODUTO
   	End;
  		XVLRPRODBD:=XVLRUNIT;//INSERE VALOR UNITARIO DE VENDA DO PRODUTO PARA POSTERIOR COMPROVAÇÃO
	   	EDValUnit.ValueNumeric:=XVLRUNIT;
      if(xconpedvenda = true)then
        begin
          //Passa os valores do produto selecionado para as labels
          EDCodInterno.Text := DMEstoque.TSubProd.FieldByName('CONTRINT').AsString;
          EdDensidade.Text := DMEstoque.TSubProd.FieldByName('DENSIDADE').AsString;
          LSimilar.Caption := DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
          EDValUnit.Text := DMEstoque.TEstoque.FieldByName('vendatav').AsString;
        end
      else
        begin
          Trim(EdCodInterno.Text);
          if(EdCodInterno.Text <> '')then
            begin
              DMESTOQUE.TSubProd.Close;
              DMESTOQUE.TSubProd.SQL.Clear;
              DMESTOQUE.TSubProd.SQL.Add('select * from subproduto where contrint = :CONTRINT');
              DMESTOQUE.TSubProd.ParamByName('CONTRINT').AsString := EdCodInterno.Text;
              DMESTOQUE.TSubProd.Open;
              if(DMESTOQUE.TSubProd.IsEmpty)then
                begin
                  Mensagem('ATENÇÃO', 'Código Incorreto ou Produto Inexistente!!!', '', 1, 1, False, 'A');
                end
              else
                begin
                	EDCodInterno.Text := DMEstoque.TSubProd.FieldByName('CONTRINT').AsString;
                   EdDensidade.Text := DMESTOQUE.TSubProd.FieldByName('DENSIDADE').AsString;
                   LSimilar.Caption := DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString;
                    //Samuel Fabricio Wink - 3/2/2009: forca valor avista
                    if FiltraTabela(DMServ.TItensTabPreco, 'ITENS_TABPRECO', 'COD_SUBSERV', xcliant, '') = true
                    then begin
                        if FiltraTabela(DMServ.TItensTabPreco, 'ITENS_TABPRECO', 'COD_ITEMTAB', DMEstoque.TEstoque.FieldByName('cod_estoque').AsString, '') = true
                        then begin
                            EDValUnit.Text := DMServ.TItensTabPreco.FieldByName('vlr_horaextra').AsString;
                        end
                        else begin
                            EDValUnit.Text := DMEstoque.TEstoque.FieldByName('vendatav').AsString;
                        end;
                    end
                    else begin
                        EDValUnit.Text := DMEstoque.TEstoque.FieldByName('vendatav').AsString;
                    end;
                end;
            end;
        end;

   If (DMEstoque.TEstoque.FieldByName('VALREP').AsString<>'') and (DMEstoque.TEstoque.FieldByName('COEFDIV').AsString<>'') Then
   	//LCustoTot.Caption:=FormatFloat('0.00', DMEstoque.TEstoque.FieldByName('VALREP').AsCurrency/DMEstoque.TEstoque.FieldByName('COEFDIV').AsCurrency)
   Else
       //LCustoTot.Caption:='Nulo';
   //VERIFICA SE A COMISSAO PARA ITENS PEDVENDA DEVE CONTINUAR SENDO DO CADASTRO DE PRODUTOS OU DEVE SER PEGO DA TABELA FUNCIONARIOS
   if (DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='0') and (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
   Then Begin
   	//FILTRA VENDEDOR PARA CALCULAR A COMISSAO DO VENDEDOR
   	If FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', '', ' COD_FUNCIONARIO = '+#39+INTTOSTR(XCodVendedor)+#39+' ORDER BY COD_FUNCARGO')=True
   	Then Begin
   		DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO
   	End;
   End;

	FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString, '');
   If BtnInsertProd.Tag=1 Then
       EdPesoLiqui.ValueNumeric:=1;
   BtnInsertProd.Tag:=0;
   FMenu.XTIPOBOLTO := IntToStr(XCodPessoa);

   LQtde.Visible:=true;
   LHistProd.Visible:=true;
   LHistValor.Visible:=true;
   LHistData.Visible:=true;
   LHistNumDocumento.Visible:=true;
   LHistCliente.Visible:=true;

End;

//calcula o peso liquido e a quantidade em metros cubicos
procedure TFPedidoVendaConstrutora.EdPesoBrutoExit(Sender: TObject);
var
 xteste : Currency;
begin

//***********************************************************************************************
//***********************************************************************************************
   	//Samuel Fabricio Wink - 11/2/2009: quando e pedvenda
   	EdPesoLiqui.ValueNumeric := EdPesoBruto.ValueInteger - EdTara.ValueInteger;

   //Samuel Fabricio Wink - 11/2/2009: termina o calculo conforme o pedido

   EDQuantidade.ValueNumeric:=(EdPesoLiqui.ValueNumeric/EdDensidade.ValueNumeric);

   EDQuantidade.SetFocus;

//***********************************************************************************************
//***********************************************************************************************
      //end;
end;

//calculavalor total sem desconto quantidade metros cubicos multiplicado pelo valoruni
procedure TFPedidoVendaConstrutora.EDValUnitExit(Sender: TObject);
begin
  EdTotal.ValueNumeric := EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric;
end;

//Calcula o valor total com desconto em porcentagem
procedure TFPedidoVendaConstrutora.EdDescExit(Sender: TObject);
begin
  Trim(EdDesc.Text);
  if((EdDesc.Text = '0') or (EdDesc.Text = ''))then
    begin
      EdTotal.ValueNumeric := EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric;
    end
  else
    begin
      EdTotal.ValueNumeric := ((EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric)/100)*(100 - EdDesc.ValueNumeric);
    end;
end;

//pesquisa o cod interno setando os valores para as edit
procedure TFPedidoVendaConstrutora.EdCodInternoExit(Sender: TObject);
begin
	If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', EDCodInterno.Text, '')=True
       Then Begin
       	xconpedvenda := false;
			EscreveLabels;
           if FiltraTabela(DMServ.TItensTabPreco, 'ITENS_TABPRECO', 'COD_SUBSERV', IntToStr(xclirel), '') = true
           then begin
               if FiltraTabela(DMServ.TItensTabPreco, 'ITENS_TABPRECO', 'COD_ITEMTAB', DMEstoque.TEstoque.FieldByName('cod_estoque').AsString, '') = true
               then begin
                   EDValUnit.Text := DMServ.TItensTabPreco.FieldByName('vlr_prod').AsString;
               end;
           end;
       End
       Else Begin
           LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
end;

//botao incluir itens do pedido de venda
procedure TFPedidoVendaConstrutora.BtnInsertProdClick(Sender: TObject);
begin
	Trim(EdCodVend.Text);
	if(EdCodVend.Text = '')then
   	begin
       end
   else
  		XCodVendedor := StrToInt(EdCodVend.Text);
	//Valida se foi encontrado algum produto
   If (LSimilar.Caption='') or (LSimilar.Caption='PRODUTO NÃO ENCONTRADO')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Não existe produto a ser adicionado a lista de items do pedido.', '', 1, 1, False, 'a');
		BtnProcProd.SetFocus;
	    Exit;
   End;
   //Valida quanto a quantidade
   If EDQuantidade.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com quantidade inferior a 1.', '', 1, 1, False, 'a');
		EDQuantidade.SetFocus;
	    Exit;
   End;
   //Valida quanto ao valor unitario do produto
   If EDValUnit.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o valor unitario igual ou inferiro a 0.', '', 1, 1, False, 'a');
		EDValUnit.SetFocus;
	    Exit;
   End;

   //Valida quanto ao valor total do produto
   If EDTotal.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O produto não pode ser inserido a lista com o valor total igual ou inferiro a 0.', '', 1, 1, False, 'a');
		EDTotal.SetFocus;
	    Exit;
   End;
   If (DMMACS.TLoja.FieldByName('VENDITEMPROD').AsString='1') AND (XSQLTABELA='PEDVENDA')
   Then Begin
   //Verifica se o sistema trabalha com vendedores individuais por item de venda
   End
   Else Begin
   	If (XCodVendedor=-1) AND (XSQLTABELA='PEDVENDA')
       Then Begin //mesmo sem controlar o vendedor de forma individual cada item receberá o codigo do vendedor, então neste ponto o vendedor principal deverá ter cido selecionado
			Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe o vendedor do pedido.', '', 1, 1, False, 'a');
			EdCodVend.SetFocus;
    		Exit;
       End
   	Else Begin
       	XCodVendItem:=XCodVendedor;
       End;
   End;
   //VERIFICA SE JÁ EXISTE ALGUM PRODUTO IGUAL AO CORRENTE INSERIDO A LISTA
   //SE ENCONTRAR PEDIR SE O USUÁRIO DESEJA ALTERAR O LANÇAMENTO.
   DMESTOQUE.TSlave.Close;
   DMESTOQUE.TSlave.SQL.Clear;
   IF XSQLTABELA='PEDVENDA'
   Then Begin
   	DMESTOQUE.TSlave.SQL.Add('Select itenspedven.cod_itenspedven, itenspedven.OPERACAO, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod, ItensPedVen.ValorTotal, ItensPedVen.COMISSAO, ');
		DMESTOQUE.TSlave.SQL.Add('itenspedven.descpro, itenspedven.cod_funcionario, pessoa.nome, itenspedven.valunit, subproduto.descricao, subproduto.marca, subproduto.contrint, itenspedven.data, itenspedven.operacao ');
		DMESTOQUE.TSlave.SQL.Add('From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.TSlave.SQL.Add('Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
		DMESTOQUE.TSlave.SQL.Add('Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
		DMESTOQUE.TSlave.SQL.Add('Where (itenspedven.cod_pedven = :CODPEDVENDA) AND (itenspedven.cod_estoque=:CODESTOQUE) ');
       DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsString:=XCodPedido;
       DMESTOQUE.TSlave.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString;
   End;
   //Valida quanto ao estoque físico (veirifca se ha estoque suficiente
   If XSQLTABELA='PEDVENDA'
   Then Begin
       // verifica se a quantidade minima do produto jah foi alcancada
       If ((DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsFloat - EDQuantidade.ValueNumeric) <= DMESTOQUE.TEstoque.FieldByName('ESTMIN').AsCurrency )
       Then Begin
           // SELECIONA DADOS DA TABELA SUBPRODUTO PARA EXIBIR NA MESNAGEM
           FiltraTabela(DMESTOQUE.TSubProd,'SUBPRODUTO','COD_SUBPRODUTO',DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString,'');

           // SELECIONA DADOS DA TABELA ESTOQUE PARA EXIBIR NA MENSAGEM
           FiltraTabela(DMESTOQUE.TEstoque,'ESTOQUE','COD_SUBPROD',DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString,'');

       //só mostra a mensagem de estoque minimo se estiver configurado em loja
       If DMMACS.TLoja.FieldByName('MSGESTOQUEMIN').AsString = '1'
       then begin
           Mensagem('   A T E N Ç Ã O   ','Produto com limite mínimo.' + #13 + 'Ctrl. Int.: ' + DMESTOQUE.TSubProd.FieldByName('contrint').AsString + #13 + 'Desc.: ' +DMESTOQUE.TSubProd.FieldByName('descricao').AsString + #13 + 'Valor Unit.: ' + FormatFloat('0.00',DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency),'',1,1,false,'A');
       end;
       End;

   	//Verifica se o vlr unitário esta dentro da margem de segurança
       If ((EDTotal.ValueNumeric/EDQuantidade.ValueNumeric)<DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency)
       Then Begin
				If Mensagem('A T E N Ç Ã O !', 'Você está vendendo o produto a um valor abaixo da margem de segurança. Deseja continuar?', '', 2, 3, False, 'c')= 2
               Then Begin
                   // PASSANDO VALOR PARA VARIAVEL QUE SERA COMPARADA NO FORMULARIO DE SENHAS
                   FMenu.TIPOREL := 'VERIFICMARGEM';
					If ControlAccess('MARGEMSEG', '')=False
               	Then Begin  //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
						If Mensagem('A T E N Ç Ã O !', 'Deseja solicitar senha de um administrador?', '', 2, 3, False, 'c')= 2
                       Then Begin
                           AbrirForm(TFSENHA, FSENHA, 0);
                           //repassa resultado da tela de autenticação de senha para as variáveis de controle
                           If XAlxResult=True Then
                               XLIBMARGEMSEG:=True
                           Else
                               XLIBMARGEMSEG:=False;
                       End
                       Else Begin
                   		XLIBMARGEMSEG:=False;
                       end;
                   End
               	Else Begin
                   	XLIBMARGEMSEG:=True;
                   End;
                   FMenu.TIPOREL := '';
               End
               Else Begin
                   //Filtra slaves e calcula total
                   FiltraSlave;
                   Exit;
               End;
       End
       Else Begin
               XLIBMARGEMSEG:=True;
       End;
   	//Verifica se o desconto dado no produto é superior ao permitido
       If DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency=0
       Then Begin//Se não ha restrições de desconto do produto em empresa procura em produto
       	If (EDDesc.ValueNumeric>DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency)
       	Then Begin
				If Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c')= 2
               Then Begin
					If ControlAccess('DESCPMAIOR', '')=False
               	Then Begin  //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
						If Mensagem('A T E N Ç Ã O !', 'Deseja solicitar senha de um administrador?', '', 2, 3, False, 'c')= 2
                       Then Begin
                           AbrirForm(TFSENHA, FSENHA, 0);
                           //repassa resultado da tela de autenticação de senha para as variáveis de controle
                           If XAlxResult=True Then
                               XLIBDESCPROD:=True
                           Else
                               XLIBDESCPROD:=False;
                       End
                       Else Begin
                   		XLIBDESCPROD:=False;
                       end;
                   End
               	Else Begin
                   	XLIBDESCPROD:=True;
                   End;
               End
               Else Begin
                   //Filtra slaves e calcula total
                   FiltraSlave;
                   exit;
               End;
           End
           Else Begin
               XLIBDESCPROD:=True;
           End;
       End
       Else Begin
       	If (EDDesc.ValueNumeric>DMMACS.TEmpresa.FieldByName('AVVPROVAR').AsCurrency)
       	Then Begin
				If Mensagem('A T E N Ç Ã O !', 'Você está concedendo um desconto maior que o estipulado em cadastro. Deseja continuar?', '', 2, 3, False, 'c')= 2
               Then Begin
					If ControlAccess('DESCPMAIOR', '')=False
               	Then Begin //se o usuário não tem permissão para efetuar um desconto maior que o cadastrado deve ser pedido a senha de um administrador
						If Mensagem('A T E N Ç Ã O !', 'Deseja solicitar senha de um administrador?', '', 2, 3, False, 'c')= 2
                       Then Begin
                           AbrirForm(TFSENHA, FSENHA, 0);
                           //repassa resultado da tela de autenticação de senha para as variáveis de controle
                           If XAlxResult=True Then
                               XLIBDESCPROD:=True
                           Else
                               XLIBDESCPROD:=False;
                       End
                       Else Begin
                   		XLIBDESCPROD:=False;
                       end;
                   end
               	Else Begin
                   	XLIBDESCPROD:=True;
                   End;
               End
               Else Begin
                   //Filtra slaves e calcula total
                   FiltraSlave;
                   Exit;
               End;
           End
           Else Begin
               XLIBDESCPROD:=True;
           End;
       End;
		//Verifica se o desconto do produto foi liberado
       If XLIBDESCPROD=False
       Then Begin
			If ControlAccess('DESCPMAIOR', '')=False Then
				Mensagem('OPÇÃO BLOQUEADA', 'Você não obteve permissão para vender este produto com tal desconto!', '', 1, 1, False, 'a');
           EDDesc.SetFocus;
           EXIT;
       End;
		//Verifica se a Margem de Seguranca do produto foi obedecida
       If XLIBMARGEMSEG=False
       Then Begin
			If ControlAccess('MARGEMSEG', '')=False Then
				Mensagem('OPÇÃO BLOQUEADA', 'Você não obteve permissão para vender este produto abaixo da margem de segurança!', '', 1, 1, False, 'a');
           EDValUnit.SetFocus;
           EXIT;
       End;
   End;

 Try
   //Inserir Produto a lista do pedido
   XTabSlave := DMSAIDA.TItemPV;
   XSQLTabSlave := 'itenspedven';
   XpkTabSlave := 'cod_itenspedven';
   XCodSlave:=InserReg(XTabSlave, XSQLTabSlave, XpkTabSlave);
   XTabSlave.FieldByName(XpkTabSlave).AsInteger:=XCodSlave;
   If XSQLTABELA='PEDVENDA'
   Then Begin //se trabalhando com vendas
		XTabSlave.FieldByName('COD_PEDVEN').AsInteger:=StrToInt(XCodPedido);
		XTabSlave.FieldByName('COD_FUNCIONARIO').AsInteger:=XCodVendItem;
		XTabSlave.FieldByName('DATA').AsString:=DateToStr(Date());
		XTabSlave.FieldByName('OPERACAO').AsString:='VND';
       XTabSlave.FieldByName('VALCUSTO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;;
       XTabSlave.FieldByName('VALREP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
       XTabSlave.FieldByName('COEFDIV').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
		XTabSlave.FieldByName('VALCOMP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency*EDQuantidade.ValueNumeric;
		//CalcLuc(EDTotal.ValueNumeric, EDDesc.ValueNumeric, EDQuantidade.ValueNumeric);
       If XTabSlave.FieldByName('COEFDIV').AsCurrency<>0 Then
			XTabSlave.FieldByName('LUCMOE').AsCurrency:=EDTotal.ValueNumeric-(DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency*EDQuantidade.ValueNumeric)
       Else
			XTabSlave.FieldByName('LUCMOE').AsCurrency:=0;

		XTabSlave.FieldByName('LUCREL').AsCurrency:=ALXLUCREAL;
		XTabSlave.FieldByName('VLRVENDBD').AsCurrency:=XVLRPRODBD;
		XTabSlave.FieldByName('ALIQICMS').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency;
		XTabSlave.FieldByName('BASEICMS').AsCurrency:=EDTotal.ValueNumeric;
		XTabSlave.FieldByName('VLRICMS').AsCurrency:=(EDTotal.ValueNumeric*XTabSlave.FieldByName('ALIQICMS').AsCurrency)/100;
		XTabSlave.FieldByName('REDUCBASEICMS').AsCurrency:=0;
		XTabSlave.FieldByName('BASEICMSSUBS').AsCurrency:=0;
		XTabSlave.FieldByName('VLRICMSSUBS').AsCurrency:=0;
		XTabSlave.FieldByName('ALIQIPI').AsCurrency:=XIPI;
		XTabSlave.FieldByName('VLRIPI').AsCurrency:=0;
       XTabSlave.Post;
       DMESTOQUE.TSubProd.Edit;
       DMESTOQUE.TSubProd.FieldByName('MARK').AsString:='';
       DMESTOQUE.TSubProd.Post;
       Try
       	If (DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='0') and (DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '0')
       	Then Begin
	   			//FILTRA VENDEDOR PARA CALCULAR A COMISSAO DO VENDEDOR
       		If FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', '', ' COD_FUNCIONARIO = '+#39+INTTOSTR(XCodVendedor)+#39+' ORDER BY COD_FUNCARGO')=True
       		Then Begin
           		DMPESSOA.TFunCargo.Last;//VAI P/ O ULTIMO CARGO CADASTRADO
           		If EDFORMPAG.Text='À VISTA'
           		Then Begin         //1300*4.5/100
						//FORMA DE PAGAMENTO À VISTA É CALCULA COMISSÃO REFERENTE A VISTA
                       XTabSlave.Edit;
						XTabSlave.FieldByName('COMISSAO').AsCurrency:=(EDTotal.ValueNumeric*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency)/100;
                       XTabSlave.Post;
           		End
           		Else Begin
						//FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A VISTA
                       XTabSlave.Edit;
						XTabSlave.FieldByName('COMISSAO').AsCurrency:=(EDTotal.ValueNumeric*DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency)/100;
                       XTabSlave.Post;
           		End;
       		End;
			End
           Else Begin
               If DMMACS.TLoja.FieldByName('COMISSPRODCADPROD').AsString = '1'
               Then Begin
                   FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',EDCODFORMPAG.Text,'');

                   // filtra estoque para buscar os valores das porcentagens das comissoes
                   FiltraTabela(DMESTOQUE.Alx4,'ESTOQUE','COD_ESTOQUE',DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString,'');

                   XTabSlave.Edit;
                   If DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
                   Then Begin         //1300*4.5/100
                       //FORMA DE PAGAMENTO À VISTA É CALCULA COMISSÃO REFERENTE A VISTA
                       XVLRCOMIS:= (EDTotal.ValueNumeric * DMESTOQUE.Alx4.FieldByName('CVVPROVAR').AsCurrency) /100;
                       XTabSlave.FieldByName('COMISSAO').AsCurrency:= XVLRCOMIS;
                   End
                   Else Begin
                       //FORMA DE PAGAMENTO À PRAZO É CALCULA COMISSÃO REFERENTE A PRAZO
                       XVLRCOMIS:= (EDTotal.ValueNumeric * DMESTOQUE.Alx4.FieldByName('CVPPROVAR').AsCurrency) /100;
                       XTabSlave.FieldByName('COMISSAO').AsCurrency:= XVLRCOMIS;
                   End;
                   XTabSlave.Post;
               End
               Else Begin
                   XTabSlave.Edit;
                   XTabSlave.FieldByName('COMISSAO').AsCurrency:=(EDTotal.ValueNumeric*EdComiss.ValueNumeric)/100;
                   XTabSlave.Post;
               End;
           End;
       Except
           XTabSlave.Edit;
			XTabSlave.FieldByName('COMISSAO').AsCurrency:=0;
           XTabSlave.Post;
       End;
   End
   Else Begin
       XTabSlave.Edit;
		//XTabSlave.FieldByName('QTDEEXP').AsCurrency:=EdQuantExp.ValueNumeric;
		XTabSlave.FieldByName('ALIQICMS').AsCurrency:=XICMS;
		XTabSlave.FieldByName('BASEICMS').AsCurrency:=EDTotal.ValueNumeric;
		XTabSlave.FieldByName('VLRICMS').AsCurrency:=(XTabSlave.FieldByName('BASEICMS').AsCurrency*XICMS)/100;
		XTabSlave.FieldByName('REDUCBASEICMS').AsCurrency:=0;
		XTabSlave.FieldByName('BASEICMSSUBS').AsCurrency:=0;
		XTabSlave.FieldByName('VLRICMSSUBS').AsCurrency:=0;
		XTabSlave.FieldByName('ALIQIPI').AsCurrency:=XIPI;
		XTabSlave.FieldByName('VLRIPI').AsCurrency:=(EDTotal.ValueNumeric*XIPI)/100;
		XTabSlave.FieldByName('FRETE').AsCurrency:=XFRETE;
		XTabSlave.FieldByName('EMBPROD').AsCurrency:=XEMB;
		XTabSlave.FieldByName('COD_PEDCOMPRA').AsInteger:=StrToInt(XCodPedido);
		XTabSlave.FieldByName('DATA').AsString:=DateToStr(Date());

    //nesse caso naum precisa fazer a converssão joga direto
    XTabSlave.FieldByName('QTDEST').AsCurrency:=EDQuantidade.ValueNumeric;
		XTabSlave.Post;

   End;

   	If (XTabSlave.FieldByName('LUCMOE').AsCurrency<>0) and (XTabSlave.FieldByName('VALORTOTAL').AsCurrency<>0)
       Then Begin
           XTabSlave.Edit;
			XTabSlave.FieldByName('LUCMOE').AsCurrency:=XTabSlave.FieldByName('VALORTOTAL').AsCurrency-XTabSlave.FieldByName('LUCMOE').AsCurrency;
			XTabSlave.FieldByName('LUCPER').AsCurrency:=(XTabSlave.FieldByName('LUCMOE').AsCurrency*100)/XTabSlave.FieldByName('VALORTOTAL').AsCurrency;
           XTabSlave.Post;
       End;

   //Tenta gravar as informações
   Try
       XTabSlave.Edit;
       XTabSlave.FieldByName('COD_ESTOQUE').AsInteger:= XCOD_ESTOQUE;
       XTabSlave.FieldByName('QTDEPROD').AsCurrency:=EDQuantidade.ValueNumeric;
       XTabSlave.FieldByName('DESCPRO').AsCurrency:=EDDesc.ValueNumeric;
       XTabSlave.FieldByName('VALUNIT').AsCurrency:=EDValUnit.ValueNumeric;
       XTabSlave.FieldByName('VALORTOTAL').AsCurrency:=EDTotal.ValueNumeric;
       XTabSlave.Post;


	    //VERIFICA QUAL COMPONENETE DEVE RECEBER O FOCUS
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'BP' THEN
       	BtnProcProd.SetFocus;
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CB' THEN
	  		//EDCodBarra.SetFocus;
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CA'
	    THEN BEGIN//Caso o focus deve cair sobre um código auxiliar. verificar qual o código em Questão
	  		IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
	        THEN Begin
	        	Try
                   EDCodInterno.Text:='';
		           	EDCodInterno.SetFocus;
	            Except
	            End;
	        End;
			IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC'
	        THEN Begin
		       	Try
                   //EDCodComposto.Text:='';
		           	//EDCodComposto.SetFocus;
	            Except
	            End;
			End;
			IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
	        THEN Begin
		       	Try
                   //EDCodFab.Text:='';
		           	//EDCodFab.SetFocus;
	            Except
		        End;
			End;
	    END;
		BtnInsertProd.Tag:=1;
   Except
	    XTransaction.RollbackRetaining;
       DMESTOQUE.TransacEstoque.RollbackRetaining;
   	XTabSlave.CancelUpdates;
   End;
 Except
   XTransaction.RollbackRetaining;
   DMESTOQUE.TransacEstoque.RollbackRetaining;
 End;

 //Filtra slaves e calcula total
 FiltraSlave;

 //limpa labels de seleção
 EdCodInterno.Text := '';
 EdDensidade.Text := '';
 EdPesoBruto.Text := '';
 EdPesoLiqui.Text := '';
 EDQuantidade.Text := '';
 EDValUnit.Text := '';
 EdDesc.Text := '';
 EdTotal.Text := '';

 If DMMACS.TLoja.FieldByName('BUSCANPRODS').AsString='1'
 Then Begin
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' Select * from vwsimilar Where vwsimilar.mark='+#39+'X'+#39);
   DMESTOQUE.Alx.Open;
   If not DMESTOQUE.Alx.IsEmpty
   Then Begin
   	If MessageDlg('Existe mais um produto a ser inserido:'+#13+#10+DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString+#13+#10+'Deseja inserí-lo?', mtConfirmation, [mbYes, MbNo], 0)=MrYes
       Then Begin
			If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsString , '')=True
       	Then Begin
				EscreveLabels;
               EDQuantidade.SetFocus;
      	 	End;
       End;
   End;
 End;
 DMESTOQUE.TransacEstoque.CommitRetaining;
 XTabSlave.Transaction.CommitRetaining;
 //PSelectCliente.Repaint;
 XCod_PedVendaDev := StrToInt(XCodPedido);
 FiltraSlaveDev;
 PCPedVenda.ActivePageIndex := 0;
end;

//Filtra Tabela Slave e calcula total
Procedure TFPedidoVendaConstrutora.FiltraSlave;
Begin
	If XSQLTABELA='PEDVENDA'
   Then Begin
       // apos inserir um produto, os dados de observacao desaparecem, para isso dando um edit e um post, eh mantido os dados de observação
       XTabela.Edit;
       XTabela.Post;
       // buscar dadoos da tabela pedvenda
       FiltraTabela(XTabela,'PEDVENDA','COD_PEDVENDA',XCodPedido,'');

		//Calcula Total
		//INSERE COMANDOS PARA FILTRAR
		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add('Select Sum(itenspedven.valortotal) as VALORTOTAL, SUM(itenspedven.qtdeprod) AS QTD, SUM(itenspedven.comissao) AS COMISSAO From itenspedven');
		DMESTOQUE.TSlave.SQL.Add('Where (itenspedven.cod_pedven = :CODPEDVENDA)');
		DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsString:=XCodPedido;
		DMESTOQUE.TSlave.Open;
   	//TRABALHANDO COM DESPESAS
   	//CALCULA TOTAL
   	DMESTOQUE.Alx2.Close;
   	DMESTOQUE.Alx2.SQL.Clear;
   	DMESTOQUE.Alx2.SQL.Add('select Sum(despadic.vlrtotfin) AS TOT From despadic Where (despadic.gerador='+#39+'PEDVENDA'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
		DMESTOQUE.Alx2.ParamByName('COD_GERADOR').AsString:=XCodPedido;
		DMESTOQUE.Alx2.Open;
   	XVLRTOTALDESP:=DMESTOQUE.Alx2.FieldByName('TOT').AsCurrency;
   	//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   	If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+XCodPedido+#39+')')=True
   	Then Begin
           FMenu.XFRETETRANSP:=DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency;
			If DMSAIDA.TFiscPV.FieldByName('FRETECOMP').AsString='1' Then
           	FMenu.XFRETETRANSPCOMPOEM:=True
           Else
           	FMenu.XFRETETRANSPCOMPOEM:=False;
       End;
   End
   Else Begin
   	//VERIFICA SE O PEDIDO JÁ POSSUE DOC FIS
   	If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+')')=True
   	Then Begin
           FMenu.XFRETETRANSP:=DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency;
			If DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString='1' Then
           	FMenu.XFRETETRANSPCOMPOEM:=True
           Else
           	FMenu.XFRETETRANSPCOMPOEM:=False;
       End;
		//Calcula Total de IPI
		//INSERE COMANDOS PARA FILTRAR
		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add('Select Sum(itenspedc.VLRIPI) as VLRTOTIPI From itenspedc');
		DMESTOQUE.TSlave.SQL.Add('Where itenspedc.cod_pedcompra = :CODPEDC ');
		DMESTOQUE.TSlave.ParamByName('CODPEDC').AsString:=XCodPedido;
		DMESTOQUE.TSlave.Open;
       XTOTIPI:=DMESTOQUE.TSlave.FieldByName('VLRTOTIPI').AsCurrency;
      	//EdVlrIpi.ValueNumeric:=XTOTIPI;

		//Calcula Total
		//INSERE COMANDOS PARA FILTRAR
		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add('Select Sum(itenspedc.valortotal) as VALORTOTAL, SUM(itenspedC.qtdeprod) AS QTD From itenspedc');
		DMESTOQUE.TSlave.SQL.Add('Where itenspedc.cod_pedcompra = :CODPEDC ');
		DMESTOQUE.TSlave.ParamByName('CODPEDC').AsString:=XCodPedido;
		DMESTOQUE.TSlave.Open;
   End;
   //INFORMA QTD DE ITEMS
   If DMESTOQUE.TSlave.FieldByName('QTD').AsString='' Then
		//LQTDPROD.Caption:='Qtd = 0'
   Else
   	//LQTDPROD.Caption:='Qtd = '+DMESTOQUE.TSlave.FieldByName('QTD').AsString;
 	//ATRIBUI TOTAL VENDIDO SEM DESCONTO À VARIAVEL
   XVLRTOTAL:=DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;
   //ATRIBUI IPI
   XVLRTOTAL:=XVLRTOTAL+XTOTIPI+XVLRTOTALDESP;
   //ATRIBUI FRETE
   If FMenu.XFRETETRANSPCOMPOEM=True
   Then Begin
       XVLRTOTAL:=XVLRTOTAL+FMenu.XFRETETRANSP;
   End;

   //Se houver algum desconto dados deve ser repassado ao total
   If (XTabela.FieldByName('DESCONTO').AsCurrency<>0) And (XVLRTOTAL<>0)
   Then Begin
		CalcPercent(StrToFloat(EDDescPed.text) , XVLRTOTAL, XVLRTOTAL, 'D');
   	EdValorPed.ValueNumeric:=AlxCalculo;
       XVLRFISCAL:=AlxCalculo;
   End
   Else Begin
   	EdValorPed.ValueNumeric:=XVLRTOTAL;
       XVLRFISCAL:=XVLRTOTAL;
   End;

   //CalcComisTotVend;//Calcula Comissão sobre o total da venda e sobre a aliquota correta

   EdDescMoeda.ValueNumeric:=XVLRTOTAL-EdValorPed.ValueNumeric;
	If XSQLTABELA='PEDVENDA'
   Then Begin//Se trabalhando com pedidos de venda
   	//INSERE COMANDOS PARA FILTRAR
 		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add(' Select itenspedven.cod_itenspedven, lote.lote, itenspedven.cod_lote, itenspedven.cod_pedven, itenspedven.cod_estoque,  itenspedven.qtdeprod, ItensPedVen.ValorTotal, ItensPedVen.COMISSAO, ');
		DMESTOQUE.TSlave.SQL.Add(' itenspedven.descpro, itenspedven.qtddev AS QTDDEV, itenspedven.cod_funcionario, pessoa.nome, itenspedven.valunit, subproduto.descricao, subproduto.marca, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS CONTRINT, itenspedven.data, itenspedven.operacao ');
		DMESTOQUE.TSlave.SQL.Add(' From itenspedven left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.TSlave.SQL.Add(' left join lote on itenspedven.cod_lote = lote.cod_lote ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join funcionario on funcionario.cod_func = itenspedven.cod_funcionario ');
		DMESTOQUE.TSlave.SQL.Add(' Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
		DMESTOQUE.TSlave.SQL.Add(' Where (itenspedven.cod_pedven = :CODPEDVENDA)');
		DMESTOQUE.TSlave.ParamByName('CODPEDVENDA').AsString:=XCodPedido;
       DMESTOQUE.TSlave.SQL.Add('order by itenspedven.cod_itenspedven desc');
		DMESTOQUE.TSlave.Open;

       //FILTRA DESPESAS
   	DMESTOQUE.TDesp.Close;
   	DMESTOQUE.TDesp.SQL.Clear;
   	DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'PEDVENDA'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
		DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=StrToInt(XCodPedido);
       DMESTOQUE.TDesp.SQL.Add('order by despadic.cod_despadic desc');
		DMESTOQUE.TDesp.Open;
   End
   Else Begin
   	//INSERE COMANDOS PARA FILTRAR
		DMESTOQUE.TSlave.Close;
		DMESTOQUE.TSlave.SQL.Clear;
		DMESTOQUE.TSlave.SQL.Add('Select itenspedc.cod_itenspedc,  itenspedc.cod_lote, Lote.Lote, itenspedc.cod_pedcompra, itenspedc.cod_estoque, ');
		DMESTOQUE.TSlave.SQL.Add('itenspedc.qtdeprod, itenspedc.qtdest, ItensPedc.valortotal, itenspedc.descpro, itenspedc.valunit, ');
		DMESTOQUE.TSlave.SQL.Add('subproduto.descricao, subproduto.marca, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS CODPRODFABR ');
		DMESTOQUE.TSlave.SQL.Add('From itenspedc left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
		DMESTOQUE.TSlave.SQL.Add('left join lote on itenspedc.cod_lote = lote.cod_lote ');
		DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
		DMESTOQUE.TSlave.SQL.Add('Where (itenspedc.cod_pedcompra = :CODPEDCOMPRA)');
		DMESTOQUE.TSlave.ParamByName('CODPEDCOMPRA').AsString:=XCodPedido;
       DMESTOQUE.TSlave.SQL.Add('order by itenspedc.cod_itenspedc desc');
		DMESTOQUE.TSlave.Open;
   End;
End;

//botao gravar
procedure TFPedidoVendaConstrutora.BtnGravarClick(Sender: TObject);
var
	xcodmotopedven : Integer;
begin
	//Samuel Fabricio Wink - 18/3/2009: vaz verificaçoes para gravação
	Trim(CbPlaca.Text);
   if FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'placa', CbPlaca.Text, '') = false then
   	begin
       	Mensagem('ATENÇÃO', 'Placa não encontrada, favor insira uma placa válida!', '', 1, 1, False, 'i');
       	exit;
       end;
   Trim(EdCodMoto.Text);
   if (EdCodMoto.Text = '') or (EdNomeMoto.Text = '') then
   	begin
       	Mensagem('ATENÇÃO', 'Motorista inexistente!!!', '', 1, 1, False, 'i');
       	exit;
       end;
   Trim(EdCodTrans.Text);
   if EdCodTrans.Text = '' then
   	begin
       	Mensagem('ATENÇÃO', 'Transportadora inexistente!!!', '', 1, 1, False, 'i');
       	exit;
       end;


   XControlDesc := 0;
   FMenu.TIPOREL:='NORMAL';
   FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_interno', EdCodCliente.Text, '');
   XCodPessoa := DMPESSOA.TCliente.FieldByName('cod_cliente').AsInteger;

   FiltraTabela(DMSAIDA.TPedV, 'pedvenda', 'cod_pedvenda', XCodPedido, '');
   //CONTROLA CRÉDITO DO CLIENTE
	If XSQLTABELA='PEDVENDA'
   Then Begin
  	   //VEERIFICA SE DIAS DE INTERVALO MAIOR QUE ZERO, SE IGUAL OU MENOR A ZERO O SISTEMA NÃO DEVE FAZER CONTROLE
      If DMMACS.TLoja.FieldByName('DIASBLOQCLI').AsInteger<>0
      Then Begin
      	If (EDFORMPAG.Text<>'À VISTA') and (EDFORMPAG.Text<>'DOACAO')
   	Then Begin
       	//SE O USUARIO POSSUI LIBERAÇÃO DE CRÉDITO NÃO FAZ CONTROLE PARA O CLIENTE
   		If ControlAccess('LIBERACRED', '')=False
           Then Begin
             XLIBCRED:=True;
       	  If VerificBloqCli(IntToStr(XCodPessoa))=True
             Then Begin
   			If Mensagem('C R É D I T O   B L O Q U E A D O', 'O Cliente informado possui Crédito Bloqueado. Deseja solicitar senha para liberar venda?', '', 2, 3, False, 'c')= 2
   			Then Begin
   				AbrirForm(TFSENHA, FSENHA, 0);
   				//repassa resultado da tela de autenticação de senha para as variáveis de controle
   				If XAlxResult=True Then
   					XLIBCRED:=True
   				Else
   		   			XLIBCRED:=False;
   				End
   			Else Begin
   				XLIBCRED:=False;
   			end;
             End;
             If XLIBCRED=False
             Then Begin
				Mensagem('C R É D I T O   B L O Q U E A D O', 'O Cliente informado possui Crédito Bloqueado. O Pedido não pode ser gravado com o cliente tendo crédito bloqueado!', '', 1, 1, false, 'i');
               Exit;
             End;
           End;
       End;
      End;
      //CONTROLA LIMITE DE CREDITO
      If (EDFORMPAG.Text<>'À VISTA') and (EDFORMPAG.Text<>'DOACAO')
      Then Begin
      		DMPESSOA.TCliente.Close;
           DMPESSOA.TCliente.SQL.Clear;
           DMPESSOA.TCliente.SQL.Add('select * from cliente where cliente.cod_cliente = :codigo');
           DMPESSOA.TCliente.ParamByName('codigo').AsInteger := XCodPessoa;
           DMPESSOA.TCliente.Open;

      		If (DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency<EdValorPed.ValueNumeric) And (DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency<>0)
           Then Begin
      			//SE O USUARIO POSSUI LIBERAÇÃO DE CRÉDITO NÃO FAZ CONTROLE PARA O CLIENTE
   			If ControlAccess('LIBERACRED', '')=True
               Then Begin
                   XControlDesc := 1;
       If DMMACS.TLoja.FieldByName('MSGLIMITCRED').AsString = '1'
       then begin
					Mensagem('LIMITE DE CRÉDITO', 'O valor do pedido excedeu o limite de crédito do cliente!'+#13+'Limite: R$ '+FormatFloat('###,##0.00', DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency) , '', 1, 1, false, 'A');
      END;
               End
               Else Begin
                   XControlDesc := 1;
                   If DMMACS.TLoja.FieldByName('MSGLIMITCRED').AsString = '1'
                   then begin
                       Mensagem('LIMITE DE CRÉDITO', 'O valor do pedido excedeu o limite de crédito do cliente!'+#13+'Limite: R$ '+FormatFloat('###,##0.00', DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency) , '', 1, 1, false, 'A');
                       Mensagem('LIMITE DE CRÉDITO', 'A VENDA FOI BLOQUEADA!' , '', 1, 1, false, 'A');
                       Exit;
                   end;
               End;
           End;

           // soma o total da conta que o cliente jah tah devendo
           DMCONTA.TAlx.Close;
           DMCONTA.TAlx.SQL.Clear;
           DMCONTA.TAlx.SQL.Add(' select sum(ctareceber.valor) as TOTAL from ctareceber ');
           DMCONTA.TAlx.SQL.Add(' where ctareceber.cod_cliente = :codigo ');
           DMCONTA.TAlx.ParamByName('codigo').AsInteger := XCodPessoa;
           DMCONTA.TAlx.Open;

           // se a divida do cliente mais o total da compra atual for maior que seu limite de compra, o pedido nao eh finalizado
           If (DMCONTA.TAlx.FieldByName('TOTAL').AsCurrency + EdValorPed.ValueNumeric) > DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency
           Then Begin
               // a variavel faz verificação para saber se a mensagem jah foi exibida
               If XControlDesc = 0
               Then Begin
                   //SE O USUARIO POSSUI LIBERAÇÃO DE CRÉDITO NÃO FAZ CONTROLE PARA O CLIENTE
                   If ControlAccess('LIBERACRED', '')=True
                   Then Begin
                      If DMMACS.TLoja.FieldByName('MSGLIMITCRED').AsString = '1'
                      then begin
                        Mensagem('LIMITE DE CRÉDITO', 'A conta que o cliente já possui mais o pedido atual ultrapassam seu limite.'+#13+'Limite: R$ '+FormatFloat('###,##0.00', DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency) , '', 1, 1, false, 'A');
                      end;
                   End
                   Else Begin
                   If DMMACS.TLoja.FieldByName('MSGLIMITCRED').AsString = '1'
                   then begin
                       Mensagem('LIMITE DE CRÉDITO', 'A conta que o cliente já possui mais o pedido atual ultrapassam seu limite.'+#13+'Limite: R$ '+FormatFloat('###,##0.00', DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency) , '', 1, 1, false, 'A');
                       Mensagem('LIMITE DE CRÉDITO', 'A VENDA FOI BLOQUEADA!' , '', 1, 1, false, 'A');
                       Exit;
                   end;
                   End;
               End;
           End;
      End;
	End;

   XTabela.Edit;
   //VERIFICA USUARIO PARA GRAVAR
   XTabela.FieldByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);

   //INFORMA CODIGO DA FORMA DE PAGAMENTO
   FiltraTabela(DMFINANC.TFormPag, 'formpag', 'cod_interno', EDCODFORMPAG.Text, '');
   XTabela.FieldByName('COD_FORMPAG').AsInteger:= DMFINANC.TFormPag.FieldByName('cod_formpag').AsInteger;

   //INFORMA CODIGO DO VENDEDOR
	If XSQLTABELA='PEDVENDA' Then
   	begin
         FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_interno', EdCodVend.Text, '');
         XTabela.FieldByName('COD_VENDEDOR').AsInteger:= DMPESSOA.TFuncionario.FieldByName('cod_func').AsInteger;
       end;
   Try
   	XTabela.Post;
   Except
   	MessageDlg('Este pedido foi apagado!', mtWarning, [mbOK], 0);
       If XSQLTABELA='PEDVENDA' Then
           DMSAIDA.IBT.RollbackRetaining
       Else
           DMESTOQUE.TransacEstoque.RollbackRetaining;
       Close;
   End;
   if(xcontrolesaida = true)then
   	begin
       	if(DMESTOQUE.TAluguel.IsEmpty)then
           	begin
                 //Verifica Se o pedido esta vazio
                 If (DMESTOQUE.TSlave.IsEmpty) and (DMESTOQUE.TDesp.IsEmpty)
                 Then Begin
                     Mensagem('OPÇÃO BLOQUEADA', 'O Pedido não pode ser gravado sem itens!', '', 1, 1, False, 'i');
                     Exit;
                 End;
               end;
       end;

 	//Verifica a existencia de outro pedido com o mesmo numero
	If XSQLTABELA='PEDVENDA'
   Then Begin
       If FiltraTabela(DMSAIDA.WPedV, 'VWPEDV', 'NUMPED', '', ' (NUMPED='+#39+DBNumPed.Text+#39+') AND (COD_PEDVENDA<>'+XCodPedido+') ')=True
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, altere o Número do pedido, já existe um pedido cadastrado com este Número', '', 1, 1, False, 'i');
           DBNumPed.SetFocus;
           Exit;
       End;
   End
   Else Begin
       If FiltraTabela(DMENTRADA.WPedC, 'VWPEDC', 'NUMPED', '', ' (NUMPED='+DBNumPed.Text+') AND (COD_PEDCOMP<>'+XCodPedido+') ')=True
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, altere o Número do pedido, já existe um pedido cadastrado com este Número', '', 1, 1, False, 'i');
           DBNumPed.SetFocus;
           Exit;
       End;
   End;

		If EdNomeCli.Text=''
	    Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe o cliente do pedido', '', 1, 1, False, 'i');
			BtnProcPess.SetFocus;
           Exit;
       End;
   //End;
	//Valida caso cliente não seja cadastrado a vendo somente pode ser à vista

       XTabela.Edit;
		   XTabela.FieldByName('COD_CLIENTE').AsInteger:=XCodPessoa;
       XTabela.FieldByName('NOMECLI').AsString:=EdNomeCli.Text;
       XTabela.FieldByName('VLRFRETE').AsString:=EdFrete.Text;

       if FiltraTabela(DMSAIDA.TObra, 'obra', 'descricao', EdDescricaoObra.Text, '') = true
       then begin
           xcodobra := DMSAIDA.TObra.FieldByName('cod_obra').AsString;
       end;

       XTabela.FieldByName('COD_OBRA').AsString:=xcodobra;

       XTabela.FieldByName('CPFCNPJ').AsString:= EdCpfCnpj.Text;

       XTabela.FieldByName('OBS').AsString:= UpperCase(MmObs.Text);
       XTabela.Post;
       //XCodPedido:=XTabela.FieldByName('COD_PEDVENDA').AsString;
   	//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI PARA EDITAR O VALOR
   	If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+XCodPedido+')')=True
   	Then Begin
       	//EDITAL FISCAL EXISTENTE
       	DMSAIDA.TFiscPV.Edit;
           DMSAIDA.TFiscPV.FieldByName('VLRTOTPROD').AsCurrency:=XTabela.FieldByName('VALOR').AsCurrency;
           DMSAIDA.TFiscPV.FieldByName('VLRTOTDOCNF').AsCurrency:=XTabela.FieldByName('VALOR').AsCurrency;
       	DMSAIDA.TFiscPV.Post;
       End;

   	If XCodPessoa = DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
       Then Begin
       	If (EDFORMPAG.Text<>'À VISTA') and (EDFORMPAG.Text<>'DOACAO')
           Then Begin
				Mensagem('OPÇÃO BLOQUEADA', 'Este cliente não se encontra cadastrado em Banco de Dados ou seja suas informações pessoais não estão cadastradas. Por isso este pedido não pode ser realizado à prazo!', '', 1, 1, False, 'i');
				BtnProcFormPag.SetFocus;
	            Exit;
           End;
       End;

   //valida vendedor caso somente em venda
   //If PCadVendedor.Visible=False
   //Then Begin
   	If EDNOMEVENDEDOR.Text=''
       Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe o vendedor para o pedido', '', 1, 1, False, 'i');
			BtnProcVend.SetFocus;
           Exit;
		End;
   //End;

   //Valida forma de pagamento
   If (EDCODFORMPAG.Text='-1') or (EDCODFORMPAG.Text='') or (EDFORMPAG.Text='')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por Favor, informe a forma de pagamento do pedido', '', 1, 1, False, 'i');
	  	BtnProcFormPag.SetFocus;
       Exit;
	End;

   //INICIA PROCESSO PARA GRAVAR TABELAS
   XTabela.Edit;
   XTabela.FieldByName('VALOR').AsCurrency:=EdValorPed.ValueNumeric;
   XTabela.FieldByName('DESCMOE').AsCurrency:=EdDescMoeda.ValueNumeric;

   if XSQLTABELA='PEDVENDA'
   then begin
      XTabela.FieldByName('FATURADO').AsCurrency:=0;
   end;

   //Informa Situação do pedido
   If DMMacs.tloja.FieldByName('FECHAPED').AsString='1' Then //Fechar pedido automaticamente ao gravar
		XTabela.FieldByName('SITUACAO').AsString:='FECHADO'
   Else
		XTabela.FieldByName('SITUACAO').AsString:='ABERTO';
   If XSQLTABELA='PEDCOMPRA' Then
        XTabela.FieldByName('COD_FORNEC').AsInteger:=XCodPessoa;
   XTabela.Post;
   //grava tabela slave
   Try
      XTransaction.CommitRetaining;
   Except
      Mensagem('OPÇÃO BLOQUEADA', 'Houve um problema ao gravar os items do pedido!', 'Por um motivo desconhecico o sistema não conseguiu gravar as últimas alterações do pedido. Os dados serão retornados até a última vez em que o pedido foi salvo.', 1, 1, True, 'a');
	   XTransaction.RollbackRetaining;
	End;

   //Passa outras informações
   Try
      //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESSÃO
      FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

      If (DMMacs.TLoja.FieldByName('IMPPEDFECH').AsString='1') And (XSQLTABELA='PEDVENDA') And (DMMacs.tloja.FieldByName('FECHAPED').AsString<>'1') Then //a impressão do pedido deve ser feita automatiacamente
		   //ImpPed(XTabela.FieldByName(XPkTabela).AsInteger);

   Except
      Mensagem('OPÇÃO BLOQUEADA', 'Houve um problema ao gravar o cabeçalho do pedido!', 'Por um motivo desconhecico o sistema não conseguiu gravar as últimas alterações do pedido. Os dados serão retornados até a última vez em que o pedido foi salvo.', 1, 1, True, 'a');
	   XTransaction.RollbackRetaining;
	End;


       // FILTRA TABELA BUSCANDO REGISTRO
       FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','NUMPED', DBNumPed.Text,'');

       // LIBERANDO REGISTRO PARA CONSULTAS
      { DMSAIDA.TPedV.First;
       DMSAIDA.TPedV.Edit;
       DMSAIDA.TPedV.FieldByName('EDIT').AsString := '0';
       DMSAIDA.TPedV.Post;
       DMSAIDA.IBT.CommitRetaining;     }


   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('select * from lojacesso');
   DMMACS.TALX.SQL.Add('where (lojacesso.cod_usuario=:COD)');
   DMMACS.TALX.ParamByName('COD').AsString:=FMenu.LCODUSUARIO.Caption;
   DMMACS.TALX.Open;

   //VERIFICA SE O PRODUTO DEVE SER FECHADO AUTOMATICAMENTE APÓS A VENDA
   If (DMMacs.tloja.FieldByName('FECHAPED').AsString='1') or (DMMACS.Talx.FieldByName('FECHAAUTOPED').AsString='1')
   Then Begin//Fechar pedido automaticamente ao gravar
		//Chama Função para fechar o pedido
       If XSQLTABELA='PEDVENDA'
       Then Begin
           If (EDFORMPAG.Text='À VISTA') and (EDFORMPAG.Text = 'DOACAO')
           Then Begin//como é uma venda a vista o sistema vai pegar a conta padrão para vendas a vista
				If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
               Then Begin//se existir uma conta padrao configurada
					XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
		   			FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
               End;
			End
           Else Begin//como é uma venda a prazo, lançar em conta padrão para venda a prazo
				If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
               Then Begin//se existir uma conta padrao configurada
					XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
		   			FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
               End;
			End;
           //EdDtFech.Text := DateToStr(Date);
       End
       ELSE BEGIN
           If (EDFORMPAG.Text='À VISTA') and (EDFORMPAG.Text = 'DOACAO')
           Then Begin//como é uma venda a vista o sistema vai pegar a conta padrão para vendas a vista
				If DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsString<>''
               Then Begin//se existir uma conta padrao configurada
					XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger;
		   			FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
               End;
			End
           Else Begin//como é uma venda a prazo, lançar em conta padrão para venda a prazo
				If DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsString<>''
               Then Begin//se existir uma conta padrao configurada
					XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger;
		   			FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');

               End;
			End;

       End;
   End;

   FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'PLACA', CbPlaca.Text, '');
   xcodequip := DMPESSOA.TEquip.fieldbyname('cod_equipamento').AsString;

   if(xconaltera = false)then
   	begin
   		DMESTOQUE.TMotoristaVeiculo.Close;
           DMESTOQUE.TMotoristaVeiculo.SQL.Clear;
           DMESTOQUE.TMotoristaVeiculo.SQL.Add('insert into motoristaveiculo');
           DMESTOQUE.TMotoristaVeiculo.SQL.Add('(COD_MOTORISTAVEICULO, COD_PEDVENDA, COD_EQUIPAMENTO, COD_FUNCIONARIO, TARA, DTENTRADA, HRENTRADA, DTSAIDA, HRSAIDA)');
           DMESTOQUE.TMotoristaVeiculo.SQL.Add('values');
           DMESTOQUE.TMotoristaVeiculo.SQL.Add('(:COD_MOTORISTAVEICULO, :COD_PEDVENDA, :COD_EQUIPAMENTO, :COD_FUNCIONARIO, :TARA, :DTENTRADA, :HRENTRADA, :DTSAIDA, :HRSAIDA)');
           DMESTOQUE.TMotoristaVeiculo.ParamByName('COD_MOTORISTAVEICULO').AsInteger := xcodmotoveic;
       end
   //grava a data e hora de saida do veiculo
   else
   	begin
       	//Samuel Fabricio Wink - 16/2/2009: busca motoveiculo para fazer update
       	FiltraTabela(DMESTOQUE.TMotoristaVeiculo, 'motoristaveiculo', 'cod_pedvenda', IntToStr(XCod_PedVendaDev), '');
           xcodmotopedven := DMESTOQUE.TMotoristaVeiculo.FieldByName('cod_pedvenda').AsInteger;
           xcodmotoveic := DMESTOQUE.TMotoristaVeiculo.FieldByName('cod_motoristaveiculo').AsInteger;

           if xentsaida = false then
   			begin
               	DMESTOQUE.TMotoristaVeiculo.Close;
                   DMESTOQUE.TMotoristaVeiculo.SQL.Clear;
                   DMESTOQUE.TMotoristaVeiculo.SQL.Add('update motoristaveiculo set');
                   DMESTOQUE.TMotoristaVeiculo.SQL.Add('COD_MOTORISTAVEICULO = :COD_MOTORISTAVEICULO, COD_PEDVENDA = :COD_PEDVENDA, COD_EQUIPAMENTO = :COD_EQUIPAMENTO, COD_FUNCIONARIO = :COD_FUNCIONARIO, TARA = :TARA');
                   DMESTOQUE.TMotoristaVeiculo.SQL.Add('where motoristaveiculo.cod_pedvenda = ' + IntToStr(xcodmotopedven));
                   DMESTOQUE.TMotoristaVeiculo.ParamByName('COD_MOTORISTAVEICULO').AsInteger := xcodmotoveic;
               end
           else
           	begin
                 DMESTOQUE.TMotoristaVeiculo.Close;
                 DMESTOQUE.TMotoristaVeiculo.SQL.Clear;
                 DMESTOQUE.TMotoristaVeiculo.SQL.Add('update motoristaveiculo set');
                 DMESTOQUE.TMotoristaVeiculo.SQL.Add('COD_MOTORISTAVEICULO = :COD_MOTORISTAVEICULO, COD_PEDVENDA = :COD_PEDVENDA, COD_EQUIPAMENTO = :COD_EQUIPAMENTO, COD_FUNCIONARIO = :COD_FUNCIONARIO, TARA = :TARA, DTSAIDA = :DTSAIDA, HRSAIDA = :HRSAIDA');
                 DMESTOQUE.TMotoristaVeiculo.SQL.Add('where motoristaveiculo.cod_pedvenda = ' + IntToStr(xcodmotopedven));
                 DMESTOQUE.TMotoristaVeiculo.ParamByName('COD_MOTORISTAVEICULO').AsInteger := xcodmotoveic;
       		end;
       end;

   //grava motorista veiculo do ped venda
   DMESTOQUE.TMotoristaVeiculo.ParamByName('COD_PEDVENDA').AsInteger := StrToInt(XCodPedido);
   DMESTOQUE.TMotoristaVeiculo.ParamByName('COD_EQUIPAMENTO').AsInteger := StrToInt(xcodequip);

   //Samuel Fabricio Wink - 13/2/2009: busca pk de funcionario
   FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_interno', EdCodMoto.Text, '');
   DMESTOQUE.TMotoristaVeiculo.ParamByName('COD_FUNCIONARIO').AsInteger := DMPESSOA.TFuncionario.FieldByName('cod_func').AsInteger;

   DMESTOQUE.TMotoristaVeiculo.ParamByName('TARA').AsCurrency := EdTara.ValueInteger;
   //grava a data e hora de entrada do veiculo
   //Samuel Fabricio Wink - 18/2/2009: controla se é uma consulta para naum alterar as datas e horas
   if xentsaida = true then
   	begin
         if(xcontrolesaida = false)then
             begin
                 DMESTOQUE.TMotoristaVeiculo.ParamByName('DTENTRADA').AsString := EdData.Text;
                 DMESTOQUE.TMotoristaVeiculo.ParamByName('HRENTRADA').AsString := EdHora.Text;
             end
         //grava a data e hora de saida do veiculo
         else
             begin
                 DMESTOQUE.TMotoristaVeiculo.ParamByName('DTSAIDA').AsDateTime := StrToDate(EdData.Text);
                 DMESTOQUE.TMotoristaVeiculo.ParamByName('HRSAIDA').AsDateTime := StrToTime(EdHora.Text);
             end;
       end;
	DMESTOQUE.TMotoristaVeiculo.ExecSQL;
   DMESTOQUE.TransacEstoque.CommitRetaining;

   //Samuel Fabricio Wink - 16/2/2009: reabre tabela motoristaveiculo
   FiltraTabela(DMESTOQUE.TMotoristaVeiculo, 'motoristaveiculo', '', '', '');

   xcodobra:='';

   BtnFecha.Visible:=True;
   PConsulta.BringToFront;
   PConsulta.Visible := true;
   PCadastro.SendToBack;
   PCadastro.Visible := false;

  atualizapedido;
  atualizasaida;

  BtnFechar.Visible := True;
end;

//botao excluir
procedure TFPedidoVendaConstrutora.BtnDeleteListClick(Sender: TObject);
begin
  inherited;
   If DMESTOQUE.TSlave.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar
   	If XSQLTABELA='PEDVENDA'
       Then Begin
   		If (DMESTOQUE.TSlave.FieldByName('OPERACAO').AsString='TRC')
       	Then Begin
				Mensagem('OPÇÃO BLOQUEADA', 'Produtos que foram devolvidos ou trocados não podem ser excluídos da lista.', '', 1, 1, false, 'i');
           	exit;
       	end;
       End;
	  	//LOCALIZA E FILTRA ESTOUE CORRESPONDENTE
		FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
		FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
  	    If XSQLTABELA='PEDVENDA'
	    Then Begin
			FiltraTabela(XTabSlave, 'ITENSPEDVEN', 'COD_ITENSPEDVEN', DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDVEN').AsString, '');
	    End
	    Else Begin
			FiltraTabela(XTabSlave, 'ITENSPEDC', 'COD_ITENSPEDC', DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDC').AsString, '');
	    End;
	    //Atualiza Estoque
	    If XSQLTABELA='PEDVENDA'
	    Then Begin
	 	  	If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
	        Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
		   	   	//atualiza estoque físico
               DMEstoque.TEstoque.edit;
	         	DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+XTabSlave.FieldByName('QTDEPROD').AsCurrency;
               DMEstoque.TEstoque.Post;
	        End
    	    Else Begin
		       	//atualiza estoque reservado e saldo
               DMEstoque.TEstoque.edit;
		       	DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency-XTabSlave.FieldByName('QTDEPROD').AsCurrency;
               DMEstoque.TEstoque.Post;
	      	End;
  			If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString='SEMENTES'
   		Then Begin
           	//Atualiza o Estoque do Lote
           	DMESTOQUE.TLote.Close;
           	DMESTOQUE.TLote.SQL.Clear;
           	DMESTOQUE.TLote.SQL.Add('SELECT * FROM LOTE WHERE (LOTE.COD_LOTE=:CODLOTE) and (LOTE.COD_ESTOQUE=:CODESTOQUE)');
           	DMESTOQUE.TLote.ParamByName('CODLOTE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_LOTE').AsInteger;
           	DMESTOQUE.TLote.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
           	DMESTOQUE.TLote.Open;
           	If Not DMESTOQUE.TLote.IsEmpty
           	Then Begin
               	DMESTOQUE.TLote.Edit;
               	DMESTOQUE.TLote.FieldByName('QTD').AsCurrency:=DMESTOQUE.TLote.FieldByName('QTD').AsCurrency+XTabSlave.FieldByName('QTDEPROD').AsCurrency;
               	DMESTOQUE.TLote.Post;
           	End;
       	End;
	    End
	    Else Begin
	      	If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
	        Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
           	DMEstoque.TEstoque.edit;
		      	DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency-XTabSlave.FieldByName('QTDEST').AsCurrency;
               DMEstoque.TEstoque.Post;
	        End
	        Else Begin
	         	//atualiza estoque poedido e saldo
               DMEstoque.TEstoque.edit;
		       	DMEstoque.TEstoque.FieldByName('ESTPED').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTPED').AsCurrency-XTabSlave.FieldByName('QTDEST').AsCurrency;
				DMEstoque.TEstoque.Post;
	        End;
	    End;
       //Atualiza saldo de estoque

       //prepara estoque em pedido de compra
       If DMEstoque.TEstoque.FieldByName('ESTPED').AsString='' Then
           XEstPed:=0
       Else
           XEstPed:=DMEstoque.TEstoque.FieldByName('ESTPED').AsCurrency;

       //prepara estoque em pedido de venda
       If DMEstoque.TEstoque.FieldByName('ESTRESERV').AsString='' Then
           XEstReserv:=0
       Else
           XEstReserv:=DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency;

       //prepara estoque fisico
       If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString='' Then
           XEstFisico:=0
       Else
           XEstFisico:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency;

       DMESTOQUE.TransacEstoque.CommitRetaining;

	    //APAGA ITEM
	 	DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add('delete from itenspedven');
       DMESTOQUE.TSlave.SQL.Add('where itenspedven.cod_pedven = :CODPED and itenspedven.cod_estoque = :CODEST');
       DMESTOQUE.TSlave.ParamByName('CODPED').AsInteger:= StrToInt(XCodPedido);
       DMESTOQUE.TSlave.ParamByName('CODEST').AsInteger:= StrToInt(DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsString);
       DMESTOQUE.TSlave.ExecSQL;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       FiltraSlaveDev;
   End;
   FiltraSlaveDev;
end;

procedure TFPedidoVendaConstrutora.EdValorPedExit(Sender: TObject);
VAR
   XVLRFRETE1: REAL;
begin
  inherited;
   //VERIFICA SE O PEDIDO JÁ POSSUE DOC FIS
   If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+') AND (docfis.tipogerador='+#39+'PEDCOMPRA'+#39+')')=True
   Then Begin
   	If DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString='1' Then
       	XVLRFRETE1:=DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency
       Else
           XVLRFRETE1:=0;
   End
   Else Begin
   	XVLRFRETE1:=0;
   End;

   If XVLRTOTAL<>(EdValorPed.ValueNumeric-XVLRFRETE1)
   Then Begin
		CalcPercent(0, XVLRTOTAL-(EdValorPed.ValueNumeric-XVLRFRETE1), XVLRTOTAL , 'D');
       XTabela.edit;
       XTabela.FieldByName('DESCONTO').AsCurrency:=AlxPercento;
       XTabela.Post;
   End
   Else Begin
       FiltraSlave;
       XTabela.edit;
       XTabela.FieldByName('DESCONTO').AsCurrency:=0;
       XTabela.Post;
       EdValorPed.ValueNumeric:=XVLRTOTAL+XVLRFRETE1;
   End;
	//CalcComisTotVend;
   EdDescMoeda.ValueNumeric:=XVLRTOTAL-EdValorPed.ValueNumeric;
   XVLRFISCAL:=EdValorPed.ValueNumeric;
end;

//comeca pesquisa codigo
procedure TFPedidoVendaConstrutora.EdCodMotoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  DBMotorista.Visible := True;
  PCodNomeMoto.Visible := True;
  DBMotorista.SetFocus;
end;

//comeca pesquisa nome
procedure TFPedidoVendaConstrutora.EdNomeMotoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
	DBMotorista.Visible := True;
   PCodNomeMoto.Visible := True;
   DBMotorista.SetFocus;
end;

//deixa invisivel
procedure TFPedidoVendaConstrutora.EdCodMotoExit(Sender: TObject);
begin
  //DBMotorista.Visible := False;
  //PCodNomeMoto.Visible := False;
end;

//deixa invisivel
procedure TFPedidoVendaConstrutora.EdNomeMotoExit(Sender: TObject);
begin
  //DBMotorista.Visible := False;
  //PCodNomeMoto.Visible := False;
end;

//apagar pedido de venda
procedure TFPedidoVendaConstrutora.BtnApagarClick(Sender: TObject);
begin
	PMApagar.Popup(Left+PConsulta.left+Painel.left+ BtnApagar.Left, top+PConsulta.Top+Painel.top+BtnApagar.Top+BtnApagar.Height);
end;

//botao consultar
procedure TFPedidoVendaConstrutora.BtnConsultarClick(Sender: TObject);
begin
	//Samuel Fabricio Wink - 11/3/2009: limpa edits
	LimparEdits;
	//Samuel Fabricio Wink - 14/2/2009: inicializa variavel
   xentsaida := false;
   xbtconsulta := true;
   xcliant := '0';
   xcodobra:='';

	PMConsultar.Popup(Left+PConsulta.left+Painel.left+ BtnConsultar.Left, top+PConsulta.Top+Painel.top+BtnConsultar.Top+BtnConsultar.Height);

   if FiltraTabela(DMPESSOA.WCliente, 'vwcliente', 'cod_interno', EdCodCliente.Text, '') = true
   then begin
       xclirel:=DMPESSOA.WCliente.fieldByName('cod_cliente').AsInteger;
   end
   else begin
       xclirel:=0;
   end;
end;

//calcula frete ao total
procedure TFPedidoVendaConstrutora.EdFreteExit(Sender: TObject);
var
	xvalfrete : Integer;
begin
   Trim(EdFrete.Text);
   FiltraSlaveDev;
end;

procedure TFPedidoVendaConstrutora.BtnFechaPedClick(Sender: TObject);
begin
  inherited;
	If XView.FieldByName('SITUACAO').AsString='ABERTO'
   Then Begin

       If XSQLTABELA='PEDVENDA'
       Then Begin
          // BUSCANDO DADOS DO PEDIDO
           FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XView.FieldByName('COD_PEDVENDA').AsString,'');
			//Samuel Fabricio Wink - 2/2/2009: teste para impressao
           XPkTabela := 'cod_pedvenda';
           XTabela := DMSAIDA.TPedV;
           // caso o campo tiver valendo 1 eh pq o pedido de venda jah esta sendo usado
          { If DMSAIDA.TPedV.FieldByName('EDIT').AsString = '1'
           Then Begin
               Mensagem('    A T E N Ç Ã O   ','O pedido de venda está sendo usado no momento.','',1,1,false,'I');
               Exit;
           End
           Else Begin
               DMSAIDA.TPedV.Edit;
               DMSAIDA.TPedV.FieldByName('EDIT').AsString := '0';
               DMSAIDA.TPedV.Post;
               DMSAIDA.IBT.CommitRetaining;
           End; }

       End;

		If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente fechar o pedido '+XView.FieldByName('NUMPED').AsString, '', 2, 3, False, 'C')=2
       Then Begin
      		//FILTRA LOJA PARA VERIFICAR CONFIGURAÇÕES
      		FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

           // configuração em loja que jah deixa desativado a opção para gerar financeiro
           If DMMACS.TLoja.FieldByName('gerafinanceiro').AsString = '1' Then
               CBGeraFinanceiro.Checked := true
           Else
               CBGeraFinanceiro.Checked := false;

           FrmConta.EDCodigo.Text:='';
           FrmConta.EdDescricao.Text:='';
		  	If XSQLTABELA='PEDVENDA'
           Then Begin
               If ControlAccess('GERAFINANC', '')=True Then
                   CBGeraFinanceiro.Visible:=true;

               XCodPedido:=XView.FieldByName('COD_PEDVENDA').ASSTRING;
           	If DMSAIDA.WPedV.FieldByName('FORMPAG').AsString='À VISTA'
           	Then Begin//como é uma venda a vista o sistema vai pegar a conta padrão para vendas a vista
					If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString<>''
               	Then Begin//se existir uma conta padrao configurada
						XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
		   				FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
               		FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               		FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               	End
               	Else Begin
			        	FrmConta.EDCodigo.Text:='';
			        	FrmConta.EdDescricao.Text:='';
               	End;
				End
           	Else Begin//como é uma venda a prazo, lançar em conta padrão para venda a prazo
					If DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString<>''
               	Then Begin//se existir uma conta padrao configurada
						XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
		   				FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
               		FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               		FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               	End
               	Else Begin
			        	FrmConta.EDCodigo.Text:='';
			        	FrmConta.EdDescricao.Text:='';
               	End;
				End;
               PFinanceiro.Visible:=True;
               PFinanceiro.BringToFront;
               PConsulta.SendToBack;
               PConsulta.Visible := False;
               PConsulta.Visible := True;
               EdDtFech.Text:=DateToStr(Date());
               XCOD_CONTABANCO:=-1;
   			//VERIFICA SE O PEDIDO JÁ POSSUE DOC FIS E FRETE PARA ABRIR DADOS DE FRETE
   			If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+')')=True
   			Then Begin
					If (DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString='0') AND (DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency>0)
                   Then Begin
                   	GBFRETE.Visible:=True;
                   	GBFRETE.BringToFront;
                   	BtnMoedaOK.Top:=294;
                   	BtnMoedaCancelar.Top:=294;
                   	FPFinanceiro.Height:=326;
                   	PFinanceiro.Height:=337;
                   End
                   Else Begin
                   	GBFRETE.Visible:=False;
                   	BtnMoedaOK.Top:=198;
                   	BtnMoedaCancelar.Top:=198;
                   	FPFinanceiro.Height:=230;
                   	PFinanceiro.Height:=242;
					End;
               End
               Else Begin
               	GBFRETE.Visible:=False;
                   BtnMoedaOK.Top:=198;
                   BtnMoedaCancelar.Top:=198;
                   FPFinanceiro.Height:=230;
                   PFinanceiro.Height:=242;
               End;

               CBPagamento.SetFocus;
           End
		    Else Begin
               XCodPedido:=XView.FieldByName('COD_PEDCOMP').ASSTRING;
           	If DMENTRADA.WPedC.FieldByName('FORMPAG').AsString='À VISTA'
           	Then Begin//como é uma COMPRA a vista o sistema vai pegar a conta padrão para COMPRAS a vista
    				//No caso de usar tabela tmp inicia os valores
	 				XCod_Tmp:=0;
  	 				//APAGA REGISTROS DA TABERLA TMP
    				DMCONTA.TAlx.Close;
    				DMCONTA.TAlx.SQL.Clear;
    				DMCONTA.TAlx.SQL.Add('DELETE FROM TMP ');
    				DMCONTA.TAlx.ExecSQL;
    				DMCONTA.IBT.CommitRetaining;

					If DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsString<>''
               	Then Begin//se existir uma conta padrao configurada
						XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger;
		   				FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
               		FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               		FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               	End
               	Else Begin
			        	FrmConta.EDCodigo.Text:='';
			        	FrmConta.EdDescricao.Text:='';
               	End;
                   If XView.FieldByName('NUMDEV').AsString<>''
                   Then Begin
						XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_DEVOLUCAO').AsInteger;
		   				FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
               		FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               		FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                   End;
				End
           	Else Begin//como é uma venda a prazo, lançar em conta padrão para venda a prazo
					If DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsString<>''
               	Then Begin//se existir uma conta padrao configurada
						XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger;
		   				FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
               		FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               		FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
               	End
               	Else Begin
			        	FrmConta.EDCodigo.Text:='';
			        	FrmConta.EdDescricao.Text:='';
               	End;
                   If XView.FieldByName('NUMDEV').AsString<>''
                   Then Begin
						XCodConta:=DMMACS.TLoja.FieldByName('PLNCTA_DEVOLUCAO').AsInteger;
		   				FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XCodConta), '');
               		FrmConta.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
               		FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
                   End;
				End;
               PFinanceiro.Visible:=True;
               PFinanceiro.BringToFront;

               If XSQLTABELA='PEDCOMPRA'
               Then Begin
                   CBGeraFinanceiro.Visible := false;
               End;

               EdDtFech.Text:=DateToStr(Date());
   			//VERIFICA SE O PEDIDO JÁ POSSUE DOC FIS E FRETE PARA ABRIR DADOS DE FRETE
   			If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+')')=True
   			Then Begin
					If (DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString='0') AND (DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency>0)
                   Then Begin
                   	GBFRETE.Visible:=True;
                   	GBFRETE.BringToFront;
                   	BtnMoedaOK.Top:=294;
                   	BtnMoedaCancelar.Top:=294;
                   	FPFinanceiro.Height:=326;
                   	PFinanceiro.Height:=337;
                   End
                   Else Begin
                   	GBFRETE.Visible:=False;
                   	BtnMoedaOK.Top:=198;
                   	BtnMoedaCancelar.Top:=198;
                   	FPFinanceiro.Height:=230;
                   	PFinanceiro.Height:=242;
					End;
               End
               Else Begin
               	GBFRETE.Visible:=False;
                   BtnMoedaOK.Top:=198;
                   BtnMoedaCancelar.Top:=198;
                   FPFinanceiro.Height:=230;
                   PFinanceiro.Height:=242;
               End;
               CBPagamento.SetFocus;
           End;
		   //Seleciona apenas pedidos pertencentes a loja
		   LiberaDados;
          atualizasaida;
          atualizapedido;
       End;
   End
   Else Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Este pedido já se encontra fechado!', '', 1, 1, False, 'i');
   End;
end;

procedure TFPedidoVendaConstrutora.BtnMoedaOKClick(Sender: TObject);
begin
  inherited;
	 //valida quanto a forema de pagamento
	If CBPagamento.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe se o pagamento será feito em carteira, cheque ou cartão!', '', 1, 1, False, 'i');
       CBPagamento.SetFocus;
       Exit;
   End;

   //valida quanto a Conta
	If FrmConta.EdDescricao.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmConta.EdDescricao.SetFocus;
       Exit;
   End;

   //Valida Quanto a conta
   If Not FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', '', '', 'Where (COD_FILIAL='+FMenu.LCODEMPRESA.Caption+') And (CLASSIFICACAO='+FrmConta.EDCodigo.Text+')')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta válida para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmConta.EDCodigo.SetFocus;
       Exit;
   End;
   XSQLTABELA := 'PEDVENDA';
   PFinanceiro.Visible:=False;

//********************************************************************************
   FechaPedido(XCodPedido, EdDtFech.Text);                      //VERIFICARR
//********************************************************************************


   if(DMSAIDA.TPedV.FieldByName('SITUACAO').AsString = 'FECHADO')then
   	begin
         DMSAIDA.TPedV.Edit;
         DMSAIDA.TPedV.FieldByName('EXPORTA').AsInteger := 0;
         DMSAIDA.TPedV.Post;
         DMSAIDA.IBT.CommitRetaining;
       end;
   LiberaDados;
   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;
   EdNome.SetFocus;

   XCOMREL := false;
   If FiltraTabela(DMSAIDA.WPedV, 'vwpedv', 'cod_pedvenda', XCodPedido, '')=True Then
       ImpPed(StrToInt(XCodPedido))
   Else
       MessageDlg('O Pedido não foi encontrado para impressão.', mtWarning, [mbOK], 0);

   LiberaDados;
end;

procedure TFPedidoVendaConstrutora.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
	PFinanceiro.Visible:=False;
    PCadastro.Visible:=False;
    PConsulta.Visible:=true;
    PConsulta.BringToFront;
    EdNome.SetFocus;

    atualizapedido;
  atualizasaida;
end;

//desconto em porcentagem
procedure TFPedidoVendaConstrutora.EdDescPedExit(Sender: TObject);
var
XVLRDESC : String;
begin
  inherited;
	If FloatToStr(XControlDesc)=EDDescPed.Text Then
       Exit;
  	If EDDescPed.text<>''
   Then Begin

       // a edit tah perdendo valor quando entra na função calcomisprod, intaum uma variavel apenas copia o valor da edit p repassar depois
       XVLRDESC := EDDescPed.Text;

       If StrToInt(EDDescPed.Text) = 0
       Then Begin
           EdValorPed.Text := FormatFloat('#,##0.00',XVLRTOTAL);
           EDDescPed.Text := '0,00';
           EdDescMoeda.Text := '0,00';
           Exit;
       End;

		CalcPercent(StrToFloat(EDDescPed.text), XVLRTOTAL, XVLRTOTAL, 'D');
   	If AlxValor<>0
       Then Begin
			EdValorPed.Text:=FormatFloat('#,##0.00', AlxCalculo)
       End
		Else Begin
			EdValorPed.Text:='0,00';
       End;

       XTabela.edit;
       XTabela.FieldByName('DESCONTO').AsCurrency:=AlxPercento;
       XTabela.Post;

   End
   Else Begin
       EDDescPed.text:='0,00';
       EdValorPed.ValueNumeric:=XVLRTOTAL;
   End;
	//CalcComisTotVend;
   EdDescMoeda.ValueNumeric:=XVLRTOTAL-EdValorPed.ValueNumeric;
   XVLRFISCAL:=EdValorPed.ValueNumeric;
   EDDescPed.Text := XVLRDESC;
end;

//desconto em moeda
procedure TFPedidoVendaConstrutora.EdDescMoedaExit(Sender: TObject);
var
XVLRDESC :String;
begin
  inherited;
	If XControlDesc=EdDescMoeda.ValueNumeric Then
       Exit;
  	If EdDescMoeda.text<>''
   Then Begin
		EdValorPed.ValueNumeric:=XVLRTOTAL-EdDescMoeda.ValueNumeric;
       XVLRDESC := EdDescMoeda.text;
   End;
   If XVLRTOTAL<>(EdValorPed.ValueNumeric)
   Then Begin
		CalcPercent(0, XVLRTOTAL-(EdValorPed.ValueNumeric), XVLRTOTAL , 'D');
       XTabela.edit;
       XTabela.FieldByName('DESCONTO').AsCurrency:=AlxPercento;
       XTabela.Post;
   End
   Else Begin
       FiltraSlave;
       XTabela.edit;
       XTabela.FieldByName('DESCONTO').AsCurrency:=0;
       XTabela.Post;
       EdValorPed.ValueNumeric:=XVLRTOTAL;
   End;

	//CalcComisTotVend;
   XVLRFISCAL:=EdValorPed.ValueNumeric;
   EdDescMoeda.text := XVLRDESC;
end;

//botao para abrir forma de pgemnto
procedure TFPedidoVendaConstrutora.FrmContaBTNOPENClick(Sender: TObject);
Var
	Oper: Char;
begin
  inherited;
   //verifica o tipo do operador para selecionar contas
   If UpperCase(XSQLTabela)='PEDVENDA' Then
       Oper:='C';
   If UpperCase(XSQLTabela)='PEDCOMPRA' Then
       Oper:='D';
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCodConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
end;

//botao miunus do painel finaceiro
procedure TFPedidoVendaConstrutora.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   If XSQLTABELA='PEDVENDA' Then
       FMenu.TIPOAUX:='VENDA'
   Else
       FMenu.TIPOAUX:='COMPRA';

	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCODFORMPAGFRETE:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

       FrmFormPagFrete.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsString;
       FrmFormPagFrete.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   End;
end;

//colocar cor nas celulas conforme seu status
procedure TFPedidoVendaConstrutora.DBGPedidoPadraoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
	inherited;
	if XView.FieldByName('SITUACAO').AsString='ABERTO' then
   begin
  		DBGPedidoPadrao.Canvas.Font.Color := clRed;
		DBGPedidoPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   	If XSQLTABELA='PEDVENDA'
       Then Begin
           if XView.FieldByName('GARANT').AsString='1'
           then begin
  				DBGPedidoPadrao.Canvas.Font.Color := clBlue;
				DBGPedidoPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
           End;
       End;
   end;

   // - 28/04/2009: grid zebrada
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if XView.Recno mod 2 = 1 then
          DBGPedidoPadrao.Canvas.Brush.Color := $00EEEEEE
       else
          DBGPedidoPadrao.Canvas.Brush.Color := clWhite;
      end;
      DBGPedidoPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

//fechar form
procedure TFPedidoVendaConstrutora.BtnFechaClick(Sender: TObject);
begin
  close;
end;
//usa botao enter
procedure TFPedidoVendaConstrutora.EdCodClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_return then
  	begin
  		EdCodClienteExit(Sender);
   	BtnProcPess.SetFocus;
   end;
end;
//usa botao enter
procedure TFPedidoVendaConstrutora.EdCodTransKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_return then
  begin
  		EdCodTransExit(Sender);
   	BtnTransportadora.SetFocus;
   end;
end;
//usa botao enter
procedure TFPedidoVendaConstrutora.EdCodVendKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_return then
  begin
  		EdCodVendExit(Sender);
   	BtnProcVend.SetFocus;
   end;
end;

//usa botao enter
procedure TFPedidoVendaConstrutora.EDCODFORMPAGKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_return then
   	begin
  			EDCODFORMPAGExit(Sender);
           BtnProcFormPag.SetFocus;
       end;
end;
//usa botao enter
procedure TFPedidoVendaConstrutora.EdCodConKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_return then
   	begin
  			EdCodConExit(Sender);
           BtOpenContainer.SetFocus;
       end;
end;
//usa botao enter
procedure TFPedidoVendaConstrutora.EdCodInternoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = VK_return then
   	begin
  			EdCodInternoExit(Sender);
           EdDensidade.SetFocus;
       end;
end;
//edit pesquisa numero pedido saida
procedure TFPedidoVendaConstrutora.EdNPedSaidaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
	If ((Key = VK_return) or (Key = VK_f2)) then
  	begin
   	Trim(EdNPedSaida.Text);
   	if(EdNPedSaida.Text <> '')then
       	begin
             DMSAIDA.TAlx.Close;
             DMSAIDA.TAlx.SQL.Clear;
             DMSAIDA.TAlx.SQL.Add('select * from pedvenda');
             DMSAIDA.TAlx.SQL.Add('left join motoristaveiculo on pedvenda.numped = motoristaveiculo.cod_pedvenda');
             DMSAIDA.TAlx.SQL.Add('left join equipamento on motoristaveiculo.cod_equipamento = equipamento.cod_equipamento');
             DMSAIDA.TAlx.SQL.Add('left join vwfuncionario on motoristaveiculo.cod_funcionario = vwfuncionario.cod_func');
             DMSAIDA.TAlx.SQL.Add('where motoristaveiculo.dtsaida is null and pedvenda.numped ='+ EdNPedSaida.Text);
             DMSAIDA.TAlx.Open;
           end
       else
       	atualizasaida;
   end;
end;
//pesquisa placa saida
procedure TFPedidoVendaConstrutora.EdPlacaSaidaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var xcod : String;

begin
  If ((Key = VK_return) or (Key = VK_f2)) then
  	begin
   	Trim(EdPlacaSaida.Text);
   	if(EdPlacaSaida.Text <> '')then
       	begin
             DMPESSOA.TEquip.Close;
             DMPESSOA.TEquip.SQL.Clear;
             DMPESSOA.TEquip.SQL.Add('select * from equipamento');
             DMPESSOA.TEquip.SQL.Add('where placa like upper('+#39+ EdPlacaSaida.Text +'%'+#39+')');
             DMPESSOA.TEquip.Open;
             xcod := DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsString;

             DMSAIDA.TAlx.Close;
             DMSAIDA.TAlx.SQL.Clear;
             DMSAIDA.TAlx.SQL.Add('select * from pedvenda');
             DMSAIDA.TAlx.SQL.Add('left join motoristaveiculo on pedvenda.numped = motoristaveiculo.cod_pedvenda');
             DMSAIDA.TAlx.SQL.Add('left join equipamento on motoristaveiculo.cod_equipamento = equipamento.cod_equipamento');
             DMSAIDA.TAlx.SQL.Add('left join vwfuncionario on motoristaveiculo.cod_funcionario = vwfuncionario.cod_func');
             DMSAIDA.TAlx.SQL.Add('where motoristaveiculo.dtsaida is null and motoristaveiculo.cod_equipamento ='+ xcod);
             DMSAIDA.TAlx.Open;
           end
       else
       	atualizasaida;
   end;
end;
//pesquisa cliente saida
procedure TFPedidoVendaConstrutora.EdClienteSaidaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
	If ((Key = VK_return) or (Key = VK_f2)) then
  	begin
   	Trim(EdClienteSaida.Text);
   	if(EdClienteSaida.Text <> '')then
       	begin
             DMSAIDA.TAlx.Close;
             DMSAIDA.TAlx.SQL.Clear;
             DMSAIDA.TAlx.SQL.Add('select * from pedvenda');
             DMSAIDA.TAlx.SQL.Add('left join motoristaveiculo on pedvenda.numped = motoristaveiculo.cod_pedvenda');
             DMSAIDA.TAlx.SQL.Add('left join equipamento on motoristaveiculo.cod_equipamento = equipamento.cod_equipamento');
             DMSAIDA.TAlx.SQL.Add('left join vwfuncionario on motoristaveiculo.cod_funcionario = vwfuncionario.cod_func');
             DMSAIDA.TAlx.SQL.Add('where motoristaveiculo.dtsaida is null and upper(pedvenda.nomecli) like upper('+#39+ EdClienteSaida.Text +'%'+#39+')');
             DMSAIDA.TAlx.Open;
           end
       else
       	atualizasaida;
   end;
end;
//pesquisa numero ped venda ja completo pronto para ser fechado
procedure TFPedidoVendaConstrutora.EdNPedVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
	If ((Key = VK_return) or (Key = VK_f2)) then
  	begin
   	Trim(EdNPedVenda.Text);
   	if(EdNPedVenda.Text <> '')then
   		FiltraTabela(DMSAIDA.WPedV, 'vwpedv', 'numped', '', '(upper(NUMPED) like upper('+#39+EdNPedVenda.Text+'%'+#39+'))')
		else
       	atualizapedido;
   end;
end;
//pesquisa cliente no ped venda
procedure TFPedidoVendaConstrutora.EdClienteVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If ((Key = VK_return) or (Key = VK_f2)) then
  	begin
   	Trim(EdClienteVenda.Text);
   	if(EdClienteVenda.Text <> '')then
   		FiltraTabela(DMSAIDA.WPedV, 'vwpedv', 'nomecli', '', '(upper(NOMECLI) like upper('+#39+EdClienteVenda.Text+'%'+#39+'))')
		else
       	atualizapedido;
   end;
end;
//cancela fechamento do pedido
procedure TFPedidoVendaConstrutora.BtnTrocaClick(Sender: TObject);
   Var
	XCodPedidoTroca: String;
   xCodCtaRec : String;
begin
   //Samuel Fabricio Wink - 11/3/2009: limpa edits
	LimparEdits;

  inherited;
	If XView.FieldByName('SITUACAO').AsString='CANCELADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido se encontra cancelado!', '', 1, 1, False, 'a');
       Exit;
   End;

   FiltraTabela(XTabela, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '');
   If (DMSAIDA.TPedV.FieldByName('FISCO').AsString='ECF') OR (DMSAIDA.TPedV.FieldByName('FISCO').AsString='NF')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Este pedido já passou por uma impressão fiscal!', '', 1, 1, False, 'a');
		Exit;
   End;

	If XView.FieldByName('SITUACAO').AsString<>'FECHADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este pedido não se encontra fechado! Então você pode clicar em consultar e alterar suas informações', '', 1, 1, False, 'a');
       Exit;
   End;

	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CANCPEDFECH', 'M')=False Then
  		Exit;
	If Mensagem('A T E N Ç Ã O', 'Deseja realmente Cancelar o fechamento do pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
       XCodPedidoTroca:=XView.FieldByName('COD_PEDVENDA').AsString;
       If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', XCodPedidoTroca, '')=True
       Then Begin
           //REGISTRA COMANDO DO USUARIO
           Registra('PEDIDO VENDA', 'CANCELA FECHAMENTO', DMSAIDA.TPedV.FieldByName('DTPEDVEN').AsString, 'Nº '+DMSAIDA.TPedV.FieldByName('NUMPED').AsString+'-'+DMSAIDA.TPedV.FieldByName('NOMECLI').AsString, 'Vlr:'+DMSAIDA.TPedV.FieldByName('VALOR').AsString+'-'+DMSAIDA.WPedV.FieldByName('FORMPAG').AsString);
			If FPedidoPadrao.CancelLanPed(XCodPedidoTroca)=True
           Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
				DMSAIDA.TPedV.EDIT;
           	DMSAIDA.TPedV.FieldByName('SITUACAO').AsString := 'ABERTO';
               DMSAIDA.TPedV.FieldByName('EXPORTA').AsInteger := 0;
				DMSAIDA.TPedV.Post;
				DMSAIDA.TPedV.ApplyUpdates;
				DMSAIDA.IBT.CommitRetaining;
       		If FiltraTabela(DMSAIDA.WPedV, 'vwpedv', 'cod_pedvenda', XCodPedidoTroca, '')=True
       		Then Begin
               	PedidosVenda1Click(Sender);
                   atualizapedido;
                   atualizasaida;
           	End;
           End;
       End
       Else Begin
			Exit;
       End;
   End;
end;

//Fecha pedido (Atualiza estoque e joga no financeiro
Function TFPedidoVendaConstrutora.FechaPedido(CODPEDIDO: String; DTFECH: String) : Boolean;
Var
	AtualizaEst, ATUFINANC: Boolean; //Controla se atualização de estoque e controle financeiro foram efetivados
   XPKSlaveCampo, XSQLSlave: String;//guardará a pk e a SQL do tabela slave
   XVLRFRETE1: Real;
   XNUMDOC: String; //ira conter o numero do documento se emitido documento fiscal será o numero do cupom se nao o numero de pedido
	XHistorico: String;// Armazena o historico de operação
   XVLRCREDITO: Real;//Armazena temporariamento o valor q deve ser retirado do credito
   XConta: integer;
   XNumeroCupom: string;
Begin
	FMenu.TIPOREL:='PEDNORMAL';
	If XSQLTABELA='PEDVENDA'
   Then Begin
       XPKSlaveCampo:='COD_ITENSPEDVEN';
       XSQLSlave:='ITENSPEDVEN';
   End
   Else Begin
       XSQLSlave:='ITENSPEDC';
       XPKSlaveCampo:='COD_ITENSPEDC';
   End;

	//inicializa as variaveis como true, caso encontre erro na passagem da função eslas passaram a false
   FechaPedido:=False;
	AtualizaEst:=True;
   ATUFINANC:=False;
	// Tenta filtrar o pedido
   If FiltraTabela(XTabela, XSQLTABELA, XPkTabela, CODPEDIDO, '') = True
	Then Begin
      	XNUMDOC:=XTabela.FieldByName('NUMPED').AsString;
       //Filtra loja
		FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '' );
		If XSQLTABELA='PEDVENDA'
   	Then Begin
			XCodVendedor:=XTabela.FieldByName('COD_VENDEDOR').AsInteger;
       	//VERIFICA O NUMERO DO DOCUMENTO
       	If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='ECF'
       	Then Begin
            If (MODELO_IMPRESSORA = 'BEMATECH')
            THEN BEGIN
                For XConta := 1 To 6 Do
                XNumeroCupom := XNumeroCupom + ' ';
                // busca o numero do cupom atual
                Bematech_FI_NumeroCupom( XNumeroCupom );
                XNUMDOC:= XNumeroCupom;

            END;
        End;
       	If  DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF'
       	Then Begin
   			//VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
   			If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(cod_pedido='+#39+CODPEDIDO+#39+')')=True
   			Then Begin
                   XNUMDOC:=XNUMDOC+':'+DMSAIDA.TFiscPV.FieldByName('NUMDOCFIS').AsString
           	End
           End;
       End;
       //***********************************************
       // INICIA PROCESSO PARA ATUALIZAÇÃO DE ESTOQUE **
       //***********************************************

   	// Filtra registros de pedido
       FiltraSlave;

       //percorre todos os registros
       DMESTOQUE.TSlave.First;
       While Not DMESTOQUE.TSlave.Eof do
       Begin
           //este bloco de exeção irá controlar a atualização do estoque, caso falhar a variavel ATUALIZAEST será false
           Try
           	//utiliza-se da tabela auxiliar TSlave p/ localizar o registro real em XTABSlave
			    If FiltraTabela(XTabSlave, XSQLSlave, XPKSlaveCampo, DMESTOQUE.TSlave.FieldByName(XPKSlaveCampo).AsString, '') = True
               Then Begin
			       	//Filtra estoque de acordo com o registro selecionado
				    If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', XTabSlave.FieldByName('COD_ESTOQUE').AsString, '') = True
					Then Begin
                   	If XSQLTABELA='PEDVENDA'
                       Then Begin
                       	//se o produto ainda não atualizou estoque, verifica se a quantidade para isso
							If XTabSlave.FieldByName('ATUEST').AsString<>'1'
                           Then Begin
				           		//Verifica se pode ser atualizado caso não haja estoque suficiente
						  		If (DMMacs.TLoja.FieldByName('VENDESTNEG').AsString='0') And (XTabSlave.FieldByName('QTDEPROD').AsCurrency>DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency)
						    	Then Begin
									Mensagem('OPÇÃO BLOQUEADA', 'Não existe estoque suficiente para suportar esta operação. Um ou mais produtos não possuem estoque suficiente!', '', 1, 1, False, 'a');
									AtualizaEst:=False;
									Exit;
		  	                	End;
			           			//Verifica se pode ser atualizado caso não haja saldo de estoque suficiente
				  				If (DMMacs.TLoja.FieldByName('VENDSALDONEG').AsString='0') And (XTabSlave.FieldByName('QTDEPROD').AsCurrency>DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency)
						    	Then Begin
									Mensagem('OPÇÃO BLOQUEADA', 'Não existe saldo de estoque suficiente para suportar esta operação. Um ou mais produtos não possuem estoque suficiente!', '', 1, 1, False, 'a');
									AtualizaEst:=False;
									Exit;
			                	End;
                           End;
                       End;
		               //Verifica se já foi atualizado estoquie
		               If XTabSlave.FieldByName('ATUEST').AsString<>'1'
		               Then Begin //O Estoque ainda não foi atualizado e deve ser
                      		If XSQLTABELA='PEDVENDA'
                           Then Begin
								//ATUALIZA CUSTO DE ESTOQUE
								DMESTOQUE.CalcCustMed(DMESTOQUE.TEstoque.FieldByNAme('COD_ESTOQUE').AsInteger, 'S', XTabSlave.FieldByName('QTDEPROD').AsCurrency, XTabSlave.FieldByName('QTDEPROD').AsCurrency*XTabSlave.FieldByName('VALUNIT').AsCurrency);

               				//Atualiza data da ultima venda
              		    	    DMEstoque.TEstoque.Edit;
								DMEstoque.TEstoque.FieldByName('ULTVENDA').AsString:=DateToStr(Date());
			               		DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency-XTabSlave.FieldByName('QTDEPROD').AsCurrency;
								DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency-XTabSlave.FieldByName('QTDEPROD').AsCurrency;
                               DMESTOQUE.TEstoque.Post;
   							DMESTOQUE.TransacEstoque.CommitRetaining;
                           End
                      		Else Begin
                       		//EM CASO DE PEDIDO DE COMPRA ATUALIZA CUSTO DO ESTOQUE
								DMESTOQUE.CalcCustMed(DMESTOQUE.TEstoque.FieldByNAme('COD_ESTOQUE').AsInteger, 'E', XTabSlave.FieldByName('QTDEPROD').AsCurrency, XTabSlave.FieldByName('QTDEPROD').AsCurrency*XTabSlave.FieldByName('VALUNIT').AsCurrency);
               					//Atualiza data da ultima compra
                             	DMESTOQUE.TEstoque.Edit;
								DMEstoque.TEstoque.FieldByName('ULTCOMPRA').AsString:=DateToStr(Date());
                               DMESTOQUE.TEstoque.Post;
                               DMESTOQUE.TransacEstoque.CommitRetaining;
       						//VERIFICA QUANTO A CONVERSÃO UNITARIA DE COMPRA PARA VENDA
           					FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
                           End;

	                        //indica ao registro escravo que seu estoque já foi atualizado
	                        XTabSlave.Edit;
			                XTabSlave.FieldByName('ATUEST').AsString:='1';
                           XTabSlave.Post;
			       		  //Atualiza saldo de estoque
				    	  //calcula saldo de estoque
			                Try
								DMEstoque.TEstoque.Edit;
			  				 	DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency:=(DMEstoque.TEstoque.FieldByName('ESTPED').AsCurrency-DMEstoque.TEstoque.FieldByName('ESTRESERV').AsCurrency)+DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency;
								DMEstoque.TEstoque.Post;
                               DMESTOQUE.TransacEstoque.CommitRetaining;
                           Except
		                    End;
		               End;
	               End
	               Else Begin//else de filtragem de estoque
						AtualizaEst:=False;
	               End;
               End
               Else Begin//else de filtragem de estoque
					AtualizaEst:=False;
               End;
	        Except
               AtualizaEst:=False;
           End;
           //Avança um registro
           DMESTOQUE.TSlave.Next;
       End;
       //***********************************************
       // FIM DE PROCESSO PARA ATUALIZAÇÃO DE ESTOQUE **
       //***********************************************


       //***********************************************
       // INICIO DE PROCESSO PARA CONTROLE FINANCEIRO **
       //***********************************************
	   		If XSQLTABELA='PEDVENDA'
           Then Begin//efetua lançamento em caixa para frete à vista
           	//*********************
               // ATUALIZA COMISSÃO **
               //*********************
               //VERIFICA SE EXISTE ALGUM COMISSIONADO PARA O PEDIDO
               TRY
               	DMFINANC.TAlx.Close;
               	DMFINANC.TAlx.SQL.Clear;
               	DMFINANC.TAlx.SQL.Add(' Select *  from comissao ');
               	DMFINANC.TAlx.SQL.Add(' Where (comissao.gerador=:GERADOR) AND (comissao.cod_gerador=:CODGERADOR) ');
               	DMFINANC.TAlx.ParamByName('GERADOR').AsString:='PEDVENDA';
               	DMFINANC.TAlx.ParamByName('CODGERADOR').AsString:=XCodPedido;
               	DMFINANC.TAlx.Open;
                   If DMFINANC.TAlx.IsEmpty
                   Then Begin
                   	//Não foi encontrada nenhuma comissão gerada para este pedido esta deve ser feita automaticamente para o vendedor selecinado em pedido
						//INSERE O COMISSIONADO
                       DMFINANC.TComis.Close;
                       DMFINANC.TComis.SQL.Clear;
                       DMFINANC.TComis.SQL.Add('Select * from comissao');
                       DMFINANC.TComis.Open;
						XCODPKCOMIS:=InserReg(DMFINANC.TComis, 'COMISSAO', 'COD_COMISSAO');
   					DMFINANC.TComis.FieldByName('COD_COMISSAO').AsInteger:=XCODPKCOMIS;
   					DMFINANC.TComis.FieldByName('COD_GERADOR').AsString:=CODPEDIDO;
   					DMFINANC.TComis.FieldByName('GERADOR').AsString:='PEDVENDA';
   					DMFINANC.TComis.FieldByName('COD_FUNCIONARIO').AsInteger:=XTabela.FieldByName('COD_VENDEDOR').AsInteger;
    					If (DMMACS.TLoja.FieldByName('ALTCOMPROD').AsString='1')
                       Then Begin
    						//A base de cálculo utilizada para comissão deve ser a mesma trazido da informada no momento da inserção do produto
							//Calcula Total
                           //INSERE COMANDOS PARA FILTRAR
							DMESTOQUE.Alx.Close;
							DMESTOQUE.Alx.SQL.Clear;
							DMESTOQUE.Alx.SQL.Add('Select SUM(itenspedven.comissao) AS COMISSAO From itenspedven');
							DMESTOQUE.Alx.SQL.Add('Where (itenspedven.cod_pedven = :CODPEDVENDA)');
                           DMESTOQUE.Alx.ParamByName('CODPEDVENDA').AsString:=DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsString;
							DMESTOQUE.Alx.Open;
		   					DMFINANC.TComis.FieldByName('VLRPROD').AsCurrency:=DMESTOQUE.Alx.FieldByName('COMISSAO').AsCurrency;
  							DMFINANC.TComis.FieldByName('PERPROD').AsCurrency:=100;
  							DMFINANC.TComis.FieldByName('VLRCOMISPROD').AsCurrency:=DMESTOQUE.Alx.FieldByName('COMISSAO').AsCurrency;
                       End
                       Else Begin
                       	DMFINANC.TComis.FieldByName('VLRPROD').AsCurrency:=XTabela.FieldByName('VALOR').AsCurrency;
                           DMFINANC.TComis.FieldByName('VLRCOMISPROD').AsCurrency:=XTabela.FieldByName('VLRCOMIS').AsCurrency;
                           //Filtra Forma de Pagamento
                           FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', XTabela.FieldByName('COD_FORMPAG').AsString, '');
                           FiltraTabela(DMPESSOA.TFunCargo, 'FUNCARGO', 'COD_FUNCIONARIO', IntToStr(XCodVendedor), '');
                           DMPESSOA.TFunCargo.Last;
                           If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA' Then // caso o frete tenha sido feito à vista deve-se lançar o valor direto no caixa
                           	DMFINANC.TComis.FieldByName('PERPROD').AsCurrency:=DMPESSOA.TFunCargo.FieldByName('COMISSAO_VVPRO').AsCurrency
                           Else
                           	DMFINANC.TComis.FieldByName('PERPROD').AsCurrency:=DMPESSOA.TFunCargo.FieldByName('COMISSAO_VPPRO').AsCurrency;
                       End;
   					DMFINANC.TComis.Post;
                   End;
               Except
					Mensagem('INFORMAÇÃO AO USUÁRIO', 'Problemas ao gerar comissão', '', 1, 1, false, 'a');
                   ATUFINANC:=False;
                   DMCAIXA.IBT.RollbackRetaining;
					XTransaction.RollbackRetaining;
                   DMFINANC.Transaction.RollbackRetaining;
					exit;
               End;
           End;

       If XTabela.FieldByName('VALOR').AsCurrency<=0
       Then Begin
       	ATUFINANC:=True;
       End
       Else Begin
       	//LANÇA FRETE
          //VERIFICA SE O PEDIDO JÁ POSSUE DOC FIS E FRETE PARA LANCAR FRETE
          If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+')')=True
          Then Begin
      	      If XSQLTABELA='PEDVENDA'
             Then Begin
               //LANCA PARA VENDA
          		If (DMSAIDA.TFiscPV.FieldByName('FRETECOMP').AsString='0') AND (DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency>0)
               Then Begin
                   XVLRFRETE1:=DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency;
               	//Filtra Forma de Pagamento
         			If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCODFORMPAGFRETE) , '') = True
   	  			Then Begin // Encontrou forma de pagamento, continua processo
       				If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
           			Then Begin // caso o frete tenha sido feito à vista deve-se lançar o valor direto no caixa
               				//Filtra fornecedor para lançar em historico
                   			FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '');

               				//Filtra fornecedor para lançar em historico
   							If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFISSAIDA', '', '(docfisSAIDA.cod_pedido='+#39+XCodPedido+#39+')')=True Then
	                  				FiltraTabela(DMPESSOA.TALX, 'VWFORNEC', 'COD_FORNEC', DMSAIDA.TFiscPV.FieldByName('COD_TRANSP').AsString, '');

                   			If (CBPagamento.Text='Carteira')
                       		Then Begin//LANÇAMENTO EM CAIXA PARA CARTEIRA
									If LanCaixa(0 {DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, DateToStr(Date()), DMMACS.TLoja.FieldByName('CTAFRTCOMP').AsInteger, 'FRETE '+DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString+' - Transp. '+DMPESSOA.TALX.FieldByName('NOME').AsString+' - '+XNUMDOC+' / '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency, 'PEDCOMPRA', StrToInt(XCodPedido), CBPagamento1.Text, 'S', DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString, Date(), '1')=False Then
                           			ATUFINANC:=False;
                       		End;
			                   	If CBPagamento1.Text='Cheque'
           		            Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
									If LancChSai(DMMACS.TLoja.FieldByName('CTAFRTCOMP').AsInteger, 'FRETE '+DMSAIDA.TFiscPV.FieldByName('NUMCONHEC').AsString+' - Transp. '+DMPESSOA.TALX.FieldByName('NOME').AsString+' - '+XNUMDOC+' / '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, Date(), XTabela.FieldByName('VALOR').AsCurrency, XCOD_CONTABANCO, 'PEDCOMPRA', XCodPedido,XTabela.FieldByName('numfisc').AsString)=False
          							Then  //Se lançou
                           			ATUFINANC:=FALSE;
                       		end;
               		End
                       Else Begin
               				//Filtra fornecedor para lançar em historico
                   			FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '');

               				//Filtra fornecedor para lançar em historico
   							If FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_DOCFIS', '', '(docfissaida.cod_pedido='+#39+XCodPedido+#39+')')=True Then
	                  				FiltraTabela(DMPESSOA.TALX, 'VWFORNEC', 'COD_FORNEC', DMSAIDA.TFiscPV.FieldByName('COD_TRANSP').AsString, '');
               				If LancConta(XSQLTABELA, StrToInt(XCodPedido), DMSAIDA.TFiscPV.FieldByName('COD_TRANSP').AsInteger, CBPagamento1.Text, DMSAIDA.TFiscPV.FieldByName('VLRFRETE').AsCurrency, 0, DMMACS.TLoja.FieldByName('CTAFRTCOMP').AsInteger, -1, 0{DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, 'FRETE '+DMSAIDA.TFiscPV.FieldByName('NUMCONHEC').AsString+' - Transp. '+DMPESSOA.TALX.FieldByName('NOME').AsString+' - '+XNUMDOC+' / '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, XCODFORMPAGFRETE, 'FRT: '+DMSAIDA.TFiscPV.FieldByName('NUMCONHEC').AsString, 'P',  XTabela.FieldByName('DTPEDCOMP').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDCOMP').AsString, XTabela.FieldByName('numfiscal').AsString)=False
                       		Then Begin
									ATUFINANC:=False;
                       		End;
                       End;
          			End;
               End;
			  End
             Else Begin
             	//LANCA PARA COMPRA
          		If (DMENTRADA.TFiscPC.FieldByName('FRETECOMP').AsString='0') AND (DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency>0)
               Then Begin
                   XVLRFRETE1:=DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency;
               	//Filtra Forma de Pagamento
         			If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(XCODFORMPAGFRETE) , '') = True
   	  			Then Begin // Encontrou forma de pagamento, continua processo
       				If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
           			Then Begin // caso o frete tenha sido feito à vista deve-se lançar o valor direto no caixa
               				//Filtra fornecedor para lançar em historico
                   			FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '');

               				//Filtra fornecedor para lançar em historico
   							If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+')')=True Then
	                  				FiltraTabela(DMPESSOA.TALX, 'VWFORNEC', 'COD_FORNEC', DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsString, '');

                   			If (CBPagamento.Text='Carteira') or (CBPagamento.Text='Cartão')
                       		Then Begin//LANÇAMENTO EM CAIXA PARA CARTEIRA
									If LanCaixa(0 {DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, DateToStr(Date()), DMMACS.TLoja.FieldByName('CTAFRTCOMP').AsInteger, 'FRETE '+DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString+' - Transp. '+DMPESSOA.TALX.FieldByName('NOME').AsString+' - '+XNUMDOC+' / '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency, 'PEDCOMPRA', StrToInt(XCodPedido), CBPagamento1.Text, 'S', DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString, Date(), '1')=False Then
                           			ATUFINANC:=False;
                       		End;
			                   	If CBPagamento1.Text='Cheque'
           		            Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
									If LancChSai(DMMACS.TLoja.FieldByName('CTAFRTCOMP').AsInteger, 'FRETE '+DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString+' - Transp. '+DMPESSOA.TALX.FieldByName('NOME').AsString+' - '+XNUMDOC+' / '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, Date(), XTabela.FieldByName('VALOR').AsCurrency, XCOD_CONTABANCO, 'PEDCOMPRA', XCodPedido,  XTabela.FieldByName('numfiscal').AsString)=False
          							Then  //Se lançou
                           			ATUFINANC:=FALSE;
                       		end;
               		End
                       Else Begin
                           //Filtra fornecedor para lançar em historico
                           FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '');

                           //Filtra fornecedor para lançar em historico
                           If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XCodPedido+#39+')')=True Then
                               FiltraTabela(DMPESSOA.TALX, 'VWFORNEC', 'COD_FORNEC', DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsString, '');
                           If LancConta(XSQLTABELA, StrToInt(XCodPedido), DMENTRADA.TFiscPC.FieldByName('COD_TRANSP').AsInteger, CBPagamento1.Text, DMENTRADA.TFiscPC.FieldByName('VLRFRETE').AsCurrency, 0, DMMACS.TLoja.FieldByName('CTAFRTCOMP').AsInteger, -1, 0{DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, 'FRETE '+DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString+' - Transp. '+DMPESSOA.TALX.FieldByName('NOME').AsString+' - '+XNUMDOC+' / '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString, XCODFORMPAGFRETE, 'FRT: '+DMENTRADA.TFiscPC.FieldByName('NUMCONHEC').AsString, 'P',  XTabela.FieldByName('DTPEDCOMP').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDCOMP').AsString, XTabela.FieldByName('numfiscal').AsString)=False
                           Then Begin
                               ATUFINANC:=False;
                           End;
                       End;
          			End;
               End;
             End;
          End;

         //Filtra Forma de Pagamento
         If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', XTabela.FieldByName('COD_FORMPAG').AsString, '') = True
   	  Then Begin // Encontrou forma de pagamento, continua processo
         		If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
               Then Begin // caso o pedido tenha sido feito à vista deve-se lançar o valor direto no caixa
                   If XSQLTABELA='PEDVENDA'
                   Then Begin//efetua lançamento em caixa para venda à vista
                   	If CBGeraFinanceiro.Checked=False
                       Then Begin
                       	//Somente gera o financeiro se o combobox acima estiver desmarcado
                           XHistorico:='Fech. Venda '+XNUMDOC+' - Cli. '+XTabela.FieldByName('NOMECLI').AsString;
                           If (CBPagamento.Text='Carteira')
                           Then Begin//LANÇAMENTO EM CAIXA PARA CARTEIRA
                               If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XTabela.FieldByName('VALOR').AsCurrency, 'PEDVENDA', StrToInt(XCodPedido), CBPagamento.Text, 'E', XNUMDOC, Date(), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                               End;
                           End;
                           If CBPagamento.Text='Cheque'
                           Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
                               If LancChEnt(XCodConta, 0, XHistorico, Date(), '', XTabela.FieldByName('VALOR').AsCurrency, 0, '', '', 0, '', '', 'PEDVENDA',  XCodPedido)=True
                               Then  ////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               Else//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                           End;
                           If CBPagamento.Text = 'Cartão'
                           Then Begin
                               If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCodConta,'Fech. Venda por cartão:' + XNUMDOC + ' - Cli. '+XTabela.FieldByName('NOMECLI').AsString, XTabela.FieldByName('VALOR').AsCurrency, 'PEDVENDA',StrToInt(CodPedido), 'ENTRADA',StrToInt(FMenu.LCODUSUARIO.Caption), 'CARTÃO', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                               Then  ////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               Else//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                           End;
                       End
                       Else Begin
                           ATUFINANC:=True;
                       End;
                   End
                   Else Begin //efetua lançamento para compras
                       If XTabela.FieldByName('NUMDEV').AsString='' Then
							XHistorico:='Fech. Compra '+XNUMDOC+' - For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString
                       Else
							XHistorico:='Fch. Dev: '+XNUMDOC+'Venda: '+XTabela.FieldByName('NUMDEV').AsString+' - For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
                     //	If (CBPagamento.Text='Carteira') or (CBPagamento.Text='Cartão')
                       If (CBPagamento.Text='Carteira')
                       Then Begin//LANÇAMENTO EM CAIXA PARA CARTEIRA
				        	//Filtra pessoa para incluir no histórico
							FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '');
							If lanCaixa(0, DateToStr(Date()), XCodConta, XHistorico,  XTabela.FieldByName('VALOR').AsCurrency, 'PEDCOMPRA', StrToInt(XCodPedido), CBPagamento.Text, 'S', XNUMDOC, Date(), '1')=True
                       	Then Begin//informa que a atualização do financeiro foi efetivada
                           	ATUFINANC:=True;
                       	End
                       	Else Begin//informa que a finalização do financeiro falhou
                           	ATUFINANC:=False;
                       	End;
                       end;
                       //caso seja pagamento a cartão
                       if CBPagamento.Text='Cartão'
                       Then Begin  //faz lançamento apenas em banco por ser pagamento a cartão.
                               If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCodConta,'Fech. compra por cartão:' + XNUMDOC + ' - Fornec. '+XTabela.FieldByName('COD_FORNEC').AsString, XTabela.FieldByName('VALOR').AsCurrency, 'PEDCOMPRA',StrToInt(CodPedido), 'SAIDA',StrToInt(FMenu.LCODUSUARIO.Caption), 'CARTÃO', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                               Then  ////informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True
                               Else//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                       end;
                   	If CBPagamento.Text='Cheque'
                       Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
				        	//Filtra pessoa para incluir no histórico
							FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '');
							If LancChSai(XCodConta, XHistorico, Date(), XTabela.FieldByName('VALOR').AsCurrency, XCOD_CONTABANCO, 'PEDCOMPRA', XCodPedido, XTabela.FieldByName('numfiscal').AsString)=True
          					Then  //Se lançou
                           	ATUFINANC:=True
          					Else
                           	ATUFINANC:=FALSE;
                       end;
          	 			If (CBPagamento.Text='Chq. Terc.')
            			Then Begin//controla os lançamentos que devem ser feitos em caixa
            				//PERCORRE TODOS OS CHEQUES EFETUANDO RETIRADO DO MESMO DO CX
							DMBANCO.TAlx.First;
               			While Not DMBANCO.TAlx.Eof do
               			Begin
   							If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.TAlx.FieldByName('COD_MOVBANCO').AsString, '')=True
   							Then Begin
           						FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
           						DMBANCO.TMovBanco.EDIT;
									DMBANCO.TMovBanco.FieldByName('FECH').AsString:='S';
									DMBANCO.TMovBanco.FieldByName('DTMOV').AsString:=DateToStr(Date());
       							//LANÇAR VALOR DE ESTORNO PARA RETIRADA DA FOLHA DO CAIXA
                                   LanCaixa (-1, DateToStr(Date()),  DMBANCO.TMovBanco.FieldByName('cod_plncta').AsInteger, 'Pgto For: '+DMCONTA.WParP.FIELDBYNAME('NOME').AsString+' Chq.: '+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'-'+ DateToStr(Date())+' De: '+DMBANCO.TChequeRec.FIELDBYNAME('EMITENTE').AsString, DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency, 'DCHR', DMBANCO.WChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'CHEQUE', 'S', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString, DMBANCO.TMovBanco.FieldByName('DTLANC').AsDateTime, '1');
                   			End;
                   			DMBANCO.TAlx.Next;
               			End;
               			//Se faltou dinheiro deve-se retirar do cx
               			If XTabela.FieldByName('VALOR').AsCurrency<XVlrCheque
               			Then Begin
               				XHistorico:='Dif. '+XHistorico;
								LanCaixa (-1, DateToStr(Date()),  XCodConta, XHistorico+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVlrCheque-XTabela.FieldByName('VALOR').AsCurrency, 'CTAP', XCodConta, CBPagamento.Text, 'E', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('DTLANC').AsDateTime, '1');
							End;
               			//Se Sobrou dinheiro deve-se retirar do cx
               			If XTabela.FieldByName('VALOR').AsCurrency>XVlrCheque
               			Then Begin
								XHistorico:='Dif. '+XHistorico;
								LanCaixa (-1, DateToStr(Date()),  XCodConta, XHistorico+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XTabela.FieldByName('VALOR').AsCurrency-XVlrCheque, 'CTAP', XCodConta, CBPagamento.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('DTLANC').AsDateTime, '1');
							End;
            			End;
                   End;
               End
               Else Begin//Não é à vista
                   If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='CREDITO'
                   Then Begin
               		If XSQLTABELA='PEDVENDA'
                   	Then Begin//efetua controle de creditos para vendas
                           If CBGeraFinanceiro.Checked=False
                           Then Begin
                               //Somente gera o financeiro se o combobox acima estiver desmarcado
                               XHistorico:='Reg. de Operação de Crédito PDV '+XNUMDOC+' - Cli. '+XTabela.FieldByName('NOMECLI').AsString;
                               //LANÇA CREDITO PARA CLIENTE
                               If FiltraTabela(DMPESSOA.WCliente, 'vwcliente', 'COD_CLIENTE', XTabela.FieldByName('COD_CLIENTE').AsString, '')=False
                               Then Begin
                                   ATUFINANC:=False;
                                   Exit;
                               End;
                               If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '')=False
                               Then Begin
                                   ATUFINANC:=False;
                                   Exit;
                               End;
                               //determina o valor a ser lançado como credito
                               If XTabela.FieldByName('VALOR').AsCurrency<=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency
                               Then Begin
                                   XVLRCREDITO:=XTabela.FieldByName('VALOR').AsCurrency;
                               End
                               Else Begin
                                   XVLRCREDITO:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency;
                               End;
                               //SE EXISTE
                               DMPESSOA.TPessoa.Edit;
                               DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency-XVLRCREDITO;
                               DMPESSOA.TPessoa.Post;
                               //Lança na tabela de credito
                               LanCredito(XTabela.FieldByName('COD_CLIENTE').AsInteger, XTabela.FieldByName('COD_PEDVENDA').AsInteger, 'PEDVENDA', 'CLI', 'S', XTabela.FieldByName('NUMPED').AsString, DateToStr(Date()), XTabela.FieldByName('VALOR').AsCurrency);
                               //REGISTRO DE CREDITO SAIDA
                               If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XVLRCREDITO, 'PEDVENDA', StrToInt(XCodPedido), CBPagamento.Text, 'S', XNUMDOC, Date(), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True;
                                   //REGISTRO DE CREDITO ENTRADA
                                   If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XVLRCREDITO, 'PEDVENDA', StrToInt(XCodPedido), CBPagamento.Text, 'E', XNUMDOC, Date(), '1')=True
                                   Then Begin//informa que a atualização do financeiro foi efetivada
                                       ATUFINANC:=True;
                                       DMPESSOA.TransacPessoa.CommitRetaining;
                                   End
                                   Else Begin//informa que a finalização do financeiro falhou
                                       ATUFINANC:=False;
                                       DMPESSOA.TransacPessoa.RollbackRetaining;
                                   End;
                                   DMPESSOA.TransacPessoa.CommitRetaining;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                                   DMPESSOA.TransacPessoa.RollbackRetaining;
                               End;
                               If XTabela.FieldByName('VALOR').AsCurrency>XVLRCREDITO
                               Then Begin
                                   //CASO O CREDITO NAO TENHA SIDO SUFICIENTE TRABALHA NO CAIXA
                                   //REGISTRO DE CREDITO ENTRADA
                                   If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XTabela.FieldByName('VALOR').AsCurrency-XVLRCREDITO, 'PEDVENDA', StrToInt(XCodPedido), CBPagamento.Text, 'E', XNUMDOC, Date(), '1')=True
                                   Then Begin//informa que a atualização do financeiro foi efetivada
                                       ATUFINANC:=True;
                                       DMPESSOA.TransacPessoa.CommitRetaining;
                                   End
                                   Else Begin//informa que a finalização do financeiro falhou
                                       ATUFINANC:=False;
                                       DMPESSOA.TransacPessoa.RollbackRetaining;
                                   End;
                               End;
                           End
                           Else Begin
                               ATUFINANC := true;
                           End;
                       End
                       Else Begin
                           //LANÇA CREDITO PARA FORNECEDOR
                           If FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'COD_FORNEC', XTabela.FieldByName('COD_FORNEC').AsString, '')=False
                           Then Begin
                               ATUFINANC:=False;
                               Exit;
                           End;
                           If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsString, '')=False
                           Then Begin
                               ATUFINANC:=False;
                               Exit;
                           End;
                           //determina o valor a ser lançado como credito
                           If XTabela.FieldByName('VALOR').AsCurrency<=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency
                           Then Begin
                               XVLRCREDITO:=XTabela.FieldByName('VALOR').AsCurrency;
                           End
                           Else Begin
                               XVLRCREDITO:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency;
                           End;
						    XHistorico:='Reg. de Operação de Crédito PDC '+XNUMDOC+' - For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
                           DMPESSOA.TPessoa.Edit;
                           DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency-XVLRCREDITO;
                           DMPESSOA.TPessoa.Post;
                           //Lança na tabela de credito
                   		LanCredito(XTabela.FieldByName('COD_FORNEC').AsInteger, XTabela.FieldByName('COD_PEDCOMP').AsInteger, 'PEDCOMPRA', 'FOR', 'S', XTabela.FieldByName('NUMPED').AsString, DateToStr(Date()), XTabela.FieldByName('VALOR').AsCurrency);
                           //REGISTRO DE CREDITO ENTRADA
                           If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XVLRCREDITO, 'PEDCOMPRA', StrToInt(XCodPedido), CBPagamento.Text, 'E', XNUMDOC, Date(), '1')=True
                           Then Begin//informa que a atualização do financeiro foi efetivada
                               ATUFINANC:=True;
                               // REGISTRO DE CREDITO SAIDA
                               If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XVLRCREDITO, 'PEDCOMPRA', StrToInt(XCodPedido), CBPagamento.Text, 'S', XNUMDOC, Date(), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True;
                                   DMPESSOA.TransacPessoa.CommitRetaining;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                                   DMPESSOA.TransacPessoa.RollbackRetaining;
                               End;
                               DMPESSOA.TransacPessoa.CommitRetaining;
                           End
                           Else Begin//informa que a finalização do financeiro falhou
                               ATUFINANC:=False;
                               DMPESSOA.TransacPessoa.RollbackRetaining;
                           End;
                           If XTabela.FieldByName('VALOR').AsCurrency>XVLRCREDITO
                           Then Begin
                               //CASO O CREDITO NAO TENHA SIDO SUFICIENTE RETIRA DO CAIXA
						        XHistorico:='Operação de Crédito PDC '+XNUMDOC+' - For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
                               // REGISTRO DE CREDITO SAIDA
                               If LanCaixa(0, DateToStr(Date()), XCodConta, XHistorico, XTabela.FieldByName('VALOR').AsCurrency-XVLRCREDITO, 'PEDCOMPRA', StrToInt(XCodPedido), CBPagamento.Text, 'S', XNUMDOC, Date(), '1')=True
                               Then Begin//informa que a atualização do financeiro foi efetivada
                                   ATUFINANC:=True;
                                   DMPESSOA.TransacPessoa.CommitRetaining;
                               End
                               Else Begin//informa que a finalização do financeiro falhou
                                   ATUFINANC:=False;
                                   DMPESSOA.TransacPessoa.RollbackRetaining;
                               End;
                           End;
                       End;
                   End;
       			If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='CADERNETA'
           		Then Begin // caso o pedido tenha sido feito CADERNETA deve-se lançar o valor Em Cta receber Caderneta
						XHistorico:='Fech. Ped. Venda '+ XNUMDOC;
                   	//SQL para verificar se o pedido já possui uma caderneta
                       DMCONTA.TCtaR.Close;
                       DMCONTA.TCtaR.SQL.Clear;
                       DMCONTA.TCtaR.SQL.Add('SELECT * FROM CTARECEBER WHERE ctareceber.tipogerador='+#39+'PEDVCAD'+#39+' AND ctareceber.cod_gerador=:CODGERADOR ');
						DMCONTA.TCtaR.ParamByName('CODGERADOR').AsString:=XCodPedido;
                       DMCONTA.TCtaR.Open;
                       If DMCONTA.TCtaR.IsEmpty
                       Then Begin//Não foi encontrado caderneta, gerar nova
               			//If LancConta(XSQLTABELA, StrToInt(XCodPedido), XTabela.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, XTabela.FieldByName('VALOR').AsCurrency, 0, XCodConta, 0{DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, -1, XHistorico, XTabela.FieldByName('COD_FORMPAG').AsInteger, 'PCAD'+XTabela.FieldByName('NUMPED').AsString, 'PC', XTabela.FieldByName('DTPEDVEN').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDVEN').AsString, XTabela.FieldByName('numfiscal').AsString)=True
                           If LancConta(XSQLTABELA, StrToInt(XCodPedido), XTabela.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, XTabela.FieldByName('VALOR').AsCurrency, 0, XCodConta, 0{DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, -1, XHistorico, XTabela.FieldByName('COD_FORMPAG').AsInteger, 'PCAD'+XTabela.FieldByName('NUMPED').AsString, 'PC', XTabela.FieldByName('DTPEDVEN').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDCOMP').AsString, XTabela.FieldByName('numfiscal').AsString)=True
                       	Then Begin
                           	ATUFINANC:=True;
                       	End
                       	Else Begin
								ATUFINANC:=False;
                       	End;
                       End
                       Else Begin//foi encontrada caderneta, editar
                           DMCONTA.TParcCR.Close;
                           DMCONTA.TParcCR.SQL.Clear;
                           DMCONTA.TParcCR.SQL.Add('SELECT * FROM PARCELACR WHERE PARCELACR.COD_CTARECEBER=:CODCTA');
                           DMCONTA.TParcCR.ParamByName('CODCTA').AsString:=DMCONTA.TCtaR.FIELDBYNAME('COD_CTARECEBER').AsString;
                           DMCONTA.TParcCR.Open;
                       	DMCONTA.TCtaR.Edit;
                           DMCONTA.TCtaR.FieldByName('VALOR').AsCurrency:=XTabela.FieldByName('VALOR').AsCurrency;
                       	DMCONTA.TCtaR.Post;
                       	DMCONTA.TParcCR.Edit;
                           DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency:=XTabela.FieldByName('VALOR').AsCurrency;
                           DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency+DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency;
       					//armazena valor por extenso
  							Try
								FMenu.Extenso.Numero:=FormatFloat('###,##0.00', DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency);
								DMCONTA.TParcCR.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;
   	 					Except
   	 					End;
                           DMCONTA.TCtaR.ApplyUpdates;
                           DMCONTA.TParcCR.ApplyUpdates;
                           DMCONTA.IBT.CommitRetaining;
                           ATUFINANC:=TRUE;
                       End;
                   End;
                   If (DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString<>'CADERNETA') AND (DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString<>'CREDITO')
                   Then Begin
               		If XSQLTABELA='PEDVENDA'
                   	Then Begin//pedido de venda. Lançamento em contas a receber
                           If CBGeraFinanceiro.Checked=False
                           Then Begin
                               //Somente gera o financeiro se o combobox acima estiver desmarcado
                               If CBPagamento.Text = 'Cartão'
                               Then Begin
                                   // se o pagamento for á vista lanca apenas uma movimentação no banco jah fexada
                                   If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA'
                                   Then Begin
                                       If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,XCodConta,'Fech. Venda por cartão:' + XNUMDOC + ' - Cli. '+XTabela.FieldByName('NOMECLI').AsString, XTabela.FieldByName('VALOR').AsCurrency, 'PEDVENDA',StrToInt(CodPedido), 'ENTRADA',StrToInt(FMenu.LCODUSUARIO.Caption), 'CARTÃO', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
                                       Then Begin  ////informa que a atualização do financeiro foi efetivada
                                           ATUFINANC:=True
                                       End
                                       Else Begin//informa que a finalização do financeiro falhou
                                           ATUFINANC:=False;
                                       End;
                                   End
                                   Else Begin
                                       XHistorico:='Fech. Ped. Venda: '+XNUMDOC;
                                       If LancConta(XSQLTABELA, StrToInt(XCodPedido), XTabela.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, XTabela.FieldByName('VALOR').AsCurrency, 0, XCodConta, 0, -1, XHistorico, XTabela.FieldByName('COD_FORMPAG').AsInteger, XNUMDOC, 'R',  XTabela.FieldByName('DTPEDVEN').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDVEN').AsString, XTabela.FieldByName('numfiscal').AsString)=True
                                       Then Begin
                                           ATUFINANC:=True;
                                       End
                                       Else Begin
                                           ATUFINANC:=False;
                                       End;
                                   End;
                               End
                               Else Begin
                                   //Samuel Fabricio Wink -  16/2/2009: verifica se forma de pagamento é doação
                                   If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='DOACAO' then
                                       begin
                                           //Samuel Fabricio Wink - 16/2/2009: gera lancamento de entrada
                                           LanCaixa(0, DateToStr(Date()), XCodConta, 'Fech Venda - '+ XNUMDOC +' - DOAÇÃO - Cli.:'+XTabela.FieldByName('NOMECLI').AsString, XTabela.FieldByName('VALOR').AsCurrency, 'PEDVENDA', StrToInt(XCodPedido), CBPagamento.Text, 'E', XNUMDOC, Date(), '1');
                                           //Samuel Fabricio Wink - 16/2/2009: gera lancamento de saida
                                           LanCaixa(0, DateToStr(Date()), XCodConta, 'Fech Venda - '+ XNUMDOC +' - DOAÇÃO - Cli:'+XTabela.FieldByName('NOMECLI').AsString, XTabela.FieldByName('VALOR').AsCurrency, 'PEDVENDA', StrToInt(XCodPedido), CBPagamento.Text, 'S', XNUMDOC, Date(), '1');
                                      		//Samuel Fabricio Wink - 16/2/2009: atualiza financeiro em todos os casos
                                           ATUFINANC:=True;
                                      end
                                   else
                                   	begin
                                         XHistorico:='Fech. Ped. Venda: '+XNUMDOC;
                                         If LancConta(XSQLTABELA, StrToInt(XCodPedido), XTabela.FieldByName('COD_CLIENTE').AsInteger, CBPagamento.Text, XTabela.FieldByName('VALOR').AsCurrency, 0, XCodConta, 0{DMFinanc.VWMoedaCota.FieldByName('COD_MOEDA').AsInteger}, -1, XHistorico, XTabela.FieldByName('COD_FORMPAG').AsInteger, XNUMDOC, 'P',  XTabela.FieldByName('DTPEDVEN').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDVEN').AsString, XTabela.FieldByName('numfiscal').AsString)=True
                                         Then Begin
                                             ATUFINANC:=True;
                                         End
                                         Else Begin
                                             ATUFINANC:=False;
                                         End;
                                       end;
                               End;
                           End
                           Else Begin
                               ATUFINANC := true;
                           End;
                   	End//Pedido de compra, lançamento em contas a pagar
               		Else Begin
                       	If XTabela.FieldByName('NUMDEV').AsString='' Then
                           	XHistorico:='Fech. Ped. Compra: '+XTabela.FieldByName('NUMPED').AsString
                           Else
								XHistorico:='Fch. Dev: '+XNUMDOC+'Venda: '+XTabela.FieldByName('NUMDEV').AsString+' - For. '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
               			If LancConta(XSQLTABELA, StrToInt(XCodPedido),XTabela.FieldByName('COD_FORNEC').AsInteger, CBPagamento.Text, XTabela.FieldByName('VALOR').AsCurrency, 0, XCodConta, -1, 0, XHistorico, XTabela.FieldByName('COD_FORMPAG').AsInteger, 'PED'+XTabela.FieldByName('NUMPED').AsString, 'P',  XTabela.FieldByName('DTPEDCOMP').AsDateTime, XVLRCOMIS, XTabela.FieldByName('DTPEDCOMP').AsString, XTabela.FieldByName('numfiscal').AsString)=True
                       	Then Begin
                           	ATUFINANC:=True;
                       	End
                       	Else Begin
								ATUFINANC:=False;
                       	End;
						End;
               	End;
               End;
         End
         Else Begin //não esncontrou forma de pagamento, processo inválido retornar informações
           ATUFINANC:=False;
         End;
       End;
       //Verifica se todas as atualizações foram possíveis
       If (AtualizaEst=True) And (ATUFINANC=True)
       Then Begin //então tenta-se confirmar operação
       	Try
           	//FECHA PEDIDO
               XTabela.Edit;
               XTabela.FieldByName('SITUACAO').AsString:='FECHADO';
               XTabela.FieldByName('COBRANCA').AsString:=CBPagamento.Text;
               XTabela.FieldByName('DTFECH').AsString:=DTFECH;
               If XSQLTABELA='PEDVENDA'
               Then Begin
               	If CBGeraFinanceiro.Checked=False Then
               		DMSAIDA.TPedV.FieldByName('FATURADO').AsString:='1'
               	Else
               		DMSAIDA.TPedV.FieldByName('FATURADO').AsString:='0';
               End;

               XTabela.Post;
               //EFETUA TRANSAÇÕES
               XTransaction.CommitRetaining;
               DMCAIXA.IBT.CommitRetaining;
               DMFINANC.Transaction.CommitRetaining;
               DMBANCO.IBT.CommitRetaining;

               Mensagem('   NOTIFICAÇÃO   ','PEDIDO FECHADO COM SUCESSO!','',1,1,FALSE,'I');
               FechaPedido:=True;

               // LOCALIZANDO A DESCRIÇÃO DA FORMA DE PAGAMENTO DO PEDIDO DE VENDA
               FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',XTabela.FieldByName('COD_FORMPAG').AsString,'');

               // a gaveta soh abre numa venda se o pagamento for À VISTA ou o pagamento for do tipo ENTRADA/30/60....
               If (DMFINANC.TFormPag.FieldByName('descricao').AsString = 'À VISTA')
               Then Begin
                   //Abre gaveta
                   ecfOpenGaveta;
               End;

               //Atualiza pedidos na tela de consulta
			   //Seleciona apenas pedidos pertencentes a loja
			   LiberaDados;
           Except
				Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar o pedido, os dados serão mantidos e o pedido aberto. Reinicie o sistema e tente novamente!', 'Ocorreram problemas ao atualizar estoque ou a gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
				DMCAIXA.IBT.RollbackRetaining;
				XTransaction.RollbackRetaining;
               DMBANCO.IBT.RollbackRetaining;
           End;
       End
       Else Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas ao fechar o pedido, os dados serão mantidos e o pedido aberto.', 'Ocorreram problemas ao atualizar estoque ou a gerar informações financeiras, por motivos de segurança serão mantidas as informações antigas. Feche e reinicie o sistema, se o problema persistir informe e peça auxílio ao suporte técnico. ', 1, 1, true, 'a');
           DMCAIXA.IBT.RollbackRetaining;
			XTransaction.RollbackRetaining;
           DMBANCO.IBT.RollbackRetaining;
       End;
   End
   Else Begin //else de filtragem de pedido
       FechaPedido:=false;
   End;
End;

procedure TFPedidoVendaConstrutora.BtnRelatorioClick(Sender: TObject);
begin
   inherited;
	PMRel.Popup(Left+PConsulta.left+Painel.left+ BtnRelatorio.Left, top+PConsulta.Top+Painel.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;

procedure TFPedidoVendaConstrutora.Comprovante1Click(Sender: TObject);
begin
	XCOMREL := false;
   FMenu.TIPOREL:='NORMAL';
   ImpPed(XView.FieldByName('COD_PEDVENDA').AsInteger);
end;

procedure TFPedidoVendaConstrutora.PedidosVenda1Click(Sender: TObject);
begin
   //Samuel Fabricio Wink - 14/2/2009: inicializa variavel
   xentsaida := false;
   xcliant := '0';
   xconaltera := true;
  	xnovo := false;
  // variaveis que armazenam o valor do pedido de venda e compra
   XVLRTOTAL := 0;
   XTOTIPI := 0;
   XVLRTOTALDESP := 0;
   XCod_PedVendaDev := DMSAIDA.WPedV.FieldByName('cod_pedvenda').AsInteger;
   If ((XView.FieldByName('SITUACAO').AsString<>'FECHADO') AND (XView.FieldByName('SITUACAO').AsString<>'CANCELADO')) OR (XView.FieldByName('FORMPAG').AsString='CADERNETA')
   Then Begin

      If XView.FieldByName('FORMPAG').AsString='CADERNETA'
      Then Begin
			//bloquea compenentes p/ procurar forma de pagamento
           EDCODFORMPAG.Enabled:=False;
           BtnProcFormPag.Enabled:=False;
      End
      Else Begin
			//libera compenentes p/ procurar forma de pagamento
           EDCODFORMPAG.Enabled:=True;
           BtnProcFormPag.Enabled:=True;
      End;

      // eh feito essa comparação antees do "inherited" pq como eh por herança, o painel de cadastro estará visivel de qualquer maneira,
      // e assim, caso o pedido de venda jah esteja sendo usado, a operação sera finalizada e o painel de cadastro nao sera exibido
      If XSQLTABELA='PEDVENDA'
      Then Begin
          // BUSCANDO DADOS DO PEDIDO
           FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XView.FieldByName('COD_PEDVENDA').AsString,'');
       End;

	   inherited;

	   If XSQLTABELA='PEDVENDA'
      Then  Begin//Procedimentos para vvendas
		   If FiltraTabela(XTabela, 'PEDVENDA', 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '')=False
          Then Begin
          		Exit;//Caso não encontrar cancelar
          End
          Else Begin
               XCodPedido := XView.FieldByName('COD_PEDVENDA').AsString;
               DBNumPed.Text := XView.FieldByName('NUMPED').AsString;
          End;
      End;

	   //cancela o botão "X" de fechar para que o usuário possa apenas gravar ou cancelar
	   BtnFecha.Visible:=False;

	   //Filtra tabela de pedido de acordo com o registro selecionado na view
	   If XSQLTABELA='PEDVENDA'
      Then Begin //Procedimentos para vvendas
			//BtnAbrePAliq.Visible:=FALSE;
			//Atribui codigo do pedido para que não haja percas
           XCodPedido := XTabela.FieldByName('COD_PEDVENDA').AsString;
           EdDataVen.Text := XTabela.FieldByName('DTPEDVEN').AsString;
           EdDescPed.Text := XTabela.FieldByName('DESCONTO').AsString;
           EdDescMoeda.Text := XTabela.FieldByName('DESCMOE').AsString;
           EdFrete.Text := XTabela.FieldByName('VLRFRETE').AsString;
           MmObs.Text := XTabela.FieldByName('OBS').AsString;
           EdFrete.ValueNumeric := XTabela.FieldByName('VLRFRETE').AsFloat;
           xcodobra := XTabela.FieldByName('COD_OBRA').AsString;

           //Samuel Fabricio Wink - 11/2/2009: FILTRA TABELA PARA BUSCAR DESCRICAO DA OBRA
           if FiltraTabela(DMSAIDA.TObra, 'obra', 'cod_obra', xcodobra, '') = true then
           	begin
                 EdCodObra.Text := DMSAIDA.TObra.FieldByName('cod_interno').AsString;
                 EdDescricaoObra.Text := DMSAIDA.TObra.FieldByName('descricao').AsString;
               end;
           //cliente
           If XTabela.FieldByName('COD_CLIENTE').AsString<>''
           Then Begin//Se foi informado um cliente cadastrado vai buscar na tabela
				SelectRegistro('VWCLIENTE', 'COD_CLIENTE', XTabela.FieldByName('COD_CLIENTE').AsString);

               // BUSCA DADOS CLIENTE
               FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE',DMMACS.TSelect.FieldByName('COD_CLIENTE').AsString,'');

				XCodPessoa := DMMACS.TSelect.FieldByName('COD_CLIENTE').AsInteger;
               //xcliant := IntToStr(XCodPessoa);
  		        EdCodCliente.Text:=DMMACS.TSELECT.FieldByName('COD_INTERNO').AsString;
       	    EdNomeCli.Text:=DMMACS.TSELECT.FieldByName('NOME').AsString;
	            EdCpfCnpj.Text:=DMMACS.TSELECT.FieldByName('CPFCNPJ').AsString;

           End
           Else Begin //se o cliente foi cadastrado na hora
       	    EdNomeCli.Text:=XTabela.FieldByName('NOMECLI').AsString;
	            EdCpfCnpj.Text:=XTabela.FieldByName('CPFCNPJ').AsString;
				//PPesCad.Visible:=True;
               //PPesCad.BringToFront;
			End;

           //vendedor
			FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', XTABELA.FieldByName('COD_VENDEDOR').AsString, '');
			XCodVendedor:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
			EdCodVend.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
			EDNOMEVENDEDOR.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      End
	   Else Begin //procedimentos para compras
			//Atribui codigo do pedido para que não haja percas
           XCodPedido:=XTabela.FieldByName('COD_PEDCOMP').AsString;

           //PPesCad.Visible:=False;
           FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', XTABELA.FieldByName('COD_FORNEC').AsString, '');
			//informa fornecedores
			XCodPessoa:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
           EdCpfCnpj.Text:=DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString;
           EdNomeCli.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
           EdCodCliente.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
	   End;
      //FORMA DE PAGAMENTO
      SelectRegistro('FORMPAG', 'COD_FORMPAG', XTabela.FieldByName('COD_FORMPAG').AsString);
	   XCodFormPag:=DMMACS.TSelect.FieldByName('COD_FORMPAG').AsInteger;
      EDCODFORMPAG.Text:=DMMACS.TSelect.FieldByName('COD_INTERNO').AsString;
      EDFORMPAG.Text:=DMMACS.TSelect.FieldByName('DESCRICAO').AsString;

//*****************************************************************************************************

	   //seleciona items do pedido
      FiltraSlave;

      //Informa outros valores
      EdValorPed.Text:=XTabela.FieldByName('VALOR').AsString;
      EdDescMoeda.Text := FormatFloat('#,##0.00',XTabela.FieldByName('DESCMOE').AsCurrency);

      FiltraTabela(DMESTOQUE.TMotoristaVeiculo, 'motoristaveiculo', 'cod_pedvenda',XView.FieldByName('cod_pedvenda').AsString, '');
      EdTara.Text := DMESTOQUE.TMotoristaVeiculo.FieldByName('TARA').AsString;
      GbData.Caption := 'Saida: ';
      EdData.Text := DMESTOQUE.TMotoristaVeiculo.FieldByName('DTENTRADA').AsString;
      EdHora.Text := DMESTOQUE.TMotoristaVeiculo.FieldByName('HRENTRADA').AsString;
      xcodmotoveic := DMESTOQUE.TMotoristaVeiculo.FieldByName('COD_MOTORISTAVEICULO').AsInteger;
      xcodequipa := DMESTOQUE.TMotoristaVeiculo.FieldByName('COD_EQUIPAMENTO').AsString;
      xcodfunci := DMESTOQUE.TMotoristaVeiculo.FieldByName('COD_FUNCIONARIO').AsString;

      FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_equipamento', xcodequipa, '');
      CbPlaca.Text := DMPESSOA.TEquip.FieldByName('PLACA').AsString;
      xcodcliente := DMPESSOA.TEquip.FieldByName('COD_CLIENTE').AsString;

      FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'cod_fornec', xcodcliente, '');
      EdCodTrans.Text := DMPESSOA.WFornecedor.FieldByName('cod_interno').AsString;
      EdNomeTrans.Text := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;

      FiltraTabela(DMPESSOA.VWFuncionario, 'vwfuncionario', 'cod_func', xcodfunci, '');
      EdCodMoto.Text := DMPESSOA.VWFuncionario.FieldByName('cod_interno').AsString;
      EdNomeMoto.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;

      PCadastro.BringToFront;
      PCadastro.Visible := true;
      PConsulta.SendToBack;
      PConsulta.Visible := false;

      BtnFechar.Visible := false;

      EdCodCliente.SetFocus;

      pesqcontainer;
   End
   Else Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não é possível Consultar/Alterar este pedido, por já se encontrar fechado!', '', 1, 1, False, 'a');
   End;

   EdCodInterno.SetFocus;

end;

procedure TFPedidoVendaConstrutora.VeculosnoPtio1Click(Sender: TObject);
begin
	//Samuel Fabricio Wink - 14/2/2009: inicializa variavel
   xcliant := '0';
   xentsaida := false;
	xcomdata := true;
   BtnSelecionarClick(Sender);
   xcontrolesaida := false;
   xcomdata := false;
   XCod_PedVendaDev := DMSAIDA.TAlx.FieldByName('cod_pedvenda').AsInteger;

   xcodobra := '';
   if FiltraTabela(DMSAIDA.TObra, 'obra', 'cod_obra', DMSAIDA.TAlx.fieldByName('COD_OBRA').AsString, '') = true then
   begin
       EdCodObra.Text := DMSAIDA.TObra.FieldByName('cod_interno').AsString;
       EdDescricaoObra.Text := DMSAIDA.TObra.FieldByName('descricao').AsString;
       xcodobra := DMSAIDA.TObra.FieldByName('cod_obra').AsString;
   end;
   EdCodInterno.SetFocus;
end;

procedure TFPedidoVendaConstrutora.PedidosdeVenda1Click(Sender: TObject);
var
xnumped : String;
begin
	inherited;
   If XSQLTABELA='PEDVENDA'
   Then Begin
      // BUSCANDO DADOS DO PEDIDO
       FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',XView.FieldByName('COD_PEDVENDA').AsString,'');

       // caso o campo estiver valendo 1 é pq o pedido de venda já esta sendo usado
       {If DMSAIDA.TPedV.FieldByName('EDIT').AsString = '1'
       Then Begin
           Mensagem('    A T E N Ç Ã O   ','O pedido de venda está sendo usado no momento.','',1,1,false,'I');
           Exit;
       End
       Else Begin
           DMSAIDA.TPedV.Edit;
           DMSAIDA.TPedV.FieldByName('EDIT').AsString := '1';
           DMSAIDA.TPedV.Post;
           DMSAIDA.IBT.CommitRetaining;
       End;  }
   End;

	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar o pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
 		If (XView.FieldByName('SITUACAO').AsString='FECHADO') OR (XView.FieldByName('SITUACAO').AsString='CANCELADO')
   	Then Begin
			Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não é possível apagar este pedido, por já se encontrar fechado!', '', 1, 1, False, 'a');
       	Exit;
   	End
   	Else Begin
   		//Filtra pedido
       	If XSQLTABELA='PEDVENDA'
       	Then Begin
				FiltraTabela(XTabela, XSqlTabela, 'COD_PEDVENDA', XView.FieldByName('COD_PEDVENDA').AsString, '');
				XCodPedido := XView.FieldByName('COD_PEDVENDA').AsString;
               xnumped := XView.FieldByName('NUMPED').AsString;

               {XTabela.Edit;
               XTabela.FieldByName('EDIT').AsString := '0';
               XTabela.Post;
               DMSAIDA.IBT.CommitRetaining;  }
       	End;

	    	//Filtra tabela de Estoque de acordo com o produto selecionada em fproduto
	    	DMEstoque.TEstoque.Close;
	    	DMEstoque.TEstoque.SQL.Clear;
	    	DMEstoque.TEstoque.SQL.Add('Select * from Estoque Where (COD_LOJA=:CODIGOLOJA) AND (COD_SUBPROD=:CODIGOSUBPROD)');
   		DMEstoque.TEstoque.ParamByName('CODIGOLOJA').AsString:=FMenu.LCODLOJA.Caption;
			DMEstoque.TEstoque.ParamByName('CODIGOSUBPROD').AsString:=DMEstoque.TSubProd.FieldByName('COD_SUBPRODUTO').AsString;
	    	DMEstoque.TEstoque.Open;

       	//Filtra registros do pedido
       	FiltraSlave;

			If Not DMESTOQUE.TSlave.IsEmpty
           Then Begin
				Mensagem('INFORMAÇÃO', 'O pedido somente poderá ser apagado após seus itens serem removidos!'+#13+'Para isso clique em consultar.', '', 1, 1, False, 'a');
				Exit;
           End;
   		Try

	       		//Apaga Pedido
	       		XTabela.Close;
	       		XTabela.SQL.Clear;
               XTabela.SQL.Add('DELETE FROM PEDVENDA WHERE PEDVENDA.COD_PEDVENDA = :CODPEDIDO');
               XTabela.ParamByName('CODPEDIDO').AsString := XCodPedido;
               XTabela.ExecSQL;

               DMESTOQUE.TAluguel.Close;
               DMESTOQUE.TAluguel.SQL.Clear;
               DMESTOQUE.TAluguel.SQL.Add('delete from aluguel where cod_pedvenda ='+ XCodPedido);
               DMESTOQUE.TAluguel.ExecSQL;


	       		If XSQLTABELA='PEDVENDA'
	       		Then  Begin
                   //Apaga Comissão referente
                   DMEstoque.Alx.Close;
                   DMEstoque.Alx.SQL.Clear;
		       		DMEstoque.Alx.SQL.Add('DELETE FROM comissao Where (comissao.cod_gerador=:CODGERADOR) AND (comissao.gerador='+#39+'PEDVENDA'+#39+')');
		       		DMEstoque.Alx.ParamByName('CODGERADOR').AsString:=XView.FieldByName('COD_PEDVENDA').AsString;
                   DMESTOQUE.Alx.ExecSQL;
	       		End;

               //REGISTRA COMANDO DO USUARIO
               Registra('PEDIDO VENDA', 'APAGAR', XView.FieldByName('DTPEDVEN').AsString, 'Nº '+XView.FieldByName('NUMPED').AsString, 'Valor: '+XView.FieldByName('VALOR').AsString);

          		//Confirma Tranzaçào
          		XTabela.Transaction.CommitRetaining;
          		DMEstoque.TransacEstoque.CommitRetaining;
               DMEstoque.TransacEstoque.CommitRetaining;
          		//atualiza view
          		LiberaDados;
			Except
          		//caso não conseguiu executar as tranzações acima retorna as informações anteriores
          		DMEstoque.TransacEstoque.RollbackRetaining
       	End;
   	End;
   {End
   Else Begin
       DMSAIDA.TPedV.Edit;
       DMSAIDA.TPedV.FieldByName('EDIT').AsString := '0';
       DMSAIDA.TPedV.Post;
       DMSAIDA.IBT.CommitRetaining;  }
   End;
end;

//apaga pedvenda q ainda nao foi terminada
procedure TFPedidoVendaConstrutora.VeculosnoPtio2Click(Sender: TObject);
begin
   XCodPedido := DMSAIDA.TAlx.FieldByName('cod_pedvenda').AsString;
   //APAGA ITEM
   DMESTOQUE.TSlave.Close;
   DMESTOQUE.TSlave.SQL.Clear;
   DMESTOQUE.TSlave.SQL.Add('delete from itenspedven');
   DMESTOQUE.TSlave.SQL.Add('where itenspedven.cod_pedven = :CODPED');
   DMESTOQUE.TSlave.ParamByName('CODPED').AsInteger:= StrToInt(XCodPedido);
   DMESTOQUE.TSlave.ExecSQL;
   DMESTOQUE.TransacEstoque.CommitRetaining;
   //apaga aluguel
   DMESTOQUE.TAluguel.Close;
   DMESTOQUE.TAluguel.SQL.Clear;
   DMESTOQUE.TAluguel.SQL.Add('delete from aluguel');
   DMESTOQUE.TAluguel.SQL.Add('where aluguel.cod_pedvenda = :CODPED');
   DMESTOQUE.TAluguel.ParamByName('CODPED').AsInteger:= StrToInt(XCodPedido);
   DMESTOQUE.TAluguel.ExecSQL;
   DMESTOQUE.TransacEstoque.CommitRetaining;
   //apaga pedido
   DMSAIDA.TPedV.Close;
   DMSAIDA.TPedV.SQL.Clear;
   DMSAIDA.TPedV.SQL.Add('delete from pedvenda');
   DMSAIDA.TPedV.SQL.Add('where pedvenda.cod_pedvenda = :CODPED');
   DMSAIDA.TPedV.ParamByName('CODPED').AsInteger:= StrToInt(XCodPedido);
   DMSAIDA.TPedV.ExecSQL;
   DMSAIDA.IBT.CommitRetaining;

   DMSAIDA.TPedV.Close;
   DMSAIDA.TPedV.SQL.Clear;
   DMSAIDA.TPedV.SQL.Add('select * from pedvenda');
   DMSAIDA.TPedV.Open;

   atualizapedido;
   atualizasaida;
end;


procedure TFPedidoVendaConstrutora.DBMotoristaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
	//guarda informacoes da grid motorita
  If Key = VK_return then
  begin
  	  EdCodMoto.Text := DMESTOQUE.Alx.fieldbyname('cod_interno').AsString;
     EdNomeMoto.Text := DMESTOQUE.Alx.fieldbyname('nome').AsString;
     DBMotorista.Visible := False;
     PCodNomeMoto.Visible := False;
   end;
   //esconde grid motorista
  if key = VK_escape then
  	begin
     DBMotorista.Visible := False;
     PCodNomeMoto.Visible := False;
   end;
end;

//pega informacoes da grid motorista
procedure TFPedidoVendaConstrutora.DBMotoristaCellClick(Column: TColumn);
begin
     EdCodMoto.Text := DMESTOQUE.Alx.fieldbyname('cod_func').AsString;
     EdNomeMoto.Text := DMESTOQUE.Alx.fieldbyname('nome').AsString;
     DBMotorista.Visible := False;
     PCodNomeMoto.Visible := False;
     EdCodCliente.SetFocus;
end;

//ao precionar f9 chama a funcao do botao saida
procedure TFPedidoVendaConstrutora.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
	if key = VK_f9 then
  		BtnSelecionarClick(Sender);
   If Key=VK_f8 then
   	BtnApagarClick(Sender);
   If Key=VK_f6 then
   	BtnConsultarClick(Sender);
   If Key=VK_f4 then
   	BtnNovoClick(Sender);
   If Key=VK_f5 then
   	BtnGravarClick(Sender);
   If Key=VK_f7 then
   	BtnCancelarClick(Sender);
   If (shift=[ssCtrl]) and (key = 73) then
   	deletamodulopessoa;

   //Samuel Fabricio Wink - 6/2/2009: libera pedvenda caso o edit tenha ficado com 1
   If (shift=[ssCtrl]) and (key = 68)
   Then Begin
       // faz o filtro na tabela para verificar se ela esta realmente bloqueada
       FiltraTabela(DMSAIDA.TPedV,'pedvenda','cod_pedvenda', XView.FieldByName('COD_PEDVENDA').AsString,'');

       // se ela nao estiver bloqueada eh exibida a msg e finalizada a operação
       {If DMSAIDA.TPedV.FieldByName('EDIT').AsString = '1'
       Then Begin
           If Mensagem('   A T E N Ç Ã O   ','Deseja desbloquear o Pedido de venda nº ' + XView.FieldByName('numped').AsString + ' ?','',2,3,false,'A')=2
           Then Begin

               // abre formulario de senha
               AbrirForm(TFSenha,FSenha,0);

               // caso tenha informado os dados do administrador correto, o pedvenda eh liberada
               If XAlxResult = true
               Then Begin
                   // liberando a ordem para consulta
                   DMSAIDA.TPedV.Edit;
                   DMSAIDA.TPedV.FieldByName('EDIT').AsString := '0';
                   DMSAIDA.TPedV.Post;
                   DMSAIDA.IBT.CommitRetaining;
               End;
           End;
       End; }
   End;
end;

//botao q sincroniza os bancos de dados
procedure TFPedidoVendaConstrutora.BtnSincronizarClick(Sender: TObject);
var
	compacta : TStrings;
begin
if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente sincronizar os Dados? ', '', 2, 3, False, 'C') = 2 then
   begin

        //Samuel Fabricio Wink - 19/1/2009: faz backup do bd antes de iniciar  sincronizacao
        xendarquivo := FormatDateTime('dd.mm.yyyyy',Date())+' - '+FormatDateTime('hh.nn.ss',Time());
        bck.BackupTitle:='Backup de '+ xendarquivo;
        compacta := TStringList.Create;
        compacta.Add('C:\MZR\DATABASE\DBMACS.GDB');

        PEndereco.BringToFront;
        PEndereco.Visible := true;
        BtProcurar.SetFocus;
        PConsulta.Enabled := false;
        EdEndereco.Text := '';
        BtDescompacta.Visible := true;
        BtDescompacta.BringToFront;

       //Samuel Fabricio Wink - 22/1/2009: exporta
       XImpExp := 'importa';
        Try
            bck.Backup(compacta , 'C:\MZR\DATABASE\BACKUP\DBMACS - '+xendarquivo+'.SFW');
        Except
            MessageDlg('Ocorreu um erro ao se efetuar o backup automático do banco de dados. Por favor, tente novamente. Caso o erro persista contate o suporte.', mtError, [mbOK], 0);
        End;

	END;
end;

//Samuel Fabricio Wink - 16/1/2009: excuta o delete do banco
procedure TFPedidoVendaConstrutora.DeletaBanco;
var
	xtabeladelete : String;
   xcont : Integer;
begin
	xcont := 1;
	while(xcont <= 39)do
   	begin
       	case xcont of
             1 : xtabeladelete := 'pedvenda';
             2 : xtabeladelete := 'movbanco';
             3 : xtabeladelete := 'itenspedven';
             4 : xtabeladelete := 'formpag';
             5 : xtabeladelete := 'estoque';
             6 : xtabeladelete := 'unidade';
             7 : xtabeladelete := 'subproduto';
             8 : xtabeladelete := 'produto';
             9 : xtabeladelete := 'grupoprod';
             10 : xtabeladelete := 'subgrupoprod';
             11 : xtabeladelete := 'cst';
             12 : xtabeladelete := 'pessoa';
             13 : xtabeladelete := 'pessoaf';
             14 : xtabeladelete := 'pessoaj';
             15 : xtabeladelete := 'cliente';
             16 : xtabeladelete := 'fornecedor';
             17 : xtabeladelete := 'funcionario';
             18 : xtabeladelete := 'usuario';
             19 : xtabeladelete := 'funcargo';
             20 : xtabeladelete := 'cargo';
             21 : xtabeladelete := 'estado';
             22 : xtabeladelete := 'cidade';
             23 : xtabeladelete := 'telefone';
             24 : xtabeladelete := 'email';
             25 : xtabeladelete := 'motoristaveiculo';
             26 : xtabeladelete := 'equipamento';
             27 : xtabeladelete := 'aluguel';
             28 : xtabeladelete := 'ctareceber';
             29 : xtabeladelete := 'parcelacr';
             30 : xtabeladelete := 'lancaixa';
             31 : xtabeladelete := 'chequerec';
             32 : xtabeladelete := 'ctacor';
             33 : xtabeladelete := 'agencia';
             34 : xtabeladelete := 'banco';
             35 : xtabeladelete := 'chequerec';
             36 : xtabeladelete := 'plncta';
             37 : xtabeladelete := 'obra';
             38 : xtabeladelete := 'caixa';
             39 : xtabeladelete := 'abcaixa';
           end;

         //deleta as informacoes da tabela q recebe as informacoes
         DMEXPORTA.Alx.Close;
         DMEXPORTA.Alx.SQL.Clear;
         DMEXPORTA.Alx.SQL.Add('delete from '+xtabeladelete);
         DMEXPORTA.Alx.ExecSQL;
         DMEXPORTA.IBTExporta.CommitRetaining;

         xcont := xcont + 1;
       end;
end;

//Samuel Fabricio Wink - 11/2/2009: insereobra
procedure TFPedidoVendaConstrutora.obra;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMSAIDA.TObra;
           xtbrecebe := DMEXPORTA.Alx5;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into obra');
           xtbrecebe.SQL.Add('(COD_OBRA, COD_INTERNO, DESCRICAO)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_OBRA, :COD_INTERNO, :DESCRICAO)');
           xtbrecebe.ParamByName('COD_OBRA').AsInteger := xtbexporta.fieldbyname('COD_OBRA').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.Alx5;
           xtbrecebe := DMSAIDA.TObra;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into obra');
                   xtbrecebe.SQL.Add('(COD_OBRA, COD_INTERNO, DESCRICAO)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_OBRA, :COD_INTERNO, :DESCRICAO)');
                   xtbrecebe.ParamByName('COD_OBRA').AsInteger := xtbexporta.fieldbyname('COD_INTERNO').AsInteger;
               end
           else
           	begin
                   xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update OBRA set');
                   xtbrecebe.SQL.Add('COD_INTERNO = :COD_INTERNO, DESCRICAO = :DESCRICAO');
                   xtbrecebe.SQL.Add('where COD_OBRA = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.fieldbyname('COD_INTERNO').AsString;
   xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.fieldbyname('DESCRICAO').AsString;
   xtbrecebe.ExecSQL;

end;

//insere pessoa
procedure TFPedidoVendaConstrutora.pessoa;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMPESSOA.TPessoa;
           xtbrecebe := DMEXPORTA.TPessoa;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into pessoa');
           xtbrecebe.SQL.Add('(COD_PESSOA, NOME, ENDERECO, BAIRRO, COD_CIDADE, CEP, CPFCNPJ, DATA_INI,');
           xtbrecebe.SQL.Add('DTNASC, COD_REGIAO, COD_NATURAL, TELREL, DIAANIVER, PROXIMIDADE, VLRCREDITO)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_PESSOA, :NOME, :ENDERECO, :BAIRRO, :COD_CIDADE, :CEP, :CPFCNPJ,');
           xtbrecebe.SQL.Add(':DATA_INI, :DTNASC, :COD_REGIAO, :COD_NATURAL, :TELREL, :DIAANIVER,');
           xtbrecebe.SQL.Add(':PROXIMIDADE, :VLRCREDITO)');
           xtbrecebe.ParamByName('COD_PESSOA').AsInteger := xtbexporta.fieldbyname('COD_PESSOA').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TPessoa;
           xtbrecebe := DMPESSOA.TPessoa;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into pessoa');
                   xtbrecebe.SQL.Add('(COD_PESSOA, NOME, ENDERECO, BAIRRO, COD_CIDADE, CEP, CPFCNPJ, DATA_INI,');
                   xtbrecebe.SQL.Add('DTNASC, COD_REGIAO, COD_NATURAL, TELREL, DIAANIVER, PROXIMIDADE, VLRCREDITO)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_PESSOA, :NOME, :ENDERECO, :BAIRRO, :COD_CIDADE, :CEP, :CPFCNPJ,');
                   xtbrecebe.SQL.Add(':DATA_INI, :DTNASC, :COD_REGIAO, :COD_NATURAL, :TELREL, :DIAANIVER,');
                   xtbrecebe.SQL.Add(':PROXIMIDADE, :VLRCREDITO)');
                   xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end
           else
           	begin
                   xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update pessoa set');
                   xtbrecebe.SQL.Add('NOME = :NOME, ENDERECO = :ENDERECO, BAIRRO = :BAIRRO, COD_CIDADE = :COD_CIDADE, CEP = :CEP, CPFCNPJ = :CPFCNPJ,');
                   xtbrecebe.SQL.Add('DATA_INI = :DATA_INI, DTNASC = :DTNASC, COD_REGIAO = :COD_REGIAO, COD_NATURAL = :COD_NATURAL, TELREL = :TELREL, DIAANIVER = :DIAANIVER,');
                   xtbrecebe.SQL.Add('PROXIMIDADE = :PROXIMIDADE, VLRCREDITO = :VLRCREDITO');
                   xtbrecebe.SQL.Add('where cod_pessoa = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('NOME').AsString := xtbexporta.fieldbyname('NOME').AsString;
   xtbrecebe.ParamByName('ENDERECO').AsString := xtbexporta.fieldbyname('ENDERECO').AsString;
   xtbrecebe.ParamByName('BAIRRO').AsString := xtbexporta.fieldbyname('BAIRRO').AsString;
   xtbrecebe.ParamByName('COD_CIDADE').AsInteger := xtbexporta.fieldbyname('COD_CIDADE').AsInteger;
   xtbrecebe.ParamByName('CEP').AsString := xtbexporta.fieldbyname('CEP').AsString;
   xtbrecebe.ParamByName('CPFCNPJ').AsString := xtbexporta.fieldbyname('CPFCNPJ').AsString;
   xtbrecebe.ParamByName('DATA_INI').AsDate := xtbexporta.fieldbyname('DATA_INI').AsDateTime;
   xtbrecebe.ParamByName('DTNASC').AsDate := xtbexporta.fieldbyname('DTNASC').AsDateTime;
   xtbrecebe.ParamByName('COD_REGIAO').AsInteger := xtbexporta.fieldbyname('COD_REGIAO').AsInteger;
   xtbrecebe.ParamByName('COD_NATURAL').AsInteger := xtbexporta.fieldbyname('COD_NATURAL').AsInteger;
   xtbrecebe.ParamByName('TELREL').AsString := xtbexporta.fieldbyname('TELREL').AsString;
   xtbrecebe.ParamByName('DIAANIVER').AsInteger := xtbexporta.fieldbyname('DIAANIVER').AsInteger;
   xtbrecebe.ParamByName('PROXIMIDADE').AsString := xtbexporta.fieldbyname('PROXIMIDADE').AsString;
   xtbrecebe.ParamByName('VLRCREDITO').AsFloat := xtbexporta.fieldbyname('VLRCREDITO').AsFloat;
   xtbrecebe.ExecSQL;
end;

//insere pessoa fisica
procedure TFPedidoVendaConstrutora.pessoaf;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMPESSOA.TPessoaF;
           xtbrecebe := DMEXPORTA.TPessoaF;

           //insere pessoa fisica
           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into pessoaf');
           xtbrecebe.SQL.Add('(COD_PESSOAF, COD_PESSOA, ESTADO_CIVIL, SEXO, EMP_TRAB, END_TRAB, BAIRRO_TRAB,');
           xtbrecebe.SQL.Add('DATA_ADMIS, CARGO, RG, DATA_EXPED, ORGAO_EXPED, TITULO, NOME_CONJ, DATANASC_CONJ,');
           xtbrecebe.SQL.Add('RG_CONJ, CPF_CONJ, EMP_CONJ, NOME_PAI, NOME_MAE, ENDE_FILIACAO)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_PESSOAF, :COD_PESSOA, :ESTADO_CIVIL, :SEXO, :EMP_TRAB, :END_TRAB,');
           xtbrecebe.SQL.Add(':BAIRRO_TRAB, :DATA_ADMIS, :CARGO, :RG, :DATA_EXPED, :ORGAO_EXPED, :TITULO,');
           xtbrecebe.SQL.Add(':NOME_CONJ, :DATANASC_CONJ, :RG_CONJ, :CPF_CONJ, :EMP_CONJ, :NOME_PAI,');
           xtbrecebe.SQL.Add(':NOME_MAE, :ENDE_FILIACAO)');
       	xtbrecebe.ParamByName('COD_PESSOAF').AsInteger := xtbexporta.fieldbyname('COD_PESSOAF').AsInteger;
   		xtbrecebe.ParamByName('COD_PESSOA').AsInteger := xtbexporta.fieldbyname('COD_PESSOA').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TPessoaF;
           xtbrecebe := DMPESSOA.TPessoaF;

           if(xforma = 'insert')then
           	begin
               	//insere pessoa fisica
                   xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into pessoaf');
                   xtbrecebe.SQL.Add('(COD_PESSOAF, COD_PESSOA, ESTADO_CIVIL, SEXO, EMP_TRAB, END_TRAB, BAIRRO_TRAB,');
                   xtbrecebe.SQL.Add('DATA_ADMIS, CARGO, RG, DATA_EXPED, ORGAO_EXPED, TITULO, NOME_CONJ, DATANASC_CONJ,');
                   xtbrecebe.SQL.Add('RG_CONJ, CPF_CONJ, EMP_CONJ, NOME_PAI, NOME_MAE, ENDE_FILIACAO)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_PESSOAF, :COD_PESSOA, :ESTADO_CIVIL, :SEXO, :EMP_TRAB, :END_TRAB,');
                   xtbrecebe.SQL.Add(':BAIRRO_TRAB, :DATA_ADMIS, :CARGO, :RG, :DATA_EXPED, :ORGAO_EXPED, :TITULO,');
                   xtbrecebe.SQL.Add(':NOME_CONJ, :DATANASC_CONJ, :RG_CONJ, :CPF_CONJ, :EMP_CONJ, :NOME_PAI,');
                   xtbrecebe.SQL.Add(':NOME_MAE, :ENDE_FILIACAO)');
                   xtbrecebe.ParamByName('COD_PESSOAF').AsInteger := StrToInt(xcodpessoafupdate);
            		xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update pessoaf set');
                   xtbrecebe.SQL.Add('ESTADO_CIVIL = :ESTADO_CIVIL, SEXO = :SEXO, EMP_TRAB = :EMP_TRAB, END_TRAB = :END_TRAB,');
                   xtbrecebe.SQL.Add('BAIRRO_TRAB = :BAIRRO_TRAB, DATA_ADMIS = :DATA_ADMIS, CARGO = :CARGO, RG = :RG, DATA_EXPED = :DATA_EXPED, ORGAO_EXPED = :ORGAO_EXPED, TITULO = :TITULO,');
                   xtbrecebe.SQL.Add('NOME_CONJ = :NOME_CONJ, DATANASC_CONJ = :DATANASC_CONJ, RG_CONJ = :RG_CONJ, CPF_CONJ = :CPF_CONJ, EMP_CONJ = :EMP_CONJ, NOME_PAI = :NOME_PAI,');
                   xtbrecebe.SQL.Add('NOME_MAE = :NOME_MAE, ENDE_FILIACAO = :ENDE_FILIACAO');
                   xtbrecebe.SQL.Add('where cod_pessoa = '+ xcodupdate);
                   //xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end;

       end;

   xtbrecebe.ParamByName('ESTADO_CIVIL').AsString := xtbexporta.fieldbyname('ESTADO_CIVIL').AsString;
   xtbrecebe.ParamByName('SEXO').AsString := xtbexporta.fieldbyname('SEXO').AsString;
   xtbrecebe.ParamByName('EMP_TRAB').AsString := xtbexporta.fieldbyname('EMP_TRAB').AsString;
   xtbrecebe.ParamByName('END_TRAB').AsString := xtbexporta.fieldbyname('END_TRAB').AsString;
   xtbrecebe.ParamByName('BAIRRO_TRAB').AsString := xtbexporta.fieldbyname('BAIRRO_TRAB').AsString;
   xtbrecebe.ParamByName('DATA_ADMIS').AsDate := xtbexporta.fieldbyname('DATA_ADMIS').AsDateTime;
   xtbrecebe.ParamByName('CARGO').AsString := xtbexporta.fieldbyname('CARGO').AsString;
   xtbrecebe.ParamByName('RG').AsString := xtbexporta.fieldbyname('RG').AsString;
   xtbrecebe.ParamByName('DATA_EXPED').AsDate := xtbexporta.fieldbyname('DATA_EXPED').AsDateTime;
   xtbrecebe.ParamByName('ORGAO_EXPED').AsString := xtbexporta.fieldbyname('ORGAO_EXPED').AsString;
   xtbrecebe.ParamByName('TITULO').AsString := xtbexporta.fieldbyname('TITULO').AsString;
   xtbrecebe.ParamByName('NOME_CONJ').AsString := xtbexporta.fieldbyname('NOME_CONJ').AsString;
   xtbrecebe.ParamByName('DATANASC_CONJ').AsDate := xtbexporta.fieldbyname('DATANASC_CONJ').AsDateTime;
   xtbrecebe.ParamByName('RG_CONJ').AsString := xtbexporta.fieldbyname('RG_CONJ').AsString;
   xtbrecebe.ParamByName('CPF_CONJ').AsString := xtbexporta.fieldbyname('CPF_CONJ').AsString;
   xtbrecebe.ParamByName('EMP_CONJ').AsString := xtbexporta.fieldbyname('EMP_CONJ').AsString;
   xtbrecebe.ParamByName('NOME_PAI').AsString := xtbexporta.fieldbyname('NOME_PAI').AsString;
   xtbrecebe.ParamByName('NOME_MAE').AsString := xtbexporta.fieldbyname('NOME_MAE').AsString;
   xtbrecebe.ParamByName('ENDE_FILIACAO').AsString := xtbexporta.fieldbyname('ENDE_FILIACAO').AsString;
   xtbrecebe.ExecSQL;
end;

//insere pessoajuridica
procedure TFPedidoVendaConstrutora.pessoaj;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMPESSOA.TPessoaJ;
           xtbrecebe := DMEXPORTA.TPessoaJ;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into pessoaJ');
           xtbrecebe.SQL.Add('(COD_PESSOAJ, COD_PESSOA, INSC_EST, RAZAO_SOCIAL, INSC_MUN, WEB_PAGE)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_PESSOAJ, :COD_PESSOA, :INSC_EST, :RAZAO_SOCIAL, :INSC_MUN, :WEB_PAGE)');
      		xtbrecebe.ParamByName('COD_PESSOAJ').AsInteger := xtbexporta.fieldbyname('COD_PESSOAJ').AsInteger;
   		xtbrecebe.ParamByName('COD_PESSOA').AsInteger := xtbexporta.fieldbyname('COD_PESSOA').AsInteger;
      end
   else
   	begin
       	xtbexporta := DMEXPORTA.TPessoaJ;
           xtbrecebe := DMPESSOA.TPessoaJ;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into pessoaJ');
                   xtbrecebe.SQL.Add('(COD_PESSOAJ, COD_PESSOA, INSC_EST, RAZAO_SOCIAL, INSC_MUN, WEB_PAGE)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_PESSOAJ, :COD_PESSOA, :INSC_EST, :RAZAO_SOCIAL, :INSC_MUN, :WEB_PAGE)');
               	xtbrecebe.ParamByName('COD_PESSOAJ').AsInteger := StrToInt(xcodpessoajupdate);
   				xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update pessoaJ set');
                   xtbrecebe.SQL.Add('COD_PESSOA = :COD_PESSOA, INSC_EST = :INSC_EST, RAZAO_SOCIAL = :RAZAO_SOCIAL, INSC_MUN = :INSC_MUN, WEB_PAGE = :WEB_PAGE');
               	xtbrecebe.SQL.Add('where COD_PESSOAJ = '+ xcodupdate);
                   xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end;
       end;

   xtbrecebe.ParamByName('INSC_EST').AsString := xtbexporta.fieldbyname('INSC_EST').AsString;
   xtbrecebe.ParamByName('RAZAO_SOCIAL').AsString := xtbexporta.fieldbyname('RAZAO_SOCIAL').AsString;
   xtbrecebe.ParamByName('INSC_MUN').AsString := xtbexporta.fieldbyname('INSC_MUN').AsString;
   xtbrecebe.ParamByName('WEB_PAGE').AsString := xtbexporta.fieldbyname('WEB_PAGE').AsString;
   xtbrecebe.ExecSQL;
end;

//insere telefone
procedure TFPedidoVendaConstrutora.telefone;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMPESSOA.TTelefone;
           xtbrecebe := DMEXPORTA.Alx5;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into telefone');
           xtbrecebe.SQL.Add('(COD_TELEFONE, COD_PESSOA, DESCRICAO, CONTATO, NUMERO)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_TELEFONE, :COD_PESSOA, :DESCRICAO, :CONTATO, :NUMERO)');
           xtbrecebe.ParamByName('COD_TELEFONE').AsInteger := xtbexporta.fieldbyname('COD_TELEFONE').AsInteger;
   		xtbrecebe.ParamByName('COD_PESSOA').AsInteger := xtbexporta.fieldbyname('COD_PESSOA').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.Alx5;
           xtbrecebe := DMPESSOA.TTelefone;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into telefone');
                   xtbrecebe.SQL.Add('(COD_TELEFONE, COD_PESSOA, DESCRICAO, CONTATO, NUMERO)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_TELEFONE, :COD_PESSOA, :DESCRICAO, :CONTATO, :NUMERO)');
                   xtbrecebe.ParamByName('COD_TELEFONE').AsInteger := StrToInt(xcodtelefoneupdate);
   				xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update telefone set');
                   xtbrecebe.SQL.Add('COD_PESSOA = :COD_PESSOA, DESCRICAO = :DESCRICAO, CONTATO = :CONTATO, NUMERO = :NUMERO');
               	xtbrecebe.SQL.Add('where cod_pessoa = '+ xcodupdate);
                   xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end;
       end;

   xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.fieldbyname('DESCRICAO').AsString;
   xtbrecebe.ParamByName('CONTATO').AsString := xtbexporta.fieldbyname('CONTATO').AsString;
   xtbrecebe.ParamByName('NUMERO').AsString := xtbexporta.fieldbyname('NUMERO').AsString;
   xtbrecebe.ExecSQL;
end;

//insere equipamento
procedure TFPedidoVendaConstrutora.equipamento;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMPESSOA.TEquip;
           xtbrecebe := DMEXPORTA.TEquip;

           //grava equipamento referente ao aluguel do pedvenda
           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into equipamento');
           xtbrecebe.SQL.Add('(COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, PLACA, NUM_FROTA)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_EQUIPAMENTO, :COD_CLIENTE, :DESCRICAO, :PLACA, :NUM_FROTA)');
       	xtbrecebe.ParamByName('COD_EQUIPAMENTO').AsInteger := xtbexporta.fieldbyname('COD_EQUIPAMENTO').AsInteger;
   		xtbrecebe.ParamByName('COD_CLIENTE').AsInteger := xtbexporta.fieldbyname('COD_CLIENTE').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TEquip;
           xtbrecebe := DMPESSOA.TEquip;

           if(xforma = 'insert')then
           	begin
               	//grava equipamento referente ao aluguel do pedvenda
                   xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into equipamento');
                   xtbrecebe.SQL.Add('(COD_EQUIPAMENTO, COD_CLIENTE, DESCRICAO, PLACA, NUM_FROTA)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_EQUIPAMENTO, :COD_CLIENTE, :DESCRICAO, :PLACA, :NUM_FROTA)');
               	xtbrecebe.ParamByName('COD_EQUIPAMENTO').AsInteger := StrToInt(xcodequipamentoupdate);
               	xtbrecebe.ParamByName('COD_CLIENTE').AsInteger := StrToInt(xcodfornecedorupdate);
               end
           else
           	begin
               	//grava equipamento referente ao aluguel do pedvenda
                   xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update equipamento set');
                   xtbrecebe.SQL.Add('COD_CLIENTE = :COD_CLIENTE, DESCRICAO = :DESCRICAO, PLACA = :PLACA, NUM_FROTA = :NUM_FROTA');
               	xtbrecebe.SQL.Add('where cod_equipamento = '+ xcodupdate);
                   if (xcodfornecedorupdate <> '') and (xcodfornecedorupdate <> '0') then
                   	xtbrecebe.ParamByName('COD_CLIENTE').AsInteger := StrToInt(xcodfornecedorupdate);
               end;
       end;
   xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.fieldbyname('DESCRICAO').AsString;
   xtbrecebe.ParamByName('PLACA').AsString := xtbexporta.fieldbyname('PLACA').AsString;
   xtbrecebe.ParamByName('NUM_FROTA').AsString := xtbexporta.fieldbyname('NUM_FROTA').AsString;
   xtbrecebe.ExecSQL;
end;

//insere funcionario
procedure TFPedidoVendaConstrutora.funcionario;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMPESSOA.TFuncionario;
           xtbrecebe := DMEXPORTA.TFuncionario;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into funcionario');
           xtbrecebe.SQL.Add('(COD_FUNC, COD_PESSOA, COD_INTERNO, DATA_CAD, DATA_ADMIS, DATA_DEMIS, NUM_CTPS,');
           xtbrecebe.SQL.Add('SER_CTPS, NUM_PIS, TERCEIRO, PALM, NUMPALM, COD_SERVICO, MARK)');
           xtbrecebe.SQL.Add('VALUES');
           xtbrecebe.SQL.Add('(:COD_FUNC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :DATA_ADMIS, :DATA_DEMIS, :NUM_CTPS,');
           xtbrecebe.SQL.Add(':SER_CTPS, :NUM_PIS, :TERCEIRO, :PALM, :NUMPALM, :COD_SERVICO, :MARK)');
       	xtbrecebe.ParamByName('COD_FUNC').AsInteger := xtbexporta.fieldbyname('COD_FUNC').AsInteger;
   		xtbrecebe.ParamByName('COD_PESSOA').AsInteger := xtbexporta.fieldbyname('COD_PESSOA').AsInteger;
       	xtbrecebe.ParamByName('COD_SERVICO').AsInteger := xtbexporta.fieldbyname('COD_SERVICO').AsInteger;
       	xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.fieldbyname('COD_INTERNO').AsString;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TFuncionario;
           xtbrecebe := DMPESSOA.TFuncionario;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into funcionario');
                   xtbrecebe.SQL.Add('(COD_FUNC, COD_PESSOA, COD_INTERNO, DATA_CAD, DATA_ADMIS, DATA_DEMIS, NUM_CTPS,');
                   xtbrecebe.SQL.Add('SER_CTPS, NUM_PIS, TERCEIRO, PALM, NUMPALM, COD_SERVICO, MARK)');
                   xtbrecebe.SQL.Add('VALUES');
                   xtbrecebe.SQL.Add('(:COD_FUNC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :DATA_ADMIS, :DATA_DEMIS, :NUM_CTPS,');
                   xtbrecebe.SQL.Add(':SER_CTPS, :NUM_PIS, :TERCEIRO, :PALM, :NUMPALM, :COD_SERVICO, :MARK)');
               	xtbrecebe.ParamByName('COD_FUNC').AsInteger := StrToInt(xcodfuncionarioupdate);
           		xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update funcionario set');
                   xtbrecebe.SQL.Add('COD_PESSOA = :COD_PESSOA, DATA_CAD = :DATA_CAD, DATA_ADMIS = :DATA_ADMIS, DATA_DEMIS = :DATA_DEMIS, NUM_CTPS = :NUM_CTPS,');
                   xtbrecebe.SQL.Add('SER_CTPS = :SER_CTPS, NUM_PIS = :NUM_PIS, TERCEIRO = :TERCEIRO, PALM = :PALM, NUMPALM = :NUMPALM, COD_SERVICO =:COD_SERVICO, MARK = :MARK');
               	xtbrecebe.SQL.Add('where cod_func = '+ xcodupdate);
                   xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end;
       end;
   if(xforma = 'insert')then
   	begin
       	if FiltraTabela(DMFiscal.TAlx, 'funcionario', 'cod_interno', xtbexporta.FieldByName('COD_INTERNO').AsString, '') = false then
   			xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.fieldbyname('COD_INTERNO').AsString
           else
           	begin
               	DMFiscal.TAlx.Close;
                   DMFiscal.TAlx.SQL.Clear;
                   DMFiscal.TAlx.SQL.Add(' select * from funcionario order by funcionario.cod_interno desc');
                   DMFiscal.TAlx.Open;
                   xtbrecebe.ParamByName('COD_INTERNO').AsString := IntToStr(StrToInt(DMFiscal.TAlx.FieldByName('cod_interno').AsString) + 1);
               end
       end;

   xtbrecebe.ParamByName('DATA_CAD').AsDate := xtbexporta.fieldbyname('DATA_CAD').AsDateTime;
   xtbrecebe.ParamByName('DATA_ADMIS').AsDate := xtbexporta.fieldbyname('DATA_ADMIS').AsDateTime;
   xtbrecebe.ParamByName('DATA_DEMIS').AsDate := xtbexporta.fieldbyname('DATA_DEMIS').AsDateTime;
   xtbrecebe.ParamByName('NUM_CTPS').AsString := xtbexporta.fieldbyname('NUM_CTPS').AsString;
   xtbrecebe.ParamByName('SER_CTPS').AsString := xtbexporta.fieldbyname('SER_CTPS').AsString;
   xtbrecebe.ParamByName('NUM_PIS').AsString := xtbexporta.fieldbyname('NUM_PIS').AsString;
   xtbrecebe.ParamByName('TERCEIRO').AsString := xtbexporta.fieldbyname('TERCEIRO').AsString;
   //xtbrecebe.ParamByName('PALM').AsString := xtbexporta.fieldbyname('PALM').AsString;
   //xtbrecebe.ParamByName('NUMPALM').AsString := xtbexporta.fieldbyname('NUMPALM').AsString;
   //xtbrecebe.ParamByName('MARK').AsString := xtbexporta.fieldbyname('MARK').AsString;
   xtbrecebe.ExecSQL;
end;

//insere itenspedvenda
procedure TFPedidoVendaConstrutora.itenspedvenda;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMSAIDA.TItemPV;
           xtbrecebe := DMEXPORTA.TItensPDV;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into itenspedven');
           xtbrecebe.SQL.Add('(COD_ITENSPEDVEN, COD_PEDVEN, COD_ESTOQUE, QTDEPROD, DESCPRO, COD_FUNCIONARIO, VALUNIT,');
           xtbrecebe.SQL.Add('VALCUSTO, VALORTOTAL, ATUEST, VALREP, COEFDIV, VALCOMP, LUCPER,');
           xtbrecebe.SQL.Add('LUCMOE, DATA, COMISSAO, OPERACAO, LUCREL, VLRVENDBD, QTDDEV,');
           xtbrecebe.SQL.Add('NUMITEM, COD_LOTE, ALIQICMS, BASEICMS, VLRICMS, BASEICMSSUBS, VLRIPI,');
           xtbrecebe.SQL.Add('ALIQIPI, REDUCBASEICMS, VLRICMSSUBS, VLRUNITDEV, QTDENTREGUE, COD_UNIDADE)');
           xtbrecebe.SQL.Add('VALUES');
           xtbrecebe.SQL.Add('(:COD_ITENSPEDVEN, :COD_PEDVEN, :COD_ESTOQUE, :QTDEPROD, :DESCPRO, :COD_FUNCIONARIO, :VALUNIT,');
           xtbrecebe.SQL.Add(':VALCUSTO, :VALORTOTAL, :ATUEST, :VALREP, :COEFDIV, :VALCOMP, :LUCPER,');
           xtbrecebe.SQL.Add(':LUCMOE, :DATA, :COMISSAO, :OPERACAO, :LUCREL, :VLRVENDBD, :QTDDEV,');
           xtbrecebe.SQL.Add(':NUMITEM, :COD_LOTE, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRIPI,');
           xtbrecebe.SQL.Add(':ALIQIPI, :REDUCBASEICMS, :VLRICMSSUBS, :VLRUNITDEV, :QTDENTREGUE, :COD_UNIDADE)');
       	xtbrecebe.ParamByName('COD_ITENSPEDVEN').AsInteger := xtbexporta.fieldbyname('COD_ITENSPEDVEN').AsInteger;
           xtbrecebe.ParamByName('COD_PEDVEN').AsInteger := xtbexporta.fieldbyname('COD_PEDVEN').AsInteger;
       	xtbrecebe.ParamByName('COD_ESTOQUE').AsInteger := xtbexporta.fieldbyname('COD_ESTOQUE').AsInteger;
       	xtbrecebe.ParamByName('COD_UNIDADE').AsInteger := xtbexporta.fieldbyname('COD_UNIDADE').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TItensPDV;
           xtbrecebe := DMSAIDA.TItemPV;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into itenspedven');
                   xtbrecebe.SQL.Add('(COD_ITENSPEDVEN, COD_PEDVEN, COD_ESTOQUE, QTDEPROD, DESCPRO, COD_FUNCIONARIO, VALUNIT,');
                   xtbrecebe.SQL.Add('VALCUSTO, VALORTOTAL, ATUEST, VALREP, COEFDIV, VALCOMP, LUCPER,');
                   xtbrecebe.SQL.Add('LUCMOE, DATA, COMISSAO, OPERACAO, LUCREL, VLRVENDBD, QTDDEV,');
                   xtbrecebe.SQL.Add('NUMITEM, COD_LOTE, ALIQICMS, BASEICMS, VLRICMS, BASEICMSSUBS, VLRIPI,');
                   xtbrecebe.SQL.Add('ALIQIPI, REDUCBASEICMS, VLRICMSSUBS, VLRUNITDEV, QTDENTREGUE, COD_UNIDADE)');
                   xtbrecebe.SQL.Add('VALUES');
                   xtbrecebe.SQL.Add('(:COD_ITENSPEDVEN, :COD_PEDVEN, :COD_ESTOQUE, :QTDEPROD, :DESCPRO, :COD_FUNCIONARIO, :VALUNIT,');
                   xtbrecebe.SQL.Add(':VALCUSTO, :VALORTOTAL, :ATUEST, :VALREP, :COEFDIV, :VALCOMP, :LUCPER,');
                   xtbrecebe.SQL.Add(':LUCMOE, :DATA, :COMISSAO, :OPERACAO, :LUCREL, :VLRVENDBD, :QTDDEV,');
                   xtbrecebe.SQL.Add(':NUMITEM, :COD_LOTE, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRIPI,');
                   xtbrecebe.SQL.Add(':ALIQIPI, :REDUCBASEICMS, :VLRICMSSUBS, :VLRUNITDEV, :QTDENTREGUE, :COD_UNIDADE)');
                   xtbrecebe.ParamByName('COD_ITENSPEDVEN').AsInteger := StrToInt(xcoditenspedvendaupdate);
               	xtbrecebe.ParamByName('COD_PEDVEN').AsInteger := StrToInt(xcodpedvendaupdate);
               	xtbrecebe.ParamByName('COD_ESTOQUE').AsInteger := StrToInt(xcodestoqueupdate);
               	//xtbrecebe.ParamByName('COD_UNIDADE').AsInteger := StrToInt(xcodunidadeupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update itenspedven set');
                   xtbrecebe.SQL.Add('COD_PEDVEN = :COD_PEDVEN, COD_ESTOQUE = :COD_ESTOQUE, QTDEPROD = :QTDEPROD, DESCPRO = :DESCPRO, COD_FUNCIONARIO = :COD_FUNCIONARIO, VALUNIT = :VALUNIT,');
                   xtbrecebe.SQL.Add('VALCUSTO = :VALCUSTO, VALORTOTAL = :VALORTOTAL, ATUEST = :ATUEST, VALREP = :VALREP, COEFDIV = :COEFDIV, VALCOMP = :VALCOMP, LUCPER = :LUCPER,');
                   xtbrecebe.SQL.Add('LUCMOE = :LUCMOE, DATA = :DATA, COMISSAO = :COMISSAO, OPERACAO = :OPERACAO, LUCREL = :LUCREL, VLRVENDBD = :VLRVENDBD, QTDDEV = :QTDDEV,');
                   xtbrecebe.SQL.Add('NUMITEM = :NUMITEM, COD_LOTE = :COD_LOTE, ALIQICMS = :ALIQICMS, BASEICMS = :BASEICMS, VLRICMS = :VLRICMS, BASEICMSSUBS = :BASEICMSSUBS, VLRIPI = :VLRIPI,');
                   xtbrecebe.SQL.Add('ALIQIPI = :ALIQIPI, REDUCBASEICMS = :REDUCBASEICMS, VLRICMSSUBS = :VLRICMSSUBS, VLRUNITDEV = :VLRUNITDEV, QTDENTREGUE = :QTDENTREGUE, COD_UNIDADE = :COD_UNIDADE');
               	xtbrecebe.SQL.Add('where cod_itenspedven = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('QTDEPROD').AsFloat := xtbexporta.fieldbyname('QTDEPROD').AsFloat;
   xtbrecebe.ParamByName('DESCPRO').AsFloat := xtbexporta.fieldbyname('DESCPRO').AsFloat;
   //xtbrecebe.ParamByName('COD_FUNCIONARIO').AsInteger := xtbexporta.fieldbyname('COD_FUNCIONARIO').AsInteger;
   xtbrecebe.ParamByName('VALUNIT').AsFloat := xtbexporta.fieldbyname('VALUNIT').AsFloat;
   xtbrecebe.ParamByName('VALCUSTO').AsFloat := xtbexporta.fieldbyname('VALCUSTO').AsFloat;
   xtbrecebe.ParamByName('VALORTOTAL').AsFloat := xtbexporta.fieldbyname('VALORTOTAL').AsFloat;
   xtbrecebe.ParamByName('ATUEST').AsString := xtbexporta.fieldbyname('ATUEST').AsString;
   xtbrecebe.ParamByName('VALREP').AsFloat := xtbexporta.fieldbyname('VALREP').AsFloat;
   xtbrecebe.ParamByName('COEFDIV').AsFloat := xtbexporta.fieldbyname('COEFDIV').AsFloat;
   xtbrecebe.ParamByName('VALCOMP').AsFloat := xtbexporta.fieldbyname('VALCOMP').AsFloat;
   xtbrecebe.ParamByName('LUCPER').AsFloat := xtbexporta.fieldbyname('LUCPER').AsFloat;
   xtbrecebe.ParamByName('LUCMOE').AsFloat := xtbexporta.fieldbyname('LUCMOE').AsFloat;
   xtbrecebe.ParamByName('DATA').AsDate := xtbexporta.fieldbyname('DATA').AsDateTime;
   xtbrecebe.ParamByName('COMISSAO').AsFloat := xtbexporta.fieldbyname('COMISSAO').AsFloat;
   xtbrecebe.ParamByName('OPERACAO').AsString := xtbexporta.fieldbyname('OPERACAO').AsString;
   xtbrecebe.ParamByName('LUCREL').AsFloat := xtbexporta.fieldbyname('LUCREL').AsFloat;
   xtbrecebe.ParamByName('VLRVENDBD').AsFloat := xtbexporta.fieldbyname('VLRVENDBD').AsFloat;
   xtbrecebe.ParamByName('QTDDEV').AsFloat := xtbexporta.fieldbyname('QTDDEV').AsFloat;
   xtbrecebe.ParamByName('NUMITEM').AsInteger := xtbexporta.fieldbyname('NUMITEM').AsInteger;
   xtbrecebe.ParamByName('COD_LOTE').AsInteger := xtbexporta.fieldbyname('COD_LOTE').AsInteger;
   xtbrecebe.ParamByName('ALIQICMS').AsFloat := xtbexporta.fieldbyname('ALIQICMS').AsFloat;
   xtbrecebe.ParamByName('BASEICMS').AsFloat := xtbexporta.fieldbyname('BASEICMS').AsFloat;
   xtbrecebe.ParamByName('VLRICMS').AsFloat := xtbexporta.fieldbyname('VLRICMS').AsFloat;
   xtbrecebe.ParamByName('BASEICMSSUBS').AsFloat := xtbexporta.fieldbyname('BASEICMSSUBS').AsFloat;
   xtbrecebe.ParamByName('VLRIPI').AsFloat := xtbexporta.fieldbyname('VLRIPI').AsFloat;
   xtbrecebe.ParamByName('ALIQIPI').AsFloat := xtbexporta.fieldbyname('ALIQIPI').AsFloat;
   xtbrecebe.ParamByName('REDUCBASEICMS').AsFloat := xtbexporta.fieldbyname('REDUCBASEICMS').AsFloat;
   xtbrecebe.ParamByName('VLRICMSSUBS').AsFloat := xtbexporta.fieldbyname('VLRICMSSUBS').AsFloat;
   xtbrecebe.ParamByName('VLRUNITDEV').AsFloat := xtbexporta.fieldbyname('VLRUNITDEV').AsFloat;
   xtbrecebe.ParamByName('QTDENTREGUE').AsFloat := xtbexporta.fieldbyname('QTDENTREGUE').AsFloat;
	xtbrecebe.ExecSQL;
end;

//insere email
procedure TFPedidoVendaConstrutora.email;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMPESSOA.TEmail;
           xtbrecebe := DMEXPORTA.Alx5;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into email');
           xtbrecebe.SQL.Add('(COD_EMAIL, COD_PESSOA, DESCRICAO, EMAIL)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_EMAIL, :COD_PESSOA, :DESCRICAO, :EMAIL)');
           xtbrecebe.ParamByName('COD_EMAIL').AsInteger := xtbexporta.fieldbyname('COD_EMAIL').AsInteger;
   		xtbrecebe.ParamByName('COD_PESSOA').AsInteger := xtbexporta.fieldbyname('COD_PESSOA').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.Alx5;
           xtbrecebe := DMPESSOA.TEmail;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into email');
                   xtbrecebe.SQL.Add('(COD_EMAIL, COD_PESSOA, DESCRICAO, EMAIL)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_EMAIL, :COD_PESSOA, :DESCRICAO, :EMAIL)');
                   xtbrecebe.ParamByName('COD_EMAIL').AsInteger := StrToInt(xcodemailupdate);
   				xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update email set');
                   xtbrecebe.SQL.Add('COD_PESSOA = :COD_PESSOA, DESCRICAO = :DESCRICAO, EMAIL = :EMAIL');
               	xtbrecebe.SQL.Add('where cod_pessoa = '+ xcodupdate);
                   xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end;
       end;

   xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.fieldbyname('DESCRICAO').AsString;
   xtbrecebe.ParamByName('EMAIL').AsString := xtbexporta.fieldbyname('EMAIL').AsString;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 15/1/2009: insere cliente
procedure TFPedidoVendaConstrutora.cliente;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMPESSOA.TCliente;
           xtbrecebe := DMEXPORTA.TCliente;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into cliente');
           xtbrecebe.SQL.Add('(COD_CLIENTE, COD_PESSOA, COD_INTERNO, DATA_CAD, R_SAL_CONJ, R_SALARIO,');
           xtbrecebe.SQL.Add('R_HON_PROF, R_OUTREC, D_ALUGUEL, D_RESIDENCIA, D_VEICULO, D_FAMILIAR,');
           xtbrecebe.SQL.Add('D_OUTDESP, LIM_CRED, QTDTEMPORESID, BENS, COD_VENDEDOR, INFOCOM, ENDENTRAGA,');
           xtbrecebe.SQL.Add('ATUALIZAR, COD_USUARIO, ATIVO, CREDENCIAL, RAMOATIV, ATACADISTA, COD_FORMPAG,');
           xtbrecebe.SQL.Add('EXPORT, SEPARAR, MULTA, JURO, OBS, SCPC, TAMANHO, INFORMACAO, DIAVENCIMENTO)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_CLIENTE, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :R_SAL_CONJ, :R_SALARIO,');
           xtbrecebe.SQL.Add(':R_HON_PROF, :R_OUTREC, :D_ALUGUEL, :D_RESIDENCIA, :D_VEICULO, :D_FAMILIAR,');
           xtbrecebe.SQL.Add(':D_OUTDESP, :LIM_CRED, :QTDTEMPORESID, :BENS, :COD_VENDEDOR, :INFOCOM,');
           xtbrecebe.SQL.Add(':ENDENTRAGA, :ATUALIZAR, :COD_USUARIO, :ATIVO, :CREDENCIAL, :RAMOATIV,');
           xtbrecebe.SQL.Add(':ATACADISTA, :COD_FORMPAG, :EXPORT, :SEPARAR, :MULTA, :JURO, :OBS, :SCPC,');
           xtbrecebe.SQL.Add(':TAMANHO, :INFORMACAO, :DIAVENCIMENTO)');
           xtbrecebe.ParamByName('COD_CLIENTE').AsInteger := xtbexporta.fieldbyname('COD_CLIENTE').AsInteger;
           xtbrecebe.ParamByName('COD_PESSOA').AsInteger := xtbexporta.fieldbyname('COD_PESSOA').AsInteger;
       	xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.fieldbyname('COD_INTERNO').AsString;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TCliente;
           xtbrecebe := DMPESSOA.TCliente;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into cliente');
                   xtbrecebe.SQL.Add('(COD_CLIENTE, COD_PESSOA, COD_INTERNO, DATA_CAD, R_SAL_CONJ, R_SALARIO,');
                   xtbrecebe.SQL.Add('R_HON_PROF, R_OUTREC, D_ALUGUEL, D_RESIDENCIA, D_VEICULO, D_FAMILIAR,');
                   xtbrecebe.SQL.Add('D_OUTDESP, LIM_CRED, QTDTEMPORESID, BENS, COD_VENDEDOR, INFOCOM, ENDENTRAGA,');
                   xtbrecebe.SQL.Add('ATUALIZAR, COD_USUARIO, ATIVO, CREDENCIAL, RAMOATIV, ATACADISTA, COD_FORMPAG,');
                   xtbrecebe.SQL.Add('EXPORT, SEPARAR, MULTA, JURO, OBS, SCPC, TAMANHO, INFORMACAO, DIAVENCIMENTO)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_CLIENTE, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :R_SAL_CONJ, :R_SALARIO,');
                   xtbrecebe.SQL.Add(':R_HON_PROF, :R_OUTREC, :D_ALUGUEL, :D_RESIDENCIA, :D_VEICULO, :D_FAMILIAR,');
                   xtbrecebe.SQL.Add(':D_OUTDESP, :LIM_CRED, :QTDTEMPORESID, :BENS, :COD_VENDEDOR, :INFOCOM,');
                   xtbrecebe.SQL.Add(':ENDENTRAGA, :ATUALIZAR, :COD_USUARIO, :ATIVO, :CREDENCIAL, :RAMOATIV,');
                   xtbrecebe.SQL.Add(':ATACADISTA, :COD_FORMPAG, :EXPORT, :SEPARAR, :MULTA, :JURO, :OBS, :SCPC,');
                   xtbrecebe.SQL.Add(':TAMANHO, :INFORMACAO, :DIAVENCIMENTO)');
                   xtbrecebe.ParamByName('COD_CLIENTE').AsInteger := StrToInt(xcodclienteupdate);
                   xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update cliente set');
                   xtbrecebe.SQL.Add('COD_PESSOA = :COD_PESSOA, DATA_CAD = :DATA_CAD, R_SAL_CONJ = :R_SAL_CONJ, R_SALARIO = :R_SALARIO,');
                   xtbrecebe.SQL.Add('R_HON_PROF = :R_HON_PROF, R_OUTREC = :R_OUTREC, D_ALUGUEL = :D_ALUGUEL, D_RESIDENCIA = :D_RESIDENCIA, D_VEICULO = :D_VEICULO, D_FAMILIAR = :D_FAMILIAR,');
                   xtbrecebe.SQL.Add('D_OUTDESP = :D_OUTDESP, LIM_CRED = :LIM_CRED, QTDTEMPORESID = :QTDTEMPORESID, BENS = :BENS, COD_VENDEDOR = :COD_VENDEDOR, INFOCOM = :INFOCOM,');
                   xtbrecebe.SQL.Add('ENDENTRAGA = :ENDENTRAGA, ATUALIZAR = :ATUALIZAR, COD_USUARIO = :COD_USUARIO, ATIVO = :ATIVO, CREDENCIAL = :CREDENCIAL, RAMOATIV = :RAMOATIV,');
                   xtbrecebe.SQL.Add('ATACADISTA = :ATACADISTA, COD_FORMPAG = :COD_FORMPAG, EXPORT = :EXPORT, SEPARAR = :SEPARAR, MULTA = :MULTA, JURO = :JURO, OBS = :OBS, SCPC = :SCPC,');
                   xtbrecebe.SQL.Add('TAMANHO = :TAMANHO, INFORMACAO = :INFORMACAO, DIAVENCIMENTO = :DIAVENCIMENTO');
               	xtbrecebe.SQL.Add('where cod_cliente = '+ xcodupdate);
                   xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end;
       end;
   if(xforma = 'insert')then
   	begin
       	if FiltraTabela(DMFiscal.TAlx, 'cliente', 'cod_interno', xtbexporta.FieldByName('COD_INTERNO').AsString, '') = false then
   			xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.fieldbyname('COD_INTERNO').AsString
           else
           	begin
               	DMFiscal.TAlx.Close;
                   DMFiscal.TAlx.SQL.Clear;
                   DMFiscal.TAlx.SQL.Add(' select * from cliente order by cliente.cod_interno desc');
                   DMFiscal.TAlx.Open;
                   xtbrecebe.ParamByName('COD_INTERNO').AsString := IntToStr(StrToInt(DMFiscal.TAlx.FieldByName('cod_interno').AsString) + 1);
               end
       end;
   xtbrecebe.ParamByName('DATA_CAD').AsDate := xtbexporta.fieldbyname('DATA_CAD').AsDateTime;
   xtbrecebe.ParamByName('R_SAL_CONJ').AsFloat := xtbexporta.fieldbyname('R_SAL_CONJ').AsFloat;
   xtbrecebe.ParamByName('R_SALARIO').AsFloat := xtbexporta.fieldbyname('R_SALARIO').AsFloat;
   xtbrecebe.ParamByName('R_HON_PROF').AsFloat := xtbexporta.fieldbyname('R_HON_PROF').AsFloat;
   xtbrecebe.ParamByName('R_OUTREC').AsFloat := xtbexporta.fieldbyname('R_OUTREC').AsFloat;
   xtbrecebe.ParamByName('D_ALUGUEL').AsFloat := xtbexporta.fieldbyname('D_ALUGUEL').AsFloat;
   xtbrecebe.ParamByName('D_RESIDENCIA').AsFloat := xtbexporta.fieldbyname('D_RESIDENCIA').AsFloat;
   xtbrecebe.ParamByName('D_VEICULO').AsFloat := xtbexporta.fieldbyname('D_VEICULO').AsFloat;
   xtbrecebe.ParamByName('D_FAMILIAR').AsFloat := xtbexporta.fieldbyname('D_FAMILIAR').AsFloat;
   xtbrecebe.ParamByName('D_OUTDESP').AsFloat := xtbexporta.fieldbyname('D_OUTDESP').AsFloat;
   xtbrecebe.ParamByName('LIM_CRED').AsFloat := xtbexporta.fieldbyname('LIM_CRED').AsFloat;
   xtbrecebe.ParamByName('QTDTEMPORESID').AsString := xtbexporta.fieldbyname('QTDTEMPORESID').AsString;
   xtbrecebe.ParamByName('BENS').AsString := xtbexporta.fieldbyname('BENS').AsString;
   xtbrecebe.ParamByName('COD_VENDEDOR').AsInteger := xtbexporta.fieldbyname('COD_VENDEDOR').AsInteger;
   xtbrecebe.ParamByName('INFOCOM').AsString := xtbexporta.fieldbyname('INFOCOM').AsString;
   xtbrecebe.ParamByName('ENDENTRAGA').AsString := xtbexporta.fieldbyname('ENDENTRAGA').AsString;
   xtbrecebe.ParamByName('ATUALIZAR').AsString := xtbexporta.fieldbyname('ATUALIZAR').AsString;
   xtbrecebe.ParamByName('COD_USUARIO').AsInteger := xtbexporta.fieldbyname('COD_USUARIO').AsInteger;
   xtbrecebe.ParamByName('ATIVO').AsString := xtbexporta.fieldbyname('ATIVO').AsString;
   xtbrecebe.ParamByName('CREDENCIAL').AsString := xtbexporta.fieldbyname('CREDENCIAL').AsString;
   xtbrecebe.ParamByName('RAMOATIV').AsString := xtbexporta.fieldbyname('RAMOATIV').AsString;
   xtbrecebe.ParamByName('ATACADISTA').AsString := xtbexporta.fieldbyname('ATACADISTA').AsString;
   xtbrecebe.ParamByName('COD_FORMPAG').AsInteger := xtbexporta.fieldbyname('COD_FORMPAG').AsInteger;
   xtbrecebe.ParamByName('EXPORT').AsString := '1';
   xtbrecebe.ParamByName('SEPARAR').AsString := '0';
   xtbrecebe.ParamByName('MULTA').AsFloat := xtbexporta.fieldbyname('MULTA').AsFloat;
   xtbrecebe.ParamByName('JURO').AsFloat := xtbexporta.fieldbyname('JURO').AsFloat;
   xtbrecebe.ParamByName('OBS').AsString := xtbexporta.fieldbyname('OBS').AsString;
   xtbrecebe.ParamByName('SCPC').AsString := xtbexporta.fieldbyname('SCPC').AsString;
   xtbrecebe.ParamByName('TAMANHO').AsFloat := xtbexporta.fieldbyname('TAMANHO').AsFloat;
   xtbrecebe.ParamByName('INFORMACAO').AsString := xtbexporta.fieldbyname('INFORMACAO').AsString;
   xtbrecebe.ParamByName('DIAVENCIMENTO').AsInteger := xtbexporta.fieldbyname('DIAVENCIMENTO').AsInteger;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 15/1/2009: insere aluguel
procedure TFPedidoVendaConstrutora.aluguel;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMESTOQUE.TAluguel;
           xtbrecebe := DMEXPORTA.Alx5;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into aluguel');
           xtbrecebe.SQL.Add('(COD_ALUGUEL, COD_EQUIPAMENTO, COD_PEDVENDA, DTSAIDA, TEMPOALUGUEL, DTDEVOLUCAO, VALOR, STATUS, EXPORTA)');
           xtbrecebe.SQL.Add('VALUES');
           xtbrecebe.SQL.Add('(:COD_ALUGUEL, :COD_EQUIPAMENTO, :COD_PEDVENDA, :DTSAIDA, :TEMPOALUGUEL, :DTDEVOLUCAO, :VALOR, :STATUS, :EXPORTA)');
       	xtbrecebe.ParamByName('COD_ALUGUEL').AsInteger := xtbexporta.fieldbyname('COD_ALUGUEL').AsInteger;
           xtbrecebe.ParamByName('COD_EQUIPAMENTO').AsInteger := xtbexporta.fieldbyname('COD_EQUIPAMENTO').AsInteger;
           xtbrecebe.ParamByName('COD_PEDVENDA').AsInteger := xtbexporta.fieldbyname('COD_PEDVENDA').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.Alx5;
           xtbrecebe := DMESTOQUE.TAluguel;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into aluguel');
                   xtbrecebe.SQL.Add('(COD_ALUGUEL, COD_EQUIPAMENTO, COD_PEDVENDA, DTSAIDA, TEMPOALUGUEL, DTDEVOLUCAO, VALOR, STATUS, EXPORTA)');
                   xtbrecebe.SQL.Add('VALUES');
                   xtbrecebe.SQL.Add('(:COD_ALUGUEL, :COD_EQUIPAMENTO, :COD_PEDVENDA, :DTSAIDA, :TEMPOALUGUEL, :DTDEVOLUCAO, :VALOR, :STATUS, :EXPORTA)');
               	xtbrecebe.ParamByName('COD_ALUGUEL').AsInteger := StrToInt(xcodaluguelupdate);
                   xtbrecebe.ParamByName('COD_EQUIPAMENTO').AsInteger := StrToInt(xcodequipamentoupdate);
                   xtbrecebe.ParamByName('COD_PEDVENDA').AsInteger := StrToInt(xcodpedvendaupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update aluguel set');
                   xtbrecebe.SQL.Add('COD_EQUIPAMENTO = :COD_EQUIPAMENTO, COD_PEDVENDA = :COD_PEDVENDA, DTSAIDA = :DTSAIDA, TEMPOALUGUEL = :TEMPOALUGUEL, DTDEVOLUCAO = :DTDEVOLUCAO, VALOR = :VALOR, STATUS = :STATUS, EXPORTA = :EXPORTA');
               	xtbrecebe.SQL.Add('where cod_aluguel = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('DTSAIDA').AsDate := xtbexporta.fieldbyname('DTSAIDA').AsDateTime	;
   xtbrecebe.ParamByName('TEMPOALUGUEL').AsInteger := xtbexporta.fieldbyname('TEMPOALUGUEL').AsInteger;
   xtbrecebe.ParamByName('DTDEVOLUCAO').AsDate := xtbexporta.fieldbyname('DTDEVOLUCAO').AsDateTime;
   xtbrecebe.ParamByName('VALOR').AsFloat := xtbexporta.fieldbyname('VALOR').AsFloat;
   xtbrecebe.ParamByName('STATUS').AsString := xtbexporta.fieldbyname('STATUS').AsString;
   xtbrecebe.ParamByName('EXPORTA').AsInteger := xtbexporta.fieldbyname('EXPORTA').AsInteger;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 16/1/2009: insere lancamento de caixa
procedure TFPedidoVendaConstrutora.lancamentocaixa;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMCAIXA.TLanCaixa;
           xtbrecebe := DMEXPORTA.TLanCaixa;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into lancaixa');
           xtbrecebe.SQL.Add('(COD_LANC, COD_ABCAIXA, DTLANC, COD_PLNCTAFIL, HISTORICO,');
           xtbrecebe.SQL.Add('COD_COTAMOEDA, TIPOGERADOR, COD_GERADOR, VALOR, TIPO,');
           xtbrecebe.SQL.Add('TIPCAI, COD_USUARIO, DOC, DTREFER, ESTRU, EXPORTA)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_LANC, :COD_ABCAIXA, :DTLANC, :COD_PLNCTAFIL, :HISTORICO,');
           xtbrecebe.SQL.Add(':COD_COTAMOEDA, :TIPOGERADOR, :COD_GERADOR, :VALOR, :TIPO,');
           xtbrecebe.SQL.Add(':TIPCAI, :COD_USUARIO, :DOC, :DTREFER, :ESTRU, :EXPORTA)');
           xtbrecebe.ParamByName('COD_LANC').AsInteger := xtbexporta.FieldByName('COD_LANC').AsInteger;
           xtbrecebe.ParamByName('COD_GERADOR').AsInteger := xtbexporta.FieldByName('COD_GERADOR').AsInteger;
       	xtbrecebe.ParamByName('COD_USUARIO').AsInteger := xtbexporta.FieldByName('COD_USUARIO').AsInteger;
           xtbrecebe.ParamByName('COD_ABCAIXA').AsInteger := xtbexporta.FieldByName('COD_ABCAIXA').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TLanCaixa;
           xtbrecebe := DMCAIXA.TLanCaixa;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into lancaixa');
                   xtbrecebe.SQL.Add('(COD_LANC, COD_ABCAIXA, DTLANC, COD_PLNCTAFIL, HISTORICO,');
                   xtbrecebe.SQL.Add('COD_COTAMOEDA, TIPOGERADOR, COD_GERADOR, VALOR, TIPO,');
                   xtbrecebe.SQL.Add('TIPCAI, COD_USUARIO, DOC, DTREFER, ESTRU, EXPORTA)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_LANC, :COD_ABCAIXA, :DTLANC, :COD_PLNCTAFIL, :HISTORICO,');
                   xtbrecebe.SQL.Add(':COD_COTAMOEDA, :TIPOGERADOR, :COD_GERADOR, :VALOR, :TIPO,');
                   xtbrecebe.SQL.Add(':TIPCAI, :COD_USUARIO, :DOC, :DTREFER, :ESTRU, :EXPORTA)');
                   xtbrecebe.ParamByName('COD_LANC').AsInteger := StrToInt(xcodlancaixaupdate);

                   if xcodgeradorupdate <> '' then
                   	xtbrecebe.ParamByName('COD_GERADOR').AsInteger := StrToInt(xcodgeradorupdate);

               	xtbrecebe.ParamByName('COD_USUARIO').AsInteger := StrToInt(xcodusuarioupdate);
                   xtbrecebe.ParamByName('COD_ABCAIXA').AsInteger := StrToInt(xcodabcaixaupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update lancaixa set');
                   xtbrecebe.SQL.Add('COD_ABCAIXA = :COD_ABCAIXA, DTLANC = :DTLANC, COD_PLNCTAFIL = :COD_PLNCTAFIL, HISTORICO = :HISTORICO,');
                   xtbrecebe.SQL.Add('COD_COTAMOEDA = :COD_COTAMOEDA, TIPOGERADOR = :TIPOGERADOR, COD_GERADOR = :COD_GERADOR, VALOR = :VALOR, TIPO = :TIPO,');
                   xtbrecebe.SQL.Add('TIPCAI = :TIPCAI, COD_USUARIO = :COD_USUARIO, DOC = :DOC, DTREFER = :DTREFER, ESTRU = :ESTRU, EXPORTA = :EXPORTA');
               	xtbrecebe.SQL.Add('where cod_lanc = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('DTLANC').AsDate := xtbexporta.FieldByName('DTLANC').AsDateTime;
   xtbrecebe.ParamByName('COD_PLNCTAFIL').AsInteger := xtbexporta.FieldByName('COD_PLNCTAFIL').AsInteger;
   xtbrecebe.ParamByName('HISTORICO').AsString := xtbexporta.FieldByName('HISTORICO').AsString;
   xtbrecebe.ParamByName('COD_COTAMOEDA').AsInteger := xtbexporta.FieldByName('COD_COTAMOEDA').AsInteger;

   if xtbexporta.FieldByName('TIPOGERADOR').AsString <> '' then
   	xtbrecebe.ParamByName('TIPOGERADOR').AsString := xtbexporta.FieldByName('TIPOGERADOR').AsString;

   xtbrecebe.ParamByName('VALOR').AsFloat :=xtbexporta.FieldByName('VALOR').AsFloat;
   xtbrecebe.ParamByName('TIPO').AsString := xtbexporta.FieldByName('TIPO').AsString;
   xtbrecebe.ParamByName('TIPCAI').AsString := xtbexporta.FieldByName('TIPCAI').AsString;
   xtbrecebe.ParamByName('DOC').AsString := xtbexporta.FieldByName('DOC').AsString;
   xtbrecebe.ParamByName('DTREFER').AsDate := xtbexporta.FieldByName('DTREFER').AsDateTime;
   xtbrecebe.ParamByName('ESTRU').AsString := xtbexporta.FieldByName('ESTRU').AsString;
   xtbrecebe.ParamByName('EXPORTA').AsInteger := 1;
   xtbrecebe.ExecSQL;

   if(XImpExp = 'exporta')then
   	begin
       	DMCAIXA.TLanCaixa.Edit;
           DMCAIXA.TLanCaixa.FieldByName('exporta').AsInteger := 1;
           DMCAIXA.TLanCaixa.Post;
       end;
end;

//Samuel Fabricio Wink - 16/1/2009: insere parcela contas a receber
procedure TFPedidoVendaConstrutora.parcelacr;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMCONTA.TParcCR;
           xtbrecebe := DMEXPORTA.TParcCr;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into parcelacr');
           xtbrecebe.SQL.Add('(COD_PARCELACR, COD_CTARECEBER, NUMPARC, DTDEBITO, COD_PARANT,');
           xtbrecebe.SQL.Add('DESCONTO, JUROS, MULTA, VALOR, VALORPG, FECH, COBRANCA, DTVENC,');
           xtbrecebe.SQL.Add('COD_COTA, HISTORICO, VALEXT, VALORSERV, VALORPROD, MARK, IMP, NUMBOLETO,');
           xtbrecebe.SQL.Add('NUMFISC, COD_CTACOR, REMESSA, DTREF, PERVLRSERV, APLICJUR, NOSSONUMBLT,');
           xtbrecebe.SQL.Add('SCPC, TIPOBLT, TEXTOBLT, EXPORTA)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_PARCELACR, :COD_CTARECEBER, :NUMPARC, :DTDEBITO, :COD_PARANT,');
           xtbrecebe.SQL.Add(':DESCONTO, :JUROS, :MULTA, :VALOR, :VALORPG, :FECH, :COBRANCA, :DTVENC,');
           xtbrecebe.SQL.Add(':COD_COTA, :HISTORICO, :VALEXT, :VALORSERV, :VALORPROD, :MARK, :IMP, :NUMBOLETO,');
           xtbrecebe.SQL.Add(':NUMFISC, :COD_CTACOR, :REMESSA, :DTREF, :PERVLRSERV, :APLICJUR, :NOSSONUMBLT,');
           xtbrecebe.SQL.Add(':SCPC, :TIPOBLT, :TEXTOBLT, :EXPORTA)');
           xtbrecebe.ParamByName('COD_PARCELACR').AsInteger := xtbexporta.FieldByName('COD_PARCELACR').AsInteger;
   		xtbrecebe.ParamByName('COD_CTARECEBER').AsInteger := xtbexporta.FieldByName('COD_CTARECEBER').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TParcCr;
           xtbrecebe := DMCONTA.TParcCR;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into parcelacr');
                   xtbrecebe.SQL.Add('(COD_PARCELACR, COD_CTARECEBER, NUMPARC, DTDEBITO, COD_PARANT,');
                   xtbrecebe.SQL.Add('DESCONTO, JUROS, MULTA, VALOR, VALORPG, FECH, COBRANCA, DTVENC,');
                   xtbrecebe.SQL.Add('COD_COTA, HISTORICO, VALEXT, VALORSERV, VALORPROD, MARK, IMP, NUMBOLETO,');
                   xtbrecebe.SQL.Add('NUMFISC, COD_CTACOR, REMESSA, DTREF, PERVLRSERV, APLICJUR, NOSSONUMBLT,');
                   xtbrecebe.SQL.Add('SCPC, TIPOBLT, TEXTOBLT, EXPORTA)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_PARCELACR, :COD_CTARECEBER, :NUMPARC, :DTDEBITO, :COD_PARANT,');
                   xtbrecebe.SQL.Add(':DESCONTO, :JUROS, :MULTA, :VALOR, :VALORPG, :FECH, :COBRANCA, :DTVENC,');
                   xtbrecebe.SQL.Add(':COD_COTA, :HISTORICO, :VALEXT, :VALORSERV, :VALORPROD, :MARK, :IMP, :NUMBOLETO,');
                   xtbrecebe.SQL.Add(':NUMFISC, :COD_CTACOR, :REMESSA, :DTREF, :PERVLRSERV, :APLICJUR, :NOSSONUMBLT,');
                   xtbrecebe.SQL.Add(':SCPC, :TIPOBLT, :TEXTOBLT, :EXPORTA)');
                   xtbrecebe.ParamByName('COD_PARCELACR').AsInteger := StrToInt(xcodparcelacrupdate);
   				xtbrecebe.ParamByName('COD_CTARECEBER').AsInteger := StrToInt(xcodctareceberupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update parcelacr set');
                   xtbrecebe.SQL.Add('COD_CTARECEBER = :COD_CTARECEBER, NUMPARC = :NUMPARC, DTDEBITO = :DTDEBITO, COD_PARANT = :COD_PARANT,');
                   xtbrecebe.SQL.Add('DESCONTO = :DESCONTO, JUROS = :JUROS, MULTA = :MULTA, VALOR = :VALOR, VALORPG = :VALORPG, FECH = :FECH, COBRANCA = :COBRANCA, DTVENC = :DTVENC,');
                   xtbrecebe.SQL.Add('COD_COTA = :COD_COTA, HISTORICO = :HISTORICO, VALEXT = :VALEXT, VALORSERV = :VALORSERV, VALORPROD = :VALORPROD, MARK = :MARK, IMP = :IMP, NUMBOLETO = :NUMBOLETO,');
                   xtbrecebe.SQL.Add('NUMFISC = :NUMFISC, COD_CTACOR = :COD_CTACOR, REMESSA = :REMESSA, DTREF = :DTREF, PERVLRSERV = :PERVLRSERV, APLICJUR = :APLICJUR, NOSSONUMBLT = :NOSSONUMBLT,');
                   xtbrecebe.SQL.Add('SCPC = :SCPC, TIPOBLT = :TIPOBLT, TEXTOBLT = :TEXTOBLT, EXPORTA = :EXPORTA');
               	xtbrecebe.SQL.Add('where cod_parcelacr = '+ xcodupdate);
                   xtbrecebe.ParamByName('COD_CTARECEBER').AsInteger := StrToInt(xcodctareceberupdate);
               end;
       end;

   xtbrecebe.ParamByName('NUMPARC').AsString := xtbexporta.FieldByName('NUMPARC').AsString;
   xtbrecebe.ParamByName('DTDEBITO').AsDate := xtbexporta.FieldByName('DTDEBITO').AsDateTime;
   xtbrecebe.ParamByName('COD_PARANT').AsInteger := xtbexporta.FieldByName('COD_PARANT').AsInteger;
   xtbrecebe.ParamByName('DESCONTO').AsFloat := xtbexporta.FieldByName('DESCONTO').AsFloat;
   xtbrecebe.ParamByName('JUROS').AsFloat := xtbexporta.FieldByName('JUROS').AsFloat;
   xtbrecebe.ParamByName('MULTA').AsFloat := xtbexporta.FieldByName('MULTA').AsFloat;
   xtbrecebe.ParamByName('VALOR').AsFloat := xtbexporta.FieldByName('VALOR').AsFloat;
   xtbrecebe.ParamByName('VALORPG').AsFloat := xtbexporta.FieldByName('VALORPG').AsFloat;
   xtbrecebe.ParamByName('FECH').AsString := xtbexporta.FieldByName('FECH').AsString;
   xtbrecebe.ParamByName('COBRANCA').AsString := xtbexporta.FieldByName('COBRANCA').AsString;
   xtbrecebe.ParamByName('DTVENC').AsString := xtbexporta.FieldByName('DTVENC').AsString;
   xtbrecebe.ParamByName('COD_COTA').AsString := xtbexporta.FieldByName('COD_COTA').AsString;
   xtbrecebe.ParamByName('HISTORICO').AsString := xtbexporta.FieldByName('HISTORICO').AsString;
   xtbrecebe.ParamByName('VALEXT').AsString := xtbexporta.FieldByName('VALEXT').AsString;
   xtbrecebe.ParamByName('VALORSERV').AsFloat := xtbexporta.FieldByName('VALORSERV').AsFloat;
   xtbrecebe.ParamByName('VALORPROD').AsFloat := xtbexporta.FieldByName('VALORPROD').AsFloat;
   xtbrecebe.ParamByName('MARK').AsString := xtbexporta.FieldByName('MARK').AsString;
   xtbrecebe.ParamByName('IMP').AsString := xtbexporta.FieldByName('IMP').AsString;
   xtbrecebe.ParamByName('NUMBOLETO').AsString := xtbexporta.FieldByName('NUMBOLETO').AsString;
   xtbrecebe.ParamByName('NUMFISC').AsString := xtbexporta.FieldByName('NUMFISC').AsString;
   xtbrecebe.ParamByName('COD_CTACOR').AsString := xtbexporta.FieldByName('COD_CTACOR').AsString;
   xtbrecebe.ParamByName('REMESSA').AsString := xtbexporta.FieldByName('REMESSA').AsString;
   xtbrecebe.ParamByName('DTREF').AsString := xtbexporta.FieldByName('DTREF').AsString;
   xtbrecebe.ParamByName('PERVLRSERV').AsString := xtbexporta.FieldByName('PERVLRSERV').AsString;
   xtbrecebe.ParamByName('APLICJUR').AsString := xtbexporta.FieldByName('APLICJUR').AsString;
   xtbrecebe.ParamByName('NOSSONUMBLT').AsString := xtbexporta.FieldByName('NOSSONUMBLT').AsString;
   xtbrecebe.ParamByName('SCPC').AsString := xtbexporta.FieldByName('SCPC').AsString;
   xtbrecebe.ParamByName('TIPOBLT').AsString := xtbexporta.FieldByName('TIPOBLT').AsString;
   xtbrecebe.ParamByName('TEXTOBLT').AsString := xtbexporta.FieldByName('TEXTOBLT').AsString;
   xtbrecebe.ParamByName('EXPORTA').AsInteger := 1;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 20/1/2009: insere registros do motoristaveiculo
procedure TFPedidoVendaConstrutora.motoristaveiculo;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMESTOQUE.TMotoristaVeiculo;
           xtbrecebe := DMEXPORTA.Alx5;

           //grava motorista veiculo referente a pedvenda
           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into motoristaveiculo');
           xtbrecebe.SQL.Add('(COD_MOTORISTAVEICULO, COD_PEDVENDA, COD_EQUIPAMENTO, COD_FUNCIONARIO, DTENTRADA, DTSAIDA, HRENTRADA, HRSAIDA, TARA)');
           xtbrecebe.SQL.Add('VALUES');
           xtbrecebe.SQL.Add('(:COD_MOTORISTAVEICULO, :COD_PEDVENDA, :COD_EQUIPAMENTO, :COD_FUNCIONARIO, :DTENTRADA, :DTSAIDA, :HRENTRADA, :HRSAIDA, :TARA)');
       	xtbrecebe.ParamByName('COD_MOTORISTAVEICULO').AsInteger := xtbexporta.fieldbyname('COD_MOTORISTAVEICULO').AsInteger;
           xtbrecebe.ParamByName('COD_PEDVENDA').AsInteger := xtbexporta.fieldbyname('COD_PEDVENDA').AsInteger;
           xtbrecebe.ParamByName('COD_EQUIPAMENTO').AsInteger := xtbexporta.fieldbyname('COD_EQUIPAMENTO').AsInteger;
           xtbrecebe.ParamByName('COD_FUNCIONARIO').AsInteger := xtbexporta.fieldbyname('COD_FUNCIONARIO').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.Alx5;
           xtbrecebe := DMESTOQUE.TMotoristaVeiculo;

           if(xforma = 'insert')then
           	begin
               	//grava motorista veiculo referente a pedvenda
                   xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into motoristaveiculo');
                   xtbrecebe.SQL.Add('(COD_MOTORISTAVEICULO, COD_PEDVENDA, COD_EQUIPAMENTO, COD_FUNCIONARIO, DTENTRADA, DTSAIDA, HRENTRADA, HRSAIDA, TARA)');
                   xtbrecebe.SQL.Add('VALUES');
                   xtbrecebe.SQL.Add('(:COD_MOTORISTAVEICULO, :COD_PEDVENDA, :COD_EQUIPAMENTO, :COD_FUNCIONARIO, :DTENTRADA, :DTSAIDA, :HRENTRADA, :HRSAIDA, :TARA)');
               	xtbrecebe.ParamByName('COD_MOTORISTAVEICULO').AsInteger := StrToInt(xcodmotoveicupdate);
                   xtbrecebe.ParamByName('COD_PEDVENDA').AsInteger := StrToInt(xcodpedvendaupdate);
                   xtbrecebe.ParamByName('COD_EQUIPAMENTO').AsInteger := StrToInt(xcodequipamentoupdate);
                   xtbrecebe.ParamByName('COD_FUNCIONARIO').AsInteger := StrToInt(xcodfuncionarioupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update motoristaveiculo set');
                   xtbrecebe.SQL.Add('COD_PEDVENDA = :COD_PEDVENDA, COD_EQUIPAMENTO = :COD_EQUIPAMENTO, COD_FUNCIONARIO = :COD_FUNCIONARIO, DTENTRADA = :DTENTRADA, DTSAIDA = :DTSAIDA, HRENTRADA = :HRENTRADA, HRSAIDA = :HRSAIDA, TARA = :TARA');
               	xtbrecebe.SQL.Add('where cod_motoristaveiculo = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('DTENTRADA').AsDate := xtbexporta.fieldbyname('DTENTRADA').AsDateTime;
   xtbrecebe.ParamByName('DTSAIDA').AsDate := xtbexporta.fieldbyname('DTSAIDA').AsDateTime;
   xtbrecebe.ParamByName('HRENTRADA').AsTime := xtbexporta.fieldbyname('HRENTRADA').AsDateTime;
   xtbrecebe.ParamByName('HRENTRADA').AsTime := xtbexporta.fieldbyname('HRENTRADA').AsDateTime;
   xtbrecebe.ParamByName('TARA').AsFloat := xtbexporta.fieldbyname('TARA').AsFloat;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 16/1/2009: insere conta a receber
procedure TFPedidoVendaConstrutora.ctareceber;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMCONTA.TCtaR;
           xtbrecebe := DMEXPORTA.TCtaR;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into ctareceber');
           xtbrecebe.SQL.Add('(COD_CTARECEBER, COD_USUARIO, DTLANC, COBRANCA, COD_CLIENTE, COD_PLNCTA,');
           xtbrecebe.SQL.Add('HISTORICO, TIPOGERADOR, COD_GERADOR, VALOR, COD_COTAMOEDA, COD_FORMPAG,');
           xtbrecebe.SQL.Add('NUMDOC, COD_PLNCTASERV)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_CTARECEBER, :COD_USUARIO, :DTLANC, :COBRANCA, :COD_CLIENTE, :COD_PLNCTA,');
           xtbrecebe.SQL.Add(':HISTORICO, :TIPOGERADOR, :COD_GERADOR, :VALOR, :COD_COTAMOEDA, :COD_FORMPAG,');
           xtbrecebe.SQL.Add(':NUMDOC, :COD_PLNCTASERV)');
       	xtbrecebe.ParamByName('COD_CTARECEBER').AsInteger := xtbexporta.FieldByName('COD_CTARECEBER').AsInteger;
           xtbrecebe.ParamByName('COD_USUARIO').AsInteger := xtbexporta.FieldByName('COD_USUARIO').AsInteger;
           xtbrecebe.ParamByName('COD_CLIENTE').AsInteger := xtbexporta.FieldByName('COD_CLIENTE').AsInteger;
           xtbrecebe.ParamByName('COD_PLNCTA').AsInteger := xtbexporta.FieldByName('COD_PLNCTA').AsInteger;
           xtbrecebe.ParamByName('COD_GERADOR').AsInteger := xtbexporta.FieldByName('COD_GERADOR').AsInteger;
           xtbrecebe.ParamByName('COD_FORMPAG').AsInteger := xtbexporta.FieldByName('COD_FORMPAG').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TCtaR;
           xtbrecebe := DMCONTA.TCtaR;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into ctareceber');
                   xtbrecebe.SQL.Add('(COD_CTARECEBER, COD_USUARIO, DTLANC, COBRANCA, COD_CLIENTE, COD_PLNCTA,');
                   xtbrecebe.SQL.Add('HISTORICO, TIPOGERADOR, COD_GERADOR, VALOR, COD_COTAMOEDA, COD_FORMPAG,');
                   xtbrecebe.SQL.Add('NUMDOC, COD_PLNCTASERV)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_CTARECEBER, :COD_USUARIO, :DTLANC, :COBRANCA, :COD_CLIENTE, :COD_PLNCTA,');
                   xtbrecebe.SQL.Add(':HISTORICO, :TIPOGERADOR, :COD_GERADOR, :VALOR, :COD_COTAMOEDA, :COD_FORMPAG,');
                   xtbrecebe.SQL.Add(':NUMDOC, :COD_PLNCTASERV)');
                   xtbrecebe.ParamByName('COD_CTARECEBER').AsInteger := StrToInt(xcodctareceberupdate);
   				xtbrecebe.ParamByName('COD_USUARIO').AsInteger := StrToInt(xcodusuarioupdate);
               	xtbrecebe.ParamByName('COD_CLIENTE').AsInteger := StrToInt(xcodclienteupdate);
   				xtbrecebe.ParamByName('COD_PLNCTA').AsInteger := StrToInt(xcodplncontaupdate);
               	xtbrecebe.ParamByName('COD_GERADOR').AsString := xcodgeradorupdate;
               	xtbrecebe.ParamByName('COD_FORMPAG').AsInteger := StrToInt(xcodformpagupdate);
               end
           else
           	begin
               	xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update ctareceber set');
                   xtbrecebe.SQL.Add('COD_USUARIO = :COD_USUARIO, DTLANC = :DTLANC, COBRANCA = :COBRANCA, COD_CLIENTE = :COD_CLIENTE, COD_PLNCTA = :COD_PLNCTA,');
                   xtbrecebe.SQL.Add('HISTORICO = :HISTORICO, TIPOGERADOR = :TIPOGERADOR, COD_GERADOR = :COD_GERADOR, VALOR = :VALOR, COD_COTAMOEDA = :COD_COTAMOEDA, COD_FORMPAG = :COD_FORMPAG,');
                   xtbrecebe.SQL.Add('NUMDOC = :NUMDOC, COD_PLNCTASERV = :COD_PLNCTASERV');
               	xtbrecebe.SQL.Add('where cod_ctareceber = '+ xcodupdate);
                   xtbrecebe.ParamByName('COD_USUARIO').AsInteger := StrToInt(xcodusuarioupdate);
               	xtbrecebe.ParamByName('COD_CLIENTE').AsInteger := StrToInt(xcodclienteupdate);
   				xtbrecebe.ParamByName('COD_PLNCTA').AsInteger := StrToInt(xcodplncontaupdate);
               	xtbrecebe.ParamByName('COD_GERADOR').AsString := xcodgeradorupdate;
               	xtbrecebe.ParamByName('COD_FORMPAG').AsInteger := StrToInt(xcodformpagupdate);
               end;
       end;

   xtbrecebe.ParamByName('DTLANC').AsDate := xtbexporta.FieldByName('DTLANC').AsDateTime;
   xtbrecebe.ParamByName('COBRANCA').AsString := xtbexporta.FieldByName('COBRANCA').AsString;
   xtbrecebe.ParamByName('HISTORICO').AsString := xtbexporta.FieldByName('HISTORICO').AsString;
   xtbrecebe.ParamByName('TIPOGERADOR').AsString := xtbexporta.FieldByName('TIPOGERADOR').AsString;
   xtbrecebe.ParamByName('VALOR').AsFloat := xtbexporta.FieldByName('VALOR').AsFloat;
   xtbrecebe.ParamByName('COD_COTAMOEDA').AsInteger := xtbexporta.FieldByName('COD_COTAMOEDA').AsInteger;
   xtbrecebe.ParamByName('NUMDOC').AsString := xtbexporta.FieldByName('NUMDOC').AsString;
   xtbrecebe.ParamByName('COD_PLNCTASERV').AsInteger := xtbexporta.FieldByName('COD_PLNCTASERV').AsInteger;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 16/1/2009: insere movbanco
procedure TFPedidoVendaConstrutora.movbanco;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMBANCO.TMovBanco;
           xtbrecebe := DMEXPORTA.TMovBanco;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into movbanco');
           xtbrecebe.SQL.Add('(COD_MOVBANCO, COD_CTACOR, HORALANC, DTLANC, COD_PLNCTA, HISTORICO, COD_USUARIO,');
           xtbrecebe.SQL.Add('DTMOV, COD_COTA, VALOR, TIPOOP, COBRANCA, DTVENC, FECH, TIPOGERADOR, COD_GERADOR,');
           xtbrecebe.SQL.Add('NUMCHEQUE, VER, VALORSERV, VALORPROD, COD_PLNCTASERV, PERVLRSERV, ESTRU, COD_ABBANCO,');
           xtbrecebe.SQL.Add('DTREF, MARK, DESTINATARIOCH)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_MOVBANCO, :COD_CTACOR, :HORALANC, :DTLANC, :COD_PLNCTA, :HISTORICO, :COD_USUARIO,');
           xtbrecebe.SQL.Add(':DTMOV, :COD_COTA, :VALOR, :TIPOOP, :COBRANCA, :DTVENC, :FECH, :TIPOGERADOR, :COD_GERADOR,');
           xtbrecebe.SQL.Add(':NUMCHEQUE, :VER, :VALORSERV, :VALORPROD, :COD_PLNCTASERV, :PERVLRSERV, :ESTRU, :COD_ABBANCO,');
           xtbrecebe.SQL.Add(':DTREF, :MARK, :DESTINATARIOCH)');
           xtbrecebe.ParamByName('COD_MOVBANCO').AsInteger := xtbexporta.FieldByName('COD_MOVBANCO').AsInteger;
   		xtbrecebe.ParamByName('COD_CTACOR').AsInteger := xtbexporta.FieldByName('COD_CTACOR').AsInteger;
       	xtbrecebe.ParamByName('COD_GERADOR').AsInteger := xtbexporta.FieldByName('COD_GERADOR').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TMovBanco;
           xtbrecebe := DMBANCO.TMovBanco;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into movbanco');
                   xtbrecebe.SQL.Add('(COD_MOVBANCO, COD_CTACOR, HORALANC, DTLANC, COD_PLNCTA, HISTORICO, COD_USUARIO,');
                   xtbrecebe.SQL.Add('DTMOV, COD_COTA, VALOR, TIPOOP, COBRANCA, DTVENC, FECH, TIPOGERADOR, COD_GERADOR,');
                   xtbrecebe.SQL.Add('NUMCHEQUE, VER, VALORSERV, VALORPROD, COD_PLNCTASERV, PERVLRSERV, ESTRU, COD_ABBANCO,');
                   xtbrecebe.SQL.Add('DTREF, MARK, DESTINATARIOCH)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_MOVBANCO, :COD_CTACOR, :HORALANC, :DTLANC, :COD_PLNCTA, :HISTORICO, :COD_USUARIO,');
                   xtbrecebe.SQL.Add(':DTMOV, :COD_COTA, :VALOR, :TIPOOP, :COBRANCA, :DTVENC, :FECH, :TIPOGERADOR, :COD_GERADOR,');
                   xtbrecebe.SQL.Add(':NUMCHEQUE, :VER, :VALORSERV, :VALORPROD, :COD_PLNCTASERV, :PERVLRSERV, :ESTRU, :COD_ABBANCO,');
                   xtbrecebe.SQL.Add(':DTREF, :MARK, :DESTINATARIOCH)');
                   xtbrecebe.ParamByName('COD_MOVBANCO').AsInteger := StrToInt(xcodmovbancoupdate);
                   xtbrecebe.ParamByName('COD_CTACOR').AsInteger := StrToInt(xcodctacorupdate);
                   xtbrecebe.ParamByName('COD_GERADOR').AsInteger := StrToInt(xcodgeradorupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update movbanco set');
                   xtbrecebe.SQL.Add('COD_CTACOR = :COD_CTACOR, HORALANC = :HORALANC, DTLANC = :DTLANC, COD_PLNCTA = :COD_PLNCTA, HISTORICO = :HISTORICO, COD_USUARIO = :COD_USUARIO,');
                   xtbrecebe.SQL.Add('DTMOV = :DTMOV, COD_COTA = :COD_COTA, VALOR = :VALOR, TIPOOP = :TIPOOP, COBRANCA = :COBRANCA, DTVENC = :DTVENC, FECH = :FECH, TIPOGERADOR = :TIPOGERADOR, COD_GERADOR = :COD_GERADOR,');
                   xtbrecebe.SQL.Add('NUMCHEQUE = :NUMCHEQUE, VER = :VER, VALORSERV = :VALORSERV, VALORPROD = :VALORPROD, VALORPROD = :COD_PLNCTASERV, PERVLRSERV = :PERVLRSERV, ESTRU = :ESTRU, COD_ABBANCO = :COD_ABBANCO,');
                   xtbrecebe.SQL.Add('DTREF = :DTREF, MARK = :MARK, DESTINATARIOCH = :DESTINATARIOCH');
               	xtbrecebe.SQL.Add('where cod_movbanco = '+ xcodupdate);
                   xtbrecebe.ParamByName('COD_CTACOR').AsInteger := xtbexporta.FieldByName('COD_CTACOR').AsInteger;;
                   xtbrecebe.ParamByName('COD_GERADOR').AsInteger := StrToInt(xcodgeradorupdate);
                  // xtbrecebe.ParamByName('COD_CTACOR').AsInteger := StrToInt(xcodctacorupdate);
               end;
       end;

   xtbrecebe.ParamByName('HORALANC').AsTime := xtbexporta.FieldByName('HORALANC').AsDateTime;
   xtbrecebe.ParamByName('DTLANC').AsDate := xtbexporta.FieldByName('DTLANC').AsDateTime;
   xtbrecebe.ParamByName('COD_PLNCTA').AsInteger := xtbexporta.FieldByName('COD_PLNCTA').AsInteger;
   xtbrecebe.ParamByName('HISTORICO').AsString := xtbexporta.FieldByName('HISTORICO').AsString;
   xtbrecebe.ParamByName('COD_USUARIO').AsInteger := xtbexporta.FieldByName('COD_USUARIO').AsInteger;
   xtbrecebe.ParamByName('DTMOV').AsDate := xtbexporta.FieldByName('DTMOV').AsDateTime;
   xtbrecebe.ParamByName('COD_COTA').AsInteger := xtbexporta.FieldByName('COD_COTA').AsInteger;
   xtbrecebe.ParamByName('VALOR').AsFloat := xtbexporta.FieldByName('VALOR').AsFloat;
   xtbrecebe.ParamByName('TIPOOP').AsString := xtbexporta.FieldByName('TIPOOP').AsString;
   xtbrecebe.ParamByName('COBRANCA').AsString := xtbexporta.FieldByName('COBRANCA').AsString;
   xtbrecebe.ParamByName('DTVENC').AsDate := xtbexporta.FieldByName('DTVENC').AsDateTime;
   xtbrecebe.ParamByName('FECH').AsString := xtbexporta.FieldByName('FECH').AsString;
   xtbrecebe.ParamByName('TIPOGERADOR').AsString := xtbexporta.FieldByName('TIPOGERADOR').AsString;
   xtbrecebe.ParamByName('NUMCHEQUE').AsString := xtbexporta.FieldByName('NUMCHEQUE').AsString;
   xtbrecebe.ParamByName('VER').AsString := xtbexporta.FieldByName('VER').AsString;
   xtbrecebe.ParamByName('VALORSERV').AsFloat := xtbexporta.FieldByName('VALORSERV').AsFloat;
   xtbrecebe.ParamByName('VALORPROD').AsFloat := xtbexporta.FieldByName('VALORPROD').AsFloat;
   xtbrecebe.ParamByName('COD_PLNCTASERV').AsInteger := xtbexporta.FieldByName('COD_PLNCTASERV').AsInteger;
   xtbrecebe.ParamByName('PERVLRSERV').AsFloat := xtbexporta.FieldByName('PERVLRSERV').AsFloat;
   xtbrecebe.ParamByName('ESTRU').AsString := xtbexporta.FieldByName('ESTRU').AsString;
   xtbrecebe.ParamByName('COD_ABBANCO').AsInteger := xtbexporta.FieldByName('COD_ABBANCO').AsInteger;
   xtbrecebe.ParamByName('DTREF').AsDate := xtbexporta.FieldByName('DTREF').AsDateTime;
   xtbrecebe.ParamByName('MARK').AsString := xtbexporta.FieldByName('MARK').AsString;
   xtbrecebe.ParamByName('DESTINATARIOCH').AsString := xtbexporta.FieldByName('DESTINATARIOCH').AsString;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 16/1/2009: insere cheques recebidos
procedure TFPedidoVendaConstrutora.chequerec;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMBANCO.TChequeRec;
           xtbrecebe := DMEXPORTA.TChequeRec;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into chequerec');
           xtbrecebe.SQL.Add('(COD_CHEQUEREC, COD_BANCO, NUMAGENCIA, NUMCONTA, COD_MOVBANCO, FONE,');
           xtbrecebe.SQL.Add('EMITENTE, CPFEMIT, DESTINO)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_CHEQUEREC, :COD_BANCO, :NUMAGENCIA, :NUMCONTA, :COD_MOVBANCO, :FONE,');
           xtbrecebe.SQL.Add(':EMITENTE, :CPFEMIT, :DESTINO)');
           xtbrecebe.ParamByName('COD_CHEQUEREC').AsInteger := xtbexporta.FieldByName('COD_CHEQUEREC').AsInteger;
           xtbrecebe.ParamByName('COD_BANCO').AsInteger := xtbexporta.FieldByName('COD_BANCO').AsInteger;
           xtbrecebe.ParamByName('COD_MOVBANCO').AsInteger := xtbexporta.FieldByName('COD_MOVBANCO').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TChequeRec;
           xtbrecebe := DMBANCO.TChequeRec;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into chequerec');
                   xtbrecebe.SQL.Add('(COD_CHEQUEREC, COD_BANCO, NUMAGENCIA, NUMCONTA, COD_MOVBANCO, FONE,');
                   xtbrecebe.SQL.Add('EMITENTE, CPFEMIT, DESTINO)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_CHEQUEREC, :COD_BANCO, :NUMAGENCIA, :NUMCONTA, :COD_MOVBANCO, :FONE,');
                   xtbrecebe.SQL.Add(':EMITENTE, :CPFEMIT, :DESTINO)');
                   xtbrecebe.ParamByName('COD_CHEQUEREC').AsInteger := StrToInt(xcodchequerecupdate);
   				xtbrecebe.ParamByName('COD_BANCO').AsInteger := StrToInt(xcodbancoupdate);
               	xtbrecebe.ParamByName('COD_MOVBANCO').AsInteger := StrToInt(xcodmovbancoupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update chequerec set');
                   xtbrecebe.SQL.Add('COD_BANCO = :COD_BANCO, NUMAGENCIA = :NUMAGENCIA, NUMCONTA = :NUMCONTA, COD_MOVBANCO = :COD_MOVBANCO, FONE = :FONE,');
                   xtbrecebe.SQL.Add('EMITENTE = :EMITENTE, CPFEMIT = :CPFEMIT, DESTINO = :DESTINO');
               	xtbrecebe.SQL.Add('where cod_chequerec = '+ xcodupdate);
   				xtbrecebe.ParamByName('COD_BANCO').AsInteger := StrToInt(xcodbancoupdate);
               	xtbrecebe.ParamByName('COD_MOVBANCO').AsInteger := StrToInt(xcodmovbancoupdate);
               end;
       end;


   xtbrecebe.ParamByName('NUMAGENCIA').AsString := xtbexporta.FieldByName('NUMAGENCIA').AsString;
   xtbrecebe.ParamByName('NUMCONTA').AsString := xtbexporta.FieldByName('NUMCONTA').AsString;
   xtbrecebe.ParamByName('FONE').AsString := xtbexporta.FieldByName('FONE').AsString;
   xtbrecebe.ParamByName('EMITENTE').AsString := xtbexporta.FieldByName('EMITENTE').AsString;
   xtbrecebe.ParamByName('CPFEMIT').AsString := xtbexporta.FieldByName('CPFEMIT').AsString;
   xtbrecebe.ParamByName('DESTINO').AsString := xtbexporta.FieldByName('DESTINO').AsString;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 16/1/2009: insere conta corrente
procedure TFPedidoVendaConstrutora.ctacor;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMBANCO.TCtaCor;
           xtbrecebe := DMEXPORTA.TCtaCor;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into ctacor');
           xtbrecebe.SQL.Add('(COD_CTACOR, COD_AGENCIA, NUMCTACOR, DTCAD, DTABERT, PROXCHEQUE, LIMITE,');
           xtbrecebe.SQL.Add('SALDO, NOSSONUMBLT, CODCARTEIRABLT, DIGCTACOR, CODCEDENTEBLT, DIGCODCEDENTEBLT,');
           xtbrecebe.SQL.Add('PROXBOLETO, NUMAGENCBLT, DIGAGENCBLT, INSTRUBOLETO, CONTREMESSA, DIASPROT,');
           xtbrecebe.SQL.Add('PROTAUT, CODEMPRESABLT)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_CTACOR, :COD_AGENCIA, :NUMCTACOR, :DTCAD, :DTABERT, :PROXCHEQUE, :LIMITE,');
           xtbrecebe.SQL.Add(':SALDO, :NOSSONUMBLT, :CODCARTEIRABLT, :DIGCTACOR, :CODCEDENTEBLT, :DIGCODCEDENTEBLT,');
           xtbrecebe.SQL.Add(':PROXBOLETO, :NUMAGENCBLT, :DIGAGENCBLT, :INSTRUBOLETO, :CONTREMESSA, :DIASPROT,');
           xtbrecebe.SQL.Add(':PROTAUT, :CODEMPRESABLT)');
           xtbrecebe.ParamByName('COD_CTACOR').AsInteger := xtbexporta.FieldByName('COD_CTACOR').AsInteger;
   		xtbrecebe.ParamByName('COD_AGENCIA').AsInteger := xtbexporta.FieldByName('COD_AGENCIA').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TCtaCor;
           xtbrecebe := DMBANCO.TCtaCor;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into ctacor');
                   xtbrecebe.SQL.Add('(COD_CTACOR, COD_AGENCIA, NUMCTACOR, DTCAD, DTABERT, PROXCHEQUE, LIMITE,');
                   xtbrecebe.SQL.Add('SALDO, NOSSONUMBLT, CODCARTEIRABLT, DIGCTACOR, CODCEDENTEBLT, DIGCODCEDENTEBLT,');
                   xtbrecebe.SQL.Add('PROXBOLETO, NUMAGENCBLT, DIGAGENCBLT, INSTRUBOLETO, CONTREMESSA, DIASPROT,');
                   xtbrecebe.SQL.Add('PROTAUT, CODEMPRESABLT)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_CTACOR, :COD_AGENCIA, :NUMCTACOR, :DTCAD, :DTABERT, :PROXCHEQUE, :LIMITE,');
                   xtbrecebe.SQL.Add(':SALDO, :NOSSONUMBLT, :CODCARTEIRABLT, :DIGCTACOR, :CODCEDENTEBLT, :DIGCODCEDENTEBLT,');
                   xtbrecebe.SQL.Add(':PROXBOLETO, :NUMAGENCBLT, :DIGAGENCBLT, :INSTRUBOLETO, :CONTREMESSA, :DIASPROT,');
                   xtbrecebe.SQL.Add(':PROTAUT, :CODEMPRESABLT)');
                   xtbrecebe.ParamByName('COD_CTACOR').AsInteger := StrToInt(xcodctacorupdate);
   				xtbrecebe.ParamByName('COD_AGENCIA').AsInteger := StrToInt(xcodagenciaupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update ctacor set');
                   xtbrecebe.SQL.Add('COD_AGENCIA = :COD_AGENCIA, NUMCTACOR = :NUMCTACOR, DTCAD = :DTCAD, DTABERT = :DTABERT, PROXCHEQUE = :PROXCHEQUE, LIMITE = :LIMITE,');
                   xtbrecebe.SQL.Add('SALDO = :SALDO, NOSSONUMBLT = :NOSSONUMBLT, CODCARTEIRABLT = :CODCARTEIRABLT, DIGCTACOR = :DIGCTACOR, CODCEDENTEBLT = :CODCEDENTEBLT, DIGCODCEDENTEBLT = :DIGCODCEDENTEBLT,');
                   xtbrecebe.SQL.Add('PROXBOLETO = :PROXBOLETO, NUMAGENCBLT = :NUMAGENCBLT, DIGAGENCBLT = :DIGAGENCBLT, INSTRUBOLETO = :INSTRUBOLETO, CONTREMESSA = :CONTREMESSA, DIASPROT = :DIASPROT,');
                   xtbrecebe.SQL.Add('PROTAUT = :PROTAUT, CODEMPRESABLT = :CODEMPRESABLT');
               	xtbrecebe.SQL.Add('where cod_ctacor = '+ xcodupdate);
                   xtbrecebe.ParamByName('COD_AGENCIA').AsInteger := StrToInt(xcodagenciaupdate);
               end;
       end;

   xtbrecebe.ParamByName('NUMCTACOR').AsString := xtbexporta.FieldByName('NUMCTACOR').AsString;
   xtbrecebe.ParamByName('DTCAD').AsDate := xtbexporta.FieldByName('DTCAD').AsDateTime;
   xtbrecebe.ParamByName('DTABERT').AsDate := xtbexporta.FieldByName('DTABERT').AsDateTime;
   xtbrecebe.ParamByName('PROXCHEQUE').AsString := xtbexporta.FieldByName('PROXCHEQUE').AsString;
   xtbrecebe.ParamByName('LIMITE').AsFloat := xtbexporta.FieldByName('LIMITE').AsFloat;
   xtbrecebe.ParamByName('SALDO').AsFloat := xtbexporta.FieldByName('SALDO').AsFloat;
   xtbrecebe.ParamByName('NOSSONUMBLT').AsString := xtbexporta.FieldByName('NOSSONUMBLT').AsString;
   xtbrecebe.ParamByName('CODCARTEIRABLT').AsString := xtbexporta.FieldByName('CODCARTEIRABLT').AsString;
   xtbrecebe.ParamByName('DIGCTACOR').AsString := xtbexporta.FieldByName('DIGCTACOR').AsString;
   xtbrecebe.ParamByName('CODCEDENTEBLT').AsString := xtbexporta.FieldByName('CODCEDENTEBLT').AsString;
   xtbrecebe.ParamByName('DIGCODCEDENTEBLT').AsString := xtbexporta.FieldByName('DIGCODCEDENTEBLT').AsString;
   xtbrecebe.ParamByName('PROXBOLETO').AsInteger := xtbexporta.FieldByName('PROXBOLETO').AsInteger;
   xtbrecebe.ParamByName('NUMAGENCBLT').AsString := xtbexporta.FieldByName('NUMAGENCBLT').AsString;
   xtbrecebe.ParamByName('DIGAGENCBLT').AsString := xtbexporta.FieldByName('DIGAGENCBLT').AsString;
   xtbrecebe.ParamByName('INSTRUBOLETO').AsString := xtbexporta.FieldByName('INSTRUBOLETO').AsString;
   xtbrecebe.ParamByName('CONTREMESSA').AsInteger := xtbexporta.FieldByName('CONTREMESSA').AsInteger;
   xtbrecebe.ParamByName('DIASPROT').AsInteger := xtbexporta.FieldByName('DIASPROT').AsInteger;
   xtbrecebe.ParamByName('PROTAUT').AsString := xtbexporta.FieldByName('PROTAUT').AsString;
   xtbrecebe.ParamByName('CODEMPRESABLT').AsString := xtbexporta.FieldByName('CODEMPRESABLT').AsString;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 16/1/2009: insere banco
procedure TFPedidoVendaConstrutora.banco;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMBANCO.TBanco;
           xtbrecebe := DMEXPORTA.TBanco;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into banco');
           xtbrecebe.SQL.Add('(COD_BANC, NUMBANCO, DESCBANCO, WEBSITE)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_BANC, :NUMBANCO, :DESCBANCO, :WEBSITE)');
           xtbrecebe.ParamByName('COD_BANC').AsInteger := xtbexporta.FieldByName('COD_BANC').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TBanco;
           xtbrecebe := DMBANCO.TBanco;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into banco');
                   xtbrecebe.SQL.Add('(COD_BANC, NUMBANCO, DESCBANCO, WEBSITE)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_BANC, :NUMBANCO, :DESCBANCO, :WEBSITE)');
                   xtbrecebe.ParamByName('COD_BANC').AsInteger := StrToInt(xcodbancoupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update banco set');
                   xtbrecebe.SQL.Add('NUMBANCO = :NUMBANCO, DESCBANCO = :DESCBANCO, WEBSITE = :WEBSITE');
               	xtbrecebe.SQL.Add('where cod_banc = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('NUMBANCO').AsInteger := xtbexporta.FieldByName('NUMBANCO').AsInteger;
   xtbrecebe.ParamByName('DESCBANCO').AsString := xtbexporta.FieldByName('DESCBANCO').AsString;
   xtbrecebe.ParamByName('WEBSITE').AsString := xtbexporta.FieldByName('WEBSITE').AsString;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 16/1/2009: insere agencia
procedure TFPedidoVendaConstrutora.agencia;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMBANCO.TAgencia;
           xtbrecebe := DMEXPORTA.TAgencia;
           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into agencia');
           xtbrecebe.SQL.Add('(COD_AGENCIA, COD_BANCO, NUMAGENCIA, COD_PESSOA)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_AGENCIA, :COD_BANCO, :NUMAGENCIA, :COD_PESSOA)');
           xtbrecebe.ParamByName('COD_AGENCIA').AsInteger := xtbexporta.FieldByName('COD_AGENCIA').AsInteger;
   		xtbrecebe.ParamByName('COD_BANCO').AsInteger := xtbexporta.FieldByName('COD_BANCO').AsInteger;
       	xtbrecebe.ParamByName('COD_PESSOA').AsInteger := xtbexporta.FieldByName('COD_PESSOA').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TAgencia;
           xtbrecebe := DMBANCO.TAgencia;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into agencia');
                   xtbrecebe.SQL.Add('(COD_AGENCIA, COD_BANCO, NUMAGENCIA, COD_PESSOA)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_AGENCIA, :COD_BANCO, :NUMAGENCIA, :COD_PESSOA)');
                   xtbrecebe.ParamByName('COD_AGENCIA').AsInteger := StrToInt(xcodagenciaupdate);
                   xtbrecebe.ParamByName('COD_BANCO').AsInteger := StrToInt(xcodbancoupdate);
                   xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodagenciaupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update agencia set');
                   xtbrecebe.SQL.Add('COD_BANCO = :COD_BANCO, NUMAGENCIA = :NUMAGENCIA, COD_PESSOA = :COD_PESSOA');
               	xtbrecebe.SQL.Add('where cod_agencia = '+ xcodupdate);
                   xtbrecebe.ParamByName('COD_BANCO').AsInteger := StrToInt(xcodbancoupdate);
                   xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodagenciaupdate);
               end;
       end;

   xtbrecebe.ParamByName('NUMAGENCIA').AsString := xtbexporta.FieldByName('NUMAGENCIA').AsString;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 19/1/2009: insere plncta
procedure TFPedidoVendaConstrutora.plncta;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMCONTA.TPlnCta;
           xtbrecebe := DMEXPORTA.Alx5;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into PLNCTA');
           xtbrecebe.SQL.Add('(COD_PLNCTA, CLASSIFICACAO, DESCRICAO, CODIGOGER, NATUREZA, TIPO, COD_FILIAL,');
           xtbrecebe.SQL.Add('VLRPREV, VLRREAL, PERPREV, PERREAL, CCF, NIVEL, ORDEM, MARKREL)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_PLNCTA, :CLASSIFICACAO, :DESCRICAO, :CODIGOGER, :NATUREZA, :TIPO,');
           xtbrecebe.SQL.Add(':COD_FILIAL, :VLRPREV, :VLRREAL, :PERPREV, :PERREAL, :CCF, :NIVEL, :ORDEM,');
           xtbrecebe.SQL.Add(':MARKREL)');
           xtbrecebe.ParamByName('COD_PLNCTA').AsInteger := xtbexporta.FieldByName('COD_PLNCTA').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.Alx5;
           xtbrecebe := DMCONTA.TPlnCta;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into PLNCTA');
                   xtbrecebe.SQL.Add('(COD_PLNCTA, CLASSIFICACAO, DESCRICAO, CODIGOGER, NATUREZA, TIPO, COD_FILIAL,');
                   xtbrecebe.SQL.Add('VLRPREV, VLRREAL, PERPREV, PERREAL, CCF, NIVEL, ORDEM, MARKREL)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_PLNCTA, :CLASSIFICACAO, :DESCRICAO, :CODIGOGER, :NATUREZA, :TIPO,');
                   xtbrecebe.SQL.Add(':COD_FILIAL, :VLRPREV, :VLRREAL, :PERPREV, :PERREAL, :CCF, :NIVEL, :ORDEM,');
                   xtbrecebe.SQL.Add(':MARKREL)');
                   xtbrecebe.ParamByName('COD_PLNCTA').AsInteger := StrToInt(xcodplncontaupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update PLNCTA set');
                   xtbrecebe.SQL.Add('CLASSIFICACAO = :CLASSIFICACAO, DESCRICAO = :DESCRICAO, CODIGOGER = :CODIGOGER, NATUREZA = :NATUREZA, TIPO = :TIPO,');
                   xtbrecebe.SQL.Add('COD_FILIAL = :COD_FILIAL, VLRPREV = :VLRPREV, VLRREAL = :VLRREAL, PERPREV = :PERPREV, PERREAL = :PERREAL, CCF = :CCF, NIVEL = :NIVEL, ORDEM = :ORDEM,');
                   xtbrecebe.SQL.Add('MARKREL = :MARKREL');
               	xtbrecebe.SQL.Add('where cod_plncta = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('CLASSIFICACAO').AsString := xtbexporta.FieldByName('CLASSIFICACAO').AsString;
   xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
   xtbrecebe.ParamByName('CODIGOGER').AsString := xtbexporta.FieldByName('CODIGOGER').AsString;
   xtbrecebe.ParamByName('NATUREZA').AsString := xtbexporta.FieldByName('NATUREZA').AsString;
   xtbrecebe.ParamByName('TIPO').AsString := xtbexporta.FieldByName('TIPO').AsString;
   xtbrecebe.ParamByName('COD_FILIAL').AsInteger := xtbexporta.FieldByName('COD_FILIAL').AsInteger;
   xtbrecebe.ParamByName('VLRPREV').AsFloat := xtbexporta.FieldByName('VLRPREV').AsFloat;
   xtbrecebe.ParamByName('VLRREAL').AsFloat := xtbexporta.FieldByName('VLRREAL').AsFloat;
   xtbrecebe.ParamByName('PERPREV').AsFloat := xtbexporta.FieldByName('PERPREV').AsFloat;
   xtbrecebe.ParamByName('PERREAL').AsFloat := xtbexporta.FieldByName('PERREAL').AsFloat;
   xtbrecebe.ParamByName('CCF').AsString := xtbexporta.FieldByName('CCF').AsString;
   xtbrecebe.ParamByName('NIVEL').AsInteger := xtbexporta.FieldByName('NIVEL').AsInteger;
   xtbrecebe.ParamByName('ORDEM').AsInteger := xtbexporta.FieldByName('ORDEM').AsInteger;
   xtbrecebe.ParamByName('MARKREL').AsString := xtbexporta.FieldByName('MARKREL').AsString;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 24/1/2009: insere forma de pagamento
procedure TFPedidoVendaConstrutora.formpag;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMFINANC.TFormPag;
           xtbrecebe := DMEXPORTA.TFormPag;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into FORMPAG');
           xtbrecebe.SQL.Add('(COD_FORMPAG, COD_LOJA, DESCRICAO, DESCFISC, PRIMPARCELA, INTERVALO,');
           xtbrecebe.SQL.Add('QUANTPARCELA, JUROAPLIC, MEDIADIAS, TIPO, COD_INTERNO)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_FORMPAG, :COD_LOJA, :DESCRICAO, :DESCFISC, :PRIMPARCELA, :INTERVALO,');
           xtbrecebe.SQL.Add(':QUANTPARCELA, :JUROAPLIC, :MEDIADIAS, :TIPO, :COD_INTERNO)');
           xtbrecebe.ParamByName('COD_FORMPAG').AsInteger := xtbexporta.FieldByName('COD_FORMPAG').AsInteger;

       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TFormPag;
           xtbrecebe := DMFINANC.TFormPag;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into FORMPAG');
                   xtbrecebe.SQL.Add('(COD_FORMPAG, COD_LOJA, DESCRICAO, DESCFISC, PRIMPARCELA, INTERVALO,');
                   xtbrecebe.SQL.Add('QUANTPARCELA, JUROAPLIC, MEDIADIAS, TIPO, COD_INTERNO)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_FORMPAG, :COD_LOJA, :DESCRICAO, :DESCFISC, :PRIMPARCELA, :INTERVALO,');
                   xtbrecebe.SQL.Add(':QUANTPARCELA, :JUROAPLIC, :MEDIADIAS, :TIPO, :COD_INTERNO)');
                   xtbrecebe.ParamByName('COD_FORMPAG').AsInteger := StrToInt(xcodformpagupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update FORMPAG set');
                   xtbrecebe.SQL.Add('COD_LOJA = :COD_LOJA, DESCRICAO = :DESCRICAO, DESCFISC = :DESCFISC, PRIMPARCELA = :PRIMPARCELA, INTERVALO = :INTERVALO,');
                   xtbrecebe.SQL.Add('QUANTPARCELA = :QUANTPARCELA, JUROAPLIC = :JUROAPLIC, MEDIADIAS = :MEDIADIAS, TIPO = :TIPO, COD_INTERNO = :COD_INTERNO');
               	xtbrecebe.SQL.Add('where COD_FORMPAG = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('COD_LOJA').AsInteger := xtbexporta.FieldByName('COD_LOJA').AsInteger;
   xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
   xtbrecebe.ParamByName('DESCFISC').AsString := xtbexporta.FieldByName('DESCFISC').AsString;
   xtbrecebe.ParamByName('PRIMPARCELA').AsInteger := xtbexporta.FieldByName('PRIMPARCELA').AsInteger;
   xtbrecebe.ParamByName('INTERVALO').AsInteger := xtbexporta.FieldByName('INTERVALO').AsInteger;
   xtbrecebe.ParamByName('QUANTPARCELA').AsInteger := xtbexporta.FieldByName('QUANTPARCELA').AsInteger;
   xtbrecebe.ParamByName('JUROAPLIC').AsFloat := xtbexporta.FieldByName('JUROAPLIC').AsFloat;
   xtbrecebe.ParamByName('MEDIADIAS').AsInteger := xtbexporta.FieldByName('MEDIADIAS').AsInteger;
   xtbrecebe.ParamByName('TIPO').AsString := xtbexporta.FieldByName('TIPO').AsString;
   xtbrecebe.ParamByName('COD_INTERNO').AsInteger := xtbexporta.FieldByName('COD_INTERNO').AsInteger;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 20/1/2009: insere registros do pedvenda
procedure TFPedidoVendaConstrutora.pedvenda;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMSAIDA.TPedV;
           xtbrecebe := DMEXPORTA.TPedV;

           //insere pedvenda
           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into PEDVENDA');
           xtbrecebe.SQL.Add('(COD_PEDVENDA, COD_CLIENTE, DTPEDVEN, DESCONTO, COD_USUARIO, COD_FORMPAG,');
           xtbrecebe.SQL.Add('VALOR, ENTREGA, NOMECLI, OBS, CPFCNPJ, COD_VENDEDOR, SITUACAO, NUMPED,');
           xtbrecebe.SQL.Add('TIPO, VLRCOMIS, GARANTIA, COMSOBVENDA, FISCO, NUMFISCAL, COD_EQUIPFISC,');
           xtbrecebe.SQL.Add('DTFECH, NUMORC, VLRFRETE, MARK, DESCMOE, ATU, COBRANCA, NUMPED_PALM,');
           xtbrecebe.SQL.Add('ATUCOMIS, FATURADO, EDIT, EXPORTA, COD_OBRA)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_PEDVENDA, :COD_CLIENTE, :DTPEDVEN, :DESCONTO, :COD_USUARIO, :COD_FORMPAG,');
           xtbrecebe.SQL.Add(':VALOR, :ENTREGA, :NOMECLI, :OBS, :CPFCNPJ, :COD_VENDEDOR, :SITUACAO,');
           xtbrecebe.SQL.Add(':NUMPED, :TIPO, :VLRCOMIS, :GARANTIA, :COMSOBVENDA, :FISCO, :NUMFISCAL,');
           xtbrecebe.SQL.Add(':COD_EQUIPFISC, :DTFECH, :NUMORC, :VLRFRETE, :MARK, :DESCMOE, :ATU,');
           xtbrecebe.SQL.Add(':COBRANCA, :NUMPED_PALM, :ATUCOMIS, :FATURADO, :EDIT, :EXPORTA, :COD_OBRA)');
           xtbrecebe.ParamByName('COD_PEDVENDA').AsInteger := xtbexporta.fieldbyname('COD_PEDVENDA').AsInteger;
   		xtbrecebe.ParamByName('COD_CLIENTE').AsInteger := xtbexporta.fieldbyname('COD_CLIENTE').AsInteger;
           xtbrecebe.ParamByName('COD_USUARIO').AsInteger := xtbexporta.fieldbyname('COD_USUARIO').AsInteger;
           xtbrecebe.ParamByName('COD_FORMPAG').AsInteger := xtbexporta.fieldbyname('COD_FORMPAG').AsInteger;
       	xtbrecebe.ParamByName('COD_VENDEDOR').AsInteger := xtbexporta.fieldbyname('COD_VENDEDOR').AsInteger;
           xtbrecebe.ParamByName('COD_OBRA').AsInteger := xtbexporta.fieldbyname('COD_OBRA').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TPedV;
           xtbrecebe := DMSAIDA.TPedV;

           if(xforma = 'insert')then
           	begin
               	//insere pedvenda
                   xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into PEDVENDA');
                   xtbrecebe.SQL.Add('(COD_PEDVENDA, COD_CLIENTE, DTPEDVEN, DESCONTO, COD_USUARIO, COD_FORMPAG,');
                   xtbrecebe.SQL.Add('VALOR, ENTREGA, NOMECLI, OBS, CPFCNPJ, COD_VENDEDOR, SITUACAO, NUMPED,');
                   xtbrecebe.SQL.Add('TIPO, VLRCOMIS, GARANTIA, COMSOBVENDA, FISCO, NUMFISCAL, COD_EQUIPFISC,');
                   xtbrecebe.SQL.Add('DTFECH, NUMORC, VLRFRETE, MARK, DESCMOE, ATU, COBRANCA, NUMPED_PALM,');
                   xtbrecebe.SQL.Add('ATUCOMIS, FATURADO, EDIT, EXPORTA, COD_OBRA)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_PEDVENDA, :COD_CLIENTE, :DTPEDVEN, :DESCONTO, :COD_USUARIO, :COD_FORMPAG,');
                   xtbrecebe.SQL.Add(':VALOR, :ENTREGA, :NOMECLI, :OBS, :CPFCNPJ, :COD_VENDEDOR, :SITUACAO,');
                   xtbrecebe.SQL.Add(':NUMPED, :TIPO, :VLRCOMIS, :GARANTIA, :COMSOBVENDA, :FISCO, :NUMFISCAL,');
                   xtbrecebe.SQL.Add(':COD_EQUIPFISC, :DTFECH, :NUMORC, :VLRFRETE, :MARK, :DESCMOE, :ATU,');
                   xtbrecebe.SQL.Add(':COBRANCA, :NUMPED_PALM, :ATUCOMIS, :FATURADO, :EDIT, :EXPORTA, :COD_OBRA)');
                   xtbrecebe.ParamByName('COD_PEDVENDA').AsInteger := StrToInt(xcodpedvendaupdate);
                   xtbrecebe.ParamByName('COD_CLIENTE').AsInteger := StrToInt(xcodclienteupdate);
                   xtbrecebe.ParamByName('COD_USUARIO').AsInteger := StrToInt(xcodusuarioupdate);
                   xtbrecebe.ParamByName('COD_FORMPAG').AsInteger := StrToInt(xcodformpagupdate);
                   xtbrecebe.ParamByName('COD_VENDEDOR').AsInteger := StrToInt(xcodfuncionarioupdate);
                   if xcodobraupdate <> '' then
                   	xtbrecebe.ParamByName('COD_OBRA').AsInteger := StrToInt(xcodobraupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update PEDVENDA set');
                   xtbrecebe.SQL.Add('COD_CLIENTE = :COD_CLIENTE, DTPEDVEN = :DTPEDVEN, DESCONTO = :DESCONTO, COD_USUARIO = :COD_USUARIO, COD_FORMPAG = :COD_FORMPAG,');
                   xtbrecebe.SQL.Add('VALOR = :VALOR, ENTREGA = :ENTREGA, NOMECLI = :NOMECLI, OBS = :OBS, CPFCNPJ = :CPFCNPJ, COD_VENDEDOR = :COD_VENDEDOR, SITUACAO = :SITUACAO,');
                   xtbrecebe.SQL.Add('NUMPED = :NUMPED, TIPO = :TIPO, VLRCOMIS = :VLRCOMIS, GARANTIA = :GARANTIA, COMSOBVENDA = :COMSOBVENDA, FISCO = :FISCO, NUMFISCAL = :NUMFISCAL,');
                   xtbrecebe.SQL.Add('COD_EQUIPFISC = :COD_EQUIPFISC, DTFECH = :DTFECH, NUMORC = :NUMORC, VLRFRETE = :VLRFRETE, MARK = :MARK, DESCMOE = :DESCMOE, ATU = :ATU,');
                   xtbrecebe.SQL.Add('COBRANCA = :COBRANCA, NUMPED_PALM = :NUMPED_PALM, ATUCOMIS = :ATUCOMIS, FATURADO = :FATURADO, EDIT = :EDIT, EXPORTA = :EXPORTA');
               	xtbrecebe.SQL.Add('where cod_pedvenda = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('DTPEDVEN').AsDate := xtbexporta.fieldbyname('DTPEDVEN').AsDateTime;
   xtbrecebe.ParamByName('DESCONTO').AsFloat := xtbexporta.fieldbyname('DESCONTO').AsFloat;
   xtbrecebe.ParamByName('VALOR').AsFloat := xtbexporta.fieldbyname('VALOR').AsFloat;
   xtbrecebe.ParamByName('ENTREGA').AsDate := xtbexporta.fieldbyname('ENTREGA').AsDateTime;
   xtbrecebe.ParamByName('NOMECLI').AsString := xtbexporta.fieldbyname('NOMECLI').AsString;
   xtbrecebe.ParamByName('OBS').AsString := xtbexporta.fieldbyname('OBS').AsString;
   xtbrecebe.ParamByName('CPFCNPJ').AsString := xtbexporta.fieldbyname('CPFCNPJ').AsString;
   xtbrecebe.ParamByName('SITUACAO').AsString := xtbexporta.fieldbyname('SITUACAO').AsString;
   xtbrecebe.ParamByName('NUMPED').AsString := xtbexporta.fieldbyname('NUMPED').AsString;
   xtbrecebe.ParamByName('TIPO').AsString := xtbexporta.fieldbyname('TIPO').AsString;
   xtbrecebe.ParamByName('VLRCOMIS').AsFloat := xtbexporta.fieldbyname('VLRCOMIS').AsFloat;
   xtbrecebe.ParamByName('GARANTIA').AsString := xtbexporta.fieldbyname('GARANTIA').AsString;
   xtbrecebe.ParamByName('COMSOBVENDA').AsString := xtbexporta.fieldbyname('COMSOBVENDA').AsString;
   xtbrecebe.ParamByName('FISCO').AsString := xtbexporta.fieldbyname('FISCO').AsString;
   xtbrecebe.ParamByName('NUMFISCAL').AsString := xtbexporta.fieldbyname('NUMFISCAL').AsString;
   xtbrecebe.ParamByName('COD_EQUIPFISC').AsInteger := xtbexporta.fieldbyname('COD_EQUIPFISC').AsInteger;
   xtbrecebe.ParamByName('DTFECH').AsDate := xtbexporta.fieldbyname('DTFECH').AsDateTime;
   xtbrecebe.ParamByName('NUMORC').AsInteger := xtbexporta.fieldbyname('NUMORC').AsInteger;
   xtbrecebe.ParamByName('VLRFRETE').AsFloat := xtbexporta.fieldbyname('VLRFRETE').AsFloat;
   xtbrecebe.ParamByName('MARK').AsString := xtbexporta.fieldbyname('MARK').AsString;
   xtbrecebe.ParamByName('DESCMOE').AsFloat := xtbexporta.fieldbyname('DESCMOE').AsFloat;
   xtbrecebe.ParamByName('ATU').AsInteger := xtbexporta.fieldbyname('ATU').AsInteger;
   xtbrecebe.ParamByName('COBRANCA').AsString := xtbexporta.fieldbyname('COBRANCA').AsString;
   //xtbrecebe.ParamByName('NUMPED_PALM').AsInteger := xtbexporta.fieldbyname('NUMPED_PALM').AsInteger;
   //xtbrecebe.ParamByName('ATUCOMIS').AsInteger := xtbexporta.fieldbyname('ATUCOMIS').AsInteger;
   //xtbrecebe.ParamByName('FATURADO').AsString := xtbexporta.fieldbyname('FATURADO').AsString;
   xtbrecebe.ParamByName('EDIT').AsString := '0';
   xtbrecebe.ParamByName('EXPORTA').AsInteger := 1;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 19/1/2009: insere movanco, banco, agencia, ctacor
procedure TFPedidoVendaConstrutora.insertbanco;
begin
	if not(DMBANCO.TMovBanco.IsEmpty)then
   begin
       //Samuel Fabricio Wink - 19/1/2009: insere o movbanco
       movbanco;

       //Samuel Fabricio Wink - 19/1/2009: busca conta corrente correspondente
       FiltraTabela(DMBANCO.TCtaCor, 'ctacor', 'cod_ctacor', DMBANCO.TMovBanco.FieldByName('cod_ctacor').asString, '');
       if not(DMBANCO.TCtaCor.IsEmpty)then
           begin
           	//Samuel Fabricio Wink - 21/1/2009: verifica se ja naum foi feito um registro referente a essa cntacor
               if FiltraTabela(DMEXPORTA.TCtaCor, 'ctacor', 'cod_ctacor', DMBANCO.TCtaCor.FieldByName('cod_ctacor').AsString, '') = false then
               	begin
                     //Samuel Fabricio Wink - 19/1/2009: insere conta corrente
                     ctacor;

                     //Samuel Fabricio Wink - 19/1/2009: busca agencia correspondente
                     FiltraTabela(DMBANCO.TAgencia, 'agencia', 'cod_agencia', DMBANCO.TCtaCor.FieldByName('cod_agencia').asString, '');
                     if not(DMBANCO.TAgencia.IsEmpty)then
                         begin
                             //Samuel Fabricio Wink - 19/1/2009: insere valores da agencia
                             agencia;

                             //Samuel Fabricio Wink - 19/1/2009: busca banco correspondente
                             FiltraTabela(DMBANCO.TBanco, 'banco', 'cod_banc', DMBANCO.TAgencia.FieldByName('cod_banco').asString, '');
                             if not(DMBANCO.TBanco.IsEmpty)then
                                 begin
                                     //Samuel Fabricio Wink - 19/1/2009: inserir a tabela banco
                                     banco;
                                 end;
                         end;
                   end;
           end;
   end;
end;

//Samuel Fabricio Wink - 20/1/2009: insere registros do fornecedor
procedure TFPedidoVendaConstrutora.fornecedor;
begin
   if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMPESSOA.TFornecedor;
           xtbrecebe := DMEXPORTA.TFornecedor;

           //grava fornecedor referente ao equipamento
           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into fornecedor');
           xtbrecebe.SQL.Add('(COD_FORNEC, COD_PESSOA, COD_INTERNO, DATA_CAD, TIPO_FORNEC, PRAZO_ENTREGA, OBS, EXPORT)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_FORNEC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :TIPO_FORNEC, :PRAZO_ENTREGA, :OBS, :EXPORT)');
       	xtbrecebe.ParamByName('COD_FORNEC').AsInteger := xtbexporta.fieldbyname('COD_FORNEC').AsInteger;
   		xtbrecebe.ParamByName('COD_PESSOA').AsInteger := xtbexporta.fieldbyname('COD_PESSOA').AsInteger;
       	xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.fieldbyname('COD_INTERNO').AsString;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TFornecedor;
           xtbrecebe := DMPESSOA.TFornecedor;

           if(xforma = 'insert')then
           	begin
               	//grava fornecedor referente ao equipamento
                   xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into fornecedor');
                   xtbrecebe.SQL.Add('(COD_FORNEC, COD_PESSOA, COD_INTERNO, DATA_CAD, TIPO_FORNEC, PRAZO_ENTREGA, OBS, EXPORT)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_FORNEC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :TIPO_FORNEC, :PRAZO_ENTREGA, :OBS, :EXPORT)');
               	xtbrecebe.ParamByName('COD_FORNEC').AsInteger := StrToInt(xcodfornecedorupdate);
   				xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update fornecedor set');
                   xtbrecebe.SQL.Add('COD_PESSOA = :COD_PESSOA, DATA_CAD = :DATA_CAD, TIPO_FORNEC = :TIPO_FORNEC, PRAZO_ENTREGA = :PRAZO_ENTREGA, OBS = :OBS, EXPORT = :EXPORT');
               	xtbrecebe.SQL.Add('where cod_fornec = '+ xcodupdate);
   				xtbrecebe.ParamByName('COD_PESSOA').AsInteger := StrToInt(xcodpessoaupdate);
               end;
       end;
   if(xforma = 'insert')then
   	begin
       	if FiltraTabela(DMFiscal.TAlx, 'fornecedor', 'cod_interno', xtbexporta.FieldByName('COD_INTERNO').AsString, '') = false then
   			xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.fieldbyname('COD_INTERNO').AsString
           else
           	begin
               	DMFiscal.TAlx.Close;
                   DMFiscal.TAlx.SQL.Clear;
                   DMFiscal.TAlx.SQL.Add(' select * from fornecedor order by fornecedor.cod_interno desc');
                   DMFiscal.TAlx.Open;
                   xtbrecebe.ParamByName('COD_INTERNO').AsString := IntToStr(StrToInt(DMFiscal.TAlx.FieldByName('cod_interno').AsString) + 1);
               end
       end;

   xtbrecebe.ParamByName('DATA_CAD').AsDate := xtbexporta.fieldbyname('DATA_CAD').AsDateTime;
   xtbrecebe.ParamByName('TIPO_FORNEC').AsString := xtbexporta.fieldbyname('TIPO_FORNEC').AsString;
   xtbrecebe.ParamByName('PRAZO_ENTREGA').AsInteger := xtbexporta.fieldbyname('PRAZO_ENTREGA').AsInteger;
   xtbrecebe.ParamByName('OBS').AsString := xtbexporta.fieldbyname('OBS').AsString;
   //xtbrecebe.ParamByName('EXPORT').AsString := xtbexporta.fieldbyname('EXPORT').AsString;
   xtbrecebe.ExecSQL;
end;

//insere os dados respectivos a um lancamento de cheque
procedure TFPedidoVendaConstrutora.insertcheque;
begin
   if(UpperCase(DMFINANC.TFormPag.FieldByName('descricao').AsString) = 'À VISTA')then
     //Samuel Fabricio Wink - 17/1/2009: busca registro referente a movbanco
     FiltraTabela(DMBANCO.TMovBanco, 'movbanco', 'cod_gerador', DMSAIDA.TPedV.FieldByName('cod_pedvenda').asString, '')
	else
     //Samuel Fabricio Wink - 17/1/2009: busca registro referente a movbanco
     FiltraTabela(DMBANCO.TMovBanco, 'movbanco', 'cod_gerador', DMCONTA.TParcCR.FieldByName('cod_parcelacr').asString, '');

   if not(DMBANCO.TMovBanco.IsEmpty)then
       begin
           //Samuel Fabricio Wink - 17/1/2009: insere o movbanco
           movbanco;
       end;
   //Samuel Fabricio Wink - 17/1/2009: busca registro referente ao cheque
   FiltraTabela(DMBANCO.TChequeRec, 'chequerec', 'cod_movbanco', DMBANCO.TMovBanco.FieldByName('cod_movbanco').asString, '');
       if not(DMBANCO.TChequeRec.IsEmpty)then
           begin
               //Samuel Fabricio Wink - 17/1/2009: insere o cheque recebido
               chequerec;

               //Samuel Fabricio Wink - 19/1/2009: filtra tabela para pegar o banco do cheque
               FiltraTabela(DMBANCO.TBanco, 'banco', 'cod_banc', DMBANCO.TChequeRec.FieldByName('cod_banco').asString, '');
               if not(DMBANCO.TBanco.IsEmpty)then
                   begin
                       //Samuel Fabricio Wink - 19/1/2009: insere o banco referente ao cheque
                       banco;
                   end;

               //Samuel Fabricio Wink - 19/1/2009: se o pagamento for a vista ou a prazo em cheque e for movimentado em conta corrente executa as seguintes indicacoes
               FiltraTabela(DMBANCO.TMovBanco, 'movbanco', 'cod_gerador', DMBANCO.TChequeRec.FieldByName('cod_chequerec').asString, '');
               //Samuel Fabricio Wink - 19/1/2009: insere movbanco, banco, agencia, ctacor
               insertbanco;
           end;
   //Samuel Fabricio Wink - 17/1/2009: busca registro referente ao lancamento de caixa
   FiltraTabela(DMCAIXA.TLanCaixa, 'lancaixa', 'cod_gerador', DMBANCO.TChequeRec.FieldByName('cod_chequerec').asString, '');
       if not(DMCAIXA.TLanCaixa.IsEmpty)then
           begin
               //Samuel Fabricio Wink - 17/1/2009: segue para o primeiro registro
               DMCAIXA.TLanCaixa.First;
               //Samuel Fabricio Wink - 17/1/2009: insere todos os registro referente ao pedvenda
               while not(DMCAIXA.TLanCaixa.Eof)do
                   begin
                   	//Samuel Fabricio Wink - 21/1/2009: filtra para verificar se ja naum hove lancamento anterior para naum ter informacoes repetidas
                   	if FiltraTabela(DMEXPORTA.Alx, 'lancaixa', 'cod_lanc', DMCAIXA.TLanCaixa.FieldByName('cod_lanc').AsString, '') = false then
                       	//Samuel Fabricio Wink - 17/1/2009: insere o lancamento de caixa
                       	//lancamentocaixa;

                       //Samuel Fabricio Wink - 19/1/2009: filtra tabela para pegar o registro de plano de contas
                       FiltraTabela(DMCONTA.TPlnCta, 'plncta', 'cod_plncta', DMCAIXA.TLanCaixa.FieldByName('cod_plnctafil').AsString, '');
                       if(FiltraTabela(DMEXPORTA.Alx5, 'plncta', 'classificacao', DMCONTA.TPlnCta.FieldByName('classificacao').AsString, '') = false)then
                           //Samuel Fabricio Wink - 19/1/2009: insere plano de conta referente
                           plncta;
                       DMCAIXA.TLanCaixa.Next;
                   end;
           end;
end;

//Samuel Fabricio Wink - 19/1/2009: insere ctareceber, parcelacr, plncta
procedure TFPedidoVendaConstrutora.insertcontareceber;
begin
	//Samuel Fabricio Wink - 19/1/2009: busca a conta receber referente ao pedvenda
   FiltraTabela(DMCONTA.TCtaR, 'ctareceber', 'cod_gerador', DMSAIDA.TPedV.FieldByName('cod_pedvenda').asString, '');
   if not(DMCONTA.TCtaR.IsEmpty)then
       begin
           //Samuel Fabricio Wink - 19/1/2009: insere conta a receber
           ctareceber;

           //Samuel Fabricio Wink - 19/1/2009: busca parcelas das da conta a receber
           FiltraTabela(DMCONTA.TParcCR, 'parcelacr', 'cod_ctareceber', DMCONTA.TCtaR.FieldByName('cod_ctareceber').asString, '');
           if not(DMCONTA.TParcCR.IsEmpty)then
               begin
                   //Samuel Fabricio Wink - 19/1/2009: volta para o primeiro registro
                   DMCONTA.TParcCR.First;
                   while not(DMCONTA.TParcCR.Eof)do
                       begin
                           //Samuel Fabricio Wink - 19/1/2009: insere parcela
                           parcelacr;

                           //Samuel Fabricio Wink - 21/1/2009: insere os lancamentos de caixa referente a carteira
                           {FiltraTabela(DMCAIXA.TLanCaixa, 'lancaixa', 'cod_gerador', DMCONTA.TParcCR.FieldByName('cod_parcelacr').asString, '');
                           if not(DMCAIXA.TLanCaixa.IsEmpty)then
                           	begin
                               	DMCAIXA.TLanCaixa.First;
                               	while not(DMCAIXA.TLanCaixa.Eof)do
                                   	begin
                                       	lancamentocaixa;
                                           DMCAIXA.TLanCaixa.Next;
                                       end;
                               end;}

                           //Samuel Fabricio Wink - 19/1/2009: verifica a essencia do pagamento para fazer a respectiva insercao
                           if((DMSAIDA.TPedV.fieldbyname('cobranca').AsString = 'Cheque') or (DMCONTA.TParcCR.fieldbyname('cobranca').AsString = 'Cheque'))then
                           	//Samuel Fabricio Wink - 19/1/2009: insere o cheque referente a cada parcela
                               insertcheque;

                           //Samuel Fabricio Wink - 19/1/2009: verifica a essencia do pagamento para fazer a respectiva insercao
                           if(DMSAIDA.TPedV.fieldbyname('cobranca').AsString = 'Cartão')then
                           	begin
                                 FiltraTabela(DMBANCO.TMovBanco, 'movbanco', 'cod_gerador', DMCONTA.TParcCR.FieldByName('cod_parcelacr').asString, '');
                                 //Samuel Fabricio Wink - 19/1/2009: insere movbanco, banco, agencia, ctacor
                                 insertbanco;
                               end;

                           //Samuel Fabricio Wink - 4/2/2009: insere um em exporta
                           DMSAIDA.TAlx.Close;
                           DMSAIDA.TAlx.SQL.Clear;
                           DMSAIDA.TAlx.SQL.add('update parcelacr set parcelacr.exporta = 1');
                           DMSAIDA.TAlx.SQL.add('where parcelacr.cod_parcelacr = '+ DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString);
                           DMSAIDA.TAlx.ExecSQL;

                           DMCONTA.TParcCR.Next;
                       end;
               end;
       end;
end;

//Samuel Fabricio Wink - 20/1/2009: insere usuario
procedure TFPedidoVendaConstrutora.usuario;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMMACS.TUsuario;
           xtbrecebe := DMEXPORTA.TUsuario;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into USUARIO');
           xtbrecebe.SQL.Add('(CODUSUARIO, COD_FUNCIONARIO, LOGIN, SENHA, DATA_CAD, ADM, REVRESMOV)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:CODUSUARIO, :COD_FUNCIONARIO, :LOGIN, :SENHA, :DATA_CAD, :ADM, :REVRESMOV)');
       	xtbrecebe.ParamByName('CODUSUARIO').AsInteger := xtbexporta.FieldByName('CODUSUARIO').AsInteger;
       	xtbrecebe.ParamByName('COD_FUNCIONARIO').AsInteger := xtbexporta.FieldByName('COD_FUNCIONARIO').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TUsuario;
           xtbrecebe := DMMACS.TUsuario;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into USUARIO');
                   xtbrecebe.SQL.Add('(CODUSUARIO, COD_FUNCIONARIO, LOGIN, SENHA, DATA_CAD, ADM, REVRESMOV)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:CODUSUARIO, :COD_FUNCIONARIO, :LOGIN, :SENHA, :DATA_CAD, :ADM, :REVRESMOV)');
                   xtbrecebe.ParamByName('CODUSUARIO').AsInteger := StrToInt(xcodusuarioupdate);
               	xtbrecebe.ParamByName('COD_FUNCIONARIO').AsInteger := StrToInt(xcodfuncionarioupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update USUARIO set');
                   xtbrecebe.SQL.Add('COD_FUNCIONARIO = :COD_FUNCIONARIO, LOGIN = :LOGIN, SENHA = :SENHA, DATA_CAD = :DATA_CAD, ADM = :ADM, REVRESMOV = :REVRESMOV');
               	xtbrecebe.SQL.Add('where codusuario = '+ xcodupdate);
                   xtbrecebe.ParamByName('COD_FUNCIONARIO').AsInteger := StrToInt(xcodfuncionarioupdate);
               end;
       end;

   xtbrecebe.ParamByName('LOGIN').AsString := xtbexporta.FieldByName('LOGIN').AsString;
   xtbrecebe.ParamByName('SENHA').AsString := xtbexporta.FieldByName('SENHA').AsString;
   xtbrecebe.ParamByName('DATA_CAD').AsDate := xtbexporta.FieldByName('DATA_CAD').AsDateTime;
   xtbrecebe.ParamByName('ADM').AsString := xtbexporta.FieldByName('ADM').AsString;
   xtbrecebe.ParamByName('REVRESMOV').AsString := xtbexporta.FieldByName('REVRESMOV').AsString;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 15/1/2009: deleta as tabelas referente a pessoa
procedure TFPedidoVendaConstrutora.deletapessoa;
begin
    //Samuel Fabricio Wink - 15/1/2009: filtra a tabela referemte a pessoa
    FiltraTabela(DMEXPORTA.TPessoa , 'pessoa', 'cod_pessoa', xcodpessoaupdate, '');
    //Samuel Fabricio Wink - 15/1/2009: verifica se a tabela nao voltou vazia
    if not(DMEXPORTA.TPessoa.IsEmpty)then
      begin
         //Samuel Fabricio Wink - 15/1/2009: deleta pessoa
         DMEXPORTA.TPessoa.Close;
         DMEXPORTA.TPessoa.SQL.Clear;
         DMEXPORTA.TPessoa.SQL.Add('delete from pessoa');
         DMEXPORTA.TPessoa.SQL.Add('delete from pessoa.cod_pessoa ='+ xcodpessoaupdate);
         DMEXPORTA.TPessoa.ExecSQL;
      end;

    //Samuel Fabricio Wink - 15/1/2009: filtra a tabela referemte a pessoa
    FiltraTabela(DMEXPORTA.TPessoaF , 'pessoaf', 'cod_pessoa', xcodpessoaupdate, '');
    //Samuel Fabricio Wink - 15/1/2009: verifica se a tabela nao voltou vazia
    if not(DMEXPORTA.TPessoaF.IsEmpty)then
      begin
         //Samuel Fabricio Wink - 15/1/2009: deleta pessoa fisica
         DMEXPORTA.TPessoaF.Close;
         DMEXPORTA.TPessoaF.SQL.Clear;
         DMEXPORTA.TPessoaF.SQL.Add('delete from pessoaf');
         DMEXPORTA.TPessoaF.SQL.Add('where pessoaf.cod_pessoa ='+ xcodpessoaupdate);
         DMEXPORTA.TPessoaF.ExecSQL;
      end;

    //Samuel Fabricio Wink - 15/1/2009: filtra a tabela referemte a pessoa
    FiltraTabela(DMEXPORTA.TPessoaJ , 'pessoaj', 'cod_pessoa', xcodpessoaupdate, '');
    //Samuel Fabricio Wink - 15/1/2009: verifica se a tabela nao voltou vazia
    if not(DMEXPORTA.TPessoaJ.IsEmpty)then
      begin
         //Samuel Fabricio Wink - 15/1/2009: deleta pessoa juridica
         DMEXPORTA.TPessoaJ.Close;
         DMEXPORTA.TPessoaJ.SQL.Clear;
         DMEXPORTA.TPessoaJ.SQL.Add('delete from pessoaj');
         DMEXPORTA.TPessoaJ.SQL.Add('where pessoaj.cod_pessoa ='+ xcodpessoaupdate);
         DMEXPORTA.TPessoaJ.ExecSQL;
      end;

    //Samuel Fabricio Wink - 15/1/2009: filtra a tabela referemte a pessoa
    FiltraTabela(DMEXPORTA.Alx , 'telefone', 'cod_pessoa', xcodpessoaupdate, '');
    //Samuel Fabricio Wink - 15/1/2009: verifica se a tabela nao voltou vazia
    if not(DMEXPORTA.Alx.IsEmpty)then
      begin
         //Samuel Fabricio Wink - 15/1/2009: deleta telefone
         DMEXPORTA.Alx.Close;
         DMEXPORTA.Alx.SQL.Clear;
         DMEXPORTA.Alx.SQL.Add('delete from telefone');
         DMEXPORTA.Alx.SQL.Add('where telefone.cod_pessoa ='+ xcodpessoaupdate);
         DMEXPORTA.Alx.ExecSQL;
      end;

    //Samuel Fabricio Wink - 15/1/2009: filtra a tabela referemte a pessoa
    FiltraTabela(DMEXPORTA.Alx , 'pessoa', 'cod_pessoa', xcodpessoaupdate, '');
    //Samuel Fabricio Wink - 15/1/2009: verifica se a tabela nao voltou vazia
    if not(DMEXPORTA.Alx.IsEmpty)then
      begin
         //Samuel Fabricio Wink - 15/1/2009: deleta email
         DMEXPORTA.Alx.Close;
         DMEXPORTA.Alx.SQL.Clear;
         DMEXPORTA.Alx.SQL.Add('delete from email');
         DMEXPORTA.Alx.SQL.Add('where email.cod_pessoa ='+ xcodpessoaupdate);
         DMEXPORTA.Alx.ExecSQL;
      end;
end;

{Samuel Fabricio Wink - 15/1/2009: limpa banco q recebe as informacoes
	grava as informacoes necessárias, da update no bd estatico, compacta banco,
   envia por email}
procedure TFPedidoVendaConstrutora.BtnExportaClick(Sender: TObject);
begin
if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente exportar os Dados? ', '', 2, 3, False, 'C') = 2 then
   begin

   //Samuel Fabricio Wink - 17/3/2009: verifica se existe caixa aberto
   if FiltraTabela(DMCAIXA.TAbCaixa, 'abcaixa', 'fechado', 'N', '') = true then
   	begin
       	Mensagem('ATENÇÃO', 'Existe caixa aberto. Favor fechar o caixa para efetuar a exportação!!!', '', 1, 1, False, 'a');
       	Exit;
       end;
   //verifica se hove conexao
   If ConectaBancoDados(DMMACS.TLoja.FieldByName('EXPORT_OS').AsString) = true then
     begin
         try
         	//deleta as informacoges da tabela q recebe as informacoes
         	DeletaBanco;

           PComunica.BringToFront;
           PComunica.Visible := true;
           PExp.Visible := true;
           PExp.BringToFront;
           PBExport.Min := 0;
           PBExport.Max := 100;
           PBExport.Position :=10;
           LBCONEXAO.Caption := 'ESTABELECENDO CONEXÃO COM BANCO ... ';
           PExp.Refresh;

           //Samuel Fabricio Wink - 22/1/2009: exporta
           XImpExp := 'exporta';

           PBExport.Position :=15;
           LBCONEXAO.Caption := 'INSERINDO LANCAMENTOS DE CAIXA ... ';
           PExp.Refresh;

           //Samuel Fabricio Wink - 20/1/2009: insere registros de lancaixa que são feitos manual
           insertlancaixamanual;

           PBExport.Position :=20;
           LBCONEXAO.Caption := 'INSERINDO PEDIDOS DE VENDA ... ';
           PExp.Refresh;

           //insere pedvenda no banco novo
           insertpedvenda;

           PBExport.Position :=25;
           LBCONEXAO.Caption := 'INSERINDO OBRAS ... ';
           PExp.Refresh;

           //Samuel Fabricio Wink - 11/2/2009: insere obras
           insertobras;

           PBExport.Position :=30;
           LBCONEXAO.Caption := 'INSERINDO PRODUTOS ... ';
           PExp.Refresh;

           //Samuel Fabricio Wink - 15/1/2009: Insere tabelas referente a produto
           insertproduto;

           PBExport.Position :=40;
           LBCONEXAO.Caption := 'INSERINDO CLIENTES ... ';
           PExp.Refresh;

           //Samuel Fabricio Wink - 15/1/2009: Insere tabela clientes
           insertcliente;

           PBExport.Position :=50;
           LBCONEXAO.Caption := 'INSERINDO CONTAS A RECEBER ... ';
           PExp.Refresh;

           //Samuel Fabricio Wink - 20/1/2009: insere registros parcela de contas a receber
           insertparcelacr;

           PBExport.Position :=60;
           LBCONEXAO.Caption := 'INSERINDO FORMAS DE PAGAMENTO ... ';
           PExp.Refresh;

           //Samuel Fabricio Wink - 24/1/2009: insere todas as formas de pagamento
           insertformpag;

           PBExport.Position :=70;
           LBCONEXAO.Caption := 'INSERINDO PLANO DE CONTAS ... ';
           PExp.Refresh;

           //Samuel Fabricio Wink - 29/1/2009: insere todos os planos de contas
           insertplncta;

           PBExport.Position :=80;
           LBCONEXAO.Caption := 'INSERINDO USUARIOS ... ';
           PExp.Refresh;

           //Samuel Fabricio Wink - 30/1/2009: insere todos os usuario
           insertusuario;

           PBExport.Position :=90;
           LBCONEXAO.Caption := 'GERANDO BANCO PARA SER EXPORTADO ... ';
           PExp.Refresh;

           //gera a compactacao do banco e salva em sua pasta respectiva
           gerabancoexportacao;

           PBExport.Position :=100;
           LBCONEXAO.Caption := 'GERADO BANCO PARA EXPORTAÇÃO... ';
           PExp.Refresh;

           PComunica.SendToBack;
           PComunica.Visible := false;
           PExp.Visible := false;
           PExp.SendToBack;

           //gera o email para ser enviado
           enviaemail;

           //esconde painel da barra de progresso
           PComunica.SendToBack;
           PComunica.Visible := false;
         Except
         	Mensagem('ATENÇÃO', 'Não foi possível apagar os dados do banco DBMacsExp.GDB por motivo desconhecido. Favor exporte novamente, caso o problema persistir contate o suporte!', '', 1, 1, False, 'a');
       	Exit;
         end;
     end;
   end;
end;

//Samuel Fabricio Wink - 29/1/2009: insere plncata
procedure TFPedidoVendaConstrutora.insertplncta;
var
xteste : String;
begin
	FiltraTabela(DMCONTA.TPlnCta, 'plncta', '','','');
   DMCONTA.TPlnCta.First;
   while not(DMCONTA.TPlnCta.Eof)do
   	begin
         xteste := DMCONTA.TPlnCta.FieldByName('cod_plncta').AsString;
         plncta;
         DMCONTA.TPlnCta.Next;
       end;
   DMEXPORTA.IBTExporta.CommitRetaining;
end;

//Samuel Fabricio Wink - 11/2/2009: insere obras
procedure TFPedidoVendaConstrutora.insertobras;
begin
	//Samuel Fabricio Wink - 11/2/2009: busca todas as obras
	FiltraTabela(DMSAIDA.TObra, 'obra', '', '', '');
   DMSAIDA.TObra.First;
   while not(DMSAIDA.TObra.Eof)do
   	begin
       	try
             //Samuel Fabricio Wink - 11/2/2009: insere obra
             obra;
             DMSAIDA.TObra.Next;
           Except
       		Mensagem('ATENÇÃO', 'Não foi possível adicionar a obra ' + DMSAIDA.TObra.fieldByName('descricao').AsString + '!', '', 1, 1, False, 'a');
       		DMSAIDA.TObra.Next;
           end;
       end;
   //Samuel Fabricio Wink - 11/2/2009: grava registros
   DMEXPORTA.IBTExporta.CommitRetaining;
end;

//passa as informacoes para o novo banco e altera os exporta
procedure TFPedidoVendaConstrutora.insertpedvenda;
begin
  //pesquisa os pedvenda q ainda naum foram exportados
  FiltraTabela(DMSAIDA.TPedV, 'pedvenda', 'exporta', '0', '');
  DMSAIDA.TPedV.First;
  //Inicia processo de inculsao dos registros no banco vazio
  while not(DMSAIDA.TPedV.Eof)do
     begin
         try
             //guarda valor da variavel para posteriores consultas
             xcodpedvendaupdate := IntToStr(DMSAIDA.TPedV.fieldbyname('cod_pedvenda').AsInteger);
             xcodclienteupdate := IntToStr(DMSAIDA.TPedV.fieldbyname('cod_cliente').AsInteger);

  {----------------------------------------------------------------------------------------------------------------------------------------------
                               EXPORTA BLOCO DE RECEBIMENTOS DO PEDVENDA
  -----------------------------------------------------------------------------------------------------------------------------------------------}
             //Samuel Fabricio Wink - 15/1/2009: filtra para verificar c a forma de pagamento e 'À VISTA' ou a prazo
             FiltraTabela(DMFINANC.TFormPag, 'formpag', 'cod_formpag', DMSAIDA.TPedV.fieldbyname('cod_formpag').AsString, '');
             //Samuel Fabricio Wink - 15/1/2009: verifica a forma de pagamento
             if UpperCase(DMFINANC.TFormPag.FieldByName('descricao').AsString) = 'À VISTA' then
               begin
                   //Samuel Fabricio Wink - 17/1/2009: verifica a essencia do pagamento
                   if(DMSAIDA.TPedV.fieldbyname('cobranca').AsString = 'Carteira')then
                       begin
                           //Samuel Fabricio Wink - 17/1/2009: filtra tabela para pegar o registro de lancamento de caixa referente ao pedvenda
                           FiltraTabela(DMCAIXA.TLanCaixa, 'lancaixa', 'tipogerador', 'PEDVENDA', 'and lancaixa.cod_gerador = '+xcodpedvendaupdate);
                           //Samuel Fabricio Wink - 17/1/2009: insere o lancamento de caixa respectivo a pagamento a vista e em carteira
                           //lancamentocaixa;
                       end
                   else
                       begin
                           //Samuel Fabricio Wink - 17/1/2009: verifica a essencia do pagamento
                           if(DMSAIDA.TPedV.fieldbyname('cobranca').AsString = 'Cheque')then
                             begin
                               //Samuel Fabricio Wink - 19/1/2009: insere os registros referentes ao cheque
                               insertcheque;

                             end;

                             //Samuel Fabricio Wink - : verifica a essencia do pagamento
                             if(DMSAIDA.TPedV.fieldbyname('cobranca').AsString = 'Cartão')then
                               begin
                                   FiltraTabela(DMBANCO.TMovBanco, 'movbanco', 'cod_gerador', DMSAIDA.TPedV.FieldByName('cod_pedvenda').asString, '');
                                   //Samuel Fabricio Wink - 19/1/2009: insere as informacoes movbanco, banco, agencia, ctacor
                                   insertbanco;
                               end;
                       end;
               end
             else //Samuel Fabricio Wink - 16/1/2009: se nao for a vista executa
               begin
                   //Samuel Fabricio Wink - 19/1/2009: verifica qual a essencia do pagamento a prazo
                   if(DMSAIDA.TPedV.fieldbyname('cobranca').AsString = 'Carteira')then
                       begin
                           //Samuel Fabricio Wink - 19/1/2009: insere ctareceber, plncta, parcelacr
                           insertcontareceber;
                       end;

                   //Samuel Fabricio Wink - 19/1/2009: verifica qual a essencia do pagamento a prazo
                   if(DMSAIDA.TPedV.fieldbyname('cobranca').AsString = 'Cheque')then
                       begin
                           //Samuel Fabricio Wink - 19/1/2009: insere ctareceber, plncta, parcelacr
                           insertcontareceber;
                       end;

                   //Samuel Fabricio Wink - 19/1/2009: verifica qual a essencia do pagamento
                   if(DMSAIDA.TPedV.fieldbyname('cobranca').AsString = 'Cartão')then
                       begin
                           //Samuel Fabricio Wink - 19/1/2009: insere ctareceber, plncta, parcelacr
                           insertcontareceber;
                       end;
               end;

  {----------------------------------------------------------------------------------------------------------------------------------------------
                                           EXPORTA PEDVENDA
  -----------------------------------------------------------------------------------------------------------------------------------------------}

             //verifica c naum retornou vazio
             if not(DMSAIDA.TPedV.IsEmpty)then
               begin
                 //Samuel Fabricio Wink - 20/1/2009: insere registros do pedvenda
                 pedvenda;
               end;
  {----------------------------------------------------------------------------------------------------------------------------------------------
                     EXPORTA USUARIO REFERENTE AO PEDVENDA
  -----------------------------------------------------------------------------------------------------------------------------------------------}
             //Samuel Fabricio Wink - 19/1/2009:
             FiltraTabela(DMMACS.TUsuario, 'usuario', 'codusuario', DMSAIDA.TPedV.fieldbyname('cod_usuario').AsString, '');
             if not(FiltraTabela(DMEXPORTA.Alx5, 'usuario', 'codusuario', DMSAIDA.TPedV.fieldbyname('cod_usuario').AsString, '') = false)then
               begin
                   //Samuel Fabricio Wink - 21/1/2009: filtra para verifica se ja naum existe um registro no bd
                   if FiltraTabela(DMEXPORTA.Alx5, 'usuario', 'codusuario', DMSAIDA.TPedV.FieldByName('cod_usuario').AsString, '') = false then
                       begin
                           FiltraTabela(DMMACS.TUsuario, 'usuario', 'codusuario', DMSAIDA.TPedV.FieldByName('cod_usuario').AsString, '');
                           usuario;

                           if(FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_funcionario', DMMACS.TUsuario.FieldByName('codusuario').AsString, '') = false) then
                               begin
                                   funcionario;

                                   FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cod_pessoa', DMPESSOA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                                   pessoa;

                                   FiltraTabela(DMPESSOA.TPessoaF, 'pessoaf', 'cod_pessoa', DMPESSOA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                                   pessoaf;
                               end;
                       end;
               end;
  {----------------------------------------------------------------------------------------------------------------------------------------------
                     EXPORTA BLOCO ITENSPEDVENDA REFERENTE AO PEDVENDA
  -----------------------------------------------------------------------------------------------------------------------------------------------}
               //filtra tabela para pegar os itens do pedvenda referente ao pedvenda
               FiltraTabela(DMSAIDA.TItemPV, 'itenspedven', 'cod_pedven', DMSAIDA.TPedV.fieldbyname('cod_pedvenda').AsString, '');
               DMSAIDA.TItemPV.First;
               //verifica se a pesquisa naum retornou vazia
               if not(DMSAIDA.TItemPV.IsEmpty)then
                   begin
                       while not(DMSAIDA.TItemPV.Eof)do
                           begin
                               itenspedvenda;
                               DMSAIDA.TItemPV.Next;
                           end;
                   end;
  {----------------------------------------------------------------------------------------------------------------------------------------------
                         EXPORTA BLOCO CLIENTE REFERENTE AO PEDVENDA
  -----------------------------------------------------------------------------------------------------------------------------------------------}
             //filtra tabela para pegar o cliente referente ao pedvenda
             FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_cliente', DMSAIDA.TPedV.fieldbyname('cod_cliente').AsString, '');
             //verifica se a pesquisa naum retornou vazia
             if not(DMPESSOA.TCliente.IsEmpty)then
               begin
                 //Samuel Fabricio Wink - 21/1/2009: filtra para verifica se ja naum existe um registro no bd
                 if FiltraTabela(DMEXPORTA.TCliente, 'cliente', 'cod_cliente', DMPESSOA.TCliente.FieldByName('cod_cliente').AsString, '') = false then
                   begin
                     //Samuel Fabricio Wink - 15/1/2009: cliente referente ao pedido de venda
                     cliente;

                     //filtra a tabela referemte a pessoa
                     FiltraTabela(DMPESSOA.TPessoa , 'pessoa', 'cod_pessoa', DMPESSOA.TCliente.fieldbyname('COD_PESSOA').AsString, '');
                     //insere pessoa
                     if not(DMPESSOA.TPessoa.IsEmpty)then
                       begin
                           pessoa;
                       end;

                     //filtra tabela telefone referente a pessoa
                     FiltraTabela(DMPESSOA.TTelefone, 'telefone', 'cod_pessoa', DMPESSOA.TCliente.fieldbyname('COD_PESSOA').AsString, '');
                     //insere telefone
                     if not(DMPESSOA.TTelefone.IsEmpty)then
                       begin
                           while not(DMPESSOA.TTelefone.Eof)do
                               begin
                                   telefone;
                                   DMPESSOA.TTelefone.Next;
                               end;
                       end;

                     //filtra tabela email referente a pessoa
                     FiltraTabela(DMPESSOA.TEmail, 'email', 'cod_pessoa', DMPESSOA.TCliente.fieldbyname('COD_PESSOA').AsString, '');
                     //insere email
                     if not(DMPESSOA.TEmail.IsEmpty)then
                       begin
                           while not(DMPESSOA.TEmail.Eof)do
                               begin
                                   email;
                                   DMPESSOA.TEmail.Next;
                               end;
                       end;

                     //filtra a tabela referente a pessoa fisica
                     FiltraTabela(DMPESSOA.TPessoaF, 'pessoaf', 'cod_pessoa', DMPESSOA.TCliente.fieldbyname('COD_PESSOA').AsString, '');
                     //insere pessoa fisica
                     if not(DMPESSOA.TPessoaF.IsEmpty)then
                       begin
                           pessoaf;
                       end;

                     //filtra a tabela referente a pessoa juridica
                     FiltraTabela(DMPESSOA.TPessoaJ, 'pessoaj', 'cod_pessoa', DMPESSOA.TCliente.fieldbyname('COD_PESSOA').AsString, '');
                     //insere pessoa juridica
                     if not(DMPESSOA.TPessoaJ.IsEmpty)then
                       begin
                           pessoaj;
                       end;
                   end;
               end;

  {----------------------------------------------------------------------------------------------------------------------------------------------
                         EXPORTA BLOCO ALUGUEL REFERENTE AO PEDVENDA
  -----------------------------------------------------------------------------------------------------------------------------------------------}
             //filtra tabela para pegar o aluguel referente ao pedvenda
             FiltraTabela(DMESTOQUE.TAluguel, 'aluguel', 'cod_pedvenda', DMSAIDA.TPedV.fieldbyname('cod_pedvenda').AsString, '');
             //verifica se a consulta de aluguel naum voltou vazia
             if not(DMESTOQUE.TAluguel.IsEmpty)then
               begin
                 //grava aluguel referente a pedvenda
                 aluguel;

                 //guarda valor da variavel para posteriores consultas
                 xcodaluguelupdate := IntToStr(DMESTOQUE.TAluguel.fieldbyname('COD_ALUGUEL').AsInteger);
               end;

  {----------------------------------------------------------------------------------------------------------------------------------------------
                   EXPORTA BLOCO EQUIPAMENTO REFERENTE AO ALUGUEL DO PEDVENDA
  -----------------------------------------------------------------------------------------------------------------------------------------------}
             //filtra tabela para pegar o equipamento referente ao aluguel do pedvenda
             FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_equipamento', DMESTOQUE.TAluguel.FieldByName('cod_equipamento').AsString, '');
             //verifica se a consulta do equipamento nao voltou vazia
             if not(DMPESSOA.TEquip.IsEmpty)then
               begin
                   equipamento;
               end;

  {----------------------------------------------------------------------------------------------------------------------------------------------
                       EXPORTA BLOCO MOTORISTAVEICULO REFERENTE AO PEDVENDA
  -----------------------------------------------------------------------------------------------------------------------------------------------}
             //filtra tabela para pegar o motoristaveiculo referente ao pedvenda
             FiltraTabela(DMESTOQUE.TMotoristaVeiculo, 'motoristaveiculo', 'cod_pedvenda', DMSAIDA.TPedV.fieldbyname('cod_pedvenda').AsString, '');
             //verifica se a pesquisa naum retornou vazia
             if not(DMESTOQUE.TMotoristaVeiculo.IsEmpty)then
               begin
                 //grava motorista veiculo referente a pedvenda
                 motoristaveiculo;
               end;

  {----------------------------------------------------------------------------------------------------------------------------------------------
               EXPORTA BLOCO FUNCIONARIO REFERENTE A MOTORISTAVEICULO DO PEDVENDA
  -----------------------------------------------------------------------------------------------------------------------------------------------}
             //filtra tabela para pegar o funcionario referente a motorista veiculo do pedvenda
             FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_func', DMESTOQUE.TMotoristaVeiculo.fieldbyname('cod_funcionario').AsString, '');
             //verifica se a consulta de funcionario naum retornou vazia
             if not(DMPESSOA.TFuncionario.IsEmpty)then
               begin
                   //Samuel Fabricio Wink - 21/1/2009: filtra para verifica se ja naum existe um registro no bd
                   if FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_func', DMPESSOA.TFuncionario.FieldByName('cod_func').AsString, '') = false then
                       begin
                         funcionario;

                         //filtra a tabela referemte a pessoa
                         FiltraTabela(DMPESSOA.TPessoa , 'pessoa', 'cod_pessoa', DMPESSOA.TFuncionario.fieldbyname('COD_PESSOA').AsString, '');
                         //insere pessoa
                         if not(DMPESSOA.TPessoa.IsEmpty)then
                           begin
                               pessoa;
                           end;

                         //filtra tabela telefone referente a pessoa
                         FiltraTabela(DMPESSOA.TTelefone, 'telefone', 'cod_pessoa', DMPESSOA.TFuncionario.fieldbyname('COD_PESSOA').AsString, '');
                         //insere telefone
                         if not(DMPESSOA.TTelefone.IsEmpty)then
                           begin
                               while not(DMPESSOA.TTelefone.Eof)do
                                   begin
                                       telefone;
                                       DMPESSOA.TTelefone.Next;
                                   end;
                           end;

                         //filtra tabela email referente a pessoa
                         FiltraTabela(DMPESSOA.TEmail, 'email', 'cod_pessoa', DMPESSOA.TFuncionario.fieldbyname('COD_PESSOA').AsString, '');
                         //insere email
                         if not(DMPESSOA.TEmail.IsEmpty)then
                           begin
                               while not(DMPESSOA.TEmail.Eof)do
                                   begin
                                       email;
                                       DMPESSOA.TEmail.Next;
                                   end;
                           end;

                         //filtra a tabela referente a pessoa fisica
                         FiltraTabela(DMPESSOA.TPessoaF, 'pessoaf', 'cod_pessoa', DMPESSOA.TFuncionario.fieldbyname('COD_PESSOA').AsString, '');
                         //insere pessoa fisica
                         if not(DMPESSOA.TPessoaF.IsEmpty)then
                           begin
                               pessoaf;
                           end;
                       end;
               end;

  {----------------------------------------------------------------------------------------------------------------------------------------------
               EXPORTA BLOCO EQUIPAMENTO REFERENTE A MOTORISTAVEICULO DO PEDVENDA
  -----------------------------------------------------------------------------------------------------------------------------------------------}
             //filtra tabela para pegar o equipamento referente a motoristaveiculo do pedvenda
             FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'cod_equipamento', DMESTOQUE.TMotoristaVeiculo.fieldbyname('cod_equipamento').AsString, '');
             //verifica se a consulta do equipamento nao voltou vazia
             if not(DMPESSOA.TEquip.IsEmpty)then
               begin
                   equipamento;
               end;

  {----------------------------------------------------------------------------------------------------------------------------------------------
   EXPORTA BLOCO FORNECEDOR REFERENTE A EQUIPAMENTO DA TABELA MOTORISTAVEICULO DO PEDVENDA
  -----------------------------------------------------------------------------------------------------------------------------------------------}
             //filtra tabela para pegar o fornecedor referente ao equipamento da tabela motoristaveiculo do pedvenda
             FiltraTabela(DMPESSOA.TFornecedor, 'fornecedor', 'cod_fornec', DMPESSOA.TEquip.fieldbyname('cod_cliente').AsString, '');
             //verifica se a pesquisa naum retornou vazia
             if not(DMPESSOA.TFornecedor.IsEmpty)then
               begin
                   //Samuel Fabricio Wink - 21/1/2009: filtra para verifica se ja naum existe um registro no bd
                   if FiltraTabela(DMEXPORTA.TFornecedor, 'fornecedor', 'cod_fornec', DMPESSOA.TFornecedor.FieldByName('cod_fornec').AsString, '') = false then
                       begin
                         fornecedor;

                         //filtra a tabela referemte a pessoa
                         FiltraTabela(DMPESSOA.TPessoa , 'pessoa', 'cod_pessoa', DMPESSOA.TFornecedor.fieldbyname('COD_PESSOA').AsString, '');
                         //insere pessoa
                         if not(DMPESSOA.TPessoa.IsEmpty)then
                           begin
                               pessoa;
                           end;

                         //filtra tabela telefone referente a pessoa
                         FiltraTabela(DMPESSOA.TTelefone, 'telefone', 'cod_pessoa', DMPESSOA.TFornecedor.fieldbyname('COD_PESSOA').AsString, '');
                         //insere telefone
                         if not(DMPESSOA.TTelefone.IsEmpty)then
                           begin
                               while not(DMPESSOA.TTelefone.Eof)do
                                   begin
                                       telefone;
                                       DMPESSOA.TTelefone.Next;
                                   end;
                           end;

                         //filtra tabela email referente a pessoa
                         FiltraTabela(DMPESSOA.TEmail, 'email', 'cod_pessoa', DMPESSOA.TFornecedor.fieldbyname('COD_PESSOA').AsString, '');
                         //insere email
                         if not(DMPESSOA.TEmail.IsEmpty)then
                           begin
                               while not(DMPESSOA.TEmail.Eof)do
                                   begin
                                       email;
                                       DMPESSOA.TEmail.Next;
                                   end;
                           end;

                         //filtra a tabela referente a pessoa fisica
                         FiltraTabela(DMPESSOA.TPessoaF, 'pessoaf', 'cod_pessoa', DMPESSOA.TFornecedor.fieldbyname('COD_PESSOA').AsString, '');
                         //insere pessoa fisica
                         if not(DMPESSOA.TPessoaF.IsEmpty)then
                           begin
                               pessoaf;
                           end;

                         //filtra a tabela referente a pessoa juridica
                         FiltraTabela(DMPESSOA.TPessoaJ, 'pessoaj', 'cod_pessoa', DMPESSOA.TFornecedor.fieldbyname('COD_PESSOA').AsString, '');
                         //insere pessoa juridica
                         if not(DMPESSOA.TPessoaJ.IsEmpty)then
                           begin
                               pessoaj;
                           end;
                       end;
               end;

  {----------------------------------------------------------------------------------------------------------------------------------------------
                         EXPORTA BLOCO FUNCIONARIO REFERENTE AO PEDVENDA
  -----------------------------------------------------------------------------------------------------------------------------------------------}
             //filtra tabela para pegar o funcionario referente ao pedvenda
             FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_func', DMSAIDA.TPedV.fieldbyname('cod_vendedor').AsString, '');
             //verifica se a consulta de funcionario naum retornou vazia
             if not(DMPESSOA.TFuncionario.IsEmpty)then
               begin
                   //Samuel Fabricio Wink - 21/1/2009: filtra para verifica se ja naum existe um registro no bd
                   if FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_func', DMPESSOA.TFuncionario.FieldByName('cod_func').AsString, '') = false then
                       begin
                         funcionario;

                         //filtra a tabela referemte a pessoa
                         FiltraTabela(DMPESSOA.TPessoa , 'pessoa', 'cod_pessoa', DMPESSOA.TFuncionario.fieldbyname('COD_PESSOA').AsString, '');
                         //insere pessoa
                         if not(DMPESSOA.TPessoa.IsEmpty)then
                           begin
                               pessoa;
                           end;

                         //filtra tabela telefone referente a pessoa
                         FiltraTabela(DMPESSOA.TTelefone, 'telefone', 'cod_pessoa', DMPESSOA.TFuncionario.fieldbyname('COD_PESSOA').AsString, '');
                         //insere telefone
                         if not(DMPESSOA.TTelefone.IsEmpty)then
                           begin
                               while not(DMPESSOA.TTelefone.Eof)do
                                   begin
                                       telefone;
                                       DMPESSOA.TTelefone.Next;
                                   end;
                           end;

                         //filtra tabela email referente a pessoa
                         FiltraTabela(DMPESSOA.TEmail, 'email', 'cod_pessoa', DMPESSOA.TFuncionario.fieldbyname('COD_PESSOA').AsString, '');
                         //insere email
                         if not(DMPESSOA.TEmail.IsEmpty)then
                           begin
                               while not(DMPESSOA.TEmail.Eof)do
                                   begin
                                       email;
                                       DMPESSOA.TEmail.Next;
                                   end;
                           end;

                         //filtra a tabela referente a pessoa fisica
                         FiltraTabela(DMPESSOA.TPessoaF, 'pessoaf', 'cod_pessoa', DMPESSOA.TFuncionario.fieldbyname('COD_PESSOA').AsString, '');
                         //insere pessoa fisica
                         if not(DMPESSOA.TPessoaF.IsEmpty)then
                           begin
                               pessoaf;
                           end;
                       end;
               end;

  {----------------------------------------------------------------------------------------------------------------------------------------------
                     ALTERA OS CAMPOS EXPORTA DAS TABELAS REFERENTES AO PEDVENDA
  -----------------------------------------------------------------------------------------------------------------------------------------------}
             //Samuel Fabricio Wink - 5/3/2009: comita lancamentos de caixa
             DMCAIXA.IBT.CommitRetaining;

             //altera o pedvenda do bd estatico no campo exporta para ja exportado
             DMSAIDA.TAlx.Close;
             DMSAIDA.TAlx.SQL.Clear;
             DMSAIDA.TAlx.SQL.add('update pedvenda set pedvenda.exporta = 1');
             DMSAIDA.TAlx.SQL.add('where pedvenda.cod_pedvenda = '+ xcodpedvendaupdate);
             DMSAIDA.TAlx.ExecSQL;

             //altera o cliente do bd estatico no campo exporta para ja exportado
             DMPESSOA.TAlx.Close;
             DMPESSOA.TAlx.SQL.Clear;
             DMPESSOA.TAlx.SQL.add('update cliente set cliente.export = 1');
             DMPESSOA.TAlx.SQL.add('where cliente.cod_cliente = '+ xcodclienteupdate);
             DMPESSOA.TAlx.ExecSQL;

             if(xcodaluguelupdate <> '0') and (xcodaluguelupdate <> '')then
               begin
                 //altera o aluguel do bd estatico no campo exporta para ja exportado
                 DMESTOQUE.Alx.Close;
                 DMESTOQUE.Alx.SQL.Clear;
                 DMESTOQUE.Alx.SQL.add('update aluguel set aluguel.exporta = 1');
                 DMESTOQUE.Alx.SQL.add('where aluguel.cod_pedvenda = '+ xcodaluguelupdate);
                 DMESTOQUE.Alx.ExecSQL;
               end;

             //comita as informacoes em ambos bancos
             DMEXPORTA.IBTExporta.CommitRetaining;
             DMSAIDA.IBT.CommitRetaining;
             DMPESSOA.TransacPessoa.CommitRetaining;
             DMESTOQUE.TransacEstoque.CommitRetaining;

         Except
             //Samuel Fabricio Wink - 15/1/2009: Naum envia as informacoes referente a esse pedvenda
             DMEXPORTA.IBTExporta.RollbackRetaining;
             DMSAIDA.IBT.RollbackRetaining;
             DMPESSOA.TransacPessoa.RollbackRetaining;
             DMESTOQUE.TransacEstoque.RollbackRetaining;
         end;

         //passa para o seguinte ped venda
         DMSAIDA.TPedV.Next;

     end;//Samuel Fabricio Wink - 15/1/2009: fim do while do pedvenda
end;

//Samuel Fabricio Wink - 24/1/2009: insere form pag
procedure TFPedidoVendaConstrutora.insertformpag;
begin
	FiltraTabela(DMFINANC.TFormPag, 'formpag','','','');
   DMFINANC.TFormPag.First;
   while not(DMFINANC.TFormPag.Eof)do
   	begin
       	formpag;
           DMFINANC.TFormPag.Next;
       end;
   DMEXPORTA.IBTExporta.CommitRetaining;
end;

//Samuel Fabricio Wink - 30/1/2009: insere todos os usuarios
procedure TFPedidoVendaConstrutora.insertusuario;
begin
	//Samuel Fabricio Wink - 30/1/2009: busca todos os usuario para exportar
   FiltraTabela(DMMACS.TUsuario, 'usuario', '', '', '');
   DMMACS.TUsuario.First;
   while not(DMMACS.TUsuario.Eof)do
   	begin
       	//Samuel Fabricio Wink - 30/1/2009: insere usuario
       	usuario;
           //Samuel Fabricio Wink - 30/1/2009: insere funcionario
           FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_func', DMMACS.TUsuario.FieldByName('cod_funcionario').AsString, '');
           funcionario;
           //Samuel Fabricio Wink - 30/1/2009: insere pessoa
           FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cod_pessoa', DMPESSOA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
           pessoa;
           //Samuel Fabricio Wink - 30/1/2009: insere pessoa fisica
           FiltraTabela(DMPESSOA.TPessoaF, 'pessoaf', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString,'');
           pessoaf;
           //Samuel Fabricio Wink - 30/1/2009: insere email
           FiltraTabela(DMPESSOA.TEmail, 'email', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString, '');
           DMPESSOA.TEmail.First;
        	while not(DMPESSOA.TEmail.Eof)do
           	begin
               	email;
                   DMPESSOA.TEmail.Next;
               end;
           //Samuel Fabricio Wink - 30/1/2009: insere telefone
           FiltraTabela(DMPESSOA.TTelefone, 'telefone', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString, '');
           DMPESSOA.TTelefone.First;
        	while not(DMPESSOA.TTelefone.Eof)do
           	begin
               	telefone;
                   DMPESSOA.TTelefone.Next;
               end;

           DMMACS.TUsuario.Next;
           //Samuel Fabricio Wink - 30/1/2009: grava registro
           DMEXPORTA.IBTExporta.CommitRetaining;
        end;
end;

//Samuel Fabricio Wink - 6/2/2009: verifica se ctareceber é derivada de um pedvenda
procedure TFPedidoVendaConstrutora.verificactareceber;
begin
	while not(DMCONTA.TParcCR.Eof)do
   	begin
         //Samuel Fabricio Wink - 20/1/2009: deixa aberta a tabela ctareceber aberta para pesquisa
         FiltraTabela(DMCONTA.TCtaR, 'ctareceber', 'cod_ctareceber', DMCONTA.TParcCR.FieldByName('cod_ctareceber').AsString,'');

         //Samuel Fabricio Wink - 6/2/2009: verifica se a parcela é ligada a uma cta receber que esta vinculada a um pedvenda
         if FiltraTabela(DMSAIDA.TPedV, 'pedvenda', 'numped', DMCONTA.TCtaR.FieldByName('numdoc').AsString, '') = false then
             begin
                 DMCONTA.TParcCR.Next;
             end
         else
         	begin
           	exit;
           end;
         end;
end;

//Samuel Fabricio Wink - 20/1/2009: insere registros referentes as parcelas de contas a receber;
procedure TFPedidoVendaConstrutora.insertparcelacr;
begin
	try
     xcodparcelacrupdate := '';//Samuel Fabricio Wink - 26/1/2009:	gambi
     //Samuel Fabricio Wink - 20/1/2009: busca parcelas para exportacao
     FiltraTabela(DMCONTA.TParcCR, 'parcelacr', 'exporta', '0', '');
     DMCONTA.TParcCR.First;
     //Samuel Fabricio Wink - 20/1/2009: verifica se a pesquisa nao voltou vazia
     if not(DMCONTA.TParcCR.IsEmpty)then
     	begin
       	//Samuel Fabricio Wink - 20/1/2009: insere todos os registros para exportacao referente a parcelacr
       	while not(DMCONTA.TParcCR.Eof)do
           	begin
					//Samuel Fabricio Wink - 6/2/2009: verifica se ctareceber é derivada de um pedvenda
					//Samuel Fabricio Wink - 5/3/2009: foi retirado para q as contas a receber naum atreladas a um pedvenda possam ser exportadas
               	//verificactareceber;

               	xcodparcelacrupdate := DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString;
               	//Samuel Fabricio Wink - 20/1/2009: deixa aberta a tabela ctareceber aberta para pesquisa
               	FiltraTabela(DMCONTA.TCtaR, 'ctareceber', 'cod_ctareceber', DMCONTA.TParcCR.FieldByName('cod_ctareceber').AsString,'');

               	//Samuel Fabricio Wink - 20/1/2009: verifica a essencia do pagamento da parcela
                   if DMCONTA.TParcCR.FieldByName('cobranca').AsString = 'Carteira' then
                   	begin
                       	//Samuel Fabricio Wink - 20/1/2009: verifica se a ctareceber ja nao esta inserida para nao haver duplicacao de informacao
                       	if FiltraTabela(DMEXPORTA.TCtaR, 'ctareceber', 'cod_ctareceber', DMCONTA.TParcCR.FieldByName('cod_ctareceber').AsString,'') = false then
                           	begin
                               	ctareceber;
                               end;
                           //Samuel Fabricio Wink - 20/1/2009: insere registro de parcelacr
                           //if not(DMCONTA.TParcCR.Eof)then
                           	//begin
                               	parcelacr;
                               //end;
                           //Samuel Fabricio Wink - 20/1/2009: so executa quando o campo fech da parcelacr esta como 's'
                           FiltraTabela(DMCAIXA.TLanCaixa, 'lancaixa','cod_gerador', DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString,'');
                           DMCAIXA.TLanCaixa.First;
                           if not(DMCAIXA.TLanCaixa.IsEmpty)then
                           	begin
                               	while not(DMCAIXA.TLanCaixa.Eof)do
                                   	begin
                                       	lancamentocaixa;
                                           DMCAIXA.TLanCaixa.Next;
                                       end;
                               end;
                       end;

                   //Samuel Fabricio Wink - 20/1/2009: verifica a essencia do pagamento da parcela
                   if DMCONTA.TParcCR.FieldByName('cobranca').AsString = 'Cheque' then
                   	begin
                       	//Samuel Fabricio Wink - 20/1/2009: verifica se a ctareceber ja nao esta inserida para nao haver duplicacao de informacao
                       	if FiltraTabela(DMEXPORTA.Alx5, 'ctareceber', 'cod_ctareceber', DMCONTA.TParcCR.FieldByName('cod_ctareceber').AsString,'') = false then
                           	begin
                               	ctareceber;
                               end;
                           //Samuel Fabricio Wink - 20/1/2009: insere registro de parcelacr
                           //if(DMCONTA.TParcCR.Eof)then
                           	//begin
                               	parcelacr;
                               //end;
                           //Samuel Fabricio Wink - 20/1/2009: insere cheque
                           insertcheque;

                       end;

                   //Samuel Fabricio Wink - 20/1/2009: verifica a essencia do pagamento da parcela
                   if DMCONTA.TParcCR.FieldByName('cobranca').AsString = 'Cartão' then
                   	begin
                       	//Samuel Fabricio Wink - 20/1/2009: verifica se a ctareceber ja nao esta inserida para nao haver duplicacao de informacao
                       	if FiltraTabela(DMEXPORTA.Alx5, 'ctareceber', 'cod_ctareceber', DMCONTA.TParcCR.FieldByName('cod_ctareceber').AsString,'') = false then
                           	begin
                               	ctareceber;
                               end;
                           //Samuel Fabricio Wink - 20/1/2009: insere registro de parcelacr
                           //if(DMCONTA.TParcCR.Eof)then
                           	//begin
                               	parcelacr;
                               //end;
                           FiltraTabela(DMBANCO.TMovBanco, 'movbanco', 'cod_gerador', DMCONTA.TParcCR.FieldByName('cod_parcelacr').asString, '');
                           insertbanco;
                       end;

                   DMCONTA.TParcCR.Next;
               end;
       end;
       if(xcodparcelacrupdate <> '')then
       	begin
             DMCONTA.TAlx.Close;
             DMCONTA.TAlx.SQL.clear;
             DMCONTA.TAlx.SQL.add('update parcelacr set parcelacr.exporta = 1');
             DMCONTA.TAlx.SQL.add('where parcelacr.cod_parcelacr = '+ xcodparcelacrupdate);
             DMCONTA.TAlx.ExecSQL;
           end;

       DMEXPORTA.IBTExporta.CommitRetaining;
       DMCONTA.IBT.CommitRetaining;
   Except
   	DMEXPORTA.IBTExporta.RollbackRetaining;
   end;
end;

//Samuel Fabricio Wink - 5/3/2009: insere lancamentos de caixa efetuados manualemnte
procedure TFPedidoVendaConstrutora.insertlancaixamanual;
begin
	//Samuel Fabricio Wink - 5/3/2009: filtra o restante de lancamentos
   FiltraTabela(DMCAIXA.TLanCaixa, 'lancaixa', '', '', '');
   DMCAIXA.TLanCaixa.First;

   //Samuel Fabricio Wink - 5/3/2009: inicia processo de insercao de lancaixa
   while not(DMCAIXA.TLanCaixa.Eof) do
   	begin
       	try
           	//Samuel Fabricio Wink - 17/3/2009: verifica se naum existe já o lancamento especifico
               if FiltraTabela(DMEXPORTA.TLanCaixa, 'lancaixa', 'cod_lanc', DMCAIXA.TLanCaixa.FieldByName('cod_lanc').AsString, '') = false then
               	begin
                       //Samuel Fabricio Wink - 5/3/2009: verifica a que caixa pertence o respectivo lancamento
                       if FiltraTabela(DMCAIXA.TAbCaixa, 'abcaixa', '.', '', 'abcaixa.cod_abcaixa = ' + #39 + DMCAIXA.TLanCaixa.FieldByName('cod_abcaixa').AsString + #39 + ' and abcaixa.fechado = ' + #39 + 'S' + #39) = true then
                           begin
                             //Samuel Fabricio Wink - 5/3/2009: abre tabela caixa
                             FiltraTabela(DMCAIXA.TCaixa, 'caixa', 'cod_caixa', DMCAIXA.TAbCaixa.FieldByName('cod_caixa').AsString, '');

                             //Samuel Fabricio Wink - 5/3/2009: verfica se existe abcaixa já no exporta
                             if FiltraTabela(DMEXPORTA.TAbCaixa, 'abcaixa', 'cod_abcaixa', DMCAIXA.TAbCaixa.FieldByName('cod_abcaixa').AsString, '') = false then
                                 begin
                                     //Samuel Fabricio Wink - 5/3/2009: verifica se existe caxa corresponente
                                     if FiltraTabela(DMEXPORTA.Alx5, 'caixa', 'cod_caixa', DMCAIXA.TCaixa.FieldByName('cod_caixa').AsString, '') = false then
                                         begin
                                             //Samuel Fabricio Wink - 5/3/2009: insere caixa no bd exporta
                                             caixa;
                                         end;

                                     //Samuel Fabricio Wink - 5/3/2009: insere abertura de caixa co bd exporta
                                     abcaixa;
                                 end;

                             //Samuel Fabricio Wink - 5/3/2009: insere lancaixa no bd exporta
                             lancamentocaixa;

                             //Samuel Fabricio Wink - 5/3/2009: comita registro
                             DMEXPORTA.IBTExporta.CommitRetaining;
                             DMCAIXA.IBT.CommitRetaining;
                           end;
               	end;
                   //Samuel Fabricio Wink - 5/3/2009: passa para o seguinte registro
                   DMCAIXA.TLanCaixa.Next;
           Except
   			DMEXPORTA.IBTExporta.RollbackRetaining;

               DMCAIXA.IBT.RollbackRetaining;

               //Samuel Fabricio Wink - 5/3/2009: passa para o seguinte registro
               DMCAIXA.TLanCaixa.Next;

               //Samuel Fabricio Wink - 5/3/2009: gera lod de erro
               GeraLogWink(Date(), Time(), 'Não foi possível gerar exportação do lançamento de caixa ' + DMCAIXA.TLanCaixa.FieldByName('cod_lanc').AsString);
   		end;
       end;
end;


//Samuel Fabricio Wink - 5/3/2009: insere registro referente a caixa
procedure TFPedidoVendaConstrutora.caixa;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMCAIXA.TCaixa;
           xtbrecebe := DMEXPORTA.Alx5;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into CAIXA');
           xtbrecebe.SQL.Add('(COD_CAIXA, NUMCAIXA, DESCRICAO, COD_LOJA, COD_USUARIO, SALDO, TIPOCUPOM,');
           xtbrecebe.SQL.Add('PORTACUPOM, FRASECUPOM, PRIMTITCUPOM, SEGTITCUPOM, TERTITCUPOM, MODELO_IMPRESSORA,');
           xtbrecebe.SQL.Add('ENDERECO_BD, MARK)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_CAIXA, :NUMCAIXA, :DESCRICAO, :COD_LOJA, :COD_USUARIO, :SALDO,');
           xtbrecebe.SQL.Add(':TIPOCUPOM, :PORTACUPOM, :FRASECUPOM, :PRIMTITCUPOM, :SEGTITCUPOM, :TERTITCUPOM,');
           xtbrecebe.SQL.Add(':MODELO_IMPRESSORA, :ENDERECO_BD, :MARK)');
           xtbrecebe.ParamByName('COD_CAIXA').AsInteger := xtbexporta.FieldByName('COD_CAIXA').AsInteger;

       end
   else
   	begin
       	xtbexporta := DMEXPORTA.Alx5;
           xtbrecebe := DMCAIXA.TCaixa;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into CAIXA');
                   xtbrecebe.SQL.Add('(COD_CAIXA, NUMCAIXA, DESCRICAO, COD_LOJA, COD_USUARIO, SALDO, TIPOCUPOM,');
                   xtbrecebe.SQL.Add('PORTACUPOM, FRASECUPOM, PRIMTITCUPOM, SEGTITCUPOM, TERTITCUPOM, MODELO_IMPRESSORA,');
                   xtbrecebe.SQL.Add('ENDERECO_BD, MARK)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_CAIXA, :NUMCAIXA, :DESCRICAO, :COD_LOJA, :COD_USUARIO, :SALDO,');
                   xtbrecebe.SQL.Add(':TIPOCUPOM, :PORTACUPOM, :FRASECUPOM, :PRIMTITCUPOM, :SEGTITCUPOM, :TERTITCUPOM,');
                   xtbrecebe.SQL.Add(':MODELO_IMPRESSORA, :ENDERECO_BD, :MARK)');
                   xtbrecebe.ParamByName('COD_CAIXA').AsInteger := StrToInt(xcodcaixaupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update CAIXA set');
                   xtbrecebe.SQL.Add('NUMCAIXA = :NUMCAIXA, DESCRICAO = :DESCRICAO, COD_LOJA = :COD_LOJA, COD_USUARIO = :COD_USUARIO,');
                   xtbrecebe.SQL.Add('SALDO = :SALDO, TIPOCUPOM = :TIPOCUPOM, PORTACUPOM = :PORTACUPOM, FRASECUPOM = :FRASECUPOM, PRIMTITCUPOM = :PRIMTITCUPOM,');
                   xtbrecebe.SQL.Add('SEGTITCUPOM = :SEGTITCUPOM, TERTITCUPOM = :TERTITCUPOM, MODELO_IMPRESSORA = :MODELO_IMPRESSORA, ENDERECO_BD = :ENDERECO_BD,');
                   xtbrecebe.SQL.Add('MARK = :MARK');
                   xtbrecebe.SQL.Add('where COD_CAIXA = '+ xcodupdate);

               end;
       end;

   xtbrecebe.ParamByName('NUMCAIXA').AsString := xtbexporta.FieldByName('NUMCAIXA').AsString;
   xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
   xtbrecebe.ParamByName('COD_LOJA').AsInteger := xtbexporta.FieldByName('COD_LOJA').AsInteger;
   xtbrecebe.ParamByName('COD_USUARIO').AsInteger := xtbexporta.FieldByName('COD_USUARIO').AsInteger;
   xtbrecebe.ParamByName('SALDO').AsFloat := xtbexporta.FieldByName('SALDO').AsFloat;
   xtbrecebe.ParamByName('TIPOCUPOM').AsString := xtbexporta.FieldByName('TIPOCUPOM').AsString;
   xtbrecebe.ParamByName('PORTACUPOM').AsString := xtbexporta.FieldByName('PORTACUPOM').AsString;
   xtbrecebe.ParamByName('FRASECUPOM').AsString := xtbexporta.FieldByName('FRASECUPOM').AsString;
   xtbrecebe.ParamByName('PRIMTITCUPOM').AsString := xtbexporta.FieldByName('PRIMTITCUPOM').AsString;
   xtbrecebe.ParamByName('SEGTITCUPOM').AsString := xtbexporta.FieldByName('SEGTITCUPOM').AsString;
   xtbrecebe.ParamByName('TERTITCUPOM').AsString := xtbexporta.FieldByName('TERTITCUPOM').AsString;
   xtbrecebe.ParamByName('MODELO_IMPRESSORA').AsString := xtbexporta.FieldByName('MODELO_IMPRESSORA').AsString;
   xtbrecebe.ParamByName('ENDERECO_BD').AsString := xtbexporta.FieldByName('ENDERECO_BD').AsString;
   xtbrecebe.ParamByName('MARK').AsString := xtbexporta.FieldByName('MARK').AsString;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 5/3/2009: insere registro referente a abcaixa
procedure TFPedidoVendaConstrutora.abcaixa;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMCAIXA.TAbCaixa;
           xtbrecebe := DMEXPORTA.TAbCaixa;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into ABCAIXA');
           xtbrecebe.SQL.Add('(COD_ABCAIXA, COD_CAIXA, DTABERTURA, HORAABERTURA, SALDOINI, SALDOFIN,');
           xtbrecebe.SQL.Add('DTFECHA, HORAFECHA, FECHADO, COD_USUARIO)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_ABCAIXA, :COD_CAIXA, :DTABERTURA, :HORAABERTURA, :SALDOINI, :SALDOFIN,');
           xtbrecebe.SQL.Add(':DTFECHA, :HORAFECHA, :FECHADO, :COD_USUARIO)');
           xtbrecebe.ParamByName('COD_ABCAIXA').AsInteger := xtbexporta.FieldByName('COD_ABCAIXA').AsInteger;
           xtbrecebe.ParamByName('COD_USUARIO').AsInteger := xtbexporta.FieldByName('COD_USUARIO').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.Alx5;
           xtbrecebe := DMCAIXA.TCaixa;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into ABCAIXA');
                   xtbrecebe.SQL.Add('(COD_ABCAIXA, COD_CAIXA, DTABERTURA, HORAABERTURA, SALDOINI, SALDOFIN,');
                   xtbrecebe.SQL.Add('DTFECHA, HORAFECHA, FECHADO, COD_USUARIO)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_ABCAIXA, :COD_CAIXA, :DTABERTURA, :HORAABERTURA, :SALDOINI, :SALDOFIN,');
                   xtbrecebe.SQL.Add(':DTFECHA, :HORAFECHA, :FECHADO, :COD_USUARIO)');
                   xtbrecebe.ParamByName('COD_ABCAIXA').AsInteger := StrToInt(xcodabcaixaupdate);
                   xtbrecebe.ParamByName('COD_USUARIO').AsInteger := StrToInt(xcodusuarioupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update ABCAIXA set');
                   xtbrecebe.SQL.Add('COD_CAIXA = :COD_CAIXA, DTABERTURA = :DTABERTURA, HORAABERTURA = :HORAABERTURA, SALDOINI = :SALDOINI,');
                   xtbrecebe.SQL.Add('SALDOFIN = :SALDOFIN, DTFECHA = :DTFECHA, HORAFECHA = :HORAFECHA, FECHADO = :FECHADO, COD_USUARIO = :COD_USUARIO');
                   xtbrecebe.SQL.Add('where COD_ABCAIXA = ' + xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('COD_CAIXA').AsInteger := xtbexporta.FieldByName('COD_CAIXA').AsInteger;
   xtbrecebe.ParamByName('DTABERTURA').AsDateTime := xtbexporta.FieldByName('DTABERTURA').AsDateTime;
   xtbrecebe.ParamByName('HORAABERTURA').AsTime := xtbexporta.FieldByName('HORAABERTURA').AsDateTime;
   xtbrecebe.ParamByName('SALDOINI').AsFloat := xtbexporta.FieldByName('SALDOINI').AsFloat;
   xtbrecebe.ParamByName('SALDOFIN').AsFloat := xtbexporta.FieldByName('SALDOFIN').AsFloat;
   xtbrecebe.ParamByName('DTFECHA').AsDateTime := xtbexporta.FieldByName('DTFECHA').AsDateTime;
   xtbrecebe.ParamByName('HORAFECHA').AsTime := xtbexporta.FieldByName('HORAFECHA').AsDateTime;
   xtbrecebe.ParamByName('FECHADO').AsString := xtbexporta.FieldByName('FECHADO').AsString;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
procedure TFPedidoVendaConstrutora.subproduto;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMESTOQUE.TSubProd;
           xtbrecebe := DMEXPORTA.TSubProd;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into SUBPRODUTO');
           xtbrecebe.SQL.Add('(COD_SUBPRODUTO, CODCOMPOSTO, DESCRICAO, CODBARRA, CODPRODFABR, FABRICANTE,');
           xtbrecebe.SQL.Add('MARCA, QUANTGARANTIA, TIPOGARANTIA, LOCALESTANTE, ATIVO, IPIPROD, PESOLIQ,');
           xtbrecebe.SQL.Add('PESOBRUTO, COD_PRODUTO, COD_INTERNO, MOTIVO, QTDATC, EMBPROD, LOTE,');
           xtbrecebe.SQL.Add('PENEIRA, GERMI, PUREZA, ATESTVAL, ATESTGAR, SAFRA, COD_UNIDCOMPRA, COD_UNIDVENDA,');
           xtbrecebe.SQL.Add('COD_CST, DTCAD, CODEAN1, CONTRINT, COR, CLASSIFICACAO, DESCCUPOM, NCM,');
           xtbrecebe.SQL.Add('OBSFISCAL, COMPOSICAO, ALTURA, LARGURA, ESPECIFICACAO, MARK, BALANCA,');
           xtbrecebe.SQL.Add('ANVISA, MINSAUDE, DENSIDADE)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_SUBPRODUTO, :CODCOMPOSTO, :DESCRICAO, :CODBARRA, :CODPRODFABR,');
           xtbrecebe.SQL.Add(':FABRICANTE, :MARCA, :QUANTGARANTIA, :TIPOGARANTIA, :LOCALESTANTE, :ATIVO,');
           xtbrecebe.SQL.Add(':IPIPROD, :PESOLIQ, :PESOBRUTO, :COD_PRODUTO, :COD_INTERNO, :MOTIVO,');
           xtbrecebe.SQL.Add(':QTDATC, :EMBPROD, :LOTE, :PENEIRA, :GERMI, :PUREZA, :ATESTVAL, :ATESTGAR,');
           xtbrecebe.SQL.Add(':SAFRA, :COD_UNIDCOMPRA, :COD_UNIDVENDA, :COD_CST, :DTCAD, :CODEAN1,');
           xtbrecebe.SQL.Add(':CONTRINT, :COR, :CLASSIFICACAO, :DESCCUPOM, :NCM, :OBSFISCAL, :COMPOSICAO,');
           xtbrecebe.SQL.Add(':ALTURA, :LARGURA, :ESPECIFICACAO, :MARK, :BALANCA, :ANVISA, :MINSAUDE, :DENSIDADE)');
           xtbrecebe.ParamByName('COD_SUBPRODUTO').AsInteger := xtbexporta.FieldByName('COD_SUBPRODUTO').AsInteger;
           xtbrecebe.ParamByName('COD_PRODUTO').AsInteger := xtbexporta.FieldByName('COD_PRODUTO').AsInteger;
           xtbrecebe.ParamByName('COD_UNIDCOMPRA').AsInteger := xtbexporta.FieldByName('COD_UNIDCOMPRA').AsInteger;
           xtbrecebe.ParamByName('COD_UNIDVENDA').AsInteger := xtbexporta.FieldByName('COD_UNIDVENDA').AsInteger;
           xtbrecebe.ParamByName('COD_CST').AsInteger := xtbexporta.FieldByName('COD_CST').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TSubProd;
           xtbrecebe := DMESTOQUE.TSubProd;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into SUBPRODUTO');
                   xtbrecebe.SQL.Add('(COD_SUBPRODUTO, CODCOMPOSTO, DESCRICAO, CODBARRA, CODPRODFABR, FABRICANTE,');
                   xtbrecebe.SQL.Add('MARCA, QUANTGARANTIA, TIPOGARANTIA, LOCALESTANTE, ATIVO, IPIPROD, PESOLIQ,');
                   xtbrecebe.SQL.Add('PESOBRUTO, COD_PRODUTO, COD_INTERNO, MOTIVO, QTDATC, EMBPROD, LOTE,');
                   xtbrecebe.SQL.Add('PENEIRA, GERMI, PUREZA, ATESTVAL, ATESTGAR, SAFRA, COD_UNIDCOMPRA, COD_UNIDVENDA,');
                   xtbrecebe.SQL.Add('COD_CST, DTCAD, CODEAN1, CONTRINT, COR, CLASSIFICACAO, DESCCUPOM, NCM,');
                   xtbrecebe.SQL.Add('OBSFISCAL, COMPOSICAO, ALTURA, LARGURA, ESPECIFICACAO, MARK, BALANCA,');
                   xtbrecebe.SQL.Add('ANVISA, MINSAUDE, DENSIDADE)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_SUBPRODUTO, :CODCOMPOSTO, :DESCRICAO, :CODBARRA, :CODPRODFABR,');
                   xtbrecebe.SQL.Add(':FABRICANTE, :MARCA, :QUANTGARANTIA, :TIPOGARANTIA, :LOCALESTANTE, :ATIVO,');
                   xtbrecebe.SQL.Add(':IPIPROD, :PESOLIQ, :PESOBRUTO, :COD_PRODUTO, :COD_INTERNO, :MOTIVO,');
                   xtbrecebe.SQL.Add(':QTDATC, :EMBPROD, :LOTE, :PENEIRA, :GERMI, :PUREZA, :ATESTVAL, :ATESTGAR,');
                   xtbrecebe.SQL.Add(':SAFRA, :COD_UNIDCOMPRA, :COD_UNIDVENDA, :COD_CST, :DTCAD, :CODEAN1,');
                   xtbrecebe.SQL.Add(':CONTRINT, :COR, :CLASSIFICACAO, :DESCCUPOM, :NCM, :OBSFISCAL, :COMPOSICAO,');
                   xtbrecebe.SQL.Add(':ALTURA, :LARGURA, :ESPECIFICACAO, :MARK, :BALANCA, :ANVISA, :MINSAUDE, :DENSIDADE)');
                   xtbrecebe.ParamByName('COD_SUBPRODUTO').AsInteger := StrToInt(xcodsubprodutoupdate);
               	xtbrecebe.ParamByName('COD_PRODUTO').AsInteger := StrToInt(xcodprodutoupdate);
               	xtbrecebe.ParamByName('COD_UNIDCOMPRA').AsInteger := StrToInt(xunidcompra);
   				xtbrecebe.ParamByName('COD_UNIDVENDA').AsInteger := StrToInt(xunidvenda);
               	xtbrecebe.ParamByName('COD_CST').AsInteger := xtbexporta.FieldByName('COD_CST').AsInteger;
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update SUBPRODUTO set');
                   xtbrecebe.SQL.Add('CODCOMPOSTO = :CODCOMPOSTO, DESCRICAO = :DESCRICAO, CODBARRA = :CODBARRA, CODPRODFABR = :CODPRODFABR,');
                   xtbrecebe.SQL.Add('FABRICANTE = :FABRICANTE, MARCA = :MARCA, QUANTGARANTIA = :QUANTGARANTIA, TIPOGARANTIA = :TIPOGARANTIA, LOCALESTANTE = :LOCALESTANTE, ATIVO = :ATIVO,');
                   xtbrecebe.SQL.Add('IPIPROD = :IPIPROD, PESOLIQ = :PESOLIQ, PESOBRUTO = :PESOBRUTO, COD_PRODUTO = :COD_PRODUTO, COD_INTERNO = :COD_INTERNO, MOTIVO = :MOTIVO,');
                   xtbrecebe.SQL.Add('QTDATC = :QTDATC, EMBPROD = :EMBPROD, LOTE = :LOTE, PENEIRA = :PENEIRA, GERMI = :GERMI, PUREZA = :PUREZA, ATESTVAL = :ATESTVAL, ATESTGAR = :ATESTGAR,');
                   xtbrecebe.SQL.Add('SAFRA = :SAFRA, COD_UNIDCOMPRA = :COD_UNIDCOMPRA, COD_UNIDVENDA = :COD_UNIDVENDA, COD_CST = :COD_CST, DTCAD = :DTCAD, CODEAN1 = :CODEAN1,');
                   xtbrecebe.SQL.Add('CONTRINT = :CONTRINT, COR = :COR, CLASSIFICACAO = :CLASSIFICACAO, DESCCUPOM = :DESCCUPOM, NCM = :NCM, OBSFISCAL = :OBSFISCAL, COMPOSICAO = :COMPOSICAO,');
                   xtbrecebe.SQL.Add('ALTURA = :ALTURA, LARGURA = :LARGURA, ESPECIFICACAO = :ESPECIFICACAO, MARK = :MARK, BALANCA = :BALANCA, ANVISA = :ANVISA, MINSAUDE = :MINSAUDE, DENSIDADE = :DENSIDADE');
               	xtbrecebe.SQL.Add('where COD_SUBPRODUTO = '+ xcodupdate);
               	xtbrecebe.ParamByName('COD_PRODUTO').AsInteger := StrToInt(xcodprodutoupdate);
               	xtbrecebe.ParamByName('COD_UNIDCOMPRA').AsInteger := StrToInt(xunidcompra);
   				xtbrecebe.ParamByName('COD_UNIDVENDA').AsInteger := StrToInt(xunidvenda);
               	xtbrecebe.ParamByName('COD_CST').AsInteger := xtbexporta.FieldByName('COD_CST').AsInteger;
               end;
       end;

   xtbrecebe.ParamByName('CODCOMPOSTO').AsString := xtbexporta.FieldByName('CODCOMPOSTO').AsString;
   xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
   xtbrecebe.ParamByName('CODBARRA').AsString := xtbexporta.FieldByName('CODBARRA').AsString;
   xtbrecebe.ParamByName('CODPRODFABR').AsString := xtbexporta.FieldByName('CODPRODFABR').AsString;
   xtbrecebe.ParamByName('FABRICANTE').AsString := xtbexporta.FieldByName('FABRICANTE').AsString;
   xtbrecebe.ParamByName('MARCA').AsString := xtbexporta.FieldByName('MARCA').AsString;
   xtbrecebe.ParamByName('QUANTGARANTIA').AsFloat := xtbexporta.FieldByName('QUANTGARANTIA').AsFloat;
   xtbrecebe.ParamByName('TIPOGARANTIA').AsString := xtbexporta.FieldByName('TIPOGARANTIA').AsString;
   xtbrecebe.ParamByName('LOCALESTANTE').AsString := xtbexporta.FieldByName('LOCALESTANTE').AsString;
   xtbrecebe.ParamByName('ATIVO').AsString := xtbexporta.FieldByName('ATIVO').AsString;
   xtbrecebe.ParamByName('IPIPROD').AsFloat := xtbexporta.FieldByName('IPIPROD').AsFloat;
   xtbrecebe.ParamByName('PESOLIQ').AsFloat := xtbexporta.FieldByName('PESOLIQ').AsFloat;
   xtbrecebe.ParamByName('PESOBRUTO').AsFloat := xtbexporta.FieldByName('PESOBRUTO').AsFloat;
   //xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.FieldByName('COD_INTERNO').AsString;
   xtbrecebe.ParamByName('MOTIVO').AsString := xtbexporta.FieldByName('MOTIVO').AsString;
   xtbrecebe.ParamByName('QTDATC').AsFloat := xtbexporta.FieldByName('QTDATC').AsFloat;
   xtbrecebe.ParamByName('EMBPROD').AsFloat := xtbexporta.FieldByName('EMBPROD').AsFloat;
   xtbrecebe.ParamByName('LOTE').AsString := xtbexporta.FieldByName('LOTE').AsString;
   xtbrecebe.ParamByName('PENEIRA').AsString := xtbexporta.FieldByName('PENEIRA').AsString;
   xtbrecebe.ParamByName('GERMI').AsFloat := xtbexporta.FieldByName('GERMI').AsFloat;
   xtbrecebe.ParamByName('PUREZA').AsFloat := xtbexporta.FieldByName('PUREZA').AsFloat;
   xtbrecebe.ParamByName('ATESTVAL').AsString := xtbexporta.FieldByName('ATESTVAL').AsString;
   xtbrecebe.ParamByName('ATESTGAR').AsString := xtbexporta.FieldByName('ATESTGAR').AsString;
   xtbrecebe.ParamByName('SAFRA').AsString := xtbexporta.FieldByName('SAFRA').AsString;
   xtbrecebe.ParamByName('DTCAD').AsDate := xtbexporta.FieldByName('DTCAD').AsDateTime;
   xtbrecebe.ParamByName('CODEAN1').AsString := xtbexporta.FieldByName('CODEAN1').AsString;
   xtbrecebe.ParamByName('CONTRINT').AsString := xtbexporta.FieldByName('CONTRINT').AsString;
   xtbrecebe.ParamByName('COR').AsString := xtbexporta.FieldByName('COR').AsString;
   xtbrecebe.ParamByName('CLASSIFICACAO').AsString := xtbexporta.FieldByName('CLASSIFICACAO').AsString;
   xtbrecebe.ParamByName('DESCCUPOM').AsString := xtbexporta.FieldByName('DESCCUPOM').AsString;
   xtbrecebe.ParamByName('NCM').AsString := xtbexporta.FieldByName('NCM').AsString;
   xtbrecebe.ParamByName('OBSFISCAL').AsString := xtbexporta.FieldByName('OBSFISCAL').AsString;
   xtbrecebe.ParamByName('COMPOSICAO').AsString := xtbexporta.FieldByName('COMPOSICAO').AsString;
   xtbrecebe.ParamByName('ALTURA').AsString := xtbexporta.FieldByName('ALTURA').AsString;
   xtbrecebe.ParamByName('LARGURA').AsString := xtbexporta.FieldByName('LARGURA').AsString;
   xtbrecebe.ParamByName('ESPECIFICACAO').AsString := xtbexporta.FieldByName('ESPECIFICACAO').AsString;
   xtbrecebe.ParamByName('MARK').AsString := xtbexporta.FieldByName('MARK').AsString;
   xtbrecebe.ParamByName('BALANCA').AsString := xtbexporta.FieldByName('BALANCA').AsString;
   xtbrecebe.ParamByName('ANVISA').AsString := xtbexporta.FieldByName('ANVISA').AsString;
   xtbrecebe.ParamByName('MINSAUDE').AsString := xtbexporta.FieldByName('MINSAUDE').AsString;
   xtbrecebe.ParamByName('DENSIDADE').AsInteger := xtbexporta.FieldByName('DENSIDADE').AsInteger;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
procedure TFPedidoVendaConstrutora.estoque;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMESTOQUE.TEstoque;
           xtbrecebe := DMEXPORTA.TEstoque;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into ESTOQUE');
           xtbrecebe.SQL.Add('(COD_ESTOQUE, COD_LOJA, COD_SUBPROD, ULTCOMPRA, ULTVENDA, ESTMAX, ESTMIN,');
           xtbrecebe.SQL.Add('ICMS, FRETE, ESTFISICO, ESTRESERV, ESTPED, ESTSALDO, CVVPROAT, CVPPROAT,');
           xtbrecebe.SQL.Add('CVVPROVAR, CVPPROVAR, VENDATAP, VENDATAV, VENDVARP, VENDVARV, VALUNIT,');
           xtbrecebe.SQL.Add('VALREP, VALCUSTO, AVVPROAT, AVPPROAT, AVVPROVAR, AVPPROVAR, LUCRATIVIDADE,');
           xtbrecebe.SQL.Add('COEFDIV, VALOREST, OUTROS, QUANT2, DTCAD, ESTINI, VALCUSDESP, ESTANTCONT,');
           xtbrecebe.SQL.Add('CONTAGEM, ESTSIMULADO, VLRUNITCOMP, INDICE, BONIFICACAO, VLRBONIFIC,');
           xtbrecebe.SQL.Add('DESCONTO, CLNC, MOD, IMPEXP, IMPREND, CONTSOC, COFINS, PIS, MARGEMSEG,');
           xtbrecebe.SQL.Add('PERCMARGSEG, REDUCBASE, VLRCOMPSD, ACRECIMO, ESTCALC, DATAATU, HORAATU,');
           xtbrecebe.SQL.Add('PRECOOFERTA, DATAOFERTA, VENCIMENTOOFERTA)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_ESTOQUE, :COD_LOJA, :COD_SUBPROD, :ULTCOMPRA, :ULTVENDA, :ESTMAX,');
           xtbrecebe.SQL.Add(':ESTMIN, :ICMS, :FRETE, :ESTFISICO, :ESTRESERV, :ESTPED, :ESTSALDO,');
           xtbrecebe.SQL.Add(':CVVPROAT, :CVPPROAT, :CVVPROVAR, :CVPPROVAR, :VENDATAP, :VENDATAV,');
           xtbrecebe.SQL.Add(':VENDVARP, :VENDVARV, :VALUNIT, :VALREP, :VALCUSTO, :AVVPROAT, :AVPPROAT,');
           xtbrecebe.SQL.Add(':AVVPROVAR, :AVPPROVAR, :LUCRATIVIDADE, :COEFDIV, :VALOREST, :OUTROS,');
           xtbrecebe.SQL.Add(':QUANT2, :DTCAD, :ESTINI, :VALCUSDESP, :ESTANTCONT, :CONTAGEM, :ESTSIMULADO,');
           xtbrecebe.SQL.Add(':VLRUNITCOMP, :INDICE, :BONIFICACAO, :VLRBONIFIC, :DESCONTO, :CLNC,');
           xtbrecebe.SQL.Add(':MOD, :IMPEXP, :IMPREND, :CONTSOC, :COFINS, :PIS, :MARGEMSEG, :PERCMARGSEG,');
           xtbrecebe.SQL.Add(':REDUCBASE, :VLRCOMPSD, :ACRECIMO, :ESTCALC, :DATAATU, :HORAATU, :PRECOOFERTA,');
           xtbrecebe.SQL.Add(':DATAOFERTA, :VENCIMENTOOFERTA)');
           xtbrecebe.ParamByName('COD_ESTOQUE').AsInteger := xtbexporta.FieldByName('COD_ESTOQUE').AsInteger;
           xtbrecebe.ParamByName('COD_SUBPROD').AsInteger := xtbexporta.FieldByName('COD_SUBPROD').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TEstoque;
           xtbrecebe := DMESTOQUE.TEstoque;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into ESTOQUE');
                   xtbrecebe.SQL.Add('(COD_ESTOQUE, COD_LOJA, COD_SUBPROD, ULTCOMPRA, ULTVENDA, ESTMAX, ESTMIN,');
                   xtbrecebe.SQL.Add('ICMS, FRETE, ESTFISICO, ESTRESERV, ESTPED, ESTSALDO, CVVPROAT, CVPPROAT,');
                   xtbrecebe.SQL.Add('CVVPROVAR, CVPPROVAR, VENDATAP, VENDATAV, VENDVARP, VENDVARV, VALUNIT,');
                   xtbrecebe.SQL.Add('VALREP, VALCUSTO, AVVPROAT, AVPPROAT, AVVPROVAR, AVPPROVAR, LUCRATIVIDADE,');
                   xtbrecebe.SQL.Add('COEFDIV, VALOREST, OUTROS, QUANT2, DTCAD, ESTINI, VALCUSDESP, ESTANTCONT,');
                   xtbrecebe.SQL.Add('CONTAGEM, ESTSIMULADO, VLRUNITCOMP, INDICE, BONIFICACAO, VLRBONIFIC,');
                   xtbrecebe.SQL.Add('DESCONTO, CLNC, MOD, IMPEXP, IMPREND, CONTSOC, COFINS, PIS, MARGEMSEG,');
                   xtbrecebe.SQL.Add('PERCMARGSEG, REDUCBASE, VLRCOMPSD, ACRECIMO, ESTCALC, DATAATU, HORAATU,');
                   xtbrecebe.SQL.Add('PRECOOFERTA, DATAOFERTA, VENCIMENTOOFERTA)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_ESTOQUE, :COD_LOJA, :COD_SUBPROD, :ULTCOMPRA, :ULTVENDA, :ESTMAX,');
                   xtbrecebe.SQL.Add(':ESTMIN, :ICMS, :FRETE, :ESTFISICO, :ESTRESERV, :ESTPED, :ESTSALDO,');
                   xtbrecebe.SQL.Add(':CVVPROAT, :CVPPROAT, :CVVPROVAR, :CVPPROVAR, :VENDATAP, :VENDATAV,');
                   xtbrecebe.SQL.Add(':VENDVARP, :VENDVARV, :VALUNIT, :VALREP, :VALCUSTO, :AVVPROAT, :AVPPROAT,');
                   xtbrecebe.SQL.Add(':AVVPROVAR, :AVPPROVAR, :LUCRATIVIDADE, :COEFDIV, :VALOREST, :OUTROS,');
                   xtbrecebe.SQL.Add(':QUANT2, :DTCAD, :ESTINI, :VALCUSDESP, :ESTANTCONT, :CONTAGEM, :ESTSIMULADO,');
                   xtbrecebe.SQL.Add(':VLRUNITCOMP, :INDICE, :BONIFICACAO, :VLRBONIFIC, :DESCONTO, :CLNC,');
                   xtbrecebe.SQL.Add(':MOD, :IMPEXP, :IMPREND, :CONTSOC, :COFINS, :PIS, :MARGEMSEG, :PERCMARGSEG,');
                   xtbrecebe.SQL.Add(':REDUCBASE, :VLRCOMPSD, :ACRECIMO, :ESTCALC, :DATAATU, :HORAATU, :PRECOOFERTA,');
                   xtbrecebe.SQL.Add(':DATAOFERTA, :VENCIMENTOOFERTA)');
                   xtbrecebe.ParamByName('COD_ESTOQUE').AsInteger := StrToInt(xcodestoqueupdate);
               	xtbrecebe.ParamByName('COD_SUBPROD').AsInteger := StrToInt(xcodsubprodutoupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update ESTOQUE set');
                   xtbrecebe.SQL.Add('COD_LOJA = :COD_LOJA, COD_SUBPROD = :COD_SUBPROD, ULTCOMPRA = :ULTCOMPRA, ULTVENDA = :ULTVENDA, ESTMAX = :ESTMAX,');
                   xtbrecebe.SQL.Add('ESTMIN = :ESTMIN, ICMS = :ICMS, FRETE = :FRETE, ESTFISICO = :ESTFISICO, ESTRESERV = :ESTRESERV, ESTPED = :ESTPED, ESTSALDO = :ESTSALDO,');
                   xtbrecebe.SQL.Add('CVVPROAT = :CVVPROAT, CVPPROAT = :CVPPROAT, CVVPROVAR = :CVVPROVAR, CVPPROVAR = :CVPPROVAR, VENDATAP = :VENDATAP, VENDATAV = :VENDATAV,');
                   xtbrecebe.SQL.Add('VENDVARP = :VENDVARP, VENDVARV = :VENDVARV, VALUNIT = :VALUNIT, VALREP = :VALREP, VALCUSTO = :VALCUSTO, AVVPROAT = :AVVPROAT, AVPPROAT = :AVPPROAT,');
                   xtbrecebe.SQL.Add('AVVPROVAR = :AVVPROVAR, AVPPROVAR = :AVPPROVAR, LUCRATIVIDADE = :LUCRATIVIDADE, COEFDIV = :COEFDIV, VALOREST = :VALOREST, OUTROS = :OUTROS,');
                   xtbrecebe.SQL.Add('QUANT2 = :QUANT2, DTCAD = :DTCAD, ESTINI = :ESTINI, VALCUSDESP = :VALCUSDESP, ESTANTCONT = :ESTANTCONT, CONTAGEM = :CONTAGEM, ESTSIMULADO = :ESTSIMULADO,');
                   xtbrecebe.SQL.Add('VLRUNITCOMP = :VLRUNITCOMP, INDICE = :INDICE, BONIFICACAO = :BONIFICACAO, VLRBONIFIC = :VLRBONIFIC, DESCONTO = :DESCONTO, CLNC = :CLNC,');
                   xtbrecebe.SQL.Add('MOD = :MOD, IMPEXP = :IMPEXP, IMPREND = :IMPREND, CONTSOC = :CONTSOC, COFINS = :COFINS, PIS = :PIS, MARGEMSEG = :MARGEMSEG, PERCMARGSEG = :PERCMARGSEG,');
                   xtbrecebe.SQL.Add('REDUCBASE = :REDUCBASE, VLRCOMPSD = :VLRCOMPSD, ACRECIMO = :ACRECIMO, ESTCALC = :ESTCALC, DATAATU = :DATAATU, HORAATU = :HORAATU, PRECOOFERTA = :PRECOOFERTA,');
                   xtbrecebe.SQL.Add('DATAOFERTA = :DATAOFERTA, VENCIMENTOOFERTA = :VENCIMENTOOFERTA');
                   xtbrecebe.SQL.Add('where COD_ESTOQUE = '+ xcodupdate);
                   xtbrecebe.ParamByName('COD_SUBPROD').AsInteger := StrToInt(xcodsubprodutoupdate);
               end;
       end;

   xtbrecebe.ParamByName('COD_LOJA').AsInteger := xtbexporta.FieldByName('COD_LOJA').AsInteger;
   xtbrecebe.ParamByName('ULTCOMPRA').AsDate := xtbexporta.FieldByName('ULTCOMPRA').AsDateTime;
   xtbrecebe.ParamByName('ULTVENDA').AsDate := xtbexporta.FieldByName('ULTVENDA').AsDateTime;
   xtbrecebe.ParamByName('ESTMAX').AsFloat := xtbexporta.FieldByName('ESTMAX').AsFloat;
   xtbrecebe.ParamByName('ESTMIN').AsFloat := xtbexporta.FieldByName('ESTMIN').AsFloat;
   xtbrecebe.ParamByName('ICMS').AsFloat := xtbexporta.FieldByName('ICMS').AsFloat;
   xtbrecebe.ParamByName('FRETE').AsFloat := xtbexporta.FieldByName('FRETE').AsFloat;
   xtbrecebe.ParamByName('ESTFISICO').AsFloat := xtbexporta.FieldByName('ESTFISICO').AsFloat;
   xtbrecebe.ParamByName('ESTRESERV').AsFloat := xtbexporta.FieldByName('ESTRESERV').AsFloat;
   xtbrecebe.ParamByName('ESTPED').AsFloat := xtbexporta.FieldByName('ESTPED').AsFloat;
   xtbrecebe.ParamByName('ESTSALDO').AsFloat := xtbexporta.FieldByName('ESTSALDO').AsFloat;
   xtbrecebe.ParamByName('CVVPROAT').AsFloat := xtbexporta.FieldByName('CVVPROAT').AsFloat;
   xtbrecebe.ParamByName('CVVPROAT').AsFloat := xtbexporta.FieldByName('CVVPROAT').AsFloat;
   xtbrecebe.ParamByName('CVVPROVAR').AsFloat := xtbexporta.FieldByName('CVVPROVAR').AsFloat;
   xtbrecebe.ParamByName('CVPPROVAR').AsFloat := xtbexporta.FieldByName('CVPPROVAR').AsFloat;
   xtbrecebe.ParamByName('VENDATAP').AsFloat := xtbexporta.FieldByName('VENDATAP').AsFloat;
   xtbrecebe.ParamByName('VENDATAV').AsFloat := xtbexporta.FieldByName('VENDATAV').AsFloat;
   xtbrecebe.ParamByName('VENDVARP').AsFloat := xtbexporta.FieldByName('VENDVARP').AsFloat;
   xtbrecebe.ParamByName('VENDVARV').AsFloat := xtbexporta.FieldByName('VENDVARV').AsFloat;
   xtbrecebe.ParamByName('VALUNIT').AsFloat := xtbexporta.FieldByName('VALUNIT').AsFloat;
   xtbrecebe.ParamByName('VALREP').AsFloat := xtbexporta.FieldByName('VALREP').AsFloat;
   xtbrecebe.ParamByName('VALCUSTO').AsFloat := xtbexporta.FieldByName('VALCUSTO').AsFloat;
   xtbrecebe.ParamByName('AVVPROAT').AsFloat := xtbexporta.FieldByName('AVVPROAT').AsFloat;
   xtbrecebe.ParamByName('AVPPROAT').AsFloat := xtbexporta.FieldByName('AVPPROAT').AsFloat;
   xtbrecebe.ParamByName('AVVPROVAR').AsFloat := xtbexporta.FieldByName('AVVPROVAR').AsFloat;
   xtbrecebe.ParamByName('AVPPROVAR').AsFloat := xtbexporta.FieldByName('AVPPROVAR').AsFloat;
   xtbrecebe.ParamByName('LUCRATIVIDADE').AsFloat := xtbexporta.FieldByName('LUCRATIVIDADE').AsFloat;
   xtbrecebe.ParamByName('COEFDIV').AsFloat := xtbexporta.FieldByName('COEFDIV').AsFloat;
   xtbrecebe.ParamByName('VALOREST').AsFloat := xtbexporta.FieldByName('VALOREST').AsFloat;
   xtbrecebe.ParamByName('OUTROS').AsFloat := xtbexporta.FieldByName('OUTROS').AsFloat;
   xtbrecebe.ParamByName('QUANT2').AsFloat := xtbexporta.FieldByName('QUANT2').AsFloat;
   xtbrecebe.ParamByName('DTCAD').AsDate := xtbexporta.FieldByName('DTCAD').AsDateTime;
   xtbrecebe.ParamByName('ESTINI').AsFloat := xtbexporta.FieldByName('ESTINI').AsFloat;
   xtbrecebe.ParamByName('VALCUSDESP').AsFloat := xtbexporta.FieldByName('VALCUSDESP').AsFloat;
   xtbrecebe.ParamByName('ESTANTCONT').AsFloat := xtbexporta.FieldByName('ESTANTCONT').AsFloat;
   xtbrecebe.ParamByName('CONTAGEM').AsFloat := xtbexporta.FieldByName('CONTAGEM').AsFloat;
   xtbrecebe.ParamByName('ESTSIMULADO').AsFloat := xtbexporta.FieldByName('ESTSIMULADO').AsFloat;
   xtbrecebe.ParamByName('VLRUNITCOMP').AsFloat := xtbexporta.FieldByName('VLRUNITCOMP').AsFloat;
   xtbrecebe.ParamByName('INDICE').AsFloat := xtbexporta.FieldByName('INDICE').AsFloat;
   xtbrecebe.ParamByName('BONIFICACAO').AsFloat := xtbexporta.FieldByName('BONIFICACAO').AsFloat;
   xtbrecebe.ParamByName('VLRBONIFIC').AsFloat := xtbexporta.FieldByName('VLRBONIFIC').AsFloat;
   xtbrecebe.ParamByName('DESCONTO').AsFloat := xtbexporta.FieldByName('DESCONTO').AsFloat;
   xtbrecebe.ParamByName('CLNC').AsFloat := xtbexporta.FieldByName('CLNC').AsFloat;
   xtbrecebe.ParamByName('MOD').AsFloat := xtbexporta.FieldByName('MOD').AsFloat;
   xtbrecebe.ParamByName('IMPEXP').AsFloat := xtbexporta.FieldByName('IMPEXP').AsFloat;
   xtbrecebe.ParamByName('IMPREND').AsFloat := xtbexporta.FieldByName('IMPREND').AsFloat;
   xtbrecebe.ParamByName('CONTSOC').AsFloat := xtbexporta.FieldByName('CONTSOC').AsFloat;
   xtbrecebe.ParamByName('COFINS').AsFloat := xtbexporta.FieldByName('COFINS').AsFloat;
   xtbrecebe.ParamByName('PIS').AsFloat := xtbexporta.FieldByName('PIS').AsFloat;
   xtbrecebe.ParamByName('MARGEMSEG').AsFloat := xtbexporta.FieldByName('MARGEMSEG').AsFloat;
   xtbrecebe.ParamByName('PERCMARGSEG').AsFloat := xtbexporta.FieldByName('PERCMARGSEG').AsFloat;
   xtbrecebe.ParamByName('REDUCBASE').AsFloat := xtbexporta.FieldByName('REDUCBASE').AsFloat;
   xtbrecebe.ParamByName('VLRCOMPSD').AsFloat := xtbexporta.FieldByName('VLRCOMPSD').AsFloat;
   xtbrecebe.ParamByName('ACRECIMO').AsFloat := xtbexporta.FieldByName('ACRECIMO').AsFloat;
   xtbrecebe.ParamByName('ESTCALC').AsFloat := xtbexporta.FieldByName('ESTCALC').AsFloat;
   xtbrecebe.ParamByName('DATAATU').AsDate := xtbexporta.FieldByName('DATAATU').AsDateTime;
   xtbrecebe.ParamByName('HORAATU').AsTime := xtbexporta.FieldByName('HORAATU').AsDateTime;
   xtbrecebe.ParamByName('PRECOOFERTA').AsFloat := xtbexporta.FieldByName('PRECOOFERTA').AsFloat;
   xtbrecebe.ParamByName('DATAOFERTA').AsDate := xtbexporta.FieldByName('DATAOFERTA').AsDateTime;
   xtbrecebe.ParamByName('VENCIMENTOOFERTA').AsDate := xtbexporta.FieldByName('VENCIMENTOOFERTA').AsDateTime;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
procedure TFPedidoVendaConstrutora.produto;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMESTOQUE.TProduto;
           xtbrecebe := DMEXPORTA.TProduto;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into PRODUTO');
           xtbrecebe.SQL.Add('(COD_PRODUTO, COD_INTERNO, DESCRICAO, APLICACAO, COD_SUBGRUPOPROD, COD_GRUPOPROD,');
           xtbrecebe.SQL.Add('COD_CST, COD_LOJA, VENDVISTA, VENDPRAZO, CUSTOVENDA, COMPVISTA, COMPPRAZO,');
           xtbrecebe.SQL.Add('QTDCOMP, QTDVEND)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_PRODUTO, :COD_INTERNO, :DESCRICAO, :APLICACAO, :COD_SUBGRUPOPROD,');
           xtbrecebe.SQL.Add(':COD_GRUPOPROD, :COD_CST, :COD_LOJA, :VENDVISTA, :VENDPRAZO, :CUSTOVENDA,');
           xtbrecebe.SQL.Add(':COMPVISTA, :COMPPRAZO, :QTDCOMP, :QTDVEND)');
           xtbrecebe.ParamByName('COD_PRODUTO').AsInteger := xtbexporta.FieldByName('COD_PRODUTO').AsInteger;
       	xtbrecebe.ParamByName('COD_SUBGRUPOPROD').AsInteger := xtbexporta.FieldByName('COD_SUBGRUPOPROD').AsInteger;
   		xtbrecebe.ParamByName('COD_GRUPOPROD').AsInteger := xtbexporta.FieldByName('COD_GRUPOPROD').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TProduto;
           xtbrecebe := DMESTOQUE.TProduto;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into PRODUTO');
                   xtbrecebe.SQL.Add('(COD_PRODUTO, COD_INTERNO, DESCRICAO, APLICACAO, COD_SUBGRUPOPROD, COD_GRUPOPROD,');
                   xtbrecebe.SQL.Add('COD_CST, COD_LOJA, VENDVISTA, VENDPRAZO, CUSTOVENDA, COMPVISTA, COMPPRAZO,');
                   xtbrecebe.SQL.Add('QTDCOMP, QTDVEND)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_PRODUTO, :COD_INTERNO, :DESCRICAO, :APLICACAO, :COD_SUBGRUPOPROD,');
                   xtbrecebe.SQL.Add(':COD_GRUPOPROD, :COD_CST, :COD_LOJA, :VENDVISTA, :VENDPRAZO, :CUSTOVENDA,');
                   xtbrecebe.SQL.Add(':COMPVISTA, :COMPPRAZO, :QTDCOMP, :QTDVEND)');
                   xtbrecebe.ParamByName('COD_PRODUTO').AsInteger := StrToInt(xcodprodutoupdate);
                   xtbrecebe.ParamByName('COD_SUBGRUPOPROD').AsInteger := StrToInt(xcodsubgrupoupdate);
   				xtbrecebe.ParamByName('COD_GRUPOPROD').AsInteger := StrToInt(xcodgrupoupdate);
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update PRODUTO set');
                   xtbrecebe.SQL.Add('COD_INTERNO = :COD_INTERNO, DESCRICAO = :DESCRICAO, APLICACAO = :APLICACAO, COD_SUBGRUPOPROD = :COD_SUBGRUPOPROD,');
                   xtbrecebe.SQL.Add('COD_GRUPOPROD = :COD_GRUPOPROD, COD_CST = :COD_CST, COD_LOJA = :COD_LOJA, VENDVISTA = :VENDVISTA, VENDPRAZO = :VENDPRAZO, CUSTOVENDA = :CUSTOVENDA,');
                   xtbrecebe.SQL.Add('COMPVISTA = :COMPVISTA, COMPPRAZO = :COMPPRAZO, QTDCOMP = :QTDCOMP, QTDVEND = :QTDVEND');
               	xtbrecebe.SQL.Add('where COD_PRODUTO = '+ xcodupdate);
                   xtbrecebe.ParamByName('COD_SUBGRUPOPROD').AsInteger := StrToInt(xcodsubgrupoupdate);
   				xtbrecebe.ParamByName('COD_GRUPOPROD').AsInteger := StrToInt(xcodgrupoupdate);
               end;
       end;

   xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.FieldByName('COD_INTERNO').AsString;
   xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
   xtbrecebe.ParamByName('APLICACAO').AsString := xtbexporta.FieldByName('APLICACAO').AsString;
   xtbrecebe.ParamByName('COD_CST').AsInteger := xtbexporta.FieldByName('COD_CST').AsInteger;
   xtbrecebe.ParamByName('COD_LOJA').AsInteger := xtbexporta.FieldByName('COD_LOJA').AsInteger;
   xtbrecebe.ParamByName('VENDVISTA').AsFloat := xtbexporta.FieldByName('VENDVISTA').AsFloat;
   xtbrecebe.ParamByName('VENDPRAZO').AsFloat := xtbexporta.FieldByName('VENDPRAZO').AsFloat;
   xtbrecebe.ParamByName('CUSTOVENDA').AsFloat := xtbexporta.FieldByName('CUSTOVENDA').AsFloat;
   xtbrecebe.ParamByName('COMPVISTA').AsFloat := xtbexporta.FieldByName('COMPVISTA').AsFloat;
   xtbrecebe.ParamByName('COMPPRAZO').AsFloat := xtbexporta.FieldByName('COMPPRAZO').AsFloat;
   xtbrecebe.ParamByName('QTDCOMP').AsFloat := xtbexporta.FieldByName('QTDCOMP').AsFloat;
   xtbrecebe.ParamByName('QTDVEND').AsFloat := xtbexporta.FieldByName('QTDVEND').AsFloat;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
procedure TFPedidoVendaConstrutora.grupo;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMESTOQUE.TGrupo;
           xtbrecebe := DMEXPORTA.TGrupo;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into GRUPOPROD');
           xtbrecebe.SQL.Add('(COD_GRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_GRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');
           xtbrecebe.ParamByName('COD_GRUPOPROD').AsInteger := xtbexporta.FieldByName('COD_GRUPOPROD').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TGrupo;
           xtbrecebe := DMESTOQUE.TGrupo;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into GRUPOPROD');
                   xtbrecebe.SQL.Add('(COD_GRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_GRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');
                   xtbrecebe.ParamByName('COD_GRUPOPROD').AsInteger := xtbexporta.FieldByName('COD_GRUPOPROD').AsInteger;
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update GRUPOPROD set');
                   xtbrecebe.SQL.Add('DESCRICAO = :DESCRICAO, COD_INTERNO = :COD_INTERNO, TIPO = :TIPO');
               	xtbrecebe.SQL.Add('where COD_GRUPOPROD = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
   xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.FieldByName('COD_INTERNO').AsString;
   xtbrecebe.ParamByName('TIPO').AsString := xtbexporta.FieldByName('TIPO').AsString;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
procedure TFPedidoVendaConstrutora.subgrupo;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMESTOQUE.TSubgru;
           xtbrecebe := DMEXPORTA.TSubgru;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into SUBGRUPOPROD');
           xtbrecebe.SQL.Add('(COD_SUBGRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_SUBGRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');
           xtbrecebe.ParamByName('COD_SUBGRUPOPROD').AsInteger := xtbexporta.FieldByName('COD_SUBGRUPOPROD').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TSubgru;
           xtbrecebe := DMESTOQUE.TSubgru;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into SUBGRUPOPROD');
                   xtbrecebe.SQL.Add('(COD_SUBGRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_SUBGRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');
                   xtbrecebe.ParamByName('COD_SUBGRUPOPROD').AsInteger := xtbexporta.FieldByName('COD_SUBGRUPOPROD').AsInteger;
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update SUBGRUPOPROD set');
                   xtbrecebe.SQL.Add('DESCRICAO = :DESCRICAO, COD_INTERNO = :COD_INTERNO, TIPO = :TIPO');
               	xtbrecebe.SQL.Add('where COD_SUBGRUPOPROD = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
   xtbrecebe.ParamByName('COD_INTERNO').AsString := xtbexporta.FieldByName('COD_INTERNO').AsString;
   xtbrecebe.ParamByName('TIPO').AsString := xtbexporta.FieldByName('TIPO').AsString;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
procedure TFPedidoVendaConstrutora.cst;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMESTOQUE.TCST;
           xtbrecebe := DMEXPORTA.TCst;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into CST (COD_CST, DESCRICAO, COD_SIT_TRIB, INDICEECF)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_CST, :DESCRICAO, :COD_SIT_TRIB, :INDICEECF)');
           xtbrecebe.ParamByName('COD_CST').AsInteger := xtbexporta.FieldByName('COD_CST').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TCst;
           xtbrecebe := DMESTOQUE.TCST;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into CST (COD_CST, DESCRICAO, COD_SIT_TRIB, INDICEECF)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_CST, :DESCRICAO, :COD_SIT_TRIB, :INDICEECF)');
                   xtbrecebe.ParamByName('COD_CST').AsInteger := xtbexporta.FieldByName('COD_CST').AsInteger;
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update CST set');
                   xtbrecebe.SQL.Add('DESCRICAO = :DESCRICAO, COD_SIT_TRIB = :COD_SIT_TRIB, INDICEECF = :INDICEECF');
               	xtbrecebe.SQL.Add('where COD_CST = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('DESCRICAO').AsString := xtbexporta.FieldByName('DESCRICAO').AsString;
   xtbrecebe.ParamByName('COD_SIT_TRIB').AsString := xtbexporta.FieldByName('COD_SIT_TRIB').AsString;
   xtbrecebe.ParamByName('INDICEECF').AsString := xtbexporta.FieldByName('INDICEECF').AsString;
   xtbrecebe.ExecSQL;
end;

//Samuel Fabricio Wink - 22/1/2009: insere registro referente a estoque
procedure TFPedidoVendaConstrutora.unidade;
begin
	if(XImpExp = 'exporta')then
   	begin
       	xtbexporta := DMESTOQUE.TUnidade;
           xtbrecebe := DMEXPORTA.TUnidade;

           xtbrecebe.Close;
           xtbrecebe.SQL.Clear;
           xtbrecebe.SQL.Add('insert into unidade');
           xtbrecebe.SQL.Add('(COD_UNIDADE, DESC_UNID, SIGLA_UNID, ARREDONDAR)');
           xtbrecebe.SQL.Add('values');
           xtbrecebe.SQL.Add('(:COD_UNIDADE, :DESC_UNID, :SIGLA_UNID, :ARREDONDAR)');
           xtbrecebe.ParamByName('COD_UNIDADE').AsInteger := xtbexporta.FieldByName('COD_UNIDADE').AsInteger;
       end
   else
   	begin
       	xtbexporta := DMEXPORTA.TUnidade;
           xtbrecebe := DMESTOQUE.TUnidade;

           if(xforma = 'insert')then
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('insert into unidade');
                   xtbrecebe.SQL.Add('(COD_UNIDADE, DESC_UNID, SIGLA_UNID, ARREDONDAR)');
                   xtbrecebe.SQL.Add('values');
                   xtbrecebe.SQL.Add('(:COD_UNIDADE, :DESC_UNID, :SIGLA_UNID, :ARREDONDAR)');
                   xtbrecebe.ParamByName('COD_UNIDADE').AsInteger := xtbexporta.FieldByName('COD_UNIDADE').AsInteger;
               end
           else
           	begin
               	xtbrecebe.Close;
                   xtbrecebe.SQL.Clear;
                   xtbrecebe.SQL.Add('update unidade set');
                   xtbrecebe.SQL.Add('DESC_UNID = :DESC_UNID, SIGLA_UNID = :SIGLA_UNID, ARREDONDAR = :ARREDONDAR');
               	xtbrecebe.SQL.Add('where COD_UNIDADE = '+ xcodupdate);
               end;
       end;

   xtbrecebe.ParamByName('DESC_UNID').AsString := xtbexporta.FieldByName('DESC_UNID').AsString;
   xtbrecebe.ParamByName('SIGLA_UNID').AsString := xtbexporta.FieldByName('SIGLA_UNID').AsString;
   xtbrecebe.ParamByName('ARREDONDAR').AsString := xtbexporta.FieldByName('ARREDONDAR').AsString;
   xtbrecebe.ExecSQL;
end;

//insere as tabelas referentes ao produto
procedure TFPedidoVendaConstrutora.insertproduto;
begin
	try
   	//Samuel Fabricio Wink - 15/1/2009: filtra a tabela sub produto
   	FiltraTabela(DMESTOQUE.TSubProd, 'subproduto', '', '', '');
       DMESTOQUE.TSubProd.First;
		//Samuel Fabricio Wink - 15/1/2009: Verifica se a pesquisa naum voltou vazia
       if not(DMESTOQUE.TSubProd.IsEmpty)then
       	begin
           	//Samuel Fabricio Wink - 15/1/2009: Laço para inserir todos os registros da tabela
           	while not(DMESTOQUE.TSubProd.Eof)do
               	begin
                       //Samuel Fabricio Wink - 15/1/2009: insere os dados do bd estatico para o bd exporta
                       subproduto;
						//Samuel Fabricio Wink - 15/1/2009: Passa para o seguinte registro
                       DMESTOQUE.TSubProd.Next;

                   end;
           end;

       //Samuel Fabricio Wink - 15/1/2009: filtra a tabela sub produto
   	FiltraTabela(DMESTOQUE.TEstoque, 'estoque', '', '', '');
       DMESTOQUE.TEstoque.First;
		//Samuel Fabricio Wink - 15/1/2009: Verifica se a pesquisa naum voltou vazia
       if not(DMESTOQUE.TEstoque.IsEmpty)then
       	begin
           	//Samuel Fabricio Wink - 15/1/2009: Laço para inserir todos os registros da tabela
           	while not(DMESTOQUE.TEstoque.Eof)do
               	begin
                   	//Samuel Fabricio Wink - 15/1/2009: insere os dados do bd estatico para o bd exporta
                       estoque;
                       //Samuel Fabricio Wink - 15/1/2009: Passa para o seguinte registro
                       DMESTOQUE.TEstoque.Next;
                   end;
           end;

       //Samuel Fabricio Wink - 15/1/2009: filtra a tabela sub produto
   	FiltraTabela(DMESTOQUE.TProduto, 'produto', '', '', '');
       DMESTOQUE.TProduto.First;
		//Samuel Fabricio Wink - 15/1/2009: Verifica se a pesquisa naum voltou vazia
       if not(DMESTOQUE.TProduto.IsEmpty)then
       	begin
           	//Samuel Fabricio Wink - 15/1/2009: Laço para inserir todos os registros da tabela
           	while not(DMESTOQUE.TProduto.Eof)do
               	begin
                   	//Samuel Fabricio Wink - 15/1/2009: insere os dados do bd estatico para o bd exporta
                       produto;
                       //Samuel Fabricio Wink - 15/1/2009: Passa para o seguinte registro
                       DMESTOQUE.TProduto.Next;
                   end;
           end;
       //Samuel Fabricio Wink - 15/1/2009: filtra a tabela sub produto
   	FiltraTabela(DMESTOQUE.TGrupo, 'grupoprod', '', '', '');
       DMESTOQUE.TProduto.First;
		//Samuel Fabricio Wink - 15/1/2009: Verifica se a pesquisa naum voltou vazia
       if not(DMESTOQUE.TGrupo.IsEmpty)then
       	begin
           	//Samuel Fabricio Wink - 15/1/2009: Laço para inserir todos os registros da tabela
           	while not(DMESTOQUE.TGrupo.Eof)do
               	begin
                   	//Samuel Fabricio Wink - 15/1/2009: insere os dados do bd estatico para o bd exporta
                       grupo;
                       //Samuel Fabricio Wink - 15/1/2009: Passa para o seguinte registro
                       DMESTOQUE.TGrupo.Next;
                   end;
           end;

       //Samuel Fabricio Wink - 15/1/2009: filtra a tabela sub produto
   	FiltraTabela(DMESTOQUE.TSubgru, 'SUBGRUPOPROD', '', '', '');
       DMESTOQUE.TProduto.First;
		//Samuel Fabricio Wink - 15/1/2009: Verifica se a pesquisa naum voltou vazia
       if not(DMESTOQUE.TSubgru.IsEmpty)then
       	begin
           	//Samuel Fabricio Wink - 15/1/2009: Laço para inserir todos os registros da tabela
           	while not(DMESTOQUE.TSubgru.Eof)do
               	begin
                   	//Samuel Fabricio Wink - 15/1/2009: insere os dados do bd estatico para o bd exporta
                       subgrupo;
                       //Samuel Fabricio Wink - 15/1/2009: Passa para o seguinte registro
                       DMESTOQUE.TSubgru.Next;
                   end;
           end;

       //Samuel Fabricio Wink - 15/1/2009: filtra a tabela sub produto
   	FiltraTabela(DMESTOQUE.TCST, 'cst', '', '', '');
       DMESTOQUE.TProduto.First;
		//Samuel Fabricio Wink - 15/1/2009: Verifica se a pesquisa naum voltou vazia
       if not(DMESTOQUE.TCST.IsEmpty)then
       	begin
           	//Samuel Fabricio Wink - 15/1/2009: Laço para inserir todos os registros da tabela
           	while not(DMESTOQUE.TCST.Eof)do
               	begin
                   	//Samuel Fabricio Wink - 15/1/2009: insere os dados do bd estatico para o bd exporta
                       cst;
                       //Samuel Fabricio Wink - 15/1/2009: Passa para o seguinte registro
                       DMESTOQUE.TCST.Next;
                   end;
           end;

       //Samuel Fabricio Wink - 15/1/2009: filtra a tabela sub produto
   	FiltraTabela(DMESTOQUE.TUnidade, 'unidade', '', '', '');
       DMESTOQUE.TProduto.First;
		//Samuel Fabricio Wink - 15/1/2009: Verifica se a pesquisa naum voltou vazia
       if not(DMESTOQUE.TUnidade.IsEmpty)then
       	begin
           	//Samuel Fabricio Wink - 15/1/2009: Laço para inserir todos os registros da tabela
           	while not(DMESTOQUE.TUnidade.Eof)do
               	begin
                   	//Samuel Fabricio Wink - 15/1/2009: insere os dados do bd estatico para o bd exporta
                       unidade;
                       //Samuel Fabricio Wink - 15/1/2009: Passa para o seguinte registro
                       DMESTOQUE.TUnidade.Next;
                   end;
           end;
       //Samuel Fabricio Wink - 15/1/2009: Comita todas as informacoes referente as tabelas produto
       DMEXPORTA.IBTExporta.CommitRetaining;
   Except
   	//Samuel Fabricio Wink - 15/1/2009: Volta as informacoes anteriores para naum comitar nada
   	DMEXPORTA.IBTExporta.RollbackRetaining;
       Mensagem('    A T E N Ç Ã O   ','O bloco de produtos não pode ser enviado por motivo desconhecido... Favor contate o suporte imediatamente para poder fazer o envio correto do bloco de produtos!!!.','',1,1,false,'I');
   end;
end;

//Samuel Fabricio Wink - 15/1/2009: insere alugueis alterados
procedure TFPedidoVendaConstrutora.insertaluguel;
begin
	//Samuel Fabricio Wink - 15/1/2009: filtra tabela aluguel para pegar os registros nao exportados
   FiltraTabela(DMESTOQUE.TAluguel, 'aluguel', 'exporta', '0', '');
   //Samuel Fabricio Wink - 15/1/2009: Verifica se a pesquisa nao voltou vazia
       if not(DMESTOQUE.TAluguel.IsEmpty)then
       	begin
           	//Samuel Fabricio Wink - 15/1/2009: Laço para inserir todos os registros da tabela
           	while not(DMESTOQUE.TAluguel.Eof)do
               	begin

                   	//Samuel Fabricio Wink - 15/1/2009: insere os registros nao exportados
                   	aluguel;

                       //Samuel Fabricio Wink - 15/1/2009: passa para o seguinte registro
                       DMESTOQUE.TAluguel.Next
                   end;

               //Samuel Fabricio Wink - 15/1/2009: altera o aluguel do bd estatico no campo exporta para ja exportado
               DMESTOQUE.TAluguel.Close;
               DMESTOQUE.TAluguel.SQL.Clear;
               DMESTOQUE.TAluguel.SQL.add('update aluguel set aluguel.exporta = 1');
               DMESTOQUE.TAluguel.SQL.add('where aluguel.exporta = 0');
               DMESTOQUE.TAluguel.ExecSQL;

               try
                   //Samuel Fabricio Wink - 15/1/2009: comita o aluguel do bd exporta
                   DMEXPORTA.IBTExporta.CommitRetaining;

                   try
                   	//Samuel Fabricio Wink - 15/1/2009: comita o aluguel do bd estatico
                   	DMESTOQUE.TransacEstoque.CommitRetaining;
                   Except
                       //Samuel Fabricio Wink - 15/1/2009: deleta as informacoes da tabela q recebe as informacoes
                       DMEXPORTA.Alx.Close;
                       DMEXPORTA.Alx.SQL.Clear;
                       DMEXPORTA.Alx.SQL.Add('delete from aluguel');
                       DMEXPORTA.Alx.ExecSQL;
                       DMEXPORTA.IBTExporta.CommitRetaining;
						//Samuel Fabricio Wink - 15/1/2009: Rollback em aluguel
                       DMESTOQUE.TransacEstoque.RollbackRetaining;

                       //Samuel Fabricio Wink - 15/1/2009: Não existe nenhuma informação de aluguel existente
                       Mensagem('    A T E N Ç Ã O   ','O bloco de aluguéis não pode ser enviado por motivo desconhecido... Favor contate o suporte imediatamente para poder fazer o envio correto do bloco de aluguéis!!!.','',1,1,false,'I');
                   end;
               Except
                   //Samuel Fabricio Wink - 15/1/2009: executa roolback do aluguel do bd exporta
                   DMEXPORTA.IBTExporta.RollbackRetaining;
               end;
           end;

end;

//Samuel Fabricio Wink - 15/1/2009: insere clientes alterados
procedure TFPedidoVendaConstrutora.insertcliente;
begin
	//Samuel Fabricio Wink - 15/1/2009: filtra tabela cliente para pegar os registros nao exportados
   FiltraTabela(DMPESSOA.TCliente, 'cliente', 'export', '0', '');
   //Samuel Fabricio Wink - 15/1/2009: Verifica se a pesquisa nao voltou vazia
       if not(DMPESSOA.TCliente.IsEmpty)then
       	begin
           	DMPESSOA.TCliente.First;
           	//Samuel Fabricio Wink - 15/1/2009: Laço para inserir todos os registros da tabela
           	while not(DMPESSOA.TCliente.Eof)do
               	begin
                   	try
                           //Samuel Fabricio Wink - 15/1/2009: armazena o valor do codigo para uso posterior
                           xcodclienteupdate := DMPESSOA.TCliente.fieldbyname('cod_cliente').AsString;
                           xcodpessoaupdate := DMPESSOA.TCliente.fieldbyname('cod_pessoa').AsString;

                           //Samuel Fabricio Wink - 15/1/2009: insere o registro correspondente da vez
                           cliente;

                           //Samuel Fabricio Wink - 15/1/2009: filtra a tabela referemte a pessoa
                           FiltraTabela(DMPESSOA.TPessoa , 'pessoa', 'cod_pessoa', DMPESSOA.TCliente.fieldbyname('COD_PESSOA').AsString, '');
                           //Samuel Fabricio Wink - 15/1/2009: insere pessoa
                           if not(DMPESSOA.TPessoa.IsEmpty)then
                             begin
                                 pessoa;
                             end;

                           //Samuel Fabricio Wink - 15/1/2009: filtra tabela telefone referente a pessoa
                           FiltraTabela(DMPESSOA.TTelefone, 'telefone', 'cod_pessoa', DMPESSOA.TCliente.fieldbyname('COD_PESSOA').AsString, '');
                           //Samuel Fabricio Wink - 15/1/2009: insere telefone
                           if not(DMPESSOA.TTelefone.IsEmpty)then
                             begin
                             	  DMPESSOA.TTelefone.First;	
                                 while not(DMPESSOA.TTelefone.Eof)do
                                     begin
                                         telefone;
                                         DMPESSOA.TTelefone.Next;
                                     end;
                             end;

                           //Samuel Fabricio Wink - 15/1/2009: filtra tabela email referente a pessoa
                           FiltraTabela(DMPESSOA.TEmail, 'email', 'cod_pessoa', DMPESSOA.TCliente.fieldbyname('COD_PESSOA').AsString, '');
                           //Samuel Fabricio Wink - 15/1/2009: insere email
                           if not(DMPESSOA.TEmail.IsEmpty)then
                             begin
                             	DMPESSOA.TEmail.First;
                                 while not(DMPESSOA.TEmail.Eof)do
                                     begin
                                         email;
                                         DMPESSOA.TEmail.Next
                                     end;
                             end;

                           //Samuel Fabricio Wink - 15/1/2009: filtra a tabela referente a pessoa fisica
                           FiltraTabela(DMPESSOA.TPessoaF, 'pessoaf', 'cod_pessoa', DMPESSOA.TCliente.fieldbyname('COD_PESSOA').AsString, '');
                           //Samuel Fabricio Wink - 15/1/2009: insere pessoa fisica
                           if not(DMPESSOA.TPessoaF.IsEmpty)then
                             begin
                                 pessoaf;
                             end;

                           //Samuel Fabricio Wink - 15/1/2009: filtra a tabela referente a pessoa juridica
                           FiltraTabela(DMPESSOA.TPessoaJ, 'pessoaj', 'cod_pessoa', DMPESSOA.TCliente.fieldbyname('COD_PESSOA').AsString, '');
                           //Samuel Fabricio Wink - 15/1/2009: insere pessoa juridica
                           if not(DMPESSOA.TPessoaJ.IsEmpty)then
                             begin
                                 pessoaj;
                             end;

                           //altera o cliente do bd estatico no campo exporta para ja exportado
                           DMPESSOA.TALX.Close;
                           DMPESSOA.TALX.SQL.Clear;
                           DMPESSOA.TALX.SQL.add('update cliente set cliente.export = 1');
                           DMPESSOA.TALX.SQL.add('where cliente.cod_cliente = '+ xcodclienteupdate);
                           DMPESSOA.TALX.ExecSQL;

                           try
                           	//Samuel Fabricio Wink -  15/1/2009: comita o banco exporta
                           	DMEXPORTA.IBTExporta.CommitRetaining;
                               try
                               	//Samuel Fabricio Wink - 15/1/2009: comita o banco estatico
                               	DMPESSOA.TransacPessoa.CommitRetaining;
                               Except
                                   //Samuel Fabricio Wink - 15/1/2009: deleta cliente
                                   DMEXPORTA.TCliente.Close;
                                   DMEXPORTA.TCliente.SQL.Clear;
                                   DMEXPORTA.TCliente.SQL.Add('delete from cliente');
                                   DMEXPORTA.TCliente.SQL.Add('where cliente.cod_cliente ='+ xcodclienteupdate);
                                   DMEXPORTA.TCliente.ExecSQL;

                               	//Samuel Fabricio Wink - 15/1/2009: deleta as informacoes da tabela pessoa q recebe as informacoes
                                   deletapessoa;

                                   //Samuel Fabricio Wink - 15/1/2009: comita as informacoes deletadas
                                   DMEXPORTA.IBTExporta.CommitRetaining;

                               	//Samuel Fabricio Wink - 15/1/2009: rollback no banco estatico
                                   DMPESSOA.TransacPessoa.RollbackRetaining;
                               end;
                            Except
                            	//Samuel Fabricio Wink - 15/1/2009: rollback no banco exporta
                               DMEXPORTA.IBTExporta.RollbackRetaining
                            end;
                   	Except
                       end;
                       DMPESSOA.TCliente.Next;
                   end;//Samuel Fabricio Wink - 15/1/2009: fim do while
           end;//Samuel Fabricio Wink - 15/1/2009: fim do if
end;

//verifica se a pasta existe no sistema
procedure TFPedidoVendaConstrutora.verificadiretorio;
begin
   //Samuel Fabricio Wink - 19/1/2009: verifica se a pasta existe
   if not DirectoryExists('C:\MZR\EXPORTA') then
     //Samuel Fabricio Wink - 19/1/2009: forca a criacao da pasta no diretório
     ForceDirectories('C:\MZR\EXPORTA');
end;

//compacta o banco e o coloca na pasta para exportar
procedure TFPedidoVendaConstrutora.gerabancoexportacao;
var
	compacta : TStrings;
begin
  //Samuel Fabricio Wink - 19/1/2009: compacta banco para exportacao
  xendarquivo := FormatDateTime('dd.mm.yyyyy',Date())+' - '+FormatDateTime('hh.nn.ss',Time());
  bck.BackupTitle:='Backup de '+ xendarquivo;
  compacta := TStringList.Create;
  compacta.Add('C:\MZR\EXPORTA\DBMacsExp.GDB');
  Try
      bck.Backup(compacta , 'C:\MZR\EXPORTA\DBMacsExp - '+xendarquivo+'.SFW');
  Except
      MessageDlg('O backup em HD não obteve sucesso. Entre em contato com o '+#13+#10+'suporte Mzr Sistemas e reclame o problema.', mtError, [mbOK], 0);
  End;
end;

//Samuel Fabricio Wink - 31/1/2009: descompacta arquivo
procedure TFPedidoVendaConstrutora.descompactabd;
	begin
   	//desconpacta arquivo
       BCK.Restore(EdEndereco.Text, 'C:\MZR\IMPORTA\');
   end;

//Samuel Fabricio Wink - 26/1/2009: procedure que sincroniza os produtos
procedure TFPedidoVendaConstrutora.sincronizaprodutos;
begin
	xforma := 'update';

   //Samuel Fabricio Wink - 27/1/2009: guarda codigo de subproduto
   xcodupdate := DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString;
   xcodsubprodutoupdate := DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString;

   xtextolog := 'Erro na consulta de unidade de compra ' + DMEXPORTA.TSubProd.FieldByName('cod_unidcompra').AsString + 'em sincroniza na procedure sincronizaprodutos';
   //Samuel Fabricio Wink - 29/1/2009: verificando as unidade de compra
   FiltraTabela(DMEXPORTA.TUnidade, 'unidade', 'cod_unidade', DMEXPORTA.TSubProd.FieldByName('cod_unidcompra').AsString, '');
	//Samuel Fabricio Wink - 29/1/2009: verifica se existe
   if FiltraTabela(DMESTOQUE.TUnidade, 'unidade', 'sigla_unid', DMEXPORTA.TUnidade.FieldByName('sigla_unid').AsString, '') = false then
   	begin
       	xforma := 'insert';
       	FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_unidade';
           xcodunidadeupdate := DMMACS.TCodigo.FieldByName('cod_unidade').AsString;
           xunidcompra := DMMACS.TCodigo.FieldByName('cod_unidade').AsString;
           insercod(DMESTOQUE.TUnidade, 'UNIDADE');
           xtextolog := 'Erro ao inserir unidade de compra' + DMEXPORTA.TSubProd.FieldByName('cod_unidcompra').AsString + 'em sincroniza na procedure sincronizaprodutos';
           unidade;
       end
   else
   	begin
       	xforma := 'update';
           xcodupdate := DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsString;
           xunidcompra := DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsString;
           xtextolog := 'Erro ao atualizar unidade de compra' + DMEXPORTA.TSubProd.FieldByName('cod_unidcompra').AsString + 'em sincroniza na procedure sincronizaprodutos';
           unidade;
       end;

   xtextolog := 'Erro na consulta de unidade de venda ' + DMEXPORTA.TSubProd.FieldByName('cod_unidcompra').AsString + 'em sincroniza na procedure sincronizaprodutos';
   //Samuel Fabricio Wink - 29/1/2009: verificando as unidade de venda
   FiltraTabela(DMEXPORTA.TUnidade, 'unidade', 'cod_unidade', DMEXPORTA.TSubProd.FieldByName('cod_unidvenda').AsString, '');
	//Samuel Fabricio Wink - 29/1/2009: verifica se existe
   if FiltraTabela(DMESTOQUE.TUnidade, 'unidade', 'sigla_unid', DMEXPORTA.TUnidade.FieldByName('sigla_unid').AsString, '') = false then
   	begin
       	xforma := 'insert';
       	FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_unidade';
           xcodunidadeupdate := DMMACS.TCodigo.FieldByName('cod_unidade').AsString;
           xunidvenda := DMMACS.TCodigo.FieldByName('cod_unidade').AsString;
           insercod(DMESTOQUE.TUnidade, 'UNIDADE');
           xtextolog := 'Erro ao inserir unidade de venda' + DMEXPORTA.TSubProd.FieldByName('cod_unidcompra').AsString + 'em sincroniza na procedure sincronizaprodutos';
           unidade;
       end
   else
   	begin
       	xforma := 'update';
           xcodupdate := DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsString;
           xunidvenda := DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsString;
           xtextolog := 'Erro ao atualizar unidade de venda' + DMEXPORTA.TSubProd.FieldByName('cod_unidcompra').AsString + 'em sincroniza na procedure sincronizaprodutos';
           unidade;
       end;

   xtextolog := 'Erro ao pesquisar produto com o cod_produto = ' + DMESTOQUE.TSubProd.FieldByName('cod_produto').AsString + 'em sincroniza na procedure sincronizaprodutos de "DMESTOQUE"';
   //Samuel Fabricio Wink - 29/1/2009: busca produto referente a subproduto em dmestoque
   FiltraTabela(DMESTOQUE.TProduto, 'produto', 'cod_produto', DMESTOQUE.TSubProd.FieldByName('cod_produto').AsString, '');

   xtextolog := 'Erro ao pesquisar produto com o cod_produto = ' + DMEXPORTA.TSubProd.FieldByName('cod_produto').AsString + 'em sincroniza na procedure sincronizaprodutos de "DMEXPORTA"';
   //Samuel Fabricio Wink - 29/1/2009: busca produto referente a subporduto em dmexporta
   FiltraTabela(DMEXPORTA.TProduto, 'produto', 'cod_produto', DMEXPORTA.TSubProd.FieldByName('cod_produto').AsString, '');

   xtextolog := 'Erro ao pesquisar subgrupoproduto com o codigo = ' + DMEXPORTA.TProduto.FieldByName('cod_subgrupoprod').AsString + 'em sincroniza na procedure sincronizaprodutos de "DMEXPORTA"';
	//Samuel Fabricio Wink - 29/1/2009: busca subgrupoproduto de dmexporta
   FiltraTabela(DMEXPORTA.TSubgru, 'subgrupoprod', 'cod_subgrupoprod', DMEXPORTA.TProduto.FieldByName('cod_subgrupoprod').AsString, '');

   xtextolog := 'Erro ao pesquisar subgrupoproduto com o codigo interno = ' + DMEXPORTA.TSubgru.FieldByName('cod_interno').AsString + ' em sincroniza na procedure sincronizaprodutos de "DMEXPORTA" para "DMESTOQUE"';
   //Samuel Fabricio Wink - 29/1/2009: busca subgrupoprod em deestoque
   if FiltraTabela(DMESTOQUE.TSubgru, 'subgrupoprod', 'cod_interno', DMEXPORTA.TSubgru.FieldByName('cod_interno').AsString, '') = false then
   	begin
       	xforma := 'insert';
           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_subgrupoprod';
           xcodsubgrupoupdate := DMMACS.TCodigo.FieldByName('cod_subgrupoprod').AsString;
           insercod(DMESTOQUE.TSubgru, 'SUBGRUPOPROD');
           xtextolog := 'Erro ao inserir subgrupo' + DMMACS.TCodigo.FieldByName('cod_subgrupoprod').AsString + ' em sincroniza na procedure sincronizaprodutos de "DMEXPORTA"';
           subgrupo;
       end
   else
   	begin
       	xforma := 'update';
           xcodupdate := DMESTOQUE.TSubgru.FieldByName('cod_subgrupoprod').AsString;
           xcodsubgrupoupdate := DMESTOQUE.TSubgru.FieldByName('cod_subgrupoprod').AsString;
           xtextolog := 'Erro ao atualizar subgrupo' + DMMACS.TCodigo.FieldByName('cod_subgrupoprod').AsString + ' em sincroniza na procedure sincronizaprodutos de "DMEXPORTA"';
           subgrupo;
       end;

   xtextolog := 'Erro ao pesquisar grupoprod ' +  DMEXPORTA.TProduto.FieldByName('cod_grupoprod').AsString +  ' em sincroniza na procedure sincronizaprodutos de "DMEXPORTA"';
	//Samuel Fabricio Wink - 29/1/2009: busca grupoprod de dmexporta
   FiltraTabela(DMEXPORTA.TGrupo, 'grupoprod', 'cod_grupoprod', DMEXPORTA.TProduto.FieldByName('cod_grupoprod').AsString, '');

   xtextolog := 'Erro ao pesquisar grupoprod no cod_interno' +  DMEXPORTA.TGrupo.FieldByName('cod_interno').AsString +  ' em sincroniza na procedure sincronizaprodutos de "DMEXPORTA"';
   //Samuel Fabricio Wink - 29/1/2009: busca grupoprod em dmestoque
   if FiltraTabela(DMESTOQUE.TGrupo, 'grupoprod', 'cod_interno', DMEXPORTA.TGrupo.FieldByName('cod_interno').AsString, '') = false then
   	begin
       	xforma := 'insert';
           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_grupoprod';
           xcodgrupoupdate := DMMACS.TCodigo.FieldByName('cod_grupoprod').AsString;
           insercod(DMESTOQUE.TGrupo, 'GRUPOPROD');
           xtextolog := 'Erro ao inserir grupo com o cod_interno = ' + DMEXPORTA.TGrupo.FieldByName('cod_interno').AsString + ' em sincroniza na procedure sincronizaprodutos';
           grupo;
       end
   else
   	begin
       	xforma := 'update';
           xcodupdate := DMESTOQUE.TGrupo.FieldByName('cod_grupoprod').AsString;
           xcodgrupoupdate := DMESTOQUE.TGrupo.FieldByName('cod_grupoprod').AsString;
           xtextolog := 'Erro ao atualizar grupo com o cod_interno = ' + DMEXPORTA.TGrupo.FieldByName('cod_interno').AsString + ' em sincroniza na procedure sincronizaprodutos';
           grupo;
       end;

   xforma := 'update';

   //Samuel Fabricio Wink - 29/1/2009: atualiza tabela produto
   xcodupdate := DMESTOQUE.TProduto.FieldByName('cod_produto').AsString;
   xcodprodutoupdate := DMESTOQUE.TProduto.FieldByName('cod_produto').AsString;
   xtextolog := 'Erro ao atualizar produto ' + DMESTOQUE.TProduto.FieldByName('cod_produto').AsString + ' em sincroniza na procedure sincronizaprodutos';
   produto;

   //Samuel Fabricio Wink - 29/1/2009: atualiza tabela subproduto
   xcodupdate := DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString;
   xtextolog := 'Erro ao atualizar subproduto ' + DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString + ' em sincroniza na procedure sincronizaprodutos';
   subproduto;

   //Samuel Fabricio Wink - 29/1/2009: busca estoque em dmestoque
   FiltraTabela(DMESTOQUE.TEstoque, 'estoque', 'cod_subprod', xcodsubprodutoupdate, '');
	xcodupdate := DMESTOQUE.TEstoque.FieldbyName('cod_estoque').AsString;
   xtextolog := 'Erro ao atualizar estoque ' + DMESTOQUE.TEstoque.FieldbyName('cod_estoque').AsString + ' em sincroniza na procedure sincronizaprodutos';
   estoque;
end;

//Samuel Fabricio Wink - 24/1/2009: insere produtos
procedure TFPedidoVendaConstrutora.importprodutos;
begin
	//Samuel Fabricio Wink - 26/1/2009: verifica data de atualizacao do estoque
   FiltraTabela(DMEXPORTA.TEstoque, 'estoque','', '','');
   DMEXPORTA.TEstoque.First;
   while not(DMEXPORTA.TEstoque.Eof)do
   	begin
       	try
           	xtextolog := 'Erro ao consultar subproduto ' + DMEXPORTA.TEstoque.FieldByName('cod_subprod').AsString + ' de "DMEXPORTA" em sincroniza';
               FiltraTabela(DMEXPORTA.TSubProd, 'subproduto', 'cod_subproduto', DMEXPORTA.TEstoque.FieldByName('cod_subprod').AsString, '');

               xtextolog := 'Erro ao consultar subproduto ' + DMEXPORTA.TEstoque.FieldByName('cod_subprod').AsString + ' de "DMESTOQUE" em sincroniza';
               if FiltraTabela(DMESTOQUE.TSubProd, 'subproduto', 'contrint', DMEXPORTA.TSubProd.FieldByName('contrint').AsString, '') = true then
                   begin
                   	xtextolog := 'Erro ao consultar estoque dom o cod. subproduto = ' + DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString + ' de "DMESTOQUE" em sincroniza';
                       FiltraTabela(DMESTOQUE.TEstoque, 'estoque', 'cod_subprod', DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString, '');
                       if(DMESTOQUE.TEstoque.FieldByName('dataatu').AsString < DMEXPORTA.TEstoque.FieldByName('dataatu').AsString) = true then
                           begin
                           	xtextolog := 'erro ao entrar no primeiro sincronizaprodutos';
                               sincronizaprodutos;
                           end
                       else
                           begin
                             if((DMESTOQUE.TEstoque.FieldByName('dataatu').AsString = DMEXPORTA.TEstoque.FieldByName('dataatu').AsString) and (DMESTOQUE.TEstoque.FieldByName('horaatu').AsString < DMEXPORTA.TEstoque.FieldByName('horaatu').AsString)) = true then
                               xtextolog := 'erro ao entrar no segundo sincronizaprodutos';
                               sincronizaprodutos;
                           end;
                   end
               else
                   //Samuel Fabricio Wink - 26/1/2009: insere produto quando não esta cadastrado
                   begin
                       xforma := 'insert';

                       xtextolog := 'Erro ao consultar produto' + DMEXPORTA.TSubProd.FieldByName('cod_produto').AsString + ' em sincroniza';
                       //Samuel Fabricio Wink - 29/1/2009: busca tabela produto de dmexporta
                       FiltraTabela(DMEXPORTA.TProduto, 'produto','cod_produto', DMEXPORTA.TSubProd.FieldByName('cod_produto').AsString, '');

                       xtextolog := 'Erro ao consultar subgrupo' + DMEXPORTA.TProduto.FieldByName('cod_subgrupoprod').AsString + ' em sincroniza';
                       //Samuel Fabricio Wink - 29/1/2009: busca subgrupoprod de dmexporta
                       FiltraTabela(DMEXPORTA.TSubgru, 'subgrupoprod', 'cod_subgrupoprod', DMEXPORTA.TProduto.FieldByName('cod_subgrupoprod').AsString, '');

                       xtextolog := 'Erro ao consultar subgrupo com o cod_interno = ' + DMEXPORTA.TSubgru.FieldByName('cod_interno').AsString + ' em sincroniza de "DMEXPORTA" para "DMESTOQUE"';
                       //Samuel Fabricio Wink - 29/1/2009: busca subgrupoprod em dmestoque
                       if FiltraTabela(DMESTOQUE.TSubgru, 'subgrupoprod', 'cod_interno', DMEXPORTA.TSubgru.FieldByName('cod_interno').AsString, '') = false then
                           begin
                               xforma := 'insert';
                               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                               xcampo := 'cod_subgrupoprod';
                               xcodsubgrupoupdate := DMMACS.TCodigo.FieldByName('cod_subgrupoprod').AsString;
                               insercod(DMESTOQUE.TSubgru, 'SUBGRUPOPROD');
                               xtextolog := 'Erro ao inserir subgrupo ' + DMEXPORTA.TSubgru.FieldByName('cod_interno').AsString + ' em sincroniza';
                               subgrupo;
                           end
                       else
                           begin
                               xforma := 'update';
                               xcodupdate := DMESTOQUE.TSubgru.FieldByName('cod_subgrupoprod').AsString;
                               xcodsubgrupoupdate := DMESTOQUE.TSubgru.FieldByName('cod_subgrupoprod').AsString;
                               xtextolog := 'Erro ao atualizar subgrupo ' + DMESTOQUE.TSubgru.FieldByName('cod_subgrupoprod').AsString + ' em sincroniza';
                               subgrupo;
                           end;

                       xtextolog := 'Erro ao pesquisar grupo ' + DMEXPORTA.TProduto.FieldByName('cod_grupoprod').AsString + 'em sincroniza de "DMEXPORTA"';
                       //Samuel Fabricio Wink - 29/1/2009: busca grupoprod de dmexporta
                       FiltraTabela(DMEXPORTA.TGrupo, 'grupoprod', 'cod_grupoprod', DMEXPORTA.TProduto.FieldByName('cod_grupoprod').AsString, '');

                       xtextolog := 'Erro ao pesquisar grupo ' + DMEXPORTA.TGrupo.FieldByName('cod_interno').AsString + 'em sincroniza de "DMEXPORTA" para "DMESTOQUE"';
                       //Samuel Fabricio Wink - 29/1/2009: busca grupoprod em dmestoque
                       if FiltraTabela(DMESTOQUE.TGrupo, 'grupoprod', 'cod_interno', DMEXPORTA.TGrupo.FieldByName('cod_interno').AsString, '') = false then
                           begin
                               xforma := 'insert';
                               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                               xcampo := 'cod_grupoprod';
                               xcodgrupoupdate := DMMACS.TCodigo.FieldByName('cod_grupoprod').AsString;
                               insercod(DMESTOQUE.TGrupo, 'GRUPOPROD');
                               xtextolog := 'Erro ao inserir grupo com o cod_interno = ' + DMEXPORTA.TGrupo.FieldByName('cod_interno').AsString + 'em sincroniza';
                               grupo;
                           end
                       else
                           begin
                               xforma := 'update';
                               xcodupdate := DMESTOQUE.TGrupo.FieldByName('cod_grupoprod').AsString;
                               xcodgrupoupdate := DMESTOQUE.TGrupo.FieldByName('cod_grupoprod').AsString;
                               xtextolog := 'Erro ao atualizar grupo com o cod_interno = ' + DMEXPORTA.TGrupo.FieldByName('cod_interno').AsString + 'em sincroniza';
                               grupo;
                           end;

                       xforma := 'insert';

                       //Samuel Fabricio Wink - 29/1/2009: insere produto em dmestoque
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_produto';
                       xcodprodutoupdate := DMMACS.TCodigo.FieldByName('cod_produto').AsString;
                       insercod(DMESTOQUE.TProduto, 'PRODUTO');
                       xtextolog := 'Erro ao inserir produto = ' + DMEXPORTA.TProduto.FieldByName('cod_produto').AsString + ' em sincroniza';
                       produto;

                       xtextolog := 'Erro ao consultar unidade ' + DMEXPORTA.TSubProd.FieldByName('cod_unidcompra').AsString + 'em sincroniza de "SubProduto" para "Unidade" de "DMEXPORTA"';
                       //Samuel Fabricio Wink - 29/1/2009: inicia processo de subproduto
                       //Samuel Fabricio Wink - 29/1/2009: verificando as unidade de compra
                       FiltraTabela(DMEXPORTA.TUnidade, 'unidade', 'cod_unidade', DMEXPORTA.TSubProd.FieldByName('cod_unidcompra').AsString, '');

                       xtextolog := 'Erro ao verifivar igualdade de sigla ' + DMEXPORTA.TUnidade.FieldByName('sigla_unid').AsString + ' em sincroniza de "DMEXPORTA" para "DMESTOQUE"';
                       //Samuel Fabricio Wink - 29/1/2009: verifica se existe
                       if FiltraTabela(DMESTOQUE.TUnidade, 'unidade', 'sigla_unid', DMEXPORTA.TUnidade.FieldByName('sigla_unid').AsString, '') = false then
                           begin
                               xforma := 'insert';
                               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                               xcampo := 'cod_unidade';
                               xcodunidadeupdate := DMMACS.TCodigo.FieldByName('cod_unidade').AsString;
                               xunidcompra := DMMACS.TCodigo.FieldByName('cod_unidade').AsString;
                               insercod(DMESTOQUE.TUnidade, 'UNIDADE');
                               xtextolog := 'Erro ao inserir unidade ' + DMEXPORTA.TUnidade.FieldByName('sigla_unid').AsString + ' em sincroniza de "DMESTOQUE"';
                               unidade;
                           end
                       else
                           begin
                               xforma := 'update';
                               xcodupdate := DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsString;
                               xunidcompra := DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsString;
                               xtextolog := 'Erro ao atualizar unidade ' + DMEXPORTA.TUnidade.FieldByName('sigla_unid').AsString + ' em sincroniza de "DMESTOQUE"';
                               unidade;
                           end;

                       //xtextolog :=
                       //Samuel Fabricio Wink - 29/1/2009: verificando as unidade de venda
                       FiltraTabela(DMEXPORTA.TUnidade, 'unidade', 'cod_unidade', DMEXPORTA.TSubProd.FieldByName('cod_unidvenda').AsString, '');
                       //Samuel Fabricio Wink - 29/1/2009: verifica se existe
                       if FiltraTabela(DMESTOQUE.TUnidade, 'unidade', 'sigla_unid', DMEXPORTA.TUnidade.FieldByName('sigla_unid').AsString, '') = false then
                           begin
                               xforma := 'insert';
                               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                               xcampo := 'cod_unidade';
                               xcodunidadeupdate := DMMACS.TCodigo.FieldByName('cod_unidade').AsString;
                               xunidvenda := DMMACS.TCodigo.FieldByName('cod_unidade').AsString;
                               insercod(DMESTOQUE.TUnidade, 'UNIDADE');
                               unidade;
                           end
                       else
                           begin
                               xforma := 'update';
                               xcodupdate := DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsString;
                               xunidvenda := DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsString;
                               unidade;
                           end;

                       xforma := 'insert';

                       //Samuel Fabricio Wink - 29/1/2009: insere sub produto em dmestoque
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_subproduto';
                       xcodsubprodutoupdate := DMMACS.TCodigo.FieldByName('cod_subproduto').AsString;
                       insercod(DMESTOQUE.TSubProd, 'SUBPRODUTO');
                       subproduto;

                       //Samuel Fabricio Wink - 29/1/2009: insere estoque
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_estoque';
                       xcodestoqueupdate := DMMACS.TCodigo.FieldByName('cod_estoque').AsString;
                       insercod(DMESTOQUE.TEstoque, 'ESTOQUE');
                       estoque;
                   end;
               DMEXPORTA.TEstoque.Next;
               //Samuel Fabricio Wink - 30/1/2009: comita registro
               DMESTOQUE.TransacEstoque.CommitRetaining;
       	Except
           	//Samuel Fabricio Wink - 2/3/2009: gera log de erro
               GeraLogWink(Date(), Time(), xtextolog);
               
     			Mensagem('ATENÇÃO', 'Não foi possível atualizar o estoque com o código do subproduto ' + DMEXPORTA.TEstoque.FieldByName('cod_subprod').AsString + '!', '', 1, 1, False, 'a');
     			DMEXPORTA.Alx5.Next;
           end;
       end;
end;

//Samuel Fabricio Wink - 30/1/2009: importa funcionario
procedure TFPedidoVendaConstrutora.importfuncionario;
begin
	if FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '') = false then
     begin
         xforma := 'insert';

         FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
         xcampo := 'cod_pessoa';
         xcodpessoaupdate := DMMACS.TCodigo.FieldByName('cod_pessoa').AsString;
         insercod(DMPESSOA.TPessoa, 'PESSOA');
         pessoa;

         FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
         xcampo := 'cod_func';
         xcodfuncionarioupdate := DMMACS.TCodigo.FieldByName('cod_func').AsString;
         insercod(DMPESSOA.TFuncionario, 'FUNCIONARIO');
         funcionario;

         FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
         xcampo := 'cod_pessoaf';
         xcodpessoafupdate := DMMACS.TCodigo.FieldByName('cod_pessoaf').AsString;
         insercod(DMPESSOA.TPessoaF, 'PESSOAF');
         pessoaf;

         if FiltraTabela(DMEXPORTA.Alx5, 'email', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '') = true then
         	begin
             DMEXPORTA.Alx5.First;
             while not(DMEXPORTA.Alx5.Eof)do
                 begin
                     FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                     xcampo := 'cod_email';
                     xcodemailupdate := DMMACS.TCodigo.FieldByName('cod_email').AsString;
                     insercod(DMPESSOA.TEmail, 'EMAIL');
                     email;
                     DMEXPORTA.Alx5.Next;
                 end;
           end;

         if FiltraTabela(DMEXPORTA.Alx5, 'telefone', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '') = true then
         	begin
             DMEXPORTA.Alx5.First;
             while not(DMEXPORTA.Alx5.Eof)do
                 begin
                     FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                     xcampo := 'cod_telefone';
                     xcodtelefoneupdate := DMMACS.TCodigo.FieldByName('cod_telefone').AsString;
                     insercod(DMPESSOA.TTelefone, 'TELEFONE');
                     telefone;
                     DMEXPORTA.Alx5.Next;
                 end;
             end;
     end
  else
     begin

         xforma := 'update';
         //Samuel Fabricio Wink - 29/1/2009: atualiza pessoa
         xcodupdate := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
         xcodpessoaupdate := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
         pessoa;

         //Samuel Fabricio Wink - 29/1/2009: abre funcionario de dmpessoa
         if FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_pessoa', xcodpessoaupdate, '') = false then
         	begin
           	xforma := 'insert';
           	FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
               xcampo := 'cod_func';
               xcodfuncionarioupdate := DMMACS.TCodigo.FieldByName('cod_func').AsString;
               insercod(DMPESSOA.TFuncionario, 'FUNCIONARIO');
               funcionario;
               GeraLogWink(Date(), Time(), 'No update do funcionario "'+ DMEXPORTA.TPessoa.FieldByName('nome').AsString + ' - ' + DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString + '" em funcionario não havia tal tabela contendo os dados do funcionario tendo sido inserido através do comando referênte!!!');
           end
         else
         	begin
             xforma := 'update';
             xcodupdate := DMPESSOA.TFuncionario.FieldByName('cod_func').AsString;
             xcodfuncionarioupdate := DMEXPORTA.TFuncionario.FieldByName('cod_func').AsString;
             funcionario;
           end;

         //Samuel Fabricio Wink - 29/1/2009: abre pessoaf de dmpessoa
         if FiltraTabela(DMPESSOA.TPessoaF, 'pessoaf', 'cod_pessoa', xcodpessoaupdate, '') = false then
         	begin
           	xforma := 'insert';
           	FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
               xcampo := 'cod_pessoaf';
               xcodpessoafupdate := DMMACS.TCodigo.FieldByName('cod_pessoaf').AsString;
               insercod(DMPESSOA.TPessoaF, 'PESSOAF');
               pessoaf;
               GeraLogWink(Date(), Time(), 'No update do funcionario "'+ DMEXPORTA.TPessoa.FieldByName('nome').AsString + ' - ' + DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString + '" em pessoa física não havia tal tabela contendo os dados da pessoa física tendo sido inserido através do comando referênte!!!');
           end
         else
         	begin
             xforma := 'update';
             xcodupdate := DMPESSOA.TPessoaF.FieldByName('cod_pessoaf').AsString;
             pessoaf;
           end;
     end;
end;

//Samuel Fabricio Wink - 30/1/2009: importa forncedor
procedure TFPedidoVendaConstrutora.importfornecedor;
var
	xaux : String;
begin
	if FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '') = false then
     begin
       xforma := 'insert';

       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
       xcampo := 'cod_pessoa';
       xcodpessoaupdate := DMMACS.TCodigo.FieldByName('cod_pessoa').AsString;
       insercod(DMPESSOA.TPessoa, 'PESSOA');
       pessoa;

       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
       xcampo := 'cod_fornec';
       xcodfornecedorupdate := DMMACS.TCodigo.FieldByName('cod_fornec').AsString;
       insercod(DMPESSOA.TFornecedor, 'FORNECEDOR');
       fornecedor;

       //Samuel Fabricio Wink - 6/2/2009: verifica se e pessoa fisica ou juridica
       if FiltraTabela(DMEXPORTA.TPessoaF, 'pessoaf', 'cod_pessoa', DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsString, '') = false then
       	FiltraTabela(DMEXPORTA.TPessoaJ, 'pessoaj', 'cod_pessoa', DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsString, '');

       if not(DMEXPORTA.TPessoaF.IsEmpty) then
         begin
           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_pessoaf';
           xcodpessoafupdate := DMMACS.TCodigo.FieldByName('cod_pessoaf').AsString;
           insercod(DMPESSOA.TPessoaF, 'PESSOAF');
           pessoaf;
         end
       else
         begin
             FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
             xcampo := 'cod_pessoaj';
             xcodpessoajupdate := DMMACS.TCodigo.FieldByName('cod_pessoaj').AsString;
             insercod(DMPESSOA.TPessoaJ, 'PESSOAJ');
             pessoaj;
         end;

       FiltraTabela(DMEXPORTA.Alx5, 'email', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
       DMEXPORTA.Alx5.First;
       while not(DMEXPORTA.Alx5.Eof)do
           begin
               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
               xcampo := 'cod_email';
               xcodemailupdate := DMMACS.TCodigo.FieldByName('cod_email').AsString;
               insercod(DMPESSOA.TEmail, 'EMAIL');
               email;
               DMEXPORTA.Alx5.Next;
           end;

       FiltraTabela(DMEXPORTA.Alx5, 'telefone', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
       DMEXPORTA.Alx5.First;
       while not(DMEXPORTA.Alx5.Eof)do
           begin
               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
               xcampo := 'cod_telefone';
               xcodtelefoneupdate := DMMACS.TCodigo.FieldByName('cod_telefone').AsString;
               insercod(DMPESSOA.TTelefone, 'TELEFONE');
               telefone;
               DMEXPORTA.Alx5.Next;
           end;

       //Samuel Fabricio Wink - 30/1/2009: reabre tabela motorista veiculo referente ao pedvenda
       FiltraTabela(DMEXPORTA.Alx5, 'motoristaveiculo', 'cod_pedvenda', DMEXPORTA.TPedV.FieldByName('cod_pedvenda').AsString, '');
   end
  else
   begin
       xforma := 'update';
       //Samuel Fabricio Wink - 29/1/2009: atualiza pessoa
       xaux := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
       xcodupdate := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
       xcodpessoaupdate := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
       pessoa;

       //Samuel Fabricio Wink - 29/1/2009: abre funcionario de dmpessoa
       if FiltraTabela(DMPESSOA.TFornecedor, 'fornecedor', 'cod_pessoa', xcodpessoaupdate, '') = false then
       	begin
           	xforma := 'insert';
           	FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
               xcampo := 'cod_fornec';
               xcodfornecedorupdate := DMMACS.TCodigo.FieldByName('cod_fornec').AsString;
               insercod(DMPESSOA.TFornecedor, 'FORNECEDOR');
               fornecedor;
               GeraLogWink(Date(), Time(), 'No update do fornecedor "'+ DMEXPORTA.TPessoa.FieldByName('nome').AsString + ' - ' + DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString + '" em fornecedor não havia tal tabela contendo os dados de fornecedor tendo sido inserido através do comando referênte!!!');
           end
       else
       	begin
             xcodupdate := DMPESSOA.TFornecedor.FieldByName('cod_fornec').AsString;
             xcodfornecedorupdate := DMPESSOA.TFornecedor.FieldByName('cod_fornec').AsString;
             fornecedor;
           end;

       xforma := 'update';
       //Samuel Fabricio Wink - 6/2/2009: verifica se e pessoa fisica ou juridica
       if FiltraTabela(DMEXPORTA.TPessoaF, 'pessoaf', 'cod_pessoa', xcodpessoaupdate, '') = false then
       	FiltraTabela(DMEXPORTA.TPessoaJ, 'pessoaj', 'cod_pessoa', DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsString, '');

       if not(DMEXPORTA.TPessoaF.IsEmpty) then
         begin
           //Samuel Fabricio Wink - 29/1/2009: abre pessoaf de dmpessoa
           if FiltraTabela(DMPESSOA.TPessoaF, 'pessoaf', 'cod_pessoa', xcodpessoaupdate, '') = false then
           	begin
               	xforma := 'insert';
               	FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                   xcampo := 'cod_pessoaf';
                   xcodpessoafupdate := DMMACS.TCodigo.FieldByName('cod_pessoaf').AsString;
                   insercod(DMPESSOA.TPessoaF, 'PESSOAF');
                   pessoaf;
                   GeraLogWink(Date(), Time(), 'No update do fornecedor "'+ DMEXPORTA.TPessoa.FieldByName('nome').AsString + ' - ' + DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString + '" em pessoa física não havia tal tabela contendo os dados de pessoa física tendo sido inserido através do comando referênte!!!');
               end
           else
           	begin
           		xcodupdate := DMPESSOA.TPessoaF.FieldByName('cod_pessoaf').AsString;
           		pessoaf;
               end;
         end
       else
         begin
           //Samuel Fabricio Wink - 29/1/2009: abre pessoaj de dmpessoa
           if FiltraTabela(DMPESSOA.TPessoaJ, 'pessoaj', 'cod_pessoa', xcodpessoaupdate, '') = false then
           	begin
               	xforma := 'insert';
               	FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                   xcampo := 'cod_pessoaj';
                   xcodpessoajupdate := DMMACS.TCodigo.FieldByName('cod_pessoaj').AsString;
                   insercod(DMPESSOA.TPessoaJ, 'PESSOAJ');
                   pessoaj;
                   GeraLogWink(Date(), Time(), 'No update do fornecedor "'+ DMEXPORTA.TPessoa.FieldByName('nome').AsString + ' - ' + DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString + '" em pessoa jurídica não havia tal tabela contendo os dados de pessoa jurídica tendo sido inserido através do comando referênte!!!');
               end
           else
           	begin
                 xcodupdate := DMPESSOA.TPessoaJ.FieldByName('cod_pessoaj').AsString;
                 pessoaj;
               end;
         end;
   end;
end;

//Samuel Fabricio Wink - 5/2/2009: delta as relacoes com o ped venda
procedure TFPedidoVendaConstrutora.deletapedvenda;
begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('select pedvenda.cod_pedvenda, pedvenda.numped, formpag.descricao, ctareceber.cod_ctareceber, pedvenda.valor from pedvenda');
        DMESTOQUE.Alx.SQL.Add('left join ctareceber on pedvenda.numped = ctareceber.numdoc');
        DMESTOQUE.Alx.SQL.Add('left join parcelacr on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber');
        DMESTOQUE.Alx.SQL.Add('left join formpag on formpag.cod_formpag = pedvenda.cod_formpag');
        DMESTOQUE.Alx.SQL.Add('where parcelacr.numparc is not null');
        DMESTOQUE.Alx.SQL.Add('and pedvenda.numped = :NUM');
        DMESTOQUE.Alx.ParamByName('NUM').AsString:=DMEXPORTA.TPedV.FieldByName('NUMPED').AsString;
        DMESTOQUE.Alx.Open;
        DMESTOQUE.Alx.First;

        xConfere:=0;

	       // se não achou nenhuma parcela referente ao pedido, e se o pedido não foi a vista, deleta o pedido
       	if (DMESTOQUE.Alx.IsEmpty)
        then begin
           DMENTRADA.TAlx.Close;
           DMENTRADA.TAlx.SQL.Clear;
           DMENTRADA.TAlx.SQL.Add('delete from pedvenda where pedvenda.cod_pedvenda =' + DMSAIDA.TPedV.FieldByName('cod_pedvenda').AsString);
           DMENTRADA.TAlx.ExecSQL;
           DMENTRADA.IBT.CommitRetaining;

           DMENTRADA.TAlx.Close;
           DMENTRADA.TAlx.SQL.Clear;
           DMENTRADA.TAlx.SQL.Add('delete from itenspedven where itenspedven.cod_pedven =' + DMSAIDA.TPedV.FieldByName('cod_pedvenda').AsString);
           DMENTRADA.TAlx.ExecSQL;
           DMENTRADA.IBT.CommitRetaining;


           if DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString = 'À VISTA'
           then begin
              //se for um pedido a vista lança o estorno
              LanCaixa(0, DateToStr(Date()),0, 'Cancelamento de pedido sincronizado n° '+DMESTOQUE.Alx.FieldByName('NUMPED').AsString, DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency, 'PEDVENDA', DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger , 'Carteira', 'S', 'EST'+DMESTOQUE.Alx.FieldByName('NUMPED').AsString, Date(), '1');
            end;

             DMESTOQUE.Alx.Close;
             DMESTOQUE.Alx.SQL.Clear;
             DMESTOQUE.Alx.SQL.Add('delete from motoristaveiculo');
             DMESTOQUE.Alx.SQL.Add('where motoristaveiculo.cod_pedvenda = :COD');
             DMESTOQUE.Alx.ParamByName('COD').AsInteger:=DMSAIDA.TPedV.fieldByName('COD_PEDVENDA').AsInteger;
             DMESTOQUE.Alx.ExecSQL;

            exit;
               end
           else
           	begin     //se ja encontrar uma parcela baixada
                 if FiltraTabela(DMCONTA.TParcCR, 'parcelacr', '', '', 'where parcelacr.cod_ctareceber = ' + DMESTOQUE.Alx.FieldbyName('cod_ctareceber').AsString + 'and parcelacr.fech =' +#39+ 'S' +#39) = true then
                     begin
                         //Samuel Fabricio Wink - 5/2/2009: não deleta nada e passa para o sequinte pedvenda
                         DMEXPORTA.TPedV.Next;
                         xConfere:=1;
                         Exit;

                     end
                 else
                     begin
                         //Samuel Fabricio Wink - 5/2/2009: deleta tudo em relação ao pedvenda
                         //Samuel Fabricio Wink - 5/2/2009: busca todas as parcelas referente a ctareceber
                         FiltraTabela(DMCONTA.TParcCR, 'parcelacr', 'cod_ctareceber', DMESTOQUE.Alx.FieldbyName('cod_ctareceber').AsString, '');
                         DMCONTA.TParcCR.First;
                         //Samuel Fabricio Wink - 5/2/2009: pega parcela por parcela para deletar
                         while not(DMCONTA.TParcCR.Eof)do
                             begin
                                 if DMCONTA.TParcCR.FieldByName('cobranca').AsString = 'Carteira' then
                                     begin
                                         DMENTRADA.TAlx.Close;
                                         DMENTRADA.TAlx.SQL.Clear;
                                         DMENTRADA.TAlx.SQL.Add('delete from lancaixa where lancaixa.cod_gerador =' +DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString );
                                         DMENTRADA.TAlx.ExecSQL;
                                         DMENTRADA.IBT.CommitRetaining;
                                     end;
                                 if DMCONTA.TParcCR.FieldByName('cobranca').AsString = 'Cheque' then
                                     begin
                                         //Samuel Fabricio Wink - 5/2/2009: busca cod movbanco
                                        // FiltraTabela(DMBANCO.TMovBanco, 'movbanco', 'cod_gerador', DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString);
                                         //FiltraTabela()

                                     end;
                                 if DMCONTA.TParcCR.FieldByName('cobranca').AsString = 'Cartão' then
                                     begin
                                         DMENTRADA.TAlx.Close;
                                         DMENTRADA.TAlx.SQL.Clear;
                                         DMENTRADA.TAlx.SQL.Add('delete from movbanco where movbanco.cod_gerador =' +DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString );
                                         DMENTRADA.TAlx.ExecSQL;
                                         DMENTRADA.IBT.CommitRetaining;
                                     end;
                                 //Samuel Fabricio Wink - 5/2/2009: deleta a parcela referente
                                 DMENTRADA.TAlx.Close;
                                 DMENTRADA.TAlx.SQL.Clear;
                                 DMENTRADA.TAlx.SQL.Add('delete from parcelacr where parcelacr.cod_parcelacr =' +DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString );
                                 DMENTRADA.TAlx.ExecSQL;
                                 DMENTRADA.IBT.CommitRetaining;

                                 DMCONTA.TParcCR.Next;
                             end;
                         //Samuel Fabricio Wink - 5/2/2009: deleta ctareceber
                         DMENTRADA.TAlx.Close;
                         DMENTRADA.TAlx.SQL.Clear;
                         DMENTRADA.TAlx.SQL.Add('delete from ctareceber where ctareceber.cod_ctareceber =' +DMCONTA.TCtaR.FieldByName('cod_ctareceber').AsString );
                         DMENTRADA.TAlx.ExecSQL;
                         DMENTRADA.IBT.CommitRetaining;

                         //Samuel Fabricio Wink - 6/2/2009: deleta motorista veiculo
                         DMENTRADA.TAlx.Close;
                         DMENTRADA.TAlx.SQL.Clear;
                         DMENTRADA.TAlx.SQL.Add('delete from motoristaveiculo where motoristaveiculo.cod_pedvenda =' + DMSAIDA.TPedV.FieldByName('cod_pedvenda').AsString);
                         DMENTRADA.TAlx.ExecSQL;
                         DMENTRADA.IBT.CommitRetaining;

                         //Samuel Fabricio Wink - 5/2/2009: deleta ctareceber
                         DMENTRADA.TAlx.Close;
                         DMENTRADA.TAlx.SQL.Clear;
                         DMENTRADA.TAlx.SQL.Add('delete from pedvenda where pedvenda.cod_pedvenda =' + DMSAIDA.TPedV.FieldByName('cod_pedvenda').AsString);
                         DMENTRADA.TAlx.ExecSQL;
                         DMENTRADA.IBT.CommitRetaining;

                         DMENTRADA.TAlx.Close;
                         DMENTRADA.TAlx.SQL.Clear;
                         DMENTRADA.TAlx.SQL.Add('delete from itenspedven where itenspedven.cod_pedven =' + DMSAIDA.TPedV.FieldByName('cod_pedvenda').AsString);
                         DMENTRADA.TAlx.ExecSQL;
                         DMENTRADA.IBT.CommitRetaining;


                         //Samuel Fabricio Wink - 5/2/2009: insere as informações necessá rias para o novo pedvenda
                         xforma := 'insert';

                         FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                         xcampo := 'cod_pedvenda';
                         xcodpedvendaupdate := DMMACS.TCodigo.FieldByName('cod_pedvenda').AsString;
                         insercod(DMSAIDA.TPedV, 'PEDVENDA');

                         Exit;
                     end;
             end;

end;

//Samuel Fabricio Wink - 11/2/2009:  importa obra
procedure TFPedidoVendaConstrutora.importobras;
begin
	//Samuel Fabricio Wink - 11/2/2009: busca todas as obras
  //	FiltraTabela(DMEXPORTA.Alx5, 'obra', 'cod_obra', '', ' where  order by obra.cod_obra');

   DMEXPORTA.Alx5.Close;
   DMEXPORTA.Alx5.SQL.Clear;
   DMEXPORTA.Alx5.SQL.Add('select * from obra');
   DMEXPORTA.Alx5.SQL.Add('where obra.cod_obra > :COD');
   DMEXPORTA.Alx5.ParamByName('COD').AsInteger:=0;
   DMEXPORTA.Alx5.SQL.Add('order by obra.cod_obra');
   DMEXPORTA.Alx5.Open;
   DMEXPORTA.Alx5.First;
   while not DMEXPORTA.Alx5.Eof do
   	begin
       	try
               xcodobraupdate:='';
               //Samuel Fabricio Wink - 11/2/2009: verifica se existe obra
               if FiltraTabela(DMSAIDA.TObra, 'obra', 'cod_interno', DMEXPORTA.Alx5.fieldByName('cod_interno').AsString, '') = true then
                   begin
                       //Samuel Fabricio Wink - 11/2/2009: inicia processo de update
                       xforma := 'update';
                       //Samuel Fabricio Wink - 11/2/2009: pega cod para update
                       xcodupdate := DMSAIDA.TObra.FieldByName('cod_obra').AsString;

                       //Samuel Fabricio Wink - 11/2/2009:chama processo de gravação
                       obra;
                   end
               else
                   begin
                       //Samuel Fabricio Wink - 11/2/2009: inicia processo de gravação de nova obra
                       xforma := 'insert';
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');  
                       xcampo := 'cod_obra';
                       xcodobraupdate := DMMACS.TCodigo.FieldByName('cod_obra').AsString;
                       insercod(DMSAIDA.TObra, 'OBRA');
                        //Samuel Fabricio Wink - 11/2/2009: insere nova obra
                       obra;
                   end;
               //Samuel Fabricio Wink - 11/2/2009: comita informacoes
               DMSAIDA.IBT.CommitRetaining;
               //Samuel Fabricio Wink - 11/2/2009: passa para o seguinte registro
               DMEXPORTA.Alx5.Next;
           Except
           	//Samuel Fabricio Wink - 2/3/2009:gera o log de erro para saber onde ocorreu o erro;
               GeraLogWink(Date(), Time(), 'Erro ao atualizar a obra ' + DMEXPORTA.Alx5.fieldByName('cod_interno').AsString);

       		DMEXPORTA.Alx5.Next;
           end;
       end;
end;

//Samuel Fabricio Wink - 22/1/2009: atualiza bd
procedure TFPedidoVendaConstrutora.importpedvenda;
var
numparc : String;
xteste : String;
pause : string;
begin
     //Samuel Fabricio Wink - 23/1/2009:pesquisa os pedvenda do banco q foi exportado
     DMEXPORTA.TPedV.Close;
     DMEXPORTA.TPedV.SQL.Clear;
     DMEXPORTA.TPedV.SQL.Add('select * from pedvenda');
     DMEXPORTA.TPedV.SQL.Add('order by pedvenda.cod_pedvenda');
     DMEXPORTA.TPedV.Open;
     DMEXPORTA.TPedV.First;
     //Samuel Fabricio Wink - 23/1/2009: inicia processo de inculsao dos registros no banco vazio
     while not(DMEXPORTA.TPedV.Eof)do
         begin
             try

{----------------------------------------------------------------------------------------------------------------------------------------------
                       						IMPORTA PEDVENDA
-----------------------------------------------------------------------------------------------------------------------------------------------}
             xConfere:=0;

             if FiltraTabela(DMSAIDA.TPedV, 'pedvenda','numped', DMEXPORTA.TPedV.FieldByName('numped').AsString, '') = true then
               begin

               	//Samuel Fabricio Wink - 5/2/2009: deleta e verifica ped vendas
                   deletapedvenda;


               end;

             {if DMEXPORTA.TPedV.FieldByName('numped').AsString = 'P23' then
             	begin
               	pause := DMEXPORTA.TPedV.FieldByName('numped').AsString;
               end;}
             //else
               //begin
               if xConfere = 0
               then begin


                   xforma := 'insert';

                   FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                   xcampo := 'cod_pedvenda';
                   xcodpedvendaupdate := DMMACS.TCodigo.FieldByName('cod_pedvenda').AsString;
                   xcodgeradorupdate := xcodpedvendaupdate;
                   insercod(DMSAIDA.TPedV, 'PEDVENDA');

               //end;

               xseguranca := DMEXPORTA.TPedV.FieldByName('cod_pedvenda').AsString;
				//Samuel Fabricio Wink - 5/2/2009: verifica se esse pedvenda ja foi exportado



                   	//Samuel Fabricio Wink - 5/2/2009: pesquisa o numero da parcelacr ate o hifen
                   	//numparc := copy(DMEXPORTA.TParcCr.FieldByName('numparc').AsString, 1, AnsiPos(DMEXPORTA.TParcCr.FieldByName('numparc').AsString, '-')-1);

{----------------------------------------------------------------------------------------------------------------------------------------------
                       						IMPORTA USUARIO
-----------------------------------------------------------------------------------------------------------------------------------------------}
               xcodusuarioupdate := '';
               if DMEXPORTA.TPedV.FieldByName('cod_usuario').AsString = '111522' then
               	begin
                   	xcodusuarioupdate := '111522';
                   end
               else
               	begin
                     FiltraTabela(DMEXPORTA.TUsuario, 'usuario', 'codusuario', DMEXPORTA.TPedV.FieldByName('cod_usuario').AsString, '');
                     FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_func', DMEXPORTA.TUsuario.FieldByName('cod_funcionario').AsString, '');
                     FiltraTabela(DMEXPORTA.TPessoaF, 'pessoaf', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                     FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                     FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '');
                     FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString, '');
                     FiltraTabela(DMMACS.TUsuario, 'usuario', 'cod_funcionario', DMPESSOA.TFuncionario.FieldByName('cod_func').AsString, '');
                     xcodusuarioupdate := DMMACS.TUsuario.FieldByName('codusuario').AsString;
                   end;
{----------------------------------------------------------------------------------------------------------------------------------------------
                       						IMPORTA OBRAS
-----------------------------------------------------------------------------------------------------------------------------------------------}
               xcodobraupdate :='';
               if (DMEXPORTA.TPedV.FieldByName('cod_obra').AsString <> '') and (DMEXPORTA.TPedV.FieldByName('cod_obra').AsString <> '0') then
               	begin
               		FiltraTabela(DMEXPORTA.Alx, 'obra', 'cod_obra', DMEXPORTA.TPedV.FieldByName('cod_obra').AsString, '');
                   	FiltraTabela(DMSAIDA.TObra, 'obra', 'cod_interno', DMEXPORTA.Alx.FieldByName('cod_interno').AsString, '');

                       xcodobraupdate := DMSAIDA.TObra.FieldByName('cod_obra').AsString;
                   end;
{----------------------------------------------------------------------------------------------------------------------------------------------
                       						IMPORTA CLIENTE
-----------------------------------------------------------------------------------------------------------------------------------------------}
               FiltraTabela(DMEXPORTA.TCliente, 'cliente', 'cod_cliente', DMEXPORTA.TPedV.FieldByName('cod_cliente').AsString, '');
               FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TCliente.FieldByName('cod_pessoa').AsString, '');
               FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '');
               //Samuel Fabricio Wink - 29/1/2009: busca cod cliente para colocar no insert do dmexporta
               FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString, '');
               xcodclienteupdate := DMPESSOA.TCliente.FieldByName('cod_cliente').AsString;
{----------------------------------------------------------------------------------------------------------------------------------------------
                       						IMPORTA ITENSPEDVENDA
-----------------------------------------------------------------------------------------------------------------------------------------------}
               FiltraTabela(DMEXPORTA.TItensPDV, 'itenspedven', 'cod_pedven', DMEXPORTA.TPedV.FieldByName('cod_pedvenda').AsString, '');

               DMEXPORTA.TItensPDV.First;
               while not(DMEXPORTA.TItensPDV.Eof)do
                   begin
                       xforma := 'insert';
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_itenspedven';
                       xcoditenspedvendaupdate := DMMACS.TCodigo.FieldByName('cod_itenspedven').AsString;
                       insercod(DMSAIDA.TItemPV, 'ITENSPEDVEN');
                       //Samuel Fabricio Wink - 27/1/2009: atualiza cod do estoque
                       FiltraTabela(DMEXPORTA.TEstoque, 'estoque', 'cod_estoque', DMEXPORTA.TItensPDV.FieldByName('cod_estoque').AsString, '');
                       FiltraTabela(DMEXPORTA.TSubProd, 'subproduto', 'cod_subproduto', DMEXPORTA.TEstoque.FieldByName('cod_subprod').AsString, '');
                       FiltraTabela(DMESTOQUE.TSubProd, 'subproduto', 'contrint', DMEXPORTA.TSubProd.FieldByName('contrint').AsString, '');
                       FiltraTabela(DMESTOQUE.TEstoque, 'estoque', 'cod_subprod', DMESTOQUE.TSubProd.FieldByName('cod_subproduto').AsString, '');
                       xcodestoqueupdate := DMESTOQUE.TEstoque.FieldByName('cod_estoque').AsString;

                       itenspedvenda;
                       DMEXPORTA.TItensPDV.Next;
                   end;

{----------------------------------------------------------------------------------------------------------------------------------------------
                       						IMPORTA ALUGUEL
-----------------------------------------------------------------------------------------------------------------------------------------------}
               xcodaluguelupdate :='';
               if FiltraTabela(DMEXPORTA.Alx5, 'aluguel', 'cod_pedvenda', DMEXPORTA.TPedV.FieldByName('cod_pedvenda').AsString, '') = true then
               	begin
                   	xforma := 'insert';

                       FiltraTabela(DMEXPORTA.TEquip, 'equipamento', 'cod_equipamento', DMEXPORTA.Alx5.FieldByName('cod_equipamento').AsString, '');
                       if FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'num_frota', DMEXPORTA.TEquip.FieldByName('num_frota').AsString, '') = false then
                       	begin
                           	xforma := 'insert';
                               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                               xcampo := 'cod_equipamento';
                               xcodequipamentoupdate := DMMACS.TCodigo.FieldByName('cod_equipamento').AsString;
                               insercod(DMPESSOA.TEquip, 'EQUIPAMENTO');
                               xcodfornecedorupdate := '0';
                               equipamento;
                           end
                       else
                       	begin
                           	xcodequipamentoupdate := DMPESSOA.TEquip.FieldByName('cod_equipamento').AsString;
                           end;

                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_aluguel';
                       xcodaluguelupdate := DMMACS.TCodigo.FieldByName('cod_aluguel').AsString;
                       insercod(DMESTOQUE.TAluguel, 'ALUGUEL');
                       aluguel;
                   end;
{----------------------------------------------------------------------------------------------------------------------------------------------
											IMPORTA FUNCIONARIO DO PEDVENDA
-----------------------------------------------------------------------------------------------------------------------------------------------}
               FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_func', DMEXPORTA.TPedV.FieldByName('cod_vendedor').AsString, '');
               FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
               FiltraTabela(DMEXPORTA.TPessoaF, 'pessoaf', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
				//Samuel Fabricio Wink - 30/1/2009: importa funcionario
               importfuncionario;
{----------------------------------------------------------------------------------------------------------------------------------------------
									IMPORTA FORMA DE PAGAMENTO
-----------------------------------------------------------------------------------------------------------------------------------------------}
				//Samuel Fabricio Wink - 29/1/2009: busca formapag de dmexporta
               FiltraTabela(DMEXPORTA.TFormPag, 'formpag', 'cod_formpag', DMEXPORTA.TPedV.FieldByName('cod_formpag').AsString, '');
               FiltraTabela(DMFINANC.TFormPag, 'formpag', 'cod_interno', DMEXPORTA.TFormPag.FieldByName('cod_interno').AsString, '');
				//Samuel Fabricio Wink - 29/1/2009: busca formapag de DMFINANC
               FiltraTabela(DMFINANC.TFormPag, 'formpag', 'cod_interno', DMEXPORTA.TFormPag.FieldbyName('cod_interno').AsString, '');
               xcodformpagupdate := DMFINANC.TFormPag.FieldByName('cod_formpag').AsString;
{----------------------------------------------------------------------------------------------------------------------------------------------
										INSERE O PEDVENDA
-----------------------------------------------------------------------------------------------------------------------------------------------}
               //Samuel Fabricio Wink - 23/1/2009: insere pedvenda
               xforma := 'insert';
               pedvenda;
{----------------------------------------------------------------------------------------------------------------------------------------------
		IMPORTA MOTORISTAVEICULO, EQUIPAMENTO, DONO EQUIPAMENTO, FUNCIONARIO REFERENTE AO EQUIPAMENTO
-----------------------------------------------------------------------------------------------------------------------------------------------}
               FiltraTabela(DMEXPORTA.Alx5, 'motoristaveiculo', 'cod_pedvenda', DMEXPORTA.TPedV.FieldByName('cod_pedvenda').AsString, '');

               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
               xcampo := 'cod_motoristaveiculo';
               xcodmotoveicupdate := DMMACS.TCodigo.FieldByName('cod_motoristaveiculo').AsString;
               insercod(DMESTOQUE.TMotoristaVeiculo, 'MOTORISTAVEICULO');

               xcodequipamentoupdate :='';
				//Samuel Fabricio Wink - 30/1/2009: importa equipamento e forncedor referente ao equipamento do motoristaveiculo
               FiltraTabela(DMEXPORTA.TEquip, 'equipamento', 'cod_equipamento', DMEXPORTA.Alx5.FieldByName('cod_equipamento').AsString, '');
               if FiltraTabela(DMPESSOA.TEquip, 'equipamento', 'placa', DMEXPORTA.TEquip.FieldByName('placa').AsString, '') = false then
               	begin
                   	//Samuel Fabricio Wink - 30/1/2009: busca fornecedor pelo equipamento
                   	FiltraTabela(DMEXPORTA.TFornecedor, 'fornecedor', 'cod_fornec', DMEXPORTA.TEquip.FieldByName('cod_cliente').AsString, '');
                       FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TFornecedor.FieldByName('cod_pessoa').AsString, '');
                       if FiltraTabela(DMEXPORTA.TPessoaF, 'pessoaf', 'cod_pessoa', DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsString, '') = false then
                       	FiltraTabela(DMEXPORTA.TPessoaJ, 'pessoaj', 'cod_pessoa', DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsString, '');

						//Samuel Fabricio Wink - 24/1/2009: IMPORTA FORNECEDOR
                       importfornecedor;

                       //Samuel Fabricio Wink - 30/1/2009: reabre a tabela motoristaveiculo
                       FiltraTabela(DMEXPORTA.Alx5, 'motoristaveiculo', 'cod_pedvenda', DMEXPORTA.TPedV.FieldByName('cod_pedvenda').AsString, '');

                       xforma := 'insert';
                       //Samuel Fabricio Wink - 30/1/2009: gera novo cod para equipamento
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_equipamento';
                       xcodequipamentoupdate := DMMACS.TCodigo.FieldByName('cod_equipamento').AsString;
                       insercod(DMESTOQUE.TMotoristaVeiculo, 'MOTORISTAVEICULO');
                       equipamento;
                   end
               else
               	begin
                   	//Samuel Fabricio Wink - 30/1/2009: busca fornecedor pelo equipamento
                   	FiltraTabela(DMEXPORTA.TFornecedor, 'fornecedor', 'cod_fornec', DMEXPORTA.TEquip.FieldByName('cod_cliente').AsString, '');
                       FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TFornecedor.FieldByName('cod_pessoa').AsString, '');
                       if FiltraTabela(DMEXPORTA.TPessoaF, 'pessoaf', 'cod_pessoa', DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsString, '') = false then
                       	FiltraTabela(DMEXPORTA.TPessoaJ, 'pessoaj', 'cod_pessoa', DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsString, '');

						//Samuel Fabricio Wink - 24/1/2009: IMPORTA FORNECEDOR
                       importfornecedor;

                       //Samuel Fabricio Wink - 30/1/2009: reabre a tabela motoristaveiculo
                       FiltraTabela(DMEXPORTA.Alx5, 'motoristaveiculo', 'cod_pedvenda', DMEXPORTA.TPedV.FieldByName('cod_pedvenda').AsString, '');

                       xforma := 'update';
                       //Samuel Fabricio Wink - 30/1/2009: gera novo cod para equipamento
                       xcodupdate := DMPESSOA.TEquip.FieldByName('cod_equipamento').AsString;
                       xcodequipamentoupdate := DMPESSOA.TEquip.FieldByName('cod_equipamento').AsString;
                       equipamento;
                   end;

               //Samuel Fabricio Wink - 30/1/2009: busca funcionario referente ao ao motorista veiculo
               FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_func', DMEXPORTA.Alx5.FieldByName('cod_funcionario').AsString, '');
               FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
               //Samuel Fabricio Wink - 30/1/2009: abre tabela pessoa fisica
               FiltraTabela(DMEXPORTA.TPessoaF, 'pessoaf', 'cod_pessoa', DMEXPORTA.TPessoa.FieldByName('cod_pessoa').AsString, '');
               //Samuel Fabricio Wink - 30/1/2009: importa funcionario
               importfuncionario;

               //Samuel Fabricio Wink - 30/1/2009: reabre a tabela motoristaveiculo
               FiltraTabela(DMEXPORTA.Alx5, 'motoristaveiculo', 'cod_pedvenda', DMEXPORTA.TPedV.FieldByName('cod_pedvenda').AsString, '');

               xforma := 'insert';
               motoristaveiculo;
{----------------------------------------------------------------------------------------------------------------------------------------------
											INPORTA LANCAMENTOS DE CAIXA
-----------------------------------------------------------------------------------------------------------------------------------------------}
				{//Samuel Fabricio Wink - 30/1/2009: verifica forma de pagamento
               FiltraTabela(DMEXPORTA.TFormPag, 'formpag','cod_formpag', DMEXPORTA.TPedV.FieldByName('cod_formpag').AsString, '');
               if DMEXPORTA.TFormPag.FieldByName('descricao').AsString = 'À VISTA' then
               	begin
                   	//Samuel Fabricio Wink - 30/1/2009: busca lancamentos de caixa
                       FiltraTabela(DMEXPORTA.TLanCaixa, 'lancaixa', 'cod_gerador', DMEXPORTA.TPedV.FieldByName('cod_pedvenda').AsString, '');
                       DMEXPORTA.TLanCaixa.First;
                       while not(DMEXPORTA.TLanCaixa.Eof)do
                       	begin
                           	//Samuel Fabricio Wink - 30/1/2009: gera novo cod para equipamento
                               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                               xcampo := 'cod_lanc';
                               xcodlancaixaupdate := DMMACS.TCodigo.FieldByName('cod_lanc').AsString;
                               insercod;
                               xforma := 'insert';
                               lancamentocaixa;
                               DMEXPORTA.TLanCaixa.Next;
                           end;
                   end; }
{----------------------------------------------------------------------------------------------------------------------------------------------
											COMITA OS REGISTROS
-----------------------------------------------------------------------------------------------------------------------------------------------}
               DMSAIDA.IBT.CommitRetaining;
               DMPESSOA.TransacPessoa.CommitRetaining;
               DMESTOQUE.TransacEstoque.CommitRetaining;
{----------------------------------------------------------------------------------------------------------------------------------------------
											IMPORTA CONTAS A RECEBER
-----------------------------------------------------------------------------------------------------------------------------------------------}
				//Samuel Fabricio Wink - 30/1/2009: as contas a receber são importadas atraves da procedure
               									// importparcelacr por causa dos codigos.

               //Samuel Fabricio Wink - 29/1/2009: passa para o seguinte registro
               DMEXPORTA.TPedV.Next;
               end;
             Except
               DMSAIDA.IBT.RollbackRetaining;
               DMPESSOA.TransacPessoa.RollbackRetaining;
               DMESTOQUE.TransacEstoque.RollbackRetaining;
             	GeraLogWink(Date(), Time(), 'Não foi possível sincronizar o pedido de venda ' + DMEXPORTA.TPedV.FieldByName('numped').AsString + ' por conter dados inconsistentes!!!');
             	DMEXPORTA.TPedV.Next;
             end;

         end;
end;

//Samuel Fabricio Wink - 27/1/2009: insere cheque em sincroniza
procedure TFPedidoVendaConstrutora.importcheque;
begin
	if(UpperCase(DMFINANC.TFormPag.FieldByName('descricao').AsString) = 'À VISTA')then
     FiltraTabela(DMEXPORTA.TMovBanco, 'movbanco', 'cod_gerador', xseguranca, '')
	else
     FiltraTabela(DMEXPORTA.TMovBanco, 'movbanco', 'cod_gerador', DMCONTA.TParcCR.FieldByName('cod_parcelacr').asString, '');

   //Samuel Fabricio Wink - 28/1/2009: cod do mov banco
   xforma :='insert';
   FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
   xcampo := 'cod_movbanco';
   xcodmovbancoupdate := DMMACS.TCodigo.FieldByName('cod_movbanco').AsString;
   insercod(DMBANCO.TMovBanco, 'MOVBANCO');

   //Samuel Fabricio Wink - 28/1/2009: busca codigo da conta corrente, agencia e banco referente ao movbanco
   FiltraTabela(DMEXPORTA.TCtaCor, 'ctacor', 'cod_ctacor', DMEXPORTA.TMovBanco.FieldByName('cod_ctacor').AsString, '');
   if FiltraTabela(DMBANCO.TCtaCor, 'ctacor', 'numctacor', DMEXPORTA.TCtaCor.FieldByName('numctacor').AsString, '') = true then
   	begin
       	xforma := 'update';

           FiltraTabela(DMEXPORTA.TAgencia, 'agencia', 'cod_agencia', DMEXPORTA.TCtaCor.FieldByName('cod_agencia').AsString, '');
           if FiltraTabela(DMBANCO.TAgencia, 'agencia', 'numagencia', DMEXPORTA.TAgencia.FieldByName('numagencia').AsString, '') = true then
           	begin
               	xforma := 'update';

                   FiltraTabela(DMEXPORTA.TBanco, 'banco', 'cod_banc', DMEXPORTA.TAgencia.FieldByName('cod_banco').AsString, '');
                   FiltraTabela(DMBANCO.TBanco, 'banco', 'numbanco', DMEXPORTA.TBanco.FieldByName('numbanco').AsString, '');
					//Samuel Fabricio Wink - 28/1/2009: atualiza banco
                   xcodupdate := DMBANCO.TBanco.FieldByName('cod_banc').AsString;
                   xcodbancoupdate := DMBANCO.TBanco.FieldByName('cod_banc').AsString;
                   banco;
					//Samuel Fabricio Wink - 28/1/2009: atualiza agencia
                   xcodupdate := DMBANCO.TAgencia.FieldByName('cod_agencia').AsString;
                   xcodagenciaupdate := DMBANCO.TAgencia.FieldByName('cod_agencia').AsString;
               	agencia;
               end;
			 //Samuel Fabricio Wink - 28/1/2009: atualiza ctacor
            xcodupdate := DMBANCO.TCtaCor.FieldByName('cod_ctacor').AsString;
            xcodctareceberupdate := DMBANCO.TCtaCor.FieldByName('cod_ctacor').AsString;
            ctacor;

            //Samuel Fabricio Wink - 19/1/2009: se o pagamento for a vista ou a prazo em cheque e for movimentado em conta corrente executa as seguintes indicacoes
            FiltraTabela(DMEXPORTA.TMovBanco, 'movbanco', 'cod_gerador', DMEXPORTA.TChequeRec.FieldByName('cod_chequerec').asString, '');
            importbanco;
       end
   //Samuel Fabricio Wink - 28/1/2009: quando não tiver registro
   else
   	begin
       	FiltraTabela(DMEXPORTA.TAgencia, 'agencia', 'cod_agencia', DMEXPORTA.TCtaCor.FieldByName('cod_agencia').AsString, '');
       	FiltraTabela(DMEXPORTA.TBanco, 'banco', 'cod_banc', DMEXPORTA.TAgencia.FieldByName('cod_banco').AsString, '');
       	
       	xforma :='insert';
           //Samuel Fabricio Wink - 28/1/2009: insere banco
           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_banc';
           xcodbancoupdate := DMMACS.TCodigo.FieldByName('cod_banc').AsString;
           insercod(DMBANCO.TBanco, 'BANCO');
           banco;
           //Samuel Fabricio Wink - 28/1/2009: insere agencia
           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_agencia';
           xcodagenciaupdate := DMMACS.TCodigo.FieldByName('cod_agencia').AsString;
           insercod(DMBANCO.TAgencia, 'AGENCIA');
           agencia;
           //Samuel Fabricio Wink - 28/1/2009: insere conta cor
           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_ctacor';
           xcodctacorupdate := DMMACS.TCodigo.FieldByName('cod_ctacor').AsString;
           insercod(DMBANCO.TCtaCor, 'CTACOR');
           ctacor;
       end;
   //Samuel Fabricio Wink - 28/1/2009: insere mov banco
   xforma :='insert';
   movbanco;

   FiltraTabela(DMEXPORTA.TChequeRec, 'chequerec', 'cod_movbanco', DMEXPORTA.TMovBanco.FieldByName('cod_movbanco').AsString, '');
   FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
   xcampo := 'cod_chequerec';
   xcodchequerecupdate := DMMACS.TCodigo.FieldByName('cod_chequerec').AsString;
   xcodgeradorupdate := DMMACS.TCodigo.FieldByName('cod_chequerec').AsString;
   insercod(DMBANCO.TChequeRec, 'CHEQUEREC');

   xcodupdate := DMMACS.TCodigo.FieldByName('cod_chequerec').AsString;
   FiltraTabela(DMEXPORTA.TBanco, 'banco', 'cod_banc', DMEXPORTA.TChequeRec.FieldByName('cod_banco').AsString, '');
   if FiltraTabela(DMBANCO.TBanco, 'banco', 'numbanco', DMEXPORTA.TBanco.FieldByName('numbanco').AsString, '') = false then
   	begin
       	xforma := 'insert';
       	//Samuel Fabricio Wink - 28/1/2009: insere banco
       	FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_chequerec';
           xcodbancoupdate := DMMACS.TCodigo.FieldByName('cod_chequerec').AsString;
           insercod(DMBANCO.TBanco, 'BANCO');
           banco;
       end
   else
   	begin
       	xforma := 'update';
			//Samuel Fabricio Wink - 28/1/2009: atualiza banco
           xcodupdate := DMBANCO.TBanco.FieldByName('cod_banc').AsString;
           xcodbancoupdate := DMBANCO.TBanco.FieldByName('cod_banc').AsString;
           banco;
       end;
   xforma := 'insert';
	//Samuel Fabricio Wink - 28/1/2009: insere cheque
   chequerec;
	FiltraTabela(DMEXPORTA.TLanCaixa, 'lancaixa', 'cod_gerador', DMEXPORTA.TChequeRec.FieldByName('cod_chequerec').AsString, '');
   DMEXPORTA.TLanCaixa.First;
   while not(DMEXPORTA.TLanCaixa.Eof)do
   	begin
       	xforma := 'insert';
           //Samuel Fabricio Wink - 28/1/2009: insere lancamento de caixa
       	FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_lanc';
           xcodlancaixaupdate := DMMACS.TCodigo.FieldByName('cod_lanc').AsString;
           insercod(DMCAIXA.TCaixa, 'CAIXA');
           lancamentocaixa;
           DMEXPORTA.TLanCaixa.Next;
       end;
end;

//Samuel Fabricio Wink - 28/1/2009: importa dados referente a cartao
procedure TFPedidoVendaConstrutora.importbanco;
begin
	xforma := 'insert';
	//Samuel Fabricio Wink - 28/1/2009: gera novo cod do movbanco
   FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
   xcampo := 'cod_movbanco';
   xcodmovbancoupdate := DMMACS.TCodigo.FieldByName('cod_movbanco').AsString;
   insercod(DMBANCO.TMovBanco, 'MOVBANCO');

   FiltraTabela(DMEXPORTA.TCtaCor, 'ctacor', 'cod_ctacor', DMEXPORTA.TMovBanco.FieldByName('cod_ctacor').AsString, '');
   if FiltraTabela(DMBANCO.TCtaCor, 'ctacor', 'numctacor', DMEXPORTA.TCtaCor.FieldByName('numctacor').AsString, '') = false then
   	begin
           xforma := 'insert';

       	FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_ctacor';
           xcodctacorupdate := DMMACS.TCodigo.FieldByName('cod_ctacor').AsString;
           insercod(DMBANCO.TCtaCor, 'CTACOR');

           FiltraTabela(DMEXPORTA.TAgencia, 'agencia', 'cod_agencia', DMEXPORTA.TCtaCor.FieldByName('cod_agencia').AsString, '');
           FiltraTabela(DMEXPORTA.TBanco, 'banco', 'cod_banco', DMEXPORTA.TAgencia.FieldByName('cod_banco').AsString, '');
           if FiltraTabela(DMBANCO.TBanco, 'banco', 'numbanco', DMEXPORTA.TBanco.FieldByName('numbanco').AsString, '') = false then
           	begin
               	FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                   xcampo := 'cod_banco';
                   xcodctacorupdate := DMMACS.TCodigo.FieldByName('cod_banco').AsString;
                   insercod(DMBANCO.TBanco, 'BANCO');
                   banco;

                   FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                   xcampo := 'cod_agencia';
                   xcodagenciaupdate := DMMACS.TCodigo.FieldByName('cod_agencia').AsString;
                   insercod(DMBANCO.TAgencia, 'AGENCIA');
                   agencia;
               end
           else
           	begin
               	xforma := 'update';
               	xcodupdate := DMBANCO.TBanco.FieldByName('cod_banco').AsString;
                   xcodbancoupdate := DMBANCO.TBanco.FieldByName('cod_banco').AsString;
                   banco;

                   if FiltraTabela(DMBANCO.TAgencia, 'agencia', 'cod_banco', xcodbancoupdate, 'and agencia.numagencia = '+ DMEXPORTA.TAgencia.FieldByName('numagencia').AsString) = true then
                   	begin
                       	xcodupdate := DMBANCO.TBanco.FieldByName('cod_agencia').AsString;
                           xcodagenciaupdate := DMBANCO.TBanco.FieldByName('cod_agencia').AsString;
                           agencia;
                       end
                   else
                   	begin
                       	FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                           xcampo := 'cod_agencia';
                           xcodagenciaupdate := DMMACS.TCodigo.FieldByName('cod_agencia').AsString;
                           insercod(DMBANCO.TAgencia, 'AGENCIA');
                           agencia;
                       end;

               end;
       end
   else
   	begin
       	xforma := 'update';

       	FiltraTabela(DMEXPORTA.TAgencia, 'agencia', 'cod_agencia', DMEXPORTA.TCtaCor.FieldByName('cod_agencia').AsString, '');
           FiltraTabela(DMEXPORTA.TBanco, 'banco', 'cod_banco', DMEXPORTA.TAgencia.FieldByName('cod_banco').AsString, '');
           FiltraTabela(DMBANCO.TBanco, 'banco', 'numbanco', DMEXPORTA.TBanco.FieldByName('numbanco').AsString, '');
       	xcodupdate := DMBANCO.TBanco.FieldByName('cod_banco').AsString;
           xcodagenciaupdate := DMBANCO.TBanco.FieldByName('cod_banco').AsString;
           banco;

           FiltraTabela(DMBANCO.TAgencia, 'agencia', 'numbanco', DMBANCO.TBanco.FieldByName('numbanco').AsString, 'and agencia.numagencia = '+ DMEXPORTA.TAgencia.FieldByName('numagencia').AsString);
           xcodupdate := DMBANCO.TBanco.FieldByName('cod_agencia').AsString;
           xcodagenciaupdate := DMBANCO.TBanco.FieldByName('cod_agencia').AsString;
           agencia;

       end;
   //Samuel Fabricio Wink - 28/1/2009: insere cta cor
   xforma := 'insert';
   ctacor;
end;

//Samuel Fabricio Wink - 30/1/2009: importa todos os usuaios
procedure TFPedidoVendaConstrutora.importusuario;
begin
   //Samuel Fabricio Wink - 30/1/2009: filtra todos os registros de usuario
   FiltraTabela(DMEXPORTA.TUsuario, 'usuario', '', '', '');
   DMEXPORTA.TUsuario.First;
   while not(DMEXPORTA.TUsuario.Eof)do
       begin
       	try
             xtextolog := 'Erro na consulta do usuario ' + DMEXPORTA.TUsuario.FieldByName('cod_funcionario').AsString + 'do dmexporta em sincroniza';

             FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_func', DMEXPORTA.TUsuario.FieldByName('cod_funcionario').AsString, '');


             xtextolog := 'Erro na consulta do usuario na tabela funcionario ' + DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString + 'do dmexporta';

             FiltraTabela(DMEXPORTA.TPessoaF, 'pessoaf', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');

             xtextolog := 'Erro na consulta do usuario na tabela pessoa ' + DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString + 'do dmexporta';

             FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
             if FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '') = false then
                 begin
                     xforma := 'insert';

                     FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                     xcampo := 'cod_pessoa';
                     xcodpessoaupdate := DMMACS.TCodigo.FieldByName('cod_pessoa').AsString;
                     insercod(DMPESSOA.TPessoa, 'PESSOA');
                     xtextolog := 'Erro ao inserir usuario - pessoa ' + DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString;
                     pessoa;

                     FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                     xcampo := 'cod_func';
                     xcodfuncionarioupdate := DMMACS.TCodigo.FieldByName('cod_func').AsString;
                     insercod(DMPESSOA.TFuncionario, 'FUNCIONARIO');
                     xtextolog := 'Erro ao inserir usuario - funcionario ' + DMEXPORTA.TFuncionario.FieldByName('cod_func').AsString;
                     funcionario;

                     FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                     xcampo := 'cod_pessoaf';
                     xcodpessoafupdate := DMMACS.TCodigo.FieldByName('cod_pessoaf').AsString;
                     insercod(DMPESSOA.TPessoaF, 'PESSOAF');
                     xtextolog := 'Erro ao inserir usuario - pessoaf ' + DMEXPORTA.TPessoaF.FieldByName('cod_pessoaf').AsString;
                     pessoaf;

                     FiltraTabela(DMEXPORTA.Alx5, 'email', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                     DMEXPORTA.Alx5.First;
                     while not(DMEXPORTA.Alx5.Eof)do
                         begin
                             FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                             xcampo := 'cod_email';
                             xcodemailupdate := DMMACS.TCodigo.FieldByName('cod_email').AsString;
                             insercod(DMPESSOA.TEmail, 'EMAIL');
                             xtextolog := 'Erro ao inserir usuario - email da pessoa ' + DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString;
                             email;
                             DMEXPORTA.Alx5.Next;
                         end;

                     FiltraTabela(DMEXPORTA.Alx5, 'telefone', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                     DMEXPORTA.Alx5.First;
                     while not(DMEXPORTA.Alx5.Eof)do
                         begin
                             FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                             xcampo := 'cod_telefone';
                             xcodtelefoneupdate := DMMACS.TCodigo.FieldByName('cod_telefone').AsString;
                             insercod(DMPESSOA.TTelefone, 'TELEFONE');
                             xtextolog := 'Erro ao inserir usuario - telefone da pessoa ' + DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString;
                             telefone;
                             DMEXPORTA.Alx5.Next;
                         end;

                     //Samuel Fabricio Wink - 23/1/2009: insere usuario
                     FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                     xcampo := 'codusuario';
                     xcodusuarioupdate := DMMACS.TCodigo.FieldByName('codusuario').AsString;
                     insercod(DMMACS.TUsuario, 'USUARIO');
                     xtextolog := 'Erro ao inserir usuario ' + DMEXPORTA.TUsuario.FieldByName('codusuario').AsString;
                     usuario;
                 end
             else
                 begin

                     xforma := 'update';
                     //Samuel Fabricio Wink - 29/1/2009: atualiza pessoa
                     xcodupdate := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
                     xcodpessoaupdate := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
                     xtextolog := 'Erro ao atualizar usuario - pessoa ' + DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
                     pessoa;

                     //Samuel Fabricio Wink - 29/1/2009: abre funcionario de dmpessoa
                     FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_pessoa', xcodpessoaupdate, '');
                     xcodupdate := DMPESSOA.TFuncionario.FieldByName('cod_func').AsString;
                     xcodfuncionarioupdate := xcodupdate;
                     xtextolog := 'Erro ao atualizar usuario - funcionario ' + DMPESSOA.TFuncionario.FieldByName('cod_func').AsString;
                     funcionario;

                     //Samuel Fabricio Wink - 29/1/2009: abre pessoaf de dmpessoa
                     FiltraTabela(DMPESSOA.TPessoaF, 'pessoaf', 'cod_pessoa', xcodpessoaupdate, '');
                     xcodupdate := DMPESSOA.TPessoaF.FieldByName('cod_pessoaf').AsString;
                     xtextolog := 'Erro ao atualizar usuario - pessoaf ' + DMPESSOA.TPessoaF.FieldByName('cod_pessoaf').AsString;
                     pessoaf;

                     //Samuel Fabricio Wink - 29/1/2009: abre usuario de dmpessoa
                     if FiltraTabela(DMMACS.TUsuario, 'usuario', 'cod_funcionario', xcodfuncionarioupdate, '') = false then
                     	begin
                       	xforma := 'insert';
                       	//Samuel Fabricio Wink - 23/1/2009: insere usuario
                           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                           xcampo := 'codusuario';
                           xcodusuarioupdate := DMMACS.TCodigo.FieldByName('codusuario').AsString;
                           insercod(DMMACS.TUsuario, 'USUARIO');
                           xtextolog := 'Erro ao inserir usuario ' + DMEXPORTA.TUsuario.FieldByName('codusuario').AsString;
                           usuario;
                       end
                     else
                     	begin
                         xcodupdate := DMMACS.TUsuario.FieldByName('codusuario').AsString;
                         xtextolog := 'Erro ao atualizar usuario - usuario com o cod_pessoaf ' + DMPESSOA.TPessoaF.FieldByName('cod_pessoaf').AsString;
                         usuario;
                       end;
                 end;
             DMEXPORTA.TUsuario.Next;
             DMPESSOA.TransacPessoa.CommitRetaining;
             DMMACS.Transaction.CommitRetaining;
         	Except
           	//Samuel Fabricio Wink - 2/3/2009: gera log de erro
               GeraLogWink(Date(), Time(), xtextolog);
               GeraLogWink(Date(), Time(), 'Não foi possível atualizar o usuário com o login = ' + DMEXPORTA.TUsuario.FieldByName('login').AsString + ' por conter dados inconsistentes!!!');

       		DMEXPORTA.TUsuario.Next;
     end;
       end;
end;

//Samuel Fabricio Wink - 24/1/2009: importa cliente
procedure TFPedidoVendaConstrutora.importcliente;
begin
	FiltraTabela(DMEXPORTA.TCliente, 'cliente', '', '', '');
   DMEXPORTA.TCliente.First;
   while not(DMEXPORTA.TCliente.Eof)do
   	begin
       	try
               FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TCliente.FieldByName('cod_pessoa').AsString, '');
               //Samuel Fabricio Wink - 29/1/2009: verifica se e pessoaf ou pessoaj
               if(FiltraTabela(DMEXPORTA.TPessoaf, 'pessoaf', 'cod_pessoa', DMEXPORTA.TCliente.FieldByName('cod_pessoa').AsString, '') = false)then
                   FiltraTabela(DMEXPORTA.TPessoaj, 'pessoaj', 'cod_pessoa', DMEXPORTA.TCliente.FieldByName('cod_pessoa').AsString, '');

               if(FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '') = false)then
                   begin
                       xforma := 'insert';

                       //Samuel Fabricio Wink - 29/1/2009: insere pessoa
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_pessoa';
                       xcodpessoaupdate := DMMACS.TCodigo.FieldByName('cod_pessoa').AsString;
                       insercod(DMPESSOA.TPessoa, 'PESSOA');
                       pessoa;

                       //Samuel Fabricio Wink - 29/1/2009: insere cliente
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_cliente';
                       xcodclienteupdate := DMMACS.TCodigo.FieldByName('cod_cliente').AsString;
                       insercod(DMPESSOA.TCliente, 'CLIENTE');
                       cliente;

                       //Samuel Fabricio Wink - 29/1/2009: insere email
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_email';
                       xcodemailupdate := DMMACS.TCodigo.FieldByName('cod_email').AsString;
                       insercod(DMPESSOA.TEmail, 'EMAIL');
                       FiltraTabela(DMEXPORTA.Alx5, 'email', 'cod_pessoa', DMEXPORTA.TCliente.FieldByName('cod_pessoa').AsString, '');
                       DMEXPORTA.Alx5.First;
                       while not(DMEXPORTA.Alx5.Eof)do
                           begin
                               email;
                               DMEXPORTA.Alx5.Next;
                           end;

                       //Samuel Fabricio Wink - 29/1/2009: insere telefone
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_telefone';
                       xcodtelefoneupdate := DMMACS.TCodigo.FieldByName('cod_telefone').AsString;
                       insercod(DMPESSOA.TTelefone, 'TELEFONE');
                       FiltraTabela(DMEXPORTA.Alx5, 'telefone', 'cod_pessoa', DMEXPORTA.TCliente.FieldByName('cod_pessoa').AsString, '');
                       DMEXPORTA.Alx5.First;
                       while not(DMEXPORTA.Alx5.Eof)do
                           begin
                               telefone;
                               DMEXPORTA.Alx5.Next;
                           end;

                       //Samuel Fabricio Wink - 29/1/2009: insere pessoaf
                       if not(DMEXPORTA.TPessoaf.IsEmpty)then
                           begin
                             FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                             xcampo := 'cod_pessoaf';
                             xcodpessoafupdate := DMMACS.TCodigo.FieldByName('cod_pessoaf').AsString;
                             insercod(DMPESSOA.TPessoaF, 'PESSOAF');
                             pessoaf;
                           end
                       else
                           begin
                             //Samuel Fabricio Wink - 29/1/2009: insere pessoaj
                             FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                             xcampo := 'cod_pessoaj';
                             xcodpessoajupdate := DMMACS.TCodigo.FieldByName('cod_pessoaj').AsString;
                             insercod(DMPESSOA.TPessoaJ, 'PESSOAJ');
                             pessoaj;
                           end;
                   end
               else
                   begin
                       xforma := 'update';

                       //Samuel Fabricio Wink - 29/1/2009: atualiza pessoa
                       xcodupdate := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
                       xcodpessoaupdate := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
                       pessoa;

                       //Samuel Fabricio Wink - 29/1/2009: atualiza cliente
                       if FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_pessoa', xcodpessoaupdate, '') = false then
                           begin
                               xforma := 'insert';

                               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                               xcampo := 'cod_cliente';
                               xcodclienteupdate := DMMACS.TCodigo.FieldByName('cod_cliente').AsString;
                               insercod(DMPESSOA.TCliente, 'CLIENTE');
                               cliente;
                           end
                       else
                           begin
                               xforma := 'update';

                               xcodupdate := DMPESSOA.TCliente.FieldByName('cod_cliente').AsString;
                               cliente;
                           end;

                       xforma := 'update';

                       //Samuel Fabricio Wink - 29/1/2009: atualiza pessoa fisica
                       if not(DMEXPORTA.TPessoaf.IsEmpty)then
                           begin
                               if FiltraTabela(DMPESSOA.TPessoaF, 'pessoaf', 'cod_pessoa', xcodpessoaupdate, '') = false then
                               	begin
                                   	xforma := 'insert';

                                   	FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                             			xcampo := 'cod_pessoaf';
                             			xcodpessoafupdate := DMMACS.TCodigo.FieldByName('cod_pessoaf').AsString;
                             			insercod(DMPESSOA.TPessoaF, 'PESSOAF');
                             			pessoaf;
                                       GeraLogWink(Date(), Time(), 'No update do cliente "'+ DMEXPORTA.TPessoa.FieldByName('nome').AsString + ' - ' + DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString + '" em pessoa física não havia tal tabela contendo os dados de pessoa física tendo sido inserido através do comando referênte!!!');
                                   end
                               else
                           		begin
                               		xcodupdate := DMPESSOA.TPessoaF.FieldByName('cod_pessoa').AsString;
                               		pessoaf;
                                   end;
                           end
                       else
                           begin
                               if FiltraTabela(DMPESSOA.TPessoaJ, 'pessoaj', 'cod_pessoa', xcodpessoaupdate, '') = false then
                               	begin
                                   	//Samuel Fabricio Wink - 29/1/2009: insere pessoaj
                             			FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                             			xcampo := 'cod_pessoaj';
                             			xcodpessoajupdate := DMMACS.TCodigo.FieldByName('cod_pessoaj').AsString;
                             			insercod(DMPESSOA.TPessoaJ, 'PESSOAJ');
                             			pessoaj;
                                       GeraLogWink(Date(), Time(), 'No update do cliente "'+ DMEXPORTA.TPessoa.FieldByName('nome').AsString + ' - ' + DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString + '" em pessoa jurídica não havia tal tabela contendo os dados de pessoa jurídica tendo sido inserido através do comando referênte!!!');
                                   end
                               else
                               	begin
                               		//Samuel Fabricio Wink - 29/1/2009: atualiza pessoa juridica
                               		xcodupdate := DMPESSOA.TPessoaJ.FieldByName('cod_pessoa').AsString;
                               		pessoaj;
                                   end;
                           end;
                   end;

               DMEXPORTA.TCliente.Next;
               //Samuel Fabricio Wink - 30/1/2009: comita as informacoes
               DMPESSOA.TransacPessoa.CommitRetaining;
       	Except
           	GeraLogWink(Date(), Time(), 'Não foi possível sincronizar o cliente com cod_pessoa = ' + DMEXPORTA.TCliente.FieldByName('cod_pessoa').AsString + ' por conter dados inconsistentes!!!');

     			DMEXPORTA.TCliente.Next;
           end;
       end;
end;

//Samuel Fabricio Wink - 26/1/2009: importa as contas a receber atualizadas
procedure TFPedidoVendaConstrutora.importctarec;
begin
	FiltraTabela(DMEXPORTA.TParcCr, 'parcelacr', 'cod_ctareceber', DMEXPORTA.TCtaR.FieldByName('cod_ctareceber').AsString, '');
   DMEXPORTA.TParcCr.First;
   while not(DMEXPORTA.TParcCr.Eof)do
   	begin
         if(FiltraTabela(DMCONTA.TParcCR, 'parcelacr', 'numparc', DMEXPORTA.TParcCr.FieldByName('numparc').AsString, '') = false)then
         	begin
             FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
             xcampo := 'cod_parcelacr';
             xcodparcelacrupdate := DMMACS.TCodigo.FieldByName('cod_parcelacr').AsString;
             insercod(DMCONTA.TParcCR, 'PARCELACR');
             //Samuel Fabricio Wink - 29/1/2009: verifica essencia do pagamento
             if DMEXPORTA.TParcCr.FieldByName('cobranca').AsString = 'Carteira' then
                 begin
                 	xforma :='insert';
                   parcelacr;
                 end;
             if DMEXPORTA.TParcCr.FieldByName('cobranca').AsString = 'Cheque' then
                 begin
                 	importcheque;
                 end;
             if DMEXPORTA.TParcCr.FieldByName('cobranca').AsString = 'Cartao' then
                 begin
                 end;
           end;
       end;
end;

//Samuel Fabricio Wink - 29/1/2009: importa forma de pagamento
procedure TFPedidoVendaConstrutora.importformpag;
begin
   FiltraTabela(DMEXPORTA.TFormPag, 'formpag', '', '','');
   DMEXPORTA.TFormPag.First;
   while not(DMEXPORTA.TFormPag.Eof)do
       begin
       	try
             xtextolog := 'Erro ao consultar forma de pagamento ' + DMEXPORTA.TFormPag.FieldByName('cod_interno').AsString + ' em sincroniza';
             if FiltraTabela(DMFINANC.TFormPag, 'formpag', 'cod_interno', DMEXPORTA.TFormPag.FieldByName('cod_interno').AsString, '') = false then
                 begin
                     xforma := 'insert';

                     FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                     xcampo := 'cod_formpag';
                     xcodformpagupdate := DMMACS.TCodigo.FieldByName('cod_formpag').AsString;
                     insercod(DMFINANC.TFormPag, 'FORMPAG');
                     xtextolog := 'Erro ao inserir forma de pagamento ' + DMEXPORTA.TFormPag.FieldByName('cod_interno').AsString + ' em sincroniza';
                     formpag;
                 end
             else
                 begin
                     xforma := 'update';

                     xcodupdate := DMFINANC.TFormPag.FieldByName('cod_formpag').AsString;
                     xtextolog := 'Erro ao atualizar forma de pagamento ' + DMEXPORTA.TFormPag.FieldByName('cod_interno').AsString + ' em sincroniza';
                     formpag;
                 end;
             DMEXPORTA.TFormPag.Next;
             DMFINANC.Transaction.CommitRetaining;
           Except
           	//Samuel Fabricio Wink - 2/3/2009: gera log de erro
               GeraLogWink(Date(), Time(), xtextolog);

     			Mensagem('ATENÇÃO', 'Não foi possível atualizar a forma de pagamento ' + DMEXPORTA.TFormPag.FieldByName('descricao').AsString + '!', '', 1, 1, False, 'a');
     			DMEXPORTA.TFormPag.Next;
           end;
         end;
end;

//Samuel Fabricio Wink - 29/1/2009: importa plncta
procedure TFPedidoVendaConstrutora.importplncta;
begin
   FiltraTabela(DMEXPORTA.Alx5, 'plncta', '', '', '');
   DMEXPORTA.Alx5.First;
   while not(DMEXPORTA.Alx5.Eof)do
       begin
       	try
             xtextolog := 'Erro ao consultar plano de conta "' + DMEXPORTA.Alx5.FieldByName('classificacao').AsString + '" em sincroniza';
             if FiltraTabela(DMCONTA.TPlnCta, 'plncta', 'classificacao', DMEXPORTA.Alx5.FieldByName('classificacao').AsString, '') = false then
                 begin
                     xforma := 'insert';

                     FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                     xcampo := 'cod_plncta';
                     xcodplncontaupdate := DMMACS.TCodigo.FieldByName('cod_plncta').AsString;
                     insercod(DMCONTA.TPlnCta, 'PLNCTA');
                     xtextolog := 'Erro ao inserir plano de conta "' + DMEXPORTA.Alx5.FieldByName('classificacao').AsString + '" em sincroniza';
                     plncta;
                 end
             else
                 begin
                     xforma := 'update';
                     xcodupdate := DMCONTA.TPlnCta.FieldByName('cod_plncta').AsString;
                     xtextolog := 'Erro ao atualizar plano de conta "' + DMEXPORTA.Alx5.FieldByName('classificacao').AsString + '" em sincroniza';
                     plncta;
                 end;
             DMEXPORTA.Alx5.Next;
             //Samuel Fabricio Wink - 30/1/2009: comita registro
             DMCONTA.IBT.CommitRetaining;
       	Except
           	//Samuel Fabricio Wink - 2/3/2009: gera log de erro
               GeraLogWink(Date(), Time(), xtextolog);

     			Mensagem('ATENÇÃO', 'Não foi possível atualizar o plano de contas ' + DMEXPORTA.Alx5.FieldByName('classificacao').AsString + '!', '', 1, 1, False, 'a');
     			DMEXPORTA.Alx5.Next;
           end;
         end;
end;

//Samuel Fabricio Wink - 30/1/2009: importa ctacor
procedure TFPedidoVendaConstrutora.importctacor;
begin
	//Samuel Fabricio Wink - 30/1/2009: inicia processo de atualiacao
   FiltraTabela(DMEXPORTA.TAgencia, 'agencia', 'cod_agencia', DMEXPORTA.TCtaCor.FieldByName('cod_agencia').AsString, '');
   FiltraTabela(DMEXPORTA.TBanco, 'banco', 'cod_banco', DMEXPORTA.TAgencia.FieldByName('cod_banco').AsString, '');
   if FiltraTabela(DMBANCO.TBanco, 'banco', 'numbanco', DMEXPORTA.TBanco.FieldByName('numbanco').AsString, '') = false then
   	begin
           xforma := 'insert';

       	//Samuel Fabricio Wink - 30/1/2009: gera novo cod para banco
           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_banco';
           xcodbancoupdate := DMMACS.TCodigo.FieldByName('cod_banco').AsString;
           insercod(DMBANCO.TBanco, 'BANCO');
			//Samuel Fabricio Wink - 30/1/2009: insere banco
           banco;

           //Samuel Fabricio Wink - 30/1/2009: gera cod para agencia
           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_agencia';
           xcodbancoupdate := DMMACS.TCodigo.FieldByName('cod_agencia').AsString;
           insercod(DMBANCO.TAgencia, 'AGENCIA');
           //Samuel Fabricio Wink - 30/1/2009: busca cod pessoa de agencia
           FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TAgencia.FieldByName('cod_pessoa').AsString, '');
           //Samuel Fabricio Wink - 30/1/2009: gera cod para pessoa
           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_pessoa';
           xcodpessoaupdate := DMMACS.TCodigo.FieldByName('cod_pessoa').AsString;
           //Samuel Fabricio Wink - 30/1/2009: insere pessoa
           pessoa;
           //Samuel Fabricio Wink - 30/1/2009: insere agencia
           agencia;

           //Samuel Fabricio Wink - 30/1/2009: gera cod para ctacor
           FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
           xcampo := 'cod_ctacor';
           xcodctacorupdate := DMMACS.TCodigo.FieldByName('cod_ctacor').AsString;
           insercod(DMBANCO.TCtaCor, 'CTACOR');
           //Samuel Fabricio Wink - 30/1/2009: insere ctacor
           ctacor;

       end
   else
   	//Samuel Fabricio Wink - 30/1/2009: faz update
       begin
       	xforma := 'update';

           //Samuel Fabricio Wink - 30/1/2009: pega cod banco
           xcodupdate := DMBANCO.TBanco.FieldByName('cod_banco').AsString;
           xcodbancoupdate := DMBANCO.TBanco.FieldByName('cod_banco').AsString;
           //Samuel Fabricio Wink - 30/1/2009: atualiza banco
           banco;

           //Samuel Fabricio Wink - 30/1/2009: verifica se existe agencia
           if(FiltraTabela(DMBANCO.TAgencia, 'agencia', 'cod_banco', xcodbancoupdate, 'and agencia.numagencia = '+ DMEXPORTA.TAgencia.FieldByName('numagencia').AsString) = true)then
           	begin
               	//Samuel Fabricio Wink - 30/1/2009: se agencia existe
               	xforma := 'update';

               	//Samuel Fabricio Wink - 30/1/2009: guarda codigo de agencia
                   xcodupdate := DMBANCO.TAgencia.FieldByName('cod_agencia').AsString;
                   xcodagenciaupdate := DMBANCO.TAgencia.FieldByName('cod_agencia').AsString;
                   //Samuel Fabricio Wink - 30/1/2009: busca pessoa em dmexporta
                   FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TAgencia.FieldByName('cod_pessoa').AsString, '');
                   //Samuel Fabricio Wink - 30/1/2009: busca pessoa em dmpessoa
                   FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cod_pessoa', DMBANCO.TAgencia.FieldByName('cod_pessoa').AsString, '');
                   xcodupdate := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
                   xcodpessoaupdate := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
                   //Samuel Fabricio Wink - 30/1/2009: atualiza pessoa
                   pessoa;
                   //Samuel Fabricio Wink - 30/1/2009: atualiza agencia
                   agencia;

                   //Samuel Fabricio Wink - 30/1/2009: busca codigo ctacor
                   FiltraTabela(DMBANCO.TCtaCor, 'ctacor', 'cod_agencia', DMBANCO.TAgencia.FieldByName('cod_agencia').AsString, '');
                   //Samuel Fabricio Wink - 30/1/2009: guarda codigo ctacor
                   xcodupdate := DMBANCO.TCtaCor.FieldByName('cod_ctacor').AsString;
                   xcodctacorupdate := DMBANCO.TCtaCor.FieldByName('cod_ctacor').AsString;
                   //Samuel Fabricio Wink - 30/1/2009: atualiza ctacor
                   ctacor;
               end
           else
           	begin
               	//Samuel Fabricio Wink - 30/1/2009: se agencia nao existe
                   xforma := 'update';

               	//Samuel Fabricio Wink - 30/1/2009: gera cod para agencia
                   FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                   xcampo := 'cod_agencia';
                   xcodbancoupdate := DMMACS.TCodigo.FieldByName('cod_agencia').AsString;
                   insercod(DMBANCO.TAgencia, 'AGENCIA');
                   //Samuel Fabricio Wink - 30/1/2009: busca cod pessoa de agencia
                   FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TAgencia.FieldByName('cod_pessoa').AsString, '');
                   //Samuel Fabricio Wink - 30/1/2009: gera cod para pessoa
                   FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                   xcampo := 'cod_pessoa';
                   xcodpessoaupdate := DMMACS.TCodigo.FieldByName('cod_pessoa').AsString;
                   //Samuel Fabricio Wink - 30/1/2009: insere pessoa
                   pessoa;
                   //Samuel Fabricio Wink - 30/1/2009: insere agencia
                   agencia;

                   //Samuel Fabricio Wink - 30/1/2009: gera cod para ctacor
                   FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                   xcampo := 'cod_ctacor';
                   xcodctacorupdate := DMMACS.TCodigo.FieldByName('cod_ctacor').AsString;
                   insercod(DMBANCO.TCtaCor, 'CTACOR');
                   //Samuel Fabricio Wink - 30/1/2009: insere ctacor
                   ctacor;
               end;


       end;
end;

//Samuel Fabricio Wink - 30/1/2009: importa todas as parcelas de conta a receber
procedure TFPedidoVendaConstrutora.importparcelacrmatriz;
begin
	//Samuel Fabricio Wink - 30/1/2009: seleciona todos os registros de parcelacr de dmexporta
 //	FiltraTabela(DMEXPORTA.TParcCr, 'parcelacr', '', '', '');
  DMEXPORTA.TParcCr.Close;
  DMEXPORTA.TParcCr.SQL.Clear;
  DMEXPORTA.TParcCr.SQL.Add('select * from parcelacr');
  DMEXPORTA.TParcCr.SQL.Add('order by parcelacr.cod_parcelacr');
  DMEXPORTA.TParcCr.Open;


   DMEXPORTA.TParcCr.First;
   //Samuel Fabricio Wink - 30/1/2009: insere cada parcela separadamente
   while not(DMEXPORTA.TParcCr.Eof)do
   	begin
       	try
               //Samuel Fabricio Wink - 30/1/2009: verifica se existe tal parcela no bd
               if FiltraTabela(DMCONTA.TParcCR, 'parcelacr', 'numparc', DMEXPORTA.TParcCr.FieldByName('numparc').AsString, '') = false then
                   begin
                       //Samuel Fabricio Wink - 30/1/2009: inicia processo de inclusa de ctareceber

                       //Samuel Fabricio Wink - 30/1/2009: abre tabela em dmexporta de ctareceber
                       FiltraTabela(DMEXPORTA.TCtaR, 'ctareceber', 'cod_ctareceber', DMEXPORTA.TParcCr.FieldByName('cod_ctareceber').AsString, '');

                       if DMEXPORTA.TCtaR.FieldByName('cod_usuario').AsString = '111522' then
                           begin
                               xcodusuarioupdate := '111522';
                           end
                       else
                           begin
                             //Samuel Fabricio Wink - 30/1/2009: busca cod usuario
                             FiltraTabela(DMEXPORTA.TUsuario, 'usuario', 'codusuario', DMEXPORTA.TCtaR.FieldByName('cod_usuario').AsString, '');
                             FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_func', DMEXPORTA.TUsuario.FieldByName('cod_funcionario').AsString, '');
                             FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                             FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '');
                             FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString, '');
                             FiltraTabela(DMMACS.TUsuario, 'usuario', 'cod_funcionario', DMPESSOA.TFuncionario.FieldByName('cod_func').AsString, '');
                             //Samuel Fabricio Wink - 30/1/2009: armazena cod usuario
                             xcodusuarioupdate := DMMACS.TUsuario.FieldByName('codusuario').AsString;
                           end;

                       //Samuel Fabricio Wink - 30/1/2009: busca cod cliente
                       FiltraTabela(DMEXPORTA.TCliente, 'cliente', 'cod_cliente', DMEXPORTA.TCtaR.FieldByName('cod_cliente').AsString, '');
                       FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TCliente.FieldByName('cod_pessoa').AsString, '');
                       FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '');
                       FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString, '');
                       //Samuel Fabricio Wink - 30/1/2009: armazena cod cliente
                       xcodclienteupdate := DMPESSOA.TCliente.FieldByName('cod_cliente').AsString;

                       //Samuel Fabricio Wink - 30/1/2009: busca cod pln de contas
                       FiltraTabela(DMEXPORTA.Alx5, 'plncta', 'cod_plncta', DMEXPORTA.TCtaR.FieldByName('cod_plncta').AsString, '');
                       FiltraTabela(DMCONTA.TPlnCta, 'plncta', 'classificacao', DMEXPORTA.Alx5.FieldByName('classificacao').AsString, '');
                       //Samuel Fabricio Wink - 30/1/2009: guarda cod de plncta
                       xcodplncontaupdate := DMCONTA.TPlnCta.FieldByName('cod_plncta').AsString;

                       //Samuel Fabricio Wink - 30/1/2009: busca cod de form de pagamento
                       FiltraTabela(DMEXPORTA.TFormPag, 'formpag', 'cod_formpag', DMEXPORTA.TCtaR.FieldByName('cod_formpag').AsString, '');
                       FiltraTabela(DMFINANC.TFormPag, 'formpag', 'cod_interno', DMEXPORTA.TFormPag.FieldByName('cod_interno').AsString, '');
                       //Samuel Fabricio Wink - 30/1/2009: guarda cod de form de pagamento
                       xcodformpagupdate := DMFINANC.TFormPag.FieldByName('cod_formpag').AsString;

                       //Samuel Fabricio Wink - 30/1/2009: busca cod do pedvenda
                       FiltraTabela(DMSAIDA.TPedV, 'pedvenda', 'numped', DMEXPORTA.TCtaR.FieldByName('numdoc').AsString, '');
                       xcodgeradorupdate := DMSAIDA.TPedV.FieldByName('cod_pedvenda').AsString;

                       //Samuel Fabricio Wink - 30/1/2009: verifica se ctareceber ja existe
                       if FiltraTabela(DMCONTA.TCtaR, 'ctareceber', 'cod_gerador', xcodgeradorupdate, '') = false then
                           begin
                               xforma := 'insert';

                               //Samuel Fabricio Wink - 30/1/2009: gera novo codigo para ctareceber
                               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                               xcampo := 'cod_ctareceber';
                               xcodctareceberupdate := DMMACS.TCodigo.FieldByName('cod_ctareceber').AsString;
                               insercod(DMCONTA.TCtaR, 'CTARECEBER');

                               //Samuel Fabricio Wink - 30/1/2009: insere ctareceber
                               ctareceber;
                           end
                       else
                           begin
                               xforma := 'update';

                               //Samuel Fabricio Wink - 30/1/2009: guarda codigos
                               xcodupdate := DMCONTA.TCtaR.FieldByName('cod_ctareceber').AsString;
                               xcodctareceberupdate := DMCONTA.TCtaR.FieldByName('cod_ctareceber').AsString;

                               //Samuel Fabricio Wink - 30/1/2009: faz update em ctarec
                               ctareceber;
                           end;

                       //Samuel Fabricio Wink - 30/1/2009: inicia processo de inclusao de parcelacr
                       xforma := 'insert';
                       //Samuel Fabricio Wink - 30/1/2009: gera novo codigo para parcelacr
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_parcelacr';
                       xcodparcelacrupdate := DMMACS.TCodigo.FieldByName('cod_parcelacr').AsString;
                       insercod(DMCONTA.TParcCR, 'PARCELACR');

                       //Samuel Fabricio Wink - 30/1/2009: busca codigo de ctacor
                       if DMEXPORTA.TParcCr.FieldByName('cod_ctacor').AsString <> '' then
                           begin
                             FiltraTabela(DMEXPORTA.TCtaCor, 'ctacor', 'cod_ctacor', DMEXPORTA.TParcCr.FieldByName('cod_ctacor').AsString, '');
                             //Samuel Fabricio Wink - 30/1/2009: importa ctacor nela já se enconta o xcodctacorupdate
                          //   importctacor;
                           end;

                       //Samuel Fabricio Wink - 30/1/2009: insere parcelacr
                       parcelacr;

                       //Samuel Fabricio Wink - 30/1/2009: verifica a essencia do pagamento
                       {if (DMEXPORTA.TParcCr.FieldByName('cobranca').AsString = 'Cheque') then
                           begin
                               xforma := 'insert';

                               //Samuel Fabricio Wink - 30/1/2009: busca movbanco em dmexporta
                               FiltraTabela(DMEXPORTA.TMovBanco, 'movbanco', 'cod_gerador', DMEXPORTA.TParcCr.FieldByName('cod_parcelacr').AsString, '');
                               //Samuel Fabricio Wink - 30/1/2009: gera novo codigo para parcelacr
                               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                               xcampo := 'cod_movbanco';
                               xcodmovbancoupdate := DMMACS.TCodigo.FieldByName('cod_movbanco').AsString;
                               xcodgeradorupdate := DMMACS.TCodigo.FieldByName('cod_movbanco').AsString;
                               insercod;

                               //Samuel Fabricio Wink - 30/1/2009: importa ctacor
                               FiltraTabela(DMEXPORTA.TCtaCor, 'ctacor', 'cod_ctacor', DMEXPORTA.TMovBanco.FieldByName('cod_ctacor').AsString, '');
                               //Samuel Fabricio Wink - 30/1/2009: atualiza ctacor e ja pega o scodctacorupdate
                               importctacor;

                               //Samuel Fabricio Wink - 30/1/2009: pega codigo plncta
                               FiltraTabela(DMEXPORTA.Alx5, 'plncta', 'cod_plncta', DMEXPORTA.TMovBanco.FieldByName('cod_plncta').AsString, '');
                               FiltraTabela(DMCONTA.TPlnCta, 'plncta', 'classificacao', DMEXPORTA.Alx5.FieldByName('classificacao').AsString, '');
                               //Samuel Fabricio Wink - 30/1/2009: guarda codigo de plncta
                               xcodplncontaupdate := DMCONTA.TPlnCta.FieldByName('cod_plncta').AsString;

                               //Samuel Fabricio Wink - 30/1/2009: busca codigo do usuario
                               FiltraTabela(DMEXPORTA.TUsuario, 'usuario', 'codusuario', DMEXPORTA.TMovBanco.FieldByName('cod_usuario').AsString, '');
                               FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_func', DMEXPORTA.TUsuario.FieldByName('cod_funcionario').AsString, '');
                               FiltraTabela(DMEXPORTA.TPessoaF, 'pessoaf', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                               FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                               FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '');
                               FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString, '');
                               FiltraTabela(DMMACS.TUsuario, 'usuario', 'cod_funcionario', DMPESSOA.TFuncionario.FieldByName('cod_func').AsString, '');
                               //Samuel Fabricio Wink - 30/1/2009: guarda cod do usuario
                               xcodusuarioupdate := DMMACS.TUsuario.FieldByName('cod_usuario').AsString;

                               //Samuel Fabricio Wink - 30/1/2009: cod gerador vem do parcelacr em xcodgeradorupdate
                               xforma := 'insert';
                               //Samuel Fabricio Wink - 30/1/2009: insere movbanco
                               movbanco;

                               //Samuel Fabricio Wink - 30/1/2009: busca chequerec em dmexporta
                               FiltraTabela(DMEXPORTA.TChequeRec, 'chequerec', 'cod_movbanco', DMEXPORTA.TMovBanco.FieldByName('cod_movbanco').AsString, '');

                               //Samuel Fabricio Wink - 30/1/2009: gera novo codigo para chequerec
                               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                               xcampo := 'cod_chequerec';
                               xcodchequerecupdate := DMMACS.TCodigo.FieldByName('cod_chequerec').AsString;
                               xcodgeradorupdate := DMMACS.TCodigo.FieldByName('cod_chequerec').AsString;
                               insercod;

                               //Samuel Fabricio Wink - 30/1/2009: o cod do mov banco esta em xcodmovbanco

                               //Samuel Fabricio Wink - 30/1/2009: busca banco
                               FiltraTabela(DMEXPORTA.TBanco, 'banco', 'cod_banco', DMEXPORTA.TChequeRec.FieldByName('cod_banco').AsString, '');
                               if FiltraTabela(DMBANCO.TBanco, 'banco', 'numbanco', DMEXPORTA.TBanco.FieldByName('numbanco').AsString, '') = false then
                                   begin
                                       xforma := 'insert';

                                       //Samuel Fabricio Wink - 30/1/2009: gera novo codigo para banco
                                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                                       xcampo := 'cod_banco';
                                       xcodbancoupdate := DMMACS.TCodigo.FieldByName('cod_banco').AsString;
                                       insercod;
                                       //Samuel Fabricio Wink - 30/1/2009: insere banco
                                       banco;
                                   end
                               else
                                   begin
                                       xforma := 'update';
                                       //Samuel Fabricio Wink - 30/1/2009: guarda codigo
                                       xcodupdate := DMBANCO.TBanco.FieldByName('cod_banco').AsString;
                                       xcodbancoupdate := DMBANCO.TBanco.FieldByName('cod_banco').AsString;
                                       //Samuel Fabricio Wink - 30/1/2009: faz update
                                       banco;
                                   end;
                               xforma := 'insert';
                               //Samuel Fabricio Wink - 30/1/2009: insere cheque
                               chequerec;

                               //Samuel Fabricio Wink - 30/1/2009: busca lancamento
                               FiltraTabela(DMEXPORTA.TLanCaixa, 'lancaixa', 'cod_gerador', DMEXPORTA.TChequeRec.FieldByName('cod_chequerec').AsString, '');
                               DMEXPORTA.TLanCaixa.First;
                               //Samuel Fabricio Wink - 30/1/2009:	inicia processo de lancaixa
                               while DMEXPORTA.TLanCaixa.Eof do
                                   begin
                                       //Samuel Fabricio Wink - 30/1/2009: gera novo codigo para lancaixa
                                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                                       xcampo := 'cod_lanc';
                                       xcodlancaixaupdate := DMMACS.TCodigo.FieldByName('cod_lanc').AsString;
                                       insercod;

                                       //Samuel Fabricio Wink - 30/1/2009: o xcodgeradorupdate esta em chequerec

                                       //Samuel Fabricio Wink - 30/1/2009: busca codigo do usuario
                                       FiltraTabela(DMEXPORTA.TUsuario, 'usuario', 'codusuario', DMEXPORTA.TLanCaixa.FieldByName('cod_usuario').AsString, '');
                                       FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_func', DMEXPORTA.TUsuario.FieldByName('cod_funcionario').AsString, '');
                                       FiltraTabela(DMEXPORTA.TPessoaF, 'pessoaf', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                                       FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                                       FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '');
                                       FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString, '');
                                       FiltraTabela(DMMACS.TUsuario, 'usuario', 'cod_funcionario', DMPESSOA.TFuncionario.FieldByName('cod_func').AsString, '');
                                       //Samuel Fabricio Wink - 30/1/2009: guarda cod do usuario
                                       xcodusuarioupdate := DMMACS.TUsuario.FieldByName('cod_usuario').AsString;

                                       //Samuel Fabricio Wink - 30/1/2009: insere lancaixa
                                       xforma := 'insert';
                                       lancamentocaixa;
                                   end;
                           end;}

                       //Samuel Fabricio Wink - 30/1/2009: verifica a essencia do pagamento
                       {if (DMEXPORTA.TParcCr.FieldByName('cobranca').AsString = 'Cartão') then
                           begin
                               xforma := 'insert';

                               //Samuel Fabricio Wink - 30/1/2009: busca movbanco em dmexporta
                               FiltraTabela(DMEXPORTA.TMovBanco, 'movbanco', 'cod_gerador', DMEXPORTA.TParcCr.FieldByName('cod_parcelacr').AsString, '');
                               //Samuel Fabricio Wink - 30/1/2009: gera novo codigo para parcelacr
                               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                               xcampo := 'cod_movbanco';
                               xcodmovbancoupdate := DMMACS.TCodigo.FieldByName('cod_movbanco').AsString;
                               xcodgeradorupdate := DMMACS.TCodigo.FieldByName('cod_movbanco').AsString;
                               insercod;

                               //Samuel Fabricio Wink - 30/1/2009: importa ctacor
                               FiltraTabela(DMEXPORTA.TCtaCor, 'ctacor', 'cod_ctacor', DMEXPORTA.TMovBanco.FieldByName('cod_ctacor').AsString, '');
                               //Samuel Fabricio Wink - 30/1/2009: atualiza ctacor e ja pega o scodctacorupdate
                               importctacor;

                               //Samuel Fabricio Wink - 30/1/2009: pega codigo plncta
                               FiltraTabela(DMEXPORTA.Alx5, 'plncta', 'cod_plncta', DMEXPORTA.TMovBanco.FieldByName('cod_plncta').AsString, '');
                               FiltraTabela(DMCONTA.TPlnCta, 'plncta', 'classificacao', DMEXPORTA.Alx5.FieldByName('classificacao').AsString, '');
                               //Samuel Fabricio Wink - 30/1/2009: guarda codigo de plncta
                               xcodplncontaupdate := DMCONTA.TPlnCta.FieldByName('cod_plncta').AsString;

                               //Samuel Fabricio Wink - 30/1/2009: busca codigo do usuario
                               FiltraTabela(DMEXPORTA.TUsuario, 'usuario', 'codusuario', DMEXPORTA.TMovBanco.FieldByName('cod_usuario').AsString, '');
                               FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_func', DMEXPORTA.TUsuario.FieldByName('cod_funcionario').AsString, '');
                               FiltraTabela(DMEXPORTA.TPessoaF, 'pessoaf', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                               FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                               FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '');
                               FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString, '');
                               FiltraTabela(DMMACS.TUsuario, 'usuario', 'cod_funcionario', DMPESSOA.TFuncionario.FieldByName('cod_func').AsString, '');
                               //Samuel Fabricio Wink - 30/1/2009: guarda cod do usuario
                               xcodusuarioupdate := DMMACS.TUsuario.FieldByName('cod_usuario').AsString;

                               //Samuel Fabricio Wink - 30/1/2009: cod gerador vem do parcelacr em xcodgeradorupdate
                               xforma := 'insert';
                               //Samuel Fabricio Wink - 30/1/2009: insere movbanco
                               movbanco;
                           end;}
                   end
               else
                   //Samuel Fabricio Wink - 30/1/2009: atualiza quando existe parcela
                   begin
                       //Samuel Fabricio Wink - 30/1/2009: atualiza parcelacr
                       // - 18/06/2009: só atualiza a parcela se não estiver baixada
                       if DMCONTA.TParcCR.FieldByName('FECH').AsString = 'N'
                       then begin
                       //Samuel Fabricio Wink - 30/1/2009: guarda codigos
                           xcodupdate :=  DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString;
                           xcodparcelacrupdate :=  DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString;
                           xcodctareceberupdate :=  DMCONTA.TParcCR.FieldByName('cod_ctareceber').AsString;
                           xcodctacorupdate :=  DMCONTA.TParcCR.FieldByName('cod_ctacor').AsString;
                           xforma := 'update';
                           //Samuel Fabricio Wink - 30/1/2009: atualiza parcelacr
                           parcelacr;
                       end;

                       {//Samuel Fabricio Wink - 30/1/2009: verifica a essencia do pagamento
                       if (DMEXPORTA.TParcCr.FieldByName('cobranca').AsString = 'carteira') then
                           begin

                           end;

                       //Samuel Fabricio Wink - 30/1/2009: verifica a essencia do pagamento
                       if (DMEXPORTA.TParcCr.FieldByName('cobranca').AsString = 'Cheque') then
                           begin
                           end;

                       //Samuel Fabricio Wink - 30/1/2009: verifica a essencia do pagamento
                       if (DMEXPORTA.TParcCr.FieldByName('cobranca').AsString = 'Cartão') then
                           begin
                           end;}
                   end;

               DMFINANC.Transaction.CommitRetaining;
               DMBANCO.IBT.CommitRetaining;
               DMCONTA.IBT.CommitRetaining;
               //Samuel Fabricio Wink - 31/1/2009: segue para o seguinte registro
               DMEXPORTA.TParcCr.Next;
       	Except
           	//Samuel Fabricio Wink - 2/3/2009:gera o log de erro para saber onde ocorreu o erro;
               GeraLogWink(Date(), Time(), 'Erro ao atualizar a parcela de contas a receber ' + DMEXPORTA.TParcCr.FieldByName('numparc').AsString);

       		DMEXPORTA.TParcCr.Next;
           end;
       end;
end;

//Samuel Fabricio Wink - 5/3/2009: sincroniza as parcelas quando for filial
procedure TFPedidoVendaConstrutora.importparcelacrfilial;
begin
	//Samuel Fabricio Wink - 30/1/2009: seleciona todos os registros de parcelacr de dmexporta
	FiltraTabela(DMEXPORTA.TParcCr, 'parcelacr', '', '', '');
   DMEXPORTA.TParcCr.First;
   //Samuel Fabricio Wink - 30/1/2009: insere cada parcela separadamente
   while not(DMEXPORTA.TParcCr.Eof)do
   	begin
       	try
               //Samuel Fabricio Wink - 30/1/2009: verifica se existe tal parcela no bd
               if FiltraTabela(DMCONTA.TParcCR, 'parcelacr', 'numparc', DMEXPORTA.TParcCr.FieldByName('numparc').AsString, '') = false then
                   begin
                       //Samuel Fabricio Wink - 30/1/2009: inicia processo de inclusa de ctareceber

                       //Samuel Fabricio Wink - 30/1/2009: abre tabela em dmexporta de ctareceber
                       FiltraTabela(DMEXPORTA.TCtaR, 'ctareceber', 'cod_ctareceber', DMEXPORTA.TParcCr.FieldByName('cod_ctareceber').AsString, '');

                       if DMEXPORTA.TCtaR.FieldByName('cod_usuario').AsString = '111522' then
                           begin
                               xcodusuarioupdate := '111522';
                           end
                       else
                           begin
                             //Samuel Fabricio Wink - 30/1/2009: busca cod usuario
                             FiltraTabela(DMEXPORTA.TUsuario, 'usuario', 'codusuario', DMEXPORTA.TCtaR.FieldByName('cod_usuario').AsString, '');
                             FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_func', DMEXPORTA.TUsuario.FieldByName('cod_funcionario').AsString, '');
                             FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                             FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '');
                             FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString, '');
                             FiltraTabela(DMMACS.TUsuario, 'usuario', 'cod_funcionario', DMPESSOA.TFuncionario.FieldByName('cod_func').AsString, '');
                             //Samuel Fabricio Wink - 30/1/2009: armazena cod usuario
                             xcodusuarioupdate := DMMACS.TUsuario.FieldByName('codusuario').AsString;
                           end;

                       //Samuel Fabricio Wink - 30/1/2009: busca cod cliente
                       FiltraTabela(DMEXPORTA.TCliente, 'cliente', 'cod_interno', DMEXPORTA.TCtaR.FieldByName('cod_interno').AsString, '');
                       //FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TCliente.FieldByName('cod_pessoa').AsString, '');
                       //FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '');
                      // FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString, '');
                       //Samuel Fabricio Wink - 30/1/2009: armazena cod cliente
                       xcodclienteupdate := DMPESSOA.TCliente.FieldByName('cod_cliente').AsString;

                       //Samuel Fabricio Wink - 30/1/2009: busca cod pln de contas
                       FiltraTabela(DMEXPORTA.Alx5, 'plncta', 'cod_plncta', DMEXPORTA.TCtaR.FieldByName('cod_plncta').AsString, '');
                       FiltraTabela(DMCONTA.TPlnCta, 'plncta', 'classificacao', DMEXPORTA.Alx5.FieldByName('classificacao').AsString, '');
                       //Samuel Fabricio Wink - 30/1/2009: guarda cod de plncta
                       xcodplncontaupdate := DMCONTA.TPlnCta.FieldByName('cod_plncta').AsString;

                       //Samuel Fabricio Wink - 30/1/2009: busca cod de form de pagamento
                       FiltraTabela(DMEXPORTA.TFormPag, 'formpag', 'cod_formpag', DMEXPORTA.TCtaR.FieldByName('cod_formpag').AsString, '');
                       FiltraTabela(DMFINANC.TFormPag, 'formpag', 'cod_interno', DMEXPORTA.TFormPag.FieldByName('cod_interno').AsString, '');
                       //Samuel Fabricio Wink - 30/1/2009: guarda cod de form de pagamento
                       xcodformpagupdate := DMFINANC.TFormPag.FieldByName('cod_formpag').AsString;

                       //Samuel Fabricio Wink - 30/1/2009: busca cod do pedvenda
                       FiltraTabela(DMSAIDA.TPedV, 'pedvenda', 'numped', DMEXPORTA.TCtaR.FieldByName('numdoc').AsString, '');
                       xcodgeradorupdate := DMSAIDA.TPedV.FieldByName('numped').AsString;

                       //Samuel Fabricio Wink - 30/1/2009: verifica se ctareceber ja existe
                       if FiltraTabela(DMCONTA.TCtaR, 'ctareceber', 'numdoc', xcodgeradorupdate, '') = false then
                           begin
                               xforma := 'insert';

                               //Samuel Fabricio Wink - 30/1/2009: gera novo codigo para ctareceber
                               FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                               xcampo := 'cod_ctareceber';
                               xcodctareceberupdate := DMMACS.TCodigo.FieldByName('cod_ctareceber').AsString;
                               insercod(DMCONTA.TCtaR, 'CTARECEBER');

                               //Samuel Fabricio Wink - 30/1/2009: insere ctareceber
                               ctareceber;
                           end
                       else
                           begin
                               xforma := 'update';

                               //Samuel Fabricio Wink - 30/1/2009: guarda codigos
                               xcodupdate := DMCONTA.TCtaR.FieldByName('cod_ctareceber').AsString;
                               xcodctareceberupdate := DMCONTA.TCtaR.FieldByName('cod_ctareceber').AsString;

                               //Samuel Fabricio Wink - 30/1/2009: faz update em ctarec
                               ctareceber;
                           end;

                       //Samuel Fabricio Wink - 30/1/2009: inicia processo de inclusao de parcelacr
                       xforma := 'insert';
                       //Samuel Fabricio Wink - 30/1/2009: gera novo codigo para parcelacr
                       FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                       xcampo := 'cod_parcelacr';
                       xcodparcelacrupdate := DMMACS.TCodigo.FieldByName('cod_parcelacr').AsString;
                       insercod(DMCONTA.TParcCR, 'PARCELACR');

                       //Samuel Fabricio Wink - 30/1/2009: busca codigo de ctacor
                       if DMEXPORTA.TParcCr.FieldByName('cod_ctacor').AsString <> '' then
                           begin
                             FiltraTabela(DMEXPORTA.TCtaCor, 'ctacor', 'cod_ctacor', DMEXPORTA.TParcCr.FieldByName('cod_ctacor').AsString, '');
                             //Samuel Fabricio Wink - 30/1/2009: importa ctacor nela já se enconta o xcodctacorupdate
                             importctacor;
                           end;

                       //Samuel Fabricio Wink - 30/1/2009: insere parcelacr
                       parcelacr;
                   end
               else
                   //Samuel Fabricio Wink - 30/1/2009: atualiza quando existe parcela
                   begin
                       //Samuel Fabricio Wink - 30/1/2009: atualiza parcelacr

                       //Samuel Fabricio Wink - 30/1/2009: guarda codigos
                       xcodupdate :=  DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString;
                       xcodparcelacrupdate :=  DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString;
                       xcodctareceberupdate :=  DMCONTA.TParcCR.FieldByName('cod_ctareceber').AsString;
                       xcodctacorupdate :=  DMCONTA.TParcCR.FieldByName('cod_ctacor').AsString;
                       xforma := 'update';
                       //Samuel Fabricio Wink - 30/1/2009: atualiza parcelacr
                       parcelacr;
                   end;

               DMFINANC.Transaction.CommitRetaining;
               DMBANCO.IBT.CommitRetaining;
               DMCONTA.IBT.CommitRetaining;
               //Samuel Fabricio Wink - 31/1/2009: segue para o seguinte registro
               DMEXPORTA.TParcCr.Next;
       	Except
           	//Samuel Fabricio Wink - 2/3/2009:gera o log de erro para saber onde ocorreu o erro;
               GeraLogWink(Date(), Time(), 'Erro ao atualizar a parcela de contas a receber ' + DMEXPORTA.TParcCr.FieldByName('numparc').AsString);

       		DMEXPORTA.TParcCr.Next;
           end;
       end;
end;

//Samuel Fabricio Wink - 5/3/2009: importa caixa
procedure TFPedidoVendaConstrutora.importcaixa;
var
	xvalorsoma : Currency;
   xcodgeradorupdateAux : String;
begin
	//Samuel Fabricio Wink - 5/3/2009: busca todos os caixas do bd exp
   FiltraTabela(DMEXPORTA.Alx5, 'caixa', '', '', '');

   DMEXPORTA.Alx5.First;

   //Samuel Fabricio Wink - 5/3/2009: inicia processo de sincronização
   while not(DMEXPORTA.Alx5.Eof)do
   begin
       //Samuel Fabricio Wink - 5/3/2009: verifica se existe o caixa
       if FiltraTabela(DMCAIXA.TCaixa, 'caixa', 'numcaixa', DMEXPORTA.Alx5.fieldByName('numcaixa').AsString, '') = false
       then begin
          //Samuel Fabricio Wink - 5/3/2009: gera novo cod
          FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
          xcampo := 'cod_caixa';
          xcodcaixaupdate := DMMACS.TCodigo.FieldByName('cod_caixa').AsString;
          xcodgeradorupdate := DMMACS.TCodigo.FieldByName('cod_caixa').AsString;
          insercod(DMCAIXA.TCaixa, 'CAIXA');

          //Samuel Fabricio Wink - 5/3/2009: faz insert no bd
          xforma := 'insert';
          caixa;
       end
       else begin
          //Samuel Fabricio Wink - 5/3/2009: seta cod para update
          xcodupdate := DMCAIXA.TCaixa.FieldByName('cod_caixa').AsString;
          xcodcaixaupdate := DMCAIXA.TCaixa.FieldByName('cod_caixa').AsString;

          //Samuel Fabricio Wink - 5/3/2009: faz update no bd
          xforma := 'update';
          caixa;
       end;
       DMEXPORTA.Alx5.Next;
  end;
    DMEXPORTA.TAbCaixa.Close;
    DMEXPORTA.TAbCaixa.SQL.Clear;
    DMEXPORTA.TAbCaixa.SQL.Add('select * from abcaixa');
    DMEXPORTA.TAbCaixa.SQL.Add('order by abcaixa.cod_abcaixa');
    DMEXPORTA.TAbCaixa.open;
    DMEXPORTA.TAbCaixa.Last;

    FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
    xcampo := 'cod_abcaixa';
    xcodabcaixaupdate := DMMACS.TCodigo.FieldByName('cod_abcaixa').AsString;
    insercod(DMCAIXA.TAbCaixa, 'ABCAIXA');

    //Samuel Fabricio Wink - 17/3/2009: inicia processo de insercao do abcaixa
    //Samuel Fabricio Wink - 17/3/2009: insere abertura de caixa
    DMCAIXA.TABCaixa.Close;
    DMCAIXA.TABCaixa.SQL.Clear;
    DMCAIXA.TABCaixa.SQL.Add('insert into abcaixa');
    DMCAIXA.TABCaixa.SQL.Add('(COD_ABCAIXA, COD_CAIXA, DTABERTURA, HORAABERTURA, SALDOINI, SALDOFIN,');
    DMCAIXA.TABCaixa.SQL.Add('DTFECHA, HORAFECHA, FECHADO, COD_USUARIO)');
    DMCAIXA.TABCaixa.SQL.Add('values');
    DMCAIXA.TABCaixa.SQL.Add('(:COD_ABCAIXA, :COD_CAIXA, :DTABERTURA, :HORAABERTURA, :SALDOINI, :SALDOFIN,');
    DMCAIXA.TABCaixa.SQL.Add(':DTFECHA, :HORAFECHA, :FECHADO, :COD_USUARIO)');
    DMCAIXA.TABCaixa.ParamByName('COD_ABCAIXA').AsInteger := StrToInt(xcodabcaixaupdate);
    DMCAIXA.TABCaixa.ParamByName('COD_CAIXA').AsInteger := StrToInt(xcodcaixaupdate);
    DMCAIXA.TABCaixa.ParamByName('DTABERTURA').AsDate := DMEXPORTA.TAbCaixa.FieldByName('DTABERTURA').AsDateTime;
    DMCAIXA.TABCaixa.ParamByName('HORAABERTURA').AsTime := DMEXPORTA.TAbCaixa.FieldByName('HORAABERTURA').AsDateTime;
    DMCAIXA.TABCaixa.ParamByName('SALDOINI').AsCurrency := DMEXPORTA.TAbCaixa.FieldByName('SALDOINI').AsCurrency;
    DMCAIXA.TABCaixa.ParamByName('SALDOFIN').AsCurrency := DMEXPORTA.TAbCaixa.FieldByName('SALDOFIN').AsCurrency;
    DMCAIXA.TABCaixa.ParamByName('DTFECHA').AsDate := DMEXPORTA.TAbCaixa.FieldByName('DTFECHA').AsDateTime;
    DMCAIXA.TABCaixa.ParamByName('HORAFECHA').AsTime := DMEXPORTA.TAbCaixa.FieldByName('HORAFECHA').AsDateTime;
    DMCAIXA.TABCaixa.ParamByName('FECHADO').AsString := 'S';
    DMCAIXA.TABCaixa.ParamByName('COD_USUARIO').AsInteger := DMEXPORTA.TAbCaixa.FieldByName('COD_USUARIO').AsInteger;
    DMCAIXA.TABCaixa.ExecSQL;
    DMCAIXA.IBT.CommitRetaining;

    try
       //Samuel Fabricio Wink - 17/3/2009: busca todos os lancamento referente
       DMEXPORTA.TLanCaixa.Close;
       DMEXPORTA.TLanCaixa.SQL.Clear;
       DMEXPORTA.TLanCaixa.SQL.Add('select * from lancaixa');
       DMEXPORTA.TLanCaixa.SQL.Add('WHERE lancaixa.export <> :EXP');
       DMEXPORTA.TLanCaixa.ParamByName('EXP').AsInteger:=1;
       DMEXPORTA.TLanCaixa.SQL.Add('order by lancaixa.cod_lanc');
       DMEXPORTA.TLanCaixa.Open;
       DMEXPORTA.TLanCaixa.First;

       //Samuel Fabricio Wink - 6/3/2009: inicia processo de inserção de lancaixa
       while not(DMEXPORTA.TLanCaixa.Eof) do
       begin
             try
                 //Samuel Fabricio Wink - 10/3/2009: verifica se o usuario naum é MESTRE
                 if DMEXPORTA.TLanCaixa.FieldByName('cod_usuario').AsString <> '111522'
                 then begin
                     //Samuel Fabricio Wink - 6/3/2009: busca usuario real
                     FiltraTabela(DMEXPORTA.TUsuario, 'usuario', 'codusuario', DMEXPORTA.TLanCaixa.FieldByName('cod_usuario').AsString, '');
                     FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_func', DMEXPORTA.TUsuario.FieldByName('cod_funcionario').AsString, '');
                     FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                     FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '');
                     FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString, '');
                     FiltraTabela(DMMACS.TUsuario, 'usuario', 'cod_funcionario', DMPESSOA.TFuncionario.FieldByName('cod_func').AsString, '');

                     xcodusuarioupdate := DMMACS.TUsuario.FieldByName('codusuario').AsString;
                 end
                 else begin
                     xcodusuarioupdate := '111522';
                 end;

                 FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'lancaixa.historico', DMEXPORTA.TLanCaixa.fieldbyname('historico').AsString, '');

                 //*************************************************************************
                 //*************************************************************************
                 //*************************************************************************     COMPARAÇÃO SE JA FOI SINCRONIZADO O LANÇAMENTO
                 //*************************************************************************
                 //*************************************************************************

                 if DMCAIXA.TLanCaixa.IsEmpty
                 then begin

                 //Samuel Fabricio Wink - 5/3/2009: gera novo cod para o lancamento de caixa
                 FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                 xcampo := 'cod_lanc';
                 xcodlancaixaupdate := DMMACS.TCodigo.FieldByName('cod_lanc').AsString;
                 insercod(DMCAIXA.TLanCaixa, 'LANCAIXA');

                 //Samuel Fabricio Wink - 6/3/2009: verifica os tipo geradores
                 if DMEXPORTA.TLanCaixa.FieldByName('tipogerador').AsString = ''
                 then begin
                     //Samuel Fabricio Wink - 6/3/2009: zero a variavel para q naum entre em cod_gerador e tipogerador
                     //xcodusuarioupdate := '';
                     //Samuel Fabricio Wink - 6/3/2009: insere lancamento de caixa
                     xforma := 'insert';
                     lancamentocaixa;
                 end
                 else begin
                     if ((DMEXPORTA.TLanCaixa.FieldByName('tipogerador').AsString = 'PEDVENDA') or (DMEXPORTA.TLanCaixa.FieldByName('tipogerador').AsString = 'TPEDV'))
                     then begin
                         //Samuel Fabricio Wink - 6/3/2009: busca o cod do pedvenda respectivo
                         FiltraTabela(DMEXPORTA.TPedV, 'pedvenda', 'cod_pedvenda', DMEXPORTA.TLanCaixa.FieldByName('cod_gerador').AsString, '');
                         FiltraTabela(DMSAIDA.TPedV, 'pedvenda', 'numped', DMEXPORTA.TPedV.FieldByName('numped').AsString, '');
                         xcodgeradorupdate := DMSAIDA.TPedV.FieldByName('cod_pedvenda').AsString;

                         //Samuel Fabricio Wink - 6/3/2009: insere lancamento de caixa
                         xforma := 'insert';
                         lancamentocaixa;
                     end
                     else begin
                         if DMEXPORTA.TLanCaixa.FieldByName('tipogerador').AsString = 'LCHR'
                         then begin
                             //Samuel Fabricio Wink - 6/3/2009: busca o cheque correspondente
                             xforma := 'insert';

                             //Samuel Fabricio Wink - 6/3/2009: busca cheque referenta
                             FiltraTabela(DMEXPORTA.TChequeRec, 'chequerec', 'cod_chequerec', DMEXPORTA.TLanCaixa.FieldByName('cod_gerador').AsString, '');
                             //Samuel Fabricio Wink - 6/3/2009: busca o mov banco
                             FiltraTabela(DMEXPORTA.TMovBanco, 'movbanco', 'cod_movbanco', DMEXPORTA.TChequeRec.FieldByName('cod_movbanco').AsString, '');

                             //Samuel Fabricio Wink - 10/3/2009: gera novo codigo para movbanco
                             FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                             xcampo := 'cod_movbanco';
                             xcodmovbancoupdate := DMMACS.TCodigo.FieldByName('cod_movbanco').AsString;
                             xcodgeradorupdateAux := DMMACS.TCodigo.FieldByName('cod_movbanco').AsString;
                             insercod(DMBANCO.TMovBanco, 'MOVBANCO');

                             //Samuel Fabricio Wink - 6/3/2009: busca ctacor
                             if DMEXPORTA.TMovBanco.FieldByName('cod_ctacor').AsString <> ''
                             then begin
                                     xforma := 'insert';

                                     //Samuel Fabricio Wink - 6/3/2009: busca cta cor
                                   //  FiltraTabela(DMEXPORTA.TCtaCor, 'ctacor', 'cod_ctacor', DMEXPORTA.TMovBanco.FieldByName('cod_ctacor').AsString, '');
                                     //Samuel Fabricio Wink - 30/1/2009: atualiza ctacor e ja pega o scodctacorupdate
                                   //  importctacor;

                                     //Samuel Fabricio Wink - 6/3/2009: busca agencia
                                   //  FiltraTabela(DMEXPORTA.TAgencia, 'agencia', 'cod_agencia', DMEXPORTA.TCtaCor.FieldByName('cod_agencia').AsString, '');

                                     //Samuel Fabricio Wink - 30/1/2009: pega codigo plncta
                                     FiltraTabela(DMEXPORTA.Alx5, 'plncta', 'cod_plncta', DMEXPORTA.TMovBanco.FieldByName('cod_plncta').AsString, '');
                                     FiltraTabela(DMCONTA.TPlnCta, 'plncta', 'classificacao', DMEXPORTA.Alx5.FieldByName('classificacao').AsString, '');
                                     //Samuel Fabricio Wink - 30/1/2009: guarda codigo de plncta
                                     xcodplncontaupdate := DMCONTA.TPlnCta.FieldByName('cod_plncta').AsString;

                                     //Samuel Fabricio Wink - 30/1/2009: busca codigo do usuario
                                     FiltraTabela(DMEXPORTA.TUsuario, 'usuario', 'codusuario', DMEXPORTA.TMovBanco.FieldByName('cod_usuario').AsString, '');
                                     FiltraTabela(DMEXPORTA.TFuncionario, 'funcionario', 'cod_func', DMEXPORTA.TUsuario.FieldByName('cod_funcionario').AsString, '');
                                     FiltraTabela(DMEXPORTA.TPessoaF, 'pessoaf', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                                     FiltraTabela(DMEXPORTA.TPessoa, 'pessoa', 'cod_pessoa', DMEXPORTA.TFuncionario.FieldByName('cod_pessoa').AsString, '');
                                     FiltraTabela(DMPESSOA.TPessoa, 'pessoa', 'cpfcnpj', DMEXPORTA.TPessoa.FieldByName('cpfcnpj').AsString, '');
                                     FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_pessoa', DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString, '');
                                     FiltraTabela(DMMACS.TUsuario, 'usuario', 'cod_funcionario', DMPESSOA.TFuncionario.FieldByName('cod_func').AsString, '');
                                     //Samuel Fabricio Wink - 30/1/2009: guarda cod do usuario
                                     xcodusuarioupdate := DMMACS.TUsuario.FieldByName('cod_usuario').AsString;

                                     //Samuel Fabricio Wink - 10/3/2009: cod gerador vem do movbanco xcodgeradorupdateaux
                                     xcodgeradorupdate := xcodgeradorupdateAux;

                                     xforma := 'insert';
                                     //Samuel Fabricio Wink - 30/1/2009: insere movbanco
                                     movbanco;

                                     //Samuel Fabricio Wink - 30/1/2009: busca chequerec em dmexporta
                                     FiltraTabela(DMEXPORTA.TChequeRec, 'chequerec', 'cod_movbanco', DMEXPORTA.TMovBanco.FieldByName('cod_movbanco').AsString, '');

                                     //Samuel Fabricio Wink - 30/1/2009: gera novo codigo para chequerec
                                     FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                                     xcampo := 'cod_chequerec';
                                     xcodchequerecupdate := DMMACS.TCodigo.FieldByName('cod_chequerec').AsString;
                                     xcodgeradorupdate := DMMACS.TCodigo.FieldByName('cod_chequerec').AsString;
                                     insercod(DMBANCO.TChequeRec, 'CHEQUEREC');

                                     //Samuel Fabricio Wink - 30/1/2009: o cod do mov banco esta em xcodmovbanco

                                     //Samuel Fabricio Wink - 30/1/2009: busca banco
                                     FiltraTabela(DMEXPORTA.TBanco, 'banco', 'cod_banco', DMEXPORTA.TChequeRec.FieldByName('cod_banco').AsString, '');
                                     if FiltraTabela(DMBANCO.TBanco, 'banco', 'numbanco', DMEXPORTA.TBanco.FieldByName('numbanco').AsString, '') = false
                                     then begin
                                         xforma := 'insert';

                                         //Samuel Fabricio Wink - 30/1/2009: gera novo codigo para banco
                                         FiltraTabela(DMMACS.TCodigo, 'codigo', '', '','');
                                         xcampo := 'cod_banco';
                                         xcodbancoupdate := DMMACS.TCodigo.FieldByName('cod_banco').AsString;
                                         insercod(DMBANCO.TBanco, 'BANCO');
                                         //Samuel Fabricio Wink - 30/1/2009: insere banco
                                         banco;
                                     end
                                     else begin
                                         xforma := 'update';
                                         //Samuel Fabricio Wink - 30/1/2009: guarda codigo
                                         xcodupdate := DMBANCO.TBanco.FieldByName('cod_banco').AsString;
                                         xcodbancoupdate := DMBANCO.TBanco.FieldByName('cod_banco').AsString;
                                         //Samuel Fabricio Wink - 30/1/2009: faz update
                                         banco;
                                     end;
                                     xforma := 'insert';
                                     //Samuel Fabricio Wink - 30/1/2009: insere cheque
                                     chequerec;
                              end;
                         end
                         else begin
                             if DMEXPORTA.TLanCaixa.FieldByName('tipogerador').AsString = 'CTAR'
                             then begin
                                 //Samuel Fabricio Wink - 6/3/2009: busca a parcela correspondente
                                 FiltraTabela(DMEXPORTA.TParcCr, 'parcelacr', 'cod_parcelacr', DMEXPORTA.TLanCaixa.FieldByName('cod_gerador').AsString, '');
                                 if FiltraTabela(DMCONTA.TParcCR, 'parcelacr', 'numparc', DMEXPORTA.TParcCr.FieldByName('numparc').AsString, '') = true then
                                    xcodgeradorupdate := DMCONTA.TParcCR.FieldByName('cod_parcelacr').AsString
                                 else
                                    xcodgeradorupdate :='0';

                                 //Samuel Fabricio Wink - 6/3/2009: insere lancamento de caixa
                                 xforma := 'insert';
                                 lancamentocaixa;
                             end
                             else begin
                                 //Samuel Fabricio Wink - 6/3/2009: seta o valor vazio pra naum da erro isso é para os lancamento
                                 //de pedido de compra
                                 xcodgeradorupdate := '';

                                 //Samuel Fabricio Wink - 6/3/2009: insere lancamento de caixa
                                 xforma := 'insert';
                                 lancamentocaixa;
                             end;
                         end;
                     end;
                 end;
                 end;
                 //Samuel Fabricio Wink - 17/3/2009: comita informacoes
                 DMCAIXA.IBT.CommitRetaining;
                 DMBANCO.IBT.CommitRetaining;

                 //Samuel Fabricio Wink - 6/3/2009: passa para o seguinte lancamento
                 DMEXPORTA.TLanCaixa.Next;

             Except
                 //Samuel Fabricio Wink - 2/3/2009:gera o log de erro para saber onde ocorreu o erro;
                 GeraLogWink(Date(), Time(), 'Erro ao atualizar o lancaixa ' + DMEXPORTA.TLanCaixa.FieldByName('cod_lanc').AsString);

                 DMEXPORTA.TLanCaixa.Next;
             end;
       end;

       //Samuel Fabricio Wink - 10/3/2009: passa para o seguinte registro
       DMEXPORTA.TAbCaixa.Next;
    Except
        //Samuel Fabricio Wink - 17/3/2009:gera o log de erro para saber onde ocorreu o erro;
        GeraLogWink(Date(), Time(), 'Erro ao atualizar a abertura de caixa ' + DMEXPORTA.TAbCaixa.FieldByName('COD_ABCAIXA').AsString + ' do DMEXPORTA.TAbCaixa!!!');
        DMEXPORTA.TAbCaixa.Next;
    end;
end;

//gera o email para exportar
procedure TFPedidoVendaConstrutora.enviaemail;
var
   mail: TStringList;
begin
	FiltraTabela(DMMACS.TEmpresa, 'empresa', '', '', '');
	//prepara email para ser enviado
   mail := TStringList.Create;
   try
     mail.values['to'] := DMMACS.TEmpresa.FieldByName('web_page').AsString; ///AQUI VAI O EMAIL DO DESTINATARIO///
     mail.values['subject'] := 'Sincronização do Banco'; ///AQUI O ASSUNTO///
     mail.values['body'] := 'Sincronização do Banco'; ///AQUI O TEXTO NO CORPO DO EMAIL///
     mail.values['attachment0'] := 'C:\MZR\EXPORTA\DBMacsExp - '+xendarquivo+'.SFW'; ////AQUI O ENDEREÇO ONDE ENCONTRAM OS ARQUIVOS//
     //mail.values['attachment1']:='C:\Test2.txt'; ///IDEM  - NO ATTACHMENT1    TEM QUE COLOCAR A SEQUNCIA DO EMAIL A QUAL DESEJA ENVIAR EXEMPLO: ATTACHMENT1
     sendEMail(Application.Handle, mail);
   finally
       mail.Free;
   end;
end;

// Conecta banco de dados para exportar 
Function TFPedidoVendaConstrutora.ConectaBancoDados(XEndereco: string): boolean;
begin
   Try
       // DESCONECTA TABELAS DO BANCO QUE IRA RECEBER AS EXPORTAÇÕES DAS ORDENS DE SERVICO
       DMEXPORTA.TEstoque.Active := false;
       DMEXPORTA.TProduto.Active := false;
       DMEXPORTA.TSubProd.Active := false;
       DMEXPORTA.TGrupo.Active := false;
       DMEXPORTA.TSubgru.Active := false;
       DMEXPORTA.TUnidade.Active := false;
       DMEXPORTA.TCst.Active := false;
       DMEXPORTA.TPedV.Active := false;
       DMEXPORTA.TFormPag.Active := false;
       DMEXPORTA.TPessoa.Active := false;
       DMEXPORTA.TPessoaF.Active := false;
       DMEXPORTA.TPessoaJ.Active := false;
       DMEXPORTA.TCodigo.Active := false;

       DMEXPORTA.Alx.Active := false;
       DMEXPORTA.Alx2.Active := false;
       DMEXPORTA.Alx3.Active := false;
       DMEXPORTA.Alx4.Active := false;
       DMEXPORTA.Alx5.Active := false;

       // DESCONECTA BANCO E TRANSACTION
       DMExporta.DBExporta.Connected := false;
       DMExporta.IBTExporta.Active := false;

       //  INFORMA O LOCAL, CONECTA BANCO E ATIVA TRANSACTION
       DMExporta.DBExporta.DatabaseName := XEndereco;
       DMExporta.DBExporta.Connected := true;
       DMExporta.IBTExporta.Active := true;

       // ATIVA TABELAS
       DMEXPORTA.TEstoque.Active := true;
       DMEXPORTA.TProduto.Active := true;
       DMEXPORTA.TSubProd.Active := true;
       DMEXPORTA.TGrupo.Active := true;
       DMEXPORTA.TSubgru.Active := true;
       DMEXPORTA.TUnidade.Active := true;
       DMEXPORTA.TCst.Active := true;
       DMEXPORTA.TPedV.Active := true;
       DMEXPORTA.TFormPag.Active := true;
       DMEXPORTA.TPessoa.Active := true;
       DMEXPORTA.TPessoaF.Active := true;
       DMEXPORTA.TPessoaJ.Active := true;
       DMEXPORTA.TCodigo.Active := true;

       DMEXPORTA.Alx.Active := true;
       DMEXPORTA.Alx2.Active := true;
       DMEXPORTA.Alx3.Active := true;
       DMEXPORTA.Alx4.Active := true;
       DMEXPORTA.Alx5.Active := true;

       Result := true;
   Except
       Result:=false;
   End;
end;

//painel produtos container
procedure TFPedidoVendaConstrutora.PCPedVendaChange(Sender: TObject);
begin
  if(PCPedVenda.ActivePageIndex = 1)then
  	pesqcontainer
  else
  	FiltraSlave;

   FiltraSlaveDev;
end;

//Samuel Fabricio Wink - 21/1/2009: ao sair da brid de motoristas
procedure TFPedidoVendaConstrutora.DBMotoristaExit(Sender: TObject);
begin
	DBMotorista.Visible := False;
   PCodNomeMoto.Visible := False;
   EdCodCliente.SetFocus;
   //BtOpenMotorista.SetFocus;
end;

procedure TFPedidoVendaConstrutora.BtProcurarClick(Sender: TObject);
begin
  inherited;
	ODProcurar.Execute;
   EdEndereco.Text := ODProcurar.FileName;
end;

procedure TFPedidoVendaConstrutora.BtIniciarClick(Sender: TObject);
begin
  inherited;
   //verifica se hove conexao
   If ConectaBancoDados(EdEndereco.Text) = true then
     begin
         try
           PComunica.BringToFront;
           PComunica.Visible := true;
           PExp.Visible := true;
           PExp.BringToFront;

           EdEndereco.Text := '';
           BtDescompacta.Visible := false;
           BtDescompacta.SendToBack;

           PBExport.Position :=25;
           LBCONEXAO.Caption := 'SINCRONIZANDO OBRAS... ';
           PExp.Refresh;
        //   importobras;

           PBExport.Position :=30;
           LBCONEXAO.Caption := 'SINCRONIZANDO USUARIOS... ';
           PExp.Refresh;
        //   importusuario;

           //Samuel Fabricio Wink - 29/1/2009: inicia processo de sincronizacao de dados

           PBExport.Position :=40;
           LBCONEXAO.Caption := 'SINCRONIZANDO FORMA DE PAGAMENTO ... ';
           PExp.Refresh;
           //Samuel Fabricio Wink - 29/1/2009: inicia processo de sincronizacao de formas de pagamento
          // importformpag;

           PBExport.Position :=50;
           LBCONEXAO.Caption := 'SINCRONIZANDO PLANOS DE CONTAS ... ';
           PExp.Refresh;
           //Samuel Fabricio Wink - 29/1/2009: inicia processo de sincronizacao de plncta
          // importplncta;

           PBExport.Position :=60;
           LBCONEXAO.Caption := 'SINCRONIZANDO PRODUTOS ... ';
           PExp.Refresh;
           //Samuel Fabricio Wink - 29/1/2009: inicia processo de sincronizacao de produtos
          // importprodutos;

           PBExport.Position :=70;
           LBCONEXAO.Caption := 'SINCRONIZANDO CLIENTES ... ';
           PExp.Refresh;
           //Samuel Fabricio Wink - 29/1/2009: inicia processo de sincronizacao de clientes
         //  importcliente;

           PBExport.Position :=80;
           LBCONEXAO.Caption := 'SINCRONIZANDO PEDIDOS DE VENDA ... ';
           PExp.Refresh;
           //Samuel Fabricio Wink - 29/1/2009: inicia processo de sincronizacao de pedvenda
          // importpedvenda;

           //Samuel Fabricio Wink - 5/3/2009: verifica q tipo de empresa é
           if FiltraTabela(DMMacs.TEmpresa,  'empresa', 'tipo', 'filial', '') = true then
           	begin
               	//Samuel Fabricio Wink - 5/3/2009: se for filial executa essa sincronização
                   PBExport.Position :=90;
                   LBCONEXAO.Caption := 'SINCRONIZANDO CONTAS A RECEBER ... ';
                   PExp.Refresh;

                   importparcelacrfilial;
               end
           else
           	begin
               	//Samuel Fabricio Wink - 5/3/2009: se for matriz executa essa sincronização
               	PBExport.Position :=90;
                   LBCONEXAO.Caption := 'SINCRONIZANDO CONTAS A RECEBER ... ';
                   PExp.Refresh;
                   //Samuel Fabricio Wink - 29/1/2009: inicia processo de sincronizacao de parcelacr
            //       importparcelacrmatriz;

                   PBExport.Position :=95;
                   LBCONEXAO.Caption := 'SINCRONIZANDO CAIXA ... ';
                   PExp.Refresh;
                   //Samuel Fabricio Wink - 29/1/2009: inicia processo de sincronizacao de clientes
                   importcaixa;
               end;

           //Samuel Fabricio Wink - 23/3/2009: organiza
           deletamodulopessoa;

           FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', FMenu.LABCAIXA.Caption, ' ORDER BY COD_LANC DESC');

           PBExport.Position :=100;
           LBCONEXAO.Caption := 'Processo Concluído com sucesso ... ';
           PExp.Refresh;
           PConsulta.BringToFront;
           PConsulta.Visible := true;
           PConsulta.Enabled := true;
           PEndereco.SendToBack;
           PEndereco.Visible := false;

           Mensagem('    I N F O R M A Ç Ã O     ','Banco de Dados sincronizado com sucesso.','',1,1,false,'I');
         Except
         	Mensagem('ATENÇÃO', 'Não foi possível sincronizar os dados apartir de DBMacsExp.GDB por motivo desconhecido. Favor exporte novamente, caso o problema persistir contate o suporte!', '', 1, 1, False, 'a');
       	Exit;
         end;
     end;
end;

//Samuel Fabricio Wink - 23/3/2009: deleta modulo pessoa em branco
procedure TFPedidoVendaConstrutora.deletamodulopessoa;
var
	codexclusao : String;
begin
	//Samuel Fabricio Wink - 23/3/2009: deleta todas as pessoas com cpjcnpj em branco
   FiltraTabela(DMPESSOA.TPessoa, 'pessoa', '.', '', ' cpfcnpj = ' + #39 + #39);
   DMPESSOA.TPessoa.First;
   //Samuel Fabricio Wink - 23/3/2009: inicia processo de exclusao
   while not(DMPESSOA.TPessoa.Eof) do
       begin
           //Samuel Fabricio Wink - 23/3/2009: guarda codigo pessoa
           codexclusao := DMPESSOA.TPessoa.FieldByName('cod_pessoa').AsString;
           //Samuel Fabricio Wink - 23/3/2009: busca restante das tabela
           if FiltraTabela(DMPESSOA.TPessoaF, 'pessoaf', 'cod_pessoa', codexclusao, '') = true then
               begin
                   DMMACS.TALX.Close;
                   DMMACS.TALX.SQL.Clear;
                   DMMACS.TALX.SQL.Add('delete from pessoaf where cod_pessoa = ' + codexclusao);
                   DMMACS.TALX.ExecSQL;
                   DMMACS.Transaction.CommitRetaining;
               end;
           if FiltraTabela(DMPESSOA.TPessoaJ, 'pessoaj', 'cod_pessoa', codexclusao, '') = true then
               begin
                   DMMACS.TALX.Close;
                   DMMACS.TALX.SQL.Clear;
                   DMMACS.TALX.SQL.Add('delete from pessoaj where cod_pessoa = ' + codexclusao);
                   DMMACS.TALX.ExecSQL;
                   DMMACS.Transaction.CommitRetaining;
               end;
           if FiltraTabela(DMPESSOA.TCliente, 'cliente', 'cod_pessoa', codexclusao, '') = true then
               begin
                   DMMACS.TALX.Close;
                   DMMACS.TALX.SQL.Clear;
                   DMMACS.TALX.SQL.Add('delete from cliente where cod_pessoa = ' + codexclusao);
                   DMMACS.TALX.ExecSQL;
                   DMMACS.Transaction.CommitRetaining;
               end;
           if FiltraTabela(DMPESSOA.TFornecedor, 'fornecedor', 'cod_pessoa', codexclusao, '') = true then
               begin
                   DMMACS.TALX.Close;
                   DMMACS.TALX.SQL.Clear;
                   DMMACS.TALX.SQL.Add('delete from fornecedor where cod_pessoa = ' + codexclusao);
                   DMMACS.TALX.ExecSQL;
                   DMMACS.Transaction.CommitRetaining;
               end;
           if FiltraTabela(DMPESSOA.TFuncionario, 'funcionario', 'cod_pessoa', codexclusao, '') = true then
               begin
                   DMMACS.TALX.Close;
                   DMMACS.TALX.SQL.Clear;
                   DMMACS.TALX.SQL.Add('delete from funcionario where cod_pessoa = ' + codexclusao);
                   DMMACS.TALX.ExecSQL;
                   DMMACS.Transaction.CommitRetaining;
               end;

           //Samuel Fabricio Wink - 23/3/2009: deleta pessoa
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('delete from pessoa where cod_pessoa = ' + codexclusao);
           DMMACS.TALX.ExecSQL;
           DMMACS.Transaction.CommitRetaining;

           //Samuel Fabricio Wink - 23/3/2009: passa para o seguinte
           DMPESSOA.TPessoa.Next;
       end;

   //Samuel Fabricio Wink - 23/3/2009: organiza cliente
   DMPESSOA.TCliente.Close;
   DMPESSOA.TCliente.SQL.Clear;
   DMPESSOA.TCliente.SQL.Add('update cliente set');
   DMPESSOA.TCliente.SQL.Add('SEPARAR = :SEPARAR');
   DMPESSOA.TCliente.SQL.Add('where separar = ' +#39 + #39);
   DMPESSOA.TCliente.ParamByName('SEPARAR').AsString := '0';
   DMPESSOA.TCliente.ExecSQL;
   DMPESSOA.TransacPessoa.CommitRetaining;

   DMPESSOA.TCliente.Close;
   DMPESSOA.TCliente.SQL.Clear;
   DMPESSOA.TCliente.SQL.Add('update cliente set');
   DMPESSOA.TCliente.SQL.Add('ATIVO = :ATIVO');
   DMPESSOA.TCliente.SQL.Add('where ativo = ' +#39 + #39);
   DMPESSOA.TCliente.ParamByName('ATIVO').AsString := '1';
   DMPESSOA.TCliente.ExecSQL;
   DMPESSOA.TransacPessoa.CommitRetaining;

    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    DMPESSOA.TALX.SQL.Add('select pedvenda.numped, pedvenda.valor, ctareceber.numdoc, parcelacr.cod_parcelacr, parcelacr.valor as VLRPARCELA');
    DMPESSOA.TALX.SQL.Add('from pedvenda');
    DMPESSOA.TALX.SQL.Add('left join formpag on pedvenda.cod_formpag = formpag.cod_formpag');
    DMPESSOA.TALX.SQL.Add('left join ctareceber on pedvenda.numped = ctareceber.numdoc');
    DMPESSOA.TALX.SQL.Add('left join parcelacr on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber');
    DMPESSOA.TALX.SQL.Add('where formpag.descricao <> '+#39+'À VISTA'+#39+'');
    DMPESSOA.TALX.SQL.Add('and pedvenda.numped like '+#39+'P%'+#39+'');
    DMPESSOA.TALX.SQL.Add('and pedvenda.valor <> parcelacr.valor');
    DMPESSOA.TALX.SQL.Add('and pedvenda.valor < parcelacr.valor');
    DMPESSOA.TALX.SQL.Add('order by pedvenda.numped');
    DMPESSOA.TALX.Open;
    DMPESSOA.TALX.First;

    while not DMPESSOA.TALX.Eof do
    begin
        DMPESSOA.TALX1.Close;
        DMPESSOA.TALX1.SQL.Clear;
        DMPESSOA.TALX1.SQL.Add('update parcelacr set parcelacr.valor = :VALOR');
        DMPESSOA.TALX1.SQL.Add('where parcelacr.cod_parcelacr = :COD');
        DMPESSOA.TALX1.ParamByName('VALOR').AsCurrency:=DMPESSOA.TALX.FieldByName('VALOR').AsCurrency;
        DMPESSOA.TALX1.ParamByName('COD').AsCurrency:=DMPESSOA.TALX.FieldByName('COD_PARCELACR').AsCurrency;
        DMPESSOA.TALX1.ExecSQL;

        DMPESSOA.TransacPessoa.CommitRetaining;

        DMPESSOA.TALX1.Close;
        DMPESSOA.TALX1.SQL.Clear;
        DMPESSOA.TALX1.SQL.Add('update parcelacr set parcelacr.valorprod = :VALOR');
        DMPESSOA.TALX1.SQL.Add('where parcelacr.cod_parcelacr = :COD');
        DMPESSOA.TALX1.ParamByName('VALOR').AsCurrency:=DMPESSOA.TALX.FieldByName('VALOR').AsCurrency;
        DMPESSOA.TALX1.ParamByName('COD').AsCurrency:=DMPESSOA.TALX.FieldByName('COD_PARCELACR').AsCurrency;
        DMPESSOA.TALX1.ExecSQL;

        DMPESSOA.TransacPessoa.CommitRetaining;

        DMPESSOA.TALX.Next;
    end;


end;

procedure TFPedidoVendaConstrutora.BtCancelarClick(Sender: TObject);
begin
  inherited;
	PConsulta.BringToFront;
   PConsulta.Visible := true;
   PConsulta.Enabled := true;
   PEndereco.SendToBack;
   PEndereco.Visible := false;
end;

procedure TFPedidoVendaConstrutora.BtDescompactaClick(Sender: TObject);
begin
  inherited;

  DMCAIXA.TAlx.Close;
  DMCAIXA.TAlx.SQL.Clear;
  DMCAIXA.TAlx.SQL.Add('select * from abcaixa');
  DMCAIXA.TAlx.SQL.Add('where abcaixa.fechado = :STATUS');
  DMCAIXA.TAlx.ParamByName('STATUS').AsString:='N';
  DMCAIXA.TAlx.Open;

  if DMCAIXA.TAlx.IsEmpty
  then begin
    Trim(EdEndereco.Text);
    if (EdEndereco.Text <> '')then
         begin
           PComunica.BringToFront;
           PComunica.Visible := true;
           PExp.Visible := true;
           PExp.BringToFront;
           PBExport.Min := 0;
           PBExport.Max := 100;
           PBExport.Position :=10;
           LBCONEXAO.Caption := 'INICIA PROCESSO DE SINCRONIZAÇÃO ... ';
           PExp.Refresh;

           PBExport.Position :=20;
           LBCONEXAO.Caption := 'DESCOMPACTA BANCO DE DADOS ... ';
           PExp.Refresh;
           descompactabd;

           PEndereco.BringToFront;
           PEndereco.Visible := true;
           BtProcurar.SetFocus;
           PConsulta.Enabled := false;
           EdEndereco.Text := '';
           BtIniciar.Visible := true;
           BtIniciar.BringToFront;

           EdEndereco.Text:='C:\MZR\Importa\dbmacsexp.gdb';
           EdEndereco.Refresh;

           BtIniciarClick(Sender);
         end;
   end
   else begin
       Mensagem('OPÇÃO BLOQUEADA', 'Existem caixas abertos, para efetuar a sincronização é necessário fechá-los!', '', 1, 1, true, 'a');
   end;
end;

procedure TFPedidoVendaConstrutora.CBPagamentoExit(Sender: TObject);
begin
  inherited;
	 XVlrCheque:=-50;
   LTotMostraCheque.Visible:=False;
   //controla visualização de componentes referentes a escolha e visualização da cta corrente
	If (CBPagamento.Text='Banco') or ((CBPagamento.Text='Cheque') And (XSQLTABELA='PEDCOMPRA')) or (CBPagamento.Text='Cartão')
   Then Begin
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
      	PMostraCta.Visible:=True;
  		PMostraCta.BringToFront;
      	PBanco.Enabled:=True;
      	PBanco.Visible:=TRUE;
      	PBanco.BringToFront;
      	DBGCTA.SetFocus;
   End
   Else Begin
       PBanco.Enabled:=False;
       PMostraCta.Visible:=False;
   End;
   If (CBPagamento.Text='Chq. Terc.') And (XSQLTABELA='PEDCOMPRA')
   Then Begin
       PChqTerceiro.Visible:=True;
       PChqTerceiro.Enabled:=True;
       PChqTerceiro.BringToFront;
       LTotMostraCheque.Visible:=True;
       FiltraCheques;
       DBCBCHEQUE.SetFocus;
   End;
  	If ((CBPagamento.Text='Cheque') or (CBPagamento.Text='Banco')) and (XView.FieldByName('FORMPAG').AsString='À VISTA') And (XSQLTABELA='PEDCOMPRA')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Opções de Pagamento em Banco ou Cheque, devem passar pelo Contas a Receber. Este tipo de pagamento não pode ser como À VISTA!', '', 1, 1, true, 'a');
       CBPagamento.SetFocus;
       PBanco.SendToBack;
       PBanco.Visible:=false;
       Exit;
   End;
end;

procedure TFPedidoVendaConstrutora.CBPagamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key<>#13 Then
   	Key:=#0;
end;

//Filtra cheques de acordo com tmp
Function TFPedidoVendaConstrutora.FiltraCheques: Boolean;
Begin
	//Seleciona os cheques ainda nao movimentados
   DMBANCO.WChequeRec.Close;
   DMBANCO.WChequeRec.SQL.Clear;
   DMBANCO.WChequeRec.SQL.Add(' select * from vwchequerec ');
   DMBANCO.WChequeRec.SQL.Add(' Where (vwchequerec.fech<>'+#39+'S'+#39+') Or (vwchequerec.fech Is Null)');
	DMBANCO.WChequeRec.Open;

   DMBANCO.TAlx.Close;
   DMBANCO.TAlx.SQL.Clear;
   DMBANCO.TAlx.SQL.Add(' select SUM(vwchequerec.valor) AS TOTAL from tmp ');
   DMBANCO.TAlx.SQL.Add(' Left join vwchequerec on tmp.int1 = vwchequerec.cod_chequerec ');
   DMBANCO.TAlx.Open;
   Try
       LTotalChq.Caption:=FormatFloat('0.00', DMBANCO.TAlx.FieldByName('TOTAL').AsCurrency);
   Except
       LTotalChq.Caption:='0,00';
   End;
   LTotMostraCheque.Caption:=LTotalChq.Caption;
   DMBANCO.TAlx.Close;
   DMBANCO.TAlx.SQL.Clear;
   DMBANCO.TAlx.SQL.Add(' select TMP.COD_TMP, vwchequerec.banco, vwchequerec.cod_movbanco, vwchequerec.numcheque, vwchequerec.valor from tmp ');
   DMBANCO.TAlx.SQL.Add(' Left join vwchequerec on tmp.int1 = vwchequerec.cod_chequerec ');
   DMBANCO.TAlx.Open;
End;

procedure TFPedidoVendaConstrutora.DBGCTAKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If Not DMBANCO.WCtaCor.IsEmpty Then//'se banco não estiver vazio
       	XCOD_CONTABANCO:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
       Else
           XCOD_CONTABANCO:=-1;

       CBPagamento.Enabled:=False;
       PBanco.Visible:=False;
       PBanco.Enabled:=False;
       CBPagamento.Enabled:=True;
       FrmConta.EDCodigo.SetFocus;
   End;
end;

procedure TFPedidoVendaConstrutora.BtAluguelClick(Sender: TObject);
begin
	AbrirForm(TFAluguel, FAluguel, 0);
end;

procedure TFPedidoVendaConstrutora.BtPesqObraClick(Sender: TObject);
begin
  inherited;
  if AbrirForm(TFCadObra, FCadPadrao, 1) = 'Selected'then
    begin
     EdCodObra.Text := DMSAIDA.TObra.FieldByName('cod_interno').AsString;
     EdDescricaoObra.Text := DMSAIDA.TObra.FieldByName('descricao').AsString;
     xcodobra := DMSAIDA.TObra.FieldByName('cod_obra').AsString;
    end;
  EdCodInterno.SetFocus;
end;

procedure TFPedidoVendaConstrutora.EdCodObraExit(Sender: TObject);
begin
  if EdCodObra.Text <> '' then
		begin
          if FiltraTabela(DMSAIDA.TObra, 'obra', 'cod_interno', EdCodObra.Text, '') = true then
           begin
               EdCodObra.Text := DMSAIDA.TObra.FieldByName('cod_interno').AsString;
               EdDescricaoObra.Text := DMSAIDA.TObra.FieldByName('descricao').AsString;
               xcodobra := DMSAIDA.TObra.FieldByName('cod_obra').AsString;
           end
          else
           begin
             //  Mensagem('ATENÇÃO', 'Código interno de obra não encontrado!', '', 1, 1, False, 'a');
               EdCodObra.Text := '';
               EdDescricaoObra.Text := '';
               BtPesqObra.SetFocus;
           end;
       end
  else
  		begin
       	EdCodObra.Text := '';
           EdDescricaoObra.Text := '';
           BtPesqObra.SetFocus;
       end;
end;

//Samuel Fabricio Wink - 16/2/2009: imprime relatorio sem preço
procedure TFPedidoVendaConstrutora.ConprovanteSPreo1Click(Sender: TObject);
begin
	XCOMREL := TRUE;
   FMenu.TIPOREL:='NORMAL';
   ImpPed(XView.FieldByName('COD_PEDVENDA').AsInteger);
end;

procedure TFPedidoVendaConstrutora.CbPlacaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Length(CbPlaca.Text)= 3) AND NOT (KEY = 8) then BEGIN
       CbPlaca.Text := CbPlaca.Text+'-';
       CbPlaca.SelStart := 4;
   END;
end;

procedure TFPedidoVendaConstrutora.RelatrioObraporPerodo1Click(
  Sender: TObject);
begin
  PPesquisaObra.BringToFront;
  PPesquisaObra.Visible := true;
  PConsulta.SendToBack;
  PConsulta.Visible := false;
  EdDescObraRel.ReadOnly := False;
end;

procedure TFPedidoVendaConstrutora.EdCodObraRelExit(Sender: TObject);
begin
  if FiltraTabela(DMSAIDA.TObra, 'obra', 'cod_interno', EdCodObraRel.Text, '') = true then
  	begin
   	EdCodObraRel.Text := DMSAIDA.TObra.FieldByName('cod_interno').AsString;
       EdDescObraRel.Text := DMSAIDA.TObra.FieldByName('descricao').AsString;
       xcodobra := DMSAIDA.TObra.FieldByName('cod_obra').AsString;
   end
  else
  	begin
   	Mensagem('ATENÇÃO', 'Código interno de obra não encontrado!', '', 1, 1, False, 'a');
       EdCodObraRel.Text := '';
       EdDescObraRel.Text := '';
       EdCodObra.SetFocus;
   end;
end;

procedure TFPedidoVendaConstrutora.BtPesquisaObraClick(Sender: TObject);
begin
  if AbrirForm(TFCadObra, FCadObra, 1) = 'Selected'then
    begin
     EdCodObraRel.Text := DMSAIDA.TObra.FieldByName('cod_interno').AsString;
     EdDescObraRel.Text := DMSAIDA.TObra.FieldByName('descricao').AsString;
     xcodobra := DMSAIDA.TObra.FieldByName('cod_obra').AsString;
    end;
  EdCodObraRel.SetFocus;
end;

//Samuel Fabricio Wink - 31/3/2009: botao cancela relatorio de obras por periodo
procedure TFPedidoVendaConstrutora.BtCancelObraClick(Sender: TObject);
begin
  PPesquisaObra.SendToBack;
  PPesquisaObra.Visible := False;
  PConsulta.BringToFront;
  PConsulta.Visible := True;
end;

procedure TFPedidoVendaConstrutora.BtnVisualizarClick(Sender: TObject);
begin
	//Samuel Fabricio Wink - 31/3/2009: imperime relatorio referente
  ImpObra;
end;

procedure TFPedidoVendaConstrutora.BtCanRelClick(Sender: TObject);
begin
 // inherited;
    PRel.Visible:=False;
    PRel.SendToBack;
  PConsulta.BringToFront;
  PConsulta.Visible := True;

end;

procedure TFPedidoVendaConstrutora.RelatrioVendas1Click(Sender: TObject);
begin
 // inherited;
    PConsulta.SendToBack;
    PConsulta.Visible := false;
    PRel.Visible:=True;
    PRel.BringToFront;
    PRel.Repaint;
    xclirel:=0;
    xtextolog:='V';
end;

//limpa tabela temporária
procedure TFPedidoVendaConstrutora.LimpaTMP;
begin
     //zera tabela temporaria
     DMMACS.TALX.Close;
     DMMACS.TALX.SQL.Clear;
     DMMACS.TALX.SQL.Add('delete from TMP');
     DMMACS.TALX.ExecSQL;
     DMMACS.Transaction.CommitRetaining;

     DMMACS.TMP.Close;
     DMMACS.TMP.SQL.Clear;
     DMMACS.TMP.SQL.Add(' select * From TMP');
     DMMACS.TMP.Open;
end;

procedure TFPedidoVendaConstrutora.BtGeraRelClick(Sender: TObject);
var
   xindice, xcont: Integer;
begin
//  inherited;
   if xtextolog = 'A'
   then begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('select subproduto.descricao as NOMEPROD, subproduto.contrint, pessoa.nome as NOMECLI, formpag.descricao as FORMA,');
        DMESTOQUE.Alx.SQL.Add('pessoa.telrel, pessoa.cpfcnpj, cliente.cod_cliente, pedvenda.dtpedven, cliente.cod_interno, pedvenda.cobranca,');
        DMESTOQUE.Alx.SQL.Add('equipamento.placa, vwfuncionario.nome as NOMEFUNC, motoristaveiculo.tara, pedvenda.numped,');
        DMESTOQUE.Alx.SQL.Add('itenspedven.qtdeprod, pedvenda.vlrfrete, pedvenda.valor, pedvenda.dtpedven, subproduto.densidade');
        DMESTOQUE.Alx.SQL.Add('from itenspedven');
        DMESTOQUE.Alx.SQL.Add('left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
        DMESTOQUE.Alx.SQL.Add('left join formpag on pedvenda.cod_formpag = formpag.cod_formpag');
        DMESTOQUE.Alx.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
        DMESTOQUE.Alx.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
        DMESTOQUE.Alx.SQL.Add('inner join motoristaveiculo on pedvenda.cod_pedvenda = motoristaveiculo.cod_pedvenda');
        DMESTOQUE.Alx.SQL.Add('left join equipamento on motoristaveiculo.cod_equipamento = equipamento.cod_equipamento');
        DMESTOQUE.Alx.SQL.Add('left join vwfuncionario on motoristaveiculo.cod_funcionario = vwfuncionario.cod_func');
        DMESTOQUE.Alx.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
        DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
        
        if RGPed.ItemIndex = 0 then
           DMESTOQUE.Alx.SQL.Add('where pedvenda.situacao = '+#39+'ABERTO'+#39+'');
        if RGPed.ItemIndex = 1 then
           DMESTOQUE.Alx.SQL.Add('where pedvenda.situacao = '+#39+'FECHADO'+#39+'');

        if (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ') then
           filtraData;

        if CBEmpresa.Text <> 'Ambas' then
           filtraEmpresa;

        if FrmCli.EDCodigo.text <> '' then
           filtraCliente;

        DMESTOQUE.Alx.SQL.Add('order by pessoa.nome, subproduto.descricao');
        DMESTOQUE.Alx.Open;
        DMESTOQUE.Alx.First;

        FSAlx.LoadFromFile('C:\MZR\Macs\REL\FrfConstruAnalitico.Frf');
        FSAlx.ShowReport;
   end;
   if xtextolog = 'P'
   then begin
       if FrmCli.EdDescricao.Text <> ''
       then begin
           //RVRel.SystemPreview.FormState := wsMaximized;
          // RVRel.DefaultDest := rdPreview; //- 19/02/2009: visualizar o relatório direto
          // RVRel.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
          // RVRel.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
          // RVRel.Execute;


       xindice:=1;
       xcont:=1;

       FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       DMMACS.TLoja.Edit;
       DMMACS.TLoja.FieldByName('TMP1').AsString:='Relatório de Permuta';
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;

       LimpaTMP;

       ////////////////////////// VENDAS //////////////////////////////////

       xtextolog:='Ped';
       buscavendas;

       if not DMSAIDA.TAlx.IsEmpty
       then begin
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('DESC1').AsString:='Vendas';
           DMMACS.TMP.FieldByName('DESC2').AsString:='---';
           DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
           DMMACS.TMP.FieldByName('INT2').AsInteger:=xcont;
           xindice:=xindice+1;
           DMMACS.TMP.Post;
       end;

       while not DMSAIDA.TAlx.eof do
       begin
           xcont:=xcont+1;
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('DESC2').AsString:='VENDA';
           DMMACS.TMP.FieldByName('DESC1').AsString:=DMSAIDA.TALX.fieldByName('NOME').AsString;
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMSAIDA.TALX.fieldByName('VALOR').AsCurrency;
           DMMACS.TMP.FieldByName('DATA1').AsDateTime:=DMSAIDA.TALX.fieldByName('DTPEDVEN').AsDateTime;
           DMMACS.TMP.FieldByName('DESC3').AsString:=DMSAIDA.TALX.fieldByName('NUMPED').AsString;
           DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
           DMMACS.TMP.FieldByName('INT2').AsInteger:=xcont;
           xindice:=xindice+1;
           DMMACS.TMP.Post;
           DMMACS.Transaction.CommitRetaining;

           xtextolog:='Item';  ////////////////////// ITENS VENDA ///////////////////////////////////
           buscavendas;

           while not DMESTOQUE.Alx.Eof do
           begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('DESC1').AsString:='VENDA';
               DMMACS.TMP.FieldByName('DESC2').AsString:=DMESTOQUE.Alx.fieldByName('DESCRICAO').AsString;
               DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.Alx.fieldByName('VALUNIT').AsCurrency;
               DMMACS.TMP.FieldByName('VLR3').AsCurrency:=DMESTOQUE.Alx.fieldByName('VALORTOTAL').AsCurrency;
               DMMACS.TMP.FieldByName('INT3').AsString:=DMESTOQUE.Alx.fieldByName('CONTRINT').AsString;
               DMMACS.TMP.FieldByName('VLR4').AsString:=DMESTOQUE.Alx.fieldByName('QTDEPROD').AsString;
               DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
               DMMACS.TMP.FieldByName('INT2').AsInteger:=xcont;
               xindice:=xindice+1;
               DMMACS.TMP.Post;
               DMMACS.Transaction.CommitRetaining;

               DMESTOQUE.Alx.Next;
           end;

           DMSAIDA.TAlx.Next;
       end;           

       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('DESC1').AsString:='--';
       DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
       DMMACS.TMP.FieldByName('INT2').AsInteger:=xcont;
       xindice:=xindice+1;
       DMMACS.TMP.Post;
       DMMACS.Transaction.CommitRetaining;
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('DESC1').AsString:='--';
       DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
       DMMACS.TMP.FieldByName('INT2').AsInteger:=xcont;
       xindice:=xindice+1;
       DMMACS.TMP.Post;
       DMMACS.Transaction.CommitRetaining;  
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('DESC1').AsString:='--';
       DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
       DMMACS.TMP.FieldByName('INT2').AsInteger:=xcont;
       xindice:=xindice+1;
       DMMACS.TMP.Post;
       DMMACS.Transaction.CommitRetaining;
       DMMACS.TMP.Insert;
       DMMACS.TMP.FieldByName('DESC1').AsString:='--';
       DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
       DMMACS.TMP.FieldByName('INT2').AsInteger:=xcont;
       xindice:=xindice+1;
       DMMACS.TMP.Post;
       DMMACS.Transaction.CommitRetaining;


       ////////////////////////// COMPRAS //////////////////////////////////

       xtextolog:='Ped';
       buscacompras;

       if not DMENTRADA.TAlx.IsEmpty
       then begin
           xcont:=xcont+1;
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('DESC1').AsString:='Compras';
           DMMACS.TMP.FieldByName('DESC2').AsString:='---';
           DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
           DMMACS.TMP.FieldByName('INT2').AsInteger:=xcont;
           xindice:=xindice+1;
           DMMACS.TMP.Post;
       end;

       while not DMENTRADA.TAlx.eof do
       begin
           xcont:=xcont+1;
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('DESC2').AsString:='COMPRA';
           DMMACS.TMP.FieldByName('DESC1').AsString:=DMENTRADA.TALX.fieldByName('NOME').AsString;
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMENTRADA.TALX.fieldByName('VALOR').AsCurrency;
           DMMACS.TMP.FieldByName('DATA1').AsDateTime:=DMENTRADA.TALX.fieldByName('DTPEDCOMP').AsDateTime;
           DMMACS.TMP.FieldByName('DESC3').AsString:=DMENTRADA.TALX.fieldByName('NUMPED').AsString;
           DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
           DMMACS.TMP.FieldByName('INT2').AsInteger:=xcont;

           xindice:=xindice+1;
           DMMACS.TMP.Post;
           DMMACS.Transaction.CommitRetaining;

           xtextolog:='Item';   ////////////////////// ITENS COMPRA ///////////////////////////////////
           buscavendas;


           while not DMESTOQUE.Alx.Eof do
           begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('DESC1').AsString:='COMPRA'; 
               DMMACS.TMP.FieldByName('DESC2').AsString:=DMESTOQUE.Alx.fieldByName('DESCRICAO').AsString;
               DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.Alx.fieldByName('VALUNIT').AsCurrency;
               DMMACS.TMP.FieldByName('VLR3').AsCurrency:=DMESTOQUE.Alx.fieldByName('VALORTOTAL').AsCurrency;
               DMMACS.TMP.FieldByName('INT3').AsString:=DMESTOQUE.Alx.fieldByName('CONTRINT').AsString;
               DMMACS.TMP.FieldByName('VLR5').AsString:=DMESTOQUE.Alx.fieldByName('QTDEPROD').AsString;
               DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
               DMMACS.TMP.FieldByName('INT2').AsInteger:=xcont;
               xindice:=xindice+1;
               DMMACS.TMP.Post;
               DMMACS.Transaction.CommitRetaining;

               DMESTOQUE.Alx.Next;
           end;

           DMENTRADA.TAlx.Next;
       end;

       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select * from TMP');
       DMESTOQUE.Alx.SQL.Add('order by TMP.INT1');
       DMESTOQUE.Alx.Open;

       FSAlx.LoadFromFile('C:\MZR\Macs\REL\FrfRelPermuta.Frf');
       FSAlx.ShowReport;    

       end
       else begin
           Mensagem('INFORMAÇÃO', 'Por favor selecione um cliente!', '', 1, 1, False, 'a');
       end;
   end;
   if xtextolog = 'V'
   then begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('select pedvenda.numped, pedvenda.valor, pedvenda.dtpedven, pedvenda.situacao,');
        DMESTOQUE.Alx.SQL.Add('pedvenda.cobranca, formpag.descricao, cliente.cod_interno, pessoa.nome');
        DMESTOQUE.Alx.SQL.Add('from pedvenda');
        DMESTOQUE.Alx.SQL.Add('left join formpag on pedvenda.cod_formpag = formpag.cod_formpag');
        DMESTOQUE.Alx.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
        DMESTOQUE.Alx.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');

        if RGPed.ItemIndex = 0 then
           DMESTOQUE.Alx.SQL.Add('where pedvenda.situacao = '+#39+'ABERTO'+#39+'');
        if RGPed.ItemIndex = 1 then
           DMESTOQUE.Alx.SQL.Add('where pedvenda.situacao = '+#39+'FECHADO'+#39+'');

        if (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ') then
           filtraData;

        if CBEmpresa.Text <> 'Ambas' then
           filtraEmpresa;

        if FrmCli.EDCodigo.text <> '' then
           filtraCliente;

        DMESTOQUE.Alx.SQL.Add('order by pedvenda.numped');
        DMESTOQUE.Alx.Open;
        DMESTOQUE.Alx.First;

        FSAlx.LoadFromFile('C:\MZR\Macs\REL\FrfVendasEmpresa.Frf');
        FSAlx.ShowReport;
   end;
   if xtextolog = 'D'
   then begin
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select itenspedven.qtdeprod, itenspedven.valortotal, itenspedven.valunit, pedvenda.numped, subproduto.descricao,');
      DMESTOQUE.Alx.SQL.Add('pedvenda.dtfech, pessoa.nome, equipamento.placa, motoristaveiculo.cod_funcionario, subproduto.contrint');
      DMESTOQUE.Alx.SQL.Add('from itenspedven');
      DMESTOQUE.Alx.SQL.Add('left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
      DMESTOQUE.Alx.SQL.Add('left join motoristaveiculo on pedvenda.cod_pedvenda = motoristaveiculo.cod_motoristaveiculo');
      DMESTOQUE.Alx.SQL.Add('left join equipamento on motoristaveiculo.cod_equipamento = equipamento.cod_equipamento');
      DMESTOQUE.Alx.SQL.Add('left join funcionario on motoristaveiculo.cod_funcionario = funcionario.cod_func');
      DMESTOQUE.Alx.SQL.Add('left join pessoa on  funcionario.cod_pessoa = pessoa.cod_pessoa');
      DMESTOQUE.Alx.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
      DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
      DMESTOQUE.Alx.SQL.Add('where pedvenda.numped is not null');
      DMESTOQUE.Alx.SQL.Add('and pessoa.nome is not null');
      DMESTOQUE.Alx.SQL.Add('and motoristaveiculo.cod_funcionario is not null');
      if FrmCli.EDCodigo.text <> '' then
           filtraCliente; //filtra motorista só tem nome de cliente
      if (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ') then
           filtraData;
      DMESTOQUE.Alx.SQL.Add('order by pessoa.nome, subproduto.descricao, pedvenda.dtfech');
      DMESTOQUE.Alx.Open;
      DMESTOQUE.Alx.First;

      FSAlx.LoadFromFile('C:\MZR\Macs\REL\FrfDesempenho.Frf');
      FSAlx.ShowReport;
    end;

end;

procedure TFPedidoVendaConstrutora.Imprime(RVRel: TRVSystem; Linha: Double; Coluna:Double; Texto:String; Fonte:String; TamFonte:Integer; CorFonte:TColor; Tipo:Boolean);
begin
     With RVRel.BaseReport do Begin
          GotoXY(Coluna,Linha);
          FontColor := CorFonte;
          Bold:=Tipo;
          FontSize := TamFonte;
          FontName := Fonte;
          Print(Texto);
     End;
end;

procedure TFPedidoVendaConstrutora.linha(x: Integer; tipo :Boolean);
begin
     if tipo = True
     then begin
         Imprime(RVRel,x,5,'______________________________________________________________________________________________','Verdana',10,clBlack, false);

     end
     else begin
         Imprime(RVRel,x,5,'------------------------------------------------------------------------------------------------------------','Verdana',10,clBlack, false);
     end;
     auxlinha:=auxlinha+6;
     compara;
end;

procedure TFPedidoVendaConstrutora.compara;
begin
     if auxlinha > 270
     then begin
          linha(272, True); // - 20/02/2009: linha do rodapé
          Imprime(RVRel,276,90,'Mzr Sistemas','Verdana',8,clBlack, False); // - 20/02/2009: imprime rodapé
          cabecalho; // - 20/02/2009: imprime cabeçalho
          auxlinha:=31; // - 20/02/2009: seta próxima linha de impressão
          RVRel.BaseReport.NewPage; // - 20/02/2009: gera nova página
     end;
end;

procedure TFPedidoVendaConstrutora.cabecalho;
begin
        
       FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, ''); // - 19/02/2009: filtra dados de empresa

       FiltraTabela(DMGEOGRAFIA.TCidade,'CIDADE','COD_CIDADE',DMMACS.TEmpresa.FieldByName('cod_cidade').AsString,''); // - 19/02/2009: filtra cidade da empresa

       FiltraTabela(DMGEOGRAFIA.TEstado,'ESTADO','COD_ESTADO',DMGEOGRAFIA.TCidade.fieldByName('cod_estado').AsString,''); // - 19/02/2009: filtra estado da empresa


        // - 19/02/2009: dados da empresa
        Imprime(RVRel,8,5, DMMACS.TEmpresa.fieldByName('FANTASIA').AsString ,'Verdana',11,clBlack, true);
        Imprime(RVRel,13,5, DMMACS.TEmpresa.fieldByName('ENDERECO').AsString ,'Verdana',8,clBlack, false);
        Imprime(RVRel,17,5, DMMACS.TEmpresa.fieldByName('BAIRRO').AsString+ ' - ' +DMMACS.TEmpresa.fieldByName('CEP').AsString ,'Verdana',8,clBlack, false);
        Imprime(RVRel,21,5, DMGEOGRAFIA.TCidade.fieldByName('NOME').AsString+ ' - ' +DMGEOGRAFIA.TEstado.fieldByName('UF_ESTADO').AsString ,'Verdana',8,clBlack, false);

        // - 19/02/2009: título do relatório
        Imprime(RVRel,19,75,'Relatório Comparativo de Permuta','Verdana',14,clBlack, True);

        // - 19/02/2009: hora e data de geração do histórico
        Imprime(RVRel,13,185, DateToStr(Date()) ,'Verdana',8,clBlack, false);
        Imprime(RVRel,17,185, TimeToStr(Time()) ,'Verdana',8,clBlack, false);


  linha(25, true); // - 19/02/2009: linha separatória

end;

procedure TFPedidoVendaConstrutora.filtraCliente;
begin
   if xtextolog <> 'D'
   then begin
       DMESTOQUE.Alx.SQL.Add('and pedvenda.cod_cliente = :CLI');
       DMESTOQUE.Alx.ParamByName('CLI').AsInteger:=xclirel;
   end
   else begin
       DMESTOQUE.Alx.SQL.Add('and pessoa.nome = :FUNC');
       DMESTOQUE.Alx.ParamByName('FUNC').AsString:=FrmCli.EdDescricao.Text;
   end;
end;

procedure TFPedidoVendaConstrutora.filtraData;
begin
   DMESTOQUE.Alx.SQL.Add('and pedvenda.dtpedven >= :DATAINI and pedvenda.dtpedven <= :DATAFIM');
   DMESTOQUE.Alx.ParamByName('DATAINI').AsDateTime := StrToDate(EdDataIni.Text);
   DMESTOQUE.Alx.ParamByName('DATAFIM').AsDateTime := StrToDate(EdDataFim.Text);
end;

procedure TFPedidoVendaConstrutora.filtraEmpresa;
begin
   if CBEmpresa.Text = 'Filial' then
       DMESTOQUE.Alx.SQL.Add('and pedvenda.numped like '+#39+LP.Caption+'%'+#39+'');
   if CBEmpresa.Text = 'Matriz' then
       DMESTOQUE.Alx.SQL.Add('and pedvenda.numped not like '+#39+LP.Caption+'%'+#39+'');
end;

procedure TFPedidoVendaConstrutora.FrmCliEDCodigoEnter(Sender: TObject);
begin
  //inherited;

   
end;

procedure TFPedidoVendaConstrutora.FrmCliBTNMINUSClick(Sender: TObject);
begin
  //inherited;
 // FrmCli.BTNMINUSClick(Sender);
   xclirel:=0;
   FrmCli.EDCodigo.Text:='';
   FrmCli.EdDescricao.Text:='';
end;

procedure TFPedidoVendaConstrutora.FrmCliEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //inherited;
   if key = 13
   then begin
       if xtextolog <> 'D'
       then begin
           if FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', FrmCli.EDCodigo.Text,'') = true
           then begin
               xclirel:=DMPESSOA.WCliente.fieldByName('COD_CLIENTE').AsInteger;
               FrmCli.EDCodigo.Text:=DMPESSOA.WCliente.fieldByName('COD_INTERNO').AsString;
               FrmCli.EdDescricao.Text:=DMPESSOA.WCliente.fieldByName('NOME').AsString;
           end
           else begin
               xclirel:=0;
               FrmCli.EDCodigo.Text:='';
               FrmCli.EdDescricao.Text:='';
           end;
       end
       else begin
           if FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', FrmCli.EDCodigo.Text,'') = true
           then begin
               FrmCli.EDCodigo.Text:=DMPESSOA.VWFuncionario.fieldByName('COD_INTERNO').AsString;
               FrmCli.EdDescricao.Text:=DMPESSOA.VWFuncionario.fieldByName('NOME').AsString;
           end
           else begin
               FrmCli.EDCodigo.Text:='';
               FrmCli.EdDescricao.Text:='';
           end;
       end;
   end;
end;

procedure TFPedidoVendaConstrutora.DBGVeiculoPatioDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // - 28/04/2009: grid zebrada
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if DMSAIDA.TAlx.RecNo mod 2 = 1 then
          DBGVeiculoPatio.Canvas.Brush.Color := $00EEEEEE
       else
          DBGVeiculoPatio.Canvas.Brush.Color := clWhite;
      end;
      DBGVeiculoPatio.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFPedidoVendaConstrutora.DBGPedidoPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGPedidoPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\construtora.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFPedidoVendaConstrutora.DBGVeiculoPatioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGVeiculoPatio.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\construtoraVeiculo.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFPedidoVendaConstrutora.DBGProdutosPedidoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGProdutosPedido.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\construtoraProdutos.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFPedidoVendaConstrutora.DBGContainerKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGContainer.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\construtoraConteiner.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFPedidoVendaConstrutora.DBGProdutosPedidoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   // - 28/04/2009: grid zebrada
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if DMESTOQUE.TSlave.RecNo mod 2 = 1 then
          DBGProdutosPedido.Canvas.Brush.Color := $00EEEEEE
       else
          DBGProdutosPedido.Canvas.Brush.Color := clWhite;
      end;
      DBGProdutosPedido.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFPedidoVendaConstrutora.DBGContainerDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   // - 28/04/2009: grid zebrada
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if DMESTOQUE.TAluguel.RecNo mod 2 = 1 then
          DBGContainer.Canvas.Brush.Color := $00EEEEEE
       else
          DBGContainer.Canvas.Brush.Color := clWhite;
      end;
      DBGContainer.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFPedidoVendaConstrutora.RelatrioPermuta1Click(Sender: TObject);
begin
  inherited;
    PConsulta.SendToBack;
    PConsulta.Visible := false;
    PRel.Visible:=True;
    PRel.BringToFront;
    PRel.Repaint;
    xclirel:=0;
    FrmCli.Visible:=True;
    CBEmpresa.Visible:=False;
    Label51.Visible:=False;
    PPesquisaObra.Visible:=false;
    PPesquisaObra.SendToBack;
    xtextolog:='P';
    Label52.Caption:='Filtros de Relatório de Permuta';
end;

procedure TFPedidoVendaConstrutora.RVRelPrint(Sender: TObject);
var
   xvlrvenda, xvlrcompra, xqtdvenda, xqtdcompra :Real;
begin
  inherited;

       xvlrvenda:=0;
       xvlrcompra:=0;
       xqtdvenda:=0;
       xqtdcompra:=0;

       /////////////
       //CABEÇALHO//
       /////////////
       cabecalho;

       xAuxlinha:=31;

       //////////
       //VENDAS//
       //////////
       xtextolog:='P';
       buscavendas;
       Imprime(RVRel,xAuxlinha,5, 'VENDAS' ,'Verdana',10,clBlack, true);
       xAuxlinha:=xAuxlinha+5;

       linha(xAuxlinha, True); // - 19/02/2009: linha separatória

       while not DMSAIDA.TAlx.Eof do
       begin
           Imprime(RVRel,xAuxlinha,5, 'Pedido nº: '+DMSAIDA.TAlx.fieldByName('NUMPED').AsString ,'Verdana',9,clBlack, true);
           Imprime(RVRel,xAuxlinha,30, 'Cliente: '+DMSAIDA.TAlx.fieldByName('NOME').AsString ,'Verdana',9,clBlack, true);
           
           xAuxlinha:=xAuxlinha+4;

           linha(xAuxlinha, False);

          // Imprime(RVRel,xAuxlinha,10, 'Cod:','Verdana',8,clBlack, true);
          // Imprime(RVRel,xAuxlinha,30, 'Descricao','Verdana',8,clBlack, true);
          // Imprime(RVRel,xAuxlinha,135, 'Vlr. Unit:','Verdana',8,clBlack, true);
          // Imprime(RVRel,xAuxlinha,160, 'Qtd:','Verdana',8,clBlack, true);
          // Imprime(RVRel,xAuxlinha,185, 'Total:','Verdana',8,clBlack, true);

           xAuxlinha:=xAuxlinha+4;

           linha(xAuxlinha, False);

           xtextolog:='I';
           buscavendas;

           while not DMESTOQUE.Alx.Eof do
           begin
              // Imprime(RVRel,xAuxlinha,10, DMESTOQUE.Alx.fieldByName('CONTRINT').AsString ,'Verdana',8,clBlack, false);
              // Imprime(RVRel,xAuxlinha,30, DMESTOQUE.Alx.fieldByName('DESCRICAO').AsString ,'Verdana',8,clBlack, false);
              // Imprime(RVRel,xAuxlinha,135, DMESTOQUE.Alx.fieldByName('VALUNIT').AsString ,'Verdana',8,clBlack, false);
              // Imprime(RVRel,xAuxlinha,160, DMESTOQUE.Alx.fieldByName('QTDEPROD').AsString ,'Verdana',8,clBlack, false);
              // Imprime(RVRel,xAuxlinha,185, DMESTOQUE.Alx.fieldByName('VALORTOTAL').AsString ,'Verdana',8,clBlack, false);

               xqtdvenda:=xqtdvenda+DMESTOQUE.Alx.fieldByName('QTDEPROD').AsCurrency;

               xAuxlinha:=xAuxlinha+4;

               DMESTOQUE.Alx.Next;
           end;

           linha(xAuxlinha, False);

           Imprime(RVRel,xAuxlinha,195, 'Total: '+DMSAIDA.TAlx.fieldByName('VALOR').AsString ,'Verdana',9,clBlack, true);

           xvlrvenda:=xvlrvenda+DMSAIDA.TAlx.fieldByName('VALOR').AsCurrency;

           xAuxlinha:=xAuxlinha+4;

           linha(xAuxlinha, True);

           xAuxlinha:=xAuxlinha+5;

           DMSAIDA.TAlx.Next;
       end;

       Imprime(RVRel,xAuxlinha,110, 'Totalizadores de Venda: ','Verdana',9,clBlack, true);
       Imprime(RVRel,xAuxlinha,160, CurrToStr(xqtdvenda) ,'Verdana',9,clBlack, true);
       Imprime(RVRel,xAuxlinha,185, CurrToStr(xvlrvenda) ,'Verdana',9,clBlack, true);

       xAuxlinha:=xAuxlinha+8;
       linha(xAuxlinha, True);
       linha(xAuxlinha, True);
       xAuxlinha:=xAuxlinha+8;

       ///////////
       //COMPRAS//
       ///////////
       xtextolog:='P';
       buscacompras;
       Imprime(RVRel,xAuxlinha,110, 'COMPRAS' ,'Verdana',10,clBlack, true);

       xAuxlinha:=xAuxlinha+5;

       linha(xAuxlinha, True); // - 19/02/2009: linha separatória

       while not DMENTRADA.TAlx.Eof do
       begin
           Imprime(RVRel,xAuxlinha,5, 'Pedido nº: '+DMENTRADA.TAlx.fieldByName('NUMPED').AsString ,'Verdana',9,clBlack, true);
           Imprime(RVRel,xAuxlinha,30, 'Fornecedor: '+DMENTRADA.TAlx.fieldByName('NOME').AsString ,'Verdana',9,clBlack, true);

           xAuxlinha:=xAuxlinha+4;

           linha(xAuxlinha, False);

          // Imprime(RVRel,xAuxlinha,10, 'Cod:','Verdana',8,clBlack, true);
          // Imprime(RVRel,xAuxlinha,30, 'Descricao','Verdana',8,clBlack, true);
          // Imprime(RVRel,xAuxlinha,135, 'Vlr. Unit:','Verdana',8,clBlack, true);
          // Imprime(RVRel,xAuxlinha,160, 'Qtd:','Verdana',8,clBlack, true);
          // Imprime(RVRel,xAuxlinha,185, 'Total:','Verdana',8,clBlack, true);

           xAuxlinha:=xAuxlinha+4;

           linha(xAuxlinha, False);

           xtextolog:='I';
           buscavendas;

           while not DMESTOQUE.Alx.Eof do
           begin
              // Imprime(RVRel,xAuxlinha,10, DMESTOQUE.Alx.fieldByName('CONTRINT').AsString ,'Verdana',8,clBlack, false);
              // Imprime(RVRel,xAuxlinha,30, DMESTOQUE.Alx.fieldByName('DESCRICAO').AsString ,'Verdana',8,clBlack, false);
              // Imprime(RVRel,xAuxlinha,135, DMESTOQUE.Alx.fieldByName('VALUNIT').AsString ,'Verdana',8,clBlack, false);
              // Imprime(RVRel,xAuxlinha,160, DMESTOQUE.Alx.fieldByName('QTDEPROD').AsString ,'Verdana',8,clBlack, false);
              // Imprime(RVRel,xAuxlinha,185, DMESTOQUE.Alx.fieldByName('VALORTOTAL').AsString ,'Verdana',8,clBlack, false);

               xqtdcompra:=xqtdcompra+DMESTOQUE.Alx.fieldByName('QTDEPROD').AsCurrency;

               xAuxlinha:=xAuxlinha+4;

               DMESTOQUE.Alx.Next;
           end;

           linha(xAuxlinha, False);

           Imprime(RVRel,xAuxlinha,195, 'Total: '+DMENTRADA.TAlx.fieldByName('VALOR').AsString ,'Verdana',9,clBlack, true);

           xvlrcompra:=xvlrcompra+DMENTRADA.TAlx.fieldByName('VALOR').AsCurrency;

           xAuxlinha:=xAuxlinha+4;

           linha(xAuxlinha, True);

           xAuxlinha:=xAuxlinha+5;

           DMENTRADA.TAlx.Next;
       end;

       Imprime(RVRel,xAuxlinha,110, 'Totalizadores de Compra: ','Verdana',9,clBlack, true);
       Imprime(RVRel,xAuxlinha,160, CurrToStr(xqtdcompra) ,'Verdana',9,clBlack, true);
       Imprime(RVRel,xAuxlinha,185, CurrToStr(xvlrcompra) ,'Verdana',9,clBlack, true);

end;

procedure TFPedidoVendaConstrutora.buscavendas;
begin
    if xtextolog = 'Ped'
    then begin
        DMSAIDA.TAlx.Close;
        DMSAIDA.TAlx.SQL.Clear;
        DMSAIDA.TAlx.SQL.Add('select pedvenda.valor, pedvenda.numped, pedvenda.dtpedven, pedvenda.cod_pedvenda,');
        DMSAIDA.TAlx.SQL.Add('pessoa.nome, cliente.cod_interno, formpag.descricao as FORMA');
        DMSAIDA.TAlx.SQL.Add('from pedvenda');
        DMSAIDA.TAlx.SQL.Add('left join formpag on pedvenda.cod_formpag = formpag.cod_formpag');
        DMSAIDA.TAlx.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
        DMSAIDA.TAlx.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
        DMSAIDA.TAlx.SQL.Add('where formpag.descricao = :TIPO');
        DMSAIDA.TAlx.ParamByName('TIPO').AsString:='PERMUTA';
        DMSAIDA.TAlx.SQL.Add('and pessoa.nome = :PES');
        DMSAIDA.TAlx.ParamByName('PES').AsString:=FrmCli.EdDescricao.Text;
        DMSAIDA.TAlx.SQL.Add('order by pedvenda.dtpedven, pedvenda.numped');
        DMSAIDA.TAlx.Open;
        DMSAIDA.TAlx.First;
    end
    else begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('select itenspedven.valunit, itenspedven.valortotal,');
        DMESTOQUE.Alx.SQL.Add('subproduto.descricao, subproduto.contrint, itenspedven.qtdeprod');
        DMESTOQUE.Alx.SQL.Add('from itenspedven');
        DMESTOQUE.Alx.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
        DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
        DMESTOQUE.Alx.SQL.Add('where itenspedven.cod_pedven = :COD');
        DMESTOQUE.Alx.ParamByName('COD').AsInteger:=DMSAIDA.TAlx.fieldByName('COD_PEDVENDA').AsInteger;
        DMESTOQUE.Alx.SQL.Add('order by subproduto.contrint');
        DMESTOQUE.Alx.Open;
        DMESTOQUE.Alx.First;
    end;
end;

procedure TFPedidoVendaConstrutora.buscacompras;
begin
    if xtextolog = 'Ped'
    then begin
        DMENTRADA.TAlx.Close;
        DMENTRADA.TAlx.SQL.Clear;
        DMENTRADA.TAlx.SQL.Add('select pedcompra.valor, pedcompra.numped, pedcompra.dtpedcomp, pedcompra.cod_pedcomp,');
        DMENTRADA.TAlx.SQL.Add('pessoa.nome, fornecedor.cod_interno, formpag.descricao as FORMA');
        DMENTRADA.TAlx.SQL.Add('from pedcompra');
        DMENTRADA.TAlx.SQL.Add('left join formpag on pedcompra.cod_formpag = formpag.cod_formpag');
        DMENTRADA.TAlx.SQL.Add('left join fornecedor on pedcompra.cod_fornec = fornecedor.cod_fornec');
        DMENTRADA.TAlx.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
        DMENTRADA.TAlx.SQL.Add('where formpag.descricao = :TIPO');
        DMENTRADA.TAlx.ParamByName('TIPO').AsString:='PERMUTA';
        DMENTRADA.TAlx.SQL.Add('and pessoa.nome = :PES');
        DMENTRADA.TAlx.ParamByName('PES').AsString:=FrmCli.EdDescricao.Text;
        DMENTRADA.TAlx.SQL.Add('order by pedcompra.dtpedcomp, pedcompra.numped');
        DMENTRADA.TAlx.Open;
        DMENTRADA.TAlx.First;
    end
    else begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('select itenspedc.valunit, itenspedc.valortotal, itenspedc.qtdeprod,');
        DMESTOQUE.Alx.SQL.Add('subproduto.descricao, subproduto.contrint');
        DMESTOQUE.Alx.SQL.Add('from itenspedc');
        DMESTOQUE.Alx.SQL.Add('left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
        DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
        DMESTOQUE.Alx.SQL.Add('where itenspedc.cod_pedcompra = = :COD');
        DMESTOQUE.Alx.ParamByName('COD').AsInteger:=DMENTRADA.TAlx.fieldByName('COD_PEDCOMP').AsInteger;
        DMESTOQUE.Alx.SQL.Add('order by subproduto.contrint');
        DMESTOQUE.Alx.Open;
        DMESTOQUE.Alx.First;
    end;
end;

procedure TFPedidoVendaConstrutora.RelatriodeDesempenho1Click(
  Sender: TObject);
begin
 // inherited;
    PConsulta.SendToBack;
    PConsulta.Visible := false;
    PRel.Visible:=True;
    PRel.BringToFront;
    PRel.Repaint;
    xclirel:=-1;
    FrmCli.Visible:=True;
    CBEmpresa.Visible:=false;
    Label51.Visible:=False;
    RGPed.Visible:=false;
    xtextolog:='D';
    FrmCli.LTextoBusca.Caption:='Motorista';
    PPesquisaObra.Visible:=false;
    PPesquisaObra.SendToBack;
    Label52.Caption:='Filtros de Relatório de Desempenho de Motorista';
end;

procedure TFPedidoVendaConstrutora.FrmCliBTNOPENClick(Sender: TObject);
begin
  //inherited;
 // FrmCli.BTNOPENClick(Sender);
   if xtextolog <> 'D'
   then begin
       if AbrirForm(TFCliente, FCliente, 1)='Selected'
       then begin
           xclirel:=DMPESSOA.WCliente.fieldByName('COD_CLIENTE').AsInteger;
           FrmCli.EDCodigo.Text:=DMPESSOA.WCliente.fieldByName('COD_INTERNO').AsString;
           FrmCli.EdDescricao.Text:=DMPESSOA.WCliente.fieldByName('NOME').AsString;
       end
       else begin
           xclirel:=0;
           FrmCli.EDCodigo.Text:='';
           FrmCli.EdDescricao.Text:='';
       end;
   end
   else begin
       if AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
       then begin
           FrmCli.EDCodigo.Text:=DMPESSOA.VWFuncionario.fieldByName('COD_INTERNO').AsString;
           FrmCli.EdDescricao.Text:=DMPESSOA.VWFuncionario.fieldByName('NOME').AsString;
       end
       else begin
           FrmCli.EDCodigo.Text:='';
           FrmCli.EdDescricao.Text:='';
       end;
   end;
end;

procedure TFPedidoVendaConstrutora.RelatrioAnalticodeVendas1Click(
  Sender: TObject);
begin
  inherited;
 // inherited;
    PConsulta.SendToBack;
    PConsulta.Visible := false;
    PRel.Visible:=True;
    PRel.BringToFront;
    PRel.Repaint;
    xclirel:=0;
    xtextolog:='A';
end;

end.
