unit UPadraoRodaPe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, TFlatHintUnit, Buttons, StdCtrls, jpeg, ExtCtrls, OleCtrls,
  DrLabel;

type
  TFPadraoRodaPe = class(TFPadrao)
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPadraoRodaPe: TFPadraoRodaPe;

implementation

uses UMenu;

{$R *.DFM}

procedure TFPadraoRodaPe.FormActivate(Sender: TObject);
begin
  inherited;
//    LCAIXA.Caption:=FMenu.LCAIXA.Caption ;
//    LUSUARIO.Caption:=FMenu.LUSUARIO.Caption;
    //caso o login seja do senhor do sistema
{    If LUSUARIO.Caption='System Lord'
    Then Begin
        LUSUARIO.FONT.Color:=CLRED;
    End
    Else Begin
        LUSUARIO.FONT.Color:=clBlack;
    End;}
end;

end.
