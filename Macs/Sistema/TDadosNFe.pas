unit TDadosNFe;

interface

type
   //informa��es da NF-e
   TIde = class
       public
           //Versao: String;
           Id: String;
           UFCodigo: Integer;
           NatuOpera: String;
           //0 - pagamento � vista;
           //1 - pagamento � prazo;
           //2 - outros.
           FormaPagam: Integer;
           modelo: Integer;
           serie: Integer;
           NumeroDocFisc: Integer;
           DtHrEmissao: String;
           DtHrSaiEnt: String;
           hSaiEnt: String;
           //(0 - entrada; 1 - sa�da)
           TipoDocFisc: Integer;
           //identifica��o do destinat�rio
           //1 - opera��o interna
           //2 - opera��o interestadual
           //3 - opera��o estrangeira
           IdDest: Integer;
           MunicipioCodigo: String;
           TipoImpressao: Integer;  //  impressao danfe
           TipoEmissao:Integer;
           //cDv: String;
           TipoAmb: Integer;
           finNFe:Integer;
           //indica��o opera��o consumidor final
           //0 - N�o consumidor final
           //1 - consumidor final
           indFinal: Integer;
           //indicador presen�a do comprador no momento da opera��o
           //0 - N�o se aplica (por exemplo, Nota Fiscal complementar ou de ajuste);
           //1 - Opera��o presencial;
           indPres: Integer;
           procEmi: Integer;
           NFeRef: String;
           NFeRefInfo: String;
           ProcessoEmissao: String;
           VersaoAplicativo: String;
           CodigoSeguranca: String;
    end;

    // informa��es de endere�o
  TEndereco = class
   public
       Logradouro:String;
       Numero:String;
       Complemento :String;
       Bairro:String;
       CodigoMunicipio:String; 
       NomeMunicipio:String;
       UF:String;
       CEP :String;
       CodigoPais:String;
       NomePais:String;
       Telefone :String;
  end;

   // Identifica��o do emitente
  TEmitente = class(TEndereco)
   public
       CNPJ: String;
       CPF: String;
       Nome: String;
       RegimeTributario: String;
       NomeFantasia: String;
       IE: String;
       IEST: String;
  end;

   // Identifica��o do destinatario
  TDestinatario = class(TEndereco)
       public
           CNPJ: String;
           CPF: String;
           Nome: String;
           NomeFantasia: String;
           IE: String;
           ISUFRAMA: String;  
           //Edmar - 11/03/2015 - Indicador da IE do Destinat�rio, informar:
			//1 - Contribuinte ICMS (informar a IE do destinat�rio);
			//2 - Contribuinte isento de Inscri��o no cadastro de Contribuintes do ICMS;
			//9 - N�o Contribuinte, que pode ou n�o possuir Inscri��o Estadual no Cadastro de Contribuintes do ICMS.
           indIEDest: String;
           //Edmar - 30/03/2015 - Identifica��o se o destinat�rio � estrangeiro
           //neste campo informar o numero do passaporte ou alguma identifica��o de seu pais
           idEstrangeiro: String;
  end;


    //detalhamento de Medicamento
  TMed = class
       public
           NmLote: String;
           QntLote: Double;
           DtFabricacao: TDateTime;
           DtValidade: TDateTime;
           ValorMaxCons: Double;
  end;

  //adicionais de di da importa��o
  TAdicao = class
  		public
       	Sequencia: Integer;
           NumeroAdicao: Integer;
           CodigoFabricante: String;
           Desconto: Double;
           Drawback: String;
  end;

  //detalhamento de importa��o
  TImportacao = class
  		public
       	Numero: String;
           DataRegistro: String;
           LocalDesembarque: String;
           UfDesembarque: String;
           DataDesembarque: String;
           TipoTransporte: Integer;
           ValorAfrmm: Double;
           FormaImportacao: Integer;
           CnpjAdquirente: String;
           UfAdquirente: String;
           CodigoExportador: String;
       	Adicoes: Array of TAdicao;
  end;

  //detalhamento do Combustivel
  TComb = class
       public
           CodigoAnp: String;
           DescricaoAnp: String;
           RegCodif: String;
           QtdeComb: Double;
           UfConsumo: String;
           BcCide: Double;
           VlrAliqCide: Double;
           VlrCide: Double;
  end;

  // identificacao do produto
  TProd = class
       public
           CodigoProduto: String;
           CodigoBarra: String;
           Descricao: String;
           CodigoNCM: String;
           CodigoBeneficioFiscal: String;
           CodigoCEST: String;
           CodigoEXTIPI: String;
           CFOP: Integer;
           UnidadeComercial: String;
           QntComercial: WideString;
           ValorUnitario: String;
           ValorBruto: Double;
           GTIN: String;
           UnidadeTributavel: String;
           QntTributavel: WideString;
           ValorUnitTribut: String;
           ValorFrete: Double;
           ValorSeguro: Double;
           ValorDesconto: Double;
           ValorOutros: Double;
           ValorTotalTributo: Double;
           AliquotaTotalTributo: Double;
           NumPedCompra: String;
           NumItemPedCompra: String;
           Medicamento: Array of TMed;
           Combutivel: TComb;
           Importacao: TImportacao;
  end;

  
  //Tributa��o pelo ICMS
  TICMS = class
       public
           {
           0 ['ICMS00'];//Tributada Integralmente
           1 ['ICMS10'];//Tributada e com cobran�a do ICMS
                   //por substitui��o tribut�ria
           2 ['ICMS20'];//Com Redu��o de base de calculo
           3 ['ICMS30'];//Isenta ou n�o tributada e com cobran�a do
                   //ICMS por substitui��o tributaria
           4 ['ICMS40'];//Isenta
           5 ['ICMS41'];//N�o tributada
           6 ['ICMS50'];//Suspens�o
           7 ['ICMS51'];//Diferimento
           8 ['ICMS60'];//ICMS cobrado anteriormente por substitui��o tribut�ria
           9 ['ICMS70'];//Com redu��o de base de c�lculo e
                       //cobran�a do ICMS por substitui��o tribut�ria;
           10 outros
            }
           CodigoST: Integer;   // codigo informado acima
           //Origem: String; //origem da mercadoria:
           // ja foi deixado padrao como Nacional  - 0

           ModDetBC: Integer; //0 1 2 7 9 10
           PercRedBC: Double;  // 2 7 9
           ValorBC: Double; //0 1 2 7 9 10
           AliquotaICMS: Double;//0 1 2 7 9 10
           ValorICMS: Double; //0 1 2 7 9 10

           ValorBCSTRet: Double;
           ValorIcmsSubstituto: Double;
           ValorSTRet: Double;

           ModBDST: Integer; //1 3 9 10
           PercValorST: Double; //1 3 9 10
           PercRedST: Double;//1 3 9 10
           ValorBCST: Double; //1 3 8 9 10
           AliquotaST: Double;//1 3 9 10
           ValorST: Double; //1 3 8 9 10
			ICMS_pCredSN : Double;
			ICMS_vCredICMSSN : Double;
           ValorBaseFCP: Double;
           AliquotaFCP: Double;
           ValorFCP: Double;
           ValorBaseFCPST: Double;
           AliquotaFCPST: Double;
           ValorFCPST: Double;
           ValorBaseFCPSTRet: Double;
           AliquotaFCPSTRet: Double;
           ValorFCPSTRet: Double;
           AliquotaSTCF: Double; //aliquota st para consumidor final
  end;

  	//Tributa��o do ICMS para a UF de destino
	TICMSUFDest = class
   	public
       	ValorBCUFDest: Double;//valor da base de calculo do icms na uf de destino
           ValorBCFCPUFDest: Double;//valor da base de calculo para FCP na uf de destino
           PercFCPUFDest: Double;//percentual interna da uf de destino relativo ao Fundo de Combate a Pobreza
           PercIcmsUFDest: Double;//percentual interna na uf de destino 
           PercIcmsInter: Double;//percentual interestadual das uf envolvidas
           PercIcmsInterPart: Double;//percentual de icms interestadual para uf de destino
           ValorFCPUFDest: Double;//valor do icms relativo ao fundo de combate a pobreza da uf de destino
           ValorIcmsUFDest: Double;//valor do icms interestadual para a uf de destino
           ValorIcmsUFRemetente: Double;//valor do icms interestadual para a UF do remetente
  	end;

  //Tributa��o pelo IPI
  TIPI = class
       public
           AliquotaIPI: Double;//0 1 2 7 9 10
           ValorIPI: Double; //0 1 2 7 9 10
           AliqDevolvida: Double;
  end;

  //Dados do PIS
  TPIS = Class
       public
           //1 - PIS tributada pela al�quota
            //2 - PIS tributado por Qtde
            //3 - PIS n�o tributado
            //4 - PIS outras opera��es

           CodigoPIS: Integer;

           PISOutros :Boolean;//4 // True: PIS com percentual
           // False: PIS em valor

           ValorBC: Double; // 1        (4 True)
           AliquotaPer: Double; // 1    (4 True)

           AliquotaReais: Double; // 2 (4 False)
           QntVend: Double; // 2       (4 False)


           Valor: Double; // 1 2 4
  end;


   // Dados do PIS Substitui��o Tribut�ria
   TPISST = Class
       public

           PISST :Boolean;   // TRUe: PISST por porcentagem
           //False: PISST por valor

           ValorBC: Double; // True
           AliquotaPerc: Double;  // True

           QntVend: Double; // False
           AliquotaReais: Double; //False

           Valor: Double;
  end;

  //Dados do COFINS
  TCOFINS = Class
       public
           // 1 -  CONFINS TRIBUTADA Aliquota
           // 2 -  CONFINS TRIBUTADA por Qtde
           // 3 -  CONFINS n�o TRIBUTADA
           // 4 -  CONFINS outras opera��es
           CodigoCOFINS: Integer;

           // True: Cofins com percentual
           // False: Cofins em valor
           COFINSOutros:Boolean; // 4

           ValorBC: Double; // 1        (4 True)
           AliquotaPer: Double; // 1    (4 True)

           AliquotaReais: Double; // 2 (4 False)
           QntVend: Double; // 2       (4 False)

           Valor: Double; // 1 2 4

  end;

  // Dados da COFINS Substitui��o Tribut�ria
   TCONFINSST = Class
       public

           // TRue: CONFINS ST em percentual
           //False: COFINS ST em valor
           CONFINSST :Boolean;

           ValorBC: String; // True
           AliquotaPerc: String;  // True

           QntVend: String; // False
           AliquotaReais: String; //False

           Valor: String;
  end;

  TISSQN2 = class
       public
          ValorBC: String;
          Aliquota: String;
          ValorIssqn: String;
          CodigoMunicipio: String;
          CodListServ: String;
          CodSitTrib: String;
  end;

  //imposto de importa��o
  TII = class
      public
         ValorBC: Double;
         OutDespesas: Double;
         ValorII: Double;
         ValorIOF: Double;
  end;

  //Tributos incidentes nos produtos ou servi�os da NF-e
  TImposto = class
       public
           ICMS: TICMS;
           IPI: TIPI;
           PIS: TPIS;
           II: TII;
           PISST: TPISST;
           COFINS: TCOFINS;
           COFINSST: TCONFINSST;
           ISSQN2: TISSQN2;
           ICMSUFDEst: TICMSUFDest;
  end;

  //item da NFe
  TItem = class
       public
           NmItem: Integer;
           Produto: TProd;
           Imposto: TImposto;
           InfAdicional: String;
  end;

  // dados do transportador
  TTransportadora = class
       public
           CNPJ: String;
           CPF: String;
           Nome: String;
           IE: String;
           Endereco: String;
           Municipio: String;
           UF: String;
  end;

 //    Dados da retencao  ICMS do Transporte
 TICMSTransporte = class
       public
           ValorServico: String;
           ValorBC: String;
           Aliquota: String;
           ValorICMS: String;
           CFOP: String;
           CodigoMunicipio: String;
  end;

  //   Dados do veiculo
  TVeiculo = class
       public
           placa: String;
           UF: String;
           RNTC: String;
  end;


  //N�mero do Lacre
  TLacre = class
       public
           Numero: String;
  end;

  //Dados de volume
  TVolume = class
       public
           QntVol: Double;
           Especie: String;
           Marca: String;
           NumeracaoVol: String;
           PesoLiquido: Double;
           PesoBruto: Double;
           Lacres: Array of TLacre;
  end;

  ////Valores totais da NF-e
  TTotalICMS = class
       public
           VlrBCICMS: Double;
           VlrICMS: Double;
           VlrBCST: Double;
           VlrtST: Double;
           VlrProdServ: Double;
           VlrSeguro: Double;
           VlrDesconto: Double;
           VlrII: Double;
           VlrIPI: Double;
           VlrPIS: Double;
           VlrCOFINS: Double;
           VlrFrete: Double;
           VlrDespesa: Double;
           VlrTotal: Double;
           VlrTotalTributacao: Double;
           VlrTotalIcmsUfDest: Double;
           VlrTotalIcmsUfRemet: Double;
           VlrTotalFcpUfDest: Double;
           VlrTotalFcp: Double;
           VlrTotalFcpSt: Double;
           VlrTotalFcpStRet: Double;
           VlrTotalIpiDevolvido: Double;
  end;

    ////Valores totais de Servi�o da Nota
  TTotalISS = class
       public
           VServico: Double;
           VBC: Double;
           VISS: Double;
           VPis: Double;
           VCofins: Double;
  end;

  //Dados dos transportes da NF-e
  //(qnd for por conta do destinatario nao usa-la)
  TTransporte = class
       public
          //Modalidade do frete
           //0 - por conta do emitente;
           //1 - por conta do destinatario
          ModFrete: Integer;
          Transportador: TTransportadora;
          ICMS: TICMSTransporte;
          Veiculo: TVeiculo;
          Reboque: TVeiculo;
          Volume: TVolume;
  end;

  //dados fatura
  TFatura = class
       public
           numero :String;
           valorOrig :Double;
           valorDesc :Double;
           valorLiq :Double;
  End;

  //dados duplicata
  TDuplicata = class
       public
           numero :String;
           dataVencimento :TDateTime;
           valor :Double;
  End;

  //dados exporta��o
  TExportacao = class
       public
           UFEmbarque :String;
           LocalEmbarque :String;
           LocalDespacho :String;
  End;

  TAutXML = class
       public
           CNPJ: String;
           CPF: String;
  end;

  // dados da NFe
  TNFe = class
       public
           Dados: TIde;
           Emitente: TEmitente;
           Destinatario: TDestinatario;
           Produtos: Array of TItem;
           TotalIss: TTotalISS;
           Total: TTotalICMS;
           Transporte :TTransporte;
           InfAdicionais :String;
           InfAdicionaisFisco :String;
           Exportacao: TExportacao;
           AutXML: TAutXML;           
  end;


 
implementation

end.


 