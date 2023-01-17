unit ULanCHEntr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ULanCHPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls, Buttons,
  TFlatEditUnit, jpeg, ExtCtrls, DBCtrls, DBColorEdit, Mask, ColorMaskEdit,
  UFrmBusca, Menus, TFlatTabControlUnit, EditFloat, ColorEditFloat, Spin,
  FashionPanel, DrLabel;

type
  TFLanCHEntr = class(TFLanCHPadrao)
    FrmBuscaBanco: TFrmBusca;
    Label8: TLabel;
    DBNUMAG: TDBColorEdit;
    Label10: TLabel;
    DBNUMCTA: TDBColorEdit;
    Label12: TLabel;
    DBColorEdit5: TDBColorEdit;
    Label13: TLabel;
    DBColorEdit6: TDBColorEdit;
    BtnMovimentar: TBitBtn;
    Panel3: TPanel;
    Label11: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EdNumAg: TFlatEdit;
    EdNumCta: TFlatEdit;
    EdNumPrimCh: TFlatEdit;
    EdPortador: TFlatEdit;
    Edfone: TFlatEdit;
    FrmBuscaBancoMult: TFrmBusca;
    Label15: TLabel;
    EdDtLanc: TColorMaskEdit;
    PDTDep: TPanel;
    Label16: TLabel;
    EdDtDep: TColorMaskEdit;
    PMovCheque: TPanel;
    FashionPanel1: TFashionPanel;
    DBText1: TDBText;
    PCtaCor: TPanel;
    FrmCtaCor: TFrmBusca;
    RGLANCAR: TRadioGroup;
    BtnOkMov: TBitBtn;
    BitBtn3: TBitBtn;
    FrmConta: TFrmBusca;
    BtnTroca: TBitBtn;
    Label20: TLabel;
    EdDestinoChq: TFlatEdit;
    GroupBox2: TGroupBox;
    EDEmitente: TColorMaskEdit;
    EdDtMovBaixa: TColorMaskEdit;
    Label21: TLabel;
    PCaixaLancamento: TPanel;
    FrmCaixaLancamento: TFrmBusca;
    procedure Lanamentonico1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FrmBuscaBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaBTNOPENClick(Sender: TObject);
    procedure FrmBuscaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmBuscaBancoBTNOPENClick(Sender: TObject);
    procedure FrmBuscaBancoBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaBancoEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure BtnGravarClick(Sender: TObject);
    procedure DBDTVencExit(Sender: TObject);
    procedure RGLancarClick(Sender: TObject);
    procedure RGMOVIMENTOExit(Sender: TObject);
    procedure FrmCtaCorBTNMINUSClick(Sender: TObject);
    procedure FrmCtaCorBTNOPENClick(Sender: TObject);
    procedure FrmCtaCorEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConsultarClick(Sender: TObject);
    procedure LanamentoMltiplo1Click(Sender: TObject);
    procedure EDValParcExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FrmBuscaBancoLMBTNOPENClick(Sender: TObject);
    procedure FrmBuscaBancoLMEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmBuscaBancoLMBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaContaLMBTNOPENClick(Sender: TObject);
    procedure FrmBuscaContaLMBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaContaLMEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmBuscaCtaCorLMEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmBuscaContaBTNOPENClick(Sender: TObject);
    procedure BtnMovimentarClick(Sender: TObject);
    procedure PMovChequeExit(Sender: TObject);
    procedure BtnOkMovClick(Sender: TObject);
    procedure PConsultaExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RGMOVIMENTOClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmBusca3BTNMINUSClick(Sender: TObject);
    procedure FrmConta1BTNOPENClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmBusca1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure DBColorEdit6Exit(Sender: TObject);
    procedure FrmBusca1EDCodigoEnter(Sender: TObject);
    procedure BtnTrocaClick(Sender: TObject);
    procedure FrmCtaCorExit(Sender: TObject);
    procedure RGLANCARExit(Sender: TObject);
    procedure EDEmitenteKeyPress(Sender: TObject; var Key: Char);
    procedure DBGMOVDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGNMOVDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGVENCDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGVENCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGMOVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGNMOVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmCaixaLancamentoBTNMINUSClick(Sender: TObject);
    procedure FrmCaixaLancamentoBTNOPENClick(Sender: TObject);
    procedure FrmCaixaLancamentoEDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Procedure NovoLanc;
    //Edmar - 29/07/2014 - busca o caixa original do cheque para escrever corretamente no campo destino do cheque
    procedure BuscaCaixaOrigem;
  public
    { Public declarations }
  end;

var
  FLanCHEntr: TFLanCHEntr;

  //Variaveis de lançamento automático
  XCHLancAut: Boolean;
  XChCod_PlnCta: Integer;
  XChCod_Caixa: Integer;
  XChCod_PlnCtaServ: Integer;
  XChHistorico: String;
  XChVlrProd, XChvlrServ: Real; //valores referentes a produtos e serviços utilizados em lançamentos derivados de ordem
  XChDtVencimento: TDateTime;
  XChTipoGerador: String;
  XChCod_Gerador: String;
  XChNumCheque, xCaixaOrigem: String;

  //Variaveis que possibilitam repetir informações do ultimo lançamentos
  XCHNUMAG: String;
  XCHNUMCTA: String;
  XCHEMITENTE: String;
  XCHCPFEMIT: String;

  // Variaveis para controle de lançamento de multiplos cheques
  XPerServ, XTotCheque: Real;

implementation

uses UDMFinanc, UDmBanco, Alxor32, UDMConta, UMenu, UConsPlncta, UDMMacs,
  Ubanco, AlxMessage, UCtaCor, UDMPessoa, UDMCaixa, Alxorprn, UPadrao,
  UMDO, DB, UCadCaixa, UCadPadrao;

{$R *.DFM}

Procedure TFLanCHEntr.NovoLanc;
Begin
 	//aciona novo registro;
   Lanamentonico1.Click;
   
  	 //INSERE NOVO CAMPO EM MOV BANCO
    XCODMOVBANCO:=InserReg(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO');
  	 //INSERE NOVO CAMPO EM LANCHEQUEREC
    XCODLANCH:=InserReg(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC');

	 //CHAVES ESTRANGEIRAS
    If FrmBusca1.EDCodigo.Text='' Then//CASO TENHA ALGO NO CAMPO DE CÓDIGO ELE DEIXA O MEMSMO CÓDIGO PAR AGILIZAR O LANÇAMENTO
    	XCODPLNCTA:=-1;
    If FrmBuscaBanco.EDCodigo.Text='' Then//CASO TENHA ALGO NO CAMPO DE CÓDIGO ELE DEIXA O MEMSMO CÓDIGO PAR AGILIZAR O LANÇAMENTO
	  	XCODBANCO:=-1;
    If FrmCtaCor.EDCodigo.Text='' Then//CASO TENHA ALGO NO CAMPO DE CÓDIGO ELE DEIXA O MEMSMO CÓDIGO PAR AGILIZAR O LANÇAMENTO
  	 	XCODCTACOR:=-1;

    DMBANCO.TMovBanco.FieldByName('DTLANC').AsString:=DateToStr(DATE());
    DMBANCO.TMovBanco.FieldByName('HORALANC').AsString:=TimeToStr(TIME());
    DMBANCO.TMovBanco.FieldByName('TIPOOP').AsString:='ENTRADA';
    DMBANCO.TMovBanco.FieldByName('COBRANCA').AsString:='CHEQUE';
    DMBANCO.TMovBanco.FieldByName('DTVENC').AsString:=DateToStr(DATE());
    DMBANCO.TMovBanco.FieldByName('ESTRU').AsString:='1';
    //lança valor
    DMBANCO.TMovBanco.FieldByNAme('VALOR').AsCurrency:=XChVlrProd+XChvlrServ;
    DMBANCO.TMovBanco.FieldByNAme('VALORPROD').AsCurrency:=XChVlrProd;
    DMBANCO.TMovBanco.FieldByNAme('VALORSERV').AsCurrency:=XChvlrServ;
    //passa informações para variaveis derepetição
    DMBANCO.TChequeRec.FieldByNAme('NUMAGENCIA').AsString:=XCHNUMAG;
    DMBANCO.TChequeRec.FieldByNAme('NUMCONTA').AsString:=XCHNUMCTA;
    DMBANCO.TChequeRec.FieldByNAme('EMITENTE').AsString:=XCHEMITENTE;
    DMBANCO.TChequeRec.FieldByNAme('CPFEMIT').AsString:=XCHCPFEMIT;
    DMBANCO.TMovBanco.FieldByNAme('HISTORICO').AsString:=XChHistorico;
    //Lança Histórico
    DMBANCO.TMovBanco.FieldByNAme('HISTORICO').AsString:=XChHistorico;
    //Lança Nº  do Documento
    DMBANCO.TMovBanco.FieldByNAme('DTVENC').AsDateTime:=XChDtVencimento;

    //INFORMA GERADOR
    DMBANCO.TMovBanco.FieldByName('TIPOGERADOR').AsString:=XChTipoGerador;
    DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString:=XChCod_Gerador;
    //lança plano de contas
	 If FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XChCod_PlnCta), '')=True
    Then Begin
           XCODPLNCTA:=XChCod_PlnCta;
       	FrmBusca1.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmBusca1.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
	 End;
    XCODPLNCTASERV:=XChCod_PlnCtaServ;

    DBNUMAG.Text:=XCHNUMAG;
    DBNUMCTA.Text:=XCHNUMCTA;
    DBColorEdit5.Text:=XCHEMITENTE;
    DBColorEdit6.Text:=XCHCPFEMIT;
    DBColorEdit3.Text:=XChHistorico;

End;

procedure TFLanCHEntr.Lanamentonico1Click(Sender: TObject);
begin
  inherited;
  	 //INSERE NOVO CAMPO EM MOV BANCO
    DMBANCO.TMovBanco.Close;
    DMBANCO.TMovBanco.SQL.Clear;
    DMBANCO.TMovBanco.SQL.Add(' select first 1 * from movbanco ');
    DMBANCO.TMovBanco.Open;
    XCODMOVBANCO:=InserReg(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO');
  	 //INSERE NOVO CAMPO EM LANCHEQUEREC
    DMBANCO.TChequeRec.Close;
    DMBANCO.TChequeRec.SQL.Clear;
    DMBANCO.TChequeRec.SQL.Add(' select first 1 * from chequerec ');
    DMBANCO.TChequeRec.Open;
    XCODLANCH:=InserReg(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC');

	 //CHAVES ESTRANGEIRAS
    If FrmBusca1.EDCodigo.Text='' Then//CASO TENHA ALGO NO CAMPO DE CÓDIGO ELE DEIXA O MEMSMO CÓDIGO PAR AGILIZAR O LANÇAMENTO
    	XCODPLNCTA:=-1;
    If FrmBuscaBanco.EDCodigo.Text='' Then//CASO TENHA ALGO NO CAMPO DE CÓDIGO ELE DEIXA O MEMSMO CÓDIGO PAR AGILIZAR O LANÇAMENTO
	  	XCODBANCO:=-1;
    If FrmCtaCor.EDCodigo.Text='' Then//CASO TENHA ALGO NO CAMPO DE CÓDIGO ELE DEIXA O MEMSMO CÓDIGO PAR AGILIZAR O LANÇAMENTO
  	 	XCODCTACOR:=-1;

    DMBANCO.TMovBanco.FieldByName('DTLANC').AsString:=DateToStr(DATE());
    DMBANCO.TMovBanco.FieldByName('HORALANC').AsString:=TimeToStr(TIME());
    DMBANCO.TMovBanco.FieldByName('TIPOOP').AsString:='ENTRADA';
    DMBANCO.TMovBanco.FieldByName('COBRANCA').AsString:='CHEQUE';
    DMBANCO.TMovBanco.FieldByName('DTVENC').AsString:=DateToStr(DATE());
    DMBANCO.TMovBanco.FieldByName('ESTRU').AsString:='1';
    IF XCHLancAut=True
    Then Begin
       DBNUMAG.Text:=XCHNUMAG;
       DBNUMCTA.Text:=XCHNUMCTA;
       DBColorEdit5.Text:=XCHEMITENTE;
       DBColorEdit6.Text:=XCHCPFEMIT;
       DBColorEdit3.Text:=XChHistorico;
    End;

    FrmBusca1.EDCodigo.SetFocus;
end;

procedure TFLanCHEntr.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Lançamentos de Cheque (ENTRADA)' ;  
	XTabela:=DMBANCO.TChequeRec;
   XSQLTABELA:='CHEQUEREC';
   XPkTabela:='COD_CHEQUEREC';
   XCampo:='NUMCHEQUE';
   XView:=DMBANCO.WChequeRec;
   XTransaction:=DMBANCO.IBT;
   DBGridCadastroPadrao.DataSource:=DMBANCO.DWChequeRec;
   DBGVENC.DataSource:=DMBANCO.DWChequeRec;
   DBGNMOV.DataSource:=DMBANCO.DWChequeRec;
   DBGMOV.DataSource:=DMBANCO.DWChequeRec;

   EdDtLanc.Text:=DateToStr(Date());
   EdDtDep.Text:=DateToStr(Date());
   // Verifica Lançamento Automático
   If XChLancAut=True
   Then Begin
    	//aciona novo registro;
       Lanamentonico1.Click;
       XCODCTACOR:=-1;
       //desativa possibilidade de alterar valor
       BtnCancelar.Enabled:=False;
       //Lanca valores
      	DMBANCO.TMovBanco.Edit;
      	DMBANCO.TChequeRec.Edit;
       //INFORMA GERADOR
       DMBANCO.TMovBanco.FieldByName('TIPOGERADOR').AsString:=XChTipoGerador;
       DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString:=XChCod_Gerador;
       //lança plano de contas
		If FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', IntToStr(XChCod_PlnCta), '')=True
      	Then Begin
           XCODPLNCTA:=XChCod_PlnCta;
       	FrmBusca1.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           FrmBusca1.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		End;
       XCODPLNCTASERV:=XChCod_PlnCtaServ;

       //lança valor
       DMBANCO.TMovBanco.FieldByNAme('VALOR').AsCurrency:=XChVlrProd+XChvlrServ;
       DMBANCO.TMovBanco.FieldByNAme('VALORPROD').AsCurrency:=XChVlrProd;
       DMBANCO.TMovBanco.FieldByNAme('VALORSERV').AsCurrency:=XChvlrServ;
       XPerServ:=((DMBANCO.TMovBanco.FieldByNAme('VALORSERV').AsCurrency)*100)/(XChvlrServ+XChVlrProd);
       XTotCheque:=(DMBANCO.TMovBanco.FieldByNAme('VALORPROD').AsCurrency+DMBANCO.TMovBanco.FieldByNAme('VALORSERV').AsCurrency);

       //passa informações para variaveis derepetição
       DMBANCO.TChequeRec.FieldByNAme('NUMAGENCIA').AsString:=XCHNUMAG;
       DMBANCO.TChequeRec.FieldByNAme('NUMCONTA').AsString:=XCHNUMCTA;
       DMBANCO.TChequeRec.FieldByNAme('EMITENTE').AsString:=XCHEMITENTE;
       DMBANCO.TChequeRec.FieldByNAme('CPFEMIT').AsString:=XCHCPFEMIT;
       DMBANCO.TMovBanco.FieldByNAme('HISTORICO').AsString:=XChHistorico;

       //Lança Histórico
       DMBANCO.TMovBanco.FieldByNAme('HISTORICO').AsString:=XChHistorico;

       //Lança Nº  do Documento
       DMBANCO.TMovBanco.FieldByNAme('DTVENC').AsDateTime:=XChDtVencimento;
    End
    Else Begin
    	//ativa possibilidade de alteraar valor
       BtnCancelar.Enabled:=True;
       PConsulta.Visible := True;
       PConsulta.BringToFront;
    End;
    // - 20/04/2009: verificar se arquivo de layout foi salvo anteriormente
   If FileExists('C:\MZR\Arquivos\LayoutGrid\chequeEntrVenc.lgm') Then
       DBGVENC.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\chequeEntrVenc.lgm');

   If FileExists('C:\MZR\Arquivos\LayoutGrid\chequeEntrMov.lgm') Then
       DBGMOV.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\chequeEntrMov.lgm');

    If FileExists('C:\MZR\Arquivos\LayoutGrid\chequeEntrNMov.lgm') Then
       DBGNMOV.Columns.LoadFromFile('C:\MZR\Arquivos\LayoutGrid\chequeEntrNMov.lgm');

end;

procedure TFLanCHEntr.FrmBuscaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XCODPLNCTA:=-1;
end;

procedure TFLanCHEntr.FrmBuscaBTNOPENClick(Sender: TObject);
begin
  inherited;
    // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
    XTIPO_CONTA := 'C';

	 filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'C'+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

    If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
    Then Begin
        XCODPLNCTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
//        FrmBuscaconta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
//        FrmBuscaconta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
    End;
end;

procedure TFLanCHEntr.FrmBuscaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
{   	If FrmBuscaconta.EDCodigo.Text<>''
       Then Begin
	       If FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'CLASSIFICACAO', FrmBuscaconta.EDCodigo.Text, '') = True
	       Then Begin //Slecionou o registro procurado
               XCODPLNCTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
           	FrmBuscaconta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
           	FrmBuscaconta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XCODPLNCTA:=-1;
           	FrmBuscaconta.EDCodigo.Text:='';
           	FrmBuscaconta.EdDescricao.Text:='';
          End;
       End
       Else Begin
           XCODPLNCTA:=-1;
          	FrmBuscaconta.EDCodigo.Text:='';
          	FrmBuscaconta.EdDescricao.Text:='';
       End;}
   End;
end;

procedure TFLanCHEntr.FrmBuscaBancoBTNOPENClick(Sender: TObject);
begin
  inherited;
	 //LIBERA TODAS OS BANCOS PARA CONSUTA
	 filtraTabela(DMBANCO.TBanco, 'BANCO', '', '', '');

    If AbrirForm(TFCadBanco, FCadBanco, 1)='Selected'
    Then Begin
		 XCODBANCO:=DMBANCO.TBanco.FieldByName('COD_BANC').AsInteger;
        FrmBuscaBanco.EdDescricao.Text:=DMBANCO.TBanco.FieldByName('DESCBANCO').AsString;
        FrmBuscaBanco.EDCodigo.text:=DMBANCO.TBanco.FieldByName('NUMBANCO').AsString;
        FrmBuscaBancoMult.EdDescricao.Text:=DMBANCO.TBanco.FieldByName('DESCBANCO').AsString;
        FrmBuscaBancoMult.EDCodigo.text:=DMBANCO.TBanco.FieldByName('NUMBANCO').AsString;
        FrmBuscaBanco.Repaint;
        FrmBuscaBancoMult.Repaint;
    End;

end;

procedure TFLanCHEntr.FrmBuscaBancoBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =01
   XCODBANCO:=-1;
   FrmBuscaBanco.EDCodigo.Text:='';
   FrmBuscaBanco.EdDescricao.Text:='';
   FrmBuscaBancoMult.EDCodigo.Text:='';
   FrmBuscaBancoMult.EdDescricao.Text:='';
end;

procedure TFLanCHEntr.FrmBuscaBancoEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmBuscaBanco.EDCodigo.Text<>''
       Then Begin
	       If FiltraTabela(DMBANCO.TBanco, 'BANCO', 'NUMBANCO', FrmBuscaBanco.EDCodigo.Text, '') = True
	       Then Begin //Slecionou o registro procurado
				XCODBANCO:=DMBANCO.TBanco.FieldByName('COD_BANC').AsInteger;
          		FrmBuscaBanco.EdDescricao.Text:=DMBANCO.TBanco.FieldByName('DESCBANCO').AsString;
          		FrmBuscaBanco.EDCodigo.text:=DMBANCO.TBanco.FieldByName('NUMBANCO').AsString;
          		FrmBuscaBancoMult.EdDescricao.Text:=DMBANCO.TBanco.FieldByName('DESCBANCO').AsString;
          		FrmBuscaBancoMult.EDCodigo.text:=DMBANCO.TBanco.FieldByName('NUMBANCO').AsString;
          End
          Else Begin
               XCODBANCO:=-1;
           	FrmBuscaBanco.EDCodigo.Text:='';
           	FrmBuscaBanco.EdDescricao.Text:='';
           	FrmBuscaBancoMult.EDCodigo.Text:='';
           	FrmBuscaBancoMult.EdDescricao.Text:='';
          End;
       End
       Else Begin
           XCODBANCO:=-1;
          	FrmBuscaBanco.EDCodigo.Text:='';
          	FrmBuscaBanco.EdDescricao.Text:='';
          	FrmBuscaBancoMult.EDCodigo.Text:='';
          	FrmBuscaBancoMult.EdDescricao.Text:='';
       End;
       FrmBuscaBanco.Repaint;
       FrmBuscaBancoMult.Repaint;
   End;
end;

procedure TFLanCHEntr.BtnGravarClick(Sender: TObject);
Var
	Flag: Integer;//variavel para controle de gravação
   Menss: String;//Menssagem passada qdo faltando algum valor de parcelas
   XCliente: String;
begin
	//INSERE SQL P/ VERIFICAR SE O CHEUQE POSSUI CLIENTE EMISSOR
   XCliente:='';
   If XCHLancAut=True
   Then Begin
       XCliente:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
	End
   Else Begin
   	//Se o lançamento eh proveniente de outro lokal deve c encontrar o cliente
		If (DMBANCO.TMovBanco.FieldByName('TIPOGERADOR').AsString='CTAR') or (DMBANCO.TMovBanco.FieldByName('TIPOGERADOR').AsString='CTARCH')
       Then Begin
       	//Se lançamento oproveniente do Ctas a receber
   		DMBANCO.TAlx.Close;
   		DMBANCO.TAlx.SQL.Clear;
   		DMBANCO.TAlx.SQL.Add(' Select vwparcr.cod_parcelacr, vwparcr.nome  from vwparcr ');
   		DMBANCO.TAlx.SQL.Add(' Where (vwparcr.cod_parcelacr=:CODIGO) ' );
   		DMBANCO.TAlx.ParamByName('CODIGO').AsString:=DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString;
			DMBANCO.TAlx.Open;
			If not DMBANCO.TAlx.isempty Then
       		Xcliente:='Cli.: '+DMBANCO.TAlx.FieldByName('Nome').AsString
       End
       Else Begin
           //Se proveniente de pedido de venda
			If DMBANCO.TMovBanco.FieldByName('TIPOGERADOR').AsString='PEDVENDA'
       	Then Begin
   			DMBANCO.TAlx.Close;
   			DMBANCO.TAlx.SQL.Clear;
   			DMBANCO.TAlx.SQL.Add(' Select pedvenda.cod_pedvenda, pedvenda.nomecli  from pedvenda ');
   			DMBANCO.TAlx.SQL.Add(' Where (pedvenda.cod_pedvenda=:CODIGO)'  );
   			DMBANCO.TAlx.ParamByName('CODIGO').AsString:=DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString;
				DMBANCO.TAlx.Open;
				If not DMBANCO.TAlx.isempty Then
       			Xcliente:='Cli.: '+DMBANCO.TAlx.FieldByName('Nomecli').AsString
           End;
        End;
	End;
   If XCliente=''
   Then Begin
		//Se o lançamento eh direto deve incluir como cliente o emitente
     	Xcliente:='Emit.: '+DBColorEdit5.Text;
   End;
	Flag:=0;//Marca controle como gravação não efetivada
	If PLanUnic.Visible=True
   Then Begin
   //CONTROLE PARA LANÇAMENTO ÚNICO
   	//Verifica dt vencimento
		If DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency=0
	    Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar o valor do cheque', '', 1, 1, False, 'i');
			DBDTVenc.SetFocus;
       	Exit;
   	End;

  		//Verifica dt vencimento
		If DBDTVenc.Text='  /  /    '
   	Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar a data de vencimento do cheque', '', 1, 1, False, 'i');
			DBDTVenc.SetFocus;
       	Exit;
   	End;
  		//Verifica Nº cheque
		If DBNUMCHEQUEEMIT.Text=''
   	Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar o Nº do cheque', '', 1, 1, False, 'i');
			DBNUMCHEQUEEMIT.SetFocus;
       	Exit;
   	End;
  		//Verifica Nº agencia
		If DBNumAg.Text=''
   	Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar o Nº da Agencia', '', 1, 1, False, 'i');
			DBNumAg.SetFocus;
       	Exit;
   	End;
  		//Verifica o Nº da conta
		If DBNumCta.Text=''
   	Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar o Nº da Conta', '', 1, 1, False, 'i');
			DBNumCta.SetFocus;
       	Exit;
   	End;
  		//Verifica Banco
		If XCODBANCO=-1
   	Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar o banco', '', 1, 1, False, 'i');
			FrmBuscaBanco.BTNOPEN.SetFocus;
       	Exit;
   	End;
  		//Verifica a conta do plano
		If XCODPLNCTA=-1
   	Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar a conta para lançamento', '', 1, 1, False, 'i');
			FrmBusca1.BTNOPEN.SetFocus;
       	Exit;
   	End;
  		//Verifica histórico
		If DBColorEdit3.Text=''
   	Then Begin
			Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar o histórico', '', 1, 1, False, 'i');
			DBColorEdit3.SetFocus;
       	Exit;
   	End;
   	If RGMOVIMENTO.ItemIndex=0
   	Then Begin
			If RGLancar.ItemIndex=1
       	Then Begin//Se a conta foi movimentada em banco deve ter se escolhido uma cvonta corrente
				If XCODCTACOR=-1
           	Then Begin
					Mensagem('OPÇÃO BLOQUEADA', 'É necessário informar a conta corrente para lançamento', '', 1, 1, False, 'i');
					FrmCtaCor.BTNOPEN.SetFocus;
       			Exit;
           	End;
       	End;
       End;
   	//INFORMA RESTANTE DOS DADOS DE CHEQUEREC
       DMBANCO.TChequeRec.Edit;
   	DMBANCO.TChequeRec.FieldByName('COD_BANCO').AsInteger:=XCODBANCO;
       If XESTADO='INSERT' Then
   	    DMBANCO.TChequeRec.FieldByName('COD_MOVBANCO').AsInteger:=XCODMOVBANCO;

       DMBANCO.TMovBanco.Edit;
   	//INFORMA RESTANTE DOS DADOS DE MOVBANCO
   	DMBANCO.TMovBanco.FieldByName('COD_PLNCTA').AsInteger:=XCODPLNCTA;
   	DMBANCO.TMovBanco.FieldByName('COD_PLNCTASERV').AsInteger:=XCODPLNCTASERV;
   	DMBANCO.TMovBanco.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
   	DMBANCO.TMovBanco.FieldByName('COD_COTA').AsInteger:=-1;
		DMBANCO.TMovBanco.FieldByName('FECH').AsString:='N';
		DMBANCO.TMovBanco.FieldByName('ESTRU').AsString:='1';

       //passa informações para variaveis derepetição
       XCHNUMAG:=DBNUMAG.Text;
       XCHNUMCTA:=DBNUMCTA.Text;
       XCHEMITENTE:=DBColorEdit5.Text;
       XCHCPFEMIT:=DBColorEdit6.Text;
       XChHistorico:=DBColorEdit3.Text;

  		//LANÇAR FOLHA DE CHEQUE EM CAIXA
       If XESTADO='INSERT'
       Then Begin//LANÇA EM CAIXA SOMENTE SE FOR EM CASO DE INSERÇÃO E LANÇA COMO ESTRU = 1 PARA APARECER NO ESTRUTURA DE RESULTADOS
            If (FMenu.XDTREF<>'18/07/1980') AND (FMenu.XDTREF <> '')
            Then Begin
               //se existe um valor válido na variavel o lancçamento da data de referencia no caixa deve ser feito nele
			    If LanCaixa (-1, DateToStr(Date()),  XCODPLNCTA, 'Chq.:'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'|'+XCliente+'-'+ DMBANCO.TMovBanco.FieldByName('DTLANC').AsString, DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency, 'LCHR', DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsInteger, 'CHEQUE', 'E', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString, StrToDate(FMenu.XDTREF), '1')=false Then
				   Flag:=1;//Marca como gravação não efetivada
            End
            Else Begin
			    If LanCaixa (-1, DateToStr(Date()),  XCODPLNCTA, 'Chq.:'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'|'+XCliente+'-'+ DMBANCO.TMovBanco.FieldByName('DTLANC').AsString, DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency, 'LCHR', DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsInteger, 'CHEQUE', 'E', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString, DMBANCO.TMovBanco.FieldByName('DTLANC').AsDateTime, '1')=false Then
				   Flag:=1;//Marca como gravação não efetivada
            End;
       End
       Else Begin//se estiver alterando um lançamento de cheque este também deve ser alterado em caixa
           //LOCALIZA LANÇAMENTO EM CX
           DMCAIXA.TLanCaixa.Close;
           DMCAIXA.TLanCaixa.SQL.Clear;
           DMCAIXA.TLanCaixa.SQL.Add(' select * from lancaixa ');
           DMCAIXA.TLanCaixa.SQL.Add(' Where (lancaixa.tipogerador='+#39+'LCHR'+#39+') AND (lancaixa.cod_gerador=:CODIGO) ');
           DMCAIXA.TLanCaixa.ParamByName('CODIGO').AsInteger:=DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsInteger;
           DMCAIXA.TLanCaixa.Open;
           If Not DMCAIXA.TLanCaixa.IsEmpty
           Then Begin
               // Se encontrou lancamento em cx verifica c o caixa lançado esta aberto
               DMCAIXA.TAbCaixa.Close;
               DMCAIXA.TAbCaixa.SQL.Clear;
               DMCAIXA.TAbCaixa.SQL.Add(' select * from abcaixa ');
               DMCAIXA.TAbCaixa.SQL.Add(' Where (abcaixa.fechado<>'+#39+'S'+#39+') and (abcaixa.cod_abcaixa=:CODIGO) ');
               DMCAIXA.TAbCaixa.ParamByName('CODIGO').AsInteger:=DMCAIXA.TLanCaixa.FieldByName('cod_abcaixa').AsInteger;
               DMCAIXA.TAbCaixa.Open;
               If Not DMCAIXA.TAbCaixa.IsEmpty
               Then Begin
                   //SE O CAIXA AINDA SE ENCONTRA ABERTO SOMENTE ALTERA O LANÇAMENTO
                   DMCAIXA.TLanCaixa.Edit;
                   DMCAIXA.TLanCaixa.FieldByName('COD_PLNCTAFIL').AsInteger:=XCODPLNCTA;
                   DMCAIXA.TLanCaixa.FieldByName('HISTORICO').AsString:='Chq.:'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'|'+XCliente+'-'+ DMBANCO.TMovBanco.FieldByName('DTLANC').AsString;
                   DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency:=DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency;
                   DMCAIXA.TLanCaixa.FieldByName('DOC').AsString:='CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString;
                   DMCAIXA.TLanCaixa.Post;
               End
               Else Begin
                   //SE O CAIXA FECHADO DEVE SE FZR ESTORNO E LANCAR NOVAMENTE
                   //ESTORNO
			        If LanCaixa (-1, DateToStr(Date()),  XCODPLNCTA, 'Est. Alteração Doc.:'+DMCAIXA.TLanCaixa.FIELDBYNAME('HISTORICO').AsString, DMCAIXA.TLanCaixa.FieldByName('VALOR').AsCurrency, 'ACHR', DMCAIXA.TLanCaixa.FieldByName('COD_LANC').AsInteger, 'CHEQUE', 'S', DMCAIXA.TLanCaixa.FIELDBYNAME('DOC').AsString, DMCAIXA.TLanCaixa.FIELDBYNAME('DTREFER').AsDateTime, '0')=false Then
				        Flag:=1;//Marca como gravação não efetivada
                   //NOVO LANCAMENTO
			        If LanCaixa (-1, DateToStr(Date()),  XCODPLNCTA, 'Chq.:'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'|'+XCliente+'-'+ DMBANCO.TMovBanco.FieldByName('DTLANC').AsString, DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency, 'LCHR', DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsInteger, 'CHEQUE', 'E', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString, DMBANCO.TMovBanco.FieldByName('DTLANC').AsDateTime, '0')=false Then
				        Flag:=1;//Marca como gravação não efetivada
               End;
           End;
       End;
   	Try
           // repassando á variavel o codigo de movimentação bancaria
           XCODMOVBANCO := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger;
           DMCAIXA.IBT.CommitRetaining;
       	DMBANCO.TMovBanco.Post;
       	DMBANCO.TChequeRec.Post;
           DMBANCO.IBT.CommitRetaining;
           // por questão de garantia jah foi dado um Commit e por isso há a necessidade de filtrar o registro novamente
           FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO',IntToStr(XCODMOVBANCO),'');

           If XTotCheque > DMBANCO.TMovBanco.FieldByName('VALOR').AsFloat
           Then Begin
               XTotCheque:=XTotCheque-DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency;
               XChvlrServ:=(XPerServ*XTotCheque)/100;
               XChVlrProd:=XTotCheque-XChvlrServ;
               NovoLanc;
               Exit;
           End;
   	Except
			Mensagem('OPÇÃO BLOQUEADA', 'Ocorreu um problema ao tentar gravar as informaçõs. reinicie o sistema e tente novamente', '', 1, 1, False, 'i');
       	DMBANCO.IBT.RollbackRetaining;
   	End;
   End
   Else Begin
   //CONTROLE PARA LANÇAMENTO MÚLTIPLO
   	//PERCORRE TODOS OS LANÇAMENTOS REALIZANDO LANÇAMENTO EM CAIXA OU BANCO
       Flag:=0;
       DMBANCO.TMovBanco.FIRST;
       While Not DMBANCO.TMovBanco.Eof do
       Begin
  			//LANÇAR FOLHA DE CHEQUE EM CAIXA
  	        If FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_MOVBANCO', DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString , '') = True
           Then Begin
				If LanCaixa (-1{DMFinanc.VWMoedaCota.FIELDBYNAME('COD_MOEDA').Value}, DateToStr(Date()),  XCODPLNCTA, 'Chq.: '+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'|'+XCliente+'-'+ DMBANCO.TMovBanco.FieldByName('DTLANC').AsString, DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency, 'LCHR', DMBANCO.TChequeRec.fieldByName('COD_CHEQUEREC').AsInteger, 'CHEQUE', 'E', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString, DMBANCO.TMovBanco.FieldByName('DTLANC').AsDateTime, '0')=False Then
					Flag:=1;//Marca como gravação não efetivada
           End
           Else Begin
           	Flag:=1;
           End;
           DMBANCO.TMovBanco.Next;
       End;
   End;
   If flag=1
   Then Begin
		//OCORREU ALGUM PROBLEMA RETORNAR TRANZAÇÕES
		Mensagem('A T E N Ç Ã O', 'Ocorreu um problema ao lançar o cheque em caixa. A operação será cancelada!', '', 1, 1, False, 'a');
       DMBANCO.IBT.RollbackRetaining;
   End;
   If flag=0
   Then Begin
		//TODAS AS GRAVAÇÕES FORAM EFETUADAS
       Try
       	If XCHLancAut<>True
           Then Begin//comita somente se não for lancauto
       		DMBANCO.IBT.CommitRetaining;
       		//passa informações para variaveis derepetição
       		XCHNUMAG:='';
       		XCHNUMCTA:='';
       		XCHEMITENTE:='';
       		XCHCPFEMIT:='';
       		XChHistorico:='';
           End;
           FMenu.LancChEnt:=True;
       Except
			DMBANCO.IBT.RollbackRetaining;
           FMenu.LancChEnt:=False;
           Flag:=1;
       End;
   End;

  inherited;
  If Flag=0
  Then Begin
       //CASO FOR UM LANÇAMENTO UNICO VERIFICA SE ESTE DEVE SER MOVIMENTADO
       If PLanUnic.Visible=True
       Then Begin
       	If RGMOVIMENTO.ItemIndex=0
           Then Begin
				If FiltraTabela(DMBANCO.WChequeRec, 'VWCHEQUEREC', 'COD_CHEQUEREC', IntToStr(XCODLANCH), '')=True
               Then Begin
                   BtnMovimentar.Click;
               End;
           End;
       End;
	End
   Else Begin
		SelectLanc('');
   End;
   //Se a conta esta sendo lançada automáticamente deve -se fechar o form
   If (XCHLancAut=True) AND (RGMOVIMENTO.ItemIndex=1)
   Then Begin
  		XChLancAut:=False;
  		Close;
   End;
   //abre gaveta
   ecfOpenGaveta;   
end;

procedure TFLanCHEntr.DBDTVencExit(Sender: TObject);
begin
  inherited;
   //Verifica se a data de vencimento é maior que a de hoje para já lançar como conta não movimentada no radio group
  	If DBDTVenc.Text<>'  /  /    '
   Then Begin
		If StrToDate(DBDTVenc.Text)<=Date()
       Then Begin
	       RGMOVIMENTO.ItemIndex:=0;
          PDTDep.Visible:=True;
          PDTDep.BringToFront;
       End
	    Else Begin
	       RGMOVIMENTO.ItemIndex:=1;
          PDTDep.Visible:=FAlse;
       End;
   End;
end;

procedure TFLanCHEntr.RGLancarClick(Sender: TObject);
begin
  inherited;
	If RGLancar.ItemIndex=1
   Then Begin//Visualizar painel para lancar em conta corrente
       PCaixaLancamento.Visible:=False;
       PCtaCor.Visible:=True;
       PCtaCor.BringToFront;
   End
   Else Begin
       PCaixaLancamento.Visible:=True;
       FrmCaixaLancamento.EDCodigo.SetFocus;
       PCtaCor.Visible:=False;
       XCODCTACOR:=-1;
       FrmCtaCor.EDCodigo.Text:='';
       FrmCtaCor.EdDescricao.Text:='';
       EdDestinoChq.Text:='Cx. '+FMenu.EdCaixa.Text;
   End;
end;

procedure TFLanCHEntr.RGMOVIMENTOExit(Sender: TObject);
begin
  inherited;
	If RGMOVIMENTO.ItemIndex=0
   Then Begin
       PDTDep.Visible:=True;
       PDTDep.BringToFront;
   End
   Else Begin
       PDTDep.Visible:=FAlse;
   End;
end;

procedure TFLanCHEntr.FrmCtaCorBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XCODCTACOR:=-1;
  	FrmCtaCor.EDCodigo.Text:='';
  	FrmCtaCor.EdDescricao.Text:='';
end;

procedure TFLanCHEntr.FrmCtaCorBTNOPENClick(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', '', '', '');
    If AbrirForm(TFCADCTACOR, FCADCTACOR, 1)='Selected'
    Then Begin
        XCODCTACOR:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
        FrmCtaCor.EdDescricao.Text:=DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
        FrmCtaCor.EDCodigo.text:=DMBANCO.WCtaCor.FieldByName('NUMCTACOR').AsString;
    End;
end;

procedure TFLanCHEntr.FrmCtaCorEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmCtaCor.EDCodigo.Text<>''
       Then Begin
	       If FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'NUMCTACOR', FrmCtaCor.EDCodigo.Text, '') = True
	       Then Begin //Slecionou o registro procurado
        		XCODCTACOR:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
               FrmCtaCor.EdDescricao.Text:=DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
        		FrmCtaCor.EDCodigo.text:=DMBANCO.WCtaCor.FieldByName('NUMCTACOR').AsString;
          End
          Else Begin
        		XCODCTACOR:=-1;
        		FrmCtaCor.EdDescricao.Text:='';
        		FrmCtaCor.EDCodigo.text:='';
          End;
       End
       Else Begin
      		XCODCTACOR:=-1;
      		FrmCtaCor.EdDescricao.Text:='';
      		FrmCtaCor.EDCodigo.text:='';
       End;
       FrmCtaCor.Repaint;
   End;
end;

procedure TFLanCHEntr.BtnConsultarClick(Sender: TObject);
begin
	//Localiza o lançamento em tabelas
   If FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', DMBANCO.WChequeRec.FieldByName('COD_CHEQUEREC').AsString, '')=True
   Then Begin
   	If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.TChequeRec.FieldByName('COD_MOVBANCO').AsString, '')=True
   	Then Begin
       	If DMBANCO.TMovBanco.FieldByName('FECH').AsString='S'
           Then Begin
           	//CASO O CHEQUE JÁ TENHA CIDO MOVIMENTADO ELE NÃO PODE SER CONSULTADO/ALTERADO
				Mensagem('OPÇÃO BLOQUEADA', 'Este lançamento já foi movimentado. Por este motivo não pode ser consultado/alterado', '', 1, 1, False, 'i');
               Exit;
           End;
       	//ATRIBUI VALORES DAS CHAVES ESTRANGEIRAS
           //BANCO
   		If FiltraTabela(DMBANCO.TBanco, 'BANCO', 'COD_BANC', DMBANCO.TChequeRec.FieldByName('COD_BANCO').AsString, '')=True
   		Then Begin
           	XCODBANCO:=DMBANCO.TChequeRec.FieldByNAme('COD_BANCO').AsInteger;
               FrmBuscaBanco.EDCodigo.Text:=DMBANCO.TBanco.FieldByNAme('NUMBANCO').AsString;
               FrmBuscaBanco.EdDescricao.Text:=DMBANCO.TBanco.FieldByNAme('DESCBANCO').AsString;
           End
           Else Begin
           	XCODBANCO:=-1;
               FrmBuscaBanco.EDCodigo.Text:='';
               FrmBuscaBanco.EdDescricao.Text:='';
           End;
           //CONTA PLANO
   		If FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMBANCO.TMovBanco.FieldByName('COD_PLNCTA').AsString, '')=True
   		Then Begin
           	XCODPLNCTA:=DMBANCO.TMovBanco.FieldByNAme('COD_PLNCTA').AsInteger;
               FrmBusca1.EDCodigo.Text:=DMCONTA.TPlnCta.FieldByNAme('CLASSIFICACAO').AsString;
               FrmBusca1.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByNAme('DESCRICAO').AsString;
           End
           Else Begin
           	XCODPLNCTA:=-1;
               FrmBusca1.EDCodigo.Text:='';
               FrmBusca1.EdDescricao.Text:='';
          End;
           //CONTA CORRENTE
   		If FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR', DMBANCO.TMovBanco.FieldByName('COD_CTACOR').AsString, '')=True
   		Then Begin
        		XCODCTACOR:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
        		FrmCtaCor.EdDescricao.Text:=DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
        		FrmCtaCor.EDCodigo.text:=DMBANCO.WCtaCor.FieldByName('NUMCTACOR').AsString;
           End
           Else Begin
        		XCODCTACOR:=-1;
        		FrmCtaCor.EdDescricao.Text:='';
        		FrmCtaCor.EDCodigo.text:='';
           End;
           //COMO ESTE LANÇAMENTO ESTA EM CONSULTA/ALTERAÇÃO ELE AINDA NÃO FOI MOVIMENTADOS
           RGMOVIMENTO.ItemIndex:=1;
           XTabela.edit;

       	//libera paineis corretos
  	 		PConsulta.Visible:=False;
    		PLancMult.Visible:=False;
    		PCadastro.Visible:=True;
    		PCadastro.BringToFront;
    		PLanUnic.Visible:=True;
    		PLanUnic.BringToFront;

			inherited;
           DBDTVenc.SetFocus;
       End;
   End;

end;

procedure TFLanCHEntr.LanamentoMltiplo1Click(Sender: TObject);
begin
  inherited;
//   EDValTotal.SetFocus;
end;

procedure TFLanCHEntr.EDValParcExit(Sender: TObject);
begin
  inherited;
{	If (EDValParc.ValueNumeric<>0) And (EDNumParc.ValueNumeric<>0) Then
       EDValTotal.ValueNumeric:=EDValParc.ValueNumeric*EDNumParc.ValueNumeric;

   If (EDValTotal.ValueNumeric<>0) And (EDNumParc.ValueNumeric<>0) And (EDValParc.ValueNumeric=0) Then
       EDValParc.ValueNumeric:=EDValTotal.ValueNumeric/EDNumParc.ValueInteger;

 }
end;

procedure TFLanCHEntr.BitBtn1Click(Sender: TObject);
begin
  inherited;
  	If PLanUnic.Visible=False
   Then Begin//Caso esteja sendo efetuado lançamento multiplo
		If EdHistorico.Text=''
       Then Begin
       	Mensagem('INFORMAÇÃO AO USUÁRIO', 'Por favor informe histórico', '', 1, 1, False, 'i');
           EdHistorico.SetFocus;
           Exit;
       End;
		If EdVlrTotal.ValueNumeric<=0
       Then Begin
       	Mensagem('INFORMAÇÃO AO USUÁRIO', 'Por favor informe um Vlr total superior a zero.', '', 1, 1, False, 'i');
           EdVlrTotal.SetFocus;
           Exit;
       End;
		If EdNumFolha.Value<=1
       Then Begin
       	Mensagem('INFORMAÇÃO AO USUÁRIO', 'Por favor informe um Nº de folhas superiores a 1 um.', '', 1, 1, False, 'i');
           EdNumFolha.SetFocus;
           Exit;
       End;
		If EdIntervalo.Value<0
       Then Begin
       	Mensagem('INFORMAÇÃO AO USUÁRIO', 'Por favor informe um intervalo igual ou superior a zero.', '', 1, 1, False, 'i');
           EdIntervalo.SetFocus;
           Exit;
       End;
       //CHAMA FUNÇÃO PARA GERAR PARCELAS
		GeraParcLM('ENTRADA', EdVlrTotal.ValueNumeric, EdNumFolha.Value, EdIntervalo.Value, XCODBANCO, EdPrimeiroCH.Text, EdNumAg.Text, EdNumCta.Text, EdPortador.Text, Edfone.Text, EdHistorico.Text, XCODPLNCTA, EdNumPrimCh.Text)
   End;


end;

procedure TFLanCHEntr.FrmBuscaBancoLMBTNOPENClick(Sender: TObject);
begin
  inherited;
	 //LIBERA TODAS OS BANCOS PARA CONSUTA
	 filtraTabela(DMBANCO.TBanco, 'BANCO', '', '', '');

    If AbrirForm(TFCadBanco, FCadBanco, 1)='Selected'
    Then Begin
        XCODBANCO:=DMBANCO.TBanco.FieldByName('COD_BANC').AsInteger;
//        FrmBuscaBancoLM.EdDescricao.Text:=DMBANCO.TBanco.FieldByName('DESCBANCO').AsString;
//        FrmBuscaBancoLM.EDCodigo.text:=DMBANCO.TBanco.FieldByName('NUMBANCO').AsString;
    End;

end;

procedure TFLanCHEntr.FrmBuscaBancoLMEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
{   	If FrmBuscaBancoLM.EDCodigo.Text<>''
       Then Begin
	       If FiltraTabela(DMBANCO.TBanco, 'BANCO', 'NUMBANCO', FrmBuscaBancoLM.EDCodigo.Text, '') = True
	       Then Begin //Slecionou o registro procurado
          		XCODBANCO:=DMBANCO.TBanco.FieldByName('COD_BANC').AsInteger;
          		FrmBuscaBancoLM.EdDescricao.Text:=DMBANCO.TBanco.FieldByName('DESCBANCO').AsString;
          		FrmBuscaBancoLM.EDCodigo.text:=DMBANCO.TBanco.FieldByName('NUMBANCO').AsString;          End
          Else Begin
       		XCODBANCO:=-1;
           	FrmBuscaBancoLM.EDCodigo.Text:='';
           	FrmBuscaBancoLM.EdDescricao.Text:='';
          End;
       End
       Else Begin
      		XCODBANCO:=-1;
          	FrmBuscaBancoLM.EDCodigo.Text:='';
          	FrmBuscaBancoLM.EdDescricao.Text:='';
       End;}
   End;
end;

procedure TFLanCHEntr.FrmBuscaBancoLMBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XCODBANCO:=-1;
//   FrmBuscaBancoLM.EDCodigo.TEXT:='';
//   FrmBuscaBancoLM.EdDescricao.TEXT:='';
end;

procedure TFLanCHEntr.FrmBuscaContaLMBTNOPENClick(Sender: TObject);
begin
  inherited;
   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'C';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'C'+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCODPLNCTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
//      	FrmBuscaContaLM.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
//      	FrmBuscaContaLM.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
end;

procedure TFLanCHEntr.FrmBuscaContaLMBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCODPLNCTA:=-1;
//   FrmBuscaContaLM.EDCodigo.Text:='';
//   FrmBuscaContaLM.EdDescricao.Text:='';
end;

procedure TFLanCHEntr.FrmBuscaContaLMEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
{ 		If FrmBuscaContaLM.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'C'+#39+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmBuscaBancoLM.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCODPLNCTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmBuscaContaLM.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmBuscaContaLM.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
				XCODPLNCTA:=-1;
				FrmBuscaContaLM.EDCodigo.Text:='';
			    FrmBuscaContaLM.EdDescricao.Text:='';
           End;
	    End
       Else Begin
			XCODPLNCTA:=-1;
   		FrmBuscaContaLM.EDCodigo.Text:='';
   		FrmBuscaContaLM.EdDescricao.Text:='';
       End;}
   End;
end;

procedure TFLanCHEntr.FrmBuscaCtaCorLMEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
{   	If FrmBuscaCtaCorLM.EDCodigo.Text<>''
       Then Begin
	       If FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'NUMCTACOR', FrmBuscaCtaCorLM.EDCodigo.Text, '') = True
	       Then Begin //Slecionou o registro procurado
      	   		XCODCTACOR:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
          		FrmBuscaCtaCorLM.EdDescricao.Text:=DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
          		FrmBuscaCtaCorLM.EDCodigo.text:=DMBANCO.WCtaCor.FieldByName('NUMCTACOR').AsString;
		   End
          Else Begin
   			XCODCTACOR:=-1;
   			FrmBuscaCtaCorLM.EDCodigo.Text:='';
   			FrmBuscaCtaCorLM.EdDescricao.Text:='';
          End;
       End
       Else Begin
   		XCODCTACOR:=-1;
   		FrmBuscaCtaCorLM.EDCodigo.Text:='';
   		FrmBuscaCtaCorLM.EdDescricao.Text:='';
       End;}
   End;


end;

procedure TFLanCHEntr.FrmBuscaContaBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS AS CTA CORRENTES
	filtraTabela(DMBANCO.WCtaCor, 'VWCTACOR', '', '', '');

   If AbrirForm(TFCADCTACOR, FCADCTACOR, 1)='Selected'
   Then Begin
      	XCODCTACOR:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
//      	FrmBuscaCtaCorLM.EdDescricao.Text:=DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
//      	FrmBuscaCtaCorLM.EDCodigo.text:=DMBANCO.WCtaCor.FieldByName('NUMCTACOR').AsString;
   End;

end;

procedure TFLanCHEntr.BtnMovimentarClick(Sender: TObject);
Var
	Flag:Integer;
begin
  inherited;
  	BuscaCaixaOrigem;
  	//tenta buscar a conta para lancamento
   If FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', DMBANCO.WChequeRec.FieldByName('COD_CHEQUEREC').AsString, '')=True
   Then Begin
       If FiltraTabela(DMBANCO.WMovB, 'vwmovbanco', 'COD_MOVBANCO', DMBANCO.TChequeRec.FieldByName('COD_MOVBANCO').AsString, '')=True
       Then Begin
           If DMBANCO.WMovB.FieldByName('FECH').AsString='S'
           Then Begin
               MessageDlg('O Cheque selecionado já foi movimentado!', mtWarning, [mbOK], 0);
           End
           Else Begin
               FrmConta.EdDescricao.Text:='';
               FrmConta.EDCodigo.Text:='';
               PMovCheque.Visible:=True;
               PMovCheque.BringToFront;
               FrmCtaCor.EdDescricao.Text:='';
               FrmCtaCor.EDCodigo.Text:='';
               EdDestinoChq.Text:='';
               EdDtMovBaixa.Text:=DateToStr(Date());
               //Efetua tratamento para caixa
               RGLANCAR.ItemIndex:=0;
               XChCod_Caixa:=-1;
               //LIBERA TODAS OS ESTADOS PARA CONSUTA
               If FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FMenu.LCODCAIXA.Caption, '')=True
               Then Begin
                   XChCod_Caixa:=DMCAIXA.TCaixa.FieldByName('COD_CAIXA').AsInteger;
                   FrmCaixaLancamento.EdDescricao.Text:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
                   FrmCaixaLancamento.EDCodigo.text:=DMCAIXA.TCaixa.FieldByName('NUMCAIXA').AsString;
                   EdDestinoChq.Text:= FrmCaixaLancamento.EdDescricao.Text;
               End
               Else Begin
                   XChCod_Caixa:=-1;
                   FrmCaixaLancamento.EdDescricao.Text:='';
                   FrmCaixaLancamento.EDCodigo.text:='';
                   EdDestinoChq.Text:='';
               End;
               XChCod_PlnCta:=DMBANCO.WMovB.FieldByName('COD_PLNCTA').AsInteger;
               FrmConta.EdDescricao.Text:=DMBANCO.WMovB.FieldByName('CONTA').AsString;
               FrmConta.EDCodigo.text:=DMBANCO.WMovB.FieldByName('CLASSIFICACAO').AsString;
           End;
       End;
   End;
   FrmConta.Repaint;
   FrmCtaCor.Repaint;
   RGLANCAR.SetFocus;
end;

procedure TFLanCHEntr.PMovChequeExit(Sender: TObject);
begin
  inherited;
	If PMovCheque.Visible=True Then
       RGLANCAR.SetFocus;
end;

procedure TFLanCHEntr.BtnOkMovClick(Sender: TObject);
Var
	Flag: Integer;
   Xcliente, xAux:String;
   XHistMov: String;
   XNumParc: String;
   XDtMovimento: TDate;
   XCodigoCaixaAtual: String;
begin
  inherited;
   XNumParc:='';
   Flag:=0;
   If (RGLANCAR.ItemIndex=1) And (FrmCtaCor.EdDescricao.Text='')
   Then Begin
		Mensagem('Mzr Sistemas - OPÇÃO BLOQUEADA', 'Antes de confirmar, informe a conta corrente para lançamento!', '', 1, 1, false, 'i');
		FrmCtaCor.EDCodigo.SetFocus;
       Exit;
   End;
   If (RGLANCAR.ItemIndex=0) And (XChCod_Caixa=-1)
   Then Begin
		Mensagem('Mzr Sistemas - OPÇÃO BLOQUEADA', 'Antes de confirmar, informe o Caixa para depósito do dinheiro', '', 1, 1, false, 'i');
		FrmCtaCor.EDCodigo.SetFocus;
       Exit;
   End;
   If RGLANCAR.ItemIndex=0
   Then Begin
        //Aqui alteramos o código do caixa atual pelo codigo do caixa selecionado
        XCodigoCaixaAtual:=FMenu.LCODCAIXA.Caption;
        FMenu.LCODCAIXA.Caption:=IntToStr(XChCod_Caixa);
        //VERIFICA SE O CAIXA ESTA ABERTO
        If DMCAIXA.VerifAbCaixa=False
        Then Begin
            Mensagem('A T E N Ç Ã O ', 'O Caixa se Encontra Fechado!', '', 1,1, false, 'a');
	         FMenu.LCODCAIXA.Caption:=XCodigoCaixaAtual;            
            Exit;
        End;
        FMenu.LCODCAIXA.Caption:=XCodigoCaixaAtual;
   End;

   If FrmConta.EdDescricao.Text=''
   Then Begin
		Mensagem('Mzr Sistemas - OPÇÃO BLOQUEADA', 'Antes de confirmar, informe a conta para lançamento!', '', 1, 1, false, 'i');
		FrmConta.EDCodigo.SetFocus;
       Exit;
   End;
	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente efetuar depósito do cheque Nº'+#13+ XView.FieldByName('NUMCHEQUE').AsString+ '?' , '', 2, 3, False, 'c')= 2
   Then Begin
   	//Verifica a qual caixa pertence o cheque para realizar extorno
       FMenu.XCOD_LANCAIXA:=-1;
       DMBANCO.TAlx.Close;
       DMBANCO.TAlx.SQL.Clear;
       DMBANCO.TAlx.SQL.Add(' select * from lancaixa ');
		DMBANCO.TAlx.SQL.Add(' left join abcaixa on lancaixa.cod_abcaixa = abcaixa.cod_abcaixa ');
		DMBANCO.TAlx.SQL.Add(' Where (lancaixa.tipogerador='+#39+'LCHR'+#39+') and (lancaixa.cod_gerador=:CODGERADOR) order by lancaixa.cod_lanc desc');
       DMBANCO.TAlx.ParamByName('CODGERADOR').AsString:=DMBANCO.WChequeRec.FieldByName('COD_CHEQUEREC').AsString;
		DMBANCO.TAlx.Open;
		If not DMBANCO.TAlx.isempty Then
       begin
       	FMenu.XCOD_LANCAIXA:= StrToInt(FMenu.LCODCAIXA.Caption);
       	FMenu.LCODCAIXA.Caption :=DMBANCO.TAlx.FieldByName('COD_CAIXA').AsString;
       end;
       //Verifik caixa aberto
       DMCAIXA.VerifAbCaixa;

   	If RGLANCAR.ItemIndex=0 Then
           XHistMov:=' Cx: '+FMenu.EdCaixa.Text
		Else
           XHistMov:=' Bnc: '+DMBANCO.WChequeRec.FieldByName('BANCO').AsString;

		//INSERE SQL P/ VERIFICAR SE O CHEQUE POSSUI CLIENTE EMISSOR
       XCliente:='';
       DMBANCO.TAlx.Close;
       DMBANCO.TAlx.SQL.Clear;
       DMBANCO.TAlx.SQL.Add(' Select vwparcr.nome from chequerec ');
       DMBANCO.TAlx.SQL.Add(' Left join movbanco on chequerec.cod_movbanco = movbanco.cod_movbanco ');
       DMBANCO.TAlx.SQL.Add(' Left join vwparcr on movbanco.cod_gerador = vwparcr.cod_parcelacr ');
       DMBANCO.TAlx.SQL.Add('  where ((movbanco.tipogerador='+#39+'CTAR'+#39+') or (movbanco.tipogerador='+#39+'CTARCH'+#39+')) ');
       DMBANCO.TAlx.SQL.Add(' and (movbanco.cod_gerador=:CODCHEQUE)');
       DMBANCO.TAlx.ParamByName('CODCHEQUE').AsString:=DMBANCO.WChequeRec.FieldByName('COD_CHEQUEREC').AsString;
		DMBANCO.TAlx.Open;
		{If not DMBANCO.TAlx.isempty Then
           Xcliente:='Cli.: '+DMBANCO.TAlx.FieldByName('Nome').AsString
       Else}
       Xcliente:='Emit.: '+DMBANCO.WChequeRec.FieldByName('EMITENTE').AsString;
   	If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.WChequeRec.FieldByName('COD_MOVBANCO').AsString, '')=True
   	Then Begin
      		If RGLANCAR.ItemIndex=1
       	Then Begin
           	If FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR', DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString, '')=True
           	Then Begin
           		If DMBANCO.VerifAbBanco=False
               	Then Begin
						Mensagem('OPÇÃO BLOQUEADA', 'B A N C O    F E C H A D O !', '', 1, 1, False, 'i');
                   	Exit;
               	End;
           	End
           	Else Begin
           		Mensagem('OPÇÃO BLOQUEADA', 'C O N T A   C O R R E N T E   N Ã O   E N C O N T R A D A !', '', 1, 1, False, 'i');
               	Exit;
           	End;
           End;
           FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
           Try
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' update chequerec set chequerec.destino=:Destino where chequerec.cod_chequerec=:codigo ');
               MDO.Query.ParamByName('Destino').AsString:=Copy(EdDestinoChq.Text, 0, 50);
               MDO.Query.ParamByName('codigo').AsInteger:=DMBANCO.TChequeRec.FieldByName('cod_chequerec').AsInteger;
               MDO.Query.ExecSQL;
               //MDO.Transac.CommitRetaining;
           Except
               MDO.Transac.RollbackRetaining;
               Mensagem('FALHA:', 'FALHA: 1246. Comunique ao suporte'+#13+'Reinicie o sistema em todos os computadores e tente novamente!', '', 1, 1, False, 'i');
               Exit;
           End;

           //Vamos Valida a data de movimentação
           Try
               XDtMovimento:=StrToDate(EdDtMovBaixa.Text);
           Except
               XDtMovimento:=Date();//em caso de erro ao pegar a data do componente assumimos que a data de movimentação é a data do sistema
           End;
           Try
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' update movbanco set movbanco.fech=''S'', movbanco.estru=''0'', movbanco.historico=:HISTORICO, ');
               MDO.Query.SQL.Add(' movbanco.dtmov=:DATA, movbanco.cod_abbanco=:CODABBANCO WHERE movbanco.cod_movbanco=:CODIGO ');
               MDO.Query.ParamByName('HISTORICO').AsString:=Copy(XHistMov+' / '+DMBANCO.TMovBanco.FieldByName('HISTORICO').AsString, 0, 100);
               MDO.Query.ParamByName('DATA').AsDate:=XDtMovimento;
               MDO.Query.ParamByName('CODABBANCO').AsString:=FMenu.LABBANCO.Caption;
               MDO.Query.ParamByName('CODIGO').AsString:=DMBANCO.TMovBanco.FieldByName('cod_movbanco').AsString;
               MDO.Query.ExecSQL;
				//MDO.Transac.CommitRetaining;
           Except
               MDO.Transac.RollbackRetaining;
               Mensagem('FALHA:', 'FALHA: 1263. Comunique ao suporte'+#13+'Reinicie o sistema em todos os computadores e tente novamente!', '', 1, 1, False, 'i');
               Exit;

               {
           	DMBANCO.TMovBanco.EDIT;
				DMBANCO.TMovBanco.FieldByName('FECH').AsString:='S';
				DMBANCO.TMovBanco.FieldByName('ESTRU').AsString:='0';
				DMBANCO.TMovBanco.FieldByName('HISTORICO').AsString:=XHistMov+' / '+DMBANCO.TMovBanco.FieldByName('HISTORICO').AsString;
				DMBANCO.TMovBanco.FieldByName('DTMOV').AsString:=EdDtMovBaixa.Text;
				DMBANCO.TMovBanco.FieldByName('COD_ABBANCO').AsString:=FMenu.LABBANCO.Caption;}
           End;
           IF DMBANCO.TMovBanco.FieldByName('TIPOGERADOR').AsString='CTARCH'
           Then Begin
   			{If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString, '')=True
   			Then Begin
  	            	DMCONTA.TParcCR.Edit;
               	DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
			    	DMCONTA.TParcCR.FieldByName('DTDEBITO').AsString:=DateToStr(Date());
			    	DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
               	DMCONTA.TParcCR.Post;
                   XNumParc:=DMCONTA.TParcCR.FieldByName('NUMPARC').AsString;
               End }
               If FiltraTabela(DMCONTA.TAlx, 'PARCELACR', 'COD_PARCELACR', DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString, '')=True
   			Then Begin
               	Try
                   	DMFINANC.TAlx.Close;
                       DMFINANC.TAlx.SQL.Clear;
                       DMFINANC.TAlx.SQL.Add('UPDATE PARCELACR SET PARCELACR.FECH =:FECH, PARCELACR.DTDEBITO =:DTDEBITO, PARCELACR.VALORPG =:VALORPG, PARCELACR.COBRANCA = :COBRANCA ');
                       DMFINANC.TAlx.SQL.Add(' WHERE PARCELACR.COD_PARCELACR = :CODIGO');
                       DMFINANC.TAlx.ParamByName('FECH').AsString := 'S';
                       DMFINANC.TAlx.ParamByName('DTDEBITO').AsString:=DateToStr(Date());
                       //Edmar - 19/01/2015 - Trocado o valor pago na conta. Deve-se assumir que o valor pago é o mesmo valor do cheque, e não o valor devido
                       DMFINANC.TAlx.ParamByName('VALORPG').AsCurrency:= DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency;//DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
                       DMFINANC.TAlx.ParamByName('CODIGO').AsInteger:=DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsInteger;
                       DMFINANC.TAlx.ParamByName('COBRANCA').AsString := 'Cheque';
                       DMFINANC.TAlx.ExecSQL;
                       //DMFINANC.TAlx.Transaction.CommitRetaining;
                      {	MDO.Query.Close;
                   	MDO.Query.SQL.Clear;
                   	MDO.Query.SQL.Add('UPDATE PARCELACR SET PARCELACR.FECH =:FECH, PARCELACR.DTDEBITO =:DTDEBITO, PARCELACR.VALORPG =:VALORPG, PARCELACR.COBRANCA = :COBRANCA ');
                   	MDO.Query.SQL.Add('WHERE PARCELACR.COD_PARCELACR = :CODIGO');
                   	MDO.Query.ParamByName('FECH').AsString:='S';
                   	MDO.Query.ParamByName('DTDEBITO').AsString:=DateToStr(Date());
                   	MDO.Query.ParamByName('VALORPG').AsCurrency:=DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
                   	MDO.Query.ParamByName('CODIGO').AsInteger:=DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsInteger;
						MDO.Query.ParamByName('COBRANCA').AsString := 'Cheque';
                   	MDO.Query.ExecSQL;
                       MDO.Transac.CommitRetaining;}
                   Except
                       //MDO.Transac.RollbackRetaining;
                       DMFINANC.TAlx.Transaction.RollbackRetaining;
                       Mensagem('FALHA:', 'FALHA: 1301. Comunique ao suporte'+#13+'Reinicie o sistema em todos os computadores e tente novamente!', '', 1, 1, False, 'i');
                       Exit;
                   End;
               end
               Else Begin
					Mensagem('A T E N Ç Ã O', 'A Parcela do Ctas a Receber atrelada ao cheque não foi movimentada!', '', 1, 1, False, 'i');
               End;
           End;
      		If RGLANCAR.ItemIndex=0
       	Then Begin
       		//LANÇAR VALOR DE ESTORNO PARA RETIRADA DA FOLHA DO CAIXA
				If LanCaixa (-1, DateToStr(Date()),  XChCod_PlnCta, 'Chq.: '+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'|'+Xcliente+ '-'+ DateToStr(Date())+' De: '+DMBANCO.WChequeRec.FieldByName('EMITENTE').AsString, DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency, 'DCHR', DMBANCO.WChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'CHEQUE', 'S', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString+'-'+XNumParc, DMBANCO.TMovBanco.FieldByName('DTLANC').AsDateTime, '0')=False Then
					Flag:=1;//Marca como gravação não efetivada

               //Aqui alteramos o código do caixa atual pelo codigo do caixa selecionado
               XCodigoCaixaAtual:=FMenu.LCODCAIXA.Caption;
               FMenu.LCODCAIXA.Caption:=IntToStr(XChCod_Caixa);
               // qdo for para ordem de servico
           	If DMBANCO.TMovBanco.FieldByName('VALORSERV').AsCurrency<>0
               Then Begin//Este cheque foi proveniente de uma ordem é contém valores separados para produtos e serviço e devem ser lançados separaddamente
       			//LANÇAR VALOR DE PRODUTO DA FOLHA EM CAIXA
					If LanCaixa (-1, DateToStr(Date()),  XChCod_PlnCta, 'Chq. (Prod.): '+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'|'+Xcliente+ '-'+ DateToStr(Date())+' De: '+DMBANCO.WChequeRec.FieldByName('EMITENTE').AsString, DMBANCO.TMovBanco.FieldByName('VALORPROD').AsCurrency, 'MCHR', DMBANCO.WChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'CARTEIRA', 'E', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString+'-'+XNumParc, DMBANCO.TMovBanco.FieldByName('DTLANC').AsDateTime, '1')=False Then
						Flag:=1;//Marca como gravação nao efetivada
       			//LANÇAR VALOR DE SERVIÇO DA FOLHA EM CAIXA
					If LanCaixa (-1, DateToStr(Date()),  XChCod_PlnCtaServ, 'Chq. (Serv.): '+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'|'+Xcliente+ '-'+ DateToStr(Date())+' De: '+DMBANCO.WChequeRec.FieldByName('EMITENTE').AsString, DMBANCO.TMovBanco.FieldByName('VALORSERV').AsCurrency, 'MCHR', DMBANCO.WChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'CARTEIRA', 'E', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString+'-'+XNumParc, DMBANCO.TMovBanco.FieldByName('DTLANC').AsDateTime, '1')=False Then
						Flag:=1;//Marca como gravação nao efetivada
               End
               Else Begin
       			//LANÇAR VALOR DA FOLHA EM CAIXA          // - 06/05/2009: estava marcando novamente cmo 1 na estrutura de resultado                                                                                                                                                                                                                                                                                                                                                                                   //DMBANCO.TMovBanco.FieldByName('DTLANC').AsDateTime
					If LanCaixa (-1, DateToStr(Date()),  XChCod_PlnCta, 'Chq.: '+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'|'+Xcliente+ '-'+ DateToStr(Date())+' De: '+DMBANCO.WChequeRec.FieldByName('EMITENTE').AsString, DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency, 'MCHR', DMBANCO.WChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'CARTEIRA', 'E', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString+'-'+XNumParc, DMCONTA.TParcCR.fieldByName('DTREF').AsDateTime, '0')=False Then
						Flag:=1;//Marca como gravação nao efetivada
               End;
               //Aqui retornamos o código do caixa atualmente selecionado
               FMenu.LCODCAIXA.Caption:=XCodigoCaixaAtual;
       	End
       	Else Begin
          		//LANÇAR VALOR DA FOLHA EM CONTA CORRENTE
           	If XCODCTACOR=-1
           	Then Begin
					Mensagem('OPÇÃO BLOQUEADA', 'Informe a Conta corrente onde o cheque esta sendo lançado!', '', 1, 1, False, 'i');
               	FrmCtaCor.EDCodigo.SetFocus;
               	Exit;
           	End
           	else Begin
       			//LANÇAR VALOR DE ESTORNO PARA RETIRADA DA FOLHA DO CAIXA
					If LanCaixa (-1, DateToStr(Date()),  XChCod_PlnCta, 'Chq.: '+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'|'+Xcliente+ '-'+ DateToStr(Date())+' De. '+DMBANCO.WChequeRec.FieldByName('EMITENTE').AsString, DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency, 'DCHR', DMBANCO.WChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'CHEQUE', 'S', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString+XNumParc, DMBANCO.TMovBanco.FieldByName('DTLANC').AsDateTime, '0')=False Then
						Flag:=1;//Marca como gravação não efetivada

           		If DMBANCO.TMovBanco.FieldByName('VALORSERV').AsCurrency<>0
               	Then Begin//Este cheque foi proveniente de uma ordem é contém valores separados para produtos e serviço e devem ser lançados separaddamente
                       XChCod_PlnCta:=DMBANCO.TMovBanco.FieldByNAme('COD_PLNCTA').AsInteger;
                       XChNumCheque:=DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString;
                       XChVlrProd:=DMBANCO.TMovBanco.FIELDBYNAME('VALORPROD').AsCurrency;
						XChCod_PlnCtaServ:=DMBANCO.TMovBanco.FieldByNAme('COD_PLNCTASERV').AsInteger;
						XChvlrServ:=DMBANCO.TMovBanco.FIELDBYNAME('VALORSERV').AsCurrency;
       				//LANÇAR VALOR DE PRODUTO DA FOLHA EM BANCO
						If LanBanco(XCODCTACOR, XChCod_PlnCta, 'Chq.: '+XChNumCheque+ '-'+DateToStr(Date())+'|'+Xcliente+' De: '+DMBANCO.WChequeRec.FieldByName('EMITENTE').AsString, XChVlrProd , 'MCHR', DMBANCO.WChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CHEQUE', 'S', DateToStr(DATE()), DMBANCO.WChequeRec.FieldByNAme('NUMCHEQUE').AsString, DMBANCO.WChequeRec.FieldByNAme('DTLANC').AsString, '1', DMBANCO.TMovBanco.FIELDBYNAME('DTREF').AsString)=False Then
           				Flag:=1//Marca como gravação nao efetivada
                       Else
                           MDO.Transac.CommitRetaining;

       				//LANÇAR VALOR DE SERVIÇO DA FOLHA EM BANCO
						If LanBanco(XCODCTACOR, XChCod_PlnCtaServ, 'Chq.: '+XChNumCheque+ '-'+DateToStr(Date())+'|'+Xcliente+' De: '+DMBANCO.WChequeRec.FieldByName('EMITENTE').AsString,  XChvlrServ, 'MCHR', DMBANCO.WChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CHEQUE', 'S', DateToStr(DATE()), DMBANCO.WChequeRec.FieldByNAme('NUMCHEQUE').AsString,  DMBANCO.WChequeRec.FieldByNAme('DTLANC').AsString, '1', DMBANCO.TMovBanco.FIELDBYNAME('DTREF').AsString)=False Then
           				Flag:=1//Marca como gravação nao efetivada
                       Else
                           MDO.Transac.CommitRetaining;
                   End
                   Else Begin
       				//LANÇAR VALOR DA FOLHA EM BANCO
						If LanBanco(XCODCTACOR, DMBANCO.TMovBanco.FieldByNAme('COD_PLNCTA').AsInteger, 'Chq. : '+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString+'|'+Xcliente+ '-'+DateToStr(Date())+' De: '+DMBANCO.WChequeRec.FieldByName('EMITENTE').AsString, DMBANCO.TMovBanco.FIELDBYNAME('VALOR').Value , 'MCHR', DMBANCO.WChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CHEQUE', 'S', DateToStr(DATE()), DMBANCO.WChequeRec.FieldByNAme('NUMCHEQUE').AsString,  DMBANCO.WChequeRec.FieldByNAme('DTLANC').AsString, '1', DMBANCO.TMovBanco.FIELDBYNAME('DTREF').AsString)=False
           			Then
           				Flag:=1;//Marca como gravação nao efetivada
					End;
               End;
           end;
           If Flag=0
           Then Begin
           	//MOVIMENTAÇÃO CONFIRMADA
               Try
                   DMBANCO.TMovBanco.Edit;
                   DMBANCO.TMovBanco.Post;
                   {If XCHLancAut=False
                   Then Begin
                   //Comita apenas em casos de lançamentos Manuais
                   }
                   //Edmar - 19/01/2015 - Retirada a condição de comitar apenas se for lançamento manual.
                   //Acima as operações são apenas "postadas" e aqui é feito todo o commit das operações realizadas acima.
                   //Assim, caso dê algum problema com alguma instrução todo o processo será desfeito
                   Try
                       DMCONTA.IBT.CommitRetaining;
                       DMBANCO.IBT.CommitRetaining;
                       DMCAIXA.IBT.CommitRetaining;
                       MDO.Transac.CommitRetaining;
                       DMFINANC.Transaction.CommitRetaining;
                       Flag := 0;                       
                   Except
//                       MessageDlg('Erro 1350:'+#13+#10+'O Cheque não será atualizado como baixado', mtWarning, [mbOK], 0);
                       MessageDlg('Erro 1350:'+#13+#10+'Ocorreu um problema ao atualizar a movimentação. Todo o processo será desfeito.'+#13+'Por favor, reinicie o sistema e tente novamente.', mtWarning, [mbOK], 0);
                       //Rollback no caso de falha
                       DMCONTA.IBT.RollbackRetaining;
                       DMBANCO.IBT.RollbackRetaining;
                       DMCAIXA.IBT.RollbackRetaining;
                       MDO.Transac.RollbackRetaining;
                       DMFINANC.Transaction.RollbackRetaining;
                       Flag := 1;
                   End;

                   //End;
					//REMARCA O CHEQUEREC COMO MOVIMENTADO PORQUE CASO TENHA SIDO FEITO MOVIMENTO EM CTA COR O COMIT DO LANÁMENTO ATRAPALHA O COMIT DO CHEQUEREC
                   //Edmar - 19/01/2015 - Só remarca a movimentação caso não tenha dado problema acima
                   if Flag = 0 then
                   begin
                   	If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.WChequeRec.FieldByName('COD_MOVBANCO').AsString, '')=True
                       Then Begin
                           MDO.Query.Close;
                           MDO.Query.SQL.Clear;
                           MDO.Query.SQL.Add('update movbanco set movbanco.fech=''S'', movbanco.dtmov=:Data where movbanco.cod_movbanco=:codigo');
                           MDO.Query.ParamByName('codigo').AsString:=DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsString;
                           MDO.Query.ParamByName('Data').AsDate:=Date();
                           MDO.Query.ExecSQL;
                           //If XCHLancAut=False
                           //Then Begin
                               //Comita apenas em casos de lançamentos Manuais
                               //Edmar - 19/01/2015 - Comita mesmo se não for lanc. manual
                               Try
                                   MDO.Transac.CommitRetaining;
                               Except
                                   MessageDlg('Erro 1368:'+#13+#10+'O Cheque não será atualizado como baixado', mtWarning, [mbOK], 0);
                               End;
                           //End;
                       End;
                   end;
                   
                   If XCHLancAut=False Then
                   	TCConsultCHTabChanged(Sender);
               Except
                   DMBANCO.IBT.RollbackRetaining;
               End;
           END
           Else Begin
               DMBANCO.IBT.RollbackRetaining;
           End;
       End;
       PMovCheque.Visible:=False;
   End
   Else Begin
       PMovCheque.Visible:=False;
   End;
   FMenu.XCOD_LANCAIXA:=-1;
	//Edmar - 09/06/2014 - Comentado para corrigir problema de caixa fechado
   //FMenu.LCODCAIXA.Caption := IntToStr(FMenu.XCOD_LANCAIXA);
   DMCAIXA.VerifAbCaixa;//Edmar - 15/05/2014 - Retorna ao caixa corrente

   //Se a conta esta sendo lançada automáticamente deve -se fechar o form
   If (XCHLancAut=True)
   Then Begin
 	  XChLancAut:=False;
     Close;
   End;   
end;

procedure TFLanCHEntr.PConsultaExit(Sender: TObject);
begin
	If PMovCheque.Visible=False Then
  		inherited;

end;

procedure TFLanCHEntr.BitBtn3Click(Sender: TObject);
begin
  inherited;
	PMovCheque.Visible:=False;
end;

procedure TFLanCHEntr.RGMOVIMENTOClick(Sender: TObject);
begin
  inherited;
	If RGMOVIMENTO.ItemIndex=0
   Then Begin
       PDTDep.Visible:=True;
       PDTDep.BringToFront;
   End
   Else Begin
       PDTDep.Visible:=FAlse;
   End;
end;

procedure TFLanCHEntr.BtnNovoClick(Sender: TObject);
begin
  inherited;
  	If XCHLancAut<>True
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
   End;
   FrmBuscaBanco.Repaint;
   FrmBusca1.Repaint;
end;

procedure TFLanCHEntr.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=vk_f9 Then
       BtnMovimentar.Click;

end;

procedure TFLanCHEntr.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XChCod_PlnCta:=-1;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
end;

procedure TFLanCHEntr.FrmContaBTNOPENClick(Sender: TObject);
begin
  inherited;
   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'C';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'C'+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XChCod_PlnCta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       FrmConta.Repaint;
   End;
end;

procedure TFLanCHEntr.FrmContaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'C'+#39+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XChCod_PlnCta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XChCod_PlnCta:=-1;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XChCod_PlnCta:=0;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
       FrmConta.Repaint;
   End;
end;

procedure TFLanCHEntr.FrmBusca3BTNMINUSClick(Sender: TObject);
begin
  inherited;
   XChCod_PlnCta:=-1;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
end;

procedure TFLanCHEntr.FrmConta1BTNOPENClick(Sender: TObject);
begin
  inherited;
   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := 'C';

	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+'C'+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XChCod_PlnCta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
end;

procedure TFLanCHEntr.FormCreate(Sender: TObject);
begin
  inherited;
   XTIPOLANC:='E';
end;

procedure TFLanCHEntr.FrmBusca1BTNOPENClick(Sender: TObject);
begin
  inherited;
   FrmBusca1.Repaint;
end;

procedure TFLanCHEntr.FrmBusca1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   FrmBusca1.Repaint;
end;

procedure TFLanCHEntr.DBColorEdit6Exit(Sender: TObject);
begin
  inherited;
   //Verifica se a data de vencimento é maior que a de hoje para já lançar como conta não movimentada no radio group
  	If DBDTVenc.Text<>'  /  /    '
   Then Begin
		If StrToDate(DBDTVenc.Text)<=Date()
       Then Begin
	       RGMOVIMENTO.ItemIndex:=0;
          PDTDep.Visible:=True;
          PDTDep.BringToFront;
       End
	    Else Begin
	       RGMOVIMENTO.ItemIndex:=1;
          PDTDep.Visible:=FAlse;
       End;
   End;
   If DBColorEdit6.Text<>''
   Then Begin
       If (ValidCPF(DBColorEdit6.Text)=False) AND (ValidaCGC(DBColorEdit6.Text)=False) Then
           Mensagem('INFORMAÇÃO AO USUÁRIO', 'O CPF/CNPJ informado não passou pelo teste de validação!', '', 1, 1, False, 'i');
   End;
end;

procedure TFLanCHEntr.FrmBusca1EDCodigoEnter(Sender: TObject);
begin
  inherited;
   FrmBusca1.Repaint;
   FrmBuscaBanco.Repaint;
end;

procedure TFLanCHEntr.BtnTrocaClick(Sender: TObject);
Var
   XHistCheque: String;
begin
  inherited;
   If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente cancelar a movimentação do cheque Nº'+#13+ XView.FieldByName(XCampo).AsString+ '?' , '', 2, 3, False, 'c')= 3 Then
       Exit;

   // verifica se o caixa estah aberto
   If DMCAIXA.VerifAbCaixa = false
   Then Begin
       Mensagem('A T E N Ç Ã O ', 'O Caixa escolhido não se encontra aberto. Para realizar a maioria das operações financeiras é obrigado que o caixa esteja aberto!', '', 1, 1, false, 'a');
       Exit;
   End;

	//Localiza o lançamento em tabelas
   If FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', DMBANCO.WChequeRec.FieldByName('COD_CHEQUEREC').AsString, '')=True
   Then Begin
   	If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.TChequeRec.FieldByName('COD_MOVBANCO').AsString, '')=True
   	Then Begin

           // ARMAZENANDO O CODIGO DE MOVBANCO
           XCODMOVBANCO := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger;

       	If DMBANCO.TMovBanco.FieldByName('FECH').AsString<>'S'
           Then Begin
           	//CASO O CHEQUE JÁ TENHA CIDO MOVIMENTADO ELE NÃO PODE SER CONSULTADO/ALTERADO
				Mensagem('OPÇÃO BLOQUEADA', 'O cheque selecionando ainda não foi movimentado!', '', 1, 1, False, 'i');
               Exit;
           End;
       End;

       // buscando o cheque relacionado a movimentação bancaria
       If FiltraTabela(DMBANCO.TChequeRec,'CHEQUEREC','COD_MOVBANCO',DMBANCO.TMovBanco.FieldByname('COD_MOVBANCO').AsString,'') = true
       Then Begin
           // VERIFICANDO SE NO CAIXA FOI MOVIMENTADO CHEQUE
           If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', '(COD_GERADOR='+ #39 + DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString + #39 + ') and ((TIPOGERADOR = '+ #39 + 'MCHR' + #39 +') OR (TIPOGERADOR = ' + #39 + 'CTAR' + #39 + ') OR (TIPOGERADOR = ' + #39 + 'DCHR' + #39 + ') OR (TIPOGERADOR = ' + #39 + 'CTARCH' + #39 + '))')=True
           Then Begin
               DMCAIXA.TLanCaixa.First;

               // verifica se o caixa que fez  lancamento tah aberto ou fechado
               FiltraTabela(DMCAIXA.TAbCaixa,'ABCAIXA','COD_ABCAIXA',DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString,'');

               // se o caixa que fez o lancamento do cheque estiver fechado eh feito estorno
               If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString = 'S'
               Then Begin
                   // filtra parcela para buscar codigo de conta a receber
                   FiltraTabela(DMCONTA.TParcCR,'PARCELACR','COD_PARCELACR',DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString,'');

                   // BUSCA CLIENTE DA CONTA
                   FiltraTabela(DMCONTA.TCtaR,'CTARECEBER','COD_CTARECEBER',DMCONTA.TParcCR.FieldByName('COD_CTARECEBER').AsString,'');

                   // DADOS DO CLIENTE
                   FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE',DMCONTA.TCtaR.FieldByName('COD_CLIENTE').AsString,'');

                   // DADOS DO LANCAMENTO EM CAIXA
                   FiltraTabela(DMCAIXA.TLanCaixa,'LANCAIXA','COD_GERADOR','','((COD_GERADOR = ' + #39 + DMBANCO.WChequeRec.FieldByName('COD_CHEQUEREC').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'LCHR' + #39 + '))');

                   LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.fieldByName('PLNCTA_SAICXCORR').AsInteger, 'Cancel. mov. cheque nº ' + DMBANCO.TMovBanco.FieldByName('numcheque').AsString + ' Cli. ' + DMPESSOA.WCliente.FieldByName('NOME').AsString, DMBANCO.WChequeRec.FieldByName('VALOR').AsCurrency,'CCHR',DMBANCO.TChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'Cheque', 'S', DMCAIXA.TLanCaixa.FIELDBYNAME('DOC').AsString, DMCAIXA.TLanCaixa.FIELDBYNAME('DTREFER').AsDateTime, '0');
               End
               Else Begin
                   while not DMCAIXA.TLanCaixa.Eof do
                   begin
                       DMCAIXA.TLanCaixa.Delete;
                       DMCAIXA.TLanCaixa.ApplyUpdates;
                   end;
               End;

               // buscando o movbanco que foi gerado a partir do chequerec
               If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString + #39 + ') AND (TIPOGERADOR = ' + #39 + 'MCHR' + #39 + ')')=true
               Then Begin
                   // apaga a movimentação bancaria
                   while not DMBANCO.TMovBanco.Eof do
                   begin
                       DMBANCO.TMovBanco.Delete;
                       DMBANCO.TMovBanco.ApplyUpdates;
                   end;
               End;
           End;
       End;
   End;

   // EDITANDO O REGISTRO PARA NÃO MOVIMENTADO
   FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO',IntToStr(XCODMOVBANCO),'');

   // atualizando o movbanco
   DMBANCO.TMovBanco.Edit;
  	DMBANCO.TMovBanco.FieldByName('FECH').AsString:='N';
  	DMBANCO.TMovBanco.FieldByName('ESTRU').AsString:='0';
   DMBANCO.TMovBanco.Post;

   // buscando a parcela a receber para cancelar o baixamento
   If FiltraTabela(DMCONTA.TParcCR,'PARCELACR','COD_PARCELACR',DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString,'')=true
   Then Begin
       DMCONTA.TParcCR.Edit;
       DMCONTA.TParcCR.FieldByName('FECH').AsString := 'N';
       DMCONTA.TParcCR.FieldByName('DTDEBITO').AsString := '';
       DMCONTA.TParcCR.FieldByName('COBRANCA').AsString := 'Cheque';       
       DMCONTA.TParcCR.Post;
       DMCONTA.IBT.CommitRetaining;
   End;

   DMBANCO.IBT.CommitRetaining;
   DMCAIXA.IBT.CommitRetaining;
   MDO.Transac.CommitRetaining;
   SelectLanc('');
end;

procedure TFLanCHEntr.FrmCtaCorExit(Sender: TObject);
begin
  inherited;
	If RGLANCAR.ItemIndex=1 Then
       EdDestinoChq.Text:=copy('Cta. '+FrmCtaCor.EdDescricao.Text, 0, 24);//'Cta. '+FrmCtaCor.EdDescricao.Text;
end;

procedure TFLanCHEntr.RGLANCARExit(Sender: TObject);
begin
  inherited;
  If RGLANCAR.ItemIndex=0 Then
       //EdDestinoChq.Text:='Cx. '+FMenu.EdCaixa.Text;
       EdDestinoChq.Text:='Cx. '+xCaixaOrigem;
end;

procedure TFLanCHEntr.EDEmitenteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   If key=#13
   Then Begin
       DMBANCO.WChequeRec.Close;
       DMBANCO.WChequeRec.SQL.Clear;
       DMBANCO.WChequeRec.SQL.Add('select * from vwchequerec ');
       //DMBANCO.WChequeRec.SQL.Add('left join movbanco on vwchequerec.cod_movbanco = movbanco.cod_movbanco');
       DMBANCO.WChequeRec.SQL.Add('where (upper(vwchequerec.emitente) like upper('+ #39 + EDEmitente.Text + '%' +#39 + '))');
       DMBANCO.WChequeRec.SQL.Text;

       //Paulo 13/04/2011:`Soma os valores referentes ao filtro
       DMFINANC.TAlx.Close;
       DMFINANC.TAlx.SQL.Clear;
       DMFINANC.TAlx.SQL.Add(' SELECT SUM(VWCHEQUEREC.VALOR) AS TOTAL FROM VWCHEQUEREC ');
       DMFINANC.TAlx.SQL.Add('where (upper(vwchequerec.emitente) like upper('+ #39 + EDEmitente.Text + '%' +#39 + '))');

       // se o campo emitente estiver vazio, eh feito a verificação de qual tela esta visivel e ai puxa somente os cheques referente ao tipo do movimento(Mov, ñ mov, Venc.)
       //If EDEmitente.Text = ''
       //Then Begin
           If PVenc.Visible = true
           Then Begin
               DMBANCO.WChequeRec.SQL.Add(' AND (VWCHEQUEREC.FECH<>'+#39+'S'+#39+') AND (VWCHEQUEREC.DTVENC<=:DTVENC) ');
               DMBANCO.WChequeRec.ParamByName('DTVENC').AsDate:=Date();
               DMFINANC.TAlx.SQL.Add(' and (VWCHEQUEREC.DTVENC<=:DTVENC) AND ((FECH<>'+#39+'S'+#39+') OR (FECH IS NULL)) ');
               DMFINANC.TAlx.ParamByName('DTVENC').AsDate:=Date();
           End;
           If PMov.Visible = true
           Then Begin
               DMBANCO.WChequeRec.SQL.Add(' AND (FECH='+#39+'S'+#39+')  ');
               DMFINANC.TAlx.SQL.Add(' and (FECH='+#39+'S'+#39+') ');
           End;
           If PNMov.Visible = true
           Then Begin
               DMBANCO.WChequeRec.SQL.Add(' AND ((FECH='+#39+'N'+#39+') OR (FECH IS NULL)) ');
               DMFINANC.TAlx.SQL.Add(' AND ((FECH='+#39+'N'+#39+') OR (FECH IS NULL)) ');
           End;
       //End;

       DMBANCO.WChequeRec.Open;
       DMFINANC.TAlx.Open;
       EDTotal.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
   End;


end;

procedure TFLanCHEntr.DBGMOVDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // - 28/04/2009: grid zebrada
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if DMBANCO.WChequeRec.Recno mod 2 = 1 then
          DBGMOV.Canvas.Brush.Color := $00EEEEEE
       else
          DBGMOV.Canvas.Brush.Color := clWhite;
      end;
      DBGMOV.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFLanCHEntr.DBGNMOVDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // - 28/04/2009: grid zebrada
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if DMBANCO.WChequeRec.Recno mod 2 = 1 then
          DBGNMOV.Canvas.Brush.Color := $00EEEEEE
       else
          DBGNMOV.Canvas.Brush.Color := clWhite;
      end;
      DBGNMOV.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFLanCHEntr.DBGVENCDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   // - 28/04/2009: grid zebrada
  If  FMenu.XGRIDZEBRADA
   Then Begin
      if State = [] then
      begin
        if DMBANCO.WChequeRec.Recno mod 2 = 1 then
          DBGVENC.Canvas.Brush.Color := $00EEEEEE
       else
          DBGVENC.Canvas.Brush.Color := clWhite;
      end;
      DBGVENC.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   End;
end;

procedure TFLanCHEntr.DBGVENCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGVENC.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\chequeEntrVenc.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFLanCHEntr.DBGMOVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGMOV.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\chequeEntrMov.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

procedure TFLanCHEntr.DBGNMOVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (shift=[ssCtrl]) and (key = 83)
   Then Begin
     Try
       if not DirectoryExists('C:\MZR\Arquivos\LayoutGrid\') then begin
           ForceDirectories('C:\MZR\Arquivos\LayoutGrid\');
       end;
       DBGNMOV.Columns.SaveToFile('C:\MZR\Arquivos\LayoutGrid\chequeEntrNMov.lgm');
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Layout da Grid foi salvo com sucesso!', '', 1, 1, false, 'i');
     Except
           Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de salvar o layout da grid!', '', 1, 1, false, 'i');
     End;
   End;
end;

//Edmar - 29/07/2014 - busca o caixa original do cheque para escrever corretamente no campo destino do cheque
procedure TFLanCHEntr.BuscaCaixaOrigem;
begin
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add(' select caixa.descricao CAIXA from lancaixa ');
    DMCAIXA.TAlx.SQL.Add(' left join abcaixa on lancaixa.cod_abcaixa = abcaixa.cod_abcaixa ');
    DMCAIXA.TAlx.SQL.Add(' left join caixa on caixa.cod_caixa = abcaixa.cod_caixa ');
    DMCAIXA.TAlx.SQL.Add(' Where (lancaixa.tipogerador = ''LCHR'') and (lancaixa.cod_gerador=:CODGERADOR) order by lancaixa.cod_lanc desc ');
    DMCAIXA.TAlx.ParamByName('CODGERADOR').AsInteger := DMBANCO.WChequeRec.FieldByName('COD_CHEQUEREC').AsInteger;
    DMCAIXA.TAlx.Open;

    xCaixaOrigem := DMCAIXA.TAlx.FieldByName('CAIXA').AsString
end;

procedure TFLanCHEntr.FrmCaixaLancamentoBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XChCod_Caixa:=-1;
   FrmCaixaLancamento.EDCodigo.Text:='';
   FrmCaixaLancamento.EdDescricao.Text:='';
   EdDestinoChq.Text:= '';   
end;

procedure TFLanCHEntr.FrmCaixaLancamentoBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCAIXA.TCaixa, 'CAIXA', '', '', '');

   If AbrirForm(TFCadCaixa, FCadCaixa, 1)='Selected'
   Then Begin
      	XChCod_Caixa:=DMCAIXA.TCaixa.FieldByName('COD_CAIXA').AsInteger;
      	FrmCaixaLancamento.EdDescricao.Text:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
      	FrmCaixaLancamento.EDCodigo.text:=DMCAIXA.TCaixa.FieldByName('NUMCAIXA').AsString;
       FrmCaixaLancamento.Repaint;
       EdDestinoChq.Text:= FrmCaixaLancamento.EdDescricao.Text;       
   End;

end;

procedure TFLanCHEntr.FrmCaixaLancamentoEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
 		If FrmCaixaLancamento.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCAIXA.TCaixa, 'CAIXA', 'NUMCAIXA', FrmCaixaLancamento.EDCodigo.text, '')=True
			Then Begin
		      	XChCod_Caixa:=DMCAIXA.TCaixa.FieldByName('COD_CAIXA').AsInteger;
		      	FrmCaixaLancamento.EdDescricao.Text:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
		      	FrmCaixaLancamento.EDCodigo.text:=DMCAIXA.TCaixa.FieldByName('NUMCAIXA').AsString;
               EdDestinoChq.Text:= FrmCaixaLancamento.EdDescricao.Text;
	        End
	        Else Begin
		      	XChCod_Caixa:=-1;
		      	FrmCaixaLancamento.EdDescricao.Text:='';
		      	FrmCaixaLancamento.EDCodigo.text:='';
               EdDestinoChq.Text:= '';
           End;
	    End
       Else Begin
	      	XChCod_Caixa:=0;
	      	FrmCaixaLancamento.EdDescricao.Text:='';
	      	FrmCaixaLancamento.EDCodigo.text:='';
           EdDestinoChq.Text:= '';
       End;
       FrmCaixaLancamento.Repaint;
   End;
end;

procedure TFLanCHEntr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	//Edmar - 05/05/2015 - se estiver cadastrando ou consultando um item e for lançamento automatico, chamo o evento do botão cancelar
 	if (PCADASTRO.Visible = True) AND NOT (XChLancAut) then
 	begin
   	BtnCancelar.Click;
     	Exit;
 	end;
	XChLancAut := False;
end;

end.
