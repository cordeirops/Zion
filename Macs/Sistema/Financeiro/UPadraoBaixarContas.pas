unit UPadraoBaixarContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRodaPe, TFlatHintUnit, Buttons, jpeg, ExtCtrls,
  StdCtrls, EditFloat, ColorEditFloat, DBCtrls, DBColorComboBox, UFrmBusca,
  Grids, DBGrids, DrLabel, cxLookAndFeelPainters, cxButtons, DateUtils,
  Mask, ColorMaskEdit, QRCtrls, QuickRpt;

type
  TFPadraoBaixaContas = class(TFPadraoRodaPe)
    Label4: TLabel;
    EdVenc: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    EdValor: TColorEditFloat;
    PJUROS: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    LAvisoMulta: TLabel;
    EdMulta: TColorEditFloat;
    EdMultaMoeda: TColorEditFloat;
    EdJuro: TColorEditFloat;
    EdJuroMoeda: TColorEditFloat;
    Panel1: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    PBanco: TPanel;
    DBGCTA: TDBGrid;
    EDVALORPAGO: TColorEditFloat;
    DBMOEDA: TDBLookupComboBox;
    FrmConta: TFrmBusca;
    PMostraCta: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    DBText3: TDBText;
    DBCOB: TComboBox;
    CBImpRecibo: TCheckBox;
    PDESCONTO: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    EdDesc: TColorEditFloat;
    EDDESCMOEDA: TColorEditFloat;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EdParcela: TEdit;
    EdDocumento: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label17: TLabel;
    EDValorJurMulta: TColorEditFloat;
    LTotMostraCheque: TLabel;
    LTipoJuros: TLabel;
    CBCheque: TCheckBox;
    PMultiplo: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    CBMultConta: TComboBox;
    BtnAddConta: TBitBtn;
    BtnRemConta: TBitBtn;
    DBGrid3: TDBGrid;
    EdValorMul: TColorEditFloat;
    cxButton1: TcxButton;
    LVlrCred: TLabel;
    Label18: TLabel;
    DBHISTORICO: TDBEdit;
    Label15: TLabel;
    EDDeb: TColorMaskEdit;
    QRReciboGFinal: TQuickRep;
    QRBRecFin: TQRBand;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRDBText56: TQRDBText;
    QRLabel79: TQRLabel;
    QRDBText57: TQRDBText;
    QRLabel80: TQRLabel;
    QRDBText58: TQRDBText;
    QRDBText60: TQRDBText;
    QRLabel81: TQRLabel;
    QRDBText61: TQRDBText;
    QRLabel82: TQRLabel;
    QRLImportanciaF: TQRLabel;
    QRLabel85: TQRLabel;
    QRDBText59: TQRDBText;
    QRRDocumentos: TQRRichText;
    QRDataRec4: TQRLabel;
    QRDBText1: TQRDBText;
    PCartao: TPanel;
    Label19: TLabel;
    EdNumCartao: TEdit;
    pPerguntaVlrMaior: TPanel;
    pPerguntaVlrMenor: TPanel;
    Label20: TLabel;
    Label23: TLabel;
    cbNewParc: TCheckBox;
    cbBaixaValorPago: TCheckBox;
    cbProxParc: TCheckBox;
    cbConvertMulta: TCheckBox;
    cbLancTroco: TCheckBox;
    PCartoes: TPanel;
    lCartoesDescricao: TLabel;
    LCartoesSair: TLabel;
    DBCartoes: TDBGrid;
    PChqTerceiro: TPanel;
    LUZOPEN: TShape;
    LUZMINUS: TShape;
    LTotalChq: TDRLabel;
    DBText4: TDBText;
    BTNOPEN: TBitBtn;
    BTNMINUS: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    DBCBCHEQUE: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure EdMultaMoedaExit(Sender: TObject);
    procedure EdJuroExit(Sender: TObject);
    procedure EdJuroMoedaExit(Sender: TObject);
    procedure EdDescExit(Sender: TObject);
    procedure EDDESCMOEDAExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGCTAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PBancoExit(Sender: TObject);
    procedure DBCOBExit(Sender: TObject);
    procedure DBCOBKeyPress(Sender: TObject; var Key: Char);
    procedure CBMultContaExit(Sender: TObject);
    procedure EDDebExit(Sender: TObject);
    procedure PChqTerceiroExit(Sender: TObject);
    procedure BTNOPENClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EdMultaExit(Sender: TObject);
    procedure DBCOBClick(Sender: TObject);
    procedure BtnAddContaClick(Sender: TObject);
    procedure BtnRemContaClick(Sender: TObject);
    procedure PMultiploExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure CBMultContaKeyPress(Sender: TObject; var Key: Char);
    procedure QRBRecFinBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure btnCancPerguntaOkClick(Sender: TObject);
    procedure cbConvertMultaClick(Sender: TObject);
    procedure cbProxParcClick(Sender: TObject);
    procedure cbLancTrocoClick(Sender: TObject);
    procedure EDVALORPAGOExit(Sender: TObject);
    procedure cbNewParcClick(Sender: TObject);
    procedure cbBaixaValorPagoClick(Sender: TObject);
    procedure DBCartoesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    //Gera lan�amento atrav�s de parametros passados
    Function GeraNovaParc(CODPARANT: Integer; ValorProd: Real; ValorServ:Real;  Cobranca: String; NUMPARC:String; HIST: String; PerServ: Real; TipoJur: Integer; DTRefer:String): Boolean;
	 //Filtra cheques de acordo com tmp
	 Function FiltraCheques: Boolean;
    // - 19/01/2009:  faz o lan�amento de v�rias formas de pagamento
     procedure PagamentoMultiplo;
     // - 19/01/2009: atualiza grid forma de pagamento e valores
     procedure AtualizarLancMultiplo;
    //procedure que seleciona e imprime recibo referente a parcela
    Procedure ImpRecibo(CODCTA:INTEGER);
    //procedure utilizada para verificar a forma de lan�amento referente a diferen�a de valores Maior
    procedure VerificaFormaLancamentoDiferencaMaior;
    //procedure utilizada para verificar a forma de lan�amento referente a diferen�a de valores Menor
    procedure VerificaFormaLancamentoDiferencaMenor;


  public
    { Public declarations }
  end;

var
  FPadraoBaixaContas: TFPadraoBaixaContas;
  XCOD_CONTA: Integer;//Armazenar� o c�digo da conta do plano
  XCOD_CONTABANCO: Integer; //Armazenar� o c�digo da conta para lan�amento em banco
  XCod_Tmp: Integer; //Variavel p/ guardar o codigo do tmp
  XVlrCheque: Real; //Valor recebido em cheques de terceiros Cheque
  xvlrlanc: Real; //valor da diferen�a entre valor pago e valor devido
  XMultiplo: Boolean; // - 19/01/2009: se for lan�amento m�ltiplo
  XTotMult:Integer; // - 19/01/2009: armazena qntde de lan�amentos m�ltiplos
  XCodTmp:Integer; // - 19/01/2009: controla codigos da tabela tmp
  xSucessoBaixa: Integer;//somente ir� comitar em financ quando xSucessoBaixa igual a 1 que significa que todas as opera��es foram conclu�das
  xNaoLancTroco: Integer;
  xGeraNovaParcela: String;
  XCOD_PARCELA_BAIXADA: Integer;
  //Edmar - 19/01/2015 - Vari�vel que vai armazenar o c�digo da nova parcela que foi criada para o cheque lan�ado
  //Caso o usu�rio escolha baixar apenas o valor pago de uma conta em cheque, deve-se criar uma nova conta
  //vinculando o cheque lan�ado a nova conta
  xCodNewParc: Integer;  
implementation

uses UDMFinanc, Alxor32, AlxMessage, UDMConta, UMenu, UConsPlncta,
  UPadraoContas, UDmBanco, UDMMacs, UDMCaixa, UDMPessoa, UPadrao, DB,
  ULanCHSaida, UDMEstoque, Alxorprn, Math, UDMSaida, UMDO, ULancTroco, UCtaReceber;

{$R *.DFM}

//procedure que seleciona e imprime recibo referente a parcela
Procedure TFPADRAOBAIXACONTAS.ImpRecibo(CODCTA:INTEGER);
Begin
   //FILTRA LOJA PARA VERIFICAR O TIPO DE IMPRESS�O
   FiltraTabela(DMMacs.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//PREPARA SQL
   If XTipoPR='R'
   Then Begin
	   DMFinanc.TAlx.Close;
	   DMFinanc.TAlx.SQL.Clear;
	   DMFinanc.TAlx.SQL.Add('SELECT distinct(parcelacr.cod_parcelacr), parcelacr.dtvenc AS VENCIMENTO, parcelacr.valorpg, parcelacr.numparc, parcelacr.valExt, parcelacr.valor, ');
	   DMFinanc.TAlx.SQL.Add('pessoa.bairro, pessoa.cep, Pessoa.Telrel, pessoa.cpfcnpj, pessoa.endnumero, pessoa.endereco, pessoa.nome, parcelacr.historico, ');
	   DMFinanc.TAlx.SQL.Add('CtaReceber.NumDoc, CtaReceber.DTLanc, cidade.nome, estado.uf_estado ');
	   DMFinanc.TAlx.SQL.Add('FROM parcelacr join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ');
	   DMFinanc.TAlx.SQL.Add('JOIN cliente on cliente.cod_cliente = ctareceber.cod_cliente ');
	   DMFinanc.TAlx.SQL.Add('join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ');
	   DMFinanc.TAlx.SQL.Add('left join cidade on cidade.cod_cidade = pessoa.cod_cidade ');
	   DMFinanc.TAlx.SQL.Add('left join estado ON estado.cod_estado = cidade.cod_estado ');
	   DMFinanc.TAlx.SQL.Add('Where parcelacr.COD_PARCELACR=:CODCTARECEBER ');
	   DMFinanc.TAlx.ParamByName('CODCTARECEBER').AsInteger:=CODCTA;
	   DMFinanc.TAlx.Open;
      If Not DMFINANC.TAlx.IsEmpty
      Then Begin
           QRReciboGFinal.Preview
      end;
   End;
End;

//Filtra cheques de acordo com tmp
Function TFPadraoBaixaContas.FiltraCheques: Boolean;
Begin
	//Seleciona os cheques ainda nao movimentados
   DMBANCO.WChequeRec.Close;
   DMBANCO.WChequeRec.SQL.Clear;
   DMBANCO.WChequeRec.SQL.Add(' select * from vwchequerec ');
   DMBANCO.WChequeRec.SQL.Add(' Where (vwchequerec.fech = '+#39+'N'+#39+')');
	DMBANCO.WChequeRec.Open;

   DMBANCO.TAlx.Close;
   DMBANCO.TAlx.SQL.Clear;
   DMBANCO.TAlx.SQL.Add(' select SUM(vwchequerec.valor) AS TOTAL from tmp ');
   DMBANCO.TAlx.SQL.Add(' Left join vwchequerec on tmp.int1 = vwchequerec.cod_chequerec ');
   DMBANCO.TAlx.Open;
   Try
       LTotalChq.Caption:=FormatFloat('0.00', DMBANCO.TAlx.FieldByName('TOTAL').AsCurrency);
   Except
       LTotalChq.Caption:='0,00';
   End;
   LTotMostraCheque.Caption:=LTotalChq.Caption;
   DMBANCO.TAlx.Close;
   DMBANCO.TAlx.SQL.Clear;
   DMBANCO.TAlx.SQL.Add(' select TMP.COD_TMP, vwchequerec.banco, vwchequerec.cod_movbanco, vwchequerec.numcheque, vwchequerec.valor from tmp ');
   DMBANCO.TAlx.SQL.Add(' Left join vwchequerec on tmp.int1 = vwchequerec.cod_chequerec ');
   DMBANCO.TAlx.Open;
End;

//Gera lan�amento atrav�s de parametros passados
Function TFPadraoBaixaContas.GeraNovaParc(CODPARANT: Integer; ValorProd: Real; ValorServ:Real; Cobranca: String; NUMPARC:String; HIST: String; PerServ: Real; TipoJur: Integer; DTREFER: String): Boolean;
Var
    NovaData:String;
    Flag, XCOD_PARCELA:Integer;
Begin
    {Flag:=0;
    While Flag=0 do
    Begin//efetua o loop enquanto a data n�o for v�lida
        If InputQuery('GERANDO NOVA PARCELA','Informe Data de Vencimento para nova parcela:',NovaData)
        Then Begin
            Try
                If StrToDate(NovaData)>Date() Then
                    Flag:=1
                Else
                    Mensagem('INFORMA��O AO USU�RIO', 'Por favor informe uma data maior que a de hoje.', '', 1, 1, False, 'i');

            Except
            End;
        End;
    End; }

    NovaData := DateToStr(MsgInfoData('Informe a Data de Vencimento para nova parcela:', Date(), IncDay(Date(), 1), 0, true));
     
    If XTipoPR='P'
    Then begin
        Try
       	 XCOD_Parcela:=InserReg(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP');
       	 DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsInteger:=XCOD_Parcela;
            DMCONTA.TParcCP.FieldByName('DTVENC').AsString:=NovaData;
            DMCONTA.TParcCP.FieldByName('DTREF').AsString:=DTRefer;
            DMCONTA.TParcCP.FieldByName('COD_PARANT').AsInteger:=CODPARANT;
            DMCONTA.TParcCP.FieldByName('VALOR').Value:=ValorProd;
            DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:=Cobranca;
            DMCONTA.TParcCP.FieldByName('NUMPARC').AsString:=NUMPARC;
            DMCONTA.TParcCP.FieldByName('ESTRU').AsString:='1';
            DMCONTA.TParcCP.FieldByName('HISTORICO').AsString:=HIST;
            DMCONTA.TParcCP.FieldByName('FECH').AsString:='N';
            DMCONTA.TParcCP.FieldByName('COD_CTAPAGAR').AsInteger:= {XCODCTA;} DMCONTA.WParP.FieldByName('COD_CTAPAGAR').AsInteger;
//            DMCONTA.TParcCP.FieldByName('COD_COTA').AsInteger:=DMFINANC.TAlxMoeda.FieldByName('COD_COTA').Value;
            DMCONTA.TParcCP.POST;
            DMCONTA.TParcCP.ApplyUpdates;
            Result:=TRUE;
        Except
            DMCONTA.TParcCP.CancelUpdates;
            Result:=False;
        End;
    End;
    If XTipoPR='R'
    Then begin
        Try
       	 XCOD_Parcela:=InserReg(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR');
       	 DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsInteger:=XCOD_Parcela;
            DMCONTA.TParcCR.FieldByName('DTVENC').AsString:=NovaData;
            DMCONTA.TParcCR.FieldByName('DTREF').AsString:=DTRefer;
            DMCONTA.TParcCR.FieldByName('COD_PARANT').AsInteger:=CODPARANT;
            DMCONTA.TParcCR.FieldByName('VALOR').Value:=ValorProd+ValorServ;
        	 If PerServ>0
            Then Begin
    		 	XTabRef.FieldByName('VALORSERV').AsCurrency:=(DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency*PerServ)/100;
    			XTabRef.FieldByName('VALORPROD').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency-XTabRef.FieldByName('VALORSERV').AsCurrency;
            End
            Else Begin
    			XTabRef.FieldByName('VALORPROD').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;
            End;
            DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:=Cobranca;
            DMCONTA.TParcCR.FieldByName('HISTORICO').AsString:=HIST;
            DMCONTA.TParcCR.FieldByName('NUMPARC').AsString:=NUMPARC;
            DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger:=TipoJur;
//            DMCONTA.TParcCR.FieldByName('COD_COTA').AsInteger:=DMFINANC.TAlxMoeda.FieldByName('COD_COTA').Value;
            DMCONTA.TParcCR.FieldByName('FECH').AsString:='N';
            DMCONTA.TParcCR.FieldByName('COD_CTARECEBER').AsInteger:={DMCONTA.WParR}DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsInteger;
            FMenu.Extenso.Numero:=FormatFloat('0.00', DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency);
		     DMCONTA.TParcCR.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;
            DMCONTA.TParcCR.POST;
            DMCONTA.TParcCR.ApplyUpdates;
            Result:=TRUE;
        Except
            DMCONTA.TParcCR.CancelUpdates;
            Result:=False;
        End;
    End;
    xCodNewParc := XCOD_Parcela;    
End;

procedure TFPadraoBaixaContas.FormActivate(Sender: TObject);
Var
	XMULTADEV, XJUROSDEV: Real;
begin
   LVlrCred.Caption:='0' ;
  inherited;
  //Edmar - 15/04/2015 - Armazena o c�digo da PARCELACR para usar na hora de baixar a conta
  //variavel necess�ria pois depois que criar a nova parcela, o sistema filtrava o WParR
  //novamente. isso fazia com que o codigo da parcelacr original se perdesse
  XCOD_PARCELA_BAIXADA := DMCONTA.WParR.FIELDBYNAME('COD_PARCELACR').AsInteger;
  
  // deixa o check box do cheuqe invisivel
   CBCheque.Visible := false;
   CBCheque.SendToBack;
   XCod_Cartao := -1;
   xNaoLancTroco := 0;
  	//Edmar - 30/05/2014 - Controla se foi gerado uma nova parcela
   xGeraNovaParcela := 'N';

   //Paulo 12/09/2011: Deixa o painel do n�mero do cart�o invisivel
   PCartao.Visible:=false;
   PCartao.SendToBack;

  	If XTipoPR='R'
   Then Begin
      	If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=0
      	Then Begin
           If DMMACS.TLoja.FieldByName('JURCOMP').AsString='1'
           Then Begin//o calculo deve ser efetuado como juro composto
               ltipojuros.Caption:='Composto';
           End
           Else Begin
               ltipojuros.Caption:='Simples';
           End;

	   	End;
      	If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=1
      	Then Begin
			Ltipojuros.Caption:='Simples';
      	End;
      	If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=2
      	Then Begin
			Ltipojuros.Caption:='Composto';
      	End;
       FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', DMCONTA.WParR.FIELDBYNAME('COD_CTARECEBER').AsString, '');
       FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMCONTA.TCtaR.fieldByName('COD_CLIENTE').AsString, '');
       FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.fieldByName('COD_PESSOA').AsString, '');
       if DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsInteger > 0
       then begin
           LVlrCred.Caption:=FormatFloat('0.00',  DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency);
       end;
   End;
    EDDeb.Text:=DateToStr(Date());
    //INICIALIZA AS VARI�VEIS COM VALORES NULOS
    CBImpRecibo.Checked:=False;
    XCOD_CONTA:=-1;
    XCOD_CONTABANCO:=-1;
    PJUROS.Visible:=False;
    PDESCONTO.Visible:=False;

    If XTipoPR='P'
    Then Begin //Se conta a pagar
        DBCOB.Items.Add('Chq. Terc.');
        CBImpRecibo.Visible:=True;
        CBImpRecibo.BringToFront;
        CBImpRecibo.Repaint;
        EdVenc.Text:=DMCONTA.WParP.FieldByName('DTVENC').AsString;
        EdDocumento.Text:=DMCONTA.WParP.FieldByName('NUMDOC').AsString;
        EdParcela.Text:=DMCONTA.WParP.FieldByName('NUMPARC').AsString;
        DBCOB.Text:=DMCONTA.WParP.FieldByName('COBRANCA').AsString;
        EdValor.ValueNumeric:=DMCONTA.WParP.FieldByName('VALOR').AsCurrency;
        FiltraTabela(DMCONTA.TCtaP, 'CTAPAGAR', 'COD_CTAPAGAR', DMCONTA.WParP.FIELDBYNAME('COD_CTAPAGAR').AsString, '');
        //BUSCA CONTA NO PLANO
 	 	 If FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_PLNCTA = '+DMCONTA.TCtaP.FieldByName('COD_PLNCTA').AsString+')')=True
        Then Begin
		 	XCod_Conta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		    FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		    FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
        End
	     Else Begin
        	XCod_Conta:=0;
		    FrmConta.EdDescricao.Text:='';
		    FrmConta.EDCodigo.text:='';
        End;
        //BUSCA FORMA DE COBRAN�A
        FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', DMCONTA.WParP.FieldByName('COD_PARCELACP').AsString, '');
        DBCOB.Text:=DMCONTA.TParcCP.FieldByName('COBRANCA').AsString;
        //Filtra o cliente da parcela
        FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC', DMCONTA.WParP.fieldByName('COD_FORNEC').AsString, '');
    	 FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TFornecedor.fieldByName('COD_PESSOA').AsString, '');
    End
    Else Begin//se contas a receber
        CBImpRecibo.Visible:=True;
        EdVenc.Text:=DMCONTA.WParR.FieldByName('DTVENC').AsString;
        EdDocumento.Text:=DMCONTA.WParR.FieldByName('NUMDOC').AsString;
        EdParcela.Text:=DMCONTA.WParR.FieldByName('NUMPARC').AsString;
        EdValor.ValueNumeric:=DMCONTA.WParR.FieldByName('VALOR').Value-DMCONTA.WParR.FieldByName('VALORPG').AsCurrency;
        FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', DMCONTA.WParR.FIELDBYNAME('COD_CTARECEBER').AsString, '');
        //BUSCA CONTA NO PLANO
 	 	 If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_PLNCTA = '+DMCONTA.TCtaR.FieldByName('COD_PLNCTA').AsString+')')=True
        Then Begin
		 	XCod_Conta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		    FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		    FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
        End
	     Else Begin
        	XCod_Conta:=0;
		    FrmConta.EdDescricao.Text:='';
		    FrmConta.EDCodigo.text:='';
        End;
        //BUSCA FORMA DE COBRAN�A
        FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString, '');
        //if DMCONTA.TParcCR.FieldByName('COBRANCA').AsString <> 'Boleto' then
        DBCOB.Text:=DMCONTA.TParcCR.FieldByName('COBRANCA').AsString;
        //Filtra o cliente e depois a pessoa da parcela
        FiltraTabela(DMPESSOA.TCliente, 'CLIENTE', 'COD_CLIENTE', DMCONTA.WParR.fieldByName('COD_CLIENTE').AsString, '');
    	 FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.TCliente.fieldByName('COD_PESSOA').AsString, '');
    End;

    LVlrCred.Caption:=FormatFloat('0.00',  DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency);

    If StrToDate(EdVenc.text)<=StrToDate(EDDeb.text)
    Then Begin // Se na estiver ultrapassado a data de vencimento
        PJUROS.Visible:=true;
        PJUROS.BringToFront;
        //Aplica car�ncia
        If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text))
    	 Then Begin
           If DMPESSOA.TCliente.FieldByName('MULTA').AsCurrency<>0 Then
               EdMulta.Text:=DMPESSOA.TCliente.FieldByName('MULTA').AsString
           Else
               EdMulta.Text:=DMMACS.TLoja.FieldByName('MULTA').AsString;

		 	If DMMACS.TLoja.FieldByName('JUROS').AsString<>''
        	Then Begin//se for informado alguma forma de juros ela deve ser posta
               If DMPESSOA.TCliente.FieldByName('JURO').AsCurrency<>0 Then
                   EdJuro.ValueNumeric:=(DMPESSOA.TCliente.FieldByName('JURO').AsCurrency/30)
               Else
                   EdJuro.ValueNumeric:=(DMMACS.TLoja.FieldByName('JUROS').Value/30);

		 	End;
		 	LAvisoMulta.Caption:='Aplicados a '+difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0)+' Dias';
        	EdMulta.SetFocus;
        End
        Else begin
		 	LAvisoMulta.Caption:='Sem juros di�rios (car�ncia)';
        End;
        EdMulta.SetFocus;
        EdMulta.OnExit(Sender);
        EdJuro.SetFocus;
        EdJuro.OnExit(Sender);
        EdMulta.SetFocus;
    End
    Else Begin
		 LAvisoMulta.Caption:='';
        PDESCONTO.Visible:=true;
        PDESCONTO.BringToFront;
        EdDesc.SetFocus;
    End;
    If XTipoPR='R'
    Then Begin //Se conta a receber
		If DMMACS.TLoja.FieldByName('DIASDESC').AsInteger>0
       Then Begin
       	If (Date()+DMMACS.TLoja.FieldByNAme('DIASCARE').AsInteger)<=(DMCONTA.WParR.FieldByName('DTVENC').AsDateTime)
           Then Begin
				//Se o pagamento esta sendo efetuado tantos dias antes do vencimento deve ser aplicado desconto especial
               EdDesc.ValueNumeric:=DMMACS.TLoja.FieldByNAme('PERCDEC').AsCurrency;
           End;
       End;
    End;
    //No caso de usar tabela tmp inicia os valores
	 XCod_Tmp:=0;
  	 //APAGA REGISTROS DA TABERLA TMP
    DMCONTA.TAlx.Close;
    DMCONTA.TAlx.SQL.Clear;
    DMCONTA.TAlx.SQL.Add('DELETE FROM TMP ');
    DMCONTA.TAlx.ExecSQL;
    DMCONTA.IBT.CommitRetaining;
    FiltraCheques;
    // - 20/01/2009: pagamento multiplo
    XMultiplo := False;
    XTotMult := 0;
    XCodTmp := 0;
end;

procedure TFPadraoBaixaContas.EdMultaMoedaExit(Sender: TObject);
begin
  inherited;
    CalcPercent(0, EdMultaMoeda.ValueNumeric, EdValor.ValueNumeric, 'J');
    EdMulta.ValueNumeric:=AlxPercento;
    If XTipoPR= 'R'
    Then Begin
      If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=0
      Then Begin
    	If DMMACS.TLoja.FieldByName('JURCOMP').AsString='1'
       Then Begin//o calculo deve ser efetuado como juro composto
    		If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
	    		EDValorJurMulta.ValueNumeric:=(JurCompPar((EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric), EdJuro.ValueNumeric, StrToInt(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0))))
           Else
				EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
       End
    	Else Begin
    		If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
	 			EDValorJurMulta.ValueNumeric:=EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric+(EdJuroMoeda.ValueNumeric*StrToFloat(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0)))
           Else
				EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
       End;
	   End;
      If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=1
      Then Begin
    		If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
      			EDValorJurMulta.ValueNumeric:=EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric+(EdJuroMoeda.ValueNumeric*StrToFloat(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0)))
           Else
				EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
      End;
      If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=2
      Then Begin
    		If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
	 			EDValorJurMulta.ValueNumeric:=(JurCompPar((EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric), EdJuro.ValueNumeric, StrToInt(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0))))
           Else
				EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
      End;
    End
    Else Begin
    	If DMMACS.TLoja.FieldByName('JURCOMP').AsString='1' Then //o calculo deve ser efetuado como juro composto
	    	EDValorJurMulta.ValueNumeric:=(JurCompPar((EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric), EdJuro.ValueNumeric, StrToInt(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0)))) //// - 18/03/2009: LUGAR DO "0" ESTAVA:   DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency
    	Else
	 		EDValorJurMulta.ValueNumeric:=EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric+(EdJuroMoeda.ValueNumeric*StrToFloat(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0))); //// - 18/03/2009: LUGAR DO "0" ESTAVA:   DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency
    End;
end;

procedure TFPadraoBaixaContas.EdJuroExit(Sender: TObject);
begin
  inherited;
    CalcPercent(EdJuro.ValueNumeric, 0, EdValor.ValueNumeric, 'J');
    EdJuroMoeda.ValueNumeric:=AlxValor;
	 ltipojuros.Caption:='Simples';
    If XTipoPR= 'R'
    Then Begin
      If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=0
      Then Begin
         If DMMACS.TLoja.FieldByName('JURCOMP').AsString='1'
         Then Begin//o calculo deve ser efetuado como juro composto
             If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDate(EdDeb.Text)) Then
                 EDValorJurMulta.ValueNumeric:=(JurCompPar((EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric), EdJuro.ValueNumeric, StrToInt(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0))))
             Else
                 EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
             ltipojuros.Caption:='Composto';
         End
         Else Begin
             If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
                 EDValorJurMulta.ValueNumeric:=EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric+(EdJuroMoeda.ValueNumeric*StrToFloat(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0)))
             Else
                 EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
             ltipojuros.Caption:='Simples';
         End;

	   End;
      If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=1
      Then Begin
      		If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
    			EDValorJurMulta.ValueNumeric:=EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric+(EdJuroMoeda.ValueNumeric*StrToFloat(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0)))
           Else
				EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
			ltipojuros.Caption:='Simples';
      End;
      If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=2
      Then Begin
      		If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
	 			EDValorJurMulta.ValueNumeric:=(JurCompPar((EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric), EdJuro.ValueNumeric, StrToInt(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0))))
           Else
				EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
			ltipojuros.Caption:='Composto';
      End;
    End
    Else Begin
    	If DMMACS.TLoja.FieldByName('JURCOMP').AsString='1'
       Then Begin //o calculo deve ser efetuado como juro composto
	    	EDValorJurMulta.ValueNumeric:=(JurCompPar((EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric), EdJuro.ValueNumeric, StrToInt(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0))));  //// - 18/03/2009: LUGAR DO "0" ESTAVA:   DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency
			ltipojuros.Caption:='Composto';
       End
    	Else Begin
	 		EDValorJurMulta.ValueNumeric:=EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric+(EdJuroMoeda.ValueNumeric*StrToFloat(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0))); //// - 18/03/2009: LUGAR DO "0" ESTAVA:   DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency
			ltipojuros.Caption:='Simples';
		End;
    End;
end;

procedure TFPadraoBaixaContas.EdJuroMoedaExit(Sender: TObject);
begin
  inherited;
    CalcPercent(0, EdJuroMoeda.ValueNumeric, EdValor.ValueNumeric, 'J');
    EdJuro.ValueNumeric:=AlxPercento;
    If XTipoPR= 'R'
    Then Begin
      If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=0
      Then Begin
    	If DMMACS.TLoja.FieldByName('JURCOMP').AsString='1'
       Then Begin //o calculo deve ser efetuado como juro composto
       	If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
	    		EDValorJurMulta.ValueNumeric:=(JurCompPar((EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric), EdJuro.ValueNumeric, StrToInt(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0))))
           Else
				EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
       End
    	Else Begin
	 		EDValorJurMulta.ValueNumeric:=EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric+(EdJuroMoeda.ValueNumeric*StrToFloat(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0)));
       End;
	   End;
      If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=1
      Then Begin
       	If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
    			EDValorJurMulta.ValueNumeric:=EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric+(EdJuroMoeda.ValueNumeric*StrToFloat(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0)))
           Else
				EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
      End;
      If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=2
      Then Begin
       	If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
	 			EDValorJurMulta.ValueNumeric:=(JurCompPar((EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric), EdJuro.ValueNumeric, StrToInt(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0))))
           Else
				EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
      End;
    End
    Else Begin
    	If DMMACS.TLoja.FieldByName('JURCOMP').AsString='1' Then //o calculo deve ser efetuado como juro composto
	    	EDValorJurMulta.ValueNumeric:=(JurCompPar((EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric), EdJuro.ValueNumeric, StrToInt(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0))))  //// - 18/03/2009: LUGAR DO "0" ESTAVA:   DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency
    	Else
	 		EDValorJurMulta.ValueNumeric:=EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric+(EdJuroMoeda.ValueNumeric*StrToFloat(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0))); //// - 18/03/2009: LUGAR DO "0" ESTAVA:   DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency
    End;
end;

procedure TFPadraoBaixaContas.EdDescExit(Sender: TObject);
begin
  inherited;
    CalcPercent(EdDesc.ValueNumeric, 0, EdValor.ValueNumeric, 'D');
    EDDESCMOEDA.ValueNumeric:=AlxValor;
	 EDValorJurMulta.ValueNumeric:=(EdValor.ValueNumeric-EDDESCMOEDA.ValueNumeric);
end;

procedure TFPadraoBaixaContas.EDDESCMOEDAExit(Sender: TObject);
begin
  inherited;
    CalcPercent(0, EDDESCMOEDA.ValueNumeric, EdValor.ValueNumeric, 'D');
    EDDESC.ValueNumeric:=AlxPercento;
    EDValorJurMulta.ValueNumeric:=(EdValor.ValueNumeric-EDDESCMOEDA.ValueNumeric);
end;

procedure TFPadraoBaixaContas.BitBtn1Click(Sender: TObject);
Var
    //Flag:Integer; //somente ir� comitar em financ quando flag igual a 1 que significa que todas as opera��es foram conclu�das
    XVLRDEV, XVLRFINAL, XVLRMULTA, XVLRDESC, XVLRPG: Real;//Valores referentes a baixa
    //valores para lan�amentos de juros ou descontos
    XCodPlanoContas, XCod_Parant, XCod_Cta,xFormPag:Integer;
    XHist: String;
	 XTipoOP: Char;
    VLRSERV, VLRPROD: Real;//valores caso necess�rio gerar nova parcela
    XVLRCREDITO: Real;// Variavel para controle de credito
    XCodParcela, Cont, XAplicJur:Integer;
    XParcela, dtref :String;
    XVlrAuxDesc, XPerVlrServ:Real; // - 29/01/2009: variavel auxiliar no desconto das parcelas
    XDtAux, XDtAuxRef:TDateTime;
    xIntervalo :Integer;
begin
  inherited;
	 //EFETUA VERIFICA��ES PARA VER SE ESTA TUDO OK PARA CONTINUAR
    If (EDVALORPAGO.ValueNumeric<=0) AND (XVlrCheque<=0)
    Then Begin//caso n�o tenha sido informado o valor
        Mensagem('INFORMA��O AO USU�RIO', 'Por favor informe o valor pago corretamente, ele n�o pode ser um valor nulo.', '', 1, 1, False, 'i');
        EDVALORPAGO.SetFocus;
        Exit;
    End
    Else Begin
        XVLRPG:=StrToFloat(TiraPonto(EDVALORPAGO.Text));
    End;

    //INICIO DE PASSAGEM DE VALORES
	 //PASSA OS VALORES PARA VARI�VEIS
    //
    XVLRDEV:=StrToFloat(TiraPonto(EdValor.Text));
    XVLRFINAL:=StrToFloat(TiraPonto(EDValorJurMulta.Text));
    XVLRPG:=EDVALORPAGO.ValueNumeric-xvlrlanc;
    
    //Edmar - 08/01/2015 - Foi trocado a condi��o pois ele testava o valor antes
    //de alguma altera��o, caso fosse dado algum desconto na conta
    //[Solicita��o 282]
  	 //If XVLRDEV>XVLRFINAL
 	 {Edmar - 12/06/2015 - Alterado toda a condi��o para buscar o valor do desconto
    e tamb�m validar se foi selecionado alguma op��o
    If XVLRFINAL>=XVLRPG
    Then Begin
    	//NESTE CASO FOI DADO DESCONTO
       XVLRDESC:=XVLRDEV-XVLRFINAL;
       XVLRMULTA:=0;
       If (cbNewParc.Checked=False) and (cbBaixaValorPago.Checked=False) AND (XVLRDESC = 0)
       Then Begin
           Mensagem('INFORMA��O AO USU�RIO', 'Por favor, informe o que deve ser feito com a diferen�a de valores. Escolha uma op��o!.', '', 1, 1, False, 'i');
           Exit;
       End;
    End
    Else Begin
      	//NESTE CASO FOI COBRADO JUROS OU MULTA
      	XVLRDESC:=0;
      	XVLRMULTA:=XVLRFINAL-XVLRDEV;
       //Edmar - 13/01/2015 - Aqui a condi��o descrita acima tamb�m foi trocada
       //If (XVLRDEV<XVLRFINAL) and (cbConvertMulta.Checked=False) and (cbProxParc.Checked=False) and (cbLancTroco.Checked=False) and (cbNewParc.Checked=False) and (cbBaixaValorPago.Checked=false)
		If (XVLRFINAL<XVLRPG) and (cbConvertMulta.Checked=False) and (cbProxParc.Checked=False) and (cbLancTroco.Checked=False) and (cbNewParc.Checked=False) and (cbBaixaValorPago.Checked=false)
       Then Begin
           Mensagem('INFORMA��O AO USU�RIO', 'Por favor, informe o que deve ser feito com a diferen�a de valores. Escolha uma op��o!.', '', 1, 1, False, 'i');
           Exit;
       End; 
    End;}

    //Edmar - 12/06/2015 - Valida se foi seleciona alguma op��o caso os valores estejam diferentes
    if XVLRFINAL > XVLRPG then
    begin
       if (cbNewParc.Checked=False) and (cbBaixaValorPago.Checked=False) then
       begin
           Mensagem('INFORMA��O AO USU�RIO', 'Por favor, informe o que deve ser feito com a diferen�a de valores. Escolha uma op��o!.', '', 1, 1, False, 'i');
           Exit;
       end;
    end;

    if XVLRFINAL < XVLRPG then
    begin
		if (XVLRFINAL < XVLRPG) and (cbConvertMulta.Checked=False) and (cbProxParc.Checked=False) and (cbLancTroco.Checked=False) and (cbNewParc.Checked=False) and (cbBaixaValorPago.Checked=false) then
       begin
           Mensagem('INFORMA��O AO USU�RIO', 'Por favor, informe o que deve ser feito com a diferen�a de valores. Escolha uma op��o!.', '', 1, 1, False, 'i');
           Exit;
       end;
    end;
    //

    //Edmar - 12/06/2015 - Valida se foi dado aplicado alguma multa ou desconto
    if (EDDESCMOEDA.ValueNumeric <> 0) then
    begin
       XVLRMULTA := 0;
    	XVLRDESC  := XVLRDEV - XVLRFINAL;
    end
    else begin
    	if (EdMultaMoeda.ValueNumeric <> 0) OR (EdJuroMoeda.ValueNumeric <> 0) then
    	begin
      		XVLRDESC:=0;
      		XVLRMULTA := XVLRFINAL - XVLRDEV;
    	end;
    end;

    If XVLRDEV=XVLRFINAL
    then Begin
	 	//NESTE CASO NAO FOI COBRADO NEM JUROS/MULTAS E NEM DESCONTOS
      	XVLRMULTA:=0;
      	XVLRDESC:=0;
    End;
    //Edmar - 08/01/2014 - Passagem de variavel trocada para a linha 719
    //para calcular o valor pago antes validar se foi selecionada alguma op��o
    //[Solicita��o 282]
	 //XVLRPG:=EDVALORPAGO.ValueNumeric-xvlrlanc;

    // - 19/01/2009: incluido multiplo
    If (DBCOB.Text<>'Cr�dito') and (DBCOB.Text<>'Chq. Terc.') and (DBCOB.Text<>'Pix') and (DBCOB.Text<>'Banco') And  (DBCOB.Text<>'Carteira') And (DBCOB.Text<>'Cheque') And (DBCOB.Text<>'Cart�o') And (DBCOB.Text<>'Boleto')  And (DBCOB.Text<>'C - Cart�o')  And (DBCOB.Text<>'D - Cart�o')
    then Begin//caso n�o tenha sido informado a forma de pagamento
    	Mensagem('INFORMA��O AO USU�RIO', 'Por favor informe a forma de pagamento.', '', 1, 1, False, 'i');
       DBCOB.SetFocus;
       Exit;
    End;

    If FrmConta.EDCodigo.text=''
    then Begin//caso n�o tenha sido informado a Conta
    	Mensagem('INFORMA��O AO USU�RIO', 'Por favor informe a conta para lan�amento em caixa.', '', 1, 1, False, 'i');
      	FrmConta.BTNOPEN.SetFocus;
      	Exit;
    End;

    if ((DBCOB.Text = 'C - Cart�o') OR (DBCOB.Text = 'D - Cart�o')) AND (XCod_Cartao = -1) then
    begin
    	Mensagem('INFORMA��O AO USU�RIO', 'Por favor informe o cart�o que ser� usado na baixa.', '', 1, 1, False, 'i');
      	DBCOB.SetFocus;
      	Exit;
    end;

    {Edmar - 14/01/2015 - Comentado a instru��o abaixo pois foi alterado a politica do ZION
    e n�o � mais necess�rio informar um hist�rico para criar ou baixar uma conta
    If DBHISTORICO.text=''
    Then Begin//caso n�o tenha sido informado a Conta
      	Mensagem('INFORMA��O AO USU�RIO', 'Por favor informe o hist�rico da conta.', '', 1, 1, False, 'i');
      	DBHISTORICO.SetFocus;
      	Exit;
    End;
    }
    // - 20/01/2009: verificar qnt de lan�amentos
    if (DBCOB.Text = 'M�ltiplo')
    then begin
    	if XTotMult = 0
       then begin
           Mensagem('INFORMA��O AO USU�RIO', 'N�o h� nenhum Lan�amento M�ltiplo!', '', 1, 1, False, 'i');
        	DBCOBExit(sender);
        	Exit;
       end;

       if XTotMult = 1
       then begin
           Mensagem('INFORMA��O AO USU�RIO', 'H� apenas um Lan�amento M�ltiplo!', '', 1, 1, False, 'i');
           EDVALORPAGO.ValueNumeric := DMMACS.TMP.FieldByName('vlr1').Value;
        	DBCOB.Text := DMMACS.TMP.FieldByName('desc1').AsString;
           XMultiplo := False;
           EDVALORPAGO.SetFocus;
        	Exit;
       end;
    end;
    //FINAL DE VERIFICA��ES FINAIS COM MENSAGENS

    // verifica a forma de pagamento e conforme for a escolha a gaveta irah
    // - 19/01/2009: incluido multiplo
    If (DBCOB.Text= 'Carteira') or (DBCOB.Text = 'Cheque') or (DBCOB.Text = 'M�ltiplo')
    Then Begin
       If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FIELDBYNAME('COD_PARCELACR').AsString, '')=True
       Then Begin
           //FILTRA CTARECEBER P/ VERIFICAR SE O TIPO DE PAGAMENTO
           FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', DMCONTA.WParR.FIELDBYNAME('COD_CTARECEBER').AsString, '');

           // DADOS DA FORMA DE PAGAMENTO
           FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',DMCONTA.TCtaR.FieldByName('COD_FORMPAG').AsString,'');

           // se recebendo com dinheiro ou cheque deve-se abrir gaveta
           ecfOpenGaveta;
       End
    End;

    xSucessoBaixa:=0;
	 //Efetua Controle para verificar o Plano de Contas que deve ser lan�ado juros ou descontos
    If XVLRFINAL<>XVLRDEV then
    begin//Foi cobrado juros/multas ou efetuado desconto
    	If XTipoPR='P' then
       begin // PARA CONTAS A PAGAR
       	if ((EdJuro.ValueNumeric+EdMulta.ValueNumeric)>0) OR ( EdDesc.ValueNumeric<0) then
           begin //Deve ser Utilizado Conta do plano para juros/multas
           	XCodPlanoContas:=DMMACS.TLoja.FieldByName('PLNCTA_JURREC').AsInteger;
               XHist:='Juro/Multa Apl.- ';
               XTipoOP:='S';
           end
           else
           begin
           	XCodPlanoContas:=DMMACS.TLoja.FieldByName('PLNCTA_DESCREC').AsInteger;
               XHist:='Desconto  Apl. - ';
               XTipoOP:='E';
           end;
		end
       else
       begin // Utilizar contas para concedido
       	if ((EdJuro.ValueNumeric+EdMulta.ValueNumeric)>0) OR (EdDesc.ValueNumeric<0) OR (EdDesc.ValueNumeric<0) then
           begin//Deve ser Utilizado Conta do plano para juros/multas
           	XCodPlanoContas:=DMMACS.TLoja.FieldByName('PLNCTA_JURCONCED').AsInteger;
               XHist:='Juro/Multa Apl.- ';
               XTipoOP:='E';
           end
           else
           begin
           	XCodPlanoContas:=DMMACS.TLoja.FieldByName('PLNCTA_DESCCONCED').AsInteger;
               XHist:='Desconto  Apl. - ';
               XTipoOP:='S';
           end;
       end;//FINAL BEGIN TRATAMENTO CONTA A RECEBER
	 end;//FINAL CONDI��O (XVLRFINAL<>XVLRDEV)

    If XTipoPR='P' then
    begin
    	// - 19/01/2009: CONTROLE PAGAMENTO M�LTIPLO
       if (DBCOB.Text='M�ltiplo') then
       begin
       	XParcela := EdParcela.Text;
           Cont := 0;
           DMMACS.TMP.First;
           // - 19/01/2009: varrer tabela
           while not DMMACS.TMP.Eof do
           begin
           	// - 20/01/2009: se for a primeira conta a baixar usar codigo da view
               if Cont = 0 then
               begin
               	if FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsString, '')=True then
                   begin
                   	try
                       	//Edita tabela para entradas de valores para parcela
                           DMCONTA.TParcCP.Edit;
                           DMCONTA.TParcCP.FieldByName('DTDEBITO').ASSTRING:=EDDeb.text;
                           DMCONTA.TParcCP.FieldByName('JUROS').Value:=EdJuro.ValueNumeric;//conferir
                           DMCONTA.TParcCP.FieldByName('MULTAS').Value:=EdMulta.ValueNumeric;//conferir
                           DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:=DMMACS.TMP.FieldByName('desc1').AsString;
                           DMCONTA.TParcCP.FieldByName('DESCONTO').Value:=EdDesc.ValueNumeric;  //conferir
                           DMCONTA.TParcCP.FieldByName('VALORPG').Value:=DMMACS.TMP.FieldByName('vlr1').Value;
                           DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                           DMCONTA.TParcCP.Post;
                       except
                       	xSucessoBaixa:=0;
                           //fazer roolback alguam coisa asim
                       end;
                   end;
               end
               else begin
	                // - 20/01/2009: filtra pelo codigo da parcela
               	if FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', IntToStr(XCodParcela), '') = True then
                   begin
                   	try
                       	// - 20/01/2009: Edita tabela para entradas de valores para parcela
                           DMCONTA.TParcCP.Edit;
                           DMCONTA.TParcCP.FieldByName('DTDEBITO').ASSTRING:=EDDeb.text;
                           DMCONTA.TParcCP.FieldByName('JUROS').Value:=0;//EdJuro.ValueNumeric;//conferir
                           DMCONTA.TParcCP.FieldByName('MULTAS').Value:=0;//EdMulta.ValueNumeric;//conferir
                           DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:=DMMACS.TMP.FieldByName('desc1').AsString;
                           DMCONTA.TParcCP.FieldByName('DESCONTO').Value:=0;//EdDesc.ValueNumeric;  //conferir
                           DMCONTA.TParcCP.FieldByName('VALORPG').Value:=DMMACS.TMP.FieldByName('vlr1').Value;
                           DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                           DMCONTA.TParcCP.Post;

                           xSucessoBaixa:=1;
                       except
                       	xSucessoBaixa:=0;
                           //fazer roolback alguma coisa assim
                       end;
                   end;
               end;

               // - 20/01/2009:  diminuir valor devido
               XVLRDEV := XVLRDEV-DMMACS.TMP.FieldByName('vlr1').Value;

               // - 19/01/2009: lan�amento carteira  ----- INICIO ----
               if (DMMACS.TMP.FieldByName('DESC1').AsString='Carteira')then
               begin//controla os lan�amentos que devem ser feitos em caixa
               	if LanCaixa (-1, DateToStr(Date()), XCOD_CONTA, 'Bx. C.P.- Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + '-'+EDDeb.Text+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, DMMACS.TMP.FieldByName('vlr1').Value, 'CTAP', XCOD_CONTABAIXA, DMMACS.TMP.FieldByName('desc1').AsString, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString,  DMCONTA.WParP.FIELDBYNAME('dtrefer').AsDateTime, '1')=True then
                   	xSucessoBaixa:=1//se lan�ou
                   else
                   	xSucessoBaixa:=0;
               end;
               // - 19/01/2009: lan�amento carteira  ----- FIM ----

               // - 20/01/2009: lan�amento em banco ----- INICIO ----

               if DMMACS.TMP.FieldByName('DESC1').AsString='Banco' then
               begin
               	// verificar aki ######################
                   if LanBanco(DMMACS.TMP.FieldByName('INT1').AsInteger, XCOD_CONTA,'Bx. C.P.-'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, DMMACS.TMP.FieldByName('vlr1').Value, 'CTAPJ', XCOD_CONTABAIXA, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCP.FIELDBYNAME('DTREF').AsString)=True then
                   	xSucessoBaixa:=1//Se lan�ou
                   Else
                   	xSucessoBaixa:=0;
               end;

               // - 20/01/2009: lan�amento em banco  ----- FIM ----

               // - 20/01/2009: lan�amento em cheque----- INICIO ----

               if DMMACS.TMP.FieldByName('DESC1').AsString='Cheque' then
               begin
               	// verificar #############################
               	if LancChSai(XCOD_CONTA, 'Bx. C.P.-'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString+' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString,  StrToDate(EdVenc.Text), DMMACS.TMP.FieldByName('vlr1').Value, DMMACS.TMP.FieldByName('INT1').AsInteger, 'CTAPJ', IntToStr(XCOD_CONTABAIXA),'')=True then
                   	xSucessoBaixa:=1//Se lan�ou
					else
                   	xSucessoBaixa:=0;
               End;

               // - 20/01/2009: lan�amento em cheque  ----- FIM ----

               Cont := Cont + 1;

               if cont < XTotMult then
               begin
               	// - 20/01/2009: gerar nova parcela
               	try
                   	XParcela := XParcela+'/1';
                       XCodParcela:=InserReg(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP');
                       DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsInteger:=XCodParcela;
                       DMCONTA.TParcCP.FieldByName('DTVENC').AsString:=EdVenc.Text;
                       DMCONTA.TParcCP.FieldByName('DTREF').AsString:= DMCONTA.WParP.FIELDBYNAME('dtrefer').AsString;
                       DMCONTA.TParcCP.FieldByName('COD_PARANT').AsInteger:=DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsInteger;
                       DMCONTA.TParcCP.FieldByName('VALOR').Value:=XVLRDEV; //  passar valor da proxima parcela
                       DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:='Carteira';
                       DMCONTA.TParcCP.FieldByName('NUMPARC').AsString:=XParcela;
                       DMCONTA.TParcCP.FieldByName('HISTORICO').AsString:=DMCONTA.WParP.FIELDBYNAME('HISTORICO').AsString;
                       DMCONTA.TParcCP.FieldByName('FECH').AsString:='N';
                       DMCONTA.TParcCP.FieldByName('ESTRU').AsString:='1';
                       DMCONTA.TParcCP.FieldByName('COD_CTAPAGAR').AsInteger:=DMCONTA.WParP.FieldByName('COD_CTAPAGAR').AsInteger;
                       DMCONTA.TParcCP.Post;
                       DMCONTA.TParcCP.ApplyUpdates;
                   except
                   	DMCONTA.TParcCP.CancelUpdates;
                       //fazer roolback sair sei la
                   end;

                   //FiltraTabela(DMCONTA.WCtaP, 'VWCTAPAGAR', 'VWCTAPAGAR.COD_PARCELACP', IntToStr(XCodParcela), ' and ( COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+')');
                   DMCONTA.WParP.Close;
                   DMCONTA.WParP.SQL.Clear;
                   DMCONTA.WParP.SQL.Add('select * from VWPARCP where cod_parcelacp = :codigo and  COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39);
                   DMCONTA.WParP.ParamByName('codigo').AsInteger := XCodParcela;
                   DMCONTA.WParP.Open;

                   XCOD_CONTABAIXA := XCodParcela;
               end;

               // - 20/01/2009:   pr�xima ocorr�ncia
               DMMACS.TMP.Next;

           end;// - 20/01/2009:  final do while

           if XVLRFINAL > XVLRPG then
           begin//se pago n�o cobre o valor devido o correto � lan�ar nova parcela
           	if Mensagem('A T E N � � O', 'O Valor a ser Pago � de '+FloatToStr(XVLRFINAL)+#13+'O Valor Pago � de '+FloatToStr(EDVALORPAGO.ValueNumeric)+#13+'Deseja converter a diferen�a em uma outra parcela?', '', 2, 3, False, 'c')=2 then
               begin
               	if GeraNovaParc(DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsInteger, (EDValorJurMulta.ValueNumeric - EDVALORPAGO.ValueNumeric), 0, 'Carteira', XParcela+'/1', DMCONTA.WParP.FIELDBYNAME('HISTORICO').AsString, 0, 0, DMCONTA.WParP.FIELDBYNAME('dtrefer').AsString)=True Then
                   	xSucessoBaixa:=1
                   else
                   	xSucessoBaixa:=0;
               end
               else
               begin
               	xSucessoBaixa:=0;
                   DMCONTA.IBT.RollbackRetaining;
                   Exit;
               end;
           end;
        End
        // - 19/01/2009: FINAL DO CONTROLE MULTIPLO

    	 //TRABALHA COM CONTAS A PAGAR
        else If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsString, '')=True then
        begin
           try
               //Edita tabela para entradas de valores para parcela
               {
               DMCONTA.TParcCP.Edit;
               DMCONTA.TParcCP.FieldByName('DTDEBITO').ASSTRING:=EDDeb.text;
               DMCONTA.TParcCP.FieldByName('JUROS').Value:=EdJuro.ValueNumeric;
               DMCONTA.TParcCP.FieldByName('MULTAS').Value:=EdMulta.ValueNumeric;
               DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:=DBCOB.TEXT;
               //Edmar - 30/05/2014 - Se for cheque e foi pago parte da divida
               if (DBCOB.Text = 'Cheque') AND (XVLRFINAL > XVLRPG) then
               begin
               	//Edmar - 30/05/2014 - Deixa valor pago igual 0 e baixa a conta
               	DMCONTA.TParcCP.FieldByName('VALORPG').Value:=0;
					DMCONTA.TParcCP.FieldByName('FECH').AsString := 'S';
               end
               else
               begin
                	//Edmar - 06/06/2014 - Se foi pago um valor maior que o valor devido
                   //deve-se lan�ar o valor devido para evitar confus�es
                   if (XVLRPG > XVLRFINAL) then
						DMCONTA.TParcCP.FieldByName('VALORPG').Value:=XVLRFINAL-xvlrlanc
                   else
	                	DMCONTA.TParcCP.FieldByName('VALORPG').Value:=StrToFloat(TiraPonto(EDVALORPAGO.Text))-xvlrlanc;

                   //Edmar - 30/05/2014 - Outra condi��o se for cheque ou n�o
                   if DBCOB.Text = 'Cheque' then
  						DMCONTA.TParcCP.FieldByName('FECH').AsString := 'N'
                	else
  						DMCONTA.TParcCP.FieldByName('FECH').AsString := 'S';
                end;

                DMCONTA.TParcCP.FieldByName('DESCONTO').Value:=EdDesc.ValueNumeric;
                DMCONTA.TParcCP.Post;
                }

                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add(' UPDATE PARCELACP SET PARCELACP.DTDEBITO = :DTDEBITO, PARCELACP.JUROS = :JUROS, PARCELACP.MULTAS = :MULTAS, ');
                MDO.Query.SQL.Add(' PARCELACP.COBRANCA = :COBRANCA, PARCELACP.VALORPG = :VALORPG, PARCELACP.FECH = :FECH, PARCELACP.DESCONTO = :DESCONTO ');
                MDO.Query.SQL.Add(' WHERE PARCELACP.COD_PARCELACP = :COD_PARCELACP ');
                MDO.Query.ParamByName('DTDEBITO').ASSTRING:=EDDeb.text;
                MDO.Query.ParamByName('JUROS').Value:=EdJuro.ValueNumeric;
                MDO.Query.ParamByName('MULTAS').Value:=EdMulta.ValueNumeric;
                MDO.Query.ParamByName('COBRANCA').AsString:=DBCOB.TEXT;
                //Edmar - 30/05/2014 - Se for cheque e foi pago parte da divida
                if (DBCOB.Text = 'Cheque') AND (XVLRFINAL > XVLRPG) then
                begin
               	//Edmar - 30/05/2014 - Deixa valor pago igual 0 e baixa a conta
               	MDO.Query.ParamByName('VALORPG').Value:=0;
					MDO.Query.ParamByName('FECH').AsString := 'S';
                end
                else begin
                   //Edmar - 06/06/2014 - Se foi pago um valor maior que o valor devido
                   //deve-se lan�ar o valor devido para evitar confus�es
                   if (XVLRPG > XVLRFINAL) then
						MDO.Query.ParamByName('VALORPG').Value:=XVLRFINAL-xvlrlanc
                   else
	                	MDO.Query.ParamByName('VALORPG').Value:=StrToFloat(TiraPonto(EDVALORPAGO.Text))-xvlrlanc;

                   //Edmar - 30/05/2014 - Outra condi��o se for cheque ou n�o
                   if DBCOB.Text = 'Cheque' then
  						MDO.Query.ParamByName('FECH').AsString := 'N'
                	else
  						MDO.Query.ParamByName('FECH').AsString := 'S';
                end;
                MDO.Query.ParamByName('DESCONTO').Value:=EdDesc.ValueNumeric;
                MDO.Query.ParamByName('COD_PARCELACP').AsInteger := DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsInteger;
                MDO.Query.ExecSQL;

                xSucessoBaixa:=1;
            except
                xSucessoBaixa:=0;
            end;

           //INICIA CONTROLE
           //CONTROLA LAN�AMENTOS EM CARTEIRA
           //
			if (DBCOB.Text='Carteira') then
           begin//controla os lan�amentos que devem ser feitos em caixa
           	if (XVLRMULTA=0) AND (XVLRDESC=0) then
               begin //Se nao foi aplicado multa nem desconto
               	if LanCaixa (-1, DateToStr(Date()), XCOD_CONTA, 'Bx. C.P.- Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + '-'+EDDeb.Text+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRPG, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString,  DMCONTA.WParP.FIELDBYNAME('dtrefer').AsDateTime, '1')=True then
                   	xSucessoBaixa:=1//Se lan�ou
                   else
                   	xSucessoBaixa:=0;
				end;

               If XVLRDESC<>0 then
               begin//Se foi dado desconto
               	//Lan�amento para desconto
                   if LanCaixa (-1, DateToStr(Date()),  XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRDESC, 'CTAPJ', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, Date(), '1')=True then
                   	xSucessoBaixa:=1//Se lan�ou
                   else
                   	xSucessoBaixa:=0;

                   //Lan�amento para valor
            		if LanCaixa (-1, DateToStr(Date()), XCOD_CONTA, 'Bx. C.P.-'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRPG+XVLRDESC, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('dtrefer').AsDateTime, '1')=True then
                   	xSucessoBaixa:=1//Se lan�ou
                   else
                   	xSucessoBaixa:=0;
               end;

               if XVLRMULTA<>0 then
               begin //Se foi aplicado multa
               	//Lan�amento para juros ou multas
                   if LanCaixa (-1, DateToStr(Date()), XCodPlanoContas, XHist + 'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRMULTA, 'CTAPJ', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, Date(), '1')=True then
                   	xSucessoBaixa:=1//Se lan�ou
                   else
                   	xSucessoBaixa:=0;

                   //Lan�amento para o valor
                   if LanCaixa (-1, DateToStr(Date()), XCOD_CONTA, 'Bx. C.P.-'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRPG-XVLRMULTA, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('dtrefer').AsDateTime, '1')=True then
                   	xSucessoBaixa:=1//Se lan�ou
                   else
                   	xSucessoBaixa:=0;
               end;
			end;
           //FINAL DO CONTROLE EM CARTEIRA

           //INICIA CONTROLE
           //CONTROLA LAN�AMENTOS EM BANCO
           //
           if (DBCOB.Text='Banco') or (DBCOB.Text='Boleto')  or (DBCOB.Text='Pix') then
           begin
           	if (XVLRMULTA=0) AND (XVLRDESC=0) then
               begin //Se nao foi aplicado multa nem desconto
               	if LanBanco(XCOD_CONTABANCO, XCOD_CONTA,'Bx. C.P.-'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRPG, 'CTAPJ', XCOD_CONTABAIXA, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCP.FIELDBYNAME('DTREF').AsString)=True then
                   	xSucessoBaixa:=1//Se lan�ou
                   else
                   	xSucessoBaixa:=0;
               end;

               if XVLRDESC<>0 then
               begin//Se foi dado desconto
               	//Lan�amento para Descontos
               	if LanBanco(XCOD_CONTABANCO, XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRDESC, 'CTAPJ', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, XTipoOP, EdVenc.Text, '', EDDeb.Text, '1', DateToStr(Date()))=True then
                   	xSucessoBaixa:=1//Se lan�ou
                   else
                   	xSucessoBaixa:=0;

                   //Lan�amento para o Valor
					if LanBanco(XCOD_CONTABANCO, XCOD_CONTA, 'Bx. C.P.-'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRPG+XVLRDESC, 'CTAPJ', XCOD_CONTABAIXA, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCP.FIELDBYNAME('DTREF').AsString)=True then
                   	xSucessoBaixa:=1//Se lan�ou
                   else
						xSucessoBaixa:=0;
               end;

               if XVLRMULTA<>0 then
               begin //Se foi aplicado multa
               	//Lan�amento para multa
				  //If LanBanco(XCOD_CONTABANCO, XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRMULTA, 'CTAPJ', XCOD_CONTABAIXA, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'D�B. AUTO', XTIPOOP, EdVenc.Text, '', DMCONTA.WParP.FIELDBYNAME('DTLANC').AsString, '1', DateToStr(Date()))=True
               	If LanBanco(XCOD_CONTABANCO, XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRMULTA, 'CTAPJ', XCOD_CONTABAIXA, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, XTIPOOP, DateToStr(Date()), '', EDDeb.Text, '1', DateToStr(Date()))=True then
                   	xSucessoBaixa:=1//Se lan�ou
                   else
                   	xSucessoBaixa:=0;

                   //Lan�amento para valor
                   if LanBanco(XCOD_CONTABANCO, XCOD_CONTA,     'Bx. C.P.:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString,  XVLRPG-XVLRMULTA, 'CTAPJ', XCOD_CONTABAIXA, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCP.FIELDBYNAME('DTREF').AsString)=True then
                   	xSucessoBaixa:=1//Se lan�ou
                   else
                   	xSucessoBaixa:=0;
               End;
           End;
           //FINAL DO CONTROLE EM BANCO

           //INICIO DE PROCESSO
           //CONTROLA LAN�AMENTOS EM CHEQUE
           If DBCOB.Text='Cheque' then
           begin
           	//Edmar - 30/05/2014 - S� se n�o for gerado uma nova parcela lan�a um cheque de sa�da
            	if (xGeraNovaParcela = 'N') then
               begin
                   If LancChSai(XCOD_CONTA, 'Bx. C.P.-'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString+' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString,  StrToDate(EdVenc.Text), XVLRPG, XCOD_CONTABANCO, 'CTAPCH', IntToStr(XCOD_CONTABAIXA),'')=True
                   Then Begin //Se lan�ou
                       xSucessoBaixa:=1
                   End
                   Else Begin
                       xSucessoBaixa:=0;
                   End;
               end;
            End;


            DMFINANC.TAlx.Close;
            DMFINANC.TAlx.SQL.Clear;
            DMFINANC.TAlx.SQL.Add('SELECT VWCHEQUEREC.NUMCHEQUE FROM TMP LEFT JOIN VWCHEQUEREC ON TMP.INT1 = VWCHEQUEREC.COD_CHEQUEREC');
            DMFINANC.TAlx.Open;
            DMFINANC.TAlx.First;

            while not DMFINANC.TAlx.Eof do
            begin
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' UPDATE PARCELACP SET PARCELACP.CHEQUES = COALESCE(PARCELACP.CHEQUES, '''') ||'',''|| :CHEQUE WHERE PARCELACP.COD_PARCELACP = :COD');
               MDO.Query.ParamByName('CHEQUE').AsString := DMFINANC.TAlx.FieldByName('NUMCHEQUE').AsString;
               MDO.Query.ParamByName('COD').AsString := DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsString;
               MDO.Query.ExecSQL;
               DMFINANC.TAlx.Next;
            end;

          	 If (DBCOB.Text='Chq. Terc.') then
            begin//controla os lan�amentos que devem ser feitos em caixa
            	//PERCORRE TODOS OS CHEQUES EFETUANDO RETIRADO DO MESMO DO CX
            	DMBANCO.TAlx.First;
               While Not DMBANCO.TAlx.Eof do
               Begin
   				If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.TAlx.FieldByName('COD_MOVBANCO').AsString, '')=True
   				Then Begin
           			FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
            			//Atualizamovbanco
            			MDO.Query.Close;
            			MDO.Query.SQL.Clear;
                       MDO.Query.SQL.Add(' UPDATE MOVBANCO SET MOVBANCO.FECH = :FECH, MOVBANCO.HISTORICO = :HIST,MOVBANCO.DTMOV = :DTMOV WHERE MOVBANCO.COD_MOVBANCO = :COD_MOVBANCO ');
						MDO.Query.ParamByName('FECH').AsString := 'S';
						MDO.Query.ParamByName('DTMOV').AsString := DateToStr(Date());
                    	MDO.Query.ParamByName('COD_MOVBANCO').AsInteger := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger;
                    	MDO.Query.ParamByName('HIST').AsString := (DMBANCO.TMovBanco.FieldByName('HISTORICO').AsString+' - UTILIZADO N C.P. - '+ DMCONTA.WParP.FieldByName('NUMPARC').AsString);
                    	MDO.Query.ExecSQL;
                    	//Atualiza cheque rec com o destino
                    	MDO.Query.Close;
                    	MDO.Query.SQL.Clear;
                    	MDO.Query.SQL.Add(' update chequerec set chequerec.destino=:DESTINO Where chequerec.cod_movbanco=:COD_MOVBANCO ');
						MDO.Query.ParamByName('DESTINO').AsString := Copy('C.P.:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString+' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString, 0, 24);
            			MDO.Query.ParamByName('COD_MOVBANCO').AsInteger := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger;
            			MDO.Query.ExecSQL;

            			//Atualiza parcelacr passando o n�mero do cheque utilizado para o pagamento da conta

                       //Edmar - 12/11/2014 - Baixa a conta a receber atrelada ao cheque que foi usado no pagamento da CP
                       try
                       	MDO.Query.Close;
                       	MDO.Query.SQL.Clear;
                       	MDO.Query.SQL.Add(' UPDATE PARCELACR SET PARCELACR.FECH =:FECH, PARCELACR.DTDEBITO =:DTDEBITO, PARCELACR.VALORPG =:VALORPG, PARCELACR.COBRANCA = :COBRANCA ');
                       	MDO.Query.SQL.Add(' WHERE PARCELACR.COD_PARCELACR = :CODIGO');
                       	MDO.Query.ParamByName('FECH').AsString := 'S';
                       	MDO.Query.ParamByName('DTDEBITO').AsString := DateToStr(Date());
                       	MDO.Query.ParamByName('VALORPG').AsCurrency := DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency;
                       	MDO.Query.ParamByName('CODIGO').AsInteger := DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsInteger;
                       	MDO.Query.ParamByName('COBRANCA').AsString := 'Cheque';
                       	MDO.Query.ExecSQL;
                       except
                       	FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMBANCO.TMovBanco.FieldByName('COD_GERADOR').AsString, '');
                       	Mensagem(' A T E N � � O ', 'N�o foi poss�vel baixar a parcela '+DMCONTA.TParcCR.FieldByName('NUMPARC').AsString+' atrelada ao cheque '+DMBANCO.TMovBanco.FieldByName('NUMCHEQUE').AsString+' usado no pagamento. Favor fazer a baixa manual.', '', 1, 1, False, 'A');
                          	//DMFINANC.Transaction.RollbackRetaining;
                       end;

       				//LAN�AR VALOR DE ESTORNO PARA RETIRADA DA FOLHA DO CAIXA
						LanCaixa (-1, DateToStr(Date()),  DMBANCO.TMovBanco.FieldByName('cod_plncta').AsInteger, 'Pgto For: '+DMCONTA.WParP.FIELDBYNAME('NOME').AsString+' Chq. Terc.: '+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString, DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency, 'DCHR', DMBANCO.WChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'CHEQUE', 'S', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString, DMBANCO.TMovBanco.FieldByName('dtref').AsDateTime, '1');
                   End;
                   DMBANCO.TAlx.Next;
               End;

               //Se Sobrou dinheiro deve-se retirar do cx
               If XVLRFINAL>XVlrCheque
               Then Begin
					XHist:='Dif. '+XHist;
					LanCaixa (-1, DateToStr(Date()),  XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRFINAL-XVlrCheque, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('DTREFER').AsDateTime, '1');
				End;
            End;
            //CONTROLE PARA CREDITOS
            If DBCOB.Text='Cr�dito'
            Then Begin
            	//LAN�A CREDITO PARA FORNECEDOR
            	If FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'COD_FORNEC', DMCONTA.WParP.FieldByName('COD_FORNEC').AsString, '')=False
            	Then Begin
            		xSucessoBaixa:=1;
            	End;
            	If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsString, '')=False
            	Then Begin
            		xSucessoBaixa:=0;
            	End;
               XVLRCREDITO := EDVALORPAGO.ValueNumeric;
            	//determina o valor a ser lan�ado como credito
{            	If EDVALORPAGO.ValueNumeric<=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency
            	Then Begin
            		XVLRCREDITO:=XTabela.FieldByName('VALOR').AsCurrency;
            	End
            	Else Begin
            		XVLRCREDITO:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency;
            	End; }
            	DMPESSOA.TPessoa.Edit;
            	DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency-XVLRCREDITO;
            	DMPESSOA.TPessoa.Post;
               //Lan�a na tabela de credito
               LanCredito(DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsInteger, DMCONTA.WParP.FieldByName('COD_PARCELACP').AsInteger, 'PEDCOMPRA', 'FOR', 'S', DMCONTA.WParP.FieldByName('NUMPARC').AsString, DateToStr(Date()), XVLRCREDITO {XTabela.FieldByName('VALOR').AsCurrency});

            	//REGISTRO DE CREDITO ENTRADA
            	If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA,  'Bx. C.P. Cr�dito - Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + '-'+EDDeb.Text+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRCREDITO, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('DTREFER').AsDateTime, '1')=True
            	Then Begin//informa que a atualiza��o do financeiro foi efetivada
                   xSucessoBaixa:=1;
               	// REGISTRO DE CREDITO SAIDA
               	If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, 'Bx. C.P. Cr�dito - Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + '-'+EDDeb.Text+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRCREDITO, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('DTREFER').AsDateTime, '1')=True
               	Then Begin//informa que a atualiza��o do financeiro foi efetivada
                       xSucessoBaixa:=1;
                   	DMPESSOA.TransacPessoa.CommitRetaining;
               	End
               	Else Begin//informa que a finaliza��o do financeiro falhou
                       xSucessoBaixa:=0;
                   	DMPESSOA.TransacPessoa.RollbackRetaining;
               	End;
               	DMPESSOA.TransacPessoa.CommitRetaining;
            	End
            	Else Begin//informa que a finaliza��o do financeiro falhou
                   xSucessoBaixa:=0;
               	DMPESSOA.TransacPessoa.RollbackRetaining;
            	End;
            	If EDVALORPAGO.ValueNumeric>=XVLRCREDITO
            	Then Begin
            		//CASO O CREDITO NAO TENHA SIDO SUFICIENTE RETIRA DO CAIXA
               	// REGISTRO DE CREDITO SAIDA
               	If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, 'Bx. C.P. Cr�dito - Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + '-'+EDDeb.Text+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRPG-XVLRCREDITO, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('DTREFER').AsDateTime, '1')=True
               	Then Begin//informa que a atualiza��o do financeiro foi efetivada
                       xSucessoBaixa:=1;
                   	DMPESSOA.TransacPessoa.CommitRetaining;
               	End
               	Else Begin//informa que a finaliza��o do financeiro falhou
                       xSucessoBaixa:=0;
                   	DMPESSOA.TransacPessoa.RollbackRetaining;
               	End;
               End;
            ///End;

            // agora ir� verificar se a parcela tbm esta lancada no movbanco. Isso pq qdo gerou pedcompra e o pgto foi "cart�o", foi lancado registros na tabela movbanco, + sem movimenta��es
            If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.WParP.FieldByName('COD_PARCELACP').AsString + #39 + ') and (TIPOGERADOR = ' + #39 + 'CTPCARTAO' + #39 + ')')= TRUE
            Then Begin
               {
               DMBANCO.TMovBanco.Edit;
               DMBANCO.TMovBanco.FieldByName('FECH').AsString := 'S';
               DMBANCO.TMovBanco.FieldByName('ESTRU').AsString := '1';
               DMBANCO.TMovBanco.Post;
               }
               try
                   //
                   MDO.Query.Close;
                   MDO.Query.SQL.Clear;
                   MDO.Query.SQL.Add(' UPDATE MOVBANCO SET MOVBANCO.FECH = :FECH, MOVBANCO.ESTRU = :ESTRU WHERE MOVBANCO.COD_MOVBANCO = :COD_MOVBANCO ');
                   MDO.Query.ParamByName('FECH').AsString := 'S';
                   MDO.Query.ParamByName('ESTRU').AsString := '1';
                   MDO.Query.ParamByName('COD_MOVBANCO').AsInteger := DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger;
                   MDO.Query.ExecSQL;
               except
                   Mensagem(' A T E N � � O ', 'A Movimenta��o Banc�ria com historico '+DMBANCO.TMovBanco.FieldByName('HISTORICO').AsString+' n�o foi baixada. A opera��o ser� abortada.', '', 1, 1, False, 'A');
                   Exit;
               end;
            End;
            end;
        End;

    End// se n�o for conta a pagar for a receber
    Else Begin

    	FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMCONTA.WParR.FieldByName('COD_CLIENTE').AsString, '');
    	//CONTAS A RECEBER
    	if (DBCOB.Text='Banco') or (DBCOB.Text='Boleto') or (DBCOB.Text='Pix') then
       begin
       	//SE PAGAMENTO EM BANCO DEVE-SE VERIFICAR SE O USUARIO TEM PERMISSAO PARA ISSO
   		if ControlAccess('BAIXACTABANCO', '')=False then
           begin
               Mensagem('INFORMA��O', 'Sua conta de usu�rio n�o permite baixar contas em banco!', '', 1, 1, False, 'i');
               DBCOB.SetFocus;
               Exit;
       	End;
       End;

       // - 19/01/2009: CONTROLE PAGAMENTO M�LTIPLO
       //
       if (DBCOB.Text='M�ltiplo') then
       begin
       	XParcela := EdParcela.Text;
           Cont := 0;
           DMMACS.TMP.First;
           // - 19/01/2009: varrer tabela
           while not DMMACS.TMP.Eof do
           begin
           	//########################################################
               Try
               	//FILTRA CTARECEBER P/ VERIFICAR SE O TIPO � CADERNETA
                   If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', DMCONTA.WParR.FIELDBYNAME('COD_CTARECEBER').AsString, '')=False Then
                   	Exit;

                   //Edita tabela para entradas de valores para parcela
               Except
               	xSucessoBaixa:=0;
               End;

               //##################################################################

               // - 20/01/2009: se for a primeira conta a baixar usar codigo da view
               if Cont = 0 then
               begin
               	if FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.WParR.FIELDBYNAME('COD_PARCELACR').AsString, '')=True then
                   begin
                   	dtref := DMCONTA.TParcCR.FIELDBYNAME('dtref').AsString;
                       Try
                       	//Edita tabela para entradas de valores para parcela
                           DMCONTA.TParcCR.edit;
                           DMCONTA.TParcCR.FieldByName('DTDEBITO').ASSTRING:=EDDeb.text;
                           DMCONTA.TParcCR.FieldByName('JUROS').Value:=EdJuro.ValueNumeric;
                           DMCONTA.TParcCR.FieldByName('DESCONTO').Value:=EdDesc.ValueNumeric;
                           DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:=DMMACS.TMP.FieldByName('desc1').AsString;
                           DMCONTA.TParcCR.FieldByName('MULTA').Value:=EdMulta.ValueNumeric;
                           DMCONTA.TParcCR.FieldByName('VALORPG').Value:=DMMACS.TMP.FieldByName('vlr1').Value;
						    DMCONTA.TParcCR.Post;

                           if DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency>0 then
                           begin
                           	DMCONTA.TParcCR.Edit;
                               DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency:=(DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency*XTabRef.FieldByName('PERVLRSERV').AsCurrency)/100;
                               DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency-XTabRef.FieldByName('VALORSERV').AsCurrency;
                               DMCONTA.TParcCR.Post;
                           end
							else begin
								DMCONTA.TParcCR.edit;
                               DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency;
                               DMCONTA.TParcCR.Post;
                           end;

                           If DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString<>'PEDVCAD' then
                           begin
                           	//verfica se for diferente do tipo caderneta
                           	DMCONTA.TParcCR.Edit;
                               DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
								DMCONTA.TParcCR.Post;
                           end;
                           xSucessoBaixa:=1;
                       Except
                       	xSucessoBaixa:=0;
                           //fazer roolback algum coisa asim
                       End;
                   end;
               end
               // - 20/01/2009: filtra pelo codigo da parcela
               else begin
               	If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', IntToStr(XCodParcela), '')=True then
                   begin
                   	Try
                       	// - 20/01/2009: Edita tabela para entradas de valores para parcela
                           DMCONTA.TParcCR.edit;
                           DMCONTA.TParcCR.FieldByName('DTDEBITO').ASSTRING:=EDDeb.text;
                           DMCONTA.TParcCR.FieldByName('JUROS').Value:=0;//EdJuro.ValueNumeric;
							DMCONTA.TParcCR.FieldByName('DESCONTO').Value:=0;//EdDesc.ValueNumeric;
                           DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:=DMMACS.TMP.FieldByName('desc1').AsString;
                           DMCONTA.TParcCR.FieldByName('MULTA').Value:=0;//EdMulta.ValueNumeric;
                           DMCONTA.TParcCR.FieldByName('VALORPG').Value:=DMMACS.TMP.FieldByName('vlr1').Value;
                           DMCONTA.TParcCR.Post;

                           if DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency>0 then
                           begin
                           	DMCONTA.TParcCR.Edit;
                               DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency:=(DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency*XTabRef.FieldByName('PERVLRSERV').AsCurrency)/100;
                               DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency-XTabRef.FieldByName('VALORSERV').AsCurrency;
							    DMCONTA.TParcCR.Post;
                           end
                           else begin
                           	DMCONTA.TParcCR.Edit;
                               DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency;
                               DMCONTA.TParcCR.Post;
                           end;

                       	if DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString<>'PEDVCAD' then
                           begin//verfica se for diferente do tipo caderneta
                           	DMCONTA.TParcCR.Edit;
								DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                               DMCONTA.TParcCR.Post;
                           end;
                           xSucessoBaixa:=1;

                       Except
                       	xSucessoBaixa:=0;
                           //fazer roolback alguma coisa asim
                       End;
                   end;
               end;

               // - 20/01/2009:  diminuir valor devido
               XVLRDEV := XVLRDEV-DMMACS.TMP.FieldByName('vlr1').Value;

               // - 19/01/2009: lan�amento carteira  ----- INICIO ----

               If (DMMACS.TMP.FieldByName('DESC1').AsString='Carteira') then
               begin//controla os lan�amentos que devem ser feitos em caixa
               	if DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency<>0 then
                   begin
                   	//LAN�A PARA PRODUTOS
                       if (DMMACS.TMP.FieldByName('vlr1').Value-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency <> 0)then
                       begin
                       	if LanCaixa (0, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R. (P)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  DMMACS.TMP.FieldByName('vlr1').Value-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency, 'CTAR', XCOD_CONTABAIXA, DMMACS.TMP.FieldByName('desc1').AsString, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True then
                           	xSucessoBaixa:=1//Se lan�ou
                           else
                           	xSucessoBaixa:=0;
                       end;

                       //LAN�A PARA SERVI�OS
                       If LanCaixa (0, DateToStr(Date()), DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger, 'Bx. C.R. (S)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+EDDeb.Text+'Cli. '+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency, 'CTAR', XCOD_CONTABAIXA,  DMMACS.TMP.FieldByName('desc1').AsString, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True then
                       	xSucessoBaixa:=1//Se lan�ou
                       else
                       	xSucessoBaixa:=0;
					end
                   else begin
						if LanCaixa (0, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R.-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  DMMACS.TMP.FieldByName('vlr1').Value, 'CTAR', XCOD_CONTABAIXA,  DMMACS.TMP.FieldByName('desc1').AsString, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True then
                       	xSucessoBaixa:=1//Se lan�ou
                       else
							xSucessoBaixa:=0;
                   end;
				End;
               // - 19/01/2009: lan�amento carteira  ----- FIM ----

               // - 20/01/2009: lan�amento em banco ----- INICIO ----

               If (DMMACS.TMP.FieldByName('DESC1').AsString = 'Banco') or (DMMACS.TMP.FieldByName('DESC1').AsString = 'Pix') then
				begin
               	if DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency<>0 then
                   begin
                   	//NESTE CASO EXISTE VALOR PARA SERVICO E ELE DEVE SER LAN�ADO EM CONTA SEPARADA DE PRODUTO
                       //LANCA APENAS PARA PRODUTOS
                           if (DMMACS.TMP.FieldByName('vlr1').Value-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency <> 0)then
                           begin
                               If LanBanco(DMMACS.TMP.FieldByName('INT1').AsInteger, XCOD_CONTA, 'Bx. C.R. (P)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+EDDeb.Text+'Cli. '+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, DMMACS.TMP.FieldByName('vlr1').Value - DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency , 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
                               Then  //Se lan�ou
                                       xSucessoBaixa:=1
                               Else
                                       xSucessoBaixa:=0;
                           end;
                       	//LANCA APENAS PARA SERVI�OS
                       	If LanBanco(DMMACS.TMP.FieldByName('INT1').AsInteger, DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger, 'Bx. C.R. (S)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+EDDeb.Text+' Cli. '+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency , 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
            				Then  //Se lan�ou
               				    xSucessoBaixa:=1
            				Else
               				    xSucessoBaixa:=0;
					  End
                      Else Begin
                       	//LANCA APENAS PARA PRODUTOS
                       	If LanBanco(DMMACS.TMP.FieldByName('INT1').AsInteger, XCOD_CONTA, 'Bx. C.R.-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, DMMACS.TMP.FieldByName('vlr1').Value, 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
            				Then  //Se lan�ou
               				    xSucessoBaixa:=1
            				Else
               				    xSucessoBaixa:=0;
                      End;
				  END;


                   // - 20/01/2009: lan�amento em banco  ----- FIM ----


                   // - 20/01/2009: lan�amento em cheque----- INICIO ----

                    If DMMACS.TMP.FieldByName('DESC1').AsString='Cheque'
                    Then Begin
                       FMenu.XDTREF:=DMCONTA.WParR.FIELDBYNAME('dtlanc').AsString;
                         If LancChEnt(XCOD_CONTA, 0,  'Bx. C.R.-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, StrToDate(EdVenc.Text), '', DMMACS.TMP.FieldByName('vlr1').Value, 0, '', '', 0, '', '', 'CTAR', IntToStr(DMMACS.TMP.FieldByName('INT1').AsInteger))=True
                         Then  //Se lan�ou
                            xSucessoBaixa:=1
                          Else
                            xSucessoBaixa:=0;
                        FMenu.XDTREF:='18/07/1980';//variavel temporaria para auxiliar nas datas de referencia. Manter este valor!

                    End;

                   // - 20/01/2009: lan�amento em cheque  ----- FIM ----


                  Cont := Cont+1;

                  if cont < XTotMult
                  then begin
                     // - 20/01/2009: gerar nova parcela

                     Try
                          XCodParcela:=InserReg(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR');
                          DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsInteger:=XCodParcela;
                          DMCONTA.TParcCR.FieldByName('DTVENC').AsString:=EdVenc.Text;
                          DMCONTA.TParcCR.FieldByName('DTREF').AsString:=dtref;   // - 20/01/2009: colocado pro nao axar dtref na view parcelar

                          DMCONTA.TParcCR.FieldByName('COD_PARANT').AsInteger:=DMCONTA.WParR.FIELDBYNAME('COD_PARCELACR').AsInteger;
                          DMCONTA.TParcCR.FieldByName('VALOR').Value:=XVLRDEV; //  passar valor da proxima parcela;
                          If DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency>0
                          Then Begin
                              XTabRef.FieldByName('VALORSERV').AsCurrency:=(DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency*DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency)/100;
                              XTabRef.FieldByName('VALORPROD').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency-XTabRef.FieldByName('VALORSERV').AsCurrency;
                          End
                          Else Begin
                              XTabRef.FieldByName('VALORPROD').AsCurrency:=DMCONTA.WParR.FieldByName('VALOR').AsCurrency;
                          End;
                          DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:='Carteira';
                          DMCONTA.TParcCR.FieldByName('HISTORICO').AsString:=DMCONTA.WParR.FIELDBYNAME('HISTORICO').AsString;
                          DMCONTA.TParcCR.FieldByName('NUMPARC').AsString:=XParcela;
                          DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger:=DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger;
                          DMCONTA.TParcCR.FieldByName('FECH').AsString:='N';
                          DMCONTA.TParcCR.FieldByName('COD_CTARECEBER').AsInteger:=DMCONTA.WParR.FieldByName('COD_CTARECEBER').AsInteger;
                          FMenu.Extenso.Numero:=FormatFloat('0.00', XVLRDEV);
                           DMCONTA.TParcCR.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;
                          DMCONTA.TParcCR.POST;
                          DMCONTA.TParcCR.ApplyUpdates;
                      Except
                          DMCONTA.TParcCR.CancelUpdates;
                          //fazer roolback sair sei la
                          xSucessoBaixa:=0;
                      End;

                      DMCONTA.WParR.Close;
                      DMCONTA.WParR.SQL.Clear;
                      DMCONTA.WParR.SQL.Add('select * from VWPARCR where cod_parcelacr = :codigo and  COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39);
                      DMCONTA.WParR.ParamByName('codigo').AsInteger := XCodParcela;
                      DMCONTA.WParR.Open;

                      XCOD_CONTABAIXA := XCodParcela;

                  end;


                // - 20/01/2009:   pr�xima ocorr�ncia
                DMMACS.TMP.Next;

             end;// - 20/01/2009:  final do while

             If (XVLRFINAL > XVLRPG) AND (DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString<>'PEDVCAD')
             Then Begin//se pago n�o cobre o valor devido o correto � lan�ar nova parcela
                If Mensagem('A T E N � � O', 'O Valor a ser Pago � de '+FloatToStr(XVLRFINAL) +#13+'O Valor Pago � de '+FloatToStr(XVLRPG)+#13+'Deseja converter a diferen�a em uma outra parcela?', '', 2, 2, False, 'c')=2
                Then Begin
                	If XTipoPR='P'
                    Then Begin//gera nova parcela para cta pagar
                    	If GeraNovaParc(DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsInteger, (EDValorJurMulta.ValueNumeric - EDVALORPAGO.ValueNumeric), 0, 'Carteira', XParcela+'/1', DMCONTA.WParP.FIELDBYNAME('HISTORICO').AsString, DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency, DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger, DMCONTA.WParR.FIELDBYNAME('dtrefer').AsString)=True Then
                       	xSucessoBaixa:=1
                    	Else
                       	xSucessoBaixa:=0;
                    End
                    Else Begin//gera nova parcela para cta receber
                    	If XVALORSERV<>0
                       Then Begin//caso deva relan�ar servico
							VLRPROD:=(EDValorJurMulta.ValueNumeric - EDVALORPAGO.ValueNumeric)/2;
							VLRSERV:=(EDValorJurMulta.ValueNumeric - EDVALORPAGO.ValueNumeric)/2;
                       End
                    	Else Begin
							VLRPROD:=(EDValorJurMulta.ValueNumeric - EDVALORPAGO.ValueNumeric);
							VLRSERV:= 0;
                        End;

                    	If GeraNovaParc(DMCONTA.WParR.FIELDBYNAME('COD_PARCELACR').AsInteger, VLRPROD, VLRSERV, 'Carteira', XParcela+'/1', DMCONTA.WParR.FIELDBYNAME('HISTORICO').AsString, DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency, DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger, DMCONTA.TParcCR.FIELDBYNAME('dtref').AsString)=True
                       Then Begin
                          DMCONTA.TParcCR.Edit;
                          DMCONTA.TParcCR.FieldByName('PARCIAL').AsString:='1';
                          DMCONTA.TParcCR.Post;
                          DMCONTA.TParcCR.ApplyUpdates;
                          DMCONTA.IBT.CommitRetaining;
                          DMFINANC.Transaction.CommitRetaining;
                          xSucessoBaixa:=1
						End
                    	Else Begin
                       	xSucessoBaixa:=0;
                       End;
                    End;
                End
                Else Begin
                	If Mensagem('C O N F I R M A � � O', 'Baixar apenas o Valor de '+FloatToStr(XVLRPG)+'?', '', 2, 2, False, 'c')<>2
                	Then Begin
                   	    xSucessoBaixa:=0;
                   	    DMCONTA.IBT.RollbackRetaining;
                   	    Exit;
                    End;
                End;
             End
             Else Begin
                 DMCONTA.TParcCR.Edit;
                 DMCONTA.TParcCR.FieldByName('PARCIAL').AsString:='0';
                 DMCONTA.TParcCR.Post;
                 DMCONTA.TParcCR.ApplyUpdates;
                 DMCONTA.IBT.CommitRetaining;
                 DMFINANC.Transaction.CommitRetaining;
             End;

        End
        // - 19/01/2009: FINAL DO CONTROLE MULTIPLO
        // caiu akia�sdkjf� askdfj� askjf�a skdjf########
        else If FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', IntToStr(XCOD_PARCELA_BAIXADA) {DMCONTA.WParR.FIELDBYNAME('COD_PARCELACR').AsString}, '')=True
        Then Begin
            Try
            	 //FILTRA CTARECEBER P/ VERIFICAR SE O TIPO � CADERNETA
        	 	 If FiltraTabela(DMCONTA.TCtaR, 'CTARECEBER', 'COD_CTARECEBER', DMCONTA.WParR.FIELDBYNAME('COD_CTARECEBER').AsString, '')=False Then
            		Exit;
                {
	             //Edita tabela para entradas de valores para parcela
                DMCONTA.TParcCR.Edit;
                //Edmar - 09/02/2015 - Quando a cobran�a for do tipo cart�o, apenas muda a forma de pagamento,
                //seta o cart�o que deve ser usado para a baixa e atualiza os valores de multa, juros e desconto
                if (DBCOB.Text = 'C - Cart�o') OR (DBCOB.Text = 'D - Cart�o') then
                begin
                	DMCONTA.TParcCR.FieldByName('COBRANCA').AsString := DBCOB.TEXT;
                   DMCONTA.TParcCR.FieldByName('COD_COTA').AsInteger := XCod_Cartao;
                   DMCONTA.TParcCR.FieldByName('JUROS').Value:=EdJuro.ValueNumeric;
                	DMCONTA.TParcCR.FieldByName('MULTA').Value:=EdMulta.ValueNumeric;
                	DMCONTA.TParcCR.FieldByName('DESCONTO').Value:=EdDesc.ValueNumeric;
                end
                else begin
                	//caso contrario, usar o metodo padr�o
                	//Dmfinanc.TParcelaCR.FieldByName('COD_COTA').Value:=Dmfinanc.TAlxMoeda.FieldByName('COD_COTA').Value;
                	DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:=DBCOB.TEXT;
                	DMCONTA.TParcCR.FieldByName('DTDEBITO').ASSTRING:=EDDeb.text;
                	DMCONTA.TParcCR.FieldByName('JUROS').Value:=EdJuro.ValueNumeric;
                	DMCONTA.TParcCR.FieldByName('MULTA').Value:=EdMulta.ValueNumeric;
                	DMCONTA.TParcCR.FieldByName('DESCONTO').Value:=EdDesc.ValueNumeric;

                	//Edmar - 20/05/2014 - Deixa valor 0 caso seja pago parte da conta
                	if (XVLRFINAL > XVLRPG) AND (DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString<>'PEDVCAD')
                   	AND (DBCOB.TEXT = 'Cheque') then
                	begin
                		DMCONTA.TParcCR.FieldByName('VALORPG').Value := 0;
						DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                	end
                	else begin
                		//Edmar - 06/06/2014 - Se foi pago um valor maior que o valor devido
                   	//deve-se lan�ar o valor devido para evitar confus�es
                   	if (XVLRPG > XVLRFINAL) then
							DMCONTA.TParcCR.FieldByName('VALORPG').Value:=XVLRFINAL-xvlrlanc
                   	else
	                		DMCONTA.TParcCR.FieldByName('VALORPG').Value:=StrToFloat(TiraPonto(EDVALORPAGO.Text))-xvlrlanc;

                   	//Edmar - 20/05/2014 - Testa se o tipo � cheque e baixa ou n�o
                   	if DBCOB.TEXT = 'Cheque' then
                			DMCONTA.TParcCR.FieldByName('FECH').AsString:='N'
                   	else
                			DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                	end;

                	//APAGA AS LINHAS REPETIDAS: VALORPG E ONDE ATRIBUI VALOR AO FECH
                	//DMCONTA.TParcCR.FieldByName('VALORPG').Value:=StrToFloat(TiraPonto(EDVALORPAGO.Text))-xvlrlanc;
                	DMCONTA.TParcCR.FieldByName('EXPORTA').Value := 0;
                end;
                DMCONTA.TParcCR.Post;

                If DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency>0
                Then Begin
       		 	DMCONTA.TParcCR.Edit;
    				DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency:=(DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency*XTabRef.FieldByName('PERVLRSERV').AsCurrency)/100;
    				DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency-XTabRef.FieldByName('VALORSERV').AsCurrency;
                   DMCONTA.TParcCR.Post;
           	 End
                Else Begin
                	DMCONTA.TParcCR.Edit;
    				DMCONTA.TParcCR.FieldByName('VALORPROD').AsCurrency:=DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency;
                   DMCONTA.TParcCR.Post;
                End;
				 If DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString<>'PEDVCAD'
                Then Begin//verifica se for diferente do tipo caderneta
                   if Date() > DMCONTA.TParcCR.fieldByName('DTVENC').AsDateTime then
                       xIntervalo:=DaysBetween(DMCONTA.TParcCR.fieldByName('DTVENC').AsDateTime, Date());
                   DMCONTA.TParcCR.Edit;
                   DMCONTA.TParcCR.FieldByName('DIASATRASO').AsString:=IntToStr(xIntervalo);
                	DMCONTA.TParcCR.Post;
                End;
                }
                MDO.Query.Close;
                MDO.Query.SQL.Clear;
                MDO.Query.SQL.Add(' UPDATE PARCELACR SET PARCELACR.COBRANCA = :COBRANCA, PARCELACR.JUROS = :JUROS, ');
                MDO.Query.SQL.Add(' PARCELACR.MULTA = :MULTA, PARCELACR.DESCONTO = :DESCONTO, ');
                if (DBCOB.Text = 'C - Cart�o') OR (DBCOB.Text = 'D - Cart�o') then
                begin
                   MDO.Query.SQL.Add(' PARCELACR.COD_COTA = :COD_COTA, ');
                   MDO.Query.ParamByName('COD_COTA').AsInteger := XCod_Cartao;
                end
                else begin
                   MDO.Query.SQL.Add(' PARCELACR.DTDEBITO = :DTDEBITO, PARCELACR.EXPORTA = :EXPORTA, PARCELACR.VALORPG = :VALORPG, PARCELACR.FECH = :FECH, ');
                   MDO.Query.ParamByName('DTDEBITO').ASSTRING:=EDDeb.text;
                	MDO.Query.ParamByName('EXPORTA').Value := 0;

                	//Edmar - 20/05/2014 - Deixa valor 0 caso seja pago parte da conta
                	if (XVLRFINAL > XVLRPG) AND (DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString<>'PEDVCAD') AND (DBCOB.TEXT = 'Cheque') then
                	begin
                		MDO.Query.ParamByName('VALORPG').Value := 0;
						MDO.Query.ParamByName('FECH').AsString:='S';
                	end
                	else begin
                		//Edmar - 06/06/2014 - Se foi pago um valor maior que o valor devido
                   	//deve-se lan�ar o valor devido para evitar confus�es
                   	if (XVLRPG > XVLRFINAL) then
							MDO.Query.ParamByName('VALORPG').Value:=XVLRFINAL-xvlrlanc
                   	else
	                		MDO.Query.ParamByName('VALORPG').Value:=StrToFloat(TiraPonto(EDVALORPAGO.Text))-xvlrlanc;

                   	//Edmar - 20/05/2014 - Testa se o tipo � cheque e baixa ou n�o
                   	if DBCOB.TEXT = 'Cheque' then
                			MDO.Query.ParamByName('FECH').AsString:='N'
                   	else
                           MDO.Query.ParamByName('FECH').AsString:='S';
                	end;
                end;
                MDO.Query.ParamByName('COBRANCA').AsString := DBCOB.TEXT;
                MDO.Query.ParamByName('JUROS').Value := EdJuro.ValueNumeric;
                MDO.Query.ParamByName('MULTA').Value := EdMulta.ValueNumeric;
                MDO.Query.ParamByName('DESCONTO').Value := EdDesc.ValueNumeric;

                if DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency > 0 then
                begin
                   MDO.Query.SQL.Add(' PARCELACR.VALORSERV = :VALORSERV, PARCELACR.VALORPROD = :VALORPROD ');
    				MDO.Query.ParamByName('VALORSERV').AsCurrency := (DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency * XTabRef.FieldByName('PERVLRSERV').AsCurrency) / 100;
    				MDO.Query.ParamByName('VALORPROD').AsCurrency :=  DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency - XTabRef.FieldByName('VALORSERV').AsCurrency;
           	 end
                else begin
                   MDO.Query.SQL.Add(' PARCELACR.VALORPROD = :VALORPROD ');
    				MDO.Query.ParamByName('VALORPROD').AsCurrency := DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency;
                end;

				 if DMCONTA.TCtaR.FieldByName('TIPOGERADOR').AsString <> 'PEDVCAD' then
                begin//verifica se for diferente do tipo caderneta
                   if Date() > DMCONTA.TParcCR.fieldByName('DTVENC').AsDateTime then
                       xIntervalo := DaysBetween(DMCONTA.TParcCR.fieldByName('DTVENC').AsDateTime, Date());

                   MDO.Query.SQL.Add(', PARCELACR.DIASATRASO = :DIASATRASO ');
                   MDO.Query.ParamByName('DIASATRASO').AsString:=IntToStr(xIntervalo);
                End;
                MDO.Query.SQL.Add(' WHERE PARCELACR.COD_PARCELACR = :COD_PARCELACR ');
                MDO.Query.ParamByName('COD_PARCELACR').AsInteger := DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsInteger;
                MDO.Query.ExecSQL;

                xSucessoBaixa:=1;
            Except
                xSucessoBaixa:=0;
            End;

            //INICIA PROCESSO
            //CONTROLE PARA FORMA DE PAGAMENTO CARTEIRA
            	If (DBCOB.Text='Carteira')
            	Then Begin//controla os lan�amentos que devem ser feitos em caixa
            		If XVLRDESC<>0
               	Then Begin//Se foi dado desconto
                   	If DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency<>0
                       Then Begin
                       	//NESTE CASO EXISTE VALOR PARA SERVICO E ELE DEVE SER LAN�ADO EM CONTA SEPARADA DE PRODUTO
                       	// LANCA PARA PRODUTOS
                           if((XVLRPG+XVLRDESC)-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency <> 0)then
                           begin
                               If LanCaixa (0, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R. (P)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  ((XVLRPG+XVLRDESC)-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency) , 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;
                       	// LANCA PARA SERVI�OS
            				If LanCaixa (0, DateToStr(Date()), DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger , 'Bx. C.R. (S)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency , 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
            				Then  //Se lan�ou
               				xSucessoBaixa:=1
            				Else
               				xSucessoBaixa:=0;
                       End
                       Else Begin
                       	// LANCA PARA PRODUTOS
                           if(XVLRPG+XVLRDESC <> 0)then
                           begin
                               If LanCaixa (0, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R. (P)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  XVLRPG+XVLRDESC, 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;
						End;

                       // LAN�A DESCONTO
                       If LanCaixa (-1, DateToStr(Date()), XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRDESC, 'CTARJ', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, Date(), '1')=True
            			Then  //Se lan�ou
               			xSucessoBaixa:=1
            			Else
               			xSucessoBaixa:=0;
               	End;

                   If (XVLRMULTA<>0) And (XVLRPG>XVLRMULTA)
               	Then Begin //Se foi aplicado multa
                   	If DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency<>0
                       Then Begin
                       	//NESTE CASO EXISTE VALOR PARA SERVICO E ELE DEVE SER LAN�ADO EM CONTA SEPARADA DE PRODUTO
                       	// LANCA PARA PRODUTOS
                           if ((XVLRPG-XVLRMULTA) - DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency <> 0)then
                           begin
                               If LanCaixa (0, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R. (P)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  ((XVLRPG-XVLRMULTA) - DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency), 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;
                       	// LANCA PARA SERVI�OS
            				If LanCaixa (0, DateToStr(Date()), DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger, 'Bx. C.R. (S)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency, 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
            				Then  //Se lan�ou
               				xSucessoBaixa:=1
            				Else
               				xSucessoBaixa:=0;
                       End
                       Else Begin
            				If LanCaixa (0, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R.-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  XVLRPG-XVLRMULTA, 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
            				Then  //Se lan�ou
               				xSucessoBaixa:=1
            				Else
               				xSucessoBaixa:=0;
                       End;
                       //Lan�a multa
                       //If LanCaixa (-1, DateToStr(Date()), XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRMULTA, 'CTARJ', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, Date(), '1' )=True
                       If LanCaixa (-1, DateToStr(Date()), XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+ DateToStr(Date())+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRMULTA, 'CTARJ', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, Date(), '1' )=True
                       Then  //Se lan�ou
                       	xSucessoBaixa:=1
                       Else
                       	xSucessoBaixa:=0;
                   End;
                   If (XVLRMULTA<>0) And (XVLRPG<=XVLRMULTA)
               	Then Begin //Se foi aplicado multa
                       If LanCaixa (-1, DateToStr(Date()), XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRPG, 'CTARJ', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, Date(), '1' )=True
                       Then  //Se lan�ou
                       	xSucessoBaixa:=1
                       Else
                       	xSucessoBaixa:=0;
                   End;
                   If (XVLRMULTA=0) AND (XVLRDESC=0)
               	Then Begin
                   	If DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency<>0
                       Then Begin
                       	//LAN�A PARA PRODUTOS
                           if(XVLRPG-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency <> 0)then
                           begin
                               If LanCaixa (0, DateToStr(Date()), DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger, 'Bx. C.R. (P)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  XVLRPG-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency, 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;
                       	//LAN�A PARA SERVI�OS
            				If LanCaixa (0, DateToStr(Date()), DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger, 'Bx. C.R. (S)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+EDDeb.Text+'Cli. '+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency, 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
            				Then  //Se lan�ou
               				xSucessoBaixa:=1
            				Else
               				xSucessoBaixa:=0;
                       End
                       Else Begin
                           //Paulo 11/05/2011: adicionando a placa do veiculo no hist�rico
                           if(DMMACS.TLoja.FieldByName('PLANOCTAPROD').AsString = '1')then
                           begin
                               //Paulo 11/05/2011: Filtra produto
                               FiltraTabela(DMSAIDA.TItemPV,'ITENSPEDVEN','COD_PEDVEN',IntToStr(DMCONTA.TCtaR.FieldByName('COD_GERADOR').AsInteger),'');
                               FiltraTabela(DMESTOQUE.WSimilar,'VWSIMILAR','COD_ESTOQUE',IntToStr(DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsInteger),'');
                               If LanCaixa (0, DateToStr(Date()), XCOD_CONTA, 'C.R.-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ ' - Placa '+DMESTOQUE.WSimilar.FieldByName('CONTRINT').AsString+'  Cli. '+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  XVLRPG, 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end
                           else begin
                              If LanCaixa (0, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R.-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  XVLRPG, 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;
                       End;
					END;
            	End;
            //FIM DE CONTROLE DE CARTEIRA

            //INICIO DE CONTROLE
            //CONTROLE PARA FORMA DE PAGAMENTO BANCO
            	If (DBCOB.Text='Banco') or (DBCOB.Text='Boleto') or (DBCOB.Text='Pix')
            	Then Begin
                   If (XVLRMULTA=0) AND (XVLRDESC=0)
               	Then Begin //Se nao foi aplicado multa nem desconto
                   	If DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency<>0
                       Then Begin
                       	//NESTE CASO EXISTE VALOR PARA SERVICO E ELE DEVE SER LAN�ADO EM CONTA SEPARADA DE PRODUTO
                       	//LANCA APENAS PARA PRODUTOS
                           if(XVLRPG - DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency <> 0)then
                           begin
                               If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger, 'Bx. C.R.(P)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+EDDeb.Text+'Cli. '+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRPG - DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency , 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '',EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;
                       	//LANCA APENAS PARA SERVI�OS
                       	If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger, 'Bx. C.R.(S)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+EDDeb.Text+' Cli. '+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency , 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
            				Then  //Se lan�ou
               				xSucessoBaixa:=1
            				Else
               				xSucessoBaixa:=0;
						End
                       Else Begin
                       	//LANCA APENAS PARA PRODUTOS
                       	If LanBanco(XCOD_CONTABANCO, XCOD_CONTA, 'Bx. C.R.-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRPG, 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
            				Then  //Se lan�ou
               				xSucessoBaixa:=1
            				Else
               				xSucessoBaixa:=0;
                       End;
					END;
            		If XVLRDESC<>0
               	Then Begin//Se foi dado desconto
                   	If DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency<>0
                       Then Begin
                       	//NESTE CASO EXISTE VALOR PARA SERVICO E ELE DEVE SER LAN�ADO EM CONTA SEPARADA DE PRODUTO
                       	//LANCA APENAS PARA PRODUTOS
                           if((XVLRPG+XVLRDESC)-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency <> 0)then
                           begin
                               If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger,'Bx. C.R. (P)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, ((XVLRPG+XVLRDESC)-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency) , 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;
                       	//LANCA APENAS PARA SERVI�OS
							If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger, 'Bx. C.R. (S)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+EDDeb.Text+' Cli. '+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency , 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
            				Then  //Se lan�ou
               				xSucessoBaixa:=1
            				Else
               				xSucessoBaixa:=0;
						End
                       Else Begin
							If LanBanco(XCOD_CONTABANCO, XCOD_CONTA,     'Bx. C.R.-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRPG+XVLRDESC, 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '',EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
            				Then  //Se lan�ou
               				xSucessoBaixa:=1
            				Else
               				xSucessoBaixa:=0;
                       End;
                       //Lan�a descontos
						If LanBanco(XCOD_CONTABANCO, XCodPlanoContas, XHist+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRDESC, 'CTARJ', XCOD_CONTABAIXA, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1',  DateToStr(Date()))=True
          				Then  //Se lan�ou
              				xSucessoBaixa:=1
          				Else
              				xSucessoBaixa:=0;
               	End;
                   If XVLRMULTA<>0
               	Then Begin //Se foi aplicado multa
                   	If DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency<>0
                       Then Begin
                       	//NESTE CASO EXISTE VALOR PARA SERVICO E ELE DEVE SER LAN�ADO EM CONTA SEPARADA DE PRODUTO
                       	//LANCA PARA PRODUTO
                           if ((XVLRPG-XVLRMULTA)-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency <> 0)then
                           begin
                               If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger,     'Bx. C.R. (P)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, ((XVLRPG-XVLRMULTA)-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency), 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;
                       	//LANCA PARA SERVI�OS
							If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger,     'Bx. C.R. (S)-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency, 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
            				Then  //Se lan�ou
               				xSucessoBaixa:=1
            				Else
               				xSucessoBaixa:=0;

                       End
                       Else Begin
                       	//LANCA PARA PRODUTO
							If LanBanco(XCOD_CONTABANCO, XCOD_CONTA,     'Bx. C.R.-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  XVLRPG-XVLRMULTA, 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
            				Then  //Se lan�ou
               				xSucessoBaixa:=1
            				Else
               				xSucessoBaixa:=0;
                       End;

						If LanBanco(XCOD_CONTABANCO, XCodPlanoContas, XHist+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRMULTA, 'CTARJ', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption),DBCOB.Text, 'S', EdVenc.Text, '', EDDeb.Text, '1', DateToStr(Date()))=True
            			Then  //Se lan�ou
               			xSucessoBaixa:=1
            			Else
               			xSucessoBaixa:=0;
               	end;
            	End;
            //FIM DO PROCESSO

            //INICIO DE CONTROLE
            //CONTROLE PARA FORMA DE PAGAMENTO CART�O
            	If DBCOB.Text='Cart�o'
            	Then Begin
                   If (XVLRMULTA=0) AND (XVLRDESC=0)
               	Then Begin //Se nao foi aplicado multa nem desconto
                   	If DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency<>0
                       Then Begin
                       	//NESTE CASO EXISTE VALOR PARA SERVICO E ELE DEVE SER LAN�ADO EM CONTA SEPARADA DE PRODUTO
                       	//LANCA APENAS PARA PRODUTOS
                           if(XVLRPG - DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency <> 0)then
                           begin
                               //Paulo 09/09/2011: Se estiver configurado para o cart�o ir direto no caixa
                               if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
                               begin
                                   if LanCaixa (0, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R. (P) por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+ ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  XVLRPG - DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency , 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
                                   Then  //Se lan�ou
                                       xSucessoBaixa:=1
                                   Else
                                       xSucessoBaixa:=0;
                               end else
                               begin
                                   If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger, 'Bx. C.R.(P) por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+EDDeb.Text+'Cli. '+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRPG - DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency , 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CART�O', 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
                                   Then  //Se lan�ou
                                       xSucessoBaixa:=1
                                   Else
                                       xSucessoBaixa:=0;
                               end;
                           end;
                       	//LANCA APENAS PARA SERVI�OS
                           //Paulo 09/09/2011: Se estiver configurado para o cart�o ir direto no caixa
                           if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
                           begin
                              if LanCaixa (0, DateToStr(Date()), DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger , 'Bx. C.R. (S) por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+ ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency , 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
                              Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end
                           else begin
                               If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger, 'Bx. C.R.(S) por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+EDDeb.Text+' Cli. '+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency , 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CART�O', 'S', EdVenc.Text, '',EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;

						End
                       Else Begin
                       	//LANCA APENAS PARA PRODUTOS
                           //Paulo 09/09/2011: Se estiver configurado para o cart�o ir direto no caixa
                           if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
                           begin
                                 If LanCaixa (0, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R. (P) por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  XVLRPG, 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
                                 Then  //Se lan�ou
                                     xSucessoBaixa:=1
                                 Else
                                     xSucessoBaixa:=0;
                           end else
                           begin
                               If LanBanco(XCOD_CONTABANCO, XCOD_CONTA, 'Bx. C.R. por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRPG, 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CART�O', 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;
                       End;
					END;
            		If XVLRDESC<>0
               	Then Begin//Se foi dado desconto
                   	If DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency<>0
                       Then Begin
                       	//NESTE CASO EXISTE VALOR PARA SERVICO E ELE DEVE SER LAN�ADO EM CONTA SEPARADA DE PRODUTO
                       	//LANCA APENAS PARA PRODUTOS
                           if((XVLRPG+XVLRDESC)-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency <> 0)then
                           begin
                               //Paulo 09/09/2011: Se estiver configurado para o cart�o ir direto no caixa
                               if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
                               begin
                                   if LanCaixa (0, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R. (P) por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+ ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  ((XVLRPG+XVLRDESC)-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency) , 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
                                   Then  //Se lan�ou
                                       xSucessoBaixa:=1
                                   Else
                                       xSucessoBaixa:=0;
                               end
                               else begin
                                   If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger,'Bx. C.R. (P) por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, ((XVLRPG+XVLRDESC)-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency) , 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CART�O', 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
                                   Then  //Se lan�ou
                                       xSucessoBaixa:=1
                                   Else
                                       xSucessoBaixa:=0;
                               end;
                           end;
                       	//LANCA APENAS PARA SERVI�OS
                           //Paulo 09/09/2011: Se estiver configurado para o cart�o ir direto no caixa
                           if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
                           begin
                               if LanCaixa (0, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R. (S) por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+ ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency , 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end
                           else begin
                               If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger, 'Bx. C.R. (S) por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+ ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+EDDeb.Text+' Cli. '+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency , 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CART�O', 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;
						End
                       Else Begin
                           //Paulo 09/09/2011: Se estiver configurado para o cart�o ir direto no caixa
                           if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
                           begin
                               if LanCaixa (0, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R. por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+ ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  XVLRPG+XVLRDESC , 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end
                           else begin
                               If LanBanco(XCOD_CONTABANCO, XCOD_CONTA,'Bx. C.R. por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRPG+XVLRDESC, 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CART�O', 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;
                       End;
                       //Lan�a descontos
                       //Paulo 09/09/2011: Se estiver configurado para o cart�o ir direto no caixa
                       if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
                       begin
                           If LanCaixa (-1, DateToStr(Date()), XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRDESC, 'CTARJ', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, Date(), '1')=True
                           Then  //Se lan�ou
                               xSucessoBaixa:=1
                           Else
                               xSucessoBaixa:=0;
                       end
                       else begin
                           If LanCaixa (-1, DateToStr(Date()), XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRDESC, 'CTARJ', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, Date(), '1')=True
                           Then  //Se lan�ou
                               xSucessoBaixa:=1
                           Else
                               xSucessoBaixa:=0;
                       end;
                       //Paulo 09/09/2011: Se estiver configurado para o cart�o ir direto no caixa
                       if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
                       begin
                           If LanCaixa (-1, DateToStr(Date()), XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRDESC, 'CTARJ', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, Date(), '1')=True
                           Then  //Se lan�ou
                               xSucessoBaixa:=1
                           Else
                               xSucessoBaixa:=0;
                       end
                       else begin
                           If LanBanco(XCOD_CONTABANCO, XCodPlanoContas, XHist+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+ ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRDESC, 'CTARJ', XCOD_CONTABAIXA, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CART�O', 'S', EdVenc.Text, '', EDDeb.Text, '1',  DateToStr(Date()))=True
                           Then  //Se lan�ou
                               xSucessoBaixa:=1
                           Else
                               xSucessoBaixa:=0;
                       end;
               	End;
                   If XVLRMULTA<>0
               	Then Begin //Se foi aplicado multa
                   	If DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency<>0
                       Then Begin
                       	//NESTE CASO EXISTE VALOR PARA SERVICO E ELE DEVE SER LAN�ADO EM CONTA SEPARADA DE PRODUTO
                       	//LANCA PARA PRODUTO
                           if ((XVLRPG-XVLRMULTA)-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency <> 0)then
                           begin
                               //Paulo 09/09/2011: Se estiver configurado para o cart�o ir direto no caixa
                               if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
                               begin
                                   If LanCaixa (-1, DateToStr(Date()), XCodPlanoContas, 'Bx. C.R. (P) por cart�o- '+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, ((XVLRPG-XVLRMULTA)-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency), 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, Date(), '1')=True
                                   Then  //Se lan�ou
                                       xSucessoBaixa:=1
                                   Else
                                       xSucessoBaixa:=0;
                               end
                               else begin
                                   If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger,'Bx. C.R. (P) por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, ((XVLRPG-XVLRMULTA)-DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency), 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CART�O', 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
                                   Then  //Se lan�ou
                                       xSucessoBaixa:=1
                                   Else
                                       xSucessoBaixa:=0;
                               end;
                           end;
                       	//LANCA PARA SERVI�OS
                           //Paulo 09/09/2011: Se estiver configurado para o cart�o ir direto no caixa
                           if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
                           begin
                               If LanCaixa (-1, DateToStr(Date()), XCodPlanoContas, 'Bx. C.R. (S) por cart�o- '+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency, 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, Date(), '1')=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end
                           else begin
                               If LanBanco(XCOD_CONTABANCO, DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger,'Bx. C.R. (S) por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,DMCONTA.TParcCR.FieldByName('VALORSERV').AsCurrency, 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CART�O', 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;

                       End
                       Else Begin
                       	//LANCA PARA PRODUTO
                           //Paulo 09/09/2011: Se estiver configurado para o cart�o ir direto no caixa
                           if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
                           begin
                               If LanCaixa (-1, DateToStr(Date()), XCodPlanoContas, 'Bx. C.R. por cart�o- '+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRPG-XVLRMULTA, 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, Date(), '1')=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end
                           else begin
                               If LanBanco(XCOD_CONTABANCO, XCOD_CONTA,'Bx. C.R. por cart�o-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+ ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString,  XVLRPG-XVLRMULTA, 'CTAR', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CART�O', 'S', EdVenc.Text, '', EDDeb.Text, '1', DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsString)=True
                               Then  //Se lan�ou
                                   xSucessoBaixa:=1
                               Else
                                   xSucessoBaixa:=0;
                           end;
                       End;
                       //Paulo 09/09/2011: Se estiver configurado para o cart�o ir direto no caixa
                       if DMMACS.TLoja.FieldByName('MOVCAIXACARTAO').AsString = '1' Then
                       begin
                           If LanCaixa (-1, DateToStr(Date()), XCodPlanoContas, XHist+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRMULTA, 'CTARJ', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, Date(), '1')=True
                           Then  //Se lan�ou
                               xSucessoBaixa:=1
                           Else
                               xSucessoBaixa:=0;
                       end
                       else begin
                           If LanBanco(XCOD_CONTABANCO, XCodPlanoContas, XHist+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' N� Cart�o: '+EdNumCartao.Text+ ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRMULTA, 'CTARJ', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), 'CART�O', 'S', EdVenc.Text, '', EDDeb.Text, '1', DateToStr(Date()))=True
                           Then  //Se lan�ou
                               xSucessoBaixa:=1
                           Else
                               xSucessoBaixa:=0;
                       end;
               	end;
            	End;
            //FIM DO PROCESSO



             //INICIO DE PROCESSO
            //CONTROLE PARA FORMA DE PAGAMENTO CHEQUE
				If DBCOB.Text='Cheque' then
               begin
               	FMenu.XDTREF:=DMCONTA.WParR.FIELDBYNAME('dtlanc').AsString;

                	//Edmar - 30/05/2014 - S� lan�a um cheque de entrada se n�o gerou parcela
                	if xGeraNovaParcela = 'N' then
                	begin
                   	If LancChEnt(XCOD_CONTA, 0,  'Bx. C.R.-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, StrToDate(EdVenc.Text), '', XVLRPG, 0, '', '', 0, '', '', 'CTARCH', IntToStr(XCOD_CONTABAIXA))=True then
                       //Se lan�ou
                       	xSucessoBaixa:=1
                    	else
                       	xSucessoBaixa:=0;
                	end;

                	FMenu.XDTREF:='18/07/1980';//variavel temporaria para auxiliar nas datas de referencia. Manter este valor!
           	End;
              //FIM DE PROCESSO
             //INICIO DE PROCESSO
            //CONTROLE PARA CREDITOS
            	If DBCOB.Text='Cr�dito'
               Then Begin
            		//LAN�A CREDITO PARA CLIENTE
            		If FiltraTabela(DMPESSOA.WCliente, 'vwcliente', 'COD_CLIENTE', DMCONTA.WParR.FieldByName('COD_CLIENTE').AsString, '')=False
            		Then Begin
                       xSucessoBaixa:=0;
               		Exit;
            		End;
            		If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '')=False
            		Then Begin
                       xSucessoBaixa:=0;
               		Exit;
            		End;
                   XVLRCREDITO := EDVALORPAGO.ValueNumeric;
            		//determina o valor a ser lan�ado como credito
            		{If EDVALORPAGO.ValueNumeric<=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency
            		Then Begin
            			XVLRCREDITO:=EDVALORPAGO.ValueNumeric;
            		End
            		Else Begin
            			XVLRCREDITO:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency;
            		End; }
            		//SE EXISTE
            		DMPESSOA.TPessoa.Edit;
            		DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency-XVLRCREDITO;
            		DMPESSOA.TPessoa.Post;
                   //Lan�a na tabela de credito
                   LanCredito(DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger, DMCONTA.WParR.FieldByName('COD_PARCELACR').AsInteger, 'CTAR', 'CLI', 'S', DMCONTA.WParR.FieldByName('NUMPARC').AsString, DateToStr(Date()), XVLRCREDITO);

                   //REGISTRO DE CREDITO SAIDA
            		If LanCaixa(-1, DateToStr(Date()), DMMACS.TLoja.FieldByName('COD_CTAANTECIPCREDCLI').AsInteger, 'Bx. C.R. Cr�dito-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRCREDITO, 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'S', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
            		Then Begin//informa que a atualiza��o do financeiro foi efetivada
                       xSucessoBaixa:=1;
               		//REGISTRO DE CREDITO ENTRADA
               		If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R. Cr�dito-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRCREDITO, 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
               		Then Begin//informa que a atualiza��o do financeiro foi efetivada
                           xSucessoBaixa:=1;
               			DMPESSOA.TransacPessoa.CommitRetaining;
               		End
               		Else Begin//informa que a finaliza��o do financeiro falhou
                           xSucessoBaixa:=1;
               			DMPESSOA.TransacPessoa.RollbackRetaining;
               		End;
               		DMPESSOA.TransacPessoa.CommitRetaining;
            		End
            		Else Begin//informa que a finaliza��o do financeiro falhou
                       xSucessoBaixa:=0;
               		DMPESSOA.TransacPessoa.RollbackRetaining;
            		End;
            		If XVLRPG>XVLRCREDITO
            		Then Begin
            			//CASO O CREDITO NAO TENHA SIDO SUFICIENTE TRABALHA NO CAIXA
               		//REGISTRO DE CREDITO ENTRADA
            			If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, 'Bx. C.R. Cr�dito-'+DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParR.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParR.FIELDBYNAME('NOME').AsString, XVLRPG-XVLRCREDITO, 'CTAR', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParR.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FIELDBYNAME('DTREF').AsDateTime, '1')=True
               		Then Begin//informa que a atualiza��o do financeiro foi efetivada
                           xSucessoBaixa:=1;
                   		DMPESSOA.TransacPessoa.CommitRetaining;
               		End
            			Else Begin//informa que a finaliza��o do financeiro falhou
                           xSucessoBaixa:=0;
            				DMPESSOA.TransacPessoa.RollbackRetaining;
            			End;
            		End;
                End;
            End;
	   //	End;
    End;

   if (XVLRPG > XVLRFINAL) AND (xNaoLancTroco = 0) then
   begin
   	FLancTroco := TFLancTroco.Create(FLancTroco);

      	//LancTroco(xValorOrdem, xValorCheque: Real; xPlncta,xParcela, xTipGer, xCodGer, xTip, xDoc, xDestinatario: String)
      	if (XTipoPR='P') then//conta a pagar
      		FLancTroco.LancTroco(EDValorJurMulta.ValueNumeric, EDVALORPAGO.ValueNumeric, IntToStr(XCod_Conta), EdParcela.Text, 'CTAP', DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsString, DBCOB.Text, EdDocumento.Text, DMCONTA.WParP.FIELDBYNAME('COD_FORNEC').AsInteger)
       else//conta a receber
      		FLancTroco.LancTroco(EDValorJurMulta.ValueNumeric, EDVALORPAGO.ValueNumeric, IntToStr(XCod_Conta), EdParcela.Text, 'CTAR', DMCONTA.WParR.FIELDBYNAME('COD_PARCELACR').AsString, DBCOB.Text, EdDocumento.Text, DMCONTA.WParR.FIELDBYNAME('COD_CLIENTE').AsInteger);

      	FLancTroco.ShowModal;

      	if FLancTroco.xCancelou = 'S' then
      	begin
          DMCONTA.WParR.Open;
          FPadraoContas := TFPadraoContas.Create(FPadraoContas);
          FPadraoContas.BitBtn3Click(sender);

          BitBtn2Click(sender);
      	end;
	end;
   
   If xSucessoBaixa=1 then
   begin
   	DMCONTA.IBT.CommitRetaining;
       DMCAIXA.IBT.CommitRetaining;
       DMBANCO.IBT.CommitRetaining;
       MDO.Transac.CommitRetaining;

       if (XTipoPR='P') and (xvlrlanc<>0) then
       begin
               XVlrAuxDesc := xvlrlanc;

               DMCONTA.TAlx.Close;
               DMCONTA.TAlx.SQL.Clear;
               DMCONTA.TAlx.SQL.Add('select parcelacp.valor, parcelacp.cod_ctapagar, parcelacp.dtvenc, parcelacp.cod_parcelacp,');
               DMCONTA.TAlx.SQL.Add('parcelacp.numparc, parcelacp.dtdebito, parcelacp.dtref, ctapagar.cod_plncta from parcelacp');
               DMCONTA.TAlx.SQL.Add('left join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar');
               DMCONTA.TAlx.SQL.Add('where parcelacp.cod_parcelacp <> '+#39+DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsString+#39+'');
               DMCONTA.TAlx.SQL.Add('and parcelacp.fech = '+#39+'N'+#39+'');
               DMCONTA.TAlx.SQL.Add('and ctapagar.cod_fornec = :COD');
               DMCONTA.TAlx.ParamByName('COD').AsString:=DMCONTA.WParP.FieldByName('COD_FORNEC').AsString;
               DMCONTA.TAlx.SQL.Add('order by parcelacp.dtvenc');
               DMCONTA.TAlx.Open;
               DMCONTA.TAlx.First;

               if not DMCONTA.TAlx.IsEmpty
               then begin

                    DMCONTA.TAlx.First;

                    while not DMCONTA.TAlx.Eof do
                    begin

                        if XVlrAuxDesc > 0  // - 29/01/2009: se valor for diferente de zero descontar da parcela
                        then begin

                            // - 29/01/2009: filtrar parcela
                            FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', DMCONTA.TAlx.FieldByName('COD_PARCELACP').AsString, '');


                            // - 29/01/2009: verificar valor da parcela
                            if DMCONTA.TParcCP.FieldByName('valor').AsCurrency > XVlrAuxDesc
                            then begin

                                XDtAux := DMCONTA.TParcCP.FieldByName('DTVENC').AsDateTime;
                                XDtAuxRef := DMCONTA.TParcCP.FieldByName('DTREF').AsDateTime;
                                XParcela := DMCONTA.TParcCP.FieldByName('NUMPARC').AsString;
                                XCod_Parant := DMCONTA.TParcCP.FieldByName('COD_PARANT').AsInteger;
                                XHist := DMCONTA.TParcCP.FieldByName('HISTORICO').AsString;
                                XCod_Cta := DMCONTA.TParcCP.FieldByName('COD_CTAPAGAR').AsInteger;

                                // - 29/01/2009: fechar parcela e fazer lan�amento em caixa
                                //Edita tabela para entradas de valores para parcela
                                DMCONTA.TParcCP.edit;
                                DMCONTA.TParcCP.FieldByName('DTDEBITO').ASSTRING:=EDDeb.text;
                                DMCONTA.TParcCP.FieldByName('JUROS').Value:=0;
                                DMCONTA.TParcCP.FieldByName('MULTAS').Value:=0;
                                DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:='Carteira';
                                DMCONTA.TParcCP.FieldByName('DESCONTO').AsCurrency:=0;
                                DMCONTA.TParcCP.FieldByName('VALORPG').AsCurrency:=XVlrAuxDesc;
                                DMCONTA.TParcCP.Post;
                                if LanCaixa (-1, DateToStr(Date()), DMCONTA.TAlx.FieldByName('COD_CTAPAGAR').AsInteger, ' Bx. C.P.- Venc.:'+DMCONTA.TAlx.FIELDBYNAME('DTVENC').AsString+' Doc: '+DMCONTA.TAlx.FIELDBYNAME('NUMPARC').AsString, XVlrAuxDesc, 'CTAP', DMCONTA.TAlx.FIELDBYNAME('COD_PLNCTA').AsInteger, 'Carteira', 'S', DMCONTA.TAlx.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TAlx.FIELDBYNAME('dtref').AsDateTime, '1') = true
                                then begin
                                     DMCONTA.IBT.CommitRetaining;
                                     DMCAIXA.IBT.CommitRetaining;
                                end;

                                // - 29/01/2009:  desconta valor p/ proxima parcela
                                XVlrAuxDesc := DMCONTA.TParcCP.FieldByName('VALOR').Value - XVlrAuxDesc;
                                DMCONTA.TParcCP.Edit;
                                DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                                DMCONTA.TParcCP.Post;

                                XParcela := XParcela+'/1';

                                XCodParcela:=InserReg(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP');
                                DMCONTA.TParcCP.Edit;
                                DMCONTA.TParcCP.FieldByName('COD_PARCELACP').AsInteger:=XCodParcela;
                                DMCONTA.TParcCP.FieldByName('DTVENC').AsDateTime:=XDtAux;
                                DMCONTA.TParcCP.FieldByName('DTREF').AsDateTime:= XDtAuxRef;
                                DMCONTA.TParcCP.FieldByName('COD_PARANT').AsInteger:=XCod_Parant;
                                DMCONTA.TParcCP.FieldByName('VALOR').AsCurrency:=XVlrAuxDesc; //  passar valor da proxima parcela
                                DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:='Carteira';
                                DMCONTA.TParcCP.FieldByName('NUMPARC').AsString:=XParcela;
                                DMCONTA.TParcCP.FieldByName('HISTORICO').AsString:=XHist;
                                DMCONTA.TParcCP.FieldByName('FECH').AsString:='N';
                                DMCONTA.TParcCP.FieldByName('COD_CTAPAGAR').AsInteger:=XCod_Cta;
                                DMCONTA.TParcCP.POST;
                                DMCONTA.TParcCP.ApplyUpdates;

                                DMCONTA.IBT.CommitRetaining;

                                XVlrAuxDesc := 0;
                            end
                                // - 29/01/2009:  verifica se valor � igual a parcela
                            else if DMCONTA.TParcCP.FieldByName('valor').AsCurrency = XVlrAuxDesc
                            then begin
                                // - 29/01/2009: fechar parcela e fazer lan�amento em caixa
                                //Edita tabela para entradas de valores para parcela
                                DMCONTA.TParcCP.edit;
                                DMCONTA.TParcCP.FieldByName('DTDEBITO').ASSTRING:=EDDeb.text;
                                DMCONTA.TParcCP.FieldByName('JUROS').Value:=0;
                                DMCONTA.TParcCP.FieldByName('MULTAS').Value:=0;
                                DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:='Carteira';
                                DMCONTA.TParcCP.FieldByName('DESCONTO').Value:=0;
                                DMCONTA.TParcCP.FieldByName('VALORPG').AsCurrency:=XVlrAuxDesc;
                                DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                                DMCONTA.TParcCP.Post;

                                if LanCaixa (-1, DateToStr(Date()), DMCONTA.TAlx.FieldByName('COD_CTAPAGAR').AsInteger, ' Bx. C.P.- Venc.:'+DMCONTA.TAlx.FIELDBYNAME('DTVENC').AsString+' Doc: '+DMCONTA.TAlx.FIELDBYNAME('NUMPARC').AsString, XVlrAuxDesc, 'CTAP', DMCONTA.TAlx.FIELDBYNAME('COD_PLNCTA').AsInteger, 'Carteira', 'S', DMCONTA.TAlx.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TAlx.FIELDBYNAME('dtref').AsDateTime, '1') = true
                                then begin
                                     DMCONTA.IBT.CommitRetaining;
                                     DMCAIXA.IBT.CommitRetaining;
                                end;

                                XVlrAuxDesc := 0;

                            end

                                // - 29/01/2009:  valor maior q a parcela
                            else begin

                                // - 29/01/2009: fechar parcela e fazer lan�amento em caixa
                                //Edita tabela para entradas de valores para parcela
                                DMCONTA.TParcCP.edit;
                                DMCONTA.TParcCP.FieldByName('DTDEBITO').ASSTRING:=EDDeb.text;
                                DMCONTA.TParcCP.FieldByName('JUROS').Value:=0;
                                DMCONTA.TParcCP.FieldByName('MULTAS').Value:=0;
                                DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:='Carteira';
                                DMCONTA.TParcCP.FieldByName('DESCONTO').Value:=0;
                                DMCONTA.TParcCP.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCP.FieldByName('valor').AsCurrency;
                                DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                                DMCONTA.TParcCP.Post;

                                if LanCaixa (-1, DateToStr(Date()), DMCONTA.TAlx.FieldByName('COD_CTAPAGAR').AsInteger, ' Bx. C.P.- Venc.:'+DMCONTA.TAlx.FIELDBYNAME('DTVENC').AsString+' Doc: '+DMCONTA.TAlx.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCP.FieldByName('valor').AsCurrency, 'CTAP', DMCONTA.TAlx.FIELDBYNAME('COD_PLNCTA').AsInteger, 'Carteira', 'S', DMCONTA.TAlx.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TAlx.FIELDBYNAME('dtref').AsDateTime, '1') = true
                                then begin
                                     DMCONTA.IBT.CommitRetaining;
                                     DMCAIXA.IBT.CommitRetaining;
                                end;

                                // - 29/01/2009: descontar vlr da parcela
                                XVlrAuxDesc := XVlrAuxDesc - DMCONTA.TParcCP.FieldByName('valor').AsCurrency;

                            end;

                        end;

                        // - 29/01/2009: proxima ocorrencia
                        DMCONTA.TAlx.Next;

                    end;

                     // verificar se houve parcelas suficientes para fazer todos os lan�amentos
                    if XVlrAuxDesc > 0 then
                        Mensagem('INFORMA��O', 'Todas as parcelas encontradas deste Fornecedor foram fechadas e sobraram R$ '+FormatFloat('####,##0.00',XVlrAuxDesc)+'.', '', 1, 1, False, 'i');
               end
               else begin
                   Mensagem('INFORMA��O', 'N�o foram encontradas outras parcelas deste fornecedor, para ser retirado o valor da diferen�a paga! Portanto foi baixado apenas o valor da parcela!', '', 1, 1, False, 'i');
               end;
        end;
        If (XTipoPR<>'P') and (xvlrlanc<>0)
        then begin
               XVlrAuxDesc := xvlrlanc;

               //Edmar - 26/06/2015 - Busca primeiro pela mesma conta a receber.
               DMCONTA.TAlx.Close;
               DMCONTA.TAlx.SQL.Clear;
               DMCONTA.TAlx.SQL.Add(' SELECT PARCELACR.VALOR, PARCELACR.COD_CTARECEBER, PARCELACR.DTVENC, PARCELACR.COD_PARCELACR, ');
               DMCONTA.TAlx.SQL.Add(' PARCELACR.NUMPARC, PARCELACR.DTREF, CTARECEBER.COD_PLNCTA FROM PARCELACR ');
               DMCONTA.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
               DMCONTA.TAlx.SQL.Add(' WHERE (PARCELACR.COD_PARCELACR <> :PARCELA) ');
               DMCONTA.TAlx.SQL.Add(' AND (PARCELACR.FECH = ''N'') ');
               DMCONTA.TAlx.SQL.Add(' AND (PARCELACR.COD_CTARECEBER = :CTARECEBER) ');
               DMCONTA.TAlx.SQL.Add(' ORDER BY DTVENC ');
               DMCONTA.TAlx.ParamByName('PARCELA').AsString := DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString;
               DMCONTA.TAlx.ParamByName('CTARECEBER').AsString := DMCONTA.WParR.FieldByName('COD_CTARECEBER').AsString;
               DMCONTA.TAlx.Open;

               //se n�o achar, busca pelo mesmo cliente com o vencimento mais proximo
               if DMCONTA.TAlx.IsEmpty then
               begin
               	DMCONTA.TAlx.Close;
                   DMCONTA.TAlx.SQL.Clear;
                   DMCONTA.TAlx.SQL.Add(' SELECT PARCELACR.VALOR, PARCELACR.COD_CTARECEBER, PARCELACR.DTVENC, PARCELACR.COD_PARCELACR, ');
                   DMCONTA.TAlx.SQL.Add(' PARCELACR.NUMPARC, PARCELACR.DTREF, CTARECEBER.COD_PLNCTA FROM PARCELACR ');
                   DMCONTA.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
                   DMCONTA.TAlx.SQL.Add(' WHERE (PARCELACR.COD_PARCELACR <> :PARCELA) ');
                   DMCONTA.TAlx.SQL.Add(' AND (PARCELACR.FECH = ''N'') ');
                   DMCONTA.TAlx.SQL.Add(' AND (CTARECEBER.COD_CLIENTE = :CLIENTE) ');
                   DMCONTA.TAlx.SQL.Add(' ORDER BY DTVENC ');
	                DMCONTA.TAlx.ParamByName('PARCELA').AsString := DMCONTA.WParR.FieldByName('COD_PARCELACR').AsString;
                	DMCONTA.TAlx.ParamByName('CLIENTE').AsString := DMCONTA.WParR.FieldByName('COD_CLIENTE').AsString;
                	DMCONTA.TAlx.Open;
               end;

               DMCONTA.TAlx.First;
               if not DMCONTA.TAlx.IsEmpty
               then begin

                    DMCONTA.TAlx.First;

                    while not DMCONTA.TAlx.Eof do
                    begin

                        if XVlrAuxDesc > 0  // - 29/01/2009: se valor for diferente de zero descontar da parcela
                        then begin

                            // - 29/01/2009: filtrar parcela
                            FiltraTabela(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR', DMCONTA.TAlx.FieldByName('COD_PARCELACR').AsString, '');


                            // - 29/01/2009: verificar valor da parcela
                            if DMCONTA.TParcCR.FieldByName('valor').AsCurrency > XVlrAuxDesc
                            then begin

                                XDtAux := DMCONTA.TParcCR.FieldByName('DTVENC').AsDateTime;
                                XDtAuxRef := DMCONTA.TParcCR.FieldByName('DTREF').AsDateTime;
                                XParcela := DMCONTA.TParcCR.FieldByName('NUMPARC').AsString;
                                XCod_Parant := DMCONTA.TParcCR.FieldByName('COD_PARANT').AsInteger;
                                XHist := DMCONTA.TParcCR.FieldByName('HISTORICO').AsString;
                                XCod_Cta := DMCONTA.TParcCR.FieldByName('COD_CTARECEBER').AsInteger;
                                XAplicJur := DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger;
                                XPerVlrServ := DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency;
                                XTotProdNF := DMCONTA.TParcCR.FieldByName('VALOR').AsCurrency;


                                // - 30/01/2009: fechar parcela e fazer lan�amento em caixa
                                //Edita tabela para entradas de valores para parcela
                                DMCONTA.TParcCR.edit;
                                DMCONTA.TParcCR.FieldByName('DTDEBITO').ASSTRING:=EDDeb.text;
                                DMCONTA.TParcCR.FieldByName('JUROS').Value:=0;
                                DMCONTA.TParcCR.FieldByName('MULTA').Value:=0;
                                DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:='Carteira';
                                DMCONTA.TParcCR.FieldByName('DESCONTO').Value:=0;
                                DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency:=XVlrAuxDesc;
                   			 DMCONTA.TParcCR.Edit;
                                if LanCaixa (-1, DateToStr(Date()), DMCONTA.TAlx.FieldByName('COD_CTARECEBER').AsInteger, 'Bx. C.R.- Venc.:'+DMCONTA.TAlx.FIELDBYNAME('DTVENC').AsString+' Doc: '+DMCONTA.TAlx.FIELDBYNAME('NUMPARC').AsString, XVlrAuxDesc, 'CTAR', DMCONTA.TAlx.FIELDBYNAME('COD_PLNCTA').AsInteger, 'Carteira', 'E', DMCONTA.TAlx.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TAlx.FIELDBYNAME('dtref').AsDateTime, '1') = true
                                then begin
                                     DMCONTA.IBT.CommitRetaining;
                                     DMCAIXA.IBT.CommitRetaining;
                                end;

                                // - 30/01/2009:  desconta valor p/ proxima parcela
                                XVlrAuxDesc := DMCONTA.TParcCR.FieldByName('VALOR').Value - XVlrAuxDesc;

                                DMCONTA.TParcCR.Edit;
                                DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                                DMCONTA.TParcCR.Post;


                                XParcela := XParcela+'/1';

                                XCodParcela:=InserReg(DMCONTA.TParcCR, 'PARCELACR', 'COD_PARCELACR');
                                DMCONTA.TParcCR.FieldByName('COD_PARCELACR').AsInteger:=XCodParcela;
                                DMCONTA.TParcCR.FieldByName('DTVENC').AsDateTime:=XDtAux;
                                DMCONTA.TParcCR.FieldByName('DTREF').AsDateTime:=XDtAuxRef;
                                DMCONTA.TParcCR.FieldByName('COD_PARANT').AsInteger:=XCod_Parant;
                                DMCONTA.TParcCR.FieldByName('VALOR').Value:=XVlrAuxDesc; //  passar valor da proxima parcela;
                                DMCONTA.TParcCR.Post;
                                 If XPerVlrServ >0
                                Then Begin
                                    XTabRef.Edit;
                                    XTabRef.FieldByName('VALORSERV').AsCurrency:=(XTotProdNF*XPerVlrServ)/100;
                                    XTabRef.FieldByName('VALORPROD').AsCurrency:=XTotProdNF-XTabRef.FieldByName('VALORSERV').AsCurrency;
                                    XTabRef.Post;
                                End
                                Else Begin
                                   XTabRef.Edit;
                                    XTabRef.FieldByName('VALORPROD').AsCurrency:=XTotProdNF;
                                   XTabRef.Post;
                                End;
                                DMCONTA.TParcCR.Edit;
                                DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:='Carteira';
                                DMCONTA.TParcCR.FieldByName('HISTORICO').AsString:=XHist;
                                DMCONTA.TParcCR.FieldByName('NUMPARC').AsString:=XParcela;
                                DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger:=XAplicJur;
                                DMCONTA.TParcCR.FieldByName('FECH').AsString:='N';
                                DMCONTA.TParcCR.FieldByName('COD_CTARECEBER').AsInteger:=XCod_Cta;
                                FMenu.Extenso.Numero:=FormatFloat('0.00', XVlrAuxDesc);
                                DMCONTA.TParcCR.FieldByName('VALEXT').AsString:=FMenu.Extenso.Extenso;
                                DMCONTA.TParcCR.POST;
                                DMCONTA.TParcCR.ApplyUpdates;

                                DMCONTA.IBT.CommitRetaining;

                                XVlrAuxDesc := 0;


                            end
                                // - 29/01/2009:  verifica se valor � igual a parcela
                            else if DMCONTA.TParcCR.FieldByName('valor').AsCurrency = XVlrAuxDesc
                            then begin
                                // - 29/01/2009: fechar parcela e fazer lan�amento em caixa
                                //Edita tabela para entradas de valores para parcela
                                DMCONTA.TParcCR.edit;
                                DMCONTA.TParcCR.FieldByName('DTDEBITO').ASSTRING:=EDDeb.text;
                                DMCONTA.TParcCR.FieldByName('JUROS').Value:=0;
                                DMCONTA.TParcCR.FieldByName('MULTA').Value:=0;
                                DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:='Carteira';
                                DMCONTA.TParcCR.FieldByName('DESCONTO').Value:=0;
                                DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency:=XVlrAuxDesc;
                                DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                                DMCONTA.TParcCR.Post;

                                if LanCaixa (-1, DateToStr(Date()), DMCONTA.TAlx.FieldByName('COD_CTARECEBER').AsInteger, 'Bx. C.R.- Venc.:'+DMCONTA.TAlx.FIELDBYNAME('DTVENC').AsString+' Doc: '+DMCONTA.TAlx.FIELDBYNAME('NUMPARC').AsString, XVlrAuxDesc, 'CTAR', DMCONTA.TAlx.FIELDBYNAME('COD_PLNCTA').AsInteger, 'Carteira', 'E', DMCONTA.TAlx.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TAlx.FIELDBYNAME('dtref').AsDateTime, '1') = true
                                then begin
                                     DMCONTA.IBT.CommitRetaining;
                                     DMCAIXA.IBT.CommitRetaining;
                                end;

                                XVlrAuxDesc := 0;

                            end

                                // - 29/01/2009:  valor maior q a parcela
                            else begin

                                // - 29/01/2009: fechar parcela e fazer lan�amento em caixa
                                //Edita tabela para entradas de valores para parcela
                                DMCONTA.TParcCR.edit;
                                DMCONTA.TParcCR.FieldByName('DTDEBITO').ASSTRING:=EDDeb.text;
                                DMCONTA.TParcCR.FieldByName('JUROS').Value:=0;
                                DMCONTA.TParcCR.FieldByName('MULTA').Value:=0;
                                DMCONTA.TParcCR.FieldByName('COBRANCA').AsString:='Carteira';
                                DMCONTA.TParcCR.FieldByName('DESCONTO').Value:=0;
                                DMCONTA.TParcCR.FieldByName('VALORPG').AsCurrency:=DMCONTA.TParcCR.FieldByName('valor').AsCurrency;
                                DMCONTA.TParcCR.FieldByName('FECH').AsString:='S';
                                DMCONTA.TParcCR.Post;

                                if LanCaixa (-1, DateToStr(Date()), DMCONTA.TAlx.FieldByName('COD_CTARECEBER').AsInteger, 'Bx. C.R.- Venc.:'+DMCONTA.TAlx.FIELDBYNAME('DTVENC').AsString+' Doc: '+DMCONTA.TAlx.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TParcCR.FieldByName('valor').AsCurrency, 'CTAR', DMCONTA.TAlx.FIELDBYNAME('COD_PLNCTA').AsInteger, 'Carteira', 'E', DMCONTA.TAlx.FIELDBYNAME('NUMPARC').AsString, DMCONTA.TAlx.FIELDBYNAME('dtref').AsDateTime, '1') = true
                                then begin
                                     DMCONTA.IBT.CommitRetaining;
                                     DMCAIXA.IBT.CommitRetaining;
                                end;

                                // - 29/01/2009: descontar vlr da parcela
                                XVlrAuxDesc := XVlrAuxDesc - DMCONTA.TParcCR.FieldByName('valor').AsCurrency;

                            end;

                        end;

                        // - 29/01/2009: proxima ocorrencia
                        DMCONTA.TAlx.Next;

                    end;

                     // verificar se houve parcelas suficientes para fazer todos os lan�amentos
                    if XVlrAuxDesc > 0 then
                        Mensagem('INFORMA��O', 'Todas as parcelas encontradas deste Cliente foram fechadas e sobraram R$ '+FormatFloat('####,##0.00',XVlrAuxDesc)+'.', '', 1, 1, False, 'i');

               end
               else begin
                    Mensagem('INFORMA��O', 'N�o foram encontradas outras parcelas deste cliente, para ser retirado o valor da diferen�a paga! Portanto foi baixado apenas o valor da parcela!', '', 1, 1, False, 'i');
               end;
        end;

        If CBImpRecibo.Checked=True
        Then Begin
        	FMenu.TIPOAUX:='IMPRECIBO'
        End
        Else Begin
        	FMenu.TIPOAUX:='';

           // se o checkbox do cheuqe estiver selecinado, imprimi cheque
           If CBCheque.Checked = true
           Then Begin
               // seleciona o valor pago pelo usuario
               DMESTOQUE.TRel.Close;
               DMESTOQUE.TRel.SQL.Clear;
               DMESTOQUE.TRel.SQL.Add(' select parcelacp.valorpg AS VALOR from parcelacp where parcelacp.cod_parcelacp = :codigo');
               DMESTOQUE.TRel.ParamByName('codigo').AsInteger := DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsInteger;
               DMESTOQUE.TRel.Open;

               // fun��o para imprimir cheque
               Imprimir_Cheque(1);
           End;
        End;
    end
    Else Begin
        DMCONTA.IBT.RollbackRetaining;
        DMCAIXA.IBT.RollbackRetaining;
        DMBANCO.IBT.RollbackRetaining;
    End;
    //Edmar - 14/04/2014 - Trecho comentado para corrigir solicita��o 68 da Baroni
    //Com isso o sistema preparava dois recibos para impress�o, um aqui e outro em UPadraoContas
    {If	FMenu.TIPOAUX='IMPRECIBO'
    Then Begin
        //Imprimir Recibo para a conta a receber/pagar baixadas
        ImpRecibo(XCOD_CONTABAIXA);
    End;}

    Close;
end;

procedure TFPadraoBaixaContas.BitBtn2Click(Sender: TObject);
begin
  inherited;
    Close;
end;

procedure TFPadraoBaixaContas.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCod_Conta:=0;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
   If FiltraTabela(DMMACS.TMP, 'TMP', 'COD_TMP', DMBANCO.TAlx.FieldByName('COD_TMP').AsString, '')=True
   Then Begin
       DMMACS.TMP.Delete;
       DMMACS.Transaction.CommitRetaining;
       FiltraCheques;
   End;
end;

procedure TFPadraoBaixaContas.FrmContaBTNOPENClick(Sender: TObject);
Var
	Oper: Char;
begin
  inherited;
   //verifica o tipo do operador para selecionar contas
   If XTipoPR='R'
   Then Begin
       Oper:='C';
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscar� apenas contas de creditos, e se for "D" ir� selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'C';
   End;
   If XTipoPR='P'
   Then Begin
       Oper:='D';
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscar� apenas contas de creditos, e se for "D" ir� selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'D';
   End;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCod_Conta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;

end;

procedure TFPadraoBaixaContas.FrmContaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
	Oper:Char;
begin
  inherited;
	If Key = #13
   Then Begin
   	//verifica o tipo do operador para selecionar contas
   	If XTipoPR='R' Then
       	Oper:='C';
   	If XTipoPR='P' Then
       	Oper:='D';
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCod_Conta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCod_Conta:=0;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCod_Conta:=0;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
   End;
end;

procedure TFPadraoBaixaContas.DBGCTAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
   	If Not DMBANCO.WCtaCor.IsEmpty Then//'se banco n�o estiver vazio
       	XCOD_CONTABANCO:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger
       Else
           XCOD_CONTABANCO:=-1;

       PBanco.Visible:=False;
       PBanco.Enabled:=False;

       if not XMultiplo // - 20/01/2009: se nao for multiplo
       then
            EDVALORPAGO.SetFocus
       else
            BtnAddConta.SetFocus;
   End;         
end;

procedure TFPadraoBaixaContas.PBancoExit(Sender: TObject);
begin
  inherited;
	If PBanco.Visible=True Then
       DBGCTA.SetFocus;
end;

procedure TFPadraoBaixaContas.DBCOBExit(Sender: TObject);
begin
  inherited;
{   //controla visualiza��o de componentes referentes a escolha e visualiza��o da cta corrente
	If DBCOBRANCA.Text='Banco'
   Then Begin
       PMostraCta.Visible:=True;
       PMostraCta.BringToFront;
       PBanco.Enabled:=True;
       PBanco.Visible:=TRUE;
       PBanco.BringToFront;
       DBGCTA.SetFocus;
   End
   Else Begin
       PBanco.Enabled:=False;
       PMostraCta.Visible:=False;
   End;}

   XVlrCheque:=-50;
   LTotMostraCheque.Visible:=False;
   //controla visualiza��o de componentes referentes a escolha e visualiza��o da cta corrente
	If (DBCOB.Text='Boleto') or (DBCOB.Text='Banco') or (DBCOB.Text='Pix') or (DBCOB.Text='Cart�o') or ((DBCOB.Text='Cheque') And (XTipoPR='P')) 
   Then Begin
       FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', ' (cod_ctacor > 0) and ((inativo=''0'') or (inativo is null)) ');
       PMostraCta.Visible:=True;
       PMostraCta.BringToFront;
       PBanco.Enabled:=True;
       PBanco.Visible:=TRUE;
       PBanco.BringToFront;
       DBGCTA.SetFocus;
   End
   Else Begin
       PBanco.Enabled:=False;
       PMostraCta.Visible:=False;
   End;

   If (DBCOB.Text='Cart�o') then
   begin
       //Paulo 12/09/2011: Em caso de cart�o mostra o painel de n� de cart�o
       PCartao.Visible:=true;
       PCartao.BringToFront;
   end;

   If (DBCOB.Text='Chq. Terc.') And (XTipoPR='P')
   Then Begin
       PChqTerceiro.Visible:=True;
       PChqTerceiro.Enabled:=True;
       PChqTerceiro.BringToFront;
       LTotMostraCheque.Visible:=True;
       FiltraCheques;
       DBCBCHEQUE.SetFocus;
   End
   Else Begin
       If (DBCOB.Text='Chq. Terc.') And (XTipoPR='R')
       Then Begin
            MessageDlg('A Forma de pagamento de Cheques recebidos, deve ser utilizada apenas em contas a pagar', mtWarning, [mbOK], 0);
            DBCOB.Text:='Carteira';
            DBCOB.SetFocus;
       End;
   End;

   // - 19/01/2009: se for lan�amento m�ltiplo
   If (DBCOB.Text='M�ltiplo')
   Then Begin
        // - 19/01/2009: se nao foi aberto o painel contas multiplas antes
        if not XMultiplo then begin
            // - 19/01/2009: limpar tabela para ser usada 
          DMBANCO.TAlx.Close;
          DMBANCO.TAlx.SQL.Clear;
          DMBANCO.TAlx.SQL.Add('delete from tmp');
          DMBANCO.TAlx.ExecSQL;
          try
              DMBANCO.IBT.CommitRetaining;
          Except
              DMBANCO.IBT.RollbackRetaining;
          end;

          XMultiplo := True;
          XTotMult := 0;
          XCodTmp := 0;
       end;

       // - 19/01/2009: mostrar painel contas multiplas
       PMultiplo.Visible := True;
       PMultiplo.BringToFront;
       AtualizarLancMultiplo;
       EdValorMul.SetFocus;
   End
   else begin
        XMultiplo := False;
   end;

   //ABRE PAINEL DE CART�O
   if ((DBCOB.Text='C - Cart�o') or (DBCOB.Text='D - Cart�o')) then
   begin
		//Foi selecionado o pagamento cart�o e n�o temos um cart�o selecionado
       DMFINANC.TCartao.Close;
       DMFINANC.TCartao.SQL.Clear;
       If DBCOB.Text='C - Cart�o' Then
 			DMFINANC.TCartao.SQL.Add(' Select * from cartao where cartao.parcini>-1 order by descricao ');
       If DBCOB.Text='D - Cart�o' Then
 			DMFINANC.TCartao.SQL.Add(' Select * from cartao where cartao.parcini=-1 order by descricao ');
       DMFINANC.TCartao.Open;
       DBCartoes.DataSource:=DMFINANC.DCartao;
       PCartoes.Visible:=True;
       PCartoes.BringToFront;
       DBCartoes.SetFocus;
       Exit;
	end;
end;

procedure TFPadraoBaixaContas.DBCOBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	key:=#0;
end;

procedure TFPadraoBaixaContas.CBMultContaExit(Sender: TObject);
begin
   if (CBMultConta.Text = 'Banco') or ((CBMultConta.Text = 'Cheque') And (XTipoPR='P'))
   then begin
      // - 19/01/2009:  visualiza��o de componentes referentes a escolha e visualiza��o da cta corrente

     FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', ' (cod_ctacor > 0) and ((inativo=''0'') or (inativo is null)) ');
     PBanco.Enabled:=True;
     PBanco.Visible:=TRUE;
     PBanco.BringToFront;
     DBGCTA.SetFocus;

   end;

end;

procedure TFPadraoBaixaContas.EDDebExit(Sender: TObject);
begin
  inherited;
	Try
       StrToDate(EDDeb.Text);
   Except
       EDDeb.SetFocus;
   End;
end;

procedure TFPadraoBaixaContas.PChqTerceiroExit(Sender: TObject);
begin
  inherited;
	If PChqTerceiro.Visible=True Then
       BTNOPEN.SetFocus;
end;

procedure TFPadraoBaixaContas.BTNOPENClick(Sender: TObject);
begin
  inherited;
  	//VERIFICA SE JAH NAUM EXISTE O MESMO CHEQUE LANCADO
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('  select * from tmp ');
   DMMACS.TALX.SQL.Add('   Where tmp.int1=:COD_CHEQUE ');
   DMMACS.TALX.ParamByName('COD_CHEQUE').AsInteger:=DMBANCO.WChequeRec.FieldByName('cod_chequerec').AsInteger;
	DMMACS.TALX.Open;
   If Not DMMACS.TALX.IsEmpty
   Then Begin
		Mensagem('OP��O BLOQUEADA', 'Este cheque j� foi selecionado.', '', 1, 1, False, 'a');
       Exit;
   End;
	DMMACS.TMP.Insert;
   DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
   DMMACS.TMP.FieldByName('INT1').AsInteger:=DMBANCO.WChequeRec.FieldByName('cod_chequerec').AsInteger;
   DMMACS.TMP.Post;
   XCod_Tmp:=XCod_Tmp+1;
   DMMACS.Transaction.CommitRetaining;
   FiltraCheques;
   DBCBCHEQUE.SetFocus;
end;

procedure TFPadraoBaixaContas.BitBtn3Click(Sender: TObject);
begin
  inherited;
	PChqTerceiro.Visible:=False;
	PChqTerceiro.Enabled:=False;
   XVlrCheque:=StrToFloat(LTotalChq.Caption);
   EDVALORPAGO.ValueNumeric:=XVlrCheque;
   EDVALORPAGO.SetFocus;
end;
procedure TFPadraoBaixaContas.EdMultaExit(Sender: TObject);
begin
  inherited;
	CalcPercent(EdMulta.ValueNumeric, 0, EdValor.ValueNumeric, 'J');
    EdMultaMoeda.ValueNumeric:=AlxValor;
    If XTipoPR= 'R'
    Then Begin
      If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=0
      Then Begin
    	If DMMACS.TLoja.FieldByName('JURCOMP').AsString='1'
       Then Begin//o calculo deve ser efetuado como juro composto
    		If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
	    		EDValorJurMulta.ValueNumeric:=(JurCompPar((EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric), EdJuro.ValueNumeric, StrToInt(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0))))
           Else
				EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
       End
    	Else Begin
    		If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
	 			EDValorJurMulta.ValueNumeric:=EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric+(EdJuroMoeda.ValueNumeric*StrToFloat(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0)))
           Else
				EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
       End;
	   End;
      If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=1
      Then Begin
    		If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
    			EDValorJurMulta.ValueNumeric:=EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric+(EdJuroMoeda.ValueNumeric*StrToFloat(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0)))
           Else
				EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
      End;
      If DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger=2
      Then Begin
    		If (XTipoPR='R') AND ((StrToDate(EdVenc.Text)+DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency)<=StrToDAte(EdDeb.Text)) Then
	 			EDValorJurMulta.ValueNumeric:=(JurCompPar((EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric), EdJuro.ValueNumeric, StrToInt(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0))))
           Else
				EDValorJurMulta.ValueNumeric:=EdValor.ValueNumeric;
      End;
    End
    Else Begin
    	If DMMACS.TLoja.FieldByName('JURCOMP').AsString='1' Then //o calculo deve ser efetuado como juro composto
	    	EDValorJurMulta.ValueNumeric:=(JurCompPar((EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric), EdJuro.ValueNumeric, StrToInt(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0)))) //// - 18/03/2009: LUGAR DO "0" ESTAVA:   DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency
    	Else
	 		EDValorJurMulta.ValueNumeric:=EdMultaMoeda.ValueNumeric+EdValor.ValueNumeric+(EdJuroMoeda.ValueNumeric*StrToFloat(difdias(StrToDate(EdVenc.text), StrToDate(EDDeb.text), 0)));  //// - 18/03/2009: LUGAR DO "0" ESTAVA:   DMMACS.TLoja.FieldByNAme('DIASCARE').AsCurrency
    End;
end;

procedure TFPadraoBaixaContas.DBCOBClick(Sender: TObject);
begin
  inherited;
   If DBCOB.Text = 'Cheque'
   Then Begin
       CBCheque.Visible := true;
       CBCheque.BringToFront;
   End
   Else Begin
       CBCheque.Visible := false;
       CBCheque.SendToBack;
   End;
end;
// - 16/01/2009: add conta multipla
procedure TFPadraoBaixaContas.BtnAddContaClick(Sender: TObject);
begin
  inherited;
  if EdValorMul.ValueNumeric = 0
  then begin
      Mensagem('INFORMA��O', 'Informe um n�mero maior que 0 (zero)!', '', 1, 1, False, 'i');
      EdValorMul.SetFocus;
      Exit;
  end;

  XCodTmp := XCodTmp+1;

  DMBANCO.TAlx.Close;
  DMBANCO.TAlx.SQL.Clear;
  DMBANCO.TAlx.SQL.Add('insert into TMP');
  DMBANCO.TAlx.SQL.Add('(DESC1, VLR1, COD_TMP, INT1, DESC3) values (:DESC1, :VLR1, :COD_TMP, :INT1, :DESC3)');
  DMBANCO.TAlx.ParamByName('COD_TMP').AsInteger := XCodTmp;
  // - 19/01/2009: forma de pagamento
  DMBANCO.TAlx.ParamByName('DESC1').AsString := CBMultConta.Text;
  // - 19/01/2009: valor do pagamento
  DMBANCO.TAlx.ParamByName('VLR1').AsCurrency := EdValorMul.ValueNumeric;

  if (CBMultConta.Text = 'Banco') or ((CBMultConta.Text = 'Cheque') And (XTipoPR='P'))
  then begin
    if XCOD_CONTABANCO = -1
    then begin
        Mensagem('A T E N � � O ', 'Conta Corrente n�o encontrada!', '', 1,1, false, 'i');
        EdValorMul.setFocus;
        Exit;
    end;
    // - 19/01/2009: cod cnt corrente
    DMBANCO.TAlx.ParamByName('INT1').AsInteger := XCOD_CONTABANCO;
    // - 19/01/2009: nome do banco
    DMBANCO.TAlx.ParamByName('DESC3').AsString := DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
  end;

  try
      DMBANCO.TAlx.ExecSQL;
      DMBANCO.IBT.CommitRetaining;
      XTotMult := XTotMult+1;
  Except
      DMBANCO.IBT.RollbackRetaining;
      Mensagem('A T E N � � O ', 'Ocorreu uma Falha na inser��o da Forma de Pagamento!', '', 1,1, false, 'i');
  end;

  AtualizarLancMultiplo;

  EdValorMul.ValueNumeric := 0;
  CBMultConta.Text := 'Carteira';
  EdValorMul.SetFocus;

end;
// - 19/01/2009: faz o lan�amento de v�rias contas
procedure TFPadraoBaixaContas.PagamentoMultiplo;
begin
    {If XTipO='P'
    Then Begin
    	 //TRABALHA COM CONTAS A PAGAR
        If FiltraTabela(DMCONTA.TParcCP, 'PARCELACP', 'COD_PARCELACP', DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsString, '')=True
        Then Begin
            Try
	            //Edita tabela para entradas de valores para parcela
                DMCONTA.TParcCP.edit;
                DMCONTA.TParcCP.FieldByName('DTDEBITO').ASSTRING:=EDDeb.text;
                DMCONTA.TParcCP.FieldByName('JUROS').Value:=EdJuro.ValueNumeric;
                DMCONTA.TParcCP.FieldByName('MULTAS').Value:=EdMulta.ValueNumeric;
                DMCONTA.TParcCP.FieldByName('COBRANCA').AsString:=DBCOB.TEXT;
                DMCONTA.TParcCP.FieldByName('DESCONTO').Value:=EdDesc.ValueNumeric;
                DMCONTA.TParcCP.FieldByName('VALORPG').Value:=StrToFloat(TiraPonto(EDVALORPAGO.Text))-xvlrlanc;
                DMCONTA.TParcCP.FieldByName('FECH').AsString:='S';
                DMCONTA.TParcCP.Post;
                Flag:=1;

            Except
                Flag:=0;
            End;
            If XVLRFINAL > XVLRPG
            Then Begin//se pago n�o cobre o valor devido o correto � lan�ar nova parcela
                If Mensagem('A T E N � � O', 'O Valor a ser Pago � de '+FloatToStr(XVLRFINAL)+#13+'O Valor Pago � de '+FloatToStr(XVLRPG)+#13+'Deseja converter a diferen�a em uma outra parcela?', '', 2, 3, False, 'c')=2
                Then Begin
                    If GeraNovaParc(DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsInteger, (EDValorJurMulta.ValueNumeric - EDVALORPAGO.ValueNumeric), 0, 'Carteira', EdParcela.Text+'/1', DMCONTA.WParP.FIELDBYNAME('HISTORICO').AsString, 0, 0, DMCONTA.WParP.FIELDBYNAME('dtrefer').AsString)=True Then
                        Flag:=1
                    Else
                        Flag:=0;
                End
                Else Begin
                   Flag:=0;
                   DMCONTA.IBT.RollbackRetaining;
                   Exit;
                End;
            End;
            //INICIA CONTROLE
            //CONTROLA LAN�AMENTOS EM CARTEIRA
            //
            	If (DBCOB.Text='Carteira')
            	Then Begin//controla os lan�amentos que devem ser feitos em caixa
                   If (XVLRMULTA=0) AND (XVLRDESC=0)
               	Then Begin //Se nao foi aplicado multa nem desconto
            			If LanCaixa (-1, DateToStr(Date()), XCOD_CONTA, 'Bx. C.P.- Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + '-'+EDDeb.Text+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRPG, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString,  DMCONTA.WParP.FIELDBYNAME('dtrefer').AsDateTime, '1')=True
          				Then  //Se lan�ou
               			Flag:=1
               		Else
               			Flag:=0;
					END;
            		If XVLRDESC<>0
               	Then Begin//Se foi dado desconto
                   	//Lan�amento para desconto
                   	If LanCaixa (-1, DateToStr(Date()),  XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRDESC, 'CTAPJ', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, Date(), '1')=True
                       Then  //Se lan�ou
                       	Flag:=1
                       Else
                       	Flag:=0;
                       //Lan�amento para valor
            			If LanCaixa (-1, DateToStr(Date()), XCOD_CONTA, 'Bx. C.P.-'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRPG+XVLRDESC, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('dtrefer').AsDateTime, '1')=True
          				Then  //Se lan�ou
               			Flag:=1
               		Else
               			Flag:=0;
               	End;
                   If XVLRMULTA<>0
               	Then Begin //Se foi aplicado multa
                   	//Lan�amento para juros ou multas
            			If LanCaixa (-1, DateToStr(Date()), XCodPlanoContas, XHist + 'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRMULTA, 'CTAPJ', XCOD_CONTABAIXA, DBCOB.Text, XTipoOP, DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, Date(), '1')=True
            			Then  //Se lan�ou
               			Flag:=1
            			Else
               			Flag:=0;
                       //Lan�amento para o valor
            			If LanCaixa (-1, DateToStr(Date()), XCOD_CONTA, 'Bx. C.P.-'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRPG-XVLRMULTA, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('dtrefer').AsDateTime, '1')=True
          				Then  //Se lan�ou
               			Flag:=1
               		Else
               			Flag:=0;
               	End;
               End;
            //FINAL DO CONTROLE EM CARTEIRA

            //INICIA CONTROLE
            //CONTROLA LAN�AMENTOS EM BANCO
            //
            	If DBCOB.Text='Banco'
            	Then Begin
                   If (XVLRMULTA=0) AND (XVLRDESC=0)
               	Then Begin //Se nao foi aplicado multa nem desconto
						If LanBanco(XCOD_CONTABANCO, XCOD_CONTA,'Bx. C.P.-'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRPG, 'CTAPJ', XCOD_CONTABAIXA, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'D�B. AUTO', 'S', EdVenc.Text, '', DMCONTA.WParP.FIELDBYNAME('DTLANC').AsString, '1', DMCONTA.TParcCP.FIELDBYNAME('DTREF').AsString)=True
            			Then  //Se lan�ou
               			Flag:=1
            			Else
               			Flag:=0;
					END;
            		If XVLRDESC<>0
               	Then Begin//Se foi dado desconto
                   	//Lan�amento para Descontos
					  	If LanBanco(XCOD_CONTABANCO, XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRDESC, 'CTAPJ', XCOD_CONTABAIXA, 'ENTRADA', StrToInt(FMenu.LCODUSUARIO.Caption), DBCOB.Text, XTipoOP, EdVenc.Text, '', DMCONTA.WParP.FIELDBYNAME('NOME').AsString, '1', DateToStr(Date()))=True
                   	Then  //Se lan�ou
               			Flag:=1
            			Else
               			Flag:=0;
                       //Lan�amento para o Valor
						If LanBanco(XCOD_CONTABANCO, XCOD_CONTA, 'Bx. C.P.-'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRPG+XVLRDESC, 'CTAPJ', XCOD_CONTABAIXA, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'D�B. AUTO', 'S', EdVenc.Text, '', DMCONTA.WParP.FIELDBYNAME('DTLANC').AsString, '1', DMCONTA.TParcCP.FIELDBYNAME('DTREF').AsString)=True
            			Then  //Se lan�ou
               			Flag:=1
            			Else
               			Flag:=0;
               	End;
                   If XVLRMULTA<>0
               	Then Begin //Se foi aplicado multa
                   	//Lan�amento para multa
					  //	If LanBanco(XCOD_CONTABANCO, XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRMULTA, 'CTAPJ', XCOD_CONTABAIXA, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'D�B. AUTO', XTIPOOP, EdVenc.Text, '', DMCONTA.WParP.FIELDBYNAME('DTLANC').AsString, '1', DateToStr(Date()))=True
						If LanBanco(XCOD_CONTABANCO, XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRMULTA, 'CTAPJ', XCOD_CONTABAIXA, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'D�B. AUTO', XTIPOOP, DateToStr(Date()), '', DMCONTA.WParP.FIELDBYNAME('DTLANC').AsString, '1', DateToStr(Date()))=True
            			Then  //Se lan�ou
               			Flag:=1
            			Else
               			Flag:=0;
                       //Lan�amento para valor
						If LanBanco(XCOD_CONTABANCO, XCOD_CONTA,     'Bx. C.P.:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + ' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString,  XVLRPG-XVLRMULTA, 'CTAPJ', XCOD_CONTABAIXA, 'SAIDA', StrToInt(FMenu.LCODUSUARIO.Caption), 'D�B. AUTO', 'S', EdVenc.Text, '', DMCONTA.WParP.FIELDBYNAME('DTLANC').AsString, '1', DMCONTA.TParcCP.FIELDBYNAME('DTREF').AsString)=True
            			Then  //Se lan�ou
               			Flag:=1
            			Else
               			Flag:=0;
					End;
            	End;
            //FINAL DO CONTROLE EM BANCO

            //INICIO DE PROCESSO
            //CONTROLA LAN�AMENTOS EM CHEQUE
            If DBCOB.Text='Cheque'
            Then Begin
				If LancChSai(XCOD_CONTA, 'Bx. C.P.-'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString+' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString,  StrToDate(EdVenc.Text), XVLRPG, XCOD_CONTABANCO, 'CTAPJ', IntToStr(XCOD_CONTABAIXA),'')=True
          		Then Begin //Se lan�ou
              		Flag:=1
               End
          		Else Begin
              		Flag:=0;
               End;
            End;
          	 If (DBCOB.Text='Chq. Terc.')
            Then Begin//controla os lan�amentos que devem ser feitos em caixa
            	//PERCORRE TODOS OS CHEQUES EFETUANDO RETIRADO DO MESMO DO CX
				DMBANCO.TAlx.First;
               While Not DMBANCO.TAlx.Eof do
               Begin
   				If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.TAlx.FieldByName('COD_MOVBANCO').AsString, '')=True
   				Then Begin
           			FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
           			DMBANCO.TMovBanco.EDIT;
						DMBANCO.TMovBanco.FieldByName('FECH').AsString:='S';
						DMBANCO.TMovBanco.FieldByName('DTMOV').AsString:=DateToStr(Date());
                       DMBANCO.TMovBanco.Post;
       				//LAN�AR VALOR DE ESTORNO PARA RETIRADA DA FOLHA DO CAIXA
						LanCaixa (-1, DateToStr(Date()),  DMBANCO.TMovBanco.FieldByName('cod_plncta').AsInteger, 'Pgto For: '+DMCONTA.WParP.FIELDBYNAME('NOME').AsString+' Chq. Terc.: '+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString +'-'+ DateToStr(Date())+' De: '+DMBANCO.TChequeRec.FIELDBYNAME('EMITENTE').AsString, DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency, 'DCHR', DMBANCO.WChequeRec.FieldByNAme('COD_CHEQUEREC').AsInteger, 'CHEQUE', 'S', 'CH'+DMBANCO.TMovBanco.FIELDBYNAME('NUMCHEQUE').AsString, DMBANCO.TMovBanco.FieldByName('dtref').AsDateTime, '1');
                   End;
                   DMBANCO.TAlx.Next;
               End;
               //Se faltou dinheiro deve-se retirar do cx
               If XVLRFINAL<XVlrCheque
               Then Begin
               	XHist:='Dif. '+XHist;
					LanCaixa (-1, DateToStr(Date()),  XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVlrCheque-XVLRFINAL, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('DTREFER').AsDateTime, '1');
				End;
               //Se Sobrou dinheiro deve-se retirar do cx
               If XVLRFINAL>XVlrCheque
               Then Begin
					XHist:='Dif. '+XHist;
					LanCaixa (-1, DateToStr(Date()),  XCodPlanoContas, XHist+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString +' Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+ '-'+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRFINAL-XVlrCheque, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('DTREFER').AsDateTime, '1');
				End;
            End;
            //CONTROLE PARA CREDITOS
            If DBCOB.Text='Cr�dito'
            Then Begin
            	//LAN�A CREDITO PARA FORNECEDOR
            	If FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'COD_FORNEC', DMCONTA.WParP.FieldByName('COD_FORNEC').AsString, '')=False
            	Then Begin
            		Flag:=1;
            	End;
            	If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsString, '')=False
            	Then Begin
            		Flag:=0;
            	End;
            	//determina o valor a ser lan�ado como credito
            	If EDVALORPAGO.ValueNumeric<=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency
            	Then Begin
            		XVLRCREDITO:=XTabela.FieldByName('VALOR').AsCurrency;
            	End
            	Else Begin
            		XVLRCREDITO:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency;
            	End;
            	DMPESSOA.TPessoa.Edit;
            	DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency:=DMPESSOA.TPessoa.FieldByName('vlrcredito').AsCurrency-XVLRCREDITO;
            	DMPESSOA.TPessoa.Post;
               //Lan�a na tabela de credito
               LanCredito(DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger, DMCONTA.WParP.FieldByName('COD_PARCELACP').AsInteger, 'PEDCOMPRA', 'FOR', 'S', XTabela.FieldByName('NUMPED').AsString, DateToStr(Date()), XTabela.FieldByName('VALOR').AsCurrency);

            	//REGISTRO DE CREDITO ENTRADA
            	If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA,  'Bx. C.P. Cr�dito - Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + '-'+EDDeb.Text+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRCREDITO, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'E', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('DTREFER').AsDateTime, '1')=True
            	Then Begin//informa que a atualiza��o do financeiro foi efetivada
                   Flag:=1;
               	// REGISTRO DE CREDITO SAIDA
               	If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, 'Bx. C.P. Cr�dito - Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + '-'+EDDeb.Text+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRCREDITO, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('DTREFER').AsDateTime, '1')=True
               	Then Begin//informa que a atualiza��o do financeiro foi efetivada
                       Flag:=1;
                   	DMPESSOA.TransacPessoa.CommitRetaining;
               	End
               	Else Begin//informa que a finaliza��o do financeiro falhou
                       Flag:=0;
                   	DMPESSOA.TransacPessoa.RollbackRetaining;
               	End;
               	DMPESSOA.TransacPessoa.CommitRetaining;
            	End
            	Else Begin//informa que a finaliza��o do financeiro falhou
                   Flag:=0;
               	DMPESSOA.TransacPessoa.RollbackRetaining;
            	End;
            	If EDVALORPAGO.ValueNumeric>=XVLRCREDITO
            	Then Begin
            		//CASO O CREDITO NAO TENHA SIDO SUFICIENTE RETIRA DO CAIXA
               	// REGISTRO DE CREDITO SAIDA
               	If LanCaixa(-1, DateToStr(Date()), XCOD_CONTA, 'Bx. C.P. Cr�dito - Venc.:'+DMCONTA.WParP.FIELDBYNAME('DTVENC').AsString+'Doc:'+DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString + '-'+EDDeb.Text+DMCONTA.WParP.FIELDBYNAME('NOME').AsString, XVLRPG-XVLRCREDITO, 'CTAP', XCOD_CONTABAIXA, DBCOB.Text, 'S', DMCONTA.WParP.FIELDBYNAME('NUMPARC').AsString, DMCONTA.WParP.FIELDBYNAME('DTREFER').AsDateTime, '1')=True
               	Then Begin//informa que a atualiza��o do financeiro foi efetivada
                       Flag:=1;
                   	DMPESSOA.TransacPessoa.CommitRetaining;
               	End
               	Else Begin//informa que a finaliza��o do financeiro falhou
                       Flag:=0;
                   	DMPESSOA.TransacPessoa.RollbackRetaining;
               	End;
               End;
            End;

            // agora ir� verificar se a parcela tbm esta lancada no movbanco. Isso pq qdo gerou pedcompra e o pgto foi "cart�o", foi lancado registros na tabela movbanco, + sem movimenta��es
            If FiltraTabela(DMBANCO.TMovBanco,'MOVBANCO','COD_MOVBANCO','','(COD_GERADOR = ' + #39 + DMCONTA.WParP.FieldByName('COD_PARCELACP').AsString + #39 + ') and (TIPOGERADOR = ' + #39 + 'CTPCARTAO' + #39 + ')')= TRUE
            Then Begin
               DMBANCO.TMovBanco.Edit;
               DMBANCO.TMovBanco.FieldByName('FECH').AsString := 'S';
               DMBANCO.TMovBanco.FieldByName('ESTRU').AsString := '1';
               DMBANCO.TMovBanco.Post;
            End;

        End;
    End; }
end;

procedure TFPadraoBaixaContas.AtualizarLancMultiplo;
begin
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('select * from tmp');
   DMMACS.TMP.Open;

   if DMMACS.TMP.IsEmpty
   then begin
        // - 19/01/2009: tabela vazia bloqueia botao de remover e zera valor pago
        BtnRemConta.Enabled := False;
        EDVALORPAGO.ValueNumeric := 0;
        BtnAddConta.Enabled := True;
   end else begin
        BtnRemConta.Enabled := True;
        DMBANCO.TAlx.Close;
        DMBANCO.TAlx.SQL.Clear;
        DMBANCO.TAlx.SQL.Add('select sum(tmp.vlr1) as valor from tmp');
        DMBANCO.TAlx.Open;
        // - 19/01/2009: faz soma das contas add
        EDVALORPAGO.ValueNumeric := DMBANCO.TAlx.FieldByName('valor').AsCurrency;
        // - 19/01/2009: se o valor paga utltrapassar o valor devido bloquear botao de add 
        if EDVALORPAGO.ValueNumeric >= EdValor.ValueNumeric
        then
            BtnAddConta.Enabled := False
        else
            BtnAddConta.Enabled := True;
   end;


end;
// - 19/01/2009: click em remover
procedure TFPadraoBaixaContas.BtnRemContaClick(Sender: TObject);
begin
  inherited;
  DMBANCO.TAlx.Close;
  DMBANCO.TAlx.SQL.Clear;
  DMBANCO.TAlx.SQL.Add('select * from tmp where tmp.cod_tmp = :cod');
  DMBANCO.TAlx.ParamByName('cod').AsInteger := DMMACS.TMP.FieldByName('cod_tmp').AsInteger;
  DMBANCO.TAlx.Open;

  if DMBANCO.TAlx.IsEmpty
  then begin
        Mensagem('A T E N � � O ', 'Forma de Pagamento n�o encontrada!', '', 1,1, false, 'i');
  end else begin
        DMBANCO.TAlx.Close;
        DMBANCO.TAlx.SQL.Clear;
        DMBANCO.TAlx.SQL.Add('delete from tmp where tmp.cod_tmp = :cod');
        DMBANCO.TAlx.ParamByName('cod').AsInteger := DMMACS.TMP.FieldByName('cod_tmp').AsInteger;
        DMBANCO.TAlx.ExecSQL;
         try
            DMBANCO.TAlx.ExecSQL;
            DMBANCO.IBT.CommitRetaining;
            XTotMult := XTotMult-1;
        Except
            DMBANCO.IBT.RollbackRetaining;
            Mensagem('A T E N � � O ', 'Ocorreu uma Falha na Remo��o da Forma de Pagamento!', '', 1,1, false, 'i');
        end;
  end;

  AtualizarLancMultiplo;

  EdValorMul.SetFocus;

end;

procedure TFPadraoBaixaContas.PMultiploExit(Sender: TObject);
begin
  inherited;
{  if not PBanco.Visible then begin
    PMultiplo.SendToBack;
    PMultiplo.Visible := False;
  end;        }
end;

procedure TFPadraoBaixaContas.cxButton1Click(Sender: TObject);
begin
  inherited;
    PMultiplo.SendToBack;
    PMultiplo.Visible := False;

    if XTotMult = 0
    Then begin
    	Mensagem('INFORMA��O AO USU�RIO', 'N�o h� nenhum Lan�amento M�ltiplo!', '', 1, 1, False, 'i');
       EDVALORPAGO.ValueNumeric := EdValorMul.ValueNumeric;
       DBCOB.Text := CBMultConta.Text;
       EDVALORPAGO.SetFocus;
       Exit;
    End;

    If XTotMult = 1
    Then begin
    	Mensagem('INFORMA��O AO USU�RIO', 'H� apenas um Lan�amento M�ltiplo!', '', 1, 1, False, 'i');
       EDVALORPAGO.ValueNumeric := DMMACS.TMP.FieldByName('vlr1').Value;
       DBCOB.Text := DMMACS.TMP.FieldByName('desc1').AsString;
       XMultiplo := False;
       EDVALORPAGO.SetFocus;
       Exit;
    End;
    EDVALORPAGOExit(sender);
    BitBtn1.SetFocus;
end;

procedure TFPadraoBaixaContas.CBMultContaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    key:=#0;
end;

procedure TFPadraoBaixaContas.QRBRecFinBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR
  Data: Integer;
  Mes:String;
  Year, Month, Day:word;
begin
  // inherited;
	Try
   	Data := DayOfWeek(Date());{Volta um n�mero inteiro que representa o dia da semana}
    	DecodeDate(Date(), Year, Month, Day);
    	Case Month of
      		1:Mes:='Janeiro';
      		2:Mes:='Fevereiro';
      		3:Mes:='Mar�o';
      		4:Mes:='Abril';
      		5:Mes:='Maio';
      		6:Mes:='Junho';
      		7:Mes:='Julho';
      		8:Mes:='Agosto';
      		9:Mes:='Setembro';
      		10:Mes:='Outubro';
      		11:Mes:='Novembro';
      		12:Mes:='Dezembro';
    	End;
   Except
   end;
   If FiltraTabela(DMMACS.TALX, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '')
   Then begin
   	QRLabel76.Caption:=DMMACS.TALX.FieldByName('NOME').AsString+', '+ IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
//       QRLabel92.Caption:=DMMACS.TALX.FieldByName('NOME').AsString+', '+ IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
   end
   Else begin
   	QRLabel76.Caption:=IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
  //     QRLabel92.Caption:=IntToStr(Day)+' de '+Mes + ' de '+IntToStr(Year);
   end;          

   FMenu.Extenso.Numero:= FormatFloat('0.00', (DMFINANC.TAlx.FieldByName('valorpg').AsCurrency));
   QRLImportanciaF.Caption:=UpperCase(FMenu.Extenso.Extenso);
   QRLabel85.Caption:=FormatFloat('0.00', (DMFINANC.TAlx.FieldByName('valorpg').AsCurrency));
//   QRDataRec1.Caption:=TimeToStr(Time());
   QRDataRec4.Caption:=TimeToStr(Time());
end;

//procedure utilizada para verificar a forma de lan�amento referente a diferen�a de valores
procedure TFPadraoBaixaContas.VerificaFormaLancamentoDiferencaMaior;
var
 xvlrpg, xvlrdv: String;
begin
  inherited;
  	//Edmar - 03/11/2014 - Valida se foi selecionado mais de uma op��o
  	if ((cbConvertMulta.Checked) AND (cbProxParc.Checked) AND (cbLancTroco.Checked))
   	OR ((cbConvertMulta.Checked) AND (cbProxParc.Checked))
       	OR ((cbConvertMulta.Checked) AND (cbLancTroco.Checked))
           	OR ((cbProxParc.Checked) AND (cbLancTroco.Checked)) then
  	begin
		Mensagem(' I N F O R M A � � O ', 'Escolha apenas uma op��o.', '', 1, 1, False, 'I');
       Exit;
  	end;

   //se vai lan�ar troco atribui 0 a variavel
   if cbLancTroco.Checked then
   begin
   	xNaoLancTroco := 0;
   end;

	xvlrlanc := 0;
	//Edmar - 31/10/2014 - verifica qual op��o escolheu e faz o tratamento desejado
   if cbConvertMulta.Checked then//converter em multa ou juros
   begin
       EdMultaMoeda.ValueNumeric:=EdMultaMoeda.ValueNumeric+(EDVALORPAGO.ValueNumeric - EDValorJurMulta.ValueNumeric);
       EDValorJurMulta.ValueNumeric:=EDValorJurMulta.ValueNumeric+(EDVALORPAGO.ValueNumeric - EDValorJurMulta.ValueNumeric);
       CalcPercent(0, EdMultaMoeda.ValueNumeric, EdValor.ValueNumeric, 'J');
       EdMulta.ValueNumeric:=AlxPercento;
       xNaoLancTroco := 1;
   end;

   if cbProxParc.Checked then
   begin//retira o valor de uma proxima parcela
       if (DBCOB.Text<>'M�ltiplo') then
       // - 30/01/2009: se for pagamento multiplo nao deixar descontar das proximas parcelas
       begin
           //passa o valor da diferen�a entre o valor devido e o pago, para ser retirado da pr�xima parcela
           xvlrpg:=FormatFloat('####,##0.00', StrToCurr(TiraPonto(EDVALORPAGO.Text)));
           xvlrdv:=FormatFloat('####,##0.00', StrToCurr(TiraPonto(EDValorJurMulta.Text)));
           xvlrlanc:= StrToCurr(TiraPonto(xvlrpg)) - StrToCurr(TiraPonto(xvlrdv));
      end;
      xNaoLancTroco := 1;
   end;
end;

//procedure utilizada para verificar a forma de lan�amento referente a diferen�a de valores a menor
procedure TFPadraoBaixaContas.VerificaFormaLancamentoDiferencaMenor;
var
	VLRSERV, VLRPROD: Real;//valores caso necess�rio gerar nova parcela
   xFormPag: Integer;
begin
	Try
       //Edmar - 03/11/2014 - verifica se foi selecionado alguma op��o
       if (cbNewParc.Checked) AND (cbBaixaValorPago.Checked) then
       begin
           Mensagem(' I N F O R M A � � O ', 'Escolha apenas uma op��o.', '', 1, 1, False, 'I');
           Exit;
       end;

       //Edmar - 31/10/2014 - Verifica qual op��o foi selecionada
       if cbNewParc.Checked then//deseja criar uma nova parcela
       begin
			if Mensagem(' CONFIRMA��O DO USU�RIO ', 'O sistema ir� gerar uma nova parcela. Deseja confirmar esta opera��o?' , '', 2, 3, False, 'C')= 2 then
       	begin
               if XTipoPR = 'P' then
               begin
                   if DBCOB.TEXT = 'Cheque' then
                   begin
                       //LancConta(Pedido:String; CODPEDIDO:INTEGER; CodPessoa: Integer; Cobranca: String; ValorProd: Real;
                           //ValorServ: Real; CodConta: Integer; CodContaServ: Integer; CodCota: Integer; Historico: String;
                               //CodFormPag: Integer; Documento: String; GERADOR: String; DATA: TDateTime; COMIS: Real; DATAREF: String; NumFiscal: String)
                       
                       //Edmar - 30/05/2014 - Gera uma nova conta com o valor que foi pagado como cheque
                       if LancConta('PEDCOMPRA', DMCONTA.WParP.FieldByName('COD_CTAPAGAR').AsInteger, DMCONTA.WParP.FieldByName('COD_FORNEC').AsInteger, 'Cheque', EDVALORPAGO.ValueNumeric,
                           0, DMCONTA.WParP.FieldByName('cod_plncta').AsInteger, 0, 0, DMCONTA.WParR.FIELDBYNAME('HISTORICO').AsString,
                               DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger, EdParcela.Text, 'CTAP', Date(), 0, DateToStr(Date()), '') then
                       begin
                           xSucessoBaixa := 1;
							xGeraNovaParcela := 'S';                           
                       end
                       else begin
                           xSucessoBaixa := 0;
							xGeraNovaParcela := 'N';                           
                       end;
                   end;

                   If GeraNovaParc(DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsInteger, (EDValorJurMulta.ValueNumeric - EDVALORPAGO.ValueNumeric), 0, 'Carteira', EdParcela.Text+'/1', DMCONTA.WParP.FIELDBYNAME('HISTORICO').AsString, 0, 0, DMCONTA.WParP.FIELDBYNAME('dtrefer').AsString)=True then
                   begin
                       //SE O PAGAMENTO FOR PARCIAL O SISTEMA DEVE ASSIM MARCAR A CONTA
                       DMCONTA.TParcCP.Edit;
                       DMCONTA.TParcCP.FieldByName('PARCIAL').AsString:='1';
                       DMCONTA.TParcCP.Post;
                       DMCONTA.TParcCP.ApplyUpdates;
                       DMCONTA.IBT.CommitRetaining;
                       DMFINANC.Transaction.CommitRetaining;
                       xSucessoBaixa:=1
                   end
                   else
                       xSucessoBaixa:=0;
               end
               else begin
                   if XVALORSERV<>0 then
                   begin//caso deva relan�ar servico
                       VLRPROD:=(EDValorJurMulta.ValueNumeric - EDVALORPAGO.ValueNumeric)/2;
                       VLRSERV:=(EDValorJurMulta.ValueNumeric - EDVALORPAGO.ValueNumeric)/2;
                   end
                   else begin
                       VLRPROD:=(EDValorJurMulta.ValueNumeric - EDVALORPAGO.ValueNumeric);
                       VLRSERV:= 0;
                   end;

                   //LancConta(Pedido:String; CODPEDIDO:INTEGER; CodPessoa: Integer; Cobranca: String; ValorProd: Real;
                       //ValorServ: Real; CodConta: Integer; CodContaServ: Integer; CodCota: Integer; Historico: String;
                           //CodFormPag: Integer; Documento: String; GERADOR: String; DATA: TDateTime; COMIS: Real;
                               //DATAREF: String; NumFiscal: String): Boolean;

                   //Edmar - 30/05/2014 - Se for cheque lan�a uma nova conta
                   if DBCOB.TEXT = 'Cheque' then
                   begin
                       FMenu.xLancConta := True;
                       //Edmar - 06/06/2014 - Filtra buscando a forma de pagamento para o lan�amento
                       if FiltraTabela(DMFINANC.TAlx, 'FORMPAG', 'COD_FORMPAG', '', 'PRIMPARCELA > 2 and QUANTPARCELA = 1') then
                           xFormPag := DMFINANC.TAlx.FieldByName('COD_FORMPAG').AsInteger
                       else//Edmar - 06/06/2014 - Se n�o encontrar nada, atribui a forma de pagamento que j� estava na conta
                           xFormPag := DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsInteger;

                       //Edmar - 30/05/2014 - Gera uma nova conta com o valor que foi pagado como cheque
                       if LancConta('ORDEM', DMCONTA.TCtaR.FieldByName('COD_CTARECEBER').AsInteger, DMCONTA.TCtaR.FieldByName('COD_CLIENTE').AsInteger{DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsInteger}, 'Cheque', EDVALORPAGO.ValueNumeric,
                           VLRSERV, DMCONTA.TCtaR.FieldByName('cod_plncta').AsInteger, 0, 0, DMCONTA.WParR.FIELDBYNAME('HISTORICO').AsString,
                               xFormPag, EdParcela.Text, 'CTAR', Date(), 0, DateToStr(Date()), '') then
                           xSucessoBaixa := 1
                       else
                           xSucessoBaixa := 0;
                   end;

                   If GeraNovaParc(DMCONTA.WParR.FIELDBYNAME('COD_PARCELACR').AsInteger, VLRPROD, VLRSERV, 'Carteira', EdParcela.Text+'/1', DMCONTA.WParR.FIELDBYNAME('HISTORICO').AsString, DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency, DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger, DMCONTA.TParcCR.FIELDBYNAME('dtref').AsString)=True Then
                       xSucessoBaixa:=1
                   else
                       xSucessoBaixa:=0;

                   if xSucessoBaixa = 1 then//Edmar - 30/05/2014 - Seta que gerou uma nova parcela para n�o lan�ar outro cheque
                       xGeraNovaParcela := 'S';
               end;
           end;
       end;

       if cbBaixaValorPago.Checked then//deseja apenas baixar o valor pago
       begin
           if DBCOB.Text = 'Cheque' then
           begin
           	if Mensagem(' CONFIRMA��O DO USU�RIO ', 'O sistema ir� gerar uma nova parcela. Deseja confirmar esta opera��o?' , '', 2, 3, False, 'C')= 2 then
             	begin
               	//Edmar - 19/01/2015 - Nesse caso, cria-se uma nova parcela com o valor do cheque recebido
                   if XTipoPR = 'P' then
                   begin
                       If GeraNovaParc(DMCONTA.WParP.FIELDBYNAME('COD_PARCELACP').AsInteger, EDVALORPAGO.ValueNumeric, 0, 'Cheque', EdParcela.Text+'/1', DMCONTA.WParP.FIELDBYNAME('HISTORICO').AsString, 0, 0, DMCONTA.WParP.FIELDBYNAME('dtrefer').AsString)=True then
                       begin
                           xSucessoBaixa:=1;
                           XCOD_CONTABAIXA := xCodNewParc;
                       end
                       else
                           xSucessoBaixa:=0;
                   end
                   else begin
                       If GeraNovaParc(DMCONTA.WParR.FIELDBYNAME('COD_PARCELACR').AsInteger, EDVALORPAGO.ValueNumeric, VLRSERV, 'Cheque', EdParcela.Text+'/1', DMCONTA.WParR.FIELDBYNAME('HISTORICO').AsString, DMCONTA.TParcCR.FieldByName('PERVLRSERV').AsCurrency, DMCONTA.TParcCR.FieldByName('APLICJUR').AsInteger, DMCONTA.TParcCR.FIELDBYNAME('dtref').AsString)=True then
                       begin
                           xSucessoBaixa:=1;
                           XCOD_CONTABAIXA := xCodNewParc;
                       end
                       else
                           xSucessoBaixa:=0;
                   end;
           	end;
           end;
       end;

       //valida se n�o foi selecionado nenhuma op��o
       if not (cbBaixaValorPago.Checked) and not (cbNewParc.Checked) then
       begin
           xSucessoBaixa:=0;
           DMCONTA.IBT.RollbackRetaining;
       end;
   Except
   End;
End;
procedure TFPadraoBaixaContas.btnCancPerguntaOkClick(Sender: TObject);
begin
  inherited;
   //verifica se nenhuma op��o foi marcada e mostra advertencia e desabilita o bot�o de baixar
   if NOT (cbNewParc.Checked) AND NOT (cbBaixaValorPago.Checked) then
   begin
   	Mensagem(' I N F O R M A � � O ', 'N�o ser� poss�vel baixar uma conta a menos que uma op��o esteja selecionada.', '', 1, 1, False, 'I');
   	BitBtn1.Enabled := False;
   end;
   DBCOB.SetFocus;
	cbNewParc.Checked := False;
	cbBaixaValorPago.Checked := False;
	//Edmar - 31/10/2014 - esconde o painel de pergunta
	pPerguntaVlrMenor.Visible := False;
	pPerguntaVlrMenor.SendToBack;
end;
procedure TFPadraoBaixaContas.cbConvertMultaClick(Sender: TObject);
begin
  inherited;
   If cbConvertMulta.Checked=False
   Then Begin
        EdMulta.ValueNumeric:=0;
        EdMultaMoeda.ValueNumeric:=0;
        EdJuro.ValueNumeric:=0;
        EdJuroMoeda.ValueNumeric:=0;
        EdMulta.OnExit(sender);
   End;
   VerificaFormaLancamentoDiferencaMaior;
end;

procedure TFPadraoBaixaContas.cbProxParcClick(Sender: TObject);
begin
  inherited;
   VerificaFormaLancamentoDiferencaMaior;
end;

procedure TFPadraoBaixaContas.cbLancTrocoClick(Sender: TObject);
begin
  inherited;
   VerificaFormaLancamentoDiferencaMaior;
end;

procedure TFPadraoBaixaContas.EDVALORPAGOExit(Sender: TObject);
var
	XVLRDEV, XVLRFINAL, XVLRMULTA, XVLRDESC, XVLRPG: Real;//Valores referentes a baixa
begin
  inherited;
	xvlrlanc:=0;

   BitBtn1.Enabled := True;

   If DBCOB.Text='Chq. Terc.' then
   begin
        If XVlrCheque<=0 Then
           MessageDlg('Os valores dos cheques n�o foram informados.', mtWarning, [mbOK], 0)
        Else
   	     EDVALORPAGO.ValueNumeric:=XVlrCheque;
   end;

	If (StrToFloat(TiraPonto(EDVALORPAGO.Text)) > StrToFloat(TiraPonto(EDValorJurMulta.Text))) AND (XVlrCheque<=0) then
   begin//caso n�o tenha sido informado o valor devidamente
   	pPerguntaVlrMaior.Visible := True;
       pPerguntaVlrMaior.BringToFront;
       cbConvertMulta.SetFocus;
		Exit;
	End;

   //EFETUA VERIFICA��ES PARA VER SE ESTA TUDO OK PARA CONTINUAR
   if (EDVALORPAGO.ValueNumeric<=0) AND (XVlrCheque<=0) then
   begin//caso n�o tenha sido informado o valor
        Mensagem('INFORMA��O AO USU�RIO', 'Por favor informe o valor pago corretamente, ele n�o pode ser um valor nulo.', '', 1, 1, False, 'i');
        EDVALORPAGO.SetFocus;
        Exit;
   end
   else begin
   	XVLRPG:=StrToFloat(TiraPonto(EDVALORPAGO.Text));
   end;

   //INICIO DE PASSAGEM DE VALORES
	//PASSA OS VALORES PARA VARI�VEIS
	//
  	XVLRDEV:=StrToFloat(TiraPonto(EdValor.Text));
  	XVLRFINAL:=StrToFloat(TiraPonto(EDValorJurMulta.Text));
  	XVLRPG:=EDVALORPAGO.ValueNumeric-xvlrlanc;

  	//Edmar - 08/01/2015 - Foi trocado a condi��o pois ele testava o valor antes
  	//de alguma altera��o, caso fosse dado algum desconto na conta
  	//[Solicita��o 282]
  	//If XVLRDEV>XVLRFINAL
  	if XVLRFINAL>XVLRPG then
   begin
   	//NESTE CASO FOI DADO DESCONTO
   	XVLRDESC:=XVLRDEV-XVLRFINAL;
       XVLRMULTA:=0;
   end
   else begin
   	//NESTE CASO FOI COBRADO JUROS OU MULTA
      	XVLRDESC:=0;
      	XVLRMULTA:=XVLRFINAL-XVLRDEV;
   end;

   if XVLRDEV=XVLRFINAL then
   begin
   	//NESTE CASO NAO FOI COBRADO NEM JUROS/MULTAS E NEM DESCONTOS
      	XVLRMULTA:=0;
      	XVLRDESC:=0;
   end;
//   XVLRPG:=EDVALORPAGO.ValueNumeric-xvlrlanc;

  	if XVLRFINAL > XVLRPG then
  	begin//se pago n�o cobre o valor devido o correto � lan�ar nova parcela
       pPerguntaVlrMenor.Left:=11;
       pPerguntaVlrMenor.Top:=333;
  		pPerguntaVlrMenor.Visible := True;
  		pPerguntaVlrMenor.BringToFront;
   end
   else begin
     	if XVLRFINAL < XVLRPG then
     	begin//se pago n�o cobre o valor devido o correto � lan�ar nova parcela
         	pPerguntaVlrMaior.Left:=11;
         	pPerguntaVlrMaior.Top:=333;
         	pPerguntaVlrMaior.Visible := True;
         	pPerguntaVlrMaior.BringToFront;
     	end
     	else begin
       	pPerguntaVlrMaior.Visible := False;
         	pPerguntaVlrMaior.SendToBack;
     	  	pPerguntaVlrMenor.Visible := False;
  			pPerguntaVlrMenor.SendToBack;
     	end;
   end;
end;

procedure TFPadraoBaixaContas.cbNewParcClick(Sender: TObject);
begin
  inherited;
   VerificaFormaLancamentoDiferencaMenor;
end;

procedure TFPadraoBaixaContas.cbBaixaValorPagoClick(Sender: TObject);
begin
  inherited;
   VerificaFormaLancamentoDiferencaMenor;
end;

procedure TFPadraoBaixaContas.DBCartoesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key=VK_Return
   Then Begin
       If Not DMFINANC.TCartao.IsEmpty Then//'se cart�o n�o estiver vazio
           XCod_Cartao:=DMFINANC.TCartao.FieldByName('COD_CARTAO').AsInteger
       Else
           XCod_Cartao:=-1;

       PCartoes.Visible:=False;
       EDVALORPAGO.SetFocus;
   End;
   If Key = VK_ESCAPE
   Then Begin
       PCartoes.Visible:=False;
       EDVALORPAGO.SetFocus;
       XCod_Cartao := -1;
   End;
end;

end.
