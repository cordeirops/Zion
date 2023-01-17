unit URelClienteData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, DrLabel, jpeg, ExtCtrls, Mask, UFrmBusca;

type
  TFRelClienteData = class(TFPadraoRelatorio)
    FrmPessoaIni: TFrmBusca;
    FrmPessoaFim: TFrmBusca;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    procedure FormActivate(Sender: TObject);
    procedure FrmPessoaIniBTNOPENClick(Sender: TObject);
    procedure FrmPessoaFimBTNOPENClick(Sender: TObject);
    procedure FrmPessoaIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmPessoaFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FrmPessoaIniBTNMINUSClick(Sender: TObject);
    procedure FrmPessoaFimBTNMINUSClick(Sender: TObject);
  private
    { Private declarations }
	 //procedure utilizado para preparar a sql de impressãoProcedure TFRelEstoque.PrepImp;
	 Procedure PrepImp;
	 // Imprime relatorio de creditos de clientes
	 Procedure ImpRelCredCli;
	 // Imprime relatorio de creditos de fornecedores
	 Procedure ImpRelCredFor;

  public
    { Public declarations }
  end;

var
  FRelClienteData: TFRelClienteData;
  XPessoaIni, XPessoaFim: String;

implementation

uses UMenu, UDMPessoa, UCliente, UFORNECEDOR, Alxor32, UPadrao, UDMMacs,
  AlxMessage;

{$R *.dfm}

// Imprime relatorio de creditos de clientes
Procedure TFRelClienteData.ImpRelCredCli;
Begin
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:='Cliente: ';
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

	DMMACS.TRel.Close;
   DMMACS.TRel.SQL.Clear;
   DMMACS.TRel.SQL.Add(' select vwcliente.cod_cliente, vwcliente.nome, credito.data, credito.tipocred, credito.saldo, ');
   DMMACS.TRel.SQL.Add(' credito.cod_credito, credito.documento, credito.valor from credito ');
   DMMACS.TRel.SQL.Add(' left join vwcliente on credito.cod_pessoa = vwcliente.cod_cliente ');
   DMMACS.TRel.SQL.Add('     where (credito.tipopes='+#39+'CLI'+#39+') ');
   If (FrmPessoaIni.EdDescricao.Text<>'') And (FrmPessoaFim.EdDescricao.Text<>'')
	Then Begin
   	DMMACS.TRel.SQL.Add(' and (vwcliente.nome between :nome1 and :nome2) ');
   	DMMACS.TRel.ParamByName('nome1').AsString:=FrmPessoaIni.EdDescricao.Text;
   	DMMACS.TRel.ParamByName('nome2').AsString:=FrmPessoaFim.EdDescricao.Text;
	End;

	//FILTRA PELA DATA DE MOVIMENTAÇÃO
   If (EdDataIni.Text<>'  /  /    ') AND (EdDataFim.Text<>'  /  /    ')
   Then Begin
   	DMMACS.TRel.SQL.Add(' AND ((credito.data>=:DATA1) And (credito.data<=:DATA2)) ');
       DMMACS.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
       DMMACS.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
   End;
   DMMACS.TRel.SQL.Text;
   DMMACS.TRel.Open;
   If not DMMACS.TRel.IsEmpty
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCREDITOCLIENTE.frf');
      FSRel.ShowReport;
   End
   Else Begin
		Mensagem('INFORMAÇÃO', 'O Relatório retornou vazio', '', 1, 1, False, 'a');
   End;
End;

// Imprime relatorio de creditos de fornecedores
Procedure TFRelClienteData.ImpRelCredFor;
Begin
	DMMACS.TRel.Close;
   DMMACS.TRel.SQL.Clear;
   DMMACS.TRel.SQL.Add('  select vwfornec.cod_fornec, vwfornec.nome, credito.data, credito.tipocred, credito.saldo, ');
   DMMACS.TRel.SQL.Add('  credito.cod_credito, credito.documento, credito.valor from credito ');
   DMMACS.TRel.SQL.Add('  left join vwfornec on credito.cod_pessoa = vwfornec.cod_fornec ');
   DMMACS.TRel.SQL.Add('     where (credito.tipopes='+#39+'FOR'+#39+') ');
   If (FrmPessoaIni.EdDescricao.Text<>'') And (FrmPessoaFim.EdDescricao.Text<>'')
	Then Begin
   	DMMACS.TRel.SQL.Add(' and (vwfornec.nome between :nome1 and :nome2) ');
   	DMMACS.TRel.ParamByName('nome1').AsString:=FrmPessoaIni.EdDescricao.Text;
   	DMMACS.TRel.ParamByName('nome2').AsString:=FrmPessoaFim.EdDescricao.Text;
	End;

	//FILTRA PELA DATA DE MOVIMENTAÇÃO
   If (EdDataIni.Text<>'  /  /    ') AND (EdDataFim.Text<>'  /  /    ')
   Then Begin
   	DMMACS.TRel.SQL.Add(' AND ((credito.data>=:DATA1) And (credito.data<=:DATA2)) ');
       DMMACS.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
       DMMACS.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
   End;
   DMMACS.TRel.SQL.Text;
   DMMACS.TRel.Open;
   If not DMMACS.TRel.IsEmpty
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCREDITOFORNEC.frf');
      FSRel.ShowReport;
   End
   Else Begin
		Mensagem('INFORMAÇÃO', 'O Relatório retornou vazio', '', 1, 1, False, 'a');
   End;
End;

//procedure utilizado para preparar a sql de impressãoProcedure TFRelEstoque.PrepImp;
Procedure TFRelClienteData.PrepImp;
Begin
	//PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
	If (EDDataini.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ') Then
   	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' Data: '+EdDataIni.Text+'-'+EdDataFim.Text+#13;
  	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' Cliente Ini.: '+FrmPessoaIni.EdDescricao.Text+#13;
  	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' Cliente Fin.: '+FrmPessoaFim.EdDescricao.Text+#13;
	DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;  
   If FMenu.TIPOREL='RELCREDCLI'
   Then Begin
   	ImpRelCredCli;
   End;
   If FMenu.TIPOREL='RELCREDFOR'
   Then Begin
   	ImpRelCredFor;
   End;             
End;

procedure TFRelClienteData.FormActivate(Sender: TObject);
begin
  inherited;
	If FMenu.TIPOREL='RELCREDCLI'
   Then Begin
   	Caption:='Rel. Mov. de Créditos de Clientes';
		FrmPessoaIni.LTextoBusca.Caption:='Cliente Inicial:';
		FrmPessoaFim.LTextoBusca.Caption:='Cliente Final:';
   End;
	If FMenu.TIPOREL='RELCREDFOR'
   Then Begin
   	Caption:='Rel. Mov. de Créditos de Fornecedores';
		FrmPessoaIni.LTextoBusca.Caption:='Fornecedor Inicial:';
		FrmPessoaFim.LTextoBusca.Caption:='Fornecedor Final:';
   End;

   EdDataIni.SetFocus;
end;

procedure TFRelClienteData.FrmPessoaIniBTNOPENClick(Sender: TObject);
begin
  inherited;
	If (FMenu.TIPOREL='RELCREDCLI')
   Then Begin//RELATÓRIO DE CONTAS A PAGAR
   	//LIBERA TODOS OS CLIENTES PARA CONSUTA
		filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
   	If AbrirForm(TFCliente, FCliente, 1)='Selected'
   	Then Begin
   		XPessoaIni:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       	FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       	FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       	FrmPessoaIni.Repaint;
   	End;
   End;
	If (FMenu.TIPOREL='RELCREDFOR')
   Then Begin//RELATÓRIO DE CONTAS A RECEBER
   	//LIBERA TODOS OS FORNECEDORE PARA CONSUTA
		filtraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', '');
   	If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
   	Then Begin
   		XPessoaIni:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       	FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       	FrmPessoaIni.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
       	FrmPessoaIni.Repaint;
   	End;
   End;
end;

procedure TFRelClienteData.FrmPessoaFimBTNOPENClick(Sender: TObject);
begin
  inherited;
	If (FMenu.TIPOREL='RELCREDCLI')
   Then Begin//RELATÓRIO DE CONTAS A PAGAR
   	//LIBERA TODOS OS CLIENTES PARA CONSUTA
		filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
   	If AbrirForm(TFCliente, FCliente, 1)='Selected'
   	Then Begin
   		XPessoaFim:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       	FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       	FrmPessoaFim.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       	FrmPessoaFim.Repaint;
   	End;
   End;
	If (FMenu.TIPOREL='RELCREDFOR')
   Then Begin//RELATÓRIO DE CONTAS A RECEBER
   	//LIBERA TODOS OS FORNECEDORE PARA CONSUTA
		filtraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', '');
   	If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
   	Then Begin
   		XPessoaFim:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       	FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       	FrmPessoaFim.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
       	FrmPessoaFim.Repaint;
   	End;
   End;
end;

procedure TFRelClienteData.FrmPessoaIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
		If (FMenu.TIPOREL='RELCREDCLI')
       Then Begin//trabalhando com clientes
       	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmPessoaIni.EDCodigo.Text+#39)=True
           Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
	        	XPESSOAINI:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	            FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           End
	        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
               XPESSOAINI:='';
               FrmPessoaIni.EdDescricao.Text:='';
	            FrmPessoaIni.EDCodigo.Text:='';
           End;
       End;
		If (FMenu.TIPOREL='RELCREDFOR')
       Then Begin//trabalhando com fornecedores
       	If FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'cod_fornec', '', ' COD_INTERNO='+#39+FrmPessoaIni.EDCodigo.Text+#39)=True
           Then Begin//CASO CONSEGUIU SELECIONAR FORNECEDOR
	        	XPESSOAINI:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
	            FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
           End
	        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
               XPESSOAINI:='';
               FrmPessoaIni.EdDescricao.Text:='';
	            FrmPessoaIni.EDCodigo.Text:='';
           End;
       End;
       FrmPessoaIni.Repaint;
   End;

end;

procedure TFRelClienteData.FrmPessoaFimEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
		If (FMenu.TIPOREL='RELCREDCLI')
       Then Begin//trabalhando com clientes
       	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmPessoaIni.EDCodigo.Text+#39)=True
           Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
	        	XPessoaFim:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	            FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           End
	        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
               XPESSOAINI:='';
               FrmPessoaFim.EdDescricao.Text:='';
	            FrmPessoaFim.EDCodigo.Text:='';
           End;
       End;
		If (FMenu.TIPOREL='RELCREDFOR')
       Then Begin//trabalhando com fornecedores
       	If FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'cod_fornec', '', ' COD_INTERNO='+#39+FrmPessoaFim.EDCodigo.Text+#39)=True
           Then Begin//CASO CONSEGUIU SELECIONAR FORNECEDOR
	        	XPESSOAINI:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
	            FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
           End
	        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
               XPESSOAINI:='';
               FrmPessoaIni.EdDescricao.Text:='';
	            FrmPessoaIni.EDCodigo.Text:='';
           End;
       End;
       FrmPessoaIni.Repaint;

       FrmPessoaIni.Repaint;
   End;
end;

procedure TFRelClienteData.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   PrepImp;

end;

procedure TFRelClienteData.FrmPessoaIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XPessoaIni:='';
   FrmPessoaIni.EDCodigo.Text:='';
   FrmPessoaIni.EdDescricao.Text:='';
end;

procedure TFRelClienteData.FrmPessoaFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XPessoaFim:='';
   FrmPessoaFim.EDCodigo.Text:='';
   FrmPessoaFim.EdDescricao.Text:='';
end;

end.
