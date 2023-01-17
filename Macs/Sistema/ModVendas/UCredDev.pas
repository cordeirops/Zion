unit UCredDev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons,
  TFlatEditUnit, Alxor32, UCadPadrao, UDMSaida, UMenu, UDMEntrada;

type
  TFCredDev = class(TForm)
    PCredDev: TPanel;
    DbDev: TDBGrid;
    BtnOk: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure DbDevDblClick(Sender: TObject);
    procedure DbDevDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCredDev: TFCredDev;

implementation

{$R *.dfm}



procedure TFCredDev.FormActivate(Sender: TObject);
begin
  DMSAIDA.TAlx.Close;
  DMSAIDA.TAlx.SQL.Clear;
  DMSAIDA.TAlx.SQL.Add(' SELECT VWPEDV.NOMECLI, VWPEDV.VALOR, VWPEDV.DTPEDVEN, VWPEDV.NUMFISCAL, VWPEDV.NUMPED, VWPEDV.COD_PEDVENDA, VWPEDV.MARK');
  DMSAIDA.TAlx.SQL.Add(' FROM VWPEDV');
  DMSAIDA.TAlx.SQL.Add(' LEFT JOIN VWCLIENTE ON VWPEDV.COD_CLIENTE = VWCLIENTE.COD_CLIENTE');
  DMSAIDA.TAlx.SQL.Add(' LEFT JOIN VWFORNEC ON VWCLIENTE.COD_PESSOA = VWFORNEC.COD_PESSOA');
  DMSAIDA.TAlx.SQL.Add(' LEFT JOIN PEDVENDA ON VWPEDV.COD_PEDVENDA = PEDVENDA.COD_PEDVENDA');
  DMSAIDA.TAlx.SQL.Add(' WHERE (VWFORNEC.COD_FORNEC ='+FMenu.XCodCliente+') AND (VWPEDV.TIPO = ''DEV'') AND ((PEDVENDA.COD_FATURA = '' '') OR (PEDVENDA.COD_FATURA IS NULL))');
  DMSAIDA.TAlx.SQL.Add(' ORDER BY VWPEDV.NUMPED');
  DMSAIDA.TAlx.Open;
end;

procedure TFCredDev.DbDevDblClick(Sender: TObject);
begin
   If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', DMSAIDA.TAlx.FieldByName('COD_PEDVENDA').AsString, '')
   Then Begin
       DMSAIDA.TPedV.Edit;
       If DMSAIDA.TPedV.FieldByName('MARK').AsString='X' Then
           DMSAIDA.TPedV.FieldByName('MARK').AsString:=''
       Else
           DMSAIDA.TPedV.FieldByName('MARK').AsString:='X';
       DMSAIDA.TPedV.Post;
       DMSAIDA.IBT.CommitRetaining;
   End;
   FormActivate(Sender); 
end;

procedure TFCredDev.DbDevDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If DMSAIDA.TAlx.FieldByName('MARK').AsString='X'  Then
      DbDev.Canvas.Brush.Color := clMaroon;

  DbDev.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFCredDev.BtnOkClick(Sender: TObject);
begin
    Close;
end;

end.
