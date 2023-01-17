unit URelMecanica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, DrLabel, jpeg, ExtCtrls, UFrmBusca, Mask, QRCtrls, QuickRpt,
  Grids, DBGrids, DB, IBCustomDataSet, IBQuery, DBCtrls, frxClass, frxDBSet,
  RpDefine, RpBase, RpSystem;

type
  TFRelMecanica = class(TFPadraoRelatorio)
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    FrmPessoaIni: TFrmBusca;
    FrmEquipe: TFrmBusca;
    RGTipoData: TRadioGroup;
    QRResumo: TQuickRep;
    QRBand8: TQRBand;
    QRShape4: TQRShape;
    QRBand9: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape5: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel23: TQRLabel;
    QRBand11: TQRBand;
    QRLORION: TQRLabel;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRRelComSubst: TQuickRep;
    QRBand3: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    DS: TDataSource;
    Alx: TIBQuery;
    QRShape1: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText2: TQRDBText;
    GroupBox6: TGroupBox;
    CBAbertas: TCheckBox;
    CBCanceladas: TCheckBox;
    CBFechadas: TCheckBox;
    CBTodas: TCheckBox;
    QrOrdemAnali: TQuickRep;
    QRBand4: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRBand6: TQRBand;
    QRBand10: TQRBand;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRShape13: TQRShape;
    TServ: TIBQuery;
    TProd: TIBQuery;
    DSRelOrd: TDataSource;
    DSRelOrd2: TDataSource;
    DsRelOrd3: TDataSource;
    TOrd: TIBQuery;
    QRDBText22: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText33: TQRDBText;
    QRLabel47: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabServ: TQRLabel;
    QRLabProd: TQRLabel;
    QRLabTot: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText28: TQRDBText;
    PanelPerFIscal: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRRelServEquipe: TQuickRep;
    QRBand7: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel50: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRBand12: TQRBand;
    QRDBText45: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText54: TQRDBText;
    QRShape12: TQRShape;
    PanelRelEquipe: TPanel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRLabel61: TQRLabel;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRBand15: TQRBand;
    QRLabel72: TQRLabel;
    QRLabel78: TQRLabel;
    QRShape16: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel69: TQRLabel;
    QRDBText48: TQRDBText;
    QRLabel70: TQRLabel;
    QRDBText55: TQRDBText;
    QRLabel51: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel82: TQRLabel;
    QRShape15: TQRShape;
    QRSysData9: TQRSysData;
    QRSysData7: TQRSysData;
    QRSysData8: TQRSysData;
    QRDBText16: TQRDBText;
    FSDSTmp: TfrDBDataSet;
    PanelForn: TPanel;
    QRAnaliObs: TQuickRep;
    QRBand19: TQRBand;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel75: TQRLabel;
    QRSysData13: TQRSysData;
    QRSysData14: TQRSysData;
    QRSysData15: TQRSysData;
    QRShape18: TQRShape;
    QRBand21: TQRBand;
    QRBand20: TQRBand;
    QRLabel74: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape17: TQRShape;
    QRLabel55: TQRLabel;
    QRDBText53: TQRDBText;
    QRLabel77: TQRLabel;
    QRDBText56: TQRDBText;
    QRLabel48: TQRLabel;
    QRBand5: TQRBand;
    QRShape3: TQRShape;
    QRLabel21: TQRLabel;
    QrTotalCanc: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel25: TQRLabel;
    QrTotalVenda: TQRLabel;
    QRShape6: TQRShape;
    QRDBText40: TQRDBText;
    RGOrdem: TRadioGroup;
    QRLabel46: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    Quant: TQRLabel;
    QtdDesc: TQRLabel;
    Saldo: TQRLabel;
    VlrTotal: TQRLabel;
    QRLabel89: TQRLabel;
    Unid: TQRLabel;
    QRLabel90: TQRLabel;
    Cod: TQRLabel;
    QRDBText57: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText72: TQRDBText;
    QrLSaldoQuantidade: TQRLabel;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRGroup2: TQRGroup;
    QRLabel81: TQRLabel;
    QRDBText47: TQRDBText;
    QRLabel84: TQRLabel;
    QRDBText61: TQRDBText;
    QRLabel85: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRDBText62: TQRDBText;
    QRLabel93: TQRLabel;
    QRShape8: TQRShape;
    QRGroup3: TQRGroup;
    QRBand13: TQRBand;
    QRBand14: TQRBand;
    QRLabel68: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel24: TQRLabel;
    totQtd: TQRLabel;
    totDesc: TQRLabel;
    totSaldo: TQRLabel;
    totVlr: TQRLabel;
    TotalProduto: TQRLabel;
    QRDBText29: TQRDBText;
    QrLabel79: TQRLabel;
    QRShape10: TQRShape;
    LbQtdDescarte: TQRLabel;
    LbMotivoDescarte: TQRLabel;
    LbQtdBruta: TQRLabel;
    FrmBuscaNome: TFrmBusca;
    QRLabel83: TQRLabel;
    QRDBText30: TQRDBText;
    RXExtratoOS: TfrxReport;
    QRLabel91: TQRLabel;
    QRDBText46: TQRDBText;
    QRLabel13: TQRLabel;
    QrTotalSaidas: TQRLabel;
    QRLabel15: TQRLabel;
    QrTotalServicos: TQRLabel;
    QRLabel28: TQRLabel;
    QrTotalProdutos: TQRLabel;
    QRLabel22: TQRLabel;
    QrTotalISS: TQRLabel;
    DBExtratoOS: TfrxDBDataset;
    DBLoja: TfrxDBDataset;
    QRLabel122: TQRLabel;
    QrTotalCancOut: TQRLabel;
    DBProdutos: TfrxDBDataset;
    DBServicos: TfrxDBDataset;
    QRRelSinServ: TQuickRep;
    QRBand23: TQRBand;
    QRLabel124: TQRLabel;
    QRSysData16: TQRSysData;
    QRLabel125: TQRLabel;
    QRSysData17: TQRSysData;
    QRLabel126: TQRLabel;
    QRSysData18: TQRSysData;
    QRDBText71: TQRDBText;
    QRDBText77: TQRDBText;
    QRLabel127: TQRLabel;
    QRShape22: TQRShape;
    QRDBText87: TQRDBText;
    QRSubDetail5: TQRSubDetail;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRBand24: TQRBand;
    QRLabel128: TQRLabel;
    QRDBText93: TQRDBText;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRDBText94: TQRDBText;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRDBText95: TQRDBText;
    QRLabel135: TQRLabel;
    QRShape23: TQRShape;
    QRLabel136: TQRLabel;
    QRDBText96: TQRDBText;
    QRShape24: TQRShape;
    QRDBText97: TQRDBText;
    QRLabel137: TQRLabel;
    QRDBText98: TQRDBText;
    QRLabel138: TQRLabel;
    QRDBText99: TQRDBText;
    QRDBText100: TQRDBText;
    QRLabel139: TQRLabel;
    QRSubDetail6: TQRSubDetail;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRDBText104: TQRDBText;
    QRLabel140: TQRLabel;
    QRBand25: TQRBand;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    QRShape25: TQRShape;
    QRDBText105: TQRDBText;
    QRLabel147: TQRLabel;
    DBSetExtrato: TfrDBDataSet;
    DBSetProduto: TfrDBDataSet;
    DBSetServico: TfrDBDataSet;
    RelatorioOSMec: TRvSystem;
    QRLabel92: TQRLabel;
    numNfe: TQRLabel;
    numNfce: TQRLabel;
    QRLabel100: TQRLabel;
    frxDBDados: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    FrmVendedor: TFrmBusca;
    FrmFormadePagamento: TFrmBusca;
    rgAnaliticoSintetico: TRadioGroup;

    procedure FrmPessoaIniBTNOPENClick(Sender: TObject);
    procedure FrmPessoaIniBTNMINUSClick(Sender: TObject);
   // procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmEquipeBTNOPENClick(Sender: TObject);
    procedure FrmEquipeBTNMINUSClick(Sender: TObject);
    procedure FrmPessoaIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmEquipeEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure ImpRelOrdem(XTipoRel: Integer); // DJ - 20/01/2009 : procedimento para impressao de relatorio de ordem sintetico; Tipo = 0 sintetitico ou = 1 analitico
    procedure FiltroData; // - 03/02/2008 : filtra ordens por data de abertura
    procedure FiltroCliente;
    procedure QRRelComSubstBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject); // - 03/02/2008 : filtra por cliente
    //04/10/2016 : relatorio de vendas por vendedor
    procedure ImpRelOrdemVendedor;
    procedure ImpRelEquipe;
    procedure QRBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand15AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    //DJ 01/02/2010: Gera relatorio de pedidos de compra por fornecedores com obsrevacao
	 procedure GeraRelSintObs;
    procedure QRAnaliObsAfterPrint(Sender: TObject);
    procedure QRBand20BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand20AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand21BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormActivate(Sender: TObject);
    //Paulo 24/02/2011:GEra totalizadores
    Function SelectTotalizadores(XCodFornec,XCodSub:Integer;XTipoCons: String):Real;
    procedure QRBand21AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand13BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand14BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FrmBuscaNomeBTNOPENClick(Sender: TObject);
    procedure FrmBuscaNomeBTNMINUSClick(Sender: TObject);
    //Paulo 06/10/2011: Imprimi o relatório de ordem e produtos
    procedure RelOrdProd;
    procedure QRBand17BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRRelSinServBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  
    procedure QRBand22BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RelatorioOSMecPrint(Sender: TObject);
    procedure FrmVendedorEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmVendedorBTNOPENClick(Sender: TObject);
    procedure FrmVendedorBTNMINUSClick(Sender: TObject);
    procedure FrmFormadePagamentoBTNMINUSClick(Sender: TObject);
    procedure FrmFormadePagamentoBTNOPENClick(Sender: TObject);
    procedure FrmFormadePagamentoEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
       // Rodrigo - Metodo que imprime relatorio de Extrato de OS (Produtos, serviços)
       procedure ImpRelExOS;
       //Imprime relatórios de ordem de serviços mecanica junto com as compraas destinadas para a OS
       procedure ImpRelCOMPRASOS;
		//Alex: 21/05/2014 - Função para gerar relatório de produtos vendidos em OS
		function Relatoriodevendadeprodutomec : boolean;
		//Alex: 21/05/2014 - Função para gerar relatório de produtos vendidos em OS com valores de custo
		function  relatoriodevendadeprodutoCusto : boolean;
       Function CabecalhoExtratoOS: Boolean;
       function CabecalhoComprasOS: Boolean;       //cabeçalho para compras de Ordens de serviço
       Function EscreveClienteExtratoOS: Boolean;
       function EscreveClienteComprasOS: Boolean;//Alex: 12/11/2015 - Imprime-se os dados do cliente da Os no relatório de compras de OS
       function EscreveDadosOSCompraOS: Boolean;//Matheus: 12/01/2016 - Imprime-se os dados da Os no relatório de compras de OS
       Function EscreveDadosOSExtratoOS: Boolean;
       Function EscreveProdutoCompraOS: Boolean;//Matheus: 12/01/2015 - Imprime-se os dados dos produtos da Os no relatório de compras de OS
       Function EscreveProdutoExtratoOS: Boolean;
       Function EscreveServicoExtratoOS: Boolean;
       Procedure CriaNovaPagina;

       //Matheus - 11/02/2016 - Gera o relatório de relação de notas fiscais detalhado
       procedure ImpRelDetalhado;
  public
    { Public declarations }
  end;

var
  FRelMecanica: TFRelMecanica;
  XCodCliente, XcodEquipe,XPag, xcodVendedor: Integer;
  XTRServico, XTRISS, XTRcomSubst, XTRsemSubst, XTROrdem, XTRProduto, XTRVndDevolucoes, XTRCancelados: Real;
  XTRCANCELDEVOL, XTRDEVOL, XTRCANCELVENDAS, XTRVENDAS: Real;
  XTotQuant,XTotQtdDesc,XTotSaldo,XtotVlr,XSUMPRODTOT,XSUMPROD,XSUMSERV,XSUMTOTAL,XTOTISS: Real;
  XQuantItemBanda:Integer;
  XDevV,XGarV,XCancO,XCancV,XDevCanV,XGarCanV,XTotV,XTotO:Real;
  xTotalVendasOS, xTotalCancelamentos, xTotalOutrasSaidas, xTotalProdutosOS, xTotalServicoOS, xTotalISS, xTotalCancOutrasSaidas: Real;
  XProduto:TStringList;
  xCont: Integer;
  XContProduto : Double;
  XContServico : Double;
  XLinha: Double;
  XPagina: Integer;
  XClientesExtOS: array of Integer;
  xTamanhoVetorExtOS: Integer;
  XLinhaImpressa: Integer;
implementation

uses UDMPessoa, UCliente, Alxor32, UCadEquipe, UDmServ, UMenu, UDMMacs,
  UDMEstoque, UDMSaida, Alxorprn, UFORNECEDOR, AlxMessage, UFuncionario,
  UDMFinanc, UFormPag;

{$R *.dfm}

procedure TFRelMecanica.FrmPessoaIniBTNOPENClick(Sender: TObject);
begin
  inherited;
  	filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
  	If AbrirForm(TFCliente, FCliente, 1)='Selected'
	Then Begin
       XCodCliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmPessoaIni.Repaint;
	End;
end;

procedure TFRelMecanica.FrmPessoaIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
    XCodCliente := -1;
    FrmPessoaIni.EdDescricao.Text:='';
    FrmPessoaIni.EDCodigo.text:='';
    FrmPessoaIni.Repaint;
end;

{procedure TFRelMecanica.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
  	filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
  	If AbrirForm(TFCliente, FCliente, 1)='Selected'
	Then Begin
       XCodCliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmPessoaIni.Repaint;
	End;


end;}


procedure TFRelMecanica.FrmEquipeBTNOPENClick(Sender: TObject);
begin
  inherited;
  if AbrirForm(TFCadEquipe, FCadEquipe, 1)='Selected'
   then begin
       FrmEquipe.EDCodigo.Text:= DMPESSOA.TALX1.fieldbyname('Cod_Equipe').AsString;
       FrmEquipe.EdDescricao.Hint := DMPESSOA.TALX1.fieldbyname('descricao').AsString;
       FrmEquipe.EdDescricao.Text := DMPESSOA.TALX1.fieldbyname('descricao').AsString;
       XcodEquipe:=DMPESSOA.TALX1.fieldbyname('Cod_Equipe').AsInteger;
   End
   Else Begin
       FrmEquipe.EDCodigo.Text := '';
       FrmEquipe.EdDescricao.Hint := '';
       FrmEquipe.EdDescricao.Text := '';
       XcodEquipe:=-1;
   End;
end;

procedure TFRelMecanica.FrmEquipeBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmEquipe.BTNMINUSClick(Sender);
    FrmEquipe.EDCodigo.Text := '';
    FrmEquipe.EdDescricao.Hint := '';
    FrmEquipe.EdDescricao.Text := '';
    XcodEquipe:=-1;
end;

procedure TFRelMecanica.FrmPessoaIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    If Key=VK_RETURN
    Then Begin
      If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmPessoaIni.EDCodigo.Text+#39)=True
      Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
         FrmPessoaIni.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
         FrmPessoaIni.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
         XCodCliente := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
      End
      Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
         FrmPessoaIni.EDCodigo.Text := '';
         FrmPessoaIni.EdDescricao.Text := '';
         XCodCliente := -1;
      End;
    End;
end;

procedure TFRelMecanica.FrmEquipeEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    If Key=VK_RETURN
    Then Begin
        If FiltraTabela(DMserv.Alx, 'equipe', 'COD_EQUIPE', '', ' COD_EQUIPE='+#39+FrmEquipe.EDCodigo.Text+#39)=True
        Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           FrmEquipe.EDCodigo.Text := DMServ.Alx.FieldByName('COD_EQUIPE').AsString;
           FrmEquipe.EdDescricao.Text := DMServ.Alx.FieldByName('DESCRICAO').AsString;
           XCodCliente := DMServ.Alx.FieldByName('COD_EQUIPE').AsInteger;
        End
        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           FrmEquipe.EDCodigo.Text := '';
           FrmEquipe.EdDescricao.Text := '';
           XCodCliente := -1;
        End;
    End;
end;

//Alex: 21/05/2014 - Função para gerar relatório de produtos vendidos em OS
function  TFRelMecanica.relatoriodevendadeprodutomec : boolean;
begin
	try
       DMMACS.TLoja.Edit;
       DMMACS.TLoja.FieldByName('TMP1').AsString:='Data: '+EdDataIni.Text+' - '+EdDataFim.Text;
   	DMESTOQUE.TRel.CLOSE;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.add(' select ordem.status, produto.descricao AS GRADE, subproduto.contrint as codigo, ORDEM.numero as pedido, ');
       DMESTOQUE.TRel.SQL.add(' subproduto.descricao as produto, subproduto.marca, itprodord.qtd, itprodord.valcomp as Vlrcomp, ');
       DMESTOQUE.TRel.SQL.add(' itprodord.desconto, itprodord.vlrunit as VUnit, itprodord.total as VlrTot, ordem.dtabert as data1, ordem.dtfech ');
       DMESTOQUE.TRel.SQL.add(' from itprodord ');
       DMESTOQUE.TRel.SQL.add(' left join ordem on itprodord.cod_ordem = ORDEM.cod_ordem ');
       DMESTOQUE.TRel.SQL.add(' left join estoque on itprodord.cod_estoque = ESTOQUE.cod_estoque ');
       DMESTOQUE.TRel.SQL.add(' left join subproduto on estoque.cod_subprod = SUBPRODUTO.cod_subproduto ');
       DMESTOQUE.TRel.SQL.add(' left join produto ON subproduto.cod_produto = produto.cod_produto ');
       DMESTOQUE.TRel.SQL.add(' where (ordem.numero is not null)');
       //CONTROLE DE DATA
       If (EdDataIni.Text<>'  /  /    ') and (EdDataFim.Text<>'  /  /    ')
       Then Begin
           Try
               If StrToDate(EdDataIni.Text)>StrToDate(EdDataFim.Text) Then
               	MessageDlg('A data inicial não pode ser maior que a data final', mtWarning, [mbOK], 0);
           Except
               MessageDlg('Problemas com as datas', mtWarning, [mbOK], 0);
           End;
           IF RGTipoData.ItemIndex = 0
           THEN BEGIN
				DMESTOQUE.TRel.SQL.Add(' and (ordem.dtabert between :Data1 and :Data2) ');
           END
           ELSE BEGIN
           	DMESTOQUE.TRel.SQL.Add(' and (ordem.dtfech between :Data1 and :Data2) ');
           END;
           DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
           DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
       END;

       //PESQUISA PELAS CONDIÇÕES DA ORDEM
      If CBTodas.Checked=False
      Then Begin
          If (CBAbertas.Checked) or  (CBFechadas.Checked)
      	   Then Begin
                If (CBAbertas.Checked) and (CBFechadas.checked) then begin
                     DMESTOQUE.TRel.SQL.Add(' and (Ordem.status='+#39+'ABERTO'+#39+')');
                     DMESTOQUE.TRel.SQL.Add(' or (Ordem.status='+#39+'FECHADO'+#39+')');
                     DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+ '/ABERTAS E FECHADAS';
                end;
                If  (CBAbertas.Checked) and  (CBFechadas.Checked= false)  then begin
                     DMESTOQUE.TRel.SQL.Add(' and (Ordem.status='+#39+'ABERTO'+#39+')');
                     DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+ '/ABERTAS';
                end;
                If  (CBAbertas.Checked=false) and  (CBFechadas.Checked)  then begin
                     DMESTOQUE.TRel.SQL.Add(' and (Ordem.status='+#39+'FECHADO'+#39+')');
                     DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+ '/FECHADAS';
                end;
          end;
          If CBCanceladas.Checked= True Then
          begin
          		DMESTOQUE.TRel.SQL.Add(' AND (Ordem.status='+#39+'CANCELADO'+#39+')' );
          		DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+'/CANCELADAS';
          end;
      end
      else begin
           DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+'TODAS';
      End;
      IF RGTipoData.ItemIndex = 0 THEN
         DMESTOQUE.TRel.SQL.Add('order by produto.descricao, ordem.dtabert')
      else
         DMESTOQUE.TRel.SQL.Add('order by produto.descricao, ordem.dtfech');

       DMESTOQUE.TRel.SQL.Text;
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
       DMESTOQUE.TRel.Open;
       If  DMESTOQUE.TRel.IsEmpty
       Then Begin
       	MessageDlg('Relatório retornou vazio', mtWarning, [mbOK], 0);
       End
       Else Begin
           FSDSRel.DataSet := DMESTOQUE.TRel;
           FSRel.Dataset := FSDSRel;
           FSRel.LoadFromFile('C:\MZR\Macs\Rel\FrfProdVendaOSmec.frf');
           FsRel.ShowReport;
       End;
  except
  end;
end;
//Alex: 21/05/2014 - Função para gerar relatório de produtos vendidos em OS com valores de custo
function  TFRelMecanica.relatoriodevendadeprodutoCusto : boolean;
var
   xFiltroStatus: String;
begin
   try
       DMMACS.TLoja.Edit;
       DMMACS.TLoja.FieldByName('TMP1').AsString := '';

       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       if FMenu.TIPOREL = 'RELATORIODEVENDADEPRODUTOCUSTONFE' then
       begin
           if rgAnaliticoSintetico.ItemIndex = 1 then //Sintético
           begin
               DMESTOQUE.TRel.SQL.add(' SELECT VWSIMILAR.COD_SUBPRODUTO, ITPRODORD.COD_ITPRODORD, VWSIMILAR.CONTRINT, VWSIMILAR.DESCRICAO, ITPRODORD.QTD, ITPRODORD.TOTAL, ');
               DMESTOQUE.TRel.SQL.add(' SUM(CUSTOESTOQUEEMPRESA.VALORUNITARIOCUSTO) / COUNT(CUSTOESTOQUEEMPRESA.COD_CUSTOESTOQUEEMPRESA) VALORCUSTOUNITARIONOTAFISCAL ');
           end
           else begin //Analítico
               DMESTOQUE.TRel.SQL.Add(' SELECT VWORDEM.COD_ORDEM, VWORDEM.NUMERO, VWORDEM.DTABERT, VWORDEM.DTFECH, VWORDEM.CLIENTE, VWORDEM.TOTAL TOTALORDEM, ');
               DMESTOQUE.TRel.SQL.Add(' ITPRODORD.COD_ITPRODORD, VWSIMILAR.CONTRINT CODIGO, VWSIMILAR.DESCRICAO, ITPRODORD.DATA, ITPRODORD.QTD, ');
               DMESTOQUE.TRel.SQL.Add(' ITPRODORD.TOTAL TOTALITEM, ');
               DMESTOQUE.TRel.SQL.Add(' SUM(CUSTOESTOQUEEMPRESA.VALORUNITARIOCUSTO) / COUNT(CUSTOESTOQUEEMPRESA.COD_CUSTOESTOQUEEMPRESA) VALORCUSTO ');
           end;
           DMESTOQUE.TRel.SQL.Add(' FROM VWORDEM ');
           DMESTOQUE.TRel.SQL.Add(' INNER JOIN ITPRODORD ON ITPRODORD.COD_ORDEM = VWORDEM.COD_ORDEM ');
           DMESTOQUE.TRel.SQL.Add(' INNER JOIN VWSIMILAR ON VWSIMILAR.COD_ESTOQUE = ITPRODORD.COD_ESTOQUE ');
           DMESTOQUE.TRel.SQL.Add(' LEFT JOIN CUSTOITEMPEDIDO ON ITPRODORD.COD_ITPRODORD = CUSTOITEMPEDIDO.COD_GERADOR AND (CUSTOITEMPEDIDO.TIPOGERADOR = ''ORDEM'') ');
           DMESTOQUE.TRel.SQL.Add(' LEFT JOIN CUSTOESTOQUEEMPRESA ON CUSTOITEMPEDIDO.COD_CUSTOESTOQUEEMPRESA = CUSTOESTOQUEEMPRESA.COD_CUSTOESTOQUEEMPRESA ');
           DMESTOQUE.TRel.SQL.add(' WHERE (VWORDEM.NUMERO IS NOT NULL) ');
       end
       else begin//FMenu.TIPOREL:='RELATORIODEVENDADEPRODUTOCUSTO';
           DMESTOQUE.TRel.SQL.add(' SELECT SUBPRODUTO.COD_SUBPRODUTO, VWORDEM.STATUS, PRODUTO.DESCRICAO AS GRADE, SUBPRODUTO.CONTRINT, VWORDEM.NUMERO AS PEDIDO, ');
           DMESTOQUE.TRel.SQL.add(' SUBPRODUTO.DESCRICAO, SUBPRODUTO.MARCA, ITPRODORD.QTD, ITPRODORD.VALCOMP, ');
           DMESTOQUE.TRel.SQL.add(' ITPRODORD.DESCONTO, ITPRODORD.VLRUNIT, ITPRODORD.TOTAL, VWORDEM.DTABERT AS DATA1, VWORDEM.DTFECH ');
           DMESTOQUE.TRel.SQL.add(' FROM ITPRODORD ');
           DMESTOQUE.TRel.SQL.add(' LEFT JOIN VWORDEM ON ITPRODORD.COD_ORDEM = VWORDEM.COD_ORDEM ');
           DMESTOQUE.TRel.SQL.add(' LEFT JOIN ESTOQUE ON ITPRODORD.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE ');
           DMESTOQUE.TRel.SQL.add(' LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
           DMESTOQUE.TRel.SQL.add(' LEFT JOIN PRODUTO ON SUBPRODUTO.COD_PRODUTO = PRODUTO.COD_PRODUTO ');
           DMESTOQUE.TRel.SQL.add(' WHERE (VWORDEM.NUMERO IS NOT NULL) ');
       end;
       //CONTROLE DE DATA
       if (EdDataIni.Text<>'  /  /    ') and (EdDataFim.Text<>'  /  /    ') then
       begin
           Try
               if StrToDate(EdDataIni.Text) > StrToDate(EdDataFim.Text) then
               begin
                   MessageDlg('A data inicial não pode ser maior que a data final', mtWarning, [mbOK], 0);
                   Exit;
               end;
           Except
               MessageDlg('Problemas com as datas', mtWarning, [mbOK], 0);
               Exit;
           End;
           if RGTipoData.ItemIndex = 0 then
				DMESTOQUE.TRel.SQL.Add(' AND (VWORDEM.DTABERT between :DTINI and :DTFIN) ')
           ELSE
               DMESTOQUE.TRel.SQL.Add(' AND (VWORDEM.DTFECH between :DTINI and :DTFIN) ');
               
           DMESTOQUE.TRel.ParamByName('DTINI').AsString := EdDataIni.Text;
           DMESTOQUE.TRel.ParamByName('DTFIN').AsString := EdDataFim.Text;

           DMMACS.TLoja.FieldByName('TMP1').AsString := 'Data: '+EdDataIni.Text+' - '+EdDataFim.Text;
       end;

       //PESQUISA PELAS CONDIÇÕES DA ORDEM
       if not CBTodas.Checked then
       begin
           xFiltroStatus := '';
           if CBAbertas.Checked then
           begin
               xFiltroStatus := ' (VWORDEM.STATUS = ''ABERTO'') ';
               DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+ ' /ABERTAS';
           end;
           if CBFechadas.Checked then
           begin
               if xFiltroStatus <> '' then
                   xFiltroStatus := xFiltroStatus + ' OR ';

               xFiltroStatus := xFiltroStatus + ' (VWORDEM.STATUS = ''FECHADO'') ';
               DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+ ' /FECHADAS';
           end;
           if CBCanceladas.Checked then
           begin
               if xFiltroStatus <> '' then
                   xFiltroStatus := xFiltroStatus + ' OR ';

               xFiltroStatus := xFiltroStatus + ' (VWORDEM.STATUS = ''CANCELADO'') ';
          		DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' /CANCELADAS';
           end;
           
           if xFiltroStatus <> '' then
               DMESTOQUE.TRel.SQL.Add(' AND ('+xFiltroStatus+') ');
       end
       else begin
           DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString+' TODAS ';
       End;

       if FMenu.TIPOREL = 'RELATORIODEVENDADEPRODUTOCUSTONFE' then
       begin
           if rgAnaliticoSintetico.ItemIndex = 1 then//sintetico
           begin
               DMESTOQUE.TRel.SQL.Add(' GROUP BY VWSIMILAR.COD_SUBPRODUTO, ITPRODORD.COD_ITPRODORD, VWSIMILAR.CONTRINT, VWSIMILAR.DESCRICAO, ITPRODORD.QTD, ITPRODORD.TOTAL, VWORDEM.DTABERT ');
               DMESTOQUE.TRel.SQL.Add(' ORDER BY VWSIMILAR.DESCRICAO, VWORDEM.DTABERT ');
           end
           else begin//analitico
               DMESTOQUE.TRel.SQL.Add(' GROUP BY VWORDEM.COD_ORDEM, VWORDEM.NUMERO, VWORDEM.DTABERT, VWORDEM.DTFECH, VWORDEM.CLIENTE, ');
               DMESTOQUE.TRel.SQL.Add(' TOTALORDEM, ITPRODORD.COD_ITPRODORD, CODIGO, VWSIMILAR.DESCRICAO, ITPRODORD.DATA, ITPRODORD.QTD, TOTALITEM ');
               DMESTOQUE.TRel.SQL.Add(' ORDER BY VWORDEM.DTABERT, VWORDEM.COD_ORDEM ');
           end;
       end
       else begin//FMenu.TIPOREL:='RELATORIODEVENDADEPRODUTOCUSTO';
           DMESTOQUE.TRel.SQL.Add(' ORDER BY SUBPRODUTO.DESCRICAO, VWORDEM.DTFECH ');
       end;

       DMESTOQUE.TRel.SQL.Text;
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
       DMESTOQUE.TRel.Open;
       If  DMESTOQUE.TRel.IsEmpty
       Then Begin
       	MessageDlg('Relatório retornou vazio', mtWarning, [mbOK], 0);
       End
       Else Begin
           FSDSRel.DataSet := DMESTOQUE.TRel;
           FSRel.Dataset := FSDSRel;
           
           if FMenu.TIPOREL = 'RELATORIODEVENDADEPRODUTOCUSTONFE' then
           begin
               if rgAnaliticoSintetico.ItemIndex = 1 then
                   FSRel.LoadFromFile('C:\MZR\Macs\Rel\FrfProdVendaOSmecCustoSintetico.frf')
               else
                   FSRel.LoadFromFile('C:\MZR\Macs\Rel\FrfProdVendaOSmecCustoAnalitico.frf');
           end
           else begin//FMenu.TIPOREL:='RELATORIODEVENDADEPRODUTOCUSTO';
               FSRel.LoadFromFile('C:\MZR\Macs\Rel\FrfProdVendaOSmecCusto.frf');
           end;
           
           FsRel.ShowReport;
       End;
  except
  end;
end;

//DJ - 22/01/2010 : procedimento que faz comparações para gerar o relatório
procedure TFRelMecanica.BtnVisualizarClick(Sender: TObject);
begin
	//DJ - 26/01/2010: Zera valores de variaveis que serao usadas no formulario
 	XPAG := 0;
	XSUMPROD := 0;
   XSUMSERV := 0;
   XSUMTOTAL := 0;
   XSUMPRODTOT := 0;
   //DJ - 26/01/2010: Testa o tipo de ordem para abrir o relatorio correspondente
   if(FMenu.TIPOREL = 'EQUIPE')Then
   	ImpRelEquipe
   Else Begin
   	if(FMenu.TIPOREL = 'ORDST')Then
   		ImpRelOrdem(2)
    Else Begin
      if(FMenu.TIPOREL = 'ORDPT') Then
        ImpRelDetalhado
   	Else Begin
			if(FMenu.TIPOREL = 'SINTETICO')Then
   			ImpRelOrdem(0)
   		Else Begin
           	if(FMenu.TIPOREL = 'PEDCOBS')Then
               	GeraRelSintObs
               Else Begin
                   if(FMenu.TIPOREL = 'ORDPROD')Then
                       RelOrdProd
                   Else  Begin
                   	if(FMenu.TIPOREL = 'RELATORIODEVENDADEPRODUTOMEC')Then
                      		relatoriodevendadeprodutomec
                       Else Begin
                           if (FMenu.TIPOREL = 'RELATORIODEVENDADEPRODUTOCUSTO') OR (FMenu.TIPOREL = 'RELATORIODEVENDADEPRODUTOCUSTONFE') then
                               RelatoriodeVendadeProdutoCusto
                           Else Begin
                               if(Fmenu.TIPOREL = 'EXTRATO_OS')
                               Then Begin
                                   ImpRelExOS;
                               End
                               Else Begin
                                   if(Fmenu.TIPOREL = 'SINTETICOVENDEDOR')
                                   Then Begin
                                       If xcodVendedor=-1
                                       Then Begin
                                           MessageDlg('Vendedor não selecionado.', mtWarning, [mbOK], 0);
                                           exit;
                                       end; 
                              			ImpRelOrdemVendedor;
                                   End
                                   Else Begin
                                       if(Fmenu.TIPOREL = 'COMPRASOS') Then
                                           ImpRelCOMPRASOS
                                       Else
                                           ImpRelOrdem(1);
                                   End;
                               end;
                           End;
                       End;
                   End;
               end;
           End;
         End;
       End;
   End;
end;

//DJ 28/01/2010: FUncao para iniciar o processo de impressao para relatorio de equipe
procedure TFRelMecanica.ImpRelEquipe;
Begin
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' Select despadic.cod_despadic, ordem.cod_ordem, equipe.cod_equipe, equipe.descricao as NOMEEQUIPE, ');
   DMMACS.TALX.SQL.Add(' ordem.numero, despadic.vlrreal,vwcliente.nome, ordem.dtabert, ordem.dtfech, equipamento.placa, despadic.despesa, ');
   DMMACS.TALX.SQL.Add(' despadic.vlrfinal as VLRUNIT, despadic.qtd AS QUANTIDADE, despadic.vlrtotfin AS VLRTOTAL ');
   DMMACS.TALX.SQL.Add('   from despadic ');
   DMMACS.TALX.SQL.Add(' Left join ordem on despadic.cod_gerador = ordem.cod_ordem ');
   DMMACS.TALX.SQL.Add(' Left join equipe on despadic.cod_equipe = equipe.cod_equipe ');
   DMMACS.TALX.SQL.Add(' left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente ');
   DMMACS.TALX.SQL.Add(' left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento ');
   DMMACS.TALX.SQL.Add(' Where (despadic.gerador='+#39+'ORDEM'+#39+') ');

   //CONTROLE DE DATA
   If (EdDataIni.Text<>'  /  /    ') and (EdDataFim.Text<>'  /  /    ')
   Then Begin
       Try
       	If StrToDate(EdDataIni.Text)>StrToDate(EdDataFim.Text) Then
           	MessageDlg('A data inicial não pode ser maior que a data final', mtWarning, [mbOK], 0);
       Except
       	MessageDlg('Problemas com as datas', mtWarning, [mbOK], 0);
       End;
       If RGTipoData.ItemIndex=0 Then
			DMMACS.TALX.SQL.Add(' and (ordem.dtabert between :Data1 and :Data2) ')
       Else
			DMMACS.TALX.SQL.Add(' and (ordem.dtfech between :Data1 and :Data2) ');
       DMMACS.TALX.ParamByName('Data1').AsString:=EdDataIni.Text;
       DMMACS.TALX.ParamByName('Data2').AsString:=EdDataFim.Text;
   End;
   //CONTROLE DE CLIENTE
   If FrmPessoaIni.EdDescricao.Text<>''
   Then Begin
   	DMMACS.TALX.SQL.Add(' and (vwcliente.nome=:Nome)');
       DMMACS.TALX.ParamByName('Nome').AsString:=EdDataIni.Text;FrmPessoaIni.EdDescricao.Text;
   End;
   //CONTROLE EQUIPE
   If DBLookupComboBox2.KeyValue<>null
   Then Begin
   	DMMACS.TALX.SQL.Add(' and (equipe.cod_equipe=:cod_equipe) ');
       DMMACS.TALX.ParamByName('cod_equipe').AsInteger:=DBLookupComboBox2.KeyValue;
   End;
   //PESQUISA PELAS CONDIÇÕES DA ORDEM
   If CBTodas.Checked=False
   Then Begin
   	If (CBAbertas.Checked=False) or (CBFechadas.Checked=False)
       Then Begin
   		If CBAbertas.Checked=True Then
   			DMMACS.TALX.SQL.Add(' And (Ordem.status='+#39+'ABERTO'+#39+')');
           If CBFechadas.Checked=True Then
               DMMACS.TALX.SQL.Add(' And (Ordem.status='+#39+'FECHADO'+#39+')');
       End;
   	If CBCanceladas.Checked=True Then
   		DMMACS.TALX.SQL.Add(' And (Ordem.status='+#39+'CANCELADO'+#39+')');
   End;
   If RGOrdem.ItemIndex=0 Then
   	DMMACS.TALX.SQL.Add(' order by equipe.descricao, ordem.numero ')
   Else
   	DMMACS.TALX.SQL.Add(' order by equipe.descricao, ordem.dtfech, ordem.numero ');
   DMMACS.TALX.SQL.Text;
   DMMACS.TALX.Open;

   If DMMACS.TALX.IsEmpty
   Then Begin
   	MessageDlg('Relatório retorno vazio', mtWarning, [mbOK], 0);
   End
   Else Begin
       FSRel.LoadFromFile('C:\MZR\Macs\Rel\FrfOrdMecMaoObraEquipe.frf');
       FsRel.ShowReport;
   End;
End;
//04/10/2016 : relatorio de vendas por vendedor
procedure TFRelMecanica.ImpRelOrdemVendedor;
begin
	//DJ 04/03/2010: Zera os totalizadores
	XDevV := 0;
   XGarV := 0;
   XCancO := 0;
   XCancV := 0;
   XDevCanV := 0;
   XGarCanV := 0;
   XTotV := 0;
   XTotO := 0;
   //Edmar - 19/02/2015 - Zera totalizadores do relatorio de relação de notas fiscais
   xTotalVendasOS := 0;
   xTotalProdutosOS := 0;
   xTotalISS := 0;
   xTotalServicoOS := 0;
   xTotalCancelamentos := 0;
   xTotalOutrasSaidas := 0;
   xTotalCancOutrasSaidas := 0;
   try
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP1').AsString := FrmVendedor.EdDescricao.Text+ ' Entre as datas de '+EdDataIni.Text+' - '+EdDataFim.Text;
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       DMPESSOA.TALX.Close;
       DMPESSOA.TALX.SQL.Clear;
       DMPESSOA.TALX.SQL.Add('   Select * from funcargo  where funcargo.cod_funcionario=:CodigoVendedor order by funcargo.cod_funcargo desc ');
       DMPESSOA.TALX. ParamByName('CodigoVendedor').AsInteger:=xcodVendedor;
       DMPESSOA.TALX.Open;
   except
   end;
	//DJ - 22/01/2010: Seleciona ordens para ambos os relatorios
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select distinct(vwordem.numero), vwordem.status, vwordem.cod_cliente, vwordem.cod_ordem, vwordem.cliente, vwordem.equipamento, ');
   DMMACS.TALX.SQL.Add(' vwordem.numfiscal as NUMDOCFIS, vwordem.placa,vwordem.dtabert, ');
   DMMACS.TALX.SQL.Add(' docfisord.vlrtotdocnf,docfisord.dtemissao, docfisord.vlrtotiss, docfisord.numdocfisint, ');
   DMMACS.TALX.SQL.Add(' DOCFISORD.NFESTATUS, VWORDEM.STATUSNFSE, ');
	DMMACS.TALX.SQL.Add(' vwordem.formapag,vwordem.dtfech,vwordem.total, ordem.totserv as vlrtotserv, ordem.totprod as vlrtotprod, vwordem.numfiscalnfse ');//retirado valcusto de itprodord
	DMMACS.TALX.SQL.Add(' from vwordem left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
	DMMACS.TALX.SQL.Add(' left join itprodord on vwordem.cod_ordem =  itprodord.cod_ordem ');
   DMMACS.TALX.SQL.Add(' LEFT JOIN DOCFISORD ON VWORDEM.COD_ORDEM = DOCFISORD.COD_ORDEM ');
   DMMACS.TALX.SQL.Add(' left join despadic on despadic.cod_gerador = ordem.cod_ordem ');
   DMMACS.TALX.SQL.Add(' WHERE (VWORDEM.COD_ORDEM IS NOT NULL) ');
  	DMMACS.TALX.SQL.Add(' and (vwordem.status = '+#39+'FECHADO'+#39+')');
   if((EDDataIni.Text <> '  /  /    ')and (EDDataFim.Text <> '  /  /    '))
   Then Begin
       DMMACS.TALX.SQL.Add(' and ((vwordem.dtfech >= :inicial) and (vwordem.dtfech <= :final)) ');
       DMMACS.TALX.ParamByName('inicial').AsString := EDDataini.Text;
       DMMACS.TALX.ParamByName('final').AsString := EDDataFim.Text;
   End;
   if(FrmVendedor.EdDescricao.Text <> '')Then Begin
   	DMMACS.TALX.SQL.Add(' and (ordem.cod_vendedor = :cod_vendedor) ');
       DMMACS.TALX.ParamByName('cod_vendedor').AsInteger := xcodVendedor;
   End;
   DMMACS.TALX.SQL.Add(' order by vwordem.cod_ordem ');

   DMMACS.TALX.SQL.Text;
   DMMACS.TALX.Open;

   If DMMACS.TALX.IsEmpty
   Then Begin
       MessageDlg('Nenhum resultado foi retornado.', mtWarning, [mbOK], 0);
   End
   Else Begin
	    FSRel.LoadFromFile('C:\MZR\Macs\Rel\FrfOrdMecVendedor.frf');
	    FsRel.ShowReport;
   End;
End;

//03/02/2008 : procedimento que faz comparações para gerar o relatório de ordem analitico ou sintetico
procedure TFRelMecanica.ImpRelOrdem(XTipoRel: Integer);
begin
	//DJ 04/03/2010: Zera os totalizadores
	XDevV := 0;
   XGarV := 0;
   XCancO := 0;
   XCancV := 0;
   XDevCanV := 0;
   XGarCanV := 0;
   XTotV := 0;
   XTotO := 0;
   //Edmar - 19/02/2015 - Zera totalizadores do relatorio de relação de notas fiscais
   xTotalVendasOS := 0;
   xTotalProdutosOS := 0;
   xTotalISS := 0;
   xTotalServicoOS := 0;
   xTotalCancelamentos := 0;
   xTotalOutrasSaidas := 0;
   xTotalCancOutrasSaidas := 0;
	//DJ - 22/01/2010: Seleciona ordens para ambos os relatorios
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select distinct(vwordem.numero), vwordem.status, vwordem.cod_cliente, vwordem.cod_ordem, vwordem.cliente, vwordem.equipamento, ');
   DMMACS.TALX.SQL.Add(' vwordem.numfiscal as NUMDOCFIS, vwordem.placa,vwordem.dtabert, ');
   if(XTipoRel = 2)
   Then Begin
       DMMACS.TALX.SQL.Add(' docfisord.modelonf, docfisord.cod_periodofiscal, docfisord.vlrtotdocnf,docfisord.dtemissao, docfisord.vlrtotiss, docfisord.numdocfisint, ');
       DMMACS.TALX.SQL.Add(' DOCFISORD.NFESTATUS, VWORDEM.STATUSNFSE, P.CFOP CFOP_PRODUTO, S.CFOP CFOP_SERVICO, O.CFOP CFOP_OUTROS, ');
   End;

   if (XTipoRel = 0) then
   	DMMACS.TALX.SQL.Add(' itprodord.valcomp, despadic.vlrreal, ');

	DMMACS.TALX.SQL.Add(' vwordem.formapag,vwordem.dtfech,vwordem.total, ordem.totserv as vlrtotserv, ordem.totprod as vlrtotprod, vwordem.numfiscalnfse ');//retirado valcusto de itprodord
	DMMACS.TALX.SQL.Add(' from vwordem left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
	DMMACS.TALX.SQL.Add(' left join itprodord on vwordem.cod_ordem =  itprodord.cod_ordem ');
   DMMACS.TALX.SQL.Add(' LEFT JOIN DOCFISORD ON VWORDEM.COD_ORDEM = DOCFISORD.COD_ORDEM ');
   if XTipoRel = 0 then
       DMMACS.TALX.SQL.Add(' left join despadic on despadic.cod_gerador = ordem.cod_ordem ');
   if(XTipoRel = 2)
   Then Begin
       DMMACS.TALX.SQL.Add(' LEFT JOIN CFOP P ON DOCFISORD.COD_CFOP1 = P.COD_CFOP ');//produto
       DMMACS.TALX.SQL.Add(' LEFT JOIN CFOP S ON DOCFISORD.COD_CFOP2 = S.COD_CFOP ');//serviço
       DMMACS.TALX.SQL.Add(' LEFT JOIN CFOP O ON DOCFISORD.COD_CFOP  = O.COD_CFOP ');//outros
   End;
	//DMMACS.TALX.SQL.Add('    Where ((vwordem.status<>''CANCELADO'') AND (vwordem.status<>''DENEGADO''))');
   DMMACS.TALX.SQL.Add(' WHERE (VWORDEM.COD_ORDEM IS NOT NULL) ');
   //DJ - 22/01/2010: Filtra resultado por datas
   if(CBAbertas.Checked = True)Then
   	DMMACS.TALX.SQL.Add('and (vwordem.status = '+#39+'ABERTO'+#39+')');
   if(CBFechadas.Checked = True)Then
   	DMMACS.TALX.SQL.Add(' and (vwordem.status = '+#39+'FECHADO'+#39+')');
   if(CBCANCELADAS.Checked = True)Then
   	DMMACS.TALX.SQL.Add(' and (vwordem.status = '+#39+'CANCELADO'+#39+')');
   if(CBTodas.Checked = True)Then
   	DMMACS.TALX.SQL.Add(' and ((vwordem.status = '+#39+'ABERTO'+#39+') or (vwordem.status = '+#39+'FECHADO'+#39+') or (vwordem.status = '+#39+'CANCELADO'+#39+'))');
   if(RGTipoData.ItemIndex = 0)Then Begin
   	if((EDDataIni.Text <> '  /  /    ')and(EDDataFim.Text <> '  /  /    '))Then
   		DMMACS.TALX.SQL.Add(' and ((vwordem.dtabert >= :inicial) and (vwordem.dtabert <= :final)) ')
       Else Begin
       	if(EdDataIni.Text <> '  /  /    ')and(EdDataFim.Text = '  /  /    ')Then
           	DMMACS.TALX.SQL.Add(' and (vwordem.dtabert >= :inicial) ');
           if(EdDataIni.Text = '  /  /    ')and(EdDataFim.Text <> '  /  /    ')Then
           	DMMACS.TALX.SQL.Add(' and (vwordem.dtabert <= :final) ');
       End;
   End
   Else Begin
   	if((EDDataIni.Text <> '  /  /    ')and(EDDataFim.Text <> '  /  /    '))Then
   		DMMACS.TALX.SQL.Add(' and ((vwordem.dtfech >= :inicial) and (vwordem.dtfech <= :final)) ')
       Else Begin
       	if(EdDataIni.Text <> '  /  /    ')Then
           	DMMACS.TALX.SQL.Add(' and (vwordem.dtfech >= :inicial) ')
           Else
           	DMMACS.TALX.SQL.Add(' and (vwordem.dtfech <= :final) ');
       End;
   End;
   //Paulo 13/04/2011: Se for relatório por periodo fiscal não faz filtro por data
   if(XTipoRel <> 2)Then Begin
       if(EDDataIni.Text <> '  /  /    ')Then
           DMMACS.TALX.ParamByName('inicial').AsDate := StrToDateTime(EDDataini.Text);
       if(EDDataFim.Text <> '  /  /    ')Then
           DMMACS.TALX.ParamByName('final').AsDate := StrToDateTime(EDDataFim.Text);
       if((EDDataIni.Text = '  /  /    ')and(EDDataFim.Text = '  /  /    '))Then
           DMMACS.TALX.ParamByName('final').AsDate := Date;
   end;
   //DJ - 22/01/2010: Filtra resultado por pessoa
   if(FrmPessoaIni.EdDescricao.Text <> '')Then Begin
   	DMMACS.TALX.SQL.Add(' and (vwordem.cod_cliente = :cod_cliente) ');
       DMMACS.TALX.ParamByName('cod_cliente').AsInteger := XCodCliente;
   End;
   //ALEX- 05/09/2016: Filtra resultado por VENDEDOR
   if(FrmVendedor.EdDescricao.Text <> '')Then Begin
   	DMMACS.TALX.SQL.Add(' and (ordem.cod_vendedor = :cod_vendedor) ');
       DMMACS.TALX.ParamByName('cod_vendedor').AsInteger := xcodVendedor;
   End;
   //ALEX- 07/12/2017: Filtra resultado por FORMA DE PAGAMENTO
   if(XCodFormPag>0)
	Then Begin
   	DMMACS.TALX.SQL.Add(' and (ORDEM.cod_formpag = :cod_FORMPAG) ');
       DMMACS.TALX.ParamByName('cod_FORMPAG').AsInteger := XCodFormPag;
   End;
   if XTipoRel = 2 then
   begin
	  //DMMACS.TALX.SQL.Add(' AND (DOCFISORD.NFESTATUS <> ''2'') ');
		DMMACS.TALX.SQL.Add(' AND ((DOCFISORD.NFESTATUS <> ''2'') OR (DOCFISORD.NFSE_STATUSGERAL <> ''2'')) ');
   	DMMACS.TALX.SQL.Add(' AND (DOCFISORD.COD_PERIODOFISCAL = :COD_PERIODO) ');
       DMMACS.TALX.ParamByName('COD_PERIODO').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       //
   	DMMACS.TALX.SQL.Add(' ORDER BY VWORDEM.NUMFISCAL, VWORDEM.NUMFISCALNFSE ');
   end
   else
   	DMMACS.TALX.SQL.Add(' order by vwordem.cod_ordem ');

   DMMACS.TALX.SQL.Text;
   DMMACS.TALX.Open;

   //DJ - 22/01/2010: Se parametro igual a zero abre relatorio sintetico senao analitico senao OrdemSt
   if(XTipoRel = 1)Then
		QROrdemAnali.Preview
   Else Begin
   	if(XTipoRel = 0)Then Begin
   		FSRel.LoadFromFile('C:\MZR\Macs\Rel\FrfOrdMecSintetico1.frf');
   		FsRel.ShowReport;
       End
   	Else Begin
   		//DJ - 25/01/2010: Seleciona pedidos de venda para relatorio de notas fiscais
   	   	DMSAIDA.TAlx.Close;
   		DMSAIDA.TAlx.SQL.Clear;
   		DMSAIDA.TAlx.SQL.Add(' SELECT DOCFISSAIDA.COD_PERIODOFISCAL, DOCFISSAIDA.NUMDOCFIS, VWPEDV.NOMECLI, DOCFISSAIDA.DTEMISSAO, DOCFISSAIDA.VLRTOTPROD, DOCFISSAIDA.MODELONF, ');
   		DMSAIDA.TAlx.SQL.Add(' DOCFISSAIDA.VLRTOTDOCNF, VWPEDV.SITUACAO, VWPEDV.TIPO, VWPEDV.FORMPAG, DOCFISSAIDA.NFESTATUS, P.CFOP CFOP_PRODUTO, S.CFOP CFOP_SERVICO, O.CFOP CFOP_OUTROS FROM VWPEDV ');
   		DMSAIDA.TAlx.SQL.Add(' LEFT JOIN DOCFISSAIDA ON VWPEDV.COD_PEDVENDA = DOCFISSAIDA.COD_PEDIDO ');
   		DMSAIDA.TAlx.SQL.Add(' LEFT JOIN CFOP P ON DOCFISSAIDA.COD_CFOP1 = P.COD_CFOP ');
   		DMSAIDA.TAlx.SQL.Add(' LEFT JOIN CFOP S ON DOCFISSAIDA.COD_CFOP2 = S.COD_CFOP ');
   		DMSAIDA.TAlx.SQL.Add(' LEFT JOIN CFOP O ON DOCFISSAIDA.COD_CFOP  = O.COD_CFOP ');
   		DMSAIDA.TAlx.SQL.Add(' WHERE (DOCFISSAIDA.COD_PERIODOFISCAL = :COD_PERIODO) AND (DOCFISSAIDA.NFESTATUS <> ''2'') ');
   		DMSAIDA.TAlx.SQL.Add(' ORDER BY DOCFISSAIDA.NFESTATUS, VWPEDV.NUMFISCAL ');
           DMSAIDA.TALX.ParamByName('COD_PERIODO').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       	DMSAIDA.TAlx.Open;

           //DJ 04/03/2010: Prepara tabela tmp para receber dados
		   	DMMACS.TMP.Close;
       	DMMACS.TMP.SQL.Clear;
       	DMMACS.TMP.SQL.Add('delete from tmp');
       	DMMACS.TMP.ExecSQL;
       	DMMACS.Transaction.CommitRetaining;
       	DMMACS.TMP.Close;
       	DMMACS.TMP.SQL.Clear;
       	DMMACS.TMP.SQL.Add('select * from tmp');
       	DMMACS.TMP.Open;

       	//DJ - 25/01/2010: Insere ordens na tmp
           while not DMMACS.TALX.Eof do
           Begin
       		DMMACS.TMP.Insert;
//             DMMACS.TMP.FieldByName('INT2').AsInteger:=DMMACS.TALX.FieldByName('COD_PERIODOFISCAL').AsInteger;

				//Edmar - 19/02/2015 - Verifica qual cfop está valido para a nota
               //faz a verificação por hierarquia
				if DMMACS.TALX.FieldByName('CFOP_PRODUTO').AsString <> '' then
               	DMMACS.TMP.FieldByName('INT2').AsString := DMMACS.TALX.FieldByName('CFOP_PRODUTO').AsString
               else
               	if DMMACS.TALX.FieldByName('CFOP_SERVICO').AsString <> '' then
						DMMACS.TMP.FieldByName('INT2').AsString := DMMACS.TALX.FieldByName('CFOP_SERVICO').AsString
                   else
						DMMACS.TMP.FieldByName('INT2').AsString := DMMACS.TALX.FieldByName('CFOP_OUTROS').AsString;

       	    DMMACS.TMP.FieldByName('INT1').AsString := DMMACS.TALX.FieldByName('NUMDOCFIS').AsString;
               DMMACS.TMP.FieldByName('INT3').AsString:=DMMACS.TALX.FieldByName('NUMFISCALNFSE').AsString;
       		DMMACS.TMP.FieldByName('DESC1').AsString:=DMMACS.TALX.FieldByName('CLIENTE').AsString;
       		DMMACS.TMP.FieldByName('DATA1').AsDateTime:=DMMACS.TALX.FieldByName('DTEMISSAO').AsDateTime;
               DMMACS.TMP.FieldByName('VLR2').AsFloat:=DMMACS.TAlx.FieldByName('VLRTOTPROD').AsFloat;
               DMMACS.TMP.FieldByName('VLR5').AsString := DMMACS.TAlx.FieldByName('MODELONF').AsString;
               //Paulo 22/03/2011: Verifica se a loja emite nota com serviçoes incluso
               If DMMACS.TLoja.FieldByName('SERVNFE').AsString<>'1' then
               begin
       		    DMMACS.TMP.FieldByName('VLR3').AsFloat:=DMMACS.TALX.FieldByName('VLRTOTSERV').AsFloat;
                   DMMACS.TMP.FieldByName('VLR4').AsFloat:=DMMACS.TALX.FieldByName('VLRTOTISS').AsFloat;
                   //DMMACS.TMP.FieldByName('VLR1').AsFloat:=DMMACS.TALX.FieldByName('vlrtotdocnf').AsFloat;
                   DMMACS.TMP.FieldByName('VLR1').AsFloat := DMMACS.TAlx.FieldByName('VLRTOTPROD').AsFloat + DMMACS.TALX.FieldByName('VLRTOTSERV').AsFloat;
               end
               else begin
                   //Paulo 22/03/2011: Seleciona os valores de serviço
                   DMESTOQUE.Alx5.Close;
                   DMESTOQUE.Alx5.SQL.Clear;
                   DMESTOQUE.Alx5.SQL.Add('select ordem.totserv,totord from ordem where ordem.cod_ordem = :CODORD');
                   DMESTOQUE.Alx5.ParamByName('CODORD').AsInteger:=DMMACS.TALX.FieldByName('cod_ordem').AsInteger;
                   DMESTOQUE.Alx5.Open;
                   DMMACS.TMP.FieldByName('VLR3').AsFloat:=DMESTOQUE.Alx5.FieldByName('totserv').AsFloat;
                   DMMACS.TMP.FieldByName('VLR1').AsFloat:=DMESTOQUE.Alx5.FieldByName('totord').AsFloat;
                   DMMACS.TMP.FieldByName('VLR4').AsFloat:=0.00;
               end;

               DMMACS.TMP.FieldByName('DESC2').AsString:=DMMACS.TALX.FieldByName('STATUS').AsString;

               if(DMMACS.TALX.FieldByName('STATUS').AsString = 'CANCELADO')Then
					DMMACS.TMP.FieldByName('DESC3').AsString:='CANCELADO'
               Else Begin
       			if(DMMACS.TALX.FieldByName('FORMAPAG').AsString = 'À VISTA')Then
						DMMACS.TMP.FieldByName('DESC3').AsString:=DMMACS.TALX.FieldByName('FORMAPAG').AsString
       			Else
       				DMMACS.TMP.FieldByName('DESC3').AsString:='À PRAZO';
               End;
       		DMMACS.TMP.Post;

               //
               //Paulo 22/03/2011: Verifica se a loja emite serviços na nfe
               {
               If DMMACS.TLoja.FieldByName('SERVNFE').AsString<>'1' then
               begin
                   if(DMMACS.TAlx.FieldByName('STATUS').AsString='CANCELADO')Then
                       XCancO := XCancO + DMMACS.TALX.FieldByName('vlrtotdocnf').AsFloat;
                   if(DMMACS.TAlx.FieldByName('STATUS').AsString='FECHADO')Then
                       XTotO := XTotO + DMMACS.TALX.FieldByName('vlrtotdocnf').AsFloat;
               end
               else begin
                   if(DMMACS.TAlx.FieldByName('STATUS').AsString='CANCELADO')Then
                       XCancO := XCancO + DMESTOQUE.Alx5.FieldByName('totord').AsFloat;
                   if(DMMACS.TAlx.FieldByName('STATUS').AsString='FECHADO')Then
                       XTotO := XTotO + DMESTOQUE.Alx5.FieldByName('totord').AsFloat;
               end;
               }
               //Edmar - 19/02/2015 - Totalizadores
   			xTotalProdutosOS := xTotalProdutosOS + DMMACS.TAlx.FieldByName('VLRTOTPROD').AsFloat;
   			xTotalServicoOS  := xTotalServicoOS  + DMMACS.TALX.FieldByName('VLRTOTSERV').AsFloat;
               xTotalISS        := xTotalISS        + DMMACS.TALX.FieldByName('VLRTOTISS').AsFloat;

               //verifica se a nota de produto foi cancelada
               if (DMMACS.TAlx.FieldByName('NFESTATUS').AsString = '3') then
               	xTotalCancelamentos := xTotalCancelamentos + DMMACS.TAlx.FieldByName('VLRTOTPROD').AsFloat;

               //verifica se a nota de serviço foi cancelada
               if (DMMACS.TAlx.FieldByName('STATUSNFSE').AsString = '2') then
               	xTotalCancelamentos := xTotalCancelamentos + DMMACS.TAlx.FieldByName('VLRTOTSERV').AsFloat;
               //final totalizadores

               DMMACS.TALX.Next;
           End;

       	//DJ - 25/01/2010: Insere pedidos de venda na tmp
           while not DMSAIDA.TALX.Eof do
           Begin
       		DMMACS.TMP.Insert;
//             DMMACS.TMP.FieldByName('INT2').AsInteger:=DMSAIDA.TAlx.FieldByName('COD_PERIODOFISCAL').AsInteger;

				//Edmar - 19/02/2015 - Verifica qual cfop está valido para a nota
               //faz a verificação por hierarquia
				if DMSAIDA.TAlx.FieldByName('CFOP_PRODUTO').AsString <> '' then
               	DMMACS.TMP.FieldByName('INT2').AsString := DMSAIDA.TAlx.FieldByName('CFOP_PRODUTO').AsString
               else
               	if DMSAIDA.TAlx.FieldByName('CFOP_SERVICO').AsString <> '' then
						DMMACS.TMP.FieldByName('INT2').AsString := DMSAIDA.TAlx.FieldByName('CFOP_SERVICO').AsString
                   else
						DMMACS.TMP.FieldByName('INT2').AsString := DMSAIDA.TAlx.FieldByName('CFOP_OUTROS').AsString;

               DMMACS.TMP.FieldByName('INT1').AsString := DMSAIDA.TALX.FieldByName('NUMDOCFIS').AsString;
       		DMMACS.TMP.FieldByName('DESC1').AsString:=DMSAIDA.TAlx.FieldByName('NOMECLI').AsString;
       		DMMACS.TMP.FieldByName('DATA1').AsDateTime:=DMSAIDA.TAlx.FieldByName('DTEMISSAO').AsDateTime;
               DMMACS.TMP.FieldByName('VLR2').AsFloat:=DMSAIDA.TAlx.FieldByName('VLRTOTPROD').AsFloat;
               DMMACS.TMP.FieldByName('VLR5').AsString := DMSAIDA.TAlx.FieldByName('MODELONF').AsString;
       		DMMACS.TMP.FieldByName('VLR3').AsFloat:=0.00;
       		DMMACS.TMP.FieldByName('VLR4').AsFloat:=0.00;
       		DMMACS.TMP.FieldByName('VLR1').AsFloat:=DMSAIDA.TAlx.FieldByName('VLRTOTDOCNF').AsFloat;
       		DMMACS.TMP.FieldByName('DESC2').AsString:=DMSAIDA.TAlx.FieldByName('SITUACAO').AsString;
               if(DMSAIDA.TALX.FieldByName('SITUACAO').AsString = 'CANCELADO')Then
					DMMACS.TMP.FieldByName('DESC3').AsString:='CANCELADO'
               Else Begin
       			if(DMSAIDA.TAlx.FieldByName('FORMPAG').AsString = 'À VISTA')Then
						DMMACS.TMP.FieldByName('DESC3').AsString:=DMSAIDA.TAlx.FieldByName('FORMPAG').AsString
       			Else
       				DMMACS.TMP.FieldByName('DESC3').AsString:='À PRAZO';
               End;

               if DMSAIDA.TAlx.FieldByName('TIPO').AsString='DEV' then
               	DMMACS.TMP.FieldByName('DESC3').AsString:='DEVOLUÇÃO';
               if DMSAIDA.TAlx.FieldByName('TIPO').AsString='GAR' then
               	DMMACS.TMP.FieldByName('DESC3').AsString:='GARANTIA';
               if DMSAIDA.TAlx.FieldByName('TIPO').AsString='REM' then
               	DMMACS.TMP.FieldByName('DESC3').AsString:='REMESSA';
               if DMSAIDA.TAlx.FieldByName('TIPO').AsString='VND' then
               	DMMACS.TMP.FieldByName('DESC3').AsString:='VENDA';
               if DMSAIDA.TAlx.FieldByName('TIPO').AsString='OUT' then
               	DMMACS.TMP.FieldByName('DESC3').AsString:='OUTROS';

       		DMMACS.TMP.Post;

               {
               //totalizadores
               if((DMSAIDA.TAlx.FieldByName('TIPO').AsString='DEV') and (DMSAIDA.TAlx.FieldByName('SITUACAO').AsString = 'CANCELADO'))Then
               	XDevCanV := XDevCanV + DMSAIDA.TALX.FieldByName('vlrtotdocnf').AsFloat
               Else
               	if(DMSAIDA.TAlx.FieldByName('TIPO').AsString='DEV')Then
                   	XDevV := XDevV + DMSAIDA.TALX.FieldByName('vlrtotdocnf').AsFloat;
  				if((DMSAIDA.TAlx.FieldByName('TIPO').AsString='GAR') and (DMSAIDA.TAlx.FieldByName('SITUACAO').AsString='CANCELADO'))Then
               	XGarCanV := XGarCanV + DMSAIDA.TALX.FieldByName('vlrtotdocnf').AsFloat
               Else
               	if(DMSAIDA.TAlx.FieldByName('TIPO').AsString='GAR')Then
                   	XGarV := XGarV + DMSAIDA.TALX.FieldByName('vlrtotdocnf').AsFloat;
               if((DMSAIDA.TAlx.FieldByName('TIPO').AsString='VND') and (DMSAIDA.TAlx.FieldByName('SITUACAO').AsString='CANCELADO'))Then
               	XCancV := XDevCanV + DMSAIDA.TALX.FieldByName('vlrtotdocnf').AsFloat
               Else
               	if((DMSAIDA.TAlx.FieldByName('TIPO').AsString='VND') and (DMSAIDA.TAlx.FieldByName('SITUACAO').AsString='FECHADO'))Then
                   	XTotV := XTotV + DMSAIDA.TALX.FieldByName('vlrtotdocnf').AsFloat;
               //
               }

               //Edmar - 19/02/2015 - Totalizadores
				//se a nota não foi cancelada e não é uma venda
				if (DMSAIDA.TALX.FieldByName('NFESTATUS').AsString <> '3') AND (DMSAIDA.TAlx.FieldByName('TIPO').AsString <> 'VND') then
               	xTotalOutrasSaidas := xTotalOutrasSaidas + DMSAIDA.TALX.FieldByName('VLRTOTDOCNF').AsFloat;

				//se a nota foi cancelada e não é uma venda
				if (DMSAIDA.TALX.FieldByName('NFESTATUS').AsString = '3') AND (DMSAIDA.TAlx.FieldByName('TIPO').AsString <> 'VND') then
               	xTotalCancOutrasSaidas := xTotalCancOutrasSaidas + DMSAIDA.TALX.FieldByName('VLRTOTDOCNF').AsFloat;

               //se a nota foi cancelada, é uma venda e o pedido está fechado
				if (DMSAIDA.TALX.FieldByName('NFESTATUS').AsString = '3') AND (DMSAIDA.TAlx.FieldByName('TIPO').AsString = 'VND') then
               	xTotalCancelamentos := xTotalCancelamentos + DMSAIDA.TALX.FieldByName('VLRTOTDOCNF').AsFloat;

               //se a nota não está cancelada, é uma venda e o pedido está fechado
				if (DMSAIDA.TALX.FieldByName('NFESTATUS').AsString <> '3') AND (DMSAIDA.TAlx.FieldByName('TIPO').AsString = 'VND') then
					xTotalProdutosOS := xTotalProdutosOS + DMSAIDA.TALX.FieldByName('VLRTOTDOCNF').AsFloat;
               //

               DMSAIDA.TAlx.Next;
           End;
           //
           xTotalVendasOS := xTotalProdutosOS + xTotalServicoOS;

			//DJ - 26/01/2010:	Confirma alteracoes no banco e seleciona dados para exibi-los
           DMMACS.Transaction.CommitRetaining;
       	Alx.Close;
       	Alx.SQL.Clear;
      	 	Alx.SQL.Add(' SELECT * FROM TMP ORDER BY INT1, INT3, DESC3 ');
           //Alx.ParamByName('PERIODO').AsInteger:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       	Alx.Open;

       	QRRELComSubst.Preview;
   	End;
    End;
End;

procedure TFRelMecanica.ImpRelDetalhado;
begin
	//DJ 04/03/2010: Zera os totalizadores
	XDevV := 0;
   XGarV := 0;
   XCancO := 0;
   XCancV := 0;
   XDevCanV := 0;
   XGarCanV := 0;
   XTotV := 0;
   XTotO := 0;
   //Edmar - 19/02/2015 - Zera totalizadores do relatorio de relação de notas fiscais
   xTotalVendasOS := 0;
   xTotalProdutosOS := 0;
   xTotalISS := 0;
   xTotalServicoOS := 0;
   xTotalCancelamentos := 0;
   xTotalOutrasSaidas := 0;
   xTotalCancOutrasSaidas := 0;

   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select distinct(vwordem.numero), vwordem.status, vwordem.cod_cliente, vwordem.cod_ordem, vwordem.cliente, vwordem.equipamento, ');
   DMMACS.TALX.SQL.Add(' vwordem.numfiscal as NUMDOCFIS, vwordem.placa,vwordem.dtabert, ');
   DMMACS.TALX.SQL.Add(' docfisord.modelonf, docfisord.cod_periodofiscal, docfisord.vlrtotdocnf,docfisord.dtemissao, docfisord.vlrtotiss, docfisord.numdocfisint, ');
   DMMACS.TALX.SQL.Add(' DOCFISORD.NFESTATUS, VWORDEM.STATUSNFSE, P.CFOP CFOP_PRODUTO, S.CFOP CFOP_SERVICO, O.CFOP CFOP_OUTROS, ');
   DMMACS.TALX.SQL.Add(' vwordem.formapag,vwordem.dtfech,vwordem.total, ordem.totserv as vlrtotserv, ordem.totprod as vlrtotprod, vwordem.numfiscalnfse, ');//retirado valcusto de itprodord
   DMMACS.TALX.SQL.Add(' itprodord.qtd, itprodord.vlrunit, itprodord.total as totprod, estoque.cod_estoque, subproduto.descricao, subproduto.contrint');
	 DMMACS.TALX.SQL.Add(' from vwordem left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
	 DMMACS.TALX.SQL.Add(' left join itprodord on vwordem.cod_ordem =  itprodord.cod_ordem ');
   DMMACS.TALX.SQL.Add(' LEFT JOIN ESTOQUE ON itprodord.cod_estoque = ESTOQUE.cod_estoque');
   DMMACS.TALX.SQL.Add(' LEFT JOIN subproduto ON ESTOQUE.cod_subprod = subproduto.cod_subproduto');
   DMMACS.TALX.SQL.Add(' LEFT JOIN DOCFISORD ON VWORDEM.COD_ORDEM = DOCFISORD.COD_ORDEM ');
   DMMACS.TALX.SQL.Add(' LEFT JOIN CFOP P ON DOCFISORD.COD_CFOP1 = P.COD_CFOP ');//produto
   DMMACS.TALX.SQL.Add(' LEFT JOIN CFOP S ON DOCFISORD.COD_CFOP2 = S.COD_CFOP ');//serviço
   DMMACS.TALX.SQL.Add(' LEFT JOIN CFOP O ON DOCFISORD.COD_CFOP  = O.COD_CFOP ');//outros
   DMMACS.TALX.SQL.Add(' WHERE (VWORDEM.COD_ORDEM IS NOT NULL) ');
   DMMACS.TALX.SQL.Add(' AND ((DOCFISORD.NFESTATUS <> ''2'') OR (DOCFISORD.NFSE_STATUSGERAL <> ''2'')) ');
   DMMACS.TALX.SQL.Add(' AND (DOCFISORD.COD_PERIODOFISCAL = :COD_PERIODO) ');
   DMMACS.TALX.ParamByName('COD_PERIODO').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
   DMMACS.TALX.SQL.Add(' ORDER BY VWORDEM.NUMFISCAL, VWORDEM.NUMFISCALNFSE ');
   DMMACS.TALX.SQL.Text;
   DMMACS.TALX.Open;



   //DJ - 25/01/2010: Seleciona pedidos de venda para relatorio de notas fiscais
   DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add(' SELECT DOCFISSAIDA.COD_PERIODOFISCAL, DOCFISSAIDA.NUMDOCFIS, VWPEDV.COD_CLIENTE,VWPEDV.NOMECLI, DOCFISSAIDA.DTEMISSAO, DOCFISSAIDA.VLRTOTPROD, DOCFISSAIDA.MODELONF, ');
   DMSAIDA.TAlx.SQL.Add(' DOCFISSAIDA.VLRTOTDOCNF, VWPEDV.SITUACAO, VWPEDV.COD_PEDVENDA, VWPEDV.TIPO, VWPEDV.FORMPAG, DOCFISSAIDA.NFESTATUS, P.CFOP CFOP_PRODUTO, S.CFOP CFOP_SERVICO, O.CFOP CFOP_OUTROS, ');
   DMSAIDA.TAlx.SQL.Add(' ITENSPEDVEN.QTDEPROD, ITENSPEDVEN.VALUNIT, ITENSPEDVEN.VALORTOTAL, ESTOQUE.COD_ESTOQUE, SUBPRODUTO.DESCRICAO, SUBPRODUTO.CONTRINT');
   DMSAIDA.TAlx.SQL.Add(' FROM VWPEDV');
   DMSAIDA.TAlx.SQL.Add(' LEFT JOIN DOCFISSAIDA ON VWPEDV.COD_PEDVENDA = DOCFISSAIDA.COD_PEDIDO ');
   DMSAIDA.TAlx.SQL.Add(' LEFT JOIN ITENSPEDVEN ON VWPEDV.COD_PEDVENDA = ITENSPEDVEN.COD_PEDVEN');
   DMSAIDA.TAlx.SQL.Add(' LEFT JOIN ESTOQUE ON ITENSPEDVEN.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE');
   DMSAIDA.TAlx.SQL.Add(' LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO');
   DMSAIDA.TAlx.SQL.Add(' LEFT JOIN CFOP P ON DOCFISSAIDA.COD_CFOP1 = P.COD_CFOP ');
   DMSAIDA.TAlx.SQL.Add(' LEFT JOIN CFOP S ON DOCFISSAIDA.COD_CFOP2 = S.COD_CFOP ');
   DMSAIDA.TAlx.SQL.Add(' LEFT JOIN CFOP O ON DOCFISSAIDA.COD_CFOP  = O.COD_CFOP ');
   DMSAIDA.TAlx.SQL.Add(' WHERE (DOCFISSAIDA.COD_PERIODOFISCAL = :COD_PERIODO) AND (DOCFISSAIDA.NFESTATUS <> ''2'') ');
   DMSAIDA.TAlx.SQL.Add(' ORDER BY DOCFISSAIDA.NFESTATUS, VWPEDV.NUMFISCAL ');
   DMSAIDA.TALX.ParamByName('COD_PERIODO').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
   DMSAIDA.TAlx.SQL.Text;
   DMSAIDA.TAlx.Open;

   frxDBDados.DataSet := DMMACS.TALX;
   frxDBDataset1.DataSet := DMSAIDA.TAlx;
   frxDBDataset2.DataSet := DMMACS.TEmpresa;



   RXExtratoOS.LoadFromFile('C:\MZR\Macs\Rel\frfRelAnalitRelNotas.fr3');
   RXExtratoOS.ShowReport();
End;

// - 03/02/2008 : filtra ordens por intervalo de datas informado
procedure TFRelMecanica.FiltroData;
begin
     if (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ')
     then begin
       If RGTipoData.ItemIndex=0 Then
          DMPESSOA.TRel.SQL.Add('and (vwordem.dtabert between :Data1 and :Data2) ')
       Else
          DMPESSOA.TRel.SQL.Add('and (vwordem.dtfech between :Data1 and :Data2) ');

		   DMPESSOA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
		   DMPESSOA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
     end;
end;



// - 03/02/2008 : filtra por cliente selecionado
procedure TFRelMecanica.FiltroCliente;
begin
     if FrmPessoaIni.EDCodigo.Text <> ''
     then begin
          DMPESSOA.TRel.SQL.Add('and ordem.cod_cliente = :CLI');
          DMPESSOA.TRel.ParamByName('CLI').AsInteger:=XCodCliente;
     end;
end;


procedure TFRelMecanica.QRRelComSubstBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
   //Variaveis para totalixação geral
  	XTRServico:=0;
   XTRISS:=0;
   XTRcomSubst:=0;
   XTRsemSubst:=0;
   XTROrdem:=0;
   XTRProduto:=0;

   //variavel para totalização apenas de vendas (Vindo das ordens de serviços)
   XTRVENDAS:=0;
   XTRCANCELVENDAS:=0;

   //variavel para totalização apenas de devolução e remessas de garantia (vindo do pedido de venda)
	XTRDEVOL:=0;
	XTRCANCELDEVOL:=0;
end;

procedure TFRelMecanica.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;

	//DJ 28/01/2010: Passa dados para totalizadores
   {
	QrlTotOrdem.Caption:=FormatFloat('0.00', XTROrdem);
   QrlTotProd.Caption:=FormatFloat('0.00', XTRProduto);
   QrlTotISS.Caption:=FormatFloat('0.00', XTRISS);
   QrlTotServ.Caption:=FormatFloat('0.00', XTRServico);

   Label12.Caption := FormatFloat('0.00',XDevV);
   Label13.Caption := FormatFloat('0.00',XDevCanV);
   Label14.Caption := FormatFloat('0.00',XGarV);
   Label15.Caption := FormatFloat('0.00',XGarCanV);

   Label22.Caption := FormatFloat('0.00',(StrToFloat(Label12.Caption)+ StrToFloat(label17.Caption)));
   Label23.Caption := FormatFloat('0.00',(StrToFloat(Label13.Caption)+ StrToFloat(label18.Caption)));
   Label24.Caption := FormatFloat('0.00',(StrToFloat(Label14.Caption)+ StrToFloat(label19.Caption)));
   Label25.Caption := FormatFloat('0.00',(StrToFloat(Label15.Caption)+ StrToFloat(label20.Caption)));
   Label26.Caption := FormatFloat('0.00',(XCancV+ XCancO));

   QRLabel28.Caption := FormatFloat('0.00',(XTotV+XTotO));
   }
   //Edmar - 19/02/2015 - Transfere os valores totalizados
   QrTotalServicos.Caption := FormatFloat('##,###,##0.00', xTotalServicoOS);
   QrTotalISS.Caption      := FormatFloat('##,###,##0.00', xTotalISS);
   QrTotalProdutos.Caption := FormatFloat('##,###,##0.00', xTotalProdutosOS);
   QrTotalVenda.Caption    := FormatFloat('##,###,##0.00', xTotalVendasOS);
   QrTotalCanc.Caption     := FormatFloat('##,###,##0.00', xTotalCancelamentos);
   QrTotalSaidas.Caption   := FormatFloat('##,###,##0.00', xTotalOutrasSaidas);
   QrTotalCancOut.Caption   := FormatFloat('##,###,##0.00', xTotalCancOutrasSaidas);//cancelamento de outras saídas
end;

//DJ - 22/01/2010: Filtro de produtos e servicos para relatorio de ordem analitico
procedure TFRelMecanica.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  	XSUMDESCIND: Real;
begin
  inherited;
		//DJ - 22/01/2010: A cada ordem filtra produto
  		TProd.Close;
       TProd.SQL.Clear;
       TProd.SQL.Add('Select subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' as codigo,vwsimilar.descricao,vwsimilar.marca,itprodord.cod_ordem,itprodord.qtd,itprodord.vlrunit,');
		TProd.SQL.Add('itprodord.total from itprodord left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
		TProd.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto left join vwsimilar on estoque.cod_estoque = vwsimilar.cod_estoque ');
		TProd.SQL.Add('where itprodord.cod_ordem = :cod_ordem');
       TProd.ParamByName('cod_ordem').AsInteger := DMMACS.TALX.FieldByName('cod_ordem').AsInteger;
       TProd.SQL.Text;
       TProd.Open;

  		//DJ - 22/01/2010: A cada ordem filtra serviços
       TServ.Close;
       TServ.SQL.Clear;
       TServ.SQL.Add('Select despadic.despesa,despadic.qtd,despadic.vlrfinal,despadic.vlrtotfin,despadic.desconto');
       TServ.SQL.Add(' from despadic where despadic.cod_gerador = :cod_ordem');
       TServ.ParamByName('cod_ordem').AsInteger := DMMACS.TALX.FieldByName('cod_ordem').AsInteger;
       TServ.SQL.Text;
       TServ.Open;

       XSUMTOTAL := XSUMTOTAL + DMMACS.TALX.FieldByName('TOTAL').AsFloat;
       XSUMDESCIND := ( DMMACS.TALX.FieldByName('VLRTOTPROD').AsFLoat + DMMACS.TALX.FieldByName('VLRTOTSERV').AsFloat - DMMACS.TALX.FieldByName('TOTAL').AsFloat);
		QRLabel37.Caption := FormatFloat('0.00',XSUMDESCIND);
end;

procedure TFRelMecanica.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
	  //DJ 28/01/2010: Passa dados de totalozadores
     QRLabServ.Caption := FormatFloat('0.00',XSUMSERV);
     QRLabProd.Caption := FormatFloat('0.00',XSUMPROD);
     QRLabTot.Caption := FormatFloat('0.00',XSUMTOTAL);
end;

procedure TFRelMecanica.QRSubDetail12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
	 XSUMPROD := XSUMPROD + TProd.FieldByName('TOTAL').AsFloat;
end;

procedure TFRelMecanica.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
	XSUMSERV := XSUMSERV + TServ.FieldByName('VLRTOTFIN').AsFloat;
end;

procedure TFRelMecanica.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    XSUMSERV := XSUMSERV + TServ.FieldByName('VLRTOTFIN').AsFloat;
end;

procedure TFRelMecanica.FormCreate(Sender: TObject);
begin
  inherited;
   XCodCliente := -1;  
   //DJ 28/01/2010: Abre paineis para relatorios por equipe ou por periodo fiscal caso necessario
	if(FMENU.TIPOREL = 'ORDST')Then Begin
   	PanelPerFiscal.Visible := True;
       PanelPerFiscal.BringToFront;
       Caption := 'Relatorio com Substituição';
   End
   Else Begin
   	if(FMENU.TIPOREL = 'ORDPT')Then Begin
   		PanelPerFiscal.Visible := True;
       PanelPerFiscal.BringToFront;
           Caption := 'Relatorio com Subtituição'
  	 	End
   Else Begin
   	if(FMENU.TIPOREL = 'EQUIPE')Then Begin
   		PanelRelEquipe.Visible := True;
       	PanelRelEquipe.BringToFront;
           Caption := 'Relatorio por Equipes'
  	 	End
       Else Begin
       	if(FMENU.TIPOREL = 'PEDCOBS')Then Begin
           	RGTipoData.Visible := false;
               PanelForn.Visible := True;
               PanelForn.BringToFront;
               Caption := 'Relatorio de Compras';
           End
           Else Begin
               if(FMENU.TIPOREL = 'RELATORIODEVENDADEPRODUTOMEC') or (FMENU.TIPOREL = 'RELATORIODEVENDADEPRODUTOCUSTO')
               Then Begin
           		RGTipoData.Visible := True;
               	PanelForn.Visible := False;
          			PanelRelEquipe.Visible := False;
                   FrmPessoaIni.Visible := False;
                   RGTipoData.ItemIndex := 1;
                   CBFechadas.Checked :=True;
               	Caption := 'Rel. de Produtos Vendido em OS';
               End
               Else Begin
                   FrmVendedor.Visible:=True;
                   FrmVendedor.BringToFront;
                   PanelRelEquipe.Visible := False;
                   PanelRelEquipe.SendToBack;
                   PanelPerFiscal.Visible := False;
                   PanelPerFiscal.SendToBack;
                   Caption := 'Relatório';
               End;
           End;
          End;
       End;
	End;
end;

procedure TFRelMecanica.QRBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//DJ 28/01/2010: Filtra valores para dados em relatorio de serviços por equipe
	TOrd.Close;
   TOrd.SQL.Clear;
   TOrd.SQL.Add('Select vwordem.status,vwordem.cod_ordem,vwordem.cliente,vwordem.equipamento,despadic.desconto,');
	TOrd.SQL.Add('vwordem.dtabert,despadic.despesa,despadic.vlrtotfin,despadic.qtd,despadic.vlrreal');
	TOrd.SQL.Add(' from despadic left join vwordem on despadic.cod_gerador = vwordem.cod_ordem left join docfisord on vwordem.cod_ordem = docfisord.cod_ordem');
   TOrd.SQL.Add(' where despadic.gerador = '+#39+'ORDEM'+#39);
   //DJ 28/01/2010: Se nao conter valores para equipe, nao sera exibidos dados nem cabeçalho para tal
   if(DBLookupComboBox2.Text <> '')Then Begin
   	TOrd.SQL.Add(' and despadic.cod_equipe = :cod_equipe ');
   	TOrd.ParamByName('COD_EQUIPE').AsInteger:=DMPESSOA.TEquipe.FieldByName('COD_EQUIPE').AsInteger;
       QRDBText48.Enabled := True;
       QRDBText55.Enabled := True;
       QRLabel69.Enabled := True;
		QRLabel70.Enabled := True;
   End;

     //DJ - 22/01/2010: Filtra resultado por datas
   if(CBAbertas.Checked = True)Then
   	TOrd.SQL.Add(' and (vwordem.status = '+#39+'ABERTO'+#39+')');
   if(CBFechadas.Checked = True)Then
   	TOrd.SQL.Add(' and (vwordem.status = '+#39+'FECHADO'+#39+')');
   if(CBCANCELADAS.Checked = True)Then
   	TOrd.SQL.Add(' and (vwordem.status = '+#39+'CANCELADO'+#39+')');
   if(CBTodas.Checked = True)Then
   	TOrd.SQL.Add(' and ((vwordem.status = '+#39+'ABERTO'+#39+') or (vwordem.status = '+#39+'FECHADO'+#39+') or (vwordem.status = '+#39+'CANCELADO'+#39+'))');
   if(RGTipoData.ItemIndex = 0)Then Begin
   	if((EDDataIni.Text <> '  /  /    ')and(EDDataFim.Text <> '  /  /    '))Then
   		TOrd.SQL.Add(' and ((vwordem.dtabert >= :inicial) and (vwordem.dtabert <= :final)) ')
       Else Begin
       	if(EdDataIni.Text <> '  /  /    ')Then
           	TOrd.SQL.Add(' and (vwordem.dtabert >= :inicial) ')
           Else
           	TOrd.SQL.Add(' and (vwordem.dtabert <= :final) ');
       End;
   End
   Else Begin
   	if((EDDataIni.Text <> '  /  /    ')and(EDDataFim.Text <> '  /  /    '))Then
   		TOrd.SQL.Add(' and ((vwordem.dtfech >= :inicial) and (vwordem.dtfech <= :final)) ')
       Else Begin
       	if(EdDataIni.Text <> '  /  /    ')Then
           	TOrd.SQL.Add(' and (vwordem.dtfech >= :inicial) ')
           Else
           	TOrd.SQL.Add(' and (vwordem.dtfech <= :final) ');
       End;
   End;
   if(EDDataIni.Text <> '  /  /    ')Then
   	TOrd.ParamByName('inicial').AsDate := StrToDateTime(EDDataini.Text);
   if(EDDataFim.Text <> '  /  /    ')Then
   	TOrd.ParamByName('final').AsDate := StrToDateTime(EDDataFim.Text);
   if((EDDataIni.Text = '  /  /    ')and(EDDataFim.Text = '  /  /    '))Then
		TOrd.ParamByName('final').AsDate := Date;
   //DJ - 22/01/2010: Filtra resultado por pessoa
   if(FrmPessoaIni.EdDescricao.Text <> '')Then Begin
   	TOrd.SQL.Add(' and (vwordem.cod_cliente = :cod_cliente) ');
       TOrd.ParamByName('cod_cliente').AsInteger := XCodCliente;
   End;
   //Dj 28/01/2010: Ordenando dados por cod_ordem
   TOrd.SQL.Add(' order by vwordem.cod_ordem');
   TOrd.Open;
end;

procedure TFRelMecanica.QRBand12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
	//DJ 28/01/2010: Soma valores para totalizadores de relatorio de serviços por equipe
	XSUMPROD := XSUMPROD + TOrd.FieldByName('DESCONTO').AsFloat;
   XSUMTOTAl:= XSUMTOTAL + TOrd.FieldByName('VLRTOTFIN').AsFloat;
end;

procedure TFRelMecanica.QRBand15BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //DJ - 28/01/2010: Passa valores para totalizadores de relatorio de serviços por equipe
	QRLabel52.Caption := FormatFloat('0.00',XSUMPROD);
   QRLabel53.Caption := FormatFloat('0.00',XSUMTOTAL);
end;

procedure TFRelMecanica.QRBand15AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  	//DJ - 28/01/2010: Zera variaveis apos imprimir relatorio de serviços por equipe
	XSUMTOTAL := 0;
   XSUMPROD := 0;

end;

//DJ 01/02/2010: Gera relatorio de pedidos de compra por fornecedores com obsrevacao
procedure TFRelMecanica.GeraRelSintObs;
Begin
	Alx.Close;
   Alx.SQL.Clear;
   Alx.SQL.Add(' Select vwpedc.cod_formpag,docfis.vlrfrete,vwpedc.dtpedcomp,vwpedc.cod_pedcomp,vwpedc.numped,');
   Alx.SQL.Add(' vwpedc.nome,vwpedc.valor,vwfornec.cpfcnpj, subproduto.contrint AS BARRAS,');
   Alx.SQL.Add(' itenspedc.qtdeprod, itenspedc.qtdbruta, itenspedc.qtddescarte, itenspedc.valunit,itenspedc.valortotal, itenspedc.obs, ');
   Alx.SQL.Add(' itenspedc.motivodescarte,itenspedc.QTDEEXP,');
   Alx.SQL.Add(' subproduto.descricao,unidade.sigla_unid ');
   Alx.SQL.Add(' from itenspedc ');
	Alx.SQL.Add(' left join vwpedc on itenspedc.cod_pedcompra = vwpedc.cod_pedcomp');
	Alx.SQL.Add(' left Join pedcompra on vwpedc.cod_pedcomp = pedcompra.cod_pedcomp ');
   Alx.SQL.Add(' left join vwfornec on vwpedc.cod_fornec = vwfornec.cod_fornec');
   Alx.SQL.Add(' left join docfis on vwpedc.cod_pedcomp = docfis.cod_pedido');
   Alx.SQL.Add(' left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
   Alx.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   Alx.SQL.Add(' left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
   
	if FrmBuscaNome.EdDescricao.Text <> '' then
   	Alx.SQL.Add(' where vwpedc.cod_fornec = :cod_fornec')
   else
   	Alx.SQL.Add(' WHERE (VWPEDC.COD_LOJA IS NOT NULL) ');
          
   //DJ - 22/01/2010: Filtra resultado por datas
   if(CBAbertas.Checked = True)Then
   	ALx.SQL.Add(' and (vwpedc.situacao = '+#39+'ABERTO'+#39+')');
   if(CBFechadas.Checked = True)Then
   	Alx.SQL.Add(' and (vwpedc.situacao = '+#39+'FECHADO'+#39+')');
   if(CBCANCELADAS.Checked = True)Then
   	Alx.SQL.Add(' and (vwpedc.situacao = '+#39+'CANCELADO'+#39+')');
   if(CBTodas.Checked = True)Then
   	Alx.SQL.Add(' and ((vwpedc.situacao = '+#39+'ABERTO'+#39+') or (vwpedc.situacao = '+#39+'FECHADO'+#39+') or (vwpedc.situacao = '+#39+'CANCELADO'+#39+'))');
   If(RGTipoData.ItemIndex = 0)
   Then Begin
   	if((EDDataIni.Text <> '  /  /    ') and (EDDataFim.Text <> '  /  /    '))
       Then Begin
       	Alx.SQL.Add(' and (vwpedc.dtpedcomp between :Inicial and :Final) ');
   		Alx.ParamByName('inicial').AsDate := StrToDateTime(EDDataini.Text);
			Alx.ParamByName('final').AsDate := StrToDateTime(EdDataFim.Text);
       End;
   End
   Else Begin
   	if((EDDataIni.Text <> '  /  /    ') and (EDDataFim.Text <> '  /  /    '))
       Then Begin
       	Alx.SQL.Add(' and (pedcompra.dtfech between :Inicial and :Final) ');
   		Alx.ParamByName('inicial').AsDate := StrToDateTime(EDDataini.Text);
			Alx.ParamByName('final').AsDate := StrToDateTime(EdDataFim.Text)
       End;
   End;

   if FrmBuscaNome.EdDescricao.Text <> '' then
   	Alx.ParamByName('cod_fornec').AsInteger := DMPESSOA.WFornecedor.FieldByName('cod_fornec').AsInteger;
       
   Alx.SQL.Add(' order by vwpedc.cod_pedcomp, subproduto.descricao');
   Alx.SQL.Text;
   Alx.Open;
   QRAnaliObs.Preview;
End;

//DJ 05/02/2012: Zera valor do totalizador de pedidos apos a impressao
procedure TFRelMecanica.QRAnaliObsAfterPrint(Sender: TObject);
begin
  inherited;
	XSUMTOTAL := 0;
   
end;
procedure TFRelMecanica.QRBand20BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var
       XCod,XSaldo,XUn,XValorTot,XQtdDesc,XQtdtotal,XProdTot: String;
       

begin
  inherited;
   QRLabel76.Caption := '';
  	QRLabel76.Caption := FloatToStr(XSUMTOTAL);

   //Paulo


   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('Select distinct subproduto.cod_subproduto,subproduto.descricao,unidade.sigla_unid,subproduto.contrint ');
   DMESTOQUE.Alx.SQL.Add(' from itenspedc ');
	DMESTOQUE.Alx.SQL.Add(' left join vwpedc on itenspedc.cod_pedcompra = vwpedc.cod_pedcomp');
   DMESTOQUE.Alx.SQL.Add(' left join vwfornec on vwpedc.cod_fornec = vwfornec.cod_fornec');
   DMESTOQUE.Alx.SQL.Add(' left join docfis on vwpedc.cod_pedcomp = docfis.cod_pedido');
   DMESTOQUE.Alx.SQL.Add(' left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.Alx.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.Alx.SQL.Add(' left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
   DMESTOQUE.Alx.SQL.Add(' where vwpedc.cod_fornec = :cod_fornec');
   if(CBAbertas.Checked = True)Then
   	DMESTOQUE.Alx.SQL.Add(' and (vwpedc.situacao = '+#39+'ABERTO'+#39+')');
   if(CBFechadas.Checked = True)Then
   	DMESTOQUE.Alx.SQL.Add(' and (vwpedc.situacao = '+#39+'FECHADO'+#39+')');
   if(CBCANCELADAS.Checked = True)Then
   	DMESTOQUE.Alx.SQL.Add(' and (vwpedc.situacao = '+#39+'CANCELADO'+#39+')');
   if(CBTodas.Checked = True)Then
   	DMESTOQUE.Alx.SQL.Add(' and ((vwpedc.situacao = '+#39+'ABERTO'+#39+') or (vwpedc.situacao = '+#39+'FECHADO'+#39+') or (vwpedc.situacao = '+#39+'CANCELADO'+#39+'))');
   if(RGTipoData.ItemIndex = 0)Then Begin
   	if((EDDataIni.Text <> '  /  /    ')and(EDDataFim.Text <> '  /  /    '))Then
   		DMESTOQUE.Alx.SQL.Add(' and ((vwpedc.dtpedcomp >= :inicial) and (vwpedc.dtpedcomp <= :final)) ')
       Else Begin
       	if(EdDataIni.Text <> '  /  /    ')Then
           	DMESTOQUE.Alx.SQL.Add(' and (vwpedc.dtpedcomp >= :inicial) ')
           Else
           	DMESTOQUE.Alx.SQL.Add(' and (vwpedc.dtpedcomp <= :final) ');
       End;
   End;

   if(EDDataIni.Text <> '  /  /    ')Then
   	DMESTOQUE.Alx.ParamByName('inicial').AsDate := StrToDateTime(EDDataini.Text);
   if(EDDataFim.Text <> '  /  /    ')Then
   	DMESTOQUE.Alx.ParamByName('final').AsDate := StrToDateTime(EDDataFim.Text);
   if((EDDataIni.Text = '  /  /    ')and(EDDataFim.Text = '  /  /    '))Then
		DMESTOQUE.Alx.ParamByName('final').AsDate := Date;
   DMESTOQUE.Alx.ParamByName('cod_fornec').AsInteger := DMPESSOA.WFornecedor.FieldByName('cod_fornec').AsInteger;
   DMESTOQUE.Alx.SQL.Add(' order by subproduto.descricao');
   DMESTOQUE.Alx.SQL.Text;
   DMESTOQUE.Alx.Open;
   XProdTot:='';
   XValorTot:='';
   XQtdDesc:='';
   XQtdtotal:='';
   XUn:='';
   XSaldo:='';
   XCod:='';
   DMESTOQUE.Alx.First;
   while not DMESTOQUE.Alx.Eof do
   begin
       XQtdtotal:=XQtdtotal+' '+FormatFloat('0.0',SelectTotalizadores(DMPESSOA.WFornecedor.FieldByName('cod_fornec').AsInteger,DMESTOQUE.Alx.FieldByName('cod_subproduto').AsInteger, 'QUANTIDADE'))+#13#10;
       XQtdDesc:=XQtdDesc+' '+FormatFloat('0.0',SelectTotalizadores(DMPESSOA.WFornecedor.FieldByName('cod_fornec').AsInteger,DMESTOQUE.Alx.FieldByName('cod_subproduto').AsInteger, 'QTDDESC'))+#13#10;
       XValorTot:=XValorTot+' '+FormatFloat('0.00',SelectTotalizadores(DMPESSOA.WFornecedor.FieldByName('cod_fornec').AsInteger,DMESTOQUE.Alx.FieldByName('cod_subproduto').AsInteger, 'VALORTOTAL'))+#13#10;
       XProdTot:=XProdTot+' '+DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString+#13#10;
       XCod:=XCod+' '+DMESTOQUE.Alx.FieldByName('CONTRINT').AsString+#13#10;
       XUn:=XUn+' '+DMESTOQUE.Alx.FieldByName('sigla_unid').AsString+#13#10;
       XSaldo:= XSaldo+' '+FormatFloat('0.00',SelectTotalizadores(DMPESSOA.WFornecedor.FieldByName('cod_fornec').AsInteger,DMESTOQUE.Alx.FieldByName('cod_subproduto').AsInteger, 'SALDO'))+#13#10;
       DMESTOQUE.Alx.Next;
   end;

   TotalProduto.Caption:= XProdTot;
   Quant.Caption:= xQtdtotal;
   QtdDesc.Caption:= XQtdDesc;
   VlrTotal.Caption:= XValorTot;
   Unid.Caption:= XUn;
   Saldo.Caption:= XSaldo ;
   Cod.Caption:= XCod;
end;



procedure TFRelMecanica.QRBand20AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
	 XSUMTOTAl := 0;
end;

procedure TFRelMecanica.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  If Alx.FieldByName('INT2').AsString='1'
  Then Begin
  		If Alx.FieldByName('desc2').AsString='CANCELADO'
       Then Begin
       	//Caso seja uma venda realizado em ordem de serviços e cancelado
           XTRCANCELVENDAS:=XTRCANCELVENDAS+Alx.FieldByName('VLR1').AsCurrency;
       End
       Else Begin
           XTRVENDAS:=XTRVENDAS+Alx.FieldByName('VLR1').AsCurrency;
       End;
       //QrlTipoVenda.Caption:='Vnd'
  End
  Else Begin
  		If Alx.FieldByName('desc2').AsString='CANCELADO'
       Then Begin
       	//Caso seja uma venda realizado em ordem de serviços e cancelado
           XTRCANCELDEVOL:=XTRCANCELDEVOL+Alx.FieldByName('VLR1').AsCurrency;
       End
       Else Begin
           XTRDEVOL:=XTRDEVOL+Alx.FieldByName('VLR1').AsCurrency;
       End;
       //QrlTipoVenda.Caption:='Dvl';
  End;

   XTRServico:=XTRServico+Alx.FieldByName('VLR3').AsCurrency;
   XTRISS:=XTRISS+Alx.FieldByName('VLR4').AsCurrency;
   XTRcomSubst:=XTRcomSubst+Alx.FieldByName('VLR5').AsCurrency;
   XTRsemSubst:=XTRsemSubst+Alx.FieldByName('VLR6').AsCurrency;
   XTROrdem:=XTROrdem+Alx.FieldByName('VLR1').AsCurrency;
   XTRProduto:=XTRProduto+Alx.FieldByName('VLR2').AsCurrency;
   //
   numNfe.Caption := '';
   numNfce.Caption := '';

   if Alx.FieldByName('VLR5').AsString = '55' then
       numNfe.Caption := Alx.FieldByName('INT1').AsString
   else
       numNfce.Caption := Alx.FieldByName('INT1').AsString
End;

procedure TFRelMecanica.QRBand21BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;


       //Paulo 25/02/2011:Gera o totalizadores dos produtos

       XTotQtdDesc:=XTotQtdDesc+Alx.FieldByName('qtddescarte').AsCurrency + Alx.FieldByName('QTDEEXP').AsCurrency;
       XtotVlr:=XtotVlr+Alx.FieldByName('valortotal').AsCurrency;

       //Paulo 15/03/2011: Verifica se a quantidade de descarte está em qtdexp ou em qtddescarte
       //se estiver nos dois soma 
       if (Alx.FieldByName('QTDEEXP').AsCurrency > 0)then
       begin
           LbQtdDescarte.Caption:=Alx.FieldByName('QTDEEXP').AsString;
           QrLSaldoQuantidade.Caption:=FormatFloat('0.00', (Alx.FieldByName('qtdeprod').AsCurrency - Alx.FieldByName('QTDEEXP').AsCurrency));
           LbQtdBruta.Caption:=FloatToStr(Alx.FieldByName('qtdeprod').AsCurrency);
           XTotQuant:=XTotQuant+Alx.FieldByName('qtdeprod').AsCurrency;
           XTotSaldo:=XTotSaldo+(Alx.FieldByName('QTDEPROD').AsCurrency - Alx.FieldByName('QTDEEXP').AsCurrency);
       end
       else begin
           if (Alx.FieldByName('qtddescarte').AsCurrency > 0)then
           begin
               LbQtdDescarte.Caption:=Alx.FieldByName('qtddescarte').AsString;
               QrLSaldoQuantidade.Caption:=FormatFloat('0.00', Alx.FieldByName('qtdeprod').AsCurrency);
               LbQtdBruta.Caption:=FloatToStr(Alx.FieldByName('qtdbruta').AsCurrency);
               XTotQuant:=XTotQuant+Alx.FieldByName('qtdbruta').AsCurrency;
               XTotSaldo:=XTotSaldo+Alx.FieldByName('QTDEPROD').AsCurrency;
           end
           else begin
               LbQtdDescarte.Caption:=FloatToStr(Alx.FieldByName('qtddescarte').AsCurrency + Alx.FieldByName('QTDEEXP').AsCurrency);
               QrLSaldoQuantidade.Caption:=FormatFloat('0.00', Alx.FieldByName('qtdeprod').AsCurrency);
               LbQtdBruta.Caption:=FloatToStr(Alx.FieldByName('qtdeprod').AsCurrency);
               XTotQuant:=XTotQuant+Alx.FieldByName('qtdeprod').AsCurrency;
               XTotSaldo:=XTotSaldo+Alx.FieldByName('QTDEPROD').AsCurrency;
           end;
       end;

       //Paulo 15/03/2011: Verifica se deve mostrar os dados de obs ou de motivo descarte
       if(Alx.FieldByName('obs').AsString <>'')then
           LbMotivoDescarte.Caption:= Alx.FieldByName('obs').AsString
       else
           if(Alx.FieldByName('motivodescarte').AsString <>'')then
               LbMotivoDescarte.Caption:= Alx.FieldByName('motivodescarte').AsString
           else
              LbMotivoDescarte.Caption:='';

end;

procedure TFRelMecanica.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Relatórios';
 	// Rodrigo 20/03/2015 - Zera variaveis contadoras do relatorio extrato de ordem de serviço
   XContProduto :=0;
   XContServico :=0;
   xcodVendedor := -1;
   XCodFormPag := -1;

   DMPESSOA.TEquipe.Close;
   DMPESSOA.TEquipe.SQL.Clear;
   DMPESSOA.TEquipe.SQL.Add(' select * from equipe ');
   DMPESSOA.TEquipe.Open;
   //Paulo 23/02/2011: Seleciona todos os fornecedores
   DMPESSOA.WFornecedor.Close;
   DMPESSOA.WFornecedor.SQL.Clear;
   DMPESSOA.WFornecedor.SQL.Add(' select * from vwfornec order by vwfornec.nome ');
   DMPESSOA.WFornecedor.Open;
   //Paulo 22/03/2011: Filtra periodo fiscal
   DMMACS.TPeriodoFiscal.Close;
   DMMACS.TPeriodoFiscal.SQL.Clear;
   //Edmar - 14/04/2014 - Alterado o order by para mostrar primeiro os periodos fiscais recentes
   DMMACS.TPeriodoFiscal.SQL.Add('select * from periodofiscal order by periodofiscal.cod_periodofiscal desc');
   DMMACS.TPeriodoFiscal.Open;

   If (FMenu.TIPOREL='SINTETICO') OR (FMenu.TIPOREL='ORDPROD')
	Then Begin
   	FrmFormadePagamento.Visible:=True;
   	FrmFormadePagamento.BringToFront;
	End
	Else Begin
   	FrmFormadePagamento.Visible:=False;
	End;

   If FMenu.TIPOREL='EQUIPE' Then
       RGOrdem.Visible:=True
   Else
       RGOrdem.Visible:=False;
   If FMenu.TIPOREL = 'SINTETICOVENDEDOR'
   Then Begin
       RGTipoData.Visible:=False;
       GroupBox6.Visible:=False;
       FrmPessoaIni.Visible:=false;
   End
   Else Begin
       RGTipoData.Visible:=True;
       GroupBox6.Visible:=True;
       FrmPessoaIni.Visible:=True;
   End;
   if FMenu.TIPOREL = 'RELATORIODEVENDADEPRODUTOCUSTONFE' then
   begin
       rgAnaliticoSintetico.Visible := True;
       FrmPessoaIni.Visible := False;
       FrmVendedor.Visible := False;
       CBFechadas.Checked := True;
   end
   else
       rgAnaliticoSintetico.Visible := False;
end;

//Paulo 24/02/2011: GEra totalizadores
Function TFRelMecanica.SelectTotalizadores(XCodFornec,XCodSub:Integer;XTipoCons: String):Real;
   var
       XTotal: Real;
begin
       XTotal:= 0;

   	DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add('Select itenspedc.qtdeprod,itenspedc.valunit, itenspedc.qtdbruta, itenspedc.valortotal, itenspedc.obs, itenspedc.QTDDESCARTE, itenspedc.QTDEEXP');
       DMESTOQUE.Alx1.SQL.Add(' from itenspedc ');
       DMESTOQUE.Alx1.SQL.Add(' left join vwpedc on itenspedc.cod_pedcompra = vwpedc.cod_pedcomp');
       DMESTOQUE.Alx1.SQL.Add(' left join vwfornec on vwpedc.cod_fornec = vwfornec.cod_fornec');
       DMESTOQUE.Alx1.SQL.Add(' left join docfis on vwpedc.cod_pedcomp = docfis.cod_pedido');
       DMESTOQUE.Alx1.SQL.Add(' left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
       DMESTOQUE.Alx1.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
       DMESTOQUE.Alx1.SQL.Add(' left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
       DMESTOQUE.Alx1.SQL.Add(' where vwpedc.cod_fornec = :cod_fornec AND subproduto.cod_subproduto = :cod_subproduto');

       if(CBAbertas.Checked = True)Then
           DMESTOQUE.Alx1.SQL.Add(' and (vwpedc.situacao = '+#39+'ABERTO'+#39+')');
       if(CBFechadas.Checked = True)Then
           DMESTOQUE.Alx1.SQL.Add(' and (vwpedc.situacao = '+#39+'FECHADO'+#39+')');
       if(CBCANCELADAS.Checked = True)Then
           DMESTOQUE.Alx1.SQL.Add(' and (vwpedc.situacao = '+#39+'CANCELADO'+#39+')');
       if(CBTodas.Checked = True)Then
           DMESTOQUE.Alx1.SQL.Add(' and ((vwpedc.situacao = '+#39+'ABERTO'+#39+') or (vwpedc.situacao = '+#39+'FECHADO'+#39+') or (vwpedc.situacao = '+#39+'CANCELADO'+#39+'))');
       if(RGTipoData.ItemIndex = 0)Then Begin
           if((EDDataIni.Text <> '  /  /    ')and(EDDataFim.Text <> '  /  /    '))Then
               DMESTOQUE.Alx1.SQL.Add(' and ((vwpedc.dtpedcomp >= :inicial) and (vwpedc.dtpedcomp <= :final)) ')
           Else Begin
               if(EdDataIni.Text <> '  /  /    ')Then
                   DMESTOQUE.Alx1.SQL.Add(' and (vwpedc.dtpedcomp >= :inicial) ')
               Else
                   DMESTOQUE.Alx1.SQL.Add(' and (vwpedc.dtpedcomp <= :final) ');
           End;
       End;

       if(EDDataIni.Text <> '  /  /    ')Then
           DMESTOQUE.Alx1.ParamByName('inicial').AsDate := StrToDateTime(EDDataini.Text);
       if(EDDataFim.Text <> '  /  /    ')Then
           DMESTOQUE.Alx1.ParamByName('final').AsDate := StrToDateTime(EDDataFim.Text);
       if((EDDataIni.Text = '  /  /    ')and(EDDataFim.Text = '  /  /    '))Then
           DMESTOQUE.Alx1.ParamByName('final').AsDate := Date;
       DMESTOQUE.Alx1.ParamByName('cod_fornec').AsInteger := XCodFornec;
       DMESTOQUE.Alx1.ParamByName('cod_subproduto').AsInteger := XCodSub;
       DMESTOQUE.Alx1.SQL.Add(' order by subproduto.descricao');
       DMESTOQUE.Alx1.SQL.Text;
       DMESTOQUE.Alx1.Open;

       DMESTOQUE.Alx1.First;
       //Paulo 24/02/2011: Totaliza a quantidade
       if XTipoCons = 'QUANTIDADE' then
       begin
            while not DMESTOQUE.Alx1.Eof do
            begin
               if(DMESTOQUE.Alx1.FieldByName('qtdbruta').AsString <> '')or(DMESTOQUE.Alx1.FieldByName('qtdbruta').AsFloat <> 0)then
                   XTotal:=XTotal+DMESTOQUE.Alx1.FieldByName('qtdbruta').AsFloat
               else
                   XTotal:=XTotal+DMESTOQUE.Alx1.FieldByName('qtdeprod').AsFloat;
               DMESTOQUE.Alx1.Next;
            end;
       end
       //Paulo 24/02/2011: Totaliza o valor total
       else if XTipoCons = 'VALORTOTAL' then
       begin
            while not DMESTOQUE.Alx1.Eof do
            begin
               XTotal:=XTotal+DMESTOQUE.Alx1.FieldByName('valortotal').AsFloat;
               DMESTOQUE.Alx1.Next;
            end;

       end
       //Paulo 24/02/2011: Totaliza a quantidade de descarte
       else if XTipoCons = 'QTDDESC' then
       begin
            while not DMESTOQUE.Alx1.Eof do
            begin
               XTotal:=XTotal+DMESTOQUE.Alx1.FieldByName('QTDDESCARTE').AsFloat+DMESTOQUE.Alx1.FieldByName('QTDEEXP').AsFloat;
               DMESTOQUE.Alx1.Next;
            end;
       end
       else if XTipoCons = 'SALDO' then
       begin
           while not DMESTOQUE.Alx1.Eof do
           begin
               if(DMESTOQUE.Alx1.FieldByName('QTDDESCARTE').AsString <> '')or(DMESTOQUE.Alx1.FieldByName('QTDDESCARTE').AsFloat <> 0)then
                   XTotal:=XTotal+ DMESTOQUE.Alx1.FieldByName('QTDEPROD').AsCurrency
               else
                   XTotal:=XTotal+(DMESTOQUE.Alx1.FieldByName('QTDEPROD').AsCurrency - DMESTOQUE.Alx1.FieldByName('QTDEEXP').AsCurrency);
               DMESTOQUE.Alx1.Next;
           end;

       end;

       SelectTotalizadores:=XTotal;
end;

procedure TFRelMecanica.QRBand21AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
        XQuantItemBanda:=XQuantItemBanda-1;
       If XQuantItemBanda<=0
       Then Begin
           QRBand14.Visible:=True;
           QRBand14.Enabled:=True;
       End
       Else Begin
           QRBand14.Visible:=False;
           QRBand14.Enabled:=False;
       End;
end;

procedure TFRelMecanica.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
       //QRSubDetail3.Enabled := False;
	 TServ.Close;
  	 TServ.SQL.Clear;
  	 TServ.SQL.Add('select parcelacp.dtvenc,parcelacp.valor from parcelacp ');
	 TServ.SQL.Add(' left join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar ');
	 TServ.SQL.Add(' where ctapagar.cod_gerador = :cod_ger and ctapagar.tipogerador = '+#39+'PEDCOMPRA'+#39);
  	 TServ.ParamByName('COD_GER').AsInteger := Alx.FieldByName('COD_PEDCOMP').AsInteger;
  	 TServ.Open;
    //Descobre a quanto
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add('SELECT count(itenspedc.cod_itenspedc) AS QUANTIDADE FROM itenspedc where itenspedc.cod_pedcompra=:CODIGO');
    DMMACS.TALX.ParamByName('CODIGO').AsInteger:=Alx.FieldByName('cod_pedcomp').AsInteger;
    DMMACS.TALX.Open;
    If DMMACS.TALX.IsEmpty Then
       XQuantItemBanda:=0
    Else
       XQuantItemBanda:=DMMACS.TALX.FieldByName('QUANTIDADE').AsInteger;

    
end;

procedure TFRelMecanica.QRGroup2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
       	//DJ 05/02/2010: Soma valores dos totais dos pedidos
	XSUMTOTAL := XSUMTOTAL + Alx.FieldByName('VALOR').AsFloat
end;

procedure TFRelMecanica.QRBand13BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
       //Paulo 25/12/2011: Joga as variaveis totalizadoras nas labels do relatório
       totQtd.Caption:=FormatFloat('0.0',XTotQuant);
       totDesc.Caption:=FormatFloat('0.0',XTotQtdDesc);
       totSaldo.Caption:=FormatFloat('0.00',XTotSaldo);
       totVlr.Caption:=FormatFloat('0.00',XtotVlr);
end;

procedure TFRelMecanica.QRGroup3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
       //Paulo 25/02/2011: Zera as variaveis totalizadoras
        XTotQuant:=0;
        XTotQtdDesc:=0;
        XTotSaldo:=0;
        XtotVlr:=0;
end;

procedure TFRelMecanica.QRBand14BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
       if(TServ.FieldByName('DTVENC').AsString = '')Then Begin
//   	QRDBText29.Enabled := False;
//       QRDBText30.Enabled := False;
//       QRLabel79.Enabled := True;
       QRLabel79.Caption := 'À VISTA';
       QRLabel24.Caption:='';
//       QRLabel73.Enabled := False;
//       QRDBText30.Enabled := False;
       End
       Else Begin
           QRLabel79.Caption := TServ.FieldByName('DTVENC').AsString;
           QRLabel24.Caption:=FormatFloat('0.00', TServ.FieldByName('valor').AsCurrency);
    //		QRDBText29.Enabled := True;
    //       QRDBText30.Enabled := True;
    //       QRLabel79.Enabled := False;
    //       QRLabel73.Enabled := True;
    //       QRDBText30.Enabled := True;
       End;
end;

procedure TFRelMecanica.FrmBuscaNomeBTNOPENClick(Sender: TObject);
begin
  inherited;
        //Paulo 03/03/2011: Busca cliente pelo nome
      FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', ' Order by NOME');
      If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
      Then Begin
          FrmBuscaNome.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
          FrmBuscaNome.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsString;
          FrmBuscaNome.Repaint;
      End;
end;

procedure TFRelMecanica.FrmBuscaNomeBTNMINUSClick(Sender: TObject);
begin
  inherited;
       FrmBuscaNome.BTNMINUSClick(Sender);
       FrmBuscaNome.EdDescricao.Text:='';
       FrmBuscaNome.EDCodigo.text:='';
end;

//Paulo 06/10/2011: Imprimi o relatório de ordem e produtos
procedure TFRelMecanica.RelOrdProd();
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
   //Paulo 06/10/2011: Filtra ordem de serviços
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('select vwordem.cod_cliente,vwordem.cod_ordem,vwordem.cliente,vwordem.dtabert,vwordem.status,');
	DMMACS.TALX.SQL.Add('vwordem.formapag,vwordem.dtfech,vwordem.total, vwordem.numero, ordem.totprod, ordem.totserv,');
   DMMACS.TALX.SQL.Add('despadic.vlrtotfin as valorServ, itprodord.cod_ordem, itprodord.cod_estoque, itprodord.qtd AS QTDPROD,');
   DMMACS.TALX.SQL.Add('itprodord.total as VLRPROD,itprodord.desconto, itprodord.vlrunit, subproduto.descricao, subproduto.contrint  from vwordem');
   DMMACS.TALX.SQL.Add('left join ordem on vwordem.cod_ordem = ordem.cod_ordem');
   DMMACS.TALX.SQL.Add('left join despadic on vwordem.cod_ordem = despadic.cod_gerador and  despadic.gerador = '+#39+'ORDEM'+#39+'');
   DMMACS.TALX.SQL.Add('left join itprodord on vwordem.cod_ordem = itprodord.cod_ordem');
   DMMACS.TALX.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
   DMMACS.TALX.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   DMMACS.TALX.SQL.Add('WHERE not(vwordem.cod_ordem is null)');

   //Paulo 06/10/2011:Filtra por cliente
   if(FrmPessoaIni.EdDescricao.Text <> '')Then Begin
   	DMMACS.TALX.SQL.Add(' and (vwordem.cod_cliente = :cod_cliente) ');
       DMMACS.TALX.ParamByName('cod_cliente').AsInteger := XCodCliente;
       DMMACS.TMP.FieldByName('DESC1').AsString:= FrmPessoaIni.EdDescricao.Text;
   End
   else
       DMMACS.TMP.FieldByName('DESC1').AsString:= 'TODOS';

   //Alex 07/12/2017 - Filtro por forma de pagamento
   if(XCodFormPag>0)
	Then Begin
   	DMMACS.TALX.SQL.Add(' and (ORDEM.cod_formpag = :cod_formpag) ');
       DMMACS.TALX.ParamByName('cod_formpag').AsInteger := XCodFormPag;
   End;
	//Paulo - 06/10/2011: Filtra resultado por datas e status
   if(CBAbertas.Checked = True)then
   begin
       DMMACS.TALX.SQL.Add('and (vwordem.status = '+#39+'ABERTO'+#39+')');
       DMMACS.TMP.FieldByName('DESC1').AsString:=DMMACS.TMP.FieldByName('DESC1').AsString+' Status: ABERTO';
   end;
   if(CBFechadas.Checked = True)Then
   begin
       DMMACS.TALX.SQL.Add(' and (vwordem.status = '+#39+'FECHADO'+#39+')');
       DMMACS.TMP.FieldByName('DESC1').AsString:=DMMACS.TMP.FieldByName('DESC1').AsString+' Status: FECHADO';
   end;
   if(CBCANCELADAS.Checked = True)Then
   begin
   	DMMACS.TALX.SQL.Add(' and (vwordem.status = '+#39+'CANCELADO'+#39+')');
       DMMACS.TMP.FieldByName('DESC1').AsString:=DMMACS.TMP.FieldByName('DESC1').AsString+' Status: CANCELADO';
   end;
   if(CBTodas.Checked = True)Then
   begin
   	DMMACS.TALX.SQL.Add(' and ((vwordem.status = '+#39+'ABERTO'+#39+') or (vwordem.status = '+#39+'FECHADO'+#39+') or (vwordem.status = '+#39+'CANCELADO'+#39+'))');
       DMMACS.TMP.FieldByName('DESC1').AsString:=DMMACS.TMP.FieldByName('DESC1').AsString+' Status: TODOS';
   end;
   if(RGTipoData.ItemIndex = 0)Then Begin
   	if((EDDataIni.Text <> '  /  /    ')and(EDDataFim.Text <> '  /  /    '))Then
       begin
   		DMMACS.TALX.SQL.Add(' and ((vwordem.dtabert >= :inicial) and (vwordem.dtabert <= :final)) ');
           DMMACS.TMP.FieldByName('DESC1').AsString:=DMMACS.TMP.FieldByName('DESC1').AsString+' Data Abertura: '+EdDataIni.Text+' à '+EdDataFim.Text;
       end
       Else Begin
       	if(EdDataIni.Text <> '  /  /    ')and(EdDataFim.Text = '  /  /    ')Then
           begin
           	DMMACS.TALX.SQL.Add(' and (vwordem.dtabert >= :inicial) ');
               DMMACS.TMP.FieldByName('DESC1').AsString:=DMMACS.TMP.FieldByName('DESC1').AsString+' Data Abertura: '+EdDataIni.Text;
           end;
           if(EdDataIni.Text = '  /  /    ')and(EdDataFim.Text <> '  /  /    ')Then
           begin
           	DMMACS.TALX.SQL.Add(' and (vwordem.dtabert <= :final) ');
               DMMACS.TMP.FieldByName('DESC1').AsString:=DMMACS.TMP.FieldByName('DESC1').AsString+' Data Abertura: '+EdDataFim.Text;
           end;
       End;
   End
   Else Begin
   	if((EDDataIni.Text <> '  /  /    ')and(EDDataFim.Text <> '  /  /    '))Then
       begin
   		DMMACS.TALX.SQL.Add(' and ((vwordem.dtfech >= :inicial) and (vwordem.dtfech <= :final)) ');
           DMMACS.TMP.FieldByName('DESC1').AsString:=DMMACS.TMP.FieldByName('DESC1').AsString+' Data Fechamento: '+EdDataIni.Text+' à '+EdDataFim.Text;
       end
       Else Begin
       	if(EdDataIni.Text <> '  /  /    ')Then
           begin
           	DMMACS.TALX.SQL.Add(' and (vwordem.dtfech >= :inicial) ');
               DMMACS.TMP.FieldByName('DESC1').AsString:=DMMACS.TMP.FieldByName('DESC1').AsString+' Data Fechamento: '+EdDataIni.Text;
           end
           Else begin
           	DMMACS.TALX.SQL.Add(' and (vwordem.dtfech <= :final) ');
               DMMACS.TMP.FieldByName('DESC1').AsString:=DMMACS.TMP.FieldByName('DESC1').AsString+' Data Fechamento: '+EdDataFim.Text;
           end;
       End;
   End;
   DMMACS.TMP.Post;
   DMMACS.Transaction.CommitRetaining;

   if(EDDataIni.Text <> '  /  /    ')Then
       DMMACS.TALX.ParamByName('inicial').AsDate := StrToDateTime(EDDataini.Text);
   if(EDDataFim.Text <> '  /  /    ')Then
       DMMACS.TALX.ParamByName('final').AsDate := StrToDateTime(EDDataFim.Text);


   FiltraTabela(DMMACS.TMP,'TMP','','','');

   DMMACS.TALX.SQL.Add(' order by vwordem.cod_ordem');
   DMMACS.TALX.SQL.Text;
   DMMACS.TALX.Open;
	//
   FSRel.LoadFromFile('C:\MZR\Macs\Rel\FrfOrdemMecProdutos.frf');
   FsRel.ShowReport;
end;
//Imprime relatórios de ordem de serviços mecanica junto com as compraas destinadas para a OS
procedure TFRelMecanica.ImpRelCOMPRASOS;
var
	xFiltro: String;
begin
	//Valida quanto ao intervalo de datas
   if ((EdDataIni.Text = '  /  /    ') AND (EdDataFim.Text = '  /  /    ')) OR ((EdDataIni.Text <> '  /  /    ') AND (EdDataFim.Text = '  /  /    ')) OR ((EdDataIni.Text = '  /  /    ') and (EdDataFim.Text <> '  /  /    ')) then
   begin
   	Mensagem(' A T E N Ç Ã O ', 'Por favor insera uma data válida para gerar o relatório.', '', 1, 1, False, 'A');
		Exit;
   end;

	//Edmar - 30/04/2015 - Busca os dados dos clientes que possuem ordem de serviço
	DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('  SELECT VWORDEM.cod_ordem, vwordem.numero, VWORDEM.COD_CLIENTE, VWORDEM.CLIENTE, VWCLIENTE.TELREL TELEFONE, VWCLIENTE.ENDERECO ');
   DMESTOQUE.TRel.SQL.Add('   FROM VWORDEM ');
   DMESTOQUE.TRel.SQL.Add('   LEFT JOIN ORDEM ON VWORDEM.COD_ORDEM = ORDEM.COD_ORDEM ');
   DMESTOQUE.TRel.SQL.Add('   LEFT JOIN VWCLIENTE ON ORDEM.COD_CLIENTE = VWCLIENTE.COD_CLIENTE ');
   DMESTOQUE.TRel.SQL.Add('   WHERE (VWORDEM.COD_LOJA IS NOT NULL) ');
   if((EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    '))then
   begin
   	if RGTipoData.ItemIndex = 0 then//data de abertura
   		DMESTOQUE.TRel.SQL.Add('and (vwordem.dtabert >= :DATA1) and (vwordem.dtabert <= :DATA2)')
       else//data de fechamento
   		DMESTOQUE.TRel.SQL.Add('and (vwordem.dtfech >= :DATA1) and (vwordem.dtfech <= :DATA2)');    
       DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDate(EdDataIni.Text);
       DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDate(EdDataFim.Text);
   end;

   if((EdDataIni.Text <> '  /  /    ') and (EdDatafim.Text = '  /  /    ')) then
   begin
   	DMESTOQUE.TRel.SQL.Add('and (vwordem.dtabert>=:DATA1) and (vwordem.dtabert<=:DATA2)');
       DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDate(EdDataIni.Text);
       DMESTOQUE.TRel.ParamByName('DATA2').AsDate:= StrToDate('31/12/9999')
   end;

   if((EdDataIni.Text = '  /  /    ')and (edDatafim.text <> '  /  /    ')) then
   begin
		DMESTOQUE.TRel.SQL.Add('and (vwordem.dtabert>=:DATA1) and (vwordem.dtabert<=:DATA2)');
       DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDate(EdDataFim.Text);
       DMESTOQUE.TRel.ParamByName('DATA1').AsDate:= StrToDate('01/01/0001');
   end;

   if(XCodCliente <> -1) Then
   begin
   	DMESTOQUE.TRel.SQL.Add('and vwordem.cod_cliente = :FCLIENTE');
       DMESTOQUE.TRel.ParamByName('FCLIENTE').asInteger := XCodCliente;
   end;

   if(CBAbertas.Checked) then
   	DMESTOQUE.TRel.SQL.Add('and vwordem.status= ''ABERTO''');

   if(CBCanceladas.Checked) then
   	DMESTOQUE.TRel.SQL.Add('and vwordem.status= ''CANCELADO''');

   if(CBFechadas.Checked) then
   	DMESTOQUE.TRel.SQL.Add('and vwordem.status= ''FECHADO''');

   DMESTOQUE.TRel.SQL.Add(' ORDER BY VWORDEM.CLIENTE, VWORDEM.NUMERO ');
   DMESTOQUE.TRel.Open;
   DMESTOQUE.TRel.First;

   xFiltro := 'Filtros: Data: '+EdDataIni.Text+' - '+EdDataFim.Text;

   if(CBAbertas.Checked) then
   	xFiltro := xFiltro + '; ABERTAS';

   if(CBCanceladas.Checked) then
   	xFiltro := xFiltro + '; CANCELADAS';

   if(CBFechadas.Checked) then
   	xFiltro := xFiltro + '; FECHADAS';

   if(CBTodas.Checked) then
   	xFiltro := xFiltro + '; TODAS';

   if FrmPessoaIni.EdDescricao.Text <> '' then
		xFiltro := xFiltro + FrmPessoaIni.EdDescricao.Text;

   xFiltro := xFiltro + '.';

   try
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP1').AsString := xFiltro;
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   except
   end;

	//Executa o Rave
   RelatorioOSMec.SystemPreview.FormState := wsMaximized;
   RelatorioOSMec.DefaultDest := rdPreview; { poderia ser rdPrinter para impressora    }
   RelatorioOSMec.SystemPReview.RulerType := rtBothCm; // Para mostrar a reguá n preview
   RelatorioOSMec.Execute;
end;

procedure TFRelMecanica.ImpRelExOS;
var
	xFiltro: String;
begin
	//Valida quanto ao intervalo de datas
   if ((EdDataIni.Text = '  /  /    ') AND (EdDataFim.Text = '  /  /    ')) OR ((EdDataIni.Text <> '  /  /    ') AND (EdDataFim.Text = '  /  /    ')) OR ((EdDataIni.Text = '  /  /    ') and (EdDataFim.Text <> '  /  /    ')) then
   begin
   	Mensagem(' A T E N Ç Ã O ', 'Por favor insera uma data válida para gerar o relatório.', '', 1, 1, False, 'A');
		Exit;
   end;

	//Edmar - 30/04/2015 - Busca os dados dos clientes que possuem ordem de serviço
	DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add(' SELECT DISTINCT(VWORDEM.COD_ORDEM), VWORDEM.COD_CLIENTE, VWORDEM.CLIENTE, VWCLIENTE.TELREL TELEFONE, VWCLIENTE.ENDERECO ');
   DMESTOQUE.TRel.SQL.Add(' FROM VWORDEM ');
   DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ORDEM ON VWORDEM.COD_ORDEM = ORDEM.COD_ORDEM ');
   DMESTOQUE.TRel.SQL.Add(' LEFT JOIN VWCLIENTE ON VWCLIENTE.COD_CLIENTE = ORDEM.COD_CLIENTE ');
   DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ITPRODORD ON ITPRODORD.COD_ORDEM = ORDEM.COD_ORDEM ');
   DMESTOQUE.TRel.SQL.Add(' LEFT JOIN VWSIMILAR ON VWSIMILAR.COD_ESTOQUE = ITPRODORD.COD_ESTOQUE ');
   DMESTOQUE.TRel.SQL.Add(' LEFT JOIN DESPADIC ON ORDEM.COD_ORDEM = DESPADIC.COD_GERADOR AND DESPADIC.GERADOR = ''ORDEM'' ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (VWORDEM.COD_LOJA IS NOT NULL) ');

   if((EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    '))then
   begin
   	if RGTipoData.ItemIndex = 0 then//data de abertura
   		DMESTOQUE.TRel.SQL.Add('and (vwordem.dtabert >= :DATA1) and (vwordem.dtabert <= :DATA2)')
       else//data de fechamento
   		DMESTOQUE.TRel.SQL.Add('and (vwordem.dtfech >= :DATA1) and (vwordem.dtfech <= :DATA2)');

       DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDate(EdDataIni.Text);
       DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDate(EdDataFim.Text);
   end;

   if((EdDataIni.Text <> '  /  /    ') and (EdDatafim.Text = '  /  /    ')) then
   begin
   	DMESTOQUE.TRel.SQL.Add('and (vwordem.dtabert>=:DATA1) and (vwordem.dtabert<=:DATA2)');
       DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDate(EdDataIni.Text);
       DMESTOQUE.TRel.ParamByName('DATA2').AsDate:= StrToDate('31/12/9999')
   end;

   if((EdDataIni.Text = '  /  /    ')and (edDatafim.text <> '  /  /    ')) then
   begin
		DMESTOQUE.TRel.SQL.Add('and (vwordem.dtabert>=:DATA1) and (vwordem.dtabert<=:DATA2)');
       DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDate(EdDataFim.Text);
       DMESTOQUE.TRel.ParamByName('DATA1').AsDate:= StrToDate('01/01/0001');
   end;

   if(XCodCliente <> -1) Then
   begin
   	DMESTOQUE.TRel.SQL.Add('and vwordem.cod_cliente = :FCLIENTE');
       DMESTOQUE.TRel.ParamByName('FCLIENTE').asInteger := XCodCliente;
   end;

   if(CBAbertas.Checked) then
   	DMESTOQUE.TRel.SQL.Add('and vwordem.status= ''ABERTO''');

   if(CBCanceladas.Checked) then
   	DMESTOQUE.TRel.SQL.Add('and vwordem.status= ''CANCELADO''');

   if(CBFechadas.Checked) then
   	DMESTOQUE.TRel.SQL.Add('and vwordem.status= ''FECHADO''');

   DMESTOQUE.TRel.SQL.Add(' ORDER BY VWORDEM.CLIENTE, VWORDEM.NUMERO ');
   DMESTOQUE.TRel.Open;
   DMESTOQUE.TRel.First;

   xFiltro := 'Filtros: Data: '+EdDataIni.Text+' - '+EdDataFim.Text;

   if(CBAbertas.Checked) then
   	xFiltro := xFiltro + '; ABERTAS';

   if(CBCanceladas.Checked) then
   	xFiltro := xFiltro + '; CANCELADAS';

   if(CBFechadas.Checked) then
   	xFiltro := xFiltro + '; FECHADAS';

   if(CBTodas.Checked) then
   	xFiltro := xFiltro + '; TODAS';

   if FrmPessoaIni.EdDescricao.Text <> '' then
		xFiltro := xFiltro + FrmPessoaIni.EdDescricao.Text;

   xFiltro := xFiltro + '.';

   try
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP1').AsString := xFiltro;
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   except
   end;

	//Executa o Rave
   RelatorioOSMec.SystemPreview.FormState := wsMaximized;
   RelatorioOSMec.DefaultDest := rdPreview; { poderia ser rdPrinter para impressora    }
   RelatorioOSMec.SystemPReview.RulerType := rtBothCm; // Para mostrar a reguá n preview
   RelatorioOSMec.Execute;
end;

procedure TFRelMecanica.QRBand17BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if((DMESTOQUE.TRel.FieldByName('totprod').asString) <> '') then
  	begin
		XContProduto := XContProduto + StrToFloat(DMESTOQUE.TRel.FieldByName('totprod').asString);
   	XContServico := XContServico + StrToFloat(DMESTOQUE.TRel.FieldByName('totserv').asString);
   end;
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

procedure TFRelMecanica.QRRelSinServBeforePrint(Sender: TCustomQuickRep;
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

procedure TFRelMecanica.QRBand22BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
	  {QRLabel116.Caption:= (FormatFloat('0.00',XContProduto));
     QRLabel117.Caption:= (FormatFloat('0.00',XContServico));
     QRLabel121.Caption := (FormatFloat('0.00',(XContProduto +XContServico)));}
end;

procedure TFRelMecanica.RelatorioOSMecPrint(Sender: TObject);
begin
  inherited;
   with RelatorioOSMec.BaseReport do
  	begin
		XClientesExtOS := nil;   
   	XLinha := 0;
       XLinhaImpressa := 1;
       XPagina := 1;
       
       if FMenu.TIPOREL = 'COMPRASOS' then
       	CabecalhoComprasOS
       else
       	CabecalhoExtratoOS;
              	
       xTamanhoVetorExtOS := 1;
       SetLength(XClientesExtOS, xTamanhoVetorExtOS);

       while not DMESTOQUE.TRel.Eof do
       begin
       	CriaNovaPagina;
           If 	FMenu.TIPOREL = 'COMPRASOS' Then
               EscreveClienteComprasOS//Função para imprimir o relatório de Compras em Ordem
           Else
       	    EscreveClienteExtratoOS;//Função para imprimir o extrato

           DMESTOQUE.TRel.Next;
       end;
   end;
end;

//cabeçalho para extrato de clientes OS
function TFRelMecanica.CabecalhoExtratoOS: Boolean;
begin
	with RelatorioOSMec.BaseReport do
  	begin
  		SetFont('Arial', 12);
		Bold := True;
       PrintXY(0.3, XLinha + 0.3, DMMACS.TLoja.FieldByName('TITULOPRIM').AsString);
       PrintXY(PageWidth - 1.9, XLinha + 0.3, 'Emissão: '+FormatDateTime('dd/mm/yyyy', Now()));
       Bold := False;
       XLinhaImpressa := XLinhaImpressa + 1;
       //pula linha
       XLinha := XLinha + 0.2;
       PrintXY(0.3, XLinha + 0.3, DMMACS.TLoja.FieldByName('TITULOSEC').AsString);
       Bold := True;
       PrintXY(PageWidth - 1.9, XLinha + 0.3, 'Hora: '+FormatDateTime('tt', Now()));
       PrintXY((PageWidth / 2) - 1.3, XLinha + 0.3, 'Relatório Extrato de Ordem de Serviço');
       XLinhaImpressa := XLinhaImpressa + 1;
       //pula linha
       XLinha := XLinha + 0.2;
       PrintXY(PageWidth - 1.9, XLinha + 0.3, 'Pag.: '+IntToStr(XPagina));
       XLinhaImpressa := XLinhaImpressa + 1;
       //pula linha
       XLinha := XLinha + 0.3;
       SetFont('Arial', 10);
		Bold := False;
       PrintXY(0.3, XLinha + 0.3, DMMACS.TLoja.FieldByName('TMP1').AsString);
       XLinhaImpressa := XLinhaImpressa + 1;
       PrintLeft('__________________________________________________________________________________________________________________________', 0.1);
       XLinhaImpressa := XLinhaImpressa + 1;
       NewLine;
   end;
end;

//cabeçalho para compras de Ordens de serviço
function TFRelMecanica.CabecalhoComprasOS: Boolean;
begin
	with RelatorioOSMec.BaseReport do
  	begin
  		SetFont('Arial', 12);
		Bold := True;
       PrintXY(0.5, XLinha + 0.3, DMMACS.TLoja.FieldByName('TITULOPRIM').AsString);
       PrintXY(PageWidth - 1.9, XLinha + 0.3, 'Emissão: '+FormatDateTime('dd/mm/yyyy', Now()));
       Bold := False;
       XLinhaImpressa := XLinhaImpressa + 1;
       //pula linha
       XLinha := XLinha + 0.2;
       PrintXY(0.5, XLinha + 0.3, DMMACS.TLoja.FieldByName('TITULOSEC').AsString);
       Bold := True;
       PrintXY(PageWidth - 1.9, XLinha + 0.3, 'Hora: '+FormatDateTime('tt', Now()));
       PrintXY(2.5, XLinha + 0.5, 'Relatório de Compras Para Ordens de Serviço');
       XLinhaImpressa := XLinhaImpressa + 1;
       //pula linha
       XLinha := XLinha + 0.2;
       PrintXY(PageWidth - 1.9, XLinha + 0.3, 'Pag.: '+IntToStr(XPagina));
       XLinhaImpressa := XLinhaImpressa + 1;
       //pula linha
       XLinha := XLinha + 0.3;
       SetFont('Arial', 10);
		Bold := False;
       PrintXY(0.5, XLinha + 0.3, DMMACS.TLoja.FieldByName('TMP1').AsString);
       XLinhaImpressa := XLinhaImpressa + 1;
       PrintLeft('________________________________________________________________________________________________', 0.5);
       XLinhaImpressa := XLinhaImpressa + 1;
       NewLine;
   end;
end;

//Edmar - 30/04/2015 - Aqui escreve as informações do cliente no relatório
function TFRelMecanica.EscreveClienteExtratoOS: Boolean;
var
	xI: Integer;
   xAchouCliente: Boolean;
begin
	with RelatorioOSMec.BaseReport do
  	begin
   	xAchouCliente := False;

       //Edmar - 05/05/2014 - Percorre o array para verificar se o cliente já foi escrito na OS
   	for xI := 0 to Length(XClientesExtOS) do
       begin
       	if XClientesExtOS[xI] = DMESTOQUE.TRel.FieldByName('COD_CLIENTE').AsInteger then
           	xAchouCliente := True;
       end;

       if not xAchouCliente  then
       begin
   		CriaNovaPagina;

       	//aumenta o tamanho do Array
       	SetLength(XClientesExtOS, xTamanhoVetorExtOS);
           //adiciona o cliente no array para ele não ser escrito novamente
           XClientesExtOS[xTamanhoVetorExtOS - 1] := DMESTOQUE.TRel.FieldByName('COD_CLIENTE').AsInteger;
           xTamanhoVetorExtOS := xTamanhoVetorExtOS + 1;

           SetFont('Arial', 10);
           Bold := True;
           XLinhaImpressa := XLinhaImpressa + 1;
           PrintLeft('_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _', 0.1);
           NewLine;
           XLinhaImpressa := XLinhaImpressa + 1;
           PrintLeft('Cliente: '+DMESTOQUE.TRel.FieldByName('CLIENTE').AsString+' - Fone: '+DMESTOQUE.TRel.FieldByName('TELEFONE').AsString+' - Endereço: '+DMESTOQUE.TRel.FieldByName('ENDERECO').AsString, 0.1);
           NewLine;
           XLinhaImpressa := XLinhaImpressa + 1;
       end;

       EscreveDadosOSExtratoOS;
   end;
end;

//Alex: 12/11/2015 - Imprime-se os dados do cliente da Os no relatório de compras de OS
function TFRelMecanica.EscreveClienteComprasOS: Boolean;
begin
	with RelatorioOSMec.BaseReport do
  	begin
       CriaNovaPagina;
       SetFont('Arial', 10);
       Bold := True;
       XLinhaImpressa := XLinhaImpressa + 1;
       PrintLeft(' _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _', 0.5);
       NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;
       PrintLeft('OS Número: '+DMESTOQUE.TRel.FieldByName('NUMERO').AsString+' - Cliente: '+DMESTOQUE.TRel.FieldByName('CLIENTE').AsString+' - Fone: '+DMESTOQUE.TRel.FieldByName('TELEFONE').AsString+' - Endereço: '+DMESTOQUE.TRel.FieldByName('ENDERECO').AsString, 0.7);
       NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;
       EscreveDadosOSCompraOS;
   end;
end;

function TFRelMecanica.EscreveDadosOSExtratoOS: Boolean;
begin
	with RelatorioOSMec.BaseReport do
  	begin
  		SetFont('Arial', 10);
		Bold := False;
   	//Edmar - 30/04/2015 - Busca os dados da OS do cliente
   	DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' SELECT ORDEM.COD_ORDEM, ORDEM.NUMERO, EQUIPAMENTO.PLACA, EQUIPAMENTO.DESCRICAO, ORDEM.DTABERT, ');
       DMESTOQUE.Alx.SQL.Add(' ORDEM.TOTSERV, ORDEM.TOTPROD, ORDEM.TOTORD ');
       DMESTOQUE.Alx.SQL.Add(' FROM ORDEM ');
       DMESTOQUE.Alx.SQL.Add(' LEFT JOIN EQUIPAMENTO ON ORDEM.COD_EQUIPAMENTO = EQUIPAMENTO.COD_EQUIPAMENTO ');
       DMESTOQUE.Alx.SQL.Add(' WHERE ORDEM.COD_ORDEM = :ORDEM ');
       DMESTOQUE.Alx.SQL.Add(' ORDER BY NUMERO');
       DMESTOQUE.Alx.ParamByName('ORDEM').AsInteger := DMESTOQUE.TRel.FieldByName('COD_ORDEM').AsInteger;
       DMESTOQUE.Alx.Open;

		PrintLeft('O.S.: '+DMESTOQUE.Alx.FieldByName('NUMERO').AsString+' - Equipamento: '+DMESTOQUE.Alx.FieldByName('PLACA').AsString+' - '+DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString+' - Dt. Abertura: '+DMESTOQUE.Alx.FieldByName('DTABERT').AsString, 0.3);
		NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;

       CriaNovaPagina;

       PrintRight('Total Servico: R$ '+FormatFloat('###,###0.00', DMESTOQUE.Alx.FieldByName('TOTSERV').AsCurrency)+' - Total Produto: R$ '+FormatFloat('###,###0.00', DMESTOQUE.Alx.FieldByName('TOTPROD').AsCurrency)+' - Total O.S.: R$'+FormatFloat('###,###0.00', DMESTOQUE.Alx.FieldByName('TOTORD').AsCurrency), PageWidth - 0.4);
       NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;

       CriaNovaPagina;

       PrintLeft('- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 0.5);
       NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;

       CriaNovaPagina;

       PrintLeft('Código: ', 0.5);
       PrintLeft('Produto/Serviços: ', 1.2);
       PrintLeft('Qtde: ', 5.8);
       PrintLeft('Vlr. Unit.: ', 6.3);
       PrintLeft('Vlr. Total: ', 7.2);
       NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;

       CriaNovaPagina;

       EscreveProdutoExtratoOS;
       EscreveServicoExtratoOS;
		PrintLeft('- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 0.5);
       NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;

       CriaNovaPagina;      
   end;
end;

function TFRelMecanica.EscreveDadosOSCompraOS: Boolean;
begin
	with RelatorioOSMec.BaseReport do
  	begin
  		SetFont('Arial', 10);
		Bold := False;
   	//Edmar - 30/04/2015 - Busca os dados da OS do cliente
   	DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' SELECT ORDEM.COD_ORDEM, ORDEM.NUMERO, EQUIPAMENTO.PLACA, EQUIPAMENTO.DESCRICAO, ORDEM.DTABERT, PEDCOMPRA.COD_DESTINATARIO, PEDCOMPRA.COD_PEDCOMP, PEDCOMPRA.VALOR, ');
       DMESTOQUE.Alx.SQL.Add(' ORDEM.TOTSERV, ORDEM.TOTPROD, ORDEM.TOTORD ');
       DMESTOQUE.Alx.SQL.Add(' FROM ORDEM ');
       DMESTOQUE.Alx.SQL.Add(' LEFT JOIN EQUIPAMENTO ON ORDEM.COD_EQUIPAMENTO = EQUIPAMENTO.COD_EQUIPAMENTO ');
       DMESTOQUE.Alx.SQL.Add(' LEFT JOIN PEDCOMPRA ON ORDEM.COD_ORDEM = PEDCOMPRA.COD_DESTINATARIO ');
       DMESTOQUE.Alx.SQL.Add(' WHERE ORDEM.COD_ORDEM = :ORDEM ');
       DMESTOQUE.Alx.SQL.Add(' ORDER BY NUMERO');
       DMESTOQUE.Alx.ParamByName('ORDEM').AsInteger := DMESTOQUE.TRel.FieldByName('COD_ORDEM').AsInteger;
       DMESTOQUE.Alx.Open;
       
		PrintLeft('Equipamento: '+DMESTOQUE.Alx.FieldByName('PLACA').AsString+' - '+DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString+' - Dt. Abertura: '+DMESTOQUE.Alx.FieldByName('DTABERT').AsString, 0.7);
		NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;
       
       CriaNovaPagina;
       
       //PrintRight('Total Servico: R$ '+FormatFloat('###,###0.00', DMESTOQUE.Alx.FieldByName('TOTSERV').AsCurrency)+' - Total Produto: R$ '+FormatFloat('###,###0.00', DMESTOQUE.Alx.FieldByName('TOTPROD').AsCurrency)+' - Total O.S.: R$'+FormatFloat('###,###0.00', DMESTOQUE.Alx.FieldByName('TOTORD').AsCurrency), PageWidth - 0.4);
       Bold:=true;
       PrintLeft('COMPRA.: '+DMESTOQUE.Alx.FieldByName('COD_PEDCOMP').AsString, 0.7);
       PrintRight('Total O.S.: R$ '+FormatFloat('###,###0.00', DMESTOQUE.Alx.FieldByName('TOTORD').AsCurrency), PageWidth - 0.45);
       NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;

       CriaNovaPagina;

       PrintLeft('Código: ', 0.7);
       PrintLeft('Produto/Serviços: ', 1.4);
       PrintLeft('Qtde: ', 5.8);
       PrintLeft('Vlr. Unit.: ', 6.3);
       PrintLeft('Vlr. Total: ', 7.2);

       NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;

       CriaNovaPagina;

       EscreveProdutoCompraOS;
		PrintLeft('- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -', 0.5);
       NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;

       CriaNovaPagina;

       PrintRight('Somatório dos Produtos da Compra.: R$ '+FormatFloat('###,###0.00', DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency), 7.8);
       NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;

       PrintRight('Somatório do Produtos da OS.: R$ '+FormatFloat('###,###0.00', DMESTOQUE.Alx.FieldByName('TOTPROD').AsCurrency), 7.8);
       NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;

       PrintRight('Diferença entre Compra e O.S.: R$ '+FormatFloat('###,###0.00', (DMESTOQUE.Alx.FieldByName('TOTORD').AsCurrency)-(DMESTOQUE.Alx.FieldByName('VALOR').AsCurrency)), 7.8);
       NewLine;
       XLinhaImpressa := XLinhaImpressa + 1;

       CriaNovaPagina;
   end;
end;

//Edmar - 30/04/2015 - Busca os produtos inclusos na ordem de serviço e escreve
function TFRelMecanica.EscreveProdutoExtratoOS: Boolean;
begin
	with RelatorioOSMec.BaseReport do
  	begin
  		SetFont('Arial', 10);
		Bold := False;
   	//Edmar - 30/04/2015 - Busca os dados da OS do cliente
   	DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add(' SELECT VWSIMILAR.CONTRINT, VWSIMILAR.DESCRICAO, ITPRODORD.QTD, ITPRODORD.VLRUNIT, ITPRODORD.TOTAL ');
       DMESTOQUE.Alx1.SQL.Add(' FROM ITPRODORD ');
       DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN VWSIMILAR ON ITPRODORD.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
       DMESTOQUE.Alx1.SQL.Add(' WHERE ITPRODORD.COD_ORDEM = :ORDEM ');
       DMESTOQUE.Alx1.ParamByName('ORDEM').AsInteger := DMESTOQUE.Alx.FieldByName('COD_ORDEM').AsInteger;
       DMESTOQUE.Alx1.Open;
       DMESTOQUE.Alx1.First;

       while not DMESTOQUE.Alx1.Eof do
       begin
			CriaNovaPagina;
           
           PrintLeft(DMESTOQUE.Alx1.FieldByName('CONTRINT').AsString, 0.6);
           PrintLeft(DMESTOQUE.Alx1.FieldByName('DESCRICAO').AsString, 1.2);
           PrintLeft(DMESTOQUE.Alx1.FieldByName('QTD').AsString, 5.9);
           PrintLeft(FormatFloat('###,###0.00', DMESTOQUE.Alx1.FieldByName('VLRUNIT').AsCurrency), 6.3);
           PrintLeft(FormatFloat('###,###0.00', DMESTOQUE.Alx1.FieldByName('TOTAL').AsCurrency), 7.3);

       	DMESTOQUE.Alx1.Next;
           NewLine;
           XLinhaImpressa := XLinhaImpressa + 1;
       end;
   end;
end;

function TFRelMecanica.EscreveProdutoCompraOS: Boolean;
begin
	with RelatorioOSMec.BaseReport do
  	begin
  		SetFont('Arial', 10);
		Bold := False;
   	//Edmar - 30/04/2015 - Busca os dados da OS do cliente
   	DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add(' SELECT VWSIMILAR.CONTRINT, VWSIMILAR.DESCRICAO, ITENSPEDC.QTDEPROD, ITENSPEDC.VALUNIT, ITENSPEDC.VALORTOTAL, PEDCOMPRA.COD_DESTINATARIO ');
       DMESTOQUE.Alx1.SQL.Add(' FROM ITENSPEDC ');
       DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN VWSIMILAR ON ITENSPEDC.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
       DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN PEDCOMPRA ON ITENSPEDC.COD_PEDCOMPRA = PEDCOMPRA.COD_PEDCOMP ');
       DMESTOQUE.Alx1.SQL.Add(' WHERE PEDCOMPRA.COD_DESTINATARIO = :ORDEM ');
       DMESTOQUE.Alx1.ParamByName('ORDEM').AsInteger := DMESTOQUE.Alx.FieldByName('COD_ORDEM').AsInteger;
       DMESTOQUE.Alx1.Open;
       DMESTOQUE.Alx1.First;

       while not DMESTOQUE.Alx1.Eof do
       begin
			CriaNovaPagina;

           PrintRight(DMESTOQUE.Alx1.FieldByName('CONTRINT').AsString, 1.2);
           PrintLeft(DMESTOQUE.Alx1.FieldByName('DESCRICAO').AsString, 1.4);
           PrintRight(DMESTOQUE.Alx1.FieldByName('QTDEPROD').AsString, 6.15);
           PrintRight(FormatFloat('###,###0.00', DMESTOQUE.Alx1.FieldByName('VALUNIT').AsCurrency), 6.85);
           PrintRight(FormatFloat('###,###0.00', DMESTOQUE.Alx1.FieldByName('VALORTOTAL').AsCurrency), 7.8);

       	DMESTOQUE.Alx1.Next;
           NewLine;
           XLinhaImpressa := XLinhaImpressa + 1;
       end;
   end;
end;

function TFRelMecanica.EscreveServicoExtratoOS: Boolean;
begin
	with RelatorioOSMec.BaseReport do
  	begin
  		SetFont('Arial', 10);
		Bold := False;
   	//Edmar - 30/04/2015 - Busca os dados da OS do cliente
   	DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add(' SELECT DESPADIC.DESPESA, DESPADIC.QTD, DESPADIC.VLRFINAL, DESPADIC.VLRTOTFIN ');
       DMESTOQUE.Alx1.SQL.Add(' FROM DESPADIC ');
       DMESTOQUE.Alx1.SQL.Add(' WHERE (DESPADIC.COD_GERADOR = :ORDEM) AND (DESPADIC.GERADOR = ''ORDEM'') ');
       DMESTOQUE.Alx1.ParamByName('ORDEM').AsInteger := DMESTOQUE.Alx.FieldByName('COD_ORDEM').AsInteger;
       DMESTOQUE.Alx1.Open;
       DMESTOQUE.Alx1.First;

       while not DMESTOQUE.Alx1.Eof do
       begin
			CriaNovaPagina;
           
           PrintLeft('M.O.:', 0.8);
           PrintLeft(DMESTOQUE.Alx1.FieldByName('DESPESA').AsString, 1.2);
           PrintLeft(DMESTOQUE.Alx1.FieldByName('QTD').AsString, 5.9);
           PrintLeft(FormatFloat('###,###0.00', DMESTOQUE.Alx1.FieldByName('VLRFINAL').AsCurrency), 6.3);
           PrintLeft(FormatFloat('###,###0.00', DMESTOQUE.Alx1.FieldByName('VLRTOTFIN').AsCurrency), 7.3);

       	DMESTOQUE.Alx1.Next;
           NewLine;
           XLinhaImpressa := XLinhaImpressa + 1;                     
       end;
   end;
end;

procedure TFRelMecanica.CriaNovaPagina;
begin
	with RelatorioOSMec.BaseReport do
  	begin
   	if XLinhaImpressa >= 70 then
     	begin
       	NewPage;
         	XLinhaImpressa := 1;
           XPagina := XPagina + 1;
         	XLinha := 0;
           If 	FMenu.TIPOREL = 'COMPRASOS' Then
         	    CabecalhoComprasOS
           else
         	    CabecalhoExtratoOS;
     	end;
   end;
end;

procedure TFRelMecanica.FrmVendedorEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    If Key=VK_RETURN
    Then Begin
        If FiltraTabela(DMServ.Alx, 'vwfuncionario', 'cod_funcionario', '', ' cod_funcionario='+#39+FrmVendedor.EDCodigo.Text+#39)=True
        Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           FrmVendedor.EDCodigo.Text := DMServ.Alx.FieldByName('cod_funcionario').AsString;
           FrmVendedor.EdDescricao.Text := DMServ.Alx.FieldByName('nome').AsString;
           xcodVendedor := DMServ.Alx.FieldByName('COD_EQUIPE').AsInteger;
        End
        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           FrmVendedor.EDCodigo.Text := '';
           FrmVendedor.EdDescricao.Text := '';
           xcodVendedor := -1;
        End;
    End;
end;

procedure TFRelMecanica.FrmVendedorBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS VENDEDORES PARA CONSUTA
	filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
   	xcodVendedor:=DMPESSOA.VWFuncionario.FieldByName('cod_func').AsInteger;
      	FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
      	FrmVendedor.EdDescricao.text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
		FrmVendedor.Repaint;
   End;
end;

procedure TFRelMecanica.FrmVendedorBTNMINUSClick(Sender: TObject);
begin
  inherited;
     xcodVendedor:=-1;
     FrmVendedor.EDCodigo.Text:='';
     FrmVendedor.EdDescricao.text:='';
     FrmVendedor.Repaint;
end;

procedure TFRelMecanica.FrmFormadePagamentoBTNMINUSClick(Sender: TObject);
begin
  inherited;
     XCodFormPag:=-1;
     FrmFormadePagamento.EDCodigo.Text:='';
     FrmFormadePagamento.EdDescricao.text:='';
     FrmFormadePagamento.Repaint;
end;

procedure TFRelMecanica.FrmFormadePagamentoBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS AS FORMAS DE PAGAMENTO PARA CONSULTA
	filtraTabela(DMfinanc.TFormPag, 'formpag', '', '', '');
   If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
   	XCodFormPag:=DMFINANC.TFormPag.FieldByName('cod_formpag').AsInteger;
      	FrmFormadePagamento.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
      	FrmFormadePagamento.EdDescricao.text:=DMFINANC.TFormPag.FieldByName('descricao').AsString;
		FrmFormadePagamento.Repaint;
   End;
end;

procedure TFRelMecanica.FrmFormadePagamentoEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    If Key=VK_RETURN
    Then Begin
        If FiltraTabela(DMFINANC.TFormPag, 'formpag', 'cod_interno', '', ' cod_interno='+#39+FrmFormadePagamento.EDCodigo.Text+#39)=True
        Then Begin//CASO CONSEGUIU SELECIONAR FORMA DE PAGAMENTO
           FrmFormadePagamento.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('cod_interno').AsString;
           FrmFormadePagamento.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
           XCodFormPag := DMFINANC.TFormPag.FieldByName('cod_formpag').AsInteger;
        End
        Else Begin//CASO NÃO CONSEGUIU SELECIONAR A FORMA DE PAGAMENTO
           FrmFormadePagamento.EDCodigo.Text := '';
           FrmFormadePagamento.EdDescricao.Text := '';
           XCodFormPag := -1;
        End;
    End;
end;

End.












