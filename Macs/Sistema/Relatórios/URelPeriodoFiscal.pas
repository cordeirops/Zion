unit URelPeriodoFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdAttachment, IdAttachmentFile, 
  UPadraoRelatorio, ZipMstr, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, IdBaseComponent, IdMessage, frxClass, frxExportPDF, frxDBSet,
  StdCtrls, Mask, DBCtrls, FashionPanel, FR_DSet, FR_DBSet, FR_Class,
  Buttons, ExtCtrls;

type
  TFRelPeriodoFiscal = class(TFPadraoRelatorio)
    GroupBox5: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    FSDanfe: TfrReport;
    FSDBDanfe: TfrDBDataSet;
    FrxNfce: TfrxReport;
    dataSetEmp: TfrxDBDataset;
    dataSetGeralRel: TfrxDBDataset;
    exportar: TfrxPDFExport;
    dataSetAlx4: TfrxDBDataset;
    dataSetCfop: TfrxDBDataset;
    dataSetCfop2: TfrxDBDataset;
    dataSetEmpresa: TfrxDBDataset;
    dataSetPessoaJ: TfrxDBDataset;
    dataSetProdutos: TfrxDBDataset;
    dataSetLoja: TfrxDBDataset;
    dataSetSaida: TfrxDBDataset;
    dataSetTmp: TfrxDBDataset;
    dataSetTransp: TfrxDBDataset;
    dataSetGeral: TfrxDBDataset;
    dataSetCidade: TfrxDBDataset;
    pAguarde: TPanel;
    pEmail: TFashionPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    BtnEnviarOk: TBitBtn;
    BtnCancelaEnvio: TBitBtn;
    EdEmail: TEdit;
    edMensagem: TMemo;
    MessXml: TIdMessage;
    SMTPxml: TIdSMTP;
    SSLSocket: TIdSSLIOHandlerSocketOpenSSL;
    compacta: TZipMaster;
    pOrigemXml: TPanel;
    Label3: TLabel;
    cbOrigemXml: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure BtnEnviarOkClick(Sender: TObject);
    procedure BtnCancelaEnvioClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    xCaminhoContabilidade, xCaminhoXml, xCaminhoAnexo: String;
    //prepara sql e arquivos para impressão
    Procedure PrepareImp;
    //Função Utilizada para imprimir o relatório de produtos vendidos durante o período fiscal separado por tributação
    Procedure ImpRelProdTributados;
    //Paulo 14/10/2010: para imprimir relatório de Danfes pelo conforme o periodo fiscal
    Procedure ImpRelDanfeSaidasSintetico;
    //Função Relatório de danfes de Entrada
    Procedure ImpRelDanfeEntradasSintetico;
    //Paulo 14/10/2010: para imprimir relatório de Danfes de venda pelo conforme o periodo fiscal
    Procedure ImpRelDanfeVenda;
    //Paulo 10/08/2011: seleciona e armazena os dados da fatura para gerar o relatório de danfes
    Procedure ImpFaturaDanfeVenda;
    //Paulo 10/08/2011: seleciona e armazena os dados da fatura para gerar o relatório de danfes
    Procedure ImpFaturaDanfeOrdem;
    //Paulo 11/08/2011: calcula o valor de desconto dos produtos para gerar o relatório de danfes
    Procedure ImpDescDanfeCompra;
    //Paulo 06/12/2011: Função relatório de danfes de Entrada com produtos
    Procedure ImpRelDanfeEntradasSinteticoProdutos;
    //Paulo 13/02/2012: Gera Nfe distribuição base no periodo selecionado
	 Procedure GerarXMLDistribucaoVendas;
    //Edmar - 01/09/2015
    Procedure ImpRelDanfce;
    //Edmar - 08/12/2016
    procedure ImpRelNotasFiscais;
    //
    procedure CopiaXmlDistribuicao;
    //
    procedure CompactaArquivos;
    //
    procedure EnviaEmailContabilidade;
    //
    procedure ImpRelRelacaoProdutos;
  public
    { Public declarations }
  end;

var
  FRelPeriodoFiscal: TFRelPeriodoFiscal;

implementation

uses UPadrao, UDMMacs, UMenu, UDMEstoque, Alxor32, UPedVenda, UDMGEOGRAFIA,
  UDMSaida, UDMConta, UMzrNfe, UDMPessoa, DB, UDMCaixa, UDmServ, UDMFinanc,
  UMDO;

{$R *.dfm}

//prepara sql e arquivos para impressão
Procedure TFRelPeriodoFiscal.PrepareImp;
var
   I: Integer;
   SR: TSearchRec;
Begin
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   DMMACS.TLoja.Edit;
   DMMACS.TLoja.FieldByName('TMP1').AsString:='Período: '+DBLookupComboBox1.Text;
   DMMACS.TLoja.Post;
   DMMACS.Transaction.CommitRetaining;

	if FMenu.TIPOREL = 'CONTABILIDADE' then
   begin
       pAguarde.BringToFront;
       pAguarde.Visible := True;
       pAguarde.Refresh;

       //transfere o caminho deste diretorio para uma variavel
       xCaminhoContabilidade := GetCurrentDir + '\Contabilidade';
       
       //Edmar - 12/12/2016 - Preparamos o diretório onde ficará os arquivos
       // remove o diretorio caso exista
       if DirectoryExists(xCaminhoContabilidade) then
       begin
           // recupera os arquivos para limpar a pasta
           I := FindFirst(xCaminhoContabilidade + '\*.*', faAnyFile, SR);
           while I = 0 do
           begin
               DeleteFile(xCaminhoContabilidade + '\' + SR.Name);
               I := FindNext(SR);
           end;
       end;
       
       //cria um novo
       VerificaDiretorio(xCaminhoContabilidade);

       XRelDanfe := 'VENDA_NFCE';
       ImpRelDanfce;
       pAguarde.Refresh;

       XRelDanfe := 'ORDEM_NFCE';
       ImpRelDanfce;
       pAguarde.Refresh;

       XRelDanfe := 'VENDA';
       ImpRelDanfeVenda;
       pAguarde.Refresh;

       XRelDanfe := 'ORDEM';
       ImpRelDanfeVenda;
       pAguarde.Refresh;

       XRelDanfe := 'COMPRA';
       ImpRelDanfeVenda;
       pAguarde.Refresh;

       ImpRelNotasFiscais;
       pAguarde.Refresh;
       
       CopiaXmlDistribuicao;
       pAguarde.Refresh;

       ImpRelRelacaoProdutos;
       pAguarde.Refresh;
                     
       CompactaArquivos;
           
       XRelDanfe     := '';
       FMenu.TIPOREL := '';
              
       pAguarde.SendToBack;
       pAguarde.Visible := False;
       
       if MessageDlg('Deseja enviar o fechamento para o contador?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
           EnviaEmailContabilidade;
   end;

	If FMenu.TIPOREL='PERIODOPRODTRIBUTA' Then
		ImpRelProdTributados;

	If FMenu.TIPOREL='RELDANFESINT' Then
		ImpRelDanfeSaidasSintetico;

	If FMenu.TIPOREL='RELDANFEENTRADASINT' Then
		ImpRelDanfeEntradasSintetico;

   If FMenu.TIPOREL='RELDANFEENTRADASINTPROD' Then
		ImpRelDanfeEntradasSinteticoProdutos;

   if (XRelDanfe = 'VENDA')or(XRelDanfe = 'ORDEM')or(XRelDanfe = 'COMPRA') then
   	ImpRelDanfeVenda;

   if (XRelDanfe = 'VENDA_NFCE') OR (XRelDanfe = 'ORDEM_NFCE') then
       ImpRelDanfce;
       
   If FMenu.TIPOREL='XMLDISTRIBUICAO' Then
		GerarXMLDistribucaoVendas;
End;
//Função relatório de danfes de Saida
Procedure TFRelPeriodoFiscal.ImpRelDanfeSaidasSintetico;
Begin
	Try
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
   	DMESTOQUE.TRel.sql.Add('   select docfissaida.cod_periodofiscal, docfissaida.numdocfis, pedvenda.situacao, ');
   	DMESTOQUE.TRel.sql.Add('     pedvenda.nomecli as CLIENTE, docfissaida.vlrtotdocnf, docfissaida.vlrtotipi, ');
   	DMESTOQUE.TRel.sql.Add('     docfissaida.vlricmsubs, docfissaida.vlrfrete, docfissaida.dtemissao, pedvenda.cpfcnpj ');
   	DMESTOQUE.TRel.sql.Add('     FROM pedvenda ');
   	DMESTOQUE.TRel.sql.Add('     left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido ');
   	DMESTOQUE.TRel.sql.Add('     WHERE ');
   	DMESTOQUE.TRel.sql.Add('    (docfissaida.COD_PERIODOFISCAL=:PERIODOFISCAL) and (pedvenda.FISCO=''NF'') AND ((pedvenda.situacao = ''FECHADO'') OR (pedvenda.situacao = ''CANCELADO'') OR (pedvenda.situacao = ''DEVOLVIDO'')) AND ');
   	DMESTOQUE.TRel.sql.Add('    ((docfissaida.SERIE = ''01'') OR (docfissaida.SERIE = ''1'')  OR (docfissaida.SERIE = ''55'')  OR ');
   	DMESTOQUE.TRel.sql.Add('    (docfissaida.SERIE = ''1A'') OR ');
   	DMESTOQUE.TRel.sql.Add('    (docfissaida.SERIE = ''03'') OR ');
   	DMESTOQUE.TRel.sql.Add('    (docfissaida.SERIE = ''06'') OR ');
   	DMESTOQUE.TRel.sql.Add('    (docfissaida.SERIE = ''22'')) AND ((docfissaida.nfestatus = ''1'') OR (docfissaida.nfestatus = ''3'')  OR (docfissaida.nfestatus = ''4'')) ');
   	DMESTOQUE.TRel.sql.Add('    order by docfissaida.numdocfisint ');
   	DMESTOQUE.TRel.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
   	DMESTOQUE.TRel.Prepare;
       DMESTOQUE.TRel.Open;
       If not DMESTOQUE.TRel.IsEmpty
       Then Begin
         FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelDanfeSint.frf');
         FSRel.ShowReport;
       End
       Else Begin
			MessageDlg('Relatório retornou vazio', mtWarning, [mbOK], 0);
       End;
   Except
		MessageDlg('A Chamada do relatório retornou com erros', mtWarning, [mbOK], 0);
   End;
End;

//Função relatório de danfes de Entrada
Procedure TFRelPeriodoFiscal.ImpRelDanfeEntradasSintetico;
Begin
	Try
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
   	DMESTOQUE.TRel.sql.Add('      select docfis.cod_periodofiscal, docfis.numdocfis, pedcompra.situacao, ');
   	DMESTOQUE.TRel.sql.Add('           vwfornec.nome as CLIENTE, docfis.vlrtotdocnf, docfis.vlrtotipi, ');
   	DMESTOQUE.TRel.sql.Add('           docfis.vlricmsubs, docfis.vlrfrete, docfis.dtemissao, vwfornec.cpfcnpj ');
   	DMESTOQUE.TRel.sql.Add('           FROM pedcompra ');
   	DMESTOQUE.TRel.sql.Add('           left join docfis on pedcompra.cod_pedcomp = docfis.cod_pedido ');
   	DMESTOQUE.TRel.sql.Add('           left join vwfornec on pedcompra.cod_fornec = vwfornec.cod_fornec ');
   	DMESTOQUE.TRel.sql.Add('           WHERE ');
   	DMESTOQUE.TRel.sql.Add('          (docfis.COD_PERIODOFISCAL=:PERIODOFISCAL) and (pedcompra.fisco=''NF'') AND ((pedcompra.situacao = ''FECHADO'') OR (pedcompra.situacao = ''CANCELADO'')) AND ');
   	DMESTOQUE.TRel.sql.Add('          ((docfis.SERIE = ''01'') OR (docfis.SERIE = ''1'')  OR ');
   	DMESTOQUE.TRel.sql.Add('          (docfis.SERIE = ''1A'') OR ');
   	DMESTOQUE.TRel.sql.Add('          (docfis.SERIE = ''03'') OR ');
   	DMESTOQUE.TRel.sql.Add('          (docfis.SERIE = ''06'') OR ');
   	DMESTOQUE.TRel.sql.Add('          (docfis.SERIE = ''22'')) AND ((docfis.nfestatus = ''1'') OR (docfis.nfestatus = ''3'') OR (docfis.nfestatus = ''4'')) and ');
   	DMESTOQUE.TRel.sql.Add('          (docfis.emissaopropria=''1'') ');
   	DMESTOQUE.TRel.sql.Add('          order by docfis.numdocfiscint ');
   	DMESTOQUE.TRel.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
   	DMESTOQUE.TRel.Prepare;
       DMESTOQUE.TRel.Open;
       If not DMESTOQUE.TRel.IsEmpty
       Then Begin
         FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelDanfeSint.frf');
         FSRel.ShowReport;
       End
       Else Begin
			MessageDlg('Relatório retornou vazio', mtWarning, [mbOK], 0);
       End;
   Except
		MessageDlg('A Chamada do relatório retornou com erros', mtWarning, [mbOK], 0);
   End;
End;


//Paulo 06/12/2011: Função Relatório de danfes de Entrada com produtos
Procedure TFRelPeriodoFiscal.ImpRelDanfeEntradasSinteticoProdutos;
Begin
	Try
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
   	DMESTOQUE.TRel.sql.Add('select docfis.cod_periodofiscal, docfis.numdocfis, pedcompra.situacao, ');
   	DMESTOQUE.TRel.sql.Add('vwfornec.nome as CLIENTE, docfis.vlrtotdocnf, docfis.vlrtotipi, ');
   	DMESTOQUE.TRel.sql.Add('docfis.vlricmsubs, docfis.vlrfrete, docfis.dtemissao, vwfornec.cpfcnpj, itenspedc.valunit,');
       DMESTOQUE.TRel.sql.Add('subproduto.descricao, subproduto.cod_interno, itenspedc.qtdeprod,itenspedc.valortotal');
       DMESTOQUE.TRel.sql.Add('FROM pedcompra ');
   	DMESTOQUE.TRel.sql.Add('left join docfis on pedcompra.cod_pedcomp = docfis.cod_pedido ');
   	DMESTOQUE.TRel.sql.Add('left join vwfornec on pedcompra.cod_fornec = vwfornec.cod_fornec ');
       DMESTOQUE.TRel.sql.Add('left join itenspedc on pedcompra.cod_pedcomp = itenspedc.cod_pedcompra');
       DMESTOQUE.TRel.sql.Add('left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
       DMESTOQUE.TRel.sql.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   	DMESTOQUE.TRel.sql.Add('WHERE');
   	DMESTOQUE.TRel.sql.Add('(docfis.COD_PERIODOFISCAL=:PERIODOFISCAL) and (pedcompra.fisco=''NF'') AND ((pedcompra.situacao = ''FECHADO'') OR (pedcompra.situacao = ''CANCELADO'')) AND ');
   	DMESTOQUE.TRel.sql.Add('((docfis.SERIE = ''01'') OR (docfis.SERIE = ''1'')  OR ');
   	DMESTOQUE.TRel.sql.Add('(docfis.SERIE = ''1A'') OR ');
   	DMESTOQUE.TRel.sql.Add('(docfis.SERIE = ''03'') OR ');
   	DMESTOQUE.TRel.sql.Add('(docfis.SERIE = ''06'') OR ');
   	DMESTOQUE.TRel.sql.Add('(docfis.SERIE = ''22'')) AND ((docfis.nfestatus = ''1'') OR (docfis.nfestatus = ''3'') OR (docfis.nfestatus = ''4'')) and ');
   	DMESTOQUE.TRel.sql.Add('(docfis.emissaopropria=''1'') ');
   	DMESTOQUE.TRel.sql.Add('order by docfis.numdocfiscint ');
   	DMESTOQUE.TRel.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
   	DMESTOQUE.TRel.Prepare;
       DMESTOQUE.TRel.Open;
       If not DMESTOQUE.TRel.IsEmpty
       Then Begin
         FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfRelDanfeSint_Prod.frf');
         FSRel.ShowReport;
       End
       Else Begin
			MessageDlg('Relatório retornou vazio', mtWarning, [mbOK], 0);
       End;
   Except
		MessageDlg('A Chamada do relatório retornou com erros', mtWarning, [mbOK], 0);
   End;
End;

//Função Utilizada para imprimir o relatório de produtos vendidos durante o período fiscal separado por tributação
Procedure TFRelPeriodoFiscal.ImpRelProdTributados;
Begin
	Try
       DMESTOQUE.TRel.Close;
       DMESTOQUE.TRel.SQL.Clear;
   	DMESTOQUE.TRel.sql.Add('  select docfissaida.cod_periodofiscal, docfissaida.numdocfis, pedvenda.situacao, cst.cod_sit_trib, cst.substituicao, vwsimilar.contrint, vwsimilar.descricao, ');
   	DMESTOQUE.TRel.sql.Add(' subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL1').AsString+' AS PRIMCOD, subproduto.'+DMMACS.TLoja.FieldByName('CODPRODREL2').AsString+' AS SEGCOD, ');
   	DMESTOQUE.TRel.sql.Add('  vwsimilar.estfisico as estoque, itenspedven.valortotal, itenspedven.qtdeprod as QTD, estoque.VLRUNITCOMP as valor from itenspedven ');
   	DMESTOQUE.TRel.sql.Add('  left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda ');
   	DMESTOQUE.TRel.sql.Add('  left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido ');
   	DMESTOQUE.TRel.sql.Add('  left join estoque on itenspedven.cod_estoque = estoque.cod_estoque ');
   	DMESTOQUE.TRel.sql.Add('  Left join vwsimilar on estoque.cod_estoque = vwsimilar.cod_estoque ');
   	DMESTOQUE.TRel.sql.Add('  Left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');
   	DMESTOQUE.TRel.sql.Add('  left join cst on subproduto.cod_cst = cst.cod_cst ');
   	DMESTOQUE.TRel.SQL.Add(' WHERE ');
   	DMESTOQUE.TRel.SQL.Add(' (docfissaida.COD_PERIODOFISCAL=:PERIODOFISCAL) and (pedvenda.FISCO=''NF'') AND ((pedvenda.situacao = ''FECHADO'') OR (pedvenda.situacao = ''CANCELADO'')) AND ');
   	DMESTOQUE.TRel.SQL.Add(' ((docfissaida.SERIE = ''01'') OR (docfissaida.SERIE = ''1'')  OR ');
   	DMESTOQUE.TRel.SQL.Add(' (docfissaida.SERIE = ''1A'') OR  ');
   	DMESTOQUE.TRel.SQL.Add(' (docfissaida.SERIE = ''03'') OR ');
   	DMESTOQUE.TRel.SQL.Add(' (docfissaida.SERIE = ''06'') OR  ');
   	DMESTOQUE.TRel.SQL.Add(' (docfissaida.SERIE = ''22'')) ');
   	DMESTOQUE.TRel.SQL.Add(' order by cst.substituicao, primcod ');
   	DMESTOQUE.TRel.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
   	DMESTOQUE.TRel.Prepare;
       DMESTOQUE.TRel.Open;
       If not DMESTOQUE.TRel.IsEmpty
       Then Begin 
         FSRel.LoadFromFile('C:\MZR\MACS\Rel\FrfProdVendaPeriodoTributa.frf');
         FSRel.ShowReport;
       End
       Else Begin
			MessageDlg('Relatório retornou vazio', mtWarning, [mbOK], 0);
       End;
   Except
		MessageDlg('A Chamada do relatório retornou com erros', mtWarning, [mbOK], 0);
   End;
End;
procedure TFRelPeriodoFiscal.FormActivate(Sender: TObject);
begin
  inherited;
   Caption:='Relatórios' ;  
   DMMACS.TPeriodoFiscal.Close;
   DMMACS.TPeriodoFiscal.SQL.Clear;
   DMMACS.TPeriodoFiscal.SQL.Add('Select * from periodofiscal');
   DMMACS.TPeriodoFiscal.SQL.Add('order by periodofiscal.dtfinal desc');
   DMMACS.TPeriodoFiscal.Open;
	if FMenu.TIPOREL = 'PERIODOPRODTRIBUTA' Then
   begin
       Caption := 'Vendas por Tributação';
       pOrigemXml.Visible := False;
   end;

   if FMenu.TIPOREL = 'CONTABILIDADE' then
   begin
       Caption := 'Arquivos para contabilidade';
       pOrigemXml.Visible := True;
   end;
end;

procedure TFRelPeriodoFiscal.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
   PrepareImp;
end;
//Paulo 14/10/2010: para imprimir relatório de Danfes de venda pelo conforme o periodo fiscal
Procedure TFRelPeriodoFiscal.ImpRelDanfeVenda;
var
   I, XCod_tmp: Integer;
begin

	try
           //Paulo 10/08/2010: Filtra o periodo fiscal
           FiltraTabela(DMMACS.TPeriodoFiscal,'PERIODOFISCAL','','','WHERE PERIODOFISCAL.DTINICIAL ='+DBEdit1.Text+'AND PERIODOFISCAL.DTIFINAL ='+DBEdit2.Text);
      		//Paulo 10/08/2010: FILTRA CIDADE
	   		FiltraTabela(DMGEOGRAFIA.WCidade,'VWCIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');

           {if XRelDanfe = 'VENDA' then
           begin
               //Paulo 10/08/2011:armazena os dados da fatura na tabela tmp
               //ImpFaturaDanfeVenda;

      			DMESTOQUE.Alx.Close;
      			DMESTOQUE.Alx.SQL.Clear;
      			DMESTOQUE.Alx.SQL.Add('select itenspedven.cod_estoque, itenspedven.valortotal, itenspedven.qtdeprod, itenspedven.valunit, itenspedven.aplicarst, itenspedven.cfop,');
      			DMESTOQUE.Alx.SQL.Add('estoque.cod_subprod, subproduto.descricao,lote.numero,');
      			DMESTOQUE.Alx.SQL.Add('subproduto.'+ DMMACS.TLoja.FieldByName('CODPRODREL1').AsString +' as contrint, subproduto.cod_cst, subproduto.cod_unidvenda, subproduto.ncm, subproduto.marca, cst.cod_sit_trib,');
      			DMESTOQUE.Alx.SQL.Add('unidade.sigla_unid, pedvenda.numped, itenspedven.tipolista, itenspedven.aliqicms, itenspedven.aliqipi, itenspedven.vlripi, itenspedven.IPNPMC, itenspedven.DESCPRO, ');
      			DMESTOQUE.Alx.SQL.Add('itenspedven.BASEICMS, itenspedven.VLRICMS , itenspedven.BASEICMSSUBS, itenspedven.VLRICMSSUBS , itenspedven.MVADESTINO,');
           	DMESTOQUE.Alx.SQL.Add('pedvenda.cod_pedvenda, pedvenda.cod_cliente, pedvenda.dtpedven, pedvenda.numped, pedvenda.valor, pedvenda.dtfech,');
               DMESTOQUE.Alx.SQL.Add('despadic.cod_despadic,despadic.despesa,despadic.cst,despadic.cfop AS CFOPSERV,despadic.qtd,despadic.vlrfinal,despadic.vlrtotfin,');
           	DMESTOQUE.Alx.SQL.Add(' cliente.cod_pessoa, cliente.cod_interno as CODCLI, pessoa.nome as nomedes,pessoaj.razao_social, pessoaj.insc_est AS IE, pessoa.cpfcnpj, pessoa.bairro, pessoa.cep, pessoa.endereco, pessoa.endnumero,');
           	DMESTOQUE.Alx.SQL.Add('pessoa.telrel, pessoa.cod_cidade, cidade.nome as NOMECIDADE, cidade.cod_estado, estado.uf_estado,');
           	DMESTOQUE.Alx.SQL.Add('docfissaida.baseicms AS BICMS, docfissaida.vlricms as VICMS, docfissaida.bascalsubs, docfissaida.dtentsaid, docfissaida.dtemissao, docfissaida.vlrdesconto, docfissaida.horasaid, docfissaida.vlricmsubs, docfissaida.vlrtotprod,');
           	DMESTOQUE.Alx.SQL.Add('docfissaida.vlrfrete, docfissaida.vlrseg, docfissaida.nfeambiente, docfissaida.vlroutrasdesp, docfissaida.vlrtotipi, docfissaida.vlrtotdocnf,docfissaida.nfestatus, docfissaida.OBS AS OBSFISCAL,');
           	DMESTOQUE.Alx.SQL.Add('docfissaida.numdocfis, docfissaida.nfechave, docfissaida.nfeprotocolo, docfissaida.nfeserie,docfissaida.COD_PERIODOFISCAL, cfop.descricao as descricaocfop, cfop.cfop, docfissaida.RESERVFISC01, docfissaida.DADOSAD01,');
           	DMESTOQUE.Alx.SQL.Add('docfissaida.freteconta, docfissaida.placa, docfissaida.ufplaca, docfissaida.quantfrete, docfissaida.especiefrete, docfissaida.marcafrete, docfissaida.pesobruto, docfissaida.pesoliq, docfissaida.cod_transp, docfissaida.NUMCONHEC, docfissaida.antt,');
           	DMESTOQUE.Alx.SQL.Add('cfop.descricao as descricaocfop, cfop.cfop, cfop.cfop as cod_unidade, cfop.cfop as sigla_unid,tmp.obs, tmp.int1, tmp.vlr2 AS DESCPROD, vwfornec.nome as nomeFrete, vwfornec.cpfcnpj as cnpjfrete,');
               DMESTOQUE.Alx.SQL.Add('vwfornec.cidade as CidFrete,vwfornec.uf as uffrete, vwfornec.insc_est as inscFrete, vwfornec.endereco as endFrete');
               DMESTOQUE.Alx.SQL.Add('from itenspedven');
           	DMESTOQUE.Alx.SQL.Add('left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');
      	    	DMESTOQUE.Alx.SQL.Add('left join estoque on estoque.cod_estoque = itenspedven.cod_estoque');
           	DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
           	DMESTOQUE.Alx.SQL.Add('left join cst on itenspedven.cod_cst = cst.cod_cst');
           	DMESTOQUE.Alx.SQL.Add('left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
               DMESTOQUE.Alx.SQL.Add('left join despadic on despadic.cod_gerador = pedvenda.cod_pedvenda');
           	DMESTOQUE.Alx.SQL.Add('left join lote on itenspedven.cod_lote = lote.cod_lote');
           	DMESTOQUE.Alx.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
           	DMESTOQUE.Alx.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
               DMESTOQUE.Alx.SQL.Add('left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa');
           	DMESTOQUE.Alx.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
           	DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
           	DMESTOQUE.Alx.SQL.Add('left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido');
           	DMESTOQUE.Alx.SQL.Add('left join cfop on docfissaida.cod_cfop = cfop.cod_cfop');
               DMESTOQUE.Alx.SQL.Add('left join tmp on docfissaida.cod_pedido = tmp.int1');
               DMESTOQUE.Alx.SQL.Add('left join vwfornec on docfissaida.cod_transp = vwfornec.cod_fornec');
           	DMESTOQUE.Alx.SQL.Add('where (docfissaida.COD_PERIODOFISCAL= :CODPER) and (docfissaida.modelonf = ''55'') and((docfissaida.nfestatus = 1) or (docfissaida.nfestatus = 3)) ');
           	DMESTOQUE.Alx.SQL.Add('ORDER BY docfissaida.numdocfisint');
           	DMESTOQUE.Alx.ParamByName('CODPER').AsInteger:= DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
               DMESTOQUE.Alx.Open;
           end;
           if XRelDanfe = 'ORDEM' then
           begin
               //Paulo 10/08/2011:armazena os dados da fatura na tabela tmp
               //ImpFaturaDanfeOrdem;

      			DMESTOQUE.Alx.Close;
      			DMESTOQUE.Alx.SQL.Clear;
      			DMESTOQUE.Alx.SQL.Add('select itprodord.cod_estoque, itprodord.total AS valortotal, itprodord.qtd AS qtdeprod, itprodord.vlrunit as valunit, itprodord.aplicarst, itprodord.cfop,');
      			DMESTOQUE.Alx.SQL.Add('estoque.cod_subprod, subproduto.descricao,');
      			DMESTOQUE.Alx.SQL.Add('subproduto.'+ DMMACS.TLoja.FieldByName('CODPRODREL1').AsString +' as contrint, subproduto.cod_cst, subproduto.cod_unidvenda, subproduto.ncm, subproduto.marca, cst.cod_sit_trib,');
      			DMESTOQUE.Alx.SQL.Add('unidade.sigla_unid, ordem.numero, itprodord.aliqicms, itprodord.aliqipi, itprodord.vlripi, itprodord.desconto as DESCPRO,');
      			DMESTOQUE.Alx.SQL.Add('itprodord.baseicms, itprodord.vlricms , itprodord.baseicmssubs, itprodord.vlricmssubs ,');
           	DMESTOQUE.Alx.SQL.Add('ordem.cod_ordem as cod_pedvenda, ordem.cod_cliente, ordem.dtabert, ordem.numero, ordem.totord, ordem.dtfech,');
           	DMESTOQUE.Alx.SQL.Add(' cliente.cod_pessoa, cliente.cod_interno as CODCLI, pessoa.nome as nomedes,pessoaj.razao_social, pessoaj.insc_est AS IE, pessoa.cpfcnpj, pessoa.bairro, pessoa.cep, pessoa.endereco, pessoa.endnumero,');
           	DMESTOQUE.Alx.SQL.Add('pessoa.telrel, pessoa.cod_cidade, cidade.nome as NOMECIDADE, cidade.cod_estado, estado.uf_estado,');
           	DMESTOQUE.Alx.SQL.Add('docfisord.baseicms AS BICMS, docfisord.vlricms AS VICMS, docfisord.bascalsubs, docfisord.dtentsaid, docfisord.dtemissao, docfisord.vlrdesconto, docfisord.horasaid, docfisord.vlricmsubs, docfisord.vlrtotprod,');
           	DMESTOQUE.Alx.SQL.Add('docfisord.vlrfrete, docfisord.vlrseg, docfisord.nfeambiente, docfisord.vlroutrasdesp, docfisord.vlrtotipi, docfisord.vlrtotdocnf,docfisord.nfestatus,docfisord.OBS AS OBSFISCAL,');
               DMESTOQUE.Alx.SQL.Add('docfisord.numdocfis, docfisord.nfechave, docfisord.nfeprotocolo, docfisord.nfeserie,docfisord.cod_periodofiscal, cfop.descricao as descricaocfop, cfop.cfop, docfisord.reservfisc01, docfisord.dadosad01,');
           	DMESTOQUE.Alx.SQL.Add('docfisord.freteconta, docfisord.placa, docfisord.ufplaca, docfisord.quantfrete, docfisord.especiefrete, docfisord.marcafrete, docfisord.pesobruto, docfisord.pesoliq, docfisord.cod_transp, docfisord.numconhec, docfisord.antt,');
           	DMESTOQUE.Alx.SQL.Add('cfop.descricao as descricaocfop, cfop.cfop, cfop.cfop as cod_unidade, cfop.cfop as sigla_unid,tmp.obs, tmp.int1, tmp.vlr2 AS DESCPROD, vwfornec.nome as nomeFrete, vwfornec.cpfcnpj as cnpjfrete,');
               DMESTOQUE.Alx.SQL.Add('vwfornec.cidade as CidFrete,vwfornec.uf as uffrete, vwfornec.insc_est as inscFrete, vwfornec.endereco as endFrete');
               DMESTOQUE.Alx.SQL.Add('from itprodord');
           	DMESTOQUE.Alx.SQL.Add('left join ordem on itprodord.cod_ordem = ordem.cod_ordem');
      	    	DMESTOQUE.Alx.SQL.Add('left join estoque on itprodord.cod_estoque = estoque.cod_estoque');
           	DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
           	DMESTOQUE.Alx.SQL.Add('left join cst on itprodord.cod_cst = cst.cod_cst');
           	DMESTOQUE.Alx.SQL.Add('left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade');
               DMESTOQUE.Alx.SQL.Add('left join cliente on ordem.cod_cliente = cliente.cod_cliente');
           	DMESTOQUE.Alx.SQL.Add('left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
               DMESTOQUE.Alx.SQL.Add('left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa');
           	DMESTOQUE.Alx.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
           	DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
           	DMESTOQUE.Alx.SQL.Add('left join docfisord on ordem.cod_ordem = docfisord.cod_ordem');
           	DMESTOQUE.Alx.SQL.Add('left join cfop on docfisord.cod_cfop = cfop.cod_cfop');
               DMESTOQUE.Alx.SQL.Add('left join tmp on docfisord.cod_ordem = tmp.int1');
               DMESTOQUE.Alx.SQL.Add('left join vwfornec on docfisord.cod_transp = vwfornec.cod_fornec');
               DMESTOQUE.Alx.SQL.Add('where (docfisord.cod_periodofiscal= :CODPER) and (docfisord.modelonf = ''55'') and ((docfisord.nfestatus = 1) or (docfisord.nfestatus = 3))');
           	DMESTOQUE.Alx.SQL.Add('ORDER BY docfisord.numdocfisint');
           	DMESTOQUE.Alx.ParamByName('CODPER').AsInteger:= DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
               DMESTOQUE.Alx.Open;
           end;
           if XRelDanfe = 'COMPRA' then
           begin
               ImpDescDanfeCompra;

      			DMESTOQUE.Alx.Close;
      			DMESTOQUE.Alx.SQL.Clear;
      			DMESTOQUE.Alx.SQL.Add('select itenspedc.cod_estoque, itenspedc.valortotal, itenspedc.qtdeprod, itenspedc.valunit, itenspedc.cfop,');
      			DMESTOQUE.Alx.SQL.Add('estoque.cod_subprod, subproduto.descricao,');
      			DMESTOQUE.Alx.SQL.Add('subproduto.'+ DMMACS.TLoja.FieldByName('CODPRODREL1').AsString +' as contrint, subproduto.cod_cst, subproduto.cod_unidvenda, subproduto.ncm, subproduto.marca, cst.cod_sit_trib,');
      			DMESTOQUE.Alx.SQL.Add('unidade.sigla_unid, pedcompra.numped, itenspedc.aliqicms, itenspedc.aliqipi, itenspedc.vlripi, itenspedc.descpro,');
      			DMESTOQUE.Alx.SQL.Add('itenspedc.baseicms, itenspedc.vlricms , itenspedc.baseicmssubs, itenspedc.vlricmssubs,');
           	DMESTOQUE.Alx.SQL.Add('pedcompra.cod_pedcomp as cod_pedvenda, pedcompra.cod_fornec as cod_cliente, pedcompra.dtpedcomp, pedcompra.numped, pedcompra.valor, pedcompra.dtfech,');
           	DMESTOQUE.Alx.SQL.Add(' fornecedor.cod_fornec, fornecedor.cod_interno as CODCLI, pessoa.nome as nomedes,pessoaj.razao_social, pessoaj.insc_est AS IE, pessoa.cpfcnpj, pessoa.bairro, pessoa.cep, pessoa.endereco, pessoa.endnumero,');
           	DMESTOQUE.Alx.SQL.Add('pessoa.telrel, pessoa.cod_cidade, cidade.nome as NOMECIDADE, cidade.cod_estado, estado.uf_estado,');
           	DMESTOQUE.Alx.SQL.Add('docfis.baseicms AS BICMS, docfis.vlricms AS VICMS, docfis.bascalsubs, docfis.dtentsaid, docfis.dtemissao, docfis.vlrdesconto, docfis.horasaid, docfis.vlricmsubs, docfis.vlrtotprod,');
           	DMESTOQUE.Alx.SQL.Add('docfis.vlrfrete, docfis.vlrseg, docfis.nfeambiente, docfis.vlroutrasdesp, docfis.vlrtotipi, docfis.vlrtotdocnf,docfis.nfestatus, DOCFIS.OBS AS OBSFISCAL,');
           	DMESTOQUE.Alx.SQL.Add('docfis.numdocfis, docfis.nfechave, docfis.nfeprotocolo, docfis.nfeserie,docfis.cod_periodofiscal, cfop.descricao as descricaocfop, cfop.cfop,tmp.int1, tmp.vlr2 AS DESCPROD, vwfornec.nome as nomeFrete, vwfornec.cpfcnpj as cnpjfrete,');
           	DMESTOQUE.Alx.SQL.Add('docfis.freteconta, docfis.placa, docfis.ufplaca, docfis.quantfrete, docfis.especiefrete, docfis.marcafrete, docfis.pesobruto, docfis.pesoliq, docfis.cod_transp, docfis.numconhec,');
           	DMESTOQUE.Alx.SQL.Add('cfop.descricao as descricaocfop, cfop.cfop, cfop.cfop as cod_unidade, cfop.cfop as sigla_unid,tmp.obs, tmp.int1, tmp.vlr2 AS DESCPROD, TMP.DESC2 as aplicarst, TMP.DESC1 AS ANTT,TMP.DESC3 AS RESERVFISC01, TMP.VLR3 AS DADOSAD01,');
               DMESTOQUE.Alx.SQL.Add('vwfornec.cidade as CidFrete,vwfornec.uf as uffrete, vwfornec.insc_est as inscFrete, vwfornec.endereco as endFrete');
           	DMESTOQUE.Alx.SQL.Add('from itenspedc');
      	    	DMESTOQUE.Alx.SQL.Add('left join estoque on itenspedc.cod_estoque = estoque.cod_estoque');
           	DMESTOQUE.Alx.SQL.Add('left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
           	DMESTOQUE.Alx.SQL.Add('left join cst on itenspedc.cod_cst = cst.cod_cst');
           	DMESTOQUE.Alx.SQL.Add('left join unidade on subproduto.cod_unidcompra = unidade.cod_unidade');
           	DMESTOQUE.Alx.SQL.Add('left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp');
               DMESTOQUE.Alx.SQL.Add('left join fornecedor on pedcompra.cod_fornec = fornecedor.cod_fornec');
           	DMESTOQUE.Alx.SQL.Add('left join pessoa on fornecedor.cod_pessoa = pessoa.cod_pessoa');
               DMESTOQUE.Alx.SQL.Add('left join pessoaj on pessoaj.cod_pessoa = pessoa.cod_pessoa');
           	DMESTOQUE.Alx.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
           	DMESTOQUE.Alx.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
           	DMESTOQUE.Alx.SQL.Add('left join docfis on pedcompra.cod_pedcomp = docfis.cod_pedido');
           	DMESTOQUE.Alx.SQL.Add('left join cfop on docfis.cod_cfop = cfop.cod_cfop');
               DMESTOQUE.Alx.SQL.Add('left join tmp on docfis.cod_pedido = tmp.int1');
               DMESTOQUE.Alx.SQL.Add('left join vwfornec on docfis.cod_transp = vwfornec.cod_fornec');
           	DMESTOQUE.Alx.SQL.Add('where  (docfis.COD_PERIODOFISCAL= :CODPER) and ((docfis.nfestatus = 1) or (docfis.nfestatus = 3)  or (docfis.nfestatus = 4)) ');
           	DMESTOQUE.Alx.SQL.Add('ORDER BY docfis.numdocfis');
           	DMESTOQUE.Alx.ParamByName('CODPER').AsInteger:= DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
               DMESTOQUE.Alx.Open;
           end;
           FSDanfe.LoadFromFile('C:\MZR\MACS\Rel\FrfRelDANFE.frf');
           FSDanfe.ShowReport;}

           dataSetCidade.DataSet := DMGEOGRAFIA.WCidade;
           
           if XRelDanfe = 'VENDA' then
           begin
               DMESTOQUE.Alx1.Close;
               DMESTOQUE.Alx1.SQL.Clear;
               DMESTOQUE.Alx1.SQL.Add(' SELECT DISTINCT(ITENSPEDVEN.COD_ESTOQUE), docfissaida.cod_docfisc, PEDVENDA.NUMPED, ITENSPEDVEN.VALORTOTAL, ITENSPEDVEN.QTDEPROD, ITENSPEDVEN.VALUNIT, ');
               DMESTOQUE.Alx1.SQL.Add(' ITENSPEDVEN.APLICARST, ITENSPEDVEN.CFOP CFOPITEM, ESTOQUE.COD_SUBPROD, SUBPRODUTO.DESCRICAO,LOTE.NUMERO, ');
               DMESTOQUE.Alx1.SQL.Add(' SUBPRODUTO.CONTRINT AS CONTRINT, SUBPRODUTO.COD_CST, SUBPRODUTO.COD_UNIDVENDA, SUBPRODUTO.NCM, ');
               DMESTOQUE.Alx1.SQL.Add(' SUBPRODUTO.MARCA, CST.COD_SIT_TRIB, UNIDADE.SIGLA_UNID, ITENSPEDVEN.TIPOLISTA, ');
               DMESTOQUE.Alx1.SQL.Add(' ITENSPEDVEN.ALIQICMS, ITENSPEDVEN.ALIQIPI, ITENSPEDVEN.VLRIPI, ITENSPEDVEN.IPNPMC, ITENSPEDVEN.DESCPRO, ');
               DMESTOQUE.Alx1.SQL.Add(' ITENSPEDVEN.BASEICMS, ITENSPEDVEN.VLRICMS , ITENSPEDVEN.BASEICMSSUBS, ITENSPEDVEN.VLRICMSSUBS , ');
               DMESTOQUE.Alx1.SQL.Add(' ITENSPEDVEN.MVADESTINO, PEDVENDA.COD_PEDVENDA, PEDVENDA.COD_CLIENTE, PEDVENDA.DTPEDVEN, ');
               DMESTOQUE.Alx1.SQL.Add(' PEDVENDA.VALOR, PEDVENDA.DTFECH, CLIENTE.COD_PESSOA, CLIENTE.COD_INTERNO AS CODCLI, PESSOA.NOME AS NOMEDES, ');
               DMESTOQUE.Alx1.SQL.Add(' PESSOAJ.RAZAO_SOCIAL, PESSOAJ.INSC_EST AS IE, ');
               DMESTOQUE.Alx1.SQL.Add(' PESSOA.CPFCNPJ, PESSOA.BAIRRO, PESSOA.CEP, PESSOA.ENDERECO, PESSOA.ENDNUMERO, PESSOA.TELREL, PESSOA.COD_CIDADE, ');
               DMESTOQUE.Alx1.SQL.Add(' CIDADE.NOME AS NOMECIDADE, CIDADE.COD_ESTADO, ESTADO.UF_ESTADO, DOCFISSAIDA.BASEICMS AS BICMS, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.VLRICMS AS VICMS, DOCFISSAIDA.BASCALSUBS, DOCFISSAIDA.DTENTSAID, DOCFISSAIDA.DTEMISSAO, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.VLRDESCONTO, DOCFISSAIDA.HORASAID, DOCFISSAIDA.VLRICMSUBS, DOCFISSAIDA.VLRTOTPROD, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.VLRFRETE, DOCFISSAIDA.VLRSEG, DOCFISSAIDA.NFEAMBIENTE, DOCFISSAIDA.VLROUTRASDESP, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.VLRTOTIPI, DOCFISSAIDA.VLRTOTDOCNF,DOCFISSAIDA.NFESTATUS, DOCFISSAIDA.OBS AS OBSFISCAL, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.NUMDOCFIS, DOCFISSAIDA.NFECHAVE, DOCFISSAIDA.NFEPROTOCOLO, DOCFISSAIDA.NFESERIE, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.COD_PERIODOFISCAL, DOCFISSAIDA.RESERVFISC01, DOCFISSAIDA.DADOSAD01, DOCFISSAIDA.FRETECONTA, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.PLACA, DOCFISSAIDA.UFPLACA, DOCFISSAIDA.QUANTFRETE, DOCFISSAIDA.ESPECIEFRETE, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.MARCAFRETE, DOCFISSAIDA.PESOBRUTO, DOCFISSAIDA.PESOLIQ, DOCFISSAIDA.COD_TRANSP, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.NUMCONHEC, DOCFISSAIDA.ANTT, TMP.OBS, TMP.INT1, TMP.VLR2 AS DESCPROD, VWFORNEC.NOME AS NOMEFRETE, ');
               DMESTOQUE.Alx1.SQL.Add(' VWFORNEC.CPFCNPJ AS CNPJFRETE, VWFORNEC.CIDADE AS CIDFRETE, VWFORNEC.UF AS UFFRETE, ');
               DMESTOQUE.Alx1.SQL.Add(' VWFORNEC.INSC_EST AS INSCFRETE, VWFORNEC.ENDERECO AS ENDFRETE, ');
               DMESTOQUE.Alx1.SQL.Add(' CFOP.CFOP, CFOP.DESCRICAO AS DESCRICAOCFOP, CFOP1.CFOP CFOP1, CFOP1.DESCRICAO AS DESCRICAOCFOP1, CFOP2.CFOP CFOP2, CFOP2.DESCRICAO AS DESCRICAOCFOP2 ');
               DMESTOQUE.Alx1.SQL.Add(' FROM ITENSPEDVEN ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN PEDVENDA ON ITENSPEDVEN.COD_PEDVEN = PEDVENDA.COD_PEDVENDA ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ESTOQUE ON ESTOQUE.COD_ESTOQUE = ITENSPEDVEN.COD_ESTOQUE ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CST ON ITENSPEDVEN.COD_CST = CST.COD_CST ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDVENDA = UNIDADE.COD_UNIDADE ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN DESPADIC ON DESPADIC.COD_GERADOR = PEDVENDA.COD_PEDVENDA ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN LOTE ON ITENSPEDVEN.COD_LOTE = LOTE.COD_LOTE ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CLIENTE ON PEDVENDA.COD_CLIENTE = CLIENTE.COD_CLIENTE ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN PESSOA ON CLIENTE.COD_PESSOA = PESSOA.COD_PESSOA ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOAJ.COD_PESSOA = PESSOA.COD_PESSOA ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CIDADE ON PESSOA.COD_CIDADE = CIDADE.COD_CIDADE ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ESTADO ON CIDADE.COD_ESTADO = ESTADO.COD_ESTADO ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN DOCFISSAIDA ON PEDVENDA.COD_PEDVENDA = DOCFISSAIDA.COD_PEDIDO ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CFOP CFOP ON DOCFISSAIDA.COD_CFOP = CFOP.COD_CFOP ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CFOP CFOP1 ON DOCFISSAIDA.COD_CFOP1 = CFOP1.COD_CFOP ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CFOP CFOP2 ON DOCFISSAIDA.COD_CFOP2 = CFOP2.COD_CFOP ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN TMP ON DOCFISSAIDA.COD_PEDIDO = TMP.INT1 ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN VWFORNEC ON DOCFISSAIDA.COD_TRANSP = VWFORNEC.COD_FORNEC ');
               DMESTOQUE.Alx1.SQL.Add(' WHERE (DOCFISSAIDA.COD_PERIODOFISCAL = :FISCAL) AND (DOCFISSAIDA.MODELONF = ''55'') AND((DOCFISSAIDA.NFESTATUS = 1) OR (DOCFISSAIDA.NFESTATUS = 3)) ');
               DMESTOQUE.Alx1.SQL.Add(' ORDER BY DOCFISSAIDA.NUMDOCFISINT ');
               DMESTOQUE.Alx1.ParamByName('FISCAL').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
               DMESTOQUE.Alx1.Open;

               if DMESTOQUE.Alx1.IsEmpty then
               begin
                   MessageDlg('Não foi realizada nenhuma saída de venda no período.', mtInformation, [mbOK], 0);
               end
               else begin
                   FrxNfce.LoadFromFile('C:\MZR\MACS\Rel\FrfRelDANFE.fr3');
                   FrxNfce.ShowReport();

                   if FMenu.TIPOREL = 'CONTABILIDADE' then
                   begin
                       exportar.ShowDialog := False;
                       exportar.ShowProgress := False;
                       exportar.PrintOptimized := False;
                       exportar.FileName := xCaminhoContabilidade + '\Relatório NFe (PV).pdf';
                       FrxNfce.Export(exportar);
                   end;
               end;
           end;

           if XRelDanfe = 'ORDEM' then
           begin
               DMESTOQUE.Alx1.Close;
               DMESTOQUE.Alx1.SQL.Clear;
               DMESTOQUE.Alx1.SQL.Add(' SELECT DISTINCT(ITPRODORD.COD_ESTOQUE), ITPRODORD.TOTAL VALORTOTAL, ITPRODORD.QTD QTDEPROD, ITPRODORD.VLRUNIT VALUNIT, ');
               DMESTOQUE.Alx1.SQL.Add(' ITPRODORD.APLICARST, ITPRODORD.CFOP CFOPITEM, ESTOQUE.COD_SUBPROD, SUBPRODUTO.DESCRICAO, ');
               DMESTOQUE.Alx1.SQL.Add(' SUBPRODUTO.CONTRINT AS CONTRINT, SUBPRODUTO.COD_CST, SUBPRODUTO.COD_UNIDVENDA, SUBPRODUTO.NCM, ');
               DMESTOQUE.Alx1.SQL.Add(' SUBPRODUTO.MARCA, CST.COD_SIT_TRIB, UNIDADE.SIGLA_UNID, ');
               DMESTOQUE.Alx1.SQL.Add(' ITPRODORD.ALIQICMS, ITPRODORD.ALIQIPI, ITPRODORD.VLRIPI, ITPRODORD.DESCNF DESCPRO, ');
               DMESTOQUE.Alx1.SQL.Add(' ITPRODORD.BASEICMS, ITPRODORD.VLRICMS , ITPRODORD.BASEICMSSUBS, ITPRODORD.VLRICMSSUBS , ');
               DMESTOQUE.Alx1.SQL.Add(' CLIENTE.COD_PESSOA, CLIENTE.COD_INTERNO AS CODCLI, PESSOA.NOME AS NOMEDES, ');
               DMESTOQUE.Alx1.SQL.Add(' PESSOAJ.RAZAO_SOCIAL, PESSOAJ.INSC_EST AS IE, ');
               DMESTOQUE.Alx1.SQL.Add(' PESSOA.CPFCNPJ, PESSOA.BAIRRO, PESSOA.CEP, PESSOA.ENDERECO, PESSOA.ENDNUMERO, PESSOA.TELREL, PESSOA.COD_CIDADE, ');
               DMESTOQUE.Alx1.SQL.Add(' CIDADE.NOME AS NOMECIDADE, CIDADE.COD_ESTADO, ESTADO.UF_ESTADO, DOCFISORD.BASEICMS AS BICMS, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.VLRICMS AS VICMS, DOCFISORD.BASCALSUBS, DOCFISORD.DTENTSAID, DOCFISORD.DTEMISSAO, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.VLRDESCONTO, DOCFISORD.HORASAID, DOCFISORD.VLRICMSUBS, DOCFISORD.VLRTOTPROD, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.VLRFRETE, DOCFISORD.VLRSEG, DOCFISORD.NFEAMBIENTE, DOCFISORD.VLROUTRASDESP, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.VLRTOTIPI, DOCFISORD.VLRTOTDOCNF,DOCFISORD.NFESTATUS, DOCFISORD.OBS AS OBSFISCAL, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.NUMDOCFIS, DOCFISORD.NFECHAVE, DOCFISORD.NFEPROTOCOLO, DOCFISORD.NFESERIE, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.COD_PERIODOFISCAL, DOCFISORD.RESERVFISC01, DOCFISORD.DADOSAD01, DOCFISORD.FRETECONTA, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.PLACA, DOCFISORD.UFPLACA, DOCFISORD.QUANTFRETE, DOCFISORD.ESPECIEFRETE, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.MARCAFRETE, DOCFISORD.PESOBRUTO, DOCFISORD.PESOLIQ, DOCFISORD.COD_TRANSP, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.NUMCONHEC, DOCFISORD.ANTT, TMP.OBS, TMP.INT1, TMP.VLR2 AS DESCPROD, VWFORNEC.NOME AS NOMEFRETE, ');
               DMESTOQUE.Alx1.SQL.Add(' VWFORNEC.CPFCNPJ AS CNPJFRETE, VWFORNEC.CIDADE AS CIDFRETE, VWFORNEC.UF AS UFFRETE, ');
               DMESTOQUE.Alx1.SQL.Add(' VWFORNEC.INSC_EST AS INSCFRETE, VWFORNEC.ENDERECO AS ENDFRETE, ');
               DMESTOQUE.Alx1.SQL.Add(' CFOP.CFOP, CFOP.DESCRICAO AS DESCRICAOCFOP, CFOP1.CFOP CFOP1, CFOP1.DESCRICAO AS DESCRICAOCFOP1, CFOP2.CFOP CFOP2, CFOP2.DESCRICAO AS DESCRICAOCFOP2 ');
               DMESTOQUE.Alx1.SQL.Add(' FROM ITPRODORD ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ORDEM ON ITPRODORD.COD_ORDEM = ORDEM.COD_ORDEM ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ESTOQUE ON ESTOQUE.COD_ESTOQUE = ITPRODORD.COD_ESTOQUE ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CST ON ITPRODORD.COD_CST = CST.COD_CST ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDVENDA = UNIDADE.COD_UNIDADE ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CLIENTE ON ORDEM.COD_CLIENTE = CLIENTE.COD_CLIENTE ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN PESSOA ON CLIENTE.COD_PESSOA = PESSOA.COD_PESSOA ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOAJ.COD_PESSOA = PESSOA.COD_PESSOA ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CIDADE ON PESSOA.COD_CIDADE = CIDADE.COD_CIDADE ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ESTADO ON CIDADE.COD_ESTADO = ESTADO.COD_ESTADO ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN DOCFISORD ON ORDEM.COD_ORDEM = DOCFISORD.COD_ORDEM ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CFOP CFOP ON DOCFISORD.COD_CFOP = CFOP.COD_CFOP ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CFOP CFOP1 ON DOCFISORD.COD_CFOP1 = CFOP1.COD_CFOP ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CFOP CFOP2 ON DOCFISORD.COD_CFOP2 = CFOP2.COD_CFOP ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN TMP ON DOCFISORD.COD_ORDEM = TMP.INT1 ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN VWFORNEC ON DOCFISORD.COD_TRANSP = VWFORNEC.COD_FORNEC ');
               DMESTOQUE.Alx1.SQL.Add(' WHERE (DOCFISORD.COD_PERIODOFISCAL = :FISCAL) AND (DOCFISORD.MODELONF = ''55'') AND((DOCFISORD.NFESTATUS = 1) OR (DOCFISORD.NFESTATUS = 3)) ');
               DMESTOQUE.Alx1.SQL.Add(' ORDER BY DOCFISORD.NUMDOCFISINT ');
               DMESTOQUE.Alx1.ParamByName('FISCAL').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
               DMESTOQUE.Alx1.Open;

               if DMESTOQUE.Alx1.IsEmpty then
               begin
                   MessageDlg('Não foi realizada nenhuma saída de ordem de serviço no período.', mtInformation, [mbOK], 0);
               end
               else begin
                   FrxNfce.LoadFromFile('C:\MZR\MACS\Rel\FrfRelDANFE.fr3');
                   FrxNfce.ShowReport();
                   
                   if FMenu.TIPOREL = 'CONTABILIDADE' then
                   begin
                       exportar.ShowDialog := False;
                       exportar.ShowProgress := False;
                       exportar.PrintOptimized := False;
                       exportar.FileName := xCaminhoContabilidade + '\Relatório NFe (OS).pdf';
                       FrxNfce.Export(exportar);
                   end;
               end;
           end;
           
           if XRelDanfe = 'COMPRA' then
           begin
               DMESTOQUE.Alx1.Close;
               DMESTOQUE.Alx1.SQL.Clear;
               DMESTOQUE.Alx1.SQL.Add(' SELECT DISTINCT(ITENSPEDC.COD_ESTOQUE), ITENSPEDC.valortotal, ITENSPEDC.QTDEPROD, ITENSPEDC.VALUNIT, ');
               DMESTOQUE.Alx1.SQL.Add(' ITENSPEDC.CFOP CFOPITEM, ESTOQUE.COD_SUBPROD, SUBPRODUTO.DESCRICAO, ');
               DMESTOQUE.Alx1.SQL.Add(' SUBPRODUTO.CONTRINT AS CONTRINT, SUBPRODUTO.COD_CST, SUBPRODUTO.COD_UNIDVENDA, SUBPRODUTO.NCM, ');
               DMESTOQUE.Alx1.SQL.Add(' SUBPRODUTO.MARCA, CST.COD_SIT_TRIB, UNIDADE.SIGLA_UNID, ');
               DMESTOQUE.Alx1.SQL.Add(' ITENSPEDC.ALIQICMS, ITENSPEDC.ALIQIPI, ITENSPEDC.VLRIPI, ITENSPEDC.DESCNF DESCPRO, ');
               DMESTOQUE.Alx1.SQL.Add(' ITENSPEDC.BASEICMS, ITENSPEDC.VLRICMS , ITENSPEDC.BASEICMSSUBS, ITENSPEDC.VLRICMSSUBS, ');
               DMESTOQUE.Alx1.SQL.Add(' fornecedor.cod_pessoa, FORNECEDOR.cod_interno CODCLI, PESSOA.NOME AS NOMEDES, ');
               DMESTOQUE.Alx1.SQL.Add(' PESSOAJ.RAZAO_SOCIAL, PESSOAJ.INSC_EST AS IE, ');
               DMESTOQUE.Alx1.SQL.Add(' PESSOA.CPFCNPJ, PESSOA.BAIRRO, PESSOA.CEP, PESSOA.ENDERECO, PESSOA.ENDNUMERO, PESSOA.TELREL, PESSOA.COD_CIDADE, ');
               DMESTOQUE.Alx1.SQL.Add(' CIDADE.NOME AS NOMECIDADE, CIDADE.COD_ESTADO, ESTADO.UF_ESTADO, DOCFIS.BASEICMS AS BICMS, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFIS.VLRICMS AS VICMS, DOCFIS.BASCALSUBS, DOCFIS.DTENTSAID, DOCFIS.DTEMISSAO, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFIS.VLRDESCONTO, DOCFIS.HORASAID, DOCFIS.VLRICMSUBS, DOCFIS.VLRTOTPROD, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFIS.VLRFRETE, DOCFIS.VLRSEG, DOCFIS.NFEAMBIENTE, DOCFIS.VLROUTRASDESP, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFIS.VLRTOTIPI, DOCFIS.VLRTOTDOCNF,DOCFIS.NFESTATUS, DOCFIS.OBS AS OBSFISCAL, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFIS.NUMDOCFIS, DOCFIS.NFECHAVE, DOCFIS.NFEPROTOCOLO, DOCFIS.NFESERIE, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFIS.COD_PERIODOFISCAL, DOCFIS.FRETECONTA, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFIS.PLACA, DOCFIS.UFPLACA, DOCFIS.QUANTFRETE, DOCFIS.ESPECIEFRETE, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFIS.MARCAFRETE, DOCFIS.PESOBRUTO, DOCFIS.PESOLIQ, DOCFIS.COD_TRANSP, ');
               DMESTOQUE.Alx1.SQL.Add(' DOCFIS.NUMCONHEC, TMP.OBS, TMP.INT1, TMP.VLR2 AS DESCPROD, VWFORNEC.NOME AS NOMEFRETE, ');
               DMESTOQUE.Alx1.SQL.Add(' VWFORNEC.CPFCNPJ AS CNPJFRETE, VWFORNEC.CIDADE AS CIDFRETE, VWFORNEC.UF AS UFFRETE, ');
               DMESTOQUE.Alx1.SQL.Add(' VWFORNEC.INSC_EST AS INSCFRETE, VWFORNEC.ENDERECO AS ENDFRETE, ');
               DMESTOQUE.Alx1.SQL.Add(' CFOP.CFOP, CFOP.DESCRICAO AS DESCRICAOCFOP, CFOP1.CFOP CFOP1, CFOP1.DESCRICAO AS DESCRICAOCFOP1, CFOP2.CFOP CFOP2, CFOP2.DESCRICAO AS DESCRICAOCFOP2 ');
               DMESTOQUE.Alx1.SQL.Add(' FROM ITENSPEDC ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN PEDCOMPRA ON ITENSPEDC.cod_pedcompra = PEDCOMPRA.cod_pedcomp ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ESTOQUE ON ESTOQUE.COD_ESTOQUE = ITENSPEDC.COD_ESTOQUE ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CST ON ITENSPEDC.COD_CST = CST.COD_CST ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDVENDA = UNIDADE.COD_UNIDADE ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN fornecedor ON PEDCOMPRA.cod_fornec = FORNECEDOR.cod_fornec ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN PESSOA ON FORNECEDOR.COD_PESSOA = PESSOA.COD_PESSOA ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN PESSOAJ ON PESSOAJ.COD_PESSOA = PESSOA.COD_PESSOA ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CIDADE ON PESSOA.COD_CIDADE = CIDADE.COD_CIDADE ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ESTADO ON CIDADE.COD_ESTADO = ESTADO.COD_ESTADO ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN DOCFIS ON PEDCOMPRA.cod_pedcomp = DOCFIS.cod_pedido ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CFOP CFOP ON DOCFIS.COD_CFOP = CFOP.COD_CFOP ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CFOP CFOP1 ON DOCFIS.COD_CFOP1 = CFOP1.COD_CFOP ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN CFOP CFOP2 ON DOCFIS.COD_CFOP2 = CFOP2.COD_CFOP ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN TMP ON DOCFIS.cod_pedido = TMP.INT1 ');
               DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN VWFORNEC ON DOCFIS.COD_TRANSP = VWFORNEC.COD_FORNEC ');
               DMESTOQUE.Alx1.SQL.Add(' WHERE (DOCFIS.COD_PERIODOFISCAL = :FISCAL) AND (DOCFIS.MODELONF = ''55'') AND((DOCFIS.NFESTATUS = 1) OR (DOCFIS.NFESTATUS = 3)) ');
               DMESTOQUE.Alx1.SQL.Add(' ORDER BY DOCFIS.numdocfiscint ');
               DMESTOQUE.Alx1.ParamByName('FISCAL').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;               
               DMESTOQUE.Alx1.Open;

               if DMESTOQUE.Alx1.IsEmpty then
               begin
                   MessageDlg('Não foi realizada nenhuma entrada no período.', mtInformation, [mbOK], 0);
               end
               else begin
                   FrxNfce.LoadFromFile('C:\MZR\MACS\Rel\FrfRelDANFEEntrada.fr3');
                   FrxNfce.ShowReport();

                   if FMenu.TIPOREL = 'CONTABILIDADE' then
                   begin
                       exportar.ShowDialog := False;
                       exportar.ShowProgress := False;
                       exportar.PrintOptimized := False;
                       exportar.FileName := xCaminhoContabilidade + '\Relatório NFe (PC).pdf';
                       FrxNfce.Export(exportar);
                   end;
               end;
           end;
   except
       MessageDlg('A Chamada do relatório retornou com erros', mtWarning, [mbOK], 0);
   end;
end;

//Paulo 10/08/2011: seleciona e armazena os dados da fatura para gerar o relatório de danfes
Procedure TFRelPeriodoFiscal.ImpFaturaDanfeVenda;
var
   XSetCodigoPedVenda,I, XCod_tmp: Integer;
   XvlrParcProd:Real;
begin
       //prepara a tabela tmp
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('delete from tmp');
       DMMACS.TMP.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('select * from tmp');
       DMMACS.TMP.Open;

       //Recebe Informações de Fatura
       I:=1;
       XCod_tmp:=1;

       //Paulo 10/08/2011:filtra pedidos de venda
       DMESTOQUE.Alx.Close;
      	DMESTOQUE.Alx.SQL.Clear;
      	DMESTOQUE.Alx.SQL.Add('select pedvenda.cod_pedvenda, pessoa.cod_pessoa from pedvenda');
       DMESTOQUE.Alx.SQL.Add('left join docfissaida on pedvenda.cod_pedvenda = docfissaida.cod_pedido');
       DMESTOQUE.Alx.SQL.Add('left join cliente on pedvenda.cod_cliente = cliente.cod_cliente');
       DMESTOQUE.Alx.SQL.Add('left join pessoa on pedvenda.cod_cliente = cliente.cod_pessoa');
       DMESTOQUE.Alx.SQL.Add('where (docfissaida.COD_PERIODOFISCAL= :CODPER) and((docfissaida.nfestatus = 1) or (docfissaida.nfestatus = 3))');
       DMESTOQUE.Alx.SQL.Add('ORDER BY docfissaida.numdocfisint');
       DMESTOQUE.Alx.ParamByName('CODPER').AsInteger:= DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       DMESTOQUE.Alx.Open;
       DMESTOQUE.Alx.First;
       while not DMESTOQUE.Alx.Eof do
       begin
             XSetCodigoPedVenda:=DMESTOQUE.Alx.FieldByName('COD_PEDVENDA').AsInteger;
            // FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', IntToStr(DMESTOQUE.Alx.FieldByName('COD_PESSOA').AsInteger), '');

             //Paulo 10/08/2011: Calcula o desconto dos produtos
             DMESTOQUE.Alx5.Close;
             DMESTOQUE.Alx5.sql.Clear;
             DMESTOQUE.Alx5.SQL.Add('select sum(itenspedven.descnf)as descProd from itenspedven');
             DMESTOQUE.Alx5.SQL.Add('where itenspedven.cod_pedven= :CODPEDV');
             DMESTOQUE.Alx5.ParamByName('CODPEDV').AsInteger := XSetCodigoPedVenda;
             DMESTOQUE.Alx5.Open;

             
             //filtra wpedv
             DMSAIDA.WPedV.Close;
             DMSAIDA.WPedV.SQL.Clear;
             DMSAIDA.WPedV.SQL.Add(' select * from vwpedv where vwpedv.cod_pedvenda=:codigo ');
             DMSAIDA.WPedV.ParamByName('codigo').AsInteger:=XSetCodigoPedVenda;
             DMSAIDA.WPedV.Open;

             //Tenta encontras a Forma de pagamento
             If DMSAIDA.WPedV.FieldByName('formpag').AsString='À VISTA'
             Then Begin
                 //Paulo 11/03/2011: Filtra os lançamento de caixa
                 DMCAIXA.TLanCaixa.Close;
                 DMCAIXA.TLanCaixa.SQL.Clear;
                 DMCAIXA.TLanCaixa.SQL.Add('select * from lancaixa lc where lc.cod_gerador=:CODGERADOR and lc.tipogerador = ''PEDVENDA''');
                 DMCAIXA.TLanCaixa.ParamByName('CODGERADOR').AsInteger:= XSetCodigoPedVenda;
                 DMCAIXA.TLanCaixa.Open;
                 //Paulo 10/08/2011: para venda a vista
                 if not(DMCAIXA.TLanCaixa.IsEmpty)then
                 begin
                     DMMACS.TMP.Insert;
                     DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
                     DMMACS.TMP.FieldByName('INT1').AsInteger:=XSetCodigoPedVenda;
                     DMMACS.TMP.FieldByName('OBS').AsString:='À VISTA'+' - R$'+FormatFloat('0.00', DMCAIXA.TLanCaixa.FieldByName('valor').AsCurrency)+#13;
                     //Paulo 10/08/2011: Armazena desconto total dos produtos:
                     DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.Alx5.FieldByName('descProd').asCurrency;
                     DMMACS.TMP.Post;
                     DMMACS.Transaction.CommitRetaining;
                     XCod_tmp:=XCod_tmp+1;
                 end;
             End
             Else Begin
                 //filtra contas a receber
                 DMCONTA.TCtaR.Close;
                 DMCONTA.TCtaR.SQL.Clear;
                 DMCONTA.TCtaR.SQL.Add('select * from ctareceber where (ctareceber.cod_gerador=:CodGerador) and (ctareceber.tipogerador='+#39+'PEDVENDA'+#39+')');
                 DMCONTA.TCtaR.ParamByName('CodGerador').AsInteger:= XSetCodigoPedVenda;
                 DMCONTA.TCtaR.Open;
                 If Not DMCONTA.TCtaR.IsEmpty
                 Then Begin
                     //seleciona as parcelas do ctas a receber
                     DMCONTA.TParcCR.Close;
                     DMCONTA.TParcCR.SQL.Clear;
                     DMCONTA.TParcCR.SQL.Add('select * from parcelacr where parcelacr.cod_ctareceber=:ctareceber');
                     DMCONTA.TParcCR.ParamByName('ctareceber').AsInteger:=DMCONTA.TCtaR.fieldbyname('cod_ctareceber').AsInteger;
                     DMCONTA.TParcCR.Open;
                     If Not DMCONTA.TParcCR.IsEmpty
                     Then Begin
                         //percorre todas as tabelas capturando valor e vencimento
                         DMCONTA.TParcCR.First;
                         i:=1;
                         While not DMCONTA.TParcCR.Eof do
                         Begin
                             DMMACS.TMP.Insert;
                             DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
                             DMMACS.TMP.FieldByName('INT1').AsInteger:=XSetCodigoPedVenda;
                             If I=1 Then
                               DMMACS.TMP.FieldByName('OBS').AsString:=DMMACS.TMP.FieldByName('OBS').AsString+DMCONTA.TParcCR.FieldByName('dtvenc').AsString+' - R$'+FormatFloat('0.00', DMCONTA.TParcCR.FieldByName('valor').AsCurrency)
                             Else
                               DMMACS.TMP.FieldByName('OBS').AsString:=DMMACS.TMP.FieldByName('OBS').AsString+'          '+DMCONTA.TParcCR.FieldByName('dtvenc').AsString+' - R$'+FormatFloat('0.00', DMCONTA.TParcCR.FieldByName('valor').AsCurrency);
                             I:=I+1;

                             //Paulo 10/08/2011: Armazena desconto total dos produtos:
                             DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.Alx5.FieldByName('descProd').asCurrency;
                             DMMACS.TMP.Post;
                             DMMACS.Transaction.CommitRetaining;
                             XCod_tmp:=XCod_tmp+1;
                             DMCONTA.TParcCR.Next;
                         End;
                     End;
                 End;

             End;

             DMESTOQUE.Alx.Next;
        end;
        DMMACS.TMP.Close;
        DMMACS.TMP.SQL.Clear;
        DMMACS.TMP.SQL.Add('select * from tmp');
        DMMACS.TMP.Open;

end;

//Paulo 10/08/2011: seleciona e armazena os dados da fatura para gerar o relatório de danfes
Procedure TFRelPeriodoFiscal.ImpFaturaDanfeOrdem;
var
   XSetCodigoPedOrdem,I, XCod_tmp: Integer;
   XvlrParcProd:Real;
begin

           //prepara a tabela tmp
           DMMACS.TMP.Close;
           DMMACS.TMP.SQL.Clear;
           DMMACS.TMP.SQL.Add('delete from tmp');
           DMMACS.TMP.ExecSQL;
           DMMACS.Transaction.CommitRetaining;
           DMMACS.TMP.Close;
           DMMACS.TMP.SQL.Clear;
           DMMACS.TMP.SQL.Add('select * from tmp');
           DMMACS.TMP.Open;

           I:=1;
      	    XCod_tmp:=1;

           //Paulo 10/08/2011:filtra pedidos de venda
           DMESTOQUE.Alx.Close;
           DMESTOQUE.Alx.SQL.Clear;
           DMESTOQUE.Alx.SQL.Add('select ordem.cod_ordem, docfisord.vlrtotdocnf, docfisord.vlrtotprod from ordem');
           DMESTOQUE.Alx.SQL.Add('left join DOCFISORD on ordem.cod_ordem = DOCFISORD.cod_ordem');
           DMESTOQUE.Alx.SQL.Add('where (DOCFISORD.COD_PERIODOFISCAL= :CODPER) and((DOCFISORD.nfestatus = 1) or (DOCFISORD.nfestatus = 3))');
           DMESTOQUE.Alx.SQL.Add('ORDER BY DOCFISORD.numdocfisint');
           DMESTOQUE.Alx.ParamByName('CODPER').AsInteger:= DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
           DMESTOQUE.Alx.Open;
           DMESTOQUE.Alx.First;
           while not DMESTOQUE.Alx.Eof do
           begin
               XSetCodigoPedOrdem:=DMESTOQUE.Alx.FieldByName('COD_ORDEM').AsInteger;
              // FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', IntToStr(DMESTOQUE.Alx.FieldByName('COD_PESSOA').AsInteger), '');

               //Paulo 11/08/2011: Calcula o desconto dos produtos
               DMESTOQUE.Alx5.Close;
               DMESTOQUE.Alx5.sql.Clear;
               DMESTOQUE.Alx5.SQL.Add('select sum(ITPRODORD.descnf)as descProd from ITPRODORD');
               DMESTOQUE.Alx5.SQL.Add('where ITPRODORD.cod_ordem= :CODORDEM');
               DMESTOQUE.Alx5.ParamByName('CODORDEM').AsInteger := XSetCodigoPedOrdem;
               DMESTOQUE.Alx5.Open;

               //filtra wordem
               DMServ.WOrdem.Close;
               DMServ.WOrdem.SQL.Clear;
               DMServ.WOrdem.SQL.Add(' select * from vwordem where vwordem.cod_ordem=:codigo ');
               DMServ.WOrdem.ParamByName('codigo').AsInteger:=XSetCodigoPedOrdem;
               DMServ.WOrdem.Open;

               //Tenta encontrar a Forma de pagamento
               If DMServ.WOrdem.FieldByName('formapag').AsString='À VISTA'
               Then Begin
                   //Paulo 11/03/2011: Filtra os lançamento de caixa
                   DMCAIXA.TLanCaixa.Close;
                   DMCAIXA.TLanCaixa.SQL.Clear;
                   DMCAIXA.TLanCaixa.SQL.Add('select * from lancaixa lc where lc.cod_gerador=:CODGERADOR and lc.tipogerador = ''ORDSERV''');
                   DMCAIXA.TLanCaixa.ParamByName('CODGERADOR').AsInteger:= XSetCodigoPedOrdem;
                   DMCAIXA.TLanCaixa.Open;
                   //Paulo 11/08/2011: Somente mostra fatura se tiver lançamentos
                   if not DMCAIXA.TLanCaixa.IsEmpty then
                   begin
                       DMMACS.TMP.Insert;
                       DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
                       DMMACS.TMP.FieldByName('INT1').AsInteger:=XSetCodigoPedOrdem;
                       //Paulo 11/08/2011: Se Não permitir serviços Não escreve os itens de serviço
                       If DMMACS.TLoja.FieldByName('SERVNFE').AsString<>'1' then
                           DMMACS.TMP.FieldByName('OBS').AsString:='À VISTA'+' - R$'+FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('vlrtotdocnf').AsCurrency)+#13
                       else
                          DMMACS.TMP.FieldByName('OBS').AsString:='À VISTA'+' - R$'+FormatFloat('0.00', DMESTOQUE.Alx.FieldByName('vlrtotprod').AsCurrency)+#13;
                       //Paulo 10/08/2011: Armazena desconto total dos produtos:
                       DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.Alx5.FieldByName('descProd').asCurrency;
                       DMMACS.TMP.Post;
                       DMMACS.Transaction.CommitRetaining;
                       XCod_tmp:=XCod_tmp+1;
                   end;

               End
               Else Begin
                   //filtra contas a receber
                   DMCONTA.TCtaR.Close;
                   DMCONTA.TCtaR.SQL.Clear;
                   DMCONTA.TCtaR.SQL.Add('select * from ctareceber where (ctareceber.cod_gerador=:CodGerador) and (ctareceber.tipogerador='+#39+'ORD'+#39+')');
                   DMCONTA.TCtaR.ParamByName('CodGerador').AsInteger:= XSetCodigoPedOrdem;
                   DMCONTA.TCtaR.Open;

                   //Paulo 19/11/2010: Filtra os lançamento de caixa caso for pgto multiplo
                   DMCAIXA.TLanCaixa.Close;
                   DMCAIXA.TLanCaixa.SQL.Clear;
                   DMCAIXA.TLanCaixa.SQL.Add('select * from lancaixa lc where lc.cod_gerador=:CODGERADOR');
                   DMCAIXA.TLanCaixa.ParamByName('CODGERADOR').AsInteger:= XSetCodigoPedOrdem;
                   DMCAIXA.TLanCaixa.Open;

                   If Not DMCONTA.TCtaR.IsEmpty
                   Then Begin
                       If DMMACS.TLoja.FieldByName('SERVNFE').AsString='1' then
                       begin
                           DMCONTA.TAlx.Close;
                           DMCONTA.TAlx.SQL.Clear;
                           DMCONTA.TAlx.SQL.Add('Select totord,totserv from ordem');
                           DMCONTA.TAlx.SQL.Add('where ordem.cod_ordem = :codped');
                           DMCONTA.TAlx.ParamByName('CODPED').AsInteger:=XSetCodigoPedOrdem;
                           DMCONTA.TAlx.Open;
                       end;
                        //seleciona as parcelas do ctas a receber
                       DMCONTA.TParcCR.Close;
                       DMCONTA.TParcCR.SQL.Clear;
                       DMCONTA.TParcCR.SQL.Add('select * from parcelacr where parcelacr.cod_ctareceber=:ctareceber');
                       DMCONTA.TParcCR.ParamByName('ctareceber').AsInteger:=DMCONTA.TCtaR.fieldbyname('cod_ctareceber').AsInteger;
                       DMCONTA.TParcCR.Open;
                       If Not DMCONTA.TParcCR.IsEmpty
                       Then Begin
                            //percorre todas as tabelas capturando valor e vencimento
                           DMCONTA.TParcCR.First;
                           i:=1;
                           While not DMCONTA.TParcCR.Eof do
                           Begin
                               If DMMACS.TLoja.FieldByName('SERVNFE').AsString<>'1' then
                               begin
                                   DMMACS.TMP.Insert;
                                   DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
                                   DMMACS.TMP.FieldByName('INT1').AsInteger:=XSetCodigoPedOrdem;
                                   If I=1 Then
                                         DMMACS.TMP.FieldByName('OBS').AsString:=DMMACS.TMP.FieldByName('OBS').AsString+DMCONTA.TParcCR.FieldByName('dtvenc').AsString+' - R$'+FormatFloat('0.00', DMCONTA.TParcCR.FieldByName('valor').AsCurrency)
                                   Else
                                         DMMACS.TMP.FieldByName('OBS').AsString:=DMMACS.TMP.FieldByName('OBS').AsString+'          '+DMCONTA.TParcCR.FieldByName('dtvenc').AsString+' - R$'+FormatFloat('0.00', DMCONTA.TParcCR.FieldByName('valor').AsCurrency);
                                   I:=I+1;
                                   //Paulo 10/08/2011: Armazena desconto total dos produtos:
                                   DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.Alx5.FieldByName('descProd').asCurrency;
                                   DMMACS.TMP.Post;
                                   DMMACS.Transaction.CommitRetaining;

                               end;
                               XCod_tmp:=XCod_tmp+1;
                               DMCONTA.TParcCR.Next;
                           End;
                           //Paulo 11/08/2011: Calcula o valor as parcelas sem os valores de serviços
                           If DMMACS.TLoja.FieldByName('SERVNFE').AsString='1' then
                           begin
                              XvlrParcProd:= DMCONTA.TAlx.FieldByName('totserv').AsCurrency/(XCod_tmp-1);
                              I:=1;
                              DMCONTA.TParcCR.First;
                              While not DMCONTA.TParcCR.Eof do
                              Begin
                                   DMMACS.TMP.Insert;
                                   DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
                                   DMMACS.TMP.FieldByName('INT1').AsInteger:=XSetCodigoPedOrdem;
                                   If I=1 Then
                                         DMMACS.TMP.FieldByName('OBS').AsString:=DMMACS.TMP.FieldByName('OBS').AsString+DMCONTA.TParcCR.FieldByName('dtvenc').AsString+' - R$'+FormatFloat('0.00', (DMCONTA.TParcCR.FieldByName('valor').AsCurrency - XvlrParcProd))
                                   Else
                                         DMMACS.TMP.FieldByName('OBS').AsString:=DMMACS.TMP.FieldByName('OBS').AsString+'          '+DMCONTA.TParcCR.FieldByName('dtvenc').AsString+' - R$'+FormatFloat('0.00', (DMCONTA.TParcCR.FieldByName('valor').AsCurrency - XvlrParcProd));
                                   I:=I+1;
                                   //Paulo 10/08/2011: Armazena desconto total dos produtos:
                                   DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.Alx5.FieldByName('descProd').asCurrency;
                                   DMMACS.TMP.Post;
                                   DMMACS.Transaction.CommitRetaining;
                                   DMCONTA.TParcCR.Next;
                              end;
                           end;

                       End;

                   End;
                   If Not DMCAIXA.TLanCaixa.IsEmpty
                   Then Begin
                       DMCAIXA.TLanCaixa.First;
                       I:=1;
                       While not DMCAIXA.TLanCaixa.Eof do
                       Begin
                           DMMACS.TMP.Insert;
                           DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
                           DMMACS.TMP.FieldByName('INT1').AsInteger:=XSetCodigoPedOrdem;
                           If I=1 Then
                                 DMMACS.TMP.FieldByName('OBS').AsString:=DMMACS.TMP.FieldByName('OBS').AsString+DMCONTA.TParcCR.FieldByName('dtvenc').AsString+' - R$'+FormatFloat('0.00', DMCONTA.TParcCR.FieldByName('valor').AsCurrency)
                           Else
                                 DMMACS.TMP.FieldByName('OBS').AsString:=DMMACS.TMP.FieldByName('OBS').AsString+'          '+DMCONTA.TParcCR.FieldByName('dtvenc').AsString+' - R$'+FormatFloat('0.00', DMCONTA.TParcCR.FieldByName('valor').AsCurrency);
                           I:=I+1;
                           //Paulo 10/08/2011: Armazena desconto total dos produtos:
                           DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.Alx5.FieldByName('descProd').asCurrency;
                           DMMACS.TMP.Post;
                           DMMACS.Transaction.CommitRetaining;
                           XCod_tmp:=XCod_tmp+1;
                           DMCAIXA.TLanCaixa.Next;
                       end;

                   end;
               End;
               //seleciona as faturas a serem impressas
               DMMACS.Transaction.CommitRetaining;
               DMMACS.TMP.Close;
               DMMACS.TMP.SQL.Clear;
               DMMACS.TMP.SQL.Add('select * from tmp');
               DMMACS.TMP.Open;
               i:=1;
               DMESTOQUE.Alx.Next;
           end;
end;


//Paulo 11/08/2011: calcula o valor de desconto dos produtos para gerar o relatório de danfes
Procedure TFRelPeriodoFiscal.ImpDescDanfeCompra;
var
   XCod_tmp: Integer;
begin
       //prepara a tabela tmp
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('delete from tmp');
       DMMACS.TMP.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('select * from tmp');
       DMMACS.TMP.Open;

       XCod_tmp:=1;
        //Paulo 10/08/2011:filtra pedidos de venda
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select docfis.cod_pedido from docfis');
       DMESTOQUE.Alx.SQL.Add('where (docfis.COD_PERIODOFISCAL= :CODPER) and((docfis.nfestatus = 1) or (docfis.nfestatus = 3))');
       DMESTOQUE.Alx.SQL.Add('ORDER BY docfis.numdocfiscint');
       DMESTOQUE.Alx.ParamByName('CODPER').AsInteger:= DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       DMESTOQUE.Alx.Open;
       DMESTOQUE.Alx.First;
       while not DMESTOQUE.Alx.Eof do
       begin
            //Paulo 11/08/2011: Calcula o desconto dos produtos
             DMESTOQUE.Alx4.Close;
             DMESTOQUE.Alx4.sql.Clear;
             DMESTOQUE.Alx4.SQL.Add('select sum(itenspedc.descnf)as descProd from itenspedc');
             DMESTOQUE.Alx4.SQL.Add('where itenspedc.cod_pedcompra= :CODPEDC');
             DMESTOQUE.Alx4.ParamByName('CODPEDC').AsInteger := DMESTOQUE.Alx.FieldByName('COD_PEDIDO').AsInteger;
             DMESTOQUE.Alx4.Open;

             DMMACS.TMP.Insert;
             DMMACS.TMP.FieldByName('COD_TMP').AsInteger:=XCod_tmp;
             DMMACS.TMP.FieldByName('INT1').AsInteger:=DMESTOQUE.Alx.FieldByName('COD_PEDIDO').AsInteger;
             DMMACS.TMP.FieldByName('VLR2').AsCurrency:=DMESTOQUE.Alx4.FieldByName('descProd').asCurrency;
             DMMACS.TMP.Post;
             DMMACS.Transaction.CommitRetaining;
             XCod_tmp:=XCod_tmp+1;

             DMMACS.TMP.Close;
             DMMACS.TMP.SQL.Clear;
             DMMACS.TMP.SQL.Add('select * from tmp');
             DMMACS.TMP.Open;

             DMESTOQUE.Alx.Next;
       end;

end;

//Paulo 13/02/2012: Gera Nfe distribuição base no periodo selecionado
procedure TFRelPeriodoFiscal.GerarXMLDistribucaoVendas;
var
   Xcfop:String;
   XDocFiscal:String;
begin
  inherited;
       XSafeXmlDist:=True;
       XDistribuicaoPeriodo:=True;
       //Seta os dados para chamar a Função
       FiltraTabela(DMMACS.TPeriodoFiscal,'PERIODOFISCAL','','','WHERE PERIODOFISCAL.DTINICIAL ='+DBEdit1.Text+'AND PERIODOFISCAL.DTIFINAL ='+DBEdit2.Text);
       XSetInPeriodoFiscal:=DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;

       if FMenu.XTipoEmissaoNFe = 'PEDV' then
       	XDocFiscal:='DOCFISSAIDA';
       if FMenu.XTipoEmissaoNFe = 'PEDC' then
       	XDocFiscal:='DOCFIS';
       if FMenu.XTipoEmissaoNFe = 'ORDEM' then
       	XDocFiscal:='DOCFISORD';

  		//Edmar - 12/03/2014 - Corrigido a emissão de xml de distribuição
       //docfisord Não possui o campo cod_pedido, por isso foi criado uma condição
		if(XDocFiscal = 'DOCFISORD') then
       begin
			DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
           DMSAIDA.TAlx.SQL.Add('SELECT MAX('+XDocFiscal+'.COD_ORDEM) AS PEDIDO FROM '+XDocFiscal+'');
           DMSAIDA.TAlx.SQL.Add('WHERE '+XDocFiscal+'.nfestatus = ''1''');
           DMSAIDA.TAlx.Open;
       end
       else
       begin
           DMSAIDA.TAlx.Close;
           DMSAIDA.TAlx.SQL.Clear;
           DMSAIDA.TAlx.SQL.Add('SELECT MAX('+XDocFiscal+'.COD_PEDIDO) AS PEDIDO FROM '+XDocFiscal+'');
           DMSAIDA.TAlx.SQL.Add('WHERE '+XDocFiscal+'.nfestatus = ''1''');
           DMSAIDA.TAlx.Open;
       end;
      {
       DMSAIDA.TAlx.Close;
       DMSAIDA.TAlx.SQL.Clear;
       DMSAIDA.TAlx.SQL.Add('select pedvenda.dtpedven, pedvenda.cod_formpag, pedvenda.cod_pedvenda, pedvenda.cod_cliente, cfop.cfop, cfop.descricao, vwcliente.cod_cidade,email.email,');
       DMSAIDA.TAlx.SQL.Add('cidade.cod_ibge, cidade.nome, estado.uf_estado, docfissaida.cod_cfop,');
       DMSAIDA.TAlx.SQL.Add('docfissaida.cod_cfop1, docfissaida.cod_cfop2, docfissaida.nfexml,');
       DMSAIDA.TAlx.SQL.Add('docfissaida.nferecibo, docfissaida.nfeambiente, docfissaida.nfechave,');
       DMSAIDA.TAlx.SQL.Add('docfissaida.numdocfis, docfissaida.baseicms, docfissaida.vlricms,');
       DMSAIDA.TAlx.SQL.Add('docfissaida.vlrtotipi, docfissaida.bascalsubs, docfissaida.vlricmsubs,');
       DMSAIDA.TAlx.SQL.Add('docfissaida.vlrtotprod, docfissaida.vlrfrete, docfissaida.vlrseg,');
       DMSAIDA.TAlx.SQL.Add('docfissaida.vlrdesconto, docfissaida.vlroutrasdesp, docfissaida.vlrtotdocnf');
       DMSAIDA.TAlx.SQL.Add('from pedvenda');
       DMSAIDA.TAlx.SQL.Add('left join vwcliente on vwcliente.cod_cliente = pedvenda.cod_cliente');
       DMSAIDA.TAlx.SQL.Add('left join cidade on cidade.cod_cidade = vwcliente.cod_cidade');
       DMSAIDA.TAlx.SQL.Add('left join estado on estado.cod_estado = cidade.cod_estado');
       DMSAIDA.TAlx.SQL.Add('left join docfissaida on docfissaida.cod_pedido = pedvenda.cod_pedvenda');
       DMSAIDA.TAlx.SQL.Add('left join cfop on cfop.cod_cfop = docfissaida.cod_cfop');
       DMSAIDA.TAlx.SQL.Add('left Join pessoa on vwcliente.cod_pessoa = pessoa.cod_pessoa');
       DMSAIDA.TAlx.SQL.Add('left join email ON pessoa.cod_pessoa = email.cod_pessoa');
       DMSAIDA.TAlx.SQL.Add('where (docfissaida.COD_PERIODOFISCAL= :CODPER)  and((docfissaida.nfestatus = 1) or (docfissaida.nfestatus = 3)) ');
       DMSAIDA.TAlx.SQL.Add('ORDER BY docfissaida.numdocfisint');
       //DMSAIDA.TAlx.ParamByName('CODPER').AsInteger:= DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       DMSAIDA.TAlx.SQL.Add('where pedvenda.cod_pedvenda = :COD_PEDVENDA');
       DMSAIDA.TAlx.ParamByName('COD_PEDVENDA').AsInteger:= XView.FieldByName('COD_PEDVENDA').AsInteger;
       DMSAIDA.TAlx.Open;


       FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',DMSAIDA.TAlx.FieldByName('COD_FORMPAG').AsString,'' );

       //Paulo 19/04/2011: Filtra o cfop1
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add('select cfop.cfop, cfop.descricao from cfop where cfop.cod_cfop = :COD_CFOP');
       DMESTOQUE.Alx1.ParamByName('COD_CFOP').AsInteger:= DMSAIDA.TAlx.FieldByName('COD_CFOP1').AsInteger;
       DMESTOQUE.Alx1.Open;

       //Paulo 19/04/2011: Filtra o cfop2
       DMESTOQUE.Alx2.Close;
       DMESTOQUE.Alx2.SQL.Clear;
       DMESTOQUE.Alx2.SQL.Add('select cfop.cfop, cfop.descricao from cfop where cfop.cod_cfop = :COD_CFOP');
       DMESTOQUE.Alx2.ParamByName('COD_CFOP').AsInteger:= DMSAIDA.TAlx.FieldByName('COD_CFOP2').AsInteger;
       DMESTOQUE.Alx2.Open;

       Xcfop:= DMSAIDA.TAlx.FieldByName('CFOP').AsString +'/'+ DMESTOQUE.Alx1.FieldByName('CFOP').AsString +'/'+ DMESTOQUE.Alx2.FieldByName('CFOP').AsString;
       XXmlNfe:= DMSAIDA.TAlx.FieldByName('NFEXML').AsString;
       XNfeRecibo:= DMSAIDA.TAlx.FieldByName('NFERECIBO').AsString;
       XNfeTipoAmbiente:= DMSAIDA.TAlx.FieldByName('NFEAMBIENTE').AsInteger;
       XUfLocal:= 'PR';
       XNfeChave:= DMSAIDA.TAlx.FieldByName('NFECHAVE').AsString;


       //Paulo 22/06/2011: Armazena o email do cliente
       //XendEmail:= DMSAIDA.TAlx.FieldByName('email').AsString;

       FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
       FMzrNfe.SetInFiscal(XSetInPeriodoFiscal, DMSAIDA.TAlx.FieldByName('COD_PEDVENDA').AsInteger, DMSAIDA.TAlx.FieldByName('COD_CLIENTE').AsInteger, 'PEDV', 'EMITIR', 1, Xcfop,
                           DMSAIDA.TAlx.FieldByName('DESCRICAO').AsString, DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString, StrToInt(DMSAIDA.TAlx.FieldByName('NUMDOCFIS').AsString),
                           DMSAIDA.TAlx.FieldByName('DTPEDVEN').AsDateTime, IntToStr(DMSAIDA.TAlx.FieldByName('COD_IBGE').AsInteger), DMSAIDA.TAlx.FieldByName('NOME').AsString,
                           DMSAIDA.TAlx.FieldByName('UF_ESTADO').AsString, DMSAIDA.TAlx.FieldByName('BASEICMS').AsFloat, DMSAIDA.TAlx.FieldByName('VLRICMS').AsFloat,
                           DMSAIDA.TAlx.FieldByName('VLRTOTIPI').AsFloat, DMSAIDA.TAlx.FieldByName('BASCALSUBS').AsFloat, DMSAIDA.TAlx.FieldByName('VLRICMSUBS').AsFloat,
                           DMSAIDA.TAlx.FieldByName('VLRTOTPROD').AsFloat, DMSAIDA.TAlx.FieldByName('VLRFRETE').AsFloat, DMSAIDA.TAlx.FieldByName('VLRSEG').AsFloat,
                           DMSAIDA.TAlx.FieldByName('VLRDESCONTO').AsFloat, DMSAIDA.TAlx.FieldByName('VLROUTRASDESP').AsFloat, DMSAIDA.TAlx.FieldByName('VLRTOTDOCNF').AsFloat);}

      FMzrNfe := TFMzrNFe.Create(FMzrNfe);//cria o formulario de transmissão da Nfe
      FMzrNfe.SetInFiscal(XSetInPeriodoFiscal, DMSAIDA.TAlx.FieldByName('PEDIDO').AsInteger, 0, FMenu.XTipoEmissaoNFe, 'EMITIR', 1, '', '', '', 0, DATE(), '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      FMzrNfe.ShowModal;
end;

procedure TFRelPeriodoFiscal.ImpRelDanfce;
var
   xI: Integer;
begin
   try
       //busca dados de cabeçalho da empresa
       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add(' SELECT EMPRESA.RAZAO_SOCIAL, EMPRESA.CNPJ, EMPRESA.INSC_EST IE, EMPRESA.ENDERECO, ');
       DMESTOQUE.Alx4.SQL.Add(' EMPRESA.NUMERO, VWCIDADE.NOME, VWCIDADE.UF, LOJA.LOGOEMPRESA FROM LOJA ');
       DMESTOQUE.Alx4.SQL.Add(' LEFT JOIN EMPRESA ON EMPRESA.COD_EMPRESA = LOJA.COD_EMPRESA ');
       DMESTOQUE.Alx4.SQL.Add(' LEFT JOIN VWCIDADE ON VWCIDADE.COD_CIDADE = EMPRESA.COD_CIDADE ');
       DMESTOQUE.Alx4.Open;

       //busca os dados gerais
       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       if XRelDanfe = 'VENDA_NFCE' then
       begin
           DMESTOQUE.Alx1.SQL.Add(' SELECT DOCFISSAIDA.NUMDOCFIS, DOCFISSAIDA.NFESERIE, DOCFISSAIDA.DTEMISSAO, DOCFISSAIDA.NFECHAVE, DOCFISSAIDA.COD_PERIODOFISCAL, DOCFISSAIDA.NFESTATUS, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.NFEPROTOCOLO, PEDVENDA.NOMECLI NOME, PEDVENDA.CPFCNPJ, VWCLIENTE.ENDERECO, VWCLIENTE.ENDNUMERO, VWCLIENTE.CIDADE, VWCLIENTE.UF_ESTADO UF, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.NFEAMBIENTE, DOCFISSAIDA.RESERVFISC01, COUNT(ITENSPEDVEN.QTDEPROD) QTDEITENS, PEDVENDA.VALOR TOTAL, FORMPAG.DESCRICAO, ');
           DMESTOQUE.Alx1.SQL.Add(' SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO, ITENSPEDVEN.QTDEPROD QTD, UNIDADE.SIGLA_UNID UN, ITENSPEDVEN.VALUNIT UNIT, ITENSPEDVEN.VALORTOTAL TOTALUNIT ');
           DMESTOQUE.Alx1.SQL.Add(' FROM DOCFISSAIDA ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN PEDVENDA ON DOCFISSAIDA.COD_PEDIDO = PEDVENDA.COD_PEDVENDA ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN VWCLIENTE ON VWCLIENTE.COD_CLIENTE = PEDVENDA.COD_CLIENTE ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ITENSPEDVEN ON ITENSPEDVEN.COD_PEDVEN = PEDVENDA.COD_PEDVENDA ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN FORMPAG ON PEDVENDA.COD_FORMPAG = FORMPAG.COD_FORMPAG ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ESTOQUE ON ITENSPEDVEN.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDVENDA = UNIDADE.COD_UNIDADE ');
           DMESTOQUE.Alx1.SQL.Add(' WHERE (DOCFISSAIDA.COD_PERIODOFISCAL = :FISCAL) AND (DOCFISSAIDA.MODELONF = ''65'') AND ((DOCFISSAIDA.NFESTATUS = 1) OR (DOCFISSAIDA.NFESTATUS = 3)) ');
           DMESTOQUE.Alx1.SQL.Add(' GROUP BY DOCFISSAIDA.NUMDOCFIS, DOCFISSAIDA.NFESERIE, DOCFISSAIDA.DTEMISSAO, DOCFISSAIDA.NFECHAVE, DOCFISSAIDA.COD_PERIODOFISCAL, DOCFISSAIDA.NFESTATUS, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.NFEPROTOCOLO, NOME, PEDVENDA.CPFCNPJ, VWCLIENTE.ENDERECO, VWCLIENTE.ENDNUMERO, VWCLIENTE.CIDADE, UF, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISSAIDA.NFEAMBIENTE, DOCFISSAIDA.RESERVFISC01, TOTAL, FORMPAG.DESCRICAO, ');
           DMESTOQUE.Alx1.SQL.Add(' SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO, QTD, UN, UNIT, TOTALUNIT ');
       end
       else begin
           DMESTOQUE.Alx1.SQL.Add(' SELECT DOCFISORD.NUMDOCFIS, DOCFISORD.NFESERIE, DOCFISORD.DTEMISSAO, DOCFISORD.NFECHAVE, DOCFISORD.COD_PERIODOFISCAL, DOCFISORD.NFESTATUS, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.NFEPROTOCOLO, ORDEM.NOMECLI NOME, ORDEM.CPFCNPJ, VWCLIENTE.ENDERECO, VWCLIENTE.ENDNUMERO, VWCLIENTE.CIDADE, VWCLIENTE.UF_ESTADO UF, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.NFEAMBIENTE, DOCFISORD.RESERVFISC01, COUNT(ITPRODORD.QTD) QTDEITENS, ORDEM.TOTPROD TOTAL, FORMPAG.DESCRICAO, ');
           DMESTOQUE.Alx1.SQL.Add(' SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO, ITPRODORD.QTD, UNIDADE.SIGLA_UNID UN, ITPRODORD.VLRUNIT UNIT, ITPRODORD.TOTAL TOTALUNIT ');
           DMESTOQUE.Alx1.SQL.Add(' FROM DOCFISORD ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ORDEM ON DOCFISORD.COD_ORDEM = ORDEM.COD_ORDEM ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN VWCLIENTE ON ORDEM.COD_CLIENTE = VWCLIENTE.COD_CLIENTE ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ITPRODORD ON ORDEM.COD_ORDEM = ITPRODORD.COD_ORDEM ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN FORMPAG ON ORDEM.COD_FORMPAG = FORMPAG.COD_FORMPAG ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN ESTOQUE ON ITPRODORD.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN SUBPRODUTO ON ESTOQUE.COD_SUBPROD = SUBPRODUTO.COD_SUBPRODUTO ');
           DMESTOQUE.Alx1.SQL.Add(' LEFT JOIN UNIDADE ON SUBPRODUTO.COD_UNIDVENDA = UNIDADE.COD_UNIDADE ');
           DMESTOQUE.Alx1.SQL.Add(' WHERE (DOCFISORD.COD_PERIODOFISCAL = :FISCAL) AND (DOCFISORD.MODELONF = ''65'') AND ((DOCFISORD.NFESTATUS = 1) OR (DOCFISORD.NFESTATUS = 3)) ');
           DMESTOQUE.Alx1.SQL.Add(' GROUP BY DOCFISORD.NUMDOCFIS, DOCFISORD.NFESERIE, DOCFISORD.DTEMISSAO, DOCFISORD.NFECHAVE, DOCFISORD.COD_PERIODOFISCAL, DOCFISORD.NFESTATUS, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.NFEPROTOCOLO, NOME, ORDEM.CPFCNPJ, VWCLIENTE.ENDERECO, VWCLIENTE.ENDNUMERO, VWCLIENTE.CIDADE, UF,DOCFISORD.NFEAMBIENTE, ');
           DMESTOQUE.Alx1.SQL.Add(' DOCFISORD.RESERVFISC01, TOTAL, FORMPAG.DESCRICAO, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO, ITPRODORD.QTD, UN, UNIT, TOTALUNIT ');
       end;
       DMESTOQUE.Alx1.ParamByName('FISCAL').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       DMESTOQUE.Alx1.Open;

       if DMESTOQUE.Alx1.IsEmpty then
       begin
           if XRelDanfe = 'VENDA_NFCE' then
               MessageDlg('Não foi realizada nenhuma NFC-e no período (vendas).', mtInformation, [mbOK], 0)
           else
               MessageDlg('Não foi realizada nenhuma NFC-e no período (ordens).', mtInformation, [mbOK], 0)
       end
       else begin
           FrxNfce.LoadFromFile('C:\MZR\Macs\Rel\FrfRelDANFCe.fr3');
           FrxNfce.ShowReport();

	        if FMenu.TIPOREL = 'CONTABILIDADE' then
           begin
               exportar.ShowDialog := False;
               exportar.ShowProgress := False;
               exportar.PrintOptimized := False;
               if XRelDanfe = 'VENDA_NFCE' then
                   exportar.FileName := xCaminhoContabilidade + '\Relatório NFCe (PV).pdf'
               else
                   exportar.FileName := xCaminhoContabilidade + '\Relatório NFCe (OS).pdf';
               FrxNfce.Export(exportar);
           end;
       end;
   except

   end;
end;

//Edmar - 08/12/2016 - Gera relatório de relação de notas fiscais
procedure TFRelPeriodoFiscal.ImpRelNotasFiscais;
begin
   //
   try
       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add(' SELECT EMPRESA.FANTASIA, EMPRESA.FONE FROM EMPRESA ');
       DMESTOQUE.Alx4.Open;
       
       //documentos fiscais de ordem de serviço
       MDO.QAlx1.Close;
       MDO.QAlx1.SQL.Clear;
       MDO.QAlx1.SQL.Add(' SELECT DISTINCT(VWORDEM.COD_ORDEM), VWORDEM.NUMFISCAL AS NUMFISCALNFE,  DOCFISORD.NFESTATUS STATUS_NF, ');
       MDO.QAlx1.SQL.Add(' VWORDEM.NUMFISCALNFSE, DOCFISORD.NFSE_STATUSGERAL STATUS_NFS, VWORDEM.CLIENTE, DOCFISORD.DTEMISSAO, ');
       MDO.QAlx1.SQL.Add(' DOCFISORD.VLRTOTDOCNF VALOR_PRODUTO, DOCFISORD.VLRTOTSERV VALOR_SERVICO, ');
       MDO.QAlx1.SQL.Add(' P.CFOP CFOP_PRODUTO, S.CFOP CFOP_SERVICO, O.CFOP CFOP_OUTROS, VWORDEM.STATUS STATUS_ORDEM, ');
       MDO.QAlx1.SQL.Add(' DOCFISORD.MODELONF, DOCFISORD.NUMDOCFISINT ');
       MDO.QAlx1.SQL.Add(' FROM VWORDEM ');
       MDO.QAlx1.SQL.Add(' LEFT JOIN ORDEM ON VWORDEM.COD_ORDEM = ORDEM.COD_ORDEM ');
       MDO.QAlx1.SQL.Add(' LEFT JOIN ITPRODORD ON VWORDEM.COD_ORDEM =  ITPRODORD.COD_ORDEM ');
       MDO.QAlx1.SQL.Add(' LEFT JOIN DOCFISORD ON VWORDEM.COD_ORDEM = DOCFISORD.COD_ORDEM ');
       MDO.QAlx1.SQL.Add(' LEFT JOIN CFOP P ON DOCFISORD.COD_CFOP1 = P.COD_CFOP ');
       MDO.QAlx1.SQL.Add(' LEFT JOIN CFOP S ON DOCFISORD.COD_CFOP2 = S.COD_CFOP ');
       MDO.QAlx1.SQL.Add(' LEFT JOIN CFOP O ON DOCFISORD.COD_CFOP  = O.COD_CFOP ');
       MDO.QAlx1.SQL.Add(' WHERE (VWORDEM.COD_ORDEM IS NOT NULL) ');
       MDO.QAlx1.SQL.Add(' AND ((DOCFISORD.NFESTATUS <> ''2'') OR (DOCFISORD.NFSE_STATUSGERAL <> ''2'')) ');
       MDO.QAlx1.SQL.Add(' AND ((DOCFISORD.NFECHAVE IS NOT NULL) or (DOCFISORD.NFSE_NUMERODOCUMENTO IS NOT NULL)) ');
       MDO.QAlx1.SQL.Add(' AND (DOCFISORD.COD_PERIODOFISCAL = :FISCAL) ');
       MDO.QAlx1.ParamByName('FISCAL').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       MDO.QAlx1.Open;
       MDO.QAlx1.First;

       //documentos fiscais da venda
       MDO.QAlx2.Close;
       MDO.QAlx2.SQL.Clear;
       MDO.QAlx2.SQL.Add(' SELECT DOCFISSAIDA.NUMDOCFIS NUMFISCALNFE, VWPEDV.NOMECLI CLIENTE, DOCFISSAIDA.DTEMISSAO, ');
       MDO.QAlx2.SQL.Add(' DOCFISSAIDA.VLRTOTDOCNF VALOR_PRODUTO, DOCFISSAIDA.MODELONF, ');
       MDO.QAlx2.SQL.Add(' VWPEDV.SITUACAO STATUS, VWPEDV.TIPO, DOCFISSAIDA.NFESTATUS STATUS_NF, ');
       MDO.QAlx2.SQL.Add(' P.CFOP CFOP_PRODUTO, S.CFOP CFOP_SERVICO, O.CFOP CFOP_OUTROS ');
       MDO.QAlx2.SQL.Add(' FROM VWPEDV ');
       MDO.QAlx2.SQL.Add(' LEFT JOIN DOCFISSAIDA ON VWPEDV.COD_PEDVENDA = DOCFISSAIDA.COD_PEDIDO ');
       MDO.QAlx2.SQL.Add(' LEFT JOIN CFOP P ON DOCFISSAIDA.COD_CFOP1 = P.COD_CFOP ');
       MDO.QAlx2.SQL.Add(' LEFT JOIN CFOP S ON DOCFISSAIDA.COD_CFOP2 = S.COD_CFOP ');
       MDO.QAlx2.SQL.Add(' LEFT JOIN CFOP O ON DOCFISSAIDA.COD_CFOP  = O.COD_CFOP ');
       MDO.QAlx2.SQL.Add(' WHERE (DOCFISSAIDA.COD_PERIODOFISCAL = :FISCAL) AND (DOCFISSAIDA.NFESTATUS <> ''2'') ');
       MDO.QAlx2.SQL.Add(' ORDER BY DOCFISSAIDA.NFESTATUS, VWPEDV.NUMFISCAL ');
       MDO.QAlx2.ParamByName('FISCAL').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       MDO.QAlx2.Open;
       MDO.QAlx2.First;

       //documentos fiscais de entrada
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' SELECT DOCFIS.NUMDOCFIS NUMFISCALNFE, VWPEDC.NOME CLIENTE, DOCFIS.DTEMISSAO, ');
       MDO.QConsulta.SQL.Add(' DOCFIS.VLRTOTDOCNF VALOR_PRODUTO, DOCFIS.MODELONF, ');
       MDO.QConsulta.SQL.Add(' VWPEDC.SITUACAO STATUS, VWPEDC.NUMDEV TIPO, DOCFIS.NFESTATUS STATUS_NF, ');
       MDO.QConsulta.SQL.Add(' P.CFOP CFOP_PRODUTO, S.CFOP CFOP_SERVICO, O.CFOP CFOP_OUTROS ');
       MDO.QConsulta.SQL.Add(' FROM VWPEDC ');
       MDO.QConsulta.SQL.Add(' LEFT JOIN DOCFIS ON VWPEDC.COD_PEDCOMP = DOCFIS.COD_PEDIDO ');
       MDO.QConsulta.SQL.Add(' LEFT JOIN CFOP P ON DOCFIS.COD_CFOP1 = P.COD_CFOP ');
       MDO.QConsulta.SQL.Add(' LEFT JOIN CFOP S ON DOCFIS.COD_CFOP2 = S.COD_CFOP ');
       MDO.QConsulta.SQL.Add(' LEFT JOIN CFOP O ON DOCFIS.COD_CFOP  = O.COD_CFOP ');
       MDO.QConsulta.SQL.Add(' WHERE (DOCFIS.COD_PERIODOFISCAL = :FISCAL) AND (DOCFIS.NFESTATUS <> ''2'') ');
       MDO.QConsulta.SQL.Add(' ORDER BY NFESTATUS, NUMFISCAL ');
       MDO.QConsulta.ParamByName('FISCAL').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       MDO.QConsulta.Open;
       MDO.QConsulta.First;

       //limpa a tabela TMP
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('delete from tmp');
       DMMACS.TMP.ExecSQL;
       DMMACS.Transaction.CommitRetaining;

       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('select * from tmp');
       DMMACS.TMP.Open;

       while not MDO.QAlx1.Eof do
       begin
           DMMACS.TMP.Insert;
           
           if MDO.QAlx1.FieldByName('CFOP_PRODUTO').AsString <> '' then
               DMMACS.TMP.FieldByName('INT1').AsString {CFOP} := MDO.QAlx1.FieldByName('CFOP_PRODUTO').AsString
           else
               if MDO.QAlx1.FieldByName('CFOP_OUTROS').AsString <> '' then
				    DMMACS.TMP.FieldByName('INT1').AsString {CFOP} := MDO.QAlx1.FieldByName('CFOP_OUTROS').AsString
               else
				    DMMACS.TMP.FieldByName('INT1').AsString {CFOP} := MDO.QAlx1.FieldByName('CFOP_SERVICO').AsString;

           DMMACS.TMP.FieldByName('INT2').AsString {FISCALNFE} := MDO.QAlx1.FieldByName('NUMFISCALNFE').AsString;
           DMMACS.TMP.FieldByName('INT3').AsString {FISCALNFSE} := MDO.QAlx1.FieldByName('NUMFISCALNFSE').AsString;
           DMMACS.TMP.FieldByName('DESC500').AsString {CLIENTE} := MDO.QAlx1.FieldByName('CLIENTE').AsString;
           DMMACS.TMP.FieldByName('DATA1').AsDateTime {DATA_EMISSAO} := MDO.QAlx1.FieldByName('DTEMISSAO').AsDateTime;
           DMMACS.TMP.FieldByName('VLR5').AsString {MODELO_NF} := MDO.QAlx1.FieldByName('MODELONF').AsString;
           
           DMMACS.TMP.FieldByName('DESC1').AsString {OPERAÇÃO} := 'VENDA';
           
           if MDO.QAlx1.FieldByName('NUMFISCALNFE').AsString <> '' then
           begin
               DMMACS.TMP.FieldByName('VLR1').AsFloat {VALOR_PRODUTO} := MDO.QAlx1.FieldByName('VALOR_PRODUTO').AsFloat;
                              
               {VALIDA A SITUAÇÃO DA NFe}
               if MDO.QAlx1.FieldByName('STATUS_NF').AsString = '1' then
                   DMMACS.TMP.FieldByName('DESC2').AsString {STATUS_NF} := 'ATIVO'
               else
                   if MDO.QAlx1.FieldByName('STATUS_NF').AsString = '3' then
                       DMMACS.TMP.FieldByName('DESC2').AsString {STATUS_NF} := 'CANCELADO';
               if MDO.QAlx1.FieldByName('STATUS_ORDEM').AsString = 'DENEGADO' then
                   DMMACS.TMP.FieldByName('DESC2').AsString {STATUS_NF} := 'DENEGADO';
           end
           else begin
               DMMACS.TMP.FieldByName('DESC2').AsString {STATUS_NF} := '';
               DMMACS.TMP.FieldByName('VLR1').AsFloat {VALOR_PRODUTO} := 0;               
           end;

           if MDO.QAlx1.FieldByName('NUMFISCALNFSE').AsString <> '' then
           begin
               DMMACS.TMP.FieldByName('VLR2').AsFloat {VALOR_SERVICO} := MDO.QAlx1.FieldByName('VALOR_SERVICO').AsFloat;
               
               {VALIDA A SITUAÇÃO DA NFSe}
               if MDO.QAlx1.FieldByName('STATUS_NFS').AsString = '1' then
                   DMMACS.TMP.FieldByName('DESC3').AsString {STATUS_NFS} := 'ATIVO'
               else
                   if MDO.QAlx1.FieldByName('STATUS_NFS').AsString = '3' then
                       DMMACS.TMP.FieldByName('DESC3').AsString {STATUS_NFS} := 'CANCELADO';
           end
           else begin
               DMMACS.TMP.FieldByName('DESC3').AsString {STATUS_NFS}  := '';
               DMMACS.TMP.FieldByName('VLR2').AsFloat {VALOR_SERVICO} := 0;
           end;
           
           DMMACS.TMP.FieldByName('VLR4').AsFloat {VALOR_TOTAL} := DMMACS.TMP.FieldByName('VLR1').AsFloat + DMMACS.TMP.FieldByName('VLR2').AsFloat;

           DMMACS.TMP.Post;

           MDO.QAlx1.Next;
       end;

       while not MDO.QAlx2.Eof do
       begin
           DMMACS.TMP.Insert;

           //Edmar - 08/12/2016 - Verifica qual cfop está valido para a nota
           //faz a verificação por hierarquia
           if MDO.QAlx2.FieldByName('CFOP_PRODUTO').AsString <> '' then
               DMMACS.TMP.FieldByName('INT1').AsString {CFOP} := MDO.QAlx2.FieldByName('CFOP_PRODUTO').AsString
           else begin
               if MDO.QAlx2.FieldByName('CFOP_OUTROS').AsString <> '' then
                   DMMACS.TMP.FieldByName('INT1').AsString {CFOP} := MDO.QAlx2.FieldByName('CFOP_OUTROS').AsString
               else
                   DMMACS.TMP.FieldByName('INT1').AsString {CFOP} := MDO.QAlx2.FieldByName('CFOP_SERVICO').AsString;
           end;

           DMMACS.TMP.FieldByName('INT2').AsString {NUMFISCALNFE} := MDO.QAlx2.FieldByName('NUMFISCALNFE').AsString;
           DMMACS.TMP.FieldByName('INT3').AsString {FISCALNFSE} := '';
       	DMMACS.TMP.FieldByName('DESC500').AsString {CLIENTE} := MDO.QAlx2.FieldByName('CLIENTE').AsString;
       	DMMACS.TMP.FieldByName('DATA1').AsDateTime {DATA_EMISSAO} := MDO.QAlx2.FieldByName('DTEMISSAO').AsDateTime;
           DMMACS.TMP.FieldByName('VLR5').AsString {MODELO_NF} := MDO.QAlx2.FieldByName('MODELONF').AsString;

           if MDO.QAlx2.FieldByName('TIPO').AsString = 'DEV' then
               DMMACS.TMP.FieldByName('DESC1').AsString {OPERAÇÃO} := 'DEVOLUÇÃO COMPRA'
           else if MDO.QAlx2.FieldByName('TIPO').AsString = 'VND' then
               DMMACS.TMP.FieldByName('DESC1').AsString {OPERAÇÃO} := 'VENDA'
           else
               DMMACS.TMP.FieldByName('DESC1').AsString {OPERAÇÃO} := 'OUTRAS SAÍDAS';

           if MDO.QAlx2.FieldByName('NUMFISCALNFE').AsString <> '' then
           begin
               {VALIDA A SITUAÇÃO DA NFe}
               if MDO.QAlx2.FieldByName('STATUS_NF').AsString = '1' then
                   DMMACS.TMP.FieldByName('DESC2').AsString {STATUS_NF} := 'ATIVO'
               else
                   if MDO.QAlx2.FieldByName('STATUS_NF').AsString = '3' then
                       DMMACS.TMP.FieldByName('DESC2').AsString {STATUS_NF} := 'CANCELADO';
               if MDO.QAlx2.FieldByName('STATUS_NF').AsString = 'DENEGADO' then
                   DMMACS.TMP.FieldByName('DESC2').AsString {STATUS_NF} := 'DENEGADO';
           end
           else begin
               DMMACS.TMP.FieldByName('DESC2').AsString {STATUS_NF} := '';
           end;

           {SITUAÇÃO DA NFSe}
           DMMACS.TMP.FieldByName('DESC3').AsString {STATUS_NFS} := '';

           DMMACS.TMP.FieldByName('VLR1').AsFloat {VALOR_PRODUTO} := MDO.QAlx2.FieldByName('VALOR_PRODUTO').AsFloat;
           DMMACS.TMP.FieldByName('VLR2').AsFloat {VALOR_SERVICO} := 0.00;
           DMMACS.TMP.FieldByName('VLR4').AsFloat {VALOR_TOTAL} := MDO.QAlx2.FieldByName('VALOR_PRODUTO').AsFloat;

           DMMACS.TMP.Post;

           MDO.QAlx2.Next;
       end;

       while not MDO.QConsulta.Eof do
       begin
           DMMACS.TMP.Insert;

           //Edmar - 08/12/2016 - Verifica qual cfop está valido para a nota
           //faz a verificação por hierarquia
           if MDO.QConsulta.FieldByName('CFOP_PRODUTO').AsString <> '' then
               DMMACS.TMP.FieldByName('INT1').AsString {CFOP} := MDO.QConsulta.FieldByName('CFOP_PRODUTO').AsString
           else begin
               if MDO.QConsulta.FieldByName('CFOP_OUTROS').AsString <> '' then
                   DMMACS.TMP.FieldByName('INT1').AsString {CFOP} := MDO.QConsulta.FieldByName('CFOP_OUTROS').AsString
               else
                   DMMACS.TMP.FieldByName('INT1').AsString {CFOP} := MDO.QConsulta.FieldByName('CFOP_SERVICO').AsString;
           end;

           DMMACS.TMP.FieldByName('INT2').AsString {NUMFISCALNFE} := MDO.QConsulta.FieldByName('NUMFISCALNFE').AsString;
           DMMACS.TMP.FieldByName('INT3').AsString {FISCALNFSE} := '';
       	DMMACS.TMP.FieldByName('DESC500').AsString {CLIENTE} := MDO.QConsulta.FieldByName('CLIENTE').AsString;
       	DMMACS.TMP.FieldByName('DATA1').AsDateTime {DATA_EMISSAO} := MDO.QConsulta.FieldByName('DTEMISSAO').AsDateTime;
           DMMACS.TMP.FieldByName('VLR5').AsString {MODELO_NF} := MDO.QConsulta.FieldByName('MODELONF').AsString;

           if MDO.QAlx2.FieldByName('TIPO').AsString = 'DEV' then
               DMMACS.TMP.FieldByName('DESC1').AsString {OPERAÇÃO} := 'DEVOLUÇÃO VENDA'
           else
               DMMACS.TMP.FieldByName('DESC1').AsString {OPERAÇÃO} := 'OUTRAS ENTRADAS';

           if MDO.QAlx2.FieldByName('NUMFISCALNFE').AsString <> '' then
           begin
               {VALIDA A SITUAÇÃO DA NFe}
               if MDO.QAlx2.FieldByName('STATUS_NF').AsString = '1' then
                   DMMACS.TMP.FieldByName('DESC2').AsString {STATUS_NF} := 'ATIVO'
               else
                   if MDO.QAlx2.FieldByName('STATUS_NF').AsString = '3' then
                       DMMACS.TMP.FieldByName('DESC2').AsString {STATUS_NF} := 'CANCELADO';
               if MDO.QAlx2.FieldByName('STATUS_NF').AsString = 'DENEGADO' then
                   DMMACS.TMP.FieldByName('DESC2').AsString {STATUS_NF} := 'DENEGADO';
           end
           else begin
               DMMACS.TMP.FieldByName('DESC2').AsString {STATUS_NF} := '';
           end;

           {SITUAÇÃO DA NFSe}
           DMMACS.TMP.FieldByName('DESC3').AsString {STATUS_NFS} := '';

           DMMACS.TMP.FieldByName('VLR1').AsFloat {VALOR_PRODUTO} := MDO.QAlx2.FieldByName('VALOR_PRODUTO').AsFloat;
           DMMACS.TMP.FieldByName('VLR2').AsFloat {VALOR_SERVICO} := 0.00;
           DMMACS.TMP.FieldByName('VLR4').AsFloat {VALOR_TOTAL} := MDO.QAlx2.FieldByName('VALOR_PRODUTO').AsFloat;

           DMMACS.TMP.Post;

           MDO.QConsulta.Next;
       end;

       DMMACS.Transaction.CommitRetaining;

       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add(' SELECT TMP.VLR5 MODELO_NF, TMP.DESC1 OPERACAO, TMP.INT2 FISCALNF, TMP.DESC2 STATUS_NF, TMP.INT1 CFOP, ');
       DMESTOQUE.Alx1.SQL.Add(' TMP.INT3 FISCALNFS, TMP.DESC3 STATUS_NFS, TMP.DESC500 CLIENTE, TMP.DATA1 DATA_EMISSAO, ');
       DMESTOQUE.Alx1.SQL.Add(' TMP.VLR2 VALOR_SERVICO, TMP.VLR3 VALOR_ISS, TMP.VLR1 VALOR_PRODUTO, TMP.VLR6 TOTALNF, TMP.VLR4 VALOR_TOTAL ');
       DMESTOQUE.Alx1.SQL.Add(' FROM TMP ');
       DMESTOQUE.Alx1.SQL.Add(' ORDER BY DATA_EMISSAO, FISCALNF, FISCALNFS ');
       DMESTOQUE.Alx1.Open;

       if DMESTOQUE.Alx1.IsEmpty then
       begin
           MessageDlg('O relatório de relação de notas fiscais retornou vazio.', mtInformation, [mbOK], 0);
       end
       else begin
           FrxNfce.LoadFromFile('C:\MZR\Macs\Rel\FrfRelacaoNotasFiscais.fr3');
           FrxNfce.ShowReport();

           exportar.ShowDialog := False;
           exportar.ShowProgress := False;
           exportar.PrintOptimized := False;
           exportar.FileName := xCaminhoContabilidade + '\Relação de notas fiscais.pdf';
           FrxNfce.Export(exportar);
       end;
   except
   end;
end;

procedure TFRelPeriodoFiscal.ImpRelRelacaoProdutos;
begin
   try
       //limpa a tabela TMP
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('delete from tmp');
       DMMACS.TMP.ExecSQL;
       DMMACS.Transaction.CommitRetaining;
       
       DMMACS.TMP.Close;
       DMMACS.TMP.SQL.Clear;
       DMMACS.TMP.SQL.Add('select * from tmp');
       DMMACS.TMP.Open;

       DMESTOQUE.Alx4.Close;
       DMESTOQUE.Alx4.SQL.Clear;
       DMESTOQUE.Alx4.SQL.Add(' SELECT EMPRESA.FANTASIA, EMPRESA.FONE FROM EMPRESA ');
       DMESTOQUE.Alx4.Open;
       
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' SELECT docfisord.cod_docfiscord cod_fiscal, docfisord.numdocfis numero, docfisord.serie, docfisord.nfeserie, docfisord.dtemissao data, ');
       MDO.QConsulta.SQL.Add(' docfisord.modelonf modelo, docfisord.vlrtotdocnf valor_fiscal, ''Saída'' tipo, ');
       MDO.QConsulta.SQL.Add(' CASE docfisord.nfestatus ');
       MDO.QConsulta.SQL.Add('     WHEN ''1'' THEN ''100 - Autorizado o uso da NF-e'' ');
       MDO.QConsulta.SQL.Add('     WHEN ''3'' THEN ''135 - NF-e cancelada'' ');
       MDO.QConsulta.SQL.Add('     WHEN ''4'' THEN ''302 - NF-e denegado'' ');
       MDO.QConsulta.SQL.Add(' END status, ');
       MDO.QConsulta.SQL.Add(' CASE docfisord.modelonf ');
       MDO.QConsulta.SQL.Add('     WHEN 55 THEN ''VENDA NF-E'' ');
       MDO.QConsulta.SQL.Add('     WHEN 65 THEN ''VENDA NFC-E'' ');
       MDO.QConsulta.SQL.Add(' END operacao, ');
       MDO.QConsulta.SQL.Add(' /* ITENS */ ');
       MDO.QConsulta.SQL.Add(' subproduto.contrint codigo, subproduto.descricao, cst.cod_sit_trib cst, ');
       MDO.QConsulta.SQL.Add(' itprodord.cfop, unidade.sigla_unid unidade, itprodord.qtd quantidade, subproduto.ncm, ');
       MDO.QConsulta.SQL.Add(' itprodord.vlrunit valor_unitario, itprodord.total valor_total, itprodord.vlricms valor_icms, ');
       MDO.QConsulta.SQL.Add(' itprodord.vlricmssubs valor_icms_st, itprodord.vlripi valor_ipi, itprodord.descnf desconto, ');
       MDO.QConsulta.SQL.Add(' itprodord.valorfrete as valor_frete ');
       MDO.QConsulta.SQL.Add(' from docfisord ');
       MDO.QConsulta.SQL.Add(' left join ordem on ordem.cod_ordem = docfisord.cod_ordem ');
       MDO.QConsulta.SQL.Add(' left join itprodord on itprodord.cod_ordem = ordem.cod_ordem ');
       MDO.QConsulta.SQL.Add(' left join estoque on estoque.cod_estoque = itprodord.cod_estoque ');
       MDO.QConsulta.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
       MDO.QConsulta.SQL.Add(' left join cst on cst.cod_cst = subproduto.cod_cst ');
       MDO.QConsulta.SQL.Add(' left join unidade on unidade.cod_unidade = subproduto.cod_unidvenda ');
       MDO.QConsulta.SQL.Add(' where (docfisord.cod_periodofiscal = :COD_PERIODOFISCAL) and (docfisord.nfestatus <> ''2'') and (docfisord.nfechave is not null) ');
       MDO.QCOnsulta.ParamByName('COD_PERIODOFISCAL').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       MDO.QConsulta.Open;
       MDO.QConsulta.First;      
       
       while not MDO.QConsulta.Eof do
       begin
           DMMACS.TMP.Insert;

           { CABEÇALHO }
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger := MDO.QConsulta.FieldByName('COD_FISCAL').AsInteger;
           DMMACS.TMP.FieldByName('INT1').AsInteger := MDO.QConsulta.FieldByName('NUMERO').AsInteger;
           DMMACS.TMP.FieldByName('INT2').AsInteger := MDO.QConsulta.FieldByName('SERIE').AsInteger;
           DMMACS.TMP.FieldByName('DATA1').AsDateTime := MDO.QConsulta.FieldByName('DATA').AsDateTime;
           DMMACS.TMP.FieldByName('INT3').AsInteger := MDO.QConsulta.FieldByName('MODELO').AsInteger;
           DMMACS.TMP.FieldByName('VLR1').AsFloat := MDO.QConsulta.FieldByName('VALOR_FISCAL').AsFloat;
           DMMACS.TMP.FieldByName('DESC1').AsString := MDO.QConsulta.FieldByName('TIPO').AsString;
           DMMACS.TMP.FieldByName('DESC2').AsString := MDO.QConsulta.FieldByName('STATUS').AsString;
           DMMACS.TMP.FieldByName('DESC3').AsString := MDO.QConsulta.FieldByName('OPERACAO').AsString;

           { ITENS }
           DMMACS.TMP.FieldByName('DESC4').AsString := MDO.QConsulta.FieldByName('CODIGO').AsString;
           DMMACS.TMP.FieldByName('DESC500').AsString := MDO.QConsulta.FieldByName('DESCRICAO').AsString;
           DMMACS.TMP.FieldByName('DESC5').AsString := MDO.QConsulta.FieldByName('CST').AsString;
           DMMACS.TMP.FieldByName('DESC6').AsString := MDO.QConsulta.FieldByName('CFOP').AsString;
           DMMACS.TMP.FieldByName('DESC7').AsString := MDO.QConsulta.FieldByName('UNIDADE').AsString;
           DMMACS.TMP.FieldByName('VLR2').AsFloat := MDO.QConsulta.FieldByName('QUANTIDADE').AsFloat;
           DMMACS.TMP.FieldByName('DESC8').AsString := MDO.QConsulta.FieldByName('NCM').AsString;
           DMMACS.TMP.FieldByName('VLR3').AsFloat := MDO.QConsulta.FieldByName('VALOR_UNITARIO').AsFloat;
           DMMACS.TMP.FieldByName('VLR4').AsFloat := MDO.QConsulta.FieldByName('VALOR_TOTAL').AsFloat;
           DMMACS.TMP.FieldByName('VLR5').AsFloat := MDO.QConsulta.FieldByName('VALOR_ICMS').AsFloat;
           DMMACS.TMP.FieldByName('VLR6').AsFloat := MDO.QConsulta.FieldByName('VALOR_ICMS_ST').AsFloat;
           DMMACS.TMP.FieldByName('VLR7').AsFloat := MDO.QConsulta.FieldByName('VALOR_IPI').AsFloat;
           DMMACS.TMP.FieldByName('VLR8').AsFloat := MDO.QConsulta.FieldByName('DESCONTO').AsFloat;
           DMMACS.TMP.FieldByName('VLR9').AsFloat := MDO.QConsulta.FieldByName('VALOR_FRETE').AsFloat;
           
           DMMACS.TMP.Post;

           MDO.QConsulta.Next;
       end;

       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' SELECT docfissaida.cod_docfisc cod_fiscal, docfissaida.numdocfis numero, docfissaida.nfeserie serie, ');
       MDO.QConsulta.SQL.Add(' docfissaida.dtemissao data, docfissaida.modelonf modelo, docfissaida.vlrtotdocnf valor_fiscal, ''Saída'' tipo, ');
       MDO.QConsulta.SQL.Add(' CASE docfissaida.nfestatus ');
       MDO.QConsulta.SQL.Add('     WHEN ''1'' THEN ''100 - Autorizado o uso da NF-e'' ');
       MDO.QConsulta.SQL.Add('     WHEN ''3'' THEN ''135 - NF-e cancelada'' ');
       MDO.QConsulta.SQL.Add('     WHEN ''4'' THEN ''302 - NF-e denegado'' ');
       MDO.QConsulta.SQL.Add(' END status, ');
       MDO.QConsulta.SQL.Add(' CASE docfissaida.modelonf ');
       MDO.QConsulta.SQL.Add('     WHEN 55 THEN ');
       MDO.QConsulta.SQL.Add('         case vwpedv.tipo ');
       MDO.QConsulta.SQL.Add('             WHEN ''VND'' THEN ''VENDA NF-E'' ');
       MDO.QConsulta.SQL.Add('             WHEN ''DEV'' THEN ''DEVOLUÇÃO DE COMPRA'' ');
       MDO.QConsulta.SQL.Add('             ELSE ''OUTRAS SAÍDAS NF-E'' ');
       MDO.QConsulta.SQL.Add('         end ');
       MDO.QConsulta.SQL.Add('     WHEN 65 THEN ''VENDA NFC-E'' ');
       MDO.QConsulta.SQL.Add(' END operacao, ');
       MDO.QConsulta.SQL.Add(' /* ITENS */ ');
       MDO.QConsulta.SQL.Add(' subproduto.contrint codigo, subproduto.descricao, cst.cod_sit_trib cst, ');
       MDO.QConsulta.SQL.Add(' itenspedven.cfop, unidade.sigla_unid unidade, itenspedven.qtdeprod quantidade, subproduto.ncm, ');
       MDO.QConsulta.SQL.Add(' itenspedven.valunit valor_unitario, itenspedven.valortotal valor_total, itenspedven.vlricms valor_icms, ');
       MDO.QConsulta.SQL.Add(' itenspedven.vlricmssubs valor_icms_st, itenspedven.vlripi valor_ipi, itenspedven.descnf desconto, ');
       MDO.QConsulta.SQL.Add(' itenspedven.valorfrete valor_frete ');
       MDO.QConsulta.SQL.Add(' from docfissaida ');
       MDO.QConsulta.SQL.Add(' LEFT join vwpedv on vwpedv.cod_pedvenda = docfissaida.cod_pedido ');
       MDO.QConsulta.SQL.Add(' left join itenspedven on itenspedven.cod_pedven = vwpedv.cod_pedvenda ');
       MDO.QConsulta.SQL.Add(' left join estoque on estoque.cod_estoque = itenspedven.cod_estoque ');
       MDO.QConsulta.SQL.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
       MDO.QConsulta.SQL.Add(' left join cst on cst.cod_cst = subproduto.cod_cst ');
       MDO.QConsulta.SQL.Add(' left join unidade on unidade.cod_unidade = subproduto.cod_unidvenda ');
       MDO.QConsulta.SQL.Add(' where (docfissaida.cod_periodofiscal = :COD_PERIODOFISCAL) and (docfissaida.nfestatus <> ''2'') and (docfissaida.nfechave is not null) ');
       MDO.QCOnsulta.ParamByName('COD_PERIODOFISCAL').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       MDO.QConsulta.Open;
       MDO.QConsulta.First;

       while not MDO.QConsulta.Eof do
       begin
           DMMACS.TMP.Insert;

           { CABEÇALHO }
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger := MDO.QConsulta.FieldByName('COD_FISCAL').AsInteger;
           DMMACS.TMP.FieldByName('INT1').AsInteger := MDO.QConsulta.FieldByName('NUMERO').AsInteger;
           DMMACS.TMP.FieldByName('INT2').AsInteger := MDO.QConsulta.FieldByName('SERIE').AsInteger;
           DMMACS.TMP.FieldByName('DATA1').AsDateTime := MDO.QConsulta.FieldByName('DATA').AsDateTime;
           DMMACS.TMP.FieldByName('INT3').AsInteger := MDO.QConsulta.FieldByName('MODELO').AsInteger;
           DMMACS.TMP.FieldByName('VLR1').AsFloat := MDO.QConsulta.FieldByName('VALOR_FISCAL').AsFloat;
           DMMACS.TMP.FieldByName('DESC1').AsString := MDO.QConsulta.FieldByName('TIPO').AsString;
           DMMACS.TMP.FieldByName('DESC2').AsString := MDO.QConsulta.FieldByName('STATUS').AsString;
           DMMACS.TMP.FieldByName('DESC3').AsString := MDO.QConsulta.FieldByName('OPERACAO').AsString;

           { ITENS }
           DMMACS.TMP.FieldByName('DESC4').AsString := MDO.QConsulta.FieldByName('CODIGO').AsString;
           DMMACS.TMP.FieldByName('DESC500').AsString := MDO.QConsulta.FieldByName('DESCRICAO').AsString;
           DMMACS.TMP.FieldByName('DESC5').AsString := MDO.QConsulta.FieldByName('CST').AsString;
           DMMACS.TMP.FieldByName('DESC6').AsString := MDO.QConsulta.FieldByName('CFOP').AsString;
           DMMACS.TMP.FieldByName('DESC7').AsString := MDO.QConsulta.FieldByName('UNIDADE').AsString;
           DMMACS.TMP.FieldByName('VLR2').AsFloat := MDO.QConsulta.FieldByName('QUANTIDADE').AsFloat;
           DMMACS.TMP.FieldByName('DESC8').AsString := MDO.QConsulta.FieldByName('NCM').AsString;
           DMMACS.TMP.FieldByName('VLR3').AsFloat := MDO.QConsulta.FieldByName('VALOR_UNITARIO').AsFloat;
           DMMACS.TMP.FieldByName('VLR4').AsFloat := MDO.QConsulta.FieldByName('VALOR_TOTAL').AsFloat;
           DMMACS.TMP.FieldByName('VLR5').AsFloat := MDO.QConsulta.FieldByName('VALOR_ICMS').AsFloat;
           DMMACS.TMP.FieldByName('VLR6').AsFloat := MDO.QConsulta.FieldByName('VALOR_ICMS_ST').AsFloat;
           DMMACS.TMP.FieldByName('VLR7').AsFloat := MDO.QConsulta.FieldByName('VALOR_IPI').AsFloat;
           DMMACS.TMP.FieldByName('VLR8').AsFloat := MDO.QConsulta.FieldByName('DESCONTO').AsFloat;
           DMMACS.TMP.FieldByName('VLR9').AsFloat := MDO.QConsulta.FieldByName('VALOR_FRETE').AsFloat;
           
           DMMACS.TMP.Post;

           MDO.QConsulta.Next;
       end;

       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQl.Add(' SELECT docfis.cod_docfisc cod_fiscal, docfis.numdocfis numero, docfis.nfeserie serie, docfis.dtemissao data, ');
       MDO.QConsulta.SQl.Add(' docfis.modelonf modelo, docfis.vlrtotdocnf valor_fiscal, ''Entrada'' tipo, ');
       MDO.QConsulta.SQl.Add(' CASE docfis.nfestatus ');
       MDO.QConsulta.SQl.Add('     WHEN ''1'' THEN ''100 - Autorizado o uso da NF-e'' ');
       MDO.QConsulta.SQl.Add('     WHEN ''3'' THEN ''135 - NF-e cancelada'' ');
       MDO.QConsulta.SQl.Add('     WHEN ''4'' THEN ''302 - NF-e denegado'' ');
       MDO.QConsulta.SQl.Add(' END status, ');
       MDO.QConsulta.SQl.Add(' CASE vwpedc.numdev ');
       MDO.QConsulta.SQl.Add('     WHEN ''DEV'' THEN ''DEVOLUÇÃO DE VENDA'' ');
       MDO.QConsulta.SQl.Add('     ELSE ''OUTRAS ENTRADAS'' ');
       MDO.QConsulta.SQl.Add(' END operacao, ');
       MDO.QConsulta.SQl.Add(' /* ITENS */ ');
       MDO.QConsulta.SQl.Add(' subproduto.contrint codigo, subproduto.descricao, cst.cod_sit_trib cst, ');
       MDO.QConsulta.SQl.Add(' itenspedc.cfop, unidade.sigla_unid unidade, itenspedc.qtdeprod quantidade, subproduto.ncm, ');
       MDO.QConsulta.SQl.Add(' itenspedc.valunit valor_unitario, itenspedc.valortotal valor_total, itenspedc.vlricms valor_icms, ');
       MDO.QConsulta.SQl.Add(' itenspedc.vlricmssubs valor_icms_st, itenspedc.vlripi valor_ipi, itenspedc.descnf desconto, ');
       MDO.QConsulta.SQl.Add(' itenspedc.valorfrete valor_frete ');
       MDO.QConsulta.SQl.Add(' FROM docfis ');
       MDO.QConsulta.SQl.Add(' left join vwpedc on vwpedc.cod_pedcomp = docfis.cod_pedido ');
       MDO.QConsulta.SQl.Add(' left join itenspedc on itenspedc.cod_pedcompra = vwpedc.cod_pedcomp ');
       MDO.QConsulta.SQl.Add(' left join estoque on estoque.cod_estoque = itenspedc.cod_estoque ');
       MDO.QConsulta.SQl.Add(' left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ');
       MDO.QConsulta.SQl.Add(' left join cst on cst.cod_cst = subproduto.cod_cst ');
       MDO.QConsulta.SQl.Add(' left join unidade on unidade.cod_unidade = subproduto.cod_unidvenda ');
       MDO.QConsulta.SQl.Add(' where (docfis.cod_periodofiscal = :COD_PERIODOFISCAL) and (docfis.nfestatus <> ''2'') and (docfis.nfechave is not null) ');
       MDO.QCOnsulta.ParamByName('COD_PERIODOFISCAL').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       MDO.QConsulta.Open;
       MDO.QConsulta.First;

       while not MDO.QConsulta.Eof do
       begin
           DMMACS.TMP.Insert;

           { CABEÇALHO }
           DMMACS.TMP.FieldByName('COD_TMP').AsInteger := MDO.QConsulta.FieldByName('COD_FISCAL').AsInteger;
           DMMACS.TMP.FieldByName('INT1').AsInteger := MDO.QConsulta.FieldByName('NUMERO').AsInteger;
           DMMACS.TMP.FieldByName('INT2').AsInteger := MDO.QConsulta.FieldByName('SERIE').AsInteger;
           DMMACS.TMP.FieldByName('DATA1').AsDateTime := MDO.QConsulta.FieldByName('DATA').AsDateTime;
           DMMACS.TMP.FieldByName('INT3').AsInteger := MDO.QConsulta.FieldByName('MODELO').AsInteger;
           DMMACS.TMP.FieldByName('VLR1').AsFloat := MDO.QConsulta.FieldByName('VALOR_FISCAL').AsFloat;
           DMMACS.TMP.FieldByName('DESC1').AsString := MDO.QConsulta.FieldByName('TIPO').AsString;
           DMMACS.TMP.FieldByName('DESC2').AsString := MDO.QConsulta.FieldByName('STATUS').AsString;
           DMMACS.TMP.FieldByName('DESC3').AsString := MDO.QConsulta.FieldByName('OPERACAO').AsString;

           { ITENS }
           DMMACS.TMP.FieldByName('DESC4').AsString := MDO.QConsulta.FieldByName('CODIGO').AsString;
           DMMACS.TMP.FieldByName('DESC500').AsString := MDO.QConsulta.FieldByName('DESCRICAO').AsString;
           DMMACS.TMP.FieldByName('DESC5').AsString := MDO.QConsulta.FieldByName('CST').AsString;
           DMMACS.TMP.FieldByName('DESC6').AsString := MDO.QConsulta.FieldByName('CFOP').AsString;
           DMMACS.TMP.FieldByName('DESC7').AsString := MDO.QConsulta.FieldByName('UNIDADE').AsString;
           DMMACS.TMP.FieldByName('VLR2').AsFloat := MDO.QConsulta.FieldByName('QUANTIDADE').AsFloat;
           DMMACS.TMP.FieldByName('DESC8').AsString := MDO.QConsulta.FieldByName('NCM').AsString;
           DMMACS.TMP.FieldByName('VLR3').AsFloat := MDO.QConsulta.FieldByName('VALOR_UNITARIO').AsFloat;
           DMMACS.TMP.FieldByName('VLR4').AsFloat := MDO.QConsulta.FieldByName('VALOR_TOTAL').AsFloat;
           DMMACS.TMP.FieldByName('VLR5').AsFloat := MDO.QConsulta.FieldByName('VALOR_ICMS').AsFloat;
           DMMACS.TMP.FieldByName('VLR6').AsFloat := MDO.QConsulta.FieldByName('VALOR_ICMS_ST').AsFloat;
           DMMACS.TMP.FieldByName('VLR7').AsFloat := MDO.QConsulta.FieldByName('VALOR_IPI').AsFloat;
           DMMACS.TMP.FieldByName('VLR8').AsFloat := MDO.QConsulta.FieldByName('DESCONTO').AsFloat;
           DMMACS.TMP.FieldByName('VLR9').AsFloat := MDO.QConsulta.FieldByName('VALOR_FRETE').AsFloat;
           
           DMMACS.TMP.Post;

           MDO.QConsulta.Next;
       end;

       DMMACS.Transaction.CommitRetaining;

       DMESTOQUE.Alx1.Close;
       DMESTOQUE.Alx1.SQL.Clear;
       DMESTOQUE.Alx1.SQL.Add(' SELECT tmp.cod_tmp id, tmp.int1 numero, tmp.int2 serie, tmp.data1 data, tmp.int3 modelo, ');
       DMESTOQUE.Alx1.SQL.Add(' tmp.vlr1 valor_fiscal, tmp.desc2 status, tmp.desc1 tipo, tmp.desc3 operacao, ');
       DMESTOQUE.Alx1.SQL.Add(' tmp.desc4 codigo, tmp.desc500 descricao, tmp.desc5 cst, tmp.desc6 cfop, tmp.desc7 unidade, ');
       DMESTOQUE.Alx1.SQL.Add(' tmp.vlr2 quantidade, tmp.desc8 ncm, tmp.vlr3 valor_unitario, tmp.vlr4 valor_total, ');
       DMESTOQUE.Alx1.SQL.Add(' tmp.vlr5 valor_icms, tmp.vlr6 valor_icms_st, tmp.vlr7 valor_ipi, tmp.vlr8 valor_desconto, ');
       DMESTOQUE.Alx1.SQL.Add(' tmp.vlr9 valor_frete ');
       DMESTOQUE.Alx1.SQL.Add(' FROM tmp ');
       DMESTOQUE.Alx1.SQL.Add(' order by data1, cod_tmp ');
       DMESTOQUE.Alx1.Open;

       if DMESTOQUE.Alx1.IsEmpty then
       begin
           MessageDlg('O relatório de relação de notas fiscais retornou vazio.', mtInformation, [mbOK], 0);
       end
       else begin
           FrxNfce.LoadFromFile('C:\MZR\Macs\Rel\FrfRelacaoProdutosNotaFiscal.fr3');
           FrxNfce.ShowReport();

           exportar.ShowDialog := False;
           exportar.ShowProgress := False;
           exportar.PrintOptimized := False;
           exportar.FileName := xCaminhoContabilidade + '\Relação de notas fiscais produtos.pdf';
           FrxNfce.Export(exportar);
       end;
   except
   end;
end;

procedure TFRelPeriodoFiscal.CopiaXmlDistribuicao;
var
   SR: TSearchRec;
   I: Integer;
   FGravaXML: TextFile;
   xNomeXML, xPastaXML: String;
begin
   xPastaXML := xCaminhoContabilidade + '\XML';   
   //remove os XML que ficaram na pasta temporaria Contabilidade
   if DirectoryExists(xPastaXML) then
   begin
       //recupera os arquivos para limpar a pasta
       I := FindFirst(xPastaXML + '\*.*', faAnyFile, SR);
       while I=0 do
       begin
           DeleteFile(xPastaXML + '\' + SR.Name);
           I := FindNext(SR);
       end;
   end;
   
   //cria um novo
   VerificaDiretorio(xPastaXML);
      
   if cbOrigemXml.Text = 'Banco de dados' then
   begin
       MDO.QConsulta.Close;
       MDO.QConsulta.SQL.Clear;
       MDO.QConsulta.SQL.Add(' SELECT DOCFISORD.NUMDOCFIS, DOCFISORD.NFECHAVE, DOCFISORD.NFEXMLDIST, ''ORDEM'' TIPO ');
       MDO.QConsulta.SQL.Add(' FROM DOCFISORD ');
       MDO.QConsulta.SQL.Add(' WHERE ((DOCFISORD.NFESTATUS <> ''2'')) ');
       MDO.QConsulta.SQL.Add(' AND ((DOCFISORD.NFECHAVE IS NOT NULL)) ');
       MDO.QConsulta.SQL.Add(' AND (DOCFISORD.COD_PERIODOFISCAL = :FISCAL) ');
       MDO.QConsulta.SQL.Add(' UNION ');
       MDO.QConsulta.SQL.Add(' SELECT DOCFISSAIDA.NUMDOCFIS, DOCFISSAIDA.NFECHAVE, DOCFISSAIDA.NFEXMLDIST, ''VENDA'' TIPO ');
       MDO.QConsulta.SQL.Add(' FROM DOCFISSAIDA ');
       MDO.QConsulta.SQL.Add(' WHERE (DOCFISSAIDA.NFECHAVE IS NOT NULL) ');
       MDO.QConsulta.SQL.Add(' AND (DOCFISSAIDA.NFESTATUS <> ''2'') ');
       MDO.QConsulta.SQL.Add(' AND (DOCFISSAIDA.NFECHAVE IS NOT NULL) ');
       MDO.QConsulta.SQL.Add(' AND (DOCFISSAIDA.COD_PERIODOFISCAL = :FISCAL) ');
       MDO.QConsulta.SQL.Add(' UNION ');
       MDO.QConsulta.SQL.Add(' SELECT DOCFIS.NUMDOCFIS, DOCFIS.NFECHAVE, DOCFIS.NFEXMLDIST, ''COMPRA'' TIPO ');
       MDO.QConsulta.SQL.Add(' FROM DOCFIS ');
       MDO.QConsulta.SQL.Add(' WHERE (DOCFIS.NFECHAVE IS NOT NULL) ');
       MDO.QConsulta.SQL.Add(' AND (DOCFIS.NFESTATUS <> ''2'') ');
       MDO.QConsulta.SQL.Add(' AND (DOCFIS.NFECHAVE IS NOT NULL) ');
       MDO.QConsulta.SQL.Add(' AND (DOCFIS.COD_PERIODOFISCAL = :FISCAL) ');
       MDO.QConsulta.ParamByName('FISCAL').AsInteger := DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger;
       MDO.QConsulta.Open;
       MDO.QConsulta.First;
       
       while not MDO.QConsulta.Eof do
       begin
           xNomeXML := MDO.QConsulta.FieldByName('NUMDOCFIS').AsString+'-'+MDO.QConsulta.FieldByName('NFECHAVE').AsString+'-NfeDistribuicao.xml';
           if MDO.QConsulta.FieldByName('NFEXMLDIST').AsString <> '' then
           begin
               AssignFile(FGravaXML, xPastaXML + '\' + xNomeXML);
               Rewrite(FGravaXML);
               Write(FGravaXML, MDO.QConsulta.FieldByName('NFEXMLDIST').AsString);
               CloseFile(FGravaXML);
           end;

           MDO.QConsulta.Next;
       end;
   end
   else begin
       //extrai o periodo fiscal
       XSetInPeriodoFiscal := DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
       XSetInPeriodoFiscal := TiraCaracter(XSetInPeriodoFiscal, '/');
       XSetInPeriodoFiscal := TiraCaracter(XSetInPeriodoFiscal, '(');
       XSetInPeriodoFiscal := TiraCaracter(XSetInPeriodoFiscal, ')');
   
       //recupera o caminho que é salvo o XML de distribuição na máquina
       if (DMMACS.TLoja.FieldByName('CAMINHOXML').AsString <> '') then
           xCaminhoXml := DMMACS.TLoja.FieldByName('CAMINHOXML').AsString + XSetInPeriodoFiscal
       else
           xCaminhoXml := 'C:\Mzr\Arquivos\NFe\NfeDistribuicao\'+XSetInPeriodoFiscal;
       
       //busca todos os XML da pasta que são salvo o XML de distribuição
       I := FindFirst(xCaminhoXml + '\*.*', faAnyFile, SR);
       while I = 0 do
       begin
           //copia para a pasta temporaria
           CopyFile(PChar(xCaminhoXml + '\' + SR.Name), PChar(xPastaXML + '\' + SR.Name), True);
       
           I := FindNext(SR);
       end;
   end;
end;

procedure TFRelPeriodoFiscal.CompactaArquivos;
begin
   xCaminhoAnexo := xCaminhoContabilidade + '\Fechamento mês.zip';
   compacta.ZipFileName := xCaminhoAnexo; //nome do arquivo final
   compacta.FSpecArgs.Add(xCaminhoContabilidade + '\*.*');//diretorio onde serão buscados os arquivos
   compacta.FSpecArgs.Add(xCaminhoContabilidade + '\XML\*.*');//diretorio onde serão buscados os arquivos
   compacta.Add();
end;

procedure TFRelPeriodoFiscal.EnviaEmailContabilidade;
begin
   //prepara a mensagem padrão
   edMensagem.Lines.Add('Segue em anexo o fechamento do período '
       + DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString
       + ' da empresa ' + DMESTOQUE.Alx4.FieldByName('FANTASIA').AsString);

   //mostra o painel
   pEmail.Visible := True;
   EdEmail.SetFocus;
   pEmail.BringToFront;
end;

procedure TFRelPeriodoFiscal.BtnEnviarOkClick(Sender: TObject);
var
   XEmail: String;
   Attachment: TIdAttachment;
begin
  inherited;

   Screen.Cursor := CrHourGlass;
   
   try
       if DMMACS.TLoja.FieldByName('EMAIL_EMPRESA').AsString = '' then
       begin
           SMTPxml.Username := 'noreply@resulterp.com.br';
           XEmail := 'noreply@resulterp.com.br';
           SMTPxml.Password :='Mzrking@771'; // senha do usuario
           SMTPxml.Host :=  'smtp.resulterp.com.br';
           SMTPxml.Port := 587;
           //
           SMTPxml.UseTLS := utNoTLSSupport;                   
       end
       else begin
           SMTPxml.Username := DMMACS.TLoja.FieldByName('EMAIL_EMPRESA').AsString;
           XEmail := DMMACS.TLoja.FieldByName('EMAIL_EMPRESA').AsString;
           SMTPxml.Password := FMenu.Cripto.CriptoHexToText(DMMACS.TLoja.FieldByName('SENHAEMAIL_EMPRESA').AsString);
           SMTPxml.Host :=  DMMACS.TLoja.FieldByName('SERVIDOR_SMTP').AsString;
           SMTPxml.Port := DMMACS.TLoja.FieldByName('PORTA_EMAIL').AsInteger;
           //
           SSLSocket.SSLOptions.Method := sslvSSLv3;
           SSLSocket.SSLOptions.Mode := sslmClient;
           //
           SMTPxml.IOHandler := SSLSocket;
           if DMMACS.TLoja.FieldByName('SERVIDOR_SMTP').AsString = 'smtp.live.com' then
           begin
               SMTPxml.UseTLS := utUseExplicitTLS;
               SSLSocket.SSLOptions.Method := sslvTLSv1;
               SSLSocket.SSLOptions.Mode := sslmUnassigned;
           end
           else
               SMTPxml.UseTLS := utUseImplicitTLS;
       end;

       try
           with MessXml do
           begin
               From.Address := XEmail;
               Recipients.EmailAddresses := EdEmail.Text; // email de destino
               Body.Text := edMensagem.Lines.Text;
               //ContentType:='text/html';
               CharSet := 'iso-8859-1';
               Encoding := MeMIME;
               ContentType := 'multipart/related' ;

               if FileExists(xCaminhoAnexo) then
               begin
                   MessXml.Subject := 'Fechamento - ' + DMESTOQUE.Alx4.FieldByName('FANTASIA').AsString;
                   Attachment := TIdAttachmentFile.Create(MessageParts, xCaminhoAnexo);
               end;
               
               try
                   SMTPxml.Connect;
               except
                   SMTPxml.Port := 25;
                   SMTPxml.Connect;
               end;

               SMTPxml.Send(MessXml);

               MessageDlg('E-mail enviado com sucesso.', mtInformation, [mbOK], 0);
           end;
       finally
           SMTPxml.Disconnect;
       end;
   except
       On E : Exception do
       begin
           ShowMessage('O envio do e-mail falhou: '+ E.Message);
       end;
   end;

   Screen.Cursor := CrDefault;
   pEmail.Visible := False;
   pEmail.SendToBack;   


end;

procedure TFRelPeriodoFiscal.BtnCancelaEnvioClick(Sender: TObject);
begin
  inherited;
   pEmail.Visible := False;
   pEmail.SendToBack;
end;

procedure TFRelPeriodoFiscal.Button1Click(Sender: TObject);
begin
  inherited;
           SMTPxml.Username := 'noreply@resulterp.com.br';
           XEmail := 'noreply@resulterp.com.br';
           SMTPxml.Password :='Mzrking@771'; // senha do usuario
           SMTPxml.Host :=  'smtp.resulterp.com.br';
           SMTPxml.Port := 587;
           //
           SMTPxml.UseTLS := utNoTLSSupport;


       try
           with MessXml do
           begin
               From.Address := XEmail;
               Recipients.EmailAddresses := 'alex@alexmazur.com.br'; // email de destino
               Body.Text := 'teste corpo';
               //ContentType:='text/html';
               CharSet := 'iso-8859-1';
               Encoding := MeMIME;
               ContentType := 'multipart/related' ;
               {
               if FileExists(xCaminhoAnexo) then
               begin
                   MessXml.Subject := 'Fechamento - ' + DMESTOQUE.Alx4.FieldByName('FANTASIA').AsString;
                   Attachment := TIdAttachmentFile.Create(MessageParts, xCaminhoAnexo);
               end;
                }
               try
                   SMTPxml.Connect;
               except
                   SMTPxml.Port := 25;
                   SMTPxml.Connect;
               end;

               SMTPxml.Send(MessXml);

               MessageDlg('E-mail enviado com sucesso.', mtInformation, [mbOK], 0);
           end;
       finally
           SMTPxml.Disconnect;
       end;
end;

end.

