unit UPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, StdCtrls, Buttons, TFlatHintUnit, DBCtrls, OleCtrls,
  DrLabel;

type
  TFPadrao = class(TForm)
    PComunica: TPanel;
    procedure BtnFechaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    //Procedure de simulação de pressionamento do mouse, usado para arrastar a tela
    procedure WMNCHitTest(var M: TWMNCHitTest); message WM_NCHitTest;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }
  public
    { Public declarations }
	 XCODPKMESTRE: Integer; // Código da Pk Principal
    XTipoSelecao: String; //Variavel de controle para aparecer o botão de selcionar
    Procedure ExecRun(Texto:String);//Procedure que faz executar a corrida da barrinha em pcomunica
  end;

var
  FPadrao: TFPadrao;


implementation

uses AlxMessage, ULogoff, UMenu, Alxor32, ULogoff1;

Procedure TFPadrao.ExecRun(Texto:String);//Procedure que faz executar a corrida da barrinha em pcomunica
Begin
   PComunica.Left:=Trunc((Width/2)-(PComunica.Width/2));
   PComunica.Visible:=True;
   PComunica.Caption:=Texto;
   PComunica.BringToFront;
   PComunica.Refresh;
End;
procedure TFPadrao.WMNCHitTest(var M: TWMNCHitTest);
begin
inherited;
//	Try
//		if M.Result = HTClient then {se o mouse foi clicado na form}
//			M.Result := htCaption; {faz o Windows pensar que foi na barra de título}
//	Except
//   End;}
end;


{$R *.DFM}

procedure TFPadrao.BtnFechaClick(Sender: TObject);
begin
	Try
		Close;
	Except
   End;
end;

procedure TFPadrao.FormCreate(Sender: TObject);
begin
{	Try
		Brush.Style:=bsClear;
       Repaint;
	Except
   End;}
end;

procedure TFPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    If Key=VK_F12
    Then Begin
        If Mensagem('Logoff de Usuário', 'Tem certeza que deseja efetuar logoff de ' +FMenu.EdUsuario.Text, '', 2, 3, false, 'c')=2 Then
            AbrirForm(TFLogoff1, FLogoff1, 1);
    End;
end;

procedure TFPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Try
    Action := caFree;
    FPadrao:=nil;
	Except
   End;
end;

end.
