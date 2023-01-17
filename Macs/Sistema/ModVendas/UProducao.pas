unit UProducao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRodaPe, TFlatHintUnit, Buttons, jpeg, ExtCtrls, StdCtrls,
  UFrmBusca, EditFloat, Grids, DBGrids, TFlatButtonUnit, OleCtrls,
  ShockwaveFlashObjects_TLB, FR_DSet, FR_DBSet, FR_Class, Qrctrls, QuickRpt,
  ColorEditFloat, DrLabel;

type
  TFProducao = class(TFPadraoRodaPe)
    FSRel: TfrReport;
    QrFchTec: TQuickRep;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel15: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRSubDetail4: TQRSubDetail;
    QRDBText25: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRBand4: TQRBand;
    QRLabel37: TQRLabel;
    QRBand5: TQRBand;
    QRBand6: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand7: TQRBand;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QrLDesc1: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRBand2: TQRBand;
    QRLVLRTOT: TQRLabel;
    QRLVLRUNIT: TQRLabel;
    QRLabel6: TQRLabel;
    QrLQtdD: TQRLabel;
    QrLVlrD: TQRLabel;
    QrLQtdM: TQRLabel;
    QrlVlrM: TQRLabel;
    QrLQtdP: TQRLabel;
    QrlVlrP: TQRLabel;
    QrFchProd: TQuickRep;
    QRBand8: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRSubDetail5: TQRSubDetail;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRBand9: TQRBand;
    QRLabel43: TQRLabel;
    QRBand10: TQRBand;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape10: TQRShape;
    QrlQtdMP: TQRLabel;
    QrlVlrMP: TQRLabel;
    QRBand11: TQRBand;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRShape11: TQRShape;
    QRLabel59: TQRLabel;
    QrlQtdPP: TQRLabel;
    QrlVlrPP: TQRLabel;
    QRBand12: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QrlDescP1: TQRLabel;
    QRSubDetail6: TQRSubDetail;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRBand13: TQRBand;
    QRShape12: TQRShape;
    QrlQtdDP: TQRLabel;
    QrlVlrDP: TQRLabel;
    QRBand14: TQRBand;
    QrlVlrTotP: TQRLabel;
    QrlVlrUnitP: TQRLabel;
    QrlVlrTotPorc: TQRLabel;
    FdsRelProd: TfrDBDataSet;
    Shape12: TShape;
    DBGrid1: TDBGrid;
    FrmProduc: TFrmBusca;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    EDQTD: TFloatEdit;
    LFchTec: TLabel;
    BtnPMatPrim: TFlatButton;
    BtnPMaoObra: TFlatButton;
    BtnPDesp: TFlatButton;
    PMatPrima: TPanel;
    DBGrid2: TDBGrid;
    PMaoObra: TPanel;
    DBGrid3: TDBGrid;
    PDesp: TPanel;
    DBGrid4: TDBGrid;
    PMaterias: TPanel;
    Shape19: TShape;
    BtnPMatPrimM: TFlatButton;
    BtnPMaoObraM: TFlatButton;
    BtnPDespM: TFlatButton;
    EdVlrTotProduc: TColorEditFloat;
    PDespM: TPanel;
    DBGrid5: TDBGrid;
    PMaoObraM: TPanel;
    DBGrid6: TDBGrid;
    PMatPrimaM: TPanel;
    DBGrid7: TDBGrid;
    LMatPrim: TLabel;
    PBotoesCtrl: TPanel;
    SHP1: TShape;
    SHP2: TShape;
    SHP3: TShape;
    SHP4: TShape;
    SHP5: TShape;
    SHP6: TShape;
    BtnFchTec: TFlatButton;
    BtnVerifEst: TFlatButton;
    BtnImpFchTec: TFlatButton;
    BtnProd: TFlatButton;
    BtnImpFchProd: TFlatButton;
    BtnAnalVerif: TFlatButton;
    QRShape3: TQRShape;
    QRShape7: TQRShape;
    procedure BtnPMatPrimClick(Sender: TObject);
    procedure BtnPMaoObraClick(Sender: TObject);
    procedure BtnPDespClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FrmProducEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmProducBTNOPENClick(Sender: TObject);
    procedure FrmProducBTNMINUSClick(Sender: TObject);
    procedure FlatButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BtnPMatPrimMClick(Sender: TObject);
    procedure BtnPMaoObraMClick(Sender: TObject);
    procedure BtnPDespMClick(Sender: TObject);
    procedure FlatButton2Click(Sender: TObject);
    procedure FlatButton4Click(Sender: TObject);
    procedure FlatButton6Click(Sender: TObject);
    procedure FlatButton3Click(Sender: TObject);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QrFchTecBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FlatButton5Click(Sender: TObject);
    procedure QRBand8AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand13BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand14BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnFchTecClick(Sender: TObject);
    procedure BtnVerifEstClick(Sender: TObject);
    procedure BtnImpFchTecClick(Sender: TObject);
    procedure BtnProdClick(Sender: TObject);
    procedure BtnImpFchProdClick(Sender: TObject);
    procedure BtnAnalVerifClick(Sender: TObject);
  private
    { Private declarations }
		Procedure HabPainelM(Painel:Integer);//Trabalha paineis em relação tabcontrol
		//Filtra Produtos Servicos e Despesas
		Procedure FiltraSlave;
       Procedure FiltraProduto;//Filtra os produtos relacionados para produção, mas ainda não produzidos
		Procedure FiltraProduc;////Filtra Produtos Servicos e Despesas Que serão necessários para a producao
       Function VerificEstoque: Boolean;//Procedure utilizada para ferificar se existe estoque suficiente para a produção
		Function Produzir: Boolean;//Procedure utilizada para realizar a industrialização dos produtos selecionados
    	//Relaiza cálculos para o produto XRET: 1 PARA RETORNAR VALORES AS EDITS DO FPRODUTO/ XCALCLUC: 1 PARA RETORNAR O PERCENTUAL DE LUCRATIVIDADE DO PRODUTO COM RELAÇÃO AO PREÇO DE VENDA
    	Procedure CalculoVenda(DescVistaVar: Real; AcrecPrazoVar: Real; DescVistaAtac: Real; AcrecPrazoAtac: Real; ComVistaVar: Real; ComPrazoVar: Real; ComVistaAtac: Real; ComPrazoAtac: Real; XRET: INTEGER; XCALCLUC: INTEGER);

  public
    { Public declarations }
  end;

var
  FProducao: TFProducao;
  XCOD_SUBPROD: Integer;//Código que ir';a armazenar temporaiamente o codigo do subproduto
  XCOD_MESTRE: Integer;//Código da tabela mestre
  XCOD_FCHTEC, XCOD_FCHTECINS: Integer;//Código q irá armazenar tmp o código da fch tecnuca
  XCOD_NEWMAT, XCOD_NEWMAO, XCOD_NEWDESP: INTEGER;//Armazenará temporariamente o código de matéria prima e mão de obra dos itens para produção
  XPORCAO: REAL;//ARMAZENA A QTDE DA PORCAO DA FCH TEC
  XTOTUNIT, XVLRTOT, XVIUNIT, XVITOT, VLRTOTPORC: Real;//Acumulador para relatório

implementation

uses UDMEstoque, Alxor32, UMenu, UProduto, AlxMessage, UFchTec, UDMMacs;

{$R *.DFM}
//procedure utilizada para calcular o preço de venda do produto
Procedure TFProducao.CalculoVenda(DescVistaVar: Real; AcrecPrazoVar: Real; DescVistaAtac: Real; AcrecPrazoAtac: Real; ComVistaVar: Real; ComPrazoVar: Real; ComVistaAtac: Real; ComPrazoAtac: Real; XRET: INTEGER; XCALCLUC: INTEGER);
var
X,Y,Z,B,C,F,I :Real;
VlrVenda: Real;
begin
	//CALCULANDO VALOR DE REPOSIÇÃO (VALREP)
	X:= (Dmestoque.Testoque.Fieldbyname('VALUNIT').ascurrency * (Dmestoque.TSubprod.Fieldbyname('IPIPROD').ascurrency) /100);
	Y:= (Dmestoque.Testoque.Fieldbyname('VALUNIT').ascurrency * (Dmestoque.TEstoque.Fieldbyname('FRETE').ascurrency) /100);
	Z:= (Dmestoque.Testoque.Fieldbyname('VALUNIT').ascurrency * (Dmestoque.TSubprod.Fieldbyname('EMBPROD').ascurrency) /100);
	//Valor de Reposição do Produto
	Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency:= (Dmestoque.Testoque.Fieldbyname('VALUNIT').ascurrency + X + Y + Z);

   //CALCULANDO VALOR DO PRODUTO COM IMPOSTO (B)
	//Achando o Primeiro Coeficiente.
	Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency := (100 - (DMMacs.Tempresa.Fieldbyname('IMPEST').ascurrency + DMMacs.Tempresa.Fieldbyname('IMPFED').ascurrency + COMVISTAVAR + DESCVISTAVAR + DMESTOQUE.TEstoque.FieldByname('OUTROS').ascurrency))/100;
	//Valor do Produto com Valor de Reposição + os Impostos
	B:=(Dmestoque.Testoque.Fieldbyname('VALREP').ascurrency / Dmestoque.Testoque.Fieldbyname('COEFDIV').ascurrency);

	//CALCULANDO VALOR DE VENDA VAREJO A VISTA  (VENDAVARV)
	//Achando o Segundo Coeficiente.
	C := (Dmestoque.Testoque.Fieldbyname('LUCRATIVIDADE').ascurrency / 100) + 1;
   If XCALCLUC=0
   Then Begin//parametro que determina que o sistyema deve calcular os valores de venda do produto
		//Valor do Produto com Valor de Reposição + os Impostos + Lucratividade
		Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency := (B * C);

		//CALCULANDO VALOR DE VENDA VAREJO A PRAZO  (VENDAVARP)
		Dmestoque.Testoque.Fieldbyname('VENDVARP'). Ascurrency := (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency *  ((100 + AcrecPrazoVar) / 100));

		//CALCULANDO VALOR DE VENDA ATACADO A VISTA  (VENDATAV)
		F:= Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency;
		Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency := (F / ((100 + DESCVISTAATAC) / 100));

		//CALCULANDO VALOR DE VENDA ATACADO A PRAZO  (VENDATAP)
		I := Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency;
		Dmestoque.Testoque.Fieldbyname('VENDATAP'). Ascurrency := (I * ((100 + ACRECPRAZOATAC) / 100));
	End
   Else Begin
		//CALCULANDO VALOR DE VENDA VAREJO A PRAZO  (VENDAVARP)
		Dmestoque.Testoque.Fieldbyname('VENDVARP'). Ascurrency := (Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency *  ((100 + AcrecPrazoVar) / 100));
		//CALCULANDO VALOR DE VENDA ATACADO A VISTA  (VENDATAV)
		F:= Dmestoque.Testoque.Fieldbyname('VENDVARV'). Ascurrency;
		Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency := (F / ((100 + DESCVISTAATAC) / 100));
		//CALCULANDO VALOR DE VENDA ATACADO A PRAZO  (VENDATAP)
		I := Dmestoque.Testoque.Fieldbyname('VENDATAV'). Ascurrency;
		Dmestoque.Testoque.Fieldbyname('VENDATAP'). Ascurrency := (I * ((100 + ACRECPRAZOATAC) / 100));
   	//Como o sistema não deve calcular o valor de venda ele deve informar qual a lucratividade alcançada pelo valor de venda informado pelo usuário
		Dmestoque.Testoque.Fieldbyname('VENDATAP').Ascurrency:=((Dmestoque.Testoque.Fieldbyname('VENDVARV').Ascurrency/B)-1)*100;
   End;
End;

//Procedure utilizada para ferificar se existe estoque suficiente para a produção
Function Tfproducao.VerificEstoque: Boolean;
Begin
	Result:=True;
	//zera todos os estsimulados da tabela estoque
	DMESTOQUE.Alx3.Close;
	DMESTOQUE.Alx3.SQL.Clear;
	DMESTOQUE.Alx3.SQL.Add('update estoque set estoque.estsimulado=0');
	DMESTOQUE.Alx3.ExecSQL;
   DMESTOQUE.TransacEstoque.CommitRetaining;
	//Posciona no primeiro registro de produtos para produção
   DMESTOQUE.Alx.First;
   While Not DMESTOQUE.Alx.Eof do
   Begin
       //Filtra as materias Primas necessárias para este produto
		DMESTOQUE.Alx3.Close;
		DMESTOQUE.Alx3.SQL.Clear;
		DMESTOQUE.Alx3.SQL.Add('Select iprdmat.cod_producao, iprdmat.cod_subproduto, iprdmat.qtd from iprdmat');
   	DMESTOQUE.Alx3.SQL.Add('Where (iprdmat.cod_producao=:CODPRODUC) ');
		DMESTOQUE.Alx3.ParamByName('CODPRODUC').AsInteger:=DMESTOQUE.Alx.FieldByName('COD_PRODUCAO').AsInteger;
		DMESTOQUE.Alx3.Open;

       //Percorre todas as materias primas para verificar estoque
       DMESTOQUE.Alx3.First;
       While Not DMESTOQUE.Alx3.eof Do
       begin
	       	//Filtra estoque referente a materia prima
          	DMESTOQUE.TEstoque.Close;
			DMESTOQUE.TEstoque.SQL.Clear;
			DMESTOQUE.TEstoque.SQL.Add('select * from estoque ');
		   	DMESTOQUE.TEstoque.SQL.Add('Where (estoque.cod_subprod=:CODSUBPROD) AND (estoque.cod_loja=:CODLOJA) ');
			DMESTOQUE.TEstoque.ParamByName('CODSUBPROD').AsInteger:=DMESTOQUE.Alx3.FieldByName('COD_SUBPRODUTO').AsInteger;
			DMESTOQUE.TEstoque.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
			DMESTOQUE.TEstoque.Open;
		    If Not DMESTOQUE.TEstoque.IsEmpty
	        Then Begin
	           DMESTOQUE.TEstoque.Edit;
	           DMESTOQUE.TEstoque.FieldByName('ESTSIMULADO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('ESTSIMULADO').AsCurrency+DMESTOQUE.Alx3.FieldByName('QTD').AsCurrency;
	           DMESTOQUE.TEstoque.post;
              DMEstoque.TransacEstoque.CommitRetaining;
              If DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency<DMESTOQUE.TEstoque.FieldByName('ESTSIMULADO').AsCurrency Then
              		Result:=false;
	        End;
           DMESTOQUE.Alx3.Next;
	    End;
       DMESTOQUE.Alx.Next;
   End;
End;

//Procedure utilizada para realizar a industrialização dos produtos selecionados
Function Tfproducao.Produzir: Boolean;
Var
    DescVistaVar, DescVistaAtac, AcrecPrazoVar, AcrecPrazoAtac, ComVistaVar, ComVistaAtac, ComPrazoVar, ComPrazoAtac: Real;
Begin
	FMenu.TIPOAUX:='';
	Result:=True;
   Try
	  //Posciona no primeiro registro de produtos para produção
     DMESTOQUE.Alx.First;
     While Not DMESTOQUE.Alx.Eof do
     Begin
     	//Filtra estoque referente ao produto a ser industrializado
     	DMESTOQUE.TEstoque.Close;
     	DMESTOQUE.TEstoque.SQL.Clear;
     	DMESTOQUE.TEstoque.SQL.Add('select * from estoque ');
     	DMESTOQUE.TEstoque.SQL.Add('Where (estoque.cod_subprod=:CODSUBPROD) AND (estoque.cod_loja=:CODLOJA) ');
     	DMESTOQUE.TEstoque.ParamByName('CODSUBPROD').AsInteger:=DMESTOQUE.Alx.FieldByName('COD_SUBPRODUTO').AsInteger;
     	DMESTOQUE.TEstoque.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
     	DMESTOQUE.TEstoque.Open;
     	If Not DMESTOQUE.TEstoque.IsEmpty
     	Then Begin
           DMESTOQUE.TEstoque.Edit;
           DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency+DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency:=DMESTOQUE.Alx.FieldByName('VLRTOTAL').AsCurrency/DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency;
           DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency;
           ///////////////////////
			//ATUALIZA VLR DE VENDA
           ///////////////////////
			//INICIO
  			TRY
    			//Verifica se pega o valor em questão da tabela estoque ou empresa
    			If DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency=0  Then
        			DescVistaVar:=DMMacs.TEmpresa.FieldByName('AVVPROVAR').AsCurrency
    			Else
        			DescVistaVar:=DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency;

    			//Verifica se pega o valor em questão da tabela estoque ou empresa
    			If DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency=0 Then
        			AcrecPrazoVar:=DMMacs.TEmpresa.FieldByName('AVPPROVAR').AsCurrency
    			Else
        			AcrecPrazoVar:=DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency;

    			//Verifica se pega o valor em questão da tabela estoque ou empresa
    			If DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency=0 Then
        			DescVistaAtac:=DMMacs.TEmpresa.FieldByName('AVVPROAT').AsCurrency
    			Else
        			DescVistaAtac:=DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency;

    			//Verifica se pega o valor em questão da tabela estoque ou empresa
    			If DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency=0 Then
        			AcrecPrazoAtac:=DMMacs.TEmpresa.FieldByName('AVPPROAT').AsCurrency
    			Else
        			AcrecPrazoAtac:=DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency;

    			//Verifica se pega o valor em questão da tabela estoque ou empresa
    			If DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency=0 Then
        			ComVistaVar:=DMMacs.TEmpresa.FieldByName('CVVPROVAR').AsCurrency
    			Else
        			ComVistaVar:=DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency;

    			//Verifica se pega o valor em questão da tabela estoque ou empresa
    			If DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsCurrency=0 Then
        			ComPrazoVar:=DMMacs.TEmpresa.FieldByName('CVPPROVAR').AsCurrency
    			Else
        			ComPrazoVar:=DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsCurrency;

    			//Verifica se pega o valor em questão da tabela estoque ou empresa
               If DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsCurrency=0 Then
               	ComVistaAtac:=DMMacs.TEmpresa.FieldByName('CVVPROAT').AsCurrency
               Else
               	ComPrazoAtac:=DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsCurrency;

               //Verifica se pega o valor em questão da tabela estoque ou empresa
               If DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsCurrency=0  Then
               	ComPrazoAtac:=DMMacs.TEmpresa.FieldByName('CVPPROAT').AsCurrency
               Else
               	ComPrazoAtac:=DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsCurrency;
               CalculoVenda(DescVistaVar, AcrecPrazoVar, DescVistaAtac, AcrecPrazoAtac, ComVistaVar, ComPrazoVar, ComVistaAtac, ComPrazoAtac, 1, 0)
           EXCEPT
           END;

           DMESTOQUE.TEstoque.post;
           DMEstoque.TransacEstoque.CommitRetaining;
     	End
       Else Begin
           FMenu.TIPOAUX:='Estoque para Produto ['+DMESTOQUE.Alx.FieldByName('COD_SUBPRODUTO').AsString+'] não encontrado';
			Result:=False;
       End;

     	//Filtra Produção referente ao selecionado para marcar como produzido
     	DMESTOQUE.TProduc.Close;
     	DMESTOQUE.TProduc.SQL.Clear;
     	DMESTOQUE.TProduc.SQL.Add('select * From producao Where producao.cod_producao=:CODPROD ');
     	DMESTOQUE.TProduc.ParamByName('CODPROD').AsInteger:=DMESTOQUE.Alx.FieldByName('COD_PRODUCAO').AsInteger;
     	DMESTOQUE.TProduc.Open;
     	If Not DMESTOQUE.TProduc.IsEmpty
     	Then Begin
           DMESTOQUE.TProduc.Edit;
           DMESTOQUE.TProduc.FieldByName('PRODUZIDO').AsString:='1';
			DMESTOQUE.TProduc.FieldByName('DTPRODUC').AsDateTime:=Date();
           DMESTOQUE.TProduc.post;
     	End
       Else Begin
           FMenu.TIPOAUX:='Produção ['+DMESTOQUE.Alx.FieldByName('COD_PRODUCAO').AsString+'] não encontrada';
			Result:=False;
       End;

       //Filtra as materias Primas necessárias para este produto
		DMESTOQUE.Alx3.Close;
		DMESTOQUE.Alx3.SQL.Clear;
		DMESTOQUE.Alx3.SQL.Add('Select iprdmat.cod_producao, iprdmat.cod_subproduto, iprdmat.qtd from iprdmat');
   	DMESTOQUE.Alx3.SQL.Add('Where (iprdmat.cod_producao=:CODPRODUC) ');
		DMESTOQUE.Alx3.ParamByName('CODPRODUC').AsInteger:=DMESTOQUE.Alx.FieldByName('COD_PRODUCAO').AsInteger;
		DMESTOQUE.Alx3.Open;

       //Percorre todas as materias primas para verificar estoque
       DMESTOQUE.Alx3.First;
       While Not DMESTOQUE.Alx3.eof Do
       begin
	       	//Filtra estoque referente a materia prima
          	DMESTOQUE.TEstoque.Close;
			DMESTOQUE.TEstoque.SQL.Clear;
			DMESTOQUE.TEstoque.SQL.Add('select * from estoque ');
		   	DMESTOQUE.TEstoque.SQL.Add('Where (estoque.cod_subprod=:CODSUBPROD) AND (estoque.cod_loja=:CODLOJA) ');
			DMESTOQUE.TEstoque.ParamByName('CODSUBPROD').AsInteger:=DMESTOQUE.Alx3.FieldByName('COD_SUBPRODUTO').AsInteger;
			DMESTOQUE.TEstoque.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
			DMESTOQUE.TEstoque.Open;
		    If Not DMESTOQUE.TEstoque.IsEmpty
	        Then Begin
	           DMESTOQUE.TEstoque.Edit;
	           DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMESTOQUE.TEstoque.FieldByName('ESTFISICO').AsCurrency-DMESTOQUE.Alx3.FieldByName('QTD').AsCurrency;
	           DMESTOQUE.TEstoque.post;
              DMEstoque.TransacEstoque.CommitRetaining;
	        End;
           DMESTOQUE.Alx3.Next;
	    End;
       DMESTOQUE.Alx.Next;
     End;
   Except
   	result:=False;
   end;
End;

//Filtra os produtos relacionados para produção, mas ainda não produzidos
Procedure TFProducao.FiltraProduto;
Begin
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' select * From Producao ');
   DMESTOQUE.Alx.SQL.Add(' left join fchtecprod on fchtecprod.cod_fchtecprod = producao.cod_fchtecprod ');
   DMESTOQUE.Alx.SQL.Add(' left join subproduto on subproduto.cod_subproduto = fchtecprod.cod_subproduto ');
   DMESTOQUE.Alx.SQL.Add(' Where producao.produzido='+#39+'0'+#39);
   DMESTOQUE.Alx.Open;
   If Not DMESTOQUE.Alx.IsEmpty
   Then Begin
   	XCOD_FCHTEC:=DMESTOQUE.Alx.FieldByName('COD_FCHTECPROD').AsInteger;
   	FiltraSlave;
   End
   Else Begin
   	XCOD_FCHTEC:=-1;
   	FiltraSlave;
	End;
End;

//Filtra Produtos Servicos e Despesas Que serão necessários para a producao
Procedure TFProducao.FiltraProduc;
Begin
   EdVlrTotProduc.ValueNumeric:=0;
	//materia prima
	//Calcula Total
	DMESTOQUE.Alx1.Close;
	DMESTOQUE.Alx1.SQL.Clear;
	DMESTOQUE.Alx1.SQL.Add('select Sum(iprdmat.vlrtot) AS VLRTOTAL, sum(iprdmat.qtd) AS QTDTOTAL ');
	DMESTOQUE.Alx1.SQL.Add('from iprdmat ');
	DMESTOQUE.Alx1.SQL.Add('left join subproduto on subproduto.cod_subproduto=iprdmat.cod_subproduto ');
	DMESTOQUE.Alx1.SQL.Add('left join unidade on SubProduto.COD_UNIDVENDA=unidade.cod_unidade ');
   DMESTOQUE.Alx1.SQL.Add('Where (iprdmat.cod_producao=:CODPRODUC) ');
	DMESTOQUE.Alx1.ParamByName('CODPRODUC').AsInteger:=XCOD_MESTRE;
	DMESTOQUE.Alx1.Open;
   EdVlrTotProduc.ValueNumeric:=EdVlrTotProduc.ValueNumeric+DMESTOQUE.Alx1.FieldByName('VLRTOTAL').AsCurrency;
//   EdQtdTotProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTDTOTAL').AsCurrency;
//   EdVlrTotProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VLRTOTAL').AsCurrency;

	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.Alx1.Close;
	DMESTOQUE.Alx1.SQL.Clear;
	DMESTOQUE.Alx1.SQL.Add('Select iprdmat.cod_producao, iprdmat.cod_iprdmat, ');
	DMESTOQUE.Alx1.SQL.Add('iprdmat.qtd, iprdmat.class, subproduto.descricao, ');
	DMESTOQUE.Alx1.SQL.Add('unidade.sigla_unid, iprdmat.vlrunit, iprdmat.vlrtot AS TOTAL ');
	DMESTOQUE.Alx1.SQL.Add('from iprdmat ');
	DMESTOQUE.Alx1.SQL.Add('left join subproduto on subproduto.cod_subproduto=iprdmat.cod_subproduto ');
	DMESTOQUE.Alx1.SQL.Add('left join unidade on SubProduto.COD_UNIDVENDA=unidade.cod_unidade	');
   DMESTOQUE.Alx1.SQL.Add('Where (iprdmat.cod_producao=:CODPRODUC) ');
	DMESTOQUE.Alx1.ParamByName('CODPRODUC').AsInteger:=XCOD_MESTRE;
	DMESTOQUE.Alx1.Open;

	//mão de obra
	//Calcula Total
	DMESTOQUE.Alx2.Close;
	DMESTOQUE.Alx2.SQL.Clear;
	DMESTOQUE.Alx2.SQL.Add('select Sum(iprdmao.vlrtot) AS VLRTOTAL, sum(iprdmao.qtd) AS QTDTOTAL from iprdmao ');
	DMESTOQUE.Alx2.SQL.Add('left join subservico on subservico.cod_subservico=iprdmao.cod_subservico ');
	DMESTOQUE.Alx2.SQL.Add('Where iprdmao.cod_producao=:CODPRODUCAO ');
	DMESTOQUE.Alx2.ParamByName('CODPRODUCAO').AsInteger:=XCOD_MESTRE;
	DMESTOQUE.Alx2.Open;
   EdVlrTotProduc.ValueNumeric:=EdVlrTotProduc.ValueNumeric+DMESTOQUE.Alx2.FieldByName('VLRTOTAL').AsCurrency;
//   EdQtdTotServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('QTDTOTAL').AsCurrency;
//   EdVlrTotServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('VLRTOTAL').AsCurrency;

	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.Alx2.Close;
	DMESTOQUE.Alx2.SQL.Clear;
	DMESTOQUE.Alx2.SQL.Add('Select iprdmao.cod_producao, iprdmao.cod_iprdmao,  ');
	DMESTOQUE.Alx2.SQL.Add('iprdmao.qtd, iprdmao.class, subservico.descricao, ');
	DMESTOQUE.Alx2.SQL.Add('iprdmao.vlrunit, iprdmao.vlrtot as TOTAL ');
	DMESTOQUE.Alx2.SQL.Add('from iprdmao ');
	DMESTOQUE.Alx2.SQL.Add('left join subservico on subservico.cod_subservico=iprdmao.cod_subservico ');
	DMESTOQUE.Alx2.SQL.Add('Where iprdmao.cod_producao=:CODPRODUC ');
	DMESTOQUE.Alx2.ParamByName('CODPRODUC').AsInteger:=XCOD_MESTRE;
	DMESTOQUE.Alx2.Open;

      //TRABALHANDO COM DESPESAS
   //CALCULA TOTAL
   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add('select Sum(despadic.vlrtotfin) AS TOT, sum(despadic.qtd) as TOTQTD From despadic Where (despadic.gerador='+#39+'PRODUCAO'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.Alx3.ParamByName('COD_GERADOR').AsInteger:=XCOD_MESTRE;
	DMESTOQUE.Alx3.Open;
   EdVlrTotProduc.ValueNumeric:=EdVlrTotProduc.ValueNumeric+DMESTOQUE.Alx3.FieldByName('TOT').AsCurrency;   
//   EdVlrTotDesp.ValueNumeric:=DMESTOQUE.Alx2.FieldByName('TOT').AsCurrency;
//   EdQtdTotDesp.ValueNumeric:=DMESTOQUE.Alx2.FieldByName('TOTQTD').AsCurrency;

   //FILTRA DESPESAS
   DMESTOQUE.TDesp.Close;
   DMESTOQUE.TDesp.SQL.Clear;
   DMESTOQUE.TDesp.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'PRODUCAO'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.TDesp.ParamByName('COD_GERADOR').AsInteger:=XCOD_MESTRE;
	DMESTOQUE.TDesp.Open;
   //INSERE TOTAL DE PROD E SERV
//   EdTot.ValueNumeric:=EdVlrTotProd.ValueNumeric+EdVlrTotServ.ValueNumeric;

End;

//Filtra Produtos Servicos e Despesas
Procedure TFProducao.FiltraSlave;
Begin
	//materia prima
	//Calcula Total
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('select Sum((estoque.valrep*itfchtecprod.qtdutiliz)) AS VLRTOTAL, sum(itfchtecprod.qtdutiliz) AS QTDTOTAL');
	DMESTOQUE.TSlave.SQL.Add('from itfchtecprod ');
	DMESTOQUE.TSlave.SQL.Add('left join subproduto on subproduto.cod_subproduto=itfchtecprod.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add('left join estoque ON estoque.cod_subprod=subproduto.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add('left join unidade on SubProduto.COD_UNIDVENDA=unidade.cod_unidade	');
   DMESTOQUE.TSlave.SQL.Add('Where (itfchtecprod.cod_fchtecprod=:CODFCHTEC) AND ');
   DMESTOQUE.TSlave.SQL.Add('(ESTOQUE.COD_LOJA=:CODLOJA) ');
	DMESTOQUE.TSlave.ParamByName('CODFCHTEC').AsInteger:=XCOD_FCHTEC;
	DMESTOQUE.TSlave.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	DMESTOQUE.TSlave.Open;
//   EdQtdTotProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('QTDTOTAL').AsCurrency;
//   EdVlrTotProd.ValueNumeric:=DMESTOQUE.TSlave.FieldByName('VLRTOTAL').AsCurrency;

	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlave.Close;
	DMESTOQUE.TSlave.SQL.Clear;
	DMESTOQUE.TSlave.SQL.Add('Select itfchtecprod.cod_fchtecprod, itfchtecprod.cod_itfchtecprod, ');
	DMESTOQUE.TSlave.SQL.Add('itfchtecprod.qtdutiliz, itfchtecprod.class, subproduto.descricao, itfchtecprod.cod_subproduto,');
	DMESTOQUE.TSlave.SQL.Add('unidade.sigla_unid, estoque.valrep, (estoque.valrep*itfchtecprod.qtdutiliz) AS TOTAL ');
	DMESTOQUE.TSlave.SQL.Add('from itfchtecprod ');
	DMESTOQUE.TSlave.SQL.Add('left join subproduto on subproduto.cod_subproduto=itfchtecprod.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add('left join estoque ON estoque.cod_subprod=subproduto.cod_subproduto ');
	DMESTOQUE.TSlave.SQL.Add('left join unidade on SubProduto.COD_UNIDVENDA=unidade.cod_unidade	');
   DMESTOQUE.TSlave.SQL.Add('Where (itfchtecprod.cod_fchtecprod=:CODFCHTEC) AND ');
   DMESTOQUE.TSlave.SQL.Add('(ESTOQUE.COD_LOJA=:CODLOJA) ');
	DMESTOQUE.TSlave.ParamByName('CODFCHTEC').AsInteger:=XCOD_FCHTEC;
	DMESTOQUE.TSlave.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
	DMESTOQUE.TSlave.Open;

	//mão de obra
	//Calcula Total
	DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('select Sum((itfchtecserv.qtdutiliz*subservico.vlrfinal)) AS VLRTOTAL, sum(itfchtecserv.qtdutiliz) AS QTDTOTAL from itfchtecServ ');
	DMESTOQUE.TSlaveServ.SQL.Add('left join subservico on subservico.cod_subservico=itfchtecServ.cod_subservico ');
	DMESTOQUE.TSlaveServ.SQL.Add('Where itfchtecserv.cod_fchtecprod=:CODFCHTEC ');
	DMESTOQUE.TSlaveServ.ParamByName('CODFCHTEC').AsInteger:=XCOD_FCHTEC;
	DMESTOQUE.TSlaveServ.Open;
//   EdQtdTotServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('QTDTOTAL').AsCurrency;
//   EdVlrTotServ.ValueNumeric:=DMESTOQUE.TSlaveServ.FieldByName('VLRTOTAL').AsCurrency;

	//INSERE COMANDOS PARA FILTRAR
	DMESTOQUE.TSlaveServ.Close;
	DMESTOQUE.TSlaveServ.SQL.Clear;
	DMESTOQUE.TSlaveServ.SQL.Add('Select itfchtecserv.cod_fchtecprod, itfchtecserv.cod_itfchtecserv, ');
	DMESTOQUE.TSlaveServ.SQL.Add('itfchtecserv.qtdutiliz, itfchtecserv.class, subservico.descricao, subservico.cod_subservico, ');
	DMESTOQUE.TSlaveServ.SQL.Add('subservico.vlrfinal, (itfchtecserv.qtdutiliz*subservico.vlrfinal) as TOTAL ');
	DMESTOQUE.TSlaveServ.SQL.Add('from itfchtecserv ');
	DMESTOQUE.TSlaveServ.SQL.Add('left join subservico on subservico.cod_subservico=itfchtecServ.cod_subservico ');
	DMESTOQUE.TSlaveServ.SQL.Add('Where itfchtecserv.cod_fchtecprod=:CODFCHTEC ');
	DMESTOQUE.TSlaveServ.ParamByName('CODFCHTEC').AsInteger:=XCOD_FCHTEC;
	DMESTOQUE.TSlaveServ.Open;

   //TRABALHANDO COM DESPESAS
   //CALCULA TOTAL
   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add('select Sum(despadic.vlrtotfin) AS TOT, sum(despadic.qtd) as TOTQTD From despadic Where (despadic.gerador='+#39+'FCHTECPROD'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.Alx3.ParamByName('COD_GERADOR').AsInteger:=XCOD_FCHTEC;
	DMESTOQUE.Alx3.Open;
//   EdVlrTotDesp.ValueNumeric:=DMESTOQUE.Alx2.FieldByName('TOT').AsCurrency;
//   EdQtdTotDesp.ValueNumeric:=DMESTOQUE.Alx2.FieldByName('TOTQTD').AsCurrency;

   //FILTRA DESPESAS
   DMESTOQUE.ALX4.Close;
   DMESTOQUE.ALX4.SQL.Clear;
   DMESTOQUE.ALX4.SQL.Add('select * From despadic Where (despadic.gerador='+#39+'FCHTECPROD'+#39+') AND (despadic.cod_gerador=:COD_GERADOR)');
	DMESTOQUE.ALX4.ParamByName('COD_GERADOR').AsInteger:=XCOD_FCHTEC;
	DMESTOQUE.ALX4.Open;
   //INSERE TOTAL DE PROD E SERV
//   EdTot.ValueNumeric:=EdVlrTotProd.ValueNumeric+EdVlrTotServ.ValueNumeric;
End;

Procedure TFProducao.HabPainelM(Painel:Integer);//Trabalha paineis em relação tabcontrol
Begin
	 //desabilita paineis
	 PMatPrimaM.Visible:=False;
	 PMaoObraM.Visible:=False;
	 //DESABILITA BOTÕES
    BtnPMatPrimM.Color:=$00D1D1D1;
    BtnPMaoObraM.Color:=$00D1D1D1;
    BtnPDespM.Color:=$00D1D1D1;
    BtnPMaoObraM.Font.Color:=clWindowText;
    Case painel of
        0: Begin
			 PMatPrimaM.Visible:=True;
			 PMatPrimaM.BringToFront;
            BtnPMatPrimM.Color:=$00FFEBD7;
           end;
        1: Begin
            PMaoObraM.Visible:=TRUE;
            PMaoObraM.BringToFront;
            BtnPMaoObraM.Color:=$00D2D2FF;
           end;
        2: Begin
            PDespM.Visible:=TRUE;
            PDespM.BringToFront;
            BtnPDespM.Color:=$00AAFFFF;
           end;
    End;
End;

procedure TFProducao.BtnPMatPrimClick(Sender: TObject);
begin
  inherited;
   HabPainel(0);
end;

procedure TFProducao.BtnPMaoObraClick(Sender: TObject);
begin
  inherited;
   HabPainel(1);
end;

procedure TFProducao.BtnPDespClick(Sender: TObject);
begin
  inherited;
   HabPainel(2);
end;

procedure TFProducao.FormActivate(Sender: TObject);
begin
  inherited;
   DBGrid3.DataSource:=DMESTOQUE.DSSlaveServ;
   HabPainel(0);
   HabPainelm(0);
   FrmProduc.EDCodigo.SetFocus;
   FiltraProduto;
  	//FILTRA FICHA TECNICA
   If FiltraTabela(DMESTOQUE.TFchTec, 'FCHTECPROD', 'COD_SUBPRODUTO', IntToStr(DMESTOQUE.Alx.FieldByName('COD_SUBPRODUTO').AsInteger), '')=True
   Then Begin
   	XCOD_FCHTEC:=DMESTOQUE.TFchTec.fieldbyname('COD_FCHTECPROD').AsInteger;
       XCOD_MESTRE:=DMESTOQUE.Alx.FieldByName('COD_PRODUCAO').AsInteger;
       LFchTec.Caption:='FICHA TÉNCICA ['+DMESTOQUE.TFchTec.fieldbyname('PORCAO').AsString+']:';
		LMatPrim.Caption:='MAT. PRIMA NECESSÁRIA ['+DMESTOQUE.Alx.fieldbyname('QTD').AsString+']:';
       FiltraSlave;
       FiltraProduc;
   End
   Else begin
   	XCOD_FCHTEC:=-1;
       XCOD_MESTRE:=-1;
   	FiltraSlave;
       FiltraProduc;
       LFchTec.Caption:='FICHA TÉNCICA:';
		LMatPrim.Caption:='MAT. PRIMA NECESSÁRIA:';
   End
end;

procedure TFProducao.FrmProducEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
   	If FrmProduc.EDCodigo.Text<>''
       Then Begin
	 	   If FiltraTabela(DMESTOQUE.WSIMILAR, 'VWSIMILAR', 'COD_INTERNO', FrmProduc.EDCodigo.Text, '')=True
	       Then Begin //Slecionou o registro procurado
	       		XCOD_SUBPROD:=DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsInteger;
           	FrmProduc.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
           	FrmProduc.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
          End
          Else Begin
               XCOD_SUBPROD:=-1;
           	FrmProduc.EDCodigo.Text:='';
           	FrmProduc.EdDescricao.Text:='';
          End;
       End
       Else Begin
          XCOD_SUBPROD:=-1;
          FrmProduc.EDCodigo.Text:='';
          FrmProduc.EdDescricao.Text:='';
       End;
   End;
end;
procedure TFProducao.FrmProducBTNOPENClick(Sender: TObject);
begin
  inherited;
	filtraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', ' WHERE COD_LOJA='+FMenu.LCODLOJA.Caption+' ORDER BY COD_INTERNO');

	If AbrirForm(TFProduto, FProduto, 1)='Selected'
   Then Begin
		XCOD_SUBPROD:=DMESTOQUE.WSIMILAR.FieldByName('COD_SUBPRODUTO').AsInteger;   
      	//FILTRA FICHA TECNICA
	   	If FiltraTabela(DMESTOQUE.TFchTec, 'FCHTECPROD', 'COD_SUBPRODUTO', IntToStr(XCOD_SUBPROD), '')=True
      	Then Begin
			If DMESTOQUE.TFchTec.fieldbyname('PORCAO').AsInteger=0
           Then Begin
				Mensagem('OPÇÃO BLOQUEADA', 'A ficha técnica deste produto aprenta uma porção igual à 0 (zero). Esta porção deve ser superior a 0 (zero)!', '', 1, 1, False, 'i');
				Exit;
           End;
      		FrmProduc.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
      		FrmProduc.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_INTERNO').AsString;
           XCOD_FCHTEC:=DMESTOQUE.TFchTec.fieldbyname('COD_FCHTECPROD').AsInteger;
           XCOD_FCHTECINS:=DMESTOQUE.TFchTec.fieldbyname('COD_FCHTECPROD').AsInteger;
           LFchTec.Caption:='FICHA TÉNCICA ['+DMESTOQUE.TFchTec.fieldbyname('PORCAO').AsString+']:';
           XPORCAO:=DMESTOQUE.TFchTec.fieldbyname('PORCAO').AsCurrency;
           EDQTD.ValueNumeric:=DMESTOQUE.TFchTec.fieldbyname('PORCAO').AsCurrency;
           FiltraSlave;
      	End
      	Else Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Este produto não pode ser adicionado a lista de produção, ele não possui ficha técnica!', '', 1, 1, False, 'i');
      End;
   End;
end;

procedure TFProducao.FrmProducBTNMINUSClick(Sender: TObject);
begin
  inherited;
	XCOD_SUBPROD:=-1;
   FrmProduc.EDCodigo.TEXT:='';
   FrmProduc.EdDescricao.TEXT:='';
end;

procedure TFProducao.FlatButton1Click(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ACEFCHTECPROD', 'M')=False Then
  		Exit;

    AbrirForm(TFFchTecProd, FFchTecProd, 0);
end;

procedure TFProducao.BitBtn1Click(Sender: TObject);
begin
  inherited;
   //Valida quanto a quantidade
   If EDQTD.ValueNumeric<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário que Você infome uma quantidade superior a 0 (zero) para ser produzida!', '', 1, 1, False, 'a');
       EDQTD.SetFocus;
	    Exit;
   End;

   //valida quanto ao produto selecionado
   If XCOD_SUBPROD<=0
   Then Begin
		Mensagem('OPÇÃO BLOQUEADA', 'É necessário que um produto seja selecionado para haver uma inserção a lista de produção!', '', 1, 1, False, 'a');
		FrmProduc.BTNOPEN.SetFocus;
	    Exit;
   End;
   Try
      Try
		XCOD_MESTRE:=InserReg(DMESTOQUE.TProduc, 'PRODUCAO', 'COD_PRODUCAO');
		DMESTOQUE.TProduc.FieldByName('COD_PRODUCAO').AsInteger:=XCOD_MESTRE;
		DMESTOQUE.TProduc.FieldByName('COD_FCHTECPROD').AsInteger:=XCOD_FCHTECINS;
		DMESTOQUE.TProduc.FieldByName('QTD').AsCurrency:=EDQTD.ValueNumeric;
		DMESTOQUE.TProduc.FieldByName('PRODUZIDO').AsString:='0';
       DMESTOQUE.TProduc.Post;
       LMatPrim.Caption:='MAT. PRIMA NECESSÁRIA['+EDQTD.Text+']:';

       XCOD_FCHTEC:=XCOD_FCHTECINS;
       FiltraSlave;

       //INSERE MATERIA PRIMA A PRODUÇÃO
       DMESTOQUE.TSlave.First;
       While Not DMESTOQUE.TSlave.Eof do
       Begin
			XCOD_NEWMAT:=InserReg(DMESTOQUE.TIPrdMat, 'IPRDMAT', 'COD_IPRDMAT');
			DMESTOQUE.TIPrdMat.FieldByName('COD_IPRDMAT').AsInteger:=XCOD_NEWMAT;
			DMESTOQUE.TIPrdMat.FieldByName('COD_PRODUCAO').AsInteger:=XCOD_MESTRE;
			DMESTOQUE.TIPrdMat.FieldByName('COD_SUBPRODUTO').AsInteger:=DMESTOQUE.TSlave.FieldByName('COD_SUBPRODUTO').AsInteger;
			DMESTOQUE.TIPrdMat.FieldByName('QTD').AsCurrency:=(DMESTOQUE.TSlave.FieldByName('QTDUTILIZ').AsCurrency/XPORCAO)*EDQTD.ValueNumeric;
			DMESTOQUE.TIPrdMat.FieldByName('CLASS').AsString:=DMESTOQUE.TSlave.FieldByName('CLASS').AsString;
			DMESTOQUE.TIPrdMat.FieldByName('VLRUNIT').AsCurrency:=DMESTOQUE.TSlave.FieldByName('VALREP').AsCurrency;
			DMESTOQUE.TIPrdMat.FieldByName('VLRTOT').AsCurrency:=DMESTOQUE.TIPrdMat.FieldByName('VLRUNIT').AsCurrency*DMESTOQUE.TIPrdMat.FieldByName('QTD').AsCurrency;
			DMESTOQUE.TIPrdMat.Post;
           DMESTOQUE.TSlave.Next;
       End;
       //INSERE MÃO DE OBRA A PRODUÇÃO
       DMESTOQUE.TSlaveServ.First;
       While Not DMESTOQUE.TSlaveServ.Eof do
       Begin
			XCOD_NEWMAO:=InserReg(DMESTOQUE.TIPrdMao, 'IPRDMAO', 'COD_IPRDMAO');
			DMESTOQUE.TIPrdMao.FieldByName('COD_IPRDMAO').AsInteger:=XCOD_NEWMAO;
			DMESTOQUE.TIPrdMao.FieldByName('COD_PRODUCAO').AsInteger:=XCOD_MESTRE;
			DMESTOQUE.TIPrdMao.FieldByName('COD_SUBSERVICO').AsInteger:=DMESTOQUE.TSlaveServ.FieldByName('COD_SUBSERVICO').AsInteger;
			DMESTOQUE.TIPrdMao.FieldByName('QTD').AsCurrency:=(DMESTOQUE.TSlaveServ.FieldByName('QTDUTILIZ').AsCurrency/XPORCAO)*EDQTD.ValueNumeric;
			DMESTOQUE.TIPrdMao.FieldByName('CLASS').AsString:=DMESTOQUE.TSlaveServ.FieldByName('CLASS').AsString;
			DMESTOQUE.TIPrdMao.FieldByName('VLRUNIT').AsCurrency:=DMESTOQUE.TSlaveServ.FieldByName('VLRFINAL').AsCurrency;
			DMESTOQUE.TIPrdMao.FieldByName('VLRTOT').AsCurrency:=DMESTOQUE.TIPrdMao.FieldByName('VLRUNIT').AsCurrency*DMESTOQUE.TIPrdMao.FieldByName('QTD').AsCurrency;
           DMESTOQUE.TIPrdMao.Post;
			DMESTOQUE.TSlaveServ.Next;
		end;
       //INSERE DESPESAS DA PRODUÇÃO
       DMESTOQUE.Alx4.First;
       While Not DMESTOQUE.Alx4.Eof do
       Begin
			XCOD_NEWDESP:=InserReg(DMESTOQUE.TDesp, 'DESPADIC', 'COD_DESPADIC');
			DMESTOQUE.TDesp.FieldByName('COD_DESPADIC').AsInteger:=XCOD_NEWDESP;
			DMESTOQUE.TDesp.FieldByName('COD_GERADOR').AsInteger:=XCOD_MESTRE;
			DMESTOQUE.TDesp.FieldByName('GERADOR').AsString:='PRODUCAO';
			DMESTOQUE.TDesp.FieldByName('DESPESA').AsString:=DMESTOQUE.Alx4.FieldByName('DESPESA').AsString;
			DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency:=(DMESTOQUE.Alx4.FieldByName('QTD').AsCurrency/XPORCAO)*EDQTD.ValueNumeric;
			DMESTOQUE.TDesp.FieldByName('VLRREAL').AsCurrency:=DMESTOQUE.Alx4.FieldByName('VLRREAL').AsCurrency;
			DMESTOQUE.TDesp.FieldByName('VLRFINAL').AsCurrency:=DMESTOQUE.Alx4.FieldByName('VLRFINAL').AsCurrency;
			DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency:=DMESTOQUE.Alx4.FieldByName('VLRFINAL').AsCurrency*DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency;
			DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency:=DMESTOQUE.TDesp.FieldByName('VLRTOTFIN').AsCurrency-(DMESTOQUE.TDesp.FieldByName('VLRREAL').AsCurrency*DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency);
			DMESTOQUE.TDesp.FieldByName('LUCPER').AsCurrency:=((DMESTOQUE.TDesp.FieldByName('LUCMOE').AsCurrency*100)/(DMESTOQUE.TDesp.FieldByName('VLRREAL').AsCurrency*DMESTOQUE.TDesp.FieldByName('QTD').AsCurrency));
			DMESTOQUE.TDesp.Post;
			DMESTOQUE.Alx4.Next;
       End;
       DMESTOQUE.TProduc.ApplyUpdates;
       DMESTOQUE.TransacEstoque.CommitRetaining;
      Except
           DMESTOQUE.TransacEstoque.RollbackRetaining;
			Mensagem('A T E N Ç Ã O', 'Não foi possível Adicionar este produto. Tente novamente após reiniciar o sistema.', '', 1, 1, False, 'a');
      End;
       FiltraProduto;
       FiltraProduc;
       FiltraTabela(DMESTOQUE.TProduc, 'PRODUCAO', 'COD_PRODUCAO', IntToStr(XCOD_MESTRE), '');
       DMESTOQUE.TProduc.Edit;
       DMESTOQUE.TProduc.FieldByName('VLRTOTAL').AsCurrency:=EdVlrTotProduc.ValueNumeric;
       DMESTOQUE.TProduc.Post;
       DMESTOQUE.TProduc.ApplyUpdates;
       DMESTOQUE.TransacEstoque.CommitRetaining;
       FiltraProduto;
       FiltraProduc;       
   Except
       DMESTOQUE.TransacEstoque.RollbackRetaining;
		Mensagem('A T E N Ç Ã O', 'Não foi possível Adicionar este produto. Tente novamente após reiniciar o sistema.', '', 1, 1, False, 'a');
       FrmProduc.BTNOPEN.SetFocus;
   End;
end;

procedure TFProducao.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  	//FILTRA FICHA TECNICA
   If FiltraTabela(DMESTOQUE.TFchTec, 'FCHTECPROD', 'COD_SUBPRODUTO', IntToStr(DMESTOQUE.Alx.FieldByName('COD_SUBPRODUTO').AsInteger), '')=True
   Then Begin
   	XCOD_FCHTEC:=DMESTOQUE.TFchTec.fieldbyname('COD_FCHTECPROD').AsInteger;
       XCOD_MESTRE:=DMESTOQUE.Alx.FieldByName('COD_PRODUCAO').AsInteger;
       LFchTec.Caption:='FICHA TÉNCICA ['+DMESTOQUE.TFchTec.fieldbyname('PORCAO').AsString+']:';
		LMatPrim.Caption:='MAT. PRIMA NECESSÁRIA ['+DMESTOQUE.Alx.fieldbyname('QTD').AsString+']:';
       FiltraSlave;
       FiltraProduc;
   End
   Else begin
   	XCOD_FCHTEC:=-1;
       XCOD_MESTRE:=-1;
   	FiltraSlave;
       FiltraProduc;       
       LFchTec.Caption:='FICHA TÉNCICA:';
		LMatPrim.Caption:='MAT. PRIMA NECESSÁRIA:';
   End
end;

procedure TFProducao.BtnPMatPrimMClick(Sender: TObject);
begin
  inherited;
   HabPainelM(0);
end;

procedure TFProducao.BtnPMaoObraMClick(Sender: TObject);
begin
  inherited;
   HabPainelM(1);
end;

procedure TFProducao.BtnPDespMClick(Sender: TObject);
begin
  inherited;
   HabPainelM(2);
end;

procedure TFProducao.FlatButton2Click(Sender: TObject);
begin
  inherited;
   ExecRun('Iniciada verificação de estoque para produção. Aguarde...');
   If VerificEstoque=False Then
		Mensagem('A T E N Ç Ã O', 'O estoque de Matéria Prima não passou pelo teste de verificação. Pressione o botão Analisar Verificação para obter mais informações sobre este teste.' , '', 1, 1, False, 'a')
   Else
		Mensagem('I N F O R M A Ç Ã O', 'O estoque de Matéria Prima passou pelo teste de verificação. Pressione o botão Analisar Verificação para obter mais informações sobre este teste.' , '', 1, 1, False, 'a');
   PComunica.Visible:=False;
   DMESTOQUE.TransacEstoque.CommitRetaining;
   Activate;
end;

procedure TFProducao.FlatButton4Click(Sender: TObject);
begin
  inherited;
    //confirmação para Produzir selecioandos
    If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente industrializar os produtos selecionados?' , '', 2, 3, False, 'c')=2
    Then Begin
    	ExecRun('I N D U S T R I A L I Z A Ç Ã O   I N I C I A D A .  A G U A R D E ...');
  	If VerificEstoque=False
       Then Begin
			Mensagem('A T E N Ç Ã O', 'O estoque de Matéria Prima não passou pelo teste de verificação. Pressione o botão Analisar Verificação para obter mais informações sobre este teste.' , '', 1, 1, False, 'a');
			PComunica.Visible:=False;
           Exit;
       End;
   	If Produzir=False
       Then Begin
			Mensagem('A T E N Ç Ã O', 'Ocorreu um problema ao industrializar os produtos. A industrialização não foi realizada.'+FMenu.TIPOAUX , '', 1, 1, False, 'a');
           DMESTOQUE.TransacEstoque.RollbackRetaining;
       End
       Else Begin
           DMESTOQUE.TransacEstoque.CommitRetaining;
           DMESTOQUE.TransacEstoque.CommitRetaining;
			Mensagem('I N F O R M A Ç Ã O', 'A industrialização ocorreu com sucesso!', '', 1, 1, False, 'i');
           Activate;
       End;
		PComunica.Visible:=False;
	 End;
end;

procedure TFProducao.FlatButton6Click(Sender: TObject);
begin
  inherited;
  	DMESTOQUE.TRel.close;
	DMESTOQUE.TRel.sql.Clear;
	DMESTOQUE.TRel.SQL.Add('Select distinct(subproduto.descricao), subproduto.codprodfabr, subproduto.contrint, estoque.estfisico, estoque.estsimulado, (estoque.estfisico-estoque.estsimulado) AS SALDO from estoque ');
	DMESTOQUE.TRel.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
	DMESTOQUE.TRel.SQL.Add('left join iprdmat on iprdmat.cod_subproduto = subproduto.cod_subproduto ');
	DMESTOQUE.TRel.SQL.Add('where exists (Select * from iprdmat where iprdmat.cod_subproduto = subproduto.cod_subproduto) ');
   DMESTOQUE.TRel.Open;
	FSRel.LoadFromFile('C:\MZR\MACS\Rel\SimulaProd.frf');
   FSRel.ShowReport;
end;

procedure TFProducao.FlatButton3Click(Sender: TObject);
begin
  inherited;
	DMESTOQUE.TRFch.Close;
	DMESTOQUE.TRFch.SQL.Clear;
	DMESTOQUE.TRFch.SQL.Add('select * from fchtecprod ');
	DMESTOQUE.TRFch.SQL.Add('left join producao on producao.cod_fchtecprod = fchtecprod.cod_fchtecprod ');
	DMESTOQUE.TRFch.SQL.Add('Left join vwsimilar on fchtecprod.cod_subproduto=vwsimilar.cod_subproduto ');
   DMESTOQUE.TRFch.SQL.Add(' Where producao.produzido='+#39+'0'+#39);
	DMESTOQUE.TRFch.SQL.Text;
	DMESTOQUE.TRFch.Open;
   If Not DMESTOQUE.TRFch.IsEmpty
   Then begin
       QrLDesc1.Caption:='Em lista de Produção';
   	QrFchTec.Preview;
   End;
end;

procedure TFProducao.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  //FILTRA MATERIA PRIMA
	DMESTOQUE.TRFchP.Close;
	DMESTOQUE.TRFchP.SQL.Clear;
	DMESTOQUE.TRFchP.SQL.Add('Select * from itfchtecprod');
	DMESTOQUE.TRFchP.SQL.Add('left join subproduto on subproduto.cod_subproduto=itfchtecprod.cod_subproduto');
	DMESTOQUE.TRFchP.SQL.Add('where itfchtecprod.cod_fchtecprod=:CODFCHTEC');
   DMESTOQUE.TRFchP.SQL.Add('order by subproduto.descricao');
	DMESTOQUE.TRFchP.ParamByName('CODFCHTEC').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchP.SQL.Text;
	DMESTOQUE.TRFchP.Open;
	//FILTRA MAO DE OBRA
	DMESTOQUE.TRFchM.Close;
	DMESTOQUE.TRFchM.SQL.Clear;
	DMESTOQUE.TRFchM.SQL.Add('Select * from itfchtecserv');
	DMESTOQUE.TRFchM.SQL.Add('left join Subservico on subservico.cod_subservico=itfchtecserv.cod_subservico');
	DMESTOQUE.TRFchM.SQL.Add('where itfchtecserv.cod_fchtecprod=:CODFCHTEC');
   DMESTOQUE.TRFchM.SQL.Add('order by subservico.descricao');
	DMESTOQUE.TRFchM.ParamByName('CODFCHTEC').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchM.SQL.Text;
	DMESTOQUE.TRFchM.Open;
   //FILTRA DESPESAS
	DMESTOQUE.TRFchD.Close;
	DMESTOQUE.TRFchD.SQL.Clear;
	DMESTOQUE.TRFchD.SQL.Add('Select * from despadic');
	DMESTOQUE.TRFchD.SQL.Add('where (despadic.gerador='+#39+'FCHTECPROD'+#39+') AND (despadic.cod_gerador=:CODGERADOR)');
   DMESTOQUE.TRFchD.SQL.Add('order by despadic.despesa');
	DMESTOQUE.TRFchD.ParamByName('CODGERADOR').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchD.SQL.Text;
	DMESTOQUE.TRFchD.Open;
	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;
end;

procedure TFProducao.QrFchTecBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
   XTOTUNIT:=0;
   XVLRTOT:=0;
end;

procedure TFProducao.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//acumula valores para sumário do relatório
   XTOTUNIT:=XTOTUNIT+DMESTOQUE.TRFchP.FieldByName('QTDUTILIZ').AsCurrency;
   XVLRTOT:=XVLRTOT+DMESTOQUE.TRFchP.FieldByName('VLRTOT').AsCurrency;
   XVITOT:=XVITOT+DMESTOQUE.TRFchP.FieldByName('VLRTOT').AsCurrency;
   XVIUNIT:=XVIUNIT+DMESTOQUE.TRFchP.FieldByName('QTDUTILIZ').AsCurrency;
end;

procedure TFProducao.QRSubDetail4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//acumula valores para sumário do relatório
   XTOTUNIT:=XTOTUNIT+DMESTOQUE.TRFchM.FieldByName('QTDUTILIZ').AsCurrency;
   XVLRTOT:=XVLRTOT++DMESTOQUE.TRFchM.FieldByName('VLRTOT').AsCurrency;
   XVITOT:=XVITOT+DMESTOQUE.TRFchM.FieldByName('VLRTOT').AsCurrency;
   XVIUNIT:=XVIUNIT+DMESTOQUE.TRFchM.FieldByName('QTDUTILIZ').AsCurrency;
end;

procedure TFProducao.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//acumula valores para sumário do relatório
   XTOTUNIT:=XTOTUNIT+DMESTOQUE.TRFchD.FieldByName('QTD').AsCurrency;
   XVLRTOT:=XVLRTOT+DMESTOQUE.TRFchD.FieldByName('VLRTOTFIN').AsCurrency;
   XVITOT:=XVITOT+DMESTOQUE.TRFchD.FieldByName('VLRTOTFIN').AsCurrency;
   XVIUNIT:=XVIUNIT+DMESTOQUE.TRFchD.FieldByName('QTD').AsCurrency;
end;

procedure TFProducao.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   QRLVLRUNIT.Caption:=FormatFloat('####,##0.00', XTOTUNIT);
   QRLVLRTOT.Caption:=FormatFloat('####,##0.00', XVLRTOT);
end;

procedure TFProducao.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //PASSA VALOR AS LABELS
   QrLQtdP.Caption:=FormatFloat('####,##0.00', XVIUNIT);
   QrlVlrP.Caption:=FormatFloat('####,##0.00', XVITOT);
	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;
end;

procedure TFProducao.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //PASSA VALOR AS LABELS
   QrLQtdM.Caption:=FormatFloat('####,##0.00', XVIUNIT);
   QrlVlrM.Caption:=FormatFloat('####,##0.00', XVITOT);

	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;
end;

procedure TFProducao.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //PASSA VALOR AS LABELS
   QrLQtdD.Caption:=FormatFloat('####,##0.00', XVIUNIT);
   QrlVlrD.Caption:=FormatFloat('####,##0.00', XVITOT);

	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;

end;

procedure TFProducao.FlatButton5Click(Sender: TObject);
begin
  inherited;
	DMESTOQUE.TRFch.Close;
	DMESTOQUE.TRFch.SQL.Clear;
	DMESTOQUE.TRFch.SQL.Add('select producao.cod_producao as cod_fchtecprod, producao.dtproduc, vwsimilar.contrint, vwsimilar.codfabricante, vwsimilar.descricao, vwsimilar.marca, ');
	DMESTOQUE.TRFch.SQL.Add('producao.qtd AS PORCAO from producao ');
	DMESTOQUE.TRFch.SQL.Add('Left join fchtecprod on fchtecprod.cod_fchtecprod = producao.cod_fchtecprod ');
	DMESTOQUE.TRFch.SQL.Add('Left join vwsimilar on fchtecprod.cod_subproduto=vwsimilar.cod_subproduto ');
   DMESTOQUE.TRFch.SQL.Add(' Where producao.produzido='+#39+'0'+#39);
	DMESTOQUE.TRFch.SQL.Text;
	DMESTOQUE.TRFch.Open;
   If Not DMESTOQUE.TRFch.IsEmpty
   Then begin
       QrLDescP1.Caption:='Em lista de Produção';
   	QrFchProd.Preview;
   End;
end;

procedure TFProducao.QRBand8AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  //FILTRA MATERIA PRIMA
	DMESTOQUE.TRFchP.Close;
	DMESTOQUE.TRFchP.SQL.Clear;
	DMESTOQUE.TRFchP.SQL.Add('Select subproduto.contrint, subproduto.descricao, iprdmat.class, iprdmat.qtd as QTDUTILIZ, ');
	DMESTOQUE.TRFchP.SQL.Add('iprdmat.vlrunit, iprdmat.vlrtot from iprdmat ');
	DMESTOQUE.TRFchP.SQL.Add('left join subproduto on subproduto.cod_subproduto=iprdmat.cod_subproduto ');
	DMESTOQUE.TRFchP.SQL.Add('where iprdmat.cod_producao=:CODFCHTEC');
	DMESTOQUE.TRFchP.ParamByName('CODFCHTEC').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchP.SQL.Text;
	DMESTOQUE.TRFchP.Open;
	//FILTRA MAO DE OBRA
	DMESTOQUE.TRFchM.Close;
	DMESTOQUE.TRFchM.SQL.Clear;
	DMESTOQUE.TRFchM.SQL.Add(' Select subservico.descricao, iprdmao.class, iprdmao.qtd AS QTDUTILIZ, iprdmao.vlrtot, iprdmao.vlrunit');
	DMESTOQUE.TRFchM.SQL.Add(' from iprdmao ');
	DMESTOQUE.TRFchM.SQL.Add(' left join subservico on subservico.cod_subservico=iprdmao.cod_subservico ');
	DMESTOQUE.TRFchM.SQL.Add('where iprdmao.cod_producao=:CODFCHTEC');
	DMESTOQUE.TRFchM.ParamByName('CODFCHTEC').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchM.SQL.Text;
	DMESTOQUE.TRFchM.Open;
   //FILTRA DESPESAS
	DMESTOQUE.TRFchD.Close;
	DMESTOQUE.TRFchD.SQL.Clear;
	DMESTOQUE.TRFchD.SQL.Add('Select * from despadic');
	DMESTOQUE.TRFchD.SQL.Add('where (despadic.gerador='+#39+'PRODUCAO'+#39+') AND (despadic.cod_gerador=:CODGERADOR)');
	DMESTOQUE.TRFchD.ParamByName('CODGERADOR').AsInteger:=DMESTOQUE.TRFch.FieldByName('COD_FCHTECPROD').AsInteger;
	DMESTOQUE.TRFchD.SQL.Text;
	DMESTOQUE.TRFchD.Open;
	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;
end;

procedure TFProducao.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//acumula valores para sumário do relatório
   XTOTUNIT:=XTOTUNIT+DMESTOQUE.TRFchP.FieldByName('QTDUTILIZ').AsCurrency;
   XVLRTOT:=XVLRTOT+DMESTOQUE.TRFchP.FieldByName('VLRTOT').AsCurrency;
   XVITOT:=XVITOT+DMESTOQUE.TRFchP.FieldByName('VLRTOT').AsCurrency;
   XVIUNIT:=XVIUNIT+DMESTOQUE.TRFchP.FieldByName('QTDUTILIZ').AsCurrency;
   VLRTOTPORC:=VLRTOTPORC+DMESTOQUE.TRFchP.FieldByName('VLRTOT').AsCurrency;
end;

procedure TFProducao.QRSubDetail5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//acumula valores para sumário do relatório
   XTOTUNIT:=XTOTUNIT+DMESTOQUE.TRFchM.FieldByName('QTDUTILIZ').AsCurrency;
   XVLRTOT:=XVLRTOT++DMESTOQUE.TRFchM.FieldByName('VLRTOT').AsCurrency;
   XVITOT:=XVITOT+DMESTOQUE.TRFchM.FieldByName('VLRTOT').AsCurrency;
   XVIUNIT:=XVIUNIT+DMESTOQUE.TRFchM.FieldByName('QTDUTILIZ').AsCurrency;
   VLRTOTPORC:=VLRTOTPORC+DMESTOQUE.TRFchM.FieldByName('VLRTOT').AsCurrency;
end;

procedure TFProducao.QRSubDetail6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//acumula valores para sumário do relatório
   XTOTUNIT:=XTOTUNIT+DMESTOQUE.TRFchD.FieldByName('QTD').AsCurrency;
   XVLRTOT:=XVLRTOT+DMESTOQUE.TRFchD.FieldByName('VLRTOTFIN').AsCurrency;
   XVITOT:=XVITOT+DMESTOQUE.TRFchD.FieldByName('VLRTOTFIN').AsCurrency;
   XVIUNIT:=XVIUNIT+DMESTOQUE.TRFchD.FieldByName('QTD').AsCurrency;
   VLRTOTPORC:=VLRTOTPORC+DMESTOQUE.TRFchD.FieldByName('VLRTOTFIN').AsCurrency;
end;

procedure TFProducao.QRBand11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //PASSA VALOR AS LABELS
   QrLQtdPP.Caption:=FormatFloat('####,##0.00', XVIUNIT);
   QrlVlrPP.Caption:=FormatFloat('####,##0.00', XVITOT);
	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;

end;

procedure TFProducao.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //PASSA VALOR AS LABELS
   QrLQtdMP.Caption:=FormatFloat('####,##0.00', XVIUNIT);
   QrlVlrMP.Caption:=FormatFloat('####,##0.00', XVITOT);

	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;
end;

procedure TFProducao.QRBand13BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   //PASSA VALOR AS LABELS
   QrLQtdDP.Caption:=FormatFloat('####,##0.00', XVIUNIT);
   QrlVlrDP.Caption:=FormatFloat('####,##0.00', XVITOT);
   QrlVlrTotPorc.Caption:=FormatFloat('####,##0.00', VLRTOTPORC);
	//ZERAA CONADORES PARA O PRODUTO
   XVITOT:=0;
   XVIUNIT:=0;
   VLRTOTPORC:=0;
end;

procedure TFProducao.QRBand14BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   QRLVLRUNITP.Caption:=FormatFloat('####,##0.00', XTOTUNIT);
   QRLVLRTOTP.Caption:=FormatFloat('####,##0.00', XVLRTOT);
end;

procedure TFProducao.BitBtn2Click(Sender: TObject);
begin
  inherited;
  	TRY
   	XCOD_MESTRE:=DMESTOQUE.Alx.FieldByName('COD_PRODUCAO').AsInteger;
		//APAGA MATÉRIAS PRIMA
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add('delete FROM iprdmat where iprdmat.cod_producao=:CODPRODUCAO');
   	DMESTOQUE.Alx.ParamByName('CODPRODUCAO').AsInteger:=XCOD_MESTRE;
   	DMESTOQUE.Alx.ExecSQL;
		//APAGA MÃO DE OBRA
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add('delete FROM iprdmao where iprdmao.cod_producao=:CODPRODUCAO');
   	DMESTOQUE.Alx.ParamByName('CODPRODUCAO').AsInteger:=XCOD_MESTRE;
   	DMESTOQUE.Alx.ExecSQL;
		//APAGA DESPESAS ADICIONAIS
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add('delete FROM despadic where (despadic.cod_gerador=:CODPRODUCAO) AND (despadic.gerador='+#39+'PRODUCAO'+#39+')');
   	DMESTOQUE.Alx.ParamByName('CODPRODUCAO').AsInteger:=XCOD_MESTRE;
   	DMESTOQUE.Alx.ExecSQL;
		//APAGA A PRODUÇÃO SELECIONADA
   	DMESTOQUE.Alx.Close;
   	DMESTOQUE.Alx.SQL.Clear;
   	DMESTOQUE.Alx.SQL.Add('DELETE FROM producao WHERE producao.cod_producao=:CODPRODUCAO');
   	DMESTOQUE.Alx.ParamByName('CODPRODUCAO').AsInteger:=XCOD_MESTRE;
   	DMESTOQUE.Alx.ExecSQL;

       DMESTOQUE.TransacEstoque.CommitRetaining;
		FiltraProduto;
       FiltraProduc;
    Except
       DMESTOQUE.TransacEstoque.RollbackRetaining;
    End;
end;

procedure TFProducao.BtnFchTecClick(Sender: TObject);
begin
  inherited;
	//EFETUA CONTROLE DE ACESSO
   If ControlAccess('ACEFCHTECPROD', 'M')=False Then
  		Exit;

    AbrirForm(TFFchTecProd, FFchTecProd, 0);

end;

procedure TFProducao.BtnVerifEstClick(Sender: TObject);
begin
  inherited;
   ExecRun('Iniciada verificação de estoque para produção. Aguarde...');
   If VerificEstoque=False Then
		Mensagem('A T E N Ç Ã O', 'O estoque de Matéria Prima não passou pelo teste de verificação. Pressione o botão Analisar Verificação para obter mais informações sobre este teste.' , '', 1, 1, False, 'a')
   Else
		Mensagem('I N F O R M A Ç Ã O', 'O estoque de Matéria Prima passou pelo teste de verificação. Pressione o botão Analisar Verificação para obter mais informações sobre este teste.' , '', 1, 1, False, 'a');
   PComunica.Visible:=False;
   DMESTOQUE.TransacEstoque.CommitRetaining;
   Activate;

end;

procedure TFProducao.BtnImpFchTecClick(Sender: TObject);
begin
  inherited;
	DMESTOQUE.TRFch.Close;
	DMESTOQUE.TRFch.SQL.Clear;
	DMESTOQUE.TRFch.SQL.Add('select * from fchtecprod ');
	DMESTOQUE.TRFch.SQL.Add('left join producao on producao.cod_fchtecprod = fchtecprod.cod_fchtecprod ');
	DMESTOQUE.TRFch.SQL.Add('Left join vwsimilar on fchtecprod.cod_subproduto=vwsimilar.cod_subproduto ');
   DMESTOQUE.TRFch.SQL.Add(' Where producao.produzido='+#39+'0'+#39);
	DMESTOQUE.TRFch.SQL.Text;
	DMESTOQUE.TRFch.Open;
   If Not DMESTOQUE.TRFch.IsEmpty
   Then begin
       QrLDesc1.Caption:='Em lista de Produção';
   	QrFchTec.Preview;
   End;
end;

procedure TFProducao.BtnProdClick(Sender: TObject);
begin
  inherited;
    //confirmação para Produzir selecioandos
    If Mensagem('CONFIRMAÇÃO DO USUÁRIO', 'Deseja realmente industrializar os produtos selecionados?' , '', 2, 3, False, 'c')=2
    Then Begin
    	ExecRun('I N D U S T R I A L I Z A Ç Ã O   I N I C I A D A .  A G U A R D E ...');
  	If VerificEstoque=False
       Then Begin
			Mensagem('A T E N Ç Ã O', 'O estoque de Matéria Prima não passou pelo teste de verificação. Pressione o botão Analisar Verificação para obter mais informações sobre este teste.' , '', 1, 1, False, 'a');
			PComunica.Visible:=False;
           Exit;
       End;
   	If Produzir=False
       Then Begin
			Mensagem('A T E N Ç Ã O', 'Ocorreu um problema ao industrializar os produtos. A industrialização não foi realizada.'+FMenu.TIPOAUX , '', 1, 1, False, 'a');
           DMESTOQUE.TransacEstoque.RollbackRetaining;
           DMESTOQUE.TransacEstoque.RollbackRetaining;

       End
       Else Begin
           DMESTOQUE.TransacEstoque.CommitRetaining;
           DMESTOQUE.TransacEstoque.CommitRetaining;
			Mensagem('I N F O R M A Ç Ã O', 'A industrialização ocorreu com sucesso!', '', 1, 1, False, 'i');
           Activate;
       End;
		PComunica.Visible:=False;
	 End;
end;

procedure TFProducao.BtnImpFchProdClick(Sender: TObject);
begin
  inherited;
	DMESTOQUE.TRFch.Close;
	DMESTOQUE.TRFch.SQL.Clear;
	DMESTOQUE.TRFch.SQL.Add('select producao.cod_producao as cod_fchtecprod, producao.dtproduc, vwsimilar.contrint, vwsimilar.codfabricante, vwsimilar.descricao, vwsimilar.marca, ');
	DMESTOQUE.TRFch.SQL.Add('producao.qtd AS PORCAO from producao ');
	DMESTOQUE.TRFch.SQL.Add('Left join fchtecprod on fchtecprod.cod_fchtecprod = producao.cod_fchtecprod ');
	DMESTOQUE.TRFch.SQL.Add('Left join vwsimilar on fchtecprod.cod_subproduto=vwsimilar.cod_subproduto ');
   DMESTOQUE.TRFch.SQL.Add(' Where producao.produzido='+#39+'0'+#39);
	DMESTOQUE.TRFch.SQL.Text;
	DMESTOQUE.TRFch.Open;
   If Not DMESTOQUE.TRFch.IsEmpty
   Then begin
       QrLDescP1.Caption:='Em lista de Produção';
   	QrFchProd.Preview;
   End;
end;

procedure TFProducao.BtnAnalVerifClick(Sender: TObject);
begin
  inherited;
  	DMESTOQUE.TRel.close;
	DMESTOQUE.TRel.sql.Clear;
	DMESTOQUE.TRel.SQL.Add('Select distinct(subproduto.descricao), subproduto.codprodfabr, subproduto.contrint, estoque.estfisico, estoque.estsimulado, (estoque.estfisico-estoque.estsimulado) AS SALDO from estoque ');
	DMESTOQUE.TRel.SQL.Add('Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
	DMESTOQUE.TRel.SQL.Add('left join iprdmat on iprdmat.cod_subproduto = subproduto.cod_subproduto ');
	DMESTOQUE.TRel.SQL.Add('where exists (Select * from iprdmat where iprdmat.cod_subproduto = subproduto.cod_subproduto) ');
   DMESTOQUE.TRel.Open;
	FSRel.LoadFromFile('C:\MZR\MACS\Rel\SimulaProd.frf');
   FSRel.ShowReport;
end;

End.
