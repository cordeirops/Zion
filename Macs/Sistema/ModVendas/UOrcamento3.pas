unit UOrcamento3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  ExtCtrls, Mask, DBCtrls, DBColorEdit, EditFloat, ColorEditFloat,
  UFrmBusca, ColorMaskEdit, TFlatComboBoxUnit, TFlatRadioButtonUnit, Menus, IBQuery,
  frxClass, frxDBSet, AppEvnts, ComCtrls, TFlatMemoUnit, FR_DSet, FR_DBSet,
  FR_Class;

type
  TFOrcamento3 = class(TFCadPadrao)
    Label3: TLabel;
    EdValorPed: TColorEditFloat;
    Label2: TLabel;
    DBNumPed: TDBColorEdit;
    EdDescricao: TFlatEdit;
    Label28: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    cbGarantia: TFlatComboBox;
    LTextoBusca: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edSolicitante: TFlatEdit;
    edEmail: TFlatEdit;
    edArea: TFlatEdit;
    Label22: TLabel;
    edModoPagamento: TFlatEdit;
    Label23: TLabel;
    edHrAbertura: TFlatEdit;
    MEscolheProc: TPopupMenu;
    ControleInterno1: TMenuItem;
    CdFab1: TMenuItem;
    C1: TMenuItem;
    edIcmsSt: TColorEditFloat;
    edDtValidade: TMaskEdit;
    PopupRelatorio: TPopupMenu;
    CompOramento1: TMenuItem;
    frxRelOrcamento: TfrxReport;
    frxOrcamento: TfrxDBDataset;
    frxOrcCliente: TfrxDBDataset;
    frxOrcEmpresa: TfrxDBDataset;
    frxOrcCidade: TfrxDBDataset;
    frxOrcFunc: TfrxDBDataset;
    frxOrcLoja: TfrxDBDataset;
    Panel5: TPanel;
    rbFob: TFlatRadioButton;
    Label9: TLabel;
    rbCif: TFlatRadioButton;
    ApplicationEvents1: TApplicationEvents;
    edPrazoDespacho: TFlatEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Shape6: TShape;
    LTotaisQtde: TLabel;
    Panel3: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    LCustoTot: TLabel;
    pPesquisaAgil: TPanel;
    lPesquisa: TLabel;
    edPesquisaAgil: TFlatEdit;
    BtnInsertProd: TBitBtn;
    BtnDeleteProd: TBitBtn;
    EDQuantidade: TColorEditFloat;
    EDValUnit: TColorEditFloat;
    EDDesc: TColorEditFloat;
    EDTotal: TColorEditFloat;
    BtnProcProd: TBitBtn;
    GroupBox5: TGroupBox;
    DbgProduto: TDBGrid;
    TabSheet2: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    edDescProduto01: TFlatMemo;
    edDescProduto02: TFlatMemo;
    FSRel: TfrReport;
    FDSCaixa: TfrDBDataSet;
    EdNumero: TFlatEdit;
    edICMS: TColorEditFloat;
    Label26: TLabel;
    edVendedor: TEdit;
    Label10: TLabel;
    Label15: TLabel;
    edFormaPagamento: TEdit;
    edDtAbertura: TMaskEdit;
    Nome: TEdit;
    OBSmemo: TMemo;
    LProduto: TLabel;
    pGridProdutos: TPanel;
    DbGridProdutos: TDBGrid;
    Label16: TLabel;
    EdTelefone: TEdit;
    Label5: TLabel;
    EdCidade: TFlatEdit;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnProcPessClick(Sender: TObject);
    procedure FrmVendedorBTNOPENClick(Sender: TObject);
    procedure FrmVendedorEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmFormPag1BTNOPENClick(Sender: TObject);
    procedure FrmFormPag1BTNMINUSClick(Sender: TObject);
    procedure FrmFormPag1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnEscolheProcClick(Sender: TObject);
    procedure ControleInterno1Click(Sender: TObject);
    procedure CdFab1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure BtnProcProdClick(Sender: TObject);
    procedure EDQuantidadeExit(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure BtnDeleteProdClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure CompOramento1Click(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure EDCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure EDCodInternoKeyPress(Sender: TObject; var Key: Char);
    procedure EDCodFabKeyPress(Sender: TObject; var Key: Char);
    procedure EDCodCompostoKeyPress(Sender: TObject; var Key: Char);
    procedure edPesquisaAgilEnter(Sender: TObject);
    procedure edPesquisaAgilKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
    	 var Handled: Boolean);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNumeroEnter(Sender: TObject);
    procedure EdNumeroExit(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdNumeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesquisaAgilKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    xCodItProdOrc, xCodPedido: Integer;//xCliente, xVendedor, xFormPag
    xIndustria, xAtacadista: Boolean;
    xCodProdTmp: String;

    procedure EscreveLabels;
    procedure FiltraSlave;
    procedure LimpaLabels;
    procedure LimpaCamposOrcamento;
    //procedure FiltraOrcamento;
    function GravaOrcamento: Boolean;
    function ConsultaOrcamento: Boolean;
    //procedure utilizada para liberar todos os dados ordenando pelo campo passado
    procedure LiberaDadosOrc(Ordenacao: String);
    procedure FiltraOrcamento;
	 //Function InicializaVarUF: Boolean;
    //function AtualizaCstCsosn: Boolean;
    //function CalculoIcmsSubstituicaoInsustriasSimples: Boolean;
    //function VerificaTipoCliente: Boolean;
  public
    { Public declarations }
    XTabela, XView: TIBQuery;
  end;

var
  FOrcamento3: TFOrcamento3;
 { XUfOrigem, XUfDestino: String;
  XUsoConsumo: String;
  XClienteConsumidorFinal, XClientedoSimples, XEstadoIsentoST, XClienteIE, XEmpresaInustria, xRemove: Boolean;
  XMvaEstado, XAliqIcms, XAlqIntDestinatario, XAliqExtDestinatario, xAliqIcmsSt, xVlrIcmsSt, xVlrBaseIcmsSt: Real;
  XCSTInterestadual, xCodCst, XCodCstST: Integer;}
  xRemove: Boolean;

implementation

uses
	Alxor32, DB, UDMSaida, UMenu, UDMFinanc,
   UDMEstoque, UDMMacs, UProduto, AlxMessage, UDMGEOGRAFIA,
  	UDMCaixa, UPadrao, UDMFAST, UDMPessoa, UFuncionario, UCliente, UFormPag;
{$R *.dfm}

procedure TFOrcamento3.BtnNovoClick(Sender: TObject);
begin
  inherited;
  try
   //BtnProcPess.SetFocus;

   edHrAbertura.Text := TimeToStr(Time());

   DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add('SELECT MAX(NUMORC) NUMORC FROM ORCAMENTO');
   DMSAIDA.TAlx.Open;

   DBNumPed.Text := IntToStr(DMSAIDA.TAlx.FieldByName('NUMORC').AsInteger + 1);

   xCodPedido :=  InserReg(DMSAIDA.TOrc, 'ORCAMENTO', 'COD_ORCAMENTO');
   DMSAIDA.TOrc.FieldByName('COD_ORCAMENTO').AsInteger := xCodPedido;                                            
   DMSAIDA.TOrc.FieldByName('NUMORC').AsString := IntToStr(DMSAIDA.TAlx.FieldByName('NUMORC').AsInteger + 1);
   DMSAIDA.TOrc.Post;

   edDescProduto01.Text := DMMACS.TLoja.FieldByName('CARACTERISTICA_PRODUTO01').AsString;
   edDescProduto02.Text := DMMACS.TLoja.FieldByName('CARACTERISTICA_PRODUTO02').AsString;
   //Edmar - 15/05/2014 - Seta a aba de produtos como padrão
   PageControl1.ActivePage := TabSheet1;

   FiltraSlave;
  except
  	on e : Exception do
   	showMessage('Ocorreu um problema ao inserir novo registro'+e.Message);
  end;
end;


procedure TFOrcamento3.BtnProcPessClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', 'ORDER BY NOME');
   if AbrirForm(TFCliente, FCliente, 1) = 'Selected' then
   begin
   	//xCodCliente := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       //DBCPF.Text := DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString;
       //DBNomeCli.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;

		//Edmar - 08/09/2014 - Filtra buscando cliente para busca de atacadista
       If FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsString, '') then
		begin
			//Edmar - 08/09/2014 - Verifica se o cliente é do tipo atacadista
           //e faz a marcação correspondente
       	if DMPESSOA.TCliente.FieldByName('ATACADISTA').AsString = '1' then
           	xAtacadista := True
           else
           	xAtacadista := False;
       end;

       //Edmar - 08/09/2014 - Filtra buscando se o cliente é pessoa juridica
       if FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '') then
       begin
       	//Edmar - 08/09/2014 - Verifica se o cliente é do tipo industria
           //e faz a marcação correspondente
       	if DMPESSOA.TPessoaJ.FieldByName('INDUSTRIA').AsString = '1' then
           	xIndustria := True
           else
           	xIndustria := False;
       end;
       
       try
         DMSAIDA.TOrc.Edit;
         //DMSAIDA.TOrc.FieldByName('COD_CLIENTE').AsInteger := xCodCliente;
         DMSAIDA.TOrc.Post;
       except
         on e : Exception do
             MessageDlg('Ocorreu um problema ao salvar o cliente: '+e.Message, mtError, [mbOK], 0);
       end;

       FiltraSlave;
   end else
   begin
   	//xCodCliente := -1;
      Nome.Text := '';
   end;
end;

procedure TFOrcamento3.FrmVendedorBTNOPENClick(Sender: TObject);
begin
  inherited;
   FMenu.TIPOAUX:='VENDEDOR';
  	if AbrirForm(TFFuncionario, FFuncionario, 1) = 'Selected' then
   begin
       //xCodVendedor := DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
       //FrmVendedor.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
       //FrmVendedor.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
   end else
   begin
   	//xCodVendedor := -1;
       //FrmVendedor.EdDescricao.Text := '';
       //FrmVendedor.EDCodigo.Text := '';
   end;
end;

procedure TFOrcamento3.FrmVendedorEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	if key = #13 then
   begin
   	{DMPESSOA.VWFuncionario.Close;
       DMPESSOA.VWFuncionario.SQL.Clear;
       DMPESSOA.VWFuncionario.SQL.Add('select vwfuncionario.* from vwfuncionario ');
       DMPESSOA.VWFuncionario.SQL.Add(' left join funcargo on vwfuncionario.cod_func = funcargo.cod_funcionario ');
       DMPESSOA.VWFuncionario.SQL.Add(' left join cargo on funcargo.cod_cargo = cargo.cod_cargo ');
       DMPESSOA.VWFuncionario.SQL.Add(' where (cargo.descricao = ''VENDEDOR'') AND (VWFUNCIONARIO.COD_INTERNO = :COD)');
       //DMPESSOA.VWFuncionario.ParamByName('COD').AsString := FrmVendedor.EDCodigo.Text;
       DMPESSOA.VWFuncionario.Open;

       if not DMPESSOA.VWFuncionario.IsEmpty then
       begin
           xCodVendedor := DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
           FrmVendedor.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
           FrmVendedor.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
   	end else
       begin
       	xCodVendedor := -1;
           FrmVendedor.EDCodigo.Text := '';
           FrmVendedor.EdDescricao.Text := '';
       end;}
   end;

   if key = #27 then
   begin
     	{xCodVendedor := -1;
   	FrmVendedor.EDCodigo.Text := '';
   	FrmVendedor.EdDescricao.Text := ''; }
   end;
end;

procedure TFOrcamento3.FrmFormPag1BTNOPENClick(Sender: TObject);
begin
  inherited;
	if AbrirForm(TFFormPag, FFormPag, 1) = 'Selected' then
   begin
   	XCodFormPag := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       //FrmFormPag1.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
       //FrmFormPag1.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;

   end
   else begin
   	xCodFormPag := -1;
       //FrmFormPag1.EDCodigo.Text := '';
       //FrmFormPag1.EdDescricao.Text := '';
   end;
end;

procedure TFOrcamento3.FrmFormPag1BTNMINUSClick(Sender: TObject);
begin
  inherited;
  	xCodFormPag := -1;
	//FrmFormPag1.EDCodigo.Text := '';
   //FrmFormPag1.EdDescricao.Text := '';
end;

procedure TFOrcamento3.FrmFormPag1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	if key = #13 then
   begin
       {if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', FrmFormPag1.EDCodigo.Text, '') then
       begin
           xCodFormPag := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
           //FrmFormPag1.EDCodigo.Text := DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
           //FrmFormPag1.EdDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       end else
       begin
       	xCodFormPag := -1;
           //FrmFormPag1.EDCodigo.Text := '';
           //FrmFormPag1.EdDescricao.Text := '';
       end; }
   end;

   if key = #27 then
   begin
     	xCodFormPag := -1;
   	//FrmFormPag1.EDCodigo.Text := '';
   	//FrmFormPag1.EdDescricao.Text := '';
   end;
end;

procedure TFOrcamento3.BtnEscolheProcClick(Sender: TObject);
begin
  inherited;
  	//MEscolheProc.Popup(BtnEscolheProc.Width+BtnEscolheProc.Left+60, 320);
end;

procedure TFOrcamento3.ControleInterno1Click(Sender: TObject);
begin
  inherited;
	{PCodInterno.Visible := True;
   PCodInterno.BringToFront;
   PCodInterno.Enabled := True;
   PCodInterno.SetFocus;}
end;

procedure TFOrcamento3.CdFab1Click(Sender: TObject);
begin
  inherited;
	{PCodFab.Visible := True;
   PCodFab.BringToFront;
   PCodFab.Enabled := True;
   PCodFab.SetFocus; }
end;

procedure TFOrcamento3.C1Click(Sender: TObject);
begin
  inherited;
	{PCodComposto.Visible := True;
   PCodComposto.BringToFront;
   PCodComposto.Enabled := True;
   PCodComposto.SetFocus;}
end;

procedure TFOrcamento3.BtnProcProdClick(Sender: TObject);
begin
  inherited;
	if AbrirForm(TFProduto, FProduto, 1) = 'Selected' then
   begin
       xCodProdTmp := DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsString;

   	EscreveLabels;

       edQuantidade.SetFocus;
   end;
end;

procedure TFOrcamento3.EscreveLabels;
begin
   //Edmar - 26/06/2014 - Filtra buscando dados financeiro do produto
   if not FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', xCodProdTmp, '') then
   	Exit;

	//Edmar - 26/06/2014 - Filtra buscando subproduto pelo codigo que foi selecionado na tela de produto
	if not FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString, '') then
   	Exit;

	EDValUnit.Text := FormatCurr('0.00', DMEstoque.TEstoque.FieldByName('VENDINDV').AsCurrency);

  	LProduto.Caption:=DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;

end;

procedure TFOrcamento3.EDQuantidadeExit(Sender: TObject);
begin
  inherited;
	if EDQuantidade.ValueNumeric <> 0 then
   begin
      CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
      EDTotal.ValueNumeric := AlxCalculo + ((edICMS.ValueNumeric*AlxCalculo)/100);
   end;
end;

procedure TFOrcamento3.BtnInsertProdClick(Sender: TObject);
var
	xQtdeAnt, xQtdeAtu: Integer;
begin
  inherited;
  if EDQuantidade.ValueNumeric <= 0 then
  begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar a quantidade do item.', '', 1, 1, False, 'A');

       EDQuantidade.SetFocus;

       Exit;
  end;

  if EDTotal.ValueNumeric <= 0 then
  begin
		Mensagem('OPÇÃO BLOQUEADA', 'O item não possui valor total. Verifique!', '', 1, 1, False, 'A');

       EDTotal.SetFocus;

       Exit;
  end;
  
  If (DMMACS.TLoja.FieldByName('controlprodlista').AsString = '1') Or (DMMACS.TLoja.FieldByName('controlprodlista').AsString = null) then
  begin
     if FiltraTabela(DMSAIDA.TAlx, 'ITPRODORC', 'COD_ORCAMENTO', IntToStr(xCodPedido), 'AND (COD_ESTOQUE = '+QuotedStr(XCodProdTmp)+')') then
      begin
           If Mensagem('A T E N Ç Ã O !', 'O sistema encontrou o mesmo produto já lançado a lista. com ' + DMSAIDA.TAlx.FieldByName('QTD').AsString + ' qtdes.' + #13 + 'Deseja alterar este produto já lançado?', '', 2, 3, False, 'c') = 2 then
           begin
           	xQtdeAnt := DMSAIDA.TAlx.FieldByName('QTD').AsInteger;
               xQtdeAtu := EDQuantidade.ValueInteger;
               xCodProdTmp := DMSAIDA.TAlx.FieldByName('COD_ESTOQUE').AsString;

               BtnDeleteProdClick(sender);

               EDQuantidade.ValueNumeric := xQtdeAnt + xQtdeAtu;
               
               FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', xCodProdTmp ,'');
               EscreveLabels;

               EDQuantidadeExit(Sender);
               EDDesc.SetFocus;

               Exit;
           end;
      end;  
  end;

  FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString, '');

  xCodItProdOrc := InserReg(DMSAIDA.TItProdOrc, 'ITPRODORC', 'COD_ITPRODORC');
  DMSAIDA.TItProdOrc.FieldByName('COD_ITPRODORC').AsInteger := xCodItProdOrc;
  DMSAIDA.TItProdOrc.FieldByName('COD_ORCAMENTO').AsInteger := xCodPedido;
  DMSAIDA.TItProdOrc.FieldByName('COD_ESTOQUE').AsInteger := StrToInt(xCodProdTmp);
  DMSAIDA.TItProdOrc.FieldByName('QTD').AsInteger := EDQuantidade.ValueInteger;
  DMSAIDA.TItProdOrc.FieldByName('DESCONTO').AsCurrency := EDDesc.ValueNumeric;
  DMSAIDA.TItProdOrc.FieldByName('VLRUNIT').AsCurrency := EDValUnit.ValueNumeric;
  DMSAIDA.TItProdOrc.FieldByName('VLRTOTAL').AsCurrency := EDTotal.ValueNumeric;
  DMSAIDA.TItProdOrc.FieldByName('VLRICMSSUBS').AsCurrency := edICMS.ValueNumeric;
  DMSAIDA.TItProdOrc.FieldByName('VALCUSTO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
  DMSAIDA.TItProdOrc.FieldByName('VALREP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
  DMSAIDA.TItProdOrc.FieldByName('COEFDIV').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
  DMSAIDA.TItProdOrc.FieldByName('VALCOMP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('vlrunitcomp').AsCurrency*EDQuantidade.ValueNumeric;
  DMSAIDA.TItProdOrc.FieldByName('COD_CST').AsString := DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString;

  If DMSAIDA.TItProdOrc.FieldByName('COEFDIV').AsCurrency <> 0 Then
       DMSAIDA.TItProdOrc.FieldByName('LUCMOE').AsCurrency:=(DMSAIDA.TItProdOrc.FieldByName('VALREP').AsCurrency/DMSAIDA.TItProdOrc.FieldByName('COEFDIV').AsCurrency)*EDQuantidade.ValueNumeric
  Else
       DMSAIDA.TItProdOrc.FieldByName('LUCMOE').AsCurrency:=0;

  DMSAIDA.TItProdOrc.FieldByName('LUCREL').AsCurrency:=ALXLUCREAL;
  DMSAIDA.TItProdOrc.FieldByName('LUCPER').AsCurrency:=(DMSAIDA.TItProdOrc.FieldByName('LUCMOE').AsCurrency*100)/DMSAIDA.TItProdOrc.FieldByName('VLRTOTAL').AsCurrency;

  try
   DMSAIDA.TItProdOrc.Post;
   DMSAIDA.IBT.CommitRetaining
  except
   DMSAIDA.IBT.RollbackRetaining;
  end;


  LimpaLabels;
  edPesquisaAgil.SetFocus;
  FiltraSlave;
end;

procedure TFOrcamento3.FiltraSlave;
var
	xValorTotalUnitario: Real;
begin
	try
      FiltraTabela(DMESTOQUE.TSlave, 'ITPRODORC', 'COD_ORCAMENTO', IntToStr(xCodPedido), '');
       
       //Verifica as variáveis de uf
       if InicializaVarUF(xCodPedido, 'ORC') = false then
          // Exit;
       //VerificaTipoCliente(xCod_Pessoa);
       //atualiza csosn de acord com o necessário
       //AtualizaCstCsosn(xCodPedido, 'ORC');
       DMSAIDA.IBT.CommitRetaining;
       DMSAIDA.TItProdOrc.Close;
       DMSAIDA.TItProdOrc.SQL.Clear;
       DMSAIDA.TItProdOrc.SQL.Add(' select * from itprodorc  ');
       DMSAIDA.TItProdOrc.SQL.Add(' left join cst ON itprodorc.cod_cst = cst.cod_cst WHERE itprodorc.cod_orcamento = :codigo ');
       DMSAIDA.TItProdOrc.ParamByName('codigo').AsInteger := XCodPedido;
       DMSAIDA.TItProdOrc.Open;
       DMSAIDA.TItProdOrc.First;
       While not DMSAIDA.TItProdOrc.eof do
       Begin
           DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
			     DMSAIDA.TAlx.SQL.Add(' select * from cst WHERE cst.cod_cst=:codigo ');
           DMSAIDA.TAlx.ParamByName('codigo').AsString := DMSAIDA.TItProdOrc.FieldByName('COD_CST').AsString;
           DMSAIDA.TAlx.Open;
           If DMSAIDA.TAlx.FieldByName('SUBSTITUICAO').AsString = '1' Then
               CalculoIcmsSubstituicaoIndustriasSimples(DMSAIDA.TItProdOrc, 'ORC');//Se empresa marcada como indutria chama o calculo de st para somar ao total do pedido
           DMSAIDA.TItProdOrc.Next;
       End;
       DMSAIDA.IBT.CommitRetaining;         

       xValorTotalUnitario := 0;
       while not DMESTOQUE.TSlave.Eof do
       begin
       	xValorTotalUnitario := xValorTotalUnitario + (DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency * DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency);

           DMESTOQUE.TSlave.Next; 
       end;

       DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add('SELECT SUM(ITPRODORC.VLRICMSSUBS) VLRICMS, SUM(ITPRODORC.BASEICMSSUBS) BASEICMS FROM ITPRODORC WHERE ITPRODORC.COD_ORCAMENTO = :ORC');
       DMESTOQUE.TSlave.ParamByName('ORC').AsInteger := xCodPedido;
       DMESTOQUE.TSlave.Open;

       edIcmsSt.ValueNumeric := DMESTOQUE.TSlave.FieldByName('VLRICMS').AsCurrency;

   	   //Edmar - 26/06/2014 - Calcula o valor total do orçamento
       DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add('SELECT SUM(ITPRODORC.VLRTOTAL) TOTAL FROM ITPRODORC');
       DMESTOQUE.TSlave.SQL.Add('WHERE ITPRODORC.COD_ORCAMENTO = :ORC');
       DMESTOQUE.TSlave.ParamByName('ORC').AsInteger := xCodPedido;
       DMESTOQUE.TSlave.Open;

       EdValorPed.ValueNumeric := DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency;

       //Edmar - 26/06/2014 - Calcula os totais de produtos
       DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add('SELECT Sum(ITPRODORC.qtd) as QTD, count(ITPRODORC.qtd) as QTDITEM FROM ITPRODORC');
       DMESTOQUE.TSlave.SQL.Add('WHERE ITPRODORC.COD_ORCAMENTO = :ORC');
       DMESTOQUE.TSlave.ParamByName('ORC').AsInteger := xCodPedido;
       DMESTOQUE.TSlave.Open;

       if DMESTOQUE.TSlave.FieldByName('QTD').AsString = '' then
       	LTotaisQtde.Caption := 'Qtd L: 0    Qtd T: 0'
       else
       	LTotaisQtde.Caption := 'Qtd L: '+DMESTOQUE.TSlave.FieldByName('QTDITEM').AsString+'    Qtd T: '+DMESTOQUE.TSlave.FieldByName('QTD').AsString;       

   	  //Edmar - 26/06/2014 - Filtra buscando os itens do orçamento
     	DMESTOQUE.TSlave.Close;
     	DMESTOQUE.TSlave.SQL.Clear;
     	DMESTOQUE.TSlave.SQL.Add('select itprodorc.cod_itprodorc, itprodorc.cod_estoque, subproduto.cod_subproduto, subproduto.contrint, itprodorc.qtd, itprodorc.vlrunit, itprodorc.desconto, ');
     	DMESTOQUE.TSlave.SQL.Add('itprodorc.vlrtotal TOTAL, subproduto.codprodfabr, subproduto.descricao, subproduto.marca from itprodorc ');
     	DMESTOQUE.TSlave.SQL.Add('left join estoque on estoque.cod_estoque =  itprodorc.cod_estoque ');
     	DMESTOQUE.TSlave.SQL.Add('left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
    	DMESTOQUE.TSlave.SQL.Add('where itprodorc.cod_orcamento = :orc ');
     	DMESTOQUE.TSlave.ParamByName('ORC').AsInteger := xCodPedido;
     	DMESTOQUE.TSlave.Open;

       CalcPercent(0, (xValorTotalUnitario - (EdValorPed.ValueNumeric - edIcmsSt.ValueNumeric)), xValorTotalUnitario, 'D');


		DbgProduto.DataSource := DMESTOQUE.DSSlave;
   except
     	On E : Exception do
     		ShowMessage('Ocorreu um problema ao filtra a Slave: '+E.Message);
   end;
end;

procedure TFOrcamento3.LimpaLabels;
begin
	 LProduto.Caption := '';
   edICMS.Text := '0,00';
   EDQuantidade.Text := '0,00';
   EDDesc.Text := '0,00';
   EDValUnit.Text := '0,00';
   EDTotal.Text := '0,00'
end;

procedure TFOrcamento3.BtnDeleteProdClick(Sender: TObject);
begin
  inherited;
  	xCodProdTmp := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString;
   DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add('DELETE FROM ITPRODORC WHERE ITPRODORC.COD_ITPRODORC = :COD');
   DMSAIDA.TAlx.ParamByName('COD').AsString := DMESTOQUE.TSlave.FieldByName('COD_ITPRODORC').AsString;

   try
   	   DMSAIDA.TAlx.ExecSQL;
       DMSAIDA.IBT.CommitRetaining;
   except
   	on e : Exception do
       begin
       	showMessage('Ocorreu um problema ao tentar remover o item: '+e.Message);
           DMSAIDA.IBT.RollbackRetaining;
       end;
   end;

   EscreveLabels;

   EDQuantidade.Text := FormatFloat('##0.00', DMESTOQUE.TSlave.FieldByName('QTD').AsCurrency);
   EDTotal.Text := FormatFloat('####0.00', DMESTOQUE.TSlave.FieldByName('TOTAL').AsCurrency);
	 EDDesc.Text := FormatFloat('####0.00', DMESTOQUE.TSlave.FieldByName('DESCONTO').AsCurrency);
   EDValUnit.Text := FormatFloat('####0.00', DMESTOQUE.TSlave.FieldByName('VLRUNIT').AsCurrency);
   
   FiltraSlave;
end;

//procedure utilizada para liberar todos os dados ordenando pelo campo passado
procedure TFOrcamento3.LiberaDadosOrc(Ordenacao: String);
begin
   DMSAIDA.TOrc.Close;
   DMSAIDA.TOrc.SQL.Clear;
   DMSAIDA.TOrc.SQL.Add(' Select * from ORCAMENTO  ORDER BY '+Ordenacao + ' DESC');
   DMSAIDA.TOrc.Open;
   DBGridCadastroPadrao.DataSource:=DMSAIDA.DOrc;
End;
procedure TFOrcamento3.BtnGravarClick(Sender: TObject);
begin
	if Nome.Text = '' then
   begin
		Mensagem('OPÇÃO BLOQUEADA', 'Informe o cliente do orçamento.', '', 1, 1, False, 'a');
      Exit;
   end;

   GravaOrcamento;

   LimpaLabels;
   LiberaDadosOrc('NUMORC');
   LimpaCamposOrcamento;
  inherited;
end;

function TFOrcamento3.GravaOrcamento: Boolean;
begin
	try
       DMSAIDA.TOrc.Edit;

       DMSAIDA.TOrc.FieldByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
       DMSAIDA.TOrc.FieldByName('VENDEDOR').AsString := edVendedor.Text;
       DMSAIDA.TOrc.FieldByName('FORMAPAGAMENTO').AsString := edFormaPagamento.Text;
       DMSAIDA.TOrc.FieldByName('COD_LOJA').AsInteger := StrToInt(FMenu.LCODLOJA.Caption);
       //DMSAIDA.TOrc.FieldByName('COD_CLIENTE').AsInteger := xCodCliente;
       DMSAIDA.TOrc.FieldByName('NOMECLI').AsString := Nome.Text;
       DMSAIDA.TOrc.FieldByName('CIDADE').AsString := EdCidade.Text;
       DMSAIDA.TOrc.FieldByName('TELEFONE').AsString := EdTelefone.Text;

       if edDtAbertura.Text = '' then
		 	    edDtAbertura.Text := '01/01/1980';
           
       DMSAIDA.TOrc.FieldByName('DTABERT').AsDateTime := StrToDate(edDtAbertura.Text);
       DMSAIDA.TOrc.FieldByName('HRABERT').AsString := edHrAbertura.Text;

       //Edmar - 27/06/2014 - Se não foi informado data de validade
       if edDtValidade.Text = '  /  /    ' then
       	edDtValidade.Text := '01/01/1980';//Edmar - 27/06/2014 - Atribui data padrão

       DMSAIDA.TOrc.FieldByName('DTVALIDADE').AsDateTime := StrToDate(edDtValidade.Text);
       DMSAIDA.TOrc.FieldByName('OBS').AsString := OBSmemo.Text;
       DMSAIDA.TOrc.FieldByName('VLRPROD').AsCurrency := StrToCurr(TiraPonto(edValorPed.Text));
       DMSAIDA.TOrc.FieldByName('VLRTOTAL').AsCurrency := StrToCurr(TiraPonto(EdValorPed.Text));
       DMSAIDA.TOrc.FieldByName('DESCRICAO').AsString := EdDescricao.Text;
       DMSAIDA.TOrc.FieldByName('PRAZO_DESPACHO').AsString := edPrazoDespacho.Text;
       DMSAIDA.TOrc.FieldByName('MODO_PAGAMENTO').AsString := edModoPagamento.Text;
       DMSAIDA.TOrc.FieldByName('GARANTIA').AsString := cbGarantia.Text;

       if rbFob.Checked then
       	DMSAIDA.TOrc.FieldByName('FRETE').AsString := 'FOB'
       else
        if rbCif.Checked then
           	DMSAIDA.TOrc.FieldByName('FRETE').AsString := 'CIF';

       DMSAIDA.TOrc.FieldByName('SOLICITANTE').AsString := edSolicitante.Text;
       DMSAIDA.TOrc.FieldByName('EMAIL_SOLICITANTE').AsString := edEmail.Text;
       DMSAIDA.TOrc.FieldByName('AREA_SOLICITANTE').AsString := edArea.Text;
       DMSAIDA.TOrc.FieldByName('ICMS_ST').AsCurrency := edIcmsSt.ValueNumeric; //StrToCurr(edIcmsSt.Text);
       DMSAIDA.TOrc.FieldByName('CARACTERISTICA_PRODUTO01').AsString := edDescProduto01.Text;
       DMSAIDA.TOrc.FieldByName('CARACTERISTICA_PRODUTO02').AsString := edDescProduto02.Text;

       DMSAIDA.TOrc.Post;
       DMSAIDA.IBT.CommitRetaining;

       Result := True;
   except
   	on e : Exception do
       begin
       	showMessage('Ocorreu um problema ao salvar o orçamento: '+e.Message);
   		DMSAIDA.IBT.RollbackRetaining;
       	Result := False;
       end;
   end;
end;

procedure TFOrcamento3.BtnCancelarClick(Sender: TObject);
begin
  	//Edmar - 27/06/2014 - Se estiver vazio pede confirmação para exclusão
	if (DMESTOQUE.TSlave.IsEmpty) then
   begin
       If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja apagar o orçamento?', '', 2, 3, False, 'c') = 2 then
       begin
           DMSAIDA.TOrc.Delete;
           DMSAIDA.IBT.CommitRetaining;
       end;
   end;
   
   LimpaCamposOrcamento;
	 LiberaDadosOrc('NUMORC');
   LimpaLabels;
  inherited;
end;

procedure TFOrcamento3.BtnApagarClick(Sender: TObject);
begin
	if FiltraTabela(DMSAIDA.TOrc, 'ORCAMENTO', 'COD_ORCAMENTO', DMSAIDA.TOrc.FieldByName('COD_ORCAMENTO').AsString, '') then
   begin
       If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar o orçamento Nª'+DMSAIDA.TOrc.FieldByName('NUMORC').AsString+'?', '', 2, 3, False, 'c') = 2 then
           DMSAIDA.TOrc.Delete;
   end;
   LiberaDadosOrc('NUMORC');
end;

procedure TFOrcamento3.FormActivate(Sender: TObject);
begin
  inherited;
  Caption:='Orçamento' ;  
  xRemove := False;
  If DMMACS.TEmpresa.FieldByName('INDUSTRIA').AsString = '1' Then
  		XEmpresaInustria:=True
  Else
   	XEmpresaInustria:=False;
  	XTab := False;
    XSQLTABELA := 'ORCAMENTO';
	  XTabela := DMSAIDA.TOrc;

   If (DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '1') then
   begin
      pPesquisaAgil.Visible := True;
      pPesquisaAgil.BringToFront;
      pPesquisaAgil.Enabled := True;
   end;

   If FileExists('C:\MZR\Arquivos\LayoutGrid\orcamento3.lgm')
   Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\orcamento3.lgm');
   DMSAIDA.TOrc.Close;
   DMSAIDA.TOrc.SQL.Clear;
   DMSAIDA.TOrc.SQL.Add('Select * from ORCAMENTO  ORDER BY NUMORC DESC');
   DMSAIDA.TOrc.Open;
   DBGridCadastroPadrao.DataSource:=DMSAIDA.DOrc;
end;

procedure TFOrcamento3.BtnConsultarClick(Sender: TObject);
begin
	try
   	//Edmar - 15/07/2014 - Se não tiver registro selecionado para execução
       if DMSAIDA.TOrc.RecordCount = 0 then
       	Exit;

       If FiltraTabela(XTabela, 'ORCAMENTO', 'COD_ORCAMENTO', DMSAIDA.TOrc.FieldByName('COD_ORCAMENTO').AsString, '')=False Then
       	Exit;//Caso não encontrar cancelar


       Nome.Text := XTabela.FieldByName('NOMECLI').AsString;
       EdTelefone.Text := XTabela.FieldByName('TELEFONE').AsString;
       EdCidade.Text := XTabela.FieldByName('CIDADE').AsString;
       EdDescricao.Text := XTabela.FieldByName('DESCRICAO').AsString;

       edVendedor.Text := XTabela.FieldByName('VENDEDOR').AsString;
       edFormaPagamento.Text := XTabela.FieldByName('FORMAPAGAMENTO').AsString;
       OBSmemo.Text := XTabela.FieldByName('OBS').AsString;

       xAtacadista := False;
       xIndustria := False;


       ConsultaOrcamento;
       //Edmar - 15/05/2014 - Seta a aba de produtos como padrão
	    PageControl1.ActivePage := TabSheet1;

       FiltraSlave;
   except
   	on e : Exception do
   		Mensagem('INFORMAÇÃO', 'Ocorreu um problema ao consultar o orçamento '+e.Message, '', 1, 1, False, 'I');
   end;

   PCadastro.Visible := True;
   PCadastro.BringToFront;
   PConsulta.Visible := False;
   PConsulta.SendToBack;
end;

function TFOrcamento3.ConsultaOrcamento: Boolean;
begin
	try
       //Edmar - 27/06/2014 - Retorna os valores aos campos correspondente

       nome.Text := XTabela.FieldByName('NOMECLI').AsString;
       EdTelefone.Text := XTabela.FieldByName('TELEFONE').AsString;
       EdCidade.Text := XTabela.FieldByName('CIDADE').AsString;
       edVendedor.Text := XTabela.FieldByName('VENDEDOR').AsString;
       edFormaPagamento.Text := XTabela.FieldByName('FORMAPAGAMENTO').AsString;
       edDtAbertura.Text := XTabela.FieldByName('DTABERT').AsString;
       edHrAbertura.Text := XTabela.FieldByName('HRABERT').AsString;
       edDtValidade.Text := XTabela.FieldByName('DTVALIDADE').AsString;
       DBNumPed.Text := XTabela.FieldByName('NUMORC').AsString;
       OBSmemo.Text := XTabela.FieldByName('OBS').AsString;
       EdValorPed.Text := FormatFloat('##,##0.00', XTabela.FieldByName('VLRTOTAL').AsCurrency);
       EdDescricao.Text := XTabela.FieldByName('DESCRICAO').AsString;
       edPrazoDespacho.Text := XTabela.FieldByName('PRAZO_DESPACHO').AsString;
       edModoPagamento.Text := XTabela.FieldByName('MODO_PAGAMENTO').AsString;
       cbGarantia.Text := XTabela.FieldByName('GARANTIA').AsString;
       if DMSAIDA.TOrc.FieldByName('FRETE').AsString = 'FOB' then
           rbFob.Checked := True
       else
           rbCif.Checked := True;
       edSolicitante.Text := XTabela.FieldByName('SOLICITANTE').AsString;
       edEmail.Text := XTabela.FieldByName('EMAIL_SOLICITANTE').AsString;
       edArea.Text := XTabela.FieldByName('AREA_SOLICITANTE').AsString;
       edIcmsSt.Text := FormatFloat('##,##0.00', XTabela.FieldByName('ICMS_ST').AsCurrency);
       edDescProduto01.Text := XTabela.FieldByName('CARACTERISTICA_PRODUTO01').AsString;
       edDescProduto02.Text := XTabela.FieldByName('CARACTERISTICA_PRODUTO02').AsString;

       xCodPedido := XTabela.FieldByName('COD_ORCAMENTO').AsInteger;

       Result := True;
   except
   	on e : Exception do//Edmar - 27/06/2014 - Joga a excessão que ocorreu
	       Raise Exception.Create('[684] - '+e.Message);
   end;
end;

procedure TFOrcamento3.LimpaCamposOrcamento;
begin
   edDtValidade.Text := '  /  /    ';
   DBNumPed.Text := '';
   OBSmemo.Text := '';
   EdValorPed.Text := '0,00';
   EdDescricao.Text := '';
   edPrazoDespacho.Text := '';
   edModoPagamento.Text := '';
   cbGarantia.Text := '';
  	rbFob.Checked := True;
   edSolicitante.Text := '';
   edEmail.Text := '';
   edArea.Text := '';
   edIcmsSt.Text := '0,00';
   Nome.Text := '';
   EdTelefone.Text := '';
   EdCidade.Text := '';
   edVendedor.Text := '';
   edFormaPagamento.Text := '';
   EdDtAbertura.Text := '  /  /    ';
   OBSmemo.Text := '';

   //Edmar - 27/06/2014 - Filtra buscando por -1 para limpar campo de cliente
   FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', '-1', '');

   xCodPedido := -1;
end;

procedure TFOrcamento3.CompOramento1Click(Sender: TObject);
begin
  inherited;
  //Edmar - 27/06/2014 - Filtra dados do orçamento
  DMESTOQUE.TRel.Close;
  DMESTOQUE.TRel.SQL.Clear;
  DMESTOQUE.TRel.SQL.Add('select subproduto.descricao, itprodorc.qtd,  orcamento.nomecli as nome, orcamento.telefone as telefone, orcamento.cidade as cidade, orcamento.formapagamento as descricaoformpag,subproduto.ncm,');
  DMESTOQUE.TRel.SQL.Add('orcamento.caracteristica_produto01, orcamento.caracteristica_produto02, itprodorc.vlrunit, itprodorc.vlrtotal, subproduto.codprodfabr, orcamento.dtabert,orcamento.cod_cliente,');
  DMESTOQUE.TRel.SQL.Add('orcamento.numorc,orcamento.vlrtotal as vlrtotalorc,  orcamento.icms_st, orcamento.vendedor as vendedor, orcamento.prazo_despacho, orcamento.frete, orcamento.garantia, orcamento.modo_pagamento,');
  DMESTOQUE.TRel.SQL.Add(' orcamento.solicitante, orcamento.area_solicitante, orcamento.email_solicitante, itprodorc.VLRICMSSUBS, itprodorc.DESCONTO ');
  DMESTOQUE.TRel.SQL.Add(' from orcamento ');
  DMESTOQUE.TRel.SQL.Add('left join  itprodorc on orcamento.cod_orcamento = itprodorc.cod_orcamento ');
  DMESTOQUE.TRel.SQL.Add('left join estoque on estoque.cod_estoque = itprodorc.cod_estoque ');
  DMESTOQUE.TRel.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
  DMESTOQUE.TRel.SQL.Add('WHERE ORCAMENTO.COD_ORCAMENTO= :XORC');
  DMESTOQUE.TRel.ParamByName('XORC').AsInteger := DMSAIDA.TOrc.FieldByName('COD_ORCAMENTO').AsInteger;
  DMESTOQUE.TRel.Open;

  //Edmar - 27/06/2014 - Filtra cliente
  DMESTOQUE.Alx.Close;
  DMESTOQUE.Alx.SQL.Clear;
  DMESTOQUE.Alx.SQL.Add('select * from vwcliente');
  DMESTOQUE.Alx.SQL.Add('WHERE VWCLIENTE.COD_CLIENTE= :XCORC');
  DMESTOQUE.Alx.ParamByName('XCORC').AsString:= DMESTOQUE.TRel.FieldByName('cod_cliente').AsString;
  DMESTOQUE.Alx.Open;

  FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
  frxOrcamento.DataSet:=DMESTOQUE.TRel;
  frxOrcCliente.DataSet:=DMESTOQUE.Alx;
  frxOrcFunc.DataSet:=DMESTOQUE.TRel;
  FrxORCCIDADE.DataSet:=DMGEOGRAFIA.WCidade;
  FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');
  frxORCEMPRESA.DataSet:=DMMACS.TEMPRESA;
  frxORCLOJA.DataSet:=DMMACS.TLOJA;

  frxRelOrcamento.LoadFromFile('C:\MZR\Macs\Rel\FrfOrcamento10.fr3');
  frxRelOrcamento.ShowReport();
  ExecRun('Aguarde!');
  {Try
  		DesconectBanco;
  Except
  End;}
  Try
  		ConexaoBaseDados;
  Except
  End;

   Try
       Activate;
       //FiltraOrcamento;
   Except
   End;
   PComunica.Visible:=False;
end;

procedure TFOrcamento3.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
	PopupRelatorio.Popup(Left+PConsulta.left+Painel.left+ BtnRelatorio.Left, top+PConsulta.Top+Painel.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;

procedure TFOrcamento3.EDCodBarraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    {if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', EdCodBarra.Text, '') then
    	EscreveLabels
    else
    begin
    	LimpaLabels;
    	LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
    end; }
  end;

  if key = #27 then
  begin
  	//edCodBarra.Text := '';
   LimpaLabels;
  end;
end;

procedure TFOrcamento3.EDCodInternoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  {if key = #13 then
  begin
    if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', EDCodInterno.Text, '') then
    	EscreveLabels
    else
    begin
    	LimpaLabels;
    	LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
    end;
  end;

  if key = #27 then
  begin
  	EdCodInterno.Text := '';
   LimpaLabels;
  end; }
end;

procedure TFOrcamento3.EDCodFabKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    {if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', EDCodFab.Text, '') then
    	EscreveLabels
    else
    begin
    	LimpaLabels;
    	LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
    end;  }
  end;

  if key = #27 then
  begin
  	//EDCodFab.Text := '';
   LimpaLabels;
  end;
end;

procedure TFOrcamento3.EDCodCompostoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  {if key = #13 then
  begin
    if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODCOMPOSTO', EDCodComposto.Text, '') then
    	EscreveLabels
    else
    begin
    	LimpaLabels;
    	LProduto.Caption := 'PRODUTO NÃO ENCONTRADO';
    end;
  end;

  if key = #27 then
  begin
  	EDCodComposto.Text := '';
   LimpaLabels;
  end; }
end;

procedure TFOrcamento3.edPesquisaAgilEnter(Sender: TObject);
begin
	FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', '(ATIVO = ''S'') ORDER BY DESCRICAO');
end;

procedure TFOrcamento3.edPesquisaAgilKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
	xPesqDescricao, xPesqCtrlInt, xPesqCodFab: Boolean;
begin
	if Key <> VK_F2 then
   begin
	    pGridProdutos.Visible := True;
   	pGridProdutos.BringToFront;
   end;

   if Key = VK_UP then
		Exit;

   if Key = VK_DOWN then
		Exit;


   //Edmar - 27/06/2014 - Apertando ESC filtra o similar e esconde o painel
   If Key = VK_ESCAPE
   Then Begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ');
      DMESTOQUE.WSimilar.Open;

      LimpaLabels;

      pGridProdutos.Visible := False;
      pGridProdutos.SendToBack;
      edPesquisaAgil.Text := '';
      lPesquisa.Caption := 'Pesquisa:';

      Exit;
   End;

   //Edmar - 27/06/2014 - Se o campo estiver vazio esconde o painel e atualiza a label
   {If edPesquisaAgil.Text = '' then
   begin
       pPesquisa.Visible := False;
       pPesquisa.SendToBack;
       lPesquisa.Caption := 'Pesquisa:';

       Exit;
   end; }

   //Edmar - 27/06/2014 - Apertando ENTER filtra similar com o código que foi buscado
   If Key = Vk_Return then
   begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
      DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := xCodProdTmp;
      DMESTOQUE.WSimilar.Open;

      If Not DMESTOQUE.WSimilar.IsEmpty then
  	   begin
      		EscreveLabels;
      	   	pGridProdutos.Visible := False;
           pGridProdutos.SendToBack;
      		edPesquisaAgil.Text := '';
      		EDQuantidade.Text := '1,00';
           EDDesc.Text := '0,00';
           EDTotal.Text := '0,00';
      end
      else
      		MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);

      edPesquisaAgilEnter(sender);
      Exit;
   End;

   //Edmar - 27/06/2014 - Busca pela descrição
	if DMESTOQUE.WSimilar.Locate('DESCRICAO', edPesquisaAgil.Text, [loCaseInsensitive, loPartialKey]) then
   begin
       if not xPesqDescricao then
       begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY DESCRICAO');
           DMESTOQUE.WSimilar.Open;

           xPesqDescricao := True;
           xPesqCtrlInt := False;
           xPesqCodFab := False;

			DMESTOQUE.WSimilar.Locate('DESCRICAO', edPesquisaAgil.Text, [loCaseInsensitive, loPartialKey]);
       end;

   	lPesquisa.Caption := 'Descrição:';
		xCodProdTmp := DbGridProdutos.Columns[0].Field.Text;

       Exit;
   end;

   //Edmar - 27/06/2014 - Busca pelo codigo interno
   if DMESTOQUE.WSimilar.Locate('CONTRINT', edPesquisaAgil.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if not xPesqCtrlInt then
       begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY CONTRINT');
           DMESTOQUE.WSimilar.Open;

           xPesqCtrlInt := True;
           xPesqDescricao := False;
           xPesqCodFab := False;

			DMESTOQUE.WSimilar.Locate('CONTRINT', edPesquisaAgil.Text, [loCaseInsensitive, loPartialKey]);
       end;

       lPesquisa.Caption := 'Ctrl. Interno:';
       xCodProdTmp := DbGridProdutos.Columns[0].Field.Text;

       Exit;
   end;

   //Edmar - 27/06/2014 - Busca pelo código do fabricante
   if DMESTOQUE.WSimilar.Locate('CODFABRICANTE', edPesquisaAgil.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	if not xPesqCodFab then
       begin
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO =' + #39 + 'S' + #39 + ') ORDER BY CODFABRICANTE');
           DMESTOQUE.WSimilar.Open;

           xPesqCodFab := True;
           xPesqDescricao := False;
           xPesqCtrlInt := False;

			DMESTOQUE.WSimilar.Locate('CODFABRICANTE', edPesquisaAgil.Text, [loCaseInsensitive, loPartialKey]);
       end;

       lPesquisa.Caption := 'Cod. Fabricante:';
       xCodProdTmp := DbGridProdutos.Columns[0].Field.Text;

       Exit;
   end;

	xCodProdTmp := DbGridProdutos.Columns[0].Field.Text;
   lPesquisa.Caption := 'Fora de Pesquisa';
end;

{procedure TFOrcamento3.edPesquisaAgilKeyDown(Sender: TObject);
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = Vk_Down then
  begin
      DMESTOQUE.WSimilar.Next;

      //xCodProdTmp := DbGridProdutos.Columns[0].Field.Text;
  end;


  If Key = Vk_UP then
  begin
      DMESTOQUE.WSimilar.Prior;

      //xCodProdTmp := DbGridProdutos.Columns[0].Field.Text;
  end;
end; }

{procedure TFOrcamento3.EDDescExit(Sender: TObject);
begin
  inherited;
	if (edQuantidade.ValueNumeric > 0) AND (edValUnit.ValueNumeric > 0) then
   begin//Edmar - 27/06/2014 - Faz o calculo do desconto do orçamento
		CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric*EDValUnit.ValueNumeric), 'D');
	    EDTotal.ValueNumeric:=AlxCalculo;
   end;
end;} 

procedure TFOrcamento3.FiltraOrcamento;
begin
	//Edmar - 27/06/2014 - Busca pelo nome do cliente ou pela descrição do orçamento
	{DMSAIDA.TOrc.Close;
   DMSAIDA.TOrc.SQL.Clear;
   DMSAIDA.TOrc.SQL.Add('SELECT * FROM ORCAMENTO WHERE (UPPER(ORCAMENTO.NOMECLI) LIKE UPPER(:termo)) OR');
   DMSAIDA.TOrc.SQL.Add('(UPPER(ORCAMENTO.DESCRICAO) LIKE UPPER(:termo))');
   DMSAIDA.TOrc.ParamByName('termo').AsString := ''+EdNome.Text+'%';
   DMSAIDA.TOrc.Open;}

   LiberaDadosOrc('NOMECLI');
end;

procedure TFOrcamento3.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  inherited;
 {if (Msg.Message = WM_KEYDOWN) AND (Msg.wParam = VK_TAB) then
  begin
	pGridProdutos.Visible := False;
   pGridProdutos.SendToBack;
  end; }
end;

procedure TFOrcamento3.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
       	FiltraTabela(DMSAIDA.TOrc , 'ORCAMENTO', 'NOMECLI', '',   '(upper(NOMECLI) like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY NOMECLI');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           DMSAIDA.TOrc.Close;
           DMSAIDA.TOrc.SQL.Clear;
           DMSAIDA.TOrc.SQL.Add('Select * from ORCAMENTO  ORDER BY NOMECLI');
           DMSAIDA.TOrc.Open;
       End;
   Except
   End;
end;  

{procedure TFOrcamento3.DbGridProdutosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  	if Key = VK_RETURN then
   begin
		edPesquisaAgilKeyUp(Sender, Key, Shift);

       EdQuantidade.SetFocus;
   end;
end;

{procedure TFOrcamento3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//Edmar - 01/07/2014 - Tira o inherited para não usar o key down do cadpadrão
//caso seja usado, um erro de memoria irá aparecer

	//Edmar - 01/07/2014 - Novo
	if Key = VK_F4 then
   	btnNovoClick(sender);

	//Edmar - 01/07/2014 - Apagar
   if key = VK_F8 then
   	btnApagarClick(sender);

	//Edmar - 01/07/2014 - Consultar
   if Key = VK_F6 then
   	btnConsultarClick(sender);

	//Edmar - 01/07/2014 - Gravar
   if Key = VK_F5 then
   	btnGravarClick(sender);

	//Edmar - 01/07/2014 - Cancelar
   if Key = VK_F7 then
   	btnCancelarClick(sender);
end;

{procedure TFOrcamento3.EDTotalExit(Sender: TObject);
begin
  inherited;
    CalcPercent(0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric) - EDTotal.ValueNumeric, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
    EDDesc.ValueNumeric := AlxPercento;
end;   }

{function TFOrcamento3.InicializaVarUF: Boolean;
Var XUf: String;
begin
    Result := True;
    Try
    	 Result:=True;
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

    	 //UF PARA DESTINO, CLIENTE OU FORNECEDOR
        DMPESSOA.TALX1.Close;
        DMPESSOA.TALX1.SQL.Clear; 
        DMPESSOA.TALX1.SQL.Add(' Select vwcidade.uf, estado.mva,  Estado.cod_cstinterestadual, estado.MVAFORASIMPLES, estado.COD_CSTINTERESTADUAL as CST, cliente.consumidor, cliente.cod_cliente, ');
        DMPESSOA.TALX1.SQL.Add(' estado.CST_INTERNA, ESTADO.CST_EXTERNA, ESTADO.TXT_SUBSTITUICAO, ESTADO.ALIQINTERNA, ESTADO.aliqinterestaual, ESTADO.isentost, cliente.simplesnacional ');
        DMPESSOA.TALX1.SQL.Add(' from vwcliente ');
        DMPESSOA.TALX1.SQL.Add(' left join orcamento on orcamento.cod_cliente = vwcliente.cod_cliente ');
        DMPESSOA.TALX1.SQL.Add(' left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade ');
        DMPESSOA.TALX1.SQL.Add(' left join cliente on vwcliente.cod_cliente = cliente.cod_cliente ');
        DMPESSOA.TALX1.SQL.Add(' left join estado on vwcidade.cod_estado = estado.cod_estado ');
        DMPESSOA.TALX1.SQL.Add(' where orcamento.cod_orcamento = :codigo ');

        DMPESSOA.TALX1.ParamByName('codigo').AsInteger := XCodPedido;
        DMPESSOA.TALX1.SQL.Text;
        DMPESSOA.TALX1.Open;

        //xCodPessoa := DMPESSOA.TALX1.FieldByName('COD_CLIENTE').AsInteger;
        xCodPessoa := xCodCliente;

        //Pauulo 26/10/2010: Verifica se o estado é isento st
        If DMPESSOA.TALX1.FieldByName('isentost').AsString = '1' Then
            XEstadoIsentoST := true
        Else
            XEstadoIsentoST := false;

        If DMPESSOA.TALX1.FieldByName('consumidor').AsString = 'S' Then
           XClienteConsumidorFinal:=True
        Else
           XClienteConsumidorFinal:=False;

        XUf := DMPESSOA.TALX1.FieldByName('UF').AsString;
        If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') Then
        Begin
            XUf := XUfOrigem;
        End;
        If DMPESSOA.TALX1.IsEmpty Then
            Result := False;
        If XUf <> ''
        Then Begin
            Result := True;
            XUfDestino := DMPESSOA.TALX1.FieldByName('UF').AsString;
            If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF') Then
            Begin
                XUfDestino := XUf;
            End;

            If XClientedoSimples=True Then
            	XMvaEstado := DMPESSOA.TALX1.FieldByName('MVA').AsCurrency
            Else
            	XMvaEstado := DMPESSOA.TALX1.FieldByName('MVAFORASIMPLES').AsCurrency;

            XAliqIcms := DMMACS.TEmpresa.FieldByName('IMPEST').AsCurrency; //Atribui como aliquota de icms do estado de origem (DAS)
            XAlqIntDestinatario := DMPESSOA.TALX1.FieldByName('ALIQINTERNA').AsCurrency;
            XAliqExtDestinatario := DMPESSOA.TALX1.FieldByName('aliqinterestaual').AsCurrency;
            If XUfOrigem <> XUfDestino
            Then Begin
            	 If (XClienteConsumidorFinal=False) or (XClienteIE=True) Then
                	XCodCstST := DMPESSOA.TALX1.FieldByName('cod_cstinterestadual').AsInteger;// caso a venda fora do do estado, já assumimos o cst de st de fora do estado
                XCSTInterestadual := DMPESSOA.TALX1.FieldByName('CST').AsInteger;
                If XCSTInterestadual <= 0 Then
                    XCSTInterestadual := XCodCst;
            End;
        End;
	except

   end;
end; }

{function TFOrcamento3.AtualizaCstCsosn: Boolean;
begin
	Result := True;
   Try
   	//OS ITENS DEVEM ESTAR CADASTRADOS COM CST <> DE CST COM ST PARA SOMENTE FAZER A CONVERSÃO CASO OCORRAM OS CASOS <> DO ABAIXO
   	If ((XUfOrigem=XUfDestino) and (XClienteConsumidorFinal=True)) OR ((XUfOrigem<>XUfDestino) and (XClienteIE=False)  and (XClienteConsumidorFinal=True)) Then
           Exit;// se venda dentro do estado para consumidor final ou cliente sem inscrição estadual não alteramos os cst
       //COMANDOS PARA PEDIDO DE VENDA
       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('update itprodorc set itprodorc.cod_cst = :cst Where itprodorc.cod_orcamento = :pedido');
       DMSAIDA.TAlx.ParamByName('pedido').AsInteger := XCodPedido;
       DMSAIDA.TAlx.ParamByName('cst').AsInteger := XCodCstST;
       DMSAIDA.TAlx.ExecSQL;
       DMSAIDA.IBT.CommitRetaining;
	Except
   	Result := False;
   End;	
end; }

{function TFOrcamento3.CalculoIcmsSubstituicaoInsustriasSimples: Boolean;
begin
	Try
	   Result:=True;
      //Calcula somente fora do estado os caso a empresa esteja marcado como industria, ai calculamos dentro e fora do estado
      If (XUfOrigem <> XUfDestino) or (XEmpresaInustria=True)
      Then Begin          
   	   DMSAIDA.TItProdOrc.Edit;
          If XMvaEstado > 1 Then
             DMSAIDA.TItProdOrc.FieldByName('baseicmssubs').AsCurrency := (DMSAIDA.TItProdOrc.FieldByName('vlrtotal').AsCurrency)+((DMSAIDA.TItProdOrc.FieldByName('vlrtotal').AsCurrency) * XMvaEstado) / 100
          Else
             DMSAIDA.TItProdOrc.FieldByName('baseicmssubs').AsCurrency := (DMSAIDA.TItProdOrc.FieldByName('vlrtotal').AsCurrency);
          If (XUfOrigem <> XUfDestino) and (XClienteConsumidorFinal=True) and (XClienteIE=True)
          Then Begin
             //Quando Cliente Fora do Estado, consumidor final com IE a base de calculo ST deve ficar como abaixo
             DMSAIDA.TItProdOrc.FieldByName('baseicmssubs').AsCurrency := (DMSAIDA.TItProdOrc.FieldByName('vlrtotal').AsCurrency);
          End;
          If (XUfOrigem = XUfDestino) and (XClienteConsumidorFinal=False)
          Then Begin
             //Dentro do Estado Cliente Revenda (Vlr Créd. Icms aplicado sobre DAS), (BC ST = V. PRODUTOS * MVA), ( VLR ST = (BC ST*ALIQ INTERNA)-(PRODUTOS*ALIQ INTERNA)
             DMSAIDA.TItProdOrc.FieldByName('VLRICMSSUBS').AsCurrency := ((DMSAIDA.TItProdOrc.FieldByName('baseicmssubs').AsCurrency * XAlqIntDestinatario) / 100)-(((DMSAIDA.TItProdOrc.FieldByName('vlrtotal').AsCurrency) * XAlqIntDestinatario) / 100);
          End
          Else Begin
             If (XUfOrigem <> XUfDestino) and (XClienteConsumidorFinal=True) and (XClienteIE=True)
             Then Begin
                 //Fora do Estado Cliente consumidor final com Inscrição Estadual (BC ST = PRODUTOS * MVA), ( VLR ST = BC ST * (ALIQ INTERNA - ALIQ INTERESTADUAL))
                 DMSAIDA.TItProdOrc.FieldByName('VLRICMSSUBS').AsCurrency := ((DMSAIDA.TItProdOrc.FieldByName('baseicmssubs').AsCurrency * (XAlqIntDestinatario-XAliqExtDestinatario)) / 100);
             End
             Else Begin
                 If (XUfOrigem <> XUfDestino) and (XClienteConsumidorFinal=False)
                 Then Begin
                     //Fora do Estado Cliente Revenda (Não calcula ST),
                     DMSAIDA.TItProdOrc.FieldByName('VLRICMSSUBS').AsCurrency := ((DMSAIDA.TItProdOrc.FieldByName('baseicmssubs').AsCurrency * (XAlqIntDestinatario)) / 100)-(((DMSAIDA.TItProdOrc.FieldByName('vlrtotal').AsCurrency) * XAliqExtDestinatario) / 100);
                 End;
             End;
          End;
          
          DMSAIDA.TItProdOrc.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
          If (XCSTInterestadual > 0) and (Fmenu.XTributaEmpresa = 'NORMAL') Then
              DMSAIDA.TItProdOrc.FieldByName('COD_CST').AsInteger := XCSTInterestadual;
          DMSAIDA.TItProdOrc.FieldByName('APLICARST').AsString := '1';
          DMSAIDA.TItProdOrc.Post;
      End;
      //Alex 01/08/2014: Se o estado for isento ele zera os valores substituidos
      If XEstadoIsentoST = true Then
      Begin
          DMSAIDA.TItProdOrc.Edit;
          DMSAIDA.TItProdOrc.FieldByName('baseicmssubs').AsCurrency := 0;
          DMSAIDA.TItProdOrc.FieldByName('VLRICMSSUBS').AsCurrency := 0;
          DMSAIDA.TItProdOrc.FieldByName('IPNMVA').AsCurrency := XMvaEstado;
          DMSAIDA.TItProdOrc.FieldByName('APLICARST').AsString := '0';
          DMSAIDA.TItProdOrc.Post;
      End;
   Except
   	Result:=False;
   End;
end;}

{Function TFOrcamento3.VerificaTipoCliente: Boolean;
Begin
	Try
       DMPESSOA.TALX1.Close;
       DMPESSOA.TALX1.SQL.Clear;
       DMPESSOA.TALX1.SQL.Add(' Select pessoaj.INDUSTRIA, pessoaj.insc_est, cliente.consumidor, cliente.SIMPLESNACIONAL from vwcliente ');
       DMPESSOA.TALX1.SQL.Add(' left Join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
       DMPESSOA.TALX1.SQL.Add(' Left Join pessoaj on pessoa.cod_pessoa=pessoaj.cod_pessoa ');
       DMPESSOA.TALX1.SQL.Add(' Left Join cliente on vwcliente.cod_cliente=cliente.cod_cliente ');
       DMPESSOA.TALX1.SQL.Add(' Where vwcliente.cod_cliente=:codigo ');
       DMPESSOA.TALX1.ParamByName('codigo').AsInteger:=XCodPessoa;
       DMPESSOA.TALX1.Open;
       
       If not DMPESSOA.TALX1.IsEmpty
       Then Begin
			If DMPESSOA.TALX1.FieldByName('consumidor').AsString='S' Then
           	XClienteConsumidorFinal:=True
           Else
           	XClienteConsumidorFinal:=False;

			If DMPESSOA.TALX1.FieldByName('insc_est').AsString<>'' Then
           	XClienteIE:=True
           Else
           	XClienteIE:=False;
           Result:=True;
       End
       Else Begin
           Result:=False;
       End;
   Except;
   End;
End; }

procedure TFOrcamento3.EdNumeroEnter(Sender: TObject);
begin
  inherited;
	if EdNumero.Text = 'Número' then
       EdNumero.Text := ''
   else
   	EdNumero.SelectAll;
   EdNumero.Font.Color := clBlack;
end;

procedure TFOrcamento3.EdNumeroExit(Sender: TObject);
begin
  inherited;
    if Trim(EdNumero.Text) = ''
    then begin
        EdNumero.Text := 'Número';
        EdNumero.Font.Color := clGray;
    end;
end;

procedure TFOrcamento3.EdNomeEnter(Sender: TObject);
begin
  inherited;
	if EdNome.Text = 'Cliente' then
       EdNome.Text := ''
   else
   	EdNome.SelectAll;
   EdNome.Font.Color := clBlack;
end;

procedure TFOrcamento3.EdNomeExit(Sender: TObject);
begin
  inherited;
    if Trim(EdNome.Text) = ''
    then begin
        EdNome.Text := 'Cliente';
        EdNome.Font.Color := clGray;
    end;
end;

procedure TFOrcamento3.EdNumeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
       	FiltraTabela(DMSAIDA.TOrc , 'ORCAMENTO', 'NUMORC', '',   '(upper(NUMORC) like upper('+#39+EdNumero.Text+'%'+#39+')) ORDER BY NUMORC DESC');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           DMSAIDA.TOrc.Close;
           DMSAIDA.TOrc.SQL.Clear;
           DMSAIDA.TOrc.SQL.Add('Select * from ORCAMENTO  ORDER BY NUMORC DESC');
           DMSAIDA.TOrc.Open;
       End;
   Except
   End;
end;
procedure TFOrcamento3.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\orcamento3.lgm');
       Mensagem('MZR Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('MZR Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrcamento3.edPesquisaAgilKeyDown(Sender: TObject;
   var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = Vk_Down then
  begin
      DMESTOQUE.WSimilar.Next;

      xCodProdTmp := DbGridProdutos.Columns[0].Field.Text;
  end;


  If Key = Vk_UP then
  begin
      DMESTOQUE.WSimilar.Prior;

      xCodProdTmp := DbGridProdutos.Columns[0].Field.Text;
  end;
end;

end.
