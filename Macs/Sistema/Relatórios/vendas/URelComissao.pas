unit URelComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, TFlatHintUnit, StdCtrls,
  Buttons, jpeg, ExtCtrls, UFrmBusca, Mask, Qrctrls, QuickRpt, Grids,
  DBGrids, DrLabel;

type
  TFRelComissao = class(TFPadraoRelatorio)
    QrOrdem: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    Banda: TQRSubDetail;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    LPerProd: TQRLabel;
    LPerServ: TQRLabel;
    LVlrProd: TQRLabel;
    LVlrServ: TQRLabel;
    LTotComis: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    LTotComiss: TQRLabel;
    QRBand3: TQRBand;
    LTOTCOMVEND: TQRLabel;
    LTOTCOMSERV: TQRLabel;
    LTOTCOMPROD: TQRLabel;
    RGESCOLHA: TRadioGroup;
    RGTIPOREL: TRadioGroup;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    FrmVendIni: TFrmBusca;
    FrmVendFim: TFrmBusca;
    RGOrdem: TRadioGroup;
    RGData: TRadioGroup;
    RGVencBaix: TRadioGroup;
    RGVencParc: TRadioGroup;
    procedure FrmVendIniBTNOPENClick(Sender: TObject);
    procedure FrmVendIniBTNMINUSClick(Sender: TObject);
    procedure FrmVendIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmVendFimBTNMINUSClick(Sender: TObject);
    procedure FrmVendFimBTNOPENClick(Sender: TObject);
    procedure FrmVendFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BandaBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FrmVendIniEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmVendFimEDCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure PrepImp;// Prepara a sql de impressao
	 Procedure ImpVendaVend;
  public
    { Public declarations }
  end;

var
  FRelComissao: TFRelComissao;
  XVENDINI, XVENDFIM: STRING;
  XPESSOAINI, XPESSOAFIM: STRING;
  //`VARIAVEIS UTILIZADAS PARA IMPRESSAO DE COMISSAO EM MIULTIPLOS COMISSIONADOS
	XPERC: Real;
   XTOTCOMPROD, XTOTCOMSERV: REAL;
   XTVCOMPROD, XTVCOMSERV: REAL;
implementation

uses UDMMacs, UDMEstoque, UMenu, UDMPessoa, UFuncionario, Alxor32,
  AlxMessage, DB, UDMSaida;

{$R *.DFM}

// imprime relatorio de venda por vendedores
Procedure TFRelComissao.ImpVendaVend;
Var
	XCOD_TMP: Integer;
   XVlrVista, XVlrPrazo: Real;
   XTotVista, XTotPrazo: Real;
   XTotDevolvido: Real; // aemazena o total financeiro dos produtos devolvidos no pedido de venda
Begin
	//Inicia variaveis de totalizadores gerais
   XTotVista:=0;
   XTotPrazo:=0;
   // VALOR FINANCEIRO DOS PRODUTOS DEVOLVIDOS NO PEDIDO DE VENDA
   XTotDevolvido := 0;

	//Limpa temporario
   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add('DELETE FROM TMP');
   DMMACS.TMP.ExecSQL;
   DMMACS.Transaction.CommitRetaining;

   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
   DMMACS.TMP.SQL.Add(' SELECT * FROM TMP');
   DMMACS.TMP.Open;

   //Filtra vendedores
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add(' select * from vwfuncionario');
   If (XVENDINI<>'') and (XVENDFIM<>'')
   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   	DMESTOQUE.TRel.SQL.Add('where (vwfuncionario.NOME Between :PES1 And :PES2)');
       DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
       DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
   End;
   DMESTOQUE.TRel.Open;
   If Not DMESTOQUE.TRel.IsEmpty
	Then Begin
       XCOD_TMP:=1;
   	//Percorre todos os vendedores acumulando valores
       DMESTOQUE.TRel.First;
       While not DMESTOQUE.TRel.Eof do
       Begin
			//inicia variaveis de valores
   		XVlrVista:=0;
   		XVlrPrazo:=0;

       	//Filtra Vendas a Vista
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('select VWpedv.valor, pedvenda.dtfech from VWpedv');
           DMMACS.TALX.SQL.Add(' left join pedvenda on vwpedv.cod_pedvenda = pedvenda.cod_pedvenda');
           DMMACS.TALX.SQL.Add(' Where (VWpedv.cod_vendedor=:COD_VENDEDOR) ');
           DMMACS.TALX.SQL.Add(' And (vwpedv.cod_loja=:COD_LOJA) ');
           DMMACS.TALX.SQL.Add(' And (vwpedv.formpag= '+#39+'À VISTA'+#39+')');

           //verifica o filtro de pedidos abertos ou fechados
           If RGESCOLHA.ItemIndex=0
           Then Begin
               DMMACS.TALX.SQL.Add(' AND (VWpedv.SITUACAO = '+#39+'ABERTO'+#39+')');
           End;
           If RGESCOLHA.ItemIndex=1
           Then Begin
               DMMACS.TALX.SQL.Add(' AND (VWpedv.SITUACAO = '+#39+'FECHADO'+#39+')');
           End;

           DMMACS.TALX.ParamByName('COD_VENDEDOR').AsInteger:=DMESTOQUE.TRel.FieldByName('cod_func').AsInteger;
           DMMACS.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
			If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
			Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
                If RGData.ItemIndex=0
                Then Begin
				    DMMACS.TALX.SQL.Add(' AND (vwpedv.dtpedven Between :Data1 and :Data2) ');
				    DMMACS.TALX.ParamByName('Data1').AsString:=EdDataIni.Text;
				    DMMACS.TALX.ParamByName('Data2').AsString:=EdDataFim.Text;
                end;
                If RGData.ItemIndex=1
                Then Begin
                    DMMACS.TALX.SQL.Add(' AND (pedvenda.dtfech Between :Data1 and :Data2) ');
				    DMMACS.TALX.ParamByName('Data1').AsString:=EdDataIni.Text;
				    DMMACS.TALX.ParamByName('Data2').AsString:=EdDataFim.Text;
                end;
   		End;
           DMMACS.TALX.Open;
           DMMACS.TALX.First;

           while not DMMACS.TALX.Eof do
           begin
               XVlrVista:=XVlrVista+DMMACS.TALX.FieldByName('VALOR').AsCurrency;
               DMMACS.TALX.Next;
           end;

       	//Filtra Ordens a Vista
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('select Sum(vwordem.Total) as VALOR from vwordem');
           DMMACS.TALX.SQL.Add(' Where (vwordem.cod_vendedor=:COD_VENDEDOR) ');
           DMMACS.TALX.SQL.Add(' And (vwordem.cod_loja=:COD_LOJA) ');
           DMMACS.TALX.SQL.Add(' And (vwordem.formapag= '+#39+'À VISTA'+#39+')');

           //verifica o filtro de ORDENS abertos ou fechados
           If RGESCOLHA.ItemIndex=0
           Then Begin
               DMMACS.TALX.SQL.Add(' And (vwordem.STATUS= '+#39+'ABERTO'+#39+')');
           End;
           If RGESCOLHA.ItemIndex=1
           Then Begin
               DMMACS.TALX.SQL.Add(' And (vwordem.STATUS= '+#39+'FECHADO'+#39+')');
           End;
           DMMACS.TALX.ParamByName('COD_VENDEDOR').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_FUNC').AsInteger;
           DMMACS.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
			If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
			Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
                If RGData.ItemIndex=0
                Then Begin
				    DMMACS.TALX.SQL.Add(' AND (vwordem.dtabert Between :Data1 and :Data2) ');
				    DMMACS.TALX.ParamByName('Data1').AsString:=EdDataIni.Text;
				    DMMACS.TALX.ParamByName('Data2').AsString:=EdDataFim.Text;
                end;
                If RGData.ItemIndex=1
                Then Begin
                    DMMACS.TALX.SQL.Add(' AND (vwordem.dtfech Between :Data1 and :Data2) ');
				    DMMACS.TALX.ParamByName('Data1').AsString:=EdDataIni.Text;
				    DMMACS.TALX.ParamByName('Data2').AsString:=EdDataFim.Text;
                end;
   		End;
           DMMACS.TALX.Open;
           XVlrVista:=XVlrVista+DMMACS.TALX.FieldByName('VALOR').AsCurrency;

       	//Filtra Vendas a Prazo
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('select VWpedv.valor as VALOR, pedvenda.dtfech from VWpedv');
           DMMACS.TALX.SQL.Add('left join pedvenda on vwpedv.cod_pedvenda = pedvenda.cod_pedvenda');
           DMMACS.TALX.SQL.Add(' Where (VWpedv.cod_vendedor=:COD_VENDEDOR) ');
           DMMACS.TALX.SQL.Add(' And (VWpedv.cod_loja=:COD_LOJA) ');
           DMMACS.TALX.SQL.Add('  And (vwpedv.formpag<> '+#39+'À VISTA'+#39+')');

           //verifica o filtro de pedidos abertos ou fechados
           If RGESCOLHA.ItemIndex=0
           Then Begin
               DMMACS.TALX.SQL.Add(' And (VWpedv.SITUACAO= '+#39+'ABERTO'+#39+')');
           End;
           If RGESCOLHA.ItemIndex=1
           Then Begin
               DMMACS.TALX.SQL.Add(' And (VWpedv.SITUACAO= '+#39+'FECHADO'+#39+')');
           End;

           DMMACS.TALX.ParamByName('COD_VENDEDOR').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_FUNC').AsInteger;
           DMMACS.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;

			If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
			Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
                If RGData.ItemIndex=0
                Then Begin
				    DMMACS.TALX.SQL.Add(' AND (vwpedv.dtpedven Between :Data1 and :Data2) ');
				    DMMACS.TALX.ParamByName('Data1').AsString:=EdDataIni.Text;
				    DMMACS.TALX.ParamByName('Data2').AsString:=EdDataFim.Text;
                end;
                If RGData.ItemIndex=1
                Then Begin
                    DMMACS.TALX.SQL.Add(' AND (pedvenda.dtfech Between :Data1 and :Data2) ');
				    DMMACS.TALX.ParamByName('Data1').AsString:=EdDataIni.Text;
				    DMMACS.TALX.ParamByName('Data2').AsString:=EdDataFim.Text;
                end;
   		End;
           DMMACS.TALX.Open;
           DMMACS.TALX.First;

           while not DMMACS.TALX.Eof do
           begin
               XVlrPrazo:=XVlrPrazo+DMMACS.TALX.FieldByName('VALOR').AsCurrency;
               DMMACS.TALX.Next;
           end;      

       	//Filtra Ordens a Prazo
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('select Sum(vwordem.Total) as VALOR from vwordem');
           DMMACS.TALX.SQL.Add(' Where (vwordem.cod_vendedor=:COD_VENDEDOR) ');
           DMMACS.TALX.SQL.Add(' And (vwordem.cod_loja=:COD_LOJA) ');
           DMMACS.TALX.SQL.Add('  And (vwordem.formapag<> '+#39+'À VISTA'+#39+')');
           //FILTRA AS ORDENS ABERTAS OU FECHADAS
           If RGESCOLHA.ItemIndex=0
           Then Begin
               DMMACS.TALX.SQL.Add(' And (vwordem.STATUS= '+#39+'ABERTO'+#39+')');
           End;
           If RGESCOLHA.ItemIndex=1
           Then Begin
               DMMACS.TALX.SQL.Add(' And (vwordem.STATUS= '+#39+'FECHADO'+#39+')');
           End;

           DMMACS.TALX.ParamByName('COD_VENDEDOR').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_FUNC').AsInteger;
           DMMACS.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
			If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
			Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
                If RGData.ItemIndex=0
                Then Begin
				    DMMACS.TALX.SQL.Add(' AND (vwordem.dtabert Between :Data1 and :Data2) ');
				    DMMACS.TALX.ParamByName('Data1').AsString:=EdDataIni.Text;
				    DMMACS.TALX.ParamByName('Data2').AsString:=EdDataFim.Text;
                end;
                If RGData.ItemIndex=1
                Then Begin
                    DMMACS.TALX.SQL.Add(' AND (vwordem.dtfech Between :Data1 and :Data2) ');
				    DMMACS.TALX.ParamByName('Data1').AsString:=EdDataIni.Text;
				    DMMACS.TALX.ParamByName('Data2').AsString:=EdDataFim.Text;
                end;
   		End;
           DMMACS.TALX.Open;
           XVlrPrazo:=XVlrPrazo+DMMACS.TALX.FieldByName('VALOR').AsCurrency;

           //Acumula nos totalizadores gerais
           XTotVista:=XVlrVista;
           XTotPrazo:=XVlrPrazo;

           //Insere valores na tabela temporaria
           DMMACS.TMP.Insert;
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCOD_TMP;
           DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_FUNC').AsInteger;
           DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.TRel.FieldByName('NOME').AsString;
           DMMACS.TMP.FieldByName('DESC2').AsString:=DMESTOQUE.TRel.FieldByName('COD_INTERNO').AsString;
			DMMACS.TMP.FieldByName('VLR1').AsCurrency:=XVlrVista;
			DMMACS.TMP.FieldByName('VLR2').AsCurrency:=XVlrPrazo;
           DMMACS.TMP.Post;
           XCOD_TMP:=XCOD_TMP+1;

           // SELECIONANDO TODOS SOS REGISTROS QUE POSSUEM QTDE DE PRODUTO DEVOLVIDA MAIOR QUE "0"
           DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
           DMSAIDA.TAlx.SQL.Add('SELECT itenspedven.cod_pedven, itenspedven.qtdeprod, itenspedven.qtddev, itenspedven.vlrunitdev, itenspedven.operacao,');
           DMSAIDA.TAlx.SQL.Add('VWpedv.SITUACAO, VWpedv.cod_pedvenda, VWpedv.dtpedven, VWpedv.cod_loja, pedvenda.dtfech');
           DMSAIDA.TAlx.SQL.Add('FROM VWpedv');
           DMSAIDA.TAlx.SQL.Add('LEFT JOIN itenspedven ON VWpedv.cod_pedvenda = itenspedven.cod_pedven');
           DMSAIDA.TAlx.SQL.Add('LEFT JOIN pedvenda on vwpedv.cod_pedvenda = pedvenda.cod_pedvenda');
           DMSAIDA.TAlx.SQL.Add('WHERE (ITENSPEDVEN.qtddev > 0)');
           If (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ')
           Then Begin
               If RGData.ItemIndex=0
               Then Begin
                    DMSAIDA.TAlx.SQL.Add('AND');
                    DMSAIDA.TAlx.SQL.Add('(VWpedv.dtpedven BETWEEN :DATA1 AND :DATA2)');
                    DMSAIDA.TAlx.ParamByName('DATA1').AsString := EdDataIni.Text;
                    DMSAIDA.TAlx.ParamByName('DATA2').AsString := EdDataFim.Text;
               end;
               If RGData.ItemIndex=1
               Then Begin
                    DMSAIDA.TAlx.SQL.Add('AND');
                    DMSAIDA.TAlx.SQL.Add('(pedvenda.dtfech BETWEEN :DATA1 AND :DATA2)');
                    DMSAIDA.TAlx.ParamByName('DATA1').AsString := EdDataIni.Text;
                    DMSAIDA.TAlx.ParamByName('DATA2').AsString := EdDataFim.Text;
               end;
           End;
           DMSAIDA.TALX.SQL.Add(' AND (VWpedv.cod_vendedor=:COD_VENDEDOR) ');
           DMSAIDA.TALX.ParamByName('COD_VENDEDOR').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_FUNC').AsInteger;
           DMSAIDA.TALX.SQL.Add(' And (VWpedv.cod_loja=:COD_LOJA) ');
           DMSAIDA.TALX.SQL.Add(' And (itenspedven.operacao = ' + #39 + 'DVL' + #39 + ')');

           //verifica o filtro de pedidos abertos ou fechados
           If RGESCOLHA.ItemIndex=0
           Then Begin
               DMSAIDA.TALX.SQL.Add(' And (VWpedv.SITUACAO= '+#39+'ABERTO'+#39+')');
           End;
           If RGESCOLHA.ItemIndex=1
           Then Begin
               DMSAIDA.TALX.SQL.Add(' And (VWpedv.SITUACAO= '+#39+'FECHADO'+#39+')');
           End;
           DMSAIDA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
           DMSAIDA.TAlx.Open;

           // PRIMEIRO REGISTRO
           DMSAIDA.TAlx.First;

           While not DMSAIDA.TAlx.Eof do
           begin
               // aemazena o total financeiro dos produtos devolvidos no pedido de venda
               XTotDevolvido := XTotDevolvido + (DMSAIDA.TAlx.FieldByName('QTDDEV').AsCurrency * DMSAIDA.TAlx.FieldByName('VLRUNITDEV').AsCurrency);
           // proximo item
           DMSAIDA.TAlx.Next;
           end;


       // proximo funcionario
       DMESTOQUE.TRel.Next;
       End;
       DMMACS.Transaction.CommitRetaining;

   	DMMACS.TMP.Close;
   	DMMACS.TMP.SQL.Clear;
   	DMMACS.TMP.SQL.Add(' SELECT * FROM TMP  Where (tmp.vlr1<>0) or (tmp.vlr2<>0) ');
   	DMMACS.TMP.Open;
       DMMACS.TMP.First;
       While not DMMACS.TMP.Eof do
       Begin
           DMMACS.TMP.Edit;
           DMMACS.TMP.FieldByName('VLR3').AsCurrency:=(((DMMACS.TMP.FieldByName('VLR1').AsCurrency+DMMACS.TMP.FieldByName('VLR2').AsCurrency)*100)/(XTotVista+XTotPrazo));
           DMMACS.TMP.Post;
			DMMACS.TMP.Next;
       End;

       // BUSCANDO PRIMEIRO REGISTRO DA TABELA TMP
       FiltraTabela(DMMACS.TMP,'TMP','COD_TMP','1','');

       DMMACS.TMP.Edit;
       DMMACS.TMP.FieldByName('VLR4').AsCurrency := XTotDevolvido;
       DMMACS.TMP.Post;

       FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');
       DMMACS.TLoja.Edit;
       DMMACS.TLoja.FieldByName('TMP2').AsString := 'Financeiro/Relatórios/Compras e Vendas/Vendas por Vendedor';
       DMMACS.TLoja.Post;
       DMMACS.Transaction.CommitRetaining;
       DMESTOQUE.TRel.close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add(' Select * from tmp ');
       DMESTOQUE.TRel.SQL.Add(' Where (tmp.vlr1<>0) or (tmp.vlr2<>0) ');
       DMESTOQUE.TRel.Open;
       If not DMESTOQUE.TRel.IsEmpty
       Then Begin
   		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfVendaVendedor.frf');
	    	FSRel.ShowReport;
       End
       Else Begin
			Mensagem('OPÇÃO BLOQUEADA', 'Relatório retornou fazio!', '', 1, 1, False, 'a');
       	Exit;
       End;
   End
   Else Begin
		Mensagem('INFORMAÇÃO', 'Relatório retornou sem vendedores.', '', 1, 1, False, 'a');
       Exit;
   End;
End;

Procedure TFRelComissao.PrepImp;// Prepara a sql de impressao
VAR
	TIPO: STRING;
Begin
	//PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
   If RGESCOLHA.ItemIndex=0 Then
       TIPO:='Abertas'
   Else
       TIPO:='Fechadas';
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
   If FMenu.TIPOREL='COMISSCTR' then
       DMMACS.TLoja.FieldByName('TMP1').AsString:='Dt. Ini.: '+EdDataIni.Text+' / Dt. Fin.: '+EdDataFim.Text+#13+FrmVendIni.EdDescricao.Text+' - '+FrmVendFim.EdDescricao.Text+#13
   else
       DMMACS.TLoja.FieldByName('TMP1').AsString:='Dt. Ini.: '+EdDataIni.Text+' / Dt. Fin.: '+EdDataFim.Text+#13+FrmVendIni.EdDescricao.Text+' - '+FrmVendFim.EdDescricao.Text+#13+'Tipo: '+TIPO;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
	If FMenu.TIPOREL='COMISMULTVEN'
   Then Begin
       DMESTOQUE.TRel.SQL.Add(' select pedvenda.nomecli, pedvenda.numped, pedvenda.dtpedven, pedvenda.valor, pedvenda.comsobvenda, ');
       DMESTOQUE.TRel.SQL.Add(' pedvenda.vlrcomis, pessoa.nome AS VENDEDOR,  comprod.percento, formpag.descricao As  formpag from comprod ');
       DMESTOQUE.TRel.SQL.Add(' left join pedvenda on pedvenda.cod_pedvenda = comprod.cod_gerador ');
       DMESTOQUE.TRel.SQL.Add(' left join funcionario on funcionario.cod_func = comprod.cod_funcionario ');
       DMESTOQUE.TRel.SQL.Add(' left join pessoa on pessoa.cod_pessoa = funcionario.cod_pessoa ');
       DMESTOQUE.TRel.SQL.Add(' left join formpag on formpag.cod_formpag = pedvenda.cod_formpag ');
       DMESTOQUE.TRel.SQL.Add(' Where  (comprod.tipo='+#39+'PEDVENDA'+#39+') AND (formpag.cod_loja=:CODLOJA) ');
  End;

	If FMenu.TIPOREL='COMISSIMP'
   Then Begin
       DMESTOQUE.TRel.SQL.Add(' select pedvenda.nomecli, pedvenda.cpfcnpj, pedvenda.desconto, pedvenda.dtpedven, pedvenda.dtfech, ');
       DMESTOQUE.TRel.SQL.Add('       pedvenda.numped, pedvenda.valor, pedvenda.vlrcomis, formpag.descricao, Pessoa.nome AS VENDEDOR ');
       DMESTOQUE.TRel.SQL.Add(' From pedvenda left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
       DMESTOQUE.TRel.SQL.Add('              left join funcionario on funcionario.cod_func = pedvenda.cod_vendedor ');
       DMESTOQUE.TRel.SQL.Add('              left join pessoa on pessoa.cod_pessoa = funcionario.cod_pessoa ');
   	   DMESTOQUE.TRel.SQL.Add(' where formpag.cod_loja=:CODLOJA  and not exists (select * from comprod where (comprod.tipo='+#39+'PEDVENDA'+#39+') and (comprod.cod_gerador=pedvenda.cod_pedvenda))');
   End;

	If (FMenu.TIPOREL='COMISSIMP') OR (FMenu.TIPOREL='COMISMULTVEN')
   Then Begin
  		DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   	Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
        If RGData.ItemIndex=0
        Then Begin
   		    DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.DTPEDVEN Between :Data1 and :Data2) '); // jonathan - dia 23/04/2009 - alterado de PEDVENDA.DTABERT para PEDVENDA.DTPEDVEN conforme solicitado no chamado 262
   		    DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
   		    DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
        end;
        If RGData.ItemIndex=1
        Then Begin
            DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.DTFECH Between :Data1 and :Data2) ');
   		    DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
   		    DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
        end;
   	End;
   	If (XVENDINI<>'') and (XVENDFIM<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND (PESSOA.NOME Between :PES1 And :PES2)');
   		DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
   		DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
   	End;
   	If RGESCOLHA.ItemIndex=0
   	Then Begin//se for pedido apenas relatório de pendentes
      		DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.SITUACAO='+#39+'ABERTO'+#39+')');
   	End;
   	If RGESCOLHA.ItemIndex=1
   	Then Begin//se realisar relatório apenas de baixados
      		DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.SITUACAO='+#39+'FECHADO'+#39+')');
   	End;
      	If (RGOrdem.Visible=False) Or (RGOrdem.ItemIndex=0) Then
   		DMESTOQUE.TRel.SQL.Add(' order by pessoa.nome ');
	   	If RGOrdem.Visible=True
      	Then Begin
          If RGOrdem.ItemIndex=1 Then
	      		DMESTOQUE.TRel.SQL.Add(' ORDER BY pessoa.nome, pedvenda.nomecli ');
          If RGOrdem.ItemIndex=2 Then
	      		DMESTOQUE.TRel.SQL.Add(' ORDER BY pessoa.nome, pedvenda.numped ');
          If RGOrdem.ItemIndex=3 Then
	      		DMESTOQUE.TRel.SQL.Add(' ORDER BY pessoa.nome, pedvenda.dtpedven ');
      	End;

   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
	End;
   If FMenu.TIPOREL='COMISSIMP'
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComisSimp.frf');
	    FSRel.ShowReport;
   End;
   If FMenu.TIPOREL='COMISMULTVEN'
   Then Begin
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Comissão/Múltiplos Comis.';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComisMultVend.frf');
	    FSRel.ShowReport;
   End;
   If FMenu.TIPOREL='COMISMULTORD'
   Then Begin
   	DMESTOQUE.TRel.Close;
   	DMESTOQUE.TRel.SQL.Clear;
   	DMESTOQUE.TRel.SQL.Add(' Select funcionario.cod_func, pessoa.nome from funcionario ');
   	DMESTOQUE.TRel.SQL.Add(' Join pessoa on pessoa.cod_pessoa = funcionario.cod_pessoa ');
   	If (XVENDINI<>'') and (XVENDFIM<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND (PESSOA.NOME Between :PES1 And :PES2)');
   		DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
   		DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
   	End;
       DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
       If Not DMESTOQUE.TRel.IsEmpty
       Then Begin
   		DMMACS.TLoja.Edit;
   		DMMACS.TLoja.FieldByName('TMP2').AsString:='Serviços/Relatórios/Comissão/Múltiplos Comis.';
   		DMMACS.TLoja.Post;
   		DMMACS.Transaction.CommitRetaining;
   		QrOrdem.Preview;
       end
       Else Begin
       	Mensagem('I N F O R M A Ç Ã O   A O   U S U Á R I O', 'Sem informações para impressão!', '', 1,1, false, 'a');
       	Exit;
       End;
   End;
	If FMenu.TIPOREL='COMISSIMPORD'
   Then Begin
       DMESTOQUE.TRel.SQL.Add('  select vwordem.cliente, ordem.desconto, ordem.dtabert, ordem.dtfech, ');
       DMESTOQUE.TRel.SQL.Add('   ordem.numero, ordem.totord, ordem.totprod, ordem.totdesp, ordem.totserv, ');
       DMESTOQUE.TRel.SQL.Add('   ordem.comissao, formpag.descricao, Pessoa.nome AS VENDEDOR ');
       DMESTOQUE.TRel.SQL.Add('   From ordem left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
       DMESTOQUE.TRel.SQL.Add('   left join vwordem on vwordem.cod_ordem = ordem.cod_ordem ');
       DMESTOQUE.TRel.SQL.Add('   left join funcionario on funcionario.cod_func = ordem.cod_vendedor ');
       DMESTOQUE.TRel.SQL.Add('   left join pessoa on pessoa.cod_pessoa = funcionario.cod_pessoa ');
   	DMESTOQUE.TRel.SQL.Add('   Where (ordem.cod_loja=:CODLOJA) ');
   	DMESTOQUE.TRel.SQL.Add('   AND not exists (select * from comprod where (comprod.tipo='+#39+'ORDEM'+#39+') and (comprod.cod_gerador=ordem.cod_ordem))');
  		DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   	Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
        If RGData.ItemIndex=0
        Then Begin
   		    DMESTOQUE.TRel.SQL.Add(' AND (ordem.dtabert Between :Data1 and :Data2) ');
   		    DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
   		    DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
        end;
        If RGData.ItemIndex=1
        Then Begin
            DMESTOQUE.TRel.SQL.Add(' AND (ordem.dtfech Between :Data1 and :Data2) ');
   		    DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
   		    DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
        end;
   	End;
   	If (XVENDINI<>'') and (XVENDFIM<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND (PESSOA.NOME Between :PES1 And :PES2)');
   		DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
   		DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
   	End;
   	If RGESCOLHA.ItemIndex=0
   	Then Begin//se for pedido apenas relatório de pendentes
      		DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'ABERTO'+#39+')');
   	End;
   	If RGESCOLHA.ItemIndex=1
   	Then Begin//se realisar relatório apenas de baixados
      		DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')');
   	End;
   	DMESTOQUE.TRel.SQL.Add(' order by pessoa.nome ');
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Serviços/Relatórios/Comissão/Único Comis.';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComisSimpOrd.frf');
	    FSRel.ShowReport;
	End;
	If FMenu.TIPOREL='COMISSORD'
   Then Begin
       DMESTOQUE.TRel.SQL.Add(' select vwfuncionario.nome AS VEND, ordem.numero, ordem.dtentrega, vwcliente.nome, ordem.totord, comissao.vlrprod, ');
       DMESTOQUE.TRel.SQL.Add(' comissao.perprod, comissao.vlrcomisprod, comissao.vlrserv, comissao.perserv, comissao.vlrcomisserv, ');
       DMESTOQUE.TRel.SQL.Add(' ordem.garantia FROM comissao join ordem ON comissao.cod_gerador=ordem.cod_ordem ');
       DMESTOQUE.TRel.SQL.Add(' left join vwcliente ON vwcliente.cod_cliente = ordem.cod_cliente ');
       DMESTOQUE.TRel.SQL.Add(' left join vwfuncionario on vwfuncionario.cod_func = comissao.cod_funcionario ');
       DMESTOQUE.TRel.SQL.Add(' Where comissao.gerador='+#39+'ORDEM'+#39+' AND (ordem.cod_loja=:CODLOJA) ');
  	   DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   	Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
        If RGData.ItemIndex=0
        Then Begin
   		    DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.DTABERT Between :Data1 and :Data2) ');
   		    DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
   		    DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
        end;
        If RGData.ItemIndex=1
        Then Begin
            DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.DTFECH Between :Data1 and :Data2) ');
   		    DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
   		    DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
        end;
   	End;
   	If (XVENDINI<>'') and (XVENDFIM<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND (vwfuncionario.nome Between :PES1 And :PES2)');
   		DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
   		DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
   	End;
   	If RGESCOLHA.ItemIndex=0
   	Then Begin//se for pedido apenas relatório de pendentes
      		DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'ABERTO'+#39+')');
   	End;
   	If RGESCOLHA.ItemIndex=1
   	Then Begin//se realisar relatório apenas de baixados
      		DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')');
   	End;
   	DMESTOQUE.TRel.SQL.Add(' order by vwfuncionario.nome ');
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Serviços/Relatórios/Comissão/Ordem por Registro';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComissOrdem.frf');
	    FSRel.ShowReport;
	End;
	If FMenu.TIPOREL='COMISSPV'
   Then Begin
       DMESTOQUE.TRel.SQL.Add('  select vwfuncionario.nome AS VEND, pedvenda.numped, pedvenda.dtfech As DTFECH, vwcliente.nome, pedvenda.valor, comissao.vlrprod, ');
       DMESTOQUE.TRel.SQL.Add('  comissao.perprod, comissao.vlrcomisprod, comissao.vlrserv, comissao.perserv, comissao.vlrcomisserv, ');
       DMESTOQUE.TRel.SQL.Add('  pedvenda.garantia FROM comissao ');
       DMESTOQUE.TRel.SQL.Add('  left join pedvenda ON comissao.cod_gerador=pedvenda.cod_pedvenda ');
       DMESTOQUE.TRel.SQL.Add('  left join formpag on pedvenda.cod_formpag = formpag.cod_formpag  ');
       DMESTOQUE.TRel.SQL.Add('  left join vwcliente ON pedvenda.cod_cliente = vwcliente.cod_cliente  ');
       DMESTOQUE.TRel.SQL.Add('  left join vwfuncionario on comissao.cod_funcionario = vwfuncionario.cod_func ');
       DMESTOQUE.TRel.SQL.Add(' Where (comissao.gerador='+#39+'PEDVENDA'+#39+') AND (formpag.cod_loja=:CODLOJA) ');
  		DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   	Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
        If RGData.ItemIndex=0
        Then Begin
   		    DMESTOQUE.TRel.SQL.Add(' AND (pedvenda.DTPEDVEN Between :Data1 and :Data2) ');
   		    DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
   		    DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
        END;
        If RGData.ItemIndex=1
        Then Begin
            DMESTOQUE.TRel.SQL.Add(' AND (pedvenda.DTFECH Between :Data1 and :Data2) ');
   		    DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
   		    DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
        end;
   	End;
   	If (XVENDINI<>'') and (XVENDFIM<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND (vwfuncionario.nome Between :PES1 And :PES2)');
   		DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
   		DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
   	End;
   	If RGESCOLHA.ItemIndex=0
   	Then Begin//se for pedido apenas relatório de pendentes
      		DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.SITUACAO='+#39+'ABERTO'+#39+')');
   	End;
   	If RGESCOLHA.ItemIndex=1
   	Then Begin//se realisar relatório apenas de baixados
      		DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.SITUACAO='+#39+'FECHADO'+#39+')');
   	End;
   	DMESTOQUE.TRel.SQL.Add(' order by vwfuncionario.nome,  pedvenda.numped');
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Comissão/Vendas por Registro';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComissPedVenda.frf');
	    FSRel.ShowReport;
	End;
   //Paulo 29/11/2011: Relatório de comissão de serviços por funcionário
   If FMenu.TIPOREL='COMISSERV'
   Then Begin
       DMESTOQUE.TRel.SQL.Add('  select vwfuncionario.nome AS FUNC, ordem.numero, ordem.DTABERT , despadic.despesa as SERVICO,');
       DMESTOQUE.TRel.SQL.Add('  despadic.comissao, despadic.vlrtotfin AS VALOR, equipe.cod_equipe, equipe.cod_responsavel FROM ordem');
       DMESTOQUE.TRel.SQL.Add('  left join despadic ON ordem.cod_ordem = despadic.cod_gerador');
       DMESTOQUE.TRel.SQL.Add('  left join equipe on despadic.cod_equipe = equipe.cod_equipe  ');
       DMESTOQUE.TRel.SQL.Add('  left join vwfuncionario on equipe.cod_responsavel = vwfuncionario.cod_func ');
       DMESTOQUE.TRel.SQL.Add(' Where (despadic.gerador='+#39+'ORDEM'+#39+') AND (ordem.cod_loja=:CODLOJA) ');
  		DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   	If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   	Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
             DMESTOQUE.TRel.SQL.Add(' AND (ordem.DTABERT Between :Data1 and :Data2) ');
   		  DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
   		  DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
       END;
       if (XVENDINI<>'') and (XVENDFIM<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND (vwfuncionario.nome Between :PES1 And :PES2)');
   		DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
   		DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
   	End;
   	If RGESCOLHA.ItemIndex=0
   	Then Begin//se for pedido apenas relatório de pendentes
      		DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'ABERTO'+#39+')');
   	End;
   	If RGESCOLHA.ItemIndex=1
   	Then Begin//se realisar relatório apenas de baixados
      		DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')');
   	End;
   	DMESTOQUE.TRel.SQL.Add(' order by vwfuncionario.nome,  ordem.numero');
   	DMESTOQUE.TRel.SQL.Text;
   	DMESTOQUE.TRel.Open;
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Serviços/Relatórios/Comissão/Serviços por Funcionário';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComissServicos.frf');
	    FSRel.ShowReport;
	End;

   If FMenu.TIPOREL='COMISSCTR'
   Then Begin
   	 //Paulo 27/01/2012: Somente a prazo
        If RGVencParc.ItemIndex=1
        then Begin
             DMESTOQUE.TRel.SQL.Add('select vwfuncionario.nome AS VEND, pedvenda.numped, pedvenda.dtfech As DTFECH, vwcliente.nome,parcelacr.fech,parcelacr.valor,');
             DMESTOQUE.TRel.SQL.Add('comissao.perprod, comissao.perserv, comissao.vlrcomisserv,parcelacr.numparc,parcelacr.valorpg, parcelacr.dtdebito');
             DMESTOQUE.TRel.SQL.Add('FROM comissao');
             DMESTOQUE.TRel.SQL.Add('left join pedvenda ON comissao.cod_gerador=pedvenda.cod_pedvenda ');
             DMESTOQUE.TRel.SQL.Add('left join ctareceber on pedvenda.cod_pedvenda = ctareceber.cod_gerador');
             DMESTOQUE.TRel.SQL.Add('left join parcelacr on ctareceber.cod_ctareceber = parcelacr.cod_ctareceber');
             DMESTOQUE.TRel.SQL.Add('left join formpag on pedvenda.cod_formpag = formpag.cod_formpag  ');
             DMESTOQUE.TRel.SQL.Add('left join vwcliente ON pedvenda.cod_cliente = vwcliente.cod_cliente  ');
             DMESTOQUE.TRel.SQL.Add('left join vwfuncionario on comissao.cod_funcionario = vwfuncionario.cod_func ');
             DMESTOQUE.TRel.SQL.Add('Where (comissao.gerador='+#39+'PEDVENDA'+#39+') AND (formpag.cod_loja=:CODLOJA) ');
             DMESTOQUE.TRel.SQL.Add('and (ctareceber.tipogerador = '+#39+'PEDVENDA'+#39+') AND (PARCELACR.FECH=''S'')');
             DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
             If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
             Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
              If RGVencBaix.ItemIndex=0
              Then Begin
                     DMESTOQUE.TRel.SQL.Add(' AND (parcelacr.DTDEBITO Between :Data1 and :Data2) ');
                     DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
                     DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
              END;
              If RGVencBaix.ItemIndex=1
              Then Begin
                  DMESTOQUE.TRel.SQL.Add(' AND (parcelacr.DTVENC Between :Data1 and :Data2) ');
                     DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
                     DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
              end;
             End;
             If (XVENDINI<>'') and (XVENDFIM<>'')
             Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
                 DMESTOQUE.TRel.SQL.Add(' AND (vwfuncionario.nome Between :PES1 And :PES2)');
                 DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
                 DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
             End;
             DMESTOQUE.TRel.SQL.Add(' order by vwfuncionario.nome,  pedvenda.numped , parcelacr.fech desc');
             DMESTOQUE.TRel.SQL.Text;
             DMESTOQUE.TRel.Open;
         end else
         begin
             //Paulo 26/01/2012: Sql para vendas a vista
             DMESTOQUE.TRel.SQL.Add('select vwfuncionario.nome AS VEND, pedvenda.numped, pedvenda.dtfech As DTFECH, vwcliente.nome,lancaixa.valor,');
             DMESTOQUE.TRel.SQL.Add('comissao.perprod, comissao.perserv, comissao.vlrcomisserv,lancaixa.cod_gerador,lancaixa.tipogerador');
             DMESTOQUE.TRel.SQL.Add('FROM comissao');
             DMESTOQUE.TRel.SQL.Add('left join pedvenda ON comissao.cod_gerador=pedvenda.cod_pedvenda ');
             DMESTOQUE.TRel.SQL.Add('left join lancaixa on pedvenda.cod_pedvenda = lancaixa.cod_gerador');
             DMESTOQUE.TRel.SQL.Add('left join formpag on pedvenda.cod_formpag = formpag.cod_formpag  ');
             DMESTOQUE.TRel.SQL.Add('left join vwcliente ON pedvenda.cod_cliente = vwcliente.cod_cliente  ');
             DMESTOQUE.TRel.SQL.Add('left join vwfuncionario on comissao.cod_funcionario = vwfuncionario.cod_func ');
             DMESTOQUE.TRel.SQL.Add('Where (comissao.gerador='+#39+'PEDVENDA'+#39+') AND (formpag.cod_loja=:CODLOJA) ');
             DMESTOQUE.TRel.SQL.Add('and (lancaixa.tipogerador = '+#39+'PEDVENDA'+#39+') ');
             DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
             If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
             Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
              If RGVencBaix.ItemIndex=0
              Then Begin
                     DMESTOQUE.TRel.SQL.Add(' AND (pedvenda.dtfech Between :Data1 and :Data2) ');
                     DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
                     DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
              END;
             If RGVencBaix.ItemIndex=1
              Then Begin
                     DMESTOQUE.TRel.SQL.Add(' AND (pedvenda.dtfech Between :Data1 and :Data2) ');
                     DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
                     DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
              end;
             End;
             If (XVENDINI<>'') and (XVENDFIM<>'')
             Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
                 DMESTOQUE.TRel.SQL.Add(' AND (vwfuncionario.nome Between :PES1 And :PES2)');
                 DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
                 DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
             End;
             DMESTOQUE.TRel.SQL.Add(' order by vwfuncionario.nome,  pedvenda.numped , pedvenda.dtfech desc');
             DMESTOQUE.TRel.SQL.Text;
             DMESTOQUE.TRel.Open;
         end;
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Comissão/Comissão por Cta Receber';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       If RGVencParc.ItemIndex=1
       then Begin
           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComissCtaReceber.frf');
           FSRel.ShowReport;
       end else
       begin
           FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfComissVendaVista.frf');
           FSRel.ShowReport;
       end;
	End;
	If FMenu.TIPOREL='COMISVENDEDOR'
   Then Begin
       ImpVendaVend;
   End;

End;
procedure TFRelComissao.FrmVendIniBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS VENDEDORES PARA CONSUTA
	filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
   	XVENDINI:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVendIni.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVendIni.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
		FrmVendIni.Repaint;       
   End;
end;

procedure TFRelComissao.FrmVendIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //limpa VENDEDOR inicial
   XVENDINI:='';
   FrmVendIni.EDCodigo.Text:='';
   FrmVendIni.EdDescricao.Text:='';
	FrmVendIni.Repaint;   
end;

procedure TFRelComissao.FrmVendIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
      	If FiltraTabela(DMPESSOA.VWFUNCIONARIO, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmVendIni.EDCodigo.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
         	XVENDINI:=DMPESSOA.VWFUNCIONARIO.FieldByName('NOME').AsString;
           FrmVendIni.EdDescricao.Text:=DMPESSOA.VWFUNCIONARIO.FieldByName('NOME').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XVENDINI:='';
           FrmVendIni.EdDescricao.Text:='';
           FrmVendIni.EDCodigo.Text:='';
       End;
		FrmVendIni.Repaint;       
   End;
end;

procedure TFRelComissao.FrmVendFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //limpa VENDEDOR inicial
   XVENDFIM:='';
   FrmVendFim.EDCodigo.Text:='';
   FrmVendFim.EdDescricao.Text:='';
	FrmVendFim.Repaint;   
end;

procedure TFRelComissao.FrmVendFimBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS VENDEDORES PARA CONSUTA
	filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
  		XVENDFIM:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVendFim.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVendFim.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
		FrmVendFim.Repaint;       
   End;
end;

procedure TFRelComissao.FrmVendFimEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
      	If FiltraTabela(DMPESSOA.VWFUNCIONARIO, 'VWFUNCIONARIO', 'COD_INTERNO', '', ' COD_INTERNO='+#39+FrmVendFim.EDCodigo.Text+#39)=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
         	XVENDFIM:=DMPESSOA.VWFUNCIONARIO.FieldByName('NOME').AsString;
           FrmVendFim.EdDescricao.Text:=DMPESSOA.VWFUNCIONARIO.FieldByName('NOME').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XVENDFIM:='';
           FrmVendFim.EdDescricao.Text:='';
           FrmVendFim.EDCodigo.Text:='';
       End;
		FrmVendFim.Repaint;       
   End;
end;

procedure TFRelComissao.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   PrepImp;
end;

procedure TFRelComissao.FormActivate(Sender: TObject);
begin
  inherited;
   FSDSRel.DataSource:=DMESTOQUE.DRel;
   //Paulo 30/08/2011: esconde os paineis desnecessarios para comissão por cta receber
   If FMenu.TIPOREL='COMISSCTR' then
   begin
       RGESCOLHA.Enabled := false;
       RGTIPOREL.Visible := false;
       RGTIPOREL.SendToBack;
       RGOrdem.Visible := false;
       RGVencBaix.Visible := false;
       RGVencBaix.SendToBack;
       RGData.Visible := false;
       RGVencParc.Visible:=True;

   end;
   If FMenu.TIPOREL='COMISSERV' then
   begin
       RGOrdem.Visible := false;
       RGVencBaix.Visible := false;
       RGESCOLHA.Enabled := true;
       RGData.Visible := false;
       FrmVendIni.LTextoBusca.Caption:='Funcionário Inicial:';
       FrmVendFim.LTextoBusca.Caption:='Funcionário Final:';
       RGVencParc.Visible:=False;
   end
   else begin
       RGESCOLHA.Visible := true;
       RGTIPOREL.Visible := true;
       RGOrdem.Visible := true;
       RGVencBaix.Visible := False;
       RGData.Visible := true;

   end;

end;

procedure TFRelComissao.BitBtn1Click(Sender: TObject);
begin
//  inherited;
end;

procedure TFRelComissao.BandaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  	//CALCULO PARA PRODUTO
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add(' select comprod.percento from comprod left join ordem on ordem.cod_ordem = comprod.cod_gerador ');
   DMESTOQUE.Alx1.SQL.Add(' Where (comprod.tipo='+#39+'ORDEM'+#39+') AND (ordem.cod_ordem=:CODORD) and (comprod.cod_funcionario=:CODFUNC) ');
   DMESTOQUE.Alx1.ParamByName('CODORD').AsString:=DMESTOQUE.Alx.FieldByName('cod_ordem').AsString;
   DMESTOQUE.Alx1.ParamByName('CODFUNC').AsString:=DMESTOQUE.TRel.FieldByName('COD_FUNC').AsString;
   DMESTOQUE.Alx1.Open;
   XPERC:=DMESTOQUE.Alx1.FieldByName('percento').AsCurrency;
   XTVCOMPROD:=XTVCOMPROD+((DMESTOQUE.Alx.FieldByName('TOTPROD').AsCurrency*XPERC)/100);
   XTOTCOMPROD:=XTOTCOMPROD+((DMESTOQUE.Alx.FieldByName('TOTPROD').AsCurrency*XPERC)/100);
   LPerProd.Caption:=FormatFloat('####,##0.00', XPERC);
   LVlrProd.Caption:=FormatFloat('####,##0.00', ((DMESTOQUE.Alx.FieldByName('TOTPROD').AsCurrency*XPERC)/100));
	//CALCULO PARA SERVIÇO
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add(' select comserv.percento from comserv left join ordem on ordem.cod_ordem = comserv.cod_gerador ');
   DMESTOQUE.Alx1.SQL.Add(' Where (comserv.tipo='+#39+'ORDEM'+#39+') AND (ordem.cod_ordem=:CODORD) and (comserv.cod_funcionario=:CODFUNC) ');
   DMESTOQUE.Alx1.ParamByName('CODORD').AsString:=DMESTOQUE.Alx.FieldByName('cod_ordem').AsString;
   DMESTOQUE.Alx1.ParamByName('CODFUNC').AsString:=DMESTOQUE.TRel.FieldByName('COD_FUNC').AsString;
   DMESTOQUE.Alx1.Open;
   XPERC:=DMESTOQUE.Alx1.FieldByName('percento').AsCurrency;
   XTVCOMSERV:=XTVCOMSERV+((DMESTOQUE.Alx.FieldByName('TOTSERV').AsCurrency*XPERC)/100);
   XTOTCOMSERV:=XTOTCOMSERV+((DMESTOQUE.Alx.FieldByName('TOTSERV').AsCurrency*XPERC)/100);
   LPerServ.Caption:=FormatFloat('####,##0.00', XPERC);
   LVlrServ.Caption:=FormatFloat('####,##0.00', ((DMESTOQUE.Alx.FieldByName('TOTSERV').AsCurrency*XPERC)/100));
	LTotComis.Caption:= FormatFloat('####,##0.00', (StrToFloat(LVlrProd.Caption)+StrToFloat(LVlrServ.Caption)));
	LTotComiss.Caption:= FormatFloat('####,##0.00', (XTVCOMPROD+XTVCOMSERV));
end;

procedure TFRelComissao.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   DMESTOQUE.Alx.Close;
   DMESTOQUE.Alx.SQL.Clear;
   DMESTOQUE.Alx.SQL.Add(' Select ordem.cod_ordem, ordem.numero, pessoa.nome AS CLIENTE, ordem.dtabert, ordem.totord, ordem.totprod, ordem.totserv, ');
   DMESTOQUE.Alx.SQL.Add(' ordem.comissao From ordem ');
   DMESTOQUE.Alx.SQL.Add(' left Join  cliente on cliente.cod_cliente = ordem.cod_cliente ');
   DMESTOQUE.Alx.SQL.Add(' Left Join pessoa on pessoa.cod_pessoa = cliente.cod_pessoa ');
   DMESTOQUE.Alx.SQL.Add(' Where (ordem.cod_loja=:CODLOJA)');    // AND ((exists(Select * From comprod Where (comprod.cod_funcionario=:CODFUNC) And (comprod.cod_gerador=ordem.cod_ordem) And (comprod.tipo='+#39+'ORDEM'+#39+'))) ');
//   DMESTOQUE.Alx.SQL.Add(' OR (exists(Select * From comserv Where (comserv.cod_funcionario=:CODFUNC) And (comserv.cod_gerador=ordem.cod_ordem) And (comserv.tipo='+#39+'ORDEM'+#39+'))))');
   DMESTOQUE.Alx.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
//   DMESTOQUE.Alx.ParamByName('CODFUNC').AsString:=DMESTOQUE.TRel.FieldByName('COD_FUNC').AsString;
   If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
        If RGData.ItemIndex=0
        Then Begin
   	        DMESTOQUE.Alx.SQL.Add(' AND (ORDEM.dtabert Between :Data1 and :Data2) ');
   	        DMESTOQUE.Alx.ParamByName('Data1').AsString:=EdDataIni.Text;
   	        DMESTOQUE.Alx.ParamByName('Data2').AsString:=EdDataFim.Text;
        end;
        If RGData.ItemIndex=1
        Then Begin
            DMESTOQUE.Alx.SQL.Add(' AND (ORDEM.dtfech Between :Data1 and :Data2) ');
   	        DMESTOQUE.Alx.ParamByName('Data1').AsString:=EdDataIni.Text;
   	        DMESTOQUE.Alx.ParamByName('Data2').AsString:=EdDataFim.Text;
        end;
   End;
   If RGESCOLHA.ItemIndex=0
   Then Begin//se for pedido apenas relatório de pendentes
      DMESTOQUE.Alx.SQL.Add(' AND (ORDEM.STATUS='+#39+'ABERTO'+#39+')');
   End;
   If RGESCOLHA.ItemIndex=1
   Then Begin//se realisar relatório apenas de baixados
      DMESTOQUE.Alx.SQL.Add(' AND (ORDEM.STATUS='+#39+'FECHADO'+#39+')');
   End;

   DMESTOQUE.Alx.SQL.Add(' order by ordem.numero ');
   DMESTOQUE.Alx.Open;
   XTVCOMPROD:=0;
   XTVCOMSERV:=0;
	LVlrProd.Caption:='0,00';
	LVlrServ.Caption:='0,00';
end;
procedure TFRelComissao.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   LTOTCOMVEND.Caption:=FormatFloat('####,##0.00', (XTVCOMPROD+XTVCOMSERV));
   LTOTCOMSERV.Caption:=FormatFloat('####,##0.00', (XTVCOMSERV));
   LTOTCOMPROD.Caption:=FormatFloat('####,##0.00', (XTVCOMPROD));
end;

procedure TFRelComissao.FrmVendIniEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmVendIni.EDCodigoKeyPress(Sender, Key);

end;

procedure TFRelComissao.FrmVendFimEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmVendFim.EDCodigoKeyPress(Sender, Key);

end;

End.


