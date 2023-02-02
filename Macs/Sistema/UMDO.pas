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
    function InsertNewEquipamento: Integer;
  end;

var
  MDO: TMDO;

implementation

uses
  UDMPessoa, Alxor32, AlxMessage;

{$R *.dfm}

{ TMDO }

function TMDO.InsertNewEquipamento: Integer;
begin
  Try
    // busca a maior pk
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('select max(equipamento.cod_equipamento) as maximo from equipamento');
    MDO.QConsulta.Open;

    Result := MDO.QConsulta.FieldByName('maximo').AsInteger + 1;

    //Atualiza a tabela código
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' update codigo set codigo.cod_equipamento = :CodigoEquipamento ');
    MDO.Query.ParamByName('CodigoEquipamento').AsInteger := Result;
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('insert into EQUIPAMENTO (COD_EQUIPAMENTO, ATIVO) values (:COD_EQUIPAMENTO, 1)');
    MDO.Query.ParamByName('COD_EQUIPAMENTO').AsInteger := Result;
    MDO.Query.ExecSQL;

    MDO.Transac.CommitRetaining;
    FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', IntToStr(Result), '');
  except
    Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de inserção de novo equipamento. Se o problema persistir reinicie o sistema.', '', 1, 1, false, 'i');
    MDO.Transac.RollbackRetaining;
    raise;
  end;
end;

end.
