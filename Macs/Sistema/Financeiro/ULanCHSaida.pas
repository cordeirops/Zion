unit ULanCHSaida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ULanCHPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls, Buttons,
  TFlatEditUnit, jpeg, ExtCtrls, Mask, DBCtrls, DBColorEdit, UFrmBusca,
  Menus, EditFloat, TFlatTabControlUnit, Spin, ColorEditFloat, DrLabel,
  ColorMaskEdit, Printers;

type
  TFLanCHSaida = class(TFLanCHPadrao)
    DBGCTACOR: TDBGrid;
    DBAgencia: TDBText;
    DBNumConta: TDBText;
    PopupMenu1: TPopupMenu;
    Cheque: TMenuItem;
    DBColorEdit1: TDBColorEdit;
    Label10: TLabel;
    VisualizarRelatrio1: TMenuItem;
    EdVencimentoCheque: TColorMaskEdit;
    EdNumCheque: TColorMaskEdit;
    EdHistoricoCheque: TColorMaskEdit;
    EdDestinatarioCheque: TColorMaskEdit;
    EdValorCheque: TColorEditFloat;
    procedure FormActivate(Sender: TObject);
    procedure Lanamentonico1Click(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure DBGCTACORCellClick(Column: TColumn);
    procedure DBGCTACORKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnNovoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure LanamentoMltiplo1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ChequeClick(Sender: TObject);
    procedure DBGNMOVDblClick(Sender: TObject);
    procedure DBGNMOVDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure VisualizarRelatrio1Click(Sender: TObject);
    procedure DBGMOVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGMOVDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGVENCDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGVENCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGNMOVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
   // seleciona os dados do cheque emitido pra impressão
   Function Dados_ChequeEmit: Boolean;

    { Public declarations }
  end;

var
  FLanCHSaida: TFLanCHSaida;

  //Variaveis de lançamento automático
  XCHSLancAut: Boolean;
  XChSCod_PlnCta: Integer;
  XChSHistorico: String;
  XChSValor: Real;
  XChSDtVencimento: TDateTime;
  XChSTipoGerador: String;
  XChSCod_Gerador: String;
  XChSCtaCor: Integer;
  XChDestinatario : string;
  XLibera : boolean; // se for true a parcela tbm sera fechada
  XMovimentacao: boolean; // se for true significa que nao passou pelo ctaspagar e vai ser feito uma sql para baixar a parcela a pagar

implementation

uses UDmBanco, Alxor32, UCtaCor, UDMConta, UMenu, AlxMessage, UDMMacs,
  Alxorprn, UDMEstoque, UCadPadrao, URelChequeEmit, UMDO;

{$R *.DFM}

procedure TFLanCHSaida.FormActivate(Sender: TObject);
begin
  inherited;
   Caption:='Lançamentos de Cheque (SAÍDA)';  
	XTabela:=DMBANCO.TMovBanco;
   XSQLTABELA:='MOVBANCO';
   XTransaction:=DMBANCO.IBT;
   XCampo:='NUMCHEQUE';
   XPkTabela:='COD_MOVBANCO';
   XView:=DMBANCO.WMovB;
   XTIPOLANC:= 'S';

   DBGCTACOR.DataSource:=DMBANCO.DWCtaCor;
   DBGMOV.DataSource:=DMBANCO.DWMovB;
   DBGNMOV.DataSource:=DMBANCO.DWMovB;
   DBGVENC.DataSource:=DMBANCO.DWMovB;
   TCConsultCHTabChanged(sender);

   // Verifica Lançamento Automático
   If XChSLancAut=True
   Then Begin
    	//aciona novo registro;
       Lanamentonico1.Click;
       //desativa possibilidade de alterar valor
       DBColorEdit4.ReadOnly:=True;
       BtnCancelar.Enabled:=False;
       //Lanca valores
      	DMBANCO.TMovBanco.Edit;
       //INFORMA GERADOR
//       DMBANCO.TMovBanco.FieldByName('TIPOGERADOR').AsString:=XChSTipoGerador;
//       DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString:=XChSCod_Gerador;

       //FILTRA CTA CORRENTE
		If FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  IntToStr(XChSCtaCor), '')=True
      	Then Begin
           XCODCTACOR:=XChSCtaCor;
		End
       Else Begin
           Exit;
       End;

       //lança plano de contas
		If FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XChSCod_PlnCta), '')=True
      	Then Begin
           XCODPLNCTA:=XChSCod_PlnCta;
       	FrmBusca1.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmBusca1.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		End;

{       //lança cotação de moeda
		If FiltraTabela(DMFinanc.VWMoedaCota, 'VWMOEDACOTA', 'COD_MOEDA', IntToStr(XCod_Cota))=True
      	Then Begin
	        If XTipo='P'
           Then Begin
		      	If DMFinanc.TabUso(DMFinanc.TCTAPAGAR)=false Then
		   	    	DMFinanc.TCTAPAGAR.Edit;
	            DMFinanc.TCTAPAGAR.FieldByName('COD_COTAMOEDA').AsInteger:=XCod_Cota;
           End
           Else Begin
		      	If DMFinanc.TabUso(DMFinanc.TCtaReceber)=false Then
		   	    	DMFinanc.TCtaReceber.Edit;
	            DMFinanc.TCtaReceber.FieldByName('COD_COTAMOEDA').AsInteger:=XCod_Cota;
           End;
           DMFinanc.VWMoedaCota.Next;
		End;}

       //lança valor
       EdValorCheque.ValueNumeric:=XChSValor;
//       DMBANCO.TMovBanco.FieldByNAme('VALOR').AsCurrency:=XChSValor;

       //Lança Histórico
       EdHistoricoCheque.Text:=XChSHistorico;
//       DMBANCO.TMovBanco.FieldByNAme('HISTORICO').AsString:=XChSHistorico;

       //Lança Nº  do Documento
       EdVencimentoCheque.Text:=DateToStr(XChSDtVencimento);
//;;       DMBANCO.TMovBanco.FieldByNAme('DTVENC').AsDateTime:=XChSDtVencimento;

       // Destinatario
       EdDestinatarioCheque.Text:=XChDestinatario;
//       DMBANCO.TMovBanco.FieldByName('DESTINATARIOCH').AsString := XChDestinatario;
    End
    Else Begin
    	//ativa possibilidade de alteraar valor
       BtnCancelar.Enabled:=True;
    	DBColorEdit4.ReadOnly:=False;
    End;

    FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', 'cod_ctacor > 0');

    // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\chequeSaiVenc.lgm') Then
       DBGVENC.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\chequeSaiVenc.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\chequeSaiMov.lgm') Then
       DBGMOV.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\chequeSaiMov.lgm');

    If FileExists('C:\MZR\Arquivos\LayoutGrid\chequeSaiNMov.lgm') Then
       DBGNMOV.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\chequeSaiNMov.lgm');


end;

procedure TFLanCHSaida.Lanamentonico1Click(Sender: TObject);
begin
  inherited;
    //posiciona labels que mostra numero a agencia da conta
    DBNumConta.Left:=DBAgencia.Left-150;

    //XCODPKMESTRE:=InserReg(XTabela, XSQLTABELA, XPkTabela);
//    XTabela.Insert;
    EdNumCheque.Text:=DMBANCO.TCtaCor.FieldByName('PROXCHEQUE').AsString;
//    XTabela.FieldByName('NUMCHEQUE').AsString:=DMBANCO.TCtaCor.FieldByName('PROXCHEQUE').AsString;
    //ATRIBUI AUTOMATICAMENTO A CONTA SELECIONADA COMO A CONTA DE LANÇAMENTO
  	 XCODCTACOR:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
    EdVencimentoCheque.Text:=DateToStr(Date());
//    XTabela.FieldByName('DTVENC').AsString:=DateToStr(Date());
    FrmBusca1.BTNOPEN.SetFocus;
end;

procedure TFLanCHSaida.BtnGravarClick(Sender: TObject);
begin
  	Try
   	If FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR', DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString, '')=True
   	Then Begin
   		If DMBANCO.VerifAbBanco=False
   		Then Begin
   			Mensagem('OPÇÃO BLOQUEADA', 'Banco fechado. O cheque não será movimentado.', '', 1, 1, False, 'i');
               Exit;
           End;
   	End
   	Else Begin
           Mensagem('OPÇÃO BLOQUEADA', 'C O N T A   C O R R E N T E   N Ã O   E N C O N T R A D A !', '', 1, 1, False, 'i');
           Exit;
       End;

   	If PLanUnic.Visible=True
       Then Begin
       	If FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR', IntToStr(XCODCTACOR), '')
           Then Begin
               If DMBANCO.VerifAbBanco=False
               Then Begin
                   Mensagem('OPÇÃO BLOQUEADA', 'Banco fechado. O cheque não será movimentado.', '', 1, 1, False, 'i');
                   Exit;
               End;
           End;

			//Efetua o lançamento em movbanco
           mdo.query.Close;
           mdo.query.sql.clear;
           mdo.query.sql.add(' INSERT INTO MOVBANCO (COD_CTACOR, HORALANC, DTLANC, COD_PLNCTA, HISTORICO, COD_USUARIO, VALOR, TIPOOP, ');
           mdo.query.sql.add('                       COBRANCA, DTVENC, FECH, TIPOGERADOR, COD_GERADOR, NUMCHEQUE, VER, VALORSERV, VALORPROD, ');
           mdo.query.sql.add('                       COD_PLNCTASERV, PERVLRSERV, ESTRU, COD_ABBANCO, DTREF, DESTINATARIOCH, DTMOV) ');
           mdo.query.sql.add('                       VALUES ');
           mdo.query.sql.add('                       (:COD_CTACOR, :HORALANC, :DTLANC, :COD_PLNCTA, :HISTORICO, :COD_USUARIO, :VALOR, :TIPOOP, ');
           mdo.query.sql.add('                       :COBRANCA, :DTVENC, :FECH, :TIPOGERADOR, :COD_GERADOR, :NUMCHEQUE, :VER, :VALORSERV, :VALORPROD, ');
           mdo.query.sql.add('                       :COD_PLNCTASERV, :PERVLRSERV, :ESTRU, :COD_ABBANCO, :DTREF, :DESTINATARIOCH, :DTMOV)');
           mdo.query.ParamByName('COD_CTACOR').AsInteger:=XCODCTACOR;
           mdo.query.ParamByName('HORALANC').AsString:=TimeToStr(Time());
           mdo.query.ParamByName('DTLANC').AsString:=DateToStr(Date());
           mdo.query.ParamByName('COD_PLNCTA').AsInteger:=XCODPLNCTA;
           mdo.query.ParamByName('HISTORICO').AsString:=EdHistoricoCheque.Text;
           mdo.query.ParamByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
			mdo.query.ParamByName('VALOR').AsCurrency:=EdValorCheque.ValueNumeric;
           mdo.query.ParamByName('TIPOOP').AsString:='SAIDA';
           mdo.query.ParamByName('COBRANCA').AsString:='CHEQUE';
           mdo.query.ParamByName('DTVENC').AsString:=EdVencimentoCheque.Text;
//           mdo.query.ParamByName('FECH').AsString:='N';
           mdo.query.ParamByName('TIPOGERADOR').AsString:=XChSTipoGerador;
           mdo.query.ParamByName('COD_GERADOR').AsString:=XChSCod_Gerador;
           mdo.query.ParamByName('NUMCHEQUE').AsString:=EdNumCheque.Text;
           mdo.query.ParamByName('VER').AsString:='0';
           mdo.query.ParamByName('VALORSERV').AsString:='' ;
           mdo.query.ParamByName('VALORPROD').AsString:='';
           mdo.query.ParamByName('COD_PLNCTASERV').AsString:='-1';
           mdo.query.ParamByName('PERVLRSERV').AsString:='0';
           mdo.query.ParamByName('ESTRU').AsString:='1';
           mdo.query.ParamByName('COD_ABBANCO').AsString:=FMenu.LABBANCO.Caption;
           mdo.query.ParamByName('DTREF').AsString:= DateToStr(Date());
           mdo.query.ParamByName('DESTINATARIOCH').AsString:= EdDestinatarioCheque.Text;
   		If RGMOVIMENTO.ItemIndex=0
   		Then Begin//Lançamento movimentado
           	mdo.query.ParamByName('DTMOV').AsString:=DateToStr(Date());
           	mdo.query.ParamByName('FECH').AsString:='S';
               XLibera := true; // a parcela a pagar tbm sera fechada
               // se for true significa que nao passou pelo ctaspagar e vai ser feito uma sql para baixar a parcela a pagar
               If XMovimentacao = true
               Then Begin
					If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', XTabela.FieldByName('COD_GERADOR').AsString , '')=True
  					Then Begin
	                   DMCONTA.TParcCP.Edit;
                      DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                      DMCONTA.TParcCP.Post;
                      DMCONTA.TParcCP.ApplyUpdates;
                      DMCONTA.IBT.CommitRetaining;
                   End;
               End;
               DMCONTA.TAlx.Close;
               DMCONTA.TAlx.SQL.Clear;
   		End
           Else Begin
           	mdo.query.ParamByName('DTMOV').AsString:='';
           	mdo.query.ParamByName('FECH').AsString:='N';
           End;
           MDO.Query.ExecSQL;
           MDO.Transac.CommitRetaining;

           XLibera := false; // a parcela a ser paga nao sera fexada

           If XESTADO='INSERT'
           Then Begin
   			//LOCALIZA CTA CORRENTE P/ ATULIZAR NUMERO DO CHEQUE
				If filtraTabela(DMBANCO.TCtaCor, 'CTACOR', 'COD_CTACOR', '', ' COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByNAme('COD_CTACOR').AsString+#39)=True
   			Then Begin
   				DMBANCO.TCtaCor.Edit;
					DMBANCO.TCtaCor.FieldByName('PROXCHEQUE').AsString:=INCSTRNUM(1, DBNUMCHEQUEEMIT.Text);
   				DMBANCO.TCtaCor.Post;
   				DMBANCO.TCtaCor.ApplyUpdates;
   			End;
           End;
       End;
     	XTransaction.CommitRetaining;
       FMenu.LancChSai:=True;
   Except
      //CASO OCORRER UM ERRO DEVIDO A FALTA DE ATUALIZAÇÃO DO GENERETOR ATUALIZAMOS ELE E FAZEMOS OUTRO LANÇAMENTO
      on E: Exception do
      begin
          if E.Message ='attempt to store duplicate value (visible to active transactions) in unique index "IDX_MOVBANCO_CODMOVBANCO"'
          then begin
             Try
                 MDO.Transac.RollbackRetaining;
                 //pega o valor do gerador e armazena em XCOD
                 MDO.QConsulta.Close;
                 MDO.QConsulta.SQL.Clear;
                 MDO.QConsulta.SQL.Add('  Select max(movbanco.cod_movbanco) as codigo from movbanco ');
                 MDO.QConsulta.Open;
                 //Incrementa o gerador para fazer a Chave primária ser válida na inserção
                 MDO.Query.Close;
                 mdo.Query.SQL.Clear;
                 mdo.Query.SQL.Add('SET GENERATOR GEN_MOVBANCO_ID TO '+IntToStr(MDO.QConsulta.FieldByName('codigo').AsInteger+100));
                 mdo.Query.ExecSQL;
                 MDO.Transac.CommitRetaining;
                 Try
                       //Efetua o lançamento em movbanco
                       mdo.query.Close;
                       mdo.query.sql.clear;
                       mdo.query.sql.add(' INSERT INTO MOVBANCO (COD_CTACOR, HORALANC, DTLANC, COD_PLNCTA, HISTORICO, COD_USUARIO, VALOR, TIPOOP, ');
                       mdo.query.sql.add('                       COBRANCA, DTVENC, FECH, TIPOGERADOR, COD_GERADOR, NUMCHEQUE, VER, VALORSERV, VALORPROD, ');
                       mdo.query.sql.add('                       COD_PLNCTASERV, PERVLRSERV, ESTRU, COD_ABBANCO, DTREF, DESTINATARIOCH, DTMOV) ');
                       mdo.query.sql.add('                       VALUES ');
                       mdo.query.sql.add('                       (:COD_CTACOR, :HORALANC, :DTLANC, :COD_PLNCTA, :HISTORICO, :COD_USUARIO, :VALOR, :TIPOOP, ');
                       mdo.query.sql.add('                       :COBRANCA, :DTVENC, :FECH, :TIPOGERADOR, :COD_GERADOR, :NUMCHEQUE, :VER, :VALORSERV, :VALORPROD, ');
                       mdo.query.sql.add('                       :COD_PLNCTASERV, :PERVLRSERV, :ESTRU, :COD_ABBANCO, :DTREF, :DESTINATARIOCH, :DTMOV)');
                       mdo.query.ParamByName('COD_CTACOR').AsInteger:=XCODCTACOR;
                       mdo.query.ParamByName('HORALANC').AsString:=TimeToStr(Time());
                       mdo.query.ParamByName('DTLANC').AsString:=DateToStr(Date());
                       mdo.query.ParamByName('COD_PLNCTA').AsInteger:=XCODPLNCTA;
                       mdo.query.ParamByName('HISTORICO').AsString:=EdHistoricoCheque.Text;
                       mdo.query.ParamByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
                       mdo.query.ParamByName('VALOR').AsCurrency:=EdValorCheque.ValueNumeric;
                       mdo.query.ParamByName('TIPOOP').AsString:='SAIDA';
                       mdo.query.ParamByName('COBRANCA').AsString:='CHEQUE';
                       mdo.query.ParamByName('DTVENC').AsString:=EdVencimentoCheque.Text;
                       mdo.query.ParamByName('TIPOGERADOR').AsString:=XChSTipoGerador;
                       mdo.query.ParamByName('COD_GERADOR').AsString:=XChSCod_Gerador;
                       mdo.query.ParamByName('NUMCHEQUE').AsString:=EdNumCheque.Text;
                       mdo.query.ParamByName('VER').AsString:='0';
                       mdo.query.ParamByName('VALORSERV').AsString:='' ;
                       mdo.query.ParamByName('VALORPROD').AsString:='';
                       mdo.query.ParamByName('COD_PLNCTASERV').AsString:='-1';
                       mdo.query.ParamByName('PERVLRSERV').AsString:='0';
                       mdo.query.ParamByName('ESTRU').AsString:='1';
                       mdo.query.ParamByName('COD_ABBANCO').AsString:=FMenu.LABBANCO.Caption;
                       mdo.query.ParamByName('DTREF').AsString:= DateToStr(Date());
                       mdo.query.ParamByName('DESTINATARIOCH').AsString:= EdDestinatarioCheque.Text;
                       If RGMOVIMENTO.ItemIndex=0
                       Then Begin//Lançamento movimentado
                           mdo.query.ParamByName('DTMOV').AsString:=DateToStr(Date());
                           mdo.query.ParamByName('FECH').AsString:='S';
                           XLibera := true; // a parcela a pagar tbm sera fechada
                           // se for true significa que nao passou pelo ctaspagar e vai ser feito uma sql para baixar a parcela a pagar
                           If XMovimentacao = true
                           Then Begin
                               If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', XTabela.FieldByName('COD_GERADOR').AsString , '')=True
                               Then Begin
                                  DMCONTA.TParcCP.Edit;
                                  DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                                  DMCONTA.TParcCP.Post;
                                  DMCONTA.TParcCP.ApplyUpdates;
                                  DMCONTA.IBT.CommitRetaining;
                               End;
                           End;
                           DMCONTA.TAlx.Close;
                           DMCONTA.TAlx.SQL.Clear;
                       End
                       Else Begin
                           mdo.query.ParamByName('DTMOV').AsString:='';
                           mdo.query.ParamByName('FECH').AsString:='N';
                       End;
                       MDO.Query.ExecSQL;
                       MDO.Transac.CommitRetaining;

                       XLibera := false; // a parcela a ser paga nao sera fexada

                       If XESTADO='INSERT'
                       Then Begin
                           //LOCALIZA CTA CORRENTE P/ ATULIZAR NUMERO DO CHEQUE
                           If filtraTabela(DMBANCO.TCtaCor, 'CTACOR', 'COD_CTACOR', '', ' COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByNAme('COD_CTACOR').AsString+#39)=True
                           Then Begin
                               DMBANCO.TCtaCor.Edit;
                               DMBANCO.TCtaCor.FieldByName('PROXCHEQUE').AsString:=INCSTRNUM(1, DBNUMCHEQUEEMIT.Text);
                               DMBANCO.TCtaCor.Post;
                               DMBANCO.TCtaCor.ApplyUpdates;
                           End;
                       End;
                 Except
                     ShowMessage('Falha 332: Erro na segunda tentativa de inserir o movimento bancário.'+#13+' Foi encontrado um erro ao inserir o movimento bancário. Entre em contato com o suporte e informe o erro ocorrido');
                     MDO.Transac.RollbackRetaining;
                     XTransaction.RollbackRetaining;
                 End;
             Except
             End;
          End;
      End;
   End;
   //FMenu.LancChSai:=False;
   TCConsultCH.OnTabChanged(Self);
   inherited;

   //Se a conta esta sendo lançada automáticamente deve -se fechar o form
   If (XCHSLancAut=True)
   Then Begin
 	  XChSLancAut:=False;
     Close;
   End;

   FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', 'cod_ctacor > 0');

end;
procedure TFLanCHSaida.BtnConsultarClick(Sender: TObject);
begin
  inherited;
  If DMBANCO.WMovB.FieldByNAme('FECH').AsString='S'
  Then Begin
  		Mensagem('OPÇÃO BLOQUEADA', 'Este cheque já foi movimentado e não pode mais ser alterado!', '', 1, 1, False, 'i');
       BtnCancelar.Click;
       Exit;
  End;

  XMovimentacao:= true; // se for true significa que nao passou pelo ctaspagar e vai ser feito uma sql para baixar a parcela a pagar se necessario

  //posiciona labels que mostra numero a agencia da conta
  DBNumConta.Left:=DBAgencia.Left-150;
  If filtraTabela(DMBANCO.TMovBanco, '	MOVBANCO', 'COD_MOVBANCO', '', ' COD_MOVBANCO = '+DMBANCO.WMovB.FIELDBYNAME('COD_MOVBANCO').AsString)=True
  Then Begin
  		//PROCURA PELO PLANO DE CONTA
  		If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (COD_PLNCTA='+#39+DMBANCO.TMovBanco.FIELDBYNAME('COD_PLNCTA').AsString+#39+')')=True
		Then Begin
		  	XCODPLNCTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		   	FrmBusca1.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		   	FrmBusca1.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	    End
	    Else Begin
		  	XCODPLNCTA:=-1;
		   	FrmBusca1.EdDescricao.Text:='';
		   	FrmBusca1.EDCodigo.text:='';
       End;

       XCODCTACOR:=DMBANCO.WMovB.FIELDBYNAME('COD_CTACOR').AsInteger;
       //libera paineis corretos
  	 	PConsulta.Visible:=False;
    	PLancMult.Visible:=False;
    	PCadastro.Visible:=True;
    	PCadastro.BringToFront;
    	PLanUnic.Visible:=True;
    	PLanUnic.BringToFront;

       RGMOVIMENTO.ItemIndex:=1;
       DMBANCO.TMovBanco.Edit;
       FrmBusca1.EDCodigo.SetFocus;

  End
  Else Begin
       BtnCancelar.Click;
  end;
end;

procedure TFLanCHSaida.DBGCTACORCellClick(Column: TColumn);
begin
  inherited;
   SelectLanCH(TCConsultCH.ActiveTab, '');
end;

procedure TFLanCHSaida.DBGCTACORKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   SelectLanCH(TCConsultCH.ActiveTab, '');
end;

procedure TFLanCHSaida.BtnNovoClick(Sender: TObject);
begin
  inherited;
  	If XCHSLancAut<>True
   Then Begin
   	FrmBusca1.EDCodigo.Text:='';
   	FrmBusca1.EdDescricao.Text:='';
   	FrmBusca2.EDCodigo.Text:='';
   	FrmBusca2.EdDescricao.Text:='';
   	XCODPLNCTA:=-1;
   	EdHistorico.Text:='';
   	EdVlrTotal.ValueNumeric:=0;
   	EdNumFolha.Value:=2;
   	EdIntervalo.Value:=0;
   	EdPrimeiroCH.Text:=DateToStr(Date());
       EdVencimentoCheque.Text:='';
       EdNumCheque.Text:='';
       EdValorCheque.Text:='';
       EdHistoricoCheque.Text:='';
       EdDestinatarioCheque.Text:='';
   End;


   XMovimentacao:= true; // se for true significa que nao passou pelo ctaspagar e vai ser feito uma sql para baixar a parcela a pagar se necesario

end;

procedure TFLanCHSaida.BitBtn1Click(Sender: TObject);
begin
//  inherited;
end;

procedure TFLanCHSaida.LanamentoMltiplo1Click(Sender: TObject);
begin
  //inherited;
  //posiciona labels que mostra numero a agencia da conta
  //DBNumConta.Left:=DBAgencia.Left-150;
  Mensagem('INFORMAÇÃO', 'Função desativada. Em caso de necessidade entrar em contato com o suporte Mzr Sistemas para solicitar esta opção!', '', 1, 1, False, 'i');
end;

procedure TFLanCHSaida.FormCreate(Sender: TObject);
begin
  inherited;
   XTIPOLANC:='S';
end;

procedure TFLanCHSaida.ChequeClick(Sender: TObject);
begin
  inherited;

   // seleciona os dados do cheque emitido pra impressão
   Dados_ChequeEmit;

   // função para imprimir cheque
   Imprimir_Cheque(DMCONTA.TAlx.FieldByName('CONTADOR').AsInteger);

end;

// seleciona os dados do cheque emitido pra impressão
Function TFLanCHSaida.Dados_ChequeEmit: Boolean;
begin
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('select VWMOVBANCO.Valor AS VALOR, VWMOVBANCO.DestinatarioCH as Destinatario from VWMOVBANCO');
   DMESTOQUE.TRel.SQL.Add('where VWMOVBANCO.mark = :campo');
   DMESTOQUE.TRel.ParamByName('campo').AsString := 'X';
   DMESTOQUE.TRel.Open;

   // numero de cheques para impressao
   DMCONTA.TAlx.close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('select count(MOVBANCO.MARK) AS CONTADOR FROM MOVBANCO');
   DMCONTA.TAlx.SQL.Add('WHERE MOVBANCO.mark = :campo');
   DMCONTA.TAlx.ParamByName('campo').AsString := 'X';
   DMCONTA.TAlx.Open;
end;

procedure TFLanCHSaida.DBGNMOVDblClick(Sender: TObject);
begin
  inherited;
   DMBANCO.TMovBanco.Close;
   DMBANCO.TMovBanco.SQL.Clear;
   DMBANCO.TMovBanco.SQL.Add('select * from MOVBANCO');
   DMBANCO.TMovBanco.SQL.Add('where MOVBANCO.cod_movbanco = :codigo');
   DMBANCO.TMovBanco.ParamByName('codigo').AsString := DMBANCO.WMovB.FieldByName('cod_movbanco').AsString;
   DMBANCO.TMovBanco.Open;

   If not DMBANCO.TMovBanco.IsEmpty
   Then Begin
       DMBANCO.TMovBanco.Edit;
       If DMBANCO.TMovBanco.FieldByName('MARK').AsString = ''
       Then Begin
           DMBANCO.TMovBanco.FieldByName('MARK').AsString := 'X';
       End
       Else Begin
           DMBANCO.TMovBanco.FieldByName('MARK').AsString := '';
       End;
       DMBANCO.TMovBanco.Post;
       DMBANCO.IBT.CommitRetaining;
       TCConsultCH.OnTabChanged(Self);
//       SelectLanc('');
   End;
end;

procedure TFLanCHSaida.DBGNMOVDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

   DMBANCO.TMovBanco.Close;
   DMBANCO.TMovBanco.SQL.Clear;
   DMBANCO.TMovBanco.SQL.Add('select * from MOVBANCO');
   DMBANCO.TMovBanco.SQL.Add('where MOVBANCO.cod_movbanco = :codigo');
   DMBANCO.TMovBanco.ParamByName('codigo').AsString := DMBANCO.WMovB.FieldByName('cod_movbanco').AsString;
   DMBANCO.TMovBanco.Open;

   If DMBANCO.TMovBanco.FieldByName('MARK').AsString = 'X'
   Then Begin
       DBGNMOV.Canvas.Font.Style:= [fsbold];
       DBGNMOV.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;

   // - 28/04/2009: grid zebrada
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if DMBANCO.WMovB.Recno mod 2 = 1 then
          DBGNMOV.Canvas.Brush.Color := $00EEEEEE
       else
          DBGNMOV.Canvas.Brush.Color := clWhite;
      end;
      DBGNMOV.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;

end;

procedure TFLanCHSaida.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
   PopupMenu1.Popup(BtnRelatorio.Left+204, 186);
end;

procedure TFLanCHSaida.BtnCancelarClick(Sender: TObject);
begin
  inherited;

  FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', 'cod_ctacor > 0');

end;


// jonathan - Dia 28/04/2009 - Alteração conforme solicitado no chamado 297
procedure TFLanCHSaida.VisualizarRelatrio1Click(Sender: TObject);
begin
  If ControlAccess('RBANCO', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='CHEQUEEMIT';
   AbrirForm(TFRelChequeEmit, FRelChequeEmit, 0);

end;

procedure TFLanCHSaida.DBGMOVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGMOV.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\chequeSaiMov.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFLanCHSaida.DBGMOVDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // - 28/04/2009: grid zebrada
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if DMBANCO.WMovB.Recno mod 2 = 1 then
          DBGMOV.Canvas.Brush.Color := $00EEEEEE
       else
          DBGMOV.Canvas.Brush.Color := clWhite;
      end;
      DBGMOV.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFLanCHSaida.DBGVENCDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // - 28/04/2009: grid zebrada
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if DMBANCO.WMovB.Recno mod 2 = 1 then
          DBGVENC.Canvas.Brush.Color := $00EEEEEE
       else
          DBGVENC.Canvas.Brush.Color := clWhite;
      end;
      DBGVENC.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFLanCHSaida.DBGVENCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGVENC.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\chequeSaiVenc.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFLanCHSaida.DBGNMOVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGNMOV.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\chequeSaiNMov.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

end.
