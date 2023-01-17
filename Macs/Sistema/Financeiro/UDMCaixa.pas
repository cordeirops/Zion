unit UDMCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBDatabase, Db, IBCustomDataSet, IBQuery, IBUpdateSQL;

type
  TDMCAIXA = class(TDataModule)
    IBDB: TIBDatabase;
    IBT: TIBTransaction;
    TAlx: TIBQuery;
    DAlx: TDataSource;
    TCaixa: TIBQuery;
    TAbCaixa: TIBQuery;
    TLanCaixa: TIBQuery;
    UCaixa: TIBUpdateSQL;
    UAbCaixa: TIBUpdateSQL;
    ULanCaixa: TIBUpdateSQL;
    DCaixa: TDataSource;
    DAbCAixa: TDataSource;
    DLanCaixa: TDataSource;
    TCaixaPAcess: TIBQuery;
    DSCaixaPAcess: TDataSource;
    TCaixaUsu: TIBQuery;
    UCaixaUsu: TIBUpdateSQL;            
    DCaixaUsu: TDataSource;
    TCaixaUsuCOD_CAIXAUSU: TIntegerField;
    TCaixaUsuCOD_CAIXA: TIntegerField;
    TCaixaUsuCOD_USUARIO: TIntegerField;
    TCaixaUsuCOD_USERMESTRE: TIntegerField;
    TCaixaUsuDTCAD: TDateField;
    TCaixaUsuPRIMDIA: TIBStringField;
    TCaixaUsuULTDIA: TIBStringField;
    TCaixaUsuHORA1: TTimeField;
    TCaixaUsuHORA2: TTimeField;
    WLancCaixa: TIBQuery;
    DWLanCaixa: TDataSource;
    TRel: TIBQuery;
    DSRel: TDataSource;
    TLanCaixaCOD_LANC: TIntegerField;
    TLanCaixaCOD_ABCAIXA: TIntegerField;
    TLanCaixaDTLANC: TDateField;
    TLanCaixaCOD_PLNCTAFIL: TIntegerField;
    TLanCaixaCOD_COTAMOEDA: TIntegerField;
    TLanCaixaTIPOGERADOR: TIBStringField;
    TLanCaixaCOD_GERADOR: TIntegerField;
    TLanCaixaVALOR: TIBBCDField;
    TLanCaixaTIPO: TIBStringField;
    TLanCaixaTIPCAI: TIBStringField;
    TLanCaixaCOD_USUARIO: TIntegerField;
    TLanCaixaDOC: TIBStringField;
    TLanCaixaDTREFER: TDateField;
    TLanCaixaESTRU: TIBStringField;
    TCaixaCOD_CAIXA: TIntegerField;
    TCaixaNUMCAIXA: TIBStringField;
    TCaixaDESCRICAO: TIBStringField;
    TCaixaCOD_LOJA: TIntegerField;
    TCaixaCOD_USUARIO: TIntegerField;
    TCaixaSALDO: TIBBCDField;
    TCaixaTIPOCUPOM: TIBStringField;
    TCaixaPORTACUPOM: TIBStringField;
    TCaixaFRASECUPOM: TIBStringField;
    TCaixaPRIMTITCUPOM: TIBStringField;
    TCaixaSEGTITCUPOM: TIBStringField;
    TCaixaTERTITCUPOM: TIBStringField;
    TCaixaMODELO_IMPRESSORA: TIBStringField;
    TCaixaENDERECO_BD: TIBStringField;
    TCaixaMARK: TIBStringField;
    TLanCaixaATU: TIntegerField;
    TLanCaixaEXPORTA: TSmallintField;
    TCaixaEMITNF: TIBStringField;
    WLancCaixaCOD_LANC: TIntegerField;
    WLancCaixaCOD_ABCAIXA: TIntegerField;
    WLancCaixaCOD_PLNCTAFIL: TIntegerField;
    WLancCaixaDTLANC: TDateField;
    WLancCaixaTIPCAI: TIBStringField;
    WLancCaixaTIPO: TIBStringField;
    WLancCaixaVALOR: TIBBCDField;
    WLancCaixaCLASSIFICACAO: TIBStringField;
    WLancCaixaCOD_LOJA: TIntegerField;
    WLancCaixaDESCRICAO: TIBStringField;
    WLancCaixaCOD_USUARIO: TIntegerField;
    WLancCaixaLOGIN: TIBStringField;
    WLancCaixaDOC: TIBStringField;
    WLancCaixaESTRU: TIBStringField;
    TAbCaixaCOD_ABCAIXA: TIntegerField;
    TAbCaixaCOD_CAIXA: TIntegerField;
    TAbCaixaDTABERTURA: TDateField;
    TAbCaixaHORAABERTURA: TTimeField;
    TAbCaixaSALDOINI: TIBBCDField;
    TAbCaixaSALDOFIN: TIBBCDField;
    TAbCaixaDTFECHA: TDateField;
    TAbCaixaHORAFECHA: TTimeField;
    TAbCaixaFECHADO: TIBStringField;
    TAbCaixaCOD_USUARIO: TIntegerField;
    WLancCaixaTIPOGERADOR: TIBStringField;
    WLancCaixaCOD_GERADOR: TIntegerField;
    TCaixaIMPRESSORA: TIBStringField;
    TLanCaixaSALDOANT: TIBBCDField;
    TLanCaixaHISTORICO: TIBStringField;
    WLancCaixaHISTORICO: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    Function VerifAbCaixa: Boolean;//seesta função retornar true significa que o caixa de logoff já esta aberto
  end;
  Procedure CalcCaixa;//Calcula Saldo de Caixa

var
  DMCAIXA: TDMCAIXA;
  SaldoINI, SaldoAnt, SaldoAtu: Real;//Resultados de Caixa  

implementation

uses UMenu, UDMFinanc;

{$R *.DFM}
Procedure CalcCaixa;//Calcula Saldo de Caixa
Var
    Entradas, Saidas: Real;
Begin
    //Mostra Saldo Anterior
    //Saldo Anterior é o saldo de fechamento da ultima abertura/fechamento de caixa
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('SELECT abcaixa.dtfecha, abcaixa.cod_caixa, SaldoFin, HoraFecha FROM ABCAIXA Where (Fechado='+#39+'S'+#39+') And (COD_CAIXA=:Caixa) Order By DTFecha Desc, HoraFecha Desc');
    DMCAIXA.TAlx.ParamByName('Caixa').AsString:=FMenu.LCODCAIXA.Caption;
    DMCAIXA.TAlx.Open;
    If DMCAIXA.TAlx.FieldByName('SaldoFin').AsString='' Then
        SaldoAnt:=0
    Else
        SaldoAnt:=DMCAIXA.TAlx.FieldByName('SaldoFin').Value;

    //Mostra Saldo Atuais
    //Efetua Sql para calculos atuais
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('SELECT abcaixa.dtfecha, abcaixa.cod_caixa, abcaixa.saldoini AS SaldoFin, HoraFecha FROM ABCAIXA Where (Fechado='+#39+'N'+#39+') And (COD_CAIXA=:Caixa) Order By DTFecha Desc, HoraFecha Desc');
    DMCAIXA.TAlx.ParamByName('Caixa').AsString:=FMenu.LCODCAIXA.Caption;
    DMCAIXA.TAlx.Open;

    //Mostra saldo inicial
	 If DMCAIXA.TAlx.FieldByName('SaldoFin').AsString='' Then
        SaldoIni:=0.00
    Else
        SaldoIni:=DMCAIXA.TAlx.FieldByName('SaldoFin').Value;

    //Calculas entradas em caixa
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('SELECT SUM(VALOR) As SOMA FROM vwlancaixa Where (TipcAI=:Tipo) And (COD_ABCAIXA=:CodigoAbCaixa)');
    DMCAIXA.TAlx.ParamByName('Tipo').AsString:='E';
    DMCAIXA.TAlx.ParamByName('CodigoAbCaixa').AsString:=FMenu.LABCAIXA.Caption;
    DMCAIXA.TAlx.Open;
    If DMCAIXA.TAlx.FieldByName('SOMA').AsString='' Then
        Entradas:=0
    Else
        Entradas:=DMCAIXA.TAlx.FieldByName('SOMA').Value;

    //Calculas Saídas de caixa
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('SELECT SUM(VALOR) As SOMA FROM vwlancaixa Where (TipcAI=:Tipo)  And (COD_ABCAIXA=:CodigoAbCaixa)');
    DMCAIXA.TAlx.ParamByName('Tipo').AsString:='S';
    DMCAIXA.TAlx.ParamByName('CodigoAbCaixa').AsString:=FMenu.LABCAIXA.Caption;
    DMCAIXA.TAlx.Open;
    If DMCAIXA.TAlx.FieldByName('SOMA').AsString='' Then
        Saidas:=0
    Else
        Saidas:=DMCAIXA.TAlx.FieldByName('SOMA').Value;

    //Mostra resultado de saldo na tela
    SaldoAtu:=Entradas-Saidas;
End;

//seesta função retornar true significa que o caixa de logoff já esta aberto
Function TDMCaixa.VerifAbCaixa: Boolean;
Begin
   DMCAIXA.TAlx.Close;
   DMCAIXA.TAlx.SQL.Clear;
   DMCAIXA.TAlx.SQL.Add('SELECT * FROM ABCAIXA WHERE (COD_CAIXA=:CODCAIXA) AND (FECHADO='+#39+'N'+#39+')');
   DMCAIXA.TAlx.ParamByName('CODCAIXA').AsString:=FMenu.LCODCAIXA.Caption;
   DMCAIXA.TAlx.Open;
   If NOT DMCAIXA.TAlx.IsEmpty
   Then Begin
   	Result:=True;//caixa aberto
       FMenu.LABCAIXA.Caption:=DMCAIXA.TAlx.FieldByName('COD_ABCAIXA').AsString;
       FMenu.EdCaixa.Font.Color:=clTeal;
       FMenu.EdCaixa.Hint:='Este caixa se encontra aberto';
       FMenu.LCODCAIXA.Font.Color:=clTeal;
       FMenu.LCODCAIXA.Hint:='Este caixa se encontra aberto';
   End
   Else Begin
       Result:=False;//caixa fechado
		FMenu.LABCAIXA.Caption:='000';
       FMenu.EdCaixa.Font.Color:=clMaroon;
       FMenu.EdCaixa.Hint:='Este caixa se encontra fechado';
       FMenu.LCODCAIXA.Font.Color:=clMaroon;
       FMenu.LCODCAIXA.Hint:='Este caixa se encontra fechado';
   End;
End;

end.
