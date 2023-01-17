unit UDMFinanc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBUpdateSQL, IBQuery, IBDatabase, IBEvents, ExtCtrls;

type
  TDMFINANC = class(TDataModule)
    DataBase: TIBDatabase;
    Transaction: TIBTransaction;
    TAlx: TIBQuery;
    UPMoeda: TIBUpdateSQL;
    DSMoeda: TDataSource;
    TCotaMoeda: TIBQuery;
    UPCotaMoeda: TIBUpdateSQL;
    DSCotaMoeda: TDataSource;
    TCotaMoedaCOD_COTA: TIntegerField;
    TCotaMoedaCOD_MOEDA: TIntegerField;
    TCotaMoedaCOD_MOEDAREF: TIntegerField;
    TCotaMoedaVALOR: TIBBCDField;
    TCotaMoedaDATA: TDateField;
    TAlxMoeda: TIBQuery;
    DSAlxMoeda: TDataSource;
    TFormPag: TIBQuery;
    UPFORMPAG: TIBUpdateSQL;
    DSFORMPAG: TDataSource;
    DSALX: TDataSource;
    TMOEDA: TIBQuery;
    TMOEDACOD_MOEDA: TIntegerField;
    TMOEDAMOEDA: TIBStringField;
    TMOEDAPLURALMOEDA: TIBStringField;
    TMOEDAFRACAO: TIBStringField;
    TMOEDAPLURALFRACAO: TIBStringField;
    TMOEDAORIGEM: TIBStringField;
    TMOEDASIMBOLO: TIBStringField;
    TimerAtu: TTimer;
    TSelctComProd: TIBQuery;
    DSelectComProd: TDataSource;
    DSelectComServ: TDataSource;
    TSelectComserv: TIBQuery;
    TRel: TIBQuery;
    DRel: TDataSource;
    TComis: TIBQuery;
    UCOMIS: TIBUpdateSQL;
    DCOMISS: TDataSource;
    TSlctComis: TIBQuery;
    USlctComis: TIBUpdateSQL;
    DSlctComis: TDataSource;
    TCredito: TIBQuery;
    UCredito: TIBUpdateSQL;
    DCredito: TDataSource;
    TCreditoCOD_CREDITO: TIntegerField;
    TCreditoCOD_PESSOA: TIntegerField;
    TCreditoCOD_GERADOR: TIntegerField;
    TCreditoTIPOPES: TIBStringField;
    TCreditoTIPOCRED: TIBStringField;
    TCreditoVALOR: TIBBCDField;
    TCreditoSALDO: TIBBCDField;
    TCreditoDOCUMENTO: TIBStringField;
    TCreditoDATA: TDateField;
    TCreditoTIPOGERADOR: TIBStringField;
    TComisCOD_COMISSAO: TIntegerField;
    TComisCOD_GERADOR: TIntegerField;
    TComisGERADOR: TIBStringField;
    TComisCOD_FUNCIONARIO: TIntegerField;
    TComisVLRPROD: TIBBCDField;
    TComisVLRSERV: TIBBCDField;
    TComisPERPROD: TIBBCDField;
    TComisPERSERV: TIBBCDField;
    TComisVLRCOMISPROD: TIBBCDField;
    TComisVLRCOMISSERV: TIBBCDField;
    TFormPagCOD_FORMPAG: TIntegerField;
    TFormPagCOD_LOJA: TIntegerField;
    TFormPagDESCRICAO: TIBStringField;
    TFormPagDESCFISC: TIBStringField;
    TFormPagPRIMPARCELA: TIntegerField;
    TFormPagINTERVALO: TIntegerField;
    TFormPagQUANTPARCELA: TIntegerField;
    TFormPagJUROAPLIC: TFloatField;
    TFormPagMEDIADIAS: TIntegerField;
    TFormPagTIPO: TIBStringField;
    TFormPagCOD_INTERNO: TSmallintField;
    TFormPagATIVADESC: TIBStringField;
    TFormPagDESCFORMPAG: TFloatField;
    TFormPagMOBILE: TIBStringField;
    DCartao: TDataSource;
    TCartao: TIBQuery;
    TCartaoCOD_CARTAO: TIntegerField;
    TCartaoDESCRICAO: TIBStringField;
    TCartaoTAXA: TIBBCDField;
    TCartaoPARCINI: TSmallintField;
    TCartaoPARCFIN: TSmallintField;
    UCartao: TIBUpdateSQL;
    TCartaoBANDEIRA: TIBStringField;
    procedure TCtaCorBeforePost(DataSet: TDataSet);
    procedure TAgenciaBeforePost(DataSet: TDataSet);
    procedure EFINANCEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure TLancCaixaBeforePost(DataSet: TDataSet);
    procedure TParcelaCRBeforePost(DataSet: TDataSet);
    procedure TCtaPagarBeforePost(DataSet: TDataSet);
    procedure TCtaReceberBeforePost(DataSet: TDataSet);
    procedure TFormPagBeforePost(DataSet: TDataSet);
    procedure TParcelaCPBeforePost(DataSet: TDataSet);
    procedure TimerAtuTimer(Sender: TObject);
    procedure TPlanoContasBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    XValExtens: String;    
  end;
var
  DMFINANC: TDMFINANC;
  TABTRANSACT: array[0..65] of TIBQuery;
  TABINDEX: array[0..65] of Integer;


implementation

uses UMenu, Alxor32;

{$R *.DFM}


procedure TDMFINANC.TCtaCorBeforePost(DataSet: TDataSet);
begin
{***    TCtaCor.FieldByName('COD_AGENCIA').Value:=VWAgencia.fieldbyName('cod_AGENCIA').Value;***}
end;

procedure TDMFINANC.TAgenciaBeforePost(DataSet: TDataSet);
begin
{***    TAgencia.FieldByName('COD_BANCO').Value:=DMFinanc.TBanco.fieldbyName('COD_BANC').Value;
    TAgencia.FieldByName('COD_PESSOA').Value:=DMPESSOA.TPESSOA.fieldbyName('cod_pessoa').Value;***}
end;

procedure TDMFINANC.EFINANCEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
    //**********************************************************
    // T R A T A M E N T O   P A R A   A L T E R A Ç Õ E S
    //**********************************************************

{***    //Atualização para alterações em planos de conta
    If (EventName='UPDATEPLNCTA') OR (EventName='INSPLNCTA') OR (EventName='DELPLNCTA')
    Then Begin
        If Not (TPlanoContas.state in [dsinsert, dsedit])
        Then Begin
            Atu(TPlanoContas);
        End;
    End;
    //Atualização para alterações em moeda
    If (EventName='UPDATEMOEDA') OR (EventName='INSMOEDA') OR (EventName='DELMOEDA')
    Then Begin
        If Not (TMoeda.state in [dsinsert, dsedit])
        Then Begin
            Atu(TMoeda);
            Atu(TAlxMoeda);
        End;
    End;
    //Atualização para alterações em cotação de moeda
    If (EventName='UPDATECOTAMOEDA') OR (EventName='INSCOTAMOEDA') OR (EventName='DELCOTAMOEDA')
    Then Begin
        If Not (TCotaMoeda.state in [dsinsert, dsedit])
        Then Begin
            Atu(TCotaMoeda);
            Atu(VWCotaMoeda);
        End;
    End;
    //Atualização para alterações em Caixa
    If (EventName='UPDATECAIXA') OR (EventName='INSCAIXA') OR (EventName='DELCAIXA')
    Then Begin
        If Not (TCaixa.state in [dsinsert, dsedit])
        Then Begin
            Atu(TCaixa);
        End;
    End;
    //Atualização para alterações Abertura de Caixa
    If (EventName='UPDATEABCAIXA') OR (EventName='DELABCAIXA') OR (EventName='INSABCAIXA')
    Then Begin
        If Not (TABCaixa.state in [dsinsert, dsedit])
        Then Begin
            Atu(TABCaixa);
        End;
    End;
    //Atualização para alterações em Lançamento de Caixa
    If  (EventName='UPDATELANCAIXA') OR (EventName='INSLANCAIXA') OR (EventName='DELLANCAIXA')
    Then Begin
        If Not (TLancCaixa.state in [dsinsert, dsedit])
        Then Begin
            Atu(TLancCaixa);
            Atu(VWLancCaixa);
            //Efetua Calculo de Saudos de cx
            CalcCaixa;
        End;
    End;
    //Atualização para alterações em Forma de pagamento
    If  (EventName='UPDATEFORMPAG') OR (EventName='INSFORMPAG') OR (EventName='DELFORMPAG')
    Then Begin
        If Not (TFormPag.state in [dsinsert, dsedit])
        Then Begin
            Atu(TFormPag);
        End;
    End;
    //Atualização para alterações Contas a pagar
    If (EventName='UPDATECTAPAGAR') OR (EventName='DELCTAPAGAR') OR (EventName='INSCTAPAGAR')
    Then Begin
        If Not (TCtaPagar.state in [dsinsert, dsedit])
        Then Begin
            Atu(TCtaPagar);
            Atu(VWCTAP);
        End;
    End;

    //Atualização para alterações parcelas cta pagar
    If (EventName='UPDATEPARCELACP') OR (EventName='DELPARCELACP') OR (EventName='INSPARCELACP')
    Then Begin
        If Not (TParcelaCP.state in [dsinsert, dsedit])
        Then Begin
            Atu(VWPARCP);
        End;
    End;

    //Atualização para alterações CHEQUE EMITIDO
    If (EventName='UPDATECHEQUEMIT') OR (EventName='INSCHEQUEMIT') OR (EventName='DELCHEQUEMIT')
    Then Begin
           { TODO -oALEX : Implementar atualização para emissão de cheques }
{        If Not (TBanco.state in [dsinsert, dsedit])
        Then Begin
            Atu(TBanco);
        End;***}
{***    End;

    //Atualização para alterações Parcelas Contas a pagar
    If (EventName='UPDATECTARECEBER') OR (EventName='DELCTARECEBER') OR (EventName='INSCTARECEBER')
    Then Begin
        If Not (TCtaReceber.state in [dsinsert, dsedit])
        Then Begin
            Atu(TCtaReceber);
            Atu(VWCTAR);
        End;
    End;

    //Atualização para alterações parcelas cta receber
    If (EventName='UPDATEPARCELACR') OR (EventName='DELPARCELACR') OR (EventName='INSPARCELACR')
    Then Begin
        If Not (TParcelaCR.state in [dsinsert, dsedit])
        Then Begin
            Atu(VWPARCR);
        End;
    End;

    //Atualização para alterações CHEQUE receber
    If (EventName='UPDATECHEQUEREC') OR (EventName='INSCHEQUEREC') OR (EventName='DELCHEQUEREC')
    Then Begin
           { TODO -oALEX : Implementar atualização para recebimento de cheques }
{        If Not (TBanco.state in [dsinsert, dsedit])
        Then Begin
            Atu(TBanco);
        End;***}
{***    End;
    //Atualização para alterações em Banco
    If (EventName='UPDATEBANCO') OR (EventName='INSBANCO') OR (EventName='DELBANCO')
    Then Begin
        If Not (TBanco.state in [dsinsert, dsedit])
        Then Begin
            Atu(TBanco);
        End;
    End;

    //Atualização para alterações em Agencia
    If (EventName='UPDATEAGENCIA') OR (EventName='INSAGENCIA') OR (EventName='DELAGENCIA')
    Then Begin
        If Not (TAgencia.state in [dsinsert, dsedit])
        Then Begin
            Atu(TAgencia);
            Atu(VWAgencia);
        End;
    End;
    //Atualização para alterações em Conta Corrente
    If (EventName='UPDATECTACOR') OR (EventName='INSCTACOR') OR (EventName='DELCTACOR')
    Then Begin
        If Not (TCtaCor.state in [dsinsert, dsedit])
        Then Begin
            Atu(TCtaCor);
            Sleep(100);
            Atu(VWCTACOR);
        End;
    End;
    //Atualização para alterações em Conta Corrente da Filial
    If (EventName='UPDATECTACORFIL') OR (EventName='INSCTACORFIL') OR (EventName='DELCTACORFIL')
    Then Begin
        If Not (TCtaCorFil.state in [dsinsert, dsedit])
        Then Begin
            Atu(TCtaCorFil);
        End;
    End;
    //Atualização para alterações em Movimentos bancários
    If (EventName='UPDATEMOVBANCO') OR (EventName='INSMOVBANCO') OR (EventName='DELMOVBANCO')
    Then Begin
           { TODO -oALEX : Implementar atualização para movimentos bancários }
{        If Not (TCtaCorFil.state in [dsinsert, dsedit])
        Then Begin
            Atu(TCtaCorFil);
        End;                ***}
{***    End;***}

end;

procedure TDMFINANC.DataModuleCreate(Sender: TObject);
begin
//    EFINANC.Registered:=true;
end;

procedure TDMFINANC.TLancCaixaBeforePost(DataSet: TDataSet);
begin
{***    TLancCaixa.FieldByName('COD_COTAMOEDA').Value:=VWCotaMoeda.fieldbyName('cod_cota').Value;
    TLancCaixa.FieldByName('COD_ABCAIXA').Value:=FMenu.LABCAIXA.Caption;***}
end;

procedure TDMFINANC.TParcelaCRBeforePost(DataSet: TDataSet);
begin
{***    TParcelaCR.FieldByName('COD_CTARECEBER').Value:=TCtaRECEBER.FieldByName('COD_CTARECEBER').Value;***}
end;

procedure TDMFINANC.TCtaPagarBeforePost(DataSet: TDataSet);
begin
{***    If (FMenu.LCODUSUARIO.Caption<>'0000') And (FMenu.LCODUSUARIO.Caption<>'10000') Then
	    TCtaPagar.FieldByName('COD_USUARIO').Value:=StrToFloat(FMenu.LCODUSUARIO.Caption);
    TCtaPagar.FieldByName('DTLANC').AsString:=DateToStr(Date());***}
end;

procedure TDMFINANC.TCtaReceberBeforePost(DataSet: TDataSet);
begin
//    SelectMoeda;
//    TCtaRECEBER.FieldByName('COD_COTAMOEDA').Value:=TAlxMoeda.FieldByName('COD_COTA').Value;
{***    If (FMenu.LCODUSUARIO.Caption<>'0000') And (FMenu.LCODUSUARIO.Caption<>'10000') Then
	    TCtaRECEBER.FieldByName('COD_USUARIO').Value:=StrToFloat(FMenu.LCODUSUARIO.Caption);
    TCtaRECEBER.FieldByName('DTLANC').AsString:=DateToStr(Date());***}
end;

procedure TDMFINANC.TFormPagBeforePost(DataSet: TDataSet);
begin
{***    TFormPag.FieldByName('COD_LOJA').AsInteger:=StrToInt(FMenu.LCODLOJA.Caption);***}
end;

procedure TDMFINANC.TParcelaCPBeforePost(DataSet: TDataSet);
begin
{***    TParcelaCP.FieldByName('COD_CTAPAGAR').Value:=TCtaPAGAR.FieldByName('COD_CTAPAGAR').Value;***}
end;

procedure TDMFINANC.TimerAtuTimer(Sender: TObject);
begin
{    If not (Transaction.InTransaction)
    Then Begin
        AtuTabTransac;
    End;}
end;

procedure TDMFINANC.TPlanoContasBeforePost(DataSet: TDataSet);
begin
{***PlanoContas.FieldByName('COD_FILIAL').AsInteger:=StrToInt(FMenu.LCODEMPRESA.Caption);***}
end;
end.
