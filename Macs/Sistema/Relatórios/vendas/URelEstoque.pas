unit URelEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, TFlatHintUnit, Buttons, StdCtrls, jpeg, ExtCtrls, UFrmBusca,
  QuickRpt, FR_Class, Qrctrls, FR_DSet, FR_DBSet, Mask, ColorMaskEdit, Printers,
  DB, IBCustomDataSet, IBQuery, DBCtrls, DBColorComboBox, DrLabel, Grids,
  DBGrids, cxControls, cxContainer, cxCheckListBox, cxDBCheckListBox,
  cxEdit, cxCheckBox, ClipBrd, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar;

type
  TFRelEstoque = class(TFPadrao)
    FSRel: TfrReport;
    FDSCaixa: TfrDBDataSet;
    QRResumo: TQuickRep;
    QRBand8: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape4: TQRShape;
    QRSysData1: TQRSysData;
    QRDBRichText1: TQRDBRichText;
    QRBand9: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape5: TQRShape;
    QRLabel1: TQRLabel;
    QRBand10: TQRBand;
    QRLPRODUTO: TQRDBText;
    QRBand11: TQRBand;
    QRLORION: TQRLabel;
    QRShape7: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLVLR1: TQRDBText;
    QRLVLR2: TQRDBText;
    QRLVLR3: TQRDBText;
    QRLVLR4: TQRDBText;
    QRLVLR5: TQRDBText;
    QRLVLR6: TQRDBText;
    QrResumoVC: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRDBRichText2: TQRDBRichText;
    QRBand3: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape2: TQRShape;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRGroup1: TQRGroup;
    QRDBText10: TQRDBText;
    QRLabel19: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText11: TQRDBText;
    QRLabel20: TQRLabel;
    QRBand5: TQRBand;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRBand6: TQRBand;
    QRShape3: TQRShape;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRBand7: TQRBand;
    QRShape6: TQRShape;
    QRLabel21: TQRLabel;
    DS: TDataSource;
    Alx: TIBQuery;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLVLR7: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel24: TQRLabel;
    PInventario: TPanel;
    Shape3: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape10: TShape;
    LTextoBusca: TLabel;
    LTextoBusca1: TLabel;
    LTextoAuxProd: TLabel;
    FrmGrupo1: TFrmBusca;
    FrmGrupo2: TFrmBusca;
    FrmSubGrupo1: TFrmBusca;
    FrmSubGrupo2: TFrmBusca;
    FrmProduto1: TFrmBusca;
    FrmProduto2: TFrmBusca;
    RgOrdenacao: TRadioGroup;
    FrmSubProduto1: TFrmBusca;
    FrmSubProduto2: TFrmBusca;
    CBMARCAINI: TComboBox;
    CBMARCAFIM: TComboBox;
    PData: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    CBEstPos: TCheckBox;
    CBCampoAux: TComboBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BtnImprimir: TBitBtn;
    GroupBox3: TGroupBox;
    BtnVisualizar: TBitBtn;
    GroupBox4: TGroupBox;
    BtnCancelar: TBitBtn;
    CBEstMin: TCheckBox;
    CBEstMax: TCheckBox;
    rgAgrupar: TRadioGroup;
    cbAgrupar: TCheckBox;
    lbFabricante: TLabel;
    clbFabricante: TcxCheckListBox;
    rgOrientacao: TRadioGroup;
    cbMarca: TcxCheckListBox;
    cbMarcaSelect: TcxCheckBox;
    rgSubAgrupar: TRadioGroup;
    cbSegmento: TComboBox;
    cbRelMarcas: TCheckBox;
    edData2: TcxDateEdit;
    edData1: TcxDateEdit;
    rbMovimentados: TCheckBox;
    CBEstZerado: TCheckBox;
    procedure FrmGrupo1BTNMINUSClick(Sender: TObject);
    procedure FrmGrupo2BTNMINUSClick(Sender: TObject);
    procedure FrmGrupo1BTNOPENClick(Sender: TObject);
    procedure FrmGrupo1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmGrupo2BTNOPENClick(Sender: TObject);
    procedure FrmGrupo2EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmSubGrupo1BTNMINUSClick(Sender: TObject);
    procedure FrmSubGrupo1BTNOPENClick(Sender: TObject);
    procedure FrmSubGrupo1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmSubGrupo2BTNMINUSClick(Sender: TObject);
    procedure FrmSubGrupo2BTNOPENClick(Sender: TObject);
    procedure FrmSubGrupo2EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmProduto1BTNMINUSClick(Sender: TObject);
    procedure FrmProduto1BTNOPENClick(Sender: TObject);
    procedure FrmProduto1EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmProduto2BTNMINUSClick(Sender: TObject);
    procedure FrmProduto2BTNOPENClick(Sender: TObject);
    procedure FrmProduto2EDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrmSubProduto1BTNMINUSClick(Sender: TObject);
    procedure FrmSubProduto2BTNMINUSClick(Sender: TObject);
    procedure FrmSubProduto1BTNOPENClick(Sender: TObject);
    procedure FrmSubProduto2BTNOPENClick(Sender: TObject);
    procedure FrmSubProduto1EDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FrmSubProduto2EDCodigoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure cbAgruparClick(Sender: TObject);
    procedure cbMarcaSelectClick(Sender: TObject);
    procedure cbMarcaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rgOrientacaoClick(Sender: TObject);
    procedure CBEstPosClick(Sender: TObject);
    procedure CBEstZeradoClick(Sender: TObject);
  private
    { Private declarations }
    Procedure PrepImp; //procedure utilizado para preparar a sql de impressão
	//Procedure utilizada para lançar sql para filtrara e calcular os historicos do produto corrente
	Procedure GeraHist;

	//Procedure utilizada para Imprimir o resultado da procedure gerahis
	Procedure ImpGeraHist;
	//Procedure utilizada para Imprimir o Titulo de página para procedure impgerahist
	Procedure ImpTitGeraHist;
	//Procedure utilizada para Imprimir o Cabeçlho de página para procedure impgerahist
	Procedure ImpCabGeraHist(NUMPAG:STRING);
	//Procedure utilizada para Imprimir o Rodapé de página para procedure impgerahist
	Procedure ImpRodPeGeraHist;
   //Filtro por Subgrupo
   Procedure FiltroSubGrupo;
	//Limpa Sql da Tabela
	Procedure LimpaSQL;
	//Abre Tabela
	Function AbreTabela: Boolean;
   //Imprime Relatório de produtos vendidos ordenados por produto
	Procedure ImpRProdVend;
   //Imprime Relatório de produtos de acordo com o tipo de tributação
   Procedure ImpRProdTributa;
	//Imprime Relatório de produtos comprados ordenados por produto
	Procedure ImpRProdComp;
	//Imprime Relatório de produtos devolvidos de vendas
	Procedure ImpRProdCompDEV;
	//Imprime Relatório de Estoque de produtos tipo classificação Produto
	Procedure ImpRClassProd;
	//Imprime Relatório de Estoque de produtos tipo inventário de estoque
	Procedure ImpRInventEst;
	//Imprime Relatório de Lançamentos de Entrada em estoque
	Procedure ImpRLancEnt;
	//Imprime Relatório de Lançamentos de Saida em estoque
	Procedure ImpRLancSai;
   //imprime relatorio de lançamento de entrada em estoque com lote
   Procedure ImpRLancEntLote;
   //imprime relatorio de lançamento de saida em estoque com lote
   Procedure ImpRLancSaiLote;
	//Imprime Relatório de Lista de Preços de produto
	Procedure ImpRListaPreco;
	//Imprime Relatório de Posição de Estoque
	Procedure ImpRPosEst;
	//Imprime Relatório de Lista de Preços para venda
	Procedure ImpRListaPrecoVend;
	//Imprime Relatório de Lista de Estoque para clientes
	Procedure ImpRLstEstPedCli;
	//Imprime Relatório de Confronto Entradas e Saidas
	Procedure ImpREntSaida;
	//Imprime resumo de vendas/Compras com valores monetarios e qtd por produtos
	Procedure ImpResumoMensVC;
   //Imprime resumo de vendas/Compras
   Procedure ImpResumoVC;
	//filtro por campo auxiliar
	Procedure FiltroCampAux;
   //filtro por classificação
   Procedure FiltroClassificacao;
	//Imprime Relatório de Lotes vencidos
	Procedure ImpRelLotes;
	//Imprime Relatório de Lista de Estoque para clientes com descricao de cupom
	Procedure ImpRLstEstPedCliDC;
	//Imprime Relatório de produtos vendidos em OS ordenados por produto
	Procedure ImpRProdOS;
	//Salva em txt Relatório de Estoque de produtos tipo inventário de estoque
	Procedure SalvaInventEst;
   //Salva em txt Relatório de lista com descricao para cupom
   Procedure SalvaLista;
	//Imprime Relatório de Estoque Calculado
	Procedure ImpREstCalc;
	//Imprime Relatório de produtos vendidos em ordens e pedidos
	Procedure ImpRProdVendOP;
	//Imprime Relatório de Estoque Maximo e Minimo
	Procedure ImpREstMaxMin;
	//Exporta em xml Relatório de lista com descricao para cupom
	Procedure ExpXml;
	//Imprime Relatório de Lista de Preços de produto com todos os preços
	Procedure ImpRListaPrecoComp;
	//Imprime Relatório de Lista de preços para clientes em 2 colunas
	Procedure ImpRLstPrecos2colunas;
   // Imprimi relatorio de carregamento
   Procedure ImpCarregamento;
    //Filtro por Grupo
    Procedure FiltroGrupo;
    //filtro por marca
    Procedure FiltroMarca;
    //Filtro por produto
    Procedure FiltroProduto;
    //Filtro por Subproduto
    Procedure FiltroSubProduto;
    //Filtro por Data
    Procedure FiltroData;
    //Filtro por Fabricante
    Procedure FiltroFabricante;
    //Paulo 15/12/2011: Imprime Relatório de produtos somente de ordens de serviços
    Procedure ImpRProdOrdemServico;
    //Imprime Relatório de Listagem de Estoque
    Procedure ImpRListaEst;
    //MAURO 03/06/2013 - Imprime Relatorio de Produtos com Manutenção
    Procedure ImpProdManutencao;

  public

  end;


var
  FRelEstoque: TFRelEstoque;
  XGRUPO1, XGRUPO2, XSUBGRUPO1, XSUBGRUPO2, XPRODUTO1, XPRODUTO2, XSUBPROD1, XSUBPROD2: String;
  QtdEntradas, QtdSaidas, ResultEst, TotComi, TotLuc, TOTCOMP, TOTVEND: Real;
  Linha:Integer;
  XTENTCOR, XTSAICOR, XTCOMPRA, XTVENDA: INTEGER;//Variaveis que acumularão o total

implementation

uses UDMEstoque, UCadGrupo, UDMMacs, Alxor32, UCadSubgrupo, UProduto, UMenu,
  Alxorprn, AlxMessage, Math, UDMConta;

{$R *.DFM}

//Imprime resumo de vendas/Compras
Procedure TFRelestoque.ImpResumoVC;
Begin
	//Atualiza coeficientes de divisao de itenspedven e itprodordem para 1 onde estes forem zero
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('update itenspedven set itenspedven.coefdiv=1 Where itenspedven.coefdiv=0');
   DMESTOQUE.Alx.ExecSQL;
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('update itprodord set itprodord.coefdiv=1 Where itprodord.coefdiv=0');
   DMESTOQUE.Alx1.ExecSQL;
   DMESTOQUE.TransacEstoque.CommitRetaining;
	DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:='Resumo do dia '+EdData1.Text+' até '+EdData2.Text;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;

   DMESTOQUE.TProduto.Close;
   DMESTOQUE.TProduto.SQL.Clear;
   DMESTOQUE.TProduto.SQL.Add('Select * from produto');
   DMESTOQUE.TProduto.SQL.Add('Left Join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod');
	DMESTOQUE.TProduto.SQL.Add('Left Join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod ');
   DMESTOQUE.TProduto.SQL.Add('Where (Produto.COD_LOJA=:CODLOJA)');

   DMESTOQUE.TProduto.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	If (FRMGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
       DMESTOQUE.TProduto.SQL.Add(' AND (upper(grupoprod.descricao) between upper(:GRUPO1) AND upper(:GRUPO2)) ');
       DMESTOQUE.TProduto.ParamByName('GRUPO1').AsString:=FrmGrupo1.EdDescricao.Text;
       DMESTOQUE.TProduto.ParamByName('GRUPO2').AsString:=FrmGrupo2.EdDescricao.Text;
   End;
	If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
       DMESTOQUE.TProduto.SQL.Add(' AND (upper(subgrupoprod.descricao) between upper(:SUBGRUPO1) AND upper(:SUBGRUPO2)) ');
       DMESTOQUE.TProduto.ParamByName('SUBGRUPO1').AsString:=FrmSubGrupo1.EdDescricao.Text;
       DMESTOQUE.TProduto.ParamByName('SUBGRUPO2').AsString:=FrmSubGrupo2.EdDescricao.Text;
   End;
	If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
   	DMESTOQUE.TProduto.SQL.Add(' AND (upper(Produto.descricao) between upper(:PRODUTO1) AND upper(:PRODUTO2)) ');
 	   	DMESTOQUE.TProduto.ParamByName('PRODUTO1').AsString:=FrmProduto1.EdDescricao.Text;
	   	DMESTOQUE.TProduto.ParamByName('PRODUTO2').AsString:=FrmProduto2.EdDescricao.Text;
   End;
   DMESTOQUE.TProduto.Open;

   // primeiro produto
   DMESTOQUE.TProduto.First;

   while not DMESTOQUE.TProduto.Eof do
   begin
      //CALCULA TOTAIS PARA VENDAS À VISTA
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select sum(itenspedven.valortotal) AS TOTALVND, sum((itenspedven.valrep*itenspedven.qtdeprod)/itenspedven.coefdiv) AS TOTALCUSTO from itenspedven ');
      DMESTOQUE.Alx.SQL.Add('left join pedvenda on ');
      DMESTOQUE.Alx.SQL.Add('    itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
      DMESTOQUE.Alx.SQL.Add('Left Join formpag on ');
      DMESTOQUE.Alx.SQL.Add('    pedvenda.cod_formpag = formpag.cod_formpag ');
      DMESTOQUE.Alx.SQL.Add('Left join estoque on ');
      DMESTOQUE.Alx.SQL.Add('    itenspedven.cod_estoque = estoque.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add('Left join subproduto on ');
      DMESTOQUE.Alx.SQL.Add('    estoque.cod_subprod = subproduto.cod_subproduto ');
      DMESTOQUE.Alx.SQL.Add('Left join produto on ');
      DMESTOQUE.Alx.SQL.Add('    subproduto.cod_produto = produto.cod_produto ');
      DMESTOQUE.Alx.SQL.Add('Where (produto.cod_produto=:CODPRODUTO) AND (formpag.descricao='+#39+'À VISTA'+#39+') ');
      DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsString;
      If (EDData1.Text<>'') And (EDData2.Text<>'')
      Then Begin
         DMESTOQUE.Alx.SQL.Add(' AND ((itenspedven.data>=:DATA1) AND (itenspedven.data<=:DATA2)) ');
         DMESTOQUE.Alx.ParamByName('DATA1').AsDate:=StrToDate(EdData1.Text);
         DMESTOQUE.Alx.ParamByName('DATA2').AsDate:=StrToDate(EdData2.Text);
      End;
      DMESTOQUE.Alx.Open;
      //REPASSA VALORES AO PRODUTO
      DMESTOQUE.TProduto.Edit;
      DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency:=DMESTOQUE.Alx.FieldByName('TOTALVND').AsCurrency;
      DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency:=DMESTOQUE.Alx.FieldByName('TOTALCUSTO').AsCurrency;
      //CALCULA TOTAIS PARA PRODUTOS EM ORDEM DE SERVIÇO À VISTA
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' select sum(itprodord.total) AS TOTALVND, sum((itprodord.valrep*itprodord.qtd)/itprodord.coefdiv) AS TOTALCUSTO from itprodord ');
      DMESTOQUE.Alx.SQL.Add(' left join ordem on');
      DMESTOQUE.Alx.SQL.Add('     itprodord.cod_ordem = ordem.cod_ordem');
      DMESTOQUE.Alx.SQL.Add(' Left Join formpag on');
      DMESTOQUE.Alx.SQL.Add('     ordem.cod_formpag = formpag.cod_formpag');
      DMESTOQUE.Alx.SQL.Add(' Left join estoque on');
      DMESTOQUE.Alx.SQL.Add('     itprodord.cod_estoque = estoque.cod_estoque');
      DMESTOQUE.Alx.SQL.Add(' Left join subproduto on');
      DMESTOQUE.Alx.SQL.Add('     estoque.cod_subprod = subproduto.cod_subproduto');
      DMESTOQUE.Alx.SQL.Add(' Left join produto on');
      DMESTOQUE.Alx.SQL.Add('     subproduto.cod_produto = produto.cod_produto');
      DMESTOQUE.Alx.SQL.Add(' Where (produto.cod_produto=:CODPRODUTO) AND (formpag.descricao='+#39+'À VISTA'+#39+')');
      DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsString;
      If (EDData1.Text<>'') And (EDData2.Text<>'')
      Then Begin
         DMESTOQUE.Alx.SQL.Add(' AND ((itprodord.data>=:DATA1) AND (itprodord.data<=:DATA2)) ');
         DMESTOQUE.Alx.ParamByName('DATA1').AsDate:=StrToDate(EdData1.Text);
         DMESTOQUE.Alx.ParamByName('DATA2').AsDate:=StrToDate(EdData2.Text);
      End;
      DMESTOQUE.Alx.Open;
      //REPASSA VALORES AO PRODUTO
      DMESTOQUE.TProduto.Edit;
      DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency:=DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency+DMESTOQUE.Alx.FieldByName('TOTALVND').AsCurrency;
      DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency:=DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency+DMESTOQUE.Alx.FieldByName('TOTALCUSTO').AsCurrency;

      //CALCULA TOTAIS PARA COMPRAS A VISTA
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select sum(itenspedc.valortotal) AS TOTALCOMP from itenspedC ');
      DMESTOQUE.Alx.SQL.Add('left join pedcompra on ');
      DMESTOQUE.Alx.SQL.Add('    itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
      DMESTOQUE.Alx.SQL.Add('Left Join formpag on ');
      DMESTOQUE.Alx.SQL.Add('    pedcompra.cod_formpag = formpag.cod_formpag ');
      DMESTOQUE.Alx.SQL.Add('Left join estoque on ');
      DMESTOQUE.Alx.SQL.Add('    itenspedc.cod_estoque = estoque.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add('Left join subproduto on ');
      DMESTOQUE.Alx.SQL.Add('    estoque.cod_subprod = subproduto.cod_subproduto ');
      DMESTOQUE.Alx.SQL.Add('Left join produto on ');
      DMESTOQUE.Alx.SQL.Add('    subproduto.cod_produto = produto.cod_produto ');
      DMESTOQUE.Alx.SQL.Add('Where (produto.cod_produto=:CODPRODUTO) AND (formpag.descricao='+#39+'À VISTA'+#39+') ');
      DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsString;
      If (EDData1.Text<>'') And (EDData2.Text<>'')
      Then Begin
         DMESTOQUE.Alx.SQL.Add(' AND ((itenspedc.data>=:DATA1) AND (itenspedc.data<=:DATA2)) ');
         DMESTOQUE.Alx.ParamByName('DATA1').AsDate:=StrToDate(EdData1.Text);
         DMESTOQUE.Alx.ParamByName('DATA2').AsDate:=StrToDate(EdData2.Text);
      End;
      DMESTOQUE.Alx.Open;
      DMESTOQUE.TProduto.Edit;
      DMESTOQUE.TProduto.FieldByName('COMPVISTA').AsCurrency:=DMESTOQUE.Alx.FieldByName('TOTALCOMP').AsCurrency;
      //CALCULA TOTAIS PARA VENDAS À PRAZO
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select sum(itenspedven.valortotal) AS TOTALVND, sum((itenspedven.valrep*itenspedven.qtdeprod)/itenspedven.coefdiv) AS TOTALCUSTO from itenspedven ');
      DMESTOQUE.Alx.SQL.Add('left join pedvenda on ');
      DMESTOQUE.Alx.SQL.Add('    itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
      DMESTOQUE.Alx.SQL.Add('Left Join formpag on ');
      DMESTOQUE.Alx.SQL.Add('    pedvenda.cod_formpag = formpag.cod_formpag ');
      DMESTOQUE.Alx.SQL.Add('Left join estoque on ');
      DMESTOQUE.Alx.SQL.Add('    itenspedven.cod_estoque = estoque.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add('Left join subproduto on ');
      DMESTOQUE.Alx.SQL.Add('    estoque.cod_subprod = subproduto.cod_subproduto ');
      DMESTOQUE.Alx.SQL.Add('Left join produto on ');
      DMESTOQUE.Alx.SQL.Add('    subproduto.cod_produto = produto.cod_produto ');
      DMESTOQUE.Alx.SQL.Add('Where (produto.cod_produto=:CODPRODUTO) AND ((itenspedven.data>=:DATA1) AND (itenspedven.data<=:DATA2)) AND (formpag.descricao<>'+#39+'À VISTA'+#39+') ');
      DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsString;
      If (EDData1.Text<>'') And (EDData2.Text<>'')
      Then Begin
         DMESTOQUE.Alx.SQL.Add(' AND ((itenspedven.data>=:DATA1) AND (itenspedven.data<=:DATA2))');
         DMESTOQUE.Alx.ParamByName('DATA1').AsDate:=StrToDate(EdData1.Text);
         DMESTOQUE.Alx.ParamByName('DATA2').AsDate:=StrToDate(EdData2.Text);
      End;
      DMESTOQUE.Alx.Open;
      //REPASSA VALORES AO PRODUTO
      DMESTOQUE.TProduto.Edit;
      DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency:=DMESTOQUE.Alx.FieldByName('TOTALVND').AsCurrency;
      DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency:=DMESTOQUE.Alx.FieldByName('TOTALCUSTO').AsCurrency;
      //CALCULA TOTAIS PARA PRODUTOS EM ORDEM DE SERVIÇO À PRAZO
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add(' select sum(itprodord.total) AS TOTALVND, sum((itprodord.valrep*itprodord.qtd)/itprodord.coefdiv) AS TOTALCUSTO from itprodord');
      DMESTOQUE.Alx.SQL.Add(' left join ordem on');
      DMESTOQUE.Alx.SQL.Add('     itprodord.cod_ordem = ordem.cod_ordem');
      DMESTOQUE.Alx.SQL.Add(' Left Join formpag on');
      DMESTOQUE.Alx.SQL.Add('     ordem.cod_formpag = formpag.cod_formpag');
      DMESTOQUE.Alx.SQL.Add(' Left join estoque on');
      DMESTOQUE.Alx.SQL.Add('     itprodord.cod_estoque = estoque.cod_estoque');
      DMESTOQUE.Alx.SQL.Add(' Left join subproduto on');
      DMESTOQUE.Alx.SQL.Add('     estoque.cod_subprod = subproduto.cod_subproduto');
      DMESTOQUE.Alx.SQL.Add(' Left join produto on');
      DMESTOQUE.Alx.SQL.Add('     subproduto.cod_produto = produto.cod_produto');
      DMESTOQUE.Alx.SQL.Add(' Where (produto.cod_produto=:CODPRODUTO) AND (formpag.descricao<>'+#39+'À VISTA'+#39+')');
      DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsString;
      If (EDData1.Text<>'') And (EDData2.Text<>'')
      Then Begin
         DMESTOQUE.Alx.SQL.Add('AND ((itprodord.data>=:DATA1) AND (itprodord.data<=:DATA2))');
         DMESTOQUE.Alx.ParamByName('DATA1').AsDate:=StrToDate(EdData1.Text);
         DMESTOQUE.Alx.ParamByName('DATA2').AsDate:=StrToDate(EdData2.Text);
      End;
      DMESTOQUE.Alx.Open;
      //REPASSA VALORES AO PRODUTO
      DMESTOQUE.TProduto.Edit;
      DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency:=DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency+DMESTOQUE.Alx.FieldByName('TOTALVND').AsCurrency;
      DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency:=DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency+DMESTOQUE.Alx.FieldByName('TOTALCUSTO').AsCurrency;
      //CALCULA TOTAIS PARA COMPRAS A PRAZO
      DMESTOQUE.Alx.Close;
      DMESTOQUE.Alx.SQL.Clear;
      DMESTOQUE.Alx.SQL.Add('select sum(itenspedc.valortotal) AS TOTALCOMP from itenspedC ');
      DMESTOQUE.Alx.SQL.Add('left join pedcompra on ');
      DMESTOQUE.Alx.SQL.Add('    itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
      DMESTOQUE.Alx.SQL.Add('Left Join formpag on ');
      DMESTOQUE.Alx.SQL.Add('    pedcompra.cod_formpag = formpag.cod_formpag ');
      DMESTOQUE.Alx.SQL.Add('Left join estoque on ');
      DMESTOQUE.Alx.SQL.Add('    itenspedc.cod_estoque = estoque.cod_estoque ');
      DMESTOQUE.Alx.SQL.Add('Left join subproduto on ');
      DMESTOQUE.Alx.SQL.Add('    estoque.cod_subprod = subproduto.cod_subproduto ');
      DMESTOQUE.Alx.SQL.Add('Left join produto on ');
      DMESTOQUE.Alx.SQL.Add('    subproduto.cod_produto = produto.cod_produto ');
      DMESTOQUE.Alx.SQL.Add('Where (produto.cod_produto=:CODPRODUTO) AND ((itenspedc.data>=:DATA1) AND (itenspedc.data<=:DATA2)) AND (formpag.descricao<>'+#39+'À VISTA'+#39+') ');
      DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsString;
      If (EDData1.Text<>'') And (EDData2.Text<>'')
      Then Begin
         DMESTOQUE.Alx.SQL.Add(' AND ((itenspedc.data>=:DATA1) AND (itenspedc.data<=:DATA2))');
         DMESTOQUE.Alx.ParamByName('DATA1').AsDate:=StrToDate(EdData1.Text);
         DMESTOQUE.Alx.ParamByName('DATA2').AsDate:=StrToDate(EdData2.Text);
      End;
      DMESTOQUE.Alx.Open;
      DMESTOQUE.TProduto.Edit;
      DMESTOQUE.TProduto.FieldByName('COMPPRAZO').AsCurrency:=DMESTOQUE.Alx.FieldByName('TOTALCOMP').AsCurrency;
      DMESTOQUE.TProduto.Post;
      PComunica.Caption:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsString;

   DMESTOQUE.TProduto.Next;
   end;
   DMESTOQUE.TransacEstoque.CommitRetaining;

	Alx.Close;
	Alx.SQL.Clear;
	Alx.SQL.Add('Select grupoprod.descricao GRUPO, subgrupoprod.descricao AS SUBGRUPO, produto.descricao AS PRODUTO, ');
	Alx.SQL.Add('produto.vendvista, produto.vendprazo, produto.compprazo, produto.compvista, produto.custovenda ');
	Alx.SQL.Add('from Produto ');
	Alx.SQL.Add('Left Join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod ');
	Alx.SQL.Add('Left Join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod ');
	Alx.SQL.Add('WHERE (produto.cod_loja=:CODLOJA) AND ((produto.vendvista<>0) OR (produto.vendprazo<>0) OR (produto.compvista<>0) OR (produto.compprazo<>0)) ');
	Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;

	If (FRMGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
       Alx.SQL.Add(' AND (upper(grupoprod.descricao) between upper(:GRUPO1) AND upper(:GRUPO2)) ');
       Alx.ParamByName('GRUPO1').AsString:=FrmGrupo1.EdDescricao.Text;
       Alx.ParamByName('GRUPO2').AsString:=FrmGrupo2.EdDescricao.Text;
   End;
	If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
       Alx.SQL.Add(' AND (upper(subgrupoprod.descricao) between upper(:SUBGRUPO1) AND upper(:SUBGRUPO2)) ');
       Alx.ParamByName('SUBGRUPO1').AsString:=FrmSubGrupo1.EdDescricao.Text;
       Alx.ParamByName('SUBGRUPO2').AsString:=FrmSubGrupo2.EdDescricao.Text;
   End;
	If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
   	Alx.SQL.Add(' AND (upper(produto.descricao) between upper(:PRODUTO1) AND upper(:PRODUTO2)) ');
 	   	Alx.ParamByName('PRODUTO1').AsString:=FrmProduto1.EdDescricao.Text;
	   	Alx.ParamByName('PRODUTO2').AsString:=FrmProduto2.EdDescricao.Text;
   End;
	Alx.SQL.Add('Order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao ');
	Alx.Open;
   If Not Alx.IsEmpty
   Then Begin
       QrResumoVC.Preview;
   End
   Else Begin
       Mensagem('ATENÇÃO', 'Relatório Retornou Vazio !', '', 1, 1, False, 'a');
   End;
End;
//Imprime resumo de vendas/Compras com valores monetarios e qtd por produtos
Procedure TFRelEstoque.ImpResumoMensVC;
Var
	XCP, XCV, XVP, XVV, XQC, XQV: Real; //Totalizadores do relatorio
	XMCP, XMCV, XMVP, XMVV, XMQC, XMQV: Real; //Totalizadores do relatorio para mes
Begin
      	//ZERA VARIAVEIS DO RELATORIO
		XCP:=0;
       XCV:=0;
       XVP:=0;
       XVV:=0;
       XQC:=0;
       XQV:=0;
   	//APAGA REGISTROS DA TABERLA TMP
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add('DELETE FROM TMP ');
       DMCONTA.TAlx.ExecSQL;
       //ZERA CODIGO PARA TABELA TMP
       DMMACS.TCodigo.Edit;
       DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger:=1;
       DMMACS.TCodigo.Post;
       DMMACS.IBTCodigo.CommitRetaining;
       DMCONTA.IBT.CommitRetaining;
       //SELECIONA Itens Pedido de Vendas
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' Select distinct(extract(month from itenspedven.data)) AS MES, extract(year from itenspedven.data) AS ANO from itenspedven ');
       DMCONTA.TAlx.SQL.Add(' left join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
       DMCONTA.TAlx.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
       DMCONTA.TAlx.SQL.Add(' left join produto on produto.cod_produto = subproduto.cod_produto ');
       DMCONTA.TAlx.SQL.Add(' WHERE (ESTOQUE.COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+')');
		If (FRMGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'')
   	Then Begin//haverá seleção por grupo
       	DMCONTA.TAlx.SQL.Add(' AND (upper(grupoprod.descricao) between upper(:GRUPO1) AND upper(:GRUPO2)) ');
       	DMCONTA.TAlx.ParamByName('GRUPO1').AsString:=FrmGrupo1.EdDescricao.Text;
       	DMCONTA.TAlx.ParamByName('GRUPO2').AsString:=FrmGrupo2.EdDescricao.Text;
   	End;
		If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'')
   	Then Begin//haverá seleção por grupo
       	DMCONTA.TAlx.SQL.Add(' AND (upper(subgrupoprod.descricao) between upper(:SUBGRUPO1) AND upper(:SUBGRUPO2)) ');
       	DMCONTA.TAlx.ParamByName('SUBGRUPO1').AsString:=FrmSubGrupo1.EdDescricao.Text;
       	DMCONTA.TAlx.ParamByName('SUBGRUPO2').AsString:=FrmSubGrupo2.EdDescricao.Text;
   	End;
		If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'')
   	Then Begin//haverá seleção por grupo
   		DMCONTA.TAlx.SQL.Add(' AND (upper(Produto.descricao) between upper(:PRODUTO1) AND upper(:PRODUTO2)) ');
 	   		DMCONTA.TAlx.ParamByName('PRODUTO1').AsString:=FrmProduto1.EdDescricao.Text;
	   		DMCONTA.TAlx.ParamByName('PRODUTO2').AsString:=FrmProduto2.EdDescricao.Text;
   	End;
		If (FrmSubProduto1.EdDescricao.Text<>'') And (FrmSubProduto2.EdDescricao.Text<>'')
   	Then Begin//haverá seleção por grupo
   		DMCONTA.TAlx.SQL.Add(' AND (upper(SubProduto.descricao) between upper(:SUBPROD1) AND upper(:SUBPROD2)) ');
       	DMCONTA.TAlx.ParamByName('SUBPROD1').AsString:=FrmSubProduto1.EdDescricao.Text;
       	DMCONTA.TAlx.ParamByName('SUBPROD2').AsString:=FrmSubProduto2.EdDescricao.Text;
   	End;
		If (EdData1.Text<>'') AND (EdData2.Text<>'')
   	Then Begin
   		DMCONTA.TAlx.SQL.Add(' AND ((itenspedven.Data>=:DATA1) And (itenspedven.Data<=:DATA2))');
   		DMCONTA.TAlx.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
   		DMCONTA.TAlx.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   	End;
       DMCONTA.TAlx.Open;
       DMCONTA.TAlx.First;
       //INSERE Itens Pedido de Venda EM TEMPORARIO
       while not DMCONTA.TAlx.Eof do
       Begin
         	DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
           DMMACS.TMP.FieldByName('INT1').AsInteger:=DMCONTA.TAlx.FieldByName('MES').AsInteger;
           DMMACS.TMP.FieldByName('DESC2').AsString:=DMCONTA.TAlx.FieldByName('ANO').AsString;
           DMMACS.TMP.Post;
           DMCONTA.TAlx.Next;
       End;
       DMMACS.Transaction.CommitRetaining;
       //SELECIONA Itens de Pedido de Compra
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' Select distinct(extract(month from itenspedc.data)) AS MES, extract(year from itenspedc.data) AS ANO from itenspedc ');
       DMCONTA.TAlx.SQL.Add(' left join estoque on itenspedc.cod_estoque = estoque.cod_estoque ');
       DMCONTA.TAlx.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
       DMCONTA.TAlx.SQL.Add(' left join produto on produto.cod_produto = subproduto.cod_produto ');
       DMCONTA.TAlx.SQL.Add(' WHERE (ESTOQUE.COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+')');
		If (FRMGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'')
   	Then Begin//haverá seleção por grupo
       	DMCONTA.TAlx.SQL.Add(' AND (upper(grupoprod.descricao) between upper(:GRUPO1) AND upper(:GRUPO2)) ');
       	DMCONTA.TAlx.ParamByName('GRUPO1').AsString:=FrmGrupo1.EdDescricao.Text;
       	DMCONTA.TAlx.ParamByName('GRUPO2').AsString:=FrmGrupo2.EdDescricao.Text;
   	End;
		If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'')
   	Then Begin//haverá seleção por grupo
       	DMCONTA.TAlx.SQL.Add(' AND (upper(subgrupoprod.descricao) between upper(:SUBGRUPO1) AND upper(:SUBGRUPO2)) ');
       	DMCONTA.TAlx.ParamByName('SUBGRUPO1').AsString:=FrmSubGrupo1.EdDescricao.Text;
       	DMCONTA.TAlx.ParamByName('SUBGRUPO2').AsString:=FrmSubGrupo2.EdDescricao.Text;
   	End;
		If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'')
   	Then Begin//haverá seleção por grupo
   		DMCONTA.TAlx.SQL.Add(' AND (upper(Produto.descricao) between upper(:PRODUTO1) AND upper(:PRODUTO2)) ');
 	   		DMCONTA.TAlx.ParamByName('PRODUTO1').AsString:=FrmProduto1.EdDescricao.Text;
	   		DMCONTA.TAlx.ParamByName('PRODUTO2').AsString:=FrmProduto2.EdDescricao.Text;
   	End;
		If (FrmSubProduto1.EdDescricao.Text<>'') And (FrmSubProduto2.EdDescricao.Text<>'')
   	Then Begin//haverá seleção por grupo
   		DMCONTA.TAlx.SQL.Add(' AND (upper(SubProduto.descricao) between upper(:SUBPROD1) AND upper(:SUBPROD2)) ');
       	DMCONTA.TAlx.ParamByName('SUBPROD1').AsString:=FrmSubProduto1.EdDescricao.Text;
       	DMCONTA.TAlx.ParamByName('SUBPROD2').AsString:=FrmSubProduto2.EdDescricao.Text;
   	End;
		If (EdData1.Text<>'') AND (EdData2.Text<>'')
   	Then Begin
   		DMCONTA.TAlx.SQL.Add(' AND ((itenspedc.Data>=:DATA1) And (itenspedc.Data<=:DATA2))');
   		DMCONTA.TAlx.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
   		DMCONTA.TAlx.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   	End;

       DMCONTA.TAlx.Open;
       DMCONTA.TAlx.First;
       //INSERE ITENS DE PEDIDO DE COMPRA EM TEMPORARIO
       while not DMCONTA.TAlx.Eof do
       Begin
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('SELECT * FROM TMP WHERE TMP.INT1=:DESC1 AND TMP.DESC2=:DESC2');
           DMMACS.TALX.ParamByName('DESC1').AsInteger:=DMCONTA.TAlx.FieldByName('MES').AsInteger;
           DMMACS.TALX.ParamByName('DESC2').AsString:=DMCONTA.TAlx.FieldByName('ANO').AsString;
           DMMACS.TALX.Open;
           If DMMACS.TALX.IsEmpty
           Then Begin
           	//se naum encontrou nenhuma outra data inclui a do contas a pagar
           	DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
           	DMMACS.TMP.FieldByName('INT1').AsString:=DMCONTA.TAlx.FieldByName('MES').AsString;
           	DMMACS.TMP.FieldByName('DESC2').AsString:=DMCONTA.TAlx.FieldByName('ANO').AsString;
           	DMMACS.TMP.Post;
           	DMCONTA.TAlx.Next;
           End;
           DMCONTA.TAlx.Next;
       End;
       DMMACS.Transaction.CommitRetaining;

       //SELECIONA Itens de Ordens de Serviço
       DMCONTA.TAlx.Close;
       DMCONTA.TAlx.SQL.Clear;
       DMCONTA.TAlx.SQL.Add(' Select distinct(extract(month from itprodord.data)) AS MES, extract(year from itprodord.data) AS ANO from itprodord ');
       DMCONTA.TAlx.SQL.Add(' left join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
       DMCONTA.TAlx.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
       DMCONTA.TAlx.SQL.Add(' left join produto on produto.cod_produto = subproduto.cod_produto ');
       DMCONTA.TAlx.SQL.Add(' WHERE (ESTOQUE.COD_LOJA = '+#39+FMenu.LCODLOJA.Caption+#39+')');
		If (FRMGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'')
   	Then Begin//haverá seleção por grupo
       	DMCONTA.TAlx.SQL.Add(' AND (upper(grupoprod.descricao) between upper(:GRUPO1) AND upper(:GRUPO2)) ');
       	DMCONTA.TAlx.ParamByName('GRUPO1').AsString:=FrmGrupo1.EdDescricao.Text;
       	DMCONTA.TAlx.ParamByName('GRUPO2').AsString:=FrmGrupo2.EdDescricao.Text;
   	End;
		If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'')
   	Then Begin//haverá seleção por grupo
       	DMCONTA.TAlx.SQL.Add(' AND (upper(subgrupoprod.descricao) between upper(:SUBGRUPO1) AND upper(:SUBGRUPO2)) ');
       	DMCONTA.TAlx.ParamByName('SUBGRUPO1').AsString:=FrmSubGrupo1.EdDescricao.Text;
       	DMCONTA.TAlx.ParamByName('SUBGRUPO2').AsString:=FrmSubGrupo2.EdDescricao.Text;
   	End;
		If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'')
   	Then Begin//haverá seleção por grupo
   		DMCONTA.TAlx.SQL.Add(' AND (upper(Produto.descricao) between upper(:PRODUTO1) AND upper(:PRODUTO2)) ');
 	   		DMCONTA.TAlx.ParamByName('PRODUTO1').AsString:=FrmProduto1.EdDescricao.Text;
	   		DMCONTA.TAlx.ParamByName('PRODUTO2').AsString:=FrmProduto2.EdDescricao.Text;
   	End;
		If (FrmSubProduto1.EdDescricao.Text<>'') And (FrmSubProduto2.EdDescricao.Text<>'')
   	Then Begin//haverá seleção por grupo
   		DMCONTA.TAlx.SQL.Add(' AND (upper(SubProduto.descricao) between upper(:SUBPROD1) AND upper(:SUBPROD2)) ');
       	DMCONTA.TAlx.ParamByName('SUBPROD1').AsString:=FrmSubProduto1.EdDescricao.Text;
       	DMCONTA.TAlx.ParamByName('SUBPROD2').AsString:=FrmSubProduto2.EdDescricao.Text;
   	End;
		If (EdData1.Text<>'') AND (EdData2.Text<>'')
   	Then Begin
   		DMCONTA.TAlx.SQL.Add(' AND ((itprodord.DATA>=:DATA1) And (itprodord.Data<=:DATA2))');
   		DMCONTA.TAlx.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
   		DMCONTA.TAlx.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   	End;
       DMCONTA.TAlx.SQL.Text;
       DMCONTA.TAlx.Open;
       DMCONTA.TAlx.First;
       //INSERE ITENS DE ORDEM DE SERVICO EM TEMPORARIO
       while not DMCONTA.TAlx.Eof do
       Begin
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('SELECT * FROM TMP WHERE TMP.INT1=:DESC1 AND TMP.DESC2=:DESC2');
           DMMACS.TALX.ParamByName('DESC1').AsInteger:=DMCONTA.TAlx.FieldByName('MES').AsInteger;
           DMMACS.TALX.ParamByName('DESC2').AsString:=DMCONTA.TAlx.FieldByName('ANO').AsString;
           DMMACS.TALX.Open;
           If DMMACS.TALX.IsEmpty
           Then Begin
           	//se naum encontrou nenhuma outra data inclui a do contas a pagar
           	DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
           	DMMACS.TMP.FieldByName('INT1').AsString:=DMCONTA.TAlx.FieldByName('MES').AsString;
           	DMMACS.TMP.FieldByName('DESC2').AsString:=DMCONTA.TAlx.FieldByName('ANO').AsString;
           	DMMACS.TMP.Post;
           	DMCONTA.TAlx.Next;
           End;
           DMCONTA.TAlx.Next;
       End;
       DMMACS.Transaction.CommitRetaining;
       ////////////////////////////////////////
       //VERIFICA CMPRAS E VENDAS PARA CADA MES
       ////////////////////////////////////////
       DMMACS.TALX.Close;
       DMMACS.TALX.SQL.Clear;
       DMMACS.TALX.SQL.Add('SELECT * FROM TMP order by tmp.desc2, tmp.Int1');
       DMMACS.TALX.Open;
       DMMACS.TALX.First;
       //AGORA APAGA ARQUIVOS TEMPORARIOS
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('DELETE FROM TMP');
       DMESTOQUE.Alx.ExecSQL;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       //ZERA CODIGO PARA TABELA TMP
       DMMACS.TCodigo.Edit;
       DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger:=1;
       DMMACS.TCodigo.Post;
       DMMACS.IBTCodigo.CommitRetaining;
       While not DMMACS.TALX.Eof do
       Begin
           //Se nao for o primeiro mes jah pode passar os totalizadores do mes anterior
       	If not DMMACS.TALX.Bof
           Then Begin
          		DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
           	DMMACS.TMP.FieldByName('INT1').AsInteger:=2;
				DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XMCP;
				DMMACS.TMP.FieldByName('VLR2').AsCurrency:=XMCV;
				DMMACS.TMP.FieldByName('VLR3').AsCurrency:=XMVP;
				DMMACS.TMP.FieldByName('VLR4').AsCurrency:=XMVV;
				DMMACS.TMP.FieldByName('VLR5').AsCurrency:=XMQC;
				DMMACS.TMP.FieldByName('VLR6').AsCurrency:=XMQV;
				DMMACS.TMP.Post;
           End;

       	//ZERA VARIAVEIS PARA O MES
			XMCP:=0;
           XMCV:=0;
           XMVP:=0;
           XMVV:=0;
           XMQC:=0;
           XMQV:=0;
       	//PASSA MES A TMP
          	DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
           DMMACS.TMP.FieldByName('INT1').AsInteger:=1;
           Case DMMACS.TALX.FieldByName('INT1').AsInteger of
           	1:DMMACS.TMP.FieldByName('DESC1').AsString:='JANEIRO/'+DMMACS.TAlx.FieldByName('DESC2').AsString;
           	2:DMMACS.TMP.FieldByName('DESC1').AsString:='FEVEREIRO/'+DMMACS.TAlx.FieldByName('DESC2').AsString;
           	3:DMMACS.TMP.FieldByName('DESC1').AsString:='MARÇO/'+DMMACS.TAlx.FieldByName('DESC2').AsString;
           	4:DMMACS.TMP.FieldByName('DESC1').AsString:='ABRIL/'+DMMACS.TAlx.FieldByName('DESC2').AsString;
           	5:DMMACS.TMP.FieldByName('DESC1').AsString:='MAIO/'+DMMACS.TAlx.FieldByName('DESC2').AsString;
           	6:DMMACS.TMP.FieldByName('DESC1').AsString:='JUNHO/'+DMMACS.TAlx.FieldByName('DESC2').AsString;
           	7:DMMACS.TMP.FieldByName('DESC1').AsString:='JULHO/'+DMMACS.TAlx.FieldByName('DESC2').AsString;
           	8:DMMACS.TMP.FieldByName('DESC1').AsString:='AGOSTO/'+DMMACS.TAlx.FieldByName('DESC2').AsString;
           	9:DMMACS.TMP.FieldByName('DESC1').AsString:='SETEMBRO/'+DMMACS.TAlx.FieldByName('DESC2').AsString;
           	10:DMMACS.TMP.FieldByName('DESC1').AsString:='OUTUBRO/'+DMMACS.TAlx.FieldByName('DESC2').AsString;
           	11:DMMACS.TMP.FieldByName('DESC1').AsString:='NOVEMBRO/'+DMMACS.TAlx.FieldByName('DESC2').AsString;
           	12:DMMACS.TMP.FieldByName('DESC1').AsString:='DEZEMBRO/'+DMMACS.TAlx.FieldByName('DESC2').AsString;
           End;
			DMMACS.TMP.Post;
       	///////////////////////////////////////////////////////////////////////
       	//VERIFICA PARA CADA PRODUTO SE EXISTE ALGUM LANCAMENTO PRA ELE NA DATA
           ///////////////////////////////////////////////////////////////////////
           //LIMPA VLRS TEMPORARIOS DE PRODUTO
           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add('update PRODUTO SET PRODUTO.COMPPRAZO=0, COMPVISTA=0, CUSTOVENDA=0, VENDPRAZO=0, VENDVISTA=0, QTDCOMP=0, QTDVEND=0');
           DMESTOQUE.Alx.ExecSQL;
           DMESTOQUE.TransacEstoque.CommitRetaining;
           DMESTOQUE.TransacEstoque.CommitRetaining;

           DMESTOQUE.TProduto.Close;
           DMESTOQUE.TProduto.SQL.Clear;
           DMESTOQUE.TProduto.SQL.Add('SELECT * FROM PRODUTO where (produto.cod_loja=:loja) ');
           DMESTOQUE.TProduto.ParamByName('LOJA').AsString:=FMenu.LCODLOJA.Caption;
			If (FRMGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'')
   		Then Begin//haverá seleção por grupo
       		DMESTOQUE.TProduto.SQL.Add(' AND (upper(grupoprod.descricao) between upper(:GRUPO1) AND upper(:GRUPO2)) ');
       		DMESTOQUE.TProduto.ParamByName('GRUPO1').AsString:=FrmGrupo1.EdDescricao.Text;
       		DMESTOQUE.TProduto.ParamByName('GRUPO2').AsString:=FrmGrupo2.EdDescricao.Text;
   		End;
			If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'')
   		Then Begin//haverá seleção por grupo
       		DMESTOQUE.TProduto.SQL.Add(' AND (upper(subgrupoprod.descricao) between upper(:SUBGRUPO1) AND upper(:SUBGRUPO2)) ');
       		DMESTOQUE.TProduto.ParamByName('SUBGRUPO1').AsString:=FrmSubGrupo1.EdDescricao.Text;
       		DMESTOQUE.TProduto.ParamByName('SUBGRUPO2').AsString:=FrmSubGrupo2.EdDescricao.Text;
   		End;
			If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'')
   		Then Begin//haverá seleção por grupo
   			DMESTOQUE.TProduto.SQL.Add(' AND (upper(Produto.descricao) between upper(:PRODUTO1) AND upper(:PRODUTO2)) ');
 	   			DMESTOQUE.TProduto.ParamByName('PRODUTO1').AsString:=FrmProduto1.EdDescricao.Text;
	   			DMESTOQUE.TProduto.ParamByName('PRODUTO2').AsString:=FrmProduto2.EdDescricao.Text;
   		End;

           DMESTOQUE.TProduto.Open;
       	DMESTOQUE.TProduto.First;
			While Not DMESTOQUE.TProduto.Eof Do
       	Begin
				//CALCULA TOTAIS PARA VENDAS À VISTA
           	DMESTOQUE.Alx.Close;
           	DMESTOQUE.Alx.SQL.Clear;
           	DMESTOQUE.Alx.SQL.Add('select sum(itenspedven.valortotal) AS TOTALVND, sum((itenspedven.valrep*itenspedven.qtdeprod)/itenspedven.coefdiv) AS TOTALCUSTO, SUM(itenspedven.qtdeprod) AS QTD from itenspedven ');
           	DMESTOQUE.Alx.SQL.Add('left join pedvenda on ');
           	DMESTOQUE.Alx.SQL.Add('    itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
           	DMESTOQUE.Alx.SQL.Add('Left Join formpag on ');
           	DMESTOQUE.Alx.SQL.Add('    pedvenda.cod_formpag = formpag.cod_formpag ');
           	DMESTOQUE.Alx.SQL.Add('Left join estoque on ');
           	DMESTOQUE.Alx.SQL.Add('    itenspedven.cod_estoque = estoque.cod_estoque ');
           	DMESTOQUE.Alx.SQL.Add('Left join subproduto on ');
           	DMESTOQUE.Alx.SQL.Add('    estoque.cod_subprod = subproduto.cod_subproduto ');
           	DMESTOQUE.Alx.SQL.Add('Left join produto on ');
           	DMESTOQUE.Alx.SQL.Add('    subproduto.cod_produto = produto.cod_produto ');
           	DMESTOQUE.Alx.SQL.Add('Where (produto.cod_produto=:CODPRODUTO) AND (extract(month from itenspedven.data)=:MES) AND (extract(year from itenspedven.data)=:ANO) AND ((formpag.descricao='+#39+'À VISTA'+#39+'))');
				DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsString;
				DMESTOQUE.Alx.ParamByName('MES').AsString:=DMMACS.TAlx.FieldByName('INT1').AsString;
				DMESTOQUE.Alx.ParamByName('ANO').AsString:=DMMACS.TAlx.FieldByName('DESC2').AsString;
				DMESTOQUE.Alx.Open;
           	//REPASSA VALORES AO PRODUTO
				DMESTOQUE.TProduto.Edit;
           	DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency:=DMESTOQUE.Alx.FieldByName('TOTALVND').AsCurrency;
           	DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency:=DMESTOQUE.Alx.FieldByName('TOTALCUSTO').AsCurrency;
           	DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency:=DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
				//CALCULA TOTAIS PARA PRODUTOS EM ORDEM DE SERVIÇO À VISTA
           	DMESTOQUE.Alx.Close;
           	DMESTOQUE.Alx.SQL.Clear;
           	DMESTOQUE.Alx.SQL.Add(' select sum(itprodord.total) AS TOTALVND, sum((itprodord.valrep*itprodord.qtd)/itprodord.coefdiv) AS TOTALCUSTO, SUM(itprodord.qtd) AS QTD from itprodord ');
           	DMESTOQUE.Alx.SQL.Add(' left join ordem on');
           	DMESTOQUE.Alx.SQL.Add('     itprodord.cod_ordem = ordem.cod_ordem');
           	DMESTOQUE.Alx.SQL.Add(' Left Join formpag on');
           	DMESTOQUE.Alx.SQL.Add('     ordem.cod_formpag = formpag.cod_formpag');
           	DMESTOQUE.Alx.SQL.Add(' Left join estoque on');
           	DMESTOQUE.Alx.SQL.Add('     itprodord.cod_estoque = estoque.cod_estoque');
           	DMESTOQUE.Alx.SQL.Add(' Left join subproduto on');
           	DMESTOQUE.Alx.SQL.Add('     estoque.cod_subprod = subproduto.cod_subproduto');
           	DMESTOQUE.Alx.SQL.Add(' Left join produto on');
           	DMESTOQUE.Alx.SQL.Add('     subproduto.cod_produto = produto.cod_produto');
           	DMESTOQUE.Alx.SQL.Add(' Where (produto.cod_produto=:CODPRODUTO) AND (extract(month from itprodord.data)=:MES) AND (extract(year from itprodord.data)=:ANO) AND ((formpag.descricao='+#39+'À VISTA'+#39+'))');
				DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsString;
				DMESTOQUE.Alx.ParamByName('MES').AsString:=DMMACS.TAlx.FieldByName('INT1').AsString;
				DMESTOQUE.Alx.ParamByName('ANO').AsString:=DMMACS.TAlx.FieldByName('DESC2').AsString;
				DMESTOQUE.Alx.Open;
           	//REPASSA VALORES AO PRODUTO
				DMESTOQUE.TProduto.Edit;
           	DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency:=DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency+DMESTOQUE.Alx.FieldByName('TOTALVND').AsCurrency;
           	DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency:=DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency+DMESTOQUE.Alx.FieldByName('TOTALCUSTO').AsCurrency;
           	DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency:=DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency+DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;

				//CALCULA TOTAIS PARA COMPRAS A VISTA
           	DMESTOQUE.Alx.Close;
           	DMESTOQUE.Alx.SQL.Clear;
           	DMESTOQUE.Alx.SQL.Add('select sum(itenspedc.valortotal) AS TOTALCOMP, SUM(itenspedc.qtdeprod) AS QTD from itenspedC ');
           	DMESTOQUE.Alx.SQL.Add('left join pedcompra on ');
           	DMESTOQUE.Alx.SQL.Add('    itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
           	DMESTOQUE.Alx.SQL.Add('Left Join formpag on ');
           	DMESTOQUE.Alx.SQL.Add('    pedcompra.cod_formpag = formpag.cod_formpag ');
           	DMESTOQUE.Alx.SQL.Add('Left join estoque on ');
           	DMESTOQUE.Alx.SQL.Add('    itenspedc.cod_estoque = estoque.cod_estoque ');
           	DMESTOQUE.Alx.SQL.Add('Left join subproduto on ');
           	DMESTOQUE.Alx.SQL.Add('    estoque.cod_subprod = subproduto.cod_subproduto ');
           	DMESTOQUE.Alx.SQL.Add('Left join produto on ');
           	DMESTOQUE.Alx.SQL.Add('    subproduto.cod_produto = produto.cod_produto ');
           	DMESTOQUE.Alx.SQL.Add('Where (produto.cod_produto=:CODPRODUTO) AND (extract(month from itenspedC.data)=:MES) AND (extract(year from itenspedC.data)=:ANO) AND ((formpag.descricao='+#39+'À VISTA'+#39+')) ');
				DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsString;
				DMESTOQUE.Alx.ParamByName('MES').AsString:=DMMACS.TAlx.FieldByName('INT1').AsString;
				DMESTOQUE.Alx.ParamByName('ANO').AsString:=DMMACS.TAlx.FieldByName('DESC2').AsString;
				DMESTOQUE.Alx.Open;
           	DMESTOQUE.TProduto.Edit;
           	DMESTOQUE.TProduto.FieldByName('COMPVISTA').AsCurrency:=DMESTOQUE.Alx.FieldByName('TOTALCOMP').AsCurrency;
           	DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsCurrency:=DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
				//CALCULA TOTAIS PARA VENDAS À PRAZO
           	DMESTOQUE.Alx.Close;
           	DMESTOQUE.Alx.SQL.Clear;
           	DMESTOQUE.Alx.SQL.Add('select sum(itenspedven.valortotal) AS TOTALVND, sum((itenspedven.valrep*itenspedven.qtdeprod)/itenspedven.coefdiv) AS TOTALCUSTO, SUM(itenspedven.qtdeprod) AS QTD from itenspedven ');
           	DMESTOQUE.Alx.SQL.Add('left join pedvenda on ');
           	DMESTOQUE.Alx.SQL.Add('    itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
               DMESTOQUE.Alx.SQL.Add('Left Join formpag on ');
           	DMESTOQUE.Alx.SQL.Add('    pedvenda.cod_formpag = formpag.cod_formpag ');
           	DMESTOQUE.Alx.SQL.Add('Left join estoque on ');
           	DMESTOQUE.Alx.SQL.Add('    itenspedven.cod_estoque = estoque.cod_estoque ');
           	DMESTOQUE.Alx.SQL.Add('Left join subproduto on ');
           	DMESTOQUE.Alx.SQL.Add('    estoque.cod_subprod = subproduto.cod_subproduto ');
           	DMESTOQUE.Alx.SQL.Add('Left join produto on ');
           	DMESTOQUE.Alx.SQL.Add('    subproduto.cod_produto = produto.cod_produto ');
           	DMESTOQUE.Alx.SQL.Add('Where (produto.cod_produto=:CODPRODUTO) AND (extract(month from itenspedven.data)=:MES) AND (extract(year from itenspedven.data)=:ANO) AND ((formpag.descricao<>'+#39+'À VISTA'+#39+') or (pedvenda.cod_formpag is null)) ');
				DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsString;
				DMESTOQUE.Alx.ParamByName('MES').AsString:=DMMACS.TAlx.FieldByName('INT1').AsString;
				DMESTOQUE.Alx.ParamByName('ANO').AsString:=DMMACS.TAlx.FieldByName('DESC2').AsString;
				DMESTOQUE.Alx.Open;
           	//REPASSA VALORES AO PRODUTO
				DMESTOQUE.TProduto.Edit;
           	DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency:=DMESTOQUE.Alx.FieldByName('TOTALVND').AsCurrency;
           	DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency:=DMESTOQUE.Alx.FieldByName('TOTALCUSTO').AsCurrency;
           	DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency:=DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency+DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
				//CALCULA TOTAIS PARA PRODUTOS EM ORDEM DE SERVIÇO À PRAZO
           	DMESTOQUE.Alx.Close;
           	DMESTOQUE.Alx.SQL.Clear;
           	DMESTOQUE.Alx.SQL.Add(' select sum(itprodord.total) AS TOTALVND, sum((itprodord.valrep*itprodord.qtd)/itprodord.coefdiv) AS TOTALCUSTO, SUM(itprodord.qtd) AS QTD from itprodord');
           	DMESTOQUE.Alx.SQL.Add(' left join ordem on');
           	DMESTOQUE.Alx.SQL.Add('     itprodord.cod_ordem = ordem.cod_ordem');
           	DMESTOQUE.Alx.SQL.Add(' Left Join formpag on');
           	DMESTOQUE.Alx.SQL.Add('     ordem.cod_formpag = formpag.cod_formpag');
           	DMESTOQUE.Alx.SQL.Add(' Left join estoque on');
           	DMESTOQUE.Alx.SQL.Add('     itprodord.cod_estoque = estoque.cod_estoque');
           	DMESTOQUE.Alx.SQL.Add(' Left join subproduto on');
           	DMESTOQUE.Alx.SQL.Add('     estoque.cod_subprod = subproduto.cod_subproduto');
           	DMESTOQUE.Alx.SQL.Add(' Left join produto on');
           	DMESTOQUE.Alx.SQL.Add('     subproduto.cod_produto = produto.cod_produto');
           	DMESTOQUE.Alx.SQL.Add(' Where (produto.cod_produto=:CODPRODUTO) AND (extract(month from itprodord.data)=:MES) AND (extract(year from itprodord.data)=:ANO) AND ((formpag.descricao<>'+#39+'À VISTA'+#39+')  or (ordem.cod_formpag is null))');
				DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsString;
				DMESTOQUE.Alx.ParamByName('MES').AsString:=DMMACS.TAlx.FieldByName('INT1').AsString;
				DMESTOQUE.Alx.ParamByName('ANO').AsString:=DMMACS.TAlx.FieldByName('DESC2').AsString;
				DMESTOQUE.Alx.Open;
           	//REPASSA VALORES AO PRODUTO
				DMESTOQUE.TProduto.Edit;
	           	DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency:=DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency+DMESTOQUE.Alx.FieldByName('TOTALVND').AsCurrency;
           	DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency:=DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency+DMESTOQUE.Alx.FieldByName('TOTALCUSTO').AsCurrency;
           	DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency:=DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency+DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
				//CALCULA TOTAIS PARA COMPRAS A PRAZO
           	DMESTOQUE.Alx.Close;
           	DMESTOQUE.Alx.SQL.Clear;
           	DMESTOQUE.Alx.SQL.Add('select sum(itenspedc.valortotal) AS TOTALCOMP, SUM(itenspedc.qtdeprod) AS QTD from itenspedC ');
           	DMESTOQUE.Alx.SQL.Add('left join pedcompra on ');
           	DMESTOQUE.Alx.SQL.Add('    itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
           	DMESTOQUE.Alx.SQL.Add('Left Join formpag on ');
           	DMESTOQUE.Alx.SQL.Add('    pedcompra.cod_formpag = formpag.cod_formpag ');
           	DMESTOQUE.Alx.SQL.Add('Left join estoque on ');
           	DMESTOQUE.Alx.SQL.Add('    itenspedc.cod_estoque = estoque.cod_estoque ');
           	DMESTOQUE.Alx.SQL.Add('Left join subproduto on ');
           	DMESTOQUE.Alx.SQL.Add('    estoque.cod_subprod = subproduto.cod_subproduto ');
           	DMESTOQUE.Alx.SQL.Add('Left join produto on ');
           	DMESTOQUE.Alx.SQL.Add('    subproduto.cod_produto = produto.cod_produto ');
           	DMESTOQUE.Alx.SQL.Add('Where (produto.cod_produto=:CODPRODUTO) AND (extract(month from itenspedC.data)=:MES) AND (extract(year from itenspedC.data)=:ANO) AND ((formpag.descricao<>'+#39+'À VISTA'+#39+') or (PedCompra.cod_formpag is null)) ');
				DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsString:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsString;
				DMESTOQUE.Alx.ParamByName('MES').AsString:=DMMACS.TAlx.FieldByName('INT1').AsString;
				DMESTOQUE.Alx.ParamByName('ANO').AsString:=DMMACS.TAlx.FieldByName('DESC2').AsString;
				DMESTOQUE.Alx.Open;
           	DMESTOQUE.TProduto.Edit;
           	DMESTOQUE.TProduto.FieldByName('COMPPRAZO').AsCurrency:=DMESTOQUE.Alx.FieldByName('TOTALCOMP').AsCurrency;
           	DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsCurrency:=DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsCurrency+DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
				DMESTOQUE.TProduto.Post;

               If (DMESTOQUE.TProduto.FieldByName('compprazo').AsCurrency<>0) OR (DMESTOQUE.TProduto.FieldByName('COMPVISTA').AsCurrency<>0) OR (DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency<>0) OR (DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency<>0) OR (DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsCurrency<>0) OR (DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency<>0)
               Then Begin
                   DMESTOQUE.Alx.Close;
                   DMESTOQUE.Alx.SQL.Clear;
                   DMESTOQUE.Alx.SQL.Add('select sum(vwsimilar.estfisico) AS ESTOQUE from vwsimilar where vwsimilar.cod_produto=:CODPRODUTO');
                   DMESTOQUE.Alx.ParamByName('CODPRODUTO').AsInteger:=DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsInteger;
					DMESTOQUE.Alx.Open;
	       			DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
	 		        DMMACS.TMP.FieldByName('INT1').AsInteger:=0;
					DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.TProduto.FieldByName('DESCRICAO').AsString;
					DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMESTOQUE.TProduto.FieldByName('compprazo').AsCurrency;
					DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.TProduto.FieldByName('COMPVISTA').AsCurrency;
					DMMACS.TMP.FieldByName('VLR3').AsCurrency:=DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency;
					DMMACS.TMP.FieldByName('VLR4').AsCurrency:=DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency;
					DMMACS.TMP.FieldByName('VLR5').AsCurrency:=DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsCurrency;
					DMMACS.TMP.FieldByName('VLR6').AsCurrency:=DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency;
					DMMACS.TMP.FieldByName('VLR7').AsCurrency:=DMESTOQUE.Alx.FieldByName('ESTOQUE').AsCurrency;
					DMMACS.TMP.Post;
                   //Acumula totalizadores para relatorio
					XCP:=XCP+DMESTOQUE.TProduto.FieldByName('compprazo').AsCurrency;
                   XCV:=XCV+DMESTOQUE.TProduto.FieldByName('COMPVISTA').AsCurrency;
                   XVP:=XVP+DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency;
                   XVV:=XVV+DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency;
                   XQC:=XQC+DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsCurrency;
                   XQV:=XQV+DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency;
                   //Acumula totalizadores para relatorio referente ao mes
					XMCP:=XMCP+DMESTOQUE.TProduto.FieldByName('compprazo').AsCurrency;
                   XMCV:=XMCV+DMESTOQUE.TProduto.FieldByName('COMPVISTA').AsCurrency;
                   XMVP:=XMVP+DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency;
                   XMVV:=XMVV+DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency;
                   XMQC:=XMQC+DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsCurrency;
                   XMQV:=XMQV+DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency;
               End;
           	DMESTOQUE.TPRODUTO.Next;
       	End;
			DMMACS.TALX.Next;
       End;
  		DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
      	DMMACS.TMP.FieldByName('INT1').AsInteger:=2;
		DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XMCP;
		DMMACS.TMP.FieldByName('VLR2').AsCurrency:=XMCV;
		DMMACS.TMP.FieldByName('VLR3').AsCurrency:=XMVP;
		DMMACS.TMP.FieldByName('VLR4').AsCurrency:=XMVV;
		DMMACS.TMP.FieldByName('VLR5').AsCurrency:=XMQC;
		DMMACS.TMP.FieldByName('VLR6').AsCurrency:=XMQV;
		DMMACS.TMP.Post;

  		DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
      	DMMACS.TMP.FieldByName('INT1').AsInteger:=2;
		DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XCP;
		DMMACS.TMP.FieldByName('VLR2').AsCurrency:=XCV;
		DMMACS.TMP.FieldByName('VLR3').AsCurrency:=XVP;
		DMMACS.TMP.FieldByName('VLR4').AsCurrency:=XVV;
		DMMACS.TMP.FieldByName('VLR5').AsCurrency:=XQC;
		DMMACS.TMP.FieldByName('VLR6').AsCurrency:=XQV;
		DMMACS.TMP.Post;

       DMMACS.Transaction.CommitRetaining;
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add('SELECT * FROM TMP order by COD_TMP');
       DMESTOQUE.TRel.Open;
       QRResumo.Preview;
End;
//Imprime Relatório de produtos vendidos em OS ordenados por produto
Procedure TFRelestoque.ImpRProdOS;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.SQL.Add('  Select ordem.numero As numped, PRODUTO.descricao AS PRODUTO, ordem.comissao as vlrcomis, SUBPRODUTO.CONTRINT, ordem.dtfech as dtpedven , subproduto.codcomposto, itprodord.qtd as qtdeprod, subproduto.descricao as similar, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.SQL.Add('  subproduto.marca, itprodord.valrep, itprodord.vlrunit as valunit, itprodord.valcomp, ');
   DMESTOQUE.TRel.SQL.Add('  itprodord.desconto as descpro, itprodord.data, itprodord.lucper, itprodord.lucmoe, itprodord.total AS TOTPROD, ordem.totprod AS TOTVENDA, ordem.descprod as desconto, vwcliente.nome as nomecli, vwcliente.cpfcnpj, itprodord.coefdiv, ');
   DMESTOQUE.TRel.SQL.Add('  subproduto.codprodfabr, itprodord.valcusto, itprodord.comissao ');
   DMESTOQUE.TRel.SQL.Add('  From itprodord left join ordem on itprodord.cod_ordem = ordem.cod_ordem ');
   DMESTOQUE.TRel.SQL.Add('  left join estoque on estoque.cod_estoque=itprodord.cod_estoque ');
   DMESTOQUE.TRel.SQL.Add('  left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add('  left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add('  left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add('  left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add('  left join vwcliente on ordem.cod_cliente = vwcliente.cod_cliente ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
	FiltroData;
//   DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   DMESTOQUE.TRel.SQL.Add(' order by produto.descricao, subproduto.descricao, subproduto.MARCA ');
   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FRFPRODVENDAOS.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de produtos de acordo com o tipo de tributação
Procedure TFRelestoque.ImpRProdTributa;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select cst.cod_sit_trib, cst.substituicao, vwsimilar.contrint, vwsimilar.descricao, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.SQL.Add('     vwsimilar.estfisico as estoque, estoque.VLRUNITCOMP as valor from estoque ');
   DMESTOQUE.TRel.SQL.Add(' Left join vwsimilar on estoque.cod_estoque = vwsimilar.cod_estoque ');
   DMESTOQUE.TRel.SQL.Add(' Left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TRel.SQL.Add(' left join cst on subproduto.cod_cst = cst.cod_cst ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
   DMESTOQUE.TRel.SQL.Add(' order by cst.substituicao  ');
   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfProdTributa.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de produtos vendidos ordenados por produto
Procedure TFRelestoque.ImpRProdVend;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' Select pedvenda.numped, pedvenda.TIPO, PRODUTO.descricao AS PRODUTO, pedvenda.vlrcomis, SUBPRODUTO.CONTRINT, pedvenda.dtpedven , subproduto.codcomposto, itenspedven.qtdeprod, subproduto.descricao as similar, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.SQL.Add(' subproduto.marca, itenspedven.valrep, itenspedven.valunit, itenspedven.valcomp, Itenspedven.VLRUNITDEV, ItensPedVen.QTDDEV, ');
   DMESTOQUE.TRel.SQL.Add(' itenspedven.descpro, itenspedven.Data, itenspedven.lucper, itenspedven.lucmoe, Itenspedven.OPERACAO, itenspedven.valortotal AS TOTPROD, pedvenda.valor AS TOTVENDA, pedvenda.desconto, pedvenda.nomecli, pedvenda.cpfcnpj, itenspedven.COEFDIV, ');
   DMESTOQUE.TRel.SQL.Add(' subproduto.codprodfabr, itenspedven.valcusto, itenspedven.comissao ');
   DMESTOQUE.TRel.SQL.Add(' From itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
   DMESTOQUE.TRel.SQL.Add(' left join estoque on estoque.cod_estoque=itenspedven.cod_estoque ');
   DMESTOQUE.TRel.SQL.Add(' left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')  AND (PEDVENDA.SITUACAO<>'+#39+'CANCELADO'+#39+')');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
	FiltroData;
//   DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   DMESTOQUE.TRel.SQL.Add(' order by produto.descricao, subproduto.descricao, subproduto.MARCA ');
   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FRFPRODVENDA_CLASS_PROD.frf');
      FSRel.ShowReport;
   End;
End;

//MAURO 03/06/2013 - Imprime Relatório de Produtos com Manutenção
Procedure TFRelEstoque.ImpProdManutencao;
Begin

	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add('select vwpedc.cod_pedcomp, itenspedc.cod_itenspedc, vwpedc.cod_usuario, vwpedc.cod_loja, vwsimilar.cod_interno, vwsimilar.descricao, itenspedc.obs, vwpedc.dtpedcomp, vwpedc.FORMPAG,' );
   DMESTOQUE.TRel.SQL.Add('vwpedc.nome, vwpedc.numped, vwpedc.valor, vwpedc.numdev, PRODUTO.descricao AS PRODUTO, SUBPRODUTO.CONTRINT, subproduto.codcomposto, subproduto.descricao as similar,vwfuncionario.nome as Responsavel,');
   DMESTOQUE.TRel.SQL.Add('subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD,');
   DMESTOQUE.TRel.SQL.Add('subproduto.marca,subproduto.codprodfabr, itenspedc.valortotal, vwsimilar.codfabricante, vwsimilar.contrint as ControleInterno ');
   DMESTOQUE.TRel.SQL.Add('from vwpedc');
   DMESTOQUE.TRel.SQL.Add('left join vwfuncionario on vwpedc.cod_usuario = vwfuncionario.cod_func ');
   DMESTOQUE.TRel.SQL.Add('left join pedcompra on vwpedc.cod_pedcomp = pedcompra.cod_pedcomp ');
   DMESTOQUE.TRel.SQL.Add('left join itenspedc on vwpedc.cod_pedcomp = itenspedc.cod_pedcompra');
   DMESTOQUE.TRel.SQL.Add('left join vwsimilar on vwsimilar.cod_estoque = itenspedc.cod_estoque');
   DMESTOQUE.TRel.SQL.Add(' left join estoque on estoque.cod_estoque=itenspedc.cod_estoque ');
   DMESTOQUE.TRel.SQL.Add(' left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')  AND (vwpedc.numdev='+#39+'ORM'+#39+')');
   FiltroGrupo;
   FiltroSubGrupo;                
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
	FiltroData;
   DMESTOQUE.TRel.SQL.Add(' order by vwsimilar.descricao,produto.descricao, subproduto.descricao, subproduto.marca ');
   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FRFPRODMANUTENCAO.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de produtos vendidos
Procedure TFRelestoque.ImpRProdVendOP;
Var
	XCod_Tmp: Integer;
Begin
   PComunica.Visible:=True;
   PComunica.Caption:='AGUARDE...';
   PComunica.BringToFront;
   PComunica.Refresh;
  	//APAGA REGISTROS DA TABERLA TMP
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('DELETE FROM TMP ');
   DMCONTA.TAlx.ExecSQL;
   DMCONTA.IBT.CommitRetaining;
   XCod_Tmp:=1;
   Try
   	//TRABALHA P/ ITENS DE VENDA
   	LimpaSQL;
   	FMenu.TIPOREL:='FRFPRODVENDP';
   	DMESTOQUE.TRel.SQL.Add(' Select itenspedven.cod_estoque, itenspedven.cod_itenspedven , pedvenda.numped, pedvenda.TIPO, PRODUTO.descricao AS PRODUTO, pedvenda.vlrcomis, SUBPRODUTO.CONTRINT, pedvenda.dtpedven , subproduto.codcomposto, itenspedven.qtdeprod, ');
   	DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.descricao as similar, ');
   	DMESTOQUE.TRel.SQL.Add(' subproduto.marca, itenspedven.valrep, itenspedven.valunit, itenspedven.valcomp, ');
   	DMESTOQUE.TRel.SQL.Add(' itenspedven.descpro, itenspedven.Data, itenspedven.lucper, itenspedven.lucmoe, Itenspedven.OPERACAO, itenspedven.valortotal AS TOTPROD, pedvenda.valor AS TOTVENDA, pedvenda.desconto, pedvenda.nomecli, pedvenda.cpfcnpj, itenspedven.COEFDIV, ');
   	DMESTOQUE.TRel.SQL.Add(' subproduto.codprodfabr, itenspedven.valcusto, itenspedven.comissao ');
   	DMESTOQUE.TRel.SQL.Add(' From itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
   	DMESTOQUE.TRel.SQL.Add(' left join estoque on estoque.cod_estoque=itenspedven.cod_estoque ');
   	DMESTOQUE.TRel.SQL.Add(' left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
   	DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   	DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   	DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   	DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')  AND (PEDVENDA.SITUACAO<>'+#39+'CANCELADO'+#39+')');
   	FiltroGrupo;
   	FiltroSubGrupo;
   	FiltroMarca;
		FiltroCampAux;
   	FiltroProduto;
   	FiltroSubProduto;
		FiltroData;
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
       	DMESTOQUE.TRel.First;
       	While not DMESTOQUE.TRel.Eof do
       	Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
               DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ESTOQUE').AsInteger;
               DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMESTOQUE.TRel.FieldByName('cod_itenspedven').AsCurrency;
               DMMACS.TMP.FieldByName('DESC2').AsString:='VND';
               DMMACS.TMP.Post;
               XCod_Tmp:=XCod_Tmp+1;
           	DMESTOQUE.TRel.Next;
       	End;
		End;
       //TRABALHA PARA ITENS DE ORDEM
   	LimpaSQL;
   	FMenu.TIPOREL:='FRFPRODVENDO';
   	DMESTOQUE.TRel.SQL.Add('  Select itprodord.cod_estoque, itprodord.cod_itprodord, ordem.numero, PRODUTO.descricao AS PRODUTO, SUBPRODUTO.CONTRINT, subproduto.codcomposto, itprodord.qtd, subproduto.descricao as similar, ');
   	DMESTOQUE.TRel.SQL.Add('  subproduto.marca, itprodord.valrep, itprodord.vlrunit, itprodord.valcomp,  ');
   	DMESTOQUE.TRel.SQL.Add('  itprodord.desconto,  itprodord.data,  itprodord.lucper, itprodord.lucmoe, itprodord.total  AS TOTPROD, itprodord.coefdiv,  ');
   	DMESTOQUE.TRel.SQL.Add('  subproduto.codprodfabr, itprodord.valcusto  ');
   	DMESTOQUE.TRel.SQL.Add('  From itprodord left join ordem on itprodord.cod_ordem = ordem.cod_ordem  ');
   	DMESTOQUE.TRel.SQL.Add('  left join estoque on estoque.cod_estoque=itprodord.cod_estoque  ');
   	DMESTOQUE.TRel.SQL.Add('  left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod  ');
   	DMESTOQUE.TRel.SQL.Add('  left join produto on subproduto.cod_produto = produto.cod_produto  ');
   	DMESTOQUE.TRel.SQL.Add('  left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod  ');
   	DMESTOQUE.TRel.SQL.Add('  left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod  ');
   	DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')');
   	FiltroGrupo;
   	FiltroSubGrupo;
   	FiltroMarca;
		FiltroCampAux;
   	FiltroProduto;
   	FiltroSubProduto;
		FiltroData;
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
       	DMESTOQUE.TRel.First;
       	While not DMESTOQUE.TRel.Eof do
       	Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
               DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ESTOQUE').AsInteger;
               DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.TRel.FieldByName('cod_itprodord').AsCurrency;
               DMMACS.TMP.FieldByName('DESC2').AsString:='ORD';
               DMMACS.TMP.Post;
               XCod_Tmp:=XCod_Tmp+1;
           	DMESTOQUE.TRel.Next;
       	End;
		End;

       //TRABALHA PARA ITENS DE COMPRA DE DEVOLUCÃO
   	LimpaSQL;
   	FMenu.TIPOREL:='FRFPRODVENDDEV';
   	DMESTOQUE.TRel.SQL.Add('   Select itenspedc.cod_estoque, itenspedc.cod_itenspedc , pedcompra.numped, PRODUTO.descricao AS PRODUTO, SUBPRODUTO.CONTRINT, pedcompra.dtpedcomp , subproduto.codcomposto, itenspedc.qtdeprod, ');
   	DMESTOQUE.TRel.SQL.Add('   subproduto.marca, itenspedc.valunit, itenspedc.valunit, ');
   	DMESTOQUE.TRel.SQL.Add('   itenspedc.descpro, itenspedc.data, itenspedc.valortotal AS TOTPROD, pedcompra.valor AS TOTVENDA, pedcompra.desconto, ');
   	DMESTOQUE.TRel.SQL.Add('   subproduto.codprodfabr, itenspedven.lucmoe AS LUCMOEV, itenspedven.qtdeprod AS QTDV, itenspedven.valcomp AS VLRFOB, itenspedven.valcusto, itenspedven.valrep, itenspedven.coefdiv ');
   	DMESTOQUE.TRel.SQL.Add('    From itenspedc left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
   	DMESTOQUE.TRel.SQL.Add('    left join estoque on estoque.cod_estoque=itenspedc.cod_estoque ');
   	DMESTOQUE.TRel.SQL.Add('    left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
   	DMESTOQUE.TRel.SQL.Add('    left join produto on subproduto.cod_produto = produto.cod_produto ');
   	DMESTOQUE.TRel.SQL.Add('    left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   	DMESTOQUE.TRel.SQL.Add('    left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   	DMESTOQUE.TRel.SQL.Add('    left join ');
   	DMESTOQUE.TRel.SQL.Add('    itenspedven on itenspedc.cod_devolucao = itenspedven.cod_itenspedven ');
   	DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')  ');
   	DMESTOQUE.TRel.SQL.Add(' AND ((pedcompra.numdev<>'+#39+''+#39+') OR (pedcompra.numdev IS null)) ');
   	FiltroGrupo;
   	FiltroSubGrupo;
   	FiltroMarca;
		FiltroCampAux;
   	FiltroProduto;
   	FiltroSubProduto;
		FiltroData;
   	FMenu.TIPOREL:='FRFPRODVEND';
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
       	DMESTOQUE.TRel.First;
       	While not DMESTOQUE.TRel.Eof do
       	Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
               DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ESTOQUE').AsInteger;
               DMMACS.TMP.FieldByName('VLR3').AsCurrency:=DMESTOQUE.TRel.FieldByName('cod_itenspedc').AsCurrency;
				If DMESTOQUE.TRel.FieldByName('QTDV').AsCurrency<>0
               Then Begin
               	DMMACS.TMP.FieldByName('VLR4').AsCurrency:=(DMESTOQUE.TRel.FieldByName('LUCMOEV').AsCurrency/DMESTOQUE.TRel.FieldByName('QTDV').AsCurrency)*DMESTOQUE.TRel.FieldByName('QTDEPROD').AsCurrency;
               	DMMACS.TMP.FieldByName('VLR5').AsCurrency:=DMESTOQUE.TRel.FieldByName('VLRFOB').AsCurrency/DMESTOQUE.TRel.FieldByName('QTDV').AsCurrency;
               End
               Else Begin
					DMMACS.TMP.FieldByName('VLR5').AsCurrency:=0;
               	DMMACS.TMP.FieldByName('VLR4').AsCurrency:=0;
               End;
               DMMACS.TMP.FieldByName('VLR6').AsCurrency:=DMESTOQUE.TRel.FieldByName('COEFDIV').AsCurrency;
               DMMACS.TMP.FieldByName('VLR7').AsCurrency:=DMESTOQUE.TRel.FieldByName('VALREP').AsCurrency;                                                            
               DMMACS.TMP.FieldByName('DESC2').AsString:='DEV';
               DMMACS.TMP.Post;
               XCod_Tmp:=XCod_Tmp+1;
           	DMESTOQUE.TRel.Next;
       	End;
		End;
		DMMACS.Transaction.CommitRetaining;
       LimpaSQL;
   	DMESTOQUE.TRel.sql.Add('  select produto.descricao as PRODUTO, Tmp. Desc2 as TIPO, vwsimilar.contrint, vwsimilar.descricao, ordem.numero as DOCORD, pedvenda.numped as DOCPED, pedcompra.numdev as DOCPC, ');
   	DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   	DMESTOQUE.TRel.sql.Add('  itprodord.coefdiv as COEFDIVORD, itenspedven.coefdiv as COEFDIVPED, itprodord.valcusto AS VALCUSTOORD, itenspedven.valcusto AS VALCUSTOPED, ');
   	DMESTOQUE.TRel.sql.Add('  vwsimilar.marca, itprodord.qtd AS QtdOrd, itenspedven.qtdeprod as QtdPed, itenspedc.qtdeprod as QTDPC, itprodord.valcomp as valcompOrd, itenspedven.valcomp as ValCompPed, ');
   	DMESTOQUE.TRel.sql.Add('  itprodord.valcusto as ValcustoOrd, itenspedven.valcusto as ValcustoPed, itprodord.valrep as ValrepOrd, itenspedven.valrep as ValrepPed, ');
   	DMESTOQUE.TRel.sql.Add('  itprodord.desconto as DescOrd, itenspedven.descpro as DescPED, itprodord.vlrunit as VlrUnitOrd, itenspedven.valunit as VlrUnitPed, itenspedc.valunit AS VLRUNITPC, ');
   	DMESTOQUE.TRel.sql.Add('  itprodord.total as VlrTotalOrd, itenspedven.valortotal as VlrTotalPed, itenspedc.valortotal as VLRTOTALPC, itprodord.lucper as LucperOrd, itenspedven.lucper as LucperPed, ');
   	DMESTOQUE.TRel.sql.Add('  itprodord.lucmoe as LucMoeOrd, itenspedven.lucmoe as LucMoePed,  pedvenda.dtfech as DTPED, ordem.dtfech AS DTORD, pedcompra.dtfech AS DTPC, ');
   	DMESTOQUE.TRel.sql.Add('  itenspedven.coefdiv as COEFDIVPED, itprodord.coefdiv as COEFDIVORD, ');
   	DMESTOQUE.TRel.sql.Add('  tmp.vlr4 as LUCMOEPC, tmp.vlr5 AS VALCOMPPC, tmp.vlr6 AS COEFDIVPC, tmp.vlr7 AS VLRREPPC ');
   	DMESTOQUE.TRel.sql.Add('  from tmp ');
   	DMESTOQUE.TRel.sql.Add('  Left Join ');
   	DMESTOQUE.TRel.sql.Add('  vwsimilar on tmp.int1=vwsimilar.cod_estoque ');
   	DMESTOQUE.TRel.sql.Add('  Left join ');
   	DMESTOQUE.TRel.sql.Add('  subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
   	DMESTOQUE.TRel.sql.Add('  Left join ');
   	DMESTOQUE.TRel.sql.Add('  produto on vwsimilar.cod_produto=produto.cod_produto ');
   	DMESTOQUE.TRel.sql.Add('  left join ');
   	DMESTOQUE.TRel.sql.Add('  itenspedven on tmp.vlr1=itenspedven.cod_itenspedven ');
   	DMESTOQUE.TRel.sql.Add('  Left Join ');
   	DMESTOQUE.TRel.sql.Add('  pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
   	DMESTOQUE.TRel.sql.Add('  Left join ');
   	DMESTOQUE.TRel.sql.Add('  itprodord on tmp.vlr2=itprodord.cod_itprodord ');
   	DMESTOQUE.TRel.sql.Add('  left join ');
   	DMESTOQUE.TRel.sql.Add('  ordem on itprodord.cod_ordem = ordem.cod_ordem ');
   	DMESTOQUE.TRel.sql.Add('  left join ');
   	DMESTOQUE.TRel.sql.Add('  itenspedc ON tmp.vlr3=itenspedc.cod_itenspedc ');
   	DMESTOQUE.TRel.sql.Add('  left join ');
   	DMESTOQUE.TRel.sql.Add('  pedcompra on itenspedc.cod_pedcompra=pedcompra.cod_pedcomp ');
   	DMESTOQUE.TRel.sql.Add('  Order by produto.descricao, Tmp.Cod_Tmp ');
   	If AbreTabela=True
   	Then Begin
	   		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfProdVenda_OP.frf');
      		FSRel.ShowReport;
   	End;
   Finally
   	PComunica.Visible:=False;
   End;
End;

//Paulo 15/12/2011: Imprime Relatório de produtos somente de ordens de serviços
Procedure TFRelestoque.ImpRProdOrdemServico;
Var
	XCod_Tmp: Integer;
Begin
   PComunica.Visible:=True;
   PComunica.Caption:='AGUARDE...';
   PComunica.BringToFront;
   PComunica.Refresh;
  	//APAGA REGISTROS DA TABERLA TMP
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('DELETE FROM TMP ');
   DMCONTA.TAlx.ExecSQL;
   DMCONTA.IBT.CommitRetaining;
   XCod_Tmp:=1;
   Try

       //TRABALHA PARA ITENS DE ORDEM
   	LimpaSQL;
   	FMenu.TIPOREL:='FRFPRODVENDO';
   	DMESTOQUE.TRel.SQL.Add('  Select itprodord.cod_estoque, itprodord.cod_itprodord, ordem.numero, PRODUTO.descricao AS PRODUTO, SUBPRODUTO.CONTRINT, subproduto.codcomposto, itprodord.qtd, subproduto.descricao as similar, ');
   	DMESTOQUE.TRel.SQL.Add('  subproduto.marca, itprodord.valrep, itprodord.vlrunit, itprodord.valcomp,  ');
   	DMESTOQUE.TRel.SQL.Add('  itprodord.desconto,  itprodord.data,  itprodord.lucper, itprodord.lucmoe, itprodord.total  AS TOTPROD, itprodord.coefdiv,  ');
   	DMESTOQUE.TRel.SQL.Add('  subproduto.codprodfabr, itprodord.valcusto  ');
   	DMESTOQUE.TRel.SQL.Add('  From itprodord left join ordem on itprodord.cod_ordem = ordem.cod_ordem  ');
   	DMESTOQUE.TRel.SQL.Add('  left join estoque on estoque.cod_estoque=itprodord.cod_estoque  ');
   	DMESTOQUE.TRel.SQL.Add('  left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod  ');
   	DMESTOQUE.TRel.SQL.Add('  left join produto on subproduto.cod_produto = produto.cod_produto  ');
   	DMESTOQUE.TRel.SQL.Add('  left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod  ');
   	DMESTOQUE.TRel.SQL.Add('  left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod  ');
   	DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')');
   	FiltroGrupo;
   	FiltroSubGrupo;
   	FiltroMarca;
		FiltroCampAux;
   	FiltroProduto;
   	FiltroSubProduto;
		FiltroData;
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
       	DMESTOQUE.TRel.First;
       	While not DMESTOQUE.TRel.Eof do
       	Begin
               DMMACS.TMP.Insert;
               DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_Tmp;
               DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ESTOQUE').AsInteger;
               DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.TRel.FieldByName('cod_itprodord').AsCurrency;
               DMMACS.TMP.FieldByName('DESC2').AsString:='ORD';
               DMMACS.TMP.Post;
               XCod_Tmp:=XCod_Tmp+1;
           	DMESTOQUE.TRel.Next;
       	End;
		End;


		DMMACS.Transaction.CommitRetaining;
       LimpaSQL;
   	DMESTOQUE.TRel.sql.Add('  select produto.descricao as PRODUTO, Tmp. Desc2 as TIPO, vwsimilar.contrint, vwsimilar.descricao, ordem.numero as DOCORD, ');
   	DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   	DMESTOQUE.TRel.sql.Add('  itprodord.coefdiv as COEFDIVORD,  itprodord.valcusto AS VALCUSTOORD,  ');
   	DMESTOQUE.TRel.sql.Add('  vwsimilar.marca, itprodord.qtd AS QtdOrd, itprodord.valcomp as valcompOrd, ');
   	DMESTOQUE.TRel.sql.Add('  itprodord.valcusto as ValcustoOrd,  itprodord.valrep as ValrepOrd,  ');
   	DMESTOQUE.TRel.sql.Add('  itprodord.desconto as DescOrd,  itprodord.vlrunit as VlrUnitOrd,');
   	DMESTOQUE.TRel.sql.Add('  itprodord.total as VlrTotalOrd,  itprodord.lucper as LucperOrd,  ');
   	DMESTOQUE.TRel.sql.Add('  itprodord.lucmoe as LucMoeOrd,  ordem.dtfech AS DTORD, ');
   	DMESTOQUE.TRel.sql.Add('  itprodord.coefdiv as COEFDIVORD');
   	
   	DMESTOQUE.TRel.sql.Add('  from tmp ');
   	DMESTOQUE.TRel.sql.Add('  Left Join ');
   	DMESTOQUE.TRel.sql.Add('  vwsimilar on tmp.int1=vwsimilar.cod_estoque ');
   	DMESTOQUE.TRel.sql.Add('  Left join ');
   	DMESTOQUE.TRel.sql.Add('  subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
   	DMESTOQUE.TRel.sql.Add('  Left join ');
   	DMESTOQUE.TRel.sql.Add('  produto on vwsimilar.cod_produto=produto.cod_produto ');

   	DMESTOQUE.TRel.sql.Add('  Left join ');
   	DMESTOQUE.TRel.sql.Add('  itprodord on tmp.vlr2=itprodord.cod_itprodord ');
   	DMESTOQUE.TRel.sql.Add('  left join ');
   	DMESTOQUE.TRel.sql.Add('  ordem on itprodord.cod_ordem = ordem.cod_ordem ');

   	DMESTOQUE.TRel.sql.Add('  Order by produto.descricao, Tmp.Cod_Tmp ');
   	If AbreTabela=True
   	Then Begin
	   		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfProdOrdem_OP.frf');
      		FSRel.ShowReport;
   	End;
   Finally
   	PComunica.Visible:=False;
   End;
End;

//Imprime Relatório de Estoque Calculado
Procedure TFRelestoque.ImpREstCalc;
VAR
	XQtdEnt, XQtdSai, ResultEst: Real;
Begin
   PComunica.Visible:=True;
   PComunica.Caption:='AGUARDE...';
   PComunica.BringToFront;
   PComunica.Refresh;
   Try
   LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, estoque.estini, estoque.ULTCOMPRA AS DATA, ESTOQUE.estreserv, estoque.cod_estoque, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
	FiltroData;
   DMESTOQUE.TRel.SQL.Add(' order by produto.descricao, subproduto.descricao, subproduto.MARCA ');
   If AbreTabela=True
   Then Begin
       DMESTOQUE.TRel.First;
       While not DMESTOQUE.TRel.Eof do
       Begin
           XQtdEnt:=0;
           XQtdSai:=0;
			//TOTALIZA SOMATÓRIAS
			//FILTRA E TOTALIZA LANÇAMENTOS DE ENTRADA PARA CORREÇÃO
   		DMESTOQUE.Alx.Close;
   		DMESTOQUE.Alx.SQL.Clear;
   		DMESTOQUE.Alx.SQL.Add('SELECT SUM(VWlancent.quantidade) AS TOTENT FROM VWlancent where VWlancent.cod_estoque=:CODESTOQUE');
   		DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_estoque').AsInteger;
   		DMESTOQUE.Alx.Open;
   		XQtdEnt:=XQtdEnt+DMESTOQUE.ALX.FieldByName('TOTENT').AsCurrency;

           //FILTRA  E TOTALIZA LANÇAMENTOS DE SAIDA PARA CORREÇÃO
   		DMESTOQUE.Alx1.Close;
   		DMESTOQUE.Alx1.SQL.Clear;
   		DMESTOQUE.Alx1.SQL.Add('select SUM(VWlancsai.quantidade) AS TOTSAI  from vwlancsai where vwlancsai.cod_estoque=:CODESTOQUE');
   		DMESTOQUE.Alx1.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_estoque').AsInteger;
   		DMESTOQUE.Alx1.Open;
   		XQtdSai:=XQtdSai+DMESTOQUE.ALX1.FieldByName('TOTSAI').AsCurrency;

			//FILTRA  E TOTALIZA LANÇAMENTOS DE COMPRAS
   		DMESTOQUE.Alx3.Close;
   		DMESTOQUE.Alx3.SQL.Clear;
   		DMESTOQUE.Alx3.SQL.Add(' Select SUM(itenspedc.valortotal) AS TOTCOMP, SUM(itenspedc.qtdest) AS TOTENT ');
   		DMESTOQUE.Alx3.SQL.Add(' From itenspedc ');
   		DMESTOQUE.Alx3.SQL.Add(' left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
   		DMESTOQUE.Alx3.SQL.Add(' Where (Estoque.Cod_Estoque=:CODESTOQUE) ');
   		DMESTOQUE.Alx3.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_estoque').AsInteger;
   		DMESTOQUE.Alx3.Open;
   		XQtdEnt:=XQtdEnt+DMESTOQUE.Alx3.FieldByName('TOTENT').AsCurrency;

			//FILTRA  E TOTALIZA LANÇAMENTOS DE VENDAS
   		DMESTOQUE.Alx2.Close;
   		DMESTOQUE.Alx2.SQL.Clear;
   		DMESTOQUE.Alx2.SQL.Add(' Select SUM(itenspedven.valortotal) AS TOTVEND, SUM(itenspedven.qtdeprod) AS TOTSAI, SUM(itenspedven.comissao) AS TOTCOMI, SUM(itenspedven.lucmoe) AS TOTLUCMOE');
   		DMESTOQUE.Alx2.SQL.Add(' From itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
   		DMESTOQUE.Alx2.SQL.Add(' left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
   		DMESTOQUE.Alx2.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   		DMESTOQUE.Alx2.SQL.Add(' Where (Estoque.Cod_Estoque=:CODESTOQUE) ');
   		DMESTOQUE.Alx2.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_estoque').AsInteger;
   		DMESTOQUE.Alx2.Open;
   		XQtdSai:=XQtdSai+DMESTOQUE.Alx2.FieldByNAme('TOTSAI').AsCurrency;

			//FILTRA  E TOTALIZA LANÇAMENTOS DE ordens de serviço
   		DMESTOQUE.Alx4.Close;
   		DMESTOQUE.Alx4.SQL.Clear;
   		DMESTOQUE.Alx4.SQL.Add(' Select SUM(itprodord.total) AS TOTVEND, SUM(itprodord.qtd) AS TOTSAI ');
   		DMESTOQUE.Alx4.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   		DMESTOQUE.Alx4.SQL.Add(' Where (itprodord.cod_estoque=:CODESTOQUE) ');
   		DMESTOQUE.Alx4.ParamByName('CODESTOQUE').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_estoque').AsInteger;
   		DMESTOQUE.Alx4.Open;
   		XQtdSai:=XQtdSai+DMESTOQUE.Alx4.FieldByNAme('TOTSAI').AsCurrency;

   		//PASSA VALOR PARA A TABELA DE ESTOQUE
           FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', DMESTOQUE.TRel.FieldByName('cod_estoque').AsString, '');
           DMESTOQUE.TEstoque.Edit;
           DMESTOQUE.TEstoque.FieldByName('ESTCALC').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('ESTINI').AsCurrency+XQtdEnt-XQtdSai;
           DMESTOQUE.TEstoque.Post;
           DMESTOQUE.TransacEstoque.CommitRetaining;

           DMESTOQUE.TRel.Next;
       End;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       DMESTOQUE.TransacEstoque.CommitRetaining;
	End;
   LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO AS SIMILAR, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, estoque.estini, estoque.estcalc, estoque.ULTCOMPRA AS DATA, ESTOQUE.estreserv, estoque.cod_estoque, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') and (estoque.estfisico<>estoque.estcalc)');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
	FiltroData;
   DMESTOQUE.TRel.SQL.Add(' order by produto.descricao, subproduto.descricao, subproduto.MARCA ');
   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FRFESTCALC.frf');
      FSRel.ShowReport;
   End;
   Finally
   	PComunica.Visible:=False;
   End;
End;

// imprimi relatorio de carregamento
Procedure TFRelEstoque.ImpCarregamento;
begin

   LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' Select pedvenda.numped, pedvenda.TIPO, PRODUTO.descricao AS PRODUTO, pedvenda.vlrcomis, SUBPRODUTO.CONTRINT, pedvenda.dtpedven , subproduto.codcomposto, itenspedven.qtdeprod, subproduto.descricao as similar, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.SQL.Add(' subproduto.marca, itenspedven.valrep, itenspedven.valunit, itenspedven.valcomp, Itenspedven.VLRUNITDEV, ItensPedVen.QTDDEV, ');
   DMESTOQUE.TRel.SQL.Add(' itenspedven.descpro, itenspedven.Data, itenspedven.lucper, itenspedven.lucmoe, Itenspedven.OPERACAO, itenspedven.valortotal AS TOTPROD, pedvenda.valor AS TOTVENDA, pedvenda.desconto, pedvenda.nomecli, pedvenda.cpfcnpj, itenspedven.COEFDIV, ');
   DMESTOQUE.TRel.SQL.Add(' subproduto.codprodfabr, itenspedven.valcusto, itenspedven.comissao ');
   DMESTOQUE.TRel.SQL.Add(' From itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
   DMESTOQUE.TRel.SQL.Add(' left join estoque on estoque.cod_estoque=itenspedven.cod_estoque ');
   DMESTOQUE.TRel.SQL.Add(' left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')  AND (PEDVENDA.SITUACAO<>'+#39+'CANCELADO'+#39+')');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
	FiltroData;
   DMESTOQUE.TRel.SQL.Add(' order by subproduto.descricao, subproduto.MARCA ');
   If AbreTabela=True
   Then Begin
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FRFPRODVENDA_TotalProd.frf');
      FSRel.ShowReport;
   End;
end; 


//Imprime Relatório de Estoque Maximo e Minimo
Procedure TFRelestoque.ImpREstMaxMin;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, estoque.estMAX, estoque.estmin, estoque.ULTCOMPRA AS DATA, ESTOQUE.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   If CBEstPos.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');

   If CBEstMin.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND  ((estoque.estmax is not null) or (estoque.estmin is not null)) And (estoque.estfisico<=estoque.estmin) ');
   If CBEstMax.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND  ((estoque.estmax is not null) or (estoque.estmin is not null)) And (estoque.estfisico>=estoque.estmax) ');

   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
   If RgOrdenacao.ItemIndex=0 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.marca, subproduto.descricao ');
   If RgOrdenacao.ItemIndex=1 Then
       DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.CodComposto');
   If RgOrdenacao.ItemIndex=2 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.descricao');
   If RgOrdenacao.ItemIndex=3 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.CODPRODFABR');
   If RgOrdenacao.ItemIndex=4 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.COD_INTERNO, subgrupoprod.COD_INTERNO, produto.cod_interno, SUBPRODUTO.CODPRODFABR');

   If AbreTabela=True
   Then Begin
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPosEstoque_MaxMin.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de produtos comprados ordenados por produto
Procedure TFRelestoque.ImpRProdComp;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.SQL.Add('  Select pedcompra.numped, PRODUTO.descricao AS PRODUTO, pedcompra.dtpedcomp, itenspedc.qtdeprod, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.SQL.Add('  subproduto.descricao as similar, subproduto.marca, itenspedc.descpro, itenspedc.embprod, itenspedc.frete, itenspedc.ALIQICMS AS ICMS, ');
   DMESTOQUE.TRel.SQL.Add('  itenspedc.ALIQIPI AS IPI, itenspedc.valunit, itenspedc.valortotal, Itenspedc.vlripi, itenspedc.valortotal AS TOTPROD ');
   DMESTOQUE.TRel.SQL.Add('  From itenspedc left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
   DMESTOQUE.TRel.SQL.Add('  left join estoque on estoque.cod_estoque=itenspedc.cod_estoque ');
   DMESTOQUE.TRel.SQL.Add('  left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add('  left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add('  left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add('  left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')  AND ((pedcompra.numdev IS NULL) or (pedcompra.numdev='+#39+#39+'))');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroData;
   FiltroProduto;
   FiltroSubProduto;
//   DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   DMESTOQUE.TRel.SQL.Add(' order by produto.descricao, subproduto.descricao, subproduto.MARCA ');
   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfProdCompra_Class_Prod.frf');
      FSRel.ShowReport;
   End;
End;
//Imprime Relatório de produtos devolvidos de vendas
Procedure TFRelestoque.ImpRProdCompDEV;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.SQL.Add('  Select pedcompra.numped, PRODUTO.descricao AS PRODUTO, pedcompra.dtpedcomp, itenspedc.qtdeprod, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.SQL.Add('  subproduto.descricao as similar, subproduto.marca, itenspedc.descpro, itenspedc.embprod, itenspedc.frete, itenspedc.ALIQICMS AS ICMS, ');
   DMESTOQUE.TRel.SQL.Add('  itenspedc.ALIQIPI AS IPI, itenspedc.valunit, itenspedc.valortotal, Itenspedc.vlripi, itenspedc.valortotal AS TOTPROD ');
   DMESTOQUE.TRel.SQL.Add('  From itenspedc left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
   DMESTOQUE.TRel.SQL.Add('  left join estoque on estoque.cod_estoque=itenspedc.cod_estoque ');
   DMESTOQUE.TRel.SQL.Add('  left join subproduto ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add('  left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add('  left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add('  left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')  AND ((pedcompra.numdev IS NOT NULL) or (pedcompra.numdev<>'+#39+#39+'))');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroData;
   FiltroProduto;
   FiltroSubProduto;
//   DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   DMESTOQUE.TRel.SQL.Add(' order by produto.descricao, subproduto.descricao, subproduto.MARCA ');
   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfProdCompra_DEV_Class_Prod.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Lista de Preços de produto com todos os preços
Procedure TFRelestoque.ImpRListaPrecoComp;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, estoque.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendatav, estoque.vendatap, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   If CBEstPos.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');

   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
   If RgOrdenacao.ItemIndex=0 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.marca, subproduto.descricao ');
   If RgOrdenacao.ItemIndex=1 Then
       DMESTOQUE.TRel.SQL.Add(' order by subproduto.codcomposto');
   If RgOrdenacao.ItemIndex=2 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.descricao');
   If RgOrdenacao.ItemIndex=3 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.CODPRODFABR');
   If RgOrdenacao.ItemIndex=4 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.COD_INTERNO, subgrupoprod.COD_INTERNO, produto.cod_interno, SUBPRODUTO.CODPRODFABR');

   If AbreTabela=True
   Then Begin
	   If FMenu.XTIPOBOLTO='ATACADO' Then
	   		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfLstPrecestComp_Atacado.frf')
      Else
	   		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfLstPrecestComp.frf'); 
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Lista de Preços de produto
Procedure TFRelestoque.ImpRListaPreco;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, estoque.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   If CBEstPos.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');

   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;   
   FiltroProduto;
   FiltroSubProduto;
   If RgOrdenacao.ItemIndex=0 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.marca, subproduto.descricao ');
   If RgOrdenacao.ItemIndex=1 Then
       DMESTOQUE.TRel.SQL.Add(' order by subproduto.codcomposto');
   If RgOrdenacao.ItemIndex=2 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.descricao');
   If RgOrdenacao.ItemIndex=3 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.CODPRODFABR');
   If RgOrdenacao.ItemIndex=4 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.COD_INTERNO, subgrupoprod.COD_INTERNO, produto.cod_interno, SUBPRODUTO.CODPRODFABR');

   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfLstPrecest.frf');
      FSRel.ShowReport;
   End;
End;
//Imprime Relatório de Lotes vencidos
Procedure TFRelestoque.ImpRelLotes;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' SELECT subproduto.descricao, ');
   DMESTOQUE.TRel.sql.Add('    lote.lote, lote.vencimento, subproduto.localestante, lote.qtd, lote.vencimento, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, subproduto.anvisa, subproduto.minsaude,');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, estoque.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add('  from lote ');
   DMESTOQUE.TRel.SQL.Add('    Left Join estoque on lote.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.TRel.SQL.Add('    left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TRel.SQL.Add('    left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add('    left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add('    left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   If CBEstPos.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (lote.qtd>0) ');
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	If (EdData1.Text<>'') AND (EdData2.Text<>'')
  	Then Begin
  		DMESTOQUE.TRel.SQL.Add(' AND ((Lote.Vencimento>=:DATA1) And (Lote.Vencimento<=:DATA2))');
		DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
		DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   End;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
   If RgOrdenacao.ItemIndex=0 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.descricao ');
   If RgOrdenacao.ItemIndex=1 Then
       DMESTOQUE.TRel.SQL.Add(' order by subproduto.codcomposto');
   If RgOrdenacao.ItemIndex=2 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.descricao');
   If RgOrdenacao.ItemIndex=3 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.CODPRODFABR');
   If RgOrdenacao.ItemIndex=4 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.COD_INTERNO, subgrupoprod.COD_INTERNO, produto.cod_interno, SUBPRODUTO.CODPRODFABR');

   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfLstLoteVenc.frf');
      FSRel.ShowReport;
   End;
End;
//Imprime Relatório de Lista de Preços para venda
Procedure TFRelestoque.ImpRListaPrecoVend;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, Estoque.Bonificacao, estoque.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   If CBEstPos.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;   
   FiltroProduto;
   FiltroSubProduto;
   If RgOrdenacao.ItemIndex=0 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.marca, subproduto.descricao ');
   If RgOrdenacao.ItemIndex=1 Then
       DMESTOQUE.TRel.SQL.Add(' order by subproduto.codcomposto');
   If RgOrdenacao.ItemIndex=2 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.descricao');
   If RgOrdenacao.ItemIndex=3 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.CODPRODFABR');
   If RgOrdenacao.ItemIndex=4 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.COD_INTERNO, subgrupoprod.COD_INTERNO, produto.cod_interno, SUBPRODUTO.CODPRODFABR');
   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfLstVend.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Confronto Entradas e Saidas
//Imprime Relatório de Confronto Entradas e Saidas
Procedure TFRelestoque.ImpREntSaida;
Var
	XCOD_TMP: Integer;
   XPRODUTO: STRING;
   XTOTCOMP, XTOTVEND, XTOTEST: REAL;
   XCONT: INTEGER;
Begin
   XCOD_TMP:=0;
   XPRODUTO:='';
   XTOTCOMP:=0;
   XTOTVEND:=0;
   XTOTEST:=0;
   XCONT:=0;
   DMMACS.TLoja.Close;
   DMMACS.TLoja.SQL.Clear;
   DMMACS.TLoja.SQL.Add('SELECT * FROM LOJA WHERE LOJA.COD_LOJA=:CODLOJA');
   DMMACS.TLoja.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   DMMACS.TLoja.Open;

	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, Estoque.Cod_Estoque, Estoque.Bonificacao, estoque.ULTCOMPRA AS DATA, ESTOQUE.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');

   if rgOrientacao.ItemIndex = 1
   then begin
        IF rgAgrupar.ItemIndex = 1 THEN
            DMESTOQUE.TRel.SQL.Add(', grupoprod.descricao as PADRAO ') //GRUPO
        ELSE IF rgAgrupar.ItemIndex = 2 THEN
            DMESTOQUE.TRel.SQL.Add(', subgrupoprod.descricao as PADRAO ') //SUBBRUPO
        ELSE IF rgAgrupar.ItemIndex = 3 THEN
            DMESTOQUE.TRel.SQL.Add(', subproduto.marca as PADRAO ')   //MARCA
        ELSE IF rgAgrupar.ItemIndex = 4 THEN
            DMESTOQUE.TRel.SQL.Add(', subproduto.fabricante as PADRAO ')  //FABRICANTE
        ELSE
            DMESTOQUE.TRel.SQL.Add(', produto.descricao as PADRAO '); //PRODUTO

        IF rgSubAgrupar.ItemIndex = 1 THEN
            DMESTOQUE.TRel.SQL.Add(',grupoprod.descricao as PADRAO2 ') //GRUPO
        ELSE IF rgSubAgrupar.ItemIndex = 2 THEN
            DMESTOQUE.TRel.SQL.Add(',subgrupoprod.descricao as PADRAO2 ') //SUBBRUPO
        ELSE IF rgSubAgrupar.ItemIndex = 3 THEN
            DMESTOQUE.TRel.SQL.Add(',subproduto.marca as PADRAO2 ')   //MARCA
        ELSE IF rgSubAgrupar.ItemIndex = 4 THEN
            DMESTOQUE.TRel.SQL.Add(',subproduto.fabricante as PADRAO2 ')  //FABRICANTE
        ELSE
            DMESTOQUE.TRel.SQL.Add(',produto.descricao as PADRAO2 '); //PRODUTO

   END;

   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   If CBEstPos.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
   FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
   FiltroMarca;
   FiltroFabricante;

   if Trim(cbSegmento.Text) <> '' then
        DMESTOQUE.TRel.SQL.Add(' and (upper(subproduto.classificacao) = Upper('+#39+Trim(cbSegmento.Text)+#39+'))');

  	DMESTOQUE.TRel.SQL.Add(' order by produto.descricao, subproduto.descricao ');
   DMESTOQUE.TRel.SQL.Text;
   If AbreTabela=True
   Then Begin
       PComunica.Visible:=True;
       PComunica.BringToFront;
       PComunica.Refresh;
   	//Prepara tabela temporaria
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('delete from tmp');
       DMMACS.TMP.ExecSQL;
       DMMACS.Transaction.CommitRetaining;

       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('Select * from tmp');
       DMMACS.TMP.Open;

       DMESTOQUE.TRel.First;
       While Not DMESTOQUE.TRel.Eof do
       Begin
       	XCONT:=XCONT+1;
           XCOD_TMP:=XCOD_TMP+1;
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsCurrency:=XCOD_TMP;

           if rgOrientacao.ItemIndex = 1
            then begin
                DMMACS.TMP.FieldByName('DESC1').AsString := DMESTOQUE.TRel.FieldByName('PADRAO').AsString;
                DMMACS.TMP.FieldByName('DESC3').AsString := DMESTOQUE.TRel.FieldByName('PADRAO2').AsString;
           END;

           DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ESTOQUE').AsInteger;
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMESTOQUE.TRel.FieldByName('ESTFISICO').AsCurrency;
           //VENDA
			DMESTOQUE.Alx.Close;
       	DMESTOQUE.Alx.SQL.Clear;
       	DMESTOQUE.Alx.SQL.Add('SELECT SUM(itenspedven.qtdeprod) AS QTD, SUM(itenspedven.valortotal) AS VLR, SUM(itenspedven.LUCMOE) AS VLRLUC, SUM(itenspedven.lucper) AS VLRLUCPER  From itenspedven Where (itenspedven.cod_estoque=:CODESTOQUE) ');
           If (EDData1.Text<>'') And (EDData2.Text<>'') Then
           	DMESTOQUE.Alx.SQL.Add(' AND ((itenspedven.Data>=:DATA1) And (itenspedven.Data<=:DATA2)) ');
			DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.TRel.FieldByName('COD_ESTOQUE').AsString;
           If (EDData1.Text<>'') And (EDData2.Text<>'')
           Then Begin
   			DMESTOQUE.Alx.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
   			DMESTOQUE.Alx.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
           End;
       	DMESTOQUE.Alx.Open;
           DMMACS.TMP.Edit;
           DMMACS.TMP.FieldByName('VLR3').AsCurrency:=DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
           DMMACS.TMP.FieldByName('VLR5').AsCurrency:=DMESTOQUE.Alx.FieldByName('VLR').AsCurrency;
           DMMACS.TMP.FieldByName('VLR9').AsCurrency:=DMESTOQUE.Alx.FieldByName('VLRLUC').AsCurrency;

           If DMESTOQUE.Alx.FieldByName('VLRLUC').AsCurrency > 0 Then
              DMMACS.TMP.FieldByName('VLR10').AsCurrency:=DMESTOQUE.Alx.FieldByName('VLRLUC').AsCurrency*100/DMESTOQUE.Alx.FieldByName('VLR').AsCurrency
           Else
               DMMACS.TMP.FieldByName('VLR10').AsCurrency:=0;
               
           DMMACS.TMP.Post;
           //ORDEM DE SERVIÇO
			DMESTOQUE.Alx.Close;
       	DMESTOQUE.Alx.SQL.Clear;
       	DMESTOQUE.Alx.SQL.Add('SELECT SUM(itprodord.qtd) AS QTD From itprodord Where (itprodord.cod_estoque=:CODESTOQUE) ');
           If (EDData1.Text<>'') And (EDData2.Text<>'') Then
           	DMESTOQUE.Alx.SQL.Add(' AND ((itprodord.Data>=:DATA1) And (itprodord.Data<=:DATA2)) ');
			DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.TRel.FieldByName('COD_ESTOQUE').AsString;
           If (EDData1.Text<>'') And (EDData2.Text<>'')
           Then Begin
   			DMESTOQUE.Alx.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
   			DMESTOQUE.Alx.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
           End;
       	DMESTOQUE.Alx.Open;
           DMMACS.TMP.Edit;
           DMMACS.TMP.FieldByName('VLR3').AsCurrency:=DMMACS.TMP.FieldByName('VLR3').AsCurrency+DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
           DMMACS.TMP.Post;
           XTOTVEND:=XTOTVEND+DMMACS.TMP.FieldByName('VLR3').AsCurrency;
           //COMPRA
			DMESTOQUE.Alx.Close;
       	DMESTOQUE.Alx.SQL.Clear;
       	DMESTOQUE.Alx.SQL.Add('SELECT SUM(itenspedc.qtdeprod) AS QTD, SUM(itenspedc.valortotal) AS VLR From itenspedc Where (itenspedc.cod_estoque=:CODESTOQUE) ');
           If (EDData1.Text<>'') And (EDData2.Text<>'') Then
           	DMESTOQUE.Alx.SQL.Add(' AND ((itenspedc.Data>=:DATA1) And (itenspedc.Data<=:DATA2)) ');
			DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.TRel.FieldByName('COD_ESTOQUE').AsString;
           If (EDData1.Text<>'') And (EDData2.Text<>'')
           Then Begin
   			DMESTOQUE.Alx.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
   			DMESTOQUE.Alx.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
           End;
           DMESTOQUE.Alx.SQL.Text;
       	DMESTOQUE.Alx.Open;
           DMMACS.TMP.Edit;
           DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
           DMMACS.TMP.FieldByName('VLR4').AsCurrency:=DMESTOQUE.Alx.FieldByName('VLR').AsCurrency;

           if rgOrientacao.ItemIndex = 1
           then begin
               IF ( DMMACS.TMP.FieldByName('VLR3').AsCurrency = 0) OR ( DMMACS.TMP.FieldByName('VLR2').AsCurrency = 0 ) THEN
                    DMMACS.TMP.FieldByName('VLR6').AsCurrency:=0
               ELSE
                    DMMACS.TMP.FieldByName('VLR6').AsCurrency:=(DMMACS.TMP.FieldByName('VLR5').AsCurrency/DMMACS.TMP.FieldByName('VLR3').AsCurrency)*DMMACS.TMP.FieldByName('VLR2').AsCurrency;
           end
           else begin
               IF ( DMMACS.TMP.FieldByName('VLR3').AsCurrency = 0) OR ( DMMACS.TMP.FieldByName('VLR2').AsCurrency = 0 ) THEN
                    DMMACS.TMP.FieldByName('VLR6').AsCurrency:=0
               ELSE
                    DMMACS.TMP.FieldByName('VLR6').AsCurrency:=(DMMACS.TMP.FieldByName('VLR3').AsCurrency*100)/DMMACS.TMP.FieldByName('VLR2').AsCurrency;
           end;

           DMMACS.TMP.Post;
           XTOTCOMP:=XTOTCOMP+DMMACS.TMP.FieldByName('VLR2').AsCurrency;

           //SOMENTE SOMA TOTAL DE ESTOQUE FISICO SE HOUVER COMPRAS OU VENDAS
			If (DMMACS.TMP.FieldByName('VLR2').AsCurrency<>0) OR (DMMACS.TMP.FieldByName('VLR3').AsCurrency<>0) Then
				XTOTEST:=XTOTEST+DMESTOQUE.TRel.FieldByName('estfisico').AsCurrency;

           DMESTOQUE.TRel.Next;
      End;

      DMMACS.Transaction.CommitRetaining;


        // - 11/02/2009: fazer esquema pra pegar total de grupo e subgrupo em tabelas auxiliares
      if rgOrientacao.ItemIndex = 1
      then begin

            {// - 11/02/2009: somatoria do grupo

            DMESTOQUE.Alx4.Close;
            DMESTOQUE.Alx4.SQL.Clear;

            DMESTOQUE.Alx4.SQL.Add('Select ');

            IF rgAgrupar.ItemIndex = 1 THEN
                DMESTOQUE.Alx4.SQL.Add('grupoprod.descricao as PADRAO, ') //GRUPO
            ELSE IF rgAgrupar.ItemIndex = 2 THEN
                DMESTOQUE.Alx4.SQL.Add('subgrupoprod.descricao as PADRAO, ') //SUBBRUPO
            ELSE IF rgAgrupar.ItemIndex = 3 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.marca as PADRAO, ')   //MARCA
            ELSE IF rgAgrupar.ItemIndex = 4 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.fabricante as PADRAO, ')  //FABRICANTE
            ELSE
                DMESTOQUE.Alx4.SQL.Add('produto.descricao as PADRAO, '); //PRODUTO

            //DMESTOQUE.Alx4.SQL.Add('  sum(tmp.vlr4) AS GRUPOCOMPRA, sum(tmp.vlr5) AS GRUPOVENDA');
            DMESTOQUE.Alx4.SQL.Add('  sum(tmp.vlr6) AS GRUPOVENDA');
            DMESTOQUE.Alx4.SQL.Add('from tmp');
            DMESTOQUE.Alx4.SQL.Add(' Left Join vwsimilar on tmp.int1 = vwsimilar.cod_estoque');
            DMESTOQUE.Alx4.SQL.Add('left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto');
            DMESTOQUE.Alx4.SQL.Add('left join produto on subproduto.cod_produto = produto.cod_produto');
            DMESTOQUE.Alx4.SQL.Add('left join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod');
            DMESTOQUE.Alx4.SQL.Add('left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');

            DMESTOQUE.Alx4.SQL.Add('GROUP BY');

            IF rgAgrupar.ItemIndex = 1 THEN
                DMESTOQUE.Alx4.SQL.Add('grupoprod.descricao') //GRUPO
            ELSE IF rgAgrupar.ItemIndex = 2 THEN
                DMESTOQUE.Alx4.SQL.Add('subgrupoprod.descricao ') //SUBBRUPO
            ELSE IF rgAgrupar.ItemIndex = 3 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.marca ')   //MARCA
            ELSE IF rgAgrupar.ItemIndex = 4 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.fabricante')  //FABRICANTE
            ELSE
                DMESTOQUE.Alx4.SQL.Add('produto.descricao'); //PRODUTO

            DMESTOQUE.Alx4.Open;


             // inserir valores na tabela tmp
             DMESTOQUE.Alx4.First;
             while NOT DMESTOQUE.Alx4.Eof
             DO BEGIN
                // - 11/02/2009:     seta valor total de venda do grupo

                 DMMACS.TMP.Close;
                 DMMACS.TMP.SQL.Clear;
                 DMMACS.TMP.SQL.Add('UPDATE TMP SET VLR7 = :GRUPOVALOR WHERE TMP.DESC1 = :PADRAO');
                 DMMACS.TMP.ParamByName('GRUPOVALOR').AsCurrency := DMESTOQUE.Alx4.FieldByName('GRUPOVENDA').AsCurrency;
                 DMMACS.TMP.ParamByName('PADRAO').AsString := DMESTOQUE.Alx4.FieldByName('PADRAO').AsString;
                 DMMACS.TMP.ExecSQL;

                 DMMACS.Transaction.CommitRetaining;

                 DMESTOQUE.Alx4.Next;

             END;


            // - 11/02/2009: somatoria do subgrupo
            DMESTOQUE.Alx4.Close;
            DMESTOQUE.Alx4.SQL.Clear;

            DMESTOQUE.Alx4.SQL.Add('Select ');


            IF rgSubAgrupar.ItemIndex = 1 THEN
                DMESTOQUE.Alx4.SQL.Add('grupoprod.descricao as PADRAO2, ') //GRUPO
            ELSE IF rgSubAgrupar.ItemIndex = 2 THEN
                DMESTOQUE.Alx4.SQL.Add('subgrupoprod.descricao as PADRAO2, ') //SUBBRUPO
            ELSE IF rgSubAgrupar.ItemIndex = 3 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.marca as PADRAO2, ')   //MARCA
            ELSE IF rgSubAgrupar.ItemIndex = 4 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.fabricante as PADRAO2, ')  //FABRICANTE
            ELSE
                DMESTOQUE.Alx4.SQL.Add('produto.descricao as PADRAO2, '); //PRODUTO


           // DMESTOQUE.Alx4.SQL.Add('  sum(tmp.vlr4) AS SUBGRUPOCOMPRA, sum(tmp.vlr5) AS SUBGRUPOVENDA');
            DMESTOQUE.Alx4.SQL.Add('  sum(tmp.vlr6) AS SUBGRUPOVENDA');
            DMESTOQUE.Alx4.SQL.Add('from tmp');
            DMESTOQUE.Alx4.SQL.Add(' Left Join vwsimilar on tmp.int1 = vwsimilar.cod_estoque');
            DMESTOQUE.Alx4.SQL.Add('left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto');
            DMESTOQUE.Alx4.SQL.Add('left join produto on subproduto.cod_produto = produto.cod_produto');
            DMESTOQUE.Alx4.SQL.Add('left join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod');
            DMESTOQUE.Alx4.SQL.Add('left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');

            DMESTOQUE.Alx4.SQL.Add('GROUP BY');

            IF rgSubAgrupar.ItemIndex = 1 THEN
                DMESTOQUE.Alx4.SQL.Add('grupoprod.descricao ') //GRUPO
            ELSE IF rgSubAgrupar.ItemIndex = 2 THEN
                DMESTOQUE.Alx4.SQL.Add('subgrupoprod.descricao ') //SUBBRUPO
            ELSE IF rgSubAgrupar.ItemIndex = 3 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.marca')   //MARCA
            ELSE IF rgSubAgrupar.ItemIndex = 4 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.fabricante ')  //FABRICANTE
            ELSE
                DMESTOQUE.Alx4.SQL.Add('produto.descricao'); //PRODUTO


            DMESTOQUE.Alx4.Open;


            // inserir valores na tabela tmp
             DMESTOQUE.Alx4.First;
             while NOT DMESTOQUE.Alx4.Eof
             DO BEGIN
                // - 11/02/2009:     seta valor total de venda do subgrupo

                 DMMACS.TMP.Close;
                 DMMACS.TMP.SQL.Clear;
                 DMMACS.TMP.SQL.Add('UPDATE TMP SET VLR8 = :SUBGRUPOVALOR WHERE TMP.DESC3 = :PADRAO2');
                 DMMACS.TMP.ParamByName('SUBGRUPOVALOR').AsCurrency := DMESTOQUE.Alx4.FieldByName('SUBGRUPOVENDA').AsCurrency;
                 DMMACS.TMP.ParamByName('PADRAO2').AsString := DMESTOQUE.Alx4.FieldByName('PADRAO2').AsString;
                 DMMACS.TMP.ExecSQL;

                 DMMACS.Transaction.CommitRetaining;

                 DMESTOQUE.Alx4.Next;

             END;       }



             // - 11/02/2009: somatoria do GRUPO  ---VALOR VENDA, LUCRATIVIDADE E QUANTIDADE -----------------

            DMESTOQUE.Alx4.Close;
            DMESTOQUE.Alx4.SQL.Clear;

            DMESTOQUE.Alx4.SQL.Add('Select ');

            IF rgAgrupar.ItemIndex = 1 THEN
                DMESTOQUE.Alx4.SQL.Add('grupoprod.descricao as PADRAO, ') //GRUPO
            ELSE IF rgAgrupar.ItemIndex = 2 THEN
                DMESTOQUE.Alx4.SQL.Add('subgrupoprod.descricao as PADRAO, ') //SUBBRUPO
            ELSE IF rgAgrupar.ItemIndex = 3 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.marca as PADRAO, ')   //MARCA
            ELSE IF rgAgrupar.ItemIndex = 4 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.fabricante as PADRAO, ')  //FABRICANTE
            ELSE
                DMESTOQUE.Alx4.SQL.Add('produto.descricao as PADRAO, '); //PRODUTO

            //DMESTOQUE.Alx4.SQL.Add('  sum(tmp.vlr4) AS GRUPOCOMPRA, sum(tmp.vlr5) AS GRUPOVENDA');
            DMESTOQUE.Alx4.SQL.Add('  sum(tmp.vlr5) AS GRUPOVENDA, sum(tmp.vlr9) AS GRUPOLUCR, sum(tmp.vlr3) AS GRUPOQNT');
            DMESTOQUE.Alx4.SQL.Add('from tmp');
            DMESTOQUE.Alx4.SQL.Add(' Left Join vwsimilar on tmp.int1 = vwsimilar.cod_estoque');
            DMESTOQUE.Alx4.SQL.Add('left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto');
            DMESTOQUE.Alx4.SQL.Add('left join produto on subproduto.cod_produto = produto.cod_produto');
            DMESTOQUE.Alx4.SQL.Add('left join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod');
            DMESTOQUE.Alx4.SQL.Add('left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');

            DMESTOQUE.Alx4.SQL.Add('GROUP BY');

            IF rgAgrupar.ItemIndex = 1 THEN
                DMESTOQUE.Alx4.SQL.Add('grupoprod.descricao') //GRUPO
            ELSE IF rgAgrupar.ItemIndex = 2 THEN
                DMESTOQUE.Alx4.SQL.Add('subgrupoprod.descricao ') //SUBBRUPO
            ELSE IF rgAgrupar.ItemIndex = 3 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.marca ')   //MARCA
            ELSE IF rgAgrupar.ItemIndex = 4 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.fabricante')  //FABRICANTE
            ELSE
                DMESTOQUE.Alx4.SQL.Add('produto.descricao'); //PRODUTO

            DMESTOQUE.Alx4.Open;

             // inserir valores na tabela tmp
             DMESTOQUE.Alx4.First;
             while NOT DMESTOQUE.Alx4.Eof
             DO BEGIN
                // - 11/02/2009:     seta valor total de LUCRO do grupo

                 DMMACS.TMP.Close;
                 DMMACS.TMP.SQL.Clear;
                 DMMACS.TMP.SQL.Add('UPDATE TMP SET VLR7 = :GRUPOVALOR, VLR12 = :GRUPOLUCR, VLR14 = :GRUPOQNT, VLR15 = :GRUPOLUCRP WHERE TMP.DESC1 = :PADRAO');
                 DMMACS.TMP.ParamByName('GRUPOVALOR').AsCurrency := DMESTOQUE.Alx4.FieldByName('GRUPOVENDA').AsCurrency;
                 DMMACS.TMP.ParamByName('GRUPOLUCR').AsCurrency := DMESTOQUE.Alx4.FieldByName('GRUPOLUCR').AsCurrency;
                 DMMACS.TMP.ParamByName('GRUPOQNT').AsCurrency := DMESTOQUE.Alx4.FieldByName('GRUPOQNT').AsCurrency;

                 If DMESTOQUE.Alx4.FieldByName('GRUPOLUCR').AsCurrency > 0
                 Then
                     DMMACS.TMP.ParamByName('GRUPOLUCRP').AsCurrency := DMESTOQUE.Alx4.FieldByName('GRUPOLUCR').AsCurrency*100/DMESTOQUE.Alx4.FieldByName('GRUPOVENDA').AsCurrency
                 Else
                     DMMACS.TMP.ParamByName('GRUPOLUCRP').AsCurrency := 0;

                 DMMACS.TMP.ParamByName('PADRAO').AsString := DMESTOQUE.Alx4.FieldByName('PADRAO').AsString;
                 DMMACS.TMP.ExecSQL;

                 DMMACS.Transaction.CommitRetaining;

                 DMESTOQUE.Alx4.Next;

             END;



            // - 11/02/2009: somatoria do subgrupo ---LUCRATIVIDADE E QUANTIDADE -----------------
            DMESTOQUE.Alx4.Close;
            DMESTOQUE.Alx4.SQL.Clear;

            DMESTOQUE.Alx4.SQL.Add('Select ');


            IF rgSubAgrupar.ItemIndex = 1 THEN
                DMESTOQUE.Alx4.SQL.Add('grupoprod.descricao as PADRAO2, ') //GRUPO
            ELSE IF rgSubAgrupar.ItemIndex = 2 THEN
                DMESTOQUE.Alx4.SQL.Add('subgrupoprod.descricao as PADRAO2, ') //SUBBRUPO
            ELSE IF rgSubAgrupar.ItemIndex = 3 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.marca as PADRAO2, ')   //MARCA
            ELSE IF rgSubAgrupar.ItemIndex = 4 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.fabricante as PADRAO2, ')  //FABRICANTE
            ELSE
                DMESTOQUE.Alx4.SQL.Add('produto.descricao as PADRAO2, '); //PRODUTO


           // DMESTOQUE.Alx4.SQL.Add('  sum(tmp.vlr4) AS SUBGRUPOCOMPRA, sum(tmp.vlr5) AS SUBGRUPOVENDA');
            DMESTOQUE.Alx4.SQL.Add(' sum(tmp.vlr5) AS SUBGRUPOVENDA, sum(tmp.vlr9) AS SUBGRUPOLUCR, sum(tmp.vlr3) AS SUBGRUPOQNT');
            DMESTOQUE.Alx4.SQL.Add('from tmp');
            DMESTOQUE.Alx4.SQL.Add(' Left Join vwsimilar on tmp.int1 = vwsimilar.cod_estoque');
            DMESTOQUE.Alx4.SQL.Add('left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto');
            DMESTOQUE.Alx4.SQL.Add('left join produto on subproduto.cod_produto = produto.cod_produto');
            DMESTOQUE.Alx4.SQL.Add('left join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod');
            DMESTOQUE.Alx4.SQL.Add('left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');

            DMESTOQUE.Alx4.SQL.Add('GROUP BY');

            IF rgSubAgrupar.ItemIndex = 1 THEN
                DMESTOQUE.Alx4.SQL.Add('grupoprod.descricao ') //GRUPO
            ELSE IF rgSubAgrupar.ItemIndex = 2 THEN
                DMESTOQUE.Alx4.SQL.Add('subgrupoprod.descricao ') //SUBBRUPO
            ELSE IF rgSubAgrupar.ItemIndex = 3 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.marca')   //MARCA
            ELSE IF rgSubAgrupar.ItemIndex = 4 THEN
                DMESTOQUE.Alx4.SQL.Add('subproduto.fabricante ')  //FABRICANTE
            ELSE
                DMESTOQUE.Alx4.SQL.Add('produto.descricao'); //PRODUTO


            DMESTOQUE.Alx4.Open;

            // inserir valores na tabela tmp
             DMESTOQUE.Alx4.First;
             while NOT DMESTOQUE.Alx4.Eof
             DO BEGIN
                // - 11/02/2009:     seta valor total de venda do subgrupo

                 DMMACS.TMP.Close;
                 DMMACS.TMP.SQL.Clear;
                 DMMACS.TMP.SQL.Add('UPDATE TMP SET VLR8 = :SUBGRUPOVALOR, VLR11 = :SUBGRUPOLUCR, VLR13 = :SUBGRUPOQNT, VLR16 = :SUBGRUPOLUCRP WHERE TMP.DESC3 = :PADRAO2');
                 DMMACS.TMP.ParamByName('SUBGRUPOVALOR').AsCurrency := DMESTOQUE.Alx4.FieldByName('SUBGRUPOVENDA').AsCurrency;
                 DMMACS.TMP.ParamByName('SUBGRUPOLUCR').AsCurrency := DMESTOQUE.Alx4.FieldByName('SUBGRUPOLUCR').AsCurrency;
                 DMMACS.TMP.ParamByName('SUBGRUPOQNT').AsCurrency := DMESTOQUE.Alx4.FieldByName('SUBGRUPOQNT').AsCurrency;

                 If DMESTOQUE.Alx4.FieldByName('SUBGRUPOLUCR').AsCurrency > 0
                 Then
                     DMMACS.TMP.ParamByName('SUBGRUPOLUCRP').AsCurrency := DMESTOQUE.Alx4.FieldByName('SUBGRUPOLUCR').AsCurrency*100/DMESTOQUE.Alx4.FieldByName('SUBGRUPOVENDA').AsCurrency
                 Else
                     DMMACS.TMP.ParamByName('SUBGRUPOLUCRP').AsCurrency := 0;
                 DMMACS.TMP.ParamByName('PADRAO2').AsString := DMESTOQUE.Alx4.FieldByName('PADRAO2').AsString;
                 DMMACS.TMP.ExecSQL;
                 {
                 If DMESTOQUE.Alx.FieldByName('VLRLUC').AsCurrency > 0 Then
              DMMACS.TMP.FieldByName('VLR10').AsCurrency:=DMESTOQUE.Alx.FieldByName('VLRLUC').AsCurrency*100/DMESTOQUE.Alx.FieldByName('VLR').AsCurrency
           Else
               DMMACS.TMP.FieldByName('VLR10').AsCurrency:=0; }

                 DMMACS.Transaction.CommitRetaining;

                 DMESTOQUE.Alx4.Next;

             END;



            // - 11/02/2009: SOMA TOTAL DO RELATORIO
            DMESTOQUE.Alx4.Close;
            DMESTOQUE.Alx4.SQL.Clear;
             DMESTOQUE.Alx4.SQL.Add('select  sum(tmp.vlr6) AS TOTALGERAL');
            DMESTOQUE.Alx4.SQL.Add('from tmp');
            DMESTOQUE.Alx4.SQL.Add(' Left Join vwsimilar on tmp.int1 = vwsimilar.cod_estoque');
            DMESTOQUE.Alx4.SQL.Add('left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto');
            DMESTOQUE.Alx4.SQL.Add('left join produto on subproduto.cod_produto = produto.cod_produto');
            DMESTOQUE.Alx4.SQL.Add('left join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod');
            DMESTOQUE.Alx4.SQL.Add('left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');
            DMESTOQUE.Alx4.Open;
      end;




      DMESTOQUE.TRel.Close;
      DMESTOQUE.TRel.SQL.Clear;
      DMESTOQUE.TRel.SQL.Add(' Select grupoprod.descricao as GRUPO, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS CODIGO, subgrupoprod.descricao AS SUBGRUPO, subproduto.mark, subproduto.cor AS COR, ');
      DMESTOQUE.TRel.SQL.Add('        vwsimilar.codfabricante AS FABRICANTE, vwsimilar.descricao AS SUBPRODUTO, produto.descricao AS PRODUTO, vwsimilar.marca, estoque.VENDVARV, estoque.valunit,');
      DMESTOQUE.TRel.SQL.Add('        tmp.vlr1 AS ESTOQUE, tmp.vlr2 AS COMPRA, tmp.vlr3 AS VENDA, tmp.vlr4 AS VLRCOMPRA, tmp.vlr5 AS VLRVENDA, tmp.vlr6 AS PORCENT, tmp.vlr9 AS LUCRAT, tmp.vlr10 AS LUCRATPER, VLR15 AS GRUPOLUCRP, VLR16 AS SUBGRUPOLUCRP, ');


      // - 11/02/2009: AGRUPAMENTO
      if cbAgrupar.Checked
      then begin
        IF rgAgrupar.ItemIndex = 1 THEN
            DMESTOQUE.TRel.SQL.Add('grupoprod.descricao as PADRAO ') //GRUPO
        ELSE IF rgAgrupar.ItemIndex = 2 THEN
            DMESTOQUE.TRel.SQL.Add('subgrupoprod.descricao as PADRAO ') //SUBBRUPO
        ELSE IF rgAgrupar.ItemIndex = 3 THEN
            DMESTOQUE.TRel.SQL.Add('subproduto.marca as PADRAO ')   //MARCA
        ELSE IF rgAgrupar.ItemIndex = 4 THEN
            DMESTOQUE.TRel.SQL.Add('subproduto.fabricante as PADRAO ')  //FABRICANTE
        ELSE
            DMESTOQUE.TRel.SQL.Add('produto.descricao as PADRAO '); //PRODUTO

      end
      else
        DMESTOQUE.TRel.SQL.Add('produto.descricao as PADRAO ');


      if rgOrientacao.ItemIndex = 1
      then begin
           // - 11/02/2009: SUB AGRUPAMENTO

            IF rgSubAgrupar.ItemIndex = 1 THEN
                DMESTOQUE.TRel.SQL.Add(',grupoprod.descricao as PADRAO2 ') //GRUPO
            ELSE IF rgSubAgrupar.ItemIndex = 2 THEN
                DMESTOQUE.TRel.SQL.Add(',subgrupoprod.descricao as PADRAO2 ') //SUBBRUPO
            ELSE IF rgSubAgrupar.ItemIndex = 3 THEN
                DMESTOQUE.TRel.SQL.Add(',subproduto.marca as PADRAO2 ')   //MARCA
            ELSE IF rgSubAgrupar.ItemIndex = 4 THEN
                DMESTOQUE.TRel.SQL.Add(',subproduto.fabricante as PADRAO2 ')  //FABRICANTE
            ELSE
                DMESTOQUE.TRel.SQL.Add(',produto.descricao as PADRAO2 '); //PRODUTO


        // - 11/02/2009: ADD CAMPOS DE VALOR TOTAL
            DMESTOQUE.TRel.SQL.Add(', tmp.vlr7 as GRUPOVALOR, tmp.vlr8 as SUBGRUPOVALOR, tmp.vlr11 as SUBGRUPOLUCR, tmp.vlr12 as GRUPOLUCR, tmp.vlr13 as SUBGRUPOQNT, tmp.vlr14 as GRUPOQNT');


      end;



      DMESTOQUE.TRel.SQL.Add(' from tmp ');
      DMESTOQUE.TRel.SQL.Add(' Left Join vwsimilar on tmp.int1 = vwsimilar.cod_estoque ');
      DMESTOQUE.TRel.SQL.Add(' left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
      DMESTOQUE.TRel.SQL.Add(' left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
      DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
      DMESTOQUE.TRel.SQL.Add(' left join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod ');
      DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod ');
      DMESTOQUE.TRel.SQL.Add(' Where (Vlr2>0) or (Vlr3>0) or (Vlr1>0)');

      //Paulo 22/11/2011: Para pet shop verificar se quer ou não mostrar somente movimentados
      if FMenu.TIPOREL='ENTXSAIPET'then
      begin
           if rbMovimentados.Checked = True then
               DMESTOQUE.TRel.SQL.Add(' and Vlr2 <> 0 and Vlr3<>0');
      end;
        // - 11/02/2009: ORDENAÇÃO

        DMESTOQUE.TRel.SQL.Add(' ORDER by ');


       if (rgOrientacao.ItemIndex = 1) And ((RgOrdenacao.ItemIndex = 5) Or (RgOrdenacao.ItemIndex = 6))
       Then Begin
            IF RgOrdenacao.ItemIndex = 5
            THEN Begin
                  DMESTOQUE.TRel.SQL.Add('tmp.vlr14 DESC,');   //ordena pela quantidade grupo

                  IF rgAgrupar.ItemIndex = 1 THEN //ordena pelo grupo
                      DMESTOQUE.TRel.SQL.Add('grupoprod.descricao,') //GRUPO
                  ELSE IF rgAgrupar.ItemIndex = 2 THEN
                      DMESTOQUE.TRel.SQL.Add('subgrupoprod.descricao,') //SUBBRUPO
                  ELSE IF rgAgrupar.ItemIndex = 3 THEN
                      DMESTOQUE.TRel.SQL.Add('subproduto.marca,')   //MARCA
                  ELSE IF rgAgrupar.ItemIndex = 4 THEN
                      DMESTOQUE.TRel.SQL.Add('subproduto.fabricante,')  //FABRICANTE
                  ELSE
                        DMESTOQUE.TRel.SQL.Add('produto.descricao,'); //PRODUTO

                  DMESTOQUE.TRel.SQL.Add('tmp.vlr13 DESC, '); //ordena quantidade do subgrupo

                    IF rgSubAgrupar.ItemIndex = 1 THEN     //ordena pelo subgrupo
                        DMESTOQUE.TRel.SQL.Add(' grupoprod.descricao, ') //GRUPO
                    ELSE IF rgSubAgrupar.ItemIndex = 2 THEN
                        DMESTOQUE.TRel.SQL.Add(' subgrupoprod.descricao, ') //SUBBRUPO
                    ELSE IF rgSubAgrupar.ItemIndex = 3 THEN
                        DMESTOQUE.TRel.SQL.Add(' subproduto.marca, ')   //MARCA
                    ELSE IF rgSubAgrupar.ItemIndex = 4 THEN
                        DMESTOQUE.TRel.SQL.Add(' subproduto.fabricante, ')  //FABRICANTE
                    ELSE
                        DMESTOQUE.TRel.SQL.Add(' produto.descricao, '); //PRODUTO

                  //DMESTOQUE.TRel.SQL.Add('tmp.vlr3 DESC, tmp.vlr12 DESC,tmp.vlr11 DESC, tmp.vlr9 DESC ');
                  DMESTOQUE.TRel.SQL.Add('tmp.vlr3 DESC, tmp.vlr15 DESC,tmp.vlr16 DESC, tmp.vlr10 DESC ');
            End
            ELSE IF RgOrdenacao.ItemIndex = 6     //orden pela lucratividade
            THEN Begin
                 DMESTOQUE.TRel.SQL.Add('tmp.vlr15 DESC,');   //ordena pela quantidade grupo

                  IF rgAgrupar.ItemIndex = 1 THEN //ordena pelo grupo
                      DMESTOQUE.TRel.SQL.Add('grupoprod.descricao,') //GRUPO
                  ELSE IF rgAgrupar.ItemIndex = 2 THEN
                      DMESTOQUE.TRel.SQL.Add('subgrupoprod.descricao,') //SUBBRUPO
                  ELSE IF rgAgrupar.ItemIndex = 3 THEN
                      DMESTOQUE.TRel.SQL.Add('subproduto.marca,')   //MARCA
                  ELSE IF rgAgrupar.ItemIndex = 4 THEN
                      DMESTOQUE.TRel.SQL.Add('subproduto.fabricante,')  //FABRICANTE
                  ELSE
                        DMESTOQUE.TRel.SQL.Add('produto.descricao,'); //PRODUTO

                  DMESTOQUE.TRel.SQL.Add('tmp.vlr16 DESC, '); //ordena quantidade do subgrupo

                    IF rgSubAgrupar.ItemIndex = 1 THEN     //ordena pelo subgrupo
                        DMESTOQUE.TRel.SQL.Add(' grupoprod.descricao, ') //GRUPO
                    ELSE IF rgSubAgrupar.ItemIndex = 2 THEN
                        DMESTOQUE.TRel.SQL.Add(' subgrupoprod.descricao, ') //SUBBRUPO
                    ELSE IF rgSubAgrupar.ItemIndex = 3 THEN
                        DMESTOQUE.TRel.SQL.Add(' subproduto.marca, ')   //MARCA
                    ELSE IF rgSubAgrupar.ItemIndex = 4 THEN
                        DMESTOQUE.TRel.SQL.Add(' subproduto.fabricante, ')  //FABRICANTE
                    ELSE
                        DMESTOQUE.TRel.SQL.Add(' produto.descricao, '); //PRODUTO

                 DMESTOQUE.TRel.SQL.Add(' tmp.vlr10 DESC, tmp.vlr14 DESC,tmp.vlr13 DESC, tmp.vlr3 DESC ');

            End;

        End
        // - 11/02/2009:    SEMPRE ORDENAR COMO PADRAO OPÇÃO MARCADA EM AGRUPAR DEPOIS SUB-ORDENAR PELO RADIOGROUP
      Else if cbAgrupar.Checked
      then begin
        IF rgAgrupar.ItemIndex = 1 THEN
            DMESTOQUE.TRel.SQL.Add('grupoprod.descricao') //GRUPO
        ELSE IF rgAgrupar.ItemIndex = 2 THEN
            DMESTOQUE.TRel.SQL.Add('subgrupoprod.descricao') //SUBBRUPO
        ELSE IF rgAgrupar.ItemIndex = 3 THEN
            DMESTOQUE.TRel.SQL.Add('subproduto.marca')   //MARCA
        ELSE IF rgAgrupar.ItemIndex = 4 THEN
            DMESTOQUE.TRel.SQL.Add('subproduto.fabricante')  //FABRICANTE
        ELSE
              DMESTOQUE.TRel.SQL.Add('produto.descricao'); //PRODUTO

      end
      else
        DMESTOQUE.TRel.SQL.Add('produto.descricao');


      if rgOrientacao.ItemIndex = 1
      then begin
           // - 11/02/2009: SUB AGRUPAMENTO
          if cbAgrupar.Checked
          then begin
            IF rgSubAgrupar.ItemIndex = 1 THEN
                DMESTOQUE.TRel.SQL.Add(',grupoprod.descricao ') //GRUPO
            ELSE IF rgSubAgrupar.ItemIndex = 2 THEN
                DMESTOQUE.TRel.SQL.Add(',subgrupoprod.descricao ') //SUBBRUPO
            ELSE IF rgSubAgrupar.ItemIndex = 3 THEN
                DMESTOQUE.TRel.SQL.Add(',subproduto.marca ')   //MARCA
            ELSE IF rgSubAgrupar.ItemIndex = 4 THEN
                DMESTOQUE.TRel.SQL.Add(',subproduto.fabricante ')  //FABRICANTE
            ELSE
                DMESTOQUE.TRel.SQL.Add(',produto.descricao '); //PRODUTO

          end
          else
            DMESTOQUE.TRel.SQL.Add(',produto.descricao ');
      end;


      IF RgOrdenacao.ItemIndex = 0 THEN
          DMESTOQUE.TRel.SQL.Add(', grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.cor') //GRUPO
      ELSE IF RgOrdenacao.ItemIndex = 1 THEN
          DMESTOQUE.TRel.SQL.Add(' produto.descricao, grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.cor') //SUBBRUPO
      ELSE IF RgOrdenacao.ItemIndex = 2 THEN
          DMESTOQUE.TRel.SQL.Add(', vwsimilar.codfabricante, grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.cor')   //MARCA
      ELSE IF RgOrdenacao.ItemIndex = 3 THEN
          DMESTOQUE.TRel.SQL.Add(', subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+', grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.cor')  //FABRICANTE
      ELSE IF RgOrdenacao.ItemIndex = 4 THEN
          DMESTOQUE.TRel.SQL.Add(', vwsimilar.marca, grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.cor')  //FABRICANTE
      ELSE
          DMESTOQUE.TRel.SQL.Add(', tmp.vlr6 DESC, grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.cor'); //PRODUTO

      //IF RgOrdenacao.ItemIndex <> 5 THEN
       // DMESTOQUE.TRel.SQL.Add(' ORDER by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.cor')
      //else
      //  DMESTOQUE.TRel.SQL.Add(' ORDER by tmp.vlr6 DESC, grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.cor');

      Clipboard.AsText := DMESTOQUE.TRel.SQL.Text;
      DMESTOQUE.TRel.Open;

      PComunica.Visible:=False;

      DMMACS.TLoja.Edit;
      If rgOrientacao.ItemIndex = 0
      Then
          DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + ' Orientação: RETRATO'
      Else
          DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + ' Orientação: PAISAGEM';
      DMMACS.TLoja.Post;

      DMMACS.TLoja.Edit;
      IF RgOrdenacao.ItemIndex = 0 THEN
          DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + #13 + 'Ordenação: GRUPO'
      ELSE IF RgOrdenacao.ItemIndex = 1 THEN
          DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + #13 + 'Ordenação: PRODUTO'
      ELSE IF RgOrdenacao.ItemIndex = 2 THEN
          DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + #13 + 'Ordenação: CÓD. FABRICANTE'
      ELSE IF RgOrdenacao.ItemIndex = 3 THEN
          DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + #13 + 'Ordenação: CÓD. PRODUTO'
      ELSE IF RgOrdenacao.ItemIndex = 4 THEN
          DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + #13 + 'Ordenação: MARCA'
      ELSE IF RgOrdenacao.ItemIndex = 5 THEN
          DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + #13 + 'Ordenação: QUANTIDADE'
      ELSE IF RgOrdenacao.ItemIndex = 6 THEN
           DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + #13 + 'Ordenação: LUCRATIVIDADE'
      ELSE
          DMMACS.TLoja.FieldByName('TMP1').AsString := DMMACS.TLoja.FieldByName('TMP1').AsString + #13 + 'Ordenação: DESCRIÇÃO';
      DMMACS.TLoja.Post;

      If DMESTOQUE.TRel.IsEmpty
      Then Begin
      		Mensagem('INFORMAÇÃO', 'O relatório retornou vazio!', '', 1, 1, False, 'i')
      end
	   Else Begin
          If (cbRelMarcas.Checked)
          Then

             FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfEntXSaiGrupo.frf')

          Else If rgOrientacao.ItemIndex = 1
          Then Begin

                FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfEntXSaiPaisagem.frf');

          End
          Else Begin

                FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfEntXSai.frf');

          End;

      		FSRel.ShowReport;
      End;
   End;
End;


//Imprime Relatório de Lista de Estoque para clientes
Procedure TFRelestoque.ImpRLstEstPedCli;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, subproduto.classificacao, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, Estoque.Bonificacao, estoque.ULTCOMPRA AS DATA, ESTOQUE.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   If CBEstPos.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
  	DMESTOQUE.TRel.SQL.Add(' order by subproduto.DESCRICAO ');
{   If RgOrdenacao.ItemIndex=0 Then
   	DMESTOQUE.TRel.SQL.Add(' order by produto.descricao, subproduto.marca, subproduto.descricao ');
   If RgOrdenacao.ItemIndex=1 Then
       DMESTOQUE.TRel.SQL.Add(' order by produto.descricao, SUBPRODUTO.CodComposto');
   If RgOrdenacao.ItemIndex=2 Then
   	DMESTOQUE.TRel.SQL.Add(' order by  produto.descricao, SUBPRODUTO.descricao');
   If RgOrdenacao.ItemIndex=3 Then
   	DMESTOQUE.TRel.SQL.Add(' order by  produto.descricao, SUBPRODUTO.CODPRODFABR');}
   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfLstEstPedCliDC.frf');
      FSRel.ShowReport;
   End;
End;
//Imprime Relatório de Lista de preços para clientes em 2 colunas
Procedure TFRelestoque.ImpRLstPrecos2colunas;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, subproduto.classificacao, SUBPRODUTO.CONTRINT, SUBPRODUTO.desccupom AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, Estoque.Bonificacao, estoque.ULTCOMPRA AS DATA, ESTOQUE.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   If CBEstPos.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
  	DMESTOQUE.TRel.SQL.Add(' order by SUBPRODUTO.desccupom');
   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfLstPreco2Colunas.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Lista de Estoque para clientes com descricao de cupom
Procedure TFRelestoque.ImpRLstEstPedCliDC;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, subproduto.classificacao, SUBPRODUTO.CONTRINT, subproduto.desccupom AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, Estoque.Bonificacao, estoque.ULTCOMPRA AS DATA, ESTOQUE.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   If CBEstPos.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
  	DMESTOQUE.TRel.SQL.Add(' order by subproduto.desccupom ');
   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfLstEstPedCliDC.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Posição de Estoque
Procedure TFRelestoque.ImpRPosEst;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, unidade.sigla_unid,');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, estoque.ULTCOMPRA AS DATA, ESTOQUE.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') and ((subproduto.ATIVO = ''S'') or (subproduto.ATIVO is null))');
   If CBEstPos.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
   If RgOrdenacao.ItemIndex=0 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.marca, subproduto.descricao ');
   If RgOrdenacao.ItemIndex=1 Then
       DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.CodComposto');
   If RgOrdenacao.ItemIndex=2 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.descricao');
   If RgOrdenacao.ItemIndex=3 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.CODPRODFABR');
   If RgOrdenacao.ItemIndex=4 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.COD_INTERNO, subgrupoprod.COD_INTERNO, produto.cod_interno, SUBPRODUTO.CODPRODFABR');

   If AbreTabela=True
   Then Begin
      If (FMenu.TIPOREL='POSEST') Then
	        FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPosEstoque_Class.frf');
      If (FMenu.TIPOREL='LISTACONTAGEM') Then
	        FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfListaContagem.frf');
      FSRel.ShowReport;
   End;
End;
//Imprime Relatório de Listagem de Estoque
Procedure TFRelestoque.ImpRListaEst;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, unidade.sigla_unid,');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, estoque.ULTCOMPRA AS DATA, ESTOQUE.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') and ((subproduto.ATIVO = ''S'') or (subproduto.ATIVO is null))');
   If CBEstPos.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
   If RgOrdenacao.ItemIndex=0 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, subproduto.marca, subproduto.descricao ');
   If RgOrdenacao.ItemIndex=1 Then
       DMESTOQUE.TRel.SQL.Add(' order by SUBPRODUTO.DESCRICAO ');
   If RgOrdenacao.ItemIndex=2 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.descricao');
   If RgOrdenacao.ItemIndex=3 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.descricao, subgrupoprod.descricao, produto.descricao, SUBPRODUTO.CODPRODFABR');
   If RgOrdenacao.ItemIndex=4 Then
   	DMESTOQUE.TRel.SQL.Add(' order by grupoprod.COD_INTERNO, subgrupoprod.COD_INTERNO, produto.cod_interno, SUBPRODUTO.CODPRODFABR');

   If AbreTabela=True
   Then Begin
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfListaEstoque.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Lançamentos de Entrada em estoque
Procedure TFRelestoque.ImpRLancEnt;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.close;
   DMESTOQUE.TRel.sql.Clear;
   DMESTOQUE.TRel.SQL.Add(' SELECT lancent.cod_lanent, lancent.cod_estoque, lancent.cod_loja,');
   DMESTOQUE.TRel.SQL.Add(' lancent.cod_usuario, lancent.dt_lancamento, lancent.motivo, LANCENT.QTDANT, ');
   DMESTOQUE.TRel.SQL.Add(' lancent.numnota, lancent.quantidade, SUBPRODUTO.CONTRINT,subproduto.cod_interno, subproduto.descricao, PRODUTO.DESCRICAO AS PRODUTO, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.SQL.Add(' grupoprod.descricao AS GRUPO, subgrupoprod.descricao AS subgrupo');
   DMESTOQUE.TRel.SQL.Add(' FROM lancent join estoque ON lancent.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.TRel.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.TRel.SQL.Add(' left join produto ON subproduto.cod_produto = produto.cod_produto');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod ON produto.cod_grupoprod = grupoprod.cod_grupoprod');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod ON produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
   FiltroData;
   DMESTOQUE.TRel.SQL.Add(' ORDER BY LANCENT.DT_LANCAMENTO, LANCENT.NUMNOTA, SUBPRODUTO.DESCRICAO  ');
   If AbreTabela=True
   Then Begin
  	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfLANCENT.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Lançamentos de Entrada em estoque com lote.
Procedure TFRelestoque.ImpRLancEntLote;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.close;
   DMESTOQUE.TRel.sql.Clear;
   DMESTOQUE.TRel.SQL.Add('SELECT lancent.cod_lanent, lancent.cod_estoque, lancent.cod_loja, estoque.estfisico,');
   DMESTOQUE.TRel.SQL.Add('lancent.cod_usuario, lancent.dt_lancamento, lancent.motivo, LANCENT.QTDANT,');
   DMESTOQUE.TRel.SQL.Add('lancent.numnota, lancent.quantidade, SUBPRODUTO.CONTRINT,subproduto.cod_interno,');
   DMESTOQUE.TRel.SQL.Add('subproduto.descricao, PRODUTO.DESCRICAO AS PRODUTO, subproduto.contrint, lote.qtd,');
   DMESTOQUE.TRel.SQL.Add('lancent.cod_lote, lote.cod_lote as CODLOTE, lote.lote as NUMLOTE, lancent.cod_usuario,');
   DMESTOQUE.TRel.SQL.Add('grupoprod.descricao AS GRUPO, subgrupoprod.descricao AS subgrupo, usuario.codusuario, usuario.login');
   DMESTOQUE.TRel.SQL.Add('FROM lancent join estoque ON lancent.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.TRel.SQL.Add('left join lote on estoque.cod_estoque = lote.cod_estoque');
   DMESTOQUE.TRel.SQL.Add('left join usuario on lancent.cod_usuario = usuario.codusuario');
   DMESTOQUE.TRel.SQL.Add('left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.TRel.SQL.Add('left join produto ON subproduto.cod_produto = produto.cod_produto');
   DMESTOQUE.TRel.SQL.Add('left join grupoprod ON produto.cod_grupoprod = grupoprod.cod_grupoprod');
   DMESTOQUE.TRel.SQL.Add('left join subgrupoprod ON produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');
   DMESTOQUE.TRel.SQL.Add('WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
   FiltroData;
   DMESTOQUE.TRel.SQL.Add(' ORDER BY LANCENT.DT_LANCAMENTO, SUBPRODUTO.contrint  ');
   If AbreTabela=True
   Then Begin
  	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfLancEntLote.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Lançamentos de SAÍDA em estoque
Procedure TFRelestoque.ImpRLancSai;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.close;
   DMESTOQUE.TRel.sql.Clear;
   DMESTOQUE.TRel.SQL.Add(' SELECT lancsai.cod_lancsai, lancsai.cod_estoque, lancsai.cod_loja,');
   DMESTOQUE.TRel.SQL.Add(' lancsai.cod_usuario, lancsai.dt_lancamento, lancsai.motivo, LANCSAI.QTDANT, ');
   DMESTOQUE.TRel.SQL.Add(' lancsai.numnota, lancsai.quantidade, subproduto.cod_interno, subproduto.descricao, PRODUTO.DESCRICAO AS PRODUTO, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.SQL.Add(' grupoprod.descricao AS GRUPO, subgrupoprod.descricao AS subgrupo');
   DMESTOQUE.TRel.SQL.Add(' FROM lancsai join estoque ON lancsai.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.TRel.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.TRel.SQL.Add(' left join produto ON subproduto.cod_produto = produto.cod_produto');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod ON produto.cod_grupoprod = grupoprod.cod_grupoprod');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod ON produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
   FiltroData;
   DMESTOQUE.TRel.SQL.Add(' ORDER BY LANCSAI.DT_LANCAMENTO, LANCSAI.NUMNOTA, SUBPRODUTO.DESCRICAO  ');
   If AbreTabela=True
   Then Begin
  	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfLANCSAI.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Lançamentos de SAÍDA em estoque com lote
Procedure TFRelestoque.ImpRLancSaiLote;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.close;
   DMESTOQUE.TRel.sql.Clear;
   DMESTOQUE.TRel.SQL.Add('SELECT lancsai.cod_lancsai, lancsai.cod_estoque, lancsai.cod_loja, estoque.estfisico,');
   DMESTOQUE.TRel.SQL.Add('lancsai.cod_usuario, lancsai.dt_lancamento, lancsai.motivo, LANCSAI.QTDANT,');
   DMESTOQUE.TRel.SQL.Add('lancsai.numnota, lancsai.quantidade, subproduto.cod_interno, subproduto.descricao,');
   DMESTOQUE.TRel.sql.Add('PRODUTO.DESCRICAO AS PRODUTO, subproduto.contrint, lote.qtd, lancsai.cod_lote,');
   DMESTOQUE.TRel.SQL.Add('lote.cod_lote as CODLOTE, lote.lote as NUMLOTE, lancsai.cod_usuario,');
   DMESTOQUE.TRel.SQL.Add('usuario.codusuario, usuario.login, lote.qtd,');
   DMESTOQUE.TRel.SQL.Add('grupoprod.descricao AS GRUPO, subgrupoprod.descricao AS subgrupo');
   DMESTOQUE.TRel.SQL.Add('FROM lancsai join estoque ON lancsai.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.TRel.SQL.Add('left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.TRel.SQL.Add('left join produto ON subproduto.cod_produto = produto.cod_produto');
   DMESTOQUE.TRel.SQL.Add('left join grupoprod ON produto.cod_grupoprod = grupoprod.cod_grupoprod');
   DMESTOQUE.TRel.SQL.Add('left join subgrupoprod ON produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');
   DMESTOQUE.TRel.SQL.Add('left join lote on lancsai.cod_lote = lote.cod_lote');
   DMESTOQUE.TRel.SQL.Add('left join usuario on lancsai.cod_usuario = usuario.codusuario');
   DMESTOQUE.TRel.SQL.Add('WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+')');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
   FiltroData;
   DMESTOQUE.TRel.SQL.Add('ORDER BY LANCSAI.DT_LANCAMENTO, SUBPRODUTO.CONTRINT');
   DMESTOQUE.TRel.Open;
   If AbreTabela=True
   Then Begin
  	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfLancSaiLote.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Estoque de produtos tipo inventário de estoque
Procedure TFRelestoque.ImpRInventEst;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CONTRINT,SUBPRODUTO.CODPRODFABR, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, estoque.VALCUSTO, estoque.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.valunit, estoque.VLRUNITCOMP, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO, UNIDADE.SIGLA_UNID ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join UNIDADE on UNIDADE.cod_UNIDADE = Subproduto.cod_UNIDVENDA ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (ESTFISICO>0) and ((subproduto.ATIVO = ''S'') or (subproduto.ATIVO is null))');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroClassificacao;
   FiltroProduto;
   FiltroSubProduto;
   DMESTOQUE.TRel.SQL.Add(' order by subproduto.descricao, subproduto.MARCA ');
   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfInventEst.frf');
      FSRel.ShowReport;
   End;
End;

//Salva em txt Relatório de Estoque de produtos tipo inventário de estoque
Procedure TFRelestoque.SalvaInventEst;
Var
	XLinha: String;
   XTexto: TextFile;
   XTotUnitCusto, XTotCusto: Real;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CONTRINT,SUBPRODUTO.CODPRODFABR, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, estoque.VALCUSTO, estoque.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO, UNIDADE.SIGLA_UNID ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join UNIDADE on UNIDADE.cod_UNIDADE = Subproduto.cod_UNIDVENDA ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') AND (ESTFISICO>0)');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
   DMESTOQUE.TRel.SQL.Add(' order by subproduto.descricao, subproduto.MARCA ');
   If AbreTabela=True
   Then Begin
		// Apaga o arquivo Intentario de Estoque
   	If FileExists('C:\Inventario.TXT') then
      		DeleteFile('C:\Inventario.TXT');

       //CRIA ARQUIVO TXT PARA INVENTÁRIO DE ESTOQUE
       AssignFile(XTexto, 'C:\Inventario.TXT');
     	{$I-}
     	Reset(XTexto);
     	{$I+}
     	if IOResult = 0 then
       	Append(XTexto)
     	else
       	Rewrite(XTexto);

       XLinha:='';
		XLinha:=XLinha+ConcatEspaco('CÓDIGO:', 25);
		XLinha:=XLinha+'  ';
		XLinha:=XLinha+ConcatEspacoDir('PRODUTO:', 60);
		XLinha:=XLinha+'  ';
		XLinha:=XLinha+ConcatEspaco('QUANT.:', 10);
		XLinha:=XLinha+'  ';
		XLinha:=XLinha+ConcatEspacoDir('UNID.:', 6);
		XLinha:=XLinha+'  ';
		XLinha:=XLinha+ConcatEspaco('CUSTO:', 10);
		XLinha:=XLinha+'  ';
		XLinha:=XLinha+ConcatEspaco('TOTAL:', 10);

       Writeln(XTexto, XLinha);
       XTotCusto:=0;
       XTotUnitCusto:=0;
	    DMESTOQUE.TRel.First;
       While Not DMESTOQUE.TRel.Eof do
       Begin
           XLinha:='';
           XLinha:=XLinha+ConcatEspaco(DMESTOQUE.TRel.FieldByName(DMMACS.TLoja.FieldByName('CODPRODREL1').AsString).AsString , 25);
			XLinha:=XLinha+'  ';
           XLinha:=XLinha+ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('SUBPRODUTO').AsString , 60);
			XLinha:=XLinha+'  ';
			XLinha:=XLinha+ConcatEspaco(FormatFloat('0.00', DMESTOQUE.TRel.FieldByName('ESTFISICO').AsCurrency), 10);
			XLinha:=XLinha+'  ';
			XLinha:=XLinha+ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('SIGLA_UNID').AsString, 6);
			XLinha:=XLinha+'  ';
			XLinha:=XLinha+ConcatEspaco(FormatFloat('0.00', DMESTOQUE.TRel.FieldByName('VALCUSTO').AsCurrency), 10);
			XLinha:=XLinha+'  ';
			XLinha:=XLinha+ConcatEspaco(FormatFloat('0.00', DMESTOQUE.TRel.FieldByName('ESTFISICO').AsCurrency*DMESTOQUE.TRel.FieldByName('VALCUSTO').AsCurrency), 10);
       	Writeln(XTexto, XLinha);
           XTotUnitCusto:=XTotUnitCusto+DMESTOQUE.TRel.FieldByName('VALCUSTO').AsCurrency;
           XTotCusto:=XTotCusto+(DMESTOQUE.TRel.FieldByName('VALCUSTO').AsCurrency*DMESTOQUE.TRel.FieldByName('ESTFISICO').AsCurrency);
           DMESTOQUE.TRel.Next;
       End;
      	Writeln(XTexto, '');
       XLinha:='';
       XLinha:=XLinha+ConcatEspaco(FormatFloat('0,000.00', XTotUnitCusto), 119);
       XLinha:=XLinha+ConcatEspaco(FormatFloat('0,000.00', XTotCusto), 12);
      	Writeln(XTexto, XLinha);
       CloseFile(Xtexto);
      	MessageDlg('Arquivo salvo como: '+#39+'C:\Inventario.txt'+#39, mtWarning, [mbOK], 0);
   End;
End;

//Exporta em xml Relatório de lista com descricao para cupom
Procedure TFRelestoque.ExpXml;
Var
	XLinha: String;
   XTexto: TextFile;
   //xml
   XMLDoc: TFileStream;
   XML: string;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, subproduto.classificacao, SUBPRODUTO.CONTRINT, subproduto.desccupom AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, Estoque.Bonificacao, estoque.ULTCOMPRA AS DATA, ESTOQUE.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   If CBEstPos.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
  	DMESTOQUE.TRel.SQL.Add(' order by subproduto.desccupom ');
   If AbreTabela=True
   Then Begin
{   	DMESTOQUE.TRel.e
		XMLTransformClient1.ProviderName := 'Provider1';
		XMLTransformClient1.TransformGetData.TransformationFile := 'CustTableToCustXML.xtr';
		XMLTransformClient1.TransFormSetParams.SourceXmlFile := 'InputParams.xml';
		XMLTransformClient1.SetParams('', 'InputParamsToDP.xtr');
		XML := XMLTransformClient1.GetDataAsXml;
		XMLDoc := TFileStream.Create('Customers.xml', fmCreate or fmOpenWrite);
		try
			XMLDoc.Write(XML, Length(XML));
		finally
			XMLDoc.Free;
		end; }
       DMESTOQUE.CDS.Active:=True;
       DMESTOQUE.CDS.SaveToFile('C:\MZR\Arquivos\Produtos.xml');
      	MessageDlg('Arquivo salvo como: '+#39+'C:\MZR\Arquivos\Produtos.xml'+#39, mtWarning, [mbOK], 0);
	End;
End;
//Salva em txt Relatório de lista com descricao para cupom
Procedure TFRelestoque.SalvaLista;
Var
	XLinha: String;
   XTexto: TextFile;
Begin
	LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, subproduto.classificacao, SUBPRODUTO.CONTRINT, subproduto.desccupom AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, Estoque.Bonificacao, estoque.ULTCOMPRA AS DATA, ESTOQUE.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   If CBEstPos.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico>0) ');
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
	FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
  	DMESTOQUE.TRel.SQL.Add(' order by subproduto.desccupom ');
   If AbreTabela=True
   Then Begin
		// Apaga o arquivo com Lista
   	If FileExists('C:\Listaprodutos.TXT') then
      		DeleteFile('C:\Listaprodutos.TXT');

       //CRIA ARQUIVO TXT PARA LISTA
       AssignFile(XTexto, 'C:\Listaprodutos.TXT');
     	{$I-}
     	Reset(XTexto);
     	{$I+}
     	if IOResult = 0 then
       	Append(XTexto)
     	else
       	Rewrite(XTexto);

       //MONTA CABEÇALHO
       Writeln(XTexto, UpperCase(DMMACS.TEmpresa.FieldByName('FANTASIA').AsString));
       Writeln(XTexto, 'Fone: '+DMMACS.TEmpresa.FieldByName('FONE').AsString+' - '+DMMACS.TEmpresa.FieldByName('TEL0800').AsString);
       Writeln(XTexto, DMMACS.TEmpresa.FieldByName('ENDERECO').AsString+ ' - '+DMMACS.TEmpresa.FieldByName('bairro').AsString);
       Writeln(XTexto, '');
       Writeln(XTexto, '-------------------------------------------------------------------------------------------------------');
       Writeln(XTexto, '                                           LISTA DE PEDIDOS                                            ');
       Writeln(XTexto, '-------------------------------------------------------------------------------------------------------');

       //MONTA TITULOS
       XLinha:='';
		XLinha:=XLinha+ConcatEspacoDir('CÓDIGO:', 10);
		XLinha:=XLinha+'  ';
		XLinha:=XLinha+ConcatEspaco('QTD.:', 5);
		XLinha:=XLinha+'  ';
		XLinha:=XLinha+ConcatEspacoDir('PRODUTO:', 64);
		XLinha:=XLinha+'  ';
		XLinha:=XLinha+ConcatEspaco('B', 7);
		XLinha:=XLinha+'  ';
		XLinha:=XLinha+ConcatEspaco('VALOR:', 10);
       Writeln(XTexto, XLinha);
       Writeln(XTexto, '');
	    DMESTOQUE.TRel.First;
       While Not DMESTOQUE.TRel.Eof do
       Begin
           XLinha:='';
           XLinha:=XLinha+ConcatEspacoDir(DMESTOQUE.TRel.FieldByName(DMMACS.TLoja.FieldByName('CODPRODREL1').AsString).AsString , 10);
			XLinha:=XLinha+'  ';
           XLinha:=XLinha+'(   )';
			XLinha:=XLinha+'  ';
           XLinha:=XLinha+ConcatEspacoDir(DMESTOQUE.TRel.FieldByName('SUBPRODUTO').AsString , 64);
			XLinha:=XLinha+'  ';
			XLinha:=XLinha+ConcatEspaco(FormatFloat('0.00', DMESTOQUE.TRel.FieldByName('Bonificacao').AsCurrency), 7);
			XLinha:=XLinha+'  ';
			XLinha:=XLinha+ConcatEspaco(FormatFloat('0.00', DMESTOQUE.TRel.FieldByName('VENDVARV').AsCurrency), 10);
       	Writeln(XTexto, XLinha);
           DMESTOQUE.TRel.Next;
       End;
       Writeln(XTexto, '');
       Writeln(XTexto, '-------------------------------------------------------------------------------------------------------');
       Writeln(XTexto, '                           Mzr Sistemas Ltda - Sistemas de Gestão Empresarial                          ');
       Writeln(XTexto, '                                          www.mzrssitemas.com                                          ');
       CloseFile(Xtexto);
      	MessageDlg('Arquivo salvo como: '+#39+'C:\Inventario.txt'+#39, mtWarning, [mbOK], 0);
   End;
End;

//Imprime Relatório de Estoque de produtos tipo classificação Produto
Procedure TFRelestoque.ImpRClassProd;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.SQL.Add(' select subproduto.cod_interno AS CI_SUBPRODUTO, SUBPRODUTO.CodComposto, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.codprodfabr AS REFERENCIA, subproduto.marca AS MARCA, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, subproduto.localestante AS LOCAL, ');
   DMESTOQUE.TRel.SQL.Add(' estoque.estfisico, estoque.estreserv, estoque.estped, estoque.estsaldo, estoque.vendvarv, estoque.vendvarp, estoque.valunit, estoque.valrep, estoque.lucratividade, estoque.cod_loja, ');
   DMESTOQUE.TRel.SQL.Add(' produto.cod_interno AS CI_PRODUTO, produto.descricao AS PRODUTO, grupoprod.cod_interno AS CI_GRUPO, grupoprod.descricao AS GRUPO, subgrupoprod.cod_interno AS CI_SUBGRUPO, subgrupoprod.descricao AS SUBGRUPO ');
   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   If CBEstPos.Checked=True
   Then Begin
       DMESTOQUE.TRel.SQL.Add('  AND (estoque.estfisico>0) ');
   End;
   If CBEstZerado.Checked=True Then
   	DMESTOQUE.TRel.SQL.Add(' AND (estoque.estfisico<=0) ');
   FiltroGrupo;
   FiltroSubGrupo;
   FiltroMarca;
   FiltroCampAux;
   FiltroProduto;
   FiltroSubProduto;
   DMESTOQUE.TRel.SQL.Add(' order by produto.descricao, subproduto.descricao, subproduto.MARCA ');
   If AbreTabela=True
   Then Begin
	   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfEstoque_ClassProd.frf');
      FSRel.ShowReport;
   End;
End;

//Abre Tabela
Function TFRelestoque.AbreTabela: Boolean;
Begin
   DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.Open;
   If DMESTOQUE.TRel.IsEmpty
   Then Begin
		Mensagem('INFORMAÇÃO', ' O Relatório retornou sem informações!', '', 1, 1, False, 'I');
       Result:=False;
   End
   Else Begin
       Result:=True;
   End;
End;

//Limpa Sql da Tabela
Procedure TFRelestoque.LimpaSQL;
Begin
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
End;

//Filtro por Data
Procedure TFRelestoque.FiltroData;
Begin
	If (EdData1.Text<>'') AND (EdData2.Text<>'')
  	Then Begin
   	//ITENS PEDIDO COMPRA
   	If (FMenu.TIPOREL='FRFPRODVENDDEV') or (FMenu.TIPOREL='FRFPRODMANUTENCAO')
       Then Begin
   		DMESTOQUE.TRel.SQL.Add(' AND ((pedcompra.dtpedcomp>=:DATA1) And (pedcompra.dtpedcomp<=:DATA2))');
   		DMESTOQUE.TRel.SQL.Text;
  			DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
  			DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
       End;

   	//ITENS PEDIDO VENDA
   	If (FMenu.TIPOREL='FRFPRODVENDA_CLASS_PROD') or (FMenu.TIPOREL='FRFPRODVENDP') or (FMenu.TIPOREL='FRFPRODVENDA_TotalProd')
       Then Begin
   		DMESTOQUE.TRel.SQL.Add(' AND ((pedvenda.dtpedven>=:DATA1) And (pedvenda.dtpedven<=:DATA2))');
  			DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
  			DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
       End;
   	//ITENS PEDIDO VENDA
   	If (FMenu.TIPOREL='FRFPRODVENDO')
       Then Begin
   		DMESTOQUE.TRel.SQL.Add(' AND ((ordem.dtfech>=:DATA1) And (ordem.dtfech<=:DATA2))');
  			DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
  			DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
       End;
       //ITENS PEDIDO COMPRA
	    If FMenu.TIPOREL='FRFPRODCOMPRA_CLASS_PROD'
       Then Begin
   		DMESTOQUE.TRel.SQL.Add(' AND ((pedcompra.dtpedcomp>=:DATA1) And (pedcompra.dtpedcomp<=:DATA2))');
  			DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
  			DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
       End;
		If (FMenu.TIPOREL='LANCENT') or (FMenu.TIPOREL='LANCENTLOTE')
       Then Begin
   		DMESTOQUE.TRel.SQL.Add(' AND ((lancent.dt_lancamento>=:DATA1) And (lancent.dt_lancamento<=:DATA2))');
  			DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
  			DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
       End;
		If (FMenu.TIPOREL='LANCSAI') or (FMenu.TIPOREL='LANCSAILOTE')
       Then Begin
   		DMESTOQUE.TRel.SQL.Add(' AND ((lancsai.dt_lancamento>=:DATA1) And (lancsai.dt_lancamento<=:DATA2))');
  			DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
  			DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
       End;
  	End;
End;

//Filtro por SubProduto
Procedure TFRelestoque.FiltroSubProduto;
Begin
	If (FrmSubProduto1.EdDescricao.Text<>'') And (FrmSubProduto2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND (upper(SubProduto.descricao) between upper(:SUBPROD1) AND upper(:SUBPROD2)) ');
       DMESTOQUE.TRel.ParamByName('SUBPROD1').AsString:=FrmSubProduto1.EdDescricao.Text;
       DMESTOQUE.TRel.ParamByName('SUBPROD2').AsString:=FrmSubProduto2.EdDescricao.Text;
   End;
End;

Procedure TFRelEstoque.FiltroFabricante;
var
    i,a:Integer;
    xok:boolean;
begin

    xok := false;

    for i:=0 to clbFabricante.Count-1
    do begin
        if clbFabricante.Items[i].Checked
        then begin
            xok := true;
            break;
        end;
    end;

    if xok
    then begin
        a := 0;
        DMESTOQUE.TRel.SQL.Add(' and (');
        for i:=0 to clbFabricante.Count-1
        do begin
            if clbFabricante.Items[i].Checked
            then begin
                a := a+1;
                if a = 1 then
                    DMESTOQUE.TRel.SQL.Add('(upper(SubProduto.fabricante) = upper('+#39+Trim(clbFabricante.Items[i].Text)+#39+'))')
                else
                    DMESTOQUE.TRel.SQL.Add(' OR (upper(SubProduto.fabricante) = upper('+#39+Trim(clbFabricante.Items[i].Text)+#39+'))');

            end;
        end;
        DMESTOQUE.TRel.SQL.Add(')');
    end;


end;

//Filtro por produto
Procedure TFRelestoque.FiltroProduto;
Begin
	If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND (upper(Produto.descricao) between upper(:PRODUTO1) AND upper(:PRODUTO2)) ');
 	   	DMESTOQUE.TRel.ParamByName('PRODUTO1').AsString:=FrmProduto1.EdDescricao.Text;
	   	DMESTOQUE.TRel.ParamByName('PRODUTO2').AsString:=FrmProduto2.EdDescricao.Text;
   End;
End;
//filtro por marca
Procedure TFRelestoque.FiltroMarca;
Begin
	If (CBMARCAINI.Text<>'') And (CBMARCAFIM.Text<>'')
	Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND ((subproduto.marca between :MARCA1 AND :MARCA2)) ');
       DMESTOQUE.TRel.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
   	DMESTOQUE.TRel.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
       DMESTOQUE.TRel.SQL.Text;
   End;
End;
//filtro por campo auxiliar
Procedure TFRelestoque.FiltroCampAux;
Begin
	If (CBCampoAux.Text<>'') And (CBCampoAux.Text<>'')
	Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND ((subproduto.COR=:COR1)) ');
       DMESTOQUE.TRel.ParamByName('COR1').AsString:=CBCampoAux.Text;
       DMESTOQUE.TRel.SQL.Text;
   End;
End;
//filtro por classificação
Procedure TFRelestoque.FiltroClassificacao;
Begin
	If (cbSegmento.Text<>'')
	Then Begin//haverá seleção por grupo
   	DMESTOQUE.TRel.SQL.Add(' AND ((subproduto.classificacao=:COR1)) ');
       DMESTOQUE.TRel.ParamByName('COR1').AsString:=cbSegmento.Text;
       DMESTOQUE.TRel.SQL.Text;
   End;
End;


//Filtro por Grupo
Procedure TFRelestoque.FiltroGrupo;
Begin
	If (FRMGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
       DMESTOQUE.TRel.SQL.Add(' AND (upper(grupoprod.descricao) between upper(:GRUPO1) AND upper(:GRUPO2)) ');
       DMESTOQUE.TRel.ParamByName('GRUPO1').AsString:=FrmGrupo1.EdDescricao.Text;
       DMESTOQUE.TRel.ParamByName('GRUPO2').AsString:=FrmGrupo2.EdDescricao.Text;
   End;
End;

//Filtro por Subgrupo
Procedure TFRelestoque.FiltroSubGrupo;
Begin
	If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'')
   Then Begin//haverá seleção por grupo
       DMESTOQUE.TRel.SQL.Add(' AND (upper(subgrupoprod.descricao) between upper(:SUBGRUPO1) AND upper(:SUBGRUPO2)) ');
       DMESTOQUE.TRel.ParamByName('SUBGRUPO1').AsString:=FrmSubGrupo1.EdDescricao.Text;
       DMESTOQUE.TRel.ParamByName('SUBGRUPO2').AsString:=FrmSubGrupo2.EdDescricao.Text;
   End;
End;

//Procedure utilizada para Imprimir o Rodapé de página para procedure impgerahist
Procedure TFRelestoque.ImpRodPeGeraHist;
Begin
	If Printer.PageHeight>=1683 Then
   	Linha:=1500
   Else
   	Linha:=1400;

   Printer.Canvas.Font.Size:=8;
	Printer.Canvas.TextOut(10, Linha, '--  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  ---  - --  - --  - --  - --  - --  - --  - --  - --  - --  - --  -');
   Linha:=Linha+30;
   Printer.Canvas.TextOut(610, Linha, FormatFloat('#####0', XTCOMPRA));
   Printer.Canvas.TextOut(650, Linha, FormatFloat('#####0', XTENTCOR));
   Printer.Canvas.TextOut(690, Linha, FormatFloat('#####0', XTVENDA));
   Printer.Canvas.TextOut(730, Linha, FormatFloat('#####0', XTSAICOR));
   Linha:=Linha+20;
   Printer.Canvas.Font.Size:=6;
	Printer.Canvas.TextOut(10, Linha, 'U. COM.- Última Compra    U. VEN.-Última Venda    COM.- Qtd. Comprada    + C- Qtd. em Entradas de Correção    VEN- Qtde Vendida    - C.- Qtd. em Saídas de correção');
   Linha:=Linha+15;
	Printer.Canvas.TextOut(10, Linha, 'V.V. - Valor de Venda à vista     V.C. - Valor de Compra');

end;

//Procedure utilizada para Imprimir o Cabeçlho de página para procedure impgerahist
Procedure TFRelestoque.ImpCabGeraHist(NUMPAG:STRING);
Begin
   Printer.Canvas.Font.Size:=14;
	Printer.Canvas.TextOut(250, 5, 'ESTOQUE - ENTRADAS X SAÍDAS');
   Printer.Canvas.Font.Size:=8;
	Printer.Canvas.TextOut(860, 20, 'Pag.: '+NUMPAG);
   Linha:=65;
	Printer.Canvas.TextOut(10, Linha, '= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =');
   Linha:=Linha+20;
   Printer.Canvas.Font.Size:=8;
   Linha:=Linha+10;
	Printer.Canvas.TextOut(10, Linha, '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -');
   Linha:=Linha-10;
	Printer.Canvas.TextOut(10, Linha, 'CÓD.');
	Printer.Canvas.TextOut(80, Linha, 'PRODUTO.');
	Printer.Canvas.TextOut(350, Linha, 'MARCA');
	Printer.Canvas.TextOut(430, Linha, 'U.COM.');
	Printer.Canvas.TextOut(530, Linha, 'U.VEN.');
	Printer.Canvas.TextOut(610, Linha, 'COM');
	Printer.Canvas.TextOut(650, Linha, '+ C');
	Printer.Canvas.TextOut(690, Linha, 'VEN');
	Printer.Canvas.TextOut(730, Linha, '- C');
	Printer.Canvas.TextOut(770, Linha, 'EST');
	Printer.Canvas.TextOut(810, Linha, 'V.V.');
	Printer.Canvas.TextOut(880, Linha, 'V.C.');
End;

//Procedure utilizada para Imprimir o Título página para procedure impgerahist
Procedure TFRelestoque.ImpTitGeraHist;
Begin
   Printer.Canvas.Font.Size:=14;
	Printer.Canvas.TextOut(250, 5, 'ESTOQUE - ENTRADAS X SAÍDAS');
   Printer.Canvas.Font.Size:=8;
	Printer.Canvas.TextOut(10, 40, 'RESTRIÇÕES:');
	Printer.Canvas.TextOut(780, 20, 'EMISSÃO:'+DateToStr(Date()));
	Printer.Canvas.TextOut(860, 40, 'Pag.: 01');
   Linha:=65;

   //Verifica restrição para Grupo
   If (FrmGrupo1.EdDescricao.Text<>'') AND (FrmGrupo2.EdDescricao.Text<>'')
   Then Begin
		Printer.Canvas.TextOut(30, Linha, 'GRUPO: '+FrmGrupo1.EdDescricao.Text+' - '+FrmGrupo2.EdDescricao.Text);
   End;
   //Verifica restrição para MARCA
   If (CBMARCAINI.Text<>'') AND (CBMARCAFIM.Text<>'')
   Then Begin
		Printer.Canvas.TextOut(600, Linha, 'MARCA: '+CBMARCAINI.Text+' - '+CBMARCAFIM.Text);
   End;
   If ((FrmGrupo1.EdDescricao.Text<>'') AND (FrmGrupo2.EdDescricao.Text<>'')) OR ((CBMARCAINI.Text<>'') AND (CBMARCAFIM.Text<>'')) Then
       Linha:=Linha+20;

   //Verifica restrição para SubGrupo
   If (FrmSubGrupo1.EdDescricao.Text<>'') AND (FrmSubGrupo2.EdDescricao.Text<>'')
   Then Begin
		Printer.Canvas.TextOut(30, Linha, 'SUBGRUPO: '+FrmSubGrupo1.EdDescricao.Text+' - '+FrmSubGrupo2.EdDescricao.Text);
   End;
   //Verifica restrição para datas
   If (EDData1.Text<>'') AND (EDData2.Text<>'')
   Then Begin
		Printer.Canvas.TextOut(600, Linha, 'DATA: '+EDData1.Text+' - '+EdData2.Text);
   End;
   If ((FrmSubGrupo1.EdDescricao.Text<>'') AND (FrmSubGrupo2.EdDescricao.Text<>'')) OR ((EDData1.Text<>'') AND (EDData2.Text<>'')) Then
       Linha:=Linha+20;

   //Verifica restrição para PRODUTO
   If (FrmProduto1.EdDescricao.Text<>'') AND (FrmProduto2.EdDescricao.Text<>'')
   Then Begin
		Printer.Canvas.TextOut(30, Linha, 'PRODUTO: '+FrmProduto1.EdDescricao.Text+' - '+FrmProduto2.EdDescricao.Text);
       Linha:=Linha+20;
   End;
   //Verifica restrição para SUBPRODUTO
   If (FrmSubProduto1.EdDescricao.Text<>'') AND (FrmSubProduto2.EdDescricao.Text<>'')
   Then Begin
		Printer.Canvas.TextOut(30, Linha, 'SUBPRODUTO: '+FrmSUBProduto1.EdDescricao.Text+' - '+FrmSUBProduto2.EdDescricao.Text);
       Linha:=Linha+20;
   End;

	Printer.Canvas.TextOut(10, Linha, '= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =');

   //IMPRIMPE CABECALHO DO DETALHE
   Linha:=Linha+20;
   Printer.Canvas.Font.Size:=8;
   Linha:=Linha+10;
	Printer.Canvas.TextOut(10, Linha, '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -');
   Linha:=Linha-10;
	Printer.Canvas.TextOut(10, Linha, 'CÓD.');
	Printer.Canvas.TextOut(80, Linha, 'PRODUTO.');
	Printer.Canvas.TextOut(350, Linha, 'MARCA');
	Printer.Canvas.TextOut(430, Linha, 'U.COM.');
	Printer.Canvas.TextOut(530, Linha, 'U.VEN.');
	Printer.Canvas.TextOut(610, Linha, 'COM');
	Printer.Canvas.TextOut(650, Linha, '+ C');
	Printer.Canvas.TextOut(690, Linha, 'VEN');
	Printer.Canvas.TextOut(730, Linha, '- C');
	Printer.Canvas.TextOut(770, Linha, 'EST');
	Printer.Canvas.TextOut(810, Linha, 'V.V.');
	Printer.Canvas.TextOut(880, Linha, 'V.C.');
End;

//Procedure utilizada para Imprimir o resultado da procedure gerahis
Procedure TFRelEstoque.ImpGeraHist;
Var
	T, Coluna: Integer;
Begin
	//seta quantidade de colunas e linhas para impressão no papel e impressora corrente
//   SetPrinterPage(2100, 2952);
	Coluna:=1;
	Linha:=0;
	Try
		Printer.BeginDoc;
           PComunica.Visible:=True;
           PComunica.BringToFront;
           PComunica.Caption:='AGUARDE IMPRIMINDO...';
       	Printer.canvas.pen.width:=5;
			Printer.Canvas.Font.name:='Arial';
			Printer.Canvas.Font.Size:=12;
			T:=Printer.Canvas.TextWidth('A');
           //Imprime titulo
           ImpTitGeraHist;
           //INICIALIZA VARIÁVEIS
           XTENTCOR:=0;
           XTSAICOR:=0;
           XTCOMPRA:=0;
           XTVENDA:=0;
           ////////////////////////////////////////////////////
       	//INICIO: Processo de Impressão de E N T R A D A S//
           ////////////////////////////////////////////////////
           DMESTOQUE.TRel.First;
           while not DMESTOQUE.TRel.Eof do
           Begin
           	//INICIO: VERIFICA TÉRMINO DE PÁGINA
               If Printer.PageHeight>=1683
               Then Begin
               	//CONTROLA TÉRMINO DE PÁGINA PARA A4
                   If Linha>=1350
                   Then Begin
						ImpRodPeGeraHist;
                       Printer.NewPage;
                   	ImpCabGeraHist(IntToStr(printer.PageNumber));
                   End;
               End
               Else Begin
                  	//CONTROLA TÉRMINO DE PÁGINAS INFERIORES A4
                   If Linha>=1250
                   Then Begin
						ImpRodPeGeraHist;
                       Printer.NewPage;
                   	ImpCabGeraHist(IntToStr(printer.PageNumber));
                   End;
               End;
           	//INICIO: Para cada produto selecionado na sql principal (Trel) deve se encontrar os lançamentos de compra
				Linha:=Linha+30;
               //IMPRIME REF. DO PRODUTO
					Printer.Canvas.TextOut(10, Linha, DMESTOQUE.TRel.FieldByNAme('PRIMCOD').AsString);
					Printer.Canvas.TextOut(80, Linha, DMESTOQUE.TRel.FieldByNAme('SUBPRODUTO').AsString);
					Printer.Canvas.TextOut(350, Linha, DMESTOQUE.TRel.FieldByNAme('MARCA').AsString);
					Printer.Canvas.TextOut(430, Linha, DMESTOQUE.TRel.FieldByNAme('ULTCOMPRA').AsString);
					Printer.Canvas.TextOut(530, Linha, DMESTOQUE.TRel.FieldByNAme('ULTVENDA').AsString);
					Printer.Canvas.TextOut(770, Linha, DMESTOQUE.TRel.FieldByNAme('ESTFISICO').AsString);
					Printer.Canvas.TextOut(810, Linha, FormatFloat('#####,##0.00', DMESTOQUE.TRel.FieldByNAme('VENDVARV').AsCurrency));
					Printer.Canvas.TextOut(880, Linha, FormatFloat('#####,##0.00', DMESTOQUE.TRel.FieldByNAme('VALUNIT').AsCurrency));
               /////////
               //COMPRAS
               /////////
               	DMESTOQUE.Alx.Close;
               	DMESTOQUE.Alx.SQL.Clear;
               	DMESTOQUE.Alx.SQL.Add('select sum(itenspedc.qtdeprod) AS TOT from itenspedc ');
               	DMESTOQUE.Alx.SQL.Add(' where itenspedc.cod_estoque=:CODESTOQUE ');
               	DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.TRel.FieldByNAme('COD_ESTOQUE').AsString;
					DMESTOQUE.Alx.Open;
					Printer.Canvas.TextOut(610, Linha, FormatFloat('#####0', DMESTOQUE.Alx.FieldByNAme('TOT').AsCurrency));
                   XTCOMPRA:=XTCOMPRA+DMESTOQUE.Alx.FieldByNAme('TOT').AsInteger;
               ////////////////////
               //ENTRADAS CORREÇÃO
               ///////////////////
               	DMESTOQUE.Alx.Close;
               	DMESTOQUE.Alx.SQL.Clear;
               	DMESTOQUE.Alx.SQL.Add('select sum(lancent.quantidade) AS TOT from lancent ');
               	DMESTOQUE.Alx.SQL.Add(' where lancent.cod_estoque=:CODESTOQUE ');
               	DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.TRel.FieldByNAme('COD_ESTOQUE').AsString;
					DMESTOQUE.Alx.Open;
					Printer.Canvas.TextOut(650, Linha, FormatFloat('#####0', DMESTOQUE.Alx.FieldByNAme('TOT').AsCurrency));
                   XTENTCOR:=XTENTCOR+DMESTOQUE.Alx.FieldByNAme('TOT').AsInteger;
               /////////
               //VENDAS
               /////////
               	DMESTOQUE.Alx.Close;
               	DMESTOQUE.Alx.SQL.Clear;
               	DMESTOQUE.Alx.SQL.Add('select sum(itenspedven.qtdeprod) AS TOT from itenspedven ');
               	DMESTOQUE.Alx.SQL.Add(' where itenspedven.cod_estoque=:CODESTOQUE ');
               	DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.TRel.FieldByNAme('COD_ESTOQUE').AsString;
					DMESTOQUE.Alx.Open;
					Printer.Canvas.TextOut(690, Linha, FormatFloat('#####0', DMESTOQUE.Alx.FieldByNAme('TOT').AsCurrency));
                   XTVENDA:=XTVENDA+DMESTOQUE.Alx.FieldByNAme('TOT').AsInteger;
               ////////////////////
               //SAÍDAS CORREÇÃO
               ///////////////////
               	DMESTOQUE.Alx.Close;
               	DMESTOQUE.Alx.SQL.Clear;
               	DMESTOQUE.Alx.SQL.Add('select sum(lancsai.quantidade) AS TOT from lancsai ');
               	DMESTOQUE.Alx.SQL.Add(' where lancsai.cod_estoque=:CODESTOQUE ');
               	DMESTOQUE.Alx.ParamByName('CODESTOQUE').AsString:=DMESTOQUE.TRel.FieldByNAme('COD_ESTOQUE').AsString;
					DMESTOQUE.Alx.Open;
					Printer.Canvas.TextOut(730, Linha, FormatFloat('#####0', DMESTOQUE.Alx.FieldByNAme('TOT').AsCurrency));
                   XTSAICOR:=XTSAICOR+DMESTOQUE.Alx.FieldByNAme('TOT').AsInteger;
           	//FIM: Para cada produto selecionado na sql principal (Trel) deve se encontrar os lançamentos de compra
               DMESTOQUE.TRel.Next;
           End;
           ImpRodPeGeraHist;
	       	PComunica.Visible:=False;
       Printer.EndDoc;
   Except
   End;
End;

//Procedure utilizada para lançar sql para filtrara e calcular os historicos do produto corrente
Procedure TFRelEstoque.GeraHist;
Var
   XJunc: String;
Begin
	QtdEntradas:=0;
   QtdSaidas:=0;
   ResultEst:=0;
   TotComi:=0;
   TotLuc:=0;
   TOTCOMP:=0;
   TOTVEND:=0;
	//TOTALIZA SOMATÓRIAS
   /////////////////////
	//FILTRA E TOTALIZA LANÇAMENTOS DE ENTRADA PARA CORREÇÃO
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('SELECT SUM(VWlancent.quantidade) AS TOTENT FROM VWlancent ');
   DMESTOQUE.Alx.SQL.Add('left join estoque ON vwlancent.cod_estoque=estoque.cod_estoque ');
   DMESTOQUE.Alx.SQL.Add('left join subproduto ON subproduto.cod_subproduto=estoque.cod_subprod ');
   XJunc:= ' Where ';
   If (CBMARCAINI.Text<>'') AND (CBMARCAFIM.Text<>'')
   Then Begin
   	DMESTOQUE.Alx.SQL.Add(XJunc+' ((SUBPRODUTO.MARCA>=:MARCA1) And (SUBPRODUTO.MARCA<=:MARCA2))');
       DMESTOQUE.Alx.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
       DMESTOQUE.Alx.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
       XJunc:=' And ';
   End;
   If (EdData1.Text<>'') AND (EdData2.Text<>'')
   Then Begin
   	DMESTOQUE.Alx.SQL.Add(XJunc+' ((vwlancent.dt_lancamento>=:DATA1) And (vwlancent.dt_lancamento<=:DATA2))');
       DMESTOQUE.Alx.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       DMESTOQUE.Alx.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   End;
   DMESTOQUE.Alx.Open;
   QtdEntradas:=QtdEntradas+DMESTOQUE.ALX.FieldByName('TOTENT').AsCurrency;

	//FILTRA  E TOTALIZA LANÇAMENTOS DE SAIDA PARA CORREÇÃO
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('select SUM(VWlancsai.quantidade) AS TOTSAI  from vwlancsai ');
   DMESTOQUE.Alx1.SQL.Add('left join estoque ON vwlancsai.cod_estoque=estoque.cod_estoque ');
   DMESTOQUE.Alx1.SQL.Add('left join subproduto ON subproduto.cod_subproduto=estoque.cod_subprod ');
   XJunc:= ' Where ';
   If (CBMARCAINI.Text<>'') AND (CBMARCAFIM.Text<>'')
   Then Begin
   	DMESTOQUE.Alx1.SQL.Add(XJunc+' ((SUBPRODUTO.MARCA>=:MARCA1) And (SUBPRODUTO.MARCA<=:MARCA2))');
       DMESTOQUE.Alx1.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
       DMESTOQUE.Alx1.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
       XJunc:=' And ';
   End;

   If (EdData1.Text<>'') AND (EdData2.Text<>'')
   Then Begin
   	DMESTOQUE.Alx1.SQL.Add(XJunc+ ' ((vwlancsai.dt_lancamento>=:DATA1) And (vwlancsai.dt_lancamento<=:DATA2))');
       DMESTOQUE.Alx1.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       DMESTOQUE.Alx1.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   End;
   DMESTOQUE.Alx1.Open;
   QtdSaidas:=QtdSaidas+DMESTOQUE.ALX1.FieldByName('TOTSAI').AsCurrency;

	//FILTRA  E TOTALIZA LANÇAMENTOS DE COMPRAS
   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add(' Select SUM(itenspedc.valortotal) AS TOTCOMP, SUM(itenspedc.qtdeprod) AS TOTENT ');
   DMESTOQUE.Alx3.SQL.Add(' From itenspedc ');
   DMESTOQUE.Alx3.SQL.Add(' left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.Alx.SQL.Add('left join subproduto ON subproduto.cod_subproduto=estoque.cod_subprod ');
   XJunc:= ' Where ';
   If (CBMARCAINI.Text<>'') AND (CBMARCAFIM.Text<>'')
   Then Begin
   	DMESTOQUE.Alx.SQL.Add(XJunc+' ((SUBPRODUTO.MARCA>=:MARCA1) And (SUBPRODUTO.MARCA<=:MARCA2))');
       DMESTOQUE.Alx.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
       DMESTOQUE.Alx.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
       XJunc:=' And ';
   End;
   If (EdData1.Text<>'') AND (EdData2.Text<>'')
   Then Begin
   	DMESTOQUE.Alx3.SQL.Add(xjunc+' ((itenspedc.data>=:DATA1) And (itenspedc.Data<=:DATA2))');
       DMESTOQUE.Alx3.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       DMESTOQUE.Alx3.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   End;
   DMESTOQUE.Alx3.Open;
   QtdEntradas:=QtdEntradas+DMESTOQUE.Alx3.FieldByName('TOTENT').AsCurrency;
   TOTCOMP:=TOTCOMP+DMESTOQUE.Alx3.FieldByName('TOTCOMP').AsCurrency;

	//FILTRA  E TOTALIZA LANÇAMENTOS DE VENDAS
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add(' Select SUM(itenspedven.valortotal) AS TOTVEND, SUM(itenspedven.qtdeprod) AS TOTSAI, SUM(itenspedven.comissao) AS TOTCOMI, SUM(itenspedven.lucmoe) AS TOTLUCMOE');
   DMESTOQUE.Alx2.SQL.Add(' From itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
   DMESTOQUE.Alx2.SQL.Add(' left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.Alx2.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   XJunc:= ' Where ';
   If (CBMARCAINI.Text<>'') AND (CBMARCAFIM.Text<>'')
   Then Begin
   	DMESTOQUE.Alx2.SQL.Add(XJunc+' ((SUBPRODUTO.MARCA>=:MARCA1) And (SUBPRODUTO.MARCA<=:MARCA2))');
       DMESTOQUE.Alx2.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
       DMESTOQUE.Alx2.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
       XJunc:=' And ';
   End;

   If (EdData1.Text<>'') AND (EdData2.Text<>'')
   Then Begin
   	DMESTOQUE.Alx2.SQL.Add(xjunc+' ((ITENSPEDVEN.data>=:DATA1) And (ITENSPEDVEN.Data<=:DATA2))');
       DMESTOQUE.Alx2.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       DMESTOQUE.Alx2.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   End;
   DMESTOQUE.Alx2.Open;
   QtdSaidas:=QtdSaidas+DMESTOQUE.Alx2.FieldByNAme('TOTSAI').AsCurrency;
   TotComi:=TotComi+DMESTOQUE.Alx2.FieldByNAme('TOTCOMI').AsCurrency;
   TotLuc:=TotLuc+DMESTOQUE.Alx2.FieldByNAme('TOTLUCMOE').AsCurrency;
   TOTVEND:=TOTVEND+DMESTOQUE.Alx2.FieldByNAme('TOTVEND').AsCurrency;

	//FILTRA  E TOTALIZA LANÇAMENTOS DE ordens de serviço
   DMESTOQUE.Alx4.Close;
   DMESTOQUE.Alx4.SQL.Clear;
   DMESTOQUE.Alx4.SQL.Add(' Select SUM(itprodord.total) AS TOTVEND, SUM(itprodord.qtd) AS TOTSAI ');
   DMESTOQUE.Alx4.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.Alx4.SQL.Add('left join subproduto ON subproduto.cod_subproduto=estoque.cod_subprod ');
   XJunc:= ' Where ';
   If (CBMARCAINI.Text<>'') AND (CBMARCAFIM.Text<>'')
   Then Begin
   	DMESTOQUE.Alx4.SQL.Add(XJunc+' ((SUBPRODUTO.MARCA>=:MARCA1) And (SUBPRODUTO.MARCA<=:MARCA2))');
       DMESTOQUE.Alx4.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
       DMESTOQUE.Alx4.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
       XJunc:=' And ';
   End;

   If (EdData1.Text<>'') AND (EdData2.Text<>'')
   Then Begin
   	DMESTOQUE.Alx4.SQL.Add(xjunc+' ((itprodord.data>=:DATA1) And (itprodord.data<=:DATA2))');
       DMESTOQUE.Alx4.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       DMESTOQUE.Alx4.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   End;
   DMESTOQUE.Alx4.Open;
   QtdSaidas:=QtdSaidas+DMESTOQUE.Alx4.FieldByNAme('TOTSAI').AsCurrency;
   TOTVEND:=TOTVEND+DMESTOQUE.Alx4.FieldByNAme('TOTVEND').AsCurrency;

   //FILTRA REGISTROS
   ///////////////////
	//FILTRA LANÇAMENTOS DE ENTRADA PARA CORREÇÃO
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('SELECT * FROM VWlancent ');
   DMESTOQUE.Alx.SQL.Add('left join estoque ON vwlancent.cod_estoque=estoque.cod_estoque ');
   DMESTOQUE.Alx.SQL.Add('left join subproduto ON subproduto.cod_subproduto=estoque.cod_subprod ');
   XJunc:= ' Where ';
   If (CBMARCAINI.Text<>'') AND (CBMARCAFIM.Text<>'')
   Then Begin
   	DMESTOQUE.Alx.SQL.Add(XJunc+' ((SUBPRODUTO.MARCA>=:MARCA1) And (SUBPRODUTO.MARCA<=:MARCA2))');
       DMESTOQUE.Alx.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
       DMESTOQUE.Alx.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
       XJunc:=' And ';
   End;
   If (EdData1.Text<>'') AND (EdData2.Text<>'')
   Then Begin
   	DMESTOQUE.Alx.SQL.Add(xjunc+' ((vwlancent.dt_lancamento>=:DATA1) And (vwlancent.dt_lancamento<=:DATA2))');
       DMESTOQUE.Alx.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       DMESTOQUE.Alx.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   End;
   DMESTOQUE.Alx.SQL.Add(' ORDER BY PRODUTO');
   DMESTOQUE.Alx.Open;

	//FILTRA LANÇAMENTOS DE SAIDA PARA CORREÇÃO
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('select * from vwlancsai ');
   DMESTOQUE.Alx1.SQL.Add('left join estoque ON vwlancsai.cod_estoque=estoque.cod_estoque ');
   DMESTOQUE.Alx1.SQL.Add('left join subproduto ON subproduto.cod_subproduto=estoque.cod_subprod ');
   XJunc:= ' Where ';
   If (CBMARCAINI.Text<>'') AND (CBMARCAFIM.Text<>'')
   Then Begin
   	DMESTOQUE.Alx1.SQL.Add(XJunc+' ((SUBPRODUTO.MARCA>=:MARCA1) And (SUBPRODUTO.MARCA<=:MARCA2))');
       DMESTOQUE.Alx1.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
       DMESTOQUE.Alx1.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
       XJunc:=' And ';
   End;

   If (EdData1.Text<>'') AND (EdData2.Text<>'')
   Then Begin
   	DMESTOQUE.Alx1.SQL.Add(XJUNC+' ((vwlancsai.dt_lancamento>=:DATA1) And (vwlancsai.dt_lancamento<=:DATA2))');
       DMESTOQUE.Alx1.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       DMESTOQUE.Alx1.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   End;
   DMESTOQUE.Alx1.SQL.Add(' ORDER BY PRODUTO');
   DMESTOQUE.Alx1.Open;

	//FILTRA  E TOTALIZA LANÇAMENTOS DE ordens de serviço
   DMESTOQUE.Alx4.Close;
   DMESTOQUE.Alx4.SQL.Clear;
   DMESTOQUE.Alx4.SQL.Add(' Select ordem.numero, itprodord.cod_itprodord, itprodord.cod_ordem, itprodord.cod_estoque,  itprodord.numreq, itprodord.qtd, itprodord.qtdRET, itprodord.total, ');
   DMESTOQUE.Alx4.SQL.Add(' itprodord.desconto, itprodord.data, itprodord.cod_funcionario, pessoa.nome, itprodord.vlrunit, subproduto.descricao, subproduto.marca, SubProduto.CODPRODFABR ');
   DMESTOQUE.Alx4.SQL.Add(' From itprodord left Join estoque on itprodord.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.Alx4.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.Alx4.SQL.Add(' Left Join funcionario on funcionario.cod_func = itprodord.cod_funcionario ');
   DMESTOQUE.Alx4.SQL.Add(' Left Join pessoa on funcionario.cod_pessoa = pessoa.COD_PESSOA ');
   DMESTOQUE.Alx4.SQL.Add(' left join ordem on itprodord.cod_ordem=ordem.cod_ordem ');
   XJunc:= ' Where ';
   If (CBMARCAINI.Text<>'') AND (CBMARCAFIM.Text<>'')
   Then Begin
   	DMESTOQUE.Alx4.SQL.Add(XJunc+' ((SUBPRODUTO.MARCA>=:MARCA1) And (SUBPRODUTO.MARCA<=:MARCA2))');
       DMESTOQUE.Alx4.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
       DMESTOQUE.Alx4.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
       XJunc:=' And ';
   End;

   If (EdData1.Text<>'') AND (EdData2.Text<>'')
   Then Begin
   	DMESTOQUE.Alx4.SQL.Add(XJUNC+' ((itprodord.data>=:DATA1) And (itprodord.data<=:DATA2))');
       DMESTOQUE.Alx4.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       DMESTOQUE.Alx4.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   End;
   DMESTOQUE.Alx4.SQL.Add(' ORDER BY SUBPRODUTO.MARCA');
   DMESTOQUE.Alx4.Open;

	//FILTRA LANÇAMENTOS DE COMPRAS
   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add(' Select pedcompra.numped, SUBPRODUTO.CONTRINT, itenspedc.data ,');
   DMESTOQUE.Alx3.SQL.Add(' itenspedc.qtdeprod, subproduto.descricao as similar, itenspedc.VALUNIT, ');
   DMESTOQUE.Alx3.SQL.Add(' itenspedc.valortotal AS TOTPROD, pessoa.nome, pessoa.cpfcnpj');
   DMESTOQUE.Alx3.SQL.Add(' From itenspedc left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp');
   DMESTOQUE.Alx3.SQL.Add(' left Join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.Alx3.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.Alx3.SQL.Add(' Left Join produto on produto.cod_produto = subproduto.cod_produto');
   DMESTOQUE.Alx3.SQL.Add(' left join fornecedor on fornecedor.cod_fornec = pedcompra.cod_fornec');
   DMESTOQUE.Alx3.SQL.Add(' left join pessoa on pessoa.cod_pessoa = fornecedor.cod_pessoa');
   XJunc:= ' Where ';
   If (CBMARCAINI.Text<>'') AND (CBMARCAFIM.Text<>'')
   Then Begin
   	DMESTOQUE.Alx3.SQL.Add(XJunc+' ((SUBPRODUTO.MARCA>=:MARCA1) And (SUBPRODUTO.MARCA<=:MARCA2))');
       DMESTOQUE.Alx3.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
       DMESTOQUE.Alx3.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
       XJunc:=' And ';
   End;

   If (EdData1.Text<>'') AND (EdData2.Text<>'')
   Then Begin
   	DMESTOQUE.Alx3.SQL.Add(XJUNC+' ((itenspedc.data>=:DATA1) And (itenspedc.Data<=:DATA2))');
       DMESTOQUE.Alx3.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       DMESTOQUE.Alx3.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   End;
   DMESTOQUE.Alx3.SQL.Add(' ORDER BY SUBPRODUTO.MARCA');
   DMESTOQUE.Alx3.Open;
	//FILTRA LANÇAMENTOS DE VENDAS
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add(' Select pedvenda.numped, SUBPRODUTO.CONTRINT, pedvenda.dtpedven ,');
   DMESTOQUE.Alx2.SQL.Add(' itenspedven.qtdeprod, subproduto.descricao as similar, Itenspedven.OPERACAO,');
   DMESTOQUE.Alx2.SQL.Add(' itenspedven.valortotal AS TOTPROD, pedvenda.nomecli, pedvenda.cpfcnpj');
   DMESTOQUE.Alx2.SQL.Add(' From itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
   DMESTOQUE.Alx2.SQL.Add(' left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.Alx2.SQL.Add(' Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod');
   DMESTOQUE.Alx2.SQL.Add(' Left Join produto on produto.cod_produto = subproduto.cod_produto');
   XJunc:= ' Where ';
   If (CBMARCAINI.Text<>'') AND (CBMARCAFIM.Text<>'')
   Then Begin
   	DMESTOQUE.Alx2.SQL.Add(XJunc+' ((SUBPRODUTO.MARCA>=:MARCA1) And (SUBPRODUTO.MARCA<=:MARCA2))');
       DMESTOQUE.Alx2.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
       DMESTOQUE.Alx2.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
       XJunc:=' And ';
   End;

   If (EdData1.Text<>'') AND (EdData2.Text<>'')
   Then Begin
   	DMESTOQUE.Alx2.SQL.Add(XJUNC+'  ((ITENSPEDVEN.data>=:DATA1) And (ITENSPEDVEN.Data<=:DATA2))');
       DMESTOQUE.Alx2.ParamByName('DATA1').AsDate:=StrToDAte(EdData1.Text);
       DMESTOQUE.Alx2.ParamByName('DATA2').AsDate:=StrToDAte(EdData2.Text);
   End;
   DMESTOQUE.Alx2.SQL.Add(' ORDER BY SUBPRODUTO.MARCA');
   DMESTOQUE.Alx2.Open;
End;

//procedure utilizado para preparar a sql de impressãoProcedure TFRelEstoque.PrepImp;
Procedure TFRelEstoque.PrepImp;
Var
	XJuncao: String;//Variavel utilizada para efetuar a junção entre as condsições da sql "AND"
Begin
	//PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
  	DMMACS.TLoja.FieldByName('TMP1').AsString:='';
   If (FrmGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'') Then
   	DMMACS.TLoja.FieldByName('TMP1').AsString:='Grupo: '+FrmGrupo1.EdDescricao.Text+'-'+FrmGrupo2.EdDescricao.Text;
	If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'') Then
   	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' '+'SubGrupo: '+FrmSubGrupo1.EdDescricao.Text+'-'+FrmSubGrupo2.EdDescricao.Text;
	If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'') Then
   	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' Produto: '+FrmProduto1.EdDescricao.Text+'-'+FrmProduto2.EdDescricao.Text;
	If (FrmSubProduto1.EdDescricao.Text<>'') And (FrmSubProduto2.EdDescricao.Text<>'') Then
   	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' SubProduto: '+FrmSubProduto1.EdDescricao.Text+'-'+FrmSubProduto2.EdDescricao.Text;
	If (CBMARCAINI.Text<>'') And (CBMARCAFIM.Text<>'') Then
   	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' Marca: '+CBMARCAINI.Text+'-'+CBMARCAFIM.Text;
	If (EDData1.Text<>'') And (EdData2.Text<>'') Then
   	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' Data: '+EDData1.Text+'-'+EdData2.Text;
   If CBEstPos.Visible=True
   Then Begin
   	If (CBEstPos.Checked=True) or (CBEstZerado.Checked=True)
   	Then Begin
   		If CBEstZerado.Checked=True Then
		   		DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' (Est. Zerado)'
           Else
		   		DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' (Est. Positivo)';
   	End
		Else Begin
          If (CBEstMin.Checked=False) And (CBEstMax.Checked=False) and (CBEstZerado.Checked=False) Then
		   		DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' (Todo Estoque)';
       End;
	End;
   If (CBEstMin.Checked=True)
   Then Begin
   	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' (Est. Mín.)'
   End;
   If (CBEstMax.Checked=True)
   Then Begin
   	DMMACS.TLoja.FieldByName('TMP1').AsString:=DMMACS.TLoja.FieldByName('TMP1').AsString+' (Est. Máx.)'
   End;

   If FMenu.TIPOREL='RELTRIBUTA'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Lista de Produtos por Tributação';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpRProdTributa;//Imprime relatório de produtos de acordo com tributação
   end;

   If FMenu.TIPOREL='FRFPRODVENDA_CLASS_PROD'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Analítico de Produtos Vendidos';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpRProdVend;//Imprime relatório de produtos vendiso
   end;

   //MAURO 03/06/2013 - Relatorio de produtos manutenção
   if FMenu.TIPOREL='FRFPRODMANUTENCAO'
   Then Begin
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpProdManutencao; //imprime produtos manutenção
   End;

   If FMenu.TIPOREL='ESTCALC'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Estoque Calculado';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpREstCalc;//Imprime relatório de produtos vendiso
   end;
   If FMenu.TIPOREL='ESTMAXMIN'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Estoque Máximo/Mínimo';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpREstMaxMin;//Imprime relatório de produtos Maximo/Minimo
   end;
   If FMenu.TIPOREL = 'FRFPRODVENDA_TotalProd'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Relatório de Carregamento';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpCarregamento; // imprimi relatorio sobre carregamento
   End;


   If FMenu.TIPOREL='FRFPRODVEND'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Compras e Vendas/Produtos Vendidos';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpRProdVendOP;//Imprime relatório de produtos vendidos em Ordem e pdv
   end;
   If FMenu.TIPOREL='FRFPRODCOMPRA_CLASS_PROD'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Entradas/Relatórios/Analítico de Produtos Comprados';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpRProdComp;//Imprime relatório de produtos comprados
   End;
   If FMenu.TIPOREL='FRFPRODCOMPRA_DEV_CLASS_PROD'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Entradas/Relatórios/Devoluções/Produtos';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpRProdCompDEV;//Imprime relatório de produtos Devolvidos
   End;
   If FMenu.TIPOREL='CLASSPROD'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estque/Relatórios/Lista Class. Produtos';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpRClassProd;//Imprime relatório de estoque class prod
   end;
	If FMenu.TIPOREL='INVEST'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Inventário de Estoque';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpRInventEst;// Imprime relatório de inventário de estoque
   End;

	If FMenu.TIPOREL='LISTEST'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Listagem de Estoque';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpRListaEst;// Imprime relatório de inventário de estoque
   End;

	If FMenu.TIPOREL='LANCENT'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Lançamentos de Entrada';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpRLancEnt;// Imprime relatório de Lancamentos de Entrada
   End;

	If FMenu.TIPOREL='LANCENTLOTE'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Lançamentos de Entrada';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpRLancEntLote;// Imprime relatório de Lancamentos de Entrada
   End;

	If FMenu.TIPOREL='LANCSAI'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Lançamentos de Saída';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpRLancSai;
   End;

	If FMenu.TIPOREL='LANCSAILOTE'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Lançamentos de Saída';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpRLancSaiLote;// Imprime relatório de Lancamentos de Saida
   End;
	If FMenu.TIPOREL='LISTPREC'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Lista de Preços';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpRListaPreco;//Imprime relatório de lista de preço dos produtos
   End;
	If FMenu.TIPOREL='LISTPRECCOMP'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Lista de Preços Completa';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpRListaPrecoComp ;//Imprime relatório de lista de preço dos produtos completa
   End;

	If FMenu.TIPOREL='LISTVEND'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Lista de Vendas';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpRListaPrecoVend;//Imprime relatório de lista de preço para vendas
   End;
	If (FMenu.TIPOREL='POSEST') or (FMenu.TIPOREL='LISTACONTAGEM') 
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Posição de Estoque';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpRPosEst;//Imprime relatório de Posição de Estoque
   End;
	If FMenu.TIPOREL='LSTESTPEDCLI'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Lista de Preços para Clientes';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpRLstEstPedCli;//Imprime relatório de Lista de Preços p/ clientes
   End;
	If FMenu.TIPOREL='LSTESTPEDCLIDESCCUPOM'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/ Lista com Descrição de Cupom';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpRLstEstPedCliDC;//Imprime relatório de Lista de Preços p/ clientes com descricao de cupom
   End;
	If FMenu.TIPOREL='LSTPRECO2COLUNAS'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/ Lista de Preços - 2 Colunas';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpRLstPrecos2colunas;//Imprime relatório de Lista de Preços p/ clientes com descricao de cupom em 2 colunas
   End;

	If (FMenu.TIPOREL='ENTXSAI') or (FMenu.TIPOREL='ENTXSAIPET')
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Entradas X Saídas/Com Produtos e Similares';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpREntSaida;//Imprime relatório de confronto entre entradas e saidas de produtos
   End;
	If FMenu.TIPOREL='ENTXSAIMENS'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Entradas X Saídas/Por mês e Produtos';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpResumoMensVC;//Imprime relatório de confronto entre entradas e saidas de produtos
   End;
	If  FMenu.TIPOREL='FRRESUMOVC'
   Then Begin
   	ImpResumoVC;
   End;
	If FMenu.TIPOREL='IMPRELLOTE'
   Then Begin
		DMMACS.TLoja.FieldByName('TMP2').AsString:='Estoque/Relatórios/Estoque/Lote e Vencimento';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   	ImpRelLotes;//Imprime relatório de lista de lotes vencidos
   End;
	If FMenu.TIPOREL='FRFPRODOS'
   Then Begin
   	ImpRProdVendOP;//Imprime relatório de PRODUTOS VENDIDOS 
   end;
   If FMenu.TIPOREL='FRFPRODORDEM'
   Then Begin
   	ImpRProdOrdemServico;//Paulo 15/12/2011: Imprime relatório de PRODUTOS VENDIDOS EM OS
   end;
   If FMenu.TIPOREL='EXPXML'
   Then Begin
   	ImpRProdVendOP;//Imprime relatório de PRODUTOS VENDIDOS EM OS
   end;
End;

procedure TFRelEstoque.FrmGrupo1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XGRUPO1:='0';
   FrmGrupo1.Repaint;   
   FrmGrupo1.EDCodigo.TEXT:='';
   FrmGrupo1.EdDescricao.TEXT:='';
end;

procedure TFRelEstoque.FrmGrupo2BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XGRUPO2:='0';
   FrmGrupo2.EDCodigo.TEXT:='';
   FrmGrupo2.EdDescricao.TEXT:='';
   FrmGrupo2.Repaint;   
end;

procedure TFRelEstoque.FrmGrupo1BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', '', '', '');

    If AbrirForm(TFCadGrupo, FCadGrupo, 1)='Selected'
    Then Begin
   	FrmGrupo1.Repaint;    
       XGRUPO1:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
       FrmGrupo1.EdDescricao.Text:=DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString;
       FrmGrupo1.EDCodigo.text:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
    End;
end;

procedure TFRelEstoque.FrmGrupo1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   FrmGrupo1.Repaint;
	If Key = #13
   Then Begin
   	If FrmGrupo1.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', 'COD_INTERNO', FrmGrupo1.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XGRUPO1:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
           	FrmGrupo1.EDCodigo.text:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
           	FrmGrupo1.EdDescricao.Text:=DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XGRUPO1:='0';
           	FrmGrupo1.EDCodigo.Text:='';
           	FrmGrupo1.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XGRUPO1:='0';
          FrmGrupo1.EDCodigo.Text:='';
          FrmGrupo1.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFRelEstoque.FrmGrupo2BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', '', '', '');

    If AbrirForm(TFCadGrupo, FCadGrupo, 1)='Selected'
    Then Begin
   	FrmGrupo2.Repaint;    
       XGRUPO2:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
       FrmGrupo2.EdDescricao.Text:=DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString;
       FrmGrupo2.EDCodigo.text:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
    End;
end;

procedure TFRelEstoque.FrmGrupo2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   FrmGrupo2.Repaint;
	If Key = #13
   Then Begin
   	If FrmGrupo2.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.TGrupo, 'GRUPOPROD', 'COD_INTERNO', FrmGrupo2.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XGRUPO2:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
           	FrmGrupo2.EDCodigo.text:=DMESTOQUE.TGrupo.FieldByName('COD_INTERNO').AsString;
           	FrmGrupo2.EdDescricao.Text:=DMESTOQUE.TGrupo.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XGRUPO2:='0';
           	FrmGrupo2.EDCodigo.Text:='';
           	FrmGrupo2.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XGRUPO2:='0';
          FrmGrupo2.EDCodigo.Text:='';
          FrmGrupo2.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFRelEstoque.FrmSubGrupo1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XSUBGRUPO1:='0';
   FrmSubGrupo1.EDCodigo.TEXT:='';
   FrmSubGrupo1.EdDescricao.TEXT:='';
   FrmSubGrupo1.Repaint;
end;

procedure TFRelEstoque.FrmSubGrupo1BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.TSubgru, 'SUBGRUPOPROD', '', '', '');

    If AbrirForm(TFCadSUBGrupo, FCADSUBGrupo, 1)='Selected'
    Then Begin
   	FrmSubGrupo1.Repaint;    
       XSUBGRUPO1:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
       FrmSubGrupo1.EdDescricao.Text:=DMESTOQUE.TSUBGru.FieldByName('DESCRICAO').AsString;
       FrmSubGrupo1.EDCodigo.text:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
    End;
end;

procedure TFRelEstoque.FrmSubGrupo1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   FrmSubGrupo1.Repaint;
	If Key = #13
   Then Begin
   	If FrmSubGrupo1.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.TSubGru, 'SUBGRUPOPROD', 'COD_INTERNO', FrmSubGrupo1.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XSUBGRUPO1:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
           	FrmSubGrupo1.EDCodigo.text:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
           	FrmSubGrupo1.EdDescricao.Text:=DMESTOQUE.TSUBGru.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XSUBGRUPO1:='0';
           	FrmSubGrupo1.EDCodigo.Text:='';
           	FrmSubGrupo1.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XSUBGRUPO1:='0';
          FrmSubGrupo1.EDCodigo.Text:='';
          FrmSubGrupo1.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFRelEstoque.FrmSubGrupo2BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XSUBGRUPO2:='0';
   FrmSubGrupo2.EDCodigo.TEXT:='';
   FrmSubGrupo2.EdDescricao.TEXT:='';
   FrmSubGrupo2.Repaint;
end;

procedure TFRelEstoque.FrmSubGrupo2BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.TSubgru, 'SUBGRUPOPROD', '', '', '');

    If AbrirForm(TFCadSUBGrupo, FCadSUBGruPO, 1)='Selected'
    Then Begin
   	FrmSubGrupo2.Repaint;    
       XSUBGRUPO2:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
       FrmSubGrupo2.EdDescricao.Text:=DMESTOQUE.TSUBGru.FieldByName('DESCRICAO').AsString;
       FrmSubGrupo2.EDCodigo.text:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
    End;
end;

procedure TFRelEstoque.FrmSubGrupo2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   FrmSubGrupo2.Repaint;   
	If Key = #13
   Then Begin
   	If FrmSubGrupo2.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.TSubGru, 'SUBGRUPOPROD', 'COD_INTERNO', FrmSubGrupo2.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XSUBGRUPO2:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
           	FrmSubGrupo2.EDCodigo.text:=DMESTOQUE.TSUBGru.FieldByName('COD_INTERNO').AsString;
           	FrmSubGrupo2.EdDescricao.Text:=DMESTOQUE.TSUBGru.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XSUBGRUPO2:='0';
           	FrmSubGrupo2.EDCodigo.Text:='';
           	FrmSubGrupo2.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XSUBGRUPO2:='0';
          FrmSubGrupo2.EDCodigo.Text:='';
          FrmSubGrupo2.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFRelEstoque.FrmProduto1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XPRODUTO1:='0';
   FrmProduto1.EDCodigo.TEXT:='';
   FrmProduto1.EdDescricao.TEXT:='';
   FrmProduto1.Repaint;   
end;

procedure TFRelEstoque.FrmProduto1BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
      FrmProduto1.Repaint;
	   XPRODUTO1:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
      FrmProduto1.EdDescricao.Text:=DMESTOQUE.WProduto.FieldByName('PRODUTO').AsString;
      FrmProduto1.EDCodigo.text:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
   End;
end;

procedure TFRelEstoque.FrmProduto1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   FrmProduto1.Repaint;
	If Key = #13
   Then Begin
   	If FrmProduto1.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', 'COD_INTERNO', FrmProduto1.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XPRODUTO1:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
           	FrmProduto1.EDCodigo.text:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
           	FrmProduto1.EdDescricao.Text:=DMESTOQUE.WProduto.FieldByName('PRODUTO').AsString;
          End
          Else Begin
               XPRODUTO1:='0';
           	FrmProduto1.EDCodigo.Text:='';
           	FrmProduto1.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XPRODUTO1:='0';
          FrmProduto1.EDCodigo.Text:='';
          FrmProduto1.EdDescricao.Text:='';
       End;
   End;
end;

procedure TFRelEstoque.FrmProduto2BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XPRODUTO2:='0';
   FrmProduto2.EDCodigo.TEXT:='';
   FrmProduto2.EdDescricao.TEXT:='';
   FrmProduto2.Repaint;   
end;

procedure TFRelEstoque.FrmProduto2BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto,1)='Selected'
   Then Begin
	   XPRODUTO2:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
      FrmProduto2.EdDescricao.Text:=DMESTOQUE.WProduto.FieldByName('PRODUTO').AsString;
      FrmProduto2.EDCodigo.text:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
      FrmProduto2.Repaint;
   End;
end;

procedure TFRelEstoque.FrmProduto2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmProduto2.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.WProduto, 'VWPRODUTO', 'COD_INTERNO', FrmProduto2.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XPRODUTO2:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
           	FrmProduto2.EDCodigo.text:=DMESTOQUE.WProduto.FieldByName('COD_INTERNO').AsString;
           	FrmProduto2.EdDescricao.Text:=DMESTOQUE.WProduto.FieldByName('PRODUTO').AsString;
          End
          Else Begin
               XPRODUTO2:='0';
           	FrmProduto2.EDCodigo.Text:='';
           	FrmProduto2.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XPRODUTO2:='0';
          FrmProduto2.EDCodigo.Text:='';
          FrmProduto2.EdDescricao.Text:='';
       End;
   End;
   FrmProduto2.Repaint;
end;
procedure TFRelEstoque.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   BtnFecha.Click;
end;

procedure TFRelEstoque.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   PrepImp;
//   FSRel.ShowReport;
end;

procedure TFRelEstoque.FormCreate(Sender: TObject);
begin
  inherited;
	If FMenu.TIPOREL='POSEST' Then
       LDescTitulo.Caption:='Relatório de Posição do Estoque';
	If FMenu.TIPOREL='LANCENT' Then
       LDescTitulo.Caption:='Relatório de Lançamentos de Entrada';
	If FMenu.TIPOREL='LANCSAI' Then
       LDescTitulo.Caption:='Relatório de Lançamentos de Saída';
	If FMenu.TIPOREL='LISTVEND'
   Then Begin
       LDescTitulo.Caption:='Relatório de Lista de Preços para vendas';
   End;
	If FMenu.TIPOREL='ENTXSAI' Then
       LDescTitulo.Caption:='Relatório de Confronto Entradas e Saidas';
	If FMenu.TIPOREL='CURVAABC' Then
       LDescTitulo.Caption:='Relatório de Curva ABC de Produtos';
   If FMenu.TIPOREL='LISTEST' Then
      LDescTitulo.Caption:='Listagem de Estoque';
   //MAURO 03/06/2013 - Relatorio de produtos manutenção
   if FMenu.TIPOREL = 'FRFPRODMANUTENCAO' then
   	LDescTitulo.Caption:='Relatório de Produtos com Manutenção';

   //****************************
   if FMenu.TIPOREL='EXPXML' then
   	LDescTitulo.Caption:='Relatório de Exportação XML';


    FDSCaixa.DataSource:=DMESTOQUE.DRel;
	CBEstPos.Visible:=True;
	CBEstZerado.Visible:=True;
   CBEstMin.Checked:=False;
   CBEstMax.Checked:=False;
   CBEstMin.Visible:=False;
   CBEstMin.Visible:=False;
   BtnImprimir.Caption:='&Imprimir';
	//INSERE CORES
   CBCampoAux.Items.Clear;
   DMESTOQUE.ALX.Close;
   DMESTOQUE.ALX.SQL.Clear;
   DMESTOQUE.ALX.SQL.Add('select distinct(subproduto.cor) AS COR from subproduto');
   DMESTOQUE.ALX.Open;
   DMESTOQUE.ALX.First;
   While Not DMESTOQUE.ALX.Eof Do
   Begin
   	CBCampoAux.Items.Add(DMESTOQUE.ALX.FieldByName('COR').AsString);
       DMESTOQUE.ALX.Next;
   End;
  	//INICIO: PASSA TODAS AS MARCAS EXISTENTES EM CADASTRO PARA AS COMBOBOX
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add('SELECT Distinct(subproduto.marca) FROM subproduto ORDER BY subproduto.marca');
   DMESTOQUE.Alx.Open;
	DMESTOQUE.Alx.First;

   //LIMPA EDITS DE DATAS
   EDData1.Clear;
   EdData2.Clear;
   edData1.Date := Date();
   edData2.Date := Date();
   edData1.Text := '';
   edData2.Text := '';
   CBMARCAINI.Items.Clear;
   CBMARCAFIM.Items.Clear;
   While not DMESTOQUE.Alx.Eof do
   Begin
       if DMESTOQUE.Alx.FieldByName('MARCA').AsString <> '' then
            cbMarca.AddItem(DMESTOQUE.Alx.FieldByName('MARCA').AsString);
       CBMARCAINI.Items.Add(DMESTOQUE.Alx.FieldByName('MARCA').AsString);
       CBMARCAFIM.Items.Add(DMESTOQUE.Alx.FieldByName('MARCA').AsString);
       DMESTOQUE.Alx.Next;
   End;
  	//FIM: PASSA TODAS AS MARCAS EXISTENTES EM CADASTRO PARA AS COMBOBOX

   //INICIO: Se tipo de relatório entradas x saidas deve-se habilitar painel de data
   If (FMenu.TIPOREL='FRFPRODMANUTENCAO') or (FMenu.TIPOREL='ENTXSAIMENS') or (FMenu.TIPOREL='ENTXSAI')or (FMenu.TIPOREL='ENTXSAIPET') or (FMenu.TIPOREL='FRFPRODVENDA_CLASS_PROD')  or (FMenu.TIPOREL='FRFPRODCOMPRA_DEV_CLASS_PROD') or (FMenu.TIPOREL='FRFPRODCOMPRA_CLASS_PROD') or (FMenu.TIPOREL='LANCENT') or (FMenu.TIPOREL='LANCSAI') or (FMenu.TIPOREL='IMPRELLOTE')  or (FMenu.TIPOREL='FRFPRODOS') or (FMenu.TIPOREL='FRFPRODVEND') or (FMenu.TIPOREL='FRFPRODVENDA_TotalProd')
   Then Begin
       PData.Visible:=true;
       PData.BringToFront;
   End
   Else Begin
       PData.Visible:=False;
   End;
   If (FMenu.TIPOREL='ENTXSAIMENS')
   Then Begin
   	CBEstPos.Visible:=False;
      	CBEstZerado.Visible:=False;
   end;
   //FIM: Se tipo de relatório entradas x saidas deve-se habilitar painel de data
   IF (FMenu.TIPOREL='CLASSPROD')
   Then Begin//o tipo de relatório e aquele agrupado por caixas abertura
       RgOrdenacao.Visible:=False;
   End
   Else Begin
       RgOrdenacao.Visible:=True;
   End;
   //INTITULA RALATORIO DE EXPORTACAO PARA XML
	If FMenu.TIPOREL='EXPXML'
   Then Begin
   	LDescTitulo.Caption:='Exportar Itens de venda para XML';
       BtnImprimir.Caption:='&Exportar';
   End;
   //INTITULA RALATORIO DE PRODUTOS COMPRADOS
	If FMenu.TIPOREL='FRFPRODCOMPRA_CLASS_PROD'
   Then Begin
   	LDescTitulo.Caption:='Relatório de produtos comprados';
		CBEstPos.Visible:=False;
		CBEstZerado.Visible:=False;
   End;
   //INTITULA RALATORIO DE PRODUTOS DEVOLVIDOS
	If FMenu.TIPOREL='FRFPRODCOMPRA_DEV_CLASS_PROD'
   Then Begin
   	LDescTitulo.Caption:='Relatório de produtos devolvidos';
		CBEstPos.Visible:=False;
		CBEstZerado.Visible:=False;
   End;
   //INTITULA RALATORIO DE ESTOQUE CALCULADO
	If FMenu.TIPOREL='ESTCALC'
   Then Begin
   	LDescTitulo.Caption:='Relatório de Estoque Calculado';
		CBEstPos.Visible:=False;
		CBEstZerado.Visible:=False;
   End;
   //INTITULA RALATORIO DE ESTOQUE COM ESTOQUE MINIMO E MAXIMO
	If FMenu.TIPOREL='ESTMAXMIN'
   Then Begin
   	LDescTitulo.Caption:='Relatório de Estoque com Quant. Máx/Mín.';
		CBEstMin.Visible:=True;
		CBEstMax.Visible:=True;
   End;

   //INTITULA RALATORIO DE PRODUTOS VENDIDOS
   If FMenu.TIPOREL='FRFPRODVENDA_CLASS_PROD'
   Then Begin
   	LDescTitulo.Caption:='Relatório de produtos vendidos';
		CBEstPos.Visible:=False;
		CBEstZerado.Visible:=False;
   End;
	If  FMenu.TIPOREL='FRRESUMOVC'
   Then Begin
		LDescTitulo.Caption:='Relatório Resumo de Compras e Vendas';
       LTextoBusca.Visible := false;
       LTextoBusca1.Visible := false;
       CBMARCAINI.Visible := false;
       CBMARCAFIM.Visible := false;
       FrmSubProduto1.Visible := false;
       FrmSubProduto2.Visible := false;
       PData.Visible := false;
       LTextoAuxProd.Visible := false;
       CBCampoAux.Visible := false;
       CBEstPos.Visible := false;
       CBEstZerado.Visible := false;
       CBEstMin.Visible := false;
       CBEstMax.Visible := false;
       RgOrdenacao.Visible := false;
   End;

   //MAURO 03/06/2013 - Organiza componentes da tela do relatorio
   if FMenu.TIPOREL = 'FRFPRODMANUTENCAO'
   Then Begin
       LDescTitulo.Caption:='Relatório de Produtos com Manutenção';
   End;

	If  FMenu.TIPOREL='POSEST' Then
		LDescTitulo.Caption:='Posição de Estoque';

	If  (FMenu.TIPOREL='INVEST')
   Then Begin
		LDescTitulo.Caption:='Inventário de Estoque';
       BtnImprimir.Caption:='&Salvar';
       CBEstPos.Visible:=False;
       CBEstZerado.Visible:=False;
   End;

	If  (FMenu.TIPOREL='LSTESTPEDCLIDESCCUPOM')
   Then Begin
		LDescTitulo.Caption:='Lista Com Descrição de Cupom';
       BtnImprimir.Caption:='&Salvar';
   End;

	If  FMenu.TIPOREL='FRFPRODVEND'
   Then Begin
		LDescTitulo.Caption:='Relatório de produtos vendidos';
   End;

	If  (FMenu.TIPOREL='LANCENTLOTE') or (FMenu.TIPOREL='LANCENT')
   Then begin
		LDescTitulo.Caption:='Relatório de Entradas para Correção';
       PData.Visible:=True;
   end;

	If  (FMenu.TIPOREL='LANCSAILOTE') or (FMenu.TIPOREL='LANCSAI')
   Then begin
		LDescTitulo.Caption:='Relatório de Saídas para Correção';
       PData.Visible:=True;
   end;

   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
	//Passa caption a label auxiliar
   LTextoAuxProd.Caption:=DMMACS.TLoja.FieldByName('NOMECAMPOAUXPROD').AsString;

    // - 11/02/2009: FILTRA FABRICANTES
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select DISTINCT subproduto.fabricante AS FAB from subproduto where subproduto.fabricante is not null order by subproduto.fabricante');
    DMESTOQUE.Alx.Open;

    clbFabricante.Clear;

    if not DMESTOQUE.Alx.IsEmpty
    then begin
        DMESTOQUE.Alx.First;
        while not DMESTOQUE.Alx.Eof
        do begin
            if Trim(DMESTOQUE.Alx.FieldByName('FAB').AsString) <> '' then
                clbFabricante.AddItem(DMESTOQUE.Alx.FieldByName('FAB').AsString);
            DMESTOQUE.Alx.Next;
        end;

    end;

   // - 12/02/2009:   INSERE CLASSIFICAÇÕES
  	cbSegmento.Items.Clear;
   DMESTOQUE.ALX.Close;
   DMESTOQUE.ALX.SQL.Clear;
   DMESTOQUE.ALX.SQL.Add('select distinct(subproduto.classificacao) AS CLASS from subproduto');
   DMESTOQUE.ALX.Open;
   DMESTOQUE.ALX.First;
   While Not DMESTOQUE.ALX.Eof Do
   Begin
       if Trim(DMESTOQUE.ALX.FieldByName('CLASS').AsString) <> '' then
   	        cbSegmento.Items.Add(DMESTOQUE.ALX.FieldByName('CLASS').AsString);
       DMESTOQUE.ALX.Next;
   End;


    if FMenu.TIPOREL='ENTXSAI'
    then begin
        rgOrientacao.Enabled := True;
        clbFabricante.Enabled := True;
        cbAgrupar.Enabled := True;
        cbAgrupar.Checked := False;
        cbAgrupar.Visible := True;
        rgAgrupar.ItemIndex := 0;
        rgOrientacao.ItemIndex := 0;
        rgSubAgrupar.BringToFront;
        rgSubAgrupar.Visible := False;
        cbSegmento.Visible := True;
        cbRelMarcas.Checked := False;
    end
    else begin
        rgOrientacao.Enabled := False;
        cbSegmento.Visible := True;
        clbFabricante.Enabled := False;
        cbAgrupar.Enabled := False;
        rgSubAgrupar.SendToBack;
        rgSubAgrupar.Visible := False;
        cbRelMarcas.Visible := False;
    end;

end;
procedure TFRelEstoque.FrmSubProduto1BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XSUBPROD1:='0';
   FrmSubProduto1.EDCodigo.TEXT:='';
   FrmSubProduto1.EdDescricao.TEXT:='';
   FrmSubProduto1.Repaint;
end;

procedure TFRelEstoque.FrmSubProduto2BTNMINUSClick(Sender: TObject);
begin
  inherited;
	XSUBPROD2:='0';
   FrmSubProduto2.EDCodigo.TEXT:='';
   FrmSubProduto2.EdDescricao.TEXT:='';
   FrmSubProduto2.Repaint;
end;

procedure TFRelEstoque.FrmSubProduto1BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
	   XSUBPROD1:=DMESTOQUE.WSIMILAR.FieldByName('DESCRICAO').AsString;
      FrmSubProduto1.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
      FrmSubProduto1.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
      FrmSubProduto1.Repaint;
   End;
end;

procedure TFRelEstoque.FrmSubProduto2BTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

   If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
	   XSUBPROD2:=DMESTOQUE.WSIMILAR.FieldByName('DESCRICAO').AsString;
      FrmSubProduto2.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
      FrmSubProduto2.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
      FrmSubProduto2.Repaint;      
   End;
end;

procedure TFRelEstoque.FrmSubProduto1EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmSubProduto1.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.WSIMILAR, 'VWSIMILAR', 'COD_INTERNO', FrmSubProduto1.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XSUBPROD1:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
           	FrmSubProduto1.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
           	FrmSubProduto1.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XSUBPROD1:='0';
           	FrmSubProduto1.EDCodigo.Text:='';
           	FrmSubProduto2.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XSUBPROD1:='0';
          FrmSubProduto1.EDCodigo.Text:='';
          FrmSubProduto1.EdDescricao.Text:='';
       End;
   End;
   FrmSubProduto1.Repaint;
end;

procedure TFRelEstoque.FrmSubProduto2EDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmSubProduto2.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.WSIMILAR, 'VWSIMILAR', 'COD_INTERNO', FrmSubProduto2.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XSUBPROD2:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
           	FrmSubProduto2.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
           	FrmSubProduto2.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XSUBPROD2:='0';
           	FrmSubProduto2.EDCodigo.Text:='';
           	FrmSubProduto2.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XSUBPROD2:='0';
          FrmSubProduto2.EDCodigo.Text:='';
          FrmSubProduto2.EdDescricao.Text:='';
       End;
   End;
   FrmSubProduto2.Repaint;
end;

procedure TFRelEstoque.FormActivate(Sender: TObject);
begin
  inherited;
	If fmenu.TIPOREL='FRFPRODVENDA_TotalProd' Then
       LDescTitulo.Caption:='Relatório de Carregamento'
   Else
       LDescTitulo.Caption:='Relatório de Estoque';
   If FMenu.TIPOREL='RELTRIBUTA' Then
      LDescTitulo.Caption:='Lista de Produtos por Tributação';
   If FMenu.TIPOREL='LISTEST' Then
      LDescTitulo.Caption:='Listagem de Estoque';

    if FMenu.TIPOREL='ENTXSAIPET'then
       rbMovimentados.Visible:=True
    else
       rbMovimentados.Visible:=False
end;

procedure TFRelEstoque.BtnImprimirClick(Sender: TObject);
Var
	XJuncao:String;
begin
  inherited;
	If FMenu.TIPOREL='ENTXSAI'
   Then Begin
	   DMESTOQUE.TRel.sql.Clear;
	   DMESTOQUE.TRel.SQL.Add(' select SUBPRODUTO.DESCRICAO AS SUBPRODUTO, subproduto.marca AS MARCA, ');
      DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
	   DMESTOQUE.TRel.SQL.Add(' estoque.cod_estoque, estoque.estfisico, estoque.vendvarv, estoque.valunit, Estoque.ULTCOMPRA, Estoque.ULTVENDA');
	   DMESTOQUE.TRel.SQL.Add(' from subproduto left join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ');
	   DMESTOQUE.TRel.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
	   DMESTOQUE.TRel.SQL.Add(' left join grupoprod on grupoprod.cod_grupoprod = produto.cod_grupoprod ');
	   DMESTOQUE.TRel.SQL.Add(' left join subgrupoprod on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod ');
	   DMESTOQUE.TRel.SQL.Add(' WHERE (ESTOQUE.COD_LOJA='+FMenu.LCODLOJA.Caption+') AND ');
	   DMESTOQUE.TRel.SQL.Add('  ((exists (select * from lancent where lancent.cod_estoque=estoque.cod_estoque)) ');
	   DMESTOQUE.TRel.SQL.Add('  or (exists (select * from lancsai where lancsai.cod_estoque=estoque.cod_estoque)) ');
	   DMESTOQUE.TRel.SQL.Add('  or (exists (select * from itenspedc where itenspedc.cod_estoque=estoque.cod_estoque)) ');
	   DMESTOQUE.TRel.SQL.Add('  or (exists (select * from itenspedven where itenspedven.cod_estoque=estoque.cod_estoque))) ');

	   If (FRMGrupo1.EdDescricao.Text<>'') And (FrmGrupo2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
      		DMESTOQUE.TRel.SQL.Add(' AND ');
		    DMESTOQUE.TRel.SQL.Add(' (upper(grupoprod.descricao) between upper(:GRUPO1) AND upper(:GRUPO2)) ');
	  	    DMESTOQUE.TRel.ParamByName('GRUPO1').AsString:=FrmGrupo1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('GRUPO2').AsString:=FrmGrupo2.EdDescricao.Text;
	   		XJuncao:=' AND ';//prepara junção para próximas condições
      End;
      If (FrmSubGrupo1.EdDescricao.Text<>'') And (FrmSubGrupo2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
      		If XJuncao<>' AND ' Then
	      		DMESTOQUE.TRel.SQL.Add(' AND ');
	   		DMESTOQUE.TRel.SQL.Add(XJuncao+' (upper(subgrupoprod.descricao) between upper(:SUBGRUPO1) AND upper(:SUBGRUPO2)) ');
	   		DMESTOQUE.TRel.ParamByName('SUBGRUPO1').AsString:=FrmSubGrupo1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('SUBGRUPO2').AsString:=FrmSubGrupo2.EdDescricao.Text;
	   		XJuncao:=' AND ';//prepara junção para próximas condições
      End;
      If (CBMARCAINI.Text<>'') And (CBMARCAFIM.Text<>'')
      Then Begin//haverá seleção por grupo
      		If XJuncao<>' AND ' Then
	      		DMESTOQUE.TRel.SQL.Add(' AND ');
	   		DMESTOQUE.TRel.SQL.Add(XJuncao+' ((subproduto.marca) between (:MARCA1) AND (:MARCA2)) ');
	   		DMESTOQUE.TRel.ParamByName('MARCA1').AsString:=CBMARCAINI.Text;
	   		DMESTOQUE.TRel.ParamByName('MARCA2').AsString:=CBMARCAFIM.Text;
	   		XJuncao:=' AND ';//prepara junção para próximas condições
      End;
      If (FrmProduto1.EdDescricao.Text<>'') And (FrmProduto2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
      		If XJuncao<>' AND ' Then
      	  		DMESTOQUE.TRel.SQL.Add(' AND ');
      		DMESTOQUE.TRel.SQL.Add(XJuncao+ ' (upper(Produto.descricao) between upper(:PRODUTO1) AND upper(:PRODUTO2)) ');
 	   		DMESTOQUE.TRel.ParamByName('PRODUTO1').AsString:=FrmProduto1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('PRODUTO2').AsString:=FrmProduto2.EdDescricao.Text;
      End;
      If (FrmSubProduto1.EdDescricao.Text<>'') And (FrmSubProduto2.EdDescricao.Text<>'')
      Then Begin//haverá seleção por grupo
      		If XJuncao<>' AND ' Then
      	  		DMESTOQUE.TRel.SQL.Add(' AND ');
      		DMESTOQUE.TRel.SQL.Add(XJuncao+ ' (upper(SubProduto.descricao) between upper(:SUBPROD1) AND upper(:SUBPROD2)) ');
 	   		DMESTOQUE.TRel.ParamByName('SUBPROD1').AsString:=FrmSubProduto1.EdDescricao.Text;
	   		DMESTOQUE.TRel.ParamByName('SUBPROD2').AsString:=FrmSubProduto2.EdDescricao.Text;
      End;
	   DMESTOQUE.TRel.SQL.Add(' ORDER BY SUBPRODUTO.MARCA, SUBPRODUTO.DESCRICAO ');
      DMESTOQUE.TRel.SQL.TEXT;
      DMESTOQUE.TRel.Open;
      DMESTOQUE.TRel.RecordCount;
      If DMESTOQUE.TRel.IsEmpty
      Then Begin
	   		Mensagem('INFORMAÇÃO AO USUÁRIO', 'A filtragem retornou com relatório vazio!.', '', 1, 1, False, 'I');
      End
      Else Begin
      		ImpGeraHist;
      End;
   End;
	If  FMenu.TIPOREL='INVEST'
   Then Begin
		//Salva Arquivo de inventario de estoque em formato texto
       SalvaInventEst;
   End;
	If  (FMenu.TIPOREL='LSTESTPEDCLIDESCCUPOM')
   Then Begin
       //Salva Arquivo de Lista em formato Texto
       SalvaLista;
   End;
	If  (FMenu.TIPOREL='EXPXML')
   Then Begin
       //Salva Arquivo de Lista em formato Texto
       ExpXml;
   End;
end;

procedure TFRelEstoque.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
	QRLVLR1.Font.Style:=[];
   QRLVLR2.Font.Style:=[];
   QRLVLR3.Font.Style:=[];
   QRLVLR4.Font.Style:=[];
   QRLVLR5.Font.Style:=[];
   QRLVLR6.Font.Style:=[];
   QRLVLR7.Font.Style:=[];
	If  DMESTOQUE.TRel.FieldByName('INT1').AsInteger=1
   Then Begin
       QRLPRODUTO.Font.Style:= [fsBold];
       QRLVLR1.Mask:='';
       QRLVLR2.Mask:='';
       QRLVLR3.Mask:='';
       QRLVLR4.Mask:='';
       QRLVLR5.Mask:='';
       QRLVLR6.Mask:='';
       QRLVLR7.Mask:='';
   End;
	If  DMESTOQUE.TRel.FieldByName('INT1').AsInteger<>1
   Then Begin
       QRLPRODUTO.Font.Style:= [];
       QRLVLR1.Mask:='0.00';
       QRLVLR2.Mask:='0.00';
       QRLVLR3.Mask:='0.00';
       QRLVLR4.Mask:='0.00';
       QRLVLR5.Mask:='0.00';
       QRLVLR6.Mask:='0.00';
       QRLVLR7.Mask:='0.00';
   End;

	If  DMESTOQUE.TRel.FieldByName('INT1').AsInteger=2
   Then Begin
       QRLVLR1.Font.Style:=[fsBold];
       QRLVLR2.Font.Style:=[fsBold];
       QRLVLR3.Font.Style:=[fsBold];
       QRLVLR4.Font.Style:=[fsBold];
       QRLVLR5.Font.Style:=[fsBold];
       QRLVLR6.Font.Style:=[fsBold];
       QRLVLR7.Mask:='';       
   End;
end;
procedure TFRelEstoque.cbAgruparClick(Sender: TObject);
begin
  inherited;
  IF cbAgrupar.Checked then
    rgAgrupar.Enabled := True
  else
    rgAgrupar.Enabled := False;

  IF cbAgrupar.Checked then
    rgSubAgrupar.Enabled := True
  else
    rgSubAgrupar.Enabled := False;
end;

procedure TFRelEstoque.cbMarcaSelectClick(Sender: TObject);
var
    i:Integer;
begin
  inherited;
    if cbMarcaSelect.Checked
    then begin
        for i:=0 to cbMarca.Count-1
        do begin
            cbMarca.Items[i].Checked := True;
        end;
    end
    else begin
        for i:=0 to cbMarca.Count-1
        do begin
            cbMarca.Items[i].Checked := False;
        end;
    end;
end;

procedure TFRelEstoque.cbMarcaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
    i:Integer;
begin
  inherited;

    if Shift=[ssCtrl]
    then begin
        for i:=0 to cbMarca.Count-1
        do begin
            if  cbMarca.Items[i].Checked
            then begin
                break;
            end
            else begin
                cbMarca.Items[i].Checked := True;
            end;
        end;
    end;
end;

procedure TFRelEstoque.rgOrientacaoClick(Sender: TObject);
begin
  inherited;
    if rgOrientacao.ItemIndex = 1
    then Begin
        rgSubAgrupar.Visible := True;
        cbRelMarcas.Visible := True;
    end
    else Begin
        rgSubAgrupar.Visible := False;
        cbRelMarcas.Visible := False;
    End;
end;


procedure TFRelEstoque.CBEstPosClick(Sender: TObject);
begin
  inherited;
   If CBEstPos.Checked=True Then
       CBEstZerado.Checked:=False;
end;

procedure TFRelEstoque.CBEstZeradoClick(Sender: TObject);
begin
  inherited;
   If CBEstZerado.Checked=True Then
       CBEstPos.Checked:=False;
end;

end.
