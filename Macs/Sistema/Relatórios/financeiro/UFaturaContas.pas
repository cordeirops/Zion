unit UFaturaContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, UFrmBusca, Mask, Grids,
  DBGrids, RpDefine, RpBase, RpSystem;

type
  TFFaturaContas = class(TFPadrao)
    FrmBuscaFormapag: TFrmBusca;
    Label4: TLabel;
    cbPagamento: TComboBox;
    EdDoc: TEdit;
    Label6: TLabel;
    Label8: TLabel;
    EdDataRef: TMaskEdit;                                   
    FrmBuscaConta: TFrmBusca;
    DBGridParcelas: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edTotal: TEdit;
    edSubTotal: TEdit;
    edDesconto: TEdit;
    edMulta: TEdit;
    Label3: TLabel;
    edCodigo: TEdit;
    Label5: TLabel;
    Label7: TLabel;
    edNome: TEdit;
    edCPFCNPJ: TEdit;
    Painel: TPanel;
    BtnFaturar: TBitBtn;
    BtnApagar: TBitBtn;
    PBanco: TPanel;
    DBGCTA: TDBGrid;
    PTaxaCartao: TPanel;
    Label11: TLabel;
    EdTxCartao: TEdit;
    cbImpRecibo: TCheckBox;
    EDDescPercento: TEdit;
    cbImpComprovante: TCheckBox;
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    //MAURO 25/01/2013 - Função para consultar Clientes com parcelas marcadas
    Function ConsultaClienteMark(TipoClienteConsultaMark: String) : Boolean;
    //MAURO 25/01/2013 - Função para consultar as parcelas CR marcadas do Cliente
    Function ConsultaParcelasCR : Boolean;
    //MAURO 25/01/2013 - Função para consultar as parcelas CP marcadas do Cliente
    Function ConsultaParcelasCP : Boolean;
    //MAURO 25/01/2013 - Função para preparar os dados da tela
    Function PreparaDados : Boolean;
 	//MAURO 25/02/2013 - Função para inserir dados na tabela FaturaConta e ItensFaturaConta
    Function InsereFatura : Boolean;
    Function LimparCampos : Boolean;
    procedure FrmBuscaContaBTNOPENClick(Sender: TObject);
    procedure FrmBuscaFormapagBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaContaBTNMINUSClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure edMultaExit(Sender: TObject);
    procedure edDescontoExit(Sender: TObject);
    procedure BtnFaturarClick(Sender: TObject);
    procedure cbPagamentoExit(Sender: TObject);
    procedure DBGCTAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbPagamentoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EdTxCartaoExit(Sender: TObject);
    procedure edTotalExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFaturaContas: TFFaturaContas;
  xCodPessoa : Integer;
  xCodFormpag: Integer;
  xCodConta, xCodCtaCor, xCodFaturaConta : Integer;
  xTipo, xEndereco : String;
  xMulta, xDesconto, XSubtotal, xTotal, xTotalExt, xTxCartao : Real;
  xFlagCons : Integer;
  XTipoFatura: String;
implementation

uses UDMPessoa, UCliente, UFORNECEDOR, UFormPag, UDMFinanc, Alxor32, Alxorprn, alxMessage,
  UDMConta, UMDO, UMenu, UConsPlncta, Math, DB, UDmBanco, UPadraoBaixarContas,
  UDMMacs, JLLabel;

{$R *.dfm}

procedure TFFaturaContas.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmBuscaFormapag.BTNOPENClick(Sender);
   If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
      FrmBuscaFormapag.EDCodigo.Text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
      FrmBuscaFormapag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
      XCodFormpag:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
   End;
   FrmBuscaFormapag.Refresh;
end;

procedure TFFaturaContas.FormActivate(Sender: TObject);
begin
  inherited;
   EDDescPercento.Height:=19;
   If XTipoFatura='CARTÃO'
   Then Begin
       cbPagamento.Enabled:=False;
       FrmBuscaFormapag.Enabled:=False;
   End
   Else Begin
       FrmBuscaFormapag.Enabled:=True;
       cbPagamento.Enabled:=True;
   End;
   
       {if xTipo = 'CR'
       then begin
           LDescTitulo.Caption := 'Faturar Contas a Receber';
           ConsultaParcelasCR;
           preparaDados;
       End;
       if xTipo = 'CP'
       then begin
           LDescTitulo.Caption := 'Faturar Contas a Pagar';
           ConsultaParcelasCP;
           preparaDados;
       End;
       }
end;

Function TFFaturaContas.preparaDados : Boolean;
Begin

	LimparCampos;
	//prepara forma de pagamento
	DMFINANC.TFormPag.Close;
   DMFINANC.TFormPag.SQL.Clear;
   DMFINANC.TFormPag.SQL.Add('select * from formpag');
   DMFINANC.TFormPag.SQL.Add('where formpag.descricao = ''À VISTA''');
   DMFINANC.TFormPag.Open;
   FrmBuscaFormapag.EdDescricao.Text := DMFINANC.TFormPag.fieldByName('descricao').AsString;
	FrmBuscaFormapag.EDCodigo.Text := DMFINANC.TFormPag.fieldByName('COD_FORMPAG').AsString;
   xCodFormpag := DMFINANC.TFormPag.fieldByName('COD_FORMPAG').AsInteger;

   //Prepara Valores
   DMFINANC.TAlxMoeda.Close;
   DMFINANC.TAlxMoeda.SQL.Clear;
   if xTipo = 'CR' then
  		DMFINANC.TAlxMoeda.SQL.Add('Select SUM(parcelacr.valor) AS VALOR From parcelacr where (parcelacr.mark = ''X'') and (parcelacr.fech=''N'')')
   Else
  		DMFINANC.TAlxMoeda.SQL.Add('Select SUM(parcelacp.valor) AS VALOR From parcelacp where (parcelacp.mark = ''X'') and (parcelacp.fech=''N'')');
  	DMFINANC.TAlxMoeda.Open;
   XSubtotal := StrToFloat(DMFINANC.TAlxMoeda.fieldByName('VALOR').AsString);

   edSubTotal.Text := FormatFloat('0.00',XSubtotal);
   xTotal := (XSubtotal + xMulta) - xDesconto;
   edTotal.Text := FormatFloat('0.00',xTotal);

   //prepara conta
   FrmBuscaConta.EDCodigo.Text := DMFINANC.TAlx.fieldByName('CLASSIF').AsString;
   FrmBuscaConta.EdDescricao.Text := DMFINANC.TAlx.fieldByName('DESCCONTA').AsString;
   xCodConta := DMFINANC.TAlx.fieldByName('cod_plncta').AsInteger;

   //prepara cliente
    edCodigo.Text := DMFINANC.TAlx.fieldByName('CODINTERNO').AsString;
    edNome.Text := DMFINANC.TAlx.fieldByName('NOME').AsString;

    //xCodPessoa:=DMFINANC.TAlx.fieldByName('cod_cliente').AsInteger;
    edCPFCNPJ.Text := DMFINANC.TAlx.fieldByName('CPFCNPJ').AsString;
    xEndereco := DMFINANC.TAlx.fieldByName('ENDERECO').AsString+', '+DMFINANC.TAlx.fieldByName('ENDNUM').AsString+ ' ' + DMFINANC.TAlx.fieldByName('BAIRRO').AsString;
    cbPagamento.Text := DMFINANC.TAlx.fieldByName('COBRANCA').AsString;

    EdDataRef.Text := DateToStr(Date());
    EdDoc.SetFocus;
    If XTipoFatura='NORMAL' Then
	    cbPagamento.Text := 'Carteira';
End;

Function TFFaturaContas.ConsultaClienteMark(TipoClienteConsultaMark: String) : Boolean;
Begin
   XTipoFatura:=TipoClienteConsultaMark;
	If xTipo = 'CR'
   then begin
   	DMFINANC.TAlxMoeda.Close;
    	DMFINANC.TAlxMoeda.SQL.Clear;
    	DMFINANC.TAlxMoeda.SQL.Add('Select cliente.cod_cliente, cliente.cod_pessoa, parcelacr.numparc, parcelacr.cobranca from parcelacr');
    	DMFINANC.TAlxMoeda.SQL.Add('left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber');
    	DMFINANC.TAlxMoeda.SQL.Add('left join cliente on cliente.cod_cliente = ctareceber.cod_cliente');
    	DMFINANC.TAlxMoeda.SQL.Add('where (parcelacr.mark = ''X'') and (parcelacr.fech=''N'')');
    	DMFINANC.TAlxMoeda.Open;
    	xCodPessoa := DMFINANC.TAlxMoeda.fieldByName('cod_pessoa').AsInteger;
       if DMFINANC.TAlxMoeda.IsEmpty then
       	xFlagCons:=0
       Else
       	xFlagCons:=1;
   end;
   if xTipo = 'CP'
   then begin
   	DMFINANC.TAlxMoeda.Close;
    	DMFINANC.TAlxMoeda.SQL.Clear;
    	DMFINANC.TAlxMoeda.SQL.Add('select fornecedor.cod_fornec, fornecedor.cod_pessoa, parcelacp.numparc, parcelacp.cobranca from parcelacp');
    	DMFINANC.TAlxMoeda.SQL.Add('left join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar');
    	DMFINANC.TAlxMoeda.SQL.Add('left join fornecedor on ctapagar.cod_fornec = fornecedor.cod_fornec');
    	DMFINANC.TAlxMoeda.SQL.Add('where (parcelacp.mark = ''X'') and (parcelacp.fech=''N'')');
    	DMFINANC.TAlxMoeda.Open;
    	xCodPessoa := DMFINANC.TAlxMoeda.fieldByName('cod_pessoa').AsInteger;
       if DMFINANC.TAlxMoeda.IsEmpty then
       	xFlagCons:=0
       Else
       	xFlagCons:=1;
   End;
   //Vamos percorrer todas as parcelas para verificarmos as formas de cobranças permitidas para faturas
   DMFINANC.TAlxMoeda.First;
   While not DMFINANC.TAlxMoeda.Eof do
   Begin
   	If TipoClienteConsultaMark='NORMAL'
       Then Begin
           If (DMFINANC.TAlxMoeda.FieldByName('COBRANCA').AsString<>'Carteira') and (DMFINANC.TAlxMoeda.FieldByName('COBRANCA').AsString<>'Banco')
           Then Begin
               MessageDlg('A Parcela: '+DMFINANC.TAlxMoeda.FieldByName('numparc').AsString+' não possui forma de cobrança adequada para fatura.', mtWarning, [mbOK], 0);
               xFlagCons:=0;
           End;
       End;
   	If TipoClienteConsultaMark='CARTÃO'
       Then Begin
 			If (DMFINANC.TAlxMoeda.FieldByName('COBRANCA').AsString<>'C - Cartão') and (DMFINANC.TAlxMoeda.FieldByName('COBRANCA').AsString<>'D - Cartão')
           Then Begin
               MessageDlg('A Parcela: '+DMFINANC.TAlxMoeda.FieldByName('numparc').AsString+' não possui forma de cobrança adequada para fatura.', mtWarning, [mbOK], 0);
               xFlagCons:=0;
           End;
       End;
       DMFINANC.TAlxMoeda.Next;
   End;
End;

Function TFFaturaContas.ConsultaParcelasCR : Boolean;
Begin

    DMFINANC.TAlx.Close;
    DMFINANC.TAlx.SQL.Clear;
    DMFINANC.TAlx.SQL.Add(' Select cliente.cod_cliente, cliente.cod_interno as CODINTERNO, pessoa.nome as NOME, pessoa.cpfcnpj, pessoa.endereco as ENDERECO, pessoa.endnumero as ENDNUM, pessoa.bairro as BAIRRO,');
    DMFINANC.TAlx.SQL.Add(' parcelacr.cod_parcelacr as COD_PARCELA,parcelacr.numparc as NUMPARC, parcelacr.numboleto as NUMBOLETO, parcelacr.dtvenc as DTVENC,');
    DMFINANC.TAlx.SQL.Add(' parcelacr.valor as VALOR, parcelacr.cobranca as COBRANCA, ctareceber.dtlanc as DTLANC, plncta.descricao as DESCCONTA,');
    DMFINANC.TAlx.SQL.Add(' plncta.classificacao as CLASSIF,vwfuncionario.nome as VENDEDOR, cartao.descricao as BANDEIRA, cartao.taxa, ctacor.numctacor as NUMCONTA,');
    DMFINANC.TAlx.SQL.Add(' formpag.cod_formpag, formpag.descricao as FORMPAG, plncta.cod_plncta, ctacor.cod_ctacor, parcelacr.mark as MARK');
    DMFINANC.TAlx.SQL.Add(' from parcelacr');
    DMFINANC.TAlx.SQL.Add(' left join ctareceber on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber');
    DMFINANC.TAlx.SQL.Add(' left join ctacor on parcelacr.cod_ctacor = ctacor.cod_ctacor');
    DMFINANC.TAlx.SQL.Add(' left join cartao on parcelacr.cod_cota = cartao.cod_cartao');
    DMFINANC.TAlx.SQL.Add(' left join plncta on ctareceber.cod_plncta = plncta.cod_plncta');
    DMFINANC.TAlx.SQL.Add(' left join formpag on ctareceber.cod_formpag = formpag.cod_formpag');
    DMFINANC.TAlx.SQL.Add(' left join vwfuncionario on ctareceber.cod_vendedor = vwfuncionario.cod_func');
    DMFINANC.TAlx.SQL.Add(' left join cliente on cliente.cod_cliente = ctareceber.cod_cliente');
    DMFINANC.TAlx.SQL.Add(' left join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa');
    DMFINANC.TAlx.SQL.Add(' where (parcelacr.mark = ''X'') and (parcelacr.fech=''N'')');
    If XTipoFatura='NORMAL'
    Then Begin
    	DMFINANC.TAlx.SQL.Add(' and (pessoa.cod_pessoa =:cod_pessoa) ');
    	DMFINANC.TAlx.ParamByName('cod_pessoa').AsInteger:=xCodPessoa;
    End;
    DMFINANC.TAlx.Open;
	 xCodPessoa:=DMFINANC.TAlx.fieldByName('cod_cliente').AsInteger;    
    DMFINANC.TAlx.First;
    DBGridParcelas.DataSource := DMFINANC.DSALX;
End;
Function TFFaturaContas.ConsultaParcelasCP : Boolean;
Begin
    DMFINANC.TAlx.Close;
    DMFINANC.TAlx.SQL.Clear;
    DMFINANC.TAlx.SQL.Add('select fornecedor.cod_interno as CODINTERNO, pessoa.nome as NOME, pessoa.cpfcnpj, pessoa.endereco as ENDERECO, pessoa.endnumero as ENDNUM, pessoa.bairro as BAIRRO,');
    DMFINANC.TAlx.SQL.Add('parcelacp.cod_parcelacp as COD_PARCELA, parcelacp.numparc as NUMPARC, parcelacp.numboleto as NUMBOLETO, parcelacp.dtvenc as DTVENC,');
    DMFINANC.TAlx.SQL.Add('parcelacp.valor as VALOR, parcelacp.cobranca as COBRANCA, ctapagar.dtlanc as DTLANC, plncta.descricao as DESCCONTA,');
    DMFINANC.TAlx.SQL.Add('plncta.classificacao as CLASSIF,cartao.descricao as BANDEIRA, formpag.cod_formpag, formpag.descricao as FORMPAG, plncta.cod_plncta, parcelacp.mark as MARK');
    DMFINANC.TAlx.SQL.Add('from parcelacp');
    DMFINANC.TAlx.SQL.Add('left join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar');
    DMFINANC.TAlx.SQL.Add('left join cartao on parcelacp.cod_cota = cartao.cod_cartao');
    DMFINANC.TAlx.SQL.Add('left join plncta on ctapagar.cod_plncta = plncta.cod_plncta');
    DMFINANC.TAlx.SQL.Add('left join formpag ON ctapagar.cod_formpag = formpag.cod_formpag');
    DMFINANC.TAlx.SQL.Add('left join fornecedor ON ctapagar.cod_fornec = fornecedor.cod_fornec');
    DMFINANC.TAlx.SQL.Add('left join pessoa ON pessoa.cod_pessoa = fornecedor.cod_pessoa');
    DMFINANC.TAlx.SQL.Add('where (pessoa.cod_pessoa =:cod_pessoa) and (parcelacp.mark = ''X'') and (parcelacp.fech=''N'')');
    DMFINANC.TAlx.ParamByName('cod_pessoa').AsInteger:=xCodPessoa;
    DMFINANC.TAlx.Open;

    DBGridParcelas.DataSource := DMFINANC.DSALX;
End;

procedure TFFaturaContas.FrmBuscaContaBTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmBuscaConta.BTNOPENClick(Sender);
  If XTIPO='CR'
   Then Begin
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'C';

		filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'C'+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO')
   End
   Else Begin
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'D';

		filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'D'+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');
   End;

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	xCodConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmBuscaConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmBuscaConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
    FrmBuscaConta.Refresh;
end;

procedure TFFaturaContas.FrmBuscaFormapagBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmBuscaFormapag.BTNMINUSClick(Sender);
  FrmBuscaFormapag.EDCodigo.Text:='';
  FrmBuscaFormapag.EdDescricao.Text:='';
  xCodFormpag := -1;

end;

procedure TFFaturaContas.FrmBuscaContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmBuscaConta.BTNMINUSClick(Sender);
  FrmBuscaConta.EdDescricao.Text := '';
  FrmBuscaConta.EDCodigo.Text := '';
  xCodConta := -1;
end;

Function TFFaturaContas.LimparCampos : Boolean;
Begin
	XSubtotal := 0.00;
   xTotal := 0.00;
   xMulta := 0.00;
   xDesconto := 0.00;
   edCodigo.Text:='';
   edCPFCNPJ.Text:='';
   edNome.Text:='';
   FrmBuscaFormapag.EdDescricao.Text:='';
   FrmBuscaFormapag.EDCodigo.Text:='';
   FrmBuscaConta.EdDescricao.Text:='';
   FrmBuscaConta.EDCodigo.Text:='';
   EdDoc.Text:='';

End;

procedure TFFaturaContas.BtnApagarClick(Sender: TObject);
begin
  inherited;
	Close;
end;

procedure TFFaturaContas.edMultaExit(Sender: TObject);
begin
  inherited;
	If edMulta.Text = '' then
       xMulta := StrToFloat('0')
   Else
       xMulta := StrToFloat(edMulta.Text);
   	xDesconto := StrToFloat(edDesconto.Text);
       edTotal.Text := FormatFloat('0.00',(XSubtotal + xMulta) - xDesconto);
       edMulta.Text := FormatFloat('0.00',xMulta);
end;

procedure TFFaturaContas.edDescontoExit(Sender: TObject);
begin
  inherited;
    If edDesconto.Text = '' then
       xDesconto := StrToFloat('0')
   Else
       xDesconto := StrToFloat(edDesconto.Text);
   	xMulta := StrToFloat(edMulta.Text);
       edTotal.Text := FormatFloat('0.00',(XSubtotal + xMulta) - xDesconto);
       edDesconto.Text := FormatFloat('0.00',xDesconto);
end;

procedure TFFaturaContas.BtnFaturarClick(Sender: TObject);
Var
	XHist: String;
	Flag: Integer;
   XPercDescFatura: Real;
   Xcodgerador: Integer;
begin
  inherited;
  	xcodgerador:=-1;
	try
       StrToInt(EdDoc.Text);
   Except
       EdDoc.Text:='0';
   End;
  	If (XTipoFatura='CARTÃO') and (xCodCtaCor=-1)
   Then Begin
   	//se for cartão e nã estiver selecionado banco para deposito
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
       PBanco.Enabled:=True;
       PBanco.Visible:=TRUE;
       PBanco.BringToFront;
       DBGCTA.SetFocus;
       Exit;
   End;
  	Try
       XPercDescFatura:=StrToFloat(EDDescPercento.Text);
   Except
       XPercDescFatura:=0;
   End;

	If xCodFormpag=-1
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','É preciso informar a forma de pagamento.','',1,1,false,'I');
       FrmBuscaFormapag.EDCodigo.SetFocus;
       Exit;
   End;
   If (cbPagamento.Text<>'Banco') And  (cbPagamento.Text<>'Carteira') And (cbPagamento.Text<>'Cheque') And (cbPagamento.Text<>'Cartão') And (cbPagamento.Text<>'Boleto')  And (cbPagamento.Text<>'C - Cartão')  And (cbPagamento.Text<>'D - Cartão') And (cbPagamento.Text<>'Crédito')
   Then Begin
   	MessageDlg('Foram encontradas formas de cobrança informadas incorretamente entre as parcelas. Para corrigir, dê um duplo click em cobrança. Ao aparecer uma flecha apontando para baixo, você pode selecionar a forma de pagamento.', mtWarning, [mbOK], 0);
		cbPagamento.SetFocus;
       Exit;
   End;
	If xCodConta=-1
   Then Begin
       Mensagem('    A T E N Ç Ã O   ','É preciso informar a conta para lançamento.','',1,1,false,'I');
       FrmBuscaConta.EDCodigo.SetFocus;
       Exit;
   End;

   //Monta histórico
   XHist:='Fat. Doc.';
   //Gera Historico
   DMFINANC.TAlx.First;
   while not DMFINANC.TAlx.Eof do
   Begin
       XHist:=XHist+'; '+DMFINANC.TAlx.FieldByName('NUMPARC').AsString;
		DMFINANC.TAlx.Next;
   End;

   //////////////////////////////
   //INICIA LANÇAMENTOS DE FATURA
   //////////////////////////////

   //Insere nova faturaconta e itensfaturaconta
   if InsereFatura=True
   Then Begin
   	If FrmBuscaFormapag.EdDescricao.Text='À VISTA'
       Then Begin
       	////////////
       	// A VISTA
           ////////////

           If cbPagamento.Text='Carteira'
           Then Begin
               If xTipo = 'CR'
               Then Begin
                   If LanCaixa(-1, DateToStr(Date()), xCodConta, XHist, StrToFloat(edTotal.Text), 'FATCR', 0, cbPagamento.Text, 'E', EdDoc.Text, StrToDate(EdDataRef.Text), '1')=True
                   Then  //Se lançou
                       Flag:=1
                   Else
                       Flag:=0;
               End
               Else Begin
                   If LanCaixa(-1, DateToStr(Date()), xCodConta, XHist, StrToFloat(edTotal.Text), 'FATCP', 0, cbPagamento.Text, 'S', EdDoc.Text, StrToDate(EdDataRef.Text), '1')=True
                   Then
                       Flag:=1
                   Else
                       Flag:=0;
               End;
           End;

           If cbPagamento.Text='Cheque'
           Then Begin
               If xTipo = 'CR'
               Then Begin
                   If LancChEnt(xCodConta, 0, XHist, DMFINANC.TAlx.fieldByName('DTVENC').AsDateTime, '', StrToFloat(edTotal.Text), 0, '', '', 0, '', '', 'FATCR', IntToStr(0))=True
                   Then  //Se lançou
                       Flag:=1
                   Else
                       Flag:=0;
               End
               Else Begin
                    Mensagem('    A T E N Ç Ã O   ','Essa opção está desabilitada!','',1,1,false,'I');
                    Exit;
               End;
           End;

           If cbPagamento.Text='Banco'
           Then Begin
               If xTipo = 'CR'
               Then Begin
                  If LanBanco(xCodCtaCor,xCodConta,XHist, StrToFloat(edTotal.Text), 'FATCR', 0, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'BANCO', 'N', DMFINANC.TAlx.FieldByName('DTVENC').AsString, '', DMFINANC.TAlx.FieldByName('DTLANC').AsString, '1', EdDataRef.Text)=True
                   Then  //Se lançou
                       Flag:=1
                   Else
                       Flag:=0;
               End
               Else Begin
                 If LanBanco(xCodCtaCor,xCodConta,XHist, StrToFloat(edTotal.Text), 'FATCP', 0, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'BANCO', 'N', DMFINANC.TAlx.FieldByName('DTVENC').AsString, '', DMFINANC.TAlx.FieldByName('DTLANC').AsString, '1', EdDataRef.Text)=True
                 Then
                   Flag:=1
                 Else
                   Flag:=0;
               End;
           End;

           If cbPagamento.Text='C - Cartão'
           Then Begin
               If xTipo = 'CR'
               Then Begin
                  If LanBanco(xCodCtaCor, xCodConta,XHist, StrToFloat(edTotal.Text), 'FATCR', 0, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'C - CARTÃO', 'S', DMFINANC.TAlx.FieldByName('DTVENC').AsString, '', DMFINANC.TAlx.FieldByName('DTLANC').AsString, '1', EdDataRef.Text)=True
                   Then  //Se lançou
                       Flag:=1
                   Else
                       Flag:=0;
               End
               Else Begin
                  If LanBanco(xCodCtaCor,xCodConta,XHist, StrToFloat(edTotal.Text), 'FATCP', 0, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'C - CARTÃO', 'S', DMFINANC.TAlx.FieldByName('DTVENC').AsString, '', DMFINANC.TAlx.FieldByName('DTLANC').AsString, '1', EdDataRef.Text)=True
                  Then
                       Flag:=1
                   Else
                       Flag:=0;
               End;
           End;

           If cbPagamento.Text='D - Cartão'
           Then Begin
               If xTipo = 'CR'
               Then Begin
                  If LanBanco(xCodCtaCor, xCodConta,XHist, StrToFloat(edTotal.Text), 'FATCR', 0, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'D - CARTÃO', 'S', DMFINANC.TAlx.FieldByName('DTVENC').AsString, '', DMFINANC.TAlx.FieldByName('DTLANC').AsString, '1', EdDataRef.Text)=True
                   Then  //Se lançou
                       Flag:=1
                   Else
                       Flag:=0;
               End
               Else Begin
                  If LanBanco(xCodCtaCor,xCodConta,XHist, StrToFloat(edTotal.Text), 'FATCP', 0, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'D - CARTÃO', 'S', DMFINANC.TAlx.FieldByName('DTVENC').AsString, '', DMFINANC.TAlx.FieldByName('DTLANC').AsString, '1', EdDataRef.Text)=True
                  Then
                       Flag:=1
                   Else
                       Flag:=0;
               End;
           End;

           If cbPagamento.Text='Boleto'
           Then Begin
               If xTipo = 'CR'
               Then Begin
                  If LanBanco(xCodCtaCor, xCodConta,XHist, StrToFloat(edTotal.Text), 'FATCR', 0, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'BOLETO', 'N', DMFINANC.TAlx.FieldByName('DTVENC').AsString, '', DMFINANC.TAlx.FieldByName('DTLANC').AsString, '1', EdDataRef.Text)=True
                   Then  //Se lançou
                       Flag:=1
                   Else
                       Flag:=0;
               End
               Else Begin
                   If LanBanco(xCodCtaCor,xCodConta,XHist, StrToFloat(edTotal.Text), 'FATCP', 0, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'BOLETO', 'N', DMFINANC.TAlx.FieldByName('DTVENC').AsString, '', DMFINANC.TAlx.FieldByName('DTLANC').AsString, '1', EdDataRef.Text)=True
                   Then
                       Flag:=1
                   Else
                       Flag:=0;
                   End;
           End;

           If cbPagamento.Text='Crédito'
           Then Begin
               If xTipo = 'CR'
               Then Begin
                   If LanCredito(xCodPessoa, 0, 'FATCR', 'CLI', 'S', '', DateToStr(Date()),xTotal)=true
                   Then  //Se lançou
                       Flag:=1
                   Else
                       Flag:=0;
               End
               Else Begin

               End;
           End;

           If Flag = 1
           then begin
           	// comita todas as operações acima
               MDO.Transac.CommitRetaining;
               If xTipo = 'CR'
               Then Begin
                   MDO.Query.Close;
                   MDO.Query.SQL.Clear;
                   MDO.Query.SQL.Add(' update parcelacr set parcelacr.dtdebito=:DataDebito, parcelacr.valorpg=parcelacr.valor-((parcelacr.valor * :Percento)/100), parcelacr.mark = '+#39+#39+ ', parcelacr.fech = '+#39+'S'+#39);
                   MDO.Query.SQL.Add(' where parcelacr.mark = '+#39+'X'+#39);
                   MDO.Query.ParamByName('DataDebito').AsDate:=Date();
                   MDO.Query.ParamByName('Percento').AsCurrency:=XPercDescFatura;
                   MDO.Query.ExecSQL;
                   MDO.Transac.CommitRetaining;
               End
               Else Begin
                   MDO.Query.Close;
                   MDO.Query.SQL.Clear;
                   MDO.Query.SQL.Add(' update parcelacp set parcelacp.dtdebito=:DataDebito, parcelacp.valorpg=((parcelacp.valor * :Percento)/100), parcelacp.mark = '+#39+#39+ ', parcelacp.fech = '+#39+'S'+#39);
                   MDO.Query.SQL.Add(' where parcelacp.mark = '+#39+'X'+#39);
                   MDO.Query.ParamByName('DataDebito').AsDate:=Date();
                   MDO.Query.ParamByName('Percento').AsCurrency:=XPercDescFatura;
                   MDO.Query.ExecSQL;
                   MDO.Transac.CommitRetaining;
                   
               End;
               Mensagem('       ','Faturamento realizado com sucesso!','',1,1,false,'I');
               xcodgerador:=xCodFaturaConta;
               If cbImpRecibo.Checked = True
               then Begin
	                FMenu.TIPOREL := 'RECIBOFATCONTA';
                   FMenu.Extenso.Numero:=FormatFloat('0.00', StrToFloat(edTotal.Text));
                   ImpReciboFatura(edNome.Text, xEndereco, edTotal.Text,UpperCase(FMenu.Extenso.Extenso),XHist);
                   FMenu.RvFaturas.SystemPreview.FormState := wsMaximized;
                   FMenu.RvFaturas.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
                   FMenu.RvFaturas.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
                   FMenu.RvFaturas.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
                   FMenu.RvFaturas.Execute;
               end;
           end
           Else begin
               MDO.Transac.RollbackRetaining;
           end;
       End
       Else Begin
       	////////////
           // A PRAZO
           ////////////
           If xTipo = 'CR'
           Then Begin
		        IF LancConta('PEDVENDA', StrToInt(EdDoc.Text), xCodPessoa, cbPagamento.Text, StrToFloat(edTotal.Text), 0, xCodConta, 0,  -1, XHist, XCodFormPag, EdDoc.Text, 'R', StrToDateTime(EdDataRef.Text), 0, EdDataRef.Text, '')=True
               Then  //Se lançou
                   Flag:=1
               Else
                   Flag:=0;
           End
           Else Begin
			    IF LancConta('PEDCOMPRA', StrToInt(EdDoc.Text), xCodPessoa, cbPagamento.Text, StrToFloat(edTotal.Text), 0, xCodConta , 0,  -1, XHist, xCodFormpag, EdDoc.Text, 'P', StrToDateTime(EdDataRef.Text), 0, EdDataRef.Text, '')=True
               Then
                   Flag:=1
               Else
                   Flag:=0;
               End;

           If Flag = 1
           then begin
               If xTipo = 'R'
               Then Begin
                   MDO.Query.Close;
                   MDO.Query.SQL.Clear;
                   MDO.Query.SQL.Add(' update parcelacr set parcelacr.dtdebito=:DataDebito, parcelacr.mark = '+#39+#39+ ', parcelacr.fech = '+#39+'S'+#39);
                   MDO.Query.SQL.Add(' where parcelacr.mark = '+#39+'X'+#39);
                   MDO.Query.ParamByName('DataDebito').AsDate:=Date();
                   MDO.Query.ExecSQL;
                   MDO.Transac.CommitRetaining;
               End
               Else Begin
                   MDO.Query.Close;
                   MDO.Query.SQL.Clear;
                   MDO.Query.SQL.Add(' update parcelacp set parcelacp.dtdebito=:DataDebito, parcelacp.mark = '+#39+#39+ ', parcelacp.fech = '+#39+'S'+#39);
                   MDO.Query.SQL.Add(' where parcelacp.mark = '+#39+'X'+#39);
                   MDO.Query.ParamByName('DataDebito').AsDate:=Date();
                   MDO.Query.ExecSQL;
                   MDO.Transac.CommitRetaining;
               End;
               Mensagem('       ','Faturamento realizado com sucesso!','',1,1,false,'I');
           end
           Else begin
               MDO.Transac.RollbackRetaining;
           end;
       End;
       DMFINANC.Transaction.CommitRetaining;
       if cbImpComprovante.Checked = True
       then Begin
           FMenu.TIPOREL := 'COMPROVANTEFATCONTA';
           ImpReciboFaturaContas(xCodFaturaConta,'FATURA', 'CR');
           FMenu.RvFaturas.SystemPreview.FormState := wsMaximized;
           FMenu.RvFaturas.DefaultDest := rdPreview;  //- 19/02/2009: visualizar o relatório direto
           FMenu.RvFaturas.SystemPrinter.Units := unMM; //- 19/02/2009: trabalha nos milimetros da página
           FMenu.RvFaturas.SystemPReview.RulerType := rtBothCm; //- 19/02/2009: mostra régua superior e lateral
           FMenu.RvFaturas.Execute;
       end;  
       Close;
   End;
end;

procedure TFFaturaContas.cbPagamentoExit(Sender: TObject);
begin
  inherited;

		if cbPagamento.Text='Banco'
       Then begin
       	FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
       	PBanco.Enabled:=True;
       	PBanco.Visible:=TRUE;
       	PBanco.BringToFront;
       	DBGCTA.SetFocus;
       End;
       if (cbPagamento.Text='Cheque') and (xTipo = 'CP')
       Then begin
       	FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
       	PBanco.Enabled:=True;
       	PBanco.Visible:=TRUE;
       	PBanco.BringToFront;
       	DBGCTA.SetFocus;
       End;
       if (cbPagamento.Text<>'D - Cartão') or (cbPagamento.Text<>'C - Cartão')
       Then begin
       	EdTxCartao.Text:='0,00';
           edDesconto.Text:='0,00';
           xDesconto := 0.00;
           edTotal.Text := FormatFloat('0.00',(XSubtotal + xMulta) - xDesconto);
           PTaxaCartao.Visible:=False;
       End;
       
end;

procedure TFFaturaContas.DBGCTAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_Return
   Then Begin
   	If Not DMBANCO.WCtaCor.IsEmpty Then//'se banco não estiver vazio
       	xCodCtaCor:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
       Else
           xCodCtaCor:=-1;

       PBanco.Visible:=False;
       PBanco.Enabled:=False;
   End;
end;

procedure TFFaturaContas.cbPagamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	key:=#0;
end;

procedure TFFaturaContas.FormShow(Sender: TObject);
begin
  inherited;
       xCodCtaCor:=-1;
		if xTipo = 'CR'
       then begin
           LDescTitulo.Caption := 'Faturar Contas a Receber';
           ConsultaParcelasCR;
           preparaDados;
           //Verifica taxas para cartão
           If ((cbPagamento.Text='C - Cartão') or (cbPagamento.Text='D - Cartão')) and (xTipo = 'CR')
           Then Begin
                PTaxaCartao.Visible:=true;
                PTaxaCartao.BringToFront;
                If DMFINANC.TAlx.FieldByName('taxa').AsString<>'' Then
                  EdTxCartao.Text:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('taxa').AsCurrency)
                Else
                  EdTxCartao.Text:='0,00';
                  edDesconto.Text:=FormatFloat('0.00', XSubtotal*StrToFloat(EdTxCartao.Text)/100);
                  xDesconto:=XSubtotal*StrToFloat(EdTxCartao.Text)/100;
                  edTotal.Text := FormatFloat('0.00',(XSubtotal + xMulta) - xDesconto);
		           EDDescPercento.Text:=FormatFloat('0.00', (100-(StrToFloat(edTotal.Text)*100)/StrToFloat(edSubTotal.Text)));                  
           End
           Else Begin
                EdTxCartao.Text:='0';
                PTaxaCartao.Visible:=False;
           End;

       End;
       if xTipo = 'CP'
       then begin
           LDescTitulo.Caption := 'Faturar Contas a Pagar';
           ConsultaParcelasCP;
           preparaDados;
       End;
end;

procedure TFFaturaContas.EdTxCartaoExit(Sender: TObject);
begin
  inherited;
    If EdTxCartao.Text = '' then
       xTxCartao := StrToFloat('0')
   Else
   	xTxCartao := StrToFloat(EdTxCartao.Text);
		xDesconto:=XSubtotal*xTxCartao/100;
   	xMulta := StrToFloat(edMulta.Text);
       edTotal.Text := FormatFloat('0.00',(XSubtotal + xMulta) - xDesconto);
       edDesconto.Text := FormatFloat('0.00',xDesconto);
       EdTxCartao.Text := FormatFloat('0.00',xTxCartao);
end;

procedure TFFaturaContas.edTotalExit(Sender: TObject);
begin
  inherited;
	edDesconto.Text:='0,00';
   edMulta.Text:='0,00';  
  	If  StrToFloat(edTotal.Text)>StrToFloat(edSubTotal.Text)
   Then Begin
   	//Aplicamos Multa
       edMulta.Text:=FormatFloat('0.00', StrToFloat(edTotal.Text)-StrToFloat(edSubTotal.Text))
   End
   Else Begin
  		If  StrToFloat(edTotal.Text)<StrToFloat(edSubTotal.Text)
       Then Begin
           edDesconto.Text:=FormatFloat('0.00', StrToFloat(edSubTotal.Text)-StrToFloat(edTotal.Text));
           EDDescPercento.Text:=FormatFloat('0.00', (100-(StrToFloat(edTotal.Text)*100)/StrToFloat(edSubTotal.Text)));
       End;
   End;                                                 
   BtnFaturar.SetFocus;
end;

Function TFFaturaContas.InsereFatura : Boolean;
Begin
   Try
   	Result:=True;
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
   	MDO.Query.SQL.Add( ' insert into FATURACONTA(COD_FATURACONTA,COD_USUARIO,COD_FORMPAG,DTFATURA,VLRTOTFATURA,DESCONTO,MULTA,COBRANCA,OPERACAO)');
   	MDO.Query.SQL.Add( '             values(:COD_FATURACONTA,:COD_USUARIO,:COD_FORMPAG,:DTFATURA,:VLRTOTFATURA,:DESCONTO,:MULTA,:COBRANCA,:OPERACAO)');
   	MDO.Query.ParamByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
   	MDO.Query.ParamByName('COD_FORMPAG').AsInteger:=xCodFormpag;
   	MDO.Query.ParamByName('DTFATURA').AsDate:=Date;
   	MDO.Query.ParamByName('VLRTOTFATURA').AsCurrency:= StrToCurr(edTotal.Text);
       MDO.Query.ParamByName('DESCONTO').AsFloat:= StrToFloat(edDesconto.Text);
   	MDO.Query.ParamByName('MULTA').AsFloat:=StrToFloat(edMulta.Text);
   	MDO.Query.ParamByName('COBRANCA').AsString:=cbPagamento.Text;
		MDO.Query.ParamByName('OPERACAO').AsString:=xTipo;
       MDO.Query.ExecSQL;

       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select gen_id(GEN_FATURACONTA_ID, 0) as CODIGO from rdb$database ');
       MDO.QConsulta.Open;
       xCodFaturaConta :=  MDO.QConsulta.FieldByName('CODIGO').AsInteger;

       DMFINANC.TAlx.First;
       While not (DMFINANC.TAlx.Eof) do
       Begin
       	MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add( ' insert into ITENSFATURACONTA(COD_ITENSFATURACONTA,COD_FATURACONTA,COD_PARCELA)');
   		MDO.Query.SQL.Add( '             values(:COD_ITENSFATURACONTA,:COD_FATURACONTA,:COD_PARCELA)');
   		MDO.Query.ParamByName('COD_FATURACONTA').AsInteger:=xCodFaturaConta;
   		MDO.Query.ParamByName('COD_PARCELA').AsInteger:=DMFINANC.TAlx.FieldByName('COD_PARCELA').AsInteger;
      		MDO.Query.ExecSQL;
       DMFINANC.TAlx.Next;
       End;
   Except
     	Result := False;
      	ShowMessage('Erro ao inserir dados na tabela ItensFaturaConta');
   End;
End;

end.


