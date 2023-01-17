unit UDmBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBDatabase, Db, IBCustomDataSet, IBQuery, IBUpdateSQL;

type
  TDMBANCO = class(TDataModule)
    IBDB: TIBDatabase;
    IBT: TIBTransaction;
    TAlx: TIBQuery;
    Dalx: TDataSource;
    TBanco: TIBQuery;
    UBanco: TIBUpdateSQL;
    DBAnco: TDataSource;
    DCtaCor: TDataSource;
    DAgencia: TDataSource;
    TAgencia: TIBQuery;
    TCtaCor: TIBQuery;
    UAgencia: TIBUpdateSQL;
    UCtaCor: TIBUpdateSQL;
    DWAgencia: TDataSource;
    WAgencia: TIBQuery;
    DWCtaCor: TDataSource;
    WCtaCor: TIBQuery;
    TBancoCOD_BANC: TIntegerField;
    TBancoNUMBANCO: TIntegerField;
    TBancoDESCBANCO: TIBStringField;
    TBancoWEBSITE: TIBStringField;
    TAgenciaCOD_AGENCIA: TIntegerField;
    TAgenciaCOD_BANCO: TIntegerField;
    TAgenciaNUMAGENCIA: TIBStringField;
    TAgenciaCOD_PESSOA: TIntegerField;
    DWMovB: TDataSource;
    WMovB: TIBQuery;
    DMovBanco: TDataSource;
    TMovBanco: TIBQuery;
    UpMovBanco: TIBUpdateSQL;
    TChequeRec: TIBQuery;
    UChequeRec: TIBUpdateSQL;
    DChequeRec: TDataSource;
    WChequeRec: TIBQuery;
    DWChequeRec: TDataSource;
    WCtaCorCOD_CTACOR: TIntegerField;
    WCtaCorNUMCTACOR: TIBStringField;
    WCtaCorDTABERT: TDateField;
    WCtaCorCOD_AGENCIA: TIntegerField;
    WCtaCorNUMAGENCIA: TIBStringField;
    WCtaCorDESCBANCO: TIBStringField;
    WCtaCorSALDO: TIBBCDField;
    TChequeRecCOD_CHEQUEREC: TIntegerField;
    TChequeRecCOD_BANCO: TIntegerField;
    TChequeRecNUMAGENCIA: TIBStringField;
    TChequeRecNUMCONTA: TIBStringField;
    TChequeRecCOD_MOVBANCO: TIntegerField;
    TChequeRecEMITENTE: TIBStringField;
    TChequeRecCPFEMIT: TIBStringField;
    WChequeRecBANCO: TIBStringField;
    WChequeRecCLASSCONTA: TIBStringField;
    WChequeRecCONTA: TIBStringField;
    WChequeRecFECH: TIBStringField;
    WChequeRecCOD_MOVBANCO: TIntegerField;
    WChequeRecCOD_CHEQUEREC: TIntegerField;
    WChequeRecNUMAG: TIBStringField;
    WChequeRecNUMCTA: TIBStringField;
    WChequeRecDTLANC: TDateField;
    WChequeRecDTVENC: TDateField;
    WChequeRecDTMOV: TDateField;
    WChequeRecUSUARIO: TIntegerField;
    WChequeRecVALOR: TIBBCDField;
    WChequeRecNUMCHEQUE: TIBStringField;
    WChequeRecHISTORICO: TIBStringField;
    WChequeRecCTACORLAN: TIBStringField;
    WChequeRecEMITENTE: TIBStringField;
    TChequeRecFONE: TIBStringField;
    WChequeRecCPFEMIT: TIBStringField;
    TChequeRecDESTINO: TIBStringField;
    WChequeRecDESTINO: TIBStringField;
    TAbBanco: TIBQuery;
    UAbBanco: TIBUpdateSQL;
    DAbBanco: TDataSource;
    TAbBancoCOD_ABBANCO: TIntegerField;
    TAbBancoCOD_CTACOR: TIntegerField;
    TAbBancoDATA_ABERT: TDateField;
    TAbBancoHORA_ABERTURA: TTimeField;
    TAbBancoSALDOINI: TIBBCDField;
    TAbBancoSALDOFIN: TIBBCDField;
    TAbBancoDTFECH: TDateField;
    TAbBancoHORAFECH: TTimeField;
    TAbBancoFECHADO: TIBStringField;
    TAbBancoCOD_USUARIO: TIntegerField;
    TMovBancoCOD_MOVBANCO: TIntegerField;
    TMovBancoCOD_CTACOR: TIntegerField;
    TMovBancoHORALANC: TTimeField;
    TMovBancoDTLANC: TDateField;
    TMovBancoCOD_PLNCTA: TIntegerField;
    TMovBancoHISTORICO: TIBStringField;
    TMovBancoCOD_USUARIO: TIntegerField;
    TMovBancoDTMOV: TDateField;
    TMovBancoCOD_COTA: TIntegerField;
    TMovBancoVALOR: TIBBCDField;
    TMovBancoTIPOOP: TIBStringField;
    TMovBancoCOBRANCA: TIBStringField;
    TMovBancoDTVENC: TDateField;
    TMovBancoFECH: TIBStringField;
    TMovBancoTIPOGERADOR: TIBStringField;
    TMovBancoCOD_GERADOR: TIntegerField;
    TMovBancoNUMCHEQUE: TIBStringField;
    TMovBancoVER: TIBStringField;
    TMovBancoVALORSERV: TIBBCDField;
    TMovBancoVALORPROD: TIBBCDField;
    TMovBancoCOD_PLNCTASERV: TIntegerField;
    TMovBancoPERVLRSERV: TIBBCDField;
    TMovBancoESTRU: TIBStringField;
    TMovBancoCOD_ABBANCO: TIntegerField;
    TMovBancoDTREF: TDateField;
    TMovBancoMARK: TIBStringField;
    TMovBancoDESTINATARIOCH: TIBStringField;
    WMovBCOD_MOVBANCO: TIntegerField;
    WMovBCOBRANCA: TIBStringField;
    WMovBCOD_CTACOR: TIntegerField;
    WMovBCOD_PLNCTA: TIntegerField;
    WMovBCOD_USUARIO: TIntegerField;
    WMovBDTLANC: TDateField;
    WMovBDTMOV: TDateField;
    WMovBDTVENC: TDateField;
    WMovBFECH: TIBStringField;
    WMovBHISTORICO: TIBStringField;
    WMovBHORALANC: TTimeField;
    WMovBTIPOOP: TIBStringField;
    WMovBVALOR: TIBBCDField;
    WMovBCLASSIFICACAO: TIBStringField;
    WMovBCONTA: TIBStringField;
    WMovBNUMCHEQUE: TIBStringField;
    WMovBVER: TIBStringField;
    WMovBCOD_ABBANCO: TIntegerField;
    WMovBMARK: TIBStringField;
    WMovBDESTINATARIOCH: TIBStringField;
    TCtaCorCOD_CTACOR: TIntegerField;
    TCtaCorCOD_AGENCIA: TIntegerField;
    TCtaCorNUMCTACOR: TIBStringField;
    TCtaCorDTCAD: TDateField;
    TCtaCorDTABERT: TDateField;
    TCtaCorPROXCHEQUE: TIBStringField;
    TCtaCorLIMITE: TIBBCDField;
    TCtaCorSALDO: TIBBCDField;
    TCtaCorNOSSONUMBLT: TIBStringField;
    TCtaCorDIGCTACOR: TIBStringField;
    TCtaCorCODCEDENTEBLT: TIBStringField;
    TCtaCorDIGCODCEDENTEBLT: TIBStringField;
    TCtaCorPROXBOLETO: TIntegerField;
    TCtaCorNUMAGENCBLT: TIBStringField;
    TCtaCorDIGAGENCBLT: TIBStringField;
    TCtaCorINSTRUBOLETO: TMemoField;
    TCtaCorCONTREMESSA: TIntegerField;
    TCtaCorDIASPROT: TIntegerField;
    TCtaCorPROTAUT: TIBStringField;
    TCtaCorCODEMPRESABLT: TIBStringField;
    TCtaCorCODCARTEIRABLT: TIBStringField;
    WAgenciaCOD_AGENCIA: TIntegerField;
    WAgenciaNUMAGENCIA: TIBStringField;
    WAgenciaCOD_BANC: TIntegerField;
    WAgenciaNUMBANC: TIntegerField;
    WAgenciaCOD_PESSOA: TIntegerField;
    WAgenciaNOME: TIBStringField;
    TBancoLOGOBANCO: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
	 //seesta função retornar true significa que o banco de logoff já esta aberto
	 Function VerifAbBanco: Boolean;
  end;


var
  DMBANCO: TDMBANCO;
  XSaldoCta: Real;

implementation

uses UMenu, UDMCaixa;

{$R *.DFM}

//seesta função retornar true significa que o banco de logoff já esta aberto
Function TDMBanco.VerifAbBanco: Boolean;
Begin
   TAbBanco.Close;
   TAbBanco.SQL.Clear;
   TAbBanco.SQL.Add('SELECT * FROM ABBANCO WHERE (COD_CTACOR=:CODBANCO) AND (FECHADO='+#39+'N'+#39+')');
   TAbBanco.ParamByName('CODBANCO').AsString:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
   TAbBanco.Open;
   If NOT TAbBanco.IsEmpty
   Then Begin
   	Result:=True;//caixa aberto
       FMenu.LABBANCO.Caption:=TAbBanco.FieldByName('COD_ABBANCO').AsString;
   End
   Else Begin
       Result:=False;//caixa fechado
       FMenu.LABBANCO.Caption:='-1';
   End;
   XSaldoCta:=TAbBanco.FieldByName('SALDOINI').AsCurrency;
End;

end.
