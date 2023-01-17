unit URelEtiqEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  URelEstoque, FR_DSet, FR_DBSet, FR_Class, TFlatHintUnit, UFrmBusca,
  StdCtrls, Buttons, jpeg, ExtCtrls, EditFloat, ColorEditFloat, FR_BarC,
  Grids, DBGrids, Mask, ColorMaskEdit, DB, IBCustomDataSet, IBQuery,
  QuickRpt, QRCtrls, DrLabel, cxCheckBox, cxCheckListBox, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFRelEtiqEstoque = class(TFRelEstoque)
    frBarCodeObject1: TfrBarCodeObject;
    GroupBox5: TGroupBox;
    Data1: TColorMaskEdit;
    Data2: TColorMaskEdit;
    RGTipo: TRadioGroup;
    RGINFORMACOES: TRadioGroup;
    procedure BtnVisualizarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelEtiqEstoque: TFRelEtiqEstoque;

implementation

uses UDMEstoque, UDMEntrada, Alxorprn, UMenu, UDMMacs;

{$R *.DFM}

procedure TFRelEtiqEstoque.BtnVisualizarClick(Sender: TObject);
begin
{   FSRel.DefaultCopies:=EdNumCopia.ValueInteger;
  inherited;}

end;

procedure TFRelEtiqEstoque.BtnImprimirClick(Sender: TObject);
Var
	XJuncao: String;
begin
  inherited;
	//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
  	If RGINFORMACOES.ItemIndex=0
   Then Begin
		//AS INFORMAÇÕES DEVEM SER RETIRADAS DOS PEDIDOS DE COMPRA
		//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
       DMESTOQUE.TRel.CLOSE;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' SELECT itenspedc.cod_itenspedc, produto.descricao AS GRADE, subproduto.codprodfabr AS CODFAB, subproduto.descricao AS DESCR,  subproduto.CLASSIFICACAO,  subproduto.FABRICANTE, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO,  SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO, itenspedc.qtdeprod As QTD, subproduto.contrint, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO, ');
       // VERIFICA QUAL CÓDIGO DEVE SER IMPRESSO COMO CÓDIGO DE BARRAS
       If RGTipo.ItemIndex=1 Then
     		DMESTOQUE.TRel.SQL.Add(' subproduto.codbarra AS CODBARRA')
       Else
     		DMESTOQUE.TRel.SQL.Add(' subproduto.codprodfabr AS CODBARRA');

       DMESTOQUE.TRel.SQL.Add(' from itenspedc ');
       DMESTOQUE.TRel.SQL.Add(' left join pedcompra ON itenspedc.cod_pedcompra=pedcompra.cod_pedcomp ');
       DMESTOQUE.TRel.SQL.Add(' left join estoque ON itenspedc.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TRel.SQL.Add(' left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.TRel.SQL.Add(' left join Produto ON Produto.cod_Produto = subproduto.cod_Produto ');
       DMESTOQUE.TRel.SQL.Add(' left join GrupoProd ON GrupoProd.cod_GrupoProd = Produto.cod_GrupoProd ');
       DMESTOQUE.TRel.SQL.Add(' left join SubGrupoProd ON SubGrupoProd.cod_SubGrupoProd = Produto.cod_SubGrupoProd ');
       DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') and ((subproduto.ATIVO = ''S'') or (subproduto.ATIVO is null))');
	   If (FrmGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
		    DMESTOQUE.TRel.SQL.Add(' AND  (upper(grupoprod.descricao) between upper(:GRUPO1) AND upper(:GRUPO2)) ');
	  	    DMESTOQUE.TRel.ParamByName('GRUPO1').AsString:=FrmGrupo1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('GRUPO2').AsString:=FrmGrupo2.EdDescricao.Text;
      End;
      If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
	   		DMESTOQUE.TRel.SQL.Add(' AND  (upper(subgrupoprod.descricao) between upper(:SUBGRUPO1) AND upper(:SUBGRUPO2)) ');
	   		DMESTOQUE.TRel.ParamByName('SUBGRUPO1').AsString:=FrmSubGrupo1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('SUBGRUPO2').AsString:=FrmSubGrupo2.EdDescricao.Text;
      End;
      If (Data1.Text<>'  /  /    ') And (Data2.Text<>'  /  /    ')
      Then Begin//haverá seleção por data
	   		DMESTOQUE.TRel.SQL.Add(' AND  (pedcompra.dtpedcomp Between :Data1 and :Data2) ' );
			DMESTOQUE.TRel.ParamByName('Data1').AsString:=Data1.Text;
			DMESTOQUE.TRel.ParamByName('Data2').AsString:=Data2.Text;
      End;
      If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
      		DMESTOQUE.TRel.SQL.Add(' AND  (upper(produto.descricao) between upper(:PRODUTO1) AND upper(:PRODUTO2)) ');
 	   		DMESTOQUE.TRel.ParamByName('PRODUTO1').AsString:=FrmProduto1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('PRODUTO2').AsString:=FrmProduto2.EdDescricao.Text;
      End;
      If (CBMARCAINI.Text<>'') And (CBMARCAFIM.Text<>'')
      Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND  ((subproduto.marca) between (:MARCA1) AND (:MARCA2)) ');
       DMESTOQUE.TRel.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
   	DMESTOQUE.TRel.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
      End;
      DMESTOQUE.TRel.SQL.Add(' order by itenspedc.cod_itenspedc ');
      DMESTOQUE.TRel.SQL.Text;
      DMESTOQUE.TRel.Open;
   End;
  	If RGINFORMACOES.ItemIndex=1
   Then Begin
		//INFORMAÇÕES RETIRADAS DOS ARQUIVOS DE CORREÇÃO
       DMESTOQUE.TRel.CLOSE;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' SELECT lancent.cod_lanent, subproduto.codprodfabr AS CODFAB, produto.descricao AS GRADE, subproduto.descricao AS DESCR,  subproduto.CLASSIFICACAO,  subproduto.FABRICANTE, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO,  SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO, lancent.quantidade As QTD, subproduto.contrint, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO, ');
       // VERIFICA QUAL CÓDIGO DEVE SER IMPRESSO COMO CÓDIGO DE BARRAS
       If RGTipo.ItemIndex=1 Then
     		DMESTOQUE.TRel.SQL.Add(' subproduto.codbarra AS CODBARRA')
       Else
     		DMESTOQUE.TRel.SQL.Add(' subproduto.codprodfabr AS CODBARRA');

       DMESTOQUE.TRel.SQL.Add(' from lancent ');
       DMESTOQUE.TRel.SQL.Add(' left join estoque ON lancent.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TRel.SQL.Add(' left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.TRel.SQL.Add(' left join Produto ON Produto.cod_Produto = subproduto.cod_Produto ');
       DMESTOQUE.TRel.SQL.Add(' left join GrupoProd ON GrupoProd.cod_GrupoProd = Produto.cod_GrupoProd ');
       DMESTOQUE.TRel.SQL.Add(' left join SubGrupoProd ON SubGrupoProd.cod_SubGrupoProd = Produto.cod_SubGrupoProd ');
       DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
	   If (FrmGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
		    DMESTOQUE.TRel.SQL.Add(' AND  (upper(grupoprod.descricao) between upper(:GRUPO1) AND upper(:GRUPO2)) ');
	  	    DMESTOQUE.TRel.ParamByName('GRUPO1').AsString:=FrmGrupo1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('GRUPO2').AsString:=FrmGrupo2.EdDescricao.Text;
      End;
      If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
	   		DMESTOQUE.TRel.SQL.Add(' AND  (upper(subgrupoprod.descricao) between upper(:SUBGRUPO1) AND upper(:SUBGRUPO2)) ');
	   		DMESTOQUE.TRel.ParamByName('SUBGRUPO1').AsString:=FrmSubGrupo1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('SUBGRUPO2').AsString:=FrmSubGrupo2.EdDescricao.Text;
      End;
      If (Data1.Text<>'  /  /    ') And (Data2.Text<>'  /  /    ')
      Then Begin//haverá seleção por data
	   		DMESTOQUE.TRel.SQL.Add(' AND  (lancent.DT_LANCAMENTO Between :Data1 and :Data2) ' );
			DMESTOQUE.TRel.ParamByName('Data1').AsString:=Data1.Text;
			DMESTOQUE.TRel.ParamByName('Data2').AsString:=Data2.Text;
      End;

      If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
      		DMESTOQUE.TRel.SQL.Add(' AND  (upper(produto.descricao) between upper(:PRODUTO1) AND upper(:PRODUTO2)) ');
 	   		DMESTOQUE.TRel.ParamByName('PRODUTO1').AsString:=FrmProduto1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('PRODUTO2').AsString:=FrmProduto2.EdDescricao.Text;
      End;
      If (CBMARCAINI.Text<>'') And (CBMARCAFIM.Text<>'')
      Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND  ((subproduto.marca) between (:MARCA1) AND (:MARCA2)) ');
       DMESTOQUE.TRel.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
   	DMESTOQUE.TRel.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
      End;
      DMESTOQUE.TRel.SQL.Add(' order by lancent.cod_lanent ');
      DMESTOQUE.TRel.SQL.Text;
      DMESTOQUE.TRel.Open;
   End;
  	If RGINFORMACOES.ItemIndex=2
   Then Begin
		//INFORMAÇÕES RETIRADAS DOS ARQUIVOS DE CORREÇÃO
       DMESTOQUE.TRel.CLOSE;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' SELECT subproduto.cod_subproduto, subproduto.codprodfabr AS CODFAB, produto.descricao AS GRADE, subproduto.descricao AS DESCR,  subproduto.CLASSIFICACAO,  subproduto.FABRICANTE, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO,  SubProduto.Marca as MARCA, subproduto.localestante AS CODCOMPOSTO, subproduto.cor, estoque.estfisico As QTD, subproduto.contrint, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO,  estoque.dtcad, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO, ');       
       // VERIFICA QUAL CÓDIGO DEVE SER IMPRESSO COMO CÓDIGO DE BARRAS
       If RGTipo.ItemIndex=1 Then
     		DMESTOQUE.TRel.SQL.Add(' subproduto.codbarra AS CODBARRA')
       Else
     		DMESTOQUE.TRel.SQL.Add(' subproduto.codprodfabr AS CODBARRA');

       DMESTOQUE.TRel.SQL.Add(' from SUBPRODUTO ');
       DMESTOQUE.TRel.SQL.Add(' left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
       DMESTOQUE.TRel.SQL.Add(' left join Produto ON Produto.cod_Produto = subproduto.cod_Produto ');
       DMESTOQUE.TRel.SQL.Add(' left join GrupoProd ON GrupoProd.cod_GrupoProd = Produto.cod_GrupoProd ');
       DMESTOQUE.TRel.SQL.Add(' left join SubGrupoProd ON SubGrupoProd.cod_SubGrupoProd = Produto.cod_SubGrupoProd ');
       DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
	   If (FrmGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
		    DMESTOQUE.TRel.SQL.Add(' AND  (upper(grupoprod.descricao) between upper(:GRUPO1) AND upper(:GRUPO2)) ');
	  	    DMESTOQUE.TRel.ParamByName('GRUPO1').AsString:=FrmGrupo1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('GRUPO2').AsString:=FrmGrupo2.EdDescricao.Text;
      End;
      If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
	   		DMESTOQUE.TRel.SQL.Add(' AND  (upper(subgrupoprod.descricao) between upper(:SUBGRUPO1) AND upper(:SUBGRUPO2)) ');
	   		DMESTOQUE.TRel.ParamByName('SUBGRUPO1').AsString:=FrmSubGrupo1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('SUBGRUPO2').AsString:=FrmSubGrupo2.EdDescricao.Text;
      End;
      If (Data1.Text<>'  /  /    ') And (Data2.Text<>'  /  /    ')
      Then Begin//haverá seleção por data
	   		DMESTOQUE.TRel.SQL.Add(' AND  (subproduto.dtcad Between :Data1 and :Data2) ' );
			DMESTOQUE.TRel.ParamByName('Data1').AsString:=Data1.Text;
			DMESTOQUE.TRel.ParamByName('Data2').AsString:=Data2.Text;
      End;

      If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
      		DMESTOQUE.TRel.SQL.Add(' AND  (upper(produto.descricao) between upper(:PRODUTO1) AND upper(:PRODUTO2)) ');
 	   		DMESTOQUE.TRel.ParamByName('PRODUTO1').AsString:=FrmProduto1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('PRODUTO2').AsString:=FrmProduto2.EdDescricao.Text;
      End;
      If (FrmSubProduto1.EdDescricao.Text<>'') And (FrmSubProduto2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
      		DMESTOQUE.TRel.SQL.Add(' AND  (upper(subproduto.descricao) between upper(:SUBPRODUTO1) AND upper(:SUBPRODUTO2)) ');
 	   		DMESTOQUE.TRel.ParamByName('SUBPRODUTO1').AsString:=FrmSubProduto1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('SUBPRODUTO2').AsString:=FrmSubProduto2.EdDescricao.Text;
      End;
      If (CBMARCAINI.Text<>'') And (CBMARCAFIM.Text<>'')
      Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND  ((subproduto.marca) between (:MARCA1) AND (:MARCA2)) ');
       DMESTOQUE.TRel.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
   	DMESTOQUE.TRel.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
      End;
      DMESTOQUE.TRel.SQL.Add(' order by subproduto.cod_subproduto ');
      DMESTOQUE.TRel.SQL.Text;
      DMESTOQUE.TRel.Open;
   End;
   If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='1'
   Then Begin
   	If RGTipo.ItemIndex=0 Then
			PrnEtiqPerson(False, 1,-1 )
   	Else
			PrnEtiqPerson(True, 0, -1);
   End;
   If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='2'
   Then Begin
   	If RGTipo.ItemIndex=0 Then
			PrnEtiqPerson02(False, 1, -1)
   	Else
			PrnEtiqPerson02(True, 0, -1);
   End;
   //Paulo 13/12/2010: Para impressão de etiquetas de ótica
   If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='3'
   Then Begin
       PrnEtiqPersonalOtica(True, 0, -1);
   End;
   If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='0'
   Then Begin
   	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='2X12'
   	Then Begin
   		If RGTipo.ItemIndex=0 Then
				PrnEtiq2X12(False, 1, -1)
   		Else
				PrnEtiq2X12(True, 0, -1);
       End;
   	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='T3C' Then
			PrnEtiqT3C(True, 0, 0);
   	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='Z2C' Then
			PrnEtiqZ2C(True, 0, 0);
   End;
end;

procedure TFRelEtiqEstoque.FormActivate(Sender: TObject);
begin
  inherited;
	FDSCaixa.DataSource:=DMESTOQUE.DRel;
end;

end.
