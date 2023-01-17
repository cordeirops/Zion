unit UClienteCob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadraoPes, Menus, Buttons, DrLabel, jpeg, ExtCtrls, DBCtrls,
  FashionPanel, UFrmBusca, StdCtrls, ComCtrls, DBColorComboBox, Mask,
  DBColorEdit, TFlatTabControlUnit, Grids, DBGrids, TFlatEditUnit, xmldom,
  XMLIntf, msxmldom, XMLDoc;

type
  TFClienteCob = class(TFCadPadraoPes)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    DBColorEdit10: TDBColorEdit;
    DBColorEdit11: TDBColorEdit;
    Label16: TLabel;
    RBSimples: TRadioButton;
    RBComposto: TRadioButton;
    procedure FormActivate(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Sinttico1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FClienteCob: TFClienteCob;

implementation

uses UDMPessoa, UMenu, Alxor32, UCliente, UCadPadrao, StrUtils,
  URelPadraoPes;

{$R *.dfm}

procedure TFClienteCob.FormActivate(Sender: TObject);
begin
  inherited;
  XTabela:=DMPESSOA.TClienteCob;
  XCampo:='NOME';
  XTransaction:=DMPESSOA.TransacPessoa;
  XPkTabela:='COD_CLIENTECOB';
  XTab:=False;
  XView:=DMPESSOA.WClienteCob;
  XDescricao:= 'O Cliente';
  XSQLTABELA:='CLIENTECOB';
  XLiberaDados:=' WHERE ((vwclientecob.ativo<>0) or (vwclientecob.ativo is null))';
  XSQLVIEW:='VWCLIENTECOB';
  RGORDEM.ItemIndex:=1;
  XSQLREL:='WCLIENTECOB';
  LiberaDados;
  FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
end;

procedure TFClienteCob.BtnGravarClick(Sender: TObject);
begin
   If RBSimples.Checked=True Then
       DMPESSOA.TClienteCob.FieldByName('TIPOJUR').AsInteger:=1;
   If RBComposto.Checked=True Then
       DMPESSOA.TClienteCob.FieldByName('TIPOJUR').AsInteger:=2;
  inherited;
   LiberaDados;
end;

procedure TFClienteCob.BtnNovoClick(Sender: TObject);
begin
  inherited;
  //EFETUA CONTROLE DE ACESSO
  If ControlAccess('CADCLI', 'M')=False Then
  		Exit;
  RBSimples.Checked:=True;
  inherited;
end;

procedure TFClienteCob.BtnApagarClick(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('EXCLCLI', 'M')=False Then
  		Exit;
end;

procedure TFClienteCob.BtnConsultarClick(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADCLI', 'M')=False Then
  		Exit;
   inherited;
   If DMPESSOA.TClienteCob.FieldByName('TIPOJUR').AsInteger=1 Then
       RBSimples.Checked:=True;
   If DMPESSOA.TClienteCob.FieldByName('TIPOJUR').AsInteger=2 Then
       RBComposto.Checked:=True;
end;

procedure TFClienteCob.BitBtn1Click(Sender: TObject);
begin
  inherited;
    FMenu.TIPOAUX:=XView.FieldByName('COD_CLIENTECOB').AsString;
    FMenu.TIPOREL:='ATIVCLIENTECOB';
    AbrirForm(TFCliente, FCliente, 0);
end;

procedure TFClienteCob.Sinttico1Click(Sender: TObject);
begin
	FMenu.TIPOREL:='RELCLIENTECOB';
   XSQLREL:='VWCLIENTECOB';
   AbrirForm(TFRelpadraopes, FRelPadraopes, 0);   
//  inherited;


end;

end.
