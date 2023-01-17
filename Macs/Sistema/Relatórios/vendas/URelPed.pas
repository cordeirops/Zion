unit URelPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  URelCtaPR, FR_DSet, FR_DBSet, FR_Class, TFlatHintUnit, ExtCtrls,
  UFrmBusca, StdCtrls, Mask, Buttons, jpeg, Grids, DBGrids;

type
  TFRelped = class(TFRelCtaPR)
    RGTIPOREL: TRadioGroup;
    procedure BtnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
                                                     
var
  FRelped: TFRelped;

implementation

uses UDMEstoque, UMenu;

{$R *.DFM}

procedure TFRelped.BtnVisualizarClick(Sender: TObject);
begin
	If FMenu.TIPOREL='RELPEDCLI'
   Then Begin//Relatórios de pedidos de venda
		If RGTIPOREL.ItemIndex=0 Then
	       FMenu.TIPOREL:='RELPEDSINTCLI'
	    Else
	       FMenu.TIPOREL:='RELPEDANALCLI';
   End;
	If FMenu.TIPOREL='RELPEDFOR'
   Then Begin//Relatórios de pedidos de compra
		If RGTIPOREL.ItemIndex=0 Then
	       FMenu.TIPOREL:='RELPEDSINTFOR'
	    Else
	       FMenu.TIPOREL:='RELPEDANALFOR';
	End;
   inherited;
   FSRel.ShowReport;

end;

end.
