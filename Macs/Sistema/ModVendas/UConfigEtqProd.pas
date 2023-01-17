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
    BitBtn4: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure GroupBox1Enter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    Procedure AtivBtn;//Procedure responsável por controlar a ativação dos botões
  public
    { Public declarations }
  end;

var
  FConfigEtqProd: TFConfigEtqProd;

implementation

uses UDMMacs, Alxor32, UDMEstoque, UMenu, Alxorprn;

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
	Caption:='Config. de Etiqueta de Produtos' ;  
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

procedure TFConfigEtqProd.BitBtn4Click(Sender: TObject);
Var
   XQtdEtq: String;
begin
  inherited;
   BtnGravar.Click;
   If InputQuery('ATENÇÃO','Informe a Qtd. de etiquetas:', XQtdEtq)
   Then Begin
   	Try
           //FILTRA SIMILAR DE ACORDO COM O PRODUTO
           DMESTOQUE.WSimilar.Close;
           DMESTOQUE.WSimilar.SQL.Clear;
           DMESTOQUE.WSimilar.SQL.Add('SELECT * FROM VWSIMILAR WHERE (COD_LOJA=:CODLOJA)  and ((ATIVO = ''S'') or (ATIVO is null)) Order By DESCRICAO');
           DMESTOQUE.WSimilar.ParamByName('CODLOJA').Asstring:=FMenu.LCODLOJA.Caption;
           DMESTOQUE.WSimilar.Open;

       	If StrToInt(XQtdEtq)>0
           Then Begin
				//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
       		DMESTOQUE.TRel.CLOSE;
       		DMESTOQUE.TRel.SQL.Clear;
       		DMESTOQUE.TRel.SQL.Add(' SELECT subproduto.codprodfabr AS CODFAB, produto.descricao AS GRADE, subproduto.CONTRINT,  SUBPRODUTO.especificacao, subproduto.descricao AS DESCR,  subproduto.FABRICANTE,  ');
       		DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO,  SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO,subproduto.cor, ESTOQUE.ESTFISICO As QTD, ');
       		DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO, estoque.ultcompra as DTCAD, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO, subproduto.CLASSIFICACAO, ');
  				DMESTOQUE.TRel.SQL.Add(' subproduto.cor, subproduto.CODBARRA AS CODBARRA');
       		DMESTOQUE.TRel.SQL.Add(' from Subproduto ');
       		DMESTOQUE.TRel.SQL.Add(' left join Produto ON Produto.cod_Produto = subproduto.cod_Produto ');               
       		DMESTOQUE.TRel.SQL.Add(' left join estoque ON ESTOQUE.cod_SubProd = SUBPRODUTO.cod_SubprodUTO ');
       		DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
  				DMESTOQUE.TRel.SQL.Add(' AND(SUBproduto.COD_SUBPRODUTO=:CODSUBPROD) ');
 	   			DMESTOQUE.TRel.ParamByName('CODSUBPROD').AsString:=DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString;
      			DMESTOQUE.TRel.SQL.Text;
      			DMESTOQUE.TRel.Open;
   			If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='1'
   			Then Begin
					PrnEtiqPerson(True, 0, StrToInt(XQtdEtq));
   			End;
   			If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='2'
   			Then Begin
					PrnEtiqPerson02(True, 0, StrToInt(XQtdEtq));
   			End;
           	//Paulo 13/12/2010: Para impressão de etiquetas de ótica
               If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='3'
   			Then Begin
					PrnEtiqPersonalOtica(True, 0, StrToInt(XQtdEtq));
   			End;
   			If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='0'
   			Then Begin
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='2X12' Then
						PrnEtiq2X12(True, 0, StrToInt(XQtdEtq));
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='T3C' Then
                       PrnEtiqT3C(True, 0, StrToInt(XQtdEtq));
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='Z2C' Then
                       PrnEtiqZ2C(True, 0, StrToInt(XQtdEtq));
               	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='A1C' Then
                       PrnEtiqA1C(True, 0, StrToInt(XQtdEtq));
   			End;
           End;
       Except
       End;
   End;
end;

end.
