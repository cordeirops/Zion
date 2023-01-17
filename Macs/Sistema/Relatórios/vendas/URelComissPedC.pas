unit URelComissPedC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, UPadraoRelatorio, StdCtrls, ExtCtrls, Mask, FR_DSet, FR_DBSet,
  FR_Class, TFlatHintUnit, Buttons, jpeg, Grids, DBGrids, QRCtrls, QuickRpt,
  DrLabel;

type
  TFRelComisPedC = class(TFPadraoRelatorio)
    frReport1: TfrReport;
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
    QRLabel18: TQRLabel;
    QRShape5: TQRShape;
    QRLabel1: TQRLabel;
    QRBand10: TQRBand;
    QRBand12: TQRBand;
    QRShape8: TQRShape;
    QrlVlrPagar: TQRLabel;
    QRLTotalSaldo: TQRLabel;
    QRBand11: TQRBand;
    QRLORION: TQRLabel;
    QRShape7: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QrlDescricao: TQRDBText;
    qrldocumento: TQRDBText;
    arlvlrdevido: TQRDBText;
    qrlvlrpago: TQRDBText;
    qrldatapago: TQRDBText;
    QRLabel4: TQRLabel;
    QRLComiss: TQRLabel;
    QrlTotComis: TQRLabel;
    RGDATA: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    Label5: TLabel;
    CBVENDEDOR: TComboBox;
    RGESCOLHA: TRadioGroup;
    QRDBText4: TQRDBText;
    procedure RGESCOLHAClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure QRResumoBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelComisPedC: TFRelComisPedC;
  XVLRDEVIDO, XVLRPAGO, XVLRCOMIS, XTVLRCOMISQUEBRA: Real;

implementation

uses UDMEstoque, UDMMacs, UMenu, Alxor32, DB;

{$R *.DFM}

procedure TFRelComisPedC.RGESCOLHAClick(Sender: TObject);
begin
  inherited;
	If RGESCOLHA.ItemIndex=2 Then
		RGDATA.Caption:='Intervalo de datas  (Fatura)'
   Else
		RGDATA.Caption:='Intervalo de datas  (Pedido)';
end;

procedure TFRelComisPedC.BtnVisualizarClick(Sender: TObject);
VAR
	TIPO: STRING;
   XTVALOR, XTVALORPG: REAL;//Totalizadores
begin
  inherited;
   If FMenu.TIPOAUX='RELCOMISPEDC'
   Then Begin
	 //PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
    If RGESCOLHA.ItemIndex=0 Then
       TIPO:='Abertas';
    If RGESCOLHA.ItemIndex=1 Then
       TIPO:='Fechadas';
    If RGESCOLHA.ItemIndex=2 Then
       TIPO:='Faturadas';

    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
    DMMACS.TLoja.Edit;
    DMMACS.TLoja.FieldByName('TMP1').AsString:='Dt. Ini.: '+EdDataIni.Text+' / Dt. Fin.: '+'Tipo: '+TIPO+#13+'Vend.: '+CBVENDEDOR.Text;
    DMMACS.TLoja.Post;
    DMMACS.Transaction.CommitRetaining;
    FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

    DMESTOQUE.TRel.Close;
    DMESTOQUE.TRel.SQL.Clear;

	 If RGESCOLHA.ItemIndex<>2
    Then Begin
   	//IMPRIME DADOS PERTINENTES AO PEDIDO
       DMESTOQUE.TRel.SQL.Add(' Select * from pedcompra ');
       DMESTOQUE.TRel.SQL.Add(' LEFT join formpag ON formpag.cod_formpag=pedcompra.cod_formpag ');
       DMESTOQUE.TRel.SQL.Add(' left join vwfornec on vwfornec.cod_fornec = pedcompra.cod_fornec ');
       DMESTOQUE.TRel.SQL.Add(' where (formpag.cod_loja=:CODLOJA) ');
       DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   	Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
   		DMESTOQUE.TRel.SQL.Add(' AND (pedcompra.dtpedcomp Between :Data1 and :Data2) ');
       	DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
       	DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
   	End;
   	If (CBVENDEDOR.Text<>'TODOS') AND (CBVENDEDOR.Text<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND (pedcompra.vendedor=:PES1)');
   		DMESTOQUE.TRel.ParamByName('PES1').AsString:=CBVENDEDOR.Text;
   	End;
   	If RGESCOLHA.ItemIndex=0
   	Then Begin//se for pedido apenas relatório de pendentes
      		DMESTOQUE.TRel.SQL.Add(' AND (pedcompra.situacao='+#39+'ABERTO'+#39+')');
   	End;
   	If RGESCOLHA.ItemIndex=1
   	Then Begin//se realisar relatório apenas de baixados
      		DMESTOQUE.TRel.SQL.Add(' AND (pedcompra.situacao='+#39+'FECHADO'+#39+')');
   	End;
   	DMESTOQUE.TRel.SQL.Add(' order by pedcompra.vendedor ');
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='...';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComisPedCompra.frf');
	    FSRel.ShowReport;
    End;
	 If RGESCOLHA.ItemIndex=2
    Then Begin
   	//IMPRIME DADOS DE PEDIDOS FATURADOS EM PARCELAS
       DMESTOQUE.TRel.SQL.Add(' select pedcompra.numped, pedcompra.Destinatario, pedcompra.dtpedcomp, pedcompra.valor, pedcompra.dtpedcomp,  pedcompra.vendedor, pedcompra.percomis, pedcompra.valor, pedcompra.vlrpcomis, vwfornec.nome as FORNEC, ');
       DMESTOQUE.TRel.SQL.Add(' formpag.descricao AS FORMPAG, parcelacp.dtdebito, parcelacp.fech, parcelacp.numparc, ');
       DMESTOQUE.TRel.SQL.Add(' parcelacp.valorpg ');
       DMESTOQUE.TRel.SQL.Add(' FROM pedcompra ');
       DMESTOQUE.TRel.SQL.Add(' Left Join vwfornec on vwfornec.cod_fornec = pedcompra.cod_fornec ');
       DMESTOQUE.TRel.SQL.Add(' Left Join formpag on formpag.cod_formpag = pedcompra.cod_formpag ');
       DMESTOQUE.TRel.SQL.Add(' left join ctapagar on ctapagar.cod_gerador = pedcompra.cod_pedcomp ');
       DMESTOQUE.TRel.SQL.Add(' left join parcelacp on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar ');
       DMESTOQUE.TRel.SQL.Add(' where (formpag.cod_loja=:CODLOJA) AND (ctapagar.tipogerador='+#39+'PEDCOMPRA'+#39+') AND (pedcompra.situacao='+#39+'FECHADO'+#39+') AND (parcelacp.fech='+#39+'S'+#39+')');
       DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   	Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
   		DMESTOQUE.TRel.SQL.Add(' AND (parcelacp.dtdebito Between :Data1 and :Data2) ');
       	DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
       	DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
   	End;
   	If (CBVENDEDOR.Text<>'TODOS') AND (CBVENDEDOR.Text<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND (pedcompra.vendedor=:PES1)');
   		DMESTOQUE.TRel.ParamByName('PES1').AsString:=CBVENDEDOR.Text;
   	End;
   	DMESTOQUE.TRel.SQL.Add(' order by pedcompra.vendedor ');
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;

   	//IMPRIME DADOS DE PEDIDOS FATURADOS EM CAIXA
	    DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add(' select pedcompra.numped, pedcompra.Destinatario, pedcompra.valor, pedcompra.dtpedcomp, pedcompra.vendedor, pedcompra.percomis, pedcompra.vlrpcomis, vwfornec.nome as FORNEC, ');
       DMESTOQUE.Alx.SQL.Add(' formpag.descricao AS FORMPAG ');
       DMESTOQUE.Alx.SQL.Add(' FROM pedcompra ');
       DMESTOQUE.Alx.SQL.Add(' Left Join vwfornec on vwfornec.cod_fornec = pedcompra.cod_fornec ');
       DMESTOQUE.Alx.SQL.Add(' Left Join formpag on formpag.cod_formpag = pedcompra.cod_formpag ');
       DMESTOQUE.Alx.SQL.Add(' Where  (formpag.cod_loja=:CODLOJA) AND (pedcompra.situacao='+#39+'FECHADO'+#39+') AND (formpag.descricao='+#39+'À VISTA'+#39+')');
       DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   	Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
   		DMESTOQUE.Alx.SQL.Add(' AND (pedcompra.dtpedcomp Between :Data1 and :Data2) ');
       	DMESTOQUE.Alx.ParamByName('Data1').AsString:=EdDataIni.Text;
       	DMESTOQUE.Alx.ParamByName('Data2').AsString:=EdDataFim.Text;
   	End;
   	If (CBVENDEDOR.Text<>'TODOS') AND (CBVENDEDOR.Text<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.Alx.SQL.Add(' AND (pedcompra.vendedor=:PES1)');
   		DMESTOQUE.Alx.ParamByName('PES1').AsString:=CBVENDEDOR.Text;
   	End;
   	DMESTOQUE.Alx.SQL.Add(' order by pedcompra.vendedor ');
   	DMESTOQUE.Alx.SQL.Text;
   	DMESTOQUE.Alx.Open;
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Vendas/Vendas Faturadas';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComisPedCompraFat.frf');
	    FSRel.ShowReport;
    End;
   End;
   If FMenu.TIPOAUX='RELCOMISPEDV'
   Then Begin
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
    	DMMACS.TLoja.Edit;
    	DMMACS.TLoja.FieldByName('TMP1').AsString:='Dt. Ini.: '+EdDataIni.Text+' / Dt. Fin.: '+'Tipo: '+TIPO+#13+'Vend.: '+CBVENDEDOR.Text;
    	DMMACS.TLoja.Post;
    	DMMACS.Transaction.CommitRetaining;

   	//////////////////////////////////
   	//LANCA EM TMP AS CONTAS A RECEBER
       //////////////////////////////////
   	DMESTOQUE.TRel.Close;
    	DMESTOQUE.TRel.SQL.Clear;
    	DMESTOQUE.TRel.SQL.Add('  select vwcliente.nome, vwparcr.numparc, vwparcr.valor, vwparcr.valorpg, vwparcr.dtdebito, vwfuncionario.cod_func, Pedvenda.VlrComis, PedVenda.Valor As ValorPed from vwparcr ');
    	DMESTOQUE.TRel.SQL.Add('  left join parcelacr on vwparcr.cod_parcelacr=parcelacr.cod_parcelacr ');
    	DMESTOQUE.TRel.SQL.Add('  left join ctareceber on vwparcr.cod_ctareceber = ctareceber.cod_ctareceber ');
    	DMESTOQUE.TRel.SQL.Add('  left join vwcliente on ctareceber.cod_cliente = vwcliente.cod_cliente ');
    	DMESTOQUE.TRel.SQL.Add('  left join formpag on ctareceber.cod_formpag = formpag.cod_formpag ');
    	DMESTOQUE.TRel.SQL.Add('  join pedvenda ON ctareceber.cod_gerador = pedvenda.cod_pedvenda ');
    	DMESTOQUE.TRel.SQL.Add('  left join vwfuncionario on pedvenda.cod_vendedor = vwfuncionario.cod_func ');
    	DMESTOQUE.TRel.SQL.Add('  where (formpag.cod_loja=:CODLOJA) AND (ctareceber.tipogerador='+#39+'PEDVENDA'+#39+')  AND (vwparcr.fech='+#39+'S'+#39+') ');
		DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
		If (EdDataIni.Text<>'  /  /    ') AND (EdDataFim.Text<>'  /  /    ')
       Then Begin
   		DMESTOQUE.TRel.SQL.Add(' AND ((vwparcr.dtdebito>=:DATA1) And (vwparcr.dtdebito<=:DATA2))');
  			DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
  			DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
       End;
   	If (CBVENDEDOR.Text<>'TODOS') AND (CBVENDEDOR.Text<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND  (vwfuncionario.nome=:NOMEFUNC) ');
   		DMESTOQUE.TRel.ParamByName('NOMEFUNC').AsString:=CBVENDEDOR.Text;
   	End;
       DMESTOQUE.TRel.Open;

       //ZERA REGISTROS NA TABELA TEMPORARIA
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add(' delete from tmp ');
       DMMACS.TMP.ExecSQL;

       DMMACS.Transaction.CommitRetaining;
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add(' select *  from tmp ');
       DMMACS.TMP.Open;

       //insere titulo para contas a prazo
  		DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
      	DMMACS.TMP.FieldByName('DESC1').AsString:= 'FATURAS À PRAZO';
       DMMACS.TMP.Post;

       XTVALOR:=0;
       XTVALORPG:=0;
       While not DMESTOQUE.TRel.Eof do
       Begin
	  		DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
          	DMMACS.TMP.FieldByName('DESC1').AsString:= DMESTOQUE.TRel.FieldByName('NOME').AsString;
          	DMMACS.TMP.FieldByName('DESC2').AsString:= DMESTOQUE.TRel.FieldByName('NUMPARC').AsString;
          	DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMESTOQUE.TRel.FieldByName('VALOR').AsCurrency;
           XTVALOR:=XTVALOR+DMESTOQUE.TRel.FieldByName('VALOR').AsCurrency;
          	DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.TRel.FieldByName('VALORPG').AsCurrency;
			XTVALORPG:=XTVALORPG+DMESTOQUE.TRel.FieldByName('VALORPG').AsCurrency;
          	DMMACS.TMP.FieldByName('VLR3').AsCurrency:=(DMESTOQUE.TRel.FieldByName('VLRCOMIS').AsCurrency *100)/DMESTOQUE.TRel.FieldByName('VALORPED').AsCurrency;
//          	DMMACS.TMP.FieldByName('VLR3').AsCurrency:=DMESTOQUE.TRel.FieldByName('PERCOMIS').AsCurrency;
          	DMMACS.TMP.FieldByName('DATA1').AsString:=DMESTOQUE.TRel.FieldByName('DTDEBITO').AsString;
          	DMMACS.TMP.FieldByName('INT1').AsString:=DMESTOQUE.TRel.FieldByName('COD_FUNC').AsString;
           DMMACS.TMP.Post;
           DMESTOQUE.TRel.Next;
       End;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
       DMMACS.TMP.FieldByName('DESC1').AsString:= 'TOTAL';
      	DMMACS.TMP.FieldByName('VLR1').AsCurrency:= XTVALOR;
       DMMACS.TMP.FieldByName('VLR2').AsCurrency:= XTVALORPG;
       DMMACS.TMP.Post;

       DMMACS.Transaction.CommitRetaining;
       //insere titulo para contas a vist
  		DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
      	DMMACS.TMP.FieldByName('DESC1').AsString:= 'FATURAS À VISTA';
       DMMACS.TMP.Post;

   	///////////////////////////
   	//LANCA EM TMP AS DOS CAIXA
       ///////////////////////////
   	DMESTOQUE.TRel.Close;
    	DMESTOQUE.TRel.SQL.Clear;
    	DMESTOQUE.TRel.SQL.Add('  select vwcliente.nome, lancaixa.doc, lancaixa.valor, lancaixa.dtlanc, vwfuncionario.cod_func, PedVenda.VLRCOMIS from lancaixa ');
    	DMESTOQUE.TRel.SQL.Add('    join pedvenda ON lancaixa.cod_gerador = pedvenda.cod_pedvenda ');
    	DMESTOQUE.TRel.SQL.Add('    left join vwcliente on pedvenda.cod_cliente = vwcliente.cod_cliente ');
    	DMESTOQUE.TRel.SQL.Add('    left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
    	DMESTOQUE.TRel.SQL.Add('    left join vwfuncionario on pedvenda.cod_vendedor = vwfuncionario.cod_func ');
    	DMESTOQUE.TRel.SQL.Add('    where (formpag.cod_loja=:CODLOJA) AND (lancaixa.tipogerador='+#39+'PEDVENDA'+#39+') ');
		DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
		If (EdDataIni.Text<>'  /  /    ') AND (EdDataFim.Text<>'  /  /    ')
       Then Begin
   		DMESTOQUE.TRel.SQL.Add(' AND ((lancaixa.dtlanc>=:DATA1) And (lancaixa.dtlanc<=:DATA2))');
  			DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
  			DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
       End;
   	If (CBVENDEDOR.Text<>'TODOS') AND (CBVENDEDOR.Text<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND  (vwfuncionario.nome=:NOMEFUNC) ');
   		DMESTOQUE.TRel.ParamByName('NOMEFUNC').AsString:=CBVENDEDOR.Text;
   	End;
       DMESTOQUE.TRel.Open;

       XTVALOR:=0;
       XTVALORPG:=0;
       While not DMESTOQUE.TRel.Eof do
       Begin
	  		DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
          	DMMACS.TMP.FieldByName('DESC1').AsString:= DMESTOQUE.TRel.FieldByName('NOME').AsString;
          	DMMACS.TMP.FieldByName('DESC2').AsString:= DMESTOQUE.TRel.FieldByName('DOC').AsString;
          	DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.TRel.FieldByName('VALOR').AsCurrency;
           XTVALOR:=XTVALOR+DMMACS.TMP.FieldByName('VLR2').AsCurrency;
          	DMMACS.TMP.FieldByName('VLR3').AsCurrency:=(DMESTOQUE.TRel.FieldByName('VLRCOMIS').AsCurrency *100)/DMESTOQUE.TRel.FieldByName('VALOR').AsCurrency;
          	DMMACS.TMP.FieldByName('DATA1').AsString:=DMESTOQUE.TRel.FieldByName('DTLANC').AsString;
          	DMMACS.TMP.FieldByName('INT1').AsString:=DMESTOQUE.TRel.FieldByName('COD_FUNC').AsString;
           DMMACS.TMP.Post;
           DMESTOQUE.TRel.Next;
       End;
       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=InserReg(DMMACS.TMP, 'TMP', 'COD_TMP');
       DMMACS.TMP.FieldByName('DESC1').AsString:= 'TOTAL';
      	DMMACS.TMP.FieldByName('VLR1').AsCurrency:= 0;
       DMMACS.TMP.FieldByName('VLR2').AsCurrency:= XTVALOR;
       DMMACS.TMP.Post;
       DMMACS.Transaction.CommitRetaining;
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' select *  from tmp order by COD_TMP');
       DMESTOQUE.TRel.Open;
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Vendas/Vendas Faturadas';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
		QRResumo.Preview;
	End;
end;

procedure TFRelComisPedC.FormActivate(Sender: TObject);
begin
  inherited;
   FSDSRel.DataSource:=DMESTOQUE.DRel;
   FDSCaixa.DataSource:=DMESTOQUE.DSAlx;
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   If FMenu.TIPOAUX='RELCOMISPEDC'
   Then Begin
   	DMESTOQUE.Alx.SQL.Add('Select distinct(pedcompra.vendedor) from pedcompra');
       LDescTitulo.Caption:='Relatório de Comissão de Pedidos de Compra';
       RGESCOLHA.Visible:=True;
   End;
   If FMenu.TIPOAUX='RELCOMISPEDV'
   Then Begin
       RGESCOLHA.Visible:=False;
       LDescTitulo.Caption:='Relatório de Vendas Faturadas';
   	DMESTOQUE.Alx.SQL.Add(' select vwfuncionario.cod_func, vwfuncionario.nome AS VENDEDOR from vwfuncionario ');
   End;
   DMESTOQUE.Alx.Open;
   CBVENDEDOR.Clear;
   CBVENDEDOR.Items.Add('TODOS');
   DMESTOQUE.Alx.First;
   While Not DMESTOQUE.Alx.Eof do
   Begin
   	CBVENDEDOR.Items.Add(DMESTOQUE.Alx.FieldByName('VENDEDOR').AsString);
       DMESTOQUE.Alx.Next;
   End;
end;

procedure TFRelComisPedC.QRResumoBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
   XVLRDEVIDO:=0;
   XVLRPAGO:=0;
   XVLRCOMIS:=0;
   XTVLRCOMISQUEBRA:=0;
end;

procedure TFRelComisPedC.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	If (DMESTOQUE.TRel.FieldByName('DESC1').AsString='FATURAS À PRAZO') OR (DMESTOQUE.TRel.FieldByName('DESC1').AsString='FATURAS À VISTA') Then
   	QrlDescricao.Font.Style :=[fsbold]
   Else
   	QrlDescricao.Font.Style :=[];
   QRLComiss.Caption:=FormatFloat('0.00', (DMESTOQUE.TRel.FieldByName('VLR2').AsCurrency*DMESTOQUE.TRel.FieldByName('VLR3').AsCurrency)/100);
   If (DMESTOQUE.TRel.FieldByName('DESC1').AsString='TOTAL') or (DMESTOQUE.TRel.FieldByName('DESC1').AsString='FATURAS À PRAZO')  or (DMESTOQUE.TRel.FieldByName('DESC1').AsString='FATURAS À VISTA')
   Then Begin
   	If DMESTOQUE.TRel.FieldByName('DESC1').AsString='TOTAL' Then
	   		QRLComiss.Caption:=FormatFloat('0.00', XTVLRCOMISQUEBRA)
       Else
           QRLComiss.Caption:='0,00';
       QrlDescricao.Font.Style:=[fsbold];
       arlvlrdevido.Font.Style:=[fsbold];
       qrlvlrpago.Font.Style:=[fsbold];
		QRLComiss.Font.Style:=[fsbold];
       XTVLRCOMISQUEBRA:=0;
	End
   Else Begin
       QrlDescricao.Font.Style:=[];
       arlvlrdevido.Font.Style:=[];
       qrlvlrpago.Font.Style:=[];
		QRLComiss.Font.Style:=[];
   	XVLRDEVIDO:=XVLRDEVIDO+DMESTOQUE.TRel.FieldByName('VLR1').AsCurrency;
   	XVLRPAGO:=XVLRPAGO+DMESTOQUE.TRel.FieldByName('VLR2').AsCurrency;
		XVLRCOMIS:=XVLRCOMIS+(DMESTOQUE.TRel.FieldByName('VLR2').AsCurrency*DMESTOQUE.TRel.FieldByName('VLR3').AsCurrency)/100;
		XTVLRCOMISQUEBRA:=XTVLRCOMISQUEBRA+    (DMESTOQUE.TRel.FieldByName('VLR2').AsCurrency*DMESTOQUE.TRel.FieldByName('VLR3').AsCurrency)/100;
   End;
end;

procedure TFRelComisPedC.QRBand12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   QrlVlrPagar.Caption:=FormatFloat('0.00', XVLRDEVIDO);
   QRLTotalSaldo.Caption:=FormatFloat('0.00', XVLRPAGO);
   QrlTotComis.Caption:=FormatFloat('0.00', XVLRCOMIS);   
end;

end.
