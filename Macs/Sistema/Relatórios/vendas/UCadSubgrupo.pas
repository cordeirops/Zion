Unit UCadSubgrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UCadPadraoDesc, TFlatHintUnit, Mask, DBCtrls, DBColorEdit,
  Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit, jpeg, ExtCtrls,
  DBColorComboBox, FR_Class, FR_DSet, FR_DBSet, DrLabel;

type
  TFCadSubgrupo = class(TFCadPadraoDesc)
    DBCODINT: TDBColorEdit;
    Label2: TLabel;
    FRDSSUBGrupo: TfrDBDataSet;
    FRSUBGrupo: TfrReport;
    procedure FormActivate(Sender: TObject);
    procedure BTNOPENGRUPOClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadSubgrupo: TFCadSubgrupo;

implementation

uses AlxMessage, Alxor32, UDMEstoque, UMenu, UCadPadrao, UDMMacs;

{$R *.DFM}

procedure TFCadSubgrupo.FormActivate(Sender: TObject);
begin
  inherited;
    XTabela:=DMEstoque.TSubgru;
    XCampo:='Descricao';
    XPkTabela:='COD_SUBGRUPOPROD';
    XTransaction:=DMEstoque.TransacEstoque;
    //XView:=DMEstoque.VWSubGru;
    XTab:=True;
    XDescricao:='o Subgrupo';
    XSQLTABELA:='SUBGRUPOPROD';
    If FMenu.TIPOAUX='SERVICO' Then
    	XLiberaDados:=' Where (TIPO='+#39+'S'+#39+') ORDER BY DESCRICAO'
    Else
    	XLiberaDados:=' Where (TIPO='+#39+'P'+#39+') ORDER BY DESCRICAO';
	 LiberaDados;

    DBGridCadastroPadrao.DataSource := DMESTOQUE.DSSubgru;

end;

procedure TFCadSubgrupo.BTNOPENGRUPOClick(Sender: TObject);
begin
  inherited;
     AbrirForm(TFCadSubGrupo, FCadSubGrupo, 1);
end;

procedure TFCadSubgrupo.BtnNovoClick(Sender: TObject);
begin
  inherited;
  	 XTabela.FieldByName('COD_INTERNO').AsString:=UltCodInt('SUBGRUPOPROD', 'GRUPO');
    DBCODINT.SetFocus;
end;

procedure TFCadSubgrupo.BtnApagarClick(Sender: TObject);
begin
	If FiltraTabela(DMMACS.TALX, 'PRODUTO', 'cod_subgrupoprod', DMEstoque.TSubgru.FieldByName('COD_SUBGRUPOPROD').AsString, '') = False
   Then Begin
		If FiltraTabela(DMMACS.TALX, 'servico', 'cod_subgruposerv', DMEstoque.TSubgru.FieldByName('COD_SUBGRUPOPROD').AsString, '') = False
       Then Begin
           Registra('APAGA SUBGRUPO', 'Cód: '+DMEstoque.TSubgru.FieldByName('COD_SUBGRUPOPROD').AsString, DateToStr(Date()), Copy('SubGrupo: '+DMEstoque.TSubgru.FieldByName('DESCRICAO').AsString,0, 30), '');
       	inherited
       End
     	Else Begin
       	Mensagem('INFORMAÇÃO AO USUÁRIO', 'Este SubGrupo já se encontra vinculado a um produto e não pode mais ser apagado!', '', 1, 1, True, 'i');
		End;
	End
   Else Begin
     	Mensagem('INFORMAÇÃO AO USUÁRIO', 'Este SubGrupo já se encontra vinculado a um produto e não pode mais ser apagado!', '', 1, 1, True, 'i');
   End;
end;

procedure TFCadSubgrupo.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
   LiberaDados;
   FRSUBGrupo.LoadFromFile('C:\MZR\MACS\Rel\FrfSUBGRUPO.frf');
   FRSUBGrupo.ShowReport;
end;

procedure TFCadSubgrupo.BtnGravarClick(Sender: TObject);
begin
	If FMenu.TIPOAUX='SERVICO' Then
   	DMESTOQUE.TSubgru.FieldByName('TIPO').AsString:='S'
   Else
       DMESTOQUE.TSubgru.FieldByName('TIPO').AsString:='P';

  inherited;

end;

end.
