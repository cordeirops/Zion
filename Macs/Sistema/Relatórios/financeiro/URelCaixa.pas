unit URelCaixa;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRelatorio, TFlatHintUnit, StdCtrls, Buttons, jpeg, ExtCtrls,
  UFrmBusca, Mask, FR_Class, FR_DSet, FR_DBSet, DrLabel, TeEngine, Series,
  TeeProcs, Chart, DbChart, QRTEE, QuickRpt;

  Var
  XInter1, XInter2 : String;
type
  TFRelCaixa = class(TFPadraoRelatorio)
    FDSCaixa: TfrDBDataSet;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    FrmConta: TFrmBusca;
    PIndividual: TPanel;
    PIntervalo: TPanel;
    FrmCaixaIni: TFrmBusca;
    FrmCaixaFim: TFrmBusca;
    RGOrdenar: TRadioGroup;
    PPosFinanc: TPanel;
    FBCaixaIni: TFrmBusca;
    FBCaixaFim: TFrmBusca;
    FBCCIni: TFrmBusca;
    FBCCFim: TFrmBusca;
    GroupBox6: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    EdDtIni: TMaskEdit;
    EdDtFim: TMaskEdit;
    PRecDesp: TPanel;
    FBEquipIni: TFrmBusca;
    FBEquipFim: TFrmBusca;
    FBFornecIni: TFrmBusca;
    FBFornecFim: TFrmBusca;
    GroupBox7: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    EDIni: TMaskEdit;
    EDFim: TMaskEdit;
    RGTipoRel: TRadioGroup;
    RGRecDesp: TRadioGroup;
    procedure FormActivate(Sender: TObject);
    procedure FrmCaixaIniBTNMINUSClick(Sender: TObject);
    procedure FrmCaixaIniBTNOPENClick(Sender: TObject);
    procedure FrmCaixaIniEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmCaixaFimBTNMINUSClick(Sender: TObject);
    procedure FrmCaixaFimBTNOPENClick(Sender: TObject);
    procedure FrmCaixaFimEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FrmContaBTNMINUSClick(Sender: TObject);
    procedure FrmContaBTNOPENClick(Sender: TObject);
    procedure FrmContaEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FBCaixaIniBTNOPENClick(Sender: TObject);
    procedure FBCaixaIniBTNMINUSClick(Sender: TObject);
    procedure FBCaixaFimBTNOPENClick(Sender: TObject);
    procedure FBCaixaFimBTNMINUSClick(Sender: TObject);
    procedure FBCCIniBTNOPENClick(Sender: TObject);
    procedure FBCCIniBTNMINUSClick(Sender: TObject);
    procedure FBCCFimBTNOPENClick(Sender: TObject);
    procedure FBCCFimBTNMINUSClick(Sender: TObject);
    procedure FBCaixaIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FBCaixaFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FBCCIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FBCCFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RGRecDespClick(Sender: TObject);
    procedure FBFornecIniBTNOPENClick(Sender: TObject);
    procedure FBEquipIniBTNOPENClick(Sender: TObject);
    procedure FBEquipFimBTNOPENClick(Sender: TObject);
    procedure FBFornecFimBTNOPENClick(Sender: TObject);
    procedure FBEquipIniBTNMINUSClick(Sender: TObject);
    procedure FBEquipFimBTNMINUSClick(Sender: TObject);
    procedure FBFornecIniBTNMINUSClick(Sender: TObject);
    procedure FBFornecFimBTNMINUSClick(Sender: TObject);
    procedure FBEquipIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FBEquipFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FBFornecIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FBFornecFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
	Procedure FiltroData;//Filtro por Data
	Procedure FiltroCaixa;//Filtro por Caixa
	Procedure FiltroConta;//Filtro por Conta
                                                           
   //verifica qual o tipo de relatório pedido e executa sql
   Procedure PrepareImp;
   //Imprime relatório de Caixa Agrupado por Datas
   Procedure ImpRCxData;
   //Imprime relatório de Caixa Agrupado por Caixas
	Procedure ImpRCxCaixas;

   //Abre Tabela
	Function AbreTabela: Boolean;

   // altera algumas opções do formulario para relatorio de credito
   Procedure AlterarForm_Credito;

   // relatorio de credito de cliente
   Procedure RelCreditoCliente;

   //relatório de posição financeira
   Procedure RelPosFinanc;

   //calcula saldo em caixa
   Procedure SaldoCaixa;

   //calcula saldo de conta corrente
   Procedure MovBanco;

   //calcula plano de contas
   procedure CalcPlnCta;

   //calcula saldo de caixa
   Procedure ResultCaixa(XCod_ContaCX: Integer; DTINI, DTFIM: String; XTIPO: String);

   //calcula saldo de contas correntes
   Procedure ResultBanco(XCod_ContaBC: Integer; DTINI, DTFIM: String; XTIPO: String);

   //limpa TMP
   Procedure LimpaTMP;

   //calcula valores de caixa para inserção na TMP
   Procedure CalculaCaixa;

   //insere linha em branco
   Procedure Linha;

   //calcula valores de contas correntes para inserção na TMP
   Procedure CalculaCtaCor;

   //calcula cheques a receber
   Procedure ChqRec;

   //calcula cheques a pagar
   Procedure ChqPg;

   //calculo individual para clientes
   Procedure RecCli;

   //calculo individual para fornecedores
   Procedure PgFornec;

   //calcula os em aberto
   Procedure OSAbert;

   //calcula contas a vencer
   Procedure CtaVencer;

   //calcula contas vencidas
   Procedure CtaVencidas;

   //cálculo individual por contas do plano de contas
   Procedure CalculaPlnCta;

   //relatório de receitas e despesas para MUKMAQ, por equipamento
   Procedure RelRecDesp;

   //filtra equipamentos
   Procedure FiltraPlnCtaEquip;

   //filtra parcelas pagas das contas do equipamento filtrado
   Procedure FiltraParcPag;

   //finaliza as comparações e gera relatórios de receitas e despesas
   Procedure FinalizaRel;

   //filtra parcelas recebidas das contas do equipamento filtrado
   Procedure FiltraParcRec;

   //gera o relatório analitico de receitas
   Procedure RelRecAna;

  public
    { Public declarations }

  end;



var
  FRelCaixa: TFRelCaixa;
  XCaixaIni, XCaixaFim: String;
  XCONTA: Integer;
  SaldoInicial, SaldoAnterior, SaldoAtual, xctacor: Real;//Resultados de Caixa

  XCONTA1, XCONTA2: String;
  XCREDITOS, XDEBITOS: Real;//Para valores realizados
  XCREDPREV, XDEBPREV: Real;//Para valores previstos
  XCUSTOFIXOPREV, XCUSTOFIXOREAL: Real;
  XPERPREV, XPERREAL: Real;
  XULTORDEM: String;

  xcheque, xsaldototal, xvlr, xvlrrec, xvlrplncta, xvlrtotcaixa, xvlrtotctacor: Real; //totalizadores do relatório de posição financeira
  xindice: Integer; //indice do relatório de posição financeira

implementation

uses UDMCaixa, UMenu, UCadCaixa, Alxor32, UDMMacs, UDMConta, UConsPlncta,
  AlxMessage, UDMPessoa, UCliente, UDmBanco, UCtaCor, DB, UDMEstoque,
  UPadrao, UCadEquipamento, UFORNECEDOR;

{$R *.DFM}

//Filtro por Data
Procedure TFRelCaixa.FiltroData;
Begin
	If (EdDataIni.Text<>'  /  /    ') AND (EdDataFim.Text<>'  /  /    ')
   Then Begin
   	DmCaixa.TRel.SQL.Add(' AND ((lancaixa.dtlanc>=:DATA1) And (lancaixa.dtlanc<=:DATA2))');
   	DMCaixa.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
   	DMCaixa.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
   End;
End;

//Filtro por Caixa
Procedure TFRelCaixa.FiltroCaixa;
Begin
   If (XCaixaIni<>'') and (XCaixaFim<>'')
   Then Begin
   	DMCAIXA.TRel.SQL.Add(' AND (Caixa.descricao Between :Caixa1 And :Caixa2)');
   	DMCAIXA.TRel.ParamByName('Caixa1').AsString:=XCaixaIni;
   	DMCAIXA.TRel.ParamByName('Caixa2').AsString:=XCaixaFim;
   End;
End;




//Filtro por Conta
Procedure TFRelCaixa.FiltroConta;
Begin
   If (XCONTA<>-1)
   Then Begin
   	DMCAIXA.TRel.SQL.Add(' AND (LanCaixa.COD_PLNCTAFIL = :Conta)');
   	DMCAIXA.TRel.ParamByName('Conta').AsInteger:=XCONTA;
   End;
End;

//Abre Tabela
Function TFRelCaixa.AbreTabela: Boolean;
Begin
   DMCAIXA.TRel.SQL.Text;
   DMCAIXA.TRel.Open;
   If DMCAIXA.TRel.IsEmpty
   Then Begin
		Mensagem('INFORMAÇÃO', ' O Relatório retornou sem informações!', '', 1, 1, False, 'I');
       Result:=False;
   End
   Else Begin
       Result:=True;
   End;
End;

//Imprime relatório de Caixa Agrupado por Datas
Procedure TFRelCaixa.ImpRCxData;
Begin
	DMCAIXA.TRel.Close;
	DMCAIXA.TRel.SQL.Clear;
   DMCAIXA.TRel.SQL.Add(' select lancaixa.cod_lanc, lancaixa.cod_abcaixa,lancaixa.dtlanc, lancaixa.historico, lancaixa.tipcai, lancaixa.tipo, ');
   DMCAIXA.TRel.SQL.Add(' lancaixa.valor, lancaixa.cod_usuario, caixa.cod_caixa, caixa.cod_loja, caixa.descricao, caixa.NUMCAIXA, ');
   DMCAIXA.TRel.SQL.Add(' abcaixa.dtabertura, abcaixa.dtfecha, abcaixa.saldoini, abcaixa.saldofin ');
   DMCAIXA.TRel.SQL.Add(' from lancaixa ');
   DMCAIXA.TRel.SQL.Add(' left join abcaixa on lancaixa.cod_abcaixa = abcaixa.cod_abcaixa ');
   DMCAIXA.TRel.SQL.Add(' Left Join caixa on abcaixa.cod_caixa = caixa.cod_caixa ');
	DMCAIXA.TRel.SQL.Add(' Where (CAIXA.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   FiltroData;
   FiltroCaixa;
   FiltroConta;
   DMCAIXA. TRel.SQL.Add(' order by lancaixa.dtlanc, lancaixa.cod_lanc ');
   If AbreTabela=True
   Then Begin
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfMovCaixa_Dt.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime relatório de Caixa Agrupado por Caixas
Procedure TFRelCaixa.ImpRCxCaixas;
Begin
	DMCAIXA.TRel.Close;
	DMCAIXA.TRel.SQL.Clear;
	DMCAIXA.TRel.SQL.Add('select lancaixa.cod_lanc, lancaixa.cod_abcaixa,lancaixa.dtlanc, lancaixa.historico, lancaixa.tipcai, lancaixa.tipo, ');
	DMCAIXA.TRel.SQL.Add('lancaixa.valor, lancaixa.cod_usuario, caixa.cod_caixa, caixa.cod_loja, caixa.descricao, caixa.NUMCAIXA, ');
	DMCAIXA.TRel.SQL.Add('abcaixa.dtabertura, abcaixa.dtfecha, abcaixa.saldoini, abcaixa.saldofin ');
	DMCAIXA.TRel.SQL.Add('from lancaixa left join abcaixa on ');
	DMCAIXA.TRel.SQL.Add('lancaixa.cod_abcaixa = abcaixa.cod_abcaixa ');
	DMCAIXA.TRel.SQL.Add('Left join usuario on usuario.codusuario = lancaixa.cod_usuario ');
   DMCAIXA.TRel.SQL.Add('left join caixa on caixa.cod_caixa = abcaixa.cod_caixa ');
	DMCAIXA.TRel.SQL.Add(' Where (CAIXA.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   FiltroData;
   FiltroCaixa;
   FiltroConta;
   DMCAIXA. TRel.SQL.Add(' order by caixa.cod_caixa, abcaixa.cod_abcaixa, lancaixa.cod_lanc ');
   If AbreTabela=True
   Then Begin
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfMovCaixa_CX.frf');
      FSRel.ShowReport;
   End;
End;

//verifica qual o tipo de relatório pedido e executa sql
Procedure TFRelCaixa.PrepareImp;
Begin
	//PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:='Dt. Ini.: '+EdDataIni.Text+' / Dt. Fin.: '+EdDataFim.Text+#13+FrmCaixaIni.EdDescricao.Text+' - '+FrmCaixaFim.EdDescricao.Text+#13+'Conta: '+FrmConta.EdDescricao.Text;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   If FMenu.TIPOREL='AGDATA'
   Then Begin
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Caixa/Agrupado por Data';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpRCxData;//Imprime relatório agrupado por data
   End;
   If FMenu.TIPOREL='AGCAIXA'
   Then Begin
   	DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Financeiro/Relatórios/Caixa/Agrupado por Caixa';
   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       ImpRCxCaixas;//Imprime relatório de caixas Agrupado por caixas
   End;
{
	DMCAIXA.TRel.Close;
	DMCAIXA.TRel.SQL.Clear;
	DMCAIXA.TRel.SQL.Add('select lancaixa.cod_lanc, lancaixa.cod_abcaixa,lancaixa.dtlanc, lancaixa.historico, lancaixa.tipcai, lancaixa.tipo, ');
	DMCAIXA.TRel.SQL.Add('lancaixa.valor, lancaixa.cod_usuario, caixa.cod_caixa, caixa.cod_loja, caixa.descricao, caixa.NUMCAIXA, ');
	DMCAIXA.TRel.SQL.Add('abcaixa.dtabertura, abcaixa.dtfecha, abcaixa.saldoini, abcaixa.saldofin ');
	DMCAIXA.TRel.SQL.Add('from lancaixa left join abcaixa on ');
	DMCAIXA.TRel.SQL.Add('lancaixa.cod_abcaixa = abcaixa.cod_abcaixa ');
	DMCAIXA.TRel.SQL.Add('Left join usuario on usuario.codusuario = lancaixa.cod_usuario ');
   DMCAIXA.TRel.SQL.Add('left join caixa on caixa.cod_caixa = abcaixa.cod_caixa ');
	DMCAIXA.TRel.SQL.Add(' WHERE (Lancaixa.DtLanc Between :Data1 and :Data2) ');
	DMCAIXA.TRel.SQL.Add(' Where (CAIXA.COD_LOJA='+FMenu.LCODLOJA.Caption+') ');
   DMCAIXA.TRel.ParamByName('Data1').AsString:=EdDataIni.Text;
	DMCAIXA.TRel.ParamByName('Data2').AsString:=EdDataFim.Text;
   If (XCaixaIni<>'') and (XCaixaFim<>'')
   Then Begin
   	DMCAIXA.TRel.SQL.Add(' AND (Caixa.descricao Between :Caixa1 And :Caixa2)');
   	DMCAIXA.TRel.ParamByName('Caixa1').AsString:=XCaixaIni;
   	DMCAIXA.TRel.ParamByName('Caixa2').AsString:=XCaixaFim;
   End;
   If (XCONTA<>-1)
   Then Begin
   	DMCAIXA.TRel.SQL.Add(' AND (LanCaixa.COD_PLNCTAFIL = :Conta)');
   	DMCAIXA.TRel.ParamByName('Conta').AsInteger:=XCONTA;
   End;
	If FMenu.TIPOREL='AGCAIXA'
   Then Begin//o tipo de relatório e aquele agrupado por caixas abertura
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfMovCaixa_Cx.frf');
		DMCAIXA.TRel.SQL.Add(' ORDER BY CAIXA.COD_CAIXA, LANCAIXA.COD_ABCAIXA, lancaixa.cod_lanc ');
   End;

	If FMenu.TIPOREL='AGDATA'
   Then Begin//o tipo de relatório e aquele agrupado por datas
		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfMovCaixa_Dt.frf');
		DMCAIXA.TRel.SQL.Add(' Order By lancaixa.dtlanc, lancaixa.cod_lanc');
   End;

   DMCAIXA.TRel.Open;}
End;

// altera algumas opções do formulario para relatorio de credito
Procedure TFRelCaixa.AlterarForm_Credito;
begin
   Caption:='Relatório de Créditos';
   FrmCaixaIni.LTextoBusca.Caption := 'Cliente Inicial:';
   FrmCaixaFim.LTextoBusca.Caption := 'Cliente Final:';
   FrmConta.Visible := false;
   FrmCaixaIni.Top := 20;
   FrmCaixaFim.Top := 70;
end;

// relatorio de credito de cliente
Procedure TFRelCaixa.RelCreditoCliente;
begin
   // variavel que faz conex~eo entre strings
   XTitulo := '';

   // ARMAZENA FILTROS
   XNOMECIDADE := '';

   // DADOS DA LOJA ATUAL
   FiltraTabela(DMMACS.TLoja,'LOJA','COD_LOJA',FMenu.LCODLOJA.Caption,'');

   DMCAIXA.TRel.Close;
   DMCAIXA.TRel.SQL.Clear;
   DMCAIXA.TRel.SQL.Add('select * from credito');
   DMCAIXA.TRel.SQL.Add('left join vwcliente on credito.cod_pessoa = vwcliente.cod_pessoa');

   // verifica se foi informado datas
   If (EdDataIni.Text <> '  /  /    ') and (EdDataFim.Text <> '  /  /    ')
   Then Begin
       DMCAIXA.TRel.SQL.Add('where (credito.data between :data1 and :data2)');
       DMCAIXA.TRel.ParamByName('data1').AsString := EdDataIni.Text;
       DMCAIXA.TRel.ParamByName('data2').AsString := EdDataFim.Text;

       // FILTROS DO RELATORIO
       XNOMECIDADE := 'Data: ' + EdDataIni.Text + ' á ' + EdDataFim.Text + ' - ';

       XTitulo := 'and';
   End;

   // verifica se foi selecionado os clientes
   If (FrmCaixaIni.EdDescricao.Text <> '') and (FrmCaixaFim.EdDescricao.Text <> '')
   Then Begin
       // se nao foi informado a data mas foi selecionado o cliente, a variavel nao possui valor ateh o momento, por isso deve receber a condição "where"
       If XTitulo = ''
       Then Begin
           XTitulo := 'where';
       End;

       DMCAIXA.TRel.SQL.Add(XTitulo + ' (vwcliente.cod_interno between :codigo1 and :codigo2) ');
       DMCAIXA.TRel.ParamByName('codigo1').AsString := FrmCaixaIni.EDCodigo.Text;
       DMCAIXA.TRel.ParamByName('codigo2').AsString := FrmCaixaFim.EDCodigo.Text;

       // FILTROS
       XNOMECIDADE := XNOMECIDADE + ' Cliente: ' + FrmCaixaIni.EdDescricao.Text + ' á ' + FrmCaixaFim.EdDescricao.Text;
   End;

   // ordena por cliente e ordem de entrada dos registros
   If RGOrdenar.ItemIndex = 0
   Then Begin
       DMCAIXA.TRel.SQL.Add('ORDER BY VWCLIENTE.NOME ASC, CREDITO.COD_CREDITO ASC');
   End
   // exibe os dados do relatorio com os tipos de movimento(entrada e saida) separados
   Else Begin
       DMCAIXA.TRel.SQL.Add('ORDER BY VWCLIENTE.NOME ASC, CREDITO.TIPOCRED ASC');
   End;

   DMCAIXA.TRel.Open;

   // O CAMPO RECEBE OS FILTROS REALIZADOS PARA BUSCAR RELATORIO
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString := XNOMECIDADE;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;

   // se o relatorio retornou vazio
   If DMCAIXA.TRel.IsEmpty
   Then Begin
       Mensagem('   A T E N Ç Ã O   ','O relatório retornou vazio.','',1,1,false,'I');
       Exit;
   End;

   // exibe o relatorio com os registros em ordem de entrada no banco de dados
   If RGOrdenar.ItemIndex = 0
   Then Begin
       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelCreditoOrdEntrada.frf');
   End
   // exibe os dados do relatorio com os tipos de movimento(entrada e saida) separados
   Else begin
       FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelCredito.frf');
   End;
   FSRel.ShowReport;

end;

//limpa tabela temporária
procedure TFRelCaixa.LimpaTMP;
begin
     //zera tabela temporaria
     DMMACS.TALX.Close;
     DMMACS.TALX.SQL.Clear;
     DMMACS.TALX.SQL.Add('delete from TMP');
     DMMACS.TALX.ExecSQL;
     DMMACS.Transaction.CommitRetaining;

     DMMACS.TMP.Close;
     DMMACS.TMP.SQL.Clear;
     DMMACS.TMP.SQL.Add(' select * From TMP');
     DMMACS.TMP.Open;
end;

//calcula saldos de caixa
procedure TFRelCaixa.CalculaCaixa;
begin
     if (FBCaixaIni.EDCodigo.Text = '') and (FBCaixaFim.EDCodigo.Text = '')
     then begin
          //filtra para selecionar todos os registros dos caixas
          FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_LOJA', '', 'COD_LOJA ='+#39+FMenu.LCODLOJA.Caption+#39+' ORDER BY DESCRICAO');
     end
     else begin
          //filtra para selecionar os caixas entre o intervalo desejado
          FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', '', 'COD_CAIXA >='+#39+FBCaixaIni.EDCodigo.Text+#39+'and COD_CAIXA <='+#39+FBCaixaFim.EDCodigo.Text+#39+' ORDER BY DESCRICAO');
     end;

     DMCAIXA.TCaixa.First;
     //insere descrição e saldo de cada caixa cadastrado
     while not DMCAIXA.TCaixa.Eof do
     begin
         SaldoCaixa;
         DMMACS.TMP.Insert;
         DMMACS.TMP.FieldByName('DESC1').AsString:=DMCAIXA.TCaixa.fieldByName('DESCRICAO').AsString;
         DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMCAIXA.TCaixa.fieldByName('SALDO').AsCurrency+SaldoAtual;
         DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
         xindice:=xindice+1;
         xvlrtotcaixa:=xvlrtotcaixa+DMMACS.TMP.FieldByName('VLR1').AsCurrency; //acumula saldos de caixas
         DMMACS.TMP.Post;
         DMMACS.Transaction.CommitRetaining;
         DMCAIXA.TCaixa.Next;

     end;
end;

//insere linha em branco
procedure TFRelCaixa.Linha;
begin
     DMMACS.TMP.Insert;
     DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;  //insere linha em branco
     xindice:=xindice+1;
     DMMACS.TMP.Post;
     DMMACS.Transaction.CommitRetaining;
end;

//calcula saldo de contas correntes
procedure TFRelCaixa.CalculaCtaCor;
begin
     if (FBCCIni.EDCodigo.Text = '') and (FBCCFim.EDCodigo.Text = '')
     then begin
          //filtra para selecionar todos os registros de contas correntes
          FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR', '', 'COD_CTACOR >'+#39+'0'+#39+'');
     end
     else begin
          //filtr para selecionar os caixas entre o intervalo desejado
          FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR', '', 'COD_CTACOR >='+#39+FBCCIni.EDCodigo.Text+#39+'and COD_CTACOR <='+#39+FBCCFim.EDCodigo.Text+#39+'');
     end;

     DMBANCO.WCtaCor.First;
     //insere descrição e saldo de cada conta corrente
     while not DMBANCO.WCtaCor.Eof do
     begin
         MovBanco;
         FiltraTabela(DMBANCO.TAbBanco, 'ABBANCO', 'COD_CTACOR', '', 'COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+' ORDER BY abbanco.cod_abbanco DESC');
         DMBANCO.TAbBanco.First;
         DMMACS.TMP.Insert;
         DMMACS.TMP.FieldByName('DESC1').AsString:=DMBANCO.WCtaCor.fieldByName('DESCBANCO').AsString;
         DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMBANCO.TAbBanco.fieldByName('SALDOINI').AsCurrency+xctacor;
         DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
         xindice:=xindice+1;
         xvlrtotctacor:=xvlrtotctacor+DMMACS.TMP.FieldByName('VLR1').AsCurrency;
         DMMACS.TMP.Post;
         DMMACS.Transaction.CommitRetaining;
         DMBANCO.WCtaCor.Next;

     end;
end;

//calcula cheques a receber
procedure TFRelCaixa.ChqRec;
begin
     //busca valores de cheques a receber
     DMBANCO.TAlx.Close;
     DMBANCO.TAlx.SQL.Clear;
     DMBANCO.TAlx.SQL.Add('select SUM(valor) AS VLRCHEQUE from movbanco');
     DMBANCO.TAlx.SQL.Add('where movbanco.cobranca = :COB');
     DMBANCO.TAlx.SQL.Add('and movbanco.fech = :FECH');
     DMBANCO.TAlx.SQL.Add('and movbanco.tipoop = :TIPO');
     If (EdDtIni.Text <> '  /  /    ') and (EdDtFim.Text <> '  /  /    ')
     then begin
          DMBANCO.TAlx.SQL.Add('and (movbanco.dtvenc >= :DTINI) and (movbanco.dtvenc <= :DTFIM)');
          DMBANCO.TAlx.ParamByName('DTINI').AsString:=EdDtIni.Text;
          DMBANCO.TAlx.ParamByName('DTFIM').AsString:=EdDtFim.Text;
     end;
     DMBANCO.TAlx.ParamByName('COB').AsString:='CHEQUE';
     DMBANCO.TAlx.ParamByName('FECH').AsString:='N';
     DMBANCO.TAlx.ParamByName('TIPO').AsString:='ENTRADA';
     DMBANCO.TAlx.Open;

     if not DMBANCO.TAlx.IsEmpty
     then begin
          //insere o valor a receber em cheque
          DMMACS.TMP.Insert;
          DMMACS.TMP.FieldByName('DESC1').AsString:='Cheques a receber:';
          DMMACS.TMP.FieldByName('VLR3').AsCurrency:=DMBANCO.TAlx.fieldByName('VLRCHEQUE').AsCurrency;
          DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
          xindice:=xindice+1;
          DMMACS.TMP.Post;
          DMMACS.Transaction.CommitRetaining;
          xcheque:=xcheque+DMBANCO.TAlx.fieldByName('VLRCHEQUE').AsCurrency;
     end;
end;

//calcula valores de cheques a pagar
procedure TFRelCaixa.ChqPg;
begin
     //busca valores de cheques a pagar
     DMBANCO.TAlx.Close;
     DMBANCO.TAlx.SQL.Clear;
     DMBANCO.TAlx.SQL.Add('select SUM(valor) AS VLRCHEQUE from movbanco');
     DMBANCO.TAlx.SQL.Add('where movbanco.cobranca = :COB');
     DMBANCO.TAlx.SQL.Add('and movbanco.fech = :FECH');
     DMBANCO.TAlx.SQL.Add('and movbanco.tipoop = :TIPO');
     If (EdDtIni.Text <> '  /  /    ') and (EdDtFim.Text <> '  /  /    ')
     then begin
          DMBANCO.TAlx.SQL.Add('and (movbanco.dtvenc >= :DTINI) and (movbanco.dtvenc <= :DTFIM)');
          DMBANCO.TAlx.ParamByName('DTINI').AsString:=EdDtIni.Text;
          DMBANCO.TAlx.ParamByName('DTFIM').AsString:=EdDtFim.Text;
     end;
     DMBANCO.TAlx.ParamByName('COB').AsString:='CHEQUE';
     DMBANCO.TAlx.ParamByName('FECH').AsString:='N';
     DMBANCO.TAlx.ParamByName('TIPO').AsString:='SAIDA';
     DMBANCO.TAlx.Open;

     if not DMBANCO.TAlx.IsEmpty
     then begin
          //insere o valor a pagar em cheque
          DMMACS.TMP.Insert;
          DMMACS.TMP.FieldByName('DESC1').AsString:='Cheques a pagar:';
          DMMACS.TMP.FieldByName('VLR3').AsCurrency:=DMBANCO.TAlx.fieldByName('VLRCHEQUE').AsCurrency;
          DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
          xindice:=xindice+1;
          DMMACS.TMP.Post;
          DMMACS.Transaction.CommitRetaining;
          xcheque:=xcheque - DMBANCO.TAlx.fieldByName('VLRCHEQUE').AsCurrency;
      end;
end;


//calculo individual para clientes
procedure TFRelCaixa.RecCli;
begin
     //controle separado para clientes específicos
     DMPESSOA.TALX1.Close;
     DMPESSOA.TALX1.SQL.Clear;
     DMPESSOA.TALX1.SQL.Add('select cliente.cod_cliente, cliente.markrel, pessoa.nome, cliente.cod_pessoa from cliente');
     DMPESSOA.TALX1.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
     DMPESSOA.TALX1.SQL.Add('where cliente.markrel = :MARK');
     DMPESSOA.TALX1.ParamByName('MARK').AsInteger:=1;
     DMPESSOA.TALX1.Open;

     DMPESSOA.TALX1.First; //filtra contas a receber do cliente
     while not DMPESSOA.TALX1.Eof do
     begin
          DMPESSOA.TALX.Close;
          DMPESSOA.TALX.SQL.Clear;
          DMPESSOA.TALX.SQL.Add('select parcelacr.valor from parcelacr ');
          DMPESSOA.TALX.SQL.Add('left join ctareceber on parcelacr.cod_ctareceber = ctareceber.cod_ctareceber');
          DMPESSOA.TALX.SQL.Add('where ctareceber.cod_cliente = :COD and parcelacr.fech = '+#39+'N'+#39+'');
          If (EdDtIni.Text <> '  /  /    ') and (EdDtFim.Text <> '  /  /    ')
          then begin
               DMPESSOA.TAlx.SQL.Add('and (parcelacr.dtvenc >= :DTINI) and (parcelacr.dtvenc <= :DTFIM)');
               DMPESSOA.TAlx.ParamByName('DTINI').AsString:=EdDtIni.Text;
               DMPESSOA.TAlx.ParamByName('DTFIM').AsString:=EdDtFim.Text;
          end;
          DMPESSOA.TALX.ParamByName('COD').AsString:=DMPESSOA.TALX1.fieldbyName('COD_CLIENTE').AsString;
          DMPESSOA.TALX.Open;

          xvlr:=0;
          DMPESSOA.TALX.First; //acumula valor das contas a receber do cliente
          while not DMPESSOA.TALX.Eof do
          begin
              xvlr:=xvlr+DMPESSOA.TALX.fieldByName('VALOR').AsCurrency;
              DMPESSOA.TALX.Next;
          end;

          //insere registro na tabela temporária
          DMMACS.TMP.Insert;
          DMMACS.TMP.FieldByName('DESC1').AsString:= DMPESSOA.TALX1.fieldByName('NOME').AsString;
          DMMACS.TMP.FieldByName('VLR3').AsCurrency:=xvlr;
          DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
          xindice:=xindice+1;
          DMMACS.TMP.Post;
          DMMACS.Transaction.CommitRetaining;

          DMPESSOA.TALX1.Next;
     end;
end;

//calculo individual para fornecedores
procedure TFRelCaixa.PgFornec;
begin
     //controle separado para fornecedores específicos
     DMPESSOA.TALX1.Close;
     DMPESSOA.TALX1.SQL.Clear;
     DMPESSOA.TALX1.SQL.Add('select fornecedor.cod_fornec, fornecedor.markrel, pessoa.nome, fornecedor.cod_pessoa from fornecedor');
     DMPESSOA.TALX1.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
     DMPESSOA.TALX1.SQL.Add('where fornecedor.markrel = :MARK');
     DMPESSOA.TALX1.ParamByName('MARK').AsInteger:=1;
     DMPESSOA.TALX1.Open;

     DMPESSOA.TALX1.First; //filtra contas a receber do fornecedor
     while not DMPESSOA.TALX1.Eof do
     begin
          DMPESSOA.TALX.Close;
          DMPESSOA.TALX.SQL.Clear;
          DMPESSOA.TALX.SQL.Add('select parcelacp.valor from parcelacp ');
          DMPESSOA.TALX.SQL.Add('left join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar');
          DMPESSOA.TALX.SQL.Add('where ctapagar.cod_fornec = :COD');
          DMPESSOA.TALX.SQL.Add('and parcelacp.fech = '+#39+'N'+#39+'');
          If (EdDtIni.Text <> '  /  /    ') and (EdDtFim.Text <> '  /  /    ')
          then begin
               DMPESSOA.TAlx.SQL.Add('and (parcelacp.dtvenc >= :DTINI) and (parcelacp.dtvenc <= :DTFIM)');
               DMPESSOA.TAlx.ParamByName('DTINI').AsString:=EdDtIni.Text;
               DMPESSOA.TAlx.ParamByName('DTFIM').AsString:=EdDtFim.Text;
          end;
          DMPESSOA.TALX.ParamByName('COD').AsString:=DMPESSOA.TALX1.fieldbyName('COD_FORNEC').AsString;
          DMPESSOA.TALX.Open;

          xvlr:=0;
          DMPESSOA.TALX.First; //acumula valor das contas a pagar do fornecedor
          while not DMPESSOA.TALX.Eof do
          begin
              xvlr:=xvlr+DMPESSOA.TALX.fieldByName('VALOR').AsCurrency;
              DMPESSOA.TALX.Next;
          end;

          //insere registro na tabela temporária
          DMMACS.TMP.Insert;
          DMMACS.TMP.FieldByName('DESC1').AsString:= DMPESSOA.TALX1.fieldByName('NOME').AsString;
          DMMACS.TMP.FieldByName('VLR3').AsCurrency:=xvlr;
          DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
          xindice:=xindice+1;
          DMMACS.TMP.Post;
          DMMACS.Transaction.CommitRetaining;

          DMPESSOA.TALX1.Next;
     end;
end;

//calcula os em aberto
Procedure TFRelCaixa.OSAbert;
begin
     //ordens de serviço abertas
     DMESTOQUE.Alx.Close;
     DMESTOQUE.Alx.SQL.Clear;
     DMESTOQUE.Alx.SQL.Add('select SUM(totord) AS VLROS from ordem');
     DMESTOQUE.Alx.SQL.Add('where ordem.status= :STATUS');
     If (EdDtIni.Text <> '  /  /    ') and (EdDtFim.Text <> '  /  /    ')
     then begin
          DMESTOQUE.Alx.SQL.Add('and (ordem.dtabert >= :DTINI) and (ordem.dtabert <= :DTFIM)');
          DMESTOQUE.Alx.ParamByName('DTINI').AsString:=EdDtIni.Text;
          DMESTOQUE.Alx.ParamByName('DTFIM').AsString:=EdDtFim.Text;
     end;
     DMESTOQUE.Alx.ParamByName('STATUS').AsString:='ABERTO';
     DMESTOQUE.Alx.Open;

     DMMACS.TMP.Insert;
     DMMACS.TMP.FieldByName('DESC1').AsString:='Ordens em Aberto:';
     DMMACS.TMP.FieldByName('VLR4').AsCurrency:=DMESTOQUE.Alx.fieldByName('VLROS').AsCurrency;
     DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
     xindice:=xindice+1;
     xvlrrec:=xvlrrec+DMESTOQUE.Alx.fieldByName('VLROS').AsCurrency;
     DMMACS.TMP.Post;
     DMMACS.Transaction.CommitRetaining;
end;

//calcula contas a vencer
procedure TFRelCaixa.CtaVencer;
begin
     //contas a receber não vencidas
     DMESTOQUE.Alx1.Close;
     DMESTOQUE.Alx1.SQL.Clear;
     DMESTOQUE.Alx1.SQL.Add('select SUM(valor) AS CTAREC from vwparcr');
     DMESTOQUE.Alx1.SQL.Add('where vwparcr.dtvenc > :DATA');
     DMESTOQUE.Alx1.SQL.Add('and (COD_LOJA = :CODLOJA) ');
     DMESTOQUE.Alx1.SQL.Add('and vwparcr.fech <> '+#39+'S'+#39+'');
     If (EdDtIni.Text <> '  /  /    ') and (EdDtFim.Text <> '  /  /    ')
     then begin
          DMESTOQUE.Alx1.SQL.Add('and vwparcr.dtvenc <= :DTFIM');
          DMESTOQUE.Alx1.ParamByName('DTFIM').AsString:=EdDtFim.Text;
     end;
     DMESTOQUE.Alx1.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
     DMESTOQUE.Alx1.ParamByName('DATA').AsString:=DateToStr(Date());
     DMESTOQUE.Alx1.Open;

     DMMACS.TMP.Insert;
     DMMACS.TMP.FieldByName('DESC1').AsString:='Contas a Vencer:';
     DMMACS.TMP.FieldByName('VLR4').AsCurrency:=DMESTOQUE.Alx1.fieldByName('CTAREC').AsCurrency;
     DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
     xindice:=xindice+1;
     xvlrrec:=xvlrrec+DMESTOQUE.Alx1.fieldByName('CTAREC').AsCurrency;
     DMMACS.TMP.Post;
     DMMACS.Transaction.CommitRetaining;
end;

//calcula contas vencidas
procedure TFRelCaixa.CtaVencidas;
begin
     //contas a receber vencidas
     DMESTOQUE.Alx2.Close;
     DMESTOQUE.Alx2.SQL.Clear;
     DMESTOQUE.Alx2.SQL.Add('select sum(valor) as CTAVENC from vwparcr');
     DMESTOQUE.Alx2.SQL.Add('where vwparcr.cod_loja = :CODLOJA');
     DMESTOQUE.Alx2.SQL.Add('and vwparcr.dtvenc <= :DATA');
     DMESTOQUE.Alx2.SQL.Add('and vwparcr.fech = '+#39+'N'+#39+'');
     If (EdDtIni.Text <> '  /  /    ') and (EdDtFim.Text <> '  /  /    ')
     then begin
          DMESTOQUE.Alx2.SQL.Add('and vwparcr.dtvenc >= :DTINI');
          DMESTOQUE.Alx2.ParamByName('DTINI').AsString:=EdDtIni.Text;
     end;
     DMESTOQUE.Alx2.ParamByName('DATA').AsString:=DateToStr(Date());
     DMESTOQUE.Alx2.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
     DMESTOQUE.Alx2.Open;

     DMMACS.TMP.Insert;
     DMMACS.TMP.FieldByName('DESC1').AsString:='Contas Vencidas:';
     DMMACS.TMP.FieldByName('VLR4').AsCurrency:=DMESTOQUE.Alx2.fieldByName('CTAVENC').AsCurrency;
     DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
     xindice:=xindice+1;
     xvlrrec:=xvlrrec+DMESTOQUE.Alx2.fieldByName('CTAVENC').AsCurrency;
     DMMACS.TMP.Post;
     DMMACS.Transaction.CommitRetaining;
end;

//calculo individual para planos de contas
procedure TFRelCaixa.CalculaPlnCta;
begin
     CalcPlnCta;

     DMESTOQUE.Alx3.Close;
     DMESTOQUE.Alx3.SQL.Clear;
     DMESTOQUE.Alx3.SQL.Add('Select * from plncta ');
     DMESTOQUE.Alx3.SQL.Add('where plncta.markrel='+#39+'1'+#39+'');
     DMESTOQUE.Alx3.SQL.Add('order by plncta.classificacao ');
	  DMESTOQUE.Alx3.Open;

     DMESTOQUE.Alx3.First;
     while not DMESTOQUE.Alx3.Eof do
     begin
          DMMACS.TMP.Insert;
          DMMACS.TMP.FieldByName('DESC1').AsString:= DMESTOQUE.Alx3.fieldByName('DESCRICAO').AsString;
          DMMACS.TMP.FieldByName('VLR3').AsCurrency:= DMESTOQUE.Alx3.fieldByName('VLRREAL').AsCurrency;
          DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
          xindice:=xindice+1;
          xvlrplncta:=xvlrplncta+DMESTOQUE.Alx3.fieldByName('VLRREAL').AsCurrency;
          DMMACS.TMP.Post;
          DMMACS.Transaction.CommitRetaining;

          DMESTOQUE.Alx3.Next;
     end;
end;

//gera relatório de posição financeira
procedure TFRelCaixa.RelPosFinanc;
begin
    xcheque:=0; // acumula valor da diferença entre cheques a receber e a pagar
    xsaldototal:=0; //acumula saldo total entre caixa e conta corrente
    xindice:=0; //controla o indice da TMP
    xvlrrec:=0; //acumula valor a receber
    xvlrplncta:=0; //acumula valor total das contas selecionadas do plano de contas
    xvlrtotcaixa:=0; //acumula valor total dos caixas
    xvlrtotctacor:=0; //acumula valor total das contas correntes
    xvlr:= 0;

    LimpaTMP; //limpa tabela temporária


    //abre parte de caixa
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('DESC2').AsString:='Saldo em Caixa:';
    DMMACS.TMP.FieldByName('DESC1').AsString:='..........';
    DMMACS.TMP.FieldByName('VLR2').AsCurrency:=0;
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;

    CalculaCaixa; //insere saldos de caixas na tabela temporária

    xsaldototal:=xsaldototal+xvlrtotcaixa; //acumula saldos de banco e caixa juntos

    //fecha totalizando caixas
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('DESC1').AsString:='Saldo Total em Caixas:';
    DMMACS.TMP.FieldByName('VLR4').AsCurrency:=xvlrtotcaixa;
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;


    Linha; //insere linha ////////////////////////////////////////////////////////////


    //abre parte das contas correntes
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('DESC2').AsString:='Ctas Correntes:';
    DMMACS.TMP.FieldByName('DESC1').AsString:='..........';
    DMMACS.TMP.FieldByName('VLR2').AsCurrency:=0;
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;

    CalculaCtaCor; // calculos de contas correntes

    xsaldototal:=xsaldototal+xvlrtotctacor; //acumula saldos de caixa e contas correntes juntas

    //fecha totalizando valores das contas correntes
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('DESC1').AsString:='Saldo Total em Contas Correntes:';
    DMMACS.TMP.FieldByName('VLR4').AsCurrency:=xvlrtotctacor;
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;


    Linha; //insere linha ////////////////////////////////////////////////////////////



    //abre a parte de cheques
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('DESC2').AsString:='Cheques:';
    DMMACS.TMP.FieldByName('DESC1').AsString:='..........';
    DMMACS.TMP.FieldByName('VLR2').AsCurrency:=0;
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;

    ChqRec; // calcula e insere na TMP total de cheques a receber

    ChqPg; // calcula e insere na TMP total de cheques a pagar

    //fecha a parte de cheques com totalizador entre a diferença de cheques a receber e a pagar
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('DESC1').AsString:='Diferença entre Cheques:';
    DMMACS.TMP.FieldByName('VLR4').AsCurrency:=xcheque;
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;


    Linha; //insere linha ////////////////////////////////////////////////////////////



    //totalizador de saldo de caixa e banco juntos
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('DESC1').AsString:='Saldo Total em Caixa e Banco:';
    DMMACS.TMP.FieldByName('VLR6').AsCurrency:=xsaldototal;
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;


    Linha; //insere linha ////////////////////////////////////////////////////////////



    //abre a parte de contas a receber
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('DESC2').AsString:= 'Ctas a Receber:';
    DMMACS.TMP.FieldByName('DESC1').AsString:='..........';
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;

    RecCli; // calcula individual para cada cliente

    OSAbert; //calcula O.S. em aberto

    CtaVencer; // contas a receber não vencidas

    CtaVencidas; //contas a receber vencidas

    Linha; //insere linha

    //fecha parte a receber
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('DESC1').AsString:= 'Total a Receber:';
    DMMACS.TMP.FieldByName('VLR6').AsCurrency:=xvlrrec;
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;


    Linha; //insere linha ////////////////////////////////////////////////////////////



    //abre parte de contas a pagar
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('DESC2').AsString:= 'Ctas a Pagar:';
    DMMACS.TMP.FieldByName('DESC1').AsString:='..........';
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;

    PgFornec; // controle individual para fornecedores específicos

    //fecha parte de contas a pagar
    DMPESSOA.TALX.Close;
    DMPESSOA.TALX.SQL.Clear;
    DMPESSOA.TALX.SQL.Add('select SUM(VALOR) as VLR from vwparcp');
    DMPESSOA.TALX.SQL.Add('where vwparcp.fech = :FECH');
    DMPESSOA.TALX.SQL.Add('and (vwparcp.cod_loja = :CODLOJA) ');
    If (EdDtIni.Text <> '  /  /    ') and (EdDtFim.Text <> '  /  /    ')
    then begin
    DMPESSOA.TALX.SQL.Add('and (vwparcp.dtvenc >= :DTINI) and (vwparcp.dtvenc <= :DTFIM)');
    DMPESSOA.TALX.ParamByName('DTINI').AsString:=EdDtIni.Text;
    DMPESSOA.TALX.ParamByName('DTFIM').AsString:=EdDtFim.Text;
    END;
    DMPESSOA.TALX.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
    DMPESSOA.TALX.ParamByName('FECH').AsString:= 'N';
    DMPESSOA.TALX.Open;

    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('DESC1').AsString:= 'Total a Pagar:';
    DMMACS.TMP.FieldByName('VLR6').AsCurrency:=DMPESSOA.TALX.fieldByName('VLR').AsCurrency;
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;


    Linha; //insere linha ////////////////////////////////////////////////////////////



    //abre parte de plano de contas
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('DESC1').AsString:= '..........';;
    DMMACS.TMP.FieldByName('DESC2').AsString:='Plano de Ctas:';
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;

    CalculaPlnCta; //calcula e insere a parte do plano de contas

    Linha; //insere linha

    //fecha plano de contas totalizando contas específicas
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('DESC1').AsString:= 'Total em Contas Específicas:';
    DMMACS.TMP.FieldByName('VLR4').AsCurrency:=xvlrplncta;
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;


    Linha; //insere linha ////////////////////////////////////////////////////////////
    Linha; //insere linha ////////////////////////////////////////////////////////////


    //insere projeção entre a pagar e a receber
    DMMACS.TMP.Insert;
    DMMACS.TMP.FieldByName('VLR7').AsCurrency:=xvlrrec - DMPESSOA.TALX.fieldByName('VLR').AsCurrency;
    DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
    xindice:=xindice+1;
    DMMACS.TMP.Post;
    DMMACS.Transaction.CommitRetaining;


    DMCAIXA.TRel.Close;
    DMCAIXA.TRel.SQL.Clear;
    DMCAIXA.TRel.SQL.Add('select * from TMP');
    DMCAIXA.TRel.SQL.Add('order by tmp.int1');
    DMCAIXA.TRel.SQL.Text;
    DMCAIXA.TRel.Open;


    FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPosicaoFinanceira.frf');
    FSRel.ShowReport;

    PComunica.Visible:=false;
    PComunica.SendToBack;

end;

Procedure TFRelCaixa.ResultBanco(XCod_ContaBC: Integer; DTINI, DTFIM: String; XTIPO: String);
Begin
   XCREDITOS:=0;
   XDEBITOS:=0;
   XCREDPREV:=0;
   XDEBPREV:=0;
   If XTIPO='CX'
   Then Begin
   	////////////////////////////////
   	//PROCESSO PARA REGIME DE CAIXA
       ////////////////////////////////
       //SOMENTE PARA ENTRADAS DE PRODUTOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+')  AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))  AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.dtmov>=:DT1) And (movbanco.dtmov<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);

{       //SOMENTE PARA ENTRADAS DE SERVIÇOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valorserv) AS VALOR from movbanco Where (movbanco.cod_plnctaserv=:COD_CONTA)  AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+')  AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))  AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.dtmov>=:DT1) And (movbanco.dtmov<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;}
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);

       //SOMENTE PARA SAIDAS de PRODUTOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.VALOR) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')   or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.dtmov>=:DT1) And (movbanco.dtmov<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=XCREDITOS-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=XCREDITOS+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;

{       //SOMENTE PARA SAIDAS de SERVIÇOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.VALORSERV) AS VALOR from movbanco Where (movbanco.cod_plnctaserv=:COD_CONTA)  AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')   or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.dtmov>=:DT1) And (movbanco.dtmov<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=XCREDITOS-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=XCREDITOS+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;}

   End
   Else Begin
   	//////////////////////////////////////
   	//PROCESSO PARA REGIME DE COMPETENCIA
       /////////////////////////////////////
       //REALIZADO SOMENTE PARA ENTRADAS de PRODUTOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA) AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
        End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);

{       //REALIZADO SOMENTE PARA ENTRADAS de SERVIÇOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valorserv) AS VALOR from movbanco Where (movbanco.cod_plnctaserv=:COD_CONTA) AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
        End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=XCREDITOS+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=XCREDITOS-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);
}

       //REALIZADO SOMENTE PARA SAIDAS DE PRODUTOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA) AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=XCREDITOS-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=XCREDITOS+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;

{       //REALIZADO SOMENTE PARA SAIDAS DE SERVIÇOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valorserv) AS VALOR from movbanco Where (movbanco.cod_plnctaserv=:COD_CONTA) AND (movbanco.fech='+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2))');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDITOS:=XCREDITOS-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDITOS:=XCREDITOS+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
       }
		//EFETUA SQL PARA PREVISTOS DE ENTRADA de PRODUTOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech<>'+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2)) ');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDPREV:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);

		{//EFETUA SQL PARA PREVISTOS DE ENTRADA de SERVIÇOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valorserv) AS VALOR from movbanco Where (movbanco.cod_plnctaserv=:COD_CONTA)  AND (movbanco.fech<>'+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'ENTRADA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2)) ');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=XCREDPREV+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDPREV:=XCREDPREV-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);

          }
		//EFETUA SQL PARA PREVISTOS DE SAIDA de PRODUTOS
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valor) AS VALOR from movbanco Where (movbanco.cod_plncta=:COD_CONTA)  AND (movbanco.fech<>'+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2)) ');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=XCREDPREV-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDPREV:=XCREDPREV+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;

		{//EFETUA SQL PARA PREVISTOS DE SAIDA de servços
   	DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add('SELECT sum(movbanco.valorserv) AS VALOR from movbanco Where (movbanco.cod_plnctaserv=:COD_CONTA)  AND (movbanco.fech<>'+#39+'S'+#39+') AND (movbanco.tipoop='+#39+'SAIDA'+#39+') AND ((movbanco.tipogerador<>'+#39+'CTARCH'+#39+')  or (movbanco.tipogerador is null))   AND (movbanco.ESTRU='+#39+'1'+#39+') ');
		DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaBC;
		If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   	Then Begin
  			DMCONTA.TAlx.SQL.Add(' AND ((movbanco.DTREF>=:DT1) And (movbanco.DTREF<=:DT2)) ');
			DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(DTINI);
			DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(DTFIM);
       End;
   	DMCONTA.TAlx.SQL.Text;
   	DMCONTA.TAlx.Open;
       If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
           XCREDPREV:=XCREDPREV-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
       Else
           XCREDPREV:=XCREDPREV+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
          }
	End;
End;

Procedure TFRelCaixa.ResultCaixa(XCod_ContaCX: Integer; DTINI, DTFIM: String; XTIPO: String);
Begin
   XCREDITOS:=0;
   XDEBITOS:=0;
   XCREDPREV:=0;
   XDEBPREV:=0;
   If DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsString='204' Then
   	XDEBPREV:=0;   
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(lancaixa.valor) AS VALOR from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.tipcai='+#39+'E'+#39+')  AND (lancaixa.ESTRU='+#39+'1'+#39+')');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
	If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   Then Begin
		If XTIPO='CX' Then
  			DMCONTA.TAlx.SQL.Add(' AND ((lancaixa.dtlanc>=:DT1) And (lancaixa.dtlanc<=:DT2)) ')
   	Else
  			DMCONTA.TAlx.SQL.Add(' AND ((lancaixa.DTREFER>=:DT1) And (lancaixa.DTREFER<=:DT2)) ');
		DMCONTA.TAlx.ParamByName('DT1').AsDate:=StrToDate(DTINI);
		DMCONTA.TAlx.ParamByName('DT2').AsDate:=StrToDate(DTFIM);
   End;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
       XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
   Else
       XCREDITOS:=DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency*(-1);
   DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('SELECT sum(lancaixa.valor) AS VALOR from lancaixa Where (lancaixa.cod_plnctafil=:COD_CONTA) AND (lancaixa.tipcai='+#39+'S'+#39+')  AND (lancaixa.ESTRU='+#39+'1'+#39+')');
	DMCONTA.TAlx.ParamByName('COD_CONTA').AsInteger:=XCod_ContaCX;
	If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
   Then Begin
		If XTIPO='CX' Then
  			DMCONTA.TAlx.SQL.Add(' AND ((lancaixa.dtlanc>=:DT1) And (lancaixa.dtlanc<=:DT2)) ')
   	Else
  			DMCONTA.TAlx.SQL.Add(' AND ((lancaixa.DTREFER>=:DT1) And (lancaixa.DTREFER<=:DT2)) ');
		DMCONTA.TAlx.ParamByName('DT1').AsDate:=StrToDate(DTINI);
		DMCONTA.TAlx.ParamByName('DT2').AsDate:=StrToDate(DTFIM);
   End;
   DMCONTA.TAlx.SQL.Text;
   DMCONTA.TAlx.Open;
   If DMCONTA.TPlnCta.FieldByName('natureza').AsString='C' Then
       XCREDITOS:=XCREDITOS-DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency
   Else
       XCREDITOS:=XCREDITOS+DMCONTA.TAlx.FieldBYName('VALOR').AsCurrency;
End;


//calcula plano de contas
procedure TFRelCaixa.CalcPlnCta;
begin 
   //PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:='Financeiro/Relatórios/Posição Financeira';
   DMMACS.TLoja.FieldByName('TMP2').AsString:='Intervalo: '+EdDtIni.Text+ ' - ' +EdDtFim.Text;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;

  	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('update plncta SET plncta.vlrprev=0, plncta.vlrreal=0, perprev=0, perreal=0');
	DMCONTA.TPlnCta.ExecSQL;
   DMCONTA.IBT.CommitRetaining;

	//FILTRA CONTAS
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' where (plncta.markrel = :MARK) and (plncta.TIPO = '+#39+'N'+#39+') order by plncta.classificacao');
   DMCONTA.TPlnCta.ParamByName('MARK').AsInteger:=1;
	DMCONTA.TPlnCta.Open;

   //PERCORRE TODOS OS REGISTRO PARA ACUMULAR VALOR
   While Not DMCONTA.TPlnCta.Eof Do
   Begin
       If (DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger=204) or (DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger=203) Then
           DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.Edit;
   	///////////
   	// CAIXA //
       ///////////
   	If DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString='3.1.01.01.0001' Then
       XCREDITOS:=0;


       	//regime de caixa
       	ResultCaixa(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger, EdDTIni.Text, EdDtFim.Text, 'CX');


       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+XCREDITOS+XDEBITOS;
   	///////////
       // BANCO //
       ///////////


       	ResultBanco(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger, EdDTIni.Text, EdDtFim.Text, 'CX');

       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+XCREDITOS+XDEBITOS;
       DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+XCREDPREV+XDEBPREV;

   	//////////////////
       // CTAS RECEBER //
       //////////////////
      { If RGTipoEstrut.ItemIndex=1
       Then Begin
       	ResultCtaReceber(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger, EdDTIni.Text, EdDtFim.Text);
       	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+XCREDPREV;
       End; }

   	////////////////
       // CTAS PAGAR //
       ////////////////
      { If RGTipoEstrut.ItemIndex=1
       Then Begin
       	ResultCP(DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger, EdDTIni.Text, EdDtFim.Text);
       	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+XDEBPREV;
       End;  }
		///////////
       DMCONTA.TPlnCta.Post;
       DMCONTA.TPlnCta.NEXT;
   End;
   ///////////////////
   //CALCULO DE C.M.V.
   ///////////////////
   //XTRCMV:=XTRCMV+[DMESTOQUE.TRel."VALCUSTO"*(DMESTOQUE.TRel."QTDEPROD"-DMESTOQUE.TRel."QTDDEV")];

	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.NATUREZA='+#39+'#'+#39+') AND (Plncta.CCF='+#39+'CMV'+#39+') and (plncta.markrel = '+#39+'1'+#39+') Order By plncta.classificacao desc');
	DMCONTA.TPlnCta.SQL.Text;
	DMCONTA.TPlnCta.Open;

   If NOT DMCONTA.TPlnCta.IsEmpty
   Then Begin
       //ITENS DE PEDIDOS A VISTA
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       DMCONTA.TALX.SQL.Add(' Select SUM(itenspedven.valcomp) AS VALOR from itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (pedvenda.situacao='+#39+'FECHADO'+#39+')AND (FormPag.Descricao='+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itenspedven.data>=:DT1) And (itenspedven.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMCONTA.TALX.Open;

       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
       DMCONTA.TPlnCta.Post;

       //ITENS DE PEDIDOS A PRAZO
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       DMCONTA.TALX.SQL.Add(' Select SUM(itenspedven.valcomp) AS VALOR from itenspedven left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (pedvenda.situacao='+#39+'FECHADO'+#39+')AND (FormPag.Descricao<>'+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itenspedven.data>=:DT1) And (itenspedven.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMCONTA.TALX.Open;

       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
       DMCONTA.TPlnCta.Post;

       //ITENS DE ORDEM A VISTA
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       DMCONTA.TALX.SQL.Add(' Select SUM(itprodord.valcomp) AS VALOR from itprodord left join ordem on itprodord.cod_ordem = ordem.cod_ordem ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (ordem.status='+#39+'FECHADO'+#39+')AND (FormPag.Descricao='+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itprodord.data>=:DT1) And (itprodord.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
       DMCONTA.TALX.Open;
       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
       DMCONTA.TPlnCta.Post;
       //ITENS DE ORDEM A PRAZO
       DMCONTA.TAlx.Close;
       DMCONTA.TALX.SQL.Clear;
       DMCONTA.TALX.SQL.Add(' Select SUM(itprodord.valcomp) AS VALOR from itprodord left join ordem on itprodord.cod_ordem = ordem.cod_ordem  ');
       DMCONTA.TALX.SQL.Add(' Left join formpag on ordem.cod_formpag = formpag.cod_formpag ');
       DMCONTA.TALX.SQL.Add(' Where ((formpag.cod_loja=:COD_LOJA) AND (ordem.status='+#39+'FECHADO'+#39+')AND (FormPag.Descricao<>'+#39+'À VISTA'+#39+'))');
       If (EdDtFim.Text<>'  /  /    ') AND (EdDTIni.Text<>'  /  /    ')
       Then Begin
           DMCONTA.TAlx.SQL.Add(' AND ((itprodord.data>=:DT1) And (itprodord.data<=:DT2))');
           DMCONTA.TAlx.ParamByName('DT1').AsDateTime:=StrToDate(EdDTIni.Text);
           DMCONTA.TAlx.ParamByName('DT2').AsDateTime:=StrToDate(EdDtFim.Text);
       End;
       DMCONTA.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODEMPRESA.Caption;
       DMCONTA.TALX.Open;
       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+DMCONTA.TAlx.FieldByName('VALOR').AsCurrency;
       DMCONTA.TPlnCta.Post;
   End;

   DMCONTA.IBT.CommitRetaining;


	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.markrel = '+#39+'1'+#39+' ) AND (plncta.tipo='+#39+'T'+#39+') Order By plncta.classificacao desc');
	DMCONTA.TPlnCta.SQL.Text;
	DMCONTA.TPlnCta.Open;

   DMCONTA.TPlnCta.First;
   While Not DMCONTA.TPlnCta.Eof do
   Begin
		DMCONTA.TAlx.Close;
   	DMCONTA.TAlx.SQL.Clear;
   	DMCONTA.TAlx.SQL.Add(' Select Sum(plncta.vlrreal) AS VLRREAL, Sum(plncta.vlrprev) AS VLRPREV From plncta ');
   	DMCONTA.TAlx.SQL.Add(' Where (plncta.classificacao like '+#39+DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString+'%'+#39+') And (plncta.tipo='+#39+'N'+#39+')');
       DMCONTA.TAlx.SQL.Text;
		DMCONTA.TAlx.Open;
       DMCONTA.TPlnCta.Edit;
       DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TAlx.FIELDBYNAME('VLRREAL').AsCurrency;
       DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TAlx.FIELDBYNAME('VLRPREV').AsCurrency;
		DMCONTA.TPlnCta.Post;
       DMCONTA.TPlnCta.Next;
   End;
   DMCONTA.IBT.CommitRetaining;

   ////////////////////////////////
   //TRABALHA COM CONTAS CALCULADAS
   ////////////////////////////////

   //SELECIONA TODAS AS CONTAS CALCULADAS
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.NATUREZA='+#39+'X'+#39+') and (plncta.markrel ='+#39+'1'+#39+')  Order By plncta.ORDEM');
	DMCONTA.TPlnCta.SQL.Text;
	DMCONTA.TPlnCta.Open;

   DMCONTA.TPlnCta.First;
   XULTORDEM:=DMCONTA.TPlnCta.FieldByName('ORDEM').AsString;
   While Not DMCONTA.TPlnCta.Eof do
   Begin
   	If Not DMCONTA.TPlnCta.Bof
       Then Begin
   		//REFILTRA CONTAS POR MOTIVO DO COMIT
			DMCONTA.TPlnCta.Close;
   		DMCONTA.TPlnCta.SQL.Clear;
   		DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   		DMCONTA.TPlnCta.SQL.Add(' where plncta.ordem > '+#39+XULTORDEM+#39+' AND (plncta.NATUREZA='+#39+'X'+#39+') and (plncta.markrel='+#39+'1'+#39+')  Order By plncta.ORDEM ');
			DMCONTA.TPlnCta.Open;
           DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       End;
       If Not DMCONTA.TPlnCta.IsEmpty
       Then Begin
   		//PARA CADA CONTA CALCULADA SELECIONA SEUS CALCULOS
			DMCONTA.TAlx.Close;
   		DMCONTA.TAlx.SQL.Clear;
   		DMCONTA.TAlx.SQL.Add(' Select * From PLNCTACALC ');
   		DMCONTA.TAlx.SQL.Add(' Where (plncta.markrel='+#39+'1'+#39+') and (plnctacalc.cod_plncta=:COD_PLNCTA)');
       	DMCONTA.TAlx.SQL.Text;
       	DMCONTA.TAlx.ParamByName('COD_PLNCTA').AsInteger:=DMCONTA.TPlnCta.FieldByNAme('COD_PLNCTA').AsInteger;
			DMCONTA.TAlx.Open;

       	DMCONTA.TPlnCta.Edit;
       	DMCONTA.TAlx.First;
       	While Not DMCONTA.TAlx.Eof do
       	Begin
       		//LOCALIZA A CONTA DE REFERENCIA PARA PEGAR SEU VALOR
           	DMMACS.TALX.Close;
           	DMMACS.TALX.SQL.Clear;
           	DMMACS.TALX.SQL.Add('select * FROM plncta Where (plncta.cod_plncta=:COD_CTAREF) AND (plncta.cod_filial=:COD_LOJA) and (plncta.markrel='+#39+'1'+#39+')');
           	DMMACS.TALX.ParamByName('COD_CTAREF').AsInteger:=DMCONTA.TAlx.FieldByName('COD_PLNCTAREF').AsInteger;
           	DMMACS.TALX.ParamByName('COD_LOJA').AsString:=FMenu.LCODLOJA.Caption;
				DMMACS.TALX.SQL.Text;
           	DMMACS.TALX.Open;

				//Percorre todos os cálculos realizando seus calculos
           	If DMCONTA.TAlx.FieldByName('OPER').AsString='+'
           	Then Begin
	           		DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency+DMMACS.TALX.FieldByName('VLRPREV').AsCurrency;
	           		DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency+DMMACS.TALX.FieldByName('VLRREAL').AsCurrency;
           	End
           	Else Begin
           		If DMCONTA.TAlx.FieldByName('OPER').AsString='-'
           		Then Begin
	           			DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency-DMMACS.TALX.FieldByName('VLRPREV').AsCurrency;
	           			DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency-DMMACS.TALX.FieldByName('VLRREAL').AsCurrency;
           		End
           		Else Begin
           			If DMCONTA.TAlx.FieldByName('OPER').AsString='/'
           			Then Begin
	           				DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency/DMMACS.TALX.FieldByName('VLRPREV').AsCurrency;
	           				DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency/DMMACS.TALX.FieldByName('VLRREAL').AsCurrency;
           			End
           			Else Begin
           				If DMCONTA.TAlx.FieldByName('OPER').AsString='*'
           				Then Begin
	           					DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency*DMMACS.TALX.FieldByName('VLRPREV').AsCurrency;
	           					DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency*DMMACS.TALX.FieldByName('VLRREAL').AsCurrency;
           				End;
                   	End;
               	End;
           	End;
           	DMCONTA.TAlx.Next;
       	End;
       End;
       XULTORDEM:=DMCONTA.TPlnCta.FieldByName('ordem').AsString;
       If Not DMCONTA.TPlnCta.IsEmpty Then
       	DMCONTA.TPlnCta.Post;
       DMCONTA.IBT.CommitRetaining;
       DMCONTA.TPlnCta.Next;
   End;
   DMCONTA.IBT.CommitRetaining;

   /////////////////////////////////////////////////
   //ACUMULA VALORES NOS TOTALIZADORES PARA GARANTIR
   /////////////////////////////////////////////////

   // ZERA TOTALIZADORES SIMPLES
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add(' UPDATE plncta SET plncta.perprev=0, plncta.perreal=0, plncta.vlrprev=0  ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.natureza<>'+#39+'X'+#39+') And (plncta.natureza<>'+#39+'#'+#39+')  And (plncta.TIPO='+#39+'T'+#39+') and (plncta.markrel='+#39+'1'+#39+')');
	DMCONTA.TPlnCta.ExecSQL;
   DMCONTA.IBT.CommitRetaining;

   //RECALCULA
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.markrel='+#39+'1'+#39+') AND (plncta.tipo='+#39+'T'+#39+') Order By plncta.classificacao desc');
	DMCONTA.TPlnCta.SQL.Text;
	DMCONTA.TPlnCta.Open;
   DMCONTA.TPlnCta.First;
   While Not DMCONTA.TPlnCta.Eof do
   Begin
   	If (DMCONTA.TPlnCta.FieldByNAme('NATUREZA').AsString<>'#') AND (DMCONTA.TPlnCta.FieldByNAme('NATUREZA').AsString<>'X')
       Then Begin
			DMCONTA.TAlx.Close;
   		DMCONTA.TAlx.SQL.Clear;
   		DMCONTA.TAlx.SQL.Add(' Select Sum(plncta.vlrreal) AS VLRREAL, Sum(plncta.vlrprev) AS VLRPREV From plncta ');
   		DMCONTA.TAlx.SQL.Add(' Where (plncta.markrel='+#39+'1'+#39+') and (plncta.classificacao like '+#39+DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString+'%'+#39+') And (plncta.tipo='+#39+'N'+#39+')');
       	DMCONTA.TAlx.SQL.Text;
			DMCONTA.TAlx.Open;
       	DMCONTA.TPlnCta.Edit;
       	DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TAlx.FIELDBYNAME('VLRREAL').AsCurrency;
       	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TAlx.FIELDBYNAME('VLRPREV').AsCurrency;
			DMCONTA.TPlnCta.Post;
       End;
       DMCONTA.TPlnCta.Next;
   End;
   //RECEITAS - DEDUÇÕES DA RECEITA BRUTA
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta');
   DMCONTA.TPlnCta.SQL.Add('Where (plncta.markrel='+#39+'1'+#39+') and (plncta.classificacao= '+#39+'3'+#39+')');
	DMCONTA.TPlnCta.SQL.Text;
	DMCONTA.TPlnCta.Open;

	DMCONTA.TAlx.Close;
   DMCONTA.TAlx.SQL.Clear;
   DMCONTA.TAlx.SQL.Add('Select * from plncta');
   DMCONTA.TAlx.SQL.Add('Where (plncta.markrel='+#39+'1'+#39+') and (plncta.classificacao= '+#39+'3.2'+#39+')');
	DMCONTA.TAlx.SQL.Text;
	DMCONTA.TAlx.Open;
  { Try
   	DMCONTA.TPlnCta.Edit;
   	DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency-DMCONTA.TAlx.FieldByName('VLRREAL').AsCurrency;
   	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency-DMCONTA.TAlx.FieldByName('VLRPREV').AsCurrency;
   	DMCONTA.TPlnCta.Post;
   Except
   	DMCONTA.TPlnCta.Edit;
   	DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=0;
   	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=0;
   	DMCONTA.TPlnCta.Post;
	End;}
   DMCONTA.IBT.CommitRetaining;
   ////////////////////////////////////////
   //TRABALHA COM CONTAS DE CÁLCULOS FIXOS
   ////////////////////////////////////////

   //SELECIONA TODAS AS CONTAS DE CÁLCULOS FIXOS
	DMCONTA.TPlnCta.Close;
   DMCONTA.TPlnCta.SQL.Clear;
   DMCONTA.TPlnCta.SQL.Add('Select * from plncta ');
   DMCONTA.TPlnCta.SQL.Add(' Where (plncta.NATUREZA='+#39+'#'+#39+') and (plncta.markrel='+#39+'1'+#39+') Order By plncta.classificacao desc');
	DMCONTA.TPlnCta.SQL.Text;
	DMCONTA.TPlnCta.Open;

   DMCONTA.TPlnCta.First;
   While Not DMCONTA.TPlnCta.Eof do
   Begin
       //Percorre todas as contas realizando os cálculos
       //CALCULO DE PONTO DE EQUILIBRIO
       If DMCONTA.TPlnCta.FieldByName('CCF').AsString='PE'
       Then Begin
       	//LOCALIZA A CONTA DE CUSTO FIXO
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('select * FROM plnctacalc Where (plnctacalc.COD_PLNCTA=:COD_CTAREF) AND (plnctacalc.OPER='+#39+'+'+#39+') and (plncta.markrel='+#39+'1'+#39+')');
           DMMACS.TALX.ParamByName('COD_CTAREF').AsInteger:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
			DMMACS.TALX.SQL.Text;
           DMMACS.TALX.Open;
           If Not DMMACS.TALX.IsEmpty
           Then Begin
           	DMCONTA.TAlx.Close;
           	DMCONTA.TALX.SQL.Clear;
           	DMCONTA.TALX.SQL.Add('select * FROM plncta Where (plncta.markrel='+#39+'1'+#39+') and (plncta.COD_PLNCTA=:COD_CTAREF)');
           	DMCONTA.TALX.ParamByName('COD_CTAREF').AsInteger:=DMMACS.TAlx.FieldByName('COD_PLNCTAREF').AsInteger;
				DMCONTA.TALX.SQL.Text;
           	DMCONTA.TALX.Open;
           	If not DMCONTA.TAlx.IsEmpty
           	Then Begin
           		XCUSTOFIXOPREV:=DMCONTA.TALX.FieldByName('VLRPREV').AsCurrency;
           		XCUSTOFIXOREAL:=DMCONTA.TALX.FieldByName('VLRREAL').AsCurrency;
               End;
           End;
       	//LOCALIZA A CONTA DE MARGEM DE CONTRIBUIÇÃO
           DMMACS.TALX.Close;
           DMMACS.TALX.SQL.Clear;
           DMMACS.TALX.SQL.Add('select * FROM plnctacalc Where (plncta.markrel='+#39+'1'+#39+') and (plnctacalc.COD_PLNCTA=:COD_CTAREF) AND (plnctacalc.OPER='+#39+'/'+#39+')');
           DMMACS.TALX.ParamByName('COD_CTAREF').AsInteger:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
			DMMACS.TALX.SQL.Text;
           DMMACS.TALX.Open;

           DMCONTA.TAlx.Close;
           DMCONTA.TALX.SQL.Clear;
           DMCONTA.TALX.SQL.Add('select * FROM plncta Where (plncta.markrel='+#39+'1'+#39+') and (plncta.COD_PLNCTA=:COD_CTAREF)');
           DMCONTA.TALX.ParamByName('COD_CTAREF').AsInteger:=DMMACS.TAlx.FieldByName('COD_PLNCTAREF').AsInteger;
			DMCONTA.TALX.SQL.Text;
           DMCONTA.TALX.Open;
           If not DMCONTA.TAlx.IsEmpty
           Then Begin
           	//Neste ponto o registro não possue os valores em percentual, estes são calculados em relatorios
               //Então as variaveis receberão os valores p/ após calcularmos os percentuais
           	XPERPREV:=DMCONTA.TALX.FieldByName('VLRPREV').AsCurrency;
           	XPERREAL:=DMCONTA.TALX.FieldByName('VLRREAL').AsCurrency;
               //Agora vamos buscar a conta de receita p/ descobrirmos o total das movimentaçõers
           	DMCONTA.TAlx.Close;
           	DMCONTA.TALX.SQL.Clear;
           	DMCONTA.TALX.SQL.Add('select * FROM plncta Where (plncta.markrel='+#39+'1'+#39+') and (plncta.CLASSIFICACAO='+#39+'3'+#39+')');
				DMCONTA.TALX.SQL.Text;
           	DMCONTA.TALX.Open;
           	If not DMCONTA.TAlx.IsEmpty
           	Then Begin
               	If DMCONTA.TALX.FieldByName('VLRPREV').AsCurrency<>0 Then
						XPERPREV:=(XPERPREV*100)/DMCONTA.TALX.FieldByName('VLRPREV').AsCurrency
                   Else
						XPERPREV:=0;

                   If DMCONTA.TALX.FieldByName('VLRREAL').AsCurrency<>0 Then
           			XPERREAL:=(XPERREAL*100)/DMCONTA.TALX.FieldByName('VLRREAL').AsCurrency
                   Else
                       XPERREAL:=0;
               End
               Else Begin
                   XPERPREV:=0;
                   XPERREAL:=0;
               End;
           End;

           DMCONTA.TPlnCta.Edit;
           If (XCUSTOFIXOREAL=0) Or (XPERREAL=0) Then
              	DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=0
			Else
           	DMCONTA.TPlnCta.FieldByName('VLRREAL').AsCurrency:=(XCUSTOFIXOREAL/XPERREAL)*100;

			If (XCUSTOFIXOPREV=0) Or (XPERPREV=0) Then
           	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=0
			Else
           	DMCONTA.TPlnCta.FieldByName('VLRPREV').AsCurrency:=(XCUSTOFIXOPREV/XPERPREV)*100;
           DMCONTA.TPlnCta.Post;
       End;
       DMCONTA.TPlnCta.Next;
	End;
   DMCONTA.IBT.CommitRetaining;


   	//ZERA OS VALORES DE PREVISTO DAS CONTAS
		DMCONTA.TPlnCta.Close;
   	DMCONTA.TPlnCta.SQL.Clear;
   	DMCONTA.TPlnCta.SQL.Add('update plncta SET plncta.vlrprev=0, perprev=0');
		DMCONTA.TPlnCta.ExecSQL;
   	DMCONTA.IBT.CommitRetaining;

end;


//calcula saldo de conta corrente
procedure TFRelCaixa.MovBanco;
begin
     xctacor:=0;
     //filtra movimentação bancária desta conta corrente
     FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_CTACOR', '', 'COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+'');
//     FiltraTabela(DMBANCO.TMovBanco, 'MOVBANCO', 'COD_CTACOR', '', 'COD_CTACOR = '+#39+DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString+#39+' AND movbanco.fech = '+#39+'N'+#39+'');
     xctacor:=DMBANCO.WCtaCor.fieldByName('SALDO').AsCurrency;
     
     DMBANCO.TMovBanco.First;
     while not DMBANCO.TMovBanco.Eof do
     begin
          if DMBANCO.TMovBanco.FieldByName('TIPOOP').AsString = 'SAIDA' then
             xctacor:=xctacor-DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency
          else
             xctacor:=xctacor+DMBANCO.TMovBanco.FieldByName('VALOR').AsCurrency;
          DMBANCO.TMovBanco.Next;
     end;
end;

//calcula saldo de caixa
procedure TFRelCaixa.SaldoCaixa;
Var
    Entradas, Saidas: Real;
Begin
     SaldoAnterior:=0;
     SaldoInicial:=0;
     SaldoAtual:=0;

    //Mostra Saldo Anterior
    DMCAIXA.TAlx.Close;
    DMCAIXA.TAlx.SQL.Clear;
    DMCAIXA.TAlx.SQL.Add('SELECT abcaixa.dtfecha, abcaixa.cod_caixa, SaldoFin, HoraFecha FROM ABCAIXA Where (Fechado='+#39+'N'+#39+') And (COD_CAIXA=:Caixa) Order By DTFecha Desc, HoraFecha Desc');
    DMCAIXA.TAlx.ParamByName('Caixa').AsString:=DMCAIXA.TCaixa.fieldByName('COD_CAIXA').AsString;
    DMCAIXA.TAlx.Open;

    //filtra abcaixa para ver se o caixa ta aberto, se sim calcula saldo inicial, pra somar entradas e saídas e obter o saldo atual
    if FiltraTabela(DMCAIXA.TAbCaixa, 'ABCAIXA', 'COD_CAIXA', '', 'COD_CAIXA = '+#39+DMCAIXA.TCaixa.fieldByName('COD_CAIXA').AsString+#39+' AND abcaixa.fechado = '+#39+'N'+#39+'') = true
    then begin

        If DMCAIXA.TAlx.FieldByName('SaldoFin').AsString='' Then
            SaldoAnterior:=0
        Else
            SaldoAnterior:=DMCAIXA.TAlx.FieldByName('SaldoFin').Value;


        //Mostra saldo inicial
        If DMCAIXA.TABCaixa.Locate('COD_ABCAIXA', DMCAIXA.TAbCaixa.fieldByName('COD_ABCAIXA').AsString, []) Then
            SaldoInicial:=DMCAIXA.TABCaixa.FieldByName('SALDOINI').Value
        Else
            SaldoInicial:=0.00;

        //Calculas entradas em caixa
        DMCAIXA.TAlx.Close;
        DMCAIXA.TAlx.SQL.Clear;
        DMCAIXA.TAlx.SQL.Add('SELECT SUM(VALOR) As SOMA FROM vwlancaixa Where (TipcAI=:Tipo) And (COD_ABCAIXA=:CodigoAbCaixa)');
        DMCAIXA.TAlx.ParamByName('Tipo').AsString:='E';
        DMCAIXA.TAlx.ParamByName('CodigoAbCaixa').AsString:=DMCAIXA.TAbCaixa.fieldByName('COD_ABCAIXA').AsString;
        DMCAIXA.TAlx.Open;
        If DMCAIXA.TAlx.FieldByName('SOMA').AsString='' Then
            Entradas:=0
        Else
            Entradas:=DMCAIXA.TAlx.FieldByName('SOMA').Value;

        //Calculas Saídas de caixa
        DMCAIXA.TAlx.Close;
        DMCAIXA.TAlx.SQL.Clear;
        DMCAIXA.TAlx.SQL.Add('SELECT SUM(VALOR) As SOMA FROM vwlancaixa Where (TipcAI=:Tipo)  And (COD_ABCAIXA=:CodigoAbCaixa)');
        DMCAIXA.TAlx.ParamByName('Tipo').AsString:='S';
        DMCAIXA.TAlx.ParamByName('CodigoAbCaixa').AsString:=DMCAIXA.TAbCaixa.fieldByName('COD_ABCAIXA').AsString;
        DMCAIXA.TAlx.Open;
        If DMCAIXA.TAlx.FieldByName('SOMA').AsString='' Then
            Saidas:=0
        Else
            Saidas:=DMCAIXA.TAlx.FieldByName('SOMA').Value;

        //Mostra resultado de saldo na tela
        SaldoAtual:=Entradas-Saidas;
    end
    else begin //se o caixa estiver fechado o saldo atual é o saldo do registro do caixa
       // SaldoAtual:=DMCAIXA.TCaixa.fieldByName('SALDO').AsCurrency;
    end;

end;

procedure TFRelCaixa.FormActivate(Sender: TObject);
begin
  inherited;
	Caption:='Relatório de Caixa' ;  
   PPosFinanc.Visible:=false;
   PPosFinanc.SendToBack;
   PRecDesp.Visible:=false;
   PRecDesp.SendToBack;
   FrmCaixaIni.Repaint;
   FrmCaixaFim.Repaint;
   FrmConta.Repaint;
   FDSCaixa.DataSource:=DMCAIXA.DSRel;
   EdDataIni.Text:=DateToStr(Date());
   EdDataFim.Text:=DateToStr(Date());
   EdDataIni.SetFocus;
   Caption:=FMenu.TITULOREL;
   XCONTA:=-1;

   // se for relatorio de credito, o formulario terá algumas modificaçções
   If FMenu.TIPOREL = 'RELCREDITO'
   Then Begin
       // altera algumas opções do formulario para relatorio de credito
       AlterarForm_Credito;
       RGOrdenar.Visible := true;
   End;

   if FMenu.TIPOREL = 'POSFINANC'
   then begin
        PPosFinanc.Visible:=true;
        PPosFinanc.BringToFront;
        Caption:='Relatório de Posição Financeira' ;  
   end;

   if FMenu.TIPOREL = 'RELRECDESP'
   then begin
        PRecDesp.BringToFront;
        PRecDesp.Visible:=true;
   end;

end;

procedure TFRelCaixa.FrmCaixaIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCaixaIni:='';
   FrmCaixaIni.EDCodigo.Text:='';
   FrmCaixaIni.EdDescricao.Text:='';
   FrmCaixaIni.Repaint;       
end;

procedure TFRelCaixa.FrmCaixaIniBTNOPENClick(Sender: TObject);
begin
  inherited;
   // se for pra relatorio de credito
   If FMenu.TIPOREL = 'RELCREDITO'
   Then begin
       If AbrirForm(TFCliente,FCliente,1)='Selected'
       Then Begin
           FrmCaixaIni.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FrmCaixaIni.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
       End;
       FrmCaixaIni.Refresh;
   End
   Else Begin
       //LIBERA TODAS OS ESTADOS PARA CONSUTA
       filtraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', '', ' COD_LOJA ='+#39+FMenu.LCODLOJA.Caption+#39+' ORDER BY DESCRICAO');

       If AbrirForm(TFCadCaixa, FCadCaixa, 1)='Selected'
       Then Begin
           XCaixaIni:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
           FrmCaixaIni.EdDescricao.Text:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
           FrmCaixaIni.EDCodigo.text:=DMCAIXA.TCaixa.FieldByName('NUMCAIXA').AsString;
        FrmCaixaIni.Repaint;
       End;
   End;

end;

procedure TFRelCaixa.FrmCaixaIniEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
       // se for pra relatorio de credito
       If FMenu.TIPOREL = 'RELCREDITO'
       Then begin
           If FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_INTERNO',FrmCaixaIni.EDCodigo.Text,'')=TRUE
           Then Begin
               FrmCaixaIni.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
               FrmCaixaFim.EDCodigo.SetFocus;
           End
           Else begin
               FrmCaixaIni.EdDescricao.Text := '';
           End;
       End
       Else Begin
           If FrmCaixaIni.EDCodigo.Text<>''
           Then Begin
              If FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', '', ' (COD_CAIXA = '+#39+FrmCaixaIni.EDCodigo.Text+#39+') AND (COD_LOJA ='+#39+FMenu.LCODLOJA.Caption+#39+') ORDER BY DESCRICAO')=True
              Then Begin //Slecionou o registro procurado
                   XCaixaIni:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
                   FrmCaixaIni.EDCodigo.text:=DMCAIXA.TCaixa.FieldByName('NUMCAIXA').AsString;
                   FrmCaixaIni.EdDescricao.Text:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
              End
              Else Begin
                   XCaixaIni:='';
                   FrmCaixaIni.EDCodigo.text:='';
                   FrmCaixaIni.EdDescricao.Text:='';
              End;
           End
           Else Begin
               XCaixaIni:='';
               FrmCaixaIni.EDCodigo.text:='';
               FrmCaixaIni.EdDescricao.Text:='';
           End;
       End;
   End;
   FrmCaixaIni.Repaint;
end;
procedure TFRelCaixa.FrmCaixaFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XCaixaFim:='';
   FrmCaixaFim.EDCodigo.Text:='';
   FrmCaixaFim.EdDescricao.Text:='';
   FrmCaixaFim.Repaint;   
end;

procedure TFRelCaixa.FrmCaixaFimBTNOPENClick(Sender: TObject);
begin
  inherited;
   // se for pra relatorio de credito
   If FMenu.TIPOREL = 'RELCREDITO'
   Then begin
       If AbrirForm(TFCliente,FCliente,1)='Selected'
       Then Begin
           FrmCaixaFim.EDCodigo.Text := DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FrmCaixaFim.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
       End;
       FrmCaixaFim.Refresh;
   End
   Else Begin
       //LIBERA TODAS OS ESTADOS PARA CONSUTA
       filtraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', '', ' COD_LOJA ='+#39+FMenu.LCODLOJA.Caption+#39+' ORDER BY DESCRICAO');

       If AbrirForm(TFCadCaixa, FCadCaixa, 1)='Selected'
       Then Begin
           XCaixaFim:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
           FrmCaixaFim.EdDescricao.Text:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
           FrmCaixaFim.EDCodigo.text:=DMCAIXA.TCaixa.FieldByName('NUMCAIXA').AsString;
        FrmCaixaFim.Repaint;
       End;
   End;
end;
procedure TFRelCaixa.FrmCaixaFimEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
       // se for pra relatorio de credito
       If FMenu.TIPOREL = 'RELCREDITO'
       Then begin
           If FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_INTERNO',FrmCaixaFim.EDCodigo.Text,'')=TRUE
           Then Begin
               FrmCaixaFim.EdDescricao.Text := DMPESSOA.WCliente.FieldByName('NOME').AsString;
               BtnVisualizar.SetFocus;
           End
           Else begin
               FrmCaixaFim.EdDescricao.Text := '';
           End;
       End
       Else Begin
           If FrmCaixaFim.EDCodigo.Text<>''
           Then Begin
              If FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', '', ' (COD_CAIXA = '+#39+FrmCaixaFim.EDCodigo.Text+#39+') AND (COD_LOJA ='+#39+FMenu.LCODLOJA.Caption+#39+') ORDER BY DESCRICAO')=True
              Then Begin //Slecionou o registro procurado
                   XCaixaFim:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
                   FrmCaixaFim.EDCodigo.text:=DMCAIXA.TCaixa.FieldByName('NUMCAIXA').AsString;
                   FrmCaixaFim.EdDescricao.Text:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
              End
              Else Begin
                   XCaixaFim:='';
                   FrmCaixaFim.EDCodigo.text:='';
                   FrmCaixaFim.EdDescricao.Text:='';
              End;
           End
           Else Begin
               XCaixaFim:='';
               FrmCaixaFim.EDCodigo.text:='';
               FrmCaixaFim.EdDescricao.Text:='';
           End;
       End;
   End;
   FrmCaixaFim.Repaint;
end;
procedure TFRelCaixa.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   If FMenu.TIPOREL = 'RELCREDITO'
   Then Begin
       // relatorio de credito de cliente
       RelCreditoCliente;
   End;
   if FMenu.TIPOREL = 'POSFINANC'
   then begin
      //relatório de posição financeira
      PComunica.Visible:=true;
      PComunica.BringToFront;
      PComunica.Repaint;
      RelPosFinanc;
   end;
   if FMenu.TIPOREL = 'RELRECDESP'
   then begin
        PComunica.Visible:=true;
        PComunica.BringToFront;
        PComunica.Repaint;
        RelRecDesp;
   end
   Else Begin
       PrepareImp;
   End
end;

procedure TFRelCaixa.BtnImprimirClick(Sender: TObject);
begin
  inherited;
   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfFluxoCaixa.frf');
end;

procedure TFRelCaixa.FrmContaBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //Codigo da tabela local =0
   XConta:=-1;
   FrmConta.EDCodigo.Text:='';
   FrmConta.EdDescricao.Text:='';
   FrmConta.Repaint;   
end;

procedure TFRelCaixa.FrmContaBTNOPENClick(Sender: TObject);
begin
  inherited;
	//LIBERA TODAS OS ESTADOS PARA CONSUTA
	filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') ORDER BY CLASSIFICACAO');

   // armazena o tipo do plano de conta que vai ser filtrado. Se for "C" buscará apenas contas de creditos, e se for "D" irá selecionar apenas contas de despesa. Estando sem valor, o formulario vai trazer todas as contas
   XTIPO_CONTA := '';

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected'
   Then Begin
      	XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   End;
   FrmConta.Repaint;
end;

procedure TFRelCaixa.FrmContaEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	If Key = #13
   Then Begin
 		If FrmConta.EDCodigo.Text<>''
       Then Begin
			//LIBERA TODAS OS ESTADOS PARA CONSUTA
			If filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'COD_FILIAL', '', ' (COD_FILIAL = '+FMenu.LCODEMPRESA.Caption+') AND (TIPO='+#39+'N'+#39+') And (CLASSIFICACAO='+#39+FrmConta.EDCodigo.Text+#39+ ')')=True
			Then Begin
		      	XConta:=DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
		      	FrmConta.EdDescricao.Text:=DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
		      	FrmConta.EDCodigo.text:=DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
	        End
	        Else Begin
		      	XConta:=-1;
		      	FrmConta.EdDescricao.Text:='';
		      	FrmConta.EDCodigo.text:='';
           End;
	    End
       Else Begin
	      	XConta:=0;
	      	FrmConta.EdDescricao.Text:='';
	      	FrmConta.EDCodigo.text:='';
       End;
   End;
   FrmConta.Repaint;
end;

//busca caixa inicial
procedure TFRelCaixa.FBCaixaIniBTNOPENClick(Sender: TObject);
begin
  inherited;
       FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', '', ' COD_LOJA ='+#39+FMenu.LCODLOJA.Caption+#39+' ORDER BY DESCRICAO');

       If AbrirForm(TFCadCaixa, FCadCaixa, 1)='Selected'
       Then Begin
           FBCaixaIni.EdDescricao.Text:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
           FBCaixaIni.EDCodigo.text:=DMCAIXA.TCaixa.FieldByName('COD_CAIXA').AsString;
           FBCaixaIni.Repaint;
       end;             
end;

procedure TFRelCaixa.FBCaixaIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
    //limpa form de busca de caixa inicial
    FBCaixaIni.EDCodigo.Text:='';
    FBCaixaIni.EdDescricao.Text:='';
    FBCaixaIni.Repaint;
end;

//busca caixa final
procedure TFRelCaixa.FBCaixaFimBTNOPENClick(Sender: TObject);
begin
  inherited;
       FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', '', ' COD_LOJA ='+#39+FMenu.LCODLOJA.Caption+#39+' ORDER BY DESCRICAO');

       If AbrirForm(TFCadCaixa, FCadCaixa, 1)='Selected'
       Then Begin
           FBCaixaFim.EdDescricao.Text:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
           FBCaixaFim.EDCodigo.text:=DMCAIXA.TCaixa.FieldByName('COD_CAIXA').AsString;
           FBCaixaFim.Repaint;
       End;
end;

procedure TFRelCaixa.FBCaixaFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
    //limpa form de busca de caixa final
    FBCaixaFim.EDCodigo.Text:='';
    FBCaixaFim.EdDescricao.Text:='';
end;

//seleciona conta corrente inicial
procedure TFRelCaixa.FBCCIniBTNOPENClick(Sender: TObject);
begin
  inherited;
       //FiltraTabela(DMBANCO.WCtaCor, 'CTACOR', 'NUMCTACOR', '', ' NUMCTACOR <>'+#39+''+#39+'');

       If AbrirForm(TFCadCtaCor, FCadCtaCor, 1)='Selected'
       Then Begin
           FBCCIni.EdDescricao.Text:=DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
           FBCCIni.EDCodigo.text:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
           FBCCIni.Repaint;
       End;

end;

procedure TFRelCaixa.FBCCIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
  //limpa campos do form de busca de conta corrente inicial
  FBCCIni.EdDescricao.Text:='';
  FBCCIni.EDCodigo.Text:='';

end;

//seleciona conta corrente final 
procedure TFRelCaixa.FBCCFimBTNOPENClick(Sender: TObject);
begin
  inherited;
       //FiltraTabela(DMBANCO.WCtaCor, 'CTACOR', 'NUMCTACOR', '', ' NUMCTACOR <>'+#39+''+#39+'');

       If AbrirForm(TFCadCtaCor, FCadCtaCor, 1)='Selected'
       Then Begin
           FBCCFim.EdDescricao.Text:=DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
           FBCCFim.EDCodigo.text:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
           FBCCFim.Repaint;
       End;

end;

procedure TFRelCaixa.FBCCFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
  //limpa campos do form de busca de conta corrente final
  FBCCFim.EdDescricao.Text:='';
  FBCCFim.EDCodigo.Text:='';
end;

//busca caixa final pelo código
procedure TFRelCaixa.FBCaixaIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 //pressionando o codigo do caixa e pressionando enter
  then begin
       if FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FBCaixaIni.EDCodigo.Text, '') = True
       then begin //se achou algum registro com esse código, joga os dados do registro nas edits
            FBCaixaIni.EdDescricao.Text:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
            FBCaixaIni.EDCodigo.text:=DMCAIXA.TCaixa.FieldByName('COD_CAIXA').AsString;
            FBCaixaIni.Repaint;
       end
       else begin //se não achou registro, limpa os campos
            FBCaixaIni.EdDescricao.Text:='';
            FBCaixaIni.EDCodigo.text:='';
            FBCaixaIni.Repaint;
       end;
  end;
end;

//busca caixa final pelo código
procedure TFRelCaixa.FBCaixaFimEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 13 //pressionando o codigo do caixa e pressionando enter
  then begin
       if FiltraTabela(DMCAIXA.TCaixa, 'CAIXA', 'COD_CAIXA', FBCaixaFim.EDCodigo.Text, '') = True
       then begin //se achou algum registro com esse código, joga os dados do registro nas edits
            FBCaixaFim.EdDescricao.Text:=DMCAIXA.TCaixa.FieldByName('DESCRICAO').AsString;
            FBCaixaFim.EDCodigo.text:=DMCAIXA.TCaixa.FieldByName('COD_CAIXA').AsString;
            FBCaixaFim.Repaint;
       end
       else begin //se não achou registro, limpa os campos
            FBCaixaFim.EdDescricao.Text:='';
            FBCaixaFim.EDCodigo.text:='';
            FBCaixaFim.Repaint;
       end;
  end;
end;

//busca conta corrente inicial pelo código
procedure TFRelCaixa.FBCCIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 { if key = 13 //pressionando o codigo do caixa e pressionando enter
  then begin
       if FiltraTabela(DMBANCO.WCtaCor, 'CTACOR', 'COD_CTACOR', FBCCIni.EDCodigo.Text, '') = True
       then begin //se achou algum registro com esse código, joga os dados do registro nas edits
            FBCCIni.EdDescricao.Text:=DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
            FBCCIni.EDCodigo.text:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
            FBCCIni.Repaint;
       end
       else begin //se não achou registro, limpa os campos
            FBCCIni.EdDescricao.Text:='';
            FBCCIni.EDCodigo.Text:='';
            FBCCIni.Repaint;
       end;
  end;}
end;

//busca conta corrente final pelo código
procedure TFRelCaixa.FBCCFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
{  if key = 13 //pressionando o codigo do caixa e pressionando enter
  then begin
       if FiltraTabela(DMBANCO.WCtaCor, 'CTACOR', 'COD_CTACOR', FBCCFim.EDCodigo.Text, '') = True
       then begin //se achou algum registro com esse código, joga os dados do registro nas edits
            FBCCFim.EdDescricao.Text:=DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
            FBCCFim.EDCodigo.text:=DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsString;
            FBCCFim.Repaint;
       end
       else begin //se não achou registro, limpa os campos
            FBCCFim.EdDescricao.Text:='';
            FBCCFim.EDCodigo.Text:='';
            FBCCFim.Repaint;
       end;
  end;}
end;

//filtra equipamentos
procedure TFRelCaixa.FiltraPlnCtaEquip;
begin
     DMPESSOA.TALX.Close;
     DMPESSOA.TALX.SQL.Clear;
     DMPESSOA.TALX.SQL.Add('select equipamento.cod_plncta, equipamento.descricao, equipamento.placa, equipamento.cod_equipamento,');
     DMPESSOA.TALX.SQL.Add('equipamento.cod_motorista, funcionario.cod_func, pessoa.nome, plncta.classificacao');
     DMPESSOA.TALX.SQL.Add('from equipamento');
     DMPESSOA.TALX.SQL.Add('left join funcionario on equipamento.cod_motorista = funcionario.cod_func');
     DMPESSOA.TALX.SQL.Add('left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa');
     DMPESSOA.TALX.SQL.Add('left join plncta on equipamento.cod_plncta = plncta.cod_plncta');
     DMPESSOA.TALX.SQL.Add('where equipamento.descricao <> '+#39+''+#39+'');
     if (FBEquipIni.EDCodigo.Text <> '') and (FBEquipFim.EDCodigo.Text <> '') // intervalo entre equipamentos
     then begin
          DMPESSOA.TALX.SQL.Add('and equipamento.cod_equipamento >= :EQINI');
          DMPESSOA.TALX.SQL.Add('and equipamento.cod_equipamento <= :EQFIM');
          DMPESSOA.TALX.ParamByName('EQINI').AsString:=FBEquipIni.EDCodigo.Text;
          DMPESSOA.TALX.ParamByName('EQFIM').AsString:=FBEquipFim.EDCodigo.Text;
     end;
     DMPESSOA.TALX.Open;
     DMPESSOA.TALX.First;
end;

//filtra parcelas pagas das contas do equipamento filtrado
procedure TFRelCaixa.FiltraParcPag;
begin
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add('select ctapagar.cod_fornec, ctapagar.cod_plncta, parcelacp.valorpg, parcelacp.dtdebito, parcelacp.numparc,');
    DMESTOQUE.Alx.SQL.Add('plncta.classificacao, plncta.descricao, fornecedor.cod_pessoa, pessoa.nome, parcelacp.fech');
    DMESTOQUE.Alx.SQL.Add('from parcelacp');
    DMESTOQUE.Alx.SQL.Add('left join ctapagar on parcelacp.cod_ctapagar = ctapagar.cod_ctapagar');
    DMESTOQUE.Alx.SQL.Add('left join plncta on ctapagar.cod_plncta = plncta.cod_plncta');
    DMESTOQUE.Alx.SQL.Add('left join fornecedor on ctapagar.cod_fornec = fornecedor.cod_fornec');
    DMESTOQUE.Alx.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
    DMESTOQUE.Alx.SQL.Add('where (upper(plncta.classificacao) like upper('+#39+DMPESSOA.TALX.fieldByName('CLASSIFICACAO').AsString+'%'+#39+'))');
    DMESTOQUE.Alx.SQL.Add('and parcelacp.fech = :FECH');
    if (FBFornecIni.EdDescricao.Text <> '') and (FBFornecFim.EdDescricao.Text <> '') //intervalo entre fornecedores
    then begin
         DMESTOQUE.Alx.SQL.Add('and pessoa.nome >= :PESINI');
         DMESTOQUE.Alx.SQL.Add('and pessoa.nome <= :PESFIM');
         DMESTOQUE.Alx.ParamByName('PESINI').AsString:= FBFornecIni.EdDescricao.Text;
         DMESTOQUE.Alx.ParamByName('PESFIM').AsString:= FBFornecFim.EdDescricao.Text;
    end;
    if  (EDIni.Text <> '  /  /    ') and (EDFim.Text <> '  /  /    ') //intervalo entre datas
    then begin
         DMESTOQUE.Alx.SQL.Add('and ctapagar.dtlanc >= :DATAINI');
         DMESTOQUE.Alx.SQL.Add('and ctapagar.dtlanc <= :DATAFIM');
         DMESTOQUE.Alx.ParamByName('DATAINI').AsString:= EDIni.Text;
         DMESTOQUE.Alx.ParamByName('DATAFIM').AsString:= EDFim.Text;
    end;
    DMESTOQUE.Alx.ParamByName('FECH').AsString:='S';
    DMESTOQUE.Alx.SQL.Add('order by plncta.classificacao');
    DMESTOQUE.Alx.Open;
    DMESTOQUE.Alx.First;
end;

//filtra parcelas recebidas das contas do equipamento filtrado
procedure TFRelCaixa.FiltraParcRec;
begin
    DMPESSOA.TALX1.Close;
    DMPESSOA.TALX1.SQL.Clear;
    DMPESSOA.TALX1.SQL.Add('select ordem.cod_ordem, ordem.status, ordem.cod_equipamento, ordem.cod_cliente, cliente.cod_pessoa, pessoa.nome,');
    DMPESSOA.TALX1.SQL.Add('ordem.dtabert, itens_locacao.data, itens_locacao.hmat_fim, itens_locacao.hmat_ini, itens_locacao.hvesp_fim, itens_locacao.valortothrs,');
    DMPESSOA.TALX1.SQL.Add('itens_locacao.hvesp_ini, itens_locacao.total_horas, equipamento.placa, itens_locacao.valortotkm, ordem.totajudante, ordem.numero, ordem.totord');
    DMPESSOA.TALX1.SQL.Add('from ordem');
    DMPESSOA.TALX1.SQL.Add('left join cliente on ordem.cod_cliente = cliente.cod_cliente');
    DMPESSOA.TALX1.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
    DMPESSOA.TALX1.SQL.Add('left join itens_locacao on ordem.cod_ordem = itens_locacao.cod_ordem');
    DMPESSOA.TALX1.SQL.Add('left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento');
    DMPESSOA.TALX1.SQL.Add('where ordem.status = :STATUS');
    DMPESSOA.TALX1.SQL.Add('and ordem.cod_equipamento = :EQUIPAMENTO');
    if (FBFornecIni.EdDescricao.Text <> '') and (FBFornecFim.EdDescricao.Text <> '') //intervalo entre clientes
    then begin
         FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'NOME', '', '(pessoa.nome >='+#39+FBFornecIni.EdDescricao.Text+#39+') and (pessoa.nome <='+#39+FBFornecFim.EdDescricao.Text+#39+')order by pessoa.nome');
         DMPESSOA.TPessoa.First;
         DMPESSOA.TALX1.SQL.Add('and pessoa.nome >= :PESINI');
         DMPESSOA.TALX1.SQL.Add('and pessoa.nome <= :PESFIM');
         DMPESSOA.TALX1.ParamByName('PESINI').AsString:= FBFornecIni.EdDescricao.Text;
         DMPESSOA.TALX1.ParamByName('PESFIM').AsString:= FBFornecFim.EdDescricao.Text;
    end;
    if  (EDIni.Text <> '  /  /    ') and (EDFim.Text <> '  /  /    ') //intervalo entre datas
    then begin
         DMPESSOA.TALX1.SQL.Add('and itens_locacao.data >= :DATAINI');
         DMPESSOA.TALX1.SQL.Add('and itens_locacao.data <= :DATAFIM');
         DMPESSOA.TALX1.ParamByName('DATAINI').AsString:= EDIni.Text;
         DMPESSOA.TALX1.ParamByName('DATAFIM').AsString:= EDFim.Text;
    end;
    DMPESSOA.TALX1.ParamByName('STATUS').AsString:='FECHADO';
    DMPESSOA.TALX1.ParamByName('EQUIPAMENTO').AsString:=DMPESSOA.TALX.FieldByName('COD_EQUIPAMENTO').AsString;
    DMPESSOA.TALX1.Open;
    DMPESSOA.TALX1.First;
end;

//gera o relatório analitico de receitas
procedure TFRelCaixa.RelRecAna;
begin
    DMCAIXA.TRel.Close;
    DMCAIXA.TRel.SQL.Clear;
    DMCAIXA.TRel.SQL.Add('select ordem.cod_ordem, ordem.status, ordem.cod_equipamento, ordem.cod_cliente, cliente.cod_pessoa, pessoa.nome,');
    DMCAIXA.TRel.SQL.Add('ordem.dtabert, itens_locacao.data, itens_locacao.hmat_fim, itens_locacao.hmat_ini, itens_locacao.hvesp_fim, itens_locacao.valortothrs, equipamento.cod_equipamento,');
    DMCAIXA.TRel.SQL.Add('itens_locacao.hvesp_ini, itens_locacao.total_horas, equipamento.placa, itens_locacao.valortotkm, ordem.totajudante, ordem.numero, ordem.totord');
    DMCAIXA.TRel.SQL.Add('from ordem');
    DMCAIXA.TRel.SQL.Add('left join cliente on ordem.cod_cliente = cliente.cod_cliente');
    DMCAIXA.TRel.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
    DMCAIXA.TRel.SQL.Add('left join itens_locacao on ordem.cod_ordem = itens_locacao.cod_ordem');
    DMCAIXA.TRel.SQL.Add('left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento');
    DMCAIXA.TRel.SQL.Add('where ordem.status = :STATUS');
    if (FBFornecIni.EdDescricao.Text <> '') and (FBFornecFim.EdDescricao.Text <> '') //intervalo entre clientes
    then begin
         FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'NOME', '', '(pessoa.nome >='+#39+FBFornecIni.EdDescricao.Text+#39+') and (pessoa.nome <='+#39+FBFornecFim.EdDescricao.Text+#39+')order by pessoa.nome');
         DMPESSOA.TPessoa.First;
         DMCAIXA.TRel.SQL.Add('and pessoa.nome >= :PESINI');
         DMCAIXA.TRel.SQL.Add('and pessoa.nome <= :PESFIM');
         DMCAIXA.TRel.ParamByName('PESINI').AsString:= FBFornecIni.EdDescricao.Text;
         DMCAIXA.TRel.ParamByName('PESFIM').AsString:= FBFornecFim.EdDescricao.Text;
    end;
    if  (EDIni.Text <> '  /  /    ') and (EDFim.Text <> '  /  /    ') //intervalo entre datas
    then begin
         DMCAIXA.TRel.SQL.Add('and itens_locacao.data >= :DATAINI');
         DMCAIXA.TRel.SQL.Add('and itens_locacao.data <= :DATAFIM');
         DMCAIXA.TRel.ParamByName('DATAINI').AsString:= EDIni.Text;
         DMCAIXA.TRel.ParamByName('DATAFIM').AsString:= EDFim.Text;
    end;
    if (FBEquipIni.EDCodigo.Text <> '') and (FBEquipFim.EDCodigo.Text <> '') // intervalo entre equipamentos
    then begin
         DMCAIXA.TRel.SQL.Add('and equipamento.cod_equipamento >= :EQINI');
         DMCAIXA.TRel.SQL.Add('and equipamento.cod_equipamento <= :EQFIM');
         DMCAIXA.TRel.ParamByName('EQINI').AsString:=FBEquipIni.EDCodigo.Text;
         DMCAIXA.TRel.ParamByName('EQFIM').AsString:=FBEquipFim.EDCodigo.Text;
    end;
    DMCAIXA.TRel.ParamByName('STATUS').AsString:='FECHADO';
    DMCAIXA.TRel.SQL.Add('order by equipamento.placa, pessoa.nome, ordem.cod_ordem');
    DMCAIXA.TRel.Open;
    DMCAIXA.TRel.First;
end;


//gera relatórios de receitas e despesas por equipamento para MUKMAQ
procedure TFRelCaixa.RelRecDesp;
begin
xindice:=0;
xvlrplncta:=0;

   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:='Serviços/Relatórios/Receitas e Despesas';
   DMMACS.TLoja.FieldByName('TMP2').AsString:='Intervalo: '+EdDtIni.Text+ ' - ' +EdDtFim.Text;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;

     LimpaTMP; //limpa tabela temporária
     xvlr:=0;
     FiltraPlnCtaEquip; //filtra equipamentos

     if RGRecDesp.ItemIndex = 1 //se for relatórios de despesa
     then begin

         while not DMPESSOA.TALX.Eof do
         begin

              FiltraParcPag; // filtra as parcelas do equipamento
              xvlr:=0;

              if RGTipoRel.ItemIndex = 1 //se for o relatório analítico
              then begin
                   //se encontrou contas baixadas relacionadas a este veículo
                   IF NOT DMESTOQUE.Alx.IsEmpty
                   then begin

                       Linha; // insere linha em branco
                                       
                       DMMACS.TMP.Insert;
                       DMMACS.TMP.FieldByName('DESC2').AsString:=DMPESSOA.TALX.fieldByName('PLACA').AsString;
                       DMMACS.TMP.FieldByName('DESC1').AsString:=DMPESSOA.TALX.fieldByName('NOME').AsString;
                       DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
                       xindice:=xindice+1;
                       DMMACS.TMP.Post;
                       DMMACS.Transaction.CommitRetaining;

                       Linha; // insere linha em branco

                       while not DMESTOQUE.Alx.Eof do
                       begin
                            DMMACS.TMP.Insert;
                            DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.Alx.fieldByName('NOME').AsString;
                            DMMACS.TMP.FieldByName('DESC3').AsString:=DMESTOQUE.Alx.fieldByName('DESCRICAO').AsString;
                            DMMACS.TMP.FieldByName('DESC2').AsString:=DMESTOQUE.Alx.fieldByName('NUMPARC').AsString;
                            DMMACS.TMP.FieldByName('DATA1').AsString:=DMESTOQUE.Alx.fieldByName('DTDEBITO').AsString;
                            DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMESTOQUE.Alx.fieldByName('VALORPG').AsCurrency;
                            DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
                            xvlr:=xvlr+DMESTOQUE.Alx.fieldByName('VALORPG').AsCurrency;
                            xindice:=xindice+1;
                            DMMACS.TMP.Post;
                            DMMACS.Transaction.CommitRetaining;
                            DMESTOQUE.Alx.Next;
                       end;

                      Linha; // insere linha em branco

                      DMMACS.TMP.Insert;
                      DMMACS.TMP.FieldByName('VLR2').AsCurrency:=xvlr;
                      DMMACS.TMP.FieldByName('DESC1').AsString:='Total do veículo:';
                      DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
                      xindice:=xindice+1;
                      xvlrplncta:=xvlrplncta+xvlr;
                      DMMACS.TMP.Post;
                      DMMACS.Transaction.CommitRetaining;

                      Linha; // insere linha em branco
                   end;
             end;

             if RGTipoRel.ItemIndex = 0 //se for o relatório sintético
             then begin
                  //se encontrou contas baixadas relacionadas a este veículo
                  if NOT DMESTOQUE.Alx.IsEmpty
                  then begin
                       while not DMESTOQUE.Alx.Eof do
                       begin
                            xvlr:=xvlr+DMESTOQUE.Alx.fieldByName('VALORPG').AsCurrency;
                            DMESTOQUE.Alx.Next;
                       end;

                       DMMACS.TMP.Insert;
                       DMMACS.TMP.FieldByName('VLR1').AsCurrency:= xvlr;
                       DMMACS.TMP.FieldByName('DESC2').AsString:= DMPESSOA.TALX.fieldByName('PLACA').AsString;
                       DMMACS.TMP.FieldByName('DESC1').AsString:= DMPESSOA.TALX.fieldByName('NOME').AsString;
                       DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
                       xindice:=xindice+1;
                       xvlrplncta:=xvlrplncta+xvlr;
                       DMMACS.TMP.Post;
                       DMMACS.Transaction.CommitRetaining;
                  end;
             end;

             DMPESSOA.TALX.Next;
             Linha; // insere linha em branco
         end;

         DMMACS.TMP.Insert;
         DMMACS.TMP.FieldByName('VLR4').AsCurrency:= xvlrplncta;
         DMMACS.TMP.FieldByName('DESC3').AsString:= 'Despesas Totais:';
         DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
         xindice:=xindice+1;
         DMMACS.TMP.Post;
         DMMACS.Transaction.CommitRetaining;

     end;
     if RGRecDesp.ItemIndex = 0 //se for relatórios de receita
     then begin
     
         while not DMPESSOA.TALX.Eof do
             begin

                  FiltraParcRec; // filtra as O.S. do equipamento
                  xvlr:=0;
                  
                  if RGTipoRel.ItemIndex = 1 //se for o relatório analítico
                  then begin
                       RelRecAna;
                       FinalizaRel;
                       Exit;
                  end;

                  if RGTipoRel.ItemIndex = 0 //se for o relatório sintético
                  then begin
                       //se encontrou O.S relacionadas a este veículo
                       if NOT DMPESSOA.TALX1.IsEmpty
                       then begin
                            while not DMPESSOA.TALX1.Eof do
                            begin
                                xvlr:=xvlr+DMPESSOA.TALX1.fieldByName('TOTORD').AsCurrency;
                                DMPESSOA.TALX1.Next;
                            end;

                           DMMACS.TMP.Insert;
                           DMMACS.TMP.FieldByName('VLR1').AsCurrency:= xvlr;
                           DMMACS.TMP.FieldByName('DESC2').AsString:= DMPESSOA.TALX.fieldByName('PLACA').AsString;
                           DMMACS.TMP.FieldByName('DESC1').AsString:= DMPESSOA.TALX.fieldByName('NOME').AsString;
                           DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
                           xindice:=xindice+1;
                           xvlrplncta:=xvlrplncta+xvlr;
                           DMMACS.TMP.Post;
                           DMMACS.Transaction.CommitRetaining;
                       end;
                   end;

                 DMPESSOA.TALX.Next;
                 Linha; // insere linha em branco
              end;

             DMMACS.TMP.Insert;
             DMMACS.TMP.FieldByName('VLR4').AsCurrency:= xvlrplncta;
             DMMACS.TMP.FieldByName('DESC3').AsString:= 'Receitas Totais:';
             DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
             xindice:=xindice+1;
             DMMACS.TMP.Post;
             DMMACS.Transaction.CommitRetaining;

     end
     else begin //se for relatório comparativo entre receitas e despesas
         xvlrplncta:=0;
         xvlr:=0;
         while not DMPESSOA.TALX.Eof do
         begin


              FiltraParcRec; //filtra o.s. recebidas

              if NOT DMPESSOA.TALX1.IsEmpty
              then begin
                   while not DMPESSOA.TALX1.Eof do
                   begin
                        xvlr:=xvlr+DMPESSOA.TALX1.fieldByName('TOTORD').AsCurrency;
                        DMPESSOA.TALX1.Next;
                   end;
              end;

              FiltraParcPag; //filtra parcelas pagas

              if NOT DMESTOQUE.Alx.IsEmpty
              then begin
                   while not DMESTOQUE.Alx.Eof do
                   begin
                        xvlrplncta:=xvlrplncta+DMESTOQUE.Alx.fieldByName('VALORPG').AsCurrency;
                        DMESTOQUE.Alx.Next;
                   end;
              end;

              DMMACS.TMP.Insert;
              DMMACS.TMP.FieldByName('VLR1').AsCurrency:= xvlrplncta;
              DMMACS.TMP.FieldByName('DESC3').AsString:= DMPESSOA.TALX.fieldByName('NOME').AsString;
              DMMACS.TMP.FieldByName('DESC1').AsString:= DMPESSOA.TALX.fieldByName('PLACA').AsString;
              DMMACS.TMP.FieldByName('VLR2').AsCurrency:= xvlr;
              DMMACS.TMP.FieldByName('VLR3').AsCurrency:= xvlr-xvlrplncta;
              DMMACS.TMP.FieldByName('INT1').AsInteger:=xindice;
              xindice:=xindice+1;
              xvlrplncta:=xvlrplncta+xvlr;
              DMMACS.TMP.Post;
              DMMACS.Transaction.CommitRetaining;

              DMPESSOA.TALX.Next;
              Linha; // insere linha em branco
              xvlr:=0;
              xvlrplncta:=0;
         end;
     end;
          FinalizaRel;

end;

//finaliza as comparações e gera relatórios de receitas e despesas
procedure TFRelCaixa.FinalizaRel;
begin
     //se for relatório de receita e for analítico
     if (RGRecDesp.ItemIndex = 0) and (RGTipoRel.ItemIndex = 1)
     then begin
          FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRecAna.frf');
          FSRel.ShowReport;
     end
     else begin  
         DMCAIXA.TRel.Close;
         DMCAIXA.TRel.SQL.Clear;
         DMCAIXA.TRel.SQL.Add('select * from TMP');
         DMCAIXA.TRel.SQL.Add('order by tmp.int1');
         DMCAIXA.TRel.SQL.Text;
         DMCAIXA.TRel.Open;

         //se for relatório de receita e for sintético
         if (RGRecDesp.ItemIndex = 0) and (RGTipoRel.ItemIndex = 0)
         then begin
              FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRecSint.frf');
              FSRel.ShowReport;
         end;
         //se for relatório de despesa e for sintético
         if (RGRecDesp.ItemIndex = 1) and (RGTipoRel.ItemIndex = 0)
         then begin
              FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfDespSint.frf');
              FSRel.ShowReport;
         end;
         //se for relatório de despesa e for analítico
         if (RGRecDesp.ItemIndex = 1) and (RGTipoRel.ItemIndex = 1)
         then begin
              FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfDespAna.frf');
              FSRel.ShowReport;
         end;
         //se for relatório comparativo entre receitas e despesas
         if RGRecDesp.ItemIndex = 2
         then begin
              FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRecDesp.frf');
              FSRel.ShowReport;
         end;
     end;

     PComunica.Visible:=false;
     PComunica.SendToBack;

end;


procedure TFRelCaixa.RGRecDespClick(Sender: TObject);
begin
  inherited;
  //se for escolhido relatório q confronta receitas e despesas não pode ser selecionado sintético ou analítico
  if RGRecDesp.ItemIndex = 2
  then begin
       RGTipoRel.Enabled := false;
       FBFornecIni.Visible:=false;
       FBFornecFim.Visible:=false;
  end
  else begin
       RGTipoRel.Enabled := true;
       FBFornecIni.Visible:=true;
       FBFornecFim.Visible:=true;
  end;
  //se for receitas form de buscas são de cliente, se for despesas form de busca para fornecedor
  if RGRecDesp.ItemIndex = 0
  then begin
       FBFornecIni.LTextoBusca.Caption := 'Cliente Inicial:';
       FBFornecFim.LTextoBusca.Caption := 'Cliente Final:';
  end
  else begin
       FBFornecIni.LTextoBusca.Caption := 'Fornecedor Inicial:';
       FBFornecFim.LTextoBusca.Caption := 'Fornecedor Final:';
  end;

end;

procedure TFRelCaixa.FBEquipIniBTNOPENClick(Sender: TObject);
begin
  inherited;
//  FBEquipIni.BTNOPENClick(Sender);
       If AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected'
       Then Begin
           FBEquipIni.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
           FBEquipIni.EDCodigo.text:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsString;
           FBEquipIni.Repaint;
       End;
end;

procedure TFRelCaixa.FBEquipFimBTNOPENClick(Sender: TObject);
begin
  inherited;
//  FBEquipFim.BTNOPENClick(Sender);
       If AbrirForm(TFCadEquipamento, FCadEquipamento, 1)='Selected'
       Then Begin
           FBEquipFim.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
           FBEquipFim.EDCodigo.text:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsString;
           FBEquipFim.Repaint;
       End;
end;

procedure TFRelCaixa.FBFornecIniBTNOPENClick(Sender: TObject);
begin
  inherited;
 // FBFornecIni.BTNOPENClick(Sender);
    if (RGRecDesp.ItemIndex = 0) //SE FOR RECEITA
    then begin
       If AbrirForm(TFCliente, FCliente, 1)='Selected'
       Then Begin
           FBFornecIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           FBFornecIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FBFornecIni.Repaint;
       End;
    end
    else begin
       If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
       Then Begin
           FBFornecIni.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
           FBFornecIni.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
           FBFornecIni.Repaint;
       End;
    end;
end;

procedure TFRelCaixa.FBFornecFimBTNOPENClick(Sender: TObject);
begin
  inherited;
 // FBFornecFim.BTNOPENClick(Sender);
    if (RGRecDesp.ItemIndex = 0) //SE FOR RECEITA
    then begin
       If AbrirForm(TFCliente, FCliente, 1)='Selected'
       Then Begin
           FBFornecFim.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
           FBFornecFim.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           FBFornecFim.Repaint;
       End;
    end
    else begin
       If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
       Then Begin
           FBFornecFim.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
           FBFornecFim.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
           FBFornecFim.Repaint;
       End;
    end;
end;

procedure TFRelCaixa.FBEquipIniBTNMINUSClick(Sender: TObject);
begin
 // inherited;
  FBEquipIni.EDCodigo.Text:='';
  FBEquipIni.EdDescricao.Text:='';

end;

procedure TFRelCaixa.FBEquipFimBTNMINUSClick(Sender: TObject);
begin
 // inherited;
  FBEquipFim.EDCodigo.Text:='';
  FBEquipFim.EdDescricao.Text:='';

end;

procedure TFRelCaixa.FBFornecIniBTNMINUSClick(Sender: TObject);
begin
  //inherited;
  FBFornecIni.EDCodigo.Text:='';
  FBFornecIni.EdDescricao.Text:='';

end;

procedure TFRelCaixa.FBFornecFimBTNMINUSClick(Sender: TObject);
begin
 // inherited;
  FBFornecFim.EDCodigo.Text:='';
  FBFornecFim.EdDescricao.Text:='';

end;

procedure TFRelCaixa.FBEquipIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //inherited;

  if key = 13
  then begin
       If FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'cod_equipamento', FBEquipFim.EDCodigo.Text, '') = true
       Then Begin
           FBEquipFim.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
           FBEquipFim.EDCodigo.text:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsString;
           FBEquipFim.Repaint;
       End
       else begin
          FBEquipFim.EDCodigo.Text:='';
          FBEquipFim.EdDescricao.Text:='';
       end;
  end;
end;




procedure TFRelCaixa.FBEquipFimEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if key = 13
    then begin
       If FiltraTabela(DMPESSOA.TEquip, 'EQUIPAMENTO', 'cod_equipamento', FBEquipIni.EDCodigo.Text, '') = true
       Then Begin
           FBEquipIni.EdDescricao.Text:=DMPESSOA.TEquip.FieldByName('DESCRICAO').AsString;
           FBEquipIni.EDCodigo.text:=DMPESSOA.TEquip.FieldByName('COD_EQUIPAMENTO').AsString;
           FBEquipIni.Repaint;
       End
       else begin
          FBEquipIni.EDCodigo.Text:='';
          FBEquipIni.EdDescricao.Text:='';
       end;
     end;
end;

procedure TFRelCaixa.FBFornecIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if (RGRecDesp.ItemIndex = 0) //SE FOR RECEITA BUSCA CLIENTE
    then begin
        if key = 13
        then begin
           If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'cod_interno', FBFornecIni.EDCodigo.Text, '') = true
           Then Begin
               FBFornecIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
               FBFornecIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
               FBFornecIni.Repaint;
           End
           else begin
              FBFornecIni.EDCodigo.Text:='';
              FBFornecIni.EdDescricao.Text:='';
           end;
         end;
        end
    else begin
        if key = 13
        then begin
           If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'cod_interno', FBFornecIni.EDCodigo.Text, '') = true
           Then Begin
               FBFornecIni.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
               FBFornecIni.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
               FBFornecIni.Repaint;
           End
           else begin
              FBFornecIni.EDCodigo.Text:='';
              FBFornecIni.EdDescricao.Text:='';
           end;
         end;
    end;
end;

procedure TFRelCaixa.FBFornecFimEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if (RGRecDesp.ItemIndex = 0) //SE FOR RECEITA BUSCA CLIENTE
    then begin
        if key = 13
        then begin
           If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'cod_interno', FBFornecFim.EDCodigo.Text, '') = true
           Then Begin
               FBFornecFim.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
               FBFornecFim.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
               FBFornecFim.Repaint;
           End
           else begin
              FBFornecFim.EDCodigo.Text:='';
              FBFornecFim.EdDescricao.Text:='';
           end;
         end;
        end
    else begin
        if key = 13
        then begin
           If FiltraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', 'cod_interno', FBFornecFim.EDCodigo.Text, '') = true
           Then Begin
               FBFornecFim.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
               FBFornecFim.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
               FBFornecFim.Repaint;
           End
           else begin
              FBFornecFim.EDCodigo.Text:='';
              FBFornecFim.EdDescricao.Text:='';
           end;
         end;
    end;
end;

END.

