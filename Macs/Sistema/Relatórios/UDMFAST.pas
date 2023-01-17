unit UDMFAST;

interface

uses
  SysUtils, Classes, DB, MDOCustomDataSet, MDOQuery, MDODatabase;

type
  TDMFAST = class(TDataModule)
    MDODataBase: TMDODatabase;
    MDOTrans: TMDOTransaction;
    QAlx: TMDOQuery;
    QAlx1: TMDOQuery;
    QAlx2: TMDOQuery;
    QAlx3: TMDOQuery;
    QAlx4: TMDOQuery;
    QItRel: TMDOQuery;
    QItRel1: TMDOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFAST: TDMFAST;

implementation

{$R *.dfm}

end.
