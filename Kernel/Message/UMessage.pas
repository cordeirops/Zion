unit UMessage;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, jpeg, OleCtrls, DrLabel, frxpngimage;

type
  TFMessage = class(TForm)
    MMenssagem: TMemo;
    IconErro: TImage;
    IconInformacao: TImage;
    IconAtencao: TImage;
    IconConfirmacao: TImage;
    BtnSim: TBitBtn;
    BtnNao: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnOk: TBitBtn;
    LComunic: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnSimClick(Sender: TObject);
    procedure BtnNaoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure PmensExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure WMNCHitTest(var M: TWMNCHitTest); message WM_NCHitTest;    
  end;

var
  FMessage: TFMessage;

implementation

uses UMenu, Alxor32;


{$R *.DFM}

procedure TFMessage.WMNCHitTest(var M: TWMNCHitTest);
begin
inherited;
if M.Result = htClient then {se o mouse foi clicado na form}
  M.Result := htCaption; {faz o Windows pensar que foi na barra de título}
end;


procedure TFMessage.FormCreate(Sender: TObject);
begin
    Caption:=LComunic.Caption;
    Color:=FMenu.PTitulo.Color;
    MMenssagem.Color:=Color;
    BtnNao.tag:=0;
    BtnOk.tag:=0;
    BtnSim.tag:=0;
    BtnCancelar.tag:=0;
end;

procedure TFMessage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    BtnOk.Visible:=False;
    BtnSIM.Visible:=False;
    BtnNAO.Visible:=False;
    BtnCANCELAR.Visible:=False;
    FMessage.Tag:=0;
end;

procedure TFMessage.FormShow(Sender: TObject);
begin
    Case tag of
        1: Btnok.Setfocus;
        2: BtnSIM.Setfocus;
        3: BtnNAO.Setfocus;
        4: BtnCANCELAR.Setfocus;
    end;
end;

procedure TFMessage.BtnSimClick(Sender: TObject);
begin
    btnsim.tag:=1;
    close;
end;

procedure TFMessage.BtnNaoClick(Sender: TObject);
begin
    btnnao.tag:=1;
    close;
end;

procedure TFMessage.BtnCancelarClick(Sender: TObject);
begin
    btncancelar.tag:=1;
    close;
end;

procedure TFMessage.BtnOkClick(Sender: TObject);
begin
    btnok.tag:=1;
    close;
end;

procedure TFMessage.BtnFecharClick(Sender: TObject);
begin
    BtnCancelar.Click;
end;

procedure TFMessage.PmensExit(Sender: TObject);
begin
	Try
    Case tag of
        1: Btnok.Setfocus;
        2: BtnSIM.Setfocus;
        3: BtnNAO.Setfocus;
        4: BtnCANCELAR.Setfocus;
    end;
   Except
   End;
end;

end.

