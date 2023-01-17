unit UOrcamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadrao, ExtCtrls, TFlatHintUnit, Grids, DBGrids, StdCtrls,
  TFlatEditUnit, Buttons, jpeg, EditFloat, ColorEditFloat, Mask, DBCtrls,
  DBColorEdit, UFrmBusca, ImgList, ColorMaskEdit, ComCtrls, Menus, FR_DSet,
  FR_DBSet, FR_Class, DrLabel, FashionPanel, cxLookAndFeelPainters,
  cxButtons, AppEvnts, cxControls, cxContainer, cxCheckListBox;

type
  TFOrcamento = class(TFCadPadrao)
    Label2: TLabel;
    DBNumPed: TDBColorEdit;
    Label3: TLabel;
    EdValorPed: TColorEditFloat;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    EdCodCli: TEdit;
    PPesCad: TPanel;
    DBNomeCli: TDBColorEdit;
    DBCPF: TDBColorEdit;
    Label5: TLabel;
    EdCPF: TEdit;
    EdNomeCli: TEdit;
    Label6: TLabel;
    LUZOPEN: TShape;
    BtnProcPess: TBitBtn;
    FrmVendedor: TFrmBusca;
    FrmFormPag1: TFrmBusca;
    Label14: TLabel;
    DBOBS: TDBMemo;
    Label1: TLabel;
    DBDTABERT: TDBColorEdit;
    Label7: TLabel;
    DBHRABERT: TDBColorEdit;
    Label8: TLabel;
    DBDTPREV: TDBColorEdit;
    Label42: TLabel;
    EdDescTProd: TColorEditFloat;
    Label31: TLabel;
    EdtotalProd: TColorEditFloat;
    Label41: TLabel;
    EdDescTServ: TColorEditFloat;
    Label32: TLabel;
    EdTotalserv: TColorEditFloat;
    Label26: TLabel;
    EdTotDesp: TColorEditFloat;
    Label40: TLabel;
    EdDescTOrdem: TColorEditFloat;
    PCProdServ: TPageControl;
    TabSheet1: TTabSheet;
    Shape6: TShape;
    GroupBox5: TGroupBox;
    DbgProduto: TDBGrid;
    Panel2: TPanel;
    LProduto: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    LEstoque: TLabel;
    LSaldoEstoque: TLabel;
    LMarcaProd: TLabel;
    LLocal: TLabel;
    PCodFab: TPanel;
    Label10: TLabel;
    EDCodFab: TColorMaskEdit;
    PCodComposto: TPanel;
    Label16: TLabel;
    EDCodComposto: TColorMaskEdit;
    PCodInterno: TPanel;
    Label17: TLabel;
    EDCodInterno: TColorEditFloat;
    BtnProcProd: TBitBtn;
    BtnInsertProd: TBitBtn;
    BtnDeleteProd: TBitBtn;
    EDQuantidade: TColorEditFloat;
    EDValUnit: TColorEditFloat;
    EDDesc: TColorEditFloat;
    EDTotal: TColorEditFloat;
    PBPCodBarra: TPanel;
    Label15: TLabel;
    EDCodBarra: TEdit;
    BtnEscolheProc: TBitBtn;
    TabSheet2: TTabSheet;
    Shape7: TShape;
    Panel3: TPanel;
    LServico: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    Label22: TLabel;
    LSubServico: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    BtnProcServ: TBitBtn;
    BtnInsertServ: TBitBtn;
    BtnDeleteServ: TBitBtn;
    EDQtdServ: TColorEditFloat;
    EDVlrUnitServ: TColorEditFloat;
    EdDescServ: TColorEditFloat;
    EdVlrtotalServ: TColorEditFloat;
    EdCodcompostoServ: TColorMaskEdit;
    EdCodInternoServ: TColorEditFloat;
    GroupBox4: TGroupBox;
    DbgServicos: TDBGrid;
    TabSheet3: TTabSheet;
    ImageList1: TImageList;
    PCabDesp: TPanel;
    Shape15: TShape;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    EdDescD: TColorEditFloat;
    EdQtdD: TColorEditFloat;
    EdVlrCustoD: TColorEditFloat;
    EdVlrCobradoD: TColorEditFloat;
    EdVlrTotD: TColorEditFloat;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DbgDespesas: TDBGrid;
    EdNumOrc: TFlatEdit;
    MEscolheProc: TPopupMenu;
    ControleInterno1: TMenuItem;
    CdFab1: TMenuItem;
    C1: TMenuItem;
    FSRel: TfrReport;
    FSDSRel: TfrDBDataSet;
    FSDSServ: TfrDBDataSet;
    FSDSDesp: TfrDBDataSet;
    PmRelatorio: TPopupMenu;
    CompdeAbertura1: TMenuItem;
    Label11: TLabel;
    EDMarca: TColorEditFloat;
    Label23: TLabel;
    EdUnidade: TColorEditFloat;
    Label24: TLabel;
    EdDesconto: TColorEditFloat;
    FrmReservTec: TFrmBusca;
    Label25: TLabel;
    EdResTec: TColorEditFloat;
    EdDescmoe: TColorEditFloat;
    Label30: TLabel;
    LCustoTot: TLabel;
    LCtrint: TLabel;
    PPrecos: TPanel;
    FashionPanel3: TFashionPanel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    EdVlrVarejoVista: TColorEditFloat;
    EdVlrVarejoPrazo: TColorEditFloat;
    EdVlrAtacadoVista: TColorEditFloat;
    EdVlrAtacadoPrazo: TColorEditFloat;
    PQtdConvert: TPanel;
    Label62: TLabel;
    EdQtdConvert: TColorEditFloat;
    DBGridConvert: TDBGrid;
    PLabelConvertion: TPanel;
    LQtdConvert: TLabel;
    edDtAbertura: TFlatEdit;
    ApplicationEvents1: TApplicationEvents;
    LQTDPROD: TLabel;
    LQTDSERV: TLabel;
    LQTDDESP: TLabel;
    PConversaoUnitaria: TPanel;
    FPConversaoUnitaria: TFashionPanel;
    lbConversaoUnitVenda: TLabel;
    lbConverUnitariaVenda: TLabel;
    lbConversaoUnitariaPara: TLabel;
    Label84: TLabel;
    btnVisualizarConvUnit: TcxButton;
    edQntConvertVenda: TColorEditFloat;
    edQntConvert: TColorEditFloat;
    btnOkConversaoUnitaria: TcxButton;
    cbConvUnitVendaConv: TDBLookupComboBox;
    cbUnidConvVenda: TDBLookupComboBox;
    Label28: TLabel;
    EdDescricao: TFlatEdit;
    procedure FormActivate(Sender: TObject);
    procedure EdNumOrcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCliExit(Sender: TObject);
    procedure DBNomeCliKeyPress(Sender: TObject; var Key: Char);
    procedure BtnProcPessClick(Sender: TObject);
    procedure FrmVendedorBTNOPENClick(Sender: TObject);
    procedure FrmVendedorEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFormPag1BTNOPENClick(Sender: TObject);
    procedure FrmFormPag1EDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFormPag1BTNMINUSClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure EdDescTProdExit(Sender: TObject);
    procedure EdtotalProdExit(Sender: TObject);
    procedure EdDescTServExit(Sender: TObject);
    procedure EdTotalservExit(Sender: TObject);
    procedure EDCodInternoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodCompostoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodFabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnEscolheProcClick(Sender: TObject);
    procedure EDQuantidadeExit(Sender: TObject);
    procedure EDValUnitEnter(Sender: TObject);
    procedure EDTotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure BtnProcProdClick(Sender: TObject);
    procedure ControleInterno1Click(Sender: TObject);
    procedure CdFab1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure BtnDeleteProdClick(Sender: TObject);
    procedure EdCodInternoServKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodcompostoServKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDQtdServExit(Sender: TObject);
    procedure EDVlrUnitServEnter(Sender: TObject);
    procedure EdVlrtotalServKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnProcServClick(Sender: TObject);
    procedure BtnInsertServClick(Sender: TObject);
    procedure BtnDeleteServClick(Sender: TObject);
    procedure EdQtdDExit(Sender: TObject);
    procedure EdVlrCustoDExit(Sender: TObject);
    procedure EdVlrCobradoDExit(Sender: TObject);
    procedure EdVlrTotDExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure CompdeAbertura1Click(Sender: TObject);
    procedure EDTotalExit(Sender: TObject);
    procedure DBDTPREVExit(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmBusca1EDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDescmoeExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridConvertCellClick(Column: TColumn);
    procedure DBGridConvertExit(Sender: TObject);
    procedure DBGridConvertKeyPress(Sender: TObject; var Key: Char);
    procedure EdQtdConvertKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDQuantidadeEnter(Sender: TObject);
    procedure cbConvUnitVendaConvExit(Sender: TObject);
    procedure btnVisualizarConvUnitClick(Sender: TObject);
    procedure edQntConvertVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edQntConvertVendaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edQntConvertKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edQntConvertKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOkConversaoUnitariaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOkConversaoUnitariaClick(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdNumOrcEnter(Sender: TObject);
    procedure EdNumOrcExit(Sender: TObject);
    procedure edDtAberturaEnter(Sender: TObject);
    procedure edDtAberturaExit(Sender: TObject);
    procedure edDtAberturaKeyPress(Sender: TObject; var Key: Char);
    procedure edDtAberturaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbgProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbgServicosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbgDespesasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    //Limpa as labels de seleção de produto
    Procedure LimpaLabels;
	 Procedure LimpaLabelsPROD;	 //Limpa as labels de seleção de produto
	 Procedure LimpaLabelsSERV;	 //Limpa as labels de seleção de Serviço
	 Procedure LimpaLabelsDESP;	 //Limpa as labels de Despesas
	 Procedure EscreveLabelsSERV;	 //Limpa as labels de seleção de serviços
	 Procedure EscreveLabelsPROD; //Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado

	 //Filtra Tabela Slave e calcula total
	 Procedure FiltraSlave;
    // filtra tabela unidade pela unidade de venda do produto
    procedure AtualizaQntConvertida;
    // - 27/02/2009: procedure que busca dados de conversão unitária
    procedure convertunidade;

    procedure verificaDescontoFormpag;
  public
    { Public declarations }
  end;

var
  FOrcamento: TFOrcamento;
  XCodFormPag, XCodVendedor, XCodPessoa, XCodMoeda, XCodSlave: Integer;
  {XCodPedido,} Estado: String;
  XLIBDESCPROD: Boolean;//Variável que controla se foi liberado um desconto superior ao cadastrado para o produto
  XLIBMARGEMSEG: Boolean;//Variável que controla se foi liberado a margem de segurança
  XVLRTOTAL, XVLRTPROD, XVLRTSERV: REAL;// ARMARZENA VALOR TOTAL DO PEDIDO
  XCOD_ITPROD, XCOD_ITSERV, XCOD_ITDESP: INTEGER;
  XCOD_RESTEC: INTEGER;
  XCodUnidItenProd:Integer; //armazena o codigo da unidade do produto


  XConvUnitEmb:Boolean; // - 26/01/2009: se estiver true é pq em loja esta configurado como conversao unitaria de embalangem

  XConvUnitVenda:Boolean; // - 06/02/2009: se estiver true é pq em loja esta configurado como conversao unitaria p/ venda
  XVlrConv:Double; // - 06/02/2009: armazena o valor de conversão das unidades
  XConvVlr:Boolean; // - 06/02/2009: true valor de compra é o valor de entrada da conversão senão false
  XConvAtivo:Boolean; // - 06/02/2009: true ativar conversão nos campos

  xqtdconvert: Real; // - 03/03/2009: controla quantidade convertida na vergalhão



implementation

uses UDMMacs, UDMSaida, UMenu, Alxor32, UDmServ, UDMEstoque, UDMPessoa,
  AlxMessage, UDMFinanc, UCliente, UFuncionario, UFormPag, USenha, UProduto,
  UServico, UDMGEOGRAFIA, DB, UPedidoPadrao, UConfigLoja, UConvertUnid;

{$R *.DFM}

//Filtra as tabelas e escreve em edits e labels as informações dos serviços selecionado
Procedure TFORCAMENTO.EscreveLabelsSERV;
Begin
	//Filtra tabela de subservicos de acordo com o servico selecionada em fservico
   If FiltraTabela(DMSERV.TSubserv, 'SUBSERVICO', 'COD_SUBSERVICO', DMSERV.WSubServ.FieldByName('COD_SUBSERVICO').AsString, '')=False Then
		Exit;

	//Passa os valores do produto selecionado para as labels
   LServico.Caption:=DMSERV.WServico.FieldByName('SERVICO').AsString;
   LSubServico.Caption:=DMSERV.TSubserv.FieldByName('DESCRICAO').AsString;
   EDQtdServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('TEMPSERV').AsCurrency;
   EDVlrUnitServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('VLRFINAL').AsCurrency;
End;

//Filtra as tabelas e escreve em edits e labels as informações dos produtos selecionado
Procedure TFORCAMENTO.EscreveLabelsPROD;
Begin
	//Filtra tabela de subproduto de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMEstoque.WSimilar.FieldByName('COD_SUBPRODUTO').AsString, '')=False Then
		Exit;

   //Filtra tabela de estoque de acordo com o produto selecionada em fproduto
	If FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString, '')=False Then
   	Exit;

   // se o campo TIPOVENDA for igual a 1, a venda esta configurada para valores a vista
   If DMMACS.TLoja.FieldByName('tipovenda').AsString = '0'
   Then Begin
       If (EDQuantidade.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
       Then Begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
           If FrmFormPag1.EdDescricao.Text = 'À VISTA'
           Then Begin
               EDValUnit.Text := FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendatav').AsCurrency);
           End
           Else Begin
               EDValUnit.Text :=FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
           End;
       End
       Else Begin
           If FrmFormPag1.EdDescricao.Text = 'À VISTA'
           Then Begin
               EDValUnit.Text :=FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendVARV').AsCurrency);
           End
           Else Begin
               EDValUnit.Text :=FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendVARP').AsCurrency);
           End;
       End;

   End
   Else Begin
       If (EDQuantidade.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) And (DMEstoque.TSubProd.FieldByName('QTDATC').AsString<>'')
       Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
           EDValUnit.Text := FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendatap').AsCurrency);
       End
       Else Begin
           EDValUnit.Text :=FormatCurr('0.00',DMEstoque.TEstoque.FieldByName('vendVARP').AsCurrency);
       End;
   End;

   // se utiliar conversão unitária de venda
   if XConvUnitVenda
   then begin

       // - 06/02/2009: FILTRA UNIDADE DE CONVERSÃO DO PRODUTO
       DMESTOQUE.Alx2.Close;
       DMESTOQUE.Alx2.SQL.Clear;
       DMESTOQUE.Alx2.SQL.Add('select * from CONVUNID');
       DMESTOQUE.Alx2.SQL.Add('where (CONVUNID.COD_UNIDSAI = '+DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsString+' and CONVUNID.COD_UNIDENT = '+DMEstoque.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString+
                                ') or (CONVUNID.COD_UNIDSAI = '+DMEstoque.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString+' and CONVUNID.COD_UNIDENT = '+DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsString+')');
       DMESTOQUE.Alx2.Open;
       
       // - 06/02/2009: FILTRA TABELA UNIDADE PELO CODIGO DE UNIDADE DE VENDA DO PRODUTO
       FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE', DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsString, '');

       // - 06/02/2009: FILTRA TABELA UNIDADE PELOS CODIGO DE UNIDADE DE VENDA E COMPRA DO PRODUTO
       DMESTOQUE.Alx3.Close;
       DMESTOQUE.Alx3.SQL.Clear;
       DMESTOQUE.Alx3.SQL.Add('select * from unidade');
       DMESTOQUE.Alx3.SQL.Add('where unidade.cod_unidade = '+DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsString);

        // - 06/02/2009:   SE FOI ENCONTRADA UNIDADE DE CONVERSÃO PRAS UNIDADES DO PRODUTO FILTRAR UNIDADE DE COMPRA
       if not DMESTOQUE.Alx2.IsEmpty
       then begin
            DMESTOQUE.Alx3.SQL.Add(' or unidade.cod_unidade = '+DMEstoque.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString);
            try
                XVlrConv := StrToFloat(DMESTOQUE.Alx2.FieldByName('QTDCONVERT').AsString);
                if DMESTOQUE.Alx2.FieldByName('COD_UNIDENT').AsInteger = DMEstoque.TSubProd.FieldByName('COD_UNIDCOMPRA').AsInteger then
                    XConvVlr := True
                else
                    XConvVlr := False;
                    
            Except
                XVlrConv := 1;
            end;
       end
       else begin
           XVlrConv := 1; // - 06/02/2009: setar valor de conversão como 1 p/ nao dar problemas nas conversões casso ocorrer um erro
       end;
       DMESTOQUE.Alx3.Open;

       // - 06/02/2009: DEIXA OS DOIS COMBOBOX COM UNIDADE DE VENDA

        // - 06/02/2009:  deixar conversao ativa
       XConvAtivo := True;
       FPConversaoUnitaria.Color := $00FFECEC;
       FPConversaoUnitaria.Title := 'Conversão Unitária';
       FPConversaoUnitaria.Refresh;
       cbUnidConvVenda.KeyValue:= DMEstoque.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger ;
   end;



	//Passa os valores do produto selecionado para as labels
   LProduto.Caption:=DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
   LMarcaPROD.Caption:=DMEstoque.TSubProd.FieldByName('Marca').asstring;
   LCtrint.Caption:=DMEstoque.TSubProd.FieldByName('contrint').asstring;
   LLocal.Caption:=DMEstoque.TSubProd.FieldByName('LOCALESTANTE').asstring;
   LEstoque.Caption:=FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency);
   LSaldoEstoque.Caption:=FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTSALDO').AsCurrency);
   If (DMEstoque.TEstoque.FieldByName('VALREP').AsString<>'') and (DMEstoque.TEstoque.FieldByName('COEFDIV').AsString<>'') Then
   	LCustoTot.Caption:=FormatFloat('0.00', DMEstoque.TEstoque.FieldByName('VALREP').AsCurrency/DMEstoque.TEstoque.FieldByName('COEFDIV').AsCurrency)
   Else
       LCustoTot.Caption:='Nulo';   
   
End;
//Limpa as labels de seleção de produto
Procedure TFORCAMENTO.LimpaLabelsPROD;
Begin
   EDCodBarra.Clear;
   EDCodInterno.Clear;
   EDCodComposto.Clear;
   EDCodFab.Clear;
   EDQuantidade.Clear;
   EDValUnit.Clear;
   EDDesc.Clear;
   EDTotal.Clear;
   LEstoque.Caption:='';
   LSaldoEstoque.Caption:='';
   LProduto.Caption:='';
   LMarcaPROD.Caption:='';
   LCustoTot.Caption:='';
   LCtrint.Caption:='';
   LQtdConvert.Caption:='';

   XCodUnidItenProd :=  0;

End;
//Limpa as labels de seleção de Servico
Procedure TFORCAMENTO.LimpaLabelsSERV;
Begin
   EdCodInternoServ.Clear;
   EdCodcompostoServ.Clear;
   EDQtdServ.Clear;
   EDVlrUnitServ.Clear;
   EdDescServ.Clear;
   EdVlrtotalServ.Clear;
   LServico.Caption:='';
   LSubServico.Caption:='';
End;
//Limpa as labels de Despesas
Procedure TFORCAMENTO.LimpaLabelsDESP;
Begin
   EDDESCD.CLEAR;
   EdQtdD.ValueNumeric:=0;
   EdVlrCustoD.ValueNumeric:=0;
   EdVlrCobradoD.ValueNumeric:=0;
   EdVlrTotD.ValueNumeric:=0;
End;
//Filtra Tabela Slave e calcula totalProcedure TFOrcamento.FiltraSlave;
//Filtra Tabela Slave e calcula total
Procedure TFOrcamento.FiltraSlave;
Begin
	//TRABALHA COM PRODUTOS DA ORDEM
   //CALCULA TOTAL
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select Sum(ITPRODORC.VLRTOTAL) as TOTAL From ITPRODORC');
	DMESTOQUE.TSlave.SQL.Add('Where ITPRODORC.COD_ORCAMENTO = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsString:=XCodPedido;
	DMESTOQUE.TSlave.Open;

   //informa total de produtos

	EdtotalProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;
   XVLRTPROD:=DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;

    // - 16/02/2009:  soma qnt de produtos
    DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select Sum(ITPRODORC.qtd) as QTD, count(ITPRODORC.qtd) as QTDITEM From ITPRODORC');
	DMESTOQUE.TSlave.SQL.Add('Where ITPRODORC.COD_ORCAMENTO = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsString:=XCodPedido;
	DMESTOQUE.TSlave.Open;
    // - 16/02/2009:   INFORMA QTD DE ITEMS
   If DMESTOQUE.TSlave.FieldByName('QTD').AsString='' Then
		LQTDPROD.Caption:='Qtd L: 0    Qtd T: 0'
   Else
   	LQTDPROD.Caption:='Qtd L: '+DMESTOQUE.TSlave.FieldByName('QTDITEM').AsString+'    Qtd T: '+DMESTOQUE.TSlave.FieldByName('QTD').AsString;

    LQTDPROD.Repaint;

   //INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select itprodorC.cod_itprodorC, unidade.sigla_unid AS UNIDADE, itprodorC.cod_orcamento, itprodorc.cod_estoque,  itprodorc.qtd, itprodorc.vlrtotal AS TOTAL, ');
	DMESTOQUE.TSlave.SQL.Add('itprodorc.desconto, itprodorc.vlrunit, subproduto.descricao, subproduto.contrint, subproduto.marca, SubProduto.CODPRODFABR,');
   // - 06/02/2009:  se usar conversão unitaria para vendas incluir campos

   DMESTOQUE.TSlave.sql.Add('itprodorc.qtdemb, itprodorc.unidemb, itprodorc.qtdnaemb, tmp.desc2, tmp.desc1,');
   DMESTOQUE.TSlave.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD ');
	DMESTOQUE.TSlave.SQL.Add('From itprodorc left Join estoque on estoque.cod_estoque = itprodorc.cod_estoque ');
	DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on  estoque.cod_subprod = subproduto.cod_subproduto ');
    DMESTOQUE.TSlave.sql.Add('LEFT Join tmp on itprodorC.cod_itprodorC = tmp.int1');
   If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1'
   then begin
        DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on itprodorc.cod_unidade = unidade.cod_unidade ');
   end
   else begin
	     DMESTOQUE.TSlave.SQL.Add('left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
   end;
	DMESTOQUE.TSlave.SQL.Add('Where itprodorc.cod_orcamento = :CODORDEM ');
	DMESTOQUE.TSlave.ParamByName('CODORDEM').AsString:=XCodPedido;
	DMESTOQUE.TSlave.Open;
   
	//TRABALHA COM SERVIÇOS DA ORDEM
   //CALCULA TOTAL
	DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('Select Sum(ITSERVORC.VLRTOTAL) as TOTAL From ITSERVORC');
	DMESTOQUE.TSlaveServ.SQL.Add('Where ITSERVORC.COD_ORCAMENTO = :CODORDEM ');
	DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsString:=XCodPedido;
	DMESTOQUE.TSlaveServ.Open;
   //informa total de serviços
	EdTotalserv.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;
   XVLRTSERV:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').AsCurrency;


    // - 16/02/2009:  soma qnt de serviços
    DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('Select Sum(ITSERVORC.qtd) as QTD, count(ITSERVORC.qtd) as QTDITEM From ITSERVORC');
	DMESTOQUE.TSlaveServ.SQL.Add('Where ITSERVORC.COD_ORCAMENTO = :CODORDEM ');
	DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsString:=XCodPedido;
	DMESTOQUE.TSlaveServ.Open;
    // - 16/02/2009:   INFORMA QTD DE serviços
   If DMESTOQUE.TSlaveServ.FieldByName('QTD').AsString='' Then
		LQTDSERV.Caption:='Qtd L: 0    Qtd T: 0'
   Else
   	LQTDSERV.Caption:='Qtd L: '+DMESTOQUE.TSlaveServ.FieldByName('QTDITEM').AsString+'    Qtd T: '+DMESTOQUE.TSlaveServ.FieldByName('QTD').AsString;

    LQTDSERV.Repaint;


  	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('select itservorc.cod_itservorc, itservorc.cod_orcamento, itservorc.cod_servico, ');
	DMESTOQUE.TSlaveServ.SQL.Add('itservorc.desconto, itservorc.qtd, itservorc.vlrtotal AS TOTAL, itservorc.vlrunit, ');
	DMESTOQUE.TSlaveServ.SQL.Add('subservico.descricao, Unidade.desc_unid as UNIDADE ');
	DMESTOQUE.TSlaveServ.SQL.Add('from itservorc left join subservico ON itservorc.cod_servico = subservico.cod_subservico ');
	DMESTOQUE.TSlaveServ.SQL.Add('left join unidade ON subservico.cod_unidade=unidade.cod_unidade ');
	DMESTOQUE.TSlaveServ.SQL.Add('Where itservorc.cod_orcamento = :CODORDEM ');
	DMESTOQUE.TSlaveServ.ParamByName('CODORDEM').AsString:=XCodPedido;
	DMESTOQUE.TSlaveServ.Open;

   //TRABALHANDO COM DESPESAS
   //CALCULA TOTAL
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('select Sum(despadic.vlrtotfin) AS TOT From despadic Where (despadic.gerador='+#39+'ORCAMENTO'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.Alx2.ParamByName('COD_GERADOR').AsString:=XCodPedido;
	DMESTOQUE.Alx2.Open;
   EdTotDesp.ValueNumeric:=DMESTOQUE.Alx2.FieldByName('TOT').AsCurrency;


   // - 16/02/2009:  soma qnt de despesas
    DMESTOQUE.Alx2.Close;
	DMESTOQUE.Alx2.SQL.Clear;
	DMESTOQUE.Alx2.SQL.Add('Select Sum(despadic.qtd) as QTD, Count(despadic.qtd) as QTDITEM From despadic');
	DMESTOQUE.Alx2.SQL.Add('Where despadic.COD_GERADOR = :CODORDEM ');
	DMESTOQUE.Alx2.ParamByName('CODORDEM').AsString:=XCodPedido;
	DMESTOQUE.Alx2.Open;
    // - 16/02/2009:   INFORMA QTD DE despesas
   If DMESTOQUE.Alx2.FieldByName('QTD').AsString='' Then
		LQTDDESP.Caption:='Qtd L: 0    Qtd T: 0'
   Else
   	LQTDDESP.Caption:='Qtd L: '+DMESTOQUE.Alx2.FieldByName('QTDITEM').AsString+'    Qtd T: '+DMESTOQUE.Alx2.FieldByName('QTD').AsString;;

    LQTDDESP.Repaint;


   //FILTRA DESPESAS
   DMESTOQUE.TDesp.Close;
   DMESTOQUE.TDesp.SQL.Clear;
   DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'ORCAMENTO'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsString:=XCodPedido;
	DMESTOQUE.TDesp.Open;

 	//ATRIBUI TOTAL VENDIDO SEM DESCONTO À VARIAVEL
   XVLRTOTAL:=XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric;

   //CALCULA DESCONTOS PARA PRODUTO
   If EdDescmoe.ValueNumeric<>0
   Then Begin
       EdtotalProd.ValueNumeric:=XVLRTPROD-EdDescmoe.ValueNumeric;
		CalcPercent(0, XVLRTPROD-EdtotalProd.ValueNumeric, XVLRTPROD , 'D');
		EdDescTProd.ValueNumeric:=AlxPercento;
       {
   	CalcPercent(StrToFloat(EdDescTProd.text) , XVLRTPROD, XVLRTPROD, 'D');
   	If AlxValor<>0 Then
			EdtotalProd.Text:=FormatFloat('#,##0.00', AlxCalculo)
		Else
			EdtotalProd.Text:='0,00';
           }
   End;

   //CALCULA DESCONTOS PARA SERVIÇO
   If EdDescTServ.ValueNumeric<>0
   Then Begin
   	CalcPercent(StrToFloat(EdDescTServ.text), XVLRTSERV, XVLRTSERV, 'D');
   	If AlxValor<>0 Then
			EdTotalserv.Text:=FormatFloat('#,##0.00', AlxCalculo)
		Else
			EdTotalserv.Text:='0,00';
   End;

   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
   EdValorPed.ValueNumeric:=EdTotalserv.ValueNumeric+EdtotalProd.ValueNumeric+EdTotDesp.ValueNumeric;
	CalcPercent(0, XVLRTOTAL-EdValorPed.ValueNumeric, XVLRTOTAL , 'D');
   EdDescTOrdem.ValueNumeric:=AlxPercento;
   EdDescmoe.ValueNumeric:=XVLRTPROD-EdtotalProd.ValueNumeric;
End;

//Limpa as labels de seleção de produto
Procedure TFOrcamento.LimpaLabels;
Begin
   EDCodBarra.Text:='';
   EDCodInterno.Text:='';
   EDCodComposto.Text:='';
   EDQuantidade.Text:='';
   EDValUnit.Text:='';
   EDDesc.Text:='';
   EDTotal.Text:='';
   LEstoque.Caption:='';
   LSaldoEstoque.Caption:='';
   LProduto.Caption:='';
   LMarcaProd.Caption:='';
   LLocal.Caption:='';
End;

procedure TFOrcamento.FormActivate(Sender: TObject);
begin
  inherited;
	XTabela:=DMSAIDA.TOrc;
	XCampo:='NUMORC';
   XPkTabela:='COD_ORCAMENTO';
   XTransaction:=DMSAIDA.IBT;
   XView:=DMSAIDA.WOrc;
   XTab:=False;
   XDescricao:=' o orçamento ';
   XSQLTABELA:='ORCAMENTO';
   XSQLVIEW:= 'VWORCAMENTO';
   XLiberaDados:=' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY NUMORC DESC, NOMECLI';
   LiberaDados;
   //SETA DBS
   DBGridCadastroPadrao.DataSource:=DMSAIDA.DWORC;
   DBNumPed.DataSource:=DMSAIDA.DORC;
   DBNumPed.DataField:='NUMORC';
   DBDTABERT.DataSource:=DMSAIDA.DORC;
   DBDTABERT.DataField:='DTABERT';
   DBHRABERT.DataSource:=DMSAIDA.DORC;
   DBHRABERT.DataField:='HRABERT';
   DBDTPREV.DataSource:=DMSAIDA.DORC;
   DBDTPREV.DataField:='DTVALIDADE';

   DBOBS.DataSource:=DMSAIDA.DORC;
   DBOBS.DataField:='OBS';
   DbgProduto.DataSource:=DMESTOQUE.DSSlave;
   DbgServicos.DataSource:=DMESTOQUE.DSSlaveServ;
   DbgDespesas.DataSource:=DMESTOQUE.DDesp;

   //Filtra tabela de loja para buscar apenas a loja em abertura do sistema
	FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   //VERIFICA QUAL O COMPONENTE DE BUSCA DE PRODUTO DEVE APARECER
	//MEIRO DESABILITA TODOS
	PCodFab.Visible:=False;
  	PCodFab.Enabled:=False;
	PCodInterno.Visible:=False;
	PCodInterno.Enabled:=False;
   PCodComposto.Visible:=False;
   PCodComposto.Enabled:=False;
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
   THEN BEGIN
  		PCodInterno.Visible:=True;
  		PCodInterno.Enabled:=True;
       PCodInterno.BringToFront;
   END;
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC'
   THEN BEGIN
       PCodComposto.Visible:=True;
       PCodComposto.Enabled:=True;
       PCodComposto.BringToFront;
	End;
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
   THEN BEGIN
  		PCodFab.Visible:=True;
  		PCodFab.Enabled:=True;
       PCodFab.BringToFront;
   End;

   // - 06/02/2009:  verifica se em loja esta setado como conversão unitaria p/ venda
   if (DMMacs.Tloja.FieldByName('CONVERTUNIDFERRO').AsString = '1') and (XSQLTABELA='ORCAMENTO')
   then begin
       XConvUnitVenda := True;
       cbConvUnitVendaConv.ListSource := DMESTOQUE.DSAlx3;
   end else begin
        XConvUnitVenda := False;
        cbConvUnitVendaConv.ListSource := nil;
   end;

   // - 06/02/2009:  verifica se em loja esta setado como conversão unitaria p/ embalagens
   if (DMMacs.Tloja.FieldByName('CONVERTUNIDVEND').AsString = '1') and (XSQLTABELA='ORCAMENTO') and (not XConvUnitVenda)
   then begin
       XConvUnitEmb := True;
       //cbUnidVendaFixo.ListSource := DMESTOQUE.DSAlx3;
   end else begin
        XConvUnitEmb := False;
       // cbUnidVendaFixo.ListSource := nil;
   end;

   //Limpa as Labels de Seleção de Produto
   LimpaLabels;

   //Seleciona apenas pedidos pertencentes a loja
   LiberaDados;

   // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\orcamento.lgm')
   Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\orcamento.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\orcamentoProdutos.lgm')
   Then
       DbgProduto.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\orcamentoProdutos.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\orcamentoDespesas.lgm')
   Then
       DbgDespesas.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\orcamentoDespesas.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\orcamentoServicos.lgm')
   Then
       DbgServicos.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\orcamentoServicos.lgm');

end;

procedure TFOrcamento.EdNumOrcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
			FiltraTabela(XView, XSQLVIEW, 'NUMORC', '',   '(upper(NUMORC) like upper('+#39+EdNumOrc.Text+'%'+#39+')) ORDER BY NUMORC');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;

end;

procedure TFOrcamento.FormShow(Sender: TObject);
begin
  inherited;
	//Xtabela e Xcampo os nome padrões devem ser atribuidos ao show do form,
	XTabela:= DMSAIDA.TOrc;
	XCampo:= 'NOMECLI';
   XPkTabela:= 'COD_ORCAMENTO';

   XTransaction:=DMSAIDA.IBT;

   XView:=DMSAIDA.WOrc;
   XTab:=FALSE;
   XDescricao:= 'O Orçamento ';
   XSQLTABELA:= 'ORCAMENTO';
   XSQLVIEW:='VWORCAMENTO';
   XLiberaDados:=' WHERE COD_LOJA = '+FMenu.LCODLOJA.Caption+' Order by NUMORC DESC';//, SITUACAO, NUMPED
   LiberaDados;
end;

procedure TFOrcamento.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
			FiltraTabela(XView, XSQLVIEW, XCampo, '',   '(upper(NOMECLI) like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY NOMECLI, NUMORC ');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;

end;

procedure TFOrcamento.BtnNovoClick(Sender: TObject);
Var
   CODPEDIDO:Integer;
begin
  inherited;
	//Limpa edits
   EdCodCli.Text:='';
   EdNomeCli.Text:='';
   EdCPF.Text:='';
   EdDescricao.Text:='';
   FrmFormPag1.EDCodigo.Text:='';
   FrmFormPag1.EdDescricao.Text:='';
   FrmVendedor.EDCodigo.Text:='';
   FrmVendedor.EdDescricao.Text:='';
   FrmReservTec.EDCodigo.Text:='';
   FrmReservTec.EdDescricao.Text:='';
   EdResTec.Text:='';   
   EdDescD.Text:='';
   EDMarca.Text:='';
   EdUnidade.Text:='UN';
   //inicia campos de PK
   XCODPKMESTRE:=-1;
   XCodFormPag:=-1;
   XCodVendedor:=-1;
   XCodPessoa:=-1;
   XCodMoeda:=-1;
   XCodSlave:=-1;
   XCOD_RESTEC:=-1;

    {
   XTabela.Close;
   XTabela.SQL.Clear;
   XTabela.SQL.Add('select * from VWORCAMENTO');
   XTabela.SQL.Add(' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY NUMORC DESC, NOMECLI');
   XTabela.Open;}

   CODPEDIDO:=InserReg(XTabela, XSQLTABELA, XPkTabela);
   XTabela.FieldByName(XPkTabela).AsInteger:=CODPEDIDO;
   XCodPedido:=XTabela.FieldByName(XPkTabela).AsString;

   //cancela o botão "X" de fechar para que o usuário possa apenas gravar ou cancelar
   BtnFecha.Visible:=False;

   Estado:='INSERT';

	//filtra tabela de empresa
	If FiltraTabela(DMMacs.TEmpresa,  'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '') = True
   Then Begin//se localizou a empresa
       If DMMacs.TEmpresa.FieldByName('PROXORC').AsString='' Then
           XTabela.FieldByName('NUMORC').AsString:='1'
       Else
           XTabela.FieldByName('NUMORC').AsString:=DMMacs.TEmpresa.FieldByName('PROXORC').AsString;

       XCodPessoa:=DMMACS.TLoja.fieldByName('COD_CONSUMIDOR').AsInteger;
       PPesCad.Visible:=True;
       PPesCad.BringToFront;
       EdNomeCli.Text:='CONSUMIDOR';
       If FiltraTabela(DMPESSOA.WCliente,  'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCodPessoa), '') = True Then
           EdCodCli.Text:=DMPESSOA.WCliente.fieldByName('COD_INTERNO').AsString;

       XTabela.FieldByName('DTABERT').AsDateTime:=DATE();
       XTabela.FieldByName('HRABERT').AsDateTime:=Time();
       XTabela.Post;
       DMSAIDA.IBT.CommitRetaining;
       FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', IntToStr(CODPEDIDO), '');
       XTabela.Edit;
   End;
   //ATUALIZA O NUM DO ORCAMENTO PARA Q OUTROS TERMINAIS PEGUEM O NUM CORRETO
   //Altera Nº proxima ORÇAMENTO
   DMMacs.TEmpresa.EDIT;
   Try
      	DMMacs.TEmpresa.FieldByName('PROXORC').AsString:=IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXORC').AsString)+1)
   Except
   End;
   Try
   	DMMacs.TEmpresa.Post;
       DMMacs.Transaction.CommitRetaining;
   Except
   	Mensagem('ATENÇÃO', 'Não foi possível atualizar o Nº do proximo orçamento. Por favor atualize manualmente!', '', 1, 1, False, 'a');
   End;

   //Seleciona somente os registros corretos
   FiltraSlave;
   PPesCad.Visible:=False;
   PCProdServ.Repaint;
   PCProdServ.Refresh;
   DBNumPed.SetFocus;
end;

procedure TFOrcamento.BtnApagarClick(Sender: TObject);
begin
  inherited;
	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar o orçamento'+#13+'Nº '+XView.FieldByName('NUMORC').AsString+'?'  , '', 2, 3, False, 'c')= 2
   Then Begin
		FiltraTabela(XTabela, XSqlTabela, 'COD_ORCAMENTO', XView.FieldByName('COD_ORCAMENTO').AsString, '');
		XCodPedido:=XView.FieldByName('COD_ORCAMENTO').AsString;
      	//APAGA ORÇAMENTO E ITENS DO ORCAMENTO
  		Try
       	//Apaga itens de produto do Orçamento
	       	DMEstoque.Alx.Close;
           DMEstoque.Alx.SQL.Clear;
      		DMEstoque.Alx.SQL.Add('DELETE FROM ITPRODORC WHERE COD_ORCAMENTO=:CODPEDIDO');
      		DMEstoque.Alx.ParamByName('CODPEDIDO').AsString:=XView.FieldByName('COD_ORCAMENTO').AsString;
           DMESTOQUE.Alx.ExecSQL;

       	//Apaga itens de serviço do Orçamento
	       	DMEstoque.Alx.Close;
           DMEstoque.Alx.SQL.Clear;
      		DMEstoque.Alx.SQL.Add('DELETE FROM ITSERVORC WHERE COD_ORCAMENTO=:CODPEDIDO');
      		DMEstoque.Alx.ParamByName('CODPEDIDO').AsString:=XView.FieldByName('COD_ORCAMENTO').AsString;
           DMESTOQUE.Alx.ExecSQL;

       	//Apaga itens de despesas do Orçamento
	       	DMEstoque.Alx.Close;
           DMEstoque.Alx.SQL.Clear;
      		DMEstoque.Alx.SQL.Add('DELETE FROM DESPADIC WHERE (COD_GERADOR=:CODPEDIDO) AND (GERADOR='+#39+'ORCAMENTO'+#39+')');
      		DMEstoque.Alx.ParamByName('CODPEDIDO').AsString:=XView.FieldByName('COD_ORCAMENTO').AsString;
           DMESTOQUE.Alx.ExecSQL;

       	//Apaga Orçamento
	       	DMEstoque.Alx.Close;
           DMEstoque.Alx.SQL.Clear;
      		DMEstoque.Alx.SQL.Add('DELETE FROM ORCAMENTO WHERE COD_ORCAMENTO=:CODPEDIDO');
      		DMEstoque.Alx.ParamByName('CODPEDIDO').AsString:=XView.FieldByName('COD_ORCAMENTO').AsString;
           DMESTOQUE.Alx.ExecSQL;

      		//REGISTRA COMANDO DO USUARIO
      		Registra('ORÇAMENTO', 'APAGAR', XView.FieldByName('DTABERT').AsString, 'Nº '+XView.FieldByName('NUMORC').AsString, 'Valor: '+XView.FieldByName('VLRTOTAL').AsString);
          	//Confirma Tranzaçào
          	DMEstoque.TransacEstoque.CommitRetaining;
           //atualiza view
          	LiberaDados;
       Except
       	//caso não conseguiu executar as tranzações acima retorna as informações anteriores
           DMEstoque.TransacEstoque.RollbackRetaining
   	End;
   End;
end;

procedure TFOrcamento.BtnConsultarClick(Sender: TObject);
begin
	inherited;

   If FiltraTabela(XTabela, 'ORCAMENTO', 'COD_ORCAMENTO', XView.FieldByName('COD_ORCAMENTO').AsString, '')=False Then
		Exit;//Caso não encontrar cancelar

   XTabela.Edit;
   ESTADO:='EDIT';

   //cancela o botão "X" de fechar para que o usuário possa apenas gravar ou cancelar
   BtnFecha.Visible:=False;

	//Filtra tabela de ORCAMENTO de acordo com o registro selecionado na view
   //Atribui codigo do orçamento para que não haja percas
   XCodPedido:=XTabela.FieldByName('COD_ORCAMENTO').AsString;
   //cliente
   If (XView.FieldByName('COD_CLIENTE').AsString<>'') AND (XView.FieldByName('COD_CLIENTE').AsString<>'-1') and (XView.FieldByName('COD_CLIENTE').AsString<>DMMACS.TLoja.FieldByName('cod_consumidor').AsString)
   Then Begin//Se foi informado um cliente cadastrado vai buscar na tabela
   	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', XView.FieldByName('COD_CLIENTE').AsString, '');
   	XCodPessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
   	EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
   	EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
   	EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
   	PPesCad.Visible:=False;
   End
   Else Begin //se o cliente foi cadastrado na hora
   	EdNomeCli.Text:=XTabela.FieldByName('NOMECLI').AsString;
   	EdCPF.Text:=XTabela.FieldByName('CPFCNPJ').AsString;
   	PPesCad.Visible:=True;
   	PPesCad.BringToFront;
   End;

   //FORMA DE PAGAMENTO
   XCodFormPag:=XTabela.FieldByName('COD_FORMPAG').AsInteger;
   If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', XTabela.FieldByName('COD_FORMPAG').AsString, '')=True
   Then Begin
      XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
      FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
      FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
   End
   Else Begin
      XCodFormPag:=-1;
      FrmFormPag1.EDCodigo.Text:='';
      FrmFormPag1.EdDescricao.Text:='';
   End;
   //VENDEDOR
   If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', XTabela.FieldByName('COD_VENDEDOR').AsString, '')=True
   Then Begin
      XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
      FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
      FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
   End
   Else Begin
      XCOD_VENDEDOR:=-1;
      FrmVendedor.EDCodigo.Text:='';
      FrmVendedor.EdDescricao.Text:='';
   End;

   //RESERVA TECNICA
   If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', XTabela.FieldByName('COD_RESTEC').AsString, '')=True
   Then Begin
      XCOD_RESTEC:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
      FrmReservTec.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
      FrmReservTec.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
   End
   Else Begin
      XCOD_RESTEC:=-1;
      FrmReservTec.EDCodigo.Text:='';
      FrmReservTec.EdDescricao.Text:='';
   End;

   //seleciona items da ordem
   FiltraSlave;
      
   //Informa outros valores
   EdtotalProd.ValueNumeric:=XTabela.FieldByName('VLRPROD').AsCurrency;
   EdtotalProd.SetFocus;//para calcular o desconto
   EdtotalServ.ValueNumeric:=XTabela.FieldByName('VLRSERV').AsCurrency;
   EdTotalserv.SetFocus;//para calcular desconto
//   EdDescTProd.ValueNumeric:=XTabela.FieldByName('DESCPROD').AsCurrency;
//   EdDescTServ.ValueNumeric:=XTabela.FieldByName('DESCSERV').AsCurrency;
   EdResTec.ValueNumeric:=XTabela.FieldByName('VLRRESTEC').AsCurrency;
   EdDescricao.Text:=XTabela.FieldByName('DESCRICAO').AsString;
   EdDescD.Text:='';
   EDMarca.Text:='';
   EdUnidade.Text:='UN';

   //VERIFICA QUAL O COMPONENTE DE BUSCA DE PRODUTO DEVE APARECER
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CI'
   THEN BEGIN
      PCodInterno.Visible:=True;
      PCodInterno.BringToFront;
   END;
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CC'
   THEN BEGIN
      PCodComposto.Visible:=True;
      PCodComposto.BringToFront;
   End;
   IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
   THEN BEGIN
      PCodFab.Visible:=True;
      PCodFab.BringToFront;
   End;
   PCProdServ.Repaint;
   PCProdServ.Refresh;
end;
procedure TFOrcamento.EdCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
   	//If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+EdCodCli.Text+#39)=True
    If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', Trim(EdCodCli.Text),'')=True
   	Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           XCodPessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
   	End
   	Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XCodPessoa:=-1;
           EdCodCli.Text:='';
           EdCPF.Text:='';
           EdNomeCli.Text:='';
   	End;
   End;
end;

procedure TFOrcamento.EdCodCliExit(Sender: TObject);
begin
  inherited;
   LUZOPEN.Visible:=False;
   //Verifica se o cliente é do tipo consumidor
   If XCodPessoa=DMMACS.TLoja.FieldByName('COD_CONSUMIDOR').AsInteger
   Then Begin
       PPesCad.Visible:=True;
       PPesCad.BringToFront;
       PPesCad.Enabled:=True;
       If DBNomeCli.Text=''
       Then Begin
          XTabela.FieldByName('NOMECLI').AsString:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
          DBNomeCli.SetFocus;
       End;
   End;
end;

procedure TFOrcamento.DBNomeCliKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'NOME', '', ' (upper(NOME) like upper('+#39+DBNomeCli.Text+'%'+#39+'))')=True
   	Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           XCodPessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
           EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           PPesCad.Visible:=FALSE;
           EdCodCli.SetFocus;
   	End
   	Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           Mensagem('A T E N Ç Ã O', 'Cliente não encontrado!', '', 1, 1, False, 'i');
           XCodPessoa:=-1;
           EdCPF.Text:='';
   	End;
   End;
end;

procedure TFOrcamento.BtnProcPessClick(Sender: TObject);
begin
  inherited;
	//se realmente estiver trabalhando com vendas e não com compras
   PPesCad.Visible:=False;
   FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   FMenu.XPreSel := True;
   FMenu.XFieldPesqPreSel := 'COD_INTERNO';
   FMenu.XCodPesqPresSel := EdCodCli.Text;
   If AbrirForm(TFCliente, FCliente, 1)='Selected'
   Then Begin
        XCodPessoa:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
        If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', IntToStr(XCODPESSOA), '')=True
        Then Begin
           If DMPESSOA.TCliente.FieldByName('ATUALIZAR').AsString='1' Then
               Mensagem('Mzr Sistemas - INFORMAÇÃO', 'As informações deste cliente devem ser atualizadas!', '', 1, 1, false, 'i');
        End;
        //VEERIFICA SE DIAS DE INTERVALO MAIOR QUE ZERO, SE IGUAL OU MENOR A ZERO O SISTEMA NÃO DEVE FAZER CONTROLE
        If DMMACS.TLoja.FieldByName('DIASBLOQCLI').AsInteger<>0
        Then Begin
           If VerificBloqCli(IntToStr(XCodPessoa))=True Then
               Mensagem('C R É D I T O   B L O Q U E A D O', 'Cliente possui Crédito Bloqueado. Por atrasos de '+DIASATRASO+'/'+IntToStr(StrToInt(DIASATRASO)-DMMACS.TLoja.FieldByNAme('DIASBLOQCLI').AsInteger)+' dias em suas contas!', '', 1, 1, false, 'i');
        End;
        EdCPF.Text:=DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
        EdNomeCli.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
        EdCodCli.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
   End;
end;

procedure TFOrcamento.FrmVendedorBTNOPENClick(Sender: TObject);
begin
  inherited;
   FMenu.TIPOAUX:='VENDEDOR';

   FMenu.XPreSel := True;
        FMenu.XFieldPesqPreSel := 'COD_INTERNO';
        FMenu.XCodPesqPresSel := FrmVendedor.EDCodigo.Text;
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
       XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
 		FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
   End
   Else Begin
       XCOD_VENDEDOR:=-1;
 		FrmVendedor.EDCodigo.Text:='';
       FrmVendedor.EdDescricao.Text:='';
   End;
end;

procedure TFOrcamento.FrmVendedorEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
      	//If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmVendedor.EDCodigo.Text+#39)=True
        If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', Trim(FrmVendedor.EDCodigo.Text),'')=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
        	XCOD_VENDEDOR:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
           FrmVendedor.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
	        FrmVendedor.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
        	XCOD_VENDEDOR:=-1;
           FrmVendedor.EdDescricao.Text:='';
	        FrmVendedor.EDCodigo.Text:='';
       End;
   End;
end;

procedure TFOrcamento.FrmFormPag1BTNOPENClick(Sender: TObject);
begin
  inherited;
  FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_INTERNO';
  FMenu.XCodPesqPresSel := FrmFormPag1.EDCodigo.Text;

	If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
		XCodFormPag:=DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

       FrmFormPag1.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormPag1.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
       verificaDescontoFormpag;
   End;
end;

procedure TFOrcamento.FrmFormPag1EDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
       if FrmFormPag1.EDCodigo.Text<>''
       Then Begin
       	//seleciona a forma de pagamento
           If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', TRIM(FrmFormPag1.EDCodigo.Text), '')
           Then Begin
		          XCodFormPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
              FrmFormPag1.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
              FrmFormPag1.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
              verificaDescontoFormpag;
           End
           Else Begin
		          XCodFormPag:=-1;
              FrmFormPag1.EDCodigo.Text:='';
              FrmFormPag1.EdDescricao.Text:='';
           End;
       End;
   End;
end;

procedure TFOrcamento.FrmFormPag1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XCodFormPag:=-1;
   FrmFormPag1.EDCodigo.Text:='';
	FrmFormPag1.EdDescricao.Text:='';
end;

procedure TFOrcamento.BtnGravarClick(Sender: TObject);
begin
//  inherited;
	//VALIDA CAMPOS NECESSÁRIOS
   If XCodFormPag=-1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por Favor. Informe a forma de pagamento para o Orçamento!', '', 1, 1, False, 'a');
       FrmFormPag1.EDCodigo.SetFocus;
       Exit;
   End;

   XTabela.Edit;

   //INFORMA CODIGO DO USUARIO
   XTabela.FieldByName('COD_USUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
   //INFORMA CODIGO DO CLIENTE
   XTabela.FieldByName('COD_CLIENTE').AsInteger:=XCodPessoa;
   If PPesCad.Visible=FALSE
   Then Begin
       XTabela.FieldByName('NOMECLI').AsString:=EdNomeCli.Text;
       XTabela.FieldByName('CPFCNPJ').AsString:=EdCPF.Text;
   End;

   //INFORMA CODIGO DO VENDEDOR
   XTabela.FieldByName('COD_VENDEDOR').AsInteger:=XCOD_VENDEDOR;
   //INFORMA CODIGO DA LOJA
   XTabela.FieldByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
   //INFORMA FORMA DE PAGAMENTO
   XTabela.FieldByName('COD_FORMPAG').AsInteger:=XCodFormPag;
   XTabela.FieldByName('DESCRICAO').AsString:=EdDescricao.Text;

   //INICIA PROCESSO PARA GRAVAR TABELAS

   //GRAVA TOTAIS
   XTabela.FieldByName('VLRTOTAL').AsCurrency:=EdValorPed.ValueNumeric;
   XTabela.FieldByName('VLRPROD').AsCurrency:=EdtotalProd.ValueNumeric;
   XTabela.FieldByName('VLRSERV').AsCurrency:=EdTotalserv.ValueNumeric;
   XTabela.FieldByName('VLRDESP').AsCurrency:=EdTotDesp.ValueNumeric;
   XTabela.FieldByName('DESCPROD').AsCurrency:=EdDescTProd.ValueNumeric;
   XTabela.FieldByName('DESCPRODMOE').AsCurrency:=EdDescmoe.ValueNumeric;
   XTabela.FieldByName('DESCSERV').AsCurrency:=EdDescTServ.ValueNumeric;
   XTabela.FieldByName('VLRRESTEC').AsCurrency:=EdResTec.ValueNumeric;
   XTabela.FieldByName('COD_RESTEC').AsInteger:=XCOD_RESTEC;   
   //grava tabela slave
   Try
      XTabela.Post;
      XTransaction.CommitRetaining;
   Except
	   XTransaction.RollbackRetaining;
	End;

   //Atualiza View da tela de Consulta
   LiberaDados;
   PCadastro.Visible:=False;
   PConsulta.Visible:=true;
   PConsulta.BringToFront;
   EdNome.SetFocus;
   //habilita o botão "X" de fechar para que o usuário possa fechar a tela
   BtnFecha.Visible:=True;
end;

procedure TFOrcamento.EdDescTProdExit(Sender: TObject);
begin
  inherited;
  //Jônatas 25/06/2013 - Calcula os campos separadamente e substitui nos edits
   If EdDescTProd.ValueNumeric<>0
   then begin
      CalcPercent(EdDescTProd.ValueNumeric, 0, XVLRTPROD , 'D');
      EdDescmoe.ValueNumeric:=AlxValor;
      EdtotalProd.ValueNumeric:=AlxCalculo;
   end
   Else begin
      EdDescmoe.ValueNumeric:=0;
      EdtotalProd.ValueNumeric:=XVLRTPROD;
   end;
	//Jônatas 25/06/2013 - precisa chamar o filtra slave pra atualizar o valor do EdDescTOrdem
   FiltraSlave;
end;

procedure TFOrcamento.EdtotalProdExit(Sender: TObject);
begin
  inherited;
   If XVLRTPROD<>EdtotalProd.ValueNumeric
   Then Begin
		CalcPercent(0, XVLRTPROD-EdtotalProd.ValueNumeric, XVLRTPROD , 'D');
       XTabela.edit;
       XTabela.FieldByName('DESCPROD').AsCurrency:=AlxPercento;
       XTabela.FieldByName('DESCPRODMOE').AsCurrency:=XVLRTPROD-EdtotalProd.ValueNumeric;
       XTabela.Post;
		EdDescTProd.ValueNumeric:=AlxPercento;
       EdDescmoe.ValueNumeric:=XVLRTPROD-EdtotalProd.ValueNumeric;
   End
   Else Begin
       FiltraSlave;
       XTabela.edit;
       XTabela.FieldByName('DESCPROD').AsCurrency:=0;
       XTabela.FieldByName('DESCPRODMOE').AsCurrency:=0;
       XTabela.Post;
       EdtotalProd.ValueNumeric:=XVLRTPROD;
		EdDescTProd.ValueNumeric:=0;
       EdDescmoe.ValueNumeric:=0;
   End;
   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
   EdValorPed.ValueNumeric:=EdTotalserv.ValueNumeric+EdtotalProd.ValueNumeric+EdTotDesp.ValueNumeric;
	CalcPercent(0, (XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric) - (EdtotalProd.ValueNumeric+EdTotalserv.ValueNumeric+EdTotDesp.ValueNumeric), (XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric) , 'D');
   EdDescTOrdem.ValueNumeric:=AlxPercento;

end;

procedure TFOrcamento.EdDescTServExit(Sender: TObject);
begin
  inherited;
	FiltraSlave;
end;

procedure TFOrcamento.EdTotalservExit(Sender: TObject);
begin
  inherited;
   If XVLRTSERV<>EdTotalserv.ValueNumeric
   Then Begin
		CalcPercent(0, XVLRTSERV-EdtotalServ.ValueNumeric, XVLRTSERV , 'D');
       XTabela.edit;
       XTabela.FieldByName('DESCSERV').AsCurrency:=AlxPercento;
		EdDescTServ.ValueNumeric:=AlxPercento;
   End
   Else Begin
       FiltraSlave;
       XTabela.edit;
       XTabela.FieldByName('DESCSERV').AsCurrency:=0;
       EdtotalServ.ValueNumeric:=XVLRTSERV;
		EdDescTServ.ValueNumeric:=0;
   End;
   //ATRIBUI VALOR TOTAL DA ORDEM E DESCONTO
   EdValorPed.ValueNumeric:=EdTotalserv.ValueNumeric+EdtotalProd.ValueNumeric+EdTotDesp.ValueNumeric;
	CalcPercent(0, (XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric) - (EdtotalProd.ValueNumeric+EdTotalserv.ValueNumeric+EdTotDesp.ValueNumeric), (XVLRTPROD+XVLRTSERV+EdTotDesp.ValueNumeric) , 'D');
   EdDescTOrdem.ValueNumeric:=AlxPercento;
end;

procedure TFOrcamento.EDCodInternoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'Upper(CONTRINT)', UpperCase(EDCodInterno.Text), '')=True
       Then Begin
			EscreveLabelsPROD;
       End
       Else Begin
           LimpaLabelsPROD;
           LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;
end;

procedure TFOrcamento.EDCodCompostoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODCOMPOSTO', EDCodComposto.Text, '');
		EscreveLabelsPROD;
   End;
end;

procedure TFOrcamento.EDCodFabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'Upper(CODFABRICANTE)', UpperCase(EDCodFab.Text), '')=True
       Then Begin
			EscreveLabelsPROD;
       End
       Else Begin
           LimpaLabelsPROD;
           LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;
end;

procedure TFOrcamento.EDCodBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', EDCodBarra.Text, '')=True
       Then Begin
			EscreveLabelsPROD;
       End
       Else Begin
           LimpaLabelsPROD;
           LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
       End;
   End;
end;

procedure TFOrcamento.BtnEscolheProcClick(Sender: TObject);
begin
  inherited;
  	MEscolheProc.Popup(BtnEscolheProc.Width+BtnEscolheProc.Left+60, 320);
end;

// - 27/02/2009: procedure que busca dados de conversão unitária
procedure TFOrcamento.convertunidade;
var
    x: Integer; // - 28/02/2009: controle pk tmp por causa da conversão unitaria
begin
        // - 28/02/2009: limpa TMP
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
                DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.Alx.fieldByName('SIGLA_UNID').AsString;
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
           DMESTOQUE.Alx.SQL.Add('Where (convunid.cod_unidsai=:UNIDENT or convunid.cod_unidsai=:UNIDSAI)');
           DMESTOQUE.Alx.ParamByName('UNIDENT').AsString:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString;
           DMESTOQUE.Alx.ParamByName('UNIDSAI').AsString:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString;
           DMESTOQUE.Alx.Open;
           DMESTOQUE.Alx.First;

           FiltraTabela(DMMACS.TMP, 'TMP', '', '', '');
           
           while not DMESTOQUE.Alx.Eof do
           begin
                if FiltraTabela(DMMACS.TMP, 'TMP', 'DESC3', DMESTOQUE.Alx.FieldByName('COD_CONVUNID').AsString,'') = true
                then begin
                    DMMACS.TMP.Edit;
                    DMMACS.TMP.FieldByName('DESC2').AsString := DMESTOQUE.Alx.fieldByName('SIGLA_UNID').AsString;
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
           DMESTOQUE.Alx.Open;
           DBGridConvert.DataSource := DMESTOQUE.DSAlx;
end;

procedure TFOrcamento.EDQuantidadeExit(Sender: TObject);
var
   key :Char;
begin
  inherited;
//   EscreveLabelsPROD;
	If (EDQuantidade.ValueNumeric<>0) And (EDValUnit.ValueNumeric<>0)
   Then Begin
		CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
	    EDTotal.ValueNumeric:=AlxCalculo;
   End;


   If XFocu='FQTDCONVERT'
   Then Begin

       // SE EM LOJA ESTIVER CONFIGURADO PARA FAZER CONVERSÕES
       If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1'
       Then Begin
          // FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString, '');
          convertunidade;

           // mostrar painel para selecionar conversões
           PQtdConvert.Visible:=True;
           PQtdConvert.BringToFront;
           PQtdConvert.Repaint;
           PQtdConvert.Refresh;
         //  DBGridConvert.DataSource := DMESTOQUE.DSAlx;

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

procedure TFOrcamento.EDValUnitEnter(Sender: TObject);
begin
  inherited;
{	FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString, '');
   //Insere Valor Unitário
	If (EDQuantidade.ValueNumeric>=DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency) AND (DMEstoque.TSubProd.FieldByName('QTDATC').AsCurrency>0)
   Then Begin//caso ocorra esta condição significa que o produto esta com quantidade igual ou superior a de atacado e deve ser vendido em preço de atacado
       // se o campo TIPOVENDA for igual a 1, a venda esta configurada para valores a vista
       If DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '0'
       Then Begin
			If FrmFormPag1.EdDescricao.Text='À VISTA'
	        Then Begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
	           EDValUnit.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDVARV').AsCurrency
           End
           Else Begin
	           EDValUnit.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDVARP').AsCurrency
           End;
       End
       Else Begin
           EDValUnit.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDVARP').AsCurrency
       End;
   End
   Else Begin//caso ocorra esta condição significa que o produto esta com quantidade igual varejo e deve ser vendido em preço de varejo
       If DMMACS.TLoja.FieldByName('TIPOVENDA').AsString = '0'
       Then Begin
			If FrmFormPag1.EdDescricao.Text='À VISTA'
	        Then Begin //A venda esta sendo a vista então o preço de venda deve ser no atacado a vista
	           EDValUnit.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDVARV').AsCurrency
           End
           Else Begin
	           EDValUnit.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDVARP').AsCurrency
           End;
       End
       Else Begin
           EDValUnit.ValueNumeric:=DMEstoque.TEstoque.FieldByName('VENDVARP').AsCurrency
       End;
   End;}
   EDValUnit.SetFocus;
end;

procedure TFOrcamento.EDTotalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=vk_return
   Then Begin
		CalcPercent(0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric)- EDTotal.ValueNumeric, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
		EDDesc.ValueNumeric:=AlxPercento;
   End;
end;

procedure TFOrcamento.BtnInsertProdClick(Sender: TObject);
begin
  inherited;
	//Valida se foi encontrado algum produto
   If LProduto.Caption=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Não existe produto a ser adicionado a lista de items do orçamento.', '', 1, 1, False, 'a');
		Panel2.OnEnter(Sender);
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

   //VERIFICA SE JÁ EXISTE ALGUM PRODUTO IGUAL AO CORRENTE INSERIDO A LISTA
   //SE ENCONTRAR PEDIR SE O USUÁRIO DESEJA ALTERAR O LANÇAMENTO.
   DMESTOQUE.TSlave.Close;
   DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select itprodorC.cod_itprodorC, unidade.sigla_unid AS UNIDADE, itprodorC.cod_orcamento, itprodorc.cod_estoque,  itprodorc.qtd, itprodorc.vlrtotal AS TOTAL, ');
	DMESTOQUE.TSlave.SQL.Add('itprodorc.desconto, itprodorc.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR, ');
   DMESTOQUE.TSlave.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD ');
	DMESTOQUE.TSlave.SQL.Add('From itprodorc left Join estoque on estoque.cod_estoque = itprodorc.cod_estoque ');
	DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on  estoque.cod_subprod = subproduto.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add('left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
   DMESTOQUE.TSlave.SQL.Add(' where (itprodorc.cod_orcamento = :cod_orc) and (itprodorc.cod_estoque = :cod_est)');
   DMESTOQUE.TSlave.ParamByName('cod_orc').AsString := XCodPedido;
   DMESTOQUE.TSlave.ParamByName('cod_est').AsInteger := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
   DMESTOQUE.TSlave.Open;

   If Not DMESTOQUE.TSlave.IsEmpty
   Then Begin
		If Mensagem('A T E N Ç Ã O !', 'O sistema encontrou o mesmo produto já lançado a lista com '+DMESTOQUE.TSlave.FieldByName('QTD').AsString+' qtde(s).'+#13+'Deseja alterar este produto já lançado?', '', 2, 3, False, 'c')= 2
       Then Begin
       	//o usuario decidiu alterar o lançamento anterior este é cancelado e o outro é excluido da lista
           BtnDeleteProd.Click;
           exit;
       End
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
               FiltraSlave;
               Exit;
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
               FiltraSlave;
               Exit;
           End;
       End
       Else Begin
       	XLIBDESCPROD:=True;
       End;
   End;
   //Verifica se o vlr unitário esta dentro da margem de segurança
   If ((EDTotal.ValueNumeric/EDQuantidade.ValueNumeric)<DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency)
   Then Begin
   	If Mensagem('A T E N Ç Ã O !', 'Você está vendendo o produto a um valor abaixo da margem de segurança. Deseja continuar?', '', 2, 3, False, 'c')= 2
       Then Begin
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
       End
       Else Begin
           FiltraSlave;
           Exit;
       End;
   End
   Else Begin
   	XLIBMARGEMSEG:=True;
   End;
   //Verifica se o desconto do produto foi liberado
   If XLIBMARGEMSEG=False
   Then Begin
       If ControlAccess('MARGEMSEG', '')=False Then
           Mensagem('OPÇÃO BLOQUEADA', 'Você não obteve permissão para orçar este produto com o valor abaixo da margem de segurança!', '', 1, 1, False, 'a');
       EDValUnit.SetFocus;
       EXIT;
   End;
   //Verifica se o desconto do produto foi liberado
   If XLIBDESCPROD=False
   Then Begin
       If ControlAccess('DESCPMAIOR', '')=False Then
           Mensagem('OPÇÃO BLOQUEADA', 'Você não obteve permissão para orçar este produto com tal desconto!', '', 1, 1, False, 'a');
       EDDesc.SetFocus;
       EXIT;
   End;
   //Inserir Produto a lista do pedido
   XCOD_ITPROD:=InserReg(DMSAIDA.TItProdOrc, 'ITPRODORC', 'COD_ITPRODORC');
   DMSAIDA.TItProdOrc.FieldByName('COD_ITPRODORC').AsInteger:=XCOD_ITPROD;
   DMSAIDA.TItProdOrc.FieldByName('COD_ORCAMENTO').AsString:=XCodPedido;
   DMSAIDA.TItProdOrc.FieldByName('COD_ESTOQUE').AsInteger:=DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;

   If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1' //se usar conversão unitária
   Then begin
       if EdQtdConvert.ValueNumeric > EDQuantidade.ValueNumeric then
          DMSAIDA.TItProdOrc.FieldByName('QTD').AsCurrency:=EdQtdConvert.ValueNumeric //se a quantidade convertida for maior que a quantidade comprada
       else
          DMSAIDA.TItProdOrc.FieldByName('QTD').AsCurrency:=EDQuantidade.ValueNumeric; //se a quantidade comprada for maior que a quantidade convertida
   end
   else begin
       DMSAIDA.TItProdOrc.FieldByName('QTD').AsCurrency:=EDQuantidade.ValueNumeric;
   end;

   DMSAIDA.TItProdOrc.FieldByName('DESCONTO').AsCurrency:=EDDesc.ValueNumeric;
   DMSAIDA.TItProdOrc.FieldByName('VLRUNIT').AsCurrency:=EDValUnit.ValueNumeric;
   DMSAIDA.TItProdOrc.FieldByName('VLRTOTAL').AsCurrency:=EDTotal.ValueNumeric;
   DMSAIDA.TItProdOrc.FieldByName('VALCUSTO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
   DMSAIDA.TItProdOrc.FieldByName('VALREP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
   DMSAIDA.TItProdOrc.FieldByName('COEFDIV').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
   DMSAIDA.TItProdOrc.FieldByName('VALCOMP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency*EDQuantidade.ValueNumeric;
   CalcLuc(EDTotal.ValueNumeric, EDDesc.ValueNumeric, EDQuantidade.ValueNumeric);
   If   DMSAIDA.TItProdOrc.FieldByName('COEFDIV').AsCurrency<>0 Then
   	DMSAIDA.TItProdOrc.FieldByName('LUCMOE').AsCurrency:=(DMSAIDA.TItProdOrc.FieldByName('VALREP').AsCurrency/DMSAIDA.TItProdOrc.FieldByName('COEFDIV').AsCurrency)*EDQuantidade.ValueNumeric
   Else
		DMSAIDA.TItProdOrc.FieldByName('LUCMOE').AsCurrency:=0;
   DMSAIDA.TItProdOrc.FieldByName('LUCREL').AsCurrency:=ALXLUCREAL;
   DMSAIDA.TItProdOrc.FieldByName('LUCPER').AsCurrency:=(DMSAIDA.TItProdOrc.FieldByName('LUCMOE').AsCurrency*100)/DMSAIDA.TItProdOrc.FieldByName('VLRTOTAL').AsCurrency;

   if XConvUnitVenda
  then begin
      // - 06/02/2009: se for conversao unitaria p/ venda
      DMSAIDA.TItProdOrc.FieldByName('QTDEMB').AsCurrency:=edQntConvertVenda.ValueNumeric;
      DMSAIDA.TItProdOrc.FieldByName('UNIDEMB').AsInteger:=cbConvUnitVendaConv.KeyValue;
      DMSAIDA.TItProdOrc.FieldByName('QTDNAEMB').AsCurrency:=edQntConvert.ValueNumeric;
      DMSAIDA.TItProdOrc.FieldByName('COD_UNIDADE').AsInteger := DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger;
  end

  else
   If DMMACS.TLoja.FieldByName('CONVERTUNID').AsString='1'
   then begin
        DMSAIDA.TItProdOrc.FieldByName('COD_UNIDADE').AsInteger := XCodUnidItenProd;
   end
   else begin
        DMSAIDA.TItProdOrc.FieldByName('COD_UNIDADE').AsInteger := DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger;
   end;

   //Tenta gravar as informações
   Try
       DMSAIDA.TItProdOrc.Post;
       DMSAIDA.IBT.CommitRetaining;
   Except
       DMSAIDA.IBT.RollbackRetaining;
   End;
	//limpa labels de seleção
   LimpaLabelsPROD;
   //Filtra slaves e calcula total
   FiltraSlave;
	    //VERIFICA QUAL COMPONENETE DEVE RECEBER O FOCUS
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'BP' THEN
       	BtnProcProd.SetFocus;
	    IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CB' THEN
	  		EDCodBarra.SetFocus;
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
                   EDCodComposto.Text:='';
		           	EDCodComposto.SetFocus;
	            Except
	            End;
			End;
			IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
	        THEN Begin
		       	Try
                   EDCodFab.Text:='';
		           	EDCodFab.SetFocus;
	            Except
		        End;
			End;
	    END;

   // apenas limpa os campos do painel de preços
   EdVlrAtacadoPrazo.Text:='';
   EdVlrAtacadoVista.Text:='';
   EdVlrVarejoPrazo.Text:='';
   EdVlrVarejoVista.Text:='';

end;

procedure TFOrcamento.BtnProcProdClick(Sender: TObject);
begin
  inherited;
   FMenu.TIPOAUX:='PEDVENDA';
  	//abre formulario de produto para seleção
	If AbrirForm(TFProduto, FProduto, 1)='Selected'
	Then Begin
   	//Depois de selecionado escreve nas labels o produto
       EscreveLabelsPROD;
   End
   Else Begin
       LimpaLabelsPROD;
       LProduto.Caption:='PRODUTO NÃO ENCONTRADO';
   End;

   // painel de preço
   EdVlrAtacadoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
   EdVlrAtacadoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
   EdVlrVarejoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
   EdVlrVarejoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;

end;

procedure TFOrcamento.ControleInterno1Click(Sender: TObject);
begin
  inherited;
   PCodInterno.Visible:=True;
   PCodInterno.BringToFront;
   PCodInterno.Enabled:=True;
   EDCodInterno.SetFocus;
end;

procedure TFOrcamento.CdFab1Click(Sender: TObject);
begin
  inherited;
   PCodFab.Visible:=True;
   PCodFab.BringToFront;
   PCodFab.Enabled:=True;
   EDCodFab.SetFocus;

end;

procedure TFOrcamento.C1Click(Sender: TObject);
begin
  inherited;
   PCodComposto.Visible:=True;
   PCodComposto.BringToFront;
   PCodComposto.Enabled:=True;
   EDCodComposto.SetFocus;
end;

procedure TFOrcamento.BtnDeleteProdClick(Sender: TObject);
begin
  inherited;
   If DMESTOQUE.TSlave.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar
	  	//LOCALIZA E APAGA
		FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString, '');

       // valores do produto para tela de preços
       EdVlrAtacadoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
       EdVlrAtacadoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
       EdVlrVarejoPrazo.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
       EdVlrVarejoVista.ValueNumeric:=DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;

		FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', DMEstoque.TSlave.FieldByName('COD_ESTOQUE').AsString, '');
       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add(' DELETE from itprodorc WHERE itprodorc.cod_itprodorc=:CODITEM');
       DMSAIDA.TAlx.ParamByName('CODITEM').AsString:=DMESTOQUE.TSlave.FieldByName('COD_ITPRODORC').AsString;
		DMSAIDA.TAlx.ExecSQL;

 	    //CONFIRMA TRANZAÇÃO
	    Try
		   DMSAIDA.IBT.CommitRetaining;
	    Except
	 	   DMSAIDA.IBT.RollbackRetaining;
	    End;

	 	//VOLTA VALORES AS LABELS
	    EscreveLabelsPROD;

         if XConvUnitVenda
        then begin
            // - 06/02/2009: se for conversao unitaria p/ venda
            edQntConvertVenda.ValueNumeric := DMESTOQUE.TSlave.FieldByName('QTDEMB').AsCurrency;

            if DMESTOQUE.TSlave.FieldByName('UNIDEMB').AsInteger = cbUnidConvVenda.KeyValue then
                XConvVlr := True
            else
                XConvVlr := False;
                
            cbConvUnitVendaConv.KeyValue := DMESTOQUE.TSlave.FieldByName('UNIDEMB').AsInteger;

            edQntConvert.ValueNumeric := DMESTOQUE.TSlave.FieldByName('QTDNAEMB').AsCurrency;


        end;

	 	EDQuantidade.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTD').Value;
	 	EDValUnit.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VLRUNIT').Value;
		EDDesc.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('DESCONTO').Value;
		EDTotal.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('TOTAL').Value;
	    //Filtra registros escrsavos
	    FiltraSlave;
   End;
end;

procedure TFOrcamento.EdCodInternoServKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		FiltraTabela(DMServ.WServico, 'VWSERVICO', 'COD_INTERNO', EdCodInternoServ.Text, '');
		EscreveLabelsSERV;
   End;

end;

procedure TFOrcamento.EdCodcompostoServKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'CODCOMPOSTO', EdCodcompostoServ.Text, '');
		EscreveLabelsSERV;
   End;
end;

procedure TFOrcamento.EDQtdServExit(Sender: TObject);
begin
  inherited;
	If (EDQtdServ.ValueNumeric<>0) And (EDVlrUnitServ.ValueNumeric<>0)
   Then Begin
		CalcPercent(EdDescServ.ValueNumeric, 0, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric), 'D');
	    EdVlrtotalServ.ValueNumeric:=AlxCalculo;
   End;
end;

procedure TFOrcamento.EDVlrUnitServEnter(Sender: TObject);
begin
  inherited;
   EDVlrUnitServ.ValueNumeric:=DMSERV.TSubserv.FieldByName('VLRFINAL').Value;
end;

procedure TFOrcamento.EdVlrtotalServKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=vk_return
   Then Begin
		CalcPercent(0, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric)- EdVlrtotalServ.ValueNumeric, (EDQtdServ.ValueNumeric*EDVlrUnitServ.ValueNumeric), 'D');		EdDescServ.ValueNumeric:=AlxPercento;
   End;
end;

procedure TFOrcamento.BtnProcServClick(Sender: TObject);
begin
  inherited;
  	//abre formulario de serviço para seleção
	If AbrirForm(TFSERVICO, FSERVICO, 1)='Selected'
	Then Begin
   	//Depois de selecionado escreve nas labels o produto
       EscreveLabelsSERV;
   End;
end;

procedure TFOrcamento.BtnInsertServClick(Sender: TObject);
begin
  inherited;
	//Valida se foi encontrado algum produto
   If LServico.Caption=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Não existe serviço a ser adicionado a lista de items de serviços.', '', 1, 1, False, 'a');
		BtnProcServ.SetFocus;
	    Exit;
   End;
   //Valida quanto a quantidade
   If EDQtdServ.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O serviço não pode ser inserido a lista com quantidade inferior ou igual a 0.', '', 1, 1, False, 'a');
		EDQtdServ.SetFocus;
	    Exit;
   End;
   //Valida quanto ao valor unitario do produto
   If EDVlrUnitServ.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O serviço não pode ser inserido a lista com o valor unitario igual ou inferiro a 0.', '', 1, 1, False, 'a');
		EDVlrUnitServ.SetFocus;
	    Exit;
   End;
   //Valida quanto ao valor total do produto
   If EdVlrtotalServ.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'O serviço não pode ser inserido a lista com o valor total igual ou inferiro a 0.', '', 1, 1, False, 'a');
		EdVlrtotalServ.SetFocus;
	    Exit;
   End;

   //Inserir serviço a lista de serviços
   XCOD_ITSERV:=InserReg(DMSAIDA.TItServOrc, 'ITSERVORC', 'COD_ITSERVORC');
   DMSAIDA.TItServOrc.FieldByName('COD_ITSERVORC').AsInteger:=XCOD_ITSERV;
   DMSAIDA.TItServOrc.FieldByName('COD_ORCAMENTO').AsString:=XCodPedido;
   DMSAIDA.TItServOrc.FieldByName('COD_SERVICO').AsInteger:=DMSERV.TSubserv.FieldByName('COD_SUBSERVICO').AsInteger;
   DMSAIDA.TItServOrc.FieldByName('QTD').AsCurrency:=EDQtdServ.ValueNumeric;
   DMSAIDA.TItServOrc.FieldByName('DESCONTO').AsCurrency:=EdDescServ.ValueNumeric;
   DMSAIDA.TItServOrc.FieldByName('VLRUNIT').AsCurrency:=EDVlrUnitServ.ValueNumeric;
   DMSAIDA.TItServOrc.FieldByName('VLRTOTAL').AsCurrency:=EdVlrtotalServ.ValueNumeric;
   //Tenta gravar as informações
   Try
       DMSAIDA.TItServOrc.Post;
       DMSAIDA.IBT.CommitRetaining;
		BtnProcServ.SetFocus;
   Except
       DMSAIDA.IBT.RollbackRetaining;
   End;
	//limpa labels de seleção
   LimpaLabelsSERV;
   //Filtra slaves e calcula total
   FiltraSlave;
end;

procedure TFOrcamento.BtnDeleteServClick(Sender: TObject);
begin
  inherited;
   If DMESTOQUE.TSlaveServ.RecordCount<>0
   Then Begin//caso a tabela esteja vasia não pode apagar
	  	//LOCALIZA E FILTRA registro CORRESPONDENTE
		FiltraTabela(DMSERV.WSubServ, 'VWSUBSERVICO', 'COD_SUBSERVICO', DMESTOQUE.TSlaveServ.FieldByName('COD_SERVICO').AsString, '');
		FiltraTabela(DMSAIDA.TItServOrc, 'ITSERVORC', 'COD_ITSERVORC', DMESTOQUE.TSlaveServ.FieldByName('COD_ITSERVORC').AsString, '');

       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add(' DELETE from itservorc WHERE itservorc.cod_itservorc=:CODITEM');
       DMSAIDA.TAlx.ParamByName('CODITEM').AsString:=DMESTOQUE.TSlaveServ.FieldByName('COD_ITSERVORC').AsString;
		DMSAIDA.TAlx.ExecSQL;

 	    //CONFIRMA TRANZAÇÃO
	    Try
		   XTransaction.CommitRetaining;
	    Except
	 	   XTransaction.RollbackRetaining;
	    End;

	 	//VOLTA VALORES AS LABELS
	    EscreveLabelsSERV;
	 	EDQtdServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('QTD').Value;
	 	EDVlrUnitServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('VLRUNIT').Value;
		EdDescServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('DESCONTO').Value;
		EdVlrtotalServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('TOTAL').Value;
	    //Filtra registros escrsavos
	    FiltraSlave;
       EDQtdServ.SetFocus;
   End;
end;

procedure TFOrcamento.EdQtdDExit(Sender: TObject);
begin
  inherited;
	CalcPercent(EdDesconto.ValueNumeric, 0, (EdQtdD.ValueNumeric*EdVlrCobradoD.ValueNumeric), 'D');
   EdVlrTotD.ValueNumeric:=AlxCalculo;
end;

procedure TFOrcamento.EdVlrCustoDExit(Sender: TObject);
begin
  inherited;
	CalcPercent(EdDesconto.ValueNumeric, 0, (EdQtdD.ValueNumeric*EdVlrCobradoD.ValueNumeric), 'D');
   EdVlrTotD.ValueNumeric:=AlxCalculo;
end;

procedure TFOrcamento.EdVlrCobradoDExit(Sender: TObject);
begin
  inherited;
	CalcPercent(EdDesconto.ValueNumeric, 0, (EdQtdD.ValueNumeric*EdVlrCobradoD.ValueNumeric), 'D');
   EdVlrTotD.ValueNumeric:=AlxCalculo;
end;

procedure TFOrcamento.EdVlrTotDExit(Sender: TObject);
begin
  inherited;
  	CalcPercent(0, (EdQtdD.ValueNumeric*EdVlrCobradoD.ValueNumeric)- EdVlrTotD.ValueNumeric, (EdQtdD.ValueNumeric*EdVlrCobradoD.ValueNumeric), 'D');
  	EdDesconto.ValueNumeric:=AlxPercento;
end;

procedure TFOrcamento.BitBtn3Click(Sender: TObject);
begin
  inherited;
   If EdDescD.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, descreva a despesa.', '', 1, 1, False, 'i');
       EdDescD.SetFocus;
       exit;
   End;

   If Edqtdd.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe uma quantidade maior que 0 (zero).', '', 1, 1, False, 'i');
       Edqtdd.SetFocus;
       exit;
   End;

   If EdVlrCustoD.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor de Custo maior que 0 (zero).', '', 1, 1, False, 'i');
       EdVlrCustoD.SetFocus;
       exit;
   End;

   If EdVlrCobradoD.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor Cobrado maior que 0 (zero).', '', 1, 1, False, 'i');
       EdVlrCustoD.SetFocus;
       exit;
   End;

   If EdVlrTotD.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe um Valor Total que 0 (zero).', '', 1, 1, False, 'i');
       EdVlrCustoD.SetFocus;
       exit;
   End;
	XCOD_ITDESP:=InserReg(DMESTOQUE.TDesp, 'DESPADIC', 'COD_DESPADIC');
   DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger:=XCOD_ITDESP;
   DMESTOQUE.TDesp.FieldByName('COD_GERADOR').AsString:=XCodPedido;
   DMESTOQUE.TDesp.FieldByName('GERADOR').AsString:='ORCAMENTO';
   DMESTOQUE.TDesp.FieldByName('DESPESA').AsString:=EdDescD.Text;
   DMESTOQUE.TDesp.FieldByName('MARCA').AsString:=EDMarca.Text;
   DMESTOQUE.TDesp.FieldByName('UNIDADE').AsString:=EdUnidade.Text;
   DMESTOQUE.TDesp.FieldByName('DESCONTO').AsCurrency:=EdDesconto.ValueNumeric;   
   DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency:=EDQTDD.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('VLRREAL').AsCurrency:=EdVlrCustoD.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency:=EdVlrCobradoD.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency:=EdVlrTotD.ValueNumeric;
   DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency:=EdVlrTotD.ValueNumeric-(EdVlrCustoD.ValueNumeric*EDQtdD.ValueNumeric);
   DMESTOQUE.TDesp.FieldByName('LUCPER').AsCurrency:=((DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency*100)/(EdVlrCustoD.ValueNumeric*EDQtdD.ValueNumeric));
   DMESTOQUE.TDesp.Post;
   DMESTOQUE.TransacEstoque.CommitRetaining;
   LimpaLabelsDESP;
   FiltraSlave;
   EdDescD.SetFocus;
end;

procedure TFOrcamento.BitBtn4Click(Sender: TObject);
begin
  inherited;
   If Not DMESTOQUE.TDesp.IsEmpty
   Then Begin
   	DMESTOQUE.TDesp.Delete;
   	DMESTOQUE.TransacEstoque.CommitRetaining;
   	FiltraSlave;
   End;
end;

procedure TFOrcamento.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
	PmRelatorio.Popup(Left+PConsulta.left+Painel.left+ BtnRelatorio.Left, top+PConsulta.Top+Painel.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;

procedure TFOrcamento.CompdeAbertura1Click(Sender: TObject);

Var
	I,XCONT,XCOD_TMP: Integer;
begin
  inherited;
   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

   //FILTRA CLIENTE PARA ENCONTRAR PESSOA
   If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMSAIDA.WOrc.FieldByNAme('COD_CLIENTE').AsString, '')=False
   Then Begin
   	MessageDlg('Verifique o cliente para a orçamento', mtWarning, [mbOK], 0);
		Exit;
   End;

   //FILTRA PESSOA PARA IMPRESSÃO DE CLIENTE
   If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.FieldByNAme('COD_PESSOA').AsString, '')=False
   Then Begin
   	MessageDlg('Por favor, cadastre novamente o cliente', mtWarning, [mbOK], 0);
   	Exit;
   End;

   //FILTRA CIDADE DO CLIENTE
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByNAme('COD_CIDADE').AsString, '');

   //FILTRA TELEFONE PARA IMPRESSÃO DE CLIENTE
   FiltraTabela(DMPESSOA.TALX, 'TELEFONE', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString, '');

   //FILTRA ORCAMENTO PARA IMPRESSÃO
   FiltraTabela(DMSAIDA.TOrc, 'ORCAMENTO', 'COD_ORCAMENTO', DMSAIDA.WOrc.FieldByNAme('COD_ORCAMENTO').AsString, '');
   //FILTRA VENDEDOR
   FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', DMSAIDA.TOrc.FieldByNAme('cod_vendedor').AsString, '');
   //FILTRA FORMA DE PAGAMENTO
   If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'cod_formpag', DMSAIDA.TOrc.FieldByNAme('cod_formpag').AsString, '')=False Then
   	Exit;

   // SELECIONAR INSCRICAO ESTADUAL CLIENTE
   FiltraTabela(DMPESSOA.TPessoaJ,'PESSOAJ','COD_PESSOA',DMPESSOA.TPessoa.FieldByNAme('COD_PESSOA').AsString,'');

   // sql para selecionar o nome do funcionario
   DMPESSOA.TALX1.Close;
   DMPESSOA.TALX1.SQL.Clear;
   DMPESSOA.TALX1.SQL.Add('select * from funcionario');
   DMPESSOA.TALX1.SQL.Add('left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
   DMPESSOA.TALX1.SQL.Add('where funcionario.cod_func = :codigo');
   DMPESSOA.TALX1.ParamByName('codigo').AsInteger := DMPESSOA.VWFuncionario.FieldByname('cod_func').AsInteger;
   DMPESSOA.TALX1.Open;

   XCodPedido:=DMSAIDA.WOrc.fieldbyname('COD_ORCAMENTO').AsString;


    // - 06/02/2009:  se for setado em loja com conversao unitaria // incluir sql's
           if (XConvUnitVenda) //or (XConvUnitEmb)
           then begin

                 DMESTOQUE.TSlave.Close;
                  DMESTOQUE.TSlave.SQL.Clear;
                  DMESTOQUE.TSlave.SQL.Add('Select itprodorC.cod_itprodorC, itprodorc.cod_estoque, estoque.cod_subprod, unidade.sigla_unid, unidade.DESC_UNID');
                  DMESTOQUE.TSlave.SQL.Add('From itprodorc ');
                  DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on itprodorC.unidemb = unidade.cod_unidade ');
                  DMESTOQUE.TSlave.sql.Add('LEFT Join estoque on itprodorC.cod_estoque = estoque.cod_estoque ');
                  DMESTOQUE.TSlave.SQL.Add('Where itprodorc.cod_orcamento = :CODORDEM ');
                  DMESTOQUE.TSlave.ParamByName('CODORDEM').AsString:=XCodPedido;
                  DMESTOQUE.TSlave.Open;

                 DMMACS.TMP.Close;
                 DMMACS.TMP.SQL.Clear;
                 DMMACS.TMP.SQL.Add('delete from tmp');
                 DMMACS.TMP.ExecSQL;
                 DMMACS.Transaction.CommitRetaining;

                 DMMACS.TMP.Close;
                 DMMACS.TMP.SQL.Clear;
                 DMMACS.TMP.SQL.Add('Select * from tmp');
                 DMMACS.TMP.Open;

                 XCONT := 0;
                 XCOD_TMP := 0;
                 DMESTOQUE.TSlave.First;
                 While Not DMESTOQUE.TSlave.Eof do
                 Begin
                    XCONT:=XCONT+1;
                    XCOD_TMP:=XCOD_TMP+1;

                    DMMACS.TMP.Insert;
                    DMMACS.TMP.FieldByName('COD_TMP').AsCurrency:=XCOD_TMP;
                    DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_ITPRODORC').AsInteger;
                   { IF XConvUnitVenda THEN
                       DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.TSlave.FieldByName('DESC_UNID').AsString
                    ELSE }
                        DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.TSlave.FieldByName('sigla_unid').AsString;

                    DMESTOQUE.Alx.Close;
                    DMESTOQUE.Alx.SQL.Clear;
                    DMESTOQUE.Alx.SQL.Add('select * from unidade');
                    DMESTOQUE.Alx.SQL.Add('left join subproduto on unidade.cod_unidade = SubProduto.cod_unidVenda');
                    DMESTOQUE.Alx.SQL.Add('where subproduto.cod_subproduto = :COD');
                    DMESTOQUE.Alx.ParamByName('COD').AsString:= DMESTOQUE.TSlave.fieldByName('cod_subprod').AsString;
                    DMESTOQUE.Alx.open;

                    DMMACS.TMP.FieldByName('DESC2').AsString:=DMESTOQUE.Alx.FieldByName('sigla_unid').AsString;

                    DMMACS.TMP.Post;

                    DMMACS.Transaction.CommitRetaining;

                    DMESTOQUE.TSlave.Next;
                 end;




           end;   




   //FILTRA PRODUTOS, SERVIÇOS E DESPESAS
	FiltraSlave;

     if (XConvUnitVenda) and (DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=8)
     then begin

          DMESTOQUE.TSlave.Close;
          DMESTOQUE.TSlave.SQL.Clear;
          DMESTOQUE.TSlave.SQL.Add('Select itprodorC.cod_itprodorC, unidade.sigla_unid AS UNIDADE, itprodorC.cod_orcamento, itprodorc.cod_estoque,  itprodorc.qtd, itprodorc.vlrtotal AS TOTAL, ');
          DMESTOQUE.TSlave.SQL.Add('itprodorc.desconto, itprodorc.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR,');
          DMESTOQUE.TSlave.sql.Add('itprodorc.qtdemb, itprodorc.unidemb, itprodorc.qtdnaemb, ');
          DMESTOQUE.TSlave.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, tmp.desc1, ');
          DMESTOQUE.TSlave.SQL.Add('From itprodorc left Join estoque on estoque.cod_estoque = itprodorc.cod_estoque ');
          DMESTOQUE.TSlave.SQL.Add('Left Join subproduto on  estoque.cod_subprod = subproduto.cod_subproduto ');
          DMESTOQUE.TSlave.sql.Add('LEFT Join unidade on SubProduto.cod_unidVenda = unidade.cod_unidade ');
          DMESTOQUE.TSlave.sql.Add('LEFT Join tmp on itprodorC.cod_itprodorC = tmp.int1');
          DMESTOQUE.TSlave.SQL.Add('Where itprodorc.cod_orcamento = :CODORDEM ');
          DMESTOQUE.TSlave.ParamByName('CODORDEM').AsString:=XCodPedido;
          DMESTOQUE.TSlave.Open;
     end;
    
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=0 Then
       Mensagem('INFORMAÇÃO AO USUÁRIO', 'Configure o modelo de orçamento em loja!', '', 1, 1, False, 'a');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=1 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento.frf');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=2 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento02.frf');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=3 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento03.frf');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=4 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento04.frf');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=5 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento05.frf');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=6 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento06.frf');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=7 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento07.frf');
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=8 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamento08.frf');
   //PAulo 01/11/2010 - 160 : PAra imprimir orçamento com a logo da empresa
   If DMMACS.TLoja.FieldByName('MODELOORC').AsInteger=9 Then
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrcamentoPersonalizado.frf');

	FSRel.ShowReport;

end;

procedure TFOrcamento.EDTotalExit(Sender: TObject);
begin
  inherited;
	CalcPercent(0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric)- EDTotal.ValueNumeric, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
	EDDesc.ValueNumeric:=AlxPercento;
end;

procedure TFOrcamento.DBDTPREVExit(Sender: TObject);
begin
  inherited;
   PCProdServ.ActivePage:=TabSheet1;
end;

procedure TFOrcamento.Panel2Enter(Sender: TObject);
begin
  inherited;
       if EdQtdConvert.Text = ''
       then begin
           //VERIFICA QUAL COMPONENETE DEVE RECEBER O FOCUS
           IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'BP' THEN
               BtnProcProd.SetFocus;
           IF DMMacs.Tloja.FieldByName('FOCUITEMPED').AsString = 'CB' THEN
               EDCodBarra.SetFocus;
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
                       EDCodComposto.Text:='';
                       EDCodComposto.SetFocus;
                   Except
                   End;
               End;
               IF DMMacs.Tloja.FieldByName('CAMPOPESQITEMPED').AsString = 'CF'
               THEN Begin
                   Try
                       EDCodFab.Text:='';
                       EDCodFab.SetFocus;
                   Except
                   End;
               End;
           END;
       end;
end;

procedure TFOrcamento.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
   FMenu.TIPOAUX:='TERCEIROS';
  FMenu.XPreSel := True;
        FMenu.XFieldPesqPreSel := 'COD_INTERNO';
        FMenu.XCodPesqPresSel := FrmReservTec.EDCodigo.Text;

	FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
       XCOD_RESTEC:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
 		FrmReservTec.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       FrmReservTec.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
   End
   Else Begin
       XCOD_RESTEC:=-1;
 		FrmReservTec.EDCodigo.Text:='';
       FrmReservTec.EdDescricao.Text:='';
   End;
end;

procedure TFOrcamento.FrmBusca1EDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
      	//If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmReservTec.EDCodigo.Text+#39)=True
       If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_INTERNO', Trim(FrmReservTec.EDCodigo.Text),'')=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
        	XCOD_RESTEC:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
           FrmReservTec.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
	        FrmReservTec.EDCodigo.Text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
        	XCOD_RESTEC:=-1;
           FrmReservTec.EdDescricao.Text:='';
	        FrmReservTec.EDCodigo.Text:='';
       End;
   End;
end;

procedure TFOrcamento.EdDescmoeExit(Sender: TObject);
begin
  inherited;
  	If EdDescmoe.text<>''
   Then Begin
		EdtotalProd.ValueNumeric:=XVLRTPROD-EdDescmoe.ValueNumeric;
   End;
   If XVLRTPROD<>(EdtotalProd.ValueNumeric)
   Then Begin
		CalcPercent(0, XVLRTPROD-(EdtotalProd.ValueNumeric), XVLRTPROD , 'D');
       XTabela.edit;
       EdDescTProd.ValueNumeric:=AlxPercento;
       XTabela.Post;
   End
   Else Begin
       XTabela.edit;
       EdDescTProd.ValueNumeric:=0;
       EdtotalProd.ValueNumeric:=XVLRTOTAL;
       XTabela.Post;
   End;
   FiltraSlave;
end;

procedure TFOrcamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key = VK_F1
   Then Begin
       PPrecos.Visible := true;
       PPrecos.BringToFront;
   End;
   If key= VK_ESCAPE
   Then Begin
       If PPrecos.Visible = true
       Then Begin
           PPrecos.Visible := false;
           PPrecos.SendToBack;
       End;
   End;
end;

procedure TFOrcamento.DBGridConvertCellClick(Column: TColumn);
begin
  inherited;
   AtualizaQntConvertida;
end;

procedure TFOrcamento.DBGridConvertExit(Sender: TObject);
begin
  inherited;
   AtualizaQntConvertida;
end;

procedure TFOrcamento.DBGridConvertKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   AtualizaQntConvertida;
    If Key=#13
       Then Begin
          EdQtdConvert.SetFocus;
       end;
end;

procedure TFOrcamento.EdQtdConvertKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   If Key=VK_RETURN
   Then Begin//pressionado enter, consultar
       If EdQtdConvert.ValueNumeric>0
       Then Begin
           PQtdConvert.Visible:=False;
           LQtdConvert.Visible:=True;
           LQtdConvert.BringToFront;
           LQtdConvert.Caption:='x'+EdQtdConvert.Text;
           EDDesc.SetFocus;
       End;
   End;
end;

procedure TFOrcamento.EDQuantidadeEnter(Sender: TObject);
begin
  inherited;
  if (XConvUnitVenda) or (XConvUnitEmb) then
        XFocu := ''
   else
        XFocu:='FQTDCONVERT';

    // Paulo 23/07/2010: se em loja estiver configurado conversao unitaria venda abrir painel correspondente
   if (XConvUnitVenda) //and ((LSimilar.Caption<>'') or (LSimilar.Caption<>'PRODUTO NÃO ENCONTRADO'))
   then begin
      //Seta informações para o componente de unidade de estoque
      cbUnidConvVenda.ListSource := DMESTOQUE.DSUnidade;
      cbUnidConvVenda.KeyField := 'COD_UNIDADE';
      cbUnidConvVenda.ListField := 'DESC_UNID';
      cbUnidConvVenda.KeyValue := DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsInteger;

      //Seta informações para o componente de unidade vendida
      cbConvUnitVendaConv.ListSource := DMESTOQUE.DSAlx3;
      cbConvUnitVendaConv.KeyField := 'COD_UNIDADE';
      cbConvUnitVendaConv.ListField := 'DESC_UNID';
      cbConvUnitVendaConv.KeyValue := DMESTOQUE.TUnidade.FieldByName('cod_unidade').AsInteger;{ DMESTOQUE.Alx3.FieldByName('cod_unidade').AsInteger ;}

      edQntConvertVenda.ValueNumeric := EDQuantidade.ValueNumeric;

       // se unidade de conversão for igual ao de venda setar valor igual na outra edit
      if cbUnidConvVenda.KeyValue = cbConvUnitVendaConv.KeyValue
      then begin
            edQntConvert.ValueNumeric := edQntConvertVenda.ValueNumeric;
            EDQuantidade.ValueNumeric := edQntConvertVenda.ValueNumeric;
        end
        else begin
            // fazer calculo se nao for igual
            if XConvVlr then
                edQntConvert.ValueNumeric := edQntConvertVenda.ValueNumeric/XVlrConv
            else
                edQntConvert.ValueNumeric := edQntConvertVenda.ValueNumeric*XVlrConv;

            EDQuantidade.ValueNumeric := edQntConvertVenda.ValueNumeric;
        end;

        // se nao tiver produto selecionado nao abrir painel
       if not ((LProduto.Caption='') or (LProduto.Caption='Produto')) and not (DMESTOQUE.Alx2.IsEmpty)
       then begin
           PConversaoUnitaria.Visible := True;
           PConversaoUnitaria.BringToFront;
      		cbConvUnitVendaConv.SetFocus;           
       end;
   end;


end;

procedure TFOrcamento.AtualizaQntConvertida;
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

 //  XCodUnidItenProd :=  DMESTOQUE.Alx.FieldByName('cod_unidsai').AsInteger;
   XCodUnidItenProd :=  DMESTOQUE.Alx.FieldByName('COD_UNIDADE').AsInteger;
   
end;

procedure TFOrcamento.cbConvUnitVendaConvExit(Sender: TObject);
begin
  inherited;
    if (cbUnidConvVenda.KeyValue = cbConvUnitVendaConv.KeyValue)
    then begin
        FPConversaoUnitaria.Color := $00FFECEC;
        FPConversaoUnitaria.Title := 'Conversão Unitária';
        FPConversaoUnitaria.Refresh;
        XConvAtivo := True;
    end;
end;

procedure TFOrcamento.btnVisualizarConvUnitClick(Sender: TObject);
begin
  inherited;
    AbrirForm(TFConvertUnid, FConvertUnid, 0);
end;

procedure TFOrcamento.edQntConvertVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if key = 27 then
        btnOkConversaoUnitariaClick(Sender);

    if (key = 13) and (cbUnidConvVenda.KeyValue <> cbConvUnitVendaConv.KeyValue)
    then begin
        if XConvAtivo
        then begin
            FPConversaoUnitaria.Color := $00D1F1DA;
            FPConversaoUnitaria.Title := 'Conversão Unitária (DESATIVADA)';
            FPConversaoUnitaria.Refresh;
            XConvAtivo := False;
        end
        else begin
            FPConversaoUnitaria.Color := $00FFECEC;
            FPConversaoUnitaria.Title := 'Conversão Unitária';
            FPConversaoUnitaria.Refresh;
            XConvAtivo := True;
        end;
    end;
end;

procedure TFOrcamento.edQntConvertVendaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    // - 06/02/2009:se conversao estiver ativa
  if XConvAtivo
  then begin
       // - 06/02/2009:  se unidade de conversão for igual ao de venda setar valor igual na outra edit
      if cbUnidConvVenda.KeyValue = cbConvUnitVendaConv.KeyValue
        then begin
            edQntConvert.ValueNumeric := edQntConvertVenda.ValueNumeric;
            EDQuantidade.ValueNumeric := edQntConvertVenda.ValueNumeric;
        end
        else begin
            // - 06/02/2009:  fazer calculo se nao for igual
            if XConvVlr then
                edQntConvert.ValueNumeric := edQntConvertVenda.ValueNumeric/XVlrConv
            else
                edQntConvert.ValueNumeric := edQntConvertVenda.ValueNumeric*XVlrConv;


        end;
  end;
  EDQuantidade.ValueNumeric := edQntConvertVenda.ValueNumeric;
end;

procedure TFOrcamento.edQntConvertKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key = 27 then
        btnOkConversaoUnitariaClick(Sender);

    if (key = 13) and (cbUnidConvVenda.KeyValue <> cbConvUnitVendaConv.KeyValue)
    then begin
        if XConvAtivo
        then begin
            FPConversaoUnitaria.Color := $00D1F1DA;
            FPConversaoUnitaria.Title := 'Conversão Unitária (DESATIVADA)';
            FPConversaoUnitaria.Refresh;
            XConvAtivo := False;
        end
        else begin
            FPConversaoUnitaria.Title := 'Conversão Unitária';
            FPConversaoUnitaria.Refresh;
            FPConversaoUnitaria.Color := $00FFECEC;
            XConvAtivo := True;
        end;
    end;
end;

procedure TFOrcamento.edQntConvertKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
       // - 06/02/2009:se conversao estiver ativa
  if XConvAtivo
  then begin
    // - 06/02/2009:  se unidade de conversão for igual ao de venda setar valor igual na outra edit
    if cbUnidConvVenda.KeyValue = cbConvUnitVendaConv.KeyValue
    then begin
         edQntConvertVenda.ValueNumeric := edQntConvert.ValueNumeric;
         EDQuantidade.ValueNumeric := edQntConvert.ValueNumeric;
    end
    else begin
        // - 06/02/2009:  fazer calculo se nao for igual
        if XConvVlr then
            edQntConvertVenda.ValueNumeric := edQntConvert.ValueNumeric*XVlrConv
        else
           edQntConvertVenda.ValueNumeric := edQntConvert.ValueNumeric/XVlrConv;
        EDQuantidade.ValueNumeric := edQntConvertVenda.ValueNumeric;
    end;
  end;
  EDQuantidade.ValueNumeric := edQntConvertVenda.ValueNumeric;
end;

procedure TFOrcamento.btnOkConversaoUnitariaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if key = 27 then
        btnOkConversaoUnitariaClick(Sender);
end;

procedure TFOrcamento.btnOkConversaoUnitariaClick(Sender: TObject);
begin
  inherited;
    PConversaoUnitaria.SendToBack;
    PConversaoUnitaria.Visible := False;



    if cbUnidConvVenda.KeyValue <> cbConvUnitVendaConv.KeyValue
    then
        LQtdConvert.Caption := FloatToStr(edQntConvert.ValueNumeric)+cbConvUnitVendaConv.Text
    else
        LQtdConvert.Caption := '';

    xqtdconvert:=edQntConvertVenda.ValueNumeric;
    LQtdConvert.Visible := True;
    LQtdConvert.BringToFront;
    LQtdConvert.Repaint;

    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select * from unidade');
    DMESTOQUE.Alx.SQL.Add('where unidade.desc_unid = :DESC');
    DMESTOQUE.Alx.ParamByName('DESC').AsString:=cbConvUnitVendaConv.Text;
    DMESTOQUE.Alx.Open;

    EDDesc.SetFocus;
end;

procedure TFOrcamento.EdNomeEnter(Sender: TObject);
begin
  inherited;
    if EdNome.Text = 'Nome/Descrição' then
        EdNome.Text := ''
   else
    EdNome.SelectAll;

   EdNome.Font.Color := clBlack;
end;

procedure TFOrcamento.EdNomeExit(Sender: TObject);
begin
  inherited;
    if Trim(EdNome.Text) = '' then begin
        EdNome.Text := 'Nome/Descrição';
        EdNome.Font.Color := clGray;
  end;
end;

procedure TFOrcamento.EdNumOrcEnter(Sender: TObject);
begin
  inherited;
   if EdNumOrc.Text = 'Nº Orçamento' then
        EdNumOrc.Text := ''
   else
    EdNumOrc.SelectAll;

   EdNumOrc.Font.Color := clBlack;
end;

procedure TFOrcamento.EdNumOrcExit(Sender: TObject);
begin
  inherited;
    if Trim(EdNumOrc.Text) = '' then begin
        EdNumOrc.Text := 'Nº Orçamento';
        EdNumOrc.Font.Color := clGray;
  end;
end;

procedure TFOrcamento.edDtAberturaEnter(Sender: TObject);
begin
  inherited;
  if edDtAbertura.Text = 'Data Abertura' then
        edDtAbertura.Text := ''
   else
    edDtAbertura.SelectAll;

   edDtAbertura.Font.Color := clBlack;
end;

procedure TFOrcamento.edDtAberturaExit(Sender: TObject);
begin
  inherited;
  if Trim(edDtAbertura.Text) = '' then begin
        edDtAbertura.Text := 'Data Abertura';
        edDtAbertura.Font.Color := clGray;
  end;
end;

procedure TFOrcamento.edDtAberturaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   Try

  if not (Key in[Chr(8)]) then
   begin
       if Length(edDtAbertura.Text)=2 then
       begin
           edDtAbertura.Text:=edDtAbertura.Text+'/';
           edDtAbertura.SelStart:=3;
       end else if Length(edDtAbertura.Text)=5 then begin
           edDtAbertura.Text:=edDtAbertura.Text+'/';
           edDtAbertura.SelStart:=6;
       end;
   end;


   if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0
    else if key in[Chr(8),#13,#27] then
    begin
       // eh nois !!
    end
    else if Length(edDtAbertura.Text) = 0
    then begin
        if key in['4'..'9']
        then begin
            edDtAbertura.Text := '0';
            edDtAbertura.SelStart := 2;
        end;

    end
    else if Length(edDtAbertura.Text) = 1
    then begin
        if edDtAbertura.Text = '3'
        then begin
            if not (key in['0'..'1']) then key := #0;
        end;
    end
    else if (Length(edDtAbertura.Text) = 2) or (Length(edDtAbertura.Text) = 3)
    then begin
        if key in['2'..'9']
        then begin
            edDtAbertura.Text := edDtAbertura.Text+'0';
            edDtAbertura.SelStart := 4;
        end;
    end
    else if (Length(edDtAbertura.Text) = 4)
    then begin
        if Copy(edDtAbertura.Text, 4,4) = '1'
        then begin
            if not (key in['0'..'2']) then key := #0;
        end;
    end
    else if (Length(edDtAbertura.Text) = 5) or (Length(edDtAbertura.Text) = 6)
    then begin
        if not (key in ['1'..'2']) then key := #0;
    end;


   // if not (Key in['0'..'9',Chr(8),#13,#27]) then Key:= #0;

   if not (Key in[Chr(8)]) then
   begin
       if Length(edDtAbertura.Text)=2 then
       begin
           edDtAbertura.Text:=edDtAbertura.Text+'/';
           edDtAbertura.SelStart:=3;
       end else if Length(edDtAbertura.Text)=5 then begin
           edDtAbertura.Text:=edDtAbertura.Text+'/';
           edDtAbertura.SelStart:=6;
       end;
   end;

   if(key = #13)
   then begin
       if Length(Trim(edDtAbertura.Text))=0 then
       begin
           edDtAbertura.Text:=DatetoStr(Date());
       end else if Length(Trim(edDtAbertura.Text))=1 then
       begin
           edDtAbertura.Text:='0'+edDtAbertura.Text+Copy(DatetoStr(Date()), 3, 10);
       end else if Length(edDtAbertura.Text)<=3 then begin
           edDtAbertura.Text:=edDtAbertura.Text+Copy(DatetoStr(Date()), 4, 10);
       end else if Length(edDtAbertura.Text)=4 then begin
           edDtAbertura.Text:=Copy(edDtAbertura.Text,1,3)+'0'+Copy(edDtAbertura.Text,4,4)+Copy(DatetoStr(Date()), 6, 10);
       end else if Length(edDtAbertura.Text)<=6 then begin
           edDtAbertura.Text:=edDtAbertura.Text+Copy(DatetoStr(Date()), 7, 10);
       end else if (Length(edDtAbertura.Text)>6) and (Length(edDtAbertura.Text)<10) then begin
           edDtAbertura.Text:=Copy(edDtAbertura.Text, 1,6)+Copy(DatetoStr(Date()), 7, 10);
       end;

       XView.Close;
       XView.SQL.Clear;
       XView.SQL.Add('select * from vworcamento where vworcamento.dtabert = :DATA');
       XView.ParamByName('DATA').AsDateTime := StrToDate(edDtAbertura.Text);
       XView.Open;
       edDtAbertura.SelectAll;
       //EDDataFim.SetFocus;
   end;

       If (key = #27)
       Then Begin //pressionado esc, liberar
           LiberaDados;
           edDtAbertura.SelectAll;
       End;

   Except
   End;
end;

procedure TFOrcamento.edDtAberturaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    {
    if not (Key in[96..106,48..57,8,13,27]) then Key:= 0
    else if key in[8,13,27] then
        Exit
    else if Length(edDtAbertura.Text) = 0
    then begin
        if key in [100..105,52..57]
        then begin
            edDtAbertura.Text := '0';
            edDtAbertura.SelStart := 2;
        end;

    end
    else if Length(edDtAbertura.Text) = 1
    then begin
        if edDtAbertura.Text = '3'
        then begin
            if not key in [96,97,48,49] then key := 0;
        end;
    end
    else if (Length(edDtAbertura.Text) = 2) or (Length(edDtAbertura.Text) = 3)
    then begin
        if key in [96,97,48,49]
        then begin
            edDtAbertura.Text := '0';
            edDtAbertura.SelStart := 4;
        end;
    end
    else if (Length(edDtAbertura.Text) = 4)
    then begin
        if edDtAbertura.Text = '3'
        then begin
            if not key in [96,97,48,49,50,98] then key := 0;
        end;
    end
    else if (Length(edDtAbertura.Text) = 5) or (Length(edDtAbertura.Text) = 6)
    then begin
        if not key in [97,49,50,98] then key := 0;
    end;              }
end;

procedure TFOrcamento.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  inherited;
    // - 06/02/2009: utilizado para detectar nos key press a tecla tab na edit
  if (Msg.Message = WM_KEYDOWN) AND (Msg.wParam = VK_TAB) AND ((edQntConvert.Focused) or (btnOkConversaoUnitaria.Focused))  then 
  begin
      if (edQntConvert.Focused)
      then begin
          if (cbUnidConvVenda.KeyValue = cbConvUnitVendaConv.KeyValue)
           then begin
                btnOkConversaoUnitaria.SetFocus;
           end
           else begin
                edQntConvertVenda.SetFocus;
           end;
      end
      else begin
            cbConvUnitVendaConv.SetFocus;
      end;

       Msg.wParam := 0;
       Handled := True;
  end;
end;

procedure TFOrcamento.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\orcamento.lgm');
       Mensagem('MZR Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('MZR Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrcamento.DbgProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DbgProduto.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\orcamentoProdutos.lgm');
       Mensagem('MZR Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('MZR Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrcamento.DbgServicosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DbgServicos.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\orcamentoServicos.lgm');
       Mensagem('MZR Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('MZR Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrcamento.DbgDespesasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DbgDespesas.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\orcamentoDespesas.lgm');
       Mensagem('MZR Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('MZR Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrcamento.verificaDescontoFormpag;
Begin
     If DMFinanc.TFormPag.FieldByName('ATIVADESC').AsString = '1'
     Then Begin
        EdDescTProd.ValueNumeric := DMFinanc.TFormPag.FieldByName('DESCFORMPAG').AsCurrency;
        EdDescTProdExit(Self);
     End;
End;

end.
