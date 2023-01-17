unit UDMFiscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBDatabase, IBCustomDataSet, IBUpdateSQL, IBQuery, DBClient;

type
  TDMFiscal = class(TDataModule)
    IBTFiscal: TIBTransaction;
    DBFiscal: TIBDatabase;
    TR60: TIBQuery;
    UReg60: TIBUpdateSQL;
    DReg60: TDataSource;
    TAlx: TIBQuery;
    DAlx: TDataSource;
    TAlx2: TIBQuery;
    DAlx2: TDataSource;
    TR60COD_R60: TIntegerField;
    TR60NUMSERIE: TIBStringField;
    TR60DTEMISSAO: TDateField;
    TR60NUMORDEM: TIBStringField;
    TR60MODELODOC: TIBStringField;
    TR60CANCELAMENTO: TIBBCDField;
    TR60DESCONTO: TIBBCDField;
    TR60SUBTRIBUTARIA: TIBBCDField;
    TR60NCONTINI: TIntegerField;
    TR60NCONTFIM: TIntegerField;
    TR60NCONTREDZ: TIntegerField;
    TR60CONTREINICIO: TIntegerField;
    TR60VLRTGERAL: TIBBCDField;
    TR60VLRVNDBRUTA: TIBBCDField;
    TR60ALQ01: TIBBCDField;
    TR60ALQ02: TIBBCDField;
    TR60ALQ03: TIBBCDField;
    TR60ALQ04: TIBBCDField;
    TR60ALQ05: TIBBCDField;
    TR60VLRTPARC01: TIBBCDField;
    TR60VLRTPARC02: TIBBCDField;
    TR60VLRTPARC03: TIBBCDField;
    TR60VLRTPARC04: TIBBCDField;
    TR60VLRTPARC05: TIBBCDField;
    TR60IMP01: TIBBCDField;
    TR60IMP02: TIBBCDField;
    TR60IMP03: TIBBCDField;
    TR60IMP04: TIBBCDField;
    TR60IMP05: TIBBCDField;
    DSpedC100: TDataSource;
    DSpedC190: TDataSource;
    DSpedC170: TDataSource;
    SpedC190: TClientDataSet;
    SpedC100: TClientDataSet;
    SpedC170: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFiscal: TDMFiscal;

implementation

{$R *.DFM}

end.
