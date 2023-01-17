unit UGeradorXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, Buttons, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  TFGeradorXML = class(TFPadrao)
    PPrincipal: TPanel;
    PDiretorios: TPanel;
    btnGerar: TButton;
    Button1: TButton;
    Button2: TButton;
    cbSincFormPag: TCheckBox;
    procedure btnGerarClick(Sender: TObject);

    //######### CLIENTES
    //MAURO 05/11/2012 - Função para gerar o arquivo XML do Cliente
    Function ExportarXMLCliente : Boolean;
    //MAURO 05/11/2012 - Função para gerar o arquivo XML do Pessoa
    Function ExportarXMLPessoa : Boolean;
    //MAURO 05/11/2012 - Função para gerar o arquivo XML do PessoaFisica
    Function ExportarXMLPessoaFisica : Boolean;
    //MAURO 05/11/2012 - Função para gerar o arquivo XML do PessoaJuridica
    Function ExportarXMLPessoaJuridica : Boolean;
    //MAURO 05/11/2012 - Função para gerar o arquivo XML do Telefone
    Function ExportarXMLTelefone : Boolean;
    //MAURO 05/11/2012 - Função para gerar o arquivo XML do Email
    Function ExportarXMLEmail : Boolean;
    //MAURO 05/11/2012: Seleciona dados das tabelas para gerar o xml dos clientes
    Procedure SelecionaArquivoTabCli(XTable: String);
    //MAURO 07/11/2012 - Função para atualizar o status do cliente após exportar seus dados
    Function AtualizarStatusCliente : Boolean;
    //MAURO 07/11/2012 - Função para exportar os XMLs dos Cliente, Pessoa, PF, PJ, Telefone, Email
    Function ExportarCliente : Boolean;
    //MAURO 26/11/2012 - Função para importar o arquivo XML do Pesssoa
    Function AtualizarPessoa : Boolean;
    //MAURO 26/11/2012 - Função para importar o arquivo XML do PessoaFisica
    Function AtualizarPessoaFisica : Boolean;
    //MAURO 26/11/2012 - Função para importar o arquivo XML do PessoaJuridica
    Function AtualizarPessoaJuridica : Boolean;
    //MAURO 26/11/2012 - Função para importar o arquivo XML do Cliente
    Function AtualizarCliente : Boolean;
    //MAURO 26/11/2012 - Função para importar o arquivo XML do Email
    Function AtualizarEmail : Boolean;
    //MAURO 26/11/2012 - Função para importar o arquivo XML do Telefone
    Function AtualizarTelefone : Boolean;
    //MAURO - Funções para criar os arquivos xml
    Function CriarArquivosServidor(XNumPalm:String) :Boolean;
    Function CriarArquivosMobile(XNumPalm:String) :Boolean;
    //MAURO 26/11/2012 - Função para importar os dados
    Function ImportarDadosServidor : Boolean;
    Function ImportarDadosMobile : Boolean;
    //Função para marcar como exportado;
    Function PedidoExportado(XCODPEDIDO:Integer) : Boolean;
    //MAURO 27/11/2012 - Função para atualizar os arquivos XML
    procedure AtualizarDadosServidor;
    procedure AtualizarDadosMobile;
    //MAURO 27/11/2012 - Função para atualizar os arquivos XML do Cliente para o BD
    procedure AtualizarBDClientes;

    //MAURO - Função para atualizar o estoque do item do pedido de venda
    Function AtualizarEstoqueItem(XQTDEPROD: Currency; XCODESTOQUE: Integer) : Boolean;

    Function SelecionaCliente(XCPFCNPJ : String) : Boolean;
    Function SelecionaEstoque(XCONTRINT : String) : Boolean;
    
    Function AtualizarStatusVenda : Boolean;
    //########### PRODUTOS
    //MAURO 07/11/2012: Seleciona dados das tabelas para gerar o xml dos produtos
    Procedure SelecionaArquivoTabProd(XTable: String);
    //MAURO 05/11/2012 - Função para gerar o arquivo XML do Produto
    procedure ExportarXMLProduto;
    //MAURO 05/11/2012 - Função para gerar o arquivo XML do SubProduto
    procedure ExportarXMLSubProduto;
    //MAURO 05/11/2012 - Função para gerar o arquivo XML do Estoque
    procedure ExportarXMLEstoque;
    //MAURO 05/11/2012 - Função para gerar o arquivo XML do SubGrupoProduto
    procedure ExportarXMLSubGrupoProduto;
    //MAURO 05/11/2012 - Função para gerar o arquivo XML do GrupoProduto
    procedure ExportarXMLGrupoProduto;
    //MAURO 05/11/2012 - Função para gerar o arquivo XML do Cst
    procedure ExportarXMLCst;
    //MAURO 05/11/2012 - Função para gerar o arquivo XML do Unidade
    procedure ExportarXMLUnidade;
    //MAURO 07/11/2012 - Função para atualizar o status o produto após exportar seus dados
    Function AtualizarStatusProduto : Boolean;
    //MAURO 07/11/2012 - Função para exportar os XMLs dos Produtos, Grupo, Subgrupo, Cst, Unidade, Estoque e Subproduto
    Function ExportarProduto : Boolean;
    //MAURO 27/11/2012 - Função para atualizar os arquivos XML do Produto no BD
    procedure AtualizarBDProduto;
    //MAURO 28/11/2012 - Função para importar o arquivo XML do Produto
    Function AtualizarProduto : Boolean;
    //MAURO 28/11/2012 - Função para importar o arquivo XML do Produto
    Function AtualizarSubProduto : Boolean;
    //MAURO 28/11/2012 - Função para importar o arquivo XML do Produto
    Function AtualizarEstoque : Boolean;
    //MAURO 28/11/2012 - Função para importar o arquivo XML do Produto
    Function AtualizarSubGrupoProduto : Boolean;
    //MAURO 28/11/2012 - Função para importar o arquivo XML do Produto
    Function AtualizarGrupoProduto : Boolean;
    //MAURO 28/11/2012 - Função para importar o arquivo XML do Produto
    Function AtualizarCst : Boolean;
    //MAURO 28/11/2012 - Função para importar o arquivo XML do Produto
    Function AtualizarUnidade : Boolean;
    //Função para atualizar os arquivos XML da Venda
    Function AtualizarBDVenda : Boolean;
    //MAURO 08/11/2012 - Função para exportar a forma de pagamento
    Function ExportarItensPedVenda : Boolean;
    //MAURO 08/11/2012 - Função para exportar a forma de pagamento
    Function ExportarPedVenda : Boolean;
    //MAURO 07/11/2012: Seleciona dados das tabelas para gerar o xml da venda
    Procedure SelecionaArquivoTabVenda(XTable: String);
    //##### FORMPAG
    //MAURO 08/11/2012 - Função para exportar a forma de pagamento
    Function ExportarFormaPag : Boolean;
    //MAURO 07/11/2012: Seleciona dados das tabelas para gerar o xml da forma de pagamento
    Procedure SelecionaArquivoTabFormPag(XTable: String);
    //MAURO 09/11/2012 - Função para transferir os dados da pasta tmp para a pasta do vendedor
    Function ExportaDados : Boolean;
    //MAURO 08/11/2012 - Função para limpar os diretorios
    Function limparDiretorioServidor(XNUMPALM: String) : Boolean;
    Function limparDiretorioMobile(XNUMPALM: String) : Boolean;
    Function limparDiretorioMobileImportados(XNUMPALM: String) : Boolean;
    Function limparDiretorioServidorImportados(XNUMPALM: String) : Boolean;
    // MAURO - Função para exportar os dados do servidor;
    Function ExportaXmlServidor : Boolean;
    // MAURO - Função para exportar os dados do mobile;
    Function ExportaXmlMobile : Boolean;
    // MAURO - Função para copiar os arquivos xml para a pasta do importados
    Function preparaAtualizarMobile :Boolean;
    Function preparaAtualizarServidor :Boolean;
    //Criar os arquivos XML
    Function CriarXmlPessoa: Boolean;
    Function CriarXmlPessoaF: Boolean;
    Function CriarXmlPessoaJ: Boolean;
    Function CriarXmlCliente: Boolean;
    Function CriarXmlTelefone: Boolean;
    Function CriarXmlEmail: Boolean;
    Function CriarXmlPessoaMob: Boolean;
    Function CriarXmlPessoaFMob: Boolean;
    Function CriarXmlPessoaJMob: Boolean;
    Function CriarXmlClienteMob: Boolean;
    Function CriarXmlTelefoneMob: Boolean;
    Function CriarXmlEmailMob: Boolean;
    Function CriarXmlProduto: Boolean;
    Function CriarXmlSubProduto: Boolean;
    Function CriarXmlSubGrupoProduto: Boolean;
    Function CriarXmlGrupoProduto: Boolean;
    Function CriarXmlEstoque: Boolean;
    Function CriarXmlCst: Boolean;
    Function CriarXmlUnidade: Boolean;
    Function CriarXmlFormaPagamento: Boolean;
    Function CriarXmlItensPedVenda: Boolean;
    Function CriarXmlPedVenda: Boolean;

    //Jônatas 06/08/2013 - Criar XML de exportação do Mobile
    Function CriarXmlOrcamento: Boolean;
    Function CriarXmlItensOrcamento: Boolean;
    //Jônatas 06/08/2013 - Busca dos itens na tabela orçamento e itprodorc
    Procedure SelecionaArquivoTabOrcamento(XTable: String);
    //Jônatas 06/08/2013 - Função para exportar a XML de orçamento e dos itens do orçamento
    Function ExportarOrcamento: Boolean;
    Function ExportaItensOrcamento: Boolean;
    //Jônatas 07/08/2013 - Função para atualizar o status de exportação de XML na tabela orçamento
    Function AtualizarStatusOrcamento: Boolean;
    //Jônatas 07/08/2013 - Função de atualização da tabela de orçamento através da importação de xml
    Function AtualizarBDOrcamento: Boolean;
    //Função para verificar se tem arquivos dentro das pastas
    Function VerificaPastaVazia(XNUMPALM: String) :Boolean;

    Procedure ExportarXMLFormaPagamento;
    //MAURO 07/11/2012 - Função para atualizar o status da Forma pagamento após exportar seus dados
    Function AtualizarStatusFormaPagamento : Boolean;
    //MAURO 27/11/2012 - Função para atualizar os arquivos XML da Forma de Pagamento no BD
    procedure AtualizarBDFormaPagamento;

    // Seleciona a chave primaria da tabela
    Procedure EncontraChavePrim(XTable: String; XCampo: String);
    //Encontra parametros para subprodutos
    Procedure EncontraParSubpro(XCST: String; XECF: String; XPRODUTO: String );
    //Encontra parametros para estoque
    Procedure EncontraParEstoque(XContrint: String);
    //Encontra parametros para produtos
    Procedure EncontraParProd(XGRUPO: String; XSUBGRUPO: String);

    Function PreparaItensPedVenda(XCODESTOQUE : Integer) : Boolean;

    Procedure EncontraParam(XCPFCNPJ: String);
    //Encontra parametros para loja
    Procedure EncontraCodLoja();
    //Seleciona dados pra produto
    Procedure PreparaProduto();
    //Seleciona dados pra SubProduto
    procedure PreparaSubProduto();

    Function LimparDataSets : Boolean;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnGerarExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGeradorXML: TFGeradorXML;
  xExportado : Boolean;
  xExportadoProd : Boolean;
  xTipo : String;
  DirecDown, DirecUp, DirecMob : String;
  Dir : String;
  XCodPrim : Integer;
  xTipoPessoa : Integer;
  Result : Boolean;
  Resultado, xResultado : Boolean;
  XCodGrupo, XCodSubGrupo, XCodCst, XCodProd, XcodLoja:Integer;
  XCod_NovoEstoque, XCod_NovoSubProduto :Integer;
  xCodPessoa, xCodPedVenda, xCodItensPedVen, xCodCliente, xCodEstoque : Integer;
  xNcm : String;
  XTABELA: String;

implementation

uses UDMMacs, DB, Math, UDMSaida, UMDO, UDMEstoque, Alxor32;

{$R *.dfm}

Function TFGeradorXML.CriarArquivosMobile(XNumPalm:String) :Boolean;
Begin
     if not FileExists(Dir+'Mobile\0'+ XNumPalm+ '\Mobile\PessoaXML.xml') then
        CriarXmlPessoaMob;
     if not FileExists(Dir+'Mobile\0'+ XNumPalm+ '\Mobile\PessoaFisicaXML.xml') then
        CriarXmlPessoaFMob;
     if not FileExists(Dir+'Mobile\0'+ XNumPalm+ '\Mobile\PessoaJuridicaXML.xml') then
        CriarXmlPessoaJMob;
     if not FileExists(Dir+'Mobile\0'+ XNumPalm+ '\Mobile\ClienteXML.xml') then
        CriarXmlClienteMob;
     if not FileExists(Dir+'Mobile\0'+ XNumPalm+ '\Mobile\TelefoneXML.xml') then
        CriarXmlTelefoneMob;
     if not FileExists(Dir+'Mobile\0'+ XNumPalm+ '\Mobile\EmailXML.xml') then
        CriarXmlEmailMob;
     if not FileExists(Dir+'Mobile\0'+ XNumPalm+ '\Mobile\PedVendaXML.xml') then
        CriarXmlPedVenda;
     if not FileExists(Dir+'Mobile\0'+ XNumPalm+ '\Mobile\ItensPedVendaXML.xml') then
        CriarXmlItensPedVenda;
     //Jônatas 06/08/2013 - Verificação e criação dos arquivos xml do orçamento
     if not FileExists(Dir+'Mobile\0'+ XNumPalm+ '\Mobile\OrcamentoXML.xml') then
        CriarXmlOrcamento;
     if not FileExists(Dir+'Mobile\0'+ XNumPalm+ '\Mobile\ItensOrcamentoXML.xml') then
        CriarXmlItensOrcamento;
End;

//MAURO 12/12/12 - Função para criar os arquivos xml
Function TFGeradorXML.CriarArquivosServidor(XNumPalm:String) :Boolean;
Begin
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\PessoaXML.xml') then
        CriarXmlPessoa;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\PessoaFisicaXML.xml') then
        CriarXmlPessoaF;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\PessoaJuridicaXML.xml') then
        CriarXmlPessoaJ;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\ClienteXML.xml') then
        CriarXmlCliente;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\TelefoneXML.xml') then
        CriarXmlTelefone;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\EmailXML.xml') then
        CriarXmlEmail;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\ProdutoXML.xml') then
        CriarXmlProduto;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\SubProdutoXML.xml') then
        CriarXmlSubProduto;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\SubGrupoProdutoXML.xml') then
        CriarXmlSubGrupoProduto;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\GrupoProdutoXML.xml') then
        CriarXmlSubGrupoProduto;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\EstoqueXML.xml') then
        CriarXmlEstoque;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\CstXML.xml') then
        CriarXmlCst;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\UnidadeXML.xml') then
        CriarXmlUnidade;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Servidor\FormaPagamentoXML.xml') then
        CriarXmlFormaPagamento;

End;

Function TFGeradorXML.CriarXmlPessoa : Boolean;
Begin
       DMMacs.cdsPessoa.FileName := DirecDown+'\PessoaXML.xml';
       DMMacs.cdsPessoa.Open;
       DMMacs.cdsPessoa.Insert;
       DMMacs.cdsPessoa.Post;
       DMMACS.cdsPessoa.EmptyDataSet;
       DMMacs.cdsPessoa.Close;
End;

Function TFGeradorXML.CriarXmlPessoaF : Boolean;
Begin
       DMMacs.cdsPessoaF.FileName := DirecDown+'\PessoaFisicaXML.xml';
       DMMacs.cdsPessoaF.Open;
       DMMacs.cdsPessoaF.Insert;
       DMMacs.cdsPessoaF.Post;
       DMMACS.cdsPessoaF.EmptyDataSet;
       DMMacs.cdsPessoaF.Close;
End;

Function TFGeradorXML.CriarXmlPessoaJ : Boolean;
Begin
       DMMacs.cdsPessoaJ.Close;
       DMMacs.cdsPessoaJ.FileName := DirecDown+'\PessoaJuridicaXML.xml';
       DMMacs.cdsPessoaJ.Open;
       DMMacs.cdsPessoaJ.Insert;
       DMMacs.cdsPessoaJ.Post;
       DMMACS.cdsPessoaJ.EmptyDataSet;
       DMMacs.cdsPessoaJ.Close;
End;

Function TFGeradorXML.CriarXmlCliente : Boolean;
Begin
       DMMacs.cdsCliente.FileName := DirecDown+'\ClienteXML.xml';
       DMMacs.cdsCliente.Open;
       DMMacs.cdsCliente.Insert;
       DMMacs.cdsCliente.Post;
       DMMACS.cdsCliente.EmptyDataSet;
       DMMacs.cdsCliente.Close;
End;

Function TFGeradorXML.CriarXmlTelefone : Boolean;
Begin
       DMMacs.cdsTelefone.FileName := DirecDown+'\TelefoneXML.xml';
       DMMacs.cdsTelefone.Open;
       DMMacs.cdsTelefone.Insert;
       DMMacs.cdsTelefone.Post;
       DMMACS.cdsTelefone.EmptyDataSet;
       DMMacs.cdsTelefone.Close;
End;

Function TFGeradorXML.CriarXmlEmail : Boolean;
Begin
       DMMacs.cdsEmail.FileName := DirecDown+'\EmailXML.xml';
       DMMacs.cdsEmail.Open;
       DMMacs.cdsEmail.Insert;
       DMMacs.cdsEmail.Post;
       DMMACS.cdsEmail.EmptyDataSet;
       DMMacs.cdsEmail.Close;
End;

Function TFGeradorXML.CriarXmlPessoaMob : Boolean;
Begin

       DMMacs.cdsPessoa.FileName := DirecDown+'\PessoaXML.xml';
       DMMacs.cdsPessoa.Open;
       DMMacs.cdsPessoa.Insert;
       DMMacs.cdsPessoa.Post;
       DMMACS.cdsPessoa.EmptyDataSet;
       DMMacs.cdsPessoa.Close;
End;

Function TFGeradorXML.CriarXmlPessoaFMob : Boolean;
Begin
       DMMacs.cdsPessoaF.FileName := DirecDown+'\PessoaFisicaXML.xml';
       DMMacs.cdsPessoaF.Open;
       DMMacs.cdsPessoaF.Insert;
       DMMacs.cdsPessoaF.Post;
       DMMACS.cdsPessoaF.EmptyDataSet;
       DMMacs.cdsPessoaF.Close;
End;

Function TFGeradorXML.CriarXmlPessoaJMob : Boolean;
Begin
       DMMacs.cdsPessoaJ.Close;
       DMMacs.cdsPessoaJ.FileName := DirecDown+'\PessoaJuridicaXML.xml';
       DMMacs.cdsPessoaJ.Open;
       DMMacs.cdsPessoaJ.Insert;
       DMMacs.cdsPessoaJ.Post;
       DMMACS.cdsPessoaJ.EmptyDataSet;
       DMMacs.cdsPessoaJ.Close;
End;

Function TFGeradorXML.CriarXmlClienteMob : Boolean;
Begin
       DMMacs.cdsCliente.FileName := DirecDown+'\ClienteXML.xml';
       DMMacs.cdsCliente.Open;
       DMMacs.cdsCliente.Insert;
       DMMacs.cdsCliente.Post;
       DMMACS.cdsCliente.EmptyDataSet;
       DMMacs.cdsCliente.Close;
End;

Function TFGeradorXML.CriarXmlTelefoneMob : Boolean;
Begin
       DMMacs.cdsTelefone.FileName := DirecDown+'\TelefoneXML.xml';
       DMMacs.cdsTelefone.Open;
       DMMacs.cdsTelefone.Insert;
       DMMacs.cdsTelefone.Post;
       DMMACS.cdsTelefone.EmptyDataSet;
       DMMacs.cdsTelefone.Close;
End;

Function TFGeradorXML.CriarXmlEmailMob : Boolean;
Begin
       DMMacs.cdsEmail.FileName := DirecDown+'\EmailXML.xml';
       DMMacs.cdsEmail.Open;
       DMMacs.cdsEmail.Insert;
       DMMacs.cdsEmail.Post;
       DMMACS.cdsEmail.EmptyDataSet;
       DMMacs.cdsEmail.Close;
End;

Function TFGeradorXML.CriarXmlProduto: Boolean;
Begin
       DMMacs.cdsProduto.FileName := DirecDown+'\ProdutoXML.xml';
       DMMacs.cdsProduto.Open;
       DMMacs.cdsProduto.Insert;
       DMMacs.cdsProduto.Post;
       DMMACS.cdsProduto.EmptyDataSet;
       DMMacs.cdsProduto.Close;
End;

Function TFGeradorXML.CriarXmlSubProduto : Boolean;
Begin
       DMMacs.cdsSubProduto.FileName := DirecDown+'\SubProdutoXML.xml';
       DMMacs.cdsSubProduto.Open;
       DMMacs.cdsSubProduto.Insert;
       DMMacs.cdsSubProduto.Post;
       DMMACS.cdsSubProduto.EmptyDataSet;
       DMMacs.cdsSubProduto.Close;
End;

Function TFGeradorXML.CriarXmlEstoque : Boolean;
Begin
       DMMacs.cdsEstoque.FileName := DirecDown+'\EstoqueXML.xml';
       DMMacs.cdsEstoque.Open;
       DMMacs.cdsEstoque.Insert;
       DMMacs.cdsEstoque.Post;
       DMMACS.cdsEstoque.EmptyDataSet;
       DMMacs.cdsEstoque.Close;
End;

Function TFGeradorXML.CriarXmlSubGrupoProduto : Boolean;
Begin
       DMMacs.cdsSubGrupo.FileName := DirecDown+'\SubGrupoProdutoXML.xml';
       DMMacs.cdsSubGrupo.Open;
       DMMacs.cdsSubGrupo.Insert;
       DMMacs.cdsSubGrupo.Post;
       DMMACS.cdsSubGrupo.EmptyDataSet;
       DMMacs.cdsSubGrupo.Close;
End;

Function TFGeradorXML.CriarXmlGrupoProduto : Boolean;
Begin
       DMMacs.cdsGrupo.FileName := DirecDown+'\GrupoProdutoXML.xml';
       DMMacs.cdsGrupo.Open;
       DMMacs.cdsGrupo.Insert;
       DMMacs.cdsGrupo.Post;
       DMMACS.cdsGrupo.EmptyDataSet;
       DMMacs.cdsGrupo.Close;
End;

Function TFGeradorXML.CriarXmlCst : Boolean;
Begin
       DMMacs.cdsCst.FileName := DirecDown+'\CstXML.xml';
       DMMacs.cdsCst.Open;
       DMMacs.cdsCst.Insert;
       DMMacs.cdsCst.Post;
       DMMACS.cdsCst.EmptyDataSet;
       DMMacs.cdsCst.Close;
End;

Function TFGeradorXML.CriarXmlUnidade : Boolean;
Begin
       DMMacs.cdsUnidade.FileName := DirecDown+'\UnidadeXML.xml';
       DMMacs.cdsUnidade.Open;
       DMMacs.cdsUnidade.Insert;
       DMMacs.cdsUnidade.Post;
       DMMACS.cdsUnidade.EmptyDataSet;
       DMMacs.cdsUnidade.Close;
End;

Function TFGeradorXML.CriarXmlFormaPagamento : Boolean;
Begin
       DMMacs.cdsFormaPagamento.FileName := DirecDown+'\FormaPagamentoXML.xml';
       DMMacs.cdsFormaPagamento.Open;
       DMMacs.cdsFormaPagamento.Insert;
       DMMacs.cdsFormaPagamento.Post;
       DMMACS.cdsFormaPagamento.EmptyDataSet;
       DMMacs.cdsFormaPagamento.Close;
End;

Function TFGeradorXML.CriarXmlPedVenda : Boolean;
Begin
       DMMacs.cdsPedVenda.FileName := DirecDown+'\PedVendaXML.xml';
       DMMacs.cdsPedVenda.Open;
       DMMacs.cdsPedVenda.Insert;
       DMMacs.cdsPedVenda.Post;
       DMMACS.cdsPedVenda.EmptyDataSet;
       DMMacs.cdsPedVenda.Close;
End;

Function TFGeradorXML.CriarXmlItensPedVenda : Boolean;
Begin
       DMMacs.cdsItensPedVenda.FileName := DirecDown+'\ItensPedVendaXML.xml';
       DMMacs.cdsItensPedVenda.Open;
       DMMacs.cdsItensPedVenda.Insert;
       DMMacs.cdsItensPedVenda.Post;
       DMMACS.cdsItensPedVenda.EmptyDataSet;
       DMMacs.cdsItensPedVenda.Close;
End;

//Jônatas 06/08/2013 - Função para criação do XML do orçamento
Function TFGeradorXML.CriarXmlOrcamento : Boolean;
Begin
       DMMacs.cdsOrcamento.FileName := DirecDown+'\OrcamentoXML.xml';
       DMMacs.cdsOrcamento.Open;
       DMMacs.cdsOrcamento.Insert;
       DMMacs.cdsOrcamento.Post;
       DMMACS.cdsOrcamento.EmptyDataSet;
       DMMacs.cdsOrcamento.Close;
End;
//Jônatas 06/08/2013 - Função para criação do XML dos itens do orçamento
Function TFGeradorXML.CriarXmlItensOrcamento : Boolean;
Begin
       DMMacs.cdsItensOrcamento.FileName := DirecDown+'\ItensOrcamentoXML.xml';
       DMMacs.cdsItensOrcamento.Open;
       DMMacs.cdsItensOrcamento.Insert;
       DMMacs.cdsItensOrcamento.Post;
       DMMACS.cdsItensOrcamento.EmptyDataSet;
       DMMacs.cdsItensOrcamento.Close;
End;

Function TFGeradorXML.ExportaXmlMobile : Boolean;
begin
    Result:=True;
    Resultado:=True;
    EncontraCodLoja;
    try
        DMMACS.TSecundario.Close;
        DMMACS.TSecundario.SQL.Clear;
        DMMACS.TSecundario.SQL.Add(' select * from funcionario');
        DMMACS.TSecundario.SQL.Add(' where funcionario.palm = 1');
        DMMACS.TSecundario.SQL.Text;
        DMMACS.TSecundario.Open;
        DMMACS.TSecundario.First;

        if DMMACS.TSecundario.isEmpty
        then begin
            ShowMessage('Não existem funcionários selecionados com a opção PALM');
            exit;
        end
        else
        while not DMMACS.TSecundario.Eof do
        begin

            Dir := DMMACS.QConsulta2.FieldByName('DIRDOWFTP').AsString;
            if Dir = ''
            then begin
                ShowMessage('Não foi informado diretorio para o sincronismo!');
                exit;
            End;

            if not directoryExists(Dir+'Mobile\') then
                CreateDir(Dir+'Mobile\');

            if not directoryExists(Dir+'Mobile\0'+DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\') then
                CreateDir(Dir+'Mobile\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\');

            //cria a pasta servidor dentro do numero do vendedor
              if not directoryExists(Dir+'Mobile\0'+DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Mobile\') then
                CreateDir(Dir+'Mobile\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Mobile\');

              DirecDown := Dir+'Mobile\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Mobile';
              //DirecMob := Dir+'Mobile\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Mobile\';
            //cria nos diretorios os arquivos XML

            CriarArquivosMobile(DMMACS.TSecundario.FieldByName('NUMPALM').AsString);


                Try
                    ExportarCliente;
                    if Resultado = False
                    then begin
                        ShowMessage('Falha na exportação do cliente!');
                        exit;
                    end;

                    ExportarPedVenda;
                    if Resultado = False
                    then begin
                        ShowMessage('Falha na exportação do pedido de venda!');
                        exit;
                    end;

                    ExportarItensPedVenda;

                    if Resultado = False
                    then begin
                        ShowMessage('Falha na exportação dos itens do pedido de venda');
                        exit;
                    end;
                    //Jônatas 07/08/2013 - Chamada da função de exportação do orçamento
                    ExportarOrcamento;
                    if Resultado = False
                    then begin
                        ShowMessage('Falha na exportação do orçamento');
                        exit;
                    end;
                    //Jônatas 07/08/2013 - Chamada da função de exportação dos itens do orçamento
                    ExportaItensOrcamento;
                    if Resultado = False
                    then begin
                        ShowMessage('Falha na exportação dos itens do orçamento');
                        exit;
                    end;
                Except
                    ShowMessage('Falha na exportação dos dados');
                    exit;
                End;

        DMMACS.TSecundario.Next;
	      End;

        DMMACS.QConsulta.Close;
        AtualizarStatusCliente;
        AtualizarStatusVenda;
        AtualizarStatusOrcamento;//Jônatas 08/08/2013 - Chamar a função que atualiza o status de exportação

        ShowMessage('TODOS OS XMLS FORAM EXPORTADOS COM SUCESSO!!!');

       Except

       End;

end;

Function TFGeradorXML.ExportaXmlServidor : Boolean;
begin
       Resultado := True;
       Result := True;
       EncontraCodLoja;
       try
            DMMACS.TSecundario.Close;
            DMMACS.TSecundario.SQL.Clear;
            DMMACS.TSecundario.SQL.Add(' select * from funcionario');
            DMMACS.TSecundario.SQL.Add(' where funcionario.palm = 1');
            DMMACS.TSecundario.SQL.Text;
            DMMACS.TSecundario.Open;
            DMMACS.TSecundario.First;

          if DMMACS.TSecundario.isEmpty
          then begin
              ShowMessage('Não existem funcionários selecionados com a opção PALM');
              exit;
          end
            else
              while not DMMACS.TSecundario.Eof do
              begin


                Dir := 'C:\mzr\Arquivos\';
                    //criarDiretorios;
                if not directoryExists(Dir+'Mobile\') then
                    CreateDir(Dir+'Mobile\');

                if not directoryExists(Dir+'Mobile\0'+DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\') then
                    CreateDir(Dir+'Mobile\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\');

                  //cria a pasta servidor dentro do numero do vendedor
                if directoryExists(Dir+'Mobile\0'+DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\') then begin
                    CreateDir(Dir+'Mobile\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Servidor\');
                    //CreateDir(Dir+'Mobile\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Mobile\');
                end;

                    DirecDown := Dir+'Mobile\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Servidor\';
                    //cria nos diretorios os arquivos XML
                    //DirecMob := Dir+'Mobile\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Mobile\';
                    CriarArquivosServidor(DMMACS.TSecundario.FieldByName('NUMPALM').AsString);
                    //CriarArquivosMobile(DMMACS.TSecundario.FieldByName('NUMPALM').AsString);

                        Try
                            ExportarCliente;
                            if Resultado = False
                            then begin
                                ShowMessage('Falha na exportação CLIENTE');
                                exit;
                            End;
                            ExportarProduto;
                            if Resultado = False
                            then begin
                                ShowMessage('Falha na exportação PRODUTO');
                                exit;
                            End;
                            //MAURO 11/03/2013 - Se a opção de sincronizar forma de pagamento estiver marcada
                            if cbSincFormPag.Checked = True then
                            ExportarFormaPag;

                            if Resultado = False
                            then begin
                                ShowMessage('Falha na exportação FORMA DE PAGAMENTO');
                                exit;
                            End;
                        Except
                            Result:=False;
                            Exit;
                        End;

              DMMACS.TSecundario.Next;
	            End;

              DMMACS.QConsulta.Close;
              AtualizarStatusCliente;
              AtualizarStatusProduto;
              AtualizarStatusFormaPagamento;
              ShowMessage('TODOS OS XMLS FORAM EXPORTADOS COM SUCESSO!!!');
       Except

       End;

end;

procedure TFGeradorXML.btnGerarClick(Sender: TObject);
Var
    xEmpresa : String;
begin
  inherited;
     try
       DMMACS.TSecundario.Close;
       DMMACS.TSecundario.SQL.Clear;
       DMMACS.TSecundario.SQL.Add(' select * from EMPRESA');
       DMMACS.TSecundario.SQL.Text;
       DMMACS.TSecundario.Open;
       xEmpresa:= DMMACS.TSecundario.FieldByName('MOBILE').AsString;

       If(xEmpresa <> '1') //SE FOR <> 1 É SERVIDOR
       then begin
         ExportaXmlServidor;
       End;
       If(xEmpresa = '1') //SE FOR = 1 É MOBILE
       then begin
         ExportaXmlMobile;
       End;
     Except

     End;
end;

//MAURO 07/11/2012 - Função para exportar os XMLs dos Cliente, Pessoa, PF, PJ, Telefone, Email
Function TFGeradorXML.ExportarCliente : Boolean;
begin

    Try
       ExportarXMLPessoa;

       ExportarXMLPessoaFisica;

       ExportarXMLPessoaJuridica;

       ExportarXMLTelefone;

       ExportarXMLEmail;

       ExportarXMLCliente;
    Except
       Result := False;
       Resultado := False;
    End;
end;

//MAURO 07/11/2012 - Função para exportar os XMLs dos Produtos, Grupo, Subgrupo, Cst, Unidade, Estoque e Subproduto
Function TFGeradorXML.ExportarProduto;
begin

    Try
       ExportarXMLSubGrupoProduto;

       ExportarXMLGrupoProduto;

       ExportarXMLCst;

       ExportarXMLUnidade;

       ExportarXMLProduto;

       ExportarXMLSubProduto;

       ExportarXMLEstoque;
    Except
       Result := False;
       Resultado := False;
    End;

end;

//MAURO 07/11/2012 - Função para exportar os XMLs da Forma de Pagamento
Function TFGeradorXML.ExportarFormaPag;
begin

     //MAURO 16/11/2012 - Função para gerar xml produto
     ExportarXMLFormaPagamento;

end;

Function TFGeradorXML.AtualizarStatusCliente;
Var
    xCodCliente : Integer;
    xAuxCodPessoa : Integer;
begin
      try
            DMMACS.TAtualizar.Close;
            DMMACS.TAtualizar.SQL.Clear;
            DMMACS.TAtualizar.SQL.Add('update cliente set cliente.EXPORT= 0');
            DMMACS.TAtualizar.SQL.Add(' where cliente.EXPORT = ' + #39 + '1' + #39 );
            DMMACS.TAtualizar.ExecSQL;
            DMMACS.Transaction.CommitRetaining;
     Except
            ShowMessage('Falha ao atualizar o status do CLIENTE!');
     End;
end;

Function TFGeradorXML.AtualizarStatusFormaPagamento : Boolean;
begin
     try
            DMMACS.TAtualizar.Close;
            DMMACS.TAtualizar.SQL.Clear;
            DMMACS.TAtualizar.SQL.Add('update formpag set formpag.mobile = 0');
            DMMACS.TAtualizar.SQL.Add(' where formpag.mobile = ' + #39 + '1' + #39 );
            DMMACS.TAtualizar.ExecSQL;
            DMMACS.Transaction.CommitRetaining;
     Except
            ShowMessage('Falha ao atualizar o status do Forma de Pagamento!');
     End;
end;

Function TFGeradorXML.AtualizarStatusProduto : Boolean;
begin
     try
            DMMACS.TAtualizar.Close;
            DMMACS.TAtualizar.SQL.Clear;
            DMMACS.TAtualizar.SQL.Add('update estoque set estoque.atualizar= 0');
            DMMACS.TAtualizar.SQL.Add(' where estoque.atualizar = ' + #39 + '1' + #39 );
            DMMACS.TAtualizar.ExecSQL;
            DMMACS.Transaction.CommitRetaining;
     Except
            ShowMessage('Falha ao atualizar o status do ESTOQUE!');
     End;
end;

Function TFGeradorXML.AtualizarStatusVenda : Boolean;
begin
     try
            DMMACS.TAtualizar.Close;
            DMMACS.TAtualizar.SQL.Clear;
            DMMACS.TAtualizar.SQL.Add('update pedvenda set pedvenda.atu= 0');
            DMMACS.TAtualizar.SQL.Add(' where pedvenda.atu = ' + #39 + '1' + #39 );
            DMMACS.TAtualizar.ExecSQL;
            DMMACS.Transaction.CommitRetaining;
     Except
            ShowMessage('Falha ao atualizar status da VENDA!');
     End;
end;

//Jônatas 07/08/2013 - Atualizar o status de exportação de XML na tabela orçamento
Function TFGeradorXML.AtualizarStatusOrcamento: Boolean;
begin
     try    //Jônatas 12/08/2013 - Alterado para DMSAIDA, por precaução
            DMSAIDA.TAlx.Close;
            DMSAIDA.TAlx.SQL.Clear;
            DMSAIDA.TAlx.SQL.Add('update orcamento set orcamento.exporta = 0');
            DMSAIDA.TAlx.SQL.Add(' where orcamento.exporta = ' + #39 + '1' + #39 );
            DMSAIDA.TAlx.ExecSQL;
            DMSAIDA.IBT.CommitRetaining;
     Except
            ShowMessage('Falha ao atualizar o status do Orcamento!');
     End;
end;


//MAURO 05/11/2012 - Função parar gerar o XML da tabela PESSOA
Function TFGeradorXML.ExportarXMLPessoa : Boolean;
begin

    Result := True;
    try
        try

            SelecionaArquivoTabCli('PESSOA');
            DMMACS.cdsPessoa.Close;
            DMMacs.cdsPessoa.FileName := DirecDown+'\PessoaXML.xml';
            DMMacs.cdsPessoa.Open;
        except
            Result:=False;
            Resultado := False;
        end;
        DMMACS.TConsulta.First;

        while not DMMACS.TConsulta.Eof do
        begin
            DMMacs.cdsPessoa.Insert;
            DMMacs.cdsPessoa.FieldByName('COD_PESSOA').AsInteger:=DMMACS.TConsulta.FieldByName('COD_PESSOA').AsInteger;
            DMMacs.cdsPessoa.FieldByName('NOME').AsString:=DMMACS.TConsulta.FieldByName('NOME').AsString;
            DMMacs.cdsPessoa.FieldByName('ENDERECO').AsString:=DMMACS.TConsulta.FieldByName('ENDERECO').AsString;
            DMMacs.cdsPessoa.FieldByName('BAIRRO').AsString:=DMMACS.TConsulta.FieldByName('BAIRRO').AsString;
            DMMacs.cdsPessoa.FieldByName('COD_CIDADE').AsInteger:=DMMACS.TConsulta.FieldByName('COD_CIDADE').AsInteger;
            DMMacs.cdsPessoa.FieldByName('CEP').AsString:=DMMACS.TConsulta.FieldByName('CEP').AsString;
            DMMacs.cdsPessoa.FieldByName('CPFCNPJ').AsString:=DMMACS.TConsulta.FieldByName('CPFCNPJ').AsString;
            DMMacs.cdsPessoa.FieldByName('DATA_INI').AsDateTime:=DMMACS.TConsulta.FieldByName('DATA_INI').AsDateTime;
            DMMacs.cdsPessoa.FieldByName('DTNASC').AsDateTime:=DMMACS.TConsulta.FieldByName('DTNASC').AsDateTime;
            DMMacs.cdsPessoa.FieldByName('COD_REGIAO').AsInteger:=DMMACS.TConsulta.FieldByName('COD_REGIAO').AsInteger;
            DMMacs.cdsPessoa.FieldByName('COD_NATURAL').AsInteger:=DMMACS.TConsulta.FieldByName('COD_NATURAL').AsInteger;
            DMMacs.cdsPessoa.FieldByName('TELREL').AsString:=DMMACS.TConsulta.FieldByName('TELREL').AsString;
            DMMacs.cdsPessoa.FieldByName('DIAANIVER').AsInteger:=DMMACS.TConsulta.FieldByName('DIAANIVER').AsInteger;
            DMMacs.cdsPessoa.FieldByName('PROXIMIDADE').AsString:=DMMACS.TConsulta.FieldByName('PROXIMIDADE').AsString;
            DMMacs.cdsPessoa.FieldByName('VLRCREDITO').AsCurrency:=DMMACS.TConsulta.FieldByName('VLRCREDITO').AsCurrency;
            DMMacs.cdsPessoa.FieldByName('COD_TRANSPORTADORA').AsInteger:=DMMACS.TConsulta.FieldByName('COD_TRANSPORTADORA').AsInteger;
            DMMacs.cdsPessoa.FieldByName('ENDNUMERO').AsString:=DMMACS.TConsulta.FieldByName('ENDNUMERO').AsString;
            DMMacs.cdsPessoa.FieldByName('TEL01').AsString:=DMMACS.TConsulta.FieldByName('TEL01').AsString;
            DMMacs.cdsPessoa.Post;
            DMMACS.cdsPessoa.RecordCount;
            DMMACS.TConsulta.Next;
        end;
        DMMacs.cdsPessoa.Close;

    Except
          ShowMessage('Falha ao exportar PessoaXML.xml');
          Resultado :=False;
          Result := False;
    end;
end;

//MAURO 05/11/2012 - Função parar gerar o XML da tabela CLIENTE
Function TFGeradorXML.ExportarXMLCliente : Boolean;
begin
    Result := True;
    try
        try
            SelecionaArquivoTabCli('CLIENTE');
            DMMacs.cdsCliente.FileName := DirecDown + '\ClienteXML.xml';
            DMMacs.cdsCliente.Open;
        except
            Result:=False;
            exit;
        end;
        DMMACS.TConsulta.First;
        while not DMMACS.TConsulta.Eof do
        begin
            DMMacs.cdsCliente.Insert;
            DMMacs.cdsCliente.FieldByName('COD_PESSOA').AsInteger:=DMMACS.TConsulta.FieldByName('COD_PESSOA').AsInteger;
            DMMacs.cdsCliente.FieldByName('COD_CLIENTE').AsInteger:=DMMACS.TConsulta.FieldByName('COD_CLIENTE').AsInteger;
            DMMacs.cdsCliente.FieldByName('COD_INTERNO').AsString:=DMMACS.TConsulta.FieldByName('COD_INTERNO').AsString;
            DMMacs.cdsCliente.FieldByName('DATA_CAD').AsDateTime:=DMMACS.TConsulta.FieldByName('DATA_CAD').AsDateTime;
            DMMacs.cdsCliente.FieldByName('LIM_CRED').AsFloat:=DMMACS.TConsulta.FieldByName('LIM_CRED').AsFloat;
            DMMacs.cdsCliente.FieldByName('COD_VENDEDOR').AsInteger:=DMMACS.TConsulta.FieldByName('COD_VENDEDOR').AsInteger;
            DMMacs.cdsCliente.FieldByName('ATIVO').AsString:=DMMACS.TConsulta.FieldByName('ATIVO').AsString;
            DMMacs.cdsCliente.FieldByName('OBS').AsString:=DMMACS.TConsulta.FieldByName('OBS').AsString;
            DMMacs.cdsCliente.FieldByName('SCPC').AsString:=DMMACS.TConsulta.FieldByName('SCPC').AsString;
            DMMacs.cdsCliente.FieldByName('DIAVENCIMENTO').AsInteger:=DMMACS.TConsulta.FieldByName('DIAVENCIMENTO').AsInteger;
            DMMacs.cdsCliente.FieldByName('OBSFINANCEIRA').AsString:=DMMACS.TConsulta.FieldByName('OBSFINANCEIRA').AsString;
            DMMacs.cdsCliente.FieldByName('VENDAVISTA').AsString:=DMMACS.TConsulta.FieldByName('VENDAVISTA').AsString;
            DMMacs.cdsCliente.FieldByName('DIASFREQVENDA').AsString:=DMMACS.TConsulta.FieldByName('DIASFREQVENDA').AsString;
            DMMacs.cdsCliente.FieldByName('FREQVENDA').AsString:=DMMACS.TConsulta.FieldByName('FREQVENDA').AsString;
            DMMacs.cdsCliente.FieldByName('ENDENTRAGA').AsString:=DMMACS.TConsulta.FieldByName('ENDENTRAGA').AsString;
            DMMacs.cdsCliente.FieldByName('COD_FORMPAG').AsInteger:=DMMACS.TConsulta.FieldByName('COD_FORMPAG').AsInteger;
            DMMacs.cdsCliente.FieldByName('COD_VENDEDOR').AsInteger:=DMMACS.TConsulta.FieldByName('COD_VENDEDOR').AsInteger;
            DMMacs.cdsCliente.FieldByName('CPFCNPJ').AsString:=DMMACS.TConsulta.FieldByName('CPFCNPJ').AsString;
            DMMacs.cdsCliente.RecordCount;
            DMMacs.cdsCliente.Post;
            DMMACS.TConsulta.Next;
        end;
        DMMacs.cdsCliente.Close;
    Except
          ShowMessage('Falha ao exportar ClienteXML.xml ');
          Result := False;
          Resultado :=False;
    end;
end;


//MAURO 05/11/2012 - Função parar gerar o XML da tabela TELEFONE
Function TFGeradorXML.ExportarXMLTelefone : Boolean;
begin
    Result := True;
    try
        try
           SelecionaArquivoTabCli('TELEFONE');
           DMMacs.cdsTelefone.FileName := DirecDown + '\TelefoneXML.xml';
           DMMacs.cdsTelefone.Open;
        except
            Result:=False;
            exit;
        end;
        DMMACS.TConsulta.First;
        while not DMMACS.TConsulta.Eof do
        begin
            DMMacs.cdsTelefone.Insert;
            DMMacs.cdsTelefone.FieldByName('COD_TELEFONE').AsInteger:=DMMACS.TConsulta.FieldByName('COD_TELEFONE').AsInteger;
            DMMacs.cdsTelefone.FieldByName('COD_PESSOA').AsString:=DMMACS.TConsulta.FieldByName('COD_PESSOA').AsString;
            DMMacs.cdsTelefone.FieldByName('DESCRICAO').AsString:=DMMACS.TConsulta.FieldByName('DESCRICAO').AsString;
            DMMacs.cdsTelefone.FieldByName('CONTATO').AsString:=DMMACS.TConsulta.FieldByName('CONTATO').AsString;
            DMMacs.cdsTelefone.FieldByName('NUMERO').AsString:=DMMACS.TConsulta.FieldByName('NUMERO').AsString;
            DMMacs.cdsTelefone.FieldByName('CPFCNPJ').AsString:=DMMACS.TConsulta.FieldByName('CPFCNPJ').AsString;
            DMMacs.cdsTelefone.RecordCount;
            DMMacs.cdsTelefone.Post;
            DMMACS.TConsulta.Next;
       end;
       DMMacs.cdsTelefone.Close;
    Except
          ShowMessage('Falha ao exportar TelefoneXML.xml ');
          Result := False;
          Resultado :=False;
    end;
end;

//MAURO 05/11/2012 - Função parar gerar o XML da tabela EMAIL
Function TFGeradorXML.ExportarXMLEmail : Boolean;
begin
    Result := True;
    try
        try
            SelecionaArquivoTabCli('EMAIL');
            DMMacs.cdsEmail.FileName := DirecDown + '\EmailXML.xml';
            DMMacs.cdsEmail.Open;
        except
            Result:=False;
            exit;
        end;
        DMMACS.TConsulta.First;
        while not DMMACS.TConsulta.Eof do
        begin
            DMMacs.cdsEmail.Insert;
            DMMacs.cdsEmail.FieldByName('COD_EMAIL').AsInteger:=DMMACS.TConsulta.FieldByName('COD_EMAIL').AsInteger;
            DMMacs.cdsEmail.FieldByName('COD_PESSOA').AsString:=DMMACS.TConsulta.FieldByName('COD_PESSOA').AsString;
            DMMacs.cdsEmail.FieldByName('DESCRICAO').AsString:=DMMACS.TConsulta.FieldByName('DESCRICAO').AsString;
            DMMacs.cdsEmail.FieldByName('EMAIL').AsString:=DMMACS.TConsulta.FieldByName('EMAIL').AsString;
            DMMacs.cdsEmail.FieldByName('CPFCNPJ').AsString:=DMMACS.TConsulta.FieldByName('CPFCNPJ').AsString;
            DMMacs.cdsEmail.RecordCount;
            DMMacs.cdsEmail.Post;
            DMMACS.TConsulta.Next;
        end;
      DMMacs.cdsEmail.Close;
    Except
          ShowMessage('Falha ao exportar EmailXML.xml ');
          Result := False;
          Resultado :=False;
    end;
end;

//MAURO 05/11/2012 - Função parar gerar o XML da tabela PESSOA FISICA
Function TFGeradorXML.ExportarXMLPessoaFisica : Boolean;
begin

    Result := True;
    try
          try
              SelecionaArquivoTabCli('PESSOAF');
              DMMacs.cdsPessoaF.FileName := DirecDown + '\PessoaFisicaXML.xml';
              DMMacs.cdsPessoaF.Open;
          except
              Result:=False;
              exit;
          end;
          DMMACS.TConsulta.First;
          while not DMMACS.TConsulta.Eof do
          begin
              DMMacs.cdsPessoaF.Insert;
              DMMacs.cdsPessoaF.FieldByName('COD_PESSOAF').AsInteger:=DMMACS.TConsulta.FieldByName('COD_PESSOAF').AsInteger;
              DMMacs.cdsPessoaF.FieldByName('COD_PESSOA').AsInteger:=DMMACS.TConsulta.FieldByName('COD_PESSOA').AsInteger;
              DMMacs.cdsPessoaF.FieldByName('RG').AsString:=DMMACS.TConsulta.FieldByName('RG').AsString;
              DMMacs.cdsPessoaF.FieldByName('DATA_EXPED').AsDateTime:=DMMACS.TConsulta.FieldByName('DATA_EXPED').AsDateTime;
              DMMacs.cdsPessoaF.FieldByName('ORGAO_EXPED').AsString:=DMMACS.TConsulta.FieldByName('ORGAO_EXPED').AsString;
              DMMacs.cdsPessoaF.FieldByName('INSC_EST_AGRI').AsString:=DMMACS.TConsulta.FieldByName('INSC_EST_AGRI').AsString;
              DMMacs.cdsPessoaF.FieldByName('CPFCNPJ').AsString:=DMMACS.TConsulta.FieldByName('CPFCNPJ').AsString;
              DMMacs.cdsPessoaF.RecordCount;
              DMMacs.cdsPessoaF.Post;
              DMMACS.TConsulta.Next;
          end;
          DMMacs.cdsPessoaF.Close;
      
    Except
          Result:=False;
          ShowMessage('Falha ao exportar PessoaFisicaXML.xml ');
          Result := False;
          Resultado :=False;
    end;
end;


//MAURO 05/11/2012 - Função parar gerar o XML da tabela PESSOA JURIDICA
Function TFGeradorXML.ExportarXMLPessoaJuridica : Boolean;
begin

    Result := True;
    try
        try
          SelecionaArquivoTabCli('PESSOAJ');
          DMMacs.cdsPessoaJ.FileName := DirecDown + '\PessoaJuridicaXML.xml';
          DMMacs.cdsPessoaJ.Open;
        except
            Result:=False;
            exit;
        end;
        DMMACS.TConsulta.First;
        while not DMMACS.TConsulta.Eof do
        begin
            DMMacs.cdsPessoaJ.Insert;
            DMMacs.cdsPessoaJ.FieldByName('COD_PESSOAJ').AsInteger:=DMMACS.TConsulta.FieldByName('COD_PESSOAJ').AsInteger;
            DMMacs.cdsPessoaJ.FieldByName('COD_PESSOA').AsInteger:=DMMACS.TConsulta.FieldByName('COD_PESSOA').AsInteger;
            DMMacs.cdsPessoaJ.FieldByName('INSC_EST').AsString:=DMMACS.TConsulta.FieldByName('INSC_EST').AsString;
            DMMacs.cdsPessoaJ.FieldByName('RAZAO_SOCIAL').AsString:=DMMACS.TConsulta.FieldByName('RAZAO_SOCIAL').AsString;
            DMMacs.cdsPessoaJ.FieldByName('INSC_MUN').AsString:=DMMACS.TConsulta.FieldByName('INSC_MUN').AsString;
            DMMacs.cdsPessoaJ.FieldByName('CPFCNPJ').AsString:=DMMACS.TConsulta.FieldByName('CPFCNPJ').AsString;
            DMMacs.cdsPessoaJ.RecordCount;
            DMMacs.cdsPessoaJ.Post;
            DMMACS.TConsulta.Next;
        end;
        DMMacs.cdsPessoaJ.Close;
        
    Except
          ShowMessage('Falha ao exportar PessoaJuridicaXML.xml ');
          Result := False;
          Resultado :=False;
    end;
end;


//MAURO 27/01/2011: Seleciona dados das tabelas
Procedure TFGeradorXML.SelecionaArquivoTabCli(XTable: String);
Begin

	    DMMACS.TConsulta.Close;
      DMMACS.TConsulta.SQL.Clear;
      DMMACS.TConsulta.SQL.Add('Select * from '+XTable);
          if(XTable = 'PESSOA')Then
   	      DMMACS.TConsulta.SQL.Add(' left join cliente on pessoa.cod_pessoa = cliente.cod_pessoa ');
          if(XTable = 'TELEFONE')
          Then begin
              DMMACS.TConsulta.SQL.Add('left join pessoa on telefone.cod_pessoa = pessoa.cod_pessoa');
   	          DMMACS.TConsulta.SQL.Add('left join cliente on pessoa.cod_pessoa = cliente.cod_pessoa');
          End;
          if(XTable = 'EMAIL')
          Then begin
              DMMACS.TConsulta.SQL.Add(' left join pessoa on email.cod_pessoa = pessoa.cod_pessoa ');
   	          DMMACS.TConsulta.SQL.Add(' left join cliente on pessoa.cod_pessoa = cliente.cod_pessoa ');
          End;
          if(XTable = 'PESSOAF')
          Then begin
              DMMACS.TConsulta.SQL.Add(' left join pessoa on pessoaf.cod_pessoa = pessoa.cod_pessoa ');
   	          DMMACS.TConsulta.SQL.Add(' left join cliente on pessoa.cod_pessoa = cliente.cod_pessoa ');
          End;
          if(XTable = 'PESSOAJ')
          Then begin
              DMMACS.TConsulta.SQL.Add(' left join pessoa on pessoaj.cod_pessoa = pessoa.cod_pessoa ');
   	          DMMACS.TConsulta.SQL.Add(' left join cliente on pessoa.cod_pessoa = cliente.cod_pessoa ');
          End;
           if(XTable = 'CLIENTE')
          Then begin
              DMMACS.TConsulta.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ');
          End;
          DMMACS.TConsulta.SQL.Add(' where cliente.export = ''1'' ');
          DMMACS.TConsulta.Open;
End;

Procedure TFGeradorXML.SelecionaArquivoTabFormPag(XTable: String);
Begin

	    DMMACS.TConsulta.Close;
      DMMACS.TConsulta.SQL.Clear;
      DMMACS.TConsulta.SQL.Add('Select * from '+XTable);
      DMMACS.TConsulta.SQL.Add(' where formpag.mobile = 1');
      DMMACS.TConsulta.SQL.Text;
      DMMACS.TConsulta.Open;
End;

//Jônatas 06/08/2013 - Busca dos itens na tabela orçamento e itprodorc
Procedure TFGeradorXML.SelecionaArquivoTabOrcamento(XTable: String);
Begin
     DMMACS.TConsulta.Close;
     DMMACS.TConsulta.SQL.Clear;
     DMMACS.TConsulta.SQL.Add('Select * from '+XTable);

     if(XTable = 'ITPRODORC') then
           DMMACS.TConsulta.SQL.Add(' left join orcamento on ITPRODORC.cod_orcamento = orcamento.cod_orcamento');

     DMMACS.TConsulta.SQL.Add(' where orcamento.exporta = ' + #39 + '1' + #39 );
     DMMACS.TConsulta.SQL.Text;
     DMMACS.TConsulta.Open;
End;

Procedure TFGeradorXML.SelecionaArquivoTabVenda(XTable: String);
Begin

      DMMACS.TConsulta.Close;
      DMMACS.TConsulta.SQL.Clear;
      DMMACS.TConsulta.SQL.Add('Select * from '+XTable);

      if(XTable = 'ITENSPEDVEN') then
            DMMACS.TConsulta.SQL.Add(' left join pedvenda on itenspedven.cod_pedven = pedvenda.cod_pedvenda');

      DMMACS.TConsulta.SQL.Add(' where pedvenda.atu = ' + #39 + '1' + #39 );
      DMMACS.TConsulta.SQL.Text;
      DMMACS.TConsulta.Open;
End;

Procedure TFGeradorXML.SelecionaArquivoTabProd(XTable: String);
Begin
      DMMACS.TConsulta.Close;
      DMMACS.TConsulta.SQL.Clear;
      DMMACS.TConsulta.SQL.Add('Select * from '+XTable);
          if(XTable = 'CST')
          Then begin
            DMMACS.TConsulta.SQL.Add(' left join subproduto on cst.cod_cst = subproduto.cod_cst');
            DMMACS.TConsulta.SQL.Add(' left join estoque on subproduto.cod_subproduto = estoque.cod_subprod');
          end;
          if(XTable = 'GRUPOPROD')
          Then begin
            DMMACS.TConsulta.SQL.Add(' left join produto on grupoprod.cod_grupoprod = produto.cod_grupoprod');
            DMMACS.TConsulta.SQL.Add(' left join subproduto on produto.cod_produto = subproduto.cod_produto');
            DMMACS.TConsulta.SQL.Add(' left join estoque on subproduto.cod_subproduto = estoque.cod_subprod');
          end;
          if(XTable = 'SUBGRUPOPROD')
          Then begin
            DMMACS.TConsulta.SQL.Add(' left join produto on subgrupoprod.cod_subgrupoprod = produto.cod_subgrupoprod');
            DMMACS.TConsulta.SQL.Add(' left join subproduto on produto.cod_produto = subproduto.cod_produto');
            DMMACS.TConsulta.SQL.Add(' left join estoque on subproduto.cod_subproduto = estoque.cod_subprod');
          end;
          if(XTable = 'UNIDADE')
          Then begin
            DMMACS.TConsulta.SQL.Add(' left join subproduto on unidade.cod_unidade = subproduto.cod_unidvenda');
            DMMACS.TConsulta.SQL.Add(' left join estoque on subproduto.cod_subproduto = estoque.cod_subprod');
          end;
          if(XTable = 'NCM')
          Then begin
            DMMACS.TConsulta.SQL.Add(' left join subproduto on ncm.ncm = subproduto.ncm');
            DMMACS.TConsulta.SQL.Add(' left join estoque on subproduto.cod_subproduto = estoque.cod_subprod');
          end;
          if(XTable = 'PRODUTO')
          Then begin
            DMMACS.TConsulta.SQL.Add(' left join subproduto on produto.cod_produto = subproduto.cod_produto');
            DMMACS.TConsulta.SQL.Add(' left join estoque on subproduto.cod_subproduto = estoque.cod_subprod');
          end;
          if(XTable = 'SUBPRODUTO') then
            DMMACS.TConsulta.SQL.Add(' left join estoque on subproduto.cod_subproduto = estoque.cod_subprod');
            
          if(XTable = 'ESTOQUE') then
            DMMACS.TConsulta.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto ');

   	      DMMACS.TConsulta.SQL.Add(' where estoque.atualizar = ' + #39 + '1' + #39 );
          DMMACS.TConsulta.SQL.Text;
          DMMACS.TConsulta.Open;

End;

//MAURO 05/11/2012 - Função parar gerar o XML da tabela UNIDADE
procedure TFGeradorXML.ExportarXMLUnidade;
begin
    try
      SelecionaArquivoTabProd('UNIDADE');
      DMMacs.cdsUnidade.FileName := DirecDown + '\UnidadeXML.xml';
      DMMacs.cdsUnidade.Open;
      DMMACS.TConsulta.First;
      while not DMMACS.TConsulta.Eof do
      begin
            DMMacs.cdsUnidade.Insert;
            DMMacs.cdsUnidade.FieldByName('COD_UNIDADE').AsInteger:=DMMACS.TConsulta.FieldByName('COD_UNIDADE').AsInteger;
            DMMacs.cdsUnidade.FieldByName('DESC_UNID').AsString:=DMMACS.TConsulta.FieldByName('DESC_UNID').AsString;
            DMMacs.cdsUnidade.FieldByName('SIGLA_UNID').AsString:=DMMACS.TConsulta.FieldByName('SIGLA_UNID').AsString;
            DMMacs.cdsUnidade.FieldByName('ARREDONDAR').AsString:=DMMACS.TConsulta.FieldByName('ARREDONDAR').AsString;
            DMMacs.cdsUnidade.RecordCount;
            DMMacs.cdsUnidade.Post;
            DMMACS.TConsulta.Next;
      end;
      DMMacs.cdsUnidade.Close;
    Except
          ShowMessage('Falha ao exportar UnidadeXML.xml');
          Resultado :=False;
          Result := False;
    end;
end;

//MAURO 05/11/2012 - Função parar gerar o XML da tabela CST
procedure TFGeradorXML.ExportarXMLCst;
begin
    try
      SelecionaArquivoTabProd('CST');
      DMMacs.cdsCst.FileName := DirecDown + '\CstXML.xml';
      DMMacs.cdsCst.Open;
      DMMACS.TConsulta.First;
      while not DMMACS.TConsulta.Eof do
      begin
            DMMacs.cdsCst.Insert;
            DMMacs.cdsCst.FieldByName('COD_CST').AsInteger:=DMMACS.TConsulta.FieldByName('COD_CST').AsInteger;
            DMMacs.cdsCst.FieldByName('COD_SIT_TRIB').AsString:=DMMACS.TConsulta.FieldByName('COD_SIT_TRIB').AsString;
            DMMacs.cdsCst.FieldByName('DESCRICAO').AsString:=DMMACS.TConsulta.FieldByName('DESCRICAO').AsString;
            DMMacs.cdsCst.FieldByName('ICMSOP').AsString:=DMMACS.TConsulta.FieldByName('ICMSOP').AsString;
            DMMacs.cdsCst.FieldByName('INDICEECF').AsString:=DMMACS.TConsulta.FieldByName('INDICEECF').AsString;
            DMMacs.cdsCst.FieldByName('ISENTA').AsString:=DMMACS.TConsulta.FieldByName('ISENTA').AsString;
            DMMacs.cdsCst.FieldByName('REDUCAO').AsString:=DMMACS.TConsulta.FieldByName('REDUCAO').AsString;
            DMMacs.cdsCst.FieldByName('SUBSTITUICAO').AsString:=DMMACS.TConsulta.FieldByName('SUBSTITUICAO').AsString;
            DMMacs.cdsCst.FieldByName('VENDA').AsString:=DMMACS.TConsulta.FieldByName('VENDA').AsString;
            DMMacs.cdsCst.RecordCount;
            DMMacs.cdsCst.Post;
            DMMACS.TConsulta.Next;
      end;
      DMMacs.cdsCst.Close;
    Except
          ShowMessage('Falha ao exportar CstXML.xml');
          Resultado :=False;
          Result := False;
    end;
end;

//MAURO 05/11/2012 - Função parar gerar o XML da tabela GRUPOPRODUTO
procedure TFGeradorXML.ExportarXMLGrupoProduto;
begin
    try
      SelecionaArquivoTabProd('GRUPOPROD');
      DMMacs.cdsGrupo.FileName := DirecDown + '\GrupoProdutoXML.xml';
      DMMacs.cdsGrupo.Open;
      DMMACS.TConsulta.First;
      while not DMMACS.TConsulta.Eof do
      begin
            DMMacs.cdsGrupo.Insert;
            DMMacs.cdsGrupo.FieldByName('COD_GRUPOPROD').AsInteger:=DMMACS.TConsulta.FieldByName('COD_GRUPOPROD').AsInteger;
            DMMacs.cdsGrupo.FieldByName('DESCRICAO').AsString:=DMMACS.TConsulta.FieldByName('DESCRICAO').AsString;
            DMMacs.cdsGrupo.FieldByName('COD_INTERNO').AsString:=DMMACS.TConsulta.FieldByName('COD_INTERNO').AsString;
            DMMacs.cdsGrupo.FieldByName('TIPO').AsString:=DMMACS.TConsulta.FieldByName('TIPO').AsString;
            DMMacs.cdsGrupo.RecordCount;
            DMMacs.cdsGrupo.Post;
            DMMACS.TConsulta.Next;
      end;
      DMMacs.cdsGrupo.Close;
    Except
          ShowMessage('Falha ao exportar GrupoProdutoXML.xml');
          Resultado :=False;
          Result := False;
    end;
end;

//MAURO 05/11/2012 - Função parar gerar o XML da tabela SUBGRUPOPRODUTO
procedure TFGeradorXML.ExportarXMLSubGrupoProduto;
begin
    try
      SelecionaArquivoTabProd('SUBGRUPOPROD');
      DMMacs.cdsSubGrupo.FileName := DirecDown + '\SubGrupoProdutoXML.xml';
      DMMacs.cdsSubGrupo.Open;
      DMMACS.TConsulta.First;
      while not DMMACS.TConsulta.Eof do
      begin
            DMMacs.cdsSubGrupo.Insert;
            DMMacs.cdsSubGrupo.FieldByName('COD_SUBGRUPOPROD').AsInteger:=DMMACS.TConsulta.FieldByName('COD_SUBGRUPOPROD').AsInteger;
            DMMacs.cdsSubGrupo.FieldByName('COD_INTERNO').AsString:=DMMACS.TConsulta.FieldByName('COD_INTERNO').AsString;
            DMMacs.cdsSubGrupo.FieldByName('DESCRICAO').AsString:=DMMACS.TConsulta.FieldByName('DESCRICAO').AsString;
            DMMacs.cdsSubGrupo.FieldByName('TIPO').AsString:=DMMACS.TConsulta.FieldByName('TIPO').AsString;
            DMMACS.cdsSubGrupo.RecordCount;
            DMMacs.cdsSubGrupo.Post;
            DMMACS.TConsulta.Next;
      end;
      DMMacs.cdsSubGrupo.Close;
    Except
          ShowMessage('Falha ao exportar SubGrupoProdutoXML.xml');
          Resultado :=False;
          Result := False;
    end;
end;

//MAURO 05/11/2012 - Função parar gerar o XML da tabela ESTOQUE
procedure TFGeradorXML.ExportarXMLEstoque;
begin
    try
      SelecionaArquivoTabProd('ESTOQUE');
      DMMacs.cdsEstoque.FileName := DirecDown + '\EstoqueXML.xml';
      DMMacs.cdsEstoque.Open;
      DMMACS.TConsulta.First;
      while not DMMACS.TConsulta.Eof do
      begin
            DMMacs.cdsEstoque.Insert;
            DMMacs.cdsEstoque.FieldByName('COD_ESTOQUE').AsInteger:=DMMACS.TConsulta.FieldByName('COD_ESTOQUE').AsInteger;
            DMMacs.cdsEstoque.FieldByName('COD_LOJA').AsInteger:=DMMACS.TConsulta.FieldByName('COD_LOJA').AsInteger;
            DMMacs.cdsEstoque.FieldByName('COD_SUBPROD').AsInteger:=DMMACS.TConsulta.FieldByName('COD_SUBPROD').AsInteger;
            DMMacs.cdsEstoque.FieldByName('ESTFISICO').AsFloat:=DMMACS.TConsulta.FieldByName('ESTFISICO').AsFloat;
            DMMacs.cdsEstoque.FieldByName('CVVPROAT').AsFloat:=DMMacs.TConsulta.FieldByName('CVVPROAT').AsFloat;
            DMMacs.cdsEstoque.FieldByName('CVPPROAT').AsFloat:=DMMacs.TConsulta.FieldByName('CVPPROAT').AsFloat;
            DMMacs.cdsEstoque.FieldByName('CVVPROVAR').AsFloat:=DMMacs.TConsulta.FieldByName('CVVPROVAR').AsFloat;
            DMMacs.cdsEstoque.FieldByName('CVPPROVAR').AsFloat:=DMMacs.TConsulta.FieldByName('CVPPROVAR').AsFloat;
            DMMacs.cdsEstoque.FieldByName('VENDATAP').AsCurrency:=DMMacs.TConsulta.FieldByName('VENDATAP').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('VENDATAV').AsCurrency:=DMMacs.TConsulta.FieldByName('VENDATAV').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('VENDVARP').AsCurrency:=DMMacs.TConsulta.FieldByName('VENDVARP').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('VENDVARV').AsCurrency:=DMMacs.TConsulta.FieldByName('VENDVARV').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('VALUNIT').AsCurrency:=0;//DMMacs.TConsulta.FieldByName('VALUNIT').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('VLRUNITCOMP').AsCurrency:= 0;//DMMacs.TConsulta.FieldByName('VLRUNITCOMP').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('VLRCOMPSD').AsCurrency:=0;//DMMacs.TConsulta.FieldByName('VLRCOMPSD').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('AVVPROAT').AsCurrency:=DMMacs.TConsulta.FieldByName('AVVPROAT').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('AVPPROAT').AsCurrency:=DMMacs.TConsulta.FieldByName('AVPPROAT').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('AVVPROVAR').AsCurrency:=DMMacs.TConsulta.FieldByName('AVVPROVAR').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('AVPPROVAR').AsCurrency:=DMMacs.TConsulta.FieldByName('AVPPROVAR').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('DTCAD').AsDateTime:=DMMacs.TConsulta.FieldByName('DTCAD').AsDateTime;
            DMMacs.cdsEstoque.FieldByName('DESCONTO').AsCurrency:=DMMacs.TConsulta.FieldByName('DESCONTO').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('MARGEMSEG').AsCurrency:=DMMacs.TConsulta.FieldByName('MARGEMSEG').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('PERCMARGSEG').AsCurrency:=DMMacs.TConsulta.FieldByName('PERCMARGSEG').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('PRECOOFERTA').AsCurrency:=DMMacs.TConsulta.FieldByName('PRECOOFERTA').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('DATAOFERTA').AsDateTime:=DMMacs.TConsulta.FieldByName('DATAOFERTA').AsDateTime;
            DMMacs.cdsEstoque.FieldByName('VENCIMENTOOFERTA').AsDateTime:=DMMacs.TConsulta.FieldByName('VENCIMENTOOFERTA').AsDateTime;
            DMMacs.cdsEstoque.FieldByName('ESTLOJA').AsCurrency:=DMMacs.TConsulta.FieldByName('ESTLOJA').AsCurrency;
            DMMacs.cdsEstoque.FieldByName('CONTRINT').AsString:=DMMacs.TConsulta.FieldByName('CONTRINT').AsString;
            DMMacs.cdsEstoque.RecordCount;
            DMMacs.cdsEstoque.Post;
            DMMACS.TConsulta.Next;
      end;
      DMMACS.cdsEstoque.Close;
    Except
          ShowMessage('Falha ao exportar EstoqueXML.xml');
          Resultado :=False;
          Result := False;
    end;
end;

//MAURO 05/11/2012 - Função parar gerar o XML da tabela SUBPRODUTO
procedure TFGeradorXML.ExportarXMLSubProduto;
begin
    try
      SelecionaArquivoTabProd('SUBPRODUTO');
      DMMacs.cdsSubProduto.FileName := DirecDown + '\SubProdutoXML.xml';
      DMMacs.cdsSubProduto.Open;
      DMMACS.TConsulta.First;
      while not DMMACS.TConsulta.Eof do
      begin
            PreparaSubProduto;
            DMMacs.cdsSubProduto.Insert;
            DMMacs.cdsSubProduto.FieldByName('COD_SUBPRODUTO').AsInteger:=DMMACS.TConsulta.FieldByName('COD_SUBPRODUTO').AsInteger;
            DMMacs.cdsSubProduto.FieldByName('DESCRICAO2').AsString:=DMMACS.TConsulta.FieldByName('DESCRICAO').AsString;
            DMMacs.cdsSubProduto.FieldByName('DESCRICAO').AsString:=DMMACS.QConsulta1.FieldByName('DESCRICAO').AsString;
            DMMacs.cdsSubProduto.FieldByName('CODBARRA').AsString:=DMMACS.TConsulta.FieldByName('CODBARRA').AsString;
            DMMacs.cdsSubProduto.FieldByName('CODPRODFABR').AsString:=DMMACS.TConsulta.FieldByName('CODPRODFABR').AsString;
            DMMacs.cdsSubProduto.FieldByName('FABRICANTE').AsString:=DMMACS.TConsulta.FieldByName('FABRICANTE').AsString;
            DMMacs.cdsSubProduto.FieldByName('MARCA').AsString:=DMMACS.TConsulta.FieldByName('MARCA').AsString;
            DMMacs.cdsSubProduto.FieldByName('COD_PRODUTO').AsInteger:=DMMACS.TConsulta.FieldByName('COD_PRODUTO').AsInteger;
            DMMacs.cdsSubProduto.FieldByName('COD_UNIDCOMPRA').AsInteger:=DMMACS.TConsulta.FieldByName('COD_UNIDCOMPRA').AsInteger;
            DMMacs.cdsSubProduto.FieldByName('COD_UNIDVENDA').AsInteger:=DMMACS.TConsulta.FieldByName('COD_UNIDVENDA').AsInteger;
            DMMacs.cdsSubProduto.FieldByName('COD_CST').AsInteger:=DMMACS.TConsulta.FieldByName('COD_CST').AsInteger;
            DMMacs.cdsSubProduto.FieldByName('COD_INTERNO').AsString:=DMMACS.TConsulta.FieldByName('COD_INTERNO').AsString;
            DMMacs.cdsSubProduto.FieldByName('CONTRINT').AsString:=DMMACS.TConsulta.FieldByName('CONTRINT').AsString;
            DMMacs.cdsSubproduto.FieldByName('COD_INTERNO_ST').AsString:=DMMacs.TConsulta.FieldByName('COD_INTERNO').AsString;
            DMMacs.cdsSubproduto.FieldByName('COD_SIT_TRIB').AsString:=DMMacs.QConsulta1.FieldByName('COD_SIT_TRIB').AsString;
            DMMacs.cdsSubproduto.FieldByName('INDICEECF').AsString:=DMMacs.QConsulta1.FieldByName('INDICEECF').AsString;
            DMMacs.cdsSubproduto.FieldByName('NCM').AsString:=DMMacs.TConsulta.FieldByName('NCM').AsString;


            DMMacs.cdsSubProduto.RecordCount;
            DMMacs.cdsSubProduto.Post;
            DMMACS.TConsulta.Next;
      end;
      DMMacs.cdsSubProduto.Close;
    Except
          ShowMessage('Falha ao exportar SubProdutoXML.xml');
          xExportado := false;
          Resultado :=False;
          Result := False;
    end;
end;

//MAURO 05/11/2012 - Função parar gerar o XML da tabela PRODUTO
procedure TFGeradorXML.ExportarXMLProduto;
begin
    try
        SelecionaArquivoTabProd('PRODUTO');
        DMMacs.cdsProduto.FileName := DirecDown + '\ProdutoXML.xml';
        DMMacs.cdsProduto.Open;
        //DMMACS.cdsProduto.EmptyDataSet;
        DMMACS.TConsulta.First;
        while not DMMACS.TConsulta.Eof do
        begin
             PreparaProduto;
             DMMacs.cdsProduto.Insert;
             DMMacs.cdsProduto.FieldByName('COD_PRODUTO').AsInteger:=DMMACS.TConsulta.FieldByName('COD_PRODUTO').AsInteger;
             DMMacs.cdsProduto.FieldByName('COD_SUBGRUPOPROD').AsInteger:=DMMACS.TConsulta.FieldByName('COD_SUBGRUPOPROD').AsInteger;
             DMMacs.cdsProduto.FieldByName('COD_GRUPOPROD').AsInteger:=DMMACS.TConsulta.FieldByName('COD_GRUPOPROD').AsInteger;
             DMMacs.cdsProduto.FieldByName('COD_INTERNO').AsString:=DMMACS.TConsulta.FieldByName('COD_INTERNO').AsString;
             DMMacs.cdsProduto.FieldByName('COD_LOJA').AsInteger:=DMMACS.TConsulta.FieldByName('COD_LOJA').AsInteger;
             DMMacs.cdsProduto.FieldByName('COD_CST').AsInteger:=DMMACS.TConsulta.FieldByName('COD_CST').AsInteger;
             DMMacs.cdsProduto.FieldByName('DESCRICAO').AsString:=DMMACS.TConsulta.FieldByName('DESCRICAO').AsString;
             DMMacs.cdsProduto.FieldByName('APLICACAO').AsString:=DMMACS.TConsulta.FieldByName('APLICACAO').AsString;
             DMMACS.cdsProduto.FieldByName('GRUPOPROD').AsString:=DMMacs.QConsulta1.FieldByName('GRUPOPROD').AsString;
             DMMacs.cdsProduto.FieldByName('SUBGRUPOPROD').AsString:=DMMacs.QConsulta1.FieldByName('SUBGRUPOPROD').AsString;
             DMMacs.cdsProduto.RecordCount;
             DMMacs.cdsProduto.Post;
             DMMACS.TConsulta.Next;
        end;
        DMMacs.cdsProduto.Close;
    Except
          Resultado:=False;
          ShowMessage('Falha ao exportar ProdutoXML.xml');
          Result:=False;
    end;
end;

//MAURO 05/11/2012 - Função parar gerar o XML da tabela PEDVENDA
Function TFGeradorXML.ExportarPedVenda :Boolean;
begin
    try
        SelecionaArquivoTabVenda('PEDVENDA');
        DMMacs.cdsPedVenda.FileName := DirecDown + '\PedVendaXML.xml';
        DMMacs.cdsPedVenda.Open;
        DMMACS.TConsulta.First;


        while not DMMACS.TConsulta.Eof do
        begin
             if DMMacs.TConsulta.FieldByName('EXPORTA').AsInteger <> 1
             then begin
                DMMacs.cdsPedVenda.Insert;
                DMMacs.cdsPedVenda.FieldByName('COD_PEDVENDA').AsInteger:=DMMACS.TConsulta.FieldByName('COD_PEDVENDA').AsInteger;
                DMMacs.cdsPedVenda.FieldByName('COD_CLIENTE').AsInteger:=DMMACS.TConsulta.FieldByName('COD_CLIENTE').AsInteger;
                DMMacs.cdsPedVenda.FieldByName('DTPEDVEN').AsDateTime:=DMMACS.TConsulta.FieldByName('DTPEDVEN').AsDateTime;
                DMMacs.cdsPedVenda.FieldByName('DESCONTO').AsFloat:=DMMACS.TConsulta.FieldByName('DESCONTO').AsFloat;
                DMMacs.cdsPedVenda.FieldByName('COD_USUARIO').AsInteger:=DMMACS.TConsulta.FieldByName('COD_USUARIO').AsInteger;
                DMMacs.cdsPedVenda.FieldByName('COD_FORMPAG').AsInteger:=DMMACS.TConsulta.FieldByName('COD_FORMPAG').AsInteger;
                DMMacs.cdsPedVenda.FieldByName('VALOR').AsCurrency:=DMMACS.TConsulta.FieldByName('VALOR').AsCurrency;
                DMMacs.cdsPedVenda.FieldByName('ENTREGA').AsDateTime:=DMMACS.TConsulta.FieldByName('ENTREGA').AsDateTime;
                DMMACS.cdsPedVenda.FieldByName('NOMECLI').AsString:=DMMacs.TConsulta.FieldByName('NOMECLI').AsString;
                DMMacs.cdsPedVenda.FieldByName('OBS').AsString:=DMMacs.TConsulta.FieldByName('OBS').AsString;
                DMMacs.cdsPedVenda.FieldByName('CPFCNPJ').AsString:=DMMacs.TConsulta.FieldByName('CPFCNPJ').AsString;
                DMMacs.cdsPedVenda.FieldByName('COD_VENDEDOR').AsInteger:=DMMacs.TConsulta.FieldByName('COD_VENDEDOR').AsInteger;
                DMMacs.cdsPedVenda.FieldByName('SITUACAO').AsString:=DMMacs.TConsulta.FieldByName('SITUACAO').AsString;
                DMMacs.cdsPedVenda.FieldByName('NUMPED').AsString:=DMMacs.TConsulta.FieldByName('NUMPED').AsString;
                DMMacs.cdsPedVenda.FieldByName('COBRANCA').AsString:=DMMacs.TConsulta.FieldByName('COBRANCA').AsString;
                //DMMacs.cdsPedVenda.FieldByName('EXPORTA').AsInteger:=DMMacs.TConsulta.FieldByName('EXPORTA').AsInteger;
                DMMacs.cdsPedVenda.RecordCount;
                DMMacs.cdsPedVenda.Post;

                PedidoExportado(DMMACS.TConsulta.FieldByName('COD_PEDVENDA').AsInteger);
             End;
             if DMMacs.TConsulta.FieldByName('EXPORTA').AsInteger = 1
             then begin
                DMMACS.TConsulta.Next;
             end;

             DMMACS.TConsulta.Next;
        end;
        DMMacs.cdsPedVenda.Close;
    Except
          ShowMessage('Falha ao exportar PedVendaXML.xml');
          Result:=False;
          Resultado :=False;
    end;
end;

//MAURO 05/11/2012 - Função parar gerar o XML da tabela ITENSPEDVENDA
Function TFGeradorXML.ExportarItensPedVenda : Boolean;
begin
    try
        SelecionaArquivoTabVenda('ITENSPEDVEN');
        DMMacs.cdsItensPedVenda.FileName := DirecDown + '\ItensPedVendaXML.xml';
        DMMacs.cdsItensPedVenda.Open;
        DMMACS.TConsulta.First;
        while not DMMACS.TConsulta.Eof do
        begin
             PreparaItensPedVenda(DMMACS.TConsulta.FieldByName('COD_ESTOQUE').AsInteger);
             DMMacs.cdsItensPedVenda.Insert;
             DMMacs.cdsItensPedVenda.FieldByName('COD_ITENSPEDVEN').AsInteger:=DMMACS.TConsulta.FieldByName('COD_ITENSPEDVEN').AsInteger;
             DMMacs.cdsItensPedVenda.FieldByName('COD_PEDVEN').AsInteger:=DMMACS.TConsulta.FieldByName('COD_PEDVEN').AsInteger;
             DMMacs.cdsItensPedVenda.FieldByName('COD_ESTOQUE').AsInteger:=DMMACS.TConsulta.FieldByName('COD_ESTOQUE').AsInteger;
             DMMacs.cdsItensPedVenda.FieldByName('QTDEPROD').AsCurrency:=DMMACS.TConsulta.FieldByName('QTDEPROD').AsCurrency;
             DMMacs.cdsItensPedVenda.FieldByName('DESCPRO').AsFloat:=DMMACS.TConsulta.FieldByName('DESCPRO').AsFloat;
             DMMacs.cdsItensPedVenda.FieldByName('COD_FUNCIONARIO').AsInteger:=DMMACS.TConsulta.FieldByName('COD_FUNCIONARIO').AsInteger;
             DMMacs.cdsItensPedVenda.FieldByName('VALUNIT').AsCurrency:=DMMACS.TConsulta.FieldByName('VALUNIT').AsCurrency;
             DMMacs.cdsItensPedVenda.FieldByName('VALCUSTO').AsCurrency:=DMMACS.TConsulta.FieldByName('VALCUSTO').AsCurrency;
             DMMACS.cdsItensPedVenda.FieldByName('VALORTOTAL').AsCurrency:=DMMacs.TConsulta.FieldByName('VALORTOTAL').AsCurrency;
             DMMacs.cdsItensPedVenda.FieldByName('VALREP').AsCurrency:=DMMacs.TConsulta.FieldByName('VALREP').AsCurrency;
             DMMacs.cdsItensPedVenda.FieldByName('COEFDIV').AsCurrency:=DMMacs.TConsulta.FieldByName('COEFDIV').AsCurrency;
             DMMacs.cdsItensPedVenda.FieldByName('VALCOMP').AsCurrency:=DMMacs.TConsulta.FieldByName('VALCOMP').AsCurrency;
             DMMacs.cdsItensPedVenda.FieldByName('LUCPER').AsCurrency:=DMMacs.TConsulta.FieldByName('LUCPER').AsCurrency;
             DMMacs.cdsItensPedVenda.FieldByName('LUCMOE').AsCurrency:=DMMacs.TConsulta.FieldByName('LUCMOE').AsCurrency;
             DMMacs.cdsItensPedVenda.FieldByName('DATA').AsDateTime:=DMMacs.TConsulta.FieldByName('DATA').AsDateTime;
             DMMacs.cdsItensPedVenda.FieldByName('COMISSAO').AsCurrency:=DMMacs.TConsulta.FieldByName('COMISSAO').AsCurrency;
             DMMacs.cdsItensPedVenda.FieldByName('OPERACAO').AsString:=DMMacs.TConsulta.FieldByName('OPERACAO').AsString;
             DMMacs.cdsItensPedVenda.FieldByName('LUCREL').AsCurrency:=DMMacs.TConsulta.FieldByName('LUCREL').AsCurrency;
             DMMacs.cdsItensPedVenda.FieldByName('VLRVENDBD').AsCurrency:=DMMacs.TConsulta.FieldByName('VLRVENDBD').AsCurrency;
             DMMacs.cdsItensPedVenda.FieldByName('COD_UNIDADE').AsInteger:=DMMacs.TConsulta.FieldByName('COD_UNIDADE').AsInteger;
             DMMacs.cdsItensPedVenda.FieldByName('DTTROCA').AsDateTime:=DMMacs.TConsulta.FieldByName('DTTROCA').AsDateTime;
             DMMacs.cdsItensPedVenda.FieldByName('COD_CST').AsInteger:=DMMacs.TConsulta.FieldByName('COD_CST').AsInteger;
             DMMacs.cdsItensPedVenda.FieldByName('DESCNF').AsCurrency:=DMMacs.TConsulta.FieldByName('DESCNF').AsCurrency;
             DMMacs.cdsItensPedVenda.FieldByName('CONTRINT').AsString:=DMMacs.QConsulta1.FieldByName('CONTRINT').AsString;
             DMMacs.cdsItensPedVenda.RecordCount;
             DMMacs.cdsItensPedVenda.Post;
             DMMACS.TConsulta.Next;
        end;
        DMMacs.cdsItensPedVenda.Close;
    Except
          ShowMessage('Falha ao exportar ItensPedVendaXML.xml');
          Resultado :=False;
          Result := False;
    end;
end;

//Jônatas 06/08/2013 - Função para exportar XML do orçamento
Function TFGeradorXML.ExportarOrcamento: Boolean;
Begin
    try
        SelecionaArquivoTabOrcamento('ORCAMENTO');
        DMMacs.cdsOrcamento.FileName := DirecDown + '\OrcamentoXML.xml';
        DMMacs.cdsOrcamento.Open;
        DMMACS.TConsulta.First;


        while not DMMACS.TConsulta.Eof do
        begin
            DMMacs.cdsOrcamento.Insert;
            DMMacs.cdsOrcamento.FieldByName('COD_ORCAMENTO').AsInteger:=DMMacs.TConsulta.FieldByName('COD_ORCAMENTO').AsInteger;
            DMMacs.cdsOrcamento.FieldByName('COD_USUARIO').AsInteger:=DMMacs.TConsulta.FieldByName('COD_USUARIO').AsInteger;
            DMMacs.cdsOrcamento.FieldByName('COD_VENDEDOR').AsInteger:=DMMacs.TConsulta.FieldByName('COD_VENDEDOR').AsInteger;
            DMMacs.cdsOrcamento.FieldByName('COD_FORMPAG').AsInteger:=DMMacs.TConsulta.FieldByName('COD_FORMPAG').AsInteger;
            DMMacs.cdsOrcamento.FieldByName('COD_LOJA').AsInteger:=DMMacs.TConsulta.FieldByName('COD_LOJA').AsInteger;
            DMMacs.cdsOrcamento.FieldByName('COD_CLIENTE').AsInteger:=DMMacs.TConsulta.FieldByName('COD_CLIENTE').AsInteger;
            DMMacs.cdsOrcamento.FieldByName('NOMECLI').AsString:=DMMacs.TConsulta.FieldByName('NOMECLI').AsString;
            DMMacs.cdsOrcamento.FieldByName('CPFCNPJ').AsString:=DMMacs.TConsulta.FieldByName('CPFCNPJ').AsString;
            DMMacs.cdsOrcamento.FieldByName('DTABERT').AsDateTime:=DMMacs.TConsulta.FieldByName('DTABERT').AsDateTime;
            DMMacs.cdsOrcamento.FieldByName('HRABERT').AsDateTime:=DMMacs.TConsulta.FieldByName('HRABERT').AsDateTime;
            if DMMacs.TConsulta.FieldByName('DTVALIDADE').AsDateTime>0 then//Jônatas 12/08/2013 - Evitar exportar a data nula: 30/12/1899
                DMMacs.cdsOrcamento.FieldByName('DTVALIDADE').AsDateTime:=DMMacs.TConsulta.FieldByName('DTVALIDADE').AsDateTime;
            DMMacs.cdsOrcamento.FieldByName('NUMORC').AsInteger:=DMMacs.TConsulta.FieldByName('NUMORC').AsInteger;
            DMMacs.cdsOrcamento.FieldByName('OBS').AsString:=DMMacs.TConsulta.FieldByName('OBS').AsString;
            DMMacs.cdsOrcamento.FieldByName('TIPO').AsString:=DMMacs.TConsulta.FieldByName('TIPO').AsString;
            DMMacs.cdsOrcamento.FieldByName('DESCSERV').AsCurrency:=DMMacs.TConsulta.FieldByName('DESCSERV').AsCurrency;
            DMMacs.cdsOrcamento.FieldByName('DESCPROD').AsCurrency:=DMMacs.TConsulta.FieldByName('DESCPROD').AsCurrency;
            DMMacs.cdsOrcamento.FieldByName('VLRSERV').AsCurrency:=DMMacs.TConsulta.FieldByName('VLRSERV').AsCurrency;
            DMMacs.cdsOrcamento.FieldByName('VLRPROD').AsCurrency:=DMMacs.TConsulta.FieldByName('VLRPROD').AsCurrency;
            DMMacs.cdsOrcamento.FieldByName('VLRTOTAL').AsCurrency:=DMMacs.TConsulta.FieldByName('VLRTOTAL').AsCurrency;
            DMMacs.cdsOrcamento.FieldByName('VLRDESP').AsCurrency:=DMMacs.TConsulta.FieldByName('VLRDESP').AsCurrency;
            DMMacs.cdsOrcamento.FieldByName('COD_RESTEC').AsInteger:=DMMacs.TConsulta.FieldByName('COD_RESTEC').AsInteger;
            DMMacs.cdsOrcamento.FieldByName('VLRRESTEC').AsCurrency:=DMMacs.TConsulta.FieldByName('VLRRESTEC').AsCurrency;
            DMMacs.cdsOrcamento.FieldByName('DESCPRODMOE').AsCurrency:=DMMacs.TConsulta.FieldByName('DESCPRODMOE').AsCurrency;
            DMMacs.cdsOrcamento.FieldByName('DESCRICAO').AsString:=DMMacs.TConsulta.FieldByName('DESCRICAO').AsString;
            DMMacs.cdsOrcamento.FieldByName('COD_EQUIPAMENTO').AsInteger:=DMMacs.TConsulta.FieldByName('COD_EQUIPAMENTO').AsInteger;
            DMMacs.cdsOrcamento.FieldByName('CONTATO').AsString:=DMMacs.TConsulta.FieldByName('CONTATO').AsString;
            DMMacs.cdsOrcamento.RecordCount;
            DMMacs.cdsOrcamento.Post;
            DMMACS.TConsulta.Next;
        end;
        DMMacs.cdsOrcamento.Close;
    Except
          ShowMessage('Falha ao exportar OrcamentoXML.xml');
          Result:=False;
          Resultado :=False;
    end;
End;

//Jônatas 06/08/2013 - Função para exportar XML dos itens do orçamento
Function TFGeradorXML.ExportaItensOrcamento: Boolean;
Begin
	Try
       SelecionaArquivoTabOrcamento('ITPRODORC');
       DMMacs.cdsItensOrcamento.FileName := DirecDown + '\ItensOrcamentoXML.xml';
       DMMacs.cdsItensOrcamento.Open;
       DMMACS.TConsulta.First;
       while not DMMACS.TConsulta.Eof do
       begin
            DMMacs.cdsItensOrcamento.Insert;
            DMMacs.cdsItensOrcamento.FieldByName('COD_ITPRODORC').AsInteger:=DMMACS.TConsulta.FieldByName('COD_ITPRODORC').AsInteger;
            DMMacs.cdsItensOrcamento.FieldByName('COD_ORCAMENTO').AsInteger:=DMMACS.TConsulta.FieldByName('COD_ORCAMENTO').AsInteger;
            DMMacs.cdsItensOrcamento.FieldByName('COD_ESTOQUE').AsInteger:=DMMACS.TConsulta.FieldByName('COD_ESTOQUE').AsInteger;
            DMMacs.cdsItensOrcamento.FieldByName('QTD').AsCurrency:=DMMACS.TConsulta.FieldByName('QTD').AsCurrency;
            DMMacs.cdsItensOrcamento.FieldByName('DESCONTO').AsCurrency:=DMMACS.TConsulta.FieldByName('DESCONTO').AsCurrency;
            DMMacs.cdsItensOrcamento.FieldByName('VLRUNIT').AsCurrency:=DMMACS.TConsulta.FieldByName('VLRUNIT').AsCurrency;
            DMMacs.cdsItensOrcamento.FieldByName('VLRTOTAL').AsCurrency:=DMMACS.TConsulta.FieldByName('VLRTOTAL').AsCurrency;
            DMMacs.cdsItensOrcamento.FieldByName('VALCUSTO').AsCurrency:=DMMACS.TConsulta.FieldByName('VALCUSTO').AsCurrency;
            DMMacs.cdsItensOrcamento.FieldByName('COEFDIV').AsCurrency:=DMMACS.TConsulta.FieldByName('COEFDIV').AsCurrency;
            DMMacs.cdsItensOrcamento.FieldByName('VALCOMP').AsCurrency:=DMMACS.TConsulta.FieldByName('VALCOMP').AsCurrency;
            DMMacs.cdsItensOrcamento.FieldByName('LUCMOE').AsCurrency:=DMMACS.TConsulta.FieldByName('LUCMOE').AsCurrency;
            DMMacs.cdsItensOrcamento.FieldByName('LUCPER').AsCurrency:=DMMACS.TConsulta.FieldByName('LUCPER').AsCurrency;
            DMMacs.cdsItensOrcamento.FieldByName('VALREP').AsCurrency:=DMMACS.TConsulta.FieldByName('VALREP').AsCurrency;
            DMMacs.cdsItensOrcamento.FieldByName('LUCREL').AsCurrency:=DMMACS.TConsulta.FieldByName('LUCREL').AsCurrency;
            DMMacs.cdsItensOrcamento.FieldByName('COD_UNIDADE').AsInteger:=DMMACS.TConsulta.FieldByName('COD_UNIDADE').AsInteger;
            DMMacs.cdsItensOrcamento.FieldByName('QTDEMB').AsCurrency:=DMMACS.TConsulta.FieldByName('QTDEMB').AsCurrency;
            DMMacs.cdsItensOrcamento.FieldByName('UNIDEMB').AsInteger:=DMMACS.TConsulta.FieldByName('UNIDEMB').AsInteger;
            DMMacs.cdsItensOrcamento.FieldByName('QTDNAEMB').AsCurrency:=DMMACS.TConsulta.FieldByName('QTDNAEMB').AsCurrency;

            DMMacs.cdsItensOrcamento.RecordCount;
            DMMacs.cdsItensOrcamento.Post;
            DMMACS.TConsulta.Next;
       end;
       DMMacs.cdsItensOrcamento.Close;
   Except
         ShowMessage('Falha ao exportar ItensOrcamentoXML.xml');
         Resultado :=False;
         Result := False;
   end;
End;

procedure TFGeradorXML.ExportarXMLFormaPagamento;
begin
    try

      SelecionaArquivoTabFormPag('FORMPAG');
      DMMacs.cdsFormaPagamento.FileName := DirecDown + '\FormaPagamentoXML.xml';
      DMMacs.cdsFormaPagamento.Open;
      DMMACS.TConsulta.First;
      while not DMMACS.TConsulta.Eof do
      begin

            DMMacs.cdsFormaPagamento.Insert;
            DMMacs.cdsFormaPagamento.FieldByName('ATIVADESC').AsBoolean:=DMMACS.TConsulta.FieldByName('ATIVADESC').AsBoolean;
            DMMacs.cdsFormaPagamento.FieldByName('COD_FORMPAG').AsInteger:=DMMACS.TConsulta.FieldByName('COD_FORMPAG').AsInteger;
            DMMacs.cdsFormaPagamento.FieldByName('COD_INTERNO').AsInteger:=DMMACS.TConsulta.FieldByName('COD_INTERNO').AsInteger;
            DMMacs.cdsFormaPagamento.FieldByName('COD_LOJA').AsInteger:=DMMACS.TConsulta.FieldByName('COD_LOJA').AsInteger;
            DMMacs.cdsFormaPagamento.FieldByName('DESCFISC').AsString:=DMMACS.TConsulta.FieldByName('DESCFISC').AsString;
            DMMacs.cdsFormaPagamento.FieldByName('DESCFORMPAG').AsFloat:=DMMACS.TConsulta.FieldByName('DESCFORMPAG').AsFloat;
            DMMacs.cdsFormaPagamento.FieldByName('DESCRICAO').AsString:=DMMACS.TConsulta.FieldByName('DESCRICAO').AsString;
            DMMacs.cdsFormaPagamento.FieldByName('INTERVALO').AsInteger:=DMMACS.TConsulta.FieldByName('INTERVALO').AsInteger;
            DMMacs.cdsFormaPagamento.FieldByName('JUROAPLIC').AsFloat:=DMMACS.TConsulta.FieldByName('JUROAPLIC').AsFloat;
            DMMacs.cdsFormaPagamento.FieldByName('MEDIADIAS').AsInteger:=DMMACS.TConsulta.FieldByName('MEDIADIAS').AsInteger;
            DMMacs.cdsFormaPagamento.FieldByName('PRIMPARCELA').AsInteger:=DMMACS.TConsulta.FieldByName('PRIMPARCELA').AsInteger;
            DMMacs.cdsFormaPagamento.FieldByName('QUANTPARCELA').AsInteger:=DMMACS.TConsulta.FieldByName('QUANTPARCELA').AsInteger;
            DMMacs.cdsFormaPagamento.FieldByName('TIPO').AsString:=DMMACS.TConsulta.FieldByName('TIPO').AsString;
            DMMacs.cdsFormaPagamento.Post;

            DMMACS.TConsulta.Next;

      end;
      DMMacs.cdsFormaPagamento.Close;

    Except
          ShowMessage('Falha ao exportar ClienteXML.xml ');
          xExportado := false;
    end;

end;


Function TFGeradorXML.ExportaDados : Boolean;
Var
  xNumPalm : String;
Begin
      Result := True;
      try
          DMMACS.TConsulta.Close;
          DMMACS.TConsulta.SQL.Clear;
          DMMACS.TConsulta.SQL.Add(' select * from funcionario');
          DMMACS.TConsulta.SQL.Add(' where funcionario.palm = 1');
          DMMACS.TConsulta.SQL.Text;
          DMMACS.TConsulta.Open;
          DMMACS.TConsulta.First;

          while not DMMACS.TConsulta.Eof do
          begin

            //Se nao existe pasta fisica de destino dos arquivos, cria pasta
            if not directoryExists('C:\MZR\Arquivos\Mobile\0'+DMMACS.TConsulta.FieldByName('NUMPALM').AsString + '\') then
                  CreateDir('C:\MZR\Arquivos\Mobile\0'+ DMMACS.TConsulta.FieldByName('NUMPALM').AsString + '\');

                if directoryExists('C:\MZR\Arquivos\Mobile\0'+DMMACS.TConsulta.FieldByName('NUMPALM').AsString + '\') then
                      CreateDir('C:\MZR\Arquivos\Mobile\0'+ DMMACS.TConsulta.FieldByName('NUMPALM').AsString + '\Servidor\');


                DMMACS.TConsulta.Next;
          end;
      Except
         Result :=False;
      End;
  
End;

Function TFGeradorXML.limparDiretorioServidor(XNUMPALM: String) : Boolean;
Begin

     if (FileExists(DirecDown + '\PessoaXML.xml'))
     then begin
        DMMacs.cdsPessoa.FileName := DirecDown+'\PessoaXML.xml';
        DMMacs.cdsPessoa.Open;
        DMMacs.cdsPessoa.Insert;
        DMMacs.cdsPessoa.Post;
        DMMACS.cdsPessoa.EmptyDataSet;
        DMMacs.cdsPessoa.Close;
     End;
     if (FileExists( DirecDown +'\PessoaFisicaXML.xml'))
     then begin
        DMMacs.cdsPessoaF.FileName := DirecDown+'\PessoaFisicaXML.xml';
        DMMacs.cdsPessoaF.Open;
        DMMacs.cdsPessoaF.Insert;
        DMMacs.cdsPessoaF.Post;
        DMMACS.cdsPessoaF.EmptyDataSet;
        DMMacs.cdsPessoaF.Close;
     end;
     if (FileExists(DirecDown +'\PessoaJuridicaXML.xml'))
     then begin
        DMMacs.cdsPessoaJ.FileName := DirecDown+'\PessoaJuridicaXML.xml';
        DMMacs.cdsPessoaJ.Open;
        DMMacs.cdsPessoaJ.Insert;
        DMMacs.cdsPessoaJ.Post;
        DMMACS.cdsPessoaJ.EmptyDataSet;
        DMMacs.cdsPessoaJ.Close;
     end;
     if (FileExists(DirecDown +'\ClienteXML.xml'))
     then begin
        DMMacs.cdsCliente.FileName := DirecDown+'\ClienteXML.xml';
        DMMacs.cdsCliente.Open;
        DMMacs.cdsCliente.Insert;
        DMMacs.cdsCliente.Post;
        DMMACS.cdsCliente.EmptyDataSet;
        DMMacs.cdsCliente.Close;
     end;
     if (FileExists(DirecDown +'\TelefoneXML.xml'))
     then begin
        DMMacs.cdsTelefone.FileName := DirecDown+'\TelefoneXML.xml';
        DMMacs.cdsTelefone.Open;
        DMMacs.cdsTelefone.Insert;
        DMMacs.cdsTelefone.Post;
        DMMACS.cdsTelefone.EmptyDataSet;
        DMMacs.cdsTelefone.Close;
     end;
     if (FileExists(DirecDown +'\EmailXML.xml'))
     then begin
        DMMacs.cdsEmail.FileName := DirecDown+'\EmailXML.xml';
        DMMacs.cdsEmail.Open;
        DMMacs.cdsEmail.Insert;
        DMMacs.cdsEmail.Post;
        DMMACS.cdsEmail.EmptyDataSet;
        DMMacs.cdsEmail.Close;
     end;
     if (FileExists(DirecDown +'\PedVendaXML.xml'))
     then begin
        DMMacs.cdsPedVenda.FileName := DirecDown+'\PedVendaXML.xml';
        DMMacs.cdsPedVenda.Open;
        DMMacs.cdsPedVenda.Insert;
        DMMacs.cdsPedVenda.Post;
        DMMACS.cdsPedVenda.EmptyDataSet;
        DMMacs.cdsPedVenda.Close;
     end;
     if (FileExists(DirecDown +'\ItensPedVendaXML.xml'))
     then begin
        DMMacs.cdsItensPedVenda.FileName := DirecDown+'\ItensPedVendaXML.xml';
        DMMacs.cdsItensPedVenda.Open;
        DMMacs.cdsItensPedVenda.Insert;
        DMMacs.cdsItensPedVenda.Post;
        DMMACS.cdsItensPedVenda.EmptyDataSet;
        DMMacs.cdsItensPedVenda.Close;
     end;
     //Jônatas 07/08/2013 - Incluído orçamento e itens do orçamento
     if (FileExists(DirecDown +'\OrcamentoXML.xml'))
     then begin
        DMMacs.cdsOrcamento.FileName := DirecDown+'\OrcamentoXML.xml';
        DMMacs.cdsOrcamento.Open;
        DMMacs.cdsOrcamento.Insert;
        DMMacs.cdsOrcamento.Post;
        DMMACS.cdsOrcamento.EmptyDataSet;
        DMMacs.cdsOrcamento.Close;
     end;
     if (FileExists(DirecDown +'\ItensOrcamentoXML.xml'))
     then begin
        DMMacs.cdsItensOrcamento.FileName := DirecDown+'\ItensOrcamentoXML.xml';
        DMMacs.cdsItensOrcamento.Open;
        DMMacs.cdsItensOrcamento.Insert;
        DMMacs.cdsItensOrcamento.Post;
        DMMACS.cdsItensOrcamento.EmptyDataSet;
        DMMacs.cdsItensOrcamento.Close;
     end;

End;

Function TFGeradorXML.limparDiretorioServidorImportados(XNUMPALM: String) : Boolean;
Begin

     if (FileExists(DirecUp + '\PessoaXML.xml')) then
           DeleteFile(DirecUp + '\PessoaXML.xml');
     if (FileExists( DirecUp +'\PessoaFisicaXML.xml')) then
           DeleteFile(DirecUp +'\PessoaFisicaXML.xml');
     if (FileExists(DirecUp +'\PessoaJuridicaXML.xml')) then
           DeleteFile(DirecUp +'\PessoaJuridicaXML.xml');
     if (FileExists(DirecUp +'\ClienteXML.xml')) then
           DeleteFile(DirecUp +'\ClienteXML.xml');
     if (FileExists(DirecUp +'\TelefoneXML.xml')) then
           DeleteFile(DirecUp +'\TelefoneXML.xml');
     if (FileExists(DirecUp +'\EmailXML.xml')) then
           DeleteFile(DirecUp +'\EmailXML.xml');

     if (FileExists(DirecUp +'\PedVendaXML.xml')) then
           DeleteFile(DirecUp +'\PedVendaXML.xml');
     if (FileExists(DirecUp +'\ItensPedVendaXML.xml')) then
           DeleteFile(DirecUp +'\ItensPedVendaXML.xml');
     //Jônatas 07/08/2013 - Incluído orçamento e itens do orçamento
     if (FileExists(DirecUp +'\OrcamentoXML.xml')) then
           DeleteFile(DirecUp +'\OrcamentoXML.xml');
     if (FileExists(DirecUp +'\ItensOrcamentoXML.xml')) then
           DeleteFile(DirecUp +'\ItensOrcamentoXML.xml');
     
End;

Function TFGeradorXML.limparDiretorioMobile(XNUMPALM: String) : Boolean;
Begin

     if (FileExists(DirecDown + '\PessoaXML.xml'))
     then begin
        DMMacs.cdsPessoa.FileName := DirecDown+'\PessoaXML.xml';
        DMMacs.cdsPessoa.Open;
        DMMacs.cdsPessoa.Insert;
        DMMacs.cdsPessoa.Post;
        DMMACS.cdsPessoa.EmptyDataSet;
        DMMacs.cdsPessoa.Close;
     end;
     if (FileExists( DirecDown +'\PessoaFisicaXML.xml'))
     then begin
        DMMacs.cdsPessoaF.FileName := DirecDown+'\PessoaFisicaXML.xml';
        DMMacs.cdsPessoaF.Open;
        DMMacs.cdsPessoaF.Insert;
        DMMacs.cdsPessoaF.Post;
        DMMACS.cdsPessoaF.EmptyDataSet;
        DMMacs.cdsPessoaF.Close;
     end;
     if (FileExists(DirecDown +'\PessoaJuridicaXML.xml'))
     then begin
        DMMacs.cdsPessoaJ.FileName := DirecDown+'\PessoaJuridicaXML.xml';
        DMMacs.cdsPessoaJ.Open;
        DMMacs.cdsPessoaJ.Insert;
        DMMacs.cdsPessoaJ.Post;
        DMMACS.cdsPessoaJ.EmptyDataSet;
        DMMacs.cdsPessoaJ.Close;
     end;
     if (FileExists(DirecDown +'\ClienteXML.xml'))
     then begin
        DMMacs.cdsCliente.FileName := DirecDown+'\ClienteXML.xml';
        DMMacs.cdsCliente.Open;
        DMMacs.cdsCliente.Insert;
        DMMacs.cdsCliente.Post;
        DMMACS.cdsCliente.EmptyDataSet;
        DMMacs.cdsCliente.Close;
     end;
     if (FileExists(DirecDown +'\TelefoneXML.xml'))
      then begin
        DMMacs.cdsTelefone.FileName := DirecDown+'\TelefoneXML.xml';
        DMMacs.cdsTelefone.Open;
        DMMacs.cdsTelefone.Insert;
        DMMacs.cdsTelefone.Post;
        DMMACS.cdsTelefone.EmptyDataSet;
        DMMacs.cdsTelefone.Close;
     end;
     if (FileExists(DirecDown +'\EmailXML.xml'))
      then begin
        DMMacs.cdsEmail.FileName := DirecDown+'\EmailXML.xml';
        DMMacs.cdsEmail.Open;
        DMMacs.cdsEmail.Insert;
        DMMacs.cdsEmail.Post;
        DMMACS.cdsEmail.EmptyDataSet;
        DMMacs.cdsEmail.Close;
     end;

     if (FileExists(DirecDown +'\CstXML.xml'))
      then begin
        DMMacs.cdsCst.FileName := DirecDown+'\CstXML.xml';
        DMMacs.cdsCst.Open;
        DMMacs.cdsCst.Insert;
        DMMacs.cdsCst.Post;
        DMMACS.cdsCst.EmptyDataSet;
        DMMacs.cdsCst.Close;
     end;
     if (FileExists(DirecDown +'\ProdutoXML.xml'))
      then begin
        DMMacs.cdsProduto.FileName := DirecDown+'\ProdutoXML.xml';
        DMMacs.cdsProduto.Open;
        DMMacs.cdsProduto.Insert;
        DMMacs.cdsProduto.Post;
        DMMACS.cdsProduto.EmptyDataSet;
        DMMacs.cdsProduto.Close;
     end;
     if (FileExists(DirecDown +'\SubProdutoXML.xml'))
      then begin
        DMMacs.cdsSubProduto.FileName := DirecDown+'\SubProdutoXML.xml';
        DMMacs.cdsSubProduto.Open;
        DMMacs.cdsSubProduto.Insert;
        DMMacs.cdsSubProduto.Post;
        DMMACS.cdsSubProduto.EmptyDataSet;
        DMMacs.cdsSubProduto.Close;
     end;
     if (FileExists(DirecDown +'\GrupoProdutoXML.xml'))
      then begin
        DMMacs.cdsGrupo.FileName := DirecDown+'\GrupoProdutoXML.xml';
        DMMacs.cdsGrupo.Open;
        DMMacs.cdsGrupo.Insert;
        DMMacs.cdsGrupo.Post;
        DMMACS.cdsGrupo.EmptyDataSet;
        DMMacs.cdsGrupo.Close;
     end;
     if (FileExists(DirecDown +'\SubGrupoProdutoXML.xml'))
     then begin
        DMMacs.cdsSubGrupo.FileName := DirecDown+'\SubGrupoProdutoXML.xml';
        DMMacs.cdsSubGrupo.Open;
        DMMacs.cdsSubGrupo.Insert;
        DMMacs.cdsSubGrupo.Post;
        DMMACS.cdsSubGrupo.EmptyDataSet;
        DMMacs.cdsSubGrupo.Close;
     end;
     if (FileExists(DirecDown +'\EstoqueXML.xml'))
      then begin
        DMMacs.cdsEstoque.FileName := DirecDown+'\EstoqueXML.xml';
        DMMacs.cdsEstoque.Open;
        DMMacs.cdsEstoque.Insert;
        DMMacs.cdsEstoque.Post;
        DMMACS.cdsEstoque.EmptyDataSet;
        DMMacs.cdsEstoque.Close;
     end;
     if (FileExists(DirecDown +'\UnidadeXML.xml'))
     then begin
        DMMacs.cdsUnidade.FileName := DirecDown+'\UnidadeXML.xml';
        DMMacs.cdsUnidade.Open;
        DMMacs.cdsUnidade.Insert;
        DMMacs.cdsUnidade.Post;
        DMMACS.cdsUnidade.EmptyDataSet;
        DMMacs.cdsUnidade.Close;
     end;

     if (FileExists(DirecDown +'\FormaPagamentoXML.xml'))
     then begin
        DMMacs.cdsFormaPagamento.FileName := DirecDown+'\FormaPagamentoXML.xml';
        DMMacs.cdsFormaPagamento.Open;
        DMMacs.cdsFormaPagamento.Insert;
        DMMacs.cdsFormaPagamento.Post;
        DMMACS.cdsFormaPagamento.EmptyDataSet;
        DMMacs.cdsFormaPagamento.Close;
     end;

End;

Function TFGeradorXML.limparDiretorioMobileImportados(XNUMPALM: String) : Boolean;
Begin

     if (FileExists(DirecUp + '\PessoaXML.xml')) then
           DeleteFile(DirecUp + '\PessoaXML.xml');
     if (FileExists( DirecUp +'\PessoaFisicaXML.xml')) then
           DeleteFile(DirecUp +'\PessoaFisicaXML.xml');
     if (FileExists(DirecUp +'\PessoaJuridicaXML.xml')) then
           DeleteFile(DirecUp +'\PessoaJuridicaXML.xml');
     if (FileExists(DirecUp +'\ClienteXML.xml')) then
           DeleteFile(DirecUp +'\ClienteXML.xml');
     if (FileExists(DirecUp +'\TelefoneXML.xml')) then
           DeleteFile(DirecUp +'\TelefoneXML.xml');
     if (FileExists(DirecUp +'\EmailXML.xml')) then
           DeleteFile(DirecUp +'\EmailXML.xml');

     if (FileExists(DirecUp +'\CstXML.xml')) then
           DeleteFile(DirecUp +'\CstXML.xml');
     if (FileExists(DirecUp +'\ProdutoXML.xml')) then
           DeleteFile(DirecUp +'\ProdutoXML.xml');
     if (FileExists(DirecUp +'\SubProdutoXML.xml')) then
           DeleteFile(DirecUp +'\SubProdutoXML.xml');
     if (FileExists(DirecUp +'\GrupoProdutoXML.xml')) then
           DeleteFile(DirecUp +'\GrupoProdutoXML.xml');
     if (FileExists(DirecUp +'\SubGrupoProdutoXML.xml')) then
           DeleteFile(DirecUp +'\SubGrupoProdutoXML.xml');
     if (FileExists(DirecUp +'\EstoqueXML.xml')) then
           DeleteFile(DirecUp +'\EstoqueXML.xml');
     if (FileExists(DirecUp +'\UnidadeXML.xml')) then
           DeleteFile(DirecUp +'\UnidadeXML.xml');

     if (FileExists(DirecUp +'\FormaPagamentoXML.xml')) then
           DeleteFile(DirecUp +'\FormaPagamentoXML.xml');

End;

procedure TFGeradorXML.Button1Click(Sender: TObject);
Var
    xEmpresa : String;
begin
  inherited;

      try
          DMMACS.TSecundario.Close;
          DMMACS.TSecundario.SQL.Clear;
          DMMACS.TSecundario.SQL.Add(' select * from EMPRESA');
          DMMACS.TSecundario.SQL.Text;
          DMMACS.TSecundario.Open;
          xEmpresa:= DMMACS.TSecundario.FieldByName('MOBILE').AsString;

          If(xEmpresa <> '1')//Empresa <> 1 é servidor ( aqui vai atualizar os dados no BD no Servidor)
          then begin
              ImportarDadosServidor;
          End;
          If(xEmpresa = '1')//Empresa = 1 é mobile ( aqui vai atualizar os dados no BD no mobile)
          then begin
              ImportarDadosMobile;
          End;
      Except

      End;
end;

Function TFGeradorXML.ImportarDadosServidor : Boolean;
Begin

      try
          DMMACS.TSecundario.Close;
          DMMACS.TSecundario.SQL.Clear;
          DMMACS.TSecundario.SQL.Add(' select * from funcionario');
          DMMACS.TSecundario.SQL.Add(' where funcionario.palm = 1');
          DMMACS.TSecundario.SQL.Text;
          DMMACS.TSecundario.Open;
          DMMACS.TSecundario.First;

            Dir := 'C:\MZR\Arquivos\';
            while not DMMACS.TSecundario.Eof do
            begin
                if directoryExists(Dir+'Mobile\0'+DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\')
                then begin
                   DirecUp := Dir+'Mobile\Importados\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Mobile\';
                   limparDiretorioServidorImportados(DMMACS.TSecundario.FieldByName('NUMPALM').AsString);
                   Resultado := true;
                   VerificaPastaVazia(DMMACS.TSecundario.FieldByName('NUMPALM').AsString);
                   if xResultado = True
                   then begin

                      if not directoryExists(Dir+'Mobile\Importados\') then
                          CreateDir(Dir+'Mobile\Importados\');

                      if not directoryExists(Dir+'Mobile\Importados\0'+DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\') then
                          CreateDir(Dir+'Mobile\Importados\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\');

                      if not directoryExists(Dir+'Mobile\Importados\0'+DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Mobile\') then
                          CreateDir(Dir+'Mobile\Importados\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Mobile\');

                          DirecDown := Dir+'Mobile\0'+DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Mobile\';
                          DirecUp := Dir+'Mobile\Importados\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Mobile\';
                          Try
                              EncontraCodLoja;
                              preparaAtualizarServidor;
                              if Resultado = False
                              Then Begin
                                  ShowMessage('Falha na tentativa de importar os dados');
                                  Exit;
                              End;
                          Except
                              ShowMessage('Falha na tentativa de importar os dados');
                              exit;
                          End;
                          xResultado := False;
                   End;
                   DMMACS.TSecundario.Next;
               end
               else
                  ShowMessage('Não existem dados para ser importados, é necessário exportar os dados primeiro!');
            end;
            ShowMessage('Dados importados com sucesso!');
            limparDiretorioServidor(DMMACS.TSecundario.FieldByName('NUMPALM').AsString);

      Except

      End;
End;

Function TFGeradorXML.ImportarDadosMobile : Boolean;
Begin
      Resultado := True;
      EncontraCodLoja;
      try
          DMMACS.TSecundario.Close;
          DMMACS.TSecundario.SQL.Clear;
          DMMACS.TSecundario.SQL.Add(' select * from funcionario');
          DMMACS.TSecundario.SQL.Add(' where funcionario.palm = 1');
          DMMACS.TSecundario.SQL.Text;
          DMMACS.TSecundario.Open;
          DMMACS.TSecundario.First;

            Dir := DMMACS.QConsulta2.FieldByName('DIRDOWFTP').AsString;
            if Dir = ''
            then begin
                ShowMessage('Não foi informado diretorio para o sincronismo!');
                exit;
            End;

            if directoryExists(Dir+'Mobile\0'+DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\')
            then begin
                DirecUp := Dir+'Mobile\Importados\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Servidor\';
                limparDiretorioMobileImportados(DMMACS.TSecundario.FieldByName('NUMPALM').AsString);
                while not DMMACS.TSecundario.Eof do
                begin

                   if not directoryExists(Dir+'Mobile\Importados\') then
                      CreateDir(Dir+'Mobile\Importados\');

                      if not directoryExists(Dir+'Mobile\Importados\0'+DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Servidor\') then
                        CreateDir(Dir+'Mobile\Importados\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\');

                        if not directoryExists(Dir+'Mobile\Importados\0'+DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Servidor\') then
                          CreateDir(Dir+'Mobile\Importados\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Servidor\');

                        DirecDown := Dir+'Mobile\0'+DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Servidor\';
                        DirecUp := Dir+'Mobile\Importados\0'+ DMMACS.TSecundario.FieldByName('NUMPALM').AsString + '\Servidor\';
                        Try
                            preparaAtualizarMobile;
                            if Resultado = False
                            Then Begin
                                ShowMessage('Falha na tentativa de importar os dados');
                                Exit;
                            End;
                        Except
                            ShowMessage('Falha na tentativa de importar os dados');
                            exit;
                        End;
                DMMACS.TSecundario.Next;
                end;
                ShowMessage('Dados importados com sucesso!');
                limparDiretorioMobile(DMMACS.TSecundario.FieldByName('NUMPALM').AsString);
          end
          else
              ShowMessage('Não existem dados para ser importados, é necessário exportar os dados primeiro!');
      Except

      End;
End;

//MAURO - 27/11/2012 - Função para
Function TFGeradorXML.preparaAtualizarMobile : Boolean;
begin
    try
        CopyFile(PChar(DirecDown + '\ClienteXML.xml'),
            PChar(DirecUp + '\ClienteXML.xml'), true);

        CopyFile(PChar(DirecDown + '\PessoaXML.xml'),
            PChar(DirecUp + '\PessoaXML.xml'), true);

        CopyFile(PChar(DirecDown + '\PessoaFisicaXML.xml'),
            PChar(DirecUp + '\PessoaFisicaXML.xml'), true);

        CopyFile(PChar(DirecDown + '\PessoaJuridicaXML.xml'),
            PChar(DirecUp + '\PessoaJuridicaXML.xml'), true);

        CopyFile(PChar(DirecDown + '\TelefoneXML.xml'),
            PChar(DirecUp + '\TelefoneXML.xml'), true);

        CopyFile(PChar(DirecDown + '\EmailXML.xml'),
            PChar(DirecUp + '\EmailXML.xml'), true);

       //PRODUTO
       CopyFile(PChar(DirecDown + '\ProdutoXML.xml'),
            PChar(DirecUp + '\ProdutoXML.xml'), true);

       CopyFile(PChar(DirecDown + '\SubProdutoXML.xml'),
            PChar(DirecUp + '\SubProdutoXML.xml'), true);

       CopyFile(PChar(DirecDown + '\EstoqueXML.xml'),
            PChar(DirecUp + '\EstoqueXML.xml'), true);

       CopyFile(PChar(DirecDown + '\SubGrupoProdutoXML.xml'),
            PChar(DirecUp + '\SubGrupoProdutoXML.xml'), true);

       CopyFile(PChar(DirecDown + '\GrupoProdutoXML.xml'),
            PChar(DirecUp + '\GrupoProdutoXML.xml'), true);

       CopyFile(PChar(DirecDown + '\NcmXML.xml'),
            PChar(DirecUp + '\NcmXML.xml'), true);

       CopyFile(PChar(DirecDown + '\CstXML.xml'),
            PChar(DirecUp + '\CstXML.xml'), true);

       CopyFile(PChar(DirecDown + '\UnidadeXML.xml'),
            PChar(DirecUp + '\UnidadeXML.xml'), true);

       if cbSincFormPag.Checked = True
       Then begin
       //FORMA PAGAMENTO
       	CopyFile(PChar(DirecDown + '\FormaPagamentoXML.xml'),
           	 PChar(DirecUp + '\FormaPagamentoXML.xml'), true);
       End;

       try
          //função que direciona para as atualizações de produtos, clientes e forma de pagamento
          AtualizarDadosMobile;
       Except
           Resultado := False;
           Result := False;
       End;
    Except
       Resultado := False;
       Result := False;
       ShowMessage('Falha ao copiar os arquivos XML');
    end;
end;

//MAURO - 27/11/2012 - Função para
Function TFGeradorXML.preparaAtualizarServidor : Boolean;
begin
    try
        CopyFile(PChar(DirecDown + '\ClienteXML.xml'),
            PChar(DirecUp + '\ClienteXML.xml'), true);

        CopyFile(PChar(DirecDown + '\PessoaXML.xml'),
            PChar(DirecUp + '\PessoaXML.xml'), true);

        CopyFile(PChar(DirecDown + '\PessoaFisicaXML.xml'),
            PChar(DirecUp + '\PessoaFisicaXML.xml'), true);

        CopyFile(PChar(DirecDown + '\PessoaJuridicaXML.xml'),
            PChar(DirecUp + '\PessoaJuridicaXML.xml'), true);

        CopyFile(PChar(DirecDown + '\TelefoneXML.xml'),
            PChar(DirecUp + '\TelefoneXML.xml'), true);

        CopyFile(PChar(DirecDown + '\EmailXML.xml'),
            PChar(DirecUp + '\EmailXML.xml'), true);

        CopyFile(PChar(DirecDown + '\PedVendaXML.xml'),
            PChar(DirecUp + '\PedVendaXML.xml'), true);

        CopyFile(PChar(DirecDown + '\ItensPedVendaXML.xml'),
            PChar(DirecUp + '\ItensPedVendaXML.xml'), true);
        //Jônatas 07/08/2013 - incluido orçamento e itens do orçamento
        CopyFile(PChar(DirecDown + '\OrcamentoXML.xml'),
            PChar(DirecUp + '\OrcamentoXML.xml'), true);

        CopyFile(PChar(DirecDown + '\ItensOrcamentoXML.xml'),
            PChar(DirecUp + '\ItensOrcamentoXML.xml'), true);
       
       try
          AtualizarDadosServidor;
       Except
           Resultado := False;
           Result := False;
       End;
    Except
       Resultado := False;
       Result := False;
       ShowMessage('Falha ao copiar os arquivos XML');
    end;
end;

procedure TFGeradorXML.AtualizarDadosServidor;
Begin
    try
        AtualizarBDClientes;
        
        AtualizarBDVenda;

        AtualizarBDOrcamento;//Jônatas 08/08/2013 - Importa os dados do XML de orçamento para o banco

    Except
        Resultado := False;
        Result := False;
        Exit;
    End;
End;

procedure TFGeradorXML.AtualizarDadosMobile;
Begin
    try
        AtualizarBDClientes;

        AtualizarBDProduto;
        
        //MAURO 11/03/2013 - Se a opção de sincronizar forma de pagamento estiver marcada
        if cbSincFormPag.Checked = True then
        	AtualizarBDFormaPagamento;

    Except
        Resultado := False;
        Result := False;
        Exit;
    End;

End;
procedure TFGeradorXML.AtualizarBDClientes;
Begin

    Try
         AtualizarPessoa;

         AtualizarPessoaFisica;

         AtualizarPessoaJuridica;

         AtualizarCliente;

         AtualizarTelefone;

         AtualizarEmail;
    Except
        Result := False;
        Resultado := False;
    End;

End;


procedure TFGeradorXML.AtualizarBDProduto;
Begin
    try
         AtualizarSubGrupoProduto;

         AtualizarGrupoProduto;

         AtualizarCst;

         AtualizarUnidade;

         AtualizarProduto;

         AtualizarSubProduto ;

         AtualizarEstoque;
    Except
        Result := False;
        Resultado := False;
    End;

End;

Function TFGeradorXML.AtualizarBDVenda : Boolean;
Var
    xCodPedVendaAntigo : Integer;
    CODPEDIDO, CODITENSPEDIDO : Integer;
    xCodPedVen : String;
Begin
    Result:=True;
    Try
        Try
           DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'PedVendaXML.xml');
           DMMACS.cdsAtualizaBanco.First;
           DMMACS.cdsAtualizaBanco.RecordCount;

           DMMACS.cdsAtualizaBanco1.LoadFromFile(DirecUp + 'ItensPedVendaXML.xml');
           DMMACS.cdsAtualizaBanco1.First;
           DMMACS.cdsAtualizaBanco1.RecordCount;

        Except
           Result := False;
           Resultado := False;
        End;

        while not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from PEDVENDA');
               DMMACS.QConsulta.SQL.Add(' where PEDVENDA.COD_PEDVENDA = :parametro ' );
               DMMACS.QConsulta.SQL.Add(' and PEDVENDA.NUMPED = :parametro1 ' );
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_PEDVENDA').AsInteger;
               DMMACS.QConsulta.ParamByName('PARAMETRO1').AsString := DMMACS.cdsAtualizaBanco.FieldByName('NUMPED').AsString;
               DMMACS.QConsulta.Open;

               MDO.Query.Close;
               MDO.Query.sql.clear;
               if DMMACS.QConsulta.IsEmpty
               Then begin

                   MDO.Query.SQL.Add('insert into PEDVENDA(COD_PEDVENDA,COD_CLIENTE,DTPEDVEN,DESCONTO,COD_USUARIO,COD_FORMPAG,VALOR,ENTREGA,NOMECLI,');
                   MDO.Query.SQL.Add('   OBS,CPFCNPJ,COD_VENDEDOR,SITUACAO,NUMPED,COBRANCA,EXPORTA,TIPO)');
                   MDO.Query.SQL.Add('values(:COD_PEDVENDA,:COD_CLIENTE,:DTPEDVEN,:DESCONTO,:COD_USUARIO,:COD_FORMPAG,:VALOR,:ENTREGA,:NOMECLI,');
                   MDO.Query.SQL.Add('   :OBS,:CPFCNPJ,:COD_VENDEDOR,:SITUACAO,:NUMPED,:COBRANCA,:EXPORTA,:TIPO)');

               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty)Then begin
                       MDO.Query.SQL.Add('update PEDVENDA set COD_CLIENTE=:COD_CLIENTE,DTPEDVEN=:DTPEDVEN,DESCONTO=:DESCONTO,COD_USUARIO=:COD_USUARIO,');
                       MDO.Query.SQL.Add('   COD_FORMPAG=:COD_FORMPAG,VALOR=:VALOR,ENTREGA=:ENTREGA,NOMECLI=:NOMECLI,OBS=:OBS,CPFCNPJ=:CPFCNPJ,');
                       MDO.Query.SQL.Add('   COD_VENDEDOR=:COD_VENDEDOR,SITUACAO=:SITUACAO,NUMPED=:NUMPED,COBRANCA=:COBRANCA,EXPORTA=:EXPORTA,TIPO=:TIPO');
                       MDO.Query.SQL.Add('where PEDVENDA.COD_PEDVENDA = :COD_PEDVENDA');
                   End;
              End;


                   SelecionaCliente(DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString);
                   MDO.Query.ParamByName('COD_CLIENTE').AsInteger := xCodCliente;
                   MDO.Query.ParamByName('CPFCNPJ').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString;
                   MDO.Query.ParamByName('DTPEDVEN').AsDateTime := DMMACS.cdsAtualizaBanco.FieldByName('DTPEDVEN').AsDateTime;
                   MDO.Query.ParamByName('DESCONTO').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('DESCONTO').AsFloat;
                   MDO.Query.ParamByName('COD_USUARIO').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_USUARIO').AsInteger;
                   MDO.Query.ParamByName('COD_FORMPAG').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_FORMPAG').AsInteger;
                   MDO.Query.ParamByName('VALOR').AsCurrency := DMMACS.cdsAtualizaBanco.FieldByName('VALOR').AsCurrency;
                   MDO.Query.ParamByName('ENTREGA').AsDateTime := DMMACS.cdsAtualizaBanco.FieldByName('ENTREGA').AsDateTime;
                   MDO.Query.ParamByName('NOMECLI').AsString := DMMACS.cdsAtualizaBanco.FieldByName('NOMECLI').AsString;
                   MDO.Query.ParamByName('OBS').AsString := DMMACS.cdsAtualizaBanco.FieldByName('OBS').AsString;
                   MDO.Query.ParamByName('COD_VENDEDOR').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_VENDEDOR').AsInteger;
                   MDO.Query.ParamByName('SITUACAO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('SITUACAO').AsString;
                   MDO.Query.ParamByName('NUMPED').AsString := DMMACS.cdsAtualizaBanco.FieldByName('NUMPED').AsString;
                   MDO.Query.ParamByName('COBRANCA').AsString := DMMACS.cdsAtualizaBanco.FieldByName('COBRANCA').AsString;
                   MDO.Query.ParamByName('EXPORTA').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('EXPORTA').AsInteger;
                   MDO.Query.ParamByName('TIPO').AsString := 'VND';
                   MDO.Query.ParamByName('COBRANCA').AsString := 'Carteira';

              Try
              		 MDO.Query.ExecSQL;
                   MDO.Transac.CommitRetaining;
              Except
                   ShowMessage('Falha ao inserir/editar PEDIDO DE VENDA, passando os parametros... ');
                   MDO.Transac.RollbackRetaining;
                   Result:=False;
                   Resultado :=False;
              End;

//
                   DMMACS.cdsAtualizaBanco1.Close;
                   xCodPedVen := IntToStr(DMMACS.cdsAtualizaBanco.FieldByName('COD_PEDVENDA').AsInteger);
                   DMMACS.cdsAtualizaBanco1.Filtered := False;
                   DMMACS.cdsAtualizaBanco1.Filter := 'COD_PEDVEN =' + QuotedStr(xCodPedVen);
                   DMMACS.cdsAtualizaBanco1.Filtered := True;
                   DMMACS.cdsAtualizaBanco1.Open;
                   DMMACS.cdsAtualizaBanco1.First;
                   DMMACS.cdsAtualizaBanco1.RecordCount;

                   While not DMMACS.cdsAtualizaBanco1.Eof do
                   begin

                        DMMACS.QConsulta1.Close;
                        DMMACS.QConsulta1.SQL.Clear;
                        DMMACS.QConsulta1.SQL.Add('Select * from ITENSPEDVEN');
                        DMMACS.QConsulta1.SQL.Add(' where ITENSPEDVEN.COD_PEDVEN = :parametro ' );
                        DMMACS.QConsulta1.ParamByName('PARAMETRO').AsInteger := xCodPedVendaAntigo;
                        DMMACS.QConsulta1.Open;

                        xCodItensPedVen := DMMACS.cdsAtualizaBanco1.FieldByName('COD_ITENSPEDVEN').AsInteger;
                        MDO.Query.Close;
                        MDO.Query.sql.clear;
                        if DMMACS.QConsulta1.IsEmpty
                        Then begin

                            MDO.QConsulta.Close;
                            MDO.QConsulta.SQL.Clear;
                            MDO.QConsulta.SQL.Add('  select gen_id(GEN_PEDVENDA_ID, 0) as codigo from rdb$database ');
                            MDO.QConsulta.Open;

                            MDO.Query.SQL.Add('insert into ITENSPEDVEN(COD_ITENSPEDVEN,COD_PEDVEN,COD_ESTOQUE,QTDEPROD,DESCPRO,COD_FUNCIONARIO,VALUNIT,VALCUSTO,VALORTOTAL,VALREP,COEFDIV,VALCOMP,');
                            MDO.Query.SQL.Add('   LUCPER,LUCMOE,DATA,COMISSAO,OPERACAO,LUCREL,VLRVENDBD,COD_UNIDADE,DTTROCA,COD_CST,DESCNF)');
                            MDO.Query.SQL.Add('values(:COD_ITENSPEDVEN,:COD_PEDVEN,:COD_ESTOQUE,:QTDEPROD,:DESCPRO,:COD_FUNCIONARIO,:VALUNIT,:VALCUSTO,:VALORTOTAL,:VALREP,:COEFDIV,:VALCOMP,');
                            MDO.Query.SQL.Add('   :LUCPER,:LUCMOE,:DATA,:COMISSAO,:OPERACAO,:LUCREL,:VLRVENDBD,:COD_UNIDADE,:DTTROCA,:COD_CST,:DESCNF)');
                            xCodPedVenda := MDO.QConsulta.FieldByName('codigo').AsInteger;

                        End
                        Else Begin
                        if not(DMMACS.QConsulta1.IsEmpty)Then begin
                            MDO.Query.SQL.Add('update ITENSPEDVEN set COD_PEDVEN=:COD_PEDVEN,COD_ESTOQUE=:COD_ESTOQUE,QTDEPROD=:QTDEPROD,DESCPRO=:DESCPRO,COD_FUNCIONARIO=:COD_FUNCIONARIO,');
                            MDO.Query.SQL.Add('   VALUNIT=:VALUNIT,VALCUSTO=:VALCUSTO,VALORTOTAL=:VALORTOTAL,VALREP=:VALREP,COEFDIV=:COEFDIV,VALCOMP=:VALCOMP,');
                            MDO.Query.SQL.Add('   LUCPER=:LUCPER,LUCMOE=:LUCMOE,DATA=:DATA,COMISSAO=:COMISSAO,OPERACAO=:OPERACAO,LUCREL=:LUCREL,VLRVENDBD=:VLRVENDBD');
                            MDO.Query.SQL.Add('   COD_UNIDADE=:COD_UNIDADE,DTTROCA=:DTTROCA,COD_CST=:COD_CST,DESCNF=:DESCNF');
                            MDO.Query.SQL.Add('where ITENSPEDVEN.COD_ITENSPEDVEN = :COD_ITENSPEDVEN');
                        End;
                      End;
                      SelecionaEstoque(DMMACS.cdsAtualizaBanco1.FieldByName('CONTRINT').AsString);

                      MDO.Query.ParamByName('COD_PEDVEN').AsInteger := xCodPedVenda;
                      MDO.Query.ParamByName('COD_ESTOQUE').AsInteger := xCodEstoque;
                      MDO.Query.ParamByName('QTDEPROD').AsCurrency := DMMACS.cdsAtualizaBanco1.FieldByName('QTDEPROD').AsCurrency;
                      MDO.Query.ParamByName('DESCPRO').AsFloat := DMMACS.cdsAtualizaBanco1.FieldByName('DESCPRO').AsFloat;
                      MDO.Query.ParamByName('COD_FUNCIONARIO').AsInteger := DMMACS.cdsAtualizaBanco1.FieldByName('COD_FUNCIONARIO').AsInteger;
                      MDO.Query.ParamByName('VALUNIT').AsCurrency := DMMACS.cdsAtualizaBanco1.FieldByName('VALUNIT').AsCurrency;
                      MDO.Query.ParamByName('VALCUSTO').AsCurrency := DMMACS.cdsAtualizaBanco1.FieldByName('VALCUSTO').AsCurrency;
                      MDO.Query.ParamByName('VALORTOTAL').AsCurrency := DMMACS.cdsAtualizaBanco1.FieldByName('VALORTOTAL').AsCurrency;
                      MDO.Query.ParamByName('VALREP').AsCurrency := DMMACS.cdsAtualizaBanco1.FieldByName('VALREP').AsCurrency;
                      MDO.Query.ParamByName('COEFDIV').AsCurrency := DMMACS.cdsAtualizaBanco1.FieldByName('COEFDIV').AsCurrency;
                      MDO.Query.ParamByName('VALCOMP').AsCurrency := DMMACS.cdsAtualizaBanco1.FieldByName('VALCOMP').AsCurrency;
                      MDO.Query.ParamByName('LUCPER').AsCurrency := DMMACS.cdsAtualizaBanco1.FieldByName('LUCPER').AsCurrency;
                      MDO.Query.ParamByName('LUCMOE').AsCurrency := DMMACS.cdsAtualizaBanco1.FieldByName('LUCMOE').AsCurrency;
                      MDO.Query.ParamByName('DATA').AsDateTime := DMMACS.cdsAtualizaBanco1.FieldByName('DATA').AsDateTime;
                      MDO.Query.ParamByName('COMISSAO').AsCurrency := DMMACS.cdsAtualizaBanco1.FieldByName('COMISSAO').AsCurrency;
                      MDO.Query.ParamByName('OPERACAO').AsString := DMMACS.cdsAtualizaBanco1.FieldByName('OPERACAO').AsString;
                      MDO.Query.ParamByName('LUCREL').AsCurrency := DMMACS.cdsAtualizaBanco1.FieldByName('LUCREL').AsCurrency;
                      MDO.Query.ParamByName('VLRVENDBD').AsCurrency := DMMACS.cdsAtualizaBanco1.FieldByName('VLRVENDBD').AsCurrency;
                      MDO.Query.ParamByName('COD_UNIDADE').AsInteger := DMMACS.cdsAtualizaBanco1.FieldByName('COD_UNIDADE').AsInteger;
                      MDO.Query.ParamByName('DTTROCA').AsDateTime := DMMACS.cdsAtualizaBanco1.FieldByName('DTTROCA').AsDateTime;
                      MDO.Query.ParamByName('COD_CST').AsInteger := DMMACS.cdsAtualizaBanco1.FieldByName('COD_CST').AsInteger;
                      MDO.Query.ParamByName('DESCNF').AsCurrency := DMMACS.cdsAtualizaBanco1.FieldByName('DESCNF').AsCurrency;
                      //ATUALIZAR ESTOQUE
                      AtualizarEstoqueItem(DMMACS.cdsAtualizaBanco1.FieldByName('QTDEPROD').AsCurrency, xCodEstoque);

                      Try
                          MDO.Query.ExecSQL;
                          MDO.Transac.CommitRetaining;
                      Except
                          ShowMessage('Falha ao inserir/editar ITENSPEDVENDA ');
                          MDO.Transac.RollbackRetaining;
                          Result:=False;
                          Resultado :=False;
                      End;
                      DMMACS.cdsAtualizaBanco1.Next;
                   End;

          DMMACS.cdsAtualizaBanco.Next;
          End;

    Except
        DMMACS.Transaction.RollbackRetaining;
        DMMACS.QTabela.Open;
        Resultado:= False;
        Result:=False;
    end;
End;

//Jônatas 07/08/2013 - Função de atualização da tabela de orçamento através da importação de xml
Function TFGeradorXML.AtualizarBDOrcamento: Boolean;
Var
	XCodOrcamento: String;
Begin
	Result:=True;
   Try
   	Try
			DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'OrcamentoXML.xml');
           DMMACS.cdsAtualizaBanco.First;
           DMMACS.cdsAtualizaBanco.RecordCount;

           DMMACS.cdsAtualizaBanco2.LoadFromFile(DirecUp + 'ItensOrcamentoXML.xml');
           DMMACS.cdsAtualizaBanco2.First;
           DMMACS.cdsAtualizaBanco2.RecordCount;

       Except
           Result := False;
           Resultado := False;
       End;

       While not DMMACS.cdsAtualizaBanco.Eof do
       Begin
       	 //Consulta a tabela orçamento
            DMMACS.QConsulta.Close;
            DMMACS.QConsulta.SQL.Clear;
            DMMACS.QConsulta.SQL.Add('Select * from ORCAMENTO');
            DMMACS.QConsulta.SQL.Add(' where ORCAMENTO.NUMORC = :parametro ' );
            DMMACS.QConsulta.ParamByName('PARAMETRO').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('NUMORC').AsInteger;
            DMMACS.QConsulta.Open;
            //faz a inserção ou atualização
            MDO.Query.Close;
            MDO.Query.sql.clear;
            if DMMACS.QConsulta.IsEmpty//inserção
            Then begin
                MDO.Query.SQL.Add('insert into ORCAMENTO(COD_ORCAMENTO, COD_USUARIO, COD_VENDEDOR, COD_FORMPAG, COD_LOJA, COD_CLIENTE, NOMECLI,');
                MDO.Query.SQL.Add(' CPFCNPJ, DTABERT, HRABERT, DTVALIDADE, NUMORC, OBS, TIPO, DESCSERV, DESCPROD, VLRSERV, VLRPROD, VLRTOTAL, VLRDESP,');
                MDO.Query.SQL.Add(' COD_RESTEC, VLRRESTEC, DESCPRODMOE, DESCRICAO, COD_EQUIPAMENTO, CONTATO, EXPORTA)');

                MDO.Query.SQL.Add(' values(:COD_ORCAMENTO, :COD_USUARIO, :COD_VENDEDOR, :COD_FORMPAG, :COD_LOJA, :COD_CLIENTE, :NOMECLI,');
                MDO.Query.SQL.Add(' :CPFCNPJ, :DTABERT, :HRABERT, :DTVALIDADE, :NUMORC, :OBS, :TIPO, :DESCSERV, :DESCPROD, :VLRSERV, :VLRPROD, :VLRTOTAL, :VLRDESP,');
                MDO.Query.SQL.Add(' :COD_RESTEC, :VLRRESTEC, :DESCPRODMOE, :DESCRICAO, :COD_EQUIPAMENTO, :CONTATO, :EXPORTA)');
                MDO.Query.ParamByName('COD_ORCAMENTO').AsInteger:=DMMACS.TCodigo.FieldByName('COD_ORCAMENTO').AsInteger;//Jônatas 12/08/2013 - pega o código da tabela código


                {Else Begin //Jônatas 12/08/2013 - Comentado para não mais permitir atualizações
                    if not(DMMACS.QConsulta.IsEmpty)//atualização
                    Then begin
                        MDO.Query.SQL.Add('update ORCAMENTO set COD_ORCAMENTO=:COD_ORCAMENTO, COD_USUARIO=:COD_USUARIO, COD_VENDEDOR=:COD_VENDEDOR, COD_FORMPAG=:COD_FORMPAG, COD_LOJA=:COD_LOJA, COD_CLIENTE=:COD_CLIENTE, NOMECLI=:NOMECLI,');
                        MDO.Query.SQL.Add(' CPFCNPJ=:CPFCNPJ, DTABERT=:DTABERT, HRABERT=:HRABERT, DTVALIDADE=:DTVALIDADE, NUMORC=:NUMORC, OBS=:OBS, TIPO=:TIPO, DESCSERV=:DESCSERV, DESCPROD=:DESCPROD, VLRSERV=:VLRSERV, VLRPROD=:VLRPROD, VLRTOTAL=:VLRTOTAL, VLRDESP=:VLRDESP,');
                        MDO.Query.SQL.Add(' COD_RESTEC=:COD_RESTEC, VLRRESTEC=:VLRRESTEC, DESCPRODMOE=:DESCPRODMOE, DESCRICAO=:DESCRICAO, COD_EQUIPAMENTO=:COD_EQUIPAMENTO, CONTATO=:CONTATO, EXPORTA=:EXPORTA');
                        MDO.Query.SQL.Add(' where ORCAMENTO.COD_ORCAMENTO = :COD_ORCAMENTO');
                        //MDO.Query.ParamByName('COD_ORCAMENTO').AsInteger:=DMMACS.QConsulta.FieldByName('COD_ORCAMENTO').AsInteger;//Jônatas 12/08/2013 - dúvidas aqui quanto a pegar do banco local ou do sml
                    End;
                End;}
                //procura pelo cliente
                SelecionaCliente(DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString);
                //passagem dos parâmetros
                MDO.Query.ParamByName('COD_USUARIO').AsInteger:=DMMacs.cdsAtualizaBanco.FieldByName('COD_USUARIO').AsInteger;
                MDO.Query.ParamByName('COD_VENDEDOR').AsInteger:=DMMacs.cdsAtualizaBanco.FieldByName('COD_VENDEDOR').AsInteger;
                MDO.Query.ParamByName('COD_FORMPAG').AsInteger:=DMMacs.cdsAtualizaBanco.FieldByName('COD_FORMPAG').AsInteger;
                MDO.Query.ParamByName('COD_LOJA').AsInteger:=DMMacs.cdsAtualizaBanco.FieldByName('COD_LOJA').AsInteger;
                MDO.Query.ParamByName('COD_CLIENTE').AsInteger:=xCodCliente;
                MDO.Query.ParamByName('NOMECLI').AsString:=DMMacs.cdsAtualizaBanco.FieldByName('NOMECLI').AsString;
                MDO.Query.ParamByName('CPFCNPJ').AsString:=DMMacs.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString;
                MDO.Query.ParamByName('DTABERT').AsDateTime:=DMMacs.cdsAtualizaBanco.FieldByName('DTABERT').AsDateTime;
                MDO.Query.ParamByName('HRABERT').AsDateTime:=DMMacs.cdsAtualizaBanco.FieldByName('HRABERT').AsDateTime;
                if DMMacs.cdsAtualizaBanco.FieldByName('DTVALIDADE').AsDateTime>0 then//Jônatas 12/08/2013 - evitar importar a data nula: 30/12/1899
                    MDO.Query.ParamByName('DTVALIDADE').AsDateTime:=DMMacs.cdsAtualizaBanco.FieldByName('DTVALIDADE').AsDateTime;
                MDO.Query.ParamByName('NUMORC').AsInteger:=DMMacs.cdsAtualizaBanco.FieldByName('NUMORC').AsInteger;
                MDO.Query.ParamByName('OBS').AsString:=DMMacs.cdsAtualizaBanco.FieldByName('OBS').AsString;
                MDO.Query.ParamByName('TIPO').AsString:=DMMacs.cdsAtualizaBanco.FieldByName('TIPO').AsString;
                MDO.Query.ParamByName('DESCSERV').AsCurrency:=DMMacs.cdsAtualizaBanco.FieldByName('DESCSERV').AsCurrency;
                MDO.Query.ParamByName('DESCPROD').AsCurrency:=DMMacs.cdsAtualizaBanco.FieldByName('DESCPROD').AsCurrency;
                MDO.Query.ParamByName('VLRSERV').AsCurrency:=DMMacs.cdsAtualizaBanco.FieldByName('VLRSERV').AsCurrency;
                MDO.Query.ParamByName('VLRPROD').AsCurrency:=DMMacs.cdsAtualizaBanco.FieldByName('VLRPROD').AsCurrency;
                MDO.Query.ParamByName('VLRTOTAL').AsCurrency:=DMMacs.cdsAtualizaBanco.FieldByName('VLRTOTAL').AsCurrency;
                MDO.Query.ParamByName('VLRDESP').AsCurrency:=DMMacs.cdsAtualizaBanco.FieldByName('VLRDESP').AsCurrency;
                MDO.Query.ParamByName('COD_RESTEC').AsInteger:=DMMacs.cdsAtualizaBanco.FieldByName('COD_RESTEC').AsInteger;
                MDO.Query.ParamByName('VLRRESTEC').AsCurrency:=DMMacs.cdsAtualizaBanco.FieldByName('VLRRESTEC').AsCurrency;
                MDO.Query.ParamByName('DESCPRODMOE').AsCurrency:=DMMacs.cdsAtualizaBanco.FieldByName('DESCPRODMOE').AsCurrency;
                MDO.Query.ParamByName('DESCRICAO').AsString:=DMMacs.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;
                MDO.Query.ParamByName('COD_EQUIPAMENTO').AsInteger:=DMMacs.cdsAtualizaBanco.FieldByName('COD_EQUIPAMENTO').AsInteger;
                MDO.Query.ParamByName('CONTATO').AsString:=DMMacs.cdsAtualizaBanco.FieldByName('CONTATO').AsString;
                Try
                    MDO.Query.ExecSQL;
                    MDO.Transac.CommitRetaining;
           	 Except
                    ShowMessage('Falha ao importar o Orçamento : Nº '+DMMacs.cdsAtualizaBanco.FieldByName('NUMORC').AsString);
                    MDO.Transac.RollbackRetaining;
                    Result:=False;
                    Resultado :=False;
                End;


               //faz a filtragem da segunda query que é a dos itens do orçamento
               DMMACS.cdsAtualizaBanco2.Close;
               XCodOrcamento := IntToStr(DMMacs.cdsAtualizaBanco.FieldByName('COD_ORCAMENTO').AsInteger);
               DMMACS.cdsAtualizaBanco2.Filtered := False;
               DMMACS.cdsAtualizaBanco2.Filter := 'COD_ORCAMENTO =' + QuotedStr(XCodOrcamento);
               DMMACS.cdsAtualizaBanco2.Filtered := True;
               DMMACS.cdsAtualizaBanco2.Open;
               DMMACS.cdsAtualizaBanco2.First;
               DMMACS.cdsAtualizaBanco2.RecordCount;

               While not DMMACS.cdsAtualizaBanco2.Eof do
               Begin
                  //consulta a tabela itprodorc
                  DMMACS.QConsulta1.Close;
                  DMMACS.QConsulta1.SQL.Clear;
                  DMMACS.QConsulta1.SQL.Add('Select * from ITPRODORC');
                  DMMACS.QConsulta1.SQL.Add(' left join orcamento on itprodorc.cod_orcamento = orcamento.cod_orcamento');
                  DMMACS.QConsulta1.SQL.Add(' where ITPRODORC.COD_ITPRODORC = :parametro ' );
                  DMMACS.QConsulta1.SQL.Add(' and orcamento.cod_orcamento= :codigo');
                  DMMACS.QConsulta1.ParamByName('PARAMETRO').AsInteger := DMMACS.cdsAtualizaBanco2.FieldByName('COD_ITPRODORC').AsInteger;
                  DMMACS.QConsulta1.ParamByName('codigo').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_ORCAMENTO').AsInteger;
                  DMMACS.QConsulta1.Open;

                  MDO.Query.Close;
                  MDO.Query.sql.clear;
                  if DMMACS.QConsulta1.IsEmpty
                  Then begin
                      MDO.Query.SQL.Add('insert into ITPRODORC(COD_ITPRODORC, COD_ORCAMENTO, COD_ESTOQUE, QTD, DESCONTO, VLRUNIT, VLRTOTAL, VALCUSTO, COEFDIV, VALCOMP,');
                      MDO.Query.SQL.Add(' LUCMOE, LUCPER, VALREP, LUCREL, COD_UNIDADE, QTDEMB, UNIDEMB, QTDNAEMB)');

                      MDO.Query.SQL.Add('values(:COD_ITPRODORC, :COD_ORCAMENTO, :COD_ESTOQUE, :QTD, :DESCONTO, :VLRUNIT, :VLRTOTAL, :VALCUSTO, :COEFDIV, :VALCOMP,');
                      MDO.Query.SQL.Add(' :LUCMOE, :LUCPER, :VALREP, :LUCREL, :COD_UNIDADE, :QTDEMB, :UNIDEMB, :QTDNAEMB)');
                      {Else Begin //Jônatas 12/08/2013 - Não mais atualizar, só inserir
                          if not(DMMACS.QConsulta1.IsEmpty)
                          Then begin
                              MDO.Query.SQL.Add('update ITPRODORC set COD_ITPRODORC=:COD_ITPRODORC, COD_ORCAMENTO=:COD_ORCAMENTO, COD_ESTOQUE=:COD_ESTOQUE , QTD=:QTD, DESCONTO=:DESCONTO, VLRUNIT=:VLRUNIT,');
                              MDO.Query.SQL.Add(' VLRTOTAL=:VLRTOTAL, VALCUSTO=:VALCUSTO, COEFDIV=:COEFDIV, VALCOMP=:VALCOMP,');
                              MDO.Query.SQL.Add(' LUCMOE=:LUCMOE, LUCPER=:LUCPER, VALREP=:VALREP, LUCREL=:LUCREL, COD_UNIDADE=:COD_UNIDADE, QTDEMB=:QTDEMB, UNIDEMB=:UNIDEMB, QTDNAEMB=:QTDNAEMB');
                              MDO.Query.SQL.Add(' where ITPRODORC.COD_ITPRODORC = :COD_ORCAMENTO');
                          End;
                      End;}
                      //passagem dos parâmetros
                      MDO.Query.ParamByName('COD_ITPRODORC').AsInteger := DMMACS.cdsAtualizaBanco2.FieldByName('COD_ITPRODORC').AsInteger;
                      MDO.Query.ParamByName('COD_ORCAMENTO').AsInteger := DMMACS.TCodigo.FieldByName('COD_ORCAMENTO').AsInteger;//pegar da tabela código
                      MDO.Query.ParamByName('COD_ESTOQUE').AsInteger:=DMMACS.cdsAtualizaBanco2.FieldByName('COD_ESTOQUE').AsInteger;
                      MDO.Query.ParamByName('QTD').AsCurrency:=DMMACS.cdsAtualizaBanco2.FieldByName('QTD').AsCurrency;
                      MDO.Query.ParamByName('DESCONTO').AsCurrency:=DMMACS.cdsAtualizaBanco2.FieldByName('DESCONTO').AsCurrency;
                      MDO.Query.ParamByName('VLRUNIT').AsCurrency:=DMMACS.cdsAtualizaBanco2.FieldByName('VLRUNIT').AsCurrency;
                      MDO.Query.ParamByName('VLRTOTAL').AsCurrency:=DMMACS.cdsAtualizaBanco2.FieldByName('VLRTOTAL').AsCurrency;
                      MDO.Query.ParamByName('VALCUSTO').AsCurrency:=DMMACS.cdsAtualizaBanco2.FieldByName('VALCUSTO').AsCurrency;
                      MDO.Query.ParamByName('COEFDIV').AsCurrency:=DMMACS.cdsAtualizaBanco2.FieldByName('COEFDIV').AsCurrency;
                      MDO.Query.ParamByName('VALCOMP').AsCurrency:=DMMACS.cdsAtualizaBanco2.FieldByName('VALCOMP').AsCurrency;
                      MDO.Query.ParamByName('LUCMOE').AsCurrency:=DMMACS.cdsAtualizaBanco2.FieldByName('LUCMOE').AsCurrency;
                      MDO.Query.ParamByName('LUCPER').AsCurrency:=DMMACS.cdsAtualizaBanco2.FieldByName('LUCPER').AsCurrency;
                      MDO.Query.ParamByName('VALREP').AsCurrency:=DMMACS.cdsAtualizaBanco2.FieldByName('VALREP').AsCurrency;
                      MDO.Query.ParamByName('LUCREL').AsCurrency:=DMMACS.cdsAtualizaBanco2.FieldByName('LUCREL').AsCurrency;
                      MDO.Query.ParamByName('COD_UNIDADE').AsInteger:=DMMACS.cdsAtualizaBanco2.FieldByName('COD_UNIDADE').AsInteger;
                      MDO.Query.ParamByName('QTDEMB').AsCurrency:=DMMACS.cdsAtualizaBanco2.FieldByName('QTDEMB').AsCurrency;
                      MDO.Query.ParamByName('UNIDEMB').AsInteger:=DMMACS.cdsAtualizaBanco2.FieldByName('UNIDEMB').AsInteger;
                      MDO.Query.ParamByName('QTDNAEMB').AsCurrency:=DMMACS.cdsAtualizaBanco2.FieldByName('QTDNAEMB').AsCurrency;
                      Try
                          MDO.Query.ExecSQL;
                          MDO.Transac.CommitRetaining;
                      Except
                          ShowMessage('Falha ao inserir em ITPRODORC ');
                          MDO.Transac.RollbackRetaining;
                          Result:=False;
                          Resultado :=False;
                      End;
                  End;
                  DMMACS.cdsAtualizaBanco2.Next;
               End;
               //Jônatas 12/08/2013 - Atualiza o valor do código
               DMMACS.TCodigo.Edit;
               DMMACS.TCodigo.FieldByName('COD_ORCAMENTO').AsInteger:=DMMACS.TCodigo.FieldByName('COD_ORCAMENTO').AsInteger+1;
               DMMACS.TCodigo.Post;
               Try
                   DMMACS.Transaction.CommitRetaining;
               Except
                   DMMACS.Transaction.RollbackRetaining;
               End;
            End
            Else//Jônatas 12/08/2013 - Caso o orçamento já esteja cadastrado no sistema
                showmessage('Orçamento: Nº '+DMMacs.cdsAtualizaBanco.FieldByName('NUMORC').AsString+' já se encontra no sistema');
                
            DMMACS.cdsAtualizaBanco.Next;
       End;
   Except
   	DMMACS.Transaction.RollbackRetaining;
       Resultado:= False;
       Result:=False;
   End;

End;

procedure TFGeradorXML.AtualizarBDFormaPagamento;
Begin

    Result:=True;
    Resultado := True;
    Try
        Try
           DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'FormaPagamentoXML.xml');
           DMMACS.cdsAtualizaBanco.First;
           DMMACS.cdsAtualizaBanco.RecordCount;
        Except

        End;

        while not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from FORMPAG');
               DMMACS.QConsulta.SQL.Add('where FORMPAG.DESCRICAO =:parametro');
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;
               DMMACS.QConsulta.Open;
               DMMACS.QTabela.Close;
               DMMACS.QTabela.sql.clear;
               if DMMACS.QConsulta.IsEmpty
               Then begin
                   DMMACS.QTabela.SQL.Add('insert into FORMPAG(COD_FORMPAG,ATIVADESC,COD_INTERNO,COD_LOJA,DESCFISC,DESCFORMPAG,DESCRICAO,INTERVALO,JUROAPLIC,MEDIADIAS,PRIMPARCELA,QUANTPARCELA,TIPO)');
                   DMMACS.QTabela.SQL.Add('values(:COD_FORMPAG,:ATIVADESC,:COD_INTERNO,:COD_LOJA,:DESCFISC,:DESCFORMPAG,:DESCRICAO,:INTERVALO,:JUROAPLIC,:MEDIADIAS,:PRIMPARCELA,:QUANTPARCELA,:TIPO)');
                   EncontraChavePrim('FORMPAG','COD_FORMPAG');
                   DMMACS.QTabela.ParamByName('COD_FORMPAG').AsInteger := XCodPrim;

               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty)Then begin
                       DMMACS.QTabela.SQL.Add('update FORMPAG set ATIVADESC=:ATIVADESC,COD_INTERNO=:COD_INTERNO,COD_LOJA=:COD_LOJA,DESCFISC=:DESCFISC,DESCFORMPAG=:DESCFORMPAG,');
                       DMMACS.QTabela.SQL.Add('   DESCRICAO=:DESCRICAO,INTERVALO=:INTERVALO,JUROAPLIC=:JUROAPLIC,MEDIADIAS=:MEDIADIAS,PRIMPARCELA=:PRIMPARCELA,');
                       DMMACS.QTabela.SQL.Add('   QUANTPARCELA=:QUANTPARCELA,TIPO=:TIPO');
                       DMMACS.QTabela.SQL.Add('where FORMPAG.DESCRICAO = :DESCRICAO');
                   End;
              End;
                   DMMACS.QTabela.ParamByName('ATIVADESC').AsBoolean := DMMACS.cdsAtualizaBanco.FieldByName('ATIVADESC').AsBoolean;
                   DMMACS.QTabela.ParamByName('COD_INTERNO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('COD_INTERNO').AsString;
                   DMMACS.QTabela.ParamByName('COD_LOJA').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_LOJA').AsInteger;
                   DMMACS.QTabela.ParamByName('DESCFISC').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCFISC').AsString;
                   DMMACS.QTabela.ParamByName('DESCFORMPAG').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('DESCFORMPAG').AsFloat;
                   DMMACS.QTabela.ParamByName('DESCRICAO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;
                   DMMACS.QTabela.ParamByName('INTERVALO').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('INTERVALO').AsInteger;
                   DMMACS.QTabela.ParamByName('JUROAPLIC').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('JUROAPLIC').AsFloat;
                   DMMACS.QTabela.ParamByName('MEDIADIAS').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('MEDIADIAS').AsInteger;
                   DMMACS.QTabela.ParamByName('PRIMPARCELA').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('PRIMPARCELA').AsInteger;
                   DMMACS.QTabela.ParamByName('QUANTPARCELA').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('QUANTPARCELA').AsInteger;
                   DMMACS.QTabela.ParamByName('TIPO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('TIPO').AsString;

              Try
              		DMMACS.QTabela.ExecSQL;
              		DMMACS.Transaction.CommitRetaining;
              Except
                   ShowMessage('Falha ao atualizar Forma de Pagamento');
                   DMMACS.Transaction.RollbackRetaining;
                   Result:=False;
                   Resultado :=False;
              End;
              DMMACS.cdsAtualizaBanco.Next;
          End;

    Except
        DMMACS.Transaction.RollbackRetaining;
        DMMACS.QTabela.Open;
        Resultado:= False;
        Result:=False;
    end;
End;

Function TFGeradorXML.AtualizarPessoa : Boolean;
Begin
    Result:=True;
    Try
        Try
           DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'PessoaXML.xml');
           DMMACS.cdsAtualizaBanco.First;
           DMMACS.cdsAtualizaBanco.RecordCount;
        Except
           Result := False;
           Resultado := False;
        End;

        while not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from PESSOA');
               DMMACS.QConsulta.SQL.Add(' where PESSOA.CPFCNPJ = :parametro ' );
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString;
               DMMACS.QConsulta.Open;
               //Pega o cod da pessoa da consulta, caso já tenha o cpf na tabela
               xCodPessoa := DMMACS.QConsulta.FieldByName('COD_PESSOA').AsInteger;
               //Se arquivo ja existe entao insere no banco senao update(atualiza)
               DMMACS.QTabela.Close;
               DMMACS.QTabela.sql.clear;
               if DMMACS.QConsulta.IsEmpty
               Then begin
                   DMMACS.QTabela.SQL.Add('insert into PESSOA(COD_PESSOA,NOME,ENDERECO,BAIRRO,COD_CIDADE,CEP,CPFCNPJ,DATA_INI,DTNASC,COD_REGIAO,COD_NATURAL,TELREL,');
                   DMMACS.QTabela.SQL.Add('   DIAANIVER,PROXIMIDADE,VLRCREDITO,COD_TRANSPORTADORA,ENDNUMERO,TEL01)');
                   DMMACS.QTabela.SQL.Add('values(:COD_PESSOA,:NOME,:ENDERECO,:BAIRRO,:COD_CIDADE,:CEP,:CPFCNPJ,:DATA_INI,:DTNASC,:COD_REGIAO,:COD_NATURAL,:TELREL,');
                   DMMACS.QTabela.SQL.Add('   :DIAANIVER,:PROXIMIDADE,:VLRCREDITO,:COD_TRANSPORTADORA,:ENDNUMERO,:TEL01)');
                   EncontraChavePrim('PESSOA','COD_PESSOA');
                   DMMACS.QTabela.ParamByName('COD_PESSOA').AsInteger := XCodPrim;
                   xCodPessoa := DMMACS.QTabela.ParamByName('COD_PESSOA').AsInteger;
               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty)Then begin
                       DMMACS.QTabela.SQL.Add('update PESSOA set COD_PESSOA=:COD_PESSOA,NOME=:NOME,ENDERECO=:ENDERECO,BAIRRO=:BAIRRO,COD_CIDADE=:COD_CIDADE,');
                       DMMACS.QTabela.SQL.Add('   CEP=:CEP,CPFCNPJ=:CPFCNPJ,DATA_INI=:DATA_INI,DTNASC=:DTNASC,COD_REGIAO=:COD_REGIAO,COD_NATURAL=:COD_NATURAL,');
                       DMMACS.QTabela.SQL.Add('   TELREL=:TELREL,DIAANIVER=:DIAANIVER,PROXIMIDADE=:PROXIMIDADE,VLRCREDITO=:VLRCREDITO,COD_TRANSPORTADORA=:COD_TRANSPORTADORA,');
                       DMMACS.QTabela.SQL.Add('   ENDNUMERO=:ENDNUMERO,TEL01=:TEL01');
                       DMMACS.QTabela.SQL.Add('where PESSOA.CPFCNPJ = :CPFCNPJ');
                   End;
              End;
                   DMMACS.QTabela.ParamByName('COD_PESSOA').AsInteger := xCodPessoa;
                   DMMACS.QTabela.ParamByName('NOME').AsString := DMMACS.cdsAtualizaBanco.FieldByName('NOME').AsString;
                   DMMACS.QTabela.ParamByName('ENDERECO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('ENDERECO').AsString;
                   DMMACS.QTabela.ParamByName('BAIRRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('BAIRRO').AsString;
                   DMMACS.QTabela.ParamByName('COD_CIDADE').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_CIDADE').AsInteger;
                   DMMACS.QTabela.ParamByName('CEP').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CEP').AsString;
                   DMMACS.QTabela.ParamByName('CPFCNPJ').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString;
                   DMMACS.QTabela.ParamByName('DATA_INI').AsDateTime := DMMACS.cdsAtualizaBanco.FieldByName('DATA_INI').AsDateTime;
                   DMMACS.QTabela.ParamByName('DTNASC').AsDateTime := DMMACS.cdsAtualizaBanco.FieldByName('DTNASC').AsDateTime;
                   DMMACS.QTabela.ParamByName('COD_REGIAO').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_REGIAO').AsInteger;
                   DMMACS.QTabela.ParamByName('COD_NATURAL').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_NATURAL').AsInteger;
                   DMMACS.QTabela.ParamByName('TELREL').AsString := DMMACS.cdsAtualizaBanco.FieldByName('TELREL').AsString;
                   DMMACS.QTabela.ParamByName('DIAANIVER').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('DIAANIVER').AsInteger;
                   DMMACS.QTabela.ParamByName('PROXIMIDADE').AsString := DMMACS.cdsAtualizaBanco.FieldByName('PROXIMIDADE').AsString;
                   DMMACS.QTabela.ParamByName('VLRCREDITO').AsCurrency := DMMACS.cdsAtualizaBanco.FieldByName('VLRCREDITO').AsCurrency;
                   DMMACS.QTabela.ParamByName('COD_TRANSPORTADORA').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_TRANSPORTADORA').AsInteger;
                   DMMACS.QTabela.ParamByName('ENDNUMERO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('ENDNUMERO').AsString;
                   DMMACS.QTabela.ParamByName('TEL01').AsString := DMMACS.cdsAtualizaBanco.FieldByName('TEL01').AsString;
              
              Try
              		DMMACS.QTabela.ExecSQL;
              		DMMACS.Transaction.CommitRetaining;
              Except
                   ShowMessage('Falha ao inserir/editar Pessoa ');
                   DMMACS.Transaction.RollbackRetaining;
                   Result:=False;
                   Resultado :=False;
              End;
              DMMACS.cdsAtualizaBanco.Next;
          End;

    Except
        DMMACS.Transaction.RollbackRetaining;
        DMMACS.QTabela.Open;
        Resultado:= False;
        Result:=False;
    end;


End;

Function TFGeradorXML.AtualizarPessoaFisica : Boolean;
Var
  aux : String;
Begin
     Result:=True;
     try
        Try
           DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'PessoaFisicaXML.xml');
           DMMACS.cdsAtualizaBanco.First;
           DMMACS.cdsAtualizaBanco.RecordCount;
        Except
           Result := False;
           Resultado := False;
        End;

        While not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from PESSOAF');
               DMMACS.QConsulta.SQL.Add(' left join pessoa on pessoaf.cod_pessoa = pessoa.cod_pessoa ');
               DMMACS.QConsulta.SQL.Add(' where pessoa.cpfcnpj = :parametro ');
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString;
               DMMACS.QConsulta.Open;
               EncontraParam(DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString);
               //Se arquivo ja existe entao insere no banco senao update(atualiza)
               DMMACS.QTabela.Close;
               DMMACS.QTabela.sql.clear;
               if DMMACS.QConsulta.IsEmpty
               Then begin
                   DMMACS.QTabela.SQL.Add('insert into PESSOAF(COD_PESSOA,COD_PESSOAF,RG,DATA_EXPED,ORGAO_EXPED,INSC_EST_AGRI)');
                   DMMACS.QTabela.SQL.Add('values(:COD_PESSOA,:COD_PESSOAF,:RG,:DATA_EXPED,:ORGAO_EXPED,:INSC_EST_AGRI)');
                   EncontraChavePrim('PESSOAF','COD_PESSOAF');
                   DMMACS.QTabela.ParamByName('COD_PESSOAF').AsInteger := XCodPrim;
                   //xCodPessoa := DMMACS.QTabela.ParamByName('COD_PESSOA').AsInteger;
               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty)Then begin
                       DMMACS.QTabela.SQL.Add(' update PESSOAF set COD_PESSOA=:COD_PESSOA, RG=:RG, DATA_EXPED=:DATA_EXPED,');
                       DMMACS.QTabela.SQL.Add(' ORGAO_EXPED=:ORGAO_EXPED, INSC_EST_AGRI=:INSC_EST_AGRI');
                       DMMACS.QTabela.SQL.Add(' where PESSOAF.COD_PESSOA = :COD_PESSOA AND PESSOAF.cod_PESSOAF =:COD_PESSOAF');
                   End;
              End;
              //DMMACS.QTabela.ParamByName('cod_PESSOAF').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('cod_PESSOAF').AsInteger;
              DMMACS.QTabela.ParamByName('COD_PESSOA').AsInteger := xCodPessoa;
              DMMACS.QTabela.ParamByName('RG').AsString := DMMACS.cdsAtualizaBanco.FieldByName('RG').AsString;
              DMMACS.QTabela.ParamByName('DATA_EXPED').AsDateTime := DMMACS.cdsAtualizaBanco.FieldByName('DATA_EXPED').AsDateTime;
              DMMACS.QTabela.ParamByName('ORGAO_EXPED').AsString := DMMACS.cdsAtualizaBanco.FieldByName('ORGAO_EXPED').AsString;
              DMMACS.QTabela.ParamByName('INSC_EST_AGRI').AsString := DMMACS.cdsAtualizaBanco.FieldByName('INSC_EST_AGRI').AsString;
              
              Try
              		DMMACS.QTabela.ExecSQL;
              		DMMACS.Transaction.CommitRetaining;
              Except
                   ShowMessage('Falha ao inserir/editar Pessoa Fisica ');
                   DMMACS.Transaction.RollbackRetaining;
                   Result:=False;
                   Resultado:= False;
              End;
              DMMACS.cdsAtualizaBanco.Next;
          End;

     Except
           DMMACS.Transaction.RollbackRetaining;
           DMMACS.QTabela.Open;
           Resultado:= False;
           Result:=False;
     end;
End;

Function TFGeradorXML.AtualizarPessoaJuridica : Boolean;
Begin
    Result:=True;
    Try
        try
           DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'PessoaJuridicaXML.xml');
           DMMACS.cdsAtualizaBanco.First;
           DMMACS.cdsAtualizaBanco.RecordCount;
        Except
           Result := False;
           Resultado := False;
        End;
        while not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from PESSOAJ');
               DMMACS.QConsulta.SQL.Add(' left join pessoa on pessoaj.cod_pessoa = pessoa.cod_pessoa ' );
               DMMACS.QConsulta.SQL.Add(' where pessoa.cpfcnpj = :parametro ' );
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString;
               DMMACS.QConsulta.Open;
               EncontraParam(DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString);
               DMMACS.QTabela.Close;
               DMMACS.QTabela.sql.clear;
               if DMMACS.QConsulta.IsEmpty
               Then begin
                   DMMACS.QTabela.SQL.Add('insert into PESSOAJ(COD_PESSOAJ,COD_PESSOA,INSC_EST, RAZAO_SOCIAL,INSC_MUN)');
                   DMMACS.QTabela.SQL.Add('values(:COD_PESSOAJ,:COD_PESSOA,:INSC_EST, :RAZAO_SOCIAL, :INSC_MUN)');
                   EncontraChavePrim('PESSOAJ','COD_PESSOAJ');
                   DMMACS.QTabela.ParamByName('COD_PESSOAJ').AsInteger := XCodPrim;
               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty)Then begin
                       DMMACS.QTabela.SQL.Add(' update PESSOAJ set COD_PESSOA=:COD_PESSOA,INSC_EST=:INSC_EST,RAZAO_SOCIAL=:RAZAO_SOCIAL,INSC_MUN=:INSC_MUN');
                       DMMACS.QTabela.SQL.Add(' where PESSOAJ.cod_PESSOA =:COD_PESSOA');
                       DMMACS.QTabela.SQL.Add(' AND PESSOAJ.cod_PESSOAJ = :cod_PESSOAJ');
                   End;
              End;
                   DMMACS.QTabela.ParamByName('COD_PESSOA').AsInteger := xCodPessoa;
                   DMMACS.QTabela.ParamByName('INSC_EST').AsString := DMMACS.cdsAtualizaBanco.FieldByName('INSC_EST').AsString;
                   DMMACS.QTabela.ParamByName('RAZAO_SOCIAL').AsString := DMMACS.cdsAtualizaBanco.FieldByName('RAZAO_SOCIAL').AsString;
                   DMMACS.QTabela.ParamByName('INSC_MUN').AsString := DMMACS.cdsAtualizaBanco.FieldByName('INSC_MUN').AsString;
              Try
              		DMMACS.QTabela.ExecSQL;
              		DMMACS.Transaction.CommitRetaining;
              Except
                   ShowMessage('Falha ao inserir/editar Pessoa Juridica ');
                   DMMACS.Transaction.RollbackRetaining;
                   Result:=False;
                   Resultado:= False;
              End;
              DMMACS.cdsAtualizaBanco.Next;
          End;
          
    Except
           DMMACS.Transaction.RollbackRetaining;
           Resultado:= False;
           Result:=False;
    end;
End;

Function TFGeradorXML.AtualizarCliente : Boolean;
Begin
    Result:=True;
    Try
        try
           DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'ClienteXML.xml');
           DMMACS.cdsAtualizaBanco.First;
           DMMACS.cdsAtualizaBanco.RecordCount;
        Except
           Result := False;
           Resultado := False;
        End;

        while not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from CLIENTE');
               DMMACS.QConsulta.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa ' );
               DMMACS.QConsulta.SQL.Add(' where pessoa.cpfcnpj = :parametro ' );
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString;
               DMMACS.QConsulta.Open;
               EncontraParam(DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString);
               //Se arquivo ja existe entao insere no banco senao update(atualiza)
               DMMACS.QTabela.Close;
               DMMACS.QTabela.sql.clear;
               if DMMACS.QConsulta.IsEmpty
               Then begin
                   DMMACS.QTabela.SQL.Add('insert into CLIENTE(COD_CLIENTE,COD_PESSOA,COD_INTERNO,DATA_CAD,LIM_CRED,COD_VENDEDOR,ATIVO,OBS,SCPC,');
                   DMMACS.QTabela.SQL.Add('   DIAVENCIMENTO,OBSFINANCEIRA,VENDAVISTA,DIASFREQVENDA,FREQVENDA,ENDENTRAGA,COD_FORMPAG)');
                   DMMACS.QTabela.SQL.Add('values(:COD_CLIENTE,:COD_PESSOA,:COD_INTERNO,:DATA_CAD,:LIM_CRED,:COD_VENDEDOR,:ATIVO,:OBS,:SCPC,');
                   DMMACS.QTabela.SQL.Add('   :DIAVENCIMENTO,:OBSFINANCEIRA,:VENDAVISTA,:DIASFREQVENDA,:FREQVENDA,:ENDENTRAGA,:COD_FORMPAG)');
                   EncontraChavePrim('CLIENTE','COD_CLIENTE');
                   DMMACS.QTabela.ParamByName('COD_CLIENTE').AsInteger := XCodPrim;
               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty)Then begin
                       DMMACS.QTabela.SQL.Add(' update CLIENTE set COD_PESSOA=:COD_PESSOA,COD_INTERNO=:COD_INTERNO,DATA_CAD=:DATA_CAD,LIM_CRED=:LIM_CRED,');
                       DMMACS.QTabela.SQL.Add('     COD_VENDEDOR=:COD_VENDEDOR,ATIVO=:ATIVO,OBS=:OBS,SCPC=:SCPC,DIAVENCIMENTO=:DIAVENCIMENTO,OBSFINANCEIRA=:OBSFINANCEIRA,VENDAVISTA=:VENDAVISTA,');
                       DMMACS.QTabela.SQL.Add('     DIASFREQVENDA=:DIASFREQVENDA,FREQVENDA=:FREQVENDA,ENDENTRAGA=:ENDENTRAGA,COD_FORMPAG=:COD_FORMPAG');
                       DMMACS.QTabela.SQL.Add(' where CLIENTE.COD_PESSOA=:COD_PESSOA');//AND CLIENTE.COD_CLIENTE=:COD_CLIENTE
                   End;
              End;
              DMMACS.QTabela.ParamByName('COD_PESSOA').AsInteger := xCodPessoa;
              DMMACS.QTabela.ParamByName('COD_INTERNO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('COD_INTERNO').AsString;
              DMMACS.QTabela.ParamByName('DATA_CAD').AsDateTime := DMMACS.cdsAtualizaBanco.FieldByName('DATA_CAD').AsDateTime;
              DMMACS.QTabela.ParamByName('LIM_CRED').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('LIM_CRED').AsFloat;
              DMMACS.QTabela.ParamByName('COD_VENDEDOR').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_VENDEDOR').AsInteger;
              DMMACS.QTabela.ParamByName('ATIVO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('ATIVO').AsString;
              DMMACS.QTabela.ParamByName('OBS').AsString := DMMACS.cdsAtualizaBanco.FieldByName('OBS').AsString;
              DMMACS.QTabela.ParamByName('SCPC').AsString := DMMACS.cdsAtualizaBanco.FieldByName('SCPC').AsString;
              DMMACS.QTabela.ParamByName('DIAVENCIMENTO').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('DIAVENCIMENTO').AsInteger;
              DMMACS.QTabela.ParamByName('OBSFINANCEIRA').AsString := DMMACS.cdsAtualizaBanco.FieldByName('OBSFINANCEIRA').AsString;
              DMMACS.QTabela.ParamByName('VENDAVISTA').AsString:= DMMACS.cdsAtualizaBanco.FieldByName('VENDAVISTA').AsString;
              DMMACS.QTabela.ParamByName('DIASFREQVENDA').AsString:= DMMACS.cdsAtualizaBanco.FieldByName('DIASFREQVENDA').AsString;
              DMMACS.QTabela.ParamByName('FREQVENDA').AsString:= DMMACS.cdsAtualizaBanco.FieldByName('FREQVENDA').AsString;
              DMMACS.QTabela.ParamByName('ENDENTRAGA').AsString:= DMMACS.cdsAtualizaBanco.FieldByName('ENDENTRAGA').AsString;
              DMMACS.QTabela.ParamByName('COD_FORMPAG').AsInteger:= DMMACS.cdsAtualizaBanco.FieldByName('COD_FORMPAG').AsInteger;


              Try
              		DMMACS.QTabela.ExecSQL;
              		DMMACS.Transaction.CommitRetaining;

              Except
                   ShowMessage('Falha ao inserir/editar Cliente ');
                   DMMACS.Transaction.RollbackRetaining;
                   Result:=False;
                   Resultado:=False;
              End;
              DMMACS.cdsAtualizaBanco.Next;
          End;

    Except
       DMMACS.Transaction.RollbackRetaining;
       Resultado:=False;
       Result:=False;
       ShowMessage('Falha ao atualizar Cliente');
    end;
End;

Function TFGeradorXML.AtualizarTelefone : Boolean;
Begin
    Result:=True;
    Try
        try
           DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'TelefoneXML.xml');
           DMMACS.cdsAtualizaBanco.First;
           DMMACS.cdsAtualizaBanco.RecordCount;
        Except
           Result := False;
           Resultado := False;
        End;
        While not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from TELEFONE');
               DMMACS.QConsulta.SQL.Add(' left join pessoa on telefone.cod_pessoa = pessoa.cod_pessoa ' );
               DMMACS.QConsulta.SQL.Add(' where pessoa.CPFCNPJ = :parametro ' );
               DMMACS.QConsulta.SQL.Add(' and telefone.DESCRICAO = :parametro1 ' );
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString;
               DMMACS.QConsulta.ParamByName('PARAMETRO1').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;

               DMMACS.QConsulta.Open;
               EncontraParam(DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString);
               //Se arquivo ja existe entao insere no banco senao update(atualiza)
               DMMACS.QTabela.Close;
               DMMACS.QTabela.sql.clear;
               if DMMACS.QConsulta.IsEmpty
               Then begin
                   DMMACS.QTabela.SQL.Add('insert into TELEFONE(COD_PESSOA,COD_TELEFONE, NUMERO, DESCRICAO, CONTATO)');
                   DMMACS.QTabela.SQL.Add('values(:COD_PESSOA,:COD_TELEFONE, :NUMERO, :DESCRICAO, :CONTATO)');
                   EncontraChavePrim('TELEFONE','COD_TELEFONE');
                   DMMACS.QTabela.ParamByName('COD_TELEFONE').AsInteger := XCodPrim;
               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty)Then begin
                       DMMACS.QTabela.SQL.Add(' update TELEFONE set COD_TELEFONE =:COD_TELEFONE, COD_PESSOA =:COD_PESSOA, NUMERO =:NUMERO,');
                       DMMACS.QTabela.SQL.Add('DESCRICAO =:DESCRICAO, CONTATO =:CONTATO');
                       DMMACS.QTabela.SQL.Add(' where TELEFONE.COD_PESSOA = :COD_PESSOA');
                       DMMACS.QTabela.SQL.Add(' AND TELEFONE.COD_TELEFONE = :COD_TELEFONE');
                   End;
              End;
              DMMACS.QTabela.ParamByName('COD_PESSOA').AsInteger := xCodPessoa;
              DMMACS.QTabela.ParamByName('NUMERO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('NUMERO').AsString;
              DMMACS.QTabela.ParamByName('DESCRICAO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;
              DMMACS.QTabela.ParamByName('CONTATO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CONTATO').AsString;

              Try
              		DMMACS.QTabela.ExecSQL;
              		DMMACS.Transaction.CommitRetaining;
              Except
                   ShowMessage('Falha ao inserir/editar Telefone '+DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString);
                   DMMACS.Transaction.RollbackRetaining;
                   Result:=False;
                   Resultado:=False;
              End;
              DMMACS.cdsAtualizaBanco.Next;
          End;

    Except
        DMMACS.Transaction.RollbackRetaining;
        Resultado:=False;
        Result:=False;
        ShowMessage('Falha ao atualizar Telefone');
    end;
End;

Function TFGeradorXML.AtualizarEmail : Boolean;
Begin
     Result:=True;
     Try
          Try
              DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'EmailXML.xml');
              DMMACS.cdsAtualizaBanco.First;
              DMMACS.cdsAtualizaBanco.RecordCount;
          Except
              Result := False;
              Exit;
          End;

          while not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from EMAIL');
               DMMACS.QConsulta.SQL.Add(' left join pessoa on email.cod_pessoa = pessoa.cod_pessoa ' );
               DMMACS.QConsulta.SQL.Add(' where pessoa.cpfcnpj = :parametro ' );
               DMMACS.QConsulta.SQL.Add(' and email.DESCRICAO = :parametro1 ' );
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString;
               DMMACS.QConsulta.ParamByName('PARAMETRO1').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;
               DMMACS.QConsulta.Open;
               EncontraParam(DMMACS.cdsAtualizaBanco.FieldByName('CPFCNPJ').AsString);
               DMMACS.QTabela.Close;
               DMMACS.QTabela.sql.clear;
               if DMMACS.QConsulta.IsEmpty
               Then begin
                   DMMACS.QTabela.SQL.Add('insert into EMAIL(COD_PESSOA,COD_EMAIL, EMAIL, DESCRICAO)');
                   DMMACS.QTabela.SQL.Add(' values(:COD_PESSOA,:COD_EMAIL, :EMAIL, :DESCRICAO)');
                   EncontraChavePrim('EMAIL','COD_EMAIL');
                   DMMACS.QTabela.ParamByName('COD_EMAIL').AsInteger := XCodPrim;

               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty)Then begin
                       DMMACS.QTabela.SQL.Add(' update EMAIL set COD_EMAIL = :COD_EMAIL, COD_PESSOA = :COD_PESSOA, EMAIL =:EMAIL, DESCRICAO=:DESCRICAO');
                       DMMACS.QTabela.SQL.Add(' where EMAIL.COD_PESSOA = :COD_PESSOA');
                       DMMACS.QTabela.SQL.Add(' AND EMAIL.COD_EMAIL = :COD_EMAIL');
                   End;
              End;
              DMMACS.QTabela.ParamByName('COD_PESSOA').AsInteger := xCodPessoa;
              DMMACS.QTabela.ParamByName('COD_EMAIL').AsString := DMMACS.cdsAtualizaBanco.FieldByName('COD_EMAIL').AsString;
              DMMACS.QTabela.ParamByName('EMAIL').AsString := DMMACS.cdsAtualizaBanco.FieldByName('EMAIL').AsString;
              DMMACS.QTabela.ParamByName('DESCRICAO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;

              Try
              		DMMACS.QTabela.ExecSQL;
              		DMMACS.Transaction.CommitRetaining;
              Except
                   ShowMessage('Falha ao atualizar Email');
                   DMMACS.Transaction.RollbackRetaining;
                   Result:=False;
                   Resultado:=False;
              End;
              DMMACS.cdsAtualizaBanco.Next;
          End;
     Except
        DMMACS.Transaction.RollbackRetaining;
        Resultado:=False;
        Result:=False;
        ShowMessage('Falha ao atualizar Email');
     end;
End;

//Seleciona a chave primaria da tabela
Procedure TFGeradorXML.EncontraChavePrim(XTable: String; XCampo: String);
var
	XControl: Integer;
Begin
   XControl := 0;
   DMMACS.QConsulta1.Close;
   DMMACS.QConsulta1.SQL.Clear;
   DMMACS.QConsulta1.SQL.Add(' select max('+XTable+'.'+XCampo+') as codigo from '+XTable);
   DMMACS.QConsulta1.Open;
   XCodPrim:= DMMACS.QConsulta1.FieldByName('CODIGO').asInteger+1;

   While (XControl <> 1)do
   Begin
       DMMACS.QConsulta2.Close;
   	DMMACS.QConsulta2.SQL.Clear;
  		DMMACS.QConsulta2.SQL.Add('Select * from '+XTable);
  		DMMACS.QConsulta2.SQL.Add(' where '+XTable+'.'+XCampo+' = :parametro');
  		DMMACS.QConsulta2.ParamByName('PARAMETRO').AsInteger := XCodPrim;
   	DMMACS.QConsulta2.Open;
       if not(DMMACS.QConsulta2.IsEmpty)Then Begin
   		XControl := 0;
           XCodPrim:=XCodPrim+1;
       End
   	Else
   		XControl := 1;
   end;

End;

Function TFGeradorXML.AtualizarProduto: Boolean;
Begin
     Result:=True;
     Try
          Try
              DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'ProdutoXML.xml');
              DMMACS.cdsAtualizaBanco.First;
              DMMACS.cdsAtualizaBanco.RecordCount;
          Except
              Result := False;
              Resultado := False;
              ShowMessage('Falha ao ler xml do Produto');
          End;
          DMMACS.QTabela.Close;
          while not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QTabela.SQL.Clear;
               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from PRODUTO');
               DMMACS.QConsulta.SQL.Add(' where PRODUTO.DESCRICAO = :PARAMETRO');
               DMMACS.QConsulta.SQL.Add(' and PRODUTO.COD_INTERNO =:PARAMETRO2');
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;
               DMMACS.QConsulta.ParamByName('PARAMETRO2').AsString := DMMACS.cdsAtualizaBanco.FieldByName('COD_INTERNO').AsString;
               DMMACS.QConsulta.Open;
               EncontraParProd(DMMACS.cdsAtualizaBanco.FieldByName('GRUPOPROD').AsString, DMMACS.cdsAtualizaBanco.FieldByName('SUBGRUPOPROD').AsString);

               if DMMACS.QConsulta.IsEmpty
               Then begin
                   DMMACS.QTabela.SQL.Add('insert into PRODUTO(COD_PRODUTO,APLICACAO,COD_CST,COD_GRUPOPROD,COD_INTERNO,COD_LOJA,');
                   DMMACS.QTabela.SQL.Add('     COD_SUBGRUPOPROD,DESCRICAO)');
                   DMMACS.QTabela.SQL.Add(' values (:COD_PRODUTO,:APLICACAO,:COD_CST,:COD_GRUPOPROD,:COD_INTERNO,:COD_LOJA,');
                   DMMACS.QTabela.SQL.Add('     :COD_SUBGRUPOPROD,:DESCRICAO)');
                   EncontraChavePrim('PRODUTO','COD_PRODUTO');
                   DMMACS.QTabela.ParamByName('COD_PRODUTO').AsInteger := XCodPrim;
               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty) Then begin
                       DMMACS.QTabela.SQL.Add('update PRODUTO set APLICACAO=:APLICACAO,COD_CST=:COD_CST,COD_GRUPOPROD=:COD_GRUPOPROD,COD_INTERNO=:COD_INTERNO,');
                       DMMACS.QTabela.SQL.Add('     COD_LOJA=:COD_LOJA,COD_SUBGRUPOPROD=:COD_SUBGRUPOPROD,DESCRICAO=:DESCRICAO');
                       DMMACS.QTabela.SQL.Add(' where PRODUTO.DESCRICAO = :DESCRICAO');
                   End;
               End;
               DMMACS.QTabela.ParamByName('APLICACAO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('APLICACAO').AsString;
               DMMACS.QTabela.ParamByName('COD_CST').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_CST').AsInteger;
               DMMACS.QTabela.ParamByName('COD_GRUPOPROD').AsInteger := XCodGrupo;
               DMMACS.QTabela.ParamByName('COD_INTERNO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('COD_INTERNO').AsString;
               DMMACS.QTabela.ParamByName('COD_LOJA').AsInteger := XcodLoja;
               DMMACS.QTabela.ParamByName('COD_SUBGRUPOPROD').AsInteger := XCodSubGrupo;
               DMMACS.QTabela.ParamByName('DESCRICAO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;
               Try
               	  DMMACS.QTabela.ExecSQL;
               	  DMMACS.Transaction.CommitRetaining;
               Except
				          ShowMessage('Falha ao inserir/editar Produto '+DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString);
                  Result:=False;
                  Resultado := False;
               	  DMMACS.Transaction.RollbackRetaining;
               End;
               	
               DMMACS.cdsAtualizaBanco.Next;
           end;

      except
           DMMACS.Transaction.RollbackRetaining;
           DMMACS.QTabela.Open;
           Resultado:= False;
           Result:=False;
           ShowMessage('Erro ao atualizar o PRODUTO');
      end;

End;

Function TFGeradorXML.AtualizarSubProduto : Boolean;
Var
    Flag: Integer;
    aux : String;
Begin
     Result:=True;
     Try
          Try
              DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'SubProdutoXML.xml');
              DMMACS.cdsAtualizaBanco.First;
              DMMACS.cdsAtualizaBanco.RecordCount;
          Except
              Result := False;
              Resultado := False;
              ShowMessage('Falha ao ler xml do SubProduto');
          End;
          while not DMMACS.cdsAtualizaBanco.Eof do
          begin

               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from SUBPRODUTO');
               DMMACS.QConsulta.SQL.Add(' where SUBPRODUTO.CONTRINT = :parametro');
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CONTRINT').AsString;
               DMMACS.QConsulta.Open;
               EncontraParSubpro(DMMACS.cdsAtualizaBanco.FieldByName('COD_SIT_TRIB').AsString,
                                 DMMACS.cdsAtualizaBanco.FieldByName('INDICEECF').AsString,
                                 DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString);
               DMMACS.QTabela.Close;
               DMMACS.QTabela.SQL.Clear;
               if DMMACS.QConsulta.IsEmpty
               Then begin
               	//Verifica se já existe um subproduto com o mesmo codigo
                   Flag:=0;
                   While Flag=0 do
                   Begin
                       DMMACS.QConsulta.Close;
                       DMMACS.QConsulta.SQL.Clear;
                       DMMACS.QConsulta.SQL.Add(' select * from subproduto where subproduto.cod_subproduto=:codigo ');
                       DMMACS.QConsulta.ParamByName('codigo').AsInteger:=XCod_NovoSubProduto;
                       DMMACS.QConsulta.Open;
                       If DMMACS.QConsulta.IsEmpty
                       Then Begin
                               Flag:=1;
                               XCod_NovoSubProduto:=XCod_NovoSubProduto+1;
                       End;
                   End;
                   DMMACS.QTabela.SQL.Add('insert into SUBPRODUTO(COD_SUBPRODUTO,CLASSIFICACAO,CODBARRA,CODPRODFABR,COD_CST,COD_INTERNO,');
                   DMMACS.QTabela.SQL.Add('     COD_PRODUTO,COD_UNIDCOMPRA,COD_UNIDVENDA,CONTRINT,COR,DESCRICAO,FABRICANTE,MARCA)');
                   DMMACS.QTabela.SQL.Add('values (:COD_SUBPRODUTO,:CLASSIFICACAO,:CODBARRA,:CODPRODFABR,:COD_CST,:COD_INTERNO,');
                   DMMACS.QTabela.SQL.Add('     :COD_PRODUTO,:COD_UNIDCOMPRA,:COD_UNIDVENDA,:CONTRINT,:COR,:DESCRICAO,:FABRICANTE,:MARCA)');
                   DMMACS.QTabela.ParamByName('COD_SUBPRODUTO').AsInteger := XCod_NovoSubProduto;
                   EncontraChavePrim('SUBPRODUTO','COD_SUBPRODUTO');
                   DMMACS.QTabela.ParamByName('COD_SUBPRODUTO').AsInteger := XCodPrim;
                   XCod_NovoSubProduto:=XCod_NovoSubProduto+1;
               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty)
                   Then begin
                       DMMACS.QTabela.SQL.Add('update SUBPRODUTO set CLASSIFICACAO = :CLASSIFICACAO,CODBARRA = :CODBARRA,CODPRODFABR = :CODPRODFABR,COD_CST = :COD_CST,');
                       DMMACS.QTabela.SQL.Add('COD_INTERNO = :COD_INTERNO,COD_PRODUTO = :COD_PRODUTO,COD_UNIDCOMPRA = :COD_UNIDCOMPRA,COD_UNIDVENDA = :COD_UNIDVENDA,');
                       DMMACS.QTabela.SQL.Add('CONTRINT = :CONTRINT,COR = :COR,DESCRICAO = :DESCRICAO,FABRICANTE = :FABRICANTE,MARCA = :MARCA');
                       DMMACS.QTabela.SQL.Add(' where SUBPRODUTO.CONTRINT = :CONTRINT');
                   End;
               End;
               If DMMACS.cdsAtualizaBanco.FieldByName('CONTRINT').AsString=''
               Then Begin
                   Result:=False;
                   Resultado := False;
                   ShowMessage('Falha: Param Contrint Nulo');
                   Exit;
               End;
               DMMACS.QTabela.ParamByName('CONTRINT').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CONTRINT').AsString;
               DMMACS.QTabela.ParamByName('CLASSIFICACAO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CLASSIFICACAO').AsString;
               DMMACS.QTabela.ParamByName('CODBARRA').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CODBARRA').AsString;
               DMMACS.QTabela.ParamByName('CODPRODFABR').AsString := DMMACS.cdsAtualizaBanco.FieldByName('CODPRODFABR').AsString;
               If XCodCst<=0 Then
                   XCodCst:=1;
               DMMACS.QTabela.ParamByName('COD_CST').AsInteger := XCodCst;
               DMMACS.QTabela.ParamByName('COD_INTERNO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('COD_INTERNO_ST').AsString;
               If XCodProd<=0 Then
                   XCodProd:=1;
               DMMACS.QTabela.ParamByName('COD_PRODUTO').AsInteger := XCodProd;
               DMMACS.QTabela.ParamByName('COD_UNIDCOMPRA').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_UNIDCOMPRA').AsInteger;
               DMMACS.QTabela.ParamByName('COD_UNIDVENDA').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_UNIDVENDA').AsInteger;
               DMMACS.QTabela.ParamByName('COR').AsString := DMMACS.cdsAtualizaBanco.FieldByName('COR').AsString;
               DMMACS.QTabela.ParamByName('DESCRICAO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO2').AsString;
               DMMACS.QTabela.ParamByName('FABRICANTE').AsString := DMMACS.cdsAtualizaBanco.FieldByName('FABRICANTE').AsString;
               DMMACS.QTabela.ParamByName('MARCA').AsString := DMMACS.cdsAtualizaBanco.FieldByName('MARCA').AsString;

               Try
               	DMMACS.QTabela.ExecSQL;
               	DMMACS.Transaction.CommitRetaining;

               Except
               	MessageDlg('Erro ao atualizar subproduto de Controle '+DMMACS.cdsAtualizaBanco.FieldByName('CONTRINT').AsString, mtWarning, [mbOK], 0);
                   Result:=False;
                   Resultado := False;
               End;
               DMMACS.cdsAtualizaBanco.Next;
           end;
      except
           DMMACS.Transaction.RollbackRetaining;
           Result:=False;
           Resultado := False;
           ShowMessage('Erro ao atualizar o SUBPRODUTO');
      end;

End;

Function TFGeradorXML.AtualizarEstoque : Boolean;
Begin
     Result:=True;
     try
     		  Try
              DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'EstoqueXML.xml');
              DMMACS.cdsAtualizaBanco.First;
              DMMACS.cdsAtualizaBanco.RecordCount;
          Except
              Result := False;
              Resultado := False;
              ShowMessage('Falha ao ler xml do Estoque');
          End;

          DMMACS.QTabela.Close;

          while not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QTabela.SQL.Clear;
               EncontraParEstoque(DMMACS.cdsAtualizaBanco.FieldByName('CONTRINT').AsString);
               if DMMACS.QConsulta2.IsEmpty Then begin
                   DMMACS.QTabela.SQL.Add('insert into ESTOQUE(COD_ESTOQUE,COD_SUBPROD,COD_LOJA,AVPPROAT,AVPPROVAR,AVVPROAT,AVVPROVAR,');
                   DMMACS.QTabela.SQL.Add('     CVPPROAT,CVPPROVAR,CVVPROAT,CVVPROVAR,DATAOFERTA,DESCONTO,DTCAD,MARGEMSEG,PERCMARGSEG,');
                   DMMACS.QTabela.SQL.Add('     PRECOOFERTA,VALUNIT,VENCIMENTOOFERTA,VENDATAP,VENDATAV,VENDVARP,VENDVARV,');
                   DMMACS.QTabela.SQL.Add('     ESTLOJA,ESTFISICO,VLRUNITCOMP,VLRCOMPSD)');
                   DMMACS.QTabela.SQL.Add(' values (:COD_ESTOQUE,:COD_SUBPROD,:COD_LOJA,:AVPPROAT,:AVPPROVAR,:AVVPROAT,:AVVPROVAR,');
                   DMMACS.QTabela.SQL.Add('     :CVPPROAT,:CVPPROVAR,:CVVPROAT,:CVVPROVAR,:DATAOFERTA,:DESCONTO,:DTCAD,:MARGEMSEG,');
                   DMMACS.QTabela.SQL.Add('     :PERCMARGSEG,:PRECOOFERTA,:VALUNIT,:VENCIMENTOOFERTA,:VENDATAP,:VENDATAV,:VENDVARP,');
                   DMMACS.QTabela.SQL.Add('     :VENDVARV,:ESTLOJA,:ESTFISICO,:VLRUNITCOMP,:VLRCOMPSD)');
                   EncontraChavePrim('ESTOQUE','COD_ESTOQUE');
                   DMMACS.QTabela.ParamByName('COD_ESTOQUE').AsInteger := XCodPrim;;
                   XCod_NovoEstoque:=XCod_NovoEstoque+1;
                   DMMACS.QTabela.ParamByName('COD_SUBPROD').AsInteger := XCodSubGrupo ;
                   DMMACS.QTabela.ParamByName('COD_LOJA').AsInteger := XcodLoja;
               End
               Else Begin
                   if NOT(DMMACS.QConsulta2.IsEmpty) Then begin
                       DMMACS.QTabela.SQL.Add('update ESTOQUE set AVPPROAT = :AVPPROAT,AVPPROVAR = :AVPPROVAR,AVVPROAT = :AVVPROAT,AVVPROVAR = :AVVPROVAR,');
                       DMMACS.QTabela.SQL.Add('     CVPPROAT = :CVPPROAT,CVPPROVAR = :CVPPROVAR,CVVPROAT = :CVVPROAT,CVVPROVAR  = :CVVPROVAR,');
                       DMMACS.QTabela.SQL.Add('     DATAOFERTA = :DATAOFERTA,DESCONTO = :DESCONTO,DTCAD = :DTCAD,MARGEMSEG = :MARGEMSEG,');
                       DMMACS.QTabela.SQL.Add('     PERCMARGSEG = :PERCMARGSEG,PRECOOFERTA = :PRECOOFERTA,');
                       DMMACS.QTabela.SQL.Add('     VALUNIT = :VALUNIT,VENCIMENTOOFERTA = :VENCIMENTOOFERTA,VENDATAP = :VENDATAP,VENDATAV = :VENDATAV,');
                       DMMACS.QTabela.SQL.Add('     VENDVARP = :VENDVARP,VENDVARV = :VENDVARV,ESTLOJA = :ESTLOJA,ESTFISICO = :ESTFISICO,');
                       DMMACS.QTabela.SQL.Add('     VLRUNITCOMP = :VLRUNITCOMP,VLRCOMPSD = :VLRCOMPSD');
                       DMMACS.QTabela.SQL.Add(' where ESTOQUE.COD_SUBPROD = :COD_SUBPROD' );
                       DMMACS.QTabela.ParamByName('COD_SUBPROD').AsInteger := XCodSubGrupo ;
                   End;
               End;
               DMMACS.QTabela.ParamByName('AVPPROAT').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('AVPPROAT').AsFloat;
               DMMACS.QTabela.ParamByName('AVPPROVAR').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('AVPPROVAR').AsFloat;
               DMMACS.QTabela.ParamByName('AVVPROAT').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('AVVPROAT').AsFloat;
               DMMACS.QTabela.ParamByName('AVVPROVAR').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('AVVPROVAR').AsFloat;
               DMMACS.QTabela.ParamByName('CVPPROAT').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('CVPPROAT').AsFloat;
               DMMACS.QTabela.ParamByName('CVPPROVAR').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('CVPPROVAR').AsFloat;
               DMMACS.QTabela.ParamByName('CVVPROAT').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('CVVPROAT').AsFloat;
               DMMACS.QTabela.ParamByName('CVVPROVAR').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('CVVPROVAR').AsFloat;
               DMMACS.QTabela.ParamByName('DATAOFERTA').AsDateTime := DMMACS.cdsAtualizaBanco.FieldByName('DATAOFERTA').AsDateTime;
               DMMACS.QTabela.ParamByName('DESCONTO').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('DESCONTO').AsFloat;
               DMMACS.QTabela.ParamByName('DTCAD').AsDateTime := DMMACS.cdsAtualizaBanco.FieldByName('DTCAD').AsDateTime;
               DMMACS.QTabela.ParamByName('MARGEMSEG').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('MARGEMSEG').AsFloat;
               DMMACS.QTabela.ParamByName('PERCMARGSEG').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('PERCMARGSEG').AsFloat;
               DMMACS.QTabela.ParamByName('PRECOOFERTA').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('PRECOOFERTA').AsFloat;
               DMMACS.QTabela.ParamByName('VALUNIT').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('VALUNIT').AsFloat;
               DMMACS.QTabela.ParamByName('VLRUNITCOMP').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('VLRUNITCOMP').AsFloat;
               DMMACS.QTabela.ParamByName('VLRCOMPSD').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('VLRCOMPSD').AsFloat;
               DMMACS.QTabela.ParamByName('VENCIMENTOOFERTA').AsDateTime := DMMACS.cdsAtualizaBanco.FieldByName('VENCIMENTOOFERTA').AsDateTime;
               DMMACS.QTabela.ParamByName('VENDATAP').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('VENDATAP').AsFloat;
               DMMACS.QTabela.ParamByName('VENDATAV').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('VENDATAV').AsFloat;
               DMMACS.QTabela.ParamByName('VENDVARP').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('VENDVARP').AsFloat;
               DMMACS.QTabela.ParamByName('VENDVARV').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('VENDVARV').AsFloat;
               DMMACS.QTabela.ParamByName('ESTLOJA').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('ESTLOJA').AsFloat;
               DMMACS.QTabela.ParamByName('ESTFISICO').AsFloat := DMMACS.cdsAtualizaBanco.FieldByName('ESTFISICO').AsFloat;

               Try
               	DMMACS.QTabela.ExecSQL;
               	DMMACS.Transaction.CommitRetaining;
               Except

                   ShowMessage('Falha ao inserir/editar Estoque de cod.SubProduto'+IntToStr(XCodSubGrupo));
                   DMMACS.Transaction.RollbackRetaining;
                   Result:=False;
                   Resultado := False;
               End;
               DMMACS.cdsAtualizaBanco.Next;
           end;

      except
           DMMACS.Transaction.RollbackRetaining;
           DMMACS.QTabela.Open;
           Resultado:= False;
           Result:=False;
           ShowMessage('Erro ao atualizar o ESTOQUE.');
      end;

End;

Function TFGeradorXML.AtualizarSubGrupoProduto : Boolean;
Begin
     Result:=True;
     try
     		  Try
              DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'SubGrupoProdutoXML.xml');
              DMMACS.cdsAtualizaBanco.First;
              DMMACS.cdsAtualizaBanco.RecordCount;
          Except
              Result := False;
              Resultado := False;
              ShowMessage('Falha ao ler xml do SubGrupo do Produto');
          End;

          while not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from SUBGRUPOPROD');
               DMMACS.QConsulta.SQL.Add(' where SUBGRUPOPROD.DESCRICAO = :parametro');
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;
               DMMACS.QConsulta.Open;

               DMMACS.QTabela.Close;
               DMMACS.QTabela.SQL.Clear;
               if DMMACS.QConsulta.IsEmpty Then begin
                   DMMACS.QTabela.SQL.Add('insert into SUBGRUPOPROD(COD_SUBGRUPOPROD,COD_INTERNO,DESCRICAO,TIPO)');
                   DMMACS.QTabela.SQL.Add(' values(:COD_INTERNO,:COD_SUBGRUPOPROD,:DESCRICAO,:TIPO)');
                   EncontraChavePrim('SUBGRUPOPROD','COD_SUBGRUPOPROD');
                   DMMACS.QTabela.ParamByName('COD_SUBGRUPOPROD').AsInteger := XCodPrim;
               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty)Then begin
                       DMMACS.QTabela.SQL.Add('update SUBGRUPOPROD set COD_INTERNO = :COD_INTERNO, DESCRICAO = :DESCRICAO,');
                       DMMACS.QTabela.SQL.Add('TIPO = :TIPO where SUBGRUPOPROD.DESCRICAO = :DESCRICAO');
                   End;
               End;
               DMMACS.QTabela.ParamByName('COD_INTERNO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('COD_INTERNO').AsString;
               DMMACS.QTabela.ParamByName('DESCRICAO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;
               DMMACS.QTabela.ParamByName('TIPO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('TIPO').AsString;

               Try
                   DMMACS.QTabela.ExecSQL;
                   DMMACS.Transaction.CommitRetaining;
               Except
                   ShowMessage('Falha ao carregar arquivo xml de SUBGRUPO');
                   DMMACS.Transaction.RollbackRetaining;
                   Result:=False;
                   Resultado := False;
               End;
               DMMACS.cdsAtualizaBanco.Next;
          end;

      except
           DMMACS.Transaction.RollbackRetaining;
           Resultado:= False;
           ShowMessage('Erro ao atualizar o SUBGRUPO.');
           Result:=False;
      end;
End;

Function TFGeradorXML.AtualizarGrupoProduto : Boolean;
Begin
     Result:=True;
     try
     		  Try
              DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'GrupoProdutoXML.xml');
              DMMACS.cdsAtualizaBanco.First;
              DMMACS.cdsAtualizaBanco.RecordCount;
          Except
              Result := False;
              Resultado := False;
              ShowMessage('Falha ao ler xml do Grupo do produto');
          End;

          while not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from GRUPOPROD');
               DMMACS.QConsulta.SQL.Add(' where GRUPOPROD.DESCRICAO = :parametro');
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;
               DMMACS.QConsulta.Open;

		           DMMACS.QTabela.Close;
               DMMACS.QTabela.SQL.Clear;
               if DMMACS.QConsulta.IsEmpty Then begin
                   DMMACS.QTabela.SQL.Add('insert into GRUPOPROD(COD_GRUPOPROD,COD_INTERNO,DESCRICAO,TIPO)');
                   DMMACS.QTabela.SQL.Add(' values(:COD_GRUPOPROD,:COD_INTERNO,:DESCRICAO,:TIPO)');
                   EncontraChavePrim('GRUPOPROD','COD_GRUPOPROD');
                   DMMACS.QTabela.ParamByName('COD_GRUPOPROD').AsInteger := XCodPrim;
               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty)Then begin
                       DMMACS.QTabela.SQL.Add('update GRUPOPROD set COD_INTERNO = :COD_INTERNO, DESCRICAO = :DESCRICAO,');
                       DMMACS.QTabela.SQL.Add('TIPO = :TIPO where GRUPOPROD.DESCRICAO = :DESCRICAO');
                   End;
               End;
               DMMACS.QTabela.ParamByName('COD_INTERNO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('COD_INTERNO').AsString;
               DMMACS.QTabela.ParamByName('DESCRICAO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;
               DMMACS.QTabela.ParamByName('TIPO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('TIPO').AsString;

               Try
               	DMMACS.QTabela.ExecSQL;
               	DMMACS.Transaction.CommitRetaining;
               Except
                   ShowMessage('Falha ao Inserir/Editar Grupo '+DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString);
                   DMMACS.Transaction.RollbackRetaining;
                   Result:=False;
                   Resultado:=False;

               End;
              	DMMACS.cdsAtualizaBanco.Next;
           end;

      except
           DMMACS.Transaction.RollbackRetaining;
           DMMACS.QTabela.Open;
           Resultado:= False;
           Result:=False;
           ShowMessage('Erro ao atualizar o GRUPO');

      end;
End;

Function TFGeradorXML.AtualizarCst : Boolean;
Begin
     Result:=True;
     try
          Try
              DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'CstXML.xml');
              DMMACS.cdsAtualizaBanco.First;
              DMMACS.cdsAtualizaBanco.RecordCount;
          Except
       	      Result := False;
              Resultado := False;
              ShowMessage('Falha ao ler xml do CST');
          End;
          while not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from CST');
               DMMACS.QConsulta.SQL.Add(' where CST.COD_SIT_TRIB = :parametro ' );
               DMMACS.QConsulta.SQL.Add(' and CST.INDICEECF = :parametro1 ' );
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('COD_SIT_TRIB').AsString;
               DMMACS.QConsulta.ParamByName('PARAMETRO1').AsString := DMMACS.cdsAtualizaBanco.FieldByName('INDICEECF').AsString;
               DMMACS.QConsulta.Open;
               DMMACS.QTabela.Close;
               DMMACS.QTabela.sql.clear;
               if DMMACS.QConsulta.IsEmpty
               Then begin
                   DMMACS.QTabela.SQL.Add('insert into cst(COD_CST,DESCRICAO,COD_SIT_TRIB,INDICEECF,SUBSTITUICAO,REDUCAO,VENDA,ISENTA,ICMSOP)');
                   DMMACS.QTabela.SQL.Add(' values(:COD_CST,:DESCRICAO,:COD_SIT_TRIB,:INDICEECF,:SUBSTITUICAO,:REDUCAO,:VENDA,:ISENTA,:ICMSOP)');
                   EncontraChavePrim('CST','COD_CST');
                   DMMACS.QTabela.ParamByName('COD_CST').AsInteger := XCodPrim;
               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty)Then begin
                       DMMACS.QTabela.SQL.Add('update cst set DESCRICAO = :DESCRICAO, COD_SIT_TRIB = :COD_SIT_TRIB,');
                       DMMACS.QTabela.SQL.Add('INDICEECF = :INDICEECF, SUBSTITUICAO = :SUBSTITUICAO, REDUCAO = :REDUCAO, VENDA = :VENDA,');
                       DMMACS.QTabela.SQL.Add('ISENTA = :ISENTA, ICMSOP = :ICMSOP');
                       DMMACS.QTabela.SQL.Add(' where cst.cod_sit_trib = :COD_SIT_TRIB1');
                       DMMACS.QTabela.SQL.Add(' AND cst.indiceecf = :INDICEECF1');
                   End;
              End;
              DMMACS.QTabela.ParamByName('DESCRICAO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESCRICAO').AsString;
              DMMACS.QTabela.ParamByName('COD_SIT_TRIB').AsString := DMMACS.cdsAtualizaBanco.FieldByName('COD_SIT_TRIB').AsString;
              DMMACS.QTabela.ParamByName('INDICEECF').AsString := DMMACS.cdsAtualizaBanco.FieldByName('INDICEECF').AsString;
              DMMACS.QTabela.ParamByName('SUBSTITUICAO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('SUBSTITUICAO').AsString;
              DMMACS.QTabela.ParamByName('REDUCAO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('REDUCAO').AsString;
              DMMACS.QTabela.ParamByName('VENDA').AsString := DMMACS.cdsAtualizaBanco.FieldByName('VENDA').AsString;
              DMMACS.QTabela.ParamByName('ISENTA').AsString := DMMACS.cdsAtualizaBanco.FieldByName('ISENTA').AsString;
              DMMACS.QTabela.ParamByName('ICMSOP').AsString := DMMACS.cdsAtualizaBanco.FieldByName('ICMSOP').AsString;
              if not(DMMACS.QConsulta.IsEmpty)Then begin
                   DMMACS.QTabela.ParamByName('COD_SIT_TRIB1').AsString := DMMACS.cdsAtualizaBanco.FieldByName('COD_SIT_TRIB').AsString;
                   DMMACS.QTabela.ParamByName('INDICEECF1').AsString := DMMACS.cdsAtualizaBanco.FieldByName('INDICEECF').AsString;
              end;
              Try
              		DMMACS.QTabela.ExecSQL;
              		DMMACS.Transaction.CommitRetaining;
              Except
                   ShowMessage('Falha ao inserir CST '+DMMACS.cdsAtualizaBanco.FieldByName('COD_SIT_TRIB').AsString);
                   DMMACS.Transaction.RollbackRetaining;
                   Result:=False;
              End;
              DMMACS.cdsAtualizaBanco.Next;
          end;

      except
           DMMACS.Transaction.RollbackRetaining;
           Resultado:= False;
           Result:=False;
           ShowMessage('Erro ao atualizar o CST.');
      end;
End;

Function TFGeradorXML.AtualizarUnidade : Boolean;
Begin

     Result:=True;
     try
          try
               DMMACS.cdsAtualizaBanco.LoadFromFile(DirecUp + 'UnidadeXML.xml');
               DMMACS.cdsAtualizaBanco.First;
               DMMACS.cdsAtualizaBanco.RecordCount;
          Except
               Result := False;
               Resultado := False;
               ShowMessage('Falha ao ler xml da Unidade');
          End;
          while not DMMACS.cdsAtualizaBanco.Eof do
          begin
               DMMACS.QConsulta.Close;
               DMMACS.QConsulta.SQL.Clear;
               DMMACS.QConsulta.SQL.Add('Select * from UNIDADE ');
               DMMACS.QConsulta.SQL.Add(' where UNIDADE.SIGLA_UNID = :parametro');
               DMMACS.QConsulta.SQL.Add(' and UNIDADE.DESC_UNID = :parametro1');
               DMMACS.QConsulta.ParamByName('PARAMETRO').AsString := DMMACS.cdsAtualizaBanco.FieldByName('SIGLA_UNID').AsString;
               DMMACS.QConsulta.ParamByName('PARAMETRO1').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESC_UNID').AsString;
               DMMACS.QConsulta.Open;

               DMMACS.QTabela.Close;
               DMMACS.QTabela.SQL.Clear;
               if(DMMACS.QConsulta.IsEmpty)Then begin
                   DMMACS.QTabela.SQL.Add('insert into Unidade (ARREDONDAR,COD_UNIDADE,DESC_UNID,SIGLA_UNID)');
                   DMMACS.QTabela.SQL.Add(' values(:ARREDONDAR,:COD_UNIDADE,:DESC_UNID,:SIGLA_UNID)');
                   DMMACS.QTabela.ParamByName('COD_UNIDADE').AsInteger := DMMACS.cdsAtualizaBanco.FieldByName('COD_UNIDADE').AsInteger;
                   EncontraChavePrim('UNIDADE','COD_UNIDADE');
                   DMMACS.QTabela.ParamByName('COD_UNIDADE').AsInteger := XCodPrim;
               End
               Else Begin
                   if not(DMMACS.QConsulta.IsEmpty)Then begin
                       DMMACS.QTabela.SQL.Add('update Unidade set ARREDONDAR = :ARREDONDAR, DESC_UNID = :DESC_UNID,SIGLA_UNID=:SIGLA_UNID');
                       DMMACS.QTabela.SQL.Add('where UNIDADE.SIGLA_UNID = :SIGLA_UNID and UNIDADE.DESC_UNID =:DESC_UNID');
                   End;
               End;
               DMMACS.QTabela.ParamByName('ARREDONDAR').AsString := DMMACS.cdsAtualizaBanco.FieldByName('ARREDONDAR').AsString;
               DMMACS.QTabela.ParamByName('DESC_UNID').AsString := DMMACS.cdsAtualizaBanco.FieldByName('DESC_UNID').AsString;
               DMMACS.QTabela.ParamByName('SIGLA_UNID').AsString := DMMACS.cdsAtualizaBanco.FieldByName('SIGLA_UNID').AsString;

              Try
              		DMMACS.QTabela.ExecSQL;
                  DMMACS.Transaction.CommitRetaining;
              Except
                   ShowMessage('Falha ao inserir UNIDADE '+DMMACS.cdsAtualizaBanco.FieldByName('DESC_UNID').AsString);
                   DMMACS.Transaction.RollbackRetaining;
                   Result:=False;
                   Resultado:=False;
              End;
              DMMACS.cdsAtualizaBanco.Next;
          end;
      except
           DMMACS.Transaction.RollbackRetaining;
           Resultado:= False;
           Result:=False;
           ShowMessage('Erro ao atualizar a UNIDADE.');
      end;
End;

Function TFGeradorXML.AtualizarEstoqueItem(XQTDEPROD: Currency; XCODESTOQUE: Integer) : Boolean;
Begin

      try
          DMESTOQUE.TEstoque.Close;
          DMESTOQUE.TEstoque.SQL.Clear;
          DMESTOQUE.TEstoque.SQL.Add('select * from estoque');
          DMESTOQUE.TEstoque.SQL.Add(' where estoque.cod_estoque = :parametro');
          DMESTOQUE.TEstoque.ParamByName('PARAMETRO').AsInteger:= XCODESTOQUE;
          DMESTOQUE.TEstoque.Open;

          if not DMESTOQUE.TEstoque.IsEmpty
          then begin
              DMESTOQUE.TEstoque.Edit;
              DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency:=DMEstoque.TEstoque.FieldByName('ESTFISICO').AsCurrency-XQTDEPROD;
              DMEstoque.TEstoque.FieldByName('ULTVENDA').AsString:=DateToStr(Date());
              DMESTOQUE.TEstoque.Post;
              DMESTOQUE.TransacEstoque.CommitRetaining;
          end;
      Except
              DMESTOQUE.TransacEstoque.RollbackRetaining;
      End;
End;

//Encontra parametros para subprodutos
Procedure TFGeradorXML.EncontraParSubpro(XCST: String; XECF: String; XPRODUTO: String);
Begin
  If (XCST<>'')
   Then Begin
       DMMACS.QConsulta2.Close;
       DMMACS.QConsulta2.SQL.Clear;
       DMMACS.QConsulta2.SQL.Add(' select cst.cod_cst from cst where (cst.cod_sit_trib = :cod) ');
       DMMACS.QConsulta2.ParamByName('COD').AsString := XCST;
       If XECF<>''
       Then Begin
       	DMMACS.QConsulta2.SQL.Add(' and cst.indiceecf = :ecf  ');
       	DMMACS.QConsulta2.ParamByName('ECF').AsString := XECF;
       End;
       DMMACS.QConsulta2.Open;
       If DMMACS.QConsulta2.IsEmpty
       Then Begin
           DMMACS.QConsulta2.Close;
           DMMACS.QConsulta2.SQL.Clear;
           DMMACS.QConsulta2.SQL.Add(' select cst.cod_cst from cst ');
           DMMACS.QConsulta2.Open;
       End;
   End
   Else Begin
   	//Se não tem parametro pega um cst qualquer
       DMMACS.QConsulta2.Close;
       DMMACS.QConsulta2.SQL.Clear;
       DMMACS.QConsulta2.SQL.Add('select cst.cod_cst from cst');
       DMMACS.QConsulta2.Open;
   End;
     XCodCst:= DMMACS.QConsulta2.FieldByName('COD_CST').AsInteger;

     //PRODUTO
     DMMACS.QConsulta2.Close;
     DMMACS.QConsulta2.SQL.Clear;
     DMMACS.QConsulta2.SQL.Add('select cod_produto from produto where produto.descricao = :desc');
     DMMACS.QConsulta2.ParamByName('DESC').AsString := XPRODUTO;
     DMMACS.QConsulta2.Open;
     If DMMACS.QConsulta2.IsEmpty
     Then Begin
   	//Se retornou vazio pega um dado qualquer
       DMMACS.QConsulta2.Close;
       DMMACS.QConsulta2.SQL.Clear;
       DMMACS.QConsulta2.SQL.Add('select cod_produto from produto ');
       DMMACS.QConsulta2.Open;
     End;
     XCodProd:= DMMACS.QConsulta2.FieldByName('COD_PRODUTO').AsInteger;

End;

//Encontra parametros para produtos
Procedure TFGeradorXML.EncontraParProd(XGRUPO: String; XSUBGRUPO: String);
Begin
  	 DMMACS.QConsulta2.Close;
     DMMACS.QConsulta2.SQL.Clear;
     DMMACS.QConsulta2.SQL.Add('select grupoprod.cod_grupoprod from grupoprod where grupoprod.descricao = :GRUPO');
     DMMACS.QConsulta2.ParamByName('GRUPO').AsString := XGRUPO;
     DMMACS.QConsulta2.Open;
     XCodGrupo:= DMMACS.QConsulta2.FieldByName('COD_GRUPOPROD').AsInteger;

     DMMACS.QConsulta2.Close;
     DMMACS.QConsulta2.SQL.Clear;
     DMMACS.QConsulta2.SQL.Add('select subgrupoprod.cod_subgrupoprod from subgrupoprod where subgrupoprod.descricao = :subgrupo');
	   DMMACS.QConsulta2.ParamByName('SUBGRUPO').AsString := XSUBGRUPO;
     DMMACS.QConsulta2.Open;
     XCodSubGrupo:= DMMACS.QConsulta2.FieldByName('COD_SUBGRUPOPROD').AsInteger;

End;

//Encontra parametros para estoque
Procedure TFGeradorXML.EncontraParEstoque(XContrint: String);
Begin
     DMMACS.QConsulta1.Close;
     DMMACS.QConsulta1.SQL.Clear;
     DMMACS.QConsulta1.SQL.Add('select * from subproduto');
     DMMACS.QConsulta1.SQL.Add(' where subproduto.contrint = :contrint');
     DMMACS.QConsulta1.ParamByName('CONTRINT').AsString := XContrint;
     DMMACS.QConsulta1.Open;
     XCodSubGrupo:= DMMACS.QConsulta1.FieldByName('COD_SUBPRODUTO').AsInteger;

     DMMACS.QConsulta2.Close;
     DMMACS.QConsulta2.SQL.Clear;
     DMMACS.QConsulta2.SQL.Add('Select * from estoque where estoque.cod_subprod = :codsub');
     DMMACS.QConsulta2.ParamByName('CODSUB').AsInteger := XCodSubGrupo;
     DMMACS.QConsulta2.Open;
end;

//Encontra parametros para estoque
Procedure TFGeradorXML.EncontraCodLoja();
Begin
     DMMACS.QConsulta2.Close;
     DMMACS.QConsulta2.SQL.Clear;
     DMMACS.QConsulta2.SQL.Add('Select * from lOJA');
     DMMACS.QConsulta2.Open;

     XcodLoja:= DMMACS.QConsulta2.FieldByName('COD_LOJA').AsInteger;
end;

Function TFGeradorXML.SelecionaEstoque(XCONTRINT: String) : Boolean;
begin
   DMMACS.QConsulta1.Close;
   DMMACS.QConsulta1.SQL.Clear;
   DMMACS.QConsulta1.SQL.Add('Select estoque.cod_estoque from estoque ');
   DMMACS.QConsulta1.SQL.Add(' left join subproduto on estoque.cod_subprod = subproduto.cod_subproduto');
   DMMACS.QConsulta1.SQL.Add(' where subproduto.contrint = :c');
   DMMACS.QConsulta1.ParamByName('c').AsString := XCONTRINT;
   DMMACS.QConsulta1.Open;
   xCodEstoque := DMMACS.QConsulta1.fieldByName('cod_estoque').AsInteger;

end;

Function TFGeradorXML.SelecionaCliente(XCPFCNPJ: String) : Boolean;
begin
   DMMACS.QConsulta1.Close;
   DMMACS.QConsulta1.SQL.Clear;
   DMMACS.QConsulta1.SQL.Add('select cliente.cod_cliente from cliente ');
   DMMACS.QConsulta1.SQL.Add(' left join pessoa on cliente.cod_pessoa = pessoa.cod_pessoa');
   DMMACS.QConsulta1.SQL.Add(' where pessoa.cpfcnpj = :c');
   DMMACS.QConsulta1.ParamByName('c').AsString := XCPFCNPJ;
   DMMACS.QConsulta1.Open;
   xCodCliente := DMMACS.QConsulta1.fieldByName('cod_cliente').AsInteger;

end;

//Seleciona dados pra produto
Function TFGeradorXML.PreparaItensPedVenda(XCODESTOQUE : Integer) : Boolean;
begin
   DMMACS.QConsulta1.Close;
   DMMACS.QConsulta1.SQL.Clear;
   DMMACS.QConsulta1.SQL.Add('select subproduto.contrint from subproduto ');
   DMMACS.QConsulta1.SQL.Add(' left join estoque on subproduto.cod_subproduto = estoque.cod_subprod');
   DMMACS.QConsulta1.SQL.Add(' where estoque.cod_estoque = :c');
   DMMACS.QConsulta1.ParamByName('C').AsInteger := XCODESTOQUE;
   DMMACS.QConsulta1.Open;

end;

//Seleciona dados pra produto
procedure TFGeradorXML.PreparaProduto();
begin
   DMMACS.QConsulta1.Close;
   DMMACS.QConsulta1.SQL.Clear;
   DMMACS.QConsulta1.SQL.Add('select grupoprod.descricao as grupoprod, subgrupoprod.descricao as subgrupoprod from produto ');
   DMMACS.QConsulta1.SQL.Add(' join grupoprod on produto.cod_grupoprod = grupoprod.cod_grupoprod');
   DMMACS.QConsulta1.SQL.Add(' join subgrupoprod on produto.cod_subgrupoprod = subgrupoprod.cod_subgrupoprod');
   DMMACS.QConsulta1.SQL.Add(' where produto.cod_produto = :c');
   DMMACS.QConsulta1.ParamByName('C').AsInteger := DMMACS.TConsulta.FieldByName('COD_PRODUTO').AsInteger;
   DMMACS.QConsulta1.Open;
end;

//Seleciona dados pra subproduto
procedure TFGeradorXML.PreparaSubProduto();
begin
   DMMACS.QConsulta1.Close;
   DMMACS.QConsulta1.SQL.Clear;
   DMMACS.QConsulta1.SQL.Add('select cst.cod_sit_trib,produto.descricao,cst.indiceecf');
   DMMACS.QConsulta1.SQL.Add(' from subproduto left join cst on subproduto.cod_cst = cst.cod_cst ');
	 DMMACS.QConsulta1.SQL.Add(' left join produto on subproduto.cod_produto = produto.cod_produto ');
	 DMMACS.QConsulta1.SQL.Add(' where subproduto.cod_subproduto = :s');
   DMMACS.QConsulta1.ParamByName('S').AsInteger := DMMACS.TConsulta.FieldByName('COD_SUBPRODUTO').AsInteger;
   DMMACS.QConsulta1.Open;
end;

//Encontra parametros para produtos
Procedure TFGeradorXML.EncontraParam(XCPFCNPJ: String);
Begin
  	 DMMACS.QConsulta2.Close;
     DMMACS.QConsulta2.SQL.Clear;
     DMMACS.QConsulta2.SQL.Add('SELECT PESSOA.COD_PESSOA FROM PESSOA WHERE PESSOA.CPFCNPJ = :CPFCNPJ');
     DMMACS.QConsulta2.ParamByName('CPFCNPJ').AsString := XCPFCNPJ;
     DMMACS.QConsulta2.Open;
     xCodPessoa:= DMMACS.QConsulta2.FieldByName('COD_PESSOA').AsInteger;
End;

Function TFGeradorXML.LimparDataSets : Boolean;
Begin
    DMMACS.cdsPessoa.Open;
    DMMACS.cdsPessoa.EmptyDataSet;
    DMMACS.cdsPessoa.Close;

    DMMACS.cdsPessoaF.Open;
    DMMACS.cdsPessoaF.EmptyDataSet;
    DMMACS.cdsPessoaF.Close;

    DMMACS.cdsPessoaJ.Open;
    DMMACS.cdsPessoaJ.EmptyDataSet;
    DMMACS.cdsPessoaJ.Close;

    DMMACS.cdsCliente.Open;
    DMMACS.cdsCliente.EmptyDataSet;
    DMMACS.cdsCliente.Close;

    DMMACS.cdsEmail.Open;
    DMMACS.cdsEmail.EmptyDataSet;
    DMMACS.cdsEmail.Close;

    DMMACS.cdsTelefone.Open;
    DMMACS.cdsTelefone.EmptyDataSet;
    DMMACS.cdsTelefone.Close;

    DMMACS.cdsProduto.Open;
    DMMACS.cdsProduto.EmptyDataSet;
    DMMACS.cdsProduto.Close;

    DMMACS.cdsSubProduto.Open;
    DMMACS.cdsSubProduto.EmptyDataSet;
    DMMACS.cdsSubProduto.Close;

    DMMACS.cdsSubGrupo.Open;
    DMMACS.cdsSubGrupo.EmptyDataSet;
    DMMACS.cdsSubGrupo.Close;

    DMMACS.cdsGrupo.Open;
    DMMACS.cdsGrupo.EmptyDataSet;
    DMMACS.cdsGrupo.Close;

    DMMACS.cdsEstoque.Open;
    DMMACS.cdsEstoque.EmptyDataSet;
    DMMACS.cdsEstoque.Close;

    DMMACS.cdsCst.Open;
    DMMACS.cdsCst.EmptyDataSet;
    DMMACS.cdsCst.Close;

    DMMACS.cdsUnidade.Open;
    DMMACS.cdsUnidade.EmptyDataSet;
    DMMACS.cdsUnidade.Close;

    DMMACS.cdsFormaPagamento.Open;
    DMMACS.cdsFormaPagamento.EmptyDataSet;
    DMMACS.cdsFormaPagamento.Close;
End;

Function TFGeradorXML.PedidoExportado(XCODPEDIDO:Integer) : Boolean;
Begin
    try
          DMSAIDA.TPedV.Close;
          DMSAIDA.TPedV.SQL.Clear;
          DMSAIDA.TPedV.SQL.Add('select * from pedvenda');
          DMSAIDA.TPedV.SQL.Add(' where pedvenda.cod_pedvenda = :parametro');
          DMSAIDA.TPedV.ParamByName('PARAMETRO').AsInteger:= XCODPEDIDO;
          DMSAIDA.TPedV.Open;

          if not DMSAIDA.TPedV.IsEmpty
          then begin
              DMSAIDA.TPedV.Edit;
              DMSAIDA.TPedV.FieldByName('EXPORTA').AsInteger := 1;
              DMSAIDA.TPedV.FieldByName('SITUACAO').AsString := 'FECHADO';
              DMSAIDA.TPedV.Post;
              DMSAIDA.IBT.CommitRetaining;
          end;
      Except
          DMSAIDA.IBT.RollbackRetaining;
      End;
End;

Function TFGeradorXML.VerificaPastaVazia(XNUMPALM: String) : Boolean;
Var
    xRes : Boolean;
Begin
     xRes := True;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Mobile\PessoaXML.xml') then
        xRes := False;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Mobile\PessoaFisicaXML.xml') then
        xRes := False;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Mobile\PessoaJuridicaXML.xml') then
        xRes := False;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Mobile\ClienteXML.xml') then
        xRes:= False;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Mobile\TelefoneXML.xml') then
        xRes := False;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Mobile\EmailXML.xml') then
        xRes := False;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Mobile\PedVendaXML.xml') then
        xRes := False;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Mobile\ItensPedVendaXML.xml') then
        xRes := False;
     //Jônatas 07/08/2013 - Incluído orçamento e itens do orçamento
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Mobile\OrcamentoXML.xml') then
        xRes := False;
     if not FileExists('C:\MZR\Arquivos\Mobile\0'+ XNumPalm+ '\Mobile\ItensOrcamentoXML.xml') then
        xRes := False;

     if xRes= False then
        xResultado := False;
     If xRes = True then
        xResultado := True;

End;

procedure TFGeradorXML.Button2Click(Sender: TObject);
begin
  inherited;
      LimparDataSets;
end;

procedure TFGeradorXML.Button3Click(Sender: TObject);
begin
  inherited;
        DMMacs.cdsPessoa.Open;
        DMMacs.cdsPessoa.FileName := 'C:\MZR\Arquivos\Mobile\001\Servidor\PessoaXML.xml';
        DMMACS.cdsPessoa.EmptyDataSet;
        DMMACS.cdsPessoa.Close;
end;

procedure TFGeradorXML.Button4Click(Sender: TObject);
begin
  inherited;
        DMMacs.cdsPessoa.Open;
        DMMacs.cdsPessoa.FileName := 'C:\MZR\Arquivos\Mobile\002\Servidor\PessoaXML.xml';
        DMMACS.cdsPessoa.EmptyDataSet;
        DMMACS.cdsPessoa.Close;
end;

procedure TFGeradorXML.btnGerarExit(Sender: TObject);
begin
  inherited;
  OnActivate(Self);
end;

procedure TFGeradorXML.FormActivate(Sender: TObject);
begin
  inherited;
	 Caption:='Gerador de XML';
end;

End.

