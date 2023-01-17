unit UDMAtualizaBanco;

interface

uses
  SysUtils, Classes, DB, MDOCustomDataSet, MDOQuery, MDODatabase;

type
  TDMUpBanco = class(TDataModule)
    DB: TMDODatabase;
    Transac: TMDOTransaction;
    QConsulta: TMDOQuery;
    QConsulta1: TMDOQuery;
    QConsulta3: TMDOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMUpBanco: TDMUpBanco;

implementation

{$R *.dfm}

end.
