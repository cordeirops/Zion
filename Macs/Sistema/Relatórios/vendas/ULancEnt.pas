unit ULancEnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ULancEstPadrao, TFlatHintUnit, Mask, ColorMaskEdit,
  DBCtrls, DBColorEdit, Grids, DBGrids, StdCtrls, Buttons, TFlatEditUnit,
  jpeg, ExtCtrls, FR_BarC, FR_DSet, FR_DBSet, FR_Class, QuickRpt,
  Qrctrls, Menus, EditFloat, ColorEditFloat, DrLabel;

type
  TFLancEnt = class(TFLancEstPadrao)
    GroupBox3: TGroupBox;
    CBImpEt: TCheckBox;
    RGTipoet: TRadioGroup;
    FSRel: TfrReport;
    FDSCaixa: TfrDBDataSet;
    frBarCodeObject1: TfrBarCodeObject;
    PRelatorio: TPopupMenu;
    EtiquetaDirCdBarra1: TMenuItem;
    EtiquetaDirCdFabricante1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure CBImpEtClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure EtiquetaDirCdBarra1Click(Sender: TObject);
    procedure EtiquetaDirCdFabricante1Click(Sender: TObject);
    procedure EtiquetaPrevCdBarras1Click(Sender: TObject);
    procedure EtiquetaPrevCdFabricante1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLancEnt: TFLancEnt;

implementation

uses UDMEstoque, UDMEntrada, UMenu, Alxor32, Alxorprn, UDMMacs, UCadPadrao;

{$R *.DFM}

procedure TFLancEnt.FormActivate(Sender: TObject);
begin
  inherited;
  	XTabela:=DMENTRADA.TLancEnt;
  	XCampo:= 'NUMNOTA';
  	XPkTabela := 'COD_LANENT';
   XTransaction := DMENTRADA.IBT;
   XTab := False;
   XDescricao := 'O Lançamento de Entrada ';
   XSQLTABELA := 'LANCENT';
   XView:=DMENTRADA.WLancEnt;
   XSQLVIEW:='VWLANCENT';
   XLiberaDados:=' Where COD_LOJA = '+FMenu.LCODLOJA.Caption+' Order by DT_LANCAMENTO  DESCENDING, NUMNOTA DESCENDING';
   LiberaDados;
   //seta dbs
   DBPRIMEIRO.DataField:='QUANTIDADE';
   DBPRIMEIRO.DataSource:=DMENTRADA.DLancEnt;
   DBDESC.DataField:='NUMNOTA';
   DBDESC.DataSource:=DMENTRADA.DLancEnt;
   DBColorEdit1.DataField:='DT_ESTOQUE';
   DBColorEdit1.DataSource:=DMENTRADA.DLancEnt;
   DBColorEdit3.DataField:='DT_LANCAMENTO';
   DBColorEdit3.DataSource:=DMENTRADA.DLancEnt;
   DBColorEdit2.DataField:='MOTIVO';
   DBColorEdit2.DataSource:=DMENTRADA.DLancEnt;
   DBGridCadastroPadrao.DataSource:=DMENTRADA.DWLancEnt;
end;

procedure TFLancEnt.BtnGravarClick(Sender: TObject);
Var
   XCodLanc: String;
begin
   XCodLanc:= XTabela.FieldByName(XPkTabela).AsString;
  inherited;
   If CBImpEt.Checked=True
   Then Begin//Caso a combo para impressão de etiqueta esteja marcada, inicia processo
		//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
       DMESTOQUE.TRel.CLOSE;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' SELECT lancent.cod_lanent, subproduto.CONTRINT, subproduto.cor, subproduto.codprodfabr AS CODFAB, subproduto.descricao AS DESCR, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO, SubProduto.Marca as MARCA, produto.descricao AS GRADE, subproduto.localestante AS CODCOMPOSTO, lancent.quantidade As QTD, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO,  estoque.ultcompra as DTCAD, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO,');
       // VERIFICA QUAL CÓDIGO DEVE SER IMPRESSO COMO CÓDIGO DE BARRAS
		If RGTipoet.ItemIndex=0 Then
       	DMESTOQUE.TRel.SQL.Add(' subproduto.codbarra AS CODBARRA')
       Else
       	DMESTOQUE.TRel.SQL.Add(' subproduto.codprodfabr AS CODBARRA');

       DMESTOQUE.TRel.SQL.Add(' from lancent ');
       DMESTOQUE.TRel.SQL.Add(' left join estoque ON lancent.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TRel.SQL.Add(' left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.TRel.SQL.Add(' left join Produto ON Produto.cod_Produto = subproduto.cod_Produto ');
       DMESTOQUE.TRel.SQL.Add(' Where lancent.cod_lanent= :CODLANC ');
       DMESTOQUE.TRel.ParamByName('CODLANC').AsString:=XCodLanc;

       DMESTOQUE.TRel.Open;
       If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='1'
       Then Begin
       	PrnEtiqPerson(True, 0, 0);
       End;
       If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='2'
       Then Begin
       	PrnEtiqPerson02(True, 0, 0);
       End;
       //Paulo 13/12/2010: Para impressão de etiquetas de ótica
       If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='3'
       Then Begin
           PrnEtiqPersonalOtica(True, 0, -1);
       End;
       If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='0'
       Then Begin
       	If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='2X12' Then
           	PrnEtiq2X12(True, 0, 0);
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='T3C' Then
           	PrnEtiqT3C(True, 0, 0);
           If DMMACS.TLoja.FieldByName('TIPOETPROD').AsString='Z2C' Then
           	PrnEtiqZ2C(True, 0, 0);
       End;
       //Para impressão via quick report;
{       If RGTipoet.ItemIndex=0 Then
	       QRETCodBarra.Preview
       Else
	       QRETCodFab.Preview;}

   End;
	LiberaDados;
end;

procedure TFLancEnt.CBImpEtClick(Sender: TObject);
begin
  inherited;
   //CONTROLA O APARECIMENTO DA RADIO DE TIPO DE ETIQUETAS
	If CBImpEt.Checked=True
   Then Begin
       RGTipoet.Visible:=True;
       RGTipoet.SetFocus;
   End
   Else Begin
       RGTipoet.Visible:=False;
   End;
end;

procedure TFLancEnt.BtnRelatorioClick(Sender: TObject);
begin
  inherited;
	PRelatorio.Popup(Left+PConsulta.left+Painel.left+ BtnRelatorio.Left, top+PConsulta.Top+Painel.top+BtnRelatorio.Top+BtnRelatorio.Height);

end;

procedure TFLancEnt.EtiquetaDirCdBarra1Click(Sender: TObject);
begin
  inherited;
	//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
       DMESTOQUE.TRel.CLOSE;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' SELECT lancent.cod_lanent, subproduto.codprodfabr AS CODFAB, subproduto.descricao AS DESCR,  subproduto.FABRICANTE, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO,  SubProduto.Marca as MARCA,  estoque.ultcompra as DTCAD, subproduto.localestante AS CODCOMPOSTO, lancent.quantidade As QTD, subproduto.contrint, subproduto.CLASSIFICACAO, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO, estoque.ultcompra as DTCAD, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO,');
       // VERIFICA QUAL CÓDIGO DEVE SER IMPRESSO COMO CÓDIGO DE BARRAS
     	DMESTOQUE.TRel.SQL.Add(' subproduto.codbarra AS CODBARRA');
       DMESTOQUE.TRel.SQL.Add(' from lancent ');
       DMESTOQUE.TRel.SQL.Add(' left join estoque ON lancent.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TRel.SQL.Add(' left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.TRel.SQL.Add(' Where lancent.cod_lanent= :CODLANC ');
       DMESTOQUE.TRel.ParamByName('CODLANC').AsString:=DMENTRADA.WLancEnt.FieldByName('COD_LANCENT').AsString;
       DMESTOQUE.TRel.Open;
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='1'
   	Then Begin
			PrnEtiqPerson(True, 0, 0);
   	End;
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='2'
   	Then Begin
			PrnEtiqPerson02(True, 0, 0);
   	End;
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='0'
   	Then Begin
			PrnEtiq2X12(True, 0, -1);
   	End;
end;

procedure TFLancEnt.EtiquetaDirCdFabricante1Click(Sender: TObject);
begin
  inherited;
		//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
       DMESTOQUE.TRel.CLOSE;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' SELECT lancent.cod_lanent, subproduto.codprodfabr AS CODFAB, subproduto.descricao AS DESCR,  subproduto.FABRICANTE, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO,  SubProduto.Marca as MARCA, estoque.ultcompra as DTCAD, subproduto.localestante AS CODCOMPOSTO, lancent.quantidade As QTD, subproduto.contrint, subproduto.CLASSIFICACAO, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO,  estoque.ultcompra as DTCAD, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO,');
       // VERIFICA QUAL CÓDIGO DEVE SER IMPRESSO COMO CÓDIGO DE BARRAS
     	DMESTOQUE.TRel.SQL.Add(' subproduto.codprodfabr AS CODBARRA');
       DMESTOQUE.TRel.SQL.Add(' from lancent ');
       DMESTOQUE.TRel.SQL.Add(' left join estoque ON lancent.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TRel.SQL.Add(' left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.TRel.SQL.Add(' Where lancent.cod_lanent= :CODLANC ');
       DMESTOQUE.TRel.ParamByName('CODLANC').AsString:=DMENTRADA.WLancEnt.FieldByName('COD_LANCENT').AsString;
       DMESTOQUE.TRel.Open;
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='1'
   	Then Begin
			PrnEtiqPerson(False, 1, 0);
   	End;
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='2'
   	Then Begin
			PrnEtiqPerson02(False, 1, 0);
   	End;
   	If DMMACS.TLoja.FieldByName('ETPERSONAL').AsString='0'
   	Then Begin
			PrnEtiq2X12(False, 1, -1);
   	End;
end;

procedure TFLancEnt.EtiquetaPrevCdBarras1Click(Sender: TObject);
begin
  inherited;
		//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
       DMESTOQUE.TRel.CLOSE;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' SELECT lancent.cod_lanent, subproduto.codprodfabr AS CODFAB, subproduto.descricao AS DESCR, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO, subproduto.localestante AS CODCOMPOSTO, lancent.quantidade As QTD, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO,');
       // VERIFICA QUAL CÓDIGO DEVE SER IMPRESSO COMO CÓDIGO DE BARRAS
     	DMESTOQUE.TRel.SQL.Add(' subproduto.codbarra AS CODBARRA');
       DMESTOQUE.TRel.SQL.Add(' from lancent ');
       DMESTOQUE.TRel.SQL.Add(' left join estoque ON lancent.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TRel.SQL.Add(' left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.TRel.SQL.Add(' Where lancent.cod_lanent= :CODLANC ');
       DMESTOQUE.TRel.ParamByName('CODLANC').AsString:=DMENTRADA.WLancEnt.FieldByName('COD_LANCENT').AsString;
       DMESTOQUE.TRel.Open;
  
end;

procedure TFLancEnt.EtiquetaPrevCdFabricante1Click(Sender: TObject);
begin
  inherited;
		//INFORMA SQL ADEQUADA A IMPRESSAO DE ETIQUETAS
       DMESTOQUE.TRel.CLOSE;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' SELECT lancent.cod_lanent, subproduto.codprodfabr AS CODFAB, subproduto.descricao AS DESCR, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarv as PRECO, subproduto.localestante AS CODCOMPOSTO, lancent.quantidade As QTD, ');
       DMESTOQUE.TRel.SQL.Add(' estoque.vendvarp as PRECOPRAZO, subproduto.altura AS ALTURA, subproduto.LARGURA AS LARGURA, subproduto.composicao AS COMPOSICAO,');       
       // VERIFICA QUAL CÓDIGO DEVE SER IMPRESSO COMO CÓDIGO DE BARRAS
     	DMESTOQUE.TRel.SQL.Add(' subproduto.codbarra AS CODBARRA');
       DMESTOQUE.TRel.SQL.Add(' from lancent ');
       DMESTOQUE.TRel.SQL.Add(' left join estoque ON lancent.cod_estoque = estoque.cod_estoque ');
       DMESTOQUE.TRel.SQL.Add(' left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto ');
       DMESTOQUE.TRel.SQL.Add(' Where lancent.cod_lanent= :CODLANC ');
       DMESTOQUE.TRel.ParamByName('CODLANC').AsString:=DMENTRADA.WLancEnt.FieldByName('COD_LANCENT').AsString;
       DMESTOQUE.TRel.Open;
  
end;

end.
