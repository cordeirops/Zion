unit UListaAntecipacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UMDO, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons;

type
  TfrmListaAntecipacao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BtExcluir: TBitBtn;
    Panel2: TPanel;
    DBGridConsulta: TDBGrid;
    procedure FormActivate(Sender: TObject);
    Function RefiltraOrdem: Boolean;
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaAntecipacao: TfrmListaAntecipacao;
  XCOD_ORDEM: Integer;
  XNumeroOs: Integer;

  COD_MOVIMENTO: Integer;
  TIPO_MOVIMENTO: String;

implementation

uses
  Alxor32, uOrdemMecanica, UAntecipa;

{$R *.dfm}

Function TfrmListaAntecipacao.RefiltraOrdem: Boolean;
begin
  try
    Result := True;
    MDO.Transac.CommitRetaining;
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select * from ANTECIPACOES ');
    MDO.QConsulta.SQL.Add('  where antecipacoes.numero_ordem = :Numero ');
    MDO.QConsulta.ParamByName('Numero').AsInteger := XNumeroOs;
    MDO.QConsulta.Open;

    if not MDO.QConsulta.IsEmpty then
    begin
       Result := True;
    End
    Else Begin
       Result := False;
    End;
  except
    Result := False;
  End;
End;

procedure TfrmListaAntecipacao.FormActivate(Sender: TObject);
begin
    MDO.Transac.CommitRetaining;
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('SELECT ordem.numero FROM ordem WHERE ordem.cod_ordem = :CodigoOrdem');
    MDO.Query.ParamByName('CodigoOrdem').AsInteger := xCod_PedidoPagamento;
    MDO.Query.Open;
    XNumeroOs := MDO.Query.FieldByName('numero').AsInteger;
    Label2.Caption := IntToStr(XNumeroOs);
    DBGridConsulta.OnDrawColumnCell := DBGridConsultaDrawColumnCell;
    RefiltraOrdem;
end;


procedure TfrmListaAntecipacao.DBGridConsultaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  CellString: string;
begin
  if (DataCol = Column.Index) and (Sender is TDBGrid) then
  begin
    CellString := MDO.QConsulta.FieldByName(Column.FieldName).AsString;
    CellString := AnsiUpperCase(Copy(CellString, 1, 1)) + AnsiLowerCase(Copy(CellString, 2, Length(CellString)));
    TDBGrid(Sender).Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, CellString);
  end;
end;


procedure TfrmListaAntecipacao.BtExcluirClick(Sender: TObject);
var
  TIPO_MOVIMENTO: string;
  COD_MOVIMENTO: Integer;
  COD_CHEQUE: Integer;
begin
  TIPO_MOVIMENTO := DBGridConsulta.DataSource.DataSet.FieldByName('TIPO_MOVIMENTO').AsString;
  COD_MOVIMENTO := DBGridConsulta.DataSource.DataSet.FieldByName('COD_MOVIMENTO').AsInteger;
  Try
            if SameText(TIPO_MOVIMENTO, 'Cheque') then
      begin
          MDO.Transac.CommitRetaining;
          MDO.Query2.Close;
          MDO.Query2.SQL.Clear;
          MDO.Query2.SQL.Add('SELECT * FROM CHEQUEREC WHERE COD_MOVBANCO = :CODIGO');
          MDO.Query2.ParamByName('CODIGO').AsInteger := COD_MOVIMENTO;
          MDO.Query2.Open;
          COD_CHEQUE := MDO.Query2.FieldByName('COD_CHEQUEREC').AsInteger;
          MDO.Query2.Close;

          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add('DELETE FROM LANCAIXA WHERE COD_GERADOR = :CODIGO');
          MDO.Query.ParamByName('CODIGO').AsInteger := COD_CHEQUE;
          MDO.Query.ExecSQL;
          MDO.Transac.CommitRetaining;

          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add('DELETE FROM CHEQUEREC WHERE COD_CHEQUEREC = :CODIGO');
          MDO.Query.ParamByName('CODIGO').AsInteger := COD_MOVIMENTO;
          MDO.Query.ExecSQL;
          MDO.Transac.CommitRetaining;

          ShowMessage('SUCESSO NA EXCLUSÃO');
          MDO.Transac.CommitRetaining;
          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add('DELETE FROM ANTECIPACOES WHERE COD_MOVIMENTO = :CODIGO');
          MDO.Query.ParamByName('CODIGO').AsInteger := COD_MOVIMENTO;
          MDO.Query.ExecSQL;
          MDO.Transac.CommitRetaining;
          RefiltraOrdem;
      end;


      if SameText(TIPO_MOVIMENTO, 'Carteira') then
      begin
          MDO.Transac.CommitRetaining;
          MDO.Query1.Close;
          MDO.Query1.SQL.Clear;
          MDO.Query1.SQL.Add('DELETE FROM LANCAIXA WHERE COD_LANC = :CODIGO');
          MDO.Query1.ParamByName('CODIGO').AsInteger := COD_MOVIMENTO;
          MDO.Query1.ExecSQL;
          MDO.Transac.CommitRetaining;
          ShowMessage('SUCESSO NA EXCLUSÃO');
          MDO.Transac.CommitRetaining;
          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add('DELETE FROM ANTECIPACOES WHERE COD_MOVIMENTO = :CODIGO');
          MDO.Query.ParamByName('CODIGO').AsInteger := COD_MOVIMENTO;
          MDO.Query.ExecSQL;
          MDO.Transac.CommitRetaining;
          RefiltraOrdem;
      end;

      if SameText(TIPO_MOVIMENTO, 'PIX') or SameText(TIPO_MOVIMENTO, 'Banco') then
      begin
          MDO.Transac.CommitRetaining;
          MDO.Query1.Close;
          MDO.Query1.SQL.Clear;
          MDO.Query1.SQL.Add('DELETE FROM MOVBANCO WHERE COD_MOVBANCO = :CODIGO');
          MDO.Query1.ParamByName('CODIGO').AsInteger := COD_MOVIMENTO;
          MDO.Query1.ExecSQL;
          MDO.Transac.CommitRetaining;
          ShowMessage('SUCESSO NA EXCLUSÃO');
          MDO.Transac.CommitRetaining;
          MDO.Query.Close;
          MDO.Query.SQL.Clear;
          MDO.Query.SQL.Add('DELETE FROM ANTECIPACOES WHERE COD_MOVIMENTO = :CODIGO');
          MDO.Query.ParamByName('CODIGO').AsInteger := COD_MOVIMENTO;
          MDO.Query.ExecSQL;
          MDO.Transac.CommitRetaining;
          RefiltraOrdem;
      end;
  except
    // Em caso de erro, faça o rollback da transação
    MDO.Transac.Rollback;
    raise; // Re-levanta a exceção após o rollback
  end;
end;

end.
