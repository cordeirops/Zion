unit ULancSai;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ULancEstPadrao, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls,
  EditFloat, ColorEditFloat, ColorMaskEdit, Menus, DrLabel, AppEvnts;

type
  TFLancSai = class(TFLancEstPadrao)
    procedure FormActivate(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLancSai: TFLancSai;

implementation

uses UDMEstoque, UDMSaida, UMenu;

{$R *.DFM}

procedure TFLancSai.FormActivate(Sender: TObject);
begin
	inherited;
	 Caption:='Saída de Quantidade em Estoque (correção)';     
  	XTabela:=DMSAIDA.TLancSai;
  	XCampo:= 'NUMNOTA';
  	XPkTabela := 'COD_LANCSAI';
   XTransaction :=DMSAIDA.IBT;
   XTab := False;
   XDescricao := 'O Lançamento de Saída ';
   XSQLTABELA := 'LANCSAI';
   XView:=DMSAIDA.WLancSai;
   XSQLVIEW:='VWLANCSAI';
   XLiberaDados:=' Where COD_LOJA = '+FMenu.LCODLOJA.Caption+' Order by DT_LANCAMENTO  DESCENDING, NUMNOTA DESCENDING';
   LiberaDados;
   //seta dbs
   DBPRIMEIRO.DataField:='QUANTIDADE';
   DBPRIMEIRO.DataSource:=DMSAIDA.DLancSai;
   DBDESC.DataField:='NUMNOTA';
   DBDESC.DataSource:=DMSAIDA.DLancSai;
   DBColorEdit1.DataField:='DT_ESTOQUE';
   DBColorEdit1.DataSource:=DMSAIDA.DLancSai;
   DBColorEdit3.DataField:='DT_LANCAMENTO';
   DBColorEdit3.DataSource:=DMSAIDA.DLancSai;
   DBColorEdit2.DataField:='MOTIVO';
   DBColorEdit2.DataSource:=DMSAIDA.DLancSai;

end;

procedure TFLancSai.BtnGravarClick(Sender: TObject);
begin
  inherited;
	LiberaDados;
end;

end.
