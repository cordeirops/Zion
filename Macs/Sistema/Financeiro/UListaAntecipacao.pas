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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaAntecipacao: TfrmListaAntecipacao;
  XCOD_ORDEM: Integer;
  XNumeroOS: Integer;
  NumeroOS: Integer;

implementation

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
    MDO.QConsulta.ParamByName('Numero').AsInteger := NumeroOs;
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
    Label2.Caption := IntToStr(xNumeroOS);
    NumeroOs := XNumeroOs;
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

end.
