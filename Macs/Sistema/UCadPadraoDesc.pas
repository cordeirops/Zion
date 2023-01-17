unit UCadPadraoDesc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadrao, TFlatHintUnit, Grids, DBGrids, StdCtrls,
  TFlatEditUnit, Buttons, jpeg, DBCtrls, ExtCtrls, Mask, DBColorEdit, DB,
  DrLabel;

type
  TFCadPadraoDesc = class(TFCadPadrao)
    Label6: TLabel;
    Label7: TLabel;
    DBPRIMEIRO: TDBColorEdit;
    DBDESC: TDBColorEdit;
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadPadraoDesc: TFCadPadraoDesc;

implementation

uses Alxor32, AlxMessage;

{$R *.DFM}

procedure TFCadPadraoDesc.BtnGravarClick(Sender: TObject);
begin
  inherited;
    TransReg(Xtabela, XTransaction, 'g');
end;

procedure TFCadPadraoDesc.BtnCancelarClick(Sender: TObject);
begin
  inherited;
    TransReg(Xtabela, XTransaction, 'c');
end;

procedure TFCadPadraoDesc.BtnApagarClick(Sender: TObject);
begin
  inherited;
    If XTab=False
    Then Begin
        If Mensagem('Confirmação do usuário', 'Deseja realmente apagar '+ XDescricao+#13+XView.FieldByName(XCampo).AsString+'?', '', 2, 3, False, 'c')=2
        Then Begin
            If FiltraTabela(XTabela, XSQLTABELA, XPkTabela, XView.FieldByName(XPkTabela).AsString, '')=True Then
                TransReg(Xtabela, XTransaction, 'a')
            Else
                Mensagem('Comunicado', XDescricao+ ' Seleção para ser apagada, não foi encontrada na tabela', '', 1, 1, False, 'I');
        End;
    End
    Else Begin
        If Mensagem('Confirmação do usuário', 'Deseja realmente apagar '+ XDescricao+#13+XTabela.FieldByName(XCAMPO).AsString+'?', '', 2, 3, False, 'c')=2
        Then Begin
           TransReg(Xtabela, XTransaction, 'a')
        End;
    End;
    LiberaDados;     
end;

procedure TFCadPadraoDesc.BtnConsultarClick(Sender: TObject);
begin
  inherited;
  if not XTabela.IsEmpty
  Then Begin
        If XTab=False
        Then Begin
            If FiltraTabela(XTabela, XSQLTABELA, XPkTabela, XView.FieldByName(XPkTabela).AsString, '')=True
            Then Begin
                XTabela.Edit;
                DBPRIMEIRO.SetFocus;
            End
            Else Begin
                Mensagem('Comunicado', XDescricao+ ' Seleção para ser apagada, não foi encontrada na tabela', '', 1, 1, False, 'I');
            End;
        End
        Else Begin
            XTabela.Edit;
            DBPRIMEIRO.SetFocus;
        End;
  End;
end;

procedure TFCadPadraoDesc.BtnNovoClick(Sender: TObject);
begin
  inherited;
    XCODPKMESTRE:=InserReg(XTabela, XSQLTABELA, XPkTabela);
    DBPRIMEIRO.SetFocus;
end;
end.
