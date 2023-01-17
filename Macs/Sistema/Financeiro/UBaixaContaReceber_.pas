unit UBaixaContaReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoBaixarContas, TFlatHintUnit, Buttons, jpeg,
  ExtCtrls, StdCtrls, DBCtrls, DBColorComboBox, EditFloat, ColorEditFloat,
  UFrmBusca, Grids, DBGrids, DrLabel, cxLookAndFeelPainters, Mask,
  cxButtons, QRCtrls, QuickRpt, ColorMaskEdit;

type
  TFBaixaContaReceber = class(TFPadraoBaixaContas)
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBaixaContaReceber: TFBaixaContaReceber;

implementation

uses UDMFinanc, UDMConta, UCtaReceber, UMenu;

{$R *.DFM}

procedure TFBaixaContaReceber.BitBtn1Click(Sender: TObject);
begin
   //GRAVA HISTÓRICO
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('update parcelacr set parcelacr.historico = :HIST');
   DMCONTA.TAlx.SQL.Add('where parcelacr.cod_parcelacr = :PARC');
   DMCONTA.TAlx.ParamByName('HIST').AsString:=DBHISTORICO.Text;
   DMCONTA.TAlx.ParamByName('PARC').AsString:=DMCONTA.TParcCR.fieldByName('COD_PARCELACR').AsString;
   DMCONTA.TAlx.ExecSQL;
   DMCONTA.IBT.CommitRetaining;

  inherited;

end;

end.
