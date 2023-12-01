unit UDadosXML;

interface


uses
    SysUtils, XMLDoc, XMLIntf, xmldom;




Type

/////////////////////////
//     ESTADO
/////////////////////////
    TEstado = class
            public
                   Nome :String;
                  UF :String;
        Published
                     function ObjectToXML() : String;

    End;
/////////////////////////
//     CIDADE
/////////////////////////
    TCidade = class
            public
                  Nome :String;
                  Estado :TEstado;
            Published
                     function ObjectToXML() : String;

    End;
/////////////////////////
//     PESSOA JURIDICA
/////////////////////////
  TPessoaJuridica = class
       public
                  CNPJ: String;
                  RazaoSocial: String;
                  IE: String;    // inscrição estadual
                  IM: String;    // inscrição municipal
                  WebPage: String;
                  IEST: String; // inscrição estudual de substituo tributario
                  Industria :String; // se for industria
       Published
                     function ObjectToXML() : String;

  end;
/////////////////////////
//     PESSOA FISICA
/////////////////////////
  TPessoaFisica = class
       public
                CPF: String;
                EstadoCivil :String;
                Sexo:String;
                EmpTrab :String;
                EndTrab :String;
                BairroTrab :String;
                DataAdmis :TDateTime;
                Cargo :String;
                RG :String;
                DataExped :TDateTime;
                OrgaoExped :String;
                Titulo :String;
                NomeConjugue :String;
                DataNascimentoConj :TDateTime;
                RGConj :String;
                CPFConj :String;
                EmpConj :String;
                NomePai :String;
                NomeMae :String;
                EnderecoFiliacao :String;
                DiaAniverConj :Integer;
       Published
                     function ObjectToXML() : String;

   End;
/////////////////////////
//     PESSOA
/////////////////////////
   TPessoa = class
         public
                Nome :String;
                Endereco :String;
                Bairro :String;
                Cidade :TCidade;
                CEP :String;
                DataIni :TDateTime;
                DataNasc :TDateTime;
                CidadeNatural :TCidade;
                TelRel :String;
                DiaAniver :Integer;
                Proximidade :String;
                VlrCredito :Double;
                Numero :String;
                PessoaFisica :TPessoaFisica;
                PessoaJuridica :TPessoaJuridica;
         Published
                     function ObjectToXML() : String;

  end;

/////////////////////////
//   FUNCIONARIO
/////////////////////////
   TFuncionario = class
         public
                CodInterno :String;
                Pessoa :TPessoa;
                DataCad :TDateTime;
                DataAdmi :TDateTime;
                DataDemis :TDateTime;
                NumCTPS :String;
                SERCTPS :String;
                NumPis :String;
                Terceiro :String;
                Palm :String;
                NumPalm :String;
                Mark :String;
         Published
                     function ObjectToXML() : String;

  end;
/////////////////////////
//   FORMA PAGAMENTO
/////////////////////////
   TFormaPagamento = class
         public
                CodInterno :String;
                Descricao :String;
                DescFisc :String;
                PrimParcela :Integer;
                Intervalo :Integer;
                QuantParcela :Integer;
                JuroAplic :Double;
                MediaDias :Integer;
                Tipo :String;
         Published
                     function ObjectToXML() : String;

  end;
  /////////////////////////
//   CST
/////////////////////////
   TCST = class
         public
                Descricao :String;
                CodSitTrib :String;
                IndiceECF :String;
                Substituicao :String;
         Published
                     function ObjectToXML() : String;

  end;
  /////////////////////////
//   UNIDADE
/////////////////////////
   TUnidade = class
         public
                Descricao :String;
                Sigla :String;
                Arrendondar :String;
         Published
                     function ObjectToXML() : String;

  end;
/////////////////////////
//  FORNECEDOR
/////////////////////////
   TFornecedor = class
         public
                Pessoa :TPessoa;
                CodInterno :String;
                DataCad :TDateTime;
                TipoFornec :String;
                PrazoEntrega :Integer;
                Tipo :String;
                Obs :String;
                Exporta :String;
                MarkRel :String;
         Published
                     function ObjectToXML() : String;

  end;
/////////////////////////
//     CLIENTE
/////////////////////////
  TCliente = class
           public
                CodPessoa :String;
                Pessoa :TPessoa;
                CodInterno :String;
                DataCad :TDateTime;
                RSalConj :Double;
                RSal :Double;
                RHonProf :Double;
                ROutrec :Double;
                DAluquel :Double;
                DResidencia :Double;
                DVeiculo :Double;
                DFamiliar :Double;
                DOutdesp :Double;
                LimCred :Double;
                QtdTempoResid :String;
                Bens : String;
                Vendedor :TFuncionario;
                InfoCom :String;
                EndEntrega :String;
                Atualizar :String;
                //Usuario :TUsuario;
                Ativo :String;
                Credencial :String;
                RamoAtiv :String;
                Atacadista :String;
                FormPag :TFormaPagamento;
                Exporta :String;
                Separar :String;
                Multa :Double;
                Juro :Double;
                Obs :String;
                SCPC :String;
                Tamanho :Double;
                Informacao :String;
                DiaVencimento :Integer;
                ContribICMS :String;
                MarkRel :String;
                Suframa :String;
        Published
                     function ObjectToXML() : String;

  End;
/////////////////////////
//    GRUPO PRODUTO
/////////////////////////
   TGrupo = class
         public
                Descricao :String;
                CodInterno :String;
                Tipo :String;
         Published
                     function ObjectToXML() : String;

  end;

/////////////////////////
//   SUB-GRUPO PRODUTO
/////////////////////////
   TSubGrupo = class
         public
                Descricao :String;
                CodInterno :String;
                Tipo :String;
         Published
                     function ObjectToXML() : String;

  end;
/////////////////////////
//  PROUDUTO
/////////////////////////
   TProduto = class
         public
                Descricao :String;
                Aplicacao :String;
                Grupo :TGrupo;
                SubGrupo :TSubGrupo;
                CST :TCST;
                VendVista :Double;
                VendPrazo :Double;
                CustoVenda :Double;
                CompVista :Double;
                CompPrazo :Double;
                QtdComp :Double;
                QtdVend :Double;
         Published
                     function ObjectToXML() : String;

  end;
/////////////////////////
//  SUB-PRODUTO
/////////////////////////
   TSubProduto = class
         public
                CodComposto :String;
                Descricao :String;
                CodBarra :String;
                CodProdFabr :String;
                Fabricante :String;
                Marca :String;
                QuantGarantia :String;
                TipoGarantia :String;
                LocalEstante:String;
                Ativo :String;
                IPIProd :Double;
                PesoLiq :Double;
                PesoBruto :Double;
                Produto :TProduto;
                CodInterno :String;
                Motivo :String;
                QtdAtc :Double;
                EmbProd :Double;
                Lote :String;
                Peneira :String;
                Germi :String;
                Pureza :String;
                ATestGar :String;
                Safra :String;
                UniCompra :TUnidade;
                UnidVenda :TUnidade;
                CST :TCST;
                DataCad :TDateTime;
                CodeEAN1 :String;
                ContrInt :String;
                Cor :String;
                Classificacao :String;
                DescCupom :String;
                NCM :String;
                ObsFiscal :String;
                Composicao :String;
                Altura :String;
                Largura :String;
                Especificao :String;
                Mark :String;
                Balanca :String;
                Anvisa :String;
                MinSaude :String;
                Densidade :String;
         Published
                     function ObjectToXML() : String;

  end;
/////////////////////////
//   ESTOQUE
/////////////////////////
   TEstoque = class
         public
                SubProduto :TSubProduto;
                EstMax :Double;
                EstMin :Double;
                ICMS :Double;
                Frete :Double;
                EstFisico :Double;
                EstReserv :Double;
                EstPed :Double;
                EstSaldo :Double;
                CVVProAt :Double;
                CVPProAt :Double;
                CVVProVar :Double;
                CVPProVar :Double;
                VendAtaP :Double;
                VendAtaV :Double;
                VendVarp :Double;
                VendVarV :Double;
                ValUnit :Double;
                ValRep :Double;
                ValCusto :Double;
                AVVProAt :Double;
                AVPProAt :Double;
                AVVProVar :Double;
                AVPProVar :Double;
                Lucratividade :Double;
                CoefDiv :Double;
                ValorRest :Double;
                Outros :Double;
                Quant2 :Double;
                DtCad : TDateTime;
                EstIni :Double;
                ValCusDesp :Double;
                EstantCont :Double;
                Contagem :Double;
                EstSimulado :Double;
                VlrUnitComp :Double;
                Indice :Double;
                Bonificacao :Double;
                VlrBonific :Double;
                Desconto :Double;
                CLNC :Double;
                ModEst :Double;
                ImpExp :Double;
                ImprEnd :Double;
                ContSoc :Double;
                COFINS :Double;
                PIS :Double;
                MargemSeg :Double;
                PercMargSeg :Double;
                ReducBase :Double;
                VlrCompSD :Double;
                Acrescimo :Double;
                EstCalc :Double;
                DataAtual :TDateTime;
                HoraAtual :TDateTime;
                PrecoOferta :Double;
                DataOferta :TDateTime;
                VencOferta :TDateTime;
                MediaBaseICMST :Double;
                MediaVlrICMST :Double;
                IPIVND :Double;
                PMC :Double;
                PMA :Double;
         Published
                     function ObjectToXML() : String;

  end;
/////////////////////////
//   ITEM VENDA
/////////////////////////
   TItemVenda = class
         public
                Estoque :TEstoque;
                QtdProd :Double;
                DescProd :Double;
                Funcionario :TFuncionario;
                ValUnit :Double;
                ValCusto :Double;
                ValorTotal :Double;
                AtueEst :String;
                ValRep :Double;
                CoefDiv :Double;
                ValComp :Double;
                LucPer :Double;
                LucMoe :Double;
                Data :TDateTime;
                Comissao :Double;
                Operacao :String;
                LucRel :Double;
                VlrVendBD :Double;
                QtdDev :Double;
                NumItem :Integer;
                AliqICMS :Double;
                BaseICMS :Double;
                VlrICMS :Double;
                BaseICMSSubs :Double;
                VlrIPI :Double;
                AliIPI :Double;
                ReducBaseICMS :Double;
                VlrIcmsSubst :Double;
                VlrUnitDev :Double;
                QtdEntregre :Double;
                Unidade :TUnidade;
                QtdEmb :Double;
                UnidEmb :TUnidade;
                QtdNaEmb :Double;
                CFOP :String;
                TipoLista :String;
                IPNPMC :Double;
                IPNMVA :Double;
         Published
                     function ObjectToXML() : String;
                     
  end;
/////////////////////////
//  PEDIDO DE VENDA
/////////////////////////
   TPedVenda = class
         public
                Cliente :TCliente;
                DtPedido :TDateTime;
                Desconto :Double;
                Pagamento :TFormaPagamento;
                Valor :Double;
                Entrega :TDateTime;
                NomeCliente :String;
                Obs :String;
                CPFCNPJ :String;
                Vendedor :TFuncionario;
                Situacao :String;
                NumPed :String;
                Tipo :String;
                VlrComis :Double;
                Garantia :String;
                ComSobVenda :String;
                Fisco :String;
                NumFiscal :String;
                DtFech :TDateTime;
                VlrFrete :Double;
                Mark :String;
                DesMoe :Double;
                Atu :Integer;
                Cobranca :String;
                AtuComis :Integer;
                Faturado :String;
                Exporta :String;
                Itens : Array of TItemVenda;
         Published
                     function ObjectToXML() : String;

  end;


{
/////////////////////////
//
/////////////////////////
   T = class
         public
                Nome :String;
         Published
                     function ObjectToXML() : String;
                     procedure XmlToObject(xml :String);
  end;   }

  function XmlToEstado(node :IXMLNode):TEstado;
  function XmlToCidade(node :IXMLNode):TCidade;
  function XmlToPessoaJuridica(node :IXMLNode):TPessoaJuridica;
  function XmlToPessoaFisica(node :IXMLNode):TPessoaFisica;
  function XmlToPessoa(node :IXMLNode):TPessoa;
  function XmlToFuncionario(node :IXMLNode):TFuncionario;
  function XmlToFormaPagamento(node :IXMLNode):TFormaPagamento;
  function XmlToCST(node :IXMLNode):TCST;
  function XmlToUnidade(node :IXMLNode):TUnidade;
  function XmlToFornecedor(node :IXMLNode):TFornecedor;
  function XmlToCliente(node :IXMLNode):TCliente;
  function XmlToGrupo(node :IXMLNode):TGrupo;
  function XmlToSubGrupo(node :IXMLNode):TSubGrupo;
  function XmlToProduto(node :IXMLNode):TProduto;
  function XmlToSubProduto(node :IXMLNode):TSubProduto;
  function XmlToEstoque(node :IXMLNode):TEstoque;
  function XmlToItemVenda(node :IXMLNode):TItemVenda;
  function XmlToPedVenda(node :IXMLNode):TPedVenda;


  function buscaEstado(codEstado :String):TEstado;
  function buscaCidade(codCidade :String):TCidade;
  function buscaPessoa(codPessoa :String):TPessoa;
  function buscaFuncionario(codFunc :String):TFuncionario;
  function buscaFormaPagamento(codFormaPagamento :String):TFormaPagamento;
  function buscaCST(codCST :String):TCST;
  function buscaUnidade(codUnidade :String):TUnidade;
  function buscaFornecedor(codFornecedor :String):TFornecedor;
  function buscaCliente(codCli :String):TCliente;
  function buscaGrupo(codigo :String):TGrupo;
  function buscaSubGrupo(codigo :String):TSubGrupo;
  function buscaProduto(codigo :String):TProduto;
  function buscaSubProduto(codigo :String):TSubProduto;
  function buscaEstoque(codigo :String):TEstoque;
  function buscaItemVenda(codigo :String):TItemVenda;
  function buscaPedVenda(codigo :String):TPedVenda;

  function verificaProxCodigo(tabela, campo:String; atualiza:Boolean):Integer;
  function verificaProxNumeroPedido:String;

  function verificaEstado(objeto :TEstado; out msgErro:String; out codigo:Integer):Boolean;
  function verificaCidade(objeto :TCidade; out msgErro:String; out codigo:Integer):Boolean;
  function verificaPessoa(objeto :TPessoa; out msgErro:String; out codigo:Integer):Boolean;
  function verificaFuncionario(objeto :TFuncionario; out msgErro:String; out codigo:Integer):Boolean;
  function verificaFormaPagamento(objeto :TFormaPagamento; out msgErro:String; out codigo:Integer):Boolean;
  function verificaCST(objeto :TCST; out msgErro:String; out codigo:Integer):Boolean;
  function verificaUnidade(objeto :TUnidade; out msgErro:String; out codigo:Integer):Boolean;
  function verificaFornecedor(objeto :TFornecedor; out msgErro:String; out codigo:Integer):Boolean;
  function verificaCliente(objeto :TCliente; out msgErro:String; out codigo:Integer):Boolean;
  function verificaGrupo(objeto :TGrupo; out msgErro:String; out codigo:Integer):Boolean;
  function verificaSubGrupo(objeto :TSubGrupo; out msgErro:String; out codigo:Integer):Boolean;
  function verificaProduto(objeto :TProduto; out msgErro:String; out codigo:Integer):Boolean;
  function verificaSubProduto(objeto :TSubProduto; out msgErro:String; out codigo:Integer):Boolean;
  function verificaEstoque(objeto :TEstoque; out msgErro:String; out codigo:Integer):Boolean;
  function verificaItemVenda(objeto :TItemVenda; codPedido :Integer; out msgErro:String; out codigo:Integer):Boolean;
  function verificaPedVenda(objeto :TPedVenda; out msgErro:String; out numPedido:String):Boolean;
   {
  function atualizaEstado(objeto :TEstado; out msgErro:String; out codigo:Integer):Boolean;
  function atualizaCidade(objeto :TCidade; out msgErro:String; out codigo:Integer):Boolean;
  function atualizaPessoa(objeto :TPessoa; out msgErro:String; out codigo:Integer):Boolean;
  function atualizaFuncionario(objeto :TFuncionario; out msgErro:String; out codigo:Integer):Boolean;
  function atualizaFormaPagamento(objeto :TFormaPagamento; out msgErro:String; out codigo:Integer):Boolean;
  function atualizaCST(objeto :TCST; out msgErro:String; out codigo:Integer):Boolean;
  function atualizaUnidade(objeto :TUnidade; out msgErro:String; out codigo:Integer):Boolean;
  function atualizaFornecedor(objeto :TFornecedor; out msgErro:String; out codigo:Integer):Boolean;
  function atualizaCliente(objeto :TCliente; out msgErro:String; out codigo:Integer):Boolean;
  function atualizaGrupo(objeto :TGrupo; out msgErro:String; out codigo:Integer):Boolean;
  function atualizaSubGrupo(objeto :TSubGrupo; out msgErro:String; out codigo:Integer):Boolean;
  function atualizaEstoque(objeto :TEstoque; out msgErro:String; out codigo:Integer):Boolean;
  function atualizaItemVenda(objeto :TItemVenda; out msgErro:String; out codigo:Integer):Boolean;
  function atualizaPedVenda(objeto :TPedVenda; out msgErro:String; out codigo:Integer):Boolean;

  function inserirEstado(objeto :TEstado; out msgErro:String; out codigo:Integer):Boolean;
  function inserirCidade(objeto :TCidade; out msgErro:String; out codigo:Integer):Boolean;
  function inserirPessoa(objeto :TPessoa; out msgErro:String; out codigo:Integer):Boolean;
  function inserirFuncionario(objeto :TFuncionario; out msgErro:String; out codigo:Integer):Boolean;
  function inserirFormaPagamento(objeto :TFormaPagamento; out msgErro:String; out codigo:Integer):Boolean;
  function inserirCST(objeto :TCST; out msgErro:String; out codigo:Integer):Boolean;
  function inserirUnidade(objeto :TUnidade; out msgErro:String; out codigo:Integer):Boolean;
  function inserirFornecedor(objeto :TFornecedor; out msgErro:String; out codigo:Integer):Boolean;
  function inserirCliente(objeto :TCliente; out msgErro:String; out codigo:Integer):Boolean;
  function inserirGrupo(objeto :TGrupo; out msgErro:String; out codigo:Integer):Boolean;
  function inserirSubGrupo(objeto :TSubGrupo; out msgErro:String; out codigo:Integer):Boolean;
  function inserirEstoque(objeto :TEstoque; out msgErro:String; out codigo:Integer):Boolean;
  function inserirItemVenda(objeto :TItemVenda; out msgErro:String; out codigo:Integer):Boolean;
  function inserirPedVenda(objeto :TPedVenda; out msgErro:String; out codigo:Integer):Boolean;

     }

implementation



uses UValidacaoNFe, Alxor32, UDMGEOGRAFIA, UDMSaida, UDMEstoque, UDMPessoa,
  UDMFinanc, DB, UDMMacs, UMenu, Math, AlxMessage;




function buscaEstado(codEstado :String):TEstado;
var
   estado :TEstado;
Begin
     If FiltraTabela(DMGEOGRAFIA.TEstado,'ESTADO','COD_ESTADO',codEstado,'')=True
     Then Begin
          estado := TEstado.Create;
          estado.Nome := ValidaAcentos(DMGEOGRAFIA.TEstado.FieldByName('DESCRICAO').AsString);
          estado.UF := ValidaAcentos(DMGEOGRAFIA.TEstado.FieldByName('UF_ESTADO').AsString);
     End
     Else
         estado := nil;

     Result := estado;
End;

function buscaCidade(codCidade :String):TCidade;
var
   cidade :TCidade;
Begin
     If FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', codCidade, '')=True
     Then Begin
          cidade := TCidade.Create;
          cidade.Nome := ValidaAcentos(DMGEOGRAFIA.TCidade.FieldByName('NOME').AsString);
          cidade.Estado := buscaEstado(DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString);
     End
     Else
         cidade := nil;

     Result := cidade;
End;

function buscaPessoa(codPessoa :String):TPessoa;
var
   pessoa :TPessoa;
Begin
      If FiltraTabela(DMPESSOA.TPessoa,'PESSOA','COD_PESSOA',codPessoa,'') = True
      Then Begin
           Pessoa := TPessoa.Create;
           Pessoa.Nome := ValidaAcentos(DMPESSOA.TPessoa.FieldByName('NOME').AsString);
           Pessoa.Endereco := ValidaAcentos(DMPESSOA.TPessoa.FieldByName('ENDERECO').AsString);
           Pessoa.Bairro := ValidaAcentos(DMPESSOA.TPessoa.FieldByName('BAIRRO').AsString);
           pessoa.Cidade := buscaCidade(DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString);
           Pessoa.CEP := ValidaAcentos(DMPESSOA.TPessoa.FieldByName('CEP').AsString);
           Pessoa.DataIni := DMPESSOA.TPessoa.FieldByName('DATA_INI').AsDateTime;
           Pessoa.DataNasc := DMPESSOA.TPessoa.FieldByName('DTNASC').AsDateTime;
           pessoa.CidadeNatural := buscaCidade(DMPESSOA.TPessoa.FieldByName('COD_NATURAL').AsString);
           Pessoa.TelRel := DMPESSOA.TPessoa.FieldByName('TELREL').AsString;
           Pessoa.DiaAniver := DMPESSOA.TPessoa.FieldByName('DIAANIVER').AsInteger;
           Pessoa.Proximidade := ValidaAcentos(DMPESSOA.TPessoa.FieldByName('PROXIMIDADE').AsString);
           Pessoa.VlrCredito := DMPESSOA.TPessoa.FieldByName('VLRCREDITO').AsCurrency;
           Pessoa.Numero := ValidaAcentos(DMPESSOA.TPessoa.FieldByName('ENDNUMERO').AsString);
           // - 15/05/2009: filtra pessoa juridica
           If FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', codPessoa, '')=True
           Then Begin
                Pessoa.PessoaJuridica := TPessoaJuridica.Create;
                Pessoa.PessoaJuridica.CNPJ := ValidaAcentos(DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString);
                Pessoa.PessoaJuridica.IE := ValidaAcentos(DMPESSOA.TPessoaJ.FieldByname('INSC_EST').AsString);
                Pessoa.PessoaJuridica.RazaoSocial := ValidaAcentos(DMPESSOA.TPessoaJ.FieldByname('RAZAO_SOCIAL').AsString);
                Pessoa.PessoaJuridica.IM := ValidaAcentos(DMPESSOA.TPessoaJ.FieldByname('INSC_MUN').AsString);
                Pessoa.PessoaJuridica.WebPage := ValidaAcentos(DMPESSOA.TPessoaJ.FieldByname('WEB_PAGE').AsString);
                Pessoa.PessoaJuridica.IEST := ValidaAcentos(DMPESSOA.TPessoaJ.FieldByname('INS_ST').AsString);
                Pessoa.PessoaJuridica.Industria := ValidaAcentos(DMPESSOA.TPessoaJ.FieldByname('INDUSTRIA').AsString);
           End
           // - 15/05/2009: filtra pessoa fisica
           Else If FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA', codPessoa, '')=True
           Then Begin
                Pessoa.PessoaFisica := TPessoaFisica.Create;
                Pessoa.PessoaFisica.CPF := ValidaAcentos(DMPESSOA.TPessoa.FieldByName('CPFCNPJ').AsString);
                Pessoa.PessoaFisica.EstadoCivil := ValidaAcentos(DMPESSOA.TPessoaF.FieldByname('ESTADO_CIVIL').AsString);
                Pessoa.PessoaFisica.Sexo := ValidaAcentos(DMPESSOA.TPessoaF.FieldByname('SEXO').AsString);
                Pessoa.PessoaFisica.EmpTrab := ValidaAcentos(DMPESSOA.TPessoaF.FieldByname('EMP_TRAB').AsString);
                Pessoa.PessoaFisica.EndTrab := ValidaAcentos(DMPESSOA.TPessoaF.FieldByname('END_TRAB').AsString);
                Pessoa.PessoaFisica.BairroTrab := ValidaAcentos(DMPESSOA.TPessoaF.FieldByname('BAIRRO_TRAB').AsString);
                Pessoa.PessoaFisica.DataAdmis := DMPESSOA.TPessoaF.FieldByname('DATA_ADMIS').AsDateTime;
                Pessoa.PessoaFisica.Cargo := ValidaAcentos(DMPESSOA.TPessoaF.FieldByname('CARGO').AsString);
                Pessoa.PessoaFisica.RG := ValidaAcentos(DMPESSOA.TPessoaF.FieldByname('RG').AsString);
                Pessoa.PessoaFisica.DataExped := DMPESSOA.TPessoaF.FieldByname('DATA_EXPED').AsDateTime;
                Pessoa.PessoaFisica.OrgaoExped := DMPESSOA.TPessoaF.FieldByname('ORGAO_EXPED').AsString;
                Pessoa.PessoaFisica.Titulo := ValidaAcentos(DMPESSOA.TPessoaF.FieldByname('TITULO').AsString);
                Pessoa.PessoaFisica.NomeConjugue := ValidaAcentos(DMPESSOA.TPessoaF.FieldByname('NOME_CONJ').AsString);
                Pessoa.PessoaFisica.DataNascimentoConj := DMPESSOA.TPessoaF.FieldByname('DATANASC_CONJ').AsDateTime;
                Pessoa.PessoaFisica.RGConj := DMPESSOA.TPessoaF.FieldByname('RG_CONJ').AsString;
                Pessoa.PessoaFisica.CPFConj := DMPESSOA.TPessoaF.FieldByname('CPF_CONJ').AsString;
                Pessoa.PessoaFisica.EmpConj := ValidaAcentos(DMPESSOA.TPessoaF.FieldByname('EMP_CONJ').AsString);
                Pessoa.PessoaFisica.NomePai := ValidaAcentos(DMPESSOA.TPessoaF.FieldByname('NOME_PAI').AsString);
                Pessoa.PessoaFisica.NomeMae := ValidaAcentos(DMPESSOA.TPessoaF.FieldByname('NOME_MAE').AsString);
                Pessoa.PessoaFisica.EnderecoFiliacao := ValidaAcentos(DMPESSOA.TPessoaF.FieldByname('ENDE_FILIACAO').AsString);
                //Pessoa.PessoaFisica.DiaAniverConj := DMPESSOA.TPessoaF.FieldByname('DIAANIVERCONJ').AsInteger;
           End
           Else Begin
                pessoa := nil;
           End;
      End
      Else
          pessoa := nil;

      Result := pessoa;
End;

function buscaFuncionario(codFunc :String):TFuncionario;
var
   funcionario :TFuncionario;
Begin
     If FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','COD_FUNC',codFunc,'')=True
     Then Begin
          funcionario := TFuncionario.Create;
          funcionario.Pessoa := buscaPessoa(DMPESSOA.TFuncionario.FieldByName('COD_PESSOA').AsString);
          If funcionario.Pessoa <> nil
          Then Begin
              funcionario.CodInterno := ValidaAcentos(DMPESSOA.TFuncionario.FieldByName('COD_INTERNO').AsString);
              funcionario.DataCad := DMPESSOA.TFuncionario.FieldByName('DATA_CAD').AsDateTime;
              funcionario.DataAdmi := DMPESSOA.TFuncionario.FieldByName('DATA_ADMIS').AsDateTime;
              funcionario.DataDemis := DMPESSOA.TFuncionario.FieldByName('DATA_DEMIS').AsDateTime;
              funcionario.NumCTPS := DMPESSOA.TFuncionario.FieldByName('NUM_CTPS').AsString;
              funcionario.SERCTPS := DMPESSOA.TFuncionario.FieldByName('SER_CTPS').AsString;
              funcionario.NumPis := ValidaAcentos(DMPESSOA.TFuncionario.FieldByName('NUM_PIS').AsString);
              funcionario.Terceiro := DMPESSOA.TFuncionario.FieldByName('TERCEIRO').AsString;
              funcionario.Palm := ValidaAcentos(DMPESSOA.TFuncionario.FieldByName('PALM').AsString);
              funcionario.NumPalm := ValidaAcentos(DMPESSOA.TFuncionario.FieldByName('NUMPALM').AsString);
              funcionario.Mark := ValidaAcentos(DMPESSOA.TFuncionario.FieldByName('MARK').AsString);
          End
          Else
              funcionario := nil;
     End
     Else
         funcionario := nil;
     Result := funcionario;
End;

function buscaFormaPagamento(codFormaPagamento :String):TFormaPagamento;
var
   FormPag :TFormaPagamento;
Begin
     If FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', 'cod_formpag', codFormaPagamento, '')=True
     Then Begin
          FormPag := TFormaPagamento.Create;
          FormPag.CodInterno := ValidaAcentos(DMFINANC.TFormPag.FieldByName('COD_INTERNO').AsString);
          FormPag.Descricao := ValidaAcentos(DMFINANC.TFormPag.FieldByName('DESCRICAO').AsString);
          FormPag.DescFisc := ValidaAcentos(DMFINANC.TFormPag.FieldByName('DESCFISC').AsString);
          FormPag.PrimParcela := DMFINANC.TFormPag.FieldByName('PRIMPARCELA').AsInteger;
          FormPag.Intervalo := DMFINANC.TFormPag.FieldByName('INTERVALO').AsInteger;
          FormPag.QuantParcela := DMFINANC.TFormPag.FieldByName('QUANTPARCELA').AsInteger;
          FormPag.JuroAplic := DMFINANC.TFormPag.FieldByName('JUROAPLIC').AsCurrency;
          FormPag.MediaDias := DMFINANC.TFormPag.FieldByName('MEDIADIAS').AsInteger;
          FormPag.Tipo := DMFINANC.TFormPag.FieldByName('TIPO').AsString;
     End
     Else
         FormPag := nil;
     Result := FormPag;
End;

function buscaCST(codCST :String):TCST;
var
   CST :TCST;
Begin
     If FiltraTabela(DMESTOQUE.TCST, 'CST', 'COD_CST', codCST, '')=True
     Then Begin
          CST := TCST.Create;
          CST.Descricao := ValidaAcentos(DMESTOQUE.TCST.FieldByName('DESCRICAO').AsString);
          CST.CodSitTrib := ValidaAcentos(DMESTOQUE.TCST.FieldByName('COD_SIT_TRIB').AsString);
          CST.IndiceECF := ValidaAcentos(DMESTOQUE.TCST.FieldByName('INDICEECF').AsString);
          CST.Substituicao := ValidaAcentos(DMESTOQUE.TCST.FieldByName('SUBSTITUICAO').AsString);
     End
     Else
         CST := nil;
     Result := CST;
End;

function buscaUnidade(codUnidade :String):TUnidade;
var
   unidade :TUnidade;
Begin
     If FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE', codUnidade, '')=True
     Then Begin
          unidade := TUnidade.Create;
          unidade.Descricao := ValidaAcentos(DMESTOQUE.TUnidade.FieldByName('DESC_UNID').AsString);
          unidade.Sigla := ValidaAcentos(DMESTOQUE.TUnidade.FieldByName('SIGLA_UNID').AsString);
          unidade.Arrendondar := ValidaAcentos(DMESTOQUE.TUnidade.FieldByName('ARREDONDAR').AsString);
     End
     Else
         unidade := nil;
     Result := unidade;
End;

function buscaFornecedor(codFornecedor :String):TFornecedor;
var
   fornecedor :TFornecedor;
Begin
     If FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC', codFornecedor, '')=True
     Then Begin
          fornecedor := TFornecedor.Create;
          fornecedor.Pessoa := buscaPessoa(DMPESSOA.TFornecedor.FieldByName('COD_PESSOA').AsString);
          If fornecedor.Pessoa <> nil
          Then Begin
              fornecedor.CodInterno := ValidaAcentos(DMPESSOA.TFornecedor.FieldByName('COD_INTERNO').AsString);
              fornecedor.DataCad := DMPESSOA.TFornecedor.FieldByName('DATA_CAD').AsDateTime;
              fornecedor.TipoFornec := ValidaAcentos(DMPESSOA.TFornecedor.FieldByName('TIPO_FORNEC').AsString);
              fornecedor.PrazoEntrega := DMPESSOA.TFornecedor.FieldByName('PRAZO_ENTREGA').AsInteger;
              fornecedor.Tipo := ValidaAcentos(DMPESSOA.TFornecedor.FieldByName('TIPO').AsString);
              fornecedor.Obs := ValidaAcentos(DMPESSOA.TFornecedor.FieldByName('OBS').AsString);
              fornecedor.Exporta := ValidaAcentos(DMPESSOA.TFornecedor.FieldByName('EXPORT').AsString);
              fornecedor.MarkRel := ValidaAcentos(DMPESSOA.TFornecedor.FieldByName('MARKREL').AsString);
          End
          Else
              fornecedor := nil;
     End
     Else
         fornecedor := nil;
     result := fornecedor;
End;

function buscaCliente(codCli :String):TCliente;
var
   Cliente :TCliente;
Begin
   iF FiltraTabela(DMPESSOA.TCliente,'CLIENTE','COD_CLIENTE',codCli,'')=True
   Then Begin
       Cliente := TCliente.Create;
        Cliente.CodPessoa := DMPESSOA.TCliente.FieldByname('cod_pessoa').AsString;
       Cliente.Pessoa := buscaPessoa(DMPESSOA.TCliente.FieldByname('cod_pessoa').AsString);
       If Cliente.Pessoa <> nil
       Then Begin
           Cliente.CodInterno := ValidaAcentos(DMPESSOA.TCliente.FieldByName('COD_INTERNO').AsString);
           Cliente.DataCad := DMPESSOA.TCliente.FieldByName('DATA_CAD').AsDateTime;
           Cliente.RSalConj := DMPESSOA.TCliente.FieldByName('R_SAL_CONJ').AsCurrency;
           Cliente.RSal := DMPESSOA.TCliente.FieldByName('R_SALARIO').AsCurrency;
           Cliente.RHonProf := DMPESSOA.TCliente.FieldByName('R_HON_PROF').AsCurrency;
           Cliente.ROutrec := DMPESSOA.TCliente.FieldByName('R_OUTREC').AsCurrency;
           Cliente.DAluquel := DMPESSOA.TCliente.FieldByName('D_ALUGUEL').AsCurrency;
           Cliente.DResidencia := DMPESSOA.TCliente.FieldByName('D_RESIDENCIA').AsCurrency;
           Cliente.DVeiculo := DMPESSOA.TCliente.FieldByName('D_VEICULO').AsCurrency;
           Cliente.DFamiliar := DMPESSOA.TCliente.FieldByName('D_FAMILIAR').AsCurrency;
           Cliente.DOutdesp := DMPESSOA.TCliente.FieldByName('D_OUTDESP').AsCurrency;
           Cliente.LimCred := DMPESSOA.TCliente.FieldByName('LIM_CRED').AsCurrency;
           Cliente.QtdTempoResid := DMPESSOA.TCliente.FieldByName('QTDTEMPORESID').AsString;
           Cliente.Bens := DMPESSOA.TCliente.FieldByName('BENS').AsString;
           Cliente.Vendedor := buscaFuncionario(DMPESSOA.TCliente.FieldByName('COD_VENDEDOR').AsString);
           Cliente.InfoCom := DMPESSOA.TCliente.FieldByName('INFOCOM').AsString;
           Cliente.EndEntrega := DMPESSOA.TCliente.FieldByName('ENDENTRAGA').AsString;
           Cliente.Atualizar := DMPESSOA.TCliente.FieldByName('ATUALIZAR').AsString;
           Cliente.Ativo := DMPESSOA.TCliente.FieldByName('ATIVO').AsString;
           Cliente.Credencial := DMPESSOA.TCliente.FieldByName('CREDENCIAL').AsString;
           Cliente.RamoAtiv := DMPESSOA.TCliente.FieldByName('RAMOATIV').AsString;
           Cliente.Atacadista := DMPESSOA.TCliente.FieldByName('ATACADISTA').AsString;
           Cliente.FormPag := buscaFormaPagamento(DMPESSOA.TCliente.FieldByName('COD_FORMPAG').AsString);
           Cliente.Exporta := DMPESSOA.TCliente.FieldByName('EXPORT').AsString;
           Cliente.Separar := DMPESSOA.TCliente.FieldByName('SEPARAR').AsString;
           Cliente.Multa := DMPESSOA.TCliente.FieldByName('MULTA').AsCurrency;
           Cliente.Juro := DMPESSOA.TCliente.FieldByName('JURO').AsCurrency;
           Cliente.Obs := DMPESSOA.TCliente.FieldByName('OBS').AsString;
           Cliente.SCPC := DMPESSOA.TCliente.FieldByName('SCPC').AsString;
           Cliente.Tamanho := DMPESSOA.TCliente.FieldByName('TAMANHO').AsCurrency;
           Cliente.Informacao := DMPESSOA.TCliente.FieldByName('INFORMACAO').AsString;
           Cliente.DiaVencimento := DMPESSOA.TCliente.FieldByName('DIAVENCIMENTO').AsInteger;
           Cliente.ContribICMS := DMPESSOA.TCliente.FieldByName('CONTRIBICMS').AsString;
           Cliente.MarkRel := ValidaAcentos(DMPESSOA.TCliente.FieldByName('MARKREL').AsString);
           Cliente.Suframa := ValidaAcentos(DMPESSOA.TCliente.FieldByName('SUFRAMA').AsString);
       End;
   End
   Else
        Cliente := nil;
     Result := Cliente;
End;

function buscaGrupo(codigo :String):TGrupo;
var
   grupo :TGrupo;
Begin
     If FiltraTabela(DMEstoque.TGrupo, 'GRUPOPROD', 'COD_GRUPOPROD', codigo, '')=True
     Then Begin
          grupo := TGrupo.Create;
          grupo.Descricao := ValidaAcentos(DMEstoque.TGrupo.FieldByName('DESCRICAO').AsString);
          grupo.CodInterno := DMEstoque.TGrupo.FieldByName('COD_INTERNO').AsString;
          grupo.Tipo := DMEstoque.TGrupo.FieldByName('TIPO').AsString;
     End
     Else
         grupo := nil;
     Result := grupo;
End;

function buscaSubGrupo(codigo :String):TSubGrupo;
var
   subGrupo :TSubGrupo;
Begin
     If FiltraTabela(DMEstoque.TSubgru, 'SUBGRUPOPROD', 'COD_SUBGRUPOPROD', codigo, '')=True
     Then Begin
          subGrupo := TSubGrupo.Create;
          subGrupo.Descricao := ValidaAcentos(DMEstoque.TSubgru.FieldByName('DESCRICAO').AsString);
          subGrupo.CodInterno := ValidaAcentos(DMEstoque.TSubgru.FieldByName('COD_INTERNO').AsString);
          subGrupo.Tipo := DMEstoque.TSubgru.FieldByName('TIPO').AsString;
     End
     Else
         subGrupo := nil;
     Result := subGrupo;
End;

function buscaProduto(codigo :String):TProduto;
var
   produto :TProduto;
Begin
     If FiltraTabela(DMESTOQUE.TProduto, 'PRODUTO', 'COD_PRODUTO', codigo, '')=True
     Then Begin
         produto := TProduto.Create;
         produto.Descricao := ValidaAcentos(DMESTOQUE.TProduto.FieldByName('DESCRICAO').AsString);
         produto.Aplicacao := ValidaAcentos(DMESTOQUE.TProduto.FieldByName('APLICACAO').AsString);
         produto.Grupo := buscaGrupo(DMESTOQUE.TProduto.FieldByName('COD_SUBGRUPOPROD').AsString);
         produto.SubGrupo := buscaSubGrupo(DMESTOQUE.TProduto.FieldByName('COD_GRUPOPROD').AsString);
         produto.CST := buscaCST(DMESTOQUE.TProduto.FieldByName('COD_CST').AsString);
         produto.VendVista := DMESTOQUE.TProduto.FieldByName('VENDVISTA').AsCurrency;
         produto.VendPrazo := DMESTOQUE.TProduto.FieldByName('VENDPRAZO').AsCurrency;
         produto.CustoVenda := DMESTOQUE.TProduto.FieldByName('CUSTOVENDA').AsCurrency;
         produto.CompVista := DMESTOQUE.TProduto.FieldByName('COMPVISTA').AsCurrency;
         produto.CompPrazo := DMESTOQUE.TProduto.FieldByName('COMPPRAZO').AsCurrency;
         produto.QtdComp := DMESTOQUE.TProduto.FieldByName('QTDCOMP').AsCurrency;
         produto.QtdVend := DMESTOQUE.TProduto.FieldByName('QTDVEND').AsCurrency;
     End
     Else
         produto := nil;
     Result := produto;
End;

function buscaSubProduto(codigo :String):TSubProduto;
var
   subProduto :TSubProduto;
Begin
     If FiltraTabela(DMESTOQUE.TSubProd,'SUBPRODUTO','COD_SUBPRODUTO',codigo,'') = True
     Then Begin
          subProduto := TSubProduto.Create;
           subProduto.CodComposto := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('CODCOMPOSTO').AsString);
           subProduto.Descricao := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString);
           subProduto.CodBarra := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('CODBARRA').AsString);
           subProduto.CodProdFabr := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('CODPRODFABR').AsString);
           subProduto.Fabricante := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('FABRICANTE').AsString);
           subProduto.Marca := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('MARCA').AsString);
           subProduto.QuantGarantia := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('QUANTGARANTIA').AsString);
           subProduto.TipoGarantia := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('TIPOGARANTIA').AsString);
           subProduto.LocalEstante := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('LOCALESTANTE').AsString);
           subProduto.Ativo := DMESTOQUE.TSubProd.FieldByName('ATIVO').AsString;
           subProduto.IPIProd := DMESTOQUE.TSubProd.FieldByName('IPIPROD').AsCurrency;
           subProduto.PesoLiq := DMESTOQUE.TSubProd.FieldByName('PESOLIQ').AsCurrency;
           subProduto.PesoBruto := DMESTOQUE.TSubProd.FieldByName('PESOBRUTO').AsCurrency;
           subProduto.Produto := buscaProduto(DMESTOQUE.TSubProd.FieldByName('COD_PRODUTO').AsString);
           subProduto.CodInterno := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString);
           subProduto.Motivo := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('MOTIVO').AsString);
           subProduto.QtdAtc := DMESTOQUE.TSubProd.FieldByName('QTDATC').AsCurrency;
           subProduto.EmbProd := DMESTOQUE.TSubProd.FieldByName('EMBPROD').AsCurrency;
           subProduto.Lote := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('LOTE').AsString);
           subProduto.Peneira := DMESTOQUE.TSubProd.FieldByName('PENEIRA').AsString;
           subProduto.Germi := DMESTOQUE.TSubProd.FieldByName('GERMI').AsString;
           subProduto.Pureza := DMESTOQUE.TSubProd.FieldByName('PUREZA').AsString;
           subProduto.ATestGar := DMESTOQUE.TSubProd.FieldByName('ATESTGAR').AsString;
           subProduto.Safra := DMESTOQUE.TSubProd.FieldByName('SAFRA').AsString;
           subProduto.UniCompra := buscaUnidade(DMESTOQUE.TSubProd.FieldByName('COD_UNIDCOMPRA').AsString);
           subProduto.UnidVenda := buscaUnidade(DMESTOQUE.TSubProd.FieldByName('COD_UNIDVENDA').AsString);
           subProduto.CST := buscaCST(DMESTOQUE.TSubProd.FieldByName('COD_CST').AsString);
           subProduto.DataCad := DMESTOQUE.TSubProd.FieldByName('DTCAD').AsDateTime;
           subProduto.CodeEAN1 := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('CODEAN1').AsString);
           subProduto.ContrInt := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('CONTRINT').AsString);
           subProduto.Cor := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('COR').AsString);
           subProduto.Classificacao := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('CLASSIFICACAO').AsString);
           subProduto.DescCupom := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('DESCCUPOM').AsString);
           subProduto.NCM := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('NCM').AsString);
           subProduto.ObsFiscal := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('OBSFISCAL').AsString);
           subProduto.Composicao := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('COMPOSICAO').AsString);
           subProduto.Altura := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('ALTURA').AsString);
           subProduto.Largura := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('LARGURA').AsString);
           subProduto.Especificao := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('ESPECIFICACAO').AsString);
           subProduto.Mark := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('MARK').AsString);
           subProduto.Balanca := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('BALANCA').AsString);
           subProduto.Anvisa := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('ANVISA').AsString);
           subProduto.MinSaude := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('MINSAUDE').AsString);
           subProduto.Densidade := ValidaAcentos(DMESTOQUE.TSubProd.FieldByName('DENSIDADE').AsString);
     End
     Else
         subProduto := nil;

     Result := subProduto;
End;

function buscaEstoque(codigo :String):TEstoque;
var
   estoque :TEstoque;
Begin
     If FiltraTabela(DMESTOQUE.TEstoque, 'ESTOQUE', 'COD_ESTOQUE', codigo, '')=True
     Then Begin
          estoque := TEstoque.Create;
          estoque.SubProduto := buscaSubProduto(DMESTOQUE.TEstoque.FieldByName('COD_SUBPROD').AsString);
          If estoque.SubProduto <> nil
          Then Begin
            estoque.EstMax := DMESTOQUE.TEstoque.FieldByName('ESTMAX').AsCurrency;
            estoque.EstMin := DMESTOQUE.TEstoque.FieldByName('ESTMIN').AsCurrency;
            estoque.ICMS := DMESTOQUE.TEstoque.FieldByName('ICMS').AsCurrency;
            estoque.Frete := DMESTOQUE.TEstoque.FieldByName('FRETE').AsCurrency;
            estoque.EstReserv := DMESTOQUE.TEstoque.FieldByName('ESTRESERV').AsCurrency;
            estoque.EstPed := DMESTOQUE.TEstoque.FieldByName('ESTPED').AsCurrency;
            estoque.EstSaldo := DMESTOQUE.TEstoque.FieldByName('ESTSALDO').AsCurrency;
            estoque.CVVProAt := DMESTOQUE.TEstoque.FieldByName('CVVPROAT').AsCurrency;
            estoque.CVPProAt := DMESTOQUE.TEstoque.FieldByName('CVPPROAT').AsCurrency;
            estoque.CVVProVar := DMESTOQUE.TEstoque.FieldByName('CVVPROVAR').AsCurrency;
            estoque.CVPProVar := DMESTOQUE.TEstoque.FieldByName('CVPPROVAR').AsCurrency;
            estoque.VendAtaP := DMESTOQUE.TEstoque.FieldByName('VENDATAP').AsCurrency;
            estoque.VendAtaV := DMESTOQUE.TEstoque.FieldByName('VENDATAV').AsCurrency;
            estoque.VendVarp := DMESTOQUE.TEstoque.FieldByName('VENDVARP').AsCurrency;
            estoque.VendVarV := DMESTOQUE.TEstoque.FieldByName('VENDVARV').AsCurrency;
            estoque.ValUnit := DMESTOQUE.TEstoque.FieldByName('VALUNIT').AsCurrency;
            estoque.ValRep := DMESTOQUE.TEstoque.FieldByName('VALREP').AsCurrency;
            estoque.ValCusto := DMESTOQUE.TEstoque.FieldByName('VALCUSTO').AsCurrency;
            estoque.AVVProAt := DMESTOQUE.TEstoque.FieldByName('AVVPROAT').AsCurrency;
            estoque.AVPProAt := DMESTOQUE.TEstoque.FieldByName('AVPPROAT').AsCurrency;
            estoque.AVVProVar := DMESTOQUE.TEstoque.FieldByName('AVVPROVAR').AsCurrency;
            estoque.AVPProVar := DMESTOQUE.TEstoque.FieldByName('AVPPROVAR').AsCurrency;
            estoque.Lucratividade := DMESTOQUE.TEstoque.FieldByName('LUCRATIVIDADE').AsCurrency;
            estoque.CoefDiv := DMESTOQUE.TEstoque.FieldByName('COEFDIV').AsCurrency;
            estoque.ValorRest := DMESTOQUE.TEstoque.FieldByName('VALOREST').AsCurrency;
            estoque.Outros := DMESTOQUE.TEstoque.FieldByName('OUTROS').AsCurrency;
            estoque.Quant2 := DMESTOQUE.TEstoque.FieldByName('QUANT2').AsCurrency;
            estoque.DtCad := DMESTOQUE.TEstoque.FieldByName('DTCAD').AsDateTime;
            estoque.EstIni := DMESTOQUE.TEstoque.FieldByName('ESTINI').AsCurrency;
            estoque.ValCusDesp := DMESTOQUE.TEstoque.FieldByName('VALCUSDESP').AsCurrency;
            estoque.EstantCont := DMESTOQUE.TEstoque.FieldByName('ESTANTCONT').AsCurrency;
            estoque.Contagem := DMESTOQUE.TEstoque.FieldByName('CONTAGEM').AsCurrency;
            estoque.EstSimulado := DMESTOQUE.TEstoque.FieldByName('ESTSIMULADO').AsCurrency;
            estoque.VlrUnitComp := DMESTOQUE.TEstoque.FieldByName('VLRUNITCOMP').AsCurrency;
            estoque.Indice := DMESTOQUE.TEstoque.FieldByName('INDICE').AsCurrency;
            estoque.Bonificacao := DMESTOQUE.TEstoque.FieldByName('BONIFICACAO').AsCurrency;
            estoque.VlrBonific := DMESTOQUE.TEstoque.FieldByName('VLRBONIFIC').AsCurrency;
            estoque.Desconto := DMESTOQUE.TEstoque.FieldByName('DESCONTO').AsCurrency;
            estoque.CLNC := DMESTOQUE.TEstoque.FieldByName('CLNC').AsCurrency;
            estoque.ModEst := DMESTOQUE.TEstoque.FieldByName('MOD').AsCurrency;
            estoque.ImpExp := DMESTOQUE.TEstoque.FieldByName('IMPEXP').AsCurrency;
            estoque.ImprEnd := DMESTOQUE.TEstoque.FieldByName('IMPREND').AsCurrency;
            estoque.ContSoc := DMESTOQUE.TEstoque.FieldByName('CONTSOC').AsCurrency;
            estoque.COFINS := DMESTOQUE.TEstoque.FieldByName('COFINS').AsCurrency;
            estoque.PIS := DMESTOQUE.TEstoque.FieldByName('PIS').AsCurrency;
            estoque.MargemSeg := DMESTOQUE.TEstoque.FieldByName('MARGEMSEG').AsCurrency;
            estoque.PercMargSeg := DMESTOQUE.TEstoque.FieldByName('PERCMARGSEG').AsCurrency;
            estoque.ReducBase := DMESTOQUE.TEstoque.FieldByName('REDUCBASE').AsCurrency;
            estoque.VlrCompSD := DMESTOQUE.TEstoque.FieldByName('VLRCOMPSD').AsCurrency;
            estoque.Acrescimo := DMESTOQUE.TEstoque.FieldByName('ACRECIMO').AsCurrency;
            estoque.EstCalc := DMESTOQUE.TEstoque.FieldByName('ESTCALC').AsCurrency;
            estoque.DataAtual := DMESTOQUE.TEstoque.FieldByName('DATAATU').AsDateTime;
            estoque.HoraAtual := DMESTOQUE.TEstoque.FieldByName('HORAATU').AsDateTime;
            estoque.PrecoOferta := DMESTOQUE.TEstoque.FieldByName('PRECOOFERTA').AsCurrency;
            estoque.DataOferta := DMESTOQUE.TEstoque.FieldByName('DATAOFERTA').AsDateTime;
            estoque.VencOferta := DMESTOQUE.TEstoque.FieldByName('VENCIMENTOOFERTA').AsDateTime;
            estoque.MediaBaseICMST := DMESTOQUE.TEstoque.FieldByName('MEDIABASEICMST').AsCurrency;
            estoque.MediaVlrICMST := DMESTOQUE.TEstoque.FieldByName('MEDIAVLRICMST').AsCurrency;
            estoque.IPIVND := DMESTOQUE.TEstoque.FieldByName('IPI_VND').AsCurrency;
            estoque.PMC := DMESTOQUE.TEstoque.FieldByName('PMC').AsCurrency;
            estoque.PMA := DMESTOQUE.TEstoque.FieldByName('MVA').AsCurrency;
          End
          Else
              estoque := nil;
     End
     Else
         estoque := nil;

     Result := estoque;
End;

function buscaItemVenda(codigo :String):TItemVenda;
var
   item :TItemVenda;
Begin
     If FiltraTabela(DMSAIDA.TItemPV,'ITENSPEDVEN','COD_ITENSPEDVEN',codigo,'') = True
     Then Begin
          item := TItemVenda.Create;
           item.Estoque := buscaEstoque(DMSAIDA.TItemPV.FieldByName('COD_ESTOQUE').AsString);
           If item.Estoque <> nil
           Then Begin
             item.QtdProd := DMSAIDA.TItemPV.FieldByName('QTDEPROD').AsCurrency;
             item.DescProd := DMSAIDA.TItemPV.FieldByName('DESCPRO').AsCurrency;
             item.Funcionario := buscaFuncionario(DMSAIDA.TItemPV.FieldByName('COD_FUNCIONARIO').AsString);
             item.ValUnit := DMSAIDA.TItemPV.FieldByName('VALUNIT').AsCurrency;
             item.ValCusto := DMSAIDA.TItemPV.FieldByName('VALCUSTO').AsCurrency;
             item.ValorTotal := DMSAIDA.TItemPV.FieldByName('VALORTOTAL').AsCurrency;
             item.AtueEst := DMSAIDA.TItemPV.FieldByName('ATUEST').AsString;
             item.ValRep := DMSAIDA.TItemPV.FieldByName('VALREP').AsCurrency;
             item.CoefDiv := DMSAIDA.TItemPV.FieldByName('COEFDIV').AsCurrency;
             item.ValComp := DMSAIDA.TItemPV.FieldByName('VALCOMP').AsCurrency;
             item.LucPer := DMSAIDA.TItemPV.FieldByName('LUCPER').AsCurrency;
             item.LucMoe := DMSAIDA.TItemPV.FieldByName('LUCMOE').AsCurrency;
             item.Data := DMSAIDA.TItemPV.FieldByName('DATA').AsDateTime;
             item.Comissao := DMSAIDA.TItemPV.FieldByName('COMISSAO').AsCurrency;
             item.Operacao := DMSAIDA.TItemPV.FieldByName('OPERACAO').AsString;
             item.LucRel := DMSAIDA.TItemPV.FieldByName('LUCREL').AsCurrency;
             item.VlrVendBD := DMSAIDA.TItemPV.FieldByName('VLRVENDBD').AsCurrency;
             item.QtdDev := DMSAIDA.TItemPV.FieldByName('QTDDEV').AsCurrency;
             item.NumItem := DMSAIDA.TItemPV.FieldByName('NUMITEM').AsInteger;
             item.AliqICMS := DMSAIDA.TItemPV.FieldByName('ALIQICMS').AsCurrency;
             item.BaseICMS := DMSAIDA.TItemPV.FieldByName('BASEICMS').AsCurrency;
             item.VlrICMS := DMSAIDA.TItemPV.FieldByName('VLRICMS').AsCurrency;
             item.BaseICMSSubs := DMSAIDA.TItemPV.FieldByName('BASEICMSSUBS').AsCurrency;
             item.VlrIPI := DMSAIDA.TItemPV.FieldByName('VLRIPI').AsCurrency;
             item.AliIPI := DMSAIDA.TItemPV.FieldByName('ALIQIPI').AsCurrency;
             item.ReducBaseICMS := DMSAIDA.TItemPV.FieldByName('REDUCBASEICMS').AsCurrency;
             item.VlrIcmsSubst := DMSAIDA.TItemPV.FieldByName('VLRICMSSUBS').AsCurrency;
             item.VlrUnitDev := DMSAIDA.TItemPV.FieldByName('VLRUNITDEV').AsCurrency;
             item.QtdEntregre := DMSAIDA.TItemPV.FieldByName('QTDENTREGUE').AsCurrency;
             item.Unidade := buscaUnidade(DMSAIDA.TItemPV.FieldByName('COD_UNIDADE').AsString);
             item.QtdEmb := DMSAIDA.TItemPV.FieldByName('QTDEMB').AsCurrency;
             item.UnidEmb := buscaUnidade(DMSAIDA.TItemPV.FieldByName('UNIDEMB').AsString);
             item.QtdNaEmb := DMSAIDA.TItemPV.FieldByName('QTDNAEMB').AsCurrency;
             item.CFOP := DMSAIDA.TItemPV.FieldByName('CFOP').AsString;
             item.TipoLista := DMSAIDA.TItemPV.FieldByName('TIPOLISTA').AsString;
             item.IPNPMC := DMSAIDA.TItemPV.FieldByName('IPNPMC').AsCurrency;
             item.IPNMVA := DMSAIDA.TItemPV.FieldByName('IPNMVA').AsCurrency;
          End;
     End
     Else
         item := nil;
     Result := item;
End;

function buscaPedVenda(codigo :String):TPedVenda;
var
   pedVenda :TPedVenda;
   j :Integer;
Begin
     If FiltraTabela(DMSAIDA.TPedV, 'PEDVENDA', 'COD_PEDVENDA', codigo, '') = True
     Then Begin
         pedVenda := TPedVenda.Create;
         pedVenda.Cliente := buscaCliente(DMSAIDA.TPedV.FieldByName('COD_CLIENTE').AsString);
         If pedVenda.Cliente <> nil
         Then Begin
             pedVenda.DtPedido := DMSAIDA.TPedV.FieldByName('DTPEDVEN').AsDateTime;
             pedVenda.Desconto := DMSAIDA.TPedV.FieldByName('DESCONTO').AsCurrency;
             pedVenda.Pagamento := buscaFormaPagamento(DMSAIDA.TPedV.FieldByName('COD_FORMPAG').AsString);
             pedVenda.Valor := DMSAIDA.TPedV.FieldByName('VALOR').AsCurrency;
             pedVenda.Entrega := DMSAIDA.TPedV.FieldByName('ENTREGA').AsDateTime;
             pedVenda.NomeCliente := ValidaAcentos(DMSAIDA.TPedV.FieldByName('NOMECLI').AsString);
             pedVenda.Obs := ValidaAcentos(DMSAIDA.TPedV.FieldByName('OBS').AsString);
             pedVenda.CPFCNPJ := ValidaAcentos(DMSAIDA.TPedV.FieldByName('CPFCNPJ').AsString);
             pedVenda.Vendedor := buscaFuncionario(DMSAIDA.TPedV.FieldByName('COD_VENDEDOR').AsString);
             pedVenda.Situacao := ValidaAcentos(DMSAIDA.TPedV.FieldByName('SITUACAO').AsString);
             pedVenda.NumPed := DMSAIDA.TPedV.FieldByName('NUMPED').AsString;
             pedVenda.Tipo := DMSAIDA.TPedV.FieldByName('TIPO').AsString;
             pedVenda.VlrComis := DMSAIDA.TPedV.FieldByName('VLRCOMIS').AsCurrency;
             pedVenda.Garantia := DMSAIDA.TPedV.FieldByName('GARANTIA').AsString;
             pedVenda.ComSobVenda := DMSAIDA.TPedV.FieldByName('COMSOBVENDA').AsString;
             pedVenda.Fisco := DMSAIDA.TPedV.FieldByName('FISCO').AsString;
             pedVenda.NumFiscal := DMSAIDA.TPedV.FieldByName('NUMFISCAL').AsString;
             pedVenda.DtFech := DMSAIDA.TPedV.FieldByName('DTFECH').AsDateTime;
             pedVenda.VlrFrete := DMSAIDA.TPedV.FieldByName('VLRFRETE').AsCurrency;
             pedVenda.Mark := DMSAIDA.TPedV.FieldByName('MARK').AsString;
             pedVenda.DesMoe := DMSAIDA.TPedV.FieldByName('DESCMOE').AsCurrency;
             pedVenda.Atu := DMSAIDA.TPedV.FieldByName('ATU').AsInteger;
             pedVenda.Cobranca := DMSAIDA.TPedV.FieldByName('COBRANCA').AsString;
             pedVenda.AtuComis := DMSAIDA.TPedV.FieldByName('ATUCOMIS').AsInteger;
             pedVenda.Faturado := DMSAIDA.TPedV.FieldByName('FATURADO').AsString;
             pedVenda.Exporta := DMSAIDA.TPedV.FieldByName('EXPORTA').AsString;

             // - 15/05/2009:  filtra itens do pedido
             FiltraTabela(DMSAIDA.TAlx,'ITENSPEDVEN','COD_PEDVEN',codigo,'');
             DMSAIDA.TAlx.First;
             j := 0;
             While not DMSAIDA.TAlx.Eof Do
             Begin
                  SetLength(pedVenda.Itens, j+1);
                  pedVenda.Itens[j] := TItemVenda.Create;
                  pedVenda.Itens[j] := buscaItemVenda(DMSAIDA.TAlx.FieldByName('COD_ITENSPEDVEN').AsString);
                  If pedVenda.Itens[j] <> nil Then
                     j  := j+1;
                  DMSAIDA.TAlx.Next;
             End;
         End;
     End
     Else
         pedVenda := nil;
     Result := pedVenda;
End;



function TEstado.ObjectToXML() : String;
var
   xml :String;
Begin
     If ((Self.Nome <> '') And (Self.UF <> '')) Then
        xml := '<Nome>'+Self.Nome+'</Nome><UF>'+Self.UF+'</UF>'
     Else
         xml := '';

     Result := xml;
End;

function TCidade.ObjectToXML() : String;
var
   xml :String;
Begin
     If Self.Nome <> ''
     Then Begin
        xml := '<Nome>'+Self.Nome+'</Nome>';
        If Self.Estado <> nil Then
           xml := xml+'<Estado>'+Self.Estado.ObjectToXML()+'</Estado>';
     End
     Else
         xml := '';

     Result := xml;
End;

function TPessoaJuridica.ObjectToXML() : String;
var
   xml :String;
Begin

    If Self.CNPJ <> '' Then
       xml := xml+'<CNPJ>'+Self.CNPJ+'</CNPJ>';
    If Self.RazaoSocial <> '' Then
       xml := xml+'<RazaoSocial>'+Self.RazaoSocial+'</RazaoSocial>';
    If Self.IE <> '' Then
       xml := xml+'<IE>'+Self.IE+'</IE>';
    If Self.IM <> '' Then
       xml := xml+'<IM>'+Self.IM+'</IM>';
    If Self.WebPage <> '' Then
       xml := xml+'<WebPage>'+Self.WebPage+'</WebPage>';
    If Self.IEST <> '' Then
       xml := xml+'<IEST>'+Self.IEST+'</IEST>';
    If Self.Industria <> '' Then
       xml := xml+'<Industria>'+Self.Industria+'</Industria>';


     Result := xml;
End;

function TPessoaFisica.ObjectToXML() : String;
var
   xml :String;
Begin

    If Self.CPF <> '' Then
       xml := xml+'<CPF>'+Self.CPF+'</CPF>';
    If Self.EstadoCivil <> '' Then
       xml := xml+'<EstadoCivil>'+Self.EstadoCivil+'</EstadoCivil>';
    If Self.Sexo <> '' Then
       xml := xml+'<Sexo>'+Self.Sexo+'</Sexo>';
    If Self.EmpTrab <> '' Then
       xml := xml+'<EmpTrab>'+Self.EmpTrab+'</EmpTrab>';
    If Self.EndTrab <> '' Then
       xml := xml+'<EndTrab>'+Self.EndTrab+'</EndTrab>';
    If Self.BairroTrab <> '' Then
       xml := xml+'<BairroTrab>'+Self.BairroTrab+'</BairroTrab>';
    If Self.DataAdmis <> 0 Then
       xml := xml+'<DataAdmis>'+TrocaData(Self.DataAdmis)+'</DataAdmis>';
    If Self.Cargo <> '' Then
       xml := xml+'<Cargo>'+Self.Cargo+'</Cargo>';
    If Self.RG <> '' Then
       xml := xml+'<RG>'+Self.RG+'</RG>';
    If Self.DataExped <> 0 Then
       xml := xml+'<DataExped>'+TrocaData(Self.DataExped)+'</DataExped>';
    If Self.Titulo <> '' Then
       xml := xml+'<Titulo>'+Self.Titulo+'</Titulo>';
    If Self.NomeConjugue <> '' Then
       xml := xml+'<NomeConjugue>'+Self.NomeConjugue+'</NomeConjugue>';
    If Self.DataNascimentoConj <> 0 Then
       xml := xml+'<DataNascimentoConj>'+TrocaData(Self.DataNascimentoConj)+'</DataNascimentoConj>';
    If Self.RGConj <> '' Then
       xml := xml+'<RGConj>'+Self.RGConj+'</RGConj>';
    If Self.CPFConj <> '' Then
       xml := xml+'<CPFConj>'+Self.CPFConj+'</CPFConj>';
    If Self.EmpConj <> '' Then
       xml := xml+'<EmpConj>'+Self.EmpConj+'</EmpConj>';
    If Self.NomePai <> '' Then
       xml := xml+'<NomePai>'+Self.NomePai+'</NomePai>';
    If Self.NomeMae <> '' Then
       xml := xml+'<NomeMae>'+Self.NomeMae+'</NomeMae>';
    If Self.EnderecoFiliacao <> '' Then
       xml := xml+'<EnderecoFiliacao>'+Self.EnderecoFiliacao+'</EnderecoFiliacao>';
    If Self.DiaAniverConj <> 0 Then
       xml := xml+'<DiaAniverConj>'+IntToStr(Self.DiaAniverConj)+'</DiaAniverConj>';

     Result := xml;
End;

function TPessoa.ObjectToXML() : String;
var
   xml :String;
Begin
    If Self.Nome <> '' Then
       xml := xml+'<Nome>'+Self.Nome+'</Nome>';
    If Self.Endereco <> '' Then
       xml := xml+'<Endereco>'+Self.Endereco+'</Endereco>';
    If Self.Bairro <> '' Then
       xml := xml+'<Bairro>'+Self.Bairro+'</Bairro>';
    If Self.Cidade <> nil Then
       xml := xml+'<Cidade>'+Self.Cidade.ObjectToXML()+'</Cidade>';
    If Self.CEP <> '' Then
       xml := xml+'<CEP>'+Self.CEP+'</CEP>';
    If Self.DataIni <> 0 Then
       xml := xml+'<DataIni>'+TrocaData(Self.DataIni)+'</DataIni>';
    If Self.DataNasc <> 0 Then
       xml := xml+'<DataNasc>'+TrocaData(Self.DataNasc)+'</DataNasc>';
    If Self.CidadeNatural <> nil Then
       xml := xml+'<CidadeNatural>'+Self.CidadeNatural.ObjectToXML()+'</CidadeNatural>';
    If Self.TelRel <> '' Then
       xml := xml+'<TelRel>'+Self.TelRel+'</TelRel>';
    If Self.DiaAniver <> 0 Then
       xml := xml+'<DiaAniver>'+IntToStr(Self.DiaAniver)+'</DiaAniver>';
    If Self.Proximidade <> '' Then
       xml := xml+'<Proximidade>'+Self.Proximidade+'</Proximidade>';
    If Self.VlrCredito <> 0 Then
       xml := xml+'<VlrCredito>'+TrocaVirgula(Self.VlrCredito)+'</VlrCredito>';
    If Self.Numero <> '' Then
       xml := xml+'<Numero>'+Self.Numero+'</Numero>';

    If Self.PessoaFisica <> nil Then
       xml := xml+'<PessoaFisica>'+Self.PessoaFisica.ObjectToXML()+'</PessoaFisica>'
    Else
        xml := xml+'<PessoaJuridica>'+Self.PessoaJuridica.ObjectToXML()+'</PessoaJuridica>';

     Result := xml;
End;


function TFuncionario.ObjectToXML() : String;
var
   xml :String;
Begin
     If Self.CodInterno <> ''
     Then Begin
        xml := xml+'<CodInterno>'+Self.CodInterno+'</CodInterno>';
        If Self.Pessoa <> nil Then
           xml := xml+'<Pessoa>'+Self.Pessoa.ObjectToXML()+'</Pessoa>';
        If Self.DataCad <> 0 Then
           xml := xml+'<DataCad>'+TrocaData(Self.DataCad)+'</DataCad>';
        If Self.DataAdmi <> 0 Then
           xml := xml+'<DataAdmi>'+TrocaData(Self.DataAdmi)+'</DataAdmi>';
        If Self.DataDemis <> 0 Then
           xml := xml+'<DataDemis>'+TrocaData(Self.DataDemis)+'</DataDemis>';
        If Self.NumCTPS <> '' Then
           xml := xml+'<NumCTPS>'+Self.NumCTPS+'</NumCTPS>';
        If Self.SERCTPS <> '' Then
           xml := xml+'<SERCTPS>'+Self.SERCTPS+'</SERCTPS>';
        If Self.NumPis <> '' Then
           xml := xml+'<NumPis>'+Self.NumPis+'</NumPis>';
        If Self.Terceiro <> '' Then
           xml := xml+'<Terceiro>'+Self.Terceiro+'</Terceiro>';
        If Self.Palm <> '' Then
           xml := xml+'<Palm>'+Self.Palm+'</Palm>';
        If Self.NumPalm <> '' Then
           xml := xml+'<NumPalm>'+Self.NumPalm+'</NumPalm>';
        If Self.Mark <> '' Then
           xml := xml+'<Mark>'+Self.Mark+'</Mark>';

         Result := xml;
     End
     Else
         Result := '';
End;

function TFormaPagamento.ObjectToXML() : String;
var
   xml :String;
Begin
     If Self.CodInterno <> ''
     Then Begin
        xml := xml+'<CodInterno>'+Self.CodInterno+'</CodInterno>';
        If Self.Descricao <> '' Then
           xml := xml+'<Descricao>'+Self.Descricao+'</Descricao>';
        If Self.DescFisc <> '' Then
           xml := xml+'<DescFisc>'+Self.DescFisc+'</DescFisc>';
        xml := xml+'<PrimParcela>'+IntToStr(Self.PrimParcela)+'</PrimParcela>';
        xml := xml+'<Intervalo>'+IntToStr(Self.Intervalo)+'</Intervalo>';
        xml := xml+'<QuantParcela>'+IntToStr(Self.QuantParcela)+'</QuantParcela>';
        xml := xml+'<JuroAplic>'+TrocaVirgula(Self.JuroAplic)+'</JuroAplic>';
        xml := xml+'<MediaDias>'+IntToStr(Self.MediaDias)+'</MediaDias>';

         Result := xml;
     End
     Else
         Result := '';
End;

function TCST.ObjectToXML() : String;
var
   xml :String;
Begin
    If Self.CodSitTrib <> ''
     Then Begin
        If Self.Descricao <> '' Then
           xml := xml+'<Descricao>'+Self.Descricao+'</Descricao>';
        xml := xml+'<CodSitTrib>'+Self.CodSitTrib+'</CodSitTrib>';
        If Self.IndiceECF <> '' Then
           xml := xml+'<IndiceECF>'+Self.IndiceECF+'</IndiceECF>';
        If Self.Substituicao <> '' Then
           xml := xml+'<Substituicao>'+Self.Substituicao+'</Substituicao>';

         Result := xml;
     End
     Else
         Result := '';
End;

function TUnidade.ObjectToXML() : String;
var
   xml :String;
Begin
     If Self.Sigla <> ''
     Then Begin
        If Self.Descricao <> '' Then
           xml := xml+'<Descricao>'+Self.Descricao+'</Descricao>';
        xml := xml+'<Sigla>'+Self.Sigla+'</Sigla>';
        If Self.Arrendondar <> '' Then
           xml := xml+'<Arrendondar>'+Self.Arrendondar+'</Arrendondar>';

         Result := xml;
     End
     Else
         Result := '';
End;

function TFornecedor.ObjectToXML() : String;
var
   xml :String;
Begin
     If ((Self.CodInterno <> '') And (Self.Pessoa <> nil))
     Then Begin
        xml := xml+'<CodInterno>'+Self.CodInterno+'</CodInterno>';
        xml := xml+'<Pessoa>'+Self.Pessoa.ObjectToXML()+'</Pessoa>';
        If Self.DataCad <> 0 Then
           xml := xml+'<DataCad>'+TrocaData(Self.DataCad)+'</DataCad>';
        If Self.TipoFornec <> '' Then
           xml := xml+'<TipoFornec>'+Self.TipoFornec+'</TipoFornec>';
        xml := xml+'<PrazoEntrega>'+IntToStr(Self.PrazoEntrega)+'</PrazoEntrega>';
        If Self.Tipo <> '' Then
           xml := xml+'<Tipo>'+Self.Tipo+'</Tipo>';
        If Self.Obs <> '' Then
           xml := xml+'<Obs>'+Self.Obs+'</Obs>';
        If Self.Exporta <> '' Then
           xml := xml+'<Exporta>'+Self.Exporta+'</Exporta>';
        If Self.MarkRel <> '' Then
           xml := xml+'<MarkRel>'+Self.MarkRel+'</MarkRel>';

         Result := xml;
     End
     Else
         Result := '';
End;

function TCliente.ObjectToXML() : String;
var
   xml :String;
Begin
     If ((Self.CodInterno <> '') And (Self.Pessoa <> nil))
     Then Begin
        xml := xml+'<CodInterno>'+Self.CodInterno+'</CodInterno>';
        xml := xml+'<CodPessoa>'+Self.CodPessoa+'</CodPessoa>';
        xml := xml+'<Pessoa>'+Self.Pessoa.ObjectToXML()+'</Pessoa>';
        If Self.DataCad <> 0 Then
           xml := xml+'<DataCad>'+TrocaData(Self.DataCad)+'</DataCad>';
        xml := xml+'<RSalConj>'+TrocaVirgula(Self.RSalConj)+'</RSalConj>';
        xml := xml+'<RSal>'+TrocaVirgula(Self.RSal)+'</RSal>';
        xml := xml+'<RHonProf>'+TrocaVirgula(Self.RHonProf)+'</RHonProf>';
        xml := xml+'<ROutrec>'+TrocaVirgula(Self.ROutrec)+'</ROutrec>';
        xml := xml+'<DAluquel>'+TrocaVirgula(Self.DAluquel)+'</DAluquel>';
        xml := xml+'<DResidencia>'+TrocaVirgula(Self.DResidencia)+'</DResidencia>';
        xml := xml+'<DVeiculo>'+TrocaVirgula(Self.DVeiculo)+'</DVeiculo>';
        xml := xml+'<DFamiliar>'+TrocaVirgula(Self.DFamiliar)+'</DFamiliar>';
        xml := xml+'<DOutdesp>'+TrocaVirgula(Self.DOutdesp)+'</DOutdesp>';
        xml := xml+'<LimCred>'+TrocaVirgula(Self.LimCred)+'</LimCred>';
        If Self.QtdTempoResid <> '' Then
           xml := xml+'<QtdTempoResid>'+Self.QtdTempoResid+'</QtdTempoResid>';
        If Self.Bens <> '' Then
           xml := xml+'<Bens>'+Self.Bens+'</Bens>';
        If Self.Vendedor <> nil Then
           xml := xml+'<Vendedor>'+Self.Vendedor.ObjectToXML()+'</Vendedor>';
        If Self.InfoCom <> '' Then
           xml := xml+'<InfoCom>'+Self.InfoCom+'</InfoCom>';
        If Self.Atualizar <> '' Then
           xml := xml+'<Atualizar>'+Self.Atualizar+'</Atualizar>';
        If Self.Exporta <> '' Then
           xml := xml+'<Exporta>'+Self.Exporta+'</Exporta>';
        If Self.Ativo <> '' Then
           xml := xml+'<Ativo>'+Self.Ativo+'</Ativo>';
        If Self.Credencial <> '' Then
           xml := xml+'<Credencial>'+Self.Credencial+'</Credencial>';
        If Self.RamoAtiv <> '' Then
           xml := xml+'<RamoAtiv>'+Self.RamoAtiv+'</RamoAtiv>';
        If Self.Atacadista <> '' Then
           xml := xml+'<Atacadista>'+Self.Atacadista+'</Atacadista>';
        If Self.FormPag <> nil Then
           xml := xml+'<FormPag>'+Self.FormPag.ObjectToXML()+'</FormPag>';
        If Self.Exporta <> '' Then
           xml := xml+'<Exporta>'+Self.Exporta+'</Exporta>';
        If Self.Separar <> '' Then
           xml := xml+'<Separar>'+Self.Separar+'</Separar>';
        xml := xml+'<Multa>'+TrocaVirgula(Self.Multa)+'</Multa>';
        xml := xml+'<Juro>'+TrocaVirgula(Self.Juro)+'</Juro>';
        If Self.Obs <> '' Then
           xml := xml+'<Obs>'+Self.Obs+'</Obs>';
        If Self.SCPC <> '' Then
           xml := xml+'<SCPC>'+Self.SCPC+'</SCPC>';
        xml := xml+'<Tamanho>'+TrocaVirgula(Self.Tamanho)+'</Tamanho>';
        If Self.Informacao <> '' Then
           xml := xml+'<Informacao>'+Self.Informacao+'</Informacao>';
        xml := xml+'<DiaVencimento>'+IntToStr(Self.DiaVencimento)+'</DiaVencimento>';
        If Self.ContribICMS <> '' Then
           xml := xml+'<ContribICMS>'+Self.ContribICMS+'</ContribICMS>';
        If Self.MarkRel <> '' Then
           xml := xml+'<MarkRel>'+Self.MarkRel+'</MarkRel>';
        If Self.Suframa <> '' Then
           xml := xml+'<Suframa>'+Self.Suframa+'</Suframa>';
         Result := xml;
     End
     Else
         Result := '';
End;

function TGrupo.ObjectToXML() : String;
var
   xml :String;
Begin
     If ((Self.Descricao <> '') And (Self.CodInterno <> ''))
     Then Begin
        xml := '<Descricao>'+Self.Descricao+'</Descricao><CodInterno>'+Self.CodInterno+'</CodInterno>';
        If Self.Tipo <> '' Then
           xml := xml+'<Tipo>'+Self.Tipo+'</Tipo>';
     End
     Else
         xml := '';

     Result := xml;
End;

function TSubGrupo.ObjectToXML() : String;
var
   xml :String;
Begin
     If ((Self.Descricao <> '') And (Self.CodInterno <> ''))
     Then Begin
        xml := '<Descricao>'+Self.Descricao+'</Descricao><CodInterno>'+Self.CodInterno+'</CodInterno>';
        If Self.Tipo <> '' Then
           xml := xml+'<Tipo>'+Self.Tipo+'</Tipo>';
     End
     Else
         xml := '';

     Result := xml;
End;

function TProduto.ObjectToXML() : String;
var
   xml :String;
Begin
     If Self.SubGrupo <> nil
     Then Begin
        If Self.Descricao <> '' Then
           xml := xml+'<Descricao>'+Self.Descricao+'</Descricao>';
        If Self.Aplicacao <> '' Then
           xml := xml+'<Aplicacao>'+Self.Aplicacao+'</Aplicacao>';
        If Self.Grupo <> nil Then
           xml := xml+'<Grupo>'+Self.Grupo.ObjectToXML()+'</Grupo>';
        xml := xml+'<SubGrupo>'+Self.SubGrupo.ObjectToXML()+'</SubGrupo>';
        If Self.CST <> nil Then
           xml := xml+'<CST>'+Self.CST.ObjectToXML()+'</CST>';
        xml := xml+'<VendVista>'+TrocaVirgula(Self.VendVista)+'</VendVista>';
        xml := xml+'<VendPrazo>'+TrocaVirgula(Self.VendPrazo)+'</VendPrazo>';
        xml := xml+'<CustoVenda>'+TrocaVirgula(Self.CustoVenda)+'</CustoVenda>';
        xml := xml+'<CompVista>'+TrocaVirgula(Self.CompVista)+'</CompVista>';
        xml := xml+'<CompPrazo>'+TrocaVirgula(Self.CompPrazo)+'</CompPrazo>';
        xml := xml+'<QtdVend>'+TrocaVirgula(Self.QtdVend)+'</QtdVend>';
     End
     Else
         xml := '';

     Result := xml;
End;

function TSubProduto.ObjectToXML() : String;
var
   xml :String;
Begin
     If Self.ContrInt <> ''
     Then Begin
        If Self.CodComposto <> '' Then
           xml := xml+'<CodComposto>'+Self.CodComposto+'</CodComposto>';
        If Self.Descricao <> '' Then
           xml := xml+'<Descricao>'+Self.Descricao+'</Descricao>';
        If Self.CodBarra <> '' Then
           xml := xml+'<CodBarra>'+Self.CodBarra+'</CodBarra>';
        If Self.CodProdFabr <> '' Then
           xml := xml+'<CodProdFabr>'+Self.CodProdFabr+'</CodProdFabr>';
        If Self.Fabricante <> '' Then
           xml := xml+'<Fabricante>'+Self.Fabricante+'</Fabricante>';
        If Self.Marca <> '' Then
           xml := xml+'<Marca>'+Self.Marca+'</Marca>';
        If Self.QuantGarantia <> '' Then
           xml := xml+'<QuantGarantia>'+Self.QuantGarantia+'</QuantGarantia>';
        If Self.TipoGarantia <> '' Then
           xml := xml+'<TipoGarantia>'+Self.TipoGarantia+'</TipoGarantia>';
        If Self.LocalEstante <> '' Then
           xml := xml+'<LocalEstante>'+Self.LocalEstante+'</LocalEstante>';
        If Self.Ativo <> '' Then
           xml := xml+'<Ativo>'+Self.Ativo+'</Ativo>';
        xml := xml+'<IPIProd>'+TrocaVirgula(Self.IPIProd)+'</IPIProd>';
        xml := xml+'<PesoLiq>'+TrocaVirgula(Self.PesoLiq)+'</PesoLiq>';
        xml := xml+'<PesoBruto>'+TrocaVirgula(Self.PesoBruto)+'</PesoBruto>';
        If Self.Produto <> nil Then
           xml := xml+'<Produto>'+Self.Produto.ObjectToXML()+'</Produto>';
        If Self.CodInterno <> '' Then
           xml := xml+'<CodInterno>'+Self.CodInterno+'</CodInterno>';
        If Self.Motivo <> '' Then
           xml := xml+'<Motivo>'+Self.Motivo+'</Motivo>';
        xml := xml+'<QtdAtc>'+TrocaVirgula(Self.QtdAtc)+'</QtdAtc>';
        xml := xml+'<EmbProd>'+TrocaVirgula(Self.EmbProd)+'</EmbProd>';
        If Self.Peneira <> '' Then
           xml := xml+'<Peneira>'+Self.Peneira+'</Peneira>';
        If Self.Germi <> '' Then
           xml := xml+'<Germi>'+Self.Germi+'</Germi>';
        If Self.Pureza <> '' Then
           xml := xml+'<Pureza>'+Self.Pureza+'</Pureza>';
        If Self.ATestGar <> '' Then
           xml := xml+'<ATestGar>'+Self.ATestGar+'</ATestGar>';
        If Self.Safra <> '' Then
           xml := xml+'<Safra>'+Self.Safra+'</Safra>';
        If Self.UniCompra <> nil Then
           xml := xml+'<UniCompra>'+Self.UniCompra.ObjectToXML()+'</UniCompra>';
        If Self.UnidVenda <> nil Then
           xml := xml+'<UnidVenda>'+Self.UnidVenda.ObjectToXML()+'</UnidVenda>';
        If Self.CST <> nil Then
           xml := xml+'<CST>'+Self.CST.ObjectToXML()+'</CST>';
        If Self.DataCad <> 0 Then
           xml := xml+'<DataCad>'+TrocaData(Self.DataCad)+'</DataCad>';
        If Self.CodeEAN1 <> '' Then
           xml := xml+'<CodeEAN1>'+Self.CodeEAN1+'</CodeEAN1>';
        xml := xml+'<ContrInt>'+Self.ContrInt+'</ContrInt>';
        If Self.Cor <> '' Then
           xml := xml+'<Cor>'+Self.Cor+'</Cor>';
        If Self.Classificacao <> '' Then
           xml := xml+'<Classificacao>'+Self.Classificacao+'</Classificacao>';
        If Self.DescCupom <> '' Then
           xml := xml+'<DescCupom>'+Self.DescCupom+'</DescCupom>';
        If Self.NCM <> '' Then
           xml := xml+'<NCM>'+Self.NCM+'</NCM>';
        If Self.ObsFiscal <> '' Then
           xml := xml+'<ObsFiscal>'+Self.ObsFiscal+'</ObsFiscal>';
        If Self.Composicao <> '' Then
           xml := xml+'<Composicao>'+Self.Composicao+'</Composicao>';
        If Self.Altura <> '' Then
           xml := xml+'<Altura>'+Self.Altura+'</Altura>';
        If Self.Largura <> '' Then
           xml := xml+'<Largura>'+Self.Largura+'</Largura>';
        If Self.Especificao <> '' Then
           xml := xml+'<Especificao>'+Self.Especificao+'</Especificao>';
        If Self.Mark <> '' Then
           xml := xml+'<Mark>'+Self.Mark+'</Mark>';
        If Self.Balanca <> '' Then
           xml := xml+'<Balanca>'+Self.Balanca+'</Balanca>';
        If Self.Anvisa <> '' Then
           xml := xml+'<Anvisa>'+Self.Anvisa+'</Anvisa>';
        If Self.MinSaude <> '' Then
           xml := xml+'<MinSaude>'+Self.MinSaude+'</MinSaude>';
        If Self.Densidade <> '' Then
           xml := xml+'<Densidade>'+Self.Densidade+'</Densidade>';
     End
     Else
         xml := '';

     Result := xml;
End;

function TEstoque.ObjectToXML() : String;
var
   xml :String;
Begin
     If Self.SubProduto <> nil
     Then Begin
        xml := xml+'<SubProduto>'+Self.SubProduto.ObjectToXML()+'</SubProduto>';

        xml := xml+'<EstMax>'+TrocaVirgula(Self.EstMax)+'</EstMax>';
        xml := xml+'<EstMin>'+TrocaVirgula(Self.EstMin)+'</EstMin>';
        xml := xml+'<ICMS>'+TrocaVirgula(Self.ICMS)+'</ICMS>';
        xml := xml+'<Frete>'+TrocaVirgula(Self.Frete)+'</Frete>';
        xml := xml+'<EstFisico>'+TrocaVirgula(Self.EstFisico)+'</EstFisico>';
        xml := xml+'<EstReserv>'+TrocaVirgula(Self.EstReserv)+'</EstReserv>';

        xml := xml+'<EstPed>'+TrocaVirgula(Self.EstPed)+'</EstPed>';
        xml := xml+'<EstSaldo>'+TrocaVirgula(Self.EstSaldo)+'</EstSaldo>';
        xml := xml+'<CVVProAt>'+TrocaVirgula(Self.CVVProAt)+'</CVVProAt>';
        xml := xml+'<CVPProAt>'+TrocaVirgula(Self.CVPProAt)+'</CVPProAt>';
        xml := xml+'<CVVProVar>'+TrocaVirgula(Self.CVVProVar)+'</CVVProVar>';
        xml := xml+'<CVPProVar>'+TrocaVirgula(Self.CVPProVar)+'</CVPProVar>';

        xml := xml+'<VendAtaP>'+TrocaVirgula(Self.VendAtaP)+'</VendAtaP>';
        xml := xml+'<VendAtaV>'+TrocaVirgula(Self.VendAtaV)+'</VendAtaV>';
        xml := xml+'<VendVarp>'+TrocaVirgula(Self.VendVarp)+'</VendVarp>';
        xml := xml+'<ValUnit>'+TrocaVirgula(Self.ValUnit)+'</ValUnit>';
        xml := xml+'<ValRep>'+TrocaVirgula(Self.ValRep)+'</ValRep>';
        xml := xml+'<ValCusto>'+TrocaVirgula(Self.ValCusto)+'</ValCusto>';

        xml := xml+'<AVVProAt>'+TrocaVirgula(Self.AVVProAt)+'</AVVProAt>';
        xml := xml+'<AVPProAt>'+TrocaVirgula(Self.AVPProAt)+'</AVPProAt>';
        xml := xml+'<AVVProVar>'+TrocaVirgula(Self.AVVProVar)+'</AVVProVar>';
        xml := xml+'<AVPProVar>'+TrocaVirgula(Self.AVPProVar)+'</AVPProVar>';
        xml := xml+'<Lucratividade>'+TrocaVirgula(Self.Lucratividade)+'</Lucratividade>';
        xml := xml+'<CoefDiv>'+TrocaVirgula(Self.CoefDiv)+'</CoefDiv>';

        xml := xml+'<ValorRest>'+TrocaVirgula(Self.ValorRest)+'</ValorRest>';
        xml := xml+'<Outros>'+TrocaVirgula(Self.Outros)+'</Outros>';
        xml := xml+'<Quant2>'+TrocaVirgula(Self.Quant2)+'</Quant2>';
        If Self.DtCad <> 0 Then
           xml := xml+'<DtCad>'+TrocaData(Self.DtCad)+'</DtCad>';
        xml := xml+'<EstIni>'+TrocaVirgula(Self.EstIni)+'</EstIni>';
        xml := xml+'<ValCusDesp>'+TrocaVirgula(Self.ValCusDesp)+'</ValCusDesp>';
        xml := xml+'<EstantCont>'+TrocaVirgula(Self.EstantCont)+'</EstantCont>';

        xml := xml+'<Contagem>'+TrocaVirgula(Self.Contagem)+'</Contagem>';
        xml := xml+'<EstSimulado>'+TrocaVirgula(Self.EstSimulado)+'</EstSimulado>';
        xml := xml+'<VlrUnitComp>'+TrocaVirgula(Self.VlrUnitComp)+'</VlrUnitComp>';
        xml := xml+'<Indice>'+TrocaVirgula(Self.Indice)+'</Indice>';
        xml := xml+'<Bonificacao>'+TrocaVirgula(Self.Bonificacao)+'</Bonificacao>';
        xml := xml+'<VlrBonific>'+TrocaVirgula(Self.VlrBonific)+'</VlrBonific>';

        xml := xml+'<Desconto>'+TrocaVirgula(Self.Desconto)+'</Desconto>';
        xml := xml+'<CLNC>'+TrocaVirgula(Self.CLNC)+'</CLNC>';
        xml := xml+'<ModEst>'+TrocaVirgula(Self.ModEst)+'</ModEst>';
        xml := xml+'<ImpExp>'+TrocaVirgula(Self.ImpExp)+'</ImpExp>';
        xml := xml+'<ImprEnd>'+TrocaVirgula(Self.ImprEnd)+'</ImprEnd>';
        xml := xml+'<ContSoc>'+TrocaVirgula(Self.ContSoc)+'</ContSoc>';

        xml := xml+'<COFINS>'+TrocaVirgula(Self.COFINS)+'</COFINS>';
        xml := xml+'<PIS>'+TrocaVirgula(Self.PIS)+'</PIS>';
        xml := xml+'<MargemSeg>'+TrocaVirgula(Self.MargemSeg)+'</MargemSeg>';
        xml := xml+'<PercMargSeg>'+TrocaVirgula(Self.PercMargSeg)+'</PercMargSeg>';
        xml := xml+'<ReducBase>'+TrocaVirgula(Self.ReducBase)+'</ReducBase>';
        xml := xml+'<VlrCompSD>'+TrocaVirgula(Self.VlrCompSD)+'</VlrCompSD>';

        xml := xml+'<Acrescimo>'+TrocaVirgula(Self.Acrescimo)+'</Acrescimo>';
        xml := xml+'<EstCalc>'+TrocaVirgula(Self.EstCalc)+'</EstCalc>';
        If Self.DataAtual <> 0 Then
           xml := xml+'<DataAtual>'+TrocaData(Self.DataAtual)+'</DataAtual>';
        If Self.HoraAtual <> 0 Then
           xml := xml+'<HoraAtual>'+TrocaHora(Self.HoraAtual)+'</HoraAtual>';
        xml := xml+'<PrecoOferta>'+TrocaVirgula(Self.PrecoOferta)+'</PrecoOferta>';
        If Self.DataOferta <> 0 Then
           xml := xml+'<DataOferta>'+TrocaData(Self.DataOferta)+'</DataOferta>';
        If Self.VencOferta <> 0 Then
           xml := xml+'<VencOferta>'+TrocaData(Self.VencOferta)+'</VencOferta>';
        xml := xml+'<MediaBaseICMST>'+TrocaVirgula(Self.MediaBaseICMST)+'</MediaBaseICMST>';
        xml := xml+'<MediaVlrICMST>'+TrocaVirgula(Self.MediaVlrICMST)+'</MediaVlrICMST>';
        xml := xml+'<IPIVND>'+TrocaVirgula(Self.IPIVND)+'</IPIVND>';
        xml := xml+'<PMC>'+TrocaVirgula(Self.PMC)+'</PMC>';
        xml := xml+'<PMA>'+TrocaVirgula(Self.PMA)+'</PMA>';
     End
     Else
         xml := '';

     Result := xml;
End;


function TItemVenda.ObjectToXML() : String;
var
   xml :String;
Begin
     If Self.Estoque <> nil
     Then Begin
        xml := xml+'<Estoque>'+Self.Estoque.ObjectToXML()+'</Estoque>';
        xml := xml+'<QtdProd>'+TrocaVirgula(Self.QtdProd)+'</QtdProd>';
        xml := xml+'<Desconto>'+TrocaVirgula(Self.DescProd)+'</Desconto>';
        If Self.Funcionario <> nil Then
           xml := xml+'<Funcionario>'+Self.Funcionario.ObjectToXML()+'</Funcionario>';
        xml := xml+'<ValUnit>'+TrocaVirgula(Self.ValUnit)+'</ValUnit>';
        xml := xml+'<ValCusto>'+TrocaVirgula(Self.ValCusto)+'</ValCusto>';
        xml := xml+'<ValorTotal>'+TrocaVirgula(Self.ValorTotal)+'</ValorTotal>';
        If Self.AtueEst <> '' Then
           xml := xml+'<AtueEst>'+Self.AtueEst+'</AtueEst>';
        xml := xml+'<ValRep>'+TrocaVirgula(Self.ValRep)+'</ValRep>';
        xml := xml+'<CoefDiv>'+TrocaVirgula(Self.CoefDiv)+'</CoefDiv>';
        xml := xml+'<ValComp>'+TrocaVirgula(Self.ValComp)+'</ValComp>';
        xml := xml+'<LucPer>'+TrocaVirgula(Self.LucPer)+'</LucPer>';
        xml := xml+'<LucMoe>'+TrocaVirgula(Self.LucMoe)+'</LucMoe>';
        If Self.Data <> 0 Then
           xml := xml+'<Data>'+TrocaData(Self.Data)+'</Data>';
        xml := xml+'<Comissao>'+TrocaVirgula(Self.Comissao)+'</Comissao>';
        If Self.Operacao <> '' Then
           xml := xml+'<Operacao>'+Self.Operacao+'</Operacao>';

        xml := xml+'<LucRel>'+TrocaVirgula(Self.LucRel)+'</LucRel>';
        xml := xml+'<VlrVendBD>'+TrocaVirgula(Self.VlrVendBD)+'</VlrVendBD>';
        xml := xml+'<QtdDev>'+TrocaVirgula(Self.QtdDev)+'</QtdDev>';
        xml := xml+'<NumItem>'+IntToStr(Self.NumItem)+'</NumItem>';
        xml := xml+'<AliqICMS>'+TrocaVirgula(Self.AliqICMS)+'</AliqICMS>';
        xml := xml+'<BaseICMS>'+TrocaVirgula(Self.BaseICMS)+'</BaseICMS>';
        xml := xml+'<VlrICMS>'+TrocaVirgula(Self.VlrICMS)+'</VlrICMS>';
        xml := xml+'<BaseICMSSubs>'+TrocaVirgula(Self.BaseICMSSubs)+'</BaseICMSSubs>';
        xml := xml+'<VlrIPI>'+TrocaVirgula(Self.VlrIPI)+'</VlrIPI>';
        xml := xml+'<AliIPI>'+TrocaVirgula(Self.AliIPI)+'</AliIPI>';
        xml := xml+'<ReducBaseICMS>'+TrocaVirgula(Self.ReducBaseICMS)+'</ReducBaseICMS>';
        xml := xml+'<VlrIcmsSubst>'+TrocaVirgula(Self.VlrIcmsSubst)+'</VlrIcmsSubst>';
        xml := xml+'<VlrUnitDev>'+TrocaVirgula(Self.VlrUnitDev)+'</VlrUnitDev>';

        xml := xml+'<QtdEntregre>'+TrocaVirgula(Self.QtdEntregre)+'</QtdEntregre>';
        xml := xml+'<LucPer>'+TrocaVirgula(Self.LucPer)+'</LucPer>';
        If Self.Unidade <> nil Then
           xml := xml+'<Unidade>'+Self.Unidade.ObjectToXML()+'</Unidade>';
        xml := xml+'<QtdEmb>'+TrocaVirgula(Self.QtdEmb)+'</QtdEmb>';
        If Self.UnidEmb <> nil Then
           xml := xml+'<UnidEmb>'+Self.UnidEmb.ObjectToXML()+'</UnidEmb>';
        xml := xml+'<QtdNaEmb>'+TrocaVirgula(Self.QtdNaEmb)+'</QtdNaEmb>';
        If Self.CFOP <> '' Then
           xml := xml+'<CFOP>'+Self.CFOP+'</CFOP>';
        If Self.TipoLista <> '' Then
           xml := xml+'<TipoLista>'+Self.TipoLista+'</TipoLista>';
        xml := xml+'<IPNPMC>'+TrocaVirgula(Self.IPNPMC)+'</IPNPMC>';
        xml := xml+'<IPNMVA>'+TrocaVirgula(Self.IPNMVA)+'</IPNMVA>';

     End
     Else
         xml := '';

     Result := xml;
End;
function TPedVenda.ObjectToXML() : String;
var
   xml :String;
   i :Integer;
Begin
     If Self.Cliente <> nil
     Then Begin
        xml := xml+'<Cliente>'+Self.Cliente.ObjectToXML()+'</Cliente>';
        If Self.DtPedido <> 0 Then
           xml := xml+'<DtPedido>'+TrocaData(Self.DtPedido)+'</DtPedido>';
        xml := xml+'<Desconto>'+TrocaVirgula(Self.Desconto)+'</Desconto>';
        If Self.Pagamento <> nil Then
           xml := xml+'<Pagamento>'+Self.Pagamento.ObjectToXML()+'</Pagamento>';
        xml := xml+'<Valor>'+TrocaVirgula(Self.Valor)+'</Valor>';
        If Self.Entrega <> 0 Then
           xml := xml+'<Entrega>'+TrocaData(Self.Entrega)+'</Entrega>';
        If Self.NomeCliente <> '' Then
           xml := xml+'<NomeCliente>'+Self.NomeCliente+'</NomeCliente>';
        If Self.Obs <> '' Then
           xml := xml+'<Obs>'+Self.Obs+'</Obs>';
        If Self.CPFCNPJ <> '' Then
           xml := xml+'<CPFCNPJ>'+Self.CPFCNPJ+'</CPFCNPJ>';
        If Self.Vendedor <> nil Then
           xml := xml+'<Vendedor>'+Self.Vendedor.ObjectToXML()+'</Vendedor>';
        If Self.Situacao <> '' Then
           xml := xml+'<Situacao>'+Self.Situacao+'</Situacao>';
        If Self.NumPed <> '' Then
           xml := xml+'<NumPed>'+Self.NumPed+'</NumPed>';
        If Self.Tipo <> '' Then
           xml := xml+'<Tipo>'+Self.Tipo+'</Tipo>';
        xml := xml+'<VlrComis>'+TrocaVirgula(Self.VlrComis)+'</VlrComis>';
        xml := xml+'<Garantia>'+Self.Garantia+'</Garantia>';
        xml := xml+'<ComSobVenda>'+Self.ComSobVenda+'</ComSobVenda>';
        If Self.Fisco <> '' Then
           xml := xml+'<Fisco>'+Self.Fisco+'</Fisco>';
        If Self.NumFiscal <> '' Then
           xml := xml+'<NumFiscal>'+Self.NumFiscal+'</NumFiscal>';
        If Self.DtFech <> 0 Then
           xml := xml+'<DtFech>'+TrocaData(Self.DtFech)+'</DtFech>';
        xml := xml+'<VlrFrete>'+TrocaVirgula(Self.VlrFrete)+'</VlrFrete>';
        xml := xml+'<Mark>'+Self.Mark+'</Mark>';
        xml := xml+'<DesMoe>'+TrocaVirgula(Self.DesMoe)+'</DesMoe>';
        xml := xml+'<Atu>'+IntToStr(Self.Atu)+'</Atu>';
        If Self.Cobranca <> '' Then
           xml := xml+'<Cobranca>'+Self.Cobranca+'</Cobranca>';
        xml := xml+'<AtuComis>'+IntToStr(Self.AtuComis)+'</AtuComis>';
        If Self.Faturado <> '' Then
           xml := xml+'<Faturado>'+Self.Faturado+'</Faturado>';
        If Self.Exporta <> '' Then
           xml := xml+'<Exporta>'+Self.Exporta+'</Exporta>';

        If ((Itens <> nil) And (Length(Itens) > 0))
        Then Begin
             for i:=0 to Length(Itens)-1 do
             Begin
                  xml := xml+'<Iten>'+Self.Itens[i].ObjectToXML+'</Iten>';
             End;
        End;
     End
     Else
         xml := '';

     Result := xml;
End;

function XmlToEstado(node :IXMLNode):TEstado;
var
   estado :TEstado;
Begin
     estado := nil;
     If node.ChildNodes['Nome'].Text <> ''
     Then Begin
          estado := TEstado.Create;
          estado.Nome := node.ChildNodes['Nome'].Text;
          estado.UF := node.ChildNodes['UF'].Text;
     End;

     Result := estado;
End;

function XmlToCidade(node :IXMLNode):TCidade;
var
   objeto :TCidade;
Begin
     objeto := nil;
     If node.ChildNodes['Nome'].Text <> ''
     Then Begin
          objeto := TCidade.Create;
          objeto.Nome := node.ChildNodes['Nome'].Text;
          objeto.Estado := XmlToEstado(node.ChildNodes['Estado']);
     End;

     Result := objeto;
End;

function XmlToPessoaJuridica(node :IXMLNode):TPessoaJuridica;
var
   objeto :TPessoaJuridica;
Begin

    objeto := TPessoaJuridica.Create;
    objeto.CNPJ :=  node.ChildNodes['CNPJ'].Text;
    objeto.RazaoSocial := node.ChildNodes['RazaoSocial'].Text;
    objeto.IE := node.ChildNodes['IE'].Text;
    objeto.IM := node.ChildNodes['IM'].Text;
    objeto.WebPage := node.ChildNodes['WebPage'].Text;
    objeto.IEST := node.ChildNodes['IEST'].Text;
    objeto.Industria := node.ChildNodes['Industria'].Text;

    Result := objeto;
End;

function XmlToPessoaFisica(node :IXMLNode):TPessoaFisica;
var
   objeto :TPessoaFisica;
Begin

    objeto := TPessoaFisica.Create;
    objeto.CPF := node.ChildNodes['CPF'].Text;
    objeto.EstadoCivil := node.ChildNodes['EstadoCivil'].Text;
    objeto.Sexo := node.ChildNodes['Sexo'].Text;
    objeto.EmpTrab := node.ChildNodes['EmpTrab'].Text;
    objeto.EndTrab := node.ChildNodes['EndTrab'].Text;
    objeto.BairroTrab := node.ChildNodes['BairroTrab'].Text;
    objeto.DataAdmis := DataTroca(node.ChildNodes['DataAdmis'].Text);
    objeto.Cargo := node.ChildNodes['Cargo'].Text;
    objeto.RG := node.ChildNodes['RG'].Text;
    objeto.DataExped := DataTroca(node.ChildNodes['DataExped'].Text);
    objeto.OrgaoExped := node.ChildNodes['OrgaoExped'].Text;
    objeto.Titulo := node.ChildNodes['Titulo'].Text;
    objeto.NomeConjugue := node.ChildNodes['NomeConjugue'].Text;
    objeto.DataNascimentoConj := DataTroca(node.ChildNodes['DataNascimentoConj'].Text);
    objeto.RGConj := node.ChildNodes['RGConj'].Text;
    objeto.CPFConj := node.ChildNodes['CPFConj'].Text;
    objeto.EmpConj := node.ChildNodes['EmpConj'].Text;
    objeto.NomePai := node.ChildNodes['NomePai'].Text;
    objeto.NomeMae := node.ChildNodes['NomeMae'].Text;
    objeto.EnderecoFiliacao := node.ChildNodes['EnderecoFiliacao'].Text;
    objeto.DiaAniverConj := StrToInt(node.ChildNodes['DiaAniverConj'].Text);

     Result := objeto;
End;

function XmlToPessoa(node :IXMLNode):TPessoa;
var
   objeto :TPessoa;
Begin

    objeto := TPessoa.Create;
    objeto.Nome := node.ChildNodes['Nome'].Text;
    objeto.Endereco := node.ChildNodes['Endereco'].Text;
    objeto.Bairro := node.ChildNodes['Bairro'].Text;
    objeto.Cidade := XmlToCidade(node.ChildNodes['Cidade']);
    objeto.CEP := node.ChildNodes['CEP'].Text;
    objeto.DataIni := DataTroca(node.ChildNodes['DataIni'].Text);
    objeto.DataNasc := DataTroca(node.ChildNodes['DataNasc'].Text);
    objeto.CidadeNatural := XmlToCidade(node.ChildNodes['CidadeNatural']);
    objeto.TelRel := node.ChildNodes['TelRel'].Text;
    If node.ChildNodes['DiaAniver'].Text <> '' Then
      objeto.DiaAniver := StrToInt(node.ChildNodes['DiaAniver'].Text);
    objeto.Proximidade := node.ChildNodes['Proximidade'].Text;
    objeto.VlrCredito := VirgulaTroca(node.ChildNodes['VlrCredito'].Text);
    objeto.Numero := node.ChildNodes['Numero'].Text;

    If node.ChildNodes['PessoaJuridica'].ChildNodes['CNPJ'].Text <> '' Then
      objeto.PessoaJuridica := XmlToPessoaJuridica(node.ChildNodes['PessoaJuridica'])
    Else
      objeto.PessoaJuridica := XmlToPessoaJuridica(node.ChildNodes['PessoaFisica']);

     Result := objeto;
End;


function XmlToFuncionario(node :IXMLNode):TFuncionario;
var
   objeto :TFuncionario;
Begin
     objeto := nil;

     If node.ChildNodes['CodInterno'].Text <> ''
     Then Begin
          objeto := TFuncionario.Create;
          objeto.CodInterno := node.ChildNodes['CodInterno'].Text;
          objeto.Pessoa := XmlToPessoa(node.ChildNodes['Pessoa']);
          objeto.DataCad := DataTroca(node.ChildNodes['DataCad'].Text);
          objeto.DataAdmi := DataTroca(node.ChildNodes['DataAdmi'].Text);
          objeto.DataDemis := DataTroca(node.ChildNodes['DataDemis'].Text);
          objeto.NumCTPS := node.ChildNodes['NumCTPS'].Text;
          objeto.SERCTPS := node.ChildNodes['SERCTPS'].Text;
          objeto.NumPis := node.ChildNodes['NumPis'].Text;
          objeto.Terceiro := node.ChildNodes['Terceiro'].Text;
          objeto.Palm := node.ChildNodes['Palm'].Text;
          objeto.NumPalm := node.ChildNodes['NumPalm'].Text;
          objeto.Mark := node.ChildNodes['Mark'].Text;
     End;

     Result := objeto;
End;

function XmlToFormaPagamento(node :IXMLNode):TFormaPagamento;
var
   objeto :TFormaPagamento;
Begin

     objeto := nil;

     If node.ChildNodes['CodInterno'].Text <> ''
     Then Begin
          objeto := TFormaPagamento.Create;
          objeto.CodInterno := node.ChildNodes['CodInterno'].Text;
          objeto.Descricao := node.ChildNodes['Descricao'].Text;
          objeto.DescFisc := node.ChildNodes['DescFisc'].Text;
          If node.ChildNodes['PrimParcela'].Text <> '' Then
            objeto.PrimParcela := StrToInt(node.ChildNodes['PrimParcela'].Text);
          If node.ChildNodes['Intervalo'].Text <> '' Then
            objeto.Intervalo := StrToInt(node.ChildNodes['Intervalo'].Text);
          If node.ChildNodes['QuantParcela'].Text <> '' Then
            objeto.QuantParcela := StrToInt(node.ChildNodes['QuantParcela'].Text);
          objeto.JuroAplic := VirgulaTroca(node.ChildNodes['JuroAplic'].Text);
          If node.ChildNodes['MediaDias'].Text <> '' Then
            objeto.MediaDias := StrToInt(node.ChildNodes['MediaDias'].Text);
          objeto.Tipo := node.ChildNodes['Tipo'].Text;
     End;

     Result := objeto;
End;

function XmlToCST(node :IXMLNode):TCST;
var
   objeto :TCST;
Begin
      objeto := nil;

     If node.ChildNodes['CodSitTrib'].Text <> ''
     Then Begin
          objeto := TCST.Create;
          objeto.Descricao := node.ChildNodes['Descricao'].Text;
          objeto.CodSitTrib := node.ChildNodes['CodSitTrib'].Text;
          objeto.IndiceECF := node.ChildNodes['IndiceECF'].Text;
          objeto.Substituicao := node.ChildNodes['Substituicao'].Text;
     End;

     Result := objeto;

End;

function XmlToUnidade(node :IXMLNode):TUnidade;
var
   objeto :TUnidade;
Begin
     objeto := nil;
     If node.ChildNodes['Sigla'].Text <> ''
     Then Begin
          objeto := TUnidade.Create;
          objeto.Descricao := node.ChildNodes['Descricao'].Text;
          objeto.Sigla := node.ChildNodes['Sigla'].Text;
          objeto.Arrendondar := node.ChildNodes['Arrendondar'].Text;
     End;

     Result := objeto;

End;

function XmlToFornecedor(node :IXMLNode):TFornecedor;
var
   objeto :TFornecedor;
Begin
     objeto := nil;
     If ((node.ChildNodes['CodInterno'].Text <> '') And (node.ChildNodes['Pessoa'].XML <> ''))
     Then Begin
          objeto := TFornecedor.Create;
          objeto.Pessoa := XmlToPessoa(node.ChildNodes['Pessoa']);
          objeto.CodInterno := node.ChildNodes['CodInterno'].Text;
          objeto.DataCad := DataTroca(node.ChildNodes['DataCad'].Text);
          objeto.TipoFornec := node.ChildNodes['TipoFornec'].Text;
          If node.ChildNodes['PrazoEntrega'].Text <> '' Then
            objeto.PrazoEntrega := StrToInt(node.ChildNodes['PrazoEntrega'].Text);
          objeto.Tipo := node.ChildNodes['Tipo'].Text;
          objeto.Obs := node.ChildNodes['Obs'].Text;
          objeto.Exporta := node.ChildNodes['Exporta'].Text;
          objeto.MarkRel := node.ChildNodes['MarkRel'].Text;
     End;

     Result := objeto;


End;

function XmlToCliente(node :IXMLNode):TCliente;
var
   objeto :TCliente;
Begin
     objeto := nil;
     If ((node.ChildNodes['CodInterno'].Text <> '') And (node.ChildNodes['Pessoa'].XML <> ''))
     Then Begin
          objeto := TCliente.Create;
          objeto.CodInterno := node.ChildNodes['CodInterno'].Text;
          objeto.Pessoa := XmlToPessoa(node.ChildNodes['Pessoa']);
          objeto.DataCad := DataTroca(node.ChildNodes['DataCad'].Text);
          objeto.RSalConj := VirgulaTroca(node.ChildNodes['RSalConj'].Text);
          objeto.RSal := VirgulaTroca(node.ChildNodes['RSal'].Text);
          objeto.RHonProf := VirgulaTroca(node.ChildNodes['RHonProf'].Text);
          objeto.ROutrec := VirgulaTroca(node.ChildNodes['ROutrec'].Text);
          objeto.DAluquel := VirgulaTroca(node.ChildNodes['DAluquel'].Text);
          objeto.DResidencia := VirgulaTroca(node.ChildNodes['DResidencia'].Text);
          objeto.DVeiculo := VirgulaTroca(node.ChildNodes['DVeiculo'].Text);
          objeto.DFamiliar := VirgulaTroca(node.ChildNodes['DFamiliar'].Text);
          objeto.DOutdesp := VirgulaTroca(node.ChildNodes['DOutdesp'].Text);
          objeto.LimCred := VirgulaTroca(node.ChildNodes['LimCred'].Text);
          objeto.QtdTempoResid := node.ChildNodes['QtdTempoResid'].Text;
          objeto.Bens:= node.ChildNodes['Bens'].Text;
          objeto.Vendedor := XmlToFuncionario(node.ChildNodes['Vendedor']);
          objeto.InfoCom:= node.ChildNodes['InfoCom'].Text;
          objeto.EndEntrega:= node.ChildNodes['EndEntrega'].Text;
          objeto.Atualizar:= node.ChildNodes['Atualizar'].Text;
          objeto.Ativo:= node.ChildNodes['Ativo'].Text;
          objeto.Credencial:= node.ChildNodes['Credencial'].Text;
          objeto.RamoAtiv:= node.ChildNodes['RamoAtiv'].Text;
          objeto.Atacadista:= node.ChildNodes['Atacadista'].Text;
          objeto.FormPag := XmlToFormaPagamento(node.ChildNodes['FormPag']);
          objeto.Exporta:= node.ChildNodes['Exporta'].Text;
          objeto.Separar:= node.ChildNodes['Separar'].Text;
          objeto.Multa := VirgulaTroca(node.ChildNodes['Multa'].Text);
          objeto.Juro := VirgulaTroca(node.ChildNodes['Juro'].Text);
          objeto.Obs:= node.ChildNodes['Obs'].Text;
          objeto.SCPC:= node.ChildNodes['SCPC'].Text;
          objeto.Tamanho := VirgulaTroca(node.ChildNodes['Tamanho'].Text);
          objeto.Informacao:= node.ChildNodes['Informacao'].Text;
          If node.ChildNodes['DiaVencimento'].Text <> '' Then
            objeto.DiaVencimento := StrToInt(node.ChildNodes['DiaVencimento'].Text);
          objeto.ContribICMS:= node.ChildNodes['ContribICMS'].Text;
          objeto.MarkRel:= node.ChildNodes['MarkRel'].Text;
          objeto.Suframa:= node.ChildNodes['Suframa'].Text;
     End;

     Result := objeto;

End;

function XmlToGrupo(node :IXMLNode):TGrupo;
var
   objeto :TGrupo;
Begin
     objeto := nil;
     If node.ChildNodes['Descricao'].Text <> ''
     Then Begin
          objeto := TGrupo.Create;
          objeto.Descricao := node.ChildNodes['Descricao'].Text;
          objeto.CodInterno := node.ChildNodes['CodInterno'].Text;
          objeto.Tipo := node.ChildNodes['Tipo'].Text;
     End;

     Result := objeto;

End;

function XmlToSubGrupo(node :IXMLNode):TSubGrupo;
var
   objeto :TSubGrupo;
Begin
     objeto := nil;
     If node.ChildNodes['Descricao'].Text <> ''
     Then Begin
          objeto := TSubGrupo.Create;
          objeto.Descricao := node.ChildNodes['Descricao'].Text;
          objeto.CodInterno := node.ChildNodes['CodInterno'].Text;
          objeto.Tipo := node.ChildNodes['Tipo'].Text;
     End;

     Result := objeto;
End;

function XmlToProduto(node :IXMLNode):TProduto;
var
   objeto :TProduto;
Begin
     objeto := nil;
     If node.ChildNodes['SubGrupo'].XML <> ''
     Then Begin
          objeto := TProduto.Create;
          objeto.Descricao := node.ChildNodes['Descricao'].Text;
          objeto.Aplicacao := node.ChildNodes['Aplicacao'].Text;
          objeto.SubGrupo := XmlToSubGrupo(node.ChildNodes['SubGrupo']);
          objeto.Grupo := XmlToGrupo(node.ChildNodes['Grupo']);
          objeto.CST := XmlToCST(node.ChildNodes['CST']);
          objeto.VendVista := VirgulaTroca(node.ChildNodes['VendVista'].Text);
          objeto.VendPrazo := VirgulaTroca(node.ChildNodes['VendPrazo'].Text);
          objeto.CustoVenda := VirgulaTroca(node.ChildNodes['CustoVenda'].Text);
          objeto.CompVista := VirgulaTroca(node.ChildNodes['CompVista'].Text);
          objeto.CompPrazo := VirgulaTroca(node.ChildNodes['CompPrazo'].Text);
          objeto.QtdComp := VirgulaTroca(node.ChildNodes['QtdComp'].Text);
          objeto.QtdVend := VirgulaTroca(node.ChildNodes['QtdVend'].Text);
     End;

     Result := objeto;

End;

function XmlToSubProduto(node :IXMLNode):TSubProduto;
var
   objeto :TSubProduto;
Begin
    objeto := nil;
     If node.ChildNodes['ContrInt'].Text <> ''
     Then Begin
          objeto := TSubProduto.Create;
          objeto.ContrInt := node.ChildNodes['ContrInt'].Text;
          objeto.Descricao := node.ChildNodes['Descricao'].Text;
          objeto.CodBarra := node.ChildNodes['CodBarra'].Text;
          objeto.CodProdFabr := node.ChildNodes['CodProdFabr'].Text;
          objeto.Fabricante := node.ChildNodes['Fabricante'].Text;
          objeto.Marca := node.ChildNodes['Marca'].Text;
          objeto.QuantGarantia := node.ChildNodes['QuantGarantia'].Text;
          objeto.TipoGarantia := node.ChildNodes['TipoGarantia'].Text;
          objeto.LocalEstante := node.ChildNodes['LocalEstante'].Text;
          objeto.Ativo := node.ChildNodes['Ativo'].Text;
          objeto.IPIProd := VirgulaTroca(node.ChildNodes['IPIProd'].Text);
          objeto.PesoLiq := VirgulaTroca(node.ChildNodes['PesoLiq'].Text);
          objeto.PesoBruto := VirgulaTroca(node.ChildNodes['PesoBruto'].Text);
          objeto.Produto := XmlToProduto(node.ChildNodes['Produto']);
          objeto.CodInterno := node.ChildNodes['CodInterno'].Text;
          objeto.Motivo := node.ChildNodes['Motivo'].Text;
          objeto.QtdAtc := VirgulaTroca(node.ChildNodes['QtdAtc'].Text);
          objeto.EmbProd := VirgulaTroca(node.ChildNodes['EmbProd'].Text);
          objeto.Lote := node.ChildNodes['Lote'].Text;
          objeto.Peneira := node.ChildNodes['Peneira'].Text;
          objeto.Germi := node.ChildNodes['Germi'].Text;
          objeto.Pureza := node.ChildNodes['Pureza'].Text;
          objeto.ATestGar := node.ChildNodes['ATestGar'].Text;
          objeto.Safra := node.ChildNodes['Safra'].Text;
          objeto.UniCompra := XmlToUnidade(node.ChildNodes['UniCompra']);
          objeto.UnidVenda := XmlToUnidade(node.ChildNodes['UnidVenda']);
          objeto.CST := XmlToCST(node.ChildNodes['CST']);
          objeto.DataCad := DataTroca(node.ChildNodes['DataCad'].Text);
          objeto.CodeEAN1 := node.ChildNodes['CodeEAN1'].Text;
          objeto.Cor := node.ChildNodes['Cor'].Text;
          objeto.Classificacao := node.ChildNodes['Classificacao'].Text;
          objeto.DescCupom := node.ChildNodes['DescCupom'].Text;
          objeto.NCM := node.ChildNodes['NCM'].Text;
          objeto.ObsFiscal := node.ChildNodes['ObsFiscal'].Text;
          objeto.Composicao := node.ChildNodes['Composicao'].Text;
          objeto.Altura := node.ChildNodes['Altura'].Text;
          objeto.Largura := node.ChildNodes['Largura'].Text;
          objeto.Especificao := node.ChildNodes['Especificao'].Text;
          objeto.Mark := node.ChildNodes['Mark'].Text;
          objeto.Balanca := node.ChildNodes['Balanca'].Text;
          objeto.Anvisa := node.ChildNodes['Anvisa'].Text;
          objeto.MinSaude := node.ChildNodes['MinSaude'].Text;
          objeto.Densidade := node.ChildNodes['Densidade'].Text;
     End;

     Result := objeto;

End;

function XmlToEstoque(node :IXMLNode):TEstoque;
var
   objeto :TEstoque;
Begin
      objeto := nil;
     If node.ChildNodes['SubProduto'].XML <> ''
     Then Begin
          objeto := TEstoque.Create;
          objeto.SubProduto := XmlToSubProduto(node.ChildNodes['SubProduto']);
          objeto.EstMax := VirgulaTroca(node.ChildNodes['EstMax'].Text);
          objeto.EstMin := VirgulaTroca(node.ChildNodes['EstMin'].Text);
          objeto.ICMS := VirgulaTroca(node.ChildNodes['ICMS'].Text);
          objeto.Frete := VirgulaTroca(node.ChildNodes['Frete'].Text);
          objeto.EstFisico := VirgulaTroca(node.ChildNodes['EstFisico'].Text);
          objeto.EstReserv := VirgulaTroca(node.ChildNodes['EstReserv'].Text);
          objeto.EstPed := VirgulaTroca(node.ChildNodes['EstPed'].Text);
          objeto.EstSaldo := VirgulaTroca(node.ChildNodes['EstSaldo'].Text);
          objeto.CVVProAt := VirgulaTroca(node.ChildNodes['CVVProAt'].Text);
          objeto.CVPProAt := VirgulaTroca(node.ChildNodes['CVPProAt'].Text);
          objeto.CVVProVar := VirgulaTroca(node.ChildNodes['CVVProVar'].Text);
          objeto.CVPProVar := VirgulaTroca(node.ChildNodes['CVPProVar'].Text);
          objeto.VendAtaP := VirgulaTroca(node.ChildNodes['VendAtaP'].Text);
          objeto.VendAtaV := VirgulaTroca(node.ChildNodes['VendAtaV'].Text);
          objeto.VendVarp := VirgulaTroca(node.ChildNodes['VendVarp'].Text);
          objeto.VendVarV := VirgulaTroca(node.ChildNodes['VendVarV'].Text);
          objeto.ValUnit := VirgulaTroca(node.ChildNodes['ValUnit'].Text);
          objeto.ValRep := VirgulaTroca(node.ChildNodes['ValRep'].Text);
          objeto.ValCusto := VirgulaTroca(node.ChildNodes['ValCusto'].Text);
          objeto.AVVProAt := VirgulaTroca(node.ChildNodes['AVVProAt'].Text);
          objeto.AVPProAt := VirgulaTroca(node.ChildNodes['AVPProAt'].Text);
          objeto.AVVProVar := VirgulaTroca(node.ChildNodes['AVVProVar'].Text);
          objeto.AVPProVar := VirgulaTroca(node.ChildNodes['AVPProVar'].Text);
          objeto.Lucratividade := VirgulaTroca(node.ChildNodes['Lucratividade'].Text);
          objeto.CoefDiv := VirgulaTroca(node.ChildNodes['CoefDiv'].Text);
          objeto.ValorRest := VirgulaTroca(node.ChildNodes['ValorRest'].Text);
          objeto.Outros := VirgulaTroca(node.ChildNodes['Outros'].Text);
          objeto.Quant2 := VirgulaTroca(node.ChildNodes['Quant2'].Text);
          objeto.DtCad := DataTroca(node.ChildNodes['DtCad'].Text);
          objeto.EstIni := VirgulaTroca(node.ChildNodes['EstIni'].Text);
          objeto.ValCusDesp := VirgulaTroca(node.ChildNodes['ValCusDesp'].Text);
          objeto.EstantCont := VirgulaTroca(node.ChildNodes['EstantCont'].Text);
          objeto.Contagem := VirgulaTroca(node.ChildNodes['Contagem'].Text);
          objeto.EstSimulado := VirgulaTroca(node.ChildNodes['EstSimulado'].Text);
          objeto.VlrUnitComp := VirgulaTroca(node.ChildNodes['VlrUnitComp'].Text);
          objeto.Indice := VirgulaTroca(node.ChildNodes['Indice'].Text);
          objeto.Bonificacao := VirgulaTroca(node.ChildNodes['Bonificacao'].Text);
          objeto.VlrBonific := VirgulaTroca(node.ChildNodes['VlrBonific'].Text);
          objeto.Desconto := VirgulaTroca(node.ChildNodes['Desconto'].Text);
          objeto.CLNC := VirgulaTroca(node.ChildNodes['CLNC'].Text);
          objeto.ModEst := VirgulaTroca(node.ChildNodes['ModEst'].Text);
          objeto.ImpExp := VirgulaTroca(node.ChildNodes['ImpExp'].Text);
          objeto.ImprEnd := VirgulaTroca(node.ChildNodes['ImprEnd'].Text);
          objeto.ContSoc := VirgulaTroca(node.ChildNodes['ContSoc'].Text);
          objeto.COFINS := VirgulaTroca(node.ChildNodes['COFINS'].Text);
          objeto.PIS := VirgulaTroca(node.ChildNodes['PIS'].Text);
          objeto.MargemSeg := VirgulaTroca(node.ChildNodes['MargemSeg'].Text);
          objeto.PercMargSeg := VirgulaTroca(node.ChildNodes['PercMargSeg'].Text);
          objeto.ReducBase := VirgulaTroca(node.ChildNodes['ReducBase'].Text);
          objeto.VlrCompSD := VirgulaTroca(node.ChildNodes['VlrCompSD'].Text);
          objeto.Acrescimo := VirgulaTroca(node.ChildNodes['Acrescimo'].Text);
          objeto.EstCalc := VirgulaTroca(node.ChildNodes['EstCalc'].Text);
          objeto.DataAtual := DataTroca(node.ChildNodes['DataAtual'].Text);
          objeto.HoraAtual := HoraTroca(node.ChildNodes['HoraAtual'].Text);
          objeto.PrecoOferta := VirgulaTroca(node.ChildNodes['PrecoOferta'].Text);
          objeto.DataOferta := DataTroca(node.ChildNodes['DataOferta'].Text);
          objeto.VencOferta := DataTroca(node.ChildNodes['VencOferta'].Text);
          objeto.MediaBaseICMST := VirgulaTroca(node.ChildNodes['MediaBaseICMST'].Text);
          objeto.MediaVlrICMST := VirgulaTroca(node.ChildNodes['MediaVlrICMST'].Text);
          objeto.IPIVND := VirgulaTroca(node.ChildNodes['IPIVND'].Text);
          objeto.PMC := VirgulaTroca(node.ChildNodes['PMC'].Text);
          objeto.PMA := VirgulaTroca(node.ChildNodes['PMA'].Text);
     End;

     Result := objeto;
        
End;


function XmlToItemVenda(node :IXMLNode):TItemVenda;
var
   objeto :TItemVenda;
Begin
     objeto := nil;
     If node.ChildNodes['Estoque'].XML <> ''
     Then Begin
          objeto := TItemVenda.Create;

          objeto.Estoque := XmlToEstoque(node.ChildNodes['Estoque']);
          objeto.QtdProd := VirgulaTroca(node.ChildNodes['QtdProd'].Text);
          objeto.DescProd := VirgulaTroca(node.ChildNodes['Desconto'].Text);
          objeto.ValUnit := VirgulaTroca(node.ChildNodes['ValUnit'].Text);
          objeto.ValCusto := VirgulaTroca(node.ChildNodes['ValCusto'].Text);
          objeto.ValorTotal := VirgulaTroca(node.ChildNodes['ValorTotal'].Text);
          objeto.AtueEst := node.ChildNodes['AtueEst'].Text;
          objeto.ValRep := VirgulaTroca(node.ChildNodes['CoefDiv'].Text);
          objeto.CoefDiv := VirgulaTroca(node.ChildNodes['CoefDiv'].Text);
          objeto.ValComp := VirgulaTroca(node.ChildNodes['ValComp'].Text);
          objeto.LucPer := VirgulaTroca(node.ChildNodes['LucPer'].Text);
          objeto.LucMoe := VirgulaTroca(node.ChildNodes['LucMoe'].Text);
          objeto.Data := DataTroca(node.ChildNodes['Data'].Text);
          objeto.Comissao := VirgulaTroca(node.ChildNodes['Comissao'].Text);
          objeto.Operacao := node.ChildNodes['Operacao'].Text;
          objeto.LucRel := VirgulaTroca(node.ChildNodes['LucRel'].Text);
          objeto.VlrVendBD := VirgulaTroca(node.ChildNodes['VlrVendBD'].Text);
          objeto.QtdDev := VirgulaTroca(node.ChildNodes['QtdDev'].Text);
          If node.ChildNodes['NumItem'].Text <> '' Then
            objeto.NumItem := StrToInt(node.ChildNodes['NumItem'].Text);
          objeto.AliqICMS := VirgulaTroca(node.ChildNodes['AliqICMS'].Text);
          objeto.BaseICMS := VirgulaTroca(node.ChildNodes['BaseICMS'].Text);
          objeto.VlrICMS := VirgulaTroca(node.ChildNodes['VlrICMS'].Text);
          objeto.BaseICMSSubs := VirgulaTroca(node.ChildNodes['BaseICMSSubs'].Text);
          objeto.VlrIPI := VirgulaTroca(node.ChildNodes['VlrIPI'].Text);
          objeto.AliIPI := VirgulaTroca(node.ChildNodes['AliIPI'].Text);
          objeto.ReducBaseICMS := VirgulaTroca(node.ChildNodes['ReducBaseICMS'].Text);
          objeto.VlrIcmsSubst := VirgulaTroca(node.ChildNodes['VlrIcmsSubst'].Text);
          objeto.VlrUnitDev := VirgulaTroca(node.ChildNodes['VlrUnitDev'].Text);
          objeto.QtdEntregre := VirgulaTroca(node.ChildNodes['QtdEntregre'].Text);
          objeto.Unidade := XmlToUnidade(node.ChildNodes['Unidade']);
          objeto.QtdEmb := VirgulaTroca(node.ChildNodes['QtdEmb'].Text);
          objeto.UnidEmb := XmlToUnidade(node.ChildNodes['UnidEmb']);
          objeto.QtdNaEmb := VirgulaTroca(node.ChildNodes['QtdNaEmb'].Text);
          objeto.CFOP := node.ChildNodes['CFOP'].Text;
          objeto.TipoLista := node.ChildNodes['TipoLista'].Text;
          objeto.IPNPMC := VirgulaTroca(node.ChildNodes['IPNPMC'].Text);
          objeto.IPNMVA := VirgulaTroca(node.ChildNodes['IPNMVA'].Text);
     End;
     Result := objeto;
End;

function XmlToPedVenda(node :IXMLNode):TPedVenda;
var
   objeto :TPedVenda;
   i :Integer;
   itens :IXMLNode;
   tmp :STring;
Begin
     objeto := nil;
     If node.ChildNodes['Cliente'].XML <> ''
     Then Begin
          objeto := TPedVenda.Create;
          objeto.Cliente := XmlToCliente(node.ChildNodes['Cliente']);
          objeto.DtPedido := DataTroca(node.ChildNodes['DtPedido'].Text);
          objeto.Desconto := VirgulaTroca(node.ChildNodes['Desconto'].Text);
          objeto.Pagamento := XmlToFormaPagamento(node.ChildNodes['Pagamento']);
          objeto.Valor := VirgulaTroca(node.ChildNodes['Valor'].Text);
          objeto.Entrega := DataTroca(node.ChildNodes['Entrega'].Text);
          objeto.NomeCliente := node.ChildNodes['NomeCliente'].Text;
          objeto.Obs := node.ChildNodes['Obs'].Text;
          objeto.CPFCNPJ := node.ChildNodes['CPFCNPJ'].Text;
          objeto.Vendedor := XmlToFuncionario(node.ChildNodes['Vendedor']);
          objeto.Situacao := node.ChildNodes['Situacao'].Text;
          objeto.NumPed := node.ChildNodes['NumPed'].Text;
          objeto.Tipo := node.ChildNodes['Tipo'].Text;
          objeto.VlrComis := VirgulaTroca(node.ChildNodes['VlrComis'].Text);
          objeto.Garantia := node.ChildNodes['Garantia'].Text;
          objeto.ComSobVenda := node.ChildNodes['ComSobVenda'].Text;
          objeto.Fisco := node.ChildNodes['Fisco'].Text;
          objeto.NumFiscal := node.ChildNodes['NumFiscal'].Text;
          objeto.DtFech := DataTroca(node.ChildNodes['DtFech'].Text);
          objeto.VlrFrete := VirgulaTroca(node.ChildNodes['VlrFrete'].Text);
          objeto.Mark := node.ChildNodes['Mark'].Text;
          objeto.DesMoe := VirgulaTroca(node.ChildNodes['DesMoe'].Text);
          If node.ChildNodes['Atu'].Text <> '' Then
            objeto.Atu := StrToInt(node.ChildNodes['Atu'].Text);
          objeto.Cobranca := node.ChildNodes['Cobranca'].Text;
          If node.ChildNodes['AtuComis'].Text <> '' Then
            objeto.AtuComis := StrToInt(node.ChildNodes['AtuComis'].Text);
          objeto.Faturado := node.ChildNodes['Faturado'].Text;
          objeto.Exporta := node.ChildNodes['Exporta'].Text;

        i := -1;
        itens := node.ChildNodes['Iten'];
        repeat
              If Copy(Itens.XML, 0, 6) = '<Iten>'
              Then Begin
                i := i+1;
                SetLength(objeto.Itens, i+1);
                objeto.Itens[i] := XmlToItemVenda(itens);
              End;
              itens := itens.NextSibling;
        until itens = nil;

     End;

     Result := objeto;
End;


function verificaProxCodigo(tabela, campo:String; atualiza:Boolean):Integer;
Begin

    Try
       DMPESSOA.TALX.Close;
       DMPESSOA.TALX.SQL.Clear;
       DMPESSOA.TALX.SQL.Add('select max(' + campo + ') as maximo from ' + tabela);
       DMPESSOA.TALX.Open;
       Result := DMPESSOA.TALX.FieldByname('maximo').AsInteger+1;
   Except
       Result := 0;
   End;

   Try
       If atualiza
       Then Begin
           DMMACS.TCodigo.Close;
           DMMACS.TCodigo.SQL.Clear;
           DMMACS.TCodigo.SQL.Add('update codigo set ' + campo + ' =:CODIGO');
           DMMACS.TCodigo.ParamByName('CODIGO').AsInteger := DMPESSOA.TALX.FieldByname('maximo').AsInteger+2;
           DMMACS.TCodigo.ExecSQL;
           DMMACS.IBTCodigo.CommitRetaining;
           FiltraTabela(DMMACS.TCodigo, 'CODIGO', '', '' ,'');
       End;
   Except
      FiltraTabela(DMMACS.TCodigo, 'CODIGO', '', '' ,'');
   End;
End;

function verificaProxNumeroPedido:String;
var
  tmp :String;
Begin     
    FiltraTabela(DMMacs.TEmpresa,  'EMPRESA', 'COD_EMPRESA', FMenu.LCODEMPRESA.Caption, '');

    If DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString='' Then
      tmp := '1'
     Else
       tmp := DMMacs.TEmpresa.FieldByName('PROXPEDVEND').AsString;
    Try
        DMSAIDA.TAlx.Close;
        DMSAIDA.TAlx.SQL.Clear;
        DMSAIDA.TAlx.SQL.Add('update empresa set PROXPEDVEND = :NUMERO');
        DMSAIDA.TAlx.ParamByName('NUMERO').AsString := IntToStr(StrToInt(tmp)+1);
        DMSAIDA.TAlx.ExecSQL;
    Except
        Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Não foi possível atualizar o próximo número de pedido em empresa. Por favor verifique.'+#13+' Se o problema persistir reinicie o sistema!', '', 1, 1, false, 'i');
    End;     
    Result := tmp;
End;

function verificaEstado(objeto :TEstado; out msgErro:String; out codigo:Integer):Boolean;
Begin
    Try
       msgErro := '';
       Result := True;
       If FiltraTabela(DMGEOGRAFIA.TEstado,'ESTADO','UPPER(UF_ESTADO)', UpperCase(objeto.UF),'')=True
       Then Begin
            codigo := DMGEOGRAFIA.TEstado.FieldByName('COD_ESTADO').AsInteger;
       End
       Else Begin
            codigo :=  verificaProxCodigo('estado', 'COD_ESTADO', true);
            If codigo > 0
            Then Begin
              DMGEOGRAFIA.TEstado.Close;
              DMGEOGRAFIA.TEstado.SQL.Clear;
              DMGEOGRAFIA.TEstado.SQL.Add('insert into estado');
              DMGEOGRAFIA.TEstado.SQL.Add('(COD_ESTADO, DESCRICAO, UF_ESTADO)');
              DMGEOGRAFIA.TEstado.SQL.Add('values');
              DMGEOGRAFIA.TEstado.SQL.Add('(:COD_ESTADO, :DESCRICAO, :UF_ESTADO)');
              DMGEOGRAFIA.TEstado.ParamByName('cod_estado').AsInteger := codigo;
              DMGEOGRAFIA.TEstado.ParamByName('descricao').AsString := objeto.Nome;
              DMGEOGRAFIA.TEstado.ParamByName('uf_estado').AsString := objeto.UF;
              DMGEOGRAFIA.TEstado.ExecSQL;
            End
            Else Begin
              Result := False;
              msgErro := 'Não foi possível inserir um novo estado: ' + objeto.Nome;
            End;
       End;
    Except
      msgErro := 'Falha ao encontrar estado: ' + objeto.Nome;
      Result := False;
    End;
End;

function verificaCidade(objeto :TCidade; out msgErro:String; out codigo:Integer):Boolean;
var
  codigoAux :Integer;
Begin
    Try
      msgErro := '';
      Result := True;

      If objeto.Estado <> nil
      Then Begin
        If verificaEstado(objeto.Estado, msgErro, codigoAux)
        Then Begin
          If FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'UPPER(NOME)', UpperCase(objeto.Nome), ' AND COD_ESTADO = ' + IntToStr(codigoAux))=True
           Then Begin
                codigo := DMGEOGRAFIA.TCidade.FieldByName('COD_CIDADE').AsInteger;
           End
           Else Begin
                codigo :=  verificaProxCodigo('cidade', 'COD_CIDADE', true);
                If codigo > 0
                Then Begin
                  DMGEOGRAFIA.TCidade.Close;
                  DMGEOGRAFIA.TCidade.SQL.Clear;
                  DMGEOGRAFIA.TCidade.SQL.Add('insert into cidade');
                  DMGEOGRAFIA.TCidade.SQL.Add('(COD_CIDADE, NOME, COD_ESTADO)');
                  DMGEOGRAFIA.TCidade.SQL.Add('values');
                  DMGEOGRAFIA.TCidade.SQL.Add('(:COD_CIDADE, :NOME, :COD_ESTADO)');
                  DMGEOGRAFIA.TCidade.ParamByName('cod_cidade').AsInteger := codigo;
                  DMGEOGRAFIA.TCidade.ParamByName('NOME').AsString := objeto.Nome;
                  DMGEOGRAFIA.TCidade.ParamByName('COD_ESTADO').AsInteger := codigoAux;
                  DMGEOGRAFIA.TCidade.ExecSQL;
                End
                Else Begin
                  Result := False;
                  msgErro := 'Não foi possível inserir uma nova cidade: ' + objeto.Nome;
                End;
           End;
       End
       Else Begin
           Result := False;
       End;

    End
    Else Begin
      msgErro := 'Estado da cidade ' + objeto.Nome + ' não encontrado.';
      Result := False;
    End;
    Except
      msgErro := 'Falha em encontrar cidade: ' + objeto.Nome;
      Result := False;
    End;
End;

function verificaPessoa(objeto :TPessoa; out msgErro:String; out codigo:Integer):Boolean;
var
  CNPJCPF :String;
  tmp, codigoAux :Integer;
Begin
    Try
      msgErro := '';
      Result := True;

      If objeto.PessoaFisica <> nil
      Then
          CNPJCPF := objeto.PessoaFisica.CPF
      Else
        CNPJCPF := objeto.PessoaJuridica.CNPJ;

      If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'UPPER(CPFCNPJ)', UpperCase(CNPJCPF), '')=True
       Then Begin
            codigo := DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsInteger;

            If objeto.PessoaFisica <> nil
            Then Begin
               FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA', IntToStr(codigo), '');
               codigoAux := DMPESSOA.TPessoaF.FieldByName('COD_PESSOAF').AsInteger;
            End
            Else Begin
               FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', IntToStr(codigo), '');
               codigoAux := DMPESSOA.TPessoaJ.FieldByName('COD_PESSOAJ').AsInteger;
            End;

            DMPESSOA.TPessoa.Close;
            DMPESSOA.TPessoa.SQL.Clear;
            DMPESSOA.TPessoa.SQL.Add('update pessoa');
            DMPESSOA.TPessoa.SQL.Add('set');
            DMPESSOA.TPessoa.SQL.Add('NOME = :NOME,');
            DMPESSOA.TPessoa.SQL.Add('ENDERECO = :ENDERECO,');
            DMPESSOA.TPessoa.SQL.Add('BAIRRO = :BAIRRO,');
            DMPESSOA.TPessoa.SQL.Add('COD_CIDADE = :COD_CIDADE,');
            DMPESSOA.TPessoa.SQL.Add('CEP = :CEP,');
            DMPESSOA.TPessoa.SQL.Add('CPFCNPJ = :CPFCNPJ,');
            DMPESSOA.TPessoa.SQL.Add('DATA_INI = :DATA_INI,');
            DMPESSOA.TPessoa.SQL.Add('DTNASC = :DTNASC,');
            DMPESSOA.TPessoa.SQL.Add('COD_REGIAO = :COD_REGIAO,');
            DMPESSOA.TPessoa.SQL.Add('COD_NATURAL = :COD_NATURAL,');
            DMPESSOA.TPessoa.SQL.Add('TELREL = :TELREL,');
            DMPESSOA.TPessoa.SQL.Add('DIAANIVER = :DIAANIVER,');
            DMPESSOA.TPessoa.SQL.Add('PROXIMIDADE = :PROXIMIDADE,');
            DMPESSOA.TPessoa.SQL.Add('VLRCREDITO = :VLRCREDITO');
            DMPESSOA.TPessoa.SQL.Add('where');
            DMPESSOA.TPessoa.SQL.Add('COD_PESSOA = :OLD_COD_PESSOA');

            DMPESSOA.TPessoa.ParamByName('OLD_COD_PESSOA').AsInteger := codigo;

            If objeto.PessoaFisica <> nil
            Then Begin
                DMPESSOA.TPessoaF.Close;
                DMPESSOA.TPessoaF.SQL.Clear;
                DMPESSOA.TPessoaF.SQL.Add('update pessoaf set');
                DMPESSOA.TPessoaF.SQL.Add('ESTADO_CIVIL = :ESTADO_CIVIL,');
                DMPESSOA.TPessoaF.SQL.Add('SEXO = :SEXO, EMP_TRAB = :EMP_TRAB, END_TRAB = :END_TRAB, BAIRRO_TRAB = :BAIRRO_TRAB,');
                DMPESSOA.TPessoaF.SQL.Add('DATA_ADMIS = :DATA_ADMIS, CARGO = :CARGO, RG = :RG, DATA_EXPED = :DATA_EXPED,');
                DMPESSOA.TPessoaF.SQL.Add('ORGAO_EXPED = :ORGAO_EXPED, TITULO = :TITULO, NOME_CONJ = :NOME_CONJ,');
                DMPESSOA.TPessoaF.SQL.Add('DATANASC_CONJ = :DATANASC_CONJ, RG_CONJ = :RG_CONJ, CPF_CONJ = :CPF_CONJ,');
                DMPESSOA.TPessoaF.SQL.Add('EMP_CONJ = :EMP_CONJ, NOME_PAI = :NOME_PAI, NOME_MAE = :NOME_MAE, ENDE_FILIACAO = :ENDE_FILIACAO');
                DMPESSOA.TPessoaF.SQL.Add('where COD_PESSOAF = :OLD_COD_PESSOAF');

                DMPESSOA.TPessoaF.ParamByName('OLD_COD_PESSOAF').AsInteger := codigoAux;
            End
            Else Begin
               DMPESSOA.TPessoaJ.Close;
               DMPESSOA.TPessoaJ.SQL.Clear;
               DMPESSOA.TPessoaJ.SQL.Add('update pessoaJ set');
               DMPESSOA.TPessoaJ.SQL.Add('INSC_EST = :INSC_EST,');
               DMPESSOA.TPessoaJ.SQL.Add('RAZAO_SOCIAL = :RAZAO_SOCIAL,INSC_MUN = :INSC_MUN, WEB_PAGE = :WEB_PAGE, INS_ST = :INS_ST, INDUSTRIA = :INDUSTRIA');
               DMPESSOA.TPessoaJ.SQL.Add('where COD_PESSOAJ = :OLD_COD_PESSOAJ');

               DMPESSOA.TPessoaJ.ParamByName('OLD_COD_PESSOAJ').AsInteger := codigoAux;
            End;
            
       End
       Else Begin
            codigo :=  verificaProxCodigo('pessoa', 'COD_PESSOA', true);

            If objeto.PessoaFisica <> nil
            Then Begin
               codigoAux :=  verificaProxCodigo('PESSOAF', 'COD_PESSOAF', true);
            End
            Else Begin
               codigoAux :=  verificaProxCodigo('PESSOAJ', 'COD_PESSOAJ', true);
            End;

            If ((codigo > 0) AND (codigoAux > 0))
            Then Begin
              DMPESSOA.TPessoa.Close;
              DMPESSOA.TPessoa.SQL.Clear;
              DMPESSOA.TPessoa.SQL.Add('insert into pessoa');
              DMPESSOA.TPessoa.SQL.Add('(COD_PESSOA, NOME, ENDERECO, BAIRRO, COD_CIDADE, CEP, CPFCNPJ, DATA_INI,');
              DMPESSOA.TPessoa.SQL.Add('DTNASC, COD_REGIAO, COD_NATURAL, TELREL, DIAANIVER, PROXIMIDADE, VLRCREDITO)');
              DMPESSOA.TPessoa.SQL.Add('values');
              DMPESSOA.TPessoa.SQL.Add('(:COD_PESSOA, :NOME, :ENDERECO, :BAIRRO, :COD_CIDADE, :CEP, :CPFCNPJ,');
              DMPESSOA.TPessoa.SQL.Add(':DATA_INI, :DTNASC, :COD_REGIAO, :COD_NATURAL, :TELREL, :DIAANIVER,');
              DMPESSOA.TPessoa.SQL.Add(':PROXIMIDADE, :VLRCREDITO)');

              DMPESSOA.TPessoa.ParamByName('COD_PESSOA').AsInteger := codigo;

              If objeto.PessoaFisica <> nil
              Then Begin
                  DMPESSOA.TPessoaF.Close;
                  DMPESSOA.TPessoaF.SQL.Clear;
                  DMPESSOA.TPessoaF.SQL.Add('insert into pessoaf');
                  DMPESSOA.TPessoaF.SQL.Add('(COD_PESSOAF, COD_PESSOA, ESTADO_CIVIL, SEXO, EMP_TRAB, END_TRAB, BAIRRO_TRAB,');
                  DMPESSOA.TPessoaF.SQL.Add('DATA_ADMIS, CARGO, RG, DATA_EXPED, ORGAO_EXPED, TITULO, NOME_CONJ, DATANASC_CONJ,');
                  DMPESSOA.TPessoaF.SQL.Add('RG_CONJ, CPF_CONJ, EMP_CONJ, NOME_PAI, NOME_MAE, ENDE_FILIACAO)');
                  DMPESSOA.TPessoaF.SQL.Add('values');
                  DMPESSOA.TPessoaF.SQL.Add('(:COD_PESSOAF, :COD_PESSOA, :ESTADO_CIVIL, :SEXO, :EMP_TRAB, :END_TRAB,');
                  DMPESSOA.TPessoaF.SQL.Add(':BAIRRO_TRAB, :DATA_ADMIS, :CARGO, :RG, :DATA_EXPED, :ORGAO_EXPED, :TITULO,');
                  DMPESSOA.TPessoaF.SQL.Add(':NOME_CONJ, :DATANASC_CONJ, :RG_CONJ, :CPF_CONJ, :EMP_CONJ, :NOME_PAI,');
                  DMPESSOA.TPessoaF.SQL.Add(':NOME_MAE, :ENDE_FILIACAO)');

                  DMPESSOA.TPessoaF.ParamByName('COD_PESSOA').AsInteger := codigo;
                  DMPESSOA.TPessoaF.ParamByName('COD_PESSOAF').AsInteger := codigoAux;
              End
              Else Begin
                 DMPESSOA.TPessoaJ.Close;
                 DMPESSOA.TPessoaJ.SQL.Clear;
                 DMPESSOA.TPessoaJ.SQL.Add('insert into pessoaJ');
                 DMPESSOA.TPessoaJ.SQL.Add('(COD_PESSOAJ, COD_PESSOA, INSC_EST, RAZAO_SOCIAL, INSC_MUN, WEB_PAGE, INS_ST, INDUSTRIA)');
                 DMPESSOA.TPessoaJ.SQL.Add('values');
                 DMPESSOA.TPessoaJ.SQL.Add('(:COD_PESSOAJ, :COD_PESSOA, :INSC_EST, :RAZAO_SOCIAL, :INSC_MUN, :WEB_PAGE, :INS_ST, :INDUSTRIA)');

                 DMPESSOA.TPessoaJ.ParamByName('COD_PESSOA').AsInteger := codigo;
                 DMPESSOA.TPessoaJ.ParamByName('COD_PESSOAJ').AsInteger := codigoAux;
              End;
            End
            Else Begin
              Result := False;
              msgErro := 'Não foi possível inserir uma nova pessoa: ' + objeto.Nome;
            End;
       End;

       DMPESSOA.TPessoa.ParamByName('NOME').AsString := objeto.Nome;
       DMPESSOA.TPessoa.ParamByName('ENDERECO').AsString := objeto.Endereco;
       DMPESSOA.TPessoa.ParamByName('BAIRRO').AsString := objeto.Bairro;
       If objeto.Cidade <> nil Then
          If verificaCidade(objeto.Cidade, msgErro, tmp) Then
            DMPESSOA.TPessoa.ParamByName('COD_CIDADE').AsInteger := tmp;
       DMPESSOA.TPessoa.ParamByName('CEP').AsString := objeto.CEP;
       DMPESSOA.TPessoa.ParamByName('CPFCNPJ').AsString := CNPJCPF;
       If objeto.DataIni > 0 Then
        DMPESSOA.TPessoa.ParamByName('DATA_INI').AsDateTime := objeto.DataIni;
       If objeto.TelRel <> '' Then
        DMPESSOA.TPessoa.ParamByName('TELREL').AsString := objeto.TelRel;
       if objeto.DataNasc > 0 then
           DMPESSOA.TPessoa.ParamByName('DTNASC').AsDateTime := objeto.DataNasc;
       If objeto.CidadeNatural <> nil Then
          If verificaCidade(objeto.CidadeNatural, msgErro, tmp) Then
            DMPESSOA.TPessoa.ParamByName('COD_NATURAL').AsInteger := tmp;
       DMPESSOA.TPessoa.ParamByName('DIAANIVER').AsInteger := objeto.DiaAniver;
       DMPESSOA.TPessoa.ParamByName('PROXIMIDADE').AsString := objeto.Proximidade;
       DMPESSOA.TPessoa.ParamByName('VLRCREDITO').AsCurrency := objeto.VlrCredito;
       DMPESSOA.TPessoa.ExecSQL;     

      If objeto.PessoaFisica <> nil
      Then Begin
           DMPESSOA.TPessoaF.ParamByName('ESTADO_CIVIL').AsString := objeto.PessoaFisica.EstadoCivil;
           DMPESSOA.TPessoaF.ParamByName('SEXO').AsString := objeto.PessoaFisica.Sexo;
           if objeto.PessoaFisica.EmpTrab <> '' then
               DMPESSOA.TPessoaF.ParamByName('EMP_TRAB').AsString := objeto.PessoaFisica.EmpTrab;
           if objeto.PessoaFisica.EndTrab <> '' then
               DMPESSOA.TPessoaF.ParamByName('END_TRAB').AsString := objeto.PessoaFisica.EndTrab;
           if objeto.PessoaFisica.BairroTrab <> '' then
               DMPESSOA.TPessoaF.ParamByName('BAIRRO_TRAB').AsString := objeto.PessoaFisica.BairroTrab;
           if objeto.PessoaFisica.DataAdmis > 0  then
               DMPESSOA.TPessoaF.ParamByName('DATA_ADMIS').AsDateTime := objeto.PessoaFisica.DataAdmis;
           if objeto.PessoaFisica.Cargo <> '' then
               DMPESSOA.TPessoaF.ParamByName('CARGO').AsString := objeto.PessoaFisica.Cargo;
           if objeto.PessoaFisica.RG <> '' then
               DMPESSOA.TPessoaF.ParamByName('RG').AsString := objeto.PessoaFisica.RG;
           if objeto.PessoaFisica.DataExped > 0  then
               DMPESSOA.TPessoaF.ParamByName('DATA_EXPED').AsDateTime := objeto.PessoaFisica.DataExped;
           if objeto.PessoaFisica.OrgaoExped <> '' then
               DMPESSOA.TPessoaF.ParamByName('ORGAO_EXPED').AsString := objeto.PessoaFisica.OrgaoExped;
           if objeto.PessoaFisica.Titulo <> '' then
               DMPESSOA.TPessoaF.ParamByName('TITULO').AsString := objeto.PessoaFisica.Titulo;
           if objeto.PessoaFisica.NomeConjugue <> '' then
               DMPESSOA.TPessoaF.ParamByName('NOME_CONJ').AsString := objeto.PessoaFisica.NomeConjugue;
           if objeto.PessoaFisica.DataNascimentoConj > 0 then
               DMPESSOA.TPessoaF.ParamByName('DATANASC_CONJ').AsDateTime := objeto.PessoaFisica.DataNascimentoConj;
           if objeto.PessoaFisica.RGConj <> '' then
               DMPESSOA.TPessoaF.ParamByName('RG_CONJ').AsString := objeto.PessoaFisica.RGConj;
           if objeto.PessoaFisica.CPFConj <> '' then
               DMPESSOA.TPessoaF.ParamByName('CPF_CONJ').AsString := objeto.PessoaFisica.CPFConj;
           if objeto.PessoaFisica.EmpConj <> '' then
               DMPESSOA.TPessoaF.ParamByName('EMP_CONJ').AsString := objeto.PessoaFisica.EmpConj;
           if objeto.PessoaFisica.NomePai <> '' then
               DMPESSOA.TPessoaF.ParamByName('NOME_PAI').AsString := objeto.PessoaFisica.NomePai;
           if objeto.PessoaFisica.NomeMae <> '' then
               DMPESSOA.TPessoaF.ParamByName('NOME_MAE').AsString := objeto.PessoaFisica.NomeMae;
           if objeto.PessoaFisica.EnderecoFiliacao <> '' then
               DMPESSOA.TPessoaF.ParamByName('ENDE_FILIACAO').AsString := objeto.PessoaFisica.EnderecoFiliacao;
           DMPESSOA.TPessoaF.ParamByName('DIAANIVERCONJ').AsInteger := objeto.PessoaFisica.DiaAniverConj;
           DMPESSOA.TPessoaF.ExecSQL;
      End
      Else Begin
           DMPESSOA.TPessoaJ.ParamByName('INSC_EST').AsString := objeto.PessoaJuridica.IE;
           DMPESSOA.TPessoaJ.ParamByName('INS_ST').AsString := objeto.PessoaJuridica.IEST;
           DMPESSOA.TPessoaJ.ParamByName('INDUSTRIA').AsString := objeto.PessoaJuridica.Industria;
           DMPESSOA.TPessoaJ.ParamByName('RAZAO_SOCIAL').AsString := objeto.PessoaJuridica.RazaoSocial;
           if objeto.PessoaJuridica.IM <> '' then
               DMPESSOA.TPessoaJ.ParamByName('INSC_MUN').AsString := objeto.PessoaJuridica.IM;
           if objeto.PessoaJuridica.WebPage <> '' then
               DMPESSOA.TPessoaJ.ParamByName('WEB_PAGE').AsString := objeto.PessoaJuridica.WebPage;
           DMPESSOA.TPessoaJ.ExecSQL; 
      End;
    Except
      msgErro := 'Não foi possível adicionar uma nova pessoa: ' + objeto.Nome;
      Result := False;
    End;
End;

function verificaFuncionario(objeto :TFuncionario; out msgErro:String; out codigo:Integer):Boolean;
Begin
    Try
      msgErro := '';
      Result := True;   
      If FiltraTabela(DMPESSOA.TFuncionario,'FUNCIONARIO','','','') Then
        codigo := DMPESSOA.TFuncionario.FieldByName('COD_FUNC').AsInteger
      Else Begin
        msgErro := 'Não foi possível encontrar um funcionário.';
        Result := False;
      End;
    Except
      msgErro := 'Falha ao tentar encontrar um funcionário.';
      Result := False;
    End;
End;

function verificaFormaPagamento(objeto :TFormaPagamento; out msgErro:String; out codigo:Integer):Boolean;
Begin
    Try
      msgErro := '';
      Result := True;

      FiltraTabela(DMFINANC.TFormPag, 'FORMPAG', '', '', 'cod_formpag > 0');
      codigo := DMFINANC.TFormPag.FieldByName('cod_formpag').AsInteger;

    Except
      msgErro := 'Problemas na forma de pagamento.';
      Result := False;
    End;
End;

function verificaCST(objeto :TCST; out msgErro:String; out codigo:Integer):Boolean;
Begin
    Try
      msgErro := '';
      Result := True;

     If FiltraTabela(DMESTOQUE.TCST,'CST','UPPER(COD_SIT_TRIB)', UpperCase(objeto.CodSitTrib),'')=True
       Then Begin
            codigo := DMESTOQUE.TCST.FieldByName('COD_CST').AsInteger;
       End
       Else Begin
            codigo :=  verificaProxCodigo('CST', 'COD_CST', true);
            If codigo > 0
            Then Begin
              DMESTOQUE.TCst.Close;
              DMESTOQUE.TCst.SQL.Clear;
              DMESTOQUE.TCst.SQL.Add('insert into CST (COD_CST, DESCRICAO, COD_SIT_TRIB, INDICEECF) values (:COD_CST, :DESCRICAO, :COD_SIT_TRIB, :INDICEECF)');
              DMESTOQUE.TCst.ParamByName('COD_CST').AsInteger := codigo;
              DMESTOQUE.TCst.ParamByName('COD_SIT_TRIB').AsString := objeto.CodSitTrib;
              DMESTOQUE.TCst.ParamByName('DESCRICAO').AsString := objeto.Descricao;
              DMESTOQUE.TCst.ParamByName('INDICEECF').AsString := objeto.IndiceECF;
              DMESTOQUE.TCST.ExecSQL;
            End
            Else Begin
              Result := False;
              msgErro := 'Não foi possível inserir uma nova CST: ' + objeto.Descricao;
            End;
       End;

    Except
      msgErro := 'Falha ao tentar encontra a CST: ' + objeto.Descricao;
      Result := False;
    End;
End;

function verificaUnidade(objeto :TUnidade; out msgErro:String; out codigo:Integer):Boolean;
Begin
    Try
      msgErro := '';
      Result := True;  
     If FiltraTabela(DMESTOQUE.TUnidade,'UNIDADE','UPPER(SIGLA_UNID)', UpperCase(objeto.Sigla),'')=True
       Then Begin
            codigo := DMESTOQUE.TUnidade.FieldByName('COD_UNIDADE').AsInteger;
       End
       Else Begin
            codigo :=  verificaProxCodigo('UNIDADE', 'COD_UNIDADE', true);
            If codigo > 0
            Then Begin
              DMESTOQUE.TUnidade.Close;
              DMESTOQUE.TUnidade.SQL.Clear;
              DMESTOQUE.TUnidade.SQL.Add('insert into UNIDADE (COD_UNIDADE, DESC_UNID, SIGLA_UNID, ARREDONDAR) values (:COD_UNIDADE, :DESC_UNID, :SIGLA_UNID, :ARREDONDAR)');
              DMESTOQUE.TUnidade.ParamByName('COD_UNIDADE').AsInteger := codigo;
              DMESTOQUE.TUnidade.ParamByName('SIGLA_UNID').AsString := objeto.Sigla;
              DMESTOQUE.TUnidade.ParamByName('DESC_UNID').AsString := objeto.Descricao;
              DMESTOQUE.TUnidade.ParamByName('ARREDONDAR').AsString := objeto.Arrendondar;
              DMESTOQUE.TUnidade.ExecSQL;
            End
            Else Begin
              Result := False;
              msgErro := 'Não foi possível inserir uma nova unidade ' + objeto.Descricao;
            End;
       End;
    Except
      msgErro := 'Falha ao tentar encontrar a unidade: ' + objeto.Descricao;
      Result := False;
    End;
End;

function verificaFornecedor(objeto :TFornecedor; out msgErro:String; out codigo:Integer):Boolean;
Begin
    Try
      msgErro := '';
      Result := True;


       { If FiltraTabela(DMPESSOA.TFornecedor, 'FORNECEDOR', 'COD_FORNEC', codFornecedor, '')=True
      insert into FORNECEDOR
  (COD_FORNEC, COD_PESSOA, COD_INTERNO, DATA_CAD, TIPO_FORNEC, PRAZO_ENTREGA, 
   COD_TRANSPORT, TIPO, OBS, EXPORT, MARKREL)
values
  (:COD_FORNEC, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :TIPO_FORNEC, :PRAZO_ENTREGA,
   :COD_TRANSPORT, :TIPO, :OBS, :EXPORT, :MARKREL)


   update FORNECEDOR
set
  COD_FORNEC = :COD_FORNEC,
  COD_PESSOA = :COD_PESSOA,
  COD_INTERNO = :COD_INTERNO,
  DATA_CAD = :DATA_CAD,
  TIPO_FORNEC = :TIPO_FORNEC,
  PRAZO_ENTREGA = :PRAZO_ENTREGA,
  COD_TRANSPORT = :COD_TRANSPORT,
  TIPO = :TIPO,
  OBS = :OBS,
  EXPORT = :EXPORT,
  MARKREL = :MARKREL
where
  COD_FORNEC = :OLD_COD_FORNEC     }

  codigo := 0;


    Except
      msgErro := '';
      Result := False;
    End;
End;

function verificaCliente(objeto :TCliente; out msgErro:String; out codigo:Integer):Boolean;
var
  codigoAux, tmp :Integer;
Begin
    Try
      msgErro := '';
      Result := True;
      If verificaPessoa(objeto.Pessoa, msgErro, codigoAux)
      Then Begin
        iF FiltraTabela(DMPESSOA.TCliente,'CLIENTE','cod_pessoa',IntToStr(codigoAux),'')=True
        Then Begin
          codigo := DMPESSOA.TCliente.FieldByName('COD_CLIENTE').AsInteger;
          DMPESSOA.TCliente.Close;
          DMPESSOA.TCliente.SQL.Clear;
          DMPESSOA.TCliente.SQL.Add('update cliente');
          DMPESSOA.TCliente.SQL.Add('set');
          DMPESSOA.TCliente.SQL.Add('COD_PESSOA = :COD_PESSOA,');
          DMPESSOA.TCliente.SQL.Add('DATA_CAD = :DATA_CAD,');
          DMPESSOA.TCliente.SQL.Add('R_SAL_CONJ = :R_SAL_CONJ,');
          DMPESSOA.TCliente.SQL.Add('R_SALARIO = :R_SALARIO,');
          DMPESSOA.TCliente.SQL.Add('R_HON_PROF = :R_HON_PROF,');
          DMPESSOA.TCliente.SQL.Add('R_OUTREC = :R_OUTREC,');
          DMPESSOA.TCliente.SQL.Add('D_ALUGUEL = :D_ALUGUEL,');
          DMPESSOA.TCliente.SQL.Add('D_RESIDENCIA = :D_RESIDENCIA,');
          DMPESSOA.TCliente.SQL.Add('D_VEICULO = :D_VEICULO,');
          DMPESSOA.TCliente.SQL.Add('D_FAMILIAR = :D_FAMILIAR,');
          DMPESSOA.TCliente.SQL.Add('D_OUTDESP = :D_OUTDESP,');
          DMPESSOA.TCliente.SQL.Add('LIM_CRED = :LIM_CRED,');
          DMPESSOA.TCliente.SQL.Add('QTDTEMPORESID = :QTDTEMPORESID,');
          DMPESSOA.TCliente.SQL.Add('BENS = :BENS,');
          DMPESSOA.TCliente.SQL.Add('COD_VENDEDOR = :COD_VENDEDOR,');
          DMPESSOA.TCliente.SQL.Add('INFOCOM = :INFOCOM,');
          DMPESSOA.TCliente.SQL.Add('ENDENTRAGA = :ENDENTRAGA,');
          DMPESSOA.TCliente.SQL.Add('ATUALIZAR = :ATUALIZAR,');
          DMPESSOA.TCliente.SQL.Add('COD_USUARIO = :COD_USUARIO,');
          DMPESSOA.TCliente.SQL.Add('ATIVO = :ATIVO,');
          DMPESSOA.TCliente.SQL.Add('CREDENCIAL = :CREDENCIAL,');
          DMPESSOA.TCliente.SQL.Add('RAMOATIV = :RAMOATIV,');
          DMPESSOA.TCliente.SQL.Add('ATACADISTA = :ATACADISTA,');
          DMPESSOA.TCliente.SQL.Add('COD_FORMPAG = :COD_FORMPAG,');
          DMPESSOA.TCliente.SQL.Add('EXPORT = :EXPORT,');
          DMPESSOA.TCliente.SQL.Add('SEPARAR = :SEPARAR,');
          DMPESSOA.TCliente.SQL.Add('MULTA = :MULTA,');
          DMPESSOA.TCliente.SQL.Add('JURO = :JURO,');
          DMPESSOA.TCliente.SQL.Add('OBS = :OBS,');
          DMPESSOA.TCliente.SQL.Add('SCPC = :SCPC,');
          DMPESSOA.TCliente.SQL.Add('TAMANHO = :TAMANHO,INFORMACAO = :INFORMACAO, DIAVENCIMENTO = :DIAVENCIMENTO,');
          DMPESSOA.TCliente.SQL.Add('CONTRIBICMS = :CONTRIBICMS, MARKREL = :MARKREL, SUFRAMA = :SUFRAMA  where');
          DMPESSOA.TCliente.SQL.Add('COD_CLIENTE = :OLD_COD_CLIENTE');

          DMPESSOA.TCliente.ParamByName('OLD_COD_CLIENTE').AsInteger := codigo;
        End
        Else begin
            codigo :=  verificaProxCodigo('CLIENTE', 'COD_CLIENTE', true);
            If codigo > 0
            Then Begin
               DMPESSOA.TCliente.Close;
               DMPESSOA.TCliente.SQL.Clear;
               DMPESSOA.TCliente.SQL.Add('insert into cliente');
               DMPESSOA.TCliente.SQL.Add('(COD_CLIENTE, COD_PESSOA, COD_INTERNO, DATA_CAD, R_SAL_CONJ, R_SALARIO,');
               DMPESSOA.TCliente.SQL.Add('R_HON_PROF, R_OUTREC, D_ALUGUEL, D_RESIDENCIA, D_VEICULO, D_FAMILIAR,');
               DMPESSOA.TCliente.SQL.Add('D_OUTDESP, LIM_CRED, QTDTEMPORESID, BENS, COD_VENDEDOR, INFOCOM, ENDENTRAGA,');
               DMPESSOA.TCliente.SQL.Add('ATUALIZAR, COD_USUARIO, ATIVO, CREDENCIAL, RAMOATIV, ATACADISTA, COD_FORMPAG,');
               DMPESSOA.TCliente.SQL.Add('EXPORT, SEPARAR, MULTA, JURO, OBS, SCPC, TAMANHO, INFORMACAO,');
               DMPESSOA.TCliente.SQL.Add('DIAVENCIMENTO, CONTRIBICMS, MARKREL, SUFRAMA)');
               DMPESSOA.TCliente.SQL.Add('values');
               DMPESSOA.TCliente.SQL.Add('(:COD_CLIENTE, :COD_PESSOA, :COD_INTERNO, :DATA_CAD, :R_SAL_CONJ, :R_SALARIO,');
               DMPESSOA.TCliente.SQL.Add(':R_HON_PROF, :R_OUTREC, :D_ALUGUEL, :D_RESIDENCIA, :D_VEICULO, :D_FAMILIAR,');
               DMPESSOA.TCliente.SQL.Add(':D_OUTDESP, :LIM_CRED, :QTDTEMPORESID, :BENS, :COD_VENDEDOR, :INFOCOM,');
               DMPESSOA.TCliente.SQL.Add(':ENDENTRAGA, :ATUALIZAR, :COD_USUARIO, :ATIVO, :CREDENCIAL, :RAMOATIV,');
               DMPESSOA.TCliente.SQL.Add(':ATACADISTA, :COD_FORMPAG, :EXPORT, :SEPARAR, :MULTA, :JURO, :OBS, :SCPC,');
               DMPESSOA.TCliente.SQL.Add(':TAMANHO, :INFORMACAO, :DIAVENCIMENTO, :CONTRIBICMS, :MARKREL, :SUFRAMA)');

               DMPESSOA.TCliente.ParamByName('COD_CLIENTE').AsInteger := codigo;
               DMPESSOA.TCliente.ParamByName('COD_INTERNO').AsString := IntToStr(codigo);
            End
            Else Begin
              Result := False;
              msgErro := 'Não foi possível inserir um novo cliente: ' + objeto.Pessoa.Nome;
            End;
        End;

       DMPESSOA.TCliente.ParamByName('COD_PESSOA').AsInteger := codigoAux;
       If objeto.DataCad > 0 Then
          DMPESSOA.TCliente.ParamByName('DATA_CAD').AsDateTime := objeto.DataCad;
       DMPESSOA.TCliente.ParamByName('R_SAL_CONJ').AsCurrency := objeto.RSalConj;
       DMPESSOA.TCliente.ParamByName('R_SALARIO').AsCurrency := objeto.RSal;
       DMPESSOA.TCliente.ParamByName('R_HON_PROF').AsCurrency := objeto.RHonProf;
       DMPESSOA.TCliente.ParamByName('R_OUTREC').AsCurrency := objeto.ROutrec;
       DMPESSOA.TCliente.ParamByName('D_ALUGUEL').AsCurrency := objeto.DAluquel;
       DMPESSOA.TCliente.ParamByName('D_RESIDENCIA').AsCurrency := objeto.DResidencia;
       DMPESSOA.TCliente.ParamByName('D_VEICULO').AsCurrency := objeto.DVeiculo;
       DMPESSOA.TCliente.ParamByName('D_FAMILIAR').AsCurrency := objeto.DFamiliar;
       DMPESSOA.TCliente.ParamByName('D_OUTDESP').AsCurrency := objeto.DOutdesp;
       DMPESSOA.TCliente.ParamByName('LIM_CRED').AsCurrency := objeto.LimCred;
       DMPESSOA.TCliente.ParamByName('QTDTEMPORESID').AsString := objeto.QtdTempoResid;
       DMPESSOA.TCliente.ParamByName('BENS').AsString := objeto.Bens;
       If verificaFuncionario(objeto.Vendedor, msgErro, tmp) Then
          DMPESSOA.TCliente.ParamByName('COD_VENDEDOR').AsInteger := codigoAux;
       DMPESSOA.TCliente.ParamByName('INFOCOM').AsString := objeto.InfoCom;
       DMPESSOA.TCliente.ParamByName('ENDENTRAGA').AsString := objeto.EndEntrega;
       DMPESSOA.TCliente.ParamByName('ATUALIZAR').AsString := objeto.Atualizar;
       DMPESSOA.TCliente.ParamByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
       DMPESSOA.TCliente.ParamByName('ATIVO').AsString := objeto.Ativo;
       DMPESSOA.TCliente.ParamByName('CREDENCIAL').AsString := objeto.Credencial;
       DMPESSOA.TCliente.ParamByName('RAMOATIV').AsString := objeto.RamoAtiv;
       DMPESSOA.TCliente.ParamByName('ATACADISTA').AsString := objeto.Atacadista;
      // If verificaFormaPagamento(objeto.FormPag, msgErro, tmp) Then
      //    DMPESSOA.TCliente.ParamByName('COD_FORMPAG').AsInteger := tmp;
       DMPESSOA.TCliente.ParamByName('SEPARAR').AsString := objeto.Separar;
       DMPESSOA.TCliente.ParamByName('MULTA').AsCurrency := objeto.Multa;
       DMPESSOA.TCliente.ParamByName('JURO').AsCurrency := objeto.Juro;
       DMPESSOA.TCliente.ParamByName('OBS').AsString := objeto.Obs;
       DMPESSOA.TCliente.ParamByName('SCPC').AsString := objeto.SCPC;
       DMPESSOA.TCliente.ParamByName('TAMANHO').AsCurrency := objeto.Tamanho;
       DMPESSOA.TCliente.ParamByName('INFORMACAO').AsString := objeto.Informacao;
       DMPESSOA.TCliente.ParamByName('DIAVENCIMENTO').AsInteger := objeto.DiaVencimento;
       DMPESSOA.TCliente.ParamByName('CONTRIBICMS').AsString := objeto.ContribICMS;
       DMPESSOA.TCliente.ParamByName('MARKREL').AsString := objeto.MarkRel;
       DMPESSOA.TCliente.ParamByName('SUFRAMA').AsString := objeto.Suframa;
       DMPESSOA.TCliente.ExecSQL;    
      End
      Else Begin
        msgErro := 'Falha ao tentar encontrar cliente: ' + objeto.Pessoa.Nome;
        Result := False;
      End;
    Except
      msgErro := 'Falha ao tentar encontrar cliente: ' + objeto.Pessoa.Nome;
      Result := False;
    End;
End;

function verificaGrupo(objeto :TGrupo; out msgErro:String; out codigo:Integer):Boolean;
Begin
    Try
      msgErro := '';
      Result := True;  
      If FiltraTabela(DMESTOQUE.TGrupo,'GRUPOPROD','UPPER(DESCRICAO)', UpperCase(objeto.Descricao),'')=True
       Then Begin
            codigo := DMESTOQUE.TGrupo.FieldByName('COD_GRUPOPROD').AsInteger;
       End
       Else Begin
            codigo :=  verificaProxCodigo('GRUPOPROD', 'COD_GRUPOPROD', true);
            If codigo > 0
            Then Begin
               DMESTOQUE.TGrupo.Close;
               DMESTOQUE.TGrupo.SQL.Clear;
               DMESTOQUE.TGrupo.SQL.Add('insert into GRUPOPROD');
               DMESTOQUE.TGrupo.SQL.Add('(COD_GRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
               DMESTOQUE.TGrupo.SQL.Add('values');
               DMESTOQUE.TGrupo.SQL.Add('(:COD_GRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');
               DMESTOQUE.TGrupo.ParamByName('COD_GRUPOPROD').AsInteger := codigo;
               DMESTOQUE.TGrupo.ParamByName('COD_INTERNO').AsString := IntToStr(codigo);
               DMESTOQUE.TGrupo.ParamByName('DESCRICAO').AsString := objeto.Descricao;
               DMESTOQUE.TGrupo.ParamByName('TIPO').AsString := objeto.Tipo;
               DMESTOQUE.TGrupo.ExecSQL;
            End
            Else Begin
              msgErro := 'Falha ao tentar encontrar  grupo de produto: ' + objeto.Descricao;
              Result := False;
            End;
       End;
    Except
      msgErro := 'Falha ao tentar encontrar  grupo de produto: ' + objeto.Descricao;
      Result := False;
    End;
End;

function verificaSubGrupo(objeto :TSubGrupo; out msgErro:String; out codigo:Integer):Boolean;
Begin
    Try
      msgErro := '';
      Result := True;
      If FiltraTabela(DMESTOQUE.TSubgru,'SUBGRUPOPROD','UPPER(DESCRICAO)', UpperCase(objeto.Descricao),'')=True
       Then Begin
            codigo := DMESTOQUE.TSubgru.FieldByName('COD_SUBGRUPOPROD').AsInteger;
       End
       Else Begin
            codigo :=  verificaProxCodigo('SUBGRUPOPROD', 'COD_SUBGRUPOPROD', true);
            If codigo > 0
            Then Begin
               DMESTOQUE.TSubgru.Close;
               DMESTOQUE.TSubgru.SQL.Clear;
               DMESTOQUE.TSubgru.SQL.Add('insert into SUBGRUPOPROD');
               DMESTOQUE.TSubgru.SQL.Add('(COD_SUBGRUPOPROD, DESCRICAO, COD_INTERNO, TIPO)');
               DMESTOQUE.TSubgru.SQL.Add('values');
               DMESTOQUE.TSubgru.SQL.Add('(:COD_SUBGRUPOPROD, :DESCRICAO, :COD_INTERNO, :TIPO)');
               DMESTOQUE.TSubgru.ParamByName('cod_subgrupoprod').AsInteger := codigo;
               DMESTOQUE.TSubgru.ParamByName('descricao').AsString := objeto.Descricao;
               DMESTOQUE.TSubgru.ParamByName('cod_interno').AsString := IntToStr(codigo);
               DMESTOQUE.TSubgru.ParamByName('tipo').AsString := objeto.Tipo;
               DMESTOQUE.TSubgru.ExecSQL;
            End
            Else Begin
              msgErro := 'Falha ao tentar encontrar  subgrupo de produto: ' + objeto.Descricao;
              Result := False;
            End;
       End;
    Except
      msgErro := 'Falha ao tentar encontrar  subgrupo de produto: ' + objeto.Descricao;
      Result := False;
    End;
End;

function verificaProduto(objeto :TProduto; out msgErro:String; out codigo:Integer):Boolean;
var
  tmp :Integer;
Begin
    Try
      msgErro := '';
      Result := True;
      If FiltraTabela(DMESTOQUE.TProduto,'PRODUTO','UPPER(DESCRICAO)', UpperCase(objeto.Descricao),'')=True
       Then Begin
             codigo := DMESTOQUE.TProduto.FieldByName('COD_PRODUTO').AsInteger;
             DMESTOQUE.TProduto.Close;
             DMESTOQUE.TProduto.SQL.Clear;
             DMESTOQUE.TProduto.SQL.Add('update PRODUTO set');
             DMESTOQUE.TProduto.SQL.Add('DESCRICAO = :DESCRICAO, APLICACAO = :APLICACAO, ');
             DMESTOQUE.TProduto.SQL.Add('COD_CST = :COD_CST, VENDVISTA = :VENDVISTA,');
             DMESTOQUE.TProduto.SQL.Add('VENDPRAZO = :VENDPRAZO,CUSTOVENDA = :CUSTOVENDA,COMPVISTA = :COMPVISTA,COMPPRAZO = :COMPPRAZO,QTDCOMP = :QTDCOMP,QTDVEND = :QTDVEND');
             DMESTOQUE.TProduto.SQL.Add('where COD_PRODUTO = :OLD_COD_PRODUTO');
             DMESTOQUE.TProduto.ParamByName('OLD_COD_PRODUTO').AsInteger := codigo;
       End
       Else Begin
            codigo :=  verificaProxCodigo('PRODUTO', 'COD_PRODUTO', true);
            If codigo > 0
            Then Begin
               DMESTOQUE.TProduto.Close;
               DMESTOQUE.TProduto.SQL.Clear;
               DMESTOQUE.TProduto.SQL.Add('insert into PRODUTO');
               DMESTOQUE.TProduto.SQL.Add('(COD_PRODUTO, COD_INTERNO, DESCRICAO, APLICACAO, COD_SUBGRUPOPROD, COD_GRUPOPROD,');
               DMESTOQUE.TProduto.SQL.Add('COD_CST, COD_LOJA, VENDVISTA, VENDPRAZO, CUSTOVENDA, COMPVISTA, COMPPRAZO,');
               DMESTOQUE.TProduto.SQL.Add('QTDCOMP, QTDVEND)');
               DMESTOQUE.TProduto.SQL.Add('values');
               DMESTOQUE.TProduto.SQL.Add('(:COD_PRODUTO, :COD_INTERNO, :DESCRICAO, :APLICACAO, :COD_SUBGRUPOPROD,');
               DMESTOQUE.TProduto.SQL.Add(':COD_GRUPOPROD, :COD_CST, :COD_LOJA, :VENDVISTA, :VENDPRAZO, :CUSTOVENDA,');
               DMESTOQUE.TProduto.SQL.Add(':COMPVISTA, :COMPPRAZO, :QTDCOMP, :QTDVEND)');
               DMESTOQUE.TProduto.ParamByName('COD_PRODUTO').AsInteger := codigo;
               DMESTOQUE.TProduto.ParamByName('COD_INTERNO').AsInteger := codigo;
               DMESTOQUE.TProduto.ParamByName('COD_LOJA').AsInteger := StrToInt(FMenu.LCODLOJA.Caption);
               If verificaGrupo(objeto.Grupo, msgErro, tmp) Then
                  DMESTOQUE.TProduto.ParamByName('COD_GRUPOPROD').AsInteger := tmp;
               If verificaSubGrupo(objeto.SubGrupo, msgErro, tmp) Then
                  DMESTOQUE.TProduto.ParamByName('COD_SUBGRUPOPROD').AsInteger := tmp;
            End
            Else Begin
              msgErro := 'Falha ao tentar encontrar produto: ' + objeto.Descricao;
              Result := False;
            End;
       End;

       DMESTOQUE.TProduto.ParamByName('APLICACAO').AsString := objeto.Aplicacao;
       If verificaCST(objeto.CST, msgErro, tmp) Then
          DMESTOQUE.TProduto.ParamByName('COD_CST').AsInteger := tmp;
       DMESTOQUE.TProduto.ParamByName('COMPPRAZO').AsCurrency := objeto.CompPrazo;
       DMESTOQUE.TProduto.ParamByName('COMPVISTA').AsCurrency := objeto.CompVista;
       DMESTOQUE.TProduto.ParamByName('CUSTOVENDA').AsCurrency := objeto.CustoVenda;
       DMESTOQUE.TProduto.ParamByName('DESCRICAO').AsString := objeto.Descricao;
       DMESTOQUE.TProduto.ParamByName('QTDCOMP').AsCurrency := objeto.QtdComp;
       DMESTOQUE.TProduto.ParamByName('QTDVEND').AsCurrency := objeto.QtdVend;
       DMESTOQUE.TProduto.ParamByName('VENDPRAZO').AsCurrency := objeto.VendPrazo;
       DMESTOQUE.TProduto.ParamByName('VENDVISTA').AsCurrency := objeto.VendVista;
       DMESTOQUE.TProduto.ExecSQL;

    Except
      msgErro := 'Falha ao tentar encontrar produto: ' + objeto.Descricao;
      Result := False;
    End;
End;

function verificaSubProduto(objeto :TSubProduto; out msgErro:String; out codigo:Integer):Boolean;
var
  tmp :Integer;
Begin
    Try
      msgErro := '';
      Result := True;

      If FiltraTabela(DMESTOQUE.TSubProd,'SUBPRODUTO','UPPER(COD_INTERNO)', UpperCase(objeto.CodInterno),'')=True
       Then Begin
             codigo := DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsInteger;
             DMESTOQUE.TSubProd.Close;
             DMESTOQUE.TSubProd.SQL.Clear;
             DMESTOQUE.TSubProd.SQL.Add('update SUBPRODUTO set');
             DMESTOQUE.TSubProd.SQL.Add('CODCOMPOSTO = :CODCOMPOSTO, DESCRICAO = :DESCRICAO, CODBARRA = :CODBARRA,');
             DMESTOQUE.TSubProd.SQL.Add('CODPRODFABR = :CODPRODFABR, FABRICANTE = :FABRICANTE, MARCA = :MARCA, QUANTGARANTIA = :QUANTGARANTIA, TIPOGARANTIA = :TIPOGARANTIA, LOCALESTANTE = :LOCALESTANTE, ATIVO = :ATIVO, IPIPROD = :IPIPROD,');
             DMESTOQUE.TSubProd.SQL.Add('PESOLIQ = :PESOLIQ, PESOBRUTO = :PESOBRUTO, MOTIVO = :MOTIVO,');
             DMESTOQUE.TSubProd.SQL.Add('QTDATC = :QTDATC, EMBPROD = :EMBPROD, LOTE = :LOTE, PENEIRA = :PENEIRA, GERMI = :GERMI, PUREZA = :PUREZA, ATESTVAL = :ATESTVAL,');
             DMESTOQUE.TSubProd.SQL.Add('ATESTGAR = :ATESTGAR, SAFRA = :SAFRA, COD_UNIDCOMPRA = :COD_UNIDCOMPRA, COD_UNIDVENDA = :COD_UNIDVENDA, COD_CST = :COD_CST, DTCAD = :DTCAD, CODEAN1 = :CODEAN1, CONTRINT = :CONTRINT, COR = :COR,');
             DMESTOQUE.TSubProd.SQL.Add('CLASSIFICACAO = :CLASSIFICACAO, DESCCUPOM = :DESCCUPOM, NCM = :NCM, OBSFISCAL = :OBSFISCAL, COMPOSICAO = :COMPOSICAO, ALTURA = :ALTURA,');
             DMESTOQUE.TSubProd.SQL.Add('LARGURA = :LARGURA, ESPECIFICACAO = :ESPECIFICACAO, MARK = :MARK, BALANCA = :BALANCA, ANVISA = :ANVISA, MINSAUDE = :MINSAUDE, DENSIDADE = :DENSIDADE');
             DMESTOQUE.TSubProd.SQL.Add('where COD_SUBPRODUTO = :OLD_COD_SUBPRODUTO');
             DMESTOQUE.TSubProd.ParamByName('OLD_COD_SUBPRODUTO').AsInteger := codigo;
       End
       Else Begin
            codigo :=  verificaProxCodigo('SUBPRODUTO', 'COD_SUBPRODUTO', true);
            If codigo > 0
            Then Begin
               DMESTOQUE.TSubProd.Close;
               DMESTOQUE.TSubProd.SQL.Clear;
               DMESTOQUE.TSubProd.SQL.Add('insert into SUBPRODUTO');
               DMESTOQUE.TSubProd.SQL.Add('(COD_SUBPRODUTO, CODCOMPOSTO, DESCRICAO, CODBARRA, CODPRODFABR, FABRICANTE,');
               DMESTOQUE.TSubProd.SQL.Add('MARCA, QUANTGARANTIA, TIPOGARANTIA, LOCALESTANTE, ATIVO, IPIPROD, PESOLIQ,');
               DMESTOQUE.TSubProd.SQL.Add('PESOBRUTO, COD_PRODUTO, COD_INTERNO, MOTIVO, QTDATC, EMBPROD, LOTE,');
               DMESTOQUE.TSubProd.SQL.Add('PENEIRA, GERMI, PUREZA, ATESTVAL, ATESTGAR, SAFRA, COD_UNIDCOMPRA, COD_UNIDVENDA,');
               DMESTOQUE.TSubProd.SQL.Add('COD_CST, DTCAD, CODEAN1, CONTRINT, COR, CLASSIFICACAO, DESCCUPOM, NCM,');
               DMESTOQUE.TSubProd.SQL.Add('OBSFISCAL, COMPOSICAO, ALTURA, LARGURA, ESPECIFICACAO, MARK, BALANCA,');
               DMESTOQUE.TSubProd.SQL.Add('ANVISA, MINSAUDE, DENSIDADE)');
               DMESTOQUE.TSubProd.SQL.Add('values');
               DMESTOQUE.TSubProd.SQL.Add('(:COD_SUBPRODUTO, :CODCOMPOSTO, :DESCRICAO, :CODBARRA, :CODPRODFABR,');
               DMESTOQUE.TSubProd.SQL.Add(':FABRICANTE, :MARCA, :QUANTGARANTIA, :TIPOGARANTIA, :LOCALESTANTE, :ATIVO,');
               DMESTOQUE.TSubProd.SQL.Add(':IPIPROD, :PESOLIQ, :PESOBRUTO, :COD_PRODUTO, :COD_INTERNO, :MOTIVO,');
               DMESTOQUE.TSubProd.SQL.Add(':QTDATC, :EMBPROD, :LOTE, :PENEIRA, :GERMI, :PUREZA, :ATESTVAL, :ATESTGAR,');
               DMESTOQUE.TSubProd.SQL.Add(':SAFRA, :COD_UNIDCOMPRA, :COD_UNIDVENDA, :COD_CST, :DTCAD, :CODEAN1,');
               DMESTOQUE.TSubProd.SQL.Add(':CONTRINT, :COR, :CLASSIFICACAO, :DESCCUPOM, :NCM, :OBSFISCAL, :COMPOSICAO,');
               DMESTOQUE.TSubProd.SQL.Add(':ALTURA, :LARGURA, :ESPECIFICACAO, :MARK, :BALANCA, :ANVISA, :MINSAUDE, :DENSIDADE)');

               DMESTOQUE.TSubProd.ParamByName('cod_subproduto').AsInteger := codigo;
               DMESTOQUE.TSubProd.ParamByName('COD_INTERNO').AsString := IntToStr(codigo);

               If verificaProduto(objeto.Produto, msgErro, tmp) Then
                  DMESTOQUE.TSubProd.ParamByName('cod_produto').AsInteger := tmp
               Else Begin
                  Result := False;
                  Exit;
               End;
            End
            Else Begin
              msgErro := 'Falha ao tentar encontrar subproduto: ' + objeto.Descricao;
              Result := False;
            End;
       End;

       If verificaCST(objeto.CST, msgErro, tmp) Then
          DMESTOQUE.TSubProd.ParamByName('COD_CST').AsInteger := tmp; 
       DMESTOQUE.TSubProd.ParamByName('ALTURA').AsString := objeto.Altura;
       DMESTOQUE.TSubProd.ParamByName('ANVISA').AsString := objeto.Anvisa;
       DMESTOQUE.TSubProd.ParamByName('ATESTGAR').AsString := objeto.ATestGar;
       //DMESTOQUE.TSubProd.ParamByName('ATESTVAL').AsString := objeto.at
       DMESTOQUE.TSubProd.ParamByName('ATIVO').AsString :=  objeto.Ativo;
       DMESTOQUE.TSubProd.ParamByName('BALANCA').AsString := objeto.Balanca;
       DMESTOQUE.TSubProd.ParamByName('CLASSIFICACAO').AsString := objeto.Classificacao;
       DMESTOQUE.TSubProd.ParamByName('CODBARRA').AsString := objeto.CodBarra;
       DMESTOQUE.TSubProd.ParamByName('CODCOMPOSTO').AsString := objeto.CodComposto;
       DMESTOQUE.TSubProd.ParamByName('CODEAN1').AsString := objeto.CodeEAN1;
       DMESTOQUE.TSubProd.ParamByName('CODPRODFABR').AsString := objeto.CodProdFabr;
       If objeto.UniCompra <> nil
       Then Begin
         If verificaUnidade(objeto.UniCompra, msgErro, tmp) Then
            DMESTOQUE.TSubProd.ParamByName('COD_UNIDCOMPRA').AsInteger := tmp
         Else Begin
            Result := False;
            Exit;
         End;
       End;
       If objeto.UnidVenda <> nil
       Then Begin
         If verificaUnidade(objeto.UnidVenda, msgErro, tmp) Then
            DMESTOQUE.TSubProd.ParamByName('COD_UNIDVENDA').AsInteger := tmp
         Else Begin
            Result := False;
            Exit;
         End;
       End;
       DMESTOQUE.TSubProd.ParamByName('COMPOSICAO').AsString := objeto.Composicao;
       DMESTOQUE.TSubProd.ParamByName('CONTRINT').AsString := objeto.ContrInt;
       DMESTOQUE.TSubProd.ParamByName('COR').AsString := objeto.Cor;
       DMESTOQUE.TSubProd.ParamByName('DESCCUPOM').AsString := objeto.DescCupom;
       DMESTOQUE.TSubProd.ParamByName('DESCRICAO').AsString := objeto.Descricao;
       If objeto.DataCad > 0 Then
          DMESTOQUE.TSubProd.ParamByName('DTCAD').AsDateTime := objeto.DataCad;
       DMESTOQUE.TSubProd.ParamByName('EMBPROD').AsCurrency := objeto.EmbProd;
       DMESTOQUE.TSubProd.ParamByName('ESPECIFICACAO').AsString := objeto.Especificao;
       DMESTOQUE.TSubProd.ParamByName('FABRICANTE').AsString := objeto.Fabricante;
       DMESTOQUE.TSubProd.ParamByName('GERMI').AsString := objeto.Germi;
       DMESTOQUE.TSubProd.ParamByName('IPIPROD').AsCurrency := objeto.IPIProd;
       DMESTOQUE.TSubProd.ParamByName('LARGURA').AsString := objeto.Largura;
       DMESTOQUE.TSubProd.ParamByName('LOCALESTANTE').AsString := objeto.LocalEstante;
       DMESTOQUE.TSubProd.ParamByName('LOTE').AsString := objeto.Lote;
       DMESTOQUE.TSubProd.ParamByName('MARCA').AsString := objeto.Marca;
       DMESTOQUE.TSubProd.ParamByName('MARK').AsString := objeto.Mark;
       DMESTOQUE.TSubProd.ParamByName('MINSAUDE').AsString := objeto.MinSaude;
       DMESTOQUE.TSubProd.ParamByName('MOTIVO').AsString := objeto.Motivo;
       DMESTOQUE.TSubProd.ParamByName('NCM').AsString := objeto.NCM;
       DMESTOQUE.TSubProd.ParamByName('OBSFISCAL').AsString := objeto.ObsFiscal;
       DMESTOQUE.TSubProd.ParamByName('PENEIRA').AsString := objeto.Peneira;
       DMESTOQUE.TSubProd.ParamByName('PESOBRUTO').AsCurrency := objeto.PesoBruto;
       DMESTOQUE.TSubProd.ParamByName('PESOLIQ').AsCurrency := objeto.PesoLiq;
       DMESTOQUE.TSubProd.ParamByName('PUREZA').AsString := objeto.Pureza;
       DMESTOQUE.TSubProd.ParamByName('QTDATC').AsCurrency := objeto.QtdAtc;
       DMESTOQUE.TSubProd.ParamByName('QUANTGARANTIA').AsString := objeto.QuantGarantia;
       DMESTOQUE.TSubProd.ParamByName('SAFRA').AsString := objeto.Safra;
       DMESTOQUE.TSubProd.ParamByName('TIPOGARANTIA').AsString := objeto.TipoGarantia;
       DMESTOQUE.TSubProd.ParamByName('DENSIDADE').AsString := objeto.Densidade;
       DMESTOQUE.TSubProd.ExecSQL;

    Except
      msgErro := 'Falha ao tentar encontrar subproduto: ' + objeto.Descricao;
      Result := False;
    End;
End;

function verificaEstoque(objeto :TEstoque; out msgErro:String; out codigo:Integer):Boolean;
var
  codigoAux, tmp :Integer;
Begin
    Try
      msgErro := '';
      Result := True;

      If verificaSubProduto(objeto.SubProduto, msgErro, codigoAux)
      Then Begin   
          If FiltraTabela(DMESTOQUE.TEstoque,'ESTOQUE','COD_SUBPROD', IntToStr(codigoAux),'')=True
           Then Begin
                codigo := DMESTOQUE.TEstoque.FieldByName('COD_ESTOQUE').AsInteger;
                DMESTOQUE.TEstoque.Close;
                DMESTOQUE.TEstoque.SQL.Clear;
                DMESTOQUE.TEstoque.SQL.Add('update ESTOQUE set');
                DMESTOQUE.TEstoque.SQL.Add('ESTMAX = :ESTMAX,');
                DMESTOQUE.TEstoque.SQL.Add('ESTMIN = :ESTMIN, ICMS = :ICMS, FRETE = :FRETE, ');
                DMESTOQUE.TEstoque.SQL.Add('ESTRESERV = :ESTRESERV, ESTPED = :ESTPED,');
                DMESTOQUE.TEstoque.SQL.Add('ESTSALDO = :ESTSALDO, CVVPROAT = :CVVPROAT, CVPPROAT = :CVPPROAT,');
                DMESTOQUE.TEstoque.SQL.Add('CVVPROVAR = :CVVPROVAR, CVPPROVAR = :CVPPROVAR,');
                DMESTOQUE.TEstoque.SQL.Add('VENDATAP = :VENDATAP, VENDATAV = :VENDATAV,');
                DMESTOQUE.TEstoque.SQL.Add('VENDVARP = :VENDVARP, VENDVARV = :VENDVARV,');
                DMESTOQUE.TEstoque.SQL.Add('VALUNIT = :VALUNIT, VALREP = :VALREP, VALCUSTO = :VALCUSTO, AVVPROAT = :AVVPROAT,');
                DMESTOQUE.TEstoque.SQL.Add('AVPPROAT = :AVPPROAT, AVVPROVAR = :AVVPROVAR, AVPPROVAR = :AVPPROVAR,');
                DMESTOQUE.TEstoque.SQL.Add('LUCRATIVIDADE = :LUCRATIVIDADE, COEFDIV = :COEFDIV, VALOREST = :VALOREST,');
                DMESTOQUE.TEstoque.SQL.Add('OUTROS = :OUTROS, QUANT2 = :QUANT2, DTCAD = :DTCAD, ESTINI = :ESTINI,');
                DMESTOQUE.TEstoque.SQL.Add('VALCUSDESP = :VALCUSDESP, ESTANTCONT = :ESTANTCONT, CONTAGEM = :CONTAGEM,');
                DMESTOQUE.TEstoque.SQL.Add('ESTSIMULADO = :ESTSIMULADO, VLRUNITCOMP = :VLRUNITCOMP, INDICE = :INDICE,');
                DMESTOQUE.TEstoque.SQL.Add('BONIFICACAO = :BONIFICACAO, VLRBONIFIC = :VLRBONIFIC, DESCONTO = :DESCONTO,');
                DMESTOQUE.TEstoque.SQL.Add('CLNC = :CLNC, MOD = :MOD, IMPEXP = :IMPEXP,');
                DMESTOQUE.TEstoque.SQL.Add('IMPREND = :IMPREND, CONTSOC = :CONTSOC, COFINS = :COFINS, PIS = :PIS,');
                DMESTOQUE.TEstoque.SQL.Add('MARGEMSEG = :MARGEMSEG, PERCMARGSEG = :PERCMARGSEG, REDUCBASE = :REDUCBASE,');
                DMESTOQUE.TEstoque.SQL.Add('VLRCOMPSD = :VLRCOMPSD, ACRECIMO = :ACRECIMO, ESTCALC = :ESTCALC,');
                DMESTOQUE.TEstoque.SQL.Add('DATAATU = :DATAATU, HORAATU = :HORAATU, PRECOOFERTA = :PRECOOFERTA,');
                DMESTOQUE.TEstoque.SQL.Add('DATAOFERTA = :DATAOFERTA,VENCIMENTOOFERTA = :VENCIMENTOOFERTA, MEDIABASEICMST = :MEDIABASEICMST, MEDIAVLRICMST = :MEDIAVLRICMST, IPI_VND = :IPI_VND, PMC = :PMC, MVA = :MVA');
                DMESTOQUE.TEstoque.SQL.Add('where COD_ESTOQUE = :OLD_COD_ESTOQUE');
                DMESTOQUE.TEstoque.ParamByName('OLD_COD_ESTOQUE').AsInteger := codigo;
           End
           Else Begin
                codigo :=  verificaProxCodigo('ESTOQUE', 'COD_ESTOQUE', true);
                If codigo > 0
                Then Begin
                   DMESTOQUE.TEstoque.Close;
                   DMESTOQUE.TEstoque.SQL.Clear;
                   DMESTOQUE.TEstoque.SQL.Add('insert into ESTOQUE');
                   DMESTOQUE.TEstoque.SQL.Add('(COD_ESTOQUE, COD_LOJA, COD_SUBPROD,ESTMAX, ESTMIN,');
                   DMESTOQUE.TEstoque.SQL.Add('ICMS, FRETE, ESTRESERV, ESTPED, ESTSALDO, CVVPROAT, CVPPROAT,');
                   DMESTOQUE.TEstoque.SQL.Add('CVVPROVAR, CVPPROVAR, VENDATAP, VENDATAV, VENDVARP, VENDVARV, VALUNIT,');
                   DMESTOQUE.TEstoque.SQL.Add('VALREP, VALCUSTO, AVVPROAT, AVPPROAT, AVVPROVAR, AVPPROVAR, LUCRATIVIDADE,');
                   DMESTOQUE.TEstoque.SQL.Add('COEFDIV, VALOREST, OUTROS, QUANT2, DTCAD, ESTINI, VALCUSDESP, ESTANTCONT,');
                   DMESTOQUE.TEstoque.SQL.Add('CONTAGEM, ESTSIMULADO, VLRUNITCOMP, INDICE, BONIFICACAO, VLRBONIFIC,');
                   DMESTOQUE.TEstoque.SQL.Add('DESCONTO, CLNC, MOD, IMPEXP, IMPREND, CONTSOC, COFINS, PIS, MARGEMSEG,');
                   DMESTOQUE.TEstoque.SQL.Add('PERCMARGSEG, REDUCBASE, VLRCOMPSD, ACRECIMO, ESTCALC, DATAATU, HORAATU,');
                   DMESTOQUE.TEstoque.SQL.Add('PRECOOFERTA, DATAOFERTA, VENCIMENTOOFERTA, MEDIABASEICMST, MEDIAVLRICMST, IPI_VND, PMC, MVA)');
                   DMESTOQUE.TEstoque.SQL.Add('values');
                   DMESTOQUE.TEstoque.SQL.Add('(:COD_ESTOQUE, :COD_LOJA, :COD_SUBPROD, :ESTMAX,');
                   DMESTOQUE.TEstoque.SQL.Add(':ESTMIN, :ICMS, :FRETE, :ESTRESERV, :ESTPED, :ESTSALDO,');
                   DMESTOQUE.TEstoque.SQL.Add(':CVVPROAT, :CVPPROAT, :CVVPROVAR, :CVPPROVAR, :VENDATAP, :VENDATAV,');
                   DMESTOQUE.TEstoque.SQL.Add(':VENDVARP, :VENDVARV, :VALUNIT, :VALREP, :VALCUSTO, :AVVPROAT, :AVPPROAT,');
                   DMESTOQUE.TEstoque.SQL.Add(':AVVPROVAR, :AVPPROVAR, :LUCRATIVIDADE, :COEFDIV, :VALOREST, :OUTROS,');
                   DMESTOQUE.TEstoque.SQL.Add(':QUANT2, :DTCAD, :ESTINI, :VALCUSDESP, :ESTANTCONT, :CONTAGEM, :ESTSIMULADO,');
                   DMESTOQUE.TEstoque.SQL.Add(':VLRUNITCOMP, :INDICE, :BONIFICACAO, :VLRBONIFIC, :DESCONTO, :CLNC,');
                   DMESTOQUE.TEstoque.SQL.Add(':MOD, :IMPEXP, :IMPREND, :CONTSOC, :COFINS, :PIS, :MARGEMSEG, :PERCMARGSEG,');
                   DMESTOQUE.TEstoque.SQL.Add(':REDUCBASE, :VLRCOMPSD, :ACRECIMO, :ESTCALC, :DATAATU, :HORAATU, :PRECOOFERTA,');
                   DMESTOQUE.TEstoque.SQL.Add(':DATAOFERTA, :VENCIMENTOOFERTA, :MEDIABASEICMST, :MEDIAVLRICMST, :IPI_VND, :PMC, :MVA)');
                   DMESTOQUE.TEstoque.ParamByName('cod_estoque').AsInteger := codigo;
                   DMESTOQUE.TEstoque.ParamByName('COD_SUBPROD').AsInteger := codigoAux;
                   DMESTOQUE.TEstoque.ParamByName('COD_LOJA').AsInteger := StrToInt(FMenu.LCODLOJA.Caption);
                End
                Else Begin
                  msgErro := 'Falha ao tentar encontrar estoque: ' + objeto.SubProduto.Descricao;
                  Result := False;
                  Exit;
                End;

               DMESTOQUE.TEstoque.ParamByName('ESTMAX').AsCurrency := objeto.EstMax;
               DMESTOQUE.TEstoque.ParamByName('ESTMIN').AsCurrency := objeto.EstMin;
               DMESTOQUE.TEstoque.ParamByName('ICMS').AsCurrency := objeto.ICMS;
               DMESTOQUE.TEstoque.ParamByName('FRETE').AsCurrency := objeto.Frete;
               DMESTOQUE.TEstoque.ParamByName('ESTRESERV').AsCurrency := objeto.EstReserv;
               DMESTOQUE.TEstoque.ParamByName('ESTPED').AsCurrency := objeto.EstPed;
               DMESTOQUE.TEstoque.ParamByName('ESTSALDO').AsCurrency := objeto.EstSaldo;
               DMESTOQUE.TEstoque.ParamByName('CVVPROAT').AsCurrency := objeto.CVVProAt;
               DMESTOQUE.TEstoque.ParamByName('CVPPROAT').AsCurrency := objeto.CVPProAt;
               DMESTOQUE.TEstoque.ParamByName('CVVPROVAR').AsCurrency := objeto.CVVProVar;
               DMESTOQUE.TEstoque.ParamByName('CVPPROVAR').AsCurrency := objeto.CVPProVar;
               DMESTOQUE.TEstoque.ParamByName('VENDATAP').AsCurrency := objeto.VendAtaP;
               DMESTOQUE.TEstoque.ParamByName('VENDATAV').AsCurrency := objeto.VendAtaV;
               DMESTOQUE.TEstoque.ParamByName('VENDVARP').AsCurrency := objeto.VendVarp;
               DMESTOQUE.TEstoque.ParamByName('VENDVARV').AsCurrency := objeto.VendVarV;
               DMESTOQUE.TEstoque.ParamByName('VALUNIT').AsCurrency := objeto.ValUnit;
               DMESTOQUE.TEstoque.ParamByName('VALREP').AsCurrency := objeto.ValRep;
               DMESTOQUE.TEstoque.ParamByName('VALCUSTO').AsCurrency := objeto.ValCusto;
               DMESTOQUE.TEstoque.ParamByName('AVVPROAT').AsCurrency := objeto.AVVProAt;
               DMESTOQUE.TEstoque.ParamByName('AVPPROAT').AsCurrency := objeto.AVPProAt;
               DMESTOQUE.TEstoque.ParamByName('AVVPROVAR').AsCurrency := objeto.AVVProVar;
               DMESTOQUE.TEstoque.ParamByName('AVPPROVAR').AsCurrency := objeto.AVPProVar;
               DMESTOQUE.TEstoque.ParamByName('LUCRATIVIDADE').AsCurrency := objeto.Lucratividade;
               DMESTOQUE.TEstoque.ParamByName('COEFDIV').AsCurrency := objeto.CoefDiv;
               DMESTOQUE.TEstoque.ParamByName('VALOREST').AsCurrency := objeto.ValorRest;
               DMESTOQUE.TEstoque.ParamByName('OUTROS').AsCurrency := objeto.Outros;
               DMESTOQUE.TEstoque.ParamByName('QUANT2').AsCurrency := objeto.Quant2;
               If objeto.DtCad > 0 Then
                DMESTOQUE.TEstoque.ParamByName('DTCAD').AsDateTime := objeto.DtCad;
               DMESTOQUE.TEstoque.ParamByName('ESTINI').AsCurrency := objeto.EstIni;
               DMESTOQUE.TEstoque.ParamByName('VALCUSDESP').AsCurrency := objeto.ValCusDesp;
               DMESTOQUE.TEstoque.ParamByName('ESTANTCONT').AsCurrency := objeto.EstantCont;
               DMESTOQUE.TEstoque.ParamByName('CONTAGEM').AsCurrency := objeto.Contagem;
               DMESTOQUE.TEstoque.ParamByName('ESTSIMULADO').AsCurrency := objeto.EstSimulado;
               DMESTOQUE.TEstoque.ParamByName('VLRUNITCOMP').AsCurrency := objeto.VlrUnitComp;
               DMESTOQUE.TEstoque.ParamByName('INDICE').AsCurrency := objeto.Indice;
               DMESTOQUE.TEstoque.ParamByName('BONIFICACAO').AsCurrency := objeto.Bonificacao;
               DMESTOQUE.TEstoque.ParamByName('VLRBONIFIC').AsCurrency := objeto.VlrBonific;
               DMESTOQUE.TEstoque.ParamByName('DESCONTO').AsCurrency := objeto.Desconto;
               DMESTOQUE.TEstoque.ParamByName('CLNC').AsCurrency := objeto.CLNC;
               DMESTOQUE.TEstoque.ParamByName('MOD').AsCurrency := objeto.ModEst;
               DMESTOQUE.TEstoque.ParamByName('IMPEXP').AsCurrency := objeto.ImpExp;
               DMESTOQUE.TEstoque.ParamByName('IMPREND').AsCurrency := objeto.ImprEnd;
               DMESTOQUE.TEstoque.ParamByName('CONTSOC').AsCurrency := objeto.ContSoc;
               DMESTOQUE.TEstoque.ParamByName('COFINS').AsCurrency := objeto.COFINS;
               DMESTOQUE.TEstoque.ParamByName('PIS').AsCurrency := objeto.PIS;
               DMESTOQUE.TEstoque.ParamByName('MARGEMSEG').AsCurrency := objeto.MargemSeg;
               DMESTOQUE.TEstoque.ParamByName('PERCMARGSEG').AsCurrency := objeto.PercMargSeg;
               DMESTOQUE.TEstoque.ParamByName('REDUCBASE').AsCurrency := objeto.ReducBase;
               DMESTOQUE.TEstoque.ParamByName('VLRCOMPSD').AsCurrency := objeto.VlrCompSD;
               DMESTOQUE.TEstoque.ParamByName('ACRECIMO').AsCurrency := objeto.Acrescimo;
               DMESTOQUE.TEstoque.ParamByName('ESTCALC').AsCurrency := objeto.EstCalc;
               if objeto.DataAtual > 0 Then
                  DMESTOQUE.TEstoque.ParamByName('DATAATU').AsDateTime := objeto.DataAtual;
               If objeto.HoraAtual > 0 Then
                  DMESTOQUE.TEstoque.ParamByName('HORAATU').AsDateTime := objeto.HoraAtual;
               DMESTOQUE.TEstoque.ParamByName('PRECOOFERTA').AsCurrency :=  objeto.PrecoOferta;
               If objeto.DataOferta > 0 Then
                  DMESTOQUE.TEstoque.ParamByName('DATAOFERTA').AsDateTime := objeto.DataOferta;
               If objeto.VencOferta > 0 Then
                  DMESTOQUE.TEstoque.ParamByName('VENCIMENTOOFERTA').AsDateTime := objeto.VencOferta;
               DMESTOQUE.TEstoque.ParamByName('MEDIABASEICMST').AsCurrency := objeto.MediaBaseICMST;
               DMESTOQUE.TEstoque.ParamByName('MEDIAVLRICMST').AsCurrency := objeto.MediaVlrICMST;
               DMESTOQUE.TEstoque.ParamByName('IPI_VND').AsCurrency := objeto.IPIVND;
               DMESTOQUE.TEstoque.ParamByName('PMC').AsCurrency := objeto.PMC;
               DMESTOQUE.TEstoque.ParamByName('MVA').AsCurrency := objeto.PMA;
               DMESTOQUE.TEstoque.ExecSQL;
           End;
       End
      Else Begin
        Result := False;
      End;
    Except
      msgErro := 'Falha ao tentar encontrar estoque: ' + objeto.SubProduto.Descricao;
      Result := False;
    End;
End;

function verificaItemVenda(objeto :TItemVenda; codPedido :Integer; out msgErro:String; out codigo:Integer):Boolean;
var
  codigoAux, tmp :Integer;
Begin
    Try
      msgErro := '';
      Result := True;

      If verificaEstoque(objeto.Estoque, msgErro, codigoAux)
      Then Begin
            //codigo :=  verificaProxCodigo('ITENSPEDVEN', 'COD_ITENSPEDVEN', true);
            //If codigo > 0
            //Then Begin
                DMSAIDA.TItemPV.Close;
                DMSAIDA.TItemPV.SQL.Clear;
                DMSAIDA.TItemPV.SQL.Add('insert into ITENSPEDVEN');
                DMSAIDA.TItemPV.SQL.Add('(COD_ITENSPEDVEN, COD_PEDVEN, COD_ESTOQUE, QTDEPROD, DESCPRO, COD_FUNCIONARIO,');
                DMSAIDA.TItemPV.SQL.Add('VALUNIT, VALCUSTO, VALORTOTAL, ATUEST, VALREP, COEFDIV, VALCOMP, LUCPER,');
                DMSAIDA.TItemPV.SQL.Add('LUCMOE, DATA, COMISSAO, OPERACAO, LUCREL, VLRVENDBD, QTDDEV, NUMITEM,');
                DMSAIDA.TItemPV.SQL.Add('COD_LOTE, ALIQICMS, BASEICMS, VLRICMS, BASEICMSSUBS, VLRIPI, ALIQIPI,');
                DMSAIDA.TItemPV.SQL.Add('REDUCBASEICMS, VLRICMSSUBS, VLRUNITDEV, QTDENTREGUE, COD_UNIDADE, QTDEMB,');
                DMSAIDA.TItemPV.SQL.Add('UNIDEMB, QTDNAEMB, CFOP, TIPOLISTA, IPNPMC, IPNMVA)');
                DMSAIDA.TItemPV.SQL.Add('values');
                DMSAIDA.TItemPV.SQL.Add('(:COD_ITENSPEDVEN, :COD_PEDVEN, :COD_ESTOQUE, :QTDEPROD, :DESCPRO, :COD_FUNCIONARIO,');
                DMSAIDA.TItemPV.SQL.Add(':VALUNIT, :VALCUSTO, :VALORTOTAL, :ATUEST, :VALREP, :COEFDIV, :VALCOMP,');
                DMSAIDA.TItemPV.SQL.Add(':LUCPER, :LUCMOE, :DATA, :COMISSAO, :OPERACAO, :LUCREL, :VLRVENDBD,');
                DMSAIDA.TItemPV.SQL.Add(':QTDDEV, :NUMITEM, :COD_LOTE, :ALIQICMS, :BASEICMS, :VLRICMS, :BASEICMSSUBS,');
                DMSAIDA.TItemPV.SQL.Add(':VLRIPI, :ALIQIPI, :REDUCBASEICMS, :VLRICMSSUBS, :VLRUNITDEV, :QTDENTREGUE,');
                DMSAIDA.TItemPV.SQL.Add(':COD_UNIDADE, :QTDEMB, :UNIDEMB, :QTDNAEMB, :CFOP, :TIPOLISTA, :IPNPMC,');
                DMSAIDA.TItemPV.SQL.Add(':IPNMVA)');

                DMSAIDA.TItemPV.ParamByName('COD_ITENSPEDVEN').AsInteger := codigo;
                DMSAIDA.TItemPV.ParamByName('COD_PEDVEN').AsInteger := codPedido;
                DMSAIDA.TItemPV.ParamByName('COD_ESTOQUE').AsInteger := codigoAux;
                DMSAIDA.TItemPV.ParamByName('QTDEPROD').AsCurrency := objeto.QtdProd;
                DMSAIDA.TItemPV.ParamByName('DESCPRO').AsCurrency := objeto.DescProd;
                If verificaFuncionario(objeto.Funcionario, msgErro, tmp) Then
                  DMSAIDA.TItemPV.ParamByName('COD_FUNCIONARIO').AsInteger := tmp;
                DMSAIDA.TItemPV.ParamByName('VALUNIT').AsCurrency := objeto.ValUnit;
                DMSAIDA.TItemPV.ParamByName('VALCUSTO').AsCurrency := objeto.ValCusto;
                DMSAIDA.TItemPV.ParamByName('VALORTOTAL').AsCurrency := objeto.ValorTotal;
                DMSAIDA.TItemPV.ParamByName('ATUEST').AsString := objeto.AtueEst;
                DMSAIDA.TItemPV.ParamByName('VALREP').AsCurrency := objeto.ValRep;
                DMSAIDA.TItemPV.ParamByName('COEFDIV').AsCurrency := objeto.CoefDiv;
                DMSAIDA.TItemPV.ParamByName('VALCOMP').AsCurrency := objeto.ValComp;
                DMSAIDA.TItemPV.ParamByName('LUCPER').AsCurrency := objeto.LucPer;
                DMSAIDA.TItemPV.ParamByName('LUCMOE').AsCurrency := objeto.LucMoe;
                If objeto.Data > 0 Then
                  DMSAIDA.TItemPV.ParamByName('DATA').AsDateTime := objeto.Data;
                DMSAIDA.TItemPV.ParamByName('COMISSAO').AsCurrency := objeto.Comissao;
                DMSAIDA.TItemPV.ParamByName('OPERACAO').AsString := objeto.Operacao;
                DMSAIDA.TItemPV.ParamByName('LUCREL').AsCurrency := objeto.LucRel;
                DMSAIDA.TItemPV.ParamByName('VLRVENDBD').AsCurrency := objeto.VlrVendBD;
                DMSAIDA.TItemPV.ParamByName('QTDDEV').AsCurrency := objeto.QtdDev;
                DMSAIDA.TItemPV.ParamByName('NUMITEM').AsInteger := objeto.NumItem;
                DMSAIDA.TItemPV.ParamByName('ALIQICMS').AsCurrency := objeto.AliqICMS;
                DMSAIDA.TItemPV.ParamByName('BASEICMS').AsCurrency := objeto.BaseICMS;
                DMSAIDA.TItemPV.ParamByName('VLRICMS').AsCurrency := objeto.VlrICMS;
                DMSAIDA.TItemPV.ParamByName('BASEICMSSUBS').AsCurrency := objeto.BaseICMSSubs;
                DMSAIDA.TItemPV.ParamByName('VLRIPI').AsCurrency := objeto.VlrIPI;
                DMSAIDA.TItemPV.ParamByName('ALIQIPI').AsCurrency := objeto.AliIPI;
                DMSAIDA.TItemPV.ParamByName('REDUCBASEICMS').AsCurrency := objeto.ReducBaseICMS;
                DMSAIDA.TItemPV.ParamByName('VLRICMSSUBS').AsCurrency := objeto.VlrIcmsSubst;
                DMSAIDA.TItemPV.ParamByName('VLRUNITDEV').AsCurrency := objeto.VlrUnitDev;
                DMSAIDA.TItemPV.ParamByName('QTDENTREGUE').AsCurrency := objeto.QtdEntregre;
                If objeto.Unidade <> nil Then
                  If verificaUnidade(objeto.Unidade,  msgErro, tmp) Then
                    DMSAIDA.TItemPV.ParamByName('COD_UNIDADE').AsInteger := tmp;
                DMSAIDA.TItemPV.ParamByName('QTDEMB').AsCurrency := objeto.QtdEmb;
                If objeto.UnidEmb <> nil Then
                  If verificaUnidade(objeto.UnidEmb,  msgErro, tmp) Then
                    DMSAIDA.TItemPV.ParamByName('UNIDEMB').AsInteger := tmp;
                DMSAIDA.TItemPV.ParamByName('QTDNAEMB').AsCurrency := objeto.QtdNaEmb;
                DMSAIDA.TItemPV.ParamByName('CFOP').AsString := objeto.CFOP;
                DMSAIDA.TItemPV.ParamByName('TIPOLISTA').AsString := objeto.TipoLista;
                DMSAIDA.TItemPV.ParamByName('IPNPMC').AsCurrency := objeto.IPNPMC;
                DMSAIDA.TItemPV.ParamByName('IPNMVA').AsCurrency := objeto.IPNMVA;
                DMSAIDA.TItemPV.ExecSQL;
           // End
           // Else Begin
           //   msgErro := 'Falha ao tentar inserir um item de pedido: ' + objeto.Estoque.SubProduto.Descricao;
           ///   Result := False;
           //   Exit;
           // End;
      End
      Else Begin
         Result := False;
         Exit;
      End;
    Except
      msgErro := 'Falha ao tentar inserir um item de pedido: ' + objeto.Estoque.SubProduto.Descricao;
      Result := False;
    End;
End;

function verificaPedVenda(objeto :TPedVenda; out msgErro:String; out numPedido:String):Boolean;
var
  codigo, tmp, i, codigoItem :Integer;
Begin
    Try
      msgErro := '';
      Result := True;

      codigo :=  verificaProxCodigo('PEDVENDA', 'COD_PEDVENDA', true);
      If codigo > 0
      Then Begin
          DMSAIDA.TPedV.Close;
          DMSAIDA.TPedV.SQL.Clear;
          DMSAIDA.TPedV.SQL.Add('insert into PEDVENDA');
          DMSAIDA.TPedV.SQL.Add('(COD_PEDVENDA, COD_CLIENTE, DTPEDVEN, DESCONTO, COD_USUARIO, ');
          DMSAIDA.TPedV.SQL.Add('VALOR, ENTREGA, NOMECLI, OBS, CPFCNPJ, COD_VENDEDOR, SITUACAO, TIPO,');
          DMSAIDA.TPedV.SQL.Add('VLRCOMIS, GARANTIA, COMSOBVENDA,');
          DMSAIDA.TPedV.SQL.Add('VLRFRETE, DESCMOE, COBRANCA, ATUCOMIS,');
          DMSAIDA.TPedV.SQL.Add('EDIT,  NUMPED, COD_FORMPAG)');
          DMSAIDA.TPedV.SQL.Add('values');
          DMSAIDA.TPedV.SQL.Add('(:COD_PEDVENDA, :COD_CLIENTE, :DTPEDVEN, :DESCONTO, :COD_USUARIO,');
          DMSAIDA.TPedV.SQL.Add(':VALOR, :ENTREGA, :NOMECLI, :OBS, :CPFCNPJ, :COD_VENDEDOR, :SITUACAO,');
          DMSAIDA.TPedV.SQL.Add(':TIPO, :VLRCOMIS, :GARANTIA, :COMSOBVENDA,');
          DMSAIDA.TPedV.SQL.Add(':VLRFRETE, :DESCMOE, :COBRANCA,');
          DMSAIDA.TPedV.SQL.Add(':ATUCOMIS, :EDIT, :NUMPED, :COD_FORMPAG)');

          DMSAIDA.TPedV.ParamByName('COD_PEDVENDA').AsInteger := codigo;
          If objeto.Cliente <> nil
          Then Begin
            If verificaCliente(objeto.Cliente, msgErro, tmp) Then
              DMSAIDA.TPedV.ParamByName('COD_CLIENTE').AsInteger := tmp
            Else Begin
              Result := False;
              Exit;
            End;
          End
          Else Begin
              msgErro := 'Cliente do pedido não encontrado.';
              Result := False;
              Exit;
          End;
          DMSAIDA.TPedV.ParamByName('DTPEDVEN').AsDateTime := Date();
          DMSAIDA.TPedV.ParamByName('DESCONTO').AsCurrency := objeto.Desconto;
          DMSAIDA.TPedV.ParamByName('COD_USUARIO').AsInteger := StrToInt(FMenu.LCODUSUARIO.Caption);
          DMSAIDA.TPedV.ParamByName('VALOR').AsCurrency := objeto.Valor;
          If objeto.Entrega > 0 Then
            DMSAIDA.TPedV.ParamByName('ENTREGA').AsDateTime := objeto.Entrega;
          DMSAIDA.TPedV.ParamByName('NOMECLI').AsString := objeto.NomeCliente;
          DMSAIDA.TPedV.ParamByName('OBS').AsString := objeto.Obs;
          DMSAIDA.TPedV.ParamByName('CPFCNPJ').AsString := objeto.CPFCNPJ;
          If verificaFuncionario(objeto.Vendedor, msgErro, tmp) Then
            DMSAIDA.TPedV.ParamByName('COD_VENDEDOR').AsInteger := tmp;
          If verificaFormaPagamento(objeto.Pagamento, msgErro, tmp) Then
            DMSAIDA.TPedV.ParamByName('COD_FORMPAG').AsInteger := tmp
          Else Begin
              msgErro := 'Forma de pagamento não encontrada.';
              Result := False;
              Exit;
          End;
          DMSAIDA.TPedV.ParamByName('SITUACAO').AsString := 'ABERTO';
          DMSAIDA.TPedV.ParamByName('TIPO').AsString := objeto.Tipo;
          DMSAIDA.TPedV.ParamByName('VLRCOMIS').AsCurrency := objeto.VlrComis;
          DMSAIDA.TPedV.ParamByName('GARANTIA').AsString := objeto.Garantia;
          DMSAIDA.TPedV.ParamByName('COMSOBVENDA').AsString := objeto.ComSobVenda;
          DMSAIDA.TPedV.ParamByName('VLRFRETE').AsCurrency := objeto.VlrFrete;
          DMSAIDA.TPedV.ParamByName('DESCMOE').AsCurrency := objeto.DesMoe;
          DMSAIDA.TPedV.ParamByName('COBRANCA').AsString := objeto.Cobranca;
          DMSAIDA.TPedV.ParamByName('ATUCOMIS').AsInteger := objeto.AtuComis;
          DMSAIDA.TPedV.ParamByName('EDIT').AsString := '0';
          numPedido := verificaProxNumeroPedido;
          DMSAIDA.TPedV.ParamByName('NUMPED').AsString := numPedido;

            If ((objeto.Itens <> nil) And (Length(objeto.Itens) > 0))
            Then Begin
                 codigoItem := verificaProxCodigo('ITENSPEDVEN', 'COD_ITENSPEDVEN', true);
                 for i:=0 to Length(objeto.Itens)-1 do
                 Begin
                      If not verificaItemVenda(objeto.Itens[i], codigo, msgErro, codigoItem)
                      Then Begin
                        Mensagem('Mzr Sistemas - INFORMAÇÃO', 'Não foi possível adicionar item do pedido. ('+ objeto.Itens[i].Estoque.SubProduto.Descricao + ')' +#13+'Mensagem retorno: ' + msgErro, '', 1, 1, false, 'i');
                      End;
                      codigoItem := codigoItem + 1;
                 End;
                 Try
                    DMMACS.TCodigo.Close;
                   DMMACS.TCodigo.SQL.Clear;
                   DMMACS.TCodigo.SQL.Add('update codigo set COD_ITENSPEDVEN =:CODIGO');
                   DMMACS.TCodigo.ParamByName('CODIGO').AsInteger := codigoItem;
                   DMMACS.TCodigo.ExecSQL;
                   DMMACS.IBTCodigo.CommitRetaining;
                 Except
                 End;
                 FiltraTabela(DMMACS.TCodigo, 'CODIGO', '', '' ,'');
            End;   
        DMSAIDA.TPedV.ExecSQL;
      End
      Else Begin
        msgErro := 'Falha ao tentar inserir pedido.';
        Result := False;
        Exit;
      End;

    Except
      msgErro := 'Falha ao tentar inserir pedido.';
      Result := False;
    End;
End;






end.



