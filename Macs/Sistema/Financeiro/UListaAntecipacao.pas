unit UListaAntecipacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UMDO, Grids, DBGrids, ExtCtrls, StdCtrls;

type
  TfrmListaAntecipacao = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    Function RefiltraOrdem: Boolean;
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
    RefiltraOrdem;
end;


end.
