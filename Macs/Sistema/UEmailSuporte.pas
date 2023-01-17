unit UEmailSuporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, DrLabel, jpeg, ShellAPI;

type
  TFEmailSuporte = class(TFPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LEmpresa: TLabel;
    LUsuario: TLabel;
    LTerminal: TLabel;
    BitBtn1: TBitBtn;
    MMensagem: TMemo;
    Label4: TLabel;
    LInternet: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Image3: TImage;
    Image4: TImage;
    Label7: TLabel;
    Label8: TLabel;
    CbMailResposta: TCheckBox;
    EdMailRetorno: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure EdMailRetornoEnter(Sender: TObject);
    procedure CbMailRespostaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEmailSuporte: TFEmailSuporte;

implementation

uses UDMMacs, UMenu, Alxor32, AlxMessage;

{$R *.dfm}

procedure TFEmailSuporte.FormActivate(Sender: TObject);
begin
  inherited;
   //Preenche cabeçalho
   LEmpresa.Caption:=DMMACS.TEmpresa.FieldByName('FANTASIA').AsString;
   LUsuario.Caption:=FMenu.EdUsuario.Text;
   LTerminal.Caption:=UserNamerede;
   //Verifica conexão de Internex
   If VerificaNet<>0
   Then Begin
       LInternet.Caption:='Conexão de Internet Ativa';
       LInternet.Font.Color:=clGreen;
   End
   Else Begin
       LInternet.Caption:='Conexão de Internet Desativada';
       LInternet.Font.Color:=clMaroon;
   End;
   EdMailRetorno.Visible:=False;
   CbMailResposta.Checked:=False;
   MMensagem.SetFocus;
end;

procedure TFEmailSuporte.BitBtn1Click(Sender: TObject);
begin
  inherited;
    try
       If VerificaNet<>0
       Then Begin
          If Mensagem('Confirmação do usuário', 'Deseja Enviar E-mail de suporte agora? ', '', 2, 3, False, 'c')=2
          Then Begin
               FMenu.IdSMTP1.Connect;
               FMenu.IdMessage1.Clear;
               FMenu.IdMessage1.From.Address := 'suporte@mzrsistemas.com'; // Email do remetente
               FMenu.IdMessage1.From.Name := 'Suporte: MZR Sistemas'; // Nome do remetente
               FMenu.IdMessage1.Subject := 'Solicitação de Suporte via e-mail'; // Assunto do email
               FMenu.IdMessage1.Recipients.Clear;
               FMenu.IdMessage1.Recipients.EMailAddresses := ('suporte@mzrsistemas.com'); // aqui você coloca o(s) destinatários(s)
               // Assunto da mensagem
               FMenu.IdMessage1.Body.Clear;
               FMenu.IdMessage1.ContentType := 'text/html'; // Texto em HTML
               FMenu.IdMessage1.Body.Add('Empresa: '+LEmpresa.Caption);
               FMenu.IdMessage1.Body.Add('Usuário: '+LUsuario.Caption);
               FMenu.IdMessage1.Body.Add('Terminal: ' + LTerminal.Caption);
               FMenu.IdMessage1.Body.Add('E-mail Resposta: ' + EdMailRetorno.Text);               
               FMenu.IdMessage1.Body.Add(#13);
               FMenu.IdMessage1.Body.Add('Mensagem:');
               FMenu.IdMessage1.Body.Add(MMensagem.Lines.Text);
               FMenu.IdSMTP1.Send(FMenu.IdMessage1);  // Envia o email com os dados
               FMenu.IdSMTP1.Disconnect;
               MessageDlg('E-MAIL ENVIADO!', mtWarning, [mbOK], 0);
          end;
       End
       Else Begin
           MessageDlg('SEM CONEXÃO COM INTERNET', mtWarning, [mbOK], 0);
       End;
    except
       MessageDlg('FALHA AO ENVIAR E-MAIL DE SUPORTE', mtError, [mbOK], 0);
    end;
    Close;
end;

procedure TFEmailSuporte.Image3Click(Sender: TObject);
begin
  inherited;
	shellexecute(handle, 'open', 'skype:mzrsistemas1?call', NiL, NiL, SW_SHOWNORMAL);
end;

procedure TFEmailSuporte.Image4Click(Sender: TObject);
begin
  inherited;
	shellexecute(handle, 'open', 'skype:mzrsistemas2?call', NiL, NiL, SW_SHOWNORMAL);
end;

procedure TFEmailSuporte.Image1Click(Sender: TObject);
begin
  inherited;
	shellexecute(handle, 'open', 'msnim:add?contact=mzr1@mzrsistemas.com', NiL, NiL, SW_SHOWNORMAL);
end;

procedure TFEmailSuporte.Image2Click(Sender: TObject);
begin
  inherited;
	shellexecute(handle, 'open', 'msnim:add?contact=mzr2@mzrsistemas.com', NiL, NiL, SW_SHOWNORMAL);
end;

procedure TFEmailSuporte.EdMailRetornoEnter(Sender: TObject);
begin
  inherited;
	If EdMailRetorno.Text='E-mail para resposta' Then
       EdMailRetorno.Text:='';
end;

procedure TFEmailSuporte.CbMailRespostaClick(Sender: TObject);
begin
  inherited;
	If CbMailResposta.Checked=True Then
       EdMailRetorno.Visible:=True
   Else
       EdMailRetorno.Visible:=False;
end;

end.
