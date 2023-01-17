unit UDMRel;

interface

uses
  SysUtils, Classes, RpRave, RpBase, RpFiler, RpSystem, RpDefine, RpCon,
  RpConDS;

type
  TDMRel = class(TDataModule)
    RvDsEspelhoPonto: TRvDataSetConnection;
    RvSystem1: TRvSystem;
    RvNDRWriter1: TRvNDRWriter;
    RVProjeto: TRvProject;
    RvDsTotalizador: TRvDataSetConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRel: TDMRel;

implementation

{$R *.dfm}

end.
