unit UCadUnidade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls, DrLabel;

type
  TFCadUnidade = class(TFCadPadraoDesc)
    DBColorEdit1: TDBColorEdit;
    Label2: TLabel;
    CBArredonda: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure EdNomeChange(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadUnidade: TFCadUnidade;

implementation

uses AlxMessage, Alxor32, UDMEstoque;

{$R *.DFM}

procedure TFCadUnidade.FormActivate(Sender: TObject);
begin
  inherited;
    Caption:='Cadastro de Unidades' ;  
    XTabela:=DMEstoque.TUnidade;
    XCampo:='DESC_UNID';
    XPkTabela:='COD_UNIDADE';
    XTransaction:=DMEstoque.TransacEstoque;
    XTab:=True;
    XDescricao:='A Unidade';
    XSQLTABELA:='UNIDADE';
    XLiberaDados:='';
end;

procedure TFCadUnidade.EdNomeChange(Sender: TObject);
begin
  inherited;
    If XTab=True Then
        XTabela.Locate(XCampo, EdNome.Text,[])
    Else
        XView.Locate(XCampo, EdNome.Text,[])
end;

procedure TFCadUnidade.BtnNovoClick(Sender: TObject);
begin
  inherited;
  	 CBArredonda.Checked:=False; 	
    DBDESC.SetFocus;
end;

procedure TFCadUnidade.BtnApagarClick(Sender: TObject);
begin
     If CheckRelation('COD_UNIDADE', DMEstoque.TUnidade.FieldByName('COD_UNIDADE').AsString, ['Produto'], 1)=False Then
        inherited
     Else
         Mensagem('INFORMAÇÃO AO USUÁRIO', 'Esta Unidade já se encontra vinculada a um produto ou serviço e não pode mais ser apagada!', '', 1, 1, True, 'i');     

end;

procedure TFCadUnidade.BtnGravarClick(Sender: TObject);
begin
   XTabela.edit;
   If CBArredonda.Checked=True Then
       XTabela.FieldByName('ARREDONDAR').AsString:='1'
   Else
       XTabela.FieldByName('ARREDONDAR').AsString:='0';
  inherited;
end;

procedure TFCadUnidade.BtnConsultarClick(Sender: TObject);
begin
  inherited;
     If XTabela.FieldByName('ARREDONDAR').AsString='1' Then
     	CBArredonda.Checked:=true
     Else
     	CBArredonda.Checked:=False;     
end;

end.
