unit UMDO;

interface

uses
  SysUtils, Classes, DB, MDOCustomDataSet, MDOQuery, MDODatabase;

type
  TMDO = class(TDataModule)
    DB: TMDODatabase;
    Transac: TMDOTransaction;
    Query: TMDOQuery;
    QConsulta: TMDOQuery;
    QLoja: TMDOQuery;
    TransacLoja: TMDOTransaction;
    QAlx1: TMDOQuery;
    QAlx2: TMDOQuery;
    QView: TMDOQuery;
    DView: TDataSource;
    DConsulta: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MDO: TMDO;

implementation

{$R *.dfm}

end.
