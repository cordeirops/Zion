unit URelProdCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, DrLabel, jpeg, ExtCtrls, UFrmBusca, Mask, ColorMaskEdit;

type
  TFRelProdCli = class(TFPadraoRelatorio)
    FrmGrupo1: TFrmBusca;
    FrmGrupo2: TFrmBusca;
    FrmSubGrupo2: TFrmBusca;
    FrmSubGrupo1: TFrmBusca;
    FrmProduto1: TFrmBusca;
    FrmProduto2: TFrmBusca;
    Shape3: TShape;
    Shape5: TShape;
    Shape1: TShape;
    Shape2: TShape;
    LTextoBusca: TLabel;
    CBMARCAINI: TComboBox;
    Label1: TLabel;
    CBMARCAFIM: TComboBox;
    Shape4: TShape;
    Shape6: TShape;
    FrmSubProduto1: TFrmBusca;
    FrmSubProduto2: TFrmBusca;
    Shape7: TShape;
    Shape8: TShape;
    FrmCliente1: TFrmBusca;
    FrmCliente2: TFrmBusca;
    RGPedido: TRadioGroup;
    Label2: TLabel;
    EDData1: TColorMaskEdit;
    Label3: TLabel;
    EdData2: TColorMaskEdit;
    procedure FormActivate(Sender: TObject);
    procedure FrmGrupo1BTNOPENClick(Sender: TObject);
    procedure FrmGrupo2BTNOPENClick(Sender: TObject);
    procedure FrmSubGrupo1BTNOPENClick(Sender: TObject);
    procedure FrmSubGrupo2BTNOPENClick(Sender: TObject);
    procedure FrmGrupo1BTNMINUSClick(Sender: TObject);
    procedure FrmGrupo2BTNMINUSClick(Sender: TObject);
    procedure FrmSubGrupo1BTNMINUSClick(Sender: TObject);
    procedure FrmSubGrupo2BTNMINUSClick(Sender: TObject);
    procedure FrmProduto1BTNOPENClick(Sender: TObject);
    procedure FrmProduto1BTNMINUSClick(Sender: TObject);
    procedure FrmProduto2BTNOPENClick(Sender: TObject);
    procedure FrmProduto2BTNMINUSClick(Sender: TObject);
    procedure FrmSubProduto1BTNOPENClick(Sender: TObject);
    procedure FrmSubProduto1BTNMINUSClick(Sender: TObject);
    procedure FrmSubProduto2BTNOPENClick(Sender: TObject);
    procedure FrmSubProduto2BTNMINUSClick(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmCliente2BTNOPENClick(Sender: TObject);
    procedure FrmClienteBTNMINUSClick(Sender: TObject);
    procedure FrmCliente2BTNMINUSClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FrmGrupo1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmSubGrupo1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmGrupo2EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmSubGrupo2EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmProduto1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmProduto2EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmSubProduto1EDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmCliente1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmSubProduto2EDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmCliente2EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmCliente1EDCodigoExit(Sender: TObject);
    procedure FrmCliente2EDCodigoExit(Sender: TObject);
  private
   //Filtro por Grupo
   Procedure FiltroGrupo;
   //filtro por marca
   Procedure FiltroMarca;
   //Filtro por produto
   Procedure FiltroProduto;
   //Filtro por Subproduto
   Procedure FiltroSubProduto;
   //Filtro por Data
   Procedure FiltroData;
   //Filtro por Subgrupo
   Procedure FiltroSubGrupo;
   Procedure FiltroCliente;

  public
    { Public declarations }
    // função para imprimir relatorio de produtos e cliente
    Procedure ImprimirProdCliente;
    // ATUALIZA OS FORMULARIOS
    Procedure AtualizaForms;
    // Retorna o numero de dias de cada mes
    Function RetornaNumeroDiasMes(Numero_Mes: integer):integer;
  end;

var
  FRelProdCli: TFRelProdCli;
  XString : string;

implementation

uses UDMEstoque, Alxor32, UCadGrupo, UCadSubgrupo, UProduto, UMenu,
  URelEstoque, UDMPessoa, UCliente, AlxMessage, DateUtils, UDMMacs;

{$R *.dfm}

procedure TFRelProdCli.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Relatórios' ;  
  	//PASSA TODAS AS MARCAS EXISTENTES EM CADASTRO PARA AS COMBOBOX
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('SELECT Distinct(subproduto.marca) FROM subproduto ORDER BY subproduto.marca');
   DMESTOQUE.Alx.Open;
	DMESTOQUE.Alx.First;

   CBMARCAINI.Items.Clear;
   CBMARCAFIM.Items.Clear;
   While not DMESTOQUE.Alx.Eof do
   Begin
       CBMARCAINI.Items.Add(DMESTOQUE.Alx.FieldByName('MARCA').AsString);
       CBMARCAFIM.Items.Add(DMESTOQUE.Alx.FieldByName('MARCA').AsString);
       DMESTOQUE.Alx.Next;
   End;

   // definindo o tipo do pedido de venda - aberto ou fechado
   RGPedido.ItemIndex := 0;

   // atualizando todos os edits
   FrmGrupo1.Refresh;
   FrmGrupo2.Refresh;
   FrmSubGrupo1.Refresh;
   FrmSubGrupo2.Refresh;
   FrmProduto1.Refresh;
   FrmProduto2.Refresh;
   FrmSubProduto1.Refresh;
   FrmSubProduto2.Refresh;
   FrmCliente1.Refresh;
   FrmCliente2.Refresh;

end;

procedure TFRelProdCli.FrmGrupo1BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', '', '', '');

    If AbrirForm(TFCadGrupo, FCadGrupo, 1)='Selected'
    Then Begin
   	FrmGrupo1.Repaint;
       FrmGrupo1.EdDescricao.Text:=DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString;
       FrmGrupo1.EDCodigo.text:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
    End;

   // ATUALIZA OS FORMULARIOS
   AtualizaForms;
end;

procedure TFRelProdCli.FrmGrupo2BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', '', '', '');

    If AbrirForm(TFCadGrupo, FCadGrupo, 1)='Selected'
    Then Begin
   	FrmGrupo2.Repaint;
       FrmGrupo2.EdDescricao.Text:=DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString;
       FrmGrupo2.EDCodigo.text:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
    End;

   // ATUALIZA OS FORMULARIOS
   AtualizaForms;
end;

procedure TFRelProdCli.FrmSubGrupo1BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.TSubgru, 'SUBGRUPOPROD', '', '', '');

    If AbrirForm(TFCadSUBGrupo, FCADSUBGrupo, 1)='Selected'
    Then Begin
   	FrmSubGrupo1.Repaint;
       FrmSubGrupo1.EdDescricao.Text:=DMESTOQUE.TSUBGru.FieldByName('DESCRICAO').AsString;
       FrmSubGrupo1.EDCodigo.text:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
    End;

   // ATUALIZA OS FORMULARIOS
   AtualizaForms;
end;

procedure TFRelProdCli.FrmSubGrupo2BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.TSubgru, 'SUBGRUPOPROD', '', '', '');

    If AbrirForm(TFCadSUBGrupo, FCadSUBGruPO, 1)='Selected'
    Then Begin
   	FrmSubGrupo2.Repaint;    
       FrmSubGrupo2.EdDescricao.Text:=DMESTOQUE.TSUBGru.FieldByName('DESCRICAO').AsString;
       FrmSubGrupo2.EDCodigo.text:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
    End;

   // ATUALIZA OS FORMULARIOS
   AtualizaForms;
    
end;

procedure TFRelProdCli.FrmGrupo1BTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmGrupo1.Repaint;   
   FrmGrupo1.EDCodigo.TEXT:='';
   FrmGrupo1.EdDescricao.TEXT:='';
end;

procedure TFRelProdCli.FrmGrupo2BTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmGrupo2.EDCodigo.TEXT:='';
   FrmGrupo2.EdDescricao.TEXT:='';
   FrmGrupo2.Repaint; 

end;

procedure TFRelProdCli.FrmSubGrupo1BTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmSubGrupo1.EDCodigo.TEXT:='';
   FrmSubGrupo1.EdDescricao.TEXT:='';
   FrmSubGrupo1.Repaint;
end;

procedure TFRelProdCli.FrmSubGrupo2BTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmSubGrupo2.EDCodigo.TEXT:='';
   FrmSubGrupo2.EdDescricao.TEXT:='';
   FrmSubGrupo2.Repaint;
end;

procedure TFRelProdCli.FrmProduto1BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
      FrmProduto1.Repaint;   
      FrmProduto1.EdDescricao.Text:=DMESTOQUE.WProduto.FieldByName('PRODUTO').AsString;
      FrmProduto1.EDCodigo.text:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
   End;

   // ATUALIZA OS FORMULARIOS
   AtualizaForms;
   
end;

procedure TFRelProdCli.FrmProduto1BTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmProduto1.EDCodigo.TEXT:='';
   FrmProduto1.EdDescricao.TEXT:='';
   FrmProduto1.Repaint;

end;

procedure TFRelProdCli.FrmProduto2BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto,1)='Selected'
   Then Begin
      FrmProduto2.EdDescricao.Text:=DMESTOQUE.WProduto.FieldByName('PRODUTO').AsString;
      FrmProduto2.EDCodigo.text:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
      FrmProduto2.Repaint;      
   End;

   // ATUALIZA OS FORMULARIOS
   AtualizaForms;

end;

procedure TFRelProdCli.FrmProduto2BTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmProduto2.EDCodigo.TEXT:='';
   FrmProduto2.EdDescricao.TEXT:='';
   FrmProduto2.Repaint;

end;

procedure TFRelProdCli.FrmSubProduto1BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
      FrmSubProduto1.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
      FrmSubProduto1.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
      FrmSubProduto1.Repaint;
   End;

   // ATUALIZA OS FORMULARIOS
   AtualizaForms;
   
end;

procedure TFRelProdCli.FrmSubProduto1BTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmSubProduto1.EDCodigo.TEXT:='';
   FrmSubProduto1.EdDescricao.TEXT:='';
   FrmSubProduto1.Repaint;
end;

procedure TFRelProdCli.FrmSubProduto2BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
      FrmSubProduto2.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
      FrmSubProduto2.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
      FrmSubProduto2.Repaint;
   End;

   // ATUALIZA OS FORMULARIOS
   AtualizaForms;

end;

procedure TFRelProdCli.FrmSubProduto2BTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmSubProduto2.EDCodigo.TEXT:='';
   FrmSubProduto2.EdDescricao.TEXT:='';
   FrmSubProduto2.Repaint;
end;

procedure TFRelProdCli.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
   FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE', '','((vwcliente.ativo<>0) or (vwcliente.ativo is null))');

   If AbrirForm(TFCliente,FCliente,1)='Selected'
   Then Begin
       FrmCliente1.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmCliente1.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
   End;

   // ATUALIZA OS FORMULARIOS
   AtualizaForms;
   
end;

procedure TFRelProdCli.FrmCliente2BTNOPENClick(Sender: TObject);
begin
  inherited;
   FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE', '',' ((vwcliente.ativo<>0) or (vwcliente.ativo is null))');

   If AbrirForm(TFCliente,FCliente,1)='Selected'
   Then Begin
       FrmCliente2.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmCliente2.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
   End;

   // ATUALIZA OS FORMULARIOS
   AtualizaForms;
   
end;

procedure TFRelProdCli.FrmClienteBTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmCliente1.EdDescricao.Text := '';
   FrmCliente1.EDCodigo.Text := '';
end;

procedure TFRelProdCli.FrmCliente2BTNMINUSClick(Sender: TObject);
begin
  inherited;
   FrmCliente2.EdDescricao.Text := '';
   FrmCliente2.EDCodigo.Text := '';
end;

procedure TFRelProdCli.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   // função para imprimir relatorio de produtos e cliente
   ImprimirProdCliente;
end;

// função para imprimir relatorio de produtos e cliente
procedure TFRelProdCli.ImprimirProdCliente;
begin

   // variavel que armazena todos os filtros
   XString := '';

   // DADOS DA LOJA
   FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');

   // EDITANDO TABELA LOJA
   DMMACS.TLoja.Edit;

   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('select pedvenda.cod_pedvenda, pedvenda.numped, pedvenda.dtpedven, pedvenda.cod_cliente,');
   DMESTOQUE.TRel.SQL.Add('itenspedven.cod_pedven, itenspedven.cod_estoque, itenspedven.cod_pedven, itenspedven.qtdeprod, itenspedven.valunit, itenspedven.valortotal, itenspedven.data,');
   DMESTOQUE.TRel.SQL.Add('estoque.cod_estoque, estoque.cod_subprod,');
   DMESTOQUE.TRel.SQL.Add('subproduto.cod_subproduto, subproduto.descricao, subproduto.marca, subproduto.cod_produto, subproduto.contrint,');
   DMESTOQUE.TRel.SQL.Add('cliente.cod_cliente, cliente.cod_pessoa, cliente.cod_interno AS CODCLI,');
   DMESTOQUE.TRel.SQL.Add('pessoa.cod_pessoa, pessoa.nome, pessoa.endnumero, pessoa.cpfcnpj,');
   DMESTOQUE.TRel.SQL.Add('grupoprod.descricao, grupoprod.cod_grupoprod,');
   DMESTOQUE.TRel.SQL.Add('subgrupoprod.descricao, subgrupoprod.cod_subgrupoprod,');
   DMESTOQUE.TRel.SQL.Add('produto.cod_produto, produto.cod_subgrupoprod, produto.cod_grupoprod');
   DMESTOQUE.TRel.SQL.Add('from pedvenda');
   DMESTOQUE.TRel.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
   DMESTOQUE.TRel.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
   DMESTOQUE.TRel.SQL.Add('left join itenspedven on pedvenda.cod_pedvenda = itenspedven.cod_pedven');
   DMESTOQUE.TRel.SQL.Add('left join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.TRel.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.TRel.SQL.Add('left join produto on subproduto.cod_produto = produto.cod_produto');
   DMESTOQUE.TRel.SQL.Add('left join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod');
   DMESTOQUE.TRel.SQL.Add('left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');

   // PEDIDO DE VENDA ABERTO
   If RGPedido.ItemIndex = 0
   Then Begin
       DMESTOQUE.TRel.SQL.Add('where pedvenda.situacao = ' + #39 + 'ABERTO' + #39);
       XString := 'Ped. Venda: Aberto';
   End;

   // PEDIDO DE VENDA FECHADO
   If RGPedido.ItemIndex = 1
   Then Begin
       DMESTOQUE.TRel.SQL.Add('where pedvenda.situacao = ' + #39 + 'FECHADO' + #39);
       XString := 'Ped. Venda: Fechado';
   End;

   // tanto aberto qto fexado
   If RGPedido.ItemIndex = 2 Then
       DMESTOQUE.TRel.SQL.Add('where ((pedvenda.situacao IS NULL) or (pedvenda.situacao = ' + #39 + 'ABERTO' + #39 + ') or (pedvenda.situacao = ' + #39 + 'FECHADO' + #39 +'))');

   FiltroGrupo;
   FiltroMarca;
   FiltroProduto;
   FiltroSubProduto;
   FiltroData;
   FiltroCliente;

   // REPASSANDO FILTROS UTILIZADOS
   DMMACS.TLoja.FieldByName('TMP1').AsString := XString;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;

   // APENAS O PRIMEIRO REGISTRO POSSUI A DIFERENCA DE DIAS E MESES
   FiltraTabela(DMMACS.TMP,'TMP','COD_TMP','1','');

   DMESTOQUE.TRel.SQL.Add('order by pessoa.nome, pedvenda.dtpedven');
   DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.Open;
   If DMESTOQUE.TRel.IsEmpty
   Then Begin
		Mensagem('INFORMAÇÃO', ' O Relatório retornou sem informações!', '', 1, 1, False, 'I');
   End
   Else Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfHistoricoProdCli.frf');
      FSRel.ShowReport;
   End;
end;

//Filtro por Grupo
Procedure TFRelProdCli.FiltroGrupo;
Begin
	If (FRMGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
       DMESTOQUE.TRel.SQL.Add(' AND (upper(grupoprod.descricao) between upper(:GRUPO1) AND upper(:GRUPO2)) ');
       DMESTOQUE.TRel.ParamByName('GRUPO1').AsString:=FrmGrupo1.EdDescricao.Text;
       DMESTOQUE.TRel.ParamByName('GRUPO2').AsString:=FrmGrupo2.EdDescricao.Text;

       // filtros
       XString := XString + ' - Grupo: ' + FrmGrupo1.EdDescricao.Text + ' á ' + FrmGrupo2.EdDescricao.Text;

   End;
End;

//filtro por marca
Procedure TFRelProdCli.FiltroMarca;
Begin
	If (CBMARCAINI.Text<>'') And (CBMARCAFIM.Text<>'')
	Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND ((subproduto.marca between :MARCA1 AND :MARCA2)) ');
       DMESTOQUE.TRel.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
   	DMESTOQUE.TRel.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;

       XString := XString + ' - Marca: ' + CBMARCAINI.Text + ' á ' + CBMARCAFIM.Text;

   End;
End;

//Filtro por Data
Procedure TFRelProdCli.FiltroData;
var
XCont: integer; // tem a função de percorrer todos os meses ate a data final
XNumDias: integer; // o numero de mes pode ser quebrado, por exemplo, 3,15. O numero 3 são os meses e 15 são os dias quebrados de diferenca
Begin
	If (EdData1.Text<>'  /  /    ') AND (EdData2.Text<>'  /  /    ')
  	Then Begin
       DMESTOQUE.TRel.SQL.Add(' AND ((pedvenda.dtpedven>=:DATA1) And (pedvenda.dtpedven<=:DATA2))');
       DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);

       // filtro
       XString := XString + ' -  Data: ' + EdData1.Text + ' á ' + EdData2.Text;

       // limpando a tabela temporaria
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('delete from tmp');
       DMMACS.TMP.ExecSQL;

       FiltraTabela(DMMACS.TMP,'TMP','','','');
       DMMACS.TMP.Insert;

       DMMACS.TMP.FieldByName('COD_TMP').AsInteger := 1;

       // se for o mesmo dia e apenas um mes de diferenca o total de dias recebe 30 e o numero de mes 1
       If (copy(EDData1.Text,0,2) = copy(EdData2.Text,0,2))
       Then Begin
           // DIFERENCA DE MESES ENTRE DUAS DATAS
           DMMACS.TMP.FieldByName('VLR1').AsInteger := (StrToInt(copy(EdData2.Text,4,2)) - StrToInt(copy(EDData1.Text,4,2)));

           // se for mes de fevereiro desconsidera um mes e acrescenta 28 dias
           If StrToInt(copy(EDData1.Text,4,2)) = 2
           Then Begin
               // DIFERENCA DE DIAS ENTRE DUAS DATAS
               DMMACS.TMP.FieldByName('INT1').AsInteger := 30 * (StrToInt(copy(EdData2.Text,4,2)) - StrToInt(copy(EDData1.Text,4,2)) - 1) + 28;
           End
           Else Begin
               // DIFERENCA DE DIAS ENTRE DUAS DATAS
               DMMACS.TMP.FieldByName('INT1').AsInteger := 30 * (StrToInt(copy(EdData2.Text,4,2)) - StrToInt(copy(EDData1.Text,4,2)));
           End;
           DMMACS.TMP.Post;
           DMMACS.Transaction.CommitRetaining;
           Exit;
       End;

       // DIFERENCA DE DIAS ENTRE DUAS DATAS
       DMMACS.TMP.FieldByName('INT1').AsInteger := DaysBetween(StrToDate(EDData1.Text),StrToDate(EdData2.Text));

       // se for do mesmo mes ou se o numero da diferenca entre dias for menor que 30, não se passou de um mes e o numero deste mesmo campo sera "1"
       If (Copy(EDData1.Text,4,2) = copy(EdData2.Text,4,2)) OR (DaysBetween(StrToDate(EDData1.Text),StrToDate(EdData2.Text)) < 30)
       Then Begin
           // DIFERENCA DE MESES ENTRE DUAS DATAS
           DMMACS.TMP.FieldByName('VLR1').AsInteger := DaysBetween(StrToDate(EDData1.Text),StrToDate(EdData2.Text));
       End
       Else Begin
           XCont := 0;

           // ou seja, o dia da data inicial é maior que o dia da data final
           If StrToInt(copy(EDData1.Text,0,2)) > StrToInt(copy(EDData2.Text,0,2))
           Then Begin
               // enquanto a variavel for menor ou igual á diferenca de meses o laço eh percorrido
               while XCont <= MonthsBetween(StrToDate(EDData1.Text),StrToDate(EdData2.Text)) do
               begin
                   // se a variavel for do mesmo numero da diferenca de meses, eh feito apenas a diferenca do dia 1 ate o dia final
                   If XCont = MonthsBetween(StrToDate(EDData1.Text),StrToDate(EdData2.Text))
                   Then Begin
                       XNumDias := XNumDias + StrToInt(Copy(EdData2.Text,0,2));
                   End
                   Else Begin
                       // significa que vai ser do dia da data inicial ateh o final do mes inicial
                       If XCont = 0
                       Then Begin
                           // a função retorna numero de dias do mes
                           XNumDias := RetornaNumeroDiasMes(StrToInt(Copy(EDData1.Text,4,2))) - StrToInt(copy(EDData1.Text,0,2))  ;
                       End;
                   End;
               XCont := XCont + 1
               end;

               If StrToInt(copy(EdData2.Text,0,2)) < StrToInt(copy(EdData1.Text,0,2))
               Then Begin
                   // DIFERENCA DE MESES ENTRE DUAS DATAS
                   DMMACS.TMP.FieldByName('VLR1').AsString := IntToStr(StrToInt(copy(EdData2.Text,4,2)) - StrToInt(copy(EdData1.Text,4,2)) - 1)  + ',' + IntToStr(XNumDias);
               End
               Else Begin
                   // DIFERENCA DE MESES ENTRE DUAS DATAS
                   DMMACS.TMP.FieldByName('VLR1').AsString := IntToStr(StrToInt(copy(EdData2.Text,4,2)) - StrToInt(copy(EdData1.Text,4,2)))  + ',' + IntToStr(XNumDias);
               End;
           End
           Else Begin
               XCont := StrToInt(copy(EdData2.Text,4,2)) - StrToInt(copy(EdData1.Text,4,2));
               XNumDias := StrToInt(copy(EdData2.Text,0,2)) - StrToInt(copy(EdData1.Text,0,2));
               // DIFERENCA DE MESES ENTRE DUAS DATAS
               DMMACS.TMP.FieldByName('VLR1').AsString := IntToStr(XCont) + ',' + IntToStr(XNumDias);
           End;
       End;
       DMMACS.TMP.Post;
       DMMACS.Transaction.CommitRetaining;
   End;
End;

// Retorna o numero de dias de cada mes
Function TFRelProdCli.RetornaNumeroDiasMes(Numero_Mes: integer):integer;
begin
   case Numero_Mes of
      1: Result := 31;
      2: Result := 28;
      3: Result := 31;
      4: Result := 30;
      5: Result := 31;
      6: Result := 30;
      7: Result := 31;
      8: Result := 31;
      9: Result := 30;
      10: Result := 31;
      11: Result := 30;
      12: Result := 31;
   end;

end;

//Filtro por produto
Procedure TFRelProdCli.FiltroProduto;
Begin
	If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND (upper(Produto.descricao) between upper(:PRODUTO1) AND upper(:PRODUTO2)) ');
 	   	DMESTOQUE.TRel.ParamByName('PRODUTO1').AsString:=FrmProduto1.EdDescricao.Text;
	   	DMESTOQUE.TRel.ParamByName('PRODUTO2').AsString:=FrmProduto2.EdDescricao.Text;

       // filtro
       XString := XString + ' - Produto: ' + FrmProduto1.EdDescricao.Text + ' á ' + FrmProduto2.EdDescricao.Text;
   End;
End;

//Filtro por Subgrupo
Procedure TFRelProdCli.FiltroSubGrupo;
Begin
	If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
       DMESTOQUE.TRel.SQL.Add(' AND (upper(subgrupoprod.descricao) between upper(:SUBGRUPO1) AND upper(:SUBGRUPO2)) ');
       DMESTOQUE.TRel.ParamByName('SUBGRUPO1').AsString:=FrmSubGrupo1.EdDescricao.Text;
       DMESTOQUE.TRel.ParamByName('SUBGRUPO2').AsString:=FrmSubGrupo2.EdDescricao.Text;

       XString := XString + ' - SubGrupo: ' + FrmSubGrupo1.EdDescricao.Text + ' á ' + FrmSubGrupo2.EdDescricao.Text;

   End;
End;

//Filtro por SubProduto
Procedure TFRelProdCli.FiltroSubProduto;
Begin
	If (FrmSubProduto1.EdDescricao.Text<>'') And (FrmSubProduto2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND (upper(SubProduto.descricao) between upper(:SUBPROD1) AND upper(:SUBPROD2)) ');
       DMESTOQUE.TRel.ParamByName('SUBPROD1').AsString:=FrmSubProduto1.EdDescricao.Text;
       DMESTOQUE.TRel.ParamByName('SUBPROD2').AsString:=FrmSubProduto2.EdDescricao.Text;

       XString := XString + ' - Subproduto: ' + FrmSubProduto1.EdDescricao.Text + ' á ' + FrmSubProduto2.EdDescricao.Text;

   End;
End;
procedure TFRelProdCli.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   FRelProdCli.Close;
end;

procedure TFRelProdCli.FiltroCliente;
begin
	if(FrmCliente1.EdDescricao.Text <> '') and (FrmCliente2.EdDescricao.Text <> '')then
   	begin
       	DMESTOQUE.TRel.SQL.Add(' AND ((cliente.cod_interno) between :CLIENTE1 and :CLIENTE2) ');
           DMESTOQUE.TRel.ParamByName('CLIENTE1').AsString:=FrmCliente1.EDCodigo.Text;
           DMESTOQUE.TRel.ParamByName('CLIENTE2').AsString:=FrmCliente2.EDCodigo.Text;
       end;
end;

procedure TFRelProdCli.FrmGrupo1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
       // limpando a edit
       If FrmGrupo1.EDCodigo.Text = '' Then
           FrmGrupo1.EdDescricao.Text := '';

       If FrmGrupo1.EDCodigo.Text <> ''
       Then Begin
           If filtraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', 'COD_GRUPOPROD', '', 'COD_INTERNO = ' + #39 + FrmGrupo1.EDCodigo.Text + #39) = true
           Then Begin
               FrmGrupo1.EdDescricao.Text := DMESTOQUE.TGrupo.FieldByname('DESCRICAO').AsString;
               FrmGrupo1.EDCodigo.Text := DMESTOQUE.TGrupo.FieldByname('COD_INTERNO').AsString;
               FrmGrupo2.EDCodigo.SetFocus;
           End
           Else Begin
               FrmGrupo1.EdDescricao.Text := '';
           End;
       End;
       FrmGrupo1.Refresh;
   End;

end;

procedure TFRelProdCli.FrmSubGrupo1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
       If FrmSubGrupo1.EDCodigo.Text = '' Then
           FrmSubGrupo1.EdDescricao.Text := '';

       If FiltraTabela(DMESTOQUE.TSubgru,'SUBGRUPOPROD','COD_SUBGRUPOPROD','','COD_INTERNO = ' + #39 + FrmSubGrupo1.EDCodigo.Text + #39) = TRUE
       Then Begin
           FrmSubGrupo1.EdDescricao.Text := DMESTOQUE.TSubgru.FieldByName('DESCRICAO').AsString;
           FrmSubGrupo2.EDCodigo.SetFocus;
       End
       Else Begin
           FrmSubGrupo1.EdDescricao.Text := '';
       End;
       FrmSubGrupo1.Refresh;
   End;


end;

procedure TFRelProdCli.FrmGrupo2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
       // limpando a edit
       If FrmGrupo2.EDCodigo.Text = '' Then
           FrmGrupo2.EdDescricao.Text := '';

       If FrmGrupo2.EDCodigo.Text <> ''
       Then Begin
           If filtraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', 'COD_GRUPOPROD', '', 'COD_INTERNO = ' + #39 + FrmGrupo2.EDCodigo.Text + #39) = true
           Then Begin
               FrmGrupo2.EdDescricao.Text := DMESTOQUE.TGrupo.FieldByname('DESCRICAO').AsString;
               FrmGrupo2.EDCodigo.Text := DMESTOQUE.TGrupo.FieldByname('COD_INTERNO').AsString;
               FrmSubGrupo1.EDCodigo.SetFocus;
           End
           Else Begin
               FrmGrupo2.EdDescricao.Text := '';
           End;
       End;
       FrmGrupo2.Refresh;
   End;


end;

procedure TFRelProdCli.FrmSubGrupo2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
       If FrmSubGrupo2.EDCodigo.Text = '' Then
           FrmSubGrupo2.EdDescricao.Text := '';

       If FiltraTabela(DMESTOQUE.TSubgru,'SUBGRUPOPROD','COD_SUBGRUPOPROD','','COD_INTERNO = ' + #39 + FrmSubGrupo2.EDCodigo.Text + #39) = TRUE
       Then Begin
           FrmSubGrupo2.EdDescricao.Text := DMESTOQUE.TSubgru.FieldByName('DESCRICAO').AsString;
           FrmProduto1.EDCodigo.SetFocus;
       End
       Else Begin
           FrmSubGrupo2.EdDescricao.Text := '';
       End;
       FrmSubGrupo2.Refresh;
   End;
end;

procedure TFRelProdCli.FrmProduto1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
       If FrmProduto1.EDCodigo.Text = '' Then
           FrmProduto1.EdDescricao.Text := '';

       If FiltraTabela(DMESTOQUE.TProduto,'PRODUTO','COD_PRODUTO','','COD_INTERNO = ' + #39 + FrmProduto1.EDCodigo.Text + #39) = TRUE
       Then Begin
           FrmProduto1.EdDescricao.Text := DMESTOQUE.TProduto.FieldByname('DESCRICAO').AsString;
           FrmProduto2.EDCodigo.SetFocus;
       End
       Else Begin
           FrmProduto1.EdDescricao.Text := '';
       End;
       FrmProduto1.Refresh;
   End;
end;

procedure TFRelProdCli.FrmProduto2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
       If FrmProduto2.EDCodigo.Text = '' Then
           FrmProduto2.EdDescricao.Text := '';

       If FiltraTabela(DMESTOQUE.TProduto,'PRODUTO','COD_PRODUTO','','COD_INTERNO = ' + #39 + FrmProduto2.EDCodigo.Text + #39) = TRUE
       Then Begin
           FrmProduto2.EdDescricao.Text := DMESTOQUE.TProduto.FieldByname('DESCRICAO').AsString;
           CBMARCAINI.SetFocus;
       End
       Else Begin
           FrmProduto2.EdDescricao.Text := '';
       End;
       FrmProduto2.Refresh;
   End;


end;

procedure TFRelProdCli.FrmSubProduto1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
       If FrmSubProduto1.EDCodigo.Text = '' Then
           FrmSubProduto1.EDCodigo.Text := '';

       If FiltraTabela(DMESTOQUE.TSubProd,'SUBPRODUTO','COD_SUBPRODUTO','','CONTRINT = ' + #39 + FrmSubProduto1.EDCodigo.Text + #39) = TRUE
       Then Begin
           FrmSubProduto1.EdDescricao.Text := DMESTOQUE.TSubProd.FieldByname('DESCRICAO').AsString;
           FrmSubProduto2.EDCodigo.SetFocus;
       End
       Else Begin
           FrmSubProduto1.EdDescricao.Text := '';
       End;
       FrmSubProduto1.Refresh;
   End;


end;

procedure TFRelProdCli.FrmCliente1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If Key = #13
   Then Begin
       If FrmCliente1.EDCodigo.Text = '' Then
           FrmCliente1.EdDescricao.Text := '';

       If FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE','','COD_INTERNO = ' + #39 + FrmCliente1.EDCodigo.Text + #39) = TRUE
       Then Begin
           FrmCliente1.EdDescricao.Text := DMPESSOA.WCliente.FieldByname('NOME').AsString;
           FrmCliente2.EDCodigo.SetFocus;
       End
       Else Begin
           FrmCliente1.EdDescricao.Text := '';
       End;
       FrmCliente1.Refresh;
   End;


end;

procedure TFRelProdCli.FrmSubProduto2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
       If FrmSubProduto2.EDCodigo.Text = '' Then
           FrmSubProduto2.EDCodigo.Text := '';

       If FiltraTabela(DMESTOQUE.TSubProd,'SUBPRODUTO','COD_SUBPRODUTO','','CONTRINT = ' + #39 + FrmSubProduto2.EDCodigo.Text + #39) = TRUE
       Then Begin
           FrmSubProduto2.EdDescricao.Text := DMESTOQUE.TSubProd.FieldByname('DESCRICAO').AsString;
           FrmCliente1.EDCodigo.SetFocus;
       End
       Else Begin
           FrmSubProduto2.EdDescricao.Text := '';
       End;
       FrmSubProduto2.Refresh;

   End;


end;

procedure TFRelProdCli.FrmCliente2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
       If FrmCliente2.EDCodigo.Text = '' Then
           FrmCliente2.EdDescricao.Text := '';

       If FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE','','COD_INTERNO = ' + #39 + FrmCliente2.EDCodigo.Text + #39) = TRUE
       Then Begin
           FrmCliente2.EdDescricao.Text := DMPESSOA.WCliente.FieldByname('NOME').AsString;
           BtnVisualizar.SetFocus;
       End
       Else Begin
           FrmCliente2.EdDescricao.Text := '';
       End;
       FrmCliente2.Refresh;
   End;


end;

// ATUALIZA OS FORMULARIOS
procedure TFRelProdCli.AtualizaForms;
begin
   FrmGrupo1.Refresh;
   FrmGrupo2.Refresh;
   FrmSubGrupo1.Refresh;
   FrmSubGrupo2.Refresh;
   FrmProduto1.Refresh;
   FrmProduto2.Refresh;
   FrmSubProduto1.Refresh;
   FrmSubProduto2.Refresh;
   FrmCliente1.Refresh;
   FrmCliente2.Refresh;
end;

procedure TFRelProdCli.FrmCliente1EDCodigoExit(Sender: TObject);
begin
  If FrmCliente1.EDCodigo.Text = '' Then
     FrmCliente1.EdDescricao.Text := '';

 If FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE','','COD_INTERNO = ' + #39 + FrmCliente1.EDCodigo.Text + #39) = TRUE
 Then Begin
     FrmCliente1.EdDescricao.Text := DMPESSOA.WCliente.FieldByname('NOME').AsString;
     FrmCliente2.EDCodigo.SetFocus;
 End
 Else Begin
     FrmCliente1.EdDescricao.Text := '';
 End;
 FrmCliente1.Refresh;
end;

procedure TFRelProdCli.FrmCliente2EDCodigoExit(Sender: TObject);
begin
  If FrmCliente2.EDCodigo.Text = '' Then
     FrmCliente2.EdDescricao.Text := '';

 If FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE','','COD_INTERNO = ' + #39 + FrmCliente2.EDCodigo.Text + #39) = TRUE
 Then Begin
     FrmCliente2.EdDescricao.Text := DMPESSOA.WCliente.FieldByname('NOME').AsString;
     BtnVisualizar.SetFocus;
 End
 Else Begin
     FrmCliente2.EdDescricao.Text := '';
 End;
 FrmCliente2.Refresh;
end;

end.
