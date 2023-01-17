unit UCartaCorrecaoEletronica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFCartaCorrecaoeletronica = class(TForm)
    BtnEnviar: TButton;
    BtnCancelar: TButton;
    MTexto: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    EdNumeroNota: TEdit;
    EdNumeroCarta: TEdit;
    Label4: TLabel;
    EdDtNota: TEdit;
    Label5: TLabel;
    EdChaveNota: TEdit;
    Shape4: TShape;
    EdPessoa: TEdit;
    Memo1: TMemo;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BtnEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FCartaCorrecaoeletronica: TFCartaCorrecaoeletronica;



implementation

uses UPadrao, UMzrNfe, UMenu;

{$R *.dfm}

procedure TFCartaCorrecaoeletronica.BtnCancelarClick(Sender: TObject);
begin
	Close;
end;

procedure TFCartaCorrecaoeletronica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
	Try
    Action := caFree;
    FCartaCorrecaoeletronica := nil;
	Except
   End;
end;

procedure TFCartaCorrecaoeletronica.FormActivate(Sender: TObject);
begin
	Caption:='Carta de Correção';
   MTexto.SetFocus;
end;

procedure TFCartaCorrecaoeletronica.BtnEnviarClick(Sender: TObject);
begin
	//Function TFMzrNfe.SetInFiscal(NomePeriodo: String; CodigoPedido: Integer; CodigoDestinatario: Integer; tipopedido: String; tipoacao: String; tipoemissao: Integer; Cfop: String; NatOperacao: String; FormPagamento: String; NumFiscal: Integer; DtEmissao: TDate; CodigoIbge: String; Municipio: String; Uf: String; BaseIcms, VlrIcm, VlrIpi, BaseIcmsSt, VlrIcmsSt, VlrProduto, VlrFrete, VlrSeguro, Desconto, VlrOutros, VlrNotaFiscal: Real): Boolean;
   If Length(MTexto.Text)<15
   Then Begin
		MessageDlg('A Carta precisa ter mais de 15 caracteres.', mtWarning, [mbOK], 0);
       Exit;
   End;
   FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
   FMzrNfe.XNfeTextoCartaCorrecaoEletronica:=MTexto.text;
   If FMenu.XCCe_TipoGerador='PEDV' Then
   	FMzrNfe.SetInFiscal('', FMenu.XCCe_Cod_pedido, StrToInt(EdNumeroCarta.Text), 'PEDV', 'CCE', 1, '', '', '', Strtoint(EdNumeroNota.text), StrToDate(EdDtNota.text), EdChaveNota.Text, '', '', 0, 0, 0, 0, 0, 0, 0,0 , 0, 0, 0, 0);
   If FMenu.XCCe_TipoGerador='COMPRA' Then
   	FMzrNfe.SetInFiscal('', FMenu.XCCe_Cod_pedido, StrToInt(EdNumeroCarta.Text), 'PEDC', 'CCE', 1, '', '', '', Strtoint(EdNumeroNota.text), StrToDate(EdDtNota.text), EdChaveNota.Text, '', '', 0, 0, 0, 0, 0, 0, 0,0 , 0, 0, 0, 0);
   If FMenu.XCCe_TipoGerador='ORDEM' Then
   	FMzrNfe.SetInFiscal('', FMenu.XCCe_Cod_pedido, StrToInt(EdNumeroCarta.Text), 'ORDEM', 'CCE', 1, '', '', '', Strtoint(EdNumeroNota.text), StrToDate(EdDtNota.text), EdChaveNota.Text, '', '', 0, 0, 0, 0, 0, 0, 0,0 , 0, 0, 0, 0);

   FMzrNfe.ShowModal;
   Close;
end;

end.
