unit UGeraSintegra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPadrao, StdCtrls, ExtCtrls, TFlatHintUnit, Buttons, jpeg, Mask, DBCtrls,
  DBColorEdit, ComCtrls, UDMMacs, UDMGEOGRAFIA, Alxor32, AlxMessage,
  DrLabel, DateUtils, ClipBrd, ShellApi;

type
  TFGeraSintegra = class(TFPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    txtRazaoSocial: TDBColorEdit;
    txtEndereco: TDBColorEdit;
    txtBairro: TDBColorEdit;
    txtCidade: TDBColorEdit;
    txtCEP: TDBColorEdit;
    txtTelefone: TDBColorEdit;
    DBColorEdit1: TDBColorEdit;
    DBColorEdit2: TDBColorEdit;
    txtNumero: TDBColorEdit;
    DBColorEdit3: TDBColorEdit;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label10: TLabel;
    cmdSair: TButton;
    cmdGerar: TButton;
    Panel9: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    GroupBox7: TGroupBox;
    RichEdit1a: TRichEdit;
    PPrincipal: TPanel;
    btnVoltar: TButton;
    btnAbrir: TButton;
    btnSalvar: TButton;
    RichEdit2a: TRichEdit;
    RichEdit1: TMemo;
    RichEdit2: TMemo;
    SaveDialog1: TSaveDialog;
    CBR53: TCheckBox;
    CBR50: TCheckBox;
    CBR51: TCheckBox;
    CBR54: TCheckBox;
    CBR60M: TCheckBox;
    CBR70: TCheckBox;
    CBR74: TCheckBox;
    CBR75: TCheckBox;
    Button1: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    EdFinalidadeFiscal: TEdit;
    ComboBox3: TComboBox;
    EdNaturezaOperacao: TEdit;
    ComboBox2: TComboBox;
    PPasso03: TPanel;
    Label21: TLabel;
    BitBtn3: TBitBtn;
    Memo4: TMemo;
    BitBtn4: TBitBtn;
    PPasso02: TPanel;
    Label12: TLabel;
    BitBtn2: TBitBtn;
    Memo3: TMemo;
    CbNotaFiscal: TCheckBox;
    CbCupomFiscal: TCheckBox;
    CbInventarioEstoque: TCheckBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Shape1: TShape;
    PPasso01: TPanel;
    Label22: TLabel;
    Memo2: TMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    CbServicos: TCheckBox;

    function Sintegra_Process: boolean;
    function Trata_SIntegra_Str(conteudo,caminho: string): boolean;
    function VerificaSIntegra(conteudo: string): boolean;

    function sRegistro10(var Err_Msg: string): boolean;
    function sRegistro11(var Err_Msg: string): boolean;
    function sRegistro50(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro70(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro51(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro53(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro54(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro74(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
	 function sRegistro75(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro60(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro90: boolean;

	 //Função que adiciona o texto de Log do RichEdit
	 procedure Add_Log(Log: string; Cor: TColor; Tamanho: byte);
    procedure cmdGerarClick(Sender: TObject);
    procedure cmdSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure CBR54Click(Sender: TObject);
    procedure CBR74Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CbNotaFiscalClick(Sender: TObject);
    procedure CbCupomFiscalClick(Sender: TObject);
    procedure CbInventarioEstoqueClick(Sender: TObject);
  private
    { Private declarations }

    function FindR75(codProd:String):Boolean;// - 11/05/2009: procura se codigo ja foi add no array

    procedure IniciaPStatus(limpar:boolean);
    procedure PausePStatus(fechar, sintegra:boolean);

    procedure IniciaR75(); // - 11/05/2009: inicia array para add codigo de produtos
    procedure AddR75(codProd:String; tipo:Integer);// - 11/05/2009: add codigo produto no array
    //Função Utilizada para selecionar os periodos fiscais
    Function FiltraPeriodos: Boolean;


  public
    { Public declarations }

    function UltimoDiaMes(Mdt: TDateTime) : TDateTime;

    procedure AddLog(memoP:Boolean; Log: string);
    procedure AddLogln(memoP:Boolean; Log: string);
  end;

var

  FGeraSintegra: TFGeraSintegra;
  quit_sintegra: boolean;
  Gera_R75: Boolean;                     //Setado sempre que Registros 54, 60I, 60R, 74 ou 77 gerados!
  DT01, Dt02: String;
  aCodProd: array of String;
  qntProd: Integer;
  diretorio, nomeArquivo, resultadoSintegra: String;
  xDT01, xDT02: String;
  XTipoEmpresa: String;

implementation

uses UDMFiscal, UMenu, UDMPessoa, UDMSaida, UDMEstoque, UDMEntrada,
  UValidacaoNFe, DB, UDmServ, USenha, Math, UImpSintegra, UDMFinanc,
  UDMCaixa;

  Function Info_Versao: ShortString; stdcall; external 'SIntegra32Dll.dll';
  Procedure Inicia_SIntegra; stdcall; external 'SIntegra32Dll.dll';
  Procedure Finaliza_SIntegra; stdcall; external 'SIntegra32Dll.DLL';

  Function Registro10(CGC_MF, Insc_Est, Nome_Contribuinte, Municipio, UF,
                      Fax, Data_Inicial, Data_Final, Cod_Convenio, Cod_Operacao,
                      Cod_Finalidade: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro11(Logradouro, Nro, Complemento, Bairro, CEP,
                      Nome_Contato, Telefone: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro50(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                      Nro, CFOP, Emitente, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
                      Aliquota, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro51(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Serie,
                      Nro, CFOP, Valor_Total, Valor_IPI, Isenta_IPI, Outras_IPI,
                      Brancos, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro53(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                      Nro, CFOP, Emitente, Base_ICMS, ICMS_Retido, Despesas_Acessorias,
                      Situacao, Antecipacao, Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro54(CNPJ, Modelo, Serie, Nro, CFOP, CST, Nro_Item,
                      Cod_Produto_Servico, Quantidade, Valor_Produto, Valor_Desconto,
                      Base_ICMS, Base_ICMS_S_Trib, Valor_IPI,
                      Aliquota_ICMS: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro55(CNPJ_Subst, Insc_Est_Subst, Data_GNRE, UF_Substituto, UF_Favorecida, Banco_GNRE,
                      Agencia_GNRE, Nro_GNRE, Valor_GNRE, Data_Vencimento_ICMS, Mes_Ano_Ref,
                      Nro_Convenio: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro56(CNPJ_Adquirente, Modelo, Serie , Nro, CFOP, CST, Nro_Item, Cod_Produto_Servico, Tipo_Operacao,
                      CNPJ_Concessionaria, Aliquota_IPI , Chassi, Brancos : ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60M(Data_Emissao, Nro_Serie_Eqp, Nro_Ordem_Eqp, Modelo_Doc,
                       Nro_Contador_Inicio, Nro_Contador_Fim, Nro_Contador_Z,
                       Contador_Reinicio, Valor_Venda_Bruta,
                       Valor_Total_Geral, Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60A(Data_Emissao, Nro_Serie_Eqp, S_Trib_Aliquota, Valor_TParcial,
                       Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60D(Data_Emissao, Nro_Serie_Eqp, Cod_Produto, Quantidade,
                       Valor_Produto, Base_ICMS, S_Trib_Aliquota, Valor_ICMS,
                       Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60I(Data_Emissao, Nro_Serie_Eqp, Modelo_Doc, COO, Nro_Item, Cod_Produto,
                          Quantidade, Valor_Produto, Base_ICMS, S_Trib_Aliquota, Valor_ICMS,
                          Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro60R(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
                       Valor_Produto, Base_ICMS, S_Trib_Aliquota,
                       Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro61(Brancos_2, Brancos_3, Data_Emissao, Modelo, Serie, SubSerie,
                      Nro_Ordem_Inicio, Nro_Ordem_Fim, Valor_Total, Base_ICMS, Valor_ICMS,
                      Isenta, Outras, Aliquota, Branco: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro61R(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
                       Valor_Bruto_Produto, Base_ICMS, Aliquota_ICMS,
                       Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro70(CNPJ, Insc_Est, Data_Emissao_Utilizacao, UF, Modelo, Serie, SubSerie,
                      Nro, CFOP, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
                      CIF_FOB, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro71(CNPJ, Insc_Est_Tomador, Data_Emissao_Conhecimento, UF_Tomador,
                      Modelo_Conhecimento, Serie, SubSerie, Nro_Conhecimento,
                      UF_Remetente_Destinatario, CNPJ_Remetente_Destinatario,
                      Insc_Est_Remetente_Destinatario, Data_Emissao_NF, Modelo_NF, Serie_NF,
                      Nro_NF, Valor_Total_NF, Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro74(Data_Inventario, Cod_Produto, Quantidade, Valor_Produto,
                      Cod_Posse, CNPJ_Possuidor, Insc_Est_Possuidor, UF_Possuidor,
                      Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro75(Data_Inicial, Data_Final, Cod_Produto_Servico, Cod_NCM, Descricao,
                      UND_Medida, Aliquota_IPI, Aliquota_ICMS, Reducao_Base_ICMS,
                      Base_ICMS_Subst: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro76(CNPJ, Insc_Est, Modelo, Serie, SubSerie, Nro, CFOP, Tipo_Receita,
                      Data_Emissao_Recebimento, UF_Remetente, Valor_Total_NF, Base_ICMS, Valor_ICMS, Isenta,
                      Outras, Aliquota_ICMS, Situacao_NF: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro77(CNPJ_Tomador, Modelo, Serie, SubSerie, Nro, CFOP, Tipo_Receita,
                      Nro_Item, Cod_Servico, Quantidade, Valor_Servico, Valor_Desconto_Despesa, Base_ICMS,
                      Aliquota_ICMS, CNPJ_Operadora_Destino, Cod_Usuario_Final: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro85(Declaracao_Exportacao, Data_Declaracao, Averbacao, Registro_Exportacao,
                      Data_Registro, Conhecimento_Embarque, Data_Conhecimento,
                      Tipo_Conhecimento, Pais, Comprovante_Exportacao,
                      Data_Comprovante_Exportacao, NF_Exportacao,
                      Data_Emissao, Modelo, Serie, Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro86(Registro_Exportacao, Data_Registro, CNPJ_Remetente, IE_remetente,
                      UF, Numero_NF, Data_Emissao, Modelo, Serie, Codigo_Produto, Quantidade,
                      Valor_Unitario_produto, Valor_Total_Produto, Relacionamento,
                      Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88GT(Tipo_Info, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                        Nro, Valor_Mercadoria, Valor_ICMS_Diferido, DI, Data_DI, Descricao_Mercadoria: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88PN(Tipo_Info, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                        Nro, Valor_Mercadoria, Valor_ICMS_Diferido, DI, Data_DI, Descricao_Mercadoria: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88SF(Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie, Sub_Serie,
                        Nro, CFOP, Valor_Total, Valor_ICMS, Valor_ICMS_Retido, SF_RJ, Brancos,
                        Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88ECF(CNPJ_Remetente_Destinatario, Modelo_NF, Serie_NF, Numero_NF, CFOP,
                         CST, Nro_Item, Codigo_Produto, Numero_Serie,
                         Brancos: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88SME_MG(CNPJ_informante, Mensagem: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88SMS_MG(CNPJ_informante, Mensagem: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88SME_MS(CNPJ_informante, IE_informante, Mensagem: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88SMS_MS(CNPJ_informante, IE_informante, Mensagem: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro8801(periodo, descricao, CFOP, uf, und_medida, quantidade,
                        valor, base_icms, valor_icms, aliquota: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro8802(periodo, descricao, CFOP, uf, und_medida, quantidade, incentivo_fiscal,
                        valor, base_icms, valor_icms, aliquota: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88ST(num_nf, data_entrada, num_nf_produtor, ie_produtor,
                        codigo_produto, descricao, quantidade, valor, und_medida,
                        peso_entrada, base_icms_dif_peso, valor_icms_nfp,
                        valor_icms_recolher: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88CF(data_emissao, num_serie, modelo_doc, num_ordem_ecf, num_nf,
                        valor_total, base_icms, valor_icms, aliquota: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88IT(num_serie_ecf, num_ordem_ecf, tipo_ecf, valor_gt_final, cro,
                        data_intervencao, inicio_termino_it, perda_dados_mt,
                        motivo_intervencao, mem_fiscal_anterior, mem_fiscal_nova: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88ENCERRAMENTO(cnpj_informante, ie_informante, mensagem,
                                  num_protocolo, data_baixa, data_protocolo: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88EC(nome_contabilista, cpf_contabilista, crc_contabilista,
                        telefone_contabilista, email_contabilista,
                        alteracao_contabilista: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88SOFTWARE(nome_empresa, cnpj_empresa, cpf_tecnico, telefone_empresa,
                              email_empresa, alteracao_empresa: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88SP01(Num_Serie, Num_Ordem, Tipo_Equip: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88SP02(Data_Estoque, Cod_Produto, Descricao, Unidade,
         Quantidade, Valor_Unitario, Valor_Total, Cod_Posse, CNPJ_Proprietario,
         IE_Proprietario, UF_Proprietario: ShortString): ShortString; stdcall; external 'Sintegra32Dll.Dll';
  Function Registro88SP03(CNPJ, Insc_Est, Data_Recebimento,UF,
         Cod_Modelo, Serie, Numero, CFOP, Emitente, Valor_Total, Base_ICMS, Valor_ICMS,
         Isenta_NTributada, Outras, Aliquota, Situacao, Beneficio_Fiscal, Aliquota_Saida,
         Data_Emissao, ME_EPP: ShortString): ShortString; stdcall; external 'Sintegra32Dll.Dll';
  Function Registro88SP04(CNPJ, Insc_Est, Data_Utilizacao, UF,
         Cod_Modelo, Serie, SubSerie, Numero, CFOP, Valor_Total, Base_ICMS, Valor_ICMS,
         Isenta_NTributada, Outras, CIF_FOB, Situacao, Aliquota, Aliquota_Saida,
         Data_Emissao, ME_EPP: ShortString): ShortString; stdcall; external 'Sintegra32Dll.Dll';
  Function Registro88SP05(CNPJ, Insc_Est, Data_Recebimento, UF,
         Cod_Modelo, Serie, Numero, CFOP, Ressarcimento,
         Data_Visto: ShortString): ShortString; stdcall; external 'Sintegra32Dll.Dll';
  Function Registro88C(CNPJ, Modelo, Serie, Nro, CFOP, Nro_Item, Codigo,
                       Quantidade, BC_ST, ICMS_ST, ICMS_ST_Complementar,
                       BC_Retencao, Imposto_Retido: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88D(CNPJ, IE, UF, Modelo, Serie, Nro, Emitente, Data_Emissao,
                       Data_ES, CNPJ_Saida, UF_Saida, IE_Saida, CNPJ_Recebimento, UF_Recebimento,
                       IE_Recebimento: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88E(CNPJ, IE_Informante, Codigo_Informante, Codigo_Sefaz: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88M(CNPJ: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro88T(CNPJ, Data_Emissao_Recebimento, UF, Modelo, Serie, Nro, Emitente,
                       CIF_FOB, CNPJ_Transportador, UF_Transportador,
                       IE_Transportador, Modal, Placa1, UF1, Placa2, UF2,
                       Placa3, UF3: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro8801_PB(Insc_Est, Periodo, Tipo_Gim, Cred_entradas, Cred_Ativo_Imob,
                           Cred_Transf, ICMS_Antecip_JR, ICMS_Antecip_AR, Outros_cred,
                           Estorno_debito, Saldo_credor: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro8802_PB(Insc_Est, Periodo, Tipo_Gim, Debito_Saida,
                           Transf_Cred_Acumulados, Outros_Debitos,
                           Estorno_Credito, Subst_Entradas_JR, Subst_Entradas_AR,
                           ICMS_Subst_Saidas, ICMS_Retido_Fonte: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro8804_PB(Insc_Est, Periodo, Tipo_Gim, Dife_Aliquota_recolher,
                           Imposto_Retido_outras_Ufs, email, Data_Inicial,
                           Versao_programa, Regime_pagamento: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro8805_PB(CNPJ_Contador, CRC, Nome_Contador, Fone, Email: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro8806_PB(Insc_Est, Periodo, Tipo_Gim, Est_Trib, Est_nao_trib,
                           Est_Subst_Trib, Saldo_Caixa, Saldo_Bancos,
                           Despesa_Pessoal, Outros_Impostos,
                           Despesas_Gerais: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro8814_PB(Base_Recolhimento_Apurada, Media_Mensal_Entrada, Base_Recolhimento_Efetiva,
                           Perc_Recolhimento, Imposto_devido, Num_Empregados, Cred_Empregados,
                           Tot_Aquisicoes, Aquisicoes_Internas, Cred_Aquisicoes_Internas,
                           Perc_Cred_Presumido, Val_Cred_Presumido,
                           Imposto_recolher, Subst_Entradas_JR, Subst_Entradas_AR,
                           ICMS_Subst_Saidas, ICMS_Retido_Fonte: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro8815_PB(Outros_Regimes_Especiais, TARE,
                           FAIN, Cheque_Habitacao, Cheque_Educacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro8816_PB(ICMS_Normal, Subst_Saidas_Estado, Subst_Entradas,
                           Regime_Fonte, Diferencial_Aliquota: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro8850_PB(CNPJ, Insc_Est, Data_emissao_recebimento, UF, Modelo,
                           Serie, Num, CFOP, Obs, Num_Selo_Fiscal: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro8817_PB(Base_Recolhimento_Apurada, Media_Mensal_Entradas,
                           Base_Recolhimento_Efetiva, Perc_Recolhimento, Imposto_devido,
                           Cred_TEFECF, Cred_Cheque_Moradia, Cred_Cheque_Educacao,
                           Valor_Cred_Outorgado, Imposto_recolher, Subst_Entradas_JR,
                           Subst_Entradas_AR, ICMS_Subst_Saidas,
                           ICMS_Retido_Fonte: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  Function Registro90(indice: integer): ShortString; stdcall; external 'SIntegra32Dll.DLL';

  Function Verifica_Convenio(Cod_Convenio: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Operacao(Cod_Operacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Finalidade(Cod_Finalidade: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Modelo(Cod_Modelo: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Situacao(Situacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Emitente(Emitente: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_CST(CST: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_CIF_FOB(CIF_FOB: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_NumeroItem(Nro_Item: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Posse(Cod_Posse: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Tipo_Receita(Cod_Tipo_Receita: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Tipo_Informacao(Cod_Tipo_Informacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_CEP_UF(cCep:ShortString ; cEstado:ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_CEP(cCep:ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_UF(UF: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_CPF(const CPF: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_CNPJ(const CGC: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_InscEst(Inscricao, UF: string): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Antecipacao(Antecipacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Tipo_Operacao(Cod_Tipo_Operacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Conhecimento(Cod_Conhecimento: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Relacionamento(Cod_Relacionamento: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Averbacao(Averbacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Pais(Cod_Pais: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_NCM(Cod_NCM: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_CFOP(Cod_CFOP: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Incentivo(Incentivo_Fiscal: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Motivo_Intervencao(Motivo_Intervencao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Equipamento(Tipo_Equipamento: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Beneficio(Beneficio: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Ressarcimento(ressarcimento: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_ME_EPP(ME_EPP: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Codigo_Sefaz(Codigo_Sefaz: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
  Function Verifica_Modal_Transporte(Modal: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';  

  {
  Procedure Inicia_SIntegra; stdcall; external 'SIntegra32Dll.dll';

  
  Procedure Finaliza_SIntegra; stdcall; external 'SIntegra32Dll.DLL';


  Function Registro10(CGC_MF, Insc_Est, Nome_Contribuinte, Municipio,
                       UF,  Fax, Data_Inicial, Data_Final, Cod_Estrutura,
                       Cod_Operacao, Cod_Finalidade: ShortString):
                       ShortString; stdcall; external 'SIntegra32Dll.DLL';


  Function Registro11(Logradouro, Nro, Complemento, Bairro, CEP, Nome_Contato,
                       Telefone: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';


  Function Registro50(CNPJ, Insc_Est, Data_Emissao_Recebimento,
                       UF, Modelo, Serie, Nro, CFOP, Emitente, Valor_Total,
                       Base_ICMS, Valor_ICMS, Isenta, Outras, Aliquota, Situacao: ShortString): ShortString;  stdcall; external 'SIntegra32Dll.DLL';
  

  Function Registro51(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Serie, Nro, CFOP,
                       Valor_Total, Valor_IPI, Isenta_IPI, Outras_IPI, Situacao: ShortString): ShortString;  stdcall; external 'SIntegra32Dll.DLL';


  Function Registro53(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                       Nro, CFOP, Emitente, Base_ICMS, ICMS_Retido, Despesas_Acessorias,
                       Situacao, Antecipacao: ShortString): ShortString;
                        stdcall; external 'SIntegra32Dll.DLL';

  Function Registro54(CNPJ, Modelo, Serie, Nro, CFOP, CST, Nro_Item, Cod_Produto_Servico,
                       Quantidade, Valor_Produto, Valor_Desconto, Base_ICMS,
                       Base_ICMS_S_Trib, Valor_IPI, Aliquota_ICMS: ShortString):
                       ShortString;  stdcall; external 'SIntegra32Dll.DLL';


  Function Registro55(CNPJ_Subst, Insc_Est_Subst, Data_GNRE, UF_Substituto,
                       UF_Favorecida, Banco_GNRE, Agencia_GNRE, Nro_GNRE, Valor_GNRE,
                       Data_Vencimento_ICMS, Mes_Ano_Ref, Nro_Convenio: ShortString):
                       ShortString;  stdcall; external 'SIntegra32Dll.DLL';

  Function Registro56(CNPJ_Adquirente, Modelo, Serie , Nro, CFOP, CST, Nro_Item,
                       Cod_Produto_Servico, Tipo_Operacao, CNPJ_Concessionaria,
                       Aliquota_IPI , Chassi: ShortString): ShortString;  stdcall; external 'SIntegra32Dll.DLL';
  
  Function Registro60M(Data_Emissao, Nro_Serie_Eqp, Nro_Ordem_Eqp, Modelo_Doc,
                       Nro_Contador_Inicio, Nro_Contador_Fim, Nro_Contador_Z,
                       Contador_Reinicio, Valor_Venda_Bruta, Valor_Total_Geral: ShortString): ShortString;  stdcall; external 'SIntegra32Dll.DLL';

  Function Registro60A(Data_Emissao, Nro_Serie_Eqp, S_Trib_Aliquota, Valor_TParcial: ShortString): ShortString;  stdcall; external 'SIntegra32Dll.DLL';
  
  Function Registro60D(Data_Emissao, Nro_Serie_Eqp, Cod_Produto, Quantidade,
                       Valor_Produto, Base_ICMS, S_Trib_Aliquota, Valor_ICMS: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  
  Function Registro60I(Data_Emissao, Nro_Serie_Eqp, Modelo_Doc, COO, Nro_Item,
                       Cod_Produto, Quantidade, Valor_Produto, Base_ICMS, S_Trib_Aliquota,
                       Valor_ICMS: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
 
  Function Registro60R(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade, Valor_Produto,
                       Base_ICMS, S_Trib_Aliquota: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  
  Function Registro61(Brancos_2, Brancos_3, Data_Emissao, Modelo, Serie, SubSerie,
                       Nro_Ordem_Inicio, Nro_Ordem_Fim, Valor_Total, Base_ICMS,
                       Valor_ICMS, Isenta, Outras, Aliquota, Branco: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

  Function Registro61R(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
                       Valor_Bruto_Produto, Base_ICMS, Aliquota_ICMS: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

  Function Registro70(CNPJ, Insc_Est, Data_Emissao_Utilizacao, UF, Modelo, Serie,
                       SubSerie, Nro, CFOP, Valor_Total, Base_ICMS, Valor_ICMS,
                       Isenta, Outras, CIF_FOB, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

  Function Registro71(CNPJ, Insc_Est_Tomador, Data_Emissao_Conhecimento, UF_Tomador,
                       Modelo_Conhecimento, Serie, SubSerie, Nro_Conhecimento,
                       UF_Remetente_Destinatario, CNPJ_Remetente_Destinatario,
                       Insc_Est_Remetente_Destinatario, Data_Emissao_NF, Modelo_NF,
                       Serie_NF, Nro_NF, Valor_Total_NF: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

  Function Registro74(Data_Inventario, Cod_Produto, Quantidade, Valor_Produto,
                       Cod_Posse, CNPJ_Possuidor, Insc_Est_Possuidor, UF_Possuidor: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
 
  Function Registro75(Data_Inicial, Data_Final, Cod_Produto_Servico, Cod_NCM, Descricao,
                       UND_Medida, Aliquota_IPI, Aliquota_ICMS, Reducao_Base_ICMS,
                       Base_ICMS_Subst: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

  Function Registro76(CNPJ, Insc_Est, Modelo, Serie, SubSerie, Nro, CFOP, Tipo_Receita,
                       Data_Emissao_Recebimento, UF_Remetente, Valor_Total_NF,
                       Base_ICMS, Valor_ICMS, Isenta, Outras, Aliquota_ICMS,
                       Situacao_NF: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

  Function Registro77(CNPJ_Tomador, Modelo, Serie, SubSerie, Nro, CFOP, Tipo_Receita,
                       Nro_Item, Cod_Servico, Quantidade, Valor_Servico,
                       Valor_Desconto_Despesa,  Base_ICMS, Aliquota_ICMS,
                       CNPJ_Operadora_Destino, Cod_Usuario_Final: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
       
  Function Registro85(Declaracao_Exportacao, Data_Declaracao, Natureza_Exportacao,
                       Registro_Exportacao, Data_Registro, Conhecimento_Embarque,
                       Data_Conhecimento, Tipo_Conhecimento, Pais,
                       Data_Averbacao_Exportacao, NF_Exportacao, Data_Emissao, Modelo,
                       Serie: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';
        
  Function Registro86(Registro_Exportacao, Data_Registro, CNPJ_Remetente, IE_remetente,
                       UF, Numero_NF, Data_Emissao, Modelo, Serie, Codigo_Produto,
                       Quantidade, Valor_Unitario_produto, Valor_Total_Produto,
                       Relacionamento: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

  Function Registro88PN(Tipo_Info, Insc_Est, Data_Emissao_Recebimento, UF, Modelo,
                       Serie, Nro, Valor_Mercadoria, Valor_ICMS_Diferido, DI, Data_DI,
                       Descricao_Mercadoria: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

  Function Registro88GT(Tipo_Info, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
                       Nro, Valor_Mercadoria, Valor_ICMS_Diferido, DI, Data_DI,
                       Descricao_Mercadoria: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

  Function Registro88SF(Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie, Sub_Serie,
                       Nro, CFOP, Valor_Total, Valor_ICMS, Valor_ICMS_Retido, SF_RJ, Situacao: ShortString): ShortString; stdcall; external 'SIntegra32Dll.DLL';

          
  Function Registro90(indice: integer): ShortString; stdcall; external 'SIntegra32Dll.DLL';
  //Function Registro90: ShortString; stdcall; external 'SIntegra32Dll.DLL';


Function Verifica_Convenio(Cod_Convenio: ShortString): Boolean ; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_Operacao(Cod_Operacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_Finalidade(Cod_Finalidade: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_Modelo(Cod_Modelo: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_Situacao(Situacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_Emitente(Emitente: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_CST(CST: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_CIF_FOB(CIF_FOB: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_NumeroItem(Nro_Item: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_Posse(Cod_Posse: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_Tipo_Receita(Cod_Tipo_Receita: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_Tipo_Informacao(Cod_Tipo_Informacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_CEP_UF(cCep:ShortString ; cEstado:ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_CEP(cCep:ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_UF(UF: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_CPF(const CPF: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_CNPJ(const CGC: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_InscEst(Inscricao, UF: string): Boolean; stdcall; external 'SIntegra32Dll.DLL';
Function Verifica_Antecipacao(Antecipacao: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';


//Paulo 21/12/2010: Verifica se o NCM é valido
Function Verifica_NCM(COD_NCM: ShortString): Boolean; stdcall; external 'SIntegra32Dll.DLL';
}
{$R *.DFM}

//Função Utilizada para selecionar os periodos fiscais
Function TFGeraSintegra.FiltraPeriodos: Boolean;
Begin
   DMMACS.TPeriodoFiscal.Close;
   DMMACS.TPeriodoFiscal.SQL.Clear;
   DMMACS.TPeriodoFiscal.SQL.Add(' Select * from PeriodoFiscal order by  PeriodoFiscal.DtInicial DESC, PeriodoFiscal.Fechado ');
   DMMACS.TPeriodoFiscal.Open;
End;


//Função que adiciona o texto de Log do RichEdit
procedure TFGeraSintegra.Add_Log(Log: string; Cor: TColor; Tamanho: byte);
begin
	RichEdit1a.SelAttributes.Color := Cor;
	RichEdit1a.SelAttributes.Size := Tamanho;
	RichEdit1a.Lines.Add(Log);
	application.ProcessMessages;
end;

procedure TFGeraSintegra.AddLog(memoP:Boolean; Log: string);
begin
     if memoP then
	     RichEdit1.Lines.Text := RichEdit1.Lines.Text + Log
//     else
//         RichEdit2.Lines.Text := RichEdit2.Lines.Text + Log;

end;

procedure TFGeraSintegra.AddLogln(memoP:Boolean; Log: string);
begin
     if memoP then
	     RichEdit1.Lines.Add(Log)
//     else
//     	 RichEdit2.Lines.Add(Log);

end;

//Trata String de Retorno da Sintegra32dll.dll
//Se primeiro caracter da String de retorno é "-" indica que é uma string de erro, deve-se fazer o log.
//Caso contrário adiciona a string no arquivo do sintegra
function TFGeraSintegra.Trata_SIntegra_Str(conteudo,caminho: string): boolean;
var
 sFile: TextFile;
begin
 Result := True;

 // - 11/05/2009: verifica se os diretorios dos logs existem
 if not DirectoryExists(diretorio) then begin
           ForceDirectories(diretorio);
 end;
 if not DirectoryExists(diretorio+'\LOG\') then begin
           ForceDirectories(diretorio+'\LOG\');
 end;


 try
   AssignFile(sFile, caminho);

   if not fileexists(caminho) then
    begin
     rewrite(sFile);
    end;

   Reset(sFile);
   Append(sFile);
   try
     WriteLn(sFile, conteudo);
   finally
     CloseFile(sFile);
    end;
 Except
   Result := False
  end;
end;

//Registro90 - Registro de Totalização do Arquivo
function TFGeraSintegra.sRegistro90: boolean;
begin
 //Faz a chamada da dll
 //resultadoSintegra :=   Registro90;
 Result := VerificaSIntegra(Registro90(0));

 //Executa o tratamento da string temporária testando se houve erro
 Trata_SIntegra_Str(resultadoSintegra, diretorio + 'Sintegra_' + nomeArquivo + '.txt');
end;

//Registro11 - Dados complementares do informante
function TFGeraSintegra.sRegistro11(var Err_Msg: string): boolean;
var
 TempStr: string;
begin
   AddLogln(true, ' ** 11 **');
   AddLogln(true, '   Inserir Registro11 - Dados complementares do informante');


 //Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
 TempStr := Registro11(ValidaAcentos(DMMACS.TEmpresa.FieldByName('ENDERECO').AsString),    //Logradouro
   ValidaAcentos(DMMACS.TEmpresa.FieldByName('NUMERO').AsString),                               //Número
   '',                       //Complemento
   ValidaAcentos(DMMACS.TEmpresa.FieldByName('BAIRRO').AsString),                            //Bairro
  ValidaAcentos( DMMACS.TEmpresa.FieldByName('CEP').AsString),                               //Cep
   ValidaAcentos(DMMACS.TEmpresa.FieldByName('CONTATO').AsString),                      //Nome do Contato
   ValidaAcentos(DMMACS.TEmpresa.FieldByName('FONE').AsString)                           //Telefone
   );

   AddLogln(false, '');
   AddLogln(false, TempStr);

 //Executa o tratamento da string temporária testando se houve erro
 Result := VerificaSIntegra(''+TempStr);

end;


//Registro50
//Deve ser gerado um Registro tipo 50 para cada conjunto de cfop e Aliquota de icms na nota
// CFOP01 com aliquota 01
// CFOP01 com aliquota 02
// CFOP02 com aliquota 01
// Campos 11, 12, 13, 14, 15 Deverão ser preenchidos com a soma dos produtos
// Para cada registro 54 deverá existir um registro tipo 50 ((UF, CGC, Data, Série, Número, Modelo e CFOP))
function TFGeraSintegra.sRegistro50(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr, num_nf: string;
 i: integer;
 xcpfcnpj, incs_estadual, pedidos:String;
 CodCliente :Integer;
 primeiro:Boolean;
 XTipoSitua: String;
 XVlrTotDocR50, XBaseICMSR50, XVlrIcmsR50, XR50Outras, XVlrFrete: Real;
 XNumAliquotas: Integer; // determina o numro de aliquotas por registro
 Wcont: Integer;
 //XIncrementa: real;///apagar o uso desta variavel
begin
   AddLogln(true, '');
   AddLogln(true, ' ** 50 **');
   AddLogln(true, '   Inserir Registro50 - Registro de Total de Nota Fiscal para SAIDAS e ENTRADAS');

	Result := True;
   //XIncrementa:=1.47;
   Wcont:=0;
   //FILTRA LOJA
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

   /////////////////////////////////
   //GERA REGISTRO 50 PARA SAIDAS //
   /////////////////////////////////

	//Executa a seleção dos registros no banco de dados
	DMFiscal.TAlx.Close;
	DMFiscal.TAlx.UnPrepare;
	DMFiscal.TAlx.SQL.Clear;
	DMFiscal.TAlx.SQL.Add('  select vwpedv.cod_pedvenda, pedvenda.fisco, docfissaida.numdocfis, docfissaida.NUMDOCFISINT, vwcliente.cpfcnpj, vwcliente.nome, pessoaj.insc_est, ');
	DMFiscal.TAlx.SQL.Add('   vwcidade.uf, vwpedv.situacao, vwpedv.numped, docfissaida.modelonf, docfissaida.serie, docfissaida.dtemissao, ');
	DMFiscal.TAlx.SQL.Add('   docfissaida.baseicms, docfissaida.vlricms, docfissaida.vlrtotdocnf, docfissaida.vlrfrete, docfissaida.vlroutrasdesp, docfissaida.VLRISENTOICMS ');
	DMFiscal.TAlx.SQL.Add('   from vwpedv ');
	DMFiscal.TAlx.SQL.Add('   Left join pedvenda on vwpedv.cod_pedvenda = pedvenda.cod_pedvenda ');
	DMFiscal.TAlx.SQL.Add('   left Join docfissaida on vwpedv.cod_pedvenda = docfissaida.cod_pedido ');
	DMFiscal.TAlx.SQL.Add('   left join vwcliente  on vwpedv.cod_cliente = vwcliente.cod_cliente ');
	DMFiscal.TAlx.SQL.Add('   left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade ');
	DMFiscal.TAlx.SQL.Add('   left join pessoaj on vwcliente.cod_pessoa = pessoaj.cod_pessoa ');
	DMFiscal.TAlx.SQL.Add(' WHERE ');
	DMFiscal.TAlx.SQL.Add(' (COD_PERIODOFISCAL=:PERIODOFISCAL) and (pedvenda.FISCO=''NF'') AND ((vwpedv.situacao = ''FECHADO'') OR (vwpedv.situacao = ''CANCELADO'')) AND (');
   DMFiscal.TAlx.SQL.Add(' (SERIE = ''01'') OR (SERIE = ''1'')  OR ');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''1A'') OR');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''03'') OR');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''06'') OR');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''22''))');
	DMFiscal.TAlx.SQL.Add(' ORDER BY DTEMISSAO, NUMDOCFISINT');
   DMFiscal.TAlx.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
	DMFiscal.TAlx.Prepare;
   DMFiscal.TAlx.SQL.Text;
	DMFiscal.TAlx.Open;

   AddLogln(true, '   [50 - SAIDAS]');

	if  DMFiscal.TAlx.RecordCount > 0
   Then begin
       DMFiscal.TAlx.First;
       while not  DMFiscal.TAlx.EOF do
       begin
       	//REPASSA VALOR DE OUTRAS DESPESAS + FRETE PARA A VARIAVEL
           XR50Outras:=DMFiscal.TAlx.FieldByName('vlrfrete').AsCurrency+DMFiscal.TAlx.FieldByName('vlroutrasdesp').AsCurrency;
           //VALIDA CAMPOS NECESSÁRIOS
           If DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString='' Then
               AddLogln(true, '      50 - No pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - Verifique o cliente e seu CPF/CNPJ!');
           If DMFiscal.TAlx.FieldByName('UF').AsString='' then
               AddLogln(true, '      50 - No Pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - O Cliente se encontra sem UF/CIDADE!');

           //Atribui a várivel se a nota é foi cancelada ou não
           IF DMFiscal.TAlx.FieldByName('SITUACAO').AsString='CANCELADO' Then
               XTipoSitua:='S'
           Else
               XTipoSitua:='N';

           //Valida situação de cadastro no estado do cliente
           If DMFiscal.TAlx.FieldByName('INSC_EST').AsString = '' Then
           	incs_estadual := 'ISENTO'
           Else
               incs_estadual := DMFiscal.TAlx.FieldByName('INSC_EST').AsString;


           //Agrupa por grupos de CFOP E aliquotas de icms
           DMFiscal.TAlx2.Close;
           DMFiscal.TAlx2.SQL.Clear;
           DMFiscal.TAlx2.SQL.Add('  SELECT itenspedven.cfop, itenspedven.aliqicms, sum(itenspedven.descnf), sum(itenspedven.valortotal) Subtotal, sum(itenspedven.baseicms) base_icms, sum(itenspedven.vlricms) valor_icms FROM itenspedven ');
           DMFiscal.TAlx2.SQL.Add(' Where itenspedven.cod_pedven = :CodPedido ');
           DMFiscal.TAlx2.ParamByName('CodPedido').AsInteger:=DMFiscal.TAlx.FieldByName('cod_pedvenda').AsInteger;
           DMFiscal.TAlx2.SQL.Add('  GROUP BY itenspedven.cfop, itenspedven.aliqicms ');
           DMFiscal.TAlx2.Open;
           DMFiscal.TAlx2.Last;
           XNumAliquotas:=DMFiscal.TAlx2.RecordCount;
           DMFiscal.TAlx2.First;
       	While Not DMFiscal.TAlx2.Eof Do
           Begin
               //VERIFICA A EXISTENCIA DE DESCONTOS e IPI E SOMA DE ACORDO COM O AGRUPAMENTO DE ALX2
               DMESTOQUE.Alx5.CLOSE;
               DMESTOQUE.Alx5.SQL.Clear;
               DMESTOQUE.Alx5.SQL.Add('  SELECT Sum(itenspedven.descnf) as DESCNF, Sum(itenspedven.vlripi) as IPI  From itenspedven ');
               DMESTOQUE.Alx5.SQL.Add('  Where (itenspedven.cod_pedven=:CODPEDIDO) And (itenspedven.aliqicms=:Aliquota) And (itenspedven.cfop=:cfop) ');
               DMESTOQUE.Alx5.ParamByName('CODPEDIDO').AsInteger:=DMFiscal.TAlx.FieldByName('cod_pedvenda').AsInteger;
               DMESTOQUE.Alx5.ParamByName('Aliquota').AsString:=DMFiscal.TAlx2.FieldByName('aliqicms').AsString;
               DMESTOQUE.Alx5.ParamByName('cfop').AsString:=DMFiscal.TAlx2.FieldByName('cfop').AsString;
               DMESTOQUE.Alx5.Open;

           	If (DMFiscal.TAlx2.FieldByName('CFOP').AsString='0') or (DMFiscal.TAlx2.FieldByName('CFOP').AsString='0'){ or (DMFiscal.TAlx2.FieldByName('ALIQICMS').AsCurrency<=0)} Then
           		AddLogln(true, '      50 - No Pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - Existem itens sem Cfop ou aliquota de Icms especificado!');

				//Tratamento do Numero Fiscal
               num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
               num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));
               If num_nf = '1587' Then
               	num_nf:=num_nf;
              	//Atribui valor as variáveis de acordo
               XVlrTotDocR50:=DMFiscal.TAlx2.FieldByName('subtotal').AsCurrency-DMESTOQUE.Alx5.FieldByName('DESCNF').AsCurrency+DMESTOQUE.Alx5.FieldByName('IPI').AsCurrency+XR50Outras;
               XR50Outras:=0;
               XBaseICMSR50:=DMFiscal.TAlx2.FieldByName('base_icms').AsCurrency;
               XVlrIcmsR50:=DMFiscal.TAlx2.FieldByName('valor_icms').AsCurrency;

               //VERIFICA A EXISTENCIA DE VALOR DE SUBSTITUIÇÃO QUE SOME AO TOTAL DO PRODUTO
               DMESTOQUE.Alx5.CLOSE;
               DMESTOQUE.Alx5.SQL.Clear;
               DMESTOQUE.Alx5.SQL.Add('  SELECT Sum(itenspedven.vlricmssubs) as ValorSubstituicao From itenspedven ');
               DMESTOQUE.Alx5.SQL.Add('  Where (itenspedven.cod_pedven=:CODPEDIDO) And (itenspedven.aliqicms=:Aliquota) And (itenspedven.cfop=:cfop) and (itenspedven.aplicarst=''1'') ');
               DMESTOQUE.Alx5.ParamByName('CODPEDIDO').AsInteger:=DMFiscal.TAlx.FieldByName('cod_pedvenda').AsInteger;
               DMESTOQUE.Alx5.ParamByName('Aliquota').AsInteger:=DMFiscal.TAlx2.FieldByName('aliqicms').AsInteger;
               DMESTOQUE.Alx5.ParamByName('cfop').AsString:=DMFiscal.TAlx2.FieldByName('cfop').AsString;
               DMESTOQUE.Alx5.Open;
				If not DMESTOQUE.Alx5.IsEmpty Then
					XVlrTotDocR50:=XVlrTotDocR50+DMESTOQUE.Alx5.FieldByName('ValorSubstituicao').AsCurrency;
               //caso a base de icms não represente o toal da operação a diferença das duas deve ser adicionado ao campo outras
               If XBaseICMSR50<XVlrTotDocR50 Then
                   XR50Outras:=XR50Outras+(XVlrTotDocR50-XBaseICMSR50);

       		//Registro50 - Efetua o regitro 50 atravéz da dll
       		TempStr := Registro50(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, //CNPJ DO REMETENTE OU DESTINATARIO
         		incs_estadual, // INSCRICAO ESTADUAL DO RMETENTE OU DESTINATARIO
         		DMFiscal.TAlx.FieldByName('DTEMISSAO').AsString, //DT DE EMISSAO OU RECEBIMENTO
           	DMFiscal.TAlx.FieldByName('UF').AsString, //UF DO REMETENTE OU DESTINATARIO
           	DMFiscal.TAlx.FieldByName('MODELONF').AsString, //Modelo da Nota Fiscal
           	DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie NF
         		num_nf, //Numero NF
           	DMFiscal.TAlx2.FieldByName('CFOP').AsString, //CODIGO CFOP
				'P', //Emitente da NF P-Proprio, T-Terceiro
               FormatCurr('0.00', XVlrTotDocR50), //Valor Total da NF (nos itens)
               FormatCurr('0.00', XBaseICMSR50), //Valor de Base ICMS
               FormatCurr('0.00', XVlrIcmsR50), //Valor de  ICMS
               FormatCurr('0.00', DMFiscal.TAlx.FieldByName('VLRISENTOICMS').AsCurrency) , //Valor de  ICMS com esenção
               FormatCurr('0.00', XR50Outras), //DMFiscal.TAlx.FieldByName('VLROUTRASDESP').AsCurrency} ,} //Valor de outros que naum conferem debito ou credito de ICMS
               FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('aliqicms').AsCurrency) , //ALIQUOTA DE ICMS
           	XTipoSitua // SITUAÇÃO DA NOTA FISCAL QTO AO CANCELAMENTO
         		);
               XR50Outras:=0;//como o valor de outras despesas e frete será repassado tudo para o primeiro produto, esta variavel é zerada

               AddLogln(false, '');
               AddLogln(false, '      '+TempStr);

       		//Executa o tratamento da string temporária testando se houve erro
       		//Caso haja erro, executa o log das informações inconsistentes no RichEdit
       		if not VerificaSIntegra(TempStr)
           	then begin
         			qnt_erro := qnt_erro + 1;
         			Result := False;
               	Err_Msg := Err_Msg + #13 +
           		'    Cod_Sintegra_R50: ' +
           		DMFiscal.TAlx.FieldByName('cod_pedvenda').AsString ;
                   AddLogln(true, '      50 - [XX] - Pedido Numero: ' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' Cliente: '+DMFiscal.TAlx.FieldByName('NOME').AsString+ ' - FALHA - ' + TempStr);
        		end
       		else Begin
        			qnt_ok := qnt_ok + 1;
//                   AddLogln(true, '      50 - [OK] - Pedido Numero:' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - CFOP: '+DMFiscal.TAlx2.FieldByName('CFOP').AsString+' ICMS: '+DMFiscal.TAlx2.FieldByName('aliqicms').AsString);
           	End;
       		if Not DMFiscal.TAlx2.EOF then
         			DMFiscal.TAlx2.Next;

       		if quit_sintegra then
         			exit;
           End;
  			if Not DMFiscal.TAlx.EOF then
				DMFiscal.TAlx.Next;
       End;
   End
   Else Begin
       AddLogln(true, '      Nenhuma Saída Encontrada');
   End;

   /////////////////////////////////
   //GERA REGISTRO 50 PARA ORDENS //
   /////////////////////////////////
	DMFiscal.TAlx.Close;
	DMFiscal.TAlx.UnPrepare;
	DMFiscal.TAlx.SQL.Clear;
	DMFiscal.TAlx.SQL.Add('    select vwordem.cod_ordem, docfisord.numdocfis, docfisord.NUMDOCFISINT, vwcliente.cpfcnpj, vwcliente.nome, pessoaj.insc_est, ');
	DMFiscal.TAlx.SQL.Add('       vwcidade.uf, vwordem.status AS SITUACAO, vwordem.numero, docfisord.modelonf, docfisord.serie, docfisord.dtemissao, ');
	DMFiscal.TAlx.SQL.Add('       docfisord.baseicms, docfisord.vlricms, docfisord.vlrtotdocnf, docfisord.vlroutrasdesp, docfisord.vlrfrete, docfisord.VLRISENTOICMS ');
	DMFiscal.TAlx.SQL.Add('       from vwordem ');
	DMFiscal.TAlx.SQL.Add('       left Join docfisord on vwordem.cod_ordem = docfisord.cod_ordem ');
	DMFiscal.TAlx.SQL.Add('       left join vwcliente  on vwordem.cod_cliente = vwcliente.cod_cliente ');
	DMFiscal.TAlx.SQL.Add('       left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade ');
	DMFiscal.TAlx.SQL.Add('       left join pessoaj on vwcliente.cod_pessoa = pessoaj.cod_pessoa ');
	DMFiscal.TAlx.SQL.Add(' WHERE ');
	DMFiscal.TAlx.SQL.Add(' (COD_PERIODOFISCAL=:PERIODOFISCAL) AND ((vwordem.status = ''FECHADO'') OR (vwordem.status = ''CANCELADO'')) AND ( ');
   DMFiscal.TAlx.SQL.Add(' (SERIE = ''01'') OR (SERIE = ''1'')  OR ');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''1A'') OR');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''03'') OR');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''06'') OR');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''22''))');
	DMFiscal.TAlx.SQL.Add(' ORDER BY DTEMISSAO, NUMDOCFISINT');
   DMFiscal.TAlx.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
	DMFiscal.TAlx.Prepare;
   DMFiscal.TAlx.SQL.Text;
	DMFiscal.TAlx.Open;

   AddLogln(true, '   [50 - SAIDAS Ordem de Serviço]');

	if  DMFiscal.TAlx.RecordCount > 0
   Then begin
       DMFiscal.TAlx.First;
       while not  DMFiscal.TAlx.EOF do
       begin
       	//REPASSA VALOR DE OUTRAS DESPESAS + FRETE PARA A VARIAVEL
           XR50Outras:=DMFiscal.TAlx.FieldByName('vlrfrete').AsCurrency+DMFiscal.TAlx.FieldByName('vlroutrasdesp').AsCurrency;

           //VALIDA CAMPOS NECESSÁRIOS
           If DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString='' Then
               AddLogln(true, '      50 - Na O.S.: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Verifique o cliente e seu CPF/CNPJ!');
           If DMFiscal.TAlx.FieldByName('UF').AsString='' then
               AddLogln(true, '      50 - Na O.S.: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - O Cliente se encontra sem UF/CIDADE!');

           //Atribui a várivel se a nota é foi cancelada ou não
           IF DMFiscal.TAlx.FieldByName('SITUACAO').AsString='CANCELADO' Then
               XTipoSitua:='S'
           Else
               XTipoSitua:='N';

           //Valida situação de cadastro no estado do cliente
           If DMFiscal.TAlx.FieldByName('INSC_EST').AsString = '' Then
           	incs_estadual := 'ISENTO'
           Else
               incs_estadual := DMFiscal.TAlx.FieldByName('INSC_EST').AsString;

           ////////////////////////////
           // REGISTRO 50 PARA PRODUTOS
           ////////////////////////////

           //Agrupa por grupos de CFOP E aliquotas de icms
           DMFiscal.TAlx2.Close;
           DMFiscal.TAlx2.SQL.Clear;
           DMFiscal.TAlx2.SQL.Add('  SELECT itprodord.cfop, itprodord.aliqicms, sum(itprodord.descnf), sum(itprodord.total) Subtotal, sum(itprodord.baseicms) base_icms, sum(itprodord.vlricms) valor_icms FROM itprodord ');
           DMFiscal.TAlx2.SQL.Add('   Where itprodord.cod_ordem = :CodPedido ');
           DMFiscal.TAlx2.ParamByName('CodPedido').AsInteger:=DMFiscal.TAlx.FieldByName('cod_ordem').AsInteger;
           DMFiscal.TAlx2.SQL.Add('   GROUP BY itprodord.cfop, itprodord.aliqicms ');
           DMFiscal.TAlx2.Open;
           DMFiscal.TAlx2.Last;
           XNumAliquotas:=DMFiscal.TAlx2.RecordCount;
           DMFiscal.TAlx2.First;
       	While Not DMFiscal.TAlx2.Eof Do
           Begin
               //VERIFICA A EXISTENCIA DE DESCONTOS E SOMA DE ACORDO COM O AGRUPAMENTO DE ALX2
               DMESTOQUE.Alx5.CLOSE;
               DMESTOQUE.Alx5.SQL.Clear;
               DMESTOQUE.Alx5.SQL.Add('    SELECT Sum(itprodord.descnf) as DESCNF From itprodord ');
               DMESTOQUE.Alx5.SQL.Add('      Where (itprodord.cod_ordem=:CODPEDIDO) And (itprodord.aliqicms=:Aliquota) And (itprodord.cfop=:cfop) ');
               DMESTOQUE.Alx5.ParamByName('CODPEDIDO').AsInteger:=DMFiscal.TAlx.FieldByName('cod_ordem').AsInteger;
               DMESTOQUE.Alx5.ParamByName('Aliquota').AsInteger:=DMFiscal.TAlx2.FieldByName('aliqicms').AsInteger;
               DMESTOQUE.Alx5.ParamByName('cfop').AsString:=DMFiscal.TAlx2.FieldByName('cfop').AsString;
               DMESTOQUE.Alx5.Open;

           	If (DMFiscal.TAlx2.FieldByName('CFOP').AsString='0') or (DMFiscal.TAlx2.FieldByName('CFOP').AsString='0'){ or (DMFiscal.TAlx2.FieldByName('ALIQICMS').AsString Currency<=0)} Then
           		AddLogln(true, '      50 - Na O.S.: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Existem itens sem Cfop ou aliquota de Icms especificado!');

				//Tratamento do Numero Fiscal
               num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
               If num_nf='15' Then
	               num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
               num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));

               //caso a base de icms não represente o toal da operação a diferença das duas deve ser adicionado ao campo outras
               If ((DMFiscal.TAlx2.FieldByName('Subtotal').AsCurrency-DMESTOQUE.Alx5.FieldByName('descnf').AsCurrency))>DMFiscal.TAlx2.FieldByName('base_icms').AsCurrency Then
                   XR50Outras:=XR50Outras+(((DMFiscal.TAlx2.FieldByName('Subtotal').AsCurrency-DMESTOQUE.Alx5.FieldByName('DESCNF').AsCurrency))-DMFiscal.TAlx2.FieldByName('base_icms').AsCurrency);

              	//Atribui valor as variáveis de acordo
               XVlrTotDocR50:=DMFiscal.TAlx2.FieldByName('subtotal').AsCurrency-DMESTOQUE.Alx5.FieldByName('DESCNF').AsCurrency;
               XBaseICMSR50:=DMFiscal.TAlx2.FieldByName('base_icms').AsCurrency;
               XVlrIcmsR50:=DMFiscal.TAlx2.FieldByName('valor_icms').AsCurrency;
       		//Registro50 - Efetua o regitro 50 atravéz da dll
       		TempStr := Registro50(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, //CNPJ DO REMETENTE OU DESTINATARIO
         		incs_estadual, // INSCRICAO ESTADUAL DO RMETENTE OU DESTINATARIO
         		DMFiscal.TAlx.FieldByName('DTEMISSAO').AsString, //DT DE EMISSAO OU RECEBIMENTO
           	DMFiscal.TAlx.FieldByName('UF').AsString, //UF DO REMETENTE OU DESTINATARIO
           	DMFiscal.TAlx.FieldByName('MODELONF').AsString, //Modelo da Nota Fiscal
           	DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie NF
         		num_nf, //Numero NF
           	DMFiscal.TAlx2.FieldByName('CFOP').AsString, //CODIGO CFOP
				'P', //Emitente da NF P-Proprio, T-Terceiro
               FormatCurr('0.00', XVlrTotDocR50), //Valor Total da NF (nos itens)
               FormatCurr('0.00', XBaseICMSR50), //Valor de Base ICMS
               FormatCurr('0.00', XVlrIcmsR50), //Valor de  ICMS
               FormatCurr('0.00', DMFiscal.TAlx.FieldByName('VLRISENTOICMS').AsCurrency) , //Valor de  ICMS com esenção
               FormatCurr('0.00', XR50Outras), //DMFiscal.TAlx.FieldByName('VLROUTRASDESP').AsCurrency} ,} //Valor de outros que naum conferem debito ou credito de ICMS
               FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('aliqicms').AsCurrency) , //ALIQUOTA DE ICMS
           	XTipoSitua // SITUAÇÃO DA NOTA FISCAL QTO AO CANCELAMENTO
         		);
               XR50Outras:=0;//como o valor de outras despesas e frete será repassado tudo para o primeiro produto, esta variavel é zerada
               AddLogln(false, '');
               AddLogln(false, '      '+TempStr);

       		//Executa o tratamento da string temporária testando se houve erro
       		//Caso haja erro, executa o log das informações inconsistentes no RichEdit
       		if not VerificaSIntegra(TempStr)
           	then begin
         			qnt_erro := qnt_erro + 1;
         			Result := False;
               	Err_Msg := Err_Msg + #13 +
           		'    Cod_Sintegra_R50: ' +
           		DMFiscal.TAlx.FieldByName('NUMERO').AsString  ;
                   AddLogln(true, '      50 - [XX] - Na O.S.:' + DMFiscal.TAlx.FieldByName('NUMERO').AsString + ' Cliente: '+ DMFiscal.TAlx.FieldByName('NOME').AsString + ' - FALHA - ' + TempStr);
        		end
       		else Begin
        			qnt_ok := qnt_ok + 1;
//                   AddLogln(true, '      50 - [OK] - Na O.S.:' + DMFiscal.TAlx.FieldByName('NUMERO').AsString + ' - CFOP: '+DMFiscal.TAlx2.FieldByName('CFOP').AsString+' ICMS: '+DMFiscal.TAlx2.FieldByName('aliqicms').AsString);
           	End;
       		if Not DMFiscal.TAlx2.EOF then
         			DMFiscal.TAlx2.Next;

       		if quit_sintegra then
         			exit;
           End;

           If CbServicos.Checked=True
           Then Begin
               ////////////////////////////
               // REGISTRO 50 PARA SERVIÇOS
               ////////////////////////////

               //Agrupa por grupos de CFOP E aliquotas de icms
               DMFiscal.TAlx2.Close;
               DMFiscal.TAlx2.SQL.Clear;
               DMFiscal.TAlx2.SQL.Add('    SELECT despadic.cfop, sum(despadic.vlrtotfin) Subtotal FROM  despadic ');
               DMFiscal.TAlx2.SQL.Add('    Where (despadic.cod_gerador = :CodPedido) and (despadic.gerador=''ORDEM'')');
               DMFiscal.TAlx2.ParamByName('CodPedido').AsInteger:=DMFiscal.TAlx.FieldByName('cod_ordem').AsInteger;
               DMFiscal.TAlx2.SQL.Add(' GROUP BY despadic.cfop ');
               DMFiscal.TAlx2.Open;
               DMFiscal.TAlx2.Last;
               XNumAliquotas:=DMFiscal.TAlx2.RecordCount;
               DMFiscal.TAlx2.First;
               While Not DMFiscal.TAlx2.Eof Do
               Begin
                   If (DMFiscal.TAlx2.FieldByName('CFOP').AsString='0') or (DMFiscal.TAlx2.FieldByName('CFOP').AsString='0'){ or (DMFiscal.TAlx2.FieldByName('ALIQICMS').AsString Currency<=0)} Then
                       AddLogln(true, '      50 - Na O.S.: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Existem itens de serviço sem Cfop especificado!');

                   //Tratamento do Numero Fiscal
                   num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
                   num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));

                   //Atribui valor as variáveis de acordo
                   XVlrTotDocR50:=DMFiscal.TAlx2.FieldByName('subtotal').AsCurrency;
                   XBaseICMSR50:=0;
                   XVlrIcmsR50:=0;

                   //Registro50 - Efetua o regitro 50 atravéz da dll
                   TempStr := Registro50(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, //CNPJ DO REMETENTE OU DESTINATARIO
                   incs_estadual, // INSCRICAO ESTADUAL DO RMETENTE OU DESTINATARIO
                   DMFiscal.TAlx.FieldByName('DTEMISSAO').AsString, //DT DE EMISSAO OU RECEBIMENTO
                   DMFiscal.TAlx.FieldByName('UF').AsString, //UF DO REMETENTE OU DESTINATARIO
                   DMFiscal.TAlx.FieldByName('MODELONF').AsString, //Modelo da Nota Fiscal
                   DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie NF
                   num_nf, //Numero NF
                   DMFiscal.TAlx2.FieldByName('CFOP').AsString, //CODIGO CFOP
                   'P', //Emitente da NF P-Proprio, T-Terceiro
                   FormatCurr('0.00', XVlrTotDocR50), //Valor Total da NF (nos itens)
                   FormatCurr('0.00', XBaseICMSR50), //Valor de Base ICMS
                   FormatCurr('0.00', XVlrIcmsR50), //Valor de  ICMS
                   FormatCurr('0.00', DMFiscal.TAlx.FieldByName('VLRISENTOICMS').AsCurrency) , //Valor de  ICMS com esenção
                   FormatCurr('0.00', XVlrTotDocR50), //DMFiscal.TAlx.FieldByName('VLROUTRASDESP').AsCurrency} ,} //Valor de outros que naum conferem debito ou credito de ICMS
                   FormatCurr('0.00', 0) , //ALIQUOTA DE ICMS
                   XTipoSitua // SITUAÇÃO DA NOTA FISCAL QTO AO CANCELAMENTO
                   );

                   AddLogln(false, '');
                   AddLogln(false, '      '+TempStr);

                   //Executa o tratamento da string temporária testando se houve erro
                   //Caso haja erro, executa o log das informações inconsistentes no RichEdit
                   if not VerificaSIntegra(TempStr)
                   then begin
                       qnt_erro := qnt_erro + 1;
                       Result := False;
                       Err_Msg := Err_Msg + #13 +
                       '    Cod_Sintegra_R50: ' +
                       DMFiscal.TAlx.FieldByName('NUMERO').AsString  ;
                       AddLogln(true, '      50 - [XX] - Na O.S.:' + DMFiscal.TAlx.FieldByName('NUMERO').AsString + ' Cliente: '+ DMFiscal.TAlx.FieldByName('NOME').AsString + ' - FALHA - ' + TempStr);
                   end
                   else Begin
                       qnt_ok := qnt_ok + 1;
    //                   AddLogln(true, '      50 - [OK] - Na O.S.:' + DMFiscal.TAlx.FieldByName('NUMERO').AsString + ' - CFOP: '+DMFiscal.TAlx2.FieldByName('CFOP').AsString+' ICMS: '+DMFiscal.TAlx2.FieldByName('aliqicms').AsString);
                   End;
                   if Not DMFiscal.TAlx2.EOF then
                       DMFiscal.TAlx2.Next;
                   if quit_sintegra then
                       exit;
               End;
           End;
  			if Not DMFiscal.TAlx.EOF then
				DMFiscal.TAlx.Next;
       End;
   End
   Else Begin
       AddLogln(true, '      Nenhuma Saída Encontrada EM O.S.');
   End;

   ///////////////////////////////////
   //GERA REGISTRO 50 PARA ENTRADAS //
   ///////////////////////////////////
   DMFiscal.TAlx.Close;
   DMFiscal.TAlx.UnPrepare;
   DMFiscal.TAlx.SQL.Clear;
   DMFiscal.TAlx.SQL.Add('    select vwpedc.cod_pedcomp, vwpedc.numfiscal as numdocfis, vwfornec.cpfcnpj, pessoaj.insc_est, ');
   DMFiscal.TAlx.SQL.Add('    vwcidade.uf, vwpedc.situacao, vwpedc.numped, docfis.modelonf, docfis.COD_CFOP, ');
   DMFiscal.TAlx.SQL.Add('          docfis.serie, docfis.dtentsaid as dtemissao, docfis.vlroutrasdesp, docfis.vlrfrete, docfis.vlrisentoicms, ');
   DMFiscal.TAlx.SQL.Add('    docfis.baseicms, docfis.vlricms, docfis.vlrtotdocnf ');
   DMFiscal.TAlx.SQL.Add('        from vwpedc ');
   DMFiscal.TAlx.SQL.Add('            left Join docfis on vwpedc.cod_pedcomp = docfis.cod_pedido ');
   DMFiscal.TAlx.SQL.Add('            left join vwfornec on vwpedc.cod_fornec = vwfornec.cod_fornec ');
   DMFiscal.TAlx.SQL.Add('            left join vwcidade on vwfornec.cod_cidade = vwcidade.cod_cidade ');
   DMFiscal.TAlx.SQL.Add('            left join pessoaj on vwfornec.cod_pessoa = pessoaj.cod_pessoa ');
   DMFiscal.TAlx.SQL.Add('  WHERE ');
   DMFiscal.TAlx.SQL.Add(' (COD_PERIODOFISCAL=:PERIODOFISCAL) AND ((vwpedc.situacao = ''FECHADO'') OR (vwpedc.situacao = ''CANCELADO'')) AND (SERIE is not null) ');
   DMFiscal.TAlx.SQL.Add(' ORDER BY DTEMISSAO, numdocfis');
   DMFiscal.TAlx.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
   DMFiscal.TAlx.Prepare;
   DMFiscal.TAlx.SQL.Text;
   DMFiscal.TAlx.Open;

   AddLogln(true, '   [50 - Entradas Pedido de compra]');

   if  DMFiscal.TAlx.RecordCount > 0
   Then begin
       DMFiscal.TAlx.First;
       while not  DMFiscal.TAlx.EOF do
       begin


           //VERIFICAÇÃO PARA CASO DE FRETE
           //CASO O PEDIDO POSSUI UM ITEM DE VENDAS QUE COMPUNHA FRETE O SISTEMA PULARA ESTE PEDIDO PQ O MESMO DEVERA CONSTAR NO REGISTRO 70 E NÃO NO REGISTRO 50
           //Agrupa por grupos de CFOP E aliquotas de icms
           DMFiscal.TAlx2.Close;
           DMFiscal.TAlx2.SQL.Clear;
           DMFiscal.TAlx2.SQL.Add(' select pedcompra.cod_pedcomp ');
           DMFiscal.TAlx2.SQL.Add(' from itenspedc ');
           DMFiscal.TAlx2.SQL.Add(' left join estoque ON itenspedc.cod_estoque = estoque.cod_estoque ');
           DMFiscal.TAlx2.SQL.Add(' left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto ');
           DMFiscal.TAlx2.SQL.Add(' left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
           DMFiscal.TAlx2.SQL.Add(' WHERE (pedcompra.cod_pedcomp=:CODPEDIDO) AND (subproduto.USOCONSUMO=''2'') ');
           DMFiscal.TAlx2.ParamByName('CODPEDIDO').AsInteger:=DMFiscal.TAlx.FieldByName('cod_pedcomp').AsInteger;
           DMFiscal.TAlx2.Open;
           DMFiscal.TAlx2.Last;
           DMFiscal.TAlx2.First;
           If DMFiscal.TAlx2.IsEmpty
           Then Begin
               //SE PEDIDO NÃO FOR DE FRETE CONTINUA FLUXO
               //VALIDA CAMPOS NECESSÁRIOS
               If DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString='' Then
                   AddLogln(true, '      50 - No Pedido Compra: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - Verifique o fornecedor e seu CPF/CNPJ!');
               If DMFiscal.TAlx.FieldByName('UF').AsString='' Then
                   AddLogln(true, '      50 - No Pedido Compra: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - O Cliente se fornecedor sem UF/CIDADE!');

               //REPASSA VALOR DE OUTRAS DESPESAS PARA A VARIAVEL
               XR50Outras:=DMFiscal.TAlx.FieldByName('vlroutrasdesp').AsCurrency;
               XVlrFrete:=DMFiscal.TAlx.FieldByName('vlrfrete').AsCurrency;

               //Atribui a várivel se a nota é foi cancelada ou não
               IF DMFiscal.TAlx.FieldByName('SITUACAO').AsString='CANCELADO' Then
                   XTipoSitua:='S'
               Else
                   XTipoSitua:='N';
               If DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString='183852' Then
                   num_nf:=num_nf;

               //Valida situação de cadastro no estado do cliente
               If DMFiscal.TAlx.FieldByName('INSC_EST').AsString = '' Then
                   incs_estadual := 'ISENTO'
               Else
                   incs_estadual := DMFiscal.TAlx.FieldByName('INSC_EST').AsString;

               //Agrupa por grupos DE aliquotas de icms
               //SELECIONA PARA ALIQUOTAS
               DMFiscal.TAlx2.Close;
               DMFiscal.TAlx2.SQL.Clear;
               DMFiscal.TAlx2.SQL.Add(' SELECT itenspedc.cfop, itenspedc.Aliqicms as aliqicms, sum(itenspedc.descnf), sum(itenspedc.valortotal) Subtotal, ');
               DMFiscal.TAlx2.SQL.Add(' sum(itenspedc.baseicms) base_icms, sum(itenspedc.vlricms) valor_icms, sum(itenspedc.vlricmssubs) as valor_icms_Subst, sum(itenspedc.vlripi) as valor_ipi FROM itenspedc ');
               DMFiscal.TAlx2.SQL.Add(' Where itenspedc.cod_pedcompra = :CodPedido ');
               DMFiscal.TAlx2.ParamByName('CodPedido').AsInteger:=DMFiscal.TAlx.FieldByName('cod_pedcomp').AsInteger;
               DMFiscal.TAlx2.SQL.Add(' GROUP BY itenspedc.cfop, itenspedc.Aliqicms ');
               DMFiscal.TAlx2.Open;
               DMFiscal.TAlx2.Last;
               XNumAliquotas:=DMFiscal.TAlx2.RecordCount;
               DMFiscal.TAlx2.First;
               While Not DMFiscal.TAlx2.Eof Do
               Begin
                   //VERIFICA A EXISTENCIA DE DESCONTOS E SOMA DE ACORDO COM O AGRUPAMENTO DE ALX2
                   DMESTOQUE.Alx5.CLOSE;
                   DMESTOQUE.Alx5.SQL.Clear;
                   DMESTOQUE.Alx5.SQL.Add('        SELECT Sum(itenspedc.descnf) as DESCNF From itenspedc ');
                   DMESTOQUE.Alx5.SQL.Add('          Where (itenspedc.cod_pedcompra=:CODPEDIDO) And (itenspedc.aliqicms=:Aliquota) And (itenspedc.cfop=:cfop) ');
                   DMESTOQUE.Alx5.ParamByName('CODPEDIDO').AsInteger:=DMFiscal.TAlx.FieldByName('cod_pedcomp').AsInteger;
                   DMESTOQUE.Alx5.ParamByName('Aliquota').AsInteger:=DMFiscal.TAlx2.FieldByName('aliqicms').AsInteger;
                   DMESTOQUE.Alx5.ParamByName('cfop').AsString:=DMFiscal.TAlx2.FieldByName('cfop').AsString;
                   DMESTOQUE.Alx5.Open;

                   If (DMFiscal.TAlx2.FieldByName('CFOP').AsString='0') or (DMFiscal.TAlx2.FieldByName('CFOP').AsString='0'){ or (DMFiscal.TAlx2.FieldByName('ALIQICMS').AsCurrency<=0)} Then
                       AddLogln(true, '      50 - No Pedido de Compra: '+DMFiscal.TAlx.FieldByName('numped').AsString+' - Existem itens sem Cfop ou aliquota de Icms especificado!');

                   //Tratamento do Numero Fiscal
                   num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
                   If DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString='7520' Then
                   	num_nf:=num_nf;

                   num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));
                   //Atribui valor as variáveis de acordo
                   XVlrTotDocR50:=(DMFiscal.TAlx2.FieldByName('subtotal').AsCurrency+DMFiscal.TAlx2.FieldByName('valor_icms_Subst').AsCurrency+DMFiscal.TAlx2.FieldByName('valor_ipi').AsCurrency+XVlrFrete+XR50Outras)-DMESTOQUE.Alx5.FieldByName('descnf').AsCurrency;
                   XVlrFrete:=0;
                   XR50Outras:=0;
                   If XTipoEmpresa='SIMPLES'
                   Then Begin
                       XBaseICMSR50:=0;
                       XVlrIcmsR50:=0;
                   End
                   Else Begin
                       XBaseICMSR50:=DMFiscal.TAlx2.FieldByName('base_icms').AsCurrency;
                       XVlrIcmsR50:=DMFiscal.TAlx2.FieldByName('valor_icms').AsCurrency;
                   End;

                   //caso a base de icms não represente o toal da operação a diferença das duas deve ser adicionado ao campo outras
                   If XBaseICMSR50<XVlrTotDocR50 Then
                       XR50Outras:=XR50Outras+(XVlrTotDocR50-XBaseICMSR50);

                   //Registro50 - Efetua o regitro 50 atravéz da dll
                   TempStr := Registro50(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, //CNPJ DO REMETENTE OU DESTINATARIO
                   incs_estadual, // INSCRICAO ESTADUAL DO RMETENTE OU DESTINATARIO
                   DMFiscal.TAlx.FieldByName('DTEMISSAO').AsString, //DT DE EMISSAO OU RECEBIMENTO
                   DMFiscal.TAlx.FieldByName('UF').AsString, //UF DO REMETENTE OU DESTINATARIO
                   DMFiscal.TAlx.FieldByName('MODELONF').AsString, //Modelo da Nota Fiscal
                   DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie NF
                   num_nf, //Numero NF
                   DMFiscal.TAlx2.FieldByName('CFOP').AsString, //CODIGO CFOP
                   'P', //Emitente da NF P-Proprio, T-Terceiro
                   FormatCurr('0.00', XVlrTotDocR50{-XIncrementa}), //Valor Total da NF (nos itens)
                   FormatCurr('0.00', XBaseICMSR50), //Valor de Base ICMS
                   FormatCurr('0.00', XVlrIcmsR50), //Valor de  ICMS
                   FormatCurr('0.00', DMFiscal.TAlx.FieldByName('VLRISENTOICMS').AsCurrency) , //Valor de  ICMS com esenção
                   FormatCurr('0.00', XR50Outras), //DMFiscal.TAlx.FieldByName('VLROUTRASDESP').AsCurrency} ,} //Valor de outros que naum conferem debito ou credito de ICMS
                   FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('aliqicms').AsCurrency) , //ALIQUOTA DE ICMS
                   XTipoSitua // SITUAÇÃO DA NOTA FISCAL QTO AO CANCELAMENTO
                   );
                  // XIncrementa:=0;
                   XR50Outras:=0;//como o valor de outras despesas e frete será repassado tudo para o primeiro produto, esta variavel é zerada

                   AddLogln(false, '');
                   AddLogln(false, '      '+TempStr);

                   //Executa o tratamento da string temporária testando se houve erro
                   //Caso haja erro, executa o log das informações inconsistentes no RichEdit
                   if not VerificaSIntegra(TempStr)
                   then begin
                       qnt_erro := qnt_erro + 1;
                       Result := False;
                       Err_Msg := Err_Msg + #13 +
                       '    Cod_Sintegra_R50: ' +
                       DMFiscal.TAlx.FieldByName('cod_pedcomp').AsString ;
                       AddLogln(true, '      50 - [XX] - No Pedido de Compra:' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - FALHA - ' + TempStr);
                   end
                   else Begin
                       qnt_ok := qnt_ok + 1;
  //                       AddLogln(true, '      50 - [OK] - Na Pedido de Compra:' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - CFOP: '+DMESTOQUE.TCFOP.FieldByName('CFOP').AsString+' ICMS: '+DMFiscal.TAlx2.FieldByName('aliqicms').AsString);
                   End;
                   if Not DMFiscal.TAlx2.EOF then
                       DMFiscal.TAlx2.Next;

                   if quit_sintegra then
                       exit;
               End;
           End;
           if Not DMFiscal.TAlx.EOF then
               DMFiscal.TAlx.Next;
       End;
   End
   Else Begin
       AddLogln(true, '      Nenhuma Entrada Encontrada');
   End;
end;

//Registro51
// Este registro deverá ser composto somente por contribuintes do IPI, obedecendo a sistemática semelhante à da escrituração dos livros Registro de Entradas e Registro de Saídas;
function TFGeraSintegra.sRegistro51(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr, num_nf: string;
 xcpfcnpj, incs_estadual:String;
 XTipoSitua: String;
begin
   AddLogln(true, '');
   AddLogln(true, ' ** 51 **');
   AddLogln(true, '   Inserir Registro51 - Registros de Total de Nota Fiscal Quanto ao IPI');

	Result := True;

   /////////////////////////////////
   //GERA REGISTRO 51 PARA SAIDAS //
   /////////////////////////////////

	//Executa a seleção dos registros no banco de dados
	DMFiscal.TAlx.Close;
	DMFiscal.TAlx.UnPrepare;
	DMFiscal.TAlx.SQL.Clear;
	DMFiscal.TAlx.SQL.Add('     select vwpedv.cod_pedvenda, vwpedv.numped, vwpedv.nomecli as NOME, vwcliente.cpfcnpj, pessoaj.insc_est, docfissaida.dtemissao, vwcidade.uf, docfissaida.serie, docfissaida.vlrtotdocnf, vwpedv.situacao, docfissaida.numdocfis   from vwpedv ');
	DMFiscal.TAlx.SQL.Add('        left Join docfissaida on vwpedv.cod_pedvenda = docfissaida.cod_pedido ');
	DMFiscal.TAlx.SQL.Add('        left join vwcliente  on vwpedv.cod_cliente = vwcliente.cod_cliente ');
	DMFiscal.TAlx.SQL.Add('        left join vwcidade on vwcliente.cod_cidade = vwcidade.cod_cidade ');
	DMFiscal.TAlx.SQL.Add('        left join pessoaj on vwcliente.cod_pessoa = pessoaj.cod_pessoa ');
	DMFiscal.TAlx.SQL.Add(' WHERE ');
	DMFiscal.TAlx.SQL.Add(' (COD_PERIODOFISCAL=:PERIODOFISCAL) AND ((vwpedv.situacao = ''FECHADO'') OR (vwpedv.situacao = ''CANCELADO'')) AND (');
   DMFiscal.TAlx.SQL.Add(' (SERIE = ''01'') OR (SERIE = ''1'')  OR ');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''1A'') OR');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''03'') OR');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''06'') OR');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''22''))');
	DMFiscal.TAlx.SQL.Add(' ORDER BY DTEMISSAO');
   DMFiscal.TAlx.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
	DMFiscal.TAlx.Prepare;
   DMFiscal.TAlx.SQL.Text;
	DMFiscal.TAlx.Open;

   AddLogln(true, '   [51 - SAIDAS]');

	if  DMFiscal.TAlx.RecordCount > 0
   Then begin
       DMFiscal.TAlx.First;
       while not  DMFiscal.TAlx.EOF do
       begin
           //VALIDA CAMPOS NECESSÁRIOS
           If DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString='' Then
               AddLogln(true, '      51 - No pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - Verifique o cliente e seu CPF/CNPJ!');
           If DMFiscal.TAlx.FieldByName('UF').AsString='' then
               AddLogln(true, '      51 - No Pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - O Cliente se encontra sem UF/CIDADE!');

           //Atribui a várivel se a nota é foi cancelada ou não
           IF DMFiscal.TAlx.FieldByName('SITUACAO').AsString='CANCELADO' Then
               XTipoSitua:='S'
           Else
               XTipoSitua:='N';

           //Valida situação de cadastro no estado do cliente
           If DMFiscal.TAlx.FieldByName('INSC_EST').AsString = '' Then
           	incs_estadual := 'ISENTO'
           Else
               incs_estadual := DMFiscal.TAlx.FieldByName('INSC_EST').AsString;


           //Agrupa por grupos de CFOP E aliquotas de icms
           DMFiscal.TAlx2.Close;
           DMFiscal.TAlx2.SQL.Clear;
           DMFiscal.TAlx2.SQL.Add('  SELECT itenspedven.cfop, sum(itenspedven.valortotal) Subtotal, sum(itenspedven.vlripi) IPI FROM itenspedven ');
           DMFiscal.TAlx2.SQL.Add(' Where itenspedven.cod_pedven = :CodPedido ');
           DMFiscal.TAlx2.ParamByName('CodPedido').AsInteger:=DMFiscal.TAlx.FieldByName('cod_pedvenda').AsInteger;
           DMFiscal.TAlx2.SQL.Add('  GROUP BY itenspedven.cfop ');           
           DMFiscal.TAlx2.Open;
           DMFiscal.TAlx2.Last;
           DMFiscal.TAlx2.First;
       	While Not DMFiscal.TAlx2.Eof Do
           Begin
           	If (DMFiscal.TAlx2.FieldByName('CFOP').AsString='0') or (DMFiscal.TAlx2.FieldByName('CFOP').AsString='0') Then
           		AddLogln(true, '      51 - No Pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - Existem itens sem Cfop especificado!');

				//Tratamento do Numero Fiscal
               num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
               num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));

       		//Registro51 - Efetua o regitro 51 atravéz da dll
       		TempStr := Registro51(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, // CNPJ - CNPJ DO REMETENTE OU DESTINATARIO
         		incs_estadual, // Insc_Est - INSCRICAO ESTADUAL DO RMETENTE OU DESTINATARIO
         		DMFiscal.TAlx.FieldByName('DTEMISSAO').AsString, // Data_Emissao_Recebimento - DT DE EMISSAO OU RECEBIMENTO
           	DMFiscal.TAlx.FieldByName('UF').AsString, //UF - UF DO REMETENTE OU DESTINATARIO
           	DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie - Serie NF
         		num_nf, //Nro - Numero NF
           	DMFiscal.TAlx2.FieldByName('CFOP').AsString, // CFOP - CODIGO CFOP
               FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('SUBTOTAL').AsCurrency), //Valor_Total - Valor Total da NF (nos itens)
               FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('IPI').AsCurrency), //Valor_IPI - Valor de IPI
               FormatCurr('0.00', 0), //Isenta_IPI - Valor de isentas IPI
               FormatCurr('0.00', 0), //Outras_IPI - Valor de  outras ipi
               '',
               XTipoSitua // SITUAÇÃO DA NOTA FISCAL QTO AO CANCELAMENTO
         		);

               AddLogln(false, '');
               AddLogln(false, '      '+TempStr);

       		//Executa o tratamento da string temporária testando se houve erro
       		//Caso haja erro, executa o log das informações inconsistentes no RichEdit
       		if not VerificaSIntegra(TempStr)
           	then begin
         			qnt_erro := qnt_erro + 1;
         			Result := False;
               	Err_Msg := Err_Msg + #13 +
           		'    Cod_Sintegra_R51: ' +
           		DMFiscal.TAlx.FieldByName('cod_pedvenda').AsString ;
                   AddLogln(true, '      51 - [XX] - Pedido Numero: ' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' Cliente: '+DMFiscal.TAlx.FieldByName('NOME').AsString+ ' - FALHA - ' + TempStr);
        		end
       		else Begin
        			qnt_ok := qnt_ok + 1;
//                   AddLogln(true, '      50 - [OK] - Pedido Numero:' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - CFOP: '+DMFiscal.TAlx2.FieldByName('CFOP').AsString+' ICMS: '+DMFiscal.TAlx2.FieldByName('aliqicms').AsString);
           	End;
       		if Not DMFiscal.TAlx2.EOF then
         			DMFiscal.TAlx2.Next;

       		if quit_sintegra then
         			exit;
           End;
  			if Not DMFiscal.TAlx.EOF then
				DMFiscal.TAlx.Next;
       End;
   End
   Else Begin
       AddLogln(true, '      Nenhuma Saída Encontrada');
   End;
end;


//Registro75 - Registro de Código de Produto e Serviço
function TFGeraSintegra.sRegistro75(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 XMed,XNcm,TempStr: string;
 i, fim:Integer;
 controle :Boolean;
begin
	Result := True;
   AddLogln(true, '');
   AddLogln(true, 'Inserir Registro75 - Registro de Código de Produto e Serviço');

   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select distinct(tmp.cod_tmp), subproduto.cod_subproduto, subproduto.ncm, subproduto.descricao, unidade.sigla_unid, ');
   DMMACS.TALX.SQL.Add(' subproduto.ipiprod, estoque.icms, subproduto.contrint  from tmp ');
   DMMACS.TALX.SQL.Add(' left join subproduto on tmp.cod_tmp = subproduto.cod_subproduto ');
   DMMACS.TALX.SQL.Add(' left join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
   DMMACS.TALX.SQL.Add(' left join unidade on subproduto.cod_unidvenda = unidade.cod_unidade ');
   DMMACS.TALX.SQL.Add('where tmp.int1 = ''0''');
   DMMACS.TALX.SQL.Add('order by tmp.cod_tmp');
   DMMACS.TALX.Open;

   If not DMMACS.TALX.IsEmpty
   Then Begin
       DMMACS.TALX.First;
       While not DMMACS.TALX.eof do
       Begin
			Try
              	//If DMMACS.TALX.FieldByName('cod_tmp').AsString=	'25933' Then
               FiltraTabela(DMESTOQUE.TSubProd,'SUBPRODUTO','COD_SUBPRODUTO', DMMACS.TALX.FieldByName('cod_tmp').AsString,'');
               FiltraTabela(DMEstoque.TEstoque, 'ESTOQUE', 'cod_subprod', DMMACS.TALX.FieldByName('cod_tmp').AsString, '');
               FiltraTabela(DMESTOQUE.TUnidade, 'UNIDADE', 'COD_UNIDADE', DMESTOQUE.TSubProd.FieldByName('cod_unidvenda').AsString, '');
               FiltraTabela(DMSAIDA.TItemPV,'ITENSPEDVEN','COD_ESTOQUE',DMEstoque.TEstoque.FieldByName('COD_ESTOQUE').AsString,'');

               //Paulo 21/12/2010: Verifica se o NCM é válido
               if Verifica_NCM(DMESTOQUE.TSubProd.FieldByName('NCM').AsString) then
                   XNcm:= DMESTOQUE.TSubProd.FieldByName('NCM').AsString
               else
                   XNcm:='00000000' ;

               //Paulo 21/12/2010: Verifica se a unidade de medida não esta em branco    
               if DMESTOQUE.TUnidade.FieldByName('sigla_unid').AsString = ''then
                   XMed:='N'
               else
                   XMed:= DMESTOQUE.TUnidade.FieldByName('sigla_unid').AsString;

               TempStr := Registro75(DT01, //Data Inicial
               Dt02, //datetostr(DataHora_Final),                                             //Data_Final
               FormatCurr('00000000000000',DMESTOQUE.TSubProd.FieldByName('COD_SUBPRODUTO').AsCurrency), //Cod_Produto_Servico
               XNcm,//DMESTOQUE.TSubProd.FieldByName('NCM').AsString, //Cod_NCM
               DMESTOQUE.TSubProd.FieldByName('DESCRICAO').AsString, //Descricao
               XMed,//DMESTOQUE.TUnidade.FieldByName('sigla_unid').AsString, //UND_Medida
               formatcurr('0.00', DMESTOQUE.TSubProd.FieldByName('ipiprod').AsCurrency), //Aliquota_IPI
               formatcurr('0.00', DMEstoque.TEstoque.FieldByName('icms').AsCurrency), //Aliquota_ICMS
               formatcurr('0.00', 0), //Reducao_Base_ICMS
               formatcurr('0.00', 0)  //Base_ICMS_Subst
               );

               // AddLogln(false, '');
                 //  AddLogln(false, TempStr);

               //Executa o tratamento da string temporária testando se houve erro
               //Caso haja erro, executa o log das informações inconsistentes no RichEdit
               if not VerificaSIntegra(TempStr) then
               begin
                   qnt_erro := qnt_erro + 1;
                   Result := False;
                   AddLogln(true, '                         Cod. Int: ' + DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString + ' - FALHA - ' + TempStr);
               end
               else Begin
                    qnt_ok := qnt_ok + 1;
                    //AddLogln(true, '                        Cod. Item: ' + DMFiscal.TAlx.FieldByName('CODPRODUTO').AsString + ' - OK');
    //                AddLogln(true, '                        Cod. Int: ' + DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString + ' - OK');
               End;
               If quit_sintegra then
                   exit;
               
           Except
                   qnt_erro := qnt_erro + 1;
                   Result := False;
                   AddLogln(true, '                         Cod. Int: ' + DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString + ' - FALHA - ' + TempStr);
			End;
       	DMMACS.TALX.Next;

       End;
   End;

   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' select distinct(tmp.cod_tmp), despadic.cod_despadic, despadic.despesa, despadic.unidade, despadic.cod_gerador');
   DMMACS.TALX.SQL.Add('  from tmp ');
   DMMACS.TALX.SQL.Add(' left join despadic on tmp.cod_tmp = despadic.cod_despadic ');
   DMMACS.TALX.SQL.Add('where tmp.int1 = ''1''');
   DMMACS.TALX.Open;


   If not DMMACS.TALX.IsEmpty
   Then Begin
       DMMACS.TALX.First;
       While not DMMACS.TALX.eof do
       Begin
			Try
              	//If DMMACS.TALX.FieldByName('cod_tmp').AsString=	'25933' Then
               FiltraTabela(DMENTRADA.TItemPC,'ITENSPEDC','COD_PEDCOMPRA',IntToStr(DMMACS.TALX.FieldByName('COD_GERADOR').AsInteger),'and (itenspedc.consumo = ''1'') ');

               XNcm:='00000000' ;

               //Paulo 21/12/2010: Verifica se a unidade de medida não esta em branco    
               XMed:= DMMACS.TALX.FieldByName('UNIDADE').AsString;
               

               TempStr := Registro75(DT01, //Data Inicial
               Dt02, //datetostr(DataHora_Final),                                             //Data_Final
               FormatCurr('00000000000000',DMMACS.TALX.FieldByName('COD_DESPADIC').AsCurrency), //Cod_Produto_Servico
               XNcm,//DMESTOQUE.TSubProd.FieldByName('NCM').AsString, //Cod_NCM
               DMMACS.TALX.FieldByName('DESPESA').AsString, //Descricao
               XMed,//DMESTOQUE.TUnidade.FieldByName('sigla_unid').AsString, //UND_Medida
               formatcurr('0.00', DMENTRADA.TItemPC.FieldByName('ALIQIPI').AsCurrency), //Aliquota_IPI
               formatcurr('0.00', DMENTRADA.TItemPC.FieldByName('ALIQICMS').AsCurrency), //Aliquota_ICMS
               formatcurr('0.00', 0), //Reducao_Base_ICMS
               formatcurr('0.00', 0)  //Base_ICMS_Subst
               );

               // AddLogln(false, '');
                 //  AddLogln(false, TempStr);

               //Executa o tratamento da string temporária testando se houve erro
               //Caso haja erro, executa o log das informações inconsistentes no RichEdit
               if not VerificaSIntegra(TempStr) then
               begin
                   qnt_erro := qnt_erro + 1;
                   Result := False;
                   AddLogln(true, '                         Cod. Consumo: ' + DMMACS.TALX.FieldByName('COD_DESPADIC').AsString + ' - FALHA - ' + TempStr);
               end
               else Begin
                    qnt_ok := qnt_ok + 1;
                    //AddLogln(true, '                        Cod. Item: ' + DMFiscal.TAlx.FieldByName('CODPRODUTO').AsString + ' - OK');
    //                AddLogln(true, '                        Cod. Int: ' + DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString + ' - OK');
               End;
               If quit_sintegra then
                   exit;
               
           Except
                   qnt_erro := qnt_erro + 1;
                   Result := False;
                   AddLogln(true, '                         Cod. Int: ' + DMESTOQUE.TSubProd.FieldByName('COD_INTERNO').AsString + ' - FALHA - ' + TempStr);
			End;
       	DMMACS.TALX.Next;

       End;
   End;

end;

//Registro54 - Registro de Produto (Classificação Fiscal)
//Gerar um registro para cada produto constante na nota fiscal
//Outras despesas constantes na nota devem ser gerados aqui
function TFGeraSintegra.sRegistro54(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
	TempStr, num_nf, pedidos, incs_estadual: string;
   NumItem, CodCliente: Integer;
   primeiro :Boolean;
   XCodigoErro: String;
   XVlrTotal, XPerDeconto, XTotDescAcumulado, XDescProd, XTotDescMoe, XVlrFrete, XVlrOutrasDespesas: Real;
   XcodProd,XNumRecord: Integer;
	XBaseICMSR50: Real;
   Xteste:String;
   //XIncrementa: Real;//Apagar o uso desta variavel
begin
	Result := True;
	Gera_R75 := True;                              //Setado sempre que Registros 54, 60I, 60R, 74 ou 77 gerados!
   AddLogln(true, '');
   AddLogln(true, ' ** 54 **');
   AddLogln(true, '   Inserir Registro 54 - Registro de Pordutos/Serviços por Classificação Fiscal');
   //XIncrementa:=159.81;
	///////////////////////////////
   //GERA REGISTRO 54 PARA SAIDAS
   //////////////////////////////
	//Executa a seleção dos registros no banco de dados
	DMFiscal.TAlx.Close;
   DMFiscal.TAlx.UnPrepare;
   DMFiscal.TAlx.SQL.Clear;
	DMFiscal.TAlx.SQL.Add('  select vwpedv.cod_pedvenda, pedvenda.fisco, docfissaida.numdocfis, docfissaida.NUMDOCFISINT,docfissaida.vlrtotprod, vwcliente.cpfcnpj,  ');
	DMFiscal.TAlx.SQL.Add('  vwpedv.numped, docfissaida.modelonf, docfissaida.serie, docfissaida.vlrfrete, docfissaida.vlroutrasdesp, ');
	DMFiscal.TAlx.SQL.Add('   docfissaida.baseicms, docfissaida.vlricms, docfissaida.vlrtotdocnf ');
	DMFiscal.TAlx.SQL.Add('   from vwpedv ');
	DMFiscal.TAlx.SQL.Add('   Left join pedvenda on vwpedv.cod_pedvenda = pedvenda.cod_pedvenda ');
	DMFiscal.TAlx.SQL.Add('   left Join docfissaida on vwpedv.cod_pedvenda = docfissaida.cod_pedido ');
	DMFiscal.TAlx.SQL.Add('   left join vwcliente  on vwpedv.cod_cliente = vwcliente.cod_cliente ');
	DMFiscal.TAlx.SQL.Add(' WHERE ((docfissaida.NFESTATUS = ''1'')OR(docfissaida.NFESTATUS = ''3'')) AND');
	DMFiscal.TAlx.SQL.Add(' (COD_PERIODOFISCAL=:PERIODOFISCAL) and (pedvenda.FISCO=''NF'') AND ((vwpedv.situacao = ''FECHADO'') OR (vwpedv.situacao = ''CANCELADO'')) AND (');
   DMFiscal.TAlx.SQL.Add(' (SERIE = ''01'') OR (SERIE = ''1'')  OR ');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''1A'') OR');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''03'') OR');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''06'') OR');
   DMFiscal.TAlx.SQL.Add(' (SERIE = ''22''))');
	DMFiscal.TAlx.SQL.Add(' ORDER BY DTEMISSAO, NUMDOCFISINT');
  	DMFiscal.TAlx.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
	DMFiscal.TAlx.Prepare;
   DMFiscal.TAlx.SQL.Text;
	DMFiscal.TAlx.Open;

   AddLogln(true, '   [54 - SAIDAS]');

	If DMFiscal.TAlx.RecordCount > 0
   Then begin
   	While not DMFiscal.TAlx.EOF do
    	begin
           //TRATAMENTO PARA REGISTRO 54 PARA FRETE e DESPESAS
           XVlrFrete:=0;
           XVlrOutrasDespesas:=0;
           XVlrFrete:=DMFiscal.TAlx.FieldByName('vlrfrete').AsCurrency;
           XVlrOutrasDespesas:=DMFiscal.TAlx.FieldByName('vlroutrasdesp').AsCurrency;
           If  (DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString='1587') Then
               XVlrFrete:=XVlrFrete;

           //Seleciona todos os itens de acordo com o pedido
           DMFiscal.TAlx2.Close;
           DMFiscal.TAlx2.UnPrepare;
           DMFiscal.TAlx2.SQL.Clear;
           DMFiscal.TAlx2.SQL.Add(' Select itenspedven.cod_itenspedven, subproduto.cod_subproduto, itenspedven.cfop, cst.cod_sit_trib, ');
           DMFiscal.TAlx2.SQL.Add('  itenspedven.qtdeprod, itenspedven.valortotal, itenspedven.descnf, itenspedven.aliqicms, itenspedven.descpro, itenspedven.baseicms, ');
           DMFiscal.TAlx2.SQL.Add('  itenspedven.baseicmssubs, itenspedven.vlripi, itenspedven.aliqipi ');
           DMFiscal.TAlx2.SQL.Add('  from itenspedven ');
           DMFiscal.TAlx2.SQL.Add('  left join vwsimilar on itenspedven.cod_estoque = vwsimilar.cod_estoque ');
           DMFiscal.TAlx2.SQL.Add('  left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
           DMFiscal.TAlx2.SQL.Add('  left join cst on itenspedven.cod_cst = cst.cod_cst ');
           DMFiscal.TAlx2.SQL.Add(' Where itenspedven.cod_pedven = :CodPedido ');
           DMFiscal.TAlx2.ParamByName('CodPedido').AsInteger:=DMFiscal.TAlx.FieldByName('cod_pedvenda').AsInteger;
           DMFiscal.TAlx2.SQL.Add(' Order BY itenspedven.COD_ITENSPEDVEN ');
           DMFiscal.TAlx2.Prepare;
           DMFiscal.TAlx2.Open;
           DMFiscal.TAlx2.Last;
           XNumRecord:=DMFiscal.TAlx2.RecordCount;
           DMFiscal.TAlx2.First;

           NumItem:=1;
           XTotDescAcumulado:=0;
     		While not DMFiscal.TAlx2.EOF do
      		begin
           	//Efetua validações
               If DMFiscal.TAlx2.FieldByName('CFOP').AsString='' Then
               	AddLogln(true, '      54 - No Pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - CFOP Não registrado');
               If DMFiscal.TAlx2.FieldByName('COD_SIT_TRIB').AsString='' Then
               	AddLogln(true, '      54 - No Pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - C.S.T. Não registrado');

              IF DMFiscal.TAlx2.FieldByName('QTDEPROD').AsCurrency > 0
              Then Begin
                   XTotDescAcumulado:=XTotDescAcumulado+DMFiscal.TAlx2.FieldByName('DESCNF').AsCurrency;

                   num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
                   num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 últimos digitos da NF
                   //Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
                   TempStr := Registro54(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, //CNPJ
                                         DMFiscal.TAlx.FIeldByName('MODELONF').AsString, //Modelo
                                         DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie
                                         num_nf, //Nro
                                         DMFiscal.TAlx2.FieldByName('CFOP').AsString, //CFOP
                                         DMFiscal.TAlx2.FieldByName('COD_SIT_TRIB').AsString, //Codigo da Situacao Tributaria
                                         IntToStr(NumItem), //Nº Item
                                         FormatCurr('00000000000000', DMFiscal.TAlx2.FieldByName('cod_subproduto').AsCurrency), //Codigo Produto
                                         FormatCurr('0.000', DMFiscal.TAlx2.FieldByName('QTDEPROD').AsCurrency), //Quantidade
                                         FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('VALORTOTAL').AsCurrency+XVlrFrete+XVlrOutrasDespesas), //Valor Produto
                                         FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('DESCNF').AsCurrency), //Valor Desconto
                                         FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('baseicms').AsCurrency), //Base ICMS
                                         FormatCurr('0.00', 0{DMFiscal.TAlx2.FieldByName('BASEICMSSUBS').AsCurrency}), //Base ICMS S. Trib.
                                         FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('VLRIPI').AsCurrency), //Valor IPI
                                         FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('ALIQICMS').AsCurrency) //Aliquota ICMS
                   );



                   XVlrFrete:=0;
                   XVlrOutrasDespesas:=0;
                   AddR75(DMFiscal.TAlx2.FieldByName('cod_subproduto').AsString,0);
                   AddLogln(false, '');
                   AddLogln(false, '      '+TempStr);

                   //Executa o tratamento da string temporária testando se houve erro
                   //Caso haja erro, executa o log das informações inconsistentes no RichEdit
                   If not VerificaSIntegra(TempStr)
                   Then Begin
                       qnt_erro := qnt_erro + 1;
                       Result := False;

                       Err_Msg := Err_Msg + #13 +
                       '    Cod_Pedidos: ' + DMFiscal.TAlx.FieldByName('numped').AsString + #13 +
                       '    Cod_Pedidos_Itens: ' + DMFiscal.TAlx2.FieldByName('COD_ITENSPEDVEN').AsString;
                   	AddLogln(true, '      54 - [XX] - Pedido Numero:' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - FALHA - ' + TempStr);
                   end
                   else Begin
                       qnt_ok := qnt_ok + 1;
//	                    AddLogln(true, '      54 - [OK] - Pedido Numero:' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - Produto: '+DMFiscal.TAlx2.FieldByName('cod_subproduto').AsString);
                   End;

                   NumItem:=NumItem+1;

              End; // compara qnt zero

       		If not DMFiscal.TAlx2.EOF
               then Begin
         			DMFiscal.TAlx2.Next;
               End;

       		If quit_sintegra then
         			exit;
           end;

     		If not DMFiscal.TAlx.EOF then
       		DMFiscal.TAlx.Next;

     		If quit_sintegra then
       		exit;
   	end;
  	end
   Else Begin
       AddLogln(true, '      Nenhuma Saída Encontrada');
   End;

	///////////////////////////////
   //GERA REGISTRO 54 PARA O.S.
   //////////////////////////////
	//Executa a seleção dos registros no banco de dados
	DMFiscal.TAlx.Close;
   DMFiscal.TAlx.UnPrepare;
   DMFiscal.TAlx.SQL.Clear;
	DMFiscal.TAlx.SQL.Add('    select vwordem.cod_ordem, docfisord.numdocfis, docfisord.NUMDOCFISINT, docfisord.vlrtotprod, vwcliente.cpfcnpj, vwcliente.nome, ');
	DMFiscal.TAlx.SQL.Add('  vwordem.numero, docfisord.modelonf, docfisord.serie, ');
	DMFiscal.TAlx.SQL.Add('   docfisord.baseicms, docfisord.vlricms, docfisord.vlrtotdocnf ');
	DMFiscal.TAlx.SQL.Add('   from vwordem ');
	DMFiscal.TAlx.SQL.Add('   left Join docfisord on vwordem.cod_ordem = docfisord.cod_ordem ');
	DMFiscal.TAlx.SQL.Add('   left join vwcliente  on vwordem.cod_cliente = vwcliente.cod_cliente ');
	DMFiscal.TAlx.SQL.Add(' WHERE ((docfisord.NFESTATUS = ''1'')OR(docfisord.NFESTATUS = ''3'')) AND');
	DMFiscal.TAlx.SQL.Add(' (COD_PERIODOFISCAL=:PERIODOFISCAL) AND ((vwordem.STATUS = ''FECHADO'') OR (vwordem.status = ''CANCELADO'')) AND ( ');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''01'') OR (SERIE = ''1'')  OR ');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''1A'') OR ');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''03'') OR ');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''06'') OR ');
	DMFiscal.TAlx.SQL.Add(' (SERIE = ''22'')) ');
	DMFiscal.TAlx.SQL.Add(' ORDER BY DTEMISSAO, NUMDOCFISINT ');
  	DMFiscal.TAlx.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
	DMFiscal.TAlx.Prepare;
   DMFiscal.TAlx.SQL.Text;
	DMFiscal.TAlx.Open;

   AddLogln(true, '   [54 - SAIDAS Ordem de Serviço]');

	If DMFiscal.TAlx.RecordCount > 0
   Then begin
   	While not DMFiscal.TAlx.EOF do
    	begin
           //Seleciona todos os itens de acordo com o pedido
           DMFiscal.TAlx2.Close;
           DMFiscal.TAlx2.UnPrepare;
           DMFiscal.TAlx2.SQL.Clear;
           DMFiscal.TAlx2.SQL.Add('  Select itprodord.cod_itprodord, subproduto.cod_subproduto, itprodord.cfop, cst.cod_sit_trib, ');
           DMFiscal.TAlx2.SQL.Add('    itprodord.qtd, itprodord.total, itprodord.aliqicms, itprodord.desconto, itprodord.descnf,  itprodord.baseicms, ');
           DMFiscal.TAlx2.SQL.Add('    itprodord.baseicmssubs, itprodord.vlripi, itprodord.aliqipi ');
           DMFiscal.TAlx2.SQL.Add('    from itprodord ');
           DMFiscal.TAlx2.SQL.Add('    left join vwsimilar on itprodord.cod_estoque = vwsimilar.cod_estoque ');
           DMFiscal.TAlx2.SQL.Add('    left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
           DMFiscal.TAlx2.SQL.Add('    left join cst on itprodord.cod_cst = cst.cod_cst ');
           DMFiscal.TAlx2.SQL.Add('    Where itprodord.cod_ordem = :CodPedido ');
           DMFiscal.TAlx2.ParamByName('CodPedido').AsInteger:=DMFiscal.TAlx.FieldByName('cod_ordem').AsInteger;
           DMFiscal.TAlx2.SQL.Add(' Order BY itprodord.cod_itprodord ');
           DMFiscal.TAlx2.Prepare;
           DMFiscal.TAlx2.Open;
           DMFiscal.TAlx2.Last;
           XNumRecord:=DMFiscal.TAlx2.RecordCount;
           DMFiscal.TAlx2.First;

           NumItem:=1;
           XTotDescAcumulado:=0;
     		While not DMFiscal.TAlx2.EOF do
      		begin
           	//Efetua validações
               If DMFiscal.TAlx2.FieldByName('CFOP').AsString='' Then
               	AddLogln(true, '      54 - Na Ordem: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - CFOP Não registrado');
               If DMFiscal.TAlx2.FieldByName('COD_SIT_TRIB').AsString='' Then
               	AddLogln(true, '      54 - Na Ordem: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - C.S.T. Não registrado');

              IF DMFiscal.TAlx2.FieldByName('QTD').AsCurrency > 0
              Then Begin
                   XTotDescAcumulado:=XTotDescAcumulado+DMFiscal.TAlx2.FieldByName('descnf').AsCurrency;
                   num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
                   If num_nf='15' Then
                   	num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;                   
                   num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 últimos digitos da NF
                   //Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
                   TempStr := Registro54(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, //CNPJ
                                         DMFiscal.TAlx.FIeldByName('MODELONF').AsString, //Modelo
                                         DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie
                                         num_nf, //Nro
                                         DMFiscal.TAlx2.FieldByName('CFOP').AsString, //CFOP
                                         DMFiscal.TAlx2.FieldByName('COD_SIT_TRIB').AsString, //Codigo da Situacao Tributaria
                                         IntToStr(NumItem), //Nº Item
                                         FormatCurr('00000000000000', DMFiscal.TAlx2.FieldByName('cod_subproduto').AsCurrency), //Codigo Produto
                                         FormatCurr('0.000', DMFiscal.TAlx2.FieldByName('QTD').AsCurrency), //Quantidade
                                         FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('TOTAL').AsCurrency), //Valor Produto
                                         FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('descnf').AsCurrency), //Valor Desconto
                                         FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('BASEICMS').AsCurrency), //Base ICMS
                                         FormatCurr('0.00', 0{DMFiscal.TAlx2.FieldByName('BASEICMSSUBS').AsCurrency}), //Base ICMS S. Trib.
                                         FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('VLRIPI').AsCurrency), //Valor IPI
                                         FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('ALIQICMS').AsCurrency) //Aliquota ICMS
                   );
                   
                   AddR75(DMFiscal.TAlx2.FieldByName('cod_subproduto').AsString,0);
                   AddLogln(false, '');
                   AddLogln(false, '      '+TempStr);

                   //Executa o tratamento da string temporária testando se houve erro
                   //Caso haja erro, executa o log das informações inconsistentes no RichEdit
                   If not VerificaSIntegra(TempStr)
                   Then Begin
                       qnt_erro := qnt_erro + 1;
                       Result := False;

                       Err_Msg := Err_Msg + #13 +
                       '    Cod_Pedidos: ' + DMFiscal.TAlx.FieldByName('Numero').AsString + #13 +
                       '    Cod_Pedidos_Itens: ' + DMFiscal.TAlx2.FieldByName('cod_itprodord').AsString;

                   	AddLogln(true, '      54 - [XX] - O.S. Numero:' + DMFiscal.TAlx.FieldByName('NUMERO').AsString + ' Cliente: '+ DMFiscal.TAlx.FieldByName('NOME').AsString+' - FALHA - ' + TempStr);
                   end
                   else Begin
                       qnt_ok := qnt_ok + 1;
                   End;
                   NumItem:=NumItem+1;

              End; // compara qnt zero

       		If not DMFiscal.TAlx2.EOF
               then Begin
         			DMFiscal.TAlx2.Next;
               End;

       		If quit_sintegra then
         			exit;
			End;

     		If not DMFiscal.TAlx.EOF then
       		DMFiscal.TAlx.Next;

     		If quit_sintegra then
       		exit;
   	end;
  	end
   Else Begin
       AddLogln(true, '      Nenhuma Saída Encontrada');
   End;
   /////////////////////////////////
   //GERA REGISTRO 54 PARA ENTRADAS
   ////////////////////////////////
   //Executa a seleção dos registros no banco de dados
   DMFiscal.TAlx.Close;
   DMFiscal.TAlx.UnPrepare;
   DMFiscal.TAlx.SQL.Clear;      
   DMFiscal.TAlx.SQL.Add('  select vwpedc.cod_pedcomp, vwpedc.numfiscal as numdocfis, docfis.vlrtotprod, vwfornec.cpfcnpj, docfis.vlrfrete, docfis.vlroutrasdesp, ');
   DMFiscal.TAlx.SQL.Add('   vwpedc.numped, docfis.modelonf, docfis.serie, docfis.baseicms, docfis.vlricms, docfis.vlrtotdocnf ');
   DMFiscal.TAlx.SQL.Add('   from vwpedc ');
   DMFiscal.TAlx.SQL.Add('   left Join docfis on vwpedc.cod_pedcomp = docfis.cod_pedido ');
   DMFiscal.TAlx.SQL.Add('   left join vwfornec on vwpedc.cod_fornec = vwfornec.cod_fornec ');
   DMFiscal.TAlx.SQL.Add('   WHERE ');
   DMFiscal.TAlx.SQL.Add(' (COD_PERIODOFISCAL=:PERIODOFISCAL) AND ((vwpedc.situacao = ''FECHADO'') OR (vwpedc.situacao = ''CANCELADO'')) AND (SERIE is not null) ');
   DMFiscal.TAlx.SQL.Add('   ORDER BY DTEMISSAO, numdocfis ');
   DMFiscal.TAlx.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
   DMFiscal.TAlx.Prepare;
   DMFiscal.TAlx.SQL.Text;
   DMFiscal.TAlx.Open;

   AddLogln(true, '   [54 - ENTRADAS]');

   If DMFiscal.TAlx.RecordCount > 0
   Then begin
       While not DMFiscal.TAlx.EOF do
       begin

           //VERIFICAÇÃO PARA CASO DE FRETE
           //CASO O PEDIDO POSSUI UM ITEM DE VENDAS QUE COMPUNHA FRETE O SISTEMA PULARA ESTE PEDIDO PQ O MESMO DEVERA CONSTAR NO REGISTRO 70 E NÃO NO REGISTRO 50
           //Agrupa por grupos de CFOP E aliquotas de icms
           DMFiscal.TAlx2.Close;
           DMFiscal.TAlx2.SQL.Clear;
           DMFiscal.TAlx2.SQL.Add(' select pedcompra.cod_pedcomp ');
           DMFiscal.TAlx2.SQL.Add(' from itenspedc ');
           DMFiscal.TAlx2.SQL.Add(' left join estoque ON itenspedc.cod_estoque = estoque.cod_estoque ');
           DMFiscal.TAlx2.SQL.Add(' left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto ');
           DMFiscal.TAlx2.SQL.Add(' left join pedcompra on itenspedc.cod_pedcompra = pedcompra.cod_pedcomp ');
           DMFiscal.TAlx2.SQL.Add(' WHERE (pedcompra.cod_pedcomp=:CODPEDIDO) AND (subproduto.USOCONSUMO=''2'') ');
           DMFiscal.TAlx2.ParamByName('CODPEDIDO').AsInteger:=DMFiscal.TAlx.FieldByName('cod_pedcomp').AsInteger;
           DMFiscal.TAlx2.Open;
           DMFiscal.TAlx2.Last;
           DMFiscal.TAlx2.First;
           If DMFiscal.TAlx2.IsEmpty
           Then Begin
               //SE OS ITENS NÃO FOREM DE FRETE O FLUXO CONTINUA

              //TRATAMENTO PARA REGISTRO 54 PARA FRETE e DESPESAS
              XVlrFrete:=0;
              XVlrOutrasDespesas:=0;
              XcodProd:=0;
              XVlrFrete:=DMFiscal.TAlx.FieldByName('vlrfrete').AsCurrency;
              XVlrOutrasDespesas:=DMFiscal.TAlx.FieldByName('vlroutrasdesp').AsCurrency;
              If (XVlrOutrasDespesas>0) or (XVlrFrete>0) Then
                   XVlrFrete:=XVlrFrete;

              If DMFiscal.TAlx.FieldByName('numdocfis').AsString='183852'
              Then Begin
                   XVlrFrete:=XVlrFrete;
              End;
               //Seleciona todos os itens de acordo com o pedido
               //APENAS ITENS NORMAIS QUE NÃO SÃO DE USO E CONSUMO DE DADOS ADICIONAIS
               DMFiscal.TAlx2.Close;
               DMFiscal.TAlx2.UnPrepare;
               DMFiscal.TAlx2.SQL.Clear;
               DMFiscal.TAlx2.SQL.Add('    Select itenspedc.cod_itenspedc, subproduto.cod_subproduto, itenspedc.cfop, cst.cod_sit_trib, ');
               DMFiscal.TAlx2.SQL.Add('        itenspedc.qtdeprod, itenspedc.valortotal AS TOTAL, itenspedc.aliqicms,  itenspedc.descpro, itenspedc.descnf, itenspedc.baseicms, ');
               DMFiscal.TAlx2.SQL.Add('        itenspedc.baseicmssubs, itenspedc.vlricmssubs, itenspedc.vlripi, itenspedc.aliqipi, itenspedc.consumo ');
               DMFiscal.TAlx2.SQL.Add('        from itenspedc ');
               DMFiscal.TAlx2.SQL.Add('        left join vwsimilar on itenspedc.cod_estoque = vwsimilar.cod_estoque ');
               DMFiscal.TAlx2.SQL.Add('        left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
               DMFiscal.TAlx2.SQL.Add('        left join cst on itenspedc.cod_cst = cst.cod_cst ');
               DMFiscal.TAlx2.SQL.Add('        left join docfis on itenspedc.cod_pedcompra = docfis.cod_pedido ');
               DMFiscal.TAlx2.SQL.Add('        Where (itenspedc.cod_pedcompra = :CodPedido)  AND ((itenspedc.consumo<>''1'') or (itenspedc.consumo is null)) ');
               DMFiscal.TAlx2.ParamByName('CodPedido').AsInteger:=DMFiscal.TAlx.FieldByName('cod_pedcomp').AsInteger;
               DMFiscal.TAlx2.SQL.Add(' Order BY itenspedc.cod_itenspedc ');
               DMFiscal.TAlx2.Prepare;
               DMFiscal.TAlx2.Open;
               DMFiscal.TAlx2.Last;
               XNumRecord:=DMFiscal.TAlx2.RecordCount;
               DMFiscal.TAlx2.First;

               NumItem:=1;
               XTotDescAcumulado:=0;
               While not DMFiscal.TAlx2.EOF do
               begin
                   //Efetua validações
                   If DMFiscal.TAlx2.FieldByName('CFOP').AsString='' Then
                       AddLogln(true, '      54 - Na Entrada: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - CFOP Não registrado');
                   If DMFiscal.TAlx2.FieldByName('COD_SIT_TRIB').AsString='' Then
                       AddLogln(true, '      54 - Na Entrada: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - C.S.T. Não registrado');

                  //registro 54 para frete
                  If XVlrFrete>0
                  Then Begin
                       //SE EXISTE UM FRETE A SER LANÇADO O MESMO É LANÇADO AQUI
                       num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
                       num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 últimos digitos da NF
                       //Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
                       TempStr := Registro54(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, //CNPJ
                                             DMFiscal.TAlx.FIeldByName('MODELONF').AsString, //Modelo
                                             DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie
                                             num_nf, //Nro
                                             DMFiscal.TAlx2.FieldByName('CFOP').AsString, //CFOP
                                             '   ', //Codigo da Situacao Tributaria
                                             '991', //Nº Item
                                             '', //Codigo Produto
                                             '0', //Quantidade
                                             '0', //Valor Produto
                                             FormatCurr('0.00', XVlrFrete), //Valor Desconto
                                             '0', //Base ICMS
                                             '0', //Base ICMS S. Trib.
                                             '0', //Valor IPI
                                             '0' //Aliquota ICMS
                       );
                       XVlrFrete:=0;
                       AddLogln(false, '');
                       AddLogln(false, '      '+TempStr);

                       //Executa o tratamento da string temporária testando se houve erro
                       //Caso haja erro, executa o log das informações inconsistentes no RichEdit
                       If not VerificaSIntegra(TempStr)
                       Then Begin
                           qnt_erro := qnt_erro + 1;
                           Result := False;

                           Err_Msg := Err_Msg + #13 +
                           '    Cod_Pedidos: ' + DMFiscal.TAlx.FieldByName('numped').AsString + #13 +
                           '    Cod_Pedidos_Itens: Frete que compoem a nota' ;

                           AddLogln(true, '      54 - [XX] - Entrada Numero:' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - FALHA - ' + TempStr);
                       end
                       else Begin
                           qnt_ok := qnt_ok + 1;
                       End;
                       NumItem:=NumItem+1;

                  End;
                  //REGISTRO 54 PARA DESPESAS ADICIONAIS
                  If XVlrOutrasDespesas>0
                  Then Begin
                       //SE EXISTE UM FRETE A SER LANÇADO O MESMO É LANÇADO AQUI
                       num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
                       num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 últimos digitos da NF
                       //Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
                       TempStr := Registro54(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, //CNPJ
                                             DMFiscal.TAlx.FIeldByName('MODELONF').AsString, //Modelo
                                             DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie
                                             num_nf, //Nro
                                             DMFiscal.TAlx2.FieldByName('CFOP').AsString, //CFOP
                                             '   ', //Codigo da Situacao Tributaria
                                             '999', //Nº Item
                                             '', //Codigo Produto
                                             '0', //Quantidade
                                             '0', //Valor Produto
                                             FormatCurr('0.00', XVlrOutrasDespesas), //Valor Desconto
                                             '0', //Base ICMS
                                             '0', //Base ICMS S. Trib.
                                             '0', //Valor IPI
                                             '0' //Aliquota ICMS
                       );

                       AddLogln(false, '');
                       AddLogln(false, '      '+TempStr);
                       XVlrOutrasDespesas:=0;
                       //Executa o tratamento da string temporária testando se houve erro
                       //Caso haja erro, executa o log das informações inconsistentes no RichEdit
                       If not VerificaSIntegra(TempStr)
                       Then Begin
                           qnt_erro := qnt_erro + 1;
                           Result := False;

                           Err_Msg := Err_Msg + #13 +
                           '    Cod_Pedidos: ' + DMFiscal.TAlx.FieldByName('numped').AsString + #13 +
                           '    Cod_Pedidos_Itens: Outras Despesas  que compoem a nota' ;

                           AddLogln(true, '      54 - [XX] - Entrada Numero:' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - FALHA - ' + TempStr);
                       end
                       else Begin
                           qnt_ok := qnt_ok + 1;
                       End;
                       NumItem:=NumItem+1;

                  End;
                  If (XVlrOutrasDespesas<=0) and (XVlrFrete<=0)
                  Then Begin
                      IF DMFiscal.TAlx2.FieldByName('qtdeprod').AsCurrency > 0
                      Then Begin

                           XTotDescAcumulado:=XTotDescAcumulado+DMFiscal.TAlx2.FieldByName('DESCNF').AsCurrency;

                           //Paulo 21/11/2011: se for consume pega o código da tabela despadic
                           if DMFiscal.TAlx2.FieldByName('consumo').AsString = '1' then
                               XcodProd:=DMFiscal.TAlx2.FieldByName('cod_despadic').AsInteger
                           else
                               XcodProd:=DMFiscal.TAlx2.FieldByName('cod_subproduto').AsInteger;

                           num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
                           num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 últimos digitos da NF
                           //Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
                           TempStr := Registro54(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, //CNPJ
                                                 DMFiscal.TAlx.FIeldByName('MODELONF').AsString, //Modelo
                                                 DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie
                                                 num_nf, //Nro
                                                 DMFiscal.TAlx2.FieldByName('CFOP').AsString, //CFOP
                                                 DMFiscal.TAlx2.FieldByName('COD_SIT_TRIB').AsString, //Codigo da Situacao Tributaria
                                                 IntToStr(NumItem), //Nº Item
                                                 FormatCurr('00000000000000', XcodProd), //Codigo Produto
                                                 FormatCurr('0.000', DMFiscal.TAlx2.FieldByName('qtdeprod').AsCurrency), //Quantidade
                                                 FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('TOTAL').AsCurrency+DMFiscal.TAlx2.FieldByName('vlricmssubs').AsCurrency-DMFiscal.TAlx2.FieldByName('descnf').AsCurrency), //Valor Produto
                                                 FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('DESCNF').AsCurrency), //Valor Desconto
                                                 FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('BASEICMS').AsCurrency), //Base ICMS
                                                 FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('BASEICMSSUBS').AsCurrency), //Base ICMS S. Trib.
                                                 FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('VLRIPI').AsCurrency), //Valor IPI
                                                 FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('ALIQICMS').AsCurrency) //Aliquota ICMS
                           );

                           //Paulo 21/11/2011: Adiciona o item de uso consumo ao R75
                           if DMFiscal.TAlx2.FieldByName('consumo').AsString = '1' then
                               AddR75(DMFiscal.TAlx2.FieldByName('cod_despadic').AsString,1)
                           else
                               AddR75(DMFiscal.TAlx2.FieldByName('cod_subproduto').AsString,0);
                           AddLogln(false, '');
                           AddLogln(false, '      '+TempStr);

                           //Executa o tratamento da string temporária testando se houve erro
                           //Caso haja erro, executa o log das informações inconsistentes no RichEdit
                           If not VerificaSIntegra(TempStr)
                           Then Begin
                               qnt_erro := qnt_erro + 1;
                               Result := False;

                               Err_Msg := Err_Msg + #13 +
                               '    Cod_Pedidos: ' + DMFiscal.TAlx.FieldByName('numped').AsString + #13 +
                               '    Cod_Pedidos_Itens: ' + DMFiscal.TAlx2.FieldByName('cod_itenspedc').AsString;

                               AddLogln(true, '      54 - [XX] - Entrada Numero:' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - FALHA - ' + TempStr);
                           end
                           else Begin
                               qnt_ok := qnt_ok + 1;
                           End;
                           NumItem:=NumItem+1;

                      End; // compara qnt zero
                  End;
                  If not DMFiscal.TAlx2.EOF
                  then Begin
                       DMFiscal.TAlx2.Next;
                  End;

                  If quit_sintegra then
                       exit;
               end;
               //APENAS ITENS DE USO E CONSUMO DE DADOS ADICIONAIS
               DMFiscal.TAlx2.Close;
               DMFiscal.TAlx2.UnPrepare;
               DMFiscal.TAlx2.SQL.Clear;
               DMFiscal.TAlx2.SQL.Add('    Select itenspedc.cod_itenspedc, subproduto.cod_subproduto, itenspedc.cfop, cst.cod_sit_trib, ');
               DMFiscal.TAlx2.SQL.Add('        itenspedc.qtdeprod, itenspedc.valortotal AS TOTAL, itenspedc.aliqicms,  itenspedc.descpro, itenspedc.descnf, itenspedc.baseicms, ');
               DMFiscal.TAlx2.SQL.Add('        itenspedc.baseicmssubs, itenspedc.vlricmssubs, itenspedc.vlripi, itenspedc.aliqipi, itenspedc.consumo,despadic.despesa, despadic.cod_despadic ');
               DMFiscal.TAlx2.SQL.Add('        from itenspedc ');
               DMFiscal.TAlx2.SQL.Add('        left join vwsimilar on itenspedc.cod_estoque = vwsimilar.cod_estoque ');
               DMFiscal.TAlx2.SQL.Add('        left join despadic on itenspedc.cod_pedcompra = despadic.cod_gerador ');
               DMFiscal.TAlx2.SQL.Add('        left join subproduto on vwsimilar.cod_subproduto = subproduto.cod_subproduto ');
               DMFiscal.TAlx2.SQL.Add('        left join cst on itenspedc.cod_cst = cst.cod_cst ');
               DMFiscal.TAlx2.SQL.Add('        left join docfis on itenspedc.cod_pedcompra = docfis.cod_pedido ');
               DMFiscal.TAlx2.SQL.Add('        Where itenspedc.cod_pedcompra = :CodPedido   AND (itenspedc.consumo=''1'')');
               DMFiscal.TAlx2.ParamByName('CodPedido').AsInteger:=DMFiscal.TAlx.FieldByName('cod_pedcomp').AsInteger;
               DMFiscal.TAlx2.SQL.Add(' Order BY itenspedc.cod_itenspedc ');
               DMFiscal.TAlx2.Prepare;
               DMFiscal.TAlx2.Open;
               DMFiscal.TAlx2.Last;
               XNumRecord:=DMFiscal.TAlx2.RecordCount;
               DMFiscal.TAlx2.First;

               NumItem:=1;
               XTotDescAcumulado:=0;
               While not DMFiscal.TAlx2.EOF do
               begin
                   //Efetua validações
                   If DMFiscal.TAlx2.FieldByName('CFOP').AsString='' Then
                       AddLogln(true, '      54 - Na Entrada: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - CFOP Não registrado');
                   If DMFiscal.TAlx2.FieldByName('COD_SIT_TRIB').AsString='' Then
                       AddLogln(true, '      54 - Na Entrada: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - C.S.T. Não registrado');

                  //registro 54 para frete
                  If XVlrFrete>0
                  Then Begin
                       //SE EXISTE UM FRETE A SER LANÇADO O MESMO É LANÇADO AQUI
                       num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
                       num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 últimos digitos da NF
                       //Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
                       TempStr := Registro54(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, //CNPJ
                                             DMFiscal.TAlx.FIeldByName('MODELONF').AsString, //Modelo
                                             DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie
                                             num_nf, //Nro
                                             DMFiscal.TAlx2.FieldByName('CFOP').AsString, //CFOP
                                             '   ', //Codigo da Situacao Tributaria
                                             '991', //Nº Item
                                             '', //Codigo Produto
                                             '0', //Quantidade
                                             '0', //Valor Produto
                                             FormatCurr('0.00', XVlrFrete), //Valor Desconto
                                             '0', //Base ICMS
                                             '0', //Base ICMS S. Trib.
                                             '0', //Valor IPI
                                             '0' //Aliquota ICMS
                       );
                       XVlrFrete:=0;
                       AddLogln(false, '');
                       AddLogln(false, '      '+TempStr);

                       //Executa o tratamento da string temporária testando se houve erro
                       //Caso haja erro, executa o log das informações inconsistentes no RichEdit
                       If not VerificaSIntegra(TempStr)
                       Then Begin
                           qnt_erro := qnt_erro + 1;
                           Result := False;

                           Err_Msg := Err_Msg + #13 +
                           '    Cod_Pedidos: ' + DMFiscal.TAlx.FieldByName('numped').AsString + #13 +
                           '    Cod_Pedidos_Itens: Frete que compoem a nota' ;

                           AddLogln(true, '      54 - [XX] - Entrada Numero:' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - FALHA - ' + TempStr);
                       end
                       else Begin
                           qnt_ok := qnt_ok + 1;
                       End;
                       NumItem:=NumItem+1;

                  End;
                  //REGISTRO 54 PARA DESPESAS ADICIONAIS
                  If XVlrOutrasDespesas>0
                  Then Begin
                       //SE EXISTE UM FRETE A SER LANÇADO O MESMO É LANÇADO AQUI
                       num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
                       num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 últimos digitos da NF
                       //Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
                       TempStr := Registro54(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, //CNPJ
                                             DMFiscal.TAlx.FIeldByName('MODELONF').AsString, //Modelo
                                             DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie
                                             num_nf, //Nro
                                             DMFiscal.TAlx2.FieldByName('CFOP').AsString, //CFOP
                                             '   ', //Codigo da Situacao Tributaria
                                             '999', //Nº Item
                                             '', //Codigo Produto
                                             '0', //Quantidade
                                             '0', //Valor Produto
                                             FormatCurr('0.00', XVlrOutrasDespesas), //Valor Desconto
                                             '0', //Base ICMS
                                             '0', //Base ICMS S. Trib.
                                             '0', //Valor IPI
                                             '0' //Aliquota ICMS
                       );

                       AddLogln(false, '');
                       AddLogln(false, '      '+TempStr);
                       XVlrOutrasDespesas:=0;
                       //Executa o tratamento da string temporária testando se houve erro
                       //Caso haja erro, executa o log das informações inconsistentes no RichEdit
                       If not VerificaSIntegra(TempStr)
                       Then Begin
                           qnt_erro := qnt_erro + 1;
                           Result := False;

                           Err_Msg := Err_Msg + #13 +
                           '    Cod_Pedidos: ' + DMFiscal.TAlx.FieldByName('numped').AsString + #13 +
                           '    Cod_Pedidos_Itens: Outras Despesas  que compoem a nota' ;

                           AddLogln(true, '      54 - [XX] - Entrada Numero:' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - FALHA - ' + TempStr);
                       end
                       else Begin
                           qnt_ok := qnt_ok + 1;
                       End;
                       NumItem:=NumItem+1;

                  End;
                  If (XVlrOutrasDespesas<=0) and (XVlrFrete<=0)
                  Then Begin
                      IF DMFiscal.TAlx2.FieldByName('qtdeprod').AsCurrency > 0
                      Then Begin

                           XTotDescAcumulado:=XTotDescAcumulado+DMFiscal.TAlx2.FieldByName('DESCNF').AsCurrency;

                           //Paulo 21/11/2011: se for consume pega o código da tabela despadic
                           if DMFiscal.TAlx2.FieldByName('consumo').AsString = '1' then
                               XcodProd:=DMFiscal.TAlx2.FieldByName('cod_despadic').AsInteger
                           else
                               XcodProd:=DMFiscal.TAlx2.FieldByName('cod_subproduto').AsInteger;

                           num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
                           num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 últimos digitos da NF
                           //Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
                           TempStr := Registro54(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, //CNPJ
                                                 DMFiscal.TAlx.FIeldByName('MODELONF').AsString, //Modelo
                                                 DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie
                                                 num_nf, //Nro
                                                 DMFiscal.TAlx2.FieldByName('CFOP').AsString, //CFOP
                                                 DMFiscal.TAlx2.FieldByName('COD_SIT_TRIB').AsString, //Codigo da Situacao Tributaria
                                                 IntToStr(NumItem), //Nº Item
                                                 FormatCurr('00000000000000', XcodProd), //Codigo Produto
                                                 FormatCurr('0.000', DMFiscal.TAlx2.FieldByName('qtdeprod').AsCurrency), //Quantidade
                                                 FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('TOTAL').AsCurrency+DMFiscal.TAlx2.FieldByName('vlricmssubs').AsCurrency-DMFiscal.TAlx2.FieldByName('descnf').AsCurrency), //Valor Produto
                                                 FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('DESCNF').AsCurrency), //Valor Desconto
                                                 FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('BASEICMS').AsCurrency), //Base ICMS
                                                 FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('BASEICMSSUBS').AsCurrency), //Base ICMS S. Trib.
                                                 FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('VLRIPI').AsCurrency), //Valor IPI
                                                 FormatCurr('0.00', DMFiscal.TAlx2.FieldByName('ALIQICMS').AsCurrency) //Aliquota ICMS
                           );
                           

                           //Paulo 21/11/2011: Adiciona o item de uso consumo ao R75
                           if DMFiscal.TAlx2.FieldByName('consumo').AsString = '1' then
                               AddR75(DMFiscal.TAlx2.FieldByName('cod_despadic').AsString,1)
                           else
                               AddR75(DMFiscal.TAlx2.FieldByName('cod_subproduto').AsString,0);
                           AddLogln(false, '');
                           AddLogln(false, '      '+TempStr);

                           //Executa o tratamento da string temporária testando se houve erro
                           //Caso haja erro, executa o log das informações inconsistentes no RichEdit
                           If not VerificaSIntegra(TempStr)
                           Then Begin
                               qnt_erro := qnt_erro + 1;
                               Result := False;

                               Err_Msg := Err_Msg + #13 +
                               '    Cod_Pedidos: ' + DMFiscal.TAlx.FieldByName('numped').AsString + #13 +
                               '    Cod_Pedidos_Itens: ' + DMFiscal.TAlx2.FieldByName('cod_itenspedc').AsString;

                               AddLogln(true, '      54 - [XX] - Entrada Numero:' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - FALHA - ' + TempStr);
                           end
                           else Begin
                               qnt_ok := qnt_ok + 1;
                           End;
                           NumItem:=NumItem+1;

                      End; // compara qnt zero
                  End;
                  If not DMFiscal.TAlx2.EOF
                  then Begin
                       DMFiscal.TAlx2.Next;
                  End;

                  If quit_sintegra then
                       exit;
               end;
           End;
           If not DMFiscal.TAlx.EOF then
               DMFiscal.TAlx.Next;

           If quit_sintegra then
               exit;
       end;
   end
   Else Begin
       AddLogln(true, '      Nenhuma Entrada Encontrada');
   End;
end;

//Registro60
function TFGeraSintegra.sRegistro60(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr: string;
 i: integer;
 Diminuir:Currency;
 XAliqouta: String;
begin
	Result := True;

   AddLogln(true, '');
   AddLogln(true, 'Inserir Registro60 - Registro de informação de operações/prestações realizadas com ECF');

   AddLogln(true, '        Inserir Registro60Mestre - Indentificador do Equipamento');
	//Executa a seleção dos registros no banco de dados
	DMFiscal.TR60.Close;
	DMFiscal.TR60.UnPrepare;
	DMFiscal.TR60.SQL.Clear;
	DMFiscal.TR60.SQL.Add('SELECT * FROM R60 WHERE');
	DMFiscal.TR60.SQL.Add('(DTEMISSAO BETWEEN :data_ini AND :data_fim)');
	DMFiscal.TR60.SQL.Add('ORDER BY DTEMISSAO');
	DMFiscal.TR60.ParamByName('data_ini').AsDateTime := StrToDate(DT01);
	DMFiscal.TR60.ParamByName('data_fim').asdatetime := StrToDate(Dt02);
	DMFiscal.TR60.Prepare;
	DMFiscal.TR60.Open;
	if  DMFiscal.TR60.RecordCount > 0
   Then begin
   	while not  DMFiscal.TR60.EOF do
      	begin
           ///////////////////////////////////
           // REGISTRO 60 M                 //
           // 60 M                          //
           ///////////////////////////////////
         	diminuir := 0;
            AddLogln(true, '        Inserir Registro60Analitico');
       	//Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
       	TempStr := Registro60M( DMFiscal.TR60.FieldByName('DTEMISSAO').AsString,      //Data_Emissao
         	DMFiscal.TR60.FieldByName('NUMSERIE').AsString,                          //Nro_Serie_Eqp
         	DMFiscal.TR60.FieldByName('NUMORDEM').AsString,                          //Nro_Ordem_Eqp
         	'2D',                             //Modelo_Doc
           FormatFloat('######000000',DMFiscal.TR60.FieldByName('NCONTINI').AsCurrency),                    //Nro_Contador_Inicio
         	FormatFloat('######000000',DMFiscal.TR60.FieldByName('NCONTFIM').AsCurrency),                       //Nro_Contador_Fim
         	FormatFloat('######000000',DMFiscal.TR60.FieldByName('NCONTREDZ').AsCurrency),                         //Nro_Contador_Z
         	DMFiscal.TR60.FieldByName('CONTREINICIO').AsString,                      //Contador_Reinicio
         	Formatcurr('0.00', (DMFiscal.TR60.FieldByName('VLRVNDBRUTA').AsCurrency)),   //Valor_Venda_Bruta
         	formatcurr('0.00', DMFiscal.TR60.FieldByName('VLRTGERAL').AsCurrency), //Valor_Total_Geral
           ' ' //brancos
           );
       	//Executa o tratamento da string temporária testando se houve erro
       	//Caso haja erro, executa o log das informações inconsistentes no RichEdit
       	if not VerificaSIntegra(TempStr)
           then begin
         		qnt_erro := qnt_erro + 1;
         		Result := False;
               Err_Msg := Err_Msg + #13 +
           	'    COD_R60M: ' +
           	DMFiscal.TR60.FieldByName('COD_r60').AsString ;
               AddLogln(true, '            S. ' + DMFiscal.TR60.FieldByName('DTEMISSAO').AsString + ' - FALHA - ' + TempStr);
        	end
       	else Begin
        		qnt_ok := qnt_ok + 1;
           End;

           ///////////////////////////////////
           // REGISTRO 60 A                 //
           // 60 A                          //
           ///////////////////////////////////

       	//Registro60Analitico - Registro de informação de operações/prestações realizadas com ECF
       	//Quanto ao Cancelamento
       	if DMFiscal.TR60.FieldByName('cancelamento').AsCurrency > 0
           then begin
            	diminuir := Diminuir + DMFiscal.TR60.FieldByName('cancelamento').AsCurrency;
               AddLogln(true, '        - Cancelamento');
         		//Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
         		TempStr := Registro60A(DMFiscal.TR60.FieldByName('DTEMISSAO').AsString,      //Data_Emissao
           	DMFiscal.TR60.FieldByName('NUMSERIE').AsString,                          //Nro_PDV
           	'CANC',                                                                //S_Trib_Aliquota
           	formatcurr('0.00', DMFiscal.TR60.FieldByName('cancelamento').AsCurrency), //Valor_TParcial
               ' ' //brancos
           	);

         		//Executa o tratamento da string temporária testando se houve erro
         		//Caso haja erro, executa o log das informações inconsistentes no RichEdit
         		if not VerificaSIntegra(TempStr)
               then begin
           		qnt_erro := qnt_erro + 1;
           		Result := False;

           		Err_Msg := Err_Msg + #13 +
             		'    COD_R60: ' + DMFiscal.TR60.FieldByName('COD_R60').AsString + #13 ;

                   AddLogln(true, '             S. ' + DMFiscal.TR60.FieldByName('DTEMISSAO').AsString + ' - FALHA - ' + TempStr);
          		end
         		else Begin
          			qnt_ok := qnt_ok + 1;
//                   AddLogln(true, '             S. ' + DMFiscal.TR60.FieldByName('NUMSERIE').AsString + ' - OK');
               End;
       	end;

       	//Registro60Analitico - Registro de informação de operações/prestações realizadas com ECF
       	//Quanto ao Desconto
       	if DMFiscal.TR60.FieldByName('desconto').AsCurrency > 0
       	then begin
           diminuir := Diminuir + DMFiscal.TR60.FieldByName('desconto').AsCurrency;

               AddLogln(true, '         - Desconto');
       		//Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
         		TempStr := Registro60A(DMFiscal.TR60.FieldByName('DTEMISSAO').AsString,      //Data_Emissao
           	DMFiscal.TR60.FieldByName('NUMSERIE').AsString,                          //Nro_PDV
           	'DESC',                                                                //S_Trib_Aliquota
           	formatcurr('0.00', DMFiscal.TR60.FieldByName('desconto').AsCurrency),           //Valor_TParcial
               '' //brancos
               );

         		//Executa o tratamento da string temporária testando se houve erro
         		//Caso haja erro, executa o log das informações inconsistentes no RichEdit
         		if not VerificaSIntegra(TempStr)
           	then begin
           		qnt_erro := qnt_erro + 1;
           		Result := False;
               	Err_Msg := Err_Msg + #13 +
             		'    COD_R60: ' + DMFiscal.TR60.FieldByName('DTEMISSAO').AsString;
          		end
         		else Begin
          			qnt_ok := qnt_ok + 1;
           	End;
        	end;

        	//Registro60Analitico - Registro de informação de operações/prestações realizadas com ECF
        	//Quanto a Substituição Tributaria
        	if DMFiscal.TR60.FieldByName('SUBTRIBUTARIA').AsCurrency > 0
        	then begin
               AddLogln(true, '        - Substituição Tributaria');
        		//Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
         		TempStr := Registro60A(DMFiscal.TR60.FieldByName('DTEMISSAO').AsString,          //Data_Emissao
           	DMFiscal.TR60.FieldByName('NUMSERIE').AsString,                              //Nro_PDV
           	'F',                                                                       //S_Trib_Aliquota
           	formatcurr('0.00', DMFiscal.TR60.FieldByName('SUBTRIBUTARIA').AsCurrency), //Valor_TParcial
				' '
              	);

         		//Executa o tratamento da string temporária testando se houve erro
         		//Caso haja erro, executa o log das informações inconsistentes no RichEdit
         		if not VerificaSIntegra(TempStr) then
          		begin
           		qnt_erro := qnt_erro + 1;
           		Result := False;

           		Err_Msg := Err_Msg + #13 +
            	 	'    COD_R60: ' + DMFiscal.TR60.FieldByName('DTEMISSAO').AsString;
          		end
         		else Begin
          			qnt_ok := qnt_ok + 1;
         	  End;
        	end;
       	for i := 1 to 5 do
       	begin
       		if (DMFiscal.TR60.FieldByName('VLRTPARC0' + IntToStr(i)).AsCurrency > 0)
         		then begin
                   diminuir := Diminuir + DMFiscal.TR60.FieldByName('VLRTPARC0' + IntToStr(i)).AsCurrency;
           		XAliqouta:=TiraCaracter(FormatFloat('0.00',  DMFiscal.TR60.FieldByName('ALQ0' + IntToStr(i)).AsCurrency), ',');
       			XAliqouta:=ConcatZero(XAliqouta, 4);
           		//Registro60Analitico - Registro de informação de operações/prestações realizadas com ECF
           		//Quanto a Não Tributação
           		//Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
                   If Strtofloat(XAliqouta)=0
                   Then Begin
           			TempStr := Registro60A(DMFiscal.TR60.FieldByName('DTEMISSAO').AsString,                //Data_Emissao
             			DMFiscal.TR60.FieldByName('NUMSERIE').AsString,                                    //Nro_PDV
             			'I',       //S_Trib_Aliquota
             			formatcurr('0.00', DMFiscal.TR60.FieldByName('VLRTPARC0' + IntToStr(i)).AsCurrency), //Valor_TParcial
						' '
             			);
                   End
                   Else Begin
           			TempStr := Registro60A(DMFiscal.TR60.FieldByName('DTEMISSAO').AsString,                //Data_Emissao
             			DMFiscal.TR60.FieldByName('NUMSERIE').AsString,                                    //Nro_PDV
             			FormatCurr('0000',  StrToFloat(XAliqouta)),       //S_Trib_Aliquota
             			formatcurr('0.00', DMFiscal.TR60.FieldByName('VLRTPARC0' + IntToStr(i)).AsCurrency), //Valor_TParcial
                       ' '
             			);
                   End;
           		//Executa o tratamento da string temporária testando se houve erro
           		//Caso haja erro, executa o log das informações inconsistentes no RichEdit
           		if not VerificaSIntegra(TempStr)
               	then begin
             			qnt_erro := qnt_erro + 1;
             			Result := False;

             			Err_Msg := Err_Msg + #13 +
               		'    COD_R60: ' + DMFiscal.TR60.FieldByName('DTEMISSAO').AsString ;
            		end
           		else Begin
            			qnt_ok := qnt_ok + 1;
               	End;
          		end;
       	end;
       	//Registro60Analitico - Registro de informação de operações/prestações realizadas com ECF
        	//Quanto a Isento
        	//if DMFiscal.TR60.FieldByName('SUBTRIBUTARIA').AsCurrency > 0
        	//then begin
           //******
           //*******
           //******
           //*****
           //******
           {
               AddLogln(true, '        - Isento');
        		//Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
         		TempStr := Registro60A(DMFiscal.TR60.FieldByName('DTEMISSAO').AsString,          //Data_Emissao
           	DMFiscal.TR60.FieldByName('NUMSERIE').AsString,                              //Nro_PDV
           	'I',                                                                       //S_Trib_Aliquota
           	formatcurr('0.00', (DMFiscal.TR60.FieldByName('VLRVNDBRUTA').AsCurrency - Diminuir)), //Valor_TParcial
           	''                                     //Brancos
           	);

         		//Executa o tratamento da string temporária testando se houve erro
         		//Caso haja erro, executa o log das informações inconsistentes no RichEdit
         		if not VerificaSIntegra(TempStr) then
          		begin
           		qnt_erro := qnt_erro + 1;
           		Result := False;

           		Err_Msg := Err_Msg + #13 +
            	 	'    COD_R60: ' + DMFiscal.TR60.FieldByName('DTEMISSAO').AsString;
          		end
         		else Begin
          			qnt_ok := qnt_ok + 1;
         	  End;}
        	//end;
       	if not DMFiscal.TR60.EOF then
         		DMFiscal.TR60.Next;

       	if quit_sintegra then
         		exit;

   	end;
	end;
   ///////////////////////////////////
   // REGISTRO 60 R                 //
   // 60 R                          //
   ///////////////////////////////////
   //Informar Registro 60R com resumo de movimentação por produtos
   //Registro60ResumoMensal - Registro de informação de operações/prestações realizadas
   //com ECF, Registro de Produto ou serviço processado em equipamento emissor de cupom fiscal.
	//Executa a seleção dos registros no banco de dados
	DMFiscal.TAlx.Close;
	DMFiscal.TAlx.UnPrepare;
	DMFiscal.TAlx.SQL.Clear;
	DMFiscal.TAlx.SQL.Add(' select vwsimilar.cod_subproduto, itenspedven.aliqicms, sum(itenspedven.qtdeprod) QUANT, SUM(itenspedven.valortotal) VALOR, ');
	DMFiscal.TAlx.SQL.Add(' SUM(itenspedven.baseicms) ICMS from itenspedven ');
	DMFiscal.TAlx.SQL.Add(' left join pedvenda on itenspedven.cod_pedven=pedvenda.cod_pedvenda ');
	DMFiscal.TAlx.SQL.Add(' left join vwsimilar on itenspedven.cod_estoque = vwsimilar.cod_estoque ');
	DMFiscal.TAlx.SQL.Add(' Left Join docfissaida on pedvenda.cod_pedvenda=docfissaida.cod_pedido ');
	DMFiscal.TAlx.SQL.Add('  where (docfissaida.COD_PERIODOFISCAL=:PERIODOFISCAL) and (pedvenda.FISCO=''ECF'') AND ((pedvenda.situacao = ''FECHADO'') OR (pedvenda.situacao = ''CANCELADO'')OR (pedvenda.situacao = ''DEVOLVIDO'')) ');
   DMFiscal.TAlx.ParamByName('PERIODOFISCAL').AsString:=IntToStr(DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsInteger);
	DMFiscal.TAlx.SQL.Add(' GROUP BY vwsimilar.cod_subproduto, itenspedven.aliqicms ');
	DMFiscal.TAlx.Prepare;
	DMFiscal.TAlx.Open;
	if  DMFiscal.TAlx.RecordCount > 0
   Then begin
   	while not  DMFiscal.TAlx.EOF do
      	begin
           XAliqouta:=FormatFloat('0.00',  DMFiscal.TAlx.FieldByName('aliqicms').AsCurrency);
       	XAliqouta:=FormatCurr('0000',  StrToFloat(XAliqouta));
           If (XAliqouta='0') or (XAliqouta='0,00')  or (XAliqouta='0000') Then
           	XAliqouta:='   I';
               
   		TempStr := Registro60R(Copy(DT01, 4, 7),       //00/00/0000 Mes_Ano_Emissao
           				FormatCurr('00000000000000', DMFiscal.TAlx.FieldByName('cod_subproduto').AsInteger), //Cod_Produto_Servico
                           FormatFloat('0.00', DMFiscal.TAlx.FieldByName('QUANT').AsCurrency),             //Quantidade
                           FormatFloat('0.00', DMFiscal.TAlx.FieldByName('VALOR').AsCurrency),             //Valor_Produto
                           FormatFloat('0.00', DMFiscal.TAlx.FieldByName('ICMS').AsCurrency),             //Base_ICMS
                           XAliqouta,          //S_Trib_Aliquota
							' ' //brancos
                          );
           AddR75(DMFiscal.TAlx.FieldByName('cod_subproduto').AsString,0);
           if not VerificaSIntegra(TempStr) then
           begin
               qnt_erro := qnt_erro + 1;
               Result := False;

               Err_Msg := Err_Msg + #13 +
               '    COD_R60: ' + DMFiscal.TR60.FieldByName('DTEMISSAO').AsString;
           end;
           DMFiscal.TAlx.Next;
       End;
   End;
end;

// Registro 53 - Registro de Total de Documento Fiscal quanto a substituição tributária
function TFGeraSintegra.sRegistro53(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
	TempStr, num_nf,incs_estadual, situacao: string;
   NumItem, CodCliente: Integer;
   XBaseIcmsSubTrib, XVlrIcmsSubTrib: Real;
   XNumRegistro: Integer;
   XTipoSitua: String;
begin
	Result := True;
   AddLogln(true, '');
   AddLogln(true, ' ** 53 **');
   AddLogln(true, '   Inserir Registro 53 - Registro de Total de Documento Fiscal quanto a substituição tributária');
   XNumRegistro:=0;
	///////////////////////////////
   //GERA REGISTRO 53 PARA SAIDAS
   //////////////////////////////
	//Executa a seleção dos registros no banco de dados
	DMFiscal.TAlx.Close;
   DMFiscal.TAlx.UnPrepare;
   DMFiscal.TAlx.SQL.Clear;
	DMFiscal.TAlx.SQL.Add(' select * from docfissaida ');
	DMFiscal.TAlx.SQL.Add(' join pedvenda on docfissaida.cod_pedido=pedvenda.cod_pedvenda ');
	DMFiscal.TAlx.SQL.Add(' WHERE ');
	DMFiscal.TAlx.SQL.Add(' (COD_PERIODOFISCAL=:PERIODOFISCAL) AND ((pedvenda.situacao = ''FECHADO'') OR (pedvenda.situacao = ''CANCELADO'')) AND (');
  	DMFiscal.TAlx.SQL.Add('(SERIE = ''01'') OR (SERIE = ''1'')  OR ');
	DMFiscal.TAlx.SQL.Add('(SERIE = ''1A'') OR');
	DMFiscal.TAlx.SQL.Add('(SERIE = ''03'') OR');
	DMFiscal.TAlx.SQL.Add('(SERIE = ''06'') OR');
	DMFiscal.TAlx.SQL.Add('(SERIE = ''22''))');
	DMFiscal.TAlx.SQL.Add(' ORDER BY DTEMISSAO, NUMDOCFIS, NUMDOCFISINT');
  	DMFiscal.TAlx.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
   DMFiscal.TAlx.Prepare;
   DMFiscal.TAlx.Open;

   AddLogln(true, '      --- SAIDAS ---');

	If DMFiscal.TAlx.RecordCount > 0
   Then begin
   	While not DMFiscal.TAlx.EOF do
    	begin
           IF DMFiscal.TAlx.FieldByName('SITUACAO').AsString='CANCELADO' Then
               XTipoSitua:='S'
           Else
               XTipoSitua:='N';

   		//SELECIONA O CLIENTE
       	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMFiscal.TAlx.FieldByName('COD_CLIENTE').AsString, '')=False Then
       		AddLogln(true, '             - Cliente do Pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '')=False Then
       		AddLogln(true, '             - Cliente do Pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '')=False Then
              If FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '')=False Then
                  AddLogln(true, '             - Cliente do Pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString, '')=False Then
          		AddLogln(true, '             - A Cidade referente ao Pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '')=False Then
          		AddLogln(true, '             - O Estado referente ao Pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMFiscal.TAlx.FieldByName('COD_CFOP').AsString, '')=False Then
          		AddLogln(true, '             - O CFOP referente ao Pedido: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - Não foi encontrado!');

           If DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString = '' Then
               incs_estadual := 'ISENTO'
           Else
               incs_estadual := DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString;

           num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
           num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 últimos digitos da NF

           If DMFiscal.TAlx.FieldByName('BASCALSUBS').AsCurrency<=0 Then
               XBaseIcmsSubTrib:=DMFiscal.TAlx.FieldByName('vlrtotprod').AsCurrency
           Else
               XBaseIcmsSubTrib:=DMFiscal.TAlx.FieldByName('BASCALSUBS').AsCurrency;

           If DMFiscal.TAlx.FieldByName('vlricmsubs').AsCurrency<=0 Then
               XVlrIcmsSubTrib:=DMFiscal.TAlx.FieldByName('vlrtotprod').AsCurrency
           Else
               XVlrIcmsSubTrib:=DMFiscal.TAlx.FieldByName('vlricmsubs').AsCurrency;

               XNumRegistro:=XNumRegistro+1;
       		//Registro 53 - Registro de Total de Documento Fiscal quanto a substituição tributária
       		//Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
       		TempStr := Registro53(DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString, //CNPJ DO REMETENTE OU DESTINATARIO
         		incs_estadual, // INSCRICAO ESTADUAL DO RMETENTE OU DESTINATARIO
         		DMFiscal.TAlx.FieldByName('DTEMISSAO').AsString, //DT DE EMISSAO OU RECEBIMENTO
           	DMGEOGRAFIA.TEstado.FieldByName('UF_ESTADO').AsString, //UF DO REMETENTE OU DESTINATARIO
           	DMFiscal.TAlx.FieldByName('MODELONF').AsString, //Modelo da Nota Fiscal
           	DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie NF
         		num_nf, //Numero NF
           	DMESTOQUE.TCFOP.FieldByName('CFOP').AsString, //CODIGO CFOP
				'P', //Emitente da NF P-Proprio, T-Terceiro
         		FormatCurr('0.00', XBaseIcmsSubTrib), // Base_ICMS - Base de cálculo de retenção do ICMS
         		FormatCurr('0.00', XVlrIcmsSubTrib), //ICMS_Retido - ICMS retido pelo substituto
         		FormatCurr('0.00', (DMFiscal.TAlx.FieldByName('VLRSEG').AsCurrency + DMFiscal.TAlx.FieldByName('VLRFRETE').AsCurrency + DMFiscal.TAlx.FieldByName('VLROUTRASDESP').AsCurrency)), //soma das despesas acessórias (frete, seguro e outras - com 2 decimais)
         		XTipoSitua, //Código que identifica o tipo da Antecipação Tributária
           	' ',
               ' '
         		);

               Trata_SIntegra_Str(TempStr, 'Erro53');
           AddLogln(false, '');
           AddLogln(false, TempStr);

           //Executa o tratamento da string temporária testando se houve erro
           //Caso haja erro, executa o log das informações inconsistentes no RichEdit
           If not VerificaSIntegra(TempStr)
           Then Begin
               qnt_erro := qnt_erro + 1;
               Result := False;

               Err_Msg := Err_Msg + #13 +
               '    Cod_Pedidos: ' + DMFiscal.TAlx.FieldByName('numped').AsString;

               AddLogln(true, '             P. ' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - FALHA - ' + TempStr);
           end
           else Begin
               qnt_ok := qnt_ok + 1;
//               AddLogln(true, '             P. ' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - OK');
           End;

     		If not DMFiscal.TAlx.EOF then
       		DMFiscal.TAlx.Next;

     		If quit_sintegra then
       		exit;
      End;
   end
   Else Begin
       AddLogln(true, '                 - Nenhuma saida foi encontrada.');
   End;
   {

   ////////////////////////////////
   //GERA REGISTRO 53 PARA ENTRADAS
   ////////////////////////////////
	//Executa a seleção dos registros no banco de dados
 	DMFiscal.TAlx.Close;
   DMFiscal.TAlx.UnPrepare;
   DMFiscal.TAlx.SQL.Clear;
	DMFiscal.TAlx.SQL.Add('  select * from docfis ');
	DMFiscal.TAlx.SQL.Add('   join pedcompra on pedcompra.cod_pedcomp=docfis.cod_pedido ');
	DMFiscal.TAlx.SQL.Add('   WHERE ');
	DMFiscal.TAlx.SQL.Add('    (COD_PERIODOFISCAL:=PERIODOFISCAL) AND ((pedcompra.situacao = ''FECHADO'') ');
	DMFiscal.TAlx.SQL.Add('   OR (pedcompra.situacao = ''CANCELADO'')) AND ( ');
	DMFiscal.TAlx.SQL.Add('  (SERIE = ''01'') OR (SERIE = ''1'')  OR ');
	DMFiscal.TAlx.SQL.Add('  (SERIE = ''1A'') OR ');
	DMFiscal.TAlx.SQL.Add('  (SERIE = ''03'') OR ');
	DMFiscal.TAlx.SQL.Add('  (SERIE = ''06'') OR ');
	DMFiscal.TAlx.SQL.Add('  (SERIE = ''22'')) ');
	DMFiscal.TAlx.SQL.Add('   ORDER BY DTEMISSAO, NUMDOCFIS ');
  	DMFiscal.TAlx.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
   DMFiscal.TAlx.Prepare;
   DMFiscal.TAlx.Open;

   AddLogln(true, '      --- ENTRADAS---');

	If DMFiscal.TAlx.RecordCount > 0
   Then begin
   	While not DMFiscal.TAlx.EOF do
    	begin
   		//SELECIONA O CLIENTE
       	If FiltraTabela(DMPESSOA.WFornecedor, 'vwfornec', 'cod_fornec', DMFiscal.TAlx.FieldByName('COD_fornec').AsString, '')=False Then
       		AddLogln(true, '             - Cliente do Pedido: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WFornecedor.FieldByName('COD_PESSOA').AsString, '')=False Then
       		AddLogln(true, '             - Cliente do Pedido: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '')=False Then
              If FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '')=False Then
                  AddLogln(true, '             - Cliente do Pedido: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString, '')=False Then
          		AddLogln(true, '             - A Cidade referente ao Pedido: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '')=False Then
          		AddLogln(true, '             - O Estado referente ao Pedido: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMFiscal.TAlx.FieldByName('COD_CFOP').AsString, '')=False Then
          		AddLogln(true, '             - O CFOP referente ao Pedido: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Não foi encontrado!');

           If DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString = '' Then
               incs_estadual := 'ISENTO'
           Else
               incs_estadual := DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString;

           num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
           num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 últimos digitos da NF

           If DMFiscal.TAlx.FieldByName('BASCALSUBS').AsCurrency<=0 Then
               XBaseIcmsSubTrib:=DMFiscal.TAlx.FieldByName('vlrtotprod').AsCurrency
           Else
               XBaseIcmsSubTrib:=DMFiscal.TAlx.FieldByName('BASCALSUBS').AsCurrency;

           If DMFiscal.TAlx.FieldByName('vlricmsubs').AsCurrency<=0 Then
               XVlrIcmsSubTrib:=DMFiscal.TAlx.FieldByName('vlrtotprod').AsCurrency
           Else
               XVlrIcmsSubTrib:=DMFiscal.TAlx.FieldByName('vlricmsubs').AsCurrency;


           XNumRegistro:=XNumRegistro+1;
           //Registro 53 - Registro de Total de Documento Fiscal quanto a substituição tributária
           //Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
           TempStr := Registro53(DMPESSOA.WFornecedor.FieldByName('CPFCNPJ').AsString, //CNPJ DO REMETENTE OU DESTINATARIO
           incs_estadual, // INSCRICAO ESTADUAL DO RMETENTE OU DESTINATARIO
           DMFiscal.TAlx.FieldByName('DTEMISSAO').AsString, //DT DE EMISSAO OU RECEBIMENTO
           DMGEOGRAFIA.TEstado.FieldByName('UF_ESTADO').AsString, //UF DO REMETENTE OU DESTINATARIO
           DMFiscal.TAlx.FieldByName('MODELONF').AsString, //Modelo da Nota Fiscal
           DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie NF
           num_nf, //Numero NF
           DMESTOQUE.TCFOP.FieldByName('CFOP').AsString, //CODIGO CFOP
           'P', //Emitente da NF P-Proprio, T-Terceiro
           FormatCurr('0.00', XBaseIcmsSubTrib), //Base de cálculo de retenção do ICMS
           FormatCurr('0.00', XVlrIcmsSubTrib), //ICMS retido pelo substituto
           FormatCurr('0.00', (DMFiscal.TAlx.FieldByName('VLRSEG').AsCurrency + DMFiscal.TAlx.FieldByName('VLRFRETE').AsCurrency + DMFiscal.TAlx.FieldByName('VLROUTRASDESP').AsCurrency)), //soma das despesas acessórias (frete, seguro e outras - com 2 decimais)
           'N', //Código que identifica o tipo da Antecipação Tributária
           '' // Brancos
           );

           Trata_SIntegra_Str(TempStr, 'Erro53');
           AddLogln(false, '');
           AddLogln(false, TempStr);

           //Executa o tratamento da string temporária testando se houve erro
           //Caso haja erro, executa o log das informações inconsistentes no RichEdit
           If not VerificaSIntegra(TempStr)
           Then Begin
               qnt_erro := qnt_erro + 1;
               Result := False;

               Err_Msg := Err_Msg + #13 +
               '    Cod_Pedidos: ' + DMFiscal.TAlx.FieldByName('numped').AsString;

               AddLogln(true, '             P. ' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - FALHA - ' + TempStr);
           end
           else Begin
               qnt_ok := qnt_ok + 1;
//               AddLogln(true, '             P. ' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - OK');
           End;

     		If not DMFiscal.TAlx.EOF then
       		DMFiscal.TAlx.Next;

     		If quit_sintegra then
       		exit;
      End;
   end
   Else Begin
       AddLogln(true, '                 - Nenhuma entrada foi encontrada.');
   End;

   ///////////////////////////////
   //GERA REGISTRO 53 PARA ORDENS
   //////////////////////////////
	//Executa a seleção dos registros no banco de dados
	DMFiscal.TAlx.Close;
   DMFiscal.TAlx.UnPrepare;
   DMFiscal.TAlx.SQL.Clear;
	DMFiscal.TAlx.SQL.Add(' select * from DOCFISORD ');
	DMFiscal.TAlx.SQL.Add(' join ORDEM on DOCFISORD.COD_ORDEM=ORDEM.COD_ORDEM ');
	DMFiscal.TAlx.SQL.Add(' WHERE ');
	DMFiscal.TAlx.SQL.Add(' (COD_PERIODOFISCAL=:PERIODO) AND ((ORDEM.STATUS = ''FECHADO'') OR (ORDEM.STATUS = ''CANCELADO'')) AND (');
  	DMFiscal.TAlx.SQL.Add('(SERIE = ''01'') OR (SERIE = ''1'')  OR ');
	DMFiscal.TAlx.SQL.Add('(SERIE = ''1A'') OR');
	DMFiscal.TAlx.SQL.Add('(SERIE = ''03'') OR');
	DMFiscal.TAlx.SQL.Add('(SERIE = ''06'') OR');
	DMFiscal.TAlx.SQL.Add('(SERIE = ''22''))');
	DMFiscal.TAlx.SQL.Add(' ORDER BY DTEMISSAO, NUMDOCFIS');
  	DMFiscal.TAlx.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
   DMFiscal.TAlx.Prepare;
   DMFiscal.TAlx.Open;

   AddLogln(true, '      --- SAIDAS O.S.---');
	If DMFiscal.TAlx.RecordCount > 0
   Then begin
   	While not DMFiscal.TAlx.EOF do
    	begin
       	//SEELCIONA CFOP DE ACORDO COM OS ITENS DA ORDEM
           DMServ.TPOrd.CLOSE;
           DMServ.TPOrd.SQL.Clear;
           DMServ.TPOrd.SQL.Add(' SELECT * FROM itprodord WHERE itprodord.cod_ordem=:ORDEM ');
           DMServ.TPOrd.ParamByName('ORDEM').AsString:=DMFiscal.TAlx.FieldByName('COD_ORDEM').AsString;
           DMServ.TPOrd.Open;

   		//SELECIONA O CLIENTE
        	If FiltraTabela(DMPESSOA.WCliente, 'VWCLIENTE', 'COD_CLIENTE', DMFiscal.TAlx.FieldByName('COD_CLIENTE').AsString, '')=False Then
       		AddLogln(true, '             - Cliente do Pedido: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMPESSOA.TPessoa, 'PESSOA', 'COD_PESSOA', DMPESSOA.WCliente.FieldByName('COD_PESSOA').AsString, '')=False Then
       		AddLogln(true, '             - Cliente do Pedido: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMPESSOA.TPessoaJ, 'PESSOAJ', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '')=False Then
              If FiltraTabela(DMPESSOA.TPessoaF, 'PESSOAF', 'COD_PESSOA', DMPESSOA.TPessoa.FieldByName('COD_PESSOA').AsString, '')=False Then
                  AddLogln(true, '             - Cliente do Pedido: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMPESSOA.TPessoa.FieldByName('COD_CIDADE').AsString, '')=False Then
          		AddLogln(true, '             - A Cidade referente ao Pedido: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Não foi encontrado!');
       	If FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '')=False Then
          		AddLogln(true, '             - O Estado referente ao Pedido: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Não foi encontrado!');
           If Not DMServ.TPOrd.IsEmpty
           Then Begin
               If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'CFOP', DMServ.TPOrd.FieldByName('CFOP').AsString, '')=False Then
                   AddLogln(true, '             - O CFOP referente ao Pedido: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Não foi encontrado!');
           End
           Else Begin
               If FiltraTabela(DMESTOQUE.TCFOP, 'CFOP', 'COD_CFOP', DMFiscal.TAlx.FieldByName('COD_CFOP').AsString, '')=False Then
                   AddLogln(true, '             - O CFOP referente ao Pedido: '+DMFiscal.TAlx.FieldByName('NUMERO').AsString+' - Não foi encontrado!');
           End;
           If DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString = '' Then
               incs_estadual := 'ISENTO'
           Else
               incs_estadual := DMPESSOA.TPessoaJ.FieldByName('INSC_EST').AsString;

           num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
           num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 últimos digitos da NF

           If DMFiscal.TAlx.FieldByName('BASCALSUBS').AsCurrency<=0 Then
               XBaseIcmsSubTrib:=DMFiscal.TAlx.FieldByName('vlrtotprod').AsCurrency
           Else
               XBaseIcmsSubTrib:=DMFiscal.TAlx.FieldByName('BASCALSUBS').AsCurrency;

           If DMFiscal.TAlx.FieldByName('vlricmsubs').AsCurrency<=0 Then
               XVlrIcmsSubTrib:=DMFiscal.TAlx.FieldByName('vlrtotprod').AsCurrency
           Else
               XVlrIcmsSubTrib:=DMFiscal.TAlx.FieldByName('vlricmsubs').AsCurrency;


           Try
				FormatCurr('0.00', XBaseIcmsSubTrib);
           Except
//				MessageDlg('Verifique a base de substituição ICMS', mtWarning, [mbOK], 0);
           End;
           Try
				FormatCurr('0.00', DMFiscal.TAlx.FieldByName('VLRICMSUBS').AsCurrency);
           Except
//				MessageDlg('Verifique o Valor de ICMS Substituição', mtWarning, [mbOK], 0);
           End;

           Try
				FormatCurr('0.00', (DMFiscal.TAlx.FieldByName('VLRSEG').AsCurrency + DMFiscal.TAlx.FieldByName('VLRFRETE').AsCurrency + DMFiscal.TAlx.FieldByName('VLROUTRASDESP').AsCurrency))
           Except
				MessageDlg('Verifique o Calculo de Outros', mtWarning, [mbOK], 0);
           End;

           //Registro 53 - Registro de Total de Documento Fiscal quanto a substituição tributária
           TRY
               XNumRegistro:=XNumRegistro+1;
               //Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
               TempStr := Registro53(DMPESSOA.WCliente.FieldByName('CPFCNPJ').AsString, //CNPJ DO REMETENTE OU DESTINATARIO
               incs_estadual, // INSCRICAO ESTADUAL DO RMETENTE OU DESTINATARIO
               DMFiscal.TAlx.FieldByName('DTEMISSAO').AsString, //DT DE EMISSAO OU RECEBIMENTO
               DMGEOGRAFIA.TEstado.FieldByName('UF_ESTADO').AsString, //UF DO REMETENTE OU DESTINATARIO
               DMFiscal.TAlx.FieldByName('MODELONF').AsString, //Modelo da Nota Fiscal
               DMFiscal.TAlx.FieldByName('SERIE').AsString, //Serie NF
               num_nf, //Numero NF
               DMESTOQUE.TCFOP.FieldByName('CFOP').AsString, //CODIGO CFOP
               'P', //Emitente da NF P-Proprio, T-Terceiro
               FormatCurr('0.00', XBaseIcmsSubTrib), //Base de cálculo de retenção do ICMS
               FormatCurr('0.00', XVlrIcmsSubTrib), //ICMS retido pelo substituto
               FormatCurr('0.00', (DMFiscal.TAlx.FieldByName('VLRSEG').AsCurrency + DMFiscal.TAlx.FieldByName('VLRFRETE').AsCurrency + DMFiscal.TAlx.FieldByName('VLROUTRASDESP').AsCurrency)), //soma das despesas acessórias (frete, seguro e outras - com 2 decimais)
               'N', //Código que identifica o tipo da Antecipação Tributária
               '' // Brancos
               );
               Trata_SIntegra_Str(TempStr, 'Erro53');
               AddLogln(false, '');
               AddLogln(false, TempStr);

               //Executa o tratamento da string temporária testando se houve erro
               //Caso haja erro, executa o log das informações inconsistentes no RichEdit
               If not VerificaSIntegra(TempStr)
               Then Begin
                   qnt_erro := qnt_erro + 1;
                   Result := False;

                   Err_Msg := Err_Msg + #13 +
                   '    Cod_Pedidos: ' + DMFiscal.TAlx.FieldByName('NUMERO').AsString;

                   AddLogln(true, '             P. ' + DMFiscal.TAlx.FieldByName('NUMERO').AsString + ' - FALHA - ' + TempStr);
               end
               else Begin
                   qnt_ok := qnt_ok + 1;
//                   AddLogln(true, '             P. ' + DMFiscal.TAlx.FieldByName('NUMERO').AsString + ' - OK');
               End;

           EXCEPT
           	MessageDlg('O Registro 53 para NF: '+num_nf+' Não foi gerado', mtWarning, [mbOK], 0);
           End;

     		If not DMFiscal.TAlx.EOF then
       		DMFiscal.TAlx.Next;

     		If quit_sintegra then
       		exit;
      End;
   end
   Else Begin
       AddLogln(true, '                 - Nenhuma saida o.s. foi encontrada.');
   End;
    }
end;



//Registro10 - Mestre do Estabelecimento - Indentifição do Estabelecimento informante
function TFGeraSintegra.sRegistro10(var Err_Msg: string): boolean;
var
 TempStr: string;
begin
   AddLogln(true, ' ** 10 **');
   AddLogln(true, '   Inserir Registro10 - Mestre do Estabelecimento - Indentifição do Estabelecimento informante');

   //Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
   TempStr := Registro10(ValidaAcentos(DMMACS.TEmpresa.FieldByName('CNPJ').AsString),     //CGC
   Trim(DMMACS.TEmpresa.FieldByName('INSC_EST').AsString),                    //IE
   ValidaAcentos(DMMACS.TEmpresa.FieldByName('RAZAO_SOCIAL').AsString),           //Nome_Contribuinte
   ValidaAcentos(DMGEOGRAFIA.TCidade.FieldByName('NOME').AsString),                   //Municipio
   ValidaAcentos(DMGEOGRAFIA.TEstado.FieldByName('UF_ESTADO').AsString),                          //UF
   ValidaAcentos(DMMACS.TEmpresa.FieldByName('FONE').AsString),                         //Fax
   DT01,                                                     //Data Inicial
   Dt02,                                                       //Data Final
   '3',                                                                         //Convênio 31/99
   '3'{IntToStr(combobox2.ItemIndex + 1)},                                           //InterEstaduais - com ou sem Subs. Trib.
   '1'{IntToStr(combobox3.ItemIndex + 1)}                                            //Normal
   );

   AddLogln(false, '');
   AddLogln(false, TempStr);

 //Executa o tratamento da string temporária testando se houve erro
 Result := VerificaSIntegra(''+TempStr);

 //Caso haja erro, executa o log das informações inconsistentes no RichEdit
 if not Result
 then begin
   Err_Msg := '    CNPJ: ' + DMMACS.TEmpresa['CNPJ']+' ('+TempStr+')';
 end;
end;

//Interrompe processamento do Banco de Dados por intervenção do usuário.
function TFGeraSintegra.Sintegra_Process: boolean;
begin
 progressbar1.stepit;

 Result := quit_sintegra;
 if Result then
  begin

       AddLogln(false, 'Arquivo SINTEGRA cancelado...');
       PausePStatus(false, false);

  end;
end;

procedure TFGeraSintegra.cmdGerarClick(Sender: TObject);
var
 Err_Msg: string;
 Qnt_Ok, Qnt_Erro, Total_Ok, Total_Erro: integer;
begin
   If CBR74.Checked=True
   Then Begin
        Mensagem('I N F O R M A Ç Ã O', 'As informações relacionadas ao Registro 74 (inventário de estoque) serão relacionadas ao estoque atual.', '', 1,1, false, 'i');
   End;

   Try
       DMMACS.Transaction.CommitRetaining;
       FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');

       Qnt_Ok     := 0;
       Qnt_Erro   := 0;
       Total_Ok   := 0;
       Total_Erro := 0;
       XTipoEmpresa:=DMMACS.TEmpresa.FieldByName('TIPOEMPRESANF').AsString;

       Gera_R75      := False;
       quit_sintegra := False;

       //prepara variaveis, paineis, richtextos
       IniciaPStatus(true);

       //Todos os registros do arquivo 75 estarão contidos na tabela tmp esta tabela esta sendo zerada agora
       IniciaR75;

       //GERA DT INICIAL E FINAL
       Try
          DT01 := DMMACS.TPeriodoFiscal.FieldByName('DTINICIAL').AsString;
          Dt02 := DMMACS.TPeriodoFiscal.FieldByName('DTFINAL').AsString;

          AddLogln(true, '****************************************************');
          AddLogln(true, '****    A R Q U I V O   S I N T E G R A    ****');
          AddLogln(true, '-----------------------------------------------------------------------');
          AddLogln(true, '----   INICIO LOG: ' + DT01 + ' ' + Dt02 +'   -----');
          AddLogln(true, '-----------------------------------------------------------------------');
          AddLogln(true, '');

          AddLogln(true, '****  ENTRE: ' + DT01 + ' - '+ Dt02 +'  ****');
          AddLogln(true, '*****************************************************');
          nomeArquivo := FormatDateTime('dd', StrToDate(DT01)) + '_' + FormatDateTime('dd.mm.yyyy', StrToDate(Dt02)) + '_' + FormatDateTime('hh.mm', Time());
       Except
            Mensagem('I N F O R M A Ç Ã O', 'Verifique se o mês e o ano estão corretos!', '', 1,1, false, 'i');
            PausePStatus(false, false);
            Exit;
       End;

       AddLogln(true,'');

       application.ProcessMessages;

       progressbar1.Position := 10;
       ProgressBar1.Refresh;

       AddLogln(true, ' ** Iniciar Sintegra...');

       Try
          Inicia_Sintegra;
          AddLog(true, '   OK');
       Except
           AddLog(true, '   Erro na tentativa de acesso a dll.');
           Mensagem('I N F O R M A Ç Ã O', 'Ocorreu um erro na tentativa de iniciar o Sintegra. Verifique se o arquivo SIntegra32Dll.dll está em seu computador.', '', 1,1, false, 'i');
           Exit;
       End;

       progressbar1.Position := 20;
       ProgressBar1.Refresh;

       //GERA REGISTRO TIPO 10
       if not sRegistro10(Err_Msg)
       then begin
           AddLog(true, '   FALHA');
           PausePStatus(false, false);
           Mensagem('I N F O R M A Ç Ã O', 'Verifique os dados do Estabelecimento! '+Err_Msg, '', 1,1, false, 'i');
           Exit;
       End
       Else Begin
           AddLog(true, '   OK');
       End;

       if sintegra_process then
           exit;

       progressbar1.Position := 30;
       ProgressBar1.Refresh;

       //GERA REGISTRO TIPO 11
       if not sRegistro11(Err_Msg)
       then begin
           AddLog(true, '   FALHA');
           PausePStatus(false, false);
           Mensagem('I N F O R M A Ç Ã O', 'Verifique os dados complementares do Estabelecimento!', '', 1,1, false, 'i');
           Exit;
       End
       Else Begin
           AddLog(true, '   OK');
       End;

       if sintegra_process then
           exit;
       progressbar1.Position := 40;
       ProgressBar1.Refresh;

       //GERA REGISTRO TIPO 50 - Produtos e Serviços Vendidos
       If CBR50.Checked=True
       Then Begin
            If sRegistro50(Err_Msg, Qnt_Ok, Qnt_Erro)
            Then Begin
                 AddLog(true, 'OK');
            End
            Else Begin
                 AddLog(true, 'FALHA');
            End;
       End;

       //GERA REGISTRO TIPO 51 - Produtos e Serviços Vendidos
       If CBR51.Checked=True
       Then Begin
            If sRegistro51(Err_Msg, Qnt_Ok, Qnt_Erro)
            Then Begin
                 AddLog(true, 'OK');
            End
            Else Begin
                 AddLog(true, 'FALHA');
            End;
       End;

       if sintegra_process then
           exit;
       progressbar1.Position := 50;
       ProgressBar1.Refresh;

       //GERA REGISTRO TIPO 53
       If CBR53.Checked=True
       Then Begin
           If sRegistro53(Err_Msg, Qnt_Ok, Qnt_Erro)
           Then Begin
                 AddLog(true, 'OK');
            End
            Else Begin
                 AddLog(true, 'FALHA');
            End;
       End;

       //GERA REGISTRO TIPO 54
       If CBR54.Checked=True
       Then Begin
           If sRegistro54(Err_Msg, Qnt_Ok, Qnt_Erro)
           Then Begin
                 AddLog(true, 'OK');
            End
            Else Begin
                 AddLog(true, 'FALHA');
            End;
       End;

       if sintegra_process then
           exit;
       progressbar1.Position := 60;
       ProgressBar1.Refresh;

       //GERA REGISTRO TIPO 60
       If CBR60M.Checked=True
       Then Begin
           If sRegistro60(Err_Msg, Qnt_Ok, Qnt_Erro)
           Then Begin
                 AddLog(true, 'OK');
            End
            Else Begin
                 AddLog(true, 'FALHA');
            End;
       End;

       if sintegra_process then
           exit;
       progressbar1.Position := 70;
       ProgressBar1.Refresh;

       //GERA REGISTRO TIPO 70
       If CBR70.Checked=True
       Then Begin
           If sRegistro70(Err_Msg, Qnt_Ok, Qnt_Erro)
           Then Begin
                 AddLog(true, 'OK');
            End
            Else Begin
                 AddLog(true, 'FALHA');
            End;
       End;

       //GERA REGISTRO TIPO 74
       If CBR74.Checked=True
       Then Begin
           If sRegistro74(Err_Msg, Qnt_Ok, Qnt_Erro)
           Then Begin
                 AddLog(true, 'OK');
            End
            Else Begin
                 AddLog(true, 'FALHA');
            End;
       End;

       if sintegra_process then
           exit;
       progressbar1.Position := 80;
       ProgressBar1.Refresh;

       //GERA REGISTRO TIPO 75
       If ((CBR75.Checked) or (Gera_R75))
       Then Begin
           If sRegistro75(Err_Msg, Qnt_Ok, Qnt_Erro)
           Then Begin
                 AddLog(true, 'OK');
            End
            Else Begin
                 AddLog(true, 'FALHA');
            End;
       End;

       if sintegra_process then
           exit;

       Total_Ok := Total_Ok + Qnt_Ok;
       Total_Erro := Total_Erro + Qnt_Erro;
       Qnt_Ok := 0;
       Qnt_Erro := 0;

       progressbar1.Position := 85;
       ProgressBar1.Refresh;

       //GERA REGISTRO TIPO 90
       if sRegistro90 then
           Total_Ok := Total_Ok + 1
       else
           Total_Erro := Total_Erro + 1;

       if sintegra_process then
           exit;

       progressbar1.Position := 90;
       ProgressBar1.Refresh;
       Finaliza_Sintegra;

       progressbar1.Position := progressbar1.Max;
       ProgressBar1.Refresh;
       PausePStatus(false, true);

       AddLogln(true, '');
       AddLogln(true, 'Arquivo Sintegra gerado com sucesso.');
       AddLogln(true, '');
       AddLogln(true, '---- FIM LOG: ' + FormatDateTime('dd/mm/yyyy', StrToDate(DT01)) + ' ' + FormatDateTime('hh:mm:ss', Time())  + ' -----');
       Mensagem('I N F O R M A Ç Ã O', 'Arquivo Sintegra gerado com sucesso!', '', 1,1, false, 'i');
   Except

      On E: Exception Do
      begin
         AddLogln(true, '');
         AddLogln(true, 'Ocorreu uma falha ao gera o Arquivo Sintegra.');
         AddLogln(true, 'Retorno da exceção: ' + E.Message);
         If E.Message='Out of memory' Then
           AddLogln(true, '                    Erro de falta de memória física. Feche todas as aplicações e tente novamente. Se possível reinicie o computador antes de uma nova tentativa.' + E.Message);         
         AddLogln(true, '');
         AddLogln(true, '---- FIM LOG: ' + DT01 + ' ' + FormatDateTime('hh:mm:ss', Time()) + ' -----');
         PausePStatus(false, false);
         Mensagem('I N F O R M A Ç Ã O', 'Falha ao gerar Arquivo Sintegra. Verifique o log.', '', 1,1, false, 'i');
       end;
   End;

end;

procedure TFGeraSintegra.cmdSairClick(Sender: TObject);
begin
  inherited;
	Close;
end;

procedure TFGeraSintegra.FormActivate(Sender: TObject);
VAR
  Data: Integer;
  Mes:String;
  Year, Month, Day:word;
begin
  inherited;
   Caption:='Gerar Sintegra';
   PPrincipal.Visible:=True;
   PPrincipal.BringToFront;

   PPasso01.Visible:=True;
   PPasso01.BringToFront;
   //verifica automaticamente quais registros a empresa tem necessidade de emitir
   //NOTA FISCAL
   DMCAIXA.TCaixa.Close;
   DMCAIXA.TCaixa.SQL.Clear;
   DMCAIXA.TCaixa.SQL.Add(' Select * FROM caixa where (caixa.tipocupom=''NF'') OR caixa.tipocupom=''NFe'' ');
   DMCAIXA.TCaixa.Open;
   If not DMCAIXA.TCaixa.IsEmpty Then
       CbNotaFiscal.Checked:=True
   Else
       CbNotaFiscal.Checked:=False;
   //ECF
   DMCAIXA.TCaixa.Close;
   DMCAIXA.TCaixa.SQL.Clear;
   DMCAIXA.TCaixa.SQL.Add(' Select * FROM caixa where (caixa.tipocupom=''ECF'')');
   DMCAIXA.TCaixa.Open;
   If not DMCAIXA.TCaixa.IsEmpty Then
       CbCupomFiscal.Checked:=True
   Else
       CbCupomFiscal.Checked:=False;

  {
   //seta os registros a serem usados
   If DMMACS.TLoja.FieldByName('R50').AsString='True' Then
       CBR50.Checked:=True
   Else
       CBR50.Checked:=False;

   If DMMACS.TLoja.FieldByName('R51').AsString='True' Then
       CBR51.Checked:=True
   Else
       CBR51.Checked:=False;

   If DMMACS.TLoja.FieldByName('R53').AsString='True' Then
       CBR53.Checked:=True
   Else
       CBR53.Checked:=False;

   If DMMACS.TLoja.FieldByName('R54').AsString='True' Then
       CBR54.Checked:=True
   Else
       CBR54.Checked:=False;

   If DMMACS.TLoja.FieldByName('R60M').AsString='True' Then
       CBR60M.Checked:=True
   Else
       CBR60M.Checked:=False;

   If DMMACS.TLoja.FieldByName('R70').AsString='True' Then
       CBR70.Checked:=True
   Else
       CBR70.Checked:=False;


   If DMMACS.TLoja.FieldByName('R74').AsString='True' Then
       CBR74.Checked:=True
   Else
       CBR74.Checked:=False;

   If DMMACS.TLoja.FieldByName('R75').AsString='True' Then
       CBR75.Checked:=True
   Else
       CBR75.Checked:=False;   }

   diretorio := 'C:\MZR\Arquivos\Sintegra\';
   FiltraTabela(DMMACS.TLoja, 'LOJA', 'COD_LOJA', FMenu.LCODLOJA.Caption, '');
   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
   FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');
   FiltraPeriodos;
   RichEdit1.Visible:=False;
end;

procedure TFGeraSintegra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if key = vk_escape then
   quit_sintegra := True;
end;

function TFGeraSintegra.UltimoDiaMes(Mdt: TDateTime) : TDateTime;
//retorna o ultimo dia o mes, de uma data fornecida
var

  ano, mes, dia : word;

  mDtTemp : TDateTime;

begin

  Decodedate(mDt, ano, mes, dia);

  mDtTemp := (mDt - dia) + 33;

  Decodedate(mDtTemp, ano, mes, dia);

  Result := mDtTemp - dia;

end;

procedure TFGeraSintegra.IniciaPStatus(limpar:boolean);
Begin
    Panel9.BringToFront;
    Panel9.Visible := True;
    PPasso02.Visible:=True;
    PPasso02.BringToFront;
    btnVoltar.Enabled := False;
    btnAbrir.Enabled := False;
    btnSalvar.Enabled := False;
    RichEdit1.Visible := True;
    ProgressBar1.Position := 0;
    resultadoSintegra := '';
    If limpar
    Then Begin
        RichEdit1.Lines.Clear;
        RichEdit2.Lines.Clear;
    End;
End;

procedure TFGeraSintegra.PausePStatus(fechar, sintegra:boolean);
Begin

     Trata_SIntegra_Str(RichEdit1.Text, diretorio+'LOG\LOG'+nomeArquivo+'.txt');
     Trata_SIntegra_Str(RichEdit1.Text, diretorio+'LOG\LOG'+nomeArquivo+'_aux.txt');

     If fechar
     Then Begin
          Panel9.SendToBack;
          Panel9.Visible := False;
     End
     Else Begin
          btnVoltar.Enabled := True;

          If sintegra
          Then Begin
               btnAbrir.Enabled := True;
               btnSalvar.Enabled := True;
               ProgressBar1.Position := 100;
          End
          Else Begin
               btnAbrir.Enabled := False;
               btnSalvar.Enabled := False;
               ProgressBar1.Position := 0;
          End;
     End;   
End;


procedure TFGeraSintegra.btnVoltarClick(Sender: TObject);
begin
  inherited;
  PausePStatus(true, false);
end;


procedure TFGeraSintegra.IniciaR75(); // - 11/05/2009: inicia array para add codigo de produtos
Begin
   DMMACS.TALX.Close;
   DMMACS.TALX.SQL.Clear;
   DMMACS.TALX.SQL.Add(' DELETE FROM TMP ');
   DMMACS.TALX.ExecSQL;

   DMMACS.Transaction.CommitRetaining;
{     qntProd := 0;
     SetLength(aCodProd,  qntProd);}

End;

procedure TFGeraSintegra.AddR75(codProd:String; tipo:Integer);// - 11/05/2009: add codigo produto no array
Begin
   DMMACS.TMP.Insert;
   DMMACS.TMP.FieldByName('COD_TMP').AsString:=codProd;
   DMMACS.TMP.FieldByName('INT1').AsInteger:=tipo;
   DMMACS.TMP.Post;
End;

function TFGeraSintegra.FindR75(codProd:String):Boolean;// - 11/05/2009: procura se codigo ja foi add no array
var
   i :Integer;
Begin
     Result := False;
     for i := 0 to qntProd - 1  do
     Begin
          if aCodProd[i] = codProd
          Then Begin
             Result := True;
             Exit;
          End;
     End;
End;

//Registro70
//Deve ser gerado um Registro tipo 70 para cada nota de entrada onde o produto se remeta a frete
//Este registro é ogrigatório para empresas contribuintes de icms que contratam ou compram serviços de frete
function TFGeraSintegra.sRegistro70(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr, XTipoSitua, incs_estadual, num_nf: String;
 XVlrTotDocR70, XBaseICMSR70, XVlrIcmsR70, XVlrTotDocR50, XVlrIcmsR50: Real;
begin
     AddLogln(true, '');
     AddLogln(true, ' ** 70 **');
     AddLogln(true, '   Inserir Registro 70 - Registro de Total de Nota Fiscal para SAIDAS e ENTRADAS');

     Result := True;

     //Registro70 - Registro de Total quanto ao ICMS
     ///////////////////////////////////
     //GERA REGISTRO 70 PARA ENTRADAS //
     ///////////////////////////////////
     DMFiscal.TAlx.Close;
     DMFiscal.TAlx.UnPrepare;
     DMFiscal.TAlx.SQL.Clear;
     DMFiscal.TAlx.SQL.Add('        select distinct(docfis.numdocfis), vwpedc.cod_pedcomp, itenspedc.cfop, vwfornec.cpfcnpj, pessoaj.insc_est, ');
     DMFiscal.TAlx.SQL.Add('        vwcidade.uf, vwpedc.situacao, vwpedc.numped, docfis.modelonf, docfis.COD_CFOP, ');
     DMFiscal.TAlx.SQL.Add('        docfis.serie, docfis.dtentsaid as dtemissao, docfis.vlroutrasdesp, docfis.vlrfrete, docfis.vlrisentoicms, ');
     DMFiscal.TAlx.SQL.Add('        docfis.baseicms, docfis.vlricms, docfis.vlrtotdocnf ');
     DMFiscal.TAlx.SQL.Add('          from itenspedc ');
     DMFiscal.TAlx.SQL.Add('                    left join estoque ON itenspedc.cod_estoque = estoque.cod_estoque ');
     DMFiscal.TAlx.SQL.Add('                    left join subproduto ON estoque.cod_subprod = subproduto.cod_subproduto ');
     DMFiscal.TAlx.SQL.Add('                    left join vwpedc on itenspedc.cod_pedcompra = vwpedc.cod_pedcomp ');
     DMFiscal.TAlx.SQL.Add('                    left Join docfis on vwpedc.cod_pedcomp = docfis.cod_pedido ');
     DMFiscal.TAlx.SQL.Add('                    left join vwfornec on vwpedc.cod_fornec = vwfornec.cod_fornec ');
     DMFiscal.TAlx.SQL.Add('                    left join vwcidade on vwfornec.cod_cidade = vwcidade.cod_cidade ');
     DMFiscal.TAlx.SQL.Add('                    left join pessoaj on vwfornec.cod_pessoa = pessoaj.cod_pessoa ');
     DMFiscal.TAlx.SQL.Add('          WHERE ');
     DMFiscal.TAlx.SQL.Add(' (COD_PERIODOFISCAL=:PERIODOFISCAL) AND ((vwpedc.situacao = ''FECHADO'') OR (vwpedc.situacao = ''CANCELADO'')) AND (SERIE is not null) ');
     DMFiscal.TAlx.SQL.Add('         ORDER BY DTEMISSAO ');
     DMFiscal.TAlx.ParamByName('PERIODOFISCAL').AsString:=DMMACS.TPeriodoFiscal.FieldByName('COD_PERIODOFISCAL').AsString;
     DMFiscal.TAlx.Prepare;
     DMFiscal.TAlx.SQL.Text;
     DMFiscal.TAlx.Open;

     AddLogln(true, '   [70 - Entradas Pedido de compra]');

     if  DMFiscal.TAlx.RecordCount > 0
     Then begin
         DMFiscal.TAlx.First;
         while not  DMFiscal.TAlx.EOF do
         begin
             //VALIDA CAMPOS NECESSÁRIOS
             If DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString='' Then
                 AddLogln(true, '      70 - No Pedido Compra: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - Verifique o fornecedor e seu CPF/CNPJ!');
             If DMFiscal.TAlx.FieldByName('UF').AsString='' Then
                 AddLogln(true, '      70 - No Pedido Compra: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - O Cliente se fornecedor sem UF/CIDADE!');
             If DMFiscal.TAlx.FieldByName('CFOP').AsString='' Then
                 AddLogln(true, '      70 - No Pedido Compra: '+DMFiscal.TAlx.FieldByName('NUMPED').AsString+' - CFOP não encontrado!');


             //Atribui a várivel se a nota é foi cancelada ou não
             IF DMFiscal.TAlx.FieldByName('SITUACAO').AsString='CANCELADO' Then
                 XTipoSitua:='S'
             Else
                 XTipoSitua:='N';

             //Valida situação de cadastro no estado do cliente
             If DMFiscal.TAlx.FieldByName('INSC_EST').AsString = '' Then
                 incs_estadual := 'ISENTO'
             Else
                 incs_estadual := DMFiscal.TAlx.FieldByName('INSC_EST').AsString;


             If (DMFiscal.TAlx.FieldByName('CFOP').AsString='0') or (DMFiscal.TAlx.FieldByName('CFOP').AsString='0'){ or (DMFiscal.TAlx.FieldByName('ALIQICMS').AsCurrency<=0)} Then
                 AddLogln(true, '      50 - No Pedido de Compra: '+DMFiscal.TAlx.FieldByName('numped').AsString+' - Existem itens sem Cfop ou aliquota de Icms especificado!');

             //Tratamento do Numero Fiscal
             num_nf := DMFiscal.TAlx.FieldByName('NUMDOCFIS').AsString;
             num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));
             //Atribui valor as variáveis de acordo
             XVlrTotDocR70:=DMFiscal.TAlx.FieldByName('vlrtotdocnf').AsCurrency;
             XBaseICMSR70:=DMFiscal.TAlx.FieldByName('baseicms').AsCurrency;
             XVlrIcmsR70:=DMFiscal.TAlx.FieldByName('vlricms').AsCurrency;

             //Registro70 - Efetua o regitro 70 atravéz da dll

             TempStr := Registro70(DMFiscal.TAlx.FieldByName('CPFCNPJ').AsString, //CNPJ DO REMETENTE OU DESTINATARIO
                                    incs_estadual,          //Insc_Est
                                    DMFiscal.TAlx.FieldByName('DTEMISSAO').AsString,     //Data_Emissao_Utilizacao
                                    DMFiscal.TAlx.FieldByName('UF').AsString, //UF DO REMETENTE OU DESTINATARIO
                                    '07',             //Modelo
                                    'U',              //Serie
                                    '',               //SubSerie
                                    num_nf, //Numero NF
                                    DMFiscal.TAlx.FieldByName('CFOP').AsString, //CODIGO CFOP
                                    FormatCurr('0.00', XVlrTotDocR70), //Valor Total da NF (nos itens)
                                    FormatCurr('0.00', XBaseICMSR70), //Valor de Base ICMS
                                    FormatCurr('0.00', XVlrIcmsR70), //Valor de  ICMS
                                    FormatCurr('0.00', DMFiscal.TAlx.FieldByName('VLRISENTOICMS').AsCurrency) , //Valor de  ICMS com esenção
                                    '0',              //Outras
                                    '1',              //CIF_FOB
                                    XTipoSitua               //Situacao
                                  );

             AddLogln(false, '');
             AddLogln(false, '      '+TempStr);

             //Executa o tratamento da string temporária testando se houve erro
             //Caso haja erro, executa o log das informações inconsistentes no RichEdit
             if not VerificaSIntegra(TempStr)
             then begin
                 qnt_erro := qnt_erro + 1;
                 Result := False;
                 Err_Msg := Err_Msg + #13 +
                 '    Cod_Sintegra_R70: ' +
                 DMFiscal.TAlx.FieldByName('cod_pedcomp').AsString ;
                 AddLogln(true, '      70 - [XX] - No Pedido de Compra:' + DMFiscal.TAlx.FieldByName('NUMPED').AsString + ' - FALHA - ' + TempStr);
             end
             else Begin
                 qnt_ok := qnt_ok + 1;
             End;

             if quit_sintegra then
                 exit;

             if Not DMFiscal.TAlx.EOF then
                 DMFiscal.TAlx.Next;
         End;
     End
     Else Begin
         AddLogln(true, '      Nenhuma Entrada Encontrada');
     End;
End;

// - 11/05/2009: Registro74 - Registro de Inventário
function TFGeraSintegra.sRegistro74(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
	TempStr: string;
begin
	Result := True;
   Gera_R75 := True;                              //Setado sempre que Registros 54, 60I, 60R, 74 ou 77 gerados!
   AddLogln(true, '');
   AddLogln(true, 'Inserir Registro74 - Registro de Inventário');


   FiltraTabela(DMGEOGRAFIA.TCidade, 'CIDADE', 'COD_CIDADE', DMMACS.TEmpresa.FieldByName('COD_CIDADE').AsString, '');
   FiltraTabela(DMGEOGRAFIA.TEstado, 'ESTADO', 'COD_ESTADO', DMGEOGRAFIA.TCidade.FieldByName('COD_ESTADO').AsString, '');

	///////////////////////////////
   //GERA REGISTRO 74 PARA INVETÁRIO DE ESTOQUE
   //////////////////////////////
	//Executa a seleção dos registros no banco de dados
	DMFiscal.TAlx.Close;
   DMFiscal.TAlx.UnPrepare;
   DMFiscal.TAlx.SQL.Clear;
	DMFiscal.TAlx.SQL.Add(' select distinct(subproduto.COD_SUBPRODUTO), subproduto.CONTRINT, subproduto.cod_interno, estoque.estfisico as qtd, estoque.valcusto as valor ');
	DMFiscal.TAlx.SQL.Add(' from subproduto ');
	DMFiscal.TAlx.SQL.Add(' Left join estoque on subproduto.cod_subproduto = estoque.cod_subprod ');
	DMFiscal.TAlx.SQL.Add(' where  (estoque.estfisico > 0) ');
	DMFiscal.TAlx.SQL.Add(' order by subproduto.COD_SUBPRODUTO ');
   DMFiscal.TAlx.Prepare;
   DMFiscal.TAlx.Open;

   AddLogln(true, '      --- PRODUTOS ---');
    DMFiscal.TAlx.First;

	If DMFiscal.TAlx.RecordCount > 0
   Then begin
   	While not DMFiscal.TAlx.EOF do
    	begin
               //Faz a chamada da dll passando as informações do banco de dados e armazena numa string temporária
               TempStr := Registro74(DT01, // - 11/05/2009: data do inventario
                                     FormatCurr('00000000000000',DMFiscal.TAlx.FieldByName('cod_subproduto').AsCurrency), //Codigo Produto
                                     FormatCurr('0.000', DMFiscal.TAlx.FieldByName('qtd').AsCurrency), //Quantidade
                                     FormatCurr('0.00', DMFiscal.TAlx.FieldByName('valor').AsCurrency), //Valor bruto do produto
                                     '1', //Código de Posse das Mercadorias Inventariadas
                                     '0', //0 pq a mercadoria esta em posse da empresa informante, no caso a empresa usuária do software
                                     '',//ValidaAcentos(DMMACS.TEmpresa.FieldByName('INSC_EST').AsString), //Inscrição Estadual do Possuidor da Mercadoria de propriedade do Informante, ou do proprietário da Mercadoria em poder do Informante
                                     ValidaAcentos(DMGEOGRAFIA.TEstado.FieldByName('UF_ESTADO').AsString), //Unidade da Federação do Possuidor da Mercadoria de propriedade do Informante
                                     ''
               );
               AddR75(DMFiscal.TAlx.FieldByName('cod_subproduto').AsString,0);
               //AddLogln(false, '');
               //AddLogln(false, TempStr);


               //Executa o tratamento da string temporária testando se houve erro
               //Caso haja erro, executa o log das informações inconsistentes no RichEdit
               If not VerificaSIntegra(TempStr)
               Then Begin
                   qnt_erro := qnt_erro + 1;
                   Result := False;

                   AddLogln(true, '             Item Cod.Int: ' + DMFiscal.TAlx.FieldByName('COD_SUBPRODUTO').AsString + ' - FALHA - ' + TempStr);
               end
               else Begin
                   qnt_ok := qnt_ok + 1;
                   //AddLogln(true, '             Item Cod.Int: ' + DMFiscal.TAlx.FieldByName('COD_SUBPRODUTO').AsString + ' - OK');
               End;


       		DMFiscal.TAlx.Next;

     		If quit_sintegra then
       		exit;
   	end;
       DMMACS.Transaction.CommitRetaining;       
  	end
   Else Begin
       AddLogln(true, '                 - Nenhum produto em estoque foi encontrado.');
   End;

End;

procedure TFGeraSintegra.btnAbrirClick(Sender: TObject);
var caminho: string;
begin
    caminho := diretorio + 'Sintegra_' + nomeArquivo + '.txt';
    if (fileExists(caminho))
    then
       ShellExecute(Handle, nil, Pchar(caminho), nil, nil, SW_SHOWNORMAL)
    else
       Mensagem('I N F O R M A Ç Ã O', 'Arquivo não encontrado!', '', 1,1, false, 'i');
  //diretorio + 'Sintegra_' + nomeArquivo + '.txt'
end;

function TFGeraSintegra.VerificaSIntegra(conteudo: string): boolean;
begin
 Result := True;

 if conteudo[1] <> '-' then
  begin
   If Length(Trim(resultadoSintegra)) = 0 then
      resultadoSintegra := conteudo
   Else
       resultadoSintegra := resultadoSintegra + #13 + #10 + conteudo;
   Result := True;
   End
 else
  begin
   Result := False
  end;
end;

procedure TFGeraSintegra.btnSalvarClick(Sender: TObject);
begin
  inherited;
  SaveDialog1.FileName := 'Sintegra_' + nomeArquivo;
  If SaveDialog1.Execute
  Then Begin
       // salva arquivo de distribuição da NF-e no disco.
       Trata_SIntegra_Str(resultadoSintegra, SaveDialog1.FileName + '.txt');
       ShellExecute(Handle, nil, Pchar(SaveDialog1.FileName + '.txt'), nil, nil, SW_SHOWNORMAL);
  End;
end;

procedure TFGeraSintegra.CBR54Click(Sender: TObject);
begin
  inherited;
  If CBR54.Checked
  Then Begin
      CBR50.Checked := True;
      CBR75.Checked := True;
  End;
end;

procedure TFGeraSintegra.CBR74Click(Sender: TObject);
begin
  inherited;
  If CBR74.Checked
  Then Begin
      CBR75.Checked := True;
  End;
end;

procedure TFGeraSintegra.Button1Click(Sender: TObject);
begin
  inherited;
	ShellExecute(Handle, nil, Pchar(diretorio+'LOG\LOG'+nomeArquivo+'.txt'), nil, nil, SW_SHOWNORMAL);
end;

procedure TFGeraSintegra.Button2Click(Sender: TObject);
Var
	XLinha: String;
   XTexto: TextFile;
   XTotUnitCusto, XTotCusto: Real;
begin
  inherited;

    //CRIA ARQUIVO TXT PARA INVENTÁRIO DE ESTOQUE
    If SaveDialog1.Execute
    Then Begin
        AssignFile(XTexto, SaveDialog1.FileName);
        {$I-}
        Reset(XTexto);
        {$I+}
        if IOResult = 0 then
           Append(XTexto)
        else
           Rewrite(XTexto);
    End;
end;

procedure TFGeraSintegra.BitBtn2Click(Sender: TObject);
begin
  inherited;
   Try
       ShellExecute(Handle, nil, Pchar('C:\MZR\Macs\validapr.exe'), nil, nil, SW_SHOWNORMAL);
       PPasso03.Visible:=True;
       PPasso03.BringToFront;
   Except
       MessageDlg('O programa sintegra não foi encontrado.'+#13+'C:\MZR\Macs\validapr.exe', mtWarning, [mbOK], 0);
   End;
end;

procedure TFGeraSintegra.BitBtn4Click(Sender: TObject);
begin
  inherited;
   PPasso02.BringToFront;
end;

procedure TFGeraSintegra.BitBtn3Click(Sender: TObject);
begin
  inherited;
	AbrirForm(TFImpSintegra, FImpSintegra, 0);
end;

procedure TFGeraSintegra.CbNotaFiscalClick(Sender: TObject);
begin
  inherited;
	If CbNotaFiscal.Checked=True
   Then Begin
       CBR50.Checked:=True;
       CBR54.Checked:=True;
       CBR75.Checked:=True;
       CBR70.Checked:=True;
   End
   Else Begin
       CBR50.Checked:=False;
       CBR54.Checked:=False;
       CBR75.Checked:=False;
       CBR70.Checked:=False;       
   End;
end;

procedure TFGeraSintegra.CbCupomFiscalClick(Sender: TObject);
begin
  inherited;
   If CbCupomFiscal.Checked=True Then
   	CBR60M.Checked:=True
   Else
       CBR60M.Checked:=False;
end;

procedure TFGeraSintegra.CbInventarioEstoqueClick(Sender: TObject);
begin
  inherited;
   If CbInventarioEstoque.Checked=True Then
   	CBR74.Checked:=True
   Else
       CBR74.Checked:=False;
end;

end.
