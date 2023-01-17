unit UCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, TFlatHintUnit, DBCtrls, Buttons, jpeg, ExtCtrls,
  StdCtrls, TFlatEditUnit, Grids, DBGrids, Mask, DBColorEdit,
  TFlatTabControlUnit, ComCtrls, IBQuery, DB, Ibdatabase, DrLabel;

type
  TFCadPadrao = class(TFPadrao)
    PCadastro: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    PConsulta: TPanel;
    GroupBox1: TGroupBox;
    EdNome: TFlatEdit;
    BtnSelecionar: TBitBtn;
    Painel: TPanel;
    BtnNovo: TBitBtn;
    BtnApagar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnRelatorio: TBitBtn;
    BtnFiltrar: TBitBtn;
    DBGridCadastroPadrao: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PConsultaExit(Sender: TObject);
    procedure PCadastroExit(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    Procedure LiberaDados;
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdNomeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction); //procedure utilizada para liberar dados na visualização, mas com alguma restrição
  private
    { Private declarations }
  public
    { Public declarations }

    XControle :Boolean;
	//Estes valores devem ser passados no on show de cada formulario que inheritar o fcadpadrao
	XTabela: TIBQuery; //Nome da tabela padrão para se trabalhar no Cadastro Padrão
	XCampo: String; //Nome do campo Principal da tabela padrão para se trabalhar no Cadastro Padrão
   XPkTabela: String; //Nome da PK da tabela padrão para se trabalhar no Cadastro Padrão
   XTransaction: TIBTransaction; //Nome do Transaction padrão para se trabalhar no Cadastro Padrão
   XView: TIBQuery; // Nome da View Padrao
   XTab: Boolean; // Caso true Define que a query de consulta é a Xtabela
   XDescricao: String; // Descriçao da tabela padrão em andamento utilizado nas mensagens
   XSQLTABELA: String; // Nome da tabela no BD para consultas Sql
   XSQLVIEW: String; // Nome da VIEW no BD para consultas Sql
   XLiberaDados: String; //String que passa mais uma consulta na procedure liberadados
  end;
var
  FCadPadrao: TFCadPadrao;

implementation

uses Alxor32, UMenu, AlxMessage, UDMEstoque;


{$R *.DFM}

Procedure TFCadPadrao.LiberaDados;
Begin
	If XTab=True
   Then Begin //Significa que esta sendo utilizado na grid de consulta a tabela e não a view
       XTabela.Close;
       XTabela.SQL.Clear;
       XTabela.SQL.Add('SELECT * FROM '+XSQLTABELA);           
       XTabela.SQL.Add(' '+XLiberaDados);
       XTabela.Open;
   End
   Else Begin
       XView.Close;
       XView.SQL.Clear;
       XView.SQL.Add('Select * from '+XSQLVIEW);
       XView.SQL.Add(' '+XLiberaDados);
       XView.Open;
   End;
End;
procedure TFCadPadrao.FormActivate(Sender: TObject);
begin
//   ShapeFundo.Width:=PConsulta.Width+20;
//   ShapeFundo.Height:=PConsulta.Height+20;
  inherited;
   //Reorganiza paineis
   PCadastro.Top:= 4;
   PCadastro.Left:=4;
   PConsulta.Top:=PCadastro.Top;
   PConsulta.Left:=PCadastro.Left;
   PConsulta.Width:=PCadastro.Width;
   PConsulta.Height:=PCadastro.Height;
   Refresh;

   FMenu.SelectedForm:=False;//inicia com false para dizer que o botão selecionar não foi pressionado
 	If Tag=20 Then
        BtnSelecionar.Visible:=True
   Else
        BtnSelecionar.Visible:=False;
end;

procedure TFCadPadrao.BtnNovoClick(Sender: TObject);
begin
  inherited;
    PConsulta.Visible:=False;
    PCadastro.Visible:=TRUE;
    PCadastro.BringToFront;
end;

procedure TFCadPadrao.BtnCancelarClick(Sender: TObject);
begin
  inherited;
	 PCadastro.Visible:=False;
    PConsulta.Visible:=true;
    PConsulta.BringToFront;
end;

procedure TFCadPadrao.BtnConsultarClick(Sender: TObject);
begin
  inherited;
    //Verifica se view esta vázia
    If Xtab=False
    Then Begin
        if XView.IsEmpty
        Then Begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não existem dados a serem consultados ou alterados!', '', 1, 1, False, 'a');
            Exit;
        End;
    End
    Else Begin
        if XTabela.IsEmpty
        Then Begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não existem dados a serem consultados ou alterados!', '', 1, 1, False, 'a');
            Exit;
        End;
    End;
    PConsulta.Visible:=False;
    PCadastro.Visible:=TRUE;
    PCadastro.BringToFront;
end;

procedure TFCadPadrao.BtnGravarClick(Sender: TObject);
begin
  inherited;
  	Try
    PCadastro.Visible:=False;
   Except
   End;
    PConsulta.Visible:=true;
    PConsulta.BringToFront;
end;

procedure TFCadPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
	Flag:ShortInt;//Controla o presionamento de Alt+f4
begin
  inherited;
  //inicia controle para teclas de atalho
  If PConsulta.Visible=true
  Then Begin
  	 //controle para pular de registro next e prior
    If XTab=True
    Then Begin
        case key of
            Vk_down: XTabela.Next;
            Vk_UP: XTabela.Prior;
        End;
    End
    Else Begin
        case key of
            Vk_down: XView.Next;
            Vk_UP: XView.Prior;
        End;
    End;
    //controle de botões
    //botão novo
    If Key=vk_f4 Then
    	 BtnNovo.Click;
    //botão apagar
    If Key=vk_f8 Then
    	 BtnApagar.Click;
    //botão consultar
    If Key=vk_f6 Then
    	 BtnConsultar.Click;
    //botão selecionar
    If Key=vk_f9 Then
	    If BtnSelecionar.Visible=True Then//verifica se o botão esta visivel
   	 	 BtnSelecionar.Click;
    //FOCUS EM LOCALIZAR
    If Key=vk_f2 Then
    	 EdNome.SetFocus;

  End
  Else Begin
    //controle de botões
    //botão gravar
    If Key=vk_f5
    Then Begin
        BtnGravar.SetFocus;
    	 BtnGravar.Click;
    End;
    //botão cancelar
    If Key=vk_f7 Then
    	 BtnCancelar.Click;
  End;
end;

procedure TFCadPadrao.PConsultaExit(Sender: TObject);
begin
  inherited;
    If PConsulta.Visible=True Then
        PConsulta.SetFocus;
end;

procedure TFCadPadrao.PCadastroExit(Sender: TObject);
begin
  inherited;
    If PCadastro.Visible=True Then
        PCadastro.SetFocus;
end;

procedure TFCadPadrao.BtnSelecionarClick(Sender: TObject);
begin
  inherited;
    FMenu.SelectedForm:=True;
    Close;
end;

procedure TFCadPadrao.BtnApagarClick(Sender: TObject);
begin
  inherited;
    If xtab=False
    Then Begin
        if XView.IsEmpty
        Then Begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não existem dados a serem apagados!', '', 1, 1, False, 'a');
            Exit;
        End;
    End
    Else Begin
        if XTabela.IsEmpty
        Then Begin
            Mensagem('NOTIFICAÇÃO AO USUÁRIO', 'Não existem dados a serem apagados!', '', 1, 1, False, 'a');
            Exit;
        End;
    End;
end;

procedure TFCadPadrao.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	Try
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
  			If XTab=True Then
           begin
               if XSQLTABELA = 'PEDCOMPRA' then
                   FiltraTabela(XTabela, XSQLTABELA, XCampo, '', '(upper('+XCampo+') like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY DTPEDCOMP DESC')
               else
  				    FiltraTabela(XTabela, XSQLTABELA, XCampo, '', '(upper('+XCampo+') like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY '+XCAMPO);
           end
    		Else begin
               if XSQLTABELA = 'PEDCOMPRA' then
 				    FiltraTabela(XView, XSQLVIEW, XCampo, '',   '(upper('+XCampo+') like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY DTPEDCOMP DESC')
               else
                   FiltraTabela(XView, XSQLVIEW, XCampo, '',   '(upper('+XCampo+') like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY '+XCAMPO);
           end;
       End; 
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
			LiberaDados;
       End;
   Except
   End;

   //16/02/2009: controle de pesquisa add % na edit
    If (shift=[ssCtrl]) and (key = vk_space)
    then begin
        if (Copy(EdNome.Text, 1,1) = '%') and (Copy(EdNome.Text, Length(EdNome.Text),Length(EdNome.Text)) = '%')
        then begin
             EdNome.Text := Copy(edNome.Text, 2,Length(EdNome.Text)-2);
             EdNome.SelStart := Length(EdNome.Text);
        end
        else if (Copy(EdNome.Text, 0,1) = '%')
        then begin
            EdNome.Text := edNome.Text +'%';
            EdNome.SelStart := Length(EdNome.Text)-1;
        end
        else if (Copy(EdNome.Text, Length(EdNome.Text),Length(EdNome.Text)) = '%')
        then begin
            EdNome.Text := '%'+Trim(EdNome.Text);
            EdNome.SelStart := Length(EdNome.Text)-1;
        end
        else begin
            EdNome.Text := '%'+Trim(EdNome.Text)+'%';
            EdNome.SelStart := Length(EdNome.Text)-1;
        end;
        Xcontrole:=True;
        key := 0;
    end;
end;

procedure TFCadPadrao.EdNomeEnter(Sender: TObject);
begin
  inherited;
   if EdNome.Text = 'Digite o Nome ou Descrição' then
        EdNome.Text := ''
   else
    EdNome.SelectAll;

   EdNome.Font.Color := clBlack;
end;

procedure TFCadPadrao.EdNomeExit(Sender: TObject);
begin
  inherited;
   if Trim(EdNome.Text) = ''
    then begin
        EdNome.Text := 'Digite o Nome ou Descrição';
        EdNome.Font.Color := clGray;
    end;
end;

procedure TFCadPadrao.EdNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if XControle
   then begin
       xcontrole := False;
       key := #0;
   end;
end;

procedure TFCadPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	{if PCadastro.Visible = True then
   begin
   	MessageDlg('Use o botão gravar ou cancelar!', mtWarning, [mbOK], 0);
       Action:=caNone;
       Exit;
   End;}
	//Edmar - 05/05/2015 - se estiver cadastrando ou consultando um item, chamo o evento do botão cancelar
	if PCadastro.Visible = True then
   begin
       BtnCancelar.Click;
       Exit;
   End;

  inherited;

end;

end.
