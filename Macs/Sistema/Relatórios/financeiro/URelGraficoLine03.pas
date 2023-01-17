unit URelGraficoLine03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, TeEngine, Series, TeeProcs, Chart, DbChart,
  StdCtrls, FR_DSet, FR_DBSet, FR_Class, Buttons, DrLabel, jpeg, ExtCtrls;

type
  TFRelGraficoLine03 = class(TFPadraoRelatorio)
    Label2: TLabel;
    CBIni: TEdit;
    Label3: TLabel;
    CBFim: TEdit;
    CBRevelVal: TCheckBox;
    DBChart: TDBChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    procedure FormActivate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure CBRevelValClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
	 Procedure ImpProdServ;////Imprime resultado anual de venda de produtos e servicos    
  end;

var
  FRelGraficoLine03: TFRelGraficoLine03;
  XAno: Integer;
  Year, Month, Day: Word;  

implementation

uses UDMEstoque, UDMMacs, UDMFinanc, UMenu;

{$R *.dfm}

//Imprime resultado anual de venda de produtos e servicos
Procedure TFRelGraficoLine03.ImpProdServ;
Var
	DataIni, DataFim: TDate;
   AnoIni, AnoFim: Integer;
   I: Integer;
   XPRODVISTA, XPRODPRAZO, XSERVVISTA, XSERVPRAZO: Real;
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
           If I=2
           Then Begin
           	Try
		       		DataFim:= StrToDate('29/'+IntToStr(I)+'/'+IntToStr(AnoIni));
               Except
		       		DataFim:= StrToDate('28/'+IntToStr(I)+'/'+IntToStr(AnoIni));
               End;
           End
           Else Begin
           	Try
		       		DataFim:= StrToDate('31/'+IntToStr(I)+'/'+IntToStr(AnoIni));
               Except
		       		DataFim:= StrToDate('30/'+IntToStr(I)+'/'+IntToStr(AnoIni));
               End;
           End;
           XPRODPRAZO:=0;
           XPRODVISTA:=0;
           XSERVPRAZO:=0;
           XSERVVISTA:=0;
           //Filtra Para verificar os totais de Produtos a vista
           //Para pedidos de venda
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add(' Select SUM(itenspedven.valortotal) AS TOTAL from itenspedven ');
           DMFINANC.TAlx.SQL.Add(' left join pedvenda on itenspedven.cod_pedven=pedvenda.cod_pedvenda ');
           DMFINANC.TAlx.SQL.Add(' left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
           DMFINANC.TAlx.SQL.Add(' where (formpag.descricao='+#39+'À VISTA'+#39+') AND (PedVenda.dtfech>=:Data01) And (PedVenda.dtfech<=:Data02) ');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XPRODVISTA:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           //Para Ordem de Serviço
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add(' Select SUM(itprodord.total) AS TOTAL from itprodord ');
           DMFINANC.TAlx.SQL.Add(' left join ordem on itprodord.cod_ordem=ordem.cod_ordem ');
           DMFINANC.TAlx.SQL.Add(' left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
           DMFINANC.TAlx.SQL.Add(' where (formpag.descricao='+#39+'À VISTA'+#39+') AND (ordem.dtfech>=:Data01) And (ordem.dtfech<=:Data02) ');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XPRODVISTA:=XPRODVISTA+DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           //Filtra Para verificar os totais de Produtos a prazo
           //Para pedidos de venda
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add(' Select SUM(itenspedven.valortotal) AS TOTAL from itenspedven ');
           DMFINANC.TAlx.SQL.Add(' left join pedvenda on itenspedven.cod_pedven=pedvenda.cod_pedvenda ');
           DMFINANC.TAlx.SQL.Add(' left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
           DMFINANC.TAlx.SQL.Add(' where (formpag.descricao<>'+#39+'À VISTA'+#39+') AND (PedVenda.dtfech>=:Data01) And (PedVenda.dtfech<=:Data02) ');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XPRODPRAZO:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           //Para Ordem de Serviço
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add(' Select SUM(itprodord.total) AS TOTAL from itprodord ');
           DMFINANC.TAlx.SQL.Add(' left join ordem on itprodord.cod_ordem=ordem.cod_ordem ');
           DMFINANC.TAlx.SQL.Add(' left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
           DMFINANC.TAlx.SQL.Add(' where (formpag.descricao<>'+#39+'À VISTA'+#39+') AND (Ordem.dtfech>=:Data01) And (Ordem.dtfech<=:Data02) ');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XPRODPRAZO:=XPRODPRAZO+DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           //Filtra Para verificar os totais de Serviços a vista
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add(' Select SUM(itservord.total) AS TOTAL from itservord ');
           DMFINANC.TAlx.SQL.Add(' left join ordem on itservord.cod_ordem=ordem.cod_ordem ');
           DMFINANC.TAlx.SQL.Add(' left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
           DMFINANC.TAlx.SQL.Add(' where (formpag.descricao='+#39+'À VISTA'+#39+') AND (Ordem.dtfech>=:Data01) And (Ordem.dtfech<=:Data02) ');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XSERVVISTA:=DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           //Filtra Para verificar os totais de Serviços a prazo
           DMFINANC.TAlx.Close;
           DMFINANC.TAlx.SQL.Clear;
           DMFINANC.TAlx.SQL.Add(' Select SUM(itservord.total) AS TOTAL from itservord ');
           DMFINANC.TAlx.SQL.Add(' left join ordem on itservord.cod_ordem=ordem.cod_ordem ');
           DMFINANC.TAlx.SQL.Add(' left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
           DMFINANC.TAlx.SQL.Add(' where (formpag.descricao<>'+#39+'À VISTA'+#39+') AND (Ordem.dtfech>=:Data01) And (Ordem.dtfech<=:Data02) ');
           DMFINANC.TAlx.ParamByName('Data01').AsDate:=DataIni;
           DMFINANC.TAlx.ParamByName('Data02').AsDate:=DataFim;
           DMFINANC.TAlx.Open;
           If Not DMFINANC.TAlx.IsEmpty Then
           	XSERVPRAZO:=XSERVPRAZO+DMFINANC.TAlx.FieldByName('TOTAL').AsCurrency;

           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=DMMACS.TCodigo.FieldByName('COD_TMP').AsInteger;
           DMMACS.TMP.FieldByName('DESC1').AsString:=Mes;
           DMMACS.TMP.FieldByName('DESC2').AsString:=IntToStr(Anoini);
           DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XPRODVISTA;
           DMMACS.TMP.FieldByName('VLR2').AsCurrency:=XPRODPRAZO;
           DMMACS.TMP.FieldByName('VLR3').AsCurrency:=XSERVVISTA;
           DMMACS.TMP.FieldByName('VLR4').AsCurrency:=XSERVPRAZO;
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
   DMESTOQUE.TRel.SQL.Add('SELECT * FROM  TMP order by tmp.cod_tmp desc');
   DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.Open;

   //SELECIONA PRIMEIRO ANO VENDA
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add('SELECT * FROM  TMP Where TMP.Desc2=:Ano');
   DMESTOQUE.Alx1.ParamByName('Ano').AsInteger:=XAno-2;
   DMESTOQUE.Alx1.SQL.Text;
   DMESTOQUE.Alx1.Open;

   //SELECIONA SEGUNDO ANO VENDA
   DMESTOQUE.Alx2.Close;
   DMESTOQUE.Alx2.SQL.Clear;
   DMESTOQUE.Alx2.SQL.Add('SELECT * FROM TMP Where TMP.Desc2=:Ano');
   DMESTOQUE.Alx2.ParamByName('Ano').AsInteger:=XAno-1;
   DMESTOQUE.Alx2.Open;

   DBChart.Series[0].Title:='Prod. Vista '+IntToStr(XAno-2);
   DBChart.Series[1].Title:='Prod. Prazo '+IntToStr(XAno-2);
   DBChart.Series[2].Title:='Serv. Vista '+IntToStr(XAno-2);
   DBChart.Series[3].Title:='Serv. Prazo '+IntToStr(XAno-2);
   DBChart.Series[4].Title:='Prod. Vista '+IntToStr(XAno-1);
   DBChart.Series[5].Title:='Prod. Prazo '+IntToStr(XAno-1);
   DBChart.Series[6].Title:='Serv. Vista '+IntToStr(XAno-1);
   DBChart.Series[7].Title:='Serv. Prazo '+IntToStr(XAno-1);
End;

procedure TFRelGraficoLine03.FormActivate(Sender: TObject);
VAR
  Data: Integer;
  I: Integer;
begin
  inherited;
	Data := DayOfWeek(Date());{Volta um número inteiro que representa o dia da semana}
   DecodeDate(Date(), Year, Month, Day) ;
   XAno:=Year;
   CBIni.Text:=IntToStr(XAno-2);
   CBFim.Text:=IntToStr(XAno-1);
	If FMenu.TIPOREL='ACOMPPRODSERV'
   Then Begin
       Caption:='Comparativo de Produtos e Serviços';
       DBChart.Title.Text.Clear;
       DBChart.Title.Text.Add('Comparativo de Produtos e Serviços');
   End;
   DBChart.Visible:=False;
end;

procedure TFRelGraficoLine03.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
	If FMenu.TIPOREL='ACOMPPRODSERV' Then
       ImpProdServ;
   DBChart.Visible:=True;
   DBChart.BringToFront;
end;

procedure TFRelGraficoLine03.BtnImprimirClick(Sender: TObject);
begin
  inherited;
   If DBChart.Visible=True
   Then Begin
  		DBChart.PrintLandscape;
		If FMenu.TIPOREL='RESUMOANUAL'
   	Then Begin
 			FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfGraFVendaAnual.frf');
       End;
 		FSRel.ShowReport;
   End;
end;

procedure TFRelGraficoLine03.CBRevelValClick(Sender: TObject);
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
   End;
end;

end.
