unit UNumeroNfse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FR_DSet, FR_DBSet, FR_Class;

type
  TFNumeroNfse = class(TForm)
    edNumeroNfse: TEdit;
    Label1: TLabel;
    btAcao: TButton;
    FRNfse: TfrReport;
    FRDSNfse: TfrDBDataSet;
    procedure btAcaoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edNumeroNfseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNumeroNfse: TFNumeroNfse;

implementation

uses UDmServ, UMzrNFSe, UDMEstoque, UDMMacs, AlxMessage;

{$R *.dfm}

procedure TFNumeroNfse.btAcaoClick(Sender: TObject);
begin
	if btAcao.Caption = 'Cancelar Nfse' then
   begin
     if FMzrNFSe.cancelarNFSe(edNumeroNfse.Text) then
        FNumeroNfse.Close;
   end;

	if btAcao.Caption = 'Consultar Nfse' then
   begin
     if FMzrNFSe.ConsultaNfse(edNumeroNfse.Text) then
     begin
		Mensagem('INFORMAÇÃO', 'A Nfse está ativa no servidor', '', 1, 1, false, 'i');
       Close;
     end
     else
     begin
  		Mensagem('INFORMAÇÃO', 'Número de Nfse inexistente na base de dados para o prestador de serviço pesquisado', '', 1, 1, false, 'i');
   	FormActivate(sender);
     end;
   end;
end;

procedure TFNumeroNfse.FormActivate(Sender: TObject);
begin
	btAcao.Visible := true;
	edNumeroNfse.SetFocus;
   edNumeroNfse.Text := '';
end;

procedure TFNumeroNfse.edNumeroNfseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If Key = vk_return then
   	btAcaoClick(sender);
end;

end.
