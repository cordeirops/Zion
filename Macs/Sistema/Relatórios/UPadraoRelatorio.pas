unit UPadraoRelatorio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRodaPe, TFlatHintUnit, Buttons, jpeg, ExtCtrls, StdCtrls, FR_Class,
  FR_DSet, FR_DBSet, DrLabel;

type
  TFPadraoRelatorio = class(TFPadraoRodaPe)
    FSRel: TfrReport;
    FSDSRel: TfrDBDataSet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BtnImprimir: TBitBtn;
    GroupBox3: TGroupBox;
    BtnVisualizar: TBitBtn;
    GroupBox4: TGroupBox;
    BtnCancelar: TBitBtn;
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XTitulo:String;//armazena o título do relatório
  end;

var
  FPadraoRelatorio: TFPadraoRelatorio;

implementation

{$R *.DFM}

procedure TFPadraoRelatorio.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   close;
end;

end.
