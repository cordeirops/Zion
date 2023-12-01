unit ULancCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRodaPe, TFlatHintUnit, Buttons, jpeg, ExtCtrls,
  StdCtrls, Grids, DBGrids, DBCtrls, DBColorComboBox, Mask, DBColorEdit, DB,
  ColorMaskEdit, FashionPanel, UFrmBusca, Menus, DrLabel, TFlatEditUnit,
  EditFloat, ColorEditFloat;

type
  TFLancCaixa = class(TFPadraoRodaPe)
    PMRELCAIXA: TPopupMenu;
    RelAgrupadopordatas1: TMenuItem;
    RelAgrupadoporCaixas1: TMenuItem;
    Painel: TPanel;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape12: TShape;
    BtnNovo: TBitBtn;
    BtnApagar: TBitBtn;
    BtnConsultar: TBitBtn;
    BtnGravar: TBitBtn;
    BTNCANCELAR: TBitBtn;
    BtnRelatorio: TBitBtn;
    GroupBox1: TGroupBox;
    PLancamento: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    FrmBusca: TFrmBusca;
    EdDtRefer: TColorMaskEdit;
    GroupBox5: TGroupBox;
    LSaldoAnt: TLabel;
    GroupBox3: TGroupBox;
    LSaldoIni: TLabel;
    GroupBox4: TGroupBox;
    LSaldoCaixa: TLabel;
    Label7: TLabel;
    EdDoc: TEdit;
    Label9: TLabel;
    EdHist: TEdit;
    Shape13: TShape;
    PBanco: TPanel;
    DBGCTA: TDBGrid;
    GroupBox2: TGroupBox;
    DBGLANCADOS: TDBGrid;
    PCredito: TPanel;
    Label2: TLabel;
    CBCREDITO: TComboBox;
    PCaixaTransf: TPanel;
    DBGCaixaTransf: TDBGrid;
    BitBtn15: TBitBtn;
    PMCheque: TPopupMenu;
    MovimentarCheque1: TMenuItem;
    PCaixa: TPanel;
    DBGCaixa: TDBGrid;
    BtnSelecionar: TBitBtn;
    BtnCancCaixa: TBitBtn;
    PorPeriodo: TMenuItem;
    Label3: TLabel;
    LVlrCheque: TLabel;
    LVlrOutros: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    RGFiltro: TRadioGroup;
    N1: TMenuItem;
    RelatrioporPerodo1: TMenuItem;
    RelatriodeLanamentos1: TMenuItem;
    EdValorLanc: TColorEditFloat;
    CancelarLanamento1: TMenuItem;
    N2: TMenuItem;
    Label14: TLabel;
    LVlrCartao: TLabel;
    DBVALOR: TColorEditFloat;
    DBTIPOCAI: TComboBox;
    DBTIPO: TComboBox;
    DBDoc: TColorEditFloat;
    DBHISTORICO: TColorEditFloat;
    lbCliFor: TLabel;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    LCxLogado: TLabel;
    BtnTrocaCaixa: TButton;
    DBLookupCBCaixas: TDBLookupComboBox;
    EdData: TColorMaskEdit;
    RelatriodeVendaseRecebimento1: TMenuItem;
    FluxodeCaixaCompleto1: TMenuItem;
    ListagemdeLanamentosporCaixa1: TMenuItem;
    ransferirTodososCheques1: TMenuItem;
    BalanceteMensalporPerodo1: TMenuItem;
    Listagemdelanamentosporcontas1: TMenuItem;
    PListContas: TPanel;
    Panel1: TPanel;
    DBGListContas: TDBGrid;
    SpeedButton1: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBTIPOKeyPress(Sender: TObject; var Key: Char);
    procedure BTNCANCELARClick(Sender: TObject);
    procedure DBVALORExit(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmBusca1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmBuscaBTNOPENClick(Sender: TObject);
    procedure FrmBuscaBTNMINUSClick(Sender: TObject);
    procedure DBHISTORICOEnter(Sender: TObject);
    procedure RelAgrupadopordatas1Click(Sender: TObject);
    procedure RelAgrupadoporCaixas1Click(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure PChequeExit(Sender: TObject);
    procedure EdDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdHistKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBTIPOExit(Sender: TObject);
    procedure PBancoExit(Sender: TObject);
    procedure DBGCTAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmBuscaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure DBDocEnter(Sender: TObject);
    procedure CBCREDITOKeyPress(Sender: TObject; var Key: Char);
    procedure DBGCaixaTransfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn15Click(Sender: TObject);
    procedure MovimentarCheque1Click(Sender: TObject);
    procedure BtnCancCaixaClick(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure PorPeriodoClick(Sender: TObject);
    procedure RelatrioporPerodo1Click(Sender: TObject);
    procedure RelatriodeLanamentos1Click(Sender: TObject);
    procedure EdValorLancKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CancelarLanamento1Click(Sender: TObject);
    procedure PMChequeChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure DBTIPOCAIKeyPress(Sender: TObject; var Key: Char);
    procedure ColorEditFloat1Enter(Sender: TObject);
    procedure DBGLANCADOSDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnTrocaCaixaClick(Sender: TObject);
    procedure DBGLANCADOSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RelatriodeVendaseRecebimento1Click(Sender: TObject);
    procedure BalanceteMensal1Click(Sender: TObject);
    procedure FluxodeCaixaCompleto1Click(Sender: TObject);
    procedure ListagemdeLanamentosporCaixa1Click(Sender: TObject);
    procedure ransferirTodososCheques1Click(Sender: TObject);
    procedure BalanceteMensalporPerodo1Click(Sender: TObject);
    procedure Listagemdelanamentosporcontas1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaInfoCaixa;
  public
    { Public declarations }
    Procedure dbs(Active:Boolean);//Caso active = true habilita as db para inserção
    Procedure Saldos; // calcula e mostra os saldos de caixa
  end;

var
  FLancCaixa: TFLancCaixa;
  XCodLancCaixa, XCOD_CONTABANCO:Integer;
  XCOD_PESSOACRED: Integer;
  XCod_Conta: Integer;
  XState: String;
  xTransfereTodosCheques: Boolean;

implementation

uses AlxMessage, UDMFinanc, UMenu, Alxor32, UDMCaixa, UConsPlncta, UDMConta,
  UDMMacs, URelCaixa, UDmBanco, UDMPessoa, UCliente, UFORNECEDOR, Math,
  Alxorprn, URelMovCaixa, URelLancContas, UDmServ, UPadrao, UMDO, URelData;

{$R *.DFM}



Procedure TFLancCaixa.Saldos; // calcula e mostra os saldos de caixa
Begin
    CalcCaixa;
    LSaldoIni.Caption:=FormatFloat('#,##0.00', SaldoINI);
    LSaldoAnt.Caption:=FormatFloat('#,##0.00', SaldoAnt);
    LSaldoCaixa.Caption:=FormatFloat('#,##0.00', SaldoAtu+SaldoIni);
End;

//Caso active = true habilita as db para inserção
Procedure TFLancCaixa.dbs(Active:Boolean);
Begin
    If Active=True
    Then Begin
        DBHISTORICO.Text:='';
        DBHISTORICO.Enabled:=TRUE;
        DBDoc.Text:='';
        DBDoc.Enabled:=TRUE;
        DBTIPO.Text:='Carteira';
        DBTIpO.Enabled:=TRUE;
        DBVALOR.Text:='';
        DBVALOR.Enabled:=TRUE;
        DBTIPOCAI.Text:='E';
        FrmBusca.EDCodigo.Text:='';
        FrmBusca.EdDescricao.Text:='';
        DBTIPOCAI.Enabled:=TRUE;
        PLancamento.Enabled:=true;
        BtnGravar.Enabled:=True;
        BTNCANCELAR.Enabled:=True;
        BtnNovo.Enabled:=False;
        BtnApagar.Enabled:=False;
        BtnConsultar.Enabled:=False;
        BtnRelatorio.Enabled:=False;
        EdDtRefer.Enabled:=True;
    End
    Else Begin
        DBHISTORICO.Text:='';
        DBDoc.Text:='';
        DBTIPO.Text:='';
        DBVALOR.Text:='';
        DBTIPOCAI.Text:='';
        FrmBusca.EDCodigo.Text:='';
        FrmBusca.EdDescricao.Text:='';


        DBDoc.Enabled:=False;
        DBHISTORICO.Enabled:=False;
        DBTIPO.Enabled:=FALSE;
        DBVALOR.Enabled:=False;
        DBTIPOCAI.Enabled:=False;
        PLancamento.Enabled:=False;
        BtnGravar.Enabled:=False;
        BTNCANCELAR.Enabled:=False;
        BtnNovo.Enabled:=True;
        BtnApagar.Enabled:=True;
        BtnConsultar.Enabled:=True;
        BtnRelatorio.Enabled:=True;
        EdDtRefer.Enabled:=False;
    End;
End;
procedure TFLancCaixa.FormActivate(Sender: TObject);
var
   XTotal,XVlrEnt, XVlrSaidas:Real;
begin
  inherited;
	 Caption:='Lançamentos em Caixa' ;
    AtualizaInfoCaixa;

    //Paulo 05/04/2012: verificar se arquivo de layout foi salvo anteriormente
    if FileExists('C:\MZR\Arquivos\LayoutGrid\LanCaixa.lgm') then
    	DBGLANCADOS.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\LanCaixa.lgm');

    //Edmar - 30/07/2014 - Se não estiver logado em nenhum caixa, loga com o primeiro disponivel
    if FMenu.LCaixaLogado.Caption = 'NÃO LOGADO' then
        BtnTrocaCaixaClick(Sender)
    else begin
        FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'DESCRICAO', FMenu.LCaixaLogado.Caption, '');
        FMenu.LCODCAIXA.Caption := DMCAIXA.TCaixa.FieldByName('COD_CAIXA').AsString;
        DMCAIXA.VerifAbCaixa;
        AtualizaInfoCaixa;
   end;
end;

procedure TFLancCaixa.FormShow(Sender: TObject);
begin
  inherited;
    //DESABILITA OS DB DE INSERÇÃO
    dbs(FALSE);
end;

procedure TFLancCaixa.DBTIPOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    key:=#0;
end;

procedure TFLancCaixa.BTNCANCELARClick(Sender: TObject);
begin
  inherited;
    DMCAIXA.TLanCaixa.Cancel;
    DMCAIXA.TLanCaixa.CancelUpdates;
    DMCAIXA.IBT.RollbackRetaining;
    dbs(False);
    DBGLANCADOS.SetFocus;
    FrmBusca.EDCodigo.Text:='';
    FrmBusca.EdDescricao.Text:='';
    lbCliFor.Caption:='';     
end;

procedure TFLancCaixa.DBVALORExit(Sender: TObject);
begin
  inherited;
    //Verifica se valor inferior a 0
    If DBVALOR.Text<>''
    Then Begin
        If StrToFloat(DBVALOR.Text)<=0
        Then Begin
            Mensagem('ATENÇÃO', 'O valor a ser lançado não pode ser inferior a 0!', '', 1, 1, False, 'a');
            DBVALOR.SetFocus;
        End;
    End;
end;

procedure TFLancCaixa.BtnNovoClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('LANCX', 'M')=False Then
  		Exit;

   inherited;
  	dbs(True);
   XState:='INSERT';
   EdDtRefer.Text:=DateToStr(Date());
   DBTIPOCAI.SetFocus;
   DBDoc.Text:= DMMACS.TLoja.FieldByName('PROXDOCCTAREC').AsString;
   lbCliFor.Caption:='';
  
end;

procedure TFLancCaixa.BtnApagarClick(Sender: TObject);
var
	xCobranca: String;
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ALTLANCX', 'M')=False Then
  		Exit;

  inherited;
        //se não existir paineis na frente
        If (PLancamento.Enabled=False)
        Then Begin // se não estiver fazendo um lançamento
            If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', DMCAIXA.WLancCaixa.FieldByName('COD_LANC').AsString, '')=True
            Then Begin
            	xCobranca := DMCAIXA.TLanCaixa.FieldByName('TIPO').AsString;
			 	 If DMCAIXA.TLanCaixa.FieldByName('TIPO').AsString='Crédito'
            	 Then Begin
					Mensagem('OPÇÃO BLOQUEADA', 'Lançamentos de Crédito não podem ser alterados ou apagados!', '', 1, 1, False, 'i');
               	Exit;
            	 End;
                Mensagem('A T E N Ç Ã O !', 'Você executou um comando para apagar um movimento de caixa, que irá alterar o seu saldo. Continue somente em caso de certeza!', '', 1, 1, False, 'A');
                If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar o lançamento?'+#13+'Histórico: '+DMCAIXA.WLancCaixa.FieldByName('HISTORICO').AsString+#13+'Valor: '+DMCAIXA.WLancCaixa.FieldByName('VALOR').AsString  , '', 3, 3, False, 'C')=2
                Then Begin
                	 If DMCAIXA.TLanCaixa.FieldByName('TIPO').AsString='T. Banco'
                    Then Begin // Se for lançamento de transferência bancária, o lançamento lá em banco deve ser apagado também
						If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'TIPOGERADOR', '', ' (TIPOGERADOR='+#39+'CX'+#39+') AND (COD_GERADOR='+#39+DMCAIXA.TLanCaixa.FieldByName('COD_LANC').AsString+#39+')')=True
                       Then Begin
                       	Try
								//Apaga movimento bancario
                           	DMBANCO.TMovBanco.Delete;
       			 			//REGISTRA COMANDO DO USUARIO
       			 			Registra('LANC. CAIXA', 'APAGAR',  DMCAIXA.TLanCaixa.FieldByName('DTLANC').AsString, DMCAIXA.TLanCaixa.FieldByName('HISTORICO').AsString, 'Valor: '+DMCAIXA.TLanCaixa.FieldByName('VALOR').AsString);
                    			DMCAIXA.TLanCaixa.Delete;
                  	 			DMCAIXA.IBT.CommitRetaining;
                               DMBANCO.IBT.CommitRetaining;
                               DMFINANC.Transaction.CommitRetaining;
                           Except
								Mensagem('OPÇÃO BLOQUEADA', 'Ocorreram problemas e esta operação foi cancelada!'+#13+'Entre em contato com a equipe de suporte técnico', '', 1, 1, False, 'i');
                           End;
                       End
                       Else Begin
                       	//REGISTRA COMANDO DO USUARIO
                       	Registra('LANC. CAIXA', 'APAGAR',  DMCAIXA.TLanCaixa.FieldByName('DTLANC').AsString, DMCAIXA.TLanCaixa.FieldByName('HISTORICO').AsString, 'Valor: '+DMCAIXA.TLanCaixa.FieldByName('VALOR').AsString);
                       	DMCAIXA.TLanCaixa.Delete;
                       	DMCAIXA.IBT.CommitRetaining;
                           DMFINANC.Transaction.CommitRetaining;
							Mensagem('A T E N Ç Ã O !', 'A movimentação bancária referente a este lançamento não foi encontrada. Verifique manualmente!'+#13+'O lançamento em caixa foi apagado!', '', 1, 1, False, 'i');
                       End;
                    End;
                    
                    If DMCAIXA.TLanCaixa.FieldByName('TIPO').AsString='CHEQUE'
                    Then Begin // Se for lançamento de transferência bancária, o lançamento lá em banco deve ser apagado também
                       If FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', DMCAIXA.TLanCaixa.FieldByName('COD_GERADOR').AsString, '')=True
                       Then Begin
                           If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.TChequeRec.FieldByName('COD_MOVBANCO').AsString, '')=True
                           Then Begin
                               Try
                                     // Paulo 03/11/211:atualizando o movbanco
                                     DMBANCO.TMovBanco.Edit;
                                     DMBANCO.TMovBanco.FieldByName('FECH').AsString:='N';
                                     DMBANCO.TMovBanco.FieldByName('ESTRU').AsString:='0';
                                     DMBANCO.TMovBanco.Post;

                                     //Paulo 03/11/211: buscando a parcela a receber para cancelar o baixamento
                                     If FiltraTabela(DMCONTA.TParcCR,'PARCELACR','COD_PARCELACR',DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString,'')=true
                                     Then Begin
                                         DMCONTA.TParcCR.Edit;
                                         DMCONTA.TParcCR.FieldByName('FECH').AsString := 'N';
                                         DMCONTA.TParcCR.FieldByName('DTDEBITO').AsString := '';
                                         DMCONTA.TParcCR.FieldByName('COBRANCA').AsString := 'Carteira';
                                         DMCONTA.TParcCR.Post;
                                         DMCONTA.IBT.CommitRetaining;
                                     End;
                                     //Paulo 03/11/2011: Apaga lançamento do caixa
                                     //REGISTRA COMANDO DO USUARIO
                                     Registra('LANC. CAIXA', 'APAGAR',  DMCAIXA.TLanCaixa.FieldByName('DTLANC').AsString, DMCAIXA.TLanCaixa.FieldByName('HISTORICO').AsString, 'Valor: '+DMCAIXA.TLanCaixa.FieldByName('VALOR').AsString);
                                     DMCAIXA.TLanCaixa.Delete;
                                     DMCAIXA.IBT.CommitRetaining;
                                     DMBANCO.IBT.CommitRetaining;
                                     DMFINANC.Transaction.CommitRetaining;
                               Except
                               end;
                           end;
                       end;
                    end
                    Else Begin
       			 	//REGISTRA COMANDO DO USUARIO
       			 	Registra('LANC. CAIXA', 'APAGAR',  DMCAIXA.TLanCaixa.FieldByName('DTLANC').AsString, DMCAIXA.TLanCaixa.FieldByName('HISTORICO').AsString, 'Valor: '+DMCAIXA.TLanCaixa.FieldByName('VALOR').AsString);

						//Edmar - 30/01/2015 - Só remove se não for transferencia de banco pois a remoção já foi feito acima
                       //e desse jeito um erro era lançado
                       if xCobranca <> 'T. Banco' then
                       begin
                       	DMCAIXA.TLanCaixa.Delete;
                           DMCAIXA.IBT.CommitRetaining;
                           DMFINANC.Transaction.CommitRetaining;

                           MDO.Transac.CommitRetaining;
                           MDO.Query.Close;
                           MDO.Query.SQL.Clear;
                           MDO.Query.SQL.Add('DELETE FROM LANCAIXACTA WHERE COD_LANCAIXA = :CODIGO');
                           MDO.Query.ParamByName('CODIGO').AsInteger:=DMCAIXA.WLancCaixa.FieldByName('cod_lanc').AsInteger;
                           MDO.Query.ExecSQL;
                           MDO.Transac.CommitRetaining;
						end;                   
                    End;
    				 //Filtra Lançamentos por Empresa
    				 FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', FMenu.LABCAIXA.Caption, ' ORDER BY COD_LANC DESC');
    				 //Efetua Calculo de Saudos de cx
    				 Saldos;
                End;
            End
            Else Begin
                Mensagem('OPÇÃO BLOQUEADA', 'Este Lançamento não pode ser apagado neste momento!', '', 1, 1, False, 'i');
            End;
        End;
end;

procedure TFLancCaixa.BtnConsultarClick(Sender: TObject);
begin
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ALTLANCX', 'M')=False Then
  		Exit;

  inherited;
  		 If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', DMCAIXA.WLancCaixa.FieldByName('COD_LANC').AsString, '')= True
        Then Begin
        	 //LANÇAMENTOS DE TRANSFERENCIA NÃO PODEM SER ALTERADOS PARA NÃO HAVER CONFUSÃO COM OUTROS CONTRALANÇAMENTOS
			 If DMCAIXA.TLanCaixa.FieldByName('TIPO').AsString='T. Banco'
            Then Begin
				Mensagem('OPÇÃO BLOQUEADA', 'Lançamentos de Transferência não podem ser alterados!', '', 1, 1, False, 'i');
               Exit;
            End;
			 If DMCAIXA.TLanCaixa.FieldByName('TIPO').AsString='Crédito'
            Then Begin
				Mensagem('OPÇÃO BLOQUEADA', 'Lançamentos de Crédito não podem ser alterados ou apagados!', '', 1, 1, False, 'i');
               Exit;
            End;
            dbs(True);
            DMCAIXA.TAlx.close;
            DMCAIXA.talx.SQL.Clear;
            DMCAIXA.TAlx.SQL.Add(' Select * from lancaixa where lancaixa.cod_lanc=:codigo ');
            DMCAIXA.TAlx.ParamByName('codigo').AsInteger:=DMCAIXA.WLancCaixa.FieldByName('cod_lanc').AsInteger;
            DMCAIXA.TAlx.Open;
            XCodLancCaixa:=DMCAIXA.WLancCaixa.FieldByName('cod_lanc').AsInteger;
            If not DMCAIXA.TAlx.IsEmpty
            Then Begin
            	If FiltraTabela(DMCONTA.TAlx, 'PLNCTA', 'COD_PLNCTA', DMCAIXA.TAlx.FieldByName('cod_plnctafil').AsString, '') = True
               Then Begin
                   FrmBusca.EDCodigo.Text:=DMCONTA.TAlx.FieldByName('CLASSIFICACAO').AsString;
                   FrmBusca.EdDescricao.Text:=DMCONTA.TAlx.FieldByName('DESCRICAO').AsString;
                   XCod_Conta:=DMCONTA.TAlx.FieldByName('COD_PLNCTA').AsInteger;
               End
               Else Begin
                   FrmBusca.EDCodigo.Text:='';
                   FrmBusca.EDCodigo.Text:='';
                   XCod_Conta:=-1;
               End;
			 	EdDtRefer.Text:=DMCAIXA.TAlx.FieldByName('DTREFER').AsString;
    			DBHISTORICO.Text:=DMCAIXA.TAlx.FieldByName('HISTORICO').AsString;
    			DBVALOR.ValueNumeric:=DMCAIXA.TAlx.FieldByName('VALOR').AsCurrency;
    			DBTIPO.Text:=DMCAIXA.TAlx.FieldByName('TIPO').AsString;
    			DBTIPOCAI.Text:=DMCAIXA.TAlx.FieldByName('TIPCAI').AsString;
    			DBDoc.Text:=DMCAIXA.TAlx.FieldByName('DOC').AsString;
               XState:='EDIT';
               DBTIPOCAI.SetFocus;
            End;
        End
        Else Begin
            Mensagem('OPÇÃO BLOQUEADA', 'Este Lançamento não pode ser alterado neste momento!', '', 1, 1, False, 'i');
        End;
end;

procedure TFLancCaixa.BtnGravarClick(Sender: TObject);
Var
  XCod_LancamentoCX: Integer;
  XDocCreditoCliente: String;
  xValor, xValorTotal, xPorcentagem, xNewValor: Double;
begin
  inherited;
   BtnGravar.SetFocus;
   If (XCod_Conta<=0)
   Then Begin //bloqueia caso não tenha sido informado o plano de contas
        Mensagem('OPÇÃO BLOQUEADA', 'É necessario que você informe a conta do Plano de Contas para que o lançamento seja efetuado!', '', 1, 1, False, 'a');
        exit;
   End;
   If DBHISTORICO.Text=''
   Then Begin //bloqueia caso não tenha sido informado o histórico
        Mensagem('OPÇÃO BLOQUEADA', 'É necessario que você informe o Histórico referente ao lançamento para que o mesmo seja efetuado!', '', 1, 1, False, 'a');
        DBHISTORICO.SetFocus;
        exit;
   End;
   If DBTIPO.Text=''
   Then Begin //bloqueia caso não tenha sido informado o tipo
        Mensagem('OPÇÃO BLOQUEADA', 'É necessario que você informe o Tipo de Pagamento utilizado neste lançamento!', '', 1, 1, False, 'a');
        DBTIPO.SetFocus;
        exit;
   End;
   If DBVALOR.Text<>''
   Then Begin
        //If StrToFloat(DBVALOR.)=0
        if DBVALOR.ValueNumeric = 0
        Then Begin //bloqueia caso não tenha sido informado o Valor do lançamento
            Mensagem('OPÇÃO BLOQUEADA', 'É necessario que você informe o Valor do Lançamento para que ele seja efetivado!', '', 1, 1, False, 'a');
            DBVALOR.SetFocus;
            exit;
        End;
   End
   Else Begin
        Mensagem('OPÇÃO BLOQUEADA', 'É necessario que você informe o Valor do Lançamento para que ele seja efetivado!', '', 1, 1, False, 'a');
        DBVALOR.SetFocus;
        exit;
   End;
   If DBTIPOCAI.Text=''
   Then Begin //bloqueia caso não tenha sido informado o tipo Caixa
        Mensagem('OPÇÃO BLOQUEADA', 'É necessario que você informe o Tipo da Operação em Caixa ([E] Entrada/[S] Saída), para que o Lançamento seja esfetuado!', '', 1, 1, False, 'a');
        DBTIPOCAI.SetFocus;
        exit;
   End;
   If (DBTIPO.Text='Crédito') and (XCOD_PESSOACRED<=0)
   Then Begin
        Mensagem('OPÇÃO BLOQUEADA', 'Para efetuar um lançamento de crédito é necessário selecionar um cliente/fornecedor!', '', 1, 1, False, 'a');
        DBTIPO.SetFocus;
        exit;
   End;

   Try
       MDO.Transac.CommitRetaining;

       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add('  select gen_id(GEN_LANCAIXA_ID, 0) as codigo from rdb$database ');
       MDO.QConsulta.Open;
       XCod_LancamentoCX:=MDO.QConsulta.FieldByName('codigo').AsInteger;

       xValor := DBVALOR.ValueNumeric;

       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       If XState='INSERT'
       Then Begin
           MDO.Query.SQL.Add('  insert into lancaixa (DTLANC, DTREFER, COD_PLNCTAFIL, ESTRU, HISTORICO, VALOR, SALDOANT, TIPOGERADOR, COD_GERADOR, ');
           MDO.Query.SQL.Add('                         TIPO, TIPCAI, COD_ABCAIXA, COD_USUARIO, DOC) ');
           MDO.Query.SQL.Add('          values (:DTLANC, :DTREFER, :COD_PLNCTAFIL, :ESTRU, :HISTORICO, :VALOR, :SALDOANT, :TIPOGERADOR, :COD_GERADOR, ');
           MDO.Query.SQL.Add('                         :TIPO, :TIPCAI, :COD_ABCAIXA, :COD_USUARIO, :DOC) ');
    	    MDO.Query.ParamByName('ESTRU').AsString:='1';
	        MDO.Query.ParamByName('COD_ABCAIXA').AsString:=FMenu.LABCAIXA.Caption;
    	    MDO.Query.ParamByName('SALDOANT').AsCurrency:=SaldoAtu+SaldoIni;
       End
       Else Begin
           MDO.Query.SQL.Add('  update lancaixa set DTLANC = :DTLANC, DTREFER = :DTREFER, COD_PLNCTAFIL = :COD_PLNCTAFIL, HISTORICO = :HISTORICO, ');
           MDO.Query.SQL.Add('                      VALOR = :VALOR, TIPO = :TIPO, ');
           MDO.Query.SQL.Add('                      TIPCAI = :TIPCAI, lancaixa.cod_usuario = :COD_USUARIO, DOC=:DOC ');
           MDO.Query.SQL.Add('          where lancaixa.cod_lanc=:CODIGO ');
           MDO.Query.ParamByName('CODIGO').AsInteger:= XCodLancCaixa;

	    End;
       MDO.Query.ParamByName('DTLANC').AsString:=DateToStr(Date());
       MDO.Query.ParamByName('DTREFER').AsString:=EdDtRefer.Text;
       MDO.Query.ParamByName('COD_PLNCTAFIL').AsInteger:=XCod_Conta;
       MDO.Query.ParamByName('HISTORICO').AsString:= Copy(DBHISTORICO.Text,0,100);
       MDO.Query.ParamByName('VALOR').Value:=xValor;
       MDO.Query.ParamByName('TIPO').AsString:=DBTIPO.Text;
       MDO.Query.ParamByName('TIPCAI').AsString:=DBTIPOCAI.Text;
       MDO.Query.ParamByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
       MDO.Query.ParamByName('DOC').AsString:=DBDoc.Text;
       MDO.Query.ExecSQL;

       MDO.Transac.CommitRetaining;

   Except
       MDO.Transac.RollbackRetaining;
       MessageDlg('Falha ao efetuar lançamento em caixa', mtWarning, [mbOK], 0);
   End;

   Try
       If XState='INSERT'
       Then Begin
           MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add('INSERT INTO LANCAIXACTA (COD_LANCAIXA, VALOR, COD_PLNCTA) ');
           MDO.Query.SQL.Add('VALUES (:CODIGO, :VALOR, :COD_PLNCTA) ');
           MDO.Query.ParamByName('CODIGO').AsInteger:=XCodLancCaixa;
           MDO.Query.ParamByName('VALOR').Value:=xValor;
           MDO.Query.ParamByName('COD_PLNCTA').AsInteger:=XCod_Conta;
           MDO.Query.ExecSQL;
       End
       Else Begin
           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add('SELECT SUM(VALOR) AS VALOR, COD_LANCAIXA FROM LANCAIXACTA WHERE COD_LANCAIXA = :CODIGO GROUP BY COD_LANCAIXA');
           MDO.QConsulta.ParamByName('CODIGO').AsInteger:= XCodLancCaixa;
           MDO.QConsulta.Open;
           xValorTotal := MDO.QConsulta.FieldValues['VALOR'];

           MDO.QConsulta.Close;
           MDO.QConsulta.SQL.Clear;
           MDO.QConsulta.SQL.Add('SELECT COD_LANCAIXACTA, VALOR FROM LANCAIXACTA WHERE COD_LANCAIXA = :CODIGO ');
           MDO.QConsulta.ParamByName('CODIGO').AsInteger:= XCodLancCaixa;
           MDO.QConsulta.Open;

           if not MDO.QConsulta.IsEmpty then
           begin
               MDO.Transac.CommitRetaining;
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add('UPDATE LANCAIXACTA SET VALOR = :VALOR WHERE COD_LANCAIXACTA = :CODIGO');
               while not MDO.QConsulta.Eof do
               begin
                   xPorcentagem := MDO.QConsulta.FieldValues['VALOR'] * 100 / xValorTotal;
                   xNewValor := xValor * xPorcentagem / 100;
                   MDO.Query.ParamByName('VALOR').AsFloat := xNewValor;
                   MDO.Query.ParamByName('CODIGO').AsInteger:= MDO.QConsulta.FieldValues['COD_LANCAIXACTA'];
                   MDO.Query.ExecSQL;
                   MDO.QConsulta.Next;
               end;
           End;
       End;
       MDO.Transac.CommitRetaining;
   Except
       MDO.Transac.RollbackRetaining;
       MessageDlg('Falha ao efetuar distribuição de valores entre as contas', mtWarning, [mbOK], 0);
   End;

   Try
       MDO.Transac.CommitRetaining;

       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' select loja.PROXDOCCTAREC from loja where loja.cod_loja = :CodigoLoja ');
       MDO.QConsulta.ParamByName('CodigoLoja').AsString := FMenu.LCODLOJA.Caption;
       MDO.QConsulta.Open;
       If MDO.QConsulta.IsEmpty Then
           FMenu.XCOUNRECORD := 1
       Else
           FMenu.XCOUNRECORD := MDO.QConsulta.FieldByName('PROXDOCCTAREC').AsInteger;


       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' Update loja set loja.PROXDOCCTAREC = :PROXDOCCTAREC where loja.cod_loja = :CodigoLoja');
       MDO.Query.ParamByName('PROXDOCCTAREC').AsInteger := FMenu.XCOUNRECORD + 1;
       MDO.Query.ParamByName('CodigoLoja').AsString := FMenu.LCODLOJA.Caption;
       MDO.Query.ExecSQL;

       MDO.Transac.CommitRetaining;
   Except
       MDO.Transac.RollbackRetaining
   End;

   XDocCreditoCliente:=DBDoc.Text;

   If DBTIPO.Text='Crédito'
   Then Begin
       //Lança controle de creditos de cliente/fornecedor
       If DBTIPOCAI.Text='E'
       Then Begin
           If UpperCase(CBCREDITO.Text)='CLIENTE'
           Then Begin
               //LANÇA CREDITO PARA CLIENTE
               FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', IntToStr(XCod_LancamentoCX), '');
               FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCOD_PESSOACRED), '');
               If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '')=True
               Then Begin
                   DMPESSOA.TPessoa.Edit;
                   DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency+DBVALOR.ValueNumeric;
                   DMPESSOA.TPessoa.Post;
                   LanCredito(DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsInteger, XCod_LancamentoCX, 'CAIXA', 'CLI', 'E', XDocCreditoCliente, DateToStr(Date()), DBVALOR.ValueNumeric);
                   XDocCreditoCliente:='';
               End
               Else Begin
                   Mensagem('INFORMAÇÃO', 'O Crédito de antecipações não foi atribuido ao cliente', '', 1, 1, False, 'a');
               End;
           End
           Else Begin
               //LANÇA CREDITO PARA FORNECEDOR
               FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', IntToStr(XCod_LancamentoCX), '');
               FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'cod_fornec', IntToStr(XCOD_PESSOACRED), '');
               If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsString, '')=True
               Then Begin
                   DMPESSOA.TPessoa.Edit;
                   DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency-DBVALOR.ValueNumeric;
                   DMPESSOA.TPessoa.Post;
                   LanCredito(DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsInteger, XCod_LancamentoCX, 'CAIXA', 'FOR', 'S', XDocCreditoCliente, DateToStr(Date()), DBVALOR.ValueNumeric);
                   XDocCreditoCliente:='';
               End
               Else Begin
                   Mensagem('INFORMAÇÃO', 'O Crédito de antecipações não foi atribuido ao fornecedor', '', 1, 1, False, 'a');
               End;
           End;
       End
       Else Begin
           If UpperCase(CBCREDITO.Text)='CLIENTE'
           Then Begin
               //LANÇA CREDITO PARA CLIENTE
               FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', IntToStr(XCod_LancamentoCX), '');
               FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', IntToStr(XCOD_PESSOACRED), '');
               If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '')=True
               Then Begin
                   DMPESSOA.TPessoa.Edit;
                   DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency-DBVALOR.ValueNumeric;
                   DMPESSOA.TPessoa.Post;
                   LanCredito(DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsInteger, XCod_LancamentoCX, 'CAIXA', 'CLI', 'S', XDocCreditoCliente, DateToStr(Date()), DBVALOR.ValueNumeric);
                   XDocCreditoCliente:='';
               End
               Else Begin
                   Mensagem('INFORMAÇÃO', 'O Crédito de antecipações não foi atribuido ao cliente', '', 1, 1, False, 'a');
               End;
           End
           Else Begin
               //LANÇA CREDITO PARA FORNECEDOR
               FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANC', IntToStr(XCod_LancamentoCX), '');
               FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'cod_fornec', IntToStr(XCOD_PESSOACRED), '');
               If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsString, '')=True
               Then Begin
                   DMPESSOA.TPessoa.Edit;
                   DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency+DBVALOR.ValueNumeric;
                   DMPESSOA.TPessoa.Post;
                   LanCredito(DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsInteger, XCod_LancamentoCX, 'CAIXA', 'FOR', 'E', XDocCreditoCliente, DateToStr(Date()), DBVALOR.ValueNumeric);
                   XDocCreditoCliente:='';
               End
               Else Begin
                   Mensagem('INFORMAÇÃO', 'O Crédito de antecipações não foi atribuido ao fornecedor', '', 1, 1, False, 'a');
               End;
           End;
       End;
       DMPESSOA.TransacPessoa.CommitRetaining;
       DMCAIXA.IBT.CommitRetaining;
       //Edmar - 30/01/2015 - TransReg comentado pois ocorria um erro, agora é feito o commit manualmente
		//TransReg(DMCAIXA.TLanCaixa, DMCAIXA.IBT, 'g');
       DMMACS.Transaction.CommitRetaining;
   End;
   //SE TIPO = TRANSFERENCIA BANCÁRIA O SISTEMA DEVE EFETUAR A TRANSFERENCIA
   If UpperCase(DBTIPO.Text)='T. BANCO'
   Then Begin
	 	If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTATRANSFBANCO').AsInteger, DBHISTORICO.Text, DBVALOR.ValueNumeric , 'CX', XCod_LancamentoCX, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'DEP. AUTO', 'S', DateToStr(Date()), '', DateToStr(Date()), '1', EdDtRefer.Text)=True
       Then Begin
           MDO.Transac.CommitRetaining;
           DMBANCO.IBT.CommitRetaining;
           DMCAIXA.IBT.CommitRetaining;
       	//Edmar - 30/01/2015 - TransReg comentado pois ocorria um erro, agora é feito o commit manualmente
    		//TransReg(DMCAIXA.TLanCaixa, DMCAIXA.IBT, 'g');
       	DMMACS.Transaction.CommitRetaining;
       End
       Else Begin
           DMBANCO.IBT.RollbackRetaining;
           DMCAIXA.IBT.RollbackRetaining;
           MDO.Transac.RollbackRetaining;
       End;
   End
   Else Begin
    	If UpperCase(DBTIPO.Text)= 'T. CAIXA'
    	Then Begin
 			If LanCaixa (XCOD_CONTABANCO, DateToStr(Date()), DMMACS.TLoja.FieldByName('PLNCTATRANSFCXCX').AsInteger, 'Transf Cx -> Cx '+ FMenu.EdCaixa.Text,  DBVALOR.ValueNumeric , 'TCXCX', XCod_LancamentoCX, DBTIPO.Text, 'E', DBDoc.Text, Date(), '1')=True
       	Then Begin
           	DMBANCO.IBT.CommitRetaining;
               MDO.Transac.CommitRetaining;
           	DMCAIXA.IBT.CommitRetaining;
       		//Edmar - 30/01/2015 - TransReg comentado pois ocorria um erro, agora é feito o commit manualmente
				//TransReg(DMCAIXA.TLanCaixa, DMCAIXA.IBT, 'g');
               DMMACS.Transaction.CommitRetaining;
       	End
       	Else Begin
           	DMBANCO.IBT.RollbackRetaining;
               MDO.Transac.RollbackRetaining;
				DMCAIXA.IBT.RollbackRetaining;
       	End;
           XCOD_CONTABANCO:=-1;
           FMenu.XCOD_LANCAIXA:=-1;
    	End
    	Else Begin
    		//TransReg(DMCAIXA.TLanCaixa, DMCAIXA.IBT, 'g');
    	End;
	End;
     //Verifica para abrir gaveta
	If UpperCase(DBTIPO.Text)= 'CARTEIRA'
   Then Begin
     	ecfOpenGaveta;
     	DMCAIXA.IBT.CommitRetaining;
       //Edmar - 30/01/2015 - TransReg comentado pois ocorria um erro, agora é feito o commit manualmente
		//TransReg(DMCAIXA.TLanCaixa, DMCAIXA.IBT, 'g');
       DMMACS.Transaction.CommitRetaining;
   End;

     dbs(False);

     // aTUALIZA VIEW DE CONSULTA FILTRANDO POR LOJA
     FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', FMenu.LABCAIXA.Caption, ' ORDER BY COD_LANC DESC');
     //Efetua Calculo de Saudos de cx
     Saldos;
     FrmBusca.EDCodigo.Text:='';
     FrmBusca.EdDescricao.Text:='';
     lbCliFor.Caption:='';
end;

procedure TFLancCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  inherited;
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
    //botão gravar
    If Key=vk_f5 Then
    	 BtnGravar.Click;
    //botão cancelar
    If Key=vk_f7 Then
    	 BtnCancelar.Click;
end;

procedure TFLancCaixa.FrmBusca1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If Frmbusca.EDCodigo.Text<>''
       Then Begin
	       If SelectRegistro('PLNCTA', 'CLASSIFICACAO', Frmbusca.EDCodigo.Text) = True
	       Then Begin //Slecionou o registro procurado
          		DMCAIXA.TLanCaixa.Edit;
	       		DMCAIXA.TLanCaixa.FieldByName('COD_PLNCTAFIL').AsInteger:=DMMACS.TSelect.FieldByName('COD_PLNCTA').AsInteger;
           	Frmbusca.EDCodigo.text:=DMMACS.TSelect.FieldByName('CLASSIFICACAO').AsString;
           	Frmbusca.EdDescricao.Text:=DMMACS.TSelect.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
           	DMCAIXA.TLanCaixa.Edit;
       		DMCAIXA.TLanCaixa.FieldByName('COD_PLNCTAFIL').AsString:='';
           	Frmbusca.EDCodigo.Text:='';
           	Frmbusca.EdDescricao.Text:='';
          End;
       End
       Else Begin
          	DMCAIXA.TLanCaixa.Edit;
      		DMCAIXA.TLanCaixa.FieldByName('COD_PLNCTAFIL').AsString:='';
          	Frmbusca.EDCodigo.Text:='';
          	Frmbusca.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFLancCaixa.FrmBuscaBTNOPENClick(Sender: TObject);
Var
	Oper: Char;
begin
  inherited;
   //verifica o tipo do operador para selecionar contas
   If DBTIPOCAI.Text='E'
   Then Begin
       Oper:='C';
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'C';
   End;
   If DBTIPOCAI.Text='S'
   Then Begin
       Oper:='D';
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'D';
   End;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
  	If DBTIPOCAI.Text<>'' Then
		filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO')
	Else
		filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

    If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
    Then Begin
        XCod_Conta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
        Frmbusca.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
        Frmbusca.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
    End
    Else Begin
        XCod_Conta:=-1;
        Frmbusca.EdDescricao.Text:='';
        Frmbusca.EDCodigo.text:='';
	 End;
end;

procedure TFLancCaixa.FrmBuscaBTNMINUSClick(Sender: TObject);
begin
  inherited;
  	DMCAIXA.TLanCaixa.Edit;
	DMCAIXA.TLanCaixa.FieldByName('COD_PLNCTAFIL').AsString:='';
  	Frmbusca.EDCodigo.Text:='';
  	Frmbusca.EdDescricao.Text:='';
end;

procedure TFLancCaixa.DBHISTORICOEnter(Sender: TObject);
begin
  inherited;
	If DBHISTORICO.Text='' Then//caso ainda não tenha sido informado algum histórico, ele pega do plano de contas
       DBHISTORICO.Text:=FrmBusca.EdDescricao.Text;
   If DBTIPO.Text='Crédito'
   Then Begin
       If UpperCase(CBCREDITO.Text)='CLIENTE' then
           DBHISTORICO.Text:='Antec. Crédito: '+DMPESSOA.WCliente.FieldByName('NOME').AsString+' '+DBHISTORICO.Text
       else
           DBHISTORICO.Text:='Antec. Crédito: '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString+' '+DBHISTORICO.Text;
   End;
end;

procedure TFLancCaixa.RelAgrupadopordatas1Click(Sender: TObject);
begin
  inherited;
   FMenu.TIPOREL:='AGDATA';
   FMenu.TITULOREL:='Relatório de Caixa (Agrupados por data)';
   AbrirForm(TFRelCaixa, FRelCaixa, 0);
end;

procedure TFLancCaixa.RelAgrupadoporCaixas1Click(Sender: TObject);
begin
  inherited;
   FMenu.TIPOREL:='AGCAIXA';
   FMenu.TITULOREL:='Relatório de Caixa (Agrupados por caixas)';
   AbrirForm(TFRelCaixa, FRelCaixa, 0);   
end;

procedure TFLancCaixa.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
	 //EFETUA CONTROLE DE ACESSO
    If ControlAccess('RCAIXA', 'M')=False Then
  		Exit;

     PMRELCAIXA.Popup(BtnRelatorio.Left+129, 186);
end;

procedure TFLancCaixa.PChequeExit(Sender: TObject);
begin
  inherited;
{	If PCheque.Visible=True Then
       PCheque.SetFocus;}
end;

procedure TFLancCaixa.EdDocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if RGFiltro.ItemIndex = 0
   then begin
	    If Key=Vk_Return Then
   	    FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', '', '(COD_ABCAIXA='+#39+FMenu.LABCAIXA.Caption+#39+') AND ((upper(DOC) like upper('+#39+EdDoc.Text+#39+'))) ORDER BY DOC');
   end
   else begin
       If Key=Vk_Return Then
   	    FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', '', '((upper(DOC) like upper('+#39+EdDoc.Text+#39+'))) ORDER BY DOC');
   end;
	If Key=Vk_Escape Then
   	FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', '', ' (COD_ABCAIXA='+#39+FMenu.LABCAIXA.Caption+#39+') ORDER BY DOC');

end;

procedure TFLancCaixa.EdHistKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if RGFiltro.ItemIndex = 0
   then begin
	    If Key=Vk_Return Then
   	    FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', '', '(COD_ABCAIXA='+#39+FMenu.LABCAIXA.Caption+#39+') AND ((upper(HISTORICO) like upper('+#39+EdHist.Text+'%'+#39+'))) ORDER BY HISTORICO');
   end
   else begin
       If Key=Vk_Return Then
           FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', '', '((upper(HISTORICO) like upper('+#39+EdHist.Text+'%'+#39+'))) ORDER BY HISTORICO');
   end;
	If Key=Vk_Escape Then
   	FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', '', ' (COD_ABCAIXA='+#39+FMenu.LABCAIXA.Caption+#39+') ORDER BY HISTORICO');

end;

procedure TFLancCaixa.DBTIPOExit(Sender: TObject);
begin
  inherited;
   //Controla sistema de credito de clientes e fornecedores
   If DBTIPO.Text='Crédito'
   Then Begin
       PCredito.Visible:=True;
       PCredito.BringToFront;
       CBCREDITO.SetFocus;
   End
   Else Begin
       XCOD_PESSOACRED:=-1;
   End;

   //controla visualização de componentes referentes a escolha e visualização da cta corrente
	If (DBTIPO.Text='T. Banco')
   Then Begin
       FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', ' (cod_ctacor > 0) and ((inativo=''0'') or (inativo is null)) ');
       DBTIPOCAI.Text:='S';
       PBanco.Enabled:=True;
       PBanco.Visible:=TRUE;
       PBanco.BringToFront;
       DBGCTA.SetFocus;
       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTATRANSFBANCO').AsString, '');
		XCod_Conta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	Frmbusca.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
      	Frmbusca.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
   End
   Else Begin
       PBanco.Enabled:=False;
   End;
   //controla visualização de componentes referentes a escolha e visualização da cxs
	If (DBTIPO.Text='T. Caixa')
   Then Begin
       FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', '', '', '');
       DBTIPOCAI.Text:='S';
       PCaixaTransf.Enabled:=True;
       PCaixaTransf.Visible:=TRUE;
       PCaixaTransf.BringToFront;
       DBGCaixaTransf.SetFocus;
       FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTATRANSFCAIXA').AsString, '');
  		XCod_Conta :=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	Frmbusca.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
      	Frmbusca.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
   End
   Else Begin
       PCaixaTransf.Enabled:=False;
   End;

end;

procedure TFLancCaixa.PBancoExit(Sender: TObject);
begin
  inherited;
	If PBanco.Visible=True Then
       DBGCTA.SetFocus;
end;

procedure TFLancCaixa.DBGCTAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If Not DMBANCO.WCtaCor.IsEmpty Then//'se banco não estiver vazio
       	XCOD_CONTABANCO:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
       Else
           XCOD_CONTABANCO:=-1;

       PBanco.Visible:=False;
       PBanco.Enabled:=False;
       DBVALOR.SetFocus;
   End;
end;

procedure TFLancCaixa.FrmBuscaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmBusca.EDCodigoKeyPress(Sender, Key);

end;

procedure TFLancCaixa.DBDocEnter(Sender: TObject);
begin
  inherited;
   If DBTIPO.Text='Crédito'
   Then Begin
       If DBTIPOCAI.Text='E' Then
           DBHISTORICO.Text:='Cli: '+DMPESSOA.WCliente.FieldByName('cod_interno').AsString;
       If DBTIPOCAI.Text='S' Then
           DBHISTORICO.Text:='Cli: '+DMPESSOA.WFornecedor.FieldByName('cod_interno').AsString;
   End;
end;

procedure TFLancCaixa.CBCREDITOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   If Key=#13
   Then Begin
       //Se opção é de credito deve selecionar cliente ou fornecedor
       If UpperCase(CBCREDITO.Text)='CLIENTE'
       Then Begin
           FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
           If AbrirForm(TFCliente, FCliente, 1)='Selected'
           Then Begin
               XCOD_PESSOACRED:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
               lbCliFor.Caption:='Cli.: '+DMPESSOA.WCliente.FieldByName('NOME').AsString;
           End
           Else Begin
               XCOD_PESSOACRED:=-1;
           End;
       End
       Else Begin
           FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', ' ORDER BY NOME');//LIBERA TODOS OS REGISTROS PARA CONSULTA
           If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
           Then Begin
               XCOD_PESSOACRED:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
               lbCliFor.Caption:='Forn.: '+DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
           End
           Else Begin
               XCOD_PESSOACRED:=-1;
           End;
       End;
       PCredito.Visible:=False;
       DBVALOR.SetFocus;
   End;
   Key:=#0;
end;

procedure TFLancCaixa.DBGCaixaTransfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If Not DMCAIXA.TCaixa.IsEmpty Then//'se banco não estiver vazio
       	XCOD_CONTABANCO:=DMCAIXA.TCaixa.FieldByName('COD_CAIXA').AsInteger
       Else
           XCOD_CONTABANCO:=-1;  
       PCaixaTransf.Visible:=False;
       PCaixaTransf.Enabled:=False;
       DBVALOR.SetFocus;
   End;
end;

procedure TFLancCaixa.BitBtn15Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ABREGAVETA', 'M')=False Then
  		Exit;
	//Abre gaveta
   ecfOpenGaveta;
end;

//verifica o lançamento no caixa para ver se é com cheque ou não, se foi pago com cheque libera para que seja transferido para outro caixa
procedure TFLancCaixa.MovimentarCheque1Click(Sender: TObject);
begin
  inherited;
   if not (DMCAIXA.WLancCaixa.FieldByName('TIPO').AsString <> 'Cheque') or (DMCAIXA.WLancCaixa.FieldByName('TIPO').AsString <> 'CHEQUE')
   then begin
       Mensagem('  I N F O R M A Ç Ã O  ', 'Este lançamento não foi pago em cheque portanto não pode ser transferido!', '', 1,1, false, 'I');
   end
   else begin
       FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       xTransfereTodosCheques := False;
       PCaixa.Visible:=True;
       PCaixa.BringToFront; 
   end;
end;

procedure TFLancCaixa.BtnCancCaixaClick(Sender: TObject);
begin
  inherited;
   PCaixa.Visible:=false;
   PCaixa.SendToBack;
end;

//seleciona o caixa para a transferencia de lançamento de cheque
procedure TFLancCaixa.BtnSelecionarClick(Sender: TObject);
begin
  inherited;
   If DMCAIXA.TCaixa.FieldByName('COD_CAIXA').AsString = FMenu.LCODCAIXA.Caption
   Then Begin
       MessageDlg('O caixa de destino selecionado é o mesmo caixa de origem.'+#13+#10+'A transferência foi cancelada.', mtWarning, [mbOK], 0);
       Exit;
   End;

   DMCAIXA.TAlx.Close;
   DMCAIXA.TAlx.SQL.Clear;
   DMCAIXA.TAlx.SQL.Add('SELECT * FROM ABCAIXA WHERE (COD_CAIXA=:CODCAIXA) AND (FECHADO='+#39+'N'+#39+')');
   DMCAIXA.TAlx.ParamByName('CODCAIXA').AsString:=DMCAIXA.TCaixa.FieldByName('COD_caixa').AsString;
   DMCAIXA.TAlx.Open;

   If DMCAIXA.TAlx.IsEmpty
   Then Begin
       Mensagem('  I N F O R M A Ç Ã O  ', 'Este caixa encontra-se fechado!', '', 1,1, false, 'I');
   End
   else begin
        XCOD_CONTABANCO:=DMCAIXA.TAlx.FieldByName('COD_ABCAIXA').AsInteger;

        DMCAIXA.TAlx.Close;
        DMCAIXA.TAlx.SQL.Clear;
        if not xTransfereTodosCheques then
        begin//transfere apenas um cheque
           DMCAIXA.TAlx.SQL.Add(' SELECT * FROM LANCAIXA ');
        	DMCAIXA.TAlx.SQL.Add(' WHERE LANCAIXA.COD_LANC = '+(DMCAIXA.WLancCaixa.FieldByName('COD_LANC').AsString));
        end
        else begin//transfere todos os cheques presentes no caixa em questão
        	DMCAIXA.TAlx.SQL.Add(' SELECT LANCAIXA.* FROM LANCAIXA ');
        	DMCAIXA.TAlx.SQL.Add(' LEFT JOIN ABCAIXA ON LANCAIXA.COD_ABCAIXA = ABCAIXA.COD_ABCAIXA ');
        	DMCAIXA.TAlx.SQL.Add(' WHERE (LANCAIXA.TIPO = ''CHEQUE'') AND (ABCAIXA.COD_CAIXA = :CAIXA) AND (ABCAIXA.FECHADO = ''N'') ');
           DMCAIXA.TAlx.ParamByName('CAIXA').AsString := FMenu.LCODCAIXA.Caption;
        end;
        DMCAIXA.TAlx.Open;
        DMCAIXA.TAlx.First;

        if DMCAIXA.TAlx.IsEmpty then
        begin
        	Mensagem(' I N F O R M A Ç Õ E S ', 'O caixa não possuí cheques para serem transferidos.', '', 1, 1, False, 'I');
           PCaixa.Visible := False;
           PCaixa.SendToBack;
           Exit;
        end;

        while not DMCAIXA.TAlx.Eof do
        begin
        	 XCodLancCaixa:=(DMCAIXA.TAlx.FieldByName('COD_GERADOR').AsInteger);

            DMFINANC.TAlx.Close;
            DMFINANC.TAlx.SQL.Clear;
            DMFINANC.TAlx.SQL.Add(' SELECT * FROM MOVBANCO ');
            DMFINANC.TAlx.SQL.Add(' LEFT JOIN CHEQUEREC ON MOVBANCO.COD_MOVBANCO = CHEQUEREC.COD_MOVBANCO ');
            DMFINANC.TAlx.SQL.Add(' WHERE (CHEQUEREC.COD_CHEQUEREC = :CODCHEQUE)');
            DMFINANC.TAlx.ParamByName('CODCHEQUE').AsInteger:= XCodLancCaixa;
            DMFINANC.TAlx.Open;

            If DMFINANC.TAlx.FieldByName('FECH').AsString = 'S'
            Then Begin
               Mensagem('  I N F O R M A Ç Ã O  ', 'O cheque '+DMFINANC.TAlx.FieldByName('NUMCHEQUE').AsString+' já foi movimentado e não poderá ser transferido de caixa!', '', 1,1, false, 'I');
            End
            else begin
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add('update lancaixa set lancaixa.cod_abcaixa =:CODABCAIXA ');
               MDO.Query.SQL.Add('where lancaixa.cod_lanc = '+(DMCAIXA.TAlx.FieldByName('COD_LANC').AsString));
               MDO.Query.ParamByName('CODABCAIXA').AsInteger:=XCOD_CONTABANCO;
               MDO.Query.ExecSQL;
            end;
            DMCAIXA.TAlx.Next;
        end;

        try
        	MDO.Transac.CommitRetaining;

        	Mensagem('  I N F O R M A Ç Ã O  ', 'Cheque transferido com sucesso!', '', 1,1, false, 'I');
        except
        	MDO.Transac.RollbackRetaining;
        end;
        //
        DMCAIXA.TLanCaixa.Close;
        DMCAIXA.TLanCaixa.SQL.Clear;
        DMCAIXA.TLanCaixa.SQL.Add('select * from lancaixa');
        DMCAIXA.TLanCaixa.Open;
        //
        DMCAIXA.WLancCaixa.Close;
        DMCAIXA.WLancCaixa.SQL.Clear;
        DMCAIXA.WLancCaixa.SQL.Add('select * from vwlancaixa');
        DMCAIXA.WLancCaixa.SQL.Add('where vwlancaixa.cod_abcaixa = :COD');
        DMCAIXA.WLancCaixa.SQL.Add('ORDER BY COD_LANC DESC');
        DMCAIXA.WLancCaixa.ParamByName('COD').AsString:=FMenu.LABCAIXA.Caption;
        DMCAIXA.WLancCaixa.Open;
        //
        PCaixa.Visible:=False;
        PCaixa.SendToBack;
   end;
end;
 // jonathan - Dia 28/04/2009 - Incluido conforme chamado 297
procedure TFLancCaixa.PorPeriodoClick(Sender: TObject);
begin
  //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCAIXA', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='RCAIXAPERIODO';
   FMenu.TITULOREL:='Relatório de Movimentação de Caixa por Período';
   AbrirForm(TFRelMovCaixa, FRelMovCaixa, 0);
end;

procedure TFLancCaixa.RelatrioporPerodo1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('RCAIXA', 'M')=False Then
  		Exit;

   FMenu.TIPOREL:='RCAIXAPERIODO';
   FMenu.TITULOREL:='Relatório de Movimentação de Caixa por Período';
   AbrirForm(TFRelMovCaixa, FRelMovCaixa, 0);
end;

procedure TFLancCaixa.RelatriodeLanamentos1Click(Sender: TObject);
begin
  inherited;
    //Paulo 04/04/2011: Abre a tela de filtro do relatório
    AbrirForm(TFRelLancContas, FRelLancContas, 1);
end;



procedure TFLancCaixa.EdValorLancKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
       //Paulo 04/07/2011: Filtraos lançamentos pelo valor 
       if RGFiltro.ItemIndex = 0
       then begin
           If Key=Vk_Return Then
               FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', '', '(COD_ABCAIXA='+#39+FMenu.LABCAIXA.Caption+#39+') AND (VALOR ='+#39+SubstituiCaracter(EdValorLanc.Text,',','.')+#39+') ORDER BY VALOR');
       end
       else begin
           If Key=Vk_Return Then
               FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', '', '(VALOR ='+#39+SubstituiCaracter(EdValorLanc.Text,',','.')+#39+') ORDER BY VALOR');
       end;
       If Key=Vk_Escape Then
           FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', '', ' (COD_ABCAIXA='+#39+FMenu.LABCAIXA.Caption+#39+') ORDER BY HISTORICO');
end;

procedure TFLancCaixa.CancelarLanamento1Click(Sender: TObject);
var
   XatAd:Boolean;
begin
  inherited;
       XatAd:=False;
       //Paulo 11/07/2011: Cancela lançamento de adiantamento
       If Mensagem('A T E N Ç Ã O', 'DESEJA EFETUAR O CANCELAMENTO DO ADIANTAMENTO DA ORDEM DE SERVIÇO:'+#13+'Nº '+DMCAIXA.WLancCaixa.FieldByName('DOC').AsString+'?'  , '', 2, 3, False, 'c')= 2
       Then Begin


           FiltraTabela(DMServ.TOrd, 'ORDEM', 'COD_ORDEM', DMCAIXA.WLancCaixa.FieldByName('COD_GERADOR').AsString, '');
           //filtra loja para capturar as configurações
           FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

           FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMServ.TOrd.FIELDBYNAME('COD_CLIENTE').AsString, '');
           If DMServ.TOrd.IsEmpty
           Then Begin
               MessageDlg('O Registro de ordem não foi encontrado', mtWarning, [mbOK], 0);
               Exit;
           End;

           //FILTRA LANÇAMENTO EM CAIXA E GERA OUTRO LANÇAMENTO DE ESTORNO EM CX
           DMCAIXA.TLanCaixa.Close;
           DMCAIXA.TLanCaixa.SQL.Clear;
           DMCAIXA.TLanCaixa.SQL.Add('SELECT * FROM LANCAIXA WHERE (TIPOGERADOR='+#39+'ADORDSERV'+#39+') AND (COD_LANC=:CODLANC)');
           DMCAIXA.TLanCaixa.ParamByName('CODLANC').AsInteger:=DMCAIXA.WLancCaixa.FieldByName('COD_LANC').AsInteger;
           DMCAIXA.TLanCaixa.Open;

           If Not DMCAIXA.TLanCaixa.IsEmpty
           Then Begin//se foi encontrado algum lançamento em caixa deve se realizar outro de estorno
               If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. Adiantamento de O.S. '+DMServ.TOrd.FieldByName('NUMERO').AsString+' Cli. '+DMPESSOA.WCliente.FieldByName('NOME').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'TADOS', DMServ.TOrd.FieldByName('COD_ORDEM').AsInteger, 'Carteira', 'S', 'EST'+DMServ.TOrd.FieldByName('NUMERO').AsString, Date(), '1')= True Then
               begin
                   //DMCAIXA.IBT.CommitRetaining;
                   MDO.Transac.CommitRetaining;
                   XatAd:=True;
               end
               Else
                   XatAd:=False;
           End;
           If XatAd=True
           Then Begin//Se foi possível cancelar/estornar todos os lançamentos realizados pelo pedido
               DMServ.TOrd.EDIT;
               DMServ.TOrd.FieldByName('VLRADIANTAMENTO').AsCurrency:=0;
               DMServ.TOrd.Post;
               DMServ.IBT.CommitRetaining;
               //FormActivate(Sender);
               AtualizaInfoCaixa;
           End;
       End;

end;

procedure TFLancCaixa.PMChequeChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  inherited;
       if DMCAIXA.WLancCaixa.FieldByName('TIPOGERADOR').AsString = 'ADORDSERV' then
       CancelarLanamento1.Visible:=True
    else
       CancelarLanamento1.Visible:=false;
end;

procedure TFLancCaixa.DBTIPOCAIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    key:=#0;
end;

procedure TFLancCaixa.ColorEditFloat1Enter(Sender: TObject);
begin
  inherited;
   If DBTIPO.Text='Crédito'
   Then Begin
       If DBTIPOCAI.Text='E' Then
           DBHISTORICO.Text:='Cli: '+DMPESSOA.WCliente.FieldByName('cod_interno').AsString;
       If DBTIPOCAI.Text='S' Then
           DBHISTORICO.Text:='Cli: '+DMPESSOA.WFornecedor.FieldByName('cod_interno').AsString;
   End;
end;

procedure TFLancCaixa.DBGLANCADOSDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	If DMCAIXA.WLancCaixa.FieldByName('TIPCAI').AsString='X' Then
		DBGLANCADOS.Canvas.Font.Color := clBlue;
	If DMCAIXA.WLancCaixa.FieldByName('TIPCAI').AsString='S' Then
		DBGLANCADOS.Canvas.Font.Color := clRed;
	If (DMCAIXA.WLancCaixa.FieldByName('TIPCAI').AsString<>'X') AND (DMCAIXA.WLancCaixa.FieldByName('TIPCAI').AsString<>'S')  Then
  		DBGLANCADOS.Canvas.Font.Color := clBlack;
   DBGLANCADOS.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFLancCaixa.BtnTrocaCaixaClick(Sender: TObject);
begin
  inherited;
  		//Paulo 27/02/2012: Atualiza o caixa selecionado
		FMenu.EdCaixa.Text:=DMCAIXA.TCaixaPAcess.FieldByName('DESCRICAO').AsString;
       FMenu.LCODCAIXA.Caption:=DMCAIXA.TCaixaPAcess.FieldByName('COD_CAIXA').AsString;
       FMenu.LCaixaLogado.Caption:=DMCAIXA.TCaixaPAcess.FieldByName('DESCRICAO').AsString;

       if DMCAIXA.VerifAbCaixa = False then
       begin
       	Mensagem('ATENÇÃO', 'O Caixa selecionado não se encontra aberto!', '', 1,1, false, 'i');
           Exit;
       end else
       	AtualizaInfoCaixa;
       	//FormActivate(Sender);
end;

procedure TFLancCaixa.DBGLANCADOSKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
		If (shift=[ssCtrl]) and (key = 83)
       Then Begin
         Try
           if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
               ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
           end;
           DBGLANCADOS.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\LanCaixa.lgm');
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
         Except
               Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
         End;
       End;
end;

procedure TFLancCaixa.EdDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if RGFiltro.ItemIndex = 0
   then begin
	    If Key=Vk_Return
       Then Begin
           DMCAIXA.WLancCaixa.Close;
           DMCAIXA.WLancCaixa.SQL.Clear;
           DMCAIXA.WLancCaixa.SQL.Add(' Select * from vwlancaixa Where (vwlancaixa.dtlanc=:Data) ');
           DMCAIXA.WLancCaixa.SQL.Add('  order By vwlancaixa.dtlanc ');
           DMCAIXA.WLancCaixa.ParamByName('Data').AsDate:=StrToDate(EdData.Text);
           DMCAIXA.WLancCaixa.Open;
       End;
   end
   else begin
       If Key=Vk_Return Then
   	    FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', '', '(dtlanc = '+#39+EdData.Text+#39+') ORDER BY dtlanc');
   end;
	If Key=Vk_Escape Then
   	FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', '', ' (COD_ABCAIXA='+#39+FMenu.LABCAIXA.Caption+#39+') ORDER BY dtlanc');

end;

procedure TFLancCaixa.RelatriodeVendaseRecebimento1Click(Sender: TObject);
begin
  inherited;
   FMenu.TIPOREL:='CONTROLEDIAMESVENDSERV';
   AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFLancCaixa.BalanceteMensal1Click(Sender: TObject);
begin
  inherited;
//	FMenu.TIPOREL:='RELBALANCETE';
//   AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFLancCaixa.FluxodeCaixaCompleto1Click(Sender: TObject);
begin
  inherited;
	FMenu.TIPOREL:='FLUXOCAIXACOMPLETO';
   AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFLancCaixa.ListagemdeLanamentosporCaixa1Click(Sender: TObject);
begin
  inherited;
	FMenu.TIPOREL := 'LISTLANCPORCAIXA';
   AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFLancCaixa.AtualizaInfoCaixa;
var
   XTotal,XVlrEnt, XVlrSaidas:Real;
begin
	 DMCAIXA.IBT.CommitRetaining;
    DMPESSOA.TransacPessoa.CommitRetaining;
    DMMACS.Transaction.CommitRetaining;
    //Filtra Lançamentos por Empresa
    FiltraTabela(DMCAIXA.WLancCaixa, 'VWLANCAIXA', 'COD_ABCAIXA', FMenu.LABCAIXA.Caption, ' ORDER BY COD_LANC DESC');
    //Efetua Calculo de Saudos de cx
    Saldos;
    XCOD_PESSOACRED:=-1;
	 XCODPKMESTRE:=-1;
    //Edmar - 18/07/2014 - Novo sql usado para trazer o valor correto dos cheques de entrada
    DMPESSOA.TALX1.Close;
    DMPESSOA.TALX1.SQL.Clear;
    DMPESSOA.TALX1.SQL.Add('SELECT SUM(LANCAIXA.VALOR) ENTRADA FROM LANCAIXA WHERE LANCAIXA.COD_ABCAIXA = :CODABCAIXA AND (LANCAIXA.TIPO = ''CHEQUE'' OR LANCAIXA.TIPO = ''cheque'') AND (LANCAIXA.tipcai = ''E'')');
    DMPESSOA.TALX1.ParamByName('CODABCAIXA').AsString := FMenu.LABCAIXA.Caption;
    DMPESSOA.TALX1.Open;
	 XVlrEnt := DMPESSOA.TALX1.FieldByName('ENTRADA').AsCurrency;

    //Edmar - 18/07/2014 - Novo sql usado para trazer o valor correto dos cheques de saida
    DMPESSOA.TALX1.Close;
    DMPESSOA.TALX1.SQL.Clear;
    DMPESSOA.TALX1.SQL.Add('SELECT SUM(LANCAIXA.VALOR) SAIDA FROM LANCAIXA WHERE LANCAIXA.COD_ABCAIXA = :CODABCAIXA AND (LANCAIXA.TIPO = ''CHEQUE'' OR LANCAIXA.TIPO = ''cheque'') AND (LANCAIXA.tipcai = ''S'')');
    DMPESSOA.TALX1.ParamByName('CODABCAIXA').AsString := FMenu.LABCAIXA.Caption;
    DMPESSOA.TALX1.Open;
    XVlrSaidas := DMPESSOA.TALX1.FieldByName('SAIDA').AsCurrency;

    if XVlrEnt > XVlrSaidas then
       XTotal := XVlrEnt - XVlrSaidas
    else
       XTotal := XVlrSaidas - XVlrEnt;
    LVlrCheque.Caption:=FormatFloat('0.00', XTotal);

    //Paulo 12/09/2011: Traz a soma de outros somente entradas
    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    DMPESSOA.TALX.SQL.Add('select SUM(VWLANCAIXA.VALOR) as SOMA from vwlancaixa ');
    DMPESSOA.TALX.SQL.Add('where ((vwlancaixa.tipo <> :TIPO1) and (vwlancaixa.tipo <> :TIPO2)');
    DMPESSOA.TALX.SQL.Add('and(vwlancaixa.tipo <> :TIPO3) and (vwlancaixa.tipo <> :TIPO4))');
    DMPESSOA.TALX.SQL.Add('and vwlancaixa.cod_abcaixa = :CODABCAIXA');
    DMPESSOA.TALX.SQL.Add('and vwlancaixa.tipcai = :TIPOCAI');
    DMPESSOA.TALX.ParamByName('TIPO1').AsString:='CHEQUE';
    DMPESSOA.TALX.ParamByName('TIPO2').AsString:='Cheque';
    DMPESSOA.TALX.ParamByName('TIPO3').AsString:='CARTÃO';
    DMPESSOA.TALX.ParamByName('TIPO4').AsString:='Cartão';
    DMPESSOA.TALX.ParamByName('CODABCAIXA').AsString:=FMenu.LABCAIXA.Caption;
    DMPESSOA.TALX.ParamByName('TIPOCAI').AsString:='E';
    DMPESSOA.TALX.Open;
    XVlrEnt:= DMPESSOA.TALX.FieldByName('SOMA').AsCurrency;

    //Paulo 12/09/2011: Traz a soma de outros somente saídas
    DMPESSOA.TALX1.Close;
    DMPESSOA.TALX1.SQL.Clear;
    DMPESSOA.TALX1.SQL.Add('select SUM(VWLANCAIXA.VALOR) as SOMA from vwlancaixa ');
    DMPESSOA.TALX1.SQL.Add('where ((vwlancaixa.tipo <> :TIPO1) and (vwlancaixa.tipo <> :TIPO2)');
    DMPESSOA.TALX1.SQL.Add('and(vwlancaixa.tipo <> :TIPO3) and (vwlancaixa.tipo <> :TIPO4))');
    DMPESSOA.TALX1.SQL.Add('and vwlancaixa.cod_abcaixa = :CODABCAIXA');
    DMPESSOA.TALX1.SQL.Add('and vwlancaixa.tipcai = :TIPOCAI');
    DMPESSOA.TALX1.ParamByName('TIPO1').AsString:='CHEQUE';
    DMPESSOA.TALX1.ParamByName('TIPO2').AsString:='Cheque';
    DMPESSOA.TALX1.ParamByName('TIPO3').AsString:='CARTÃO';
    DMPESSOA.TALX1.ParamByName('TIPO4').AsString:='Cartão';
    DMPESSOA.TALX1.ParamByName('CODABCAIXA').AsString:=FMenu.LABCAIXA.Caption;
    DMPESSOA.TALX1.ParamByName('TIPOCAI').AsString:='S';
    DMPESSOA.TALX1.Open;
    XVlrSaidas:= DMPESSOA.TALX1.FieldByName('SOMA').AsCurrency;

    //Paulo 12/09/2011: Subtrai os valores de entrada e saida e mostra na label
    if XVlrEnt > XVlrSaidas then
       XTotal := XVlrEnt - XVlrSaidas
    else
       XTotal := XVlrSaidas - XVlrEnt;

    LVlrOutros.Caption:=FormatFloat('0.00', XTotal);

    //Paulo 12/09/2011: Soma os valores de cartão somente entrada
    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    DMPESSOA.TALX.SQL.Add('select SUM(VWLANCAIXA.VALOR) as SOMA from vwlancaixa ');
    DMPESSOA.TALX.SQL.Add('where ((vwlancaixa.tipo = :TIPO1) or (vwlancaixa.tipo = :TIPO2))');
    DMPESSOA.TALX.SQL.Add('and vwlancaixa.cod_abcaixa = :CODABCAIXA');
    DMPESSOA.TALX.SQL.Add('and vwlancaixa.estru = :EST');
    DMPESSOA.TALX.SQL.Add('and vwlancaixa.tipcai = :TIPOCAI');
    DMPESSOA.TALX.ParamByName('TIPO1').AsString:='CARTÃO';
    DMPESSOA.TALX.ParamByName('TIPO2').AsString:='Cartão';
    DMPESSOA.TALX.ParamByName('CODABCAIXA').AsString:=FMenu.LABCAIXA.Caption;
    DMPESSOA.TALX.ParamByName('EST').AsInteger:=1;
    DMPESSOA.TALX.ParamByName('TIPOCAI').AsString:='E';
    DMPESSOA.TALX.Open;
    XVlrEnt:= DMPESSOA.TALX.FieldByName('SOMA').AsCurrency;

    //Paulo 12/09/2011: Soma os valores de cartão somente saídas
    DMPESSOA.TALX1.Close;
    DMPESSOA.TALX1.SQL.Clear;
    DMPESSOA.TALX1.SQL.Add('select SUM(VWLANCAIXA.VALOR) as SOMA from vwlancaixa ');
    DMPESSOA.TALX1.SQL.Add('where ((vwlancaixa.tipo = :TIPO1) or (vwlancaixa.tipo = :TIPO2))');
    DMPESSOA.TALX1.SQL.Add('and vwlancaixa.cod_abcaixa = :CODABCAIXA');
    DMPESSOA.TALX1.SQL.Add('and vwlancaixa.estru = :EST');
    DMPESSOA.TALX1.SQL.Add('and vwlancaixa.tipcai = :TIPOCAI');
    DMPESSOA.TALX1.ParamByName('TIPO1').AsString:='CARTÃO';
    DMPESSOA.TALX1.ParamByName('TIPO2').AsString:='Cartão';
    DMPESSOA.TALX1.ParamByName('CODABCAIXA').AsString:=FMenu.LABCAIXA.Caption;
    DMPESSOA.TALX1.ParamByName('EST').AsInteger:=1;
    DMPESSOA.TALX1.ParamByName('TIPOCAI').AsString:='S';
    DMPESSOA.TALX1.Open;
    XVlrSaidas:= DMPESSOA.TALX1.FieldByName('SOMA').AsCurrency;

    //Paulo 12/09/2011: Subtrai os valores de entrada e saida e mostra na label
    if XVlrEnt > XVlrSaidas then
       XTotal := XVlrEnt - XVlrSaidas
    else
       XTotal := XVlrSaidas - XVlrEnt;

    LVlrCartao.Caption:=FormatFloat('0.00', XTotal);
    lbCliFor.Caption:='';

    LCxLogado.Caption:=FMenu.LCaixaLogado.Caption;

    DMMacs.TALX.Close;
    DMMacs.TALX.SQL.Clear;
    DMMacs.TALX.SQL.Add('SELECT * FROM USUARIO WHERE (CODUSUARIO=:CODIGO)');
    DMMacs.TALX.ParamByName('CODIGO').AsString:=FMenu.LCODUSUARIO.Caption;
    DMMacs.TALX.Open;

    //Paulo 27/02/2012: seleciona todos os caixas da loja
    If (FMenu.EdUsuario.Text='SYSTEM LORD') or (DMMacs.TALX.FieldByName('ADM').AsInteger=1)
    Then Begin
       DMCAIXA.TCaixaPAcess.Close;
       DMCAIXA.TCaixaPAcess.SQL.Clear;
       DMCAIXA.TCaixaPAcess.SQL.Add('select * FROM caixa WHERE (caixa.cod_loja=:CODLOJA)');
       DMCAIXA.TCaixaPAcess.ParamByName('CODLOJA').AsInteger:=StrToInt(FMenu.LCODLOJA.Caption);
       DMCAIXA.TCaixaPAcess.Open;
    End
    Else Begin
       DMCAIXA.TCaixaPAcess.Close;
       DMCAIXA.TCaixaPAcess.SQL.Clear;
       DMCAIXA.TCaixaPAcess.SQL.Add('select * FROM caixa left join caixaUSU ON caixausu.cod_caixa = caixa.cod_caixa WHERE (caixa.cod_loja=:CODLOJA) AND (caixausu.cod_usuario=:CODUSUARIO)');
       DMCAIXA.TCaixaPAcess.ParamByName('CODLOJA').AsInteger:=StrToInt(FMenu.LCODLOJA.Caption);
       DMCAIXA.TCaixaPAcess.ParamByName('CODUSUARIO').AsInteger:=StrToInt(FMenu.LCODUSUARIO.Caption);
       DMCAIXA.TCaixaPAcess.Open;
    End;
end;

procedure TFLancCaixa.ransferirTodososCheques1Click(Sender: TObject);
begin
  	inherited;
	//
   if Mensagem(' C O N F I R M A Ç Ã O ', 'Deseja realmente transferir todos os cheques?', '', 2, 3, False, 'C') = 2 then
   begin
   	FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       xTransfereTodosCheques := True;
       PCaixa.Visible:=True;
       PCaixa.BringToFront;
   end;
end;

procedure TFLancCaixa.BalanceteMensalporPerodo1Click(Sender: TObject);
begin
  inherited;
	FMenu.TIPOREL:='RELBALANCETEPERIODO';
   AbrirForm(TFRelData, FRelData, 0);
end;

procedure TFLancCaixa.Listagemdelanamentosporcontas1Click(Sender: TObject);
begin
  inherited;
   PListContas.Visible := True;
   PListContas.BringToFront;
   PListContas.Top := 192;
   PListContas.Left := 200;

   MDO.QConsulta.Close;
   MDO.QConsulta.SQL.Clear;
   MDO.QConsulta.SQL.Add('select lancaixacta.valor AS VALOR, lancaixacta.cod_plncta AS CONTA, plncta.descricao as DESCRICAO, lancaixa.historico AS HISTORICO from lancaixa ');
   MDO.QConsulta.SQL.Add('join lancaixacta on lancaixa.cod_lanc = lancaixacta.cod_lancaixa ');
   MDO.QConsulta.SQL.Add('join plncta on plncta.cod_plncta = lancaixacta.cod_plncta ');
   MDO.QConsulta.SQL.Add('where lancaixa.cod_lanc = :CODIGO');
   MDO.QConsulta.ParamByName('CODIGO').AsInteger := DMCAIXA.WLancCaixa.FieldByName('cod_lanc').AsInteger;
   MDO.QConsulta.Open;

end;

procedure TFLancCaixa.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   PListContas.Visible := False;
   MDO.QConsulta.Close;
end;

end.

