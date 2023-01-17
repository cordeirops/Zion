unit UViewEntXSai;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, TFlatHintUnit, Buttons, StdCtrls, jpeg, ExtCtrls, DBCtrls,
  Grids, DBGrids;

type
  TFViewEntXSai = class(TFPadrao)
    Bevel1: TBevel;
    DBGrid2: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid6: TDBGrid;
    Label18: TLabel;
    Label16: TLabel;
    Label95: TLabel;
    LQtdEnt: TLabel;
    Label96: TLabel;
    LQtdSaida: TLabel;
    Label102: TLabel;
    LEstCalc: TLabel;
    Label97: TLabel;
    LTotComp: TLabel;
    Label99: TLabel;
    LTotVend: TLabel;
    Label98: TLabel;
    LTotComis: TLabel;
    Label101: TLabel;
    LTotLuc: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FViewEntXSai: TFViewEntXSai;

implementation

uses URelEstoque, UDMEstoque;

{$R *.DFM}

procedure TFViewEntXSai.FormActivate(Sender: TObject);
begin
  inherited;
   //PASSA VALORES PARA AS LABELS DE INFORMAÇÕES
	LQtdEnt.Caption:=FloatToStr(QtdEntradas);
   LQtdSaida.Caption:=FloatToStr(QtdSaidas);
   LEstCalc.Caption:=FloatToStr(DMESTOQUE.TEstoque.FieldByName('ESTINI').AsCurrency+QtdEntradas-QtdSaidas);
	LTotComp.Caption:=FormatFloat('####,##0.00', TOTCOMP);
	LTotVend.Caption:=FormatFloat('####,##0.00', TOTVEND);
	LTotComis.Caption:=FormatFloat('####,##0.00', TotComi);
	LTotLuc.Caption:=FormatFloat('####,##0.00', TotLuc);

end;

end.
