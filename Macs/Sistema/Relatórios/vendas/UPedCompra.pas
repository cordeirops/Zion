unit UPedCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPedidoPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls,
  TFlatEditUnit, Buttons, jpeg, ExtCtrls, EditFloat, ColorEditFloat, Mask,
  DBCtrls, DBColorEdit, FashionPanel, ColorMaskEdit, Qrctrls, QuickRpt,
  UFrmBusca, FR_DSet, FR_DBSet, FR_Class, Menus, DB, TFlatCheckBoxUnit,
  DrLabel,ShellApi,ClipBrd, cxLookAndFeelPainters, cxButtons, cxCheckBox,
  XP_Button, cxTextEdit, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxRadioGroup, ComCtrls, xmldom, XMLIntf, msxmldom, XMLDoc, oxmldom;

type
  TFPedCompra = class(TFPedidoPadrao)
    Etiquetas1: TMenuItem;
    EtiquetaCdFabricante1: TMenuItem;
    PComisPedC: TPanel;
    DbComis: TDBColorEdit;
    DBColorEdit2: TDBColorEdit;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Label50: TLabel;
    Label42: TLabel;
    BtnTroca: TBitBtn;
    FrmDestinatario: TFrmBusca;
    PMBtnFiscal: TPopupMenu;
    ConsultaNDocFiscal1: TMenuItem;
    AlteraNDocFiscal1: TMenuItem;
    EdNumDoc: TFlatEdit;
    DBColorEdit3: TDBColorEdit;
    Label59: TLabel;
    PM_P_Grid: TPopupMenu;
    Criarnovopedido1: TMenuItem;
    PMNFe: TPopupMenu;
    ImprimirDANFE1: TMenuItem;
    AbrirXML1: TMenuItem;
    AbrirXMLResposta1: TMenuItem;
    CopiarChaveNFe1: TMenuItem;
    ConsultaNFeNacinal1: TMenuItem;
    ConsultaNFePR1: TMenuItem;
    Exportar1: TMenuItem;
    N1: TMenuItem;
    PExp: TPanel;
    LBCONEXAO: TLabel;
    PBExport: TProgressBar;
    N2: TMenuItem;
    EfetuarDevoluo1: TMenuItem;
    PDevolucao: TPanel;
    Label48: TLabel;
    EdDevQuant: TFloatEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label49: TLabel;
    EdDevVlrUnit: TFloatEdit;
    EdDevVlrTot: TFloatEdit;
    Label51: TLabel;
    Label52: TLabel;
    EdDevVlrIcms: TFloatEdit;
    Label53: TLabel;
    EdDevVlrSubst: TFloatEdit;
    Label54: TLabel;
    EdDevIpi: TFloatEdit;
    DBGrid4: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn11: TBitBtn;
    DBGrid3: TDBGrid;
    Label55: TLabel;
    EdDevBaseIcms: TFloatEdit;
    Label56: TLabel;
    EdDevBaseSubst: TFloatEdit;
    Label57: TLabel;
    EdDevAliqIIcms: TFloatEdit;
    Label58: TLabel;
    EdDevAliqIpi: TFloatEdit;
    DBGridConvert: TDBGrid;
    MnAgrupar: TPopupMenu;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    SpeedButton1: TSpeedButton;
    BtnImportaNfe: TBitBtn;
    XMLDocument1: TXMLDocument;
    AgruparItensparaVenda1: TMenuItem;
    N3: TMenuItem;
    NotaFiscalEletrnica1: TMenuItem;
    VisualizarDanfe1: TMenuItem;
    CancelarNfe1: TMenuItem;
    RelatriodeDanfes1: TMenuItem;
    PnLote: TPanel;
    FashionPanel2: TFashionPanel;
    Label65: TLabel;
    Label64: TLabel;
    Label61: TLabel;
    EdQtdBruta: TColorEditFloat;
    EdQuantDescarte: TColorEditFloat;
    EdQtdEntrada: TColorEditFloat;
    Label66: TLabel;
    EdDescarte: TEdit;
    Label68: TLabel;
    EdQtdLote: TColorEditFloat;
    BtnCancelaLote: TBitBtn;
    BtnLoteOk: TBitBtn;
    CBLoteSelecionado: TDBLookupComboBox;
    Label67: TLabel;
    BtnAbreLote: TBitBtn;
    NOTAFISCALELETRNICA2: TMenuItem;
    RecuperarDadosdaNotaFiscalEletrnica1: TMenuItem;
    InutilizarNumeraodaNotaFiscalEletrnica1: TMenuItem;
    VisualizarnoSefaz1: TMenuItem;
    ConsultarStatusNFe1: TMenuItem;
    VerificarServidorSefaz1: TMenuItem;
    N4: TMenuItem;
    ListarNFe1: TMenuItem;
    BtnProdutos: TBitBtn;
    BtnConsumo: TBitBtn;
    FPCLista: TFashionPanel;
    Panel11: TPanel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label63: TLabel;
    Panel14: TPanel;
    BtnInsereConsumo: TBitBtn;
    BtExcluiConsumo: TBitBtn;
    EdQtdConsumo: TColorEditFloat;
    EdVlrUnitConsumo: TColorEditFloat;
    EdDescontoConsumo: TColorEditFloat;
    EdTotalConsumo: TColorEditFloat;
    Panel20: TPanel;
    FashionPanel12: TFashionPanel;
    Label140: TLabel;
    Label141: TLabel;
    ColorEditFloat36: TColorEditFloat;
    BitBtn24: TBitBtn;
    Panel21: TPanel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    ColorMaskEdit2: TColorMaskEdit;
    ColorMaskEdit3: TColorMaskEdit;
    ColorMaskEdit4: TColorMaskEdit;
    Panel22: TPanel;
    DBGrid6: TDBGrid;
    EdDescConsumo: TEdit;
    GroupBox4: TGroupBox;
    Label153: TLabel;
    Label69: TLabel;
    EdCstConsumo: TEdit;
    DBGrid5: TDBGrid;
    lbCstconsumo: TLabel;
    XML1: TMenuItem;
    ReinviarNotaFiscalEletrnica1: TMenuItem;
    SalvareenviarXmlporemail1: TMenuItem;
    CartadeCorreoEletrnica1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure DBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGridCadastroPadraoDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure BtnFiltrarClick(Sender: TObject);
    procedure EtiquetaCdFabricante1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BtnTrocaClick(Sender: TObject);

    procedure frmFormPagBTNOPENClick(Sender: TObject);
    procedure FrmDestinatarioEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure ConsultaNDocFiscal1Click(Sender: TObject);
    procedure AlteraNDocFiscal1Click(Sender: TObject);
    procedure EdNumDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDQuantidadeExit(Sender: TObject);
    procedure PSelectLoteExit(Sender: TObject);
    procedure EdQtdConvertKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDQuantidadeEnter(Sender: TObject);
    procedure EDValUnitEnter(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure Criarnovopedido1Click(Sender: TObject);
    procedure FrmDestinatarioBTNMINUSClick(Sender: TObject);
    procedure EDQuantidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNumPedClick(Sender: TObject);
    procedure EdNumPedExit(Sender: TObject);
    procedure EdNumDocClick(Sender: TObject);
    procedure EdNumDocExit(Sender: TObject);
    procedure EdNomeClick(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure DBGridConvertKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridConvertCellClick(Column: TColumn);
    procedure DBGridConvertExit(Sender: TObject);
    procedure BtnFiltrarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImprimirDANFE1Click(Sender: TObject);
    procedure AbrirXML1Click(Sender: TObject);
    procedure AbrirXMLResposta1Click(Sender: TObject);
    procedure CopiarChaveNFe1Click(Sender: TObject);
    procedure ConsultaNFeNacinal1Click(Sender: TObject);
    procedure ConsultaNFePR1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
    procedure Exportar1Click(Sender: TObject);

    
    //procedure EDQuantidadeChange(Sender: TObject);
    // exporta os pedidos de compra selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
    procedure Exporta_Pedido;
    // verifica se o forncedor esta cadastrado no banco, se nao tiver jah cadastra na hora
    Function VerificaForncecedor(Cod_Cliente: integer): integer;
    // Conecta banco de ddos para exportar Ordens
    Function ConectaBancoDados(XEndereco: string): boolean;
    // verifica se existe a cidade do cliente, se nao jah cadastra
    Function VerificaCidade: integer;
    // verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes
    Function VerificaEstado: integer;
    // busca forma de pagamento, se necessario cadastra a nova forma
    Function Forma_Pagamento: integer;
    //Paulo 17/09/2010: Importa dados do Fornecedor da NFE e cadastra caso não esteja cadastrado
    function ImportaFornecedor(XCNPJ, XRazao, XFAnt, XRua, XNro, XBairro,XCodIBGE, XMunic, XUF, XCep, XFone, XIE: String):WideString;
    //Paulo 17/09/2010: Retorna o código da cidade baseado na NFe
    Function retornaCodCidade(XCodCid, XCidade, XEstado:String):integer;
    //Paulo 20/09/2010: Função que tira o ponto de quantidade
    Function tiraPontoNfe(XValor: String):Real;
    //Paulo 24/09/2010: Função que encontra um pk válida para a tabela
	 Function EncontraPK(XTable: String; XCampo: String):integer;
    //Paulo 20/09/2011: Limpa as labels de consumo
    Procedure LimpaLabelsConsumo;
    //Paulo 24/11/2011: Seleciona impostos substituidos dos itens
    procedure encontraImpostoSubst(XAlxCst:String; cst:String ; vBCST:String ; vICMSST:String);
    //Paulo 24/11/2011: Seleciona impostos dos itens
    procedure encontraImposto(XAlxCst: String; cst: String ; pIcms: String ; vIcms: String ; XBaseC: Real);
    //Retorna a uma chave primária valida para a tabela de exportação
    Function RetornaChaveTabelaexortacao(XTabelaRetorno: String):Integer;

    procedure DBNumPedExit(Sender: TObject);
    procedure BtnDadosAdicClick(Sender: TObject);
    procedure EfetuarDevoluo1Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure PDevolucaoExit(Sender: TObject);
    procedure PConsultaExit(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnGravarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCancelarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnDadosAdicKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBColorEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNumeroPedidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdValorPedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodVendKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcVendKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCODFORMPAGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcFormPagKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBDATAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDDescPedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnInsertProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodFabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDValUnitKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDDescKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDTotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdImpCSTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdimpIcmsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdImpIpiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdBCIcmsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdImpVlrIcmsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdImpVlrIpiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAbrePAliqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdLocalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnDeleteListExit(Sender: TObject);
    procedure BtnImportaNfeClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AgruparItensparaVenda1Click(Sender: TObject);
    procedure VisualizarDanfe1Click(Sender: TObject);
    procedure CancelarNfe1Click(Sender: TObject);
    procedure RelatriodeDanfes1Click(Sender: TObject);
    procedure BtLoteClick(Sender: TObject);
    procedure EdQtdEntradaEnter(Sender: TObject);
    procedure PCadastroExit(Sender: TObject);
    procedure BtnCancelaLoteClick(Sender: TObject);
    procedure BtnLoteOkClick(Sender: TObject);
    procedure EdQuantDescarteExit(Sender: TObject);
    procedure BtnAbreLoteClick(Sender: TObject);
    procedure CBLoteSelecionadoExit(Sender: TObject);
    procedure RecuperarDadosdaNotaFiscalEletrnica1Click(Sender: TObject);
    procedure InutilizarNumeraodaNotaFiscalEletrnica1Click(
      Sender: TObject);
    procedure VisualizarnoSefaz1Click(Sender: TObject);
    procedure ConsultarStatusNFe1Click(Sender: TObject);
    procedure VerificarServidorSefaz1Click(Sender: TObject);
    procedure ListarNFe1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtUsoConsumoClick(Sender: TObject);
    procedure BtnProdutosClick(Sender: TObject);
    procedure BtnConsumoClick(Sender: TObject);
    procedure BtnInsereConsumoClick(Sender: TObject);
    procedure EdQtdConsumoExit(Sender: TObject);
    procedure EdTotalConsumoExit(Sender: TObject);
    procedure EdCstConsumoExit(Sender: TObject);
    procedure BtExcluiConsumoClick(Sender: TObject);
    procedure SalvareenviarXmlporemail1Click(Sender: TObject);
    procedure ReinviarNotaFiscalEletrnica1Click(Sender: TObject);
    procedure CartadeCorreoEletrnica1Click(Sender: TObject);


  private
    { Private declarations }

    // filtra tabela unidade pela unidade de venda do produto
    procedure AtualizaQntConvertida;

    // - 15/01/2009: imprimir danfe da nota enviada
    procedure MostraDanfe(XCOD_PEDIDO:INTEGER);

     // - 27/02/2009: busca siglas das conversões unitarias na TMP
    procedure convertunid;
  public
    { Public declarations }
    


  end;

var
  FPedCompra: TFPedCompra;
  xqtdconv: Real; // - 03/03/2009: controla quantidade convertida na vergalhão
  XCstConsumo,XNumfiscNFe,XcodFornecedor, XContador: integer;
  XImportNfe, XFecha,XFlagNfe,XCod_tmp: Integer;//armazena o codigo temporario para a tabela tmp
  XCNPJForn,XNomeForn,XObsItem: String;
  XDescNFe, XFreteNfe ,XTotalNFe: Real;//Paulo 21/09/2010:armazena o total da NFe
  XBaseST,XIcmsST,XOutrosNFe, XTotalProd: Real;//Paulo 21/09/2010:armazena o total dos produtos da NFe
  XImpIpi, XVlrIpi, XBcIcms, XImpIcms, XvlrIcms: Real; //Paulo 23/09/2011: armazena impostos do consumo

implementation

uses UDMEstoque, UDMEntrada, UMenu, Alxor32, Alxorprn, UDMSaida, UDMMacs,
  AlxMessage, UDMPessoa, UCliente, UCadPadrao, UFiscal, UDMCaixa,
  UPadrao, UValidacaoNFe, UDMGEOGRAFIA, UDmServ, UDMExporta, UDMFinanc,
  UFiscalEntradas, UPedVenda, UConfigLoja, UMzrNfe, UConvertUnid, UCadCFOP,
  UImpNfe, UProduto, URelPeriodoFiscal, ULote, UListaNfe, UCadUsoConsumo,
  UPadraoFiscal, USenha;

{$R *.DFM}
//Retorna a uma chave primária valida para a tabela de exportação
Function TFPedCompra.RetornaChaveTabelaexortacao(XTabelaRetorno: String):Integer;
Var
	XFlag: Integer;
   XCdAuxiliar: integer;
Begin
	Try
       DMEXPORTA.IBTExporta.CommitRetaining;
       DMEXPORTA.TCodigo.Close;
       DMEXPORTA.TCodigo.Open;
       XFlag:=0;
       //Passa primeiro codigo de pesquisa
       If XTabelaRetorno='FORNECEDOR' Then
           XCdAuxiliar:=DMEXPORTA.TCodigo.FieldByName('cod_fornec').AsInteger;
       If XTabelaRetorno='PEDIDO' Then
           XCdAuxiliar:=DMEXPORTA.TCodigo.FieldByName('cod_pedcomp').AsInteger;
       If XTabelaRetorno='PESSOA' Then
           XCdAuxiliar:=DMEXPORTA.TCodigo.FieldByName('cod_pessoa').AsInteger;
       If XTabelaRetorno='PESSOAF' Then
           XCdAuxiliar:=DMEXPORTA.TCodigo.FieldByName('cod_pessoaf').AsInteger;
       If XTabelaRetorno='PESSOAJ' Then
           XCdAuxiliar:=DMEXPORTA.TCodigo.FieldByName('cod_pessoaj').AsInteger;

       If XTabelaRetorno='SUBPRODUTO' Then
           XCdAuxiliar:=DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger;
       If XTabelaRetorno='ESTOQUE' Then
           XCdAuxiliar:=DMEXPORTA.TCodigo.FieldByName('cod_estoque').AsInteger;
       If XTabelaRetorno='PRODUTO' Then
           XCdAuxiliar:=DMEXPORTA.TCodigo.FieldByName('cod_produto').AsInteger;
       If XTabelaRetorno='GRUPOPROD' Then
           XCdAuxiliar:=DMEXPORTA.TCodigo.FieldByName('cod_grupoprod').AsInteger;
       If XTabelaRetorno='SUBGRUPOPROD' Then
           XCdAuxiliar:=DMEXPORTA.TCodigo.FieldByName('cod_subgrupoprod').AsInteger;
       If XTabelaRetorno='CST' Then
           XCdAuxiliar:=DMEXPORTA.TCodigo.FieldByName('cod_cst').AsInteger;
       If XTabelaRetorno='FORMAPAGAMENTO' Then
           XCdAuxiliar:=DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger;

       While XFlag=0 do
       Begin
           DMEXPORTA.Alx.Close;
           DMEXPORTA.Alx.SQL.Clear;
       	If XTabelaRetorno='FORNECEDOR' Then
           	DMEXPORTA.Alx.SQL.Add(' Select fornecedor.cod_fornec from fornecedor where fornecedor.cod_fornec=:codigo ');
       	If XTabelaRetorno='PEDIDO' Then
           	DMEXPORTA.Alx.SQL.Add(' Select pedcompra.cod_pedcomp from pedcompra where pedcompra.cod_pedcomp=:codigo ');
       	If XTabelaRetorno='PESSOA' Then
           	DMEXPORTA.Alx.SQL.Add(' Select pessoa.cod_pessoa FROM pessoa where pessoa.cod_pessoa=:codigo ');
       	If XTabelaRetorno='PESSOAF' Then
           	DMEXPORTA.Alx.SQL.Add(' Select pessoaf.cod_pessoaf FROM pessoaf where pessoaf.cod_pessoaf=:codigo ');
       	If XTabelaRetorno='PESSOAJ' Then
           	DMEXPORTA.Alx.SQL.Add(' Select pessoaj.cod_pessoaj FROM pessoaj where pessoaj.cod_pessoaj=:codigo ');
       	If XTabelaRetorno='SUBPRODUTO' Then
           	DMEXPORTA.Alx.SQL.Add(' Select subproduto.cod_subproduto FROM subproduto where subproduto.cod_subproduto=:codigo ');
       	If XTabelaRetorno='ESTOQUE' Then
           	DMEXPORTA.Alx.SQL.Add(' Select estoque.cod_estoque FROM estoque where estoque.cod_estoque=:codigo ');
       	If XTabelaRetorno='PRODUTO' Then
           	DMEXPORTA.Alx.SQL.Add(' Select produto.cod_produto FROM produto where produto.cod_produto=:codigo ');
       	If XTabelaRetorno='GRUPOPROD' Then
           	DMEXPORTA.Alx.SQL.Add(' Select grupoprod.cod_grupoprod FROM grupoprod where grupoprod.cod_grupoprod=:codigo ');
       	If XTabelaRetorno='SUBGRUPOPROD' Then
           	DMEXPORTA.Alx.SQL.Add(' Select subgrupoprod.cod_subgrupoprod FROM subgrupoprod where subgrupoprod.cod_subgrupoprod=:codigo ');
       	If XTabelaRetorno='CST' Then
           	DMEXPORTA.Alx.SQL.Add(' Select cst.cod_cst FROM cst where cst.cod_cst=:codigo ');
       	If XTabelaRetorno='FORMAPAGAMENTO' Then
           	DMEXPORTA.Alx.SQL.Add(' Select formpag.cod_formpag FROM formpag where formpag.cod_formpag=:codigo ');

           DMEXPORTA.Alx.ParamByName('CODIGO').AsInteger:=XCdAuxiliar;
           DMEXPORTA.Alx.Open;

           If DMEXPORTA.Alx.IsEmpty
           Then Begin
               XFLAG:=1;
           End
           Else Begin
               XCdAuxiliar:=XCdAuxiliar+1;
           End;
       End;
       Result:= XCdAuxiliar;

       Try
           DMEXPORTA.Alx.Close;
           DMEXPORTA.Alx.SQL.Clear;
       	If XTabelaRetorno='FORNECEDOR' Then
           	DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_fornec=:CODIGO');
       	If XTabelaRetorno='PEDIDO' Then
           	DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_pedcomp=:CODIGO');
       	If XTabelaRetorno='PESSOA' Then
           	DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_pessoa=:CODIGO');
       	If XTabelaRetorno='PESSOAJ' Then
           	DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_pessoaj=:CODIGO');
       	If XTabelaRetorno='SUBPRODUTO' Then
           	DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_subgrupoprod=:CODIGO');
       	If XTabelaRetorno='ESTOQUE' Then
           	DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_estoque=:CODIGO');
       	If XTabelaRetorno='PRODUTO' Then
           	DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_produto=:CODIGO');
       	If XTabelaRetorno='GRUPOPROD' Then
           	DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_grupoprod=:CODIGO');
       	If XTabelaRetorno='SUBGRUPOPROD' Then
           	DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_subgrupoprod=:CODIGO');
       	If XTabelaRetorno='CST' Then
           	DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_cst=:CODIGO');
       	If XTabelaRetorno='FORMAPAGAMENTO' Then
           	DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_formpag=:CODIGO'); 
           DMEXPORTA.Alx.ParamByName('CODIGO').AsInteger:=XCdAuxiliar+1;
           DMEXPORTA.Alx.ExecSQL;
           DMEXPORTA.IBTExporta.CommitRetaining;
       Except
       End;
   Except
       Result:=-1;
   End;
End;

// verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes
Function TFPedCompra.VerificaEstado: integer;
BEGIN
   DMGEOGRAFIA.TEstado.Close;
   DMGEOGRAFIA.TEstado.SQL.Clear;
   DMGEOGRAFIA.TEstado.SQL.Add('select * from estado where estado.cod_estado = :codigo');
   DMGEOGRAFIA.TEstado.ParamByName('codigo').AsInteger := DMGEOGRAFIA.TCidade.FieldByname('COD_ESTADO').AsInteger;
   DMGEOGRAFIA.TEstado.Open;

   DMEXPORTA.TEstado.Close;
   DMEXPORTA.TEstado.SQL.Clear;
   DMEXPORTA.TEstado.SQL.Add('select * from estado where (upper(estado.descricao) = upper(' + #39 + DMGEOGRAFIA.TEstado.FieldByname('descricao').AsString + #39 + '))');
   DMEXPORTA.TEstado.Open;

   If (DMEXPORTA.TEstado.IsEmpty) and (DMGEOGRAFIA.TEstado.FieldByName('descricao').AsString <> '')
   Then Begin
       DMEXPORTA.TCodigo.Close;
       DMEXPORTA.TCodigo.SQL.Clear;
       DMEXPORTA.TCodigo.SQL.Add('select * from codigo');
       DMEXPORTA.TCodigo.Open;

       DMEXPORTA.TEstado.Close;
       DMEXPORTA.TEstado.SQL.Clear;
       DMEXPORTA.TEstado.SQL.Add('insert into estado');
       DMEXPORTA.TEstado.SQL.Add('(COD_ESTADO, DESCRICAO, UF_ESTADO)');
       DMEXPORTA.TEstado.SQL.Add('values');
       DMEXPORTA.TEstado.SQL.Add('(:COD_ESTADO, :DESCRICAO, :UF_ESTADO)');
       DMEXPORTA.TEstado.ParamByName('cod_estado').AsInteger := DMEXPORTA.TCodigo.FieldByname('cod_estado').AsInteger;
       DMEXPORTA.TEstado.ParamByName('descricao').AsString := DMGEOGRAFIA.TEstado.FieldByname('descricao').AsString;
       DMEXPORTA.TEstado.ParamByName('uf_estado').AsString := DMGEOGRAFIA.TEstado.FieldByname('uf_estado').AsString;
       DMEXPORTA.TEstado.ExecSQL;

       DMEXPORTA.TCodigo.Edit;
       DMEXPORTA.TCodigo.FieldByName('cod_estado').AsInteger := DMEXPORTA.TEstado.FieldByName('cod_estado').AsInteger + 1;
       DMEXPORTA.TCodigo.Post;

       DMEXPORTA.IBTExporta.CommitRetaining;

       DMEXPORTA.TEstado.Close;
       DMEXPORTA.TEstado.SQL.Clear;
       DMEXPORTA.TEstado.SQL.Add('select * from estado where (upper(estado.descricao) = upper(' + #39 + DMGEOGRAFIA.TEstado.FieldByname('descricao').AsString + #39 + '))');
       DMEXPORTA.TEstado.Open;
   End;

   Result := DMEXPORTA.TEstado.FieldByname('cod_estado').AsInteger;

END;

// verifica se existe a cidade do cliente, se nao jah cadastra
Function TFPedCompra.VerificaCidade: integer;
var
   cod_tmp :integer;
begin

   If DMPESSOA.TPessoa.FieldByname('COD_CIDADE').AsInteger <> -1
   Then Begin

       // seleciona no banco local todos os dados da tabela cidade referente ao codigo da cidade do cliente
       DMGEOGRAFIA.TCidade.Close;
       DMGEOGRAFIA.TCidade.SQL.Clear;
       DMGEOGRAFIA.TCidade.SQL.Add('select * from cidade where cidade.cod_cidade = :codigo');
       DMGEOGRAFIA.TCidade.ParamByName('codigo').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_CIDADE').AsInteger;
       DMGEOGRAFIA.TCidade.Open;

       // verifica no banco de fora se existe a cidade com o mesmo nome
       DMEXPORTA.TCidade.Close;
       DMEXPORTA.TCidade.SQL.Clear;
       DMEXPORTA.TCidade.SQL.Add('select * from cidade where (upper(cidade.nome) = upper(' + #39 + DMGEOGRAFIA.TCidade.FieldByName('nome').AsString + #39 + '))');
       DMEXPORTA.TCidade.Open;

       If DMEXPORTA.TCidade.IsEmpty
       Then Begin
           // DADOS DA TABELA CODIGO PARA BUSCAR O PROXIMO CODIGO DE cidade
           DMEXPORTA.TCodigo.Close;
           DMEXPORTA.TCodigo.SQL.Clear;
           DMEXPORTA.TCodigo.SQL.Add('select * from codigo');
           DMEXPORTA.TCodigo.Open;

           cod_tmp := DMEXPORTA.TCodigo.FieldByname('cod_cidade').AsInteger;
           DMEXPORTA.TCidade.Close;
           DMEXPORTA.TCidade.SQL.Clear;
           DMEXPORTA.TCidade.SQL.Add('insert into cidade');
           DMEXPORTA.TCidade.SQL.Add('(COD_CIDADE, NOME, DDD, COD_ESTADO, COD_IBGE)');
           DMEXPORTA.TCidade.SQL.Add('values');
           DMEXPORTA.TCidade.SQL.Add('(:COD_CIDADE, :NOME, :DDD, :COD_ESTADO, :COD_IBGE)');
           DMEXPORTA.TCidade.ParamByName('cod_cidade').AsInteger := cod_tmp;//InserCodPk(DMEXPORTA.TCodigo, 'CODIGO', 'cod_cidade');
           //DMEXPORTA.TCodigo.FieldByname('cod_cidade').AsInteger;
           DMEXPORTA.TCidade.ParamByName('NOME').AsString := DMGEOGRAFIA.TCidade.FieldByname('NOME').AsString;
           DMEXPORTA.TCidade.ParamByName('DDD').AsString := DMGEOGRAFIA.TCidade.FieldByname('DDD').AsString;
           DMEXPORTA.TCidade.ParamByName('COD_IBGE').AsInteger := DMGEOGRAFIA.TCidade.FieldByname('COD_IBGE').AsInteger;
           // verifica se existe o estado, se nao tiver jah cadastra, caso cntrario apenas recolhe os dados importantes
           DMEXPORTA.TCidade.ParamByName('COD_ESTADO').AsInteger := VerificaEstado;
           DMEXPORTA.TCidade.ExecSQL;

           DMEXPORTA.TCodigo.Edit;
           DMEXPORTA.TCodigo.FieldByName('cod_cidade').AsInteger := cod_tmp + 1;
           DMEXPORTA.TCodigo.Post;

           DMEXPORTA.IBTExporta.CommitRetaining;

           DMEXPORTA.TCidade.Close;
           DMEXPORTA.TCidade.SQL.Clear;
           DMEXPORTA.TCidade.SQL.Add('select * from cidade where (upper(cidade.nome) = upper(' + #39 + DMGEOGRAFIA.TCidade.FieldByName('nome').AsString + #39 + '))');
           DMEXPORTA.TCidade.Open;
       End;

       Result := DMEXPORTA.TCidade.FieldByname('cod_cidade').AsInteger;
   End
   Else Begin
       Result := -1;
   End;
end;

// verifica se o forncedor esta cadastrado no banco, se nao tiver jah cadastra na hora
Function TFPedCompra.VerificaForncecedor(Cod_Cliente: integer): integer;
VAR
   XCOD_PESSOA, XCOD_CLIENTE, XCOD_PESSOAF:INTEGER;
begin
	Try
       // FILTRA A TABELA FORNECEDOR PARA BUSCAR O COD_PESSOA
       iF FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR','COD_FORNEC',IntToStr(Cod_Cliente),'')=True
       Then Begin
           // FILTRA A TABELA PESSOA P BUSCAR O NOME REFERNTE AO COD_PESSOA REPASSADO PELA TABELA CLIENTE
           FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',DMPESSOA.TFornecedor.FieldByname('cod_pessoa').AsString,'');

       End
       Else Begin
           MessageDlg('As Informações completas da pessoa relacionada, não foram encontradas.'+#13+#10+'Entre no cadastro e atualize os dados', mtWarning, [mbOK], 0);
           Exit;
       End;

       If DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString=''
       Then Begin
           MessageDlg('O Fornecedor esta sem CPF/CNPJ', mtWarning, [mbOK], 0)
       End
       Else Begin
           // verifica se existe cliente com mesmo CPF/CNPJ
           DMEXPORTA.TPessoa.Close;
           DMEXPORTA.TPessoa.SQL.Clear;
           DMEXPORTA.TPessoa.SQL.Add('select * from pessoa');
           DMEXPORTA.TPessoa.SQL.Add('where (pessoa.cpfcnpj = :cpf)');
           DMEXPORTA.TPessoa.ParamByName('cpf').AsString := DMPESSOA.TPessoa.FieldByName('cpfcnpj').AsString;
           DMEXPORTA.TPessoa.Open;
       End;

       // se encontrar na tabela pessoa devemos apenas alterar
       If not(DMEXPORTA.TPessoa.IsEmpty)
       Then Begin
          XCOD_PESSOA:=DMEXPORTA.TPessoa.FieldByName('COD_PESSOA').AsInteger;
          //Se encontrou pessoa Atualiza as informações
          // atualizar os dados da pessoa
          DMEXPORTA.TPessoa.Close;
          DMEXPORTA.TPessoa.SQL.Clear;
          DMEXPORTA.TPessoa.SQL.Add('update pessoa');
          DMEXPORTA.TPessoa.SQL.Add('set');
          DMEXPORTA.TPessoa.SQL.Add('NOME = :NOME,');
          DMEXPORTA.TPessoa.SQL.Add('ENDERECO = :ENDERECO,');
          DMEXPORTA.TPessoa.SQL.Add('BAIRRO = :BAIRRO,');
          DMEXPORTA.TPessoa.SQL.Add('COD_CIDADE = :COD_CIDADE,');
          DMEXPORTA.TPessoa.SQL.Add('CEP = :CEP,');
          DMEXPORTA.TPessoa.SQL.Add('CPFCNPJ = :CPFCNPJ,');
          DMEXPORTA.TPessoa.SQL.Add('DATA_INI = :DATA_INI,');
          DMEXPORTA.TPessoa.SQL.Add('DTNASC = :DTNASC,');
          DMEXPORTA.TPessoa.SQL.Add('COD_REGIAO = :COD_REGIAO,');
          DMEXPORTA.TPessoa.SQL.Add('COD_NATURAL = :COD_NATURAL,');
          DMEXPORTA.TPessoa.SQL.Add('TELREL = :TELREL,');
          DMEXPORTA.TPessoa.SQL.Add('DIAANIVER = :DIAANIVER,');
          DMEXPORTA.TPessoa.SQL.Add('PROXIMIDADE = :PROXIMIDADE,');
          DMEXPORTA.TPessoa.SQL.Add('VLRCREDITO = :VLRCREDITO');
          DMEXPORTA.TPessoa.SQL.Add('where');
          DMEXPORTA.TPessoa.SQL.Add('COD_PESSOA = :OLD_COD_PESSOA');
          DMEXPORTA.TPessoa.ParamByName('OLD_COD_PESSOA').AsInteger := XCOD_PESSOA;


           // filtrar cliente: Tenta encontrar fornecedor para atualizar
           DMEXPORTA.TFornecedor.Close;
           DMEXPORTA.TFornecedor.SQL.Clear;
           DMEXPORTA.TFornecedor.SQL.Add('select * from fornecedor');
           DMEXPORTA.TFornecedor.SQL.Add('where (fornecedor.cod_pessoa= :codigo)');
           DMEXPORTA.TFornecedor.ParamByName('codigo').AsInteger :=XCOD_PESSOA;
           DMEXPORTA.TFornecedor.Open;
           If DMEXPORTA.TFornecedor.IsEmpty
           Then Begin
				//Se não encontrou fornecedor atrelado a pessoa, devemos inserir um fornecedor
               DMEXPORTA.TFornecedor.Close;
               DMEXPORTA.TFornecedor.SQL.Clear;
               DMEXPORTA.TFornecedor.SQL.Add(' insert into FORNECEDOR ');
               DMEXPORTA.TFornecedor.SQL.Add('  (fornecedor.cod_fornec, fornecedor.cod_interno, fornecedor.cod_pessoa, fornecedor.data_cad) ');
               DMEXPORTA.TFornecedor.SQL.Add(' values ');
               DMEXPORTA.TFornecedor.SQL.Add(' (:COD_FORNEC, :COD_INTERNO, :COD_PESSOA, :DATA_CAD) ');
               XCOD_CLIENTE := RetornaChaveTabelaexortacao('FORNECEDOR');
               DMEXPORTA.TFornecedor.ParamByName('COD_FORNEC').AsInteger := XCOD_CLIENTE;
               DMEXPORTA.TFornecedor.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
               DMEXPORTA.TFornecedor.ParamByName('COD_INTERNO').AsString := DMPESSOA.TFornecedor.FieldByName('cod_interno').AsString;
               DMEXPORTA.TFornecedor.ParamByName('DATA_CAD').AsDate := Date();
               DMEXPORTA.TFornecedor.ExecSQL;
               //add proximo codigo cliente
               //DMEXPORTA.TCodigo.Edit;
               //DMEXPORTA.TCodigo.FieldByname('COD_FORNEC').AsInteger := DMEXPORTA.TCodigo.FieldByname('COD_FORNEC').AsInteger+1;
               //DMEXPORTA.TCodigo.Post;
           End
           Else Begin
               XCOD_CLIENTE:=DMEXPORTA.TFornecedor.FieldByName('cod_fornec').AsInteger;
           End;
           //Se ja possuir um fornecedor, não eh necessário alterar nada
       end
       Else Begin
       	 //Se não encontrou, as informações deve ser inseridas
            // inserir nova pessoa
            DMEXPORTA.TPessoa.Close;
            DMEXPORTA.TPessoa.SQL.Clear;
            DMEXPORTA.TPessoa.SQL.Add('insert into pessoa');
            DMEXPORTA.TPessoa.SQL.Add('(COD_PESSOA, NOME, ENDERECO, BAIRRO, COD_CIDADE, CEP, CPFCNPJ, DATA_INI,');
            DMEXPORTA.TPessoa.SQL.Add('DTNASC, COD_REGIAO, COD_NATURAL, TELREL, DIAANIVER, PROXIMIDADE, VLRCREDITO)');
            DMEXPORTA.TPessoa.SQL.Add('values');
            DMEXPORTA.TPessoa.SQL.Add('(:COD_PESSOA, :NOME, :ENDERECO, :BAIRRO, :COD_CIDADE, :CEP, :CPFCNPJ,');
            DMEXPORTA.TPessoa.SQL.Add(':DATA_INI, :DTNASC, :COD_REGIAO, :COD_NATURAL, :TELREL, :DIAANIVER,');
            DMEXPORTA.TPessoa.SQL.Add(':PROXIMIDADE, :VLRCREDITO)');

            XCOD_PESSOA := RetornaChaveTabelaexortacao('PESSOA');
            DMEXPORTA.TPessoa.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;


            //Se não encontrou fornecedor atrelado a pessoa, devemos inserir um fornecedor
            DMEXPORTA.TFornecedor.Close;
            DMEXPORTA.TFornecedor.SQL.Clear;
            DMEXPORTA.TFornecedor.SQL.Add(' insert into FORNECEDOR ');
            DMEXPORTA.TFornecedor.SQL.Add('  (fornecedor.cod_fornec, fornecedor.cod_interno, fornecedor.cod_pessoa, fornecedor.data_cad) ');
            DMEXPORTA.TFornecedor.SQL.Add(' values ');
            DMEXPORTA.TFornecedor.SQL.Add(' (:COD_FORNEC, :cod_interno, :COD_PESSOA, :DATA_CAD ) ');
            XCOD_CLIENTE := RetornaChaveTabelaexortacao('FORNECEDOR');
            DMEXPORTA.TFornecedor.ParamByName('COD_FORNEC').AsInteger := XCOD_CLIENTE;
            DMEXPORTA.TFornecedor.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;
            DMEXPORTA.TFornecedor.ParamByName('cod_interno').AsString := DMPESSOA.TFornecedor.FieldByName('cod_interno').AsString;
            DMEXPORTA.TFornecedor.ParamByName('DATA_CAD').AsDate := Date();
            DMEXPORTA.TFornecedor.ExecSQL;
       End;

		//PASSAR OS PARAMETROS TANTO EM CASO DE INSERÇÃO COMO DE ALTERAÇÃO
       DMEXPORTA.TPessoa.ParamByName('NOME').AsString := DMPESSOA.TPessoa.FieldByname('nome').AsString;
       DMEXPORTA.TPessoa.ParamByName('ENDERECO').AsString := DMPESSOA.TPessoa.FieldByname('endereco').AsString;
       DMEXPORTA.TPessoa.ParamByName('BAIRRO').AsString := DMPESSOA.TPessoa.FieldByname('bairro').AsString;
       // verifica se existe a cidade do cliente, se nao jah cadastra
       DMEXPORTA.TPessoa.ParamByName('COD_CIDADE').AsInteger := VerificaCidade;
       DMEXPORTA.TPessoa.ParamByName('CEP').AsString := DMPESSOA.TPessoa.FieldByname('CEP').AsString;
       DMEXPORTA.TPessoa.ParamByName('CPFCNPJ').AsString := DMPESSOA.TPessoa.FieldByname('CPFCNPJ').AsString;
       if DMPESSOA.TPessoa.FieldByname('DATA_INI').AsString <> '' then
           DMEXPORTA.TPessoa.ParamByName('DATA_INI').AsDateTime := DMPESSOA.TPessoa.FieldByname('DATA_INI').AsDateTime;
       DMEXPORTA.TPessoa.ParamByName('TELREL').AsString := DMPESSOA.TPessoa.FieldByname('TELREL').AsString;
       if DMPESSOA.TPessoa.FieldByname('DTNASC').AsString <> '' then
           DMEXPORTA.TPessoa.ParamByName('DTNASC').AsDateTime := DMPESSOA.TPessoa.FieldByname('DTNASC').AsDateTime;
       DMEXPORTA.TPessoa.ParamByName('COD_REGIAO').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_REGIAO').AsInteger;
       if DMPESSOA.TPessoa.FieldByname('COD_NATURAL').AsString <> '' then
           DMEXPORTA.TPessoa.ParamByName('COD_NATURAL').AsInteger := DMPESSOA.TPessoa.FieldByname('COD_NATURAL').AsInteger;
       if DMPESSOA.TPessoa.FieldByname('DIAANIVER').AsString <> '' then
           DMEXPORTA.TPessoa.ParamByName('DIAANIVER').AsInteger := DMPESSOA.TPessoa.FieldByname('DIAANIVER').AsInteger;
       DMEXPORTA.TPessoa.ParamByName('PROXIMIDADE').AsString := DMPESSOA.TPessoa.FieldByname('PROXIMIDADE').AsString;
       DMEXPORTA.TPessoa.ParamByName('VLRCREDITO').AsCurrency := DMPESSOA.TPessoa.FieldByname('VLRCREDITO').AsCurrency;
       DMEXPORTA.TPessoa.ExecSQL;

       // filtra tabela pelo codigo da pessoa     // banco externo
       FiltraTabela(DMEXPORTA.TPessoa,'PESSOA','COD_PESSOA',IntToStr(XCOD_PESSOA),'');

       // selecionando dados da tabela pessoa fisica
       DMPESSOA.TPessoaF.Close;
       DMPESSOA.TPessoaF.SQL.Clear;
       DMPESSOA.TPessoaF.SQL.Add('select * from pessoaf where pessoaf.cod_pessoa = :codigo');
       DMPESSOA.TPessoaF.ParamByName('codigo').AsInteger := DMPESSOA.TPessoa.FieldByname('cod_pessoa').AsInteger;
       DMPESSOA.TPessoaF.Open;

       // seleciona no banco local os dados da pessoa juridica
       DMPESSOA.TPessoaJ.Close;
       DMPESSOA.TPessoaJ.SQL.Clear;
       DMPESSOA.TPessoaJ.SQL.Add('select * from pessoaj where pessoaj.cod_pessoa = :codigo');
       DMPESSOA.TPessoaJ.ParamByName('codigo').AsInteger := DMPESSOA.TPessoa.FieldByname('cod_pessoa').AsInteger;
       DMPESSOA.TPessoaJ.Open;

       // ou seja, se pessoaj está vazio e foi encntrado pessoaf, a pessoa atual estah definida no banco local como pessoaf
       If (DMPESSOA.TPessoaJ.IsEmpty) and (Not DMPESSOA.TPessoaF.IsEmpty)
       Then Begin
           DMEXPORTA.Alx.Close;
           DMEXPORTA.Alx.SQL.Clear;
           DMEXPORTA.Alx.SQL.Add('select * from pessoaF');
           //DMEXPORTA.Alx.SQL.Add('left join pessoa on pessoaF.cod_pessoa = pessoa.cod_pessoa');
           DMEXPORTA.Alx.SQL.Add('where (pessoaF.cod_pessoa = :codigo)');
           DMEXPORTA.Alx.ParamByName('codigo').AsInteger := XCOD_PESSOA;
           DMEXPORTA.Alx.Open;

           If DMEXPORTA.Alx.IsEmpty
           Then Begin

                //inserir pessoa fisica no banco externo
                DMEXPORTA.TPessoaF.Close;
                DMEXPORTA.TPessoaF.SQL.Clear;
                DMEXPORTA.TPessoaF.SQL.Add('insert into pessoaf');
                DMEXPORTA.TPessoaF.SQL.Add('(COD_PESSOAF, COD_PESSOA, ESTADO_CIVIL, SEXO, EMP_TRAB, END_TRAB, BAIRRO_TRAB,');
                DMEXPORTA.TPessoaF.SQL.Add('DATA_ADMIS, CARGO, RG, DATA_EXPED, ORGAO_EXPED, TITULO, NOME_CONJ, DATANASC_CONJ,');
                DMEXPORTA.TPessoaF.SQL.Add('RG_CONJ, CPF_CONJ, EMP_CONJ, NOME_PAI, NOME_MAE, ENDE_FILIACAO)');
                DMEXPORTA.TPessoaF.SQL.Add('values');
                DMEXPORTA.TPessoaF.SQL.Add('(:COD_PESSOAF, :COD_PESSOA, :ESTADO_CIVIL, :SEXO, :EMP_TRAB, :END_TRAB,');
                DMEXPORTA.TPessoaF.SQL.Add(':BAIRRO_TRAB, :DATA_ADMIS, :CARGO, :RG, :DATA_EXPED, :ORGAO_EXPED, :TITULO,');
                DMEXPORTA.TPessoaF.SQL.Add(':NOME_CONJ, :DATANASC_CONJ, :RG_CONJ, :CPF_CONJ, :EMP_CONJ, :NOME_PAI,');
                DMEXPORTA.TPessoaF.SQL.Add(':NOME_MAE, :ENDE_FILIACAO)');

               DMEXPORTA.TPessoaF.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;

               XCOD_PESSOAF := RetornaChaveTabelaexortacao('PESSOAF');
               DMEXPORTA.TPessoaF.ParamByName('COD_PESSOAF').AsInteger := XCOD_PESSOAF;

           End
           Else Begin
              // armazenar codigo da pessoa fisica
              XCOD_PESSOAF := DMEXPORTA.Alx.FieldByName('COD_PESSOAF').AsInteger;
              //update nos dados pessoa fisica
              DMEXPORTA.TPessoaF.Close;
              DMEXPORTA.TPessoaF.SQL.Clear;
              DMEXPORTA.TPessoaF.SQL.Add('update pessoaf set');
              DMEXPORTA.TPessoaF.SQL.Add('ESTADO_CIVIL = :ESTADO_CIVIL,');
              DMEXPORTA.TPessoaF.SQL.Add('SEXO = :SEXO, EMP_TRAB = :EMP_TRAB, END_TRAB = :END_TRAB, BAIRRO_TRAB = :BAIRRO_TRAB,');
              DMEXPORTA.TPessoaF.SQL.Add('DATA_ADMIS = :DATA_ADMIS, CARGO = :CARGO, RG = :RG, DATA_EXPED = :DATA_EXPED,');
              DMEXPORTA.TPessoaF.SQL.Add('ORGAO_EXPED = :ORGAO_EXPED, TITULO = :TITULO, NOME_CONJ = :NOME_CONJ,');
              DMEXPORTA.TPessoaF.SQL.Add('DATANASC_CONJ = :DATANASC_CONJ, RG_CONJ = :RG_CONJ, CPF_CONJ = :CPF_CONJ,');
              DMEXPORTA.TPessoaF.SQL.Add('EMP_CONJ = :EMP_CONJ, NOME_PAI = :NOME_PAI, NOME_MAE = :NOME_MAE, ENDE_FILIACAO = :ENDE_FILIACAO');
              DMEXPORTA.TPessoaF.SQL.Add('where COD_PESSOAF = :OLD_COD_PESSOAF');

              DMEXPORTA.TPessoaF.ParamByName('OLD_COD_PESSOAF').AsInteger := XCOD_PESSOAF;

           End;

           //atualizar dados pessoa fisica
           if DMPESSOA.TPessoaF.FieldByname('ESTADO_CIVIL').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('ESTADO_CIVIL').AsString := DMPESSOA.TPessoaF.FieldByname('ESTADO_CIVIL').AsString;
           if DMPESSOA.TPessoaF.FieldByname('SEXO').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('SEXO').AsString := DMPESSOA.TPessoaF.FieldByname('SEXO').AsString;
           if DMPESSOA.TPessoaF.FieldByname('EMP_TRAB').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('EMP_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('EMP_TRAB').AsString;
           if DMPESSOA.TPessoaF.FieldByname('END_TRAB').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('END_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('END_TRAB').AsString;
           if DMPESSOA.TPessoaF.FieldByname('BAIRRO_TRAB').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('BAIRRO_TRAB').AsString := DMPESSOA.TPessoaF.FieldByname('BAIRRO_TRAB').AsString;
           if DMPESSOA.TPessoaF.FieldByname('DATA_ADMIS').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('DATA_ADMIS').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATA_ADMIS').AsDateTime;
           if DMPESSOA.TPessoaF.FieldByname('CARGO').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('CARGO').AsString := DMPESSOA.TPessoaF.FieldByname('CARGO').AsString;
           if DMPESSOA.TPessoaF.FieldByname('RG').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('RG').AsString := DMPESSOA.TPessoaF.FieldByname('RG').AsString;
           if DMPESSOA.TPessoaF.FieldByname('DATA_EXPED').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('DATA_EXPED').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATA_EXPED').AsDateTime;
           if DMPESSOA.TPessoaF.FieldByname('ORGAO_EXPED').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('ORGAO_EXPED').AsString := DMPESSOA.TPessoaF.FieldByname('ORGAO_EXPED').AsString;
           if DMPESSOA.TPessoaF.FieldByname('TITULO').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('TITULO').AsString := DMPESSOA.TPessoaF.FieldByname('TITULO').AsString;
           if DMPESSOA.TPessoaF.FieldByname('NOME_CONJ').AsString<> '' then
               DMEXPORTA.TPessoaF.ParamByName('NOME_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_CONJ').AsString;
           if DMPESSOA.TPessoaF.FieldByname('DATANASC_CONJ').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('DATANASC_CONJ').AsDateTime := DMPESSOA.TPessoaF.FieldByname('DATANASC_CONJ').AsDateTime;
           if DMPESSOA.TPessoaF.FieldByname('RG_CONJ').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('RG_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('RG_CONJ').AsString;
           if DMPESSOA.TPessoaF.FieldByname('CPF_CONJ').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('CPF_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('CPF_CONJ').AsString;
           if DMPESSOA.TPessoaF.FieldByname('EMP_CONJ').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('EMP_CONJ').AsString := DMPESSOA.TPessoaF.FieldByname('EMP_CONJ').AsString;
           if DMPESSOA.TPessoaF.FieldByname('NOME_PAI').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('NOME_PAI').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_PAI').AsString;
           if DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('NOME_MAE').AsString := DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString;
           if DMPESSOA.TPessoaF.FieldByname('ENDE_FILIACAO').AsString <> '' then
               DMEXPORTA.TPessoaF.ParamByName('ENDE_FILIACAO').AsString := DMPESSOA.TPessoaF.FieldByname('ENDE_FILIACAO').AsString;
           //DMEXPORTA.TPessoaF.ParamByName('DIAANIVERCONJ').AsString := DMPESSOA.TPessoaF.FieldByname('DIAANIVERCONJ').AsString;
           DMEXPORTA.TPessoaF.ExecSQL;

       End
       // caso contrario eh efetuado o cadastro como pessoa juridica no banco externo
       Else Begin
           //FiltraTabela(DMEXPORTA.TPessoa,'PESSOA','CPFCNPJ',DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString,'');
           DMEXPORTA.Alx.Close;
           DMEXPORTA.Alx.SQL.Clear;
           DMEXPORTA.Alx.SQL.Add('select * from pessoaj');
           DMEXPORTA.Alx.SQL.Add('where (pessoaj.cod_pessoa = :codigo)');
           DMEXPORTA.Alx.ParamByName('codigo').AsInteger := XCOD_PESSOA;
           DMEXPORTA.Alx.Open;
           If DMEXPORTA.Alx.IsEmpty
           Then Begin
               // INSERIR PESSOA JURIDICA
               DMEXPORTA.TPessoaJ.Close;
               DMEXPORTA.TPessoaJ.SQL.Clear;
               DMEXPORTA.TPessoaJ.SQL.Add('insert into pessoaJ');
               DMEXPORTA.TPessoaJ.SQL.Add('(COD_PESSOAJ, COD_PESSOA, INSC_EST, RAZAO_SOCIAL, INSC_MUN, WEB_PAGE)');
               DMEXPORTA.TPessoaJ.SQL.Add('values');
               DMEXPORTA.TPessoaJ.SQL.Add('(:COD_PESSOAJ, :COD_PESSOA, :INSC_EST, :RAZAO_SOCIAL, :INSC_MUN, :WEB_PAGE)');

               DMEXPORTA.TPessoaJ.ParamByName('COD_PESSOA').AsInteger := XCOD_PESSOA;

               XCOD_PESSOAF := RetornaChaveTabelaexortacao('PESSOAJ');
               DMEXPORTA.TPessoaJ.ParamByName('COD_PESSOAJ').AsInteger := XCOD_PESSOAF;
           End
           Else Begin
               //ARMAZENAR CODIGO SE ENCONTROU
               XCOD_PESSOAF := DMEXPORTA.Alx.FieldByName('COD_PESSOAJ').AsInteger;
               DMEXPORTA.TPessoaJ.Close;
               DMEXPORTA.TPessoaJ.SQL.Clear;
               DMEXPORTA.TPessoaJ.SQL.Add('update pessoaJ set');
               DMEXPORTA.TPessoaJ.SQL.Add('INSC_EST = :INSC_EST,');
               DMEXPORTA.TPessoaJ.SQL.Add('RAZAO_SOCIAL = :RAZAO_SOCIAL,INSC_MUN = :INSC_MUN, WEB_PAGE = :WEB_PAGE');
               DMEXPORTA.TPessoaJ.SQL.Add('where COD_PESSOAJ = :OLD_COD_PESSOAJ');

               DMEXPORTA.TPessoaJ.ParamByName('OLD_COD_PESSOAJ').AsInteger := XCOD_PESSOAF;
           End;

           //ATUALIZAR DADOS
           DMEXPORTA.TPessoaJ.ParamByName('INSC_EST').AsString := DMPESSOA.TPessoaJ.fieldByname('INSC_EST').AsString;
           DMEXPORTA.TPessoaJ.ParamByName('RAZAO_SOCIAL').AsString := DMPESSOA.TPessoaJ.fieldByname('RAZAO_SOCIAL').AsString;
           if DMPESSOA.TPessoaJ.fieldByname('INSC_MUN').AsString <> '' then
               DMEXPORTA.TPessoaJ.ParamByName('INSC_MUN').AsString := DMPESSOA.TPessoaJ.fieldByname('INSC_MUN').AsString;
           if DMPESSOA.TPessoaJ.fieldByname('WEB_PAGE').AsString <> '' then
               DMEXPORTA.TPessoaJ.ParamByName('WEB_PAGE').AsString := DMPESSOA.TPessoaJ.fieldByname('WEB_PAGE').AsString;
           DMEXPORTA.TPessoaJ.ExecSQL;

       End;

       // SQL LOCAL PARA BUCAR OS DADOS DO CLIENTE BANCO LOCAL
       //FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE',IntToStr(Cod_Cliente),'');//DMServ.TOrd.FieldByName('COD_CLIENTE').AsString,'');

       DMEXPORTA.IBTExporta.CommitRetaining;

       Result := XCOD_CLIENTE;
   Except
   	MessageDlg('O Pedido Será Exportada sem fornecedor', mtWarning, [mbOK], 0);
       Result:=-1;
   End;
end;


// Conecta banco de ddos para exportar Ordens
Function TFPedCompra.ConectaBancoDados(XEndereco: string): boolean;
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
       DMEXPORTA.TPedC.Active := False;
       DMEXPORTA.TDocFisc.Active := False;
       DMEXPORTA.TFormPag.Active := false;
       DMEXPORTA.TPessoa.Active := false;
       DMEXPORTA.TFornecedor.Active := false;
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
       DMEXPORTA.TPedC.Active := True;
       DMEXPORTA.TPedC.Active := True;

       DMEXPORTA.TFormPag.Active := true;

		DMEXPORTA.TFornecedor.Close;
       DMEXPORTA.TFornecedor.SQL.Clear;
       DMEXPORTA.TFornecedor.SQL.Add(' SELECT * FROM FORNECEDOR ');
       DMEXPORTA.TFornecedor.Open;
       DMEXPORTA.TFornecedor.Active := true;

		DMEXPORTA.TPessoa.Close;
       DMEXPORTA.TPessoa.SQL.Clear;
       DMEXPORTA.TPessoa.SQL.Add(' SELECT * FROM PESSOA ');
       DMEXPORTA.TPessoa.Open;
       DMEXPORTA.TPessoa.Active := true;

		DMEXPORTA.TPessoaf.Close;
       DMEXPORTA.TPessoaf.SQL.Clear;
       DMEXPORTA.TPessoaf.SQL.Add(' SELECT * FROM PESSOAf ');
       DMEXPORTA.TPessoaf.Open;
       DMEXPORTA.TPessoaf.Active := true;

		DMEXPORTA.TPessoaj.Close;
       DMEXPORTA.TPessoaj.SQL.Clear;
       DMEXPORTA.TPessoaj.SQL.Add(' SELECT * FROM PESSOAj ');
       DMEXPORTA.TPessoaj.Open;
       DMEXPORTA.TPessoaj.Active := true;


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
// busca forma de pagamento, se necessario cadastra a nova forma
Function TFPedCompra.Forma_Pagamento: integer;
VAR
   XCOD_AUX :INTEGER;
begin
	Try
       Result:=-1;
       // seleciona no banco o local os dados da tabela forma de pagamento, princialmente a descricao
       FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',DMENTRADA.TPedC.FieldByName('cod_formpag').AsString,'');

       // verifica se no banco de fora existe a forma de pagemtn o com a mesma descricao
       DMEXPORTA.TFormPag.Close;
       DMEXPORTA.TFormPag.SQL.Clear;
       DMEXPORTA.TFormPag.SQL.Add('select * from formpag where (upper(formpag.descricao) = upper(' + #39 + DMFINANC.TFormPag.FieldByName('descricao').AsString + #39 + '))');
       DMEXPORTA.TFormPag.Open;

       If DMEXPORTA.TFormPag.IsEmpty
       Then Begin
           DMEXPORTA.TFormPag.Close;
           DMEXPORTA.TFormPag.SQL.Clear;
           DMEXPORTA.TFormPag.SQL.Add('insert into formpag');
           DMEXPORTA.TFormPag.SQL.Add('(COD_FORMPAG, COD_LOJA, DESCRICAO, DESCFISC, PRIMPARCELA, INTERVALO,');
           DMEXPORTA.TFormPag.SQL.Add('QUANTPARCELA, JUROAPLIC, MEDIADIAS, TIPO)');
           DMEXPORTA.TFormPag.SQL.Add('values');
           DMEXPORTA.TFormPag.SQL.Add('(:COD_FORMPAG, :COD_LOJA, :DESCRICAO, :DESCFISC, :PRIMPARCELA, :INTERVALO,');
           DMEXPORTA.TFormPag.SQL.Add(':QUANTPARCELA, :JUROAPLIC, :MEDIADIAS, :TIPO)');
           DMEXPORTA.TFormPag.ParamByName('COD_FORMPAG').AsInteger := RetornaChaveTabelaexortacao('FORMAPAGAMENTO');

           XCOD_AUX := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger;

           // atualizando banco de fora
           DMEXPORTA.TCodigo.Edit;
           DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger := DMEXPORTA.TCodigo.FieldByName('cod_formpag').AsInteger + 1;
           DMEXPORTA.TCodigo.Post;
       End
       Else Begin
           // editando os dados de forma de pagamento
           XCOD_AUX := DMEXPORTA.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

           DMEXPORTA.TFormPag.Close;
           DMEXPORTA.TFormPag.SQL.Clear;
           DMEXPORTA.TFormPag.SQL.Add('update formpag set');
           DMEXPORTA.TFormPag.SQL.Add('COD_LOJA = :COD_LOJA, DESCRICAO = :DESCRICAO,');
           DMEXPORTA.TFormPag.SQL.Add('DESCFISC = :DESCFISC, PRIMPARCELA = :PRIMPARCELA, INTERVALO = :INTERVALO,');
           DMEXPORTA.TFormPag.SQL.Add('QUANTPARCELA = :QUANTPARCELA, JUROAPLIC = :JUROAPLIC, MEDIADIAS = :MEDIADIAS, TIPO = :TIPO');
           DMEXPORTA.TFormPag.SQL.Add('where COD_FORMPAG = :OLD_COD_FORMPAG');

           DMEXPORTA.TFormPag.ParamByName('OLD_COD_FORMPAG').AsInteger := XCOD_AUX;
       End;

       DMEXPORTA.TFormPag.ParamByName('COD_LOJA').AsInteger := DMFINANC.TFormPag.FieldByName('COD_LOJA').AsInteger;
       DMEXPORTA.TFormPag.ParamByName('DESCFISC').AsString := DMFINANC.TFormPag.FieldByName('DESCFISC').AsString;
       DMEXPORTA.TFormPag.ParamByName('DESCRICAO').AsString := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       DMEXPORTA.TFormPag.ParamByName('INTERVALO').AsInteger := DMFINANC.TFormPag.FieldByName('INTERVALO').AsInteger;
       DMEXPORTA.TFormPag.ParamByName('JUROAPLIC').AsCurrency := DMFINANC.TFormPag.FieldByName('JUROAPLIC').AsCurrency;
       DMEXPORTA.TFormPag.ParamByName('MEDIADIAS').AsInteger := DMFINANC.TFormPag.FieldByName('MEDIADIAS').AsInteger;
       DMEXPORTA.TFormPag.ParamByName('PRIMPARCELA').AsInteger := DMFINANC.TFormPag.FieldByName('PRIMPARCELA').AsInteger;
       DMEXPORTA.TFormPag.ParamByName('QUANTPARCELA').AsInteger := DMFINANC.TFormPag.FieldByName('QUANTPARCELA').AsInteger;
       DMEXPORTA.TFormPag.ParamByName('TIPO').AsString := DMFINANC.TFormPag.FieldByName('TIPO').AsString;
       DMEXPORTA.TFormPag.ExecSQL;
       DMEXPORTA.IBTExporta.CommitRetaining;

       Result := XCOD_AUX;
   Except
       DMEXPORTA.IBTExporta.RollbackRetaining;
		MessageDlg('Falha ao atualizar forma de pagamento.', mtWarning, [mbOK], 0);
   End;
end;

// exporta os pedidos de compra selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
procedure TFPedCompra.Exporta_Pedido;
var
   XCOD_ORDEM,XCOD_SUBPRODUTO, XCOD_ESTOQUE, XCOD_PRODUTO, XCOD_GRUPO, XCOD_SUBGRUPO, XCOD_CST, XCOD_AUX, XCOD_DOCFISCAL, XFLAG:INTEGER;
begin

try
   // Conecta banco de ddos para exportar Ordens
   PConsulta.Refresh;
   PExp.Visible := true;
   PExp.BringToFront;
   PBExport.Min := 0;
   PBExport.Max := 100;
   PBExport.Position :=50;
   LBCONEXAO.Caption := 'ESTABELECENDO CONEXÃO COM BANCO ... ';
   PExp.Refresh;
   //01 - CONEXÃO COM O BANCO DE EXPORTAÇÃO
 	If ConectaBancoDados(DMMACS.TLoja.FieldByName('EXPORT_OS').AsString) = true
   Then Begin
       PConsulta.Refresh;
       PExp.Visible := true;
       PExp.BringToFront;
       PExp.Refresh;
       PBExport.Position :=100;

       //Caso tenha pendencias no datammodule, elas são cconirmadas ou recusadas
       Try
           DMEXPORTA.IBTExporta.CommitRetaining;
       Except
           DMEXPORTA.IBTExporta.RollbackRetaining;
       End;

       LBCONEXAO.Caption := 'PREPARANDO PEDIDOS PARA SEREM EXPORTADOS ... ';
       PExp.Refresh;

       // se refere ás posições da barra de progressão
       XContador := 0;

       // seleciona no banco local todas as ordens de serviço que fram selecionadas e que ainda nao foram exportadas - banco local
       DMENTRADA.TPedC.Close;
       DMENTRADA.TPedC.SQL.Clear;
       DMENTRADA.TPedC.SQL.Add('select * from pedcompra where (pedcompra.export = ' + #39 + 'X' + #39+ ') ');
       DMENTRADA.TPedC.SQL.Add('and (pedcompra.situacao = ' + #39 + 'ABERTO' + #39 + ')'); //and ((ordem.exportado = ' + #39 + '' + #39 +') or (ordem.exportado is null)) and (ordem.exp = ' + #39 + '#' + #39 + ')');
       DMENTRADA.TPedC.Open;

       // seleciona o numero de produtos na ordem de servico para servir de base para Barra de Progressão
       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('select count(itenspedc.cod_itenspedc) as TOTAL_PROD from itenspedc ');
       DMSAIDA.TAlx.SQL.Add('left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
       DMSAIDA.TAlx.SQL.Add('where ((pedcompra.export = ' + #39 + '' + #39 +') OR (pedcompra.export IS NULL)) and (pedcompra.export = ' + #39 + 'X' + #39 + ')');
       DMSAIDA.TAlx.Open;
       // dados do componente ProgreeBar
       XContador := 0;
       PBExport.Min := 0;
       PBExport.Max := 0;
       //PBExport.Max := DMSAIDA.TAlx.FieldByname('TOTAL_PROD').AsInteger + DMServ.TAlx1.FieldByname('TOTAL_SERV').AsInteger;

       //PConsulta.Refresh;
       //PExp.Visible := true;
       //PExp.BringToFront;
       DMENTRADA.TPedC.First;
       //PBExport.Max := DMENTRADA.TPedC.RecordCount;
       While NOT DMENTRADA.TPedC.Eof do
       Begin
           PBExport.Max := PBExport.Max+1;
           DMENTRADA.TPedC.Next;
       END;

       PBExport.Position := XContador;

       // primeiro registro
       DMENTRADA.TPedC.First;

       While Not DMENTRADA.TPedC.Eof do
       Begin
           XContador := XContador+1;

           LBCONEXAO.Caption := 'Enviando Ordem ('+IntToStr(XContador)+'/'+IntToStr(PBExport.Max)+') ... ';
           PBExport.Position := XContador;
           PExp.Refresh;

           XCOD_ORDEM := 0;
           Try
               DMEXPORTA.IBTExporta.CommitRetaining;
               //02 - Buscamos a chave do pedido de compra
   			XCOD_ORDEM:=RetornaChaveTabelaexortacao('PEDIDO');
               XFLAG:=0;
               While XFLAG=0 do
               Begin
                   DMEXPORTA.Alx.Close;
                   DMEXPORTA.Alx.SQL.Clear;
                   DMEXPORTA.Alx.SQL.Add(' SELECT * FROM pedcompra where pedcompra.cod_pedcomp=:CODIGO ');
                   DMEXPORTA.Alx.ParamByName('CODIGO').AsInteger:=XCOD_ORDEM;
                   DMEXPORTA.Alx.Open;
                   If DMEXPORTA.Alx.IsEmpty Then
                       XFLAG:=1
                   Else
                       XCOD_ORDEM:=XCOD_ORDEM+1;
               End;
               DMEXPORTA.Alx.Close;
               DMEXPORTA.Alx.SQL.Clear;
               DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.COD_PEDCOMP=:CODIGO');
               DMEXPORTA.Alx.ParamByName('CODIGO').AsInteger:=XCOD_ORDEM+1;
               DMEXPORTA.Alx.ExecSQL;
               DMEXPORTA.IBTExporta.CommitRetaining;
               DMEXPORTA.TPedC.Insert;
				DMEXPORTA.TPedC.FieldByName('COD_PEDCOMP').AsInteger:=XCOD_ORDEM;
               //03 - Inserimos fornecedor buscando codigo da tabela
               DMEXPORTA.TPedC.FieldByName('COD_FORNEC').AsInteger:=VerificaForncecedor(DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger);
               DMEXPORTA.TPedC.FieldByName('VALOR').AsCurrency:=DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency;
               DMEXPORTA.TPedC.FieldByName('COD_FORMPAG').AsInteger:=Forma_Pagamento;
               DMEXPORTA.TPedC.FieldByName('DTPEDCOMP').AsString:=DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsString;
               DMEXPORTA.TPedC.FieldByName('DESCONTO').AsCurrency:=DMENTRADA.TPedC.FieldByName('DESCONTO').AsCurrency;
               DMEXPORTA.TPedC.FieldByName('SITUACAO').AsString:='ABERTO';
               DMEXPORTA.TPedC.FieldByName('NUMPED').AsString:=DMENTRADA.TPedC.FieldByName('NUMPED').AsString;
               DMEXPORTA.TPedC.FieldByName('numfiscal').AsString:=DMENTRADA.TPedC.FieldByName('numfiscal').AsString;
               DMEXPORTA.TPedC.FieldByName('DESCMOE').AsCurrency:=DMENTRADA.TPedC.FieldByName('DESCMOE').AsCurrency;
               DMEXPORTA.TPedC.FieldByName('OBS').AsString:=DMENTRADA.TPedC.FieldByName('OBS').AsString;
               DMEXPORTA.TPedC.FieldByName('prazoentr').AsString:=DMENTRADA.TPedC.FieldByName('prazoentr').AsString;
               DMEXPORTA.TPedC.FieldByName('destinatario').AsString:=DMENTRADA.TPedC.FieldByName('destinatario').AsString;
               DMEXPORTA.TPedC.FieldByName('COBRANCA').AsString:=DMENTRADA.TPedC.FieldByName('COBRANCA').AsString;
               DmExporta.TpedC.Post;

               //INSERE DOCUMENTO FISCAL
               //FERIFICA DE O PEDIDO PARA SER EXPORTADO POSSUI DOCUMENTO FISCAL
               DMENTRADA.TAlx.Close;
               DMENTRADA.TAlx.SQL.Clear;
               DMENTRADA.TAlx.SQL.Add(' SELECT * FROM docfis WHERE docfis.cod_pedido=:CODIGO ');
               DMENTRADA.TAlx.ParamByName('CODIGO').AsInteger:=DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger;
               DMENTRADA.TAlx.Open;
               If Not DMENTRADA.TAlx.IsEmpty
               Then Begin
                   DMEXPORTA.IBTExporta.CommitRetaining;
                   DMEXPORTA.Alx.Close;
                   DMEXPORTA.Alx.SQL.Clear;
                   DMEXPORTA.Alx.SQL.Add(' SELECT * FROM CODIGO');
                   DMEXPORTA.Alx.Open;
                   XCOD_DOCFISCAL:=DMEXPORTA.Alx.FieldByName('cod_docfisc').AsInteger;
                   DMEXPORTA.Alx.Close;
                   DMEXPORTA.Alx.SQL.Clear;
                   DMEXPORTA.Alx.SQL.Add(' UPDATE CODIGO SET CODIGO.cod_docfisc=:CODIGO');
                   DMEXPORTA.Alx.ParamByName('CODIGO').AsInteger:=XCOD_ORDEM+1;
                   DMEXPORTA.Alx.ExecSQL;
                   DMEXPORTA.IBTExporta.CommitRetaining;
                   DMEXPORTA.TDocFisc.Close;
                   DMEXPORTA.TDocFisc.SQL.Clear;
                   DMEXPORTA.TDocFisc.SQL.Add('select * from docfis');
                   DMEXPORTA.TDocFisc.Open;

                   DMEXPORTA.TDocFisc.Insert;
                   DMEXPORTA.TDocFisc.FieldByName('COD_DOCFISC').AsInteger:=XCOD_DOCFISCAL;
                   DMEXPORTA.TDocFisc.FieldByName('COD_PEDIDO').AsInteger:=XCOD_ORDEM;
                   DMEXPORTA.TDocFisc.FieldByName('NUMDOCFIS').AsString:=DMENTRADA.TPedC.FieldByName('numfiscal').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('TIPODOCFIS').AsString:=DMENTRADA.TAlx.FieldByName('TIPODOCFIS').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('NUMDOCANT').AsString:=DMENTRADA.TAlx.FieldByName('NUMDOCANT').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('SERIE').AsString:='1';
                   DMEXPORTA.TDocFisc.FieldByName('DTEMISSAO').AsString:=DMENTRADA.TAlx.FieldByName('DTEMISSAO').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('DTENTSAID').AsString:=DMENTRADA.TAlx.FieldByName('DTENTSAID').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('HORASAID').AsString:=DMENTRADA.TAlx.FieldByName('HORASAID').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('COD_CFOP').AsString:=DMENTRADA.TAlx.FieldByName('COD_CFOP').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('COD_TRANSP').AsString:=DMENTRADA.TAlx.FieldByName('COD_TRANSP').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('OBS').AsString:=DMENTRADA.TAlx.FieldByName('OBS').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('FRETECONTA').AsString:=DMENTRADA.TAlx.FieldByName('FRETECONTA').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('PLACA').AsString:=DMENTRADA.TAlx.FieldByName('PLACA').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('UFPLACA').AsString:=DMENTRADA.TAlx.FieldByName('UFPLACA').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('CPFPLACA').AsString:=DMENTRADA.TAlx.FieldByName('CPFPLACA').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('QUANTFRETE').AsString:=DMENTRADA.TAlx.FieldByName('QUANTFRETE').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('ESPECIEFRETE').AsString:=DMENTRADA.TAlx.FieldByName('ESPECIEFRETE').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('MARCAFRETE').AsString:=DMENTRADA.TAlx.FieldByName('MARCAFRETE').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('PESOBRUTO').AsString:=DMENTRADA.TAlx.FieldByName('PESOBRUTO').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('PESOLIQ').AsString:=DMENTRADA.TAlx.FieldByName('PESOLIQ').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('COD_COTA').AsString:=DMENTRADA.TAlx.FieldByName('COD_COTA').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('NF').AsString:=DMENTRADA.TAlx.FieldByName('NF').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('BASEICMS').AsString:=DMENTRADA.TAlx.FieldByName('BASEICMS').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('VLRICMS').AsString:=DMENTRADA.TAlx.FieldByName('VLRICMS').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('BASCALSUBS').AsString:=DMENTRADA.TAlx.FieldByName('BASCALSUBS').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('VLRICMSUBS').AsString:=DMENTRADA.TAlx.FieldByName('VLRICMSUBS').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('VLRTOTPROD').AsString:=DMENTRADA.TAlx.FieldByName('VLRTOTPROD').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('VLRFRETE').AsString:=DMENTRADA.TAlx.FieldByName('VLRFRETE').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('VLRICMSFRETE').AsString:=DMENTRADA.TAlx.FieldByName('VLRICMSFRETE').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('VLRSEG').AsString:=DMENTRADA.TAlx.FieldByName('VLRSEG').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('VLRTOTIPI').AsString:=DMENTRADA.TAlx.FieldByName('VLRTOTIPI').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('VLRTOTICMS').AsString:=DMENTRADA.TAlx.FieldByName('VLRTOTICMS').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('VLRTOTDOCNF').AsString:=DMENTRADA.TAlx.FieldByName('VLRTOTDOCNF').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('VLROUTROS').AsString:=DMENTRADA.TAlx.FieldByName('VLROUTROS').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('FRETECOMP').AsString:=DMENTRADA.TAlx.FieldByName('FRETECOMP').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('VLREMB').AsString:=DMENTRADA.TAlx.FieldByName('VLREMB').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('TIPOGERADOR').AsString:=DMENTRADA.TAlx.FieldByName('TIPOGERADOR').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('NUMCONHEC').AsString:=DMENTRADA.TAlx.FieldByName('NUMCONHEC').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('vlroutrasdesp').AsString:=DMENTRADA.TAlx.FieldByName('vlroutrasdesp').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('VLRISENTOICMS').AsString:=DMENTRADA.TAlx.FieldByName('VLRISENTOICMS').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('MODELONF').AsString:=DMENTRADA.TAlx.FieldByName('MODELONF').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('EMPEMIT').AsString:=DMENTRADA.TAlx.FieldByName('EMPEMIT').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('NFESERIE').AsString:=DMENTRADA.TAlx.FieldByName('NFESERIE').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('NFECHAVE').AsString:=DMENTRADA.TAlx.FieldByName('NFECHAVE').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('NFELOTE').AsString:=DMENTRADA.TAlx.FieldByName('NFELOTE').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('NFERECIBO').AsString:=DMENTRADA.TAlx.FieldByName('NFERECIBO').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('NFEERRO').AsString:=DMENTRADA.TAlx.FieldByName('NFEERRO').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('NFEPROTOCOLO').AsString:=DMENTRADA.TAlx.FieldByName('NFEPROTOCOLO').AsString;
                   DMEXPORTA.TDocFisc.FieldByName('NFESTATUS').AsString:=DMENTRADA.TAlx.FieldByName('NFESTATUS').AsString;
                   DMEXPORTA.TDocFisc.Post;
               End;
           Except
           	MessageDlg('FALHA AO INSERIR PEDIDO', mtWarning, [mbOK], 0);
           End;
           // ******************************************************************************************************************
           // 04 - seleciona os subprodutos relacionados eo pedido de compra atual - banco local
           DMENTRADA.TItemPC.Close;
           DMENTRADA.TItemPC.SQL.Clear;
           DMENTRADA.TItemPC.SQL.Add('select * from itenspedc where itenspedc.cod_pedcompra = :codigo');
           DMENTRADA.TItemPC.ParamByName('codigo').AsInteger := DMENTRADA.TPedC.FieldByname('cod_pedcomp').AsInteger;
           DMENTRADA.TItemPC.Open;

           // 05 - Insere ou edita os produtos no banco de exportação
           DMENTRADA.TItemPC.First;

           // INSERINDO TODOS OS PRODUTOS NO BANCO DE FORA
           While Not DMENTRADA.TItemPC.Eof do
           Begin
               XCOD_PRODUTO := 0;
               XCOD_SUBPRODUTO := 0;
               XCOD_AUX := 0;
               XCOD_ESTOQUE := 0;
               XCOD_GRUPO := 0;
               XCOD_SUBGRUPO := 0;
               XCOD_CST := 0;

               // seleciona os dados da tabela estoque que tenha o mesmo cod_estoque - banco local
               DMESTOQUE.TEstoque.Close;
               DMESTOQUE.TEstoque.SQL.Clear;
               DMESTOQUE.TEstoque.SQL.Add('select * from estoque where estoque.cod_estoque = :codigo');
               DMESTOQUE.TEstoque.ParamByName('codigo').AsInteger := DMENTRADA.TItemPC.FieldByname('cod_estoque').AsInteger;
               DMESTOQUE.TEstoque.Open;

               // seleciona dados da tabela subproduto que tenha o mesmo codigo de subproduto que a tabela estoque - banco local
               DMESTOQUE.TSubProd.Close;
               DMESTOQUE.TSubProd.SQL.Clear;
               DMESTOQUE.TSubProd.SQL.Add('select * from subproduto where subproduto.cod_subproduto = :codigo');
               DMESTOQUE.TSubProd.ParamByName('codigo').AsInteger := DMESTOQUE.TEstoque.FieldByname('cod_subprod').AsInteger;
               DMESTOQUE.TSubProd.Open;

               // verifica se no banco de fora existe o mesmo subproduto
               DMEXPORTA.TSubProd.Close;
               DMEXPORTA.TSubProd.SQL.Clear;
               DMEXPORTA.TSubProd.SQL.Add('select * from subproduto');
               DMEXPORTA.TSubProd.SQL.Add('WHERE subproduto.CONTRINT = :codigo');
               DMEXPORTA.TSubProd.ParamByName('CODIGO').AsString := DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString;
               DMEXPORTA.TSubProd.Open;

               // seleciona todos os dados da tabela estoque que tenha o mesmo codigo de subproduto
               DMEXPORTA.TEstoque.Close;
               DMEXPORTA.TEstoque.SQL.Clear;
               DMEXPORTA.TEstoque.SQL.Add('select * from estoque where estoque.cod_subprod = :codigo ');
               DMEXPORTA.TEstoque.ParamByName('codigo').AsString := DMEXPORTA.TSubProd.FieldByName('cod_subproduto').AsString;
               DMEXPORTA.TEstoque.Open;

               Try
                   // se o banco que for receber as exportações nao possuir o subproduto atual, o mesmo eh cadastrado
                   If DMEXPORTA.TSubProd.IsEmpty
                   Then Begin
                       DMEXPORTA.TSubProd.Close;
                       DMEXPORTA.TSubProd.SQL.Clear;
                       DMEXPORTA.TSubProd.SQL.Add('insert into SUBPRODUTO');
                       DMEXPORTA.TSubProd.SQL.Add('(COD_SUBPRODUTO, CODCOMPOSTO, DESCRICAO, CODBARRA, CODPRODFABR, FABRICANTE,');
                       DMEXPORTA.TSubProd.SQL.Add('MARCA, QUANTGARANTIA, TIPOGARANTIA, LOCALESTANTE, ATIVO, IPIPROD, PESOLIQ,');
                       DMEXPORTA.TSubProd.SQL.Add('PESOBRUTO, COD_PRODUTO, COD_INTERNO, MOTIVO, QTDATC, EMBPROD, LOTE,');
                       DMEXPORTA.TSubProd.SQL.Add('PENEIRA, GERMI, PUREZA, ATESTVAL, ATESTGAR, SAFRA, COD_UNIDCOMPRA, COD_UNIDVENDA,');
                       DMEXPORTA.TSubProd.SQL.Add('COD_CST, DTCAD, CODEAN1, CONTRINT, COR, CLASSIFICACAO, DESCCUPOM, NCM,');
                       DMEXPORTA.TSubProd.SQL.Add('OBSFISCAL, COMPOSICAO, ALTURA, LARGURA, ESPECIFICACAO, MARK, BALANCA,');
                       DMEXPORTA.TSubProd.SQL.Add('ANVISA, MINSAUDE)');
                       DMEXPORTA.TSubProd.SQL.Add('values');
                       DMEXPORTA.TSubProd.SQL.Add('(:COD_SUBPRODUTO, :CODCOMPOSTO, :DESCRICAO, :CODBARRA, :CODPRODFABR,');
                       DMEXPORTA.TSubProd.SQL.Add(':FABRICANTE, :MARCA, :QUANTGARANTIA, :TIPOGARANTIA, :LOCALESTANTE, :ATIVO,');
                       DMEXPORTA.TSubProd.SQL.Add(':IPIPROD, :PESOLIQ, :PESOBRUTO, :COD_PRODUTO, :COD_INTERNO, :MOTIVO,');
                       DMEXPORTA.TSubProd.SQL.Add(':QTDATC, :EMBPROD, :LOTE, :PENEIRA, :GERMI, :PUREZA, :ATESTVAL, :ATESTGAR,');
                       DMEXPORTA.TSubProd.SQL.Add(':SAFRA, :COD_UNIDCOMPRA, :COD_UNIDVENDA, :COD_CST, :DTCAD, :CODEAN1,');
                       DMEXPORTA.TSubProd.SQL.Add(':CONTRINT, :COR, :CLASSIFICACAO, :DESCCUPOM, :NCM, :OBSFISCAL, :COMPOSICAO,');
                       DMEXPORTA.TSubProd.SQL.Add(':ALTURA, :LARGURA, :ESPECIFICACAO, :MARK, :BALANCA, :ANVISA, :MINSAUDE)');

                       DMEXPORTA.TSubProd.ParamByName('cod_subproduto').AsInteger := RetornaChaveTabelaexortacao('SUBPRODUTO');
                       XCOD_SUBPRODUTO := DMEXPORTA.TSubProd.ParamByName('cod_subproduto').AsInteger;
                       DMEXPORTA.TEstoque.Close;
                       DMEXPORTA.TEstoque.SQL.Clear;
                       DMEXPORTA.TEstoque.SQL.Add('insert into ESTOQUE');
                       DMEXPORTA.TEstoque.SQL.Add('(COD_ESTOQUE, COD_LOJA, COD_SUBPROD, ULTCOMPRA, ULTVENDA, ESTMAX, ESTMIN,');
                       DMEXPORTA.TEstoque.SQL.Add('ICMS, FRETE, ESTFISICO, ESTRESERV, ESTPED, ESTSALDO, CVVPROAT, CVPPROAT,');
                       DMEXPORTA.TEstoque.SQL.Add('CVVPROVAR, CVPPROVAR, VENDATAP, VENDATAV, VENDVARP, VENDVARV, VALUNIT,');
                       DMEXPORTA.TEstoque.SQL.Add('VALREP, VALCUSTO, AVVPROAT, AVPPROAT, AVVPROVAR, AVPPROVAR, LUCRATIVIDADE,');
                       DMEXPORTA.TEstoque.SQL.Add('COEFDIV, VALOREST, OUTROS, QUANT2, DTCAD, ESTINI, VALCUSDESP, ESTANTCONT,');
                       DMEXPORTA.TEstoque.SQL.Add('CONTAGEM, ESTSIMULADO, VLRUNITCOMP, INDICE, BONIFICACAO, VLRBONIFIC,');
                       DMEXPORTA.TEstoque.SQL.Add('DESCONTO, CLNC, MOD, IMPEXP, IMPREND, CONTSOC, COFINS, PIS, MARGEMSEG,');
                       DMEXPORTA.TEstoque.SQL.Add('PERCMARGSEG, REDUCBASE, VLRCOMPSD, ACRECIMO, ESTCALC, DATAATU, HORAATU,');
                       DMEXPORTA.TEstoque.SQL.Add('PRECOOFERTA, DATAOFERTA, VENCIMENTOOFERTA)');
                       DMEXPORTA.TEstoque.SQL.Add('values');
                       DMEXPORTA.TEstoque.SQL.Add('(:COD_ESTOQUE, :COD_LOJA, :COD_SUBPROD, :ULTCOMPRA, :ULTVENDA, :ESTMAX,');
                       DMEXPORTA.TEstoque.SQL.Add(':ESTMIN, :ICMS, :FRETE, :ESTFISICO, :ESTRESERV, :ESTPED, :ESTSALDO,');
                       DMEXPORTA.TEstoque.SQL.Add(':CVVPROAT, :CVPPROAT, :CVVPROVAR, :CVPPROVAR, :VENDATAP, :VENDATAV,');
                       DMEXPORTA.TEstoque.SQL.Add(':VENDVARP, :VENDVARV, :VALUNIT, :VALREP, :VALCUSTO, :AVVPROAT, :AVPPROAT,');
                       DMEXPORTA.TEstoque.SQL.Add(':AVVPROVAR, :AVPPROVAR, :LUCRATIVIDADE, :COEFDIV, :VALOREST, :OUTROS,');
                       DMEXPORTA.TEstoque.SQL.Add(':QUANT2, :DTCAD, :ESTINI, :VALCUSDESP, :ESTANTCONT, :CONTAGEM, :ESTSIMULADO,');
                       DMEXPORTA.TEstoque.SQL.Add(':VLRUNITCOMP, :INDICE, :BONIFICACAO, :VLRBONIFIC, :DESCONTO, :CLNC,');
                       DMEXPORTA.TEstoque.SQL.Add(':MOD, :IMPEXP, :IMPREND, :CONTSOC, :COFINS, :PIS, :MARGEMSEG, :PERCMARGSEG,');
                       DMEXPORTA.TEstoque.SQL.Add(':REDUCBASE, :VLRCOMPSD, :ACRECIMO, :ESTCALC, :DATAATU, :HORAATU, :PRECOOFERTA,');
                       DMEXPORTA.TEstoque.SQL.Add(':DATAOFERTA, :VENCIMENTOOFERTA)');
                       DMEXPORTA.TEstoque.ParamByName('cod_estoque').AsInteger := RetornaChaveTabelaexortacao('ESTOQUE');
                       XCOD_ESTOQUE := DMEXPORTA.TEstoque.ParamByName('cod_estoque').AsInteger;
                   End
                   Else Begin
                       XCOD_SUBPRODUTO := DMEXPORTA.TSubProd.FieldByname('cod_subproduto').AsInteger;
                       DMEXPORTA.TSubProd.Close;
                       DMEXPORTA.TSubProd.SQL.Clear;
                       DMEXPORTA.TSubProd.SQL.Add('update SUBPRODUTO set');
                       DMEXPORTA.TSubProd.SQL.Add('CODCOMPOSTO = :CODCOMPOSTO, DESCRICAO = :DESCRICAO, CODBARRA = :CODBARRA,');
                        DMEXPORTA.TSubProd.SQL.Add('CODPRODFABR = :CODPRODFABR, FABRICANTE = :FABRICANTE, MARCA = :MARCA, QUANTGARANTIA = :QUANTGARANTIA, TIPOGARANTIA = :TIPOGARANTIA, LOCALESTANTE = :LOCALESTANTE, ATIVO = :ATIVO, IPIPROD = :IPIPROD,');
                        DMEXPORTA.TSubProd.SQL.Add('PESOLIQ = :PESOLIQ, PESOBRUTO = :PESOBRUTO, COD_PRODUTO = :COD_PRODUTO, COD_INTERNO = :COD_INTERNO, MOTIVO = :MOTIVO,');
                        DMEXPORTA.TSubProd.SQL.Add('QTDATC = :QTDATC, EMBPROD = :EMBPROD, LOTE = :LOTE, PENEIRA = :PENEIRA, GERMI = :GERMI, PUREZA = :PUREZA, ATESTVAL = :ATESTVAL,');
                        DMEXPORTA.TSubProd.SQL.Add('ATESTGAR = :ATESTGAR, SAFRA = :SAFRA, COD_UNIDCOMPRA = :COD_UNIDCOMPRA, COD_UNIDVENDA = :COD_UNIDVENDA, COD_CST = :COD_CST, DTCAD = :DTCAD, CODEAN1 = :CODEAN1, CONTRINT = :CONTRINT, COR = :COR,');
                        DMEXPORTA.TSubProd.SQL.Add('CLASSIFICACAO = :CLASSIFICACAO, DESCCUPOM = :DESCCUPOM, NCM = :NCM, OBSFISCAL = :OBSFISCAL, COMPOSICAO = :COMPOSICAO, ALTURA = :ALTURA,');
                        DMEXPORTA.TSubProd.SQL.Add('LARGURA = :LARGURA, ESPECIFICACAO = :ESPECIFICACAO, MARK = :MARK, BALANCA = :BALANCA, ANVISA = :ANVISA, MINSAUDE = :MINSAUDE');
                        DMEXPORTA.TSubProd.SQL.Add('where COD_SUBPRODUTO = :OLD_COD_SUBPRODUTO');
                        DMEXPORTA.TSubProd.ParamByName('OLD_COD_SUBPRODUTO').AsInteger := XCOD_SUBPRODUTO;
                        XCOD_ESTOQUE := DMEXPORTA.TEstoque.FieldByname('cod_estoque').AsInteger;
                        DMEXPORTA.TEstoque.Close;
                        DMEXPORTA.TEstoque.SQL.Clear;
                        DMEXPORTA.TEstoque.SQL.Add('update ESTOQUE set');
                        DMEXPORTA.TEstoque.SQL.Add('COD_LOJA = :COD_LOJA, COD_SUBPROD = :COD_SUBPROD,');
                        DMEXPORTA.TEstoque.SQL.Add('ULTCOMPRA = :ULTCOMPRA, ULTVENDA = :ULTVENDA, ESTMAX = :ESTMAX,');
                        DMEXPORTA.TEstoque.SQL.Add('ESTMIN = :ESTMIN, ICMS = :ICMS, FRETE = :FRETE, ESTFISICO = :ESTFISICO,');
                        DMEXPORTA.TEstoque.SQL.Add('ESTRESERV = :ESTRESERV, ESTPED = :ESTPED,');
                        DMEXPORTA.TEstoque.SQL.Add('ESTSALDO = :ESTSALDO, CVVPROAT = :CVVPROAT, CVPPROAT = :CVPPROAT,');
                        DMEXPORTA.TEstoque.SQL.Add('CVVPROVAR = :CVVPROVAR, CVPPROVAR = :CVPPROVAR,');
                        DMEXPORTA.TEstoque.SQL.Add('VENDATAP = :VENDATAP, VENDATAV = :VENDATAV,');
                        DMEXPORTA.TEstoque.SQL.Add('VENDVARP = :VENDVARP, VENDVARV = :VENDVARV,');
                        DMEXPORTA.TEstoque.SQL.Add('VALUNIT = :VALUNIT, VALREP = :VALREP, VALCUSTO = :VALCUSTO, AVVPROAT = :AVVPROAT,');
                        DMEXPORTA.TEstoque.SQL.Add('AVPPROAT = :AVPPROAT, AVVPROVAR = :AVVPROVAR, AVPPROVAR = :AVPPROVAR,');
                        DMEXPORTA.TEstoque.SQL.Add('LUCRATIVIDADE = :LUCRATIVIDADE, COEFDIV = :COEFDIV, VALOREST = :VALOREST,');
                        DMEXPORTA.TEstoque.SQL.Add('OUTROS = :OUTROS, QUANT2 = :QUANT2, DTCAD = :DTCAD, ESTINI = :ESTINI,');
                        DMEXPORTA.TEstoque.SQL.Add('VALCUSDESP = :VALCUSDESP, ESTANTCONT = :ESTANTCONT, CONTAGEM = :CONTAGEM,');
                        DMEXPORTA.TEstoque.SQL.Add('ESTSIMULADO = :ESTSIMULADO, VLRUNITCOMP = :VLRUNITCOMP, INDICE = :INDICE,');
                        DMEXPORTA.TEstoque.SQL.Add('BONIFICACAO = :BONIFICACAO, VLRBONIFIC = :VLRBONIFIC, DESCONTO = :DESCONTO,');
                        DMEXPORTA.TEstoque.SQL.Add('CLNC = :CLNC, MOD = :MOD, IMPEXP = :IMPEXP,');
                        DMEXPORTA.TEstoque.SQL.Add('IMPREND = :IMPREND, CONTSOC = :CONTSOC, COFINS = :COFINS, PIS = :PIS,');
                        DMEXPORTA.TEstoque.SQL.Add('MARGEMSEG = :MARGEMSEG, PERCMARGSEG = :PERCMARGSEG, REDUCBASE = :REDUCBASE,');
                        DMEXPORTA.TEstoque.SQL.Add('VLRCOMPSD = :VLRCOMPSD, ACRECIMO = :ACRECIMO, ESTCALC = :ESTCALC,');
                        DMEXPORTA.TEstoque.SQL.Add('DATAATU = :DATAATU, HORAATU = :HORAATU, PRECOOFERTA = :PRECOOFERTA,');
                        DMEXPORTA.TEstoque.SQL.Add('DATAOFERTA = :DATAOFERTA,VENCIMENTOOFERTA = :VENCIMENTOOFERTA');
                        DMEXPORTA.TEstoque.SQL.Add('where COD_ESTOQUE = :OLD_COD_ESTOQUE');
                        DMEXPORTA.TEstoque.ParamByName('OLD_COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
                   End;

                   // seleciona dados da tabela produto que tenha o mesmo codigo que a tabela subproduto - banco local
                   DMESTOQUE.TProduto.Close;
                   DMESTOQUE.TProduto.SQL.Clear;
                   DMESTOQUE.TProduto.SQL.Add('select * from produto where produto.cod_produto = :codigo');
                   DMESTOQUE.TProduto.ParamByName('codigo').AsInteger := DMESTOQUE.TSubProd.FieldByname('cod_produto').AsInteger;
                   DMESTOQUE.TProduto.Open;

                   // seleciona o produto que tenha a mesma descricao que o banco local - banco de fora
                   DMEXPORTA.TProduto.Close;
                   DMEXPORTA.TProduto.SQL.Clear;
                   DMEXPORTA.TProduto.SQL.Add('select * from produto where (upper(produto.descricao) = upper(' + #39 + DMESTOQUE.TProduto.FieldByName('descricao').AsString + #39 + '))');
                   DMEXPORTA.TProduto.Open;

                   If DMEXPORTA.TProduto.IsEmpty
                   Then Begin
                       DMEXPORTA.TProduto.Close;
                       DMEXPORTA.TProduto.SQL.Clear;
                       DMEXPORTA.TProduto.SQL.Add('insert into PRODUTO');
                       DMEXPORTA.TProduto.SQL.Add('(COD_PRODUTO, COD_INTERNO, DESCRICAO, APLICACAO, COD_SUBGRUPOPROD, COD_GRUPOPROD,');
                       DMEXPORTA.TProduto.SQL.Add('COD_CST, COD_LOJA, VENDVISTA, VENDPRAZO, CUSTOVENDA, COMPVISTA, COMPPRAZO,');
                       DMEXPORTA.TProduto.SQL.Add('QTDCOMP, QTDVEND)');
                       DMEXPORTA.TProduto.SQL.Add('values');
                       DMEXPORTA.TProduto.SQL.Add('(:COD_PRODUTO, :COD_INTERNO, :DESCRICAO, :APLICACAO, :COD_SUBGRUPOPROD,');
                       DMEXPORTA.TProduto.SQL.Add(':COD_GRUPOPROD, :COD_CST, :COD_LOJA, :VENDVISTA, :VENDPRAZO, :CUSTOVENDA,');
                       DMEXPORTA.TProduto.SQL.Add(':COMPVISTA, :COMPPRAZO, :QTDCOMP, :QTDVEND)');
                       DMEXPORTA.TProduto.ParamByName('cod_produto').AsInteger := RetornaChaveTabelaexortacao('PRODUTO');
                       XCOD_PRODUTO := DMEXPORTA.TProduto.ParamByName('cod_produto').AsInteger;
                   End
                   Else Begin
                       XCOD_PRODUTO := DMEXPORTA.TProduto.FieldByname('cod_produto').AsInteger;
                       DMEXPORTA.TProduto.Close;
                       DMEXPORTA.TProduto.SQL.Clear;
                       DMEXPORTA.TProduto.SQL.Add('update PRODUTO set');
                       DMEXPORTA.TProduto.SQL.Add('COD_INTERNO = :COD_INTERNO, DESCRICAO = :DESCRICAO, APLICACAO = :APLICACAO, COD_SUBGRUPOPROD = :COD_SUBGRUPOPROD,');
                       DMEXPORTA.TProduto.SQL.Add('COD_GRUPOPROD = :COD_GRUPOPROD, COD_CST = :COD_CST, COD_LOJA = :COD_LOJA,VENDVISTA = :VENDVISTA,');
                       DMEXPORTA.TProduto.SQL.Add('VENDPRAZO = :VENDPRAZO,CUSTOVENDA = :CUSTOVENDA,COMPVISTA = :COMPVISTA,COMPPRAZO = :COMPPRAZO,QTDCOMP = :QTDCOMP,QTDVEND = :QTDVEND');
                       DMEXPORTA.TProduto.SQL.Add('where COD_PRODUTO = :OLD_COD_PRODUTO');

                       DMEXPORTA.TProduto.ParamByName('OLD_COD_PRODUTO').AsInteger := XCOD_PRODUTO;
                   End;

                   // seleciona dados da tabela grupoprod que tenha o mesmo codigo que a tabela produto
                   DMESTOQUE.TGrupo.Close;
                   DMESTOQUE.TGrupo.SQL.Clear;
                   DMESTOQUE.TGrupo.SQL.Add('select * from grupoprod where grupoprod.cod_grupoprod = :codigo');
                   DMESTOQUE.TGrupo.ParamByName('codigo').AsInteger := DMESTOQUE.TProduto.FieldByName('cod_grupoprod').AsInteger;
                   DMESTOQUE.TGrupo.Open;

                   // seleciona dados da tabela grupoprod do banco de fora que tenha a mesma descricao
                   DMEXPORTA.TGrupo.Close;
                   DMEXPORTA.TGrupo.SQL.Clear;
                   DMEXPORTA.TGrupo.SQL.Add('select * from grupoprod where (upper(grupoprod.descricao) = upper(' + #39 + DMESTOQUE.TGrupo.FieldByName('descricao').AsString + #39 + '))');
                   DMEXPORTA.TGrupo.Open;

                   If DMEXPORTA.TGrupo.IsEmpty
                   Then Begin
                       DMEXPORTA.TGrupo.Close;
                       DMEXPORTA.TGrupo.SQL.Clear;
                       DMEXPORTA.TGrupo.SQL.Add('insert into GRUPOPROD');
                       DMEXPORTA.TGrupo.SQL.Add('(COD_GRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
                       DMEXPORTA.TGrupo.SQL.Add('values');
                       DMEXPORTA.TGrupo.SQL.Add('(:COD_GRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');
                       DMEXPORTA.TGrupo.ParamByName('cod_grupoprod').AsInteger := RetornaChaveTabelaexortacao('GRUPOPROD');
                       XCOD_GRUPO := DMEXPORTA.TGrupo.ParamByName('cod_grupoprod').AsInteger;
                   End
                   Else Begin
                       XCOD_GRUPO := DMEXPORTA.TGrupo.FieldByname('cod_grupoprod').AsInteger;
                       DMEXPORTA.TGrupo.Close;
                       DMEXPORTA.TGrupo.SQL.Clear;
                       DMEXPORTA.TGrupo.SQL.Add('update GRUPOPROD set DESCRICAO = :DESCRICAO, COD_INTERNO = :COD_INTERNO, TIPO = :TIPO');
                       DMEXPORTA.TGrupo.SQL.Add('where COD_GRUPOPROD = :OLD_COD_GRUPOPROD');

                       DMEXPORTA.TGrupo.ParamByName('OLD_COD_GRUPOPROD').AsInteger := XCOD_GRUPO;
                   End;

                   // grava na tabela grupoprod do banco de fora os novos dados
                   DMEXPORTA.TGrupo.ParamByName('cod_interno').AsString := DMESTOQUE.TGrupo.FieldByName('cod_interno').AsString;
                   DMEXPORTA.TGrupo.ParamByName('descricao').AsString := DMESTOQUE.TGrupo.FieldByName('descricao').AsString;
                   DMEXPORTA.TGrupo.ParamByName('tipo').AsString := DMESTOQUE.TGrupo.FieldByName('tipo').AsString;
                   DMEXPORTA.TGrupo.ExecSQL;

                   // seleciona no banco de dados local os dados da tabela subgrupoprod
                   DMESTOQUE.TSubgru.Close;
                   DMESTOQUE.TSubgru.SQL.Clear;
                   DMESTOQUE.TSubgru.SQL.Add('select * from subgrupoprod where subgrupoprod.cod_subgrupoprod = :codigo');
                   DMESTOQUE.TSubgru.ParamByName('codigo').AsInteger := DMESTOQUE.TProduto.FieldByname('cod_subgrupoprod').AsInteger;
                   DMESTOQUE.TSubgru.Open;

                   // seleciona dados da tabela subgrupoprod do banco de fora que tenha a mesma descricao
                   DMEXPORTA.TSubgru.Close;
                   DMEXPORTA.TSubgru.SQL.Clear;
                   DMEXPORTA.TSubgru.SQL.Add('select * from subgrupoprod where (upper(subgrupoprod.descricao) = upper(' + #39 + DMESTOQUE.TSubgru.FieldByName('descricao').AsString + #39 + '))');
                   DMEXPORTA.TSubgru.Open;

                   If DMEXPORTA.TSubgru.IsEmpty
                   Then Begin
                       DMEXPORTA.TSubgru.Close;
                       DMEXPORTA.TSubgru.SQL.Clear;
                       DMEXPORTA.TSubgru.SQL.Add('insert into SUBGRUPOPROD');
                       DMEXPORTA.TSubgru.SQL.Add('(COD_SUBGRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
                       DMEXPORTA.TSubgru.SQL.Add('values');
                       DMEXPORTA.TSubgru.SQL.Add('(:COD_SUBGRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');
                       DMEXPORTA.TSubgru.ParamByName('cod_subgrupoprod').AsInteger := RetornaChaveTabelaexortacao('SUBGRUPOPROD');
                       XCOD_SUBGRUPO := DMEXPORTA.TSubgru.ParamByName('cod_subgrupoprod').AsInteger;
                   End
                   Else Begin
                       XCOD_SUBGRUPO := DMEXPORTA.TSubgru.FieldByName('cod_subgrupoprod').AsInteger;

                       DMEXPORTA.TSubgru.Close;
                       DMEXPORTA.TSubgru.SQL.Clear;
                       DMEXPORTA.TSubgru.SQL.Add('update SUBGRUPOPROD set DESCRICAO = :DESCRICAO, COD_INTERNO = :COD_INTERNO, TIPO = :TIPO');
                       DMEXPORTA.TSubgru.SQL.Add('where COD_SUBGRUPOPROD = :OLD_COD_SUBGRUPOPROD');

                       DMEXPORTA.TSubgru.ParamByName('OLD_COD_SUBGRUPOPROD').AsInteger := XCOD_SUBGRUPO;
                   End;

                   DMEXPORTA.TSubgru.ParamByName('descricao').AsString := DMESTOQUE.TSubgru.FieldByname('descricao').AsString;
                   DMEXPORTA.TSubgru.ParamByName('cod_interno').AsString := DMESTOQUE.TSubgru.FieldByname('cod_interno').AsString;
                   DMEXPORTA.TSubgru.ParamByName('tipo').AsString := DMESTOQUE.TSubgru.FieldByname('tipo').AsString;
                   DMEXPORTA.TSubgru.ExecSQL;

                   // seleciona dados da tabela cst local que tenha o mesmo codigo que o subproduto
                   DMESTOQUE.TCST.Close;
                   DMESTOQUE.TCST.SQL.Clear;
                   DMESTOQUE.TCST.SQL.Add('select * from cst where cst.cod_cst = :codigo');
                   DMESTOQUE.TCST.ParamByName('codigo').AsInteger := DMESTOQUE.TSubProd.FieldByName('cod_cst').AsInteger;
                   DMESTOQUE.TCST.Open;

                   // seleciona no banco de fora o CST que tenha a Mesma cod_sit_trib
                   DMEXPORTA.TCst.Close;
                   DMEXPORTA.TCst.SQL.Clear;
                   DMEXPORTA.TCst.SQL.Add('select * from cst where (upper(cst.cod_sit_trib) = upper(' +#39 + DMESTOQUE.TCST.FieldByname('cod_sit_trib').AsString + #39 + '))');
                   DMEXPORTA.TCst.Open;

                   If DMEXPORTA.TCst.IsEmpty
                   Then Begin
                       DMEXPORTA.TCst.Close;
                       DMEXPORTA.TCst.SQL.Clear;
                       DMEXPORTA.TCst.SQL.Add('insert into CST (COD_CST, DESCRICAO, COD_SIT_TRIB, INDICEECF) values (:COD_CST, :DESCRICAO, :COD_SIT_TRIB, :INDICEECF)');
                       DMEXPORTA.TCst.ParamByName('cod_cst').AsInteger := RetornaChaveTabelaexortacao('CST');
                       XCOD_CST := DMEXPORTA.TCst.ParamByName('cod_cst').AsInteger;
                    End
                    Else Begin
                       XCOD_CST := DMEXPORTA.TCst.FieldByName('cod_CST').AsInteger;

                       DMEXPORTA.TCst.Close;
                       DMEXPORTA.TCst.SQL.Clear;
                       DMEXPORTA.TCst.SQL.Add('update CST set DESCRICAO = :DESCRICAO, COD_SIT_TRIB = :COD_SIT_TRIB, INDICEECF = :INDICEECF');
                       DMEXPORTA.TCst.SQL.Add('where COD_CST = :OLD_COD_CST');
                       DMEXPORTA.TCst.ParamByName('OLD_COD_CST').AsInteger := XCOD_CST;
                    End;

                   DMEXPORTA.TCst.ParamByName('cod_sit_trib').AsString := DMESTOQUE.TCST.FieldByname('cod_sit_trib').AsString;
                   DMEXPORTA.TCst.ParamByName('descricao').AsString := DMESTOQUE.TCST.FieldByname('descricao').AsString;
                   DMEXPORTA.TCst.ParamByName('INDICEECF').AsString := DMESTOQUE.TCST.FieldByname('INDICEECF').AsString;
                   DMEXPORTA.TCst.ExecSQL;
                   DMEXPORTA.TProduto.ParamByName('APLICACAO').AsString := DMESTOQUE.TProduto.FieldByName('APLICACAO').AsString;
                   DMEXPORTA.TProduto.ParamByName('COD_CST').AsInteger := XCOD_CST;
                   DMEXPORTA.TProduto.ParamByName('COD_GRUPOPROD').AsInteger := XCOD_GRUPO;
                   DMEXPORTA.TProduto.ParamByName('COD_INTERNO').AsString := DMESTOQUE.TProduto.FieldByName('COD_INTERNO').AsString;
                   DMEXPORTA.TProduto.ParamByName('COD_LOJA').AsInteger := DMESTOQUE.TProduto.FieldByName('COD_LOJA').AsInteger;
                   DMEXPORTA.TProduto.ParamByName('COD_SUBGRUPOPROD').AsInteger := XCOD_SUBGRUPO;
                   DMEXPORTA.TProduto.ParamByName('COMPPRAZO').AsCurrency := DMESTOQUE.TProduto.FieldByName('COMPPRAZO').AsCurrency;
                   DMEXPORTA.TProduto.ParamByName('COMPVISTA').AsCurrency := DMESTOQUE.TProduto.FieldByName('COMPVISTA').AsCurrency;
                   DMEXPORTA.TProduto.ParamByName('CUSTOVENDA').AsCurrency := DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency;
                   DMEXPORTA.TProduto.ParamByName('DESCRICAO').AsString := DMESTOQUE.TProduto.FieldByName('DESCRICAO').AsString;
                   DMEXPORTA.TProduto.ParamByName('QTDCOMP').AsCurrency := DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsCurrency;
                   DMEXPORTA.TProduto.ParamByName('QTDVEND').AsCurrency := DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency;
                   DMEXPORTA.TProduto.ParamByName('VENDPRAZO').AsCurrency := DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency;
                   DMEXPORTA.TProduto.ParamByName('VENDVISTA').AsCurrency := DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency;
                   DMEXPORTA.TProduto.ExecSQL;


                   if XCOD_CST <> DMESTOQUE.TSubProd.FieldByName('cod_cst').AsInteger
                   then begin
                         // seleciona dados da tabela cst local que tenha o mesmo codigo que o subproduto
                         DMESTOQUE.TCST.Close;
                         DMESTOQUE.TCST.SQL.Clear;
                         DMESTOQUE.TCST.SQL.Add('select * from cst where cst.cod_cst = :codigo');
                         DMESTOQUE.TCST.ParamByName('codigo').AsInteger := DMESTOQUE.TSubProd.FieldByName('cod_cst').AsInteger;
                         DMESTOQUE.TCST.Open;

                         // seleciona no banco de fora o CST que tenha a Mesma cod_sit_trib
                         DMEXPORTA.TCst.Close;
                         DMEXPORTA.TCst.SQL.Clear;
                         DMEXPORTA.TCst.SQL.Add('select * from cst where (upper(cst.cod_sit_trib) = upper(' +#39 + DMESTOQUE.TCST.FieldByname('cod_sit_trib').AsString + #39 + '))');
                         DMEXPORTA.TCst.Open;

                         If DMEXPORTA.TCst.IsEmpty
                         Then Begin
                             DMEXPORTA.TCst.Close;
                             DMEXPORTA.TCst.SQL.Clear;
                             DMEXPORTA.TCst.SQL.Add('insert into CST (COD_CST, DESCRICAO, COD_SIT_TRIB, INDICEECF) values (:COD_CST, :DESCRICAO, :COD_SIT_TRIB, :INDICEECF)');
                             DMEXPORTA.TCst.ParamByName('cod_cst').AsInteger := RetornaChaveTabelaexortacao('CST');
                             XCOD_CST := DMEXPORTA.TCst.ParamByName('cod_cst').AsInteger;
                          End
                          Else Begin
                             XCOD_CST := DMEXPORTA.TCst.FieldByName('cod_CST').AsInteger;
                             DMEXPORTA.TCst.Close;
                             DMEXPORTA.TCst.SQL.Clear;
                             DMEXPORTA.TCst.SQL.Add('update CST set DESCRICAO = :DESCRICAO, COD_SIT_TRIB = :COD_SIT_TRIB, INDICEECF = :INDICEECF');
                             DMEXPORTA.TCst.SQL.Add('where COD_CST = :OLD_COD_CST');
                             DMEXPORTA.TCst.ParamByName('OLD_COD_CST').AsInteger := XCOD_CST;

                          End;
                         DMEXPORTA.TCst.ParamByName('cod_sit_trib').AsString := DMESTOQUE.TCST.FieldByname('cod_sit_trib').AsString;
                         DMEXPORTA.TCst.ParamByName('descricao').AsString := DMESTOQUE.TCST.FieldByname('descricao').AsString;
                         DMEXPORTA.TCst.ParamByName('INDICEECF').AsString := DMESTOQUE.TCST.FieldByname('INDICEECF').AsString;
                         DMEXPORTA.TCst.ExecSQL;
                   end;
                   DMEXPORTA.TSubProd.ParamByName('COD_CST').AsInteger := XCOD_CST;
                   DMEXPORTA.TSubProd.ParamByName('cod_produto').AsInteger := XCOD_PRODUTO;
                   DMEXPORTA.TSubProd.ParamByName('ALTURA').AsString := DMESTOQUE.TSubProd.FieldByName('ALTURA').AsString;
                   DMEXPORTA.TSubProd.ParamByName('ANVISA').AsString := DMESTOQUE.TSubProd.FieldByName('ANVISA').AsString;
                   DMEXPORTA.TSubProd.ParamByName('ATESTGAR').AsString := DMESTOQUE.TSubProd.FieldByName('ATESTGAR').AsString;
                   DMEXPORTA.TSubProd.ParamByName('ATESTVAL').AsString := DMESTOQUE.TSubProd.FieldByName('ATESTVAL').AsString;
                   DMEXPORTA.TSubProd.ParamByName('ATIVO').AsString := DMESTOQUE.TSubProd.FieldByName('ATIVO').AsString;
                   DMEXPORTA.TSubProd.ParamByName('BALANCA').AsString := DMESTOQUE.TSubProd.FieldByName('BALANCA').AsString;
                   DMEXPORTA.TSubProd.ParamByName('CLASSIFICACAO').AsString := DMESTOQUE.TSubProd.FieldByName('CLASSIFICACAO').AsString;
                   DMEXPORTA.TSubProd.ParamByName('CODBARRA').AsString := DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString;
                   DMEXPORTA.TSubProd.ParamByName('CODCOMPOSTO').AsString := DMESTOQUE.TSubProd.FieldByName('CODCOMPOSTO').AsString;
                   DMEXPORTA.TSubProd.ParamByName('CODEAN1').AsString := DMESTOQUE.TSubProd.FieldByName('CODEAN1').AsString;
                   DMEXPORTA.TSubProd.ParamByName('CODPRODFABR').AsString := DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString;
                   DMEXPORTA.TSubProd.ParamByName('COD_INTERNO').AsString := DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString;
                   //ALEX - 17/03/2009: O Sistema estava dupliando as unidades por isso as mesmas saiam duplicadas em comprovantes e nas ordens por isso o trecho abaixo foi comentado
                   //ALEX - 17/03/2009: Apos comentar o trecho abaixo as duas linhas de codigo foram inseridas pegando diretamente o codigo
                   DMEXPORTA.TSubProd.ParamByName('COD_UNIDCOMPRA').AsInteger := DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsInteger;
                   DMEXPORTA.TSubProd.ParamByName('COD_UNIDVENDA').AsInteger := DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger;
                   DMEXPORTA.TSubProd.ParamByName('COMPOSICAO').AsString := DMESTOQUE.TSubProd.FieldByName('COMPOSICAO').AsString;
                   DMEXPORTA.TSubProd.ParamByName('CONTRINT').AsString := DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString;
                   DMEXPORTA.TSubProd.ParamByName('COR').AsString := DMESTOQUE.TSubProd.FieldByName('COR').AsString;
                   DMEXPORTA.TSubProd.ParamByName('DESCCUPOM').AsString := DMESTOQUE.TSubProd.FieldByName('DESCCUPOM').AsString;
                   DMEXPORTA.TSubProd.ParamByName('DESCRICAO').AsString := DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString;
                   DMEXPORTA.TSubProd.ParamByName('DTCAD').AsDateTime := DMESTOQUE.TSubProd.FieldByName('DTCAD').AsDateTime;
                   DMEXPORTA.TSubProd.ParamByName('EMBPROD').AsCurrency := DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsCurrency;
                   DMEXPORTA.TSubProd.ParamByName('ESPECIFICACAO').AsString := DMESTOQUE.TSubProd.FieldByName('ESPECIFICACAO').AsString;
                   DMEXPORTA.TSubProd.ParamByName('FABRICANTE').AsString := DMESTOQUE.TSubProd.FieldByName('FABRICANTE').AsString;
                   DMEXPORTA.TSubProd.ParamByName('GERMI').AsCurrency := DMESTOQUE.TSubProd.FieldByName('GERMI').AsCurrency;
                   DMEXPORTA.TSubProd.ParamByName('IPIPROD').AsCurrency := DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsCurrency;
                   DMEXPORTA.TSubProd.ParamByName('LARGURA').AsString := DMESTOQUE.TSubProd.FieldByName('LARGURA').AsString;
                   DMEXPORTA.TSubProd.ParamByName('LOCALESTANTE').AsString := DMESTOQUE.TSubProd.FieldByName('LOCALESTANTE').AsString;
                   DMEXPORTA.TSubProd.ParamByName('LOTE').AsString := DMESTOQUE.TSubProd.FieldByName('LOTE').AsString;
                   DMEXPORTA.TSubProd.ParamByName('MARCA').AsString := DMESTOQUE.TSubProd.FieldByName('MARCA').AsString;
                   DMEXPORTA.TSubProd.ParamByName('MARK').AsString := DMESTOQUE.TSubProd.FieldByName('MARK').AsString;
                   DMEXPORTA.TSubProd.ParamByName('MINSAUDE').AsString := DMESTOQUE.TSubProd.FieldByName('MINSAUDE').AsString;
                   DMEXPORTA.TSubProd.ParamByName('MOTIVO').AsString := DMESTOQUE.TSubProd.FieldByName('MOTIVO').AsString;
                   DMEXPORTA.TSubProd.ParamByName('NCM').AsString := DMESTOQUE.TSubProd.FieldByName('NCM').AsString;
                   DMEXPORTA.TSubProd.ParamByName('OBSFISCAL').AsString := DMESTOQUE.TSubProd.FieldByName('OBSFISCAL').AsString;
                   DMEXPORTA.TSubProd.ParamByName('PENEIRA').AsString := DMESTOQUE.TSubProd.FieldByName('PENEIRA').AsString;
                   DMEXPORTA.TSubProd.ParamByName('PESOBRUTO').AsCurrency := DMESTOQUE.TSubProd.FieldByName('PESOBRUTO').AsCurrency;
                   DMEXPORTA.TSubProd.ParamByName('PESOLIQ').AsCurrency := DMESTOQUE.TSubProd.FieldByName('PESOLIQ').AsCurrency;
                   DMEXPORTA.TSubProd.ParamByName('PUREZA').AsCurrency := DMESTOQUE.TSubProd.FieldByName('PUREZA').AsCurrency;
                   DMEXPORTA.TSubProd.ParamByName('QTDATC').AsCurrency := DMESTOQUE.TSubProd.FieldByName('QTDATC').AsCurrency;
                   DMEXPORTA.TSubProd.ParamByName('QUANTGARANTIA').AsCurrency := DMESTOQUE.TSubProd.FieldByName('QUANTGARANTIA').AsCurrency;
                   DMEXPORTA.TSubProd.ParamByName('SAFRA').AsString := DMESTOQUE.TSubProd.FieldByName('SAFRA').AsString;
                   DMEXPORTA.TSubProd.ParamByName('TIPOGARANTIA').AsString := DMESTOQUE.TSubProd.FieldByName('TIPOGARANTIA').AsString;
                   Try
                   	DMEXPORTA.TSubProd.ExecSQL;
                       DMEXPORTA.IBTExporta.CommitRetaining;
                   Except
                   	MessageDlg('Falha: 1707', mtWarning, [mbOK], 0);
                       DMEXPORTA.IBTExporta.RollbackRetaining;
                   End;
                   // ATUALIZANDO TABELA ESTOQUE
                   DMEXPORTA.TEstoque.ParamByName('COD_LOJA').AsInteger := DMESTOQUE.TEstoque.FieldByName('COD_LOJA').AsInteger;
                   DMEXPORTA.TEstoque.ParamByName('COD_SUBPROD').AsInteger := XCOD_SUBPRODUTO;
                   DMEXPORTA.TEstoque.ParamByName('ULTCOMPRA').AsDateTime := DMESTOQUE.TEstoque.FieldByName('ULTCOMPRA').AsDateTime;
                   DMEXPORTA.TEstoque.ParamByName('ULTVENDA').AsDateTime := DMESTOQUE.TEstoque.FieldByName('ULTVENDA').AsDateTime;
                   DMEXPORTA.TEstoque.ParamByName('ESTMAX').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTMAX').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('ESTMIN').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTMIN').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('ICMS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('FRETE').AsCurrency := DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('ESTFISICO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('ESTRESERV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTRESERV').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('ESTPED').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTPED').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('ESTSALDO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTSALDO').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('CVVPROAT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('CVPPROAT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('CVVPROVAR').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('CVPPROVAR').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('VENDATAP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('VENDATAV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('VENDVARP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('VENDVARV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('VALUNIT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('VALREP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('VALCUSTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('AVVPROAT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('AVPPROAT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('AVVPROVAR').AsCurrency := DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('AVPPROVAR').AsCurrency := DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('LUCRATIVIDADE').AsCurrency := DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('COEFDIV').AsCurrency := DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('VALOREST').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('OUTROS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('QUANT2').AsCurrency := DMESTOQUE.TEstoque.FieldByName('QUANT2').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('DTCAD').AsDateTime := DMESTOQUE.TEstoque.FieldByName('DTCAD').AsDateTime;
                   DMEXPORTA.TEstoque.ParamByName('ESTINI').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTINI').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('VALCUSDESP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VALCUSDESP').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('ESTANTCONT').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTANTCONT').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('CONTAGEM').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CONTAGEM').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('ESTSIMULADO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTSIMULADO').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('VLRUNITCOMP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('INDICE').AsCurrency := DMESTOQUE.TEstoque.FieldByName('INDICE').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('BONIFICACAO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('VLRBONIFIC').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('DESCONTO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('CLNC').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CLNC').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('MOD').AsCurrency := DMESTOQUE.TEstoque.FieldByName('MOD').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('IMPEXP').AsCurrency := DMESTOQUE.TEstoque.FieldByName('IMPEXP').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('IMPREND').AsCurrency := DMESTOQUE.TEstoque.FieldByName('IMPREND').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('CONTSOC').AsCurrency := DMESTOQUE.TEstoque.FieldByName('CONTSOC').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('COFINS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('COFINS').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('PIS').AsCurrency := DMESTOQUE.TEstoque.FieldByName('PIS').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('MARGEMSEG').AsCurrency := DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('PERCMARGSEG').AsCurrency := DMESTOQUE.TEstoque.FieldByName('PERCMARGSEg').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('REDUCBASE').AsCurrency := DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('VLRCOMPSD').AsCurrency := DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('ACRECIMO').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('ESTCALC').AsCurrency := DMESTOQUE.TEstoque.FieldByName('ESTCALC').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('DATAATU').AsDateTime := DMESTOQUE.TEstoque.FieldByName('DATAATU').AsDateTime;
                   DMEXPORTA.TEstoque.ParamByName('HORAATU').AsDateTime := DMESTOQUE.TEstoque.FieldByName('HORAATU').AsDateTime;
                   DMEXPORTA.TEstoque.ParamByName('PRECOOFERTA').AsCurrency := DMESTOQUE.TEstoque.FieldByName('PRECOOFERTA').AsCurrency;
                   DMEXPORTA.TEstoque.ParamByName('DATAOFERTA').AsDateTime := DMESTOQUE.TEstoque.FieldByName('DATAOFERTA').AsDateTime;
                   DMEXPORTA.TEstoque.ParamByName('VENCIMENTOOFERTA').AsDateTime := DMESTOQUE.TEstoque.FieldByName('VENCIMENTOOFERTA').AsDateTime;
                   Try
                   	DMEXPORTA.TEstoque.ExecSQL;
                       DMEXPORTA.IBTExporta.CommitRetaining;
                   Except
                       DMEXPORTA.IBTExporta.RollbackRetaining;
                   	MessageDlg('Falha: 1775', mtWarning, [mbOK], 0);
                   End;
               Except
               	MessageDlg('FALHA 531', mtWarning, [mbOK], 0);
               End;

               Try
                   // CODIGO DE ESTOQUE PARA ITENS DE PRODUTO DA ORDEM
                   DMEXPORTA.TItemPC.Close;
                   DMEXPORTA.TItemPC.SQL.Clear;
                   DMEXPORTA.TItemPC.SQL.Add(' insert into ITENSPEDC (COD_PEDCOMPRA, COD_ESTOQUE, QTDEPROD, VALUNIT, VALORTOTAL, ');
                   DMEXPORTA.TItemPC.SQL.Add(' DATA, DESCPRO, ATUEST, ALIQICMS, VLRIPI, COD_LOTE, BASEICMS, VLRICMS, BASEICMSSUBS, ');
                   DMEXPORTA.TItemPC.SQL.Add(' VLRICMSSUBS, ALIQIPI, COD_UNIDADE) values (:COD_PEDCOMPRA, :COD_ESTOQUE, :QTDEPROD, ');
                   DMEXPORTA.TItemPC.SQL.Add(' :VALUNIT, :VALORTOTAL, :DATA, :DESCPRO, :ATUEST, :ALIQICMS,:VLRIPI, :COD_LOTE, ');
                   DMEXPORTA.TItemPC.SQL.Add(' :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRICMSSUBS, :ALIQIPI, :COD_UNIDADE) ');
					DMEXPORTA.TItemPC.ParamByName('COD_PEDCOMPRA').AsInteger := XCOD_ORDEM;
                   DMEXPORTA.TItemPC.ParamByName('COD_ESTOQUE').AsInteger := XCOD_ESTOQUE;
                   DMEXPORTA.TItemPC.ParamByName('QTDEPROD').AsCurrency := DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency;
                   DMEXPORTA.TItemPC.ParamByName('VALUNIT').AsCurrency := DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency;
                   DMEXPORTA.TItemPC.ParamByName('VALORTOTAL').AsCurrency:=DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency;
                   DMEXPORTA.TItemPC.ParamByName('DATA').AsString := DMENTRADA.TItemPC.FieldByName('DATA').AsString;
                   DMEXPORTA.TItemPC.ParamByName('DESCPRO').AsCurrency := DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency;
                   DMEXPORTA.TItemPC.ParamByName('ATUEST').AsString := '1';
                   DMEXPORTA.TItemPC.ParamByName('ALIQICMS').AsCurrency:= DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency;
                   DMEXPORTA.TItemPC.ParamByName('VLRIPI').AsCurrency := DMENTRADA.TItemPC.FieldByName('VLRIPI').AsCurrency;
                   DMEXPORTA.TItemPC.ParamByName('BASEICMS').AsCurrency := DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency;
                   DMEXPORTA.TItemPC.ParamByName('VLRICMS').AsCurrency := DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency;
                   DMEXPORTA.TItemPC.ParamByName('BASEICMSSUBS').AsCurrency := DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency;
                   DMEXPORTA.TItemPC.ParamByName('VLRICMSSUBS').AsCurrency := DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency;
                   DMEXPORTA.TItemPC.ParamByName('ALIQIPI').AsCurrency:= DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency;
                   DMEXPORTA.TItemPC.ExecSQL;
                   DMEXPORTA.IBTExporta.CommitRetaining;
                   // atualizando o banco de fora
                   //DMEXPORTA.IBTExporta.CommitRetaining;
               Except  on E: Exception do
               	MessageDlg('FALHA 532 - '+E.Message, mtWarning, [mbOK], 0);
               End;

           // proximo ptoduto da ordem
           DMENTRADA.TItemPC.Next;
           End;

           LBCONEXAO.Caption := 'Finalizando Transação ... ';
           PExp.Refresh;

       // proxima ordem
       DMENTRADA.TPedC.Next;
       End;


       Try
           // atualizando o banco local para não permitir exportar mais as ordens recem exportadas
           DMServ.TAlx1.Close;
           DMServ.TAlx1.SQL.Clear;
           DMServ.TAlx1.SQL.Add('update pedcompra set pedcompra.export = ' + #39 + '#' + #39);
           DMServ.TAlx1.SQL.Add('where pedcompra.cod_pedcomp = :CODIGO ');
           DMServ.TAlx1.ParamByName('CODIGO').AsInteger:=XCOD_ORDEM;
           DMServ.TAlx1.ExecSQL;
           // atualizando o banco local
           DMServ.IBT.CommitRetaining;
       Except   on E: Exception do
       	MessageDlg('FALHA 533 -' + E.Message, mtWarning, [mbOK], 0);
       End;
       // OCULTANDO BARRA DE PROGRESSAO
       PExp.Visible := FALSE;
       PExp.SendToBack;
       
       //Caso tenha pendencias no datammodule, elas são cconirmadas ou recusadas
       Try
           DMEXPORTA.IBTExporta.CommitRetaining;
       Except
           DMEXPORTA.IBTExporta.RollbackRetaining;
       End;

       Mensagem('INFORMAÇÃO','PEDIDO(S) EXPORTADO(S) COM SUCESSO!','',1,1,false,'i');
   End
   Else Begin
       // OCULTANDO BARRA DE PROGRESSAO
       PExp.Visible := FALSE;
       PExp.SendToBack;
       Mensagem('   A T E N Ç Ã O   ','Ocorreu uma falha ao conectar com o Banco de Dados de Exportação.'+#13+'Se o problema persistir consulte o Suporte.','',1,1,false,'A');
       Exit;
   End;

Except
   // OCULTANDO BARRA DE PROGRESSAO
       PExp.Visible := FALSE;
       PExp.SendToBack;
       DMServ.IBT.RollbackRetaining;
       Mensagem('   A T E N Ç Ã O   ','Ocorreu uma falha durante a Exportação dos Dados.'+#13+'Se o problema persistir consulte o Suporte.','',1,1,false,'A');
       Exit;
end;
LiberaDados;
end;

procedure TFPedCompra.FormShow(Sender: TObject);
begin
  inherited;
	//Xtabela e Xcampo os nome padrões devem ser atribuidos ao show do form,
	XTabela:= DMENTRADA.TPedC;
	XCampo:= 'NOME';
   XPkTabela:= 'COD_PEDCOMP';
	XpkTabSlave:='COD_ITENSPEDC';

   XTransaction:= DMENTRADA.IBT;

   XView:= DMENTRADA.WPedc;
   XTab:=FALSE;
   XDescricao:= 'O Pedido de compra ';

   XSQLTABELA:= 'PEDCOMPRA';
   XSQLVIEW:='VWPEDC';
   XSQLTabSlave:='ITENSPEDC';
	XTabSlave:= DMENTRADA.TItemPC;
end;

procedure TFPedCompra.BtnConsultarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ALTPEDCOMP', 'M')=False Then
  		Exit;
  inherited;
  XCod_Destinatario:=XTabela.FieldByName('COD_DESTINATARIO').AsInteger;
  FrmDestinatario.EdDescricao.Text:=XTabela.FieldByName('DESTINATARIO').AsString;
  FrmDestinatario.Repaint;
  EDCodBarra.Text := '';
  EDCodInterno.Text := '';
  EDQuantidade.ValueNumeric := 0;
  EDValUnit.ValueNumeric := 0;
  EDDesc.ValueNumeric := 0;
  EDTotal.ValueNumeric := 0;
  LSimilar.Caption := '';
  LMarca.Caption := '';
  LLocal.Caption := '';
  LBonif.Caption := '';
  LCustoTot.Caption := '';

  
end;

procedure TFPedCompra.BtnNovoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADPEDCOMP', 'M')=False Then
  		Exit;

  inherited;
  XCod_Destinatario:=-1;
  FrmDestinatario.EdDescricao.Text:='';
  FrmDestinatario.EDCodigo.Text:='';
  FrmDestinatario.Repaint;
  EDCodBarra.Text := '';
  EDCodInterno.Text := '';
  EDQuantidade.ValueNumeric := 0;
  EDValUnit.ValueNumeric := 0;
  EDDesc.ValueNumeric := 0;
  EDTotal.ValueNumeric := 0;
  LSimilar.Caption := '';
  LMarca.Caption := '';
  LLocal.Caption := '';
  LBonif.Caption := '';
  LCustoTot.Caption := '';

  if XFlagNfe <> 1 then
  	 DBColorEdit3.SetFocus;

  lbCstconsumo.Caption:='';
     
end;

procedure TFPedCompra.BtnApagarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CANCCOMPRA', 'M')=False Then
  		Exit;

  inherited;

end;

procedure TFPedCompra.BtnFechaPedClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('EFETUARCOMPRA', 'M')=False Then
  		Exit;

   If  DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF'
   Then Begin
       //VERIFICA SE O PEDIDO JÁ POSSUE DOC FI
       If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(cod_pedido='+#39+DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsString+#39+')')=True
       Then Begin
			inherited;
       End
       Else Begin
       	If DMMACS.TLoja.FieldByName('FECHARCOMPRANF').AsString='1'
           Then Begin
           	MessageDlg('Não é permitido fechar o pedido sem gerar NF', mtWarning, [mbOK], 0);
           End
           Else Begin
				inherited;
			End;
       End;
   End
   Else Begin
       inherited;
   End;
end;

procedure TFPedCompra.FormActivate(Sender: TObject);
begin
  inherited;
   DBGridCadastroPadrao.DataSource:=DMENTRADA.DWPEDC;
   EdLocal.Visible:=True;
   PCadVendedor.Visible:=True;
   PCadVendedor.BringToFront;

   //Paulo 23/11/2010: Limpa os campos do painel de lote
   XQtdBruta:= 0.00;
   XQtdDescarte:=0.00;
   XQtdEnt:= 0.00;
   XMotivoDesc:='';
   XLote:=0;
   PnLote.SendToBack;
   PnLote.Visible:=false;

   BtnProdutos.Enabled:=False;
   BtnConsumo.Enabled:=True;
   FPCLista.Visible:=False;
   FPCLista.SendToBack;


   //CASO O SISTEMA ESTEJA FORÇANDO A NF O EDIT COM NUMERO NF DEVE SER DESATIVADO
   DBColorEdit3.ReadOnly:=False;
   If  DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF'
   Then Begin
   	If DMMACS.TLoja.FieldByName('FECHARCOMPRANF').AsString='1' Then
           DBColorEdit3.ReadOnly:=True;
   End;

   

   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\pedcompra.lgm')
   Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\pedcompra.lgm');
   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\pedcompraProdutos.lgm')
   Then
       DBGrid1.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\pedcompraProdutos.lgm');
end;

procedure TFPedCompra.Etiquetas1Click(Sender: TObject);
begin
  inherited;
	//AS INFORMAÇÕES DEVEM SER RETIRADAS DOS PEDIDOS DE COMPRA
	//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
   DMESTOQUE.TRel.CLOSE;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add(' Select itenspedc.cod_itenspedc, subproduto.COR, produto.descricao AS GRADE, subproduto.codprodfabr AS CODFAB,  estoque.ultcompra as DTCAD, subproduto.descricao AS DESCR, subproduto.fabricante as FABRICANTE, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO, subproduto.codbarra AS CODBARRA, SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO, itenspedc.qtdeprod As QTD, itenspedc.qtdeexp AS QTDEXPORTADA, subproduto.contrint, ');
   DMESTOQUE.TRel.SQL.Add(' itenspedc.qtdeexp, estoque.vendvarp as PRECOPRAZO, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO ');
   DMESTOQUE.TRel.SQL.Add(' from itenspedc');
   DMESTOQUE.TRel.SQL.Add('  left join estoque ON itenspedc.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.TRel.SQL.Add('  left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.TRel.SQL.Add('left join produto on subproduto.cod_produto = produto.cod_produto');
   DMESTOQUE.TRel.SQL.Add(' where itenspedc.cod_pedcompra=:CODPEDC');
	DMESTOQUE.TRel.ParamByName('CODPEDC').AsString:=DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsString;
   DMESTOQUE.TRel.SQL.Add(' order by subproduto.descricao ');
   DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.Open;
   If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='1'
   Then Begin
   	PrnEtiqPerson(True, 0, -1);
   End;
   If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='2'
   Then Begin
   	PrnEtiqPerson02(True, 0, -1);
   End;
   //Paulo 13/12/2010: Para impressão de etiquetas de ótica
   If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='3'
   Then Begin
       PrnEtiqPersonalOtica(True, 0, -1);
   End;

   If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='0'
   Then Begin
   	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='2X12' Then
       	PrnEtiq2X12(True, 0, -1);
       If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='T3C' Then
       	PrnEtiqT3C(True, 0, -1);
       If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='Z2C' Then
       	PrnEtiqZ2C(True, 0, -1);
   End;
end;

procedure TFPedCompra.DBGrid2DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
{	if DMENTRADA.TPEDC.FieldByName ('SITUACAO').AsString='ABERTO' then
   begin
  		DBGrid2.Canvas.Font.Color := clRed;
  		DBGrid2.Canvas.Font.Style := [fsBold];
//  		DBGrid2.DefaultDrawDataCell(Rect, TFIELD, State);
		DefaultDrawColumnCell(Rect, 10, 0, State);
       DBGrid2.OnDrawDataCell
  	end;}
end;

procedure TFPedCompra.DBGridCadastroPadraoDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
//  inherited;
MessageDlg('OK PEDCOMPRA', mtWarning, [mbOK], 0);

end;

procedure TFPedCompra.BtnFiltrarClick(Sender: TObject);
var
    msg:String;
begin
//  inherited;
  	If (XView.FieldByName('SITUACAO').AsString='ABERTO')
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário que o pedido esteja fechado antes da impressão fiscal. Antes de fechar recomendamos que confira todas as informações do pedido.', '', 1, 1, False, 'a');
		Exit;
   End;

   // - 15/01/2009:  CONTROLE DE ACESSO
   If ControlAccess('EMITDOCFISC', 'M')=False Then
  		Exit;

   // - 15/01/2009:  INFORMAÇÕES NECESSÁRIAS PARA CONTROLES DE CÁLCULOS FISCAIS
   If FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '') = True
   Then Begin
      // - 15/01/2009:  o caixa em questão para verificar se suas configurações são de Nota Fiscal
       If (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString<>'NF') and (DMCAIXA.TCaixa.FieldByName('tipocupom').AsString<>'NFe')
       Then begin
            Mensagem('OPÇÃO BLOQUEADA', 'O Caixa selecionado não emite Nota Fiscal', '', 1, 1, False, 'a');
       End;
   End;
   If FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'cod_pedcomp', XView.FieldByName('cod_pedcomp').AsString, '')=True
   Then Begin
        // - 14/01/2009: ALTERADO PARA SER USADO COM NFE
       If (DMENTRADA.TPedC.FieldByName('FISCO').AsString='NF') or (DMENTRADA.TPedC.FieldByName('FISCO').AsString='NFe') and ((XView.FieldByName('NUMDEV').AsString <> '') or (FMenu.XNotaEntrada=True))
       Then Begin
			If Mensagem('A T E N Ç Ã O', 'Deseja realmente Imprimir Documento Fiscal para o pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   		Then Begin
           	If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, '')=True
               then begin
                    if (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsString <> '1') and (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsString <> '3')   and (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsString <> '4')
                    then begin
                         If FMenu.XNotaEntrada=True
                         Then Begin
                             //Se a nota for de emissão propria deve gerar o documento fiscal
                             FiltraTabela(XView, 'VWPEDC', 'COD_PEDCOMP', XView.FieldByName('COD_PEDCOMP').AsString, '');
                             FMenu.TIPOREL:='';
                             FMenu.TIPOAUX:='ENTNFPROP';
                             FMenu.XNotaEntrada:=True;
                             AbreFiscal;
                         End
                         Else Begin
                              //Paulo 30/08/2010: Abre a tela de fiscal para imprimir o cupom fiscal
                              FiltraTabela(XView, 'VWPEDC', 'COD_PEDCOMP', XView.FieldByName('COD_PEDCOMP').AsString, '');
                              FMenu.TIPOREL:='RNF';
                              FMenu.TIPOAUX:='DEVNF';
                              FMenu.XNotaEntrada:=True;
                              AbreFiscal;
                         End;
                    end
                    else begin
                        Mensagem('OPÇÃO BLOQUEADA', 'A Nota Fiscal do Pedido já foi enviada ou cancelada!', '', 1, 1, False, 'a');
                    end;
                end
                else begin
                	If FMenu.XNotaEntrada=True
                   Then Begin
                   	//Se a nota for de emissão propria deve gerar o documento fiscal
                       FiltraTabela(XView, 'VWPEDC', 'COD_PEDCOMP', XView.FieldByName('COD_PEDCOMP').AsString, '');
                       FMenu.TIPOREL:='';
                       FMenu.TIPOAUX:='ENTNFPROP';
                       FMenu.XNotaEntrada:=True;
                       AbreFiscal;
                   End
                   Else Begin
                   	Mensagem('OPÇÃO BLOQUEADA', 'Documento Fiscal do Pedido não encontrado!', '', 1, 1, False, 'a');
                   End;
                end;
                LiberaDados;
                Exit;
           end;
       End;
   End;
end;

procedure TFPedCompra.EtiquetaCdFabricante1Click(Sender: TObject);
begin
  inherited;
	//AS INFORMAÇÕES DEVEM SER RETIRADAS DOS PEDIDOS DE COMPRA
	//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
   DMESTOQUE.TRel.CLOSE;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('Select itenspedc.cod_itenspedc, produto.descricao AS GRADE, subproduto.codprodfabr AS CODFAB, subproduto.descricao AS DESCR,  subproduto.fabricante as FABRICANTE, itenspedc.qtdeexp, ');
   DMESTOQUE.TRel.SQL.Add('estoque.vendvarv as PRECO, subproduto.codbarra AS CODBARRA, SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO, itenspedc.qtdeprod As QTD, subproduto.contrint, ');
   DMESTOQUE.TRel.SQL.Add('estoque.vendvarp as PRECOPRAZO,  estoque.ultcompra as DTCAD, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO ');
   DMESTOQUE.TRel.SQL.Add('from itenspedc');
   DMESTOQUE.TRel.SQL.Add('left join estoque ON itenspedc.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.TRel.SQL.Add('left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.TRel.SQL.Add('where itenspedc.cod_pedcompra=:CODPEDC');
	DMESTOQUE.TRel.ParamByName('CODPEDC').AsString:=DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsString;
   DMESTOQUE.TRel.SQL.Add(' order by subproduto.descricao ');
   DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.Open;
 	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='1'
  	Then Begin
		PrnEtiqPerson(False, 1, -1);
 	End;
 	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='2'
  	Then Begin
		PrnEtiqPerson02(False, 1, -1);
 	End;
 	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='0'
  	Then Begin
		PrnEtiq2X12(False, 1, -1);
  	End;

end;


procedure TFPedCompra.BitBtn6Click(Sender: TObject);
begin
  inherited;
   PComisPedC.Visible:=False;
end;

procedure TFPedCompra.BitBtn9Click(Sender: TObject);
begin
  inherited;
   PComisPedC.Visible:=True;
   PComisPedC.BringToFront;
	DbComis.SetFocus;
end;

procedure TFPedCompra.BtnTrocaClick(Sender: TObject);
Var
	XCodPedidoTroca: String;
   XCODLANEST: Integer;
   XQTDLOTE: Real;
   XJust, XChave, XProtocolo, XNovoProtocolo: string;     // - 15/01/2009:  justificativa, nºchave, nºprotocolo do cancelamento nfe
   XCont:boolean;     // - 15/01/2009: controle  nfe
   msg, XNumPedido , msgper:String;
   XNFeNota:Boolean; // - 15/01/2009: se for do tipo NFe estara setado como true
begin
  inherited;
  If XView.FieldByName('SITUACAO').AsString='CANCELADO'
   Then Begin
		Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Este  pedido já se encontra Cancelado!', '', 1, 1, False, 'a');
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

   msgper := '';

   If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_DOCFIS', '', '(docfis.cod_pedido='+#39+XView.FieldByName('COD_PEDCOMP').AsString+#39+')')=True
   then begin
      if (DMENTRADA.TFiscPC.FieldByName('BASCALSUBS').AsCurrency > 0 ) and (DMENTRADA.TFiscPC.FieldByName('VLRICMSUBS').AsCurrency > 0 )
      then begin
          Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'O cáculo referente a média ponderada da substituição tributária já foi cálculada, cancelando o pedido e realizando o fechamento novamente as médias serão calculadas deixandos os dados incosistentes.', '', 1, 1, False, 'a');
      end;
   end;

   If Mensagem('A T E N Ç Ã O', 'Deseja realmente Cancelar o fechamento do pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
       XCodPedidoTroca:=XView.FieldByName('COD_PEDCOMP').AsString;
       If FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', XCodPedidoTroca, '')=True
       Then Begin

            // - 15/01/2009: SE O PEDIDO FOR DE DEVOLUÇÃO E EM LOJA ESTAR SETADO A CERTIFICACAO É DO TIPO NFE
            if (DMENTRADA.TPedC.FieldByName('FISCO').AsString = 'NFe')//(XView.FieldByName('NUMDEV').AsString <> '') and (DMMACS.TLoja.FieldByName('NFECERTIFICACAO').AsString <> '')
            then begin
                XNFeNota := True;
                If FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XCodPedidoTroca, '')=True
                then begin
                    if (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsString <> '3')
                    then begin
                      if (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsString = '1')
                      then begin

                            // - 15/01/2009:  verifica se a chave nfe e se é valida
                            XChave := DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString;
                            if (Length(XChave)<> 44) or (XChave='')
                            then begin
                               Mensagem('   A T E N Ç Ã O   ', 'Chave de Acesso da nota não encontrada ou inválida!','',1,1,false,'I');
                               Exit;
                            end;

                            // - 15/01/2009:  verifica se há um número de protocolo
                            XProtocolo := DMENTRADA.TFiscPC.FieldByName('NFEPROTOCOLO').AsString;
                            if (Length(XProtocolo)<> 15) or (XProtocolo='')
                            then begin
                               Mensagem('   A T E N Ç Ã O   ', 'Número de protocolo da nota não encontrada ou inválida!','',1,1,false,'I');
                               Exit;
                            end;

                            // - 15/01/2009:  pede ao usuario justificativa do cancelamento
                            XCont := True;
                            while XCont do
                            begin
                                XJust := '';
                                XCont := InputQuery('A t e n ç ã o !','INFORME A JUSTIFICATIVA DO CANCELAMENTO:', XJust);
                                if XCont
                                then begin
                                   if Length(XJust) < 15
                                   then begin
                                       Mensagem('   A T E N Ç Ã O   ', 'Informe uma justificativa com pelo menos 15 (quinze) caracteres.','',1,1,false,'I');
                                       XCont := True;
                                   end else
                                       XCont := False;
                                end else
                                   Exit; // usuario cancelou
                            end;

                           // - 15/01/2009:   tira caracteres inválidos
                            XJust := ValidaAcentos(XJust);

                            // - 15/01/2009:  lembrar de apagar abaixo (a linha de baixo e essa)
                            //ShowMessage('Numero da chave: '+XChave+'  Numero do protocolo: '+XProtocolo+'   Justificativa: '+XJust);


                            FMzrNfe := TFMzrNfe.Create(FMzrNfe);
                            FMzrNfe := nil;
                      end
                      else begin
                          Mensagem('OPÇÃO BLOQUEADA', 'A Nota Fiscal do Pedido não foi enviada!', '', 1, 1, False, 'a');
                          Exit;
                      end;
                    end
                    else begin
                        Mensagem('OPÇÃO BLOQUEADA', 'A Nota Fiscal do Pedido já foi Cancelada', '', 1, 1, False, 'a');
                        Exit;
                    end;
                end
                else begin
                  Mensagem('OPÇÃO BLOQUEADA', 'Documento Fiscal do Pedido não encontrado!', '', 1, 1, False, 'a');
                  Exit;
              end
          end
          else begin
              XNFeNota := false;
          end;
          If CancelLanPedC(XCodPedidoTroca)=True
          Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
              if not XNFeNota
              then begin
                  DMENTRADA.TPedC.EDIT;
                  DMENTRADA.TPedC.FieldByName('SITUACAO').AsString:='ABERTO';
                  DMENTRADA.TPedC.FieldByName('FATURADO').AsString:='0';
                  DMENTRADA.TPedC.Post;
                  //REGISTRA COMANDO DO USUARIO
                  Registra('PEDIDO COMPRA', 'CANCELA FECHAMENTO', DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsString, 'Nº '+DMENTRADA.TPedC.FieldByName('NUMPED').AsString, 'Valor: '+DMENTRADA.TPedC.FieldByName('VALOR').AsString);
                  DMENTRADA.IBT.CommitRetaining;
                  If FiltraTabela(XView, XSQLVIEW, XPkTabela, XCodPedidoTroca, '')=True
                  Then Begin
                      BtnConsultar.Click;
                  End;
              End
              else begin
                  // - 15/01/2009: se for NFe
                  DMENTRADA.TPedC.EDIT;
                  DMENTRADA.TPedC.FieldByName('SITUACAO').AsString:='CANCELADO';
                  DMENTRADA.TPedC.Post;
                  //REGISTRA COMANDO DO USUARIO
                  Registra('PEDIDO COMPRA', 'CANCELA FECHAMENTO NFe', DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsString, 'Nº '+DMENTRADA.TPedC.FieldByName('NUMPED').AsString, 'Valor: '+DMENTRADA.TPedC.FieldByName('VALOR').AsString);
                  DMENTRADA.IBT.CommitRetaining;
                  LiberaDados;
              end;

          End
          else begin
             exit;
          end;
       End;
   end;
end;



procedure TFPedCompra.frmFormPagBTNOPENClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   FMenu.XPreSel := True;
   FMenu.XFieldPesqPreSel := 'COD_INTERNO';
   FMenu.XCodPesqPresSel := FrmDestinatario.EDCodigo.Text;

   If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
       XCod_Destinatario:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', IntToStr(XCODPESSOA), '')=True
       Then Begin
         	If DMPESSOA.TCliente.FieldByName('ATUALIZAR').AsString='1' Then
				Mensagem('Mzr Sistemas - INFORMAÇÃO', 'As informações deste cliente devem ser atualizadas!', '', 1, 1, false, 'i');
       End;
       FrmDestinatario.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmDestinatario.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       xnomedestinatario:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
	End;
end;     
procedure TFPedCompra.FrmDestinatarioEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmDestinatario.EDCodigo.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
       	XCod_Destinatario:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
	        FrmDestinatario.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	        FrmDestinatario.EDCodigo.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
       	xnomedestinatario:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       End
       Else Begin
       	XCod_Destinatario:=-1;
	        FrmDestinatario.EdDescricao.Text:='';
	        FrmDestinatario.EDCodigo.Text:='';
       	xnomedestinatario:='';           
       End;
   End;
End;
procedure TFPedCompra.ConsultaNDocFiscal1Click(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
   If DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF' Then
		MessageDlg('Nº Próx. NF: '+DMMACS.TEmpresa.FieldByName('PROX_NF').AsString, mtInformation, [mbOK], 0)
   Else
   	MessageDlg('Este recurso esta disponível apenas para Notas Fiscais.', mtWarning, [mbOK], 0);
end;

procedure TFPedCompra.AlteraNDocFiscal1Click(Sender: TObject);
Var
	NovoNum: String;
   Flag: Integer;
begin
  inherited;
  	Flag:=0;
   While Flag=0 do
   Begin
		If InputQuery('ALTERANDO O Nº DA NF','Informe o novo Nº para próxima Nota Fiscal', NovoNum)=True
   	Then Begin
       	Try
				StrToInt(NovoNum);
               //VERIFICA C JAH EXISTE DOCUMENTO IMPRESSO EM VENDAS
               DMMACS.TALX.Close;
               DMMACS.TALX.SQL.Clear;
               DMMACS.TALX.SQL.Add(' select * from docfissaida ');
               DMMACS.TALX.SQL.Add(' where docfissaida.numdocfis=:CODIGO ');
               DMMACS.TALX.ParamByName('CODIGO').AsString:=NovoNum;
               DMMACS.TALX.Open;
               If Not DMMACS.TALX.IsEmpty
               Then Begin
					MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
                   Exit;
               End;
               //VERIFICA C JAH EXISTE DOCUMENTO IMPRESSO EM COMPRAS
               DMMACS.TALX.Close;
               DMMACS.TALX.SQL.Clear;
               DMMACS.TALX.SQL.Add(' select * from docfis ');
               DMMACS.TALX.SQL.Add(' where (docfis.numdocfis=:CODIGO)  AND (docfis.empemit='+#39'1'+#39+')  ');
               DMMACS.TALX.ParamByName('CODIGO').AsString:=NovoNum;
               DMMACS.TALX.Open;
               If Not DMMACS.TALX.IsEmpty
               Then Begin
					MessageDlg('Este Nº de Documento já foi impresso!!!', mtWarning, [mbOK], 0);
                   Exit;
               End;
               Flag:=1;
				FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
   			DMMACS.TEmpresa.Edit;
			   	DMMACS.TEmpresa.FieldByName('PROX_NF').AsString:=NovoNum;
   			DMMACS.TEmpresa.Post;
   			DMMACS.Transaction.CommitRetaining;
           Except
           	MessageDlg('O novo Nº não foi aprovado!'+#13+#10+'Entre com outro valor inteiro.', mtWarning, [mbOK], 0);
           End;
       End
       Else Begin
           Flag:=1;
       End;
	End;
end;

procedure TFPedCompra.EdNumDocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
  			If XTab=True Then
  				FiltraTabela(XTabela, XSQLTABELA, 'NUMFISCAL', '', '(upper(NUMFISCAL) like upper('+#39+EdNumDoc.Text+'%'+#39+')) ORDER BY NUMFISCAL')
    		Else
 				FiltraTabela(XView, XSQLVIEW, 'NUMFISCAL', '',   '(upper(NUMFISCAL) like upper('+#39+EdNumDoc.Text+'%'+#39+')) ORDER BY NUMFISCAL');
    End;
    If Key=VK_ESCAPE
    Then Begin //pressionado esc, liberar
           LiberaDados;
    End;  
   Except
   End;
end;

// - 27/02/2009: procedure que busca dados de conversão unitária
procedure  TFPedCompra.convertunid;
var
    x: Integer; // - 27/02/2009: controle pk tmp por causa da conversão unitaria
begin
// - 27/02/2009: limpa TMP
          DMGEOGRAFIA.TAlx.Close;
          DMGEOGRAFIA.TAlx.SQL.Clear;
          DMGEOGRAFIA.TAlx.SQL.Add('delete from TMP');
          DMGEOGRAFIA.TAlx.ExecSQL;
          DMGEOGRAFIA.IBT.CommitRetaining;
           FiltraTabela(DMMACS.TMP, 'TMP', '', '', '');

           FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString, '');

           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add('select * from convunid');
           DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unident = unidade.cod_unidade');
           DMESTOQUE.Alx.SQL.Add('Where (convunid.cod_unident=:UNIDENT or convunid.cod_unident=:UNIDSAI)');
           DMESTOQUE.Alx.ParamByName('UNIDENT').AsString:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString;
           DMESTOQUE.Alx.ParamByName('UNIDSAI').AsString:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString;
           DMESTOQUE.Alx.Open;
           DMESTOQUE.Alx.First;

           x:=1;
           while not DMESTOQUE.Alx.Eof do
           begin
                DMMACS.TMP.Insert;
                DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.Alx.fieldByName('DESC_UNID').AsString;
                DMMACS.TMP.FieldByName('DESC3').AsString:=DMESTOQUE.Alx.fieldByName('COD_CONVUNID').AsString;
                DMMACS.TMP.FieldByName('VLR1').AsString:=DMESTOQUE.Alx.fieldByName('QTDCONVERT').AsString;
                DMMACS.TMP.FieldByName('VLR2').AsString:=DMESTOQUE.Alx.fieldByName('COD_UNIDSAI').AsString;
                DMMACS.TMP.FieldByName('VLR3').AsString:=DMESTOQUE.Alx.fieldByName('COD_UNIDADE').AsString;
                DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=x;
                x:=x+1;
                DMMACS.TMP.Post;
                DMESTOQUE.Alx.Next;
           end;

           DMMACS.Transaction.CommitRetaining;

           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add('select * from convunid');
           DMESTOQUE.Alx.SQL.Add('left join unidade ON convunid.cod_unidsai = unidade.cod_unidade');
           DMESTOQUE.Alx.SQL.Add('Where convunid.cod_unidsai=:UNIDSAI');
           DMESTOQUE.Alx.ParamByName('UNIDSAI').AsString:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString;
           DMESTOQUE.Alx.Open;
           DMESTOQUE.Alx.First;

           FiltraTabela(DMMACS.TMP, 'TMP', '', '', '');
           
           while not DMESTOQUE.Alx.Eof do
           begin
                if FiltraTabela(DMMACS.TMP, 'TMP', 'DESC3', DMESTOQUE.Alx.FieldByName('COD_CONVUNID').AsString,'') = true
                then begin
                    DMMACS.TMP.Edit;
                    DMMACS.TMP.FieldByName('DESC2').AsString := DMESTOQUE.Alx.fieldByName('DESC_UNID').AsString;
                    DMMACS.TMP.Post;
                end;
                DMESTOQUE.Alx.Next;
           end;

           DMMACS.Transaction.CommitRetaining;
           DMMACS.IBTCodigo.CommitRetaining;

           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add('select tmp.desc1 AS SIGLA_UNID, tmp.desc2 AS SIGLA_UNID1, tmp.desc3 AS COD_CONVUNID, ');
           DMESTOQUE.Alx.SQL.Add('tmp.vlr1 AS QTDCONVERT, tmp.vlr2 AS COD_UNIDSAI, tmp.vlr3 AS COD_UNIDADE from tmp');
           DMESTOQUE.Alx.SQL.Add('where tmp.desc2 <> :DESC');
           DMESTOQUE.Alx.ParamByName('DESC').AsString:= '';
           DMESTOQUE.Alx.Open;
           DBGridConvert.DataSource := DMESTOQUE.DSAlx;
end;

procedure TFPedCompra.EDQuantidadeExit(Sender: TObject);
var
  key :Char;

begin
  inherited;
   If XFocu='FQTDCONVERT'
   Then Begin

       // SE EM LOJA ESTIVER CONFIGURADO PARA FAZER CONVERSÕES
       If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1'
       Then Begin

            convertunid;


           // mostrar painel para selecionar conversões
           LEstoque.Visible:=false;
           Label21.Visible:=false;
           PQtdConvert.Visible:=True;
           PQtdConvert.BringToFront;
           PQtdConvert.Repaint;


           If DMESTOQUE.Alx.IsEmpty
           Then Begin
               EdQtdConvert.ValueNumeric:=EDQuantidade.ValueNumeric;
               EdQtdConvert.SetFocus;
           End
           Else Begin
               DBGridConvertKeyPress(Self, key);
               DBGridConvert.SetFocus;
           End;

       End
       Else Begin
           EdQtdConvert.ValueNumeric:=EDQuantidade.ValueNumeric;
       End;
   End;
   XFocu:='';
end;

procedure TFPedCompra.PSelectLoteExit(Sender: TObject);
begin
  inherited;
   If PQtdConvert.Visible=True Then
       EdQtdConvert.SetFocus;
end;

procedure TFPedCompra.EdQtdConvertKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key=VK_RETURN
   Then Begin//pressionado enter, consultar
       If (EdQtdConvert.ValueNumeric>0) AND (Not DMESTOQUE.Alx.IsEmpty)
       Then Begin
           XCodUnidItenProd:=DMESTOQUE.Alx.FieldByName('COD_CONVUNID').AsInteger;
           PQtdConvert.Visible:=False;
           PAliqCusto.Tag:=1;
           EDValUnit.SetFocus;
           LQtdConvert.Visible:=True;
           LQtdConvert.BringToFront;
           LQtdConvert.Caption:=EdQtdConvert.Text;
           xqtdconv:=EdQtdConvert.ValueNumeric;
       End;
   End;
   If Key = VK_ESCAPE
   Then Begin
       PQtdConvert.Visible:=False;
       EDValUnit.SetFocus;
   End;
  inherited;
   LEstoque.Visible:=true;
   Label21.Visible:=true;
end;

procedure TFPedCompra.EDQuantidadeEnter(Sender: TObject);
begin
  inherited;
   XFocu:='FQTDCONVERT';
end;

procedure TFPedCompra.EDValUnitEnter(Sender: TObject);
begin
  inherited;
   PAliqCusto.Tag:=1;
end;

procedure TFPedCompra.Panel2Enter(Sender: TObject);
begin
  inherited;
   LQtdConvert.Caption:='';
end;

procedure TFPedCompra.BtnInsertProdClick(Sender: TObject);
begin
   If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1'
   Then Begin
       If xqtdconv<=0
       Then Begin
		   Mensagem('OPÇÃO BLOQUEADA', 'A quantidade convertida não foi informada corretamente.', '', 1, 1, False, 'a');
           convertunid;
           PQtdConvert.Visible:=True;
           PQtdConvert.BringToFront;
           EdQtdConvert.SetFocus;
	       Exit;
       End;
   end;
   inherited;
   LQtdConvert.Caption:='';
end;

procedure TFPedCompra.Criarnovopedido1Click(Sender: TObject);
begin
  inherited;
	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente gerar novo pedido?'+#13+'Pedido base Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
   	//Seleciona Cabecalho do pedido
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('Select * from pedcompra Where Pedcompra.cod_pedcomp=:Codigo');
       DMESTOQUE.Alx.ParamByName('CODIGO').AsInteger:=DMENTRADA.WPedc.FieldByName('cod_pedcomp').AsInteger;
       DMESTOQUE.Alx.Open;
       If Not DMESTOQUE.Alx.IsEmpty
       Then Begin
       	//Seleciona Produtos do Pedido
       	DMESTOQUE.Alx1.Close;
       	DMESTOQUE.Alx1.SQL.Clear;
       	DMESTOQUE.Alx1.SQL.Add('Select * from itenspedc Where itenspedc.cod_itenspedc=:codigo');
       	DMESTOQUE.Alx1.ParamByName('CODIGO').AsInteger:=DMENTRADA.WPedc.FieldByName('cod_pedcomp').AsInteger;
       	DMESTOQUE.Alx1.Open;
       End;
		//Aciona novo Pedido
       BtnNovo.Click;
       //Informa Cabeçalho do Pedido
       XTabela.Edit;
       XTabela.FieldByName('COD_FORNEC').AsInteger:=DMESTOQUE.Alx.FieldByName('COD_FORNEC').AsInteger;
       XTabela.FieldByName('DTPEDCOMP').AsDateTime:=Date();
       DBDATA.Text:=DateToStr(Date());
       XTabela.FieldByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
       XTabela.FieldByName('COD_FORMPAG').AsInteger:=DMESTOQUE.Alx.FieldByName('COD_FORMPAG').AsInteger;
       XTabela.FieldByName('VALOR').AsCurrency:=DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency;
       XTabela.FieldByName('OBS').AsString:=DMESTOQUE.Alx.FieldByName('OBS').AsString;
       XTabela.FieldByName('PRAZOENTR').AsString:=DMESTOQUE.Alx.FieldByName('PRAZOENTR').AsString;
       XTabela.FieldByName('VENDEDOR').AsString:=DMESTOQUE.Alx.FieldByName('VENDEDOR').AsString;
       XTabela.FieldByName('DESCONTO').AsString:=DMESTOQUE.Alx.FieldByName('DESCONTO').AsString;
       XTabela.FieldByName('COD_DESTINATARIO').AsString:=DMESTOQUE.Alx.FieldByName('COD_DESTINATARIO').AsString;
       XTabela.FieldByName('DESTINATARIO').AsString:=DMESTOQUE.Alx.FieldByName('DESTINATARIO').AsString;
       XTabela.Post;

       //INSERE OS PRODUTOS
       DMESTOQUE.Alx1.First;
       While Not DMESTOQUE.Alx1.Eof DO
       Begin
   		//Inserir Produto a lista do pedido
   		XCodSlave:=InserReg(XTabSlave, XSQLTabSlave, XpkTabSlave);
   		XTabSlave.FieldByName(XpkTabSlave).AsInteger:=XCodSlave;
			XTabSlave.FieldByName('cod_pedcompra').AsInteger:=XTabela.FieldByName('cod_pedcomp').AsInteger;
			XTabSlave.FieldByName('DATA').AsString:=DateToStr(Date());
       	XTabSlave.FieldByName('QTDEST').AsCurrency:=DMESTOQUE.Alx1.FieldByName('QTDEST').AsCurrency;
       	XTabSlave.FieldByName('COD_ESTOQUE').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_ESTOQUE').AsInteger;
       	XTabSlave.FieldByName('QTDEPROD').AsCurrency:=DMESTOQUE.Alx1.FieldByName('QTDEPROD').AsCurrency;
       	XTabSlave.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.Alx1.FieldByName('VALUNIT').AsCurrency;
       	XTabSlave.FieldByName('VALORTOTAL').AsCurrency:=DMESTOQUE.Alx1.FieldByName('VALORTOTAL').AsCurrency;
       	XTabSlave.FieldByName('DESCPRO').AsCurrency:=DMESTOQUE.Alx1.FieldByName('DESCPRO').AsCurrency;
       	XTabSlave.FieldByName('ALIQICMS').AsCurrency:=DMESTOQUE.Alx1.FieldByName('ALIQICMS').AsCurrency;
       	XTabSlave.FieldByName('FRETE').AsCurrency:=DMESTOQUE.Alx1.FieldByName('FRETE').AsCurrency;
       	XTabSlave.FieldByName('EMBPROD').AsCurrency:=DMESTOQUE.Alx1.FieldByName('EMBPROD').AsCurrency;
       	XTabSlave.FieldByName('VLRIPI').AsCurrency:=DMESTOQUE.Alx1.FieldByName('VLRIPI').AsCurrency;
       	XTabSlave.FieldByName('COD_LOTE').AsCurrency:=DMESTOQUE.Alx1.FieldByName('COD_LOTE').AsCurrency;
       	XTabSlave.FieldByName('BASEICMS').AsCurrency:=DMESTOQUE.Alx1.FieldByName('BASEICMS').AsCurrency;
       	XTabSlave.FieldByName('VLRICMS').AsCurrency:=DMESTOQUE.Alx1.FieldByName('VLRICMS').AsCurrency;
       	XTabSlave.FieldByName('BASEICMSSUBS').AsCurrency:=DMESTOQUE.Alx1.FieldByName('BASEICMSSUBS').AsCurrency;
       	XTabSlave.FieldByName('VLRICMSSUBS').AsCurrency:=DMESTOQUE.Alx1.FieldByName('VLRICMSSUBS').AsCurrency;
       	XTabSlave.FieldByName('ALIQIPI').AsCurrency:=DMESTOQUE.Alx1.FieldByName('ALIQIPI').AsCurrency;
       	XTabSlave.FieldByName('REDUCBASEICMS').AsCurrency:=DMESTOQUE.Alx1.FieldByName('REDUCBASEICMS').AsCurrency;
           XTabela.Edit;
           If DMMacs.TLoja.FieldByName('ATUAESTOQUE').AsString='1'
           Then Begin //se o estoque deve ser atualizado no pedido executa procedimento
           	//atualiza data da ultima compra
               DMESTOQUE.TEstoque.Edit;
				DMEstoque.TEstoque.FieldByName('ULTCOMPRA').AsString:=DateToStr(Date());
          	    //atualiza estoque físico
               If DMEstoque.TEstoque.FieldByName('ESTFISICO').AsString='' Then
              	    DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=(DMESTOQUE.Alx1.FieldByName('QTDEST').AsCurrency)

               Else
				    DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency+DMESTOQUE.Alx1.FieldByName('QTDEST').AsCurrency;

               DMEstoque.TEstoque.FieldByName('ATUALIZAR').AsString:='1';
               DMESTOQUE.TEstoque.Post;
               DMESTOQUE.TransacEstoque.CommitRetaining;
	        End;
			If DMMACS.TLoja.FieldByName('USAOBSITEMCOMPRA').AsString = '1'
   		Then Begin
           	XQTDLOTE:=DMESTOQUE.Alx1.FieldByName('QTDEST').AsCurrency;
               //se encontrado lote p/ produto alterar a quantidade
               DMESTOQUE.TEstoqueLote.Close;
               DMESTOQUE.TEstoqueLote.SQL.Clear;
               DMESTOQUE.TEstoqueLote.SQL.Add('SELECT * FROM ESTOQUELOTE WHERE ESTOQUELOTE.COD_LOTE=:CODLOTE');
               DMESTOQUE.TEstoqueLote.ParamByName('CODLOTE').AsString:=DMESTOQUE.Alx1.FieldByName('COD_LOTE').AsString;
               DMESTOQUE.TEstoqueLote.Open;
               If Not DMESTOQUE.TEstoqueLote.IsEmpty
               Then Begin
                   XTabSlave.FieldByName('COD_LOTE').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_LOTE').AsInteger;
                   DMESTOQUE.TEstoqueLote.Edit;
                   DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency:=DMESTOQUE.TEstoqueLote.FieldByName('QUANTIDADE').AsCurrency+DMESTOQUE.Alx1.FieldByName('QTDEST').AsCurrency;
   				DMESTOQUE.TEstoqueLote.Post;
               End;
           End;
           XTabSlave.Edit;
           XTabSlave.Post;
           DMESTOQUE.Alx1.Next;
       End;
       XTabSlave.Edit;
       XTabSlave.Post;
       XTabela.Edit;
       XTabela.Post;
       XTransaction.CommitRetaining;
       DMESTOQUE.TransacEstoque.CommitRetaining;
		//SELECIONA PEDIDO CRIADO EM VIEW PARA SER ABERTO
       FiltraTabela(DMENTRADA.WPedc, 'vwpedc', 'cod_pedcomp', XTabela.FieldByName('COD_PEDCOMP').AsString, '');
		BtnConsultar.Click;
   End;
end;

procedure TFPedCompra.FrmDestinatarioBTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmDestinatario.BTNMINUSClick(Sender);
   XCod_Destinatario:=-1;
   FrmDestinatario.EdDescricao.Text := '';
   FrmDestinatario.EDCodigo.Text := '';
   xnomedestinatario:='';
end;

procedure TFPedCompra.EDQuantidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       //PInfoExp.Visible:=True;
       //PInfoExp.BringToFront;
       //EdQuantExp.SetFocus;
   End;
   If Key=VK_RIGHT Then
       EDValUnit.SetFocus;
	If Key=VK_LEFT Then
       EDCodFab.SetFocus;   
end;

procedure TFPedCompra.EdNumPedClick(Sender: TObject);
begin
  inherited;
   // se na edit nao tiver valor diferente do titulo (Nº Ped), o campo sera limpado
   If EdNumPed.Text = 'Nº Ped'
   Then Begin
       EdNumPed.Text := '';
   End;

end;

procedure TFPedCompra.EdNumPedExit(Sender: TObject);
begin
  inherited;
   // se nao possui valor, o titulo eh retornado
   If EdNumPed.Text = ''
   Then Begin
       EdNumPed.Text := 'Nº Ped';
   End;

end;

procedure TFPedCompra.EdNumDocClick(Sender: TObject);
begin
  inherited;
   // qdo clicar na edit, o campo serah limpado
   If EdNumDoc.Text = 'Nº Doc'
   Then Begin
       EdNumDoc.Text := '';
   End;

end;

procedure TFPedCompra.EdNumDocExit(Sender: TObject);
begin
  inherited;
   // se nao possui valor, eh retomado o titulo
   If EdNumDoc.Text = ''
   Then Begin
       EdNumDoc.Text := 'Nº Doc';
   End;

end;

procedure TFPedCompra.EdNomeClick(Sender: TObject);
begin
  inherited;
   // qdo clicar no campo, ira verificar se tem o msm titulo, se tiver  campo serah limpado
   If EdNome.Text = 'Digite o Nome ou Descrição'
   Then Begin
       EdNome.Text := '';
   End;

end;

procedure TFPedCompra.EdNomeExit(Sender: TObject);
begin
  inherited;
   // se nao possuir valor, o titulo eh retomado
   If EdNome.Text = ''
   Then Begin
       EdNome.Text := 'Digite o Nome ou Descrição';
   End;

end;

procedure TFPedCompra.DBGridConvertKeyPress(Sender: TObject;
  var Key: Char);
begin
    AtualizaQntConvertida;
    If Key=#13
    Then Begin
          EdQtdConvert.SetFocus;
    end;
    If Key=#27
    Then Begin
       PQtdConvert.Visible:=False;
    End;
end;

procedure TFPedCompra.AtualizaQntConvertida;
begin
  // filtra tabela unidade pela unidade de venda do produto
   FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE', DMESTOQUE.Alx.FieldByName('cod_unidsai').AsString, '');
   If DMESTOQUE.TUnidade.FieldByName('ARREDONDAR').AsString='1'
   Then Begin
       EdQtdConvert.ValueNumeric:=Round(EDQuantidade.ValueNumeric*DMESTOQUE.Alx.FieldByName('QTDCONVERT').Value);
   End
   Else Begin
       EdQtdConvert.ValueNumeric:=EDQuantidade.ValueNumeric*DMESTOQUE.Alx.FieldByName('QTDCONVERT').Value;
   End;

   XCodUnidItenProd :=  DMESTOQUE.Alx.FieldByName('COD_UNIDADE').AsInteger;

end;

procedure TFPedCompra.DBGridConvertCellClick(Column: TColumn);
begin
  inherited;
   AtualizaQntConvertida;
end;

procedure TFPedCompra.DBGridConvertExit(Sender: TObject);
begin
  inherited;
   AtualizaQntConvertida;
//   XCodUnidItenProd:=DMESTOQUE.Alx.fieldByName('SIGLA_UNID').AsInteger;
end;



// - 15/01/2009: imprimir danfe da nota enviada
procedure TFPedCompra.MostraDanfe(XCOD_PEDIDO:INTEGER);
begin
  inherited;

// - 15/01/2009: SETA NA TABELA TMP DESC1 COMO 2 DE ENTRADA PARA APARECER NO RELATORIO DA DANFE
      if NOT(XView.FieldByName('NUMDEV').AsString = 'OUT')THEN
      FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'NUMPED' ,XView.FieldByName('NUMDEV').AsString, '');
      FiltraTabela(DMSAIDA.TFiscPV, 'DOCFISSAIDA', 'COD_PEDIDO', DMSAIDA.TPedV.fieldByName('cod_pedvenda').AsString, '');

      DMMACS.TMP.Close;
      DMMACS.TMP.SQL.Clear;
      DMMACS.TMP.SQL.Add('INSERT INTO TMP (TMP.DESC1) VALUES (:DESC)');
      DMMACS.TMP.ParamByName('DESC').AsString := '2';
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
      DMESTOQUE.Alx.SQL.Add('  select itenspedc.cod_estoque, itenspedc.valortotal, itenspedc.qtdeprod, itenspedc.valunit, itenspedc.aliqipi AS aplicarst, itenspedc.cfop, ');
      DMESTOQUE.Alx.SQL.Add('  estoque.cod_subprod, subproduto.descricao, ');
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
      DMESTOQUE.Alx.ParamByName('COD').AsInteger := XCOD_PEDIDO;
      DMESTOQUE.Alx.Open;


      DMESTOQUE.Alx1.Close;
      DMESTOQUE.Alx1.SQL.Clear;
      DMESTOQUE.Alx1.SQL.Add('  SELECT pedcompra.cod_pedcomp, pedcompra.cod_fornec, pedcompra.dtpedcomp, pedcompra.numped, pedcompra.valor, pedcompra.dtfech, ');
      DMESTOQUE.Alx1.SQL.Add('  fornecedor.cod_pessoa, fornecedor.cod_interno as CODCLI, pessoa.nome as nomedes, pessoa.cpfcnpj, pessoa.bairro, pessoa.cep, pessoa.endereco, pessoa.endnumero, ');
      DMESTOQUE.Alx1.SQL.Add('  pessoa.telrel, pessoa.cod_cidade, cidade.nome as NOMECIDADE, cidade.cod_estado, estado.uf_estado, ');
      DMESTOQUE.Alx1.SQL.Add('  docfis.baseicms, docfis.vlricms, docfis.bascalsubs, docfis.dtentsaid, docfis.dtemissao, docfis.vlrdesconto, docfis.horasaid, docfis.vlricmsubs, docfis.vlrtotprod, ');
      DMESTOQUE.Alx1.SQL.Add('  docfis.vlrfrete, docfis.vlrseg, docfis.nfeambiente, docfis.vlroutrasdesp, docfis.vlrtotipi, docfis.vlrtotdocnf, ');
      DMESTOQUE.Alx1.SQL.Add('  docfis.numdocfis,docfis.nfestatus, docfis.nfechave, docfis.nfeprotocolo, docfis.nfeserie, cfop.descricao as descricaocfop, cfop.cfop, docfis.obs, ');
      DMESTOQUE.Alx1.SQL.Add('  docfis.freteconta, docfis.placa, docfis.ufplaca, docfis.quantfrete, docfis.especiefrete, docfis.marcafrete, docfis.pesobruto, docfis.pesoliq, docfis.cod_transp, docfis.numconhec ');
      DMESTOQUE.Alx1.SQL.Add('  FROM pedcompra ');
      DMESTOQUE.Alx1.SQL.Add('  left join fornecedor on pedcompra.cod_fornec = fornecedor.cod_fornec ');
      DMESTOQUE.Alx1.SQL.Add('  left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
      DMESTOQUE.Alx1.SQL.Add('  left join cidade on pessoa.cod_cidade = cidade.cod_cidade ');
      DMESTOQUE.Alx1.SQL.Add('  left join estado on cidade.cod_estado = estado.cod_estado ');
      DMESTOQUE.Alx1.SQL.Add('  left join docfis on pedcompra.cod_pedcomp = docfis.cod_pedido ');
      DMESTOQUE.Alx1.SQL.Add('  left join cfop on docfis.cod_cfop = cfop.cod_cfop ');
      DMESTOQUE.Alx1.SQL.Add('  where pedcompra.cod_pedcomp = :COD');
      DMESTOQUE.Alx1.ParamByName('COD').AsInteger := XCOD_PEDIDO;
      DMESTOQUE.Alx1.Open;


      //Paulo 27/10/2010: Seleciona cfop2
      DMESTOQUE.Alx3.Close;
      DMESTOQUE.Alx3.SQL.Clear;
      DMESTOQUE.Alx3.SQL.Add('  SELECT  cfop.descricao as descricaocfop, cfop.cfop, cfop.cfop as cod_unidade, cfop.cfop as sigla_unid ');
      DMESTOQUE.Alx3.SQL.Add('  FROM pedcompra ');
      DMESTOQUE.Alx3.SQL.Add('  left join fornecedor on pedcompra.cod_fornec = fornecedor.cod_fornec ');
      DMESTOQUE.Alx3.SQL.Add('  left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
      DMESTOQUE.Alx3.SQL.Add('  left join cidade on pessoa.cod_cidade = cidade.cod_cidade ');
      DMESTOQUE.Alx3.SQL.Add('  left join estado on cidade.cod_estado = estado.cod_estado ');
      DMESTOQUE.Alx3.SQL.Add('  left join docfis on pedcompra.cod_pedcomp = docfis.cod_pedido ');
      DMESTOQUE.Alx3.SQL.Add('  left join cfop on docfis.cod_cfop2 = cfop.cod_cfop ');
      DMESTOQUE.Alx3.SQL.Add('  where pedcompra.cod_pedcomp = :COD');
      DMESTOQUE.Alx3.ParamByName('COD').AsInteger := XCOD_PEDIDO;
      DMESTOQUE.Alx3.Open;

      //Paulo 27/10/210: dados de transporte
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
      DMESTOQUE.Alx2.ParamByName('CODGERADOR').AsInteger := XCOD_PEDIDO;
      DMESTOQUE.Alx2.Open;

      FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');


     DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP1').AsString:='';
     DMMACS.TLoja.Post;
     DMMACS.Transaction.CommitRetaining;

      FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMESTOQUE.Alx1.FieldByName('COD_PESSOA').AsString, '');

     FMzrNfe.FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfDANFEdev.frf');
     FMzrNfe.FSDanfe.ShowReport;

     DMMACS.TMP.Close;
     DMMACS.TMP.SQL.Clear;
     DMMACS.TMP.SQL.Add('DELETE FROM TMP');
     DMMACS.TMP.ExecSQL;
     DMMACS.Transaction.CommitRetaining;

end;
// - 15/01/2009: verifica se eh nfe e libera popup para o botão fiscal
procedure TFPedCompra.BtnFiltrarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
     DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select docfis.cod_pedido from docfis');
      DMESTOQUE.Alx.SQL.Add('left join pedcompra on docfis.cod_pedido = pedcompra.cod_pedcomp');
      DMESTOQUE.Alx.SQL.Add('where pedcompra.numped = :COD and docfis.nfestatus = 1');
      DMESTOQUE.Alx.ParamByName('COD').AsString := XView.FieldByName('NUMPED').AsString;
      DMESTOQUE.Alx.Open;

      if DMESTOQUE.Alx.IsEmpty then begin
         BtnFiltrar.PopupMenu := nil;
     end else begin
         BtnFiltrar.PopupMenu := PMNFe;
     end;
end;
// - 15/01/2009: click em imprimir danfe popup
procedure TFPedCompra.ImprimirDANFE1Click(Sender: TObject);
begin
  inherited;
    FMzrNfe := TFMzrNfe.Create(FMzrNfe);

    MostraDanfe(XView.FieldByName('COD_PEDCOMP').AsInteger);

    FMzrNfe := nil;
end;
// - 15/01/2009:  abril xml do pedido
procedure TFPedCompra.AbrirXML1Click(Sender: TObject);
var
   caminho :String;
begin
  inherited;
   FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, '');
   if DMENTRADA.TFiscPC.IsEmpty then begin
       Mensagem('   A T E N Ç Ã O   ','Não há nenhum XML para o pedido selecionado.','',1,1,false,'I');
       Exit;
   end;
   FMzrNfe := TFMzrNfe.Create(FMzrNfe);
//    caminho := FNFe.XDir+'enviNFe\'+DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString+'-enviNFe.xml';
    if (fileExists(caminho)) then begin
       ShellExecute(Handle, nil, Pchar(caminho), nil, nil, SW_SHOWNORMAL);
    end else begin
       Mensagem('   A T E N Ç Ã O   ','Arquivo XML não encontrado.','',1,1,false,'I');
    end;
    FMzrNfe := nil;
end;
// - 15/01/2009: abre xml resposta do pedido
procedure TFPedCompra.AbrirXMLResposta1Click(Sender: TObject);
var
   caminho :String;
begin
  inherited;
   FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, '');
   FMzrNfe := TFMzrNfe.Create(FMzrNfe);
//    caminho := FNFe.XDir+'retPedNFe\'+DMENTRADA.TFiscPC.FieldByName('NFERECIBO').AsString+'-pro-rec.xml';
    if (fileExists(caminho)) then
       ShellExecute(Handle, nil, Pchar(caminho), nil, nil, SW_SHOWNORMAL);
   FMzrNfe := nil;
end;

// - 15/01/2009: copia chave nfe do pedido na area de transferencia
procedure TFPedCompra.CopiarChaveNFe1Click(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, '');

    Clipboard.AsText := DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString;
end;

// - 15/01/2009:  copia chave nfe do pedido na area de transferencia E ABRE O SITE NACIONAL DO SEFAZ
procedure TFPedCompra.ConsultaNFeNacinal1Click(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, '');
    Clipboard.AsText := DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString;
    shellexecute(handle, 'open', 'https://www.nfe.fazenda.gov.br/portal/FormularioDePesquisa.aspx?tipoconsulta=completa', NiL, NiL, SW_SHOWNORMAL);
end;

// - 15/01/2009:  copia chave nfe do pedido na area de transferencia E ABRE O SITE DO SEFAZ PR
procedure TFPedCompra.ConsultaNFePR1Click(Sender: TObject);
begin
  inherited;
  FiltraTabela(DMENTRADA.TFiscPC, 'DOCFIS', 'COD_PEDIDO', XView.FieldByName('COD_PEDCOMP').AsString, '');
    Clipboard.AsText := DMENTRADA.TFiscPC.FieldByName('NFECHAVE').AsString;
    shellexecute(handle, 'open', 'http://www.fazenda.pr.gov.br/modules/conteudo/conteudo.php?conteudo=296', NiL, NiL, SW_SHOWNORMAL);
end;

procedure TFPedCompra.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if State = [] then
  begin
    if DMESTOQUE.TSlave.Recno mod 2 = 1 then
      DBGrid1.Canvas.Brush.Color := $00EEEEEE
   else
      DBGrid1.Canvas.Brush.Color := clWhite;
  end;


  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TFPedCompra.DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if State = [] then
  begin
    if XView.Recno mod 2 = 1 then
      DBGridCadastroPadrao.Canvas.Brush.Color := $00EEEEEE
   else
      DBGridCadastroPadrao.Canvas.Brush.Color := clWhite;
  end;
  DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFPedCompra.DBGridCadastroPadraoDblClick(Sender: TObject);
begin
  inherited;

   // A ATIVIDADE DA LOJA TEM Q SER IGUAL A EQUIPE
   If DMMACS.TLoja.FieldByName('ATIVIDADE').AsString = 'EQUIPE'
   Then begin
       If (XView.FieldByName('SITUACAO').AsString <> 'ABERTO')
       Then Begin
           Mensagem('    A T E N Ç Ã O   ','O Pedido não está "Aberto".','',1,1,false,'I');
           Exit;
       End;

       DMENTRADA.TAlx.Close;
       DMENTRADA.TAlx.SQL.Clear;
       DMENTRADA.TAlx.SQL.Add('update PEDCOMPRA set EXPORT = :EXP');

       If XView.FieldByName('EXPORT').AsString = 'X'
       Then Begin
	       	DMENTRADA.TAlx.ParamByName('EXP').AsString := '';
          	DMENTRADA.TAlx.SQL.Add('where EXPORT = '+#39+'X'+#39);
       End
       Else Begin
       	DMENTRADA.TAlx.SQL.Add('where COD_PEDCOMP = :OLD_COD_ORDEM');
	       	DMENTRADA.TAlx.ParamByName('EXP').AsString := 'X';
       	DMENTRADA.TAlx.ParamByName('OLD_COD_ORDEM').AsInteger := XView.FieldByName('COD_PEDCOMP').AsInteger;
       End;


       DMENTRADA.TAlx.ExecSQL;
       DMENTRADA.IBT.CommitRetaining;
       ExecutaLiberaDados;
   End; 
end;

procedure TFPedCompra.Exportar1Click(Sender: TObject);
begin
  inherited;
   // SELECIONANDO OS PEDIDOS SELECIONADAS E QUE AINDA NAO FORAM EXPORTADAS
   DMENTRADA.TAlx.Close;
   DMENTRADA.TAlx.SQL.Clear;
   DMENTRADA.TAlx.SQL.Add(' select count(pedcompra.cod_pedcomp) as TOTAL from pedcompra where (pedcompra.export = '+#39+'X'+#39+')');
   DMENTRADA.TAlx.SQL.Add(' and (pedcompra.situacao = '+#39+'ABERTO'+#39+') and (pedcompra.export = '+#39+'X'+#39+') ');
   DMENTRADA.TAlx.Open;

   // VERIFICA SE EXISTE NO MINIMO UMA ORDEM FILTRADA
   If DMENTRADA.TAlx.FieldByName('TOTAL').AsInteger > 0
   Then begin
       If DMENTRADA.TAlx.FieldByName('TOTAL').AsInteger = 1
       Then Begin
           // COMO VAI SER UMA UNICA ORDEM A SER EXPORTADA, EH FEITO ESSA SQL PARA BUSCAR O "NUMERO" QUE SERA EXIBIDO NA MENSAGEM
           DMENTRADA.TPedC.Close;
           DMENTRADA.TPedC.SQL.Clear;
           DMENTRADA.TPedC.SQL.Add(' select * from pedcompra where (pedcompra.export = '+#39+'X'+#39+')');
           DMENTRADA.TPedC.Open;
           If Mensagem('Exportação de Pedidos de Compra','Deseja realmente exporta O Pedido de Compra Nº' + DMENTRADA.TPedC.FieldByname('numped').AsString + ' ?','',2,3,false,'I') = 2
           Then Begin
               Exporta_Pedido;
               // exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
//               Exporta_OrdensServico;
           End
           Else Begin
               Exit;
           End;
       End
       Else Begin
           If Mensagem('Exportação de Pedido de Compra','Deseja realmente exportar os ' + DMENTRADA.TPedC.FieldByname('NUMPED').AsString + ' Pedidos de Compra selecionadas ?','',2,2,false,'I') = 2
           Then Begin
               // exporta as ordens de servico selecionadas para outro banco, gerando novas ordens com os mesmos produtos, servicos, funcionario, equipe, etc
//               Exporta_OrdensServico;
           End
           Else Begin
               Exit;
           End;
       End;
//       AtualizaGridConsulta('ORIGEM');
   End
   Else Begin
       Mensagem('   A T E N Ç Ã O   ','Não há Pedidos de Compra aberto para exportação','',1,1,false,'A');
   End;
end;

procedure TFPedCompra.DBNumPedExit(Sender: TObject);
begin
  inherited;
   DMENTRADA.TAlx.Close;
   DMENTRADA.TAlx.SQL.Clear;
   DMENTRADA.TAlx.SQL.Add(' select * from vwpedc where (vwpedc.numped=:numero) and (vwpedc.cod_pedcomp<>:codigo) ');
   DMENTRADA.TAlx.ParamByName('numero').AsString:=EdNumeroPedido.Text;
   DMENTRADA.TAlx.ParamByName('codigo').AsString:=XCodPedido;
   DMENTRADA.TAlx.Open;
   If Not DMENTRADA.TAlx.IsEmpty
   Then Begin
		MessageDlg('O Pedido com este número já foi cadastrado.', mtWarning, [mbOK], 0);
   End
end;

procedure TFPedCompra.BtnDadosAdicClick(Sender: TObject);
Var
	XCodigoRecupera: String;
begin
	//Salva simulando o pressionamento da tecla gravar
   XExiste:=True;
   XCodigoRecupera:=XCodPedido;
   BtnGravar.Click();
   //filtra a venda para consulta
   If FiltraTabela(DMENTRADA.WPedc, 'VWPEDC', 'COD_PEDCOMP', XCodigoRecupera, '')
   Then Begin
       BtnConsultar.Click();
	    XExiste:=False;       
   	GeraFiscalPed;
       FiltraSlave;
		//Efetua Releitura dos itens caso tenham sido modificados na tela do fiscal
       EdValoIcmsSubstituicao.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLRICMSSUBSTITUICAO').AsCurrency;
       EdValorFrete.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLRFRETE').AsCurrency;
       EdValorOutros.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLROUTROS').AsCurrency;
       EdValorIpi.ValueNumeric := DMENTRADA.TPedC.FieldByName('VLRIPI').AsCurrency;
   End
   Else Begin
   	MessageDlg('Não foi possível visualizar o Fiscal. Tente novamente agora', mtWarning, [mbOK], 0);
   End;
end;

procedure TFPedCompra.EfetuarDevoluo1Click(Sender: TObject);
begin
  inherited;
    //INSERE COMANDOS PARA FILTRAR
    DMESTOQUE.TSlave.Close;
    DMESTOQUE.TSlave.SQL.Clear;
    DMESTOQUE.TSlave.SQL.Add(' Select itenspedc.cod_itenspedc, itenspedc.cfop, itenspedc.cod_lote, Lote.Lote, itenspedc.cod_pedcompra, itenspedc.cod_estoque, itenspedc.COD_UNIDADE,');
    DMESTOQUE.TSlave.SQL.Add(' itenspedc.qtdeprod, itenspedc.qtdest, ItensPedc.valortotal, itenspedc.baseicmssubs, itenspedc.descpro, itenspedc.valunit, ');
    DMESTOQUE.TSlave.SQL.Add(' itenspedc.aliqicms, itenspedc.vlricms, itenspedc.baseicms, itenspedc.aliqipi, itenspedc.vlricmssubs, itenspedc.aliqipi, itenspedc.vlripi, cst.cod_sit_trib as CST, ');
    DMESTOQUE.TSlave.SQL.Add(' subproduto.descricao, subproduto.marca, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS CODPRODFABR ');
    DMESTOQUE.TSlave.SQL.Add(' From itenspedc left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.TSlave.SQL.Add(' left join lote on itenspedc.cod_lote = lote.cod_lote ');
    DMESTOQUE.TSlave.SQL.Add(' left join cst on itenspedc.cod_cst = cst.cod_cst ');
    DMESTOQUE.TSlave.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
    DMESTOQUE.TSlave.SQL.Add(' Where (itenspedc.cod_pedcompra = :CODPEDCOMPRA)');
    DMESTOQUE.TSlave.ParamByName('CODPEDCOMPRA').AsString:=DMENTRADA.WPedc.FieldByName('cod_pedcomp').AsString;
    DMESTOQUE.TSlave.SQL.Add(' order by itenspedc.cod_itenspedc desc');
    DMESTOQUE.TSlave.Open;

    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add(' Delete from tmp ');
    DMMACS.TALX.ExecSQL;
    DMMACS.Transaction.CommitRetaining;

    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('  Select itenspedc.cod_itenspedc, itenspedc.cfop, itenspedc.cod_lote, Lote.Lote, itenspedc.cod_pedcompra, itenspedc.cod_estoque, itenspedc.COD_UNIDADE, ');
    DMESTOQUE.Alx.SQL.Add('   tmp.vlr1 as qtdeprod, itenspedc.qtdest, tmp.vlr3 as  valortotal, itenspedc.descpro, tmp.vlr2 as valunit, ');
    DMESTOQUE.Alx.SQL.Add('   itenspedc.aliqicms, tmp.vlr4 as vlricms, tmp.vlr7 as Baseicms, tmp.vlr8 as BaseSubst, tmp.vlr5 as VlrSubstituicao, itenspedc.aliqipi, tmp.vlr6 as vlripi, cst.cod_sit_trib as CST, ');
    DMESTOQUE.Alx.SQL.Add('   subproduto.descricao, subproduto.marca,  subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS CODPRODFABR ');
    DMESTOQUE.Alx.SQL.Add('   from tmp ');
    DMESTOQUE.Alx.SQL.Add('    left join itenspedc on tmp.int1 = itenspedc.cod_itenspedc ');
    DMESTOQUE.Alx.SQL.Add('   left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
    DMESTOQUE.Alx.SQL.Add('   left join lote on itenspedc.cod_lote = lote.cod_lote ');
    DMESTOQUE.Alx.SQL.Add('   left join cst on itenspedc.cod_cst = cst.cod_cst ');
    DMESTOQUE.Alx.SQL.Add('   Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
    DMESTOQUE.Alx.Open;
    
    XCod_tmp:=1;
    PDevolucao.Visible:=True;
    PDevolucao.BringToFront;
    DBGrid3.SetFocus;
end;

procedure TFPedCompra.DBGrid3CellClick(Column: TColumn);
begin
  inherited;
	If Not DMESTOQUE.TSlave.IsEmpty
   Then Begin
		EdDevQuant.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('qtdeprod').AsCurrency;
       EdDevVlrUnit.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('valortotal').AsCurrency/EdDevQuant.ValueNumeric;
       EdDevVlrTot.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('valortotal').AsCurrency;
       EdDevVlrIcms.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('vlricms').AsCurrency;
       EdDevVlrSubst.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('vlricmssubs').AsCurrency;
		EdDevBaseIcms.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('baseicms').AsCurrency;; //Base Icms OP
		EdDevBaseSubst.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('baseicmssubs').AsCurrency;//Base Substituição
		EdDevAliqIIcms.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('aliqicms').AsCurrency;//Aliquota Icms
		EdDevAliqIpi.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('aliqipi').AsCurrency; //Aliquota Ipi   
   End;
end;

procedure TFPedCompra.PDevolucaoExit(Sender: TObject);
begin
  inherited;
	If PDevolucao.Visible=True Then
       PDevolucao.SetFocus;
end;

procedure TFPedCompra.PConsultaExit(Sender: TObject);
begin
	If PDevolucao.Visible=True Then
   	Exit;
  inherited;

end;

procedure TFPedCompra.BitBtn11Click(Sender: TObject);
begin
  inherited;
	PDevolucao.Visible:=False;
end;

procedure TFPedCompra.BitBtn1Click(Sender: TObject);
begin
  inherited;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' Select * from tmp ');
   DMMACS.TMP.Open;
   
   DMMACS.TMP.Insert;
   DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
   DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_itenspedc').AsInteger;
   DMMACS.TMP.FieldByName('VLR1').AsCurrency:=EdDevQuant.ValueNumeric;    //quantidade
   DMMACS.TMP.FieldByName('VLR2').AsCurrency:=EdDevVlrUnit.ValueNumeric;  //Valor Unitario
   DMMACS.TMP.FieldByName('VLR3').AsCurrency:=EdDevVlrTot.ValueNumeric;   //Valor Total
   DMMACS.TMP.FieldByName('VLR4').AsCurrency:=EdDevVlrIcms.ValueNumeric;  //Valor Icms
   DMMACS.TMP.FieldByName('VLR5').AsCurrency:=EdDevVlrSubst.ValueNumeric; //Valor Substituicao Tributaria
   DMMACS.TMP.FieldByName('VLR6').AsCurrency:=EdDevIpi.ValueNumeric;      //Valor IPI
   DMMACS.TMP.FieldByName('VLR7').AsCurrency:=EdDevBaseIcms.ValueNumeric; //Base Icms OP
   DMMACS.TMP.FieldByName('VLR8').AsCurrency:=EdDevBaseSubst.ValueNumeric;//Base Substituição
   DMMACS.TMP.FieldByName('VLR9').AsCurrency:=EdDevAliqIIcms.ValueNumeric;//Aliquota Icms
   DMMACS.TMP.FieldByName('VLR10').AsCurrency:=EdDevAliqIpi.ValueNumeric; //Aliquota Ipi
   DMMACS.TMP.Post;
   DMMACS.Transaction.CommitRetaining;

   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('  Select itenspedc.cod_itenspedc, itenspedc.cfop, itenspedc.cod_lote, Lote.Lote, itenspedc.cod_pedcompra, itenspedc.cod_estoque, itenspedc.COD_UNIDADE, ');
   DMESTOQUE.Alx.SQL.Add('   tmp.vlr1 as qtdeprod, itenspedc.qtdest, tmp.vlr3 as  valortotal, itenspedc.descpro, tmp.vlr2 as valunit, ');
   DMESTOQUE.Alx.SQL.Add('   itenspedc.aliqicms, tmp.vlr4 as vlricms, tmp.vlr7 as Baseicms, tmp.vlr8 as BaseSubst, tmp.vlr5 as VlrSubstituicao, itenspedc.aliqipi, tmp.vlr6 as vlripi, cst.cod_sit_trib as CST, ');
   DMESTOQUE.Alx.SQL.Add('   subproduto.descricao, subproduto.marca,  subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS CODPRODFABR ');
   DMESTOQUE.Alx.SQL.Add('   from tmp ');
   DMESTOQUE.Alx.SQL.Add('    left join itenspedc on tmp.int1 = itenspedc.cod_itenspedc ');
   DMESTOQUE.Alx.SQL.Add('   left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.Alx.SQL.Add('   left join lote on itenspedc.cod_lote = lote.cod_lote ');
   DMESTOQUE.Alx.SQL.Add('   left join cst on itenspedc.cod_cst = cst.cod_cst ');
   DMESTOQUE.Alx.SQL.Add('   Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.Alx.Open;
end;

procedure TFPedCompra.BitBtn5Click(Sender: TObject);
begin
  inherited;
	If MessageDlg('Deseja realmente efetuar devolução desta mercadoria?', mtConfirmation, [mbYes, mbNo], 0)=mryes
   Then Begin
       //EFETUA CONTROLE DE ACESSO
       If ControlAccess('PEDVENDA', 'M')=False Then
           Exit;

       FMenu.XRemessaGarantia:=False;
       FMenu.XSimplesRemessa:=False;
       FMenu.XDevolucao:=True;
       FMenu.XLancAutoDev:=True;//DEVERÁ ACESSAR A TELA DE DEVOLUÇÕES COM LANÇAMENTO AUTOMATICO
       AbrirForm(TFPEDVENDA, FPEDVENDA, 0);
       PDevolucao.Visible:=false;
   End;
end;

procedure TFPedCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	{If PCadastro.Visible=True
   Then Begin
       if (Key = VK_right) then
       begin
         Key:= 0;
         Perform(CM_DIALOGKEY, VK_TAB, 0);
       end;
       if Key = VK_Left then
       begin
         Key:= 0;
         keybd_event(VK_Shift, 0, 0, 0);
         keybd_event(VK_TAB,0,0,0);
         keybd_event(VK_SHIFT, 0, KEYEVENTF_KEYUP, 0);
       end;
   End; }
   If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\pedcompra.lgm');
       DBGrid1.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\pedcompraProdutos.lgm');

       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;

   //Paulo 15/07/2010: Função para usar as setas no lugar do tab
   {if not(PConsulta.Visible) then
   begin
      if (Key = VK_RIGHT) then
      begin
          Key:= 0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
      end;
      if Key = VK_LEFT then
      begin
         Key:= 0;
         keybd_event(VK_Shift, 0, 0, 0);
         keybd_event(VK_TAB,0,0,0);
         keybd_event(VK_SHIFT, 0, KEYEVENTF_KEYUP, 0);
      end;
   end; }
end;

procedure TFPedCompra.BitBtn12Click(Sender: TObject);
begin
  inherited;
	convertunid
end;

procedure TFPedCompra.BitBtn13Click(Sender: TObject);
begin
  inherited;
    AbrirForm(TFConvertUnid, FConvertUnid, 0);
end;

procedure TFPedCompra.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   PQtdConvert.Visible:=False;
end;

procedure TFPedCompra.BtnGravarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_LEFT Then
       EdValorPed.SetFocus;
   If Key=VK_RIGHT Then
       BtnCancelar.SetFocus;
end;

procedure TFPedCompra.BtnCancelarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_LEFT Then
       BtnGravar.SetFocus;
   If Key=VK_RIGHT Then
       BtnDadosAdic.SetFocus;
end;

procedure TFPedCompra.BtnDadosAdicKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_LEFT Then
       DBColorEdit3.SetFocus;
   If Key=VK_RIGHT Then
       BtnCancelar.SetFocus;
end;

procedure TFPedCompra.DBColorEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EdNumeroPedido.SetFocus;
	If Key=VK_LEFT Then
       BtnDadosAdic.SetFocus;
end;

procedure TFPedCompra.EdNumeroPedidoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EdValorPed.SetFocus;
	If Key=VK_LEFT Then
       DBColorEdit3.SetFocus;
end;

procedure TFPedCompra.EdValorPedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EdCodCli.SetFocus;
	If Key=VK_LEFT Then
       EdValorPed.SetFocus;
end;

procedure TFPedCompra.EdCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EdCodVend.SetFocus;
	If Key=VK_LEFT Then
       EdValorPed.SetFocus;
end;

procedure TFPedCompra.EdCodVendKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       BtnProcVend.SetFocus;
	If Key=VK_LEFT Then
       EdCodCli.SetFocus;
end;

procedure TFPedCompra.BtnProcVendKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EDFORMPAG.SetFocus;
	If Key=VK_LEFT Then
       BtnProcVend.SetFocus;
end;

procedure TFPedCompra.EDCODFORMPAGKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       BtnProcFormPag.SetFocus;
	If Key=VK_LEFT Then
       BtnProcVend.SetFocus;
end;

procedure TFPedCompra.BtnProcFormPagKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       DBdata.SetFocus;
	If Key=VK_LEFT Then
       BtnProcFormPag.SetFocus;
end;

procedure TFPedCompra.DBDATAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   {If Key=VK_RIGHT Then
       EDDescPed.SetFocus;
	If Key=VK_LEFT Then
       BtnProcFormPag.SetFocus;}
end;

procedure TFPedCompra.EDDescPedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EdDescMoeda.SetFocus;
	If Key=VK_LEFT Then
       DBDATA.SetFocus;
end;

procedure TFPedCompra.BtnInsertProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       BtnDeleteList.SetFocus;
	If Key=VK_LEFT Then
       BtnAbrePAliq.SetFocus;
end;

procedure TFPedCompra.BtnProcProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EDCodBarra.SetFocus;
	If Key=VK_LEFT Then
       BtnDeleteList.SetFocus;
end;

procedure TFPedCompra.EDCodBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EDCodFab.SetFocus;
	If Key=VK_LEFT Then
       BtnProcProd.SetFocus;
end;

procedure TFPedCompra.EDCodFabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EDQuantidade.SetFocus;
	If Key=VK_LEFT Then
       EDCodBarra.SetFocus;
end;

procedure TFPedCompra.EDValUnitKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EDDesc.SetFocus;
	If Key=VK_LEFT Then
       EDQuantidade.SetFocus;
end;

procedure TFPedCompra.EDDescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EDTotal.SetFocus;
	If Key=VK_LEFT Then
       EDValUnit.SetFocus;
end;

procedure TFPedCompra.EDTotalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EdImpCST.SetFocus;
	If Key=VK_LEFT Then
       EDValUnit.SetFocus;
end;

procedure TFPedCompra.EdImpCSTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EdimpIcms.SetFocus;
	If Key=VK_LEFT Then
       EDTotal.SetFocus;
end;

procedure TFPedCompra.EdimpIcmsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EdImpIpi.SetFocus;
	If Key=VK_LEFT Then
       EdImpCST.SetFocus;
end;

procedure TFPedCompra.EdImpIpiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EdBCIcms.SetFocus;
	If Key=VK_LEFT Then
       EdimpIcms.SetFocus;
end;

procedure TFPedCompra.EdBCIcmsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EdImpVlrIcms.SetFocus;
	If Key=VK_LEFT Then
       EdImpIpi.SetFocus;
end;

procedure TFPedCompra.EdImpVlrIcmsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EdImpVlrIpi.SetFocus;
	If Key=VK_LEFT Then
       EdBCIcms.SetFocus;
end;

procedure TFPedCompra.EdImpVlrIpiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       EdLocal.SetFocus;
	If Key=VK_LEFT Then
       EdImpVlrIcms.SetFocus;
end;

procedure TFPedCompra.BtnAbrePAliqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       BtnInsertProd.SetFocus;
	If Key=VK_LEFT Then
       EdLocal.SetFocus;
end;

procedure TFPedCompra.EdLocalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RIGHT Then
       BtnAbrePAliq.SetFocus;
	If Key=VK_LEFT Then
       EdImpVlrIcms.SetFocus;
end;

procedure TFPedCompra.BtnDeleteListExit(Sender: TObject);
begin
  inherited;
	BtnProcProd.SetFocus;
end;

//Paulo 14/09/2010: Função verifica se o fornecedor esta cadastrado senão ele cadastra referente a NFe
Function TFPedCompra.ImportaFornecedor(XCNPJ, XRazao, XFAnt, XRua, XNro,  XBairro,XCodIBGE, XMunic, XUF, XCep, XFone, XIE: String):WideString;
var
  XCodAux,XcodPessoa: Integer;
begin

	  //---------------------TABELA PESSOA------------------------------//
     //Verifica se tem alguma coisa na tabela pessoa senão insere uma nova ou apenas atualiza
     if FiltraTabela(DMPESSOA.TALX, 'PESSOA', 'CPFCNPJ',XCNPJ,'')= false  then
     begin
     	  

         XCodAux:=InserReg(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA');
         DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsInteger:=XCodAux;
         DMPESSOA.TPessoa.Edit;
         //Paulo 22/09/2010: caso o nome fantasia esteja vazio insere a razão
         if XFAnt = '' then
            DMPESSOA.TPessoa.FieldByName('NOME').AsString:= XRazao
         else
         	 DMPESSOA.TPessoa.FieldByName('NOME').AsString:= XFAnt;
            
         DMPESSOA.TPessoa.FieldByName('ENDERECO').AsString:= XRua;
         DMPESSOA.TPessoa.FieldByName('BAIRRO').AsString:= XBairro;
         DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsInteger:=retornaCodCidade(XCodIBGE,XMunic, XUF);
         DMPESSOA.TPessoa.FieldByName('CEP').AsString:= XCep;
         DMPESSOA.TPessoa.FieldByName('TELREL').AsString:= XFone;
         DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString:= XCNPJ;
         DMPESSOA.TPessoa.FieldByName('ENDNUMERO').AsString:= XNro;
         DMPESSOA.TPessoa.Post;
         DMPESSOA.TransacPessoa.CommitRetaining;
         
     end
     else begin
        //Se for encontrado ele atualiza os dados
        DMPESSOA.TALX.Close;
        DMPESSOA.TALX.SQL.Clear;
        DMPESSOA.TALX.SQL.Add('update PESSOA set PESSOA.nome = :NOME, PESSOA.endereco = :ENDERECO, PESSOA.bairro = :BAIRRO,');
        DMPESSOA.TALX.SQL.Add('PESSOA.cod_cidade = :CODCIDADE, PESSOA.cep = :CEP, PESSOA.telrel = :TEL,');
        DMPESSOA.TALX.SQL.Add('PESSOA.endnumero = :ENDNUM  where PESSOA.cpfcnpj = :CNPJ');
        //Paulo 22/09/2010: caso o nome fantasia esteja vazio insere a razão
        if XFAnt = '' then
        	DMPESSOA.TALX.ParamByName('NOME').AsString:= XRazao
        else
        	DMPESSOA.TALX.ParamByName('NOME').AsString:= XFAnt;
              
        DMPESSOA.TALX.ParamByName('ENDERECO').AsString:= XRua;
        DMPESSOA.TALX.ParamByName('BAIRRO').AsString:= XBairro;
        DMPESSOA.TALX.ParamByName('CODCIDADE').AsInteger:=retornaCodCidade(XCodIBGE,XMunic, XUF);
        DMPESSOA.TALX.ParamByName('CEP').AsString:= XCep;
        DMPESSOA.TALX.ParamByName('TEL').AsString:= XFone;
        DMPESSOA.TALX.ParamByName('ENDNUM').AsString:= XNro;
        DMPESSOA.TALX.ParamByName('CNPJ').AsString:= XCNPJ;
        DMPESSOA.TALX.ExecSQL;
        DMPESSOA.TransacPessoa.CommitRetaining;
        DMPESSOA.TALX.Open;
     end;
     //---------------------FIM DA TABELA PESSOA------------------------------//

     //---------------------TABELA PESSOA JURIDICA----------------------------//
     //Retorna o código de pessoa
     FiltraTabela(DMPESSOA.TALX, 'PESSOA', 'CPFCNPJ',XCNPJ,'');
     XcodPessoa := DMPESSOA.TALX.FieldByName('cod_pessoa').AsInteger;
     XcodForn:=XcodPessoa;
     //Verifica na tabela PESSOAJ se tem alguma coisa se não ter nada insere um novo senão atualiza
     if FiltraTabela(DMPESSOA.TALX, 'PESSOAJ', 'COD_PESSOA', IntToStr(XcodPessoa),'')=false then
     begin
         XCodAux:=InserReg(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOAJ');
         DMPESSOA.TPessoaJ.FieldByName('COD_PESSOAJ').AsInteger:=XCodAux;
         DMPESSOA.TPessoaJ.Edit;
         DMPESSOA.TPessoaJ.FieldByName('COD_PESSOA').AsInteger:= XcodPessoa;
         DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString:= XIE;
         DMPESSOA.TPessoaJ.FieldByName('RAZAO_SOCIAL').AsString:= XRazao;
         DMPESSOA.TPessoaJ.Post;
         DMPESSOA.TransacPessoa.CommitRetaining;

     end
     else begin
     	  //se for encontrado ele atualiza os dados
         DMPESSOA.TALX.Close;
         DMPESSOA.TALX.SQL.Clear;
         DMPESSOA.TALX.SQL.Add('update PESSOAJ set PESSOAJ.razao_social = :RAZAO, PESSOAJ.insc_est = :IE');
         DMPESSOA.TALX.SQL.Add('where PESSOAJ.cod_pessoa = :CODPESSOA');
         DMPESSOA.TALX.ParamByName('RAZAO').AsString:= XRazao;
         DMPESSOA.TALX.ParamByName('IE').AsString:= XIE;
         DMPESSOA.TALX.ExecSQL;
         DMPESSOA.TransacPessoa.CommitRetaining;
         DMPESSOA.TALX.Open;


     end;
     //--------------FIM DA TABELA PESSOA JURIDICA--------------------//

     //-------------------TABELA FORNECEDOR---------------------------//
     if FiltraTabela(DMPESSOA.TALX, 'FORNECEDOR', 'COD_PESSOA', IntToStr(XcodPessoa),'')=false then
     begin
         XCodAux:=InserReg(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC');
         DMPESSOA.TFornecedor.FieldByName('COD_FORNEC').AsInteger:=XCodAux;
         DMPESSOA.TFornecedor.Edit;
         DMPESSOA.TFornecedor.FieldByName('COD_PESSOA').AsInteger:= XcodPessoa;
         DMPESSOA.TFornecedor.FieldByName('COD_INTERNO').AsString:=UltCodInt('FORNECEDOR', 'PES');
         DMPESSOA.TFornecedor.FieldByName('DATA_CAD').AsString:=DateToStr(Date);
         DMPESSOA.TFornecedor.Post;
         DMPESSOA.TransacPessoa.CommitRetaining;

     end;
     //----------------FIM DA TABELA FORNECEDOR------------------------//
end;

//Paulo 24/09/2010: Funão que encontra um pk válida para a tabela
Function TFPedCompra.EncontraPK(XTable: String; XCampo: String):integer;
var
	XControl: Integer;
Begin
	DMMACS.TCodigo.Close;
   DMMACS.TCodigo.SQL.Clear;
   DMMACS.TCodigo.SQL.Add('select * from codigo');
   DMMACS.TCodigo.Open;
	XControl := 0;
   //Vai testando se existe codigo para o campo necessario, se exite var incrementando ate achar um valor valido
	While (XControl <> 1)do
   Begin
       DMESTOQUE.Alx1.Close;
   	DMESTOQUE.Alx1.SQL.Clear;
  		DMESTOQUE.Alx1.SQL.Add('Select * from '+XTable);
  		DMESTOQUE.Alx1.SQL.Add(' where '+XTable+'.'+XCampo+' = :parametro');
  		DMESTOQUE.Alx1.ParamByName('PARAMETRO').AsInteger := DMMACS.TCodigo.FieldByName(XCampo).AsInteger;
   	DMESTOQUE.Alx1.Open;
   	if (not(DMESTOQUE.Alx1.IsEmpty))Then Begin
   		XControl := 0;
           DMMACS.TCodigo.Edit;
           DMMACS.TCodigo.FieldByName(XCampo).AsInteger := DMMACS.TCodigo.FieldByName(XCampo).AsInteger + 1;
           DMMACS.TCodigo.Post;
           DMMACS.Transaction.CommitRetaining;
       End
   	Else
   		XControl := 1;
   End;
   EncontraPK:= DMMACS.TCodigo.FieldByName(XCampo).AsInteger;

End;

//Paulo 17/09/2010: Função para retornar o código da cidade segundo a Nfe e atualizar o cod ibge da tabela
Function TFPedCompra.retornaCodCidade(XCodCid, XCidade, XEstado:String):integer;
begin
	//Procura a cidade pelo cod ibge senão encontrar ele atualiza a tabela
	if FiltraTabela(DMESTOQUE.Alx,'CIDADE','COD_IBGE',XCodCid,'')=True then
   begin
      retornaCodCidade:=DMESTOQUE.Alx.FieldByName('COD_CIDADE').AsInteger;
   end
   else begin
   //Seleciona a cidade e insere o código do ibge
   	if FiltraTabela(DMESTOQUE.Alx,'CIDADE','NOME',XCidade,'')=true then
       begin
           FiltraTabela(DMESTOQUE.Alx1,'ESTADO','UF_ESTADO',XEstado,'');
   		DMENTRADA.TAlx.Close;
   		DMENTRADA.TALX.SQL.Clear;
   		DMENTRADA.TALX.SQL.Add('select COD_CIDADE from CIDADE where CIDADE.NOME = :CIDNOME and CIDADE.COD_ESTADO = :CODEST');
   		DMENTRADA.TALX.ParamByName('CIDNOME').AsString := DMESTOQUE.Alx.FieldByName('NOME').AsString;
   		DMENTRADA.TALX.ParamByName('CODEST').AsString := DMESTOQUE.Alx1.FieldByName('COD_ESTADO').AsString;
   		DMENTRADA.TALX.Open;
           //atualiza o código do ibge
           DMGEOGRAFIA.TCidade.Close;
           DMGEOGRAFIA.TCidade.SQL.Clear;
           DMGEOGRAFIA.TCidade.SQL.Add('update CIDADE set CIDADE.COD_IBGE = :CODIBGE, CIDADE.COD_ESTADUAL = :CODEST,CIDADE.SIGLA = :SIGLA');
           DMGEOGRAFIA.TCidade.SQL.Add('where CIDADE.COD_CIDADE = :CODCID');
           DMGEOGRAFIA.TCidade.ParamByName('CODIBGE').AsInteger:=StrToInt(XCodCid);
           DMGEOGRAFIA.TCidade.ParamByName('CODEST').AsInteger:=StrToInt(XCodCid);
           DMGEOGRAFIA.TCidade.ParamByName('SIGLA').AsString:=DMESTOQUE.Alx1.FieldByName('UF_ESTADO').AsString;
           DMGEOGRAFIA.TCidade.ParamByName('CODCID').AsInteger:=DMENTRADA.TALX.FieldByName('COD_CIDADE').AsInteger;
           DMGEOGRAFIA.TCidade.ExecSQL;
           DMGEOGRAFIA.IBT.CommitRetaining;
           DMGEOGRAFIA.TCidade.Open;
       end
       else begin
           //insere uma nova cidade caso não exixta essa cidade no banco
           FiltraTabela(DMESTOQUE.Alx1,'ESTADO','UF_ESTADO',XEstado,'');

           DMGEOGRAFIA.TCidade.Close;
           DMGEOGRAFIA.TCidade.SQL.Clear;
           DMGEOGRAFIA.TCidade.SQL.Add('insert into CIDADE(COD_CIDADE, NOME, COD_ESTADO, COD_IBGE,COD_ESTADUAL, SIGLA)');
           DMGEOGRAFIA.TCidade.SQL.Add('values(:CODCIDADE, :NOME, :CODESTADO, :CODIBGE,:CODESTADUAL, :SIGLA) ');
           DMGEOGRAFIA.TCidade.ParamByName('CODCIDADE').AsInteger:=InserCodPk(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE');
           DMGEOGRAFIA.TCidade.ParamByName('NOME').AsString:=XCidade;
           DMGEOGRAFIA.TCidade.ParamByName('CODESTADO').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_ESTADO').AsInteger;
           DMGEOGRAFIA.TCidade.ParamByName('CODIBGE').AsInteger:=StrToInt(XCodCid);
           DMGEOGRAFIA.TCidade.ParamByName('CODESTADUAL').AsInteger:=StrToInt(XCodCid);
           DMGEOGRAFIA.TCidade.ParamByName('SIGLA').AsString:=DMESTOQUE.Alx1.FieldByName('UF_ESTADO').AsString;
           DMGEOGRAFIA.TCidade.ExecSQL;
           DMGEOGRAFIA.IBT.CommitRetaining;
           DMGEOGRAFIA.TCidade.Open;
       end;

   	retornaCodCidade:=DMENTRADA.TALX.FieldByName('COD_CIDADE').AsInteger;
   end;
end;

//Paulo 20/09/2010: Função que troca o ponto pela virgula
Function TFPedCompra.tiraPontoNfe(XValor: String):Real;
var
  XalxX, XalxV: String;
  cont, Xalg: integer;
begin
	XalxV:='x';
   Xalg:= 1;
   cont:=1;
   while(XalxV <> '')do
   begin
   	XalxV:=(Copy(XValor,Xalg,1));
   	if(XalxV <> '.')then
   	begin
     		if(cont > 1)then
      		begin
      			XalxX:= XAlxX+XalxV;
      		end
      		else begin
      			XalxX:=XalxV;
       	end;
       end
   	else begin
           XalxX:=XalxX+',';

   	end;
   	cont:=cont+1;
   	Xalg:=Xalg+1;
   end;
   tiraPontoNfe:=StrToFloat(XalxX);
end;

//Paulo 15/09/2010: Para importação de NFe
procedure TFPedCompra.BtnImportaNfeClick(Sender: TObject);
var
	XnodePrim, XnodePai, XnodeLer,XNodeAux: IXMLNode;
   XIdRetorno: WideString;
   XDocNfe: TXMLDocument;
   XOpenNfe: TOpenDialog;
   CODPEDIDO:Integer;
   Xpont, XauxIcms,XalxCodForm,XalxBarra,XAlxCst,xteste,XDescProd:String;
   XBaseC,Xicms:Real;
begin
  inherited;
     XDocNfe := TXMLDocument.Create(Self);
     XOpenNfe :=TOpenDialog.Create(Self);
     XFecha:=0;
     XFlagNfe:=0;

     //Paulo 14/08/2010: Importar NFe
     XOpenNfe.InitialDir:= Application.GetNamePath;
     XOpenNfe.Filter:= 'procNFE|*.XML';
     XOpenNfe.Title:='Selecione o arquivo a importar';
     XOpenNfe.Execute;

     if (XOpenNfe.FileName = '')then exit;


     //Paulo: Carregando o arquivo XML
     XDocNfe.LoadFromFile(XOpenNfe.FileName);
     XDocNfe.Active:=True;

     //Lendo os dados da Nfe
     try
     	 XnodePrim := XDocNfe.DocumentElement.ChildNodes.FindNode('NFe');
     	 XnodePai := XnodePrim.ChildNodes.FindNode('infNFe');
        XnodeLer := XnodePai.ChildNodes['ide'];
     except
        Mensagem('A T E N Ç Ã O ', 'Não poderá ser feita a importação da NFe, arquivo XML fora de padrão de importação', '', 1,1, false, 'i');
        exit;
     end;

     //XIdRetorno:=(XnodeLer.ChildNodes['cNF'].Text);//Código Sequencial NFe
     XNumNFe   :=(XnodeLer.ChildNodes['nNF'].Text);//Número da NF
     XDtEmissao:=(XnodeLer.ChildNodes['dEmi'].Text);//Data Emissão
     //XIdRetorno:=(XnodeLer.ChildNodes['verProc'].Text);//Descrição da NF
     //XIdRetorno:=(XnodeLer.ChildNodes['serie'].Text);//Série da NF

     //Lendo os dados do fornecedor
     XnodeLer := XnodePai.ChildNodes['emit'];
     //Endereço do Fornecedor
     XNodeAux := XnodeLer.ChildNodes['enderEmit'];
     //Verifica se tem fornecedor cadastrado se não é cadastrado na hora
     ImportaFornecedor(XnodeLer.ChildNodes['CNPJ'].Text, XnodeLer.ChildNodes['xNome'].Text, XnodeLer.ChildNodes['xFant'].Text,
                      XNodeAux.ChildNodes['xLgr'].Text, XNodeAux.ChildNodes['nro'].Text, XNodeAux.ChildNodes['xBairro'].Text,
                      XNodeAux.ChildNodes['cMun'].Text, XNodeAux.ChildNodes['xMun'].Text, XNodeAux.ChildNodes['UF'].Text,
                      XNodeAux.ChildNodes['CEP'].Text, XNodeAux.ChildNodes['fone'].Text, XnodeLer.ChildNodes['IE'].Text);

      //--------------------------------------------------------------------------//
      //Paulo 20/09/2010: Inserir Produtos em uma tabela temporária
      //---------------------------------------------------------------------------//
      //Apaga dados da tabela temporaria
      DMENTRADA.TImpNfeTMP.Close;
      DMENTRADA.TImpNfeTMP.SQL.Clear;
      DMENTRADA.TImpNfeTMP.SQL.Add('DELETE FROM IMPNFETMP');
      DMENTRADA.TImpNfeTMP.ExecSQL;

      FiltraTabela(DMMACS.TEmpresa,'EMPRESA','', '','');
      //PAulo 29/09/2010: Verifica qual aliqota ICMS é usada
      Xicms:= DMMACS.TEmpresa.FieldByName('ICMS').AsFloat;
      
      DMENTRADA.IBT.CommitRetaining;

      //Leitura dos itens
      XnodeLer := XnodePai.ChildNodes['det'];
      while not(XNodeAux.ChildNodes.First = nil)do
      begin
         XnodeLer.ChildNodes.FindNode('det');
         XNodeAux := XnodeLer.ChildNodes['prod'];
         if not(XNodeAux.ChildNodes.First = nil)then
         begin
         		//Paulo 20/09/2010: insere os itens em uma tabela temporaria
         		DMENTRADA.TImpNfeTMP.Close;
         		DMENTRADA.TImpNfeTMP.SQL.Clear;
         		DMENTRADA.TImpNfeTMP.SQL.Add('insert into IMPNFETMP (CODPRODFORN,CODBARRA,DESCPROD,NCM,TIPOUNIDADE,');
         		DMENTRADA.TImpNfeTMP.SQL.Add('QUANTIDADE,VALORUN,VALORTOTAL,CST,ALIQICMS,VALORICMS,COD_ESTOQUE,STATUS,CODPRODUTO,');
               DMENTRADA.TImpNfeTMP.SQL.Add('BASESUBST, ICMSSUBST, VALORBASE, IPI, VALORIPI, VALORVENDA)');
         		DMENTRADA.TImpNfeTMP.SQL.Add('values(:CODPRODFORN,:CODBARRA,:DESCPROD,:NCM,:TIPOUNIDADE,:QUANTIDADE,:VALORUN,:VALORTOTAL,');
         		DMENTRADA.TImpNfeTMP.SQL.Add(':CST,:ALIQICMS,:VALORICMS,:CODESTOQ,:STATUS,:CODPRODUTO, :BASESUBST,:ICMSSUBST,:VALORBASE,:IPI,:VALORIPI, :VALORVENDA)');
         		DMENTRADA.TImpNfeTMP.ParamByName('CODPRODFORN').AsString:=XNodeAux.ChildNodes['cProd'].Text;
               XalxCodForm:=XNodeAux.ChildNodes['cProd'].Text;
               DMENTRADA.TImpNfeTMP.ParamByName('CODBARRA').AsString:=XNodeAux.ChildNodes['cEAN'].Text;
               XalxBarra:=XNodeAux.ChildNodes['cEAN'].Text;
               if (XalxBarra = '') then
                   XalxBarra := '000';
               XDescProd:=Copy(XNodeAux.ChildNodes['xProd'].Text,1,55);
               DMENTRADA.TImpNfeTMP.ParamByName('DESCPROD').AsString:=XDescProd ;
         		DMENTRADA.TImpNfeTMP.ParamByName('NCM').AsString:=XNodeAux.ChildNodes['NCM'].Text;
               {if(Copy(XNodeAux.ChildNodes['uCom'].Text,1,2) = 'KI')then
                  DMENTRADA.TImpNfeTMP.ParamByName('TIPOUNIDADE').AsString:='KIT'
               else
         			DMENTRADA.TImpNfeTMP.ParamByName('TIPOUNIDADE').AsString:=Copy(XNodeAux.ChildNodes['uCom'].Text,1,2);}
               DMENTRADA.TImpNfeTMP.ParamByName('TIPOUNIDADE').AsString:='UN';
         		DMENTRADA.TImpNfeTMP.ParamByName('QUANTIDADE').AsFloat:=tiraPontoNfe(XNodeAux.ChildNodes['qCom'].Text);
         		DMENTRADA.TImpNfeTMP.ParamByName('VALORUN').AsFloat:=tiraPontoNfe(XNodeAux.ChildNodes['vUnCom'].Text);
         		DMENTRADA.TImpNfeTMP.ParamByName('VALORTOTAL').AsFloat:=tiraPontoNfe(XNodeAux.ChildNodes['vProd'].Text);
               XBaseC:=tiraPontoNfe(XNodeAux.ChildNodes['vProd'].Text);

               //Paulo 21/09/2010: verifica se existe esse produto ja cadastrado na tabela codigo barra
               FiltraTabela(DMESTOQUE.Alx4,'fornecedor','cod_pessoa', IntToStr(XcodForn),'');
               DMESTOQUE.Alx3.Close;
               DMESTOQUE.Alx3.SQL.Clear;
               DMESTOQUE.Alx3.SQL.Add('select cod_estoque from codigobarra where codbarra = :codbarra or codfornerc = :codforn');
               DMESTOQUE.Alx3.ParamByName('codbarra').AsString:=XNodeAux.ChildNodes['cProd'].Text;
               DMESTOQUE.Alx3.ParamByName('codforn').AsInteger:=DMESTOQUE.Alx4.FieldByName('cod_fornec').AsInteger;
               DMESTOQUE.Alx3.Open;
               XcodFornecedor:= DMESTOQUE.Alx4.FieldByName('cod_fornec').AsInteger;
               
               try
         			//Para pegar os dados do node ICMS
                   //Paulo 05/10/2011: Verifica as possíveis tags de icms para pode importar
         			XNodeAux := XnodeLer.ChildNodes['imposto'];
         			XNodeAux:= XNodeAux.ChildNodes['ICMS'];
                   XNodeAux:= XNodeAux.ChildNodes['ICMS00'];
                   XAlxCst:= XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text;
                   if XAlxCst = '' then
                   begin
                       XNodeAux := XnodeLer.ChildNodes['imposto'];
                       XNodeAux:= XNodeAux.ChildNodes['ICMS'];
                       XNodeAux:= XNodeAux.ChildNodes['ICMS51'];
                       XAlxCst:= XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text;
                       if XAlxCst = '' then
                       begin
                           XNodeAux := XnodeLer.ChildNodes['imposto'];
                           XNodeAux:= XNodeAux.ChildNodes['ICMS'];
                           XNodeAux:= XNodeAux.ChildNodes['ICMS20'];
                           XAlxCst:= XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text;
                           if XAlxCst = '' then
                           begin
                               XNodeAux := XnodeLer.ChildNodes['imposto'];
                               XNodeAux:= XNodeAux.ChildNodes['ICMS'];
                               XNodeAux:= XNodeAux.ChildNodes['ICMS40'];
                               XAlxCst:= XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text;
                               if XAlxCst = '' then
                               begin
                                     XNodeAux := XnodeLer.ChildNodes['imposto'];
                                     XNodeAux:= XNodeAux.ChildNodes['ICMS'];
                                     XNodeAux:= XNodeAux.ChildNodes['ICMS60'];
                                     XAlxCst := XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text;
                                     if XAlxCst = '' then
                                     begin
                                           XNodeAux := XnodeLer.ChildNodes['imposto'];
                                           XNodeAux:= XNodeAux.ChildNodes['ICMS'];
                                           XNodeAux:= XNodeAux.ChildNodes['ICMS10'];
                                           XAlxCst := XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text;
                                           if XAlxCst = '' then
                                           begin
                                                 XNodeAux := XnodeLer.ChildNodes['imposto'];
                                                 XNodeAux:= XNodeAux.ChildNodes['ICMS'];
                                                 XNodeAux:= XNodeAux.ChildNodes['ICMS90'];
                                                 XAlxCst := XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text;
                                                 encontraImpostoSubst(XAlxCst, XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text,XNodeAux.ChildNodes['vBCST'].Text,XNodeAux.ChildNodes['vICMSST'].Text);
                                           end
                                           else begin
                                               encontraImpostoSubst(XAlxCst, XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text,XNodeAux.ChildNodes['vBCST'].Text,XNodeAux.ChildNodes['vICMSST'].Text);
                                           end;
                                     end
                                     else begin
                                         encontraImpostoSubst(XAlxCst, XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text,XNodeAux.ChildNodes['vBCST'].Text,XNodeAux.ChildNodes['vICMSST'].Text);
                                     end;
                               end
                               else begin
                                   encontraImposto(XAlxCst,XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text,XNodeAux.ChildNodes['pICMS'].Text,XNodeAux.ChildNodes['vICMS'].Text,XBaseC);
                               end;
                           end
                           else begin
                               encontraImposto(XAlxCst,XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text,'0','0',0);
                           end;
                       end
                       else begin
                           encontraImposto(XAlxCst,XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text,XNodeAux.ChildNodes['pICMS'].Text,XNodeAux.ChildNodes['vICMS'].Text,XBaseC);
                       end;
                   end
                   else begin
                       encontraImposto(XAlxCst,XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text,XNodeAux.ChildNodes['pICMS'].Text,XNodeAux.ChildNodes['vICMS'].Text,XBaseC);
                   end;
               except
               end;

               //Para IPI
               XNodeAux := XnodeLer.ChildNodes['imposto'];
        		XNodeAux:= XNodeAux.ChildNodes['IPI'];
               XNodeAux:= XNodeAux.ChildNodes['IPITrib'];

               //PAulo: 29/09/2010: Se não tiver IPI zera os campos
               if (XNodeAux.ChildNodes['pIPI'].Text = '')then
               begin
                  DMENTRADA.TImpNfeTMP.ParamByName('IPI').AsFloat:= 0;
                  DMENTRADA.TImpNfeTMP.ParamByName('VALORIPI').AsFloat:= 0;
               end
               else begin
               	DMENTRADA.TImpNfeTMP.ParamByName('IPI').AsFloat:=tiraPontoNfe(XNodeAux.ChildNodes['pIPI'].Text);
               	DMENTRADA.TImpNfeTMP.ParamByName('VALORIPI').AsFloat:=tiraPontoNfe(XNodeAux.ChildNodes['vIPI'].Text);
               end;

               //if not(DMESTOQUE.Alx3.IsEmpty)then
               //begin
                   //DMENTRADA.TImpNfeTMP.ParamByName('CODESTOQ').AsInteger:=DMESTOQUE.Alx3.FieldByName('COD_ESTOQUE').AsInteger;
                   //Paulo 23/09/2010:Verifica se a descrição do produto da nota é a mesma que esta cadastrada
                   //FiltraTabela(DMESTOQUE.Alx4,'estoque','cod_estoque',IntToStr(DMESTOQUE.Alx3.FieldByName('COD_ESTOQUE').AsInteger),'');
                   //Paulo 05/10/2011: verifica se já tem o produto cadastrado, busca primeiro pelo codfabricante
                   DMESTOQUE.Alx5.Close;
                   DMESTOQUE.Alx5.SQL.Clear;
                   DMESTOQUE.Alx5.SQL.Add('select * from subproduto');
                   DMESTOQUE.Alx5.SQL.Add('WHERE subproduto.CODPRODFABR = :CODPRODFABR');
                   DMESTOQUE.Alx5.ParamByName('CODPRODFABR').AsString:= XalxCodForm;
                   DMESTOQUE.Alx5.Open;
                   if not(DMESTOQUE.Alx5.IsEmpty) then
                   begin
                       FiltraTabela(DMESTOQUE.Alx4,'estoque','cod_subprod',IntToStr(DMESTOQUE.Alx5.FieldByName('COD_SUBPRODUTO').AsInteger),'');
                       DMENTRADA.TImpNfeTMP.ParamByName('STATUS').AsString:='OK';
                       DMENTRADA.TImpNfeTMP.ParamByName('CODPRODUTO').AsInteger:= DMESTOQUE.Alx5.FieldByName('cod_produto').AsInteger;
                       DMENTRADA.TImpNfeTMP.ParamByName('VALORVENDA').AsFloat:= DMESTOQUE.Alx4.FieldByName('VENDVARV').AsFloat;
                       DMENTRADA.TImpNfeTMP.ParamByName('CODESTOQ').AsFloat:= DMESTOQUE.Alx4.FieldByName('COD_ESTOQUE').AsFloat;

                   end
                   else begin
                       //Paulo 05/10/2011: tenta buscar pelo cód de barra
                       DMESTOQUE.Alx5.Close;
                       DMESTOQUE.Alx5.SQL.Clear;
                       DMESTOQUE.Alx5.SQL.Add('select * from subproduto');
                       DMESTOQUE.Alx5.SQL.Add('WHERE subproduto.CODBARRA = :CODBARRA');
                       DMESTOQUE.Alx5.ParamByName('CODBARRA').AsString:= XalxBarra;
                       DMESTOQUE.Alx5.Open;
                       if not(DMESTOQUE.Alx5.IsEmpty)then
                       begin
                           FiltraTabela(DMESTOQUE.Alx4,'estoque','cod_subprod',IntToStr(DMESTOQUE.Alx5.FieldByName('COD_SUBPRODUTO').AsInteger),'');
                           DMENTRADA.TImpNfeTMP.ParamByName('STATUS').AsString:='OK';
                           DMENTRADA.TImpNfeTMP.ParamByName('CODPRODUTO').AsInteger:= DMESTOQUE.Alx5.FieldByName('cod_produto').AsInteger;
                           DMENTRADA.TImpNfeTMP.ParamByName('VALORVENDA').AsFloat:= DMESTOQUE.Alx4.FieldByName('VENDVARV').AsFloat;
                           DMENTRADA.TImpNfeTMP.ParamByName('CODESTOQ').AsFloat:= DMESTOQUE.Alx4.FieldByName('COD_ESTOQUE').AsFloat;

                        end   
                        else begin
                           DMENTRADA.TImpNfeTMP.ParamByName('STATUS').AsString:='NCAD';
                           DMENTRADA.TImpNfeTMP.ParamByName('CODESTOQ').AsInteger:=0;
                           DMENTRADA.TImpNfeTMP.ParamByName('CODPRODUTO').AsInteger:= 0;
                           DMENTRADA.TImpNfeTMP.ParamByName('VALORVENDA').AsFloat:= 000;
                        end;
                   end;
                
               DMENTRADA.TImpNfeTMP.ExecSQL;

         		XnodeLer:=XnodeLer.NextSibling;
          end;     
      end;
      DMENTRADA.IBT.CommitRetaining;
      
      //VAlores totais da nota
      XnodeLer := XnodePai.ChildNodes['total'];
      XNodeAux := XnodeLer.ChildNodes['ICMSTot'];
      XTotalNFe := tiraPontoNfe(XNodeAux.ChildNodes['vProd'].Text);
      XFreteNfe := tiraPontoNfe(XNodeAux.ChildNodes['vFrete'].Text);
      XDescNFe := tiraPontoNfe(XNodeAux.ChildNodes['vDesc'].Text);
      XOutrosNFe := tiraPontoNfe(XNodeAux.ChildNodes['vOutro'].Text);
      XTotalProd := tiraPontoNfe(XNodeAux.ChildNodes['vNF'].Text);

       //Paulo 01/11/2010 verifica se ja existe essa nota pra o mesmo fornecedor
       DMENTRADA.TAlx.Close;
       DMENTRADA.TAlx.SQL.Clear;
       DMENTRADA.TAlx.SQL.Add(' select * from vwpedc where (vwpedc.numfiscal=:numero) and (vwpedc.cod_fornec=:codigo) ');
       DMENTRADA.TAlx.ParamByName('numero').AsString:=XNumNFe;
       DMENTRADA.TAlx.ParamByName('codigo').AsInteger:=XcodFornecedor;
       DMENTRADA.TAlx.Open;
       If Not DMENTRADA.TAlx.IsEmpty
       Then Begin
           Mensagem('A T E N Ç Ã O ', 'Essa nota fiscal já se encontra cadastrada no sistema, a importação será abortada. ', '', 1,1, false, 'i');
           Exit;
       End;
      

      AbrirForm(TFImpNfe, FImpNfe, 0);

      if XFecha = 1 then
      	  Exit;
               
      XFlagNfe:=1;



     //Paulo 28/09/2010: INICIO DO PROCEDIMENTO DE NOVO PEDIDO
     BtnNovoClick(sender);

      //Insere os dados na tela
     DBColorEdit3.Text:= XNumNFe;
     XNumfiscNFe:=StrToInt(XNumNFe);
     DBColorEdit3.Enabled:=false;
     EdValorPed.ValueNumeric:= XTotalNFe;
     EdCodCli.Text:= IntToStr(XcodFornecedor);
     EdCPF.Text:= XCNPJForn;
     EdNomeCli.Text:= XNomeForn;
     FiltraTabela(DMFINANC.TAlx,'FORMPAG','DESCRICAO','À VISTA','');
     EDCODFORMPAG.Text:=IntToStr(DMFINANC.TAlx.FieldByName('COD_FORMPAG').AsInteger);
     EDFORMPAG.Text:=DMFINANC.TAlx.FieldByName('DESCRICAO').AsString;
     EdDescMoeda.Text:= FloatToStr(XDescNFe);
     XCodFormPag:=StrToInt(EDCODFORMPAG.Text);
    
     //Insere os produtos na tela
     FiltraTabela(DMENTRADA.TImpNfeTMP,'impnfetmp','','','');
     DMENTRADA.TImpNfeTMP.First;
     while not DMENTRADA.TImpNfeTMP.Eof do
     begin
           FiltraTabela(DMESTOQUE.TEstoque,'ESTOQUE','cod_estoque',IntToStr(DMENTRADA.TImpNfeTMP.FieldByName('COD_ESTOQUE').AsInteger),'');
           //FiltraTabela(DMESTOQUE.TSubProd,'SUBPRODUTO','COD_SUBPRODUTO',IntToStr(DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsInteger),'');
           FiltraTabela(DMESTOQUE.WSimilar,'VWSIMILAR','COD_SUBPRODUTO',IntToStr(DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsInteger),'');
           EscreveLabels;
          // LSimilar.Caption:=DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString;
           EDCodBarra.Text:= DMENTRADA.TImpNfeTMP.FieldByName('CODBARRA').AsString;
          // EDCodInterno.Text:=DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString;
           EDQuantidade.ValueInteger:=DMENTRADA.TImpNfeTMP.FieldByName('QUANTIDADE').AsInteger;
           EDValUnit.ValueNumeric:=DMENTRADA.TImpNfeTMP.FieldByName('VALORUN').AsFloat;
           EDDesc.ValueNumeric:= 0;
           EDTotal.ValueNumeric:= DMENTRADA.TImpNfeTMP.FieldByName('VALORTOTAL').AsFloat;
           EdImpCST.Text:=DMENTRADA.TImpNfeTMP.FieldByName('CST').AsString;
           EdImpCSTExit(Sender);
           EdimpIcms.ValueNumeric:= DMENTRADA.TImpNfeTMP.FieldByName('ALIQICMS').AsInteger;
           EdImpIpi.ValueNumeric:= DMENTRADA.TImpNfeTMP.FieldByName('IPI').AsFloat;
           EdBCIcms.ValueNumeric:= DMENTRADA.TImpNfeTMP.FieldByName('VALORBASE').AsFloat;
           EdImpVlrIcms.ValueNumeric:= DMENTRADA.TImpNfeTMP.FieldByName('VALORICMS').AsFloat;
           EdImpVlrIpi.ValueNumeric:= DMENTRADA.TImpNfeTMP.FieldByName('VALORIPI').AsFloat;
           XBaseST:=DMENTRADA.TImpNfeTMP.FieldByName('BASESUBST').AsFloat;
           XIcmsST:=DMENTRADA.TImpNfeTMP.FieldByName('ICMSSUBST').AsFloat;


           BtnInsertProdClick(Sender);

           DMENTRADA.TImpNfeTMP.Next;

     end;
     XImportNfe:=1;
     //Paulo 21/10/2011: nessa parte eu abre a tela de fiscal
     BtnDadosAdicClick(Sender);
     BtnGravarClick(Sender);
     BtnFechaPedClick(Sender);

     XImportNfe:=0;


      //---------------------------------------------------------------------------//

       {
  ///////COMENTADO POR PAULO 20/09/2010, ITENS NÃO UTILIZADOS POR ENQUANTO //////

        XNodeAux := XnodeLer.ChildNodes['imposto'];
        XNodeAux:= XNodeAux.ChildNodes['IPI'];
        XIdRetorno := (XNodeAux.ChildNodes['cEnq'].Text);

        XNodeAux:= XNodeAux.ChildNodes['IPINT'];
        XIdRetorno := (XNodeAux.ChildNodes['CST'].Text);

        XNodeAux := XnodeLer.ChildNodes['imposto'];
        XNodeAux:= XNodeAux.ChildNodes['PIS'];
        XNodeAux:= XNodeAux.ChildNodes['PISAliq'];
        XIdRetorno := (XNodeAux.ChildNodes['CST'].Text);
        XIdRetorno := (XNodeAux.ChildNodes['vBC'].Text);
        XIdRetorno := (XNodeAux.ChildNodes['pPIS'].Text);
        XIdRetorno := (XNodeAux.ChildNodes['vPIS'].Text);

        XNodeAux := XnodeLer.ChildNodes['imposto'];
        XNodeAux:= XNodeAux.ChildNodes['COFINS'];
        XNodeAux:= XNodeAux.ChildNodes['COFINSAliq'];
        XIdRetorno := (XNodeAux.ChildNodes['CST'].Text);
        XIdRetorno := (XNodeAux.ChildNodes['vBC'].Text);
        XIdRetorno := (XNodeAux.ChildNodes['pCOFINS'].Text);
        XIdRetorno := (XNodeAux.ChildNodes['vCOFINS'].Text);

        XnodeLer:=XnodeLer.NextSibling;
     end;

     //VAlores totais da nota
     XnodeLer := XnodePai.ChildNodes['total'];
     XNodeAux := XnodeLer.ChildNodes['ICMSTot'];
     XIdRetorno := (XNodeAux.ChildNodes['vBC'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['vICMS'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['vBCST'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['vST'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['vProd'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['vFrete'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['vSeg'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['vDesc'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['vII'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['vIPI'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['vCOFINS'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['vOutro'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['vNF'].Text);

     //Dados da Transportadora
     XnodeLer := XnodePai.ChildNodes['transp'];
     XIdRetorno := (XnodeLer.ChildNodes['modFrete'].Text);
     XNodeAux := XnodeLer.ChildNodes['transporta'];
     XIdRetorno := (XNodeAux.ChildNodes['CNPJ'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['xNome'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['IE'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['xEnder'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['xMun'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['UF'].Text);

     XNodeAux := XnodeLer.ChildNodes['vol'];
     XIdRetorno := (XNodeAux.ChildNodes['qVol'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['esp'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['pesoL'].Text);
     XIdRetorno := (XNodeAux.ChildNodes['pesoB'].Text);

     //Dados da Cobrança
     XnodeLer := XnodePai.ChildNodes['cobr'];
     XNodeAux:= XnodeLer.ChildNodes['dup'];
     while not(XNodeAux = nil)do
     begin
        XNodeAux.ChildNodes.First.ChildNodes.FindNode('dup');

        XIdRetorno := (XNodeAux.ChildNodes['nDup'].Text);
        XIdRetorno := (XNodeAux.ChildNodes['dVenc'].Text);
        XIdRetorno := (XNodeAux.ChildNodes['vDup'].Text);

        XNodeAux:=XNodeAux.NextSibling;
     end;
    }
end;
//Paulo 24/11/2011: Seleciona impostos substituidos dos itens
procedure TFPedCompra.encontraImpostoSubst(XAlxCst:String; cst:String ; vBCST:String ; vICMSST:String);
begin
   DMENTRADA.TImpNfeTMP.ParamByName('CST').AsString:= XAlxCst;

   //Paulo 24/09/2010: Verifica se o cst que esta na nota consta na tabela cst, se não cancela todo o processo de importação
   if(FiltraTabela(DMESTOQUE.Alx,'cst','cod_sit_trib',cst,''))= false then
   begin
       Mensagem('A T E N Ç Ã O ', 'Não foi encontrado nenhum CST referente a NFe, a importação será abortada. ', '', 1,1, false, 'i');
       Exit;
   end;

       DMENTRADA.TImpNfeTMP.ParamByName('ALIQICMS').AsFloat:=0;
       DMENTRADA.TImpNfeTMP.ParamByName('VALORICMS').AsFloat:=0;
   try
       DMENTRADA.TImpNfeTMP.ParamByName('BASESUBST').AsFloat:= tiraPontoNfe(vBCST);
       DMENTRADA.TImpNfeTMP.ParamByName('ICMSSUBST').AsFloat:= tiraPontoNfe(vICMSST);
   except
       DMENTRADA.TImpNfeTMP.ParamByName('BASESUBST').AsFloat:= 0;
       DMENTRADA.TImpNfeTMP.ParamByName('ICMSSUBST').AsFloat:= 0;
   end;
   DMENTRADA.TImpNfeTMP.ParamByName('VALORBASE').AsFloat:=0;
end;

//Paulo 24/11/2011: Seleciona impostos dos itens
procedure TFPedCompra.encontraImposto(XAlxCst:String; cst:String ; pIcms:String ; vIcms:String ; XBaseC:Real);
var
   XauxIcms:String;
begin
   DMENTRADA.TImpNfeTMP.ParamByName('CST').AsString:=XAlxCst;

     //Paulo 24/09/2010: Verifica se o cst que esta na nota consta na tabela cst, se não cancela todo o processo de importação
    {	if(FiltraTabela(DMESTOQUE.Alx,'cst','cod_sit_trib',(XNodeAux.ChildNodes['orig'].Text+XNodeAux.ChildNodes['CST'].Text),''))= false then
     begin
         Mensagem('A T E N Ç Ã O ', 'Não foi encontrado nenhum CST referente a NFe, a importação será abortada. ', '', 1,1, false, 'i');
         Exit;
     end; }
     FiltraTabela(DMESTOQUE.Alx,'cst','cod_sit_trib',cst,'');
     XauxIcms:= pIcms;
     if XauxIcms <> '' then
     begin
         //Paulo 29/09/2010: Se a aliquota da loja for menor que o da nota refaz o calculo
         if (Xicms < tiraPontoNfe(pIcms)) then
         begin
             DMENTRADA.TImpNfeTMP.ParamByName('ALIQICMS').AsFloat:= Xicms;
             DMENTRADA.TImpNfeTMP.ParamByName('VALORICMS').AsFloat:=DMENTRADA.TImpNfeTMP.ParamByName('VALORTOTAL').AsFloat * (Xicms / 100);
         end
         else begin
             DMENTRADA.TImpNfeTMP.ParamByName('ALIQICMS').AsFloat:=tiraPontoNfe(pIcms);
             DMENTRADA.TImpNfeTMP.ParamByName('VALORICMS').AsFloat:=tiraPontoNfe(vIcms);
         end;
     end;
     DMENTRADA.TImpNfeTMP.ParamByName('BASESUBST').AsFloat:= 0;
     DMENTRADA.TImpNfeTMP.ParamByName('ICMSSUBST').AsFloat:= 0;

     DMENTRADA.TImpNfeTMP.ParamByName('VALORBASE').AsFloat:=XBaseC;
end;

procedure TFPedCompra.DBGrid1DblClick(Sender: TObject);
var Xnumped:integer;
begin
  inherited;
      //Paulo 07/10/2010: Marca a linha com um X para selecionar ele pra venda agrupada
      Xnumped:= DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDC').AsInteger;
      FiltraTabela(DMENTRADA.TItemPC,'itenspedc','AGRUP','','itenspedc.cod_itenspedc = '+IntToStr(Xnumped));
      if not(DMENTRADA.TItemPC.FieldByName('AGRUP').AsString = 'X') then
      begin

       	DMESTOQUE.Alx.Close;
       	DMESTOQUE.Alx.SQL.Clear;
       	DMESTOQUE.Alx.SQL.Add('update ITENSPEDC set ITENSPEDC.AGRUP = :AGRUP');
       	DMESTOQUE.Alx.SQL.Add('where COD_ITENSPEDC = :CODITENSPEDC');
       	DMESTOQUE.Alx.ParamByName('AGRUP').AsString:='X';
       	DMESTOQUE.Alx.ParamByName('CODITENSPEDC').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDC').AsInteger;
       	DMESTOQUE.Alx.ExecSQL;
       	DMESTOQUE.TransacEstoque.CommitRetaining;
       	DMESTOQUE.Alx.Open;
      end
      else begin
           DMESTOQUE.Alx.Close;
       	DMESTOQUE.Alx.SQL.Clear;
       	DMESTOQUE.Alx.SQL.Add('update ITENSPEDC set ITENSPEDC.AGRUP = :AGRUP');
       	DMESTOQUE.Alx.SQL.Add('where COD_ITENSPEDC = :CODITENSPEDC');
       	DMESTOQUE.Alx.ParamByName('AGRUP').AsString:='';
       	DMESTOQUE.Alx.ParamByName('CODITENSPEDC').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDC').AsInteger;
       	DMESTOQUE.Alx.ExecSQL;
       	DMESTOQUE.TransacEstoque.CommitRetaining;
       	DMESTOQUE.Alx.Open;
      end;
       FiltraSlave;
end;

procedure TFPedCompra.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  /////Paulo 07/10/2010: abrir o popup
  		if Button = mbRight then
       begin
          	MnAgrupar.Popup(Left+250, top+364);
       end;
end;

procedure TFPedCompra.AgruparItensparaVenda1Click(Sender: TObject);
begin
  inherited;
////Paulo:07/10/2010: Para add os itens selecionadod na tabela venda agrupada
     DMMACS.TMP.Close;
     DMMACS.TMP.SQL.Clear;
     DMMACS.TMP.SQL.Add('delete from tmp');
     DMMACS.TMP.ExecSQL;
     DMMACS.Transaction.CommitRetaining;


     DMESTOQUE.TSlave.First;
     while not DMESTOQUE.TSlave.Eof do
     begin
          if DMESTOQUE.TSlave.FieldByName('AGRUP').AsString = 'X' then
          begin
              //Paulo :add numa tabela temporária

              DMMACS.TMP.Close;
              DMMACS.TMP.SQL.Clear;
              DMMACS.TMP.SQL.Add('insert into tmp(DESC1,INT1,INT2,INT3)');
              DMMACS.TMP.SQL.Add('values(:DESC, :CODESTOQUE, :CODSUBPROD, :QUANT)');
              DMMACS.TMP.ParamByName('DESC').AsString:=DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString;
              DMMACS.TMP.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
              DMMACS.TMP.ParamByName('CODSUBPROD').AsInteger:=DMESTOQUE.TSlave.FieldByName('CODPRODFABR').AsInteger;
              DMMACS.TMP.ParamByName('QUANT').AsInteger:=1;
              DMMACS.TMP.ExecSQL;
              DMMACS.Transaction.CommitRetaining;

          end;

     	   DMESTOQUE.TSlave.Next;
     end;
     //Paulo 13/10/2010: abre a tela com os itens agrupados
     DMENTRADA.TAlx.Close;
     DMENTRADA.TAlx.SQL.Clear;
     DMENTRADA.TAlx.SQL.Add('SELECT tmp.desc1,tmp.int2,tmp.int3,tmp.int1 FROM TMP');
     DMENTRADA.TAlx.Open;

     PItensVendaAg.Visible:=true;
     PItensVendaAg.BringToFront;
     //DBVendAgr.Visible:=True;
     //DBVendAgr.BringToFront;
     GridItenAg.Visible:=False;
     GridItenAg.SendToBack;
     BtConfirmar.SetFocus;

     //Label85.Caption:= 'Itens agrupados:';

end;

procedure TFPedCompra.VisualizarDanfe1Click(Sender: TObject);
begin
  inherited;
	FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
   FMzrNfe.SetInFiscal('', XView.FieldByName('cod_pedcomp').AsInteger, 0, 'PEDC', '', 1, '', '', '', 0,0, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
   FMzrNfe.DanfeEntradaVisualizar;
   FMzrNfe := NIL;
end;

procedure TFPedCompra.CancelarNfe1Click(Sender: TObject);
begin
  inherited;
	If XView.FieldByName('SITUACAO').AsString='CANCELADO'
   Then Begin
		MessageDlg('NFe já cancelada', mtWarning, [mbOK], 0);
   End
   Else Begin
       If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente cancelar a Nota Fiscal Eletrônica Nº '+XView.FieldByName('numfiscal').AsString+'?'  , '', 2, 3, False, 'c')= 2
       Then Begin
           FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
           FMzrNfe.SetInFiscal('', XView.FieldByName('COD_PEDCOMP').AsInteger, XView.FieldByName('COD_FORNEC').AsInteger, 'PEDC', 'CANCELAR', 1, '', '', '', XView.FieldByName('NUMFISCAL').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
           FMzrNfe.ShowModal;
       End;
   End;
end;

procedure TFPedCompra.RelatriodeDanfes1Click(Sender: TObject);
begin
  inherited;
	 //Paulo 12/11/2010: Abre o rel periodo fiscal
    XRelDanfe:='COMPRA';
    AbrirForm(TFRelPeriodoFiscal,FRelPeriodoFiscal,0);
end;

procedure TFPedCompra.BtLoteClick(Sender: TObject);
begin
  inherited;
		PnLote.BringToFront;
       PnLote.Visible:=True;
       PnLote.SetFocus;

       EdQuantDescarte.Text:=FloatToStr(XQtdDescarte);
       EdQtdBruta.Text:= EDQuantidade.Text;
       EdDescarte.Text:= XMotivoDesc;
       EdQtdLote.Text:= FloatToStr(XQuantLote);
       EdQtdEntrada.Text:=FloatToStr(XQtdEnt);
       
       //Paulo 23/11/2010: Seleciona os lotes
   	DMMACS.TLote.Close;
   	DMMACS.TLote.SQL.Clear;
   	DMMACS.TLote.SQL.Add('select * from lote where lote.status = ''N'' order by lote.dtabertura');
   	DMMACS.TLote.Open;
       
       EdQuantDescarte.SetFocus;

end;

procedure TFPedCompra.EdQtdEntradaEnter(Sender: TObject);
begin
  inherited;
      EdQtdEntrada.Text:=IntToStr(StrToInt(EdQtdBruta.Text) - StrToInt(EdQuantDescarte.Text));
end;

procedure TFPedCompra.PCadastroExit(Sender: TObject);
begin
		If (PnLote.Visible=false)Then
  inherited;

end;

procedure TFPedCompra.BtnCancelaLoteClick(Sender: TObject);
begin
  inherited;
		//Paulo 24/11/2010: Limpa os campos e as variaveis
       XQtdBruta:= 0.00;
       XQtdDescarte:=0.00;
       XQtdEnt:= 0.00;
       XMotivoDesc:='';
       XLote:=0;
       XQuantLote:=0;

       PnLote.SendToBack;
       PnLote.Visible:=false;


end;

procedure TFPedCompra.BtnLoteOkClick(Sender: TObject);
begin
  inherited;

		XLote:= DMMACS.TLote.FieldByName('COD_LOTE').AsInteger;
       XQtdBruta:= EdQtdBruta.ValueNumeric;
       XQtdDescarte:=EdQuantDescarte.ValueNumeric;
       XQtdEnt:= EdQtdEntrada.ValueNumeric;
       EDQuantidadeExit(Sender);
       XMotivoDesc:=EdDescarte.Text;
       XObsItem:=XMotivoDesc;
       EDQuantidade.ValueNumeric:= EdQtdEntrada.ValueNumeric;
       PnLote.SendToBack;
       PnLote.Visible:=false;
       XQuantLote:= EdQtdLote.ValueNumeric;

       EDQuantidadeExit(Sender);

       
end;

procedure TFPedCompra.EdQuantDescarteExit(Sender: TObject);
begin
  inherited;
		EdQtdEntrada.ValueNumeric:= EdQtdBruta.ValueNumeric - EdQuantDescarte.ValueNumeric;
end;

procedure TFPedCompra.BtnAbreLoteClick(Sender: TObject);
begin
  inherited;
		AbrirForm(TFLote,FLote,0);
end;



procedure TFPedCompra.CBLoteSelecionadoExit(Sender: TObject);
begin
  inherited;
		EdQtdLote.ValueNumeric:=RetornaQuantidadeLote(DMMACS.TLote.FieldByName('COD_LOTE').AsInteger,XCOD_ESTOQUE);
end;

procedure TFPedCompra.RecuperarDadosdaNotaFiscalEletrnica1Click(
  Sender: TObject);
var
   XChaveNfe: String;  
begin
  inherited;
       //Paulo 13/05/2011: Recupera os dados da nota fiscal
       If FiltraTabela(DMENTRADA.TFiscPC, 'docfis', 'cod_pedido', IntToStr(XView.FieldByName('COD_PEDCOMP').AsInteger), '')=True
       Then Begin
           If DMENTRADA.TFiscPC.FieldByName('nfestatus').AsInteger=2
           Then Begin
               If Mensagem('Confirmação do usuário', 'Deseja realmente Retornar os dados para o pedido de Número '+XView.FieldByName('numped').AsString+'?', '', 2, 3, False, 'c')=2
               Then Begin
                   If InputQuery('Chave de Acesso','Informe a Chave de Acesso da NFe para recuperar os Dados', XChaveNfe)=True
                   Then Begin
                       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
                       //Function TFMzrNfe.SetInFiscal(NomePeriodo: String; CodigoPedido: Integer; CodigoDestinatario: Integer; tipopedido: String; tipoacao: String; tipoemissao: Integer; Cfop: String; NatOperacao: String; FormPagamento: String; NumFiscal: Integer; DtEmissao: TDate; CodigoIbge: String; Municipio: String; Uf: String; BaseIcms, VlrIcm, VlrIpi, BaseIcmsSt, VlrIcmsSt, VlrProduto, VlrFrete, VlrSeguro, Desconto, VlrOutros, VlrNotaFiscal: Real): Boolean;
                       FMzrNfe.SetInFiscal(XChaveNfe, XView.FieldByName('COD_PEDCOMP').AsInteger, XView.FieldByName('COD_FORNEC').AsInteger, 'PEDC', 'RETORNADADOS', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
                       FMzrNfe.ShowModal;
                   End;
               End;

           End
           Else Begin
               MessageDlg('Os dados não podem ser recuperados devido ao fato que o Pedido esta marcado como NFe enviada e homologada'+#13+#10+'NFeStatus = 1 ou 3', mtWarning, [mbOK], 0);
           End;
       End;
end;

procedure TFPedCompra.InutilizarNumeraodaNotaFiscalEletrnica1Click(
  Sender: TObject);
begin
  inherited;
    //Paulo 13/05/2011: Inutilizar numeração da nota fiscal eletrônica
    If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente Inutilizar Numeração de Nota Fiscal Eletrônica ?'  , '', 2, 3, False, 'c')= 2
    Then Begin
       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal('', XView.FieldByName('COD_PEDCOMP').AsInteger, XView.FieldByName('COD_FORNEC').AsInteger, 'PEDC', 'INUTILIZAR', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
       FMzrNfe.ShowModal;
    End;
end;

procedure TFPedCompra.VisualizarnoSefaz1Click(Sender: TObject);
begin
  inherited;
       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal('', XView.FieldByName('COD_PEDCOMP').AsInteger, XView.FieldByName('COD_FORNEC').AsInteger, 'PEDC', 'SEFAZ', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
       FMzrNfe.ShowModal;
end;

procedure TFPedCompra.ConsultarStatusNFe1Click(Sender: TObject);
begin
  inherited;
       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal('', XView.FieldByName('COD_PEDCOMP').AsInteger, XView.FieldByName('COD_FORNEC').AsInteger, 'PEDC', 'CONSULTAR', 1, '', '', '', XView.FieldByName('numfiscal').AsInteger, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
       FMzrNfe.ShowModal;
end;

procedure TFPedCompra.VerificarServidorSefaz1Click(Sender: TObject);
begin
  inherited;
       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal('', 0, 0, 'PEDC', 'STATUSSERV', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
       FMzrNfe.ShowModal;

end;

procedure TFPedCompra.ListarNFe1Click(Sender: TObject);
begin
  inherited;
       AbrirForm(TFListaNfe, FListaNfe, 0);
end;

procedure TFPedCompra.Button1Click(Sender: TObject);
begin
  inherited;
       AbrirForm(TFCadUsoConsumo, FCadUsoConsumo, 0);
end;

procedure TFPedCompra.BtUsoConsumoClick(Sender: TObject);
begin
  inherited;
       //Paulo 16/09/2011: abre formulario de produto de consumo
       If AbrirForm(TFCadUsoConsumo, FCadUsoConsumo, 1)='Selected'
       Then Begin
           XUsoConsumo:='Consumo';
           EscreveLabels;
       End
       Else Begin
           LimpaLabels;
           LSimilar.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
       EDQuantidade.SetFocus;
end;

procedure TFPedCompra.BtnProdutosClick(Sender: TObject);
begin
  inherited;
       BtnProdutos.Enabled:=False;
       BtnConsumo.Enabled:=True;
       FPLista.Visible:=True;
       FPLista.BringToFront;
       XUsoConsumo:='';
end;

procedure TFPedCompra.BtnConsumoClick(Sender: TObject);
begin
  inherited;
       BtnProdutos.Enabled:=True;
       BtnConsumo.Enabled:=False;
       FPCLista.Visible:=True;
       FPCLista.BringToFront;
       FiltraSlave;
       XUsoConsumo:='Consumo';
end;

//Paulo 20/09/2011: Funcão que adiciona o item de consumo na tabela despadic e itenspedc
procedure TFPedCompra.BtnInsereConsumoClick(Sender: TObject);
var
   XCODPKMESTRE,XCOD_ESTOQUE,XCOD_ITDESP:Integer;
begin
  inherited;
       If EdDescConsumo.Text=''
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Por favor, descreva a despesa.', '', 1, 1, False, 'i');
           EdDescConsumo.SetFocus;
           exit;
       End;

       If EdQtdConsumo.ValueNumeric<=0
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe uma quantidade maior que 0 (zero).', '', 1, 1, False, 'i');
           EdQtdConsumo.SetFocus;
           exit;
       End;

       If EdCstConsumo.Text = ''
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um CST para o produto', '', 1, 1, False, 'i');
           EdCstConsumo.SetFocus;
           exit;
       End;

       If EdVlrUnitConsumo.ValueNumeric<=0
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor de Custo maior que 0 (zero).', '', 1, 1, False, 'i');
           EdVlrUnitConsumo.SetFocus;
           exit;
       End;

       If EdTotalConsumo.ValueNumeric<=0
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor Cobrado maior que 0 (zero).', '', 1, 1, False, 'i');
           EdTotalConsumo.SetFocus;
           exit;
       End;
       if XCstConsumo <= 0 then
       begin
           Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um CST válido.', '', 1, 1, False, 'i');
           EdCstConsumo.SetFocus;
           exit;
       end;
       // - 05/05/2009: verifica o codigo despesa pedvenda maior
       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('select max(DESPADIC.COD_DESPADIC) as maximo from DESPADIC');
       DMSAIDA.TAlx.Open;

       XCOD_ITDESP :=  DMSAIDA.TAlx.FieldByName('MAXIMO').AsInteger + 1;

       Try
           DMMACS.TCodigo.Close;
           DMMACS.TCodigo.Open;//é necessário fechar e abrir para atualizar a tabela em caso de transações da rede
           //Atualiza a tabela código
           DMMACS.TCodigo.Edit;
           DMMACS.TCodigo.FieldByName('COD_DESPADIC').AsInteger := XCOD_ITDESP + 1;
           DMMACS.TCodigo.Post;
           DMMACS.IBTCodigo.CommitRetaining;
       Except
           DMMACS.IBTCodigo.RollbackRetaining;
       End;

       DMSAIDA.TAlx.Close;// - 05/05/2009:  sql na unha
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('insert into DESPADIC');
       DMSAIDA.TAlx.SQL.Add('(COD_DESPADIC, COD_GERADOR, GERADOR, DESPESA, QTD, CST, VLRREAL, VLRFINAL,');
       DMSAIDA.TAlx.SQL.Add('LUCMOE, LUCPER, VLRTOTFIN, DESCONTO, MARCA, UNIDADE, COD_EQUIPE, COD_FUNCIONARIO)');
       DMSAIDA.TAlx.SQL.Add('values');
       DMSAIDA.TAlx.SQL.Add('(:COD_DESPADIC, :COD_GERADOR, :GERADOR, :DESPESA, :QTD, :CST ,:VLRREAL, :VLRFINAL,');
       DMSAIDA.TAlx.SQL.Add(':LUCMOE, :LUCPER, :VLRTOTFIN, :DESCONTO, :MARCA, :UNIDADE, :COD_EQUIPE,');
       DMSAIDA.TAlx.SQL.Add(':COD_FUNCIONARIO)');

       DMSAIDA.TAlx.ParamByName('COD_DESPADIC').AsInteger := XCOD_ITDESP;
       DMSAIDA.TAlx.ParamByName('COD_GERADOR').AsInteger := StrToInt(XCodPedido);
       DMSAIDA.TAlx.ParamByName('GERADOR').AsString := 'CONSUMOPC';
       DMSAIDA.TAlx.ParamByName('DESPESA').AsString := EdDescConsumo.Text;
       DMSAIDA.TAlx.ParamByName('DESCONTO').AsCurrency := EdDescontoConsumo.ValueNumeric;
       DMSAIDA.TAlx.ParamByName('MARCA').AsString := '';
       DMSAIDA.TAlx.ParamByName('UNIDADE').AsString := 'UN';
       DMSAIDA.TAlx.ParamByName('QTD').AsCurrency := EdQtdConsumo.ValueNumeric;
       DMSAIDA.TAlx.ParamByName('CST').AsString := EdCstConsumo.Text;
       DMSAIDA.TAlx.ParamByName('VLRREAL').AsCurrency := EdVlrUnitConsumo.ValueNumeric;
       DMSAIDA.TAlx.ParamByName('VLRFINAL').AsCurrency := EdVlrUnitConsumo.ValueNumeric;
       DMSAIDA.TAlx.ParamByName('VLRTOTFIN').AsCurrency := EdTotalConsumo.ValueNumeric;
       DMSAIDA.TAlx.ParamByName('LUCMOE').AsCurrency := EdTotalConsumo.ValueNumeric-(EdVlrUnitConsumo.ValueNumeric*EdQtdConsumo.ValueNumeric);
       DMSAIDA.TAlx.ParamByName('LUCPER').AsCurrency := ((DMSAIDA.TAlx.ParamByName('LUCMOE').AsCurrency*100)/(EdVlrUnitConsumo.ValueNumeric*EdQtdConsumo.ValueNumeric));
       DMSAIDA.TAlx.ExecSQL;

   
        DMESTOQUE.Alx1.Close;
        DMESTOQUE.Alx1.SQL.Clear;
        DMESTOQUE.Alx1.SQL.Add('select * from unidade where unidade.sigla_unid = :UNIDADE');
        DMESTOQUE.Alx1.ParamByName('UNIDADE').AsString:='UN';
        DMESTOQUE.Alx1.Open;
        //Paulo 20/09/2011: Insere os itens de consumo na tabela itenspedc
        XCODPKMESTRE:=InserReg(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_ITENSPEDC');
        DMENTRADA.TItemPC.FieldByName('COD_ITENSPEDC').AsInteger := XCODPKMESTRE;
        DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger := StrToInt(XCodPedido);
        DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsInteger:= XCOD_ITDESP;
        DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsCurrency := EdQtdConsumo.ValueNumeric;
        DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency := EdVlrUnitConsumo.ValueNumeric;
        DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency := EdTotalConsumo.ValueNumeric;
        DMENTRADA.TItemPC.FieldByName('DATA').AsDateTime:=(Date());
        DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency := EdDescontoConsumo.ValueNumeric;
        DMENTRADA.TItemPC.FieldByName('COD_UNIDADE').AsInteger:=DMESTOQUE.Alx1.FieldByName('COD_UNIDADE').AsInteger;
        DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency:=XImpIcms;
        DMENTRADA.TItemPC.FieldByName('BASEICMS').AsCurrency:=XBcIcms;
        DMENTRADA.TItemPC.FieldByName('VLRICMS').AsCurrency:=XvlrIcms;
        DMENTRADA.TItemPC.FieldByName('REDUCBASEICMS').AsCurrency:=0;
        DMENTRADA.TItemPC.FieldByName('BASEICMSSUBS').AsCurrency:=0;
        DMENTRADA.TItemPC.FieldByName('VLRICMSSUBS').AsCurrency:=0;
        DMENTRADA.TItemPC.FieldByName('COD_CST').AsInteger:=XCstConsumo;
        DMENTRADA.TItemPC.FieldByName('CONSUMO').AsString:='1';
        
        DMMACS.TCodigo.Edit;
        DMMACS.TCodigo.FieldByName('COD_ITENSPEDC').AsInteger:=DMMACS.TCodigo.FieldByName('COD_ITENSPEDC').AsInteger+1;
        DMMACS.TCodigo.Post;
    
       Try
          DMENTRADA.TItemPC.Post;
          DMENTRADA.IBT.CommitRetaining;
          DMSAIDA.IBT.CommitRetaining;
       Except
          DMENTRADA.IBT.RollbackRetaining;
          DMSAIDA.IBT.RollbackRetaining;
          Mensagem('Mzr Sistemas - INFORMAÇÃO', 'A despesa inserida foi perdida. Se o problema persistir reinicie o sistema!', '', 1, 1, false, 'i');
       End;
       LimpaLabelsConsumo;
       FiltraSlave;
       EdDescConsumo.SetFocus;
       lbCstconsumo.Caption:='';

end;



//Paulo 20/09/2011: Limpa as labels de consumo
Procedure TFPedCompra.LimpaLabelsConsumo;
Begin
   EdDescConsumo.CLEAR;
   EdQtdConsumo.ValueNumeric:=0;
   EdVlrUnitConsumo.ValueNumeric:=0;
   EdDescontoConsumo.ValueNumeric:=0;
   EdTotalConsumo.ValueNumeric:=0;
   EdCstConsumo.Text:='0';
End;

procedure TFPedCompra.EdQtdConsumoExit(Sender: TObject);
begin
  inherited;
       If (EdQtdConsumo.ValueNumeric<>0) And (EdVlrUnitConsumo.ValueNumeric<>0)
       Then Begin
           CalcPercent(EdDescontoConsumo.ValueNumeric, 0, (EdQtdConsumo.ValueNumeric*EdVlrUnitConsumo.ValueNumeric), 'D');
           EdTotalConsumo.ValueNumeric:=AlxCalculo;
       End;
end;

procedure TFPedCompra.EdTotalConsumoExit(Sender: TObject);
begin
  inherited;
       CalcPercent(0, (EdQtdConsumo.ValueNumeric*EdVlrUnitConsumo.ValueNumeric)- EdTotalConsumo.ValueNumeric, (EdQtdConsumo.ValueNumeric*EdVlrUnitConsumo.ValueNumeric), 'D');
       EdDescontoConsumo.ValueNumeric:=AlxPercento;

       XBcIcms:=EdTotalConsumo.ValueNumeric;
       FiltraTabela(DMESTOQUE.TCST,'CST','COD_CST',IntToStr(XCstConsumo),'');

       If DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString<>''
       Then Begin
           If (DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsInteger=1)OR (DMESTOQUE.TCST.FieldByName('ISENTA').AsString='1') Then
           begin
               XBcIcms:=0;
               XImpIcms:=0;
               XvlrIcms:=0;
           end;
       End;
       XvlrIcms:=(XBcIcms*XImpIcms)/100;
  
end;

procedure TFPedCompra.EdCstConsumoExit(Sender: TObject);
begin
  inherited;
       //Paulo 23/09/2011: Armazena o cst do consumo
      DMESTOQUE.Alx1.Close;
      DMESTOQUE.Alx1.SQL.Clear;
      DMESTOQUE.Alx1.SQL.Add('select cst.cod_cst, cst.descricao from cst where cst.cod_sit_trib = :cst');
      DMESTOQUE.Alx1.ParamByName('CST').AsString:=EdCstConsumo.Text;
      DMESTOQUE.Alx1.Open;
      if DMESTOQUE.Alx1.IsEmpty then
      begin
           MessageDlg('Erro ao validar o CST informado. Verifique se o CST foi digitado corretamente ou se é um CST válido.', mtWarning, [mbOK], 0);
           XCstConsumo:=-1;
           EdCstConsumo.SetFocus;
           lbCstconsumo.Visible:=True;
           lbCstconsumo.Caption:='Nenhum CST selecionado.';
      end
      else begin
           XCstConsumo:=DMESTOQUE.Alx1.FieldByName('COD_CST').AsInteger;
           lbCstconsumo.Visible:=True;
           lbCstconsumo.Caption:=DMESTOQUE.Alx1.FieldByName('DESCRICAO').AsString;
      end;     

end;

procedure TFPedCompra.BtExcluiConsumoClick(Sender: TObject);
begin
  inherited;
       //Paulo 27/09/2011: Paga o produto de consumo
       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('delete from DESPADIC');
       DMSAIDA.TAlx.SQL.Add('where despadic.cod_despadic = :codigo');
       DMSAIDA.TAlx.ParamByName('CODIGO').AsInteger:= DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger;
       DMSAIDA.TAlx.ExecSQL;
       DMSAIDA.IBT.CommitRetaining;

       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('delete from ITENSPEDC');
       DMSAIDA.TAlx.SQL.Add('where itenspedc.cod_estoque = :codigo');
       DMSAIDA.TAlx.SQL.Add('and itenspedc.consumo = :consumo');
       DMSAIDA.TAlx.ParamByName('CODIGO').AsInteger:= DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger;
       DMSAIDA.TAlx.ParamByName('CONSUMO').AsString:='1';
       DMSAIDA.TAlx.ExecSQL;
       DMSAIDA.IBT.CommitRetaining;



       FiltraSlave;
end;

procedure TFPedCompra.SalvareenviarXmlporemail1Click(Sender: TObject);
var
   Xcfop:String;
begin
  inherited;
       XSafeXmlDist:=True;
       //Paulo 19/04/2011: Gera Nfe distribuição base no pedido selecionado
       //Seta os dados para chamar a função
       FiltraTabela(DMMACS.TPeriodoFiscal,'PERIODOFISCAL','FECHADO','N','');

       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add(' select pedcompra.cod_fornec, cfop.cfop, cfop.descricao, vwfornec.cod_cidade,email.email, ');
       DMSAIDA.TAlx.SQL.Add(' cidade.cod_ibge, cidade.nome, estado.uf_estado, docfis.cod_cfop, ');
		DMSAIDA.TAlx.SQL.Add(' docfis.cod_cfop1, docfis.cod_cfop2, docfis.nfexml, ');
       DMSAIDA.TAlx.SQL.Add(' docfis.nferecibo, docfis.nfeambiente, docfis.nfechave, ');
       DMSAIDA.TAlx.SQL.Add(' docfis.numdocfis, docfis.baseicms, docfis.vlricms, ');
       DMSAIDA.TAlx.SQL.Add(' docfis.vlrtotipi, docfis.bascalsubs, docfis.vlricmsubs, ');
       DMSAIDA.TAlx.SQL.Add(' docfis.vlrtotprod, docfis.vlrfrete, docfis.vlrseg, ');
       DMSAIDA.TAlx.SQL.Add(' docfis.vlrdesconto, docfis.vlroutrasdesp, docfis.vlrtotdocnf ');
       DMSAIDA.TAlx.SQL.Add(' from pedcompra ');
       DMSAIDA.TAlx.SQL.Add(' left join vwfornec on pedcompra.cod_fornec = vwfornec.cod_fornec ');
       DMSAIDA.TAlx.SQL.Add(' left join cidade on cidade.cod_cidade = vwfornec.cod_cidade ');
       DMSAIDA.TAlx.SQL.Add(' left join estado on estado.cod_estado = cidade.cod_estado ');
       DMSAIDA.TAlx.SQL.Add(' left join docfis on docfis.cod_pedido = pedcompra.cod_pedcomp ');
       DMSAIDA.TAlx.SQL.Add(' left join cfop on cfop.cod_cfop = docfis.cod_cfop ');
       DMSAIDA.TAlx.SQL.Add(' left Join pessoa on vwfornec.cod_pessoa = pessoa.cod_pessoa ');
       DMSAIDA.TAlx.SQL.Add(' left join email ON pessoa.cod_pessoa = email.cod_pessoa ');
       DMSAIDA.TAlx.SQL.Add(' where pedcompra.cod_pedcomp = :COD_PEDVENDA ');
       DMSAIDA.TAlx.ParamByName('COD_PEDVENDA').AsInteger:= XView.FieldByName('cod_pedcomp').AsInteger;
       DMSAIDA.TAlx.Open;

       //Paulo 19/04/2011: Filtra o cfop1
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add('select cfop.cfop, cfop.descricao from cfop where cfop.cod_cfop = :COD_CFOP');
       DMESTOQUE.Alx1.ParamByName('COD_CFOP').AsInteger:= DMSAIDA.TAlx.FieldByName('COD_CFOP1').AsInteger;
       DMESTOQUE.Alx1.Open;

       //Paulo 19/04/2011: Filtra o cfop2
       DMESTOQUE.Alx2.Close;
       DMESTOQUE.Alx2.SQL.Clear;
       DMESTOQUE.Alx2.SQL.Add('select cfop.cfop, cfop.descricao from cfop where cfop.cod_cfop = :COD_CFOP');
       DMESTOQUE.Alx2.ParamByName('COD_CFOP').AsInteger:= DMSAIDA.TAlx.FieldByName('COD_CFOP2').AsInteger;
       DMESTOQUE.Alx2.Open;

       Xcfop:= DMSAIDA.TAlx.FieldByName('CFOP').AsString +'/'+ DMESTOQUE.Alx1.FieldByName('CFOP').AsString +'/'+ DMESTOQUE.Alx2.FieldByName('CFOP').AsString;
       XXmlNfe:= DMSAIDA.TAlx.FieldByName('NFEXML').AsString;
       XNfeRecibo:= DMSAIDA.TAlx.FieldByName('NFERECIBO').AsString;
       XNfeTipoAmbiente:= DMSAIDA.TAlx.FieldByName('NFEAMBIENTE').AsInteger;
       XUfLocal:= 'PR';
       XNfeChave:= DMSAIDA.TAlx.FieldByName('NFECHAVE').AsString;
       XSetInPeriodoFiscal:=DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;

       //Paulo 22/06/2011: Armazena o email do cliente
       XendEmail:= DMSAIDA.TAlx.FieldByName('email').AsString;

       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal(XSetInPeriodoFiscal, XView.FieldByName('COD_PEDCOMP').AsInteger, XView.FieldByName('cod_fornec').AsInteger, 'PEDC', 'EMITIR', 1, Xcfop,
                           DMSAIDA.TAlx.FieldByName('DESCRICAO').AsString, XView.FieldByName('FORMPAG').AsString, StrToInt(DMSAIDA.TAlx.FieldByName('NUMDOCFIS').AsString),
                           XView.FieldByName('dtpedcomp').AsDateTime, IntToStr(DMSAIDA.TAlx.FieldByName('COD_IBGE').AsInteger), DMSAIDA.TAlx.FieldByName('NOME').AsString,
                           DMSAIDA.TAlx.FieldByName('UF_ESTADO').AsString, DMSAIDA.TAlx.FieldByName('BASEICMS').AsFloat, DMSAIDA.TAlx.FieldByName('VLRICMS').AsFloat,
                           DMSAIDA.TAlx.FieldByName('VLRTOTIPI').AsFloat, DMSAIDA.TAlx.FieldByName('BASCALSUBS').AsFloat, DMSAIDA.TAlx.FieldByName('VLRICMSUBS').AsFloat,
                           DMSAIDA.TAlx.FieldByName('VLRTOTPROD').AsFloat, DMSAIDA.TAlx.FieldByName('VLRFRETE').AsFloat, DMSAIDA.TAlx.FieldByName('VLRSEG').AsFloat,
                           DMSAIDA.TAlx.FieldByName('VLRDESCONTO').AsFloat, DMSAIDA.TAlx.FieldByName('VLROUTRASDESP').AsFloat, DMSAIDA.TAlx.FieldByName('VLRTOTDOCNF').AsFloat,
                           DMSAIDA.TAlx.FieldByName('valortotaltributa').AsFloat);
       FMzrNfe.ShowModal;   
end;

procedure TFPedCompra.ReinviarNotaFiscalEletrnica1Click(Sender: TObject);
begin
  inherited;
 	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
  	If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
   Then Begin
   	DMENTRADA.TFiscPC.Close;
       DMENTRADA.TFiscPC.SQL.Clear;
       DMENTRADA.TFiscPC.SQL.Add('  Select * from docfis where docfis.cod_pedido=:Codigo ');
       DMENTRADA.TFiscPC.ParamByName('Codigo').AsInteger:=XView.FieldByName('COD_PEDCOMP').AsInteger;
       DMENTRADA.TFiscPC.Open;
       If not DMENTRADA.TFiscPC.IsEmpty
       Then Begin
       	If (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger=1) or (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger=3)  or (DMENTRADA.TFiscPC.FieldByName('NFESTATUS').AsInteger=4)
           Then Begin
           	//Se Documento Fiscal Enviado ou Cancelado
               MessageDlg('Este pedido já gerou uma Nota Fiscal Eletrônica enviada e recebida pelo sefaz. Sendo assim não pode mais ser transmitida.', mtWarning, [mbOK], 0);
               Exit;
           End;
       End;
   End;

   AbrirForm(TFSENHA, FSENHA, 0);
   //repassa resultado da tela de autenticação de senha para as variáveis de controle
   If XAlxResult=True
   Then Begin
       If XView.FieldByName('SITUACAO').AsString='ABERTO'
       Then Begin
           Mensagem('OPÇÃO BLOQUEADA', 'É necessário que o pedido esteja fechado antes da impressão fiscal. Antes de fechar recomendamos que confira todas as informações do pedido.', '', 1, 1, False, 'a');
           Exit;
       End;
       If FiltraTabela(DMENTRADA.TPedC, 'pedcompra', 'cod_pedcomp', XView.FieldByName('COD_PEDCOMP').AsString, '')=True
       Then Begin
           If Mensagem('A T E N Ç Ã O', 'Deseja realmente Imprimir Documento Fiscal para o pedido'+#13+'Nº '+XView.FieldByName('NUMPED').AsString+'?'  , '', 2, 3, False, 'c')= 2
           Then Begin
           	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
               If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NF') or (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString='NFe')
               Then Begin
                   FMenu.TIPOREL:='RNF';
                   //Imprime Nota Fiscal
                   If MessageDlg('Impressora NF Pronta?', mtConfirmation, [mbYes, mbNo], 0)=mryes
                   Then Begin
                       FiltraTabela(DMENTRADA.WPedc, 'vwpedc', 'cod_pedcomp', XView.FieldByName('COD_PEDCOMP').AsString, '');
                       If (DMENTRADA.WPedc.FieldByName('FISCO').AsString='ECF')Then
                           FMenu.TIPOAUX:='ECF'
                       Else
                           FMenu.TIPOAUX:='';
                       AbreFiscal;
                   End;
               End;
				ExecutaLiberaDados;
           End;
       End;
   End;
end;

procedure TFPedCompra.CartadeCorreoEletrnica1Click(Sender: TObject);
begin
  inherited;
    IniciaCCe(XView.FieldByName('COD_PEDCOMP').AsInteger, 'COMPRA');
end;

end.


