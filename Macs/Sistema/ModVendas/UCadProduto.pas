unit UCadProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadPadrao, Buttons, Grids, DBGrids, StdCtrls, TFlatEditUnit,
  ExtCtrls, DrLabel, jpeg, Mask, DBCtrls, DBColorEdit, FR_DSet, FR_DBSet,
  FR_Class, EditFloat, ColorEditFloat;

type
  TFCadProduto = class(TFCadPadrao)
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    DBPRIMEIRO: TDBColorEdit;
    DBDESC: TDBColorEdit;
    DBCODINT: TDBColorEdit;
    GroupBox2: TGroupBox;
    BtnAddGrupo: TBitBtn;
    EDCODGRUPO: TColorEditFloat;
    DBGRUPO: TColorEditFloat;
    GroupBox3: TGroupBox;
    BtnAddSubGrupo: TBitBtn;
    EDCODSUBGRUPO: TColorEditFloat;
    DBSUBGRUPO: TColorEditFloat;
    BitBtn1: TBitBtn;
    CBInativo: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnAddGrupoClick(Sender: TObject);
    procedure BtnAddSubGrupoClick(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure DBGridCadastroPadraoDblClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadProduto: TFCadProduto;
  XCod_Grupo, XCod_Subgrupo, XCod_UltimoGrupo, XCod_UltimoSubGrupo: Integer;//Codigos para controle de alteração de grupo e subgrupo

implementation

uses AlxMessage, Alxor32, UDMEstoque, UMenu, UDMMacs, UCadPadraoDesc,
  UProduto, UCadGrupo, UCadSubgrupo, DB;

{$R *.dfm}

procedure TFCadProduto.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Grade de Produtos' ;  
	XTabela:=DMESTOQUE.TProduto;
    XCampo:='Descricao';
    XPkTabela:='COD_PRODUTO';
    XTransaction:=DMEstoque.TransacEstoque;
    XTab:=True;
    XDescricao:='O Produto';
    XSQLTABELA:='PRODUTO';


    DBGridCadastroPadrao.DataSource := DMESTOQUE.DSProduto;
end;

procedure TFCadProduto.BtnNovoClick(Sender: TObject);
begin
  inherited;
	CBInativo.Checked := False;
   XCODPKMESTRE:=InserReg(XTabela, XSQLTABELA, XPkTabela);
   DBPRIMEIRO.SetFocus;
   XTabela.FieldByName('COD_INTERNO').AsString:=UltCodInt('PRODUTO', 'GRUPO');
   DBCODINT.SetFocus;
	XSTATE:='INSERT';
end;

procedure TFCadProduto.BtnApagarClick(Sender: TObject);
begin
	If FiltraTabela(DMMACS.TALX, 'SubProduto', 'COD_PRODUTO', DMEstoque.TProduto.FieldByName('COD_PRODUTO').AsString, '') = False
   Then Begin
       Registra('APAGA GRADE', 'Cód: '+DMEstoque.TProduto.FieldByName('COD_PRODUTO').AsString, DateToStr(Date()), Copy('Grade: '+DMEstoque.TProduto.FieldByName('DESCRICAO').AsString,0, 30), '');
       DMESTOQUE.TProduto.Delete;
       DMESTOQUE.TransacEstoque.CommitRetaining;
		FiltraTabela(DMESTOQUE.TProduto, 'Produto', '', '', '');
   End
   Else Begin
   	Mensagem('INFORMAÇÃO AO USUÁRIO', 'Existe um ou mais Produtos vinculados a esta Grade e não pode mais ser apagada!', '', 1, 1, True, 'i');
   End;
end;
procedure TFCadProduto.BtnAddGrupoClick(Sender: TObject);
begin
  inherited;
    FiltraTabela(DMEstoque.TGRUPO, 'GRUPOPROD', '', '', '');
    FMENU.TIPOAUX:='PRODUTO';
    If AbrirForm(TFCadGrupo, FCadGrupo, 1)='Selected'
    Then Begin
        XCod_Grupo:=DMEstoque.TGrupo.FieldByName('COD_GRUPOPROD').AsInteger;
        DBGRUPO.TEXT:=DMEstoque.TGrupo.FieldByName('DESCRICAO').AsString;
        EDCODGRUPO.Text:=DMEstoque.TGrupo.FieldByName('COD_GRUPOPROD').AsString;
    End;

end;

procedure TFCadProduto.BtnAddSubGrupoClick(Sender: TObject);
begin
  inherited;
      FiltraTabela(DMEstoque.TSUBGRU, 'SUBGRUPOPROD', '', '', '');
      FMENU.TIPOAUX:='PRODUTO';
      If AbrirForm(TFCadSubGrupo, FCadSubGrupo, 1)='Selected'
      Then Begin
        DBSUBGRUPO.TEXT:=DMEstoque.TSUBGru.FieldByName('DESCRICAO').AsString;
        XCod_Subgrupo:=DMEstoque.TSubgru.FieldByName('COD_SUBGRUPOPROD').AsInteger;
        EDCODSUBGRUPO.Text:=DMEstoque.TSubgru.FieldByName('COD_INTERNO').AsString;
    End;



end;

procedure TFCadProduto.BtnConsultarClick(Sender: TObject);
begin
  inherited;
  	     DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add('SELECT COD_SUBGRUPOPROD, COD_GRUPOPROD, ATIVO FROM PRODUTO');
        DMESTOQUE.Alx.SQL.Add('WHERE COD_PRODUTO = :CODPRODUTO');
        DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMEstoque.TProduto.FieldByName('COD_PRODUTO').AsString;
        DMESTOQUE.Alx.Open;

        if DMESTOQUE.Alx.FieldByName('ATIVO').AsString = '0' then
        	CBInativo.Checked := True
        else
        	CBInativo.Checked := False;        

        DMESTOQUE.Alx1.Close;
        DMESTOQUE.Alx1.SQL.Clear;
        DMESTOQUE.Alx1.SQL.Add('SELECT COD_INTERNO, DESCRICAO, COD_SUBGRUPOPROD FROM SUBGRUPOPROD');
        DMESTOQUE.Alx1.SQL.Add('WHERE COD_SUBGRUPOPROD = :CODSUBGRUPO');
        DMESTOQUE.Alx1.ParamByName('CODSUBGRUPO').AsString:=DMESTOQUE.Alx.FieldByName('COD_SUBGRUPOPROD').AsString;
        DMESTOQUE.Alx1.Open;
        XCod_Subgrupo:=DMESTOQUE.Alx1.FieldByName('COD_SUBGRUPOPROD').AsInteger;
        XCod_UltimoSubGrupo:=DMESTOQUE.Alx1.FieldByName('COD_SUBGRUPOPROD').AsInteger;


		 DBSUBGRUPO.TEXT:=DMESTOQUE.Alx1.FieldByName('DESCRICAO').AsString;
        EDCODSUBGRUPO.Text:=DMESTOQUE.Alx1.FieldByName('COD_INTERNO').AsString;

        DMESTOQUE.Alx2.Close;
        DMESTOQUE.Alx2.SQL.Clear;
        DMESTOQUE.Alx2.SQL.Add('SELECT COD_INTERNO, DESCRICAO FROM GRUPOPROD');
        DMESTOQUE.Alx2.SQL.Add('WHERE COD_GRUPOPROD = :GRUPOPROD');
        DMESTOQUE.Alx2.ParamByName('GRUPOPROD').AsString:=DMESTOQUE.Alx.FieldByName('COD_GRUPOPROD').AsString;
        DMESTOQUE.Alx2.Open;

        XCod_Grupo:=DMESTOQUE.Alx.FieldByName('COD_GRUPOPROD').AsInteger;
        XCod_UltimoGrupo:=DMESTOQUE.Alx.FieldByName('COD_GRUPOPROD').AsInteger;
        DBGRUPO.TEXT:=DMESTOQUE.Alx2.FieldByName('DESCRICAO').AsString;
        EDCODGRUPO.Text:=DMESTOQUE.Alx2.FieldByName('COD_INTERNO').AsString;
        XSTATE:='EDIT';
end;

procedure TFCadProduto.DBGridCadastroPadraoDblClick(Sender: TObject);
begin
  inherited;
       DMESTOQUE.TProduto.Close;
       DMESTOQUE.TProduto.SQL.Clear;
       DMESTOQUE.TProduto.SQL.Add('select * from produto order by descricao');
       DMESTOQUE.TProduto.Open;
end;

procedure TFCadProduto.BtnGravarClick(Sender: TObject);
begin
    If XSTATE='EDIT'
    Then Begin
        //Controle para verificar alterações em grupo
        If XCodGrupo<>XCod_UltimoGrupo
        Then Begin
           If FiltraTabela(DMMACS.TALX, 'grupoprod', 'cod_grupoprod', IntToStr(XCod_UltimoGrupo), '')=True Then
               Registra('ALTERA GRUPO', DBDESC.Text, DateToStr(Date()), Copy('G. A.: '+DMMACS.TALX.FieldByName('DESCRICAO').AsString,0, 30), Copy('P.: '+DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString,0 ,25))
           Else
               Registra('ALTERA GRUPO', DBDESC.Text, DateToStr(Date()), 'Grupo Anterior não encontrada',  Copy('P.: '+DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString, 0,25));
        End;
        //Controle para verificar alterações em sub grupo
        If XCodGrupo<>XCod_UltimoGrupo
        Then Begin
           If FiltraTabela(DMMACS.TALX, 'subgrupoprod', 'cod_subgrupoprod', IntToStr(XCod_UltimoSubGrupo), '')=True Then
               Registra('ALTERA SUBGRUPO', DBDESC.Text, DateToStr(Date()), Copy('SG. A.: '+DMMACS.TALX.FieldByName('DESCRICAO').AsString,0, 30), Copy('P.: '+DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString,0 ,25))
           Else
               Registra('ALTERA SUBGRUPO', DBDESC.Text, DateToStr(Date()), 'SubGrupo Anterior não encontrada',  Copy('P.: '+DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString, 0,25));
        End;
    End;
    //ALTERA DADOS DE GRUPO
    DMEstoque.TProduto.Edit;
    DMEstoque.TProduto.FieldByName('COD_GRUPOPROD').AsInteger:=XCod_Grupo;
    DMEstoque.TProduto.FieldByName('COD_SUBGRUPOPROD').AsInteger:=XCod_Subgrupo;
    if CBInativo.Checked then
    	DMEstoque.TProduto.FieldByName('ATIVO').AsString := '0'
    else
    	DMEstoque.TProduto.FieldByName('ATIVO').AsString := '1';
    DMESTOQUE.TProduto.Post;
    DMESTOQUE.TransacEstoque.CommitRetaining;
  inherited;

end;

procedure TFCadProduto.BtnCancelarClick(Sender: TObject);
begin
 inherited;
    TransReg(Xtabela, XTransaction, 'c');
end;

end.


