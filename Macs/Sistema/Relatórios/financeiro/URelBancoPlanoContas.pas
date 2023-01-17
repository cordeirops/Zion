////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//****************************************************************************************************************************//
//** EDMAR - 19/12/2014 - TELA DE FILTRO PARA EMISSÃO DE RELATORIO A PEDIDO DA EMPRESA ZANETTE ENGENHARIA (SOLICITAÇÃO 278) **//
//****************************************************************************************************************************//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

unit URelBancoPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, StdCtrls,
  Buttons, ExtCtrls, frxClass, Mask, UFrmBusca, UDMFast, frxDBSet, StrUtils,
  Grids, DBGrids, IBQuery;

type
  TFRelBancoPlanoContas = class(TFPadraoRelatorio)
    frxRelatorio: TfrxReport;
    gbDatas: TGroupBox;
    edDtInicial: TMaskEdit;
    edDtFinal: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    gbCtaCor: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox9: TGroupBox;
    frmBuscaCtaCor: TFrmBusca;
    frmBuscaPlncta: TFrmBusca;
    rgTipoRel: TRadioGroup;
    cbEntradas: TCheckBox;
    cbSaidas: TCheckBox;
    dbSetCabecalho: TfrxDBDataset;
    dbSetInfo: TfrxDBDataset;
    gbPeriodo: TGroupBox;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    rbPeriodo: TRadioButton;
    rbData: TRadioButton;
    Label5: TLabel;
    dbProjParcelas: TfrxDBDataset;
    dbProjEstoque: TfrxDBDataset;
    RGTIPODT: TRadioGroup;
    procedure BtnVisualizarClick(Sender: TObject);
    procedure frmBuscaCtaCorBTNOPENClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure frmBuscaPlnctaBTNOPENClick(Sender: TObject);
    procedure frmBuscaCtaCorBTNMINUSClick(Sender: TObject);
    procedure frmBuscaPlnctaBTNMINUSClick(Sender: TObject);
    procedure frmBuscaCtaCorEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frmBuscaPlnctaEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function ValidaFiltros: Boolean;
    //Edmar - 07/01/2014 - Declara as procedures necessárias para gerar os relatórios correspondente
    procedure RelBancoPlanoConta;
    procedure RelControleSaida;
    procedure RelControleEntradas;
    procedure RelBalancoCredDeb;
    procedure RelCtaBancoPlanoConta;    
    //
    procedure InativaComponentes;
    procedure rbDataClick(Sender: TObject);
    procedure rbPeriodoClick(Sender: TObject);
    procedure BuscaPeriodos;
    procedure DBGrid1CellClick(Column: TColumn);
    function RetornaTotalizador(xClassificacao: String): String;
	 function VerificaTotalizadora(xTotalizador: String): Boolean;
    procedure AdicionaTmp(xTotalizadora: String; xBanco: String; xValor: Real; xOperacao: String);
    procedure BuscaValorAReceber;
    procedure AdicionaFiltrosBanco(xQuery: TIBQuery);
    procedure AdicionaFiltrosCta(xQuery: TIBQuery);
    procedure PreparaInfoTemporarias(xQuery: TIBQuery);
    procedure RemoveTMP;
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ProjecaoFutura;
    procedure AdicionaTmpTotalizadores(xTotalizadora: String; xClassificacaoPlncta: String; xBanco: String; xHistorico: String; xCobranca: String; xValor: Real; xOperacao: String; XDataVencimento: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
	FRelBancoPlanoContas: TFRelBancoPlanoContas;
	xCodCtaCor, xCodPlnCta, xCodTmp: Integer;
   
implementation

uses Alxor32, AlxMessage, UDmBanco, UCtaCor, DB, UDMConta, UConsPlncta,
  UMenu, UDMMacs, TFlatEditUnit, UDMEstoque, UPadrao, UMdo;

{$R *.dfm}

procedure TFRelBancoPlanoContas.FormActivate(Sender: TObject);
begin
  inherited;
 
	xCodPlnCta := -1;
   xCodCtaCor := -1;
   //Edmar - 06/01/2015 - Limpa os campos de filtro
   edDtInicial.Text := '';
   edDtFinal.Text := '';
   frmBuscaCtaCor.EDCodigo.Text := '';
   frmBuscaCtaCor.EdDescricao.Text := '';
   frmBuscaPlncta.EDCodigo.Text := '';
   frmBuscaPlncta.EdDescricao.Text := '';
   rgTipoRel.ItemIndex := 0;
   cbEntradas.Checked := False;
   cbSaidas.Checked := False;
   rbData.Checked := True;
   gbDatas.Visible := True;
   gbDatas.BringToFront;
   //
   InativaComponentes;
   BuscaPeriodos;
   xCodTmp := 0;
   
   //Emar - 16/01/2015 - Verifica qual relatório deve ser gerado no momento e muda o titulo da tela de filtro
   if FMenu.XTipoRel = 'RELBCPLNCTA' then
   	Caption := 'Relatório de Banco e Plano de Conta';

   if FMenu.XTipoRel = 'RELCTRLSAIDA' then
   	Caption := 'Controle de Saídas';

   if FMenu.XTipoRel = 'RELCTRLENTRADA' then
   	Caption := 'Controle de Entradas';

   if FMenu.XTipoRel = 'RELBALANCOCREDDEB' then
   	Caption := 'Balanço Crédito/Débito';
       
	if FMenu.XTipoRel = 'CTABCPLNCTA' then
   	Caption := 'Relatório de Cta. Receber por Plano de Conta';
end;

procedure TFRelBancoPlanoContas.BtnVisualizarClick(Sender: TObject);
var
	xInfoParametros: String;
begin
  inherited;
  	PComunica.Visible := True;
  	PComunica.Caption := 'AGUARDE! ESTAMOS GERANDO SEU RELATÓRIO...';
   PComunica.BringToFront;
   PComunica.Refresh;
   PComunica.Update;
   xCodTmp := 0;   
	try
       xInfoParametros := '';
   
       //Edmar - 19/12/2014 - Chama metodo auxiliar para validar os filtros
       //escolhidos pelo usuário
       if not ValidaFiltros then
       begin
  			PComunica.Visible := False;
   		PComunica.SendToBack;
           
           Exit;
       end;

       //Monta os filtros selecionados pelo usuário em uma variavel auxiliar
       if (gbDatas.Visible) AND (edDtInicial.Text <> '  /  /    ') and (edDtFinal.Text <> '  /  /    ') then
           xInfoParametros := xInfoParametros + 'Dt. Inicial: '+edDtInicial.Text+' - Dt. Final: '+edDtFinal.Text+' / ';

       if gbPeriodo.Visible then
       begin
       	//Busca os periodos marcados e inclui no filtro que vai aparecer no relatório
       	MDO.Query.Close;
           MDO.Query.SQL.Clear;
           MDO.Query.SQL.Add(' SELECT VWCTACOR.DESCBANCO, ABBANCO.DATA_ABERT ABERT, ABBANCO.DTFECH FECH FROM ABBANCO ');
           MDO.Query.SQL.Add(' LEFT JOIN VWCTACOR ON ABBANCO.COD_CTACOR = VWCTACOR.COD_CTACOR ');
           MDO.Query.SQL.Add(' WHERE ABBANCO.MARK = ''X'' ');
           MDO.Query.Open;
           MDO.Query.First;

           while not MDO.Query.Eof do
           begin
               xInfoParametros := xInfoParametros + 'Banco '+MDO.Query.FieldByName('DESCBANCO').AsString;

               if MDO.Query.FieldByName('FECH').AsString <> '' then
               	xInfoParametros := xInfoParametros + ' no período de '+MDO.Query.FieldByName('ABERT').AsString+' a '+MDO.Query.FieldByName('FECH').AsString+' / '
               else
               	xInfoParametros := xInfoParametros + ' data de abertura '+MDO.Query.FieldByName('ABERT').AsString+' / ';
                   
           	MDO.Query.Next;
           end;
       end;

       if frmBuscaCtaCor.EdDescricao.Text <> '' then
           xInfoParametros := xInfoParametros + 'Cta. Corrente: '+frmBuscaCtaCor.EdDescricao.Text+' / ';

       if frmBuscaPlncta.EdDescricao.Text <> '' then
           xInfoParametros := xInfoParametros + 'Plano de conta: '+frmBuscaPlncta.EdDescricao.Text+' / ';

       //Edmar - 08/01/2015 - Só inclui o filtro do tipo de relatorio
       //e qual operação deve trazer, se for o relatorio de banco e plano de conta
       if (FMenu.XTipoRel = 'RELBCPLNCTA') OR (FMenu.XTipoRel = 'CTABCPLNCTA') then
       begin
           if GroupBox9.Visible then
           begin
               if cbEntradas.Checked and cbSaidas.Checked then
                   xInfoParametros := xInfoParametros + 'Entradas e Saídas / '
               else
                   if cbEntradas.Checked then
                       xInfoParametros := xInfoParametros + 'Entradas / '
                   else
                       xInfoParametros := xInfoParametros + 'Saídas / ';
           end;
           
       	if rgTipoRel.ItemIndex = 0 then
           	xInfoParametros := xInfoParametros + 'Analítico.'
         	else
           	xInfoParametros := xInfoParametros + 'Sintético.';
       end;
       //
           
       //inclui os filtros no campo tmp da loja para o usuário saber quais
       //parametros ele usou para gerar o relatorio
       FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
       DMMACS.TLoja.Edit;
       DMMACS.TLoja.FieldByName('TMP1').AsString := xInfoParametros;
       DMMACS.TLoja.Post;

       //tenta comitar a operação
       try
           DMMACS.Transaction.CommitRetaining;
       except
           DMMACS.Transaction.RollbackRetaining;
       end;

       DMFAST.QItRel1.Close;
       DMFAST.QItRel1.SQL.Clear;
       DMFAST.QItRel1.SQL.Add(' SELECT EMPRESA.RAZAO_SOCIAL, LOJA.TMP1 FROM LOJA ');
       DMFAST.QItRel1.SQL.Add(' LEFT JOIN EMPRESA ON LOJA.COD_EMPRESA = EMPRESA.COD_EMPRESA ');
       DMFAST.QItRel1.SQL.Add(' WHERE LOJA.COD_LOJA = :LOJA ');
       DMFAST.QItRel1.ParamByName('LOJA').AsString := FMenu.LCODLOJA.Caption;
       DMFAST.QItRel1.Open;

       dbSetCabecalho.DataSet := DMFAST.QItRel1;

       //Testa qual relatório o usuário deseja visualizar
       if FMenu.XTipoRel = 'RELBCPLNCTA' then
       	RelBancoPlanoConta
       else
       	if FMenu.XTipoRel = 'RELCTRLSAIDA' then
           	RelControleSaida
           else
       		if FMenu.XTipoRel = 'RELCTRLENTRADA' then
               	RelControleEntradas
               else
               	if FMenu.XTipoRel = 'RELBALANCOCREDDEB' then
                   	RelBalancoCredDeb
                   else
                   	if FMenu.XTipoRel = 'CTABCPLNCTA' then
                       	RelCtaBancoPlanoConta;       	
	except
       On E : Exception do
       begin
           MessageDlg('Ocorreu um problema ao gerar o relatório'+#13+E.Message, mtError, [mbOK], 0);
       end;
   end;
  	PComunica.Visible := False;
   PComunica.SendToBack;
end;

procedure TFRelBancoPlanoContas.frmBuscaCtaCorBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//Edmar - 19/12/2014 - Filtra busca as contas correntes cadastradas no sistema
   FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'COD_CTACOR',  '', ' (cod_ctacor > 0) and ((inativo=''0'') or (inativo is null)) ');

   if AbrirForm(TFCadCtaCor, FCadCtaCor, 1)='Selected' then
   begin
   	xCodCtaCor := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
       frmBuscaCtaCor.EDCodigo.Text := DMBANCO.WCtaCor.FieldByName('NUMCTACOR').AsString;
       frmBuscaCtaCor.EdDescricao.Text := DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
   end
   else begin
   	xCodCtaCor := -1;
       frmBuscaCtaCor.EDCodigo.Text := '';
       frmBuscaCtaCor.EdDescricao.Text := '';
   end;
end;

procedure TFRelBancoPlanoContas.frmBuscaCtaCorBTNMINUSClick(
  Sender: TObject);
begin
  inherited;
	xCodCtaCor := -1;
	frmBuscaCtaCor.EDCodigo.Text := '';
	frmBuscaCtaCor.EdDescricao.Text := '';
end;


procedure TFRelBancoPlanoContas.frmBuscaPlnctaBTNOPENClick(
  Sender: TObject);
begin
  inherited;
  	FiltraTabela(DMCONTA.TPlnCta, 'PLNCTA', '', '', '');

   //Edmar - 19/12/2014 - Deixa a variavel true para sinalizar para o form de plano de conta
   //que é permitido selecionar planos de conta totalizadores
   FMenu.XGerandoRelBancoPlncta := True;

   If AbrirForm(TFConsPlnCta, FConsPlnCta, 1)='Selected' then
   begin
      	xCodPlnCta := DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      	frmBuscaPlncta.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      	frmBuscaPlncta.EDCodigo.text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
   end
   else begin
      	xCodPlnCta := -1;
      	frmBuscaPlncta.EdDescricao.Text := '';
      	frmBuscaPlncta.EDCodigo.text := '';
   end;

   //Edmar - 19/12/2014 - Deixa a variavel false para sinalizar para o form de plano de conta
   //que não é permitido selecionar planos de conta totalizadores
   FMenu.XGerandoRelBancoPlncta := False;
end; 

procedure TFRelBancoPlanoContas.frmBuscaPlnctaBTNMINUSClick(
  Sender: TObject);
begin
  inherited;
	xCodPlnCta := -1;
	frmBuscaPlncta.EdDescricao.Text := '';
	frmBuscaPlncta.EDCodigo.text := '';
end;

procedure TFRelBancoPlanoContas.frmBuscaCtaCorEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  	//Edmar - 19/12/2014 - Ao clicar enter no campo codigo em busca conta corrente...
	if Key = VK_RETURN then
   begin    	
   	if FiltraTabela(DMBANCO.WCtaCor, 'VWCTACOR', 'NUMCTACOR', frmBuscaCtaCor.EDCodigo.Text, '') then
       begin
			//se localicou a conta corrente, preenche os campos correspondente
   		xCodCtaCor := DMBANCO.WCtaCor.FieldByName('COD_CTACOR').AsInteger;
       	frmBuscaCtaCor.EDCodigo.Text := DMBANCO.WCtaCor.FieldByName('NUMCTACOR').AsString;
       	frmBuscaCtaCor.EdDescricao.Text := DMBANCO.WCtaCor.FieldByName('DESCBANCO').AsString;
       end
       else begin
   		xCodCtaCor := -1;
       	frmBuscaCtaCor.EDCodigo.Text := '';
       	frmBuscaCtaCor.EdDescricao.Text := '';
       end;

       frmBuscaCtaCor.EDCodigo.SelectAll;
   end;

   if Key = VK_ESCAPE then
   begin
   	xCodCtaCor := -1;
   	frmBuscaCtaCor.EDCodigo.Text := '';
   	frmBuscaCtaCor.EdDescricao.Text := '';
   end;
end;

procedure TFRelBancoPlanoContas.frmBuscaPlnctaEDCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
	if Key = VK_RETURN then
   begin
   	//Edmar - 19/12/2014 - Busca o plano de conta pela classificação e se ela não for totalizadora
		if filtraTabela(DMCONTA.TPlnCta, 'PLNCTA', 'CLASSIFICACAO', frmBuscaPlncta.EDCodigo.Text, '') then
       begin
      		xCodPlnCta := DMCONTA.TPlnCta.FieldByName('COD_PLNCTA').AsInteger;
      		frmBuscaPlncta.EdDescricao.Text := DMCONTA.TPlnCta.FieldByName('DESCRICAO').AsString;
      		frmBuscaPlncta.EDCodigo.text := DMCONTA.TPlnCta.FieldByName('CLASSIFICACAO').AsString;
       end
       else begin
      		xCodPlnCta := -1;
      		frmBuscaPlncta.EdDescricao.Text := '';
      		frmBuscaPlncta.EDCodigo.text := '';
       end;
   end;

   if Key = VK_ESCAPE then
   begin
   	xCodPlnCta := -1;
     	frmBuscaPlncta.EdDescricao.Text := '';
     	frmBuscaPlncta.EDCodigo.text := '';
   end;
end;

procedure TFRelBancoPlanoContas.RelBancoPlanoConta;
begin
	try
       //Edmar - 19/12/2014 - Monta o SQL para retornar as informaçoes do relatorio
       DMESTOQUE.Alx2.Close;
       DMESTOQUE.Alx2.SQL.Clear;
       DMESTOQUE.Alx2.SQL.Add(' SELECT PLNCTA.COD_PLNCTA, PLNCTA.CLASSIFICACAO, PLNCTA.DESCRICAO, MOVBANCO.HISTORICO, MOVBANCO.COBRANCA PAGAMENTO, ');
       DMESTOQUE.Alx2.SQL.Add(' MOVBANCO.DTVENC, MOVBANCO.VALOR, VWCTACOR.DESCBANCO, MOVBANCO.TIPOOP OPERACAO FROM PLNCTA ');
       DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN MOVBANCO ON MOVBANCO.COD_PLNCTA = PLNCTA.COD_PLNCTA ');
       DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN VWCTACOR ON VWCTACOR.COD_CTACOR = MOVBANCO.COD_CTACOR ');
       DMESTOQUE.Alx2.SQL.Add(' WHERE (MOVBANCO.HISTORICO IS NOT NULL) AND (MOVBANCO.VALOR IS NOT NULL) ');

       AdicionaFiltrosBanco(DMESTOQUE.Alx2);
       RemoveTMP;
       PreparaInfoTemporarias(DMESTOQUE.Alx2);

		DMFAST.QItRel.Close;
       DMFAST.QItRel.SQL.Clear;
       
       if rgTipoRel.ItemIndex = 0 then
       begin//RELATORIO ANALITICO
           DMFAST.QItRel.SQL.Add(' SELECT TMP.DESC2 CLASSIFICACAO, PLNCTA.DESCRICAO, TMP.DESC500 HISTORICO, TMP.DESC3 PAGAMENTO, TMP.DESC2 OPERACAO, ');
           DMFAST.QItRel.SQL.Add(' TMP.VLR1 VALOR, TMP.VLR2 ILSE, TMP.VLR3 ZANETTE, TMP.VLR16 TOTALIZADOR FROM TMP ');
           DMFAST.QItRel.SQL.Add(' LEFT JOIN PLNCTA ON PLNCTA.CLASSIFICACAO = TMP.DESC2 ');
           DMFAST.QItRel.SQL.Add(' ORDER BY COD_TMP, DATA1 ');
       end
       else begin//RELATORIO SINTETICO
           DMFAST.QItRel.SQL.Add(' SELECT TMP.DESC2 CLASSIFICACAO, PLNCTA.DESCRICAO, TMP.VLR1 VALOR, TMP.VLR2 ILSE, TMP.VLR3 ZANETTE, TMP.VLR16 TOTALIZADOR FROM TMP ');
           DMFAST.QItRel.SQL.Add(' LEFT JOIN PLNCTA ON PLNCTA.CLASSIFICACAO = TMP.DESC2 ');
           DMFAST.QItRel.SQL.Add(' ORDER BY COD_TMP ');
       end;

       DMFAST.QItRel.Open;
       DMFAST.QItRel.First;

       if DMFAST.QItRel.IsEmpty then
       begin
           Mensagem(' A T E N Ç Ã O ', 'O relatório retornou sem informações.', '', 1, 1, False, 'I');
           Exit;
       end;

       dbSetInfo.DataSet := DMFAST.QItRel;

       if rgTipoRel.ItemIndex = 0 then
           frxRelatorio.LoadFromFile('C:/MZR/Macs/Rel/FrfBancoPlanoContasAnalitico.fr3')
       else
           frxRelatorio.LoadFromFile('C:/MZR/Macs/Rel/FrfBancoPlanoContasSintetico.fr3');

       frxRelatorio.ShowReport();
   except
   	On E : Exception do
       begin
      		Raise Exception.Create('[390] - '+E.Message);
       end;
   end;
end;

//Edmar - 19/12/2014 - Procedure auxiliar para validar os filtros informados pelo usuário
function TFRelBancoPlanoContas.ValidaFiltros:Boolean;
begin
	Result := True;

	//Valida quanto ao intervalo de datas
   if  (((gbDatas.Visible) AND (edDtInicial.Text <> '  /  /    ') and (edDtFinal.Text = '  /  /    ')) OR ((edDtInicial.Text = '  /  /    ') and (edDtFinal.Text <> '  /  /    '))) then
   begin
   	Mensagem(' A T E N Ç Ã O ', 'Caso desejar filtrar o relatório por período, favor informar as duas datas solicitadas.', '', 1, 1, False, 'A');
		Result := False;
   end;

   //Edmar - 16/01/2015 - Valida quanto aos periodos
   if (gbPeriodo.Visible) then
   begin
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' SELECT COUNT(COD_ABBANCO) FROM ABBANCO WHERE ABBANCO.MARK = ''X'' ');
       MDO.Query.Open;

       if MDO.Query.FieldByName('COUNT').AsInteger <= 0 then
       begin
   		Mensagem(' A T E N Ç Ã O ', 'Marque pelo menos um período para gerar o relatório.', '', 1, 1, False, 'A');       
       	Result := False;
       end;
   end;

   //só valida o intervalo se foi informado uma data
   if (edDtInicial.Text <> '  /  /    ') then
   begin
     if StrToDate(edDtInicial.Text) > StrToDate(edDtFinal.Text) then
     begin
         Mensagem(' A T E N Ç Ã O ', 'A data inicial do filtro não pode ultrapassar a data final.', '', 1, 1, False, 'A');
         Result := False;
     end;
   end;

   //Só valida o tipo da operação se for o relatorio de banco e plano de conta
   //só ele leva em consideração essa opção
   if FMenu.XTipoRel = 'RELBCPLNCTA' then
   begin
   	//valida se foi selecionado as opções de entrada ou saida
       if not cbEntradas.Checked and not cbSaidas.Checked then
       begin
           Mensagem(' A T E N Ç Ã O ', 'Por favor, selecione entre a opção de Entrada, Saída ou ambas.', '', 1, 1, False, 'A');
           Result := False;
       end;
   end;
end;

procedure TFRelBancoPlanoContas.RelControleSaida;
begin
	try
       //Edmar - 08/01/2015 - Busca todas as saidas realizadas com base no filtros escolhidos
       DMESTOQUE.Alx2.Close;
       DMESTOQUE.Alx2.SQL.Clear;
       DMESTOQUE.Alx2.SQL.Add(' SELECT PLNCTA.COD_PLNCTA, PLNCTA.CLASSIFICACAO, PLNCTA.DESCRICAO, MOVBANCO.VALOR, VWCTACOR.DESCBANCO, MOVBANCO.TIPOOP OPERACAO FROM PLNCTA ');
       DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN MOVBANCO ON MOVBANCO.COD_PLNCTA = PLNCTA.COD_PLNCTA ');
       DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN VWCTACOR ON VWCTACOR.COD_CTACOR = MOVBANCO.COD_CTACOR ');
       DMESTOQUE.Alx2.SQL.Add(' WHERE (MOVBANCO.HISTORICO IS NOT NULL) AND (MOVBANCO.VALOR IS NOT NULL) AND (MOVBANCO.TIPOOP = ''SAIDA'')');

       //Metodo auxiliar para adicionar filtros a query
       AdicionaFiltrosBanco(DMESTOQUE.Alx2);
       RemoveTMP;
       PreparaInfoTemporarias(DMESTOQUE.Alx2);
       
       //Edmar - 09/01/2014 - Retorna os totais das saidas salvos anteriormente
       DMFAST.QItRel.Close;
       DMFAST.QItRel.SQL.Clear;
       DMFAST.QItRel.SQL.Add(' SELECT PLNCTA.DESCRICAO, TMP.VLR1 ILCE, TMP.VLR2 ZANETTE, (VLR1 + VLR2) TOTAL  FROM TMP ');
       DMFAST.QItRel.SQL.Add(' LEFT JOIN PLNCTA ON PLNCTA.CLASSIFICACAO = TMP.DESC1 ');
       DMFAST.QItRel.SQL.Add(' ORDER BY DESCRICAO ');
       DMFAST.QItRel.Open;
       DMFAST.QItRel.First;

       dbSetInfo.DataSet := DMFAST.QItRel;

       if DMFAST.QItRel.IsEmpty then
       begin
       	Mensagem(' I N F O R M A Ç Ã O ', 'O relatório retornou sem informação.', '', 1, 1, False, 'I');
           Exit;
       end;

   	frxRelatorio.LoadFromFile('C:/MZR/Macs/Rel/FrfControleSaidas.fr3');
       frxRelatorio.ShowReport();
   except
   	On E : Exception do
       begin
      		Raise Exception.Create('[536] - '+E.Message);
       end;
   end;
end;

procedure TFRelBancoPlanoContas.RelControleEntradas;
begin
	try
       //Edmar - 08/01/2015 - Busca todas as saidas realizadas com base no filtros escolhidos
       DMESTOQUE.Alx2.Close;
       DMESTOQUE.Alx2.SQL.Clear;
       DMESTOQUE.Alx2.SQL.Add(' SELECT PLNCTA.COD_PLNCTA, PLNCTA.CLASSIFICACAO, PLNCTA.DESCRICAO, MOVBANCO.VALOR, VWCTACOR.DESCBANCO, MOVBANCO.TIPOOP OPERACAO FROM PLNCTA ');
       DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN MOVBANCO ON MOVBANCO.COD_PLNCTA = PLNCTA.COD_PLNCTA ');
       DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN VWCTACOR ON VWCTACOR.COD_CTACOR = MOVBANCO.COD_CTACOR ');
       DMESTOQUE.Alx2.SQL.Add(' WHERE (MOVBANCO.HISTORICO IS NOT NULL) AND (MOVBANCO.VALOR IS NOT NULL) AND (MOVBANCO.TIPOOP = ''ENTRADA'') ');

       //Metodo auxiliar para adicionar filtros a query
       AdicionaFiltrosBanco(DMESTOQUE.Alx2);
		RemoveTMP;      
       PreparaInfoTemporarias(DMESTOQUE.Alx2);
       
       //Edmar - 09/01/2015 - Seleciona o codigo do tmp (é a chave primária do plano de conta)
       //e a descrição (que é a descrição do plano de conta) de tmp que já está agrupado pelo plano de conta.
       //depois busca no contas a receber as contas que possuem o plano de conta buscado e a parcela não foi movimentada
       //somando o valor final e atualiza no VLR3 no TMP
       BuscaValorAReceber;

       //Edmar - 09/01/2014 - Retorna os totais das saidas salvos anteriormente
       DMFAST.QItRel.Close;
       DMFAST.QItRel.SQL.Clear;
       DMFAST.QItRel.SQL.Add(' SELECT PLNCTA.DESCRICAO, TMP.VLR1 ILCE, TMP.VLR2 ZANETTE, (VLR1 + VLR2) TOTAL_RECEBIDO, VLR3 TOTAL_RECEBER  FROM TMP ');
       DMFAST.QItRel.SQL.Add(' LEFT JOIN PLNCTA ON PLNCTA.CLASSIFICACAO = TMP.DESC1 ');
       DMFAST.QItRel.SQL.Add(' ORDER BY DESCRICAO ');
       DMFAST.QItRel.Open;
       DMFAST.QItRel.First;

       dbSetInfo.DataSet := DMFAST.QItRel;

       if DMFAST.QItRel.IsEmpty then
       begin
       	Mensagem(' A T E N Ç Ã O ', 'O relatório retornou sem informações', '', 1, 1, False, 'A');
       	Exit;
       end;

		frxRelatorio.LoadFromFile('C:/MZR/Macs/Rel/FrfControleEntradas.fr3');
		frxRelatorio.ShowReport();
   except
   	On E : Exception do
       begin
      		Raise Exception.Create('[601] - '+E.Message);
       end;
   end;
end;

procedure TFRelBancoPlanoContas.RelBalancoCredDeb;
begin
	try
       //Edmar - 08/01/2015 - Busca todas as saidas realizadas com base no filtros escolhidos
       DMESTOQUE.Alx2.Close;
       DMESTOQUE.Alx2.SQL.Clear;
       DMESTOQUE.Alx2.SQL.Add(' SELECT MOVBANCO.VALOR, VWCTACOR.DESCBANCO, MOVBANCO.TIPOOP OPERACAO, MOVBANCO.COD_ABBANCO FROM PLNCTA ');
       DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN MOVBANCO ON MOVBANCO.COD_PLNCTA = PLNCTA.COD_PLNCTA ');
       DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN VWCTACOR ON VWCTACOR.COD_CTACOR = MOVBANCO.COD_CTACOR ');
       DMESTOQUE.Alx2.SQL.Add(' WHERE (MOVBANCO.HISTORICO IS NOT NULL) AND (MOVBANCO.VALOR IS NOT NULL) ');

       //Metodo auxiliar para adicionar filtros a query
		AdicionaFiltrosBanco(DMESTOQUE.Alx2);
       //
		RemoveTMP;
       PreparaInfoTemporarias(DMESTOQUE.Alx2);

       //busca as entradas e as saídas preparadas anteriormente
       DMFAST.QItRel.Close;
       DMFAST.QItRel.SQL.Clear;
       DMFAST.QItRel.SQL.Add(' SELECT TMP.COD_TMP, TMP.VLR1 ILSE, TMP.VLR2 ZANETTE, (VLR1 + VLR2) TOTAL FROM TMP ');
       DMFAST.QItRel.Open;
       DMFAST.QItRel.First;
       
       dbSetInfo.DataSet := DMFAST.QItRel;

       //ProjecaoFutura;

   	if DMFAST.QItRel.IsEmpty then
       begin
       	Mensagem(' A T E N Ç Ã O ', 'O relatório retornou sem informações', '', 1, 1, False, 'A');
       	Exit;
       end;
          
		frxRelatorio.LoadFromFile('C:/MZR/Macs/Rel/FrfBalancoCreditoDebito.fr3');
		frxRelatorio.ShowReport();
   except
   	On E : Exception do
       begin
      		Raise Exception.Create('[438] - '+E.Message);
       end;
   end;
end;

procedure TFRelBancoPlanoContas.RelCtaBancoPlanoConta;
begin
	try
       //Edmar - 21/01/2015 - Busca as parcelas em aberto
       //Verifica qual tipo de relatório deve gerar
       if rgTipoRel.ItemIndex = 0 then
       begin//analitico
       	DMESTOQUE.Alx2.Close;
           DMESTOQUE.Alx2.SQL.Clear;
           DMESTOQUE.Alx2.SQL.Add(' SELECT PLNCTA.COD_PLNCTA, PLNCTA.CLASSIFICACAO, PLNCTA.DESCRICAO, PARCELACR.HISTORICO, ');
           DMESTOQUE.Alx2.SQL.Add(' PARCELACR.COBRANCA PAGAMENTO, PARCELACR.VALOR FROM PLNCTA ');
           DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_PLNCTA = PLNCTA.COD_PLNCTA ');
           DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN PARCELACR ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
           DMESTOQUE.Alx2.SQL.Add(' WHERE (PARCELACR.HISTORICO IS NOT NULL) AND (PARCELACR.VALOR IS NOT NULL) AND (PARCELACR.FECH = ''N'') ');
		end
       else begin//sintetico
       	DMESTOQUE.Alx2.Close;
           DMESTOQUE.Alx2.SQL.Clear;
           DMESTOQUE.Alx2.SQL.Add(' SELECT PLNCTA.COD_PLNCTA, PLNCTA.CLASSIFICACAO, PLNCTA.DESCRICAO, SUM(PARCELACR.VALOR) VALOR FROM PLNCTA ');
           DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_PLNCTA = PLNCTA.COD_PLNCTA ');
           DMESTOQUE.Alx2.SQL.Add(' LEFT JOIN PARCELACR ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
           DMESTOQUE.Alx2.SQL.Add(' WHERE (PARCELACR.HISTORICO IS NOT NULL) AND (PARCELACR.VALOR IS NOT NULL) AND (PARCELACR.FECH = ''N'') ');
       end;
       //
       
       AdicionaFiltrosCta(DMESTOQUE.Alx2);
       
       RemoveTMP;
       PreparaInfoTemporarias(DMESTOQUE.Alx2);

       DMFAST.QItRel.Close;
       DMFAST.QItRel.SQL.Clear;
       DMFAST.QItRel.SQL.Add(' SELECT TMP.DESC2 CLASSIFICACAO, PLNCTA.DESCRICAO, TMP.DESC500 HISTORICO, TMP.DESC3 PAGAMENTO, TMP.VLR1 VALOR, TMP.VLR16 TOTALIZADOR FROM TMP ');
       DMFAST.QItRel.SQL.Add(' LEFT JOIN PLNCTA ON PLNCTA.CLASSIFICACAO = TMP.DESC2 ');
		DMFAST.QItRel.SQL.Add(' ORDER BY COD_TMP ');
       DMFAST.QItRel.Open;
       DMFAST.QItRel.First;

       if DMFAST.QItRel.IsEmpty then
       begin
           Mensagem(' A T E N Ç Ã O ', 'O relatório retornou sem informações.', '', 1, 1, False, 'I');
           Exit;
       end;

       dbSetInfo.DataSet := DMFAST.QItRel;

       if rgTipoRel.ItemIndex = 0 then
           frxRelatorio.LoadFromFile('C:/MZR/Macs/Rel/FrfCtaRBancoPlanoContasAnalitico.fr3')
       else
           frxRelatorio.LoadFromFile('C:/MZR/Macs/Rel/FrfCtaRBancoPlanoContasSintetico.fr3');

       frxRelatorio.ShowReport();       
   except
   	On E : Exception do
       begin
       	Mensagem(' A T E N Ç Ã O ', 'Não foi possível gerar o relatório. Por favor reinicie o sistema e tente novamente. Se o problema persistir, contate o suporte', '', 1, 1, False, 'A');
   		Exit;
       end;
   end;
end;

procedure TFRelBancoPlanoContas.InativaComponentes;
begin
   rbPeriodo.Visible := True;
   GroupBox9.Visible := True;
   gbCtaCor.Visible  := True;

   if (FMenu.XTipoRel = 'RELCTRLSAIDA') OR (FMenu.XTipoRel = 'RELBALANCOCREDDEB') OR (FMenu.XTipoRel = 'RELCTRLENTRADA') then
   begin
		rgTipoRel.Visible := False;
       GroupBox9.Visible := False;
   end;

   if (FMenu.XTipoRel = 'RELBCPLNCTA') OR (FMenu.XTipoRel = 'CTABCPLNCTA') then
   begin
		rgTipoRel.Visible := True;
       GroupBox9.Visible := True;
   end;

	if (FMenu.XTipoRel = 'CTABCPLNCTA') then
   begin
 		gbPeriodo.Visible := False;
   	rbPeriodo.Visible := False;
		GroupBox9.Visible := False;
       gbCtaCor.Visible := False;      
   end;
end;

procedure TFRelBancoPlanoContas.rbDataClick(Sender: TObject);
begin
  inherited;
  	//Edmar - 08/01/2015 - Verifica se o radio button da data está selecionado ou não
   //e deixa o painel visivel ou não para o usuário
	if rbData.Checked then
   begin
   	gbDatas.Visible := True;
		gbPeriodo.Visible := False;
   end
   else begin
   	gbDatas.Visible := False;
   	gbPeriodo.Visible := True;       
   end;
end;

procedure TFRelBancoPlanoContas.rbPeriodoClick(Sender: TObject);
begin
  inherited;
  	//Edmar - 08/01/2015 - Verifica se o radio button do periodo está selecionado ou não
   //e deixa o painel visivel ou não para o usuário
	if rbPeriodo.Checked then
   begin
   	gbPeriodo.Visible := True;
   	gbDatas.Visible := False;
   end
   else begin
   	gbPeriodo.Visible := False;
   	gbDatas.Visible := True;       
   end;
end;

procedure TFRelBancoPlanoContas.BuscaPeriodos;
begin
   //busca as aberturas de banco com base na conta selecionada
   DMESTOQUE.Alx1.Close;
   DMESTOQUE.Alx1.SQL.Clear;
   DMESTOQUE.Alx1.SQL.Add(' SELECT VWCTACOR.DESCBANCO, ABBANCO.* FROM ABBANCO ');
   DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN VWCTACOR ON VWCTACOR.COD_CTACOR = ABBANCO.COD_CTACOR ');
   DMESTOQUE.Alx1.SQL.Add(' ORDER BY ABBANCO.FECHADO, ABBANCO.DTFECH DESC ');
   DMESTOQUE.Alx1.Open;
end;

procedure TFRelBancoPlanoContas.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
	BuscaPeriodos;
end;

//Edmar - 08/01/2015 - Receber como parametro a classificação que deve ter uma totalizadora
//A função funciona da seguinte forma:
//1- Passa o tamanho da string da classificação para o contador do loop
//2- Ele começa da ultima casa e vai até achar um ponto
//3- Quando achar o ponto, alimenta a variavel achou com True para sinalizar a situação
//4- Após isso, começa concatenar a classicação encontrada.
//5- No fim do processo, retorna a classificação buscada
function TFRelBancoPlanoContas.RetornaTotalizador(xClassificacao: String): String;
var
	xI: Integer;
   xAchou: Boolean;
   xTotalizadora: String;
begin
   xAchou := False;
   xTotalizadora := '';

	for xI := Length(xClassificacao) downto 1 do
  	begin
   	if xAchou then
       	xTotalizadora := xTotalizadora + xClassificacao[xI];

     	if xClassificacao[xI] = '.' then
       	xAchou := True;
  	end;
   
   Result := ReverseString(xTotalizadora);
end;

//Edmar - 08/01/2015 - Função usada para verificar se a string retornada no metodo RetornaTotalizador ou não
//é de fato uma totalizadora
function TFRelBancoPlanoContas.VerificaTotalizadora(xTotalizador: String): Boolean;
begin
	Result := False;

	DMFAST.QAlx.Close;
   DMFAST.QAlx.SQL.Clear;
   DMFAST.QAlx.SQL.Add(' SELECT COUNT(COD_PLNCTA) FROM PLNCTA WHERE (CLASSIFICACAO = :CLASS) AND (TIPO = ''T'') ');
   DMFAST.QAlx.ParamByName('CLASS').AsString := xTotalizador;
   DMFAST.QAlx.Open;

   //se o DMFAST não estiver vazio significa que a classificação é uma totalizadora e retorna true
   if DMFAST.QAlx.FieldByName('COUNT').AsInteger > 0 then
   	Result := True;
end;

//Edmar - 09/01/2015 - Metodo auxiliar usado para incluir na tabela TMP as informações que serão usadas no relatório
procedure TFRelBancoPlanoContas.AdicionaTmp(xTotalizadora, xBanco: String; xValor: Real; xOperacao: String);
begin
	try
   	if (FMenu.XTipoRel = 'RELCTRLSAIDA') OR (FMenu.XTipoRel = 'RELCTRLENTRADA') then
       begin
           //Edmar - 08/01/2014 - Busca se a classificação passada como parametro já foi incluida na tabela TMP
           DMFAST.QAlx.Close;
           DMFAST.QAlx.SQL.Clear;
           DMFAST.QAlx.SQL.Add(' SELECT TMP.COD_TMP, TMP.DESC1 CLASSIFICACAO, TMP.VLR1 ILCE, TMP.VLR2 ZANETTE FROM TMP WHERE TMP.DESC1 = :CLASS ');
           DMFAST.QAlx.ParamByName('CLASS').AsString := xTotalizadora;
           DMFAST.QAlx.Open;

           //se a classificação não foi incluida na tabela tmp ainda
           if DMFAST.QAlx.IsEmpty then
           begin
               //adiciona agora
               xCodTmp := DMESTOQUE.Alx2.FieldByName('COD_PLNCTA').AsInteger;

               DMFAST.QAlx1.Close;
               DMFAST.QAlx1.SQL.Clear;
               DMFAST.QAlx1.SQL.Add(' INSERT INTO TMP (COD_TMP, DESC1, VLR1, VLR2) VALUES (:CODIGO, :CLASSIFICACAO, :ILCE, :ZANETTE) ');
               DMFAST.QAlx1.ParamByName('CODIGO').AsInteger := xCodTmp;
               DMFAST.QAlx1.ParamByName('CLASSIFICACAO').AsString := xTotalizadora;
           end
           else begin
               //se ja estiver incluida, atualiza os valores.
               DMFAST.QAlx1.Close;
               DMFAST.QAlx1.SQL.Clear;
               DMFAST.QAlx1.SQL.Add(' UPDATE TMP SET VLR1 = VLR1 + :ILCE, VLR2 = VLR2 + :ZANETTE WHERE COD_TMP = :CODIGO ');
               DMFAST.QAlx1.ParamByName('CODIGO').AsInteger := DMFAST.QAlx.FieldByName('COD_TMP').AsInteger;
           end;
       end;

       if (FMenu.XTipoRel = 'RELBALANCOCREDDEB') then
       begin
       	//Edmar - 09/01/2015 - xCodTmp = 0 sinaliza que é a primeira vez que ele entrou no procedimento
           //Nesse caso, insere dois novos registro na tabela TMP
           //COD_TMP = 2, significa que esse registro é destinado as entradas
           //COD_TMP = 3, significa que esse registro é destinado as saidas
       	if xCodTmp = 0 then
           begin
           	try
           		//insere o registro responsável por salvar o saldo anterior
					DMFAST.QAlx1.Close;
               	DMFAST.QAlx1.SQL.Clear;
               	DMFAST.QAlx1.SQL.Add(' INSERT INTO TMP (COD_TMP, VLR1, VLR2) VALUES (:CODIGO, :ILCE, :ZANETTE) ');
               	DMFAST.QAlx1.ParamByName('CODIGO').AsInteger := 1;
                   
                   if DMFAST.QAlx4.FieldByName('DESCBANCO').AsString = 'ILCE' then
               		DMFAST.QAlx1.ParamByName('ILCE').AsCurrency := DMFAST.QAlx4.FieldByName('SALDOINI').AsCurrency;

					DMFAST.QAlx4.Next;
                   
					if DMFAST.QAlx4.FieldByName('DESCBANCO').AsString = 'ZANETTE' then
               		DMFAST.QAlx1.ParamByName('ZANETTE').AsCurrency := DMFAST.QAlx4.FieldByName('SALDOINI').AsCurrency;
                       
       			DMFAST.QAlx1.ExecSQL;
                   //
                   
           		//insere o registro para as entradas
					DMFAST.QAlx1.Close;
               	DMFAST.QAlx1.SQL.Clear;
               	DMFAST.QAlx1.SQL.Add(' INSERT INTO TMP (COD_TMP, VLR1, VLR2) VALUES (:CODIGO, :VLR1, :VLR2) ');
               	DMFAST.QAlx1.ParamByName('CODIGO').AsInteger := 2;
               	DMFAST.QAlx1.ParamByName('VLR1').AsInteger := 0;
               	DMFAST.QAlx1.ParamByName('VLR2').AsInteger := 0;
       			DMFAST.QAlx1.ExecSQL;

               	//insere os registros para as saídas
					DMFAST.QAlx1.Close;
               	DMFAST.QAlx1.SQL.Clear;
               	DMFAST.QAlx1.SQL.Add(' INSERT INTO TMP (COD_TMP, VLR1, VLR2) VALUES (:CODIGO, :VLR1, :VLR2) ');
               	DMFAST.QAlx1.ParamByName('CODIGO').AsInteger := 3;
               	DMFAST.QAlx1.ParamByName('VLR1').AsInteger := 0;
               	DMFAST.QAlx1.ParamByName('VLR2').AsInteger := 0;
       			DMFAST.QAlx1.ExecSQL;

       			DMFAST.MDOTrans.CommitRetaining;
               except
   				On E : Exception do
       			begin
		   				DMFAST.MDOTrans.RollbackRetaining;                   
      					Raise Exception.Create('Não foi possível incluir o plano de conta na tabela TMP');
       			end;
               end;
               
               xCodTmp := -1;
           end;

           DMFAST.QAlx1.Close;
           DMFAST.QAlx1.SQL.Clear;
           DMFAST.QAlx1.SQL.Add(' UPDATE TMP SET TMP.VLR1 = VLR1 + :ILCE, TMP.VLR2 = VLR2 + :ZANETTE WHERE (TMP.COD_TMP = :CODIGO) ');

           if xOperacao = 'ENTRADA' then
           	DMFAST.QAlx1.ParamByName('CODIGO').AsInteger := 2
           else
           	DMFAST.QAlx1.ParamByName('CODIGO').AsInteger := 3;
       end;

       //Edmar - 22/01/2015 - Tratamento para incluir na tabela TMP os totalizadores e as parcelas
       //necessárias para gerar o relatório de contas a receber por plano de conta
       if (FMenu.XTipoRel = 'CTABCPLNCTA') then
       begin

       end;

       //Edmar - 22/01/2015 - Só faz o tratamento para inserir em diferentes colunas da tabela tmp
       //se não for o relatorio de contas a receber por plano de conta
       if (FMenu.XTipoRel <> 'CTABCPLNCTA') then
       begin
       	//Verificando qual banco pertence a conta
           if xBanco = 'ZANETTE' then
           begin
               DMFAST.QAlx1.ParamByName('ZANETTE').AsCurrency := xValor;
               DMFAST.QAlx1.ParamByName('ILCE').AsCurrency := 0;
           end
           else begin
               DMFAST.QAlx1.ParamByName('ILCE').AsCurrency := xValor;
               DMFAST.QAlx1.ParamByName('ZANETTE').AsCurrency := 0;
           end;

           DMFAST.QAlx1.ExecSQL;
			DMFAST.MDOTrans.CommitRetaining;           
       end;
   except
   	On E : Exception do
       begin
		   	DMFAST.MDOTrans.RollbackRetaining;           
      		Raise Exception.Create('Não foi possível incluir o plano de conta na tabela TMP');
       end;
   end;
end;

//Edmar - 09/01/2015 - Seleciona o codigo do tmp (é a chave primária do plano de conta)
//e a descrição (que é a descrição do plano de conta) de tmp que já está agrupado pelo plano de conta.
//depois busca no contas a receber as contas que possuem o plano de conta buscado e a parcela que não foi movimentada
//somando o valor final e atualiza no VLR3 no TMP
procedure TFRelBancoPlanoContas.BuscaValorAReceber;
begin
	try
		DMFAST.QAlx.Close;
       DMFAST.QAlx.SQL.Clear;
       DMFAST.QAlx.SQL.Add(' SELECT TMP.COD_TMP, TMP.DESC1 FROM TMP ');
       DMFAST.QAlx.Open;

       while not DMFAST.QAlx.Eof do
       begin
           DMFAST.QAlx1.Close;
           DMFAST.QAlx1.SQL.Clear;
           DMFAST.QAlx1.SQL.Add(' SELECT SUM(PARCELACR.VALOR) TOTAL FROM CTARECEBER ');
           DMFAST.QAlx1.SQL.Add(' LEFT JOIN PARCELACR ON PARCELACR.COD_CTARECEBER = CTARECEBER.COD_CTARECEBER ');
           DMFAST.QAlx1.SQL.Add(' LEFT JOIN PLNCTA ON PLNCTA.COD_PLNCTA = CTARECEBER.COD_PLNCTA ');
           DMFAST.QAlx1.SQL.Add(' WHERE (PARCELACR.FECH = ''N'') AND (PLNCTA.CLASSIFICACAO LIKE :CLASS) ');
           DMFAST.QAlx1.ParamByName('CLASS').AsString := DMFAST.QAlx.FieldByName('DESC1').AsString+'%';
           DMFAST.QAlx1.Open;

           if not DMFAST.QAlx1.IsEmpty then
           begin
               DMFAST.QAlx2.Close;
               DMFAST.QAlx2.SQL.Clear;
               DMFAST.QAlx2.SQL.Add(' UPDATE TMP SET TMP.VLR3 = :RECEBER WHERE TMP.COD_TMP = :COD_TMP ');
               DMFAST.QAlx2.ParamByName('RECEBER').AsCurrency := DMFAST.QAlx1.FieldByName('TOTAL').AsCurrency;
               DMFAST.QAlx2.ParamByName('COD_TMP').AsInteger := DMFAST.QAlx.FieldByName('COD_TMP').AsInteger;
               DMFAST.QAlx2.ExecSQL;
           
               DMFAST.MDOTrans.CommitRetaining;
           end;

           DMFAST.QAlx.Next;
       end;
   except
   	Mensagem(' A T E N Ç Ã O ', 'Não foi possível recuperar o valor a receber de cada conta gerada.', '', 1, 1, False, 'A');
   	DMFAST.MDOTrans.RollbackRetaining;
   end;
end;

//Edmar - 09/01/2015 - Procedure auxiliar para adicionar a query
//os filtros escolhidos pelo usuário. Como isso não muda, para não
//repetir código e dar mais manutenção é viável criar um procedimento para isso
procedure TFRelBancoPlanoContas.AdicionaFiltrosBanco(xQuery: TIBQuery);
var
	xPeriodosMarcados: String;
begin
	//monta os parametros da consulta
	if (gbDatas.Visible) AND (edDtInicial.Text <> '  /  /    ') then
   begin
   	If RGTIPODT.ItemIndex=0 Then
   		xQuery.SQL.Add(' AND (MOVBANCO.DTLANC BETWEEN :DTINI AND :DTFIM) ');
   	If RGTIPODT.ItemIndex=1 Then
   		xQuery.SQL.Add(' AND (MOVBANCO.dtmov BETWEEN :DTINI AND :DTFIM) ');
   	If RGTIPODT.ItemIndex=2 Then
   		xQuery.SQL.Add(' AND (MOVBANCO.dtvenc BETWEEN :DTINI AND :DTFIM) ');

       xQuery.ParamByName('DTINI').AsDate := StrToDate(edDtInicial.Text);
       xQuery.ParamByName('DTFIM').AsDate := StrToDate(edDtFinal.Text);
   end;

   if gbPeriodo.Visible then
   begin
   	xPeriodosMarcados := '';
       
   	//Edmar - 16/01/2015 - Se o group de periodos estiver visivel
       //busca todos os periodos que estão marcados e adiciona ao filtro com IN ('')
       MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;
       MDO.QAlx1.SQL.Add(' SELECT ABBANCO.COD_ABBANCO FROM ABBANCO WHERE ABBANCO.MARK = ''X'' ');
       MDO.QAlx1.Open;
       MDO.QAlx1.First;

       while not MDO.QAlx1.Eof do
       begin
       	xPeriodosMarcados := xPeriodosMarcados + MDO.QAlx1.FieldByName('COD_ABBANCO').AsString+',';

           MDO.QAlx1.Next;
       end;

       xPeriodosMarcados := Copy(xPeriodosMarcados, 0, Length(xPeriodosMarcados)-1);

   	xQuery.SQL.Add(' AND (MOVBANCO.COD_ABBANCO IN ('+xPeriodosMarcados+')) ');
   end;

   if GroupBox9.Visible then
   begin
   	//se cbEntradas estiver checkado e cbSaida não estiver checkado
       //traz apenas movmentações de entrada
   	if cbEntradas.Checked AND not cbSaidas.Checked then
       	xQuery.SQL.Add(' AND (TIPOOP = ''ENTRADA'') ');

       //mesmo caso para as saidas
		if cbSaidas.Checked AND NOT cbEntradas.Checked then
       	xQuery.SQL.Add(' AND (TIPOOP = ''SAIDA'') ');       
   end;
   
   if xCodCtaCor <> -1 then
   begin
   	xQuery.SQL.Add(' AND (VWCTACOR.COD_CTACOR = :CTACOR) ');
       xQuery.ParamByName('CTACOR').AsInteger := xCodCtaCor;
   end;

   if xCodPlnCta <> -1 then
   	xQuery.SQL.Add(' AND (PLNCTA.CLASSIFICACAO LIKE '+QuotedStr(frmBuscaPlncta.EDCodigo.Text+'%')+') ');
   //

  	xQuery.SQL.Add(' ORDER BY CLASSIFICACAO, MOVBANCO.DTVENC ');
   xPeriodosMarcados := xQuery.SQL.Text;
  	xQuery.Open;
  	xQuery.First;
end;

//Edmar - 09/01/2015 - Procedure auxiliar para adicionar a query
//os filtros escolhidos pelo usuário. Como isso não muda, para não
//repetir código e dar mais manutenção é viável criar um procedimento para isso
procedure TFRelBancoPlanoContas.AdicionaFiltrosCta(xQuery: TIBQuery);
begin
	//monta os parametros da consulta
	if (gbDatas.Visible) AND (edDtInicial.Text <> '  /  /    ') then
   begin
   	xQuery.SQL.Add(' AND (PARCELACR.DTVENC BETWEEN :DTINI AND :DTFIM) ');
       xQuery.ParamByName('DTINI').AsDate := StrToDate(edDtInicial.Text);
       xQuery.ParamByName('DTFIM').AsDate := StrToDate(edDtFinal.Text);
   end;

   if xCodPlnCta <> -1 then
   	xQuery.SQL.Add(' AND (PLNCTA.CLASSIFICACAO LIKE '+QuotedStr(frmBuscaPlncta.EDCodigo.Text+'%')+') ');
   //
   if rgTipoRel.ItemIndex = 1 then
		xQuery.SQL.Add(' GROUP BY COD_PLNCTA, CLASSIFICACAO, DESCRICAO ');
       
   xQuery.SQL.Add(' ORDER BY CLASSIFICACAO, DESCRICAO, COD_PLNCTA ');
  	xQuery.Open;
  	xQuery.First;
end;

//Com todas as entradas selecionadas, você deve buscar agora a totalizadora desses planos de conta
//De trás pra frente, copiar tudo depois do ultimo ponto encontrado
//Verifica se a conta buscado é totalizadora, se não for continua buscando usando o mesmo metodo usado acima
//Se for totalizador, verifica se o mesmo já não foi incluida na tabela tmp
//se já foi, verifica também qual banco gerou a conta
//e soma em campos diferentes conforme o banco
//tudo que foi dito acima está contido nos procedimentos abaixo
procedure TFRelBancoPlanoContas.PreparaInfoTemporarias(xQuery: TIBQuery);
var
	xRetornoTotalizador: String;
   xAbBancos: String;
begin
	try
		if FMenu.XTipoRel = 'RELBALANCOCREDDEB' then
       begin
           xAbBancos := '';

           while not xQuery.Eof do
           begin
           	//Só adiciona se o código não estiver incluido
           	if not AnsiContainsStr(xAbBancos, xQuery.FieldByName('COD_ABBANCO').AsString) then
               	xAbBancos := xAbBancos + xQuery.FieldByName('COD_ABBANCO').AsString+',';

               xQuery.Next;
           end;

           xAbBancos := Copy(xAbBancos, 0, Length(xAbBancos)-1);

           xQuery.First;
                      
           while not xQuery.Eof do
           begin
           	//busca os banco e seus respectivos saldos
               DMFAST.QAlx4.Close;
               DMFAST.QAlx4.SQL.Clear;
               DMFAST.QAlx4.SQL.Add(' SELECT VWCTACOR.DESCBANCO, ABBANCO.SALDOINI FROM ABBANCO ');
               DMFAST.QAlx4.SQL.Add(' LEFT JOIN VWCTACOR ON VWCTACOR.COD_CTACOR = ABBANCO.COD_CTACOR ');
               DMFAST.QAlx4.SQL.Add(' WHERE ABBANCO.COD_ABBANCO IN ('+xAbBancos+')');
               DMFAST.QAlx4.SQL.Add(' ORDER BY DESCBANCO ');
               DMFAST.QAlx4.Open;
               DMFAST.QAlx4.First;

               AdicionaTmp('', xQuery.FieldByName('DESCBANCO').AsString, xQuery.FieldByName('VALOR').AsCurrency, xQuery.FieldByName('OPERACAO').AsString);

               xQuery.Next;
           end;
       end//
       else begin
       	while not xQuery.Eof do
           begin
               xRetornoTotalizador := xQuery.FieldByName('CLASSIFICACAO').AsString;

               //se não for totalizador continuar no loop
               while not VerificaTotalizadora(xRetornoTotalizador) do
               begin
                   xRetornoTotalizador := RetornaTotalizador(xQuery.FieldByName('CLASSIFICACAO').AsString);
               end;

               //Edmar - 22/01/2015 - Verifica qual relatório está gerando e chama procedimentos e parametros diferentes
				//xTotalizadora, xClassificacaoPlncta, xBanco: String; xDescMov: String; xCobranca: String; xValor: Real; xOperacao: String
               if FMenu.XTipoRel = 'CTABCPLNCTA' then//Rel. Cta. Receber Plano Conta
               begin
               	//Diferentes parametros para relatorio do tipo analitico e sintetico
               	if rgTipoRel.ItemIndex = 0 then//analitico
                   	AdicionaTmpTotalizadores(xRetornoTotalizador, xQuery.FieldByName('CLASSIFICACAO').AsString, '',
                           xQuery.FieldByName('HISTORICO').AsString, xQuery.FieldByName('PAGAMENTO').AsString,
                               xQuery.FieldByName('VALOR').AsCurrency, '', '')
                   else//sintetico
                   	AdicionaTmpTotalizadores(xRetornoTotalizador, xQuery.FieldByName('CLASSIFICACAO').AsString, '',
                       	'', '', xQuery.FieldByName('VALOR').AsCurrency, '', '');
               end
               else
               	if FMenu.XTipoRel = 'RELBCPLNCTA' then//Rel. Banco e Plano de Conta
						AdicionaTmpTotalizadores(xRetornoTotalizador, xQuery.FieldByName('CLASSIFICACAO').AsString, xQuery.FieldByName('DESCBANCO').AsString,
                       	xQuery.FieldByName('HISTORICO').AsString, xQuery.FieldByName('PAGAMENTO').AsString,
                       		xQuery.FieldByName('VALOR').AsCurrency, xQuery.FieldByName('OPERACAO').AsString, xQuery.FieldByName('DTVENC').AsString)
	               	else
               		AdicionaTmp(xRetornoTotalizador, xQuery.FieldByName('DESCBANCO').AsString, xQuery.FieldByName('VALOR').AsCurrency, '');
               //
               
               xQuery.Next;
           end;
       end;
   except
   	On E : Exception do
       begin
      		Raise Exception.Create(E.Message);
       end;
   end;
end;

//Edmar - 09/01/2015 - Procedimento auxiliar para remover os registro contidos na tabela TMP
procedure TFRelBancoPlanoContas.RemoveTMP;
begin
  	DMMACS.TMP.Close;
  	DMMACS.TMP.SQL.Clear;
  	DMMACS.TMP.SQL.Add(' DELETE FROM TMP ');
  	DMMACS.TMP.ExecSQL;

  	xCodTmp := 0;

	try
  		DMMACS.Transaction.CommitRetaining;
  	except
  		Raise Exception.Create('Não foi possível remover os dados da tabela TMP. Favor reiniciar o sistema.');
  		DMMACS.Transaction.RollbackRetaining;
  	end;
end;

procedure TFRelBancoPlanoContas.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
	try
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       //Edmar - 16/01/2015 - Verifica se o abbanco já está marcado ou não
       if DMESTOQUE.Alx1.FieldByName('MARK').AsString = 'X' then
           MDO.Query.SQL.Add(' UPDATE ABBANCO SET ABBANCO.MARK = '''' WHERE ABBANCO.COD_ABBANCO = :ABBANCO ')
       else
           MDO.Query.SQL.Add(' UPDATE ABBANCO SET ABBANCO.MARK = ''X'' WHERE ABBANCO.COD_ABBANCO = :ABBANCO ');

       MDO.Query.ParamByName('ABBANCO').AsInteger := DMESTOQUE.Alx1.FieldByName('COD_ABBANCO').AsInteger;
       MDO.Query.ExecSQL;

       MDO.Transac.CommitRetaining;

       BuscaPeriodos;
   except
   	Mensagem(' I N F O R M A Ç Ã O ', 'Não foi possível marcar o período. Por favor, reinicie o sistema e tente novamente.', '', 1, 1, False, 'I');
   	MDO.Transac.RollbackRetaining;
   end;
end;

procedure TFRelBancoPlanoContas.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
	if DMESTOQUE.Alx1.FieldByName('MARK').AsString = 'X' then
   begin
   	DBGrid2.Canvas.Font.Color := clRed;
    	DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;

   DBGrid2.Canvas.FillRect(Rect);
   DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.Columns[datacol].Field, State);
end;

procedure TFRelBancoPlanoContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  	//Edmar - 16/01/2015 - Quando fechar o formulário, desmarca todos os periodos
	try
   	MDO.Query.Close;
       MDO.Query.SQL.Clear;
       MDO.Query.SQL.Add(' UPDATE ABBANCO SET ABBANCO.MARK = '''' ');
       MDO.Query.ExecSQL;

       MDO.Transac.CommitRetaining;
   except
   	MDO.Transac.RollbackRetaining;
   end;
  inherited;   
end;

//Edmar - 21/01/2015 - Busca os dados de projeção futura do relatório de crédito/débito
procedure TFRelBancoPlanoContas.ProjecaoFutura;
begin
   try
		//Listagem das parcelas
   	DMFAST.QAlx.Close;
   	DMFAST.QAlx.SQL.Clear;
   	DMFAST.QAlx.SQL.Add(' SELECT VWPARCR.NUMPARC PARCELA, VWPARCR.NOME, VWPARCR.HISTORICO, VWPARCR.VALOR FROM VWPARCR WHERE VWPARCR.FECH = ''N'' ORDER BY VWPARCR.DTVENC ');
   	DMFAST.QAlx.Open;

       dbProjParcelas.DataSet := DMFAST.QAlx;

       //Listagem do Estoque
       DMFAST.QAlx1.Close;
       DMFAST.QAlx1.SQL.Clear;
       DMFAST.QAlx1.SQL.Add(' SELECT VWSIMILAR.DESCRICAO, (VWSIMILAR.VENDVARV * VWSIMILAR.ESTFISICO) TOTAL FROM VWSIMILAR WHERE (VWSIMILAR.ESTFISICO > 0) AND (VWSIMILAR.ATIVO = ''S'') ');
       DMFAST.QAlx1.Open;

       dbProjEstoque.DataSet := DMFAST.QAlx1;
   except

   end;
end;

//Edmar - 22/01/2015 - Metodo auxiliar para adicionar os registros na tabela TMP, quando relatorio deve mostrar o totalizador
//xTotalizadora é o plano de conta totalizador da parcela
//xClassificacaoPlncta é o plano de conta da parcela
//xBanco é o banco gerador da movimentação (cada banco tem uma coluna espefica para adicionar o valor da movimentação)
//xDescMov é a descrição da movimentação ou parcela cr
//xCobranca forma de pagamento usado na movimentação ou parcela
//xValor valor da movimentação ou parcela
//xOperacao se é entrada ou saída (apenas para relatorio de banco e plano de conta)
procedure TFRelBancoPlanoContas.AdicionaTmpTotalizadores(xTotalizadora,
  xClassificacaoPlncta, xBanco: String; xHistorico: String;
  xCobranca: String; xValor: Real; xOperacao: String; XDataVencimento: String);
var
	xValorTrocaSinal: Real;
begin
   //Edmar - 22/01/2015 - Descrição das operações que devem ser realizadas:
   //Verifica se o totalizador que foi passado como parametro já não está cadastrado na tabela tmp
   //Se estiver, atualiza o valor total da conta
   //se não estiver, é necessário inclui-la
   //

	xCodTmp := xCodTmp + 1;

	//*******************************************************************//
   //********** Tratamento para Plano de Conta Totalizador *************//
   //*******************************************************************//

   //Verifica se a totalizadora já não está adicionada na tabela TMP
   MDO.Query.Close;
   MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add(' SELECT TMP.COD_TMP FROM TMP WHERE TMP.DESC2 = :TOT ');
   MDO.Query.ParamByName('TOT').AsString := xTotalizadora;
   MDO.Query.Open;

   //Se não estiver vazio, apenas atualiza o valor total da conta
   if not MDO.Query.IsEmpty then
   begin
       MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;

       if xOperacao = 'SAIDA' then
			MDO.QAlx1.SQL.Add(' UPDATE TMP SET TMP.VLR1 = TMP.VLR1 - :VLR WHERE TMP.COD_TMP = :COD ')
       else
       	MDO.QAlx1.SQL.Add(' UPDATE TMP SET TMP.VLR1 = TMP.VLR1 + :VLR WHERE TMP.COD_TMP = :COD ');
           
       MDO.QAlx1.ParamByName('VLR').AsCurrency := xValor;
       MDO.QAlx1.ParamByName('COD').AsInteger := MDO.Query.FieldByName('COD_TMP').AsInteger;
   end
   else begin//se estiver vazio, inclui o totalizador e seu valor
       MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;
       MDO.QAlx1.SQL.Add(' INSERT INTO TMP (TMP.COD_TMP, TMP.DESC2, TMP.VLR1, TMP.VLR16) VALUES (:COD, :TOT, :VLR, :TOT_VLR) ');
       MDO.QAlx1.ParamByName('COD').AsInteger := xCodTmp;
       MDO.QAlx1.ParamByName('TOT').AsString := xTotalizadora;

       //Edmar - 23/01/2015 - Se a operação for uma saida, inverte o sinal do valor
       //para totalizar corretamente
       if xOperacao = 'SAIDA' then
			xValorTrocaSinal := xValor * -1
       else
       	xValorTrocaSinal := xValor;

       MDO.QAlx1.ParamByName('VLR').AsCurrency := xValorTrocaSinal;
       MDO.QAlx1.ParamByName('TOT_VLR').AsString := '1';//sinaliza que é uma totalizadora

       xCodTmp := xCodTmp + 1;
   end;
   MDO.QAlx1.ExecSQL;
   //*****************************************************************//
   //**************** Finaliza tratamento totalizadora ***************//
   //*****************************************************************//

   //

   //*************************************************************************//
   //**************** Tratamento para Plano de Conta Filho *******************//
   //*************************************************************************//

   //Verifica se o plano de conta filho já não está adicionado na tabela tmp
   MDO.Query.Close;
   MDO.Query.SQL.Clear;
   MDO.Query.SQL.Add(' SELECT TMP.COD_TMP FROM TMP WHERE TMP.DESC2 = :CLASS ');
   MDO.Query.ParamByName('CLASS').AsString := xClassificacaoPlncta;
   MDO.Query.Open;

   //Edmar - 23/01/2015 - Se for relatorio de banco e plano de conta
   //usar inserção diferente para o plano de conta filho.
   //cada banco (ilse e zanette) deve ter uma coluna unica, assim, cada um terá um totalizador diferente
   if FMenu.XTipoRel = 'RELBCPLNCTA' then
   begin
   	//se não estiver vazio, apenas atualiza o plano de conta
       if not MDO.Query.IsEmpty then
       begin
           MDO.QAlx1.Close;
           MDO.QAlx1.SQL.Clear;

           if xOperacao = 'SAIDA' then
               MDO.QAlx1.SQL.Add(' UPDATE TMP SET TMP.VLR2 = TMP.VLR2 - :ILSE, TMP.VLR3 = TMP.VLR3 - :ZANETTE WHERE TMP.COD_TMP = :COD ')
           else
               MDO.QAlx1.SQL.Add(' UPDATE TMP SET TMP.VLR2 = TMP.VLR2 + :ILSE, TMP.VLR3 = TMP.VLR3 + :ZANETTE WHERE TMP.COD_TMP = :COD ');

           if xBanco = 'ZANETTE' then
           begin
				MDO.QAlx1.ParamByName('ZANETTE').AsCurrency := xValor;
           	MDO.QAlx1.ParamByName('ILSE').AsCurrency := 0;               
           end
           else begin
           	MDO.QAlx1.ParamByName('ILSE').AsCurrency := xValor;
				MDO.QAlx1.ParamByName('ZANETTE').AsCurrency := 0;
           end;
           
           MDO.QAlx1.ParamByName('COD').AsInteger := MDO.Query.FieldByName('COD_TMP').AsInteger;
       end
       else begin//se estiver vazio, será necessário incluir esse plano de conta
           MDO.QAlx1.Close;
           MDO.QAlx1.SQL.Clear;
           MDO.QAlx1.SQL.Add(' INSERT INTO TMP (TMP.COD_TMP, TMP.DESC2, TMP.VLR2, TMP.VLR3) VALUES (:COD, :TOT, :ILSE, :ZANETTE) ');
           MDO.QAlx1.ParamByName('COD').AsInteger := xCodTmp;
           MDO.QAlx1.ParamByName('TOT').AsString := xClassificacaoPlncta;

           //Edmar - 23/01/2015 - Se a operação for uma saida, inverte o sinal do valor
           //para totalizar corretamente
           if xOperacao = 'SAIDA' then
               xValorTrocaSinal := xValor * -1
           else
               xValorTrocaSinal := xValor;

           if xBanco = 'ZANETTE' then
           begin
				MDO.QAlx1.ParamByName('ZANETTE').AsCurrency := xValorTrocaSinal;
           	MDO.QAlx1.ParamByName('ILSE').AsCurrency := 0;               
           end
           else begin
           	MDO.QAlx1.ParamByName('ILSE').AsCurrency := xValorTrocaSinal;
				MDO.QAlx1.ParamByName('ZANETTE').AsCurrency := 0;
           end;               

           xCodTmp := xCodTmp + 1;
       end;
   end
   else begin
   	//se não estiver vazio, apenas atualiza o plano de conta
       if not MDO.Query.IsEmpty then
       begin
           MDO.QAlx1.Close;
           MDO.QAlx1.SQL.Clear;

           if xOperacao = 'SAIDA' then
               MDO.QAlx1.SQL.Add(' UPDATE TMP SET TMP.VLR1 = TMP.VLR1 - :VLR WHERE TMP.COD_TMP = :COD ')
           else
               MDO.QAlx1.SQL.Add(' UPDATE TMP SET TMP.VLR1 = TMP.VLR1 + :VLR WHERE TMP.COD_TMP = :COD ');

           MDO.QAlx1.ParamByName('VLR').AsCurrency := xValor;
           MDO.QAlx1.ParamByName('COD').AsInteger := MDO.Query.FieldByName('COD_TMP').AsInteger;
       end
       else begin//se estiver vazio, será necessário incluir esse plano de conta
           MDO.QAlx1.Close;
           MDO.QAlx1.SQL.Clear;
           MDO.QAlx1.SQL.Add(' INSERT INTO TMP (TMP.COD_TMP, TMP.DESC2, TMP.VLR1) VALUES (:COD, :TOT, :VLR) ');
           MDO.QAlx1.ParamByName('COD').AsInteger := xCodTmp;
           MDO.QAlx1.ParamByName('TOT').AsString := xClassificacaoPlncta;

           //Edmar - 23/01/2015 - Se a operação for uma saida, inverte o sinal do valor
           //para totalizar corretamente
           if xOperacao = 'SAIDA' then
               xValorTrocaSinal := xValor * -1
           else
               xValorTrocaSinal := xValor;

           MDO.QAlx1.ParamByName('VLR').AsCurrency := xValorTrocaSinal;

           xCodTmp := xCodTmp + 1;
       end;
   end;
   
   MDO.QAlx1.ExecSQL;
   //*****************************************************************//
   //*********** Finaliza tratamento plano de conta filho ************//
   //*****************************************************************//
   //

   
	if FMenu.XTipoRel = 'CTABCPLNCTA' then
   begin
   	try
           //Incluir a parcela na tabela tmp apenas quando
           //o relatorio for analitico
           if xHistorico <> '' then
           begin
               //Insere o registro da parcela na tabela tmp (RELATORIO ANALITICO)
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' INSERT INTO TMP (TMP.COD_TMP, TMP.DESC500, TMP.DESC3, TMP.VLR1) VALUES ');
               MDO.Query.SQL.Add(' (:COD, :HISTORICO, :COBRANCA, :VALOR) ');
               MDO.Query.ParamByName('COD').AsInteger := xCodTmp;
               MDO.Query.ParamByName('HISTORICO').AsString := xHistorico;
               MDO.Query.ParamByName('COBRANCA').AsString := xCobranca;
               MDO.Query.ParamByName('VALOR').AsCurrency := xValor;
	           	MDO.Query.ExecSQL;
           end;

           MDO.Transac.CommitRetaining;
       except
       	On E : Exception do
           begin
           	Raise Exception.Create(E.Message);
               MDO.Transac.RollbackRetaining;
           end;
       end;
   end;

   if FMenu.XTipoRel = 'RELBCPLNCTA' then
   begin
   	try
           //*************************************************************************//
           //*********** Tratamento para incluir as movimentações no TMP *************//
           //*************************************************************************//
           if (xHistorico <> '') AND (rgTipoRel.ItemIndex = 0) then
           begin
               //Insere o registro da parcela na tabela tmp (RELATORIO ANALITICO)
               MDO.Query.Close;
               MDO.Query.SQL.Clear;
               MDO.Query.SQL.Add(' INSERT INTO TMP (TMP.COD_TMP, TMP.DESC500, TMP.DESC3, TMP.DESC2, TMP.DATA1, TMP.VLR2, TMP.VLR3) ');
               MDO.Query.SQL.Add(' VALUES          (:COD,        :HISTORICO,  :COBRANCA, :OPERACAO, :VENC,     :ILSE,    :ZANETTE) ');
               MDO.Query.ParamByName('COD').AsInteger := xCodTmp;
               MDO.Query.ParamByName('HISTORICO').AsString := xHistorico;
               MDO.Query.ParamByName('COBRANCA').AsString := xCobranca;
               MDO.Query.ParamByName('OPERACAO').AsString := xOperacao;
               MDO.Query.ParamByName('VENC').AsString := XDataVencimento;               
               
               if xBanco = 'ZANETTE' then
               	MDO.Query.ParamByName('ZANETTE').AsCurrency := xValor
               else
               	MDO.Query.ParamByName('ILSE').AsCurrency := xValor;

	           	MDO.Query.ExecSQL;
           end;

           MDO.Transac.CommitRetaining;
       except
       	On E : Exception do
           begin
           	Raise Exception.Create(E.Message);
               MDO.Transac.RollbackRetaining;
           end;
       end;   
   end;
end;

end.


