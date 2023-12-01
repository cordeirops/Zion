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
    Edit1: TEdit;
    LblNomeCliente: TLabel;
    procedure dbgContaCorrenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbEspecieExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    NumeroOS: Integer;
  end;

var
   frmAntecipa: TfrmAntecipa;

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



procedure TfrmAntecipa.dbgContaCorrenteKeyDown(Sender: TObject; var Key: Word;
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
   end;

   if Key = VK_ESCAPE then
   Begin
       PContaCorrente.Visible := false;
       PContaCorrente.SendToBack;
   end;
end;

procedure TfrmAntecipa.cbEspecieExit(Sender: TObject);
begin
   if (cbEspecie.Text = 'Cartão') or (cbEspecie.Text = 'Pix') then
   begin
       If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'DESCRICAO', 'À VISTA', '')
       then begin
           xPkFormaPagamento := DMFinanc.TFormPag.FieldByName('COD_FORMPAG').AsInteger;
       end;
       FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', '', '', '');
       PContaCorrente.Visible := true;
       PContaCorrente.BringToFront;
       dbgContaCorrente.SetFocus;
   end;
end;

procedure TfrmAntecipa.FormActivate(Sender: TObject);
begin
   LblTipoServico.Caption := 'Adiantamento';
   LblNumero.Caption := IntToStr(xCod_PedidoPagamento);
   LblNomeCliente.Caption := xNome_Cliente;
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



end.
