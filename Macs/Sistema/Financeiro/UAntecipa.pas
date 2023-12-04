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
    Label4: TLabel;
    Label5: TLabel;
    procedure dbgContaCorrenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbEspecieExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbEspecieChange(Sender: TObject);
    procedure BtnFinalizarAntecipacaoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmAntecipa: TfrmAntecipa;

   xDATA_ANTECIPACAO: TDate;

   xPKContaCorrente, xPkFormaPagamento: Integer;
   XCOD_ORDEM: Integer;

   XTipoGerador: string;

   xExisteProd, xExisteServ: Boolean;

   XVLR_ANTECIPACAO: Real;
   XNumeroOS: Integer;
   XValorTotalOS: Real;


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
   LblNumero.Caption := IntToStr(xNumeroOS);
   MDO.Query.Close;
   LblNomeCliente.Caption := xNome_Cliente;
   xPkFormaPagamento := 1;
   xDATA_ANTECIPACAO := Date;
   edValorAntecipacao.ValueNumeric := 0;
   Label5.caption := FloatToStr(xValorTotalOS);

end;


procedure TfrmAntecipa.dbgContaCorrenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not ((cbEspecie.Text = 'Cart�o') or (cbEspecie.Text = 'Pix') or (cbEspecie.Text = 'Banco')) then
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
   if (cbEspecie.Text = 'Cart�o') or (cbEspecie.Text = 'Pix') or (cbEspecie.Text = 'Banco') then
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
  if (cbEspecie.Text = 'Cart�o') or (cbEspecie.Text = 'Pix') or (cbEspecie.Text = 'Banco') then
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

procedure TfrmAntecipa.BtnFinalizarAntecipacaoClick(Sender: TObject);
begin
XVLR_ANTECIPACAO:= edValorAntecipacao.ValueNumeric;
   try
       begin
       MDO.Transac.CommitRetaining;
       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       // INSERE VALOR ANTECIPACAO
       MDO.Query.SQL.Add('UPDATE ordem SET ordem.vlradiantamento = :XVLR_ANTECIPACAO');
       MDO.Query.SQL.Add('        where ordem.cod_ordem = :CodigoOrdem ');
       MDO.Query.ParamByName('XVLR_ANTECIPACAO').AsCurrency := XVLR_ANTECIPACAO;
       MDO.Query.ParamByName('CodigoOrdem').AsInteger := xCod_PedidoPagamento;
       MDO.Query.ExecSQL;
       MDO.Transac.CommitRetaining;
       end;
   Except
   End;
End;



end.
