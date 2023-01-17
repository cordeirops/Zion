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
    DBGridRelEst: TDBGrid;
    DBGridCaixa: TDBGrid;
    DBGridBanco: TDBGrid;
    Panel1: TPanel;
    DBGridCtaPagar: TDBGrid;
    BtnVoltar1: TBitBtn;
    DBGridCtaRec: TDBGrid;
    Label6: TLabel;
    EdLoc: TEdit;
    EdLocClassific: TEdit;
    FrRelDet: TfrReport;
    FRDsDet: TfrDBDataSet;
    BtImpCaixa: TButton;
    FRRelBanco: TfrReport;
    FRDsBanco: TfrDBDataSet;
    FRRelReceb: TfrReport;
    FRDsReceb: TfrDBDataSet;
    FRRelPagar: TfrReport;
    FRDsPagar: TfrDBDataSet;
    BtImpBanco: TButton;
    BtImpRec: TButton;
    BtImpPg: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    BitBtn1: TBitBtn;
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
    procedure BtnImprimirClick(Sender: TObject);
    procedure DBGridRelEstDblClick(Sender: TObject);
    procedure DBGridRelEstDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnVoltarClick(Sender: TObject);
    procedure EdLocKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdLocEnter(Sender: TObject);
    procedure EdLocClassificEnter(Sender: TObject);
    procedure EdLocClassificKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtImpCaixaClick(Sender: TObject);
    procedure BtImpBancoClick(Sender: TObject);
    procedure BtImpRecClick(Sender: TObject);
    procedure BtImpPgClick(Sender: TObject);
    procedure BtnVoltar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);


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

    //Paulo 18/06/2010: Retorna o fluxo total de despesas e receitas
    Procedure DetalhamentoTotal(XCod_ContaCX: Integer; DTINI, DTFIM: String);
    //Paulo 08/07/2010: retorna o total das tebelas
    procedure RetornaTotal(XCod_ContaCX: Integer; DTINI, DTFIM: String);

  end;

var
  FRelEstrutResult: TFRelEstrutResult;
  XClass, XCONTA1, XCONTA2: String;
  XCREDITOS, XDEBITOS: Real;//Para valores realizados
  XCREDPREV, XDEBPREV: Real;//Para valores previstos
  XCUSTOFIXOPREV, XCUSTOFIXOREAL: Real;
  XPERPREV, XPERREAL: Real;
  XTotalC, XTotalB, XTotalR, XtotalP: Real;


implementation

uses UConsPlncta, UDMConta, UDMMacs, UDMCaixa, Alxor32, UMenu, UPadrao, DB,
  UDMEntrada, UDmBanco, UDMEstoque, UPadraoRodaPe;

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
   If XCod_ContaCP=389 Then
   	XDEBPREV:=0;   
	//EFETUA SQL PARA DEBITOS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add(' SELECT sum(vwparcp.valor) AS VALOR from vwparcp ');
   DMCONTA.TAlx.SQL.Add(' Where (vwparcp.cod_plncta=:COD_CONTA)  AND (vwparcP.fech<>''S'') ');
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
   If DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsString='17' Then
   	XDEBPREV:=0;
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(lancaixa.valor) AS VALOR from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.tipcai='+#39+'E'+#39+')  AND (lancaixa.ESTRU='+#39+'1'+#39+')');
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
   DMCONTA.TAlx.SQL.Add('SELECT sum(lancaixa.valor) AS VALOR from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.tipcai='+#39+'S'+#39+')  AND (lancaixa.ESTRU='+#39+'1'+#39+')');
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
       //SOMENTE PARA ENTRADAS DE PRODUTOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+')  AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))  AND (movbanco.ESTRU='+#39+'1'+#39+') ');
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

   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);

       //SOMENTE PARA SAIDAS de PRODUTOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.VALOR) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')   or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
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
       //REALIZADO SOMENTE PARA ENTRADAS de PRODUTOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA) AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
        End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);

       //REALIZADO SOMENTE PARA SAIDAS DE PRODUTOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA) AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=XCREDITOS-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=XCREDITOS+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;

{       //REALIZADO SOMENTE PARA SAIDAS DE SERVIÇOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valorserv) AS VALOR from movbanco Where (movbanco.cod_plnctaserv=:COD_CONTA) AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=XCREDITOS-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=XCREDITOS+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
       }
		//EFETUA SQL PARA PREVISTOS DE ENTRADA de PRODUTOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech<>'+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2)) ');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDPREV:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);

		{//EFETUA SQL PARA PREVISTOS DE ENTRADA de SERVIÇOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valorserv) AS VALOR from movbanco Where (movbanco.cod_plnctaserv=:COD_CONTA)  AND (movbanco.fech<>'+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2)) ');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=XCREDPREV+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDPREV:=XCREDPREV-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);

          }
		//EFETUA SQL PARA PREVISTOS DE SAIDA de PRODUTOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech<>'+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2)) ');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=XCREDPREV-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDPREV:=XCREDPREV+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;

		{//EFETUA SQL PARA PREVISTOS DE SAIDA de servços
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valorserv) AS VALOR from movbanco Where (movbanco.cod_plnctaserv=:COD_CONTA)  AND (movbanco.fech<>'+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2)) ');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=XCREDPREV-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDPREV:=XCREDPREV+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
          }
	End;

End;

//Retorna Valores em Debitos e Créditos para determinada conta de lançamentos em Ctas Receber
Procedure TFRelEstrutResult.ResultCtaReceber(XCod_ContaCR: Integer; DTINI, DTFIM: String);
Begin
   XCREDITOS:=0;
   XDEBITOS:=0;
   XCREDPREV:=0;
   XDEBPREV:=0;
	//EFETUA SQL PARA CREDITOS NA CONTA COD_PLNCTA PARA PRODUTOS
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('Select Sum(parcelacr.valorprod) AS VALOR from parcelacr ');
   DMCONTA.TAlx.SQL.Add('   left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber Where (CtaReceber.cod_plncta=:COD_CONTA) AND (parcelacr.fech<>'+#39+'S'+#39+')  AND ((parcelacr.antecipado<>'+#39+'1'+#39+') or (parcelacr.antecipado is null)) ');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCR;
   If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   Then Begin
		DMCONTA.TAlx.SQL.Add(' AND ((parcelacr.dtref>=:DT1) And (parcelacr.dtref<=:DT2)) ');
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
   DMCONTA.TAlx.SQL.Add('   left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber Where (CtaReceber.cod_plnctaServ=:COD_CONTA) AND (parcelacr.fech<>'+#39+'S'+#39+')   AND ((parcelacr.antecipado<>'+#39+'1'+#39+') or (parcelacr.antecipado is null)) ');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCR;
   If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   Then Begin
		DMCONTA.TAlx.SQL.Add(' AND ((parcelacr.dtref>=:DT1) And (parcelacr.dtref<=:DT2)) ');
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

    // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
    XTIPO_CONTA := '';

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
    // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
    XTIPO_CONTA := '';

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
  XVLR: Real;
  xVlrReal, xVlrPrev:Real;
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
       If (DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger=141) Then
           DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.Edit;
   	///////////
   	// CAIXA //
       ///////////
   	If DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString='3.1.01.01.0001' Then
       XCREDITOS:=0;

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
   //XTRCMV:=XTRCMV+[DMESTOQUE.TRel."VALCUSTO"*(DMESTOQUE.TRel."QTDEPROD"-DMESTOQUE.TRel."QTDDEV")];
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
       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
           DMCONTA.TALX.SQL.Add(' Select itenspedven.valcomp AS VALOR, itenspedven.qtdeprod ');

       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
           DMCONTA.TALX.SQL.Add(' Select itenspedven.valcusto AS VALOR, itenspedven.qtdeprod');

       If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
           DMCONTA.TALX.SQL.Add(' Select itenspedven.valcomp AS VALOR, itenspedven.qtdeprod ');


       DMCONTA.TALX.SQL.Add(' from itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (pedvenda.situacao='+#39+'FECHADO'+#39+')AND (FormPag.Descricao='+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itenspedven.data>=:DT1) And (itenspedven.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODEMPRESA.Caption;
       DMCONTA.TALX.Open;
       DMCONTA.TALX.First;

       XVLR:=0;

       if not DMCONTA.TAlx.IsEmpty
       then begin
          while not DMCONTA.TAlx.Eof do
          begin
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency*DMCONTA.TAlx.FieldByName('QTDEPROD').AsCurrency;
              If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;

              DMCONTA.TALX.Next;
          end;
       end;

       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+XVLR;
       DMCONTA.TPlnCta.Post;

       //ITENS DE PEDIDOS A PRAZO
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
           DMCONTA.TALX.SQL.Add(' Select itenspedven.valcomp AS VALOR, itenspedven.qtdeprod');

       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
           DMCONTA.TALX.SQL.Add(' Select itenspedven.valcusto AS VALOR, itenspedven.qtdeprod');

       If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
           DMCONTA.TALX.SQL.Add(' Select itenspedven.valcomp AS VALOR, itenspedven.qtdeprod');

       DMCONTA.TALX.SQL.Add(' from itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (pedvenda.situacao='+#39+'FECHADO'+#39+')AND (FormPag.Descricao<>'+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itenspedven.data>=:DT1) And (itenspedven.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODEMPRESA.Caption;
       DMCONTA.TALX.Open;
       DMCONTA.TALX.First;

       XVLR:=0;

       if not DMCONTA.TAlx.IsEmpty
       then begin
          while not DMCONTA.TAlx.Eof do
          begin
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency*DMCONTA.TAlx.FieldByName('QTDEPROD').AsCurrency;
              If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;

              DMCONTA.TALX.Next;
          end;
       end;

       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+XVLR;
       DMCONTA.TPlnCta.Post;

       //ITENS DE ORDEM A VISTA
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
           DMCONTA.TALX.SQL.Add(' Select itprodord.valcomp AS VALOR, itprodord.qtd');

       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
           DMCONTA.TALX.SQL.Add(' Select itprodord.valcusto AS VALOR, itprodord.qtd');

      If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
           DMCONTA.TALX.SQL.Add(' Select itprodord.valcomp AS VALOR, itprodord.qtd');

       DMCONTA.TALX.SQL.Add(' from itprodord left join ordem on itprodord.cod_ordem = ordem.cod_ordem ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (ordem.status='+#39+'FECHADO'+#39+')AND (FormPag.Descricao='+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itprodord.data>=:DT1) And (itprodord.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODEMPRESA.Caption;
       DMCONTA.TALX.Open;
       DMCONTA.TALX.First;

       XVLR:=0;

       if not DMCONTA.TAlx.IsEmpty
       then begin
          while not DMCONTA.TAlx.Eof do
          begin
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency*DMCONTA.TAlx.FieldByName('QTD').AsCurrency;
              If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;

              DMCONTA.TALX.Next;
          end;
       end;

       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+(DMCONTA.TAlx.FieldByName('VALOR').AsCurrency*DMCONTA.TAlx.FieldByName('QTD').AsCurrency);
       DMCONTA.TPlnCta.Post;
       //ITENS DE ORDEM A PRAZO
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
           DMCONTA.TALX.SQL.Add(' Select itprodord.valcomP AS VALOR, itprodord.qtd');

       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
           DMCONTA.TALX.SQL.Add(' Select itprodord.valcusto AS VALOR, itprodord.qtd');

      If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
           DMCONTA.TALX.SQL.Add(' Select itprodord.valcomp AS VALOR, itprodord.qtd');

       DMCONTA.TALX.SQL.Add(' from itprodord left join ordem on itprodord.cod_ordem = ordem.cod_ordem  ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (ordem.status='+#39+'FECHADO'+#39+')AND (FormPag.Descricao<>'+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itprodord.data>=:DT1) And (itprodord.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODEMPRESA.Caption;
       DMCONTA.TALX.Open;
       DMCONTA.TAlx.First;

       XVLR:=0;

       if not DMCONTA.TAlx.IsEmpty
       then begin
          while not DMCONTA.TAlx.Eof do
          begin
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency*DMCONTA.TAlx.FieldByName('QTD').AsCurrency;
              If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;

              DMCONTA.TALX.Next;
          end;
       end;

       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+XVLR;
       DMCONTA.TPlnCta.Post;
   End;

   DMCONTA.IBT.CommitRetaining;

   //ACUMULA VALORES NOS TOTALIZADORES
   LBloco.Caption:='Acumula Totalizadores';
   LBloco.Refresh;
   PComunica.Refresh;

   //Edmar - 14/08/2014 - Busca todo o plano de conta no intervalo escolhido anteriormente
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.classificacao between '+#39+FrmBuscaConta1.EDCodigo.Text+#39+' and '+#39+FrmBuscaConta2.EDCodigo.Text+#39+') AND (plncta.tipo='+#39+'T'+#39+') AND  (plncta.NATUREZA<>'+#39+'X'+#39+') Order By plncta.classificacao desc');
	DMCONTA.TPlnCta.SQL.Text;
	DMCONTA.TPlnCta.Open;

   DMCONTA.TPlnCta.First;
   While Not DMCONTA.TPlnCta.Eof do
   Begin
       //Edmar - 14/08/2014 - Somatório do plano de conta
		DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add(' Select Sum(plncta.vlrreal) AS VLRREAL, Sum(plncta.vlrprev) AS VLRPREV From plncta ');
   	DMCONTA.TAlx.SQL.Add(' Where (plncta.classificacao like '+#39+DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString+'%'+#39+') And (plncta.tipo='+#39+'N'+#39+')');
       DMCONTA.TAlx.SQL.Text;
		DMCONTA.TAlx.Open;
       //Edmar - 14/08/2014 - armazena temporariamente os valores
       //pois será usado a mesmo ibquery
       xVlrReal := DMCONTA.TAlx.FIELDBYNAME('VLRREAL').AsCurrency;
       xVlrPrev := DMCONTA.TAlx.FIELDBYNAME('VLRPREV').AsCurrency;
       
       //Edmar - 14/08/2014 - atualiza manualmente os valores do plano de conta
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add('update plncta set plncta.vlrreal = :real, plncta.vlrprev = :prev where plncta.cod_plncta = :codigo');
       DMCONTA.TAlx.ParamByName('REAL').AsCurrency := xVlrReal;
       DMCONTA.TAlx.ParamByName('PREV').AsCurrency := xVlrPrev;
       DMCONTA.TAlx.ParamByName('CODIGO').AsInteger := DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
       
       DMCONTA.TAlx.ExecSQL;
       
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
           	DMMACS.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODEMPRESA.Caption;
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
   DMCONTA.TPlnCta.SQL.Add(' UPDATE plncta SET plncta.perprev=0, plncta.perreal=0, plncta.vlrprev=0');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.natureza<>'+#39+'X'+#39+') And (plncta.natureza<>'+#39+'#'+#39+')  And (plncta.TIPO='+#39+'T'+#39+')');
	DMCONTA.TPlnCta.ExecSQL;
   DMCONTA.IBT.CommitRetaining;

   //RECALCULA
   LBloco.Caption:='Recalculando Valores';
   LBloco.Refresh;
   PComunica.Refresh;

   //Edmar - 14/08/2014 - Busca todo o plano de conta no intervalo escolhido anteriormente
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
           //Edmar - 14/08/2014 - Somatório do plano de conta
			DMCONTA.TAlx.Close;
   		DMCONTA.TAlx.SQL.Clear;
   		DMCONTA.TAlx.SQL.Add(' Select Sum(plncta.vlrreal) AS VLRREAL, Sum(plncta.vlrprev) AS VLRPREV From plncta ');
   		DMCONTA.TAlx.SQL.Add(' Where (plncta.classificacao like '+#39+DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString+'%'+#39+') And (plncta.tipo='+#39+'N'+#39+')');
       	DMCONTA.TAlx.SQL.Text;
			DMCONTA.TAlx.Open;
           //Edmar - 14/08/2014 - armazena temporariamente os valores
           //pois será usado a mesmo ibquery
           xVlrReal := DMCONTA.TAlx.FIELDBYNAME('VLRREAL').AsCurrency;
	        xVlrPrev := DMCONTA.TAlx.FIELDBYNAME('VLRPREV').AsCurrency;

           //Edmar - 14/08/2014 - atualiza manualmente os valores do plano de conta
           DMCONTA.TAlx.Close;
           DMCONTA.TAlx.SQL.Clear;
           DMCONTA.TAlx.SQL.Add('update plncta set plncta.vlrreal = :real, plncta.vlrprev = :prev where plncta.cod_plncta = :codigo');
           DMCONTA.TAlx.ParamByName('REAL').AsCurrency := xVlrReal;
           DMCONTA.TAlx.ParamByName('PREV').AsCurrency := xVlrPrev;
           DMCONTA.TAlx.ParamByName('CODIGO').AsInteger := DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;

           DMCONTA.TAlx.ExecSQL;
       End;
       DMCONTA.TPlnCta.Next;
   End;
   DMCONTA.IBT.CommitRetaining;
   //Alex: o codigo abaixo foi comentado, pois não podemos fixar calculos pela a sua classificação
   {//RECEITAS - DEDUÇÕES DA RECEITA BRUTA
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
   }
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
   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfEstrutResult.frf');
   FSRel.ShowReport;
end;

procedure TFRelEstrutResult.FormActivate(Sender: TObject);
begin
  inherited;
   Width:=590;
   Height:=390;
   Repaint;
   Caption:='Relatório de Estrutura de Resultado' ;
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

//Paulo 07/07/2010: Detalhar os planos de contas
procedure TFRelEstrutResult.BtnImprimirClick(Sender: TObject);
Var
	XULTORDEM: String;//Armazena a ultima ordem da conta informada
  XVLR: Real;
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
       If (DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger=204) or (DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger=203) Then
           DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.Edit;

   	///////////
   	// CAIXA //
       ///////////
   	If DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString='3.1.04.01.0001' Then
           XCREDITOS:=0;

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
   //XTRCMV:=XTRCMV+[DMESTOQUE.TRel."VALCUSTO"*(DMESTOQUE.TRel."QTDEPROD"-DMESTOQUE.TRel."QTDDEV")];
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
       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
           DMCONTA.TALX.SQL.Add(' Select itenspedven.valcomp AS VALOR, itenspedven.qtdeprod ');

       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
           DMCONTA.TALX.SQL.Add(' Select itenspedven.valcusto AS VALOR, itenspedven.qtdeprod');

       If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
           DMCONTA.TALX.SQL.Add(' Select itenspedven.valcomp AS VALOR, itenspedven.qtdeprod ');


       DMCONTA.TALX.SQL.Add(' from itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (pedvenda.situacao='+#39+'FECHADO'+#39+')AND (FormPag.Descricao='+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itenspedven.data>=:DT1) And (itenspedven.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODEMPRESA.Caption;
       DMCONTA.TALX.Open;
       DMCONTA.TALX.First;

       XVLR:=0;

       if not DMCONTA.TAlx.IsEmpty
       then begin
          while not DMCONTA.TAlx.Eof do
          begin
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency*DMCONTA.TAlx.FieldByName('QTDEPROD').AsCurrency;
              If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;

              DMCONTA.TALX.Next;
          end;
       end;

       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+XVLR;
       DMCONTA.TPlnCta.Post;

       //ITENS DE PEDIDOS A PRAZO
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
           DMCONTA.TALX.SQL.Add(' Select itenspedven.valcomp AS VALOR, itenspedven.qtdeprod');

       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
           DMCONTA.TALX.SQL.Add(' Select itenspedven.valcusto AS VALOR, itenspedven.qtdeprod');

       If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
           DMCONTA.TALX.SQL.Add(' Select itenspedven.valcomp AS VALOR, itenspedven.qtdeprod');

       DMCONTA.TALX.SQL.Add(' from itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (pedvenda.situacao='+#39+'FECHADO'+#39+')AND (FormPag.Descricao<>'+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itenspedven.data>=:DT1) And (itenspedven.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODEMPRESA.Caption;
       DMCONTA.TALX.Open;
       DMCONTA.TALX.First;

       XVLR:=0;

       if not DMCONTA.TAlx.IsEmpty
       then begin
          while not DMCONTA.TAlx.Eof do
          begin
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency*DMCONTA.TAlx.FieldByName('QTDEPROD').AsCurrency;
              If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;

              DMCONTA.TALX.Next;
          end;
       end;

       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+XVLR;
       DMCONTA.TPlnCta.Post;

       //ITENS DE ORDEM A VISTA
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
           DMCONTA.TALX.SQL.Add(' Select itprodord.valcomp AS VALOR, itprodord.qtd');

       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
           DMCONTA.TALX.SQL.Add(' Select itprodord.valcusto AS VALOR, itprodord.qtd');

      If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
           DMCONTA.TALX.SQL.Add(' Select itprodord.valcomp AS VALOR, itprodord.qtd');

       DMCONTA.TALX.SQL.Add(' from itprodord left join ordem on itprodord.cod_ordem = ordem.cod_ordem ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (ordem.status='+#39+'FECHADO'+#39+')AND (FormPag.Descricao='+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itprodord.data>=:DT1) And (itprodord.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODEMPRESA.Caption;
       DMCONTA.TALX.Open;
       DMCONTA.TALX.First;

       XVLR:=0;

       if not DMCONTA.TAlx.IsEmpty
       then begin
          while not DMCONTA.TAlx.Eof do
          begin
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency*DMCONTA.TAlx.FieldByName('QTD').AsCurrency;
              If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;

              DMCONTA.TALX.Next;
          end;
       end;

       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+(DMCONTA.TAlx.FieldByName('VALOR').AsCurrency*DMCONTA.TAlx.FieldByName('QTD').AsCurrency);
       DMCONTA.TPlnCta.Post;
       //ITENS DE ORDEM A PRAZO
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
           DMCONTA.TALX.SQL.Add(' Select itprodord.valcomP AS VALOR, itprodord.qtd');

       If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
           DMCONTA.TALX.SQL.Add(' Select itprodord.valcusto AS VALOR, itprodord.qtd');
           
      If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
           DMCONTA.TALX.SQL.Add(' Select itprodord.valcomp AS VALOR, itprodord.qtd');

       DMCONTA.TALX.SQL.Add(' from itprodord left join ordem on itprodord.cod_ordem = ordem.cod_ordem  ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (ordem.status='+#39+'FECHADO'+#39+')AND (FormPag.Descricao<>'+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itprodord.data>=:DT1) And (itprodord.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODEMPRESA.Caption;
       DMCONTA.TALX.Open;
       DMCONTA.TAlx.First;

       XVLR:=0;

       if not DMCONTA.TAlx.IsEmpty
       then begin
          while not DMCONTA.TAlx.Eof do
          begin
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCOMP' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
              If DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString='VALCUSTO' Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency*DMCONTA.TAlx.FieldByName('QTD').AsCurrency;
              If (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCOMP') and (DMMACS.TLoja.FieldByName('CALCESTESTRUT').AsString<>'VALCUSTO') Then
                  XVLR:=XVLR+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;

              DMCONTA.TALX.Next;
          end;
       end;

       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+XVLR;
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
           	DMMACS.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODEMPRESA.Caption;
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
   DMCONTA.TPlnCta.SQL.Add(' UPDATE plncta SET plncta.perprev=0, plncta.perreal=0, plncta.vlrprev=0');
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
	//Alex - comentamos o código abaixo, para não forçar o calculo baseado em classificação de conta e sim usar as contas calculadas "#"
   {//RECEITAS - DEDUÇÕES DA RECEITA BRUTA
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
	}
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
   DMCONTA.TRel.SQL.Clear;
   DMCONTA.TRel.SQL.Add('Select cod_plncta,classificacao,descricao,vlrprev,vlrreal,tipo from plncta ');
   If RGTipoRel.ItemIndex=0 Then
   	DMCONTA.TRel.SQL.Add(' where plncta.classificacao between '+#39+FrmBuscaConta1.EDCodigo.Text+#39+' and '+#39+FrmBuscaConta2.EDCodigo.Text+#39)
	Else
   	DMCONTA.TRel.SQL.Add(' where plncta.classificacao between '+#39+FrmBuscaConta1.EDCodigo.Text+#39+' and '+#39+FrmBuscaConta2.EDCodigo.Text+#39+ ' AND TIPO = '+#39+'T'+#39);

	If CBVISUCTAVAL.Checked=True Then
   	DMCONTA.TRel.SQL.Add(' AND ((PLNCTA.VLRPREV<>0) OR (PLNCTA.VLRREAL<>0))');

  	DMCONTA.TRel.SQL.Add(' order by plncta.classificacao ');
	DMCONTA.TRel.Open;
   PComunica.Visible:=False;


   DBGridRelEst.Visible:=true;
   BitBtn1.Visible:=true;
   DBGridRelEst.BringToFront;
   DBGridRelEst.Width:=561;
   DBGridRelEst.Height:=290;
   RGTipoEstrut.SendToBack;
   RGTipoEstrut.Visible:=false;
   EdLoc.BringToFront;
   EdLoc.Visible:=True;
   EdLocClassific.Visible:=True;
   EdLocClassific.BringToFront;
   Repaint;
end;



//Paulo 18/06/2010: Retorna todo o fluxo financeiro
Procedure TFRelEstrutResult.DetalhamentoTotal(XCod_ContaCX: Integer; DTINI, DTFIM: String);
var XTipCai:String;
Begin
   //Faz um pesquisa retornando se o plano de conta é do tipo CMV
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT ccf from plncta Where (plncta.cod_plncta=:COD_CONTA)');
   DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
   DMCONTA.TAlx.Open;
   XClass:= DMCONTA.TAlx.FieldByName('CCF').AsString;

   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('SELECT tipcai from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA)AND (lancaixa.ESTRU='+#39+'1'+#39+')');
   if  (DTINI<>'  /  /    ') AND (DTFIM<>'  /  /    ')
   then begin
       DMMACS.TALX.SQL.Add('and (lancaixa.dtrefer between :DT1 and :DT2)');
       DMMACS.TALX.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
       DMMACS.TALX.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
   end;
   DMMACS.TALX.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
   DMMACS.TALX.Open;
   XTipCai:= DMMACS.TALX.FieldByName('TIPCAI').AsString;

   if (XClass <> 'CMV') then
   begin
        //CAIXA
        DMCONTA.TAlx.Close;
        DMCONTA.TAlx.SQL.Clear;
        DMCONTA.TAlx.SQL.Add('SELECT dtlanc,historico,valor,doc,tipcai,dtrefer from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.ESTRU='+#39+'1'+#39+')');
        if  (DTINI<>'  /  /    ') AND (DTFIM<>'  /  /    ')
        then begin
           DMCONTA.TAlx.SQL.Add('and (lancaixa.dtrefer between :DT1 and :DT2)');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
        end;
	     DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
        DMCONTA.TAlx.Open;

        //MOV BANCO
        DMCAIXA.TAlx.Close;
        DMCAIXA.TAlx.SQL.Clear;
        DMCAIXA.TAlx.SQL.Add('SELECT dtlanc,historico,tipoop,valor,valorserv,valorprod,dtmov from movbanco  Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech='+#39+'S'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))  AND (movbanco.ESTRU='+#39+'1'+#39+') ');
        if  (DTINI<>'  /  /    ') AND (DTFIM<>'  /  /    ')
        then begin
           DMCAIXA.TAlx.SQL.add('and (movbanco.DTREF between :DT1 and :DT2)');
           DMCAIXA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
           DMCAIXA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
        end;
	     DMCAIXA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
        DMCAIXA.TAlx.Open;
        DMCAIXA.TAlx.RecordCount;

        //CTAS A RECEBER
        DMENTRADA.TAlx.Close;
        DMENTRADA.TAlx.SQL.Clear;
        DMENTRADA.TAlx.SQL.Add('Select dtlanc,ctareceber.historico,ctareceber.valor,numdoc,parcelacr.dtvenc from ctareceber');
        DMENTRADA.TAlx.SQL.Add('left join parcelacr on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber Where (CtaReceber.cod_plncta=:COD_CONTA) AND (parcelacr.fech<>'+#39+'S'+#39+')');
        if  (DTINI<>'  /  /    ') AND (DTFIM<>'  /  /    ')
        then begin
           DMENTRADA.TAlx.SQL.add('and (parcelacr.dtref between :DT1 and :DT2)');
           DMENTRADA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
           DMENTRADA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
        end;
	     DMENTRADA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
        DMENTRADA.TAlx.Open;

        //CTAS A PAGAR
        DMBANCO.TAlx.Close;
        DMBANCO.TAlx.SQL.Clear;
        DMBANCO.TAlx.SQL.Add('SELECT * from vwparcp Where (vwparcp.cod_plncta=:COD_CONTA)  AND (vwparcp.fech<>'+#39+'S'+#39+')');
        if  (DTINI<>'  /  /    ') AND (DTFIM<>'  /  /    ')
        then begin
           DMBANCO.TAlx.SQL.add('and (vwparcp.dtrefer between :DT1 and :DT2)');
           DMBANCO.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
           DMBANCO.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
        end;
	     DMBANCO.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
        DMBANCO.TAlx.Open;

        RetornaTotal(DMCONTA.TRel.FieldByName('COD_PLNCTA').AsInteger, EdDTIni.Text, EdDtFim.Text);

       //Gerar relatório
       FRDsDet.DataSource:=DMCONTA.DAlx;
       FRDsBanco.DataSource:=DMCAIXA.DAlx;
       FRDsReceb.DataSource:=DMENTRADA.Dalx;
       FRDsPagar.DataSource:=DMBANCO.Dalx;

       //Paulo 15/07/2010: Para montar cabeçalho do relatório
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

          DMMACS.TLoja.Post;
          DMMACS.Transaction.CommitRetaining;
       Width:=1173;
       Height:=550;
       Height:=600;
       Repaint;
   End;
End;

//Paulo 08/07/2010: retorna o total das tabelas
procedure TFRelEstrutResult.RetornaTotal(XCod_ContaCX: Integer; DTINI, DTFIM: String);
var XTipCai: String;
Begin
       XTotalC:=0;
       XTotalB:=0;
       XTotalR:=0;
       XtotalP:=0;

       //Paulo 14/07/2010: Seleciona o tipo de caixa se é E ou S
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('SELECT tipcai from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.ESTRU='+#39+'1'+#39+')');
       if  (DTINI<>'  /  /    ') AND (DTFIM<>'  /  /    ')
       then begin
          DMMACS.TALX.SQL.Add('and (lancaixa.dtrefer between :DT1 and :DT2)');
          DMMACS.TALX.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
          DMMACS.TALX.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       end;
       DMMACS.TALX.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
       DMMACS.TALX.Open;
       XTipCai:= DMMACS.TALX.FieldByName('TIPCAI').AsString;

       //TOTAL CAIXA
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('SELECT sum(lancaixa.valor) AS VALOR from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA)AND (lancaixa.tipcai=:TIPCX) AND (lancaixa.ESTRU='+#39+'1'+#39+')');
       if  (DTINI<>'  /  /    ') AND (DTFIM<>'  /  /    ')
       then begin
          DMESTOQUE.ALX.SQL.Add('and (lancaixa.dtrefer between :DT1 and :DT2)');
          DMESTOQUE.Alx.ParamByName('DT1').AsDate:=StrToDate(DTINI);
	       DMESTOQUE.Alx.ParamByName('DT2').AsDate:=StrToDate(DTFIM);
       end;
	    DMESTOQUE.Alx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
       DMESTOQUE.Alx.ParamByName('TIPCX').AsString:=XTipCai;

       DMESTOQUE.Alx.Open;
       XTotalC:=DMESTOQUE.Alx.FieldByName('VALOR').AsFloat;

       
       //TOTAL BANCO
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('SELECT sum(movbanco.valor)AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)');
       if  (DTINI<>'  /  /    ') AND (DTFIM<>'  /  /    ')
       then begin
          DMESTOQUE.Alx.SQL.add('and (movbanco.dtlanc between :DT1 and :DT2)');
          DMESTOQUE.Alx.ParamByName('DT1').AsDate:=StrToDate(DTINI);
	       DMESTOQUE.Alx.ParamByName('DT2').AsDate:=StrToDate(DTFIM);
       end;
	    DMESTOQUE.Alx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
       DMESTOQUE.Alx.Open;
       XTotalB:= DMESTOQUE.Alx.FieldByName('VALOR').AsFloat;

       //TOTAL CTA RECEBER
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.add('Select Sum(ctareceber.valor) AS VALOR from ctareceber ');
       DMESTOQUE.Alx.SQL.add('left join parcelacr on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber Where (CtaReceber.cod_plncta=:COD_CONTA) AND (parcelacr.fech<>'+#39+'S'+#39+')');
       if  (DTINI<>'  /  /    ') AND (DTFIM<>'  /  /    ')
       then begin
          DMESTOQUE.Alx.SQL.add('and (parcelacr.dtref between :DT1 and :DT2)');
          DMESTOQUE.Alx.ParamByName('DT1').AsDate:=StrToDate(DTINI);
	       DMESTOQUE.Alx.ParamByName('DT2').AsDate:=StrToDate(DTFIM);
       end;
	    DMESTOQUE.Alx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
       DMESTOQUE.Alx.Open;
       XTotalR:= DMESTOQUE.Alx.FieldByName('VALOR').AsFloat;

       //TOTAL CTAS A PAGAR
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('SELECT sum(vwparcp.valor)AS VALOR from vwparcp Where (vwparcp.cod_plncta=:COD_CONTA)  AND (vwparcp.fech<>'+#39+'S'+#39+')');
       if  (DTINI<>'  /  /    ') AND (DTFIM<>'  /  /    ')
       then begin
          DMESTOQUE.Alx.SQL.add('and (vwparcp.dtlanc between :DT1 and :DT2)');
          DMESTOQUE.Alx.ParamByName('DT1').AsDate:=StrToDate(DTINI);
	       DMESTOQUE.Alx.ParamByName('DT2').AsDate:=StrToDate(DTFIM);
       end;
	    DMESTOQUE.Alx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
       DMESTOQUE.Alx.Open;
       XtotalP:= DMESTOQUE.Alx.FieldByName('VALOR').AsFloat;

       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('SELECT classificacao,descricao from plncta Where (plncta.cod_plncta=:COD_CONTA)');
       DMESTOQUE.Alx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
       DMESTOQUE.Alx.Open;
       XClass:= DMESTOQUE.Alx.FieldByName('CLASSIFICACAO').AsString+' - '+DMESTOQUE.Alx.FieldByName('DESCRICAO').AsString;
End;


procedure TFRelEstrutResult.DBGridRelEstDblClick(Sender: TObject);
begin
  inherited;
      if not(DMCONTA.TRel.FieldByName('TIPO').text = 'N')THEN
           MessageDlg('Apenas contas em preto podem ser detalhadas', mtWarning, [mbOK], 0);
      DetalhamentoTotal(DMCONTA.TRel.FieldByName('COD_PLNCTA').AsInteger, EdDTIni.Text, EdDtFim.Text);
      EdLoc.SendToBack;
      EdLoc.Visible:=false;
      EdLocClassific.Visible:=False;
      BtnVoltar1.Visible:=True;
end;


//Paulo 07/07/2010: Procedure para mudar a cor da fonte no dbgrid
procedure TFRelEstrutResult.DBGridRelEstDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  	if not(DMCONTA.TRel.FieldByName('TIPO').text = 'N')THEN
       	DBGridRelEst.Canvas.Font.Color:=cl3DDkShadow
       ELSE
       	DBGridRelEst.Canvas.Font.Color:=clWindowText;
			DBGridRelEst.Canvas.FillRect(Rect);
           DBGridRelEst.DefaultDrawDataCell(Rect, DBGridRelEst.Columns[datacol].Field, State);

end;
//Paulo 07/07/2010: Botão voltar
procedure TFRelEstrutResult.BtnVoltarClick(Sender: TObject);
begin
  inherited;
          DBGridRelEst.SendToBack;
          DBGridRelEst.Visible:=False;
          EdLoc.SendToBack;
          EdLoc.Visible:=false;
          EdLocClassific.Visible:=False;
          BtnVoltar1.Visible:=False;
          BtnVoltar1.SendToBack;
          GroupBox1.BringToFront;
          GroupBox1.Visible:=true;
          FrmBuscaConta1.BringToFront;
          FrmBuscaConta1.Visible:=true;
          FrmBuscaConta2.BringToFront;
          FrmBuscaConta2.Visible:=true;
          RGTipoEstrut.BringToFront;
          RGTipoEstrut.Visible:=true;
          RGTipoRel.BringToFront;
          RGTipoRel.Visible:=true;
          EdDTIni.BringToFront;
          EdDTIni.Visible:=true;
          EdDtFim.BringToFront;
          EdDtFim.Visible:=true;
          DRLabel1.BringToFront;
          DRLabel1.Visible:=true;
          Label1.BringToFront;
          Label1.Visible:=true;
          Label4.BringToFront;
          Label4.Visible:=true;
          Width:=580;
          Height:=380;


end;
//Paulo 07/07/2010: Botão voltar
procedure TFRelEstrutResult.EdLocKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
     DMCONTA.TRel.Locate('DESCRICAO', EdLoc.Text, [loPartialKey,loCaseInsensitive]);
end;

procedure TFRelEstrutResult.EdLocEnter(Sender: TObject);
begin
  inherited;
       EdLoc.Text:='';
end;

procedure TFRelEstrutResult.EdLocClassificEnter(Sender: TObject);
begin
  inherited;
   EdLocClassific.Text:='';
end;

procedure TFRelEstrutResult.EdLocClassificKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
     DMCONTA.TRel.Locate('CLASSIFICACAO', EdLocClassific.Text, [loPartialKey,loCaseInsensitive]);
end;

procedure TFRelEstrutResult.BtImpCaixaClick(Sender: TObject);
begin
  inherited;
  	    FrRelDet.LoadFromFile('C:\MZR\MACS\Rel\FrfMovimentoCaixa.frf');
       FrRelDet.ShowReport;
end;

procedure TFRelEstrutResult.BtImpBancoClick(Sender: TObject);
begin
  inherited;
       FRRelBanco.LoadFromFile('C:\MZR\MACS\Rel\FrfMovimentoBancario.frf');
       FRRelBanco.ShowReport;
end;

procedure TFRelEstrutResult.BtImpRecClick(Sender: TObject);
begin
  inherited;
      FRRelReceb.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaReceber.frf');
      FRRelReceb.ShowReport;
end;

procedure TFRelEstrutResult.BtImpPgClick(Sender: TObject);
begin
  inherited;
      FRRelPagar.LoadFromFile('C:\MZR\MACS\Rel\FrfCtaPagar.frf');
      FRRelPagar.ShowReport;
end;

procedure TFRelEstrutResult.BtnVoltar1Click(Sender: TObject);
begin
  inherited;
   Width:=580;
   Height:=380; 
end;

procedure TFRelEstrutResult.BitBtn1Click(Sender: TObject);
begin
  inherited;
   DBGridRelEst.Visible:=false;
   RGTipoEstrut.Visible:=true;
   EdLoc.Visible:=false;
   EdLocClassific.Visible:=false;
   BitBtn1.Visible:=False;
end;

end.




