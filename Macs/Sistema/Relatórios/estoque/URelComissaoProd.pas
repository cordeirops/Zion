unit URelComissaoProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, DrLabel, jpeg, ExtCtrls, Mask, UFrmBusca, Grids, DBGrids;

type
   TFRelComissaoProd = class(TFPadraoRelatorio)
   FrmPessoaIni: TFrmBusca;
   FrmPessoaFim: TFrmBusca;
   GroupBox5: TGroupBox;
   Label1: TLabel;
   Label4: TLabel;
   EdDataIni: TMaskEdit;
   EdDataFim: TMaskEdit;
   RGESCOLHA: TRadioGroup;
    RGOrdenar: TRadioGroup;
   procedure FrmPessoaIniBTNMINUSClick(Sender: TObject);
   procedure FrmPessoaFimBTNMINUSClick(Sender: TObject);
   procedure FrmPessoaIniBTNOPENClick(Sender: TObject);
   procedure FrmPessoaFimBTNOPENClick(Sender: TObject);
   procedure FrmPessoaIniEDCodigoKeyPress(Sender: TObject; var Key: Char);
   procedure FrmPessoaFimEDCodigoKeyPress(Sender: TObject; var Key: Char);
   procedure BtnVisualizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public
   // FILTRA TODOS OS DADOS E RETORNA RELATORIO
   Procedure FiltraComissaoProduto;

	//Relatório que apresenta o relatório de km
	procedure RelComisProdutoMultiplosVendedores;
  end;

var
  FRelComissaoProd: TFRelComissaoProd;
  xCodigoFuncionario: Integer;

implementation

uses UMenu, UMensagem, UAtualizaValores, UFuncionario, UDMPessoa, Alxor32,
  UDMEstoque, AlxMessage, UDMMacs, DB, UDmServ, UMDO;

{$R *.dfm}

procedure TFRelComissaoProd.FrmPessoaIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmPessoaIni.EDCodigo.Text := '';
   FrmPessoaIni.EdDescricao.Text := '';
end;

procedure TFRelComissaoProd.FrmPessoaFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmPessoaFim.EDCodigo.Text := '';
   FrmPessoaFim.EdDescricao.Text := '';
end;

procedure TFRelComissaoProd.FrmPessoaIniBTNOPENClick(Sender: TObject);
begin
  inherited;
   If AbrirForm(TFFuncionario, FFuncionario,1 )= 'Selected'
   Then Begin
      	FrmPessoaIni.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmPessoaIni.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
		xCodigoFuncionario := DMPESSOA.VWFuncionario.FieldByName('cod_func').AsInteger;
   End;
   FrmPessoaIni.Refresh;

end;

procedure TFRelComissaoProd.FrmPessoaFimBTNOPENClick(Sender: TObject);
begin
  inherited;
   If AbrirForm(TFFuncionario, FFuncionario,1 )= 'Selected'
   Then Begin
      	FrmPessoaFim.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmPessoaFim.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
   End;
   FrmPessoaFim.Refresh;

end;

procedure TFRelComissaoProd.FrmPessoaIniEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   // TECLA ENTER
   If Key = #13
   Then Begin
       If FrmPessoaIni.EDCodigo.Text <> ''
       Then Begin
           If FiltraTabela(DMPESSOA.VWFuncionario,'VWFUNCIONARIO','COD_INTERNO',FrmPessoaIni.EDCodigo.Text,'') = TRUE
           Then Begin
               FrmPessoaIni.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
				xCodigoFuncionario := DMPESSOA.VWFuncionario.FieldByName('cod_func').AsInteger;
               FrmPessoaFim.EDCodigo.SetFocus;
           End
           Else Begin
               FrmPessoaIni.EdDescricao.Text := '';
           End;
       End;
       FrmPessoaIni.Refresh;
   End;

end;

procedure TFRelComissaoProd.FrmPessoaFimEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   // TECLA ENTER
   If Key = #13
   Then Begin
       If FrmPessoaFim.EDCodigo.Text <> ''
       Then Begin
           If FiltraTabela(DMPESSOA.VWFuncionario,'VWFUNCIONARIO','COD_INTERNO',FrmPessoaFim.EDCodigo.Text,'') = TRUE
           Then Begin
               FrmPessoaFim.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
               BtnVisualizar.SetFocus;
           End
           Else Begin
               FrmPessoaFim.EdDescricao.Text := '';
           End;
       End;
       FrmPessoaFim.Refresh;
   End;


end;

procedure TFRelComissaoProd.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
	If FMenu.XTipoRel = 'COMISSAOPRODUTOMULTIPLOSVENDEDORES'
	Then Begin
       RelComisProdutoMultiplosVendedores;
	End
	Else Begin
   	// FILTRA TODOS OS DADOS E RETORNA RELATORIO
   	FiltraComissaoProduto;
	End;
end;

//Relatório que apresenta o relatório de km
procedure TFRelComissaoProd.RelComisProdutoMultiplosVendedores;
var
   XCod_tmp: Integer;
begin
	Try
       DMESTOQUE.TransacEstoque.CommitRetaining;
       DMSERV.IBT.CommitRetaining;

       MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;
       MDO.QAlx1.SQL.Add(' select ordem.numero AS OS, vwfuncionario.cod_func, vwfuncionario.nome, ');
       MDO.QAlx1.SQL.Add(' vwsimilar.contrint codigo, vwsimilar.descricao AS PRODUTO, itprodord.data, ');
       MDO.QAlx1.SQL.Add(' itprodord.total-((itprodord.total*ordem.descprod)/100) total, comprod.percento, ');
       MDO.QAlx1.SQL.Add(' (itprodord.total-((itprodord.total*ordem.descprod)/100)) * (comprod.percento / 100)  valorcomissao ');
       MDO.QAlx1.SQL.Add(' from comprod ');
       MDO.QAlx1.SQL.Add(' left join itprodord on comprod.cod_gerador = itprodord.cod_itprodord ');
       MDO.QAlx1.SQL.Add(' left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
       MDO.QAlx1.SQL.Add(' left join ordem on itprodord.cod_ordem = ordem.cod_ordem ');
       MDO.QAlx1.SQL.Add(' left join vwfuncionario on comprod.cod_funcionario = vwfuncionario.cod_func ');
       MDO.QAlx1.SQL.Add(' WHERE (comprod.tipo = ''COMOS'') ');
     	MDO.QAlx1.SQL.Add(' AND ((ordem.status = ' + #39 + 'FECHADO' + #39 + ') or  (ordem.status = ' + #39 + 'DEVOLVIDO' + #39 + ')) ');//Retornamos para OS FECHADAS e ORDENS DE SERVIÇOS
   	MDO.QAlx1.SQL.Add(' AND ((itprodord.it_dev <> ''DVL'') or (itprodord.it_dev is null)) ');//SELECIONAMOS APENAS ITENS QUE SEJAM DO TIPO DIFERENTE DE DEVOLUÇÃO
   	// verifica se as datas forma informadas corretas
   	If (EdDataIni.Text <> '  /  /    ') AND (EdDataFim.Text <> '  /  /    ')
   	Then Begin
       	MDO.QAlx1.SQL.Add(' and (itprodord.data between :data1 and :data2) ');
       	MDO.QAlx1.ParamByName('data1').AsString := EdDataIni.Text;
       	MDO.QAlx1.ParamByName('data2').AsString := EdDataFim.Text;
       	XTitulo := XTitulo + ' - Dt. Pedido: ' + EdDataIni.Text + ' á ' + EdDataFim.Text;
   	End;
   	// verifica se foram informados os vendedores corretamente
   	If (FrmPessoaIni.EDCodigo.Text <> '')
   	Then Begin
       	MDO.QAlx1.SQL.Add(' and (vwfuncionario.cod_func = :cod1) ');
       	MDO.QAlx1.ParamByName('cod1').AsInteger := xCodigoFuncionario;
       	XTitulo := XTitulo + ' - Vendedor: ' + FrmPessoaIni.EdDescricao.Text + ' á ' + FrmPessoaFim.EdDescricao.Text;
   	End;
     	MDO.QAlx1.SQL.Add('ORDER BY VWFUNCIONARIO.NOME DESC, ordem.numero');
       MDO.QAlx1.Open;

       MDO.QAlx2.Close;
       MDO.QAlx2.SQL.Clear;
       MDO.QAlx2.SQL.Add(' SELECT ordem.numero as OS, vwfuncionario.cod_func, vwfuncionario.nome, ');
       MDO.QAlx2.SQL.Add(' despadic.despesa servico, ordem.dtabert data, despadic.vlrtotfin-((despadic.vlrtotfin*ordem.descserv)/100) total, comprod.percento, ');
       MDO.QAlx2.SQL.Add(' (despadic.vlrtotfin-((despadic.vlrtotfin*ordem.descserv)/100)) * (comprod.percento / 100) valorcomissao ');
       MDO.QAlx2.SQL.Add(' from comprod ');
       MDO.QAlx2.SQL.Add(' left join despadic on comprod.cod_gerador = despadic.cod_despadic ');
       MDO.QAlx2.SQL.Add(' left join ordem on despadic.cod_gerador = ordem.cod_ordem ');
       MDO.QAlx2.SQL.Add(' left join vwfuncionario on comprod.cod_funcionario = vwfuncionario.cod_func ');
       MDO.QAlx2.SQL.Add(' where (comprod.tipo = ''COMOSSERV'') ');
       MDO.QAlx2.SQL.Add(' AND ((ordem.status = ' + #39 + 'FECHADO' + #39 + ') or  (ordem.status = ' + #39 + 'DEVOLVIDO' + #39 + ')) ');//Retornamos para OS FECHADAS e ORDENS DE SERVIÇOS
   	// verifica se as datas forma informadas corretas
   	If (EdDataIni.Text <> '  /  /    ') AND (EdDataFim.Text <> '  /  /    ')
   	Then Begin
       	MDO.QAlx2.SQL.Add(' and (ordem.dtabert between :data1 and :data2) ');
       	MDO.QAlx2.ParamByName('data1').AsString := EdDataIni.Text;
       	MDO.QAlx2.ParamByName('data2').AsString := EdDataFim.Text;
       	//XTitulo := XTitulo + ' - Dt. Pedido: ' + EdDataIni.Text + ' á ' + EdDataFim.Text;
   	End;
   	// verifica se foram informados os vendedores corretamente
   	If (FrmPessoaIni.EDCodigo.Text <> '')
   	Then Begin
       	MDO.QAlx2.SQL.Add(' and (vwfuncionario.cod_func = :cod1) ');
       	MDO.QAlx2.ParamByName('cod1').AsInteger := xCodigoFuncionario;
       	//XTitulo := XTitulo + ' - Vendedor: ' + FrmPessoaIni.EdDescricao.Text + ' á ' + FrmPessoaFim.EdDescricao.Text;
   	End;
     	MDO.QAlx2.SQL.Add('ORDER BY VWFUNCIONARIO.NOME DESC, ordem.numero');
       MDO.QAlx2.Open;

       //prepara a tabela tmp
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('delete from tmp');
       DMMACS.TMP.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
       
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('select * from tmp');
       DMMACS.TMP.Open;

       XCod_tmp := 1;

       MDO.QAlx1.First;
       while not MDO.QAlx1.Eof do
       begin
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
           DMMACS.TMP.FieldByName('INT1').AsInteger := MDO.QAlx1.FieldByName('cod_func').AsInteger;
           DMMACS.TMP.FieldByName('DESC1').AsString := MDO.QAlx1.FieldByName('nome').AsString;
           DMMACS.TMP.FieldByName('DESC2').AsString := MDO.QAlx1.FieldByName('os').AsString;
           DMMACS.TMP.FieldByName('DESC3').AsString := MDO.QAlx1.FieldByName('codigo').AsString;
           DMMACS.TMP.FieldByName('DESC4').AsString := MDO.QAlx1.FieldByName('produto').AsString;
           DMMACS.TMP.FieldByName('DESC5').AsString := 'P';
           DMMACS.TMP.FieldByName('DATA1').AsDateTime := MDO.QAlx1.FieldByName('data').AsDateTime;
           DMMACS.TMP.FieldByName('VLR1').AsCurrency := MDO.QAlx1.FieldByName('total').AsCurrency;
           DMMACS.TMP.FieldByName('VLR2').AsCurrency := MDO.QAlx1.FieldByName('percento').AsCurrency;
           DMMACS.TMP.FieldByName('VLR3').AsCurrency := MDO.QAlx1.FieldByName('valorcomissao').AsCurrency;

           DMMACS.TMP.Post;
           XCod_tmp:=XCod_tmp+1;

           MDO.QAlx1.Next;
       end;

       MDO.QAlx2.First;
       while not MDO.QAlx2.Eof do
       begin
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger := XCod_tmp;
           DMMACS.TMP.FieldByName('INT1').AsInteger := MDO.QAlx2.FieldByName('cod_func').AsInteger;
           DMMACS.TMP.FieldByName('DESC1').AsString := MDO.QAlx2.FieldByName('nome').AsString;
           DMMACS.TMP.FieldByName('DESC2').AsString := MDO.QAlx2.FieldByName('os').AsString;
           DMMACS.TMP.FieldByName('DESC3').AsString := '';
           DMMACS.TMP.FieldByName('DESC4').AsString := MDO.QAlx2.FieldByName('servico').AsString;
           DMMACS.TMP.FieldByName('DESC5').AsString := 'S';
           DMMACS.TMP.FieldByName('DATA1').AsDateTime := MDO.QAlx2.FieldByName('data').AsDateTime;
           DMMACS.TMP.FieldByName('VLR1').AsCurrency := MDO.QAlx2.FieldByName('total').AsCurrency;
           DMMACS.TMP.FieldByName('VLR2').AsCurrency := MDO.QAlx2.FieldByName('percento').AsCurrency;
           DMMACS.TMP.FieldByName('VLR3').AsCurrency := MDO.QAlx2.FieldByName('valorcomissao').AsCurrency;

           DMMACS.TMP.Post;
           XCod_tmp:=XCod_tmp+1;

           MDO.QAlx2.Next;
       end;       

       DMMACS.Transaction.CommitRetaining;

		XTitulo:='';
   	DMESTOQUE.TRel.Close;
   	DMESTOQUE.TRel.SQL.Clear;
   	DMESTOQUE.TRel.SQL.Add(' SELECT tmp.cod_tmp, tmp.int1 cod_func, tmp.desc1 vendedor, tmp.desc2 os, ');
   	DMESTOQUE.TRel.SQL.Add(' tmp.desc3 codigo,  tmp.desc4 produto_servico, tmp.desc5 tipo, tmp.data1 data, ');
   	DMESTOQUE.TRel.SQL.Add(' tmp.vlr1 total, tmp.vlr2 comissao, tmp.vlr3 valorcomissao ');
   	DMESTOQUE.TRel.SQL.Add(' FROM  tmp ');
   	DMESTOQUE.TRel.SQL.Add(' ORDER BY tmp.desc1, tmp.desc5, tmp.desc2 ');
   	DMESTOQUE.TRel.Open;

       DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP1').AsString := XTitulo;
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;

   	// se o relatorio retornou vazio
   	If DMESTOQUE.TRel.IsEmpty
   	Then Begin
       	Mensagem('   A T E N Ç Ã O   ','O relatório retornou vazio.','',1,1,false,'I');
       	Exit;
   	End;
       FSDSRel.DataSource := DMESTOQUE.DRel;
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComissaoVendaProdutoMultiplosVendedores.frf');
   	FSRel.ShowReport;
	Except
	End;
end;

// FILTRA TODOS OS DADOS E RETORNA RELATORIO
procedure TFRelComissaoProd.FiltraComissaoProduto;
begin

   // DADOS DA TABELA LOJA
   FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');

   DMMACS.TLoja.Edit;

   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('select vwfuncionario.cpfcnpj, vwfuncionario.nome, vwfuncionario.cod_func, vwfuncionario.cod_interno,');
   DMESTOQUE.TRel.SQL.Add('pedvenda.cod_pedvenda, pedvenda.situacao, pedvenda.cod_vendedor, pedvenda.dtpedven, pedvenda.numped,');
   DMESTOQUE.TRel.SQL.Add('itenspedven.cod_itenspedven, itenspedven.cod_pedven, itenspedven.cod_estoque, itenspedven.qtdeprod, itenspedven.valortotal, itenspedven.valunit, itenspedven.comissao, itenspedven.data,');
   DMESTOQUE.TRel.SQL.Add('estoque.cod_estoque, estoque.cod_subprod,');
   DMESTOQUE.TRel.SQL.Add('subproduto.cod_subproduto, subproduto.contrint, subproduto.descricao, subproduto.marca');
   DMESTOQUE.TRel.SQL.Add('from itenspedven');
   DMESTOQUE.TRel.SQL.Add('left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
   DMESTOQUE.TRel.SQL.Add('left join vwfuncionario on pedvenda.cod_vendedor = vwfuncionario.cod_func');
   DMESTOQUE.TRel.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.TRel.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');

   // se for tanto pedido de venda aberto quanto fechado
   If RGESCOLHA.ItemIndex = 0
   Then Begin
       DMESTOQUE.TRel.SQL.Add('where ((pedvenda.situacao = ' + #39 + 'ABERTO'  + #39 +') OR (pedvenda.situacao = ' + #39 + 'FECHADO' + #39 +'))');
       XTitulo := 'Pedido Aberto/Fechado';
   End;
   // pedido de venda aberto
   If RGESCOLHA.ItemIndex = 1
   Then Begin
       DMESTOQUE.TRel.SQL.Add('where (pedvenda.situacao = ' + #39 + 'ABERTO' + #39 + ')');
       XTitulo := 'Pedido Aberto';
   End;
   // pedido de venda fechado
   If RGESCOLHA.ItemIndex = 2
   Then Begin
       DMESTOQUE.TRel.SQL.Add('where (pedvenda.situacao = ' + #39 + 'FECHADO' + #39 + ')');
       XTitulo := 'Pedido Fechado';
   End;

   // verifica se as datas forma informadas corretas
   If (EdDataIni.Text <> '  /  /    ') AND (EdDataFim.Text <> '  /  /    ')
   Then Begin
       DMESTOQUE.TRel.SQL.Add('and (itenspedven.data between :data1 and :data2)');
       DMESTOQUE.TRel.ParamByName('data1').AsString := EdDataIni.Text;
       DMESTOQUE.TRel.ParamByName('data2').AsString := EdDataFim.Text;
       XTitulo := XTitulo + ' - Dt. Pedido: ' + EdDataIni.Text + ' á ' + EdDataFim.Text;
   End;

   // verifica se foram informados os vendedores corretamente
   If (FrmPessoaIni.EDCodigo.Text <> '') and (FrmPessoaFim.EDCodigo.Text <> '')
   Then Begin
       DMESTOQUE.TRel.SQL.Add('and (vwfuncionario.cod_interno between :cod1 and :cod2)');
       DMESTOQUE.TRel.ParamByName('cod1').AsString := FrmPessoaIni.EDCodigo.Text;
       DMESTOQUE.TRel.ParamByName('cod2').AsString := FrmPessoaFim.EDCodigo.Text;
       XTitulo := XTitulo + ' - Vendedor: ' + FrmPessoaIni.EdDescricao.Text + ' á ' + FrmPessoaFim.EdDescricao.Text;
   End;

   // ordena por data
   If RGOrdenar.ItemIndex = 0
   Then Begin
       DMESTOQUE.TRel.SQL.Add('ORDER BY VWFUNCIONARIO.NOME DESC, ITENSPEDVEN.DATA');
   End;

   // ordena por pedido
   If RGOrdenar.ItemIndex = 1
   Then Begin
       DMESTOQUE.TRel.SQL.Add('ORDER BY VWFUNCIONARIO.NOME DESC, PEDVENDA.NUMPED');
   End;

   // ordena por produto
   If RGOrdenar.ItemIndex = 2
   Then Begin
       DMESTOQUE.TRel.SQL.Add('ORDER BY VWFUNCIONARIO.NOME DESC, SUBPRODUTO.DESCRICAO');
   End;

   DMESTOQUE.TRel.Open;

   DMMACS.TLoja.FieldByName('TMP1').AsString := XTitulo;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;

   // se o relatorio retornou vazio
   If DMESTOQUE.TRel.IsEmpty
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','O relatório retornou vazio.','',1,1,false,'I');
       Exit;    
   End;

   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComissaoProduto.frf');
   FSRel.ShowReport;


end;

procedure TFRelComissaoProd.FormActivate(Sender: TObject);
begin
  inherited;
   Caption:='Relatório de Comissão';  
   EdDataIni.Text := '';
   EdDataFim.Text := '';
   RGESCOLHA.ItemIndex := 0;
   RGOrdenar.ItemIndex := 0;
   FrmPessoaIni.EDCodigo.Text := '';
   FrmPessoaIni.EdDescricao.Text := '';
   FrmPessoaFim.EDCodigo.Text := '';
   FrmPessoaFim.EdDescricao.Text := '';
	If FMenu.XTipoRel = 'COMISSAOPRODUTOMULTIPLOSVENDEDORES'
	Then Begin
       RGESCOLHA.Visible:=False;
       RGOrdenar.Visible:=False;
       FrmPessoaFim.Visible := false;
	End
	Else Begin
       RGESCOLHA.Visible:=True;
       RGOrdenar.Visible:=True;
       FrmPessoaFim.Visible := True;
	End;

end;

end.
