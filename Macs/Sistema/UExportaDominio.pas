unit UExportaDominio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls,IBQuery, ExtCtrls, UPadrao, Mask,
  ComCtrls;

type
  TFExportaDominio = class(TFPadrao)
    PanelPerFIscal: TPanel;
    Shape1: TShape;
    b: TGroupBox;
    BtnExportar: TBitBtn;
    cbLancBancarios: TCheckBox;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    EdDataFim: TDateTimePicker;
    EdDataIni: TDateTimePicker;
    procedure BtnExportarClick(Sender: TObject);
    //Paulo 20/05/2011: Gera arquivo para clientes
    procedure GeraArquivoClientes;
    //Paulo 20/05/2011:verica se existe diretório
    procedure verificaDiretorio(const dir: String);
    //Paulo 20/05/2011: Gera arquivo para fornecedores
    procedure GeraArquivoFornecedores;
    procedure BtnFechaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    //Paulo 23/05/2011: Atualiza cliente
    procedure AtualizaCliente;
    //Paulo 23/05/2011: Atualiza Fornecedor
    procedure AtualizaFornecedor;
    //Paulo 24/05/2011: Atualiza Estoque
    procedure AtualizaEstoque;
    //Paulo 23/05/2011: Gera arquivo de Produtos
    procedure GeraArquivoProdutos;
    //Paulo 25/05/2011: Gera arquivo de notas de entrada
    procedure GeraArquivoNotas(Xtipo: String);
    //Paulo 25/05/2011: Gera dados de detalhe
    procedure DadosDetalhe(Xtipo: String);
    //Paulo 25/05/2011: Gera dados de imposto
    procedure DadosImpostos(Xtipo:String;XcodPed:Integer);
    //Paulo 26/05/2011: Gera dados de produtos
    procedure DadosProdutos(Xtipo:String;XCodPed:Integer);
    //Paulo 27/05/2011: Gera dados de frete
    procedure DadosFrete(Xtipo:String);
    //Edmar - 16/10/2015 - Gera lançamentos bancários
    procedure GeraLancBancarios;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExportaDominio: TFExportaDominio;
  XAux,XLinha,Xmens,XPeriodoFiscal:String;
  XBase: TIBQuery;
  XTexto: TextFile;
  Xsequencia: Integer;
  xArquivo: TextFile;
implementation

uses UDMMacs, Alxorprn, Alxor32, UDMPessoa, DB, UDMEstoque, AlxMessage,
  UDMFinanc, UDMCaixa, UDMFiscal, UDMEntrada, UDMSaida, UDmServ;

{$R *.dfm}

procedure TFExportaDominio.BtnExportarClick(Sender: TObject);
begin
   XPeriodoFiscal:=DMMACS.TPeriodoFiscal.FieldByName('DESCRICAO').AsString;
   XPeriodoFiscal:=TiraCaracter(XPeriodoFiscal, '/');
   XPeriodoFiscal:=TiraCaracter(XPeriodoFiscal, '(');
   XPeriodoFiscal:=TiraCaracter(XPeriodoFiscal, ')');
   Xmens:='';

   //Edmar - 16/10/2015 - realiza filtros 
   if EdDataIni.Date > EdDataFim.Date then
   begin
       Mensagem(' A T E N Ç Ã O ', 'A data inicial do filtro não pode ultrapassar a data final.', '', 1, 1, False, 'A');
       Exit;
   end;
   
   if not cbLancBancarios.Checked then
   begin
      Mensagem('Exportação', 'Informe um filtro para fazer a exportação', '', 1, 1, False, 'a');
      Exit;
   end;
   //
   //Edmar - 16/10/2015 - Verifica qual exportação realizar
   if cbLancBancarios.Checked then
       GeraLancBancarios;

   MessageDlg('Exportação ocorreu com sucesso no diretório C:\MZR\Arquivos\Contabilidade', mtInformation, [mbOK], 0);
end;

procedure TFExportaDominio.verificaDiretorio(const dir: String);
var
   Diretorio: String;
begin
   if not DirectoryExists(dir)
   then begin
       ForceDirectories(dir);
   end;
end;
procedure TFExportaDominio.GeraArquivoClientes;
var
   XTexto: TextFile;
   XAux: String;

begin
      try
         XLinha:='';  
         verificaDiretorio('C:\Mzr\Arquivos\Exportação\'+XPeriodoFiscal);

         If FileExists('C:\MZR\Arquivos\Exportação\'+XPeriodoFiscal+'\Clientes.txt') then
             DeleteFile('C:\MZR\Arquivos\Exportação\'+XPeriodoFiscal+'\Clientes.txt');

         //Cria arquivo txt para clientes
         AssignFile(XTexto, 'C:\MZR\Arquivos\Exportação\'+XPeriodoFiscal+'\Clientes.txt');
         {$I-}
         Reset(XTexto);
         {$I+}
         if IOResult = 0 then
             Append(XTexto)
         else
             Rewrite(XTexto);
         //Paulo 20/05/2011: Seleciona dados da tabela clientes
         FiltraTabela(DMPESSOA.TCliente,'CLIENTE','','','');
         //Paulo 20/05/2011: Seleciona cod ibge da cidade
         DMPESSOA.TCliente.First;
         while not DMPESSOA.TCliente.Eof do
         begin

             FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_PESSOA',IntToStr(DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsInteger),'');
             //Paulo 20/05/2011: Seleciona cod ibge da cidade e o cep
             DMPESSOA.TALX.Close;
             DMPESSOA.TALX.SQL.Clear;
             DMPESSOA.TALX.SQL.Add('select cidade.cod_ibge, pessoa.cep from pessoa');
             DMPESSOA.TALX.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
             DMPESSOA.TALX.SQL.Add('left join cliente on pessoa.cod_pessoa = cliente.cod_pessoa');
             DMPESSOA.TALX.SQL.Add('where pessoa.cod_pessoa = :CODPESSOA');
             DMPESSOA.TALX.ParamByName('CODPESSOA').AsInteger:= DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger;
             DMPESSOA.TALX.Open;

             XLinha:=ConcatEspacoDir('22',2);
             XLinha:=XLinha+ConcatEspacoDir(Copy(IntToStr(DMMACS.TEmpresa.FieldByName('COD_EXPORT').AsInteger),1,7),7);
             XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.WCliente.FieldByName('UF_ESTADO').AsString,1,2),2);
             XLinha:=XLinha+ConcatEspacoDir('',7);
             XLinha:=XLinha+ConcatEspacoDir(Copy(IntToStr(DMPESSOA.TALX.FieldByName('COD_IBGE').AsInteger),1,7),7);
             XLinha:=XLinha+ConcatEspacoDir('',10);
             XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.WCliente.FieldByName('NOME').AsString,1,40),40);
             XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.WCliente.FieldByName('ENDERECO').AsString,1,40),40);
             XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.WCliente.FieldByName('ENDNUMERO').AsString,1,7),7);
             XLinha:=XLinha+ConcatEspacoDir('',30);
             XAux:=TiraCaracter(DMPESSOA.TALX.FieldByName('CEP').AsString, '-');
             XLinha:=XLinha+ConcatEspacoDir(XAux,8);
             XLinha:=XLinha+ConcatEspacoDir('',14);

             if(FiltraTabela(DMPESSOA.TPessoaJ,'PESSOAJ','COD_PESSOA',IntToStr(DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsInteger),''))=True then
                XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString,1,20),20)
             else
                XLinha:=XLinha+ConcatEspacoDir('',20);

             XAux:=TiraCaracter(DMPESSOA.WCliente.FieldByName('TELREL').AsString,'(');
             XAux:=TiraCaracter(XAux,')');
             XAux:=TiraCaracter(XAux,'-');
             //XLinha:=XLinha+ConcatEspacoDir(Trim(Copy(XAux,3,8)),14);
             XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.WCliente.FieldByName('TELREL').AsString,1,14),14);
             XLinha:=XLinha+ConcatEspacoDir('',14);
             XLinha:=XLinha+ConcatEspacoDir('N',1);
             if DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString = 'SIMPLES' then
                XLinha:=XLinha+ConcatEspacoDir('N',1)
             else
                XLinha:=XLinha+ConcatEspacoDir('S',1);

             if(FiltraTabela(DMPESSOA.TPessoaJ,'PESSOAJ','COD_PESSOA',IntToStr(DMPESSOA.TCliente.FieldByName('COD_PESSOA').AsInteger),''))=True
             then  begin
                XLinha:=XLinha+ConcatEspacoDir('1',1);
                XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.TPessoaJ.FieldByName('INSC_MUN').AsString,1,20),20);
             end
             else begin
                XLinha:=XLinha+ConcatEspacoDir('2',1);
                XLinha:=XLinha+ConcatEspacoDir('',20);
             end;

             XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.WCliente.FieldByName('BAIRRO').AsString,1,20),20);
             XLinha:=XLinha+ConcatEspacoDir(Trim(Copy(XAux,1,2)),4);
             XLinha:=XLinha+ConcatEspacoDir('',5);
             XLinha:=XLinha+ConcatEspacoDir('55',7);
             XLinha:=XLinha+ConcatEspacoDir('',9);
             XLinha:=XLinha+ConcatEspacoDir('',100);


             DMPESSOA.TCliente.Next;

             Writeln(XTexto, XLinha);
             XLinha := '';

         end;
         CloseFile(Xtexto);
         AtualizaCliente;
         Mensagem('Clientes', 'Exportação de Clientes finalizado com sucesso', '', 1, 1, False, 'i');
         DMPESSOA.TransacPessoa.CommitRetaining;

      except
           Mensagem('Clientes', 'Problemas ao exportar Clientes, informe o suporte!', '', 1, 1, False, 'e');
           CloseFile(Xtexto);
           DMPESSOA.TransacPessoa.RollbackRetaining;
      end;
end;

procedure TFExportaDominio.GeraArquivoFornecedores;
var
   XTexto: TextFile;
   XAux: String;

begin
      try
         XLinha:='';
         verificaDiretorio('C:\Mzr\Arquivos\Exportação\'+XPeriodoFiscal);

         If FileExists('C:\MZR\Arquivos\Exportação\'+XPeriodoFiscal+'\Fornecedores.txt') then
             DeleteFile('C:\MZR\Arquivos\Exportação\'+XPeriodoFiscal+'\Fornecedores.txt');

         //Cria arquivo txt para clientes
         AssignFile(XTexto, 'C:\MZR\Arquivos\Exportação\'+XPeriodoFiscal+'\Fornecedores.txt');
         {$I-}
         Reset(XTexto);
         {$I+}
         if IOResult = 0 then
             Append(XTexto)
         else
             Rewrite(XTexto);
         //Paulo 20/05/2011: Seleciona dados da tabela clientes
         FiltraTabela(DMPESSOA.TFornecedor,'Fornecedor','','','');
         //Paulo 20/05/2011: Seleciona cod ibge da cidade
         DMPESSOA.TFornecedor.First;
         while not DMPESSOA.TFornecedor.Eof do
         begin

             FiltraTabela(DMPESSOA.WFornecedor,'VWFORNEC','COD_PESSOA',IntToStr(DMPESSOA.TFornecedor.FieldByName('COD_PESSOA').AsInteger),'');
             //Paulo 20/05/2011: Seleciona cod ibge da cidade e o cep
             DMPESSOA.TALX.Close;
             DMPESSOA.TALX.SQL.Clear;
             DMPESSOA.TALX.SQL.Add('select estado.uf_estado,cidade.cod_ibge, pessoa.cep, pessoa.endnumero from pessoa');
             DMPESSOA.TALX.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
             DMPESSOA.TALX.SQL.Add('left join fornecedor on pessoa.cod_pessoa = fornecedor.cod_pessoa');
             DMPESSOA.TALX.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
             DMPESSOA.TALX.SQL.Add('where pessoa.cod_pessoa = :CODPESSOA');
             DMPESSOA.TALX.ParamByName('CODPESSOA').AsInteger:= DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsInteger;
             DMPESSOA.TALX.Open;

             XLinha:=ConcatEspacoDir('11',2);
             XLinha:=XLinha+ConcatEspacoDir(Copy(IntToStr(DMMACS.TEmpresa.FieldByName('COD_EXPORT').AsInteger),1,7),7);
             XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.TALX.FieldByName('UF_ESTADO').AsString,1,2),2);
             XLinha:=XLinha+ConcatEspacoDir('',7);
             XLinha:=XLinha+ConcatEspacoDir(Copy(IntToStr(DMPESSOA.TALX.FieldByName('COD_IBGE').AsInteger),1,7),7);
             XLinha:=XLinha+ConcatEspacoDir('',10);
             XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.WFornecedor.FieldByName('NOME').AsString,1,40),40);
             XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.WFornecedor.FieldByName('ENDERECO').AsString,1,40),40);
             XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.TALX.FieldByName('ENDNUMERO').AsString,1,7),7);
             XLinha:=XLinha+ConcatEspacoDir('',30);
             XAux:=TiraCaracter(DMPESSOA.TALX.FieldByName('CEP').AsString, '-');
             XLinha:=XLinha+ConcatEspacoDir(XAux,8);
             XLinha:=XLinha+ConcatEspacoDir('',14);

             if(FiltraTabela(DMPESSOA.TPessoaJ,'PESSOAJ','COD_PESSOA',IntToStr(DMPESSOA.TFornecedor.FieldByName('COD_PESSOA').AsInteger),''))=True then
                XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString,1,20),20)
             else
                XLinha:=XLinha+ConcatEspacoDir('',20);

             XAux:=TiraCaracter(DMPESSOA.WFornecedor.FieldByName('TELREL').AsString,'(');
             XAux:=TiraCaracter(XAux,')');
             XAux:=TiraCaracter(XAux,'-');
             //XLinha:=XLinha+ConcatEspacoDir(Copy(XAux,3,8),14);
             XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.WFornecedor.FieldByName('TELREL').AsString,1,14),14);
             XLinha:=XLinha+ConcatEspacoDir('',14);
             XLinha:=XLinha+ConcatEspacoDir('N',1);
             if DMMACS.TEmpresa.FieldByName('TIPOEMPRESA').AsString = 'SIMPLES' then
                XLinha:=XLinha+ConcatEspacoDir('N',1)
             else
                XLinha:=XLinha+ConcatEspacoDir('S',1);

             if(FiltraTabela(DMPESSOA.TPessoaJ,'PESSOAJ','COD_PESSOA',IntToStr(DMPESSOA.TFornecedor.FieldByName('COD_PESSOA').AsInteger),''))=True
             then  begin
                XLinha:=XLinha+ConcatEspacoDir('1',1);
                XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.TPessoaJ.FieldByName('INSC_MUN').AsString,1,20),20);
             end
             else begin
                XLinha:=XLinha+ConcatEspacoDir('2',1);
                XLinha:=XLinha+ConcatEspacoDir('',20);
             end;

             XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.WFornecedor.FieldByName('BAIRRO').AsString,1,20),20);
             XLinha:=XLinha+ConcatEspacoDir(Copy(XAux,1,2),4);
             XLinha:=XLinha+ConcatEspacoDir('55',7);
             XLinha:=XLinha+ConcatEspacoDir('',9);
             XLinha:=XLinha+ConcatEspacoDir('',100);


             DMPESSOA.TFornecedor.Next;

             Writeln(XTexto, XLinha);
             XLinha := '';

         end;
         CloseFile(Xtexto);
         AtualizaFornecedor;
         Mensagem('Fornecedores', 'Exportação de Fornecedores finalizado com sucesso', '', 1, 1, False, 'i');
         DMPESSOA.TransacPessoa.CommitRetaining;

      except
           Mensagem('Fornecedores', 'Problemas ao exportar Fornecedores, informe o suporte!', '', 1, 1, False, 'e');
           CloseFile(Xtexto);
           DMPESSOA.TransacPessoa.RollbackRetaining;
      end;
end;

procedure TFExportaDominio.BtnFechaClick(Sender: TObject);
begin
   Try
		Close;
	Except
   End;
end;

procedure TFExportaDominio.FormActivate(Sender: TObject);
begin
   Caption:='Exportação Domínio';
   EdDataIni.DateTime := Now();
   EdDataFim.DateTime := Now(); 
end;

procedure TFExportaDominio.AtualizaCliente;
begin    {
   FiltraTabela(DMPESSOA.TCliente,'CLIENTE','ATUALIZAR','1','');
   DMPESSOA.TCliente.First;
   while not DMPESSOA.TCliente.Eof do
   begin
      DMPESSOA.TCliente.Edit;
      DMPESSOA.TCliente.FieldByName('ATUALIZAR').AsString:='0';
      DMPESSOA.TCliente.Post;

      DMPESSOA.TCliente.Next;
   end;
          }
end;

procedure TFExportaDominio.AtualizaFornecedor;
begin   {
   FiltraTabela(DMPESSOA.TFornecedor,'FORNECEDOR','ATUALIZAR','1','');
   DMPESSOA.TFornecedor.First;
   while not DMPESSOA.TFornecedor.Eof do
   begin
      DMPESSOA.TFornecedor.Edit;
      DMPESSOA.TFornecedor.FieldByName('ATUALIZAR').AsString:='0';
      DMPESSOA.TFornecedor.Post;

      DMPESSOA.TFornecedor.Next;
   end;
         }
end;

procedure TFExportaDominio.AtualizaEstoque;
begin   {
   FiltraTabela(DMESTOQUE.TEstoque,'ESTOQUE','EXPORTAR','1','');
   DMESTOQUE.TEstoque.First;
   while not DMESTOQUE.TEstoque.Eof do
   begin
      DMESTOQUE.TEstoque.Edit;
      DMESTOQUE.TEstoque.FieldByName('EXPORTAR').AsString:='0';
      DMESTOQUE.TEstoque.Post;

      DMESTOQUE.TEstoque.Next;
   end;
         }
end;

procedure TFExportaDominio.GeraArquivoProdutos;
begin
   try
         XLinha:='';
         verificaDiretorio('C:\Mzr\Arquivos\Exportação\'+XPeriodoFiscal);

         If FileExists('C:\MZR\Arquivos\Exportação\'+XPeriodoFiscal+'\Produtos.txt') then
             DeleteFile('C:\MZR\Arquivos\Exportação\'+XPeriodoFiscal+'\Produtos.txt');

         //Cria arquivo txt para clientes
         AssignFile(XTexto, 'C:\MZR\Arquivos\Exportação\'+XPeriodoFiscal+'\Produtos.txt');
         {$I-}
         Reset(XTexto);
         {$I+}
         if IOResult = 0 then
             Append(XTexto)
         else
             Rewrite(XTexto);
         //Paulo 20/05/2011: Seleciona dados da tabela estoque
         FiltraTabela(DMESTOQUE.TEstoque,'ESTOQUE','','','');


         DMESTOQUE.TEstoque.First;
         while not DMESTOQUE.TEstoque.Eof do
         begin

             FiltraTabela(DMESTOQUE.TSubProd,'subproduto','COD_SUBPRODUTO',IntToStr(DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsInteger),'');

             if  not DMESTOQUE.TSubProd.IsEmpty then
             begin
                 XLinha:=ConcatEspacoDir('6',1);
                 XLinha:=XLinha+ConcatEspacoDir(Copy(DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString,1,14),14);
                 XLinha:=XLinha+ConcatEspacoDir(Copy(IntToStr(DMMACS.TEmpresa.FieldByName('COD_EXPORT').AsInteger),1,7),7);
                 XLinha:=XLinha+ConcatEspacoDir('1',7);
                 XLinha:=XLinha+ConcatEspacoDir('',10);
                 XLinha:=XLinha+ConcatEspacoDir(Copy(DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString,1,40),40);
                 XLinha:=XLinha+ConcatEspacoDir('',6);
                 XLinha:=XLinha+ConcatEspacoDir('',13);
                 XLinha:=XLinha+ConcatEspacoDir('',11);
                 XLinha:=XLinha+ConcatEspacoDir('',11);
                 //Paulo 28/06/2011: Verifica se a posição do estoque esta negativa, se estiver lança como 0
                 if(DMESTOQUE.TEstoque.FieldByName('ESTFISICO').asFloat * DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsFloat)> 0  then
                    XAux:=TiraCaracter(FloatToStr(DMESTOQUE.TEstoque.FieldByName('ESTFISICO').asFloat * DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsFloat),',')
                 else
                    XAux:='0';
                 XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);
                 XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

                 XAux:=TiraCaracter(CurrToStr(DMESTOQUE.TEstoque.FieldByName('IPI_VND').AsCurrency),',');
                 if XAux <>'0' then
                   XLinha:=XLinha+ConcatEspacoDir(XAux,5)
                 else
                   XLinha:=XLinha+ConcatEspacoDir('',5);
                 XLinha:=XLinha+ConcatEspacoDir('',40);
                 XLinha:=XLinha+ConcatEspacoDir(Copy(DMESTOQUE.TSubProd.FieldByName('NCM').AsString,1,8),8);
                 XLinha:=XLinha+ConcatEspacoDir('',7);
                 XLinha:=XLinha+ConcatEspacoDir('',7);
                 XLinha:=XLinha+ConcatEspacoDir('',14);
                 XLinha:=XLinha+ConcatEspacoDir('N',1);

                 //Paulo 23/05/2011: Seleciona o cst do produto
                 DMESTOQUE.Alx.SQL.Clear;
                 DMESTOQUE.Alx.SQL.Add('select cst.cod_sit_trib from cst where cst.cod_cst = :CODCST');
                 DMESTOQUE.Alx.ParamByName('CODCST').AsInteger:=DMESTOQUE.TSubProd.FieldByName('COD_CST').AsInteger;
                 DMESTOQUE.Alx.Open;

                 XLinha:=XLinha+ConcatEspacoDir(Copy(DMESTOQUE.Alx.FieldByName('COD_SIT_TRIB').AsString,1,7),7);
                 XLinha:=XLinha+ConcatEspacoDir('',17);
                 XLinha:=XLinha+ConcatEspacoDir('',1);
                 XLinha:=XLinha+ConcatEspacoDir('',14);
                 XLinha:=XLinha+ConcatEspacoDir('',7);
                 XLinha:=XLinha+ConcatEspacoDir(Copy(DateToStr(DMMACS.TPeriodoFiscal.FieldByName('DTFINAL').AsDateTime),1,10),10);
                 XLinha:=XLinha+ConcatEspacoDir('',7);
                 XLinha:=XLinha+ConcatEspacoDir('',7);
                 XLinha:=XLinha+ConcatEspacoDir('N',1);
                 XLinha:=XLinha+ConcatEspacoDir('N',1);
                 XLinha:=XLinha+ConcatEspacoDir('',7);
                 XLinha:=XLinha+ConcatEspacoDir('N',1);
                 XLinha:=XLinha+ConcatEspacoDir('',7);
                 XLinha:=XLinha+ConcatEspacoDir('N',1);

                 //Paulo 23/05/2011: Seleciona a unidade do produto
                 DMESTOQUE.Alx.SQL.Clear;
                 DMESTOQUE.Alx.SQL.Add('select unidade.sigla_unid from unidade where unidade.cod_unidade = :CODUN');
                 DMESTOQUE.Alx.ParamByName('CODUN').AsInteger:=DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsInteger;
                 DMESTOQUE.Alx.Open;

                 XLinha:=XLinha+ConcatEspacoDir('',2);
                 XLinha:=XLinha+ConcatEspacoDir('3',1);
                 XLinha:=XLinha+ConcatEspacoDir('N',1);
                 XLinha:=XLinha+ConcatEspacoDir('0000000',7);

                 XAux:=TiraCaracter(CurrToStr(DMMACS.TEmpresa.FieldByName('ICMS').AsCurrency),',');
                 if XAux <>'0' then
                   XLinha:=XLinha+ConcatEspacoDir(XAux,5)
                 else
                   XLinha:=XLinha+ConcatEspacoDir('',5);
                 
                 XLinha:=XLinha+ConcatEspacoDir('O',1);
                 XLinha:=XLinha+ConcatEspacoDir('',1);
                 XLinha:=XLinha+ConcatEspacoDir('',255);
                 XLinha:=XLinha+ConcatEspacoDir('',7);
                 XLinha:=XLinha+ConcatEspacoDir('',7);
                 XLinha:=XLinha+ConcatEspacoDir('',7);

                 //Paulo 24/05/2011: Verifica se é consumo ou mercadoria
                 if DMESTOQUE.TSubProd.FieldByName('USOCONSUMO').AsString = '1' then
                     XLinha:=XLinha+ConcatEspacoDir('7',2)
                 else
                     XLinha:=XLinha+ConcatEspacoDir('0',2);

                 XLinha:=XLinha+ConcatEspacoDir('',2);
                 XLinha:=XLinha+ConcatEspacoDir('',2);
                 XLinha:=XLinha+ConcatEspacoDir('N',1);
                 XLinha:=XLinha+ConcatEspacoDir('',1);
                 XLinha:=XLinha+ConcatEspacoDir('',2);
                 XLinha:=XLinha+ConcatEspacoDir('',1);
                 XLinha:=XLinha+ConcatEspacoDir('',7);
                 XLinha:=XLinha+ConcatEspacoDir(Copy(DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString,1,16),16);
                 XLinha:=XLinha+ConcatEspacoDir('',1);
                 XLinha:=XLinha+ConcatEspacoDir('N',1);
                 XLinha:=XLinha+ConcatEspacoDir('',10);
                 XLinha:=XLinha+ConcatEspacoDir('N',1);
                 XLinha:=XLinha+ConcatEspacoDir('',13);
                 XLinha:=XLinha+ConcatEspacoDir('',7);
                 XLinha:=XLinha+ConcatEspacoDir('',2);

                 //Paulo 24/05/2011: Verifica se usa ECF
                 if DMCAIXA.TCaixa.FieldByName('TIPOCUPOM').AsString = 'ECF' then
                     XLinha:=XLinha+ConcatEspacoDir('S',1)
                 else
                     XLinha:=XLinha+ConcatEspacoDir('N',1);

                 XLinha:=XLinha+ConcatEspacoDir('',1);
                 XLinha:=XLinha+ConcatEspacoDir('',3);
                 XLinha:=XLinha+ConcatEspacoDir('M',1);
                 XLinha:=XLinha+ConcatEspacoDir('',7);

                 XAux:=TiraCaracter(CurrToStr(DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency),',');
                 XLinha:=XLinha+ConcatEspacoDir(ConcatZeroDir(XAux,9),15);

                 XLinha:=XLinha+ConcatEspacoDir('',13);
                 XLinha:=XLinha+ConcatEspacoDir('',13);
                 XLinha:=XLinha+ConcatEspacoDir('',58);


                 DMESTOQUE.TEstoque.Next;

                 Writeln(XTexto, XLinha);
                 XLinha := '';
             end
             else begin
                DMESTOQUE.TEstoque.Next;
             end;
         end;
         CloseFile(Xtexto);
         AtualizaEstoque;
         Mensagem('Produtos', 'Exportação de Produtos finalizado com sucesso', '', 1, 1, False, 'i');
         DMESTOQUE.TEstoque.Transaction.CommitRetaining;

      except
           Mensagem('Produtos', 'Problemas ao exportar Produtos, informe o suporte!', '', 1, 1, False, 'e');
           CloseFile(Xtexto);
           DMESTOQUE.TEstoque.Transaction.RollbackRetaining;
      end;
end;

procedure TFExportaDominio.GeraArquivoNotas(Xtipo: String);
var
   Xi:Integer;
   Xaux,XTabela: String;
begin
   try
         XLinha:='';
         verificaDiretorio('C:\Mzr\Arquivos\Exportação\'+XPeriodoFiscal);

         If FileExists('C:\MZR\Arquivos\Exportação\'+XPeriodoFiscal+'\'+Xtipo+'.txt') then
             DeleteFile('C:\MZR\Arquivos\Exportação\'+XPeriodoFiscal+'\'+Xtipo+'.txt');

         //Cria arquivo txt para notas
         AssignFile(XTexto, 'C:\MZR\Arquivos\Exportação\'+XPeriodoFiscal+'\'+Xtipo+'.txt');
         {$I-}
         Reset(XTexto);
         {$I+}
         if IOResult = 0 then
             Append(XTexto)
         else
             Rewrite(XTexto);

         if Xtipo = 'Entradas' then
         begin
            XBase:= DMENTRADA.TFiscPC;
            XTabela:= 'DOCFIS';
         end;
         if Xtipo = 'Saidas' then
         begin
            XBase:= DMSAIDA.TFiscPV;
            XTabela:= 'DOCFISSAIDA';
         end;

         Xsequencia:=1;
         //////////////CABEÇALHO////////////////
         XLinha:=ConcatEspacoDir('01',2);
         XLinha:=XLinha+ConcatEspacoDir(ConcatZero(IntToStr(DMMACS.TEmpresa.FieldByName('COD_EXPORT').AsInteger),7),7);
         XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMMACS.TEmpresa.FieldByName('CNPJ').AsString,14),14);
         XLinha:=XLinha+ConcatEspacoDir(Copy(DateToStr(DMMACS.TPeriodoFiscal.FieldByName('DTINICIAL').AsDateTime),1,10),10);
         XLinha:=XLinha+ConcatEspacoDir(Copy(DateToStr(DMMACS.TPeriodoFiscal.FieldByName('DTFINAL').AsDateTime),1,10),10);
         XLinha:=XLinha+ConcatEspacoDir('N',1);
         if Xtipo = 'Entradas' then
            XLinha:=XLinha+ConcatEspacoDir('02',2)
         else
            XLinha:=XLinha+ConcatEspacoDir('03',2);

         XLinha:=XLinha+ConcatEspacoDir('00000',5);
         XLinha:=XLinha+ConcatEspacoDir('1',1);
         XLinha:=XLinha+ConcatEspacoDir('18',2);

         Writeln(XTexto, XLinha);
         XLinha := '';
         ////////////////FIM DO CABEÇALHO///////////////

         //Paulo 25/05/2011: Filtra O fiscal pelo periodo fiscal
         FiltraTabela(XBase,XTabela,'COD_PERIODOFISCAL',IntToStr(DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOfISCAL').AsInteger),'AND ('+XTabela+'.NFESTATUS = ''1'') OR ('+XTabela+'.NFESTATUS = ''3'')');
         XBase.First;
         while not XBase.Eof do
         begin
              //Paulo 25/05/2011: Dados detalhe
              DadosDetalhe(Xtipo);
              Writeln(XTexto, XLinha);
              XLinha := '';
             if Xtipo = 'Entradas' then
             begin

                  FiltraTabela(DMENTRADA.TPedC,'PEDCOMPRA','COD_PEDCOMP',IntToStr(XBase.FieldByName('COD_PEDIDO').AsInteger),'');
                  //Paulo 25/05/2011: Dados IMPOSTOS para entrada
                  DadosImpostos(Xtipo,DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger);
                  //Paulo 25/05/2011: Dados PRODUTOS para entrada
                  DadosProdutos(Xtipo,DMENTRADA.TPedC.FieldByName('COD_PEDCOMP').AsInteger);
                  //Paulo 25/05/2011: Dados FRETE para entrada
                  DadosFrete(Xtipo);
             end;
             if Xtipo = 'Saidas' then
             begin
                  
                  FiltraTabela(DMSAIDA.TPedV,'PEDVENDA','COD_PEDVENDA',IntToStr(XBase.FieldByName('COD_PEDIDO').AsInteger),'');
                  //Paulo 25/05/2011: Dados IMPOSTOS para sAIDA
                  DadosImpostos(Xtipo,DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger);
                  //Paulo 25/05/2011: Dados PRODUTOS para SAIDA
                  DadosProdutos(Xtipo,DMSAIDA.TPedV.FieldByName('COD_PEDVENDA').AsInteger);
                  //Paulo 25/05/2011: Dados FRETE para SAIDA
                  DadosFrete(Xtipo);
             end;
             
              XBase.Next;
         end;

         /////////FINALIZADOR///////////////
         XAux:='9';
         for Xi:=1 to 99  do
   	  begin
   	     Xaux:= Xaux+'9';
         end;
         XLinha:=XLinha+ConcatEspacoDir(Xaux,100);

         
         Writeln(XTexto, XLinha);
         XLinha := '';


         CloseFile(Xtexto);
         Mensagem('Notas Fiscais', 'Exportação de Notas '+Xtipo+' finalizado com sucesso', '', 1, 1, False, 'i');

      except
           Mensagem('Notas Fiscais', 'Problemas ao exportar Notas, informe o suporte!', '', 1, 1, False, 'e');
           CloseFile(Xtexto);
      end;
end;

//Paulo 25/05/2011: Gera dados detalhe
procedure TFExportaDominio.DadosDetalhe(Xtipo: String);
var
   XBase1: TIBQuery;
   XTabela1: String;
   XAux,XCampo:String;
   Xi:Integer;

begin
   if Xtipo = 'Entradas' then
   begin
      XBase1:= DMENTRADA.TPedC;
      XTabela1:= 'PEDCOMPRA';
      XCampo:= 'COD_PEDCOMP';
   end;
   if Xtipo = 'Saidas' then
   begin
      XBase1:= DMSAIDA.TPedV;
      XTabela1:= 'PEDVENDA';
      XCampo:= 'COD_PEDVENDA';
   end;

   try
       //Paulo 25/05/2011: Filtra tabela de pedidos
       FiltraTabela(XBase1,XTabela1,XCampo,IntToStr(XBase.FieldByName('COD_PEDIDO').AsInteger),'');
       XLinha:=XLinha+ConcatEspacoDir('02',2);
       XLinha:=XLinha+ConcatEspacoDir(ConcatZero(IntToStr(Xsequencia),7),7);
       XLinha:=XLinha+ConcatEspacoDir(ConcatZero(IntToStr(DMMACS.TEmpresa.FieldByName('COD_EXPORT').AsInteger),7),7);

       //Paulo 25/05/2011: Filtra dados do fornecedor
       if Xtipo = 'Entradas' then
       begin
           FiltraTabela(DMPESSOA.WFornecedor,'VWFORNEC','COD_FORNEC',IntToStr(XBase1.FieldByName('COD_FORNEC').AsInteger),'');
           XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString,14),14);
       end;
       if Xtipo = 'Saidas' then
       begin
           FiltraTabela(DMPESSOA.WCliente,'VWCLIENTE','COD_CLIENTE',IntToStr(XBase1.FieldByName('COD_CLIENTE').AsInteger),'');
           XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString,14),14);
       end;


       XLinha:=XLinha+ConcatEspacoDir('0000036',7);
       XLinha:=XLinha+ConcatEspacoDir('00',2);

       //Paulo 06/06/2011: Verifica se a venda é a vista ou a prazo
       FiltraTabela(DMFINANC.TFormPag,'FORMPAG','COD_FORMPAG',IntToStr(XBase1.FieldByName('COD_FORMPAG').AsInteger),'');
       if DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString = 'À VISTA' then
           XLinha:=XLinha+ConcatEspacoDir('0000003',7)
       else
           XLinha:=XLinha+ConcatEspacoDir('0000004',7);    



       //Paulo 25/05/2011: Filtra dados do cfop
       DMESTOQUE.Alx.Close;
       DMESTOQUE.Alx.SQL.Clear;
       DMESTOQUE.Alx.SQL.Add('select cfop.cfop from cfop where cfop.cod_cfop = :CFOP');
       DMESTOQUE.Alx.ParamByName('CFOP').AsInteger:= XBase.FieldByName('COD_CFOP').AsInteger;
       DMESTOQUE.Alx.Open;
       XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMESTOQUE.Alx.FieldByName('CFOP').AsString,7),7);

       if Xtipo = 'Entradas' then
       begin
          XLinha:=XLinha+ConcatEspacoDir('00',2);
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XBase.FieldByName('NUMDOCFIS').AsString,7),7);
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XBase.FieldByName('SERIE').AsString,7),7);
          XLinha:=XLinha+ConcatEspacoDir('0000000',7);
          XLinha:=XLinha+ConcatEspacoDir(Copy(DateToStr(XBase.FieldByName('DTENTSAID').AsDateTime),1,10),10);
          XLinha:=XLinha+ConcatEspacoDir(Copy(DateToStr(XBase.FieldByName('DTEMISSAO').AsDateTime),1,10),10);

          XAux:=TiraCaracter(XBase.FieldByName('VLRTOTDOCNF').AsString,',');
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);
          XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',30),30);

          //Paulo 25/05/2011: Filtra estado do fornecedor
          DMESTOQUE.Alx.Close;
          DMESTOQUE.Alx.SQL.Clear;
          DMESTOQUE.Alx.SQL.Add('select estado.uf_estado, cidade.cod_ibge from estado');
          DMESTOQUE.Alx.SQL.Add('left join cidade on estado.cod_estado = cidade.cod_estado');
          DMESTOQUE.Alx.SQL.Add('where cidade.cod_cidade = :CIDADE');
          DMESTOQUE.Alx.ParamByName('CIDADE').AsInteger:= DMPESSOA.WFornecedor.FieldByName('COD_CIDADE').AsInteger;
          DMESTOQUE.Alx.Open;
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMESTOQUE.Alx.FieldByName('UF_ESTADO').AsString,2),2);

          if XBase.FieldByName('FRETECONTA').AsString = '1' then
              XLinha:=XLinha+ConcatEspacoDir('C',1)
          else
              XLinha:=XLinha+ConcatEspacoDir('F',1);

          //Paulo 25/05/2011: Verifica se a nota é emissão própria ou terceiros
          if XBase.FieldByName('EMISSAOPROPRIA').AsString = '1' then
             XLinha:=XLinha+ConcatEspacoDir('P',1)
          else
             XLinha:=XLinha+ConcatEspacoDir('T',1);

           XLinha:=XLinha+ConcatEspacoDir('P',1);/////FATO GERADOR CRF VERIFACAR SE É E OU P
           XLinha:=XLinha+ConcatEspacoDir('P',1);/////FATO GERADOR IRRF VERIFACAR SE É E OU P
           XLinha:=XLinha+ConcatEspacoDir(ConcatZero(IntToStr(DMESTOQUE.Alx.FieldByName('COD_IBGE').AsInteger),7),7);
           XLinha:=XLinha+ConcatEspacoDir('0000000',7);
           XLinha:=XLinha+ConcatEspacoDir('0000000',7);
           XLinha:=XLinha+ConcatEspacoDir('',6);
           XLinha:=XLinha+ConcatEspacoDir('',6);
           XLinha:=XLinha+ConcatEspacoDir('0000000',7);
           XLinha:=XLinha+ConcatEspacoDir('',10);

           XAux:=TiraCaracter(XBase.FieldByName('VLRFRETE').AsString,',');
           XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

           XAux:=TiraCaracter(XBase.FieldByName('VLRSEG').AsString,',');
           XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

           XAux:=TiraCaracter(XBase.FieldByName('VLROUTRASDESP').AsString,',');
           XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

           XLinha:=XLinha+ConcatEspacoDir('0000000',7);
           XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
           XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);

           XAux:=TiraCaracter(XBase.FieldByName('VLRTOTPROD').AsString,',');
           XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);
           XLinha:=XLinha+ConcatEspacoDir('0',1);
           XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
           XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
           XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
           XLinha:=XLinha+ConcatEspacoDir('0',1);
           XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XBase.FieldByName('MODELONF').AsString,7),7);
           XLinha:=XLinha+ConcatEspacoDir('0000000',7);
           XLinha:=XLinha+ConcatEspacoDir('0000000',7);

           //Paulo 25/05/2011: Filtra dados do fornecedor
           FiltraTabela(DMPESSOA.TPessoaJ,'PESSOAJ','COD_PESSOA',IntToStr(DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsInteger),'');
           if DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString <> '' then
              XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString,20),20)
           else
              XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',20),20);
           if DMPESSOA.TPessoaJ.FieldByName('INSC_MUN').AsString <> '' then
              XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.TPessoaJ.FieldByName('INSC_MUN').AsString,20),20)
           else
              XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',20),20);

       end;

       if Xtipo = 'Saidas' then
       begin
          XLinha:=XLinha+ConcatEspacoDir(Copy(DMPESSOA.WCliente.FieldByName('UF_ESTADO').AsString,1,2),2);
          XLinha:=XLinha+ConcatEspacoDir('00',2);
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XBase.FieldByName('NUMDOCFIS').AsString,7),7);
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XBase.FieldByName('SERIE').AsString,7),7);
          XLinha:=XLinha+ConcatEspacoDir('0000000',7);
          XLinha:=XLinha+ConcatEspacoDir(Copy(DateToStr(XBase.FieldByName('DTENTSAID').AsDateTime),1,10),10);
          XLinha:=XLinha+ConcatEspacoDir(Copy(DateToStr(XBase.FieldByName('DTEMISSAO').AsDateTime),1,10),10);

          XAux:=TiraCaracter(XBase.FieldByName('VLRTOTDOCNF').AsString,',');
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);
          XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',30),30);

          if XBase.FieldByName('FRETECONTA').AsString = '1' then
               XLinha:=XLinha+ConcatEspacoDir('C',1)
          else
               XLinha:=XLinha+ConcatEspacoDir('F',1);

          //Paulo 25/05/2011: Filtra estado do cliente
          DMESTOQUE.Alx.Close;
          DMESTOQUE.Alx.SQL.Clear;
          DMESTOQUE.Alx.SQL.Add('select cidade.cod_ibge from cidade');
          DMESTOQUE.Alx.SQL.Add('where cidade.cod_cidade = :CIDADE');
          DMESTOQUE.Alx.ParamByName('CIDADE').AsInteger:= DMPESSOA.WCliente.FieldByName('COD_CIDADE').AsInteger;
          DMESTOQUE.Alx.Open;

          XLinha:=XLinha+ConcatEspacoDir(ConcatZero(IntToStr(DMESTOQUE.Alx.FieldByName('cod_ibge').AsInteger),7),7);
          XLinha:=XLinha+ConcatEspacoDir('E',1);/////FATO GERADOR CRF VERIFACAR SE É E OU P
          XLinha:=XLinha+ConcatEspacoDir('E',1);/////FATO GERADOR CRF VERIFACAR SE É E OU P
          XLinha:=XLinha+ConcatEspacoDir('E',1);
          XLinha:=XLinha+ConcatEspacoDir('4',1);
          XLinha:=XLinha+ConcatEspacoDir('',1);
          XLinha:=XLinha+ConcatEspacoDir('0000000',7);
          XLinha:=XLinha+ConcatEspacoDir('0000000',7);
          XLinha:=XLinha+ConcatEspacoDir('0000000',7);
          XLinha:=XLinha+ConcatEspacoDir('',10);
          XLinha:=XLinha+ConcatEspacoDir('0000000',7);

          XAux:=TiraCaracter(XBase.FieldByName('VLRFRETE').AsString,',');
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

          XAux:=TiraCaracter(XBase.FieldByName('VLRSEG').AsString,',');
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

          XAux:=TiraCaracter(XBase.FieldByName('VLROUTRASDESP').AsString,',');
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

          XAux:=TiraCaracter(XBase.FieldByName('VLRTOTPROD').AsString,',');
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);
          XLinha:=XLinha+ConcatEspacoDir('0',1);
          XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
          XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
          XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
          XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XBase.FieldByName('MODELONF').AsString,7),7);
          XLinha:=XLinha+ConcatEspacoDir('0000000',7);
          XLinha:=XLinha+ConcatEspacoDir('0000000',7);
          XLinha:=XLinha+ConcatEspacoDir('0000000',7);
          XLinha:=XLinha+ConcatEspacoDir('00',2);
          XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',50),50);

          //Paulo 25/05/2011: Filtra dados do cliente
          FiltraTabela(DMPESSOA.TPessoaJ,'PESSOAJ','COD_PESSOA',IntToStr(DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsInteger),'');
          if DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString <> '' then
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString,20),20)
          else
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',20),20);
          if DMPESSOA.TPessoaJ.FieldByName('INSC_MUN').AsString <> '' then
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.TPessoaJ.FieldByName('INSC_MUN').AsString,20),20)
          else
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',20),20);

       end;

       XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',300),300);
       XLinha:=XLinha+ConcatEspacoDir(Copy(XBase.FieldByName('NFECHAVE').AsString,1,44),44);
       XLinha:=XLinha+ConcatEspacoDir('000000',6);
       XLinha:=XLinha+ConcatEspacoDir('E',1);
       XLinha:=XLinha+ConcatEspacoDir('0',1);
       XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',44),44);
       XLinha:=XLinha+ConcatEspacoDir('',48);

       Xsequencia:=Xsequencia+1;



   except
       Mensagem('Produtos', 'Problemas ao gerar dados detalhe '+Xtipo+', informe o suporte!', '', 1, 1, False, 'e');
   end;
end;
procedure TFExportaDominio.DadosImpostos(Xtipo:String;XCodPed:Integer);
var
   XBase1: TIBQuery;
   XTabela1: String;
   XCampo:String;
   XVlrSubst,XVlrIPI,XVlrBase,XVlrAliq:Real;
begin
     XVlrAliq:=0;
     XVlrBase:=0;
     XVlrIPI:=0;
     XVlrSubst:=0;
     if Xtipo = 'Entradas' then
     begin
        XBase1:= DMENTRADA.TItemPC;
        XTabela1:= 'ITENSPEDC';
        XCampo:= 'COD_PEDCOMPRA';
     end;
     if Xtipo = 'Saidas' then
     begin
        XBase1:= DMSAIDA.TItemPV;
        XTabela1:= 'ITENSPEDVEN';
        XCampo:= 'COD_PEDVEN';
     end;

     try
         //Paulo 25/05/2011: Filtra tabela DE ITENS
         FiltraTabela(XBase1,XTabela1,XCampo,IntToStr(XcodPed),'');

         XBase1.First;
         while not XBase1.Eof do
         begin

             XVlrAliq:=XVlrAliq+XBase1.FieldByName('VLRICMS').AsCurrency;
             XVlrBase:=XVlrBase+XBase1.FieldByName('VLRICMSSUBS').AsCurrency;
             XVlrIPI:=XVlrIPI+XBase1.FieldByName('VLRIPI').AsCurrency;
             XVlrSubst:=XVlrSubst+XBase1.FieldByName('VLRICMSSUBS').AsCurrency;

             XBase1.Next;

         end;

         XLinha:=XLinha+ConcatEspacoDir('03',2);
         XLinha:=XLinha+ConcatEspacoDir(ConcatZero(IntToStr(Xsequencia),7),7);
         XLinha:=XLinha+ConcatEspacoDir('0000001',7);
         XLinha:=XLinha+ConcatEspacoDir('00000',5);

         XAux:=TiraCaracter(FloatToStr(XVlrBase),',');
         XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

         XAux:=TiraCaracter(XBase1.FieldByName('ALIQICMS').AsString,',');
         XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,5),5);

         XAux:=TiraCaracter(FloatToStr(XVlrAliq),',');
         XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);
         XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
         XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
         if Xtipo = 'Entradas' then
         begin
              XAux:=TiraCaracter(FloatToStr(XVlrIPI),',');
              XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

              XAux:=TiraCaracter(FloatToStr(XVlrSubst),',');
              XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);
         end;

         XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);

         if Xtipo = 'Entradas' then
              XLinha:=XLinha+ConcatEspacoDir('000000',6);

         XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
         XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
         XLinha:=XLinha+ConcatEspacoDir('',74);

         Writeln(XTexto, XLinha);
         XLinha := '';
         
         Xsequencia:=Xsequencia+1;
     Except
       Mensagem('Impostos', 'Problemas ao gerar impostos '+Xtipo+', informe o suporte!', '', 1, 1, False, 'e');
     end;

end;

procedure TFExportaDominio.DadosProdutos(Xtipo:String;XCodPed:Integer);
var
   XBase1: TIBQuery;
   XTabela1: String;
   XCampo:String;
   Xi:Integer;
begin
     if Xtipo = 'Entradas' then
     begin
        XBase1:= DMENTRADA.TItemPC;
        XTabela1:= 'ITENSPEDC';
        XCampo:= 'COD_PEDCOMPRA';
     end;
     if Xtipo = 'Saidas' then
     begin
        XBase1:= DMSAIDA.TItemPV;
        XTabela1:= 'ITENSPEDVEN';
        XCampo:= 'COD_PEDVEN';
     end;
     try
         //Paulo 25/05/2011: Filtra tabela DE ITENS
         FiltraTabela(XBase1,XTabela1,XCampo,IntToStr(XcodPed),'');

         XBase1.First;
         while not XBase1.Eof do
         begin
             FiltraTabela(DMESTOQUE.WSimilar,'VWSIMILAR','COD_ESTOQUE',IntToStr(XBase1.FieldByName('COD_ESTOQUE').AsInteger),'');

             XLinha:=XLinha+ConcatEspacoDir('04',2);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(IntToStr(Xsequencia),7),7);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMESTOQUE.WSimilar.FieldByName('CONTRINT').AsString,14),14);

             Xaux:=TiraCaracter(XBase1.FieldByName('QTDEPROD').AsString,',');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(Xaux,13),13);

             Xaux:=TiraCaracter(FloatToStr((XBase1.FieldByName('VALUNIT').AsFloat * XBase1.FieldByName('QTDEPROD').AsFloat) + XBase1.FieldByName('VLRIPI').AsFloat),',');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

             XAux:=TiraCaracter(XBase1.FieldByName('VLRIPI').AsString,',');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

             XAux:=TiraCaracter(FloatToStr(XBase1.FieldByName('VALUNIT').AsFloat * XBase1.FieldByName('QTDEPROD').AsFloat),',');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

             XLinha:=XLinha+ConcatEspacoDir('0',1);
             XLinha:=XLinha+ConcatEspacoDir('',10);
             XLinha:=XLinha+ConcatEspacoDir('0000000',7);

             XAux:=TiraCaracter(XBase1.FieldByName('VALORTOTAL').AsString,',');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

             XAux:=TiraCaracter(XBase1.FieldByName('DESCPRO').AsString,',');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

             XAux:=TiraCaracter(XBase1.FieldByName('BASEICMS').AsString,',');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

             XAux:=TiraCaracter(XBase1.FieldByName('BASEICMSSUBS').AsString,',');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

             XAux:=TiraCaracter(XBase1.FieldByName('ALIQICMS').AsString,',');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);

             if Xtipo = 'Saidas' then
                XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',17),17);

             XLinha:=XLinha+ConcatEspacoDir('0',1);
             XLinha:=XLinha+ConcatEspacoDir('0000000',7);

             if Xtipo = 'Saidas' then
                XLinha:=XLinha+ConcatEspacoDir('0000',4);

             XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
             XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
             XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
             XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);

             XAux:=TiraCaracter(XBase1.FieldByName('VLRICMS').AsString,',');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,13),13);
             XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
             XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
             XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);

             if Xtipo = 'Entradas' then
                 XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);

             XAux:=TiraCaracter(XBase1.FieldByName('VALUNIT').AsString,',');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,15),15);
             XLinha:=XLinha+ConcatEspacoDir('00000',5);
             XLinha:=XLinha+ConcatEspacoDir('0000000',7);

             XAux:=TiraCaracter(XBase1.FieldByName('ALIQIPI').AsString,',');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XAux,5),5);
             XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
             XLinha:=XLinha+ConcatEspacoDir('00000',5);
             XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);

             if Xtipo = 'Entradas' then
             begin
                   XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XBase1.FieldByName('CFOP').AsString,7),7);
                   XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',20),20);
                   XLinha:=XLinha+ConcatEspacoDir('00000',5);
                   XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                   XLinha:=XLinha+ConcatEspacoDir('00000',5);
                   XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                   XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                   XLinha:=XLinha+ConcatEspacoDir('0000000',7);
                   XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                   XLinha:=XLinha+ConcatEspacoDir('0000000',7);
                   XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                   XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',17),17);
                   XLinha:=XLinha+ConcatEspacoDir('0',1);
                   XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',255),255);
                   XLinha:=XLinha+ConcatEspacoDir('0000000',7);
                   XLinha:=XLinha+ConcatEspacoDir('',10);
                   XLinha:=XLinha+ConcatEspacoDir('',10);
                   XLinha:=XLinha+ConcatEspacoDir('0',1);
                   XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                   XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',255),255);
                   XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',255),255);
             end else
             begin
                 XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',50),50);
                 XLinha:=XLinha+ConcatEspacoDir('',10);
                 XLinha:=XLinha+ConcatEspacoDir('00',2);
                 XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                 XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',50),50);
                 XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',50),50);
                 XLinha:=XLinha+ConcatEspacoDir('00',2);
                 XLinha:=XLinha+ConcatEspacoDir('000000000000000',15);
                 XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                 XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                 XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                 XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                 XLinha:=XLinha+ConcatEspacoDir('',10);
                 XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',20),20);
                 XLinha:=XLinha+ConcatEspacoDir('0000000',7);
                 XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                 XLinha:=XLinha+ConcatEspacoDir('00000',5);
                 XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                 XLinha:=XLinha+ConcatEspacoDir('0000000',7);
                 XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                 XLinha:=XLinha+ConcatEspacoDir('00000',5);
                 XLinha:=XLinha+ConcatEspacoDir('0000000000000',13);
                 XLinha:=XLinha+ConcatEspacoDir('0000000',7);

             end;

             XLinha:=XLinha+ConcatEspacoDir('000',3);
             XLinha:=XLinha+ConcatEspacoDir('',100);


             Writeln(XTexto, XLinha);
             XLinha := '';

             XBase1.Next;
             Xsequencia:=Xsequencia+1;
         end;
     except
       Mensagem('Produtos das Notas', 'Problemas ao gerar dados de produtos '+Xtipo+', informe o suporte!', '', 1, 1, False, 'e');
     end;
end;

//Paulo 27/05/2011: Gera dados de frete
procedure TFExportaDominio.DadosFrete(Xtipo:String);
var
   Xaux:String;
begin
     try
         if XBase.FieldByName('COD_TRANSP').AsInteger <> 0 then
         begin
             //Paulo 27/05/2011: Filtra vw fornecedor
             FiltraTabela(DMPESSOA.WFornecedor,'VWFORNEC','COD_FORNEC',IntToStr(XBase.FieldByName('COD_TRANSP').AsInteger),'');
             //Paulo 27/05/2011: Filtra tabela PessoaJ
             FiltraTabela(DMPESSOA.TPessoaJ,'PESSOAJ','COD_PESSOA',IntToStr(DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsInteger),'');

             if Xtipo = 'Entradas' then
                XLinha:=XLinha+ConcatEspacoDir('14',2);
             if Xtipo = 'Saidas' then
                XLinha:=XLinha+ConcatEspacoDir('18',2);
                
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(IntToStr(Xsequencia),7),7);

             if XBase.FieldByName('FRETECONTA').AsString = '1' then
                XLinha:=XLinha+ConcatEspacoDir('C',1)
             else
                XLinha:=XLinha+ConcatEspacoDir('F',1);

             XLinha:=XLinha+ConcatEspacoDir('1',1);

             if XBase.FieldByName('FRETECONTA').AsString = '1' then
                XLinha:=XLinha+ConcatEspacoDir('E',1)
             else
                XLinha:=XLinha+ConcatEspacoDir('D',1);

             //Paulo 26/05/2011: Seleciona cod ibge da cidade e o cep
             DMPESSOA.TALX.Close;
             DMPESSOA.TALX.SQL.Clear;
             DMPESSOA.TALX.SQL.Add('select estado.uf_estado,pessoa.cep, pessoa.endnumero from pessoa');
             DMPESSOA.TALX.SQL.Add('left join cidade on pessoa.cod_cidade = cidade.cod_cidade');
             DMPESSOA.TALX.SQL.Add('left join fornecedor on pessoa.cod_pessoa = fornecedor.cod_pessoa');
             DMPESSOA.TALX.SQL.Add('left join estado on cidade.cod_estado = estado.cod_estado');
             DMPESSOA.TALX.SQL.Add('where pessoa.cod_pessoa = :CODPESSOA');
             DMPESSOA.TALX.ParamByName('CODPESSOA').AsInteger:= DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsInteger;
             DMPESSOA.TALX.Open;
             Xaux:=TiraCaracter(XBase.FieldByName('PLACA').AsString,'-');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(Xaux,7),7);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XBase.FieldByName('UFPLACA').AsString,2),2);
             XLinha:=XLinha+ConcatEspacoDir('0000000',7);
             XLinha:=XLinha+ConcatEspacoDir('00',2);
             XLinha:=XLinha+ConcatEspacoDir('0000000',7);
             XLinha:=XLinha+ConcatEspacoDir('00',2);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.TPessoaJ.FieldByName('RAZAO_SOCIAL').AsString,60),60);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString,14),14);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString,20),20);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.WFornecedor.FieldByName('ENDERECO').AsString,60),60);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.TALX.FieldByName('ENDNUMERO').AsString,7),7);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.WFornecedor.FieldByName('BAIRRO').AsString,20),20);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',40),40);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.WFornecedor.FieldByName('CIDADE').AsString,7),7);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(DMPESSOA.TALX.FieldByName('UF_ESTADO').AsString,2),2);
             Xaux:=TiraCaracter(DMPESSOA.TALX.FieldByName('CEP').AsString,'-');
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(Xaux,8),8);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XBase.FieldByName('QUANTFRETE').AsString,15),15);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XBase.FieldByName('ESPECIEFRETE').AsString,60),60);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XBase.FieldByName('MARCAFRETE').AsString,60),60);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',60),60);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XBase.FieldByName('PESOLIQ').AsString,15),15);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero(XBase.FieldByName('PESOBRUTO').AsString,15),15);
             XLinha:=XLinha+ConcatEspacoDir('0',1);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',14),14);
             XLinha:=XLinha+ConcatEspacoDir('00',2);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',20),20);
             XLinha:=XLinha+ConcatEspacoDir('0',1);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',14),14);
             XLinha:=XLinha+ConcatEspacoDir('00',2);
             XLinha:=XLinha+ConcatEspacoDir(ConcatZero('0',20),20);
             XLinha:=XLinha+ConcatEspacoDir('0',1);
             XLinha:=XLinha+ConcatEspacoDir('',99);

             Writeln(XTexto, XLinha);
             XLinha := '';

             Xsequencia:=Xsequencia+1;
         end;    
    except
       Mensagem('Frete', 'Problemas ao gerar dados de frete '+Xtipo+' , informe o suporte!', '', 1, 1, False, 'e');
    end;


end;

//Edmar - 16/10/2015 - procedimento auxiliar para gerar os lançamento bancários de exportação
procedure TFExportaDominio.GeraLancBancarios;
var
   xDiretorio: String;
   xLinha: String;
   xData, xDataAnterior, xContaDebito, xContaCredito, xValor, xHistorico: String;
begin
   xDiretorio := 'C:\MZR\Arquivos\Contabilidade\'+XPeriodoFiscal+'LancBancarios';
   //força criação diretorio de exportação
   verificaDiretorio(xDiretorio);

   //filtra os lançamentos bancários com base na data informada
   DMFINANC.TAlx.Close;
   DMFINANC.TAlx.SQL.Clear;
   DMFINANC.TAlx.SQL.Add(' SELECT MOVBANCO.DTMOV DATA, FORNECEDOR.CONTA_CONTABIL CONTABIL_FORNEC, CLIENTE.CONTA_CONTABIL CONTABIL_CLI, ');
   DMFINANC.TAlx.SQL.Add(' CTACOR.CONTA_CONTABIL CONTABIL_CTACOR, MOVBANCO.VALOR, MOVBANCO.HISTORICO, MOVBANCO.TIPOGERADOR TIPO ');
   DMFINANC.TAlx.SQL.Add(' FROM MOVBANCO ');
   DMFINANC.TAlx.SQL.Add(' LEFT JOIN PARCELACR ON (PARCELACR.COD_PARCELACR = MOVBANCO.COD_GERADOR) AND (MOVBANCO.TIPOGERADOR = ''CTAR'') ');
   DMFINANC.TAlx.SQL.Add(' LEFT JOIN CTARECEBER ON CTARECEBER.COD_CTARECEBER = PARCELACR.COD_CTARECEBER ');
   DMFINANC.TAlx.SQL.Add(' LEFT JOIN CLIENTE ON CLIENTE.COD_CLIENTE = CTARECEBER.COD_CLIENTE ');
   DMFINANC.TAlx.SQL.Add(' LEFT JOIN PARCELACP ON (PARCELACP.COD_PARCELACP = MOVBANCO.COD_GERADOR) AND (MOVBANCO.TIPOGERADOR = ''CTAPJ'') ');
   DMFINANC.TAlx.SQL.Add(' LEFT JOIN CTAPAGAR ON CTAPAGAR.COD_CTAPAGAR = PARCELACP.COD_CTAPAGAR ');
   DMFINANC.TAlx.SQL.Add(' LEFT JOIN FORNECEDOR ON FORNECEDOR.COD_FORNEC = CTAPAGAR.COD_FORNEC ');
   DMFINANC.TAlx.SQL.Add(' LEFT JOIN CTACOR ON CTACOR.COD_CTACOR = MOVBANCO.COD_CTACOR ');
   DMFINANC.TAlx.SQL.Add(' WHERE (MOVBANCO.DTMOV BETWEEN (:INICIAL) AND (:FINAL)) AND (SUBSTRING(TRIM(SUBSTRING(MOVBANCO.HISTORICO FROM 1 FOR 8)) FROM 1 FOR 3) = ''[$]'') ');
   DMFINANC.TAlx.SQL.Add(' ORDER BY DTMOV ');
   DMFINANC.TAlx.ParamByName('INICIAL').AsDate := EdDataIni.Date;
   DMFINANC.TAlx.ParamByName('FINAL').AsDate   := EdDataFim.Date;
   DMFINANC.TAlx.Open;
   DMFINANC.TAlx.First;

   if DMFINANC.TAlx.IsEmpty then
   begin
       MessageDlg('Não foi encontrado nenhum lançamento bancário.', mtInformation, [mbOK], 0);
       Exit;
   end;

   DeleteFile(xDiretorio+'\expLancBancarios.txt');
   AssignFile(xArquivo, xDiretorio+'\expLancBancarios.txt');
   Rewrite(xArquivo);//cria arquivo
   
   xLinha := '0';
   //escreve primeira linha
   Writeln(xArquivo, xLinha);

   xLinha := 'data;conta debito;conta credito;valor;historico';
   //escreve segunda linha
   Writeln(xArquivo, xLinha);

   xDataAnterior := DMFINANC.TAlx.FieldByName('DATA').AsString;
   while not DMFINANC.TAlx.Eof do
   begin
       //Edmar - 22/10/2015 - Entradas
       if DMFINANC.TAlx.FieldByName('TIPO').AsString = 'CTAR' then
       begin
           //quando for uma entrada, a conta debito é a conta corrente da empresa
           xContaDebito := DMFINANC.TAlx.FieldByName('CONTABIL_CTACOR').AsString;
           //e a conta credito é a conta contabil do cliente
           xContaCredito := DMFINANC.TAlx.FieldByName('CONTABIL_CLI').AsString;
       end
       else begin
           //quando saídas, a conta debito é a conta contabil do fornecedor
           xContaDebito := DMFINANC.TAlx.FieldByName('CONTABIL_FORNEC').AsString;
           //e a conta credito é a conta corrente da empresa
           xContaCredito := DMFINANC.TAlx.FieldByName('CONTABIL_CTACOR').AsString;
       end;
       
       xData := DMFINANC.TAlx.FieldByName('DATA').AsString;
       xValor := TiraCaracter(TiraCaracter(Format('%f', [DMFINANC.TAlx.FieldByName('VALOR').AsCurrency]), ','), '.');
       xHistorico := DMFINANC.TAlx.FieldByName('HISTORICO').AsString;
       
       //monta a linha do arquivo
       xLinha := Trim(xData)+';'+Trim(xContaDebito)+';'+Trim(xContaCredito)+';'+ConcatZero(Trim(xValor), 15)+';'+Trim(xHistorico)+';';
       if xData <> xDataAnterior then
           Writeln(xArquivo, '0');
           
       //escreve proxima linha
       Writeln(xArquivo, xLinha);
       DMFINANC.TAlx.Next;
       xDataAnterior := xData
   end;
   CloseFile(xArquivo);   
end;

end.
