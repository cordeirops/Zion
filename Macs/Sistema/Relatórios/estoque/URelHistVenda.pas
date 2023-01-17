unit URelHistVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, ExtCtrls, UFrmBusca, ComCtrls, Alxor32, UProduto, DBCtrls,
  frxClass, frxDBSet, frxExportPDF, DBDateTimePicker, Mask;

type
  TFRelHistVenda = class(TFPadraoRelatorio)
    Dt_inicial: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBRelHistVenda: TfrxDBDataset;
    FRHistVenda: TfrxReport;
    DBCabecalho: TfrxDBDataset;
    DBLoja: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    DBGrade: TDBLookupComboBox;
    edDtInicio: TMaskEdit;
    edDtFinal: TMaskEdit;
    GroupBox5: TGroupBox;
    RbTodas: TRadioButton;
    RbExcluir: TRadioButton;
    Label3: TLabel;
    Label4: TLabel;
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure DBgradeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
    function BuscaValorRecebido(COD_VENDA: Integer): Real;
    function BuscaValorReceber(COD_VENDA: Integer): Real;
    function BuscaValorReceberPeriodo(COD_VENDA: Integer; DATA_INICIAL: String; DATA_FINAL: String): Real;
  public
    { Public declarations }
  end;

var
  FRelHistVenda: TFRelHistVenda;

implementation

uses UDMEstoque, URelEstoque, DB, UDMMACS, UMDO, AlxMessage, UDMFinanc, UDMFAST, UMenu;

{$R *.dfm}

procedure TFRelHistVenda.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;


  //  filtraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

end;

procedure TFRelHistVenda.DBgradeClick(Sender: TObject);
begin
  inherited;
	DMESTOQUE.TProduto.Close;
   DMESTOQUE.TProduto.SQL.Clear;
   DMESTOQUE.TProduto.SQL.Add(' SELECT * FROM PRODUTO WHERE ((PRODUTO.ATIVO = ''1'') OR (PRODUTO.ATIVO IS NULL)) ORDER BY PRODUTO.DESCRICAO ');
   DMESTOQUE.TProduto.Open;
end;

procedure TFRelHistVenda.FormActivate(Sender: TObject);
begin
  inherited;
	DMESTOQUE.TProduto.Close;
   DMESTOQUE.TProduto.SQL.Clear;
   DMESTOQUE.TProduto.SQL.Add(' SELECT * FROM PRODUTO WHERE ((PRODUTO.ATIVO = ''1'') OR (PRODUTO.ATIVO IS NULL)) ORDER BY PRODUTO.DESCRICAO ');
   DMESTOQUE.TProduto.Open;

   edDtInicio.Text := '';
   edDtFinal.Text  := '';
	DBGrade.KeyValue := null;
   RbTodas.Checked := True;
   RbExcluir.Checked := False;

   if FMenu.TIPOREL = 'HISTVENDA' then
       Caption := 'Histórico de Venda';

   if FMenu.TIPOREL = 'PRODCOMPRADORES' then
       Caption := 'Produtos e Compradores';
end;

procedure TFRelHistVenda.BtnImprimirClick(Sender: TObject);
begin
  inherited;

  //imprimir


end;

procedure TFRelHistVenda.BtnVisualizarClick(Sender: TObject);
var
   XVALOR_RECEBIDO: Real;
   XVALOR_A_RECEBER: Real;
   XVALOR_A_RECEBER_PERIODO: Real;
   XPERC_DEFASAGEM: Real;
begin
  inherited;   
	//Valida quanto ao intervalo de datas
	if ((edDtInicio.Text = '  /  /    ') AND (edDtFinal.Text = '  /  /    ')) OR ((edDtInicio.Text <> '  /  /    ') AND (edDtFinal.Text = '  /  /    ')) OR ((edDtInicio.Text = '  /  /    ') and (edDtFinal.Text <> '  /  /    ')) then
   begin
   	Mensagem(' A T E N Ç Ã O ', 'Por favor insera uma data válida para gerar o relatório.', '', 1, 1, False, 'A');
		Exit;
   end;

   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;

   //Edmar - 22/05/2015 - RELATORIO DE HISTÓRICO DE VENDA
   if FMenu.TIPOREL = 'HISTVENDA' then
   begin
   	try//deleta tmp
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' DELETE FROM TMP ');
           MDO.Query.ExecSQL;

           MDO.Transac.CommitRetaining;
       except
           ShowMessage('Não foi possível limpar a tabela TMP. Reinicie o sistema e tente novamente.');
           MDO.Transac.RollbackRetaining;
           Exit;
       end;

       //Edmar - 21/05/2015 - Busca todo o estoque cadastrado no sistema
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' SELECT PRODUTO.COD_PRODUTO COD_GRADE, VWSIMILAR.COD_SUBPRODUTO COD_PRODUTO, VWSIMILAR.COD_ESTOQUE, ');
       DMESTOQUE.Alx.SQL.Add(' PRODUTO.DESCRICAO GRADE,VWSIMILAR.DESCRICAO PRODUTO, VWSIMILAR.ESTFISICO ESTOQUE, VWSIMILAR.VENDVARV ');
       DMESTOQUE.Alx.SQL.Add(' FROM VWSIMILAR ');
       DMESTOQUE.Alx.SQL.Add(' LEFT JOIN PRODUTO ON PRODUTO.COD_PRODUTO = VWSIMILAR.COD_PRODUTO ');
       DMESTOQUE.Alx.SQL.Add(' WHERE (VWSIMILAR.ATIVO = ''S'') ');

       if RbExcluir.Checked then
       	DMESTOQUE.Alx.SQL.Add(' AND ((PRODUTO.ATIVO = ''1'') OR (PRODUTO.ATIVO IS NULL)) ');
           
       if DBGrade.Text <> '' then
       begin
           DMESTOQUE.Alx.SQL.Add(' AND (VWSIMILAR.COD_PRODUTO = :CODGRADE) ');
           DMESTOQUE.Alx.ParamByName('CODGRADE').AsInteger := DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsInteger;
       end;
       DMESTOQUE.Alx.SQL.Add(' ORDER BY GRADE, PRODUTO ');
       DMESTOQUE.Alx.Open;
       DMESTOQUE.Alx.First;

       //Verifica se o estoque possui alguma venda lançada no sistema
       while not DMESTOQUE.Alx.Eof do
       begin
           DMESTOQUE.Alx1.Close;
           DMESTOQUE.Alx1.SQL.Clear;
           DMESTOQUE.Alx1.SQL.Add(' SELECT PEDVENDA.COD_PEDVENDA, PEDVENDA.DTPEDVEN DATA_PEDIDO, FORMPAG.DESCRICAO FORMPAG, ');
           DMESTOQUE.Alx1.SQL.Add(' PEDVENDA.VALOR, ITENSPEDVEN.VALORTOTAL ');
           DMESTOQUE.Alx1.SQL.Add(' FROM PEDVENDA ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ITENSPEDVEN ON ITENSPEDVEN.COD_PEDVEN = PEDVENDA.COD_PEDVENDA ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN FORMPAG ON FORMPAG.COD_FORMPAG = PEDVENDA.COD_FORMPAG ');
           DMESTOQUE.Alx1.SQL.Add(' WHERE ITENSPEDVEN.COD_ESTOQUE = :ESTOQUE ');
           DMESTOQUE.Alx1.ParamByName('ESTOQUE').AsInteger := DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsInteger;
           DMESTOQUE.Alx1.Open;

           //se não tiver vazio, significa que foi encontrado alguma venda para o estoque.
           if not DMESTOQUE.Alx1.IsEmpty then
           begin
               //tendo uma venda, verifica se a venda gerou uma conta a receber,
               //buscando então o valor total recebido, o valor a receber e valor a receber no periodo
               XVALOR_RECEBIDO := BuscaValorRecebido(DMESTOQUE.Alx1.FieldByName('COD_PEDVENDA').AsInteger);
               XVALOR_A_RECEBER := BuscaValorReceber(DMESTOQUE.Alx1.FieldByName('COD_PEDVENDA').AsInteger);
               XVALOR_A_RECEBER_PERIODO := BuscaValorReceberPeriodo(DMESTOQUE.Alx1.FieldByName('COD_PEDVENDA').AsInteger, edDtInicio.Text, edDtFinal.Text);
               //calculo de defasagem de venda
               XPERC_DEFASAGEM := ((100 * DMESTOQUE.Alx1.FieldByName('VALORTOTAL').AsCurrency)/DMESTOQUE.Alx.FieldByName('VENDVARV').AsCurrency)-100;
           end
           else begin
               //se não encontrou nenhuma venda, zera as variaveis auxiliares para não mostrar nada no relatório
               XVALOR_RECEBIDO := 0.00;
               XVALOR_A_RECEBER := 0.00;
               XVALOR_A_RECEBER_PERIODO := 0.00;
               XPERC_DEFASAGEM := 0.00;
           end;
           
           //salva na tabela TMP os dados que vão ser mostrados no relatório
           try
               DMFAST.QAlx.Close;
               DMFAST.QAlx.SQL.Clear;
               DMFAST.QAlx.SQL.Add(' INSERT INTO TMP (TMP.INT1, TMP.INT2, TMP.INT3, TMP.VLR1, TMP.VLR2, TMP.VLR3, TMP.VLR4, TMP.VLR5) VALUES ');
               DMFAST.QAlx.SQL.Add(' (:COD_GRADE, :COD_SUBPRODUTO, :COD_VENDA, :VALOR_VENDA, :VALOR_RECEBIDO, :VALOR_RECEBER, :VALOR_RECEBER_PERIODO, :DEFASAGEM) ');
               DMFAST.QAlx.ParamByName('COD_GRADE').AsInteger := DMESTOQUE.Alx.FieldByName('COD_GRADE').AsInteger;
               DMFAST.QAlx.ParamByName('COD_SUBPRODUTO').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PRODUTO').AsInteger;
               DMFAST.QAlx.ParamByName('COD_VENDA').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_PEDVENDA').AsInteger;
               DMFAST.QAlx.ParamByName('VALOR_VENDA').AsCurrency := DMESTOQUE.Alx1.FieldByName('VALOR').AsInteger;
               DMFAST.QAlx.ParamByName('VALOR_RECEBIDO').AsCurrency := XVALOR_RECEBIDO;
               DMFAST.QAlx.ParamByName('VALOR_RECEBER').AsCurrency := XVALOR_A_RECEBER;
               DMFAST.QAlx.ParamByName('VALOR_RECEBER_PERIODO').AsCurrency := XVALOR_A_RECEBER_PERIODO;
               DMFAST.QAlx.ParamByName('DEFASAGEM').AsCurrency := XPERC_DEFASAGEM;
               DMFAST.QAlx.ExecSQL;

               DMFAST.MDOTrans.CommitRetaining;
           except
               DMFAST.MDOTrans.RollbackRetaining;
               ShowMessage('O Item não foi incluído corretamente.');
           end;

           DMESTOQUE.Alx.Next;
       end;

       //adiciona o SQL necessário para buscar os dados do relatorio de historico de venda
       DMESTOQUE.TRel.SQL.Add(' SELECT PRODUTO.COD_PRODUTO COD_GRADE, PRODUTO.DESCRICAO GRADE, VWSIMILAR.CONTRINT CTRL_INT, VWSIMILAR.DESCRICAO PRODUTO, VWSIMILAR.ESTFISICO ESTOQUE, ');
       DMESTOQUE.TRel.SQL.Add(' PEDVENDA.NOMECLI CLIENTE, PEDVENDA.DTPEDVEN DATA_VENDA, FORMPAG.DESCRICAO FORMPAG, VWSIMILAR.VENDVARV VALOR_CADASTRADO, ITENSPEDVEN.QTDEPROD QTDE, ');
       DMESTOQUE.TRel.SQL.Add(' ITENSPEDVEN.VLRVENDBD, TMP.VLR1 VALOR_VENDA, TMP.VLR2 VALOR_RECEBIDO, TMP.VLR3 VALOR_RECEBER, TMP.VLR4 VALOR_RECEBER_PERIODO, TMP.VLR5 DEFASAGEM ');
       DMESTOQUE.TRel.SQL.Add(' FROM TMP ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN PRODUTO ON PRODUTO.COD_PRODUTO = TMP.INT1 ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN VWSIMILAR ON VWSIMILAR.COD_SUBPRODUTO = TMP.INT2 ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN PEDVENDA ON PEDVENDA.COD_PEDVENDA = TMP.INT3 ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ITENSPEDVEN ON ITENSPEDVEN.COD_ESTOQUE = VWSIMILAR.COD_ESTOQUE ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN FORMPAG ON FORMPAG.COD_FORMPAG = PEDVENDA.COD_FORMPAG ');
       DMESTOQUE.TRel.SQL.Add(' ORDER BY GRADE, PRODUTO ');
	end;

   //Edmar - 22/05/2015 - RELATORIO DE PRODUTOS E COMPRADORES
   if FMenu.TIPOREL = 'PRODCOMPRADORES' then
   begin
       //adiciona o SQL necessário para buscar os dados do relatorio de produtos e compradores
       DMESTOQUE.TRel.SQL.Add(' SELECT PRODUTO.COD_PRODUTO COD_GRADE, PRODUTO.DESCRICAO GRADE, VWSIMILAR.CONTRINT CTRL_INT, VWSIMILAR.DESCRICAO PRODUTO, ');
       DMESTOQUE.TRel.SQL.Add(' PEDVENDA.NOMECLI CLIENTE, VWCLIENTE.TELREL FONE, VWCLIENTE.ENDERECO, VWCLIENTE.BAIRRO, VWCLIENTE.ENDNUMERO NUMERO, ');
       DMESTOQUE.TRel.SQL.Add(' VWCLIENTE.CIDADE FROM PEDVENDA ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN ITENSPEDVEN ON ITENSPEDVEN.COD_PEDVEN = PEDVENDA.COD_PEDVENDA ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN VWCLIENTE ON VWCLIENTE.COD_CLIENTE = PEDVENDA.COD_CLIENTE ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN VWSIMILAR ON VWSIMILAR.COD_ESTOQUE = ITENSPEDVEN.COD_ESTOQUE ');
       DMESTOQUE.TRel.SQL.Add(' LEFT JOIN PRODUTO ON PRODUTO.COD_PRODUTO = VWSIMILAR.COD_PRODUTO ');
       DMESTOQUE.TRel.SQL.Add(' WHERE (PEDVENDA.DTPEDVEN BETWEEN :DTINI AND :DTFIM) ');

       if RbExcluir.Checked then
       	DMESTOQUE.TRel.SQL.Add(' AND ((PRODUTO.ATIVO = ''1'') OR (PRODUTO.ATIVO IS NULL)) ');

       DMESTOQUE.TRel.ParamByName('DTINI').AsString := edDtInicio.Text;
       DMESTOQUE.TRel.ParamByName('DTFIM').AsString := edDtFinal.Text;
       //filtro da grade/obra
       if DBGrade.Text <> '' then
       begin
       	DMESTOQUE.TRel.SQL.Add(' AND (PRODUTO.COD_PRODUTO = :GRADE) ');
           DMESTOQUE.TRel.ParamByName('GRADE').AsInteger := DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsInteger; 
       end;

       DMESTOQUE.TRel.SQL.Add(' ORDER BY GRADE, PRODUTO ');
   end;

   //abre SQL
   DMESTOQUE.TRel.Open;

   if DMESTOQUE.TRel.IsEmpty then
   begin
   	ShowMessage('O relatório retornou sem informações.');
       Exit;
   end;

   MDO.Query.Close;
   MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add('update loja set loja.tmp1=:tmp1');
   MDO.Query.ParamByName('tmp1').AsString:= 'Data: '+edDtInicio.Text+' até '+edDtFinal.Text+' / Produto: '+DBGrade.Text;
   MDO.Query.ExecSQL;
   MDO.Transac.CommitRetaining;

   DMMACS.TLoja.Close;
   DMMACS.TLoja.SQL.Clear;
   DMMACS.TLoja.SQL.Add(' SELECT * FROM LOJA ');
   DMMACS.TLoja.Open;

   DMMACS.TEmpresa.Open;
	DBCabecalho.DataSet := DMMACS.TEmpresa;
   DBRelHistVenda.DataSet := DMESTOQUE.TRel;

   if FMenu.TIPOREL = 'HISTVENDA' then
   	FRHistVenda.LoadFromFile('C:\MZR\MACS\Rel\FRelHistoricoVenda.fr3');
   if FMenu.TIPOREL = 'PRODCOMPRADORES' then
   	FRHistVenda.LoadFromFile('C:\MZR\MACS\Rel\FrfProdCompradores.fr3');
       
   FRHistVenda.ShowReport();
end;

function TFRelHistVenda.BuscaValorReceber(COD_VENDA: Integer): Real;
begin
	//Edmar - 21/05/2015 - Busca o valor total a receber dar parcelas da venda que não estão fechadas
   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFINANC.TAlx.SQL.Add(' SELECT SUM(PARCELACR.VALOR) VALOR_RECEBER FROM PARCELACR ');
   DMFINANC.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_CTARECEBER = PARCELACR.COD_CTARECEBER ');
   DMFINANC.TAlx.SQL.Add(' WHERE (CTARECEBER.COD_GERADOR = :VENDA) AND (CTARECEBER.TIPOGERADOR = ''PEDVENDA'') AND (PARCELACR.FECH = ''N'')');
   DMFINANC.TAlx.ParamByName('VENDA').AsInteger := COD_VENDA;
   DMFINANC.TAlx.Open;

	//se estiver vazio retorna 0
   if DMFINANC.TAlx.IsEmpty then
   	Result := 0
   else
   	Result := DMFINANC.TAlx.FieldByName('VALOR_RECEBER').AsCurrency;
end;

function TFRelHistVenda.BuscaValorReceberPeriodo(COD_VENDA: Integer; DATA_INICIAL, DATA_FINAL: String): Real;
begin
	//Edmar - 21/05/2015 - Busca o valor total a receber dar parcelas da venda
   //que estão abertas com base na data de vencimento
   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFINANC.TAlx.SQL.Add(' SELECT SUM(PARCELACR.VALOR) VALOR_RECEBER_PERIODO FROM PARCELACR ');
   DMFINANC.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_CTARECEBER = PARCELACR.COD_CTARECEBER ');
   DMFINANC.TAlx.SQL.Add(' WHERE (CTARECEBER.COD_GERADOR = :VENDA) AND (CTARECEBER.TIPOGERADOR = ''PEDVENDA'') ');
   DMFINANC.TAlx.SQL.Add('   AND (PARCELACR.FECH = ''N'')		    AND (PARCELACR.DTVENC BETWEEN :DATAINI AND :DATAFIM) ');
   DMFINANC.TAlx.ParamByName('VENDA').AsInteger := COD_VENDA;
   DMFINANC.TAlx.ParamByName('DATAINI').AsString := DATA_INICIAL;
   DMFINANC.TAlx.ParamByName('DATAFIM').AsString := DATA_FINAL;
   DMFINANC.TAlx.Open;

	//se estiver vazio retorna 0
   if DMFINANC.TAlx.IsEmpty then
   	Result := 0
   else
   	Result := DMFINANC.TAlx.FieldByName('VALOR_RECEBER_PERIODO').AsCurrency;
end;

function TFRelHistVenda.BuscaValorRecebido(COD_VENDA: Integer): Real;
begin
	//Edmar - 21/05/2015 - Busca o valor total recebido da venda das parcelas fechadas
   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFINANC.TAlx.SQL.Add(' SELECT SUM(PARCELACR.VALORPG) VALOR_RECEBIDO FROM PARCELACR ');
   DMFINANC.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_CTARECEBER = PARCELACR.COD_CTARECEBER ');
   DMFINANC.TAlx.SQL.Add(' WHERE (CTARECEBER.COD_GERADOR = :VENDA) AND (CTARECEBER.TIPOGERADOR = ''PEDVENDA'') ');
   DMFINANC.TAlx.SQL.Add(' AND (PARCELACR.FECH = ''S'') ');
   DMFINANC.TAlx.ParamByName('VENDA').AsInteger := COD_VENDA;
	DMFINANC.TAlx.Open;

	//se estiver vazio retorna 0
   if DMFINANC.TAlx.IsEmpty then
   	Result := 0
   else
   	Result := DMFINANC.TAlx.FieldByName('VALOR_RECEBIDO').AsCurrency;
end;

end.







