unit UFechaConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, Grids,
  DBGrids, EditFloat, ColorEditFloat, DBCtrls;

type
  TFFechaConta = class(TFPadrao)
    Shape1: TShape;
    EdPagamento: TComboBox;
    EdVlrPagamento: TColorEditFloat;
    BtnAddConta: TBitBtn;
    BtnRemConta: TBitBtn;
    DbGrid: TDBGrid;
    EdCalculado: TFloatEdit;
    DRLabel1: TDRLabel;
    DRLabel2: TDRLabel;
    EdTotal: TFloatEdit;
    EdCliente: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BtnOk: TBitBtn;
    GroupBox3: TGroupBox;
    BtnVisualizar: TBitBtn;
    PTroco: TPanel;
    Label1: TLabel;
    CBTroco: TComboBox;
    PPrazo: TPanel;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    PBanco: TPanel;
    DBGCTA: TDBGrid;
    PChqTerceiro: TPanel;
    BitBtn1: TBitBtn;
    DbGridCheques: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnAddContaClick(Sender: TObject);
    procedure BtnRemContaClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure EdPagamentoExit(Sender: TObject);
    procedure DBGCTAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbGridChequesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
	 XTipo: String;
	 XCod_Tmp, XCod_Pedido, XCod_ContaProd, XCod_ContaServ: Integer;
    XValor, XValorProd, XValorServ: Real;
    XData: TDateTime;
	 XCOD_CONTABANCO: Integer;
    XCod_ProdVista, XCod_ServVista: Integer;
    //funcao utilizada para filtrar os lançamentos da tabela temporaria
    Function FiltraPagamentos:Boolean;
  end;

var
  FFechaConta: TFFechaConta;


implementation

uses Math, Alxor32, UDmServ, UDMPessoa, UDMMacs, UDMEntrada, UDMConta,
  AlxMessage, UDMFinanc, DB, UDmBanco, UMenu;
{$R *.dfm}

//funcao utilizada para filtrar os lançamentos da tabela temporaria
Function TFFechaConta.FiltraPagamentos:Boolean;
Begin
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('Select sum(tmp.vlr1) as total from tmp');
   DMMACS.TALX.Open;

   EdCalculado.ValueNumeric:=DMMACS.TALX.FieldByName('total').AsCurrency;

   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('Select * from tmp');
   DMMACS.TMP.Open;

   EdPagamento.Text:='Entrada';
   EdVlrPagamento.ValueNumeric:=0;

   If EdCalculado.ValueNumeric>EdTotal.ValueNumeric
   Then Begin
       PTroco.Visible:=True;
       PTroco.BringToFront;
       CBTroco.SetFocus;
   End
   Else Begin
       PTroco.Visible:=False;
   End;
End;

procedure TFFechaConta.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Fecha Conta';  
   FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', '', '', '');
  	If XTipo='ORDEM'
   Then Begin
       If FiltraTabela(DMServ.WOrdem, 'VWORDEM', 'COD_ORDEM', IntToStr(XCod_Pedido), '')
       Then Begin
           FiltraPagamentos;
           FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.WOrdem.FieldByName('COD_CLIENTE').AsString, '');
           EdCliente.Text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString+'-'+DMServ.WOrdem.FieldByName('CLIENTE').AsString;
           EdTotal.ValueNumeric:=XValor;
       End
       Else Begin
           XAlxResult:=False;
       End;
   End;
  	If XTipo='C'
   Then Begin
       If FiltraTabela(DMENTRADA.WPedc, 'vwpedc', 'cod_pedcomp', IntToStr(XCod_Pedido), '')
       Then Begin
           FiltraPagamentos;
           FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'cod_fornec', DMENTRADA.WPedc.FieldByName('cod_fornec').AsString, '');
           EdCliente.Text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString+'-'+DMPESSOA.WFornecedor.FieldByName('nome').AsString;
           EdTotal.ValueNumeric:=XValor;
       End
       Else Begin
           XAlxResult:=False;
       End;
   End;  
end;

procedure TFFechaConta.FormCreate(Sender: TObject);
begin
  inherited;
   XCod_Tmp:=1;
end;

procedure TFFechaConta.BtnAddContaClick(Sender: TObject);
begin
  inherited;
   If (EdPagamento.Text<>'Entrada') AND (EdPagamento.Text<>'Cheque') and (EdPagamento.Text<>'Prazo') and (EdPagamento.Text<>'Cheque Terceiro')
   Then Begin
   	MessageDlg('Forma de Pagamento Inválida!', mtWarning, [mbOK], 0);
       EdPagamento.SetFocus;
       Exit;
   End;

   If (EdVlrPagamento.ValueNumeric<=0)
   Then Begin
   	MessageDlg('Por favor, informe um valor para pagamento!', mtWarning, [mbOK], 0);
       EdVlrPagamento.SetFocus;
       Exit;
   End;

   If (XCOD_CONTABANCO=-1) and (EdPagamento.Text='Cheque Terceiro')
   Then Begin
   	MessageDlg('Por favor, Altere o pagamento, não existe cheque de terceiro para selecionar', mtWarning, [mbOK], 0);
       EdPagamento.SetFocus;
       Exit;
   End;
   If (EdPagamento.Text='Cheque Terceiro') and (XTipo<>'C')
   Then Begin
   	MessageDlg('Por favor, Cheques de Terceiros são aceitos apenas para pagamentos', mtWarning, [mbOK], 0);
       EdPagamento.SetFocus;
       Exit;
   End;

   If (EdPagamento.Text='Entrada')
   Then Begin
   	If XTipo<>'C'
       Then Begin
          //trabalha somente para contas que não sejam de compra
          If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString=''
          Then Begin
             MessageDlg('É necessário que seja configurado no sistema o plano de contas para Venda de Mercadorias a Vista', mtWarning, [mbOK], 0);
             Exit;
          End
          Else Begin
             XCod_ProdVista:=DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
          End;
          If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString=''
          Then Begin
             MessageDlg('É necessário que seja configurado no sistema o plano de contas para Prestação de Serviços a Vista', mtWarning, [mbOK], 0);
             Exit;
          End
          Else Begin
             XCod_ServVista:=DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
          End;
       End
       Else Begin
          //trabalha somente para contas que sejam de compra
          If DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsString=''
          Then Begin
             MessageDlg('É necessário que seja configurado no sistema o plano de contas para Compra de Mercadorias a Vista', mtWarning, [mbOK], 0);
             Exit;
          End
          Else Begin
             XCod_ProdVista:=DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger;
          End;
		End;
   End;
   DMMACS.TMP.Insert;
   DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
   DMMACS.TMP.FieldByName('DESC1').AsString:=EdPagamento.Text;
   DMMACS.TMP.FieldByName('VLR1').AsCurrency:=EdVlrPagamento.ValueNumeric;
   If (EdPagamento.Text='Cheque Terceiro') or (EdPagamento.Text='Cheque') Then
   	DMMACS.TMP.FieldByName('VLR2').AsCurrency:=XCOD_CONTABANCO;
       
   DMMACS.TMP.Post;
   DMMACS.Transaction.CommitRetaining;
   If EdPagamento.Text='Prazo'
   Then Begin
       PPrazo.Visible:=True;
       PPrazo.BringToFront;
   End;
   XCod_Tmp:=XCod_Tmp+1;
   EdPagamento.SetFocus;
   FiltraPagamentos;
end;

procedure TFFechaConta.BtnRemContaClick(Sender: TObject);
begin
  inherited;
   DMMACS.TMP.Delete;
   FiltraPagamentos;
   EdPagamento.SetFocus;
end;

procedure TFFechaConta.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   XAlxResult:=False;
   Close;
end;

procedure TFFechaConta.BtnOkClick(Sender: TObject);
Var
	XHisFechamento, XTipoGerador, XEntradaSaida, XDocumento: String;
   XPercServ, XVlrInserirServ: Real;
   XCod_Pessoa: Integer;
begin
  inherited;
	If Mensagem('C O N F I R M A Ç Ã O !', 'Confirma fechamento da conta conforme lançamentos?', '', 2, 3, False, 'c')= 2
   Then Begin
   	Try
			XAlxResult:=True;
           //Verfica se deve haver lançamento de serviço descobre o percentual
           If XValorServ>0 Then
               XPercServ:=(XValorServ*100)/XValor;

           //Alimenta Variaveis de fechamento
           If XTipo='C'
           Then Begin
               //Seleciona pedido de compra
               DMENTRADA.WPedc.Close;
               DMENTRADA.WPedc.SQL.Clear;
               DMENTRADA.WPedc.SQL.Add(' select * from vwpedc where vwpedc.cod_pedcomp=:codigo ');
               DMENTRADA.WPedc.ParamByName('codigo').AsInteger:=XCod_Pedido;
               DMENTRADA.WPedc.Open;
               If DMENTRADA.WPedc.IsEmpty
               Then Begin
                   MessageDlg('O PEDIDO DE COMPRA NÃO FOI ENCONTRADO', mtWarning, [mbOK], 0);
                   Exit;
                   XAlxResult:=False;
               End//265
               Else Begin
                   XHisFechamento:='Fechamento de Compra Nº '+DMENTRADA.WPedc.FieldByName('NUMPED').AsString+ ' Fornecedor: '+DMENTRADA.WPedc.FieldByName('NOME').AsString;
                   XTipoGerador:='PEDCOMPRA';
                   XEntradaSaida:='S';
                   XDocumento:=DMENTRADA.WPedc.FieldByName('NUMPED').AsString;
                   XCod_Pessoa:=DMENTRADA.WPedc.FieldByName('COD_FORNEC').AsInteger;
               End;//265
           End;//257
           If XTipo='ORDEM'
           Then Begin
               //Seleciona pedido de compra
               DMServ.WOrdem.Close;
               DMServ.WOrdem.SQL.Clear;
               DMServ.WOrdem.SQL.Add(' select * from vwordem where vwordem.cod_ordem=:codigo ');
               DMServ.WOrdem.ParamByName('codigo').AsInteger:=XCod_Pedido;
               DMServ.WOrdem.Open;
               If DMServ.WOrdem.IsEmpty
               Then Begin
                   MessageDlg('A ORDEM DE SERVIÇO NÃO FOI ENCONTRADO', mtWarning, [mbOK], 0);
                   Exit;
                   XAlxResult:=False;
               End//287
               Else Begin
                   XHisFechamento:='Fechamento de Ordem Nº '+DMServ.WOrdem.FieldByName('NUMERO').AsString+ ' Cliente: '+DMServ.WOrdem.FieldByName('CLIENTE').AsString;
                   XTipoGerador:='ORDEM';
                   XEntradaSaida:='E';
                   XDocumento:=DMServ.WOrdem.FieldByName('NUMERO').AsString;
                   XCod_Pessoa:=DMServ.WOrdem.FieldByName('COD_CLIENTE').AsInteger;
               End;//287
           End;//279

           DMMACS.TMP.First;
           While not DMMACS.TMP.Eof do
           Begin
               //verifica se existe lançamento para serviço e descobre o valor de serviço
               If XPercServ>0 Then
                   XVlrInserirServ:=(DMMACS.TMP.FieldByName('VLR1').AsCurrency*XPercServ)/100
               Else
                   XVlrInserirServ:=0;

               //EFETUA LANÇAMENTOS PARA CARTEIRA
               If DMMACS.TMP.FieldByName('DESC1').AsString='Entrada'
               Then Begin
               	//INSERE PRODUTOS
                   If LanCaixa(-1, DateToStr(Date()), XCod_ProdVista, '(P) - '+XHisFechamento, DMMACS.TMP.FieldByName('VLR1').AsCurrency-XVlrInserirServ, XTipoGerador+'ENT', XCod_Pedido, 'Carteira', XEntradaSaida, XDocumento,  XData, '1')=False
                   Then Begin
                       XAlxResult:=False;
                       DMMACS.TMP.Edit;
                       DMMACS.TMP.FieldByName('DESC2').AsString:='FALSE';
                       DMMACS.TMP.Post;
                   End;//315
                   If XVlrInserirServ>0
                   Then Begin
                   	//LANÇA PARA SERVIÇOS
                       If LanCaixa(-1, DateToStr(Date()), XCod_ServVista, '(S) - '+XHisFechamento, XVlrInserirServ, XTipoGerador+'ENT', XCod_Pedido, 'Carteira', XEntradaSaida, XDocumento,  XData, '1')=False
                       Then Begin
                           XAlxResult:=False;
                           DMMACS.TMP.Edit;
                           DMMACS.TMP.FieldByName('DESC2').AsString:='FALSE';
                           DMMACS.TMP.Post;
                       End;//325
                   End;//322
               End;//312
               //EFETUA LANÇAMENTOS PARA CARTEIRA
               If DMMACS.TMP.FieldByName('DESC1').AsString='Prazo'
               Then Begin
                   If XTipo='C'
                   Then Begin
                       If LancConta('PEDCOMPRA', XCod_Pedido, XCod_Pessoa, 'Carteira', DMMACS.TMP.FieldByName('VLR1').AsCurrency, 0, XCod_ContaProd, -1, 0, XHisFechamento, DMFINANC.TFormPag.FieldByNAme('COD_FORMPAG').AsInteger, XDocumento, 'P', DMENTRADA.WPedc.FieldByName('DTPEDCOMP').AsDateTime, 0, DateToStr(XData), '')=False
                       Then Begin
                       	XAlxResult:=False;
                           DMMACS.TMP.Edit;
                           DMMACS.TMP.FieldByName('DESC2').AsString:='FALSE';
                           DMMACS.TMP.Post;
                       End;//339
                   End;//337
                   If XTipo='ORDEM'
                   Then Begin
                       If LancConta('ORDEM', XCod_Pedido, XCod_Pessoa, 'Carteira', DMMACS.TMP.FieldByName('VLR1').AsCurrency-XVlrInserirServ, XVlrInserirServ, XCod_ContaProd, XCod_ContaServ, -1, XHisFechamento, DMFINANC.TFormPag.FieldByNAme('COD_FORMPAG').AsInteger, XDocumento, 'O', DMServ.WORDEM.FieldByName('DTABERT').AsDateTime, 0, DateToStr(XData), '')=False
                       Then Begin
                       	XAlxResult:=False;
                           DMMACS.TMP.Edit;
                           DMMACS.TMP.FieldByName('DESC2').AsString:='FALSE';
                           DMMACS.TMP.Post;
                       End;//349
                   End;//347
               End;//335
               //EFETUA LANÇAMENTOS PARA CHEQUES
               If DMMACS.TMP.FieldByName('DESC1').AsString='Cheque'
               Then Begin
                   If XTipo='C'
                   Then Begin
                           //Função Utilizada para fazer lançamentos automáticos em controle de cheques Emitidos
    //    					Function LancCOD_PLNCTA: I   HISTORICO: St   DtVenc: TDateTime;                                   Valor: Real;                               COD_CONTACOR: Integer;                     TIPOGERA COD_GERADOR: String; Destinatario: string): Boolean;
                           If LancChSai(XCod_ContaProd, XHisFechamento, DMENTRADA.WPedc.FieldByName('DTPEDCOMP').AsDateTime, DMMACS.TMP.FieldByName('VLR1').AsCurrency, DMMACS.TMP.FieldByName('VLR2').AsInteger, 'ORDEM', IntToStr(XCod_Pedido), '')=False
                           Then Begin
                               XAlxResult:=False;
                               DMMACS.TMP.Edit;
                               DMMACS.TMP.FieldByName('DESC2').AsString:='FALSE';
                               DMMACS.TMP.Post;
                           End;
                   End;//361
                   If XTipo='ORDEM'
                   Then Begin
                       //Função Utilizada para fazer lançamentos automáticos em controle de cheques Recebidos
                       If LancChEnt(XCod_ContaProd, XCod_ContaServ, XHisFechamento, Date(), '', DMMACS.TMP.FieldByName('VLR1').AsCurrency-XVlrInserirServ, XVlrInserirServ, '', '', DMMACS.TMP.FieldByName('VLR2').AsInteger, '', '', 'ORDEM', IntToStr(XCod_Pedido))=False
                       Then Begin
                           XAlxResult:=False;
                           DMMACS.TMP.Edit;
                           DMMACS.TMP.FieldByName('DESC2').AsString:='FALSE';
                           DMMACS.TMP.Post;
                       End;
                   End;
                   //EFETUA LANÇAMENTOS PARA CHEQUES DE TERCEIROS
                   If DMMACS.TMP.FieldByName('DESC1').AsString='Cheque Terceiro'
                   Then Begin
                       //filtra chequerec de acordo com a tabela tmp
                       DMBANCO.TAlx.Close;
                       DMBANCO.TAlx.SQL.Clear;
                       DMBANCO.TAlx.SQL.Add(' select TMP.COD_TMP, vwchequerec.banco, vwchequerec.cod_movbanco, vwchequerec.numcheque, vwchequerec.valor from tmp ');
                       DMBANCO.TAlx.SQL.Add(' Left join vwchequerec on tmp.VLR2 = vwchequerec.cod_chequerec where vwchequerec.cod_chequerec=:codigo ');
                       DMBANCO.TAlx.ParamByName('codigo').AsInteger:=DMMACS.TMP.FieldByName('VLR2').AsInteger;
                       DMBANCO.TAlx.Open;
                       If not DMBANCO.TAlx.IsEmpty
                       Then Begin
                           If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.TAlx.FieldByName('COD_MOVBANCO').AsString, '')=True
                           Then Begin
                               FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
                               DMBANCO.TMovBanco.EDIT;
                               DMBANCO.TMovBanco.FieldByName('FECH').AsString:='S';
                               DMBANCO.TMovBanco.FieldByName('DTMOV').AsString:=DateToStr(Date());
                               DMBANCO.TMovBanco.Post;
                               //LANÇAR VALOR DE ESTORNO PARA RETIRADA DA FOLHA DO CAIXA
                               LanCaixa (-1, DateToStr(Date()),  XCod_ContaProd, '(P)-'+XHisFechamento+' Chq. Terc.: '+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'-'+ DateToStr(Date())+' De: '+DMBANCO.TChequeRec.FIELDBYNAME('EMITENTE').AsString, DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency, 'DCHR', DMBANCO.WChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'CHEQUE', 'S', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString, DMBANCO.TMovBanco.FieldByName('dtref').AsDateTime, '1');
                           End;
                       End;
                   End;
    			End;//359
              	DMMACS.TMP.Next;
           End;//303
           //VERIFICA SE DE SE LANÇAR O TROCO
           If EdCalculado.ValueNumeric<EdTotal.ValueNumeric
           Then Begin
           	//INVERTE O TIPO ENTRADA/SAIDA para lançar troco
           	If XEntradaSaida='E' Then
                   XEntradaSaida:='S'
               Else
					XEntradaSaida:='E';
               XVlrInserirServ:=0;
				If CBTroco.Text='CARTEIRA'
               Then Begin
               	//LANÇA TROCO EM CARTEIRA
                   If XValorServ>0
                   Then Begin
                       //lança troco referente a serviço
                       XVlrInserirServ:=((EdCalculado.ValueNumeric-EdTotal.ValueNumeric)*XPercServ)/100;
                   	//LANÇA PARA TROCO PARA SERVIÇO
                       If LanCaixa(-1, DateToStr(Date()), XCod_ServVista, '(S-Troco) - '+XHisFechamento, XVlrInserirServ, XTipoGerador+'TRO', XCod_Pedido, 'Carteira', XEntradaSaida, XDocumento,  XData, '1')=False
                       Then Begin
                           XAlxResult:=False;
                           MessageDlg('Problema ao gerar troco referente a serviço', mtWarning, [mbOK], 0);
                       End;
                   End;
                   If LanCaixa(-1, DateToStr(Date()), XCod_ProdVista, '(P-Troco) - '+XHisFechamento, (EdCalculado.ValueNumeric-EdTotal.ValueNumeric)-XVlrInserirServ, XTipoGerador+'TRO', XCod_Pedido, 'Carteira', XEntradaSaida, XDocumento,  XData, '1')=False
                   Then Begin
                       XAlxResult:=False;
                       MessageDlg('Problema ao gerar troco referente a produto', mtWarning, [mbOK], 0);
                   End;
               End;
               //LANÇA TROCO EM CHEQUES
               If CBTroco.Text='CHEQUE'
               Then Begin
                   If XValorServ>0 Then
                       XVlrInserirServ:=((EdCalculado.ValueNumeric-EdTotal.ValueNumeric)*XPercServ)/100;

                   If XTipo='C'
                   Then Begin
                       //Função Utilizada para fazer lançamentos automáticos em controle de cheques Recebidos
                       If LancChEnt(XCod_ContaProd, XCod_ContaServ, '(Troco) - '+XHisFechamento, Date(), '', (EdCalculado.ValueNumeric-EdTotal.ValueNumeric)-XVlrInserirServ, XVlrInserirServ, '', '', DMMACS.TMP.FieldByName('VLR2').AsInteger, '', '', 'COMPRA', IntToStr(XCod_Pedido))=False
                       Then Begin
                       	XAlxResult:=False;
                           DMMACS.TMP.Edit;
                           DMMACS.TMP.FieldByName('DESC2').AsString:='FALSE';
                           DMMACS.TMP.Post;
                       End;
                   End;
                   If XTipo='ORDEM'
                   Then Begin
                       //Função Utilizada para fazer lançamentos automáticos em controle de cheques Emitidos
                       If LancChSai(XCod_ContaProd, XHisFechamento, DMENTRADA.WPedc.FieldByName('DTPEDCOMP').AsDateTime, (EdCalculado.ValueNumeric-EdTotal.ValueNumeric), DMMACS.TMP.FieldByName('VLR2').AsInteger, 'ORDEMTRO', IntToStr(XCod_Pedido), '')=False
                       Then Begin
                       	XAlxResult:=False;
                           DMMACS.TMP.Edit;
                           DMMACS.TMP.FieldByName('DESC2').AsString:='FALSE';
                           DMMACS.TMP.Post;
                       End;
                   End;
               End;
           End;
       Except//249
           XAlxResult:=False;
       End;//249
       Close;
   End;//248
end;

procedure TFFechaConta.EdPagamentoExit(Sender: TObject);
begin
  inherited;
   //controla visualização de componentes referentes a escolha e visualização da cta corrente
	If EdPagamento.Text='Cheque'
   Then Begin
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
       PBanco.Enabled:=True;
       PBanco.Visible:=TRUE;
       PBanco.BringToFront;
       DBGCTA.SetFocus;
   End
   Else Begin
       PBanco.Enabled:=False;
   End;
	If EdPagamento.Text='Cheque Terceiro'
   Then Begin
       //Seleciona os cheques ainda nao movimentados
       DMBANCO.WChequeRec.Close;
       DMBANCO.WChequeRec.SQL.Clear;
       DMBANCO.WChequeRec.SQL.Add(' select * from vwchequerec ');
       DMBANCO.WChequeRec.SQL.Add(' Where (vwchequerec.fech<>'+#39+'S'+#39+') Or (vwchequerec.fech Is Null)');
       DMBANCO.WChequeRec.Open;
       PChqTerceiro.Visible:=True;
       PChqTerceiro.BringToFront;
       DbGridCheques.SetFocus;
  	End
   Else Begin
       EdVlrPagamento.ReadOnly:=False;
   End;

end;

procedure TFFechaConta.DBGCTAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If Not DMBANCO.WCtaCor.IsEmpty Then//'se banco não estiver vazio
       	XCOD_CONTABANCO:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
       Else
           XCOD_CONTABANCO:=-1;

       PBanco.Visible:=False;
       PBanco.Enabled:=False;
       EdVlrPagamento.SetFocus;
   End;
end;

procedure TFFechaConta.DbGridChequesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' select * from tmp where (tmp.vlr2=:codigo) and (tmp.desc1=:pagamento) ');
       DMMACS.TALX.ParamByName('codigo').AsInteger:=DMBANCO.WChequeRec.FieldByName('COD_CHEQUEREC').AsInteger;
       DMMACS.TALX.ParamByName('pagamento').AsString:='Cheque Terceiro';
       DMMACS.TALX.Open;
       If Not DMMACS.TALX.IsEmpty
       Then Begin
			MessageDlg('Este cheque já foi selecionada para pagamento', mtWarning, [mbOK], 0);
       End
       Else Begin
           If Not DMBANCO.WChequeRec.IsEmpty Then//'se banco não estiver vazio
               XCOD_CONTABANCO:=DMBANCO.WChequeRec.FieldByName('COD_CHEQUEREC').AsInteger
           Else
               XCOD_CONTABANCO:=-1;

           PChqTerceiro.Visible:=False;
           EdVlrPagamento.ValueNumeric:=DMBANCO.WChequeRec.FieldByName('VALOR').AsCurrency;
           EdVlrPagamento.ReadOnly:=True;
           EdVlrPagamento.SetFocus;
       End;
   End;
end;

procedure TFFechaConta.BitBtn1Click(Sender: TObject);
begin
  inherited;
   XCOD_CONTABANCO:=-1;
   PChqTerceiro.Visible:=False;
   PChqTerceiro.SendToBack;
   EdPagamento.SetFocus;
end;

end.
