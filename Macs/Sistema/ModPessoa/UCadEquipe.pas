unit UCadEquipe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, StdCtrls, DrLabel, jpeg, ExtCtrls, Grids,
  DBGrids, TFlatEditUnit, UFrmBusca, Mask, DBCtrls;

type
  TFCadEquipe = class(TFCadPadrao)
    EDCodigo: TDBEdit;
    DBEDesc: TDBEdit;
    FrmResp: TFrmBusca;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGFunc: TDBGrid;
    BBInserir: TBitBtn;
    BBExcluir: TBitBtn;
    FrmFunc: TFrmBusca;
    DBMObs: TDBMemo;
    procedure BtnNovoClick(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmBusca2BTNOPENClick(Sender: TObject);
    procedure BBInserirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FrmRespBTNMINUSClick(Sender: TObject);
    procedure FrmFuncBTNMINUSClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BBExcluirClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnApagarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    procedure AtualizaFuncionario;
    procedure AtualizaEquipe;
    procedure LimpaTudo;
  public
    { Public declarations }
  end;

var
  FCadEquipe: TFCadEquipe;
  XCodE, XCodF, XEI: integer;

  implementation

uses UDMPessoa, Alxor32, UFuncionario, AlxMessage, DB, UDmServ, UPadrao,
  UOrdem, UDMEstoque;

{$R *.dfm}

   //abre cadastro de um novo registro de equipe
procedure TFCadEquipe.BtnNovoClick(Sender: TObject);
begin
  inherited;
//XCODPKMESTRE:=InserReg(XTabela, XSQLTABELA, XPkTabela);
   XCodE := InserReg(DMPESSOA.TEquipe,'EQUIPE','COD_EQUIPE');
   XEI:=0;
   XESTADO := 'INSERCAO';
   PConsulta.Visible:=False;
   PCadastro.Visible:=TRUE;
   PCadastro.BringToFront;
   LimpaTudo;
   AtualizaFuncionario;
end;

   //Busca cadastro de funcionario para inserir um responsavel pela equipe
procedure TFCadEquipe.FrmBusca1BTNOPENClick(Sender: TObject);
begin
   inherited;
   FrmResp.BTNOPENClick(Sender);
   if AbrirForm(TFFuncionario,FFuncionario, 1)='Selected'
   then begin
       FrmResp.EDCodigo.Text:= DMPESSOA.VWFuncionario.fieldbyname('Cod_Func').AsString;
       FrmResp.EdDescricao.Text:=DMPESSOA.VWFuncionario.fieldbyname('nome').AsString;
      // FrmResp.BTNMINUS.SetFocus;
   end;
end;

   //Busca cadastro de funcionario para ser acrescentado na equipe
procedure TFCadEquipe.FrmBusca2BTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmFunc.BTNOPENClick(Sender);
  if AbrirForm(TFFuncionario,FFuncionario, 1)='Selected'
   then begin
       FrmFunc.EDCodigo.Text:= DMPESSOA.VWFuncionario.fieldbyname('Cod_Func').AsString;
       FrmFunc.EdDescricao.Text:=DMPESSOA.VWFuncionario.fieldbyname('nome').AsString;
     end;
end;

   //insere funcionario
procedure TFCadEquipe.BBInserirClick(Sender: TObject);
begin
  inherited;
   begin  //insere funcionario no BD

     If FrmFunc.EdDescricao.Text = ''
     Then Begin
       Mensagem('   A T E N Ç Ã O   ','Selecione o funcionário','',1,1,false,'I');
       FrmFunc.BTNOPEN.SetFocus;
       Exit;
     End;

     // verifica se na equipe jah nao possui o mesmo funcioanrio
     DMESTOQUE.Alx.Close;
     DMESTOQUE.Alx.SQL.Clear;
     DMESTOQUE.Alx.SQL.Add('select * from funequipe where (funequipe.cod_equipe = :cod_equipe)');
     DMESTOQUE.Alx.SQL.Add('and (funequipe.cod_funcionario = :cod_func)');
     DMESTOQUE.Alx.ParamByName('cod_equipe').AsString := EDCodigo.Text;
     DMESTOQUE.Alx.ParamByName('cod_func').AsString := FrmFunc.EDCodigo.Text;
     DMESTOQUE.Alx.Open;

     If not DMESTOQUE.Alx.IsEmpty
     Then Begin
       Mensagem('   A T E N Ç Ã O   ','Este funcionário já se encontra cadastrado na equipe.','',1,1,false,'I');
       FrmFunc.BTNOPEN.SetFocus;
       Exit;
     End;

     XCodf:=InserReg(DMPESSOA.TFunEquipe,'funequipe', 'cod_funequipe');
     DMPESSOA.TFunEquipe.FieldByName('cod_funcionario').AsString:=FrmFunc.EDCodigo.Text;
     DMPESSOA.TFunEquipe.FieldByName('cod_equipe').AsString:=EDCodigo.Text;
     DMPESSOA.TFunEquipe.post;

     DMPESSOA.TransacPessoa.CommitRetaining;

     FrmFunc.EDCodigo.Text:='';
     FrmFunc.EdDescricao.Text:='';
     FrmFunc.BTNOPEN.SetFocus;
   end;

   //atualiza grid de funcionario recem cadastrados
   AtualizaFuncionario;
end;

   //grava as informações de equipe na tabela
procedure TFCadEquipe.BtnGravarClick(Sender: TObject);
begin
   // deve ter a descrição da equipe
   If DBEDesc.Text = ''
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Informe a descrição da equipe','',1,1,false,'I');
       DBEDesc.SetFocus;
       Exit;
   End;

   // se tiver descricao e naotiver responsavek
   If (DBEDesc.Text <> '') and (FrmResp.EDCodigo.Text = '')
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','Informe o responsável pela equipe.','',1,1,false,'I');
       FrmResp.BTNOPEN.SetFocus;
       Exit;
   End;

   //busca na tabela funequipe se há funcionarios atrelados a equipe q esta sendo cadastrada
   DMPESSOA.TFunEquipe.Close;
   DMPESSOA.TFunEquipe.SQL.Clear;
   DMPESSOA.TFunEquipe.SQL.Add('select * from funequipe');
   DMPESSOA.TFunEquipe.SQL.Add('where funequipe.cod_equipe = :cod');
   DMPESSOA.TFunEquipe.ParamByName('cod').AsString := EDCodigo.Text;
   DMPESSOA.TFunEquipe.Open;

   // a equipe deve possuir funcionarios
   If DMPESSOA.TFunEquipe.IsEmpty
   Then Begin
       If Mensagem('   A T E N Ç Ã O   ','A equipe não possui nenhum funcionário cadastrado. Deseja apagá-la ?','',2,3,false,'I')=2
       Then Begin
           DMPESSOA.TALX.Open;
           DMPESSOA.TALX.SQL.Clear;
           DMPESSOA.TALX.SQL.Add('delete from equipe');
           DMPESSOA.TALX.SQL.Add('where equipe.cod_equipe= :codigo');
           DMPESSOA.TALX.ParamByName('codigo').AsString := EDCodigo.Text;
           DMPESSOA.TALX.ExecSQL;
           DMPESSOA.TransacPessoa.CommitRetaining;


           //apaga os funcionarios atrelados a equipe q foi apagada
           DMPESSOA.TALX.Open;
           DMPESSOA.TALx.Close;
           DMPESSOA.TALx.SQL.Clear;
           DMPESSOA.TALx.SQL.Add('delete from funequipe');
           DMPESSOA.TALx.SQL.Add('where funequipe.cod_equipe = :cod');
           DMPESSOA.TALx.ParamByName('cod').AsString := EDCodigo.Text;
           DMPESSOA.TALX.ExecSQL;
           DMPESSOA.TransacPessoa.CommitRetaining;

           //atualiza grid
           AtualizaEquipe;

           inherited;

           Exit;

       End;
   End;

   DMPESSOA.TEquipe.Edit;
   DMPESSOA.TEquipe.FieldByName('cod_equipe').AsString:=EDCodigo.Text;
   DMPESSOA.TEquipe.FieldByName('descricao').AsString:=DBEDesc.text;
   DMPESSOA.TEquipe.FieldByName('cod_responsavel').AsString:=FrmResp.EDCodigo.Text;
   DMPESSOA.TEquipe.FieldByName('observacao').AsString:=DBMObs.text;
   DMPESSOA.TEquipe.Post;
   DMPESSOA.TransacPessoa.CommitRetaining;

   //atualiza a grid de equipe quando grava uma nova
   AtualizaEquipe;

  inherited;
end;

   //limpa campo responsável
procedure TFCadEquipe.FrmRespBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmResp.BTNMINUSClick(Sender);
  FrmResp.EDCodigo.Text:='';
  FrmResp.EdDescricao.Text:='';
end;

   //limpa campo funcionario
procedure TFCadEquipe.FrmFuncBTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmFunc.BTNMINUSClick(Sender);
  FrmFunc.EDCodigo.Text:='';
  FrmFunc.EdDescricao.Text:='';
end;

   //cancelar um cadastro de equipe
procedure TFCadEquipe.BtnCancelarClick(Sender: TObject);
begin

   // se a variavel estiver definida dessa forma, eh pq esta sendo criado uma nova equipe
   If XESTADO = 'INSERCAO'
   Then Begin
       If Mensagem('   A T E N Ç Ã O   ','Deseja realmente cancelar ?','',2,3,false,'I')=2
       Then Begin
           //seleciona todos os dados de funequipe q tenha o mesmo co_equipe
           DMPESSOA.TALX.close;
           DMPESSOA.TALX.SQL.Clear;
           DMPESSOA.TALX.SQL.add('select * from funequipe');
           DMPESSOA.TALX.SQL.Add('where (funequipe.cod_equipe = :cod)');
           DMPESSOA.TALX.ParamByName('cod').AsString:= EDCodigo.Text;
           DMPESSOA.TALX.Open;

           DMPESSOA.TALX.First;

           // delete todos os funequipe
           while not DMPESSOA.TALX.Eof do
           Begin
               //exclui funcionario da tabela
               DMPESSOA.TALX1.Close;
               DMPESSOA.TALX1.SQL.Clear;
               DMPESSOA.TALX1.sql.Add('delete from funequipe where');
               DMPESSOA.TALX1.SQL.Add('(funequipe.cod_equipe = :cod)');
               DMPESSOA.TALX1.ParamByName('cod').AsString:=DMPESSOA.TAux.fieldbyname('cod_equipe').AsString;
               DMPESSOA.TALX1.ExecSQL;
               DMPESSOA.TransacPessoa.CommitRetaining;

           DMPESSOA.TALX.Next;
           End;

       End
       Else Begin
           Exit;
       End;
   End;

   // atualiza grid
   AtualizaEquipe;
  inherited;

end;

     //atualiza grid funcionarios cadastrados na equipe
 procedure TFCadEquipe.AtualizaFuncionario;
 begin
     DMPESSOA.TAux.close;
     DMPESSOA.TAux.SQL.Clear;
     DMPESSOA.TAux.SQL.Add('select funequipe.cod_funequipe, funequipe.cod_funcionario, funequipe.cod_equipe,');
     DMPESSOA.TAux.SQL.Add('funcionario.cod_func, funcionario.cod_interno, funcionario.cod_pessoa,');
     DMPESSOA.TAux.sql.add('pessoa.cod_pessoa, pessoa.nome');
     DMPESSOA.TAux.sql.add('from funequipe');
     DMPESSOA.TAux.sql.add('left join funcionario on funequipe.cod_funcionario = funcionario.cod_func');
     DMPESSOA.TAux.sql.add('left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
     DMPESSOA.TAux.sql.add('where funequipe.cod_equipe = :codigo');
     DMPESSOA.TAux.ParamByName('codigo').AsString:= EDCodigo.Text;
     DMPESSOA.TAux.Open;  
 end;

     //limpa todos os campos quando abre um novo cadastro
 procedure TFCadEquipe.LimpaTudo;
 begin
     DBEDesc.Text:='';
     DBMObs.Text:='';
     FrmResp.EdDescricao.Text:='';
     FrmResp.EDCodigo.Text:='';
     FrmFunc.EdDescricao.Text:='';
     FrmFunc.EDCodigo.Text:='';
 end;

     //exclui um funcionario da equipe
procedure TFCadEquipe.BBExcluirClick(Sender: TObject);
begin
  inherited;
     //exclui funcionario da grid
     DMPESSOA.TALX.close;
     DMPESSOA.TALX.SQL.Clear;
     DMPESSOA.TALX.SQL.add('select * from funequipe');
     DMPESSOA.TALX.SQL.Add('left join funcionario on funequipe.cod_funcionario = funcionario.cod_func');
     DMPESSOA.TALX.sql.add('left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
     DMPESSOA.TALX.SQL.Add('left join equipe on funequipe.cod_equipe = equipe.cod_equipe');
     DMPESSOA.TALX.SQL.Add('where (funequipe.cod_equipe = :cod)');
     DMPESSOA.TALX.SQL.add('and (funequipe.cod_funcionario = :codigo)');
     DMPESSOA.TALX.ParamByName('codigo').AsString:= DMPESSOA.TAux.fieldbyname('cod_funcionario').AsString;
     DMPESSOA.TALX.ParamByName('cod').AsString:= DMPESSOA.TAux.fieldbyname('cod_equipe').AsString;
     DMPESSOA.TALX.Open;

     //insere as informações do funcionario excluido, nas edits
     FrmFunc.EdDescricao.Text:=DMPESSOA.TAuX.fieldbyname('nome').AsString;
     FrmFunc.EDCodigo.Text:=DMPESSOA.TAuX.fieldbyname('cod_funcionario').AsString;

     //exclui funcionario da tabela
     DMPESSOA.TALX.Close;
     DMPESSOA.TALX.SQL.Clear;
     DMPESSOA.TALX.sql.Add('delete from funequipe where (funequipe.cod_funcionario = :codigo)');
     DMPESSOA.TALX.SQL.Add('and (funequipe.cod_equipe = :cod)');
     DMPESSOA.TALX.ParamByName('codigo').AsString:=dMPESSOA.TAuX.fieldbyname('cod_funcionario').AsString;
     DMPESSOA.TALX.ParamByName('cod').AsString:=DMPESSOA.TAux.fieldbyname('cod_equipe').AsString;
     DMPESSOA.TALX.ExecSQL;
     DMPESSOA.TransacPessoa.CommitRetaining;

     //Atualiza grid de funcionarios
     AtualizaFuncionario;
end;

   //atualiza grid de equipe
procedure TFCadEquipe.AtualizaEquipe;
   begin
       DMPESSOA.TALX1.Close;
       DMPESSOA.TALX1.SQL.Clear;
       DMPESSOA.TALX1.SQL.Add(' SELECT EQUIPE.COD_EQUIPE, EQUIPE.DESCRICAO, EQUIPE.COD_RESPONSAVEL, EQUIPE.OBSERVACAO, FUNCIONARIO.COD_FUNC, ');
       DMPESSOA.TALX1.SQL.Add(' FUNCIONARIO.COD_PESSOA, PESSOA.COD_PESSOA, PESSOA.NOME ');
       DMPESSOA.TALX1.SQL.Add(' FROM EQUIPE LEFT JOIN FUNCIONARIO ON EQUIPE.COD_RESPONSAVEL = FUNCIONARIO.COD_FUNC ');
       DMPESSOA.TALX1.SQL.Add(' LEFT JOIN PESSOA ON FUNCIONARIO.COD_PESSOA = PESSOA.COD_PESSOA ');
       DMPESSOA.TALX1.SQL.Add(' WHERE (FUNCIONARIO.ATIVO = ''0'') OR (FUNCIONARIO.ATIVO IS NULL) ');
       DMPESSOA.TALX1.Open;
   end;

   //consulta equipe
procedure TFCadEquipe.BtnConsultarClick(Sender: TObject);
begin
  //inherited;
   //seleciona os dados das tabelas  serem consultadas

   XEI:=1;
   // com a variavel definida 'EDICAO' naum sera exibida a msg para o usario se ele deseja cancelar
   XESTADO := 'EDICAO';

   DMPESSOA.TALX.Close;
   DMPESSOA.TALX.SQL.Clear;
   DMPESSOA.TALX.SQL.Add('select * from equipe');
   DMPESSOA.TALX.SQL.Add('left join funequipe on funequipe.cod_equipe = equipe.cod_equipe');
   DMPESSOA.TALX.SQL.Add('left join funcionario on funcionario.cod_func = funequipe.cod_funcionario');
   DMPESSOA.TALX.SQL.Add('left join pessoa on pessoa.cod_pessoa = funcionario.cod_pessoa');
   DMPESSOA.TALX.SQL.Add('where equipe.cod_equipe= :cod');
   DMPESSOA.TALX.ParamByName('cod').AsString:= DMPESSOA.TALX1.fieldbyname('cod_equipe').AsString;
   DMPESSOA.TALX.Open;

   //exclui equipe da grid e coloca as informações nas edits
   PCadastro.Visible:=True;
   PConsulta.Visible:=False;
   PCadastro.BringToFront;
   EDCodigo.Text:=DMPESSOA.TALX1.fieldbyname('cod_equipe').AsString;
   DBEDesc.Text:=DMPESSOA.TALX1.fieldbyname('descricao').AsString;
   DBMObs.Text:=DMPESSOA.TALX1.fieldbyname('observacao').AsString;
   FrmResp.EDCodigo.Text:=DMPESSOA.TALX1.fieldbyname('cod_responsavel').AsString;
   FrmResp.EdDescricao.Text:=DMPESSOA.TALX1.fieldbyname('nome').AsString;

   //seleciona o cod da equipe para ser editado
   DMPESSOA.TEquipe.Close;
   DMPESSOA.TEquipe.SQL.Clear;
   DMPESSOA.TEquipe.SQL.Add('select * from equipe');
   DMPESSOA.TEquipe.SQL.Add('where equipe.cod_equipe = :codigo');
   DMPESSOA.TEquipe.ParamByName('codigo').AsString:=DMPESSOA.TALX1.Fieldbyname('cod_equipe').AsString;
   DMPESSOA.TEquipe.Open;

   //limpa edits
   FrmFunc.EdDescricao.Text:='';
   FrmFunc.EDCodigo.Text:='';

       //atualiza funcionarios da equipe
     DMPESSOA.TAux.close;
     DMPESSOA.TAux.SQL.Clear;
     DMPESSOA.TAux.SQL.Add('select * from funequipe');
     DMPESSOA.TAux.SQL.Add('left join funcionario on funequipe.cod_funcionario = funcionario.cod_func');
     DMPESSOA.TAux.sql.add('left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
     DMPESSOA.TAux.sql.add('where funequipe.cod_equipe = :codigo');
     DMPESSOA.TAux.ParamByName('codigo').AsString:=DMPESSOA.TALX1.fieldbyname('cod_equipe').AsString;
     DMPESSOA.TAux.Open;

end;

   //realiza busca por nome, na grid
procedure TFCadEquipe.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = 13 then
   begin
   	DMPESSOA.TALX1.Close;
       DMPESSOA.TALX1.SQL.Clear;
       DMPESSOA.TALX1.SQL.Add(' SELECT * FROM EQUIPE ');
		DMPESSOA.TALX1.SQL.Add(' LEFT JOIN FUNCIONARIO ON EQUIPE.COD_RESPONSAVEL = FUNCIONARIO.COD_FUNC ');
       DMPESSOA.TALX1.SQL.Add(' LEFT JOIN PESSOA ON FUNCIONARIO.COD_PESSOA = PESSOA.COD_PESSOA ');
       DMPESSOA.TALX1.SQL.Add(' WHERE (UPPER (EQUIPE.DESCRICAO)) LIKE (UPPER ('+#39+EDNOME.TEXT+'%'+#39+')) ');
       DMPESSOA.TALX1.SQL.Add(' AND (FUNCIONARIO.ATIVO <> ''1'') ');
       DMPESSOA.TALX1.Open;
	end;

   if Key = 27 then
   begin
   	DMPESSOA.TALX1.Close;
       DMPESSOA.TALX1.SQL.Clear;
       DMPESSOA.TALX1.SQL.Add(' SELECT * FROM EQUIPE ');
		DMPESSOA.TALX1.SQL.Add(' LEFT JOIN FUNCIONARIO ON EQUIPE.COD_RESPONSAVEL = FUNCIONARIO.COD_FUNC ');
       DMPESSOA.TALX1.SQL.Add(' LEFT JOIN PESSOA ON FUNCIONARIO.COD_PESSOA = PESSOA.COD_PESSOA ');
       DMPESSOA.TALX1.SQL.Add(' WHERE (FUNCIONARIO.ATIVO <> ''1'') ');
   	DMPESSOA.TALX1.Open;

       EdNome.Text := '';
   end;
end;

procedure TFCadEquipe.FormActivate(Sender: TObject);
begin
  inherited;
  Caption:='Equipe' ;  
  XTabela:=DMPESSOA.TEquipe;
  XCampo:='DESCRICAO';
  XTransaction:=DMPESSOA.TransacPessoa;
  XPkTabela:='COD_EQUIPE';
  XTab:=true;
  XView:=DMPESSOA.TAux;
  XDescricao:= 'A Equipe';
  XSQLTABELA:='EQUIPE';
  XSQLVIEW:='EQUIPE';
  //LiberaDados;
  Caption:='Equipe';
  // seleciona todos os dados p mostrar na grid principal
  AtualizaEquipe;

//  PBotoes.Visible := true;
//  BtnFecha.Visible := true;
end;

   //apagar equipe
procedure TFCadEquipe.BtnApagarClick(Sender: TObject);
begin
 // inherited;
    If Mensagem('   A T E N Ç Ã O   ', 'Deseja apagar a equipe selecionada?', '', 2, 3, True, 'c')=2
    then begin
        DMServ.TAlx1.Open;
        DMServ.TALX1.SQL.Clear;
        DMServ.TALX1.SQL.Add('select * from despadic');
        DMServ.TALX1.SQL.Add('left join ordem on despadic.cod_gerador = ordem.cod_ordem');
        DMServ.TALX1.SQL.Add('where despadic.cod_equipe = :codigo');
        DMServ.TALX1.ParamByName('codigo').AsInteger := DMPESSOA.TEquipe.fieldbyname('cod_equipe').AsInteger;
        DMServ.TALX1.Open;

        //confere se a equipe está atrelada à alguma ordem de serviço
        If Not DMServ.TAlx1.IsEmpty
        then begin //se a equipe estiver relacionada a uma ordem, não apaga
           PConsulta.Visible:=True;
           PConsulta.BringToFront;
           Mensagem('   INFORMAÇÃO AO USUÁRIO   ', 'A equipe não pode ser apagada pois é responsável por ordem(ns) de serviço', '', 1, 1, True, 'a');
        End
        //se a equipe não estiver ligada a nenhuma ordem, apaga a equipe
        Else Begin
           DMPESSOA.TALX.Open;
           DMPESSOA.TALX.SQL.Clear;
           DMPESSOA.TALX.SQL.Add('delete from equipe');
           DMPESSOA.TALX.SQL.Add('where equipe.cod_equipe= :codigo');
           DMPESSOA.TALX.ParamByName('codigo').AsString:=DMPESSOA.TEquipe.fieldbyname('cod_equipe').AsString;
           DMPESSOA.TALX.ExecSQL;
           DMPESSOA.TransacPessoa.CommitRetaining;


           //apaga os funcionarios atrelados a equipe q foi apagada
           DMPESSOA.TALX.Open;
           DMPESSOA.TALx.Close;
           DMPESSOA.TALx.SQL.Clear;
           DMPESSOA.TALx.SQL.Add('delete from funequipe');
           DMPESSOA.TALx.SQL.Add('where funequipe.cod_equipe = :cod');
           DMPESSOA.TALx.ParamByName('cod').AsString:=DMPESSOA.TEquipe.fieldByName('cod_equipe').AsString;
           DMPESSOA.TALX.ExecSQL;
           DMPESSOA.TransacPessoa.CommitRetaining;

           //Djonathan 14/11/2009: REGISTRA NO BANCO SE A EQUIPE FOI APAGADA
           Registra('EQUIPE','APAGAR','','Equipe: ' + DMPESSOA.TEquipe.FieldByName('DESCRICAO').AsString,'Cod_Responsavel: ' + DMPESSOA.TEquipe.FieldByName('COD_RESPONSAVEL').AsString);

           //atualiza grid
           AtualizaEquipe;
        End;
    end;
end;

procedure TFCadEquipe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // se for pressionado F5 - Gravar
   if Key = 116
   Then Begin
       // deve ter a descrição da equipe
       If DBEDesc.Text = ''
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','Informe a descrição da equipe','',1,1,false,'I');
           DBEDesc.SetFocus;
           Exit;
       End;

       // se tiver descricao e naotiver responsavek
       If (DBEDesc.Text <> '') and (FrmResp.EDCodigo.Text = '')
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','Informe o responsável pela equipe.','',1,1,false,'I');
           FrmResp.BTNOPEN.SetFocus;
           Exit;
       End;

       //busca na tabela funequipe se há funcionarios atrelados a equipe q esta sendo cadastrada
       DMPESSOA.TFunEquipe.Close;
       DMPESSOA.TFunEquipe.SQL.Clear;
       DMPESSOA.TFunEquipe.SQL.Add('select * from funequipe');
       DMPESSOA.TFunEquipe.SQL.Add('where funequipe.cod_equipe = :cod');
       DMPESSOA.TFunEquipe.ParamByName('cod').AsString:= EDCodigo.Text;
       DMPESSOA.TFunEquipe.Open;

       // a equipe deve possuir funcionarios
       If DMPESSOA.TFunEquipe.IsEmpty
       Then Begin
           Mensagem('   A T E N Ç Ã O   ','A equipe deve possui no minimo 1 funcionário cadastrado.','',1,1,false,'I');
           Exit;
       End;

       DMPESSOA.TEquipe.Edit;
       DMPESSOA.TEquipe.FieldByName('cod_equipe').AsString:=EDCodigo.Text;
       DMPESSOA.TEquipe.FieldByName('descricao').AsString:=DBEDesc.text;
       DMPESSOA.TEquipe.FieldByName('cod_responsavel').AsString:=FrmResp.EDCodigo.Text;
       DMPESSOA.TEquipe.FieldByName('observacao').AsString:=DBMObs.text;
       DMPESSOA.TEquipe.Post;
       DMPESSOA.TransacPessoa.CommitRetaining;

       //atualiza a grid de equipe quando grava uma nova
       AtualizaEquipe;  
   End;

   // se for pressionado F7 - Cancelar
   If Key = 118
   Then Begin
       //busca na tabela funequipe se há funcionarios atrelados a equipe q esta sendo cadastrada
       DMPESSOA.TFunEquipe.Close;
       DMPESSOA.TFunEquipe.SQL.Clear;
       DMPESSOA.TFunEquipe.SQL.Add('select * from funequipe');
       DMPESSOA.TFunEquipe.SQL.Add('where funequipe.cod_equipe = :cod');
       DMPESSOA.TFunEquipe.ParamByName('cod').AsString:= EDCodigo.Text;
       DMPESSOA.TFunEquipe.Open;

          //se na tabela funequipe existir funcionarios cadastrados na nova equipe, ele não cancela o cadastro
           if DMPESSOA.TFunEquipe.IsEmpty
           then begin
               If Mensagem('   A T E N Ç Ã O   ','A equipe não possui nenhum funcionário. Deseja apaga-la ?','',2,3,false,'A') = 2
               Then Begin
                   DMPESSOA.TALX.Open;
                   DMPESSOA.TALX.SQL.Clear;
                   DMPESSOA.TALX.SQL.Add('delete from equipe');
                   DMPESSOA.TALX.SQL.Add('where equipe.cod_equipe= :codigo');
                   DMPESSOA.TALX.ParamByName('codigo').AsString:=DMPESSOA.TEquipe.fieldbyname('cod_equipe').AsString;
                   DMPESSOA.TALX.ExecSQL;
                   DMPESSOA.TransacPessoa.CommitRetaining;

                   //apaga os funcionarios atrelados a equipe q foi apagada
                   DMPESSOA.TALX.Open;
                   DMPESSOA.TALx.Close;
                   DMPESSOA.TALx.SQL.Clear;
                   DMPESSOA.TALx.SQL.Add('delete from funequipe');
                   DMPESSOA.TALx.SQL.Add('where funequipe.cod_equipe = :cod');
                   DMPESSOA.TALx.ParamByName('cod').AsString:=DMPESSOA.TEquipe.fieldByName('cod_equipe').AsString;
                   DMPESSOA.TALX.ExecSQL;
                   DMPESSOA.TransacPessoa.CommitRetaining;

                   PCadastro.Visible := false;
                   PCadastro.SendToBack;
                   PConsulta.Visible := true;
                   PConsulta.BringToFront;
               End
               Else Begin
                   // se a equipe nao for apagada e nao tiver nem a descrição, essa informação sera repassada para o usuario
                   If (DBEDesc.Text = '') AND (FrmResp.EDCodigo.Text = '')
                   Then Begin
                       Mensagem('   A T E N Ç Ã O   ','Informe a descrição da equipe e o responsável.','',1,1,false,'I');
                       DBEDesc.SetFocus;
                       Exit;
                   End
                   // se tiver descricao e naotiver responsavek
                   Else if (DBEDesc.Text <> '') and (FrmResp.EDCodigo.Text = '')
                   Then Begin
                       Mensagem('   A T E N Ç Ã O   ','Informe o responsável pela equipe.','',1,1,false,'I');
                       FrmResp.BTNOPEN.SetFocus;
                       Exit;
                   End
                   Else Begin
                       DMPESSOA.TEquipe.Edit;
                       DMPESSOA.TEquipe.FieldByName('cod_equipe').AsString:=EDCodigo.Text;
                       DMPESSOA.TEquipe.FieldByName('descricao').AsString:=DBEDesc.text;
                       DMPESSOA.TEquipe.FieldByName('cod_responsavel').AsString:=FrmResp.EDCodigo.Text;
                       DMPESSOA.TEquipe.FieldByName('observacao').AsString:=DBMObs.text;
                       DMPESSOA.TEquipe.Post;
                       DMPESSOA.TransacPessoa.CommitRetaining;

                       PCadastro.Visible := false;
                       PCadastro.SendToBack;
                       PConsulta.Visible := true;
                       PConsulta.BringToFront;
                   End;
               End
           end;

       //atualiza a grid de equipe quando grava uma nova
       AtualizaEquipe;

   End;

  inherited;

end;

end.




