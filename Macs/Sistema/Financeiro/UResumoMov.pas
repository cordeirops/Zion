unit UResumoMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRodaPe, Buttons, DrLabel, jpeg, ExtCtrls, StdCtrls, Mask,
  ColorMaskEdit, ComCtrls, Grids, DBGrids;

type
  TFResumoMov = class(TFPadraoRodaPe)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Shape1: TShape;
    LMov1: TDRLabel;
    Shape4: TShape;
    LMov2: TDRLabel;
    EdDt1: TColorMaskEdit;
    Shape5: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Label19: TLabel;
    Shape2: TShape;
    Label1: TLabel;
    LVGeral: TLabel;
    Label2: TLabel;
    LVMercadoria: TLabel;
    Label3: TLabel;
    LVendMercVista: TLabel;
    Label4: TLabel;
    LVMercPrazo: TLabel;
    Label5: TLabel;
    LVServico: TLabel;
    Label6: TLabel;
    LVServVista: TLabel;
    Label7: TLabel;
    LVServPrazo: TLabel;
    Shape11: TShape;
    Label8: TLabel;
    LCMercadoria: TLabel;
    Label9: TLabel;
    LCMercVista: TLabel;
    Label10: TLabel;
    LCMercPrazo: TLabel;
    Shape12: TShape;
    Label11: TLabel;
    LCtaRec: TLabel;
    Label12: TLabel;
    LCtaRecArec: TLabel;
    Label13: TLabel;
    LCtaRecrec: TLabel;
    Label14: TLabel;
    LCtaPag: TLabel;
    Label15: TLabel;
    LCtaPagApag: TLabel;
    Label16: TLabel;
    LCtaPagpag: TLabel;
    Label17: TLabel;
    LSaldoCta: TLabel;
    Shape13: TShape;
    Label18: TLabel;
    LSaldoCXGeral: TLabel;
    LSaldoCXDia: TLabel;
    LMVGeral: TLabel;
    LMVMercadoria: TLabel;
    LMVendMercVista: TLabel;
    LMVMercPrazo: TLabel;
    LMVServico: TLabel;
    LMVServVista: TLabel;
    LMVServPrazo: TLabel;
    LMCMercadoria: TLabel;
    LMCMercVista: TLabel;
    LMCMercPrazo: TLabel;
    LMCtaRec: TLabel;
    LMCtaRecArec: TLabel;
    LMCtaRecrec: TLabel;
    LMCtaPag: TLabel;
    LMCtaPagApag: TLabel;
    LMCtaPagpag: TLabel;
    LMSaldoCta: TLabel;
    EdDt2: TColorMaskEdit;
    Shape3: TShape;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Shape14: TShape;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Shape10: TShape;
    Shape15: TShape;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Shape16: TShape;
    Shape7: TShape;
    Shape6: TShape;
    Shape17: TShape;
    REBanco: TRichEdit;
    Label56: TLabel;
    ReEstoque: TRichEdit;
    Label20: TLabel;
    Shape18: TShape;
    Panel1: TPanel;
    Label22: TLabel;
    LSaldocomValordeCusto: TLabel;
    LSaldocomValordeCompra: TLabel;
    Label21: TLabel;
    DBReceber: TDBGrid;
    DBPagar: TDBGrid;
    Label23: TLabel;
    Shape19: TShape;
    edData1: TColorMaskEdit;
    edData2: TColorMaskEdit;
    DRLabel1: TDRLabel;
    lbVencimentos: TDRLabel;
    Shape20: TShape;
    Label24: TLabel;
    lbTotalRec: TLabel;
    lbTotPagar: TLabel;
    procedure FormShow(Sender: TObject);
    procedure EdDt1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure edData2KeyPress(Sender: TObject; var Key: Char);
    procedure DBReceberDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBPagarDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
	 //Gera resumo da movimentações
	 Function GeraResumo(DT1, DT2: TDateTime; Tipo:Integer): Boolean;
    //Gera resumo da Estoque
    Function GeraResumoEstoque: Boolean;
	 //Gera saldo dos bancos
	 Procedure ImpSaldoCtaCor(DT1: TDateTime; DT2: TDateTime);
	 //Seleciona movimentoscom o tipo
	 Function selectmov(DT1, DT2: TDateTime; Tipo:Integer): Boolean;
	 //Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em cx
	 Function ResultCaixa(DT1, DT2: TDateTime; XCod_ContaCX: Integer): Real;
	 //Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Banco
	 Function ResultBanco(DT1, DT2: TDateTime; XCod_ContaBC: Integer):Real;
	 //Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Ctas Receber
	 Function ResultCtaReceber(DT1, DT2: TDateTime; XCod_ContaCR: Integer):Real;
	 //Retorna Valores em Debitos de Ctas a pagar
	 Function ResultCP(DT1, DT2: TDateTime; XCod_ContaCP: Integer):Real;
	 Function CurrText: TTextAttributes;
    //Paulo 28/11/2011: Busca as conta que estão vencendo e que já estão vencidas
    procedure SelecionaContasVenc();  

  end;
var
  FResumoMov: TFResumoMov;
  XtotMovCta: Real;
  XTOT_E, XTOT_S: Real;
  XCREDITOS, XDEBITOS, XCREDPREV, XDEBPREV:Real;
  XSALDOTOTALCUSTO, XSALDOTOTALCOMPRA: REAL;


implementation

uses Alxor32, UDMFinanc, UMenu, UDMCaixa, AlxMessage, UDmBanco, UDMConta,
  UDMMacs, UDMEstoque, DB;

{$R *.dfm}

function TFResumoMov.CurrText: TTextAttributes;
begin
  if REBanco.SelLength > 0 then
  	Result := REBanco.SelAttributes
  else
  	Result := REBanco.DefAttributes;
end;
//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em cx
Function TFResumoMov.ResultCaixa(DT1, DT2: TDateTime; XCod_ContaCX: Integer): Real;
Begin
   If DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsString='204' Then
      XCREDITOS:=0;   
   XCREDITOS:=0;
   XDEBITOS:=0;
   XCREDPREV:=0;
   XDEBPREV:=0;
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(lancaixa.valor) AS VALOR from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.tipcai='+#39+'E'+#39+')   AND (lancaixa.ESTRU='+#39+'1'+#39+')');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
	DMCONTA.TAlx.SQL.Add(' AND ((lancaixa.DTREFER>=:DT1) And (lancaixa.DTREFER<=:DT2)) ');
	DMCONTA.TAlx.ParamByName('DT1').AsDate:=DT1;
	DMCONTA.TAlx.ParamByName('DT2').AsDate:=DT2;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
       XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
   Else
       XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(lancaixa.valor) AS VALOR from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.tipcai='+#39+'S'+#39+')   AND (lancaixa.ESTRU='+#39+'1'+#39+')');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
	DMCONTA.TAlx.SQL.Add(' AND ((lancaixa.DTREFER>=:DT1) And (lancaixa.DTREFER<=:DT2)) ');
	DMCONTA.TAlx.ParamByName('DT1').AsDate:=DT1;
	DMCONTA.TAlx.ParamByName('DT2').AsDate:=DT2;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
       XCREDITOS:=XCREDITOS-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
   Else
       XCREDITOS:=XCREDITOS+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(lancaixa.valor) AS VALOR from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA)   AND (lancaixa.ESTRU='+#39+'1'+#39+')');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
	DMCONTA.TAlx.SQL.Add(' AND ((lancaixa.dtrefer>=:DT1) And (lancaixa.dtrefer<=:DT2)) ');
	DMCONTA.TAlx.ParamByName('DT1').AsDate:=DT1;
	DMCONTA.TAlx.ParamByName('DT2').AsDate:=DT2;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   Result:=XCREDITOS;
End;

//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Banco
Function TFResumoMov.ResultBanco(DT1, DT2: TDateTime; XCod_ContaBC: Integer):Real;
Begin
   XCREDITOS:=0;
   XDEBITOS:=0;
   XCREDPREV:=0;
   XDEBPREV:=0;
   //////////////////////////////////////
   //PROCESSO PARA REGIME DE COMPETENCIA
   /////////////////////////////////////
   //REALIZADO SOMENTE PARA ENTRADAS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA) AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+')  AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+') or (movbanco.cod_ctacor is not Null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
   DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
   DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTLANC>=:DT1) And (movbanco.DTLANC<=:DT2))');
	DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=DT1;
	DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=DT2;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
   Else
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);

   //REALIZADO SOMENTE PARA SAIDAS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA) AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+')  AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.cod_ctacor is not Null)) AND (movbanco.ESTRU='+#39+'1'+#39+') ');
   DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
	DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTLANC>=:DT1) And (movbanco.DTLANC<=:DT2))');
	DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=DT1;
	DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=DT2;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=XCREDPREV-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
   Else
           XCREDPREV:=XCREDPREV+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;

   //EFETUA SQL PARA PREVISTOS DE ENTRADA
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech<>'+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+')  AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+') or (movbanco.cod_ctacor is not Null))  AND (movbanco.ESTRU='+#39+'1'+#39+') ');
   DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
	DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTLANC>=:DT1) And (movbanco.DTLANC<=:DT2)) ');
	DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=DT1;
	DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=DT2;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
   Else
           XCREDPREV:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);

   //EFETUA SQL PARA PREVISTOS DE SAIDA
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech<>'+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+')  AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+') or (movbanco.cod_ctacor is not Null))  AND (movbanco.ESTRU='+#39+'1'+#39+') ');
   DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
	DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTLANC>=:DT1) And (movbanco.DTLANC<=:DT2)) ');
	DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=DT1;
	DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=DT2;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=XCREDPREV-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
   Else
           XCREDPREV:=XCREDPREV+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
   Result:=XCREDITOS;
End;

//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Ctas Receber
Function TFResumoMov.ResultCtaReceber(DT1, DT2: TDateTime; XCod_ContaCR: Integer):Real;
Begin
	//EFETUA SQL PARA CREDITOS NA CONTA COD_PLNCTA PARA PRODUTOS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('Select Sum(parcelacr.valorprod) AS VALOR from parcelacr ');
   DMCONTA.TAlx.SQL.Add('   left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber Where (CtaReceber.cod_plncta=:COD_CONTA) AND (parcelacr.fech<>'+#39+'S'+#39+')');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCR;
	DMCONTA.TAlx.SQL.Add(' AND ((parcelacr.dtref>=:DT1) And (parcelacr.dtref<=:DT2)) ');
	DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=DT1;
	DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=DT2;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   Result:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
	//EFETUA SQL PARA CREDITOS NA CONTA COD_PLNCTASERV PARA SERVIÇOS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('Select Sum(parcelacr.valorServ) AS VALOR from parcelacr ');
   DMCONTA.TAlx.SQL.Add('   left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber Where (CtaReceber.cod_plnctaServ=:COD_CONTA) AND (parcelacr.fech<>'+#39+'S'+#39+')');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCR;
	DMCONTA.TAlx.SQL.Add(' AND ((parcelacr.dtref>=:DT1) And (parcelacr.dtref<=:DT2)) ');
	DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=DT1;
	DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=DT2;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   Result:=Result+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
End;
//Retorna Valores em Debitos de Ctas a pagar
Function TFResumoMov.ResultCP(DT1, DT2: TDateTime; XCod_ContaCP: Integer):Real;
Begin
	//EFETUA SQL PARA DEBITOS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(vwparcp.valor) AS VALOR from vwparcp Where (vwparcp.cod_plncta=:COD_CONTA)  AND (vwparcP.fech<>'+#39+'S'+#39+')');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCP;
	DMCONTA.TAlx.SQL.Add(' AND ((vwparcp.dtrefer>=:DT1) And (vwparcp.dtrefer<=:DT2)) ');
	DMCONTA.TAlx.ParamByName('DT1').AsDate:=DT1;
	DMCONTA.TAlx.ParamByName('DT2').AsDate:=DT2;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   Result:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
End;

//Seleciona movimentoscom o tipo
Function TFResumoMov.selectmov(DT1, DT2: TDateTime; Tipo:Integer): Boolean;
Begin
    Try
        XtotMovCta:=0;
        //Soma Todas as Contas a ENTRAR
        If Tipo=0
        Then Begin
				 //TOTALIZA MOVIMENTOS DE ENTRADA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
	             DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'ENTRADA'+#39+') AND (FECH='+#39+'N'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
  			 	 DMBANCO.TAlx.SQL.Add('  AND ((vwmovbanco.dtvenc>=:DATA1) And (VWmovbanco.dtvenc<=:DATA2)) ');
  				 DMBANCO.TAlx.ParamByName('DATA1').AsDateTime:=DT1;
  				 DMBANCO.TAlx.ParamByName('DATA2').AsDateTime:=DT2;
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_E:=0
	             Else
	             	XTOT_E:=DMBANCO.TAlx.FieldByName('TOTAL').Value;
				 XtotMovCta:=XTOT_E;
        End;
        //Soma Todas as Contas A SAIR
        If Tipo=1
        Then Begin
				 //TOTALIZA MOVIMENTOS DE SAIDA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
	             DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+') AND (FECH='+#39+'N'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
   			 DMBANCO.TAlx.SQL.Add('  AND ((vwmovbanco.dtvenc>=:DATA1) And (VWmovbanco.dtvenc<=:DATA2))');
  				 DMBANCO.TAlx.ParamByName('DATA1').AsDateTime:=DT1;
  				 DMBANCO.TAlx.ParamByName('DATA2').AsDateTime:=DT2;
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_S:=0
	             Else
	             	XTOT_S:=DMBANCO.TAlx.FieldByName('TOTAL').Value;
		         XtotMovCta:=XTOT_S;
        End;
        If Tipo=2
        Then Begin
	         XtotMovCta:=DMBANCO.WCtaCor.FieldByNAme('Saldo').AsCurrency;
            If FiltraTabela(DMBANCO.WMovB, 'VWMOVBANCO', 'COD_MOVBANCO', '', ' (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (FECH='+#39+'S'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) Order By VWMOVBANCO.COD_MOVBANCO DESC')
            Then Begin
				 //TOTALIZA MOVIMENTOS DE ENTRADA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
	             DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'ENTRADA'+#39+')   AND (FECH='+#39+'S'+#39+')   AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_E:=0
	             Else
	             	XTOT_E:=DMBANCO.TAlx.FieldByName('TOTAL').Value;

				 //TOTALIZA MOVIMENTOS DE SAIDA
	             DMBANCO.TAlx.Close;
	             DMBANCO.TAlx.SQL.Clear;
	             DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+')   AND (FECH='+#39+'S'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL)) ');
	 			 DMBANCO.TAlx.Open;
	             If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
	             	XTOT_S:=0
	             Else
	             	XTOT_S:=DMBANCO.TAlx.FieldByName('TOTAL').Value;
		         XtotMovCta:=(XTOT_E-XTOT_S)+DMBANCO.WCtaCor.FieldByNAme('Saldo').AsCurrency;
            End;
        End;
    except
    End;
End;

//Gera saldo dos bancos
Procedure TFResumoMov.ImpSaldoCtaCor(DT1: TDateTime; DT2: TDateTime);
Begin
	Try
      	If FiltraTabela(DMBANCO.WCtaCor, 'vwctacor', 'COD_CTACOR', '', ' (COD_CTACOR = '+#39+DMFINANC.TAlx.FieldByName('COD_CTACOR').AsString+#39+') ')
      	Then Begin
       	//busca o saldo da cta corrente
           DMBANCO.VerifAbBanco;
           //TOTALIZA MOVIMENTOS DE ENTRADA
           DMBANCO.TAlx.Close;
           DMBANCO.TAlx.SQL.Clear;
           DMBANCO.TAlx.SQL.Add(' SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'ENTRADA'+#39+')   AND (FECH='+#39+'S'+#39+')   AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL))  AND (COD_ABBANCO='+#39+FMenu.LABBANCO.Caption+#39+')');
           DMBANCO.TAlx.Open;
           If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
              XTOT_E:=0
           Else
              XTOT_E:=DMBANCO.TAlx.FieldByName('TOTAL').Value;

           //TOTALIZA MOVIMENTOS DE SAIDA
           DMBANCO.TAlx.Close;
           DMBANCO.TAlx.SQL.Clear;
           DMBANCO.TAlx.SQL.Add('SELECT SUM(VWMOVBANCO.VALOR) AS TOTAL FROM VWMOVBANCO WHERE (COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+') AND (TIPOOP='+#39+'SAIDA'+#39+')   AND (FECH='+#39+'S'+#39+')  AND ((VER<>'+#39+'1'+#39+') OR (VER IS NULL))  AND (COD_ABBANCO='+#39+FMenu.LABBANCO.Caption+#39+')');
           DMBANCO.TAlx.Open;
           If DMBANCO.TAlx.FieldByName('TOTAL').AsString='' Then
             XTOT_S:=0
           Else
             XTOT_S:=DMBANCO.TAlx.FieldByName('TOTAL').Value;

           REBanco.Lines.Add('  '+DMFINANC.TAlx.FieldByName('NUMCTACOR').AsString+': ' +DMFINANC.TAlx.FieldByName('DESCBANCO').AsString+' = R$ '+ FormatFloat('0.00', (XTOT_E-XTOT_S)+XSaldoCta));
			XSALDOTOTALCUSTO:=XSALDOTOTALCUSTO+((XTOT_E-XTOT_S)+XSaldoCta);
			XSALDOTOTALCOMPRA:=XSALDOTOTALCOMPRA+((XTOT_E-XTOT_S)+XSaldoCta);
      	End;
   Except
   End;
End;

//Gera resumo da Estoque
Function TFResumoMov.GeraResumoEstoque: Boolean;
Begin
	//Calcula valor em estoque
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.sql.Clear;
   DMESTOQUE.Alx.SQL.Add(' Select sum(estoque.estfisico*estoque.vlrunitcomp) as VLRCOMP, sum(estoque.estfisico*estoque.valcusto) as VLRCUSTO from vwsimilar ');
   DMESTOQUE.Alx.SQL.Add(' left join estoque on vwsimilar.cod_estoque = estoque.cod_estoque ');
	DMESTOQUE.Alx.Open;
   ReEstoque.Lines.Clear;
   ReEstoque.Lines.Add('Estoque pelo Valor de Compra: '+FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VLRCOMP').AsCurrency));
   ReEstoque.Lines.Add('Estoque pelo Valor de Custo Médido: '+FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('VLRCUSTO').AsCurrency));
   XSALDOTOTALCUSTO:=XSALDOTOTALCUSTO+DMESTOQUE.Alx.FieldByName('VLRCUSTO').AsCurrency;
   XSALDOTOTALCOMPRA:=XSALDOTOTALCOMPRA+DMESTOQUE.Alx.FieldByName('VLRCOMP').AsCurrency;
End;

//Gera resumo da movimentações
Function TFResumoMov.GeraResumo(DT1, DT2: TDateTime; Tipo:Integer): Boolean;
VAR
	XVALOR:Real;
   XPosition: Integer;
Begin
	/////////////////
   //PRODUTO A VISTA
   /////////////////
   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsString, '');
   //**CAIXA**
   XVALOR:=ResultCaixa(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger);
   //**BANCO**
   XVALOR:=xValor+ResultBanco(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger);
   //**CTAS RECEBER**
   XVALOR:=xValor+ResultCtaReceber(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger);
   //**CTAS PAGAR**
   XVALOR:=XValor+ResultCP(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_VENDVISTA').AsInteger);
   If Tipo=1 Then
   	LVendMercVista.Caption:=FormatFloat('0.00', XVALOR)
   Else
   	LMVendMercVista.Caption:=FormatFloat('0.00', XVALOR);

   /////////////////
   //PRODUTO A PRAZO
   /////////////////
   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsString, '');
   //**CAIXA**
   XVALOR:=ResultCaixa(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger);
   //**BANCO**
   XVALOR:=XValor+ResultBanco(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger);
   //**CTAS RECEBER**
   XVALOR:=XValor+ResultCtaReceber(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger);
   //**CTAS PAGAR**
   XVALOR:=XValor+ResultCP(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_VENDPRAZO').AsInteger);
   If Tipo=1 Then
   	LVMercPrazo.Caption:=FormatFloat('0.00', XVALOR)
   Else
   	LMVMercPrazo.Caption:=FormatFloat('0.00', XVALOR);

   //////////////////
   //SERVIÇOS A VISTA
   //////////////////
   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTASERV').AsString, '');
   //**CAIXA**
   XVALOR:=ResultCaixa(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger);
   //**BANCO**
   XVALOR:=XValor+ResultBanco(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger);
   //**CTAS RECEBER**
   XVALOR:=XValor+ResultCtaReceber(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger);
   //**CTAS PAGAR**
   XVALOR:=XValor+ResultCP(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTASERV').AsInteger);
   If Tipo=1 Then
   	LVServVista.Caption:=FormatFloat('0.00', XVALOR)
   Else
   	LMVServVista.Caption:=FormatFloat('0.00', XVALOR);

   //////////////////
   //SERVIÇOS A PRAZO
   //////////////////
   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsString, '');
   //**CAIXA**
   XVALOR:=ResultCaixa(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger);
   //**BANCO**
   XVALOR:=XValor+ResultBanco(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger);
   //**CTAS RECEBER**
   XVALOR:=XValor+ResultCtaReceber(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger);
   //**CTAS PAGAR**
   XVALOR:=XValor+ResultCP(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTASERVPRAZO').AsInteger);
   If Tipo=1 Then
   	LVServPrazo.Caption:=FormatFloat('0.00', XVALOR)
   Else
   	LMVServPrazo.Caption:=FormatFloat('0.00', XVALOR);

   //////////////////
   //COMPRAS A VISTA
   //////////////////
   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsString, '');
   //**CAIXA**
   XVALOR:=ResultCaixa(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger);
   //**BANCO**
   XVALOR:=XValor+ResultBanco(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger);
   //**CTAS RECEBER**
   XVALOR:=XValor+ResultCtaReceber(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger);
   //**CTAS PAGAR**
   XVALOR:=XValor+ResultCP(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_COMPVISTA').AsInteger);
   If Tipo=1 Then
   	LCMercVista.Caption:=FormatFloat('0.00', XVALOR)
   Else
   	LMCMercVista.Caption:=FormatFloat('0.00', XVALOR);

   //////////////////
   //COMPRAS A PRAZO
   //////////////////
   FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_PLNCTA', DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsString, '');
   //**CAIXA**
   XVALOR:=ResultCaixa(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger);
   //**BANCO**
   XVALOR:=XValor+ResultBanco(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger);
   //**CTAS RECEBER**
   XVALOR:=XValor+ResultCtaReceber(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger);
   //**CTAS PAGAR**
   XVALOR:=XValor+ResultCP(DT1, DT2, DMMACS.TLoja.FieldByName('PLNCTA_COMPPRAZO').AsInteger);
   If Tipo=1 Then
   	LCMercPrazo.Caption:=FormatFloat('0.00', XVALOR)
   Else
   	LMCMercPrazo.Caption:=FormatFloat('0.00', XVALOR);


	//CALCULA TOTAL P/ Ctas a Receber
	DMFINANC.TAlx.Close;
	DMFINANC.TAlx.SQL.Clear;
	DMFINANC.TAlx.SQL.Add(' Select Sum(vwparcr.VALOR) AS TOTAL From vwparcr ');
	DMFINANC.TAlx.SQL.Add(' Where (vwparcr.fech<>'+#39+'S'+#39+') ');
	DMFINANC.TAlx.SQL.Add(' AND ((vwparcr.dtvenc>=:DT1) AND (vwparcr.dtvenc<=:DT2))');
	DMFINANC.TAlx.SQL.Add(' AND (vwparcr.cod_loja=:COD_LOJA)');
	DMFINANC.TAlx.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
	DMFINANC.TAlx.ParamByName('DT1').AsDate:=DT1;
	DMFINANC.TAlx.ParamByName('DT2').AsDate:=DT2;
	DMFINANC.TAlx.Open;
   If Tipo=1 Then
   	LCtaRecArec.Caption:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency)
   Else
   	LMCtaRecArec.Caption:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency);

	//CALCULA TOTAL P/ Ctas recebidas
	DMFINANC.TAlx.Close;
	DMFINANC.TAlx.SQL.Clear;
	DMFINANC.TAlx.SQL.Add(' Select Sum(vwparcr.VALORPG) AS TOTAL From vwparcr ');
	DMFINANC.TAlx.SQL.Add(' Where (vwparcr.fech='+#39+'S'+#39+') ');
	DMFINANC.TAlx.SQL.Add(' AND ((vwparcr.dtdebito>=:DT1) AND (vwparcr.dtdebito<=:DT2))');
	DMFINANC.TAlx.SQL.Add(' AND (vwparcr.cod_loja=:COD_LOJA)');
	DMFINANC.TAlx.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
	DMFINANC.TAlx.ParamByName('DT1').AsDate:=DT1;
	DMFINANC.TAlx.ParamByName('DT2').AsDate:=DT2;
	DMFINANC.TAlx.Open;
   If Tipo=1 Then
   	LCtaRecrec.Caption:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency)
   Else
   	LMCtaRecrec.Caption:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency);

	//CALCULA TOTAL P/ Ctas a Pagar
	DMFINANC.TAlx.Close;
	DMFINANC.TAlx.SQL.Clear;
	DMFINANC.TAlx.SQL.Add(' Select Sum(vwparcp.VALOR) AS TOTAL From vwparcp ');
	DMFINANC.TAlx.SQL.Add(' Where (vwparcp.fech<>'+#39+'S'+#39+') ');
	DMFINANC.TAlx.SQL.Add(' AND ((vwparcp.dtvenc>=:DT1) AND (vwparcp.dtvenc<=:DT2))');
	DMFINANC.TAlx.SQL.Add(' AND (vwparcp.cod_loja=:COD_LOJA)');
	DMFINANC.TAlx.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
	DMFINANC.TAlx.ParamByName('DT1').AsDate:=DT1;
	DMFINANC.TAlx.ParamByName('DT2').AsDate:=DT2;
	DMFINANC.TAlx.Open;
   If Tipo=1 Then
   	LCtaPagApag.Caption:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency)
   Else
   	LMCtaPagApag.Caption:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency);

	//CALCULA TOTAL P/ Ctas Pagas
	DMFINANC.TAlx.Close;
	DMFINANC.TAlx.SQL.Clear;
	DMFINANC.TAlx.SQL.Add(' Select Sum(vwparcp.VALORPG) AS TOTAL From vwparcp ');
	DMFINANC.TAlx.SQL.Add(' Where (vwparcp.fech='+#39+'S'+#39+') ');
	DMFINANC.TAlx.SQL.Add(' AND ((vwparcp.dtdebito>=:DT1) AND (vwparcp.dtdebito<=:DT2))');
	DMFINANC.TAlx.SQL.Add(' AND (vwparcp.cod_loja=:COD_LOJA)');
	DMFINANC.TAlx.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
	DMFINANC.TAlx.ParamByName('DT1').AsDate:=DT1;
	DMFINANC.TAlx.ParamByName('DT2').AsDate:=DT2;
	DMFINANC.TAlx.Open;
   If Tipo=1 Then
   	LCtaPagpag.Caption:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency)
   Else
   	LMCtaPagpag.Caption:=FormatFloat('0.00', DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency);

   //*************************
	//ACUMULA NOS TOTALIZADORES
   //*************************
   If Tipo=1
   Then Begin
       LVMercadoria.Caption:=FormatFloat('0.00', StrToFloat(LVendMercVista.Caption)+StrToFloat(LVMercPrazo.caption));
		LVServico.Caption:=FormatFloat('0.00', StrToFloat(LVServVista.Caption)+StrToFloat(LVServPrazo.caption));
       LVGeral.Caption:=FormatFloat('0.00', StrToFloat(LVMercadoria.Caption)+StrToFloat(LVServico.caption));
		LCMercadoria.Caption:=FormatFloat('0.00', StrToFloat(LCMercVista.Caption)+StrToFloat(LCMercPrazo.caption));
		LCtaRec.Caption:=FormatFloat('0.00', StrToFloat(LCtaRecrec.Caption)+StrToFloat(LCtaRecArec.caption));
       If DT1=DT2
       Then Begin
			//CONTAS A RECEBER - Soma ao saldo total do patrimonio
           XSALDOTOTALCUSTO:=XSALDOTOTALCUSTO+(StrToFloat(LCtaRecrec.Caption)+StrToFloat(LCtaRecArec.caption));
           XSALDOTOTALCOMPRA:=XSALDOTOTALCOMPRA+(StrToFloat(LCtaRecrec.Caption)+StrToFloat(LCtaRecArec.caption));
       End;
		LCtaPag.Caption:=FormatFloat('0.00', StrToFloat(LCtaPagpag.Caption)+StrToFloat(LCtaPagApag.caption));
       LSaldoCta.Caption:=FormatFloat('0.00', StrToFloat(LCtaRec.Caption)-StrToFloat(LCtaPag.caption));
   End
   Else Begin
       LMVMercadoria.Caption:=FormatFloat('0.00', StrToFloat(LMVendMercVista.Caption)+StrToFloat(LMVMercPrazo.caption));
		LMVServico.Caption:=FormatFloat('0.00', StrToFloat(LMVServVista.Caption)+StrToFloat(LMVServPrazo.caption));
       LMVGeral.Caption:=FormatFloat('0.00', StrToFloat(LMVMercadoria.Caption)+StrToFloat(LMVServico.caption));
		LMCMercadoria.Caption:=FormatFloat('0.00', StrToFloat(LMCMercVista.Caption)+StrToFloat(LMCMercPrazo.caption));
		LMCtaRec.Caption:=FormatFloat('0.00', StrToFloat(LMCtaRecrec.Caption)+StrToFloat(LMCtaRecArec.caption));
		LMCtaPag.Caption:=FormatFloat('0.00', StrToFloat(LMCtaPagpag.Caption)+StrToFloat(LMCtaPagApag.caption));
       LMSaldoCta.Caption:=FormatFloat('0.00', StrToFloat(LMCtaRec.Caption)-StrToFloat(LMCtaPag.caption));
   End;

	If Tipo=1
   Then Begin
   	//CALCULA SALDO DE CAIXA
   	If DMCAIXA.VerifAbCaixa=False
   	Then Begin
       	Mensagem('A T E N Ç Ã O ', 'O Caixa escolhido não se encontra aberto. Para realizar a maioria das operações financeiras é obrigado que o caixa esteja aberto!', '', 1,1, false, 'a');
   		LSaldoCXDia.Caption:='0,00';
   		LSaldoCXGeral.Caption:='0,00';
   	End;
   	Try
   		CalcCaixa;
   		LSaldoCXDia.Caption:=FormatFloat('0.00', SaldoAtu+SaldoIni);
           If DT1=DT2
           Then Begin
				//CAIXA - Soma ao saldo total do patrimonio
               XSALDOTOTALCUSTO:=XSALDOTOTALCUSTO+SaldoAtu+SaldoIni;
               XSALDOTOTALCOMPRA:=XSALDOTOTALCOMPRA+SaldoAtu+SaldoIni;
           End;
   		LSaldoCXGeral.Caption:=FormatFloat('0.00', SaldoAtu+SaldoIni);
   	Except
   		LSaldoCXDia.Caption:='erro';
   		LSaldoCXGeral.Caption:='erro';
       End;
       //SALDO DE BANCOS
   	Try
           REBanco.Lines.Clear;
           //Seleciona todas as Ctsa Correntes
           DMFINANC.TAlx.Close;
			DMFINANC.TAlx.SQL.Clear;
			DMFINANC.TAlx.SQL.Add('Select * from vwctacor ');
			DMFINANC.TAlx.Open;
           If not DMFINANC.TAlx.IsEmpty
           Then Begin
               DMFINANC.TAlx.First;
               While not DMFINANC.TAlx.Eof do
               Begin
                   ImpSaldoCtaCor(DT1, DT2);
                   DMFINANC.TAlx.Next;
               End;
           End; {
			ImpSaldoCtaCor(DT1, DT2);
			//CALCULA TOTAL EM BANCOS
           DMFINANC.TAlx.Close;
			DMFINANC.TAlx.SQL.Clear;
			DMFINANC.TAlx.SQL.Add(' Select Sum(TMP.VLR1) AS TOTAL From TMP');
			DMFINANC.TAlx.Open;

           REBanco.Lines.Add('* SALDO GERAL DE BANCOS');
  			REBanco.SelStart:=0;  REBanco.SelLength:=23;
  			CurrText.Style := CurrText.Style + [fsBold];
           REBanco.Lines.Add('  - Saldo: '+FormatFloat('0.00', DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency ));
           REBanco.Lines.Add(' ');
			//Atualiza o saldo geral de caixa com o acrecimo de valores em banco
           Try
   			LSaldoCXGeral.Caption:=FormatFloat('0.00', SaldoAtu+SaldoIni+DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency);
           Except
   			LSaldoCXGeral.Caption:='erro';
           End;

           DMFINANC.TAlx.Close;
			DMFINANC.TAlx.SQL.Clear;
			DMFINANC.TAlx.SQL.Add(' Select * From TMP');
			DMFINANC.TAlx.Open;
           DMFINANC.TAlx.First;
           While Not  DMFINANC.TAlx.Eof do
           Begin
//           	REBanco.SelStart:=Length(REBanco.Lines.Text);
           	REBanco.Lines.Add(' '+DMFINANC.TAlx.FieldByName('DESC1').AsString);
//               REBanco.SelLength:=REBanco.SelStart+XPosition;
//  				CurrText.Style := CurrText.Style + [fsBold];

           	//REBanco.SelStart:=Length(REBanco.Lines.Text);
           	REBanco.Lines.Add('  - Saldo: '+FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VLR1').AsCurrency )+'   Entrar: '+FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VLR2').AsCurrency )+'   Sair: '+FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VLR3').AsCurrency )+'   Saldo Final: '+FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VLR4').AsCurrency));
				//XPosition:=Length('  - Saldo: '+FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VLR1').AsCurrency )+'   Entrar: '+FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VLR2').AsCurrency )+'   Sair: '+FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VLR3').AsCurrency )+'   Saldo Final: '+FormatFloat('0.00', DMFINANC.TAlx.FieldByName('VLR4').AsCurrency));
               //REBanco.SelLength:=REBanco.SelStart+XPosition;
//  				CurrText.Style := CurrText.Style - [fsBold];
               DMFINANC.TAlx.Next;
           End;   }
   	Except
           REBanco.Lines.Add('erro')
   	End;
   End;

End;

procedure TFResumoMov.FormShow(Sender: TObject);
VAR
  Data, UltDia: Integer;
  Mes:String;
  Year, Month, Day:word;
begin
  inherited;
	If (Screen.Width<>1024) And (Screen.Height<>768)
   Then Begin
       Top:=42;
       Left:=210;
   End
   Else Begin
       Top:=193;
       left:=436;
   End;

   SelecionaContasVenc;
   //ZERA VARIAVEIS DE SALDO TOTAL
   XSALDOTOTALCUSTO:=0;
   XSALDOTOTALCOMPRA:=0;
   
   LMov1.Caption:='Movimentação Diária - '+DateToStr(Date());
   lbVencimentos.Caption:='Contas Vencendo e Vencidas - '+DateToStr(Date());
   EdDt1.Height:=18;
   EdDt2.Height:=18;
   DecodeDate(Date(), Year, Month, Day);
   EdDt1.Text:='01/'+IntToStr(Month)+'/'+IntToStr(Year);
	UltDia:=(UltDiaMes(Month, Year));
   EdDt2.Text:=IntToStr(UltDia)+'/'+IntToStr(Month)+'/'+IntToStr(Year);
   //GERA RESULTADOS DE ESTOQUE
   GeraResumoEstoque;
   //GERA RESUMO DA DATA ATUAL
   GeraResumo(Date(), Date(), 1);
   //GERA RESUMO DA DATA DO MES
   GeraResumo(StrToDate(EdDt1.Text), StrToDate(EdDt2.Text), 2);
   //repassa valores gerais
   LSaldocomValordeCompra.Caption:=FormatFloat('0.00', XSALDOTOTALCOMPRA);
   LSaldocomValordeCusto.Caption:=FormatFloat('0.00', XSALDOTOTALCUSTO);   
end;

procedure TFResumoMov.EdDt1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
	If Key=#13
   Then Begin
   	//GERA RESUMO DA DATA DO MES
	   GeraResumo(StrToDate(EdDt1.Text), StrToDate(EdDt2.Text), 2);
   End;
end;

procedure TFResumoMov.BitBtn1Click(Sender: TObject);
begin
  inherited;
	MessageDlg('Posição: '+IntToStr(REBanco.SelLength) , mtWarning, [mbOK], 0);
	REBanco.Lines.Add('TESTE');     
	MessageDlg('Tamanho: '+IntToStr(REBanco.SelLength) , mtWarning, [mbOK], 0);
end;

//Paulo 28/11/2011: Busca as conta que estão vencendo e que já estão vencidas
procedure TFResumoMov.SelecionaContasVenc();
var
   Xdias :Integer;
   XAtual, XData :TDate;
   XTotRec, XTotPag : String;
begin
  inherited;
       if (edData1.Text = '  /  /    ') and (edData2.Text = '  /  /    ')then
       begin
           Xdias := DMMacs.TLoja.FieldByName('DIASVENC').AsInteger;
           XData := Date+Xdias;
           XAtual := StrToDate('24/06/1717');
       end else
       begin
           XData := StrToDate(edData2.Text);
           XAtual := StrToDate(edData1.Text);
       end;

       DMESTOQUE.Alx3.Close;
       DMESTOQUE.Alx3.SQL.Clear;
       DMESTOQUE.Alx3.SQL.Add('SELECT PARCELACR.NUMPARC, PARCELACR.VALOR, PARCELACR.DTVENC, PARCELACR.HISTORICO FROM PARCELACR');
       DMESTOQUE.Alx3.SQL.Add('WHERE (PARCELACR.DTVENC BETWEEN :DATA1 AND :DATA2) and (PARCELACR.FECH = '+#39+'N'+#39+')');
       DMESTOQUE.Alx3.ParamByName('DATA1').AsDate:= XAtual;
       DMESTOQUE.Alx3.ParamByName('DATA2').AsDate:= XData;
       DMESTOQUE.Alx3.Open;

       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('SELECT SUM(PARCELACR.VALOR) AS TOTALREC FROM PARCELACR');
       DMESTOQUE.Alx.SQL.Add('WHERE (PARCELACR.DTVENC BETWEEN :DATA1 AND :DATA2) and (PARCELACR.FECH = '+#39+'N'+#39+')');
       DMESTOQUE.Alx.ParamByName('DATA1').AsDate:= XAtual;
       DMESTOQUE.Alx.ParamByName('DATA2').AsDate:= XData;

       DMESTOQUE.Alx.Open;

       lbTotalRec.Caption:= 'Total: '+FormatFloat('0.00',DMESTOQUE.Alx.FieldByName('TOTALREC').AsFloat);

       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add('SELECT PARCELACP.NUMPARC, PARCELACP.VALOR, PARCELACP.DTVENC, PARCELACP.HISTORICO FROM PARCELACP');
       DMESTOQUE.Alx4.SQL.Add('WHERE (PARCELACP.DTVENC BETWEEN :DATA1 AND :DATA2)and (PARCELACP.FECH = '+#39+'N'+#39+')');
       DMESTOQUE.Alx4.ParamByName('DATA1').AsDate:= XAtual;
       DMESTOQUE.Alx4.ParamByName('DATA2').AsDate:= XData;
       DMESTOQUE.Alx4.Open;

       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('SELECT SUM(PARCELACP.VALOR) AS TOTALPAG FROM PARCELACP');
       DMESTOQUE.Alx.SQL.Add('WHERE (PARCELACP.DTVENC BETWEEN :DATA1 AND :DATA2) and (PARCELACP.FECH = '+#39+'N'+#39+')');
       DMESTOQUE.Alx.ParamByName('DATA1').AsDate:= XAtual;
       DMESTOQUE.Alx.ParamByName('DATA2').AsDate:= XData;
       DMESTOQUE.Alx.Open;

       lbTotPagar.Caption:= 'Total: '+FormatFloat('0.00',DMESTOQUE.Alx.FieldByName('TOTALPAG').AsFloat);






end;

procedure TFResumoMov.edData2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     If Key=#13
     Then Begin
         SelecionaContasVenc;
     End;
end;

procedure TFResumoMov.DBReceberDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

       if (DMESTOQUE.Alx3.FieldByName('DTVENC').AsDateTime > Date) then
           DBReceber.Canvas.Font.Color:=clBlack;
           DBReceber.Canvas.Font.Style := [];

       if (DMESTOQUE.Alx3.FieldByName('DTVENC').AsDateTime = Date) then
            DBReceber.Canvas.Font.Color:=clGreen;
            DBReceber.Canvas.Font.Style := [];

       if (DMESTOQUE.Alx3.FieldByName('DTVENC').AsDateTime < Date) then
            DBReceber.Canvas.Font.Color:=clRed;
            DBReceber.Canvas.Font.Style := [];

       DBReceber.Canvas.FillRect(Rect);
       DBReceber.DefaultDrawDataCell(Rect, DBReceber.Columns[datacol].Field, State);
end;

procedure TFResumoMov.DBPagarDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

       if (DMESTOQUE.Alx4.FieldByName('DTVENC').AsDateTime > Date) then
            DBPagar.Canvas.Font.Color:=clBlack;
            DBPagar.Canvas.Font.Style := [];

		if (DMESTOQUE.Alx4.FieldByName('DTVENC').AsDateTime = Date) then
            DBPagar.Canvas.Font.Color:=clGreen;
            DBPagar.Canvas.Font.Style := [];

       if (DMESTOQUE.Alx4.FieldByName('DTVENC').AsDateTime < Date) then
            DBPagar.Canvas.Font.Color:=clRed;
            DBPagar.Canvas.Font.Style := [];

       DBPagar.Canvas.FillRect(Rect);
       DBPagar.DefaultDrawDataCell(Rect, DBPagar.Columns[datacol].Field, State);
end;

procedure TFResumoMov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add('select first 1 * from despadic');
   DMESTOQUE.Alx3.SQL.Add('left join equipe on despadic.cod_equipe = equipe.cod_equipe');
   DMESTOQUE.Alx3.SQL.Add('where (despadic.cod_gerador= 1) ');
   DMESTOQUE.Alx3.Open;
end;

procedure TFResumoMov.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Resumo de Movimentações' ;
end;

end.
