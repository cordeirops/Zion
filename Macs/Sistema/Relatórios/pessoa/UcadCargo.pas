unit UcadCargo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls, DrLabel;

type
  TFCadCargo = class(TFCadPadraoDesc)
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCargo: TFCadCargo;

implementation

uses AlxMessage, Alxor32, UDMPessoa;

{$R *.DFM}

procedure TFCadCargo.FormActivate(Sender: TObject);
begin
  inherited;
    XTabela:=DMPessoa.TCargo;
    XCampo:='DESCRICAO';
    XPkTabela:='COD_CARGO';
    XTransaction:=DMPessoa.TransacPessoa;
    XTab:=True;
    XDescricao:='a Descrição';
    XSQLTABELA:='CARGO';
    XLiberaDados:='';
end;

procedure TFCadCargo.BtnNovoClick(Sender: TObject);
begin
  inherited;
    DBDESC.SetFocus;
end;

end.
