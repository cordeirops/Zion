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
    BtnFinalizarAntecipacao: TSpeedButton;
    Panel2: TPanel;
    Label3: TLabel;
    LblNomeCliente: TLabel;
    edValorAntecipacao: TFloatEdit;
    procedure dbgContaCorrenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbEspecieExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbEspecieChange(Sender: TObject);
    procedure BtnFinalizarAntecipacaoClick(Sender: TObject);
    function GeraAdiantamentoOrdemServico: Boolean;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmAntecipa: TfrmAntecipa;


   xDATA_ANTECIPACAO: TDate;
   xPkContaProduto, xPKContaCorrente, xPkFormaPagamento: Integer;
   XCOD_ORDEM: Integer;
   XTipoGerador: string;
   XVLR_ANTECIPACAO: Real;
   XValorTotalOS: Real;
   XExisteValorAntecipacao: Real;




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
   MDO.Transac.CommitRetaining;
   MDO.Query.Close;
   MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add('SELECT ordem.numero FROM ordem WHERE ordem.cod_ordem = :CodigoOrdem');
   MDO.Query.ParamByName('CodigoOrdem').AsInteger := xCod_PedidoPagamento;
   MDO.Query.Open;
   XNumeroOs := MDO.Query.FieldByName('numero').AsInteger;

   LblTipoServico.Caption := 'Adiantamento';
   LblNumero.Caption := IntToStr(XNumeroOs);
   MDO.Query.Close;
   LblNomeCliente.Caption := xNome_Cliente;
   xPkFormaPagamento := 1;
   xDATA_ANTECIPACAO := Date;
   edValorAntecipacao.ValueNumeric := 0;



end;


procedure TfrmAntecipa.dbgContaCorrenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not ((cbEspecie.Text = 'Pix') or (cbEspecie.Text = 'Banco')) then
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
   if(cbEspecie.Text = 'Pix') or (cbEspecie.Text = 'Banco') then
  begin
    If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', '� VISTA', '') then
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
  if(cbEspecie.Text = 'Pix') or (cbEspecie.Text = 'Banco') then
  begin
    If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', '� VISTA', '') then
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
   if Mensagem('CONFIRMA��O DO USU�RIO', 'Deseja Realmente cancelar o adiantamento?',
       '', 2, 3, False, 'C') = 2 then
   begin
       xResultadoPagamento := 'CANCELADO';
       MDO.Transac.Rollback;
       close;
   end;
end;

Function TfrmAntecipa.GeraAdiantamentoOrdemServico: Boolean;
Begin
   if DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA') <> nil then
       begin
       xPkContaProduto := DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger;
       DMPESSOA.WCliente.Close;
       DMPESSOA.WCliente.SQL.Clear;
       DMPESSOA.WCliente.SQL.Add('SELECT * FROM vwcliente WHERE vwcliente.cod_cliente = :CodigoCliente');
       DMPESSOA.WCliente.ParamByName('CodigoCliente').AsInteger := XCod_Cliente;
       DMPESSOA.WCliente.Open;
       XNome_Cliente := DMPESSOA.WCliente.FieldByName('NOME').AsString;
       DMPESSOA.WCliente.Close;
         Try
             Result := True;
               if cbEspecie.Text = 'Pix' then
               begin
                   if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, xPkContaProduto, 'Adiantamento Ordem Serv. ' + IntToStr(xNumeroOS) + ' - Cli. ' + XNome_Cliente, XVLR_ANTECIPACAO, 'ADIANTAORD', 1, 'ADIANTAORD', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. PIX. ', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date())) = True then
                       Result := True
                   else
                       Result := False;
                   End;
               if cbEspecie.Text = 'Banco' then
               begin
                   if LanBanco(DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger, xPkContaProduto, 'Adiantamento Ordem Serv. ' + IntToStr(xNumeroOS) + ' - Cli. ' + XNome_Cliente, XVLR_ANTECIPACAO, 'ADIANTAORD', 1, 'ADIANTAORD', StrToInt(FMenu.LCODUSUARIO.Caption), 'TRANSF. ', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', DateToStr(Date())) = True then
                       Result := True
                   else
                       Result := False;
                   End;
               if cbEspecie.Text = 'Cheque' then
                       begin
                           if LancChEnt(xPkContaProduto, xPkContaProduto, 'Adiantamento ordem Serv. ' + IntToStr(xNumeroOS) + ' - Cli. ' + XNome_Cliente, Date(), '', 0, XVLR_ANTECIPACAO, '', '', xPKContaCorrente, '', '', 'ADIANTAORD', IntToStr(xPkContaProduto)) = True then
                               Result := True
                           else
                               Result := False;
                       end;

               if (cbEspecie.Text <> 'Cheque') and (cbEspecie.Text <> 'Banco') and (cbEspecie.Text <> 'Pix') then
                       begin
                           if LanCaixa(-1, DateToStr(Date()), xPkContaProduto, 'Adiantamento ordem Serv. ' + IntToStr(xNumeroOS) + ' - Cli. ' + XNome_Cliente,  XVLR_ANTECIPACAO, 'ADIANTAORD', 1, cbEspecie.Text, 'E', IntToStr(xNumeroOS), Date(), '1') = True then
                               Result := True
                           else
                               Result := False;
                       end;

         Except
             Result := False
         End;
   end
   else
       begin
       ShowMessage('A conta para lan�amentos n�o foi definida!');
       Result := False;
   end;
End;


procedure TfrmAntecipa.BtnFinalizarAntecipacaoClick(Sender: TObject);
var
   COD_MOVIMENTO: Integer;
   TIPO_MOVIMENTO: String;
begin
  XVLR_ANTECIPACAO:= edValorAntecipacao.ValueNumeric;
  try
       If GeraAdiantamentoOrdemServico then
       begin
         MDO.Transac.CommitRetaining;
         MDO.Query.Close;
         MDO.Query.SQL.Clear;
         MDO.Query.SQL.Add('UPDATE ordem SET ordem.vlradiantamento = :XVLR_ANTECIPACAO');
         MDO.Query.SQL.Add('        where ordem.cod_ordem = :CodigoOrdem ');
         MDO.Query.ParamByName('XVLR_ANTECIPACAO').AsCurrency := XVLR_ANTECIPACAO + XExisteValorAntecipacao;
         MDO.Query.ParamByName('CodigoOrdem').AsInteger := xCod_PedidoPagamento;
         MDO.Query.ExecSQL;
         MDO.Transac.CommitRetaining;

         if cbEspecie.Text = 'Pix' then
         begin
            MDO.Transac.CommitRetaining;
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add('SELECT COD_MOVBANCO FROM MOVBANCO');
            MDO.Query.SQL.Add('WHERE MOVBANCO.VALOR = :XVLR_ANTECIPACAO');
            MDO.Query.SQL.Add('AND TIPOGERADOR = :tipogerador');
            MDO.Query.SQL.Add('ORDER BY COD_MOVBANCO DESC ROWS 1');
            MDO.Query.ParamByName('XVLR_ANTECIPACAO').AsCurrency := XVLR_ANTECIPACAO;
            MDO.Query.ParamByName('tipogerador').AsString := 'ADIANTAORD';
            MDO.Query.SQL.Text;
            MDO.Query.Open;
            COD_MOVIMENTO := MDO.Query.FieldByName('COD_MOVBANCO').AsInteger;
            TIPO_MOVIMENTO := 'Pix';
            MDO.Transac.CommitRetaining;
         end;

         if cbEspecie.Text = 'Banco' then
         begin
            MDO.Transac.CommitRetaining;
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add('SELECT COD_MOVBANCO FROM MOVBANCO');
            MDO.Query.SQL.Add('WHERE MOVBANCO.VALOR = :XVLR_ANTECIPACAO');
            MDO.Query.SQL.Add('AND TIPOGERADOR = :tipogerador');
            MDO.Query.SQL.Add('ORDER BY COD_MOVBANCO DESC ROWS 1');
            MDO.Query.ParamByName('XVLR_ANTECIPACAO').AsCurrency := XVLR_ANTECIPACAO;
            MDO.Query.ParamByName('tipogerador').AsString := 'ADIANTAORD';
            MDO.Query.SQL.Text;
            MDO.Query.Open;
            COD_MOVIMENTO := MDO.Query.FieldByName('COD_MOVBANCO').AsInteger;
            TIPO_MOVIMENTO := 'Banco';
            MDO.Transac.CommitRetaining;
         end;


         if cbEspecie.Text = 'Cheque' then
         begin
            MDO.Transac.CommitRetaining;
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add('SELECT COD_MOVBANCO FROM MOVBANCO');
            MDO.Query.SQL.Add('WHERE MOVBANCO.VALOR = :XVLR_ANTECIPACAO');
            MDO.Query.SQL.Add('AND TIPOGERADOR = :tipogerador');
            MDO.Query.SQL.Add('ORDER BY COD_MOVBANCO DESC ROWS 1');
            MDO.Query.ParamByName('XVLR_ANTECIPACAO').AsCurrency := XVLR_ANTECIPACAO;
            MDO.Query.ParamByName('tipogerador').AsString := 'ADIANTAORD';
            MDO.Query.SQL.Text;
            MDO.Query.Open;
            COD_MOVIMENTO := MDO.Query.FieldByName('COD_MOVBANCO').AsInteger;
            TIPO_MOVIMENTO := 'Cheque';
            MDO.Transac.CommitRetaining;
         end;

         if (cbEspecie.Text <> 'Cheque') and (cbEspecie.Text <> 'Banco') and (cbEspecie.Text <> 'Pix') then
         begin
            MDO.Transac.CommitRetaining;
            MDO.Query.Close;
            MDO.Query.SQL.Clear;
            MDO.Query.SQL.Add('SELECT COD_LANC FROM LANCAIXA');
            MDO.Query.SQL.Add('WHERE LANCAIXA.VALOR = :XVLR_ANTECIPACAO');
            MDO.Query.SQL.Add('AND TIPOGERADOR = :tipogerador');
            MDO.Query.SQL.Add('ORDER BY COD_LANC DESC ROWS 1');
            MDO.Query.ParamByName('XVLR_ANTECIPACAO').AsCurrency := XVLR_ANTECIPACAO;
            MDO.Query.ParamByName('tipogerador').AsString := 'ADIANTAORD';

            MDO.Query.SQL.Text;
            MDO.Query.Open;
            COD_MOVIMENTO := MDO.Query.FieldByName('COD_LANC').AsInteger;
            TIPO_MOVIMENTO := 'Carteira';
            MDO.Transac.CommitRetaining;
         end;

         MDO.Transac.CommitRetaining;
         MDO.Query.Close;
         MDO.Query.SQL.Clear;
         MDO.Query.SQL.Add('INSERT INTO antecipacoes (numero_ordem, CLIENTE, DATA_ANTECIPACAO, USUARIO, VALOR_ANTECIPACAO, TIPO_MOVIMENTO, COD_MOVIMENTO) VALUES (:numero_ordem, :CLIENTE, :DATA_ANTECIPACAO, :USUARIO, :VALOR_ANTECIPACAO, :TIPO_MOVIMENTO, :COD_MOVIMENTO)');
         MDO.Query.ParamByName('numero_ordem').AsInteger := XNumeroOs;
         MDO.Query.ParamByName('CLIENTE').AsString := xNome_Cliente;
         MDO.Query.ParamByName('DATA_ANTECIPACAO').AsDateTime := Now;
         MDO.Query.ParamByName('USUARIO').AsString := FMenu.edusuario.Text;
         MDO.Query.ParamByName('VALOR_ANTECIPACAO').AsCurrency := XVLR_ANTECIPACAO;
         MDO.Query.ParamByName('TIPO_MOVIMENTO').AsString := TIPO_MOVIMENTO;
         MDO.Query.ParamByName('COD_MOVIMENTO').AsInteger := COD_MOVIMENTO;
         MDO.Query.ExecSQL;
         MDO.Transac.CommitRetaining;

         ShowMessage('Antecipa��o bem sucedida!');
         Close;

       end;
   Except
       MDO.Transac.Rollback;
   End;
  End;
end.
