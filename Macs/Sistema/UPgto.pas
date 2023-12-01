unit UPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, pngimage, Buttons, EditFloat, jpeg, ComCtrls,
  Grids, DBGrids, Mask, ColorMaskEdit;

type
  TFPgto = class(TForm)
    PFooter: TPanel;
    ScrollBox1: TScrollBox;
    PPrincipal: TPanel;
    PDinheiro: TPanel;
    ImgDinheiro: TImage;
    Label5: TLabel;
    EdtValorDinheiro: TFloatEdit;
    PPix: TPanel;
    Label11: TLabel;
    EdtValorPix: TFloatEdit;
    PCd: TPanel;
    PCartaDebito: TPanel;
    Image2: TImage;
    Label9: TLabel;
    Label10: TLabel;
    BtnDropCd: TSpeedButton;
    EdtValorCd: TFloatEdit;
    PDropCd: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    EdtNAutCd: TEdit;
    Edit5: TEdit;
    PCc: TPanel;
    PCartaoCredito: TPanel;
    Image1: TImage;
    Label4: TLabel;
    Label7: TLabel;
    BtnDropCc: TSpeedButton;
    EdtValorCc: TFloatEdit;
    PDropCartaoCredito: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    LblCc: TLabel;
    EdtNAutoCc: TEdit;
    EdtValorParcCc: TFloatEdit;
    PCheq: TPanel;
    PDropCheque: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    LblCheque: TLabel;
    EdtValorParcCheque: TFloatEdit;
    PCheque: TPanel;
    Image4: TImage;
    BtnDropCheque: TSpeedButton;
    Label12: TLabel;
    EdtValorCheque: TFloatEdit;
    PDuplicatas: TPanel;
    PDropDuplicata: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    LblDupl: TLabel;
    EdtValorParcDup: TFloatEdit;
    PDuplicata: TPanel;
    Image5: TImage;
    BtnDropDuplicata: TSpeedButton;
    Label13: TLabel;
    EdtValorDuplicata: TFloatEdit;
    BtnFializarPgto: TSpeedButton;
    PCabecalho: TPanel;
    Label8: TLabel;
    LblCodigo: TLabel;
    Label20: TLabel;
    LblTipoServico: TLabel;
    Label21: TLabel;
    LblCodigoCliente: TLabel;
    Label23: TLabel;
    LblNomeCliente: TLabel;
    PTroco: TPanel;
    PTrocoValor: TPanel;
    Image6: TImage;
    BtnDropTroco: TSpeedButton;
    EdtTroco: TFloatEdit;
    PDropTroco: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label24: TLabel;
    EdtValorTrocoDinheiro: TFloatEdit;
    Label25: TLabel;
    DtFechamento: TDateTimePicker;
    PTitulo: TPanel;
    PTotalPagar: TPanel;
    LblTitulo: TLabel;
    LblValorPagar: TLabel;
    PValorPago: TPanel;
    Label22: TLabel;
    LblValorPago: TLabel;
    PCaixa: TPanel;
    Label28: TLabel;
    edCaixaSelecionado: TEdit;
    btnProcuraCaixa: TBitBtn;
    LTrocoStatusCaixa: TLabel;
    EdtQtdParcDup: TFloatEdit;
    EdtDiaPgtoDup: TFloatEdit;
    EdtQtdParcCheque: TFloatEdit;
    EdtDiaPgtoCheque: TFloatEdit;
    EdtQtdParcCc: TFloatEdit;
    EdtDiaPgtoCc: TFloatEdit;
    POperadoraCartaoCredito: TPanel;
    dbgCartaoCredito: TDBGrid;
    EdtOperadoraCc: TColorMaskEdit;
    POperadoraCartaoDebito: TPanel;
    dbgCartaoDebito: TDBGrid;
    EdtOperadoraCd: TColorMaskEdit;
    EdtValorTrocoPix: TFloatEdit;
    Label29: TLabel;
    edtValorTrocoCredLoja: TFloatEdit;
    PCredLoja: TPanel;
    Image7: TImage;
    edtValorCredLoja: TFloatEdit;
    Label30: TLabel;
    Label31: TLabel;
    PCredLojaDetalhes: TPanel;
    DBGCredLoja: TDBGrid;
    BtnCredLojaDetalhes: TSpeedButton;
    Label32: TLabel;
    LblCredLojaDisp: TLabel;
    PHeaderCredLoja: TPanel;
    BtnFecharCredLojaDetalhes: TSpeedButton;
    Label33: TLabel;
    LblNumero: TLabel;
    BtnCancelar: TSpeedButton;
    Panel1: TPanel;
    Label34: TLabel;
    LblValorRestante: TLabel;
    BtnDinheiro: TSpeedButton;
    BtnPix: TSpeedButton;
    BtnDuplicata: TSpeedButton;
    BtnCheque: TSpeedButton;
    BtnCc: TSpeedButton;
    BtnCd: TSpeedButton;
    BtnCredLoja: TSpeedButton;
    LTrocoStatusBanco: TLabel;
    btnProcuraBanco: TBitBtn;
    edBancoSelecionado: TEdit;
    Label36: TLabel;
    Image8: TImage;
    procedure EdtValorDinheiroExit(Sender: TObject);
    procedure EdtQtdParcCcExit(Sender: TObject);
    procedure EdtValorCcExit(Sender: TObject);
    procedure BtnDropCcClick(Sender: TObject);
    procedure BtnDropCdClick(Sender: TObject);
    procedure EdtValorCdExit(Sender: TObject);
    procedure EdtValorPixExit(Sender: TObject);
    procedure BtnDropChequeClick(Sender: TObject);
    procedure EdtQtdParcChequeExit(Sender: TObject);
    procedure BtnDropDuplicataClick(Sender: TObject);
    procedure EdtQtdParcDupExit(Sender: TObject);
    procedure EdtValorChequeExit(Sender: TObject);
    procedure EdtValorDuplicataExit(Sender: TObject);
    procedure BtnDropTrocoClick(Sender: TObject);
    procedure btnProcuraCaixaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnFializarPgtoClick(Sender: TObject);
    procedure EdtOperadoraCcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgCartaoCreditoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgCartaoDebitoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtOperadoraCdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtValorTrocoDinheiroExit(Sender: TObject);
    procedure EdtValorTrocoPixExit(Sender: TObject);
    procedure edtValorTrocoCredLojaExit(Sender: TObject);
    //
    function verificaData(xDia: Integer; xMes: Integer; xAno: Integer): string;
    //Função para reiniciar todos os valores
    function ResetaValores: Boolean;
    // Verifica se o caixaestá aberto ou fechado;
    function VerificaCaixaAberto: Boolean;
    //Verifica se o Banco escolhido esta aberto ou fechado
    function VerificaBancoAberto: Boolean;
    // Função para iniciar os pagamentos
    procedure IniciaPagamento;
    //Função para recuperar valor do gerador
    function getValorGerador(xGerador: string): Integer;
    function CadastrarFormaPagamentoDiversificado: Integer;
    //
    function FinalizaLancamentos: Boolean;
    //Função para lanar o financeiro dinheiro em caixa pelo contas a receber
    function FinalizaLancamentosCaixa: Boolean;
    //Função para lançar valores de pix
    function FinalizaLancamentosPix: Boolean;
    //Função para lanar o financeiro dinheiro em caixa pelo contas a receber
    function FinalizaLancamentosDuplicata: Boolean;
    //Função para lançar o financeiro de cheques
    function FinalizaLancamentosCheque: Boolean;
    //Função para lançar contas a receber de débito
    function FinalizaLancamentosCredito: Boolean;
    //Função para lançar contas a receber em forma de cartão de débito
    function FinalizaLancamentosDebito: Boolean;
    //Função para lançar contas a receber em forma de cartão de débito
    function FinalizaLancamentosCredLoja: Boolean;
    //Função para Lançar o troco
    function FinalizaLancamentosTroco: Boolean;
    function FinalizaLancamentosTrocoDinheiro: Boolean;
    function FinalizaLancamentosTrocoPix: Boolean;
    function FinalizaLancamentosTrocoCredLoja: Boolean;
    procedure edtValorCredLojaExit(Sender: TObject);
    procedure BtnCredLojaDetalhesClick(Sender: TObject);
    procedure BtnFecharCredLojaDetalhesClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);

    //
    procedure salvarCtaReceber(xValorCtaReceber: Double; xCobrancaCtaReceber:
      string; xHistorico: string; xConta: Integer; xContaServ: Integer; xNumCartao:
        string; xCliente: Integer);
    procedure salvarCtaPagar(xValorCtaPagar: Double; xCobrancaCtaPagar: string;
      xHistorico: string; xConta: Integer; xCliente: Integer);
    //
    procedure salvarParcelaCr(xCodigoCtaReceber: Integer; xNumParcela: string;
      xParcelaCr: Double; xParcelaCrPg: Double; xFech: string; xDtDebito: string;
      xDtVenc: string; xCobrancaParcelaCr: string; xHistorico: string;
      xCodigoOperadora: Integer; xAntecipado : String);
    procedure salvarParcelaCp(xCodigoCtaPagar: Integer; xNumParcela: string;
      xParcelaCp: Double; xParcelaCpPg: Double; xFech: string; xDtDebito:
        string;
      xDtVenc: string; xCobrancaParcelaCp: string; xHistorico: string);
    //
    procedure salvarLanCaixa(xValor: Double; xTipoCobranca: string; xHistorico:
      string; xConta: Integer; xTipoCaixaF: string; xEstrutura: String);
    procedure salvarLanCaixaContaProd(xCodLanCaixa: Integer; xValorProd:
      Double);
    procedure salvarLanCaixaContaServ(xCodLanCaixa: Integer; xValorServ:
      Double);
    //
    procedure salvarMovBanco(xConta: Integer; xValor: Double; xCobranca: String);
    procedure BtnDinheiroClick(Sender: TObject);
    procedure BtnPixClick(Sender: TObject);
    procedure BtnDuplicataClick(Sender: TObject);
    procedure BtnChequeClick(Sender: TObject);
    procedure BtnCcClick(Sender: TObject);
    procedure BtnCdClick(Sender: TObject);
    procedure BtnCredLojaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProcuraBancoClick(Sender: TObject);
  private
    { Private declarations }
    procedure setValores();
    procedure Recalcula();

  public
    { Public declarations }
  end;

var
  FPgto: TFPgto;
  XTipoGerador: string;

  xValorDinheiro: Currency;
  xValorPix: Currency;
  xValorDuplicata: Currency;
  xValorCheque: Currency;
  xValorCredito: Currency;
  xValorDebito: Currency;
  xValorCredLoja: Currency;
  xValorTrocoDinheiro: Currency;
  xValorTrocoPix: Currency;
  xValorTrocoCredLoja: Currency;

  // Variáveis de Controle
  xValorTotalPagar: Currency;
  xValorPago: Currency;
  xValorResta: Currency;
  xValorTroco: Currency;
  xValorTrocoPago: Currency;
  xValorTrocoResta: Currency;
  xValorCredLojaDisp: Currency;

  //Variáveis de chave primaria
  xCodPlncta: Integer;
  xTipoCaixa, xTipoCaixaTroco: string;
  xContaAvista, xContaAprazo, xServicoAvista, xServicoAprazo: Integer;
  xCodigoCaixa, xCodigoAbCaixa, xCodigoAbBanco, xCodigoCtaCorrente, xCodigoCtaReceber, xCodigoParcela,
  xCodigoMovimentoBancario, xCodigoCheque, xCodigoCliente, xCodigoVendedor,
  xCodigoFormaPagamento, xCodigoPedido, xCodigoOperadoraDebito,
  xCodigoOperadoraCredito: Integer;
  xValorProduto, xValorServico, xPercentualServico: Double;
  xNumeroDocumento, xHistoricoPadrao: string;
  xCpfCnpj : String;

implementation

uses UDMCaixa, UMenu, Alxor32, UCadCaixa, UDmServ, UDMSaida, UMDO,
  UDMFinanc, UDMMacs, AlxMessage, UDmBanco, UDMPessoa, DB, UCtaCor;

{$R *.dfm}

procedure TFPgto.setValores();
begin
  LblValorPagar.Caption := 'R$ ' + FormatFloat('0.00', xValorTotalPagar);
  LblValorPago.Caption := 'R$ ' + FormatFloat('0.00', xValorPago);
  if (xValorTotalPagar-xValorPago) > 0 then
   LblValorRestante.Caption := 'R$ ' + FormatFloat('0.00', (xValorTotalPagar-xValorPago))
  else
   LblValorRestante.Caption := 'R$ 0,00';

  if (xValorTroco <> 0) then
  begin
    EdtTroco.ValueNumeric := xValorTroco;
    PTroco.Visible := True;
  end
  else
  begin
    EdtTroco.Text := FloatToStr(xValorTroco);
    PTroco.Visible := False;
    PDropTroco.Visible := False;
    EdtValorTrocoDinheiro.ValueNumeric := 0;
    EdtValorTrocoPix.ValueNumeric := 0;
    edtValorTrocoCredLoja.ValueNumeric := 0;
  end
end;

procedure TFPgto.Recalcula();
begin
  xValorDinheiro := EdtValorDinheiro.ValueNumeric;
  xValorPix := EdtValorPix.ValueNumeric;
  xValorDuplicata := EdtValorDuplicata.ValueNumeric;
  xValorCheque := EdtValorCheque.ValueNumeric;
  xValorCredito := EdtValorCc.ValueNumeric;
  xValorDebito := EdtValorCd.ValueNumeric;
  xValorCredLoja := edtValorCredLoja.ValueNumeric;

  if (xValorCredLoja > xValorCredLojaDisp) then
  begin
    MessageDlg('Valor Crédito em loja utilizado maior do que disponivel!',
      mtWarning, [mbOK], 0);
    edtValorCredLoja.setFocus;
  end;

  xValorPago := xValorDinheiro + xValorPix + xValorDuplicata + xValorCheque +
    xValorCredito + xValorDebito + xValorCredLoja;
  xValorResta := xValorTotalPagar - xValorPago;

  xValorTrocoDinheiro := EdtValorTrocoDinheiro.ValueNumeric;
  xValorTrocoPix := EdtValorTrocoPix.ValueNumeric;
  xValorTrocoCredLoja := edtValorTrocoCredLoja.ValueNumeric;

  xValorTrocoPago := xValorTrocoDinheiro + xValorTrocoPix + xValorTrocoCredLoja;

  if (xValorResta < 0) then
  begin
    xValorTroco := xValorPago - xValorTotalPagar;
    xValorResta := 0;
    xValorTrocoResta := xValorTroco - xValorTrocoPago;
  end
  else
  begin
    xValorTroco := 0;
    xValorTrocoResta := 0;
  end;

  setValores();
end;

function TFPgto.verificaData(xDia: Integer; xMes: Integer; xAno: Integer):
  string;
begin
  if (xDia > 28) and (xMes = 2) then
    result := '28/02/' + IntToStr(xAno)
  else if (xDia > 30) and ((xMes = 4) or (xMes = 6) or (xMes = 9) or (xMes = 11))
    then
    result := '30/' + IntToStr(xMes) + '/' + IntToStr(xAno)
  else
    result := IntToStr(xDia) + '/' + IntToStr(xMes) + '/' + IntToStr(xAno);
end;

//Verifica se o caixa escolhido esta aberto ou fechado
function TFPgto.VerificaCaixaAberto: Boolean;
begin
  try
    result := True;
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('SELECT * FROM ABCAIXA WHERE (COD_CAIXA=:CODCAIXA) AND (FECHADO=' + #39 + 'N' + #39 + ')');
    DMCAIXA.TAlx.ParamByName('CODCAIXA').AsInteger := xCodigoCaixa;
    DMCAIXA.TAlx.Open;
    if not DMCAIXA.TAlx.IsEmpty then
    begin
      Result := True; //caixa aberto
      LTrocoStatusCaixa.Caption := 'ABERTO';
      LTrocoStatusCaixa.Font.Color := clGreen;
      xCodigoAbCaixa := DMCAIXA.TAlx.FieldByName('COD_ABCAIXA').AsInteger
    end
    else
    begin
      Result := False; //caixa fechado
      LTrocoStatusCaixa.Caption := 'FECHADO';
      LTrocoStatusCaixa.Font.Color := clRed;
      xCodigoAbCaixa := -1;
    end;
    // FiltraTrocoTotal;
  except
    Result := False; //caixa fechado
  end;
end;

//Verifica se o Banco escolhido esta aberto ou fechado
function TFPgto.VerificaBancoAberto: Boolean;
begin
  try
    result := True;

    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add(' SELECT * FROM abbanco WHERE (abbanco.cod_ctacor=:CODCAIXA) AND (abbanco.fechado=' + #39 + 'N' + #39 + ')');
    DMCAIXA.TAlx.ParamByName('CODCAIXA').AsInteger := xCodigoCtaCorrente;
    DMCAIXA.TAlx.Open;
    if not DMCAIXA.TAlx.IsEmpty then
    begin
      Result := True; //caixa aberto
      LTrocoStatusBanco.Caption := 'ABERTO';
      LTrocoStatusBanco.Font.Color := clGreen;
      xCodigoAbBanco := DMCAIXA.TAlx.FieldByName('cod_abbanco').AsInteger
    end
    else
    begin
      Result := False; //caixa fechado
      LTrocoStatusBanco.Caption := 'FECHADO';
      LTrocoStatusBanco.Font.Color := clRed;
      xCodigoAbBanco := -1;
    end;
    // FiltraTrocoTotal;
  except
    Result := False; //caixa fechado
  end;
end;

// Função para recuperar valor do gerador
function TFPgto.getValorGerador(xGerador: string): Integer;
begin
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add('SELECT GEN_ID(' + xGerador +
    ', 0) as COD_CTA FROM RDB$DATABASE');
  MDO.QConsulta.Open;
  result := MDO.QConsulta.FieldValues['COD_CTA'];
end;

////Função para iniciar os pagamentos
procedure TFPgto.IniciaPagamento;
var xCodigo, xCodigoFornecedor: Integer;
begin
  try
    //xControleFechaTela := False;
    xCodigoMovimentoBancario := -1;
    xCodigoCheque := -1;
    xCodigoAbCaixa := -1;
    xCodigoAbBanco  := -1;
    xCodigoCtaCorrente := -1;
    xCodigoOperadoraCredito := -1;
    xCodigoOperadoraDebito := -1;
    xCodigoCtaReceber := -1;
    xCodigoParcela := -1;
    xCpfCnpj := '-1';
    xCodigoCliente := -1;
    xCodigoFormaPagamento := -1;
    xCodigoVendedor := -1;
    xContaAvista := -1;
    xContaAprazo := -1;

    //Confirmamos os commits de ordem de serviços e venda
    DmServ.IBT.CommitRetaining;
    DmSaida.IBT.CommitRetaining;
    MDO.Transac.CommitRetaining;

    xResultadoPagamento := 'ERRO';

    ResetaValores;
    //xTrocoValidado:=false;

    xCodigoPedido := xCod_PedidoPagamento;
    XTipoGerador := xTipoPedidoPagamento;

    xCodigoFormaPagamento := CadastrarFormaPagamentoDiversificado;

    //Selecionamos o caixa
    FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption,
      '');
    edCaixaSelecionado.Text := DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
    xCodigoCaixa := DMCAIXA.TCaixa.FieldByName('cod_caixa').AsInteger;
    VerificaCaixaAberto();

    FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', '(cod_ctacor > 0) and ((inativo=''0'') or (inativo is null)) ');
    If not DMBANCO.WCtaCor.IsEmpty
    Then Begin
       edBancoSelecionado.Text := DMBANCO.WCtaCor.FieldByName('numctacor').AsString + ': ' + DMBANCO.WCtaCor.FieldByName('descbanco').AsString;
       xCodigoCtaCorrente := DMBANCO.WCtaCor.FieldByName('cod_ctacor').AsInteger;
       VerificaBancoAberto;
       xCodigoAbBanco :=  StrToInt(FMenu.LABBANCO.Caption);
    End
    Else Begin
       edBancoSelecionado.Text := '';
       xCodigoCtaCorrente := -1;
       VerificaBancoAberto;
       xCodigoAbBanco :=  StrToInt(FMenu.LABBANCO.Caption);
    End;

    //Controla as possibilidades de abrir pagamentos
    MDO.Transac.CommitRetaining;
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    if xTipoPedidoPagamento = 'PEDVENDA' then
    begin
      MDO.Query.SQL.Add(' select vwpedv.cod_pedvenda, pedvenda.EDIT as USO, vwpedv.cod_cliente as CodigoCliente, vwpedv.nomecli as cliente, vwpedv.cod_vendedor as CodigoVendedor, vwpedv.numped as NumeroDocumento,  ');
      MDO.Query.SQL.Add(' vwpedv.cod_formpag as CodigoFormaPagamento, vwpedv.situacao as SITUACAO, vwpedv.cod_pedvenda as CODIGO, vwpedv.numped as NUMERO, vwcliente.cpfcnpj, vwpedv.valor AS TOTAL from vwpedv ');
      MDO.Query.SQL.Add(' left join pedvenda on vwpedv.cod_pedvenda = pedvenda.cod_pedvenda left join vwcliente on vwcliente.cod_cliente = vwpedv.cod_cliente where vwpedv.cod_pedvenda = :codigo  ');
      MDO.Query.ParamByName('CODIGO').AsInteger := xCod_PedidoPagamento;
      XTipoGerador := 'PEDVENDA';
      LblTipoServico.Caption := 'Venda';
      xContaAvista := DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
      xContaAprazo := DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
      xTipoCaixa := 'E';
      xTipoCaixaTroco := 'S';
    end;
    if xTipoPedidoPagamento = 'ORDEM' then
    begin
      MDO.Query.SQL.Add('   select vwordem.cod_ordem, ordem.cod_formpag, ordem.Edit as USO,  vwordem.cod_cliente as CodigoCliente, vwordem.cliente as cliente, vwordem.cod_vendedor as CodigoVendedor, vwordem.numero as NumeroDocumento, ');
      MDO.Query.SQL.Add('    vwordem.formapag as CodigoFormaPagamento, vwordem.status as SITUACAO, vwordem.cod_ordem as CODIGO, vwordem.numero as NUMERO, vwordem.total  AS TOTAL, ordem.totprod as TOTALPRODUTO, ordem.totserv as TOTALSERVICO, vwcliente.cpfcnpj ');
      MDO.Query.SQL.Add('    from vwordem ');
      MDO.Query.SQL.Add('    left join ordem on vwordem.cod_ordem = ordem.cod_ordem ');
      MDO.Query.SQL.Add('    left join vwcliente on vwcliente.cod_cliente = vwordem.cod_cliente ');
      MDO.Query.SQL.Add('    where vwordem.cod_ordem = :codigo ');
      MDO.Query.ParamByName('CODIGO').AsInteger := xCod_PedidoPagamento;
      XTipoGerador := 'ORDEM';
      LblTipoServico.Caption := 'Ordem de Serviço';
      xContaAvista := DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
      xContaAprazo := DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
      xServicoAvista := DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger;
      xServicoAprazo := DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
      xTipoCaixa := 'E';
      xTipoCaixaTroco := 'S';

    end;
    if xTipoPedidoPagamento = 'COMPRA' then
    begin
      MDO.Query.SQL.Add('   select vwpedc.COD_PEDCOMP, vwpedc.cod_fornec as CodigoCliente, vwpedc.nome as cliente, vwpedc.numped as NumeroDocumento, vwfornec.cpfcnpj, ');
      MDO.Query.SQL.Add('    vwpedc.COD_FORMPAG as CodigoFormaPagamento, vwpedc.situacao as SITUACAO, vwpedc.cod_pedcomp as CODIGO, vwpedc.numped as NUMERO, vwpedc.valor  AS TOTAL');
      MDO.Query.SQL.Add('    from vwpedc ');
      MDO.Query.SQL.Add('    left join pedcompra on vwpedc.COD_PEDCOMP = pedcompra.COD_PEDCOMP ');
      MDO.Query.SQL.Add('    left join vwfornec on vwfornec.cod_fornec = vwpedc.cod_fornec ');
      MDO.Query.SQL.Add('    where vwpedc.COD_PEDCOMP = :codigo ');
      MDO.Query.ParamByName('CODIGO').AsInteger := xCod_PedidoPagamento;
      XTipoGerador := 'COMPRA';
      LblTipoServico.Caption := 'Compra';
      xContaAvista := DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger;
      xContaAprazo := DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger;
      xTipoCaixa := 'S';
      xTipoCaixaTroco := 'E';
      PCheq.Visible := False;
    end;
    MDO.Query.SQL.Text;
    MDO.Query.Open;

    if not MDO.Query.IsEmpty then
    begin
      LblCodigo.Caption := MDO.Query.FieldByName('NUMERO').AsString;
      xCpfCnpj := MDO.Query.FieldByName('CPFCNPJ').AsString;
      LblCodigoCliente.Caption := xCpfCnpj;
      LblNomeCliente.Caption := MDO.Query.FieldByName('cliente').AsString;
      xValorTotalPagar := MDO.Query.FieldByName('TOTAL').AsCurrency;

      if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
           xCodigoFormaPagamento := MDO.Query.FieldByName('cod_formpag').AsInteger;
    end;

    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'COMPRA') then
    begin
      xValorProduto := MDO.Query.FieldByName('TOTAL').AsCurrency;
      xValorServico := 0;
      xPercentualServico := 0;
    end
    else
    begin
      xValorProduto := MDO.Query.FieldByName('TOTALPRODUTO').AsCurrency;
      xValorServico := MDO.Query.FieldByName('TOTALSERVICO').AsCurrency;
      if xValorServico > 0 then
        xPercentualServico := (xValorServico / xValorTotalPagar) * 100;
      if xPercentualServico < 0 then
        xPercentualServico := 0;
    end;

    //Libera todas as operadoras de cartão
    FiltraTabela(DMFINANC.TCartao, 'CARTAO', '', '', '');

    //Inicia codigos de chave primaria
    xCodigoCliente := MDO.Query.FieldByName('CodigoCliente').AsInteger;
    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      xCodigoVendedor := MDO.Query.FieldByName('CodigoVendedor').AsInteger
    else
      xCodigoVendedor := -1;

    xNumeroDocumento := MDO.Query.FieldByName('NumeroDocumento').AsString;
    LblNumero.Caption := xNumeroDocumento;
    xHistoricoPadrao := 'Pagamento ' + XTipoGerador + ' Nº ' + xNumeroDocumento +
      ' Cliente: ' + MDO.Query.FieldByName('cliente').AsString + ' ';

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT COD_FORNEC FROM FORNECEDOR JOIN PESSOA ON PESSOA.COD_PESSOA = FORNECEDOR.COD_PESSOA ');
    MDO.QConsulta.SQL.Add('WHERE PESSOA.CPFCNPJ = :CPFCNPJ');
    MDO.QConsulta.Open;

    // Verifica se tem crédito em loja
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    if (XTipoGerador = 'ORDEM') or (XTipoGerador = 'PEDVENDA') then
    begin

      MDO.QConsulta.SQL.Add('SELECT COD_FORNEC FROM FORNECEDOR JOIN PESSOA ON PESSOA.COD_PESSOA = FORNECEDOR.COD_PESSOA ');
      MDO.QConsulta.SQL.Add('WHERE PESSOA.CPFCNPJ = :CPFCNPJ');
      MDO.QConsulta.ParamByName('CPFCNPJ').asString := xCpfCnpj;
      MDO.QConsulta.Open;

      if not MDO.QConsulta.isEmpty then
      begin
       xCodigoFornecedor := MDO.QConsulta.FieldValues['COD_FORNEC'];
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('SELECT PARCELACP.COD_PARCELACP AS CODIGO, PARCELACP.VALOR AS VALOR, PARCELACP.VALORPG AS VALORPG FROM PARCELACP JOIN CTAPAGAR ON CTAPAGAR.COD_CTAPAGAR = PARCELACP.COD_CTAPAGAR ');
       MDO.QConsulta.SQL.Add('WHERE PARCELACP.FECH = :FECH AND PARCELACP.DTDEBITO IS NULL AND PARCELACP.HISTORICO LIKE :HISTORICO AND CTAPAGAR.COD_FORNEC = :COD_CLIENTE');
       MDO.QConsulta.ParamByName('FECH').AsString := 'N';
       MDO.QConsulta.ParamByName('HISTORICO').AsString := 'Troco Credito%';
       MDO.QConsulta.ParamByName('COD_CLIENTE').AsInteger := xCodigoFornecedor;
      end;
    end
    else
    begin
      MDO.QConsulta.SQL.Add('SELECT COD_CLIENTE FROM CLIENTE JOIN PESSOA ON PESSOA.COD_PESSOA = CLIENTE.COD_PESSOA ');
      MDO.QConsulta.SQL.Add('WHERE PESSOA.CPFCNPJ = :CPFCNPJ');
      MDO.QConsulta.ParamByName('CPFCNPJ').asString := xCpfCnpj;
      MDO.QConsulta.Open;

      if not MDO.QConsulta.isEmpty then
      begin
       xCodigoFornecedor := MDO.QConsulta.FieldValues['COD_CLIENTE'];
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('SELECT PARCELACR.COD_PARCELACR AS CODIGO, PARCELACR.VALOR AS VALOR, PARCELACR.VALORPG AS VALORPG FROM PARCELACR JOIN CTARECEBER ON CTARECEBER.COD_CTARECEBER = PARCELACR.COD_CTARECEBER ');
       MDO.QConsulta.SQL.Add('WHERE PARCELACR.FECH = :FECH AND PARCELACR.DTDEBITO IS NULL AND PARCELACR.HISTORICO LIKE :HISTORICO AND CTARECEBER.COD_CLIENTE = :COD_CLIENTE');
       MDO.QConsulta.ParamByName('FECH').AsString := 'N';
       MDO.QConsulta.ParamByName('HISTORICO').AsString := 'Troco Credito%';
       MDO.QConsulta.ParamByName('COD_CLIENTE').AsInteger := xCodigoFornecedor;
      end;
    end;

    MDO.QConsulta.Open;
    if not MDO.QConsulta.IsEmpty then
    begin
      while not MDO.QConsulta.Eof do
      begin
        xValorCredLojaDisp := xValorCredLojaDisp +
          MDO.QConsulta.FieldValues['VALOR'] -
          MDO.QConsulta.FieldValues['VALORPG'];
        MDO.QConsulta.Next;
      end;
      PCredLoja.Visible := True;
      LblCredLojaDisp.Caption := 'R$ ' + FormatFloat('0.00',
        xValorCredLojaDisp);
    end
    else
    begin
      PCredLoja.Visible := False;
    end;

    Recalcula;
  except
  end;
end;

//Função para cadastrar automativamente a forma de pagamento utilizada ou retornar
function TFPgto.CadastrarFormaPagamentoDiversificado: Integer;
begin
  try
    Result := -999;

    MDO.Transac.CommitRetaining;
    DMFINANC.Transaction.CommitRetaining;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT COD_FORMPAG FROM FORMPAG WHERE DESCRICAO = :DES');
    MDO.QConsulta.ParamByName('DES').asString := 'Diversificado';
    MDO.QConsulta.Open();
    if not MDO.QConsulta.IsEmpty() then
       Result := MDO.QConsulta.FieldByName('COD_FORMPAG').asInteger
    else begin

       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('SELECT MAX(COD_FORMPAG) AS CODIGO FROM FORMPAG');
       MDO.QConsulta.Open();

       Result := MDO.QConsulta.FieldByName('CODIGO').AsInteger + 1;

       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' INSERT INTO FORMPAG (COD_FORMPAG, COD_LOJA, DESCRICAO, ');
       MDO.Query.SQL.Add('                      PRIMPARCELA, INTERVALO, QUANTPARCELA, ');
       MDO.Query.SQL.Add('                      COD_INTERNO) ');
       MDO.Query.SQL.Add(' VALUES              (:COD_FORMPAG, :COD_LOJA, :DESCRICAO, ');
       MDO.Query.SQL.Add('                      :PRIMPARCELA, :INTERVALO, :QUANTPARCELA, ');
       MDO.Query.SQL.Add('                      :COD_INTERNO) ');
       MDO.Query.ParamByName('COD_FORMPAG').AsInteger  := Result;
       MDO.Query.ParamByName('COD_LOJA').AsString      := FMenu.LCODLOJA.Caption;
       MDO.Query.ParamByName('DESCRICAO').AsString     := 'Diversificado';
       MDO.Query.ParamByName('PRIMPARCELA').AsInteger  := 30;
       MDO.Query.ParamByName('INTERVALO').AsInteger    := 30;
       MDO.Query.ParamByName('QUANTPARCELA').AsInteger := 1;
       MDO.Query.ParamByName('COD_INTERNO').AsInteger  := 00;
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
    end;
  Except
    Result := -999;
  End;
End;


//Função para lanar o financeiro e finalizar o pagamento
function TFPgto.FinalizaLancamentos: Boolean;
begin
  try
    Result := True;
    // Antes de iniciar commita todas as alterações
    MDO.Transac.CommitRetaining;

    //Lançamento em dinheiro no caixa
    if xValorDinheiro > 0 then
      if FinalizaLancamentosCaixa = False then
        Result := False;

    if xValorPix > 0 then
      if FinalizaLancamentosPix = False then
        Result := False;

    if xValorDuplicata > 0 then
      if FinalizaLancamentosDuplicata = False then
        Result := False;

    if xValorCheque > 0 then
      if FinalizaLancamentosCheque = False then
        Result := False;

    if xValorDebito > 0 then
      if FinalizaLancamentosDebito = False then
        Result := False;

    if xValorCredito > 0 then
      if FinalizaLancamentosCredito = False then
        Result := False;

    if xValorCredLoja > 0 then
      if FinalizaLancamentosCredLoja = False then
        Result := False;

    //Verifica lançamentos de troco
    if xValorTroco > 0 then
      if FinalizaLancamentosTroco = False then
        Result := False;

    if Result = False then
    begin 
      FMenu.XDTREF := '';
      xResultadoPagamento := 'ERRO';
      MDO.Transac.RollbackRetaining;
      DMPESSOA.TransacPessoa.RollbackRetaining ;
      DMBANCO.IBT.RollbackRetaining;
    end
    else
    begin
      FMenu.XDTREF := DateToStr(DtFechamento.Date);
      xResultadoPagamento := 'SUCESSO';
      //Comitamos as informações geradas
      MDO.Transac.CommitRetaining;
      DMPESSOA.TransacPessoa.CommitRetaining;
      DMBANCO.IBT.CommitRetaining;
    end;
  except
    MDO.Transac.RollbackRetaining;
    Result := False;
  end;
end;

//Função para reiniciar todos os valores
function TFPgto.ResetaValores: Boolean;
begin
  try
    Result := True;

    DtFechamento.DateTime := now;

    xValorProduto := 0;
    xValorServico := 0;
    xPercentualServico := 0;

    xValorDinheiro := 0;
    xValorDuplicata := 0;
    xValorCheque := 0;
    xValorPix := 0;
    xValorDebito := 0;
    xValorCredito := 0;
    xValorCredLoja := 0;
    xValorTrocoDinheiro := 0;
    xValorTrocoPix := 0;
    xValorTrocoCredLoja := 0;

    //Reseta totalizadores
    xValorTotalPagar := 0;
    xValorPago := 0;
    xValorResta := 0;
    xValorTroco := 0;
    xValorTrocoPago := 0;
    xValorTrocoResta := 0;
    xValorCredLojaDisp := 0;

    xTipoCaixa := '';
    xTipoCaixaTroco := '';

    LblValorPagar.Caption := 'R$ 0,00';
    LblValorPago.Caption := 'R$ 0,00';
    LblValorRestante.Caption := 'R$ 0,00';

    LblCodigo.Caption := '0000000000';
    LblCodigoCliente.Caption := '0000000000';
    LblTipoServico.Caption := 'Tipo de Serviço';
    LblNumero.Caption := '0000000000';
    LblNomeCliente.Caption := 'Cliente Teste 123';

    //Reseta valores referente a dinheiro;
    EdtValorDinheiro.ValueNumeric := 0;

    //reseta valores de pix
    EdtValorPix.ValueNumeric := 0;

    //Reseta valores referente a Duplicatas
    EdtValorDuplicata.ValueNumeric := 0;
    EdtQtdParcDup.ValueInteger := 0;
    EdtDiaPgtoDup.ValueInteger := 0;
    EdtValorParcDup.ValueNumeric := 0;
    LblDupl.Visible := False;
    EdtValorParcDup.Visible := False;
    PDropDuplicata.Visible := False;
    PDropDuplicata.AutoSize := True;

    //reseta valore de Cheque
    EdtValorCheque.ValueNumeric := 0;
    EdtQtdParcCheque.ValueInteger := 0;
    EdtDiaPgtoCheque.ValueInteger := 0;
    EdtValorParcCheque.ValueNumeric := 0;
    LblCheque.Visible := False;
    EdtValorParcCheque.Visible := False;
    PDropCheque.Visible := False;
    PDropCheque.AutoSize := True;

    //reseta valores de cartão de débito
    EdtValorCd.ValueNumeric := 0;
    EdtNAutCd.Text := '';
    EdtOperadoraCd.Text := '<ENTER>';
    PDropCd.Visible := False;

    //reseta valores de cartão de crédito
    EdtValorCc.ValueNumeric := 0;
    EdtQtdParcCc.ValueInteger := 0;
    EdtDiaPgtoCc.ValueInteger := 0;
    EdtNAutoCc.Text := '';
    EdtOperadoraCc.Text := '<ENTER>';
    EdtValorParcCc.ValueNumeric := 0;
    LblCc.Visible := False;
    EdtValorParcCc.Visible := False;
    PDropCartaoCredito.Visible := False;
    PDropCartaoCredito.AutoSize := True;

    //reseta valores de credito em loja
    edtValorCredLoja.ValueNumeric := 0;
    PCredLoja.Visible := False;
    LblCredLojaDisp.Caption := 'R$ 00,00';
    PCredLojaDetalhes.Visible := False;

    //reseta valores de troco
    EdtTroco.ValueNumeric := 0;
    EdtValorDinheiro.ValueNumeric := 0;
    EdtValorTrocoPix.ValueNumeric := 0;
    edtValorTrocoCredLoja.ValueNumeric := 0;
    PDropTroco.Visible := False;
    PTroco.Visible := False;
  except
    Result := False;
  end;
end;

function TFPgto.FinalizaLancamentosCaixa: Boolean;
begin
  try
    Result := True;
    //CONTAS A RECEBER/PAGAR
    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      salvarCtaReceber(EdtValorDinheiro.ValueNumeric, 'Carteira',
        xHistoricoPadrao, xContaAvista, xServicoAvista, '', xCodigoCliente)
    else
      salvarCtaPagar(EdtValorDinheiro.ValueNumeric, 'Carteira',
        xHistoricoPadrao, xContaAvista, xCodigoCliente);

    //PARCELA DE CONTAS A RECEBER
    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
    begin
      xCodigoCtaReceber := getValorGerador('GEN_CTARECEBER_ID');
      salvarParcelaCr(xCodigoCtaReceber, xNumeroDocumento + '1:1',
        EdtValorDinheiro.ValueNumeric,
        EdtValorDinheiro.ValueNumeric, 'S', DateToStr(DtFechamento.Date),
        DateToStr(DtFechamento.Date), 'Carteira', xHistoricoPadrao, -1, '1');
    end
    else
    begin
      xCodigoCtaReceber := getValorGerador('GEN_CTAPAGAR_ID');
      salvarParcelaCp(xCodigoCtaReceber, xNumeroDocumento + '1:1',
        EdtValorDinheiro.ValueNumeric,
        EdtValorDinheiro.ValueNumeric, 'S', DateToStr(DtFechamento.Date),
        DateToStr(DtFechamento.Date), 'Carteira', xHistoricoPadrao);
    end;

    //LANÇA EM CAIXA PRODUTO
    salvarLanCaixa(EdtValorDinheiro.ValueNumeric, 'Cateira', xHistoricoPadrao,
      xContaAvista, xTipoCaixa, '1');
  except
    Result := False;
  end;
end;

//Função para lançar valores de transferencia
function TFPgto.FinalizaLancamentosPix: Boolean;
begin
  try
    Result := True;
    //CONTAS A RECEBER/PAGAR
    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      salvarCtaReceber(EdtValorPix.ValueNumeric, 'Pix', xHistoricoPadrao,
        xContaAvista, xServicoAvista, '', xCodigoCliente)
    else
      salvarCtaPagar(EdtValorPix.ValueNumeric, 'Pix', xHistoricoPadrao,
        xContaAvista, xCodigoCliente);

    //PARCELA DE CONTAS A RECEBER
    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
    begin
      xCodigoCtaReceber := getValorGerador('GEN_CTARECEBER_ID');
      salvarParcelaCr(xCodigoCtaReceber, xNumeroDocumento + '1:1',
        EdtValorPix.ValueNumeric,
        EdtValorPix.ValueNumeric, 'S', DateToStr(DtFechamento.Date),
        DateToStr(DtFechamento.Date), 'Pix', xHistoricoPadrao, -1, '1');
    end
    else
    begin
      xCodigoCtaReceber := getValorGerador('GEN_CTAPAGAR_ID');
      salvarParcelaCp(xCodigoCtaReceber, xNumeroDocumento + '1:1',
        EdtValorPix.ValueNumeric,
        EdtValorPix.ValueNumeric, 'S', DateToStr(DtFechamento.Date),
        DateToStr(DtFechamento.Date), 'Pix', xHistoricoPadrao);
    end;

   salvarMovBanco(xContaAvista, EdtValorPix.ValueNumeric, 'Pix');

  except
    Result := False;
  end;
end;

function TFPgto.FinalizaLancamentosDuplicata: Boolean;
var
  xValorParcelaDuplicata, xValorSomaParcela: Currency;
  xNumeroParcelaGerada: Integer;
  xDiaVencimento, xMesVencimento, xAnoVencimento: Word;
  xData, xNumDoc: string;
begin
  try
    Result := True;

    //CONTAS A RECEBER/PAGAR
    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      salvarCtaReceber(EdtValorDuplicata.ValueNumeric, 'Carteira',
        xHistoricoPadrao,
        xContaAprazo, xServicoAprazo, '', xCodigoCliente)
    else
      salvarCtaPagar(EdtValorDuplicata.ValueNumeric, 'Carteira',
        xHistoricoPadrao,
        xContaAprazo, xCodigoCliente);

    //PARCELA DE CONTAS A RECEBER
    xValorParcelaDuplicata := strtofloat(FormatFloat('0.00', EdtValorDuplicata.ValueNumeric / EdtQtdParcDup.ValueInteger));
    xValorSomaParcela := 0;
    DecodeDate(DtFechamento.Date, xAnoVencimento, xMesVencimento,
      xDiaVencimento);
    xMesVencimento := xMesVencimento + 1;
    xDiaVencimento := EdtDiaPgtoDup.ValueInteger;

    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      xCodigoCtaReceber := getValorGerador('GEN_CTARECEBER_ID')
    else
      xCodigoCtaReceber := getValorGerador('GEN_CTAPAGAR_ID');

    for xNumeroParcelaGerada := 1 to strToInt(EdtQtdParcDup.Text) do
    begin
       if (xNumeroParcelaGerada = strToInt(EdtQtdParcDup.Text)) then
           xValorParcelaDuplicata := EdtValorDuplicata.ValueNumeric - xValorSomaParcela;
       xValorSomaParcela := xValorSomaParcela + xValorParcelaDuplicata;
      //Gerencia Vencimento
      if xMesVencimento > 12 then
      begin
        xMesVencimento := 1;
        xAnoVencimento := xAnoVencimento + 1;
      end;

      xNumDoc := xNumeroDocumento + ':' + IntToStr(xNumeroParcelaGerada) + '/' +
        EdtQtdParcDup.Text;
      xData := verificaData(xDiaVencimento, xMesVencimento, xAnoVencimento);

      if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
        salvarParcelaCr(xCodigoCtaReceber, xNumDoc, xValorParcelaDuplicata, 0,
          'N',
          '', xData, 'Carteira', xHistoricoPadrao, -1, '0')
      else
        salvarParcelaCp(xCodigoCtaReceber, xNumDoc, xValorParcelaDuplicata, 0,
          'N',
          '', xData, 'Carteira', xHistoricoPadrao);

      xMesVencimento := xMesVencimento + 1;
    end;
  except
    Result := False;
  end;
end;

//Função para lançar o financeiro de cheques
function TFPgto.FinalizaLancamentosCheque: Boolean;
var
  xValorParcelaCheque, xValorSomaParcela: Currency;
  xNumeroParcelaGerada, XCODLANCH, xCodMovBanco: Integer;
  xDiaVencimento, xMesVencimento, xAnoVencimento: Word;
  xData, xNumDoc: string;
begin
  try
    Result := True;

    //CONTAS A RECEBER/PAGAR
    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      salvarCtaReceber(EdtValorCheque.ValueNumeric, 'Cheque', xHistoricoPadrao,
        xContaAprazo, xServicoAprazo, '', xCodigoCliente)
    else
      salvarCtaPagar(EdtValorCheque.ValueNumeric, 'Cheque', xHistoricoPadrao,
        xContaAprazo, xCodigoCliente);

    //Retornamos com o código de movimentação bancária para as inserções
    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      xCodigoCtaReceber := getValorGerador('GEN_CTARECEBER_ID')
    else
      xCodigoCtaReceber := getValorGerador('GEN_CTAPAGAR_ID');

    //PARCELA DE CONTAS A RECEBER
    xValorParcelaCheque := strtofloat(FormatFloat('0.00', EdtValorCheque.ValueNumeric /
      EdtQtdParcCheque.ValueInteger));
    xValorSomaParcela := 0;
    DecodeDate(DtFechamento.Date, xAnoVencimento, xMesVencimento,
      xDiaVencimento);
    xMesVencimento := xMesVencimento + 1;
    xDiaVencimento := EdtDiaPgtoCheque.ValueInteger;

    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      xCodigoCtaReceber := getValorGerador('GEN_CTARECEBER_ID')
    else
      xCodigoCtaReceber := getValorGerador('GEN_CTAPAGAR_ID');

    for xNumeroParcelaGerada := 1 to strToInt(EdtQtdParcCheque.Text) do
    begin
       if (xNumeroParcelaGerada = strToInt(EdtQtdParcCheque.Text)) then
           xValorParcelaCheque := EdtValorCheque.ValueNumeric - xValorSomaParcela;
       xValorSomaParcela := xValorSomaParcela + xValorParcelaCheque;
      //Gerencia Vencimento
      if xMesVencimento > 12 then
      begin
        xMesVencimento := 1;
        xAnoVencimento := xAnoVencimento + 1;
      end;

      xNumDoc := xNumeroDocumento + ':' + IntToStr(xNumeroParcelaGerada) + '/' +
        EdtQtdParcCheque.Text;
      xData := verificaData(xDiaVencimento, xMesVencimento, xAnoVencimento);

      if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
        salvarParcelaCr(xCodigoCtaReceber, xNumDoc, xValorParcelaCheque, 0, 'N',
          '', xData, 'Cheque', xHistoricoPadrao, -1, '0')
      else
        salvarParcelaCp(xCodigoCtaReceber, xNumDoc, xValorParcelaCheque, 0, 'N',
          '', xData, 'Cheque', xHistoricoPadrao);

      xMesVencimento := xMesVencimento + 1;
    end;

     // MOVBANCO
     salvarMovBanco(xContaAprazo, EdtValorCheque.ValueNumeric, 'CHEQUE');

     //CHEQUECR
     //INSERE NOVO CAMPO EM LANCHEQUEREC
    XCODLANCH:=InserReg(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC');
    xCodMovBanco := getValorGerador('GEN_MOVBANCO_ID');

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('INSERT INTO CHEQUEREC (COD_CHEQUEREC, COD_BANCO, COD_MOVBANCO) ');
    MDO.Query.SQL.Add('VALUES (:COD_CHEQUEREC, :COD_BANCO, :COD_MOVBANCO)');
    //passa informações para variaveis derepetição
    MDO.Query.ParamByName('COD_CHEQUEREC').AsInteger:=XCODLANCH;
    MDO.Query.ParamByName('COD_BANCO').AsInteger:=xCodigoAbBanco;
    MDO.Query.ParamByName('COD_MOVBANCO').asInteger := xCodMovBanco;
    MDO.Query.ExecSQL;

  except
    Result := False;
  end;
end;

//Função para lançar contas a receber em forma de cartão de débito
function TFPgto.FinalizaLancamentosDebito: Boolean;
begin
  try
    result := True;
    //CONTAS A RECEBER/PAGAR
    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      salvarCtaReceber(EdtValorCd.ValueNumeric, 'D - Cartao', xHistoricoPadrao,
        xContaAprazo, xServicoAprazo, EdtNAutCd.Text, xCodigoCliente)
    else
      salvarCtaPagar(EdtValorCd.ValueNumeric, 'D - Cartao', xHistoricoPadrao,
        xContaAprazo, xCodigoCliente);

    //PARCELA DE CONTAS A RECEBER
    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
    begin
      xCodigoCtaReceber := getValorGerador('GEN_CTARECEBER_ID');
      salvarParcelaCr(xCodigoCtaReceber, xNumeroDocumento + '1:1',
        EdtValorCd.ValueNumeric,
        0, 'N', '', DateToStr(DtFechamento.Date + 1), 'D - Cartao',
          xHistoricoPadrao, xCodigoOperadoraDebito, '0');
    end
    else
    begin
      xCodigoCtaReceber := getValorGerador('GEN_CTAPAGAR_ID');
      salvarParcelaCp(xCodigoCtaReceber, xNumeroDocumento + '1:1',
        EdtValorCd.ValueNumeric,
        0, 'N', '', DateToStr(DtFechamento.Date + 1), 'D - Cartao',
          xHistoricoPadrao);
    end;
  except
    Result := False;
  end;
end;

//Função para lançar contas a receber de crédito
function TFPgto.FinalizaLancamentosCredito: Boolean;
var
  xValorParcelaCc, xValorSomaParcela: Currency;
  xNumeroParcelaGerada: Integer;
  xDiaVencimento, xMesVencimento, xAnoVencimento: Word;
  xData, xNumDoc: string;
begin
  try
    Result := True;

    //CONTAS A RECEBER/PAGAR
    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      salvarCtaReceber(EdtValorCc.ValueNumeric, 'C - Cartao', xHistoricoPadrao,
        xContaAprazo, xServicoAprazo, EdtNAutoCc.Text, xCodigoCliente)
    else
      salvarCtaPagar(EdtValorCc.ValueNumeric, 'C - Cartao', xHistoricoPadrao,
        xContaAprazo, xCodigoCliente);

    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      xCodigoCtaReceber := getValorGerador('GEN_CTARECEBER_ID')
    else
      xCodigoCtaReceber := getValorGerador('GEN_CTAPAGAR_ID');

    //PARCELA DE CONTAS A RECEBER
    xValorParcelaCc := strtofloat(FormatFloat('0.00', EdtValorCc.ValueNumeric / EdtQtdParcCc.ValueInteger));
    xValorSomaParcela := 0;
    DecodeDate(DtFechamento.Date, xAnoVencimento, xMesVencimento,
      xDiaVencimento);
    xMesVencimento := xMesVencimento + 1;
    xDiaVencimento := EdtDiaPgtoCc.ValueInteger;

    if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      xCodigoCtaReceber := getValorGerador('GEN_CTARECEBER_ID')
    else
      xCodigoCtaReceber := getValorGerador('GEN_CTAPAGAR_ID');

    for xNumeroParcelaGerada := 1 to strToInt(EdtQtdParcCc.Text) do
    begin
       if (xNumeroParcelaGerada = strToInt(EdtQtdParcCc.Text)) then
           xValorParcelaCc := EdtValorCc.ValueNumeric - xValorSomaParcela;
       xValorSomaParcela := xValorSomaParcela + xValorParcelaCc;
      //Gerencia Vencimento
      if xMesVencimento > 12 then
      begin
        xMesVencimento := 1;
        xAnoVencimento := xAnoVencimento + 1;
      end;

      xNumDoc := xNumeroDocumento + ':' + IntToStr(xNumeroParcelaGerada) + '/' +
        EdtQtdParcCc.Text;
      xData := verificaData(xDiaVencimento, xMesVencimento, xAnoVencimento);

      if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
        salvarParcelaCr(xCodigoCtaReceber, xNumDoc, xValorParcelaCc, 0, 'N',
          '', xData, 'C - Cartao', xHistoricoPadrao, xCodigoOperadoraCredito, '0')
      else
        salvarParcelaCp(xCodigoCtaReceber, xNumDoc, xValorParcelaCc, 0, 'N',
          '', xData, 'C - Cartao', xHistoricoPadrao);

      xMesVencimento := xMesVencimento + 1;
    end;
  except
    Result := False;
  end;
end;

function TFPgto.FinalizaLancamentosCredLoja: Boolean;
var
  xValorCredRest, xValor: Double;
  xCodigoFornecedor: Integer;
begin
  try
    begin
      result := True;
      if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
       begin
         MDO.QConsulta.Close;
         MDO.QConsulta.SQL.Clear;
         MDO.QConsulta.SQL.Add('SELECT COD_FORNEC FROM PESSOA JOIN FORNECEDOR ON FORNECEDOR.COD_PESSOA = PESSOA.COD_PESSOA WHERE PESSOA.CPFCNPJ = :CPFCNPJ');
         MDO.QConsulta.ParamByName('CPFCNPJ').AsString := xCpfCnpj;
         MDO.QConsulta.Open;

         xCodigoFornecedor := MDO.QConsulta.FieldValues['COD_FORNEC'];
       end else
       begin
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add('SELECT COD_CLIENTE FROM PESSOA JOIN CLIENTE ON CLIENTE.COD_PESSOA = PESSOA.COD_PESSOA WHERE PESSOA.CPFCNPJ = :CPFCNPJ');
           MDO.QConsulta.ParamByName('CPFCNPJ').AsString := xCpfCnpj;
           MDO.QConsulta.Open;

           xCodigoFornecedor := MDO.QConsulta.FieldValues['COD_CLIENTE'];
       end;

      xValorCredRest := xValorCredLoja;

      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      begin
        MDO.QConsulta.SQL.Add('SELECT PARCELACP.COD_PARCELACP AS CODIGO, PARCELACP.VALOR, PARCELACP.VALORPG, PARCELACP.DTREF FROM PARCELACP JOIN CTAPAGAR ON CTAPAGAR.COD_CTAPAGAR = PARCELACP.COD_CTAPAGAR ');
        MDO.QConsulta.SQL.Add('WHERE PARCELACP.FECH = :FECH AND PARCELACP.DTDEBITO IS NULL AND PARCELACP.HISTORICO LIKE :HISTORICO AND CTAPAGAR.COD_FORNEC = :COD_CLIENTE ORDER BY DTREF');
      end
      else
      begin
        MDO.QConsulta.SQL.Add('SELECT PARCELACR.COD_PARCELACR AS CODIGO, PARCELACR.VALOR, PARCELACR.VALORPG, PARCELACR.VALORPG, PARCELACR.DTREF FROM PARCELACR JOIN CTARECEBER ON CTARECEBER.COD_CTARECEBER = PARCELACR.COD_CTARECEBER ');
        MDO.QConsulta.SQL.Add('WHERE PARCELACR.FECH = :FECH AND PARCELACR.DTDEBITO IS NULL AND PARCELACR.HISTORICO LIKE :HISTORICO AND CTARECEBER.COD_CLIENTE = :COD_CLIENTE ORDER BY DTREF');
      end;
      MDO.QConsulta.ParamByName('FECH').AsString := 'N';
      MDO.QConsulta.ParamByName('HISTORICO').AsString := 'Troco Credito%';
      MDO.QConsulta.ParamByName('COD_CLIENTE').AsInteger := xCodigoFornecedor;
      MDO.QConsulta.Open;
      if not MDO.QConsulta.IsEmpty then
      begin
        while not MDO.QConsulta.Eof do
        begin
          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
            MDO.Query.SQL.Add('UPDATE PARCELACP SET VALORPG = :VALOR, DTDEBITO = :DATA, DTVENC = :DATA, FECH = :FECH WHERE COD_PARCELACP = :CODIGO')
          else
            MDO.Query.SQL.Add('UPDATE PARCELACR SET VALORPG = :VALOR, DTDEBITO = :DATA, DTVENC = :DATA, FECH = :FECH WHERE COD_PARCELACR = :CODIGO');

          xValor := MDO.QConsulta.FieldValues['VALOR'];
          if (xValorCredRest > xValor) or ((xValorCredRest +
            MDO.QConsulta.FieldValues['VALORPG']) = xValor) then
          begin
            MDO.Query.ParamByName('VALOR').AsFloat := xValor;
            MDO.Query.ParamByName('DATA').AsDate := DtFechamento.Date;
            MDO.Query.ParamByName('FECH').AsString := 'S';
            MDO.Query.ParamByName('CODIGO').AsInteger :=
              MDO.QConsulta.FieldValues['CODIGO'];
            xValorCredRest := xValorCredRest - xValor;
            MDO.Query.ExecSQL;

            // LANCAIXA
            salvarLanCaixa(xValor, 'Carteira', 'Troco Credito - ' + xHistoricoPadrao, xContaAvista, 'E', '1');
            salvarLanCaixa(xValor, 'Carteira', 'Troco Credito - ' + xHistoricoPadrao, xContaAvista, 'S', '1');
          end
          else if (xValorCredRest <> 0) then
          begin
            MDO.Query.ParamByName('VALOR').AsFloat := xValorCredRest;
            MDO.Query.ParamByName('DATA').AsString := '';
            MDO.Query.ParamByName('FECH').AsString := 'N';
            MDO.Query.ParamByName('CODIGO').AsInteger :=
              MDO.QConsulta.FieldValues['CODIGO'];
            xValorCredRest := 0;
            MDO.Query.ExecSQL;
          end;
          //MDO.Query.ExecSQL;
          MDO.Transac.CommitRetaining;

          MDO.QConsulta.Next;
        end;
      end;
      MDO.Query.ExecSQL;
    end;
  except
    result := False;
  end;
end;

//Função para Lançar o troco
function TFPgto.FinalizaLancamentosTroco: Boolean;
begin
  result := True;
  if FinalizaLancamentosTrocoDinheiro = False then
    result := False;
  if FinalizaLancamentosTrocoPix = False then
    result := False;
  if FinalizaLancamentosTrocoCredLoja = False then
    result := False;
end;

//Lançamento de troco em dinheiro
function TFPgto.FinalizaLancamentosTrocoDinheiro: Boolean;
begin
  try
    Result := True;
    if EdtValorTrocoDinheiro.ValueNumeric > 0 then
    begin

      //CONTAS A RECEBER/PAGAR
      if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
        salvarCtaPagar(EdtValorTrocoDinheiro.ValueNumeric, 'Carteira', 'Troco - '
          + xHistoricoPadrao, xContaAvista, xCodigoCliente)
      else
        salvarCtareceber(EdtValorTrocoDinheiro.ValueNumeric, 'Carteira',
          'Troco - ' + xHistoricoPadrao, xContaAvista, xServicoAvista, '', xCodigoCliente);

      //PARCELA DE CONTAS A RECEBER
      if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      begin
        xCodigoCtaReceber := getValorGerador('GEN_CTAPAGAR_ID');
        salvarParcelaCp(xCodigoCtaReceber, xNumeroDocumento + '1:1',
          EdtValorTrocoDinheiro.ValueNumeric,
          EdtValorTrocoDinheiro.ValueNumeric, 'S', DateToStr(DtFechamento.Date),
            DateToStr(DtFechamento.Date),
          'Carteira', 'Troco - ' + xHistoricoPadrao);
      end
      else
      begin
        xCodigoCtaReceber := getValorGerador('GEN_CTARECEBER_ID');
        salvarParcelaCr(xCodigoCtaReceber, xNumeroDocumento + '1:1',
          EdtValorTrocoDinheiro.ValueNumeric,
          EdtValorTrocoDinheiro.ValueNumeric, 'S', DateToStr(DtFechamento.Date),
            DateToStr(DtFechamento.Date),
          'Carteira', 'Troco - ' + xHistoricoPadrao, -1, '1');
      end;

      // LANÇAMENTO EM CAIXA
      salvarLanCaixa(EdtValorTrocoDinheiro.ValueNumeric, 'Cateira', 'Troco - ' + xHistoricoPadrao, xContaAvista, xTipoCaixaTroco, '1');
    end;
  except
    Result := False;
  end;
end;

//Lançamento de troco em pix
function TFPgto.FinalizaLancamentosTrocoPix: Boolean;
begin
  try
    Result := True;
    if EdtValorTrocoPix.ValueNumeric > 0 then
    begin

      //CONTAS A RECEBER/PAGAR
      if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
        salvarCtaPagar(EdtValorTrocoPix.ValueNumeric, 'Pix', 'Troco - ' +
          xHistoricoPadrao, xContaAvista, xCodigoCliente)
      else
        salvarCtareceber(EdtValorTrocoPix.ValueNumeric, 'Pix', 'Troco - ' +
          xHistoricoPadrao, xContaAvista, xServicoAvista, '', xCodigoCliente);

      //PARCELA DE CONTAS A RECEBER
      if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      begin
        xCodigoCtaReceber := getValorGerador('GEN_CTAPAGAR_ID');
        salvarParcelaCp(xCodigoCtaReceber, xNumeroDocumento + '1:1',
          EdtValorTrocoPix.ValueNumeric,
          EdtValorTrocoPix.ValueNumeric, 'S', DateToStr(DtFechamento.Date),
            DateToStr(DtFechamento.Date),
          'Pix', 'Troco - ' + xHistoricoPadrao);
      end
      else
      begin
        xCodigoCtaReceber := getValorGerador('GEN_CTARECEBER_ID');
        salvarParcelaCr(xCodigoCtaReceber, xNumeroDocumento + '1:1',
          EdtValorTrocoPix.ValueNumeric,
          EdtValorTrocoPix.ValueNumeric, 'S', DateToStr(DtFechamento.Date),
            DateToStr(DtFechamento.Date),
          'Pix', 'Troco - ' + xHistoricoPadrao, -1, '1');
      end;

      // LANÇAMENTO EM MOVBANCO
     salvarMovBanco(xContaAvista, EdtValorTrocoPix.ValueNumeric, 'Pix');
    end;
  except
    Result := False;
  end;
end;

//Lançamento de troco crédito em loja
function TFPgto.FinalizaLancamentosTrocoCredLoja: Boolean;
var xCodigoPessoa, xCodigoFornecedor: Integer;
begin
  try
    Result := True;
    if edtValorTrocoCredLoja.ValueNumeric > 0 then
    begin

       if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
       begin
         MDO.QConsulta.Close;
         MDO.QConsulta.SQL.Clear;
         MDO.QConsulta.SQL.Add('SELECT COD_FORNEC FROM PESSOA JOIN FORNECEDOR ON PESSOA.COD_PESSOA = FORNECEDOR.COD_PESSOA WHERE PESSOA.CPFCNPJ = :CPFCNPJ');
         MDO.QConsulta.ParamByName('CPFCNPJ').AsString := xCpfCnpj;
         MDO.QConsulta.Open;

         if MDO.QConsulta.IsEmpty then
         begin
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add('SELECT COD_PESSOA FROM PESSOA WHERE PESSOA.CPFCNPJ = :CPFCNPJ');
           MDO.QConsulta.ParamByName('CPFCNPJ').AsString := xCpfCnpj;
           MDO.QConsulta.Open;

           xCodigoPessoa := MDO.QConsulta.FieldValues['COD_PESSOA'];
           xCodigoFornecedor := InserReg(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC');

           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add('INSERT INTO FORNECEDOR (COD_FORNEC, COD_PESSOA) VALUES (:COD_FORNEC, :COD_PESSOA)') ;
           MDO.Query.ParamByName('COD_FORNEC').AsInteger := xCodigoFornecedor;
           MDO.Query.ParamByName('COD_PESSOA').AsInteger := xCodigoPessoa;
           MDO.Query.ExecSQL;
         end else
             xCodigoFornecedor := MDO.QConsulta.FieldValues['COD_FORNEC'];
       end else
       begin
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add('SELECT COD_CLIENTE FROM PESSOA JOIN CLIENTE ON PESSOA.COD_PESSOA = CLIENTE.COD_PESSOA WHERE PESSOA.CPFCNPJ = :CPFCNPJ');
           MDO.QConsulta.ParamByName('CPFCNPJ').AsString := xCpfCnpj;
           MDO.QConsulta.Open;

           if MDO.QConsulta.IsEmpty then
           begin
             MDO.QConsulta.Close;
             MDO.QConsulta.SQL.Clear;
             MDO.QConsulta.SQL.Add('SELECT COD_PESSOA FROM PESSOA WHERE PESSOA.CPFCNPJ = :CPFCNPJ');
             MDO.QConsulta.ParamByName('CPFCNPJ').AsString := xCpfCnpj;
             MDO.QConsulta.Open;

             xCodigoPessoa := MDO.QConsulta.FieldValues['COD_PESSOA'];
             xCodigoFornecedor := InserReg( DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE');

             MDO.Query.Close;
             MDO.Query.SQL.Clear;
             MDO.Query.SQL.Add('INSERT INTO CLIENTE (COD_CLIENTE, COD_PESSOA) VALUES (:COD_CLIENTE, :COD_PESSOA)') ;
             MDO.Query.ParamByName('COD_CLIENTE').AsInteger := xCodigoFornecedor;
             MDO.Query.ParamByName('COD_PESSOA').AsInteger := xCodigoPessoa;
             MDO.Query.ExecSQL;
           end else
               xCodigoFornecedor := MDO.QConsulta.FieldValues['COD_CLIENTE'];
       end;

      //CONTAS A RECEBER/PAGAR
      if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
        salvarCtaPagar(EdtValorTrocoCredLoja.ValueNumeric, 'Carteira',
          'Troco Credito - ' + xHistoricoPadrao, xContaAvista, xCodigoFornecedor)
      else
        salvarCtareceber(EdtValorTrocoCredLoja.ValueNumeric, 'Carteira',
          'Troco Credito - ' + xHistoricoPadrao, xContaAvista, xServicoAvista,
            '', xCodigoFornecedor);

      //PARCELA DE CONTAS A RECEBER
      if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
      begin
        xCodigoCtaReceber := getValorGerador('GEN_CTAPAGAR_ID');
        salvarParcelaCp(xCodigoCtaReceber, xNumeroDocumento + '1:1', edtValorTrocoCredLoja.ValueNumeric,
          0, 'N', '', DateToStr(DtFechamento.Date),
          'Carteira', 'Troco Credito ' + xHistoricoPadrao);
      end
      else
      begin
        xCodigoCtaReceber := getValorGerador('GEN_CTARECEBER_ID');
        salvarParcelaCr(xCodigoCtaReceber, xNumeroDocumento + '1:1',
          edtValorTrocoCredLoja.ValueNumeric,
          0, 'N', '', DateToStr(DtFechamento.Date),
          'Carteira', 'Troco Credito ' + xHistoricoPadrao, -1, '0');
      end;
    end;
  except
    Result := False;
  end;
end;

procedure TFPgto.EdtValorDinheiroExit(Sender: TObject);
begin
  Recalcula();
end;

procedure TFPgto.EdtQtdParcCcExit(Sender: TObject);
var
  xValorParcela: Double;
begin
  if EdtQtdParcCc.ValueInteger > 1 then
  begin
    LblCc.Visible := True;
    EdtValorParcCc.Visible := True;
    xValorParcela := EdtValorCc.ValueNumeric / EdtQtdParcCc.ValueInteger;
    EdtValorParcCc.Text := FormatFloat('0.00', xValorParcela);
  end
  else
  begin
    LblCc.Visible := False;
    EdtValorParcCc.Visible := False;
    EdtValorParcCc.ValueNumeric := 0.00;
    PDropCartaoCredito.AutoSize := True;
  end;
end;

procedure TFPgto.EdtValorCcExit(Sender: TObject);
begin
  Recalcula();
end;

procedure TFPgto.BtnDropCcClick(Sender: TObject);
begin
  if (PDropCartaoCredito.Visible = True) then
    PDropCartaoCredito.Visible := False
  else
  begin
    PDropCartaoCredito.Visible := True;
    EdtQtdParcCc.setFocus;
  end
end;

procedure TFPgto.BtnDropCdClick(Sender: TObject);
begin
  if (PDropCd.Visible = True) then
    PDropCd.Visible := False
  else
  begin
    PDropCd.Visible := True;
    EdtNAutCd.setFocus;
  end
end;

procedure TFPgto.EdtValorCdExit(Sender: TObject);
begin
  Recalcula();
end;

procedure TFPgto.EdtValorPixExit(Sender: TObject);
begin
  Recalcula();
end;

procedure TFPgto.BtnDropChequeClick(Sender: TObject);
begin
  if (PDropCheque.Visible = True) then
    PDropCheque.Visible := False
  else
  begin
    PDropCheque.Visible := True;
    EdtQtdParcCheque.setFocus;
  end
end;

procedure TFPgto.EdtQtdParcChequeExit(Sender: TObject);
var
  xValorParcela: Double;
begin
  if (EdtQtdParcCheque.ValueInteger > 1) then
  begin
    LblCheque.Visible := True;
    EdtValorParcCheque.Visible := True;
    xValorParcela := EdtValorCheque.ValueNumeric /
      EdtQtdParcCheque.ValueInteger;
    EdtValorParcCheque.Text := FormatFloat('0.00', xValorParcela);
  end
  else
  begin
    LblCheque.Visible := False;
    EdtValorParcCheque.Visible := False;
    EdtValorParcCheque.ValueNumeric := 0.00;
    PDropCheque.AutoSize := True;
  end;
end;

procedure TFPgto.BtnDropDuplicataClick(Sender: TObject);
begin
  if (PDropDuplicata.Visible = True) then
    PDropDuplicata.Visible := False
  else
  begin
    PDropDuplicata.Visible := True;
    EdtQtdParcDup.setFocus;
  end
end;

procedure TFPgto.EdtQtdParcDupExit(Sender: TObject);
var
  xValorParcela: Double;
begin
  if (EdtQtdParcDup.ValueInteger > 1) then
  begin
    LblDupl.Visible := True;
    EdtValorParcDup.Visible := True;
    xValorParcela := EdtValorDuplicata.ValueNumeric /
      EdtQtdParcDup.ValueInteger;
    EdtValorParcDup.Text := FormatFloat('0.00', xValorParcela);
  end
  else
  begin
    LblDupl.Visible := False;
    EdtValorParcDup.Visible := False;
    EdtValorParcDup.ValueNumeric := 0.00;
    PDropDuplicata.AutoSize := True;
  end;
end;

procedure TFPgto.EdtValorChequeExit(Sender: TObject);
begin
  Recalcula();
end;

procedure TFPgto.EdtValorDuplicataExit(Sender: TObject);
begin
  Recalcula();
end;

procedure TFPgto.BtnDropTrocoClick(Sender: TObject);
begin
  if (PDropTroco.Visible = True) then
    PDropTroco.Visible := False
  else
  begin
    PDropTroco.Visible := True;
    EdtValorTrocoDinheiro.setFocus;
  end;
end;

procedure TFPgto.btnProcuraCaixaClick(Sender: TObject);
begin
  FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption,
    '');
  if AbrirForm(TFCadCaixa, FCadCaixa, 1) = 'Selected' then
  begin
    xCodigoCaixa := DMCAIXA.TCaixa.FieldByName('cod_caixa').AsInteger;
    edCaixaSelecionado.Text := DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
    VerificaCaixaAberto;
  end;
end;

procedure TFPgto.FormActivate(Sender: TObject);
begin
  IniciaPagamento;
end;

procedure TFPgto.BtnFializarPgtoClick(Sender: TObject);
var
  xVerficaCampos: boolean;
  xDia, xMes, xAno: Word;
begin
  DecodeDate(DtFechamento.Date, xAno, xMes, xDia);
  if (EdtValorTrocoDinheiro.ValueNumeric = 0) and (EdtValorTrocoPix.ValueNumeric
    = 0) and (edtValorTrocoCredLoja.ValueNumeric = 0) then
    EdtValorTrocoDinheiro.ValueNumeric := xValorTroco;

  Recalcula;
  xVerficaCampos := True;
  if (EdtValorDuplicata.ValueNumeric > 0) then
  begin
    if (EdtQtdParcDup.ValueInteger = 0) then
      EdtQtdParcDup.ValueInteger := 1;
    if (EdtDiaPgtoDup.ValueInteger = 0) then
      EdtDiaPgtoDup.ValueInteger := xDia;
  end;

  if (EdtValorCheque.ValueNumeric > 0) then
  begin
    if (EdtQtdParcCheque.ValueInteger = 0) then
       EdtQtdParcCheque.ValueInteger := 1;
    if (EdtDiaPgtoCheque.ValueInteger = 0) then
       EdtDiaPgtoCheque.ValueInteger := xDia;
  end;

  if (EdtValorCc.ValueNumeric > 0) then
  begin
    if (EdtQtdParcCc.ValueInteger = 0) then
       EdtQtdParcCc.ValueInteger := 1;
    if (EdtDiaPgtoCc.ValueInteger = 0) then
       EdtDiaPgtoCc.ValueInteger := xDia;

    if (EdtNAutoCc.Text = '') or (EdtOperadoraCc.Text = '<ENTER>') then
    begin
      xVerficaCampos := False;
      MessageDlg('N° de autorização ou operadora de cartão de crédito não informado!', mtWarning, [mbOK], 0);
      PDropCartaoCredito.Visible := True;
      EdtNAutoCc.setFocus;
    end;
  end;

  if (EdtValorCd.ValueNumeric > 0) then
  begin
    if (EdtNAutCd.Text = '') or (EdtOperadoraCd.Text = '<ENTER>') then
    begin
      xVerficaCampos := False;
      MessageDlg('N° de autorização ou operadora de cartão de débito não informado!', mtWarning, [mbOK], 0);
      PDropCd.Visible := True;
      EdtNAutCd.setFocus;
    end;
  end;

  if xValorCredLoja > xValorCredLojaDisp then
    xVerficaCampos := False;

  if (xValorResta <> 0) then
  begin
    xVerficaCampos := False;
    MessageDlg('Não foi possível finalizar o pagamento pois o valor pago é diferente do valor total, verifique!', mtWarning, [mbOK], 0);
  end;

  if (xValorTrocoResta <> 0) then
  begin
    xVerficaCampos := False;
    MessageDlg('Não foi possível finalizar o pagamento, selecione a forma de troco!', mtWarning, [mbOK], 0);
  end;

  if ((xCpfCnpj = '') or (xCpfCnpj = '-1')) and ((edtValorTrocoCredLoja.ValueNumeric>0) or (edtValorCredLoja.ValueNumeric>0)) then
  begin
    xVerficaCampos := False;
    MessageDlg('O Sistema de crédito em loja não pode ser utilizado caso o Cliente/Fornecedor esteja sem CPF/CNPJ cadastrado!', mtWarning, [mbOK], 0);
  end;

  if xVerficaCampos = True then
  begin
    //Finaliza pagamentos e fecha os Pedidos
    if FinalizaLancamentos = True then
    begin
      MessageDlg('Os pagamentos ocorreram com sucesso!', mtInformation, [mbOK],
        0);
      Close;
    end
    else
    begin
      MessageDlg('Ocorreram problemas com os pagamentos. Verifique!', mtWarning,
        [mbOK], 0);
      Close;
    end;
  end;
end;

procedure TFPgto.EdtOperadoraCcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    POperadoraCartaoCredito.Visible := true;
    POperadoraCartaoCredito.BringToFront;
    POperadoraCartaoCredito.Left := 92;
    POperadoraCartaoCredito.Top := 70;
    dbgCartaoCredito.SetFocus;
  end;
end;

procedure TFPgto.dbgCartaoCreditoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    POperadoraCartaoCredito.Visible := false;
    EdtOperadoraCc.Text := DMFINANC.TCartao.FieldByName('DESCRICAO').AsString;
    xCodigoOperadoraCredito :=
      DMFINANC.TCartao.FieldByName('cod_cartao').AsInteger;
  end;
end;

procedure TFPgto.dbgCartaoDebitoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    POperadoraCartaoDebito.Visible := false;
    EdtOperadoraCd.Text := DMFINANC.TCartao.FieldByName('DESCRICAO').AsString;
    xCodigoOperadoraDebito :=
      DMFINANC.TCartao.FieldByName('cod_cartao').AsInteger;
  end;
end;

procedure TFPgto.EdtOperadoraCdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    POperadoraCartaoDebito.Visible := true;
    POperadoraCartaoDebito.BringToFront;
    POperadoraCartaoDebito.Left := 104;
    POperadoraCartaoDebito.Top := 63;
    dbgCartaoDebito.SetFocus;
  end;
end;

procedure TFPgto.EdtValorTrocoDinheiroExit(Sender: TObject);
begin
  Recalcula;
end;

procedure TFPgto.EdtValorTrocoPixExit(Sender: TObject);
begin
  Recalcula;
end;

procedure TFPgto.edtValorTrocoCredLojaExit(Sender: TObject);
begin
  Recalcula;
end;

procedure TFPgto.edtValorCredLojaExit(Sender: TObject);
begin
  Recalcula;
end;

procedure TFPgto.BtnCredLojaDetalhesClick(Sender: TObject);
begin
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'ORDEM') then
  begin
    MDO.QConsulta.SQL.Add('SELECT PARCELACP.COD_PARCElACP, PARCELACP.VALOR, PARCELACP.VALORPG, PARCELACP.HISTORICO, PARCELACP.DTREF FROM PARCELACP JOIN CTAPAGAR ON CTAPAGAR.COD_CTAPAGAR = PARCELACP.COD_CTAPAGAR ');
    MDO.QConsulta.SQL.Add('JOIN FORNECEDOR ON CTAPAGAR.COD_FORNEC = FORNECEDOR.COD_FORNEC JOIN PESSOA ON PESSOA.COD_PESSOA = FORNECEDOR.COD_PESSOA ');
    MDO.QConsulta.SQL.Add('WHERE PARCELACP.FECH = :FECH AND PARCELACP.DTDEBITO IS NULL AND PARCELACP.HISTORICO LIKE :HISTORICO AND PESSOA.CPFCNPJ = :CPFCNPJ ORDER BY DTREF');
  end
  else
  begin
    MDO.QConsulta.SQL.Add('SELECT PARCELACR.COD_PARCELACR, PARCELACR.VALOR, PARCELACR.VALORPG, PARCELACR.HISTORICO, PARCELACR.DTREF FROM PARCELACR JOIN CTARECEBER ON CTARECEBER.COD_CTARECEBER = PARCELACR.COD_CTARECEBER ');
    MDO.QConsulta.SQL.Add('JOIN CLIENTE ON CTARECEBER.COD_CLIENTE = CLIENTE.COD_CLIENTE JOIN PESSOA ON PESSOA.COD_PESSOA = CLIENTE.COD_PESSOA ');
    MDO.QConsulta.SQL.Add('WHERE PARCELACR.FECH = :FECH AND PARCELACR.DTDEBITO IS NULL AND PARCELACR.HISTORICO LIKE :HISTORICO AND PESSOA.CPFCNPJ = :CPFCNPJ ORDER BY DTREF');
  end;
  MDO.QConsulta.ParamByName('FECH').AsString := 'N';
  MDO.QConsulta.ParamByName('HISTORICO').AsString := 'Troco Credito%';
  MDO.QConsulta.ParamByName('CPFCNPJ').AsString := xCpfCnpj;

  MDO.QConsulta.Open;

  PCredLojaDetalhes.Visible := True;
  PCredLojaDetalhes.Top := 244;
  PCredLojaDetalhes.Left := 20;
  PCredLojaDetalhes.BringToFront;
end;

procedure TFPgto.BtnFecharCredLojaDetalhesClick(Sender: TObject);
begin
  PCredLojaDetalhes.Visible := False;
  MDO.QConsulta.Close;
end;

procedure TFPgto.BtnCancelarClick(Sender: TObject);
begin
   if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente cancelar o pagamento?',
       '', 2, 3, False, 'C') = 2 then
   begin
       xResultadoPagamento := 'CANCELADO';
       MDO.Transac.Rollback;
       close;
   end;
end;

procedure TFPgto.salvarCtaReceber(xValorCtaReceber: Double; xCobrancaCtaReceber:
  string; xHistorico: string; xConta: Integer; xContaServ: Integer; xNumCartao: string;
  xCliente: Integer);
begin
  MDO.Query.Close;
  MDO.Query.SQL.Clear;

  MDO.Query.SQL.Add(' INSERT INTO CTARECEBER (COD_USUARIO, DTLANC, COBRANCA, COD_CLIENTE, COD_PLNCTA, HISTORICO, TIPOGERADOR, ');
  MDO.Query.SQL.Add(' 						COD_GERADOR, VALOR, COD_COTAMOEDA, COD_FORMPAG, NUMDOC, COD_PLNCTASERV, NUMCARTAO, COD_VENDEDOR) ');
  MDO.Query.SQL.Add(' 				VALUES (:COD_USUARIO, :DTLANC, :COBRANCA, :COD_CLIENTE, :COD_PLNCTA, :HISTORICO, :TIPOGERADOR, ');
  MDO.Query.SQL.Add(' 						:COD_GERADOR, :VALOR, :COD_COTAMOEDA, :COD_FORMPAG, :NUMDOC, :COD_PLNCTASERV, :NUMCARTAO, :COD_VENDEDOR) ');

  MDO.Query.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
  MDO.Query.ParamByName('DTLANC').AsString := DateToStr(DtFechamento.Date);
  MDO.Query.ParamByName('COBRANCA').AsString := xCobrancaCtaReceber;
  MDO.Query.ParamByName('COD_CLIENTE').AsInteger := xCodigoCliente;
  MDO.Query.ParamByName('COD_PLNCTA').AsInteger := xConta;
  MDO.Query.ParamByName('HISTORICO').AsString := Copy(xHistorico, 0, 100);
  MDO.Query.ParamByName('TIPOGERADOR').AsString := XTipoGerador;
  MDO.Query.ParamByName('COD_GERADOR').AsInteger := xCodigoPedido;
  MDO.Query.ParamByName('VALOR').AsCurrency := xValorCtaReceber;
  MDO.Query.ParamByName('COD_COTAMOEDA').AsString := '-1';
  MDO.Query.ParamByName('COD_FORMPAG').AsInteger := xCodigoFormaPagamento;
  MDO.Query.ParamByName('NUMDOC').AsString := xNumeroDocumento;
  MDO.Query.ParamByName('COD_PLNCTASERV').AsInteger := xContaServ;
  MDO.Query.ParamByName('NUMCARTAO').AsString := xNumCartao;
  MDO.Query.ParamByName('COD_VENDEDOR').AsInteger := xCodigoVendedor;
  MDO.Query.ParamByName('COD_CLIENTE').AsInteger := xCliente;
  MDO.Query.ExecSQL;
end;

procedure TFPgto.salvarCtaPagar(xValorCtaPagar: Double; xCobrancaCtaPagar:
  string; xHistorico: string; xConta: Integer; xCliente: Integer);
begin
  MDO.Query.Close;
  MDO.Query.SQL.Clear;

  MDO.Query.SQL.Add(' INSERT INTO CTAPAGAR (COD_USUARIO, DTLANC, COBRANCA, COD_FORNEC, COD_PLNCTA, HISTORICO, TIPOGERADOR, ');
  MDO.Query.SQL.Add(' 						COD_GERADOR, VALOR, COD_COTAMOEDA, COD_FORMPAG, NUMDOC) ');
  MDO.Query.SQL.Add(' 				VALUES (:COD_USUARIO, :DTLANC, :COBRANCA, :COD_CLIENTE, :COD_PLNCTA, :HISTORICO, :TIPOGERADOR, ');
  MDO.Query.SQL.Add(' 						:COD_GERADOR, :VALOR, :COD_COTAMOEDA, :COD_FORMPAG, :NUMDOC) ');
  MDO.Query.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
  MDO.Query.ParamByName('DTLANC').AsString := DateToStr(DtFechamento.Date);
  MDO.Query.ParamByName('COBRANCA').AsString := xCobrancaCtaPagar;
  MDO.Query.ParamByName('COD_CLIENTE').AsInteger := xCliente;
  MDO.Query.ParamByName('COD_PLNCTA').AsInteger := xConta;
  MDO.Query.ParamByName('HISTORICO').AsString := Copy(xHistorico, 0, 100);
  MDO.Query.ParamByName('TIPOGERADOR').AsString := XTipoGerador;
  MDO.Query.ParamByName('COD_GERADOR').AsInteger := xCodigoPedido;
  MDO.Query.ParamByName('VALOR').AsCurrency := xValorCtaPagar;
  MDO.Query.ParamByName('COD_COTAMOEDA').AsString := '-1';
  MDO.Query.ParamByName('COD_FORMPAG').AsInteger := xCodigoFormaPagamento;
  MDO.Query.ParamByName('NUMDOC').AsString := xNumeroDocumento;
  MDO.Query.ExecSQL;
end;

procedure TFPgto.salvarParcelaCr(xCodigoCtaReceber: Integer; xNumParcela:
  string; xParcelaCr: Double;
  xParcelaCrPg: Double; xFech: string; xDtDebito: string; xDtVenc: string;
  xCobrancaParcelaCr: string; xHistorico: string; xCodigoOperadora: Integer; xAntecipado: String);
var
  xValorTemporarioServicos: Double;
begin
  MDO.Query.Close;
  MDO.Query.SQL.Clear;
  MDO.Query.SQL.Add(' INSERT INTO PARCELACR (COD_CTARECEBER, NUMPARC, VALOR, VALORPG, FECH, COBRANCA, DTVENC, DTDEBITO, HISTORICO, VALEXT, VALORSERV, VALORPROD, DTREF, PERVLRSERV, ESTRU, COD_ABCAIXA, COD_COTA, ANTECIPADO) ');
  MDO.Query.SQL.Add(' VALUES (:COD_CTARECEBER, :NUMPARC, :VALOR, :VALORPG, :FECH, :COBRANCA, :DTVENC, :DTDEBITO, :HISTORICO, :VALEXT, :VALORSERV, :VALORPROD, :DTREF, :PERVLRSERV, :ESTRU, :COD_ABCAIXA, :COD_COTA, :ANTECIPADO) ');
  MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaReceber;
  MDO.Query.ParamByName('NUMPARC').AsString := xNumParcela;
  MDO.Query.ParamByName('VALOR').AsCurrency := xParcelaCr;
  MDO.Query.ParamByName('VALORPG').AsCurrency := xParcelaCrPg;
  MDO.Query.ParamByName('FECH').AsString := xFech;
  MDO.Query.ParamByName('COBRANCA').AsString := xCobrancaParcelaCr;
  MDO.Query.ParamByName('DTDEBITO').AsString := xDtDebito;
  MDO.Query.ParamByName('DTVENC').AsString := xDtVenc;
  MDO.Query.ParamByName('DTREF').AsString := DateToStr(DtFechamento.Date);
  MDO.Query.ParamByName('HISTORICO').AsString := Copy(xHistorico, 0, 100);
  FMenu.Extenso.Numero := FloatToStr(xParcelaCr);
  MDO.Query.ParamByName('VALEXT').AsString := fmenu.Extenso.Extenso;
  MDO.Query.ParamByName('ESTRU').AsString := '0';
  MDO.Query.ParamByName('COD_COTA').AsCurrency := xCodigoOperadora;
  MDO.Query.ParamByName('ANTECIPADO').AsString := xAntecipado;
  if (XTipoGerador = 'PEDVENDA') or (XTipoGerador = 'COMPRA') then
  begin
    MDO.Query.ParamByName('VALORSERV').AsCurrency := 0;
    MDO.Query.ParamByName('VALORPROD').AsCurrency := xParcelaCr;
    MDO.Query.ParamByName('PERVLRSERV').AsCurrency := 0;
    MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := xCodigoAbCaixa;
  end
  else if (XTipoGerador = 'ORDEM') then
  begin
    xValorTemporarioServicos := (xParcelaCr * xPercentualServico) / 100;
    MDO.Query.ParamByName('VALORSERV').AsCurrency := xValorTemporarioServicos;
    MDO.Query.ParamByName('VALORPROD').AsCurrency := xParcelaCr -
      xValorTemporarioServicos;
    MDO.Query.ParamByName('PERVLRSERV').AsCurrency := xPercentualServico;
    MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := xCodigoAbCaixa;
  end;
  MDO.Query.ExecSQL;
end;

procedure TFPgto.salvarParcelaCp(xCodigoCtaPagar: Integer; xNumParcela: string;
  xParcelaCp: Double;
  xParcelaCpPg: Double; xFech: string; xDtDebito: string; xDtVenc: string;
    xCobrancaParcelaCp: string; xHistorico: string);
begin
  MDO.Query.Close;
  MDO.Query.SQL.Clear;
  MDO.Query.SQL.Add(' INSERT INTO PARCELACP (COD_CTAPAGAR, NUMPARC, VALOR, VALORPG, FECH, COBRANCA, DTVENC, DTDEBITO, HISTORICO, VALEXT, DTREF, ESTRU) ');
  MDO.Query.SQL.Add(' VALUES (:COD_CTARECEBER, :NUMPARC, :VALOR, :VALORPG, :FECH, :COBRANCA, :DTVENC, :DTDEBITO, :HISTORICO, :VALEXT, :DTREF, :ESTRU) ');
  MDO.Query.ParamByName('COD_CTARECEBER').AsInteger := xCodigoCtaPagar;
  MDO.Query.ParamByName('NUMPARC').AsString := xNumParcela;
  MDO.Query.ParamByName('VALOR').AsCurrency := xParcelaCp;
  MDO.Query.ParamByName('VALORPG').AsCurrency := xParcelaCpPg;
  MDO.Query.ParamByName('FECH').AsString := xFech;
  MDO.Query.ParamByName('COBRANCA').AsString := xCobrancaParcelaCp;
  MDO.Query.ParamByName('DTDEBITO').AsString := xDtDebito;
  MDO.Query.ParamByName('DTVENC').AsString := xDtVenc;
  MDO.Query.ParamByName('DTREF').AsString := DateToStr(DtFechamento.Date);
  MDO.Query.ParamByName('HISTORICO').AsString := Copy(xHistorico, 0, 100);
  FMenu.Extenso.Numero := FloatToStr(xParcelaCp);
  MDO.Query.ParamByName('VALEXT').AsString := fmenu.Extenso.Extenso;
  MDO.Query.ParamByName('ESTRU').AsString := '0';
  MDO.Query.ExecSQL;
end;

procedure TFPgto.salvarLanCaixa(xValor: Double; xTipoCobranca: string;
  xHistorico: string; xConta: Integer; xTipoCaixaF: string; xEstrutura: String);
var
  xCodLanCaixa: Integer;
  xValorProd, xValorServ: Double;
begin
  MDO.Query.Close;
  MDO.Query.SQL.Clear;
  MDO.Query.SQL.Add(' insert into lancaixa (DTLANC, DTREFER, COD_PLNCTAFIL, ESTRU, HISTORICO, VALOR, SALDOANT, TIPOGERADOR, COD_GERADOR, ');
  MDO.Query.SQL.Add('                       TIPO, TIPCAI, COD_ABCAIXA, COD_USUARIO, DOC) ');
  MDO.Query.SQL.Add('        values (:DTLANC, :DTREFER, :COD_PLNCTAFIL, :ESTRU, :HISTORICO, :VALOR, :SALDOANT, :TIPOGERADOR, :COD_GERADOR, ');
  MDO.Query.SQL.Add('                       :TIPO, :TIPCAI, :COD_ABCAIXA, :COD_USUARIO, :DOC) ');
  MDO.Query.ParamByName('DTLANC').AsString := DateToStr(DtFechamento.Date);
  MDO.Query.ParamByName('DTREFER').AsDateTime := DtFechamento.Date;
  MDO.Query.ParamByName('COD_PLNCTAFIL').AsInteger := xConta;
  MDO.Query.ParamByName('ESTRU').AsString := '1';
  MDO.Query.ParamByName('HISTORICO').AsString := Copy(xHistorico, 0, 200);
  MDO.Query.ParamByName('VALOR').AsCurrency := xValor;
  MDO.Query.ParamByName('SALDOANT').AsCurrency := 0;
  MDO.Query.ParamByName('TIPOGERADOR').AsString := XTipoGerador;
  MDO.Query.ParamByName('COD_GERADOR').Value := xCodigoPedido;
  MDO.Query.ParamByName('TIPO').AsString := xTipoCobranca; //Carteira
  MDO.Query.ParamByName('TIPCAI').AsString := xTipoCaixaF;
  MDO.Query.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
  MDO.Query.ParamByName('DOC').AsString := Copy(xNumeroDocumento, 0, 25);
  MDO.Query.ParamByName('COD_ABCAIXA').AsInteger := xCodigoAbCaixa;
  MDO.Query.ExecSQL;

  xCodLanCaixa := getValorGerador('GEN_LANCAIXA_ID');
  xValorServ := (xValor * xPercentualServico) / 100;
  xValorProd := xValor - xValorServ;
  salvarLanCaixaContaProd(xCodLanCaixa, xValorProd);
  if xValorServ > 0 then
    salvarLanCaixaContaServ(xCodLanCaixa, xValorServ);
end;

procedure TFPgto.salvarLanCaixaContaProd(xCodLanCaixa: Integer; xValorProd:
  Double);
begin
  MDO.Query.Close;
  MDO.Query.SQL.Clear;
  MDO.Query.SQL.Add(' insert into lancaixacta (COD_LANCAIXA, VALOR, COD_PLNCTA) ');
  MDO.Query.SQL.Add('        values (:COD_LANCAIXA, :VALOR, :COD_PLNCTA) ');
  MDO.Query.ParamByName('COD_LANCAIXA').AsInteger := xCodLanCaixa;
  MDO.Query.ParamByName('VALOR').AsCurrency := xValorProd;
  MDO.Query.ParamByName('COD_PLNCTA').AsInteger := xContaAvista;
  MDO.Query.ExecSQL;
end;

procedure TFPgto.salvarLanCaixaContaServ(xCodLanCaixa: Integer; xValorServ:
  Double);
begin
  MDO.Query.Close;
  MDO.Query.SQL.Clear;
  MDO.Query.SQL.Add(' insert into lancaixacta (COD_LANCAIXA, VALOR, COD_PLNCTA) ');
  MDO.Query.SQL.Add('        values (:COD_LANCAIXA, :VALOR, :COD_PLNCTA) ');
  MDO.Query.ParamByName('COD_LANCAIXA').AsInteger := xCodLanCaixa;
  MDO.Query.ParamByName('VALOR').AsCurrency := xValorServ;
  MDO.Query.ParamByName('COD_PLNCTA').AsInteger := xServicoAvista;
  MDO.Query.ExecSQL;
end;

procedure TFPgto.salvarMovBanco(xConta: Integer; xValor: Double; xCobranca: String);
Var
   xTipoOperacao: String;
begin
   If xTipoCaixa = 'E' Then
       xTipoOperacao := 'ENTRADA'
   Else
       xTipoOperacao := 'SAIDA';

   // MOVBANCO
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
   MDO.Query.ParamByName('DTLANC').AsDate := DtFechamento.Date;
   MDO.Query.ParamByName('DTREF').AsDate := DtFechamento.Date;
   MDO.Query.ParamByName('ESTRU').AsString:= '1';
   MDO.Query.ParamByName('DTMOV').AsDate := DtFechamento.Date;
   MDO.Query.ParamByName('COD_PLNCTA').AsInteger := xConta;
   MDO.Query.ParamByName('HISTORICO').AsString:= Copy(xHistoricoPadrao,0,200);
   MDO.Query.ParamByName('NUMCHEQUE').AsString := '';
   MDO.Query.ParamByName('COD_USUARIO').AsString := FMenu.LCODUSUARIO.Caption;
   MDO.Query.ParamByName('VALOR').AsCurrency := xValor;
   MDO.Query.ParamByName('TIPOOP').AsSTRING := xTipoOperacao;
   MDO.Query.ParamByName('COBRANCA').AsString := xCobranca;
   MDO.Query.ParamByName('DTVenc').AsDate := DtFechamento.Date;
   MDO.Query.ParamByName('Fech').AsString:='S';
   MDO.Query.ParamByName('TIPOGERADOR').AsString := XTipoGerador;
   MDO.Query.ParamByName('COD_GERADOR').AsInteger := xCodigoPedido;
   MDO.Query.ParamByName('COD_ABBANCO').AsInteger := xCodigoAbBanco;
   MDO.Query.ExecSQL;
end;

procedure TFPgto.BtnDinheiroClick(Sender: TObject);
begin
   EdtValorDinheiro.ValueNumeric := 0;
   Recalcula;
   if xValorTotalPagar - xValorPago > 0 then
       EdtValorDinheiro.ValueNumeric := xValorTotalPagar - xValorPago;
   Recalcula;
end;

procedure TFPgto.BtnPixClick(Sender: TObject);
begin
   EdtValorPix.ValueNumeric := 0;
   Recalcula;
   if xValorTotalPagar - xValorPago > 0 then
       EdtValorPix.ValueNumeric := xValorTotalPagar - xValorPago;
   Recalcula;
end;

procedure TFPgto.BtnDuplicataClick(Sender: TObject);
begin
   EdtValorDuplicata.ValueNumeric := 0;
   Recalcula;
   if xValorTotalPagar - xValorPago > 0 then
       EdtValorDuplicata.ValueNumeric := xValorTotalPagar - xValorPago;
   Recalcula;
end;

procedure TFPgto.BtnChequeClick(Sender: TObject);
begin
   EdtValorCheque.ValueNumeric := 0;
   Recalcula;
   if xValorTotalPagar - xValorPago > 0 then
       EdtValorCheque.ValueNumeric := xValorTotalPagar - xValorPago;
   Recalcula;
end;

procedure TFPgto.BtnCcClick(Sender: TObject);
begin
   EdtValorCc.ValueNumeric := 0;
   Recalcula;
   if xValorTotalPagar - xValorPago > 0 then
       EdtValorCc.ValueNumeric := xValorTotalPagar - xValorPago;
   Recalcula;
end;

procedure TFPgto.BtnCdClick(Sender: TObject);
begin
   EdtValorCd.ValueNumeric := 0;
   Recalcula;
   if xValorTotalPagar - xValorPago > 0 then
       EdtValorCd.ValueNumeric := xValorTotalPagar - xValorPago;
   Recalcula;
end;

procedure TFPgto.BtnCredLojaClick(Sender: TObject);
begin
   Recalcula;
   edtValorCredLoja.ValueNumeric:= xValorCredLojaDisp;
   Recalcula;
end;

procedure TFPgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ResetaValores;
end;

procedure TFPgto.btnProcuraBancoClick(Sender: TObject);
begin
   FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', '(cod_ctacor > 0) and ((inativo=''0'') or (inativo is null)) ');
   if AbrirForm(TFCadCtaCor, FCadCtaCor, 1) = 'Selected' then
   begin
       xCodigoAbBanco := DMBANCO.WCtaCor.FieldByName('cod_ctacor').AsInteger;
       edBancoSelecionado.Text := DMBANCO.WCtaCor.FieldByName('numctacor').AsString + ': ' + DMBANCO.WCtaCor.FieldByName('descbanco').AsString;
       VerificaBancoAberto;
   end;
end;

end.
