unit UConsPlncta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls,
  Buttons, TFlatEditUnit, jpeg, ExtCtrls, DB, DBCtrls, Mask, DBColorEdit,
  UFrmBusca, DrLabel;

type
  TFConsPlnCta = class(TFCadPadrao)
    EDCLASSIFICACAO: TFlatEdit;
    Label1: TLabel;
    DBCLASS: TDBColorEdit;
    Label2: TLabel;
    DBColorEdit2: TDBColorEdit;
    Label3: TLabel;
    DBCBNatureza: TDBComboBox;
    Label4: TLabel;
    DBComboBox2: TDBComboBox;
    Label5: TLabel;
    DBColorEdit3: TDBColorEdit;
    PCalcConta: TPanel;
    GroupBox2: TGroupBox;
    DBGrid3: TDBGrid;
    CBOper: TComboBox;
    LTextoBusca: TLabel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    PConta: TPanel;
    Label7: TLabel;
    DBColorEdit1: TDBColorEdit;
    Label8: TLabel;
    DBColorEdit4: TDBColorEdit;
    CBFinanceiro: TCheckBox;
    CBCtaPadrao: TCheckBox;
    Pproduto: TPanel;
    Shape2: TShape;
    PSubGrupo: TGroupBox;
    EDCodigo: TEdit;
    EdDescricao: TEdit;
    BTNOPEN: TBitBtn;
    CBVisNormal: TCheckBox;
    CheckBox1: TCheckBox;
    cbGerencial: TCheckBox;
    Memo1: TMemo;
    PProgramada: TPanel;
    Label6: TLabel;
    FrmTCF: TFrmBusca;
    CBCONTACALC: TComboBox;
    FrmTMc: TFrmBusca;
    FrmConta: TFrmBusca;
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure EDCLASSIFICACAOKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomeKeyPress(Sender: TObject; var Key: Char);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure DBCBNaturezaKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBCBNaturezaExit(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaEdDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure CBOperKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FrmTCFEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmTCFEdDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmTMcEdDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmTMcEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTNOPENClick(Sender: TObject);
    procedure PCadastroExit(Sender: TObject);
    procedure EDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure FiltraContaCalc;//Procedure utilizada para filtrar as contas de calculo
  public
    { Public declarations }
  end;

var
  FConsPlnCta: TFConsPlnCta;
  XCODPKMESTRE:INTEGER;
  XCODPKREFER: INTEGER;
  XCODPKTCF, XCODPKTMC: Integer;
  XMARKREL: Integer;
  XCod_EstoquePln: Integer;
  xEdit: Boolean;

implementation

uses Alxor32, UMenu, AlxMessage, UDMConta, UDMFinanc, UDMMacs, UDMEstoque,
  UProduto;

{$R *.DFM}

//Procedure utilizada para filtrar as contas de calculo
Procedure TFConsPlnCta.FiltraContaCalc;
Begin
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('select plnctacalc.cod_plnctaref, plnctacalc.cod_plncta, plnctacalc.oper, plncta.classificacao, plncta.descricao ');
   DMCONTA.TAlx.SQL.Add(' from plnctacalc left join plncta on plnctacalc.cod_plnctaref = plncta.cod_plncta');
   DMCONTA.TAlx.SQL.Add(' Where plnctacalc.cod_plncta=:CODREFER ');
   DMCONTA.TAlx.ParamByName('CODREFER').AsInteger:=XCODPKMESTRE;
   DMCONTA.TAlx.Open;
End;

procedure TFConsPlnCta.BtnGravarClick(Sender: TObject);
var
   xmark: Integer;
begin
   //controla financeiro específico da conta em relatório
   If CBFinanceiro.Checked = true
   Then
       xmark:=1
   Else
       xmark:=0;
	If (DBCLASS.Text='')
	Then Begin
		MessageDlg('Informe a classificação da conta!', mtWarning, [mbOK], 0);
       DBCLASS.SetFocus;
		Exit;
   End;
	If (DBColorEdit2.Text='')
	Then Begin
		MessageDlg('Informe a descrição da conta!', mtWarning, [mbOK], 0);
       DBColorEdit2.SetFocus;
		Exit;
   End;
	If (DBCBNatureza.Text='')
	Then Begin
		MessageDlg('Selecione a natureza de operação da conta!', mtWarning, [mbOK], 0);
       DBCBNatureza.SetFocus;
		Exit;
   End;
	If (DBComboBox2.Text='')
	Then Begin
		MessageDlg('Selecione o tipo da conta!', mtWarning, [mbOK], 0);
       DBComboBox2.SetFocus;
		Exit;
   End;
	If (DBCBNatureza.Text='X') and (DBColorEdit4.Text='')
	Then Begin
		MessageDlg('Contas do tipo calculadas ''X'', percisam ter uma ordem definida para que os calculos ocorram!', mtWarning, [mbOK], 0);
       DBColorEdit4.SetFocus;
		Exit;
   End;
   inherited;
   XTabela.Edit;
   if XMARKREL <> xmark
   then begin
       // verifica se a conta tem controle financeiro individual
       If CBFinanceiro.Checked = True
       Then begin
           XTabela.FieldByName('MARKREL').AsString := '1';
           DMCONTA.TAlx.Close;
           DMCONTA.TAlx.SQL.Clear;
           DMCONTA.TAlx.SQL.Add('update plncta set plncta.markrel = '+#39+'1'+#39+'');
           DMCONTA.TAlx.SQL.Add('where (upper(CLASSIFICACAO) like upper('+#39+DBCLASS.Text+'%'+#39+'))');
           DMCONTA.TAlx.ExecSQL;
           DMCONTA.IBT.CommitRetaining;
           Mensagem('INFORMAÇÃO', 'Todas as contas relacionadas a esta também foram marcadas para controlar financeiro em relatórios!', '', 1,1, false, 'i');
       end
       Else begin
           XTabela.FieldByName('MARKREL').AsString := '0';
           DMCONTA.TAlx.Close;
           DMCONTA.TAlx.SQL.Clear;
           DMCONTA.TAlx.SQL.Add('update plncta set plncta.markrel = '+#39+'0'+#39+'');
           DMCONTA.TAlx.SQL.Add('where (upper(CLASSIFICACAO) like upper('+#39+DBCLASS.Text+'%'+#39+'))');
           DMCONTA.TAlx.ExecSQL;
           DMCONTA.IBT.CommitRetaining;
           Mensagem('INFORMAÇÃO', 'Todas as contas relacionadas a esta foram desmarcadas e não terão controle financeiro em relatórios!', '', 1,1, false, 'i');
       end;
   end;
   //Paulo 23/12/2010: Salva no banco se a conta vai ser padrão ou não
   if CBCtaPadrao.Checked =True then
   begin
      XTabela.FieldByName('CONTAPADRAO').AsString := 'S';
      XTabela.FieldByName('COD_ESTOQUE').AsInteger := 0;
      XTabela.FieldByName('MOSTRANORMAL').AsString := '0';
   end
   else begin
      XTabela.FieldByName('CONTAPADRAO').AsString := 'N';
      //Paulo 23/12/2010: Salva o contrint do produto como referência
      XTabela.FieldByName('COD_ESTOQUE').AsInteger := XCod_EstoquePln;
      //Paulo 23/12/2010: Salva se a conta vai ser mostrado normalmente
      if CBVisNormal.Checked = True then
         XTabela.FieldByName('MOSTRANORMAL').AsString := '1'
      else
         XTabela.FieldByName('MOSTRANORMAL').AsString := '0';
   end;

   //Edmar - 21/10/2013 - Verifica se o check box 'Conta aparece no Relatório Gerencial' está marcado
   if cbGerencial.Checked then
        XTabela.FieldByName('RELGERENCIAL').AsString := '1'
   else
        XTabela.FieldByName('RELGERENCIAL').AsString := '0';

   XTabela.Post;

   //confirma tranzação
	TransReg(XTabela, XTransaction, 'G');

   //SELECIONA E ORGANIZA CONTAS PARA EMPRESA
   SelectPlnCtaEmpresa;
   xEdit := false;


end;

procedure TFConsPlnCta.BtnApagarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADPLANOCTA', 'M')=False Then
  		Exit;

  inherited;
   //PEDE CONFIRMAÇÃO, CASO SIM APAGA CONTA SELECIONADA
	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar a conta '+ DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString + '?' , '', 2, 3, False, 'c')=2
	Then Begin
       //Edmar - 20/06/2014 - Filtra contas a receber buscando o plano de conta que deve ser apagado
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add('select ctareceber.cod_plncta, ctareceber.cod_plnctaserv from ctareceber where (ctareceber.cod_plncta = :plncta) or (ctareceber.cod_plnctaserv = :plncta)');
       DMFINANC.TAlx.ParamByName('PLNCTA').AsInteger := XTabela.FieldByName('COD_PLNCTA').AsInteger;
       DMFINANC.TAlx.Open;

       if not DMFINANC.TAlx.IsEmpty then
       begin
			Mensagem('Operação Bloqueada', 'Esse plano de contas possuí uma ou mais contas a receber ligados a ele. Portanto não será possivel apagá-lo!', '', 1, 1, False, 'a');
           Exit;
       end;

       //Edmar - 20/06/2014 - Filtra contas a pagar buscando o plano de conta que deve ser apagado
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add('select ctapagar.cod_plncta from ctapagar where ctapagar.cod_plncta = :plncta');
       DMFINANC.TAlx.ParamByName('PLNCTA').AsInteger := XTabela.FieldByName('COD_PLNCTA').AsInteger;
       DMFINANC.TAlx.Open;

       if not DMFINANC.TAlx.IsEmpty then
       begin
			Mensagem('Operação Bloqueada', 'Esse plano de contas possuí uma ou mais contas a pagar ligados a ele. Portanto não será possivel apagá-lo!', '', 1, 1, False, 'a');
           Exit;
       end;

       //Edmar - 20/06/2014 - Filtra os lançamentos de caixa buscando o plano de conta que deve ser apagado
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add('select lancaixa.cod_plnctafil from lancaixa where lancaixa.cod_plnctafil = :plncta');
       DMFINANC.TAlx.ParamByName('PLNCTA').AsInteger := XTabela.FieldByName('COD_PLNCTA').AsInteger;
       DMFINANC.TAlx.Open;

       if not DMFINANC.TAlx.IsEmpty then
       begin
  			Mensagem('Operação Bloqueada', 'Esse plano de contas possuí um ou mais lançamentos de caixas ligados a ele. Portanto não será possivel apagá-lo!', '', 1, 1, False, 'a');
           Exit;
       end;

       //Edmar - 20/06/2014 - Filtra as movimentações bancárias buscando o plano de conta que deve ser apagado
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add('select movbanco.cod_plncta, movbanco.cod_plnctaserv from movbanco where (movbanco.cod_plncta = :plncta) or (movbanco.cod_plnctaserv = :plncta)');
       DMFINANC.TAlx.ParamByName('PLNCTA').AsInteger := XTabela.FieldByName('COD_PLNCTA').AsInteger;
       DMFINANC.TAlx.Open;

       if not DMFINANC.TAlx.IsEmpty then
       begin
  			Mensagem('Operação Bloqueada', 'Esse plano de contas possuí uma ou mais movimentações bancárias ligados a ele. Portanto não será possivel apagá-lo!', '', 1, 1, False, 'a');
           Exit;
       end;

       //Edmar - 20/06/2014 - Testa o tipo do plano de conta
       if XTabela.FieldByName('TIPO').AsString = 'T' then
       begin
  			Mensagem('Operação Bloqueada', 'Contas do tipo (T) não podem ser apagado!', '', 1, 1, False, 'a');
           Exit;
       end;

       TransReg(XTabela, XTransaction, 'A');
   End;
end;

procedure TFConsPlnCta.EDCLASSIFICACAOKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	Try
		If Key=#13
   	Then Begin//pressionado enter, consultar
  			If XTab=True Then
  				FiltraTabela(XTabela, XSQLTABELA, 'CLASSIFICACAO', '', '(upper(CLASSIFICACAO) like upper('+#39+EDCLASSIFICACAO.Text+'%'+#39+')) ORDER BY CLASSIFICACAO')
    		Else
 				FiltraTabela(XView, XSQLVIEW, 'CLASSIFICACAO', '',   '(upper(CLASSIFICACAO) like upper('+#39+EDCLASSIFICACAO.Text+'%'+#39+')) ORDER BY CLASSIFICACAO');
       End;

       If Key=#27
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;

end;

procedure TFConsPlnCta.EdNomeKeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;
	Try
		If Key=#13
   	Then Begin//pressionado enter, consultar
  			If XTab=True Then
  				FiltraTabela(XTabela, XSQLTABELA, 'DESCRICAO', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+ ') And (upper(DESCRICAO) like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY CLASSIFICACAO')
    		Else
 				FiltraTabela(XView, XSQLVIEW, 'DESCRICAO', '',   ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+ ') And (upper(DESCRICAO) like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY CLASSIFICACAO');
       End;
       If Key=#27
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
   Except
   End;

end;

procedure TFConsPlnCta.BtnNovoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADPLANOCTA', 'M')=False Then
  		Exit;
  inherited;

  XCODPKMESTRE:=InserReg(XTabela, XSQLTABELA, XPkTabela);
  DMCONTA.TPlnCta.FieldByName('COD_FILIAL').AsString:=FMenu.LCODEMPRESA.Caption;
  DBCLASS.SetFocus;
  xEdit := false;	
  CBCtaPadrao.Visible:=false;
end;

procedure TFConsPlnCta.BtnConsultarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('CADPLANOCTA', 'M')=False Then
  		Exit;

	xEdit:=true;

   //Edmar - 21/10/2013 - se o relgerencial for igual a 1 ele marca o check box 'Conta aparece no relatório gerencial'
   if XTabela.FieldByName('RELGERENCIAL').AsString = '1'
   then
    	cbGerencial.State := cbChecked
   else
   	cbGerencial.State := cbUnchecked;

   XCODPKMESTRE:=XTabela.FieldByName('COD_PLNCTA').AsInteger;
  inherited;
	If (DBCBNatureza.Text='X') AND (DBComboBox2.Text='T')
   Then Begin
       PCalcConta.Visible:=True;
       PCalcConta.BringToFront;
       FiltraContaCalc;
   End;

   //controla financeiro específico da conta em relatório
   If XTabela.FieldByName('MARKREL').AsString = '1'
   Then begin
       CBFinanceiro.Checked := true;
       XMARKREL:=1;
   end
   Else begin
       CBFinanceiro.Checked := false;
       XMARKREL:=0;
   end;

   //Paulo 23/12/2010: Retorna os dados referente a conta padrao e os dados do subproduto
   If (DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString='1')AND(XTabela.FieldByName('TIPO').AsString = 'T') Then
   begin
       if XTabela.FieldByName('CONTAPADRAO').AsString = 'S' then
       begin
           CBCtaPadrao.Checked:=True;
           Pproduto.Visible:=False;
           Pproduto.SendToBack;
       end
       else begin
           CBCtaPadrao.Checked:=False;
           Pproduto.Visible:=True;
           Pproduto.BringToFront;
           if not(XTabela.FieldByName('COD_ESTOQUE').AsInteger = 0)then
           begin
               FiltraTabela(DMESTOQUE.Alx,'VWSIMILAR','COD_ESTOQUE', XTabela.FieldByName('COD_ESTOQUE').AsString,'');
               EDCodigo.Text:= DMESTOQUE.Alx.FieldByName('CONTRINT').AsString;
               EdDescricao.Text:= DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;
               If XTabela.FieldByName('COD_ESTOQUE').AsString<>'' Then
               	XCod_EstoquePln:= XTabela.FieldByName('COD_ESTOQUE').AsInteger
               Else
                   XCod_EstoquePln:=-1;
           end;
           if XTabela.FieldByName('MOSTRANORMAL').AsString = '1' then
               CBVisNormal.Checked:=true
           else
               CBVisNormal.Checked:=false;
       end;
       CBCtaPadrao.Visible:=true;
   end
   else begin
       CBCtaPadrao.Visible:=false;
       Pproduto.Visible:=False;

   end;






end;

procedure TFConsPlnCta.DBCBNaturezaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	Key:=#0;
end;

procedure TFConsPlnCta.DBComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	Key:=#0;
end;

procedure TFConsPlnCta.BtnSelecionarClick(Sender: TObject);
begin
    if FMenu.XEstadoOrigem <> 'EQUIPAMENTO' // - 05/03/2009: controla para poder selecionar conta totalizadora para gerar relatório de despesas de equipamento em empresa com locação de veículo
    then begin
    	//Edmar - 19/12/2014 - Só faz a validações sobre planos de contas totalizadores caso
       //não esteja gerando relatorio de banco e plano de conta
    	if not FMenu.XGerandoRelBancoPlncta then
       begin
	    	//Permite selecionar apenas contas não totalizadoras
	    	If (DMCONTA.TPlnCta.FieldByName('TIPO').AsString='T') AND (FMenu.TIPOAUX<>'DRE') Then
           	exit;
	    	If (DMCONTA.TPlnCta.FieldByName('TIPO').AsString='N') AND (FMenu.TIPOAUX='DRE') Then
           	exit;
       end;
    end;

  inherited;

end;

procedure TFConsPlnCta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   FMenu.TIPOAUX:='';
end;

procedure TFConsPlnCta.DBCBNaturezaExit(Sender: TObject);
begin
  inherited;
	If ((DBCBNatureza.Text='X') AND (DBComboBox2.Text='T'))
	Then Begin
		//Contas calculadas de forma personalizadas
       PProgramada.Visible:=False;
       PConta.Visible := True;
       PConta.BringToFront;
       PCalcConta.Visible:=True;
       PCalcConta.BringToFront;
       FrmConta.Visible := True;
       FrmConta.BringToFront;
       LTextoBusca.Visible:=True;
       FiltraContaCalc;
   End
	Else Begin
       PCalcConta.Visible := false;
	End;

	If ((DBCBNatureza.Text='#') AND (DBComboBox2.Text='N'))
   Then Begin
       PCalcConta.Visible := false;
   	PProgramada.Visible:=True;
       PProgramada.BringToFront;
   End
	Else Begin
       PProgramada.Visible:=False;
	End;

   //Paulo 23/12/2010:Verifica se esta marcado para atrelar plncta ao produto
  //para poder mostrar o combox 'tornar cta padrão'
   If (DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString='1')AND(DBComboBox2.Text='N') Then
   begin
       CBCtaPadrao.Visible:=false;
       Pproduto.BringToFront;
        Pproduto.Visible:=True;
   end
   else begin
       CBCtaPadrao.Visible:=true;
       Pproduto.Visible:=False;
   end;

end;

procedure TFConsPlnCta.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCODPKREFER:=-1;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
end;

procedure TFConsPlnCta.FrmContaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMFINANC.TAlx, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'T'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCODPKREFER:=DMFINANC.TAlx.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMFINANC.TAlx.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMFINANC.TAlx.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCODPKREFER:=-1;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCODPKREFER:=0;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
   End;
end;

procedure TFConsPlnCta.FrmContaBTNOPENClick(Sender: TObject);
begin
  inherited;
  FrmConta.BTNOPENClick(Sender);

end;

procedure TFConsPlnCta.FrmContaEdDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
 		If FrmConta.EDDESCRICAO.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMFINANC.TAlx, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'T'+#39+') And (DESCRICAO LIKE upper('+#39+FrmConta.EdDescricao.Text+'%'+#39+'))')=True
			Then Begin
		      	XCODPKREFER:=DMFINANC.TAlx.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMFINANC.TAlx.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMFINANC.TAlx.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCODPKREFER:=-1;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCODPKREFER:=0;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
   End;
end;
procedure TFConsPlnCta.CBOperKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	kEY:=#0;
end;

procedure TFConsPlnCta.BitBtn2Click(Sender: TObject);
begin
  inherited;
  	If DBCBNatureza.Text='#'
   Then Begin
       DMCONTA.TPlnCta.EDIT;
       DMCONTA.TPlnCta.FieldByName('CCF').AsString:=CBCONTACALC.Text;
       DMCONTA.TPlnCta.Post;
   	//Se a conta for de calculo fixo deve lançar em tabela caso não haja mais lançamentos
   	If DMCONTA.TAlx.IsEmpty
       Then Begin
       	//LANCA CUSTO FIXO
   		DMCONTA.TCConta.Insert;
   		DMCONTA.TCConta.FieldByName('COD_PLNCTA').AsInteger:=XCODPKMESTRE;
   		DMCONTA.TCConta.FieldByName('COD_PLNCTAREF').AsInteger:=XCODPKTCF;
   		DMCONTA.TCConta.FieldByName('OPER').AsString:='+';
   		DMCONTA.TCConta.Post;
       	//LANCA CONTA PARA MARGEM DE CONTRIBUICAO
   		DMCONTA.TCConta.Insert;
   		DMCONTA.TCConta.FieldByName('COD_PLNCTA').AsInteger:=XCODPKMESTRE;
   		DMCONTA.TCConta.FieldByName('COD_PLNCTAREF').AsInteger:=XCODPKTMC;
   		DMCONTA.TCConta.FieldByName('OPER').AsString:='/';
   		DMCONTA.TCConta.Post;

       End;
   End
   Else Begin
   	DMCONTA.TCConta.Insert;
   	DMCONTA.TCConta.FieldByName('COD_PLNCTA').AsInteger:=XCODPKMESTRE;
   	DMCONTA.TCConta.FieldByName('COD_PLNCTAREF').AsInteger:=XCODPKREFER;
   	DMCONTA.TCConta.FieldByName('OPER').AsString:=CBOper.Text;
   	DMCONTA.TCConta.Post;
   End;
   DMCONTA.IBT.CommitRetaining;
   FiltraContaCalc;
end;

procedure TFConsPlnCta.BitBtn4Click(Sender: TObject);
begin
  inherited;
   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFINANC.TAlx.SQL.Add(' delete from plnctacalc Where (plnctacalc.cod_plncta=:CODPLNCTA) AND (plnctacalc.cod_plnctaref=:CODPLNCTAREF)');
   DMFINANC.TAlx.ParamByName('CODPLNCTA').AsInteger:=XCODPKMESTRE;
   DMFINANC.TAlx.ParamByName('CODPLNCTAREF').AsInteger:=DMCONTA.TAlx.FIELDBYNAME('cod_plnctaref').AsInteger;
   DMFINANC.TAlx.ExecSQL;
   DMFINANC.Transaction.CommitRetaining;
   FiltraContaCalc;
end;

procedure TFConsPlnCta.FrmTCFEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
 		If FrmTCF.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMFINANC.TAlx, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'T'+#39+') And (CLASSIFICACAO='+#39+FrmTCF.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCODPKTCF:=DMFINANC.TAlx.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmTCF.EdDescricao.Text:=DMFINANC.TAlx.FieldByName('DESCRICAO').AsString;
		      	FrmTCF.EDCodigo.text:=DMFINANC.TAlx.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCODPKTCF:=-1;
		      	FrmTCF.EdDescricao.Text:='';
		      	FrmTCF.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCODPKTCF:=0;
	      	FrmTCF.EdDescricao.Text:='';
	      	FrmTCF.EDCodigo.text:='';
       End;
   End;
end;
procedure TFConsPlnCta.FrmTCFEdDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
 		If FrmTCF.EDDESCRICAO.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMFINANC.TAlx, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'T'+#39+') And (DESCRICAO LIKE upper('+#39+FrmTCF.EdDescricao.Text+'%'+#39+'))')=True
			Then Begin
		      	XCODPKTCF:=DMFINANC.TAlx.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmTCF.EdDescricao.Text:=DMFINANC.TAlx.FieldByName('DESCRICAO').AsString;
		      	FrmTCF.EDCodigo.text:=DMFINANC.TAlx.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCODPKTCF:=-1;
		      	FrmTCF.EdDescricao.Text:='';
		      	FrmTCF.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCODPKTCF:=0;
	      	FrmTCF.EdDescricao.Text:='';
	      	FrmTCF.EDCodigo.text:='';
       End;
   End;
end;
procedure TFConsPlnCta.FrmTMcEdDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
 		If FrmTMC.EDDESCRICAO.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMFINANC.TAlx, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'T'+#39+') And (DESCRICAO LIKE upper('+#39+FrmTMC.EdDescricao.Text+'%'+#39+'))')=True
			Then Begin
		      	XCODPKTMC:=DMFINANC.TAlx.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmTMc.EdDescricao.Text:=DMFINANC.TAlx.FieldByName('DESCRICAO').AsString;
		      	FrmTMc.EDCodigo.text:=DMFINANC.TAlx.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCODPKTMC:=-1;
		      	FrmTMc.EdDescricao.Text:='';
		      	FrmTMc.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCODPKTMC:=0;
	      	FrmTMc.EdDescricao.Text:='';
	      	FrmTMc.EDCodigo.text:='';
       End;
   End;          
end;

procedure TFConsPlnCta.FrmTMcEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
 		If FrmTMc.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMFINANC.TAlx, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'T'+#39+') And (CLASSIFICACAO='+#39+FrmTMc.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCODPKTMC:=DMFINANC.TAlx.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmTMc.EdDescricao.Text:=DMFINANC.TAlx.FieldByName('DESCRICAO').AsString;
		      	FrmTMc.EDCodigo.text:=DMFINANC.TAlx.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCODPKTMC:=-1;
		      	FrmTMc.EdDescricao.Text:='';
		      	FrmTMc.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCODPKTMC:=0;
	      	FrmTMc.EdDescricao.Text:='';
	      	FrmTMc.EDCodigo.text:='';
       End;
   End;
end;             
procedure TFConsPlnCta.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

   //FormActivate(Self);

end;

procedure TFConsPlnCta.BTNOPENClick(Sender: TObject);
begin
  inherited;
    if AbrirForm(TFProduto,FProduto,1)='Selected' then
    begin
       //XCODPROD:=StrToInt(DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString);
       EDCodigo.Text:=DMESTOQUE.WSimilar.FieldByName('CONTRINT').AsString;
       XCod_EstoquePln:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
       EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
       EDCodigo.Enabled:=false;
       EdDescricao.Enabled:=false;
    end
    Else Begin
       XCod_EstoquePln:=-1;
    End;
end;

procedure TFConsPlnCta.PCadastroExit(Sender: TObject);
begin
     If Pproduto.Visible=false Then
  inherited;

end;

procedure TFConsPlnCta.EDCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
		If FiltraTabela(DMEstoque.WSimilar, 'VWSIMILAR', 'Upper(CONTRINT)', UpperCase(EDCodigo.Text), '')=True
       Then Begin
           EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
           XCod_EstoquePln:=DMESTOQUE.WSimilar.FieldByName('COD_ESTOQUE').AsInteger;
       End
       Else Begin
           EdDescricao.Text:='';
           XCod_EstoquePln:=-1;
       End;
   End;
end;

procedure TFConsPlnCta.FormShow(Sender: TObject);
begin
  inherited;
	Caption:='Plano de Contas';  
   XTabela:=DMCONTA.TPlnCta;
   XCampo:='DESCRICAO';
   XTransaction:=DMCONTA.IBT;
   XPkTabela:='COD_PLNCTA';
   XTab:=True;
   XDescricao:= 'A Conta';
   XSQLTABELA:='PLNCTA';
   DBGridCadastroPadrao.DataSource:=DMCONTA.DPlnCta;
   
   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   If XTIPO_CONTA = ''
   Then Begin
       XLiberaDados:=' WHERE (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') ORDER BY CLASSIFICACAO';
   End;
   If XTIPO_CONTA = 'C'
   Then Begin
       XLiberaDados:=' WHERE (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') and (NATUREZA = ' + #39 + 'C' + #39 + ') ORDER BY CLASSIFICACAO';
   End;
   If XTIPO_CONTA = 'D'
   Then Begin
       XLiberaDados:=' WHERE (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') and (NATUREZA = ' + #39 + 'D' + #39 + ') ORDER BY CLASSIFICACAO';
   End;
   LiberaDados;
   Pproduto.Visible:=False;

end;

procedure TFConsPlnCta.BtnCancelarClick(Sender: TObject);
begin
	If xEdit = False
	Then Begin
		If FiltraTabela(DMCONTA.TPlnCta, 'plncta', 'cod_plncta', IntToStr(XCODPKMESTRE), '')
		Then Begin
           DMCONTA.TPlnCta.Delete;
           DMCONTA.IBT.CommitRetaining;
		End;
	End;
   inherited;
   xEdit := false;
   LiberaDados;
end;

end.
