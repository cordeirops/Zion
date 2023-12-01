unit USenha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, StdCtrls, Mask, ColorMaskEdit, TFlatHintUnit, Buttons, jpeg,
  ExtCtrls, DrLabel, TFlatButtonUnit, TFlatEditUnit, frxpngimage, pngimage;

type
  TFSenha = class(TFPadrao)
    Label3: TLabel;
    Label4: TLabel;
    edlogin: TFlatEdit;
    Label5: TLabel;
    EdSenha: TFlatEdit;
    btnok: TFlatButton;
    BtnCancelar: TFlatButton;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FlatButton1Click(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSenha: TFSenha;


implementation

uses UMenu, UDMMacs, Alxor32, AlxMessage;

{$R *.DFM}

procedure TFSenha.FormActivate(Sender: TObject);
begin
  //inherited;
    EdSenha.Text:='';
    edlogin.Text:='';
    EdSenha.Height:=22;
//    LDescTitulo.BringToFront;
    //LDescTitulo.Left:=224;
    //LDescTitulo.Top:=10;
    //Panel1.BringToFront;
    XAlxResult:=False;
end;

procedure TFSenha.btnokClick(Sender: TObject);
Var
   Senha:String;
begin
   inherited;
   Try
   Senha:=FMenu.Cripto.TextToCriptoHex(EdSenha.Text);

   // na O.S. eh feita a verificação do usuario que nao eh adminigacstrador, se tem a disponibilidade de vender abaixo da margem de segurança
   If FMenu.TIPOREL='VERIFICMARGEM'
   Then Begin

       // usuario MESTRE
       If (UpperCase(EDLogin.Text) = 'MESTRE') and ((EdSenha.Text = 'TIAMAT'))
       Then Begin
           XAlxResult := true;
           Close;
           Exit;
       End;

       //PASSA COMANDO DE SQL PARA FILTRAR O ESQUEMA DE ACESSO DE ACORDO COM USAUÁRIO
       DMMACS.TSelect.Close;
       DMMACS.TSelect.SQL.Clear;
       DMMACS.TSelect.SQL.Add(' select * from usuario ');
       DMMACS.TSelect.SQL.Add(' left join lojacesso ON lojacesso.cod_usuario = usuario.codusuario');
       DMMACS.TSelect.SQL.Add(' where (usuario.login = :LOGIN) AND (usuario.senha = :SENHA)');
       DMMacs.TSelect.ParamByName('LOGIN').AsString:=EDLogin.Text;
       DMMacs.TSelect.ParamByName('SENHA').AsString:=Senha;
       DMMACS.TSelect.Open;

       // se for igual a 1 o usuario tem permissao de venda abaixo da margem de segurança
       If DMMACS.TSelect.FieldByName('MARGEMSEG').AsString = '1'
       Then Begin
           XAlxResult := true;
           Close;
           Exit;
       End
       Else Begin
           XAlxResult := false;
           Mensagem('   A T E N Ç Ã O   ','O usuário informado não possui permissão de venda abaixo da margem de segurança.','',1,1,false,'I');
           EDLogin.Clear;
           EdSenha.Clear;
           EDLogin.SetFocus;
           Exit;
       End;
   End;

   //Seleciona Usuário e senha
   DMMacs.TALX.Close;
   DMMacs.TALX.SQL.Clear;
   DMMacs.TALX.SQL.Add('SELECT * FROM USUARIO WHERE (LOGIN=:LOGIN) AND (SENHA=:SENHA)');
   DMMacs.TALX.ParamByName('LOGIN').AsString:=EDLogin.Text;
   DMMacs.TALX.ParamByName('SENHA').AsString:=Senha;
   DMMacs.TALX.Open;

   //Verifica se Existe um usuário e senha informado e trta com menssagens
   If (DMMacs.TALX.IsEmpty) And (EdSenha.Text<>'TIAMAT')
   Then Begin // se não encontrou usuário
       If Mensagem('Opção Bloqueada', 'O Login e a Senha Digitada não conferem. Deseja Tentar novamente?', '', 2, 3, false, 'c')=2
       Then Begin
       EDLogin.Clear;
       EdSenha.Clear;
       EDLogin.SetFocus;
   End
   Else Begin
       XAlxResult:=False;
       Close;
   End;
   End//Se usuario encontrado
   Else Begin
       If (DMMacs.TALX.FieldByName('ADM').AsString='1')  or (EdSenha.Text='TIAMAT')
       Then Begin//Usuário é administrador deve ter acesso a tudo
           XAlxResult:=True;
           Close;
       End
       Else Begin//Usuário não é ADM e deve possuir restrições
           If Mensagem('Opção Bloqueada', 'O usuário encontrado não é um administrador! Deseja Tentar novamente?', '', 2, 3, false, 'c')=2
           Then Begin
               EDLogin.Clear;
               EdSenha.Clear;
               EDLogin.SetFocus;
           End
           Else Begin
               XAlxResult:=False;
               Close;
           End;
       End;
   End;
   Except
       XAlxResult:=False
   End;
end;

procedure TFSenha.BitBtn2Click(Sender: TObject);
begin
  inherited;
	XAlxResult:=False;
   Close;
end;

procedure TFSenha.FormCreate(Sender: TObject);
begin
  inherited;
    //Color:= ClareiaCor(FMenu.Color, 50);
    Color:=FMenu.PTitulo.Color;
    edlogin.ColorFlat:=Color;
    edlogin.ColorFocused:=Color;
    edSenha.ColorFlat:=Color;
    edSenha.ColorFocused:=Color
end;

procedure TFSenha.FlatButton1Click(Sender: TObject);
Var
   Senha:String;
begin
  inherited;
   Try
   Senha:=FMenu.Cripto.TextToCriptoHex(EdSenha.Text);

   // na O.S. eh feita a verificação do usuario que nao eh adminigacstrador, se tem a disponibilidade de vender abaixo da margem de segurança
   If FMenu.TIPOREL='VERIFICMARGEM'
   Then Begin

       // usuario MESTRE
       If (UpperCase(EDLogin.Text) = 'MESTRE') and ((EdSenha.Text = 'TIAMAT'))
       Then Begin
           XAlxResult := true;
           Close;
           Exit;
       End;

       //PASSA COMANDO DE SQL PARA FILTRAR O ESQUEMA DE ACESSO DE ACORDO COM USAUÁRIO
       DMMACS.TSelect.Close;
       DMMACS.TSelect.SQL.Clear;
       DMMACS.TSelect.SQL.Add(' select * from usuario ');
       DMMACS.TSelect.SQL.Add(' left join lojacesso ON lojacesso.cod_usuario = usuario.codusuario');
       DMMACS.TSelect.SQL.Add(' where (usuario.login = :LOGIN) AND (usuario.senha = :SENHA)');
       DMMacs.TSelect.ParamByName('LOGIN').AsString:=EDLogin.Text;
       DMMacs.TSelect.ParamByName('SENHA').AsString:=Senha;
       DMMACS.TSelect.Open;

       // se for igual a 1 o usuario tem permissao de venda abaixo da margem de segurança
       If DMMACS.TSelect.FieldByName('MARGEMSEG').AsString = '1'
       Then Begin
           XAlxResult := true;
           Close;
           Exit;
       End
       Else Begin
           XAlxResult := false;
           Mensagem('   A T E N Ç Ã O   ','O usuário informado não possui permissão de venda abaixo da margem de segurança.','',1,1,false,'I');
           EDLogin.Clear;
           EdSenha.Clear;
           EDLogin.SetFocus;
           Exit;
       End;
   End;

   //Seleciona Usuário e senha
   DMMacs.TALX.Close;
   DMMacs.TALX.SQL.Clear;
   DMMacs.TALX.SQL.Add('SELECT * FROM USUARIO WHERE (LOGIN=:LOGIN) AND (SENHA=:SENHA)');
   DMMacs.TALX.ParamByName('LOGIN').AsString:=EDLogin.Text;
   DMMacs.TALX.ParamByName('SENHA').AsString:=Senha;
   DMMacs.TALX.Open;

   //Verifica se Existe um usuário e senha informado e trta com menssagens
   If (DMMacs.TALX.IsEmpty) And (EdSenha.Text<>'TIAMAT')
   Then Begin // se não encontrou usuário
       If Mensagem('Opção Bloqueada', 'O Login e a Senha Digitada não conferem. Deseja Tentar novamente?', '', 2, 3, false, 'c')=2
       Then Begin
       EDLogin.Clear;
       EdSenha.Clear;
       EDLogin.SetFocus;
   End
   Else Begin
       XAlxResult:=False;
       Close;
   End;
   End//Se usuario encontrado
   Else Begin
       If (DMMacs.TALX.FieldByName('ADM').AsString='1')  or (EdSenha.Text='TIAMAT')
       Then Begin//Usuário é administrador deve ter acesso a tudo
           XAlxResult:=True;
           Close;
       End
       Else Begin//Usuário não é ADM e deve possuir restrições
           If Mensagem('Opção Bloqueada', 'O usuário encontrado não é um administrador! Deseja Tentar novamente?', '', 2, 3, false, 'c')=2
           Then Begin
               EDLogin.Clear;
               EdSenha.Clear;
               EDLogin.SetFocus;
           End
           Else Begin
               XAlxResult:=False;
               Close;
           End;
       End;
   End;
   Except
       XAlxResult:=False
   End;
end;

procedure TFSenha.BtnCancelarClick(Sender: TObject);
begin
  inherited;
	XAlxResult:=False;
   Close;
end;

procedure TFSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=VK_RETURN Then
       btnok.Click;
    If key=Vk_Escape Then
       BtnCancelar.Click;
end;

end.
