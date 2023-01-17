unit UEstrutResult;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, ExtCtrls, TFlatHintUnit,
  StdCtrls, Buttons, jpeg, UFrmBusca, DrLabel, Mask, ColorMaskEdit, Grids,
  DBGrids, DBCtrls;

type
  TFRelEstrutResult = class(TFPadraoRelatorio)
    DBGrid1: TDBGrid;
    LBloco: TLabel;
    RGTipoEstrut: TRadioGroup;
    DRLabel1: TDRLabel;
    Label1: TLabel;
    EdDTIni: TColorMaskEdit;
    Label4: TLabel;
    EdDtFim: TColorMaskEdit;
    FrmBuscaConta1: TFrmBusca;
    FrmBuscaConta2: TFrmBusca;
    RGTipoRel: TRadioGroup;
    CBVISUCTAVAL: TCheckBox;
    procedure FrmFormPagFreteBTNMINUSClick(Sender: TObject);
    procedure FrmBuscaConta2BTNMINUSClick(Sender: TObject);
    procedure FrmBuscaConta1BTNOPENClick(Sender: TObject);
    procedure FrmBuscaConta2BTNOPENClick(Sender: TObject);
    procedure FrmBuscaConta1EDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmBuscaConta2EDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FrmBuscaConta1BTNMINUSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
	 //Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em cx
	 Procedure ResultCaixa(XCod_ContaCX: Integer; DTINI, DTFIM: String; XTIPO: String);
	 //Retorna Valores em Debitos de Ctas a pagar
	 Procedure ResultCP(XCod_ContaCP: Integer; DTINI, DTFIM: String);
	 //Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Banco
	 Procedure ResultBanco(XCod_ContaBC: Integer; DTINI, DTFIM: String; XTIPO: String);
	 //Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Ctas Receber
	 Procedure ResultCtaReceber(XCod_ContaCR: Integer; DTINI, DTFIM: String);
	 //Retorna Valores em Créditos para determinada conta de lançamentos em cheque
//	 Procedure ResultCheque(XCod_ContaCH: Integer; DTINI, DTFIM: String);



  end;

var
  FRelEstrutResult: TFRelEstrutResult;
  XCONTA1, XCONTA2: String;
  XCREDITOS, XDEBITOS: Real;//Para valores realizados
  XCREDPREV, XDEBPREV: Real;//Para valores previstos
  XCUSTOFIXOPREV, XCUSTOFIXOREAL: Real;
  XPERPREV, XPERREAL: Real;

implementation

uses UConsPlncta, UDMConta, UDMMacs, UDMCaixa, Alxor32, UMenu, UPadrao, DB;

{$R *.DFM}
{
//Retorna Valores em Créditos para determinada conta de lançamentos em cheque
Procedure TFRelEstrutResult.ResultCheque(XCod_ContaCH: Integer; DTINI, DTFIM: String);
Begin
   XCREDITOS:=0;
   XDEBITOS:=0;
   iF DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger=274 THEN
       XCREDITOS:=0;
	//EFETUA SQL PARA DEBITOS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add(' SELECT SUM(movbanco.valor) AS VALOR from chequerec left join movbanco on chequerec.cod_movbanco = movbanco.cod_movbanco ');
   DMCONTA.TAlx.SQL.Add(' Where (movbanco.cod_plncta=:COD_CONTA) AND (movbanco.cod_gerador is null)');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCH;
   If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   Then Begin
		DMCONTA.TAlx.SQL.Add(' AND ((movbanco.dtlanc>=:DT1) And (movbanco.dtlanc<=:DT2)) ');
		DMCONTA.TAlx.ParamByName('DT1').AsDate:=StrToDate(DTINI);
		DMCONTA.TAlx.ParamByName('DT2').AsDate:=StrToDate(DTFIM);
   End;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
End;
 }
//Retorna Valores em Debitos de Ctas a pagar
Procedure TFRelEstrutResult.ResultCP(XCod_ContaCP: Integer; DTINI, DTFIM: String);
Begin
   XCREDITOS:=0;
   XDEBITOS:=0;
   XCREDPREV:=0;
   XDEBPREV:=0;
	//EFETUA SQL PARA DEBITOS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add(' SELECT sum(vwparcp.valor) AS VALOR from vwparcp ');
   DMCONTA.TAlx.SQL.Add('    left join parcelacp on vwparcp.cod_parcelacp = parcelacp.cod_parcelacp ');
   DMCONTA.TAlx.SQL.Add('    Where (vwparcp.cod_plncta=:COD_CONTA)  AND (vwparcP.fech<>'+#39+'S'+#39+') and  (parcelacp.ESTRU=1) ');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCP;
   If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   Then Begin
       If RGTipoEstrut.ItemIndex=0 Then
		    DMCONTA.TAlx.SQL.Add(' AND ((vwparcp.dtlanc>=:DT1) And (vwparcp.dtlanc<=:DT2)) ')
       Else
		    DMCONTA.TAlx.SQL.Add(' AND ((vwparcp.dtrefer>=:DT1) And (vwparcp.dtrefer<=:DT2)) ');
		DMCONTA.TAlx.ParamByName('DT1').AsDate:=StrToDate(DTINI);
		DMCONTA.TAlx.ParamByName('DT2').AsDate:=StrToDate(DTFIM);
   End;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   XDEBPREV:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
End;
//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em cx
Procedure TFRelEstrutResult.ResultCaixa(XCod_ContaCX: Integer; DTINI, DTFIM: String; XTIPO: String);
Begin
   XCREDITOS:=0;
   XDEBITOS:=0;
   XCREDPREV:=0;
   XDEBPREV:=0;
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add(' SELECT sum(lancaixa.valor) AS VALOR from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.tipcai='+#39+'E'+#39+') and (lancaixa.ESTRU=1) ');
//   DMCONTA.TAlx.SQL.Add(' And ((lancaixa.tipogerador<>'+#39+'ACHR'+#39+') AND (lancaixa.tipogerador<>'+#39+'ACHP'+#39+') AND (lancaixa.tipogerador<>'+#39+'DCHR'+#39+') AND (lancaixa.tipogerador<>'+#39+'DCHP'+#39+')) ');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
	If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   Then Begin
		If XTIPO='CX' Then
  			DMCONTA.TAlx.SQL.Add(' AND ((lancaixa.dtlanc>=:DT1) And (lancaixa.dtlanc<=:DT2)) ')
   	Else
  			DMCONTA.TAlx.SQL.Add(' AND ((lancaixa.DTREFER>=:DT1) And (lancaixa.DTREFER<=:DT2)) ');
		DMCONTA.TAlx.ParamByName('DT1').AsDate:=StrToDate(DTINI);
		DMCONTA.TAlx.ParamByName('DT2').AsDate:=StrToDate(DTFIM);
   End;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
       XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
   Else
       XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(lancaixa.valor) AS VALOR from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.tipcai='+#39+'S'+#39+')  and (lancaixa.ESTRU=1) ');
//   DMCONTA.TAlx.SQL.Add(' And ((lancaixa.tipogerador<>'+#39+'ACHR'+#39+') AND (lancaixa.tipogerador<>'+#39+'ACHP'+#39+') AND (lancaixa.tipogerador<>'+#39+'DCHR'+#39+') AND (lancaixa.tipogerador<>'+#39+'DCHP'+#39+')) ');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
	If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   Then Begin
		If XTIPO='CX' Then
  			DMCONTA.TAlx.SQL.Add(' AND ((lancaixa.dtlanc>=:DT1) And (lancaixa.dtlanc<=:DT2)) ')
   	Else
  			DMCONTA.TAlx.SQL.Add(' AND ((lancaixa.DTREFER>=:DT1) And (lancaixa.DTREFER<=:DT2)) ');
		DMCONTA.TAlx.ParamByName('DT1').AsDate:=StrToDate(DTINI);
		DMCONTA.TAlx.ParamByName('DT2').AsDate:=StrToDate(DTFIM);
   End;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
       XCREDITOS:=XCREDITOS-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
   Else
       XCREDITOS:=XCREDITOS+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
End;

//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Banco
Procedure TFRelEstrutResult.ResultBanco(XCod_ContaBC: Integer; DTINI, DTFIM: String; XTIPO: String);
Begin
   XCREDITOS:=0;
   XDEBITOS:=0;
   XCREDPREV:=0;
   XDEBPREV:=0;
   If XTIPO='CX'
   Then Begin
   	////////////////////////////////
   	//PROCESSO PARA REGIME DE CAIXA
       ////////////////////////////////
       //SOMENTE PARA ENTRADAS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+')  AND ((movbanco.cod_ctacor is not Null) and (movbanco.cod_ctacor >0))');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.dtmov>=:DT1) And (movbanco.dtmov<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);
       //SOMENTE PARA SAIDAS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+')  AND ((movbanco.cod_ctacor is not Null) and (movbanco.cod_ctacor >0))');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.dtmov>=:DT1) And (movbanco.dtmov<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=XCREDITOS-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=XCREDITOS+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
   End
   Else Begin
   	//////////////////////////////////////
   	//PROCESSO PARA REGIME DE COMPETENCIA
       /////////////////////////////////////
       //REALIZADO SOMENTE PARA ENTRADAS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA) AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+')  AND ((movbanco.cod_ctacor is not Null) and (movbanco.cod_ctacor >0)) and (movbanco.estru = 1) ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTLANC>=:DT1) And (movbanco.DTLANC<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
        End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);

       //REALIZADO SOMENTE PARA SAIDAS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (Movbanco.cod_plncta=:COD_CONTA) AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+')  AND ((movbanco.cod_ctacor is not Null) and (movbanco.cod_ctacor >0))  and (movbanco.estru = 1) ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTLANC>=:DT1) And (movbanco.DTLANC<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=XCREDPREV-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDPREV:=XCREDPREV+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;

		//EFETUA SQL PARA PREVISTOS DE ENTRADA
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech<>'+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+')  AND ((movbanco.cod_ctacor is not Null) and (movbanco.cod_ctacor >0))  and (movbanco.estru = 1) ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTLANC>=:DT1) And (movbanco.DTLANC<=:DT2)) ');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDPREV:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);


		//EFETUA SQL PARA PREVISTOS DE SAIDA
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech<>'+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+')  AND ((movbanco.cod_ctacor is not Null) and (movbanco.cod_ctacor >0))  and (movbanco.estru = 1) ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTLANC>=:DT1) And (movbanco.DTLANC<=:DT2)) ');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=XCREDPREV-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDPREV:=XCREDPREV+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
	End;
End;

//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Ctas Receber
Procedure TFRelEstrutResult.ResultCtaReceber(XCod_ContaCR: Integer; DTINI, DTFIM: String);
Begin
   XCREDITOS:=0;
   XDEBITOS:=0;
   XCREDPREV:=0;
   XDEBPREV:=0;
{   If DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString='3.1.01.01.0001' Then
       XCREDITOS:=0;
   If DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString='3.1.01.01.0002' Then
       XCREDITOS:=0;
   If DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString='3.1.03.01.0002' Then
       XCREDITOS:=0;
   If DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString='3.1.03.01.0001' Then
       XCREDITOS:=0;
 }
	//EFETUA SQL PARA CREDITOS NA CONTA COD_PLNCTA PARA PRODUTOS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('Select Sum(parcelacr.valorprod) AS VALOR from parcelacr ');
   DMCONTA.TAlx.SQL.Add('   left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber Where (CtaReceber.cod_plncta=:COD_CONTA) AND (parcelacr.fech<>'+#39+'S'+#39+')  AND ((parcelacr.ESTRU=1) and (parcelacr.ESTRU is not null)) ');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCR;
   If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   Then Begin
		DMCONTA.TAlx.SQL.Add(' AND ((ctareceber.dtlanc>=:DT1) And (ctareceber.dtlanc<=:DT2)) ');
		DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
		DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
   End;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   XCREDPREV:=XCREDPREV+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
	//EFETUA SQL PARA CREDITOS NA CONTA COD_PLNCTASERV PARA SERVIÇOS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('Select Sum(parcelacr.valorServ) AS VALOR from parcelacr ');
   DMCONTA.TAlx.SQL.Add('   left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber Where (CtaReceber.cod_plnctaServ=:COD_CONTA) AND (parcelacr.fech<>'+#39+'S'+#39+')   AND (parcelacr.ESTRU=1) ');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCR;
   If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   Then Begin
		DMCONTA.TAlx.SQL.Add(' AND ((ctareceber.dtlanc>=:DT1) And (ctareceber.dtlanc<=:DT2)) ');
		DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
		DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
   End;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   XCREDPREV:=XCREDPREV+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
End;

procedure TFRelEstrutResult.FrmFormPagFreteBTNMINUSClick(Sender: TObject);
begin
  inherited;
	XCONTA1:='-1';
  	FrmBuscaConta1.EDCodigo.Text:='';
  	FrmBuscaConta1.EdDescricao.Text:='';
end;

procedure TFRelEstrutResult.FrmBuscaConta2BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XCONTA2:='-1';
  	FrmBuscaConta2.EDCodigo.Text:='';
  	FrmBuscaConta2.EdDescricao.Text:='';
   FrmBuscaConta2.Repaint;   
end;

procedure TFRelEstrutResult.FrmBuscaConta1BTNOPENClick(Sender: TObject);
begin
  inherited;
	 //LIBERA CONTAS APROPRIADAS PARA CONSULTA
	 filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO = '+#39+'T'+#39+') ORDER BY CLASSIFICACAO');
    FMenu.TIPOAUX:='DRE';
    If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
    Then Begin
        XCONTA1:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsString;
        FrmBuscaConta1.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
        FrmBuscaConta1.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
        FrmBuscaConta1.Repaint;        
    End;
end;

procedure TFRelEstrutResult.FrmBuscaConta2BTNOPENClick(Sender: TObject);
begin
  inherited;
  	 //FILTRA CONTAS APROPRIADAS PARA CONSULTA
	 filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO = '+#39+'T'+#39+') ORDER BY CLASSIFICACAO');
    FMenu.TIPOAUX:='DRE';    
    If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
    Then Begin
        XCONTA2:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsString;
        FrmBuscaConta2.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
        FrmBuscaConta2.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
        FrmBuscaConta2.Repaint;        
    End;
end;

procedure TFRelEstrutResult.FrmBuscaConta1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	If Key = #13
   Then Begin
 		If FrmBuscaConta1.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO = '+#39+'T'+#39+') And (CLASSIFICACAO='+#39+FrmBuscaConta1.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCONTA1:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsString;
		      	FrmBuscaConta1.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmBuscaConta1.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCONTA1:='-1';
		      	FrmBuscaConta1.EdDescricao.Text:='';
		      	FrmBuscaConta1.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XConta1:='-1';
	      	FrmBuscaConta1.EdDescricao.Text:='';
	      	FrmBuscaConta1.EDCodigo.text:='';
       End;
       FrmBuscaConta1.Repaint;
   End;
end;

procedure TFRelEstrutResult.FrmBuscaConta2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  	If Key = #13
   Then Begin
 		If FrmBuscaConta2.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO = '+#39+'T'+#39+') And (CLASSIFICACAO='+#39+FrmBuscaConta2.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XCONTA2:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsString;
		      	FrmBuscaConta2.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmBuscaConta2.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XCONTA2:='-1';
		      	FrmBuscaConta2.EdDescricao.Text:='';
		      	FrmBuscaConta2.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XConta2:='-1';
	      	FrmBuscaConta2.EdDescricao.Text:='';
	      	FrmBuscaConta2.EDCodigo.text:='';
       End;
       FrmBuscaConta2.Repaint;       
   End;
end;

procedure TFRelEstrutResult.BtnVisualizarClick(Sender: TObject);
Var
	XULTORDEM: String;//Armazena a ultima ordem da conta informada
begin
  inherited;
   //PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
   LBloco.Caption:='Preparando restrições';
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:='Financeiro/Relatórios/Estrutura de Resultados';
   If RGTipoEstrut.ItemIndex=0 Then
   	DMMACS.TLoja.FieldByName('TMP1').AsString:='Regime de Caixa '
   Else
   	DMMACS.TLoja.FieldByName('TMP1').AsString:='Regime de Competência ';
   DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+#13+'Intervalo de Datas: '+EdDTIni.Text+' - '+EdDtFim.Text;
   If RGTipoRel.ItemIndex=0 Then
   	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' Analítico '
   Else
   	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' Sintético ';
   DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+#13+'Cta. Ini.'+FrmBuscaConta1.EDCodigo.Text+' - '+FrmBuscaConta1.EdDescricao.Text;
   DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+#13+'Cta. Fin.'+FrmBuscaConta2.EDCodigo.Text+' - '+FrmBuscaConta2.EdDescricao.Text;
 	DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;

   PComunica.Visible:=True;
   PComunica.BringToFront;
   PComunica.Refresh;
   //ZERA O VALOR DAS CONTAS
   LBloco.Caption:='Zerando Contas';
   LBloco.Refresh;
   PComunica.Refresh;
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('update plncta SET plncta.vlrprev=0, plncta.vlrreal=0, perprev=0, perreal=0');
	DMCONTA.TPlnCta.ExecSQL;
   DMCONTA.IBT.CommitRetaining;

	//FILTRA CONTAS
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' where plncta.classificacao between '+#39+FrmBuscaConta1.EDCodigo.Text+#39+' and '+#39+FrmBuscaConta2.EDCodigo.Text+#39+ ' AND TIPO = '+#39+'N'+#39+ ' order by plncta.classificacao');
	DMCONTA.TPlnCta.Open;

   //PERCORRE TODOS OS REGISTRO PARA ACUMULAR VALOR
   LBloco.Caption:='Acumulando Valores';
   LBloco.Refresh;
   PComunica.Refresh;

   While Not DMCONTA.TPlnCta.Eof Do
   Begin
       If DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger=204 Then
           DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.Edit;
   	///////////
   	// CAIXA //
       ///////////
       If RGTipoEstrut.ItemIndex=0 Then
       	//regime de caixa
       	ResultCaixa(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger, EdDTIni.Text, EdDtFim.Text, 'CX')
       Else
       	//regime de competência
       	ResultCaixa(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger, EdDTIni.Text, EdDtFim.Text, 'CP');
       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+XCREDITOS+XDEBITOS;
   	///////////
       // BANCO //
       ///////////
       If RGTipoEstrut.ItemIndex=0 Then
       	//regime de caixa
       	ResultBanco(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger, EdDTIni.Text, EdDtFim.Text, 'CX')
       Else
       	//regime de competência
       	ResultBanco(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger, EdDTIni.Text, EdDtFim.Text, 'CP');
       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+XCREDITOS+XDEBITOS;
       DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+XCREDPREV+XDEBPREV;

   	//////////////////
       // CTAS RECEBER //
       //////////////////
       If RGTipoEstrut.ItemIndex=1
       Then Begin
       	ResultCtaReceber(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger, EdDTIni.Text, EdDtFim.Text);
       	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+XCREDPREV;
       End;

   	////////////////
       // CTAS PAGAR //
       ////////////////
       If RGTipoEstrut.ItemIndex=1
       Then Begin
       	ResultCP(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger, EdDTIni.Text, EdDtFim.Text);
       	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+XDEBPREV;
       End;
		///////////
       DMCONTA.TPlnCta.Post;
       DMCONTA.TPlnCta.NEXT;
   End;
   ///////////////////
   //CALCULO DE C.M.V.
   ///////////////////
   LBloco.Caption:='Calculando C.M.V';
   LBloco.Refresh;
   PComunica.Refresh;
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.NATUREZA='+#39+'#'+#39+') AND (Plncta.CCF='+#39+'CMV'+#39+') Order By plncta.classificacao desc');
	DMCONTA.TPlnCta.SQL.Text;
	DMCONTA.TPlnCta.Open;

   If NOT DMCONTA.TPlnCta.IsEmpty
   Then Begin
       //ITENS DE PEDIDOS A VISTA
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       DMCONTA.TALX.SQL.Add(' Select SUM(itenspedven.valcomp) AS VALOR from itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (pedvenda.situacao='+#39+'FECHADO'+#39+')AND (FormPag.Descricao='+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itenspedven.data>=:DT1) And (itenspedven.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMCONTA.TALX.Open;

       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
       DMCONTA.TPlnCta.Post;

       //ITENS DE PEDIDOS A PRAZO
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       DMCONTA.TALX.SQL.Add(' Select SUM(itenspedven.valcomp) AS VALOR from itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (pedvenda.situacao='+#39+'FECHADO'+#39+')AND (FormPag.Descricao<>'+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itenspedven.data>=:DT1) And (itenspedven.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMCONTA.TALX.Open;

       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
       DMCONTA.TPlnCta.Post;

       //ITENS DE ORDEM A VISTA
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       DMCONTA.TALX.SQL.Add(' Select SUM(itprodord.valcomp) AS VALOR from itprodord left join ordem on itprodord.cod_ordem = ordem.cod_ordem ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (ordem.status='+#39+'FECHADO'+#39+')AND (FormPag.Descricao='+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itprodord.data>=:DT1) And (itprodord.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMCONTA.TALX.Open;
       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
       DMCONTA.TPlnCta.Post;
       //ITENS DE ORDEM A PRAZO
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       DMCONTA.TALX.SQL.Add(' Select SUM(itprodord.valcomp) AS VALOR from itprodord left join ordem on itprodord.cod_ordem = ordem.cod_ordem  ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (ordem.status='+#39+'FECHADO'+#39+')AND (FormPag.Descricao<>'+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itprodord.data>=:DT1) And (itprodord.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMCONTA.TALX.Open;
       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
       DMCONTA.TPlnCta.Post;
   End;

   DMCONTA.IBT.CommitRetaining;

   //ACUMULA VALORES NOS TOTALIZADORES
   LBloco.Caption:='Acumula Totalizadores';
   LBloco.Refresh;
   PComunica.Refresh;
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.classificacao between '+#39+FrmBuscaConta1.EDCodigo.Text+#39+' and '+#39+FrmBuscaConta2.EDCodigo.Text+#39+') AND (plncta.tipo='+#39+'T'+#39+') Order By plncta.classificacao desc');
	DMCONTA.TPlnCta.SQL.Text;
	DMCONTA.TPlnCta.Open;

   DMCONTA.TPlnCta.First;
   While Not DMCONTA.TPlnCta.Eof do
   Begin
		DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add(' Select Sum(plncta.vlrreal) AS VLRREAL, Sum(plncta.vlrprev) AS VLRPREV From plncta ');
   	DMCONTA.TAlx.SQL.Add(' Where (plncta.classificacao like '+#39+DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString+'%'+#39+') And (plncta.tipo='+#39+'N'+#39+')');
       DMCONTA.TAlx.SQL.Text;
		DMCONTA.TAlx.Open;
       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TAlx.FIELDBYNAME('VLRREAL').AsCurrency;
       DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TAlx.FIELDBYNAME('VLRPREV').AsCurrency;
		DMCONTA.TPlnCta.Post;
       DMCONTA.TPlnCta.Next;
   End;
   DMCONTA.IBT.CommitRetaining;

   ////////////////////////////////
   //TRABALHA COM CONTAS CALCULADAS
   ////////////////////////////////
   LBloco.Caption:='Valores para contas calculadas';
   LBloco.Refresh;
   PComunica.Refresh;
   //SELECIONA TODAS AS CONTAS CALCULADAS
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.NATUREZA='+#39+'X'+#39+')  Order By plncta.ORDEM');
	DMCONTA.TPlnCta.SQL.Text;
	DMCONTA.TPlnCta.Open;

   DMCONTA.TPlnCta.First;
   XULTORDEM:=DMCONTA.TPlnCta.FieldByName('ORDEM').AsString;
   While Not DMCONTA.TPlnCta.Eof do
   Begin
   	If Not DMCONTA.TPlnCta.Bof
       Then Begin
   		//REFILTRA CONTAS POR MOTIVO DO COMIT
			DMCONTA.TPlnCta.Close;
   		DMCONTA.TPlnCta.SQL.Clear;
   		DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   		DMCONTA.TPlnCta.SQL.Add(' where plncta.ordem > '+#39+XULTORDEM+#39+' AND (plncta.NATUREZA='+#39+'X'+#39+')  Order By plncta.ORDEM ');
			DMCONTA.TPlnCta.Open;
           DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       End;
       If Not DMCONTA.TPlnCta.IsEmpty
       Then Begin
   		//PARA CADA CONTA CALCULADA SELECIONA SEUS CALCULOS
			DMCONTA.TAlx.Close;
   		DMCONTA.TAlx.SQL.Clear;
   		DMCONTA.TAlx.SQL.Add(' Select * From PLNCTACALC ');
   		DMCONTA.TAlx.SQL.Add(' Where (plnctacalc.cod_plncta=:COD_PLNCTA)');
       	DMCONTA.TAlx.SQL.Text;
       	DMCONTA.TAlx.ParamByName('COD_PLNCTA').AsInteger:=DMCONTA.TPlnCta.FieldByNAme('COD_PLNCTA').AsInteger;
			DMCONTA.TAlx.Open;

       	DMCONTA.TPlnCta.Edit;
       	DMCONTA.TAlx.First;
       	While Not DMCONTA.TAlx.Eof do
       	Begin
       		//LOCALIZA A CONTA DE REFERENCIA PARA PEGAR SEU VALOR
           	DMMACS.TALX.Close;
           	DMMACS.TALX.SQL.Clear;
           	DMMACS.TALX.SQL.Add('select * FROM plncta Where (plncta.cod_plncta=:COD_CTAREF) AND (plncta.cod_filial=:COD_LOJA)');
           	DMMACS.TALX.ParamByName('COD_CTAREF').AsInteger:=DMCONTA.TAlx.FieldByName('COD_PLNCTAREF').AsInteger;
           	DMMACS.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
				DMMACS.TALX.SQL.Text;
           	DMMACS.TALX.Open;

				//Percorre todos os cálculos realizando seus calculos
           	If DMCONTA.TAlx.FieldByName('OPER').AsString='+'
           	Then Begin
	           		DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+DMMACS.TALX.FieldByName('VLRPREV').AsCurrency;
	           		DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+DMMACS.TALX.FieldByName('VLRREAL').AsCurrency;
           	End
           	Else Begin
           		If DMCONTA.TAlx.FieldByName('OPER').AsString='-'
           		Then Begin
	           			DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency-DMMACS.TALX.FieldByName('VLRPREV').AsCurrency;
	           			DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency-DMMACS.TALX.FieldByName('VLRREAL').AsCurrency;
           		End
           		Else Begin
           			If DMCONTA.TAlx.FieldByName('OPER').AsString='/'
           			Then Begin
	           				DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency/DMMACS.TALX.FieldByName('VLRPREV').AsCurrency;
	           				DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency/DMMACS.TALX.FieldByName('VLRREAL').AsCurrency;
           			End
           			Else Begin
           				If DMCONTA.TAlx.FieldByName('OPER').AsString='*'
           				Then Begin
	           					DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency*DMMACS.TALX.FieldByName('VLRPREV').AsCurrency;
	           					DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency*DMMACS.TALX.FieldByName('VLRREAL').AsCurrency;
           				End;
                   	End;
               	End;
           	End;
           	DMCONTA.TAlx.Next;
       	End;
       End;
       XULTORDEM:=DMCONTA.TPlnCta.FieldByName('ordem').AsString;
       If Not DMCONTA.TPlnCta.IsEmpty Then
       	DMCONTA.TPlnCta.Post;
       DMCONTA.IBT.CommitRetaining;
       DMCONTA.TPlnCta.Next;
   End;
   DMCONTA.IBT.CommitRetaining;

   /////////////////////////////////////////////////
   //ACUMULA VALORES NOS TOTALIZADORES PARA GARANTIR
   /////////////////////////////////////////////////

   // ZERA TOTALIZADORES SIMPLES
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add(' UPDATE plncta SET plncta.perprev=0, plncta.perreal=0, plncta.vlrprev=0, plncta.perreal=0 ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.natureza<>'+#39+'X'+#39+') And (plncta.natureza<>'+#39+'#'+#39+')  And (plncta.TIPO='+#39+'T'+#39+')');
	DMCONTA.TPlnCta.ExecSQL;
   DMCONTA.IBT.CommitRetaining;

   //RECALCULA
   LBloco.Caption:='Recalculando Valores';
   LBloco.Refresh;
   PComunica.Refresh;
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.classificacao between '+#39+FrmBuscaConta1.EDCodigo.Text+#39+' and '+#39+FrmBuscaConta2.EDCodigo.Text+#39+') AND (plncta.tipo='+#39+'T'+#39+') Order By plncta.classificacao desc');
	DMCONTA.TPlnCta.SQL.Text;
	DMCONTA.TPlnCta.Open;
   DMCONTA.TPlnCta.First;
   While Not DMCONTA.TPlnCta.Eof do
   Begin
   	If (DMCONTA.TPlnCta.FieldByNAme('NATUREZA').AsString<>'#') AND (DMCONTA.TPlnCta.FieldByNAme('NATUREZA').AsString<>'X')
       Then Begin
			DMCONTA.TAlx.Close;
   		DMCONTA.TAlx.SQL.Clear;
   		DMCONTA.TAlx.SQL.Add(' Select Sum(plncta.vlrreal) AS VLRREAL, Sum(plncta.vlrprev) AS VLRPREV From plncta ');
   		DMCONTA.TAlx.SQL.Add(' Where (plncta.classificacao like '+#39+DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString+'%'+#39+') And (plncta.tipo='+#39+'N'+#39+')');
       	DMCONTA.TAlx.SQL.Text;
			DMCONTA.TAlx.Open;
       	DMCONTA.TPlnCta.Edit;
       	DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TAlx.FIELDBYNAME('VLRREAL').AsCurrency;
       	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TAlx.FIELDBYNAME('VLRPREV').AsCurrency;
			DMCONTA.TPlnCta.Post;
       End;
       DMCONTA.TPlnCta.Next;
   End;
   //RECEITAS - DEDUÇÕES DA RECEITA BRUTA
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.classificacao= '+#39+'3'+#39+')');
	DMCONTA.TPlnCta.SQL.Text;
	DMCONTA.TPlnCta.Open;

	DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('Select * from plncta ');
   DMCONTA.TAlx.SQL.Add(' Where (plncta.classificacao= '+#39+'3.2'+#39+')');
	DMCONTA.TAlx.SQL.Text;
	DMCONTA.TAlx.Open;
   Try
   	DMCONTA.TPlnCta.Edit;
   	DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency-DMCONTA.TAlx.FieldByName('VLRREAL').AsCurrency;
   	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency-DMCONTA.TAlx.FieldByName('VLRPREV').AsCurrency;
   	DMCONTA.TPlnCta.Post;
   Except
   	DMCONTA.TPlnCta.Edit;
   	DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=0;
   	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=0;
   	DMCONTA.TPlnCta.Post;
	End;
   DMCONTA.IBT.CommitRetaining;
   ////////////////////////////////////////
   //TRABALHA COM CONTAS DE CÁLCULOS FIXOS
   ////////////////////////////////////////
   LBloco.Caption:='Calculando Contas de Cálculos Fixos';
   LBloco.Refresh;
   PComunica.Refresh;
   //SELECIONA TODAS AS CONTAS DE CÁLCULOS FIXOS
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.NATUREZA='+#39+'#'+#39+')  Order By plncta.classificacao desc');
	DMCONTA.TPlnCta.SQL.Text;
	DMCONTA.TPlnCta.Open;

   DMCONTA.TPlnCta.First;
   While Not DMCONTA.TPlnCta.Eof do
   Begin
       //Percorre todas as contas realizando os cálculos
       //CALCULO DE PONTO DE EQUILIBRIO
       If DMCONTA.TPlnCta.FieldByName('CCF').AsString='PE'
       Then Begin
       	//LOCALIZA A CONTA DE CUSTO FIXO
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('select * FROM plnctacalc Where (plnctacalc.COD_PLNCTA=:COD_CTAREF) AND (plnctacalc.OPER='+#39+'+'+#39+')');
           DMMACS.TALX.ParamByName('COD_CTAREF').AsInteger:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
			DMMACS.TALX.SQL.Text;
           DMMACS.TALX.Open;
           If Not DMMACS.TALX.IsEmpty
           Then Begin
           	DMCONTA.TAlx.Close;
           	DMCONTA.TALX.SQL.Clear;
           	DMCONTA.TALX.SQL.Add('select * FROM plncta Where (plncta.COD_PLNCTA=:COD_CTAREF)');
           	DMCONTA.TALX.ParamByName('COD_CTAREF').AsInteger:=DMMACS.TAlx.FieldByName('COD_PLNCTAREF').AsInteger;
				DMCONTA.TALX.SQL.Text;
           	DMCONTA.TALX.Open;
           	If not DMCONTA.TAlx.IsEmpty
           	Then Begin
           		XCUSTOFIXOPREV:=DMCONTA.TALX.FieldByName('VLRPREV').AsCurrency;
           		XCUSTOFIXOREAL:=DMCONTA.TALX.FieldByName('VLRREAL').AsCurrency;
               End;
           End;
       	//LOCALIZA A CONTA DE MARGEM DE CONTRIBUIÇÃO
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('select * FROM plnctacalc Where (plnctacalc.COD_PLNCTA=:COD_CTAREF) AND (plnctacalc.OPER='+#39+'/'+#39+')');
           DMMACS.TALX.ParamByName('COD_CTAREF').AsInteger:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
			DMMACS.TALX.SQL.Text;
           DMMACS.TALX.Open;

           DMCONTA.TAlx.Close;
           DMCONTA.TALX.SQL.Clear;
           DMCONTA.TALX.SQL.Add('select * FROM plncta Where (plncta.COD_PLNCTA=:COD_CTAREF)');
           DMCONTA.TALX.ParamByName('COD_CTAREF').AsInteger:=DMMACS.TAlx.FieldByName('COD_PLNCTAREF').AsInteger;
			DMCONTA.TALX.SQL.Text;
           DMCONTA.TALX.Open;
           If not DMCONTA.TAlx.IsEmpty
           Then Begin
           	//Neste ponto o registro não possue os valores em percentual, estes são calculados em relatorios
               //Então as variaveis receberão os valores p/ após calcularmos os percentuais
           	XPERPREV:=DMCONTA.TALX.FieldByName('VLRPREV').AsCurrency;
           	XPERREAL:=DMCONTA.TALX.FieldByName('VLRREAL').AsCurrency;
               //Agora vamos buscar a conta de receita p/ descobrirmos o total das movimentaçõers
           	DMCONTA.TAlx.Close;
           	DMCONTA.TALX.SQL.Clear;
           	DMCONTA.TALX.SQL.Add('select * FROM plncta Where (plncta.CLASSIFICACAO='+#39+'3'+#39+')');
				DMCONTA.TALX.SQL.Text;
           	DMCONTA.TALX.Open;
           	If not DMCONTA.TAlx.IsEmpty
           	Then Begin
               	If DMCONTA.TALX.FieldByName('VLRPREV').AsCurrency<>0 Then
						XPERPREV:=(XPERPREV*100)/DMCONTA.TALX.FieldByName('VLRPREV').AsCurrency
                   Else
						XPERPREV:=0;

                   If DMCONTA.TALX.FieldByName('VLRREAL').AsCurrency<>0 Then
           			XPERREAL:=(XPERREAL*100)/DMCONTA.TALX.FieldByName('VLRREAL').AsCurrency
                   Else
                       XPERREAL:=0;
               End
               Else Begin
                   XPERPREV:=0;
                   XPERREAL:=0;
               End;
           End;

           DMCONTA.TPlnCta.Edit;
           If (XCUSTOFIXOREAL=0) Or (XPERREAL=0) Then
              	DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=0
			Else
           	DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=(XCUSTOFIXOREAL/XPERREAL)*100;

			If (XCUSTOFIXOPREV=0) Or (XPERPREV=0) Then
           	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=0
			Else
           	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=(XCUSTOFIXOPREV/XPERPREV)*100;
           DMCONTA.TPlnCta.Post;
       End;
       DMCONTA.TPlnCta.Next;
	End;
   DMCONTA.IBT.CommitRetaining;

	If RGTipoEstrut.ItemIndex=0
   Then Begin
   	//ZERA OS VALORES DE PREVISTO DAS CONTAS
		DMCONTA.TPlnCta.Close;
   	DMCONTA.TPlnCta.SQL.Clear;
   	DMCONTA.TPlnCta.SQL.Add('update plncta SET plncta.vlrprev=0, perprev=0');
		DMCONTA.TPlnCta.ExecSQL;
   	DMCONTA.IBT.CommitRetaining;
   End;
	//FILTRA CONTAS
	DMCONTA.TRel.Close;
   DMCONTA.TREL.SQL.Clear;
   DMCONTA.TREL.SQL.Add('Select * from plncta ');
   If RGTipoRel.ItemIndex=0 Then
   	DMCONTA.TREL.SQL.Add(' where plncta.classificacao between '+#39+FrmBuscaConta1.EDCodigo.Text+#39+' and '+#39+FrmBuscaConta2.EDCodigo.Text+#39)
	Else
   	DMCONTA.TREL.SQL.Add(' where plncta.classificacao between '+#39+FrmBuscaConta1.EDCodigo.Text+#39+' and '+#39+FrmBuscaConta2.EDCodigo.Text+#39+ ' AND TIPO = '+#39+'T'+#39);

	If CBVISUCTAVAL.Checked=True Then
   	DMCONTA.TREL.SQL.Add(' AND ((PLNCTA.VLRPREV<>0) OR (PLNCTA.VLRREAL<>0))');

  	DMCONTA.TREL.SQL.Add(' order by plncta.classificacao ');
	DMCONTA.TREL.Open;
   PComunica.Visible:=False;
   FSRel.LoadFromFile('C:\Orion\MACS\Rel\FrfEstrutResult.frf');
   FSRel.ShowReport;
end;

procedure TFRelEstrutResult.FormActivate(Sender: TObject);
begin
  inherited;
   //ORDENA CONTAS PAR QUE A ULTIMA CONTA 5 POSSA SER PEGA
	DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('select * From plncta Where plncta.tipo='+#39+'T'+#39+' and plncta.classificacao like '+#39+'6%'+#39);
	DMCONTA.TAlx.Open;
   If not DMCONTA.TAlx.IsEmpty
   Then Begin
		XCONTA2:=DMCONTA.TAlx.FieldByName('COD_PLNCTA').AsString;
		FrmBuscaConta2.EdDescricao.Text:=DMCONTA.TAlx.FieldByName('DESCRICAO').AsString;
		FrmBuscaConta2.EDCodigo.text:=DMCONTA.TAlx.FieldByName('CLASSIFICACAO').AsString;
   End
   Else Begin
		XCONTA1:='-1';
		FrmBuscaConta1.EdDescricao.Text:='';
		FrmBuscaConta1.EDCodigo.text:='';
	End;

	//FILTR CONTAS DE ESTRUTURA DE RESULTADOS QUE SÃO 3 - 4 - 5
	If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO = '+#39+'T'+#39+') And (CLASSIFICACAO='+#39+'3'+#39+')')=True
	Then Begin
		XCONTA1:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsString;
		FrmBuscaConta1.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		FrmBuscaConta1.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End
	Else Begin
		XCONTA1:='-1';
		FrmBuscaConta1.EdDescricao.Text:='';
		FrmBuscaConta1.EDCodigo.text:='';
   End;
   FSDSRel.DataSource:=DMCONTA.DRel;
end;

procedure TFRelEstrutResult.FrmBuscaConta1BTNMINUSClick(Sender: TObject);
begin
  inherited;
  FrmBuscaConta1.BTNMINUSClick(Sender);
  FrmBuscaConta1.Repaint;
end;

end.
