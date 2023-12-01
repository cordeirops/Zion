unit UFechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, EditFloat, ColorEditFloat, StdCtrls, Mask,
  ColorMaskEdit, UFrmBusca, Buttons, FashionPanel, ExtCtrls;

type                  
  TfrmFechamento = class(TForm)
    PPagamento: TPanel;
    Label40: TLabel;
    edPagamentoDescricao: TEdit;
    BitBtn4: TBitBtn;
    edPagamentoCodigo: TEdit;
    PEspecie: TPanel;
    Label1: TLabel;
    cbEspecie: TComboBox;
    PContaCorrente: TPanel;
    Label2: TLabel;
    dbgContaCorrente: TDBGrid;
    PContaProduto: TPanel;
    Label3: TLabel;
    edCtaProdutoBotao: TBitBtn;
    edCtaProdutoCodigo: TEdit;
    edCtaProdutoDescricao: TEdit;
    PContaServico: TPanel;
    Label4: TLabel;
    edCtaServicoBotao: TBitBtn;
    edCtaServicoCodigo: TEdit;
    edCtaServicoDescricao: TEdit;
    PFechamento: TPanel;
    Label5: TLabel;
    edFechamentoData: TColorMaskEdit;
    CBGeraFinanceiro: TCheckBox;
    PBotoes: TPanel;
    BtnCancelar: TSpeedButton;
    Panel1: TPanel;
    Label6: TLabel;
    LblTipoServico: TLabel;
    Label9: TLabel;
    LblNumero: TLabel;
    Label11: TLabel;
    LblNomeCliente: TLabel;
    BtnFializarPgto: TSpeedButton;
    procedure dbgContaCorrenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbEspecieExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edPagamentoCodigoExit(Sender: TObject);
    procedure PesquisaCodigoPagamento(codigo: string);    
    procedure edPagamentoCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure BtnFializarPgtoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
       Procedure LimpaVariaveisComponentes;
       Procedure PopulaCamposIniciais;
       Procedure PopulaCamposIniciaisFormaPagamento;
       Procedure PopulaCamposIniciaisContas;
       procedure InicializaCabecalho;
       Function GeraFechamentoOrdemServico: Boolean;       
  public
    { Public declarations }
  end;

var
   frmFechamento: TfrmFechamento;

   xPKContaCorrente, xPkFormaPagamento, xPkContaProduto, xPkContaServico: Integer;
   XCOD_ORDEM: Integer;

   XTipoGerador: string;

   xExisteProd, xExisteServ: Boolean;

   XVLR_PROD_OS, XVLR_SERV_OS, XVLR_FINALPROD, XVLR_CREDITO_OS, XVLR_FINALSERV: Real;

implementation

uses UDmBanco, UDMFinanc, UFormPag, Alxor32, UDmServ, UDMMacs, UDMConta,
  UDMSaida, UMDO, UDMEstoque, UDMCaixa, ULancTroco, AlxMessage, DB,
  UDMPessoa, UMenu;

{$R *.dfm}

procedure TfrmFechamento.InicializaCabecalho;
var xCodigo, xCodigoFornecedor: Integer;
begin
  try

    //Confirmamos os commits de ordem de serviços e venda
    DmServ.IBT.CommitRetaining;
    DmSaida.IBT.CommitRetaining;
    MDO.Transac.CommitRetaining;

    xResultadoPagamento := 'ERRO';

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
    end;
    MDO.Query.SQL.Text;
    MDO.Query.Open;

    if not MDO.Query.IsEmpty then
    begin
      LblNomeCliente.Caption := MDO.Query.FieldByName('cliente').AsString;
      LblNumero.Caption  := MDO.Query.FieldByName('NumeroDocumento').AsString;
    end
    Else Begin
      LblNomeCliente.Caption := 'Não localizado';
      LblNumero.Caption  := '';
    End;
    if (xTipoPedidoPagamento = 'PEDVENDA') or (xTipoPedidoPagamento = 'ORDEM')
    Then Begin
       If Not FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', MDO.Query.FieldByName('CodigoCliente').AsString, '') = True
       Then Begin
           MessageDlg('O Cliente de código ' + MDO.Query.FieldByName('CodigoCliente').AsString + 'não foi encontrado.', mtInformation, [mbOK], 0);
           Exit;
       End;
    End;

  except
  end;
End;

Procedure TfrmFechamento.LimpaVariaveisComponentes;
Begin
   xPKContaCorrente := -999;
   xPkFormaPagamento := -999;
   xPkContaProduto := -999;
   xPkContaServico := -999;

   XVLR_CREDITO_OS := 0;
   //xValorProdutos:=0;
   //xValorServicos:=0;
   //xValorPedido:=0;

   edPagamentoDescricao.Text := '';
   edPagamentoCodigo.Text := '';
   edCtaProdutoCodigo.Text := '';
   edCtaProdutoDescricao.Text := '';
   edCtaServicoCodigo.Text := '';
   edCtaServicoDescricao.Text := '';

   cbEspecie.Text := 'Carteira';
   CBGeraFinanceiro.Checked := False;
   CBGeraFinanceiro.Visible := false;

   PContaCorrente.Visible := False;

End;

Procedure TfrmFechamento.PopulaCamposIniciais;
Begin
   Try
       If XTipoGerador = 'ORDEM'
       Then Begin
           DMServ.IBT.CommitRetaining;
           If FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', IntToStr(xCod_PedidoPagamento), '') = True
           Then Begin
               If DMServ.TOrd.FieldByName('DTFECH').AsString <> '' then
                   edFechamentoData.Text := DMServ.TOrd.FieldByName('DTFECH').AsString
               else
                   edFechamentoData.Text := DateToStr(Date());

               XVLR_PROD_OS := DMServ.TOrd.FieldByName('totprod').AsCurrency;
               XVLR_SERV_OS := DMServ.TOrd.FieldByName('totserv').AsCurrency;
           End;
       End;
       PopulaCamposIniciaisFormaPagamento;
       PopulaCamposIniciaisContas;

       If ControlAccess('GERAFINANC', '') = True then
           CBGeraFinanceiro.Visible := true;

       edPagamentoCodigo.SetFocus;
   Except

   End;
End;

Procedure TfrmFechamento.PopulaCamposIniciaisFormaPagamento;
Begin
   Try
       xPkFormaPagamento := DMServ.TOrd.FieldByName('COD_FORMPAG').AsInteger;
       if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', DMServ.TOrd.FieldByName('COD_FORMPAG').AsString, '') = True then
       begin
           xPkFormaPagamento := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
           edPagamentoCodigo.Text := DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
           edPagamentoDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       end
       else begin
           xPkFormaPagamento := -999;
           edPagamentoCodigo.Text := '';
           edPagamentoDescricao.Text := '';
       end;

       If (Pos('CARTÃO', UpperCase(edPagamentoDescricao.Text)) <> 0) or
          (Pos('CARTAO', UpperCase(edPagamentoDescricao.Text)) <> 0) then
           cbEspecie.Text := 'Cartão';
       If (Pos('PIX', UpperCase(edPagamentoDescricao.Text)) <> 0) or
          (Pos('PIX', UpperCase(edPagamentoDescricao.Text)) <> 0) then
           cbEspecie.Text := 'Pix';

   Except

   End;
End;

Procedure TfrmFechamento.PopulaCamposIniciaisContas;
begin
  inherited;
   if edPagamentoDescricao.Text = 'À VISTA' then
   begin
       If DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString <> '' then
       begin
           xPkContaProduto := DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(xPkContaProduto), '');
           edCtaProdutoCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           edCtaProdutoDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       end
       else begin
           xPkContaProduto := -999;
           edCtaProdutoCodigo.Text := '';
           edCtaProdutoDescricao.Text := '';
       end;
       If DMMACS.TLoja.FieldByName('PLNCTASERV').AsString <> '' then
       begin //se existir uma conta padrao configurada
           xPkContaServico := DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(xPkContaServico), '');
           edCtaServicoCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           edCtaServicoDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       end
       else begin
           xPkContaServico := -999;
           edCtaServicoCodigo.Text := '';
           edCtaServicoDescricao.Text := '';
       end;
   end
   else begin //Busca conta para À Prazo
       if DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString <> '' then
       begin //se existir uma conta padrao configurada
           xPkContaProduto := DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(xPkContaProduto), '');
           edCtaProdutoCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           edCtaProdutoDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       end
       else begin
           xPkContaProduto := -1;
           edCtaProdutoCodigo.Text := '';
           edCtaProdutoDescricao.Text := '';
       end;
       if DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsString <> '' then
       begin //se existir uma conta padrao configurada
           xPkContaServico := DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger;
           FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(xPkContaServico), '');
           edCtaServicoCodigo.Text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           edCtaServicoDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
       end
       else begin
           xPkContaServico := -1;
           edCtaServicoCodigo.Text := '';
           edCtaServicoDescricao.Text := '';
       end;
   end;
   if DMMACS.TLoja.FieldByName('FORCARCARTAO').AsString = '1' then
   begin
       if (Pos('CARTÃO', UpperCase(edPagamentoDescricao.Text)) <> 0) or
          (Pos('CARTAO', UpperCase(edPagamentoDescricao.Text)) <> 0) then
           cbEspecie.Text := 'Cartão';
       if (Pos('Pix', UpperCase(edPagamentoDescricao.Text)) <> 0) or (Pos('PIX',
           UpperCase(edPagamentoDescricao.Text)) <> 0) then
           cbEspecie.Text := 'Pix';
   end;
end;


procedure TfrmFechamento.dbgContaCorrenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_Return then
   begin
       If not DMBANCO.WCtaCor.IsEmpty then
           xPKContaCorrente := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
       else
           xPKContaCorrente := -999;

       PContaCorrente.Visible := False;
       PContaCorrente.SendToBack;
       edCtaProdutoCodigo.SetFocus;
   end;

   if Key = VK_ESCAPE then
   Begin
       PContaCorrente.Visible := false;
       PContaCorrente.SendToBack;
   end;
end;

procedure TfrmFechamento.cbEspecieExit(Sender: TObject);
begin
   if (cbEspecie.Text = 'Cartão') or (cbEspecie.Text = 'Pix') then
   begin
       If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '')
       then begin
           xPkFormaPagamento := DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
           edPagamentoCodigo.Text := DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
           edPagamentoDescricao.Text := DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
       end;
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
       PContaCorrente.Visible := true;
       PContaCorrente.BringToFront;
       dbgContaCorrente.SetFocus;
   end;
end;

procedure TfrmFechamento.BitBtn4Click(Sender: TObject);
begin
   If AbrirForm(TFFormPag, FFormPag, 1) = 'Selected' then
   begin
       xPkFormaPagamento := DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       edPagamentoCodigo.Text := DMFinanc.TFormPag.FieldByName('COD_INTERNO').AsString;
       edPagamentoDescricao.Text := DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString;
   end
   else begin
       xPkFormaPagamento := -999;
       edPagamentoCodigo.Text := '';
       edPagamentoDescricao.Text := '';
   end;
end;

procedure TfrmFechamento.PesquisaCodigoPagamento(codigo: string);
begin
   codigo := Trim(UpperCase(codigo));

   if codigo <> '' then
   begin
       if FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_INTERNO', codigo, '') = true then
       begin
           xPkFormaPagamento := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
           edPagamentoCodigo.Text := DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString;
           edPagamentoDescricao.Text := DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       end
       else begin
           xPkFormaPagamento := -999;
           edPagamentoCodigo.Text := '';
           edPagamentoDescricao.Text := '';
       end;
   end;
end;

procedure TfrmFechamento.edPagamentoCodigoExit(Sender: TObject);
begin
   if edPagamentoCodigo.Text <> '' then
   begin
       PesquisaCodigoPagamento(edPagamentoCodigo.Text);
   end
   else Begin
       xPkFormaPagamento := -999;
       edPagamentoCodigo.Text := '';
       edPagamentoDescricao.Text := '';
   end;
end;

procedure TfrmFechamento.edPagamentoCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_return then
   begin
       if edPagamentoCodigo.Text <> '' then
       begin
           PesquisaCodigoPagamento(edPagamentoCodigo.Text);
       end
       else Begin
           xPkFormaPagamento := -999;
           edPagamentoCodigo.Text := '';
           edPagamentoDescricao.Text := '';
       End;
   end;
end;

procedure TfrmFechamento.FormActivate(Sender: TObject);
begin
   LimpaVariaveisComponentes;
   InicializaCabecalho;
   PopulaCamposIniciais;
end;

Function TfrmFechamento.GeraFechamentoOrdemServico: Boolean;
Begin
   Try
       Result := True;

       XCOD_ORDEM := xCod_PedidoPagamento;
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       mdo.Query.SQL.Add(' update ordem set ordem.cod_formpag = :CodigoFormaPagamento ');
       mdo.Query.SQL.Add('        where ordem.cod_ordem = :CodigoOrdem ');
       MDO.Query.ParamByName('CodigoFormaPagamento').AsInteger := xPkFormaPagamento;
       MDO.Query.ParamByName('CodigoOrdem').AsInteger := xCod_PedidoPagamento;
       MDO.Query.ExecSQL;

       if CBGeraFinanceiro.Checked = False then
       begin
           if cbEspecie.Text = 'Crédito' then
           begin
               DMServ.Alx.Close;
               DMServ.Alx.SQL.Clear;
               DMServ.Alx.SQL.Add(' SELECT VWCLIENTE.COD_CLIENTE, VWCLIENTE.COD_PESSOA, PESSOA.VLRCREDITO CREDITO FROM VWCLIENTE ');
               DMServ.Alx.SQL.Add(' LEFT JOIN PESSOA ON PESSOA.COD_PESSOA = VWCLIENTE.COD_PESSOA ');
               DMServ.Alx.SQL.Add(' WHERE (VWCLIENTE.COD_CLIENTE = :CLIENTE) AND (PESSOA.VLRCREDITO IS NOT NULL) AND (PESSOA.VLRCREDITO > 0) ');
               DMServ.Alx.ParamByName('CLIENTE').AsInteger :=
               DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger;
               DMServ.Alx.Open;

               if not DMServ.Alx.IsEmpty then
               begin
                       DMServ.TAlx1.Close;
                       DMServ.TAlx1.SQL.Clear;

                       //se o crédito for menor que o valor da ordem, apenas zerar o credito para não haver crédito negativo na pessoa
                       if DMServ.Alx.FieldByName('CREDITO').AsCurrency <= DMServ.TOrd.FieldByName('TOTORD').AsCurrency then
                           DMServ.TAlx1.SQL.Add(' UPDATE PESSOA SET PESSOA.VLRCREDITO = 0 WHERE (PESSOA.COD_PESSOA = :PESSOA) ')
                       else begin
                           DMServ.TAlx1.SQL.Add(' UPDATE PESSOA SET PESSOA.VLRCREDITO = PESSOA.VLRCREDITO - :VALOR_ORDEM WHERE (PESSOA.COD_PESSOA = :PESSOA) ');
                           DMServ.TAlx1.ParamByName('VALOR_ORDEM').AsCurrency := DMServ.TOrd.FieldByName('TOTORD').AsCurrency;
                       end;

                       DMServ.TAlx1.ParamByName('PESSOA').AsInteger := DMServ.Alx.FieldByName('COD_PESSOA').AsInteger;
                       DMServ.TAlx1.ExecSQL;
                       if (XVLR_CREDITO_OS <= DMServ.TOrd.FieldByName('TOTPROD').AsCurrency) and (XVLR_CREDITO_OS >= 0) then
                       begin
                           XVLR_PROD_OS := XVLR_CREDITO_OS; //ATRIBUI VALOR DO CRÉDITO
                           XVLR_CREDITO_OS := XVLR_CREDITO_OS -
                           DMServ.TOrd.FieldByName('TOTPROD').AsCurrency;
                       end
                       else begin
                           XVLR_PROD_OS := DMServ.TOrd.FieldByName('TOTPROD').AsCurrency;
                           XVLR_CREDITO_OS := XVLR_CREDITO_OS -
                           DMServ.TOrd.FieldByName('TOTPROD').AsCurrency;
                       end;

                       if (XVLR_CREDITO_OS <= DMServ.TOrd.FieldByName('TOTSERV').AsCurrency) and (XVLR_CREDITO_OS >= 0) then //SENÃO
                           XVLR_SERV_OS := XVLR_CREDITO_OS //ATRIBUI VALOR DO CRÉDITO
                       else
                           XVLR_SERV_OS := DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;

               end;
           end;
           XVLR_FINALPROD := DMServ.TOrd.FieldByName('TOTORD').AsCurrency - DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;
           XVLR_FINALSERV := DMServ.TOrd.FieldByName('TOTSERV').AsCurrency;

           if XVLR_FINALPROD > 0 then
               XVLR_FINALPROD := XVLR_FINALPROD
           else
               XVLR_FINALSERV := XVLR_FINALSERV;

           if cbEspecie.Text = 'Multiplo' then
           begin
               if FecConta('ORDEM', XCOD_ORDEM, DMServ.TOrd.FieldByName('totord').AsCurrency, DMServ.TOrd.FieldByName('TOTPROD').AsCurrency - XVLR_PROD_OS, DMServ.TOrd.FieldByName('TOTSERV').AsCurrency - XVLR_SERV_OS, xPkContaProduto, xPkContaServico, StrToDate(edFechamentoData.Text)) = True then
                   Result := True
               else
                   Result := False;

           end
           else begin
               if FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(xPkFormaPagamento), '') = True then
               begin // Encontrou forma de pagamento, continua processo
                   if DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA' then
                   begin
                       if cbEspecie.Text = 'Cheque' then
                       begin //LANÇAMENTO EM CONTROLE DE CHEQUE
                           if LancChEnt(xPkContaProduto, xPkContaServico, 'Fech. Ordem' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, Date(), '', XVLR_FINALPROD, XVLR_FINALSERV, '', '', 0, '', '', 'ORDEM', IntToStr(XCOD_ORDEM)) = True then
                               Result := True
                           else //informa que a finalização do financeiro falhou
                               Result := False;
                       end;

                       if cbEspecie.Text = 'Cartão' then
                       begin
                           if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, xPkContaProduto, '(Produtos) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALPROD, 'TOTPROD', XCOD_ORDEM, 'ORDSERV', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date())) = True then
                               Result := True
                           else
                           begin //informa que a finalização do financeiro falhou
                               Result := False;
                               Exit;
                           end;
                           if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, xPkContaServico, '(Serviços) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALSERV, 'TOTSERV', XCOD_ORDEM, 'ORDSERV', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO.', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date())) = TRUE then
                               Result := True
                           else
                               Result := False;
                       end;

                       if cbEspecie.Text = 'Pix' then
                       begin
                           if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, xPkContaProduto, '(Produtos) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALPROD, 'TOTPROD', XCOD_ORDEM, 'ORDSERV', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. Pix. ', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date())) = True then
                               Result := True
                           else
                           begin //informa que a finalização do financeiro falhou
                               Result := False;
                               Exit;
                           end;

                           if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, xPkContaServico, '(Serviços) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, XVLR_FINALSERV, 'TOTSERV', XCOD_ORDEM, 'ORDSERV', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. Pix. ', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date())) = TRUE then
                               Result := True
                           else
                               Result := False;
                       end;

                       if (cbEspecie.Text <> 'Cheque') and (cbEspecie.Text <> 'Cartão') and (cbEspecie.Text <> 'Pix') then
                       begin
                           if (DMServ.TOrd.FieldByName('TOTPROD').Value) > 0 then
                           begin
                               if LanCaixa(-1, DateToStr(Date()), xPkContaProduto, '(Produtos) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString,  XVLR_FINALPROD, 'ORDSERV', XCOD_ORDEM, cbEspecie.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(edFechamentoData.Text), '1') = True then
                                   Result := True
                               else
                                   Result := False;
                           end;

                           if (DMServ.TOrd.FieldByName('TOTSERV').Value) > 0
                           then begin
                               if LanCaixa(-1, DateToStr(Date()), xPkContaServico, '(Serviços) Fech. Ordem Serv. ' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString,  XVLR_FINALSERV, 'ORDSERV', XCOD_ORDEM, cbEspecie.Text, 'E', DMServ.TOrd.FieldByName('NUMERO').AsString, StrToDate(edFechamentoData.Text), '1') = True then
                                   Result := True
                               else
                                   Result := False;
                           end;
                       end;
                   end
                   else begin
                       if LancConta('ORDEM', XCOD_ORDEM, DMServ.TOrd.FieldByName('COD_CLIENTE').AsInteger, cbEspecie.Text, XVLR_FINALPROD, XVLR_FINALSERV, xPkContaProduto, xPkContaServico, -1, 'Fech. Ordem de Serviço ' + DMServ.TOrd.FieldByName('NUMERO').AsString, xPkFormaPagamento, DMServ.TOrd.FieldByName('NUMERO').AsString, 'O', Date(), 0, edFechamentoData.Text, DMServ.TOrd.FieldByName('numfiscal').AsString) = True then
                           Result := True
                       else
                           Result := False;
                   end;
               End;
           End;
       end;
   Except
       Result := True;
   end;
End;

procedure TfrmFechamento.BtnFializarPgtoClick(Sender: TObject);
begin
   xExisteProd := true;
   xExisteServ := true;
   If XTipoGerador = 'ORDEM'
   Then Begin
       Try
           MDO.Query2.Close;
           MDO.Query2.SQL.Clear;
           MDO.Query2.SQL.Add('select * from itprodord where itprodord.cod_ordem = :cod_ordem');
           MDO.Query2.ParamByName('cod_ordem').AsInteger :=  xCod_PedidoPagamento;
           MDO.Query2.Open;
           if MDO.Query2.IsEmpty then
               xExisteProd := false;
       Except
           showmessage('Erro ao verificar produtos para tela do fiscal.');
           xExisteProd := false;
       End;
       try
           MDO.Query3.Close;
           MDO.Query3.SQL.Clear;
           MDO.Query3.SQL.Add('select * from despadic where (despadic.GERADOR=''ORDEM'') AND (DESPADIC.COD_GERADOR=:Codigo)  AND ((despadic.nfse_status<>' + '1' + ') or (despadic.nfse_status is null))');
           MDO.Query3.ParamByName('codigo').AsInteger := xCod_PedidoPagamento;
           MDO.Query3.Open;
           If MDO.Query3.IsEmpty then
               xExisteServ := false;
       except
           showmessage('Erro ao verificar serviços para tela do fiscal.');
           xExisteServ := false;
       end;
   End
   Else Begin
       MessageDlg('Funcionalidade implementada somente para ordem de serviço', mtInformation, [mbOK], 0);
   End;

   if ((cbEspecie.Text <> 'Carteira') and (cbEspecie.Text <> 'Chq. Terc.')
    and (cbEspecie.Text <> 'Banco') and (cbEspecie.Text <> 'Crédito') and
    (cbEspecie.Text <> 'Cartão')) and (cbEspecie.Text <> 'Pix') and
    (edPagamentoDescricao.Text = 'À VISTA') then
   begin
       MessageDlg('A forma de pagamento ' + cbEspecie.Text + ' não permite fecharo pedido como À Vista!', mtWarning, [mbOK], 0);
       cbEspecie.SetFocus;
       Exit;
   end;
   if cbEspecie.Text = '' then
   begin
       MessageDlg('Por favor informe se o pagamento será feito em carteira ou cheque!', mtWarning, [mbOK], 0);
       cbEspecie.SetFocus;
       Exit;
   end;
   if xPkContaProduto = -999
   Then Begin
       MessageDlg('Por favor informe uma conta para lançamento no financeiro!', mtWarning, [mbOK], 0);
       edCtaProdutoCodigo.SetFocus;
       Exit;
   end;
   If xExisteServ = true
   Then Begin
       if xPkContaServico = -999
       Then Begin
           MessageDlg('Por favor informe uma conta para lançamento no financeiro!', mtWarning, [mbOK], 0);
           edCtaServicoCodigo.SetFocus;
           Exit;
       end;
   End;

   If xPkFormaPagamento = -999
   Then Begin
       MessageDlg('Por favor informe uma forma de pagamento para lançamento no financeiro!', mtWarning, [mbOK], 0);
       edPagamentoCodigo.SetFocus;
       Exit;
   End;

   If XTipoGerador = 'ORDEM'
   Then Begin
       If GeraFechamentoOrdemServico = False
       Then Begin
           MessageDlg('Fechamento Cancelado', mtWarning, [mbOK], 0);
           FMenu.XDTREF := '';
           xResultadoPagamento := 'ERRO';
           MDO.Transac.RollbackRetaining;
           DMPESSOA.TransacPessoa.RollbackRetaining ;
           DMBANCO.IBT.RollbackRetaining;
       end
       else begin
           FMenu.XDTREF := edFechamentoData.Text;
           xResultadoPagamento := 'SUCESSO';
           MDO.Transac.CommitRetaining;
           DMPESSOA.TransacPessoa.CommitRetaining;
           DMBANCO.IBT.CommitRetaining;
       End;
   End
   Else Begin
       MessageDlg('Fechamento implementado somente para ordem de serviço', mtInformation, [mbOK], 0);
   End;
   Close;
end;
procedure TfrmFechamento.BtnCancelarClick(Sender: TObject);
begin
   if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente cancelar o fechamento?',
       '', 2, 3, False, 'C') = 2 then
   begin
       xResultadoPagamento := 'CANCELADO';
       MDO.Transac.Rollback;
       close;
   end;
end;

end.
