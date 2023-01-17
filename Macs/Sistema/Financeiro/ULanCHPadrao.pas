unit ULanCHPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls, IBQuery, TFlatEditUnit,
  Buttons, jpeg, ExtCtrls, Menus, TFlatTabControlUnit, EditFloat, UFrmBusca,
  Mask, DBCtrls, DBColorEdit, ColorEditFloat, Spin, DrLabel, ColorMaskEdit;

  
VAR
	XTIPOLANC: STRING;
   //CHAVES PRIMÁRIAS
   XCODMOVBANCO: INTEGER;
   XCODLANCH: INTEGER;
   //CHAVES ESTRANGEIRAS
   XCODPLNCTA:INTEGER;
   XCODPLNCTASERV:INTEGER;   
   XCODBANCO:INTEGER;
   XCODCTACOR:INTEGER;
   XLISTAPARC:String;//armazaena os codigos dos registros que devem ser visualizados em multiplos lançamentos
   XESTADO: STRING;   

type
  TFLanCHPadrao = class(TFCadPadrao)
    PMNovo: TPopupMenu;
    Lanamentonico1: TMenuItem;
    LanamentoMltiplo1: TMenuItem;
    PLancmult: TPanel;
    PLanUnic: TPanel;
    Panel2: TPanel;
    TCConsultCH: TFlatTabControl;
    PVenc: TPanel;
    PMov: TPanel;
    PNMov: TPanel;
    DBGVENC: TDBGrid;
    DBGNMOV: TDBGrid;
    DBGMOV: TDBGrid;
    EDTotal: TFloatEdit;
    BitBtn1: TBitBtn;
    DBGParc: TDBGrid;
    FrmBusca1: TFrmBusca;
    Label7: TLabel;
    DBDTVENC: TDBColorEdit;
    Label9: TLabel;
    DBNUMCHEQUEEMIT: TDBColorEdit;
    Label1: TLabel;
    DBColorEdit3: TDBColorEdit;
    Label2: TLabel;
    DBColorEdit4: TDBColorEdit;
    RGMOVIMENTO: TRadioGroup;
    FrmBusca2: TFrmBusca;
    LTextoBusca: TLabel;
    EdHistorico: TFlatEdit;
    Label3: TLabel;
    EdVlrTotal: TColorEditFloat;
    Label4: TLabel;
    EdNumFolha: TSpinEdit;
    Label5: TLabel;
    EdIntervalo: TSpinEdit;
    Label6: TLabel;
    EdPrimeiroCH: TMaskEdit;
    PPesquisa: TPanel;
    GroupBox6: TGroupBox;
    EDNUMCHQ: TColorMaskEdit;
    GroupBox10: TGroupBox;
    EDLANC: TColorMaskEdit;
    GroupBox11: TGroupBox;
    EDVENC: TColorMaskEdit;
    GroupBox8: TGroupBox;
    EDHIST: TColorMaskEdit;
    EDMOV: TGroupBox;
    EdDtMov: TColorMaskEdit;
    PMREL: TPopupMenu;
    RelatriodeCheques1: TMenuItem;
    procedure BtnNovoClick(Sender: TObject);
    procedure Lanamentonico1Click(Sender: TObject);
    procedure TCConsultCHTabChanged(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure LanamentoMltiplo1Click(Sender: TObject);
    procedure FrmBusca1BTNOPENClick(Sender: TObject);
    procedure FrmBusca1BTNMINUSClick(Sender: TObject);
    procedure FrmBusca1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure DBDTVENCExit(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EDNUMCHQKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDNUMCHQKeyPress(Sender: TObject; var Key: Char);
    procedure EDLANCKeyPress(Sender: TObject; var Key: Char);
    procedure EDVENCKeyPress(Sender: TObject; var Key: Char);
    procedure EdDtMovKeyPress(Sender: TObject; var Key: Char);
    procedure EDHISTKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure RelatriodeCheques1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure SelectLanCH(Tipo:Integer; TipoCons: String);//Seleciona lançamentos de acordo com a aba do flat control
    Procedure SelectLanc(TipoCons: String);//Seleciona lançamentos de acordo com a aba do flat control
    Procedure FiltraLanMult;//Seleciona os lançamentos pertencentes a um determinado lançamento multiplo
    //PREOCEDURE UTILIZADA PARA GERAR AS PARCELAS DO LANÇAMENTO MULTIPLO
    Procedure GeraParcLM(XTIPO:String; XGPMVlrParc: Real; XGPMNParc:Integer; XGPMIntervDia: Integer; XGPMCodBanco: Integer; XGPMPrimCH: String; XGPMNAgencia: string; XGPMNConta: String; XGPMPortador: String; XGPMFone: String; XGPMHistorico: String; XGPMCodContaPln: Integer; XGPMNumPrimCh:String);
  end;

var
  FLanCHPadrao: TFLanCHPadrao;

implementation

uses Alxor32, UDMFinanc, UMenu, UDMConta, UDmBanco, AlxMessage, UConsPlncta,
  UDMCaixa, URelChequeEmit;

{$R *.DFM}

//PREOCEDURE UTILIZADA PARA GERAR AS PARCELAS DO LANÇAMENTO MULTIPLO
Procedure TFLanCHPadrao.GeraParcLM(XTIPO:String; XGPMVlrParc: Real; XGPMNParc:Integer; XGPMIntervDia: Integer; XGPMCodBanco: Integer; XGPMPrimCH: String; XGPMNAgencia: string; XGPMNConta: String; XGPMPortador: String; XGPMFone: String; XGPMHistorico: String; XGPMCodContaPln: Integer; XGPMNumPrimCh:String);
Var
	I:Integer;
   DataVenc: String;
Begin
	Try
   	XGPMVlrParc:=XGPMVlrParc/XGPMNParc;
   Except
       XGPMVlrParc:=0;
   End;

	//executa o lançamento determinado numero de vezes
   For I:=1 to XGPMNParc do
   Begin
       If I=1 Then
			DataVenc:=XGPMPrimCH
       Else
       	DataVenc:=DateToStr(StrToDate(DataVenc)+XGPMIntervDia);

  		//INSERE NOVO CAMPO EM MOV BANCO
   	XCODMOVBANCO:=InserReg(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO');

       If XTIPOLANC='ENTRADA'
       Then Begin
  			//INSERE NOVO CAMPO EM LANCHEQUEREC
   		XCODLANCH:=InserReg(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC');
   		DMBANCO.TMovBanco.FieldByName('TIPOOP').AsString:='ENTRADA';
       End
       Else Begin
   		DMBANCO.TMovBanco.FieldByName('TIPOOP').AsString:='SAIDA';
	   		DMBANCO.TMovBanco.FieldByName('COD_CTACOR').AsInteger:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').Asinteger;
   		//LOCALIZA CTA CORRENTE P/ ATULIZAR NUMERO DO CHEQUE
           If I=1
           Then Begin
				If filtraTabela(DMBANCO.TCtaCor, 'CTACOR', 'COD_CTACOR', '', ' COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByNAme('COD_CTACOR').AsString+#39)=True
   			Then Begin
					XGPMNumPrimCh:=DMBANCO.TCtaCor.FieldByName('PROXCHEQUE').AsString
   			End;
           End;
       End;

       //INFORMAÇÕES PARA MOVBANCO
   	DMBANCO.TMovBanco.FieldByName('COD_MOVBANCO').AsInteger:=XCODMOVBANCO;
   	DMBANCO.TMovBanco.FieldByName('DTLANC').AsString:=DateToStr(DATE());
   	DMBANCO.TMovBanco.FieldByName('HORALANC').AsString:=TimeToStr(TIME());
   	DMBANCO.TMovBanco.FieldByName('COBRANCA').AsString:='CHEQUE';
   	DMBANCO.TMovBanco.FieldByName('DTVENC').AsString:=DataVenc;
   	DMBANCO.TMovBanco.FieldByName('COD_PLNCTA').AsInteger:=XGPMCodContaPln;
   	DMBANCO.TMovBanco.FieldByName('HISTORICO').AsString:=XGPMHistorico;
   	DMBANCO.TMovBanco.FieldByName('COD_USUARIO').AsString:=FMenu.LCODUSUARIO.Caption;
   	DMBANCO.TMovBanco.FieldByName('COD_COTA').AsInteger:=-1;
   	DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency:=XGPMVlrParc;
  		DMBANCO.TMovBanco.FieldByName('NUMCHEQUE').AsString:=INCSTRNUM(I-1, XGPMNumPrimCh);
   	DMBANCO.TMovBanco.FieldByName('FECH').AsString:='N';
       If XTIPOLANC='SAIDA'
       Then Begin//Atualiza Nº do próximo cheque
       	DMBANCO.TCtaCor.Edit;
			DMBANCO.TCtaCor.FieldByName('PROXCHEQUE').AsString:=DMBANCO.TMovBanco.FieldByName('NUMCHEQUE').AsString;
   		DMBANCO.TCtaCor.Post;
   		DMBANCO.TCtaCor.ApplyUpdates;
       end;

       //INFORMAÇÕES PARA CHEQUEREC

       If XTIPOLANC='ENTRADA'
       Then Begin
       	DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsInteger:=XCODLANCH;
       	DMBANCO.TChequeRec.FieldByName('NUMAGENCIA').AsString:=XGPMNAgencia;
       	DMBANCO.TChequeRec.FieldByName('NUMCONTA').AsString:=XGPMNConta;
       	DMBANCO.TChequeRec.FieldByName('EMITENTE').AsString:=XGPMPortador;
       	DMBANCO.TChequeRec.FieldByName('CPFEMIT').AsString:=XGPMFone;
       	DMBANCO.TChequeRec.FieldByName('COD_BANCO').AsInteger:=XGPMCodBanco;
       	DMBANCO.TChequeRec.FieldByName('COD_MOVBANCO').AsInteger:=XCODMOVBANCO;
	        DMBANCO.TChequeRec.Post;
			DMBANCO.TChequeRec.ApplyUpdates;
       End;
		//GRAVA AS INFORMAÇÕES
       DMBANCO.TMovBanco.Post;
   End;

   //Descarregaas informações
   DMBANCO.TMovBanco.ApplyUpdates;
end;


Procedure TFLanCHPadrao.FiltraLanMult;//Seleciona os lançamentos pertencentes a um determinado lançamento multiplo
Begin
	//INSERE SQL PARA FILTRAR OS MOVIMENTOS DE ACORDO COM A LISTA PASSADA
   DMBANCO.TMovBanco.Close;
   DMBANCO.TMovBanco.SQL.Clear;
   DMBANCO.TMovBanco.SQL.Add('Select * from MOVBANCO Where MOVBANCO.COD_MOVBANCO IN (:LISTA)');
   DMBANCO.TMovBanco.ParamByName('LISTA').AsString:=XLISTAPARC;
   DMBANCO.TMovBanco.Open;
End;

//Seleciona lançamentos de acordo com a aba do flat control
Procedure TFLanCHPadrao.SelectLanc(TipoCons: String);
VAR
   XTabelaAux1, XTabelaAux2: TIBQuery;
Begin
   Try
		EDTotal.ValueNumeric:=0;
		If XTIPOLANC='S' Then Begin
           XTabelaAux1 := DMBANCO.WMovB;
           XTabelaAux2 := DMBANCO.TAlx;
       End
       Else Begin
           XTabelaAux1 := DMBANCO.WChequeRec;
           XTabelaAux2 := DMFINANC.TAlx;
       End;
       XTabelaAux1.Close;
       XTabelaAux1.SQL.Clear;


       XTabelaAux2.Close;
       XTabelaAux2.SQL.Clear;

       If XTIPOLANC='S'
       Then Begin
           XTabelaAux1.SQL.Add(' SELECT * FROM VWMOVBANCO WHERE (vwMOVBANCO.COD_CTACOR=:CODCTACOR)  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL))   AND ((COBRANCA='+#39+'CHEQUE'+#39+') or (COBRANCA='+#39+'T. CX CHQ'+#39+')) AND (TIPOOP='+#39+'SAIDA'+#39+') ');
           XTabelaAux1.ParamByName('CODCTACOR').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;

           XTabelaAux2.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL  FROM VWMOVBANCO WHERE (vwMOVBANCO.COD_CTACOR=:CODCTACOR)  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL))   AND (COBRANCA='+#39+'CHEQUE'+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+') ');
           XTabelaAux2.ParamByName('CODCTACOR').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;

           If TCConsultCH.ActiveTab=0
           Then Begin
               XTabelaAux1.SQL.Add(' AND (VWMOVBANCO.FECH='+#39+'N'+#39+') AND (VWMOVBANCO.DTVENC<=:DTVENC) ');
               XTabelaAux1.ParamByName('DTVENC').AsDate:=Date();
               XTabelaAux2.SQL.Add(' AND (VWMOVBANCO.FECH='+#39+'N'+#39+') AND (VWMOVBANCO.DTVENC<=:DTVENC) ');
               XTabelaAux2.ParamByName('DTVENC').AsDate:=Date();
           End;

           If TCConsultCH.ActiveTab=1
           Then Begin
               XTabelaAux1.SQL.Add(' AND (VWMOVBANCO.FECH='+#39+'S'+#39+')  ');
               XTabelaAux2.SQL.Add(' AND (VWMOVBANCO.FECH='+#39+'S'+#39+')  ');
           End;

           If TCConsultCH.ActiveTab=2
           Then Begin
               XTabelaAux1.SQL.Add(' AND ((VWMOVBANCO.FECH='+#39+'N'+#39+') OR (VWMOVBANCO.FECH IS NULL)) ');
               XTabelaAux2.SQL.Add(' AND ((VWMOVBANCO.FECH='+#39+'N'+#39+') OR (VWMOVBANCO.FECH IS NULL)) ');
           End;

           If TipoCons='NUMCHEQUE'
           Then Begin
                  	XTabelaAux1.SQL.Add(' AND (vwmovbanco.numcheque=:NUMCHEQUE)');
                   XTabelaAux1.ParamByName('NUMCHEQUE').AsString:=EDNUMCHQ.Text;
                  	XTabelaAux2.SQL.Add(' AND (vwmovbanco.numcheque=:NUMCHEQUE)');
                   XTabelaAux2.ParamByName('NUMCHEQUE').AsString:=EDNUMCHQ.Text;
           End;
           If TipoCons='ONUMCHEQUE'
           Then Begin
                  	XTabelaAux1.SQL.Add(' ORDER BY vwmovbanco.numcheque');
           End;

           If TipoCons='LANCAMENTO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' AND (vwmovbanco.dtlanc=:DTLANC)');
                   XTabelaAux1.ParamByName('DTLANC').AsString:=EDLANC.Text;
                  	XTabelaAux2.SQL.Add(' AND (vwmovbanco.dtlanc=:DTLANC)');
                   XTabelaAux2.ParamByName('DTLANC').AsString:=EDLANC.Text;
           End;
           If TipoCons='OLANCAMENTO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' ORDER BY vwmovbanco.dtlanc');
           End;
           If TipoCons='VENCIMENTO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' AND (vwmovbanco.dtvenc=:DTVENC)');
                   XTabelaAux1.ParamByName('DTVENC').AsString:=EDVENC.Text;
                  	XTabelaAux2.SQL.Add(' AND (vwmovbanco.dtvenc=:DTVENC)');
                   XTabelaAux2.ParamByName('DTVENC').AsString:=EDVENC.Text;
           End;
           If TipoCons='OVENCIMENTO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' ORDER BY vwmovbanco.dtvenc');
           End;

           If TipoCons='MOVIMENTO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' AND (vwmovbanco.dtmov=:DTMOV)');
                   XTabelaAux1.ParamByName('DTMOV').AsString:=EdDtMov.Text;
                  	XTabelaAux2.SQL.Add(' AND (vwmovbanco.dtmov=:DTMOV)');
                   XTabelaAux2.ParamByName('DTMOV').AsString:=EdDtMov.Text;
           End;
           If TipoCons='OMOVIMENTO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' ORDER by vwmovbanco.dtmov ');
           End;

           If TipoCons='HISTORICO'            {(upper('+XCampo+') like upper('+#39+EdNome.Text+'%'+#39+'))}
           Then Begin
              	XTabelaAux1.SQL.Add(' AND (upper(vwmovbanco.historico) like upper('+#39+EdHist.Text+'%'+#39+'))');
              	XTabelaAux2.SQL.Add(' AND (upper(vwmovbanco.historico) like upper('+#39+EdHist.Text+'%'+#39+'))');
//                  	XTabelaAux1.SQL.Add(' AND (upper(vwmovbanco.historico) like upper('+#39+EdHistorico.Text+'%'+#39+'))');
//                  	XTabelaAux2.SQL.Add(' AND (upper(vwmovbanco.historico) like upper('+#39+EdHistorico.Text+'%'+#39+'))');
           End;
           If TipoCons='OHISTORICO'
           Then Begin
           	XTabelaAux1.SQL.Add(' ORDER BY vwmovbanco.historico');
           End;

           If TipoCons='EMITENTE'
           Then Begin
               XTabelaAux1.SQL.Add(' AND (upper(vwmovbanco.emitente');
           End;

           XTabelaAux1.SQL.Text;
           XTabelaAux2.SQL.Text;

           XTabelaAux1.Open;
           XTabelaAux2.Open;

           EDTotal.ValueNumeric:=XTabelaAux2.FieldByName('TOTAL').AsCurrency;
       End
       Else Begin
           XTabelaAux1.SQL.Add(' SELECT * FROM VWCHEQUEREC ');
           XTabelaAux2.SQL.Add(' SELECT SUM(VWCHEQUEREC.VALOR) AS TOTAL FROM VWCHEQUEREC ');

           If TCConsultCH.ActiveTab=0
           Then Begin
               XTabelaAux1.SQL.Add('  WHERE (VWCHEQUEREC.DTVENC<=:DTVENC) AND ((FECH<>'+#39+'S'+#39+') OR (FECH IS NULL)) ');
               XTabelaAux1.ParamByName('DTVENC').AsDate:=Date();
               XTabelaAux2.SQL.Add('  WHERE (VWCHEQUEREC.DTVENC<=:DTVENC) AND ((FECH<>'+#39+'S'+#39+') OR (FECH IS NULL)) ');
               XTabelaAux2.ParamByName('DTVENC').AsDate:=Date();
           End;

           If TCConsultCH.ActiveTab=1
           Then Begin
               XTabelaAux1.SQL.Add('  WHERE  (FECH='+#39+'S'+#39+') ');
               XTabelaAux2.SQL.Add('  WHERE  (FECH='+#39+'S'+#39+') ');
           End;

           If TCConsultCH.ActiveTab=2
           Then Begin
               XTabelaAux1.SQL.Add(' WHERE (FECH<>'+#39+'S'+#39+') ');
               XTabelaAux2.SQL.Add(' WHERE (FECH<>'+#39+'S'+#39+') ');
           End;

           If TipoCons='NUMCHEQUE'
           Then Begin
                  	XTabelaAux1.SQL.Add(' AND (vwchequerec.numcheque=:NUMCHEQUE)');
                   XTabelaAux1.ParamByName('NUMCHEQUE').AsString:=EDNUMCHQ.Text;
                  	XTabelaAux2.SQL.Add(' AND (vwchequerec.numcheque=:NUMCHEQUE)');
                   XTabelaAux2.ParamByName('NUMCHEQUE').AsString:=EDNUMCHQ.Text;
           End;
           If TipoCons='ONUMCHEQUE'
           Then Begin
                  	XTabelaAux1.SQL.Add(' ORDER BY vwchequerec.numcheque');
           End;

           If TipoCons='LANCAMENTO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' AND (vwchequerec.dtlanc=:DTLANC)');
                   XTabelaAux1.ParamByName('DTLANC').AsString:=EDLANC.Text;
                  	XTabelaAux2.SQL.Add(' AND (vwchequerec.dtlanc=:DTLANC)');
                   XTabelaAux2.ParamByName('DTLANC').AsString:=EDLANC.Text;
           End;
           If TipoCons='OLANCAMENTO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' ORDER BY vwchequerec.dtlanc');
           End;

           If TipoCons='VENCIMENTO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' AND (vwchequerec.dtvenc=:DTVENC)');
                   XTabelaAux1.ParamByName('DTVENC').AsString:=EDVENC.Text;
                  	XTabelaAux2.SQL.Add(' AND (vwchequerec.dtvenc=:DTVENC)');
                   XTabelaAux2.ParamByName('DTVENC').AsString:=EDVENC.Text;
           End;
           If TipoCons='OVENCIMENTO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' ORDER BY vwchequerec.dtvenc ');
           End;

           If TipoCons='MOVIMENTO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' AND (vwchequerec.dtmov=:DTMOV)');
                   XTabelaAux1.ParamByName('DTMOV').AsString:=EdDtMov.Text;
                  	XTabelaAux2.SQL.Add(' AND (vwchequerec.dtmov=:DTMOV)');
                   XTabelaAux2.ParamByName('DTMOV').AsString:=EdDtMov.Text;
           End;
           If TipoCons='OMOVIMENTO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' ORDER BY vwchequerec.dtmov ');
           End;
           If TipoCons='HISTORICO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' AND ((upper(vwchequerec.historico) like upper('+#39+EdHist.Text+'%'+#39+')))');
                  	XTabelaAux2.SQL.Add(' AND ((upper(vwchequerec.historico) like upper('+#39+EdHist.Text+'%'+#39+')))');
           End;
           If TipoCons='OHISTORICO'
           Then Begin
                  	XTabelaAux1.SQL.Add(' Order By vwchequerec.historico');
           End;

           XTabelaAux1.SQL.Text;
           XTabelaAux2.SQL.Text;

           XTabelaAux1.Open;
           XTabelaAux2.Open;

           EDTotal.ValueNumeric:=XTabelaAux2.FieldByName('TOTAL').AsCurrency;
       End;
   Except
   End

End;

//Seleciona lançamentos de acordo com a aba do flat control
Procedure TFLanCHPadrao.SelectLanCH(Tipo:Integer; TipoCons: String);
Begin
	Try
		EDTotal.ValueNumeric:=0;
		If XTIPOLANC='S'
       Then Begin

       End
       Else Begin
       	//CONTROLE PARA CHEQUES RECEBIDOS
			If Tipo=0
        	Then Begin
           	//DEVE SER FILTRADOS APENAS OS CHEQUES VENCIDOS E NÃO MOVIMENTADOS
			 	//TOTALIZA CHEQUES
            	DMFINANC.TAlx.Close;
            	DMFINANC.TAlx.SQL.Clear;
            	DMFINANC.TAlx.SQL.Add('SELECT SUM(VWCHEQUEREC.VALOR) AS TOTAL FROM VWCHEQUEREC WHERE (VWCHEQUEREC.DTVENC<=:DTVENC) AND ((FECH<>'+#39+'S'+#39+') OR (FECH IS NULL))');
				DMFINANC.TAlx.ParamByName('DTVENC').AsString:=DateToStr(Date());
			 	DMFINANC.TAlx.Open;
          		EDTotal.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
            	DMBANCO.WChequeRec.Close;
            	DMBANCO.WChequeRec.SQL.Clear;
            	DMBANCO.WChequeRec.SQL.Add('SELECT * FROM VWCHEQUEREC WHERE (VWCHEQUEREC.DTVENC<=:DTVENC) AND ((FECH<>'+#39+'S'+#39+') OR (FECH IS NULL))');
            	DMBANCO.WChequeRec.ParamByName('DTVENC').AsString:=DateToStr(Date());
            	DMBANCO.WChequeRec.Open;
        	End;
        	If Tipo=1
        	Then Begin
           	//FILTRA CHEQUES MOVIMENTADOS
			 	//TOTALIZA CHEQUES
            	DMFINANC.TAlx.Close;
            	DMFINANC.TAlx.SQL.Clear;
            	DMFINANC.TAlx.SQL.Add('SELECT SUM(VWCHEQUEREC.VALOR) AS TOTAL FROM VWCHEQUEREC WHERE (FECH='+#39+'S'+#39+')');
			 	DMFINANC.TAlx.Open;
          		EDTotal.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
	            FiltraTabela(DMBANCO.WChequeRec, 'VWCHEQUEREC', 'COD_LOJA', '', ' (FECH='+#39+'S'+#39+') ORDER BY VWCHEQUEREC.COD_CHEQUEREC');
        	End;
        	If Tipo=2
        	Then Begin
           	//FILTRA CHEQUES NÃO MOVIMENTADOS
			 	//TOTALIZA CHEQUES
            	DMFINANC.TAlx.Close;
            	DMFINANC.TAlx.SQL.Clear;
            	DMFINANC.TAlx.SQL.Add('SELECT SUM(VWCHEQUEREC.VALOR) AS TOTAL FROM VWCHEQUEREC WHERE (FECH<>'+#39+'S'+#39+')');
			 	DMFINANC.TAlx.Open;
          		EDTotal.ValueNumeric:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
               FiltraTabela(DMBANCO.WChequeRec, 'VWCHEQUEREC', 'COD_LOJA', '', ' (FECH<>'+#39+'S'+#39+') ORDER BY VWCHEQUEREC.COD_CHEQUEREC');
        	End;
       End;
   except

   End;
End;

procedure TFLanCHPadrao.BtnNovoClick(Sender: TObject);
begin
//  inherited;
	PMNovo.Popup(Left+PConsulta.left+Painel.left+BtnNovo.Left, top+PConsulta.Top+Painel.top+BtnNovo.Top+BtnNovo.Height);
end;

procedure TFLanCHPadrao.Lanamentonico1Click(Sender: TObject);
begin
  inherited;
  	 PConsulta.Visible:=False;
    PLancMult.Visible:=False;
    PCadastro.Visible:=True;
    PCadastro.BringToFront;
    PLanUnic.Visible:=True;
    PLanUnic.BringToFront;
    FrmBusca1.EDCodigo.SetFocus;
    XESTADO:='INSERT';
end;

procedure TFLanCHPadrao.TCConsultCHTabChanged(Sender: TObject);
begin
  inherited;
    PVenc.Visible:=False;
    PNMov.Visible:=False;
    PMov.Visible:=False;
    case TCConsultCH.ActiveTab Of
        0: Begin//INDIVIDUAIS
            PVenc.Visible:=true;
            PVenc.BringToFront;
            SelectLanc('');
           End;
        1: Begin//AGRUPADOS
            PMov.Visible:=true;
            PMov.BringToFront;
            SelectLanc('');
           End;
        2: Begin//BAIXADOS
            PNMov.Visible:=true;
            PNMov.BringToFront;
            SelectLanc('');
           End;
    End;                   
end;

procedure TFLanCHPadrao.BtnGravarClick(Sender: TObject);
begin
  inherited;
//  	TCConsultCH.OnTabChanged(sender);
   XESTADO:='';
end;

procedure TFLanCHPadrao.BtnCancelarClick(Sender: TObject);
begin
  inherited;
//   XTabela.Cancel;
//   XTabela.ApplyUpdates;
//   XTransaction.RollbackRetaining;
   TCConsultCH.OnTabChanged(sender);
end;

procedure TFLanCHPadrao.BtnApagarClick(Sender: TObject);
begin
//  inherited;
	//EFETUA CONTROLE DE ACESSO
   {If ControlAccess('PRODUTOS')=False Then
  		Exit;}
	If XView.IsEmpty
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Não existem lançamentos para serem apagados!', '', 1, 1, False, 'i');
		Exit;
   End;

	If XView.FieldByName('FECH').AsString='S'
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'Este lançamento já foi movimentado. Por este motivo não pode ser apagado', '', 1, 1, False, 'i');
		Exit;       
   End;

  	If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente apagar o lançamento do cheque '+#13+ XView.FieldByName(XCampo).AsString+ '?' , '', 2, 3, False, 'c')= 2
   Then Begin
   	If XTIPOLANC='S'
       Then Begin
       	//TRABALHA COM CHEQUES EMITIDOS PELA EMPRESA
   		//Filtra a tabela de movimento bancario a fim de encontrar o registro
       	If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', '', ' COD_MOVBANCO = '+#39+DMBANCO.WMovB.FieldByName('COD_MOVBANCO').AsString+#39)
       	Then Begin
       		Try
           		DMBANCO.TMovBanco.Delete;
           		DMBANCO.TMovBanco.ApplyUpdates;
           		DMBANCO.IBT.CommitRetaining;
                   TCConsultCHTabChanged(SENDER);
           	Except
               	DMBANCO.IBT.RollbackRetaining;
           	End;
       	End;
       End
       Else Begin
       	//TRABALHA COM CHEQUES RECEBIDOS PELA EMPRESA
 			//Localiza o lançamento em tabelas
   		If FiltraTabela(DMBANCO.TChequeRec, 'CHEQUEREC', 'COD_CHEQUEREC', DMBANCO.WChequeRec.FieldByName('COD_CHEQUEREC').AsString, '')=True
   		Then Begin
   			If FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_MOVBANCO', DMBANCO.TChequeRec.FieldByName('COD_MOVBANCO').AsString, '')=True
   			Then Begin
               	//LOCALIZA O LANÇAMENTO DO CHEQUE EM CAIXA
		           	If FiltraTabela(DMCAIXA.TLanCaixa, 'LANCAIXA', 'COD_LANCAIXA', '', ' (TIPOGERADOR='+#39+'LCHR'+#39+') AND (COD_GERADOR='+DMBANCO.TChequeRec.FieldByName('COD_CHEQUEREC').AsString+')')=True
       	        Then Begin//encontrado referencia em lançamento de caixa
						//Filtra abertura de caixa para verificar se caixa ainda está aberto
           			If FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_ABCAIXA', DMCAIXA.TLanCaixa.FieldByName('COD_ABCAIXA').AsString, '')=True
               		Then Begin//encontrado referencia em Abcaixa
		                   	If DMCAIXA.TAbCaixa.FieldByName('FECHADO').AsString='S'
       	                Then Begin//se caixa já estiver fechado deve ser realizado um lançamento de correção e não simplesmente apagar
           	                Mensagem('A T E N Ç Ã O !', 'Esta operação não é permitida!'+#13+'Caixa Fechado', '', 1, 1, False, 'A');
               	            EXIT;
                   	    End
                       	Else Begin
					    		//APAGAR LANÇAMENTOS EM CAIXA
   	                		DMCAIXA.TLanCaixa.First;
       	            		While Not DMCAIXA.TLanCaixa.Eof do
           	        		Begin
									DMCAIXA.TLanCaixa.Delete;
                   				DMCAIXA.TLanCaixa.ApplyUpdates;
                   			End;
	                       End;
   	                End;
       	        End;

   	    		DMBANCO.TChequeRec.Delete;
               	DMBANCO.TMovBanco.Delete;
           		DMBANCO.TMovBanco.ApplyUpdates;
               	DMBANCO.TChequeRec.ApplyUpdates;
               	DMBANCO.IBT.CommitRetaining;
               	TCConsultCH.OnTabChanged(Sender);
               End;
           End;
       End;
    End;
end;

procedure TFLanCHPadrao.LanamentoMltiplo1Click(Sender: TObject);
begin
  inherited;
   PConsulta.Visible:=False;
   PLanUnic.Visible:=False;
   PCadastro.Visible:=True;
   PCadastro.BringToFront;
	PLancMult.Visible:=True;
   PLancMult.BringToFront;
   XLISTAPARC:='';
   FiltraLanMult;
   XLiberaDados:='0';
   FrmBusca2.EDCodigo.SetFocus;
   XESTADO:='INSERT';   
end;

procedure TFLanCHPadrao.FrmBusca1BTNOPENClick(Sender: TObject);
Var
	Oper: Char;
begin
  inherited;
   Oper:=' ';
   //verifica o tipo do operador para selecionar contas
   If XTIPOLANC='E'
   Then Begin
       Oper:='C';
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'C';
   End;
   If XTIPOLANC='S'
   Then Begin
       Oper:='D';
       // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
       XTIPO_CONTA := 'D';
   End;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XCODPLNCTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmBusca1.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmBusca1.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
      	FrmBusca2.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmBusca2.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
end;

procedure TFLanCHPadrao.FrmBusca1BTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCODPLNCTA:=0;
   FrmBusca1.EDCodigo.Text:='';
   FrmBusca1.EdDescricao.Text:='';
   FrmBusca2.EDCodigo.Text:='';
   FrmBusca2.EdDescricao.Text:='';
end;

procedure TFLanCHPadrao.FrmBusca1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
Var
	Oper:Char;
begin
  inherited;
	If Key = #13
   Then Begin
   	Oper:=' ';
   	//verifica o tipo do operador para selecionar contas
   	If XTIPOLANC='E' Then
       	Oper:='C';
   	If XTIPOLANC='S' Then
       	Oper:='D';
 		If FrmBusca1.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (NATUREZA = '+#39+Oper+#39+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmBusca1.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCODPLNCTA:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmBusca1.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmBusca1.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
		      	FrmBusca2.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmBusca2.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCODPLNCTA:=-1;
		      	FrmBusca1.EdDescricao.Text:='';
		      	FrmBusca1.EDCodigo.text:='';
		      	FrmBusca2.EdDescricao.Text:='';
		      	FrmBusca2.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XCODPLNCTA:=0;
	      	FrmBusca1.EdDescricao.Text:='';
	      	FrmBusca1.EDCodigo.text:='';
       End;
   End;
end;

procedure TFLanCHPadrao.DBDTVENCExit(Sender: TObject);
begin
  inherited;
   //Verifica se a data de vencimento é maior que a de hoje para já lançar como conta não movimentada no radio group
  	If DBDTVenc.Text<>'  /  /    '
   Then Begin
		If StrToDate(DBDTVenc.Text)<=Date() Then
	       RGMOVIMENTO.ItemIndex:=0
	    Else
	       RGMOVIMENTO.ItemIndex:=1;
   End;   
end;

procedure TFLanCHPadrao.BtnConsultarClick(Sender: TObject);
begin
//  inherited;
	XESTADO:='EDIT';
end;

procedure TFLanCHPadrao.EDNUMCHQKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
{    If Key=VK_Down Then
        XView.Next;
    If Key=VK_Up Then
        XView.Prior;}
end;

procedure TFLanCHPadrao.EDNUMCHQKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
	   SelectLanc('NUMCHEQUE');
    End;
    If Key=#27 Then
	   SelectLanc('ONUMCHEQUE');
end;

procedure TFLanCHPadrao.EDLANCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
	   SelectLanc('LANCAMENTO');
    End;
    If Key=#27 Then
	   SelectLanc('OLANCAMENTO');
end;

procedure TFLanCHPadrao.EDVENCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
	   SelectLanc('VENCIMENTO');
    End;
    If Key=#27 Then
	   SelectLanc('OVENCIMENTO');
end;

procedure TFLanCHPadrao.EdDtMovKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
	   SelectLanc('MOVIMENTO');
    End;
    If Key=#27 Then
	   SelectLanc('OMOVIMENTO');
end;

procedure TFLanCHPadrao.EDHISTKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    If key=#13
    Then Begin
	   SelectLanc('HISTORICO');
    End;
    If Key=#27 Then
	   SelectLanc('OHISTORICO');
end;

procedure TFLanCHPadrao.FormShow(Sender: TObject);
begin
  inherited;
   TCConsultCH.OnTabChanged(sender);
   XESTADO:='';
end;

procedure TFLanCHPadrao.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
    PMREL.Popup((BtnRelatorio.Left+160)+BtnRelatorio.Width+120, BtnRelatorio.Top+267);
end;

procedure TFLanCHPadrao.RelatriodeCheques1Click(Sender: TObject);
begin
  inherited;
    //EFETUA CONTROLE DE ACESSO
   If ControlAccess('RBANCO', 'M')=False Then
  		Exit;
   FMenu.TIPOREL:='RELCHEQUES';
   AbrirForm(TFRelChequeEmit, FRelChequeEmit, 0);
end;

END.
