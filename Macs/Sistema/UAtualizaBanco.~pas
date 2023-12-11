unit UAtualizaBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, IBQuery, DBCtrls, FashionPanel,
  EditFloat, ColorEditFloat, Mask, ComCtrls, ShellAPI, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP;

type
  TFAtualizaBanco = class(TForm)
    SpTitulo01: TShape;
    SpTitulo02: TShape;
    LDescTitulo: TLabel;
    BtAtualizaTabela: TButton;
    ShapeFundo: TShape;
    ProgressBar1: TProgressBar;
    MPainel: TMemo;
    BtnFecha: TSpeedButton;
    cbFireBird: TCheckBox;
    Cb01: TCheckBox;
    CBIndiceITServOrd: TCheckBox;
    CBCodBarra: TCheckBox;
    CbAtualizaVwOrdem: TCheckBox;
    CBVWSubServicos: TCheckBox;
    CbFornecedor: TCheckBox;
    cbServico: TCheckBox;
    cbApgFchTec: TCheckBox;
    cbVwPedv: TCheckBox;
    cbVwPedc: TCheckBox;
    cbVersaoDll: TCheckBox;
    CbVwCliente: TCheckBox;
    cbChequeRec: TCheckBox;
    cbDescProduto: TCheckBox;
    cbParcP: TCheckBox;
    CBVWSimilar: TCheckBox;
    cbVwLanCaixa: TCheckBox;
    cbVwMovBanco: TCheckBox;
    CBVWLANCENT: TCheckBox;
    CBVWLANCSAI: TCheckBox;
    CBOrcamento: TCheckBox;
    cbParcR: TCheckBox;
    conectaFtp: TIdFTP;
    BtnAtualizaCustoEstoque: TButton;
    btnNormalizaParcr: TButton;
    cbVWCtaCor: TCheckBox;
    cbMelhoriasEstoque2023: TCheckBox;
    BitBtn14: TBitBtn;
    //Paulo 27/03/2012: cria uma nova tabela no banco
    function InsereTabelaNova(XTABELA: string; XPK: string): Boolean;
    //Paulo 28/03/2012: gera a view
    function InsereNovaView(XVIEW: string; XCAMPOS: string; XSQL: string):
      Boolean;
    procedure BtAtualizaTabelaClick(Sender: TObject);
    //Paulo 27/03/2012: atualiza o campo da tabela
    function AtualizaTabela(XTABELA: string; XCAMPO: string; XTIPO: string):
      Boolean;
    //Alex 09/04/2014: atualiza o campo da tabela
    function AtualizaTabelaCampo(XTABELA: string; XCAMPO: string; XTIPO:
      string): Boolean;
    //Paulo 31/03/2012: apaga a view
    function ApagaView(XVIEW: string): Boolean;
    //Paulo 02/04/2012: cria nova generation
    function InsereGeneration(XTABELA: string; XPK: string): Boolean;
    //Paulo 02/04/2012: Gera Trigger
    function InsereTrigger(XTABELA: string; XGENERATION: string; XPK: string):
      Boolean;
    //Paulo 02/04/2012: Gera Indices
    function InsereIndice(XINDICE: string; XTABELA: string; XCAMPO: string;
      XUnique: Boolean): Boolean;
    //Paulo 02/04/2012: Função de start/stop o firebird
    function ControlFireBird(XACAO: string): Boolean;
    procedure FormActivate(Sender: TObject);
    //Paulo 02/04/2012: starta a atualização de tabelas
    procedure StartTabelas;
    //Paulo 02/04/2012: starta a atualização de views
    procedure StartViews;
    //Alex: 18/02/2014 Procedure para apgar campos antigos e desnecessários
    function ApagaCampo(XTabelaApagar: string; XCampoApagar: string): Boolean;
    //Alex: 14/01/2014 Procedure para tratar em especifico o caso de aumentar o tamanho do campo de codigo de barras
    procedure TrataCampoCodBarra;
    //Alex: 14/08/2014 Procedure para tratar em especifico o caso de aumentar o tamanho do campo NOMECLI em Orcamento
    procedure TrataCampoNOMECLI;
    //Paulo 02/04/2012: starta a atualização de generations
    procedure StartGeneration;
    //Paulo 02/04/2012: starta a atualização de triggers
    procedure StartTrigger;
    //Paulo 02/04/2012: starta a atualização de indices
    procedure StartIndice;
    //Edmar - 18/11/2015 - inicia as rotinas especiais (aumento de campo que esteja
    //em alguma view por exemplo)
    procedure StartEspecial;
    function SetTriggerESTOQUE_AI0: Boolean;
    function SetTriggerITENSPEDC_AIUD0: Boolean;
    function SetTriggerITENSPEDVEN_AIUD0: Boolean;
    function SetTriggerITPRODORD_AIUD0: Boolean;
    function SetTriggerLANCENT_AIUD0: Boolean;
    function SetTriggerLANCSAI_AIUD0: Boolean;
    function SetPksEstoque: Boolean;
    function SetFksEstoque: Boolean;
    function SetPksSubproduto: Boolean;
    function SetPksOrdem: Boolean;
    function SetPksItemProdOrdem: Boolean;
    function SetTableMovimentoEstoque: Boolean;
    function SetFksItemProdOrdem: Boolean;
    procedure StartMelhoriasEstoque2023;
    //Função para ajustar as chaves primarias de itservord para poder trasnformar este campo em indice unique
    function PreparaIndiceItservordCodigo: Boolean;
    //Função utilizada para buscar o próximo codigo do itservord
    function ProxCodigoItServOrd: Integer;
    //Paulo 03/04/2012: Reconecta a Base de Dados
    procedure ConexaoBaseDados;
    procedure BtnFechaClick(Sender: TObject);
    //Paulo 10/04/2012: encerra e starta o serviço do firebird
    procedure ParaFireBird();
    //Edmar - 09/10/2014 - Função usada para excluir uma tabela do banco de dados
    function DropTable(xTabela: string): Boolean;
    //Alex - 14/11/2014 - Função utilizada para criar tabela e campos para PERIODOFATURA
    //Tabela utilizada para controlar faturas mensais de ordem de locação
    procedure CriaPeriodoFatura;
    //Função utilizada para criar estrutura de tabelas de antecipação de contas a receber
    procedure CriaTabelaAntecipacaoCR;

    //cria tabela que registra as antecipacoes das OS
    procedure CriaTabelaAntecipacoes;

    //cria tabela que registra as os computadores que acessaram o sistema
    procedure CriaTabelaAcessoBanco;
    procedure AtualizaVersaoBanco;
    //Função utilizada para criar estrutura de tabelas de CUSTOESTOQUEEMPRESA
    procedure CriaTabelaCustoEstoqueEmpresa;
    //Função utilizada para criar estrutura de tabelas LANCAIXACTA
    procedure CriaTabelaLANCAIXACTA;
    //Função utilizada para criar estrutura de tabelas de antecipação de contas a receber  Itens
    procedure CriaTabelaAntecipacaoCR_Itens;
    procedure cbVersaoDllClick(Sender: TObject);
    //Alex: 05/01/2017 - Função exclusiva para criar o campo em tabela e alimentar com o valor "1"
    function InsereCampoEditaVendedorOs: Boolean;
    procedure BtnAtualizaCustoEstoqueClick(Sender: TObject);
    procedure btnNormalizaParcrClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FAtualizaBanco: TFAtualizaBanco;

implementation

uses UDMMacs, UDMAtualizaBanco, DB, UDMEstoque, StdConvs, Alxor32, UMenu,
  UDMPessoa, UMDO, UDMGEOGRAFIA, UDmBanco, UDMFinanc, UDMCaixa, UDMConta,
  UDmServ, UDMEntrada, UDMSaida, UDMFiscal, UAcessBase, UDMExporta,
  UPadrao;

{$R *.dfm}

//Alex - 14/11/2014 - Função utilizada para criar tabela e campos para PERIODOFATURA
//Tabela utilizada para controlar faturas mensais de ordem de locação
procedure TFAtualizaBanco.CriaPeriodoFatura;
begin
  try
    //Paulo 09/04/2012: Verifica se já existe a tabela
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$RELATION_NAME FROM RDB$RELATIONS');
    MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA;');
    MDO.QConsulta.ParamByName('NOMETABELA').AsString := 'PERIODOFATURA';
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      //Alex - 14/11/2014: Cria Tabela PERIODOFATURA com a pk
      if not InsereTabelaNova('PERIODOFATURA',
        'COD_PERIODOFATURA INTEGER NOT NULL') then
        MPainel.Lines.Add('Erro ao gerar nova tabela: PERIODOFATURA');
      //INCLUIR GENERATOR NA TABELA PERIODOFATURA
      if InsereGeneration('PERIODOFATURA', 'COD_PERIODOFATURA') = False then
        MPainel.Lines.Add('Erro ao criar gerador para o campo COD_PERIODOFATURA da tabela PERIODOFATURA');
      if InsereTrigger('PERIODOFATURA', 'GEN_PERIODOFATURA_ID',
        'COD_PERIODOFATURA') = False then
        MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_PERIODOFATURA da tabela PERIODOFATURA');
      //Alex - 14/11/2014: Cria demais campos da tabela
      if not AtualizaTabela('PERIODOFATURA', 'COD_ORDEM', 'INTEGER') then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_ESTOQUE da tabela: PERIODOFATURA');
      //Alex - 14/11/2014: Cria demais campos da tabela
      if not AtualizaTabela('PERIODOFATURA', 'COD_USUARIO', 'INTEGER') then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_USUARIO da tabela: PERIODOFATURA');
      //Alex - 14/11/2014: Cria demais campos da tabela
      if not AtualizaTabela('PERIODOFATURA', 'DTFATURA', 'DATE') then
        MPainel.Lines.Add('Erro ao atualizar o campo: DTFATURA da tabela: PERIODOFATURA');
      //Alex - 14/11/2014: Cria demais campos da tabela
      if not AtualizaTabela('PERIODOFATURA', 'DTINI', 'DATE') then
        MPainel.Lines.Add('Erro ao atualizar o campo: DTINI da tabela: PERIODOFATURA');
      //Alex - 14/11/2014: Cria demais campos da tabela
      if not AtualizaTabela('PERIODOFATURA', 'DTFIM', 'DATE') then
        MPainel.Lines.Add('Erro ao atualizar o campo: DTFIM da tabela: PERIODOFATURA');
      //Cria Indices
      //Alex - 24/11/2014 - indice para tabela PeriodoFatura campo cod_ordem
      if InsereIndice('ID_PERIODOFATURA_COD_ORDEM', 'PERIODOFATURA',
        'COD_ORDEM', false) = False then
      begin
        MPainel.Lines.Add('Erro ao gerar Indice: ID_PERIODOFATURA_COD_ORDEM - PERIODOFATURA - COD_ORDEM');
      end;
    end;
  except
  end;
end;

procedure TFAtualizaBanco.AtualizaVersaoBanco;
begin
  try
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$FIELD_NAME FROM RDB$RELATION_FIELDS');
    MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA and RDB$FIELD_NAME = :NOMECAMPO');
    MDO.QConsulta.ParamByName('NOMETABELA').AsString := 'LOJA';
    MDO.QConsulta.ParamByName('NOMECAMPO').AsString := 'VERSAO_COMPILACAO_BD';
    MDO.QConsulta.Open;
    if not MDO.QConsulta.IsEmpty then
    begin
      try
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('update loja set LOJA.VERSAO_COMPILACAO_BD = :Versao');
        MDO.Query.ParamByName('Versao').AsInteger := XVersaoCompilacao;
        MDO.Query.ExecSQL;
        MDO.Transac.CommitRetaining;
      except
        MDO.Transac.RollbackRetaining;
      end;
    end;
  except
  end;
end;

procedure TFAtualizaBanco.CriaTabelaAntecipacoes;
begin
  try
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$RELATION_NAME FROM RDB$RELATIONS');
    MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA;');
    MDO.QConsulta.ParamByName('NOMETABELA').AsString := 'ANTECIPACOES';
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      if not InsereTabelaNova('ANTECIPACOES', 'COD_ANTECIPACAO INTEGER NOT NULL') then
        MPainel.Lines.Add('Erro ao gerar nova tabela: ANTECIPACOES');
      if InsereGeneration('ANTECIPACOES', 'COD_ANTECIPACAO') = False then
        MPainel.Lines.Add('Erro ao criar gerador para o campo COD_ANTECIPACAO da tabela ANTECIPACOES');
      if InsereTrigger('ANTECIPACOES', 'gen_antecipacoes_id', 'COD_ANTECIPACAO') = False then
        MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_ANTECIPACOES da tabela ANTECIPACOES');
      if not AtualizaTabela('ANTECIPACOES', 'NUMERO_ORDEM', 'INTEGER') then
        MPainel.Lines.Add('Erro ao atualizar o campo: NUMERO_ORDEM da tabela: ANTECIPACOES');
      if not AtualizaTabela('ANTECIPACOES', 'DATA_ANTECIPACAO', 'DATE') then
        MPainel.Lines.Add('Erro ao atualizar o campo: DATA_ANTECIPACAO da tabela: ANTECIPACOES');
      if not AtualizaTabela('ANTECIPACOES', 'USUARIO', 'VARCHAR(50)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: USUARIO da tabela: ANTECIPACOES');
      if not AtualizaTabela('ANTECIPACOES', 'VALOR_ANTECIPACAO', 'NUMERIC(14,2)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: VALOR_ANTECIPACAO da tabela: ANTECIPACOES');
      if not AtualizaTabela('ANTECIPACOES', 'TIPO_MOVIMENTO', 'VARCHAR(15)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: TIPO_MOVIMENTO da tabela: ANTECIPACOES');
      if not AtualizaTabela('ANTECIPACOES', 'COD_MOVIMENTO', 'INTEGER') then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_MOVIMENTO da tabela: ANTECIPACOES');
    end;
  except
  end;
end;

procedure TFAtualizaBanco.CriaTabelaAcessoBanco;
begin
  try
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$RELATION_NAME FROM RDB$RELATIONS');
    MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA;');
    MDO.QConsulta.ParamByName('NOMETABELA').AsString := 'ACESSOBANCO';
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      if not InsereTabelaNova('ACESSOBANCO', 'COD_ACESSO INTEGER NOT NULL') then
        MPainel.Lines.Add('Erro ao gerar nova tabela: ACESSOBANCO');
      if InsereGeneration('ACESSOBANCO', 'COD_ACESSO') = False then
        MPainel.Lines.Add('Erro ao criar gerador para o campo COD_ACESSO da tabela ACESSO_BANCO');
      if InsereTrigger('ACESSOBANCO', 'gen_ACESSOBANCO_id', 'COD_ACESSO') = False
        then
        MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_ACESSO da tabela ACESSOBANCO');
      if not AtualizaTabela('ACESSOBANCO', 'HORA_ACESSO', 'TIME') then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_USUARIO da tabela: ACESSOBANCO');
      if not AtualizaTabela('ACESSOBANCO', 'DATA_ACESSO', 'DATE') then
        MPainel.Lines.Add('Erro ao atualizar o campo: DATA_ACESSO da tabela: ACESSOBANCO');
      if not AtualizaTabela('ACESSOBANCO', 'LOGIN', 'VARCHAR(50)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: LOGIN da tabela: ACESSOBANCO');
      if not AtualizaTabela('ACESSOBANCO', 'NOME_COMPUTADOR', 'VARCHAR(100)')
        then
        MPainel.Lines.Add('Erro ao atualizar o campo: NOME_COMPUTADOR da tabela: ACESSOBANCO');
      if not AtualizaTabela('ACESSOBANCO', 'VERSAO_SISTEMA', 'VARCHAR(30)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: VERSAO_SISTEMA da tabela: ACESSOBANCO');
      if not AtualizaTabela('ACESSOBANCO', 'VERSAO_COMPILACAO', 'INTEGER') then
        MPainel.Lines.Add('Erro ao atualizar o campo: VERSAO_COMPILACAO da tabela: ACESSOBANCO');
      if not AtualizaTabela('ACESSOBANCO', 'CAMINHO_BANCO', 'VARCHAR(200)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: CAMINHO_BANCO da tabela: ACESSOBANCO');

    end;
  except
  end;
end;

//Função utilizada para criar estrutura de tabelas de antecipação de contas a receber
procedure TFAtualizaBanco.CriaTabelaAntecipacaoCR;
begin
  try
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$RELATION_NAME FROM RDB$RELATIONS');
    MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA;');
    MDO.QConsulta.ParamByName('NOMETABELA').AsString := 'ANTECIPACR';
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      if not InsereTabelaNova('ANTECIPACR', 'COD_ANTECIPACR INTEGER NOT NULL')
        then
        MPainel.Lines.Add('Erro ao gerar nova tabela: ANTECIPACR');
      if InsereGeneration('ANTECIPACR', 'COD_ANTECIPACR') = False then
        MPainel.Lines.Add('Erro ao criar gerador para o campo COD_ANTECIPACR da tabela ANTECIPACR');
      if InsereTrigger('ANTECIPACR', 'gen_antecipacr_id', 'COD_ANTECIPACR') =
        False then
        MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_ANTECIPACR da tabela ANTECIPACR');
      if not AtualizaTabela('ANTECIPACR', 'COD_USUARIO', 'INTEGER') then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_USUARIO da tabela: ANTECIPACR');
      if not AtualizaTabela('ANTECIPACR', 'COD_INSTITUICAO', 'INTEGER') then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_INSTITUICAO da tabela: ANTECIPACR');
      if not AtualizaTabela('ANTECIPACR', 'TIPOINSTITUICAO', 'VARCHAR(10)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: TIPOINSTITUICAO da tabela: ANTECIPACR');
      if not AtualizaTabela('ANTECIPACR', 'COD_CONTAANTECIPACAO', 'INTEGER')
        then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_CONTAANTECIPACAO da tabela: ANTECIPACR');
      if not AtualizaTabela('ANTECIPACR', 'COD_CONTADESCONTO', 'INTEGER') then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_CONTADESCONTO da tabela: ANTECIPACR');
      if not AtualizaTabela('ANTECIPACR', 'DATAANTECIPACAO', 'DATE') then
        MPainel.Lines.Add('Erro ao atualizar o campo: DATAANTECIPACAO da tabela: ANTECIPARCR');
      if not AtualizaTabela('ANTECIPACR', 'VALORTOTAL', 'NUMERIC(14,2)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: VALORTOTAL da tabela: ANTECIPARCR');
      if not AtualizaTabela('ANTECIPACR', 'VALORDESCONTO', 'NUMERIC(14,2)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: VALORDESCONTO da tabela: ANTECIPARCR');
      if not AtualizaTabela('ANTECIPACR', 'VALORSALDO', 'NUMERIC(14,2)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: VALORSALDO da tabela: ANTECIPARCR');
    end;
  except
  end;
end;

//Função utilizada para criar estrutura de tabelas LANCAIXACTA
procedure TFAtualizaBanco.CriaTabelaLANCAIXACTA;
begin
  try
    //Adiciona CUSTOESTOQUEEMPRESA
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$RELATION_NAME FROM RDB$RELATIONS');
    MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA;');
    MDO.QConsulta.ParamByName('NOMETABELA').AsString := 'LANCAIXACTA';
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE TABLE LANCAIXACTA ( ');
      MDO.Query.SQL.Add('     COD_LANCAIXACTA INTEGER NOT NULL, ');
      MDO.Query.SQL.Add('     COD_LANCAIXA INTEGER, ');
      MDO.Query.SQL.Add('     VALOR MOEDA, ');
      MDO.Query.SQL.Add('     COD_PLNCTA INTEGER) ');
      MDO.Query.ExecSQL;

      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE SEQUENCE GEN_LANCAIXACTA_ID ');
      MDO.Query.ExecSQL;

      MDO.Transac.CommitRetaining;

      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE trigger lancaixacta_bi for lancaixacta ');
      MDO.Query.SQL.Add(' active before insert position 0 ');
      MDO.Query.SQL.Add(' AS ');
      MDO.Query.SQL.Add(' BEGIN ');
      MDO.Query.SQL.Add('   IF (NEW.cod_lancaixacta IS NULL) THEN ');
      MDO.Query.SQL.Add('     NEW.cod_lancaixacta = GEN_ID(gen_lancaixacta_id,1); ');
      MDO.Query.SQL.Add(' End ');
      MDO.Query.ExecSQL;
    end;
    MDO.Transac.CommitRetaining;
  except
  end;
end;

//Função utilizada para criar estrutura de tabelas de CUSTOESTOQUEEMPRESA
procedure TFAtualizaBanco.CriaTabelaCustoEstoqueEmpresa;
begin
  try
    //Adiciona CUSTOESTOQUEEMPRESA
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$RELATION_NAME FROM RDB$RELATIONS');
    MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA;');
    MDO.QConsulta.ParamByName('NOMETABELA').AsString := 'CUSTOESTOQUEEMPRESA';
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      if not InsereTabelaNova('CUSTOESTOQUEEMPRESA',
        'COD_CUSTOESTOQUEEMPRESA INTEGER NOT NULL') then
        MPainel.Lines.Add('Erro ao gerar nova tabela: CUSTOESTOQUEEMPRESA');
      if InsereGeneration('CUSTOESTOQUEEMPRESA', 'COD_CUSTOESTOQUEEMPRESA') =
        False then
        MPainel.Lines.Add('Erro ao criar gerador para o campo COD_CUSTOESTOQUEEMPRESA da tabela CUSTOESTOQUEEMPRESA');
      if InsereTrigger('CUSTOESTOQUEEMPRESA', 'GEN_CUSTOESTOQUEEMPRESA_ID',
        'COD_CUSTOESTOQUEEMPRESA') = False then
        MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_CUSTOESTOQUEEMPRESA da tabela CUSTOESTOQUEEMPRESA');
      if not AtualizaTabela('CUSTOESTOQUEEMPRESA', 'COD_ESTOQUE', 'INTEGER')
        then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_ESTOQUE da tabela: CUSTOESTOQUEEMPRESA');
      if not AtualizaTabela('CUSTOESTOQUEEMPRESA', 'COD_ITEMPEDC', 'INTEGER')
        then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_ITEMPEDC da tabela: CUSTOESTOQUEEMPRESA');
      if not AtualizaTabela('CUSTOESTOQUEEMPRESA', 'VALORUNITARIOCUSTO',
        'NUMERIC(14,2)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: VALORUNITARIOCUSTO da tabela: CUSTOESTOQUEEMPRESA');
      if not AtualizaTabela('CUSTOESTOQUEEMPRESA', 'QUANTIDADEDISPONIVELVENDA',
        'NUMERIC(10,3)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: QUANTIDADEDISPONIVELVENDA da tabela: CUSTOESTOQUEEMPRESA');
      if not AtualizaTabela('CUSTOESTOQUEEMPRESA', 'DATA', 'DATE') then
        MPainel.Lines.Add('Erro ao atualizar o campo: DATA da tabela: CUSTOESTOQUEEMPRESA');
      if not AtualizaTabela('CUSTOESTOQUEEMPRESA', 'ATIVO', 'INTEGER') then
        MPainel.Lines.Add('Erro ao atualizar o campo: ATIVO da tabela: CUSTOESTOQUEEMPRESA');
    end;

    //Adiciona CUSTOITEMPEDIDO
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$RELATION_NAME FROM RDB$RELATIONS');
    MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA;');
    MDO.QConsulta.ParamByName('NOMETABELA').AsString := 'CUSTOITEMPEDIDO';
    MDO.QConsulta.Open;

    if MDO.QConsulta.IsEmpty then
    begin
      if not InsereTabelaNova('CUSTOITEMPEDIDO',
        'COD_CUSTOITEMPEDIDO INTEGER NOT NULL') then
        MPainel.Lines.Add('Erro ao gerar nova tabela: CUSTOITEMPEDIDO');
      if InsereGeneration('CUSTOITEMPEDIDO', 'COD_CUSTOITEMPEDIDO') = False then
        MPainel.Lines.Add('Erro ao criar gerador para o campo COD_CUSTOITEMPEDIDO da tabela CUSTOITEMPEDIDO');
      if InsereTrigger('CUSTOITEMPEDIDO', 'GEN_CUSTOITEMPEDIDO_ID',
        'COD_CUSTOITEMPEDIDO') = False then
        MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_CUSTOITEMPEDIDO da tabela CUSTOITEMPEDIDO');

      if not AtualizaTabela('CUSTOITEMPEDIDO', 'COD_CUSTOESTOQUEEMPRESA',
        'INTEGER') then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_CUSTOESTOQUEEMPRESA da tabela: CUSTOITEMPEDIDO');
      if not AtualizaTabela('CUSTOITEMPEDIDO', 'COD_GERADOR', 'INTEGER') then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_ITENSPEDVEN da tabela: CUSTOITEMPEDIDO');
      if not AtualizaTabela('CUSTOITEMPEDIDO', 'TIPOGERADOR', 'VARCHAR(20)')
        then
        MPainel.Lines.Add('Erro ao atualizar o campo: TIPOGERADOR da tabela: CUSTOITEMPEDIDO');
      if not AtualizaTabela('CUSTOITEMPEDIDO', 'QUANTIDADE', 'NUMERIC(10,3)')
        then
        MPainel.Lines.Add('Erro ao atualizar o campo: QUANTIDADE da tabela: CUSTOITEMPEDIDO');
    end;
  except
  end;
end;

//Função utilizada para criar estrutura de tabelas de antecipação de contas a receber Itens
procedure TFAtualizaBanco.CriaTabelaAntecipacaoCR_Itens;
begin
  try
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$RELATION_NAME FROM RDB$RELATIONS');
    MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA;');
    MDO.QConsulta.ParamByName('NOMETABELA').AsString := 'ANTECIPARCR_ITENS';
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      if not InsereTabelaNova('ANTECIPARCR_ITENS',
        'COD_ANTECIPARCR_ITENS INTEGER NOT NULL') then
        MPainel.Lines.Add('Erro ao gerar nova tabela: ANTECIPARCR_ITENS');
      if InsereGeneration('ANTECIPARCR_ITENS', 'COD_ANTECIPARCR_ITENS') = False
        then
        MPainel.Lines.Add('Erro ao criar gerador para o campo COD_ANTECIPARCR_ITENS da tabela ANTECIPARCR_ITENS');
      if InsereTrigger('ANTECIPARCR_ITENS', 'gen_anteciparcr_itens_id',
        'cod_anteciparcr_itens') = False then
        MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo cod_anteciparcr_itens da tabela ANTECIPARCR_ITENS');
      if not AtualizaTabela('ANTECIPARCR_ITENS', 'COD_ANTECIPARCR', 'INTEGER')
        then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_ANTECIPARCR da tabela: ANTECIPARCR_ITENS');
      if not AtualizaTabela('ANTECIPARCR_ITENS', 'COD_PARCELACR', 'INTEGER')
        then
        MPainel.Lines.Add('Erro ao atualizar o campo: COD_PARCELACR da tabela: ANTECIPARCR_ITENS');
      if not AtualizaTabela('ANTECIPARCR_ITENS', 'STATUS', 'VARCHAR(10)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: STATUS da tabela: ANTECIPARCR_ITENS');

    end;
  except
  end;
end;

{
//Função utilizada para criar estrutura de tabelas de antecipação
Procedure TFAtualizaBanco.CriaTabelaAntecipacaoCR_01;
Begin
 Try
  MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add('SELECT RDB$RELATION_NAME FROM RDB$RELATIONS');
      MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA;');
      MDO.QConsulta.ParamByName('NOMETABELA').AsString:='ANTECIPARCR';
      MDO.QConsulta.Open;
      if MDO.QConsulta.IsEmpty
  Then Begin
        If not InsereTabelaNova('ANTECIPARCR', 'COD_ANTECIPARCR INTEGER NOT NULL') Then
         MPainel.Lines.Add('Erro ao gerar nova tabela: ANTECIPARCR');
        if InsereGeneration('ANTECIPARCR','COD_ANTECIPARCR')=False then
            MPainel.Lines.Add('Erro ao criar gerador para o campo COD_ANTECIPARCR da tabela ANTECIPARCR');
        if InsereTrigger('ANTECIPARCR', 'gen_anteciparcr_id', 'cod_anteciparcr')=False then
            MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo cod_anteciparcr da tabela ANTECIPARCR');
        if not AtualizaTabela('ANTECIPARCR', 'DATA', 'DATE') then
         MPainel.Lines.Add('Erro ao atualizar o campo: DATA da tabela: ANTECIPARCR');
        if not AtualizaTabela('ANTECIPARCR', 'COD_USUARIO', 'INTEGER') then
         MPainel.Lines.Add('Erro ao atualizar o campo: COD_USUARIO da tabela: ANTECIPARCR');
        if not AtualizaTabela('ANTECIPARCR', 'VALOR', 'NUMERIC(14,2)') then
         MPainel.Lines.Add('Erro ao atualizar o campo: VALOR da tabela: ANTECIPARCR');
      End;
   Except
   End;
End;
}
//Paulo 02/04/2012: starta a atualização de tabelas
procedure TFAtualizaBanco.StartTabelas;
begin
  //////////////////////////////////////////////////////////////////////////
 // Paulo 31/03/2012: FUNÇÃO PARA CRIAR NOVA TABELA                      //
   // Deverá ser feita a chamada da função InsereTabelaNova só para criar  //
   // a tabela com o código primário, para a pk deverá inserir o           //
   // NOME_DO_CAMPO+INTEGER+NOTNULL. Para cada campo da tabela deverá ser  //
   // chamado a função AtualizaTabela. Caso seja só atualização de tabelas //
   // apenas chamar a função AtualizaTabela                                //
   //////////////////////////////////////////////////////////////////////////

  CriaTabelaAntecipacoes;
  CriaTabelaAcessoBanco;

  CriaTabelaLANCAIXACTA;

  if not AtualizaTabela('REGISTRO', 'COD_MODULO', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: COD_MODULO da tabela: REGISTRO');

  if not AtualizaTabela('LOJA', 'VERSAO_COMPILACAO_BD', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VERSAO_COMPILACAO_BD da tabela: LOJA');

  AtualizaVersaoBanco;

  if not AtualizaTabela('LOJA', 'FORMAFECHAMENTOOS', 'VARCHAR(20)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: FORMAFECHAMENTOOS da tabela: LOJA');

  if not AtualizaTabela('ORDEM', 'FORMAFECHAMENTOOS', 'VARCHAR(20)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: FORMAFECHAMENTOOS da tabela: ORDEM');

  if InsereGeneration('LANCAIXA', 'COD_LANC') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo COD_LANC da tabela LANCAIXA');
  if InsereTrigger('LANCAIXA', 'GEN_LANCAIXA_ID', 'COD_LANC') = False then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_LANC da tabela COD_LANC');

  if InsereGeneration('CTARECEBER', 'COD_CTARECEBER') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo COD_CTARECEBER da tabela CTARECEBER');

  if InsereTrigger('CTARECEBER', 'GEN_CTARECEBER_ID', 'COD_CTARECEBER') = False
    then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_CTARECEBER da tabela CTARECEBER');

  if InsereGeneration('CTAPAGAR', 'COD_CTAPAGAR') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo COD_CTAPAGAR da tabela CTAPAGAR');

  if InsereTrigger('CTAPAGAR', 'GEN_CTAPAGAR_ID', 'COD_CTAPAGAR') = False then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_CTAPAGAR da tabela CTAPAGAR');

  if InsereGeneration('PARCELACR', 'COD_PARCELACR') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo COD_PARCELACR da tabela PARCELACR');

  if InsereTrigger('PARCELACR', 'GEN_PARCELACR_ID', 'COD_PARCELACR') = False
    then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_PARCELACR da tabela PARCELACR');

  if InsereGeneration('PARCELACP', 'COD_PARCELACP') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo COD_PARCELACP da tabela PARCELACP');

  if InsereTrigger('PARCELACP', 'GEN_PARCELACP_ID', 'COD_PARCELACP') = False
    then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_PARCELACP da tabela PARCELACP');

  if not AtualizaTabela('SUBPRODUTO', 'RETEM_PIS_COFINS', 'VARCHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: RETEM_PIS_COFINS da tabela: SUBPRODUTO');

  if not AtualizaTabela('EMPRESA', 'ALIQ_RETEM_PIS', 'NUMERIC(10,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ALIQ_RETEM_PIS da tabela: EMPRESA');

  if not AtualizaTabela('EMPRESA', 'RETEM_IMPOSTOS', 'VARCHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: RETEM_IMPOSTOS da tabela: EMPRESA');

  if not AtualizaTabela('EMPRESA', 'ALIQ_RETEM_CSLL', 'NUMERIC(10,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ALIQ_RETEM_CSLL da tabela: EMPRESA');

  if not AtualizaTabela('EMPRESA', 'ALIQ_RETEM_IRRF', 'NUMERIC(10,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ALIQ_RETEM_IRRF da tabela: EMPRESA');

  if not AtualizaTabela('EMPRESA', 'ALIQ_RETEM_COFINS', 'NUMERIC(10,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ALIQ_RETEM_COFINS da tabela: EMPRESA');

  //Alex - 21/08/2023 - Adiciona campo  ORGAO_FEDERAL na tabela PESSOAJ
  if not AtualizaTabela('PESSOAJ', 'ORGAO_FEDERAL', 'VARCHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ORGAO_FEDERAL da tabela: PESSOAJ');
  //Alex - 21/08/2023 - Adiciona campo  ORGAO_MUNICIPAL_ESTADUAL na tabela PESSOAJ
  if not AtualizaTabela('PESSOAJ', 'ORGAO_MUNICIPAL_ESTADUAL', 'VARCHAR(1)')
    then
    MPainel.Lines.Add('Erro ao atualizar o campo: ORGAO_MUNICIPAL_ESTADUAL da tabela: PESSOAJ');

  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISSAIDA', 'NFEVRETPIS', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVRETPIS da tabela: DOCFISSAIDA');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISSAIDA', 'NFEVRETCOFINS', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVRETCOFINS da tabela: DOCFISSAIDA');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISSAIDA', 'NFEVRETCSLL', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVRETCSLL da tabela: DOCFISSAIDA');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISSAIDA', 'NFEVBCIRRF', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVBCIRRF da tabela: DOCFISSAIDA');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISSAIDA', 'NFEVIRRF', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVIRRF da tabela: DOCFISSAIDA');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISSAIDA', 'NFEVBCRETPREV', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVBCRETPREV da tabela: DOCFISSAIDA');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISSAIDA', 'NFEVRETPREV', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVRETPREV da tabela: DOCFISSAIDA');

  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISORD', 'NFEVRETPIS', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVRETPIS da tabela: DOCFISORD');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISORD', 'NFEVRETCOFINS', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVRETCOFINS da tabela: DOCFISORD');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISORD', 'NFEVRETCSLL', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVRETCSLL da tabela: DOCFISORD');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISORD', 'NFEVBCIRRF', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVBCIRRF da tabela: DOCFISORD');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISORD', 'NFEVIRRF', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVIRRF da tabela: DOCFISORD');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISORD', 'NFEVBCRETPREV', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVBCRETPREV da tabela: DOCFISORD');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFISORD', 'NFEVRETPREV', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVRETPREV da tabela: DOCFISORD');

  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFIS', 'NFEVRETPIS', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVRETPIS da tabela: DOCFIS');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFIS', 'NFEVRETCOFINS', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVRETCOFINS da tabela: DOCFIS');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFIS', 'NFEVRETCSLL', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVRETCSLL da tabela: DOCFIS');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFIS', 'NFEVBCIRRF', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVBCIRRF da tabela: DOCFIS');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFIS', 'NFEVIRRF', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVIRRF da tabela: DOCFIS');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFIS', 'NFEVBCRETPREV', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVBCRETPREV da tabela: DOCFIS');
  //Alex - 14/08/2023 - Adiciona campo na tabela documento fiscal
  if not AtualizaTabela('DOCFIS', 'NFEVRETPREV', 'DECIMAL(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEVRETPREV da tabela: DOCFIS');

  //Alex - 30/12/2021 - Adiciona campo para nome da etiqueta nas configurações
  if not AtualizaTabela('ETQPROD', 'NOMEIMPRESSORA', 'VARCHAR(60)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: NOMEIMPRESSORA na tabela: ETQPROD');

  //Alex - 17/09/2020 - Adiciona campo DTAGENDADO em OS
  if not AtualizaTabela('ORDEM', 'DTAGENDADO', 'DATE') then
    MPainel.Lines.Add('Erro ao adicionar o campo: DTAGENDADO na tabela: ORDEM');

  //Edmar - 18/08/2019 - Adiciona campo CODIGOBENEFICIOFISCAL em SUBPRODUTO
  if not AtualizaTabela('SUBPRODUTO', 'CODIGOBENEFICIOFISCAL', 'VARCHAR(10)')
    then
    MPainel.Lines.Add('Erro ao adicionar o campo: CODIGOBENEFICIOFISCAL na tabela: SUBPRODUTO');

  //ALEX - 11/07/2019: CRIA CAMPO INATIVO CTACOR
  if not AtualizaTabela('CTACOR', 'INATIVO', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: INATIVO na tabela: CTACOR');

  //ALEX - 30/05/2019: CRIA CAMPO ALTERACIDADEPESSOA LOJAACESSO
  if not AtualizaTabela('LOJACESSO', 'ALTERACIDADEPESSOA', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: ALTERACIDADEPESSOA na tabela: LOJACESSO');

  //Edmar - 28/05/2019 - Atualiza campo ESTOQUE em COMPALIQST
  if not AtualizaTabela('ESTOQUE', 'COMPALIQST', 'NUMERIC(5,4)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: COMPALIQST na tabela: ESTOQUE ');
  //Edmar - 28/05/2019 - Atualiza campo ESTOQUE em COMPVLRST
  if not AtualizaTabela('ESTOQUE', 'COMPVLRST', 'NUMERIC(15,2)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: COMPVLRST na tabela: ESTOQUE');
  //Edmar - 28/05/2019 - Atualiza campo ESTOQUE em COMPVLRBCST
  if not AtualizaTabela('ESTOQUE', 'COMPVLRBCST', 'NUMERIC(15,2)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: COMPVLRBCST na tabela: ESTOQUE');
  //Edmar - 28/05/2019 - Atualiza campo ESTOQUE em COMPVLRICMS
  if not AtualizaTabela('ESTOQUE', 'COMPVLRICMS', 'NUMERIC(15,2)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: COMPVLRICMS na tabela: ESTOQUE');
  //Edmar - 27/05/2019 - Atualiza campo IMPNFETMP em ALIQST
  if not AtualizaTabela('IMPNFETMP', 'ALIQST', 'NUMERIC(5,4)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: ALIQST na tabela: IMPNFETMP');

  //Edmar - 27/05/2019 - Atualiza campo IMPNFETMP em ALIQFCP
  if not AtualizaTabela('IMPNFETMP', 'ALIQFCP', 'NUMERIC(5,4)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: ALIQFCP na tabela: IMPNFETMP');

  //Edmar - 24/05/2019 - Atualiza campo IMPNFETMP em VALORDESCONTO
  if not AtualizaTabela('IMPNFETMP', 'VALORDESCONTO', 'NUMERIC(15,2)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: VALORDESCONTO na tabela: IMPNFETMP');

  //Alex - 22/05/2019 - Altera o tamanho do campo DESCPRODVINCULADO para VARCHAR(150)
  if not AtualizaTabelaCampo('IMPNFETMP', 'DESCPRODVINCULADO', 'VARCHAR(150)')
    then
    MPainel.Lines.Add('Erro ao atualizar o campo: DESCPRODVINCULADO da tabela: IMPNFETMP');

  //Alex - 22/05/2019 - Atualiza campo IMPNFETMP em CUSTONFE
  if not AtualizaTabela('IMPNFETMP', 'CUSTONFE', 'NUMERIC(18,2)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: IMPNFETMP na tabela: CUSTONFE');

  //Alex - 22/05/2019 - Atualiza campo nItem em IMPNFETMP
  if not AtualizaTabela('IMPNFETMP', 'NITEM', 'SMALLINT') then
    MPainel.Lines.Add('Erro ao adicionar o campo: NITEM na tabela: IMPNFETMP');

  { //Edmar - 14/05/2019 - Atualiza campo FIELD1 em REGISTRO
   if not AtualizaTabelaCampo('REGISTRO', 'FIELD1', 'VARCHAR(500)') then
     MPainel.Lines.Add('Erro ao atualizar o campo: FIELD1 na tabela: REGISTRO');
   }
   //Edmar - 20/03/2019 - Adiciona campo VALORCUSTOANTERIOR em CUSTOITEMPEDIDO
  if not AtualizaTabela('CUSTOITEMPEDIDO', 'VALORCUSTOANTERIOR',
    'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: VALORCUSTOANTERIOR na tabela: CUSTOITEMPEDIDO');

  //Edmar - 19/03/2019 - Remove a antiga FK de item de compra e cria uma FK generica
  //que vai aceitar qualquer PK de item. Cria também um TIPOGERADOR
  if not ApagaCampo('CUSTOESTOQUEEMPRESA', 'COD_ITEMPEDC') then
    MPainel.Lines.Add('Erro ao remover campo: COD_ITEMPEDC na tabela: CUSTOESTOQUEEMPRESA');

  if not AtualizaTabela('CUSTOESTOQUEEMPRESA', 'COD_ITEM', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: COD_ITEM da tabela: CUSTOESTOQUEEMPRESA');
  if not AtualizaTabela('CUSTOESTOQUEEMPRESA', 'TIPOGERADOR', 'VARCHAR(15)')
    then
    MPainel.Lines.Add('Erro ao atualizar o campo: TIPOGERADOR da tabela: CUSTOESTOQUEEMPRESA');

  //Edmar - 08/03/2019 - Adiciona campo VALORCUSTOUNITARIONOTAFISCAL à tabela ITPRODORD
  if not AtualizaTabela('ITPRODORD', 'VALORCUSTOUNITARIONOTAFISCAL',
    'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: VALORCUSTOUNITARIONOTAFISCAL na tabela: ITPRODORD');
  if not AtualizaTabela('ITENSPEDVEN', 'VALORCUSTOUNITARIONOTAFISCAL',
    'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: VALORCUSTOUNITARIONOTAFISCAL na tabela: ITENSPEDVEN');

  //Alex - 26/02/2019 - Cria estrutura das tabelas CUSTOESTOQUEEMPRESA
  CriaTabelaCustoEstoqueEmpresa;

  //Edmar - 30/08/2018 - Adiciona campo TEXTOPERSONALIZADO à tabela ETQPROD
  if not AtualizaTabela('ETQPROD', 'TEXTOPERSONALIZADO', 'VARCHAR(60)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: TEXTOPERSONALIZADO na tabela: ETQPROD');

  //Edmar - 27/08/2018 - Adiciona novos campos de descrição na tabela TMP
  if not AtualizaTabela('TMP', 'DESC4', 'VARCHAR(60)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: DESC4 na tabela: TMP');
  if not AtualizaTabela('TMP', 'DESC5', 'VARCHAR(60)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: DESC5 na tabela: TMP');
  if not AtualizaTabela('TMP', 'DESC6', 'VARCHAR(60)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: DESC6 na tabela: TMP');
  if not AtualizaTabela('TMP', 'DESC7', 'VARCHAR(60)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: DESC7 na tabela: TMP');
  if not AtualizaTabela('TMP', 'DESC8', 'VARCHAR(60)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: DESC8 na tabela: TMP');

  //Edmar - 01/08/2018 - Atualiza tabela LOJA adiciona IMPSTXMLPRODUTO
  if not AtualizaTabela('LOJA', 'IMPSTXMLPRODUTO', 'char(1)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: IMPSTXMLPRODUTO na tabela: LOJA');

  //Edmar - 27/06/2018 - Atualiza tabela LOJA adiciona CNPJ_CONTABILIDADE
  if not AtualizaTabela('LOJA', 'CNPJ_CONTABILIDADE', 'VARCHAR(20)') then
    MPainel.Lines.Add('Erro ao adicionar o campo: CNPJ_CONTABILIDADE na tabela: LOJA');

  //Edmar - 22/05/2018 - Atualiza a tabela SUBPRODUTO adiciona DESCRICAO_ANP
  if not AtualizaTabela('SUBPRODUTO', 'DESCRICAO_ANP', 'VARCHAR(100)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: DESCRICAO_ANP da tabela: SUBPRODUTO');

  //Alex - 16/04/2018 - Atualiaza a tabela LOJA COD_CONTAANTECIPACAOCR
  if not AtualizaTabela('LOJA', 'COD_CONTAANTECIPACAOCR', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: COD_CONTAANTECIPACAOCR da tabela: LOJA');

  //Alex - 13/04/2018 - Cria estrutura das tabelas de Antecipação de contas a receber e  itens de antecipação de contas a receber
  CriaTabelaAntecipacaoCR;
  CriaTabelaAntecipacaoCR_Itens;

  //Alex - 13/04/2018 - Atualiaza a tabela PARCELACR adiciona ANTECIPADO
  if not AtualizaTabela('PARCELACR', 'ANTECIPADO', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ANTECIPADO da tabela: PARCELACR');

  //Alex - 13/03/2018 - Atualiaza o campo COD_COMPROD da tabela COMPROD  para autoincremento
  if not InsereGeneration('COMPROD', 'COD_COMPROD') then
    MPainel.Lines.Add('Erro ao criar Generator para a tabela COMPROD')
  else if not InsereTrigger('COMPROD', 'GEN_COMPROD_ID', 'COD_COMPROD') then
    MPainel.Lines.Add('Erro ao criar Trigger para a tabela COMPROD');

  //Alex - 13/03/2018 - Atualiaza a tabela LOJA adiciona USARMULTIPLOSVENDEDORESOS
  if not AtualizaTabela('LOJA', 'USARMULTIPLOSVENDEDORESOS', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: USARMULTIPLOSVENDEDORESOS da tabela: LOJA');

  //Alex - 14/12/2017 - Atualiza tabela LOJACESSO adiciona EDITAVENDEDOROS
  if not InsereCampoEditaVendedorOs then
    MPainel.Lines.Add('Erro ao atualizar o campo: EDITAVENDEDOROS da tabela: EDITAVENDEDOROS');

  //Alex - 08/03/2018 - Atualiaza a tabela IMPNFETMP adiciona VALORPIS
  if not AtualizaTabela('IMPNFETMP', 'VALORPIS', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VALORPIS da tabela: IMPNFETMP');

  //Alex - 08/03/2018 - Atualiaza a tabela IMPNFETMP adiciona VALORCOFINS
  if not AtualizaTabela('IMPNFETMP', 'VALORCOFINS', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VALORSEGURO da tabela: IMPNFETMP');

  //Alex - 08/03/2018 - Atualiaza a tabela IMPNFETMP adiciona VALOROUTROS
  if not AtualizaTabela('IMPNFETMP', 'VALORSEGURO', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VALORSEGURO da tabela: IMPNFETMP');

  //Alex - 08/03/2018 - Atualiaza a tabela IMPNFETMP adiciona VALOROUTROS
  if not AtualizaTabela('IMPNFETMP', 'VALOROUTROS', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VALOROUTROS da tabela: IMPNFETMP');

  //Alex - 07/03/2018 - Atualiaza a tabela Estoque adiciona VALCUSTONFE
  if not AtualizaTabela('ESTOQUE', 'VALCUSTONFE', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VALCUSTONFE da tabela: ESTOQUE');

  //Edmar - 16/11/2017 - Atualiza tabela IMPNFETMP adiciona VALORREP
  if not AtualizaTabela('IMPNFETMP', 'VALORREP', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VALORREP da tabela: IMPNFETMP');

  //Edmar - 16/11/2017 - Atualiza tabela IMPNFETMP adiciona VALORFRETE
  if not AtualizaTabela('IMPNFETMP', 'VALORFRETE', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VALORFRETE da tabela: IMPNFETMP');

  //Edmar - 16/11/2017 - Atualiza tabela IMPNFETMP adiciona ALIQFRETE
  if not AtualizaTabela('IMPNFETMP', 'ALIQFRETE', 'NUMERIC(5, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ALIQFRETE da tabela: IMPNFETMP');

  //Edmar - 12/09/2017 - Atualiza tabela DOCFISORD adiciona CONTINGENCIA
  if not AtualizaTabela('DOCFISORD', 'CONTINGENCIA', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CONTINGENCIA da tabela: DOCFISORD');

  //Edmar - 12/09/2017 - Atualiza tabela DOCFISSAIDA adiciona CONTINGENCIA
  if not AtualizaTabela('DOCFISSAIDA', 'CONTINGENCIA', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CONTINGENCIA da tabela: DOCFISSAIDA');

  //Edmar - 12/09/2017 - Atualiza tabela DOCFIS adiciona CONTINGENCIA
  if not AtualizaTabela('DOCFIS', 'CONTINGENCIA', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CONTINGENCIA da tabela: DOCFIS');
  //
//Edmar - 13/07/2017 - Atualiza campo TEL0800 para 50 caracteres
  if not AtualizaTabelaCampo('EMPRESA', 'TEL0800', 'VARCHAR(50)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: TEL0800 da tabela: EMPRESA');

  //Edmar - 13/07/2017 - Atualiza campo FONE para 50 caracteres
  if not AtualizaTabelaCampo('EMPRESA', 'FONE', 'VARCHAR(50)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: FONE da tabela: EMPRESA');

  //Alex - 09/05/2017 - Cria campo CONTROLERETORNO na tabela de Itenpedvenda para controlar a opção de de saídas de produtos para posterior retorno
  if not AtualizaTabela('ITENSPEDVEN', 'CONTROLERETORNO', 'VARCHAR(25)') then
    MPainel.Lines.Add('Erro ao criar o campo: CONTROLERETORNO da tabela: ITENSPEDVEN');

  //Alex - 08/05/2017 - Cria campo DESABCOPIAPRODUTOS na tabela de loja para controlar a opção de habilitar ou desabilitar a função de F10 e F11 de cadastros de produtos
  if not AtualizaTabela('LOJA', 'DESABCOPIAPRODUTOS', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao criar o campo: DESABCOPIAPRODUTOS da tabela: LOJA');

  //Alex - 06/01/2017 - Cria campo MAISDEUMCONTROLEINTERNO na tabela LOJA
  if not AtualizaTabela('LOJA', 'MAISDEUMCONTROLEINTERNO', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao criar o campo: MAISDEUMCONTROLEINTERNO da tabela: LOJA');

  //Edmar - 27/12/2016 - Cria campo RECALCULA_LUCRATIV_PRODUTO na tabela LOJA
  if not AtualizaTabela('CTACOR', 'CPFCNPJ_BOLETO', 'VARCHAR(14)') then
    MPainel.Lines.Add('Erro ao criar o campo: CPFCNPJ_BOLETO da tabela: CTACOR');

  if not AtualizaTabela('CTACOR', 'NOME_EXIBICAO_BOLETO', 'VARCHAR(100)') then
    MPainel.Lines.Add('Erro ao criar o campo: NOME_EXIBICAO_BOLETO da tabela: CTACOR');

  //Edmar - 27/12/2016 - Cria campo RECALCULA_LUCRATIV_PRODUTO na tabela LOJA
  if not AtualizaTabela('LOJA', 'RECALCULA_LUCRATIV_PRODUTO', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao criar o campo: RECALCULA_LUCRATIV_PRODUTO da tabela: LOJA');

  //Edmar - 07/12/2016 - Cria campo BASEICMSUFDEST na tabela ITPRODORD
  if not AtualizaTabela('ITPRODORD', 'BASEICMSUFDEST', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao criar o campo: BASEICMSUFDEST da tabela: ITPRODORD');

  //Edmar - 07/12/2016 - Cria campo BASEICMSUFDEST na tabela ITENSPEDVEN
  if not AtualizaTabela('ITENSPEDVEN', 'BASEICMSUFDEST', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao criar o campo: BASEICMSUFDEST da tabela: ITENSPEDVEN');

  //Edmar - 07/12/2016 - Cria campo BASEICMSUFDEST na tabela ITENSPEDC
  if not AtualizaTabela('ITENSPEDC', 'BASEICMSUFDEST', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao criar o campo: BASEICMSUFDEST da tabela: ITENSPEDC');

  //Edmar - 16/11/2016 - Cria campo COBRANCA_BB na tabela CTACOR
  if not AtualizaTabela('CTACOR', 'COBRANCA_BB', 'VARCHAR(1)') then
    MPainel.Lines.Add('Erro ao criar o campo: COBRANCA_BB da tabela: CTACOR');

  //Edmar - 16/11/2016 - Cria campo COBRANCA_BANCOOB na tabela CTACOR
  if not AtualizaTabela('CTACOR', 'COBRANCA_BANCOOB', 'VARCHAR(1)') then
    MPainel.Lines.Add('Erro ao criar o campo: COBRANCA_BANCOOB da tabela: CTACOR');

  //Edmar - 09/11/2016 - Atualiza info. do pedido de compra da Nfe para os itens (compra, venda e ordem)
  if not AtualizaTabela('ITENSPEDVEN', 'NUMPEDCOMPRANFE', 'VARCHAR(15)') then
    MPainel.Lines.Add('Erro ao criar o campo: NUMPEDCOMPRANFE da tabela: ITENSPEDVEN');
  if not AtualizaTabela('ITENSPEDVEN', 'NUMITEMPEDCOMPRANFE', 'VARCHAR(6)') then
    MPainel.Lines.Add('Erro ao criar o campo: NUMITEMPEDCOMPRANFE da tabela: ITENSPEDVEN');

  if not AtualizaTabela('ITPRODORD', 'NUMPEDCOMPRANFE', 'VARCHAR(15)') then
    MPainel.Lines.Add('Erro ao criar o campo: NUMPEDCOMPRANFE da tabela: ITPRODORD');
  if not AtualizaTabela('ITPRODORD', 'NUMITEMPEDCOMPRANFE', 'VARCHAR(6)') then
    MPainel.Lines.Add('Erro ao criar o campo: NUMITEMPEDCOMPRANFE da tabela: ITPRODORD');

  if not AtualizaTabela('ITENSPEDC', 'NUMPEDCOMPRANFE', 'VARCHAR(15)') then
    MPainel.Lines.Add('Erro ao criar o campo: NUMPEDCOMPRANFE da tabela: ITENSPEDC');
  if not AtualizaTabela('ITENSPEDC', 'NUMITEMPEDCOMPRANFE', 'VARCHAR(6)') then
    MPainel.Lines.Add('Erro ao criar o campo: NUMITEMPEDCOMPRANFE da tabela: ITENSPEDC');

  //Alex - 02/11/2016: Campos para armazenar estoque de 4 casas após a virgula
  if not AtualizaTabela('LANCENT', 'QTD4CASAS', 'VARCHAR(15)') then
    MPainel.Lines.Add('Erro ao criar o campo: QTD4CASAS da tabela: LANCENT');
  if not AtualizaTabela('LANCSAI', 'QTD4CASAS', 'VARCHAR(15)') then
    MPainel.Lines.Add('Erro ao criar o campo: QTD4CASAS da tabela: LANCSAI');
  if not AtualizaTabela('ITENSPEDC', 'QTD4CASAS', 'VARCHAR(15)') then
    MPainel.Lines.Add('Erro ao criar o campo: QTD4CASAS da tabela: ITENSPEDC');
  if not AtualizaTabela('ITENSPEDVEN', 'QTD4CASAS', 'VARCHAR(15)') then
    MPainel.Lines.Add('Erro ao criar o campo: QTD4CASAS da tabela: ITENSPEDVEN');
  if not AtualizaTabela('ITPRODORD', 'QTD4CASAS', 'VARCHAR(15)') then
    MPainel.Lines.Add('Erro ao criar o campo: QTD4CASAS da tabela: ITPRODORD');
  if not AtualizaTabela('LOJA', 'USAR4CASASQTD', 'VARCHAR(5)') then
    MPainel.Lines.Add('Erro ao criar o campo: USAR4CASASQTD da tabela: LOJA');
  if not AtualizaTabela('ESTOQUE', 'ESTOQUE4CASAS', 'VARCHAR(15)') then
    MPainel.Lines.Add('Erro ao criar o campo: USAR4CASASQTD da tabela: ESTOQUE');

  //Edmar - 14/10/2016 - Cria campo DIFERENCIAL_ALIQ tabela CST
  if not AtualizaTabela('CST', 'DIFERENCIAL_ALIQ', 'VARCHAR(1)') then
    MPainel.Lines.Add('Erro ao criar o campo: DIFERENCIAL_ALIQ da tabela: CST');

  //Edmar - 26/08/2016 - Cria campo NFCESERIE tabela EMPRESA
  if not AtualizaTabela('EMPRESA', 'NFCESERIE', 'INTEGER') then
    MPainel.Lines.Add('Erro ao criar o campo: NFCESERIE da tabela: EMPRESA')
  else
  begin
    //Edmar - 26/08/2016 - Pega a série da NFe caso o novo campo NFCESERIE esteja null
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' UPDATE EMPRESA SET EMPRESA.NFCESERIE = EMPRESA.NFESERIE WHERE EMPRESA.NFCESERIE IS NULL ');
    MDO.Query.ExecSQL;

    MDO.Transac.CommitRetaining;
  end;

  { CRIA NOVOS CAMPOS PARA CONTA CORRENTE }
       //Alex: 05/09/2016 - Cria campo USARVENDEDOROSMEC tabela LOJA
  if not AtualizaTabela('LOJA', 'USARVENDEDOROSMEC', 'VARCHAR(1)') then
    MPainel.Lines.Add('Erro ao criar o campo: USARVENDEDOROSMEC da tabela: LOJA');

  { CRIA NOVOS CAMPOS PARA CONTA CORRENTE }
       //Edmar - 27/05/2016 - Cria campo CODCEDENTEBLT_REG tabela CTACOR
  if not AtualizaTabela('CTACOR', 'CODCEDENTEBLT_REG', 'VARCHAR(20)') then
    MPainel.Lines.Add('Erro ao criar o campo: CODCEDENTEBLT_REG da tabela: CTACOR');

  //Edmar - 27/05/2016 - Cria campo CODCEDENTEBLT_REG tabela CTACOR
  if not AtualizaTabela('CTACOR', 'DIGCODCEDENTEBLT_REG', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao criar o campo: DIGCODCEDENTEBLT_REG da tabela: CTACOR');

  //Edmar - 27/05/2016 - Cria campo CODCEDENTEBLT_REG tabela CTACOR
  if not AtualizaTabela('CTACOR', 'NUMAGENCBLT_REG', 'VARCHAR(10)') then
    MPainel.Lines.Add('Erro ao criar o campo: NUMAGENCBLT_REG da tabela: CTACOR');

  //Edmar - 27/05/2016 - Cria campo CODCEDENTEBLT_REG tabela CTACOR
  if not AtualizaTabela('CTACOR', 'DIGAGENCBLT_REG', 'VARCHAR(10)') then
    MPainel.Lines.Add('Erro ao criar o campo: DIGAGENCBLT_REG da tabela: CTACOR');

  //Edmar - 27/05/2016 - Cria campo CODCEDENTEBLT_REG tabela CTACOR
  if not AtualizaTabela('CTACOR', 'CODCARTEIRABLT_REG', 'VARCHAR(3)') then
    MPainel.Lines.Add('Erro ao criar o campo: CODCARTEIRABLT_REG da tabela: CTACOR');

  //Edmar - 27/05/2016 - Cria campo CODCEDENTEBLT_REG tabela CTACOR
  if not AtualizaTabela('CTACOR', 'NOSSONUMBLT_REG', 'VARCHAR(15)') then
    MPainel.Lines.Add('Erro ao criar o campo: NOSSONUMBLT_REG da tabela: CTACOR');

  //Edmar - 27/05/2016 - Cria campo CODCEDENTEBLT_REG tabela CTACOR
  if not AtualizaTabela('CTACOR', 'PREFIXO_NOSSONUM_REG', 'INTEGER') then
    MPainel.Lines.Add('Erro ao criar o campo: PREFIXO_NOSSONUM_REG da tabela: CTACOR');

  //Edmar - 27/05/2016 - Cria campo CODCEDENTEBLT_REG tabela CTACOR
  if not AtualizaTabela('CTACOR', 'CODMODALIDADE_REG', 'VARCHAR(15)') then
    MPainel.Lines.Add('Erro ao criar o campo: CODMODALIDADE_REG da tabela: CTACOR');

  //Edmar - 27/05/2016 - Cria campo CODCEDENTEBLT_REG tabela CTACOR
  if not AtualizaTabela('CTACOR', 'PROXBOLETO_REG', 'INTEGER') then
    MPainel.Lines.Add('Erro ao criar o campo: PROXBOLETO_REG da tabela: CTACOR');

  //Edmar - 27/05/2016 - Cria campo CODCEDENTEBLT_REG tabela CTACOR
  if not AtualizaTabela('CTACOR', 'CONTREMESSA_REG', 'INTEGER') then
    MPainel.Lines.Add('Erro ao criar o campo: CONTREMESSA_REG da tabela: CTACOR');

  { --- }

 //Alex - 23/06/2016 - Cria campo CAMINHODOCS para cada pessoa
  if not AtualizaTabela('PESSOA', 'CAMINHODOCS', 'VARCHAR(255)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CAMINHODOCS da tabela: PESSOA')
  else
    VerificaDiretorio('C:/MZR/Arquivos/Documentos Clientes');

  //Matheus - 28/03/2016 - Cria campo CAMINHODOCS na tabela LOJA
  if not AtualizaTabela('LOJA', 'CAMINHODOCS', 'VARCHAR(150)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CAMINHODOCS da tabela: LOJA')
  else
    VerificaDiretorio('C:/MZR/Arquivos/Documentos Clientes');

  //Matheus - 23/03/2016 - Cria campo EST_PERMANENTE na tabela SUBPRODUTO
  if not AtualizaTabela('SUBPRODUTO', 'EST_PERMANENTE', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: EST_PERMANENTE da tabela: SUBPRODUTO');

  //Matheus - 11/04/2016 - Cria campo COD_FATURA na tabela PEDVENDA
  if not AtualizaTabela('PEDVENDA', 'COD_FATURA', 'VARCHAR(10)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: COD_FATURA da tabela: PEDVENDA');

  //Matheus - 10/03/2016 - Cria campo BLOQBTNFISCAL na tabela LOJA
  if not AtualizaTabela('LOJA', 'BLOQBTNFISCAL', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: BLOQBTNFISCAL da tabela: LOJA');

  //Matheus - 10/03/2016 - Cria campo CHEQUES na tabela PARCELACP
  if not AtualizaTabela('PARCELACP', 'CHEQUES', 'VARCHAR(100)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CHEQUES da tabela: PARCELACP');

  //Edmar - 24/02/2016 - Cria campo CFOPINTOUTEMISSAOPROP na tabela LOJA
  if not AtualizaTabela('LOJA', 'CFOPINTOUTEMISSAOPROP', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CFOPINTOUTEMISSAOPROP da tabela: LOJA');

  //Edmar - 24/02/2016 - Cria campo CFOPEXTOUTEMISSAOPROP na tabela LOJA
  if not AtualizaTabela('LOJA', 'CFOPEXTOUTEMISSAOPROP', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CFOPEXTOUTEMISSAOPROP da tabela: LOJA');

  // ## BLOCK: CRIA CAMPOS PARA O CALCULO DO ICMS DA UF DESTINO

     // ## BLOCK: ITENS DE PEDIDO DE VENDA
     //Edmar - 19/01/2016 - Cria campo ALIQFCPDESTINO na tabela ITENSPEDVEN
  if not AtualizaTabela('ITENSPEDVEN', 'ALIQFCPDESTINO', 'NUMERIC(3, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ALIQFCPDESTINO da tabela: ITENSPEDVEN');

  //Edmar - 19/01/2016 - Cria campo ALIQINTICMS na tabela ITENSPEDVEN
  if not AtualizaTabela('ITENSPEDVEN', 'ALIQINTICMS', 'NUMERIC(3, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ALIQINTICMS da tabela: ITENSPEDVEN');

  //Edmar - 19/01/2016 - Cria campo ALIQEXTICMS na tabela ITENSPEDVEN
  if not AtualizaTabela('ITENSPEDVEN', 'ALIQEXTICMS', 'NUMERIC(3, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ALIQEXTICMS da tabela: ITENSPEDVEN');

  //Edmar - 19/01/2016 - Cria campo ALIQPROVPARTILHA na tabela ITENSPEDVEN
  if not AtualizaTabela('ITENSPEDVEN', 'ALIQPROVPARTILHA', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ALIQPROVPARTILHA da tabela: ITENSPEDVEN');

  //Edmar - 19/01/2016 - Cria campo VLRICMSFCP na tabela ITENSPEDVEN
  if not AtualizaTabela('ITENSPEDVEN', 'VLRICMSFCP', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VLRICMSFCP da tabela: ITENSPEDVEN');

  //Edmar - 19/01/2016 - Cria campo VLRICMSINTDEST na tabela ITENSPEDVEN
  if not AtualizaTabela('ITENSPEDVEN', 'VLRICMSINTDEST', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VLRICMSINTDEST da tabela: ITENSPEDVEN');

  //Edmar - 19/01/2016 - Cria campo VLRICMSINTREMET na tabela ITENSPEDVEN
  if not AtualizaTabela('ITENSPEDVEN', 'VLRICMSINTREMET', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VLRICMSINTREMET da tabela: ITENSPEDVEN');
  // ## END_BLOCK;

  // ## BLOCK: ITENS DE ORDEM
  //Edmar - 19/01/2016 - Cria campo ALIQFCPDESTINO na tabela ITPRODORD
  if not AtualizaTabela('ITPRODORD', 'ALIQFCPDESTINO', 'NUMERIC(3, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ALIQFCPDESTINO da tabela: ITPRODORD');

  //Edmar - 19/01/2016 - Cria campo ALIQINTICMS na tabela ITPRODORD
  if not AtualizaTabela('ITPRODORD', 'ALIQINTICMS', 'NUMERIC(3, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ALIQINTICMS da tabela: ITPRODORD');

  //Edmar - 19/01/2016 - Cria campo ALIQEXTICMS na tabela ITPRODORD
  if not AtualizaTabela('ITPRODORD', 'ALIQEXTICMS', 'NUMERIC(3, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ALIQEXTICMS da tabela: ITPRODORD');

  //Edmar - 19/01/2016 - Cria campo ALIQPROVPARTILHA na tabela ITPRODORD
  if not AtualizaTabela('ITPRODORD', 'ALIQPROVPARTILHA', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ALIQPROVPARTILHA da tabela: ITPRODORD');

  //Edmar - 19/01/2016 - Cria campo VLRICMSFCP na tabela ITPRODORD
  if not AtualizaTabela('ITPRODORD', 'VLRICMSFCP', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VLRICMSFCP da tabela: ITPRODORD');

  //Edmar - 19/01/2016 - Cria campo VLRICMSINTDEST na tabela ITPRODORD
  if not AtualizaTabela('ITPRODORD', 'VLRICMSINTDEST', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VLRICMSINTDEST da tabela: ITPRODORD');

  //Edmar - 19/01/2016 - Cria campo VLRICMSINTREMET na tabela ITPRODORD
  if not AtualizaTabela('ITPRODORD', 'VLRICMSINTREMET', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VLRICMSINTREMET da tabela: ITPRODORD');
  // ## END_BLOCK;

  // ## END_BLOCK;

   //Alex - 14/07/2023 - Altera o tamanho do campo FIELD1 para VARCHAR(500)
  if not AtualizaTabela('REGISTRO', 'FIELD1', 'VARCHAR(500)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: FIELD1 da tabela: REGISTRO');

  //Matheus - 04/02/2016 - Cria campo CIDADE na tabela ORCAMENTO
  if not AtualizaTabela('ORCAMENTO', 'CIDADE', 'VARCHAR(150)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CIDADE da tabela: ORCAMENTO');

  //Matheus - 04/02/2016 - Cria campo TELEFONE na tabela ORCAMENTO
  if not AtualizaTabela('ORCAMENTO', 'TELEFONE', 'VARCHAR(15)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: TELEFONE da tabela: ORCAMENTO');

  //Matheus - 29/12/2015 - Cria campo VENDEDOR na tabela ORCAMENTO
  if not AtualizaTabela('ORCAMENTO', 'VENDEDOR', 'VARCHAR(150)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VENDEDOR da tabela: ORCAMENTO');

  //Matheus - 29/12/2015 - Cria campo FORMAPAGAMENTO na tabela ORCAMENTO
  if not AtualizaTabela('ORCAMENTO', 'FORMAPAGAMENTO', 'VARCHAR(50)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: FORMAPAGAMENTO da tabela: ORCAMENTO');

  //Edmar - 07/12/2015 - Cria campo CEST na tabela NCM
  if not AtualizaTabela('NCM', 'ATIVO', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: ATIVO da tabela: NCM');

  //Edmar - 07/12/2015 - Cria campo CEST na tabela NCM
  if not AtualizaTabela('NCM', 'CEST', 'VARCHAR(10)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CEST da tabela: NCM');

  //Edmar - 18/11/2015 - Altera o tamanho do campo URL_QRCODE para 500 nas tabelas fiscais
  if not AtualizaTabelaCampo('DOCFISSAIDA', 'URL_QRCODE', 'VARCHAR(500)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: URL_QRCODE da tabela: DOCFISSAIDA');

  if not AtualizaTabelaCampo('DOCFISORD', 'URL_QRCODE', 'VARCHAR(500)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: URL_QRCODE da tabela: DOCFISORD');

  if not AtualizaTabelaCampo('DOCFIS', 'URL_QRCODE', 'VARCHAR(500)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: URL_QRCODE da tabela: DOCFIS');

  //Edmar - 12/11/2015 - Cria campo RECORRENCIA na tabela SUBSERVICO
  if not AtualizaTabela('SUBSERVICO', 'RECORRENCIA', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: RECORRENCIA da tabela: SUBSERVICO');

  //Edmar - 22/10/2015 - Cria campo CONTA_CONTABIL na tabela CLIENTE
  if not AtualizaTabela('CLIENTE', 'CONTA_CONTABIL', 'VARCHAR(20)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CONTA_CONTABIL da tabela: CLIENTE');

  //Edmar - 22/10/2015 - Cria campo CONTA_CONTABIL na tabela FORNECEDOR
  if not AtualizaTabela('FORNECEDOR', 'CONTA_CONTABIL', 'VARCHAR(20)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CONTA_CONTABIL da tabela: FORNECEDOR');

  //Edmar - 22/10/2015 - Cria campo CONTA_CONTABIL na tabela CTACOR
  if not AtualizaTabela('CTACOR', 'CONTA_CONTABIL', 'VARCHAR(20)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CONTA_CONTABIL da tabela: CTACOR');

  //Alex: 13/10/2015 - Criar campos para mostrar pedidos fechados ou não
  if not AtualizaTabela('USUARIO', 'FILTRAPEDFECHADO', 'SMALLINT') then
    MPainel.Lines.Add('Erro ao atualizar o campo: FILTRAPEDFECHADO da tabela: USUARIO');

  //Alex: 13/10/2015 - Criar campos de data utilizados para pesquisa (filtros) em pedidos e OS
  if not AtualizaTabela('USUARIO', 'FILTRAPEDDATA01',
    'VARCHAR(20) CHARACTER SET ISO8859_1') then
    MPainel.Lines.Add('Erro ao atualizar o campo: FILTRAPEDDATA01 da tabela: LOJA');

  if not AtualizaTabela('USUARIO', 'FILTRAPEDDATA02',
    'VARCHAR(20) CHARACTER SET ISO8859_1') then
    MPainel.Lines.Add('Erro ao atualizar o campo: FILTRAPEDDATA02 da tabela: LOJA');

  //Alex: 26/10/2015 - Atualiza tamanho do campo LOGINSUPORTE de 60 para 150
  if not AtualizaTabelaCampo('LOJA', 'LOGINSUPORTE',
    'VARCHAR(150) CHARACTER SET ISO8859_1') then
    MPainel.Lines.Add('Erro ao atualizar o campo: LOGINSUPORTE da tabela: LOJA');
  //Alex: 13/10/2015 - Criar campos para mostrar pedidos fechados ou não
  if not AtualizaTabela('USUARIO', 'FILTRAPEDFECHADO', 'SMALLINT') then
    MPainel.Lines.Add('Erro ao atualizar o campo: FILTRAPEDFECHADO da tabela: USUARIO');
  //Alex: 13/10/2015 - Criar campos de data utilizados para pesquisa (filtros) em pedidos e OS
  if not AtualizaTabela('USUARIO', 'FILTRAPEDDATA01',
    'VARCHAR(20) CHARACTER SET ISO8859_1') then
    MPainel.Lines.Add('Erro ao atualizar o campo: FILTRAPEDDATA01 da tabela: LOJA');
  if not AtualizaTabela('USUARIO', 'FILTRAPEDDATA02',
    'VARCHAR(20) CHARACTER SET ISO8859_1') then
    MPainel.Lines.Add('Erro ao atualizar o campo: FILTRAPEDDATA02 da tabela: LOJA');

  //Edmar - 30/09/2015 - Atualiza a tabela LOJA adiciona o campo EMAIL_EMPRESA
  if not AtualizaTabela('LOJA', 'EMAIL_EMPRESA', 'VARCHAR(200)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: EMAIL_EMPRESA da tabela: LOJA');

  //Edmar - 30/09/2015 - Atualiza a tabela LOJA adiciona o campo SENHAEMAIL_EMPRESA
  if not AtualizaTabela('LOJA', 'SENHAEMAIL_EMPRESA', 'VARCHAR(200)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: SENHAEMAIL_EMPRESA da tabela: LOJA');

  //Edmar - 30/09/2015 - Atualiza a tabela LOJA adiciona o campo SERVIDOR_SMTP
  if not AtualizaTabela('LOJA', 'SERVIDOR_SMTP', 'VARCHAR(50)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: SERVIDOR_SMTP da tabela: LOJA');

  //Edmar - 30/09/2015 - Atualiza a tabela LOJA adiciona o campo PORTA_EMAIL
  if not AtualizaTabela('LOJA', 'PORTA_EMAIL', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: PORTA_EMAIL da tabela: LOJA');

  //Edmar - 30/09/2015 - Atualiza a tabela LOJA adiciona o campo TXTAUX_EMAIL
  if not AtualizaTabela('LOJA', 'TXTAUX_EMAIL', 'VARCHAR(200)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: TXTAUX_EMAIL da tabela: LOJA');

  //Angelo - 11/09/2015 - Solicitação 387
  if not AtualizaTabela('DESPADIC', 'DATAREC', 'DATE') then
    MPainel.Lines.Add('Erro ao atualizar o campo: DATAREC da tabela: DESPADIC');

  //Angelo - 11/09/2015 - Solicitação 387
  if not AtualizaTabela('DESPADIC', 'INTRECORRENCIA', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: INTRECORRENCIA da tabela: DESPADIC');

  //Angelo - 11/09/2015 - Solicitação 387
  if not AtualizaTabela('DESPADIC', 'RECATIVA', 'VARCHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: RECATIVA da tabela: DESPADIC');

  //Angelo - 27/08/2015 - Solicitação 405
  if not AtualizaTabela('LOJA', 'EXIBVLRCOMPOS', 'VARCHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: EXIBVLRCOMPOS da tabela: LOJA');

  //Angelo - 26/08/2015
  if not AtualizaTabela('CODIGOBARRA', 'QTDEMB', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: QTDEMB da tabela: CODIGOBARRA');

  //Edmar - 24/08/2015 - Atualiza a tabela CFOP
  if not AtualizaTabela('CFOP', 'NAOGERAST', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo GERAST da tabela: CFOP');

  //Edmar - 24/08/2015 - Atualiza a tabela CFOP
  if not AtualizaTabela('CFOP', 'NAOGERAICMSOP', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo GERAICMSOP da tabela: CFOP');

  //Edmar - 20/08/2015 - Atualiza a tabela ORDEM
  if not AtualizaTabela('ORDEM', 'NOMECLI', 'VARCHAR(100)') then
    MPainel.Lines.Add('Erro ao atualizar o campo NOMECLI da tabela: ORDEM');

  //Edmar - 20/08/2015 - Atualiza a tabela ORDEM
  if not AtualizaTabela('ORDEM', 'CPFCNPJ', 'VARCHAR(20)') then
    MPainel.Lines.Add('Erro ao atualizar o campo CPFCNPJ da tabela: ORDEM');

  if not AtualizaTabela('VOLUMES', 'NUMVOLUME', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NUMVOLUME da tabela: VOLUMES');

  if not AtualizaTabela('VOLUMES', 'STATUS', 'VARCHAR(20)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: STATUS da tabela: VOLUMES');

  //Edmar - 17/08/2015 - Atualiza a tabela ITENSPEDC
  if not AtualizaTabela('ITENSPEDC', 'BASECALCII', 'NUMERIC(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: BASECALCII da tabela: ITENSPEDC');

  //Edmar - 17/08/2015 - Atualiza a tabela ITENSPEDC
  if not AtualizaTabela('ITENSPEDC', 'OUTDESPII', 'NUMERIC(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: OUTDESPII da tabela: ITENSPEDC');

  //Edmar - 17/08/2015 - Atualiza a tabela ITENSPEDC
  if not AtualizaTabela('ITENSPEDC', 'VALORII', 'NUMERIC(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VALORII da tabela: ITENSPEDC');

  //Edmar - 17/08/2015 - Atualiza a tabela ITENSPEDC
  if not AtualizaTabela('ITENSPEDC', 'VALORIOF', 'NUMERIC(15,2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VALORIOF da tabela: ITENSPEDC');

  //Edmar - 13/08/2015 - Atualiza a tabela DOCFIS
  if not AtualizaTabela('DOCFIS', 'NUMERODIIMP', 'VARCHAR(10)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: NUMERODIIMP da tabela: DOCFIS');

  //Edmar - 13/08/2015 - Atualiza a tabela DOCFIS
  if not AtualizaTabela('DOCFIS', 'DATADIIMP', 'TIMESTAMP') then
    MPainel.Lines.Add('Erro ao atualizar o campo: DATADIIMP da tabela: DOCFIS');

  //Edmar - 13/08/2015 - Atualiza a tabela DOCFIS
  if not AtualizaTabela('DOCFIS', 'DATADESEMBARQUEIMP', 'TIMESTAMP') then
    MPainel.Lines.Add('Erro ao atualizar o campo: DATADESEMBARQUEIMP da tabela: DOCFIS');

  //Edmar - 13/08/2015 - Atualiza a tabela DOCFIS
  if not AtualizaTabela('DOCFIS', 'TIPOTRANSPORTEIMP', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: TIPOTRANSPORTEIMP da tabela: DOCFIS');

  //Edmar - 13/08/2015 - Atualiza a tabela DOCFIS
  if not AtualizaTabela('DOCFIS', 'VALORAFRMMIMP', 'NUMERIC(15, 2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VALORAFRMMIMP da tabela: DOCFIS');

  //Edmar - 13/08/2015 - Atualiza a tabela DOCFIS
  if not AtualizaTabela('DOCFIS', 'FORMAIMPORTACAOIMP', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: FORMAIMPORTACAOIMP da tabela: DOCFIS');

  //Edmar - 13/08/2015 - Atualiza a tabela DOCFIS
  if not AtualizaTabela('DOCFIS', 'CNPJADQTENCIMP', 'VARCHAR(14)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CNPJADQTENCIMP da tabela: DOCFIS');

  //Edmar - 13/08/2015 - Atualiza a tabela DOCFIS
  if not AtualizaTabela('DOCFIS', 'UFADQTENCIMP', 'VARCHAR(2)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: UFADQTENCIMP da tabela: DOCFIS');

  //Edmar - 13/08/2015 - Atualiza a tabela DOCFIS
  if not AtualizaTabela('DOCFIS', 'CODEXPORTADORIMP', 'VARCHAR(60)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: CODEXPORTADORIMP da tabela: DOCFIS');
  //

  //Edmar - 13/08/2015 - Cria a tabela ADICAOIMPORTACAO
  if not InsereTabelaNova('ADICAOIMPORTACAO', 'COD_ADICAO INTEGER NOT NULL')
    then
    //cria a pk da tabela
    MPainel.Lines.Add('Erro ao gerar nova tabela: ADICAOIMPORTACAO')
  else
  begin
    //Edmar - 13/08/2015 - Cria todos os outros campos da tabela ADICAOIMPORTACAO
    if not AtualizaTabela('ADICAOIMPORTACAO', 'NUMADICAO', 'VARCHAR(3)') then
      MPainel.Lines.Add('Erro ao atualizar o campo: NUMADICAO da tabela: ADICAOIMPORTACAO');

    if not AtualizaTabela('ADICAOIMPORTACAO', 'CODIGOFABRICANTE', 'VARCHAR(60)')
      then
      MPainel.Lines.Add('Erro ao atualizar o campo: CODIGOFABRICANTE da tabela: ADICAOIMPORTACAO');

    if not AtualizaTabela('ADICAOIMPORTACAO', 'DESCONTOADICAO', 'NUMERIC(15, 2)')
      then
      MPainel.Lines.Add('Erro ao atualizar o campo: DESCONTOADICAO da tabela: ADICAOIMPORTACAO');

    if not AtualizaTabela('ADICAOIMPORTACAO', 'NUMDRAWBACK', 'VARCHAR(11)') then
      MPainel.Lines.Add('Erro ao atualizar o campo: NUMDRAWBACK da tabela: ADICAOIMPORTACAO');

    if not AtualizaTabela('ADICAOIMPORTACAO', 'COD_PEDIDO', 'INTEGER') then
      MPainel.Lines.Add('Erro ao atualizar o campo: COD_PEDIDO da tabela: ADICAOIMPORTACAO');

    if not InsereGeneration('ADICAOIMPORTACAO', 'COD_ADICAO') then
      MPainel.Lines.Add('Erro ao inserir o generator da tabela ADICAOIMPORTACAO');

    if not InsereTrigger('ADICAOIMPORTACAO', 'GEN_ADICAOIMPORTACAO_ID',
      'COD_ADICAO') then
      MPainel.Lines.Add('Erro ao inserir o trigger da tabela ADICAOIMPORTACAO');
  end;
  //

  //Angelo - 29/07/2015 - Atualiza a tabela
  if not AtualizaTabela('ITPRODORD', 'IMPRESSONFSE', 'VARCHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: IMPRESSONFSE da tabela: ORDEM');

  //Angelo - 28/07/2015 - Atualiza a tabela
  if not AtualizaTabela('ORDEM', 'GERANFSE', 'VARCHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: GERANFSE da tabela: ORDEM');

  //Angelo - 28/07/2015 - Atualiza a tabela
  if not AtualizaTabela('LOJACESSO', 'GERABONIF', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: GERABONIF da tabela: LOJACESSO');

  //Angelo - 28/07/2015 - Atualiza a tabela
  if not AtualizaTabela('LOJACESSO', 'GERACANC', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: GERACANC da tabela: LOJACESSO');

  //Angelo - 21/07/2015 - Atualiza a tabela DESPADIC
  if not AtualizaTabela('DESPADIC', 'COD_EQUIP', 'INTEGER') then
    MPainel.Lines.Add('Erro ao atualizar o campo: COD_EQUIP da tabela: DESPADIC');

  //Angelo - 08/07/2015 - Atualiza a tabela ACESSORIOS
  if not AtualizaTabela('ACESSORIOS', 'VALORLOCA', 'VARCHAR(1)') then
    MPainel.Lines.Add('Erro ao atualizar o campo: VALORLOCA da tabela: ACESSORIOS');

  //Angelo - 06/07/2015 - Cria a tabela ITENSEXP
  if not InsereTabelaNova('ITENSEXP', 'COD_ITENSEXP INTEGER NOT NULL') then
    //cria a pk da tabela
    MPainel.Lines.Add('Erro ao gerar nova tabela: ITENSEXP')
  else
  begin
    //Angelo - 06/07/2015 - Cria todos os outros campos da tabela
    if not AtualizaTabela('ITENSEXP', 'COD_ITENSPEDVEN', 'INTEGER NOT NULL')
      then
      MPainel.Lines.Add('Erro ao atualizar o campo: COD_ITENSPEDVEN da tabela: ITENSEXP');

    if not AtualizaTabela('ITENSEXP', 'CONTRINT', 'VARCHAR(15)') then
      MPainel.Lines.Add('Erro ao atualizar o campo: CONTRINT da tabela: ITENSEXP');

    if not AtualizaTabela('ITENSEXP', 'QTDENTREGUE', 'NUMERIC(18,3)') then
      MPainel.Lines.Add('Erro ao atualizar o campo: QTDENTREGUE da tabela: ITENSEXP');

    if not AtualizaTabela('ITENSEXP', 'QTDDISPONIVEL', 'NUMERIC(18,3)') then
      MPainel.Lines.Add('Erro ao atualizar o campo: QTDDISPONIVEL da tabela: ITENSEXP');

    if not AtualizaTabela('ITENSEXP', 'DESCRICAO', 'VARCHAR(60)') then
      MPainel.Lines.Add('Erro ao atualizar o campo: DESCRICAO da tabela: ITENSEXP');

    if not AtualizaTabela('ITENSEXP', 'CODBARRA', 'VARCHAR(30)') then
      MPainel.Lines.Add('Erro ao atualizar o campo: CODBARRA da tabela: ITENSEXP');

    if not AtualizaTabela('ITENSEXP', 'COD_PEDVEN', 'INTEGER NOT NULL') then
      MPainel.Lines.Add('Erro ao atualizar o campo: COD_PEDVEN da tabela: ITENSEXP');

    if not AtualizaTabela('ITENSEXP', 'COD_ESTOQUE', 'INTEGER') then
      MPainel.Lines.Add('Erro ao atualizar o campo: COD_ESTOQUE da tabela: ITENSEXP');
    if not InsereGeneration('ITENSEXP', 'COD_ITENSEXP') then
      MPainel.Lines.Add('Erro ao inserir o generator da tabela ITENSEXP');
  end;

  //Angelo - 06/07/2015 - Cria a tabela VOLUMES
  if not InsereTabelaNova('VOLUMES', 'COD_VOLUME INTEGER NOT NULL') then
    //cria a pk da tabela
    MPainel.Lines.Add('Erro ao gerar nova tabela: VOLUMES')
  else
  begin
    //Angelo - 06/07/2015 - Cria todos os outros campos da tabela
    if not AtualizaTabela('VOLUMES', 'COD_PEDIDO', 'INTEGER NOT NULL') then
      MPainel.Lines.Add('Erro ao atualizar o campo: COD_PEDIDO da tabela: VOLUMES');

    if not AtualizaTabela('VOLUMES', 'DESCRICAO', 'VARCHAR(30)') then
      MPainel.Lines.Add('Erro ao atualizar o campo: DESCRICAO da tabela: VOLUMES');

    if not InsereGeneration('VOLUMES', 'COD_VOLUME') then
      MPainel.Lines.Add('Erro ao inserir o generator da tabela VOLUMES');
  end;

  //Angelo - 06/07/2015 - Cria a tabela ITENSVOLUME
  if not InsereTabelaNova('ITENSVOLUME', 'COD_ITENSVOLUME INTEGER NOT NULL')
    then
    //cria a pk da tabela
    MPainel.Lines.Add('Erro ao gerar nova tabela: ITENSVOLUME')
  else
  begin
    //Angelo - 06/07/2015 - Cria todos os outros campos da tabela
    if not AtualizaTabela('ITENSVOLUME', 'COD_ITEM', 'INTEGER NOT NULL') then
      MPainel.Lines.Add('Erro ao atualizar o campo: COD_ITEM da tabela: ITENSVOLUME');

    if not AtualizaTabela('ITENSVOLUME', 'QUANTIDADE', 'INTEGER NOT NULL') then
      MPainel.Lines.Add('Erro ao atualizar o campo: QUANTIDADE da tabela: ITENSVOLUME');

    if not AtualizaTabela('ITENSVOLUME', 'COD_VOL', 'INTEGER NOT NULL') then
      MPainel.Lines.Add('Erro ao atualizar o campo: COD_VOL da tabela: ITENSVOLUME');

    if not InsereGeneration('ITENSVOLUME', 'COD_ITENSVOLUME') then
      MPainel.Lines.Add('Erro ao inserir o generator da tabela ITENSVOLUME');
  end;

  //Edmar - 29/06/2015 - Altera tabela LOJA, acrescenta campo IDCSC_NFCEPROD
  if not AtualizaTabela('LOJA', 'IDCSC_NFCEPROD', 'VARCHAR(6)') then
    MPainel.Lines.Add('Erro ao inserir o campo IDCSC_NFCEPROD da tabela: LOJA');

  //Edmar - 29/06/2015 - Altera tabela LOJA, acrescenta campo CSC_NFCEPROD
  if not AtualizaTabela('LOJA', 'CSC_NFCEPROD', 'VARCHAR(100)') then
    MPainel.Lines.Add('Erro ao inserir o campo CSC_NFCEPROD da tabela: LOJA');

  //Edmar - 29/06/2015 - Altera tabela LOJA, acrescenta campo IDCSC_NFCEHOMO
  if not AtualizaTabela('LOJA', 'IDCSC_NFCEHOMO', 'VARCHAR(6)') then
    MPainel.Lines.Add('Erro ao inserir o campo IDCSC_NFCEHOMO da tabela: LOJA');

  //Edmar - 29/06/2015 - Altera tabela LOJA, acrescenta campo CSC_NFCEHOMO
  if not AtualizaTabela('LOJA', 'CSC_NFCEHOMO', 'VARCHAR(100)') then
    MPainel.Lines.Add('Erro ao inserir o campo CSC_NFCEHOMO da tabela: LOJA');

  //Edmar - 29/06/2015 - Altera tabela EMPRESA, acrescenta campo VALOR_MAX_NFCE
  if not AtualizaTabela('EMPRESA', 'VALOR_MAX_NFCE', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao inserir o campo VALOR_MAX_NFCE da tabela: EMPRESA');

  //Edmar - 16/06/2015 - Altera tabela LOJA, acrescenta campo TIPOIMP_NFCE
  if not AtualizaTabela('LOJA', 'TIPOIMP_NFCE', 'VARCHAR(5)') then
    MPainel.Lines.Add('Erro ao inserir o campo TIPOIMP_NFCE da tabela: LOJA');

  //Edmar - 16/06/2015 - Altera tabela LOJA, acrescenta campo IDCSC_NFCE
  if not AtualizaTabela('LOJA', 'IDCSC_NFCE', 'VARCHAR(6)') then
    MPainel.Lines.Add('Erro ao inserir o campo IDCSC_NFCE da tabela: LOJA');

  //Edmar - 16/06/2015 - Altera tabela LOJA, acrescenta campo CSC_NFCE
  if not AtualizaTabela('LOJA', 'CSC_NFCE', 'VARCHAR(100)') then
    MPainel.Lines.Add('Erro ao inserir o campo CSC_NFCE da tabela: LOJA');

  //Edmar - 01/07/2015 - Apaga o campo ISCSC_NFCE da tabela LOJA
  if not ApagaCampo('LOJA', 'IDCSC_NFCE') then
    MPainel.Lines.Add('Erro ao apagar campo IDCSC_NFCE da tabela: LOJA');

  //Edmar - 01/07/2015 - Apaga o campo CSC_NFCE da tabela LOJA
  if not ApagaCampo('LOJA', 'CSC_NFCE') then
    MPainel.Lines.Add('Erro ao apagar campo CSC_NFCE da tabela: LOJA');

  //Edmar - 12/06/2015 - Altera tabela DOCFISORD, acrescenta campo URL_QRCODE
  if not AtualizaTabela('DOCFISORD', 'URL_QRCODE', 'VARCHAR(200)') then
    MPainel.Lines.Add('Erro ao inserir o campo URL_QRCODE da tabela: DOCFISORD');

  //Edmar - 12/06/2015 - Altera tabela DOCFISSAIDA, acrescenta campo URL_QRCODE
  if not AtualizaTabela('DOCFISSAIDA', 'URL_QRCODE', 'VARCHAR(200)') then
    MPainel.Lines.Add('Erro ao inserir o campo URL_QRCODE da tabela: DOCFISSAIDA');

  //Edmar - 12/06/2015 - Altera tabela DOCFIS, acrescenta campo URL_QRCODE
  if not AtualizaTabela('DOCFIS', 'URL_QRCODE', 'VARCHAR(200)') then
    MPainel.Lines.Add('Erro ao inserir o campo URL_QRCODE da tabela: DOCFIS');

  //Edmar - 05/06/2015 - Altera tabela CTACOR, acrescenta campo BLT_REGISTRADO
  if not AtualizaTabela('CTACOR', 'BLT_REGISTRADO', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao inserir o campo BLT_REGISTRADO da tabela: CTACOR');

  //Edmar - 05/06/2015 - Altera tabela ESTADO, acrescenta campo CODBACEN
  if not AtualizaTabela('ESTADO', 'CODBACEN', 'VARCHAR(5)') then
    MPainel.Lines.Add('Erro ao inserir o campo CODBACEN da tabela: ESTADO');

  //Edmar - 05/06/2015 - Altera tabela ESTADO, acrescenta campo NOMEPAIS
  if not AtualizaTabela('ESTADO', 'NOMEPAIS', 'VARCHAR(100)') then
    MPainel.Lines.Add('Erro ao inserir o campo NOMEPAIS da tabela: ESTADO');

  //Edmar - 05/06/2015 - Altera tabela CIDADE, acrescenta campo UFEMBARQUE
  if not AtualizaTabela('CIDADE', 'UFEMBARQUE', 'VARCHAR(2)') then
    MPainel.Lines.Add('Erro ao inserir o campo UFEMBARQUE da tabela: CIDADE');

  //Edmar - 05/06/2015 - Altera tabela CIDADE, acrescenta campo LOCALEMBARQUE
  if not AtualizaTabela('CIDADE', 'LOCALEMBARQUE', 'VARCHAR(150)') then
    MPainel.Lines.Add('Erro ao inserir o campo LOCALEMBARQUE da tabela: CIDADE');
  //

 //Angelo - 26/05/2015 - Altera tabela PRODUTO, acrescenta campo ATIVO
  if not AtualizaTabela('PRODUTO', 'ATIVO', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao inserir o campo ATIVO da tabela: PRODUTO');

  //Angelo - 22/05/2015 - Altera tabela IMPNFETMP, acrescenta campo CSTVENDA
  if not AtualizaTabela('IMPNFETMP', 'CSTVENDA', 'VARCHAR(4)') then
    MPainel.Lines.Add('Erro ao inserir o campo CSTVENDA da tabela: IMPNFETMP');

  //ALEX - 20/05/2015 - Altera tabela LOJA, acrescenta campo ALIQATAC
  if not AtualizaTabela('LOJA', 'ALIQATAC', ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo ALIQATAC da tabela: LOJA');

  //ALEX - 20/05/2015 - Altera tabela LOJA, acrescenta campo ALIQVAR
  if not AtualizaTabela('LOJA', 'ALIQVAR', ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo ALIQVAR da tabela: LOJA');

  //Edmar - 19/05/2015 - Altera tabela PARCELACR, acrescenta campo VALOR_MULTABOLETO
  if not AtualizaTabela('PARCELACR', 'VALOR_MULTABOLETO', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao inserir o campo VALOR_MULTABOLETO da tabela: PARCELACR');

  //Edmar - 19/05/2015 - Altera tabela PARCELACR, acrescenta campo VALOR_JUROSBOLETO
  if not AtualizaTabela('PARCELACR', 'VALOR_JUROSBOLETO', 'NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao inserir o campo VALOR_JUROSBOLETO da tabela: PARCELACR');

  //Edmar - 19/05/2015 - Altera tabela PARCELACR, acrescenta campo DIAS_PROTESTO
  if not AtualizaTabela('PARCELACR', 'DIAS_PROTESTO', 'VARCHAR(10)') then
    MPainel.Lines.Add('Erro ao inserir o campo DIAS_PROTESTO da tabela: PARCELACR');

  //Angelo - 19/05/2015 - Altera tabela IMPNFETMP, acrescenta campo LUCRATIVIDADE
  if not AtualizaTabela('IMPNFETMP', 'LUCRATIVIDADE', 'NUMERIC(14,2)') then
    MPainel.Lines.Add('Erro ao inserir o campo LUCRATIVIDADE da tabela: IMPNFETMP');

  //Angelo - 19/05/2015 - Altera tabela IMPNFETMP, acrescenta campo MARCA
  if not AtualizaTabela('IMPNFETMP', 'MARCA', 'VARCHAR(40)') then
    MPainel.Lines.Add('Erro ao inserir o campo MARCA da tabela: IMPNFETMP');

  //Angelo - 13/05/2015 - Altera tabela IMPNFETMP, acrescenta campo VALORVENDAAT
  if not AtualizaTabela('IMPNFETMP', 'VALORVENDAAT', ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo VALORVENDAAT da tabela: IMPNFETMP');

  //Edmar - 07/05/2015 - Altera tabela ITENSPEDVEN, acrescenta campo VALORDESP
  if not AtualizaTabela('ITENSPEDVEN', 'VALORDESP', ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo BANDEIRA da tabela: CARTAO');

  //Edmar - 07/05/2015 - Altera tabela ITPRODORD, acrescenta campo VALORDESP
  if not AtualizaTabela('ITPRODORD', 'VALORDESP', ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo BANDEIRA da tabela: CARTAO');

  //Edmar - 07/05/2015 - Altera tabela ITENSPEDC, acrescenta campo VALORDESP
  if not AtualizaTabela('ITENSPEDC', 'VALORDESP', ' NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao inserir o campo BANDEIRA da tabela: CARTAO');
  //

//Edmar - 07/05/2015 - Altera tabela ITENSPEDVEN, acrescenta campo VALORFRETE
  if not AtualizaTabela('ITENSPEDVEN', 'VALORFRETE', ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo VALORFRETE da tabela: ITENSPEDVEN');

  //Edmar - 07/05/2015 - Altera tabela ITPRODORD, acrescenta campo VALORFRETE
  if not AtualizaTabela('ITPRODORD', 'VALORFRETE', ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo VALORFRETE da tabela: ITPRODORD');

  //Edmar - 07/05/2015 - Altera tabela ITENSPEDC, acrescenta campo VALORFRETE
  if not AtualizaTabela('ITENSPEDC', 'VALORFRETE', ' NUMERIC(14, 2)') then
    MPainel.Lines.Add('Erro ao inserir o campo VALORFRETE da tabela: ITENSPEDC');

  //Edmar - 05/05/2015 - Altera o tamanho do campo DESC2 da tabela TMP para VARCHAR(60)
  if AtualizaTabelaCampo('TMP', 'DESC2 ', 'VARCHAR(60)') = false then
    MPainel.Lines.Add('Erro ao alterar o campo DESC2 da tabela: TMP');

  //Edmar - 07/04/2015 - Altera tabela CARTAO, acrescenta campo BANDEIRA
  if not AtualizaTabela('CARTAO', 'BANDEIRA', ' VARCHAR(50)') then
    MPainel.Lines.Add('Erro ao inserir o campo BANDEIRA da tabela: CARTAO');

  //Edmar - 30/03/2015 - Altera tabela PESSOA, acrescenta campo ESTRANGEIRO
  if not AtualizaTabela('PESSOA', 'ESTRANGEIRO', ' CHAR(1)') then
    MPainel.Lines.Add('Erro ao inserir o campo ESTRANGEIRO da tabela: PESSOA');

  //Edmar - 20/03/2015 - Altera tabela ITPRODORD, acrescenta campo IT_DEV
  if not AtualizaTabela('ITPRODORD', 'IT_DEV', ' CHAR(5)') then
    MPainel.Lines.Add('Erro ao inserir o campo IT_DEV da tabela: ITPRODORD');

  //Edmar - 20/03/2015 - Altera tabela ITENSPEDVEN, acrescenta campo IT_DEV
  if not AtualizaTabela('ITENSPEDVEN', 'IT_DEV', ' CHAR(5) ') then
    MPainel.Lines.Add('Erro ao inserir o campo IT_DEV da tabela: ITENSPEDVEN');

  //Edmar - 20/03/2015 - Altera tabela ITENSPEDC, acrescenta campo IT_DEV
  if not AtualizaTabela('ITENSPEDC', 'IT_DEV', ' CHAR(5) ') then
    MPainel.Lines.Add('Erro ao inserir o campo IT_DEV da tabela: ITENSPEDC');

  //Edmar - 20/03/2015 - Altera tabela ORDEM, acrescenta campo NUMFISCAL_DEVOLVIDA
  if not AtualizaTabela('ORDEM', 'NUMFISCAL_DEVOLVIDA', ' DESCRICAO_10 ') then
    MPainel.Lines.Add('Erro ao inserir o campo NUMFISCAL_DEVOLVIDA da tabela: ORDEM');

  //Edmar - 19/03/2015 - Altera tabela ITENSPEDC, acrescenta campo ALIQ_DEVOLVIDO
  if not AtualizaTabela('ITENSPEDC', 'ALIQ_DEVOLVIDO', ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo ALIQ_DEVOLVIDO da tabela: ITENSPEDC');

  //Edmar - 18/03/2015 - Altera tabela PEDCOMPRA, acrescenta campo COD_PK_DEV
  if not AtualizaTabela('PEDCOMPRA', 'COD_PK_DEV', ' CHAVE ') then
    MPainel.Lines.Add('Erro ao inserir o campo COD_PK_DEV da tabela: PEDCOMPRA');

  //Edmar - 18/03/2015 - Altera tabela PEDCOMPRA, acrescenta campo NUMFISCAL_PV_OS
  if not AtualizaTabela('PEDCOMPRA', 'NUMFISCAL_PV_OS', ' DESCRICAO_10 ') then
    MPainel.Lines.Add('Erro ao inserir o campo NUMFISCAL_PV_OS da tabela: PEDCOMPRA');

  //Edmar - 18/03/2015 - Altera tabela PEDVENDA, acrescenta campo NUMFISCAL_DEVOLVIDA
  if not AtualizaTabela('PEDVENDA', 'NUMFISCAL_DEVOLVIDA', ' DESCRICAO_10 ')
    then
    MPainel.Lines.Add('Erro ao inserir o campo NUMFISCAL_DEVOLVIDA da tabela: PEDVENDA');

  //Edmar - 18/03/2015 - Altera tabela FORNECEDOR, acrescenta campo CONTRIBICMS
  if not AtualizaTabela('FORNECEDOR', 'CONTRIBICMS', ' CHAR(1) ') then
    MPainel.Lines.Add('Erro ao inserir o campo CONTRIBICMS da tabela: FORNECEDOR')
  else
  begin
    try //Edmar - 18/03/2015 - Após inserir o campo, seta o valor 9 como default
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' UPDATE FORNECEDOR SET FORNECEDOR.CONTRIBICMS = ''9'' WHERE FORNECEDOR.CONTRIBICMS IS NULL ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    except
      MPainel.Lines.Add('Erro ao atribuir valor default ao campo CONTRIBICMS.');
    end;
  end;

  //Edmar - 13/03/2015 - Altera tabela ITENSPEDVEN, acrescenta campo ALIQ_DEVOLVIDO
  if not AtualizaTabela('ITENSPEDVEN', 'ALIQ_DEVOLVIDO', ' NUMERIC(14, 2) ')
    then
    MPainel.Lines.Add('Erro ao inserir o campo ALIQ_DEVOLVIDO da tabela: ITENSPEDVEN');

  //Edmar - 12/03/2015 - Altera tabela PEDCOMPRA, acrescenta campo NUMFISCAL_DEVOLVIDA
  if not AtualizaTabela('PEDCOMPRA', 'NUMFISCAL_DEVOLVIDA', ' DESCRICAO_10 ')
    then
    MPainel.Lines.Add('Erro ao inserir o campo NUMFISCAL_DEVOLVIDA da tabela: PEDCOMPRA');

  //Edmar - 12/03/2015 - Altera tabela PEDVENDA, acrescenta campo NUMFISCAL_PC
  if not AtualizaTabela('PEDVENDA', 'NUMFISCAL_PC', ' DESCRICAO_10 ') then
    MPainel.Lines.Add('Erro ao inserir o campo NUMFISCAL_PC da tabela: PEDVENDA');

  //Edmar - 12/03/2015 - Altera tabela PEDVENDA, acrescenta campo COD_PC_DEV
  if not AtualizaTabela('PEDVENDA', 'COD_PC_DEV', ' CHAVE ') then
    MPainel.Lines.Add('Erro ao inserir o campo COD_PC_DEV da tabela: PEDVENDA');

  //Edmar - 16/02/2015 - Altera tabela USUARIO, acrescenta campo EXIBE_EXPEDICAO
  if not AtualizaTabela('USUARIO', 'EXIBE_EXPEDICAO', ' CHAR(1) ') then
    MPainel.Lines.Add('Erro ao inserir o campo EXIBE_EXPEDICAO da tabela: USUARIO');

  //Edmar - 04/02/2015 - Altera tabela LOJA, acrescenta campo EXIBECLASSSERV
  if not AtualizaTabela('LOJA', 'EXIBECLASSSERV', ' CHAR(1) ') then
    MPainel.Lines.Add('Erro ao inserir o campo EXIBECLASSSERV da tabela: LOJA');

  //Felipe - 04/02/2015 - Altera tabela LOJA, acrescenta campo CAMINHOXML
  if not AtualizaTabela('LOJA', 'CAMINHOXML', ' VARCHAR(150) ') then
    MPainel.Lines.Add('Erro ao inserir o campo CAMINHOXML da tabela: LOJA');

  //Edmar - 16/01/2015 - Informa campo MARK na tabela ABBANCO
  if not AtualizaTabela('ABBANCO', 'MARK', ' VARCHAR(1) ') then
    MPainel.Lines.Add('Erro ao inserir o campo MARK da tabela: ABBANCO');

  //Edmar - 15/01/2015 - Cria a tabela CONTROLA_EXPEDICAO apenas com a sua PK
  if not InsereTabelaNova('CONTROLA_EXPEDICAO', 'COD_CONTROLE INTEGER NOT NULL')
    then //cria a pk da tabela
    MPainel.Lines.Add('Erro ao gerar nova tabela: CONTROLA_EXPEDICAO')
  else
  begin
    //Edmar - 15/01/2015 - Cria o restante dos campos da tabela CONTROLA_EXPEDICAO
    if not AtualizaTabela('CONTROLA_EXPEDICAO', 'COD_USUARIO', 'INTEGER') then
      MPainel.Lines.Add('Erro ao atualizar o campo: COD_USUARIO da tabela: CONTROLA_EXPEDICAO');

    if not AtualizaTabela('CONTROLA_EXPEDICAO', 'NUM_ORDEM', 'INTEGER') then
      MPainel.Lines.Add('Erro ao atualizar o campo: NUM_ORDEM da tabela: CONTROLA_EXPEDICAO');

    if not AtualizaTabela('CONTROLA_EXPEDICAO', 'OPERACAO', 'VARCHAR(50)') then
      MPainel.Lines.Add('Erro ao atualizar o campo: OPERACAO da tabela: CONTROLA_EXPEDICAO');

    if not AtualizaTabela('CONTROLA_EXPEDICAO', 'DATA_HORA', 'TIMESTAMP') then
      MPainel.Lines.Add('Erro ao atualizar o campo: DATA_HORA da tabela: CONTROLA_EXPEDICAO');
  end;
  //

  {EDMAR - INSERE CAMPO VALORTOTALTRIBUTAESTADUAL NAS TABELA DOCFISSAIDA, DOCFIS E DOCFISORD}
  //Edmar - 18/11/2014 - Informa campo VALORTOTALTRIBUTAESTADUAL na tabela DOCFISSAIDA
  if not AtualizaTabela('DOCFISSAIDA', 'VALORTOTALTRIBUTAESTADUAL',
    ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo VALORTOTALTRIBUTAESTADUAL da tabela: DOCFISSAIDA');

  //Edmar - 18/11/2014 - Informa campo VALORTOTALTRIBUTAESTADUAL na tabela DOCFISORD
  if not AtualizaTabela('DOCFISORD', 'VALORTOTALTRIBUTAESTADUAL',
    ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo VALORTOTALTRIBUTAESTADUAL da tabela: DOCFISORD');

  //Edmar - 18/11/2014 - Informa campo VALORTOTALTRIBUTAESTADUAL na tabela DOCFIS
  if not AtualizaTabela('DOCFIS', 'VALORTOTALTRIBUTAESTADUAL',
    ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo VALORTOTALTRIBUTAESTADUAL da tabela: DOCFIS');
  //////////////////////////////////////////////////////////////////////////////////////////////

  {EDMAR - INSERE CAMPO VALORTOTALTRIBUTAESTADUAL NAS TABELA ITENSPEDVEN, ITENSPEDC E ITPRODORD}
  //Edmar - 17/11/2014 - Informa campo VALORTOTALTRIBUTAESTADUAL na tabela ITENSPEDVEN
  if not AtualizaTabela('ITENSPEDVEN', 'VALORTOTALTRIBUTAESTADUAL',
    ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo VALORTOTALTRIBUTAESTADUAL da tabela: ITENSPEDVEN');

  //Edmar - 17/11/2014 - Informa campo VALORTOTALTRIBUTAESTADUAL na tabela ITENSPEDC
  if not AtualizaTabela('ITENSPEDC', 'VALORTOTALTRIBUTAESTADUAL',
    ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo VALORTOTALTRIBUTAESTADUAL da tabela: ITENSPEDC');

  //Edmar - 17/11/2014 - Informa campo VALORTOTALTRIBUTAESTADUAL na tabela ITPRODORD
  if not AtualizaTabela('ITPRODORD', 'VALORTOTALTRIBUTAESTADUAL',
    ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo VALORTOTALTRIBUTAESTADUAL da tabela: ITPRODORD');
  //////////////////////////////////////////////////////////////////////////////////////////////////

  //Edmar - 17/12/2014 - Altera o tamanho do campo CODCEDENTEBLT da tabela CTACOR para VARCHAR(20)
  if AtualizaTabelaCampo('CTACOR', 'CODCEDENTEBLT ', 'VARCHAR(20)') = false then
    MPainel.Lines.Add('Erro ao alterar o campo CODCEDENTEBLT da tabela: CTACOR');

  //Edmar - 16/12/2014 - Informa campo ALIQTOTALTRIBUTAEST na tabela NCM
  if not AtualizaTabela('NCM', 'ALIQTOTALTRIBUTAEST', ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo ALIQTOTALTRIBUTAEST da tabela: NCM');

  //Edmar - 15/12/2014 - Informa campo PREFIXO_NOSSONUM na tabela CTACOR
  if not AtualizaTabela('CTACOR', 'PREFIXO_NOSSONUM', ' INTEGER ') then
    MPainel.Lines.Add('Erro ao inserir o campo PREFIXO_NOSSONUM da tabela: CTACOR');

  //Edmar - 15/12/2014 - Informa campo VALORAPROXTRIBUTACAO na tabela NCM
  if not AtualizaTabela('NCM', 'VALORAPROXTRIBUTACAO', ' NUMERIC(14, 2) ') then
    MPainel.Lines.Add('Erro ao inserir o campo VALORAPROXTRIBUTACAO da tabela: NCM');

  //Alex - 14/11/2014 - Função utilizada para criar tabela e campos para PERIODOFATURA
  //Tabela utilizada para controlar faturas mensais de ordem de locação
  CriaPeriodoFatura;
  //Edmar - 13/10/2014 - Informa campo COD_SETOR na tabela CODIGO
  if not AtualizaTabela('CODIGO', 'COD_SETOR', ' INTEGER ') then
    MPainel.Lines.Add('Erro ao inserir o campo COD_SETOR da tabela: CODIGO');

  //Edmar - 09/10/2014 - Informa campo COD_SETORPRODUCAO na tabela CODIGO
  if not AtualizaTabela('CODIGO', 'COD_SETORPRODUCAO', ' INTEGER ') then
    MPainel.Lines.Add('Erro ao inserir o campo COD_SETORPRODUCAO da tabela: CODIGO');

  //Edmar - 09/10/2014 - Informa campo COD_ITEMFICHATECNICA na tabela CODIGO
  if not AtualizaTabela('CODIGO', 'COD_ITEMFICHATECNICA', ' INTEGER ') then
    MPainel.Lines.Add('Erro ao inserir o campo COD_ITEMFICHATECNICA da tabela: CODIGO');

  //Edmar - 24/09/2014 - Informa campo COMPONENTE na tabela SUBPRODUTO
  if not AtualizaTabela('SUBPRODUTO', 'COMPONENTE', ' CHAR(1) ') then
    MPainel.Lines.Add('Erro ao inserir o campo COMPONENTE da tabela: SUBPRODUTO');

  ////////////////////////////////////////////////////////////////////////
  //******* INICIA CRIAÇÃO DAS TABELAS PARA O MÓDULO DE PRODUÇÃO *******//
  ////////////////////////////////////////////////////////////////////////

  //Edmar - 08/10/2014 - Cria a tabela FICHATECNICA apenas com a sua PK
  if not InsereTabelaNova('FICHATECNICA', 'COD_SETOR INTEGER NOT NULL') then
    //cria a pk da tabela
    MPainel.Lines.Add('Erro ao gerar nova tabela: FICHATECNICA')
  else
  begin
    //Edmar - 08/10/2014 - Cria todos os outros campos da tabela
    if not AtualizaTabela('FICHATECNICA', 'COD_ESTOQUE', 'INTEGER') then
      MPainel.Lines.Add('Erro ao atualizar o campo: COD_ESTOQUE da tabela: FICHATECNICA');
  end;

  //Edmar - 08/10/2014 - Cria a tabela SETORPRODUCAO apenas com a sua PK
  if not InsereTabelaNova('SETORPRODUCAO', 'COD_SETORPRODUCAO  INTEGER NOT NULL')
    then //cria a pk da tabela
    MPainel.Lines.Add('Erro ao gerar nova tabela: SETORPRODUCAO ')
  else
  begin
    //Edmar - 08/10/2014 - Cria todos os outros campos da tabela
    if not AtualizaTabela('SETORPRODUCAO', 'DESCRICAO', 'VARCHAR(700)') then
      MPainel.Lines.Add('Erro ao atualizar o campo: DESCRICAO da tabela: SETORPRODUCAO');
  end;

  //Edmar - 08/10/2014 - Cria a tabela ITEMFICHATECNICA apenas com a sua PK
  if not InsereTabelaNova('ITEMFICHATECNICA',
    'COD_ITEMFICHATECNICA INTEGER NOT NULL') then //cria a pk da tabela
    MPainel.Lines.Add('Erro ao gerar nova tabela: ITEMFICHATECNICA')
  else
  begin
    //Edmar - 08/10/2014 - Cria todos os outros campos da tabela
    if not AtualizaTabela('ITEMFICHATECNICA', 'COD_ESTOQUE', 'INTEGER') then
      MPainel.Lines.Add('Erro ao atualizar o campo: COD_ESTOQUE da tabela: ITEMFICHATECNICA');

    if not AtualizaTabela('ITEMFICHATECNICA', 'COD_SETORPRODUCAO', 'INTEGER')
      then
      MPainel.Lines.Add('Erro ao atualizar o campo: COD_SETORPRODUCAO da tabela: ITEMFICHATECNICA');

    if not AtualizaTabela('ITEMFICHATECNICA', 'COD_FICHATECNICA', 'INTEGER')
      then
      MPainel.Lines.Add('Erro ao atualizar o campo: COD_FICHATECNICA da tabela: ITEMFICHATECNICA');

    if not AtualizaTabela('ITEMFICHATECNICA', 'QUANTIDADE', 'MOEDA') then
      MPainel.Lines.Add('Erro ao atualizar o campo: QUANTIDADE da tabela: ITEMFICHATECNICA');
  end;

  ////////////////////////////////////////////////////////////////////////
  //****** FINALIZA CRIAÇÃO DAS TABELAS PARA O MÓDULO DE PRODUÇÃO ******//
  ////////////////////////////////////////////////////////////////////////
  if cbApgFchTec.Checked then
  begin
    //Edmar - 09/10/2014 - Remove do banco de dados a tabela ITFCHTECPROD
    if not DropTable('ITFCHTECPROD') then
      MPainel.Lines.Add('Erro ao remover a tabela: ITFCHTECPROD');

    //Edmar - 09/10/2014 - Remove do banco de dados a tabela ITFCHTECSERV
    if not DropTable('ITFCHTECSERV') then
      MPainel.Lines.Add('Erro ao remover a tabela: ITFCHTECSERV');

    //Edmar - 09/10/2014 - Remove do banco de dados a tabela FCHTECPROD
    if not DropTable('FCHTECPROD') then
      MPainel.Lines.Add('Erro ao remover a tabela: FCHTECPROD');
  end;

  //Edmar - 01/10/2014 - Altera o tamanho do campo IPNMVA da tabela ITPRODORC para VARCHAR(14, 2)
  if AtualizaTabelaCampo('ITPRODORC', 'IPNMVA', 'NUMERIC(14, 2)') = false then
    MPainel.Lines.Add('Erro ao alterar o campo IPNMVA da tabela: ITPRODORC');

  //Edmar - 01/10/2014 - Altera o tamanho do campo IPNMVA da tabela ITENSPEDVEN para VARCHAR(14, 2)
  if AtualizaTabelaCampo('ITENSPEDVEN', 'IPNMVA', 'NUMERIC(14, 2)') = false then
    MPainel.Lines.Add('Erro ao alterar o campo IPNMVA da tabela: ITENSPEDVEN');

  //Edmar - 24/09/2014 - Informa campo ANP na tabela SUBPRODUTO
  if not AtualizaTabela('SUBPRODUTO', 'ANP', ' VARCHAR(10) ') then
    MPainel.Lines.Add('Erro ao inserir o campo ANP da tabela: SUBPRODUTO');

  //Edmar - 23/09/2014 - Informa campo COD_CFOPDENTROESTADO na tabela SUBPRODUTO
  if not AtualizaTabela('SUBPRODUTO', 'COD_CFOPDENTROESTADO', ' INTEGER ') then
    MPainel.Lines.Add('Erro ao inserir o campo COD_CFOPDENTROESTADO da tabela: SUBPRODUTO');

  //Edmar - 23/09/2014 - Informa campo COD_CFOPFORAESTADO na tabela SUBPRODUTO
  if not AtualizaTabela('SUBPRODUTO', 'COD_CFOPFORAESTADO', ' INTEGER ') then
    MPainel.Lines.Add('Erro ao inserir o campo COD_CFOPFORAESTADO da tabela: SUBPRODUTO');

  //Edmar - 15/09/2014 - Informa campo TIPO na tabela PEDCOMPRA
  if not AtualizaTabela('PEDCOMPRA', 'TIPO', ' VARCHAR(10) ') then
    MPainel.Lines.Add('Erro ao inserir o campo TIPO da tabela: PEDCOMPRA');

  //Edmar - 11/09/2014 - Informa campo MAXREGISTROOS na tabela USUARIO
  if not AtualizaTabela('USUARIO', 'MAXREGISTROOS', ' VARCHAR(10) ') then
    MPainel.Lines.Add('Erro ao inserir o campo MAXREGISTROOS da tabela: USUARIO');

  //Alex - 09/09/2014 - Informa campo ATUALIZAESTOQUEPC na tabela LOJA
  if not AtualizaTabela('LOJA', 'ATUALIZAESTOQUEPC', ' CHAR(1) ') then
    MPainel.Lines.Add('Erro ao inserir o campo ATUALIZAESTOQUEPC da tabela: LOJA');

  //Edmar - 26/08/2014 - Informa campo CAMINHO_REMESSA na tabela CTACOR
  if not AtualizaTabela('CTACOR', 'CAMINHO_REMESSA', 'VARCHAR(200)') then
    MPainel.Lines.Add('Erro ao inserir o campo CAMINHO_REMESSA da tabela: CTACOR');

  //Edmar - 26/08/2014 - Informa campo NOME_REMESSA na tabela CTACOR
  if not AtualizaTabela('CTACOR', 'NOME_REMESSA', 'VARCHAR(50)') then
    MPainel.Lines.Add('Erro ao inserir o campo NOME_REMESSA da tabela: CTACOR');

  //Edmar - 25/08/2014 - Informa campo VLRANTIGO na tabela SUBSERVICO
  if not AtualizaTabela('SUBSERVICO', 'VLRANTIGO', 'NUMERIC(14,2)') then
    MPainel.Lines.Add('Erro ao inserir o campo VLRANTIGO da tabela: SUBSERVICO');

  //Edmar - 25/08/2014 - Informa campo DATA_REAJUSTE na tabela SUBSERVICO
  if not AtualizaTabela('SUBSERVICO', 'DATA_REAJUSTE', 'DATE') then
    MPainel.Lines.Add('Erro ao inserir o campo DATA_REAJUSTE da tabela: SUBSERVICO');

  //Alex - 22/08/2014 - Informa campo NOVOLAYOUT na tabela CTACOR
  if not AtualizaTabela('CTACOR', 'NOVOLAYOUT', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao inserir o campo NOVOLAYOUT da tabela: CTACOR');

  //Edmar - 22/08/2014 - Informa campo MARK na tabela SERVICO
  if not AtualizaTabela('SERVICO', 'MARK', 'CHAR(1)') then
    MPainel.Lines.Add('Erro ao inserir o campo MARK da tabela: SERVICO');

  //Edmar - 19/08/2014 - Altera o tamanho do campo NOSSONUMBLT da tabela PARCELACR para VARCHAR(20)
  if AtualizaTabelaCampo('PARCELACR', 'NOSSONUMBLT', 'VARCHAR(20)') = false then
    MPainel.Lines.Add('Erro ao alterar o campo NOSSONUMBLT da tabela: PARCELACR');

  //Alex - 14/08/2014 - Altera o tamanho do campo NOMECLI da tabela ORCAMENTO para VARCHAR(100)
  TrataCampoNOMECLI;

  //Edmar - 12/08/2014 - Informa campo NRCONTRATO na tabela ORDEM
  if not AtualizaTabela('ORDEM', 'NRCONTRATO', 'INTEGER') then
    MPainel.Lines.Add('Erro ao inserir o campo NRCONTRATO da tabela: ORDEM');

  //Edmar - 05/08/2014 - Informa campo BASEICMSSUBS na tabela ITPRODORC
  if AtualizaTabela('ITPRODORC', 'BASEICMSSUBS', 'NUMERIC(14, 2)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo BASEICMSSUBS da tabela: ITPRODORC');

  //Edmar - 05/08/2014 - Informa campo VLRICMSSUBS na tabela ORCAMENTO
  if AtualizaTabela('ITPRODORC', 'VLRICMSSUBS', 'NUMERIC(14, 2)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo VLRICMSSUBS da tabela: ITPRODORC');

  //Edmar - 05/08/2014 - Informa campo IPNMVA na tabela ORCAMENTO
  if AtualizaTabela('ITPRODORC', 'IPNMVA', 'NUMERIC(3, 2)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo IPNMVA da tabela: ITPRODORC');

  //Edmar - 05/08/2014 - Informa campo COD_CST na tabela ORCAMENTO
  if AtualizaTabela('ITPRODORC', 'COD_CST', 'INTEGER') = false then
    MPainel.Lines.Add('Erro ao inserir o campo COD_CST da tabela: ITPRODORC');

  //Edmar - 05/08/2014 - Informa campo APLICARST na tabela ORCAMENTO
  if AtualizaTabela('ITPRODORC', 'APLICARST', 'CHAR(1)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo APLICARST da tabela: ITPRODORC');

  //Edmar - 05/08/2014 - Informa campo COD_CST na tabela ORCAMENTO
  if AtualizaTabela('ORCAMENTO', 'COD_CST', 'INTEGER') = false then
    MPainel.Lines.Add('Erro ao inserir o campo COD_CST da tabela: ORCAMENTO');

  //Edmar - 24/07/2014 - Informa campo DESCPRODVINCULADO na tabela IMPNFETMP
  if AtualizaTabela('IMPNFETMP', 'DESCPRODVINCULADO', 'VARCHAR(80)') = false
    then
    MPainel.Lines.Add('Erro ao inserir o campo DESCPRODVINCULADO da tabela: IMPNFETMP');

  //Edmar - 15/07/2014 - Informa campo CARACTERISTICA_PRODUTO01 na tabela LOJA
  if AtualizaTabela('LOJA', 'CARACTERISTICA_PRODUTO01', ' OBS ') = false then
    MPainel.Lines.Add('Erro ao inserir o campo CARACTERISTICA_PRODUTO01 da tabela: LOJA');

  //Edmar - 15/07/2014 - Informa campo CARACTERISTICA_PRODUTO02 na tabela LOJA
  if AtualizaTabela('LOJA', 'CARACTERISTICA_PRODUTO02', ' OBS ') = false then
    MPainel.Lines.Add('Erro ao inserir o campo CARACTERISTICA_PRODUTO02 da tabela: LOJA');

  //Edmar - 15/07/2014 - Informa campo CARACTERISTICA_PRODUTO01 na tabela ORCAMENTO
  if AtualizaTabela('ORCAMENTO', 'CARACTERISTICA_PRODUTO01', ' OBS ') = false
    then
    MPainel.Lines.Add('Erro ao inserir o campo CARACTERISTICA_PRODUTO01 da tabela: ORCAMENTO');

  //Edmar - 15/07/2014 - Informa campo CARACTERISTICA_PRODUTO02 na tabela ORCAMENTO
  if AtualizaTabela('ORCAMENTO', 'CARACTERISTICA_PRODUTO02', ' OBS ') = false
    then
    MPainel.Lines.Add('Erro ao inserir o campo CARACTERISTICA_PRODUTO02 da tabela: ORCAMENTO');

  //Edmar - 14/07/2014 - Informa campo DESCRICAO_PRODMANUTENCAO na tabela PEDCOMPRA
  if AtualizaTabela('PEDCOMPRA', 'DESCRICAO_PRODMANUTENCAO', ' VARCHAR(100) ') =
    false then
    MPainel.Lines.Add('Erro ao inserir o campo DESCRICAO_PRODMANUTENCAO da tabela: PEDCOMPRA');

  //Edmar - 08/07/2014 - Informa campo QTDE_HORA_SAIDA na tabela ITPRODORD
  if AtualizaTabela('ITPRODORD', 'QTDE_HORA_SAIDA', ' NUMERIC(14,2) ') = false
    then
    MPainel.Lines.Add('Erro ao inserir o campo QTDE_HORA_SAIDA da tabela: ITPRODORD');

  //Edmar - 08/07/2014 - Informa campo QTDE_HORA_RETORNO na tabela ITPRODORD
  if AtualizaTabela('ITPRODORD', 'QTDE_HORA_RETORNO', ' NUMERIC(14,2) ') = false
    then
    MPainel.Lines.Add('Erro ao inserir o campo QTDE_HORA_RETORNO da tabela: ITPRODORD');

  //Edmar - 08/07/2014 - Informa campo QTDE_HORA_CONSUMIDA na tabela ITPRODORD
  if AtualizaTabela('ITPRODORD', 'QTDE_HORA_CONSUMIDA', ' NUMERIC(14,2) ') =
    false then
    MPainel.Lines.Add('Erro ao inserir o campo QTDE_HORA_CONSUMIDA da tabela: ITPRODORD');

  //Edmar - 08/07/2014 - Informa campo CTRL_HORA na tabela ITPRODORD
  if AtualizaTabela('ITPRODORD', 'CTRL_HORA', ' CHAR(1) ') = false then
    MPainel.Lines.Add('Erro ao inserir o campo CTRL_HORA da tabela: ITPRODORD');

  //Edmar - 23/06/2014 - Informa campo na tabela PRAZO_DESPACHO ORCAMENTO
  if AtualizaTabela('ORCAMENTO', 'PRAZO_DESPACHO', 'DATE') = false then
    MPainel.Lines.Add('Erro ao inserir o campo PRAZO_DESPACHO da tabela: ORCAMENTO');

  //Edmar - 08/07/2014 - Altera o tamanho do campo PRAZO_DESPACHO da tabela ORCAMENTO para VARCHAR(50)
  if AtualizaTabelaCampo('ORCAMENTO', 'PRAZO_DESPACHO', 'VARCHAR(50)') = false
    then
    MPainel.Lines.Add('Erro ao alterar o campo PRAZO_DESPACHO da tabela: ORCAMENTO');

  //Alex - 27/06/2014 - Informa campo MVAFORASIMPLES na tabela ITPRODORD
  if AtualizaTabela('ITPRODORD', 'IPNMVA', ' NUMERIC(3,2) ') = false then
    MPainel.Lines.Add('Erro ao inserir o campo IPNMVA da tabela: ITPRODORD');

  //Alex - 27/06/2014 - Informa campo MVAFORASIMPLES na tabela ESTADO
  if AtualizaTabela('ESTADO', 'MVAFORASIMPLES', ' NUMERIC(3,2) ') = false then
    MPainel.Lines.Add('Erro ao inserir o campo MVAFORASIMPLES da tabela: ESTADO');

  //Alex - 27/06/2014 - Informa campo APROVEITACREDITO na tabela CST
  if AtualizaTabela('CLIENTE', 'SIMPLESNACIONAL', 'CHAR(1)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo SIMPLESNACIONAL da tabela: CLIENTE');

  //Alex - 27/06/2014 - Informa campo ICMSCREDALIQ na tabela ITENSPEDIDO DE VENDA
  if AtualizaTabela('ITENSPEDVEN', 'ICMSCREDALIQ', 'NUMERIC(3,2)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo ICMSCREDALIQ da tabela: ITENSPEDVEN');

  //Alex - 27/06/2014 - Informa campo ICMSCREDALIQ na tabela ITENSPEDIDO DE VENDA
  if AtualizaTabela('ITENSPEDVEN', 'ICMSCREDVALOR', 'NUMERIC(14,2)') = false
    then
    MPainel.Lines.Add('Erro ao inserir o campo ICMSCREDVALOR da tabela: ITENSPEDVEN');

  //Alex - 27/06/2014 - Informa campo ICMSCREDALIQ na tabela ITPRODORD
  if AtualizaTabela('ITPRODORD', 'ICMSCREDALIQ', 'NUMERIC(3,2)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo ICMSCREDALIQ da tabela: ITPRODORD');

  //Alex - 27/06/2014 - Informa campo ICMSCREDALIQ na tabela ITPRODORD
  if AtualizaTabela('ITPRODORD', 'ICMSCREDVALOR', 'NUMERIC(14,2)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo ICMSCREDVALOR da tabela: ITPRODORD');

  //Alex - 27/06/2014 - Informa campo APROVEITACREDITO na tabela CST
  if AtualizaTabela('CST', 'APROVEITACREDITO', 'CHAR(1)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo APROVEITACREDITO da tabela: CST');

  //Edmar - 25/06/2014 - Informa campo na tabela CTRL_HORA SUBPRODUTO
  if AtualizaTabela('SUBPRODUTO', 'CTRL_HORA', 'CHAR(1)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo CTRL_HORA da tabela: SUBPRODUTO');

  //Edmar - 24/06/2014 - Informa campo na tabela ICMS_ST ORCAMENTO
  if AtualizaTabela('ORCAMENTO', 'ICMS_ST', 'NUMERIC(3, 2)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo ICMS_ST da tabela: ORCAMENTO');

  //Edmar - 24/06/2014 - Informa campo na tabela SOLICITANTE ORCAMENTO
  if AtualizaTabela('ORCAMENTO', 'SOLICITANTE', 'VARCHAR(50)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo SOLICITANTE da tabela: ORCAMENTO');

  //Edmar - 24/06/2014 - Informa campo na tabela EMAIL_SOLICITANTE ORCAMENTO
  if AtualizaTabela('ORCAMENTO', 'EMAIL_SOLICITANTE', 'VARCHAR(50)') = false
    then
    MPainel.Lines.Add('Erro ao inserir o campo EMAIL_SOLICITANTE da tabela: ORCAMENTO');

  //Edmar - 24/06/2014 - Informa campo na tabela AREA_SOLICITANTE ORCAMENTO
  if AtualizaTabela('ORCAMENTO', 'AREA_SOLICITANTE', 'VARCHAR(50)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo AREA_SOLICITANTE da tabela: ORCAMENTO');

  //Edmar - 23/06/2014 - Informa campo na tabela MODO_PAGAMENTO ORCAMENTO
  if AtualizaTabela('ORCAMENTO', 'MODO_PAGAMENTO', 'VARCHAR(100)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo MODO_PAGAMENTO da tabela: ORCAMENTO');

  //Edmar - 23/06/2014 - Informa campo na tabela GARANTIA ORCAMENTO
  if AtualizaTabela('ORCAMENTO', 'GARANTIA', 'VARCHAR(50)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo GARANTIA da tabela: ORCAMENTO');

  //Edmar - 23/06/2014 - Informa campo na tabela FRETE ORCAMENTO
  if AtualizaTabela('ORCAMENTO', 'FRETE', 'VARCHAR(50)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo FRETE da tabela: ORCAMENTO');

  //Edmar - 23/06/2014 - Informa campo na tabela CTRL_DESGASTE SUBPRODUTO
  if AtualizaTabela('SUBPRODUTO', 'CTRL_DESGASTE', 'CHAR(1)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo CTRL_DESGASTE da tabela: SUBPRODUTO');

  //Edmar - 23/06/2014 - Informa campo na tabela DESGASTE_SAIDA ITPRODORD
  if AtualizaTabela('ITPRODORD', 'DESGASTE_SAIDA', 'NUMERIC(10, 2)') = false
    then
    MPainel.Lines.Add('Erro ao inserir o campo DESGASTE_SAIDA da tabela: ITPRODORD');

  //Edmar - 23/06/2014 - Informa campo na tabela DESGASTE_RETORNO ITPRODORD
  if AtualizaTabela('ITPRODORD', 'DESGASTE_RETORNO', 'NUMERIC(10, 2)') = false
    then
    MPainel.Lines.Add('Erro ao inserir o campo DESGASTE_RETORNO da tabela: ITPRODORD');

  //Edmar - 23/06/2014 - Informa campo na tabela DESGASTE_CONSUMIDO ITPRODORD
  if AtualizaTabela('ITPRODORD', 'DESGASTE_CONSUMIDO', 'NUMERIC(10, 2)') = false
    then
    MPainel.Lines.Add('Erro ao inserir o campo DESGASTE_CONSUMIDO da tabela: ITPRODORD');

  //Edmar - 27/05/2014 - Informa campo na tabela COD_PRODMANUTENCAO PEDCOMPRA
  if AtualizaTabela('PEDCOMPRA', 'COD_PRODMANUTENCAO', 'INTEGER') = false then
    MPainel.Lines.Add('Erro ao inserir o campo COD_PRODMANUTENCAO da tabela: PEDCOMPRA');

  //Edmar - 27/05/2014 - Informa campo na tabela ESTOQUE VENDINDV
  if AtualizaTabela('ESTOQUE', 'VENDINDV', 'MOEDA') = false then
    MPainel.Lines.Add('Erro ao inserir o campo VENDINDV da tabela: ESTOQUE');

  //Edmar - 27/05/2014 - Informa campo na tabela ESTOQUE VENDINDP
  if AtualizaTabela('ESTOQUE', 'VENDINDP', 'MOEDA') = false then
    MPainel.Lines.Add('Erro ao inserir o campo VENDINDP da tabela: ESTOQUE');

  //Edmar - 27/05/2014 - Informa campo na tabela ESTOQUE AVVPROIND
  if AtualizaTabela('ESTOQUE', 'AVVPROIND', 'COMISSAO') = false then
    MPainel.Lines.Add('Erro ao inserir o campo AVVPROIND da tabela: ESTOQUE');

  //Edmar - 27/05/2014 - Informa campo na tabela ESTOQUE AVPPROIND
  if AtualizaTabela('ESTOQUE', 'AVPPROIND', 'COMISSAO') = false then
    MPainel.Lines.Add('Erro ao inserir o campo AVPPROIND da tabela: ESTOQUE');

  //Edmar - 14/05/2014 - Altera o tamanho do campo QUANTIDADE da tabela IMPNFETMP para Numeric(10, 2)
  if AtualizaTabelaCampo('IMPNFETMP', 'QUANTIDADE', 'NUMERIC(10,2)') = false
    then
    MPainel.Lines.Add('Erro ao alterar o campo QUANTIDADE da tabela: IMPNFETMP');

  //05/05/2014 - Informa campo na tabela DESPADIC NFSE_NUMERODOCUMENTO
  if AtualizaTabela('DESPADIC', 'NFSE_NUMERODOCUMENTO', ' INTEGER ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo NFSE_NUMERODOCUMENTO da tabela: DESPADIC');

  //Edmar - 30/04/2014 - Cria o campo IMPOSTONFSE na tabela DOCFISORD
  if AtualizaTabela('DOCFISORD', 'IMPOSTONFSE', 'VARCHAR(100)') = false then
    MPainel.Lines.Add('Erro ao inserir o campo IMPOSTONFSE da tabela: DOCFISORD');

  //Edmar - 30/04/2014 - Cria o campo VALORTOTALTRIBUTANFSE na tabela EMPRESA
  if AtualizaTabela('EMPRESA', 'VALORTOTALTRIBUTANFSE', 'NUMERIC(14,2)') = false
    then
    MPainel.Lines.Add('Erro ao inserir o campo VALORTOTALTRIBUTANFSE da tabela: EMPRESA');

  //Edmar - 22/04/2014 - Altera o tamanho do campo ALIQISSQN da tabela DESPADIC para Numeric(5, 2)
  if AtualizaTabelaCampo('DESPADIC', 'ALIQISSQN', 'NUMERIC(5,2)') = false then
    MPainel.Lines.Add('Erro ao alterar o campo ALIQISSQN da tabela: DESPADIC');

  //ALEX - 09/04/2014 - Altera o tamanho do campo DESCRICÃO da tabela DESPADIC para 100
  if AtualizaTabelaCampo('DESPADIC', 'DESPESA', 'VARCHAR(100)') = false then
    MPainel.Lines.Add('Erro ao alterar o campo DESPESA da tabela: DESPADIC');

  //Edmar - 09/04/2014 - Informa o campo COD_ABCAIXA  na tabela PARCELACR
  if AtualizaTabela('PARCELACR', 'COD_ABCAIXA', 'INTEGER') = false then
    MPainel.Lines.Add('Erro ao criar campo COD_ABCAIXA da tabela: PARCELACR');

  //ALEX - 08/04/2014 - Informa o campo aTIVO  na tabela SUBSERVICO
  if AtualizaTabela('SUBSERVICO', 'ATIVO', 'SMALLINT') = false then
    MPainel.Lines.Add('Erro ao criar campo ATIVO da tabela: SUBSERVICO');

  //Edmar - 08/04/2014 - Informa o campo EMAILPADRAO  na tabela PESSOA
  if AtualizaTabela('PESSOA', 'EMAILPADRAO', 'VARCHAR(100)') = false then
    MPainel.Lines.Add('Erro ao criar campo EMAILPADRAO da tabela: PESSOA');

  //Edmar - 04/04/2014 - Insere nova tabela: IMPNFEFINANC
  if InsereTabelaNova('IMPNFEFINANC', 'COD_IMPNFEFINANC INTEGER NOT NULL') =
    False then
    MPainel.Lines.Add('Erro ao gerar nova tabela: IMPNFEFINANC');

  ///////////////////////////////////////////////////////////////////////////
  // Edmar - 04/04/2014 - Começa a inserir os campos na tabela IMPNFEFINANC//
  ///////////////////////////////////////////////////////////////////////////

  //Edmar - 04/04/2014 - Informa o campo NR_FATURA  na tabela IMPNFEFINANC
  if AtualizaTabela('IMPNFEFINANC', 'NR_FATURA', 'VARCHAR(20)') = false then
    MPainel.Lines.Add('Erro ao criar campo NR_FATURA da tabela: IMPNFEFINANC');

  //Edmar - 04/04/2014 - Informa o campo NR_FATURA  na tabela IMPNFEFINANC
  if AtualizaTabela('IMPNFEFINANC', 'DT_VENCIMENTO', 'DATE') = false then
    MPainel.Lines.Add('Erro ao criar campo DT_VENCIMENTO da tabela: IMPNFEFINANC');

  //Edmar - 04/04/2014 - Informa o campo NR_FATURA  na tabela IMPNFEFINANC
  if AtualizaTabela('IMPNFEFINANC', 'VLR_PARCELA', 'NUMERIC(14, 2)') = false
    then
    MPainel.Lines.Add('Erro ao criar campo VLR_PARCELA da tabela: IMPNFEFINANC');

  //Edmar - 04/04/2014 - Informa o campo NR_FATURA  na tabela IMPNFEFINANC
  if AtualizaTabela('IMPNFEFINANC', 'VLR_FATURA', 'NUMERIC(14, 2)') = false then
    MPainel.Lines.Add('Erro ao criar campo VLR_FATURA da tabela: IMPNFEFINANC');

  ///////////////////////////////////////////////////////////////////////////
  //     Edmar - 04/04/2014 - Termina a inserção na tabela IMPNFEFINANC    //
  ///////////////////////////////////////////////////////////////////////////

  //Edmar - 02/04/2014 - Informa o campo na tabela LOJA INSERIRFATURA
  if AtualizaTabela('LOJA', 'INSERIRFATURA', 'CHAR(1)') = false then
    MPainel.Lines.Add('Erro ao criar campo INSERIRFATURA da tabela: LOJA');

  //Edmar - 27/03/2014 - informa o campo na tabela ORDEM RT_ISS
  if AtualizaTabela('ORDEM', 'RT_ISS', ' CHAR(1) ') = False then
    MPainel.Lines.Add('Erro ao criar campo RT_ISS da tabela: ORDEM');

  //Edmar - 26/03/2014 - informa o campo na tabela ORDEM TOTISS
  if AtualizaTabela('ORDEM', 'TOTISS', ' NUMERIC(14,2) ') = False then
    MPainel.Lines.Add('Erro ao criar campo TOTISS da tabela: ORDEM');

  //Apaga Campo na tabela DOCFISCORD nfse_codigoautenticidade
  if ApagaCampo('docfisord ', 'NFSE_CODIGOAUTENTICIDADE') = False then
    MPainel.Lines.Add('Erro ao apagar campo nfse_codigoautenticidade da tabela: docfisord');

  //Informa campo na tabela docfisord DESCONTO
  if AtualizaTabela('DOCFISORD', 'NFSE_NUMEROLOTE', ' INTEGER ') = False then
    MPainel.Lines.Add('Erro ao criar campo NFSE_NUMEROLOTE da tabela: DOCFISORD');

  //Informa campo na tabela CLIENTE DESCONTO
  if AtualizaTabela('CLIENTE', 'TAXAENTREGA', '  CHAR(1)  ') = False then
    MPainel.Lines.Add('Erro ao criar campo TAXAENTREGA da tabela: CLIENTE');

  //Informa campo na tabela CLIENTE DESCONTO
  if AtualizaTabela('CLIENTE', 'DESCONTO', '  NUMERIC(10,2)  ') = False then
    MPainel.Lines.Add('Erro ao criar campo DESCONTO da tabela: CLIENTE');

  //Informa campo na tabela TMP DESC500
  if AtualizaTabela('TMP', 'DESC500', '  VARCHAR(500)  ') = False then
    MPainel.Lines.Add('Erro ao criar campo TMP da tabela: DESC500');

  //Informa campo na tabela ORDEM QTDEMB
  if AtualizaTabela('IMPNFETMP', 'QTDEMB', '  NUMERIC(10,3)  ') = False then
    MPainel.Lines.Add('Erro ao criar campo IMPNFETMP da tabela: QTDEMB');

  //Informa campo na tabela ORDEM STATUSNFSE
  if AtualizaTabela('ORDEM', 'NUMFISCALNFSE', '  INTEGER  ') = False then
    MPainel.Lines.Add('Erro ao criar campo ORDEM da tabela: NUMFISCALNFSE');

  //Informa campo na tabela ORDEM STATUSNFSE
  if AtualizaTabela('ORDEM', 'STATUSNFSE', '  CHAR(1)  ') = False then
    MPainel.Lines.Add('Erro ao criar campo ORDEM da tabela: STATUSNFSE');

  //Informa campo na tabela DOCFISORD NFSE_NUMERODOCUMENTO
  if AtualizaTabela('SERVICO_NFSE', 'PADRAO', '  CHAR(1)  ') = False then
    MPainel.Lines.Add('Erro ao criar campo PADRAO da tabela: SERVICO_NFSE');

  // Tenta alterar o campo codbarra de subproduto de varchar(15) para varchar(30)
  if CBCodBarra.Checked = True then
    TrataCampoCodBarra;

  //Informa campo na tabela DOCFISORD NFSE_NUMERODOCUMENTO
  if AtualizaTabela('DOCFISORD', 'NFSE_NUMERODOCUMENTO', ' INTEGER ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo NFSE_NUMERODOCUMENTO da tabela: DOCFISORD');

  //Informa campo na tabela DOCFISORD NFSE_SERIERPS
  if AtualizaTabela('DOCFISORD', 'NFSE_SERIERPS', ' INTEGER ') = False then
    MPainel.Lines.Add('Erro ao criar campo NFSE_SERIERPS da tabela: DOCFISORD');

  //Informa campo na tabela DOCFISORD NFSE_NUMERORPS
  if AtualizaTabela('DOCFISORD', 'NFSE_NUMERORPS', ' INTEGER ') = False then
    MPainel.Lines.Add('Erro ao criar campo NFSE_NUMERORPS da tabela: DOCFISORD');

  //Informa campo na tabela DOCFISORD NFSE_STATUSGERAL
  if AtualizaTabela('DOCFISORD', 'NFSE_STATUSGERAL', ' CHAR(1) ') = False then
    MPainel.Lines.Add('Erro ao criar campo NFSE_STATUSGERAL da tabela: DOCFISORD');

  //Informa campo na tabela LOJA NFSE_LICENSA
  if AtualizaTabela('LANCAIXA', 'SALDOANT', ' Numeric(14, 2) ') = False then
    MPainel.Lines.Add('Erro ao criar campo SALDOANT da tabela: LANCAIXA');

  //Informa campo na tabela LOJA NFSE_LICENSA
  if AtualizaTabela('LOJA', 'NFSE_LICENSA', ' varchar(150) ') = False then
    MPainel.Lines.Add('Erro ao criar campo NFSE_LICENSA da tabela: LOJA');

  //Informa campo na tabela DESPADIC nfse_codservico
  if AtualizaTabela('DESPADIC', 'NFSE_CODSERVICO', ' varchar(10) ') = False then
    MPainel.Lines.Add('Erro ao criar campo nfse_codservico da tabela: DESPADIC');

  //Informa campo na tabela DOCFISORD NFSE_CODTRIBUTACAOMUNICIPAL - Código da tributação municipal
  if AtualizaTabela('DOCFISORD', 'NFSE_CODIGOAUTENTICIDADE', ' varchar(50) ') =
    False then
    MPainel.Lines.Add('Erro ao criar campo NFSE_CODIGOAUTENTICIDADE da tabela: DOCFISORD');

  //Informa campo na tabela EMPRESA NFSE_CODTRIBUTACAOMUNICIPAL - Código da tributação municipal
  if AtualizaTabela('EMPRESA', 'NFSE_CODTRIBUTACAOMUNICIPAL', ' varchar(15) ') =
    False then
    MPainel.Lines.Add('Erro ao criar campo NFSE_CODTRIBUTACAOMUNICIPAL da tabela: EMPRESA');

  //Informa campo na tabela EMPRESA NFSE_CODIGOCNAE - Descrição do Cnae
  if AtualizaTabela('EMPRESA', 'NFSE_DESCRICAOCNAE', ' varchar(100) ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo NFSE_DESCRICAOCNAE da tabela: EMPRESA');

  //Informa campo na tabela EMPRESA NFSE_CODIGOCNAE - Cósigo do Cnae
  if AtualizaTabela('EMPRESA', 'NFSE_CODIGOCNAE', ' varchar(10) ') = False then
    MPainel.Lines.Add('Erro ao criar campo NFSE_CODIGOCNAE da tabela: EMPRESA');

  {//Informa campo na tabela EMPRESA NFSE_REGIMEMUNICIPAL - Define o regime tributário municipal da empresa utilizado na emissão de notas de serviço
  if AtualizaTabela('EMPRESA','NFSE_REGIMEMUNICIPAL', ' varchar(60) ')=False then
      MPainel.Lines.Add('Erro ao criar campo NFSE_REGIMEMUNICIPAL da tabela: EMPRESA');  }

  //Informa campo na tabela EMPRESA NFSE_REGIMEMUNICIPAL - Define o regime tributário municipal da empresa utilizado na emissão de notas de serviço
  if AtualizaTabela('EMPRESA', 'NFSE_REGIMEMUNICIPAL', ' varchar(60) ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo NFSE_REGIMEMUNICIPAL da tabela: EMPRESA');

  //Informa campo na tabela ORDEM NFSE_DTEMISSAO
  if AtualizaTabela('DOCFISORD', 'NFSE_DTEMISSAO', ' DATE ') = False then
    MPainel.Lines.Add('Erro ao criar campo NFSE_DTEMISSAO da tabela: DOCFISORD');

  //Informa campo na tabela DESPADIC NFSE_SERIERPS
  if AtualizaTabela('DESPADIC', 'NFSE_SERIERPS', ' INTEGER ') = False then
    MPainel.Lines.Add('Erro ao criar campo NFSE_SERIERPS da tabela: DESPADIC');

  //Informa campo na tabela DESPADIC NFSE_PROTOCOLO
  if AtualizaTabela('DESPADIC', 'NFSE_NUMERORPS', ' INTEGER ') = False then
    MPainel.Lines.Add('Erro ao criar campo NFSE_NUMERORPS da tabela: DESPADIC');

  //Informa campo na tabela ORDEM NFSE_PROTOCOLO
  if AtualizaTabela('DOCFISORD', 'NFSE_XML', ' BLOB SUB_TYPE 1 SEGMENT SIZE 1 ')
    = False then
    MPainel.Lines.Add('Erro ao criar campo NFSE_XML da tabela: DOCFISORD');

  //Informa campo na tabela ORDEM NFSE_PROTOCOLO
  if AtualizaTabela('DOCFISORD', 'NFSE_PROTOCOLO', ' VARCHAR(100) ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo NFSE_PROTOCOLO da tabela: DOCFISORD');

  //Informa campo na tabela DESPADIC NFSE_STATUS
  if AtualizaTabela('DESPADIC', 'NFSE_STATUS', ' VARCHAR(1) ') = False then
    MPainel.Lines.Add('Erro ao criar campo NFSE_STATUS da tabela: DESPADIC');

  //Informa campo na tabela DESPADIC CLASSIFICACAO
  if AtualizaTabela('DESPADIC', 'CLASSIFICACAO', ' VARCHAR(25) ') = False then
    MPainel.Lines.Add('Erro ao criar campo CLASSIFICACAO da tabela: DESPADIC');

  //Informa campo na tabela CTACOR LICENSACOBREBEM
  if AtualizaTabela('CTACOR', 'LICENSACOBREBEM', ' VARCHAR(200) ') = False then
    MPainel.Lines.Add('Erro ao criar campo LICENSACOBREBEM da tabela: CTACOR');

  //Informa campo na tabela LOJA TIPOORCAMENTO
  if AtualizaTabela('LOJA', 'TIPOORCAMENTO', ' VARCHAR(10) ') = False then
    MPainel.Lines.Add('Erro ao criar campo TIPOORCAMENTO da tabela: LOJA');

  //Informa campo na tabela SUBPRODUTO COMPLEMENTOFISCAL
  if AtualizaTabela('SUBPRODUTO', 'COMPLEMENTOFISCAL', ' VARCHAR(500) ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo COMPLEMENTOFISCAL da tabela: SUBPRODUTO');

  //Informa campo na tabela CTACOR USACOBREBEMX
  if AtualizaTabela('CTACOR', 'USACOBREBEMX', ' CHAR(1) ') = False then
    MPainel.Lines.Add('Erro ao criar campo USACOBREBEMX da tabela: CTACOR');

  //Informa campo na tabela LOJA NFSEADMINISTRADORA
  if AtualizaTabela('PLNCTA', 'RELGERENCIAL', ' CHAR(1) ') = False then
    MPainel.Lines.Add('Erro ao criar campo RELGERENCIAL da tabela: PLNCTA');

  //Informa campo na tabela LOJA NFSEADMINISTRADORA
  if AtualizaTabela('LOJA', 'NFSEADMINISTRADORA', ' VARCHAR(20) ') = False then
    MPainel.Lines.Add('Erro ao criar campo NFSEADMINISTRADORA da tabela: LOJA');

  //Informa campo na tabela IMPNFETMP
  if AtualizaTabela('IMPNFETMP', 'CFOP', ' VARCHAR(4) ') = False then
    MPainel.Lines.Add('Erro ao criar campo CFOP da tabela: IMPNFETMP');

  //Informa campo na tabela ORCAMENTO EXPORTA
  if AtualizaTabela('LOJA', 'FORCARCARTAO', ' CHAR(1) ') = False then
    MPainel.Lines.Add('Erro ao criar campo FORCARCARTAO da tabela: LOJA');

  //Informa campo na tabela ORCAMENTO EXPORTA
  if AtualizaTabela('ORCAMENTO', 'EXPORTA', ' CHAR(1) ') = False then
    MPainel.Lines.Add('Erro ao criar campo EXPORTA da tabela: ORCAMENTO');

  //Informa campo na tabela PEDCOMPRA VLRSEGURO
  if AtualizaTabela('PEDCOMPRA', 'VLRSEGURO', ' NUMERIC(14,2) ') = False then
    MPainel.Lines.Add('Erro ao criar campo VLRSEGURO da tabela: PEDCOMPRA');

  //Informa campo na tabela PEDCOMPRA CHAVENFEXML
  if AtualizaTabela('PEDCOMPRA', 'CHAVENFEXML', ' VARCHAR(50) ') = False then
    MPainel.Lines.Add('Erro ao criar campo CHAVENFEXML da tabela: PEDCOMPRA');

  /////////////////////////////////////////////////
////////////INICIO DA TABELA SPED DA NFE ////////
  /////////////////////////////////////////////////
    //INCLUIR TABELA FATURACONTAS
  if InsereTabelaNova('SPED', 'COD_SPED INTEGER NOT NULL') = False then
    MPainel.Lines.Add('Erro ao gerar nova tabela: SPED');
  //INCLUIR GENERATOR NA TABELA FATURACONTAS
  if InsereGeneration('SPED', 'COD_SPED') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo COD_INFCOMPLEMENTAR da tabela INFCOMPLEMENTAR');
  if InsereTrigger('SPED', 'GEN_SPED_ID', 'COD_SPED') = False then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_SPED da tabela SPED');

  //CAMPOS TABELA FATURACONTAS
  if AtualizaTabela('SPED', 'NOME', 'VARCHAR(100)') = False then
    MPainel.Lines.Add('Erro ao criar campo NOME da tabela: SPED');
  if AtualizaTabela('SPED', 'CPF', 'VARCHAR(11)') = False then
    MPainel.Lines.Add('Erro ao criar campo CPF da tabela: SPED');
  if AtualizaTabela('SPED', 'CRC', 'VARCHAR(15)') = False then
    MPainel.Lines.Add('Erro ao criar campo CRC da tabela: SPED');
  if AtualizaTabela('SPED', 'CNPJ', 'VARCHAR(15)') = False then
    MPainel.Lines.Add('Erro ao criar campo CNPJ da tabela: SPED');
  if AtualizaTabela('SPED', 'CEP', 'VARCHAR(8)') = False then
    MPainel.Lines.Add('Erro ao criar campo CEP da tabela: SPED');
  if AtualizaTabela('SPED', 'ENDERECO', 'VARCHAR(60)') = False then
    MPainel.Lines.Add('Erro ao criar campo ENDERECO da tabela: SPED');
  if AtualizaTabela('SPED', 'NUMERO', 'INTEGER') = False then
    MPainel.Lines.Add('Erro ao criar campo NUMERO da tabela: SPED');
  if AtualizaTabela('SPED', 'COMPLEMENTO', 'VARCHAR(60)') = False then
    MPainel.Lines.Add('Erro ao criar campo COMPLEMENTO da tabela: SPED');
  if AtualizaTabela('SPED', 'BAIRRO', 'VARCHAR(60)') = False then
    MPainel.Lines.Add('Erro ao criar campo BAIRRO da tabela: SPED');
  if AtualizaTabela('SPED', 'FONE', 'VARCHAR(20)') = False then
    MPainel.Lines.Add('Erro ao criar campo FONE da tabela: SPED');
  if AtualizaTabela('SPED', 'FAX', 'VARCHAR(20)') = False then
    MPainel.Lines.Add('Erro ao criar campo FAX da tabela: SPED');
  if AtualizaTabela('SPED', 'EMAIL', 'VARCHAR(255)') = False then
    MPainel.Lines.Add('Erro ao criar campo EMAIL da tabela: SPED');
  if AtualizaTabela('SPED', 'COD_MUNICIPIO', 'INTEGER') = False then
    MPainel.Lines.Add('Erro ao criar campo COD_MUNICIPIO da tabela: SPED');

  ////////////////////////////////////////////////////////////
////////////INICIO INFORMAÇÕES OMPLEMENTARES DA NFE ////////
  ////////////////////////////////////////////////////////////
    //INCLUIR TABELA FATURACONTAS
  if InsereTabelaNova('INFCOMPLEMENTAR', 'COD_INFCOMPLEMENTAR INTEGER NOT NULL')
    = False then
    MPainel.Lines.Add('Erro ao gerar nova tabela: INFCOMPLEMENTAR');
  //INCLUIR GENERATOR NA TABELA FATURACONTAS
  if InsereGeneration('INFCOMPLEMENTAR', 'COD_INFCOMPLEMENTAR') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo COD_INFCOMPLEMENTAR da tabela INFCOMPLEMENTAR');
  if InsereTrigger('INFCOMPLEMENTAR', 'GEN_INFCOMPLEMENTAR_ID',
    'COD_INFCOMPLEMENTAR') = False then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_INFCOMPLEMENTAR da tabela INFCOMPLEMENTAR');

  //CAMPOS TABELA FATURACONTAS
  if AtualizaTabela('INFCOMPLEMENTAR', 'COD_DOCFISCAL', 'INTEGER') = False then
    MPainel.Lines.Add('Erro ao criar campo COD_DOCFISCAL da tabela: INFCOMPLEMENTAR');
  if AtualizaTabela('INFCOMPLEMENTAR', 'DADOS', 'VARCHAR(1000)') = False then
    MPainel.Lines.Add('Erro ao criar campo DADOS da tabela: INFCOMPLEMENTAR');
  if AtualizaTabela('INFCOMPLEMENTAR', 'TIPOGERADOR', 'VARCHAR(10)') = False
    then
    MPainel.Lines.Add('Erro ao criar campo TIPOGERADOR da tabela: INFCOMPLEMENTAR');
  if AtualizaTabela('INFCOMPLEMENTAR', 'COD_GERADOR', 'INTEGER') = False then
    MPainel.Lines.Add('Erro ao criar campo COD_GERADOR da tabela: INFCOMPLEMENTAR');
  /////////////////////////////////////////////////////////
////////////FIM INFORMAÇÕES OMPLEMENTARES DA NFE ////////
  /////////////////////////////////////////////////////////

  //Informa campo na tabela LOJA VERIFDESCPRODUTO
  if AtualizaTabela('LOJA', 'VERIFDESCPRODUTO', ' VARCHAR(1) ') = False then
    MPainel.Lines.Add('Erro ao criar campo VERIFDESCPRODUTO da tabela: LOJA');

  //Informa campo na tabela LOJA ORDENAORDEM
  if AtualizaTabela('LOJA', 'ORDENAORDEM', ' VARCHAR(15) ') = False then
    MPainel.Lines.Add('Erro ao criar campo ORDENAORDEM da tabela: LOJA');

  //Informa campo na tabela LOJA para informar se devemos ou não mostrar as placas adicionais
  if AtualizaTabela('LOJA', 'USAPLACASADICIONAIS', ' CHAR(1) ') = False then
    MPainel.Lines.Add('Erro ao criar campo USAPLACASADICIONAIS da tabela: LOJA');
  try
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' Update loja set loja.usaplacasadicionais=''0'' where loja.usaplacasadicionais is null ');
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
  except
    MPainel.Lines.Add('Erro ao ATIVAR campo USAPLACASADICIONAIS ');
  end;

  //Informa campo na tabela ORDEM para incluir placa adicional 01
  if AtualizaTabela('ORDEM', 'PLACA2', ' VARCHAR(10) ') = False then
    MPainel.Lines.Add('Erro ao criar campo PLACA2 da tabela: ORDEM');
  //Informa campo na tabela ORDEM para incluir placa adicional 02
  if AtualizaTabela('ORDEM', 'PLACA3', ' VARCHAR(10) ') = False then
    MPainel.Lines.Add('Erro ao criar campo PLACA3 da tabela: ORDEM');

  //Informa campo na tabela empresa paa CLIENTE indicando seo o cliente é consumidor 'S' ou null e 'N' para não consumidor
  if AtualizaTabela('CLIENTE', 'CONSUMIDOR', ' VARCHAR(1) ') = False then
    MPainel.Lines.Add('Erro ao criar campo CONSUMIDOR da tabela: CLIENTE');

  //Informa campo na tabela empresa paa armazenar o valor total aproximado dos tibutos
  if AtualizaTabela('LOJA', 'BAIXAAUTOMATICACARTAO', ' SMALLINT ') = False then
    MPainel.Lines.Add('Erro ao criar campo BAIXAAUTOMATICACARTAO da tabela: LOJA');

  //Informa campo na tabela empresa paa armazenar o valor total aproximado dos tibutos
  if AtualizaTabela('EMPRESA', 'VALORTOTALTRIBUTA', ' NUMERIC(14,2) ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo VALORTOTALTRIBUTA da tabela: EMPRESA');
  //Informa campo na tabela de Itens de venda para armazenar o valor total aproximado dos tibutos
  if AtualizaTabela('ITENSPEDVEN', 'VALORTOTALTRIBUTA', ' NUMERIC(14,2) ') =
    False then
    MPainel.Lines.Add('Erro ao criar campo VALORTOTALTRIBUTA da tabela: ITENSPEDVEN');
  //Informa campo na tabela de Itens de venda para armazenar a aliquota ref ao valor total aproximado dos tibutos
  if AtualizaTabela('ITENSPEDVEN', 'ALIQUOTATOTALTRIBUTA', ' NUMERIC(14,2) ') =
    False then
    MPainel.Lines.Add('Erro ao criar campo ALIQUOTATOTALTRIBUTA da tabela: ITENSPEDVEN');

  //Informa campo na tabela de Itens de PC para armazenar o valor total aproximado dos tibutos
  if AtualizaTabela('ITENSPEDC', 'VALORTOTALTRIBUTA', ' NUMERIC(14,2) ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo VALORTOTALTRIBUTA da tabela: ITENSPEDC');
  //Informa campo na tabela de Itens de PC paraarmazenar a aliquota ref ao  valor total aproximado dos tibutos
  if AtualizaTabela('ITENSPEDC', 'ALIQUOTATOTALTRIBUTA', ' NUMERIC(14,2) ') =
    False then
    MPainel.Lines.Add('Erro ao criar campo ALIQUOTATOTALTRIBUTA da tabela: ITENSPEDC');

  //Informa campo na tabela de Itens de OS para armazenar o valor total aproximado dos tibutos
  if AtualizaTabela('ITPRODORD', 'VALORTOTALTRIBUTA', ' NUMERIC(14,2) ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo VALORTOTALTRIBUTA da tabela: ITPRODORD');
  //Informa campo na tabela de Itens de OS para armazenar a aliquota ref ao  valor total aproximado dos tibutos
  if AtualizaTabela('ITPRODORD', 'ALIQUOTATOTALTRIBUTA', ' NUMERIC(14,2) ') =
    False then
    MPainel.Lines.Add('Erro ao criar campo ALIQUOTATOTALTRIBUTA da tabela: ITPRODORD');

  //Informa campo na tabela de ncm para armazenar a aliquota Nacional ref ao  o valor total aproximado dos tibutos
  if AtualizaTabela('NCM', 'ALIQTOTALTRIBUTANAC', ' NUMERIC(14,2) ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo ALIQTOTALTRIBUTANAC da tabela: NCM');
  //Informa campo na tabela de ncm para armazenar a aliquota de importação ref ao  o valor total aproximado dos tibutos
  if AtualizaTabela('NCM', 'ALIQTOTALTRIBUTAIMP', ' NUMERIC(14,2) ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo ALIQTOTALTRIBUTAIMP da tabela: NCM');

  //Informa campo na tabela de DOCFISSAIDA para os campors referente a aliquota e valor de tributação total
  if AtualizaTabela('DOCFISSAIDA', 'ALIQUOTATOTALTRIBUTA', ' NUMERIC(14,2) ') =
    False then
    MPainel.Lines.Add('Erro ao criar campo ALIQUOTATOTALTRIBUTA da tabela: DOCFISSAIDA');
  if AtualizaTabela('DOCFISSAIDA', 'VALORTOTALTRIBUTA', ' NUMERIC(14,2) ') =
    False then
    MPainel.Lines.Add('Erro ao criar campo VALORTOTALTRIBUTA da tabela: DOCFISSAIDA');

  //Informa campo na tabela de DOCFISORD para os campors referente a aliquota e valor de tributação total
  if AtualizaTabela('DOCFISORD', 'ALIQUOTATOTALTRIBUTA', ' NUMERIC(14,2) ') =
    False then
    MPainel.Lines.Add('Erro ao criar campo ALIQUOTATOTALTRIBUTA da tabela: DOCFISORD');
  if AtualizaTabela('DOCFISORD', 'VALORTOTALTRIBUTA', ' NUMERIC(14,2) ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo VALORTOTALTRIBUTA da tabela: DOCFISORD');

  //Informa campo na tabela de DOCFIS para os campors referente a aliquota e valor de tributação total
  if AtualizaTabela('DOCFIS', 'ALIQUOTATOTALTRIBUTA', ' NUMERIC(14,2) ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo ALIQUOTATOTALTRIBUTA da tabela: DOCFIS');
  if AtualizaTabela('DOCFIS', 'VALORTOTALTRIBUTA', ' NUMERIC(14,2) ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo VALORTOTALTRIBUTA da tabela: DOCFIS');

  /////////////////////////////////
  ////////ATUALIZAÇÃO ANTIGA///////
  /////////////////////////////////
  if Cb01.Checked = False then
    Exit; //para o processo

  ////////////////////////////////////
////////////INICIO FATURAS ////////
  ////////////////////////////// ////
    //INCLUIR TABELA FATURACONTAS
  if InsereTabelaNova('FATURACONTA', 'COD_FATURACONTA INTEGER NOT NULL') = False
    then
    MPainel.Lines.Add('Erro ao gerar nova tabela: FATURACONTA');
  //INCLUIR GENERATOR NA TABELA FATURACONTAS
  if InsereGeneration('FATURACONTA', 'COD_FATURACONTA') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo COD_FATURACONTA da tabela FATURACONTA');
  if InsereTrigger('FATURACONTA', 'GEN_FATURACONTA_ID', 'COD_FATURACONTA') =
    False then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_FATURACONTA da tabela FATURACONTA');

  //CAMPOS TABELA FATURACONTAS
  if AtualizaTabela('FATURACONTA', 'DTFATURA', 'DATE') = False then
    MPainel.Lines.Add('Erro ao criar campo DTFATURA da tabela: FATURACONTA');

  if AtualizaTabela('FATURACONTA', 'COD_USUARIO', 'INTEGER') = False then
    MPainel.Lines.Add('Erro ao criar campo COD_USUARIO da tabela: FATURACONTA');

  if AtualizaTabela('FATURACONTA', 'VLRTOTFATURA', ' NUMERIC(14,2) ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo VLRTOTFATURA da tabela: FATURACONTA');

  if AtualizaTabela('FATURACONTA', 'DESCONTO', ' FLOAT ') = False then
    MPainel.Lines.Add('Erro ao criar campo DESCONTO da tabela: FATURACONTA');

  if AtualizaTabela('FATURACONTA', 'MULTA', ' FLOAT ') = False then
    MPainel.Lines.Add('Erro ao criar campo MULTA da tabela: FATURACONTA');

  if AtualizaTabela('FATURACONTA', 'COD_FORMPAG', ' INTEGER ') = False then
    MPainel.Lines.Add('Erro ao criar campo COD_FORMPAG da tabela: FATURACONTA');

  if AtualizaTabela('FATURACONTA', 'COBRANCA', ' VARCHAR(20) ') = False then
    MPainel.Lines.Add('Erro ao criar campo COBRANCA da tabela: FATURACONTA');

  if AtualizaTabela('FATURACONTA', 'OPERACAO', ' VARCHAR(10) ') = False then
    MPainel.Lines.Add('Erro ao criar campo OPERACAO da tabela: FATURACONTA');

  //INCLUIR TABELA ITENSFATURACONTAS
  if InsereTabelaNova('ITENSFATURACONTA',
    'COD_ITENSFATURACONTA INTEGER NOT NULL') = False then
    MPainel.Lines.Add('Erro ao gerar nova tabela: ITENSFATURACONTA');
  //INCLUIR GENERATOR NA TABELA ITENSFATURACONTAS
  if InsereGeneration('ITENSFATURACONTA', 'COD_ITENSFATURACONTA') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo COD_ITENSFATURACONTA da tabela ITENSFATURACONTA');
  if InsereTrigger('ITENSFATURACONTA', 'GEN_ITENSFATURACONTA_ID',
    'COD_ITENSFATURACONTA') = False then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_ITENSFATURACONTA da tabela ITENSFATURACONTA');

  //CAMPOS TABELA ITENSFATURACONTAS
  if AtualizaTabela('ITENSFATURACONTA', 'COD_FATURACONTA', 'INTEGER') = False
    then
    MPainel.Lines.Add('Erro ao criar campo COD_FATURACONTA da tabela: ITENSFATURACONTA');
  if AtualizaTabela('ITENSFATURACONTA', 'COD_PARCELA', ' INTEGER ') = False then
    MPainel.Lines.Add('Erro ao criar campo COD_PARCELA da tabela: ITENSFATURACONTA');

  ////////////////////////////////////
////////////////FIM FATURAS ////////
  /////////////////////////////////////

 //INCLUIR GENERATOR NA TABELA MOVBANCO
  if InsereGeneration('MOVBANCO', 'COD_MOVBANCO') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo COD_MOVBANCO da tabela MOVBANCO');
  if InsereTrigger('MOVBANCO', 'GEN_MOVBANCO_ID', 'COD_MOVBANCO') = False then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_MOVBANCO da tabela MOVBANCO');

  //INICIO TABELA DE CARTAO
  if InsereTabelaNova('CARTAO', 'COD_CARTAO INTEGER NOT NULL') = False then
    MPainel.Lines.Add('Erro ao gerar nova tabela: CARTAO');

  if InsereGeneration('CARTAO', 'COD_CARTAO') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo COD_CARTAO da tabela CARTAO');
  if InsereTrigger('CARTAO', 'GEN_CARTAO_ID', 'COD_CARTAO') = False then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo COD_CARTAO da tabela CARTAO');

  if AtualizaTabela('CARTAO', 'DESCRICAO', 'VARCHAR(50)') = False then
    MPainel.Lines.Add('Erro ao criar campo DESCRIÇÃO da tabela: CARTAO');
  if AtualizaTabela('CARTAO', 'TAXA', ' NUMERIC(5,2) ') = False then
    MPainel.Lines.Add('Erro ao criar campo TAXA da tabela: CARTAO');
  if AtualizaTabela('CARTAO', 'TAXA', ' NUMERIC(5,2) ') = False then
    MPainel.Lines.Add('Erro ao criar campo TAXA da tabela: CARTAO');
  if AtualizaTabela('CARTAO', 'BANDEIRA', 'VARCHAR(50)') = False then
    MPainel.Lines.Add('Erro ao criar campo TAXA da tabela: CARTAO');
  if AtualizaTabela('CARTAO', 'PARCINI', ' SMALLINT ') = False then
    MPainel.Lines.Add('Erro ao criar campo PARCINI da tabela: CARTAO');
  if AtualizaTabela('CARTAO', 'PARCFIN', ' SMALLINT ') = False then
    MPainel.Lines.Add('Erro ao criar campo PARCFIN da tabela: CARTAO');

  if AtualizaTabela('EMPRESA', 'MOBILE', 'SMALLINT') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: MOBILE da tabela: EMPRESA');

  //INSERE GENERATOR PARA A TABELA ITENS DE PEDIDO DE COMPRA
  if InsereGeneration('itenspedc', 'cod_itenspedc') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo cod_itenspedc da tabela itenspedc');
  if InsereTrigger('itenspedc', 'GEN_itenspedc_ID', 'cod_itenspedc') = False
    then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo cod_itenspedc da tabela itenspedc');

  if AtualizaTabela('FORMPAG', 'MOBILE', 'CHAR(1)') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: MOBILE da tabela: FORMPAG');

  //INICIO TABELA DE ITENS DE GRAFICA
  if InsereTabelaNova('IT_GRAFICA', 'COD_ITGRAFICA INTEGER NOT NULL') = False
    then
    MPainel.Lines.Add('Erro ao gerar nova tabela: IT_GRAFICA');
  if InsereGeneration('IT_GRAFICA', 'COD_ITGRAFICA') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo COD_ITGRAFICA da tabela IT_GRAFICA');
  if InsereTrigger('IT_GRAFICA', 'GEN_IT_GRAFICA_ID', 'COD_ITGRAFICA') = False
    then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo cod_cce da tabela ITGRAFICA');
  if AtualizaTabela('IT_GRAFICA', 'COD_ITPRODORDEM', 'INTEGER') = False then
    MPainel.Lines.Add('Erro ao criar campo COD_ITPRODORDEM da tabela: IT_GRAFICA');
  if AtualizaTabela('IT_GRAFICA', 'DESCRICAO',
    ' BLOB SUB_TYPE 1 SEGMENT SIZE 1 ') = False then
    MPainel.Lines.Add('Erro ao criar campo DESCRICAO da tabela: IT_GRAFICA');

  //FIM DA TABELA itens grafica

//INICIO TABELA DE CCE CARTA DE CORREÇÃO ELETRONICA
  if InsereTabelaNova('CCE', 'COD_CCE INTEGER NOT NULL') = False then
    MPainel.Lines.Add('Erro ao gerar nova tabela: CCE');
  if InsereGeneration('CCE', 'COD_CCE') = False then
    MPainel.Lines.Add('Erro ao criar gerador para o campo cod_cce da tabela cce');
  if InsereTrigger('CCE', 'GEN_CCE_ID', 'COD_CCE') = False then
    MPainel.Lines.Add('Erro ao criar triger para o gerador para o campo cod_cce da tabela cce');

  if AtualizaTabela('CCE', 'COD_GERADOR', 'INTEGER') = False then
    MPainel.Lines.Add('Erro ao criar campo COD_GERADOR da tabela: CCE');
  if AtualizaTabela('CCE', 'TIPOGERADOR', 'VARCHAR(15)') = False then
    MPainel.Lines.Add('Erro ao criar campo TIPOGERADOR da tabela: CCE');
  if AtualizaTabela('CCE', 'DATA', 'DATE') = False then
    MPainel.Lines.Add('Erro ao criar campo DATA da tabela: CCE');
  if AtualizaTabela('CCE', 'TEXTO', ' BLOB SUB_TYPE 1 SEGMENT SIZE 1 ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo TEXTO da tabela: CCE');
  if AtualizaTabela('CCE', 'XML', ' BLOB SUB_TYPE 1 SEGMENT SIZE 1 ') = False
    then
    MPainel.Lines.Add('Erro ao criar campo XML da tabela: CCE');
  if AtualizaTabela('CCE', 'XMLRESPOSTA', ' BLOB SUB_TYPE 1 SEGMENT SIZE 1 ') =
    False then
    MPainel.Lines.Add('Erro ao criar campo XMLRESPOSTA da tabela: CCE');
  if AtualizaTabela('CCE', 'PROTOCOLONUMERO', ' VARCHAR(30) ') = False then
    MPainel.Lines.Add('Erro ao criar campo PROTOCOLONUMERO da tabela: CCE');
  if AtualizaTabela('CCE', 'PROTOCOLODATA', ' VARCHAR(30) ') = False then
    MPainel.Lines.Add('Erro ao criar campo PROTOCOLODATA da tabela: CCE');
  if AtualizaTabela('CCE', 'NSEQUENCIA', 'INTEGER') = False then
    MPainel.Lines.Add('Erro ao criar campo NSEQUENCIA da tabela: CCE');
  //FIM TABELA CCE

  if AtualizaTabela('LOJA', 'MODODEEMISSAONFE', 'VARCHAR(15)') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: MODODEEMISSAONFE da tabela: LOJA');

  if AtualizaTabela('DOCFIS', 'NFEXMLCANCEL', ' BLOB SUB_TYPE 1 SEGMENT SIZE 1 ')
    = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: NFEXMLCANCEL da tabela: DOCFIS');

  if AtualizaTabela('EMPRESA', 'CRT', 'SMALLINT') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: CRT da tabela: EMPRESA');

  if AtualizaTabela('ORCAMENTO', 'COD_EQUIPAMENTO', 'INTEGER') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: COD_EQUIPAMENTO da tabela: ORÇAMENTO');

  if AtualizaTabela('ORCAMENTO', 'CONTATO', 'VARCHAR(60)') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: CONTATO da tabela: ORÇAMENTO');

  if AtualizaTabela('LOJA', 'TITULODUPLICATA', 'VARCHAR(30)') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: TITULODUPLICATA da tabela: LOJA');

  if AtualizaTabela('CAIXA', 'IMPRESSORA', 'VARCHAR(100)') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: IMPRESSORA da tabela: CAIXA');

  if AtualizaTabela('EMPRESA', 'TRIB_NFSE', 'VARCHAR(40)') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: TRIB_NFSE da tabela: EMPRESA');

  if AtualizaTabela('EMPRESA', 'COFINS', 'NUMERIC(3,2)') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: COFINS da tabela: EMPRESA');

  if AtualizaTabela('EMPRESA', 'PIS', 'NUMERIC(3,2)') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: PIS da tabela: EMPRESA');

  if AtualizaTabela('EMPRESA', 'VLR_SERVICO', 'NUMERIC(14,2)') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: VLR_SERVICO da tabela: EMPRESA');

  if AtualizaTabela('DESPADIC', 'COD_SERVICO', 'INTEGER') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: COD_SERVICO da tabela: DESPADIC');

  if AtualizaTabela('LOJA', 'GERANFSE', 'CHAR(1)') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: GERANFSE da tabela: LOJA');

  if AtualizaTabela('DOCFISORD', 'RETER_ISS', 'CHAR(1)') = False then
    MPainel.Lines.Add('Erro ao atualizar o campo: RETER_ISS da tabela: DOCFISORD');

  if InsereTabelaNova('SERVICO_NFSE', 'COD_SERVICO INTEGER NOT NULL') = False
    then
    MPainel.Lines.Add('Erro ao gerar nova tabela: SERVICO_NFSE')
  else
  begin
    if AtualizaTabela('SERVICO_NFSE', 'NUM_SERVICO', 'VARCHAR(10)') = False then
      MPainel.Lines.Add('Erro ao atualizar o campo: NUM_SERVICO da tabela: SERVICO_NFSE');
    if AtualizaTabela('SERVICO_NFSE', 'DESCRICAO', 'VARCHAR(100)') = False then
      MPainel.Lines.Add('Erro ao atualizar o campo: DESCRICAO da tabela: SERVICO_NFSE');
    if AtualizaTabela('SERVICO_NFSE', 'ATIVO', 'CHAR(1)') = False then
      MPainel.Lines.Add('Erro ao atualizar o campo: ATIVO da tabela: SERVICO_NFSE');
  end;

  ProgressBar1.Position := ProgressBar1.Position + 10;
end;

//Alex: 14/01/2014 Procedure para tratar em especifico o caso de aumentar o tamanho do campo de codigo de barras
function TFAtualizaBanco.ApagaCampo(XTabelaApagar: string; XCampoApagar:
  string): Boolean;
begin
  try
    try
      Result := True;

      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add('SELECT RDB$FIELD_NAME FROM RDB$RELATION_FIELDS');
      MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA and RDB$FIELD_NAME = :NOMECAMPO');
      MDO.QConsulta.ParamByName('NOMETABELA').AsString := XTabelaApagar;
      MDO.QConsulta.ParamByName('NOMECAMPO').AsString := XCampoApagar;
      MDO.QConsulta.Open;

      if not MDO.QConsulta.IsEmpty then
      begin
        MDO.QConsulta.Close;
        MDO.QConsulta.SQL.Clear;
        MDO.QConsulta.SQL.Add('ALTER TABLE ' + XTabelaApagar + ' DROP ' +
          XCampoApagar);
        MDO.QConsulta.ExecSQL;
        MDO.Transac.CommitRetaining;
      end;
    except
      result := False;
      //      		MPainel.Lines.Add('Erro ao apagar view vwsimilar para alterar o campo CODBARRA da tabela: SUBPRODUTO');
    end;
  except

  end;
end;

//Alex: 14/01/2014 Procedure para tratar em especifico o caso de aumentar o tamanho do campo de codigo de barras
procedure TFAtualizaBanco.TrataCampoCodBarra;
begin
  try
    try
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add('drop view vwsimilar');
      MDO.QConsulta.ExecSQL;
      MDO.Transac.CommitRetaining
    except
      MPainel.Lines.Add('Erro ao apagar view vwsimilar para alterar o campo CODBARRA da tabela: SUBPRODUTO');
    end;
    try
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add(' update subproduto set subproduto.codean1 = subproduto.codbarra ');
      MDO.QConsulta.ExecSQL;
      MDO.Transac.CommitRetaining
    except
      MPainel.Lines.Add('Erro ao alterar CodEan1 = codbarra tabela: SUBPRODUTO');
    end;

    try
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add('ALTER TABLE subproduto ALTER codbarra TYPE VARCHAR(30)');
      MDO.QConsulta.ExecSQL;
      MDO.Transac.CommitRetaining
    except
      MPainel.Lines.Add('Erro ao alterar campo CODBARRA para TYPE VARCHAR(30) da tabela: SUBPRODUTO');
    end;
    try
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add(' ALTER TABLE codigobarra ALTER codbarra TYPE VARCHAR(30) ');
      MDO.QConsulta.ExecSQL;
      MDO.Transac.CommitRetaining
    except
      MPainel.Lines.Add('Erro ao alterar campo CODBARRA para TYPE VARCHAR(30) da tabela: codigobarra');
    end;

    try
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add(' CREATE OR ALTER VIEW VWSIMILAR(     COD_SUBPRODUTO,    CODCOMPOSTO,    DESCRICAO,    CODBARRA,    MARCA,    COD_INTERNO,    COD_PRODUTO, ');
      MDO.QConsulta.SQL.Add('     COD_ESTOQUE,    COD_LOJA,    ULTCOMPRA,    ULTVENDA,    ESTFISICO,    VENDVARP,    VANDATAP,    VENDATAV,    VENDVARV, ');
      MDO.QConsulta.SQL.Add('     CODFABRICANTE,    CONTRINT,    VLRBONIFIC,    ESPECIFICACAO,    MARK,    VLRUNITCOMPRA,    LOCALESTANTE,    ESTLOJA,    ATIVO, IPI, ST) ');
      MDO.QConsulta.SQL.Add(' ASSELECT  subproduto.cod_subproduto, subproduto.codcomposto, subproduto.descricao,        subproduto.codbarra, subproduto.marca, subproduto.cod_interno,        subproduto.cod_produto, ');
      MDO.QConsulta.SQL.Add('         estoque.cod_estoque,estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,        estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav, ');
      MDO.QConsulta.SQL.Add('         estoque.vendvarv, subproduto.codprodfabr, SUBPRODUTO.contrint, estoque.vlrbonific, subproduto.especificacao, subproduto.mark, estoque.VLRUNITCOMP, subproduto.localestante,ESTOQUE.estloja, subproduto.ativo, subproduto.ipiprod, estoque.pis ');
      MDO.QConsulta.SQL.Add('     from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod; ');
      MDO.QConsulta.ExecSQL;
      MDO.Transac.CommitRetaining
    except
      MPainel.Lines.Add('Erro ao criar view vwsimilar para alterar o campo CODBARRA da tabela: SUBPRODUTO');
    end;
  except

  end;
end;

//Alex: 14/08/2014 Procedure para tratar em especifico o caso de aumentar o tamanho do campo NOMECLI em Orcamento
procedure TFAtualizaBanco.TrataCampoNOMECLI;
begin
  try
    try
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add('drop view vworcamento');
      MDO.QConsulta.ExecSQL;
      MDO.Transac.CommitRetaining
    except
      MPainel.Lines.Add('Erro ao apagar view vworcamento para alterar o campo NOMECLI da tabela: ORCAMENTO');
    end;
    try
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add('ALTER TABLE ORCAMENTO ALTER NOMECLI TYPE VARCHAR(100)');
      MDO.QConsulta.ExecSQL;
      MDO.Transac.CommitRetaining
    except
      MPainel.Lines.Add('Erro ao alterar campo NOMECLI para TYPE VARCHAR(100) da tabela: ORCAMENTO');
    end;
    try
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add(' CREATE VIEW VWORCAMENTO(    COD_ORCAMENTO,    COD_CLIENTE,    NOMECLI,    COD_FORMPAG,    COD_USUARIO,    DTABERT, ');
      MDO.QConsulta.SQL.Add('     NUMORC,    DTVALID,    VLRTOTAL,    FORMPAG,    COD_LOJA,    FUNCIONARIO,    DESCRICAO, EXPORTA) AS ');
      MDO.QConsulta.SQL.Add('     SELECT  orcamento.cod_orcamento, orcamento.cod_cliente, orcamento.nomecli, orcamento.cod_formpag, Orcamento.cod_usuario, ');
      MDO.QConsulta.SQL.Add('             orcamento.dtabert, orcamento.numorc, orcamento.dtvalidade, orcamento.vlrtotal, formpag.descricao, orcamento.cod_loja, pessoa.nome, ORCAMENTO.descricao, ORCAMENTO.EXPORTA ');
      MDO.QConsulta.SQL.Add('         FROM orcamento JOIN formpag ON orcamento.cod_formpag = formpag.cod_formpag ');
      MDO.QConsulta.SQL.Add('                       Left Join funcionario on funcionario.cod_func =  orcamento.cod_vendedor ');
      MDO.QConsulta.SQL.Add('                       left join pessoa on funcionario.cod_pessoa = pessoa.cod_pessoa ');
      MDO.QConsulta.ExecSQL;
      MDO.Transac.CommitRetaining
    except
      MPainel.Lines.Add('Erro ao criar view vworcamento para alterar o campo nomecli da tabela: orcamento');
    end;
  except

  end;
end;

//Paulo 02/04/2012: starta a atualização de views
procedure TFAtualizaBanco.StartViews;
var
  XCAMPOS, XSQL_VIEW: string;
begin
  //////////////////////////////////////////////////////////////////////////
  // Paulo 31/03/2012: FUNÇÃO PARA CRIAR NOVA VIEW                        //
    // Para criar nova view deverá ser chamado a funfção ApagaView(NOME_VIEW)//
    // para apagar a view e depois chamar a função InsereNovaView(NOME_VIEW,//
    // CAMPOS, SQL) os campos deverá ser da seguinte forma: CAMPO1,CAMPO2   //
    // o campo SQL deverá ser: 'select lancaixa.cod_lanc from lancaixa      //
    // left join plncta'. Caso queira criar uma view nova chamar apemas a   //
    // a função InsereNovaView.                                             //
    //////////////////////////////////////////////////////////////////////////

  {XCAMPOS:='COD_SERVICO,COD_GRUPOSERV,COD_SUBGRUPOSERV,COD_INTERNO,SERVICO,APLICACAO,CI_GRUPO,GRUPO,CI_SUBGRUPO,SUBGRUPO ';

    XSQL_VIEW:='SELECT DISTINCT(servico.cod_servico), servico.cod_gruposerv, servico.cod_subgruposerv,'+
               'servico.cod_interno, servico.descricao, servico.aplicacao,grupoprod.cod_interno, grupoprod.descricao, subgrupoprod.cod_interno,'+
               'subgrupoprod.descricao FROM servico LEFT join subservico ON servico.cod_servico = subservico.cod_servico '+
               'Left Join grupoprod on servico.cod_gruposerv = grupoprod.cod_grupoprod '+
               'Left Join subgrupoprod on servico.cod_subgruposerv = Subgrupoprod.cod_Subgrupoprod';

    //Paulo 02/04/2012: CAso já exista a view apaga primeiro
    if ApagaView('VWSERVICO') = False then
    begin
       MPainel.Lines.Add('Erro ao apagar a view: VWSERVICO');

    end
    else begin
       if InsereNovaView('VWSERVICO',XCAMPOS, XSQL_VIEW)=False then
       begin
          MPainel.Lines.Add('Erro ao atualizar view: VWSERVICO');

       end;
    end; }

    //Alex - 22/11/2016 - VWORÇAMENTO - Verifica para atualizar VWORCAMENTO
  if CBOrcamento.Checked = True then
  begin
    XCAMPOS := ' COD_ORCAMENTO, COD_CLIENTE, NOMECLI, COD_FORMPAG, ';
    XCAMPOS := XCAMPOS + ' COD_USUARIO, DTABERT, NUMORC, DTVALID, VLRTOTAL, ';
    XCAMPOS := XCAMPOS + ' FORMPAG, COD_LOJA, FUNCIONARIO, DESCRICAO, EXPORTA ';

    XSQL_VIEW :=
      ' SELECT  ORCAMENTO.COD_ORCAMENTO, ORCAMENTO.COD_CLIENTE, ORCAMENTO.NOMECLI, ORCAMENTO.COD_FORMPAG, ';
    XSQL_VIEW := XSQL_VIEW +
      ' ORCAMENTO.COD_USUARIO, ORCAMENTO.DTABERT, ORCAMENTO.NUMORC, ORCAMENTO.DTVALIDADE, ORCAMENTO.VLRTOTAL, ';
    XSQL_VIEW := XSQL_VIEW +
      ' FORMPAG.DESCRICAO, ORCAMENTO.COD_LOJA, PESSOA.NOME, ORCAMENTO.DESCRICAO, ORCAMENTO.EXPORTA ';
    XSQL_VIEW := XSQL_VIEW + ' FROM ORCAMENTO ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN FORMPAG ON ORCAMENTO.COD_FORMPAG = FORMPAG.COD_FORMPAG ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN FUNCIONARIO ON FUNCIONARIO.COD_FUNC =  ORCAMENTO.COD_VENDEDOR ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN PESSOA ON FUNCIONARIO.COD_PESSOA = PESSOA.COD_PESSOA ';

    if ApagaView('VWORCAMENTO') = False then
      MPainel.Lines.Add('Erro ao apagar a view: VWORCAMENTO');

    if InsereNovaView('VWORCAMENTO', XCAMPOS, XSQL_VIEW) = False then
    begin
      MPainel.Lines.Add('Erro ao atualizar view: VWORCAMENTO');
    end;
  end;

  //Alex - 13/04/2018 - Atualiza view de parcela cr
  if cbParcR.Checked = True then
  begin
    XCAMPOS :=
      '   COD_INTERNO, COD_PARCELACR, COD_CTARECEBER, COD_COTA, COD_PARANT, COBRANCA, DTVENC, NUMPARC, VALOR, VALORPG, TIPOBOLETO, NUMCTA, DTDEBITO, FECH, CLASSIFICACAO, ';
    XCAMPOS := XCAMPOS +
      ' DESCRICAO, COD_PLNCTA, COD_FORMPAG, COD_LOJA, FORMPAG, COD_CLIENTE, COD_PESSOA, NOME, DTLANC, NUMDOC, HISTORICO, MARK, NUMBOLETO, NUMFISC, REMESSA, COD_CTACOR, ';
    XCAMPOS := XCAMPOS + ' SCPC, NUMCARTAO, DIASATRASO, VENDEDOR, ANTECIPADO ';
    XSQL_VIEW :=
      ' select cliente.cod_interno, parcelacr.cod_parcelacr, parcelacr.cod_ctareceber, parcelacr.cod_cota, parcelacr.cod_parant, ';
    XSQL_VIEW := XSQL_VIEW +
      '        parcelacr.cobranca,parcelacr.dtvenc, parcelacr.numparc, parcelacr.valor, parcelacr.valorpg, parcelacr.tipoblt, ctacor.numctacor, ';
    XSQL_VIEW := XSQL_VIEW +
      '        parcelacr.dtdebito, parcelacr.fech, plncta.classificacao, plncta.descricao, plncta.cod_plncta, formpag.cod_formpag, ';
    XSQL_VIEW := XSQL_VIEW +
      '        formpag.cod_loja, formpag.descricao, cliente.cod_cliente, pessoa.cod_pessoa, pessoa.nome, ctareceber.dtlanc, ctareceber.numdoc, ';
    XSQL_VIEW := XSQL_VIEW +
      '        parcelacr.historico, parcelacr.mark, parcelacr.numboleto, parcelacr.numfisc, parcelacr.remessa, parcelacr.cod_ctacor, parcelacr.scpc, ';
    XSQL_VIEW := XSQL_VIEW +
      '        ctareceber.numcartao, parcelacr.diasatraso, vwfuncionario.nome, parcelacr.antecipado from parcelacr ';
    XSQL_VIEW := XSQL_VIEW +
      '        left join ctareceber ON parcelacr.cod_ctareceber = ctareceber.cod_ctareceber ';
    XSQL_VIEW := XSQL_VIEW +
      '        left join ctacor on parcelacr.cod_ctacor = ctacor.cod_ctacor ';
    XSQL_VIEW := XSQL_VIEW +
      '        left join plncta on ctareceber.cod_plncta = plncta.cod_plncta ';
    XSQL_VIEW := XSQL_VIEW +
      '                         left join formpag ON ctareceber.cod_formpag = formpag.cod_formpag ';
    XSQL_VIEW := XSQL_VIEW +
      '                         left join cliente ON ctareceber.cod_cliente = cliente.cod_cliente ';
    XSQL_VIEW := XSQL_VIEW +
      '                         left join pessoa ON pessoa.cod_pessoa = cliente.cod_pessoa ';
    XSQL_VIEW := XSQL_VIEW +
      '                         left join vwfuncionario on ctareceber.cod_vendedor = vwfuncionario.cod_func ';

    if ApagaView('VWPARCR') = False then
      MPainel.Lines.Add('Erro ao apagar a view: VWPARCR');

    if InsereNovaView('VWPARCR', XCAMPOS, XSQL_VIEW) = False then
    begin
      MPainel.Lines.Add('Erro ao atualizar view: VWPARCR');
    end;
  end;
  //Alex - 14/08/2015 - VWCLIENTE - Verifica para atualizar VWCLIENTE
  if CbVWCliente.Checked = True then
  begin
    XCAMPOS :=
      '  COD_CLIENTE, COD_INTERNO, COD_PESSOA, NOME, ENDERECO, BAIRRO, CPFCNPJ, COD_CIDADE, CIDADE, ATIVO, EXPORT, TELREL, SEPARAR, SCPC, COD_TABPRECO, ATUALIZAR, MARK, UF_ESTADO, ENDNUMERO, RAZAOSOCIAL ';
    XSQL_VIEW :=
      ' SELECT cliente.cod_cliente, cliente.cod_interno, pessoa.cod_pessoa, pessoa.nome, pessoa.endereco, pessoa.bairro, pessoa.cpfcnpj, ';
    XSQL_VIEW := XSQL_VIEW +
      ' cidade.cod_cidade, cidade.nome, cliente.ativo, cliente.export, PESSOA.telrel, cliente.separar, cliente.scpc, ';
    XSQL_VIEW := XSQL_VIEW +
      ' cliente.cod_tabpreco, cliente.atualizar, cliente.mark,estado.uf_estado , pessoa.endnumero, pessoaj.razao_social ';
    XSQL_VIEW := XSQL_VIEW +
      ' FROM CLIENTE JOIN PESSOA ON cliente.cod_pessoa = pessoa.cod_pessoa ';
    XSQL_VIEW := XSQL_VIEW +
      ' left join pessoaJ on Pessoa.cod_pessoa = pessoaj.cod_pessoa ';
    XSQL_VIEW := XSQL_VIEW +
      ' left join  cidade ON pessoa.cod_cidade = cidade.cod_cidade ';
    XSQL_VIEW := XSQL_VIEW +
      ' left join estado on cidade.cod_estado = estado.cod_estado ';

    if ApagaView('VWCLIENTE') = False then
      MPainel.Lines.Add('Erro ao apagar a view: VWCLIENTE');

    if InsereNovaView('VWCLIENTE', XCAMPOS, XSQL_VIEW) = False then
    begin
      MPainel.Lines.Add('Erro ao atualizar view: VWCLIENTE');
    end;
  end;

  //Alex - 14/08/2015 - VWLANCENT - Verifica para atualizar VWCLIENTE
  if CBVWLANCENT.Checked = True then
  begin
    XCAMPOS :=
      '      COD_LANCENT,    COD_ESTOQUE,    COD_LOJA,    COD_USUARIO,    DT_LANCAMENTO,    MOTIVO,    NUMNOTA,    QUANTIDADE,    CTRLINT,    PRODUTO,    ANTERIOR,    CODFABRICANTE,    QTD4CASAS ';
    XSQL_VIEW :=
      ' SELECT lancent.cod_lanent, lancent.cod_estoque, lancent.cod_loja, ';
    XSQL_VIEW := XSQL_VIEW +
      '       lancent.cod_usuario, lancent.dt_lancamento, lancent.motivo, ';
    XSQL_VIEW := XSQL_VIEW +
      '       lancent.numnota, lancent.quantidade, subproduto.contrint, subproduto.descricao, lancent.qtdant, subproduto.codprodfabr, lancent.qtd4casas ';
    XSQL_VIEW := XSQL_VIEW + '       FROM lancent ';
    XSQL_VIEW := XSQL_VIEW +
      '       Left join estoque ON lancent.cod_estoque = estoque.cod_estoque ';
    XSQL_VIEW := XSQL_VIEW +
      '       left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ';
    if ApagaView('VWLANCENT') = False then
      MPainel.Lines.Add('Erro ao apagar a view: VWCLIENTE');

    if InsereNovaView('VWLANCENT', XCAMPOS, XSQL_VIEW) = False then
    begin
      MPainel.Lines.Add('Erro ao atualizar view: VWLANCENT');
    end;
  end;

  //Alex - 14/08/2015 - VWLANCENT - Verifica para atualizar VWCLIENTE
  if CBVWLANCSAI.Checked = True then
  begin
    XCAMPOS :=
      '     COD_LANCSAI,    COD_ESTOQUE,    COD_LOJA,    COD_USUARIO,    DT_LANCAMENTO,    MOTIVO,    NUMNOTA,    QUANTIDADE,    CTRLINT,    PRODUTO,    ANTERIOR,    CODFABRICANTE,    QTD4CASAS ';
    XSQL_VIEW :=
      ' SELECT lancsai.cod_lancsai, lancsai.cod_estoque, lancsai.cod_loja, ';
    XSQL_VIEW := XSQL_VIEW +
      '         lancsai.cod_usuario, lancsai.dt_lancamento, lancsai.motivo, ';
    XSQL_VIEW := XSQL_VIEW +
      '         lancsai.numnota, lancsai.quantidade, SUBPRODUTO.contrint, SUBPRODUTO.DESCRICAO,lancsai.qtdant, subproduto.codprodfabr, lancsai.qtd4casas ';
    XSQL_VIEW := XSQL_VIEW +
      '         FROM lancsai join estoque ON lancsai.cod_estoque = estoque.cod_estoque ';
    XSQL_VIEW := XSQL_VIEW +
      '              left join subproduto on subproduto.cod_subproduto = estoque.cod_subprod ';

    if ApagaView('VWLANCSAI') = False then
      MPainel.Lines.Add('Erro ao apagar a view: VWLANCSAI');

    if InsereNovaView('VWLANCSAI', XCAMPOS, XSQL_VIEW) = False then
    begin
      MPainel.Lines.Add('Erro ao atualizar view: VWLANCSAI');
    end;
  end;
  //Edmar - 22/08/2014 - VWSERVICO - Verifica para atualizar VWSERVICO
  if cbServico.Checked = True then
  begin
    XCAMPOS :=
      ' COD_SERVICO, COD_GRUPOSERV, COD_SUBGRUPOSERV, COD_INTERNO, SERVICO, APLICACAO, ';
    XCAMPOS := XCAMPOS + 'CI_GRUPO, GRUPO, CI_SUBGRUPO, SUBGRUPO, MARK';
    XSQL_VIEW :=
      ' SELECT DISTINCT(servico.cod_servico), servico.cod_gruposerv, servico.cod_subgruposerv, ';
    XSQL_VIEW := XSQL_VIEW +
      ' servico.cod_interno, servico.descricao, servico.aplicacao, ';
    XSQL_VIEW := XSQL_VIEW +
      ' grupoprod.cod_interno, grupoprod.descricao, subgrupoprod.cod_interno, ';
    XSQL_VIEW := XSQL_VIEW + ' subgrupoprod.descricao, servico.mark ';
    XSQL_VIEW := XSQL_VIEW +
      ' FROM servico LEFT join subservico ON servico.cod_servico = subservico.cod_servico ';
    XSQL_VIEW := XSQL_VIEW +
      ' Left Join grupoprod on servico.cod_gruposerv = grupoprod.cod_grupoprod ';
    XSQL_VIEW := XSQL_VIEW +
      ' Left Join subgrupoprod on servico.cod_subgruposerv = Subgrupoprod.cod_Subgrupoprod ';

    if ApagaView('VWSERVICO') = False then
      MPainel.Lines.Add('Erro ao apagar a view: VWSERVICO');

    if InsereNovaView('VWSERVICO', XCAMPOS, XSQL_VIEW) = False then
    begin
      MPainel.Lines.Add('Erro ao atualizar view: VWSERVICO');
    end;
  end;

  //VWFORNEC
  if CbFornecedor.Checked = True then
  begin
    XCAMPOS :=
      ' COD_FORNEC, COD_INTERNO, COD_PESSOA, NOME, ENDERECO, BAIRRO, CPFCNPJ, COD_CIDADE, CIDADE, EXPORT, ';
    XCAMPOS := XCAMPOS + '     TELREL, INSC_EST, UF, RAZAOSOCIAL ';
    XSQL_VIEW :=
      ' SELECT fornecedor.cod_fornec, fornecedor.cod_interno, pessoa.cod_pessoa, ';
    XSQL_VIEW := XSQL_VIEW +
      ' pessoa.nome, pessoa.endereco, pessoa.bairro, pessoa.cpfcnpj, ';
    XSQL_VIEW := XSQL_VIEW +
      ' cidade.cod_cidade, cidade.nome, fornecedor.export, pessoa.telrel,pessoaJ.insc_est,estado.uf_estado, pessoaj.razao_social ';
    XSQL_VIEW := XSQL_VIEW +
      ' FROM fornecedor JOIN PESSOA ON fornecedor.cod_pessoa = pessoa.cod_pessoa ';
    XSQL_VIEW := XSQL_VIEW +
      ' left join  cidade ON pessoa.cod_cidade = cidade.cod_cidade ';
    XSQL_VIEW := XSQL_VIEW +
      ' left join pessoaJ on Pessoa.cod_pessoa = pessoaj.cod_pessoa ';
    XSQL_VIEW := XSQL_VIEW +
      ' left join estado on cidade.cod_estado = estado.cod_estado ';

    if ApagaView('VWFORNEC') = False then
      MPainel.Lines.Add('Erro ao apagar a view: VWFORNEC');

    if InsereNovaView('VWFORNEC', XCAMPOS, XSQL_VIEW) = False then
    begin
      MPainel.Lines.Add('Erro ao atualizar view: VWFORNEC');
    end;
  end;

  //VWSubServicos - Verifica para atualizar VWSubServicos
  if CBVWSimilar.Checked = True then
  begin
    try
      XCAMPOS :=
        '  COD_SUBPRODUTO,    CODCOMPOSTO,    DESCRICAO,    CODBARRA,    MARCA,    COD_INTERNO,    COD_PRODUTO, ';
      XCAMPOS := XCAMPOS +
        ' COD_ESTOQUE,    COD_LOJA,    ULTCOMPRA,    ULTVENDA,    ESTFISICO,    VENDVARP,    VANDATAP,    VENDATAV,    VENDVARV, ';
      XCAMPOS := XCAMPOS +
        '  CODFABRICANTE,    CONTRINT,    VLRBONIFIC,    ESPECIFICACAO,    MARK,    VLRUNITCOMPRA,    LOCALESTANTE,    ESTLOJA,    ATIVO, IPI, ST, ESTOQUE4CASAS, VLRCUSTONFE ';

      XSQL_VIEW := '';
      XSQL_VIEW := XSQL_VIEW +
        ' SELECT  subproduto.cod_subproduto, subproduto.codcomposto, subproduto.descricao,        subproduto.codbarra, subproduto.marca, subproduto.cod_interno,        subproduto.cod_produto, ';
      XSQL_VIEW := XSQL_VIEW +
        '  estoque.cod_estoque,estoque.cod_loja, estoque.ultcompra, estoque.ultvenda,        estoque.estfisico, estoque.vendvarp, estoque.vendatap, estoque.vendatav, ';
      XSQL_VIEW := XSQL_VIEW +
        '  estoque.vendvarv, subproduto.codprodfabr, SUBPRODUTO.contrint, estoque.vlrbonific, subproduto.especificacao, subproduto.mark, estoque.VLRUNITCOMP, subproduto.localestante,ESTOQUE.estloja, subproduto.ativo, subproduto.ipiprod, estoque.pis, ';
      XSQL_VIEW := XSQL_VIEW +
        '  estoque.estoque4casas, estoque.valcustonfe   ';

      XSQL_VIEW := XSQL_VIEW +
        '  from subproduto join estoque ON subproduto.cod_subproduto = estoque.cod_subprod ';
      if ApagaView('VWSIMILAR') = False then
        MPainel.Lines.Add('Erro ao apagar a view: VWSIMILAR');
      if InsereNovaView('VWSIMILAR', XCAMPOS, XSQL_VIEW) = False then
        MPainel.Lines.Add('Erro ao atualizar view: VWSIMILAR');
    except
    end;
  end;
  //VWSubServicos - Verifica para atualizar VWSubServicos
  if CBVWSubServicos.Checked = True then
  begin
    XCAMPOS :=
      '    COD_SUBSERVICO,     CODCOMPOSTO,    DESCRICAO,    COD_INTERNO,    COD_SERVICO,    EMPSERV,    QTDGARANTIA,  ';
    XCAMPOS := XCAMPOS +
      '    TEMPSERV,     VLRFINAL,    TIPOGARANT,    VLRTOTSUBSERV,    HORA_INI,    HORA_FINAL,    INTERVALO_INI, ';
    XCAMPOS := XCAMPOS +
      '    INTERVALO_FINAL,      VLR_NORMAL,    VLR_EXTRA, ATIVO ';

    XSQL_VIEW :=
      ' SELECT  subservico.cod_subservico, subservico.codcomposto,  SUBSERVICO.descricao, ';
    XSQL_VIEW := XSQL_VIEW +
      ' subservico.cod_interno, subservico.cod_servico, subservico.empserv, subservico.quantgarantia, ';
    XSQL_VIEW := XSQL_VIEW +
      'subservico.tempserv, subservico.vlrfinal, subservico.tipogarantia,subservico.vlrsubserv, ';
    XSQL_VIEW := XSQL_VIEW +
      'subservico.hora_ini, subservico.hora_final, subservico.intervalo_ini, subservico.intervalo_final, ';
    XSQL_VIEW := XSQL_VIEW +
      'subservico.vlr_normal, subservico.vlr_extra, subservico.ativo ';
    XSQL_VIEW := XSQL_VIEW +
      'from subservico left join servico ON subservico.cod_servico=servico.cod_servico ';

    if ApagaView('VWSUBSERVICO') = False then
      MPainel.Lines.Add('Erro ao apagar a view: VWSUBSERVICO');
    if InsereNovaView('VWSUBSERVICO', XCAMPOS, XSQL_VIEW) = False then
      MPainel.Lines.Add('Erro ao atualizar view: VWSUBSERVICO');
  end;

  //VWCtaCor - Verifica para atualizar VWSCtaCor
  if cbVWCtaCor.Checked = True then
  begin
    XCAMPOS :=
      '  COD_CTACOR, NUMCTACOR, DTABERT, COD_AGENCIA, NUMAGENCIA,  DESCBANCO, SALDO, INATIVO ';

    XSQL_VIEW := ' SELECT ctacor.cod_ctacor, ctacor.numctacor, ';
    XSQL_VIEW := XSQL_VIEW + ' ctacor.dtabert, agencia.cod_agencia, ';
    XSQL_VIEW := XSQL_VIEW +
      ' agencia.numagencia, banco.descbanco,ctacor.saldo, ctacor.inativo ';
    XSQL_VIEW := XSQL_VIEW +
      ' from ctacor join agencia on ctacor.cod_agencia = agencia.cod_agencia ';
    XSQL_VIEW := XSQL_VIEW +
      ' Join banco on Banco.cod_banc = agencia.cod_banco ';

    if ApagaView('VWCTACOR') = False then
      MPainel.Lines.Add('Erro ao apagar a view: VWCTACOR');
    if InsereNovaView('VWCTACOR', XCAMPOS, XSQL_VIEW) = False then
      MPainel.Lines.Add('Erro ao atualizar view: VWCTACOR');
  end;
  //VWORDEM - Verifica para atualizar VWOrdem
  if CbAtualizaVwOrdem.Checked = True then
  begin
    XCAMPOS :=
      ' COD_ORDEM, COD_CLIENTE, COD_EQUIPAMENTO, COD_FUNCIONARIO, COD_VENDEDOR, ';
    XCAMPOS := XCAMPOS +
      ' DTABERT, DTPREV, DTFECH, NUMERO, NUMORC, STATUS, MONITOR, TOTAL, TPROD, TSERV, CI_CLIENTE, ';
    XCAMPOS := XCAMPOS +
      ' CLIENTE, EQUIPAMENTO, COD_LOJA, GARANT, MARK, FISCO, NUMFISCAL, FORMAPAG, ';
    XCAMPOS := XCAMPOS +
      ' TIPOPAG, PLACA, BOX, EXP, EXPORTADO, STATUSNFSE, NUMFISCALNFSE, NUMFISCAL_DEVOLVIDA, ';
    XCAMPOS := XCAMPOS + ' NUMFISCALINT, DTAGENDADO ';

    XSQL_VIEW := ' SELECT ordem.cod_ordem, ordem.cod_cliente, ordem.cod_equipamento, '
      +
      ' ordem.cod_funcionario, ordem.cod_vendedor, ordem.dtabert,  ordem.dtprev, ' +
      ' ordem.dtfech,  ordem.numero, ORDEM.numorc, ordem.status, ordem.monitor, ' +
      ' ordem.totord,  ordem.totprod, ordem.totserv, cliente.cod_interno, pessoa.nome,  equipamento.descricao, ' +
      ' ORDEM.cod_loja, ordem.garantia, ORDEM.mark, ORDEM.fisco, ordem.numfiscal, ' +
      ' formpag.descricao, ordem.tipopag,  EQUIPAMENTO.placa, ORDEM.box, ' +
      ' ORDEM.exp, ORDEM.exportado, ordem.statusnfse, NUMFISCALNFSE, ' +
      ' ORDEM.NUMFISCAL_DEVOLVIDA, docfisord.numdocfisint, Ordem.DTAGENDADO ' +

    '  FROM ordem  Left Join docfisord   on ordem.cod_ordem       = docfisord.cod_ordem ' +
      '              Left Join cliente     on ordem.cod_cliente     = cliente.cod_cliente ' +
      '              left Join pessoa      on cliente.cod_pessoa    = pessoa.cod_pessoa ' +
      '              left join equipamento on ordem.cod_equipamento = equipamento.cod_equipamento ' +
      '              left join formpag     on ordem.cod_formpag     = formpag.cod_formpag ';

    if ApagaView('VWORDEM') = False then
    begin
      MPainel.Lines.Add('Erro ao apagar a view: VWORDEM');
    end
    else
    begin
      if InsereNovaView('VWORDEM', XCAMPOS, XSQL_VIEW) = False then
      begin
        MPainel.Lines.Add('Erro ao atualizar view: VWORDEM');
      end;
    end;
  end;

  if cbVwPedv.Checked then
  begin
    //Felipe - 12/02/2015 - Apaga e cria view VWPEDV
    XCAMPOS :=
      ' NUMPED, COD_PEDVENDA, COD_CLIENTE, NOMECLI, COD_FORMPAG, COD_USUARIO, DTPEDVEN, ';
    XCAMPOS := XCAMPOS +
      ' NUMORC, NUMFISCAL, SITUACAO, VALOR, FORMPAG, COD_LOJA, COD_VENDEDOR, ';
    XCAMPOS := XCAMPOS +
      ' VENDEDOR, TIPO, GARANT, MARK, COBRANCA, FATURADO, FISCO, CONTROLEFRETE, NUMFISCAL_DEV, NUMFISCAL_PC ';

    XSQL_VIEW :=
      ' SELECT PEDVENDA.NUMPED, PEDVENDA.COD_PEDVENDA, PEDVENDA.COD_CLIENTE, PEDVENDA.NOMECLI,  PEDVENDA.COD_FORMPAG, PEDVENDA.COD_USUARIO, PEDVENDA.DTPEDVEN,PEDVENDA.NUMORC, ';
    XSQL_VIEW := XSQL_VIEW +
      ' PEDVENDA.NUMFISCAL, PEDVENDA.SITUACAO, PEDVENDA.VALOR,  FORMPAG.DESCRICAO, FORMPAG.COD_LOJA, PEDVENDA.COD_VENDEDOR, PESSOA.NOME, PEDVENDA.TIPO,  PEDVENDA.GARANTIA, ';
    XSQL_VIEW := XSQL_VIEW +
      ' PEDVENDA.MARK, PEDVENDA.COBRANCA, PEDVENDA.FATURADO, PEDVENDA.FISCO, PEDVENDA.CONTROLEFRETE, PEDVENDA.NUMFISCAL_DEVOLVIDA, PEDVENDA.NUMFISCAL_PC FROM PEDVENDA JOIN FORMPAG ON PEDVENDA.COD_FORMPAG = FORMPAG.COD_FORMPAG ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN FUNCIONARIO ON FUNCIONARIO.COD_FUNC = PEDVENDA.COD_VENDEDOR ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN PESSOA ON FUNCIONARIO.COD_PESSOA = PESSOA.COD_PESSOA ';

    if ApagaView('VWPEDV') = False then
    begin
      MPainel.Lines.Add('Erro ao apagar a view: VWPEDV');
    end
    else
    begin
      if InsereNovaView('VWPEDV', XCAMPOS, XSQL_VIEW) = False then
      begin
        MPainel.Lines.Add('Erro ao atualizar view: VWPEDV');
      end;
    end;
  end;

  if cbVwPedc.Checked then
  begin
    //Edmar - 12/03/2015 - Apaga e cria view VWPEDC
    XCAMPOS :=
      ' COD_PEDCOMP, COD_FORNEC, COD_FORMPAG, COD_USUARIO, DTPEDCOMP, NUMPED, SITUACAO,            ';
    XCAMPOS := XCAMPOS +
      ' VALOR, NOME, RAZAOSOCIAL, FORMPAG, COD_LOJA, NUMDEV, NUMFISCAL,DESTINATARIO, ';
    XCAMPOS := XCAMPOS +
      ' COBRANCA, MARK, FATURADO, EXPORT, FISCO, NUMFISCAL_DEV ';

    XSQL_VIEW :=
      ' SELECT PEDCOMPRA.COD_PEDCOMP, PEDCOMPRA.COD_FORNEC, PEDCOMPRA.COD_FORMPAG, PEDCOMPRA.COD_USUARIO, ';
    XSQL_VIEW := XSQL_VIEW +
      ' PEDCOMPRA.DTPEDCOMP, PEDCOMPRA.NUMPED, PEDCOMPRA.SITUACAO, PEDCOMPRA.VALOR, PESSOA.NOME, ';
    XSQL_VIEW := XSQL_VIEW +
      ' vwfornec.razaosocial, FORMPAG.DESCRICAO, FORMPAG.COD_LOJA, PEDCOMPRA.NUMDEV, PEDCOMPRA.NUMFISCAL, PEDCOMPRA.DESTINATARIO, ';
    XSQL_VIEW := XSQL_VIEW +
      ' PEDCOMPRA.COBRANCA, PEDCOMPRA.MARK, PEDCOMPRA.FATURADO, PEDCOMPRA.EXPORT, PEDCOMPRA.FISCO, PEDCOMPRA.NUMFISCAL_DEVOLVIDA ';
    XSQL_VIEW := XSQL_VIEW +
      ' FROM PEDCOMPRA LEFT JOIN FORNECEDOR ON PEDCOMPRA.COD_FORNEC = FORNECEDOR.COD_FORNEC ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN PESSOA ON FORNECEDOR.COD_PESSOA = PESSOA.COD_PESSOA ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN vwfornec ON pedcompra.cod_fornec = vwfornec.cod_fornec ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN FORMPAG ON PEDCOMPRA.COD_FORMPAG = FORMPAG.COD_FORMPAG ';

    if ApagaView('VWPEDC') = False then
    begin
      MPainel.Lines.Add('Erro ao apagar a view: VWPEDC');
    end
    else
    begin
      if InsereNovaView('VWPEDC', XCAMPOS, XSQL_VIEW) = False then
      begin
        MPainel.Lines.Add('Erro ao atualizar view: VWPEDC');
      end;
    end;
  end;

  if cbParcP.Checked then
  begin
    //Matheus - 17/03/2016 - Apaga a View VWPARCP e cria novamente
    XCAMPOS :=
      ' COD_INTERNO, COD_PARCELACP, COD_CTAPAGAR, COD_COTA, COD_PARANT, COBRANCA, DTVENC, ';
    XCAMPOS := XCAMPOS +
      ' NUMPARC, VALOR, VALORPG, DTDEBITO, FECH, CLASSIFICACAO,DESCRICAO, ';
    XCAMPOS := XCAMPOS +
      ' COD_PLNCTA, COD_FORMPAG, COD_LOJA, FORMPAG, COD_FORNEC, COD_PESSOA, ';
    XCAMPOS := XCAMPOS +
      ' NOME, DTLANC, NUMDOC, HISTORICO, PREVISAO, DTREFER, MARK, NUMFISC, NUMBOLETO, CHEQUES, RAZAOSOCIAL ';

    XSQL_VIEW :=
      ' SELECT FORNECEDOR.COD_INTERNO, PARCELACP.COD_PARCELACP, PARCELACP.COD_CTAPAGAR, PARCELACP.COD_COTA, PARCELACP.COD_PARANT, ';
    XSQL_VIEW := XSQL_VIEW +
      ' PARCELACP.COBRANCA, PARCELACP.DTVENC, PARCELACP.NUMPARC, PARCELACP.VALOR, PARCELACP.VALORPG, ';
    XSQL_VIEW := XSQL_VIEW +
      ' PARCELACP.DTDEBITO, PARCELACP.FECH, PLNCTA.CLASSIFICACAO, PLNCTA.DESCRICAO, PLNCTA.COD_PLNCTA, FORMPAG.COD_FORMPAG, ';
    XSQL_VIEW := XSQL_VIEW +
      ' FORMPAG.COD_LOJA, FORMPAG.DESCRICAO, FORNECEDOR.COD_FORNEC, PESSOA.COD_PESSOA, PESSOA.NOME, CTAPAGAR.DTLANC, ';
    XSQL_VIEW := XSQL_VIEW +
      ' CTAPAGAR.NUMDOC, PARCELACP.HISTORICO, PARCELACP.PREVISAO, PARCELACP.DTREF, PARCELACP.MARK, PARCELACP.NUMFISC, ';
    XSQL_VIEW := XSQL_VIEW +
      ' PARCELACP.NUMBOLETO, PARCELACP.CHEQUES, PESSOAJ.RAZAO_SOCIAL ';
    XSQL_VIEW := XSQL_VIEW + ' FROM PARCELACP ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN CTAPAGAR ON PARCELACP.COD_CTAPAGAR = CTAPAGAR.COD_CTAPAGAR ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN PLNCTA ON CTAPAGAR.COD_PLNCTA = PLNCTA.COD_PLNCTA ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN FORMPAG ON CTAPAGAR.COD_FORMPAG = FORMPAG.COD_FORMPAG ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN FORNECEDOR ON CTAPAGAR.COD_FORNEC = FORNECEDOR.COD_FORNEC ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN PESSOA ON  FORNECEDOR.COD_PESSOA = PESSOA.COD_PESSOA ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN PESSOAJ ON PESSOA.COD_PESSOA = PESSOAJ.COD_PESSOA ';

    if ApagaView('VWPARCP') = False then
    begin
      MPainel.Lines.Add('Erro ao apagar a view: VWPARCP');
    end
    else
    begin
      if InsereNovaView('VWPARCP', XCAMPOS, XSQL_VIEW) = False then
      begin
        MPainel.Lines.Add('Erro ao atualizar view: VWPARCP');
      end;
    end;
  end;

  ProgressBar1.Position := ProgressBar1.Position + 10;
end;

//Paulo 02/04/2012: starta a atualização de generations
procedure TFAtualizaBanco.StartGeneration;
begin
  //////////////////////////////////////////////////////////////////////////
// Paulo 02/04/2012: FUNÇÃO PARA CRIAR NOVA GENERATION                  //
  // Para criar nova generation deverá ser chamado a função:              //
  // InsereGeneration(NOME_TABELA, CAMPO_PK)                              //
  //////////////////////////////////////////////////////////////////////////

  {if InsereGeneration('TABELA2','COD_TABELA2')=False then
  begin
    MPainel.Lines.Add('Erro ao gerar generation: TABELA2');

  end;}
  ProgressBar1.Position := ProgressBar1.Position + 10;
end;

//Paulo 02/04/2012: starta a atualização de triggers
procedure TFAtualizaBanco.StartTrigger;
begin
  //////////////////////////////////////////////////////////////////////////
  // Paulo 02/04/2012: FUNÇÃO PARA CRIAR NOVA TRIGGER                     //
    // Para criar nova trigger deverá ser chamado a função:                 //
    // InsereTrigger(NOME_TABELA, NOME_GENERATION ,CAMPO_PK)                //
    // Deverá ser criado a generation primeiro, cada generation dever ter a //
    // sua trigger.                                                         //
    //////////////////////////////////////////////////////////////////////////

    {if InsereTrigger('TABELA2','GEN_TABELA2_ID','COD_TABELA2')=False then
    begin
      MPainel.Lines.Add('Erro ao gerar trigger: TABELA2');

    end;}

  ProgressBar1.Position := ProgressBar1.Position + 10;
end;

//Função utilizada para buscar o próximo codigo do itservord
function TFAtualizaBanco.ProxCodigoItServOrd: Integer;
begin
  try
    MDO.QAlx2.Close;
    MDO.QAlx2.SQL.Clear;
    MDO.QAlx2.SQL.Add(' Select codigo.cod_itservord from codigo ');
    MDO.QAlx2.Open;
    Result := MDO.QAlx2.FieldByName('cod_itservord').AsInteger;

    MDO.QAlx2.Close;
    MDO.QAlx2.SQL.Clear;
    MDO.QAlx2.SQL.Add(' update codigo set codigo.cod_itservord=:codigo ');
    MDO.QAlx2.ParamByName('codigo').AsInteger := Result + 1;
    MDO.QAlx2.ExecSQL;

    MDO.Transac.CommitRetaining;
  except
    MDO.Transac.RollbackRetaining;
    Result := -1;
  end;
end;

//Função para ajustar as chaves primarias de itservord para poder trasnformar este campo em indice unique
function TFAtualizaBanco.PreparaIndiceItservordCodigo: Boolean;
begin
  try
    Result := True;
    //Seleciona todos os itens de codigo repetido
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' SELECT itservord.cod_itservord  FROM itservord GROUP BY itservord.cod_itservord ');
    MDO.QConsulta.SQL.Add(' HAVING (count(itservord.cod_itservord) > 1)    ORDER BY itservord.cod_itservord ');
    MDO.QConsulta.Open;
    if not MDO.QConsulta.IsEmpty then
    begin
      //Seleciona todo o item
      MDO.QAlx1.Close;
      MDO.QAlx1.SQL.Clear;
      MDO.QAlx1.SQL.Add(' SELECT * FROM itservord where itservord.cod_itservord = :Codigo ');
      MDO.QAlx1.ParamByName('Codigo').AsInteger :=
        MDO.QConsulta.FieldByName('cod_itservord').AsInteger;
      MDO.QAlx1.Open;
      if not MDO.QAlx1.IsEmpty then
      begin
        //Antes de apagar o item inserimos novamente porém com codigo novo sem repetição
        //Insere serviço a lista de serviços
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add('  insert into itservord(COD_ITSERVORD, COD_ORDEM, COD_SERVICO, QTD, DESCONTO, VLRUNIT, VLRUNITCUSTO, TOTAL, ');
        MDO.Query.SQL.Add('                          COD_FUNCIONARIO, DATA, TOTENCARGO, LUCMOE, LUCPER) ');
        MDO.Query.SQL.Add('               values(:COD_ITSERVORD, :COD_ORDEM, :COD_SERVICO, :QTD, :DESCONTO, :VLRUNIT, :VLRUNITCUSTO, :TOTAL, ');
        MDO.Query.SQL.Add('                          :COD_FUNCIONARIO, :DATA, :TOTENCARGO, :LUCMOE, :LUCPER) ');
        MDO.Query.ParamByName('COD_ITSERVORD').AsInteger := ProxCodigoItServOrd;
        MDO.Query.ParamByName('COD_ORDEM').AsInteger :=
          MDO.QAlx1.FieldByName('COD_ORDEM').AsInteger;
        MDO.Query.ParamByName('COD_SERVICO').AsInteger :=
          MDO.QAlx1.FieldByName('COD_SERVICO').AsInteger;
        MDO.Query.ParamByName('QTD').AsCurrency :=
          MDO.QAlx1.FieldByName('QTD').AsCurrency;
        MDO.Query.ParamByName('DESCONTO').AsCurrency :=
          MDO.QAlx1.FieldByName('DESCONTO').AsCurrency;
        MDO.Query.ParamByName('VLRUNIT').AsCurrency :=
          MDO.QAlx1.FieldByName('VLRUNIT').AsCurrency;
        MDO.Query.ParamByName('VLRUNITCUSTO').AsCurrency :=
          MDO.QAlx1.FieldByName('VLRUNITCUSTO').AsCurrency;
        MDO.Query.ParamByName('TOTAL').AsCurrency :=
          MDO.QAlx1.FieldByName('TOTAL').AsCurrency;
        MDO.Query.ParamByName('COD_FUNCIONARIO').AsInteger :=
          MDO.QAlx1.FieldByName('COD_FUNCIONARIO').AsInteger;
        MDO.Query.ParamByName('DATA').AsDateTime :=
          MDO.QAlx1.FieldByName('DATA').AsDateTime;
        MDO.Query.ParamByName('TOTENCARGO').AsCurrency :=
          MDO.QAlx1.FieldByName('TOTENCARGO').AsCurrency;
        MDO.Query.ParamByName('LUCMOE').AsCurrency :=
          MDO.QAlx1.FieldByName('LUCMOE').AsCurrency;
        MDO.Query.ParamByName('LUCPER').AsCurrency :=
          MDO.QAlx1.FieldByName('LUCPER').AsCurrency;
        if MDO.Query.ParamByName('COD_ITSERVORD').AsInteger = -1 then
        begin
          //Caso não tenhamos obtido sucesso no inserir codigo do item
          Result := False;
          Exit;
        end;
        MDO.Query.ExecSQL;
        //Tentamos apagar o item
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add(' Delete FROM itservord where itservord.cod_itservord = :Codigo ');
        MDO.Query.ParamByName('Codigo').AsInteger :=
          MDO.QConsulta.FieldByName('cod_itservord').AsInteger;
        MDO.Query.ExecSQL;
        MDO.Transac.CommitRetaining;
      end;
      MDO.QConsulta.Next;
    end;
  except
    MDO.Transac.RollbackRetaining;
    Result := False;
  end;
end;

//Paulo 02/04/2012: starta a atualização de indices
procedure TFAtualizaBanco.StartIndice;
begin
  //////////////////////////////////////////////////////////////////////////
// Paulo 02/04/2012: FUNÇÃO PARA CRIAR INDICES                          //
  // Para criar indice deverá ser chamado a função:                       //
  // InsereIndice(NOME_INDICE, NOME_TABELA ,CAMPO_REFERENCIA)             //
  //////////////////////////////////////////////////////////////////////////

  {if InsereIndice('ID_TABELA2','TABELA2','COD_TABELA2')=False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: ID_TABELA2');

  end;}

  //indice para tabela subservico CAMPO cod_subservico
  if InsereIndice('ID_COD_SUBSERVICO', 'subservico', 'cod_subservico', false) =
    False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: ID_COD_SUBSERVICO - subservico - cod_subservico');
  end;

  if CBIndiceITServOrd.Checked = True then
  begin
    //indice para tabela itservord CAMPO cod_ordem
    if InsereIndice('ID_cod_ordem', 'itservord', 'cod_ordem', false) = False
      then
    begin
      MPainel.Lines.Add('Erro ao gerar Indice: ID_cod_ordem - itservord - cod_ordem');
    end;

    PreparaIndiceItservordCodigo; //função para remover duplicidade de codigos
    //indice para tabela itservord CAMPO cod_itservord
    if InsereIndice('ID_cod_itservord', 'itservord', 'cod_itservord', true) =
      False then
    begin
      MPainel.Lines.Add('Erro ao gerar Indice: ID_cod_itservord - itservord - cod_itservord');
    end;
  end;

  //indice para tabela ORDEM CAMPO PLACA2
  if InsereIndice('ID_PLACA2', 'ORDEM', 'PLACA2', false) = False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: ID_PLACA2 - ORDEM - placa2');
  end;

  //indice para tabela ORDEM CAMPO PLACA3
  if InsereIndice('ID_PLACA2', 'ORDEM', 'PLACA3', false) = False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: ID_PLACA3 - ORDEM - placa3');
  end;

  //indice para tabela DESPADIC CAMPO CLASSIFICACAO
  if InsereIndice('ID_CLASSIFICACAO', 'DESPADIC', 'CLASSIFICACAO', false) = False
    then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: ID_CLASSIFICACAO - DESPADIC - CLASSIFICACAO');
  end;

  //indice para tabela SUBPRODUTO
  if InsereIndice('ID_COD_UNIDVENDA', 'SUBPRODUTO', 'COD_UNIDVENDA', false) =
    False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: ID_COD_UNIDVENDA - SUBPRODUTO - COD_UNIDVENDA');
  end;

  if InsereIndice('ID_COD_PERIODOFISCAL', 'DOCFISORD', 'COD_PERIODOFISCAL',
    false) = False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: IDX_COD_PERIODOFISCAL - DOCFISORD - COD_PERIODOFISCAL');
  end;

  if InsereIndice('IDX_FISCO', 'ORDEM', 'FISCO', false) = False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: IDX_FISCO - ORDEM - FISCO');
  end;

  if InsereIndice('ID_COD_GERADOR', 'INFCOMPLEMENTAR', 'COD_GERADOR', false) =
    False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: COD_GERADOR - INFCOMPLEMENTAR - COD_GERADOR');
  end;
  if InsereIndice('IDX_COD_DOCFISCAL', 'INFCOMPLEMENTAR', 'COD_DOCFISCAL', false)
    = False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: COD_GERADOR - INFCOMPLEMENTAR - COD_DOCFISCAL');
  end;

  if InsereIndice('ID_STATUS', 'ORDEM', 'STATUS', false) = False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: IDX_STATUS - ORDEM - STATUS');
  end;

  //indice para tabela IDX_ORDEM_FISCO
  if InsereIndice('IDX_ORDEM_STATUS', 'ORDEM', 'STATUS', false) = False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: IDX_ORDEM_STATUS - ORDEM - STATUS');
  end;
  //indice para tabela IDX_ORDEM_FISCO
  if InsereIndice('IDX_ORDEM_FISCO', 'ORDEM', 'FISCO', false) = False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: IDX_ORDEM_FISCO - ORDEM - FISCO');
  end;
  //indice para tabela DOCFISORD
  if InsereIndice('IDX_DOCFISCORD_COD_ORDEM', 'DOCFISORD', 'COD_ORDEM', true) =
    False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: IDX_DOCFISCORD_COD_ORDEM - DOCFISORD - COD_ORDEM');
  end;

  /////////////////////////////////
  ////////ATUALIZAÇÃO ANTIGA///////
  /////////////////////////////////
  if Cb01.Checked = False then
    Exit; //para o processo

  //indice para tabela CCE com a chave primeria e not null
  if InsereIndice('ID_IT_GRAFICA_COD_ITGRAFICA', 'IT_GRAFICA', 'COD_ITGRAFICA',
    true) = False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: ID_IT_GRAFICA_COD_ITGRAFICA - IT_GRAFICA - COD_ITGRAFICA');
  end;

  //Indice na tabela Cliente para o campo Ativo
  if InsereIndice('ID_CLIENTE_ATIVO', 'CLIENTE', 'ATIVO', false) = False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: ID_CLIENTE_ATIVO - ATIVO - CLIENTE');
  end;
  //Indice na tabela ORDEM - COD_CLIENTE
  if InsereIndice('ID_ORDEM_CODCLIENTE', 'ORDEM', 'COD_CLIENTE', false) = False
    then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: ID_ORDEM_CODCLIENTE - COD_CLIENTE - ORDEM');
  end;
  //Indice na tabela ORDEM - COD_EQUIPAMENTO
  if InsereIndice('ID_ORDEM_CODEQUIPAMENTO', 'ORDEM', 'cod_equipamento', false)
    = False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: ID_ORDEM_CODEQUIPAMENTO - COD_EQUIPAMENTO - ORDEM');
  end;
  //Indice na tabela ORDEM - COD_formpag
  if InsereIndice('ID_ORDEM_CODFORMPAGAMENTO', 'ORDEM', 'cod_formpag', false) =
    False then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: ID_ORDEM_CODFORMPAG - COD_FORMPAG - ORDEM');
  end;
  //Indice na tabela PESSOA - COD_CIDADE
  if InsereIndice('ID_PESSOA_CODCIDADE', 'PESSOA', 'COD_CIDADE', false) = False
    then
  begin
    MPainel.Lines.Add('Erro ao gerar Indice: ID_PESSOA_CODCIDADE - COD_CIDADE - PESSOA');
  end;
  ProgressBar1.Position := ProgressBar1.Position + 10;
end;

//Paulo 27/03/2012: cria uma nova tabela no banco
function TFAtualizaBanco.InsereTabelaNova(XTABELA: string; XPK: string):
  Boolean;
begin
  Result := True;

  //Paulo 09/04/2012: Verifica se já existe a tabela
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add('SELECT RDB$RELATION_NAME FROM RDB$RELATIONS');
  MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA;');
  MDO.QConsulta.ParamByName('NOMETABELA').AsString := XTABELA;
  MDO.QConsulta.Open;
  if MDO.QConsulta.IsEmpty then
  begin
    //Paulo 27/03/2012: Executa o script
    try
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('CREATE TABLE ' + XTABELA + ' (' + XPK + ');');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    except
      MDO.Transac.RollbackRetaining;
      Result := False;
    end;
  end
  else
  begin
    //MPainel.Lines.Add('Tabela '+XTABELA+' já existe na base de dados.');
      //Result:=False;
  end;
end;

//Alex: 05/01/2017 - Função exclusiva para criar o campo em tabela e alimentar com o valor "1"
function TFAtualizaBanco.InsereCampoEditaVendedorOs: Boolean;
begin
  //Verifica se existe o campo
  Result := True;
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add('SELECT RDB$FIELD_NAME FROM RDB$RELATION_FIELDS');
  MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA and RDB$FIELD_NAME = :NOMECAMPO');
  MDO.QConsulta.ParamByName('NOMETABELA').AsString := 'LOJACESSO';
  MDO.QConsulta.ParamByName('NOMECAMPO').AsString := 'EDITAVENDEDOROS';
  MDO.QConsulta.Open;
  if MDO.QConsulta.IsEmpty then
  begin
    //Se o campo não existe, vamos criar
    try
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('ALTER TABLE LOJACESSO ADD EDITAVENDEDOROS CHAR(1)');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
      try
        //Vamos tentar marcar o campo criado como '1' garantindo que não mude o trabalho de que já usa o sistema
        MDO.Query.Close;
        MDO.Query.SQL.Clear;
        MDO.Query.SQL.Add(' UPDATE lojacesso SET lojacesso.editavendedoros=' +
          #39 + '1' + #39);
        MDO.Query.ExecSQL;
        MDO.Transac.CommitRetaining;
      except
        MDO.Transac.RollbackRetaining;
        MessageDlg('Configure os usuários do sistema quanto a permissão do campo de editar vendedores na OS', mtWarning, [mbOK], 0);
      end;
    except
      MDO.Transac.RollbackRetaining;
      Result := False;
    end;
  end
  else
  begin
  end;
end;

//Paulo 27/03/2012: atualiza o campo da tabela
function TFAtualizaBanco.AtualizaTabela(XTABELA: string; XCAMPO: string; XTIPO:
  string): Boolean;
begin
  //Paulo 27/03/2012: gera script
  Result := True;
  //Paulo 09/04/2012: Verifica se já existe o campo
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add('SELECT RDB$FIELD_NAME FROM RDB$RELATION_FIELDS');
  MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA and RDB$FIELD_NAME = :NOMECAMPO');
  MDO.QConsulta.ParamByName('NOMETABELA').AsString := XTABELA;
  MDO.QConsulta.ParamByName('NOMECAMPO').AsString := XCAMPO;
  MDO.QConsulta.Open;
  if MDO.QConsulta.IsEmpty then
  begin
    try
      //Paulo 27/03/2012: Executa o script
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('ALTER TABLE ' + XTABELA + ' ADD ' + XCAMPO + ' ' +
        XTIPO);
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    except
      MDO.Transac.RollbackRetaining;

      Result := False;
      //Exit;
    end;
  end
  else
  begin
    //MPainel.Lines.Add('Campo '+XCAMPO+' já existe na tabela '+XTABELA);
    //Result:=False;
  end;
end;

//Alex 09/04/2014: atualiza o campo da tabela
function TFAtualizaBanco.AtualizaTabelaCampo(XTABELA: string; XCAMPO: string;
  XTIPO: string): Boolean;
begin
  //Paulo 27/03/2012: gera script
  Result := True;
  //Paulo 09/04/2012: Verifica se já existe o campo
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add('SELECT RDB$FIELD_NAME FROM RDB$RELATION_FIELDS');
  MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME=:NOMETABELA and RDB$FIELD_NAME = :NOMECAMPO');
  MDO.QConsulta.ParamByName('NOMETABELA').AsString := XTABELA;
  MDO.QConsulta.ParamByName('NOMECAMPO').AsString := XCAMPO;
  MDO.QConsulta.Open;
  if not MDO.QConsulta.IsEmpty then
  begin
    try
      //Paulo 27/03/2012: Executa o script
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('ALTER TABLE ' + XTABELA + ' ALTER ' + XCAMPO + ' TYPE '
        + XTIPO);
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    except
      MDO.Transac.RollbackRetaining;

      Result := False;
      //Exit;
    end;
  end
  else
  begin
    //MPainel.Lines.Add('Campo '+XCAMPO+' já existe na tabela '+XTABELA);
    //Result:=False;
  end;
end;

//Paulo 28/03/2012: apaga a view
function TFAtualizaBanco.ApagaView(XVIEW: string): Boolean;
begin
  Result := True;
  //Paulo 31/03/2012: apaga a view para depois criar novamente
  try
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('DROP VIEW ' + XVIEW);
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
  except
    MDO.Transac.RollbackRetaining;
    Result := False;
  end;
end;

//Paulo 28/03/2012: gera a view
function TFAtualizaBanco.InsereNovaView(XVIEW: string; XCAMPOS: string; XSQL:
  string): Boolean;
begin
  Result := True;

  //Paulo 31/03/2012: cria a view com os campos atualizados
  try
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('CREATE VIEW ' + XVIEW + ' (');
    MDO.Query.SQL.Add(XCAMPOS + ' ) ');
    MDO.Query.SQL.Add('AS ' + XSQL + ';');
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;
  except
    MDO.Transac.RollbackRetaining;

    Result := False;
  end;

end;

//Paulo 02/04/2012: cria nova generation
function TFAtualizaBanco.InsereGeneration(XTABELA: string; XPK: string):
  Boolean;
var
  XCOD: Integer;
begin
  Result := True;
  //Paulo 09/04/2012: Verifica se já existe a generation
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add('SELECT RDB$GENERATOR_NAME FROM RDB$GENERATORS');
  MDO.QConsulta.SQL.Add('WHERE RDB$GENERATOR_NAME = :NOMEGENERATION');
  MDO.QConsulta.ParamByName('NOMEGENERATION').AsString := 'GEN_' + XTABELA +
    '_ID';
  MDO.QConsulta.Open;
  if MDO.QConsulta.IsEmpty then
  begin

    //Paulo 02/04/2012: Verifica o ultimo código da tabela
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT MAX(' + XPK + ') FROM ' + XTABELA);
    MDO.QConsulta.Open;
    XCOD := MDO.QConsulta.FieldByName('MAX').AsInteger + 1;

    //Paulo 02/04/2012: Cria a GENERATOR
    try
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('CREATE GENERATOR GEN_' + XTABELA + '_ID');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;

      if (XTABELA = 'CTARECEBER') or
        (XTABELA = 'CTAPAGAR') or
        (XTABELA = 'PARCELACR') or
        (XTABELA = 'PARCELACP') then
        XCOD := XCOD + 100000;

      //Paulo 02/04/2012: Adiciona o código a generation
      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add('SET GENERATOR GEN_' + XTABELA + '_ID TO ' +
        IntToStr(XCOD));
      MDO.QConsulta.ExecSQL;
      MDO.Transac.CommitRetaining;
    except
      MDO.Transac.RollbackRetaining;
      //DMESTOQUE.TransacEstoque.RollbackRetaining;
      Result := False;
    end;
  end
  else
  begin
    //MPainel.Lines.Add('A Generation GEN_'+XTABELA+'_ID já existe na base de dados.');
    //Result:=False;
  end;

end;

//Paulo 02/04/2012: Gera Trigger
function TFAtualizaBanco.InsereTrigger(XTABELA: string; XGENERATION: string;
  XPK: string): Boolean;
begin
  Result := True;
  //Paulo 09/04/2012: Verifica se já existe a TRIGGER
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add('SELECT RDB$TRIGGER_NAME FROM RDB$TRIGGERS');
  MDO.QConsulta.SQL.Add('WHERE RDB$TRIGGER_NAME = :NOMETRIGGER;');
  MDO.QConsulta.ParamByName('NOMETRIGGER').AsString := XTABELA + '_BI';
  MDO.QConsulta.Open;
  if MDO.QConsulta.IsEmpty then
  begin
    try
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      //CREATE TRIGGER FATURACONTA_BI FOR FATURACONTA
      MDO.Query.SQL.Add('CREATE TRIGGER ' + XTABELA + '_BI FOR ' + XTABELA);
      //ACTIVE BEFORE INSERT POSITION 0
      MDO.Query.SQL.Add('ACTIVE BEFORE INSERT POSITION 0');
      //AS BEGIN IF (NEW.COD_FATURACONTA IS NULL) THEN
      MDO.Query.SQL.Add('AS BEGIN IF (NEW.' + XPK + ' IS NULL) THEN');
      //NEW.COD_FATURACONTA = GEN_ID(GEN_FATURACONTA_ID,1); END
      MDO.Query.SQL.Add('NEW.' + XPK + ' = GEN_ID(' + XGENERATION + ',1); END');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;

    except
      MDO.Transac.RollbackRetaining;
      Result := False;
    end;
  end
  else
  begin
    //MPainel.Lines.Add('A Trigger '+XTABELA+'_BI já existe na base de dados ');
    //Result:=False;
  end;
end;

//Paulo 02/04/2012: Gera Indices
function TFAtualizaBanco.InsereIndice(XINDICE: string; XTABELA: string; XCAMPO:
  string; XUnique: Boolean): Boolean;
begin
  Result := True;
  //Paulo 09/04/2012: Verifica se já existe a TRIGGER
  MDO.QConsulta.Close;
  MDO.QConsulta.SQL.Clear;
  MDO.QConsulta.SQL.Add('SELECT RDB$INDEX_NAME FROM RDB$INDICES');
  MDO.QConsulta.SQL.Add('WHERE RDB$INDEX_NAME =:NOMEID');
  MDO.QConsulta.ParamByName('NOMEID').AsString := XINDICE;
  MDO.QConsulta.Open;
  if MDO.QConsulta.IsEmpty then
  begin
    try
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      if XUnique = True then
        MDO.Query.SQL.Add('CREATE UNIQUE INDEX ' + XINDICE + ' ON ' + XTABELA +
          ' (' + XCAMPO + ')')
      else
        MDO.Query.SQL.Add('CREATE INDEX ' + XINDICE + ' ON ' + XTABELA + ' (' +
          XCAMPO + ')');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    except
      MDO.Transac.RollbackRetaining;
      Result := False;
    end;
  end
  else
  begin
    //MPainel.Lines.Add('O Indice '+XINDICE+' já existe na base de dados.');
    //Result:=False;
  end;
end;

//Paulo 27/03/2012: Gera script de atualização
procedure TFAtualizaBanco.BtAtualizaTabelaClick(Sender: TObject);
var
  XDiretorioSistema: string;
begin
  DesconectBanco;

  if cbFireBird.Checked = True then
    ParaFireBird;

  //XFLAG:=1;
  ProgressBar1.Position := ProgressBar1.Position + 20;

  //Paulo 03/04/2012: Busca onde está a base de dados
  {XPATHEXE:=ExtractFilePath(Application.ExeName);
  IF FileExists(XPATHEXE+'DBMACS.GDB')
  Then Begin
      XFLAG:=1;
      FMenu.XTRILL:=XPATHEXE+'DBMACS.GDB';
  End; }
  //ProgressBar1.Position:=ProgressBar1.Position+10;

  //Paulo 03/04/2012: Conecta somente o MDO
  Application.CreateForm(TMDO, MDO);
  ConectBd(MDO);
  ProgressBar1.Position := ProgressBar1.Position + 10;

  //Paulo 02/04/2012: starta a atualização de tabelas
  StartTabelas;
  //Paulo 02/04/2012: starta a atualização de views
  StartViews;
  //Paulo 02/04/2012: starta a atualização de generations
  StartGeneration;
  //Paulo 02/04/2012: starta a atualização de triggers
  StartTrigger;
  //Paulo 02/04/2012: starta a atualização de indices
  StartIndice;
  //Edmar - 18/11/2015 - inicia as rotinas especiais (aumento de campo que esteja
  //em alguma view por exemplo)
  StartEspecial;

  //Paulo 03/04/2012: Conecta todas as tabelas
  ConexaoBaseDados;

  if DMMACS.TLoja.FieldByName('ATUALIZAESTOQUEPC').AsString = '' then
  begin
    //Edmar - 10/09/2014 - Se o campo foi criado corretamente
    //atualiza o novo campo com a mesma informação que já está salvo
    //em atualiza estoque. Isto para não dar problemas com outras empresas
    //que utilizam a função de atualizar estoque tanto em pv, os, pc
    DMMACS.TALX.Close;
    DMMACS.TALX.SQL.Clear;
    DMMACS.TALX.SQL.Add('UPDATE LOJA SET LOJA.ATUALIZAESTOQUEPC = LOJA.ATUAESTOQUE');
    DMMACS.TALX.ExecSQL;
    DMMACS.Transaction.CommitRetaining;
  end;

  //Edmar - 18/11/2015 - Busca se o CST 102 está cadastrado
  MDO.Query.Close;
  MDO.Query.SQL.Clear;
  MDO.Query.SQL.Add(' SELECT CST.COD_CST FROM CST WHERE CST.COD_SIT_TRIB = ''102'' ');
  MDO.Query.Open;

  //se estiver vazio é porque não está cadastrado
  if MDO.Query.IsEmpty then
  begin
    //cadastra com a marcação CST de venda apenas (TODO)
    xCodCst := InserReg(DMESTOQUE.TCST, 'CST', 'COD_CST');
    DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString := '102';
    DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString :=
      'Tributada pelo Simples Nacional sem permissão de crédito';
    DMESTOQUE.TCST.FieldByName('VENDA').AsString := '1';
    DMESTOQUE.TCST.Post;

    DMESTOQUE.TransacEstoque.CommitRetaining;
  end;

  //Edmar - 26/03/2015 - se a caixa de marcação estiver selecionada executa a rotina para atualizar a versão da DLL
  //da nfe
  if cbVersaoDll.Checked then
  begin
    try
      XDiretorioSistema := ExtractFilePath(Application.ExeName);
      //verifica se existe o arquivo update_nfe_4.11.exe
      //baixa o arquivo de caso não exista na maquina
      if not FileExists(XDiretorioSistema + '\update_nfe_4.11.exe') then
      begin
        //
        with conectaFtp do
        begin
          Disconnect();

          Host := 'ftp.mzrsistemas.com';
          Port := 21;
          Username := 'mzrsistemas01';
          Password := 'ecg879bd';
          Passive := true;

          try
            Connect;
          except
            on E: Exception do
            begin
              ShowMessage('Não foi possível estabeler conexão com o FTP: ' +
                E.Message);
              Exit;
            end;
          end;

          Get('downloads/Zion/Arquivos/update_nfe_4.11.exe',
            'update_nfe_4.11.exe', True, False);
          Quit;
        end;
      end;

      //Edmar - 21/05/2018 - desregistra a dll
      WinExec(PChar('cmd /k regasm /u NFe_Util_2G.dll /tlb:NFe_Util_2G.tlb'),
        SW_HIDE);

      //renomeia os arquivos da versão anterior
      RenameFile('NFe_Util_2G.dll', 'NFe_Util_2G_4.09.dll'); //DLL
      RenameFile('NFe_Util_2G.tlb', 'NFe_Util_2G_4.09.tlb'); //TLB
      RenameFile('Reports.dll', 'Reports_4.04.dll'); //REPORTS
      MoveFile(PChar(XDiretorioSistema + '\NFe_Util'), PChar(XDiretorioSistema +
        '\NFe_Util_4.09'));

      //instala a nova versão da nfe
      WinExec(PChar('cmd /k update_nfe_4.11.exe /verysilent /components="DLL" /DIR=".\"'), SW_HIDE);

      //aguarda cinco segundo para continuar executando (tempo necessário para o comando ser totalmente executado)
      Sleep(5000);

      //atualiza o banco de dados. mudando a versão da nfe para 4.11.
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' UPDATE LOJA SET LOJA.NFEVERSAO = ''4.11'', LOJA.NFEVERSASCHEMA = ''4.00'' WHERE LOJA.COD_LOJA = :LOJA ');
      MDO.Query.ParamByName('LOJA').AsString := FMenu.LCODLOJA.Caption;
      MDO.Query.ExecSQL;
      //
      MDO.Transac.CommitRetaining;
    except
      on E: Exception do
      begin
        MPainel.Lines.Add('Não foi possível atualizar a DLL da NF-e. Favor executar o processo manualmente.' + #13 + E.Message);
      end;
    end;
  end;

  ProgressBar1.Position := 100;
  MPainel.Lines.Add('Atualização da Base de Dados Finalizada.');
end;

procedure TFAtualizaBanco.FormActivate(Sender: TObject);
begin

  MPainel.Lines.Clear;
  ProgressBar1.Position := 0;
  cbFireBird.Checked := False;
end;

//Paulo 02/04/2012: Função de start/stop o firebird
function TFAtualizaBanco.ControlFireBird(XACAO: string): Boolean;
begin
  Result := True;
  try
    if XACAO = 'START' then
      WinExec('command.com /c net start "Firebird Guardian - DefaultInstance"',
        SW_HIDE)
    else
      WinExec('command.com /c net stop "Firebird Guardian - DefaultInstance"',
        SW_HIDE);
  except
    Result := False;
  end;
end;

//Paulo 03/04/2012: Reconecta a Base de Dados
procedure TFAtualizaBanco.ConexaoBaseDados;
begin
  FMenu.ListBox.Clear;
  //Conecta Data Modules
  Application.CreateForm(TDMMacs, DMMacs);
  ConectBd(DMMacs);
  Application.CreateForm(TDMPessoa, DMPessoa);
  ConectBd(DMPessoa);
  Application.CreateForm(TDMGeografia, DMGeografia);
  ConectBd(DMGeografia);
  Application.CreateForm(TDMBANCO, DMBANCO);
  ConectBd(DMBANCO);
  Application.CreateForm(TDMFINANC, DMFINANC);
  ConectBd(DMFINANC);
  Application.CreateForm(TDMCaixa, DMCaixa);
  ConectBd(DMCaixa);
  Application.CreateForm(TDMConta, DMConta);
  ConectBd(DMConta);
  Application.CreateForm(TDMEstoque, DMEstoque);
  ConectBd(DMEstoque);
  Application.CreateForm(TDMSERV, DMSERV);
  ConectBd(DMSERV);
  Application.CreateForm(TDMEntrada, DMEntrada);
  ConectBd(DMEntrada);
  Application.CreateForm(TDMSaida, DMSaida);
  ConectBd(DMSaida);
  Application.CreateForm(TDMFISCAL, DMFISCAL);
  ConectBd(DMFISCAL);
end;

procedure TFAtualizaBanco.BtnFechaClick(Sender: TObject);
begin
  Close;
end;

//Paulo 10/04/2012: encerra e starta o serviço do firebird
procedure TFAtualizaBanco.ParaFireBird();
begin
  //Paulo 02/04/2012: Stop/Start Serviço Firebird
  ControlFireBird('STOP');
  Sleep(1000);
  ControlFireBird('START');
end;

function TFAtualizaBanco.DropTable(xTabela: string): Boolean;
begin
  Result := True;
  //Edmar - 09/10/2014 - Apaga a tabela com base no parametro passado
  try
    //Edmar - 09/10/2014 - Verifica se a tabela existe
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' SELECT COUNT(*) QTDE ');
    MDO.Query.SQL.Add(' FROM RDB$RELATIONS ');
    MDO.Query.SQL.Add(' WHERE RDB$FLAGS=1 and RDB$RELATION_NAME= ' +
      QuotedStr(xTabela));
    MDO.Query.Open;

    //se maior que 0 é porque encontrou a tabela
    if MDO.Query.FieldByName('QTDE').AsInteger > 0 then
    begin
      //executa comando para exclusão da mesm
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('DROP TABLE ' + xTabela);
      MDO.Query.ExecSQL;

      MDO.Transac.CommitRetaining;
    end;
  except
    MDO.Transac.RollbackRetaining;
    Result := False;
  end;
end;

procedure TFAtualizaBanco.cbVersaoDllClick(Sender: TObject);
begin
  ShowMessage('POR FAVOR CERTIFIQUE-SE QUE O ZION FOI EXECUTADO EM MODO DE ADMISTRADOR.');
end;

procedure TFAtualizaBanco.StartMelhoriasEstoque2023;
begin
  {
     SetPksEstoque;
     //SetPksSubproduto;
     //setSetFksEstoque;
     SetPksOrdem;
     SetPksItemProdOrdem;
     SetFksItemProdOrdem;
     SetTableMovimentoEstoque;
     {
     SetTriggerESTOQUE_AI0;
     SetTriggerITENSPEDC_AIUD0;
     SetTriggerESTOQUE_AI0;
     SetTriggerITENSPEDVEN_AIUD0;
     SetTriggerITPRODORD_AIUD0;
     SetTriggerLANCENT_AIUD0;
     SetTriggerLANCSAI_AIUD0;
      }

end;

function TFAtualizaBanco.SetPksEstoque: Boolean;
begin
  try
    Result := True;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select r.RDB$INDEX_NAME from RDB$INDICES r ');
    MDO.QConsulta.SQL.Add(' where r.RDB$INDEX_NAME = ''PK_ESTOQUE''      ');
    MDO.QConsulta.Open;

    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' ALTER TABLE ESTOQUE ADD CONSTRAINT PK_ESTOQUE PRIMARY KEY (COD_ESTOQUE) ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;
  except
    MessageDlg('Falha ao criar chave primária para a tabela estoque.', mtWarning,
      [mbOK], 0);
    Result := False;
  end;
end;

function TFAtualizaBanco.SetTriggerESTOQUE_AI0: Boolean;
begin
  try
    Result := True;
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$TRIGGER_NAME FROM RDB$TRIGGERS');
    MDO.QConsulta.SQL.Add('WHERE RDB$TRIGGER_NAME = ''ESTOQUE_AI0');
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE OR ALTER TRIGGER ESTOQUE_AI0 FOR ESTOQUE ');
      MDO.Query.SQL.Add(' ACTIVE AFTER INSERT POSITION 0 ');
      MDO.Query.SQL.Add(' AS ');
      MDO.Query.SQL.Add(' begin ');
      MDO.Query.SQL.Add('     update ESTOQUE E set ');
      MDO.Query.SQL.Add('         E.ESTFISICO = 0, ');
      MDO.Query.SQL.Add('         E.ESTRESERV = 0, ');
      MDO.Query.SQL.Add('         E.ESTSALDO = 0, ');
      MDO.Query.SQL.Add('         E.ESTPED = 0, ');
      MDO.Query.SQL.Add('         E.ESTOQUE4CASAS = 0 ');
      MDO.Query.SQL.Add('     where ');
      MDO.Query.SQL.Add('         E.COD_ESTOQUE = new.COD_ESTOQUE; ');
      MDO.Query.SQL.Add(' end ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;
  except
    MessageDlg('Falha ao criar Trigger ESTOQUE_AI0 para a tabela estoque.',
      mtWarning, [mbOK], 0);
    Result := False;
  end;
end;

function TFAtualizaBanco.SetTriggerITENSPEDC_AIUD0: Boolean;
begin
  try
    Result := True;
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$TRIGGER_NAME FROM RDB$TRIGGERS');
    MDO.QConsulta.SQL.Add('WHERE RDB$TRIGGER_NAME = ''ITENSPEDC_AIUD0');
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE OR ALTER TRIGGER ITENSPEDC_AIUD0 FOR ITENSPEDC ');
      MDO.Query.SQL.Add(' ACTIVE AFTER INSERT OR DELETE POSITION 0 ');
      MDO.Query.SQL.Add(' as ');
      MDO.Query.SQL.Add(' declare MSG varchar(100); ');
      MDO.Query.SQL.Add(' begin ');
      MDO.Query.SQL.Add('   if ((inserting or updating) and new.COD_ESTOQUE is null) then ');
      MDO.Query.SQL.Add('     exception USER_EXCEPTION ''CÃ³digo do estoque nÃ£o pode ser null''; ');
      MDO.Query.SQL.Add(' ');
      MDO.Query.SQL.Add('   if (not exists(select * from ESTOQUE E where E.COD_ESTOQUE = coalesce(new.COD_ESTOQUE, old.COD_ESTOQUE))) then ');
      MDO.Query.SQL.Add('    exception USER_EXCEPTION ''NÃ£o foi encontrado um estoque com o cÃ³digo '' || coalesce(new.COD_ESTOQUE, old.COD_ESTOQUE);');
      MDO.Query.SQL.Add(' ');
      MDO.Query.SQL.Add('   MSG = ''item de pedido de compra''; ');
      MDO.Query.SQL.Add('   if (inserting) then ');
      MDO.Query.SQL.Add('   begin ');
      MDO.Query.SQL.Add('     execute procedure MOVIMENTO_ESTOQUE_CREATE(new.COD_ESTOQUE, ''ENTRADA'', new.QTDEPROD, ''Incluindo'' || MSG, new.COD_ITENSPEDC, ''ITENSPEDC''); ');
      MDO.Query.SQL.Add('   end ');
      MDO.Query.SQL.Add('   else ');
      MDO.Query.SQL.Add('   begin ');
      MDO.Query.SQL.Add('     execute procedure MOVIMENTO_ESTOQUE_CREATE(old.COD_ESTOQUE, ''SAIDA'', old.QTDEPROD, ''Excluindo'' || MSG, old.COD_ITENSPEDC, ''ITENSPEDC''); ');
      MDO.Query.SQL.Add('   end ');
      MDO.Query.SQL.Add('end');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;
  except
    MessageDlg('Falha ao criar Trigger ITENSPEDC_AIUD0 para a tabela ITENSPEDC.', mtWarning, [mbOK], 0);
    Result := False;
  end;
end;

function TFAtualizaBanco.SetTriggerITENSPEDVEN_AIUD0: Boolean;
begin
  try
    Result := True;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$TRIGGER_NAME FROM RDB$TRIGGERS');
    MDO.QConsulta.SQL.Add('WHERE RDB$TRIGGER_NAME = ''ITENSPEDVEN_AIUD0');
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE OR ALTER TRIGGER ITENSPEDVEN_AIUD0 FOR ITENSPEDVEN ');
      MDO.Query.SQL.Add(' ACTIVE AFTER INSERT OR DELETE POSITION 0 ');
      MDO.Query.SQL.Add(' as ');
      MDO.Query.SQL.Add(' declare MSG varchar(100); ');
      MDO.Query.SQL.Add(' begin ');
      MDO.Query.SQL.Add('   if ((inserting or updating) and new.COD_ESTOQUE is null) then ');
      MDO.Query.SQL.Add('     exception USER_EXCEPTION ''CÃ³digo do estoque nÃ£o pode ser null''; ');
      MDO.Query.SQL.Add(' ');
      MDO.Query.SQL.Add('   if (not exists(select * from ESTOQUE E where E.COD_ESTOQUE = coalesce(new.COD_ESTOQUE, old.COD_ESTOQUE))) then ');
      MDO.Query.SQL.Add('     exception USER_EXCEPTION ''NÃ£o foi encontrado um estoque com o cÃ³digo '' || coalesce(new.COD_ESTOQUE, old.COD_ESTOQUE); ');
      MDO.Query.SQL.Add(' ');
      MDO.Query.SQL.Add('   MSG = ''item de pedido de venda''; ');
      MDO.Query.SQL.Add('   if (inserting) then ');
      MDO.Query.SQL.Add('   begin ');
      MDO.Query.SQL.Add('     execute procedure MOVIMENTO_ESTOQUE_CREATE(new.COD_ESTOQUE, ''SAIDA'', new.QTDEPROD, ''Incluindo'' || MSG, new.COD_ITENSPEDVEN, ''ITENSPEDVEN''); ');
      MDO.Query.SQL.Add('   end ');
      MDO.Query.SQL.Add('   else ');
      MDO.Query.SQL.Add('   begin ');
      MDO.Query.SQL.Add('     execute procedure MOVIMENTO_ESTOQUE_CREATE(old.COD_ESTOQUE, ''ENTRADA'', old.QTDEPROD, ''Excluindo'' || MSG, old.COD_ITENSPEDVEN, ''ITENSPEDVEN''); ');
      MDO.Query.SQL.Add('   end ');
      MDO.Query.SQL.Add(' end ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;
  except
    MessageDlg('Falha ao criar Trigger ITENSPEDVEN_AIUD0 para a tabela ITENSPEDVEN.', mtWarning, [mbOK], 0);
    Result := False;
  end;
end;

function TFAtualizaBanco.SetTriggerITPRODORD_AIUD0: Boolean;
begin
  try
    Result := True;
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$TRIGGER_NAME FROM RDB$TRIGGERS');
    MDO.QConsulta.SQL.Add('WHERE RDB$TRIGGER_NAME = ''ITPRODORD_AIUD0');
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      {/* Trigger: MOVIMENTOESTOQUE_BI */}
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE OR ALTER TRIGGER ITPRODORD_AIUD0 FOR ITPRODORD ');
      MDO.Query.SQL.Add(' ACTIVE AFTER INSERT OR DELETE POSITION 0 ');
      MDO.Query.SQL.Add(' as ');
      MDO.Query.SQL.Add(' declare MSG varchar(100); ');
      MDO.Query.SQL.Add(' begin ');
      MDO.Query.SQL.Add('   if ((inserting or updating) and new.COD_ESTOQUE is null) then ');
      MDO.Query.SQL.Add('     exception USER_EXCEPTION ''CÃ³digo do estoque nÃ£o pode ser null''; ');
      MDO.Query.SQL.Add(' ');
      MDO.Query.SQL.Add('   if (not exists(select * from ESTOQUE E where E.COD_ESTOQUE = coalesce(new.COD_ESTOQUE, old.COD_ESTOQUE))) then ');
      MDO.Query.SQL.Add('     exception USER_EXCEPTION ''NÃ£o foi encontrado um estoque com o cÃ³digo '' || coalesce(new.COD_ESTOQUE, old.COD_ESTOQUE); ');
      MDO.Query.SQL.Add(' ');
      MDO.Query.SQL.Add('   MSG = ''item de ordem de serviÃ§o''; ');
      MDO.Query.SQL.Add('   if (inserting) then ');
      MDO.Query.SQL.Add('   begin ');
      MDO.Query.SQL.Add('     execute procedure MOVIMENTO_ESTOQUE_CREATE(new.COD_ESTOQUE, ''SAIDA'', new.QTD, ''Incluindo'' || MSG, new.COD_ITPRODORD, ''ITPRODORD''); ');
      MDO.Query.SQL.Add('   end ');
      MDO.Query.SQL.Add('   else if ((updating) and ((old.COD_ESTOQUE is distinct from new.COD_ESTOQUE) or (old.QTD is distinct from new.QTD))) then ');
      MDO.Query.SQL.Add('   begin ');
      MDO.Query.SQL.Add('     execute procedure MOVIMENTO_ESTOQUE_CREATE(old.COD_ESTOQUE, ''ENTRADA'', old.QTD, ''Alterando'' || MSG, old.COD_ITPRODORD, ''ITPRODORD''); ');
      MDO.Query.SQL.Add('     execute procedure MOVIMENTO_ESTOQUE_CREATE(new.COD_ESTOQUE, ''SAIDA'', new.QTD, ''Alterando'' || MSG, new.COD_ITPRODORD, ''ITPRODORD''); ');
      MDO.Query.SQL.Add('   end ');
      MDO.Query.SQL.Add('   else ');
      MDO.Query.SQL.Add('   begin ');
      MDO.Query.SQL.Add('     execute procedure MOVIMENTO_ESTOQUE_CREATE(old.COD_ESTOQUE, ''ENTRADA'', old.QTD, ''Excluindo'' || MSG, old.COD_ITPRODORD, ''ITPRODORD''); ');
      MDO.Query.SQL.Add('   end ');
      MDO.Query.SQL.Add(' end ');
      MDO.Query.SQL.Add(' ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;
  except
    MessageDlg('Falha ao criar Trigger ITPRODORD_AIUD0 para a tabela ITPRODORD.', mtWarning, [mbOK], 0);
    Result := False;
  end;
end;

function TFAtualizaBanco.SetTriggerLANCENT_AIUD0: Boolean;
begin
  try
    Result := True;
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$TRIGGER_NAME FROM RDB$TRIGGERS');
    MDO.QConsulta.SQL.Add('WHERE RDB$TRIGGER_NAME = ''LANCENT_AIUD0');
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      {/* Trigger: MOVIMENTOESTOQUE_BI */}
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE OR ALTER TRIGGER LANCENT_AIUD0 FOR LANCENT ');
      MDO.Query.SQL.Add(' ACTIVE AFTER INSERT OR DELETE POSITION 0 ');
      MDO.Query.SQL.Add(' as ');
      MDO.Query.SQL.Add(' declare MSG varchar(100); ');
      MDO.Query.SQL.Add(' begin ');
      MDO.Query.SQL.Add('   if ((inserting or updating) and new.COD_ESTOQUE is null) then ');
      MDO.Query.SQL.Add('     exception USER_EXCEPTION ''CÃ³digo do estoque nÃ£o pode ser null''; ');
      MDO.Query.SQL.Add(' ');
      MDO.Query.SQL.Add('   if (not exists(select * from ESTOQUE E where E.COD_ESTOQUE = coalesce(new.COD_ESTOQUE, old.COD_ESTOQUE))) then ');
      MDO.Query.SQL.Add('     exception USER_EXCEPTION ''NÃ£o foi encontrado um estoque com o cÃ³digo '' || coalesce(new.COD_ESTOQUE, old.COD_ESTOQUE); ');
      MDO.Query.SQL.Add(' ');
      MDO.Query.SQL.Add('   MSG = ''lanÃ§amento corretivo manual para entradas de estoque''; ');
      MDO.Query.SQL.Add('   if (inserting) then ');
      MDO.Query.SQL.Add('   begin ');
      MDO.Query.SQL.Add('     execute procedure MOVIMENTO_ESTOQUE_CREATE(new.COD_ESTOQUE, ''ENTRADA'', new.QUANTIDADE, ''Incluindo'' || MSG, new.COD_LANENT, ''LANCENT''); ');
      MDO.Query.SQL.Add('   end ');
      MDO.Query.SQL.Add('   begin ');
      MDO.Query.SQL.Add('     execute procedure MOVIMENTO_ESTOQUE_CREATE(old.COD_ESTOQUE, ''SAIDA'', old.QUANTIDADE, ''Excluindo'' || MSG, old.COD_LANENT, ''LANCENT''); ');
      MDO.Query.SQL.Add('   end ');
      MDO.Query.SQL.Add(' end ');
      MDO.Query.SQL.Add('  ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;
  except
    MessageDlg('Falha ao criar Trigger LANCENT_AIUD0 para a tabela LANCENT.',
      mtWarning, [mbOK], 0);
    Result := False;
  end;
end;

function TFAtualizaBanco.SetTriggerLANCSAI_AIUD0: Boolean;
begin
  try
    Result := True;
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$TRIGGER_NAME FROM RDB$TRIGGERS');
    MDO.QConsulta.SQL.Add('WHERE RDB$TRIGGER_NAME = ''LANCSAI_AIUD0');
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      {/* Trigger: MOVIMENTOESTOQUE_BI */}
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE OR ALTER TRIGGER LANCSAI_AIUD0 FOR LANCSAI ');
      MDO.Query.SQL.Add(' ACTIVE AFTER INSERT OR DELETE POSITION 0 ');
      MDO.Query.SQL.Add(' AS ');
      MDO.Query.SQL.Add(' declare MSG varchar(100); ');
      MDO.Query.SQL.Add(' begin ');
      MDO.Query.SQL.Add('   if ((inserting or updating) and new.COD_ESTOQUE is null) then ');
      MDO.Query.SQL.Add('     exception USER_EXCEPTION ''CÃ³digo do estoque nÃ£o pode ser null''; ');
      MDO.Query.SQL.Add(' ');
      MDO.Query.SQL.Add('   if (not exists(select * from ESTOQUE E where E.COD_ESTOQUE = coalesce(new.COD_ESTOQUE, old.COD_ESTOQUE))) then ');
      MDO.Query.SQL.Add('     exception USER_EXCEPTION ''NÃ£o foi encontrado um estoque com o cÃ³digo '' || coalesce(new.COD_ESTOQUE, old.COD_ESTOQUE); ');
      MDO.Query.SQL.Add(' ');
      MDO.Query.SQL.Add('   MSG = ''lanÃ§amento corretivo manual para saidas de estoque''; ');
      MDO.Query.SQL.Add('   if (inserting) then ');
      MDO.Query.SQL.Add('   begin ');
      MDO.Query.SQL.Add('     execute procedure MOVIMENTO_ESTOQUE_CREATE(new.COD_ESTOQUE, ''SAIDA'', new.QUANTIDADE, ''Incluindo'' || MSG, new.COD_LANCSAI, ''LANCSAI''); ');
      MDO.Query.SQL.Add('   end ');
      MDO.Query.SQL.Add('   else ');
      MDO.Query.SQL.Add('   begin ');
      MDO.Query.SQL.Add('     execute procedure MOVIMENTO_ESTOQUE_CREATE(old.COD_ESTOQUE, ''ENTRADA'', old.QUANTIDADE, ''Excluindo'' || MSG, new.COD_LANCSAI, ''LANCSAI''); ');
      MDO.Query.SQL.Add('   end ');
      MDO.Query.SQL.Add(' end ');
      MDO.Query.SQL.Add('  ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;
  except
    MessageDlg('Falha ao criar Trigger LANCSAI para a tabela LANCSAI.',
      mtWarning, [mbOK], 0);
    Result := False;
  end;
end;

function TFAtualizaBanco.SetFksEstoque: Boolean;
begin
  try
    Result := True;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('  delete from estoque where not exists (select * from subproduto where subproduto.cod_subproduto = estoque.cod_subprod) ');
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select r.RDB$INDEX_NAME from RDB$INDICES r ');
    MDO.QConsulta.SQL.Add(' where r.RDB$INDEX_NAME = ''FK_ESTOQUE_1''      ');
    MDO.QConsulta.Open;

    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' ALTER TABLE ESTOQUE ADD CONSTRAINT FK_ESTOQUE_1 FOREIGN KEY (COD_SUBPROD) REFERENCES SUBPRODUTO (COD_SUBPRODUTO) ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;
  except
    MessageDlg('Falha ao criar chave estrangeira subproduto para a tabela estoque.', mtWarning, [mbOK], 0);
    Result := False;
  end;
end;

function TFAtualizaBanco.SetPksSubproduto: Boolean;
begin
  try
    Result := True;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add('  delete from estoque where not exists (select * from subproduto where subproduto.cod_subproduto = estoque.cod_subprod) ');
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select r.RDB$INDEX_NAME from RDB$INDICES r ');
    MDO.QConsulta.SQL.Add(' where r.RDB$INDEX_NAME = ''PK_SUBPRODUTO''      ');
    MDO.QConsulta.Open;

    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' ALTER TABLE SUBPRODUTO ADD CONSTRAINT PK_SUBPRODUTO PRIMARY KEY (COD_SUBPRODUTO) ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;
  except
    MessageDlg('Falha ao criar chave primária para a tabela subproduto.',
      mtWarning, [mbOK], 0);
    Result := False;
  end;
end;

function TFAtualizaBanco.SetPksOrdem: Boolean;
begin
  try
    Result := True;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select r.RDB$INDEX_NAME from RDB$INDICES r ');
    MDO.QConsulta.SQL.Add(' where r.RDB$INDEX_NAME = ''PK_ORDEM''      ');
    MDO.QConsulta.Open;

    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' ALTER TABLE ORDEM ADD CONSTRAINT PK_ORDEM PRIMARY KEY (COD_ORDEM) ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;
  except
    MessageDlg('Falha ao criar chave primária para a tabela Ordem.', mtWarning,
      [mbOK], 0);
    Result := False;
  end;
end;

function TFAtualizaBanco.SetTableMovimentoEstoque: Boolean;
begin
  try
    Result := True;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$GENERATOR_NAME FROM RDB$GENERATORS');
    MDO.QConsulta.SQL.Add('WHERE RDB$GENERATOR_NAME = GEN_MOVIMENTOESTOQUE_ID');
    MDO.QConsulta.Open;

    if MDO.QConsulta.IsEmpty then
    begin

      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add('CREATE GENERATOR ''GEN_MOVIMENTOESTOQUE_ID');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;

      MDO.QConsulta.Close;
      MDO.QConsulta.SQL.Clear;
      MDO.QConsulta.SQL.Add('SET GENERATOR ''GEN_MOVIMENTOESTOQUE_ID'' TO 1 ');
      MDO.QConsulta.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$RELATION_NAME FROM RDB$RELATIONS');
    MDO.QConsulta.SQL.Add('WHERE RDB$RELATION_NAME = ''MOVIMENTOESTOQUE''');
    MDO.QConsulta.Open;

    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE TABLE MOVIMENTOESTOQUE (                ');
      MDO.Query.SQL.Add('     COD_MOVIMENTOESTOQUE   INTEGER NOT NULL,   ');
      MDO.Query.SQL.Add('     COD_ESTOQUE            CHAVE,              ');
      MDO.Query.SQL.Add('     OPERACAO               VARCHAR(10),        ');
      MDO.Query.SQL.Add('     OPERADOR               VARCHAR(10),        ');
      MDO.Query.SQL.Add('     DATAMOVIMENTO          DATE,               ');
      MDO.Query.SQL.Add('     HORAMOVIMENTO          TIME,               ');
      MDO.Query.SQL.Add('     COD_USUARIO            INTEGER,            ');
      MDO.Query.SQL.Add('     QUANTIDADEANTERIOR     NUMERIC(15,4),      ');
      MDO.Query.SQL.Add('     QUANTIDADEMOVIMENTADO  NUMERIC(15,4),      ');
      MDO.Query.SQL.Add('     QUANTIDADEPOSTERIOR    NUMERIC(15,4),      ');
      MDO.Query.SQL.Add('     HISTORICO              VARCHAR(100),       ');
      MDO.Query.SQL.Add('     ORIGEM_ID              INTEGER,            ');
      MDO.Query.SQL.Add('     ORIGEM_TIPO            VARCHAR(100))       ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select r.RDB$INDEX_NAME from RDB$INDICES r ');
    MDO.QConsulta.SQL.Add(' where r.RDB$INDEX_NAME = ''FK_MOVIMENTOESTOQUE_1''      ');
    MDO.QConsulta.Open;

    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' ALTER TABLE MOVIMENTOESTOQUE ADD CONSTRAINT        ');
      MDO.Query.SQL.Add('     FK_MOVIMENTOESTOQUE_1 FOREIGN KEY (COD_ESTOQUE)');
      MDO.Query.SQL.Add('     REFERENCES ESTOQUE (COD_ESTOQUE)               ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;

      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE UNIQUE INDEX MOVIMENTOESTOQUE_IDX1 ON   ');
      MDO.Query.SQL.Add('  MOVIMENTOESTOQUE (COD_MOVIMENTOESTOQUE)       ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;

    end;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$TRIGGER_NAME FROM RDB$TRIGGERS');
    MDO.QConsulta.SQL.Add('WHERE RDB$TRIGGER_NAME = ''MOVIMENTOESTOQUE_AID0');
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      {/* Trigger: MOVIMENTOESTOQUE_AID0 */}
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE OR ALTER TRIGGER MOVIMENTOESTOQUE_AID0          ');
      MDO.Query.SQL.Add('     FOR MOVIMENTOESTOQUE                               ');
      MDO.Query.SQL.Add(' ACTIVE AFTER INSERT OR DELETE POSITION 0               ');
      MDO.Query.SQL.Add(' AS                                                     ');
      MDO.Query.SQL.Add(' declare variable VALOR_NEW float;                      ');
      MDO.Query.SQL.Add(' declare variable VALOR_OLD float;                      ');
      MDO.Query.SQL.Add(' begin                                                  ');
      MDO.Query.SQL.Add('   VALOR_NEW = new.QUANTIDADEMOVIMENTADO;               ');
      MDO.Query.SQL.Add('   VALOR_OLD = old.QUANTIDADEMOVIMENTADO;               ');
      MDO.Query.SQL.Add(' ');
      MDO.Query.SQL.Add('   if ((inserting)                                      ');
      MDO.Query.SQL.Add('       AND (new.OPERACAO = ''ENTRADA'')) then           ');
      MDO.Query.SQL.Add('   begin                                                ');
      MDO.Query.SQL.Add('     update ESTOQUE E set                               ');
      MDO.Query.SQL.Add('         E.ESTFISICO = E.ESTFISICO + :VALOR_NEW,        ');
      MDO.Query.SQL.Add('         E.ESTRESERV = E.ESTRESERV + :VALOR_NEW,        ');
      MDO.Query.SQL.Add('         E.ESTSALDO = E.ESTSALDO + :VALOR_NEW,          ');
      MDO.Query.SQL.Add('         E.ESTPED = E.ESTPED + :VALOR_NEW,              ');
      MDO.Query.SQL.Add('         E.ESTOQUE4CASAS = cast(E.ESTSALDO + :VALOR_NEW ');
      MDO.Query.SQL.Add('                            as numeric(18,4)),          ');
      MDO.Query.SQL.Add('         E.exportar = ''1''                             ');
      MDO.Query.SQL.Add('     where                                              ');
      MDO.Query.SQL.Add('         E.COD_ESTOQUE = new.COD_ESTOQUE;               ');
      MDO.Query.SQL.Add('   end                                                  ');
      MDO.Query.SQL.Add('   if ((deleting) and (new.OPERACAO = ''ENTRADA'')) then ');
      MDO.Query.SQL.Add('   begin                                                ');
      MDO.Query.SQL.Add('     update ESTOQUE E set                               ');
      MDO.Query.SQL.Add('       E.ESTFISICO = E.ESTFISICO - :VALOR_OLD,          ');
      MDO.Query.SQL.Add('       E.ESTRESERV = E.ESTRESERV - :VALOR_OLD,          ');
      MDO.Query.SQL.Add('       E.ESTSALDO = E.ESTSALDO - :VALOR_OLD,            ');
      MDO.Query.SQL.Add('       E.ESTPED = E.ESTPED - :VALOR_OLD,                ');
      MDO.Query.SQL.Add('       E.ESTOQUE4CASAS = cast(E.ESTSALDO - :VALOR_OLD   ');
      MDO.Query.SQL.Add('                         as numeric(18,4)),             ');
      MDO.Query.SQL.Add('       E.exportar = ''2''                               ');
      MDO.Query.SQL.Add('     where                                              ');
      MDO.Query.SQL.Add('       E.COD_ESTOQUE = new.COD_ESTOQUE;                 ');
      MDO.Query.SQL.Add('   end                                                  ');
      MDO.Query.SQL.Add('   if ((inserting) and (new.OPERACAO = ''SAIDA'')) then ');
      MDO.Query.SQL.Add('   begin                                                ');
      MDO.Query.SQL.Add('     update ESTOQUE E set                               ');
      MDO.Query.SQL.Add('       E.ESTFISICO = E.ESTFISICO - :VALOR_NEW,          ');
      MDO.Query.SQL.Add('       E.ESTRESERV = E.ESTRESERV - :VALOR_NEW,          ');
      MDO.Query.SQL.Add('       E.ESTSALDO = E.ESTSALDO - :VALOR_NEW,            ');
      MDO.Query.SQL.Add('       E.ESTPED = E.ESTPED - :VALOR_NEW,                ');
      MDO.Query.SQL.Add('       E.ESTOQUE4CASAS = cast(E.ESTSALDO - :VALOR_NEW   ');
      MDO.Query.SQL.Add('                         as numeric(18,4)),             ');
      MDO.Query.SQL.Add('       E.exportar = ''3''                               ');
      MDO.Query.SQL.Add('     where                                              ');
      MDO.Query.SQL.Add('       E.COD_ESTOQUE = new.COD_ESTOQUE;                 ');
      MDO.Query.SQL.Add('   end                                                  ');
      MDO.Query.SQL.Add('   if ((deleting) and (new.OPERACAO = ''SAIDA''))  then ');
      MDO.Query.SQL.Add('   begin                                                ');
      MDO.Query.SQL.Add('     update ESTOQUE E set                               ');
      MDO.Query.SQL.Add('       E.ESTFISICO = E.ESTFISICO + :VALOR_OLD,          ');
      MDO.Query.SQL.Add('       E.ESTRESERV = E.ESTRESERV + :VALOR_OLD,          ');
      MDO.Query.SQL.Add('       E.ESTSALDO = E.ESTSALDO + :VALOR_OLD,            ');
      MDO.Query.SQL.Add('       E.ESTPED = E.ESTPED + :VALOR_OLD,                ');
      MDO.Query.SQL.Add('       E.ESTOQUE4CASAS = cast(E.ESTSALDO                ');
      MDO.Query.SQL.Add('           + :VALOR_OLD as numeric(18,4)),              ');
      MDO.Query.SQL.Add('       E.exportar = ''4''                               ');
      MDO.Query.SQL.Add('     where                                              ');
      MDO.Query.SQL.Add('       E.COD_ESTOQUE = new.COD_ESTOQUE;                 ');
      MDO.Query.SQL.Add('   end                                                  ');
      MDO.Query.SQL.Add(' end                                                    ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add('SELECT RDB$TRIGGER_NAME FROM RDB$TRIGGERS');
    MDO.QConsulta.SQL.Add('WHERE RDB$TRIGGER_NAME = ''MOVIMENTOESTOQUE_BI');
    MDO.QConsulta.Open;
    if MDO.QConsulta.IsEmpty then
    begin
      {/* Trigger: MOVIMENTOESTOQUE_BI */}
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE OR ALTER TRIGGER MOVIMENTOESTOQUE_BI    ');
      MDO.Query.SQL.Add('        FOR MOVIMENTOESTOQUE                    ');
      MDO.Query.SQL.Add(' ACTIVE BEFORE INSERT POSITION 0                ');
      MDO.Query.SQL.Add(' as                                             ');
      MDO.Query.SQL.Add(' begin                                          ');
      MDO.Query.SQL.Add('   if (new.cod_movimentoestoque is null) then   ');
      MDO.Query.SQL.Add('     new.cod_movimentoestoque =                 ');
      MDO.Query.SQL.Add('     gen_id(gen_movimentoestoque_id,1);         ');
      MDO.Query.SQL.Add(' end                                            ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;
  except
    MessageDlg('Falha ao criar estrutura de Movimento de Estoque.', mtWarning,
      [mbOK], 0);
    Result := False;
  end;
end;

function TFAtualizaBanco.SetPksItemProdOrdem: Boolean;
begin
  try
    Result := True;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select r.RDB$INDEX_NAME from RDB$INDICES r ');
    MDO.QConsulta.SQL.Add(' where r.RDB$INDEX_NAME = ''ITPRODORD_IDX1''      ');
    MDO.QConsulta.Open;

    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' CREATE UNIQUE INDEX ITPRODORD_IDX1 ON ITPRODORD (COD_ITPRODORD) ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' UPDATE RDB$RELATION_FIELDS SET RDB$NULL_FLAG = 1 WHERE (RDB$FIELD_NAME = ''COD_ITPRODORD'') AND (RDB$RELATION_NAME = ''ITPRODORD''); ');
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select r.RDB$INDEX_NAME from RDB$INDICES r ');
    MDO.QConsulta.SQL.Add(' where r.RDB$INDEX_NAME = ''PK_ITPRODORD''      ');
    MDO.QConsulta.Open;

    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' ALTER TABLE ITPRODORD ADD CONSTRAINT PK_ITPRODORD PRIMARY KEY (COD_ITPRODORD) ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;

  except
    MessageDlg('Falha ao criar chave primária para a tabela ITProdOrd.',
      mtWarning, [mbOK], 0);
    Result := False;
  end;
end;

function TFAtualizaBanco.SetFksItemProdOrdem: Boolean;
begin
  try
    Result := True;

    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' Delete from itprodord where not exists (select * from ordem where ordem.cod_ordem = itprodord.cod_ordem) ');
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select r.RDB$INDEX_NAME from RDB$INDICES r ');
    MDO.QConsulta.SQL.Add(' where r.RDB$INDEX_NAME = ''FK_ITPRODORD_1''      ');
    MDO.QConsulta.Open;

    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' ALTER TABLE ITPRODORD ADD CONSTRAINT FK_ITPRODORD_1 FOREIGN KEY (COD_ORDEM) REFERENCES ORDEM (COD_ORDEM) ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;

    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' select r.RDB$INDEX_NAME from RDB$INDICES r ');
    MDO.QConsulta.SQL.Add(' where r.RDB$INDEX_NAME = ''FK_ITPRODORD_2''      ');
    MDO.QConsulta.Open;

    if MDO.QConsulta.IsEmpty then
    begin
      MDO.Query.Close;
      MDO.Query.SQL.Clear;
      MDO.Query.SQL.Add(' ALTER TABLE ITPRODORD ADD CONSTRAINT FK_ITPRODORD_2 FOREIGN KEY (cod_estoque) REFERENCES ESTOQUE (cod_estoque) ');
      MDO.Query.ExecSQL;
      MDO.Transac.CommitRetaining;
    end;

  except
    MessageDlg('Falha ao criar chave primária para a tabela ITProdOrd.',
      mtWarning, [mbOK], 0);
    Result := False;
  end;
end;

//Edmar - 18/11/2015 - inicia as rotinas especiais (aumento de campo que esteja em alguma view por exemplo)
procedure TFAtualizaBanco.StartEspecial;
var
  XCAMPOS, XSQL_VIEW: string;
begin
  if cbMelhoriasEstoque2023.Checked = True then
    //StartMelhoriasEstoque2023;

 //Edmar - 29/09/2015 - Verifica se é preciso atualizar a view VWCHEQUEREC
    if cbChequeRec.Checked then
    begin
      ApagaView('VWCHEQUEREC');

      if not AtualizaTabelaCampo('CHEQUEREC', 'DESTINO', 'VARCHAR(50)') then
        MPainel.Lines.Add('Erro ao atualizar o campo: DESTINO da tabela: CHEQUEREC');

      XCAMPOS :=
        ' COD_CHEQUEREC, NUMAG, NUMCTA, DTLANC, DTVENC, DTMOV, USUARIO, VALOR,NUMCHEQUE, HISTORICO, BANCO, CTACORLAN, CLASSCONTA, CONTA, FECH, COD_MOVBANCO, EMITENTE, CPFEMIT, DESTINO ';
      XSQL_VIEW :=
        'SELECT chequerec.cod_chequerec, chequerec.numagencia, chequerec.numconta, ';
      XSQL_VIEW := XSQL_VIEW +
        ' movbanco.dtlanc, movbanco.dtvenc, movbanco.dtmov, movbanco.cod_usuario, movbanco.valor, ';
      XSQL_VIEW := XSQL_VIEW +
        ' movbanco.numcheque, movbanco.historico, banco.descbanco, ctacor.numctacor, ';
      XSQL_VIEW := XSQL_VIEW +
        ' plncta.classificacao, plncta.descricao, movbanco.fech,movbanco.cod_movbanco,chequerec.emitente, chequerec.cpfemit, chequerec.destino ';
      XSQL_VIEW := XSQL_VIEW +
        ' FROM chequerec Left join movbanco ON chequerec.cod_movbanco = movbanco.cod_movbanco ';
      XSQL_VIEW := XSQL_VIEW +
        ' Left join banco    on banco.cod_banc = chequerec.cod_banco ';
      XSQL_VIEW := XSQL_VIEW +
        ' left join ctacor   On ctacor.cod_ctacor = movbanco.cod_ctacor ';
      XSQL_VIEW := XSQL_VIEW +
        ' left join plncta   On plncta.cod_plncta = movbanco.cod_plncta ';

      if not InsereNovaView('VWCHEQUEREC', XCAMPOS, XSQL_VIEW) then
        MPainel.Lines.Add('Erro ao atualizar view: VWCHEQUEREC');
    end;

  //se estiver marcado faz a rotina pra alterar a descrição do produto
  //antes disso é preciso excluir todas as views que ele está incluso.
  //depois de atualizar, recriar view
  if cbDescProduto.Checked then
  begin
    //apaga as view
    ApagaView('VWLANCENT');
    ApagaView('VWLANCSAI');
    ApagaView('VWSIMILAR');

    //Edmar - 18/11/2015 - Atualiza o campo DESCRICAO na tabela SUBPRODUTO
    if not AtualizaTabelaCampo('SUBPRODUTO', 'DESCRICAO', 'VARCHAR(120)') then
      MPainel.Lines.Add('Erro ao atualizar o campo: DESCRICAO da tabela: SUBPRODUTO');

    //recria as view
    //VWLANCENT
    XCAMPOS :=
      ' COD_LANCENT, COD_ESTOQUE, COD_LOJA, COD_USUARIO, DT_LANCAMENTO, MOTIVO, ';
    XCAMPOS := XCAMPOS +
      'NUMNOTA, QUANTIDADE, CTRLINT, PRODUTO, ANTERIOR, CODFABRICANTE';
    XSQL_VIEW :=
      ' SELECT LANCENT.COD_LANENT, LANCENT.COD_ESTOQUE, LANCENT.COD_LOJA, ';
    XSQL_VIEW := XSQL_VIEW +
      '  LANCENT.COD_USUARIO, LANCENT.DT_LANCAMENTO, LANCENT.MOTIVO, ';
    XSQL_VIEW := XSQL_VIEW +
      '  LANCENT.NUMNOTA, LANCENT.QUANTIDADE, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO, LANCENT.QTDANT, SUBPRODUTO.CODPRODFABR ';
    XSQL_VIEW := XSQL_VIEW + '  FROM LANCENT ';
    XSQL_VIEW := XSQL_VIEW +
      '  LEFT JOIN ESTOQUE ON LANCENT.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE ';
    XSQL_VIEW := XSQL_VIEW +
      '  LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD ';

    if not InsereNovaView('VWLANCENT', XCAMPOS, XSQL_VIEW) then
      MPainel.Lines.Add('Erro ao atualizar view: VWLANCENT');

    //VWLANCSAI
    XCAMPOS :=
      ' COD_LANCSAI, COD_ESTOQUE, COD_LOJA, COD_USUARIO, DT_LANCAMENTO, MOTIVO, ';
    XCAMPOS := XCAMPOS +
      'NUMNOTA, QUANTIDADE, CTRLINT, PRODUTO, ANTERIOR, CODFABRICANTE';
    XSQL_VIEW :=
      ' SELECT LANCSAI.COD_LANCSAI, LANCSAI.COD_ESTOQUE, LANCSAI.COD_LOJA, ';
    XSQL_VIEW := XSQL_VIEW +
      '  LANCSAI.COD_USUARIO, LANCSAI.DT_LANCAMENTO, LANCSAI.MOTIVO, ';
    XSQL_VIEW := XSQL_VIEW +
      '  LANCSAI.NUMNOTA, LANCSAI.QUANTIDADE, SUBPRODUTO.CONTRINT, SUBPRODUTO.DESCRICAO,LANCSAI.QTDANT, SUBPRODUTO.CODPRODFABR ';
    XSQL_VIEW := XSQL_VIEW +
      '  FROM LANCSAI JOIN ESTOQUE ON LANCSAI.COD_ESTOQUE = ESTOQUE.COD_ESTOQUE ';
    XSQL_VIEW := XSQL_VIEW +
      '  LEFT JOIN SUBPRODUTO ON SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD ';

    if not InsereNovaView('VWLANCSAI', XCAMPOS, XSQL_VIEW) then
      MPainel.Lines.Add('Erro ao atualizar view: VWLANCSAI');

    //VWSIMILAR
    XCAMPOS :=
      ' COD_SUBPRODUTO, CODCOMPOSTO, DESCRICAO, CODBARRA, MARCA, COD_INTERNO, COD_PRODUTO, COD_ESTOQUE, COD_LOJA, ';
    XCAMPOS := XCAMPOS +
      'ULTCOMPRA, ULTVENDA, ESTFISICO, VENDVARP, VANDATAP, VENDATAV, VENDVARV, CODFABRICANTE, CONTRINT, ';
    XCAMPOS := XCAMPOS +
      'VLRBONIFIC, ESPECIFICACAO, MARK, VLRUNITCOMPRA, LOCALESTANTE, ESTLOJA, ATIVO ';

    XSQL_VIEW :=
      ' SELECT  SUBPRODUTO.COD_SUBPRODUTO, SUBPRODUTO.CODCOMPOSTO, SUBPRODUTO.DESCRICAO, ';
    XSQL_VIEW := XSQL_VIEW +
      '  SUBPRODUTO.CODBARRA, SUBPRODUTO.MARCA, SUBPRODUTO.COD_INTERNO, SUBPRODUTO.COD_PRODUTO, ESTOQUE.COD_ESTOQUE, ';
    XSQL_VIEW := XSQL_VIEW +
      '  ESTOQUE.COD_LOJA, ESTOQUE.ULTCOMPRA, ESTOQUE.ULTVENDA, ESTOQUE.ESTFISICO, ESTOQUE.VENDVARP, ';
    XSQL_VIEW := XSQL_VIEW +
      '  ESTOQUE.VENDATAP, ESTOQUE.VENDATAV, ESTOQUE.VENDVARV, SUBPRODUTO.CODPRODFABR, SUBPRODUTO.CONTRINT, ESTOQUE.VLRBONIFIC, ';
    XSQL_VIEW := XSQL_VIEW +
      '  SUBPRODUTO.ESPECIFICACAO, SUBPRODUTO.MARK, ESTOQUE.VLRUNITCOMP, SUBPRODUTO.LOCALESTANTE, ';
    XSQL_VIEW := XSQL_VIEW + '  ESTOQUE.ESTLOJA, SUBPRODUTO.ATIVO ';
    XSQL_VIEW := XSQL_VIEW + '  FROM SUBPRODUTO ';
    XSQL_VIEW := XSQL_VIEW +
      '  JOIN ESTOQUE ON SUBPRODUTO.COD_SUBPRODUTO = ESTOQUE.COD_SUBPROD ';

    if not InsereNovaView('VWSIMILAR', XCAMPOS, XSQL_VIEW) then
      MPainel.Lines.Add('Erro ao atualizar view: VWSIMILAR');
  end;

  if cbVwLanCaixa.Checked then
  begin
    ApagaView('VWLANCAIXA');

    //Matheus - 15/03/2016 - Altera o tamanho do campo HISTÓRICO da tabela LANCAIXA para 200
    if AtualizaTabelaCampo('LANCAIXA', 'HISTORICO', 'VARCHAR(200)') = false then
      MPainel.Lines.Add('Erro ao alterar o campo HISTORICO da tabela: LANCAIXA');

    //recria a view
    XCAMPOS :=
      ' COD_LANC, COD_ABCAIXA, COD_PLNCTAFIL, DTLANC, HISTORICO, TIPCAI, ';
    XCAMPOS := XCAMPOS + ' TIPO, VALOR, CLASSIFICACAO, COD_LOJA, DESCRICAO, ';
    XCAMPOS := XCAMPOS +
      ' COD_USUARIO, LOGIN, DOC, ESTRU, TIPOGERADOR, COD_GERADOR ';

    XSQL_VIEW :=
      ' SELECT LANCAIXA.COD_LANC, LANCAIXA.COD_ABCAIXA, LANCAIXA.COD_PLNCTAFIL, ';
    XSQL_VIEW := XSQL_VIEW +
      ' LANCAIXA.DTLANC, LANCAIXA.HISTORICO, LANCAIXA.TIPCAI, LANCAIXA.TIPO, ';
    XSQL_VIEW := XSQL_VIEW +
      ' LANCAIXA.VALOR, PLNCTA.CLASSIFICACAO, PLNCTA.COD_FILIAL, PLNCTA.DESCRICAO, ';
    XSQL_VIEW := XSQL_VIEW +
      ' LANCAIXA.COD_USUARIO, USUARIO.LOGIN, LANCAIXA.DOC, LANCAIXA.ESTRU, ';
    XSQL_VIEW := XSQL_VIEW + ' LANCAIXA.TIPOGERADOR, LANCAIXA.COD_GERADOR ';
    XSQL_VIEW := XSQL_VIEW + ' FROM LANCAIXA ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN PLNCTA ON LANCAIXA.COD_PLNCTAFIL = PLNCTA.COD_PLNCTA ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN USUARIO ON USUARIO.CODUSUARIO = LANCAIXA.COD_USUARIO ';

    if not InsereNovaView('VWLANCAIXA', XCAMPOS, XSQL_VIEW) then
      MPainel.Lines.Add('Erro ao atualizar view: VWLANCAIXA');
  end;

  if cbVwMovBanco.Checked then
  begin
    ApagaView('VWMOVBANCO');
    ApagaView('VWCHEQUEREC');

    //Matheus - 15/03/2016 - Altera o tamanho do campo HISTÓRICO da tabela MOVBANCO para 200
    if AtualizaTabelaCampo('MOVBANCO', 'HISTORICO', 'VARCHAR(200)') = false then
      MPainel.Lines.Add('Erro ao alterar o campo HISTORICO da tabela: MOVBANCO');

    //recria a view VWMOVBANCO
    XCAMPOS :=
      ' COD_MOVBANCO, COBRANCA, COD_CTACOR, COD_PLNCTA, COD_USUARIO, DTLANC, ';
    XCAMPOS := XCAMPOS + ' DTMOV, DTVENC, FECH, HISTORICO, HORALANC, TIPOOP, ';
    XCAMPOS := XCAMPOS +
      ' VALOR, CLASSIFICACAO, CONTA, NUMCHEQUE, VER, COD_ABBANCO, MARK, DESTINATARIOCH ';

    XSQL_VIEW :=
      ' SELECT MOVBANCO.COD_MOVBANCO, MOVBANCO.COBRANCA, MOVBANCO.COD_CTACOR, MOVBANCO.COD_PLNCTA, ';
    XSQL_VIEW := XSQL_VIEW +
      ' MOVBANCO.COD_USUARIO, MOVBANCO.DTLANC, MOVBANCO.DTMOV, MOVBANCO.DTVENC, ';
    XSQL_VIEW := XSQL_VIEW +
      ' MOVBANCO.FECH, MOVBANCO.HISTORICO, MOVBANCO.HORALANC, MOVBANCO.TIPOOP, ';
    XSQL_VIEW := XSQL_VIEW +
      ' MOVBANCO.VALOR, PLNCTA.CLASSIFICACAO, PLNCTA.DESCRICAO, MOVBANCO.NUMCHEQUE, ';
    XSQL_VIEW := XSQL_VIEW +
      ' MOVBANCO.VER, MOVBANCO.COD_ABBANCO, MOVBANCO.MARK, MOVBANCO.DESTINATARIOCH ';
    XSQL_VIEW := XSQL_VIEW + ' FROM MOVBANCO ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN PLNCTA ON MOVBANCO.COD_PLNCTA=PLNCTA.COD_PLNCTA ';

    if not InsereNovaView('VWMOVBANCO', XCAMPOS, XSQL_VIEW) then
      MPainel.Lines.Add('Erro ao atualizar view: VWMOVBANCO');

    //recria a view VWCHEQUEREC
    XCAMPOS := ' COD_CHEQUEREC, NUMAG, NUMCTA, DTLANC, DTVENC, DTMOV, ';
    XCAMPOS := XCAMPOS +
      ' USUARIO, VALOR, NUMCHEQUE, HISTORICO, BANCO, CTACORLAN, CLASSCONTA, CONTA, ';
    XCAMPOS := XCAMPOS + ' FECH, COD_MOVBANCO, EMITENTE, CPFEMIT, DESTINO ';

    XSQL_VIEW :=
      ' SELECT CHEQUEREC.COD_CHEQUEREC, CHEQUEREC.NUMAGENCIA, CHEQUEREC.NUMCONTA,  MOVBANCO.DTLANC, ';
    XSQL_VIEW := XSQL_VIEW +
      ' MOVBANCO.DTVENC, MOVBANCO.DTMOV, MOVBANCO.COD_USUARIO, MOVBANCO.VALOR,  MOVBANCO.NUMCHEQUE, ';
    XSQL_VIEW := XSQL_VIEW +
      ' MOVBANCO.HISTORICO, BANCO.DESCBANCO, CTACOR.NUMCTACOR,  PLNCTA.CLASSIFICACAO, PLNCTA.DESCRICAO, ';
    XSQL_VIEW := XSQL_VIEW +
      ' MOVBANCO.FECH,MOVBANCO.COD_MOVBANCO,CHEQUEREC.EMITENTE, CHEQUEREC.CPFEMIT, CHEQUEREC.DESTINO ';
    XSQL_VIEW := XSQL_VIEW + ' FROM CHEQUEREC ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN MOVBANCO ON CHEQUEREC.COD_MOVBANCO = MOVBANCO.COD_MOVBANCO ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN BANCO ON BANCO.COD_BANC = CHEQUEREC.COD_BANCO ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN CTACOR ON CTACOR.COD_CTACOR = MOVBANCO.COD_CTACOR ';
    XSQL_VIEW := XSQL_VIEW +
      ' LEFT JOIN PLNCTA ON PLNCTA.COD_PLNCTA = MOVBANCO.COD_PLNCTA ';

    if not InsereNovaView('VWCHEQUEREC', XCAMPOS, XSQL_VIEW) then
      MPainel.Lines.Add('Erro ao atualizar view: VWCHEQUEREC');
  end;
end;

procedure TFAtualizaBanco.BtnAtualizaCustoEstoqueClick(Sender: TObject);
var
  xQuantidadeEstoque, xQuantidadeLancada, xValorCustoProduto,
    xValorUltimoValorCusto: Real;
begin
  try
    {[INSERINDO CUSTO DE COMPRA]}
    {Remove todos registros de CUSTOESTOQUEEMPRESA}
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' DELETE FROM CUSTOESTOQUEEMPRESA ');
    MDO.Query.ExecSQL;
    MDO.Transac.CommitRetaining;

    {1. Busca todo o estoque positivo;}
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' SELECT ESTOQUE.COD_ESTOQUE, ESTOQUE.ESTFISICO ');
    MDO.QConsulta.SQL.Add(' FROM ESTOQUE ');
    MDO.QConsulta.SQL.Add(' WHERE ESTOQUE.ESTFISICO > 0 ');
    MDO.QConsulta.SQL.Add(' ORDER BY COD_ESTOQUE ');
    MDO.QConsulta.Open;
    MDO.QConsulta.First;
    {****************************}
    ProgressBar1.Position := 30;
    ProgressBar1.Refresh;
    MPainel.Lines.Add('Iniciando atualização dos custos de estoque');

    xQuantidadeEstoque := 0;
    while not MDO.QConsulta.Eof do
    begin
      xValorUltimoValorCusto := 0;
      {2. Soma o estoque + tudo que foi vendido para o produto em março;}
      MDO.QAlx1.Close;
      MDO.QAlx1.SQL.Clear;
      MDO.QAlx1.SQL.Add(' SELECT SUM(ITPRODORD.QTD) QTDE_VENDIDA ');
      MDO.QAlx1.SQL.Add(' FROM ITPRODORD ');
      MDO.QAlx1.SQL.Add(' WHERE (ITPRODORD.DATA BETWEEN :INI AND :FIN) AND (ITPRODORD.COD_ESTOQUE = :COD_ESTOQUE) ');
      MDO.QAlx1.ParamByName('INI').AsString := '01/03/2019';
      MDO.QAlx1.ParamByName('FIN').AsString := '31/03/2019';
      MDO.QAlx1.ParamByName('COD_ESTOQUE').AsInteger :=
        MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger;
      MDO.QAlx1.Open;

      xQuantidadeEstoque := MDO.QConsulta.FieldByName('ESTFISICO').AsCurrency +
        MDO.QAlx1.FieldByName('QTDE_VENDIDA').AsCurrency;
      {******************************}
      {
      3. Ordena pelos mais novos o que foi comprado para o produto, debitando da quantidade comprada;
        3.1. Exemplo: a soma do estoque + o que foi vendido, é de 7. Foi localizado 5 itens de compra comprados para o produto
          1 - est: 1; custo: 20;
          2 - est: 3; custo: 15;
          3 - est: 2; custo: 17;
          4 - est: 10: custo 11;
          5 - est: 1; custo 20;
        Salvaremos os estoques totais de 1, 2, 3 e para o estoque 4, pegamos 1 unidade do estoque comprado, o que faz
        com que feche a quantidade 7 de custos.
        Respeitando o valor do item X o valor da compra, realizando os rateios necessários. Também salvar como data
        do custo, a data do item;
      }
      MDO.QAlx1.Close;
      MDO.QAlx1.SQL.Clear;
      MDO.QAlx1.SQL.Add(' SELECT ITENSPEDC.COD_ITENSPEDC, ITENSPEDC.COD_PEDCOMPRA, ITENSPEDC.DATA, ITENSPEDC.QTDEPROD QTDE, ');
      MDO.QAlx1.SQL.Add(' ITENSPEDC.COD_ESTOQUE, ITENSPEDC.VALORTOTAL ');
      MDO.QAlx1.SQL.Add(' FROM ITENSPEDC ');
      MDO.QAlx1.SQL.Add(' WHERE (ITENSPEDC.COD_ESTOQUE = :COD_ESTOQUE) AND (ITENSPEDC.QTDEPROD > 0) ');
      MDO.QAlx1.SQL.Add(' ORDER BY DATA DESC ');
      MDO.QAlx1.ParamByName('COD_ESTOQUE').AsInteger :=
        MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger;
      MDO.QAlx1.Open;
      MDO.QAlx1.First;

      while not MDO.QAlx1.Eof do
      begin
        if xQuantidadeEstoque > 0 then
        begin
          //busca o total dos itens e o valor total do pedido de compra
          MDO.QAlx2.Close;
          MDO.QAlx2.SQL.Clear;
          MDO.QAlx2.SQL.Add(' SELECT PEDCOMPRA.VALOR - SUM(ITENSPEDC.VALORTOTAL) DIFF, SUM(ITENSPEDC.VALORTOTAL) VALORTOTALITENS ');
          MDO.QAlx2.SQL.Add(' FROM ITENSPEDC ');
          MDO.QAlx2.SQL.Add(' INNER JOIN PEDCOMPRA ON PEDCOMPRA.COD_PEDCOMP = ITENSPEDC.COD_PEDCOMPRA ');
          MDO.QAlx2.SQL.Add(' WHERE PEDCOMPRA.COD_PEDCOMP = :COD_PEDCOMPRA ');
          MDO.QAlx2.SQL.Add(' GROUP BY PEDCOMPRA.VALOR ');
          MDO.QAlx2.ParamByName('COD_PEDCOMPRA').AsInteger :=
            MDO.QAlx1.FieldByName('COD_PEDCOMPRA').AsInteger;
          MDO.QAlx2.Open;

          xValorCustoProduto
            := (
            MDO.QAlx1.FieldByName('VALORTOTAL').AsCurrency
            + (MDO.QAlx1.FieldByName('VALORTOTAL').AsCurrency /
            MDO.QAlx2.FieldByName('VALORTOTALITENS').AsCurrency)
            * MDO.QAlx2.FieldByName('DIFF').AsCurrency
            ) / MDO.QAlx1.FieldByName('QTDE').AsCurrency;

          if xValorCustoProduto = 0 then
            xValorCustoProduto := MDO.QAlx1.FieldByName('VALORTOTAL').AsCurrency
              / MDO.QAlx1.FieldByName('QTDE').AsCurrency;

          //Armazena o ultimo valor de custo do estoque para salvar posteriormente
          //nesse caso o ultimo valor de estoque vai ser o primeiro da lista porque
          //a ordenação é sempre da compra mais nova para a mais antiga
          if xValorUltimoValorCusto = 0 then
            xValorUltimoValorCusto := xValorCustoProduto;

          //debita da quantidade o que foi usado do item
          if MDO.QAlx1.FieldByName('QTDE').AsCurrency > xQuantidadeEstoque then
            xQuantidadeLancada := xQuantidadeEstoque
          else
            xQuantidadeLancada := MDO.QAlx1.FieldByName('QTDE').AsCurrency;

          xQuantidadeEstoque := xQuantidadeEstoque - xQuantidadeLancada;
          //
          InserirItemCustoProduto(MDO.QAlx1.FieldByName('COD_ESTOQUE').AsInteger, MDO.QAlx1.FieldByName('COD_ITENSPEDC').AsInteger,
            xValorCustoProduto, xQuantidadeLancada,
            MDO.QAlx1.FieldByName('DATA').AsDateTime, 'PEDCOMPRA');
        end;
        MDO.QAlx1.Next;
      end;

      {4. Salva o ultimo valor de custo salvo para o valor de custo nfe do produto}
      if xValorUltimoValorCusto > 0 then
      begin
        DMESTOQUE.Alx.Close;
        DMESTOQUE.Alx.SQL.Clear;
        DMESTOQUE.Alx.SQL.Add(' UPDATE ESTOQUE SET ESTOQUE.VALCUSTONFE = :VALOR_CUSTO WHERE ESTOQUE.COD_ESTOQUE = :COD_ESTOQUE ');
        DMESTOQUE.Alx.ParamByName('VALOR_CUSTO').AsCurrency :=
          xValorUltimoValorCusto;
        DMESTOQUE.Alx.ParamByName('COD_ESTOQUE').AsInteger :=
          MDO.QConsulta.FieldByName('COD_ESTOQUE').AsInteger;
        DMESTOQUE.Alx.ExecSQL;
      end;

      MDO.QConsulta.Next;
    end;
    MDO.Transac.CommitRetaining;
    DMESTOQUE.TransacEstoque.CommitRetaining;

    {
    [DANDO SAÍDA POSTERIOR DO CUSTO VIA ORDEM E VENDA - CONSIDERANDO A DATA DO ITPRODORD PARA MARÇO]
    1. Ordena os itens pelos mais antigos;
    2. Usa a função AplicaSaidaCustoEstoque para "vender" o item respeitando a quantidade;
    }
    DMESTOQUE.Alx.Close;
    DMESTOQUE.Alx.SQL.Clear;
    DMESTOQUE.Alx.SQL.Add(' SELECT ITPRODORD.COD_ORDEM CODIGO_PEDIDO, ITPRODORD.COD_ESTOQUE, ');
    DMESTOQUE.Alx.SQL.Add(' ITPRODORD.COD_ITPRODORD COD_ITEM, ITPRODORD.QTD QTDE, ITPRODORD.DATA ');
    DMESTOQUE.Alx.SQL.Add(' FROM ITPRODORD ');
    DMESTOQUE.Alx.SQL.Add(' WHERE ITPRODORD.DATA BETWEEN :INI AND :FIN ');
    DMESTOQUE.Alx.SQL.Add(' ORDER BY DATA, COD_ITEM ');
    DMESTOQUE.Alx.ParamByName('INI').AsString := '01/03/2019';
    DMESTOQUE.Alx.ParamByName('FIN').AsString := '31/03/2019';
    DMESTOQUE.Alx.Open;

    ProgressBar1.Position := 70;
    ProgressBar1.Refresh;
    MPainel.Lines.Add('Ajustando vendas do mês de março');

    while not DMESTOQUE.Alx.Eof do
    begin
      AplicaSaidaCustoEstoque(DMESTOQUE.Alx.FieldByName('COD_ESTOQUE').AsInteger,
        DMESTOQUE.Alx.FieldByName('COD_ITEM').AsInteger, 'ORDEM',
        DMESTOQUE.Alx.FieldByName('QTDE').AsInteger);

      DMESTOQUE.Alx.Next;
    end;

    MDO.Transac.CommitRetaining;

    ProgressBar1.Position := 100;
    ProgressBar1.Refresh;
    MPainel.Lines.Add('Atualização dos custos de estoque finalizada com sucesso');
  except
    on E: Exception do
    begin
      ShowMessage('O processo de atualização dos custos não foi finalizado. Error: '
        + E.Message);
      MDO.Transac.RollbackRetaining;
      DMESTOQUE.TransacEstoque.RollbackRetaining;
    end;
  end;
end;

procedure TFAtualizaBanco.btnNormalizaParcrClick(Sender: TObject);
begin
  try
    //
    MDO.Query.Close;
    MDO.Query.SQL.Clear;
    MDO.Query.SQL.Add(' UPDATE PARCELACR SET PARCELACR.VALORSERV = PARCELACR.VALOR * PARCELACR.PERVLRSERV / 100, ');
    MDO.Query.SQL.Add(' PARCELACR.VALORPROD = PARCELACR.VALOR * (100 - PARCELACR.PERVLRSERV) / 100 ');
    MDO.Query.SQL.Add(' WHERE (PARCELACR.FECH = ''N'') AND (PARCELACR.PERVLRSERV > 0) ');
    MDO.Query.ExecSQL;

    //busca pelas ordens de serviço que estão desnormalizadas e calcula o percentual de serviço da ordem de serviço
    MDO.QConsulta.Close;
    MDO.QConsulta.SQL.Clear;
    MDO.QConsulta.SQL.Add(' SELECT (ORDEM.TOTSERV / ORDEM.TOTORD) * 100 PERCSERVICO, PARCELACR.COD_PARCELACR ');
    MDO.QConsulta.SQL.Add(' FROM PARCELACR ');
    MDO.QConsulta.SQL.Add(' JOIN CTARECEBER ON CTARECEBER.COD_CTARECEBER = PARCELACR.COD_CTARECEBER ');
    MDO.QConsulta.SQL.Add(' JOIN ORDEM ON CTARECEBER.COD_GERADOR = ORDEM.COD_ORDEM ');
    MDO.QConsulta.SQL.Add(' WHERE (PARCELACR.FECH = ''N'') AND (PARCELACR.PERVLRSERV = 0 OR PARCELACR.PERVLRSERV IS NULL) ');
    MDO.QConsulta.SQL.Add(' AND (ORDEM.TOTSERV > 0) ');
    MDO.QConsulta.Open;
    MDO.QConsulta.First;

    //atualiza a parcela com os valores necessário
    while not MDO.QConsulta.Eof do
    begin
      MDO.QAlx1.Close;
      MDO.QAlx1.SQL.Clear;
      MDO.QAlx1.SQL.Add(' UPDATE PARCELACR SET PARCELACR.PERVLRSERV = :PERCSERV, ');
      MDO.QAlx1.SQL.Add(' PARCELACR.VALORSERV = PARCELACR.VALOR * :PERCSERV / 100, ');
      MDO.QAlx1.SQL.Add(' PARCELACR.VALORPROD = PARCELACR.VALOR * (100 - :PERCSERV) / 100 ');
      MDO.QAlx1.SQL.Add(' WHERE PARCELACR.COD_PARCELACR = :COD_PARCELA ');
      MDO.QAlx1.ParamByName('PERCSERV').AsCurrency :=
        MDO.QConsulta.FieldByName('PERCSERVICO').AsCurrency;
      MDO.QAlx1.ParamByName('COD_PARCELA').AsInteger :=
        MDO.QConsulta.FieldByName('COD_PARCELACR').AsInteger;
      MDO.QAlx1.ExecSQL;

      MDO.QConsulta.Next;
    end;

    MDO.Transac.CommitRetaining;
    MPainel.Lines.Add('Normalização finalizada com sucesso');
  except
    on E: Exception do
    begin
      ShowMessage('O processo de normalização não foi finalizado. Error: ' +
        E.Message);
      MDO.Transac.RollbackRetaining;
    end;
  end;
end;

procedure TFAtualizaBanco.BitBtn1Click(Sender: TObject);
begin
  SetPksEstoque;
end;

procedure TFAtualizaBanco.BitBtn11Click(Sender: TObject);
begin
  SetTriggerITENSPEDVEN_AIUD0;
end;

procedure TFAtualizaBanco.BitBtn2Click(Sender: TObject);
begin
  SetPksSubproduto;
end;

procedure TFAtualizaBanco.BitBtn3Click(Sender: TObject);
begin
  SetFksEstoque;
end;

procedure TFAtualizaBanco.BitBtn9Click(Sender: TObject);
begin
  SetPksOrdem;
end;

procedure TFAtualizaBanco.BitBtn4Click(Sender: TObject);
begin
  SetPksItemProdOrdem;
end;

procedure TFAtualizaBanco.BitBtn5Click(Sender: TObject);
begin
  SetFksItemProdOrdem;
end;

procedure TFAtualizaBanco.BitBtn6Click(Sender: TObject);
begin
  SetTableMovimentoEstoque;
end;

procedure TFAtualizaBanco.BitBtn7Click(Sender: TObject);
begin
  SetTriggerESTOQUE_AI0;
end;

procedure TFAtualizaBanco.BitBtn8Click(Sender: TObject);
begin
  SetTriggerITENSPEDC_AIUD0;
end;

procedure TFAtualizaBanco.BitBtn10Click(Sender: TObject);
begin
  SetTriggerESTOQUE_AI0;
end;

procedure TFAtualizaBanco.BitBtn12Click(Sender: TObject);
begin
  SetTriggerITPRODORD_AIUD0;
end;

procedure TFAtualizaBanco.BitBtn13Click(Sender: TObject);
begin
  SetTriggerLANCENT_AIUD0;
end;

procedure TFAtualizaBanco.BitBtn15Click(Sender: TObject);
begin
  SetTriggerLANCSAI_AIUD0;
end;

end.
