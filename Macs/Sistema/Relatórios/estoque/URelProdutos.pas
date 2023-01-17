///////////////////////////////////////////////////////////////////////////////////////////////////////////////
//* * * Edmar - 10/02/2015 - Tela de filtro generica para gerar relatorios de estoque (solicitação 251) * * *//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
unit URelProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, ExtCtrls, UFrmBusca, Mask, frxClass, frxDBSet, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFRelProdutos = class(TFPadraoRelatorio)
    FrmProduto1: TFrmBusca;
    FrmProduto2: TFrmBusca;
    groupData: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    FrmCliente: TFrmBusca;
    FrxRel: TfrxReport;
    dbSetProdutos: TfrxDBDataset;
    dbSetAux: TfrxDBDataset;
    edDataInicial: TcxDateEdit;
    edDataFinal: TcxDateEdit;
    gbStatus: TGroupBox;
    cbAberta: TCheckBox;
    cbFechada: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FrmProduto1BTNMINUSClick(Sender: TObject);
    procedure FrmProduto2BTNMINUSClick(Sender: TObject);
    procedure FrmClienteBTNMINUSClick(Sender: TObject);
    procedure FrmProduto1EDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscaPeloProduto(XCODIGO: String);
    procedure FrmProduto2EDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmClienteEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure AdicionaFiltros;
    procedure RelatorioCustoProdutosVendidos;
    procedure RelatorioProdutosManutencao;
    function ValidaFiltros: Boolean;
    procedure FrmProduto1BTNOPENClick(Sender: TObject);
    procedure FrmProduto2BTNOPENClick(Sender: TObject);
    procedure FrmClienteBTNOPENClick(Sender: TObject);
    function AbreTabela: Boolean;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  	FRelProdutos: TFRelProdutos;
	XCOD_CLIENTE: Integer;
   XPRODUTO1, XPRODUTO2: String;
	
implementation

uses
	Alxor32, UDMEstoque, DB, UDMPESSOA, UMenu, AlxMessage, UDMMacs, UProduto,
  UCliente, UPadrao, UFORNECEDOR;

{$R *.dfm}

procedure TFRelProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  	//inicializa as variaveis com -1 para não haver conflito
	XCOD_CLIENTE := -1;
   XPRODUTO1 := '';
   XPRODUTO2 := '';
   
   if FMenu.XTipoRel = 'FRFPRODMANUTENCAO' then
   begin
   	FrmCliente.LTextoBusca.Caption := 'Fornecedor:';
       gbStatus.Visible := True;
   end;

   if FMenu.XTipoRel = 'RELCUSTOPRODVENDIDOS' then
   begin
   	FrmCliente.LTextoBusca.Caption := 'Cliente:';
       gbStatus.Visible := False;       
   end;
end;

procedure TFRelProdutos.FrmProduto1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	FrmProduto1.EDCodigo.Text := '';
   FrmProduto1.EdDescricao.Text := '';
   XPRODUTO1 := '';
end;

procedure TFRelProdutos.FrmProduto2BTNMINUSClick(Sender: TObject);
begin
  inherited;
	FrmProduto2.EDCodigo.Text := '';
   FrmProduto2.EdDescricao.Text := '';
   XPRODUTO2 := '';
end;

procedure TFRelProdutos.FrmClienteBTNMINUSClick(Sender: TObject);
begin
  inherited;
	FrmCliente.EDCodigo.Text := '';
   FrmCliente.EdDescricao.Text := '';
   XCOD_CLIENTE := -1;
end;

procedure TFRelProdutos.FrmProduto1EDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	//Edmar - 10/02/2015 - Enter busca o produto pelo controle interno ou cod. fabricante
	if Key = VK_RETURN then
   begin
   	try
           BuscaPeloProduto(FrmProduto1.EDCodigo.Text);

			//se não estiver vazio preenche o campo com a descrição do produto
           //e alimenta a variavel com o estoque
           if not DMESTOQUE.WSimilar.IsEmpty then
           begin
           	XPRODUTO1 := DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
               FrmProduto1.EdDescricao.Text := DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
           end
           else begin//se não achou nada, só limpa o campo e seta -1
           	FrmProduto1.EDCodigo.SelectAll;
               FrmProduto1.EdDescricao.Text := '';
               XPRODUTO1 := '';
           end;
       except
       	//o mesmo se deu algum erro na hora de buscar
       	FrmProduto1.EDCodigo.SelectAll;
           FrmProduto1.EdDescricao.Text := '';
       	XPRODUTO1 := '';
       end;
   end;

   //ESC
   if Key = VK_ESCAPE then
   begin
   	FrmProduto1.EDCodigo.Text := '';
       FrmProduto1.EdDescricao.Text := '';
       XPRODUTO1 := '';
   end;
end;

procedure TFRelProdutos.FrmProduto2EDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  	//Edmar - 10/02/2015 - Enter busca o produto pelo controle interno ou cod. fabricante
	if Key = VK_RETURN then
   begin
   	try
           BuscaPeloProduto(FrmProduto2.EDCodigo.Text);

			//se não estiver vazio preenche o campo com a descrição do produto
           //e alimenta a variavel com o estoque
           if not DMESTOQUE.WSimilar.IsEmpty then
           begin
           	XPRODUTO2 := DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
               FrmProduto2.EdDescricao.Text := DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
           end
           else begin//se não achou nada, só limpa o campo e seta -1
           	FrmProduto2.EDCodigo.SelectAll;
               FrmProduto2.EdDescricao.Text := '';
               XPRODUTO2 := '';
           end;
       except
       	//o mesmo se deu algum erro na hora de buscar
       	FrmProduto2.EDCodigo.SelectAll;
           FrmProduto2.EdDescricao.Text := '';
       	XPRODUTO2 := '';
       end;
   end;

   //ESC
   if Key = VK_ESCAPE then
   begin
   	FrmProduto2.EDCodigo.Text := '';
       FrmProduto2.EdDescricao.Text := '';
       XPRODUTO2 := '';
   end;
end;

//Edmar - 10/02/2015 - Metodo auxiliar para filtras o produto pelo codigo
procedure TFRelProdutos.BuscaPeloProduto(XCODIGO: String);
begin
	//se não achou pelo controle interno
	if not FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'CONTRINT', XCODIGO, '') then
   	//busca pelo codigo do fabricante
       if not FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'CODFABRICANTE', XCODIGO, '') then
       	//busca pelo codigo
           FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_INTERNO', XCODIGO, '');
end;
procedure TFRelProdutos.FrmClienteEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	if Key = VK_RETURN then
   begin
   	try
  			if FrmCliente.LTextoBusca.Caption = 'Cliente:' then
	   		begin
           	if FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', FrmCliente.EDCodigo.Text, '') then
               begin//se achou o cliente preeche o campo e alimenta variavel
                   FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
                   XCOD_CLIENTE := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
               end
               else begin//senão, limpa a descrição e seta -1 para não haver problemas
                   FrmCliente.EDCodigo.SelectAll;
                   FrmCliente.EdDescricao.Text := '';
                   XCOD_CLIENTE := -1;
               end;
           end
           else begin
				if FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_INTERNO', FrmCliente.EDCodigo.Text, '') then
               begin//se achou o cliente preeche o campo e alimenta variavel
                   FrmCliente.EdDescricao.Text := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
                   XCOD_CLIENTE := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
               end
               else begin//senão, limpa a descrição e seta -1 para não haver problemas
                   FrmCliente.EDCodigo.SelectAll;
                   FrmCliente.EdDescricao.Text := '';
                   XCOD_CLIENTE := -1;
               end;
           end;
       except//o mesmo caso ocorra algum erro no processo
   		FrmCliente.EDCodigo.SelectAll;
       	FrmCliente.EdDescricao.Text := '';
       	XCOD_CLIENTE := -1;
       end;
   end;
   //ESC
   if Key = VK_ESCAPE then
   begin//limpa os campos. seta -1
   	FrmCliente.EDCodigo.Text := '';
       FrmCliente.EdDescricao.Text := '';
       XCOD_CLIENTE := -1;
   end;
end;

procedure TFRelProdutos.BtnVisualizarClick(Sender: TObject);
var
	xFiltrosEscolhidos: String;
begin
   PComunica.Visible := True;
   PComunica.BringToFront;
	PComunica.Caption := 'Aguarde! Estamos gerando seu relatório...';
   PComunica.Refresh;
   PComunica.Update;
   //
	if ValidaFiltros then
   begin
   	try
       	xFiltrosEscolhidos := '';

           FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
                      
           //Edmar - 10/02/2015 - Deixa a tabela em modo de edição para incluir as
           //informações temporarias do relatorio (nome da empresa e filtros escolhidos)
           DMMACS.TLoja.Edit;
                      
           //verifica quais filtros foram escolhidos e concatena na variavel auxiliar
           if (XPRODUTO1 <> '') AND (XPRODUTO2 <> '') then
               xFiltrosEscolhidos := xFiltrosEscolhidos + 'Produto '+XPRODUTO1+'-'+XPRODUTO2+' / '
           else
				xFiltrosEscolhidos := xFiltrosEscolhidos + '(TODO O ESTOQUE) / ';
               
           //validação datas vazias
           if (edDataInicial.Text <> '') AND (edDataFinal.Text <> '') then
				xFiltrosEscolhidos := xFiltrosEscolhidos + 'Intervalo de datas '+edDataInicial.Text+'-'+edDataFinal.Text+' / ';

           //valida se foi selecionado um cliente
           if XCOD_CLIENTE <> -1 then
           	xFiltrosEscolhidos := xFiltrosEscolhidos + 'Cliente: '+FrmCliente.EdDescricao.Text;

           DMMACS.TLoja.FieldByName('TMP1').AsString := xFiltrosEscolhidos;
       	if FMenu.XTipoRel = 'RELCUSTOPRODVENDIDOS' then
           	DMMACS.TLoja.FieldByName('TMP2').AsString := DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString
           else
				DMMACS.TLoja.FieldByName('TMP2').AsString:='Ordem de Manutenção/Relatórios/Produtos Manutenção';
                                    
           DMMACS.TLoja.Post;
           
           DMMACS.Transaction.CommitRetaining;
       except
       	DMMACS.Transaction.RollbackRetaining;
       end;

       if FMenu.XTipoRel = 'RELCUSTOPRODVENDIDOS' then
           RelatorioCustoProdutosVendidos;
           
       if FMenu.XTipoRel = 'FRFPRODMANUTENCAO' then
       	RelatorioProdutosManutencao;
   end;
   //
   PComunica.Visible := False;
   PComunica.SendToBack;
end;

//Edmar - 10/02/2015 - Procedimento auxiliar para adicionar os filtros a SQL
//da consulta
procedure TFRelProdutos.AdicionaFiltros;
begin
	//valida se foi selecionado algum produto para o filtros
   if (XPRODUTO1 <> '') AND (XPRODUTO2 <> '') then
   begin
   	if FMenu.XTipoRel = 'FRFPRODMANUTENCAO' then
   		DMESTOQUE.TRel.SQL.Add(' AND ((UPPER(VWSIMILAR.DESCRICAO) BETWEEN UPPER(:PRODUTO1) AND UPPER(:PRODUTO2)) OR (UPPER(PEDCOMPRA.DESCRICAO_PRODMANUTENCAO) BETWEEN UPPER(:PRODUTO1) AND UPPER(:PRODUTO2))) ');

   	if FMenu.XTipoRel = 'RELCUSTOPRODVENDIDOS' then
   		DMESTOQUE.TRel.SQL.Add(' AND (UPPER(VWSIMILAR.DESCRICAO) BETWEEN UPPER(:PRODUTO1) AND UPPER(:PRODUTO2)) ');

       DMESTOQUE.TRel.ParamByName('PRODUTO1').AsString := XPRODUTO1;
       DMESTOQUE.TRel.ParamByName('PRODUTO2').AsString := XPRODUTO2;
   end;

   //validação datas vazias
   if (edDataInicial.Text <> '') AND (edDataFinal.Text <> '') then
   begin
   	if FMenu.XTipoRel = 'FRFPRODMANUTENCAO' then
       	DMESTOQUE.TRel.SQL.Add(' AND (VWPEDC.DTPEDCOMP BETWEEN :INICIAL AND :FINAL) ');

       if FMenu.XTipoRel = 'RELCUSTOPRODVENDIDOS' then
       	DMESTOQUE.TRel.SQL.Add(' AND (ITENSPEDVEN.DATA BETWEEN :INICIAL AND :FINAL) ');


       DMESTOQUE.TRel.ParamByName('INICIAL').AsDate := StrToDate(edDataInicial.Text);
       DMESTOQUE.TRel.ParamByName('FINAL').AsDate := StrToDate(edDataFinal.Text);
   end;

   //valida se foi selecionado um cliente
   if XCOD_CLIENTE <> -1 then
   begin
   	if FMenu.XTipoRel = 'FRFPRODMANUTENCAO' then
       	DMESTOQUE.TRel.SQL.Add(' AND (VWPEDC.COD_FORNEC = :PESSOA) ');

       if FMenu.XTipoRel = 'RELCUSTOPRODVENDIDOS' then
   		DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.COD_CLIENTE = :PESSOA) ');
           
       DMESTOQUE.TRel.ParamByName('PESSOA').AsInteger := XCOD_CLIENTE;
   end;

	//se o relatorio for de manutenção
   if FMenu.XTipoRel = 'FRFPRODMANUTENCAO' then
   begin
   	//valida qual opção foi selecionada (aberta ou fechada)
       if cbAberta.Checked and not cbFechada.Checked then
       	DMESTOQUE.TRel.SQL.Add(' AND (VWPEDC.SITUACAO = ''ABERTO'') ');

       if not cbAberta.Checked and cbFechada.Checked then
       	DMESTOQUE.TRel.SQL.Add(' AND (VWPEDC.SITUACAO = ''FECHADO'') ');
   end;   
end;

//Edmar - 10/02/2015 - Procedimento auxiliar para incluir as informações
//necessárias para gerar o relatorio de custo dos produtos vendidos
procedure TFRelProdutos.RelatorioCustoProdutosVendidos;
begin
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add(' SELECT VWSIMILAR.COD_SUBPRODUTO, VWSIMILAR.CONTRINT, VWSIMILAR.DESCRICAO, VWSIMILAR.VLRUNITCOMPRA CUSTO, VWSIMILAR.VENDATAV VENDA, ');
   DMESTOQUE.TRel.SQL.Add(' PEDVENDA.NUMPED NUMERO, ITENSPEDVEN.DATA, ITENSPEDVEN.QTDEPROD QTD, ');
   DMESTOQUE.TRel.SQL.Add(' (ITENSPEDVEN.VALCOMP / ITENSPEDVEN.QTDEPROD) VLRUNITCOMPRA, ITENSPEDVEN.VALCOMP VLRTOTALCOMPRA, ');
   DMESTOQUE.TRel.SQL.Add(' ITENSPEDVEN.VALUNIT VLRUNITVENDA, ITENSPEDVEN.VALORTOTAL VLRTOTALVENDA, ');
   DMESTOQUE.TRel.SQL.Add(' (ITENSPEDVEN.VALORTOTAL - ITENSPEDVEN.VALCOMP) LUCROAPROXIMADO FROM ITENSPEDVEN ');
   DMESTOQUE.TRel.SQL.Add(' LEFT JOIN VWSIMILAR ON VWSIMILAR.COD_ESTOQUE = ITENSPEDVEN.COD_ESTOQUE ');
   DMESTOQUE.TRel.SQL.Add(' LEFT JOIN PEDVENDA ON PEDVENDA.COD_PEDVENDA = ITENSPEDVEN.COD_PEDVEN ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (VWSIMILAR.DESCRICAO IS NOT NULL) ');

   AdicionaFiltros;

   DMESTOQUE.TRel.SQL.Add(' ORDER BY DESCRICAO, COD_SUBPRODUTO, DATA ');

   if AbreTabela then
   begin
       FrxRel.LoadFromFile('C:\MZR\Macs\Rel\FrfCustoProdVendidos.fr3');
       FrxRel.ShowReport();
   end;
end;

function TFRelProdutos.ValidaFiltros: Boolean;
begin
	Result := True;
   //
   //se selecionou apenas um dos produtos no filtros
   if ((XPRODUTO1 <> '') AND (XPRODUTO2 = '')) OR ((XPRODUTO1 = '') AND (XPRODUTO2 <> '')) then
   begin
   	Mensagem(' I N F O R M A Ç Ã O ', 'Caso queira filtrar pelo produto, é necessário escolher os produtos desejados em ambos os campos.', '', 1, 1, False, 'I');
   	Result := False;
       Exit;
   end;

   //se não foi informado uma das datas
   if ((edDataInicial.Text <> '') AND (edDataFinal.Text = '')) OR ((edDataInicial.Text = '') AND (edDataFinal.Text <> '')) then
   begin
   	Mensagem(' I N F O R M A Ç Ã O ', 'O intervalo de datas devem estar completas. As duas datas devem ser informadas.', '', 1, 1, False, 'I');
   	Result := False;
   	Exit;
   end;
   //se foi informado uma data, valida o intervalo
   if (edDataInicial.Text <> '') AND (edDataFinal.Text <> '') then
   begin
   	//se data inicial é maior que data final
   	if StrToDate(edDataInicial.Text) > StrToDate(edDataFinal.Text) then
   	begin
   		Mensagem(' I N F O R M A Ç Ã O ', 'A data inicial não pode ultrapassar a data final', '', 1, 1, False, 'I');
       	Result := False;
       	Exit;
   	end;
   end;

   //se o relatorio for de manutenção
   if FMenu.XTipoRel = 'FRFPRODMANUTENCAO' then
   begin
   	//se foi escolhido alguma opção entre aberta e fechada
       if not cbAberta.Checked and not cbFechada.Checked then
       begin
           Mensagem(' A T E N Ç Ã O ', 'Por favor, selecione entre a opção de Abertas, Fechadas ou ambas.', '', 1, 1, False, 'A');
           Result := False;
           Exit;
       end;
   end;
   //
	Result := True;   
end;

procedure TFRelProdutos.FrmProduto1BTNOPENClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
	   XPRODUTO1 := DMESTOQUE.WSIMILAR.FieldByName('DESCRICAO').AsString;
      FrmProduto1.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
      FrmProduto1.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
   End;
end;

procedure TFRelProdutos.FrmProduto2BTNOPENClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
	   XPRODUTO2 := DMESTOQUE.WSIMILAR.FieldByName('DESCRICAO').AsString;
      FrmProduto2.EdDescricao.Text := DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
      FrmProduto2.EDCodigo.text := DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
   End;
end;

procedure TFRelProdutos.FrmClienteBTNOPENClick(Sender: TObject);
begin
  inherited;
  	if FrmCliente.LTextoBusca.Caption = 'Cliente:' then
   begin
   	If AbrirForm(TFCliente, FCliente, 1)='Selected' then
       begin
           XCOD_CLIENTE := DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
           FrmCliente.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FrmCliente.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
       end;
   end
   else begin
   	If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected' then
       begin
           XCOD_CLIENTE := DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
           FrmCliente.EDCodigo.Text := DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
           FrmCliente.EdDescricao.Text := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       end;
   end;
end;

procedure TFRelProdutos.RelatorioProdutosManutencao;
begin
	DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
	DMESTOQUE.TRel.SQL.Add(' select vwpedc.cod_pedcomp, pedcompra.cod_prodmanutencao, pedcompra.descricao_prodmanutencao, itenspedc.cod_itenspedc, vwpedc.cod_usuario, vwpedc.cod_loja, vwsimilar.cod_interno, vwsimilar.descricao, itenspedc.obs, vwpedc.dtpedcomp, vwpedc.FORMPAG,' );
  	DMESTOQUE.TRel.SQL.Add(' vwpedc.nome, vwpedc.numped, vwpedc.valor, vwpedc.numdev, PRODUTO.descricao AS PRODUTO, SUBPRODUTO.CONTRINT, subproduto.codcomposto, subproduto.descricao as NOMEPRODUTO,vwfuncionario.nome as Responsavel,');
  	DMESTOQUE.TRel.SQL.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD,');
  	DMESTOQUE.TRel.SQL.Add(' subproduto.marca,subproduto.codprodfabr, itenspedc.valortotal, vwsimilar.codfabricante, vwsimilar.contrint as ControleInterno ');
  	DMESTOQUE.TRel.SQL.Add(' from vwpedc');
  	DMESTOQUE.TRel.SQL.Add(' left join vwfuncionario on vwpedc.cod_usuario = vwfuncionario.cod_func ');
  	DMESTOQUE.TRel.SQL.Add(' left join pedcompra on vwpedc.cod_pedcomp = pedcompra.cod_pedcomp ');
  	DMESTOQUE.TRel.SQL.Add(' left join itenspedc on vwpedc.cod_pedcomp = itenspedc.cod_pedcompra');
  	DMESTOQUE.TRel.SQL.Add(' left join vwsimilar on vwsimilar.cod_estoque = itenspedc.cod_estoque');
  	DMESTOQUE.TRel.SQL.Add(' left join estoque on estoque.cod_estoque=itenspedc.cod_estoque ');
  	DMESTOQUE.TRel.SQL.Add(' left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
  	DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
  	DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
  	DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
  	DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')  AND (vwpedc.numdev='+#39+'ORM'+#39+')');

   AdicionaFiltros;

   DMESTOQUE.TRel.SQL.Add('ORDER BY DESCRICAO_PRODMANUTENCAO, VWPEDC.NOME ');

   if AbreTabela then
   begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FRFPRODMANUTENCAO.frf');
      	FSRel.ShowReport;
   end;   
end;

function TFRelProdutos.AbreTabela: Boolean;
begin
	DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.Open;
   DMESTOQUE.TRel.First;
   if DMESTOQUE.TRel.IsEmpty then
   begin
		Mensagem('INFORMAÇÃO', ' O Relatório retornou sem informações!', '', 1, 1, False, 'I');
       Result:=False;
	end
   else begin
       dbSetProdutos.DataSet := DMESTOQUE.TRel;
       dbSetAux.DataSet := DMMACS.TLoja;   
       Result:=True;
   end;
end;

procedure TFRelProdutos.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Relatórios';
end;

end.

