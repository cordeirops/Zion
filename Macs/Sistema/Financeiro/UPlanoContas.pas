unit UPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRodaPe, FormAutoSize, TFlatHintUnit, Buttons, jpeg, ExtCtrls,
  StdCtrls, ComCtrls, TFlatComboBoxUnit, TFlatEditUnit, TFlatMemoUnit,
  FashionPanel, db;

type
  TFPlanoContas = class(TFPadraoRodaPe)
    TV: TTreeView;
    PInsertConta: TPanel;
    FashionPanel1: TFashionPanel;
    Label4: TLabel;
    EdNome: TFlatEdit;
    Label5: TLabel;
    CBNATUREZA: TFlatComboBox;
    Label6: TLabel;
    CBTIPO: TFlatComboBox;
    BtnInserir: TBitBtn;
    BtnCancelar: TBitBtn;
    FlatMemo1: TFlatMemo;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    LArvore: TLabel;
    CBArvore: TFlatComboBox;
    BTNAlterar: TBitBtn;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure TVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PInsertContaExit(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure EdNomeKeyPress(Sender: TObject; var Key: Char);
    procedure CBNATUREZAKeyPress(Sender: TObject; var Key: Char);
    procedure BTNAlterarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    Procedure MontaArvore; //Utilizada para montar a arvore de plano de contas de acordo com a tabela em banco de dados
  public
    { Public declarations }
  end;

var
  FPlanoContas: TFPlanoContas;

implementation

uses UDMFinanc, UMenu, AlxMessage, Alxor32;

{$R *.DFM}

//Utilizada para montar a arvore de plano de contas de acordo com a tabela em banco de dados
Procedure TFPlanoContas.MontaArvore;
Var
    ClassAnt, Descricao, Classificacao:String; //Armazena a última classe montada, descricao da conta, classificacao da conta
    Raiz, I:Integer;
Begin
    //FILTRA PLANO DE CONTAS PARA A EMPRESA
    DMFinanc.TPlanoContas.Close;
    DMFinanc.TPlanoContas.SQL.Clear;
    DMFinanc.TPlanoContas.SQL.Add('Select COD_PLNCTA, TIPO, CLASSIFICACAO, DESCRICAO, CODIGOGER, NATUREZA, COD_FILIAL ');
    DMFinanc.TPlanoContas.SQL.Add('From PLNCTA Where COD_FILIAL=:CodigoFilial Order By CLASSIFICACAO');
    DMFinanc.TPlanoContas.ParamByName('CodigoFilial').AsString:=FMenu.LCODEMPRESA.Caption;
    DMFinanc.TPlanoContas.Open;
    TV.Items.Clear;//limpa treeview
	I:=-1;//indice treeviw
    DMFinanc.TPlanoContas.First;//prepara bd p/ preencher treeview
    While Not DMFinanc.TPlanoContas.Eof do
    Begin
	    Descricao:=DMFinanc.TPlanoContas.FieldByName('Descricao').AsString;
		Classificacao:=DMFinanc.TPlanoContas.FieldByName('Classificacao').AsString;
        If (Length(Classificacao)=1) //verifica se classificacao é raiz 0
        Then Begin
            TV.Items.AddChild(Nil,Classificacao+' - '+Descricao+' ['+DMFinanc.TPlanoContas.FieldByName('NATUREZA').AsString+'/'+ DMFinanc.TPlanoContas.FieldByName('TIPO').AsString+']');//nil escreve linha treeview como raiz 0
        End
        Else Begin
		    If (Length(Classificacao)>Length(ClassAnt))//se maior linha será filha
		    Then Begin
			  	  TV.Items.AddChild(TV.Selected, Classificacao+' - '+Descricao+' ['+DMFinanc.TPlanoContas.FieldByName('NATUREZA').AsString+'/'+ DMFinanc.TPlanoContas.FieldByName('TIPO').AsString+']');
		    End
		    Else Begin //caso linha não é filha deverá ser pai ou irmã
		        Raiz:=I;
	      	  	While (Length(Classificacao)<=Length(ClassAnt))  do // faz enquanto não encontrada linha pai ou irmã
    	        Begin
			        Raiz:=Raiz-1;
					Tv.selected:= TV.Items[Raiz];
					ClassAnt:=Copy(TV.Selected.Text,1,Pos(' - ',TV.Selected.Text)-1);
                End;
				Tv.selected:= TV.Items[Raiz];//raiz indica qual linha pai ou mãe
			  	TV.Items.AddChild(TV.Selected, Classificacao+' - '+Descricao+' ['+DMFinanc.TPlanoContas.FieldByName('NATUREZA').AsString+'/'+ DMFinanc.TPlanoContas.FieldByName('TIPO').AsString+']');
	        End;
        End;
        I:=I+1;//indica que indice de treeview pulou + 1
    	ClassAnt:=DMFinanc.TPlanoContas.FieldByName('Classificacao').AsString;
        Tv.selected:= TV.Items[I]; //seleciona ultima linha de treeview
    	DMFinanc.TPlanoContas.Next;
    End;
    TV.SetFocus;
End;

procedure TFPlanoContas.FormActivate(Sender: TObject);
begin
  inherited;
    MontaArvore;
    TV.SetFocus;
end;

procedure TFPlanoContas.TVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    //Prepara in serção de nova conta
    If Key=VK_Insert
    Then Begin
        PInsertConta.Visible:=true;
        PInsertConta.BringToFront;
        BtnInserir.Visible:=TRUE;
        BTNAlterar.Visible:=False;
        CBArvore.Enabled:=True;        
        EdNome.SetFocus;
    End;

    //Prepara deleção de conta e sub contas
    If Key=Vk_Delete
    Then Begin
        Mensagem('A T E N  Ç Ã O', 'Você está prestes a excluir uma conta, junto com todas as Sub-Contas e valores referentes. Confirme esta operação somente se você estiver absolutamente certo disso!', '', 1, 1, False, 'a');
        If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar a conta:'+#13+'    '+TV.Selected.Text+#13+'E todas as suas possíveis Sub-Contas?', '', 2, 3, False, 'C')=2
        Then Begin
            Try
                DMFinanc.TAlx.Close;
                DMFinanc.TAlx.SQL.Clear;
                DMFinanc.TAlx.SQL.Add('Delete from plncta Where (Cod_Filial=:CodigoFilial)  And (Classificacao like '+#39+Trim(Copy(TV.Selected.Text,1 , Pos(' ', TV.Selected.Text)-1))+'%'+#39+')');
                DMFinanc.TAlx.ParamByName('CodigoFilial').AsString:=FMenu.LCODEMPRESA.Caption;
                DMFinanc.TAlx.ExecSQL;
                DMFinanc.TPlanoContas.Close;
                DMFinanc.TPlanoContas.Open;
                MontaArvore;
                If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Após apagar a conta selecionada, o plano de contas ficou da forma mostrada na tela. Você pode retornar aos dados antigos ou confirmar. Deseja confirmar?', '', 2, 2, False, 'C')=2
                Then Begin
                    Try
                        DMFinanc.Transaction.CommitRetaining;
                    Except
                        DMFinanc.Transaction.RollbackRetaining;
                    End;
                End
                Else Begin
                    DMFinanc.Transaction.RollbackRetaining;
                End;
            Except
                DMFinanc.Transaction.RollbackRetaining;
            End;
            DMFinanc.TPlanoContas.Close;
            DMFinanc.TPlanoContas.Open;
            MontaArvore;
        End;
    End;
    If Key=VK_F12
    Then Begin
        //Tenta localizar a conta através do banco de dados
        iF DMFinanc.TPlanoContas.Locate('CLASSIFICACAO', Trim(Copy(TV.Selected.Text,1 , Pos(' ', TV.Selected.Text)-1)),[loCaseInsensitive, loPartialKey])
        Then Begin
            PInsertConta.Visible:=True;
            PInsertConta.BringToFront;
            BTNAlterar.Visible:=true;
            BtnInserir.Visible:=False;
            EdNome.Text:=DMFinanc.TPlanoContas.fieldByName('DESCRICAO').AsString;
            CBNATUREZA.Text:=DMFinanc.TPlanoContas.fieldByName('NATUREZA').AsString;
            CBTIPO.Text:=DMFinanc.TPlanoContas.fieldByName('TIPO').AsString;
            CBArvore.Enabled:=False;
            EdNome.SetFocus;
        End
        Else Begin
            Mensagem('INFORMAÇÃO AO USUÁRIO', 'Não foi possível localizar a conta selecionada na àrvore. Clique com o mouse em cima da conta e pressione F12. Se o problema persistir reinicie o sistema!', '', 1, 1, False, 'i');
        End;
    End;
end;

procedure TFPlanoContas.PInsertContaExit(Sender: TObject);
begin
  inherited;
    If PInsertConta.Visible=True Then
        EdNome.SetFocus;
end;

procedure TFPlanoContas.BtnCancelarClick(Sender: TObject);
begin
  inherited;
    PInsertConta.Visible:=False;
    TV.SetFocus;
end;

procedure TFPlanoContas.BtnInserirClick(Sender: TObject);
Var
    Classif: String;
    IndexAtu: Integer;//Armazena o indice atual
begin
  inherited;
    If TV.Selected=nil Then
        IndexAtu:=0
    Else
        IndexAtu:=TV.Selected.AbsoluteIndex;

    If CBArvore.Text='Raiz'
    Then Begin // processoa para cálcular conta como nova raiz
        DMFinanc.TPlanoContas.Last;
        Classif:=DMFinanc.TPlanoContas.fieldByName('Classificacao').AsString;
        If Classif='' Then
            Classif:='0';
        Classif:=IntToStr(StrToInt(Classif[1])+1);//Calcula nova classificação
    End
    Else Begin // classificação para sub conta
        //Calculo da Classificação
        if TV.Selected.GetLastChild <> nil Then // Se a conta selecionada possuir filhos
            Classif:= IntToStr(StrToInt(Trim(Copy(TV.Selected.GetLastChild.Text,1 , Pos(' ', TV.Selected.GetLastChild.Text)-1)))+1)
        Else // se não possuir filhos
            Classif:=Trim(Copy(TV.Selected.Text,1 , Pos(' ', TV.Selected.Text)-1))+'1';
    End;

    If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente incluir esta nova conta ao restante do plano de contas?', '', 2, 2, False, 'c')=2
    Then Begin // se resposta = sim inclui nova conta ao plano
        Try
            If EdNome.Text=''
            Then Begin
                Mensagem('INFORMAÇÃO AO USUÁRIO', 'Informe o nome da conta', '', 1, 1, False, 'i');
                Exit;
            End;
            DMFinanc.TPlanoContas.Insert;//insere novo registro

            DMFinanc.TPlanoContas.FieldByName('COD_FILIAL').Value:=StrToInt(FMenu.LCODEMPRESA.Caption);
            DMFinanc.TPlanoContas.FieldByName('DESCRICAO').AsString:=EdNome.Text;
            DMFinanc.TPlanoContas.FieldByName('NATUREZA').AsString:=CBNATUREZA.Text;
            DMFinanc.TPlanoContas.FieldByName('TIPO').AsString:=CBTIPO.Text;
            DMFinanc.TPlanoContas.FieldByName('NATUREZA').AsString:=CBNATUREZA.Text;
            DMFinanc.TPlanoContas.FieldByName('CLASSIFICACAO').AsString:=Classif;

            //Confirma Dados
            TransReg(DMFinanc.TPlanoContas, DMFinanc.Transaction, 'g');
        Except
            DMFinanc.Transaction.RollbackRetaining;
        End;
        PInsertConta.Visible:=False;
        MontaArvore;
    End;
    TV.Items[IndexAtu].Selected;    
end;

procedure TFPlanoContas.EdNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If Key = #13
    Then Begin
        If BtnInserir.Visible=True Then
            BtnInserir.Click
        Else
            BTNAlterar.Click;
    End;
end;

procedure TFPlanoContas.CBNATUREZAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If Key = #13
    Then Begin
        If BtnInserir.Visible=True Then
            BtnInserir.Click
        Else
            BTNAlterar.Click;
    End;
    key :=#0;
end;

procedure TFPlanoContas.BTNAlterarClick(Sender: TObject);
begin
  inherited;
        Try
            If EdNome.Text=''
            Then Begin
                Mensagem('INFORMAÇÃO AO USUÁRIO', 'Informe o nome da conta', '', 1, 1, False, 'i');
                Exit;
            End;
            DMFinanc.TPlanoContas.Edit;//insere novo registro

            DMFinanc.TPlanoContas.FieldByName('COD_FILIAL').Value:=StrToInt(FMenu.LCODEMPRESA.Caption);
            DMFinanc.TPlanoContas.FieldByName('DESCRICAO').AsString:=EdNome.Text;
            DMFinanc.TPlanoContas.FieldByName('NATUREZA').AsString:=CBNATUREZA.Text;
            DMFinanc.TPlanoContas.FieldByName('TIPO').AsString:=CBTIPO.Text;
            DMFinanc.TPlanoContas.FieldByName('NATUREZA').AsString:=CBNATUREZA.Text;

            //Confirma Dados
            TransReg(DMFinanc.TPlanoContas, DMFinanc.Transaction, 'g');
        Except
            DMFinanc.Transaction.RollbackRetaining;
        End;
        PInsertConta.Visible:=False;
        MontaArvore;

end;

procedure TFPlanoContas.BitBtn1Click(Sender: TObject);
begin
  inherited;
    TV.Selected.Expanded:=true;
    TV.SetFocus;
end;

procedure TFPlanoContas.BitBtn2Click(Sender: TObject);
begin
  inherited;
    TV.Selected.Expanded:=False;
    TV.SetFocus;    
end;

procedure TFPlanoContas.BitBtn3Click(Sender: TObject);
begin
  inherited;
    MontaArvore;
end;

procedure TFPlanoContas.BitBtn4Click(Sender: TObject);
begin
  inherited;
    TV.SetFocus;
end;

end.
