unit UConfigEtqProd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, StdCtrls, TFlatHintUnit, Buttons, jpeg, ExtCtrls, Mask, DBCtrls,
  DBColorEdit, Grids, DBGrids, DrLabel;

type
  TFConfigEtqProd = class(TFPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBColorEdit1: TDBColorEdit;
    DBColorEdit2: TDBColorEdit;
    Label4: TLabel;
    DBDesc: TDBColorEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBColorEdit4: TDBColorEdit;
    DBColorEdit5: TDBColorEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBColorEdit6: TDBColorEdit;
    DBColorEdit7: TDBColorEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBColorEdit8: TDBColorEdit;
    DBColorEdit9: TDBColorEdit;
    DBGridCadastroPadrao: TDBGrid;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBColorEdit10: TDBColorEdit;
    DBColorEdit11: TDBColorEdit;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    BtnNovo: TBitBtn;
    BtnApagar: TBitBtn;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBColorEdit3: TDBColorEdit;
    DBColorEdit12: TDBColorEdit;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure GroupBox1Enter(Sender: TObject);
  private
    { Private declarations }
    Procedure AtivBtn;//Procedure responsável por controlar a ativação dos botões
  public
    { Public declarations }
  end;

var
  FConfigEtqProd: TFConfigEtqProd;

implementation

uses UDMMacs, Alxor32;

{$R *.DFM}
Procedure TFConfigEtqProd.AtivBtn;//Procedure responsável por controlar a ativação dos botões
Begin
	If BtnNovo.Enabled=True
   Then Begin
       BtnNovo.Enabled:=False;
       BtnApagar.Enabled:=False;
       BtnGravar.Enabled:=True;
       BtnCancelar.Enabled:=True;
   End
   Else Begin
       BtnNovo.Enabled:=True;
       BtnApagar.Enabled:=True;
       BtnGravar.Enabled:=False;
       BtnCancelar.Enabled:=False;
   End;
End;
procedure TFConfigEtqProd.FormActivate(Sender: TObject);
begin
  inherited;
   FiltraTabela(DMMACS.TEtqProd, 'ETQPROD', '', '', '');
   BtnNovo.Enabled:=False;
   AtivBtn;
   DBGridCadastroPadrao.SetFocus;
end;

procedure TFConfigEtqProd.BtnNovoClick(Sender: TObject);
begin
  inherited;
   AtivBtn;
   DMMACS.TEtqProd.Insert;
   InserReg(DMMACS.TEtqProd, 'ETQPROD', 'COD_ETQPROD');
   DBDesc.SetFocus;
end;

procedure TFConfigEtqProd.BtnGravarClick(Sender: TObject);
begin
//  inherited;
   AtivBtn;
   DMMACS.TEtqProd.Edit;
   DMMACS.TEtqProd.Post;
   DMMACS.Transaction.CommitRetaining;
end;

procedure TFConfigEtqProd.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   AtivBtn;
   DMMACS.TEtqProd.Cancel;
end;

procedure TFConfigEtqProd.BtnApagarClick(Sender: TObject);
begin
  inherited;
   DMMACS.TEtqProd.Delete;
   DMMACS.Transaction.CommitRetaining;
end;

procedure TFConfigEtqProd.GroupBox1Enter(Sender: TObject);
begin
  inherited;
   BtnNovo.Enabled:=True;
   AtivBtn;
end;

end.
