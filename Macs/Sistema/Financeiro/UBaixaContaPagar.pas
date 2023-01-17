unit UBaixaContaPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoBaixarContas, TFlatHintUnit, StdCtrls, Buttons,
  jpeg, ExtCtrls, DBCtrls, DBColorComboBox, EditFloat, ColorEditFloat,
  UFrmBusca, Grids, DBGrids, DrLabel, cxLookAndFeelPainters, Mask,
  cxButtons, QRCtrls, QuickRpt, ColorMaskEdit;

type
  TFBaixaContaPagar = class(TFPadraoBaixaContas)
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBaixaContaPagar: TFBaixaContaPagar;

implementation

uses UDMFinanc, UDMConta, UDmBanco;

{$R *.DFM}

procedure TFBaixaContaPagar.BitBtn1Click(Sender: TObject);
begin
     //GRAVA HISTÓRICO
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('update parcelacp set parcelacp.historico = :HIST, parcelacp.estru = :ESTRU');
   DMCONTA.TAlx.SQL.Add('where parcelacp.cod_parcelacp = :PARC');
   DMCONTA.TAlx.ParamByName('HIST').AsString:=DBHISTORICO.Text;
   DMCONTA.TAlx.ParamByName('ESTRU').AsString:='0';
   DMCONTA.TAlx.ParamByName('PARC').AsString:=DMCONTA.TParcCP.fieldByName('COD_PARCELACP').AsString;
   DMCONTA.TAlx.ExecSQL;
   DMCONTA.IBT.CommitRetaining;
  inherited;

end;

procedure TFBaixaContaPagar.FormActivate(Sender: TObject);
begin
  inherited;
   Caption:='Baixa de Contas a Pagar';  
	DBHISTORICO.DataSource:=DMCONTA.DParcCP;
   DBHISTORICO.DataField:='HISTORICO';
end;

end.
