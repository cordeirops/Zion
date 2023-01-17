unit URelGraficoPizza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, ExtCtrls, DB, MDOCustomDataSet, MDOQuery, TeeProcs, TeEngine,
  Chart, DbChart, Series;

type
  TFRelGraficoPizza = class(TFPadraoRelatorio)
    Grafico: TDBChart;
    TRel: TMDOQuery;
    DSRel: TDataSource;
    Series1: TPieSeries;
    TPlncta: TMDOQuery;
    DSPlncta: TDataSource;
    GraficoPlncta: TDBChart;
    Series2: TPieSeries;
    procedure FormActivate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelGraficoPizza: TFRelGraficoPizza;

implementation

uses UMDO, UMenu, URelData, UPadrao, AlxMessage;

{$R *.dfm}

procedure TFRelGraficoPizza.FormActivate(Sender: TObject);
begin
  inherited;
	If FMenu.TIPOREL= 'SERVICOCLASSIFICACAOGRAFICO'
   Then Begin
       Caption:='Gráfico de Serviços por Classificação';
       TRel.Close;
       TRel.SQL.Clear;
       TRel.SQL.Add('  SELECT vwsubservico.descricao as classificacao, sum(despadic.vlrtotfin) AS TOTAL FROM despadic ');
       TRel.SQL.Add('   Left join ordem on despadic.cod_gerador = ordem.cod_ordem ');
       TRel.SQL.Add('   left join vwsubservico on despadic.cod_servico = vwsubservico.cod_subservico ');
       TRel.SQL.Add('   Where (ordem.dtfech between :Dt1 and :Dt2) and (despadic.gerador=''ORDEM'') ');
       TRel.SQL.Add('   GROUP BY vwsubservico.descricao ');
       TRel.SQL.Add('   ORDER BY vwsubservico.descricao ');
       TRel.ParamByName('DT1').AsDate := FMenu.XDtFiltro01;
       TRel.ParamByName('DT2').AsDate := FMenu.XDtFiltro02 ;
       TRel.Open;
       If TRel.IsEmpty
       Then Begin
			MessageDlg('O Filtro retornou sem valores.', mtWarning, [mbOK], 0);
       end;

       GraficoPlncta.Visible := False;
   End;

	If FMenu.TIPOREL= 'RELDESPESACLASSIFICACAOGRAFICO'
   Then Begin
       Caption:='Gráfico de Despesas por Classificação';
       TRel.Close;
       TRel.SQL.Clear;
       TRel.SQL.Add('    SELECT vwsubservico.descricao as classificacao, sum(despadic.vlrtotfin) AS TOTAL FROM despadic ');
       TRel.SQL.Add('       Left join pedvenda on despadic.cod_gerador = pedvenda.cod_pedvenda ');
       TRel.SQL.Add('       left join vwsubservico on despadic.cod_servico = vwsubservico.cod_subservico ');
       TRel.SQL.Add('       Where (pedvenda.dtfech between :Dt1 and :Dt2) and (despadic.gerador=''PEDVENDA'') ');
       TRel.SQL.Add('       GROUP BY vwsubservico.descricao ');
       TRel.SQL.Add('       ORDER BY vwsubservico.descricao ');
       TRel.ParamByName('DT1').AsDate := FMenu.XDtFiltro01;
       TRel.ParamByName('DT2').AsDate := FMenu.XDtFiltro02 ;
       TRel.Open;
       If TRel.IsEmpty
       Then Begin
			MessageDlg('O Filtro retornou sem valores.', mtWarning, [mbOK], 0);
       end;

       GraficoPlncta.Visible := False;
       FSDSRel.DataSet := TRel;
       FSDSRel.DataSource := DSRel;      
   End;

   if FMenu.TIPOREL = 'CTALANCAMENTOGRAF' then
   begin//Edmar - 20/06/2014 - Se for gerar o gráfico de plano de conta...
   	TPlncta.Close;
       TPlncta.SQL.Clear;
       TPlncta.SQL.Add(FMenu.xSqlRelCtaLanc);//Edmar - 20/06/2014 - Usa o SQL que foi usado em URelCtaPR
       //e passa seus devidos parametros
       TPlncta.ParamByName('ini').AsDate := FMenu.XDtFiltro01;
       TPlncta.ParamByName('fin').AsDate := FMenu.XDtFiltro02;
       if FMenu.xCodPlncta <> -1 then//Edmar - 20/06/2014 - Busca pelo plano de conta se o mesmo foi informado
       	TPlncta.ParamByName('CODPLANO').AsInteger := FMenu.xCodPlncta;
       TPlncta.Open;
       
       If TPlncta.IsEmpty
       Then Begin
			MessageDlg('O Filtro retornou sem valores.', mtWarning, [mbOK], 0);
       end;

		//Edmar - 20/06/2014 - Como é pra gerar o grafico de plano de conta
       //esconde o gráfico de classificação
       Grafico.Visible := False;
   end;
end;

procedure TFRelGraficoPizza.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
	If  MessageDlg('Imprimir o gráfico?', mtConfirmation, [mbYes, mbNo], 0) = mryes Then
   begin
   	if FMenu.TIPOREL = 'CTALANCAMENTOGRAF' then
           GraficoPlncta.Print
       else
       	Grafico.Print;
   end;
end;

end.
