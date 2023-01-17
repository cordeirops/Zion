unit UFiscalOrdem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoFiscal, Grids, DBGrids, ComCtrls, StdCtrls, Mask,
  ColorMaskEdit, Buttons, EditFloat, ColorEditFloat, FashionPanel, DrLabel,
  jpeg, ExtCtrls, frxClass, TFlatComboBoxUnit, TFlatEditUnit,
  TFlatButtonUnit, TFlatPanelUnit;

type
  TFFiscalOrdem = class(TFPadraoFiscal)
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFiscalOrdem: TFFiscalOrdem;

implementation

uses UDMCaixa, UMenu;

{$R *.dfm}

procedure TFFiscalOrdem.FormCreate(Sender: TObject);
begin
  inherited;
   If (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe')
   	OR (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFe-NFCe') then
		BitBtn3.Caption:='F5 - Enviar NFe';
   if (DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'NFCe') then
		BitBtn3.Caption:='F5 - Enviar NFCe';
end;

procedure TFFiscalOrdem.FormActivate(Sender: TObject);
begin
   FMenu.XTipoFiscal := 'ORDEM';
	Caption:='Nota Fiscal de Saída (O.S.)';
  inherited;   
end;

end.
