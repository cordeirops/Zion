unit UContagemEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit,
  ExtCtrls, DB, EditFloat, UMDO, UMenu;

type
  TFContagemEstoque = class(TFCadPadrao)
    BtnZerar: TBitBtn;
    edCtrInt: TFlatEdit;
    lPesquisa: TLabel;
    DBGrid: TDBGrid;
    pContagem: TPanel;
    Label1: TLabel;
    lCodigoProduto: TLabel;
    edQtdeContagem: TFloatEdit;
    BtnAjustarEst: TBitBtn;
    Label2: TLabel;
    edFabricante: TFlatEdit;
    edDescricao: TFlatEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridDblClick(Sender: TObject);
    procedure GridCellClick(Column: TColumn);
    procedure edQtdeContagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCtrIntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnZerarClick(Sender: TObject);
    procedure BtnAjustarEstClick(Sender: TObject);
    procedure edDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFabricanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCtrIntEnter(Sender: TObject);
    procedure edFabricanteEnter(Sender: TObject);
    procedure edDescricaoEnter(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private
    { Private declarations }
    procedure FiltraProdutoContagem(Ordem: String);
    procedure AlteraContagem;
    function CorrigeEstoqueFisicoCalculado: Boolean;
  public
    { Public declarations }
  end;

var
  FContagemEstoque: TFContagemEstoque;


implementation

uses UDMEstoque, AlxMessage, Alxor32, UPadrao, UDMEntrada, UDMSaida, Math,
  UDMMacs;

var
	XCodEstoque: String;
   
{$R *.dfm}

procedure TFContagemEstoque.FormActivate(Sender: TObject);
begin
  inherited;
   DMESTOQUE.TransacEstoque.CommitRetaining;

   PCadastro.Visible := True;
   PCadastro.BringToFront;
   //
   PConsulta.Visible := False;
   PConsulta.SendToBack;
   //
	FiltraProdutoContagem('CONTRINT');
   edCtrInt.SetFocus;
end;

procedure TFContagemEstoque.BtnGravarClick(Sender: TObject);
var
	xOperacao: String;
   xQtdeLancada, xMediaCustos: Real;
begin
	try
       If MessageDlg('Aplicar a contagem de estoque?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
       Then Begin
   	    PComunica.Visible := True;
  	        PComunica.Caption := 'AGUARDE!';
   	    PComunica.BringToFront;
   	    PComunica.Refresh;
   	    PComunica.Update;

           //Edmar - 16/12/2015
   	    try
               DMENTRADA.IBT.CommitRetaining;
               DMSAIDA.IBT.CommitRetaining;
               DMESTOQUE.TransacEstoque.CommitRetaining;
               MDO.Transac.CommitRetaining;
           
       	    //if not CorrigeEstoqueFisicoCalculado then
               //	Exit;

               //lança a entrada ou saída para correção do estoque (estoque calculado)
               MDO.QConsulta.Close;
               MDO.QConsulta.SQL.Clear;
               MDO.QConsulta.SQL.Add(' SELECT ESTOQUE.COD_ESTOQUE, ESTOQUE.ESTFISICO ESTOQUE, ESTOQUE.CONTAGEM, ESTOQUE.VLRUNITCOMP ');
               MDO.QConsulta.SQL.Add(' FROM ESTOQUE ');
               MDO.QConsulta.SQL.Add(' WHERE ESTOQUE.EXPORTAR = ''1'' ');
               MDO.QConsulta.Open;
               MDO.QConsulta.First;

               while not MDO.QConsulta.Eof do
               begin
                   if MDO.QConsulta.FieldByName('CONTAGEM').AsCurrency > MDO.QConsulta.FieldByName('ESTOQUE').AsCurrency then//Entrada de Estoque
                   begin
                       xOperacao := 'E';
                       xQtdeLancada := MDO.QConsulta.FieldByName('CONTAGEM').AsCurrency - MDO.QConsulta.FieldByName('ESTOQUE').AsCurrency;
                   end
                   else begin
                       xOperacao := 'S';
                       xQtdeLancada := MDO.QConsulta.FieldByName('ESTOQUE').AsCurrency - MDO.QConsulta.FieldByName('CONTAGEM').AsCurrency;
                   end;

                   LancaEstoqueCorrecaoGeneric(xOperacao, xQtdeLancada, MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger,
                   'Lançamento de Correção de Estoque');
                   
                   {
                   //
                   if xOperacao = 'E' then//Entrada de estoque
                   begin
                       //criando um novo CustoEstoqueEmpresa sem ItemPedido e armazenar a média dos custos disponiveis
                       //ou o valor de compra do Produto quando não existir custos ativos
                       MDO.QAlx1.Close;
                       MDO.QAlx1.SQL.Clear;
                       MDO.QAlx1.SQL.Add(' SELECT (SUM(VALORUNITARIOCUSTO) / COUNT(cod_custoestoqueempresa)) AS MEDIACUSTO ');
                       MDO.QAlx1.SQL.Add(' FROM CUSTOESTOQUEEMPRESA ');
                       MDO.QAlx1.SQL.Add(' WHERE (ATIVO = ''1'') AND (QUANTIDADEDISPONIVELVENDA > 0) ');
                       MDO.QAlx1.SQL.Add(' AND (COD_ESTOQUE = :COD_ESTOQUE) ');
                       MDO.QAlx1.ParamByName('COD_ESTOQUE').AsInteger := MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger;
                       MDO.QAlx1.Open;
                       if (MDO.QAlx1.FieldByName('MEDIACUSTO').AsString = '') then
                           //quando não existe custos disponiveis, buscamos o proprio valor de compra do produto
                           xMediaCustos := MDO.QConsulta.FieldByName('VLRUNITCOMP').AsCurrency
                       else
                           xMediaCustos := MDO.QAlx1.FieldByName('MEDIACUSTO').AsCurrency;

                       InserirItemCustoProduto(MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger, -1,
                       xMediaCustos, xQtdeLancada, Date(), 'LANCEST');
                   end
                   else begin//Saída de estoque
                       //busca o custo mais antigo com estoque, dá saída de estoque nele e atualiza.
                       //se a quantidade existente pra ele não for o suficiente para a venda, busca pelo
                       //proximo mais antigo (nunca ficar negativo)
                       AplicaSaidaCustoEstoque(MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger, -1, '', xQtdeLancada);
                   end;
                    }
                   MDO.QConsulta.Next;
               end;

       	    //ATUALIZAR ESTOQUE

               //atribui null para a CONTAGEM e para EXPORTAR
               MDO.QAlx1.Close;
               MDO.QAlx1.SQL.Clear;
               MDO.QAlx1.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.CONTAGEM = 0, ESTOQUE.EXPORTAR = null ');
               //MDO.QAlx1.SQL.Add(' WHERE ESTOQUE.EXPORTAR = ''1'' ');
               MDO.QAlx1.ExecSQL;

               //commits
               DMENTRADA.IBT.CommitRetaining;
               DMSAIDA.IBT.CommitRetaining;
               MDO.Transac.CommitRetaining;
           
               FiltraProdutoContagem('CONTRINT');
               edCtrInt.SetFocus;
           except
               On E : Exception do
               begin
                   DMENTRADA.IBT.RollbackRetaining;
                   DMSAIDA.IBT.RollbackRetaining;
                   MDO.Transac.RollbackRetaining;

                   MessageDlg(E.Message, mtError, [mbOK], 0);
               end;
           end;
       End;
   finally
       PComunica.Visible := False;
       PComunica.SendToBack;
   End;
end;

procedure TFContagemEstoque.BtnCancelarClick(Sender: TObject);
begin
	//
   Close;
end;

procedure TFContagemEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //
end;

procedure TFContagemEstoque.FiltraProdutoContagem(Ordem: String);
begin
	DMESTOQUE.TItensContagem.Close;
   DMESTOQUE.TItensContagem.SQL.Clear;
   DMESTOQUE.TItensContagem.SQL.Add(' SELECT ESTOQUE.COD_ESTOQUE, SUBPRODUTO.CONTRINT, SUBPRODUTO.CODPRODFABR, SUBPRODUTO.DESCRICAO, ');
   DMESTOQUE.TItensContagem.SQL.Add(' ESTOQUE.ESTFISICO, ESTOQUE.CONTAGEM, ESTOQUE.EXPORTAR ');
   DMESTOQUE.TItensContagem.SQL.Add(' FROM SUBPRODUTO ');
   DMESTOQUE.TItensContagem.SQL.Add(' LEFT JOIN ESTOQUE ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
   DMESTOQUE.TItensContagem.SQL.Add(' WHERE (SUBPRODUTO.ATIVO = ''S'') ');
   If (Ordem = 'CONTRINT') AND ( edCtrInt.Text <> '') Then
       DMESTOQUE.TItensContagem.SQL.Add(' AND (SUBPRODUTO.CONTRINT = ' + #39 + edCtrInt.Text + #39 + ') ');
   If (Ordem = 'CODPRODFABR') AND (edFabricante.Text <> '') Then
       DMESTOQUE.TItensContagem.SQL.Add(' AND (SUBPRODUTO.codprodfabr = ' + #39 + edFabricante.Text + #39 + ') ');
   If (Ordem = 'DESCRICAO') AND (edDescricao.Text <> '') Then
       DMESTOQUE.TItensContagem.SQL.Add(' AND (upper(DESCRICAO) like upper('+#39+edDescricao.Text+'%'+#39+'))  ');

   DMESTOQUE.TItensContagem.SQL.Add(' ORDER BY SUBPRODUTO.' + Ordem);
   DMESTOQUE.TItensContagem.Open;

   XCodEstoque := DBGrid.Columns[0].Field.Text;   
end;

procedure TFContagemEstoque.AlteraContagem;
begin
	//
   pContagem.Visible := True;
   pContagem.BringToFront;
   
   edQtdeContagem.Text := '';
   edQtdeContagem.SetFocus;
   
	lCodigoProduto.Caption := XCodEstoque;      
end;

procedure TFContagemEstoque.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	if Key = VK_Return then
   begin
       AlteraContagem;
   end;
end;

procedure TFContagemEstoque.DBGridDblClick(Sender: TObject);
begin
  inherited;
	AlteraContagem;
end;

procedure TFContagemEstoque.GridCellClick(Column: TColumn);
begin
  inherited;
	XCodEstoque := DBGrid.Columns[0].Field.Text;
end;

procedure TFContagemEstoque.edQtdeContagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
   xIndex: TBookmark;
begin
  inherited;
   //salva a posição do scroll
   xIndex := DMESTOQUE.TItensContagem.GetBookmark;
	//
	if Key = VK_ESCAPE then
   begin
   	pContagem.Visible := False;
       pContagem.SendToBack;

       edCtrInt.SetFocus;

       Exit;
   end;

   if (Key = VK_RETURN) AND (Trim(edQtdeContagem.Text) <> '') then
   begin
   	try
   		//atualiza a contagem do produto
       	MDO.Query.Close;
       	MDO.Query.SQL.Clear;
       	MDO.Query.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.CONTAGEM = :CONTAGEM, ESTOQUE.EXPORTAR = ''1'' ');
       	MDO.Query.SQL.Add(' WHERE ESTOQUE.COD_ESTOQUE = :CODIGO ');
       	MDO.Query.ParamByName('CONTAGEM').AsCurrency := edQtdeContagem.ValueNumeric;
       	MDO.Query.ParamByName('CODIGO').AsString := lCodigoProduto.Caption;
       	MDO.Query.ExecSQL;

           MDO.Transac.CommitRetaining;
       except
       	On E : Exception do
           begin
       		MDO.Transac.RollbackRetaining;
               MessageDlg(E.Message, mtWarning, [mbOK], 0);
           end;
       end;

   	pContagem.Visible := False;
       pContagem.SendToBack;

       FiltraProdutoContagem('CONTRINT');
       edCtrInt.SetFocus;

       //retorna a posição do scroll
       DMESTOQUE.TItensContagem.GotoBookmark(xIndex);
       DMESTOQUE.TItensContagem.FreeBookmark(xIndex);
   end;
end;

procedure TFContagemEstoque.DBGridKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   XCodEstoque := DBGrid.Columns[0].Field.Text;
end;

procedure TFContagemEstoque.edCtrIntKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = Vk_Down then
   begin
   	DMESTOQUE.TItensContagem.Next;
       XCodEstoque := DBGrid.Columns[0].Field.Text;
       Exit;
   end;

   if Key = Vk_UP then
   begin
   	DMESTOQUE.TItensContagem.Prior;
       XCodEstoque := DBGrid.Columns[0].Field.Text;
       Exit;
   end;

   if Key = VK_RETURN then
   begin
       FiltraProdutoContagem('CONTRINT');
   	//AlteraContagem;
       Exit;
   end;

	if (Key = VK_ESCAPE) then
   begin
       edCtrInt.Text := '';
   	FiltraProdutoContagem('CONTRINT');
   	Exit;
   end;

   if Key = VK_F9 then
   begin
   	AlteraContagem;
       Exit;
   end;

end;

procedure TFContagemEstoque.BtnZerarClick(Sender: TObject);
begin
	try
   	if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente zerar a contagem (o processo não poderá ser desfeito)?', '', 2, 3, False, 'C') = 2 then
       begin
   		//Edmar - 16/12/2015 - seta como null a CONTAGEM e o EXPORTAR o estoque que estiver com EXPORTAR = 1
       	MDO.Query.Close;
       	MDO.Query.SQL.Clear;
       	MDO.Query.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.CONTAGEM = null, ESTOQUE.EXPORTAR = null ');
       	MDO.Query.SQL.Add(' WHERE ESTOQUE.EXPORTAR = ''1'' ');
       	MDO.Query.ExecSQL;

       	MDO.Transac.CommitRetaining;
           DMESTOQUE.TransacEstoque.CommitRetaining;

			FiltraProdutoContagem('CONTRINT');
           edCtrInt.SetFocus;
       end;
   except
   	On E : Exception do
       begin
   		MDO.Transac.RollbackRetaining;
           MessageDlg('Falhou: '+#13#10+E.Message, mtWarning, [mbOK], 0);
       end;
   end;
end;

function TFContagemEstoque.CorrigeEstoqueFisicoCalculado: Boolean;
var
	QtdEntradas: Real;
   QtdSaidas: Real;
begin
	try
   	Result := True;
       
   	MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' SELECT ESTOQUE.COD_ESTOQUE, ESTOQUE.ESTINI FROM ESTOQUE WHERE ESTOQUE.EXPORTAR = ''1'' ');
       MDO.QConsulta.Open;
       MDO.QConsulta.First;

       while not MDO.QConsulta.Eof do
       begin
       	QtdEntradas := 0;
	   		QtdSaidas := 0;
           
       	DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add('SELECT SUM(VWlancent.quantidade) AS TOTENT FROM VWlancent where VWlancent.cod_estoque=:CODESTOQUE');
           DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsInteger:=MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger;
           DMESTOQUE.Alx.Open;
           QtdEntradas:=QtdEntradas+DMESTOQUE.ALX.FieldByName('TOTENT').AsCurrency;

           //FILTRA  E TOTALIZA LANÇAMENTOS DE SAIDA PARA CORREÇÃO
           DMESTOQUE.Alx1.Close;
           DMESTOQUE.Alx1.SQL.Clear;
           DMESTOQUE.Alx1.SQL.Add('select SUM(VWlancsai.quantidade) AS TOTSAI  from vwlancsai where vwlancsai.cod_estoque=:CODESTOQUE');
           DMESTOQUE.Alx1.ParamByName('CODESTOQUE').AsInteger:=MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger;
           DMESTOQUE.Alx1.Open;
           QtdSaidas:=QtdSaidas+DMESTOQUE.ALX1.FieldByName('TOTSAI').AsCurrency;

           //FILTRA  E TOTALIZA LANÇAMENTOS DE Producao
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('  select SUM(iprdmat.qtd) AS TOTSAI  from iprdmat ');
           DMMACS.TALX.SQL.Add('   left join subproduto on iprdmat.cod_subproduto = subproduto.cod_subproduto ');
           DMMACS.TALX.SQL.Add('   left join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
           DMMACS.TALX.SQL.Add('   left join producao on iprdmat.cod_iprdmat = producao.cod_producao ');
           DMMACS.TALX.SQL.Add('   where estoque.cod_estoque=:CODIGO ');
           DMMACS.TALX.ParamByName('CODIGO').AsInteger:=MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger;
           DMMACS.TALX.Open;
           QtdSaidas:=QtdSaidas+DMMACS.TALX.FieldByName('TOTSAI').AsCurrency;

           //FILTRA  E TOTALIZA LANÇAMENTOS DE COMPRAS
           DMESTOQUE.Alx3.Close;
           DMESTOQUE.Alx3.SQL.Clear;
           DMESTOQUE.Alx3.SQL.Add(' Select SUM(itenspedc.valortotal) AS TOTCOMP, SUM(itenspedc.qtdest) AS TOTENT ');
           DMESTOQUE.Alx3.SQL.Add(' From itenspedc ');
           DMESTOQUE.Alx3.SQL.Add(' left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
           DMESTOQUE.Alx3.SQL.Add(' Where (Estoque.Cod_Estoque=:CODESTOQUE) ');
           DMESTOQUE.Alx3.ParamByName('CODESTOQUE').AsInteger:=MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger;
           DMESTOQUE.Alx3.Open;
           QtdEntradas:=QtdEntradas+DMESTOQUE.Alx3.FieldByName('TOTENT').AsCurrency;

           //FILTRA  E TOTALIZA LANÇAMENTOS DE VENDAS
           DMESTOQUE.Alx2.Close;
           DMESTOQUE.Alx2.SQL.Clear;
           DMESTOQUE.Alx2.SQL.Add(' Select SUM(itenspedven.valortotal) AS TOTVEND, SUM(itenspedven.qtdeprod) AS TOTSAI, SUM(itenspedven.comissao) AS TOTCOMI, SUM(itenspedven.lucmoe) AS TOTLUCMOE');
           DMESTOQUE.Alx2.SQL.Add(' From itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
           DMESTOQUE.Alx2.SQL.Add(' left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
           DMESTOQUE.Alx2.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
           DMESTOQUE.Alx2.SQL.Add(' Where (Estoque.Cod_Estoque=:CODESTOQUE) ');
           DMESTOQUE.Alx2.ParamByName('CODESTOQUE').AsInteger:=MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger;
           DMESTOQUE.Alx2.Open;
           QtdSaidas:=QtdSaidas+DMESTOQUE.Alx2.FieldByNAme('TOTSAI').AsCurrency;

           //FILTRA  E TOTALIZA LANÇAMENTOS DE ordens de serviço
           DMESTOQUE.Alx4.Close;
           DMESTOQUE.Alx4.SQL.Clear;
           DMESTOQUE.Alx4.SQL.Add(' Select SUM(itprodord.total) AS TOTVEND, SUM(itprodord.qtd) AS TOTSAI ');
           DMESTOQUE.Alx4.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
           DMESTOQUE.Alx4.SQL.Add(' Where (itprodord.cod_estoque=:CODESTOQUE) ');
           DMESTOQUE.Alx4.ParamByName('CODESTOQUE').AsInteger:=MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger;
           DMESTOQUE.Alx4.Open;
           QtdSaidas:=QtdSaidas+DMESTOQUE.Alx4.FieldByNAme('TOTSAI').AsCurrency;

           {
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.ESTFISICO = :ESTOQUE ');
           MDO.Query.SQL.Add(' WHERE ESTOQUE.COD_ESTOQUE = :CODIGO ');
           MDO.Query.ParamByName('ESTOQUE').AsCurrency := MDO.QConsulta.FieldByName('ESTINI').AsCurrency + QtdEntradas - QtdSaidas;
           MDO.Query.ParamByName('CODIGO').AsInteger := MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger;
           MDO.Query.ExecSQL;
           }

           MDO.QConsulta.Next;
       end;
       
       MDO.Transac.CommitRetaining;
   except
       On E : Exception do
       begin
       	Result := False;
           Raise Exception.Create('Não foi possível corrigir o estoque: '+#13+#10+E.Message);
       end;
   end;
end;

procedure TFContagemEstoque.BtnAjustarEstClick(Sender: TObject);
var
  XQtdEnt, XQtdSai : Real;
  xOperacao: String;
begin
  inherited;
   Exit;
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO,');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico,estoque.cod_estoque ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')');
   DMESTOQUE.TRel.SQL.Add(' order by subproduto.descricao');
   DMESTOQUE.TRel.Open;
   DMESTOQUE.TRel.First;

   if not DMESTOQUE.TRel.IsEmpty then
   begin
    while not DMESTOQUE.TRel.Eof do
    begin
      XQtdEnt:=0;
      XQtdSai:=0;
			//TOTALIZA SOMATÓRIAS
			//FILTRA E TOTALIZA LANÇAMENTOS DE ENTRADA PARA CORREÇÃO
   		DMESTOQUE.Alx.Close;
   		DMESTOQUE.Alx.SQL.Clear;
   		DMESTOQUE.Alx.SQL.Add('SELECT SUM(VWlancent.quantidade) AS TOTENT FROM VWlancent where VWlancent.cod_estoque=:CODESTOQUE');
   		DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_estoque').AsInteger;
   		DMESTOQUE.Alx.Open;
   		XQtdEnt:=XQtdEnt+DMESTOQUE.ALX.FieldByName('TOTENT').AsCurrency;

      //FILTRA  E TOTALIZA LANÇAMENTOS DE SAIDA PARA CORREÇÃO
   		DMESTOQUE.Alx1.Close;
   		DMESTOQUE.Alx1.SQL.Clear;
   		DMESTOQUE.Alx1.SQL.Add('select SUM(VWlancsai.quantidade) AS TOTSAI  from vwlancsai where vwlancsai.cod_estoque=:CODESTOQUE');
   		DMESTOQUE.Alx1.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_estoque').AsInteger;
   		DMESTOQUE.Alx1.Open;
   		XQtdSai:=XQtdSai+DMESTOQUE.ALX1.FieldByName('TOTSAI').AsCurrency;

			//FILTRA  E TOTALIZA LANÇAMENTOS DE COMPRAS
   		DMESTOQUE.Alx3.Close;
   		DMESTOQUE.Alx3.SQL.Clear;
   		DMESTOQUE.Alx3.SQL.Add(' Select SUM(itenspedc.valortotal) AS TOTCOMP, SUM(itenspedc.qtdest) AS TOTENT ');
   		DMESTOQUE.Alx3.SQL.Add(' From itenspedc ');
   		DMESTOQUE.Alx3.SQL.Add(' left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
   		DMESTOQUE.Alx3.SQL.Add(' Where (Estoque.Cod_Estoque=:CODESTOQUE) ');
   		DMESTOQUE.Alx3.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_estoque').AsInteger;
   		DMESTOQUE.Alx3.Open;
   		XQtdEnt:=XQtdEnt+DMESTOQUE.Alx3.FieldByName('TOTENT').AsCurrency;

			//FILTRA  E TOTALIZA LANÇAMENTOS DE VENDAS
   		DMESTOQUE.Alx2.Close;
   		DMESTOQUE.Alx2.SQL.Clear;
   		DMESTOQUE.Alx2.SQL.Add(' Select SUM(itenspedven.valortotal) AS TOTVEND, SUM(itenspedven.qtdeprod) AS TOTSAI, SUM(itenspedven.comissao) AS TOTCOMI, SUM(itenspedven.lucmoe) AS TOTLUCMOE');
   		DMESTOQUE.Alx2.SQL.Add(' From itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
   		DMESTOQUE.Alx2.SQL.Add(' left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
   		DMESTOQUE.Alx2.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   		DMESTOQUE.Alx2.SQL.Add(' Where (Estoque.Cod_Estoque=:CODESTOQUE) ');
   		DMESTOQUE.Alx2.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_estoque').AsInteger;
   		DMESTOQUE.Alx2.Open;
   		XQtdSai:=XQtdSai+DMESTOQUE.Alx2.FieldByNAme('TOTSAI').AsCurrency;

			//FILTRA  E TOTALIZA LANÇAMENTOS DE ordens de serviço
   		DMESTOQUE.Alx4.Close;
   		DMESTOQUE.Alx4.SQL.Clear;
   		DMESTOQUE.Alx4.SQL.Add(' Select SUM(itprodord.total) AS TOTVEND, SUM(itprodord.qtd) AS TOTSAI ');
   		DMESTOQUE.Alx4.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   		DMESTOQUE.Alx4.SQL.Add(' Where (itprodord.cod_estoque=:CODESTOQUE) ');
   		DMESTOQUE.Alx4.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_estoque').AsInteger;
   		DMESTOQUE.Alx4.Open;
   		XQtdSai:=XQtdSai+DMESTOQUE.Alx4.FieldByNAme('TOTSAI').AsCurrency;

   		//PASSA VALOR PARA A TABELA DE ESTOQUE
      FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TRel.FieldByName('cod_estoque').AsString, '');
      DMESTOQUE.TEstoque.Edit;
      DMESTOQUE.TEstoque.FieldByName('ESTCALC').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('ESTINI').AsCurrency+XQtdEnt-XQtdSai;
      DMESTOQUE.TEstoque.Post;
      DMESTOQUE.TransacEstoque.CommitRetaining;

      DMESTOQUE.TRel.Next;
    end;
    DMESTOQUE.TransacEstoque.CommitRetaining;
    DMESTOQUE.TransacEstoque.CommitRetaining;
   end;

   MDO.QConsulta.Close;
   MDO.QConsulta.SQL.Clear;
   MDO.QConsulta.SQL.Add(' SELECT SUBPRODUTO.COD_INTERNO AS CI_SUBPRODUTO, ');
   MDO.QConsulta.SQL.Add(' ESTOQUE.ESTFISICO, ESTOQUE.ESTCALC, ESTOQUE.COD_ESTOQUE ');
   MDO.QConsulta.SQL.Add(' FROM SUBPRODUTO ');
   MDO.QConsulta.SQL.Add(' LEFT JOIN ESTOQUE ON SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD ');
   MDO.QConsulta.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (ESTOQUE.ESTFISICO<>ESTOQUE.ESTCALC)');
   MDO.QConsulta.SQL.Add(' ORDER BY SUBPRODUTO.DESCRICAO');
   MDO.QConsulta.Open;
   MDO.QConsulta.First;

   {
   while not MDO.QConsulta.Eof do
   begin
     MDO.Query.Close;
     MDO.Query.SQL.Clear;
     MDO.Query.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.CONTAGEM = :CONTAGEM, ESTOQUE.EXPORTAR = ''1'' ');
     MDO.Query.SQL.Add(' WHERE ESTOQUE.COD_ESTOQUE = :CODIGO ');
     MDO.Query.ParamByName('CONTAGEM').AsCurrency := MDO.QConsulta.FieldByName('ESTFISICO').AsCurrency;
     MDO.Query.ParamByName('CODIGO').AsString := MDO.QConsulta.FieldByName('COD_ESTOQUE').AsString;
     MDO.Query.ExecSQL;

     MDO.QConsulta.Next;
   end;
   }

   Try
    MDO.Transac.CommitRetaining;
   Except
    MDO.Transac.RollbackRetaining;
   END;

   BtnGravarClick(nil);

   FiltraProdutoContagem('CONTRINT');
   edCtrInt.SetFocus;
end;
procedure TFContagemEstoque.edDescricaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = Vk_Down then
   begin
   	DMESTOQUE.TItensContagem.Next;
       XCodEstoque := DBGrid.Columns[0].Field.Text;
       Exit;
   end;

   if Key = Vk_UP then
   begin
   	DMESTOQUE.TItensContagem.Prior;
       XCodEstoque := DBGrid.Columns[0].Field.Text;
       Exit;
   end;

   if Key = VK_RETURN then
   begin
       FiltraProdutoContagem('DESCRICAO');
   	//AlteraContagem;
       Exit;
   end;

	if (Key = VK_ESCAPE) then
   begin
       edDescricao.Text := '';
   	FiltraProdutoContagem('DESCRICAO');
   	Exit;
   end;

  if Key = VK_F9 then
   begin
   	AlteraContagem;
       Exit;
   end;
end;
procedure TFContagemEstoque.edFabricanteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key = Vk_Down then
   begin
   	DMESTOQUE.TItensContagem.Next;
       XCodEstoque := DBGrid.Columns[0].Field.Text;
       Exit;
   end;

   if Key = Vk_UP then
   begin
   	DMESTOQUE.TItensContagem.Prior;
       XCodEstoque := DBGrid.Columns[0].Field.Text;
       Exit;
   end;

  if Key = VK_F9 then
   begin
   	AlteraContagem;
       Exit;
   end;

   if Key = VK_RETURN then
   begin
       FiltraProdutoContagem('CODPRODFABR');
   	//AlteraContagem;
       Exit;
   end;

	if (Key = VK_ESCAPE) then
   begin
       edFabricante.Text := '';
   	FiltraProdutoContagem('CODPRODFABR');
   	Exit;
   end;

end;

procedure TFContagemEstoque.edCtrIntEnter(Sender: TObject);
begin
  inherited;
	FiltraProdutoContagem('CONTRINT');
end;

procedure TFContagemEstoque.edFabricanteEnter(Sender: TObject);
begin
  inherited;
	FiltraProdutoContagem('CODPRODFABR');
end;

procedure TFContagemEstoque.edDescricaoEnter(Sender: TObject);
begin
  inherited;
	FiltraProdutoContagem('DESCRICAO');
end;

procedure TFContagemEstoque.Label4Click(Sender: TObject);
begin
  inherited;
   AlteraContagem;
end;

end.



