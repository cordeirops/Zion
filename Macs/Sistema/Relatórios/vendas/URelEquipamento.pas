unit URelEquipamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, DrLabel, jpeg, ExtCtrls, UFrmBusca, Mask, TFlatEditUnit,
  ColorMaskEdit, QuickRpt, QRCtrls, Grids, DBGrids;

type
  TFRelEquipamento = class(TFPadraoRelatorio)
    FrmPessoaIni: TFrmBusca;
    FrmPessoaFim: TFrmBusca;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    RGESCOLHA: TRadioGroup;
    LTextoBusca: TLabel;
    Label2: TLabel;
    EDEquipamentoIni: TFlatEdit;
    EDEquipamentoFim: TFlatEdit;
    BTNOPEN: TBitBtn;
    LUZOPEN: TShape;
    LUZMINUS: TShape;
    BTNMINUS: TBitBtn;
    BitBtn1: TBitBtn;
    Shape1: TShape;
    Shape2: TShape;
    BitBtn2: TBitBtn;
    EDPlacaFim: TColorMaskEdit;
    EDPlacaIni: TColorMaskEdit;
    QrEquipamento: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRBand4: TQRBand;
    QRShape4: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRSubDetail12: TQRSubDetail;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText83: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRSubDetail3: TQRSubDetail;
    QRLabel1: TQRLabel;
    QrlTotProd: TQRLabel;
    QRShape3: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRSubDetail4: TQRSubDetail;
    QRLabel7: TQRLabel;
    QrlTotServ: TQRLabel;
    QRBand5: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLTOTORD: TQRLabel;
    QRTOTPROD: TQRLabel;
    QRTOTSERV: TQRLabel;
    QRShape11: TQRShape;
    QRDBText11: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRSubDetail5: TQRSubDetail;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    XTitulo: TQRLabel;
    QRLabel17: TQRLabel;
    XEstado: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QrtDesc: TQRDBText;
    QrtDescServ: TQRDBText;
    QrtDescDesp: TQRDBText;
    QrtPercProd: TQRLabel;
    QrtPercServ: TQRLabel;
    QrtPercDesp: TQRLabel;
    QrAnalit_Equip02: TQuickRep;
    QRBand7: TQRBand;
    QRDBText33: TQRDBText;
    QRLabel51: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    qrdata: TQRLabel;
    qrhora: TQRLabel;
    QRLabel56: TQRLabel;
    QRBand8: TQRBand;
    QRGroup2: TQRGroup;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRLabel68: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRBand6: TQRBand;
    QrSubtotal: TQRLabel;
    QrTotHr: TQRLabel;
    QrHrExt: TQRLabel;
    QrHrCom: TQRLabel;
    QRDBText19: TQRDBText;
    QrVlrTotKm: TQRLabel;
    QRLabel50: TQRLabel;
    QrNumeroAjud: TQRLabel;
    QRLabel49: TQRLabel;
    QrTotAjud: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText25: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QrVlrHrNormal: TQRLabel;
    QrVlrHrExtra: TQRLabel;
    QQtdKm: TQRLabel;
    QRShape8: TQRShape;
    QRBand3: TQRBand;
    QrRSubtotal: TQRLabel;
    QrRVlrTotKm: TQRLabel;
    QRQtdKm: TQRLabel;
    QrRTotHr: TQRLabel;
    QrRVlrHrExtra: TQRLabel;
    QrRHrExt: TQRLabel;
    QrRVlrHrNormal: TQRLabel;
    QrRHrCom: TQRLabel;
    QRShape9: TQRShape;
    QRLabel25: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel26: TQRLabel;
    QrTotalOrdem: TQRLabel;
    QrSinteticoEquip: TQuickRep;
    QRBand9: TQRBand;
    QRDBText27: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel43: TQRLabel;
    QRBand10: TQRBand;
    QRGroup1: TQRGroup;
    QRLabel63: TQRLabel;
    QRDBText56: TQRDBText;
    QRBand11: TQRBand;
    QrTotalServico: TQRLabel;
    QrTotalAjud: TQRLabel;
    QrTotalKm: TQRLabel;
    QRBand12: TQRBand;
    QRLabel96: TQRLabel;
    QrTotal: TQRLabel;
    QRShape10: TQRShape;
    QRLabel83: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel47: TQRLabel;
    QrTotOrd: TQRLabel;
    QRLabel57: TQRLabel;
    QrSintEquipamento: TQuickRep;
    QRBand13: TQRBand;
    QRDBText30: TQRDBText;
    QRLabel41: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel42: TQRLabel;
    QRLabel48: TQRLabel;
    QrDate: TQRLabel;
    QrTime: TQRLabel;
    QRLabel61: TQRLabel;
    QRBand14: TQRBand;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRBand15: TQRBand;
    QRBand16: TQRBand;
    QRLabel107: TQRLabel;
    QrTotalGeralOrd: TQRLabel;
    QRGroup3: TQRGroup;
    QRLabel75: TQRLabel;
    QRDBText60: TQRDBText;
    QRShape14: TQRShape;
    QRLabel69: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRShape15: TQRShape;
    QRDBText32: TQRDBText;
    QRLabel78: TQRLabel;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QrNumAjudante: TQRLabel;
    QrVlrAjud: TQRLabel;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText50: TQRDBText;
    QRLabel93: TQRLabel;
    QrTotalAjudante: TQRLabel;
    QrTot_Ajudante: TQRLabel;
    QrQtdeKm: TQRLabel;
    QrTotKm: TQRLabel;
    QrTotHServ: TQRLabel;
    QrTotServico: TQRLabel;
    QrTotOrdem: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmPessoaIniBTNOPENClick(Sender: TObject);
    procedure EDPlacaIniExit(Sender: TObject);
    procedure BTNOPENClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BTNMINUSClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EDPlacaIniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDPlacaFimExit(Sender: TObject);
    procedure EDPlacaFimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmPessoaFimBTNOPENClick(Sender: TObject);
    procedure FrmPessoaIniBTNMINUSClick(Sender: TObject);
    procedure FrmPessoaFimBTNMINUSClick(Sender: TObject);
    procedure FrmPessoaIniEDCodigoExit(Sender: TObject);
    procedure FrmPessoaIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmPessoaFimEDCodigoExit(Sender: TObject);
    procedure FrmPessoaFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QrEquipamentoBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QrAnalit_Equip02BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand14BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand13BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }

  public
   // função para buscar dados de equipamento
   Function LocalizaEquipamento(Placa: string): boolean;
   // imprimi dados do relatorio de equipamnto
   Procedure ImprimeEquip;
   // SOMA O TOTAL DE AJUDANTES TANTO FINANCEIRO QUANTO AO NUMERO DE PESSOAS
   Procedure TotalizadorAjudante;

  end;

var
   FRelEquipamento: TFRelEquipamento;
   XQtdHrCom, XQtdHrExtra: TTime;//Valores Para totalizar por grupo de Ordem
   XRQtdHrCom, XRQtdHrExtra: TTime;//Valores Para totalizar por grupo de Ordem
   XVlrHrCom, XVlrHrExt, XVlrTotalHrs, XVlrTotKm, XKm, XTotalGeral: Real;//Valores Para totalizar por grupo de Ordem
   XRVlrHrCom, XRVlrHrExt, XRVlrTotalHrs, XRVlrTotKm, XRKm, XRTotalGeral, XRVlrTotalOrdem: Real;//Valores Para totalizar por grupo de Ordem
   XQtdeAjud : integer; // acumula o total de ajudantes
   XTotFinancAjud : real; // armazena o total financeiro de ajudante
   XTotalizadorOrd: real; // armazena o total financeiro do relatorio sintetico

implementation

uses UCadEquipamento, Alxor32, UDMPessoa, DB, UCliente, UDMEstoque,
  UDMMacs, UMenu, UOrdem, URelOrdem, UPadrao;

{$R *.dfm}

procedure TFRelEquipamento.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   Exit;
end;

procedure TFRelEquipamento.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
   If AbrirForm(TFCadEquipamento,FCadEquipamento,1)='Selected'
   Then Begin
   End;

end;

procedure TFRelEquipamento.FrmPessoaIniBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS CLIENTES PARA CONSUTA
  	filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
  	If AbrirForm(TFCliente, FCliente, 1)='Selected'
	Then Begin
       FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmPessoaIni.Repaint;
	End;
end;

procedure TFRelEquipamento.EDPlacaIniExit(Sender: TObject);
begin
  inherited;
  // formatando para letras maiusculas
   EDPlacaIni.Text := UpperCase(EDPlacaIni.Text);

   // se foi informado a placa o valor eh repassado para funcção
   If EDPlacaIni.Text <> '   -    '
   Then Begin
       // função para localizar dados do equipamento
       LocalizaEquipamento(EDPlacaIni.Text);
       FrmPessoaIni.BTNOPEN.SetFocus;
   End;

end;

function TFRelEquipamento.LocalizaEquipamento(Placa: string): boolean;
begin
   // seleciona dados de equipamento que tenha a mesma placa
   DMPESSOA.TEquip.Close;
   DMPESSOA.TEquip.SQL.Clear;
   DMPESSOA.TEquip.SQL.Add('select * from equipamento where (upper(equipamento.placa) = upper(' + #39 + EDPlacaIni.Text + #39 + '))');
   DMPESSOA.TEquip.Open;

   // se possuir equipamento com a mesma placa, os dados são repassados para as duas edit's de equipamento
   If Not DMPESSOA.TEquip.IsEmpty
   Then Begin
       EDEquipamentoIni.Text := DMPESSOA.TEquip.FieldByname('descricao').AsString;
       EDPlacaFim.Text := EDPlacaIni.Text;
       EDEquipamentoFim.Text := DMPESSOA.TEquip.FieldByname('descricao').AsString;
   End;

end;

procedure TFRelEquipamento.BTNOPENClick(Sender: TObject);
begin
  inherited;
   // os dados de placa e descricao do equipamneto selecionado são repassado para as edit's
   If AbrirForm(TFCadEquipamento,FCadEquipamento,1)='Selected'
   Then Begin
       EDPlacaIni.Text := DMPESSOA.TEquip.FieldByname('placa').AsString;
       EDEquipamentoIni.Text := DMPESSOA.TEquip.FieldByname('descricao').AsString;
   End;
end;

procedure TFRelEquipamento.BitBtn1Click(Sender: TObject);
begin
  inherited;
   // os dados de placa e descricao do equipamneto selecionado são repassado para as edit's
   If AbrirForm(TFCadEquipamento,FCadEquipamento,1)='Selected'
   Then Begin
       EDPlacaFim.Text := DMPESSOA.TEquip.FieldByname('placa').AsString;
       EDEquipamentoFim.Text := DMPESSOA.TEquip.FieldByname('descricao').AsString;
   End;

end;

procedure TFRelEquipamento.BTNMINUSClick(Sender: TObject);
begin
  inherited;
   // são zeradas as edit's
   EDPlacaIni.Text := '';
   EDEquipamentoIni.Text := '';
end;

procedure TFRelEquipamento.BitBtn2Click(Sender: TObject);
begin
  inherited;
   // são zeradas as edit's
   EDPlacaFim.Text := '';
   EDEquipamentoFim.Text := '';

end;

procedure TFRelEquipamento.EDPlacaIniKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

   // se for pressionado ENTER
   If Key = 13
   Then Begin
      // formatando para letras maiusculas
       EDPlacaIni.Text := UpperCase(EDPlacaIni.Text);

       // se foi informado a placa o valor eh repassado para funcção
       If EDPlacaIni.Text <> '   -    '
       Then Begin
           // função para localizar dados do equipamento
           LocalizaEquipamento(EDPlacaIni.Text);
           FrmPessoaIni.BTNOPEN.SetFocus;
       End;
   End;
end;

procedure TFRelEquipamento.EDPlacaFimExit(Sender: TObject);
begin
  inherited;
   // seleciona dados de equipamento que tenha a mesma placa
   DMPESSOA.TEquip.Close;
   DMPESSOA.TEquip.SQL.Clear;
   DMPESSOA.TEquip.SQL.Add('select * from equipamento where (upper(equipamento.placa) = upper(' + #39 + EDPlacaFim.Text + #39 + '))');
   DMPESSOA.TEquip.Open;

   // se existir o equipamento com a mesma placa, os dados são repassados para as edit's
   If Not DMPESSOA.TEquip.IsEmpty
   Then Begin
       EDPlacaFim.Text := UpperCase(EDPlacaFim.Text);
       EDEquipamentoFim.Text := DMPESSOA.TEquip.FieldByname('descricao').AsString;
       FrmPessoaIni.BTNOPEN.SetFocus;
   End;


end;

procedure TFRelEquipamento.EDPlacaFimKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   // se foi pressionado ENTER
   If Key = 13
   Then Begin
       // seleciona dados de equipamento que tenha a mesma placa
       DMPESSOA.TEquip.Close;
       DMPESSOA.TEquip.SQL.Clear;
       DMPESSOA.TEquip.SQL.Add('select * from equipamento where (upper(equipamento.placa) = upper(' + #39 + EDPlacaFim.Text + #39 + '))');
       DMPESSOA.TEquip.Open;

       // se existir o equipamento com a mesma placa, os dados são repassados para as edit's
       If Not DMPESSOA.TEquip.IsEmpty
       Then Begin
           EDPlacaFim.Text := UpperCase(EDPlacaFim.Text);
           EDEquipamentoFim.Text := DMPESSOA.TEquip.FieldByname('descricao').AsString;
           FrmPessoaIni.BTNOPEN.SetFocus;
       End;
   End;
end;

procedure TFRelEquipamento.FrmPessoaFimBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS CLIENTES PARA CONSUTA
  	filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
  	If AbrirForm(TFCliente, FCliente, 1)='Selected'
  	Then Begin
       FrmPessoaFim.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       FrmPessoaFim.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       FrmPessoaFim.Repaint;
	End;

end;

procedure TFRelEquipamento.FrmPessoaIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   // zera todas as edit's
   FrmPessoaIni.EdDescricao.Text := '';
   FrmPessoaIni.EDCodigo.Text := '';
end;

procedure TFRelEquipamento.FrmPessoaFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
   // zera as edit's
   FrmPessoaFim.EDCodigo.Text := '';
   FrmPessoaFim.EdDescricao.Text := '';
end;

procedure TFRelEquipamento.FrmPessoaIniEDCodigoExit(Sender: TObject);
begin
  inherited;
   // deve ter algum valor na edit para entrar na função
   If FrmPessoaIni.EDCodigo.Text <> ''
   Then Begin

       // seleciona todos os ddos de cliente q tenha o mesmo cod_interno
       DMPESSOA.WCliente.Close;
       DMPESSOA.WCliente.SQL.Clear;
       DMPESSOA.WCliente.SQL.Add('select * from vwcliente where vwcliente.cod_interno = :codigo');
       DMPESSOA.WCliente.ParamByName('codigo').AsString := FrmPessoaIni.EDCodigo.Text;
       DMPESSOA.WCliente.Open;

       // se existir cliente com o mesmo cod_interno
       If Not DMPESSOA.WCliente.IsEmpty
       Then Begin
           FrmPessoaIni.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('nome').AsString;
           FrmPessoaFim.BTNOPEN.SetFocus;
       End
       Else Begin
           FrmPessoaIni.EdDescricao.Text := '';
       End;
   End;

end;

procedure TFRelEquipamento.FrmPessoaIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   // se foi pressinado ENTER
   If Key = 13
   Then Begin
       // deve ter algum valor na edit para entrar na função
       If FrmPessoaIni.EDCodigo.Text <> ''
       Then Begin

           // seleciona todos os ddos de cliente q tenha o mesmo cod_interno
           DMPESSOA.WCliente.Close;
           DMPESSOA.WCliente.SQL.Clear;
           DMPESSOA.WCliente.SQL.Add('select * from vwcliente where vwcliente.cod_interno = :codigo');
           DMPESSOA.WCliente.ParamByName('codigo').AsString := FrmPessoaIni.EDCodigo.Text;
           DMPESSOA.WCliente.Open;

           // se existir cliente com o mesmo cod_interno
           If Not DMPESSOA.WCliente.IsEmpty
           Then Begin
               FrmPessoaIni.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('nome').AsString;
               FrmPessoaFim.BTNOPEN.SetFocus;
           End
           Else Begin
               FrmPessoaIni.EdDescricao.Text := '';
           End;
       End;
   End;

end;

procedure TFRelEquipamento.FrmPessoaFimEDCodigoExit(Sender: TObject);
begin
  inherited;
   // se foi informado algum codigo entra na condição para sql
   If FrmPessoaFim.EDCodigo.Text <> ''
   Then Begin
       // seleciona todos os ddos de cliente q tenha o mesmo cod_interno
       DMPESSOA.WCliente.Close;
       DMPESSOA.WCliente.SQL.Clear;
       DMPESSOA.WCliente.SQL.Add('select * from vwcliente where vwcliente.cod_interno = :codigo');
       DMPESSOA.WCliente.ParamByName('codigo').AsString := FrmPessoaFim.EDCodigo.Text;
       DMPESSOA.WCliente.Open;

       // se existir cliente com o mesmo cod_interno
       If Not DMPESSOA.WCliente.IsEmpty
       Then Begin
           FrmPessoaFim.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('nome').AsString;
       End
       Else Begin
           FrmPessoaFim.EdDescricao.Text := '';
       End;



   End;
end;

procedure TFRelEquipamento.FrmPessoaFimEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   // se pressionado ENTER
   If Key = 13
   Then Begin
       // se foi informado algum codigo entra na condição para sql
       If FrmPessoaFim.EDCodigo.Text <> ''
       Then Begin
           // seleciona todos os ddos de cliente q tenha o mesmo cod_interno
           DMPESSOA.WCliente.Close;
           DMPESSOA.WCliente.SQL.Clear;
           DMPESSOA.WCliente.SQL.Add('select * from vwcliente where vwcliente.cod_interno = :codigo');
           DMPESSOA.WCliente.ParamByName('codigo').AsString := FrmPessoaFim.EDCodigo.Text;
           DMPESSOA.WCliente.Open;

           // se existir cliente com o mesmo cod_interno
           If Not DMPESSOA.WCliente.IsEmpty
           Then Begin
               FrmPessoaFim.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('nome').AsString;
               BtnVisualizar.SetFocus;
           End
           Else Begin
               FrmPessoaFim.EdDescricao.Text := '';
           End;

       End;

   End;

end;

procedure TFRelEquipamento.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   // imprimi dados do relatorio de equipamnto
   ImprimeEquip;

end;
// imprimi dados do relatorio de equipamnto
procedure TFRelEquipamento.ImprimeEquip;
begin

   // SELECIONA TODOS OS DADOS DA TABELA LOJA
   FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');

   // SELECIONA TODOS OS DADOS DA TABELA EMPRESA
   FiltraTabela(DMMACS.TEmpresa,'EMPRESA','COD_EMPRESA',DMMACS.TLoja.FieldByName('cod_empresa').AsString,'');

   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   // se for LOCACAO os dados tbm são baseados na tabela itens_locacao
   If FMenu.TIPOREL = 'EQUIPAMENTO'
   Then Begin
       DMESTOQUE.TRel.SQL.Add('select equipamento.descricao as EQUIPAMENTO, equipamento.cod_equipamento, equipamento.placa, equipamento.num_frota, equipamento.cod_cliente, ');
       DMESTOQUE.TRel.SQL.Add('cliente.cod_cliente, cliente.cod_pessoa, ordem.cod_cliente, ordem.cod_ordem, ordem.cod_funcionario, ORDEM.NUMERO, ORDEM.DTABERT, vwordem.STATUS,');
       DMESTOQUE.TRel.SQL.Add('pessoa.nome, pessoa.cod_pessoa, pessoa.cpfcnpj, vwfuncionario.cod_func, vwfuncionario.cod_pessoa, vwfuncionario.nome as NOMEFUNC');
       DMESTOQUE.TRel.SQL.Add('from equipamento');
       DMESTOQUE.TRel.SQL.Add('left join ordem on equipamento.cod_equipamento = ordem.cod_equipamento');
       DMESTOQUE.TRel.SQL.Add('left join cliente on ordem.cod_cliente = cliente.cod_cliente');
       DMESTOQUE.TRel.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
       DMESTOQUE.TRel.SQL.Add('left join vwfuncionario on ordem.cod_funcionario = vwfuncionario.cod_func');
       DMESTOQUE.TRel.SQL.Add('inner join vwordem on ordem.cod_ordem = vwordem.cod_ordem');

   End;
   If FMenu.TIPOREL = 'LOCACAO_ANALIT'
   Then Begin
       DMESTOQUE.TRel.SQL.Add(' select vwordem.cod_ordem, vwordem.numero, vwordem.total, vwordem.CLIENTE, equipamento.descricao, Itens_locacao.data, equipamento.placa, itens_locacao.hrs_extras as QTDHREXTRA, itens_locacao.hrs_normais AS QTDHRNORMAL, ');
       DMESTOQUE.TRel.SQL.Add(' itens_locacao.vlr_extra AS VlrUnitHrExtra, itens_locacao.valortothrs as vlrtothrs, itens_locacao.vlrserv_cobrado as VlrUnitHrNormal, itens_locacao.total_normal as TotHrNormal, itens_locacao.total_extra as TotHrExtra, ');
       DMESTOQUE.TRel.SQL.Add(' itens_locacao.km_total AS QTDKM, itens_locacao.hrs_normais, itens_locacao.hrs_extras, itens_locacao.vlrkm_cobrado AS VLRKM, itens_locacao.VALORTOTKM AS TOTKM, itens_locacao.total_final, itens_locacao.total_horas as QtdTotHrs ');
       DMESTOQUE.TRel.SQL.Add(' from vwordem ');
       DMESTOQUE.TRel.SQL.Add(' left join itens_locacao on vwordem.cod_ordem = itens_locacao.cod_ordem ');
       DMESTOQUE.TRel.SQL.Add(' left join equipamento on itens_locacao.cod_equipamento = equipamento.cod_equipamento ');
   End;
   If FMenu.TIPOREL = 'LOCACAO_SINT'
   Then Begin
       DMESTOQUE.TRel.SQL.Add('select vwordem.cod_ordem, vwordem.numero, vwordem.total, vwordem.CLIENTE, equipamento.descricao as EQUIPAMENTO, equipamento.cod_equipamento, Itens_locacao.data, equipamento.placa, itens_locacao.hrs_extras as QTDHREXTRA, ');
       DMESTOQUE.TRel.SQL.Add('ORDEM.TOTKM, ORDEM.TOTAJUDANTE, ORDEM.TOTSERV, ORDEM.TOTORD,');
       DMESTOQUE.TRel.SQL.Add('itens_locacao.vlr_extra AS VlrUnitHrExtra, itens_locacao.valortothrs as vlrtothrs, itens_locacao.vlrserv_cobrado as VlrUnitHrNormal, itens_locacao.total_normal as TotHrNormal, itens_locacao.total_extra as TotHrExtra,');
       DMESTOQUE.TRel.SQL.Add('itens_locacao.km_total AS QTDKM, itens_locacao.hrs_normais, itens_locacao.hrs_extras, itens_locacao.vlrkm_cobrado AS VLRKM, itens_locacao.VALORTOTKM AS TOTKM, itens_locacao.total_final, itens_locacao.total_horas as QtdTotHrs,');
       DMESTOQUE.TRel.SQL.Add('itens_locacao.hrs_normais AS QTDHRNORMAL');
       DMESTOQUE.TRel.SQL.Add('from equipamento');
       DMESTOQUE.TRel.SQL.Add('inner join itens_locacao on equipamento.cod_equipamento = itens_locacao.cod_equipamento');
       DMESTOQUE.TRel.SQL.Add('inner join vwordem on itens_locacao.cod_ordem = vwordem.cod_ordem');
       DMESTOQUE.TRel.SQL.Add('inner join ordem on itens_locacao.cod_ordem = ordem.cod_ordem');
   End;

   DMMACS.TLoja.Edit;

   // verifica se foi selecionado relatorio com ordem aberta ou fechada
   If RGESCOLHA.ItemIndex = 0
   Then Begin
       DMESTOQUE.TRel.SQL.Add('where (vwordem.STATUS = ' + #39 + 'ABERTO' + #39 + ')');
       DMMACS.TLoja.FieldByName('TMP1').AsString := 'Tipo: [Abertas]'
   End
   Else Begin
       DMESTOQUE.TRel.SQL.Add('where (vwordem.STATUS = ' + #39 + 'FECHADO' + #39 + ')');
       DMMACS.TLoja.FieldByName('TMP1').AsString := 'Tipo: [Fechadas]';
   End;

   // para buscar dados referente ao equipamento, eh obrigatorio fazer a seleção inicial e final
   If (EDPlacaIni.Text <> '   -    ') and (EDPlacaFim.Text <> '   -    ')
   Then Begin
       // se as placas forem iguas seleciona todos os equipámentos com a mesma placa
       If (EDPlacaIni.Text = EDPlacaFim.Text)
       Then Begin
           DMESTOQUE.TRel.SQL.Add('AND (equipamento.placa = :placa)');
           DMESTOQUE.TRel.ParamByName('placa').AsString := EDPlacaIni.Text;
           DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + ' / Placa: ' + EDPlacaIni.Text;
       End
       Else Begin
           DMESTOQUE.TRel.SQL.Add('AND (equipamento.placa Between :Placa1 and :Placa2 )');
           DMESTOQUE.TRel.ParamByName('placa1').AsString := EDPlacaIni.Text;
           DMESTOQUE.TRel.ParamByName('placa2').AsString := EDPlacaFim.Text;
           DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + ' / Placa Ini.: ' + EDPlacaIni.Text + ' - Placa Fin.: ' + EDPlacaFim.Text;
       End;
   End;

   // verifica se a data dos dois campos foram informadas
   If (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ')
   Then Begin
       If FMenu.TIPOREL = 'EQUIPAMENTO'
       Then Begin
           DMESTOQUE.TRel.SQL.Add('AND (vwORDEM.DTABERT Between :Data1 and :Data2 )');
           DMESTOQUE.TRel.ParamByName('data1').AsString := EdDataIni.Text;
           DMESTOQUE.TRel.ParamByName('data2').AsString := EdDataFim.Text;
           DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + ' / Data Ini.:' + EdDataIni.Text + ' - Data Fin.:' + EdDataFim.Text;
       End
       Else Begin
           DMESTOQUE.TRel.SQL.Add('AND (Itens_locacao.data Between :Data1 and :Data2 )');
           DMESTOQUE.TRel.ParamByName('data1').AsString := EdDataIni.Text;
           DMESTOQUE.TRel.ParamByName('data2').AsString := EdDataFim.Text;
           DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + ' / Data Ini.:' + EdDataIni.Text + ' - Data Fin.:' + EdDataFim.Text;
       End;
   End;

   DMMACS.TLoja.FieldByName('TMP2').AsString := '';

   // verifica se o cliente inicial e final foi informado
   If (FrmPessoaIni.EdDescricao.Text <> '') and (FrmPessoaFim.EdDescricao.Text <> '')
   Then Begin
       // verifica se ~foi buscado o mesmo cliente
       If (FrmPessoaIni.EdDescricao.Text = FrmPessoaFim.EdDescricao.Text)
       Then Begin
           DMESTOQUE.TRel.SQL.Add('AND (VWORDEM.CLIENTE = :nome)');
           DMESTOQUE.TRel.ParamByName('nome').AsString := FrmPessoaIni.EdDescricao.Text;
           DMMACS.TLoja.FieldByName('TMP2').AsString := 'Pessoa: ' + FrmPessoaIni.EdDescricao.Text;
       End
       Else Begin
           DMESTOQUE.TRel.SQL.Add('AND (VWORDEM.CLIENTE Between :Nome1 and :Nome2)');
           DMESTOQUE.TRel.ParamByName('nome1').AsString := FrmPessoaIni.EdDescricao.Text;
           DMESTOQUE.TRel.ParamByName('nome2').AsString := FrmPessoaFim.EdDescricao.Text;
           DMMACS.TLoja.FieldByName('TMP2').AsString := 'Pessoa Ini.: ' + FrmPessoaIni.EdDescricao.Text + ' - Pessoa Fin.:' + FrmPessoaFim.EdDescricao.Text;
       End;
   End;

   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;

   If FMenu.TIPOREL = 'LOCACAO_SINT' Then
       DMESTOQUE.TRel.SQL.Add('order by EQUIPAMENTO.COD_EQUIPAMENTO, VWORDEM.NUMERO');
   If FMenu.TIPOREL = 'LOCACAO_ANALIT' Then
       DMESTOQUE.TRel.SQL.Add('order by vwordem.COD_ORDEM, vwordem.NUMERO');
   DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.RecordCount;
   DMESTOQUE.TRel.Open;

   DMESTOQUE.TRel.First;

   // DATA E HORA ATUAL DO SISTEMA
   XTitulo.Caption := DateToStr(DATE());
   XESTADO.Caption := TimeToStr(Time());

   If FMenu.TIPOREL = 'EQUIPAMENTO' Then
       // impressao do relatorio no QReport
       QrEquipamento.Preview;
   If FMenu.TIPOREL = 'LOCACAO_ANALIT'
   Then Begin
       // data e hora do sistema p relatorio
       QrData.Caption := DateToStr(date);
       QrHora.Caption := TimeToStr(time);

       // impressao de relatorio analitico de locacao de veiculo
       QrAnalit_Equip02.Preview;
   End;
   If FMenu.TIPOREL = 'LOCACAO_SINT'
   Then Begin
       QrDate.Caption := DateToStr(date);
       QrTime.Caption := TimeToStr(time);

       QrSintEquipamento.Preview;

   End;
end;

procedure TFRelEquipamento.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   // seleciona todos os produtos da ordem atual
   DMESTOQUE.TRel4.Close;
   DMESTOQUE.TRel4.SQL.Clear;
   DMESTOQUE.TRel4.SQL.Add('select itprodord.cod_ordem, itprodord.qtd, itprodord.total, itprodord.vlrunit, itprodord.cod_ESTOQUE, itprodord.desconto, ');
   DMESTOQUE.TRel4.SQL.Add('estoque.cod_estoque, estoque.cod_subprod, subproduto.cod_subproduto, subproduto.descricao AS PRODUTO');
   DMESTOQUE.TRel4.SQL.Add('from itprodord');
   DMESTOQUE.TRel4.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.TRel4.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.TRel4.SQL.Add('where itprodord.cod_ordem = :codigo');
   DMESTOQUE.TRel4.ParamByName('codigo').AsString := DMESTOQUE.TRel.FieldByname('cod_ordem').AsString;
   DMESTOQUE.TRel4.Open;

   // seleciona todas as despesas da ordem atual
   DMESTOQUE.TRel3.Close;
   DMESTOQUE.TRel3.SQL.Clear;
   DMESTOQUE.TRel3.SQL.Add('SELECT despadic.cod_gerador, despadic.COD_DESPADIC, despadic.cod_equipe, despadic.despesa, despadic.vlrfinal, despadic.vlrtotfin, despadic.qtd, despadic.desconto,');
   DMESTOQUE.TRel3.SQL.Add('equipe.cod_equipe, equipe.descricao AS EQUIPE');
   DMESTOQUE.TRel3.SQL.Add('from despadic left join equipe on despadic.cod_equipe = equipe.cod_equipe');
   DMESTOQUE.TRel3.SQL.Add('WHERE DESPADIC.COD_GERADOR = :CODIGO');
   DMESTOQUE.TRel3.ParamByName('CODIGO').AsInteger := DMESTOQUE.TRel.FieldByName('cod_ordem').AsInteger;
   DMESTOQUE.TRel3.Open;

   // soma os serviços da ordem de servicp
   DMESTOQUE.TRel2.Close;
   DMESTOQUE.TRel2.SQL.Clear;
   DMESTOQUE.TRel2.SQL.Add(' select itservord.data, itservord.cod_servico, ');
   DMESTOQUE.TRel2.SQL.Add(' itservord.qtd, itservord.total, itservord.vlrunit, ');
   DMESTOQUE.TRel2.SQL.Add(' itservord.desconto, itservord.lucmoe, itservord.lucper, ');
   DMESTOQUE.TRel2.SQL.Add(' subservico.descricao As servico, subservico.cod_servico ');
   DMESTOQUE.TRel2.SQL.Add(' from itservord left join subservico on itservord.cod_servico = subservico.cod_subservico');
   DMESTOQUE.TRel2.SQL.Add(' where itservord.cod_ordem=:CODORD ');
   DMESTOQUE.TRel2.ParamByName('CODORD').AsInteger := DMESTOQUE.TRel.FieldByName('cod_ordem').AsInteger;
   DMESTOQUE.TRel2.Open;

   // faz uma soma de todos os produtos da ordem atual
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('select sum(itprodord.total) as TOTPROD from itprodord');
   DMESTOQUE.Alx.SQL.Add('where itprodord.cod_ordem = :codigo');
   DMESTOQUE.Alx.ParamByName('codigo').AsInteger := DMESTOQUE.TRel.FieldByName('cod_ordem').AsInteger;
   DMESTOQUE.Alx.Open;

   // SOMA O TOTAL DOS SERVIÇO
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('select sum(itservord.total) as TOTSERV FROM itservord');
   DMESTOQUE.Alx1.SQL.Add('where itservord.cod_ordem = :codigo');
   DMESTOQUE.Alx1.ParamByName('codigo').AsInteger := DMESTOQUE.TRel.FieldByName('cod_ordem').AsInteger;
   DMESTOQUE.Alx1.Open;

   // total das despesas
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('select sum(despadic.vlrtotfin) AS TOTDESP from despadic');
   DMESTOQUE.Alx2.SQL.Add('where despadic.cod_gerador = :codigo');
   DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := DMESTOQUE.TRel.FieldByName('cod_ordem').AsInteger;
   DMESTOQUE.Alx2.Open;

   // total da ordem incluindo produto, despesa e servico
   XTOTORD := XTOTORD + DMESTOQUE.Alx.fieldbyname('totprod').AsCurrency + DMESTOQUE.Alx1.fieldbyname('totserv').AsCurrency + DMESTOQUE.Alx2.fieldbyname('totdesp').AsCurrency;
   XTOTPROD := XTOTPROD + DMESTOQUE.Alx.FieldByname('totprod').AsCurrency;
   XTOTSERV := XTOTSERV + DMESTOQUE.Alx1.FieldByName('totserv').AsCurrency + DMESTOQUE.Alx2.FieldByName('totdesp').AsCurrency;


end;

procedure TFRelEquipamento.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   // total de produtos de cada Ordem
   QrlTotProd.Caption := FormatFloat('0.00',DMESTOQUE.Alx.FieldByname('totprod').AsCurrency);
   // total dos servicos e despesas
   QrlTotServ.Caption := FormatFloat('0.00',DMESTOQUE.Alx1.FieldByname('totserv').AsCurrency + DMESTOQUE.Alx2.FieldByname('TOTDESP').AsCurrency);

end;

procedure TFRelEquipamento.QrEquipamentoBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
   XTOTORD:=0;
   XTOTSERV:=0;
   XTOTPROD:=0;

end;

procedure TFRelEquipamento.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   QRTOTPROD.Caption:=FormatFloat('####,##0.00', XTOTPROD);
   QRTOTSERV.Caption:=FormatFloat('####,##0.00', XTOTSERV);
   QRLTOTORD.Caption:=FormatFloat('####,##0.00', XTOTORD);
end;

procedure TFRelEquipamento.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;

   // TOTAL DA ORDEM RECEBENDO TOTAL DE AJUDANTES
   XTOTORD :=  + DMESTOQUE.Alx2.FieldByname('TOTAL_AJUD').AsCurrency;

   // QTOS AJUDANTES TRABALHARAM NA ORDEM
   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add('SELECT COUNT(AJUDANTE.COD_FUNC) AS NUMERO_AJUD FROM AJUDANTE');
   DMESTOQUE.Alx3.SQL.Add('where ajudante.cod_ordem = :codigo');
   DMESTOQUE.Alx3.ParamByName('codigo').AsInteger := DMESTOQUE.TRel.FieldByname('COD_ORDEM').AsInteger;
   DMESTOQUE.Alx3.Open;

   If DMESTOQUE.Alx3.FieldByName('NUMERO_AJUD').AsString = '' Then
       QrNumeroAjud.Caption := '0'
   Else
       QrNumeroAjud.Caption := DMESTOQUE.Alx3.FieldByname('NUMERO_AJUD').AsString;


end;

procedure TFRelEquipamento.FormActivate(Sender: TObject);
begin
  inherited;
   LDescTitulo.Caption := 'Rel. Analítico de Equipamento';
   If FMenu.TIPOREL = 'LOCACAO_SINT' Then
       LDescTitulo.Caption := 'Rel. Sintético de Equipamento';
end;

procedure TFRelEquipamento.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   // zerando a variavel que armazena o nuemro de ajudante
   XQtdeAjud := 0;
   // armazena o total financeiro de ajudante
   XTotFinancAjud := 0 ;

   // SOMA O TOTAL DE AJUDANTES TANTO FINANCEIRO QUANTO AO NUMERO DE PESSOAS
   TotalizadorAjudante;

   // REPASSANDO PARA LABEL O VALOR TOTAL
   QrTotAjud.Caption := FloatToStrF(DMESTOQUE.Alx2.FieldByname('TOTAL_AJUD').AsCurrency, ffFixed, 4, 2);
   QrTotalAjud.Caption := FloatToStrF(DMESTOQUE.Alx2.FieldByname('TOTAL_AJUD').AsCurrency, ffFixed, 4, 2);
   QrNumeroAjud.Caption := DMESTOQUE.Alx2.FieldByname('QuantAjudante').AsString;
   // relatorio sintetico
   QrNumAjudante.Caption := DMESTOQUE.Alx2.FieldByname('QuantAjudante').AsString;
   QrVlrAjud.Caption := FloatToStrF(DMESTOQUE.Alx2.FieldByname('TOTAL_AJUD').AsCurrency, ffFixed, 4, 2);

   //ZERA TOTALIZADORES DAS BANDAS
   XQtdHrCom:= StrToTime('00:00:00');
   XQtdHrExtra:=StrToTime('00:00:00');
   XVlrHrCom:=0;
   XVlrHrExt:=0;
   XVlrTotalHrs:=0;
   XVlrTotKm:=0;
   XKm:=0;
   XTotalGeral:=0;
   //Acumula Total de Ordens
   XRVlrTotalOrdem:=XRVlrTotalOrdem+DMESTOQUE.TRel.FieldByName('TOTAL').AsCurrency;
end;

procedure TFRelEquipamento.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //Acumula totalizadores de detalhes da banda
   XQtdHrCom:=XQtdHrCom+DMESTOQUE.TRel.FieldByName('QTDHRNORMAL').AsDateTime;
   XQtdHrExtra:=XQtdHrExtra+DMESTOQUE.TRel.FieldByName('QTDHREXTRA').AsCurrency;
   XVlrHrCom:=XVlrHrCom+DMESTOQUE.TRel.FieldByName('TOTHRNORMAL').AsCurrency;
   XVlrHrExt:=XVlrHrExt+DMESTOQUE.TRel.FieldByName('TOTHREXTRA').AsCurrency;
   XVlrTotalHrs:=XVlrTotalHrs+DMESTOQUE.TRel.FieldByName('VLRTOTHRS').AsCurrency;
   XVlrTotKm:=XVlrTotKm+DMESTOQUE.TRel.FieldByName('TOTKM').AsCurrency;
   XKm:=XKm+DMESTOQUE.TRel.FieldByName('QTDKM').AsCurrency;
   XTotalGeral:=XTotalGeral+DMESTOQUE.TRel.FieldByName('TOTAL_FINAL').AsCurrency;

   // SOMA O TOTAL DE AJUDANTES TANTO FINANCEIRO QUANTO AO NUMERO DE PESSOAS
   TotalizadorAjudante;

   // numero total de ajudantes da ordem de servico relacionado ao equipamento
   QrNumAjudante.Caption := IntToStr(DMESTOQUE.Alx2.FieldByname('QuantAjudante').AsInteger);

   // total de ajudante
   QrTotAjud.Caption := FloatToStrF(DMESTOQUE.Alx2.FieldByname('TOTAL_AJUD').AsCurrency, ffFixed, 4, 2);

   // armazena o total financeiro de ajudante
   XTotFinancAjud := XTotFinancAjud + DMESTOQUE.Alx2.FieldByname('TOTAL_AJUD').AsCurrency;

   // total financeiro de cada registro no sintetico
   QrVlrAjud.Caption := FloatToStrF(DMESTOQUE.Alx2.FieldByname('TOTAL_AJUD').AsCurrency, ffFixed, 4, 2);

   // acumula o total de ajudantes
   XQtdeAjud := XQtdeAjud + DMESTOQUE.Alx2.FieldByname('QuantAjudante').AsInteger;

   //Acumula totalizadores de relatório
   XRQtdHrCom:=XRQtdHrCom+DMESTOQUE.TRel.FieldByName('QTDHRNORMAL').AsCurrency;
   XRQtdHrExtra:=XRQtdHrExtra+DMESTOQUE.TRel.FieldByName('QTDHREXTRA').AsCurrency;
   XRVlrHrCom:=XRVlrHrCom+DMESTOQUE.TRel.FieldByName('TOTHRNORMAL').AsCurrency;
   XRVlrHrExt:=XRVlrHrExt+DMESTOQUE.TRel.FieldByName('TOTHREXTRA').AsCurrency;
   XRVlrTotalHrs:=XRVlrTotalHrs+DMESTOQUE.TRel.FieldByName('VLRTOTHRS').AsCurrency;
   XRVlrTotKm:=XRVlrTotKm+DMESTOQUE.TRel.FieldByName('TOTKM').AsCurrency;
   XRKm:=XRKm+DMESTOQUE.TRel.FieldByName('QTDKM').AsCurrency;
   XRTotalGeral:=XRTotalGeral+DMESTOQUE.TRel.FieldByName('TOTAL_FINAL').AsCurrency;

   // armazena o total financeiro do relatorio sintetico
   If FMenu.TIPOREL = 'LOCACAO_SINT'
   Then Begin
       XTotalizadorOrd:= XTotalizadorOrd + DMESTOQUE.TRel.FieldByName('TOTORD').AsCurrency;
   End;

end;
procedure TFRelEquipamento.QrAnalit_Equip02BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
    //Zera totalizadores de relatório
   XRQtdHrCom:=0;
   XRQtdHrExtra:=0;
   XRVlrHrCom:=0;
   XRVlrHrExt:=0;
   XRVlrTotalHrs:=0;
   XRVlrTotKm:=0;
   XRKm:=0;
   XRTotalGeral:=0;
   XRVlrTotalOrdem:=0;
   XTotalizadorOrd:=0;

end;

procedure TFRelEquipamento.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   QrHrCom.Caption:=TimeToStr(XQtdHrCom);
   QrVlrHrNormal.Caption:=FormatFloat('0.00', XVlrHrCom);
   QrHrExt.Caption:=TimeToStr(XQtdHrExtra);
   QrVlrHrExtra.Caption:=FormatFloat('0.00', XVlrHrExt);
   QrTotHr.Caption:=FormatFloat('0.00', XVlrTotalHrs);
   QQtdKm.Caption:= FloatToStr(XKm);
   QrVlrTotKm.Caption:=FormatFloat('0.00', XVlrTotKm);
   QrSubtotal.Caption:=FormatFloat('0.00', XTotalGeral);

   // ************* relatorio sintetico *************
   QRQtdKm.Caption := FloatToStr(XKm);
   QrTotKm.Caption := FormatFloat('0.00', XVlrTotKm);
   QrTotalAjudante.Caption := IntToStr(XQtdeAjud);
   QrQtdeKm.Caption := FloatToStr(XKm);
   QrTot_Ajudante.Caption := FloatToStrF(XTotFinancAjud, ffFixed, 4, 2);
   QrTotHServ.Caption := TimeToStr(XQtdHrCom + XQtdHrExtra);
   QrTotServico.Caption := FormatFloat('0.00', XVlrTotalHrs);
   QrTotOrdem.Caption := FormatFloat('0.00', XTotalGeral);

   XTotalGeral := XTotalGeral + DMESTOQUE.Alx2.FieldByname('TOTAL_AJUD').AsCurrency;
   QrTotOrd.Caption := FormatFloat('0.00', XTotalGeral);
   QrTotalServico.Caption := FormatFloat('0.00', XVlrTotalHrs);
   QrTotalKm.Caption := FormatFloat('0.00', XVlrTotKm);


end;

procedure TFRelEquipamento.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   QrRHrCom.Caption:=TimeToStr(XRQtdHrCom);
   QrRVlrHrNormal.Caption:=FormatFloat('0.00', XRVlrHrCom);
   QrRHrExt.Caption:=TimeToStr(XRQtdHrExtra);
   QrRVlrHrExtra.Caption:=FormatFloat('0.00', XRVlrHrExt);
   QrRTotHr.Caption:=FormatFloat('0.00', XRVlrTotalHrs);
   QRQtdKm.Caption:= FloatToStr(XKm);
   QrRVlrTotKm.Caption:=FormatFloat('0.00', XRVlrTotKm);
   QrRVlrTotKm.Caption:=FormatFloat('0.00', XRVlrTotKm);
   QrRSubtotal.Caption:=FormatFloat('0.00', XRTotalGeral);
   QrTotalOrdem.Caption:=FormatFloat('0.00', XRVlrTotalOrdem);
   QrTotal.Caption := FormatFloat('0.00', XRVlrTotalOrdem);
   QrTotalGeralOrd.Caption := FormatFloat('0.00', XTotalizadorOrd);
end;

procedure TFRelEquipamento.QRBand14BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   // soma o total financeiro dos ajudantes relacionados á ordem
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('select sum(ajudante.VALORTOTHRS) as TOTAL_AJUD,  count(ajudante.cod_func) As QuantAjudante from ajudante');
   DMESTOQUE.Alx2.SQL.Add('where ajudante.cod_ordem = :codigo');
   DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := DMESTOQUE.TRel.FieldByname('COD_ORDEM').AsInteger;
   DMESTOQUE.Alx2.Open;

end;

procedure TFRelEquipamento.QRBand13BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
end;

// SOMA O TOTAL DE AJUDANTES TANTO FINANCEIRO QUANTO AO NUMERO DE PESSOAS
procedure TFRelEquipamento.TotalizadorAjudante;
begin
   // soma o total financeiro dos ajudantes relacionados á ordem
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('select sum(ajudante.VALORTOTHRS) as TOTAL_AJUD,  count(ajudante.cod_func) As QuantAjudante from ajudante');
   DMESTOQUE.Alx2.SQL.Add('where ajudante.cod_ordem = :codigo');
   DMESTOQUE.Alx2.ParamByName('codigo').AsInteger := DMESTOQUE.TRel.FieldByname('COD_ORDEM').AsInteger;
   DMESTOQUE.Alx2.Open;
end;

End.

