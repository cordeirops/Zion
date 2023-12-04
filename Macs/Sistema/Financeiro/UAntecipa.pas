unit UAntecipa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, EditFloat, ColorEditFloat, StdCtrls, Mask,
  ColorMaskEdit, UFrmBusca, Buttons, FashionPanel, ExtCtrls;

type
  TfrmAntecipa = class(TForm)
    PEspecie: TPanel;
    Label1: TLabel;
    cbEspecie: TComboBox;
    PContaCorrente: TPanel;
    Label2: TLabel;
    dbgContaCorrente: TDBGrid;
    PBotoes: TPanel;
    BtnCancelar: TSpeedButton;
    Panel1: TPanel;
    Label6: TLabel;
    LblTipoServico: TLabel;
    Label9: TLabel;
    LblNumero: TLabel;
    Label11: TLabel;
    BtnFializarPgto: TSpeedButton;
    Panel2: TPanel;
    Label3: TLabel;
    LblNomeCliente: TLabel;
    edValorAntecipacao: TColorEditFloat;
    procedure dbgContaCorrenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbEspecieExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbEspecieChange(Sender: TObject);
    procedure BtnFializarPgtoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    NumeroOS: Integer;
  end;

var
   frmAntecipa: TfrmAntecipa;

   xDATA_ANTECIPACAO: TDate;

   xPKContaCorrente, xPkFormaPagamento: Integer;
   XCOD_ORDEM: Integer;

   XTipoGerador: string;

   xExisteProd, xExisteServ: Boolean;

   XVLR_ANTECIPACAO: Real;

implementation

uses UDmBanco, UDMFinanc, UFormPag, Alxor32, UDmServ, UDMMacs, UDMConta,
  UDMSaida, UMDO, UDMEstoque, UDMCaixa, ULancTroco, AlxMessage, DB,
  UDMPessoa, UMenu, StrUtils, MaskUtils;

{$R *.dfm}

procedure TfrmAntecipa.FormCreate(Sender: TObject);
begin
  PContaCorrente.Visible := False;
end;

procedure TfrmAntecipa.FormActivate(Sender: TObject);
begin
   PContaCorrente.Visible := False;
   LblTipoServico.Caption := 'Adiantamento';
   LblNumero.Caption := IntToStr(xCod_PedidoPagamento);
   LblNomeCliente.Caption := xNome_Cliente;
   xPkFormaPagamento := 1;
   xDATA_ANTECIPACAO := Date;

end;


procedure TfrmAntecipa.dbgContaCorrenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not ((cbEspecie.Text = 'Cartão') or (cbEspecie.Text = 'Pix') or (cbEspecie.Text = 'Banco')) then
  begin
    PContaCorrente.Visible := False;
    PContaCorrente.SendToBack;
    Exit;
  end;

  if Key = VK_Return then
  begin
    if not DMBANCO.WCtaCor.IsEmpty then
      xPKContaCorrente := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
    else
      xPKContaCorrente := -999;

    PContaCorrente.Visible := False;
    PContaCorrente.SendToBack;
  end;

  if Key = VK_ESCAPE then
  begin
    PContaCorrente.Visible := False;
    PContaCorrente.SendToBack;
  end;
end;

procedure TfrmAntecipa.cbEspecieChange(Sender: TObject);
begin
   if (cbEspecie.Text = 'Cartão') or (cbEspecie.Text = 'Pix') or (cbEspecie.Text = 'Banco') then
  begin
    If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '') then
    begin
      xPkFormaPagamento := DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
    end;
    FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
    PContaCorrente.Visible := True;
    PContaCorrente.BringToFront;
    dbgContaCorrente.SetFocus;
  end
  else
  begin
    PContaCorrente.Visible := False;
    PContaCorrente.SendToBack;
  end;
end;

procedure TfrmAntecipa.cbEspecieExit(Sender: TObject);
begin
  if (cbEspecie.Text = 'Cartão') or (cbEspecie.Text = 'Pix') or (cbEspecie.Text = 'Banco') then
  begin
    If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '') then
    begin
      xPkFormaPagamento := DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
    end;
    FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
    PContaCorrente.Visible := True;
    PContaCorrente.BringToFront;
    dbgContaCorrente.SetFocus;
  end
  else
  begin
    PContaCorrente.Visible := False;
    PContaCorrente.SendToBack;
  end;
end;




procedure TfrmAntecipa.BtnCancelarClick(Sender: TObject);
begin
   if Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja Realmente cancelar o adiantamento?',
       '', 2, 3, False, 'C') = 2 then
   begin
       xResultadoPagamento := 'CANCELADO';
       MDO.Transac.Rollback;
       close;
   end;
end;

procedure TfrmAntecipa.BtnFializarPgtoClick(Sender: TObject);
begin
   try
       XCOD_ORDEM := xCod_PedidoPagamento;
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       mdo.Query.SQL.Add(' update ordem set ordem.cod_formpag = :CodigoFormaPagamento ');
       mdo.Query.SQL.Add('        where ordem.cod_ordem = :CodigoOrdem ');
       MDO.Query.ParamByName('CodigoFormaPagamento').AsInteger := xPkFormaPagamento;
       MDO.Query.ParamByName('CodigoOrdem').AsInteger := xCod_PedidoPagamento;
       MDO.Query.ExecSQL;
       XVLR_ANTECIPACAO := StrToFloat(edValorAntecipacao.Text);
       begin
           begin
               if FiltraTabela(DMFinanc.TFormPag, 'FORMPAG', 'COD_FORMPAG', IntToStr(xPkFormaPagamento), '') = True then
               begin // Encontrou forma de pagamento, continua processo
                   if DMFinanc.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA' then
                   begin
                       if cbEspecie.Text = 'Cheque' then
                       begin //LANÇAMENTO EM CONTROLE DE CHEQUE
                           if LancChEnt('Adiantamento. Ordem' + DMServ.TOrd.FieldByName('NUMERO').AsString + ' - Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, xDATA_ANTECIPACAO, '', XVLR_ANTECIPACAO, '', '', 0, '', '', 'ORDEM', IntToStr(XCOD_ORDEM)) = True then
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






end.
