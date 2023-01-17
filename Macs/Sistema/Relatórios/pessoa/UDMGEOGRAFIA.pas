unit UDMGEOGRAFIA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBDatabase, Db, IBCustomDataSet, IBQuery, IBUpdateSQL;

type
  TDMGEOGRAFIA = class(TDataModule)
    IBDB: TIBDatabase;
    IBT: TIBTransaction;
    TAlx: TIBQuery;
    DAlx: TDataSource;
    TCidade: TIBQuery;
    TEstado: TIBQuery;
    TRegiao: TIBQuery;
    UCidade: TIBUpdateSQL;
    UEstado: TIBUpdateSQL;
    URegiao: TIBUpdateSQL;
    DCidade: TDataSource;
    DEstado: TDataSource;
    DRegiao: TDataSource;
    WEstado: TIBQuery;
    DWEstado: TDataSource;
    WCidade: TIBQuery;
    DWCidade: TDataSource;
    WCidadeCOD_CIDADE: TIntegerField;
    WCidadeNOME: TIBStringField;
    WCidadeCOD_ESTADO: TIntegerField;
    WCidadeUF: TIBStringField;
    WCidadeCOD_REGIAO: TIntegerField;
    TCidadeCOD_CIDADE: TIntegerField;
    TCidadeNOME: TIBStringField;
    TCidadeDDD: TIBStringField;
    TCidadeCOD_ESTADO: TIntegerField;
    TCidadeCOD_REGIAO: TIntegerField;
    TCidadeCOD_IBGE: TIntegerField;
    TCidadeCOD_FEDERAL: TIntegerField;
    TEstadoCOD_ESTADO: TIntegerField;
    TEstadoDESCRICAO: TIBStringField;
    TEstadoUF_ESTADO: TIBStringField;
    TEstadoCOD_REGIAO: TIntegerField;
    TEstadoCST_INTERNA: TIBStringField;
    TEstadoCST_EXTERNA: TIBStringField;
    TEstadoALIQINTERNA: TIBBCDField;
    TEstadoALIQINTERESTAUAL: TIBBCDField;
    TEstadoMVA: TIBBCDField;
    TEstadoTXT_SUBSTITUICAO: TIBStringField;
    TEstadoISENTOST: TIBStringField;
    TRegiaoCOD_REGIAO: TIntegerField;
    TRegiaoDESCRICAO: TIBStringField;
    WCidadeCOD_FEDERAL: TIntegerField;
    WEstadoCOD_ESTADO: TIntegerField;
    WEstadoDESCRICAO: TIBStringField;
    WEstadoUF: TIBStringField;
    WEstadoCOD_REGIAO: TIntegerField;
    WEstadoREGIAO: TIBStringField;
    TCidadeCOD_ESTADUAL: TIntegerField;
    TEstadoCOD_CSTINTERESTADUAL: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMGEOGRAFIA: TDMGEOGRAFIA;

implementation

{$R *.DFM}

end.
