unit ULancTroco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRodaPe, Buttons, ExtCtrls, StdCtrls, TFlatEditUnit,
  Grids, DBGrids, DBCtrls, UDMBanco, UDMMacs, AlxMessage,
  EditFloat, ColorEditFloat;

type
  TFLancTroco = class(TFPadraoRodaPe)
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edVlrPagCheque: TColorEditFloat;
    edVlrPagChequeTerc: TColorEditFloat;
    edVlrPagCarteira: TColorEditFloat;
    edVlrTroco: TColorEditFloat;
    edVlrPago: TColorEditFloat;
    edVlrDivida: TColorEditFloat;
    btnConfima: TBitBtn;
    BTNCANCELAR: TBitBtn;
    Label7: TLabel;
    pChequeTerceiro: TPanel;
    lbSaldo: TLabel;
    DBText1: TDBText;
    LUZOPEN: TShape;
    Shape1: TShape;
    Label8: TLabel;
    Label9: TLabel;
    lbRestante: TLabel;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    BTNMINUS: TBitBtn;
    BTNOPEN: TBitBtn;
    btnOk: TBitBtn;
    Label1: TLabel;
    edVlrCredito: TColorEditFloat;
    Label10: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BTNOPENClick(Sender: TObject);
    procedure BTNMINUSClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure edVlrPagChequeTercKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edVlrPagChequeExit(Sender: TObject);
    procedure edVlrPagChequeTercExit(Sender: TObject);
    procedure edVlrPagCarteiraExit(Sender: TObject);
    procedure BTNCANCELARClick(Sender: TObject);
    procedure btnConfimaClick(Sender: TObject);
    function LancTroco(xValorDivida, xValorPago: Real; xPlncta, xParcela, xTipGer, xCodGer, xTip, xDoc: String; xCodCli: Integer): Boolean;
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edVlrCreditoExit(Sender: TObject);
    procedure BtnFechaClick(Sender: TObject);
  private
    { Private declarations }
    procedure FiltraCheques;
    procedure CalculaDividaRestante;
    function CalculaCarteira:Boolean;
    function VerificaAbCaixa(xGerador: String): Boolean;  
  public
    xCodPlncta, xNrParcela, xTipoGerador, xCodGerador, xTipo, xDocumento, xCliente, xCancelou: String;
    xAntCodCaixa, xAntCodLanCaixa: String;
    xCodigoPessoa: Integer;
  end;

var
  FLancTroco: TFLancTroco;
  xCodigo: Integer;
implementation

uses DB, UPadrao, Alxor32, UCtaCor, Umenu, UDMCAIXA, UPadraoContas,
  UDMPessoa, UDMFinanc, UDMConta;

{$R *.dfm}

{ TFLancTroco }

procedure TFLancTroco.FiltraCheques;
begin
	//Edmar - 21/05/2014 - Filtra os cheques recebidos que poderão ser usados
   DMBANCO.WChequeRec.Close;
   DMBANCO.WChequeRec.SQL.Clear;
   DMBANCO.WChequeRec.SQL.Add('SELECT * FROM VWCHEQUEREC ');
   DMBANCO.WChequeRec.SQL.Add('WHERE ((VWCHEQUEREC.FECH <> ''S'') OR (VWCHEQUEREC.FECH IS NULL))');
   DMBANCO.WChequeRec.Open;

   //Edmar - 21/05/2014 - Filtra os cheques que foram inseridos
   DMBANCO.TAlx.Close;
   DMBANCO.TAlx.SQL.Clear;
   DMBANCO.TAlx.SQL.Add(' select SUM(vwchequerec.valor) AS TOTAL from tmp ');
   DMBANCO.TAlx.SQL.Add(' Left join vwchequerec on tmp.int1 = vwchequerec.cod_chequerec ');
   DMBANCO.TAlx.Open;
   
   try
   	lbSaldo.Caption := FormatFloat('0.00', DMBANCO.TAlx.FieldByName('TOTAL').AsCurrency);
   except
		lbSaldo.Caption := '0,00';
   end;

   DMBANCO.TAlx.Close;
   DMBANCO.TAlx.SQL.Clear;
   DMBANCO.TAlx.SQL.Add(' select TMP.COD_TMP, vwchequerec.banco, vwchequerec.cod_movbanco, vwchequerec.numcheque, vwchequerec.valor, vwchequerec.emitente, vwchequerec.dtlanc from tmp ');
   DMBANCO.TAlx.SQL.Add(' Left join vwchequerec on tmp.int1 = vwchequerec.cod_chequerec ');
   DMBANCO.TAlx.Open;
end;

procedure TFLancTroco.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Troco' ;  
  	//Edmar - 21/10/2014 - Se for contas a pagar, deixa inativo o campo de cheques de terceiros
	if (XTipoPR='P') then
   begin
   	edVlrPagChequeTerc.Enabled := False;
       edVlrPagChequeTerc.ReadOnly := True;
       Label7.Caption := '';
   end;
  	lbRestante.Caption := FormatFloat('0.00', edVlrTroco.ValueNumeric);
	xCodigo := 1;
   //Edmar - 21/05/2014 - Apaga registro inseridos anteriormente
  	DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('DELETE FROM TMP');
   DMMACS.TALX.ExecSQL;
   DMMACS.Transaction.CommitRetaining;
   
	FiltraCheques;
end;

procedure TFLancTroco.BTNOPENClick(Sender: TObject);
begin
  inherited;
  DMMACS.TALX.Close;
  DMMACS.TALX.SQL.Clear;
  DMMACS.TALX.SQL.Add('SELECT * FROM TMP WHERE TMP.INT1 = :COD');
  DMMACS.TALX.ParamByName('COD').AsInteger := DMBANCO.WChequeRec.FieldByName('COD_CHEQUEREC').AsInteger;
  DMMACS.TALX.Open;

  if not DMMACS.TALX.IsEmpty then
  begin
		Mensagem('OPÇÃO BLOQUEADA', 'Este cheque já foi selecionado.', '', 1, 1, False, 'a');
       Exit;
  end;

  //Edmar - 06/06/2014 - Valida se o valor do cheque escolhido para o pagamento
  //não ultrapassou o valor total da divida
  if (StrToCurr(lbRestante.Caption) - DMBANCO.WChequeRec.FieldByName('VALOR').AsCurrency) < 0 then
  begin
		Mensagem('INFORMAÇÃO', 'O somatório total dos cheques ultrapassaram o valor da dívida. Verifique!', '', 1, 1, False, 'I');
   	Exit;
  end;  

  DMMACS.TMP.Insert;
  DMMACS.TMP.FieldByName('COD_TMP').AsInteger := xCodigo;
  DMMACS.TMP.FieldByName('INT1').AsInteger := DMBANCO.WChequeRec.FieldByName('COD_CHEQUEREC').AsInteger;
  DMMACS.TMP.Post;
  DMMACS.Transaction.CommitRetaining;

  xCodigo := xCodigo + 1;
    
  FiltraCheques;
  CalculaDividaRestante;
end;

procedure TFLancTroco.BTNMINUSClick(Sender: TObject);
begin
  inherited;
  	if FiltraTabela(DMMACS.TMP, 'TMP', 'COD_TMP', DMBANCO.TAlx.FieldByName('COD_TMP').AsString, '') then
   begin
		DMMACS.TMP.Delete;
       DMMACS.Transaction.CommitRetaining;
   	FiltraCheques;
       CalculaDividaRestante;
   end;
end;

procedure TFLancTroco.btnOkClick(Sender: TObject);
begin
  inherited;
	edVlrPagChequeTerc.setFocus;  	
	pChequeTerceiro.Visible := false;
   pChequeTerceiro.SendToBack;
   edVlrPagChequeTerc.Text := lbSaldo.Caption;
   CalculaCarteira;
end;

function TFLancTroco.CalculaCarteira:Boolean;
var
	xTroco, xChqTerc, xChq, xCarteira, xCredito: Real;
begin
	Result := true;
	xTroco := edVlrTroco.ValueNumeric;
   xChqTerc := edVlrPagChequeTerc.ValueNumeric;
   xChq := edVlrPagCheque.ValueNumeric;
   xCredito := edVlrCredito.ValueNumeric;

	xCarteira := xTroco - xChq - xChqTerc - xCredito;

   if xCarteira < 0 then
   begin
		Mensagem('INFORMAÇÃO', 'O somatório total das saídas ultrapassaram o valor do troco. Verifique!', '', 1, 1, False, 'I');
   	Result := false;
	end;
	edVlrPagCarteira.Text := FormatFloat('####0.00', xCarteira);
end;

procedure TFLancTroco.edVlrPagChequeTercKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_RETURN then
  begin
  	pChequeTerceiro.Visible := True;
   pChequeTerceiro.BringToFront;
   pChequeTerceiro.Left:=45;
   pChequeTerceiro.Top:=37;
   pChequeTerceiro.Repaint;
   DBLookupComboBox1.SetFocus;
   CalculaDividaRestante;
  end;
end;

procedure TFLancTroco.edVlrPagChequeExit(Sender: TObject);
begin
  inherited;
  if not CalculaCarteira then
  begin
  	edVlrPagCheque.ValueNumeric := 0;
   edVlrPagCheque.SetFocus;

   CalculaCarteira;
  end;
end;

procedure TFLancTroco.edVlrPagChequeTercExit(Sender: TObject);
begin
  inherited;
	if not CalculaCarteira then
  begin
  	edVlrPagChequeTerc.ValueNumeric := 0;
	edVlrPagChequeTerc.SetFocus;

   CalculaCarteira;
  end;
end;

procedure TFLancTroco.edVlrPagCarteiraExit(Sender: TObject);
begin
  inherited;
  if not CalculaCarteira then
  begin
  	edVlrPagCarteira.ValueNumeric := 0;
   edVlrPagCarteira.SetFocus;

   CalculaCarteira;   
  end;
end;

procedure TFLancTroco.BTNCANCELARClick(Sender: TObject);
begin
  inherited;
  	xCancelou := 'S';
	Close;
end;

procedure TFLancTroco.btnConfimaClick(Sender: TObject);
var
	xBanco: String;
	XCod_LancamentoCX: Integer;
begin
  inherited;
  xBanco := '';
	if edVlrPagCarteira.ValueNumeric >= 0 then
  	begin
   	//VERIFICA SE DEVE FAZER LANÇAMENTO DE CHEQUE RECEBIDOS
      	if edVlrPagCheque.ValueNumeric > 0 then
      	begin
           FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', ' (cod_ctacor > 0) and ((inativo=''0'') or (inativo is null)) ');
  			if AbrirForm(TFCadCtaCor, FCadCtaCor, 1) = 'Selected' then
  			begin
	   			//LancChSai(COD_PLNCTA: Integer; HISTORICO: String; DtVenc: TDateTime; Valor: Real;
	           		//COD_CONTACOR: Integer; TIPOGERADOR: String; COD_GERADOR: String; Destinatario: string);
           	if (XTipoPR='R') OR (FMenu.XTipoRel = 'R') then
      				LancChSai(StrToInt(xCodPlncta), 'Trc. C.R.-'+xNrParcela+' Venc.:'+DateToStr(Date())+'-Troco duplicata Nº '+xNrParcela, Date(), StrToCurr(edVlrPagCheque.Text),
           			DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger	, 'CTARCHTRCS', xCodGerador, 'Troco duplicata Nº '+xNrParcela)
               else
               begin//NOVO TRATAMENTO PARA CONTAS A PAGAR, CHEQUES RECEBIDOS
               	FiltraTabela(DMBANCO.TAgencia, 'AGENCIA', 'COD_AGENCIA', DMBANCO.WCtaCor.FieldByName('COD_AGENCIA').AsString, '');
                 	//LancChEnt(COD_PLNCTA: Integer; COD_PLNCTASERV: Integer; HISTORICO: String; DtVenc: TDateTime; NumCh: String; VlrProd: Real; vlrServ: Real;
                 		//NumAgencia: String; NumConta: String; COD_BANCO: Integer; PORTADOR: String; FonePort: String; TIPOGERADOR: String; COD_GERADOR: String): Boolean;
					FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'NOME', xCliente, '');
					LancChEnt(StrToInt(xCodPlncta), -1, 'Trc. C.P-'+xNrParcela+' Venc.:'+DateToStr(Date())+'-Troco duplicata Nº '+xNrParcela, Date(), '', StrToCurr(edVlrPagCheque.Text), 0,
                   	'', '', DMBANCO.TAgencia.FieldByName('COD_BANCO').AsInteger, xCliente, '', 'CTAPCHTRCS', xCodGerador);
               end;
           end;
      	end;
       
       //LANÇAMENTOS DE CHEQUES DE TERCEIROS
      	if edVlrPagChequeTerc.ValueNumeric > 0 then
      	begin
      		//Edmar - 06/06/2014 - Salva temporariamente o codigo corrente do caixa e do lancaixa
           xAntCodCaixa := FMenu.LCODCAIXA.Caption;
           xAntCodLanCaixa := IntToStr(FMenu.XCOD_LANCAIXA);
	        //Edmar - 23/05/2014 - Faz a tratativa referente a cheques de terceiros
           DMBANCO.TAlx.First;
           while not DMBANCO.TAlx.Eof do
           begin
           	if FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.TAlx.FieldByName('COD_MOVBANCO').AsString, '') then
               begin
					DMBANCO.TMovBanco.Edit;
                   DMBANCO.TMovBanco.FieldByName('FECH').AsString := 'S';
                   DMBANCO.TMovBanco.FieldByName('TIPOGERADOR').AsString := 'CTARTRC';
                   DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString := xCodGerador;
                   DMBANCO.TMovBanco.FieldByName('DTMOV').AsDateTime := Date();
                   DMBANCO.TMovBanco.FieldByName('DESTINATARIOCH').AsString := 'TROCO DUPLICATA Nª '+xNrParcela;
                   DMBANCO.TMovBanco.Post;

                   //Edmar - 06/06/2014 - Função usada para verificar o abcaixa que foi lançado o cheque
                   VerificaAbCaixa(DMBANCO.TAlx.FieldByName('COD_MOVBANCO').AsString);
                   //Edmar - 23/05/2014 - Faz a movimentação do cheque, aplicando uma saída em cheque no caixa.
                   LanCaixa(-1, DateToStr(Date()), StrToInt(xCodPlncta), 'Trc.:'+xNrParcela+'|Chq.:'+DMBANCO.TAlx.FieldByName('NUMCHEQUE').AsString+'|'+DMBANCO.TAlx.FieldByName('EMITENTE').AsString+'-'+DMBANCO.TAlx.FieldByName('dtlanc').AsString,
                   	DMBANCO.TAlx.FieldByName('VALOR').AsCurrency, 'DCHR', StrToInt(xCodGerador), 'CHEQUE', 'S', 'CH'+DMBANCO.TAlx.FieldByName('NUMCHEQUE').AsString, Date(), '0');
               end;
               DMBANCO.TAlx.Next;
           end;
           DMBANCO.IBT.CommitRetaining;

      		//Edmar - 06/06/2014 - Retorna o codigo corrente do caixa e do lancaixa salvo anteriormente
           FMenu.LCODCAIXA.Caption := xAntCodCaixa;
           FMenu.XCOD_LANCAIXA := StrToInt(xAntCodLanCaixa);
      	end;

       //LANÇAMENTO EM CARTEIRA
      	if edVlrPagCarteira.ValueNumeric > 0 then
      	begin
      		if (XTipoPR='R') OR (FMenu.XTipoRel = 'R') then
	   			//LanCaixa(MOEDA, DATA, PLNCTA, HISTORICO, VALOR, TIPOGERADOR, CODGERADOR, TIPO, TIPOCAI('S'), DOCLANCAMENTO, DATAREF, ESTRU);
           	LanCaixa(-1, DateToStr(Date()), StrToInt(xCodPlncta), 'Trc. C.R.:'+xNrParcela+'-'+xCliente,
           		edVlrPagCarteira.ValueNumeric, 'CTARTRC', StrToInt(xCodGerador), 'Carteira', 'S', xNrParcela, Date(), '1')
       	else
           	LanCaixa(-1, DateToStr(Date()), StrToInt(xCodPlncta), 'Trc. C.P.:'+xNrParcela+'-'+xCliente,
           		edVlrPagCarteira.ValueNumeric, 'CTAPTRC', StrToInt(xCodGerador), 'Carteira', 'E', xNrParcela, Date(), '1')
      	end;

       //LANÇAMENTO DE CRÉDITO POR ANTECIPAÇÃO
       if edVlrCredito.ValueNumeric > 0 then
       begin
    		//Retorna codigo do lançamento
    		DMCAIXA.TAlx.Close;
    		DMCAIXA.TAlx.SQL.Clear;
    		DMCAIXA.TAlx.SQL.Add(' select gen_id(GEN_LANCAIXA_ID, 0) as codigo from rdb$database ');
    		DMCAIXA.TAlx.Open;
    		XCod_LancamentoCX:=DMCAIXA.TAlx.FieldByName('codigo').AsInteger;

       	if (XTipoPR = 'R') OR (FMenu.XTipoRel = 'R') then//CLIENTE
           begin
           	{
           	LanCaixa(-1, DateToStr(Date()), StrToInt(xCodPlncta), 'Antec. Crédito Trc.: '+xCliente,
           		edVlrCredito.ValueNumeric, 'CTARTRC', StrToInt(xCodGerador), 'Carteira', 'E', xNrParcela, Date(), '1');
               }
           	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(xCodigoPessoa), '');
               FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '');
                      
               if FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', xCodGerador, '') then
               begin
               	try
                       DMCONTA.TParcCR.Edit;
                       DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency := DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency + edVlrCredito.ValueNumeric;
                       DMCONTA.TParcCR.Post;

                       DMCONTA.IBT.CommitRetaining;
                   except
                       DMCONTA.IBT.RollbackRetaining;
                   end;
               end;

               try
               	DMPESSOA.TPessoa.Edit;
               	DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency := DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency + edVlrCredito.ValueNumeric;
               	DMPESSOA.TPessoa.Post;
               except
               	on E : Exception do
                   begin
               		ShowMessage('Não foi possível atualizar o Crédito do Cliente!'+#13+E.Message);
               		DMPESSOA.TransacPessoa.RollbackRetaining;
                   	Exit;
                   end;
               end;
       	  //LanCredito(XCOD_PESSOA, XCOD_GERADOR: Integer; XTIPOGERADOR, XTIPOPES, XTIPOCRED, XDOCUMENTO, XDATA: String; XVALOR: Real);
				LanCredito(DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger, StrToInt(xCodGerador), 'LANCTRC', 'CLI', 'E', xNrParcela, DateToStr(Date()), edVlrCredito.ValueNumeric);
           end
           else//FORNECEDOR
           begin
           	{
           	LanCaixa(-1, DateToStr(Date()), StrToInt(xCodPlncta), 'Antec. Crédito Trc.: '+xCliente,
           		edVlrCredito.ValueNumeric, 'CTAPTRC', StrToInt(xCodGerador), 'Carteira', 'E', xNrParcela, Date(), '1');
               }
           	FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', IntToStr(xCodigoPessoa), '');
               FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsString, '');

               try
               	DMPESSOA.TPessoa.Edit;
               	DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency := DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency + edVlrCredito.ValueNumeric;
               	DMPESSOA.TPessoa.Post;
               except
               	on E : Exception do
                   begin
                   	ShowMessage('Não foi possível atualizar o Crédito do Fornecedor!'+#13+E.Message);
                       DMPESSOA.TransacPessoa.RollbackRetaining;
                       Exit;
                   end;
               end;
       	  //LanCredito(XCOD_PESSOA, XCOD_GERADOR: Integer; XTIPOGERADOR, XTIPOPES, XTIPOCRED, XDOCUMENTO, XDATA: String; XVALOR: Real);
	           	LanCredito(DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger, StrToInt(xCodGerador), 'LANCTPC', 'FOR', 'S', xNrParcela, DateToStr(Date()), edVlrCredito.ValueNumeric);
           end;

           DMPESSOA.TransacPessoa.CommitRetaining;           
       end;
  	end
  	else
  	begin
   	Mensagem('INFORMAÇÃO', 'O somatório total das saídas ultrapassaram o valor do troco. Verifique!', '', 1, 1, False, 'I');
   	Exit;
  	end;
  	Close;

  	DMCAIXA.VerifAbCaixa;
end;

function TFLancTroco.LancTroco(xValorDivida, xValorPago: Real; xPlncta,
  xParcela, xTipGer, xCodGer, xTip, xDoc: String; xCodCli: Integer): Boolean;
begin
	edVlrDivida.Text := CurrToStr(xValorDivida);
	edVlrPago.Text := CurrToStr(xValorPago);
	edVlrTroco.Text := CurrToStr(xValorPago - xValorDivida);
	xCodPlncta := xPlncta;
	xNrParcela := xParcela;
	xTipoGerador := xTipGer;
	xCodGerador := xCodGer;
	xTipo := xTip;
	xDocumento := xDoc;

	if (XTipoPR='R') OR (FMenu.XTipoRel = 'R') then //cliente
   begin
   	if FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(xCodCli), '') then
			xCliente := DMPESSOA.WCliente.FieldByName('NOME').AsString
       else
       	Mensagem(' A T E N Ç Ã O ', 'Não foi localizado nenhum Cliente', '', 1, 1, False, 'A');
   end
   else
   begin//FORNECEDOR
   	if FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_FORNEC', IntToStr(xCodCli), '') then
			xCliente := DMPESSOA.WFornecedor.FieldByName('NOME').AsString
       else
       	Mensagem(' A T E N Ç Ã O ', 'Não foi localizado nenhum Fornecedor', '', 1, 1, False, 'A');
   end;
   xCodigoPessoa := xCodCli;
end;

procedure TFLancTroco.CalculaDividaRestante;
var
	xTotCheque, xTroco, xCheque: Real;
begin
	xTotCheque := StrToCurr(lbSaldo.Caption);
   xTroco := edVlrTroco.ValueNumeric;
   xCheque := edVlrPagCheque.ValueNumeric;

	lbRestante.Caption := FormatFloat('0.00', (xTroco - xCheque - xTotCheque));
end;

function TFLancTroco.VerificaAbCaixa(xGerador: String): Boolean;
begin
	//Edmar - 06/06/2014 - Busca o cheque recebido com base no movbanco
	if FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_MOVBANCO', xGerador, '') then
   begin
    //Edmar - 06/06/2014 - Filtra buscando o codigo do abcaixa e do caixa e altera o valor da
    //variavel publica que armazena o codigo da abcaixa e do caixa
    DMCAIXA.Talx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add(' select lancaixa.cod_abcaixa, caixa.cod_caixa from lancaixa ');
    DMCAIXA.TAlx.SQL.Add(' left join chequerec on chequerec.cod_chequerec = lancaixa.cod_gerador ');
    DMCAIXA.TAlx.SQL.Add(' left join movbanco on movbanco.cod_movbanco = chequerec.cod_movbanco ');
    DMCAIXA.TAlx.SQL.Add(' left join abcaixa on abcaixa.cod_abcaixa = lancaixa.cod_abcaixa ');
    DMCAIXA.TAlx.SQL.Add(' left join caixa on caixa.cod_caixa = abcaixa.cod_caixa ');
    DMCAIXA.TAlx.SQL.Add(' where (lancaixa.cod_gerador = :gerador) and (lancaixa.tipogerador = ''LCHR'') ');
    DMCAIXA.TAlx.ParamByName('GERADOR').AsString:=DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString;
    DMCAIXA.TAlx.Open;
    
    If not DMCAIXA.TAlx.isempty Then
    begin
       FMenu.XCOD_LANCAIXA:= DMCAIXA.TAlx.FieldByName('cod_abcaixa').AsInteger;//StrToInt(FMenu.LCODCAIXA.Caption);
       FMenu.LCODCAIXA.Caption := DMCAIXA.TAlx.FieldByName('cod_caixa').AsString;
    end;
   end;
end;

procedure TFLancTroco.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	if Key = VK_ESCAPE then
   begin
     pChequeTerceiro.Visible := False;
     pChequeTerceiro.SendToBack;
     pChequeTerceiro.Repaint;

     edVlrPagChequeTerc.SetFocus;
   end;
end;

procedure TFLancTroco.edVlrCreditoExit(Sender: TObject);
begin
  inherited;
  if not CalculaCarteira then
  begin
  	edVlrCredito.ValueNumeric := 0;
	edVlrCredito.SetFocus;

   CalculaCarteira;
  end;
end;

procedure TFLancTroco.BtnFechaClick(Sender: TObject);
begin
	BTNCANCELARClick(sender);   
end;

end.

