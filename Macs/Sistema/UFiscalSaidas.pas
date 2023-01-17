unit UFiscalSaidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoFiscal, Grids, DBGrids, StdCtrls, ComCtrls, Mask,
  ColorMaskEdit, Buttons, EditFloat, ColorEditFloat, DrLabel, jpeg,
  ExtCtrls, FashionPanel, frxClass, TFlatComboBoxUnit, TFlatEditUnit,
  TFlatButtonUnit, TFlatPanelUnit;

type
  TFFiscalSaidas = class(TFPadraoFiscal)
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFiscalSaidas: TFFiscalSaidas;

implementation

uses UMenu, UPadrao, UDMCaixa, UDMSaida;

{$R *.dfm}

procedure TFFiscalSaidas.FormActivate(Sender: TObject);
begin
   FMenu.XTipoFiscal := 'PEDV';
   
	Caption:='Nota Fiscal de Saída (O.S.)';
	Caption:='Nota Fiscal de Saída em PDV';
   If FMenu.XRemessaGarantia=True Then
       Caption:='Nota Fiscal de Remessa para garantia';
   If FMenu.XSimplesRemessa=True Then
       Caption:='Nota Fiscal de Simples Remessa';
   If FMenu.XDevolucao=True Then
       Caption:='Nota Fiscal de Devolução';
   If FMenu.XOutrosFisc=True Then
       Caption:='Nota Fiscal de Outras Operações';
   If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF')then
		BitBtn3.Caption:='F5 - Emitir ECF';
   If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
   	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
		BitBtn3.Caption:='F5 - Enviar NFe';
   If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NF')then
		BitBtn3.Caption:='F5 - Imprimir NF';
   If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
   	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
		BitBtn3.Caption:='F5 - Enviar NFe';
   if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') then
		BitBtn3.Caption:='F5 - Enviar NFCe';

   inherited;

end;

procedure TFFiscalSaidas.FormCreate(Sender: TObject);
begin
  inherited;
   FMenu.XTIPOBOLTO:='PEDV';
end;

end.
