unit UNcm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  ExtCtrls, Mask, DBCtrls, DBColorEdit;

type
  TFCadNcm = class(TFCadPadrao)
    EdNcm: TFlatEdit;
    Label2: TLabel;
    DBCODINT: TDBColorEdit;
    Label7: TLabel;
    DBDESC: TDBColorEdit;
    Label1: TLabel;
    DBColorEdit1: TDBColorEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBColorEdit2: TDBColorEdit;
    procedure FormActivate(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadNcm: TFCadNcm;

implementation

uses UDMEstoque, Alxor32;

{$R *.dfm}

procedure TFCadNcm.FormActivate(Sender: TObject);
begin
  inherited;
  DBGridCadastroPadrao.DataSource:=DMESTOQUE.DNcm;
  XTabela:=DMEstoque.TNcm;
  XCampo:='DESCRICAO';
  XTransaction:=DMEstoque.TransacEstoque;
  XPkTabela:='NCM';
  XTab:=True;
  XDescricao:= 'O NCM';
  XSQLTABELA:='NCM';
end;

procedure TFCadNcm.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
		If Key=VK_RETURN
   	Then Begin//pressionado enter, consultar
  			If XTab=True Then
  				FiltraTabela(XTabela, XSQLTABELA, XCampo, '', '(upper(descricao) like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY descricao')
    		Else
 				FiltraTabela(XView, XSQLVIEW, XCampo, '',   '(upper(descricao) like upper('+#39+EdNome.Text+'%'+#39+')) ORDER BY descricao');
       End;
       If Key=VK_ESCAPE
       Then Begin //pressionado esc, liberar
           LiberaDados;
       End;
end;

procedure TFCadNcm.BtnGravarClick(Sender: TObject);
begin
   DMESTOQUE.TNcm.Post;
   DMESTOQUE.TransacEstoque.CommitRetaining;
  inherited;
end;

procedure TFCadNcm.BtnCancelarClick(Sender: TObject);
begin
   DMESTOQUE.TNcm.Cancel;
  inherited;
end;

end.
