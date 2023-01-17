unit UInfData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, cxLabel,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar;

type
  TFInfoData = class(TFPadrao)
    edData: TcxDateEdit;
    lbTituloMsg: TcxLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MaxDate:TDateTime;
    MinDate:TDateTime;
    Validar:Boolean;

    procedure setMessageData(msg:String; data,minimo,maximo:TDateTime; validacao:Boolean);
  end;

var
  FInfoData: TFInfoData;

implementation

uses AlxMessage;

{$R *.dfm}

procedure TFInfoData.setMessageData(msg:String; data,minimo,maximo:TDateTime;  validacao:Boolean);
Begin

  lbTituloMsg.Caption := msg;
  lbTituloMsg.Repaint;

  edData.Date := data;

  MaxDate := maximo;
  MinDate := minimo;

  Validar := validacao;


End;


procedure TFInfoData.BitBtn1Click(Sender: TObject);
begin
  inherited;

  // - 21/05/2009: verifica se foi informado uma data
  if edData.Date <= 0
  Then Begin
    Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Informe uma data válida!', '', 1, 1, False, 'a');
    Exit;
  End;

  If Validar
  Then Begin
    If edData.Date < MinDate
    Then Begin
      Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'A data informada é inferior a permitida!', '', 1, 1, False, 'a');
      Exit;
    End;

    If MaxDate > 0 Then Begin
      If edData.Date > MaxDate
      Then Begin
        Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'A data informada é superior a permitida!', '', 1, 1, False, 'a');
        Exit;
      End;
     End;
  End;

  Close;

  
end;

end.
