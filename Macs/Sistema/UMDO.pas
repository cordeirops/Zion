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
    Query1: TMDOQuery;
    Ds01: TDataSource;
    Query2: TMDOQuery;
    DS02: TDataSource;
    Query3: TMDOQuery;
    DS03: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    function InsertNewEquipamento: Integer;
    function AjustaNewEquipamento(CodigoVeicu, ACodCliente, ADesc, AMarca, AModelo, AAno, ACor, AChassi, APlaca,
                                  ADtAquisicao, AKmAtual, AAtivo, ADtAtivo: Variant): Boolean;
  end;

var
  MDO: TMDO;

implementation

uses
  UDMPessoa, Alxor32, AlxMessage;

{$R *.dfm}

{ TMDO }

function TMDO.AjustaNewEquipamento(CodigoVeicu, ACodCliente, ADesc, AMarca, AModelo, AAno, ACor, AChassi, APlaca,
  ADtAquisicao, AKmAtual, AAtivo, ADtAtivo: Variant): Boolean;
begin
   Try
       Result := True;

       MDO.Transac.CommitRetaining;

       MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' update EQUIPAMENTO set');
       MDO.Query.SQL.Add(' COD_CLIENTE = :COD_CLIENTE,');
       MDO.Query.SQL.Add(' DESCRICAO = :DESCRICAO,');
       MDO.Query.SQL.Add('  MARCA = :MARCA,');
       MDO.Query.SQL.Add('  MODELO = :MODELO,');
       MDO.Query.SQL.Add('  ANO = :ANO,');
       MDO.Query.SQL.Add('  CHASSI = :CHASSI,');
       MDO.Query.SQL.Add('  COR = :COR,');
       MDO.Query.SQL.Add('  PLACA = :PLACA,');
       MDO.Query.SQL.Add('  DTAQUISICAO = :DTAQUISICAO,');
       MDO.Query.SQL.Add('  KMATUAL = :KMATUAL,');
       MDO.Query.SQL.Add('  ATIVO = :ATIVO,');
       MDO.Query.SQL.Add('  DTATIVO = :DTATIVO');
       MDO.Query.SQL.Add('where');
       MDO.Query.SQL.Add('  COD_EQUIPAMENTO = :COD_EQUIPAMENTO');
       MDO.Query.ParamByName('COD_EQUIPAMENTO').Value := CodigoVeicu;
       MDO.Query.ParamByName('COD_CLIENTE').Value := ACodCliente;
       MDO.Query.ParamByName('DESCRICAO').Value := ADesc;
       MDO.Query.ParamByName('MARCA').Value := AMarca;
       MDO.Query.ParamByName('MODELO').Value := AModelo;
       MDO.Query.ParamByName('ANO').Value := AAno;
       MDO.Query.ParamByName('COR').Value := ACor;
       MDO.Query.ParamByName('CHASSI').Value := AChassi;
       MDO.Query.ParamByName('PLACA').Value := APlaca;
       MDO.Query.ParamByName('DTAQUISICAO').Value := ADtAquisicao;
       MDO.Query.ParamByName('KMATUAL').Value := AKmAtual;
       MDO.Query.ParamByName('ATIVO').Value := 1;
       MDO.Query.ParamByName('DTATIVO').Value := ADtAtivo;
       MDO.Query.ExecSQL;

       MDO.Transac.CommitRetaining;

       DMPESSOA.TransacPessoa.CommitRetaining;

       DMPESSOA.TEquip.Close;
       DMPESSOA.TEquip.SQL.Clear;
       DMPESSOA.TEquip.SQL.Add(' Select * from EQUIPAMENTO E where E.cod_equipamento = :codigo');
       DMPESSOA.TEquip.ParamByName('codigo').AsInteger := CodigoVeicu;
       DMPESSOA.TEquip.Open;

   Except
       Result := False;

   End;
End;

function TMDO.InsertNewEquipamento: Integer;
begin
   Try
       MDO.Transac.CommitRetaining;
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
       DMPESSOA.TransacPessoa.CommitRetaining;
       FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'COD_EQUIPAMENTO', IntToStr(Result), '');
   except
       Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Falha na tentativa de inserção de novo equipamento. Se o problema persistir reinicie o sistema.', '', 1, 1, false, 'i');
       MDO.Transac.RollbackRetaining;
       raise;
   end;
end;

end.
