unit URelGraficoLine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, TeEngine, Series, TeeProcs, Chart, FR_DSet,
  FR_DBSet, FR_Class, StdCtrls, Buttons, DrLabel, jpeg, ExtCtrls, DbChart,
  QRTEE, QuickRpt, QRCtrls, UFrmBusca;

type
  TFRelGraficoLine = class(TFPadraoRelatorio)
    Label2: TLabel;
    Label3: TLabel;
    CBIni: TEdit;
    CBFim: TEdit;
    CBRevelVal: TCheckBox;
    PFuncionario: TPanel;
    FrmVendIni: TFrmBusca;
    DBChart: TDBChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure CBRevelValClick(Sender: TObject);
    procedure FrmVendIniBTNMINUSClick(Sender: TObject);
    procedure FrmVendIniBTNOPENClick(Sender: TObject);
    procedure FrmVendIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure ImpResumoAnual;//Imprime resultado anual de venda
    Procedure ImpCompVendComp;//Imprime resultado anual de venda
	 Procedure ImpComisVend;////Imprime resultado anual de acompanhmento de comissões por vendedores
  end;

var
  FRelGraficoLine: TFRelGraficoLine;
  Year, Month, Day: Word;
  XAno: Integer;
  XVENDINI: Integer;  

implementation

uses UPadrao, UMenu, UDMFinanc, UDMMacs, UDMEstoque, UDMPessoa, DB,
  UFuncionario, Alxor32, Math, AlxMessage;

{$R *.dfm}



//Imprime resultado anual de acompanhmento de comissões por vendedores
Procedure TFRelGraficoLine.ImpComisVend;
Var
	DataIni, DataFim: TDate;
   AnoIni, AnoFim: Integer;
   I: Integer;
   XComissao: Real;
   Mes: String;
Begin
   If FrmVendIni.EDCodigo.Text=''
   Then Begin
		Mensagem('ATENÇÃO', 'Por Favor, Informe o vendedor para as comissões.', '', 2, 3, false, 'i');
		FrmVendIni.EDCodigo.SetFocus;
       Exit;       
   End;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('Delete from TMP');
   DMMACS.TMP.ExecSQL;
   DMMACS.TCodigo.Edit;
   DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger:=1;
   DMMACS.TCodigo.Post;
   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('Select * from TMP');
   DMMACS.TMP.open;
	//Encadear para Anos
   For AnoIni:= StrToInt(CBIni.Text) To StrToInt(CBFim.Text) Do
   Begin
   	//Encadear p/ Meses do Ano
   	For I:=1 to 12 do
       Begin
    		Case I of
      			1:Mes:='Jan';
      			2:Mes:='Fev';
      			3:Mes:='Mar';
      			4:Mes:='Abr';
      			5:Mes:='Mai';
      			6:Mes:='Jun';
      			7:Mes:='Jul';
      			8:Mes:='Ago';
      			9:Mes:='Set';
      			10:Mes:='Out';
      			11:Mes:='Nov';
      			12:Mes:='Dez';
    		End;
       	DataIni:= StrToDate('01/'+IntToStr(I)+'/'+IntToStr(AnoIni));
      		DataFim:= StrToDate(IntToStr(UltDiaMes(I, AnoIni))+'/'+IntToStr(I)+'/'+IntToStr(AnoIni));           
           XComissao:=0;
           //////////////////////////////////////////////////////////////////////////////
           //Filtra para verificar Total de Comissoes de acordo com funcionario escolhido
			//////////////////////////////////////////////////////////////////////////////
           //PARA PEDIDOS
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add(' Select sum(comissao.vlrcomisprod) As COMPROD, sum(comissao.vlrcomisserv) As COMSERV from comissao ');
           DMFINANC.TAlx.SQL.Add(' Left join pedvenda on comissao.cod_gerador = pedvenda.cod_pedvenda ');
           DMFINANC.TAlx.SQL.Add(' Where (comissao.gerador='+#39+'PEDVENDA'+#39+') And (comissao.cod_funcionario=:CODFUNCIONARIO) ');
           DMFINANC.TAlx.SQL.Add(' And ((PedVenda.dtfech>=:Data01) And (PedVenda.dtfech<=:Data02))');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.ParamByName('CODFUNCIONARIO').AsInteger:=XVENDINI;
           DMFINANC.TAlx.SQL.Text;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XComissao:=DMFINANC.TAlx.FieldByName('COMPROD').AsCurrency+DMFINANC.TAlx.FieldByName('COMSERV').AsCurrency;

           //PARA OS
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add(' Select sum(comissao.vlrcomisprod) As COMPROD, sum(comissao.vlrcomisserv) As COMSERV from comissao ');
           DMFINANC.TAlx.SQL.Add(' Left join pedvenda on comissao.cod_gerador = pedvenda.cod_pedvenda ');
           DMFINANC.TAlx.SQL.Add(' Where (comissao.gerador='+#39+'ORDEM'+#39+') And (comissao.cod_funcionario=:CODFUNCIONARIO) ');
           DMFINANC.TAlx.SQL.Add(' And (PedVenda.dtfech>=:Data01) And (PedVenda.dtfech<=:Data02)');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.ParamByName('CODFUNCIONARIO').AsInteger:=XVENDINI;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XComissao:=XComissao+(DMFINANC.TAlx.FieldByName('COMPROD').AsCurrency+DMFINANC.TAlx.FieldByName('COMSERV').AsCurrency);


           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger;
           DMMACS.TMP.FieldByName('DESC1').AsString:=Mes;
           DMMACS.TMP.FieldByName('DESC2').AsString:=IntToStr(Anoini);
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=0;
           DMMACS.TMP.FieldByName('VLR2').AsCurrency:=0;
           DMMACS.TMP.FieldByName('VLR3').AsCurrency:=XComissao;
           DMMACS.TMP.FieldByName('INT1').AsCurrency:=I;
           DMMACS.TMP.Post;
   		DMMACS.TCodigo.Edit;
   		DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger:=DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger+1;
   		DMMACS.TCodigo.Post;
       End;
   End;
   DMMACS.Transaction.CommitRetaining;
   DMESTOQUE.TransacEstoque.CommitRetaining;

   //SELECIONA TODOS
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('SELECT * FROM  TMP ');
   DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.Open;

  //SELECIONA PRIMEIRO ANO VENDA
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('SELECT * FROM  TMP Where TMP.Desc2=:Ano');
   DMESTOQUE.Alx1.ParamByName('Ano').AsInteger:=XAno-3;
   DMESTOQUE.Alx1.SQL.Text;
   DMESTOQUE.Alx1.Open;

   //SELECIONA SEGUNDO ANO VENDA
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('SELECT * FROM TMP Where TMP.Desc2=:Ano');
   DMESTOQUE.Alx2.ParamByName('Ano').AsInteger:=XAno-2;
   DMESTOQUE.Alx2.Open;

   //SELECIONA TERCEIRO ANO VENDA
   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add('SELECT * FROM TMP Where TMP.Desc2=:Ano');
   DMESTOQUE.Alx3.ParamByName('Ano').AsInteger:=XAno-1;
   DMESTOQUE.Alx3.Open;

   DBChart.Series[0].Title:=' ';
   DBChart.Series[3].Title:=' ';
   DBChart.Series[6].Title:='Comissão '+IntToStr(XAno-3);
   DBChart.Series[1].Title:=' ';
   DBChart.Series[4].Title:=' ';
   DBChart.Series[7].Title:='Comissão '+IntToStr(XAno-2);
   DBChart.Series[2].Title:=' ';
   DBChart.Series[5].Title:=' ';
   DBChart.Series[8].Title:='Comissão '+IntToStr(XAno-1);
  	DBChart.Title.Text.Clear;
  	DBChart.Title.Text.Add(DMPESSOA.VWFUNCIONARIO.FieldByName('NOME').AsString);
End;


//Imprime resultado anual de venda
Procedure TFRelGraficoLine.ImpCompVendComp;
Var
	DataIni, DataFim: TDate;
   AnoIni, AnoFim: Integer;
   I: Integer;
   XVendas, XCompra, XLucros: Real;
   Mes: String;
Begin
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('Delete from TMP');
   DMMACS.TMP.ExecSQL;
   DMMACS.TCodigo.Edit;
   DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger:=1;
   DMMACS.TCodigo.Post;
   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('Select * from TMP');
   DMMACS.TMP.open;
	//Encadear para Anos
   For AnoIni:= StrToInt(CBIni.Text) To StrToInt(CBFim.Text) Do
   Begin
   	//Encadear p/ Meses do Ano
   	For I:=1 to 12 do
       Begin
    		Case I of
      			1:Mes:='Jan';
      			2:Mes:='Fev';
      			3:Mes:='Mar';
      			4:Mes:='Abr';
      			5:Mes:='Mai';
      			6:Mes:='Jun';
      			7:Mes:='Jul';
      			8:Mes:='Ago';
      			9:Mes:='Set';
      			10:Mes:='Out';
      			11:Mes:='Nov';
      			12:Mes:='Dez';
    		End;
       	DataIni:= StrToDate('01/'+IntToStr(I)+'/'+IntToStr(AnoIni));
      		DataFim:= StrToDate(IntToStr(UltDiaMes(I, AnoIni))+'/'+IntToStr(I)+'/'+IntToStr(AnoIni));
           XVendas:=0;
           XCompra:=0;
           XLucros:=0;
           //Filtra Para verificar os totais de venda do mês
           //Para pedidos de venda
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('select sum(pedvenda.valor) As Total from pedvenda Where (PedVenda.dtfech>=:Data01) And (PedVenda.dtfech<=:Data02)');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XVendas:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
           //Para ordem de Serviço
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('select sum(ordem.totord) As Total from Ordem Where (ordem.dtfech>=:Data01) And (ordem.dtfech<=:Data02)');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XVendas:=XVendas+DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           //Filtra para verificar a lucratividade
           //Para pedidos de venda
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('select sum(itenspedven.lucmoe) As Total from pedvenda ');
           DMFINANC.TAlx.SQL.Add(' left join itenspedven on pedvenda.cod_pedvenda = itenspedven.cod_pedven ');
           DMFINANC.TAlx.SQL.Add(' Where (PedVenda.dtfech>=:Data01) And (PedVenda.dtfech<=:Data02) ');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XLucros:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
           //Para Produtos em ordem de Serviço
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('select sum(itprodord.lucmoe) As Total from Ordem ');
           DMFINANC.TAlx.SQL.Add(' left join itprodord on ordem.cod_ordem = itprodord.cod_ordem ');
           DMFINANC.TAlx.SQL.Add(' Where (ordem.dtfech>=:Data01) And (ordem.dtfech<=:Data02)');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XLucros:=XLucros+DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           //Filtra para verificar Total de Compras no Mes
           //Para pedidos de venda
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('select sum(pedcompra.valor) As Total from PedCompra ');
           DMFINANC.TAlx.SQL.Add(' Where (PedCompra.DtFech>=:Data01) And (PedCompra.DtFech<=:Data02) ');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;

           If Not DMFINANC.TAlx.IsEmpty Then
           	XCompra:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger;
           DMMACS.TMP.FieldByName('DESC1').AsString:=Mes;
           DMMACS.TMP.FieldByName('DESC2').AsString:=IntToStr(Anoini);
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XVendas;
           DMMACS.TMP.FieldByName('VLR2').AsCurrency:=XLucros;
           DMMACS.TMP.FieldByName('VLR3').AsCurrency:=XCompra;
           DMMACS.TMP.FieldByName('INT1').AsCurrency:=I;
           DMMACS.TMP.Post;

   		DMMACS.TCodigo.Edit;
   		DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger:=DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger+1;
   		DMMACS.TCodigo.Post;
       End;
   End;
   DMMACS.Transaction.CommitRetaining;
   DMESTOQUE.TransacEstoque.CommitRetaining;
   //SELECIONA PRIMEIRO TODOS OS ANOS VENDA
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('SELECT * FROM  TMP  order by tmp.cod_tmp desc');
   DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.Open;


   //SELECIONA PRIMEIRO ANO VENDA
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('SELECT * FROM  TMP Where TMP.Desc2=:Ano');
   DMESTOQUE.Alx1.ParamByName('Ano').AsInteger:=XAno-3;
   DMESTOQUE.Alx1.SQL.Text;
   DMESTOQUE.Alx1.Open;

   //SELECIONA SEGUNDO ANO VENDA
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('SELECT * FROM TMP Where TMP.Desc2=:Ano');
   DMESTOQUE.Alx2.ParamByName('Ano').AsInteger:=XAno-2;
   DMESTOQUE.Alx2.Open;

   //SELECIONA TERCEIRO ANO VENDA
   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add('SELECT * FROM TMP Where TMP.Desc2=:Ano');
   DMESTOQUE.Alx3.ParamByName('Ano').AsInteger:=XAno-1;
   DMESTOQUE.Alx3.Open;

   DBChart.Series[0].Title:='Vendas '+IntToStr(XAno-3);
   DBChart.Series[3].Title:='Lucros '+IntToStr(XAno-3);
   DBChart.Series[6].Title:='Compras '+IntToStr(XAno-3);
   DBChart.Series[1].Title:='Vendas '+IntToStr(XAno-2);
   DBChart.Series[4].Title:='Lucros '+IntToStr(XAno-2);
   DBChart.Series[7].Title:='Compras '+IntToStr(XAno-2);
   DBChart.Series[2].Title:='Vendas '+IntToStr(XAno-1);
   DBChart.Series[5].Title:='Lucros '+IntToStr(XAno-1);
   DBChart.Series[8].Title:='Compras '+IntToStr(XAno-1);
End;

//Imprime resultado anual de venda
Procedure TFRelGraficoLine.ImpResumoAnual;
Var
	DataIni, DataFim: TDate;
   AnoIni, AnoFim: Integer;
   I: Integer;
   XVendas, XLucros, XCustos: Real;
   Mes: String;
Begin
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('Delete from TMP');
   DMMACS.TMP.ExecSQL;
   DMMACS.TCodigo.Edit;
   DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger:=1;
   DMMACS.TCodigo.Post;
   DMMACS.Transaction.CommitRetaining;
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('Select * from TMP');
   DMMACS.TMP.open;

	//Encadear para Anos
   For AnoIni:= StrToInt(CBIni.Text) To StrToInt(CBFim.Text) Do
   Begin
   	//Encadear p/ Meses do Ano
   	For I:=1 to 12 do
       Begin
    		Case I of
      			1:Mes:='Jan';
      			2:Mes:='Fev';
      			3:Mes:='Mar';
      			4:Mes:='Abr';
      			5:Mes:='Mai';
      			6:Mes:='Jun';
      			7:Mes:='Jul';
      			8:Mes:='Ago';
      			9:Mes:='Set';
      			10:Mes:='Out';
      			11:Mes:='Nov';
      			12:Mes:='Dez';
    		End;

       	DataIni:= StrToDate('01/'+IntToStr(I)+'/'+IntToStr(AnoIni));
      		DataFim:= StrToDate(IntToStr(UltDiaMes(I, AnoIni))+'/'+IntToStr(I)+'/'+IntToStr(AnoIni));           
           XVendas:=0;
           XLucros:=0;
           XCustos:=0;
           //Filtra Para verificar os totais de venda do mês
           //Para pedidos de venda
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('select sum(pedvenda.valor) As Total from pedvenda Where (PedVenda.dtfech>=:Data01) And (PedVenda.dtfech<=:Data02)');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XVendas:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
           //Para ordem de Serviço
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('select sum(ordem.totord) As Total from Ordem Where (ordem.dtfech>=:Data01) And (ordem.dtfech<=:Data02)');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XVendas:=XVendas+DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           //Filtra para verificar a lucratividade
           //Para pedidos de venda
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('select sum(itenspedven.lucmoe) As Total from pedvenda ');
           DMFINANC.TAlx.SQL.Add(' left join itenspedven on pedvenda.cod_pedvenda = itenspedven.cod_pedven ');
           DMFINANC.TAlx.SQL.Add(' Where (PedVenda.dtfech>=:Data01) And (PedVenda.dtfech<=:Data02) ');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XLucros:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
           //Para Produtos em ordem de Serviço
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('select sum(itprodord.lucmoe) As Total from Ordem ');
           DMFINANC.TAlx.SQL.Add(' left join itprodord on ordem.cod_ordem = itprodord.cod_ordem ');
           DMFINANC.TAlx.SQL.Add(' Where (ordem.dtfech>=:Data01) And (ordem.dtfech<=:Data02)');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XLucros:=XLucros+DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           //Para Serviços em ordem de Serviço
           Try
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('select sum(itservord.lucmoe) As Total from Ordem ');
           DMFINANC.TAlx.SQL.Add(' left join itservord on ordem.cod_ordem = itservord.cod_ordem ');
           DMFINANC.TAlx.SQL.Add(' Where (ordem.dtfech>=:Data01) And (ordem.dtfech<=:Data02)');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           Except
           MessageDlg('Sem informações para relatório', mtWarning, [mbOK], 0);
           End;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XLucros:=XLucros+DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           //Filtra para verificar os Custos
           //Para pedidos de venda
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('select sum(itenspedven.valcusto*itenspedven.qtdeprod) As Total from pedvenda ');
           DMFINANC.TAlx.SQL.Add(' left join itenspedven on pedvenda.cod_pedvenda = itenspedven.cod_pedven ');
           DMFINANC.TAlx.SQL.Add(' Where (PedVenda.dtfech>=:Data01) And (PedVenda.dtfech<=:Data02) ');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XCustos:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;
           //Para Produtos em ordem de Serviço
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add('select sum(itprodord.valcusto*itprodord.qtd) As Total from Ordem ');
           DMFINANC.TAlx.SQL.Add(' left join itprodord on ordem.cod_ordem = itprodord.cod_ordem ');
           DMFINANC.TAlx.SQL.Add(' Where (ordem.dtfech>=:Data01) And (ordem.dtfech<=:Data02)');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XCustos:=XCustos+DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           //Para Serviços em ordem de Serviço
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
//           DMFINANC.TAlx.SQL.Add(' SELECT SUM(ITSERVORD.VLRUNITCUSTO*ITSERVORD.QTD) AS TOTAL FROM ORDEM ');
			DMFINANC.TAlx.SQL.Add(' SELECT SUM(ITSERVORD.TOTAL) AS TOTAL FROM ORDEM ');
           DMFINANC.TAlx.SQL.Add(' left join itservord on ordem.cod_ordem = itservord.cod_ordem ');
           DMFINANC.TAlx.SQL.Add(' Where (ordem.dtfech>=:Data01) And (ordem.dtfech<=:Data02)');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XCustos:=XCustos+DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger;
           DMMACS.TMP.FieldByName('DESC1').AsString:=Mes;
           DMMACS.TMP.FieldByName('DESC2').AsString:=IntToStr(Anoini);
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XVendas;
           DMMACS.TMP.FieldByName('VLR2').AsCurrency:=XLucros;
           DMMACS.TMP.FieldByName('VLR3').AsCurrency:=XCustos;
           DMMACS.TMP.FieldByName('INT1').AsCurrency:=I;
           DMMACS.TMP.Post;

   		DMMACS.TCodigo.Edit;
   		DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger:=DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger+1;
   		DMMACS.TCodigo.Post;
       End;
   End;
   DMMACS.Transaction.CommitRetaining;
   DMESTOQUE.TransacEstoque.CommitRetaining;

   //SELECIONA PRIMEIRO TODOS OS ANOS VENDA
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('SELECT * FROM TMP order by tmp.cod_tmp desc');
   DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.Open;

   //SELECIONA PRIMEIRO ANO VENDA
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('SELECT * FROM  TMP Where TMP.Desc2=:Ano');
   DMESTOQUE.Alx1.ParamByName('Ano').AsInteger:=XAno-3;
   DMESTOQUE.Alx1.SQL.Text;
   DMESTOQUE.Alx1.Open;

   //SELECIONA SEGUNDO ANO VENDA
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('SELECT * FROM TMP Where TMP.Desc2=:Ano');
   DMESTOQUE.Alx2.ParamByName('Ano').AsInteger:=XAno-2;
   DMESTOQUE.Alx2.Open;

   //SELECIONA TERCEIRO ANO VENDA
   DMESTOQUE.Alx3.Close;
   DMESTOQUE.Alx3.SQL.Clear;
   DMESTOQUE.Alx3.SQL.Add('SELECT * FROM TMP Where TMP.Desc2=:Ano');
   DMESTOQUE.Alx3.ParamByName('Ano').AsInteger:=XAno-1;
   DMESTOQUE.Alx3.Open;
   DBChart.Series[0].Title:='Vendas '+IntToStr(XAno-3);
   DBChart.Series[3].Title:='Lucros '+IntToStr(XAno-3);
   DBChart.Series[6].Title:='Custos '+IntToStr(XAno-3);
   DBChart.Series[1].Title:='Vendas '+IntToStr(XAno-2);
   DBChart.Series[4].Title:='Lucros '+IntToStr(XAno-2);
   DBChart.Series[7].Title:='Custos '+IntToStr(XAno-2);
   DBChart.Series[2].Title:='Vendas '+IntToStr(XAno-1);
   DBChart.Series[5].Title:='Lucros '+IntToStr(XAno-1);
   DBChart.Series[8].Title:='Custos '+IntToStr(XAno-1);
//   MontaGrafico;

//   QRGrafico.Preview;
End;

procedure TFRelGraficoLine.FormActivate(Sender: TObject);
VAR
  Data: Integer;
  I: Integer;
begin
  inherited;
	Data := DayOfWeek(Date());{Volta um número inteiro que representa o dia da semana}
   DecodeDate(Date(), Year, Month, Day) ;
   XAno:=Year;
   CBIni.Text:=IntToStr(XAno-3);
   CBFim.Text:=IntToStr(XAno-1);
   PFuncionario.Visible:=False;
	If FMenu.TIPOREL='RESUMOANUAL'
   Then Begin
       Caption:='Comparativo Anual de Vendas';
       DBChart.Title.Text.Clear;
       DBChart.Title.Text.Add('Comparativo Anual de Vendas');
   End;
	If FMenu.TIPOREL='COMPVENDCOMP'
   Then Begin
       Caption:='Comparativo de Compras e Vendas';
       DBChart.Title.Text.Clear;
       DBChart.Title.Text.Add('Comparativo de Compras e Vendas');
   End;
	If FMenu.TIPOREL='ACOMPCOMISVEND'
   Then Begin
       Caption:='Acompanhamento Anual de Comissões';
       DBChart.Title.Text.Clear;
       DBChart.Title.Text.Add('Acompanhamento Anual de Comissões');
       PFuncionario.Visible:=True;
       PFuncionario.BringToFront;
   End;
   DBChart.Visible:=False;
end;

procedure TFRelGraficoLine.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	Key:=#0;
end;

procedure TFRelGraficoLine.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
	If FMenu.TIPOREL='RESUMOANUAL' Then
       ImpResumoAnual;
	If FMenu.TIPOREL='COMPVENDCOMP' Then
       ImpCompVendComp;
	If FMenu.TIPOREL='ACOMPCOMISVEND' Then
       ImpComisVend;
   DBChart.Visible:=True;
   DBChart.BringToFront;
end;

procedure TFRelGraficoLine.BtnImprimirClick(Sender: TObject);
begin
  inherited;
   If DBChart.Visible=True
   Then Begin
  		DBChart.PrintLandscape;
		If FMenu.TIPOREL='RESUMOANUAL'
   	Then Begin
 			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfGraFVendaAnual.frf');
       End;
		If FMenu.TIPOREL='COMPVENDCOMP'
   	Then Begin
 			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfGrafCompVenda.frf');
       End;
		If FMenu.TIPOREL='ACOMPCOMISVEND'
   	Then Begin
 			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfGrafCompComis.frf');
       End;

 		FSRel.ShowReport;
   End;
end;

procedure TFRelGraficoLine.CBRevelValClick(Sender: TObject);
begin
  inherited;
	If CBRevelVal.Checked=True
   Then Begin
       DBChart.Series[0].Marks.Visible:=True;
       DBChart.Series[1].Marks.Visible:=True;
       DBChart.Series[2].Marks.Visible:=True;
       DBChart.Series[3].Marks.Visible:=True;
       DBChart.Series[4].Marks.Visible:=True;
       DBChart.Series[5].Marks.Visible:=True;
       DBChart.Series[6].Marks.Visible:=True;
       DBChart.Series[7].Marks.Visible:=True;
       DBChart.Series[8].Marks.Visible:=True;
   End
   Else Begin
       DBChart.Series[0].Marks.Visible:=False;
       DBChart.Series[1].Marks.Visible:=False;
       DBChart.Series[2].Marks.Visible:=False;
       DBChart.Series[3].Marks.Visible:=False;
       DBChart.Series[4].Marks.Visible:=False;
       DBChart.Series[5].Marks.Visible:=False;
       DBChart.Series[6].Marks.Visible:=False;
       DBChart.Series[7].Marks.Visible:=False;
       DBChart.Series[8].Marks.Visible:=False;
   End;
end;

procedure TFRelGraficoLine.FrmVendIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //limpa VENDEDOR inicial
   XVENDINI:=0;
   FrmVendIni.EDCodigo.Text:='';
   FrmVendIni.EdDescricao.Text:='';
	FrmVendIni.Repaint;
   Caption:='Acompanhamento Anual de Comissões';
   DBChart.Title.Text.Clear;
   DBChart.Title.Text.Add('Acompanhamento Anual de Comissões');
end;

procedure TFRelGraficoLine.FrmVendIniBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS VENDEDORES PARA CONSUTA
	filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
   	XVENDINI:=DMPESSOA.VWFuncionario.FieldByName('COD_FUNC').AsInteger;
      	FrmVendIni.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVendIni.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
		FrmVendIni.Repaint;
   End; 
end;

procedure TFRelGraficoLine.FrmVendIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
      	If FiltraTabela(DMPESSOA.VWFUNCIONARIO, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmVendIni.EDCodigo.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
         	XVENDINI:=DMPESSOA.VWFUNCIONARIO.FieldByName('COD_FUNC').AsInteger;
           FrmVendIni.EdDescricao.Text:=DMPESSOA.VWFUNCIONARIO.FieldByName('NOME').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XVENDINI:=0;
           FrmVendIni.EdDescricao.Text:='';
           FrmVendIni.EDCodigo.Text:='';
       End;
		FrmVendIni.Repaint;       
   End;
end;

end.
