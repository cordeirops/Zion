unit UNovidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, ExtCtrls, Buttons, ShellAPI;

type
  TFNovidades = class(TForm)
    PNovidades: TPanel;
    Shape1: TShape;
    ImgFundo: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ImgSite: TImage;
    wb: TWebBrowser;
    ImgTitulo: TImage;
    IconFechar: TImage;
    IconVoltar: TImage;
    POffLine: TPanel;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImgSiteClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label6Click(Sender: TObject);
    procedure ImgTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure IconFecharClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure IconVoltarClick(Sender: TObject);
    procedure wbDownloadBegin(Sender: TObject);
  private
    { Private declarations }
    procedure MovimentaObject(Sender:TObject;Button:TMouseButton;Shift:TShiftState;X,Y:Integer;Formulario:TForm);
    //Procedure Utilizada para ampliar e reposicionar formulario
    Procedure AmpliaSite;
    //Procedure Utilizada para minimizar e reposicionar formulario
    Procedure MinimizaSite;
  public
    { Public declarations }
    XConectaNet: Boolean;// Caso true conexão com internet Ativa
  end;

var
  FNovidades: TFNovidades;

implementation

uses UMenu, Alxor32;

{$R *.dfm}

//Procedure Utilizada para minimizar e reposicionar formulario
Procedure TFNovidades.MinimizaSite;
var
  Flags: OLEVariant;
Begin
	 Flags := 0;
    If XConectaNet=True
    Then Begin
         //Coenxão de internet ativa
		  POffLine.Visible:=False;
         WB.Navigate(WideString('www.mzrsistemas.com/novidades/portal.html' ), Flags, Flags, Flags, Flags);
         wb.BringToFront;
    End
    Else Begin
		  POffLine.Visible:=True;
         POffLine.BringToFront;
    End;
    Width:=281;
    Height:=537;
    PNovidades.Left:=0;
    PNovidades.Top:=0;
    PNovidades.Width:=281;
    PNovidades.Height:=537;
    wb.Width:=208;
    wb.Height:=174;
    wb.Top:=176;
    wb.Left:=37;
    IconFechar.Left:=253;
    Top:=Screen.Height-Height-68;
    left:=Screen.Width-Width-5;
    IconFechar.BringToFront;
    ImgFundo.Visible:=True;
    Refresh;
    Repaint;
End;
//Procedure Utilizada para ampliar e reposicionar formulario
Procedure TFNovidades.AmpliaSite;
var
  Flags: OLEVariant;
Begin
	 If FMenu.TIPOAUX='ABRENOTICIA'
    Then Begin
        FMenu.TIPOAUX:='';
        Flags := 0;
        If XConectaNet=True
        Then Begin
             //Coenxão de internet ativa
             POffLine.Visible:=False;
             WB.Navigate(WideString(FMenu.TIPOREL), Flags, Flags, Flags, Flags);
             wb.BringToFront;
        End
        Else Begin
             POffLine.Visible:=True;
             POffLine.BringToFront;
        End;
    End;
    Width:=704;
    Height:=537;
    PNovidades.Left:=0;
    PNovidades.Top:=0;
    PNovidades.Width:=704;
    PNovidades.Height:=537;
    wb.Width:=704;
    wb.Height:= Height-27;
    wb.Top:=27;
    wb.Left:=0;
    IconFechar.Left:=650;
    Top:=Screen.Height-Height-68;
    left:=Screen.Width-Width-5;
    IconFechar.BringToFront;
    ImgFundo.Visible:=False;
    Refresh;    
    Repaint;
End;
//Procedure para reposicionar a tela
procedure TFNovidades.MovimentaObject(Sender:TObject;Button:TMouseButton;Shift:TShiftState;X,Y:Integer;Formulario:TForm);
var ObjectPos,MousePosMov:TPoint;Pt:TPoint;fHandle:HWND;
begin
  GetCursorPos(Pt);
  ObjectPos.X:=Left;
  ObjectPos.Y:=Top;
  if(Sender is TForm)then
    fHandle:=TWinControl(Sender).Handle
  else
    fHandle:=TWinControl(Sender).Parent.Handle;
  while DragDetect(fHandle,ObjectPos) do
  begin
    GetCursorPos(MousePosMov);
    Left:=MousePosMov.X-X-3;
    Top:=MousePosMov.Y-Y-3;
    Application.ProcessMessages;
  end;
end;

procedure TFNovidades.FormActivate(Sender: TObject);
begin
   //Verifica conexão com internet
  	If VerificaNet<>0 Then
       XConectaNet:=True
   Else
       XConectaNet:=False;

   Caption:='Portal de aproximação com o Cliente';
   If FMenu.TIPOAUX='ABRENOTICIA' Then
       AmpliaSite
   Else
   	MinimizaSite;
   POffLine.BringToFront;
   IconFechar.BringToFront;
end;

procedure TFNovidades.FormCreate(Sender: TObject);
begin
{	Try
		Brush.Style:=bsClear;
       Repaint;
	Except
   End;}
   //wb.Align:=alClient;
end;

procedure TFNovidades.ImgSiteClick(Sender: TObject);
begin
	shellexecute(handle, 'open', 'http://www.mzrsistemas.com', NiL, NiL, SW_SHOWNORMAL);
end;

procedure TFNovidades.Label3Click(Sender: TObject);
begin
	If XConectaNet=True
   Then Begin

   End;
end;

procedure TFNovidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	If Key=Vk_Escape Then
   	Close;
   If Key=VK_F5
   Then Begin
       wb.Refresh2;
   End;
end;

procedure TFNovidades.Label6Click(Sender: TObject);
begin
	Close;
end;

procedure TFNovidades.ImgTituloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	//Movimenta a tela
	MovimentaObject(sender,button,shift,x,y, FNovidades);
end;

procedure TFNovidades.IconFecharClick(Sender: TObject);
begin
	Close;
end;

procedure TFNovidades.Button2Click(Sender: TObject);
begin
   MinimizaSite;
end;

procedure TFNovidades.IconVoltarClick(Sender: TObject);
begin
   MinimizaSite;
end;

procedure TFNovidades.wbDownloadBegin(Sender: TObject);
begin
   If wb.LocationURL='http://www.mzrsistemas.com/novidades/portal.html' Then
		AmpliaSite;//Abrir Site Complementar
end;

end.


