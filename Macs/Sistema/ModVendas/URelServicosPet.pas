unit URelServicosPet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, ExtCtrls, UFrmBusca, Mask;

type
  TFRelServicosPet = class(TFPadraoRelatorio)
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    FrmPessoaIni: TFrmBusca;
    FrmServicos: TFrmBusca;
    FSDSRel1: TfrDBDataSet;
    frDBDataSet2: TfrDBDataSet;
    procedure FrmPessoaIniBTNMINUSClick(Sender: TObject);
    procedure FrmPessoaIniBTNOPENClick(Sender: TObject);
    procedure FrmPessoaIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmPessoaIniEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmPessoaFimBTNMINUSClick(Sender: TObject);
    procedure FrmPessoaFimBTNOPENClick(Sender: TObject);
    procedure FrmServicosEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //Procedure que prepara sql para Impressão
    Procedure ImpRelAnaliticoServicos;
    //Procedure que prepara sql para Impressão
    Procedure ImpRelAnaliticoProduto;

  end;

var
  FRelServicosPet: TFRelServicosPet;
  XCodPESSOA, xCodVendedor, XCodServico: Integer;
  XTOTORD, XTOTPROD, XTOTSERV, XTOTDESP: Real;

implementation

uses UDMPessoa, UCliente, UFuncionario, UDmServ, Alxor32, DB, UServico,
  UDMMacs, UMenu, UDMEstoque, UProduto;

{$R *.dfm}

procedure TFRelServicosPet.FrmPessoaIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XCodPESSOA:=-1;
   FrmPessoaIni.EDCodigo.Text:='';
   FrmPessoaini.EdDescricao.Text:='';
   FrmPessoaIni.Repaint;  
end;

procedure TFRelServicosPet.FrmPessoaIniBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS CLIENTES PARA CONSUTA
  	filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
  	If AbrirForm(TFCliente, FCliente, 1)='Selected'
	Then Begin
       XCodPESSOA:=DMPESSOA.WCliente.FieldByName('cod_cliente').AsInteger;
       FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmPessoaIni.Repaint;
	End;
end;

procedure TFRelServicosPet.FrmPessoaIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
       If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', FrmPessoaIni.EDCodigo.Text, '')=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           XCodPESSOA:=DMPESSOA.WCliente.FieldByName('cod_cliente').AsInteger;
           FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           FrmPessoaIni.Repaint;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XCodPESSOA:=-1;
           FrmPessoaIni.EdDescricao.Text:='';
           FrmPessoaIni.EDCodigo.Text:='';
           FrmPessoaIni.Repaint;             
       End;
   End;
end;

procedure TFRelServicosPet.FrmPessoaIniEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If Key = #13
   Then Begin
       If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmPessoaIni.EDCodigo.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
           XCodPESSOA:=DMPESSOA.WCliente.FieldByName('cod_cliente').AsInteger;
           FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FrmPessoaIni.Repaint;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XCodPESSOA:=-1;
           FrmPessoaIni.EdDescricao.Text:='';
           FrmPessoaIni.EDCodigo.text:='';
           FrmPessoaIni.Repaint;
       End;
   End;

end;

procedure TFRelServicosPet.FrmPessoaFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XCodServico:=-1;
   FrmServicos.EDCodigo.Text:='';
   FrmServicos.EdDescricao.Text:='';
   FrmServicos.Repaint;
end;

procedure TFRelServicosPet.FrmPessoaFimBTNOPENClick(Sender: TObject);
begin
  inherited;
   If FMenu.TIPOREL='SERVIÇOS'
   Then Begin
  	    If AbrirForm(TFSERVICO, FSERVICO, 1)='Selected'
	    Then Begin
           XCodServico := DMSERV.WSubServ.FieldByName('COD_SUBSERVICO').AsInteger;
           FrmServicos.EdDescricao.Text:=DMSERV.WSubServ.FieldByName('descricao').AsString;
           FrmServicos.EDCodigo.text:=DMSERV.WSubServ.FieldByName('cod_interno').AsString;
           FrmServicos.Repaint;
	    End;
   End
   Else Begin
  	    If AbrirForm(TFProduto, FProduto, 1)='Selected'
	    Then Begin
           XCodServico := DMESTOQUE.WSimilar.FieldByName('cod_subproduto').AsInteger;
           FrmServicos.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('descricao').AsString;
           FrmServicos.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('contrint').AsString;
           FrmServicos.Repaint;
	    End;
   End;
end;

procedure TFRelServicosPet.FrmServicosEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   If Key=VK_RETURN
   Then Begin
       If FMenu.TIPOREL='SERVIÇOS'
       Then Begin
           If FiltraTabela(DMSERV.WSubServ, 'vwsubservico', 'cod_interno', '', ' cod_interno='+#39+FrmServicos.EDCodigo.Text+#39)=True
           Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
               FrmServicos.EDCodigo.Text := DMSERV.WSubServ.FieldByName('cod_interno').AsString;
               FrmServicos.EdDescricao.Text := DMSERV.WSubServ.FieldByName('descricao').AsString;
               XCodServico := DMSERV.WSubServ.FieldByName('cod_subservico').AsInteger;
               FrmServicos.Repaint;
           End
           Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
               FrmServicos.EDCodigo.Text := '';
               FrmServicos.EdDescricao.Text := '';
               XCodServico := -1;
               FrmServicos.Repaint;
           End;
       End
       Else Begin
           If FiltraTabela(DMESTOQUE.WSimilar, 'vwsimilar', 'contrint', '', ' contrint='+#39+FrmServicos.EDCodigo.Text+#39)=True
           Then Begin//CASO CONSEGUIU SELECIONAR
               FrmServicos.EDCodigo.Text := DMESTOQUE.WSimilar.FieldByName('contrint').AsString;
               FrmServicos.EdDescricao.Text := DMESTOQUE.WSimilar.FieldByName('descricao').AsString;
               XCodServico := DMESTOQUE.WSimilar.FieldByName('cod_subproduto').AsInteger;
               FrmServicos.Repaint;
           End
           Else Begin//CASO NÃO CONSEGUIU SELECIONAR
               FrmServicos.EDCodigo.Text := '';
               FrmServicos.EdDescricao.Text := '';
               XCodServico := -1;
               FrmServicos.Repaint;
           End;
       End;
    End;
end;
procedure TFRelServicosPet.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
  	DMMACS.TLoja.FieldByName('TMP1').AsString:='Dt. Ini.: '+EdDataIni.Text+' / Dt. Fin.: '+EdDataFim.Text+' - '+FrmPessoaIni.EdDescricao.Text+' - '+FrmServicos.EdDescricao.Text;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   If FMenu.TIPOREL='SERVIÇOS' Then
       ImpRelAnaliticoServicos
   Else
       ImpRelAnaliticoProduto;
end;

//Procedure que prepara sql para Impressão
Procedure TFRelServicosPet.ImpRelAnaliticoProduto;
Begin
   Try
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.sql.Add('Select ordem.numero, ordem.cod_ordem, vwcliente.cod_interno,vwcliente.cod_cliente ,pessoa.nome, vwcliente.nome as Cliente, equipamento.descricao As Equipamento, ordem.dtabert,');
       DMESTOQUE.TRel.sql.Add('Ordem.totserv, ordem.totprod, ordem.totord,');
       DMESTOQUE.TRel.sql.Add('produto.descricao as GRADE,produto.cod_produto, vwsimilar.cod_subproduto, vwsimilar.contrint, vwsimilar.descricao as NomeSimilar, itprodord.qtd as QtdProd,');
       DMESTOQUE.TRel.sql.Add('itprodord.vlrunit as VlrUnitProd, itprodord.desconto as DescProd, itprodord.total as TotalProd');
       DMESTOQUE.TRel.sql.Add('from itprodord');
       DMESTOQUE.TRel.sql.Add('left join ordem on itprodord.cod_ordem = ordem.cod_ordem');
       DMESTOQUE.TRel.sql.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
       DMESTOQUE.TRel.sql.Add('left join vwsimilar on estoque.cod_subprod = vwsimilar.cod_subproduto');
       DMESTOQUE.TRel.sql.Add('left join produto on vwsimilar.cod_produto = produto.cod_produto');
       DMESTOQUE.TRel.sql.Add('left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente');
       DMESTOQUE.TRel.sql.Add('Left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa');
       DMESTOQUE.TRel.sql.Add('left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento');
       DMESTOQUE.TRel.sql.Add(' Where (ordem.cod_loja=:Loja)  AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')' );
       DMESTOQUE.TRel.ParamByName('Loja').AsString:=FMenu.LCODLOJA.Caption;
       If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
       Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.DTABERT Between :Data1 and :Data2) ');
           DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
           DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
       End;
       If (XCodPESSOA<>-1)
       Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
           DMESTOQUE.TRel.SQL.Add(' AND (vwcliente.cod_cliente = :CodigoPessoa) ');
           DMESTOQUE.TRel.ParamByName('CodigoPessoa').AsInteger:=XCodPESSOA;
       End;
       If (XCodServico<>-1)
       Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
           DMESTOQUE.TRel.SQL.Add(' AND (vwsimilar.cod_subproduto = :CodigoServico )');
           DMESTOQUE.TRel.ParamByName('CodigoServico').AsInteger:=XCodServico;
       End;
       DMESTOQUE.TRel.sql.Add(' order by produto.descricao, vwsimilar.descricao ');
       DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelOSAnaliticoProdutos.frf');
           FSRel.ShowReport;
           Exit;
       End
       Else Begin
           MessageDlg('O Retorno do filtro obteve resultou vazio', mtWarning, [mbOK], 0);
       End;
   Except

   End;
End;

//Procedure que prepara sql para Impressão
Procedure TFRelServicosPet.ImpRelAnaliticoServicos;
Begin
	DMESTOQUE.TRel.Close;
	DMESTOQUE.TRel.SQL.Clear;
	DMESTOQUE.TRel.sql.Add(' Select ordem.numero, ordem.cod_ordem, vwcliente.cod_interno, pessoa.nome, vwcliente.nome as Cliente, equipamento.descricao As Equipamento, ordem.dtabert, ');
	DMESTOQUE.TRel.sql.Add('        Ordem.totserv, ordem.totprod, ordem.totord, ');
	DMESTOQUE.TRel.sql.Add('        servico.descricao as GRADE, vwsubservico.cod_subservico, vwsubservico.cod_interno, vwsubservico.descricao as NomeServico, itservord.qtd as QtdServico, ');
	DMESTOQUE.TRel.sql.Add('        itservord.vlrunit as VlrUnitServico, itservord.desconto as DescServico, itservord.total as TotalServico ');
	DMESTOQUE.TRel.sql.Add('         from itservord ');
	DMESTOQUE.TRel.sql.Add(' left join ordem on itservord.cod_ordem = ordem.cod_ordem ');
	DMESTOQUE.TRel.sql.Add('  left join vwsubservico on itservord.cod_servico = vwsubservico.cod_subservico ');
	DMESTOQUE.TRel.sql.Add(' left join servico on vwsubservico.cod_servico = servico.cod_servico ');
	DMESTOQUE.TRel.sql.Add(' left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente ');
	DMESTOQUE.TRel.sql.Add(' Left join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa ');
	DMESTOQUE.TRel.sql.Add(' left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento ');
	DMESTOQUE.TRel.sql.Add(' Where (ordem.cod_loja=:Loja) AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')' );
	DMESTOQUE.TRel.ParamByName('Loja').AsString:=FMenu.LCODLOJA.Caption;
   If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
       DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.DTABERT Between :Data1 and :Data2) ');
       DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
       DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
   End;
   If (XCodPESSOA<>-1)
   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
       DMESTOQUE.TRel.SQL.Add(' AND (vwcliente.cod_cliente = :CodigoPessoa) ');
       DMESTOQUE.TRel.ParamByName('CodigoPessoa').AsInteger:=XCodPESSOA;
   End;
   If (XCodServico<>-1)
   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
       DMESTOQUE.TRel.SQL.Add(' AND (vwsubservico.cod_subservico = :CodigoServico )');
       DMESTOQUE.TRel.ParamByName('CodigoServico').AsInteger:=XCodServico;
   End;
   DMESTOQUE.TRel.sql.Add(' order by servico.descricao, vwsubservico.cod_subservico ');
	DMESTOQUE.TRel.Open;
   If Not DMESTOQUE.TRel.IsEmpty
   Then Begin
       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelOSAnaliticoServicos.frf');
       FSRel.ShowReport;
   End
   Else Begin
   	MessageDlg('O Retorno do filtro obteve resultou vazio', mtWarning, [mbOK], 0);
   End;
End;

procedure TFRelServicosPet.FormActivate(Sender: TObject);
var
Year, Month, Day:word;
xUltimoDiaMes: Integer;
xDataInicial, xDataFinal: String;
begin
  inherited;
   Try
       DecodeDate(Date(), Year, Month, Day);
       xUltimoDiaMes := UltDiaMes(Month, Year);
       xDataInicial := '01/'+ConcatZero(Inttostr(Month), 2)+'/'+IntToStr(Year);
       xDataFinal := ConcatZero(Inttostr(xUltimoDiaMes), 2)+'/'+ConcatZero(Inttostr(Month), 2)+'/'+IntToStr(Year);
       EdDataIni.Text := xDataInicial;
       EdDataFim.Text := xDataFinal;
       FrmPessoaIni.BTNMINUS.Click();
       FrmServicos.BTNMINUS.Click();
       EdDataIni.SetFocus;
   except
   End;
   If FMenu.TIPOREL='SERVIÇOS' Then
       FrmServicos.LTextoBusca.Caption:='Filtrar por serviço'
   Else
       FrmServicos.LTextoBusca.Caption:='Filtrar por produto'
end;

End.

