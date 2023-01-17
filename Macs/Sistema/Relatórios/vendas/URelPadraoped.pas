unit URelPadraoped;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadraoRelatorio, FR_DSet, FR_DBSet, FR_Class, TFlatHintUnit, StdCtrls,
  Buttons, jpeg, ExtCtrls, UFrmBusca, Mask, backup, DrLabel;

type
  TFRelPadraoPed = class(TFPadraoRelatorio)
    BackupFile1: TBackupFile;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataIni: TMaskEdit;
    EdDataFim: TMaskEdit;
    RGESCOLHA: TRadioGroup;
    RGOrdem: TRadioGroup;
    FrmPessoaIni: TFrmBusca;
    FrmVendIni: TFrmBusca;
    FrmVendFim: TFrmBusca;
    FrmFormPag: TFrmBusca;
    PItensDevolvidos: TPanel;
    Label5: TLabel;
    CBItensDev: TCheckBox;
    GBPagamento: TGroupBox;
    RBCarteira: TRadioButton;
    RBCartao: TRadioButton;
    RBBanco: TRadioButton;
    RBCheque: TRadioButton;
    RBTodos: TRadioButton;
    GPFrmPag: TGroupBox;
    RadioButton1: TRadioButton;
    RBFPPrazo: TRadioButton;
    RBFPVista: TRadioButton;
    RadioButton4: TRadioButton;
    RBFPTodos: TRadioButton;
    CBValor: TCheckBox;
    PEstadosMunicipios: TPanel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    EdDtIni: TMaskEdit;
    EdDtFim: TMaskEdit;
    RGFiltraData: TRadioGroup;
    RGTipoFiltro: TRadioGroup;
    FrmEstadoInicial: TFrmBusca;
    FrmMunicipio: TFrmBusca;
    FrmProdutoRegiao: TFrmBusca;
    pdat: TGroupBox;
    procedure FrmPessoaIniBTNMINUSClick(Sender: TObject);
    procedure FrmPessoaIniBTNOPENClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FrmVendIniBTNMINUSClick(Sender: TObject);
    procedure FrmVendFimBTNMINUSClick(Sender: TObject);
    procedure FrmVendIniBTNOPENClick(Sender: TObject);
    procedure FrmVendFimBTNOPENClick(Sender: TObject);
    procedure FrmPessoaIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmVendIniEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmVendFimEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmFormPagBTNMINUSClick(Sender: TObject);
    procedure FrmFormPagBTNOPENClick(Sender: TObject);
    procedure FrmFormPagEDCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrmPessoaIniEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmFormPagEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmVendIniEDCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrmEstadoInicialBTNOPENClick(Sender: TObject);
    procedure FrmMunicipioBTNOPENClick(Sender: TObject);
    procedure FrmProdutoRegiaoBTNOPENClick(Sender: TObject);
    procedure FrmEstadoInicialBTNMINUSClick(Sender: TObject);
    procedure FrmMunicipioBTNMINUSClick(Sender: TObject);
    procedure FrmProdutoRegiaoBTNMINUSClick(Sender: TObject);
    
    
  private
    { Private declarations }
    Procedure PrepareImp;//verifica qual o tipo de relatório pedido e executa sql
    
   //Imprime Relatório de Vendas de Forma Sintética
   Procedure ImpPVSint;
   //Imprime Relatório de Vendas de Forma Sintética
   Procedure ImpPVSintpParaCliente;
   //Imprime Relatório de Vendas de Forma Sintética
   Procedure ImpPVSintDia;
   //Imprime Relatório de Vendas de Forma Sintética po Cliente
   Procedure ImpPVSintCli;
   //Imprime Relatório de Compras de Forma Sintética
   Procedure ImpPCSint;
	//Imprime Relatório de Devoluções de Forma Sintética
	Procedure ImpPCDevSint;
   //Imprime Relatório de Vendas de Forma Analítica agrupado por Clientes
   Procedure ImpPVAnalitCli;
   //Imprime Relatório de Vendas de Forma Analítica agrupado por Clientes
   Procedure ImpPVAnalitCliProd;
   //Imprime Relatório de Compras de Forma Analítica agrupado por Fornecedores
   Procedure ImpPCAnalitFor;
   //Imprime Relatório de Vendas de Forma Sintética agrupado por Forma de Pagamentos
   Procedure ImpPVSintFormPag;
	//Imprime Relatório de Vendas de Forma Analítica agrupado por Clientes e com qtd de itens devolvidos
	Procedure ImpPVAnalitCliDev;
   //Imprime Relatório de Ordem de Serviço com todos os produtos da mesma, agrupado por cliente e ordenado por documento
   procedure ImpRelProdOrdem;

   //Limpa Sql da Tabela
   Procedure LimpaSQL;
   //Insere Filtro por Data
   Procedure FiltroData;
   //Insere Filtr por Cliente
   Procedure FiltroCliente;
	//Insere Filtr por FORNECEDOR
	Procedure FiltroFornec;
   //Insere filtro por vendedor
   Procedure FiltroVend;
	//Insere filtro por forma de pagamento
	Procedure filtroFormPag;
   //Insere filtro por situacao de pedido
   Procedure FiltroSTOP;
	//Insere Ordenação
   Procedure InsertOrdem;
   //Abre Tabela
   Function AbreTabela: Boolean;
	//Imprime Relatório de Orçamentos de Forma Analítica agrupado por Clientes
	Procedure ImpOrc;
	//Imprime Relatório de Licitações de Forma Analítica agrupado por Clientes
	Procedure ImpLicita;
   // Verifica as formas de cobrança para inserir no relatorio
   Procedure FiltroCobranca;
   procedure FiltroFormaPagamento;
   procedure FrmVendFimEDCodigoKeyPress(Sender: TObject; var Key: Char);
   //Paulo 20/03/2012: gera relatório de vendas por região
   Procedure ImpRelRegiaoVenda;
   //Paulo 21/03/2012: Gera relatório de compra por regiões
	Procedure ImpRelRegiaoCompra;
   //18/05/2012 - Mauro - Imprime Relatório de Vendas com Despesas
   Procedure ImpRelPedVendaDespesas;
  public
    { Public declarations }
  end;

var
  FRelPadraoPed: TFRelPadraoPed;
  XPESSOAINI, XPESSOAFIM: STRING;
  XVENDINI, XVENDFIM: STRING;
  XCOD_FORMPAG: String;
  XCod_Cliente: Integer;
  XCOD_ESTADO, XCOD_MUNICIPIO, XCOD_PROD:Integer;
implementation

uses UMenu, UDMEstoque, UDMConta, UDMPessoa, UFORNECEDOR, UCliente,
  AlxMessage, Alxor32, UFuncionario, UDMMacs, UDMFinanc, UFormPag, DB,
  Math, UDMGEOGRAFIA, UCadCidade, UCadEstado, UProduto;

{$R *.DFM}

//18/05/2012 - Mauro - Imprime Relatório de Vendas com Despesas
Procedure TFRelPadraoPed.ImpRelPedVendaDespesas;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.sql.Add('select vwpedv.numped, vwpedv.dtpedven as DataPed,  vwpedv.nomecli,');
   DMESTOQUE.TRel.sql.Add('formpag.descricao as Pagamento, despadic.despesa, despadic.vlrtotfin, vwpedv.vendedor');
   DMESTOQUE.TRel.sql.Add('from despadic');
   DMESTOQUE.TRel.sql.Add('left join vwpedv on despadic.cod_gerador = vwpedv.cod_pedvenda');
   DMESTOQUE.TRel.sql.Add('left join formpag on vwpedv.cod_pedvenda = formpag.cod_formpag');
   DMESTOQUE.TRel.sql.Add('left join funcionario on vwpedv.cod_vendedor = funcionario.cod_func');
   //FILTRA DATA
   If (EdDataIni.Text<>'  /  /    ') And (EdDataFim.Text<>'  /  /    ')
   Then Begin
      DMESTOQUE.TRel.SQL.Add(' Where ((vwpedv.dtpedven>=:DATA1) And (vwpedv.dtpedven<=:DATA2))');
      DMESTOQUE.TRel.ParamByName('DATA1').AsDate:=StrToDAte(EdDataIni.Text);
      DMESTOQUE.TRel.ParamByName('DATA2').AsDate:=StrToDAte(EdDataFim.Text);
   End;
   //FILTRA CLIENTE
   If XCod_Cliente<>-1
   Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
       If (FMenu.TIPOAUX='VENDA')
       Then Begin
			  DMESTOQUE.TRel.SQL.Add(' AND (VWPEDV.COD_CLIENTE=:CLIENTE) ');
			  DMESTOQUE.TRel.ParamByName('CLIENTE').AsInteger:=XCod_Cliente;
       end;
   End;
   //FILTRA VENDEDOR
   IF FMenu.TIPOAUX='VENDA'
   Then Begin
		 If (XVENDINI<>'') and (XVENDFIM<>'')
   	 Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		  DMESTOQUE.TRel.SQL.Add(' AND (vwpedv.vendedor Between :PES1 And :PES2)');
       	DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
       	DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
   	 End;
   End;
  //FILTRA COBRANÇA
  // caso a opção de pagamento em banco estiver selecionado
  If RBBanco.Checked = true
  Then Begin
      DMESTOQUE.TRel.SQL.Add(' AND (VWPEDV.COBRANCA = :COBRANCA)');
      DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Banco';
  End;
  // caso a opção de pagamento em cartão estiver selecionado
  If RBCartao.Checked = true
  Then Begin
      DMESTOQUE.TRel.SQL.Add(' AND (VWPEDV.COBRANCA = :COBRANCA)');
      DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Cartao';
  End;
  // caso a opção de pagamento em carteira estiver selecionado
  If RBCarteira.Checked = true
  Then Begin
      DMESTOQUE.TRel.SQL.Add(' AND (VWPEDV.COBRANCA = :COBRANCA)');
      DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Carteira';
  End;
  // caso a opção de pagamento em cheque selecionado
  If RBCheque.Checked = true
  Then Begin
      DMESTOQUE.TRel.SQL.Add(' AND (VWPEDV.COBRANCA = :COBRANCA)');
      DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Cheque';
  End;
  //FILTRA STATUS
  If FMenu.TIPOAUX='VENDA'
  Then Begin
       If RGESCOLHA.ItemIndex=0
       Then Begin//se for pedido apenas relatório de pendentes
   		DMESTOQUE.TRel.SQL.Add(' AND (VWPEDV.SITUACAO='+#39+'ABERTO'+#39+') ');
       End;
       If RGESCOLHA.ItemIndex=1
       Then Begin//se realisar relatório apenas de baixados
   		DMESTOQUE.TRel.SQL.Add(' AND (VWPEDV.SITUACAO='+#39+'FECHADO'+#39+') ');
       End; 
  End
  Else Begin
       If RGESCOLHA.ItemIndex=0
       Then Begin//se for pedido apenas relatório de pendentes
   		DMESTOQUE.TRel.SQL.Add(' AND (VWPEDV.SITUACAO='+#39+'ABERTO'+#39+') ');
       End;
       If RGESCOLHA.ItemIndex=1
       Then Begin//se realisar relatório apenas de baixados
   		DMESTOQUE.TRel.SQL.Add(' AND (VWPEDV.SITUACAO='+#39+'FECHADO'+#39+') ');
       End;
   End;

   DMESTOQUE.TRel.Open;

   If AbreTabela=True
   Then Begin
      FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrFPedVendaDespesas.frf');
      FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Orçamentos de Forma Analítica agrupado por Clientes
Procedure TFRelPadraoped.ImpOrc;
Var
	XCOD_TMP: Integer;
Begin

	//zera tabela temporaria
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add('delete from tmp');
   DMMACS.TALX.ExecSQL;
   DMMACS.Transaction.CommitRetaining;

   DMMACS.TMP.Close;
   DMMACS.TMP.SQL.Clear;
	DMMACS.TMP.SQL.Add(' select * From tmp ');
	DMMACS.TMP.Open;

   LimpaSQL;
{   DMESTOQUE.TRel.sql.Add('  Select orcamento.numorc, orcamento.tipo, SUBPRODUTO.CONTRINT, orcamento.dtabert , subproduto.codcomposto, itprodorc.qtd, subproduto.descricao as similar, ');
   DMESTOQUE.TRel.sql.Add('  subproduto.marca, itprodorc.vlrunit, itprodorc.desconto, itprodorc.vlrtotal AS TOTPROD, orcamento.vlrtotal AS TOTVENDA, orcamento.nomecli, orcamento.cpfcnpj, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.sql.Add('  funcionario.cod_interno as CI_FUNC, unidade.sigla_unid, pessoa.nome as funcionario, subproduto.codprodfabr ');
   DMESTOQUE.TRel.sql.Add('  From itprodorc ');
   DMESTOQUE.TRel.sql.Add('  Left Join estoque on itprodorc.cod_estoque = estoque.cod_estoque            ');
   DMESTOQUE.TRel.sql.Add('  Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TRel.sql.Add('  Left Join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.sql.Add('  Left join unidade on Subproduto.cod_unidvenda = unidade.cod_unidade ');
   DMESTOQUE.TRel.sql.Add('  Left Join orcamento on itprodorc.cod_orcamento = orcamento.cod_orcamento ');
   DMESTOQUE.TRel.sql.Add('  left join funcionario on orcamento.cod_vendedor = funcionario.cod_func ');
   DMESTOQUE.TRel.sql.Add('  Left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa ');        }
   DMESTOQUE.TRel.sql.Add('  Select * from Orcamento ');
   DMESTOQUE.TRel.sql.Add('  Left Join formpag on orcamento.cod_formpag = formpag.cod_formpag ');
   DMESTOQUE.TRel.sql.Add('  Where (formpag.COD_LOJA=:CODLOJA) ');
	DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   FiltroCliente;
   FiltroData;
   FiltroVend;
   DMESTOQUE.TRel.SQL.Add(' Order By orcamento.nomecli, orcamento.numorc');
   If AbreTabela=True
   Then Begin
       XCOD_TMP:=1;
       DMESTOQUE.TRel.First;
       While not DMESTOQUE.TRel.Eof Do
       Begin
       	////////////////////////////////////
       	//SELECIONA OS PRODUTOS DE ORÇÃMENTO
           ////////////////////////////////////
           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
   		DMESTOQUE.Alx.sql.Add('  Select SUBPRODUTO.CONTRINT, subproduto.codcomposto, itprodorc.qtd, subproduto.descricao as NOMEPRODUTO, ');
   		DMESTOQUE.Alx.sql.Add('  subproduto.marca, itprodorc.vlrunit, itprodorc.desconto, itprodorc.vlrtotal AS TOTPROD, ');
   		DMESTOQUE.Alx.sql.Add('  subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   		DMESTOQUE.Alx.sql.Add('  unidade.sigla_unid, subproduto.codprodfabr ');
   		DMESTOQUE.Alx.sql.Add('  From itprodorc ');
   		DMESTOQUE.Alx.sql.Add('  Left Join estoque on itprodorc.cod_estoque = estoque.cod_estoque            ');
   		DMESTOQUE.Alx.sql.Add('  Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   		DMESTOQUE.Alx.sql.Add('  Left Join produto on subproduto.cod_produto = produto.cod_produto ');
   		DMESTOQUE.Alx.sql.Add('  Left join unidade on Subproduto.cod_unidvenda = unidade.cod_unidade ');
   		DMESTOQUE.Alx.sql.Add('  Where itprodorc.cod_orcamento=:ORCAMENTO ');
			DMESTOQUE.Alx.ParamByName('ORCAMENTO').AsString:=DMESTOQUE.TRel.FieldByName('COD_ORCAMENTO').AsString;
           DMESTOQUE.Alx.Open;
           If not DMESTOQUE.Alx.IsEmpty
           Then Begin
               DMESTOQUE.Alx.First;
               While not DMESTOQUE.Alx.Eof do
               Begin
               	DMMACS.TMP.Insert;
               	DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCOD_TMP;
               	DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ORCAMENTO').AsInteger;
               	DMMACS.TMP.FieldByName('INT2').AsInteger:=DMESTOQUE.Alx.FieldByName('CONTRINT').AsInteger;
               	DMMACS.TMP.FieldByName('INT3').AsInteger:=1;
               	DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.Alx.FieldByName('SIMILAR').AsString;
               	DMMACS.TMP.FieldByName('DESC2').AsString:=DMESTOQUE.Alx.FieldByName('MARCA').AsString;
               	DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
               	DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.Alx.FieldByName('VLRUNIT').AsCurrency;
               	DMMACS.TMP.FieldByName('VLR3').AsCurrency:=DMESTOQUE.Alx.FieldByName('DESCONTO').AsCurrency;
               	DMMACS.TMP.FieldByName('VLR4').AsCurrency:=DMESTOQUE.Alx.FieldByName('TOTPROD').AsCurrency;
               	DMMACS.TMP.Post;
               	XCOD_TMP:=XCOD_TMP+1;
                   DMESTOQUE.Alx.Next;
               End;
           End;
       	////////////////////////////////////
       	//SELECIONA OS SERVIÇOS DE ORÇÃMENTO
           ////////////////////////////////////
           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
   		DMESTOQUE.Alx.sql.Add(' Select subservico.cod_interno, itservorc.qtd, subservico.descricao as servico, ');
   		DMESTOQUE.Alx.sql.Add('   itservorc.vlrunit, itservorc.desconto, itservorc.vlrtotal, unidade.sigla_unid ');
   		DMESTOQUE.Alx.sql.Add('   From itservorc ');
   		DMESTOQUE.Alx.sql.Add('   Left Join subservico on itservorc.cod_servico = subservico.cod_subservico ');
   		DMESTOQUE.Alx.sql.Add('   Left join unidade on subservico.cod_unidade = unidade.cod_unidade ');
   		DMESTOQUE.Alx.sql.Add('  Where itservorc.cod_orcamento=:ORCAMENTO ');
			DMESTOQUE.Alx.ParamByName('ORCAMENTO').AsString:=DMESTOQUE.TRel.FieldByName('COD_ORCAMENTO').AsString;
           DMESTOQUE.Alx.Open;
           If not DMESTOQUE.Alx.IsEmpty
           Then Begin
               DMESTOQUE.Alx.First;
               While not DMESTOQUE.Alx.Eof do
               Begin
               	DMMACS.TMP.Insert;
               	DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCOD_TMP;
               	DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ORCAMENTO').AsInteger;
               	DMMACS.TMP.FieldByName('INT2').AsInteger:=DMESTOQUE.Alx.FieldByName('cod_interno').AsInteger;
               	DMMACS.TMP.FieldByName('INT3').AsInteger:=2;
               	DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.Alx.FieldByName('servico').AsString;
               	DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
               	DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.Alx.FieldByName('VLRUNIT').AsCurrency;
               	DMMACS.TMP.FieldByName('VLR3').AsCurrency:=DMESTOQUE.Alx.FieldByName('DESCONTO').AsCurrency;
               	DMMACS.TMP.FieldByName('VLR4').AsCurrency:=DMESTOQUE.Alx.FieldByName('vlrtotal').AsCurrency;
               	DMMACS.TMP.Post;
               	XCOD_TMP:=XCOD_TMP+1;
                   DMESTOQUE.Alx.Next;
               End;
           End;
       	/////////////////////////////////////
       	//SELECIONA AS DESEPESAS DE ORÇÃMENTO
           /////////////////////////////////////
           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
   		DMESTOQUE.Alx.sql.Add('  Select despadic.cod_despadic, despadic.qtd, despadic.despesa, despadic.vlrfinal, despadic.vlrtotfin, ');
   		DMESTOQUE.Alx.sql.Add('   despadic.desconto, despadic.marca, despadic.unidade ');
   		DMESTOQUE.Alx.sql.Add('   From despadic ');
   		DMESTOQUE.Alx.sql.Add('   Where (despadic.cod_gerador=:ORCAMENTO) AND (despadic.gerador='+#39+'ORCAMENTO'+#39')');
			DMESTOQUE.Alx.ParamByName('ORCAMENTO').AsString:=DMESTOQUE.TRel.FieldByName('COD_ORCAMENTO').AsString;
           DMESTOQUE.Alx.Open;
           If not DMESTOQUE.Alx.IsEmpty
           Then Begin
               DMESTOQUE.Alx.First;
               While not DMESTOQUE.Alx.Eof do
               Begin
               	DMMACS.TMP.Insert;
               	DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCOD_TMP;
               	DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.TRel.FieldByName('COD_ORCAMENTO').AsInteger;
               	DMMACS.TMP.FieldByName('INT2').AsInteger:=DMESTOQUE.Alx.FieldByName('cod_interno').AsInteger;
               	DMMACS.TMP.FieldByName('INT3').AsInteger:=2;
               	DMMACS.TMP.FieldByName('DESC1').AsString:=DMESTOQUE.Alx.FieldByName('servico').AsString;
               	DMMACS.TMP.FieldByName('VLR1').AsCurrency:=DMESTOQUE.Alx.FieldByName('QTD').AsCurrency;
               	DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.Alx.FieldByName('VLRUNIT').AsCurrency;
               	DMMACS.TMP.FieldByName('VLR3').AsCurrency:=DMESTOQUE.Alx.FieldByName('DESCONTO').AsCurrency;
               	DMMACS.TMP.FieldByName('VLR4').AsCurrency:=DMESTOQUE.Alx.FieldByName('vlrtotal').AsCurrency;
               	DMMACS.TMP.Post;
               	XCOD_TMP:=XCOD_TMP+1;
                   DMESTOQUE.Alx.Next;
               End;
           End;
           DMESTOQUE.TRel.Next;
       End;
       DMMACS.Transaction.CommitRetaining;
       //REFAZER FILTRO
   	LimpaSQL;
   	DMESTOQUE.TRel.sql.Add('    Select orcamento.numorc, orcamento.tipo, orcamento.dtabert, orcamento.vlrtotal AS TOTVENDA, ');
   	DMESTOQUE.TRel.sql.Add('      orcamento.nomecli, orcamento.cpfcnpj, funcionario.cod_interno as CI_FUNC, pessoa.nome as funcionario, ');
   	DMESTOQUE.TRel.sql.Add('      tmp.int2 AS CODIGO, tmp.desc1 AS PRODUTO, tmp.desc2 as MARCA, tmp.vlr1 as QTD, tmp.vlr2 AS VLRUNIT, tmp.vlr3 AS DESCONTO, ');
   	DMESTOQUE.TRel.sql.Add('      tmp.vlr4 AS VLRTOTAL ');
   	DMESTOQUE.TRel.sql.Add('      From TMP ');
   	DMESTOQUE.TRel.sql.Add('      Left Join orcamento on tmp.int1 = orcamento.cod_orcamento ');
   	DMESTOQUE.TRel.sql.Add('      left join funcionario on orcamento.cod_vendedor = funcionario.cod_func ');
   	DMESTOQUE.TRel.sql.Add('      Left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa ');
   	DMESTOQUE.TRel.SQL.Add(' Order By orcamento.nomecli, orcamento.numorc');
   	If AbreTabela=True
   	Then Begin
      		FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfOrc_Analit_Cli.frf');
   		FSRel.ShowReport;
   	End;
   End;
End;

//Abre Tabela
Function TFRelPadraoPed.AbreTabela: Boolean;
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

//Insere Ordenação
Procedure TFRelPadraoPed.InsertOrdem;
Begin
	If FMenu.TIPOAUX='VENDA'
   Then Begin
   	case RGOrdem.ItemIndex of
   		0: DMESTOQUE.TRel.SQL.Add(' ORDER BY NOMECLI, NUMPED');
       	1: DMESTOQUE.TRel.SQL.Add(' ORDER BY NUMPED');
       	2: DMESTOQUE.TRel.SQL.Add(' ORDER BY pedvenda.dtpedven, NUMPED ');
       	3: DMESTOQUE.TRel.SQL.Add(' ORDER BY pessoa.nome, NUMPED ');
   	End;
   End
   Else Begin
   	case RGOrdem.ItemIndex of
   		0: DMESTOQUE.TRel.SQL.Add(' ORDER BY PESSOA.NOME, NUMPED');
       	1: DMESTOQUE.TRel.SQL.Add(' ORDER BY NUMPED');
       	2: DMESTOQUE.TRel.SQL.Add(' ORDER BY PEDCOMPRA.DTPEDCOMP, NUMPED ');
       	3: DMESTOQUE.TRel.SQL.Add(' ORDER BY pedcompra.vendedor, NUMPED ');
   	End;
	End;
   {
	If FMenu.TIPOREL='RELPEDFORMPAGf' Then
		DMESTOQUE.TRel.SQL.Add(' ORDER BY formpag.quantparcela, formpag.descricao ');
   If FMenu.TIPOREL='RELPEDANALCLI' Then
	    DMESTOQUE.TRel.SQL.Add(' Order by PEDVENDA.NOMECLI, pedvenda.dtpedven, pedvenda.numped, subproduto.codcomposto ');
	If FMenu.TIPOREL='RELPEDSINTCLI' Then
       DMESTOQUE.TRel.sql.Add(' Order by  pedvenda.numped');}
End;

//Insere filtro por situacao de pedido
Procedure TFRelPadraoPed.FiltroSTOP;
Begin
	If FMenu.TIPOAUX='VENDA'
   Then Begin
		If RGESCOLHA.ItemIndex=0
   	Then Begin//se for pedido apenas relatório de pendentes
   		DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.SITUACAO='+#39+'ABERTO'+#39+') ');
   	End;
   	If RGESCOLHA.ItemIndex=1
   	Then Begin//se realisar relatório apenas de baixados
   		DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.SITUACAO='+#39+'FECHADO'+#39+') ');
   	End;
   End
   Else Begin
		If RGESCOLHA.ItemIndex=0
   	Then Begin//se for pedido apenas relatório de pendentes
   		DMESTOQUE.TRel.SQL.Add(' AND (PEDCOMPRA.SITUACAO='+#39+'ABERTO'+#39+') ');
   	End;
   	If RGESCOLHA.ItemIndex=1
   	Then Begin//se realisar relatório apenas de baixados
   		DMESTOQUE.TRel.SQL.Add(' AND (PEDCOMPRA.SITUACAO='+#39+'FECHADO'+#39+') ');
   	End;
   End;
End;
//Insere filtro por forma de pagamento
Procedure TFRelPadraoPed.filtroFormPag;
Begin
	IF FMenu.TIPOAUX='VENDA'
   Then Begin
		If (XCOD_FORMPAG<>'')
		Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.COD_FORMPAG = :FORMA)');
       	DMESTOQUE.TRel.ParamByName('FORMA').AsString:=XCOD_FORMPAG;
   	End
   End;
	IF FMenu.TIPOAUX='COMPRA'
   Then Begin
		If (XCOD_FORMPAG<>'')
		Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND (PEDCOMPRA.COD_FORMPAG = :FORMA)');
       	DMESTOQUE.TRel.ParamByName('FORMA').AsString:=XCOD_FORMPAG;
   	End
   End;

end;

//Insere filtro por Vendedor
Procedure TFRelPadraoPed.FiltroVend;
Begin
	IF FMenu.TIPOAUX='VENDA'
   Then Begin
		If (XVENDINI<>'') and (XVENDFIM<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND (vwfuncionario.NOME Between :PES1 And :PES2)');
       	DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
       	DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
   	End;
   End;
	IF FMenu.TIPOAUX='COMPRA'
   Then Begin
		If (XVENDINI<>'') and (XVENDFIM<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND (PEDCOMPRA.VENDEDOR Between :PES1 And :PES2)');
       	DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
       	DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
   	End;
   End;
	IF FMenu.TIPOAUX='LICITACAO'
   Then Begin
		If (XVENDINI<>'') and (XVENDFIM<>'')
   	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   		DMESTOQUE.TRel.SQL.Add(' AND (PESSOA.NOME Between :PES1 And :PES2)');
       	DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
       	DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
   	End;
   End;
   If FMenu.TIPOAUX='ORDEM'
   Then Begin
     If (XVENDINI<>'') and (XVENDFIM<>'')
     Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
         DMESTOQUE.TRel.SQL.Add(' AND ( vwfuncionario.nome Between :PES1 And :PES2)');
         DMESTOQUE.TRel.ParamByName('PES1').AsString:=XVENDINI;
         DMESTOQUE.TRel.ParamByName('PES2').AsString:=XVENDFIM;
     End;
   end;
End;

// Verifica as formas de cobranca para inserir no relatorio
Procedure TFRelPadraoPed.FiltroCobranca;
begin
   If (FMenu.TIPOAUX='ORDEM')
   Then Begin
       // caso a opção de pagamento em banco estiver selecionado
       If RBBanco.Checked = true
       Then Begin
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.TIPOPAG = :COBRANCA)');
           DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Banco';
       End;
       // caso a opção de pagamento em cartão estiver selecionado
       If RBCartao.Checked = true
       Then Begin
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.TIPOPAG = :COBRANCA)');
           DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Cartao';
       End;
       // caso a opção de pagamento em carteira estiver selecionado
       If RBCarteira.Checked = true
       Then Begin
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.TIPOPAG = :COBRANCA)');
           DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Carteira';
       End;
       // caso a opção de pagamento em cheque selecionado
       If RBCheque.Checked = true
       Then Begin
           DMESTOQUE.TRel.SQL.Add(' AND (ORDEM.TIPOPAG = :COBRANCA)');
           DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Cheque';
       End;
   End
   Else Begin
   	If(FMENU.TIPOAUX = 'COMPRA')Then Begin
       	// caso a opção de pagamento em banco estiver selecionado
       	If RBBanco.Checked = true
       	Then Begin
           	DMESTOQUE.TRel.SQL.Add(' AND (PEDCOMPRA.COBRANCA = :COBRANCA)');
           	DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Banco';
       	End;
       	// caso a opção de pagamento em cartão estiver selecionado
       	If RBCartao.Checked = true
       	Then Begin
           	DMESTOQUE.TRel.SQL.Add(' AND (PEDCOMPRA.COBRANCA = :COBRANCA)');
           	DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Cartao';
       	End;
       	// caso a opção de pagamento em carteira estiver selecionado
       	If RBCarteira.Checked = true
       	Then Begin
           	DMESTOQUE.TRel.SQL.Add(' AND (PEDCOMPRA.COBRANCA = :COBRANCA)');
           	DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Carteira';
       	End;
       	// caso a opção de pagamento em cheque selecionado
       	If RBCheque.Checked = true
       	Then Begin
           	DMESTOQUE.TRel.SQL.Add(' AND (PEDCOMPRA.COBRANCA = :COBRANCA)');
           	DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Cheque';
       	End;
   	end
   	Else Begin
       	// caso a opção de pagamento em banco estiver selecionado
       	If RBBanco.Checked = true
       	Then Begin
           	DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.COBRANCA = :COBRANCA)');
           	DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Banco';
       	End;
       	// caso a opção de pagamento em cartão estiver selecionado
       	If RBCartao.Checked = true
      	 	Then Begin
           	DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.COBRANCA = :COBRANCA)');
           	DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Cartao';
       	End;
      		// caso a opção de pagamento em carteira estiver selecionado
       	If RBCarteira.Checked = true
       	Then Begin
           	DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.COBRANCA = :COBRANCA)');
           	DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Carteira';
       	End;
       	// caso a opção de pagamento em cheque selecionado
       	If RBCheque.Checked = true
       	Then Begin
           	DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.COBRANCA = :COBRANCA)');
           	DMESTOQUE.TRel.ParamByName('cobranca').AsString := 'Cheque';
       	End;
   	end;
   End;    
end;

// Escolhe a forma de pagamento a vista, a prazo ou todos
Procedure TFRelPadraoPed.FiltroFormaPagamento;
begin
   // caso a forma a vista esteja selecionada
   If RBFPVista.Checked = true
   Then Begin
      DMESTOQUE.TRel.sql.Add(' AND (FORMPAG.DESCRICAO ='+#39+'À VISTA'+#39+')');
   End;
   // caso a opção a prazo esteja selecionada
   If RBFPPrazo.Checked = true
   Then Begin
      DMESTOQUE.TRel.sql.Add(' AND (FORMPAG.DESCRICAO <>'+#39+'À VISTA'+#39+')');
   End;

end;

//Insere Filtr por Cliente
Procedure TFRelPadraoPed.FiltroCliente;
Begin
	If XCod_Cliente<>-1
	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
   	If (FMenu.TIPOAUX='VENDA')
       Then Begin
			DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.COD_CLIENTE=:CLIENTE) ');
			DMESTOQUE.TRel.ParamByName('CLIENTE').AsInteger:=XCod_Cliente;
       End;
   	If (FMenu.TIPOAUX='ORCAMENTO')
       Then Begin
			DMESTOQUE.TRel.SQL.Add(' AND (orcamento.COD_CLIENTE=:CLIENTE) ');
			DMESTOQUE.TRel.ParamByName('CLIENTE').AsInteger:=XCod_Cliente;
       End;
   	If (FMenu.TIPOAUX='LICITACAO')
       Then Begin
			DMESTOQUE.TRel.SQL.Add(' AND (LICITA.COD_CLIENTE=:CLIENTE) ');
			DMESTOQUE.TRel.ParamByName('CLIENTE').AsInteger:=XCod_Cliente;
       End;
       If (FMenu.TIPOAUX='ORDEM')
       Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
           DMESTOQUE.TRel.SQL.Add(' AND (cliente.COD_CLIENTE=:CLIENTE) ');
			DMESTOQUE.TRel.ParamByName('CLIENTE').AsInteger:=XCod_Cliente;
       End;
   End;
End;

//Insere Filtr por FORNECEDOR
Procedure TFRelPadraoPed.FiltroFornec;
Begin
	If (XPessoaIni<>'') and (XPessoaFim<>'')
	Then Begin//se forem informados as duas pessoas a sql deve ser feita entre elas
		DMESTOQUE.TRel.SQL.Add(' AND (PEDCOMPRA.COD_PEDCOMP=:CLIENTE) ');
		DMESTOQUE.TRel.ParamByName('CLIENTE').AsInteger:=XCod_Cliente;
   End;
End;

//Insere Filtro por Data
Procedure TFRelPadraoPed.FiltroData;
Begin
	IF FMenu.TIPOAUX='VENDA'
   Then Begin
		If (EdDataIni.Text<>'  /  /    ') AND (EdDataFim.Text<>'  /  /    ')
		Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMESTOQUE.TRel.SQL.Add(' AND (PEDVENDA.DTPEDVEN Between :Data1 and :Data2) ');
			DMESTOQUE.TRel.ParamByName('Data1').AsDate:=StrToDate(EdDataIni.Text);
			DMESTOQUE.TRel.ParamByName('Data2').AsDate:=StrToDate(EdDataFim.Text);
   	End;
   End;
	IF FMenu.TIPOAUX='COMPRA'
   Then Begin
		If (EdDataIni.Text<>'  /  /    ') AND (EdDataFim.Text<>'  /  /    ')
		Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMESTOQUE.TRel.SQL.Add(' AND (PEDCOMPRA.DTPEDCOMP Between :Data1 and :Data2) ');
			DMESTOQUE.TRel.ParamByName('Data1').AsDate:=StrToDate(EdDataIni.Text);
			DMESTOQUE.TRel.ParamByName('Data2').AsDate:=StrToDate(EdDataFim.Text);
   	End;
   End;
 	If (FMenu.TIPOAUX='ORCAMENTO')
   Then Begin
		If (EdDataIni.Text<>'  /  /    ') AND (EdDataFim.Text<>'  /  /    ')
		Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMESTOQUE.TRel.SQL.Add(' AND (orcamento.dtabert Between :Data1 and :Data2) ');
			DMESTOQUE.TRel.ParamByName('Data1').AsDate:=StrToDate(EdDataIni.Text);
			DMESTOQUE.TRel.ParamByName('Data2').AsDate:=StrToDate(EdDataFim.Text);
   	End;
	End;
 	If (FMenu.TIPOAUX='LICITACAO')
   Then Begin
		If (EdDataIni.Text<>'  /  /    ') AND (EdDataFim.Text<>'  /  /    ')
		Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
			DMESTOQUE.TRel.SQL.Add(' AND (LICITA.dtabert Between :Data1 and :Data2) ');
			DMESTOQUE.TRel.ParamByName('Data1').AsDate:=StrToDate(EdDataIni.Text);
			DMESTOQUE.TRel.ParamByName('Data2').AsDate:=StrToDate(EdDataFim.Text);
   	End;
	End;
 	If (FMenu.TIPOAUX='ORDEM')
   Then Begin
		If (EdDataIni.Text<>'  /  /    ') AND (EdDataFim.Text<>'  /  /    ')
       Then begin
           //filtrando data
           DMESTOQUE.TRel.SQL.Add(' AND (ordem.dtabert Between :Data1 and :Data2) ');
           DMESTOQUE.TRel.ParamByName('Data1').AsDate:=StrToDate(EdDataIni.Text);
           DMESTOQUE.TRel.ParamByName('Data2').AsDate:=StrToDate(EdDataFim.Text);
       end;
   end;
End;

//Limpa Sql da Tabela
Procedure TFRelPadraoPed.LimpaSQL;
Begin
   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
End;

//Imprime Relatório de Vendas de Forma Sintética agrupado por Forma de Pagamentos
Procedure TFRelPadraoped.ImpPVSintFormPag;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.sql.Add('   Select pedvenda.tipo AS OPERACAO, pedvenda.vlrdesp, pedvenda.numped, pedvenda.TIPO, pedvenda.vlrcomis,  formpag.descricao as FORMPAG, formpag.quantparcela as QTDPARC, pedvenda.dtpedven ,  ');
   DMESTOQUE.TRel.sql.Add('   pedvenda.valor AS TOTVENDA, pedvenda.desconto, pedvenda.descmoe, pedvenda.nomecli, pedvenda.cpfcnpj, ');
   DMESTOQUE.TRel.sql.Add('   pessoa.nome as funcionario  ');
   DMESTOQUE.TRel.sql.Add('   From vwpedv ');
   DMESTOQUE.TRel.sql.Add('   Left Join pedvenda on vwpedv.cod_pedvenda = pedvenda.cod_pedvenda ');
   DMESTOQUE.TRel.sql.Add('   left join funcionario on pedvenda.cod_vendedor = funcionario.cod_func ');
   DMESTOQUE.TRel.sql.Add('   Left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa ');
   DMESTOQUE.TRel.sql.Add('   Left Join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
	DMESTOQUE.TRel.sql.Add('   Where (PEDVENDA.SITUACAO<>'+#39+'CANCELADO'+#39+')');
   FiltroCliente;
   FiltroData;
   FiltroSTOP;
   FiltroVend;
	FiltroFormPag;
   FiltroCobranca;
   DMESTOQUE.TRel.SQL.Add(' Order By formpag.descricao, pedvenda.NumPed, pedvenda.nomecli');
   If AbreTabela=True
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPedVenda_Analit_FormPag.frf');
   	FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Vendas de Forma Analítica agrupado por Clientes e com qtd de itens devolvidos
Procedure TFRelPadraoped.ImpPVAnalitCliDev;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.sql.Add(' Select pedvenda.numped, pedvenda.TIPO, pedvenda.vlrcomis, SUBPRODUTO.CONTRINT, pedvenda.dtpedven , subproduto.codcomposto, itenspedven.qtdeprod, subproduto.descricao as descsimilar, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.marca, itenspedven.valrep, itenspedven.valunit, itenspedven.valcomp,');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.sql.Add(' itenspedven.descpro, itenspedven.qtddev as QTDDEV, itenspedven.Data, itenspedven.lucper, itenspedven.lucmoe, Itenspedven.OPERACAO, itenspedven.valortotal AS TOTPROD, ');
   DMESTOQUE.TRel.sql.Add(' pedvenda.valor AS TOTVENDA, pedvenda.desconto, pedvenda.nomecli, pedvenda.cpfcnpj, itenspedven.COEFDIV,');
   DMESTOQUE.TRel.sql.Add(' funcionario.cod_interno as CI_FUNC, unidade.sigla_unid, pessoa.nome as funcionario, subproduto.codprodfabr, itenspedven.valcusto, itenspedven.comissao ');
   DMESTOQUE.TRel.sql.Add(' From itenspedven ');
   DMESTOQUE.TRel.sql.Add(' Left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.TRel.sql.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TRel.sql.Add(' Left Join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.sql.Add(' Left join unidade on Subproduto.cod_unidvenda = unidade.cod_unidade ');
   DMESTOQUE.TRel.sql.Add(' Left Join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
   DMESTOQUE.TRel.sql.Add(' left join funcionario on pedvenda.cod_vendedor = funcionario.cod_func ');
   DMESTOQUE.TRel.sql.Add(' Left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa ');
	DMESTOQUE.TRel.sql.Add(' Where (ESTOQUE.COD_LOJA=:CODLOJA)  AND (PEDVENDA.SITUACAO<>'+#39+'CANCELADO'+#39+')');
	DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   FiltroCliente;
   FiltroData;
   FiltroSTOP;
   FiltroVend;
   If CBItensDev.Checked=True Then
   	DMESTOQUE.TRel.sql.Add(' AND (itenspedven.qtddev>0) ');
   DMESTOQUE.TRel.SQL.Add(' Order By PedVenda.NomeCli, NumPed');
   If AbreTabela=True
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPedVenda_Analit_Cli_DEV.frf');
   	FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Vendas de Forma Analítica agrupado por Clientes
Procedure TFRelPadraoped.ImpPVAnalitCli;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.sql.Add(' Select pedvenda.numped, pedvenda.cobranca, pedvenda.TIPO, pedvenda.vlrcomis, SUBPRODUTO.CONTRINT, pedvenda.dtpedven , subproduto.codcomposto, itenspedven.qtdeprod, subproduto.descricao as descsimilar, ');
   DMESTOQUE.TRel.sql.Add(' subproduto.marca, itenspedven.valrep, itenspedven.valunit, itenspedven.valcomp,');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.sql.Add(' itenspedven.descpro, itenspedven.Data, itenspedven.lucper, itenspedven.lucmoe, Itenspedven.OPERACAO, itenspedven.valortotal AS TOTPROD, pedvenda.valor AS TOTVENDA, pedvenda.desconto, pedvenda.nomecli, pedvenda.cpfcnpj, itenspedven.COEFDIV,');
   DMESTOQUE.TRel.sql.Add(' funcionario.cod_interno as CI_FUNC, unidade.sigla_unid, pessoa.nome as funcionario, subproduto.codprodfabr, itenspedven.valcusto, itenspedven.comissao,  Itenspedven.VLRUNITDEV, ItensPedVen.QTDDEV, ItensPedVen.OPERACAO  ');
   DMESTOQUE.TRel.sql.Add(' From itenspedven ');
   DMESTOQUE.TRel.sql.Add(' Left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.TRel.sql.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TRel.sql.Add(' Left Join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.sql.Add(' Left join unidade on Subproduto.cod_unidvenda = unidade.cod_unidade ');
   DMESTOQUE.TRel.sql.Add(' Left Join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
   DMESTOQUE.TRel.sql.Add(' left join funcionario on pedvenda.cod_vendedor = funcionario.cod_func ');
   DMESTOQUE.TRel.sql.Add(' Left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa ');
	DMESTOQUE.TRel.sql.Add(' Where (ESTOQUE.COD_LOJA=:CODLOJA) AND (PEDVENDA.SITUACAO<>'+#39+'CANCELADO'+#39+')');
	DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   FiltroCliente;
   FiltroData;
   FiltroSTOP;
   FiltroVend;
   FiltroCobranca;
	DMESTOQUE.TRel.SQL.Text;
   DMESTOQUE.TRel.SQL.Add(' Order By PedVenda.NomeCli, NumPed');
   If AbreTabela=True
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPedVenda_Analit_Cli.frf');
   	FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Vendas de Forma Analítica agrupado por Clientes
Procedure TFRelPadraoped.ImpPVAnalitCliProd;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.sql.Add('  Select vwcliente.nome as cliente, pessoa.endnumero, vwcliente.cpfcnpj, pedvenda.nomecli, vwcliente.endereco, vwcliente.telrel, pedvenda.cobranca, ');
   DMESTOQUE.TRel.sql.Add('  vwcliente.cidade, vwcliente.cod_interno, vwcliente.bairro,  pedvenda.dtpedven, itenspedven.qtdeprod, subproduto.descricao as descsimilar, pessoaj.insc_est,');
   DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.sql.Add('  subproduto.marca, itenspedven.valortotal AS TOTPROD, unidade.sigla_unid From itenspedven ');
   DMESTOQUE.TRel.sql.Add('  Left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.TRel.sql.Add('  Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TRel.sql.Add('  Left Join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.sql.Add('  Left join unidade on Subproduto.cod_unidvenda = unidade.cod_unidade ');
   DMESTOQUE.TRel.sql.Add('  Left Join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
   DMESTOQUE.TRel.sql.Add('  left join vwcliente on pedvenda.cod_cliente = vwcliente.cod_cliente ');
   DMESTOQUE.TRel.sql.Add('  left join funcionario on pedvenda.cod_vendedor = funcionario.cod_func ');
   DMESTOQUE.TRel.sql.Add('  Left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa ');
   DMESTOQUE.TRel.SQL.Add('  left join pessoaj on vwcliente.cod_pessoa = pessoaj.cod_pessoa ');
	DMESTOQUE.TRel.sql.Add(' Where (ESTOQUE.COD_LOJA=:CODLOJA) AND (PEDVENDA.SITUACAO<>'+#39+'CANCELADO'+#39+')');
	DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   FiltroCliente;
   FiltroData;
   FiltroSTOP;
   FiltroVend;
   FiltroCobranca;
   DMESTOQUE.TRel.SQL.Add(' order by pedvenda.numped, subproduto.cod_subproduto ');
   If AbreTabela=True
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPedVenda_Analit_Cliprod.frf');
   	FSRel.ShowReport;
   End;
End;
//Imprime Relatório de Licitações de Forma Analítica agrupado por Clientes
Procedure TFRelPadraoped.ImpLicita;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.sql.Add('  Select licita.numlicita, licita.tipo, SUBPRODUTO.CONTRINT, licita.dtabert, subproduto.codcomposto, itprodlicita.qtd, subproduto.descricao as NOMEPRODUTO, ');
   DMESTOQUE.TRel.sql.Add('  subproduto.marca, itprodlicita.vlrrep, itprodlicita.vlrfinal, itprodlicita.vlrcompra, ');
   DMESTOQUE.TRel.sql.Add('  subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.sql.Add('  itprodlicita.desconto, itprodlicita.vlrfinal AS TOTPROD, licita.vlrtotal AS TOTVENDA, licita.descprod, licita.nomecli, licita.cpfcnpj, ');
   DMESTOQUE.TRel.sql.Add('  funcionario.cod_interno as CI_FUNC, unidade.sigla_unid, pessoa.nome as funcionario, subproduto.codprodfabr ');
   DMESTOQUE.TRel.sql.Add('  From itprodlicita ');
   DMESTOQUE.TRel.sql.Add('  Left Join estoque on itprodlicita.cod_estoque = estoque.cod_estoque ');
   DMESTOQUE.TRel.sql.Add('  Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   DMESTOQUE.TRel.sql.Add('  Left Join produto on subproduto.cod_produto = produto.cod_produto ');
   DMESTOQUE.TRel.sql.Add('  Left join unidade on Subproduto.cod_unidvenda = unidade.cod_unidade ');
   DMESTOQUE.TRel.sql.Add('  Left Join licita on itprodlicita.cod_licita = licita.cod_licita ');
   DMESTOQUE.TRel.sql.Add('  left join funcionario on licita.cod_vendedor = funcionario.cod_func ');
   DMESTOQUE.TRel.sql.Add('  Left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa ');
   DMESTOQUE.TRel.sql.Add('  Where (ESTOQUE.COD_LOJA=:CODLOJA) ');
	DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   FiltroCliente;
   FiltroData;
   FiltroVend;
   FiltroCobranca;
   DMESTOQUE.TRel.SQL.Add(' Order By licita.nomecli, licita.numlicita');
   If AbreTabela=True
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfLicita_Analit_Cli.frf');
   	FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Compras de Forma Analítica agrupado por Fornecedores
Procedure TFRelPadraoped.ImpPCAnalitFor;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.sql.Add('  Select pedcompra.numped, pedcompra.numdev, pedcompra.dtpedcomp, pedcompra.vendedor, itenspedc.qtdeprod, subproduto.descricao as NOMEPRODUTO, ');
   DMESTOQUE.TRel.sql.Add('  subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.sql.Add('  subproduto.marca, itenspedc.valunit, itenspedc.Aliqipi, itenspedc.vlripi, ');
   DMESTOQUE.TRel.sql.Add('  itenspedc.descpro, itenspedc.Data, itenspedc.embprod, itenspedc.frete, Itenspedc.Vlricms, itenspedc.valortotal AS TOTPROD, pedcompra.valor AS TOTVENDA, pedcompra.desconto, ');
   DMESTOQUE.TRel.sql.Add('  unidade.sigla_unid, pessoa.nome as FORNECEDOR, pessoa.cpfcnpj, docfis.vlrfrete, docfis.tipogerador, docfis.fretecomp, DocFis.VLRTOTIPI ');
   DMESTOQUE.TRel.sql.Add('  From itenspedC left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
   DMESTOQUE.TRel.sql.Add('  left join estoque on itenspedc.cod_estoque=estoque.cod_estoque ');
   DMESTOQUE.TRel.sql.Add('  left join docfis ON docfis.cod_pedido = pedcompra.cod_pedcomp ');
   DMESTOQUE.TRel.sql.Add('  Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.sql.Add('  Left Join produto on produto.cod_produto = subproduto.cod_produto ');
   DMESTOQUE.TRel.sql.Add('  Left Join unidade on unidade.cod_unidade = Subproduto.cod_unidvenda ');
   DMESTOQUE.TRel.sql.Add('  Left Join fornecedor on fornecedor.cod_fornec = pedcompra.cod_fornec ');
   DMESTOQUE.TRel.sql.Add('  Left Join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
	DMESTOQUE.TRel.sql.Add('  Where (ESTOQUE.COD_LOJA=:CODLOJA)  AND ((pedcompra.numdev IS NULL) or (pedcompra.numdev='+#39+#39+'))');
	DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   FiltroFornec;
   FiltroData;
   FiltroCobranca;
   FiltroSTOP;
   DMESTOQUE.TRel.SQL.Add(' Order By Pessoa.Nome, NumPed');
   If AbreTabela=True
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPedCompra_Analit_For.frf');
   	FSRel.ShowReport;
   End;
End;
{//Imprime Relatório de Compras de Forma Analítica agrupado por Fornecedores
Procedure TFRelPadraoped.ImpPCAnalitFor;
Begin
   LimpaSQL;
   DMESTOQUE.TRel.sql.Add('  Select pedcompra.numped, pedcompra.numdev, pedcompra.dtpedcomp, pedcompra.vendedor, itenspedc.qtdeprod, subproduto.descricao as similar, ');
   DMESTOQUE.TRel.sql.Add('  subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   DMESTOQUE.TRel.sql.Add('  subproduto.marca, itenspedc.valunit, itenspedc.Aliqipi, itenspedc.vlripi, ');
   DMESTOQUE.TRel.sql.Add('  itenspedc.descpro, itenspedc.Data, itenspedc.embprod, itenspedc.frete, Itenspedc.Vlricms, itenspedc.valortotal AS TOTPROD, pedcompra.valor AS TOTVENDA, pedcompra.desconto, ');
   DMESTOQUE.TRel.sql.Add('  unidade.sigla_unid, pessoa.nome as FORNECEDOR, pessoa.cpfcnpj, docfis.vlrfrete, docfis.tipogerador, docfis.fretecomp, DocFis.VLRTOTIPI ');
   DMESTOQUE.TRel.sql.Add('  From itenspedC left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
   DMESTOQUE.TRel.sql.Add('  left join estoque on itenspedc.cod_estoque=estoque.cod_estoque ');
   DMESTOQUE.TRel.sql.Add('  left join docfis ON docfis.cod_pedido = pedcompra.cod_pedcomp ');
   DMESTOQUE.TRel.sql.Add('  Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMESTOQUE.TRel.sql.Add('  Left Join produto on produto.cod_produto = subproduto.cod_produto ');
   DMESTOQUE.TRel.sql.Add('  Left Join unidade on unidade.cod_unidade = Subproduto.cod_unidvenda ');
   DMESTOQUE.TRel.sql.Add('  Left Join fornecedor on fornecedor.cod_fornec = pedcompra.cod_fornec ');
   DMESTOQUE.TRel.sql.Add('  Left Join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
	DMESTOQUE.TRel.sql.Add('  Where (ESTOQUE.COD_LOJA=:CODLOJA)  AND ((pedcompra.numdev IS NULL) or (pedcompra.numdev='+#39+#39+'))');
	DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   FiltroFornec;
   FiltroData;
   FiltroSTOP;
   DMESTOQUE.TRel.SQL.Add(' Order By Pessoa.Nome, NumPed');
   If AbreTabela=True
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPedCompra_Analit_For.frf');
   	FSRel.ShowReport;
   End;
End;}
//Imprime Relatório de Compas de Forma Sintética
Procedure TFRelPadraoped.ImpPCSint;
Begin
   LimpaSQL;
	DMESTOQUE.TRel.sql.Add('   Select pedcompra.numped,  pedcompra.numdev, pedcompra.dtpedcomp as DATA, itenspedc.qtdeprod, ');
	DMESTOQUE.TRel.sql.Add('   subproduto.descricao as descsimilar, subproduto.marca, itenspedc.embprod, ');
	DMESTOQUE.TRel.sql.Add('   itenspedc.valunit, ');
	DMESTOQUE.TRel.sql.Add('   docfis.vlrtotipi as IPI, itenspedc.valortotal AS TOTPROD, pedcompra.valor AS TOTVENDA, ');
	DMESTOQUE.TRel.sql.Add('   pedcompra.desconto, pedcompra.vendedor, unidade.sigla_unid, pessoa.nome as FORNECEDOR, pessoa.cpfcnpj, pedcompra.vlrfrete, docfis.fretecomp ');
	DMESTOQUE.TRel.sql.Add('   From itenspedC left join pedcompra on itenspedC.cod_pedcompra = pedcompra.cod_pedcomp ');
	DMESTOQUE.TRel.sql.Add('   left join docfis ON docfis.cod_pedido = pedcompra.cod_pedcomp ');
	DMESTOQUE.TRel.sql.Add('   left Join estoque on itenspedC.cod_estoque = estoque.cod_estoque ');
	DMESTOQUE.TRel.sql.Add('   Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
	DMESTOQUE.TRel.sql.Add('   Left Join produto on produto.cod_produto = subproduto.cod_produto ');
	DMESTOQUE.TRel.sql.Add('   Left Join unidade on unidade.cod_unidade = SubProduto.cod_unidvenda ');
	DMESTOQUE.TRel.sql.Add('   Left Join fornecedor on fornecedor.cod_fornec = pedcompra.cod_fornec ');
	DMESTOQUE.TRel.sql.Add('   Left Join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
//	DMESTOQUE.TRel.sql.Add('   left join estoque on estoque.cod_estoque=itenspedC.cod_estoque ');
	DMESTOQUE.TRel.sql.Add(' Where (ESTOQUE.COD_LOJA=:CODLOJA)   AND ((pedcompra.numdev IS NULL) or (pedcompra.numdev='+#39+#39+'))');
	DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   FiltroFornec;
   FiltroData;
   FiltroSTOP;
   FiltroVend;
   FiltroCobranca;
   InsertOrdem;
   If AbreTabela=True
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPedCompra_Sint_For.frf');
   	FSRel.ShowReport;
   End;
End;
//Imprime Relatório de Devoluções de Forma Sintética
Procedure TFRelPadraoped.ImpPCDevSint;
Begin
   LimpaSQL;
	DMESTOQUE.TRel.sql.Add('   Select pedcompra.numped,  pedcompra.numdev, pedcompra.dtpedcomp as DATA, itenspedc.qtdeprod, ');
	DMESTOQUE.TRel.sql.Add('   subproduto.descricao as NOMEPRODUTO, subproduto.marca, itenspedc.embprod, ');
	DMESTOQUE.TRel.sql.Add('   itenspedc.valunit, ');
	DMESTOQUE.TRel.sql.Add('   docfis.vlrtotipi as IPI, itenspedc.valortotal AS TOTPROD, pedcompra.valor AS TOTVENDA, ');
	DMESTOQUE.TRel.sql.Add('   pedcompra.desconto, pedcompra.vendedor, unidade.sigla_unid, pessoa.nome as FORNECEDOR, pessoa.cpfcnpj, docfis.vlrfrete, docfis.fretecomp ');
	DMESTOQUE.TRel.sql.Add('   From itenspedC left join pedcompra on itenspedC.cod_pedcompra = pedcompra.cod_pedcomp ');
	DMESTOQUE.TRel.sql.Add('   left join docfis ON docfis.cod_pedido = pedcompra.cod_pedcomp ');
	DMESTOQUE.TRel.sql.Add('   left Join estoque on itenspedC.cod_estoque = estoque.cod_estoque ');
	DMESTOQUE.TRel.sql.Add('   Left Join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
	DMESTOQUE.TRel.sql.Add('   Left Join produto on produto.cod_produto = subproduto.cod_produto ');
	DMESTOQUE.TRel.sql.Add('   Left Join unidade on unidade.cod_unidade = SubProduto.cod_unidvenda ');
	DMESTOQUE.TRel.sql.Add('   Left Join fornecedor on fornecedor.cod_fornec = pedcompra.cod_fornec ');
	DMESTOQUE.TRel.sql.Add('   Left Join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa ');
	DMESTOQUE.TRel.sql.Add(' Where (ESTOQUE.COD_LOJA=:CODLOJA)   AND ((pedcompra.numdev IS NOT NULL) or (pedcompra.numdev<>'+#39+#39+'))');
	DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   FiltroFornec;
   FiltroData;
   FiltroSTOP;
   FiltroVend;
   InsertOrdem;
   If AbreTabela=True
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPedCompra_Dev_Sint_For.frf');
   	FSRel.ShowReport;
   End;
End;
//Imprime Relatório de Vendas de Forma Sintética
Procedure TFRelPadraoped.ImpPVSintCli;
Begin
   LimpaSQL;
	DMESTOQUE.TRel.sql.Add(' Select pedvenda.numped, pedvenda.cobranca, pedvenda.TIPO, pedvenda.vlrcomis, pedvenda.dtpedven as data, subproduto.codcomposto, ');
	DMESTOQUE.TRel.sql.Add(' itenspedven.qtdeprod, subproduto.descricao as descsimilar, SUBPRODUTO.CONTRINT, subproduto.marca, itenspedven.valrep, itenspedven.valunit, itenspedven.valcomp, itenspedven.comissao, ');
	DMESTOQUE.TRel.sql.Add(' itenspedven.descpro, itenspedven.valcusto, itenspedven.lucper, itenspedven.lucmoe, itenspedven.valortotal AS TOTPROD, pedvenda.valor AS TOTVENDA, pedvenda.desconto, pedvenda.nomecli, pedvenda.cpfcnpj, itenspedven.COEFDIV,  ');
	DMESTOQUE.TRel.sql.Add(' funcionario.cod_interno as CI_FUNC, unidade.sigla_unid, pessoa.nome as vendedor, Itenspedven.VLRUNITDEV, ItensPedVen.QTDDEV, ItensPedVen.OPERACAO   ');
	DMESTOQUE.TRel.sql.Add(' From itenspedven ');
	DMESTOQUE.TRel.sql.Add(' Left Join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
	DMESTOQUE.TRel.sql.Add(' Left Join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
	DMESTOQUE.TRel.sql.Add(' Left Join produto on subproduto.cod_produto = produto.cod_produto ');
	DMESTOQUE.TRel.sql.Add(' Left join unidade on SubProduto.cod_unidvenda = unidade.cod_unidade ');
	DMESTOQUE.TRel.sql.Add(' Left Join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
	DMESTOQUE.TRel.sql.Add(' left join funcionario on pedvenda.cod_vendedor = funcionario.cod_func ');
	DMESTOQUE.TRel.sql.Add(' Left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa ');
	DMESTOQUE.TRel.sql.Add(' Where (ESTOQUE.COD_LOJA=:CODLOJA)  AND (PEDVENDA.SITUACAO<>'+#39+'CANCELADO'+#39+')');
	DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   FiltroCliente;
   FiltroData;
   FiltroSTOP;
   FiltroVend;
   FiltroCobranca;
   InsertOrdem;
   If AbreTabela=True
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPedVenda_Sint_Cli.frf');
   	FSRel.ShowReport;
   End;
End;

//Imprime Relatório de Vendas de Forma Sintética
Procedure TFRelPadraoped.ImpPVSintDia;
Begin
   LimpaSQL;
	DMESTOQUE.TRel.sql.Add(' Select pessoa.vlrcredito, pedvenda.numped, pedvenda.numfiscal, pedvenda.dtfech as dataf, formpag.descricao as FORMPAG, pedvenda.dtpedven as datap, extract(Day from pedvenda.dtfech) as diaF, ');         //extract(month from pedvenda.dtfech) as mesF,
	DMESTOQUE.TRel.sql.Add(' extract(Day from pedvenda.dtpedven) as diaP, pedvenda.cobranca, pedvenda.valor ,pedvenda.nomecli, pedvenda.cpfcnpj, cliente.informacao, pedvenda.cod_cliente, cliente.cod_cliente ');
	DMESTOQUE.TRel.sql.Add(' from pedvenda ');
   DMESTOQUE.TRel.sql.Add(' left join cliente on pedvenda.cod_cliente=cliente.cod_cliente');
   DMESTOQUE.TRel.sql.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
   DMESTOQUE.TRel.sql.Add(' left join formpag on pedvenda.cod_formpag = formpag.cod_formpag ');
	DMESTOQUE.TRel.sql.Add(' Where (PEDVENDA.SITUACAO<>'+#39+'CANCELADO'+#39+')');
   FiltroCliente;
   FiltroData;
   FiltroSTOP;
   FiltroFormaPagamento;
   FiltroCobranca;
   DMESTOQUE.TRel.sql.Add(' order by  pedvenda.nomecli ');
   DMESTOQUE.TRel.SQL.Text;
   If AbreTabela=True
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPedVenda_Sint_dias.frf');
   	FSRel.ShowReport;
   End;
End;


//Imprime Relatório de Vendas de Forma Sintética
Procedure TFRelPadraoped.ImpPVSint;
Begin
   LimpaSQL;
	DMESTOQUE.TRel.sql.Add(' Select pedvenda.tipo AS operacao, pedvenda.vlrdesp, pedvenda.numped, pedvenda.cobranca, pedvenda.TIPO, pedvenda.vlrcomis, pedvenda.dtpedven as data, ');
	DMESTOQUE.TRel.sql.Add('  pedvenda.valor AS TOTVENDA, pedvenda.desconto, pedvenda.descmoe, pedvenda.nomecli, pedvenda.cpfcnpj, ');
	DMESTOQUE.TRel.sql.Add('  funcionario.cod_interno as CI_FUNC, pessoa.nome as vendedor, VWPEDV.SITUACAO, VWPEDV.FORMPAG, VWPEDV.VALOR ');
	DMESTOQUE.TRel.sql.Add('  From vwpedv ');
	DMESTOQUE.TRel.sql.Add('  Left Join pedvenda on vwpedv.cod_pedvenda = pedvenda.cod_pedvenda ');
	DMESTOQUE.TRel.sql.Add('  left join funcionario on pedvenda.cod_vendedor = funcionario.cod_func ');
	DMESTOQUE.TRel.sql.Add('  left join vwfuncionario on pedvenda.cod_vendedor = vwfuncionario.cod_func ');
	DMESTOQUE.TRel.sql.Add('  Left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa ');
	DMESTOQUE.TRel.sql.Add('  Where (PEDVENDA.SITUACAO<>''CANCELADO'') ');
   FiltroCliente;
   FiltroData;
   FiltroSTOP;
   FiltroVend;
   FiltroCobranca;
   InsertOrdem;

   If AbreTabela=True
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPedVenda_Sint_Cli.frf');
   	FSRel.ShowReport;
   End;
End;
//Imprime Relatório de Vendas de Forma Sintética
Procedure TFRelPadraoped.ImpPVSintpParaCliente;
Begin
   LimpaSQL;
	DMESTOQUE.TRel.sql.Add('  Select  vwpedv.numped, vwpedv.numfiscal, vwpedv.dtpedven as data, vwpedv.valor AS TOTVENDA, vwpedv.nomecli, ');
	DMESTOQUE.TRel.sql.Add('   vwfuncionario.cod_interno as CI_FUNC, vwfuncionario.nome as vendedor ');
	DMESTOQUE.TRel.sql.Add('   From vwpedv ');
	DMESTOQUE.TRel.sql.Add('   left join pedvenda on vwpedv.cod_pedvenda = pedvenda.cod_pedvenda ');
//	DMESTOQUE.TRel.sql.Add('   left join pessoa ON vwpedv.cod_cliente = pessoa.cod_pessoa ');
	DMESTOQUE.TRel.sql.Add('   left join vwfuncionario on vwpedv.cod_vendedor = vwfuncionario.cod_func ');
	DMESTOQUE.TRel.sql.Add('   where (vwpedv.situacao<>''CANCELADO'') and (vwpedv.situacao<>''DEVOLVIDO'')');
   FiltroCliente;
   FiltroData;
   FiltroSTOP;
   FiltroVend;
   FiltroCobranca;
//   InsertOrdem;
	DMESTOQUE.TRel.sql.Add(' order by vwpedv.dtpedven, pedvenda.numped ');
   If AbreTabela=True
   Then Begin
   	FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfPedVendaSintparaCliente.frf');
   	FSRel.ShowReport;
   End;
End;

//prepara sql e arquivos para impressão
Procedure TFRelPadraoped.PrepareImp;
VAR
	TIPO: STRING;
Begin
	//PREPARA INFORMAÇÃO DE RESTRIÇÕES PARA RELATÓRIO
   If RGESCOLHA.ItemIndex=0 Then
       TIPO:='Tipo: [Abertas]'
   Else
       TIPO:='Tipo: [Fechadas]';
	If (FMenu.TIPOAUX='ORC') Then
   	TIPO:='';



   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:='Dt. Ini.: '+EdDataIni.Text+' / Dt. Fin.: '+EdDataFim.Text+#13+TIPO+' / '+FrmVendIni.EdDescricao.Text+' - '+FrmVendFim.EdDescricao.Text;
   if FMenu.TIPOREL='RELPEDCLISINTORD' then
       DMMACS.TLoja.FieldByName('TMP2').AsString:='Sem Valor';
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;
	If FMenu.TIPOREL='RELPEDCLISINTORD'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Sintético e Ordenado';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpPVSint; //Relatório de venda Sintético e ordenado
   End;
	If FMenu.TIPOREL='RELPEDCLISINTPARACLIENTE'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Sintético para Cliente';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpPVSintpParaCliente; //Relatório de venda Sintético e ordenado
   End;

	If FMenu.TIPOREL='RELPEDCLISINT'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Sintético por Cliente';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpPVSintCli; //Relatório de venda Sintético por cliente
   End;
 	If FMenu.TIPOREL='RELPEDCLISINTDIAS'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Sintético com média de dias';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       //GBPagamento.Top := 235;
       ImpPVSintDia; //Relatório de venda Sintético por cliente e media de dias

   End;

	If FMenu.TIPOREL='RELPEDFORSINTORD'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Entradas/Relatórios/Sintético e Ordenado';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpPCSint; //Relatório de Compras Sintético e ordenado
   End;
	If FMenu.TIPOREL='RELPEDFORDEVSINTORD'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Entradas/Relatórios/Devoluções/Sintético';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpPCDevSint; //Relatório de Devoluções Sintético
   End;
	If FMenu.TIPOREL='RELORC'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Orçamentos';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpOrc; // Relatório de Orçamentos Analitico e agrupado por Cliente e reordenado por numero do pedido
   End;
	If FMenu.TIPOREL='RELLICITA'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Licitações';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpLicita; // Relatório de Licitações Analitico e agrupado por Cliente e reordenado por numero do pedido
   End;

	If FMenu.TIPOREL='RELPEDCLIANALIT'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Analítico por Cliente';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpPVAnalitCli; // Relatório de Vendas Analitico e agrupado por Cliente e reordenado por numero do pedido
   End;
	If FMenu.TIPOREL='RELPEDCLIPROANALIT'
   Then Begin
		DMMACS.TLoja.Edit;
       if CBValor.Checked = True then
   	    DMMACS.TLoja.FieldByName('TMP2').AsString:='Sem Valor'
       else
           DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Analítico por Clientes e Produtos';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpPVAnalitCliProd; // Relatório de Vendas Analitico e agrupado por Cliente e produtoc reordenado por numero do pedido
   End;

	If FMenu.TIPOREL='RELPEDFORANALIT'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Entradas/Relatórios/Analítico por Fornecedores';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpPCAnalitFor; // Relatório de Vendas Analitico e agrupado por Cliente e reordenado por numero do pedido
   End;
	If FMenu.TIPOREL='RELPEDFORMPAG'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Sintético por Forma de Pagamento';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpPVSintFormPag; // Relatório de Vendas Sintético e agrupado por Forma de Pagamento
   End;
   If FMenu.TIPOREL='RELPEDCLIANALITDEV'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Saídas/Relatórios/Analítico com itens Devolvidos';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
   	ImpPVAnalitCliDev;//Relatório de Vendas Analitico e agrupado por Cliente e reordenado por numero do pedido e com qtd de itens devolvidos
   End;

   if FMenu.TIPOREL='RELPRODORDEM'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Serviços/Relatórios/Relatório de Produtos em Ordem';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpRelProdOrdem;
   End;

   //Paulo 20/03/2012; relatório de saída por região
   if FMenu.TIPOREL='RELREGIAOVENDA'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Relatório de Saídas por Região';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpRelRegiaoVenda;
   End;

   //Paulo 20/03/2012; relatório de entrada por região
   if FMenu.TIPOREL='RELREGIAOCOMPRA'
   Then Begin
		DMMACS.TLoja.Edit;
   	DMMACS.TLoja.FieldByName('TMP2').AsString:='Relatório de Entradas por Região';
	   	DMMACS.TLoja.Post;
   	DMMACS.Transaction.CommitRetaining;
       ImpRelRegiaoCompra
   End;
   //21/05/2012 - Mauro - Relatório de Vendas com despesas
   If FMenu.TIPOREL='RELPEDVENDESP'
   Then Begin
      DMMACS.TLoja.Edit;
      DMMACS.TLoja.FieldByName('TMP2').AsString:='Pedido de Venda/Relatórios/Relatório de Vendas com Despesas';
      DMMACS.TLoja.Post;
      DMMACS.Transaction.CommitRetaining;
      ImpRelPedVendaDespesas;
   End;   
   Exit;
{
	If (FMenu.TIPOREL='RELPEDSINTCLI') OR (FMenu.TIPOREL='RELPEDANALCLI')  OR (FMenu.TIPOREL='RELPEDFORMPAG')
   Then Begin//o tipo de relatório é Pedido de venda por cliente
       IRVendCliAS;
	END;
	If (FMenu.TIPOREL='RELPEDANALFOR') OR (FMenu.TIPOREL='RELPEDSINTFOR')
   Then Begin//o tipo de relatório é Pedido de venda por cliente
       IRVendForAS;
	END;}

End;


procedure TFRelPadraoPed.ImpRelProdOrdem;
begin

   DMESTOQUE.TRel.Close;
   DMESTOQUE.TRel.SQL.Clear;
   DMESTOQUE.TRel.SQL.Add('select itprodord.data as DATAITEM, itprodord.qtd as QUANTIDADE, itprodord.total AS TOTALITEM,');
   DMESTOQUE.TRel.SQL.Add('itprodord.vlrunit AS VLRUNITARIO, itprodord.cod_estoque AS ESTITEM, itprodord.cod_ordem AS CODITORDEM,');
   DMESTOQUE.TRel.SQL.Add('estoque.cod_estoque , estoque.cod_subprod AS CODESTSUB, estoque.cod_loja, subproduto.cod_subproduto,');
   DMESTOQUE.TRel.SQL.Add('subproduto.contrint, subproduto.marca, subproduto.descricao as DESCSIMILAR, estoque.cod_loja,');
   DMESTOQUE.TRel.SQL.Add('ordem.cod_ordem, ordem.totord as TOTALORDEM, ordem.cod_cliente as CLIENTEORDEM, pessoa.cpfcnpj,');
   DMESTOQUE.TRel.SQL.Add('cliente.cod_pessoa as CODCLIPES, pessoa.cod_pessoa, pessoa.nome, pessoa.telrel, vwfuncionario.nome as NOMEFUNC,');
   DMESTOQUE.TRel.SQL.Add('ordem.dtabert, ordem.totprod as TOTPRODUTOS, ordem.totserv, ordem.cod_vendedor, vwfuncionario.cod_func as CODFUNCIONARIO');
   DMESTOQUE.TRel.SQL.Add('from itprodord');
   DMESTOQUE.TRel.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
   DMESTOQUE.TRel.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   DMESTOQUE.TRel.SQL.Add('left join ordem on itprodord.cod_ordem = ordem.cod_ordem');
   DMESTOQUE.TRel.SQL.Add('left join cliente on ordem.cod_cliente = cliente.cod_cliente');
   DMESTOQUE.TRel.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
   DMESTOQUE.TRel.SQL.Add('left join vwfuncionario on ordem.cod_funcionario = vwfuncionario.cod_func');
   DMESTOQUE.TRel.SQL.Add('Where (ESTOQUE.COD_LOJA=:CODLOJA)');
   DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;

   FiltroData;
   FiltroVend;
   FiltroCliente;
   FiltroCobranca;

   if RGOrdem.ItemIndex=2
   then begin
     DMESTOQUE.TRel.SQL.Add('order by ordem.dtabert, pessoa.nome, ordem.cod_ordem, subproduto.contrint asc');
     DMESTOQUE.TRel.Open;
     FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfProdOrdData.frf');
     FSRel.ShowReport;
   end
   else begin
     DMESTOQUE.TRel.SQL.Add('order by pessoa.nome, ordem.dtabert, ordem.cod_ordem, subproduto.contrint asc');
     DMESTOQUE.TRel.Open;
     FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfProdOrdCli.frf');
     FSRel.ShowReport;
   end;
end;


procedure TFRelPadraoPed.FrmPessoaIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //limpa pessoa inicial
   XCod_Cliente:=-1;
   FrmPessoaIni.EDCodigo.Text:='';
   FrmPessoaini.EdDescricao.Text:='';
end;

procedure TFRelPadraoPed.FrmPessoaIniBTNOPENClick(Sender: TObject);
begin
  inherited;
	If (FMenu.TIPOAUX='COMPRA')
   Then Begin//RELATÓRIO DE CONTAS A PAGAR
   	//LIBERA TODOS OS FORNECEDORE PARA CONSUTA
		filtraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', '', '', '');
   	If AbrirForm(TFFornecedor, FFornecedor, 1)='Selected'
   	Then Begin
       	XCod_Cliente:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsInteger;
       	FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
       	FrmPessoaIni.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
       	FrmPessoaIni.Repaint;
   	End;
   End;
	If (FMenu.TIPOAUX='VENDA')
   Then Begin//RELATÓRIO DE CONTAS A RECEBER
   	//LIBERA TODOS OS CLIENTES PARA CONSUTA
		filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
   	If AbrirForm(TFCliente, FCliente, 1)='Selected'
   	Then Begin
           XCod_Cliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       	FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       	FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       	FrmPessoaIni.Repaint;
   	End;
   End;
   If (FMenu.TIPOAUX='ORDEM')
   Then Begin
      	//LIBERA TODOS OS CLIENTES PARA CONSUTA
		filtraTabela(DMPESSOA.WCliente, 'VWCLIENTE', '', '', '');
   	If AbrirForm(TFCliente, FCliente, 1)='Selected'
   	Then Begin
           XCod_Cliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
       	FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
       	FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
       	FrmPessoaIni.Repaint;
   	End;
   end;

end;

procedure TFRelPadraoPed.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   PrepareImp;
//   FSRel.ShowReport;
end;

procedure TFRelPadraoPed.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Relatórios' ;  
   FSDSRel.DataSource:=DMESTOQUE.DRel;
   //Prepara valores Iniciais
   XPessoaIni:='';
   XPessoaFim:='';
	XCod_Cliente:=-1;
   XVENDFIM:='';
   XVENDINI:='';
   XCOD_FORMPAG:='';
   FrmPessoaIni.EDCodigo.Text:='';
   FrmPessoaIni.EdDescricao.Text:='';
   FrmFormPag.EDCodigo.Text:='';
   FrmFormPag.EdDescricao.Text:='';
   FrmFormPag.Visible:=False;
   EdDataIni.Text:=DateToStr(Date());
   EdDataFim.Text:=DateToStr(Date());
   RGOrdem.ItemIndex:=0;
   RGOrdem.Visible:=False;
   PItensDevolvidos.Visible:=False;
   CBItensDev.Checked:=False;
   RBTodos.Checked := TRUE;
   GPFrmPag.Visible:=False;
   CBValor.Visible:=false;
   RBFPTodos.Checked:=True;
   PEstadosMunicipios.Visible:=false;
   PEstadosMunicipios.SendToBack;


   If (FMenu.TIPOAUX='VENDA') or (FMenu.TIPOAUX='ORCAMENTO') or (FMenu.TIPOAUX='LICITACAO')
   Then Begin
       FrmPessoaIni.Visible:=True;
       FrmVendIni.Visible:=True;
       FrmVendFim.Visible:=True;
       FrmPessoaIni.LTextoBusca.Caption:='cliente Inicial';
       RGESCOLHA.Caption:='Relatório de vendas';
   End;
   If FMenu.TIPOAUX='COMPRA'
   Then Begin
       FrmVendIni.Visible:=False;
       FrmVendFim.Visible:=False;
       FrmPessoaIni.Visible:=True;
       FrmPessoaIni.LTextoBusca.Caption:='Fornecedor Inicial';
       RGESCOLHA.Caption:='Relatório de compras';
   End;

   If FMenu.TIPOREL='RELPRODORDEM'
   Then Begin
       CBItensDev.Visible:=false;
       Label5.Visible:=False;
       FrmFormPag.Visible:=False;
       RGOrdem.Visible:=True;        
   End;

   If FMenu.TIPOREL='RELPEDCLIANALITDEV'
   Then Begin
       Caption:='Rel. de Vendas Anal. com Itens Devolvidos';
       PItensDevolvidos.Visible:=True;
       PItensDevolvidos.BringToFront;
       GBPagamento.Visible := false;
       GBPagamento.SendToBack;
       RBCarteira.Visible := false;
       RBCarteira.SendToBack;
       RBCartao.Visible := false;
       RBCartao.SendToBack;
       RBBanco.Visible := false;
       RBBanco.SendToBack;
       RBCheque.Visible := false;
       RBCheque.SendToBack;
   End;
   //RELATÓRIO DE VENDAS SINTÉTICO E ORDENADO
	If (FMenu.TIPOREL='RELPEDCLISINTORD')
   Then Begin
       Caption:='Relatório de Vendas Sintético e Ordenado';
       RGOrdem.Visible:=True;
       RGOrdem.BringToFront;
       //GBPagamento.Top := 235;
   End;
   //RELATÓRIO DE VENDAS SINTÉTICO por cliente
	If (FMenu.TIPOREL='RELPEDCLISINT')
   Then Begin
       Caption:='Relatório de Vendas Sintético por Cliente';
       RGOrdem.Visible:=false;
   End;
   //RELATÓRIO DE DEVOLUÇÕES DE VENDAS SINTÉTICO E ORDENADO
	If (FMenu.TIPOREL='RELPEDFORDEVSINTORD')
   Then Begin
       Caption:='Relatório de Devoluções de Vendas Sintético e Ordenado';
       RGOrdem.Visible:=True;
       RGOrdem.BringToFront;
   End;
   //RELATÓRIO DE COMPRAS SINTÉTICO E ORDENADO
	If (FMenu.TIPOREL='RELPEDFORSINTORD')
   Then Begin
       Caption:='Relatório de Compras Sintético e Ordenado';
       RGOrdem.Visible:=True;
       RGOrdem.BringToFront;
   End;
   //RELATÓRIO DE VENDAS ANALÍTICO POR CLIENTE
	If (FMenu.TIPOREL='RELPEDCLIANALIT')
   Then Begin
       Caption:='Relatório de Vendas Analítico por Clientes';
   End;
   // Sintetico com media de dias
   If (FMenu.TIPOREL='RELPEDCLISINTDIAS')
   Then Begin
       Caption:='Sintético c/ Média de Dias';
       GPFrmPag.Visible:=True;


   End;

   //RELATÓRIO DE VENDAS ANALÍTICO POR CLIENTE
	If (FMenu.TIPOREL='RELPEDCLIPROANALIT')
   Then Begin
       Caption:='Rel. de Vendas Anal. por Clientes e Produtos';
       CBValor.Visible:=True;
       //GBPagamento.Top := 235;
   End;
 	//RELATÓRIO DE ORÇAMENTOS ANALÍTICO POR CLIENTE
	If (FMenu.TIPOREL='RELORC')
   Then Begin
       Caption:='Rel. de Orçamentos Anal. por Clientes';
       RGESCOLHA.Visible:=False;
       GBPagamento.Visible := false;
       GBPagamento.SendToBack;
       RBCarteira.Visible := false;
       RBCarteira.SendToBack;
       RBCartao.Visible := false;
       RBCartao.SendToBack;
       RBBanco.Visible := false;
       RBBanco.SendToBack;
       RBCheque.Visible := false;
       RBCheque.SendToBack;
   End;
 	//RELATÓRIO DE LICITAÇÕES ANALÍTICO POR CLIENTE
	If (FMenu.TIPOREL='RELLICITA')
   Then Begin
       Caption:='Relatório de Licitações Analítico por Clientes';
       RGESCOLHA.Visible:=False;
       GBPagamento.Visible := false;
       GBPagamento.SendToBack;
       RBCarteira.Visible := false;
       RBCarteira.SendToBack;
       RBCartao.Visible := false;
       RBCartao.SendToBack;
       RBBanco.Visible := false;
       RBBanco.SendToBack;
       RBCheque.Visible := false;
       RBCheque.SendToBack;
   End;

   //RELATÓRIO DE COMPRAS ANALÍTICO POR FORNECEDOR
	If (FMenu.TIPOREL='RELPEDFORANALIT')
   Then Begin
       Caption:='Relatório de Compras Analítico por Fornecedores';
   End;

   //RELATÓRIO DE VENDAS POR FORNECEDOR
	If (FMenu.TIPOREL='RELPEDFORMPAG')
   Then Begin
       Caption:='Relatório de vendas por Forma de Pagamento';
       FrmPessoaIni.Visible:=True;
       FrmFormPag.Visible:=True;
       FrmFormPag.BringToFront;
       RGESCOLHA.Caption:='Relatório de vendas';
   End;

   if (FMenu.TIPOREL='RELREGIAOVENDA') or (FMenu.TIPOREL='RELREGIAOCOMPRA') then
   begin
       PEstadosMunicipios.Visible:=True;
       PEstadosMunicipios.BringToFront;
       if (FMenu.TIPOREL='RELREGIAOVENDA')then
       	Caption:='Saídas por Região'
       else
           Caption:='Entradas por Região'
   end;

   FrmPessoaIni.Repaint;
   FrmVendIni.Repaint;
   FrmVendFim.Repaint;

   EdDataIni.SetFocus;
end;

procedure TFRelPadraoPed.FrmVendIniBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //limpa VENDEDOR inicial
   XVENDINI:='';
   FrmVendIni.EDCodigo.Text:='';
   FrmVendIni.EdDescricao.Text:='';
end;

procedure TFRelPadraoPed.FrmVendFimBTNMINUSClick(Sender: TObject);
begin
  inherited;
   //limpa VENDEDOR inicial
   XVENDFIM:='';
   FrmVendFim.EDCodigo.Text:='';
   FrmVendFim.EdDescricao.Text:='';
end;

procedure TFRelPadraoPed.FrmVendIniBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS VENDEDORES PARA CONSUTA
	filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
   	XVENDINI:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVendIni.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVendIni.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
   End;
end;

procedure TFRelPadraoPed.FrmVendFimBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS VENDEDORES PARA CONSUTA
	filtraTabela(DMPESSOA.VWFuncionario, 'VWFUNCIONARIO', '', '', '');
   If AbrirForm(TFFuncionario, FFuncionario, 1)='Selected'
   Then Begin
  		XVENDFIM:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVendFim.EdDescricao.Text:=DMPESSOA.VWFuncionario.FieldByName('NOME').AsString;
      	FrmVendFim.EDCodigo.text:=DMPESSOA.VWFuncionario.FieldByName('COD_INTERNO').AsString;
   End;
end;

procedure TFRelPadraoPed.FrmPessoaIniEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
		If (FMenu.TIPOREL='RELPEDCLI') OR (FMenu.TIPOREL='RELPEDCLI') or (FMenu.TIPOREL='RELPEDFORMPAG')
       Then Begin//trabalhando com vendas
       	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', FrmPessoaIni.EDCodigo.Text, '')=True
           Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
	           	XPESSOAINI:=DMPESSOA.WCliente.FieldByName('NOME').AsString;  // jonathan - Dia 30/04/2009 - acrescentado a variavel para gerar o relatório de maneira correta.
	            FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
               FrmPessoaIni.EDCodigo.text:=DMPESSOA.WCliente.FieldByName('COD_INTERNO').AsString;
           End
	        Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
               XPESSOAINI:='';
               FrmPessoaIni.EdDescricao.Text:='';
	            FrmPessoaIni.EDCodigo.Text:='';
           End;
       End
       Else Begin
           If (FMenu.TIPOAUX='COMPRA') or (FMenu.TIPOREL='RELPEDFORSINTORD')
           Then Begin//RELATÓRIO DE CONTAS A PAGAR
               If FiltraTabela(DMPESSOA.WFornecedor, 'VWFORNEC', 'COD_INTERNO',FrmPessoaIni.EDCodigo.Text, '')=True
               Then Begin   // jonathan - Dia 30/04/2009 - acrescentado a variavel para gerar o relatório de maneira correta.
                   XPESSOAINI:=DMPESSOA.WFornecedor.FieldByName('COD_FORNEC').AsString;
                   FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WFornecedor.FieldByName('NOME').AsString;
                   FrmPessoaIni.EDCodigo.text:=DMPESSOA.WFornecedor.FieldByName('COD_INTERNO').AsString;
               End
               Else Begin
                   XPESSOAINI:='';
                   FrmPessoaIni.EdDescricao.Text:='';
                   FrmPessoaIni.EDCodigo.Text:='';
               End;
           End;
           If (FMenu.TIPOAUX='VENDA')
           Then Begin//RELATÓRIO DE CONTAS A RECEBER
               If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', FrmPessoaIni.EDCodigo.Text, '')=True
               Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
          			XCod_Cliente:=DMPESSOA.WCliente.FieldByName('COD_CLIENTE').AsInteger;
                   XPESSOAINI:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
                   FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
               End
               Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
                   XPESSOAINI:='';
                   FrmPessoaIni.EdDescricao.Text:='';
                   FrmPessoaIni.EDCodigo.Text:='';
               End;
           End;
           If (FMenu.TIPOAUX='ORDEM')
           Then Begin
               If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_INTERNO', FrmPessoaIni.EDCodigo.Text, '')=True
               Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
                   XPESSOAINI:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
                   FrmPessoaIni.EdDescricao.Text:=DMPESSOA.WCliente.FieldByName('NOME').AsString;
               End
               Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
                   XPESSOAINI:='';
                   FrmPessoaIni.EdDescricao.Text:='';
                   FrmPessoaIni.EDCodigo.Text:='';
               End;
           end;
       End;
       FrmPessoaIni.Repaint;
   End;
end;

procedure TFRelPadraoPed.FrmVendIniEDCodigoKeyDown(Sender: TObject;
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
   End;
end;

procedure TFRelPadraoPed.FrmVendFimEDCodigoKeyDown(Sender: TObject;
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
   End;
end;

procedure TFRelPadraoPed.FrmFormPagBTNMINUSClick(Sender: TObject);
begin
  inherited;
   XCOD_FORMPAG:='';
   FrmFormPag.EDCodigo.Text:='';
   FrmFormPag.EdDescricao.Text:='';
end;

procedure TFRelPadraoPed.FrmFormPagBTNOPENClick(Sender: TObject);
begin
  inherited;
  	//LIBERA TODOS OS VENDEDORES PARA CONSUTA
	filtraTabela(DMFINANC.TFormPag, 'FORMPAG', '', '', '');
   If AbrirForm(TFFormPag, FFormPag, 1)='Selected'
   Then Begin
  		XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
      	FrmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
      	FrmFormPag.EDCodigo.text:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
   End;
end;

procedure TFRelPadraoPed.FrmFormPagEDCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
	If Key = VK_return
   Then Begin
      	If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'COD_FORMPAG', FrmFormPag.EDCodigo.Text, '')=True
       Then Begin//CASO CONSEGUIU SELECIONAR CLIENTE
         	XCOD_FORMPAG:=DMFINANC.TFormPag.FieldByName('COD_FORMPAG').AsString;
           FrmFormPag.EdDescricao.Text:=DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString;
       End
       Else Begin//CASO NÃO CONSEGUIU SELECIONAR CLIENTE
           XCOD_FORMPAG:='';
           FrmFormPag.EdDescricao.Text:='';
           FrmFormPag.EDCodigo.Text:='';
       End;
   End;

end;

procedure TFRelPadraoPed.FrmPessoaIniEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmPessoaIni.EDCodigoKeyPress(Sender, Key);

end;

procedure TFRelPadraoPed.FrmFormPagEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmFormPag.EDCodigoKeyPress(Sender, Key);

end;

procedure TFRelPadraoPed.FrmVendIniEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmVendIni.EDCodigoKeyPress(Sender, Key);

end;

procedure TFRelPadraoPed.FrmVendFimEDCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  FrmVendFim.EDCodigoKeyPress(Sender, Key);

end;

//Paulo 21/03/2012: Gera relatório de venda por regiões
procedure TFRelPadraoPed.ImpRelRegiaoVenda;
begin

   //if (RGTipoFiltro.ItemIndex = 0) OR (RGTipoFiltro.ItemIndex = 1) then
   //begin
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add('select pedvenda.nomecli AS NOME,pedvenda.fisco, pedvenda.numped AS NUMERO, pedvenda.numfiscal,');
       DMESTOQUE.TRel.SQL.Add('pedvenda.dtpedven AS DTPED, docfissaida.dtemissao, vwsimilar.descricao, vwsimilar.cod_subproduto,');
       DMESTOQUE.TRel.SQL.Add('vwsimilar.CONTRINT, itenspedven.qtdeprod, itenspedven.valunit, itenspedven.valortotal,');
       DMESTOQUE.TRel.SQL.Add('vwcidade.nome AS CIDADE,estado.cod_estado, estado.descricao AS ESTADO, estado.uf_estado');
       DMESTOQUE.TRel.SQL.Add('from pedvenda');
       DMESTOQUE.TRel.SQL.Add('left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido');
       DMESTOQUE.TRel.SQL.Add('left join itenspedven on pedvenda.cod_pedvenda = itenspedven.cod_pedven');
       DMESTOQUE.TRel.SQL.Add('left join vwsimilar on itenspedven.cod_estoque = vwsimilar.cod_estoque');
       DMESTOQUE.TRel.SQL.Add('left join vwcliente on pedvenda.cod_cliente = vwcliente.cod_cliente');
       DMESTOQUE.TRel.SQL.Add('left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade');
       DMESTOQUE.TRel.SQL.Add('left join estado on vwcidade.cod_estado = estado.cod_estado');
       DMESTOQUE.TRel.SQL.Add('Where (pedvenda.cod_pedvenda is not null)');
       //DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   //end;

   //Paulo : filtra datas
   If (EdDtIni.Text<>'  /  /    ') And (EdDtFim.Text<>'  /  /    ')
   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
       if RGFiltraData.ItemIndex = 0 then
          DMESTOQUE.TRel.SQL.Add(' AND (pedvenda.dtpedven Between :Data1 and :Data2) ')
       else
          DMESTOQUE.TRel.SQL.Add(' AND (docfissaida.dtemissao Between :Data1 and :Data2) ');
       DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDtIni.Text;
       DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDtFim.Text;
   End;

   //Paulo 21/03/2012: filtra somente notas
   if (RGTipoFiltro.ItemIndex = 1) then
       DMESTOQUE.TRel.SQL.Add('and (pedvenda.fisco ='+#39+'NF'+#39+') and (pedvenda.numfiscal is not null)');

   //Paulo 21/03/2012: filtra somente pedidos
   if (RGTipoFiltro.ItemIndex = 2) then
       DMESTOQUE.TRel.SQL.Add('and (pedvenda.fisco <>'+#39+'NF'+#39+') and (pedvenda.numfiscal is null)');

   //Paulo 21/03/2012: filtra estado
   if (XCOD_ESTADO > 0) then
   begin
      DMESTOQUE.TRel.SQL.Add('and (estado.cod_estado = :CODESTADO)');
      DMESTOQUE.TRel.ParamByName('CODESTADO').AsInteger:=XCOD_ESTADO;
   end;

   //Paulo 21/03/2012: filtra MUNICIPIO
   if (XCOD_MUNICIPIO > 0) then
   begin
      DMESTOQUE.TRel.SQL.Add('and (VWCIDADE.COD_CIDADE = :CODCIDADE)');
      DMESTOQUE.TRel.ParamByName('CODCIDADE').AsInteger:=XCOD_MUNICIPIO;
   end;

   //Paulo 21/03/2012: filtra PRODUTO
   if (XCOD_PROD > 0) then
   begin
      DMESTOQUE.TRel.SQL.Add('and (vwsimilar.cod_subproduto = :CODPROD)');
      DMESTOQUE.TRel.ParamByName('CODPROD').AsInteger:=XCOD_PROD;
   end;

   DMESTOQUE.TRel.SQL.Add('order by estado, cidade, pedvenda.nomecli, pedvenda.cod_pedvenda, vwsimilar.cod_subproduto asc');
   DMESTOQUE.TRel.Open;
   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelSaidasEntradasRegiao.frf');
   FSRel.ShowReport;



end;

//Paulo 21/03/2012: Gera relatório de compra por regiões
procedure TFRelPadraoPed.ImpRelRegiaoCompra;
begin

   //if (RGTipoFiltro.ItemIndex = 0) OR (RGTipoFiltro.ItemIndex = 1) then
   //begin
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
       DMESTOQUE.TRel.SQL.Add('select vwpedc.nome AS NOME ,vwpedc.fisco, vwpedc.numped AS NUMERO, vwpedc.numfiscal,');
       DMESTOQUE.TRel.SQL.Add('vwpedc.dtpedcomp as DTPED, docfis.dtemissao, vwsimilar.descricao, vwsimilar.cod_subproduto,');
       DMESTOQUE.TRel.SQL.Add('vwsimilar.CONTRINT, itenspedc.qtdeprod, itenspedc.valunit, itenspedc.valortotal,');
       DMESTOQUE.TRel.SQL.Add('vwcidade.nome AS CIDADE,estado.cod_estado, estado.descricao AS ESTADO, estado.uf_estado');
       DMESTOQUE.TRel.SQL.Add('from vwpedc');
       DMESTOQUE.TRel.SQL.Add('left join docfis on vwpedc.cod_pedcomp = docfis.cod_pedido');
       DMESTOQUE.TRel.SQL.Add('left join itenspedc on vwpedc.cod_pedcomp = itenspedc.cod_pedcompra');
       DMESTOQUE.TRel.SQL.Add('left join vwsimilar on itenspedc.cod_estoque = vwsimilar.cod_estoque');
       DMESTOQUE.TRel.SQL.Add('left join vwfornec on vwpedc.cod_fornec = vwfornec.cod_fornec');
       DMESTOQUE.TRel.SQL.Add('left join vwcidade on vwfornec.cod_cidade = vwcidade.cod_cidade');
       DMESTOQUE.TRel.SQL.Add('left join estado on vwcidade.cod_estado = estado.cod_estado');
       DMESTOQUE.TRel.SQL.Add('Where (vwpedc.cod_pedcomp is not null)');
       //DMESTOQUE.TRel.ParamByName('CODLOJA').AsString:=FMenu.LCODLOJA.Caption;
   //end;

   //Paulo : filtra datas
   If (EdDtIni.Text<>'  /  /    ') And (EdDtFim.Text<>'  /  /    ')
   Then Begin//Se as duas datas informadas forem diferentes de "" deve se efetuar a sql entre as datas
       if RGFiltraData.ItemIndex = 0 then
          DMESTOQUE.TRel.SQL.Add(' AND (DTPED Between :Data1 and :Data2) ')
       else
          DMESTOQUE.TRel.SQL.Add(' AND (docfis.dtemissao Between :Data1 and :Data2) ');
       DMESTOQUE.TRel.ParamByName('Data1').AsString:=EdDtIni.Text;
       DMESTOQUE.TRel.ParamByName('Data2').AsString:=EdDtFim.Text;
   End;

   //Paulo 21/03/2012: filtra somente notas
   if (RGTipoFiltro.ItemIndex = 1) then
       DMESTOQUE.TRel.SQL.Add('and (vwpedc.fisco ='+#39+'NF'+#39+') and (vwpedc.numfiscal is not null)');

   //Paulo 21/03/2012: filtra somente pedidos
   if (RGTipoFiltro.ItemIndex = 2) then
       DMESTOQUE.TRel.SQL.Add('and (vwpedc.fisco <>'+#39+'NF'+#39+') and (vwpedc.numfiscal is null)');

   //Paulo 21/03/2012: filtra estado
   if (XCOD_ESTADO > 0) then
   begin
      DMESTOQUE.TRel.SQL.Add('and (estado.cod_estado = :CODESTADO)');
      DMESTOQUE.TRel.ParamByName('CODESTADO').AsInteger:=XCOD_ESTADO;
   end;

   //Paulo 21/03/2012: filtra MUNICIPIO
   if (XCOD_MUNICIPIO > 0) then
   begin
      DMESTOQUE.TRel.SQL.Add('and (VWCIDADE.COD_CIDADE = :CODCIDADE)');
      DMESTOQUE.TRel.ParamByName('CODCIDADE').AsInteger:=XCOD_MUNICIPIO;
   end;

   //Paulo 21/03/2012: filtra PRODUTO
   if (XCOD_PROD > 0) then
   begin
      DMESTOQUE.TRel.SQL.Add('and (vwsimilar.cod_subproduto = :CODPROD)');
      DMESTOQUE.TRel.ParamByName('CODPROD').AsInteger:=XCOD_PROD;
   end;

   DMESTOQUE.TRel.SQL.Add('order by estado, cidade, NOME, vwpedc.cod_pedcomp, vwsimilar.cod_subproduto asc');
   DMESTOQUE.TRel.Open;
   FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelSaidasEntradasRegiao.frf');
   FSRel.ShowReport;



end;

procedure TFRelPadraoPed.FrmEstadoInicialBTNOPENClick(Sender: TObject);
begin
  inherited;
      filtraTabela(DMGEOGRAFIA.WEstado, 'VWESTADO', '', '', '');

      If AbrirForm(TFCadEstado, FCadEstado, 1)='Selected'
      Then Begin
          XCOD_ESTADO:= DMGEOGRAFIA.WEstado.FieldByName('COD_ESTADO').AsInteger;
          FrmEstadoInicial.EdDescricao.Text:=DMGEOGRAFIA.WEstado.FieldByName('DESCRICAO').AsString;
          FrmEstadoInicial.EDCodigo.text:=DMGEOGRAFIA.WEstado.FieldByName('COD_ESTADO').AsString;
      End else
      begin
      	   XCOD_ESTADO:=-1;
      end;

end;

procedure TFRelPadraoPed.FrmMunicipioBTNOPENClick(Sender: TObject);
begin
  inherited;
      filtraTabela(DMGEOGRAFIA.WCidade, 'VWCIDADE', '', '', '');

      If AbrirForm(TFCadCidade, FCadCidade, 1)='Selected'
      Then Begin
          XCOD_MUNICIPIO:= DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsInteger;
          FrmMunicipio.EdDescricao.Text:=DMGEOGRAFIA.WCidade.FieldByName('NOME').AsString;
          FrmMunicipio.EDCodigo.text:=DMGEOGRAFIA.WCidade.FieldByName('COD_CIDADE').AsString;
      End else
      begin
      	   XCOD_MUNICIPIO:=-1;
      end;

end;

procedure TFRelPadraoPed.FrmProdutoRegiaoBTNOPENClick(Sender: TObject);
begin
  inherited;
      filtraTabela(DMESTOQUE.WSimilar, 'VWSIMILAR', '', '', '');

      If AbrirForm(TFProduto, FProduto, 1)='Selected'
      Then Begin
          XCOD_PROD:= DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsInteger;
          FrmProdutoRegiao.EdDescricao.Text:=DMESTOQUE.WSimilar.FieldByName('DESCRICAO').AsString;
          FrmProdutoRegiao.EDCodigo.text:=DMESTOQUE.WSimilar.FieldByName('COD_SUBPRODUTO').AsString;
      End else
      begin
      	   XCOD_PROD:=-1;
      end;

end;

procedure TFRelPadraoPed.FrmEstadoInicialBTNMINUSClick(Sender: TObject);
begin
  inherited;
  		//Paulo 22/03/2012: Limpa o campo de estado	
  		XCOD_ESTADO:=0;
   	FrmEstadoInicial.EDCodigo.Text:='';
   	FrmEstadoInicial.EdDescricao.Text:='';

end;

procedure TFRelPadraoPed.FrmMunicipioBTNMINUSClick(Sender: TObject);
begin
  inherited;
  		//Paulo 22/03/2012: Limpa o campo de municipio
  		XCOD_MUNICIPIO:=0;
   	FrmMunicipio.EDCodigo.Text:='';
   	FrmMunicipio.EdDescricao.Text:='';

end;

procedure TFRelPadraoPed.FrmProdutoRegiaoBTNMINUSClick(Sender: TObject);
begin
  inherited;
		//Paulo 22/03/2012: Limpa o campo de Produto
  		XCOD_PROD:=0;
   	FrmProdutoRegiao.EDCodigo.Text:='';
   	FrmProdutoRegiao.EdDescricao.Text:='';

end;

End.


