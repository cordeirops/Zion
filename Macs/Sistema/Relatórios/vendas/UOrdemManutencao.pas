unit UOrdemManutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  ExtCtrls, UFrmBusca, Mask, ColorMaskEdit,
  Alxor32, EditFloat, FashionPanel, DBCtrls, Menus, FR_Class, FR_DSet,
  FR_DBSet;

type
  TFOrdemManutencao = class(TFCadPadrao)
    EdNum: TFlatEdit;
    Shape2: TShape;
    DBGProdutos: TDBGrid;
    Label13: TLabel;
    Label1: TLabel;
    EdNumero: TEdit;
    FrmFornecedor: TFrmBusca;
    FrmFormaPagamento: TFrmBusca;
    EdData: TColorMaskEdit;
    Label9: TLabel;
    FrmItens: TFrmBusca;
    EdDescricaoManutencao: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BtnInsertItem: TBitBtn;
    BtnDeleteItem: TBitBtn;
    EdVlrTotal: TFloatEdit;
    EdQtde: TFloatEdit;
    EdVlrUnitario: TFloatEdit;
    EdDescricaoProduto: TEdit;
    PListaProdutos: TPanel;
    DBGridListaProdutos: TDBGrid;
    EdTotal: TFloatEdit;
    BtnFechaPed: TBitBtn;
    PFinanceiro: TPanel;
    PBanco: TPanel;
    Label115: TLabel;
    DBGCTA: TDBGrid;
    FPFinanceiro: TFashionPanel;
    Label26: TLabel;
    BtnMoedaOK: TBitBtn;
    BtnMoedaCancelar: TBitBtn;
    CBPagamento: TComboBox;
    FrmConta: TFrmBusca;
    Panel7: TPanel;
    Label27: TLabel;
    EdDtFech: TColorMaskEdit;
    CBGeraFinanceiro: TCheckBox;
    PanelBanco: TPanel;
    DBGridBanco: TDBGrid;
    PMostraCta: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label39: TLabel;
    DBText3: TDBText;
    lbNumeroCartao: TLabel;
    edNumeroCartao: TEdit;
    PMostraConta: TPanel;
    lbAgencia: TDBText;
    lbBanco: TDBText;
    Label6: TLabel;
    lbConta: TDBText;
    pmRelatorios: TPopupMenu;
    ProdutosManuteno1: TMenuItem;
    ComprovanteManuteno1: TMenuItem;
    FSRel: TfrReport;
    FSDSRel: TfrDBDataSet;
    FrmResponsavel: TFrmBusca;
    procedure FormActivate(Sender: TObject);
    procedure DBGridCadastroPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFornecedorBTNOPENClick(Sender: TObject);
    procedure FrmFormaPagamentoBTNOPENClick(Sender: TObject);
    procedure FrmClienteBTNOPENClick(Sender: TObject);
    procedure FrmClienteEdDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmItensEdDescricaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFormaPagamentoEDCodigoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrmFormaPagamentoEDCodigoExit(Sender: TObject);
    procedure FrmFornecedorEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFornecedorEDCodigoExit(Sender: TObject);
    procedure EdVlrUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure EdVlrUnitarioExit(Sender: TObject);
    procedure EdQtdeExit(Sender: TObject);
    procedure EdQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure BtnInsertItemClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnDeleteItemClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure EdNumExit(Sender: TObject);
    procedure EdNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNumEnter(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaProdutosDblClick(Sender: TObject);
    procedure DBGridListaProdutosKeyPress(Sender: TObject; var Key: Char);
    procedure BtnFechaPedClick(Sender: TObject);
    procedure FrmContaServBTNOPENClick(Sender: TObject);
    procedure FrmContaServBTNMINUSClick(Sender: TObject);
    procedure BtnMoedaCancelarClick(Sender: TObject);
    procedure BtnMoedaOKClick(Sender: TObject);
    procedure CBPagamentoKeyPress(Sender: TObject; var Key: Char);
    procedure CBPagamentoClick(Sender: TObject);
    procedure CBPagamentoExit(Sender: TObject);
    procedure DBGridBancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridCadastroPadraoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure ProdutosManuteno1Click(Sender: TObject);
    procedure ComprovanteManuteno1Click(Sender: TObject);
    procedure FrmResponsavelBTNOPENClick(Sender: TObject);

  private
    { Private declarations }
  public
    //MAURO - Limpa os campos dos produtos
    Procedure LimpaLabelsPROD;
    //MAURO - Limpa os campos do fornecedor
    Procedure LimpaLabelsFORNEC;
    //MAURO - Limpa os campos da forma de pagamento
    Procedure LimpaLabelsFORMAPAG;
    //MAURO - Escreve os campos dos produtos
    Procedure EscreveLabelsPROD(opcao:String);
    //MAURO - Escreve os campos dos produtos
    Procedure EscreveLabelsFORNEC;
    //MAURO - Pesquisa a forma de pagamento
    Procedure PesquisaCodigoPagamento(codigo:String);
    Procedure FiltraSlave;
	 //MAURO - Filtrar ordem de manutenção
    Procedure FiltraOrdem;
    //MAURO - Filtrar os campos do localizar
    Procedure FiltraLocalizar(XSql: String);
    //MAURO - Retornar o ultimo numero do pedido
    Function RetornaNumPed: Integer;
    //MAURO - Função para gerar novo pedido de compra
    Function GeraNovoPedido : Boolean;
    //MAURO - Função para gravar a ordem de manutenção
    Function GravaOrdem : Boolean;
	 //MAURO - Função para fechar a ordem
    Function FechaOrdem(CODPEDIDO: String; DTFECH: String) : Boolean;
    //MAURO - Função para carregar dados do pedido
    Function ConsultaPedido : Boolean;
	 //MAURO - Carregar os dados filtrados do ConsultaPedido
    Function CarregaDados : Boolean;
    //MAURO - Função para abrir tabela do relatorio
    Function AbreTabela: Boolean;
    //MAURO - Função para localizar o responsavel;
    Function LocalizaResponsavel : Boolean;
    //MAURO - Função para filtrar o plncta
    Function FiltraContaPlncta : Boolean;
  end;

var
  FOrdemManutencao: TFOrdemManutencao;

  //VARIAVEIS
  xCodFornecedor, xCodUsuario, xCodFuncionario, xCodFormaPag, xCodEstoque, xNumPedido, xCodPedido, xCodConta, xCodContaBanco: Integer;
  xCodTempEstoque : String;
  xFat : Boolean;

implementation

uses UDMEntrada, UDmServ, AlxMessage, UFORNECEDOR, UDMPessoa, DB, UPadrao,
  UFormPag, UDMFinanc, UProduto, UDMEstoque, UMDO, UDMMacs, UMenu,
  UConsPlncta, UDMConta, UDmBanco, URelEstoque, UFuncionario;

{$R *.dfm}

procedure TFOrdemManutencao.FormActivate(Sender: TObject);
begin
  inherited;
   PCadastro.Visible:=False;
   PConsulta.Visible:=True;
   PConsulta.BringToFront;
   PFinanceiro.Visible := False;
   XView:=DMENTRADA.WPedc;
   XTabela:=DMENTRADA.TPedC;
   XPkTabela:='COD_PEDCOMP';
   XTransaction:=DMENTRADA.IBT;
   XSQLTABELA:='PEDCOMPRA';
   XSQLVIEW:= 'VWPEDC';
   EdData.Text := DateToStr(Now);
   EdTotal.ValueNumeric := 0;
   FiltraOrdem;
   DBGridListaProdutos.DataSource:=DMESTOQUE.DWSimilar;
   //DBGridCadastroPadrao.DataSource:=DMENTRADA.DAlx;
   If FileExists('C:\MZR\Arquivos\LayoutGrid\OrdemManutencao.lgm') Then
       DBGridCadastroPadrao.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\OrdemManutencao.lgm');
   If FileExists('C:\MZR\Arquivos\LayoutGrid\ItemOrdemManutencao.lgm') Then
       DBGProdutos.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\ItemOrdemManutencao.lgm');
end;

procedure TFOrdemManutencao.DBGridCadastroPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGridCadastroPadrao.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\OrdemManutencao.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdemManutencao.DBGProdutosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGProdutos.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\ItemOrdemManutencao.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFOrdemManutencao.FrmFornecedorBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
   Then Begin
       xCodFornecedor:= DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
   	FrmFornecedor.EDCodigo.Text := IntToStr(xCodFornecedor);
       FrmFornecedor.EdDescricao.Text := DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
	End
   Else Begin
		xCodFornecedor := -1;
       FrmFornecedor.EDCodigo.Text := '';
       FrmFornecedor.EdDescricao.Text := '';
   End;
end;

procedure TFOrdemManutencao.FrmFormaPagamentoBTNOPENClick(Sender: TObject);
begin
  inherited;

  If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
       xCodFormaPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       FrmFormaPagamento.EDCodigo.Text:=DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       FrmFormaPagamento.EdDescricao.Text:=DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   	FrmFormaPagamento.Repaint;
   End
   Else Begin
       XCodFormaPag:=-1;
       FrmFormaPagamento.EDCodigo.Text:='';
       FrmFormaPagamento.EdDescricao.Text:='';
   End;

end;

Procedure TFOrdemManutencao.LimpaLabelsPROD;
Begin
    xCodEstoque := -1;
    FrmItens.EdDescricao.Text := '';
    EdQtde.ValueNumeric:= 0;
    EdVlrUnitario.ValueNumeric:= 0;
    EdVlrTotal.ValueNumeric:=0;
    EdDescricaoManutencao.Text := '';
    EdDescricaoProduto.Text := '';

End;

Procedure TFOrdemManutencao.LimpaLabelsFORMAPAG;
Begin
	xCodFormaPag := -1;
   FrmFormaPagamento.EDCodigo.Text:='';
   FrmFormaPagamento.EdDescricao.Text:='';
End;

Procedure TFOrdemManutencao.LimpaLabelsFORNEC;
Begin
    xCodFornecedor := -1;
    FrmFornecedor.EDCodigo.Text:='';
    FrmFornecedor.EdDescricao.Text:='';
End;

Procedure TFOrdemManutencao.EscreveLabelsPROD(opcao:String);
Begin
	if(opcao = 'DELETADO')
   Then Begin
		xCodEstoque:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
   	EdDescricaoProduto.Text := DMESTOQUE.TSlave.FieldByName('DESCRICAO').AsString;
  	 	EdDescricaoManutencao.Text := DMESTOQUE.TSlave.FieldByName('OBS').AsString;
   	EdQtde.ValueNumeric := DMESTOQUE.TSlave.FieldByName('QTDEPROD').AsCurrency;
       EdVlrUnitario.ValueNumeric := DMESTOQUE.TSlave.FieldByName('VALUNIT').AsCurrency;
       EdVlrTotal.ValueNumeric := DMESTOQUE.TSlave.FieldByName('VALORTOTAL').AsCurrency;
   	FrmItens.EdDescricao.Text := '';
   End;

   if(opcao = 'SELECIONADO')
   Then Begin
   	xCodEstoque:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
   	EdDescricaoProduto.Text := DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
   	EdQtde.Text := '1,00';
   	FrmItens.EdDescricao.Text := '';
   End;
End;

Procedure TFOrdemManutencao.EscreveLabelsFORNEC;
Begin
	xCodFornecedor:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
   FrmFornecedor.EDCodigo.Text:= DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
   FrmFornecedor.EdDescricao.Text:= DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
End;

procedure TFOrdemManutencao.FrmClienteBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
   	EscreveLabelsPROD('SELECIONADO');
   End
   Else Begin
       LimpaLabelsPROD;
       EdDescricaoProduto.Text := 'PRODUTO NÃO ENCONTRADO';
   End;
End;

procedure TFOrdemManutencao.FrmClienteEdDescricaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If (Key=Vk_f2) and (key<>Vk_F3)
   Then Begin
       If AbrirForm(TFProduto, FProduto, 1)='Selected'
       Then Begin   
           xCodEstoque:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
           EscreveLabelsPROD('SELECIONADO');
           PListaProdutos.Visible:=False;
       End;
   End;
end;

procedure TFOrdemManutencao.FrmItensEdDescricaoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  	If PListaProdutos.Visible=False
   Then Begin
   	If FrmItens.EdDescricao.Text<>''
       Then Begin
           PListaProdutos.Top:=155;
           PListaProdutos.Left:=16;
           PListaProdutos.Visible:=True;
           PListaProdutos.BringToFront;
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add(' select * from vwsimilar ');
           DMESTOQUE.WSimilar.SQL.Add(' left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
//           DMESTOQUE.WSimilar.SQL.Add(' where vwsimilar.descricao like upper('+#39+FrmItens.EdDescricao.Text+'%'+#39+')');
           DMESTOQUE.WSimilar.SQL.Add(' where subproduto.usoconsumo<>''5'' ');
           DMESTOQUE.WSimilar.SQL.Add(' order by vwsimilar.descricao ');
           DMESTOQUE.WSimilar.Open;
       End;
   End;

   If Key=Vk_ESCAPE
   Then Begin
       PListaProdutos.Visible:=False;
       LimpaLabelsPROD;
   End;


   If Key<>Vk_Return
   Then Begin
   	If (Key=VK_down) or (Key=VK_Up)
       Then Begin
       	If (Key=VK_down) Then
               DMESTOQUE.WSimilar.Next;
       	If (Key=VK_Up) Then
               DMESTOQUE.WSimilar.Prior;
       End
       Else Begin
           If DMESTOQUE.WSimilar.Locate('DESCRICAO', UpperCase(FrmItens.EdDescricao.Text),[loPartialKey])=false
           Then Begin
               If DMESTOQUE.WSimilar.Locate('CONTRINT', UpperCase(FrmItens.EdDescricao.Text),[loPartialKey])=false
               Then Begin
                   xCodTempEstoque:=DBGridListaProdutos.Columns[0].Field.Text;
               End;
           End
           Else Begin
               xCodTempEstoque:=DBGridListaProdutos.Columns[0].Field.Text;
           End;
       End;
   End
   Else Begin
   	If FrmItens.EdDescricao.Text<>''
       Then Begin
           xCodTempEstoque:=DBGridListaProdutos.Columns[0].Field.Text;
           If xCodTempEstoque<>''
           Then Begin
               DMESTOQUE.WSimilar.Close;
               DMESTOQUE.WSimilar.SQL.Clear;
               DMESTOQUE.WSimilar.SQL.Add('  select * from vwsimilar ');
               DMESTOQUE.WSimilar.SQL.Add('  left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
               //DMESTOQUE.WSimilar.SQL.Add(' where vwsimilar.descricao like upper('+#39+FrmItens.EdDescricao.Text+'%'+#39+')');
               DMESTOQUE.WSimilar.SQL.Add('  where (subproduto.usoconsumo<>'+#39+'5'+#39+')  and (vwsimilar.cod_estoque=:codigo)' );
               DMESTOQUE.WSimilar.ParamByName('codigo').AsString:=xCodTempEstoque;
               DMESTOQUE.WSimilar.Open;
               If not DMESTOQUE.WSimilar.IsEmpty
               Then Begin  
                   xCodEstoque:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
                   EscreveLabelsPROD('SELECIONADO');
                   PListaProdutos.Visible:=False;
                   If EdQtde.ValueNumeric=0 Then
                       EdQtde.ValueNumeric:=1;
               End
               Else Begin
                   XCOD_ESTOQUE:=-1;
                   LimpaLabelsPROD;
					PListaProdutos.Visible:=False;                   
               End;
           End;
       End;
   End;
end;

Procedure TFOrdemManutencao.PesquisaCodigoPagamento(codigo:String);
begin
   // letras maiusculas
   codigo:= Trim(UpperCase(codigo));
   If codigo <> ''
   Then Begin
     //seleciona a forma de pagamento
       If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', codigo, '')=true
       Then Begin
          xCodFormaPag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
          FrmFormaPagamento.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
          FrmFormaPagamento.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       End
       Else Begin
          xCodFormaPag:=-1;
          FrmFormaPagamento.EDCodigo.Text:='';
          FrmFormaPagamento.EdDescricao.Text:='';
       End;
   end;
end;

procedure TFOrdemManutencao.FrmFormaPagamentoEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
   Then Begin
     if FrmFormaPagamento.EDCodigo.Text<>''
     Then Begin
     	PesquisaCodigoPagamento(FrmFormaPagamento.EDCodigo.Text);
     End;
  end;
end;

procedure TFOrdemManutencao.FrmFormaPagamentoEDCodigoExit(Sender: TObject);
begin
  inherited;
	if FrmFormaPagamento.EDCodigo.Text<>''
   Then Begin
   	PesquisaCodigoPagamento(FrmFormaPagamento.EDCodigo.Text);
   End
   else begin
   	xCodFormaPag:=-1;
       FrmFormaPagamento.EDCodigo.Text:='';
       FrmFormaPagamento.EdDescricao.Text:='';
   end;
end;

procedure TFOrdemManutencao.FrmFornecedorEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
       If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmFornecedor.EDCodigo.Text+#39)=True
       Then Begin
           EscreveLabelsFORNEC;
       End
       Else Begin
           LimpaLabelsFORNEC;
       End;
   End;
end;

procedure TFOrdemManutencao.FrmFornecedorEDCodigoExit(Sender: TObject);
begin
  inherited;
	if FrmFornecedor.EDCodigo.Text<>''
   Then Begin
  		If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmFornecedor.EDCodigo.Text+#39)=True
   	Then Begin
   		EscreveLabelsFORNEC;
   	End;
   End;
end;

procedure TFOrdemManutencao.EdVlrUnitarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	if key = #13 then
       EdVlrTotal.SetFocus;
end;

procedure TFOrdemManutencao.EdVlrUnitarioExit(Sender: TObject);
begin
  inherited;
	if(EdQtde.ValueNumeric<>0) and (EdVlrUnitario.ValueNumeric<>0)
   Then Begin
   	EdVlrTotal.ValueNumeric:=(EdQtde.ValueNumeric * EdVlrUnitario.ValueNumeric);
       //EdVlrTotal.SetFocus;
   End;
end;

procedure TFOrdemManutencao.EdQtdeExit(Sender: TObject);
begin
  inherited;
  if(EdQtde.ValueNumeric<>0) and (EdVlrUnitario.ValueNumeric<>0)
   Then Begin
   	EdVlrTotal.ValueNumeric:=(EdQtde.ValueNumeric * EdVlrUnitario.ValueNumeric);
       EdVlrUnitario.SetFocus;
   End;
end;

procedure TFOrdemManutencao.EdQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	if key = #13 then
       EdVlrUnitario.SetFocus;
end;

procedure TFOrdemManutencao.BtnInsertItemClick(Sender: TObject);
begin
  inherited;
   //MAURO - Valida se existe item selecionado
	//if (EdDescricaoProduto.Text = '') or (EdDescricaoProduto.Text = 'PRODUTO NÃO ENCONTRADO')
   if (xCodEstoque = -1)
   then begin
   	Mensagem('OPÇÃO BLOQUEADA', 'Selecione um Produto antes de Inserir.', '', 1, 1, False, 'a');
		FrmItens.EdDescricao.SetFocus;
	    Exit;
   End;

   //MAURO - Valida se foi informado a manutenção realizada
   if (EdDescricaoManutencao.Text='')
   Then Begin
   	Mensagem('OPÇÃO BLOQUEADA', 'Informe a manutenção realizada.', '', 1, 1, False, 'a');
		EdDescricaoManutencao.SetFocus;
	    Exit;
   End;

   //MAURO - Valida campos dos valores do item
   if (EdQtde.ValueNumeric = 0)
   Then Begin
   	Mensagem('OPÇÃO BLOQUEADA', 'Por favor, verifique a quantidade. A quantidade esta sendo inserida igual a zero.', '', 1, 1, False, 'a');
		EdQtde.SetFocus;
	    Exit;
   End
   Else if (EdVlrUnitario.ValueNumeric = 0)
   Then Begin
   	Mensagem('OPÇÃO BLOQUEADA', 'Por favor, verifique o valor unitário do produto. O produto esta sendo inserido com valor zero.', '', 1, 1, False, 'a');
		EdVlrUnitario.SetFocus;
	    Exit;
   End;

   //MAURO - Inserindo o produto a lista
   MDO.Query.Close;
   MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add('insert into ITENSPEDC');
   MDO.Query.SQL.Add('	(COD_PEDCOMPRA, COD_ESTOQUE, QTDEPROD, VALUNIT, VALORTOTAL, DATA, OBS)');
   MDO.Query.SQL.Add('values');
   MDO.Query.SQL.Add('(:COD_PEDCOMPRA, :COD_ESTOQUE, :QTDEPROD, :VALUNIT, :VALORTOTAL, :DATA, :OBS)');
   MDO.Query.ParamByName('COD_PEDCOMPRA').AsInteger := xCodPedido;
   MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := xCodEstoque;
   MDO.Query.ParamByName('QTDEPROD').AsCurrency := EdQtde.ValueNumeric;
   MDO.Query.ParamByName('VALUNIT').AsCurrency := EdVlrUnitario.ValueNumeric;
   MDO.Query.ParamByName('VALORTOTAL').AsCurrency := EdVlrTotal.ValueNumeric;
   MDO.Query.ParamByName('DATA').AsString := EdData.Text;
   MDO.Query.ParamByName('OBS').AsString := EdDescricaoManutencao.Text;

   Try
   	MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
   Except
   	Mensagem('MZR Sistemas', 'Não foi possível inserir o produto. Por favor, constate o suporte.', '', 1, 1, False, 'a');
       MDO.Transac.RollbackRetaining;
       Exit;
   End;
   FiltraSlave;
   LimpaLabelsPROD;
end;

procedure TFOrdemManutencao.BtnNovoClick(Sender: TObject);
begin
  inherited;
   xCodEstoque := -1;
   xCodPedido := -1;
   LimpaLabelsPROD;
   LimpaLabelsFORNEC;
   LimpaLabelsFORMAPAG;
   GeraNovoPedido;
   EdNumero.Text := IntToStr(xNumPedido);
   PListaProdutos.Visible:=False;
   FiltraSlave;
end;

Function TFOrdemManutencao.GeraNovoPedido : Boolean;
var
	CODPEDIDO : Integer;
Begin
	//MAURO - Retorna o ultimo numero de pedido
   XNumPedido:=RetornaNumPed;
   //MAURO - Insere um novo registro
   CODPEDIDO:=InserReg(XTabela, XSQLTABELA, XPkTabela);
   xCodPedido := CODPEDIDO;

   LocalizaResponsavel;

   XTabela.Open;
   XTabela.FieldByName(XPkTabela).AsInteger := CODPEDIDO;
   XTabela.FieldByName('COD_USUARIO').AsInteger := xCodFuncionario; //cod responsavel
   XTabela.FieldByName('NUMPED').AsInteger := xNumPedido;
   XTabela.FieldByName('NUMDEV').AsString := 'ORM';
   XTabela.FieldByName('DTPEDCOMP').AsDateTime := StrToDate(EdData.Text);
   XTabela.FieldByName('SITUACAO').AsString:= 'ABERTO';
   Try
   	XTabela.Post;
       XTransaction.CommitRetaining;
   Except
   	MessageDlg('O sistema de prevenção a perca de dados detectou uma falha na comunicação com o banco de dados. Solicitamos que o sistema seja reiniciado.'+#13+#10+'Caso o problema continue consulte o suporte técnico para solução.', mtWarning, [mbOK], 0);
       XTransaction.RollbackRetaining;
	    Exit;
   End;
End;

Function TFOrdemManutencao.RetornaNumPed: Integer;
Begin
	Result:=-1;
   XNumPedido:=-1;
   Try
   //FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');

   If DMMacs.TEmpresa.FieldByName('proxpedcomp').AsString='' Then
   	XNumPedido:=1
   Else
   	xNumPedido:=DMMacs.TEmpresa.FieldByName('proxpedcomp').AsInteger;
   	DMMACS.TEmpresa.Edit;
   	DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString:=IntToStr(StrToInt(DMMacs.TEmpresa.FieldByName('PROXPEDCOMP').AsString)+1);
   	DMMACS.TEmpresa.Post;
   //End;
   //Atualiza e confirma os Dados de empresa
   try
       DMMacs.Transaction.CommitRetaining;
   except
       DMMacs.Transaction.RollbackRetaining;
   end;
       Result:=XNumPedido;
   Except
   	Result:=XNumPedido;
   End;
End;

Procedure TFOrdemManutencao.FiltraSlave;
Begin
	//MAURO - Filtra os Itens da ordem
	DMESTOQUE.TSlave.Close;
   DMESTOQUE.TSlave.SQL.Clear;
   DMESTOQUE.TSlave.SQL.Add('select itenspedc.cod_itenspedc,  itenspedc.cod_pedcompra, itenspedc.cod_estoque, vwsimilar.descricao, vwsimilar.cod_interno, ');
   DMESTOQUE.TSlave.SQL.Add('itenspedc.obs, itenspedc.qtdeprod, itenspedc.valunit, itenspedc.valortotal, itenspedc.data ');
   DMESTOQUE.TSlave.SQL.Add('from itenspedc ');
   DMESTOQUE.TSlave.SQL.Add('left join vwsimilar on vwsimilar.cod_estoque = itenspedc.cod_estoque ');
   DMESTOQUE.TSlave.SQL.Add(' Where itenspedc.cod_pedcompra = :CODIGO');
   DMESTOQUE.TSlave.ParamByName('CODIGO').AsInteger:=xCodPedido;
   DMESTOQUE.TSlave.SQL.Add('order by itenspedc.cod_itenspedc desc');
   DMESTOQUE.TSlave.Open;

   //MAURO - Faz o somatório de todos os itens
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' Select sum(itenspedc.valortotal) as TOTALORDEM ');
   DMESTOQUE.Alx.SQL.Add(' From itenspedc ');
   DMESTOQUE.Alx.SQL.Add(' Where itenspedc.cod_pedcompra = :codigo ');
   DMESTOQUE.Alx.ParamByName('codigo').AsInteger:=xCodPedido;
   DMESTOQUE.Alx.Open;
   EdTotal.ValueNumeric := DMESTOQUE.Alx.FieldByName('TOTALORDEM').AsCurrency;
   DBGProdutos.DataSource:=DMESTOQUE.DSSlave;

End;

procedure TFOrdemManutencao.BtnConsultarClick(Sender: TObject);
begin
  inherited;
	LimpaLabelsPROD;
   LimpaLabelsFORNEC;
  If ConsultaPedido=True
  Then Begin
		PConsulta.Visible:=False;
       PCadastro.Visible:=True;
       PCadastro.BringToFront;
       FrmFornecedor.EDCodigo.SetFocus;
   End
   Else Begin
       PCadastro.Visible:=False;
       PConsulta.Visible:= True;
       PConsulta.BringToFront;
   End;
end;

Function TFOrdemManutencao.ConsultaPedido : Boolean;
Begin
	Result:=True;
   Try
		if FiltraTabela(DMENTRADA.TAlx, 'vwpedc', 'cod_pedcomp', DMENTRADA.TAlx.FieldByName('cod_pedcomp').AsString, '')=true
    	Then begin
       	xCodPedido :=  DMENTRADA.TAlx.FieldByName('cod_pedcomp').AsInteger;
			MDO.Transac.CommitRetaining;
   		MDO.QConsulta.Close;
   		MDO.QConsulta.SQL.Clear;
   		MDO.QConsulta.SQL.Add('select vwpedc.cod_pedcomp, vwpedc.cod_formpag, vwpedc.cod_fornec, vwpedc.cod_usuario, vwpedc.cod_loja, vwpedc.dtpedcomp as DATA, vwfuncionario.nome as Responsavel,');
           MDO.QConsulta.SQL.Add('	vwpedc.nome, vwpedc.numped, vwpedc.valor, formpag.descricao,  formpag.cod_interno as INTERNO_FORMAPAG, fornecedor.cod_interno as INTERNO_FORNEC');
           MDO.QConsulta.SQL.Add('from vwpedc');
			MDO.QConsulta.SQL.Add(' 	left join fornecedor on vwpedc.cod_fornec = fornecedor.cod_fornec');
           MDO.QConsulta.SQL.Add(' 	left join formpag on vwpedc.cod_formpag = formpag.cod_formpag');
           MDO.QConsulta.SQL.Add(' 	left join vwfuncionario on vwpedc.cod_usuario = vwfuncionario.cod_func');
   		MDO.QConsulta.SQL.Add('where vwpedc.cod_pedcomp=:codigo ');
   		MDO.QConsulta.ParamByName('codigo').AsInteger:= xCodPedido;
   		MDO.QConsulta.Open;
       End;
       If CarregaDados=True
       Then Begin
       	FiltraSlave;
       End
       Else Begin
           Result:=False;
           Exit;
       End;
   Except
       Result:=False;
   End;
End;

Function TFOrdemManutencao.CarregaDados : Boolean;
Begin
   Result:=True;
	Try
   	//MAURO - Carrega Cabeçario
   	EdNumero.Text := IntToStr(MDO.QConsulta.FieldByName('NUMPED').asInteger);
		EdTotal.ValueNumeric := MDO.QConsulta.FieldByName('VALOR').AsCurrency;
       EdData.Text := DateToStr(MDO.QConsulta.FieldByName('DATA').AsDateTime);

       //MAURO - Carrega o Fornecedor
       FrmFornecedor.EDCodigo.Text := MDO.QConsulta.FieldByName('INTERNO_FORNEC').AsString;
       FrmFornecedor.EdDescricao.Text := MDO.QConsulta.FieldByName('NOME').AsString;

       //MAURO - Carrega o Responsavel
       FrmResponsavel.EdDescricao.Text := MDO.QConsulta.FieldByName('RESPONSAVEL').AsString;

       //MAURO - Carrega a Forma de Pagamento
       FrmFormaPagamento.EDCodigo.Text := IntToStr(MDO.QConsulta.FieldByName('INTERNO_FORMAPAG').asInteger);
       FrmFormaPagamento.EdDescricao.Text := MDO.QConsulta.FieldByName('DESCRICAO').AsString;

   Except
       Result:=False;
   End;
End;

Procedure TFOrdemManutencao.FiltraLocalizar(XSql: String);
Begin

	DMENTRADA.IBT.CommitRetaining;
   DMENTRADA.TAlx.Close;
   DMENTRADA.TAlx.SQL.Clear;
   DMENTRADA.TAlx.SQL.Add('select vwpedc.cod_pedcomp, vwpedc.cod_formpag, vwpedc.cod_fornec, vwpedc.cod_usuario, vwpedc.cod_loja,');
   DMENTRADA.TAlx.SQL.Add('vwpedc.nome, vwpedc.numped, vwpedc.valor, vwpedc.dtpedcomp, vwpedc.situacao');
   DMENTRADA.TAlx.SQL.Add('from vwpedc');
   DMENTRADA.TAlx.SQL.Add('where (vwpedc.numdev = '+#39+'ORM'+#39+') and ('+XSql+')');
   DMENTRADA.TAlx.Open;

   DBGridCadastroPadrao.DataSource:=DMENTRADA.DAlx;
End;

Procedure TFOrdemManutencao.FiltraOrdem;
Begin

   DMENTRADA.IBT.CommitRetaining;
   DMENTRADA.TAlx.Close;
   DMENTRADA.TAlx.SQL.Clear;
   DMENTRADA.TAlx.SQL.Add('select vwpedc.cod_pedcomp, vwpedc.cod_formpag, vwpedc.cod_fornec, vwpedc.cod_usuario, vwpedc.cod_loja,');
   DMENTRADA.TAlx.SQL.Add('vwpedc.nome, vwpedc.numped, vwpedc.valor, vwpedc.dtpedcomp, vwpedc.situacao');
   DMENTRADA.TAlx.SQL.Add('from vwpedc');
   DMENTRADA.TAlx.SQL.Add('where vwpedc.numdev = '+#39+'ORM'+#39);
   DMENTRADA.TAlx.SQL.Add('order by vwpedc.numped');
   DMENTRADA.TAlx.Open;

   DBGridCadastroPadrao.DataSource:=DMENTRADA.DAlx;
End;

procedure TFOrdemManutencao.BtnDeleteItemClick(Sender: TObject);
begin
  inherited;
	Try
   	xCodEstoque := DMESTOQUE.TSlave.FieldByName('COD_ESTOQUE').AsInteger;
       FiltraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', 'COD_ESTOQUE', IntToStr(xCodEstoque),'');

   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' Delete from itenspedc where itenspedc.cod_itenspedc=:codigo ');
       MDO.Query.ParamByName('codigo').AsInteger:=DMESTOQUE.TSlave.FieldByName('cod_itenspedc').AsInteger;
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       EscreveLabelsPROD('DELETADO');
   Except
       MDO.Transac.Rollback;
   End;
   FiltraSlave;
end;

procedure TFOrdemManutencao.BtnGravarClick(Sender: TObject);
begin
	If GravaOrdem=True
   Then Begin
       BtnFecha.Visible:=True;
       PCadastro.Visible:=False;
       PConsulta.Visible:=True;
       PConsulta.BringToFront;
       FiltraOrdem;
       inherited;
   End;

end;

Function TFOrdemManutencao.GravaOrdem : Boolean;
Begin
	Result:=True;
	if (xCodFornecedor = -1)
   Then Begin
   	Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe o fornecedor.', '', 1, 1, False, 'a');
       FrmFornecedor.EDCodigo.SetFocus;
       Result := False;
       Exit;
   End;

   if (xCodFormaPag = -1)
   Then Begin
   	Mensagem('OPÇÃO BLOQUEADA', 'Por favor, informe a forma de pagamento.', '', 1, 1, False, 'a');
       FrmFormaPagamento.EDCodigo.SetFocus;
       Result := False;
       Exit;
   End;

   Try
   	MDO.Query.Close;
   	MDO.Query.SQL.Clear;
   	MDO.Query.SQL.Add('update pedcompra set pedcompra.cod_fornec=:fornec, pedcompra.cod_formpag=:formapag, pedcompra.valor=:valor, pedcompra.COD_USUARIO=:usuario');
   	MDO.Query.SQL.Add('where pedcompra.cod_pedcomp=:codigo');
   	MDO.Query.ParamByName('codigo').AsInteger:=xCodPedido;
		MDO.Query.ParamByName('fornec').AsInteger:=xCodFornecedor;
   	MDO.Query.ParamByName('formapag').AsInteger:=xCodFormaPag;
		MDO.Query.ParamByName('valor').AsCurrency:=EdTotal.ValueNumeric;
       MDO.Query.ParamByName('usuario').AsCurrency:=xCodFuncionario;
       MDO.Query.ExecSQL;
   	MDO.Transac.CommitRetaining;
   Except
       MDO.Transac.RollbackRetaining;
       Result:=False;
   End;
End;

procedure TFOrdemManutencao.BtnCancelarClick(Sender: TObject);
begin
  inherited;
	BtnFecha.Visible:=True;

   If (DMESTOQUE.TSlave.IsEmpty)
   Then Begin
   	If Mensagem('   A T E N Ç Ã O   ','A Ordem de Manutenção atual não possui produtos inclusos. Deseja apagá-la ?','',2,3,false,'A')=2
       Then Begin
       	Try
				MDO.Query.Close;
   			MDO.Query.SQL.Clear;
   			MDO.Query.SQL.Add('delete from pedcompra where pedcompra.cod_pedcomp =:codigo');
   			MDO.Query.ParamByName('codigo').AsInteger:=xCodPedido;
       		MDO.Query.ExecSQL;
   			MDO.Transac.CommitRetaining;
   		Except
       		MDO.Transac.RollbackRetaining;
   		End;
           FiltraOrdem;
   		PCadastro.Visible:=False;
   		PConsulta.Visible:=True;
   		PConsulta.BringToFront;
           Exit;
		End;
   End;
   Try
   	MDO.Query.Close;
   	MDO.Query.SQL.Clear;
   	MDO.Query.SQL.Add('update pedcompra set pedcompra.cod_fornec=:fornec, pedcompra.cod_formpag=:formapag, pedcompra.valor=:valor');
   	MDO.Query.SQL.Add('where pedcompra.cod_pedcomp=:codigo');
   	MDO.Query.ParamByName('codigo').AsInteger:=xCodPedido;
		MDO.Query.ParamByName('fornec').AsInteger:=xCodFornecedor;
   	MDO.Query.ParamByName('formapag').AsInteger:=xCodFormaPag;
		MDO.Query.ParamByName('valor').AsCurrency:=EdTotal.ValueNumeric;
       MDO.Query.ExecSQL;
   	MDO.Transac.CommitRetaining;
   Except
       MDO.Transac.RollbackRetaining;
   End;
   FiltraOrdem;
   PCadastro.Visible:=False;
   PConsulta.Visible:=True;
   PConsulta.BringToFront;
end;

procedure TFOrdemManutencao.EdNumExit(Sender: TObject);
begin
  inherited;
	if Trim(EdNum.Text) = '' then
        EDNum.Text := 'Digite o Número';
   EDNum.Font.Color := clGray;
end;

procedure TFOrdemManutencao.EdNumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
       Then Begin
           If (EDNum.Text<>'') and (EDNum.Text<>'Digite o Número')
           Then Begin
               FiltraLocalizar('(vwpedc.numped='+#39+TRIM(EDNum.Text)+#39+') ');
           End;
       End;
       If Key=VK_ESCAPE
       Then Begin
           FiltraOrdem;
       End;
end;

procedure TFOrdemManutencao.EdNumEnter(Sender: TObject);
begin
  inherited;
	If EDNum.Text = 'Digite o Número' then
   	EDNum.Text := ''
   Else
   	EDNum.SelectAll;
   EDNum.Font.Color := clBlack;
end;

procedure TFOrdemManutencao.EdNomeEnter(Sender: TObject);
begin
  inherited;
	if EdNome.Text = 'Digite o Fornecedor' then
         EdNome.Text := ''
     Else
     	  EdNome.SelectAll;
     EdNome.Font.Color := clBlack;
end;

procedure TFOrdemManutencao.EdNomeExit(Sender: TObject);
begin
  inherited;
	If Trim(EdNome.Text) = '' then
        EdNome.Text := 'Digite o Fornecedor';
   EdNome.Font.Color := clGray;
end;

procedure TFOrdemManutencao.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_RETURN
       Then Begin
           If (EdNome.Text<>'') and (EdNome.Text<>'Digite o Fornecedor')
           Then Begin
               FiltraLocalizar('(upper(vwpedc.nome))like(upper('+#39+TRIM(EdNome.Text)+'%'+#39+'))');
           End;
       End;
       If Key=VK_ESCAPE
       Then Begin
           FiltraOrdem;
       End;
end;

procedure TFOrdemManutencao.DBGridListaProdutosDblClick(Sender: TObject);
begin
  inherited;
	xCodEstoque:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
   EscreveLabelsPROD('SELECIONADO');
   PListaProdutos.Visible:=False;
   If EdQtde.ValueNumeric=0 Then
   	EdQtde.ValueNumeric:=1;
end;

procedure TFOrdemManutencao.DBGridListaProdutosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
       xCodEstoque:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
       EscreveLabelsPROD('SELECIONADO');
       PListaProdutos.Visible:=False;
       If EdQtde.ValueNumeric=0 Then
           EdQtde.ValueNumeric:=1;
   End;
end;

procedure TFOrdemManutencao.BtnFechaPedClick(Sender: TObject);
begin
  inherited;
	// MAURO - pegando o codigo da ordem
   xCodPedido := DMENTRADA.TAlx.FieldByname('COD_PEDCOMP').AsInteger;

   // MAURO - Filtra a tabela pedido de compra com o codigo do pedido
   FiltraTabela(DMENTRADA.TAlx,'PEDCOMPRA','COD_PEDCOMP',IntToStr(xCodPedido),'');

   //MAURO - Verifica se a situação está ABERTA
   If (DMENTRADA.TAlx.FieldByName('SITUACAO').AsString <> 'ABERTO')
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','A ordem já se encontra fechada, não sendo possível fecha-la novamente.','',1,1,false,'I');
       FiltraOrdem;
       Exit;
   End;

   //MAURO - Verifica se existe ordem de manutenção
   If  DMENTRADA.TAlx.IsEmpty
   Then Begin
		Mensagem('A T E N Ç Ã O', 'Não existe nenhuma ordem de manutenção a ser fechada!', '', 1, 1, False, 'a');
		FiltraOrdem;
       Exit;
   End;

   //MAURO - Verifica se a ordem tem itens adicionados
   If DMENTRADA.TAlx.FieldByName('VALOR').AsCurrency=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Esta ordem de manutenção não contém produtos. Por isso não pode ser fechada!', '', 1, 1, False, 'i');
       FiltraOrdem;
       Exit;
   End;

   //MAURO - Confirmação do usuário se deseja mesmo fechar a ordem
   If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente fechar a ordem '+DMENTRADA.TAlx.FieldByName('NUMPED').AsString, '', 2, 3, False, 'C')=2
   Then Begin

   	If DMENTRADA.TAlx.FieldByName('SITUACAO').AsString<>'FECHADO'
   	Then begin
       	EdDtFech.Text := DateToStr(Now);
           FiltraContaPlncta;
       	PFinanceiro.Visible:=true;
           PFinanceiro.BringToFront;
  		End;
   End;
end;

Function TFOrdemManutencao.FiltraContaPlncta : Boolean;
Begin
     FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA',FMenu.LCODLOJA.Caption,'');
     xCodConta:=DMMACS.TLoja.FieldByName('CTAFRTCOMP').AsInteger;
     FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(xCodConta), '');
     FrmConta.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
     FrmConta.EDCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
End;

procedure TFOrdemManutencao.FrmContaServBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	xCodConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End
   Else Begin
		xCodConta:= -1;
       FrmConta.EDCodigo.Text := '';
  		FrmConta.EdDescricao.Text:= '';
   End;
end;

procedure TFOrdemManutencao.FrmContaServBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmConta.EDCodigo.Text := '';
  FrmConta.EdDescricao.Text:= '';
end;

procedure TFOrdemManutencao.BtnMoedaCancelarClick(Sender: TObject);
begin
  inherited;
	PFinanceiro.Visible:=False;
   FiltraOrdem;
end;

procedure TFOrdemManutencao.BtnMoedaOKClick(Sender: TObject);
begin

	//MAURO - Valida se seleciona o pagamento
	If CBPagamento.Text=''
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe se o pagamento será feito em carteira, cheque ou cartão!', '', 1, 1, False, 'i');
       CBPagamento.SetFocus;
       Exit;
   End;

   //MAURO - Valida quanto a Conta
	If xCodConta = -1
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Por favor informe uma conta para lançamento no financeiro!', '', 1, 1, False, 'i');
       FrmConta.EDCodigo.SetFocus;
       Exit;
   End;

   if CBGeraFinanceiro.Checked = True
   then begin
       if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'O pedido não gerará financeiro, deseja continuar?', '', 2, 3, False, 'C')<>2
       then begin
           Exit;
       end
       else begin
           xFat:=True;
       end;
   end
   else begin
       xFat:=False;
   end;

   PFinanceiro.Visible:=False;

   If FechaOrdem(IntToStr(xCodPedido), EdDtFech.Text)=True
   Then Begin
   	Try
	    	MDO.Transac.CommitRetaining;
       Except
           MDO.Transac.RollbackRetaining;
           Exit;
           //Mensagem
       End;

       MDO.Query.Close;
   	MDO.Query.SQL.Clear;
   	MDO.Query.SQL.Add('update pedcompra set pedcompra.situacao=:situacao');
   	MDO.Query.SQL.Add('where pedcompra.cod_pedcomp=:codigo');
   	MDO.Query.ParamByName('codigo').AsInteger:=xCodPedido;
		MDO.Query.ParamByName('situacao').AsString:='FECHADO';

       MDO.Query.ExecSQL;

       Try
   		MDO.Transac.CommitRetaining;
       Except
           MDO.Transac.RollbackRetaining;
       End;

   End;

  inherited;
end;

Function TFOrdemManutencao.FechaOrdem(CODPEDIDO: String; DTFECH: String) : Boolean;
Var
	xHistorico: String;// Armazena o historico da operação
   ATUFINANC: Boolean;
   //AtualizaEst, ATUFINANC: Boolean; //Controla se atualização de estoque e controle financeiro foram efetivados
   //XPKSlaveCampo, XSQLSlave: String;//guardará a pk e a SQL do tabela slave
   //XVLRFRETE1: Real;
   //XNUMDOC: String; //ira conter o numero do documento se emitido documento fiscal será o numero do cupom se nao o numero de pedido
	//XHistorico: String;// Armazena o historico de operação
   //XVLRCREDITO: Real;//Armazena temporariamento o valor q deve ser retirado do credito
   //XConta: integer;
   //XNumeroCupom: string;
   //XCod_Vendedor: Integer;//Armazena temporariamoente o codigo do vendeodr para gerar comissao
Begin
 	ATUFINANC:=False;
   xHistorico := '';
   
	//MAURO - FIltrar a ordem
   If FiltraTabela(DMENTRADA.TAlx,'VWPEDC','COD_PEDCOMP' , CODPEDIDO, '') = True
   Then Begin
   	xNumPedido:= DMENTRADA.TAlx.FieldByName('NUMPED').AsInteger;

       //MAURO - inicio do processo para controle financeiro

       //MAURO - Filtra Forma de Pagamento
       If FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMENTRADA.TAlx.FieldByName('COD_FORMPAG').AsString, '') = True
       Then Begin
           If DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA'
           Then Begin
           	If CBGeraFinanceiro.Checked=False
           	Then Begin
           		If DMENTRADA.TAlx.FieldByName('NUMDEV').AsString='ORM' Then
               		xHistorico:='Fech. OS Manutenção '+IntToStr(xNumPedido)+' - Fornec. '+DMENTRADA.TAlx.FieldByName('NOME').AsString
               	Else
               	if NOT(DMENTRADA.TAlx.FieldByName('NUMDEV').AsString = '')THEN
               		//xHistorico:='Fch. Dev: '+IntToStr(xNumPedido)+'Venda: '+XTabela.FieldByName('NUMDEV').AsString+' - Fornec. '+xFornec;
           	End;
           	//CARTEIRA
           	If (CBPagamento.Text='Carteira')
           	Then Begin//LANÇAMENTO EM CAIXA PARA CARTEIRA
           		//Filtra pessoa para incluir no histórico
           		FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', DMENTRADA.TAlx.FieldByName('COD_FORNEC').AsString, '');
           		If lanCaixa(0, DateToStr(Date()), xCodConta, xHistorico,  DMENTRADA.TAlx.FieldByName('VALOR').AsCurrency, 'ORM', xCodPedido, CBPagamento.Text, 'S', IntToStr(xNumPedido), Date(), '1')=True
           		Then //informa que a atualização do financeiro foi efetivada
           			ATUFINANC:=True
           		Else//informa que a finalização do financeiro falhou
           			ATUFINANC:=False;
           	End;

           	//CARTÃO
           	if CBPagamento.Text='Cartão'
           	Then Begin  //faz lançamento apenas em banco por ser pagamento a cartão.
					//	Function LanBanco(COD_CTACOR:Integer; COD_PLNCTA:Integer; HISTORICO:String; Valor:Real; TipoGera: String; COD_GERA:Integer; TIPOOP: String; COD_USUARIO: Integer; COBRANCA: STRING; FECH: CHAR; DTVENC: STRING; NUMCH: String; DTLANC: STRING; ESTRU: String; DTREF: STRING):Boolean;
           		If LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger,xCodConta,'Fech. OS Manutenção ' + IntToStr(xNumPedido) + ' por cartão - Fornec. '+DMENTRADA.TAlx.FieldByName('NOME').AsString, DMENTRADA.TAlx.FieldByName('VALOR').AsCurrency, 'CARTÃO', StrToInt(CODPEDIDO), 'SAIDA',StrToInt(FMenu.LCODUSUARIO.Caption), 'CARTÃO', 'S',DateToStr(Date()),'',DateToStr(Date()),'1',DateToStr(Date())) = TRUE
           		Then  ////informa que a atualização do financeiro foi efetivada
               		ATUFINANC:=True
              		Else//informa que a finalização do financeiro falhou
               		ATUFINANC:=False;
   			End;

           	//CHEQUE
				If CBPagamento.Text='Cheque'
           	Then Begin//LANÇAMENTO EM CONTROLE DE CHEQUE
           		FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', DMENTRADA.TAlx.FieldByName('COD_FORNEC').AsString, '');
               	//Function LancChSai(COD_PLNCTA: Integer; HISTORICO: String; DtVenc: TDateTime; Valor: Real; COD_CONTACOR: Integer; TIPOGERADOR: String; COD_GERADOR: String; Destinatario: string): Boolean;
               	//If LancChSai(xCodConta, xHistorico, Date(), DMENTRADA.TAlx.FieldByName('VALOR').AsCurrency, XCOD_CONTABANCO, 'ORM', IntToStr(xCodPedido), '')=True
               	If LancChSai(xCodConta, 'Fech. OS Manutenção ' + IntToStr(xNumPedido) + ' por cheque - Fornec. '+DMENTRADA.TAlx.FieldByName('NOME').AsString, Date(), DMENTRADA.TAlx.FieldByName('VALOR').AsCurrency, xCodContaBanco,'ORM', IntToStr(xCodPedido), '')=True
               	Then  //Se lançou
                 		ATUFINANC:=True
               	Else
               		ATUFINANC:=FALSE;
           	End;
           End
           Else Begin //não for a vista
           	If CBGeraFinanceiro.Checked=False
           	Then Begin
           		If DMENTRADA.TAlx.FieldByName('NUMDEV').AsString='ORM' Then
               		xHistorico:='Fech. OS Manutenção '+IntToStr(xNumPedido)+' - Fornec. '+DMENTRADA.TAlx.FieldByName('NOME').AsString
               	Else
               	if NOT(DMENTRADA.TAlx.FieldByName('NUMDEV').AsString = '')THEN
               End;

               If LancConta('PEDCOMPRA', xCodPedido,DMENTRADA.TAlx.FieldByName('COD_FORNEC').AsInteger, CBPagamento.Text, DMENTRADA.TAlx.FieldByName('VALOR').AsCurrency, 0, xCodConta, -1, 0, xHistorico,DMENTRADA.TAlx.FieldByName('COD_FORMPAG').AsInteger, 'OS Man.:'+DMENTRADA.TAlx.FieldByName('NUMPED').AsString, 'P',  DMENTRADA.TAlx.FieldByName('DTPEDCOMP').AsDateTime, 0, DMENTRADA.TAlx.FieldByName('DTPEDCOMP').AsString, '')=True
               Then Begin
               	ATUFINANC:=True;
               End
               Else Begin
               	ATUFINANC:=False;
               End;


           End;

           if ATUFINANC = True then
           	Result:=True
           Else
           	Result:=False;
       End;
   End;//primeiro if
End;//função

procedure TFOrdemManutencao.CBPagamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key<>#13 Then
   	Key:=#0;
end;

procedure TFOrdemManutencao.CBPagamentoClick(Sender: TObject);
begin
  inherited;
	FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMENTRADA.TAlx.FieldByName('COD_FORMPAG').AsString, '');

  If ((CBPagamento.Text='Cartão') OR (CBPagamento.Text = 'Cheque')) AND (DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString='À VISTA')
   Then Begin
      edNumeroCartao.Visible := True;
      lbNumeroCartao.Visible := True;
   End
   Else Begin
      edNumeroCartao.Visible := False;
      lbNumeroCartao.Visible := False;
      edNumeroCartao.Text := '';
   End;
end;

procedure TFOrdemManutencao.CBPagamentoExit(Sender: TObject);
begin
  inherited;
	//XVlrCheque:=-50;
   //LTotMostraCheque.Visible:=False;

   //controla visualização de componentes referentes a escolha e visualização da cta corrente
	If (CBPagamento.Text='Banco') or (CBPagamento.Text='Cheque') or (CBPagamento.Text='Cartão')
   Then Begin
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
      	//PMostraConta.Visible:=True;
  		//PMostraConta.BringToFront;
      	PanelBanco.Enabled:=True;
      	PanelBanco.Visible:=True;
      	PanelBanco.BringToFront;
      	DBGridBanco.SetFocus;
   End
   Else Begin
   	PMostraConta.Visible:=False;
       PanelBanco.Enabled:=False;
       PMostraCta.Visible:=False;
   End;
end;

procedure TFOrdemManutencao.DBGridBancoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If Not DMBANCO.WCtaCor.IsEmpty Then//'se banco não estiver vazio
       	xCodContaBanco:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
       Else
           xCodContaBanco:=-1;

       PMostraConta.Visible:=True;
  		PMostraConta.BringToFront;
       CBPagamento.Enabled:=False;
       PanelBanco.Visible:=False;
       PanelBanco.Enabled:=False;
       CBPagamento.Enabled:=True;
       FrmConta.EDCodigo.SetFocus;
   End;
end;

procedure TFOrdemManutencao.DBGridCadastroPadraoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	if (DMENTRADA.TAlx.FieldByName('SITUACAO').AsString='ABERTO')
   Then Begin
       DBGridCadastroPadrao.Canvas.Font.Color := clRed;
       DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
   if (DMENTRADA.TAlx.FieldByName('SITUACAO').AsString='FECHADO')
   Then Begin
       DBGridCadastroPadrao.Canvas.Font.Color := clNavy;
       DBGridCadastroPadrao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;

procedure TFOrdemManutencao.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
   PmRelatorios.Popup(Left+PConsulta.left+Painel.left+ BtnRelatorio.Left, top+PConsulta.Top+Painel.top+BtnRelatorio.Top+BtnRelatorio.Height);
end;

procedure TFOrdemManutencao.ProdutosManuteno1Click(Sender: TObject);
begin
  inherited;
	If ControlAccess('RPEDVEN', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='FRFPRODMANUTENCAO';
   AbrirForm(TFRelEstoque, FRelEstoque, 0);

end;

procedure TFOrdemManutencao.ComprovanteManuteno1Click(Sender: TObject);
begin
  inherited;

  	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RELABERTORD', 'M')=False Then
  		Exit;
  //MAURO - FILTRA EMPRESA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TEmpresa, 'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '')=False Then
   	Exit;

   //MAURO - FILTRA LOJA PARA IMPRIMIR CABEÇALHO
   If FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '')=False Then
   	Exit; 

  	//MAURO - FILTRA OS DADOS DA ORDEM DE MANUTENÇÃO
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('select vwpedc.cod_pedcomp, itenspedc.cod_itenspedc, vwpedc.cod_usuario, vwpedc.cod_loja, vwpedc.dtpedcomp, ');
   DMESTOQUE.TRel.SQL.Add(' vwsimilar.cod_interno, vwsimilar.descricao, itenspedc.obs, itenspedc.valortotal, vwpedc.formpag,');
   DMESTOQUE.TRel.SQL.Add(' vwpedc.nome, vwpedc.numped, vwpedc.valor, vwpedc.numdev, vwsimilar.codfabricante, vwsimilar.contrint,vwfuncionario.nome as Responsavel');
   DMESTOQUE.TRel.SQL.Add('from vwpedc ');
   DMESTOQUE.TRel.SQL.Add(' left join itenspedc on vwpedc.cod_pedcomp = itenspedc.cod_pedcompra ');
   DMESTOQUE.TRel.SQL.Add(' left join vwsimilar on vwsimilar.cod_estoque = itenspedc.cod_estoque');
   DMESTOQUE.TRel.SQL.Add(' left join estoque on estoque.cod_estoque=itenspedc.cod_estoque');
   DMESTOQUE.TRel.SQL.Add(' left join vwfuncionario on vwpedc.cod_usuario = vwfuncionario.cod_func');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')  AND (vwpedc.numdev='+#39+'ORM'+#39+') AND (vwpedc.cod_pedcomp=:codigo)');
   DMESTOQUE.TRel.ParamByName('codigo').AsInteger:=DMENTRADA.TAlx.FieldByName('cod_pedcomp').AsInteger;
   DMESTOQUE.TRel.SQL.Add(' order by vwpedc.cod_pedcomp ');
   If AbreTabela=True
   Then Begin
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfCompManutencao.frf');
   	FSRel.ShowReport;
   End;

end;

Function TFOrdemManutencao.AbreTabela: Boolean;
Begin
   DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.Open;
   If DMESTOQUE.TRel.IsEmpty
   Then Begin
		Mensagem('INFORMAÇÃO', ' O Relatório retornou sem informações!', '', 1, 1, False, 'I');
       Result:=False;
   End
   Else Begin
       Result:=True;
   End;
End;

procedure TFOrdemManutencao.FrmResponsavelBTNOPENClick(Sender: TObject);
begin
  inherited;
	If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
       xCodFuncionario:= DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
   	FrmResponsavel.EDCodigo.Text := DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
       FrmResponsavel.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
	End
   Else Begin
		xCodFuncionario := -1;
       FrmResponsavel.EDCodigo.Text := '';
       FrmResponsavel.EdDescricao.Text := '';
   End;
end;

Function TFOrdemManutencao.LocalizaResponsavel : Boolean;
Begin
    	FiltraTabela(DMMACS.TUsuario, 'USUARIO', 'CODUSUARIO', FMenu.LCODUSUARIO.Caption , '');
       xCodUsuario := DMMACS.TUsuario.FieldByName('CODUSUARIO').AsInteger;
       xCodFuncionario := DMMACS.TUsuario.FieldByName('COD_FUNCIONARIO').AsInteger;
       FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'COD_FUNC', IntToStr(xCodFuncionario),'');
       FrmResponsavel.EdDescricao.Text := DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
End;

end.
