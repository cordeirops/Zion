unit UPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ColorMaskEdit, EditFloat, ExtCtrls,
  Grids, DBGrids, ColorEditFloat, DBCtrls, UFrmBusca;

type
  TFPagamento = class(TForm)
    pBotaoDinheiro: TPanel;
    SpeedButton1: TSpeedButton;
    lDinheiro: TLabel;
    lTotalDinheiro: TLabel;
    pBotaoDuplicata: TPanel;
    SpeedButton2: TSpeedButton;
    lDuplicata: TLabel;
    lTotalDuplicata: TLabel;
    pBotaoCheque: TPanel;
    SpeedButton3: TSpeedButton;
    lCheque: TLabel;
    lTotalCheque: TLabel;
    pBotaoBanco: TPanel;
    SpeedButton4: TSpeedButton;
    lBanco: TLabel;
    lTotalBanco: TLabel;
    pBotaoDebito: TPanel;
    SpeedButton5: TSpeedButton;
    lDebito: TLabel;
    lTotalDebito: TLabel;
    pBotaoCredito: TPanel;
    SpeedButton6: TSpeedButton;
    lCredito: TLabel;
    lTotalCredito: TLabel;
    pControlDinheiro: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    edDinheiroValor: TFloatEdit;
    edDinheiroHistorico: TColorMaskEdit;
    pControlDuplicata: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edDuplicataNumero: TFloatEdit;
    edDuplicataHistorico: TColorMaskEdit;
    edDuplicataValor: TFloatEdit;
    edDuplicataVencimento: TFloatEdit;
    btnGeraDuplicatas: TBitBtn;
    pControlCheque: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    edChequeNumero: TFloatEdit;
    edChequeHistorico: TColorMaskEdit;
    edChequeValor: TFloatEdit;
    edChequeVencimento: TFloatEdit;
    btnGeraCheques: TBitBtn;
    pControlBanco: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    edBancoValor: TFloatEdit;
    edBancoHistorico: TColorMaskEdit;
    pControlCartaoDebito: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    edDebitoValor: TFloatEdit;
    edDebitoHistorico: TColorMaskEdit;
    pControlCartaoCredito: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    edCreditoNumero: TFloatEdit;
    edCreditoHistorico: TColorMaskEdit;
    edCreditoValor: TFloatEdit;
    edCreditoVencimento: TFloatEdit;
    BitBtn3: TBitBtn;
    btnRecalcular: TBitBtn;
    Shape1: TShape;
    lTitulo: TLabel;
    Shape2: TShape;
    lTotalPagar: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    lTotalPago: TLabel;
    lFalta: TLabel;
    btnTroco: TSpeedButton;
    lTroco: TLabel;
    POperadoraCartao: TPanel;
    dbgCartao: TDBGrid;
    edDebitoCartao: TColorMaskEdit;
    edDebitoAutorizacao: TColorMaskEdit;
    Label1: TLabel;
    btnFinalizar: TBitBtn;
    dbgDuplicatas: TDBGrid;
    PEditaParcela: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    EdDocumentoEditaParcela: TColorMaskEdit;
    EdBoletoEditaParcela: TColorMaskEdit;
    EdVencimentoEditaParcela: TColorMaskEdit;
    EdReferenciaEditaParcela: TColorMaskEdit;
    EdValorEditaParcela: TColorEditFloat;
    EdHistoricoEditaParcela: TColorMaskEdit;
    BitBtn8: TBitBtn;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    BitBtn6: TBitBtn;
    DBGCheque: TDBGrid;
    PEditaCheque: TPanel;
    Shape19: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BtnGravarChequeEditado: TBitBtn;
    BtnCancelarChequeEditado: TBitBtn;
    EdChequeEditadoDocumento: TColorMaskEdit;
    EdChequeEditadoCheque: TColorMaskEdit;
    EdChequeEditadoVencimento: TColorMaskEdit;
    EdChequeEditadoReferencia: TColorMaskEdit;
    EdChequeEditadoValor: TColorEditFloat;
    EdChequeEditadoHistorico: TColorMaskEdit;
    EdCreditoOperadora: TColorMaskEdit;
    Label14: TLabel;
    EdCreditoAutorizacao: TColorMaskEdit;
    DBGCreditos: TDBGrid;
    BitBtn1: TBitBtn;
    PEditaCredito: TPanel;
    Shape20: TShape;
    Label15: TLabel;
    Label16: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    EdDocumentoEditaCredito: TColorMaskEdit;
    EdAutorizacaoEditaCredito: TColorMaskEdit;
    EdVencimentoEditaCredito: TColorMaskEdit;
    EdReferenciaEditaCredito: TColorMaskEdit;
    EdValorEditaCredito: TColorEditFloat;
    EdHistoricoEditaCredito: TColorMaskEdit;
    PTroco: TPanel;
    Shape21: TShape;
    Label44: TLabel;
    Label47: TLabel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    EdTrocoPesquisaCheque: TColorMaskEdit;
    EdTrocoDinheiro: TColorEditFloat;
    Label49: TLabel;
    Shape22: TShape;
    Shape23: TShape;
    DBGChequeTroco: TDBGrid;
    LTrocoTotalCheque: TLabel;
    BitBtn11: TBitBtn;
    LTrocoTotalGeral: TLabel;
    Label43: TLabel;
    LTrocoStatusCaixa: TLabel;
    Label45: TLabel;
    LTrocoStatusBanco: TLabel;
    edCaixaSelecionado: TEdit;
    btnProcuraCaixa: TBitBtn;
    edBancoSelecionado: TEdit;
    btnProcuraBanco: TBitBtn;
    Label46: TLabel;
    Label48: TLabel;
    FrmBuscaBanco: TFrmBusca;
    Label50: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnRecalcularClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure POperadoraCartaoExit(Sender: TObject);
    procedure edDebitoCartaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgCartaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGeraDuplicatasClick(Sender: TObject);
    procedure dbgDuplicatasDblClick(Sender: TObject);
    procedure PEditaParcelaExit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnGeraChequesClick(Sender: TObject);
    procedure BtnGravarChequeEditadoClick(Sender: TObject);
    procedure DBGChequeDblClick(Sender: TObject);
    procedure EdCreditoOperadoraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGCreditosDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnTrocoClick(Sender: TObject);
    procedure DBGChequeTrocoDblClick(Sender: TObject);
    procedure DBGChequeTrocoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BitBtn11Click(Sender: TObject);
    procedure edTrocoCaixaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure edTrocoCaixaExit(Sender: TObject);
    procedure edTrocoCaixaEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure edTrocoCaixaDropDown(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure EdTrocoDinheiroExit(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure btnProcuraCaixaClick(Sender: TObject);
    procedure btnProcuraBancoClick(Sender: TObject);
    procedure edDinheiroValorExit(Sender: TObject);
    procedure FrmBuscaBancoMultBTNOPENClick(Sender: TObject);
  private
    { Private declarations }
	//Função para ativar botão e paineis
	Function PressionaBotao(xBotao: String): Boolean;
	//Função para reiniciar todos os valores
	Function ResetaValores: Boolean;
	//Função para efetuar Somatorios
	Function SomaGeral: Boolean;
	//Função para iniciar os pagamentos
	Function IniciaPagamento: Boolean;
	//Função para filtrar e somar os resultados de dulicatas
	Function FiltraSomaDuplicatas: Boolean;
	//Função para filtrar e somar os resultados de credito
	Function FiltraSomaCredito: Boolean;
	//Função para filtrar e somar os resultados de Cheques
	Function FiltraSomaCheques: Boolean;
	//Função para filtrar cheques para o troco
	Function FiltraChequesParaTroco: Boolean;
	//Função para filtrar valores totais de gerais troco
	Function FiltraTrocoTotal: Boolean;
	//Geramos o cabeçalho da conta
	Function GeraCabecalhoDuplicata: Boolean;
	//Geramos o Itens Parcela da conta
	Function GeraItensDuplicata: Boolean;
	//Geramos o Itens Parcela da conta na tabela tmp
	Function TmpGeraItensDuplicata: Boolean;
	//Geramos o Itens CRÉDITO da conta na tabela tmp
	Function TmpGeraItensCredito: Boolean;
	//Geramos o Itens Parcela de cheque da conta na tabela tmp
	Function TmpGeraItensCheque: Boolean;
	//Função utilizada para limpar a tabela temporaria
	Function LimpaTabelaTmp: Boolean;
	//Função utilizada para limpar as duplicatas temporárias
	Function LimpaDuplicatasTmp: Boolean;
	//Função utilizada para limpar os créditos temporários
	Function LimpaCreditosTmp: Boolean;
	//Função utilizada para limpar os cheques temporárias
	Function LimpaChequesTmp: Boolean;
	//Alteramos o Itens Parcela da conta na tabela tmp
	Function TmpEditaItensDuplicata: Boolean;
	//Alteramos o Itens de credito da conta na tabela tmp
	Function TmpEditaItensCredito: Boolean;
	//Alteramos o Itens Cheque da conta na tabela tmp
	Function TmpEditaItensCheque: Boolean;
	//Alteramos o Item de cheque recebido para marcado
	Function TmpEditaChequeTrocoMarcado: Boolean;
	//Verifica se o caixa escolhido esta aberto ou fechado
	Function VerificaCaixaAberto: Boolean;
	//Desmarcar todos os cheques
	Function DesmarcarChequesTrocoMarcado: Boolean;
	//Limpa campos de edição de parcela
	Function LimpaCamposEditaParcela: Boolean;
	//Função utilizada para selecionar os cheques recebidos disponíveis para troca
	Function SelecionaCheques: Boolean;
	//Limpa campos de edição de credito
	Function LimpaCamposEditaCredito: Boolean;
	//Limpa campos de edição de cheque
	Function LimpaCamposEditaCheque: Boolean;
	//Função para lanar o financeiro dinheiro em caixa pelo contas a receber
	Function FinalizaLancamentosCaixa: Boolean;
	//Função para lanar o financeiro dinheiro em caixa pelo contas a receber
	Function FinalizaLancamentosDuplicata: Boolean;
	//Função para lançar contas a receber de débito
	Function FinalizaLancamentosCredito: Boolean;
	//Função para lançar contas a receber em forma de cartão de débito
	Function FinalizaLancamentosDebito: Boolean;
	//Função para lançar o financeiro de cheques
	Function FinalizaLancamentosCheque: Boolean;
	//Função para Lançar o troco
	Function FinalizaLancamentosTroco: Boolean;
	//Função para baixar os cheques de troco
	Function FinalizaLancamentosTrocoCheques: Boolean;
	//Função para lançar valores de transferencia
	Function FinalizaLancamentosTransferenciaBanco: Boolean;
	//Função para lanar o financeiro e finalizar o pagamento
	Function FinalizaLancamentos: Boolean;
	//Função para fechar o pedido de venda
	Function FechaPedidoVenda: Boolean;
	//Função para fechar o Ordem se Serviços
	Function FechaOrdemServico: Boolean;
  public
    { Public declarations }
  end;

var
  FPagamento: TFPagamento;
	//Variáveis de iniciação
	xCodigoPedido: Integer;
	XTipoGerador: String;
	xNumeroDocumento: String;
	xHistoricoPadrao: String;
	xTrocoValidado: Boolean;
   xControleFechaTela: Boolean;
	//Variáveis de chave primaria
	xCodigoCaixa, xCodigoCtaCorrente, xCodigoMovimentoBancario, xCodigoCheque, xCodigoAbCaixa, xCodigoAbBanco, xCodigoChequeTroco, xCodigoBanco, xCodigoOperadoraCredito, xCodigoOperadoraDebito, xCodigoCtaReceber, xCodigoParcela, xCodigoCliente, xCodigoFormaPagamento, xCodigoVendedor, xCodigoParcelaEditada, xCodTmp: Integer;

	//Variaveis de controle
	xValorTotalPagar, xValorTotalPago, xValorFalta, xValorTroco,xValorProduto, xValorServico, xPercentualServico: Real;

	//Valor Individuais
	xValorTrocoGeral, xValorChequeTroco, xValorDinheiro, xValorDuplicata, xValorCheque, xValorBanco, xValorDebito, xValorCredito: Real;
	xAuxiliarValorTrocoGeral, xAuxiliarValorTrocoPago: String;

implementation

uses UMDO, Alxor32, DB, UDMFinanc, UDMMacs, UMenu, UDMCaixa, UDMEntrada,
  UDMPessoa, UDmBanco, UDMSaida, UDMConta, AlxMessage, UCtaCor, UCadCaixa,
  JLLabel, UDmServ, Ubanco;

{$R *.dfm}

//Função para fechar o pedido de venda
Function TFPagamento.FechaPedidoVenda: Boolean;
Begin
	Try
		Result:=True;
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('  update pedvenda set pedvenda.situacao = :Situacao, pedvenda.cobranca = :Cobranca, pedvenda.dtfech = :DataFechamento, pedvenda.faturado = :Faturado Where pedvenda.cod_pedvenda = :Codigo ');
       MDO.Query.ParamByName('Situacao').AsString :='FECHADO';
       MDO.Query.ParamByName('cobranca').AsString :='Pagamentos';
       MDO.Query.ParamByName('DataFechamento').AsDate := Date();
       MDO.Query.ParamByName('faturado').AsString := '1';
       MDO.Query.ParamByName('Codigo').AsInteger := xCodigoPedido;
       MDO.Query.ExecSQL;
	Except
		Result := False;
	End;
End;

//Função para fechar o Ordem se Serviços
Function TFPagamento.FechaOrdemServico: Boolean;
Begin
	Try
		Result:=True;
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add('   update ordem set ordem.status = :status, ordem.cod_formpag = :cod_formpag, ordem.tipopag = :tipopag, ordem.dtfech = :dtfech  Where ordem.cod_ordem = :Codigo ');
       MDO.Query.ParamByName('status').AsString :='FECHADO';
       MDO.Query.ParamByName('cod_formpag').AsInteger := xCodigoFormaPagamento;
       MDO.Query.ParamByName('tipopag').AsString := 'Pagamentos';
       MDO.Query.ParamByName('dtfech').AsDate :=  Date();
       MDO.Query.ParamByName('Codigo').AsInteger := xCodigoPedido;
       MDO.Query.ExecSQL;
	Except
		Result := False;
	End;
End;

//Função para filtrar cheques para o troco
Function TFPagamento.FiltraChequesParaTroco: Boolean;
Begin
	Try
       Result:=True;
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('  select  vwchequerec.cod_chequerec, movbanco.cod_movbanco, movbanco.mark, vwchequerec.numcheque, vwchequerec.valor, vwchequerec.emitente from vwchequerec ');
       DMMACS.TALX.SQL.Add('   left join movbanco on vwchequerec.cod_movbanco = movbanco.cod_movbanco ');
       DMMACS.TALX.SQL.Add('   Where (vwchequerec.fech=''N'') ');
       DMMACS.TALX.Open;
	Except
       Result:=False;
	End;
End;

//Função para baixar os cheques de troco
Function TFPagamento.FinalizaLancamentosTrocoCheques: Boolean;
Begin
	Try
		Result := True;
       FiltraChequesParaTroco;
       DMMACS.TALX.First;
       While Not DMMACS.TAlx.Eof do
       Begin
           If DMMACS.TALX.FieldByName('MARK').AsString='T'
			Then Begin
                   If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMMACS.TAlx.FieldByName('COD_MOVBANCO').AsString, '')=True
                   Then Begin
                       //FiltraTabela(DMBANCO.WChequeRec, 'MOVBANCO', 'COD_MOVBANCO', DMMACS.TAlx.FieldByName('COD_MOVBANCO').AsString, '')=True
                       FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
                       //Atualizamovbanco
                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' UPDATE MOVBANCO SET MOVBANCO.FECH = :FECH, MOVBANCO.HISTORICO = :HIST,MOVBANCO.DTMOV = :DTMOV WHERE MOVBANCO.COD_MOVBANCO = :COD_MOVBANCO ');
                       MDO.Query.ParamByName('FECH').AsString := 'S';
                       MDO.Query.ParamByName('DTMOV').AsString := DateToStr(Date());
                       MDO.Query.ParamByName('COD_MOVBANCO').AsInteger := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger;
                       MDO.Query.ParamByName('HIST').AsString := DMBANCO.TMovBanco.FieldByName('HISTORICO').AsString+' - Troco do Pgto - '+xNumeroDocumento;
                       MDO.Query.ExecSQL;
                       //Atualiza cheque rec com o destino
                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' update chequerec set chequerec.destino=:DESTINO Where chequerec.cod_movbanco=:COD_MOVBANCO ');
                       MDO.Query.ParamByName('DESTINO').AsString := ' - Troco do Pgto - '+xNumeroDocumento;
                       MDO.Query.ParamByName('COD_MOVBANCO').AsInteger := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger;
                       MDO.Query.ExecSQL;
                       //Atualiza parcelacr passando o número do cheque utilizado para o pagamento da conta
                       try
                           MDO.Query.Close;
                           MDO.Query.SQL.Clear;
                           MDO.Query.SQL.Add(' UPDATE PARCELACR SET PARCELACR.FECH =:FECH, PARCELACR.DTDEBITO =:DTDEBITO, PARCELACR.VALORPG =:VALORPG, PARCELACR.COBRANCA = :COBRANCA ');
                           MDO.Query.SQL.Add(' WHERE PARCELACR.COD_PARCELACR = :CODIGO');
                           MDO.Query.ParamByName('FECH').AsString := 'S';
                           MDO.Query.ParamByName('DTDEBITO').AsString := DateToStr(Date());
                           MDO.Query.ParamByName('VALORPG').AsCurrency := DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency;
                           MDO.Query.ParamByName('CODIGO').AsInteger := DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsInteger;
                           MDO.Query.ParamByName('COBRANCA').AsString := 'Cheque';
                           MDO.Query.ExecSQL;
                       except
                           FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString, '');
                           Mensagem(' A T E N Ç Ã O ', 'Não foi possível baixar a parcela '+DMCONTA.TParcCR.FieldByName('NUMPARC').AsString+' atrelada ao cheque '+DMBANCO.TMovBanco.FieldByName('NUMCHEQUE').AsString+' usado no pagamento. Favor fazer a baixa manual.', '', 1, 1, False, 'A');
                       end;
                       //LANÇAR VALOR DE ESTORNO PARA RETIRADA DA FOLHA DO CAIXA
                       LanCaixa (-1, DateToStr(Date()),  DMBANCO.TMovBanco.FieldByName('cod_plncta').AsInteger, 'Troco '+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString , DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency, 'DCHR', DMMACS.TAlx.FieldByNAme('cod_chequerec').AsInteger, 'CHEQUE', 'S', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString, DMBANCO.TMovBanco.FieldByName('dtref').AsDateTime, '1');
                   End;
           End;
			DMMACS.TAlx.Next;
       End;
	Except
		Result := False;
	End;
End;

//Função para Lançar o troco
Function TFPagamento.FinalizaLancamentosTroco: Boolean;
Begin
	Try
		Result := True;
		//Lançamento de troco em dinheiro
		If EdTrocoDinheiro.ValueNumeric>0
		Then Begin
			MDO.Query.Close;
       	MDO.Query.SQL.Clear;
       	MDO.Query.SQL.Add( ' insert into lancaixa (DTLANC, DTREFER, COD_PLNCTAFIL, ESTRU, HISTORICO, VALOR, SALDOANT, TIPOGERADOR, COD_GERADOR, ');
       	MDO.Query.SQL.Add( '                       TIPO, TIPCAI, COD_ABCAIXA, COD_USUARIO, DOC) ');
       	MDO.Query.SQL.Add( '        values (:DTLANC, :DTREFER, :COD_PLNCTAFIL, :ESTRU, :HISTORICO, :VALOR, :SALDOANT, :TIPOGERADOR, :COD_GERADOR, ');
       	MDO.Query.SQL.Add( '                       :TIPO, :TIPCAI, :COD_ABCAIXA, :COD_USUARIO, :DOC) ' );
       	MDO.Query.ParamByName('DTLANC').AsString :=  DateToStr(Date());
       	MDO.Query.ParamByName('DTREFER').AsDateTime := Date();
       	MDO.Query.ParamByName('COD_PLNCTAFIL').Value := DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
       	MDO.Query.ParamByName('ESTRU').AsString := '1';
       	MDO.Query.ParamByName('HISTORICO').AsString:= Copy('Troco: ' + xHistoricoPadrao, 0, 200);
       	MDO.Query.ParamByName('VALOR').AsCurrency := EdTrocoDinheiro.ValueNumeric;
       	MDO.Query.ParamByName('SALDOANT').AsCurrency:=0;
       	MDO.Query.ParamByName('TIPOGERADOR').AsString:=XTipoGerador;
       	MDO.Query.ParamByName('COD_GERADOR').Value:=xCodigoPedido;
       	MDO.Query.ParamByName('TIPO').AsString:='Carteira';
       	MDO.Query.ParamByName('TIPCAI').AsString:='S';
       	MDO.Query.ParamByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
       	MDO.Query.ParamByName('DOC').AsString:= Copy(xNumeroDocumento, 0, 25);
       	MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := xCodigoAbCaixa;
       	MDO.Query.ExecSQL;
		End;
		If xValorChequeTroco>0 Then
			FinalizaLancamentosTrocoCheques;
	Except
		Result := False;
	End;
End;
//Função para lanar o financeiro dinheiro em caixa pelo contas a receber
Function TFPagamento.FinalizaLancamentosCaixa: Boolean;
Var
	xValorTemporarioServicos: Real;
	xFlag:Integer;
Begin
	Try
		Result := True;
       XFlag:=0;
		xCodigoCtaReceber := DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger;
       While XFlag=0 do
       Begin
       	DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' select * from ctareceber where ctareceber.cod_ctareceber=:codigo ');
           DMMACS.TALX.ParamByName('codigo').AsInteger:=xCodigoCtaReceber;
           DMMACS.TALX.Open;
           If not DMMACS.TALX.IsEmpty
           Then Begin
               xCodigoCtaReceber:=xCodigoCtaReceber+1;
           End
           Else Begin
               XFlag:=1;
           End;
       End;

		//CONTAS A RECEBER
    	DMMACS.TCodigo.Edit;
    	DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger:=xCodigoCtaReceber+1;
    	DMMACS.TCodigo.Post;
    	DMMACS.IBTCodigo.CommitRetaining;
		MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' INSERT INTO CTARECEBER (COD_CTARECEBER, COD_USUARIO, DTLANC, COBRANCA, COD_CLIENTE, COD_PLNCTA, HISTORICO, TIPOGERADOR, ');
       MDO.Query.SQL.Add(' 						COD_GERADOR, VALOR, COD_COTAMOEDA, COD_FORMPAG, NUMDOC, COD_PLNCTASERV, NUMCARTAO, COD_VENDEDOR) ');
       MDO.Query.SQL.Add(' 				VALUES (:COD_CTARECEBER, :COD_USUARIO, :DTLANC, :COBRANCA, :COD_CLIENTE, :COD_PLNCTA, :HISTORICO, :TIPOGERADOR, ');
       MDO.Query.SQL.Add(' 						:COD_GERADOR, :VALOR, :COD_COTAMOEDA, :COD_FORMPAG, :NUMDOC, :COD_PLNCTASERV, :NUMCARTAO, :COD_VENDEDOR) ');
       MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaReceber;
       MDO.Query.ParamByName('COD_USUARIO').AsString :=  FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('DTLANC').AsString := DateToStr(Date());
       MDO.Query.ParamByName('COBRANCA').AsString:='Carteira';
       MDO.Query.ParamByName('COD_CLIENTE').AsInteger := xCodigoCliente;
       MDO.Query.ParamByName('COD_PLNCTA').AsInteger := DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
       MDO.Query.ParamByName('HISTORICO').AsString := Copy(xHistoricoPadrao + ' - '+ edDinheiroHistorico.Text, 0, 100);
       MDO.Query.ParamByName('TIPOGERADOR').AsString := XTipoGerador;
       MDO.Query.ParamByName('COD_GERADOR').AsInteger := xCodigoPedido;
       MDO.Query.ParamByName('VALOR').AsCurrency := edDinheiroValor.ValueNumeric;
       MDO.Query.ParamByName('COD_COTAMOEDA').AsString := '-1';
       MDO.Query.ParamByName('COD_FORMPAG').AsInteger:= xCodigoFormaPagamento;
       MDO.Query.ParamByName('NUMDOC').AsString:= xNumeroDocumento;
       MDO.Query.ParamByName('COD_PLNCTASERV').AsInteger := DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
       MDO.Query.ParamByName('NUMCARTAO').AsString := '';
       MDO.Query.ParamByName('COD_VENDEDOR').AsInteger := xCodigoVendedor;
       MDO.Query.ExecSQL;

		//PARCELA DE CONTAS A RECEBER
		xCodigoParcela := Inserir(DMMACS.TCodigo, 'CODIGO', 'COD_PARCELACR');
   	MDO.Query.Close;
   	MDO.Query.SQL.Clear;
   	MDO.Query.SQL.Add(' INSERT INTO PARCELACR (COD_PARCELACR, COD_CTARECEBER, NUMPARC, VALOR, VALORPG, FECH, COBRANCA, DTVENC, DTDEBITO, HISTORICO, VALEXT, VALORSERV, VALORPROD, DTREF, PERVLRSERV, ESTRU, COD_ABCAIXA) ');
   	MDO.Query.SQL.Add(' VALUES (:COD_PARCELACR, :COD_CTARECEBER, :NUMPARC, :VALOR, :VALORPG, :FECH, :COBRANCA, :DTVENC, :DTDEBITO, :HISTORICO, :VALEXT, :VALORSERV, :VALORPROD, :DTREF, :PERVLRSERV, :ESTRU, :COD_ABCAIXA) ');
   	MDO.Query.ParamByName('COD_PARCELACR').AsInteger := xCodigoParcela;
   	MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaReceber;
   	MDO.Query.ParamByName('NUMPARC').AsString := xNumeroDocumento;
   	MDO.Query.ParamByName('VALOR').AsCurrency := edDinheiroValor.ValueNumeric;
   	MDO.Query.ParamByName('VALORPG').AsCurrency := edDinheiroValor.ValueNumeric;
   	MDO.Query.ParamByName('FECH').AsString := 'S';
   	MDO.Query.ParamByName('COBRANCA').AsString := 'Carteira';
      	MDO.Query.ParamByName('DTDEBITO').AsString := DateToStr(Date());
      	MDO.Query.ParamByName('DTVENC').AsString := DateToStr(Date());
      	MDO.Query.ParamByName('DTREF').AsString := DateToStr(Date());
   	MDO.Query.ParamByName('HISTORICO').AsString :=  Copy(edDinheiroHistorico.Text + ' - ' + xHistoricoPadrao, 0, 100);
   	FMenu.Extenso.Numero:=FloatToStr(edDinheiroValor.ValueNumeric);
   	MDO.Query.ParamByName('VALEXT').AsString := fmenu.Extenso.Extenso;
   	If XTipoGerador='PEDVENDA'
   	Then Begin
       	MDO.Query.ParamByName('VALORSERV').AsCurrency := 0;
       	MDO.Query.ParamByName('VALORPROD').AsCurrency := edDinheiroValor.ValueNumeric;
       	MDO.Query.ParamByName('PERVLRSERV').AsCurrency := 0;
   	End
   	Else Begin
           xValorTemporarioServicos := (edDinheiroValor.ValueNumeric*xPercentualServico)/100;
       	MDO.Query.ParamByName('VALORSERV').AsCurrency :=  xValorTemporarioServicos;
       	MDO.Query.ParamByName('VALORPROD').AsCurrency := edDinheiroValor.ValueNumeric-xValorTemporarioServicos;
       	MDO.Query.ParamByName('PERVLRSERV').AsCurrency := xPercentualServico;
   	End;
   	MDO.Query.ParamByName('ESTRU').AsString := '0';
   	MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := xCodigoAbCaixa;
   	MDO.Query.ExecSQL;

		//LANÇA EM CAIXA
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add( ' insert into lancaixa (DTLANC, DTREFER, COD_PLNCTAFIL, ESTRU, HISTORICO, VALOR, SALDOANT, TIPOGERADOR, COD_GERADOR, ');
       MDO.Query.SQL.Add( '                       TIPO, TIPCAI, COD_ABCAIXA, COD_USUARIO, DOC) ');
       MDO.Query.SQL.Add( '        values (:DTLANC, :DTREFER, :COD_PLNCTAFIL, :ESTRU, :HISTORICO, :VALOR, :SALDOANT, :TIPOGERADOR, :COD_GERADOR, ');
       MDO.Query.SQL.Add( '                       :TIPO, :TIPCAI, :COD_ABCAIXA, :COD_USUARIO, :DOC) ' );
       MDO.Query.ParamByName('DTLANC').AsString :=  DateToStr(Date());
       MDO.Query.ParamByName('DTREFER').AsDateTime := Date();
       MDO.Query.ParamByName('COD_PLNCTAFIL').Value := DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
       MDO.Query.ParamByName('ESTRU').AsString := '1';
       MDO.Query.ParamByName('HISTORICO').AsString:= Copy(edDinheiroHistorico.Text + ' - '+ xHistoricoPadrao, 0, 200);
       MDO.Query.ParamByName('VALOR').AsCurrency := edDinheiroValor.ValueNumeric;
       MDO.Query.ParamByName('SALDOANT').AsCurrency:=0;
       MDO.Query.ParamByName('TIPOGERADOR').AsString:=XTipoGerador;
       MDO.Query.ParamByName('COD_GERADOR').Value:=xCodigoPedido;
       MDO.Query.ParamByName('TIPO').AsString:='Carteira';
       MDO.Query.ParamByName('TIPCAI').AsString:='E';
       MDO.Query.ParamByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('DOC').AsString:= Copy(xNumeroDocumento, 0, 25);
       MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := xCodigoAbCaixa;
       MDO.Query.ExecSQL;
	Except
		Result := False;
	End;
End;

//Função para lançar valores de transferencia
Function TFPagamento.FinalizaLancamentosTransferenciaBanco: Boolean;
Var
	xValorTemporarioServicos: Real;
	xFlag:Integer;
Begin
	Try
		Result := True;
       XFlag:=0;
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add( ' insert into movbanco(COD_CTACOR, HORALANC, DTLANC, DTREF, ESTRU, DTMOV, ');
       MDO.Query.SQL.Add( '                      COD_PLNCTA, HISTORICO, NUMCHEQUE, COD_USUARIO, VALOR, TIPOOP, ');
       MDO.Query.SQL.Add( '                      COBRANCA, DTVenc, Fech, TIPOGERADOR, COD_GERADOR, COD_ABBANCO) ');
       MDO.Query.SQL.Add( '             values(:COD_CTACOR, :HORALANC, :DTLANC, :DTREF, :ESTRU, :DTMOV, ');
       MDO.Query.SQL.Add( '                    :COD_PLNCTA, :HISTORICO, :NUMCHEQUE, :COD_USUARIO, :VALOR, :TIPOOP, ');
       MDO.Query.SQL.Add( '                      :COBRANCA, :DTVenc, :Fech, :TIPOGERADOR, :COD_GERADOR, :COD_ABBANCO) ');
       MDO.Query.ParamByName('COD_CTACOR').AsInteger:=xCodigoCtaCorrente;
       MDO.Query.ParamByName('HORALANC').AsDateTime := TIME();
       MDO.Query.ParamByName('DTLANC').AsDate := Date();
       MDO.Query.ParamByName('DTREF').AsDate := Date();
       MDO.Query.ParamByName('ESTRU').AsString:= '1';
       MDO.Query.ParamByName('DTMOV').AsDate := Date();
       MDO.Query.ParamByName('COD_PLNCTA').AsInteger := DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
       MDO.Query.ParamByName('HISTORICO').AsString:= Copy(edBancoHistorico.Text + ' - ' + xHistoricoPadrao,0,200);
       MDO.Query.ParamByName('NUMCHEQUE').AsString := xNumeroDocumento;
       MDO.Query.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('VALOR').AsCurrency := xValorBanco;
       MDO.Query.ParamByName('TIPOOP').AsSTRING := 'ENTRADA';
       MDO.Query.ParamByName('COBRANCA').AsString := 'T. BANCO';
       MDO.Query.ParamByName('DTVenc').AsDate := Date();
       MDO.Query.ParamByName('Fech').AsString:='S';
       MDO.Query.ParamByName('TIPOGERADOR').AsString := XTipoGerador;
       MDO.Query.ParamByName('COD_GERADOR').AsInteger := xCodigoPedido;
       MDO.Query.ParamByName('COD_ABBANCO').AsInteger := xCodigoAbBanco;
       MDO.Query.ExecSQL;
	Except
		Result := False;
	End;
End;

//Função para lanar o financeiro duplicata pelo contas a receber
Function TFPagamento.FinalizaLancamentosDuplicata: Boolean;
Var
	xValorTemporarioServicos: Real;
	xFlag:Integer;
Begin
	Try
		Result := True;
       XFlag:=0;
		xCodigoCtaReceber := DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger;

       While XFlag=0 do
       Begin
       	DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' select * from ctareceber where ctareceber.cod_ctareceber=:codigo ');
           DMMACS.TALX.ParamByName('codigo').AsInteger:=xCodigoCtaReceber;
           DMMACS.TALX.Open;
           If not DMMACS.TALX.IsEmpty
           Then Begin
               xCodigoCtaReceber:=xCodigoCtaReceber+1;
           End
           Else Begin
               XFlag:=1;
           End;
       End;

		//CONTAS A RECEBER
    	DMMACS.TCodigo.Edit;
    	DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger:=xCodigoCtaReceber+1;
    	DMMACS.TCodigo.Post;
    	DMMACS.IBTCodigo.CommitRetaining;
		MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' INSERT INTO CTARECEBER (COD_CTARECEBER, COD_USUARIO, DTLANC, COBRANCA, COD_CLIENTE, COD_PLNCTA, HISTORICO, TIPOGERADOR, ');
       MDO.Query.SQL.Add(' 						COD_GERADOR, VALOR, COD_COTAMOEDA, COD_FORMPAG, NUMDOC, COD_PLNCTASERV, NUMCARTAO, COD_VENDEDOR) ');
       MDO.Query.SQL.Add(' 				VALUES (:COD_CTARECEBER, :COD_USUARIO, :DTLANC, :COBRANCA, :COD_CLIENTE, :COD_PLNCTA, :HISTORICO, :TIPOGERADOR, ');
       MDO.Query.SQL.Add(' 						:COD_GERADOR, :VALOR, :COD_COTAMOEDA, :COD_FORMPAG, :NUMDOC, :COD_PLNCTASERV, :NUMCARTAO, :COD_VENDEDOR) ');
       MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaReceber;
       MDO.Query.ParamByName('COD_USUARIO').AsString :=  FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('DTLANC').AsString := DateToStr(Date());
       MDO.Query.ParamByName('COBRANCA').AsString:='Carteira';
       MDO.Query.ParamByName('COD_CLIENTE').AsInteger := xCodigoCliente;
       MDO.Query.ParamByName('COD_PLNCTA').AsInteger := DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
       MDO.Query.ParamByName('HISTORICO').AsString := Copy(edDuplicataHistorico.Text + ' - ' + xHistoricoPadrao , 0, 100);
       MDO.Query.ParamByName('TIPOGERADOR').AsString := XTipoGerador;
       MDO.Query.ParamByName('COD_GERADOR').AsInteger := xCodigoPedido;
       MDO.Query.ParamByName('VALOR').AsCurrency := edDinheiroValor.ValueNumeric;
       MDO.Query.ParamByName('COD_COTAMOEDA').AsString := '-1';
       MDO.Query.ParamByName('COD_FORMPAG').AsInteger:= xCodigoFormaPagamento;
       MDO.Query.ParamByName('NUMDOC').AsString:= xNumeroDocumento;
       MDO.Query.ParamByName('COD_PLNCTASERV').AsInteger := DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
       MDO.Query.ParamByName('NUMCARTAO').AsString := '';
       MDO.Query.ParamByName('COD_VENDEDOR').AsInteger := xCodigoVendedor;
       MDO.Query.ExecSQL;

		//PARCELA DE CONTAS A RECEBER
       FiltraSomaDuplicatas;
		MDO.QView.First;
		While not MDO.QView.Eof do
		Begin
                xCodigoParcela := Inserir(DMMACS.TCodigo, 'CODIGO', 'COD_PARCELACR');
                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add(' INSERT INTO PARCELACR (COD_PARCELACR, COD_CTARECEBER, NUMPARC, VALOR, VALORPG, FECH, COBRANCA, DTVENC, DTDEBITO, HISTORICO, VALEXT, VALORSERV, VALORPROD, DTREF, PERVLRSERV, ESTRU, COD_ABCAIXA) ');
                MDO.Query.SQL.Add(' VALUES (:COD_PARCELACR, :COD_CTARECEBER, :NUMPARC, :VALOR, :VALORPG, :FECH, :COBRANCA, :DTVENC, :DTDEBITO, :HISTORICO, :VALEXT, :VALORSERV, :VALORPROD, :DTREF, :PERVLRSERV, :ESTRU, :COD_ABCAIXA) ');
                MDO.Query.ParamByName('COD_PARCELACR').AsInteger := xCodigoParcela;
                MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaReceber;
                MDO.Query.ParamByName('NUMPARC').AsString := MDO.QView.FieldByName('NUMPARCELA').AsString;
                MDO.Query.ParamByName('VALOR').AsCurrency := MDO.QView.FieldByName('VALOR').AsCurrency;
                MDO.Query.ParamByName('VALORPG').AsCurrency := 0;
                MDO.Query.ParamByName('FECH').AsString := 'N';
                MDO.Query.ParamByName('COBRANCA').AsString := 'Carteira';
                MDO.Query.ParamByName('DTDEBITO').AsString := '';
                MDO.Query.ParamByName('DTVENC').AsString := MDO.QView.FieldByName('VENCIMENTO').AsString;
                MDO.Query.ParamByName('DTREF').AsString := MDO.QView.FieldByName('REFERENCIA').AsString;
                MDO.Query.ParamByName('HISTORICO').AsString := Copy(MDO.QView.FieldByName('HISTORICO').AsString, 0, 100);
                FMenu.Extenso.Numero:=FloatToStr(MDO.QView.FieldByName('VALOR').AsCurrency);
                MDO.Query.ParamByName('VALEXT').AsString := fmenu.Extenso.Extenso;
                If XTipoGerador='PEDVENDA'
                Then Begin
                   MDO.Query.ParamByName('VALORSERV').AsCurrency := 0;
                   MDO.Query.ParamByName('VALORPROD').AsCurrency := MDO.QView.FieldByName('VALOR').AsCurrency;
                   MDO.Query.ParamByName('PERVLRSERV').AsCurrency := 0;
                End
                Else Begin
                   xValorTemporarioServicos := (MDO.QView.FieldByName('VALOR').AsCurrency*xPercentualServico)/100;
                   MDO.Query.ParamByName('VALORSERV').AsCurrency :=  xValorTemporarioServicos;
                   MDO.Query.ParamByName('VALORPROD').AsCurrency := MDO.QView.FieldByName('VALOR').AsCurrency-xValorTemporarioServicos;
                   MDO.Query.ParamByName('PERVLRSERV').AsCurrency := xPercentualServico;
                End;
                MDO.Query.ParamByName('ESTRU').AsString := '0';
                MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := xCodigoAbCaixa;
                MDO.Query.ExecSQL;

				 MDO.QView.Next;
		End;
	Except
		Result := False;
	End;
End;

//Função para lançar contas a receber de débito
Function TFPagamento.FinalizaLancamentosCredito: Boolean;
Var
	xValorTemporarioServicos: Real;
	xFlag:Integer;
Begin
	Try
		Result := True;	
       XFlag:=0;
		xCodigoCtaReceber := DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger;
       While XFlag=0 do
       Begin
       	DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' select * from ctareceber where ctareceber.cod_ctareceber=:codigo ');
           DMMACS.TALX.ParamByName('codigo').AsInteger:=xCodigoCtaReceber;
           DMMACS.TALX.Open;
           If not DMMACS.TALX.IsEmpty
           Then Begin
               xCodigoCtaReceber:=xCodigoCtaReceber+1;
           End
           Else Begin
               XFlag:=1;
           End;
       End;

		//CONTAS A RECEBER
    	DMMACS.TCodigo.Edit;
    	DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger:=xCodigoCtaReceber+1;
    	DMMACS.TCodigo.Post;
    	DMMACS.IBTCodigo.CommitRetaining;
		MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' INSERT INTO CTARECEBER (COD_CTARECEBER, COD_USUARIO, DTLANC, COBRANCA, COD_CLIENTE, COD_PLNCTA, HISTORICO, TIPOGERADOR, ');
       MDO.Query.SQL.Add(' 						COD_GERADOR, VALOR, COD_COTAMOEDA, COD_FORMPAG, NUMDOC, COD_PLNCTASERV, NUMCARTAO, COD_VENDEDOR) ');
       MDO.Query.SQL.Add(' 				VALUES (:COD_CTARECEBER, :COD_USUARIO, :DTLANC, :COBRANCA, :COD_CLIENTE, :COD_PLNCTA, :HISTORICO, :TIPOGERADOR, ');
       MDO.Query.SQL.Add(' 						:COD_GERADOR, :VALOR, :COD_COTAMOEDA, :COD_FORMPAG, :NUMDOC, :COD_PLNCTASERV, :NUMCARTAO, :COD_VENDEDOR) ');
       MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaReceber;
       MDO.Query.ParamByName('COD_USUARIO').AsString :=  FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('DTLANC').AsString := DateToStr(Date());
       MDO.Query.ParamByName('COBRANCA').AsString:='C - Cartão';
       MDO.Query.ParamByName('COD_CLIENTE').AsInteger := xCodigoCliente;
       MDO.Query.ParamByName('COD_PLNCTA').AsInteger := DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
       MDO.Query.ParamByName('HISTORICO').AsString := Copy(edCreditoHistorico.Text + ' - ' + xHistoricoPadrao, 0, 100);
       MDO.Query.ParamByName('TIPOGERADOR').AsString := XTipoGerador;
       MDO.Query.ParamByName('COD_GERADOR').AsInteger := xCodigoPedido;
       MDO.Query.ParamByName('VALOR').AsCurrency := xValorCredito;
       MDO.Query.ParamByName('COD_COTAMOEDA').AsString := '-1';
       MDO.Query.ParamByName('COD_FORMPAG').AsInteger:= xCodigoFormaPagamento;
       MDO.Query.ParamByName('NUMDOC').AsString:= xNumeroDocumento;
       MDO.Query.ParamByName('NUMCARTAO').AsString:= EdCreditoAutorizacao.Text;
       MDO.Query.ParamByName('COD_PLNCTASERV').AsInteger := DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
       MDO.Query.ParamByName('COD_VENDEDOR').AsInteger := xCodigoVendedor;
       MDO.Query.ExecSQL;

		//PARCELA DE CONTAS A RECEBER
       FiltraSomaCredito;
		MDO.QView.First;
		While not MDO.QView.Eof do
		Begin
                xCodigoParcela := Inserir(DMMACS.TCodigo, 'CODIGO', 'COD_PARCELACR');
                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add(' INSERT INTO PARCELACR (COD_PARCELACR, COD_CTARECEBER, COD_COTA, NUMPARC, VALOR, VALORPG, FECH, COBRANCA, DTVENC, DTDEBITO, HISTORICO, VALEXT, VALORSERV, VALORPROD, DTREF, PERVLRSERV, ESTRU, COD_ABCAIXA) ');
                MDO.Query.SQL.Add(' VALUES (:COD_PARCELACR, :COD_CTARECEBER, :COD_COTA, :NUMPARC, :VALOR, :VALORPG, :FECH, :COBRANCA, :DTVENC, :DTDEBITO, :HISTORICO, :VALEXT, :VALORSERV, :VALORPROD, :DTREF, :PERVLRSERV, :ESTRU, :COD_ABCAIXA) ');
                MDO.Query.ParamByName('COD_PARCELACR').AsInteger := xCodigoParcela;
                MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaReceber;
        		 MDO.Query.ParamByName('COD_COTA').AsInteger := xCodigoOperadoraCredito;
                MDO.Query.ParamByName('NUMPARC').AsString := MDO.QView.FieldByName('NUMPARCELA').AsString;
                MDO.Query.ParamByName('VALOR').AsCurrency := MDO.QView.FieldByName('VALOR').AsCurrency;
                MDO.Query.ParamByName('VALORPG').AsCurrency := 0;
                MDO.Query.ParamByName('FECH').AsString := 'N';
                MDO.Query.ParamByName('COBRANCA').AsString := 'C - Cartão';
                MDO.Query.ParamByName('DTDEBITO').AsString := '';
                MDO.Query.ParamByName('DTVENC').AsString := MDO.QView.FieldByName('VENCIMENTO').AsString;
                MDO.Query.ParamByName('DTREF').AsString := MDO.QView.FieldByName('REFERENCIA').AsString;
                MDO.Query.ParamByName('HISTORICO').AsString :=  Copy(MDO.QView.FieldByName('HISTORICO').AsString,0,100);
                FMenu.Extenso.Numero:=FloatToStr(edDinheiroValor.ValueNumeric);
                MDO.Query.ParamByName('VALEXT').AsString := fmenu.Extenso.Extenso;
                If XTipoGerador='PEDVENDA'
                Then Begin
                   MDO.Query.ParamByName('VALORSERV').AsCurrency := 0;
                   MDO.Query.ParamByName('VALORPROD').AsCurrency := MDO.QView.FieldByName('VALOR').AsCurrency;
                   MDO.Query.ParamByName('PERVLRSERV').AsCurrency := 0;
                End
                Else Begin
                   xValorTemporarioServicos := (edDinheiroValor.ValueNumeric*xPercentualServico)/100;
                   MDO.Query.ParamByName('VALORSERV').AsCurrency :=  xValorTemporarioServicos;
                   MDO.Query.ParamByName('VALORPROD').AsCurrency := edDinheiroValor.ValueNumeric-xValorTemporarioServicos;
                   MDO.Query.ParamByName('PERVLRSERV').AsCurrency := xPercentualServico;
                End;
                MDO.Query.ParamByName('ESTRU').AsString := '0';
                MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := xCodigoAbCaixa;
                MDO.Query.ExecSQL;

				 MDO.QView.Next;
		End;
	Except
		Result := False;
	End;
End;

//Função para lançar contas a receber em forma de cartão de débito
Function TFPagamento.FinalizaLancamentosDebito: Boolean;
Var
	xValorTemporarioServicos: Real;
	xFlag:Integer;
Begin
	Try
		Result := True;
       XFlag:=0;
		xCodigoCtaReceber := DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger;
       While XFlag=0 do
       Begin
       	DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' select * from ctareceber where ctareceber.cod_ctareceber=:codigo ');
           DMMACS.TALX.ParamByName('codigo').AsInteger:=xCodigoCtaReceber;
           DMMACS.TALX.Open;
           If not DMMACS.TALX.IsEmpty
           Then Begin
               xCodigoCtaReceber:=xCodigoCtaReceber+1;
           End
           Else Begin
               XFlag:=1;
           End;
       End;

		//CONTAS A RECEBER
    	DMMACS.TCodigo.Edit;
    	DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger:=xCodigoCtaReceber+1;
    	DMMACS.TCodigo.Post;
    	DMMACS.IBTCodigo.CommitRetaining;
		MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' INSERT INTO CTARECEBER (COD_CTARECEBER, COD_USUARIO, DTLANC, COBRANCA, COD_CLIENTE, COD_PLNCTA, HISTORICO, TIPOGERADOR, ');
       MDO.Query.SQL.Add(' 						COD_GERADOR, VALOR, COD_COTAMOEDA, COD_FORMPAG, NUMDOC, NUMCARTAO, COD_PLNCTASERV, COD_VENDEDOR) ');
       MDO.Query.SQL.Add(' 				VALUES (:COD_CTARECEBER, :COD_USUARIO, :DTLANC, :COBRANCA, :COD_CLIENTE, :COD_PLNCTA, :HISTORICO, :TIPOGERADOR, ');
       MDO.Query.SQL.Add(' 						:COD_GERADOR, :VALOR, :COD_COTAMOEDA, :COD_FORMPAG, :NUMDOC, :NUMCARTAO, :COD_PLNCTASERV, :COD_VENDEDOR) ');
       MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaReceber;
       MDO.Query.ParamByName('COD_USUARIO').AsString :=  FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('DTLANC').AsString := DateToStr(Date());
       MDO.Query.ParamByName('COBRANCA').AsString:='D - Cartão';
       MDO.Query.ParamByName('COD_CLIENTE').AsInteger := xCodigoCliente;
       MDO.Query.ParamByName('COD_PLNCTA').AsInteger := DMMACS.TLoja.FieldByName('plncta_vendprazo').AsInteger;
       MDO.Query.ParamByName('HISTORICO').AsString := Copy(edDinheiroHistorico.Text  + ' - ' + xHistoricoPadrao , 0, 100);
       MDO.Query.ParamByName('TIPOGERADOR').AsString := XTipoGerador;
       MDO.Query.ParamByName('COD_GERADOR').AsInteger := xCodigoPedido;
       MDO.Query.ParamByName('VALOR').AsCurrency := xValorDebito;
       MDO.Query.ParamByName('COD_COTAMOEDA').AsString := '-1';
       MDO.Query.ParamByName('COD_FORMPAG').AsInteger:= xCodigoFormaPagamento;
       MDO.Query.ParamByName('NUMDOC').AsString:= xNumeroDocumento;
       MDO.Query.ParamByName('NUMCARTAO').AsString:= edDebitoAutorizacao.Text;
       MDO.Query.ParamByName('COD_PLNCTASERV').AsInteger := DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
       MDO.Query.ParamByName('COD_VENDEDOR').AsInteger := xCodigoVendedor;
       MDO.Query.ExecSQL;

		//PARCELA DE CONTAS A RECEBER

        xCodigoParcela := Inserir(DMMACS.TCodigo, 'CODIGO', 'COD_PARCELACR');
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add(' INSERT INTO PARCELACR (COD_PARCELACR, COD_CTARECEBER, COD_COTA, NUMPARC, NUMBOLETO, VALOR, VALORPG, FECH, COBRANCA, DTVENC, DTDEBITO, HISTORICO, VALEXT, VALORSERV, VALORPROD, DTREF, PERVLRSERV, ESTRU, COD_ABCAIXA) ');
        MDO.Query.SQL.Add(' VALUES (:COD_PARCELACR, :COD_CTARECEBER, :COD_COTA, :NUMPARC, :NUMBOLETO, :VALOR, :VALORPG, :FECH, :COBRANCA, :DTVENC, :DTDEBITO, :HISTORICO, :VALEXT, :VALORSERV, :VALORPROD, :DTREF, :PERVLRSERV, :ESTRU, :COD_ABCAIXA) ');
        MDO.Query.ParamByName('COD_PARCELACR').AsInteger := xCodigoParcela;
        MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaReceber;
        MDO.Query.ParamByName('COD_COTA').AsInteger := xCodigoOperadoraDebito;
        MDO.Query.ParamByName('NUMPARC').AsString := xNumeroDocumento;
        MDO.Query.ParamByName('NUMBOLETO').AsString := '';
        MDO.Query.ParamByName('VALOR').AsCurrency := xValorDebito;
        MDO.Query.ParamByName('VALORPG').AsCurrency := 0;
        MDO.Query.ParamByName('FECH').AsString := 'N';
        MDO.Query.ParamByName('COBRANCA').AsString := 'D - Cartão';
        MDO.Query.ParamByName('DTDEBITO').AsString := '';
        MDO.Query.ParamByName('DTVENC').AsString := DateToStr(Date()+1);
        MDO.Query.ParamByName('DTREF').AsString := DateToStr(Date()+1);
        MDO.Query.ParamByName('HISTORICO').AsString :=  Copy(MDO.QView.FieldByName('HISTORICO').AsString, 0,100);
        FMenu.Extenso.Numero:=FloatToStr(edDinheiroValor.ValueNumeric);
        MDO.Query.ParamByName('VALEXT').AsString := fmenu.Extenso.Extenso;
        If XTipoGerador='PEDVENDA'
        Then Begin
           MDO.Query.ParamByName('VALORSERV').AsCurrency := 0;
           MDO.Query.ParamByName('VALORPROD').AsCurrency := MDO.QView.FieldByName('VALOR').AsCurrency;
           MDO.Query.ParamByName('PERVLRSERV').AsCurrency := 0;
        End
        Else Begin
           xValorTemporarioServicos := (edDinheiroValor.ValueNumeric*xPercentualServico)/100;
           MDO.Query.ParamByName('VALORSERV').AsCurrency :=  xValorTemporarioServicos;
           MDO.Query.ParamByName('VALORPROD').AsCurrency := edDinheiroValor.ValueNumeric-xValorTemporarioServicos;
           MDO.Query.ParamByName('PERVLRSERV').AsCurrency := xPercentualServico;
        End;
        MDO.Query.ParamByName('ESTRU').AsString := '0';
        MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := xCodigoAbCaixa;
        MDO.Query.ExecSQL;

        MDO.QView.Next;
	Except
		Result := False;
	End;
End;

//Função para lançar o financeiro de cheques
Function TFPagamento.FinalizaLancamentosCheque: Boolean;
Var
	xValorTemporarioServicos: Real;
	xFlag:Integer;
Begin
	Try
		Result := True;
       XFlag:=0;
		xCodigoCtaReceber := DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger;
       While XFlag=0 do
       Begin
       	DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' select * from ctareceber where ctareceber.cod_ctareceber=:codigo ');
           DMMACS.TALX.ParamByName('codigo').AsInteger:=xCodigoCtaReceber;
           DMMACS.TALX.Open;
           If not DMMACS.TALX.IsEmpty
           Then Begin
               xCodigoCtaReceber:=xCodigoCtaReceber+1;
           End
           Else Begin
               XFlag:=1;
           End;
       End;

		//CONTAS A RECEBER
    	DMMACS.TCodigo.Edit;
    	DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger:=xCodigoCtaReceber+1;
    	DMMACS.TCodigo.Post;
    	DMMACS.IBTCodigo.CommitRetaining;
		MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' INSERT INTO CTARECEBER (COD_CTARECEBER, COD_USUARIO, DTLANC, COBRANCA, COD_CLIENTE, COD_PLNCTA, HISTORICO, TIPOGERADOR, ');
       MDO.Query.SQL.Add(' 						COD_GERADOR, VALOR, COD_COTAMOEDA, COD_FORMPAG, NUMDOC, COD_PLNCTASERV, NUMCARTAO, COD_VENDEDOR) ');
       MDO.Query.SQL.Add(' 				VALUES (:COD_CTARECEBER, :COD_USUARIO, :DTLANC, :COBRANCA, :COD_CLIENTE, :COD_PLNCTA, :HISTORICO, :TIPOGERADOR, ');
       MDO.Query.SQL.Add(' 						:COD_GERADOR, :VALOR, :COD_COTAMOEDA, :COD_FORMPAG, :NUMDOC, :COD_PLNCTASERV, :NUMCARTAO, :COD_VENDEDOR) ');
       MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaReceber;
       MDO.Query.ParamByName('COD_USUARIO').AsString :=  FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('DTLANC').AsString := DateToStr(Date());
       MDO.Query.ParamByName('COBRANCA').AsString:='Cheque';
       MDO.Query.ParamByName('COD_CLIENTE').AsInteger := xCodigoCliente;
       MDO.Query.ParamByName('COD_PLNCTA').AsInteger := DMMACS.TLoja.FieldByName('plncta_vendprazo').AsInteger;
       MDO.Query.ParamByName('HISTORICO').AsString := Copy(xHistoricoPadrao + ' - '+ edChequeHistorico.Text, 0, 100);
       MDO.Query.ParamByName('TIPOGERADOR').AsString := XTipoGerador;
       MDO.Query.ParamByName('COD_GERADOR').AsInteger := xCodigoPedido;
       MDO.Query.ParamByName('VALOR').AsCurrency := xValorCheque;
       MDO.Query.ParamByName('COD_COTAMOEDA').AsString := '-1';
       MDO.Query.ParamByName('COD_FORMPAG').AsInteger:= xCodigoFormaPagamento;
       MDO.Query.ParamByName('NUMDOC').AsString:= xNumeroDocumento;
       MDO.Query.ParamByName('COD_PLNCTASERV').AsInteger := DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
       MDO.Query.ParamByName('NUMCARTAO').AsString := '';
       MDO.Query.ParamByName('COD_VENDEDOR').AsInteger := xCodigoVendedor;
       MDO.Query.ExecSQL;

		//Retornamos com o código de movimentação bancária para as inserções
       DMMACS.Transaction.CommitRetaining;
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('  select gen_id(GEN_MOVBANCO_ID, 0) as codigo from rdb$database ');
       DMMACS.TALX.Open;
       xCodigoMovimentoBancario := DMMACS.TALX.FieldByName('codigo').AsInteger;

		//PARCELA DE CONTAS A RECEBER
       FiltraSomaCheques;
		MDO.QView.First;
		While not MDO.QView.Eof do
		Begin
			If (MDO.QView.FieldByName('Cheque').AsString<>'') and (MDO.QView.FieldByName('Cheque').AsString<> null)
			Then Begin
                xCodigoParcela := Inserir(DMMACS.TCodigo, 'CODIGO', 'COD_PARCELACR');
                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add(' INSERT INTO PARCELACR (COD_PARCELACR, COD_CTARECEBER, NUMPARC, VALOR, VALORPG, FECH, COBRANCA, DTVENC, DTDEBITO, HISTORICO, VALEXT, VALORSERV, VALORPROD, DTREF, PERVLRSERV, ESTRU, COD_ABCAIXA) ');
                MDO.Query.SQL.Add(' VALUES (:COD_PARCELACR, :COD_CTARECEBER, :NUMPARC, :VALOR, :VALORPG, :FECH, :COBRANCA, :DTVENC, :DTDEBITO, :HISTORICO, :VALEXT, :VALORSERV, :VALORPROD, :DTREF, :PERVLRSERV, :ESTRU, :COD_ABCAIXA) ');
                MDO.Query.ParamByName('COD_PARCELACR').AsInteger := xCodigoParcela;
                MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaReceber;
                MDO.Query.ParamByName('NUMPARC').AsString := MDO.QView.FieldByName('NUMPARCELA').AsString;
                MDO.Query.ParamByName('VALOR').AsCurrency := MDO.QView.FieldByName('VALOR').AsCurrency;
                MDO.Query.ParamByName('VALORPG').AsCurrency := 0;
                MDO.Query.ParamByName('FECH').AsString := 'N';
                MDO.Query.ParamByName('COBRANCA').AsString := 'Cheque';
                MDO.Query.ParamByName('DTVENC').AsString := MDO.QView.FieldByName('VENCIMENTO').AsString;
                MDO.Query.ParamByName('DTREF').AsString := MDO.QView.FieldByName('REFERENCIA').AsString;
                MDO.Query.ParamByName('HISTORICO').AsString :=  Copy(MDO.QView.FieldByName('HISTORICO').AsString, 0, 100);
                FMenu.Extenso.Numero:=FloatToStr(edDinheiroValor.ValueNumeric);
                MDO.Query.ParamByName('VALEXT').AsString := fmenu.Extenso.Extenso;
                If XTipoGerador='PEDVENDA'
                Then Begin
                   MDO.Query.ParamByName('VALORSERV').AsCurrency := 0;
                   MDO.Query.ParamByName('VALORPROD').AsCurrency := MDO.QView.FieldByName('VALOR').AsCurrency;
                   MDO.Query.ParamByName('PERVLRSERV').AsCurrency := 0;
                End
                Else Begin
                   xValorTemporarioServicos := (MDO.QView.FieldByName('VALOR').AsCurrency*xPercentualServico)/100;
                   MDO.Query.ParamByName('VALORSERV').AsCurrency :=  xValorTemporarioServicos;
                   MDO.Query.ParamByName('VALORPROD').AsCurrency := MDO.QView.FieldByName('VALOR').AsCurrency-xValorTemporarioServicos;
                   MDO.Query.ParamByName('PERVLRSERV').AsCurrency := xPercentualServico;
                End;
                MDO.Query.ParamByName('ESTRU').AsString := '0';
                MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := xCodigoAbCaixa;
                MDO.Query.ExecSQL;

				 //CHEQUES
						xCodigoMovimentoBancario := xCodigoMovimentoBancario+1;
                       xFlag := 0;
                       While XFlag=0 do
                       Begin
                           DMMACS.TALX.Close;
                           DMMACS.TALX.SQL.Clear;
                           DMMACS.TALX.SQL.Add(' select * from movbanco where movbanco.cod_movbanco=:codigo ');
                           DMMACS.TALX.ParamByName('codigo').AsInteger:=xCodigoMovimentoBancario;
                           DMMACS.TALX.Open;
                           If not DMMACS.TALX.IsEmpty
                           Then Begin
                               xCodigoMovimentoBancario:=xCodigoMovimentoBancario+1;
                           End
                           Else Begin
                               XFlag:=1;
                           End;
                       End;

                       //LANCA EM MOVBANCO
                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.ADD(' INSERT INTO MOVBANCO (COD_MOVBANCO, COD_CTACOR, HORALANC, DTLANC, COD_PLNCTA, HISTORICO, COD_USUARIO, DTMOV, COD_COTA, VALOR, TIPOOP, COBRANCA, DTVENC, FECH, TIPOGERADOR, COD_GERADOR, NUMCHEQUE, VER, VALORSERV, ');
                       MDO.Query.SQL.ADD('  					  VALORPROD, COD_PLNCTASERV, PERVLRSERV, ESTRU, COD_ABBANCO, DTREF, MARK, DESTINATARIOCH)');
                       MDO.Query.SQL.ADD('               VALUES (:COD_MOVBANCO, :COD_CTACOR, :HORALANC, :DTLANC, :COD_PLNCTA, :HISTORICO, :COD_USUARIO, :DTMOV, :COD_COTA, :VALOR, :TIPOOP, :COBRANCA, :DTVENC, :FECH, :TIPOGERADOR, :COD_GERADOR, :NUMCHEQUE, ');
                       MDO.Query.SQL.Add('               	      :VER, :VALORSERV, :VALORPROD, :COD_PLNCTASERV, :PERVLRSERV, :ESTRU, :COD_ABBANCO, :DTREF, :MARK, :DESTINATARIOCH)');
                       MDO.Query.ParamByName('COD_MOVBANCO').AsInteger := xCodigoMovimentoBancario;
                       MDO.Query.ParamByName('COD_CTACOR').AsInteger := 0;
                       MDO.Query.ParamByName('HORALANC').AsString := TimeToStr(Time());
                       MDO.Query.ParamByName('DTLANC').AsString :=  DateToStr(Date());
                       MDO.Query.ParamByName('COD_PLNCTA').AsInteger :=  DMMACS.TLoja.FieldByName('plncta_vendprazo').AsInteger;
                       MDO.Query.ParamByName('HISTORICO').AsString :=  Copy(MDO.QView.FieldByName('HISTORICO').AsString, 0, 100);
                       MDO.Query.ParamByName('COD_USUARIO').AsString :=  FMenu.LCODUSUARIO.Caption;
                       MDO.Query.ParamByName('DTMOV').AsString := '';
                       MDO.Query.ParamByName('COD_COTA').AsInteger :=  0;
                       MDO.Query.ParamByName('VALOR').AsCurrency := MDO.QView.FieldByName('VALOR').AsCurrency;
                       MDO.Query.ParamByName('TIPOOP').AsString := 'ENTRADA';
                       MDO.Query.ParamByName('COBRANCA').AsString := 'CHEQUE';
                       MDO.Query.ParamByName('DTVENC').AsString :=  MDO.QView.FieldByName('VENCIMENTO').AsString;
                       MDO.Query.ParamByName('FECH').AsString := 'N';
                       MDO.Query.ParamByName('TIPOGERADOR').AsString := 'PCHR';
                       MDO.Query.ParamByName('COD_GERADOR').AsInteger := xCodigoParcela;
                       MDO.Query.ParamByName('NUMCHEQUE').AsString := MDO.QView.FieldByName('Cheque').AsString;
                       MDO.Query.ParamByName('VER').AsString := '';
                       MDO.Query.ParamByName('VALORSERV').AsCurrency := xValorTemporarioServicos;
                       MDO.Query.ParamByName('VALORPROD').AsCurrency :=  MDO.QView.FieldByName('VALOR').AsCurrency - xValorTemporarioServicos;
                       MDO.Query.ParamByName('COD_PLNCTASERV').AsInteger := DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
                       MDO.Query.ParamByName('PERVLRSERV').AsCurrency := xPercentualServico;
                       MDO.Query.ParamByName('ESTRU').AsString :=  '1';
                       MDO.Query.ParamByName('COD_ABBANCO').AsInteger :=  xCodigoAbCaixa;
                       MDO.Query.ParamByName('DTREF').AsString := MDO.QView.FieldByName('REFERENCIA').AsString;
                       MDO.Query.ParamByName('MARK').AsString := '';
                       MDO.Query.ParamByName('DESTINATARIOCH').AsString := '';
						MDO.Query.ExecSQL;

						//LANCAMENTO EM CHEQUE REC
                		xCodigoCheque := Inserir(DMMACS.TCodigo, 'CODIGO', 'COD_CHEQUEREC');
                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.ADD(' INSERT INTO CHEQUEREC (COD_CHEQUEREC, COD_BANCO, NUMAGENCIA, NUMCONTA, COD_MOVBANCO, FONE, EMITENTE, CPFEMIT, DESTINO) ');
                       MDO.Query.SQL.ADD('                VALUES (:COD_CHEQUEREC, :COD_BANCO, :NUMAGENCIA, :NUMCONTA, :COD_MOVBANCO, :FONE, :EMITENTE, :CPFEMIT, :DESTINO)');
                       MDO.Query.ParamByName('COD_CHEQUEREC').AsInteger := xCodigoCheque;
                       MDO.Query.ParamByName('COD_BANCO').AsString := '';
                       MDO.Query.ParamByName('NUMAGENCIA').AsString := '';
                       MDO.Query.ParamByName('NUMCONTA').AsString := '';
                       MDO.Query.ParamByName('COD_MOVBANCO').AsInteger := xCodigoMovimentoBancario;
                       MDO.Query.ParamByName('FONE').AsString := '';
                       MDO.Query.ParamByName('EMITENTE').AsString := '';
                       MDO.Query.ParamByName('CPFEMIT').AsString := '';
                       MDO.Query.ParamByName('DESTINO').AsString := '';
						MDO.Query.ExecSQL;

						//LANÇAMENTO DE CHEQUE EM CAIXA
                       //LANÇA EM CAIXA
                       MDO.Query.Close;
                       MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add( ' insert into lancaixa (DTLANC, DTREFER, COD_PLNCTAFIL, ESTRU, HISTORICO, VALOR, SALDOANT, TIPOGERADOR, COD_GERADOR, ');
                       MDO.Query.SQL.Add( '                       TIPO, TIPCAI, COD_ABCAIXA, COD_USUARIO, DOC) ');
                       MDO.Query.SQL.Add( '        values (:DTLANC, :DTREFER, :COD_PLNCTAFIL, :ESTRU, :HISTORICO, :VALOR, :SALDOANT, :TIPOGERADOR, :COD_GERADOR, ');
                       MDO.Query.SQL.Add( '                       :TIPO, :TIPCAI, :COD_ABCAIXA, :COD_USUARIO, :DOC) ' );
                       MDO.Query.ParamByName('DTLANC').AsString :=  DateToStr(Date());
                       MDO.Query.ParamByName('DTREFER').AsDateTime := Date();
                       MDO.Query.ParamByName('COD_PLNCTAFIL').Value := DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
                       MDO.Query.ParamByName('ESTRU').AsString := '1';
                       MDO.Query.ParamByName('HISTORICO').AsString:=  Copy(MDO.QView.FieldByName('HISTORICO').AsString, 0, 100);
                       MDO.Query.ParamByName('VALOR').AsCurrency := MDO.QView.FieldByName('VALOR').AsCurrency;
                       MDO.Query.ParamByName('SALDOANT').AsCurrency:=0;
                       MDO.Query.ParamByName('TIPOGERADOR').AsString:='PCHR';
                       MDO.Query.ParamByName('COD_GERADOR').Value:=xCodigoCheque;
                       MDO.Query.ParamByName('TIPO').AsString:='CHEQUE';
                       MDO.Query.ParamByName('TIPCAI').AsString:='E';
                       MDO.Query.ParamByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
                       MDO.Query.ParamByName('DOC').AsString:= Copy(xNumeroDocumento, 0, 25);
                       MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := xCodigoAbCaixa;
                       MDO.Query.ExecSQL;

						xCodigoMovimentoBancario := xCodigoMovimentoBancario + 1;
			End;
  			MDO.QView.Next;
		End;
		//Atualiza o generator de movbanco
       MDO.Query.Close;
       mdo.Query.SQL.Clear;
       mdo.Query.SQL.Add('SET GENERATOR GEN_MOVBANCO_ID TO '+IntToStr(xCodigoMovimentoBancario+1));
       mdo.Query.ExecSQL;
	Except
		Result := False;
	End;
End;

//Função para lanar o financeiro e finalizar o pagamento
Function TFPagamento.FinalizaLancamentos: Boolean;
Begin
	Try
       Result:=True;

		//Lançamento em dinheiro no caixa
		If xValorDinheiro > 0 Then
       	If FinalizaLancamentosCaixa = False Then
				Result:=False;

		If xValorDuplicata > 0 Then
           If FinalizaLancamentosDuplicata = False Then
				Result:=False;

		If xValorCheque > 0 Then
           If FinalizaLancamentosCheque = False Then
				Result:=False;

		If xValorBanco > 0 Then
           If FinalizaLancamentosTransferenciaBanco = False Then
				Result:=False;

		If xValorDebito > 0 Then
           If FinalizaLancamentosDebito = False Then
				Result:=False;

		If xValorCredito > 0 Then
           If FinalizaLancamentosCredito = False Then
				Result:=False;

		//Finaliza Pedidos
		If XTipoGerador='PEDVENDA' Then
           If FechaPedidoVenda = False Then
				Result := False;
		If XTipoGerador='ORDEM' Then
           If FechaOrdemServico = False Then
				Result := False;

		//Verifica lançamentos de troco
		If xValorTroco>0 Then
           If FinalizaLancamentosTroco = False Then
				Result := False;

		If Result = False Then
           xResultadoPagamento := False
		Else
           xResultadoPagamento := True;

		//Comitamos as informações geradas
       MDO.Transac.CommitRetaining;
	Except
       MDO.Transac.RollbackRetaining;
       Result:=False;
	End;
End;

//Função utilizada para selecionar os cheques recebidos disponíveis para troca
Function TFPagamento.SelecionaCheques: Boolean;
Begin
	Try
       DMMACS.Transaction.CommitRetaining;
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' select movbanco.mark, vwchequerec.numcheque, vwchequerec.valor, vwchequerec.emitente from vwchequerec ');
       DMMACS.TALX.SQL.Add(' left join movbanco on vwchequerec.cod_movbanco = movbanco.cod_movbanco ');
       DMMACS.TALX.SQL.Add(' Where vwchequerec.fech=''N'' ');
       DMMACS.TALX.Open;
	Except
	end;
end;
//Limpa campos de edição de parcela
Function TFPagamento.LimpaCamposEditaParcela: Boolean;
Begin
	try
       EdDocumentoEditaParcela.Text := '';
       EdBoletoEditaParcela.Text := '';
       EdVencimentoEditaParcela.Text := '  /  /    ';
       EdReferenciaEditaParcela.Text := '  /  /    ';
       EdValorEditaParcela.ValueNumeric := 0;
       EdHistoricoEditaParcela.Text := '';
	except
	end;
End;

//Limpa campos de edição de credito
Function TFPagamento.LimpaCamposEditaCredito: Boolean;
Begin
	try
       EdDocumentoEditaCredito.Text := '';
       EdAutorizacaoEditaCredito.Text := '';
       EdVencimentoEditaCredito.Text := '  /  /    ';
       EdReferenciaEditaCredito.Text := '  /  /    ';
       EdValorEditaCredito.ValueNumeric := 0;
       EdHistoricoEditaCredito.Text := '';
	except
	end;
End;

//Limpa campos de edição de cheque
Function TFPagamento.LimpaCamposEditaCheque: Boolean;
Begin
	try
       EdChequeEditadoDocumento.Text := '';
       EdChequeEditadoCheque.Text := '';
       EdChequeEditadoVencimento.Text := '  /  /    ';
       EdChequeEditadoReferencia.Text := '  /  /    ';
       EdChequeEditadoValor.ValueNumeric := 0;
       EdChequeEditadoHistorico.Text := '';
       FrmBuscaBanco.EdDescricao.Text := '';
       FrmBuscaBanco.EDCodigo.Text := '';
		xCodigoBanco:=-1;
	except
	end;
End;


//Geramos o cabeçalho da conta
Function TFPagamento.GeraCabecalhoDuplicata: Boolean;
var
	XFlag: Integer;
Begin
	Try
		Result := True;
       XFlag:=0;
		xCodigoCtaReceber := DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger;
       While XFlag=0 do
       Begin
       	DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add(' select * from ctareceber where ctareceber.cod_ctareceber=:codigo ');
           DMMACS.TALX.ParamByName('codigo').AsInteger:=xCodigoCtaReceber;
           DMMACS.TALX.Open;
           If not DMMACS.TALX.IsEmpty
           Then Begin
               xCodigoCtaReceber:=xCodigoCtaReceber+1;
           End
           Else Begin
               XFlag:=1;
           End;
       End;

    	DMMACS.TCodigo.Edit;
    	DMMACS.TCodigo.FieldByName('COD_CTARECEBER').AsInteger:=xCodigoCtaReceber+1;
    	DMMACS.TCodigo.Post;
    	DMMACS.IBTCodigo.CommitRetaining;

		MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' INSERT INTO CTARECEBER (COD_CTARECEBER, COD_USUARIO, DTLANC, COBRANCA, COD_CLIENTE, COD_PLNCTA, HISTORICO, TIPOGERADOR, ');
       MDO.Query.SQL.Add(' 						COD_GERADOR, VALOR, COD_COTAMOEDA, COD_FORMPAG, NUMDOC, COD_PLNCTASERV, NUMCARTAO, COD_VENDEDOR) ');
       MDO.Query.SQL.Add(' 				VALUES (:COD_CTARECEBER, :COD_USUARIO, :DTLANC, :COBRANCA, :COD_CLIENTE, :COD_PLNCTA, :HISTORICO, :TIPOGERADOR, ');
       MDO.Query.SQL.Add(' 						:COD_GERADOR, :VALOR, :COD_COTAMOEDA, :COD_FORMPAG, :NUMDOC, :COD_PLNCTASERV, :NUMCARTAO, :COD_VENDEDOR) ');
       MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaReceber;
       MDO.Query.ParamByName('COD_USUARIO').AsString :=  FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('DTLANC').AsString := DateToStr(Date());
       MDO.Query.ParamByName('COBRANCA').AsString:='Carteira';
       MDO.Query.ParamByName('COD_CLIENTE').AsInteger := xCodigoCliente;
       MDO.Query.ParamByName('COD_PLNCTA').AsInteger := DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
       MDO.Query.ParamByName('HISTORICO').AsString := edDuplicataHistorico.Text;
       MDO.Query.ParamByName('TIPOGERADOR').AsString := XTipoGerador;
       MDO.Query.ParamByName('COD_GERADOR').AsInteger := xCodigoPedido;
       MDO.Query.ParamByName('VALOR').AsCurrency := xValorTotalPagar;
       MDO.Query.ParamByName('COD_COTAMOEDA').AsString := '-1';
       MDO.Query.ParamByName('COD_FORMPAG').AsInteger:= xCodigoFormaPagamento;
       MDO.Query.ParamByName('NUMDOC').AsString:= xNumeroDocumento;
       MDO.Query.ParamByName('COD_PLNCTASERV').AsInteger := DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
       MDO.Query.ParamByName('NUMCARTAO').AsString := '';
       MDO.Query.ParamByName('COD_VENDEDOR').AsInteger := xCodigoVendedor;
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
	Except
       MDO.Transac.RollbackRetaining;
		Result := False;
	End;
end;

//Geramos o Itens Parcela da conta
Function TFPagamento.GeraItensDuplicata: Boolean;
var
	xNumeroParcelaGerada: Integer;
	xDiaVencimento, xMesVencimento, xAnoVencimento: Word;
Begin
	Try
       Result:=True;
		DecodeDate(Date(), xAnoVencimento, xMesVencimento, xDiaVencimento);
       xMesVencimento:=xMesVencimento+1;
       xDiaVencimento := edDuplicataVencimento.ValueInteger;

       For xNumeroParcelaGerada :=1 to edDuplicataNumero.ValueInteger do
		Begin
           xCodigoParcela := Inserir(DMMACS.TCodigo, 'CODIGO', 'COD_PARCELACR');
			//Gerencia Vencimento
           If xMesVencimento>12
			Then Begin
               xMesVencimento:=1;
               xAnoVencimento:=xAnoVencimento+1;
			End;

           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' INSERT INTO PARCELACR (COD_PARCELACR, COD_CTARECEBER, NUMPARC, VALOR, FECH, COBRANCA, DTVENC, HISTORICO, VALEXT, VALORSERV, VALORPROD, DTREF, PERVLRSERV, ESTRU, COD_ABCAIXA) ');
           MDO.Query.SQL.Add(' VALUES (:COD_PARCELACR, :COD_CTARECEBER, :NUMPARC, :VALOR, :FECH, :COBRANCA, :DTVENC, :HISTORICO, :VALEXT, :VALORSERV, :VALORPROD, :DTREF, :PERVLRSERV, :ESTRU, :COD_ABCAIXA) ');
           MDO.Query.ParamByName('COD_PARCELACR').AsInteger := xCodigoParcela;
           MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaReceber;
           MDO.Query.ParamByName('NUMPARC').AsString := xNumeroDocumento+':'+IntToStr(xNumeroParcelaGerada)+'/'+edDuplicataNumero.Text;
           MDO.Query.ParamByName('VALOR').AsCurrency := edDuplicataValor.ValueNumeric;
           MDO.Query.ParamByName('FECH').AsString := 'N';
           MDO.Query.ParamByName('COBRANCA').AsString := 'Carteira';
			If (xDiaVencimento>28) and (xMesVencimento=2) Then
           	MDO.Query.ParamByName('DTVENC').AsString := '28/02/'+IntToStr(xAnoVencimento)
			Else
           	MDO.Query.ParamByName('DTVENC').AsString := IntToStr(xDiaVencimento)+'/'+IntToStr(xMesVencimento)+'/'+IntToStr(xAnoVencimento);

			If (xDiaVencimento>28) and (xMesVencimento=2) Then
           	MDO.Query.ParamByName('DTREF').AsString := '28/02/'+IntToStr(xAnoVencimento)
			Else
           	MDO.Query.ParamByName('DTREF').AsString := IntToStr(xDiaVencimento)+'/'+IntToStr(xMesVencimento)+'/'+IntToStr(xAnoVencimento);

           MDO.Query.ParamByName('HISTORICO').AsString := edDuplicataHistorico.Text;
           FMenu.Extenso.Numero:=FloatToStr(xValorTotalPagar);
           MDO.Query.ParamByName('VALEXT').AsString := fmenu.Extenso.Extenso;
			If xTipo='VENDA'
			Then Begin
           	MDO.Query.ParamByName('VALORSERV').AsCurrency := 0;
           	MDO.Query.ParamByName('VALORPROD').AsCurrency := edDuplicataValor.ValueNumeric;
	            MDO.Query.ParamByName('PERVLRSERV').AsCurrency := 0;
			End
			Else Begin
           	MDO.Query.ParamByName('VALORSERV').AsCurrency := xValorServico;
           	MDO.Query.ParamByName('VALORPROD').AsCurrency := xValorProduto;
           	MDO.Query.ParamByName('PERVLRSERV').AsCurrency := xPercentualServico;
			End;
			If (xDiaVencimento>28) and (xMesVencimento=2) Then
           	MDO.Query.ParamByName('DTREF').AsString := '28/02/'+IntToStr(xAnoVencimento)
			Else
           	MDO.Query.ParamByName('DTREF').AsString := IntToStr(xDiaVencimento)+'/'+IntToStr(xMesVencimento)+'/'+IntToStr(xAnoVencimento);

           MDO.Query.ParamByName('ESTRU').AsString := '1';
           MDO.Query.ParamByName('COD_ABCAIXA').AsString :=  FMenu.LCODCAIXA.Caption;
           MDO.Query.ExecSQL;
           xMesVencimento:=xMesVencimento+1;
		End;
       MDO.Transac.CommitRetaining;
	Except
       Result := False;
	End;
End;

//Geramos o Itens Parcela da conta na tabela tmp
Function TFPagamento.TmpGeraItensDuplicata: Boolean;
var
	xNumeroParcelaGerada: Integer;
	xDiaVencimento, xMesVencimento, xAnoVencimento: Word;
Begin
	Try
       Result:=True;
		DecodeDate(Date(), xAnoVencimento, xMesVencimento, xDiaVencimento);
       xMesVencimento:=xMesVencimento+1;
       xDiaVencimento := edDuplicataVencimento.ValueInteger;

       For xNumeroParcelaGerada :=1 to edDuplicataNumero.ValueInteger do
		Begin
           xCodTmp:=xCodTmp+xNumeroParcelaGerada;
			//Gerencia Vencimento
           If xMesVencimento>12
			Then Begin
               xMesVencimento:=1;
               xAnoVencimento:=xAnoVencimento+1;
			End;

           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' INSERT INTO TMP (cod_tmp, int1, INT2, desc1, desc2, data1, data2, vlr1, desc500, desc3, vlr2, vlr3) ');
           MDO.Query.SQL.Add(' VALUES (:cod_tmp, :VENDAOS, :CodigoGerador, :NUMPARCELA, :NUMBOLETO, :VENCIMENTO, :REFERENCIA, :VALOR, :HISTORICO, :TIPO, :VLRPRODUTO, :VLRSERVICO) ');
           MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTmp;
           MDO.Query.ParamByName('CodigoGerador').AsInteger := xCodigoPedido;
           MDO.Query.ParamByName('NUMPARCELA').AsString := xNumeroDocumento+':'+IntToStr(xNumeroParcelaGerada)+'/'+edDuplicataNumero.Text;
           MDO.Query.ParamByName('NUMBOLETO').AsString := '';
           MDO.Query.ParamByName('VALOR').AsCurrency := edDuplicataValor.ValueNumeric;

			If (xDiaVencimento>28) and (xMesVencimento=2) Then
           	MDO.Query.ParamByName('VENCIMENTO').AsString := '28/02/'+IntToStr(xAnoVencimento)
			Else
           	MDO.Query.ParamByName('VENCIMENTO').AsString := IntToStr(xDiaVencimento)+'/'+IntToStr(xMesVencimento)+'/'+IntToStr(xAnoVencimento);

			If (xDiaVencimento>28) and (xMesVencimento=2) Then
           	MDO.Query.ParamByName('REFERENCIA').AsString := '28/02/'+IntToStr(xAnoVencimento)
			Else
           	MDO.Query.ParamByName('REFERENCIA').AsString := IntToStr(xDiaVencimento)+'/'+IntToStr(xMesVencimento)+'/'+IntToStr(xAnoVencimento);

           MDO.Query.ParamByName('HISTORICO').AsString :=edDuplicataHistorico.Text + ' - '+ xHistoricoPadrao;
			If XTipoGerador='PEDVENDA'
			Then Begin
           	MDO.Query.ParamByName('VLRSERVICO').AsCurrency := 0;
           	MDO.Query.ParamByName('VLRPRODUTO').AsCurrency := edDuplicataValor.ValueNumeric;
           	MDO.Query.ParamByName('TIPO').AsString := 'DUPLICATAPAGAMENTO';
           	MDO.Query.ParamByName('VENDAOS').AsInteger := 1;
			End
			Else Begin
           	MDO.Query.ParamByName('VLRSERVICO').AsCurrency := xValorServico;
           	MDO.Query.ParamByName('VLRPRODUTO').AsCurrency := xValorProduto;
           	MDO.Query.ParamByName('TIPO').AsString := 'DUPLICATAPAGAMENTO';
           	MDO.Query.ParamByName('VENDAOS').AsInteger := 2;
			End;
           MDO.Query.ExecSQL;
	        MDO.Transac.CommitRetaining;
           xMesVencimento:=xMesVencimento+1;
		End;
	Except
       Result := False;
	End;
End;

//Geramos o Itens CRÉDITO da conta na tabela tmp
Function TFPagamento.TmpGeraItensCredito: Boolean;
var
	xNumeroParcelaGerada: Integer;
	xDiaVencimento, xMesVencimento, xAnoVencimento: Word;
Begin
	Try
       Result:=True;
		DecodeDate(Date(), xAnoVencimento, xMesVencimento, xDiaVencimento);
       xMesVencimento:=xMesVencimento+1;
       xDiaVencimento := edCreditoVencimento.ValueInteger;

       For xNumeroParcelaGerada :=1 to edCreditoNumero.ValueInteger do
		Begin
           xCodTmp:=xCodTmp+xNumeroParcelaGerada;
			//Gerencia Vencimento
           If xMesVencimento>12
			Then Begin
               xMesVencimento:=1;
               xAnoVencimento:=xAnoVencimento+1;
			End;

           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' INSERT INTO TMP (cod_tmp, int1, INT2, desc1, desc2, data1, data2, vlr1, desc500, desc3, vlr2, vlr3) ');
           MDO.Query.SQL.Add(' VALUES (:cod_tmp, :VENDAOS, :CodigoGerador, :NUMPARCELA, :NUMBOLETO, :VENCIMENTO, :REFERENCIA, :VALOR, :HISTORICO, :TIPO, :VLRPRODUTO, :VLRSERVICO) ');
           MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTmp;
           MDO.Query.ParamByName('CodigoGerador').AsInteger := xCodigoPedido;
           MDO.Query.ParamByName('NUMPARCELA').AsString := xNumeroDocumento+':'+IntToStr(xNumeroParcelaGerada)+'/'+edCreditoNumero.Text;
           MDO.Query.ParamByName('NUMBOLETO').AsString := EdCreditoAutorizacao.Text;
           MDO.Query.ParamByName('VALOR').AsCurrency := edCreditoValor.ValueNumeric;

			If (xDiaVencimento>28) and (xMesVencimento=2) Then
           	MDO.Query.ParamByName('VENCIMENTO').AsString := '28/02/'+IntToStr(xAnoVencimento)
			Else
           	MDO.Query.ParamByName('VENCIMENTO').AsString := IntToStr(xDiaVencimento)+'/'+IntToStr(xMesVencimento)+'/'+IntToStr(xAnoVencimento);

			If (xDiaVencimento>28) and (xMesVencimento=2) Then
           	MDO.Query.ParamByName('REFERENCIA').AsString := '28/02/'+IntToStr(xAnoVencimento)
			Else
           	MDO.Query.ParamByName('REFERENCIA').AsString := IntToStr(xDiaVencimento)+'/'+IntToStr(xMesVencimento)+'/'+IntToStr(xAnoVencimento);

           MDO.Query.ParamByName('HISTORICO').AsString := edCreditoHistorico.Text + ' - '+ xHistoricoPadrao;
			If XTipoGerador='PEDVENDA'
			Then Begin
           	MDO.Query.ParamByName('VLRSERVICO').AsCurrency := 0;
           	MDO.Query.ParamByName('VLRPRODUTO').AsCurrency := edCreditoValor.ValueNumeric;
           	MDO.Query.ParamByName('TIPO').AsString := 'CREDITOPAGAMENTO';
           	MDO.Query.ParamByName('VENDAOS').AsInteger := 1;
			End
			Else Begin
           	MDO.Query.ParamByName('VLRSERVICO').AsCurrency := xValorServico;
           	MDO.Query.ParamByName('VLRPRODUTO').AsCurrency := xValorProduto;
           	MDO.Query.ParamByName('TIPO').AsString := 'CREDITOPAGAMENTO';
           	MDO.Query.ParamByName('VENDAOS').AsInteger := 2;
			End;
           MDO.Query.ExecSQL;
	        MDO.Transac.CommitRetaining;
           xMesVencimento:=xMesVencimento+1;
		End;
	Except
       Result := False;
	End;
End;

//Geramos o Itens Parcela de cheque da conta na tabela tmp
Function TFPagamento.TmpGeraItensCheque: Boolean;
var
	xNumeroParcelaGerada: Integer;
	xDiaVencimento, xMesVencimento, xAnoVencimento: Word;
Begin
	Try
       Result:=True;
		DecodeDate(Date(), xAnoVencimento, xMesVencimento, xDiaVencimento);
       xMesVencimento:=xMesVencimento+1;
       xDiaVencimento := edChequeVencimento.ValueInteger;

       For xNumeroParcelaGerada :=1 to edChequeNumero.ValueInteger do
		Begin
           xCodTmp:=xCodTmp+xNumeroParcelaGerada;
			//Gerencia Vencimento
           If xMesVencimento>12
			Then Begin
               xMesVencimento:=1;
               xAnoVencimento:=xAnoVencimento+1;
			End;

           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' INSERT INTO TMP (cod_tmp, int1, INT2, desc1, desc2, data1, data2, vlr1, desc500, desc3, vlr2, vlr3) ');
           MDO.Query.SQL.Add(' VALUES (:cod_tmp, :VENDAOS, :CodigoGerador, :NUMPARCELA, :NUMBOLETO, :VENCIMENTO, :REFERENCIA, :VALOR, :HISTORICO, :TIPO, :VLRPRODUTO, :VLRSERVICO) ');
           MDO.Query.ParamByName('cod_tmp').AsInteger := xCodTmp;
           MDO.Query.ParamByName('CodigoGerador').AsInteger := xCodigoPedido;
           MDO.Query.ParamByName('NUMPARCELA').AsString := xNumeroDocumento+':'+IntToStr(xNumeroParcelaGerada)+'/'+edChequeNumero.Text;
           MDO.Query.ParamByName('NUMBOLETO').AsString := '';
           MDO.Query.ParamByName('VALOR').AsCurrency := edChequeValor.ValueNumeric;

			If (xDiaVencimento>28) and (xMesVencimento=2) Then
           	MDO.Query.ParamByName('VENCIMENTO').AsString := '28/02/'+IntToStr(xAnoVencimento)
			Else
           	MDO.Query.ParamByName('VENCIMENTO').AsString := IntToStr(xDiaVencimento)+'/'+IntToStr(xMesVencimento)+'/'+IntToStr(xAnoVencimento);

			If (xDiaVencimento>28) and (xMesVencimento=2) Then
           	MDO.Query.ParamByName('REFERENCIA').AsString := '28/02/'+IntToStr(xAnoVencimento)
			Else
           	MDO.Query.ParamByName('REFERENCIA').AsString := IntToStr(xDiaVencimento)+'/'+IntToStr(xMesVencimento)+'/'+IntToStr(xAnoVencimento);

           MDO.Query.ParamByName('HISTORICO').AsString := edChequeHistorico.Text + ' - ' + xHistoricoPadrao;
			If XTipoGerador='PEDVENDA'
			Then Begin
           	MDO.Query.ParamByName('VLRSERVICO').AsCurrency := 0;
           	MDO.Query.ParamByName('VLRPRODUTO').AsCurrency := edChequeValor.ValueNumeric;
           	MDO.Query.ParamByName('TIPO').AsString := 'CHEQUEPAGAMENTO';
           	MDO.Query.ParamByName('VENDAOS').AsInteger := 1;
			End
			Else Begin
           	MDO.Query.ParamByName('VLRSERVICO').AsCurrency := xValorServico;
           	MDO.Query.ParamByName('VLRPRODUTO').AsCurrency := xValorProduto;
           	MDO.Query.ParamByName('TIPO').AsString := 'CHEQUEPAGAMENTO';
           	MDO.Query.ParamByName('VENDAOS').AsInteger := 2;
			End;
           MDO.Query.ExecSQL;
	        MDO.Transac.CommitRetaining;
           xMesVencimento:=xMesVencimento+1;
		End;
	Except
       Result := False;
	End;
End;

//Alteramos o Itens Parcela da conta na tabela tmp
Function TFPagamento.TmpEditaItensDuplicata: Boolean;
Begin
	Try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE TMP SET desc1 = :NUMPARCELA, desc2 = :NUMBOLETO, data1 = :VENCIMENTO, data2 = :REFERENCIA, vlr1 = :VALOR, desc500 = :HISTORICO, desc3 = :TIPO ');
           MDO.Query.SQL.Add(' Where tmp.cod_tmp=:codigotmp ');
           MDO.Query.ParamByName('codigotmp').AsInteger:=xCodigoParcelaEditada;
           MDO.Query.ParamByName('NUMPARCELA').AsString := EdDocumentoEditaParcela.Text;
           MDO.Query.ParamByName('NUMBOLETO').AsString := EdBoletoEditaParcela.Text;
           MDO.Query.ParamByName('VALOR').AsCurrency := EdValorEditaParcela.ValueNumeric;
           MDO.Query.ParamByName('VENCIMENTO').AsString := EdVencimentoEditaParcela.Text;
           MDO.Query.ParamByName('REFERENCIA').AsString := EdReferenciaEditaParcela.Text;
           MDO.Query.ParamByName('HISTORICO').AsString := EdHistoricoEditaParcela.Text;
         	MDO.Query.ParamByName('TIPO').AsString := 'DUPLICATAPAGAMENTO';
           MDO.Query.ExecSQL;

           MDO.Transac.CommitRetaining;
	Except
       Result := False;
	End;
End;

//Alteramos o Itens de credito da conta na tabela tmp
Function TFPagamento.TmpEditaItensCredito: Boolean;
Begin
	Try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE TMP SET desc1 = :NUMPARCELA, desc2 = :AUTORIZACAO, data1 = :VENCIMENTO, data2 = :REFERENCIA, vlr1 = :VALOR, desc500 = :HISTORICO, desc3 = :TIPO ');
           MDO.Query.SQL.Add(' Where tmp.cod_tmp=:codigotmp ');
           MDO.Query.ParamByName('codigotmp').AsInteger:=xCodigoParcelaEditada;
           MDO.Query.ParamByName('NUMPARCELA').AsString := EdDocumentoEditaCredito.Text;
           MDO.Query.ParamByName('AUTORIZACAO').AsString := EdAutorizacaoEditaCredito.Text;
           MDO.Query.ParamByName('VALOR').AsCurrency := EdValorEditaCredito.ValueNumeric;
           MDO.Query.ParamByName('VENCIMENTO').AsString := EdVencimentoEditaCredito.Text;
           MDO.Query.ParamByName('REFERENCIA').AsString := EdReferenciaEditaCredito.Text;
           MDO.Query.ParamByName('HISTORICO').AsString := EdHistoricoEditaCredito.Text;
         	MDO.Query.ParamByName('TIPO').AsString := 'CREDITOPAGAMENTO';
           MDO.Query.ExecSQL;

           MDO.Transac.CommitRetaining;
	Except
       Result := False;
	End;
End;

//Alteramos o Item de cheque recebido para marcado
Function TFPagamento.TmpEditaChequeTrocoMarcado: Boolean;
	Var
	xMarcacao: String;
Begin
	Try
		If DMMACS.TALX.FieldByName('MARK').AsString='T' Then
           xMarcacao:=''
		Else
           xMarcacao:='T';

           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' update movbanco set movbanco.mark=:NovaMarcacao where movbanco.cod_movbanco=:Codigo ');
           MDO.Query.ParamByName('Codigo').AsInteger:=xCodigoChequeTroco;
           MDO.Query.ParamByName('NovaMarcacao').AsString:=xMarcacao;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;
           FiltraChequesParaTroco;
           FiltraTrocoTotal;
	Except
       Result := False;
	End;
End;

//Verifica se o caixa escolhido esta aberto ou fechado
Function TFPagamento.VerificaCaixaAberto: Boolean;
Begin
	Try
   	DMCAIXA.TAlx.Close;
       DMCAIXA.TAlx.SQL.Clear;
       DMCAIXA.TAlx.SQL.Add('SELECT * FROM ABCAIXA WHERE (COD_CAIXA=:CODCAIXA) AND (FECHADO='+#39+'N'+#39+')');
       DMCAIXA.TAlx.ParamByName('CODCAIXA').AsInteger := xCodigoCaixa;
       DMCAIXA.TAlx.Open;
       If NOT DMCAIXA.TAlx.IsEmpty
       Then Begin
       	Result:=True;//caixa aberto
           LTrocoStatusCaixa.Caption := 'A B E R T O';
           xCodigoAbCaixa := DMCAIXA.TAlx.FieldByName('COD_ABCAIXA').AsInteger
		End
		Else Begin
       	Result:=False;//caixa aberto
           LTrocoStatusCaixa.Caption := 'F E C H A D O';
			xCodigoAbCaixa := -1;
		End;
       FiltraTrocoTotal;
   Except
	End;
End;

//Desmarcar todos os cheques
Function TFPagamento.DesmarcarChequesTrocoMarcado: Boolean;
Begin
	Try
   	MDO.Query.Close;
   	MDO.Query.SQL.Clear;
   	MDO.Query.SQL.Add(' update movbanco set movbanco.mark=0 where movbanco.mark=' +#39 + 'T' +#39 );
   	MDO.Query.ExecSQL;
   	MDO.Transac.CommitRetaining;
	Except
       Result := False;
	End;
End;

//Alteramos o Itens Cheque da conta na tabela tmp
Function TFPagamento.TmpEditaItensCheque: Boolean;
Begin
	Try
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' UPDATE TMP SET desc1 = :NUMPARCELA, desc2 = :NUMBOLETO, data1 = :VENCIMENTO, data2 = :REFERENCIA, vlr1 = :VALOR, desc500 = :HISTORICO, desc3 = :TIPO, INT3= :COD_BANCO ');
           MDO.Query.SQL.Add(' Where tmp.cod_tmp=:codigotmp ');
           MDO.Query.ParamByName('codigotmp').AsInteger:=xCodigoParcelaEditada;
           MDO.Query.ParamByName('NUMPARCELA').AsString := EdChequeEditadoDocumento.Text;
           MDO.Query.ParamByName('NUMBOLETO').AsString := EdChequeEditadoCheque.Text;
           MDO.Query.ParamByName('VALOR').AsCurrency := EdChequeEditadoValor.ValueNumeric;
           MDO.Query.ParamByName('VENCIMENTO').AsString := EdChequeEditadoVencimento.Text;
           MDO.Query.ParamByName('REFERENCIA').AsString := EdChequeEditadoReferencia.Text;
           MDO.Query.ParamByName('HISTORICO').AsString := EdChequeEditadoHistorico.Text;
           MDO.Query.ParamByName('COD_BANCO').AsInteger := xCodigoBanco;
         	MDO.Query.ParamByName('TIPO').AsString := 'CHEQUEPAGAMENTO';
           MDO.Query.ExecSQL;

           MDO.Transac.CommitRetaining;
	Except
       Result := False;
	End;
End;

//Função para filtrar e somar os resultados de dulicatas
Function TFPagamento.FiltraSomaDuplicatas: Boolean;
var
	xSqlFiltraSomaDuplicatas: String;
Begin
	Try
       Result := True;

       xSqlFiltraSomaDuplicatas:= ' Where (tmp.desc3 = ''DUPLICATAPAGAMENTO'') ';
		If XTipoGerador = 'PEDVENDA' Then
       	xSqlFiltraSomaDuplicatas := xSqlFiltraSomaDuplicatas + ' and (tmp.int1=1) '
		else
       	xSqlFiltraSomaDuplicatas := xSqlFiltraSomaDuplicatas + ' and (tmp.int1=2) ';

       MDO.Transac.CommitRetaining;
       MDO.QView.Close;
       MDO.QView.SQL.Clear;
       MDO.QView.SQL.Add(' Select * from tmp ');
       MDO.QView.Open;

		//Filtro para retornar o valor total em duplicatas
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' Select sum(tmp.vlr1) AS TOTALDUPLICATA from Tmp');
       MDO.Query.SQL.Add( xSqlFiltraSomaDuplicatas + '  and (tmp.int2=:Codigo) ');
       MDO.Query.ParamByName('Codigo').AsInteger := xCod_PedidoPagamento;
       MDO.Query.SQL.Text;
       MDO.Query.Open;
       xValorDuplicata:=MDO.Query.fieldbyname('TOTALDUPLICATA').AsCurrency;

		//Filtro para popular o dbgrid
       MDO.QView.Close;
       MDO.QView.SQL.Clear;
       MDO.QView.SQL.Add(' Select tmp.cod_tmp, tmp.desc1 as NUMPARCELA, tmp.desc2 as NUMBOLETO, tmp.data1 as VENCIMENTO, tmp.data2 as REFERENCIA,');
       MDO.QView.SQL.Add(' tmp.vlr1 as VALOR, tmp.desc500 as HISTORICO, tmp.desc3 as TIPO from Tmp');
       MDO.QView.SQL.Add( xSqlFiltraSomaDuplicatas  + '  and (tmp.int2=:Codigo) ' );
       MDO.QView.ParamByName('Codigo').AsInteger := xCod_PedidoPagamento;
       MDO.QView.SQL.Text;
       MDO.QView.Open;
	Except
		Result := False;
	End;
End;

//Função para filtrar e somar os resultados de credito
Function TFPagamento.FiltraSomaCredito: Boolean;
var
	xSqlFiltraSomaDuplicatas: String;
Begin
	Try
       Result := True;

       xSqlFiltraSomaDuplicatas:= ' Where (tmp.desc3 = ''CREDITOPAGAMENTO'') ';
		If XTipoGerador = 'PEDVENDA' Then
       	xSqlFiltraSomaDuplicatas := xSqlFiltraSomaDuplicatas + ' and (tmp.int1=1) '
		else
       	xSqlFiltraSomaDuplicatas := xSqlFiltraSomaDuplicatas + ' and (tmp.int1=2) ';

       MDO.Transac.CommitRetaining;
       MDO.QView.Close;
       MDO.QView.SQL.Clear;
       MDO.QView.SQL.Add(' Select * from tmp ');
       MDO.QView.Open;

		//Filtro para retornar o valor total em duplicatas
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' Select sum(tmp.vlr1) AS TOTALDUPLICATA from Tmp');
       MDO.Query.SQL.Add( xSqlFiltraSomaDuplicatas + '  and (tmp.int2=:Codigo) ');
       MDO.Query.ParamByName('Codigo').AsInteger := xCod_PedidoPagamento;
       MDO.Query.SQL.Text;
       MDO.Query.Open;
       xValorCredito:=MDO.Query.fieldbyname('TOTALDUPLICATA').AsCurrency;

		//Filtro para popular o dbgrid
       MDO.QView.Close;
       MDO.QView.SQL.Clear;
       MDO.QView.SQL.Add(' Select tmp.cod_tmp, tmp.desc1 as NUMPARCELA, tmp.desc2 as NUMBOLETO, tmp.data1 as VENCIMENTO, tmp.data2 as REFERENCIA,');
       MDO.QView.SQL.Add(' tmp.vlr1 as VALOR, tmp.desc500 as HISTORICO, tmp.desc3 as TIPO from Tmp');
       MDO.QView.SQL.Add( xSqlFiltraSomaDuplicatas  + '  and (tmp.int2=:Codigo) ' );
       MDO.QView.ParamByName('Codigo').AsInteger := xCod_PedidoPagamento;
       MDO.QView.SQL.Text;
       MDO.QView.Open;
	Except
		Result := False;
	End;
End;

//Função para filtrar e somar os resultados de Cheques
Function TFPagamento.FiltraSomaCheques: Boolean;
var
	xSqlFiltraSomaDuplicatas: String;
Begin
	Try
       Result := True;

       xSqlFiltraSomaDuplicatas:= ' Where (tmp.desc3 = ''CHEQUEPAGAMENTO'') ';
		If XTipoGerador = 'PEDVENDA' Then
       	xSqlFiltraSomaDuplicatas := xSqlFiltraSomaDuplicatas + ' and (tmp.int1=1) '
		else
       	xSqlFiltraSomaDuplicatas := xSqlFiltraSomaDuplicatas + ' and (tmp.int1=2) ';

       MDO.Transac.CommitRetaining;
       MDO.QView.Close;
       MDO.QView.SQL.Clear;
       MDO.QView.SQL.Add(' Select * from tmp ');
       MDO.QView.Open;

		//Filtro para retornar o valor total em cheques
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' Select sum(tmp.vlr1) AS TOTALDUPLICATA from Tmp ');
       MDO.Query.SQL.Add( xSqlFiltraSomaDuplicatas + '  and (tmp.int2 = :Codigo) and (tmp.desc2 <> ' +#39 +#39+')  ');
       MDO.Query.SQL.Text;
       MDO.Query.ParamByName('Codigo').AsInteger := xCod_PedidoPagamento;
       MDO.Query.SQL.Text;
       MDO.Query.Open;
       xValorCheque:=MDO.Query.fieldbyname('TOTALDUPLICATA').AsCurrency;

		//Filtro para popular o dbgrid
       MDO.QView.Close;
       MDO.QView.SQL.Clear;
       MDO.QView.SQL.Add(' Select tmp.cod_tmp, tmp.desc1 as NUMPARCELA, tmp.desc2 as Cheque, tmp.data1 as VENCIMENTO, tmp.data2 as REFERENCIA,');
       MDO.QView.SQL.Add(' tmp.vlr1 as VALOR, tmp.desc500 as HISTORICO, tmp.desc3 as TIPO from Tmp');
       MDO.QView.SQL.Add( xSqlFiltraSomaDuplicatas  + '  and (tmp.int2=:Codigo) ' );
       MDO.QView.ParamByName('Codigo').AsInteger := xCod_PedidoPagamento;
       MDO.QView.SQL.Text;
       MDO.QView.Open;
	Except
		Result := False;
	End;
End;

//Função para filtrar valores totais de troco
Function TFPagamento.FiltraTrocoTotal: Boolean;
Begin
	Try
       Result := True;
       Result := True;
       DMMACS.Transaction.CommitRetaining;

       DMMACS.TALX.Close;
		DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' select sum(vwchequerec.valor) VALORCHEQUETROCO from vwchequerec ') ;
       DMMACS.TALX.SQL.Add(' left join movbanco on vwchequerec.cod_movbanco = movbanco.cod_movbanco ');
       DMMACS.TALX.SQL.Add(' Where (vwchequerec.fech=''N'') and (movbanco.mark=''T'') ');
       DMMACS.TALX.Open;
       xValorChequeTroco := DMMACS.TALX.FieldByName('VALORCHEQUETROCO').AsCurrency;
       LTrocoTotalCheque.Caption := 'R$ ' + FormatFloat('0.00', xValorChequeTroco);

       xValorTrocoGeral := xValorChequeTroco + EdTrocoDinheiro.ValueNumeric;
       LTrocoTotalGeral.Caption := 'R$ '+FormatFloat('0.00', xValorTrocoGeral);


       DMMACS.TALX.Close;
		DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add(' select movbanco.cod_movbanco, movbanco.mark, vwchequerec.numcheque, vwchequerec.valor, vwchequerec.emitente from vwchequerec ');
       DMMACS.TALX.SQL.Add(' left join movbanco on vwchequerec.cod_movbanco = movbanco.cod_movbanco ');
       DMMACS.TALX.SQL.Add(' Where (vwchequerec.fech=''N'') ');
       DMMACS.TALX.Open;
	Except
		Result := False;
	End;
End;

////Função para iniciar os pagamentos
Function TFPagamento.IniciaPagamento: Boolean;
Begin
	Try
       xControleFechaTela := False;
		//Inicializa aqui todas as chaves estrangeiras temporarias
		xCodigoCtaCorrente  := -1;
		xCodigoMovimentoBancario  := -1;
		xCodigoCheque := -1;
		xCodigoAbCaixa  := -1;
		xCodigoAbBanco  := -1;
		xCodigoChequeTroco  := -1;
		xCodigoOperadoraCredito  := -1;
		xCodigoOperadoraDebito := -1;
		xCodigoCtaReceber   := -1;
		xCodigoParcela  := -1;
		xCodigoCliente  := -1;
		xCodigoFormaPagamento := -1;
		xCodigoVendedor  := -1;
		xCodigoParcelaEditada  := -1;
		xCodTmp  := -1;

		//Confirmamos os commits de ordem de serviços e venda
       DmServ.IBT.CommitRetaining;
       DmSaida.IBT.CommitRetaining;
       MDO.Transac.CommitRetaining;

       xResultadoPagamento := False;

		ResetaValores;
       DesmarcarChequesTrocoMarcado;
       xTrocoValidado:=false;

		xCodigoPedido := xCod_PedidoPagamento;
       XTipoGerador := xTipoPedidoPagamento;

       //Selecionamos banco
		edBancoSelecionado.Text:=DMBANCO.WCtaCor.FieldByName('NUMCTACOR').AsString+': '+DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
       If DMBANCO.VerifAbBanco = True Then
           LTrocoStatusBanco.Caption:='A B E R T O'
		Else
           LTrocoStatusBanco.Caption:='F E C H A D O';
       xCodigoCtaCorrente := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
       xCodigoAbBanco :=  StrToInt(FMenu.LABBANCO.Caption);

		//Selecionamos o caixa
    	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
       edCaixaSelecionado.Text:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
		xCodigoCaixa := DMCAIXA.TCaixa.FieldByName('cod_caixa').AsInteger;
       VerificaCaixaAberto;

		//Controla as possibilidades de abrir pagamentos
       MDO.Transac.CommitRetaining;
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
		If xTipoPedidoPagamento = 'PEDVENDA'
		Then Begin
           MDO.Query.SQL.Add(' select vwpedv.cod_pedvenda, pedvenda.EDIT as USO, vwpedv.cod_cliente as CodigoCliente, vwpedv.nomecli as cliente, vwpedv.cod_vendedor as CodigoVendedor, vwpedv.numped as NumeroDocumento,  ');
           MDO.Query.SQL.Add(' vwpedv.cod_formpag as CodigoFormaPagamento, vwpedv.situacao as SITUACAO, vwpedv.cod_pedvenda as CODIGO, vwpedv.numped as NUMERO, vwpedv.valor AS TOTAL from vwpedv ');
       	MDO.Query.SQL.Add(' left join pedvenda on vwpedv.cod_pedvenda = pedvenda.cod_pedvenda where vwpedv.cod_pedvenda = :codigo  ');
           MDO.Query.ParamByName('CODIGO').AsInteger := xCod_PedidoPagamento;
           XTipoGerador := 'PEDVENDA';
		End;
		If xTipoPedidoPagamento = 'ORDEM'
		Then Begin
           MDO.Query.SQL.Add('   select vwordem.cod_ordem, ordem.Edit as USO,  vwordem.cod_cliente as CodigoCliente, vwordem.cliente as cliente, vwordem.cod_vendedor as CodigoVendedor, vwordem.numero as NumeroDocumento, ');
           MDO.Query.SQL.Add('    vwordem.formapag as CodigoFormaPagamento, vwordem.status as SITUACAO, vwordem.cod_ordem as CODIGO, vwordem.numero as NUMERO, vwordem.total  AS TOTAL, ordem.totprod as TOTALPRODUTO, ordem.totserv as TOTALSERVICO ');
           MDO.Query.SQL.Add('    from vwordem ');
           MDO.Query.SQL.Add('    left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
           MDO.Query.SQL.Add('    where vwordem.cod_ordem = :codigo ');
           MDO.Query.ParamByName('CODIGO').AsInteger := xCod_PedidoPagamento;
           XTipoGerador := 'ORDEM';
		End;
       MDO.Query.SQL.Text;
		MDO.Query.Open;

		If not MDO.Query.IsEmpty
		Then Begin
			lTitulo.Caption := 'Pedido nº '+MDO.Query.FieldByName('NUMERO').AsString+' Cliente: '+ MDO.Query.FieldByName('cliente').AsString;
           xValorTotalPagar := MDO.Query.FieldByName('TOTAL').AsCurrency;
		End;

		If XTipoGerador = 'PEDVENDA'
		Then Begin
           xValorProduto :=  MDO.Query.FieldByName('TOTAL').AsCurrency;
           xValorServico := 0;
           xPercentualServico := 0;
			xCodigoFormaPagamento := MDO.Query.FieldByName('CodigoFormaPagamento').AsInteger;
		End
		Else Begin
           xValorProduto := MDO.Query.FieldByName('TOTALPRODUTO').AsCurrency;
           xValorServico := MDO.Query.FieldByName('TOTALSERVICO').AsCurrency;
			If xValorServico>0 Then
               xPercentualServico :=  (xValorServico / xValorTotalPagar) * 100;
			If xPercentualServico<0 Then
           	xPercentualServico := 0;
			xCodigoFormaPagamento := DMFINANC.TFormPag.FieldByName('cod_formpag').AsInteger;
		End;
       //Libera todas as operadoras de cartão
       FiltraTabela(DMFINANC.TCartao, 'CARTAO', '', '', '');

		//Inicia codigos de chave primaria
       xCodigoCliente := MDO.Query.FieldByName('CodigoCliente').AsInteger;
       xCodigoVendedor := MDO.Query.FieldByName('CodigoVendedor').AsInteger;
       xNumeroDocumento :=  MDO.Query.FieldByName('NumeroDocumento').AsString;
		xHistoricoPadrao := 'Pagamento Nº ' + xNumeroDocumento + ' Cliente: '+MDO.Query.FieldByName('cliente').AsString+' ';

		//Alex 20/05/2017 - Chamada do metodo para printar os valores
       SomaGeral;
	Except

	End;
End;
//Função para efetuar Somatorios
Function TFPagamento.SomaGeral: Boolean;
Begin
	Try
		//Soma Valores de Dinheiro
       xValorDinheiro := edDinheiroValor.ValueNumeric;

		//Soma Valores de Débito
		If (edDebitoValor.ValueNumeric >0) and (xCodigoOperadoraDebito >0) and (Trim(edDebitoAutorizacao.Text)<>'') Then
       	xValorDebito := edDebitoValor.ValueNumeric
		else
       	xValorDebito := 0;

		//Soma Valores de Débito
       xValorBanco := edBancoValor.ValueNumeric;

		//Soma todos os valores Gerais
       xValorTotalPago :=  xValorDinheiro + xValorDuplicata + xValorCheque + xValorBanco + xValorDebito + xValorCredito;

		//Calcula Falta
		xValorFalta := xValorTotalPagar - xValorTotalPago;
		if xValorFalta < 0 Then
           xValorFalta := 0;

		//Calcula valor troco
		xValorTroco := xValorTotalPago - xValorTotalPagar;
		if xValorTroco < 0 Then
           xValorTroco := 0;
		If xValorTroco>0 Then
           btnTroco.Enabled:=True
		Else
           btnTroco.Enabled:=False;

		//Escreve todos os valores
       lTotalDinheiro.Caption := FormatFloat('0.00', xValorDinheiro);
       lTotalDuplicata.Caption := FormatFloat('0.00', xValorDuplicata);
       lTotalCheque.Caption := FormatFloat('0.00', xValorCheque);
       lTotalBanco.Caption := FormatFloat('0.00', xValorBanco);
       lTotalDebito.Caption := FormatFloat('0.00', xValorDebito);
       lTotalCredito.Caption := FormatFloat('0.00', xValorCredito);

       lTotalPagar.Caption := 'TOTAL A PAGAR: R$ ' + FormatFloat('0.00', xValorTotalPagar);
       lTotalPago.Caption := 'TOTAL PAGO: R$ ' + FormatFloat('0.00', xValorTotalPago);
       lFalta.Caption := 'FALTA: R$ ' + FormatFloat('0.00', xValorFalta);
       lTroco.Caption := 'TROCO: R$ ' + FormatFloat('0.00', xValorTroco);
	Except
	End;
End;
//Função utilizada para limpar a tabela temporaria
Function TFPagamento.LimpaTabelaTmp: Boolean;
Begin
	Try
       MDO.Query.close;
       MDO.Query.SQL.Clear;
		MDO.Query.SQL.add(' Delete from tmp ');
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
	Except
       MDO.Transac.RollbackRetaining;
       Close;
	End;
End;

//Função utilizada para limpar as duplicatas temporárias
Function TFPagamento.LimpaDuplicatasTmp: Boolean;
Begin
	Try
       MDO.Query.close;
       MDO.Query.SQL.Clear;
		MDO.Query.SQL.add('  delete from tmp where tmp.desc3 = ''DUPLICATAPAGAMENTO'' ');
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
	Except
       MDO.Transac.RollbackRetaining;
       Close;
	End;
End;

//Função utilizada para limpar os créditos temporários
Function TFPagamento.LimpaCreditosTmp: Boolean;
Begin
	Try
       MDO.Query.close;
       MDO.Query.SQL.Clear;
		MDO.Query.SQL.add('  delete from tmp where tmp.desc3 = ''CREDITOPAGAMENTO'' ');
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
	Except
       MDO.Transac.RollbackRetaining;
       Close;
	End;
End;

//Função utilizada para limpar os cheques temporárias
Function TFPagamento.LimpaChequesTmp: Boolean;
Begin
	Try
       MDO.Query.close;
       MDO.Query.SQL.Clear;
		MDO.Query.SQL.add('  delete from tmp where tmp.desc3 = ''CHEQUEPAGAMENTO'' ');
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
	Except
       MDO.Transac.RollbackRetaining;
       Close;
	End;
End;

//Função para reiniciar todos os valores
Function TFPagamento.ResetaValores: Boolean;
Begin
	Try
       Result := True;

		//Reseta totalizadores
		xValorTotalPagar := 0;
		xValorTotalPago  := 0;
		xValorFalta   := 0;
		xValorTroco   := 0;
		xValorProduto  := 0;
		xValorServico   := 0;
		xPercentualServico:=0;
		xAuxiliarValorTrocoGeral := '0';
		xAuxiliarValorTrocoPago := '0';

		xValorTrocoGeral:=0;
		xValorChequeTroco:=0;
		xValorDinheiro:=0;
		xValorDuplicata:=0;
		xValorCheque:=0;
		xValorBanco:=0;
		xValorDebito:=0;
		xValorCredito:=0;

       lTotalPagar.Caption :=  'TOTAL A PAGAR: R$ 0,00';
   	lTotalPago.Caption := 'TOTAL PAGO: 0,00';
       lFalta.Caption := 'FALTA: 0,00';
       lTroco.Caption := 'TROCO: 0,00';
       lTotalDinheiro.Caption := '0,00';
       lTotalDuplicata.Caption := '0,00';
       lTotalCheque.Caption := '0,00';
       lTotalBanco.Caption := '0,00';
       lTotalDebito.Caption := '0,00';
       lTotalCredito.Caption := '0,00';

		//Reseta valores referente a dinheiro;
       edDinheiroValor.ValueNumeric := 0;
       edDinheiroHistorico.Text := '';

		//Reseta valores referente a Duplicatas
       edDuplicataNumero.ValueNumeric := 0;
       edDuplicataHistorico.Text := '';
       edDuplicataValor.ValueNumeric := 0;
       edDuplicataVencimento.ValueNumeric := 0;

		//reseta valore de Cheque
       edChequeNumero.ValueNumeric := 0;
       edChequeHistorico.Text := '';
       edChequeValor.ValueNumeric := 0;
       edChequeVencimento.ValueNumeric := 0;

		//reseta valores de banco
       edBancoValor.ValueNumeric := 0;
       edBancoHistorico.Text := '';

		//reseta valores de cartão de débito
       edDebitoValor.ValueNumeric := 0;
       edDebitoHistorico.Text := '';

		//reseta valores de cartão de crédito
       edCreditoNumero.ValueNumeric := 0;
       edCreditoHistorico.Text :='';
		edCreditoValor.ValueNumeric := 0;
       edCreditoVencimento.ValueNumeric := 0;
       edDebitoHistorico.Text := '';

       edDebitoCartao.Text := '<ENTER>';
       edDebitoAutorizacao.Text := '';
	Except
       Result := False;
	End;
End;
//Função para ativar botão e paineis
Function TFPagamento.PressionaBotao(xBotao: String): Boolean;
Begin
	Try
       Result := True;
       lDinheiro.Color := clBtnFace;
       lDuplicata.Color := clBtnFace;
       lCheque.Color := clBtnFace;
       lBanco.Color := clBtnFace;
       lDebito.Color := clBtnFace;
       lCredito.Color := clBtnFace;

       PEditaParcela.Visible:=false;
       PEditaCheque.Visible:=false;

		pControlDinheiro.Visible := false;
		pControlDuplicata.Visible := false;
		pControlCheque.Visible := false;
		pControlBanco.Visible := false;
		pControlCartaoDebito.Visible := false;
		pControlCartaoCredito.Visible := false;

       PTroco.Visible := False;

		//Desabilita grids
       dbgDuplicatas.DataSource := nil;
		//Controla para ativar
		if xBotao = 'DINHEIRO'
		Then Begin
           pControlDinheiro.Visible := True;
			pControlDinheiro.BringToFront;
           edDinheiroValor.SetFocus;
           lDinheiro.Color :=  clMoneyGreen;
		End;

		if xBotao = 'DUPLICATA'
		Then Begin
           pControlDuplicata.Visible := True;
			pControlDuplicata.BringToFront;
           edDuplicataNumero.SetFocus;
           lDuplicata.Color :=  clMoneyGreen;
           FiltraSomaDuplicatas;
       	dbgDuplicatas.DataSource := MDO.DView;
		End;

		if xBotao = 'CHEQUE'
		Then Begin
           pControlCheque.Visible := True;
			pControlCheque.BringToFront;
           edChequeNumero.SetFocus;
           lCheque.Color :=  clMoneyGreen;
		End;

		if xBotao = 'BANCO'
		Then Begin
           pControlBanco.Visible := True;
			pControlBanco.BringToFront;
           edBancoValor.SetFocus;
           lBanco.Color :=  clMoneyGreen;
		End;

		if xBotao = 'DEBITO'
		Then Begin
           pControlCartaoDebito.Visible := True;
			pControlCartaoDebito.BringToFront;
           edDebitoValor.SetFocus;
           lDebito.Color :=  clMoneyGreen;
		End;

		if xBotao = 'CREDITO'
		Then Begin
           pControlCartaoCredito.Visible := True;
			pControlCartaoCredito.BringToFront;
           edCreditoNumero.SetFocus;
           lCredito.Color :=  clMoneyGreen;
		End;
	Except
       Result := false;
	End;
End;
procedure TFPagamento.FormActivate(Sender: TObject);
begin
   LimpaTabelaTmp;
	IniciaPagamento;
   PressionaBotao('DINHEIRO');
	btnRecalcular.Click;
	If xControleFechaTela = True Then
       Close;
end;

procedure TFPagamento.SpeedButton1Click(Sender: TObject);
begin
   PressionaBotao('DINHEIRO');
	FiltraSomaDuplicatas;
   SomaGeral;
end;

procedure TFPagamento.SpeedButton2Click(Sender: TObject);
begin
   PressionaBotao('DUPLICATA');
	FiltraSomaDuplicatas;
	SomaGeral;
end;

procedure TFPagamento.SpeedButton3Click(Sender: TObject);
begin
   PressionaBotao('CHEQUE');
	FiltraSomaCheques;
	SomaGeral;
end;

procedure TFPagamento.SpeedButton4Click(Sender: TObject);
begin
   PressionaBotao('BANCO');
	FiltraSomaDuplicatas;
	SomaGeral;
end;

procedure TFPagamento.SpeedButton5Click(Sender: TObject);
begin
   PressionaBotao('DEBITO');
	FiltraSomaDuplicatas;
	SomaGeral;
end;

procedure TFPagamento.SpeedButton6Click(Sender: TObject);
begin
   PressionaBotao('CREDITO');
	FiltraSomaCredito;
	SomaGeral;
end;

procedure TFPagamento.btnRecalcularClick(Sender: TObject);
begin
   SomaGeral;
end;

procedure TFPagamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If key = VK_RETURN
	Then Begin
       btnRecalcular.Click;
	End;
end;

procedure TFPagamento.POperadoraCartaoExit(Sender: TObject);
begin
	if POperadoraCartao.Visible = true Then
       dbgCartao.SetFocus;
end;

procedure TFPagamento.edDebitoCartaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If Key = VK_RETURN
	Then Begin
       POperadoraCartao.Visible := true;
       POperadoraCartao.BringToFront;
       POperadoraCartao.Left := 32;
       POperadoraCartao.Top := 432;
       dbgCartao.SetFocus;
	End;
end;

procedure TFPagamento.dbgCartaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If Key = VK_RETURN
	Then Begin
       POperadoraCartao.Visible:=false;
		If pControlCartaoDebito.Visible
		Then Begin
       	edDebitoCartao.Text := DMFINANC.TCartao.FieldByName('DESCRICAO').AsString;
           xCodigoOperadoraDebito := DMFINANC.TCartao.FieldByName('cod_cartao').AsInteger;
       	edDebitoAutorizacao.SetFocus;
		End;
		If pControlCartaoCredito.Visible
		Then Begin
       	EdCreditoOperadora.Text := DMFINANC.TCartao.FieldByName('DESCRICAO').AsString;
           xCodigoOperadoraCredito := DMFINANC.TCartao.FieldByName('cod_cartao').AsInteger;
           EdCreditoAutorizacao.SetFocus;
		End;
	End;
end;

procedure TFPagamento.btnGeraDuplicatasClick(Sender: TObject);
begin
	//Geramos temporariamente as parcelas de duplicatas
   LimpaDuplicatasTmp;
   TmpGeraItensDuplicata;
   FiltraSomaDuplicatas;
   SomaGeral;
end;

procedure TFPagamento.dbgDuplicatasDblClick(Sender: TObject);
begin
	If not MDO.QView.IsEmpty
	Then Begin
       xCodigoParcelaEditada := MDO.QView.FieldByName('cod_tmp').AsInteger;
       EdDocumentoEditaParcela.Text := MDO.QView.FieldByName('NUMPARCELA').AsString;
       EdBoletoEditaParcela.Text :=  MDO.QView.FieldByName('NUMBOLETO').AsString;
       EdVencimentoEditaParcela.Text := MDO.QView.FieldByName('VENCIMENTO').AsString;
       EdReferenciaEditaParcela.Text := MDO.QView.FieldByName('REFERENCIA').AsString;
       EdHistoricoEditaParcela.Text := MDO.QView.FieldByName('HISTORICO').AsString;
       EdValorEditaParcela.ValueNumeric := MDO.QView.FieldByName('VALOR').AsCurrency;

       PEditaParcela.Visible:=true;
       PEditaParcela.BringToFront;
       EdDocumentoEditaParcela.SetFocus;
	End;
end;

procedure TFPagamento.PEditaParcelaExit(Sender: TObject);
begin
	If PEditaParcela.Visible=true Then
   	EdDocumentoEditaParcela.SetFocus;
end;

procedure TFPagamento.BitBtn5Click(Sender: TObject);
begin
   LimpaCamposEditaParcela;
   PEditaCheque.Visible:=False;
   PEditaParcela.Visible:=False;
end;

procedure TFPagamento.BitBtn4Click(Sender: TObject);
begin
   TmpEditaItensDuplicata;
   LimpaCamposEditaParcela;
   FiltraSomaDuplicatas;
   SomaGeral;
   PEditaParcela.Visible:=False;
end;

procedure TFPagamento.BitBtn6Click(Sender: TObject);
begin
	If MessageDlg('Deseja realmente apagar todos os cheques', mtConfirmation, [mbYes, mbNo], 0) = mryes
	Then Begin
       LimpaChequesTmp;
       FiltraSomaCheques;
       SomaGeral;
	End;
end;

procedure TFPagamento.BitBtn7Click(Sender: TObject);
begin
   //FiltraSomaDuplicatas;
   FiltraSomaCredito;
   xTrocoValidado := False;
   PTroco.Visible := False;
   PEditaCredito.Visible := False;
end;

procedure TFPagamento.BitBtn8Click(Sender: TObject);
begin
	If MessageDlg('Deseja realmente apagar todas as duplicatas?', mtConfirmation, [mbYes, mbNo], 0) = mryes
	Then Begin
       LimpaDuplicatasTmp;
       FiltraSomaDuplicatas;
       SomaGeral;
	End;
end;

procedure TFPagamento.btnGeraChequesClick(Sender: TObject);
begin
	//Geramos temporariamente as parcelas de duplicatas
   LimpaChequesTmp;
   TmpGeraItensCheque;
   FiltraSomaCheques;
   SomaGeral;
end;

procedure TFPagamento.BtnGravarChequeEditadoClick(Sender: TObject);
begin
   TmpEditaItensCheque;
   LimpaCamposEditaCheque;
   FiltraSomaCheques;
   SomaGeral;
   PEditaCheque.Visible:=False;
end;

procedure TFPagamento.DBGChequeDblClick(Sender: TObject);
begin
	If not MDO.QView.IsEmpty
	Then Begin
       xCodigoParcelaEditada := MDO.QView.FieldByName('cod_tmp').AsInteger;
       EdChequeEditadoDocumento.Text := MDO.QView.FieldByName('NUMPARCELA').AsString;
       EdChequeEditadoCheque.Text :=  MDO.QView.FieldByName('CHEQUE').AsString;
       EdChequeEditadoVencimento.Text := MDO.QView.FieldByName('VENCIMENTO').AsString;
       EdChequeEditadoReferencia.Text := MDO.QView.FieldByName('REFERENCIA').AsString;
       EdChequeEditadoHistorico.Text := MDO.QView.FieldByName('HISTORICO').AsString;
       EdChequeEditadoValor.ValueNumeric := MDO.QView.FieldByName('VALOR').AsCurrency;

       PEditaCheque.Visible:=true;
       PEditaCheque.BringToFront;
       EdChequeEditadoDocumento.SetFocus;
	End;
end;

procedure TFPagamento.EdCreditoOperadoraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If Key = VK_RETURN
	Then Begin
       POperadoraCartao.Visible := true;
       POperadoraCartao.BringToFront;
       POperadoraCartao.Left := 240;
       POperadoraCartao.Top := 365;
       dbgCartao.SetFocus;
	End;
end;

procedure TFPagamento.BitBtn3Click(Sender: TObject);
begin
	//Validações primarias para cartão de credito
	If xCodigoOperadoraCredito<=0
	Then Begin
		MessageDlg('Informe a operadora de cartão de crédito', mtWarning, [mbOK], 0);
       EdCreditoOperadora.SetFocus;
		Exit;
	End;

	If (Trim(EdCreditoAutorizacao.Text)='')
	Then Begin
		MessageDlg('Informe o Nº de autorização da operadora de cartão de crédito', mtWarning, [mbOK], 0);
       edCreditoNumero.SetFocus;
		Exit;
	End;

	//Geramos temporariamente as parcelas de duplicatas
   LimpaCreditosTmp;
   TmpGeraItensCredito;
   FiltraSomaCredito;
   SomaGeral;
end;

procedure TFPagamento.BitBtn1Click(Sender: TObject);
begin
	If MessageDlg('Deseja realmente apagar todas as duplicatas?', mtConfirmation, [mbYes, mbNo], 0) = mryes
	Then Begin
       LimpaCreditosTmp;
       FiltraSomaCredito;
       SomaGeral;
	End;
end;

procedure TFPagamento.DBGCreditosDblClick(Sender: TObject);
begin
	If not MDO.QView.IsEmpty
	Then Begin
       xCodigoParcelaEditada := MDO.QView.FieldByName('cod_tmp').AsInteger;
       EdDocumentoEditaCredito.Text := MDO.QView.FieldByName('NUMPARCELA').AsString;
       EdAutorizacaoEditaCredito.Text :=  MDO.QView.FieldByName('NUMBOLETO').AsString;
       EdVencimentoEditaCredito.Text := MDO.QView.FieldByName('VENCIMENTO').AsString;
       EdReferenciaEditaCredito.Text := MDO.QView.FieldByName('REFERENCIA').AsString;
       EdHistoricoEditaCredito.Text := MDO.QView.FieldByName('HISTORICO').AsString;
       EdValorEditaCredito.ValueNumeric := MDO.QView.FieldByName('VALOR').AsCurrency;

       PEditaCredito.Visible:=true;
       PEditaCredito.BringToFront;
       EdDocumentoEditaCredito.SetFocus;
	End;
end;

procedure TFPagamento.BitBtn2Click(Sender: TObject);
begin
   TmpEditaItensCredito;
   LimpaCamposEditaCredito;
   FiltraSomaCredito;
   SomaGeral;
   PEditaCredito.Visible := False;
end;

procedure TFPagamento.btnTrocoClick(Sender: TObject);
begin
   FiltraChequesParaTroco;
   PTroco.Top := 134;
   PTroco.Left := 136;
	If PTroco.Visible = false
	Then Begin
   	PTroco.Visible := true;
   	PTroco.BringToFront;
   	EdTrocoDinheiro.SetFocus;
	End
	Else Begin
       PTroco.Visible := False;
	End;
end;

procedure TFPagamento.DBGChequeTrocoDblClick(Sender: TObject);
begin
	//Marcamos ou desmarcamos cheque
   xCodigoChequeTroco:=DMMACS.TALX.FieldByName('cod_movbanco').AsInteger;
   TmpEditaChequeTrocoMarcado;
end;

procedure TFPagamento.DBGChequeTrocoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
	If DMMACS.TALX.FieldByName('MARK').AsString='T'  Then
      DBGChequeTroco.Canvas.Brush.Color := clMaroon
	Else
      DBGChequeTroco.Canvas.Brush.Color := clBtnFace;
	DBGChequeTroco.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFPagamento.BitBtn11Click(Sender: TObject);
begin
	DesmarcarChequesTrocoMarcado;
	FiltraChequesParaTroco;
	FiltraTrocoTotal;  
end;

procedure TFPagamento.edTrocoCaixaDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
   VerificaCaixaAberto;
end;

procedure TFPagamento.edTrocoCaixaExit(Sender: TObject);
begin
   VerificaCaixaAberto;
end;

procedure TFPagamento.edTrocoCaixaEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
   VerificaCaixaAberto;
end;

procedure TFPagamento.edTrocoCaixaDropDown(Sender: TObject);
begin
   VerificaCaixaAberto;
end;

procedure TFPagamento.BitBtn9Click(Sender: TObject);
begin
	//Validações
   xAuxiliarValorTrocoGeral := FormatFloat('0.00',  xValorTrocoGeral);
   xAuxiliarValorTrocoPago := FormatFloat('0.00', xValorTroco);
	if (xAuxiliarValorTrocoGeral <> xAuxiliarValorTrocoPago)
	Then Begin
		MessageDlg('O somatório do apontamento, difere do valor de troco a ser repassado.'+#13+' Verifique seus lançamentos! ', mtWarning, [mbOK], 0);
		Exit;
	End;

   xTrocoValidado := True;

   PTroco.Visible := False;
end;

procedure TFPagamento.BitBtn12Click(Sender: TObject);
begin
   FiltraTrocoTotal;
end;

procedure TFPagamento.EdTrocoDinheiroExit(Sender: TObject);
begin
   VerificaCaixaAberto;
   FiltraTrocoTotal;
end;

procedure TFPagamento.btnFinalizarClick(Sender: TObject);
begin
	//Validações
   SomaGeral;
	If (xValorTotalPagar>xValorTotalPago)
	Then Begin
		MessageDlg('Informe os valores de pagamento! ', mtWarning, [mbOK], 0);
		Exit;
	End;
	if (LTrocoStatusCaixa.Caption='F E C H A D O')
	Then Begin
		MessageDlg('O caixa selecionado se encontra fechado.'+#13+' Verifique o caixa! ', mtWarning, [mbOK], 0);
       btnProcuraCaixa.SetFocus;
		Exit;
	End;

	if (xTrocoValidado=False) and (StrToFloat(xAuxiliarValorTrocoPago)>0)
	Then Begin
		MessageDlg('Atualize a forma de troco, existem divergências.', mtWarning, [mbOK], 0);
		Exit;
	End;
	if (StrToFloat(xAuxiliarValorTrocoGeral) <> StrToFloat(xAuxiliarValorTrocoPago)) and (StrToFloat(xAuxiliarValorTrocoGeral)>0)
	Then Begin
		MessageDlg('Atualize a forma de troco, existem divergências.', mtWarning, [mbOK], 0);
		Exit;
	End;
	if (LTrocoStatusCaixa.Caption <> 'A B E R T O') and (StrToFloat(xAuxiliarValorTrocoGeral)>0)
	Then Begin
		MessageDlg('O caixa selecionado para lançamento de troco esta fechado!', mtWarning, [mbOK], 0);
		Exit;
	End;

	//Finaliza pagamentos e fecha os Pedidos
   If FinalizaLancamentos = True
	Then Begin
		MessageDlg('Os pagamentos ocorreram com sucesso!', mtInformation, [mbOK], 0);
       Close;
	End
	Else Begin
		MessageDlg('Ocorreram problemas com os pagamentos. Verifique!', mtWarning, [mbOK], 0);
       Close;
	End; 
end;

procedure TFPagamento.btnProcuraCaixaClick(Sender: TObject);
begin
    FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '');
    If AbrirForm(TFCadCaixa, FCadCaixa, 1)='Selected'
    Then Begin
       xCodigoCaixa := DMCAIXA.TCaixa.FieldByName('cod_caixa').AsInteger;
		edCaixaSelecionado.Text:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
       VerificaCaixaAberto;
    End;
end;

procedure TFPagamento.btnProcuraBancoClick(Sender: TObject);
begin
    FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', ' (cod_ctacor > 0) and ((inativo=''0'') or (inativo is null)) ');
    If AbrirForm(TFCadCtaCor, FCadCtaCor, 1)='Selected'
    Then Begin
       xCodigoCtaCorrente := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
		edBancoSelecionado.Text := DMBANCO.WCtaCor.FieldByName('NUMCTACOR').AsString+':'+DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
       If DMBANCO.VerifAbBanco = True Then
           LTrocoStatusBanco.Caption:='A B E R T O'
		Else
           LTrocoStatusBanco.Caption:='F E C H A D O';
       xCodigoAbBanco :=  StrToInt(FMenu.LABBANCO.Caption);
    End;
end;

procedure TFPagamento.edDinheiroValorExit(Sender: TObject);
begin
	SomaGeral;	
end;

procedure TFPagamento.FrmBuscaBancoMultBTNOPENClick(Sender: TObject);
begin
	 //LIBERA TODAS OS BANCOS PARA CONSUTA
	 filtraTabela(DMBANCO.TBanco, 'BANCO', '', '', '');

    If AbrirForm(TFCadBanco, FCadBanco, 1)='Selected'
    Then Begin
		 xCodigoBanco:=DMBANCO.TBanco.FieldByName('COD_BANC').AsInteger;
        FrmBuscaBanco.EdDescricao.Text:=DMBANCO.TBanco.FieldByName('DESCBANCO').AsString;
        FrmBuscaBanco.EDCodigo.text:=DMBANCO.TBanco.FieldByName('NUMBANCO').AsString;
        FrmBuscaBanco.Repaint;
    End;
end;

End.
