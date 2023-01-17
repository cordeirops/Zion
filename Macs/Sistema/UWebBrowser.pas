unit UWebBrowser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, OleCtrls,
  SHDocVw, cxControls, cxContainer, cxEdit, cxTextEdit, ComCtrls;

type
  TFWebBrowser = class(TFPadrao)
    PPrincipal: TPanel;
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    btnPaginaInicial: TBitBtn;
    btnIr: TBitBtn;
    btnVoltar: TBitBtn;
    btnAtualizar: TBitBtn;
    edLinkWebBrownser: TcxTextEdit;
    btnPrint: TBitBtn;
    ProgressBar1: TProgressBar;
    Panel2: TPanel;
    lbStatus: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnPaginaInicialClick(Sender: TObject);
    procedure btnIrClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure edLinkWebBrownserKeyPress(Sender: TObject; var Key: Char);
    procedure btnPrintClick(Sender: TObject);
    procedure WebBrowser1ProgressChange(Sender: TObject; Progress,
      ProgressMax: Integer);
    procedure WebBrowser1CommandStateChange(Sender: TObject;
      Command: Integer; Enable: WordBool);
    procedure WebBrowser1BeforeNavigate2(Sender: TObject;
      const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
    procedure WebBrowser1TitleChange(Sender: TObject;
      const Text: WideString);
    procedure WebBrowser1StatusTextChange(Sender: TObject;
      const Text: WideString);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setURLWebBrowser(link:String);
  end;

var
  FWebBrowser: TFWebBrowser;

implementation

uses ULoginCE, UMenu;

{$R *.dfm}

procedure TFWebBrowser.setURLWebBrowser(link:String);
var
  Flags: OLEVariant;
begin
  Flags := 0;
  WebBrowser1.Navigate(WideString(link), Flags, Flags, Flags, Flags);
end;

procedure TFWebBrowser.FormActivate(Sender: TObject);
begin
  inherited;
  If FMenu.AbrirBrowser
  Then Begin
    edLinkWebBrownser.Text := FMenu.ArquivoBrowser;
    setURLWebBrowser(FMenu.ArquivoBrowser);
  End;
end;

procedure TFWebBrowser.btnPaginaInicialClick(Sender: TObject);
begin
  inherited;
  setURLWebBrowser('http://www.mzrsistemas.com');
end;

procedure TFWebBrowser.btnIrClick(Sender: TObject);
begin
  inherited;
  setURLWebBrowser(edLinkWebBrownser.Text);
end;

procedure TFWebBrowser.btnAtualizarClick(Sender: TObject);
begin
  inherited;
  WebBrowser1.Refresh;
end;

procedure TFWebBrowser.btnVoltarClick(Sender: TObject);
begin
  inherited;
  Try
    WebBrowser1.GoBack;
    edLinkWebBrownser.Text := WebBrowser1.LocationURL;
  Except
  End;
end;

procedure TFWebBrowser.edLinkWebBrownserKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If Key = #13
  Then Begin
    btnIr.Click;
  End;
end;

procedure TFWebBrowser.btnPrintClick(Sender: TObject);
var
  vIn, vOut: OleVariant;

begin

  WebBrowser1.ControlInterface.ExecWB(OLECMDID_PRINT,
    OLECMDEXECOPT_PROMPTUSER, vIn, vOut) ;

end;

procedure TFWebBrowser.WebBrowser1ProgressChange(Sender: TObject; Progress,
  ProgressMax: Integer);
begin
    {Ele faz um rotina para saber se o valor Maximo do
    Progressbar é maior que 1 e o valor minimo tambem
    se for, então ele faz a rotina}
    If (Progress>=1) and (ProgressMax>1)
    then begin
        //Ele tira uma valor percentual para colocar
        //no Progressbar
        ProgressBar1.Position := Round((Progress * 100)Div ProgressMax);
        ProgressBar1.Visible := True;
    end
    else begin
        ProgressBar1.Position := 1;
        ProgressBar1.Visible := False;
    end;

end;

procedure TFWebBrowser.WebBrowser1CommandStateChange(Sender: TObject;
  Command: Integer; Enable: WordBool);
begin
  case Command of
    CSC_NAVIGATEBACK: begin
    //Ativa e Desativa Automaticamente o Botão Voltar,
    //Caso tenha alguma página para voltar
    btnVoltar.Enabled := Enable;
    End;
    end;
end;

procedure TFWebBrowser.WebBrowser1BeforeNavigate2(Sender: TObject;
  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
begin
  inherited;
  edLinkWebBrownser.Text := URL;
end;

procedure TFWebBrowser.WebBrowser1TitleChange(Sender: TObject;
  const Text: WideString);
begin
  inherited;
  LDescTitulo.Caption := text + ' - ORION';
  WebBrowser1.ShowHint := True;
  WebBrowser1.Hint := text;
end;

procedure TFWebBrowser.WebBrowser1StatusTextChange(Sender: TObject;
  const Text: WideString);
begin
  lbStatus.Caption := Text;
  lbStatus.Repaint;
end;

end.


