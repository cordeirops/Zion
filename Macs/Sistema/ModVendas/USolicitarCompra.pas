{
*******************************************************************************
*							Edmar 12/09/2014                                   *
* Formulário de solicitação de compra criado a pedido da empresa BS Acessório *
*							Solicitação 189                                    *
*******************************************************************************
}
unit USolicitarCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  ExtCtrls, EditFloat, ColorEditFloat, cxLookAndFeelPainters, DBCtrls,
  cxButtons, FashionPanel, Mask, ColorMaskEdit, Menus, frxClass, frxDBSet;

type
  TFSolicitarCompra = class(TFCadPadrao)
    PSelectCliente: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LUZOPEN: TShape;
    LSelectPessoa: TLabel;
    PPesCad: TPanel;
    DbCpf: TEdit;
    DbNomeCli: TEdit;
    EdCodCli: TEdit;
    EdCPF: TEdit;
    EdNomeCli: TEdit;
    BtnProcPess: TBitBtn;
    EdValorPed: TColorEditFloat;
    Label3: TLabel;
    Label2: TLabel;
    EdNumeroPedido: TEdit;
    EdData: TColorMaskEdit;
    Label9: TLabel;
    FPLista: TFashionPanel;
    Panel2: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Panel3: TPanel;
    Bevel1: TBevel;
    LSimilar: TLabel;
    LMarca: TLabel;
    LLocal: TLabel;
    Label7: TLabel;
    BtnInsertProd: TBitBtn;
    BtnDeleteList: TBitBtn;
    EDQuantidade: TColorEditFloat;
    EDValUnit: TColorEditFloat;
    EDDesc: TColorEditFloat;
    EDTotal: TColorEditFloat;
    BtnEscolheProc: TBitBtn;
    PInfoExp: TPanel;
    PFashionInfoExport: TFashionPanel;
    LQuantInfoExport: TLabel;
    LInfoExport: TLabel;
    EdQuantExp: TColorEditFloat;
    BtnInfoExport: TBitBtn;
    PLote: TPanel;
    Label70: TLabel;
    Label71: TLabel;
    LObsLote: TLabel;
    EdLote: TColorMaskEdit;
    EdVenc: TColorMaskEdit;
    EdObs: TColorMaskEdit;
    PSelectLote: TPanel;
    GDBLote: TDBGrid;
    pPesqBarraInterno: TPanel;
    Label15: TLabel;
    PCodFab: TPanel;
    Label1: TLabel;
    EDCodFab: TColorMaskEdit;
    EDCodBarra: TEdit;
    PCodInterno: TPanel;
    Label17: TLabel;
    GroupBox5: TGroupBox;
    DBGrid1: TDBGrid;
    MEscolheProc: TPopupMenu;
    ControleInterno1: TMenuItem;
    CdFab1: TMenuItem;
    LEstoque: TLabel;
    LTotaisQtde: TLabel;
    EDCodInterno: TColorMaskEdit;
    pPesquisa: TPanel;
    lPesquisa: TLabel;
    edPesquisa: TEdit;
    pGridProdutos: TPanel;
    DbGridProdutos: TDBGrid;
    BtnProcProd: TBitBtn;
    BtnFechaPed: TBitBtn;
    BtnCancFechame: TBitBtn;
    frxComprovanteSolicitacao: TfrxReport;
    dataSetFornecedor: TfrxDBDataset;
    dataSetItens: TfrxDBDataset;
    dataSetLoja: TfrxDBDataset;
    dataSetPedido: TfrxDBDataset;
    btnBuscaProduto: TBitBtn;
    procedure EventoImportacao;
    procedure EscreveLabels;
    procedure LimpaCampos;
    procedure FiltraSlave;
    procedure LimpaCamposPedido;
    procedure AtualizaTabela(Param: String);
    procedure BtnEscolheProcClick(Sender: TObject);
    procedure ControleInterno1Click(Sender: TObject);
    procedure CdFab1Click(Sender: TObject);
    procedure BtnProcPessClick(Sender: TObject);
    procedure BtnProcProdClick(Sender: TObject);
    procedure EDQuantidadeExit(Sender: TObject);
    procedure EDTotalExit(Sender: TObject);
    procedure BtnInsertProdClick(Sender: TObject);
    procedure BtnDeleteListClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdNomeKeyPress(Sender: TObject; var Key: Char);
    procedure EDCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure EDCodInternoKeyPress(Sender: TObject; var Key: Char);
    procedure EDCodFabKeyPress(Sender: TObject; var Key: Char);
    procedure edPesquisaEnter(Sender: TObject);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesquisaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure BtnCancFechameClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure DBGridCadastroPadraoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    XCodEstoque: String;
  end;

var
  FSolicitarCompra: TFSolicitarCompra;
  XCodPessoa, xCodItPedc, XCodPedido, xNumPedido: Integer;

implementation

uses UDMPessoa, UFORNECEDOR, Alxor32, UMenu, UProduto, UDMEstoque, UDMENTRADA,
  UDMMacs, UDMSaida, AlxMessage, DB, UDMFAST, Math;

{$R *.dfm}

procedure TFSolicitarCompra.BtnEscolheProcClick(Sender: TObject);
begin
  inherited;
    MEscolheProc.Popup(BtnEscolheProc.Width + BtnEscolheProc.Left + 20, 315);
end;

procedure TFSolicitarCompra.ControleInterno1Click(Sender: TObject);
begin
  inherited;
  PCodInterno.Visible := True;
  PCodInterno.BringToFront;
  PCodInterno.Enabled := True;
  EDCodInterno.SetFocus;
end;

procedure TFSolicitarCompra.CdFab1Click(Sender: TObject);
begin
  inherited;
  PCodFab.Visible := True;
  PCodFab.BringToFront;
  PCodFab.Enabled := True;
  EDCodFab.SetFocus;
end;

procedure TFSolicitarCompra.BtnProcPessClick(Sender: TObject);
begin
  inherited;
  //Edmar - 12/09/2014 - Filtra fornecedor para abrir o form depois
  FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', ' ORDER BY NOME'); //LIBERA TODOS OS REGISTROS PARA CONSULTA
  FMenu.XPreSel := True;
  FMenu.XFieldPesqPreSel := 'COD_INTERNO';
  FMenu.XCodPesqPresSel := EdCodCli.Text;
  
  if AbrirForm(TFFornecedor, FFornecedor, 1) = 'Selected' then
  begin
    XCodPessoa := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
    EdCPF.Text := DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString;
    EdNomeCli.Text := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
    EdCodCli.Text := DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
  end;
end;

procedure TFSolicitarCompra.BtnProcProdClick(Sender: TObject);
begin
  inherited;
  If AbrirForm(TFProduto, FProduto, 1) = 'Selected' then
  begin
	  XCodEstoque := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString;
       
	  EscreveLabels;
  end;
end;

procedure TFSolicitarCompra.EscreveLabels;
begin
	//XCodEstoque := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString;

   //Edmar - 15/09/2014 - Filtra buscando dados financeiro do produto
   if not FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', XCodEstoque, '') then
   	Exit;

	//Edmar - 15/09/2014 - Filtra buscando subproduto pelo codigo que foi selecionado na tela de produto
	if not FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString, '') then
   	Exit;

   if not pPesquisa.Visible then
   begin
   	//Edmar - 15/09/2014 - joga as informações do produto nos campos
		EDCodInterno.Text := DMEstoque.TSubProd.FieldByName('CONTRINT').AsString;
  		EDCodFab.Text := DMEstoque.TSubProd.FieldByName('CODPRODFABR').AsString;
  		EDCodBarra.Text := DMEstoque.TSubProd.FieldByName('CODBARRA').AsString;
   end;

  	LSimilar.Caption := DMEstoque.TSubProd.FieldByName('DESCRICAO').AsString;
  	LMarca.Caption := DMEstoque.TSubProd.FieldByName('Marca').asstring;
  	LLocal.Caption := DMEstoque.TSubProd.FieldByName('LOCALESTANTE').asstring;
  	LEstoque.Caption := FormatFloat('#,###0.000', DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency);

  	EDValUnit.ValueNumeric := DMEstoque.TEstoque.FieldByName('VALUNIT').AsCurrency;
  	EDQuantidade.ValueInteger := 1;
end;

procedure TFSolicitarCompra.EDQuantidadeExit(Sender: TObject);
begin
  inherited;
	if EDQuantidade.ValueNumeric <> 0 then
   begin
  	//Edmar - 15/09/2014 - calcula o total do produto 
      CalcPercent(EDDesc.ValueNumeric, 0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
      EDTotal.ValueNumeric := AlxCalculo;
   end;
end;

procedure TFSolicitarCompra.EDTotalExit(Sender: TObject);
begin
  inherited;
  	//Edmar - 15/09/2014 - Calcula o desconto do item
    CalcPercent(0, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric) - EDTotal.ValueNumeric, (EDQuantidade.ValueNumeric * EDValUnit.ValueNumeric), 'D');
    EDDesc.ValueNumeric := AlxPercento;
end;

procedure TFSolicitarCompra.BtnInsertProdClick(Sender: TObject);
var
	xQtdeAnt, xQtdeAtu: Integer;
begin
  inherited;
  //Edmar - 15/09/2014 - Valida se o item possui uma quantidade
  if EDQuantidade.ValueNumeric <= 0 then
  begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar a quantidade do item.', '', 1, 1, False, 'A');

       EDQuantidade.SetFocus;

       Exit;
  end;
  
  //Edmar - 15/09/2014 - Valida se o item possui valor total
  if EDTotal.ValueNumeric <= 0 then
  begin
		Mensagem('OPÇÃO BLOQUEADA', 'O item não possui valor total. Verifique!', '', 1, 1, False, 'A');

       EDTotal.SetFocus;

       Exit;
  end;
  //Edmar - 15/09/2014 - Testa se a empresa faz controle de lista
  If (DMMACS.TLoja.FieldByName('controlprodlista').AsString = '1') Or (DMMACS.TLoja.FieldByName('controlprodlista').AsString = null) then
  begin
	   //se sim testa se o produto que está sendo inserido já existe na lista  
      if FiltraTabela(DMSAIDA.TAlx, 'ITENSPEDC', 'COD_PEDCOMPRA', IntToStr(xCodPedido), 'AND (COD_ESTOQUE = '+XCodEstoque+')') then
      begin
           If Mensagem('A T E N Ç Ã O !', 'O sistema encontrou o mesmo produto já lançado a lista. com ' + DMSAIDA.TAlx.FieldByName('qtdeprod').AsString + ' qtdes.' + #13 + 'Deseja alterar este produto já lançado?', '', 2, 3, False, 'c') = 2 then
           begin
               EscreveLabels;
               
           	xQtdeAnt := DMSAIDA.TAlx.FieldByName('qtdeprod').AsInteger;
               xQtdeAtu := EDQuantidade.ValueInteger;
               XCodEstoque := DMSAIDA.TAlx.FieldByName('COD_ESTOQUE').AsString;

               BtnDeleteListClick(sender);

               EDQuantidade.ValueNumeric := xQtdeAnt + xQtdeAtu;

               FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', XCodEstoque, '');

               EDQuantidadeExit(Sender);
               EDDesc.SetFocus;

               Exit;
           end;
      end;
  end;

  //Edmar - 15/09/2014 - Filtra o subproduto 
  FiltraTabela(DMESTOQUE.TSubProd, 'SUBPRODUTO', 'COD_SUBPRODUTO', DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString, '');

  //insere o registro em itenspedc
  xCodItPedc := InserReg(DMENTRADA.TItemPC, 'ITENSPEDC', 'COD_ITENSPEDC');

  //insere as informações básicas do produto 
  DMENTRADA.TItemPC.FieldByName('COD_ITENSPEDC').AsInteger := xCodItPedc;
  DMENTRADA.TItemPC.FieldByName('COD_PEDCOMPRA').AsInteger := XCodPedido;
  DMENTRADA.TItemPC.FieldByName('COD_ESTOQUE').AsString := XCodEstoque;
  DMENTRADA.TItemPC.FieldByName('QTDEPROD').AsInteger := EDQuantidade.ValueInteger;
  DMENTRADA.TItemPC.FieldByName('VALUNIT').AsCurrency := EDValUnit.ValueNumeric;
  DMENTRADA.TItemPC.FieldByName('VALORTOTAL').AsCurrency := EDTotal.ValueNumeric;
  DMENTRADA.TItemPC.FieldByName('DESCPRO').AsCurrency := EDDesc.ValueNumeric;

  try
    DMENTRADA.TItemPC.Post;
    DMENTRADA.IBT.CommitRetaining;
  except
    DMENTRADA.IBT.RollbackRetaining;  
  end;
  //limpa os campos e filtra a grid dos itens
  LimpaCampos;
  FiltraSlave;

  //Edmar - 26/09/2014 - Seta o foco no campo com base no painel que está visivel no momento
  if pPesquisa.Visible then
  	edPesquisa.SetFocus
  else
  	EDCodBarra.SetFocus;
end;

procedure TFSolicitarCompra.FiltraSlave;
begin
	try
   	//Filtra Slave
   	FiltraTabela(DMESTOQUE.TSlave, 'ITENSPEDC', 'COD_PEDCOMPRA', IntToStr(xCodPedido), '');

		//Edmar - 12/09/2014 - Calcula o valor total do pedido
       DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add('SELECT SUM(ITENSPEDC.VALORTOTAL) VALORTOTAL FROM ITENSPEDC');
       DMESTOQUE.TSlave.SQL.Add('WHERE ITENSPEDC.COD_PEDCOMPRA = :COD');
       DMESTOQUE.TSlave.ParamByName('COD').AsInteger := XCodPedido;
       DMESTOQUE.TSlave.Open;

       EdValorPed.ValueNumeric := DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;

		//Edmar - 12/09/2014 - Calcula os totais de produtos
       DMESTOQUE.TSlave.Close;
       DMESTOQUE.TSlave.SQL.Clear;
       DMESTOQUE.TSlave.SQL.Add('SELECT Sum(ITENSPEDC.QTDEPROD) as QTD, count(ITENSPEDC.QTDEPROD) as QTDITEM FROM ITENSPEDC');
       DMESTOQUE.TSlave.SQL.Add('WHERE ITENSPEDC.COD_PEDCOMPRA = :COD');
       DMESTOQUE.TSlave.ParamByName('COD').AsInteger := xCodPedido;
       DMESTOQUE.TSlave.Open;

       if DMESTOQUE.TSlave.FieldByName('QTD').AsString = '' then
       	LTotaisQtde.Caption := 'Qtd L: 0    Qtd T: 0'
       else
       	LTotaisQtde.Caption := 'Qtd L: '+DMESTOQUE.TSlave.FieldByName('QTDITEM').AsString+'    Qtd T: '+DMESTOQUE.TSlave.FieldByName('QTD').AsString;       

   	//Edmar - 12/09/2014 - Filtra buscando os itens do pedido
     	DMESTOQUE.TSlave.Close;
     	DMESTOQUE.TSlave.SQL.Clear;
     	DMESTOQUE.TSlave.SQL.Add(' select itenspedc.cod_itenspedc, itenspedc.cod_estoque, subproduto.cod_subproduto, subproduto.contrint, itenspedc.qtdeprod, itenspedc.valunit, itenspedc.descpro, ');
     	DMESTOQUE.TSlave.SQL.Add(' itenspedc.valortotal, subproduto.codprodfabr, subproduto.descricao, subproduto.marca from itenspedc ');
     	DMESTOQUE.TSlave.SQL.Add(' left join estoque on estoque.cod_estoque =  itenspedc.cod_estoque ');
     	DMESTOQUE.TSlave.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
     	DMESTOQUE.TSlave.SQL.Add(' where itenspedc.cod_pedcompra = :COD ');
     	DMESTOQUE.TSlave.ParamByName('COD').AsInteger := xCodPedido;
     	DMESTOQUE.TSlave.Open;
   except
   end;
end;

procedure TFSolicitarCompra.LimpaCampos;
begin
	//Edmar - 12/09/2014 - Limpa as informações e os valores do item
	EDCodBarra.Text := '';
   EDCodInterno.Text := '';
   EDCodFab.Text := '';
   EDQuantidade.ValueNumeric := 0.00;
   EDValUnit.ValueNumeric := 0.00;
   EDDesc.ValueNumeric := 0.00;
   EDTotal.ValueNumeric := 0.00;
   LSimilar.Caption := '';
   LMarca.Caption := '';
   LLocal.Caption := '';
   LEstoque.Caption := '0.00';
end;

procedure TFSolicitarCompra.BtnDeleteListClick(Sender: TObject);
begin
  inherited;
  	//Edmar - 15/09/2014 - Salva o código do estoque para ser usado na função escreve labels
  	XCodEstoque := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsString;

   //Delete item do pedido
	DMSAIDA.TAlx.Close;
   DMSAIDA.TAlx.SQL.Clear;
   DMSAIDA.TAlx.SQL.Add('DELETE FROM ITENSPEDC WHERE ITENSPEDC.COD_ITENSPEDC = :COD');
   DMSAIDA.TAlx.ParamByName('COD').AsString := DMESTOQUE.TSlave.FieldByName('COD_ITENSPEDC').AsString;

   try
   	DMSAIDA.TAlx.ExecSQL;
       DMSAIDA.IBT.CommitRetaining;
   except
   	on e : Exception do
       begin
       	showMessage('Ocorreu um problema ao tentar remover o item. '+e.Message);
           DMSAIDA.IBT.RollbackRetaining;
       end;
   end;

   EscreveLabels;
   //repassa valores e quantidade para os campos
   EDTotal.Text := FormatFloat('##0.00', DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency);
   EDQuantidade.Text := FormatFloat('##0.00', DMESTOQUE.TSlave.FieldByName('QTDEPROD').AsCurrency);
	EDDesc.Text := FormatFloat('####0.00', DMESTOQUE.TSlave.FieldByName('DESCPRO').AsCurrency);
   EDValUnit.Text := FormatFloat('####0.00', DMESTOQUE.TSlave.FieldByName('VALUNIT').AsCurrency);   

   FiltraSlave;
end;

procedure TFSolicitarCompra.BtnNovoClick(Sender: TObject);
begin
  inherited;
    try
    	//Edmar - 15/09/2014 - Se a data atual como data de solicitação
    	EdData.Text := FormatDateTime('dd/MM/yyyy', Date());
    	XCodPessoa := -1;

       //Edmar - 15/09/2014 - Busca numero do pedido valido
    	If DMMacs.TEmpresa.FieldByName('proxpedcomp').AsString = '' Then
    		XNumPedido := 1
    	Else
    		XNumPedido := DMMacs.TEmpresa.FieldByName('proxpedcomp').AsInteger;

       //Edmar - 15/09/2014 - incrementa o numero do pedido e salva em empresa
    	DMMACS.TEmpresa.Edit;
    	DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString := IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString) + 1);
    	DMMACS.TEmpresa.Post;

    	BtnProcPess.SetFocus;

    	EdNumeroPedido.Text := IntToStr(xNumPedido);

       //Edmar - 15/09/2014 - salva informações básica do pedido
    	xCodPedido :=  InserReg(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP');
    	DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger := xCodPedido;
    	DMENTRADA.TPedC.FieldByName('NUMPED').AsString := IntToStr(xNumPedido);
    	DMENTRADA.TPedC.Post;
        
    	FiltraSlave;

       //if xImportando then
	    if FMenu.xImportando then       
       begin          
          //Edmar - 16/09/2014 - Filtra buscando  pelo codigo do estoque salvo anteriormete (linha 6832 - UProduto)
          if not FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', XCodEstoque, '') then
          begin
          		ShowMessage('NÃO FOI ENCONTRADO O PRODUTO SOLICITADO');

          		BtnCancelarClick(sender);

          		Exit;
          end;
          //Edmar - 16/09/2014 - Preenche os campos com as informações do produto para inserção
          EscreveLabels;
          //deixa o campo quantidade com o foco
          EDQuantidade.SetFocus;
       end;

    except
    	on e : Exception do
    		ShowMessage('Ocorreu um problema ao inserir novo registro '+e.Message);
    end;
end;

procedure TFSolicitarCompra.BtnGravarClick(Sender: TObject);
begin 
	try
   	//Edmar - 15/09/2014 - Testa se foi selecionado fornecedor
       if XCodPessoa = -1 then
       begin
           Mensagem('OPÇÃO BLOQUEADA', 'Informe o fornecedor do pedido.', '', 1, 1, False, 'a');

           BtnProcPess.SetFocus;

           Exit;
       end;

       //Edmar - 15/09/2014 - Edita o pedido passando os valores
       DMENTRADA.TPedC.Edit;

       DMENTRADA.TPedC.FieldByName('COD_FORNEC').AsInteger := XCodPessoa;
       DMENTRADA.TPedC.FieldByName('DTPEDCOMP').AsString := EdData.Text;
       DMENTRADA.TPedC.FieldByName('VALOR').AsCurrency := EdValorPed.ValueNumeric;
       DMENTRADA.TPedC.FieldByName('NUMPED').AsString := EdNumeroPedido.Text;
       DMENTRADA.TPedC.FieldByName('SITUACAO').AsString := 'ABERTO';       
       DMENTRADA.TPedC.FieldByName('TIPO').AsString := 'SCOMP';

       DMENTRADA.TPedC.Post;
       DMENTRADA.IBT.CommitRetaining;

       //Edmar - 29/09/2014 - Centraliza as operação referente a solicitação da compra
       //por meio de importação
		EventoImportacao;
   except
   	On E : Exception do
       begin
       	showMessage('Ocorreu um erro ao salva o Pedido '+E.Message);
			DMSAIDA.IBT.RollbackRetaining;
       end;
   end;
   //atualiza grid e limpa campos
   FormActivate(sender);
   LimpaCamposPedido;
   LimpaCampos;
  inherited;                  
end;

procedure TFSolicitarCompra.BtnCancelarClick(Sender: TObject);
begin
  	//Edmar - 16/09/2014 - Se estiver vazio pede confirmação para exclusão
	if (DMESTOQUE.TSlave.IsEmpty) then
   begin
       If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja apagar o pedido?', '', 2, 3, False, 'c') = 2 then
       begin
       try
           DMENTRADA.TPedC.Delete;
           DMENTRADA.IBT.CommitRetaining;
       except
           On E : Exception do
           begin
               showMessage('Ocorreu ao excluir o pedido '+E.Message);
               DMSAIDA.IBT.RollbackRetaining;
           end;
       end;
       end;
   end;

   //Edmar - 29/09/2014 - Centraliza as operação referente a solicitação da compra
   //por meio de importação
   EventoImportacao;

   //Edmar - 15/06/2014 - Limpa os campos do formulário
   //e atualiza a grid principal
   FormActivate(sender);
   LimpaCamposPedido;
   LimpaCampos;
  inherited;   
end;

//Edmar - 15/09/2014 - Limpa campos
procedure TFSolicitarCompra.LimpaCamposPedido;
begin
	EdCodCli.Text := '';
   EdCPF.Text := '';
   EdNomeCli.Text := '';
	XCodPessoa := -1;
end;

procedure TFSolicitarCompra.FormActivate(Sender: TObject);
begin
	 Caption:='Solicitação de Compra' ;
	AtualizaTabela('');

   //Edmar - 16/09/2014 - Se faz é pra fazer a pesquisa rápida do produto no pedido
   If (DMMACS.TLoja.FieldByName('PESQINTELPROD').AsString = '1') then
   begin
   	//deixa o painel correspondente visivel
		pPesquisa.Visible := True;
       pPesquisa.BringToFront;
       pPesquisa.Enabled := True;

       pPesqBarraInterno.Visible := False;
       pPesqBarraInterno.SendToBack;
       pPesqBarraInterno.Enabled := False;
   end
   else begin
	    //do contrario...
       pPesqBarraInterno.Visible := True;
       pPesqBarraInterno.BringToFront;
       pPesqBarraInterno.Enabled := True;

       pPesquisa.Visible := False;
       pPesquisa.SendToBack;
       pPesquisa.Enabled := False;
   end;

   //Edmar - 16/09/2014 - Se estiver importando
   //quer dizer que esta tela foi chamada do estoque
//   if xImportando then
   if FMenu.xImportando then
   begin
   	DBGridCadastroPadrao.SetFocus;
   	BtnSelecionar.Visible := True;
       XCodEstoque := FMenu.XCodEstoqueImportacao;
   end;
end;

procedure TFSolicitarCompra.BtnConsultarClick(Sender: TObject);
begin
	//Edmar - 26/09/2014 - Verifica se a solicitação está FECHADA
   if DMENTRADA.WPedc.FieldByName('SITUACAO').AsString = 'FECHADO' then
   begin
   	Mensagem('   I N F O R M A Ç Ã O  ', 'Não é possível consultar uma Solicitação fechada.', '', 1, 1, False, 'I');
       Exit;
   end;
   
	//Edmar - 15/09/2014 - Se não tem nenhuma linha selecionada
   //da um exit para parar a execução
	if DMENTRADA.WPedc.RecordCount = 0 then
   	Exit;

   //Edmar - 15/09/2014 - o mesmo se não achar o pedido de compra
	if not FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsString, '') then
   	Exit;

  	//Edmar - 15/09/2014 - filtra buscando o fornecedor e passa suas informações para os campos correspondentes
   if FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', DMENTRADA.WPedc.FieldByName('COD_FORNEC').AsString, '') then
   begin
   	XCodPessoa := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
   	EdCPF.Text := DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString;
   	EdNomeCli.Text := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
   	EdCodCli.Text := DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
   end;

	//Edmar - 15/09/2014 - Passa o restante das informações para os campos
   XCodPedido := DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsInteger;
   EdNumeroPedido.Text := DMENTRADA.WPedc.FieldByName('NUMPED').AsString;
   EdData.Text := DMENTRADA.WPedc.FieldByName('DTPEDCOMP').AsString;
   EdValorPed.ValueNumeric := DMENTRADA.WPedc.FieldByName('VALOR').AsCurrency;

   //Edmar - 15/09/2014 - Filtra os itens do pedido
   FiltraSlave;
   inherited;   
end;

procedure TFSolicitarCompra.AtualizaTabela(Param: String);
begin
	//Edmar - 15/09/2014 - Atualiza a grid principal
   DMENTRADA.WPedc.Close;
   DMENTRADA.WPedc.SQL.Clear;
   DMENTRADA.WPedc.SQL.Add('SELECT VWPEDC.* FROM VWPEDC ');
   DMENTRADA.WPedc.SQL.Add('LEFT JOIN PEDCOMPRA ON PEDCOMPRA.COD_PEDCOMP = VWPEDC.COD_PEDCOMP ');
   DMENTRADA.WPedc.SQL.Add('WHERE (PEDCOMPRA.TIPO = ''SCOMP'') ');
   DMENTRADA.WPedc.SQL.Add('ORDER BY VWPEDC.SITUACAO ');

   //se possui algum parametro usa ele na busca
   if Param <> '' then
   	DMENTRADA.WPedc.SQL.Add('AND (UPPER(NOME) LIKE UPPER('+QuotedStr(EdNome.Text+'%')+'))');

   DMENTRADA.WPedc.SQL.Text;
   DMENTRADA.WPedc.Open;

   DBGridCadastroPadrao.DataSource := DMENTRADA.DWPEDC;

   XView := DMENTRADA.WPedc;
end;

procedure TFSolicitarCompra.EdNomeKeyPress(Sender: TObject; var Key: Char);
begin
	//enter
	if Key = #13 then
   	AtualizaTabela(EdNome.Text);
  	//esc
   if Key = #27 then
   begin
   	EdNome.Text := '';
		AtualizaTabela('');
   end;
end;

procedure TFSolicitarCompra.EDCodBarraKeyPress(Sender: TObject;
  var Key: Char);
begin
	//enter
  if key = #13 then
  begin
    if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODBARRA', EdCodBarra.Text, '') then
    begin
		XCodEstoque := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString;    
    	EscreveLabels;
    end
    else
    begin
    	LimpaCampos;
    	LSimilar.Caption := 'PRODUTO NÃO ENCONTRADO';
    end;
  end;
  //esc
  if key = #27 then
  begin
  	edCodBarra.Text := '';
   LimpaCampos;
  end;
end;

procedure TFSolicitarCompra.EDCodInternoKeyPress(Sender: TObject;
  var Key: Char);
begin
	//enter
  if key = #13 then
  begin
    if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CONTRINT', EDCodInterno.Text, '') then
    begin
		XCodEstoque := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString;
    	EscreveLabels;
    end
    else
    begin
    	LimpaCampos;
    	LSimilar.Caption := 'PRODUTO NÃO ENCONTRADO';
    end;
  end;
  	//esc
  if key = #27 then
  begin
  	EdCodInterno.Text := '';
   LimpaCampos;
  end;
end;

procedure TFSolicitarCompra.EDCodFabKeyPress(Sender: TObject;
  var Key: Char);
begin
	//enter
  if key = #13 then
  begin
    if FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', EDCodFab.Text, '') then
    begin
		XCodEstoque := DMEstoque.WSimilar.FieldByName('COD_ESTOQUE').AsString;
    	EscreveLabels;
    end
    else
    begin
    	LimpaCampos;
    	LSimilar.Caption := 'PRODUTO NÃO ENCONTRADO';
    end;
  end;
  //esc
  if key = #27 then
  begin
  	EDCodFab.Text := '';
   LimpaCampos;
  end;
end;

procedure TFSolicitarCompra.edPesquisaEnter(Sender: TObject);
begin
	//Edmar - 17/09/2014 - Filtra vwsimilar para a grid de pesquisa rápida
	FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', '(ATIVO = ''S'') ORDER BY DESCRICAO');
end;

procedure TFSolicitarCompra.edPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = Vk_Down then
  begin
      DMESTOQUE.WSimilar.Next;

      XCodEstoque := DbGridProdutos.Columns[0].Field.Text;      
  end;

  
  If Key = Vk_UP then
  begin
      DMESTOQUE.WSimilar.Prior;

      XCodEstoque := DbGridProdutos.Columns[0].Field.Text;
  end;
end;

procedure TFSolicitarCompra.edPesquisaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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


   //Edmar - 16/09/2014 - Apertando ESC filtra o similar e esconde o painel
   If Key = VK_ESCAPE
   Then Begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ') ');
      DMESTOQUE.WSimilar.Open;

      LimpaCampos;

      pGridProdutos.Visible := False;
      pGridProdutos.SendToBack;
      edPesquisa.Text := '';
      lPesquisa.Caption := 'Pesquisa:';

      Exit;
   End;

   //Edmar - 16/09/2014 - Se o campo estiver vazio esconde o painel e atualiza a label
   If edPesquisa.Text = '' then
   begin
   	pGridProdutos.Visible := False;
       pGridProdutos.SendToBack;
       lPesquisa.Caption := 'Pesquisa:';

       Exit;       
   end;

   //Edmar - 16/09/2014 - Apertando ENTER filtra similar com o código que foi buscado
   If Key = Vk_Return then
   begin
      DMESTOQUE.WSimilar.Close;
      DMESTOQUE.WSimilar.SQL.Clear;
      DMESTOQUE.WSimilar.SQL.Add('select * from vwsimilar where (vwsimilar.cod_estoque=:Codigo) AND  (VWSIMILAR.ATIVO=' + #39 + 'S' + #39 + ')');
      DMESTOQUE.WSimilar.ParamByName('CODIGO').AsString := XCodEstoque;
      DMESTOQUE.WSimilar.Open;

      If Not DMESTOQUE.WSimilar.IsEmpty then
  	   begin
      		EscreveLabels;
      		pGridProdutos.Visible := False;
           pGridProdutos.SendToBack;
      		edPesquisa.Text := '';
      		EDQuantidade.Text := '1,00';
           EDDesc.Text := '0,00';
           EDTotal.Text := '0,00';
      end
      else
      		MessageDlg('ATENÇÃO!' + #13 + #10 + 'O produto selecionado não foi escrito', mtWarning, [mbOK], 0);

      edPesquisaEnter(sender);
      Exit;
   End;

   //Edmar - 16/09/2014 - Busca pela descrição
	if DMESTOQUE.WSimilar.Locate('DESCRICAO', edPesquisa.Text, [loCaseInsensitive, loPartialKey]) then
   begin
   	lPesquisa.Caption := 'Descrição:';
		XCodEstoque := DbGridProdutos.Columns[0].Field.Text;

       Exit;
   end;

   //Edmar - 16/09/2014 - Busca pelo codigo interno
   if DMESTOQUE.WSimilar.Locate('CONTRINT', edPesquisa.Text, [loCaseInsensitive, loPartialKey]) then
   begin
       lPesquisa.Caption := 'Ctrl. Interno:';
       XCodEstoque := DbGridProdutos.Columns[0].Field.Text;

       Exit;
   end;

   //Edmar - 16/09/2014 - Busca pelo código do fabricante
   if DMESTOQUE.WSimilar.Locate('CODFABRICANTE', edPesquisa.Text, [loCaseInsensitive, loPartialKey]) then
   begin
       lPesquisa.Caption := 'Cod. Fabricante:';
       XCodEstoque := DbGridProdutos.Columns[0].Field.Text;

       Exit;
   end;

	XCodEstoque := DbGridProdutos.Columns[0].Field.Text;
   lPesquisa.Caption := 'Fora de Pesquisa';
end;
procedure TFSolicitarCompra.BtnFechaPedClick(Sender: TObject);
begin
	//Edmar - 25/09/2014 - Verifica se alguma linha da grid está selecionada
  	if DMENTRADA.WPedc.RecordCount = 0 then
  		Exit;

  	//Edmar - 25/09/2014 - Verifica se o pedido existe
  	if not FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsString, '') then
  		Exit;

   if DMENTRADA.TPedC.FieldByName('SITUACAO').AsString = 'FECHADO' then
   begin
   	Mensagem('   I N F O R M A Ç Ã O  ', 'A solicitação de compra já se encontra fechada.', '', 1, 1, False, 'I');
       Exit;
   end;

  	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente fechar a solicitação de compra ' + DMENTRADA.TPedC.FieldByName('NUMPED').AsString+'?', '', 2, 3, False, 'C') = 2 then
   BEGIN
     try
         //Edmar - 25/09/2014 - Atualiza a situação do pedido para FECHADO
         DMENTRADA.TPedC.Edit;
         DMENTRADA.TPedC.FieldByName('SITUACAO').AsString := 'FECHADO';
         DMENTRADA.TPedC.Post;

         DMENTRADA.IBT.CommitRetaining;
     except
         DMENTRADA.IBT.RollbackRetaining;
     end;
   end;

   AtualizaTabela('');
end;

procedure TFSolicitarCompra.BtnCancFechameClick(Sender: TObject);
begin
	//Edmar - 25/09/2014 - Verifica se alguma linha da grid está selecionada
  	if DMENTRADA.WPedc.RecordCount = 0 then
  		Exit;

  	//Edmar - 25/09/2014 - Verifica se o pedido existe
  	if not FiltraTabela(DMENTRADA.TPedC, 'PEDCOMPRA', 'COD_PEDCOMP', DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsString, '') then
  		Exit;

   if DMENTRADA.TPedC.FieldByName('SITUACAO').AsString = 'ABERTO' then
   begin
   	Mensagem('   I N F O R M A Ç Ã O  ', 'A solicitação de compra já se encontra aberta.', '', 1, 1, False, 'I');
       Exit;
   end;

  	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente cancelar o fechamento da solicitação de compra ' + DMENTRADA.TPedC.FieldByName('NUMPED').AsString+'?', '', 2, 3, False, 'C') = 2 then
   BEGIN
     try
         //Edmar - 25/09/2014 - Atualiza a situação do pedido para ABERTO
         DMENTRADA.TPedC.Edit;
         DMENTRADA.TPedC.FieldByName('SITUACAO').AsString := 'ABERTO';
         DMENTRADA.TPedC.Post;

         DMENTRADA.IBT.CommitRetaining;
     except
         DMENTRADA.IBT.RollbackRetaining;
     end;
   end;

   AtualizaTabela('');
end;

procedure TFSolicitarCompra.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
	//Edmar - 25/09/2014 - Filtra Fornecedor
	DMFAST.QAlx.Close;
   DMFAST.QAlx.SQL.Clear;
   DMFAST.QAlx.SQL.Add(' select vwfornec.nome, vwfornec.cpfcnpj, vwfornec.endereco, vwfornec.bairro, vwfornec.cidade, vwfornec.uf, ');
   DMFAST.QAlx.SQL.Add(' vwfornec.telrel from vwfornec where vwfornec.cod_fornec = :codigo ');
   DMFAST.QAlx.ParamByName('CODIGO').AsString := DMENTRADA.WPedc.FieldByName('COD_FORNEC').AsString;

   DMFAST.QAlx.Open;

   dataSetFornecedor.DataSet := DMFAST.QAlx;

   //Edmar - 25/09/2014 - Filtra itens da solicitação
   DMFAST.QItRel.Close;
   DMFAST.QItRel.SQL.Clear;
   DMFAST.QItRel.SQL.Add(' select subproduto.contrint, subproduto.codprodfabr, subproduto.descricao, subproduto.marca, estoque.estfisico, itenspedc.qtdeprod qtde from itenspedc ');
   DMFAST.QItRel.SQL.Add(' left join estoque on estoque.cod_estoque = itenspedc.cod_estoque ');
   DMFAST.QItRel.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMFAST.QItRel.SQL.Add(' where itenspedc.cod_pedcompra = :CODIGO ');
   DMFAST.QItRel.SQL.Add(' order by subproduto.descricao');
   DMFAST.QItRel.ParamByName('CODIGO').AsInteger := DMENTRADA.WPedc.FieldByName('COD_PEDCOMP').AsInteger;

   DMFAST.QItRel.Open;


   dataSetItens.DataSet := DMFAST.QItRel;

   //Edmar - 26/09/2014 - Filtra informações para o cabeçalho do comprovante
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select loja.logoempresa, empresa.fantasia, empresa.cnpj, empresa.endereco, empresa.numero, empresa.fone, empresa.bairro ');
   DMMACS.TALX.SQL.Add(' from empresa ');
   DMMACS.TALX.SQL.Add(' left join loja on loja.cod_empresa = empresa.cod_empresa ');
	DMMACS.TALX.Open;

   dataSetLoja.DataSet := DMMACS.TALX;

   dataSetPedido.DataSet := DMENTRADA.WPedc;

   frxComprovanteSolicitacao.LoadFromFile('C:\MZR\Macs\Rel\FrfComprovanteSolicitacao.fr3');
   frxComprovanteSolicitacao.ShowReport();
end;
procedure TFSolicitarCompra.BtnSelecionarClick(Sender: TObject);
begin

	//Edmar - 26/09/2014 - Verifica se a solicitação está FECHADA
   if DMENTRADA.WPedc.FieldByName('SITUACAO').AsString = 'FECHADO' then
   begin//não permitir inserir itens em uma solicitação fechada
   	Mensagem('   I N F O R M A Ç Ã O  ', 'A solicitação encontra-se fechada portando não será possivel incluir mais itens.', '', 1, 1, False, 'I');
       Exit;
   end;
   
	BtnConsultarClick(sender);
   //Edmar - 16/09/2014 - Filtra buscando  pelo codigo do estoque salvo anteriormete (linha 6832 - UProduto)
   if not FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', XCodEstoque, '') then
   begin
       ShowMessage('NÃO FOI ENCONTRADO O PRODUTO SOLICITADO');

       BtnCancelarClick(sender);

       Exit;
   end;
   //Edmar - 16/09/2014 - Preenche os campos com as informações do produto para inserção
   EscreveLabels;
   //deixa o campo quantidade com o foco
   EDQuantidade.SetFocus; 
end;

procedure TFSolicitarCompra.DBGridCadastroPadraoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	if (FMenu.xImportando) and (Key = #13) then
   	BtnSelecionarClick(sender);
end;

procedure TFSolicitarCompra.DBGridCadastroPadraoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	if DMENTRADA.WPedc.FieldByName('SITUACAO').AsString = 'ABERTO' then
   begin
		DBGridCadastroPadrao.Canvas.Font.Color := clRed;
       DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
          
	DBGridCadastroPadrao.Canvas.FillRect(Rect);
	DBGridCadastroPadrao.DefaultDrawDataCell(Rect, DBGridCadastroPadrao.Columns[datacol].Field, State);
end;

procedure TFSolicitarCompra.EventoImportacao;
begin
  //Edmar - 16/09/2014 - Se estiver importando
  if FMenu.xImportando then
  begin
    //seta variavel como false e fecha o formulários
    FMenu.xImportando := False;

    BtnSelecionar.Visible := False;

    Close;
  end; 
end;

end.

